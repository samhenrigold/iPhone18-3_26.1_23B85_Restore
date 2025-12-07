void sub_100594F24()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary15SDBLEAdvertiser_queue);
  *v5 = v6;
  (*(v3 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v2);
  v7 = v6;
  LOBYTE(v6) = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v5, v2);
  if (v6)
  {
    if (qword_100973AB8 == -1)
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
  v8 = type metadata accessor for Logger();
  sub_10000C4AC(v8, qword_1009840D0);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "Bluetooth address changed, updating temp auth tag if necessary", v11, 2u);
  }

  sub_1005954A8();
}

void sub_1005950F4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if (a1)
    {
      swift_errorRetain();
      if (qword_100973AB8 != -1)
      {
        swift_once();
      }

      v7 = type metadata accessor for Logger();
      sub_10000C4AC(v7, qword_1009840D0);
      swift_errorRetain();
      v8 = v6;
      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        *v11 = 136315394;
        sub_1002A9924(*&v8[OBJC_IVAR____TtC16DaemoniOSLibrary15SDBLEAdvertiser_configuration], *&v8[OBJC_IVAR____TtC16DaemoniOSLibrary15SDBLEAdvertiser_configuration + 8]);
        v12 = String.init<A>(describing:)();
        v14 = sub_10000C4E4(v12, v13, &v27);

        *(v11 + 4) = v14;
        *(v11 + 12) = 2080;
        swift_errorRetain();
        sub_10028088C(&unk_10097A930, &unk_1007F9050);
        v15 = String.init<A>(describing:)();
        v17 = sub_10000C4E4(v15, v16, &v27);

        *(v11 + 14) = v17;
        _os_log_impl(&_mh_execute_header, v9, v10, "Failed to start advertising for %s: %s", v11, 0x16u);
        swift_arrayDestroy();

        if (!a3)
        {
          goto LABEL_14;
        }
      }

      else
      {

        if (!a3)
        {
          goto LABEL_14;
        }
      }
    }

    else
    {
      if (qword_100973AB8 != -1)
      {
        swift_once();
      }

      v18 = type metadata accessor for Logger();
      sub_10000C4AC(v18, qword_1009840D0);
      v19 = v6;
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v27 = v23;
        *v22 = 136315138;
        sub_1002A9924(*&v19[OBJC_IVAR____TtC16DaemoniOSLibrary15SDBLEAdvertiser_configuration], *&v19[OBJC_IVAR____TtC16DaemoniOSLibrary15SDBLEAdvertiser_configuration + 8]);
        v24 = String.init<A>(describing:)();
        v26 = sub_10000C4E4(v24, v25, &v27);

        *(v22 + 4) = v26;
        _os_log_impl(&_mh_execute_header, v20, v21, "Started advertising for %s", v22, 0xCu);
        sub_10000C60C(v23);
      }

      sub_1005954A8();
      if (!a3)
      {
        goto LABEL_14;
      }
    }

    a3();
LABEL_14:
  }
}

void sub_1005954A8()
{
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *&v0[OBJC_IVAR____TtC16DaemoniOSLibrary15SDBLEAdvertiser_queue];
  *v5 = v6;
  (*(v3 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v2);
  v7 = v6;
  v8 = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v5, v2);
  if ((v8 & 1) == 0)
  {
    __break(1u);
LABEL_16:
    swift_once();
    goto LABEL_5;
  }

  v1 = &v0[OBJC_IVAR____TtC16DaemoniOSLibrary15SDBLEAdvertiser_configuration];
  if (*&v0[OBJC_IVAR____TtC16DaemoniOSLibrary15SDBLEAdvertiser_configuration + 8] >> 60 == 15)
  {
    return;
  }

  v9 = sub_1005970E4();
  if (v10 >> 60 == 15)
  {
    return;
  }

  v2 = v9;
  v8 = v10;
  if (qword_100973AB8 != -1)
  {
    goto LABEL_16;
  }

LABEL_5:
  v11 = type metadata accessor for Logger();
  sub_10000C4AC(v11, qword_1009840D0);
  v12 = v0;
  sub_1002A9924(v2, v8);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  sub_10028BCC0(v2, v8);
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v27[0] = swift_slowAlloc();
    v28 = v27[0];
    *v15 = 136315394;
    if (*(v1 + 1) >> 60 == 15)
    {
      v16 = 0x6E4979627261654ELL;
    }

    else
    {
      v16 = 0x706F7244726941;
    }

    if (*(v1 + 1) >> 60 == 15)
    {
      v17 = 0xEC00000032566F66;
    }

    else
    {
      v17 = 0xE700000000000000;
    }

    v18 = sub_10000C4E4(v16, v17, &v28);

    *(v15 + 4) = v18;
    *(v15 + 12) = 2080;
    v27[1] = sub_100467BE4(v2, v8);
    sub_10028088C(&unk_100976C20, &unk_1007F9D80);
    sub_100011630(&qword_10097F070, &unk_100976C20, &unk_1007F9D80, &protocol conformance descriptor for [A]);
    v19 = BidirectionalCollection<>.joined(separator:)();
    v21 = v20;

    v22 = sub_10000C4E4(v19, v21, &v28);

    *(v15 + 14) = v22;
    _os_log_impl(&_mh_execute_header, v13, v14, "Setting auth tag on %s to %s", v15, 0x16u);
    swift_arrayDestroy();
  }

  v23 = OBJC_IVAR____TtC16DaemoniOSLibrary15SDBLEAdvertiser_advertiser;
  v24 = *&v12[OBJC_IVAR____TtC16DaemoniOSLibrary15SDBLEAdvertiser_advertiser];
  isa = Data._bridgeToObjectiveC()().super.isa;
  [v24 setAirdropTempAuthTagData:isa];

  v26 = *&v12[v23];
  [v26 setAirdropFlags:{objc_msgSend(v26, "airdropFlags") | 0x40}];
  sub_10028BCC0(v2, v8);
}

uint64_t sub_1005958B0(void (*a1)(uint64_t), uint64_t a2, double a3)
{
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v34 = *(v7 - 8);
  v35 = v7;
  __chkstk_darwin(v7);
  v32 = v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for DispatchQoS();
  v31 = *(v33 - 8);
  __chkstk_darwin(v33);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for DispatchTime();
  v30 = *(v36 - 8);
  v11 = __chkstk_darwin(v36);
  v13 = v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = v29 - v14;
  v16 = type metadata accessor for DispatchPredicate();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = (v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = *(v3 + OBJC_IVAR____TtC16DaemoniOSLibrary15SDBLEAdvertiser_queue);
  *v19 = v20;
  (*(v17 + 104))(v19, enum case for DispatchPredicate.onQueue(_:), v16);
  v29[1] = v20;
  LOBYTE(v20) = _dispatchPreconditionTest(_:)();
  result = (*(v17 + 8))(v19, v16);
  if (v20)
  {
    v22 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v23 = swift_allocObject();
    v23[2] = v22;
    v23[3] = a1;
    v23[4] = a2;
    sub_1002F5A3C(a1, a2);
    if (a3 <= 0.0)
    {

      sub_100595DC8(v28, a1);
    }

    else
    {
      static DispatchTime.now()();
      + infix(_:_:)();
      v30 = *(v30 + 8);
      (v30)(v13, v36);
      v24 = swift_allocObject();
      *(v24 + 16) = sub_100597A24;
      *(v24 + 24) = v23;
      aBlock[4] = sub_100597A30;
      aBlock[5] = v24;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100011678;
      aBlock[3] = &unk_1008E8368;
      v25 = _Block_copy(aBlock);

      static DispatchQoS.unspecified.getter();
      v37 = _swiftEmptyArrayStorage;
      sub_1002DDC68();
      sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
      sub_100011630(&qword_100976150, &unk_1009765A0, &qword_1007F97B0, &protocol conformance descriptor for [A]);
      v26 = v32;
      v27 = v35;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
      _Block_release(v25);

      (*(v34 + 8))(v26, v27);
      (*(v31 + 8))(v10, v33);
      (v30)(v15, v36);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100595DC8(uint64_t a1, void (*a2)(uint64_t))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (qword_100973AB8 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_10000C4AC(v5, qword_1009840D0);
    v6 = v4;
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v19 = v10;
      *v9 = 136315138;
      if (*&v6[OBJC_IVAR____TtC16DaemoniOSLibrary15SDBLEAdvertiser_configuration + 8] >> 60 == 15)
      {
        v11 = 0x6E4979627261654ELL;
      }

      else
      {
        v11 = 0x706F7244726941;
      }

      if (*&v6[OBJC_IVAR____TtC16DaemoniOSLibrary15SDBLEAdvertiser_configuration + 8] >> 60 == 15)
      {
        v12 = 0xEC00000032566F66;
      }

      else
      {
        v12 = 0xE700000000000000;
      }

      v13 = sub_10000C4E4(v11, v12, &v19);

      *(v9 + 4) = v13;
      _os_log_impl(&_mh_execute_header, v7, v8, "Invalidating %s advertiser", v9, 0xCu);
      sub_10000C60C(v10);
    }

    v14 = OBJC_IVAR____TtC16DaemoniOSLibrary15SDBLEAdvertiser_advertiser;
    [*&v6[OBJC_IVAR____TtC16DaemoniOSLibrary15SDBLEAdvertiser_advertiser] invalidate];
    v15 = [objc_allocWithZone(CBAdvertiser) init];
    v16 = *&v6[v14];
    *&v6[v14] = v15;

    v17 = OBJC_IVAR____TtC16DaemoniOSLibrary15SDBLEAdvertiser_aggressiveAdvertiserTimer;
    if (*&v6[OBJC_IVAR____TtC16DaemoniOSLibrary15SDBLEAdvertiser_aggressiveAdvertiserTimer])
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      OS_dispatch_source.cancel()();
      swift_unknownObjectRelease();
    }

    *&v6[v17] = 0;
    v18 = swift_unknownObjectRelease();
    if (a2)
    {
      a2(v18);
    }
  }
}

void sub_100596038(uint64_t a1)
{
  v2 = v1;
  v48 = a1;
  v3 = type metadata accessor for DispatchTimeInterval();
  v53 = *(v3 - 8);
  v54 = v3;
  v4 = __chkstk_darwin(v3);
  v52 = (v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v4);
  v49 = (v40 - v6);
  v7 = type metadata accessor for DispatchTime();
  v50 = *(v7 - 8);
  v51 = v7;
  v8 = __chkstk_darwin(v7);
  v46 = v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v47 = v40 - v10;
  v45 = type metadata accessor for DispatchWorkItemFlags();
  v43 = *(v45 - 8);
  __chkstk_darwin(v45);
  v41 = v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for DispatchQoS();
  v42 = *(v44 - 8);
  __chkstk_darwin(v44);
  v13 = v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for OS_dispatch_source.TimerFlags();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchPredicate();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = (v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = *(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary15SDBLEAdvertiser_queue);
  *v21 = v22;
  (*(v19 + 104))(v21, enum case for DispatchPredicate.onQueue(_:), v18);
  v23 = v22;
  v24 = _dispatchPreconditionTest(_:)();
  (*(v19 + 8))(v21, v18);
  if (v24)
  {
    v25 = OBJC_IVAR____TtC16DaemoniOSLibrary15SDBLEAdvertiser_aggressiveAdvertiserTimer;
    if (*(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary15SDBLEAdvertiser_aggressiveAdvertiserTimer))
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      OS_dispatch_source.cancel()();
      swift_unknownObjectRelease();
    }

    sub_10042B59C();
    static OS_dispatch_source.TimerFlags.strict.getter();
    v26 = static OS_dispatch_source.makeTimerSource(flags:queue:)();
    (*(v15 + 8))(v17, v14);
    *(v2 + v25) = v26;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    v40[1] = v26;
    ObjectType = swift_getObjectType();
    v28 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_1005979A4;
    aBlock[5] = v28;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100011678;
    aBlock[3] = &unk_1008E82F0;
    v29 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    v30 = v41;
    v55 = ObjectType;
    sub_1005944AC();
    OS_dispatch_source.setEventHandler(qos:flags:handler:)();
    _Block_release(v29);
    (*(v43 + 8))(v30, v45);
    (*(v42 + 8))(v13, v44);

    v31 = v46;
    static DispatchTime.now()();
    v32 = v49;
    *v49 = v48;
    v34 = v53;
    v33 = v54;
    (*(v53 + 104))(v32, enum case for DispatchTimeInterval.seconds(_:), v54);
    v35 = v47;
    + infix(_:_:)();
    v36 = *(v34 + 8);
    v36(v32, v33);
    v37 = v51;
    v38 = *(v50 + 8);
    v38(v31, v51);
    sub_1002EAB84(v32);
    v39 = v52;
    sub_1002EABF8(v52);
    OS_dispatch_source_timer.schedule(deadline:repeating:leeway:)();
    v36(v39, v33);
    v36(v32, v33);
    v38(v35, v37);
    OS_dispatch_source.activate()();
    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

void sub_1005966CC(uint64_t a1, void (*a2)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    a2();
  }
}

void sub_100596728()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary15SDBLEAdvertiser_queue);
  *v5 = v6;
  (*(v3 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v2);
  v7 = v6;
  LOBYTE(v6) = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v5, v2);
  if (v6)
  {
    v8 = OBJC_IVAR____TtC16DaemoniOSLibrary15SDBLEAdvertiser_aggressiveAdvertiserTimer;
    if (*(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary15SDBLEAdvertiser_aggressiveAdvertiserTimer))
    {
      v9 = swift_allocObject();
      swift_unknownObjectWeakInit();

      sub_1005958B0(sub_1005979D4, v9, 0.0);

      if (*(v1 + v8))
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        OS_dispatch_source.cancel()();
        swift_unknownObjectRelease();
      }

      *(v1 + v8) = 0;
      swift_unknownObjectRelease();
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1005968E8(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v28 = a1;
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(v3 + OBJC_IVAR____TtC16DaemoniOSLibrary15SDBLEAdvertiser_queue);
  *v9 = v10;
  v11 = *(v7 + 104);
  v27 = enum case for DispatchPredicate.onQueue(_:);
  v26 = v11;
  v11(v9);
  v12 = v10;
  v13 = _dispatchPreconditionTest(_:)();
  v14 = *(v7 + 8);
  v14(v9, v6);
  if ((v13 & 1) == 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v25[1] = v3;
  v15 = a3;
  v16 = (v3 + OBJC_IVAR____TtC16DaemoniOSLibrary15SDBLEAdvertiser_configuration);
  v17 = a2;
  v18 = *(v3 + OBJC_IVAR____TtC16DaemoniOSLibrary15SDBLEAdvertiser_configuration);
  v19 = *(v3 + OBJC_IVAR____TtC16DaemoniOSLibrary15SDBLEAdvertiser_configuration + 8);
  v20 = v28;
  *v16 = v28;
  v16[1] = v17;
  v16[2] = v15;
  sub_1002A9924(v20, v17);
  sub_10028BCC0(v18, v19);
  *v9 = v12;
  v26(v9, v27, v6);
  v21 = _dispatchPreconditionTest(_:)();
  v14(v9, v6);
  if ((v21 & 1) == 0)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v22 = v16[1];
  if (v22 >> 60 != 15)
  {
    v23 = v16[2];
    v24 = *v16;
    sub_100294008(*v16, v16[1]);
    v29 = BYTE1(v23) & 1;
    sub_100596D58(v24, v22, v23 & 0xFFFFFFFFFFFF00FFLL | ((BYTE1(v23) & 1) << 8));
    sub_10028BCC0(v24, v22);
  }

  sub_1005954A8();
}

void sub_100596B10(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = (Strong + OBJC_IVAR____TtC16DaemoniOSLibrary15SDBLEAdvertiser_configuration);
    v4 = *(Strong + OBJC_IVAR____TtC16DaemoniOSLibrary15SDBLEAdvertiser_configuration + 8);
    if (v4 >> 60 != 15)
    {
      v5 = *v3;
      sub_100294008(*v3, v4);
      if (qword_100973AB8 != -1)
      {
        swift_once();
      }

      v6 = type metadata accessor for Logger();
      sub_10000C4AC(v6, qword_1009840D0);
      v7 = v2;
      v8 = Logger.logObject.getter();
      v9 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        v15 = v11;
        *v10 = 136315138;
        if (v3[1] >> 60 == 15)
        {
          v12 = 0x6E4979627261654ELL;
        }

        else
        {
          v12 = 0x706F7244726941;
        }

        if (v3[1] >> 60 == 15)
        {
          v13 = 0xEC00000032566F66;
        }

        else
        {
          v13 = 0xE700000000000000;
        }

        v14 = sub_10000C4E4(v12, v13, &v15);

        *(v10 + 4) = v14;
        _os_log_impl(&_mh_execute_header, v8, v9, "Changing advertisement rate to default on %s advertiser", v10, 0xCu);
        sub_10000C60C(v11);
      }

      sub_100294008(v5, v4);
      sub_1005968E8(v5, v4, 256);
      sub_100594A00(0, 0);
      sub_10028BCC0(v5, v4);
      sub_10028BCC0(v5, v4);
    }
  }
}

id sub_100596D58(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = (&v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v3 + OBJC_IVAR____TtC16DaemoniOSLibrary15SDBLEAdvertiser_queue);
  *v8 = v9;
  (*(v6 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v5);
  v10 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  result = (*(v6 + 8))(v8, v5);
  if (v9)
  {
    v12 = OBJC_IVAR____TtC16DaemoniOSLibrary15SDBLEAdvertiser_advertiser;
    [*(v3 + OBJC_IVAR____TtC16DaemoniOSLibrary15SDBLEAdvertiser_advertiser) setAdvertiseRate:HIDWORD(a3)];
    [*(v3 + v12) setAirdropVersion:3];
    v13 = *(v3 + v12);
    v14 = Data._Representation.subscript.getter();
    [v13 setAirdropHash1:(Data._Representation.subscript.getter() | (v14 << 8))];

    v15 = *(v3 + v12);
    v16 = Data._Representation.subscript.getter();
    [v15 setAirdropHash2:(Data._Representation.subscript.getter() | (v16 << 8))];

    v17 = *(v3 + v12);
    v18 = Data._Representation.subscript.getter();
    [v17 setAirdropHash3:(Data._Representation.subscript.getter() | (v18 << 8))];

    v19 = *(v3 + v12);
    v20 = Data._Representation.subscript.getter();
    [v19 setAirdropHash4:(Data._Representation.subscript.getter() | (v20 << 8))];

    if ((a3 & 0x100) == 0)
    {
      [*(v3 + v12) setAirdropModel:a3];
    }

    [*(v3 + v12) setAirdropConfigData:BYTE3(a3)];
    return [*(v3 + v12) setAirdropFlags:BYTE2(a3)];
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1005970E4()
{
  v1 = [objc_opt_self() sharedNearbyAgent];
  v2 = [v1 idSelfIdentity];

  if (v2)
  {
    v3 = [*(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary15SDBLEAdvertiser_advertiser) advertisingAddressDataNonConnectable];
    if (v3)
    {
      v4 = v3;
      v5 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v7 = v6;

      isa = Data._bridgeToObjectiveC()().super.isa;
      v22 = 0;
      v9 = [v2 authTagForData:isa type:5 error:&v22];

      v10 = v22;
      if (v9)
      {
        v11 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

        sub_100026AC0(v5, v7);
        return v11;
      }

      v13 = v10;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      if (qword_100973AB8 != -1)
      {
        swift_once();
      }

      v14 = type metadata accessor for Logger();
      sub_10000C4AC(v14, qword_1009840D0);
      swift_errorRetain();
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v22 = v18;
        *v17 = 136315138;
        swift_errorRetain();
        sub_10028088C(&unk_10097A930, &unk_1007F9050);
        v19 = String.init<A>(describing:)();
        v21 = sub_10000C4E4(v19, v20, &v22);

        *(v17 + 4) = v21;
        _os_log_impl(&_mh_execute_header, v15, v16, "Failed to create auth tag: %s", v17, 0xCu);
        sub_10000C60C(v18);

        sub_100026AC0(v5, v7);
      }

      else
      {

        sub_100026AC0(v5, v7);
      }
    }

    else
    {
    }
  }

  return 0;
}

uint64_t sub_1005973EC()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v12 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v4 = *(v11 - 8);
  __chkstk_darwin(v11);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary15SDBLEAdvertiser_queue);
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_100597960;
  aBlock[5] = v7;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100011678;
  aBlock[3] = &unk_1008E8250;
  v8 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v13 = _swiftEmptyArrayStorage;
  sub_1002DDC68();
  sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
  sub_100011630(&qword_100976150, &unk_1009765A0, &qword_1007F97B0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v8);
  (*(v12 + 8))(v3, v1);
  (*(v4 + 8))(v6, v11);
}

void sub_1005976AC(uint64_t a1)
{
  if (qword_100973AB8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000C4AC(v1, qword_1009840D0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Rapport identities changed, updating temp auth tag if necessary", v4, 2u);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_1005954A8();
  }
}

uint64_t sub_100597804(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10059782C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xC && *(a1 + 24))
  {
    return (*a1 + 12);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  if (v3 + 1 >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100597880(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xB)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 12;
    if (a3 >= 0xC)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xC)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = ((4 * (a2 ^ 0xF)) | ((a2 ^ 0xF) >> 2)) << 60;
    }
  }

  return result;
}

void *sub_1005978D4(void *result, unsigned int a2)
{
  if (a2 > 0xC)
  {
    result[1] = 0;
    result[2] = 0;
    *result = a2 - 13;
  }

  else if (a2)
  {
    *result = 0;
    result[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  return result;
}

uint64_t sub_100597918()
{
  if (*(v0 + 8) >> 60 == 15)
  {
    return 0x6E4979627261654ELL;
  }

  else
  {
    return 0x706F7244726941;
  }
}

uint64_t sub_1005979DC()
{

  if (*(v0 + 24))
  {
  }

  return _swift_deallocObject(v0, 40);
}

const char *sub_100597A58(int a1)
{
  if (a1 > 39)
  {
    if (a1 <= 44)
    {
      if (a1 == 40)
      {
        return "Medium";
      }

      if (a1 == 42)
      {
        return "MediumMid";
      }
    }

    else
    {
      switch(a1)
      {
        case '-':
          return "MediumHigh";
        case '2':
          return "High";
        case '<':
          return "Max";
      }
    }
  }

  else if (a1 <= 14)
  {
    if (!a1)
    {
      return "Default";
    }

    if (a1 == 10)
    {
      return "Periodic";
    }
  }

  else
  {
    switch(a1)
    {
      case 15:
        return "PeriodicHigh";
      case 20:
        return "Background";
      case 30:
        return "Low";
    }
  }

  return "?";
}

const char *sub_100597B40(int a1)
{
  if (a1 < 0x20000)
  {
    if (a1 <= 0x20000)
    {
      switch(a1)
      {
        case 65536:
          result = "FindMyAction";
          break;
        case 65537:
          result = "FindMyBackground";
          break;
        case 65538:
          result = "FindMyActionHELE";
          break;
        case 65539:
          result = "FindMyBackgroundHELE";
          break;
        case 65540:
          result = "FindMyActionTransient";
          break;
        case 65541:
          result = "FindMyBackgroundTransient";
          break;
        case 65542:
          result = "FindMyActionHELETransient";
          break;
        case 65543:
          result = "FindMyBackgroundHELETransient";
          break;
        case 65544:
          result = "FindMyNotOptedIn";
          break;
        case 65545:
          result = "FindMyOptedIn";
          break;
        case 65546:
          result = "FindMySepAlertsEnabled";
          break;
        case 65547:
          result = "FindMyTemporaryAggressiveLegacy";
          break;
        case 65548:
          result = "FindMyTemporaryLongAggressive";
          break;
        case 65549:
          result = "FindMyBTFindingUserInitiated";
          break;
        case 65550:
          result = "FindMyHELE";
          break;
        case 65551:
          result = "FindMyBeaconOnDemand";
          break;
        case 65552:
          result = "FindMyWildTimedScan";
          break;
        case 65553:
          result = "FindMyBackgroundLeechScan";
          break;
        case 65554:
          result = "FindMySnifferMode";
          break;
        case 65555:
          result = "FindMyUnpair";
          break;
        case 65556:
          result = "FindMyUnpairHELE";
          break;
        case 65557:
          result = "FindMyPlaySound";
          break;
        case 65558:
          result = "FindMyPlaySoundHELE";
          break;
        case 65559:
          result = "FindMyNotOptedInBeepOnMoveWaking";
          break;
        case 65560:
          result = "FindMyUTTransient";
          break;
        case 65561:
          result = "FindMyUTHELETransient";
          break;
        case 65562:
          result = "FindMyActionExtendedRange";
          break;
        case 65563:
          result = "FindMyActionExtendedRangeLE2M";
          break;
        case 65564:
          result = "FindMyActionExtendedRangeTransient";
          break;
        case 65565:
          result = "FindMyPlaySoundExtendedRange";
          break;
        case 65566:
          result = "FindMyPair";
          break;
        case 65567:
          result = "FindMyTemporaryAggressiveLegacyExtendedRange";
          break;
        default:
          JUMPOUT(0);
      }
    }

    else
    {
      result = "Unspecified";
      switch(a1)
      {
        case 0:
          return result;
        case 1:
          result = "HealthKit";
          break;
        case 2:
          result = "HomeKit";
          break;
        case 3:
          result = "FindMyObjectConnection";
          break;
        case 4:
          result = "FindMyObjectConnectionTransient";
          break;
        case 5:
          result = "MIDI";
          break;
        case 6:
          result = "Continuity";
          break;
        case 7:
          result = "InstantHotSpot";
          break;
        case 8:
          result = "NearBy";
          break;
        case 9:
          result = "Sharing";
          break;
        case 10:
          result = "HearingSupport";
          break;
        case 11:
          result = "Magnet";
          break;
        case 12:
          result = "HID";
          break;
        case 13:
          result = "LEA";
          break;
        case 14:
          result = "External";
          break;
        case 15:
          result = "ExternalMedical";
          break;
        case 16:
          result = "ExternalLock";
          break;
        case 17:
          result = "ExternalWatch";
          break;
        case 18:
          result = "SmartRouting";
          break;
        case 19:
          result = "DigitalID";
          break;
        case 20:
          result = "DigitalKey";
          break;
        case 21:
          result = "DigitalCarKey";
          break;
        case 22:
          result = "HeySiri";
          break;
        case 23:
          result = "ThirdPartyApp";
          break;
        case 24:
          result = "CNJ";
          break;
        default:
          switch(a1)
          {
            case 256:
              result = "DevicePresenceDetection";
              break;
            case 257:
              result = "AudioBox";
              break;
            case 258:
              result = "SIMTransfer";
              break;
            case 259:
              result = "ProximityScreenOnLeechScan";
              break;
            case 260:
              result = "MacMigrate";
              break;
            case 263:
              result = "HIDUARTService";
              break;
            case 264:
              result = "AccessibilitySwitchControlPairing";
              break;
            case 265:
              result = "BaseBandFastConnect";
              break;
            case 266:
              result = "SafetyAlerts";
              break;
            case 267:
              result = "LECarPlay";
              break;
            case 268:
              result = "TCCBluetooth";
              break;
            case 269:
              result = "AOPBufferLeech";
              break;
            case 270:
              result = "HighPriorityScanWiFi";
              break;
            default:
              return "?";
          }

          break;
      }
    }
  }

  else
  {
    if (a1 <= 0x80000)
    {
      if (a1 < 196608)
      {
        switch(a1)
        {
          case 131072:
            result = "SharingDefault";
            break;
          case 131073:
            result = "SharingPhoneAutoUnlock";
            break;
          case 131074:
            result = "SharingSiriWatchAuth";
            break;
          case 131075:
            result = "SharingMacAutoUnlock";
            break;
          case 131076:
            result = "SharingEDTScreenOn";
            break;
          case 131077:
            result = "SharingEDTWiFiDisabled";
            break;
          case 131078:
            result = "SharingEDTWombatEligibleAsDefaultCamera";
            break;
          case 131079:
            result = "SharingEDTWombatCameraPicker";
            break;
          case 131080:
            result = "SharingWombatBackground";
            break;
          case 131081:
            result = "SharingUniversalControl";
            break;
          case 131082:
            result = "SharingPeopleProximity";
            break;
          case 131083:
            result = "SharingEDTEnsembleOpenDisplayPrefs";
            break;
          case 131084:
            result = "SharingEDTNearbydMotionStopped";
            break;
          case 131085:
            result = "SharingDoubleBoostGenericScan";
            break;
          case 131086:
            result = "SharingEDTIncomingAdvertisement ";
            break;
          case 131087:
            result = "SharingEDTWombatStreamStart";
            break;
          case 131088:
            result = "SharingOYAutoUnlock";
            break;
          case 131090:
            result = "SharingAirDrop";
            break;
          case 131091:
            result = "SharingNearbyInvitationHost";
            break;
          case 131092:
            result = "SharingNearbyInvitationParticipant";
            break;
          case 131093:
            result = "SharingAirDropAskToAirDrop";
            break;
          case 131094:
            result = "SharingAirDropTempIdentity";
            break;
          case 131095:
            result = "SharingAirDropNeedsCLink";
            break;
          case 131096:
            result = "SharingRemoteWidgetUpdate";
            break;
          case 131097:
            result = "SharingCountryCodeUpdate";
            break;
          case 131098:
            result = "SharingMacPhoneAutoUnlock";
            break;
          case 131099:
            result = "SharingVisionProDiscovery";
            break;
          case 131100:
            result = "SharingVisionProStateChange";
            break;
          case 131101:
            result = "SharingContinuityScreen";
            break;
          case 131102:
            result = "SharingEDTRemoteDisplay";
            break;
          case 131103:
            result = "SharingHomePodSetup";
            break;
          default:
            return "?";
        }

        return result;
      }

      if (a1 > 393218)
      {
        if (a1 > 458752)
        {
          switch(a1)
          {
            case 0x70001:
              return "PrecisionFindingFindee";
            case 0x70002:
              return "SpatialHandoffHome";
            case 0x80000:
              return "ADPD";
          }
        }

        else
        {
          switch(a1)
          {
            case 393219:
              return "AppleIDSignIn";
            case 393220:
              return "AppleIDSignInSettings";
            case 458752:
              return "PrecisionFindingFinder";
          }
        }
      }

      else
      {
        if (a1 >= 393216)
        {
          if (a1 == 393216)
          {
            return "CaptiveNetworkJoin";
          }

          if (a1 == 393217)
          {
            return "UseCaseSIMTransfer";
          }

          return "MacSetup";
        }

        switch(a1)
        {
          case 196608:
            return "DigitalIDTSA";
          case 262144:
            return "DigitalCarKeyThirdParty";
          case 327680:
            return "RapportThirdParty";
        }
      }

      return "?";
    }

    if (a1 < 0x100000)
    {
      if (a1 <= 851968)
      {
        if (a1 >= 655360)
        {
          if (a1 <= 720896)
          {
            if (a1 == 655360)
            {
              return "AccessDigitalHomeKey";
            }

            if (a1 == 720896)
            {
              return "SoftwareUpdateBTWake";
            }
          }

          else
          {
            switch(a1)
            {
              case 720897:
                return "SofrwareUpdateOutboxControllerAuth";
              case 786432:
                return "ProxControlDeviceClose";
              case 851968:
                return "DCTProtocolTelephony";
            }
          }
        }

        else
        {
          if (a1 <= 524290)
          {
            if (a1 == 524289)
            {
              return "ADPDBuffer";
            }

            else
            {
              return "MicroLocation";
            }
          }

          switch(a1)
          {
            case 524291:
              return "MicroLocationLeech";
            case 589824:
              return "FindNearbyRemote";
            case 589825:
              return "FindNearbyPencil";
          }
        }
      }

      else if (a1 <= 983041)
      {
        if (a1 <= 917504)
        {
          if (a1 == 851969)
          {
            return "DCTProtocolDataAndTelephony";
          }

          if (a1 == 917504)
          {
            return "NearbyFaceTime";
          }
        }

        else
        {
          switch(a1)
          {
            case 917505:
              return "NearbyFaceTimeData";
            case 983040:
              return "SOSBeaconPartA";
            case 983041:
              return "SOSBeaconPartB";
          }
        }
      }

      else
      {
        if (a1 <= 983044)
        {
          if (a1 == 983042)
          {
            return "SOSBeaconPrecisionFindResponse";
          }

          if (a1 == 983043)
          {
            return "SOSBeaconPrecisionFindRequest";
          }

          return "SOSBeaconScan";
        }

        switch(a1)
        {
          case 983045:
            return "SOSBeaconActivateScan";
          case 983046:
            return "SOSBeaconActivateAdvA";
          case 983047:
            return "SOSBeaconActivateAdvB";
        }
      }

      return "?";
    }

    if (a1 <= 2147418111)
    {
      switch(a1)
      {
        case 1048576:
          return "DOS";
        case 1048577:
          return "DOD";
        case 1114112:
          return "ProximityServiceDeviceSetup";
      }

      return "?";
    }

    switch(a1)
    {
      case 2147418112:
        result = "InternalTestNoLockScan";
        break;
      case 2147418113:
        result = "InternalTestNoScreenOffScan";
        break;
      case 2147418114:
        result = "InternalTestScanWithNoDups";
        break;
      case 2147418115:
        result = "InternalTestScanWithDups";
        break;
      case 2147418116:
        result = "InternalTestScanFor20Seconds";
        break;
      case 2147418117:
        result = "InternalTestActiveScan";
        break;
      case 2147418118:
        result = "InternalTestUUIDScan";
        break;
      case 2147418119:
        result = "InternalTestScanFor10ClockSeconds";
        break;
      case 2147418120:
        result = "InternalTestScanBoost";
        break;
      case 2147418121:
        result = "InternalTestDiscoveryScanWithMRC";
        break;
      case 2147418122:
        result = "InternalTestAdvWithHigherPower";
        break;
      case 2147418123:
        result = "InternalTestScanLowDutyCycleMCOnly";
        break;
      case 2147418124:
        result = "InternalTestUUIDScanWithMinRSSI";
        break;
      case 2147418125:
        result = "InternalTestUUIDScanWithMinRSSIMediumLow";
        break;
      case 2147418126:
        result = "InternalTestAdvWithHigherPowerServiceDataConnectable";
        break;
      case 2147418127:
        result = "InternalTestAdvWithHigherPowerServiceDataNonConnectable";
        break;
      case 2147418128:
        result = "InternalTestAdvWithHigherPowerServiceDataS2";
        break;
      case 2147418129:
        result = "InternalTestAdvWithHigherPowerServiceDataS8";
        break;
      case 2147418130:
        result = "InternalTestDiscoveryScanCodedPHY";
        break;
      default:
        return "?";
    }
  }

  return result;
}

uint64_t sub_1005985D8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 24))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_10059862C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t sub_1005986AC()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_100984130);
  v1 = sub_10000C4AC(v0, qword_100984130);
  if (qword_100973758 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A0A50);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100598774(void *a1)
{
  v3 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  __chkstk_darwin(v3 - 8);
  v5 = &v54 - v4;
  v6 = type metadata accessor for AuthenticationSecurityRequest(0);
  v7 = *(v6 - 8);
  v59 = v6;
  v60 = v7;
  v8 = __chkstk_darwin(v6);
  v61 = v9;
  v62 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = (&v54 - v10);
  v12 = type metadata accessor for Date();
  v63 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchPredicate();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = (&v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = *&v1[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_queue];
  *v18 = v19;
  (*(v16 + 104))(v18, enum case for DispatchPredicate.onQueue(_:), v15);
  v20 = v19;
  LOBYTE(v19) = _dispatchPreconditionTest(_:)();
  (*(v16 + 8))(v18, v15);
  if (v19)
  {
    v58 = v12;
    if (qword_100973AC0 == -1)
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
  v21 = type metadata accessor for Logger();
  sub_10000C4AC(v21, qword_100984130);
  v22 = a1;
  v23 = v1;
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v54 = v11;
    v27 = v26;
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v55 = v5;
    v30 = v14;
    v31 = v29;
    v66[0] = v29;
    *v27 = 138412546;
    *(v27 + 4) = v22;
    *v28 = v22;
    *(v27 + 12) = 2080;
    v32 = v22;
    v33 = UUID.uuidString.getter();
    v35 = sub_10000C4E4(v33, v34, v66);

    *(v27 + 14) = v35;
    _os_log_impl(&_mh_execute_header, v24, v25, "Received authentication pairing request: %@ for sessionID %s", v27, 0x16u);
    sub_100005508(v28, &qword_100975400, &qword_1007F65D0);

    sub_10000C60C(v31);
    v14 = v30;
    v5 = v55;

    v11 = v54;
  }

  sub_1004FDD9C();
  v36 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_peerDevice;
  swift_beginAccess();
  sub_10000FF90(&v23[v36], &v64, &qword_100982080, &unk_1007FDD30);
  if (v65)
  {
    sub_1000121F8(&v64, v66);
    v37 = *&v23[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_type];
    v57 = v22;
    if (v37 > 0x15)
    {
      v38 = 786431;
    }

    else
    {
      v38 = qword_10080B920[v37];
    }

    Date.init()();
    v42 = v58;
    v43 = *(v59 + 20);
    v44 = v14;
    v56 = v14;
    v45 = v63;
    (*(v63 + 16))(v11 + v43, v44, v58);
    *v11 = v38;
    v46 = type metadata accessor for TaskPriority();
    (*(*(v46 - 8) + 56))(v5, 1, 1, v46);
    v47 = v62;
    sub_100356068(v11, v62);
    sub_1002A9938(v66, &v64);
    v48 = (*(v60 + 80) + 40) & ~*(v60 + 80);
    v49 = (v61 + v48 + 7) & 0xFFFFFFFFFFFFFFF8;
    v50 = swift_allocObject();
    v50[2] = 0;
    v50[3] = 0;
    v50[4] = v23;
    sub_100464F60(v47, v50 + v48);
    v51 = v57;
    *(v50 + v49) = v57;
    sub_1000121F8(&v64, v50 + ((v49 + 15) & 0xFFFFFFFFFFFFFFF8));
    v52 = v51;
    v53 = v23;
    sub_1002B3098(0, 0, v5, &unk_10080B910, v50);

    sub_1003560CC(v11);
    (*(v45 + 8))(v56, v42);
    return sub_10000C60C(v66);
  }

  else
  {
    sub_100005508(&v64, &qword_100982080, &unk_1007FDD30);
    v39 = sub_100010F88(10, 0xD000000000000014, 0x80000001007967D0);
    sub_10059EEE0(v39, v40, &unk_1008E8510, sub_10059FFC4, &unk_1008E8528);
  }
}

uint64_t sub_100598E04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[39] = a6;
  v7[40] = a7;
  v7[37] = a4;
  v7[38] = a5;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v7[41] = v8;
  v7[42] = *(v8 - 8);
  v7[43] = swift_task_alloc();
  v9 = type metadata accessor for DispatchQoS();
  v7[44] = v9;
  v7[45] = *(v9 - 8);
  v7[46] = swift_task_alloc();
  v10 = type metadata accessor for ContinuousClock();
  v7[47] = v10;
  v7[48] = *(v10 - 8);
  v7[49] = swift_task_alloc();

  return _swift_task_switch(sub_100598F80, 0, 0);
}

uint64_t sub_100598F80()
{
  v111 = v0;
  v1 = *(v0 + 296);
  v2 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_delegate;
  swift_beginAccess();
  sub_10000FF90(v1 + v2, v0 + 64, &qword_10097A9C8, &unk_1007FDD40);
  if (*(v0 + 88))
  {
    sub_1002A9938(v0 + 64, v0 + 144);
    sub_100005508(v0 + 64, &qword_10097A9C8, &unk_1007FDD40);
    v3 = (*sub_10002CDC0((v0 + 144), *(v0 + 168)) + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationManager_securityManager);
    swift_beginAccess();
    sub_10002CDC0(v3, v3[3]);
    v4 = swift_task_alloc();
    *(v0 + 400) = v4;
    *v4 = v0;
    v4[1] = sub_100599E88;
    v5 = *(v0 + 304);

    return sub_100351944(v5);
  }

  sub_100005508(v0 + 64, &qword_10097A9C8, &unk_1007FDD40);
  if (qword_100973AC0 != -1)
  {
    swift_once();
  }

  v7 = *(v0 + 296);
  v8 = type metadata accessor for Logger();
  *(v0 + 416) = sub_10000C4AC(v8, qword_100984130);
  v9 = v7;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v110[0] = v13;
    *v12 = 136315138;
    v14 = sub_100027340();
    v16 = sub_10000C4E4(v14, v15, v110);

    *(v12 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v10, v11, "Authentication Session type: %s", v12, 0xCu);
    sub_10000C60C(v13);
  }

  v17 = [objc_allocWithZone(SDAuthenticationPairingResponse) init];
  *(v0 + 424) = v17;
  if (!v17)
  {
    v22 = sub_100010F88(10, 0xD000000000000039, 0x80000001007967F0);
    v24 = v23;
    sub_1000115C8();
    v25 = swift_allocError();
    *v26 = v22;
    *(v26 + 8) = v24;
    swift_willThrow();
    goto LABEL_16;
  }

  v18 = *(v0 + 296);
  v19 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_type;
  *(v0 + 432) = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_type;
  v20 = *(v18 + v19);
  v21 = OBJC_IVAR____TtC16DaemoniOSLibrary33SDAuthenticationPairingKeySession_aksPairingSession;
  *(v0 + 440) = OBJC_IVAR____TtC16DaemoniOSLibrary33SDAuthenticationPairingKeySession_aksPairingSession;
  *(v0 + 448) = *(v18 + v21);
  if (v20 == 8)
  {

    sub_10067B040();
    sub_10067A7F8(0, 0xF000000000000000);
    v29 = v28;

    *(v0 + 488) = v29;
    v52 = *(v0 + 424);
    v53 = *(v0 + 432);
    v54 = *(v0 + 296);
    v55 = v29;
    UUID.uuidString.getter();
    v56 = String._bridgeToObjectiveC()();

    [v52 setSessionID:v56];

    [v52 setVersion:1];
    v57 = Data.init(referencing:)();
    v59 = v58;

    isa = Data._bridgeToObjectiveC()().super.isa;
    sub_100026AC0(v57, v59);
    [v52 setToken:isa];

    if (HIDWORD(*(v54 + v53)))
    {
      __break(1u);
      goto LABEL_52;
    }

    v61 = *(v0 + 296);
    [*(v0 + 424) setType:?];
    v62 = OBJC_IVAR____TtC16DaemoniOSLibrary33SDAuthenticationPairingKeySession_requestArmingUI;
    if (*(v61 + OBJC_IVAR____TtC16DaemoniOSLibrary33SDAuthenticationPairingKeySession_requestArmingUI) == 1)
    {
      v63 = Logger.logObject.getter();
      v64 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v63, v64))
      {
        v65 = swift_slowAlloc();
        *v65 = 0;
        _os_log_impl(&_mh_execute_header, v63, v64, "Requesting arming UI", v65, 2u);
      }

      v66 = *(v0 + 424);

      [v66 setRequestArmingUI:*(v61 + v62)];
    }

    v67 = [*(v0 + 424) data];
    if (v67)
    {
      v68 = v67;
      v69 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v71 = v70;

      *(v0 + 496) = v69;
      *(v0 + 504) = v71;
      v72 = [objc_opt_self() standardUserDefaults];
      v73 = String._bridgeToObjectiveC()();
      v74 = [v72 integerForKey:v73];

      if (v74 >= 1)
      {
        v75 = Logger.logObject.getter();
        v76 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v75, v76))
        {
          v77 = swift_slowAlloc();
          *v77 = 134217984;
          *(v77 + 4) = v74;
          _os_log_impl(&_mh_execute_header, v75, v76, "### TESTING ONLY: start delaySendingPairingResponse for %ld seconds", v77, 0xCu);
        }

        static Clock<>.continuous.getter();
        v78 = swift_task_alloc();
        *(v0 + 512) = v78;
        *v78 = v0;
        v78[1] = sub_10059C2CC;

        return sub_10002ED10(1000000000000000000 * v74, (v74 * 0xDE0B6B3A7640000uLL) >> 64, 0, 0, 1);
      }

      v97 = *(v0 + 496);
      v96 = *(v0 + 504);
      v106 = *(v0 + 488);
      v107 = *(v0 + 424);
      v98 = *(v0 + 368);
      v99 = *(v0 + 344);
      v108 = *(v0 + 360);
      v109 = *(v0 + 352);
      v100 = *(v0 + 328);
      v101 = *(v0 + 336);
      v102 = *(v0 + 296);
      sub_1002A9938(*(v0 + 320), v0 + 104);
      v103 = swift_allocObject();
      v103[2] = v102;
      v103[3] = v97;
      v103[4] = v96;
      sub_1000121F8((v0 + 104), (v103 + 5));
      *(v0 + 48) = sub_10059FFB4;
      *(v0 + 56) = v103;
      *(v0 + 16) = _NSConcreteStackBlock;
      *(v0 + 24) = 1107296256;
      *(v0 + 32) = sub_100011678;
      *(v0 + 40) = &unk_1008E84D8;
      v104 = _Block_copy((v0 + 16));
      v105 = v102;
      sub_100294008(v97, v96);
      static DispatchQoS.unspecified.getter();
      *(v0 + 288) = _swiftEmptyArrayStorage;
      sub_10001432C(&qword_100976140, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
      sub_100013EB8();
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();

      _Block_release(v104);
      sub_100026AC0(v97, v96);

      (*(v101 + 8))(v99, v100);
      (*(v108 + 8))(v98, v109);

      goto LABEL_46;
    }

    v91 = *(v0 + 424);
    v92 = sub_100010F88(10, 0xD000000000000020, 0x800000010078DDB0);
    v94 = v93;
    sub_1000115C8();
    v25 = swift_allocError();
    *v95 = v92;
    *(v95 + 8) = v94;
    swift_willThrow();

LABEL_16:
    *(v0 + 248) = v25;
    swift_errorRetain();
    sub_10028088C(&unk_10097A930, &unk_1007F9050);
    if (swift_dynamicCast())
    {

      sub_10059EEE0(*(v0 + 232), *(v0 + 240), &unk_1008E8510, sub_10059FFC4, &unk_1008E8528);

LABEL_45:

LABEL_46:

      v90 = *(v0 + 8);

      return v90();
    }

    *(v0 + 256) = v25;
    swift_errorRetain();
    sub_1004F42D4();
    if (!swift_dynamicCast())
    {

      if (qword_100973AC0 != -1)
      {
        swift_once();
      }

      sub_10000C4AC(v8, qword_100984130);
      swift_errorRetain();
      v36 = Logger.logObject.getter();
      v37 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v110[0] = v39;
        *v38 = 136315138;
        *(v0 + 272) = v25;
        swift_errorRetain();
        v40 = String.init<A>(describing:)();
        v42 = sub_10000C4E4(v40, v41, v110);

        *(v38 + 4) = v42;
        _os_log_impl(&_mh_execute_header, v36, v37, "Unexpected error: %s", v38, 0xCu);
        sub_10000C60C(v39);
      }

      v43 = sub_100010F88(10, 0, 0xE000000000000000);
      sub_10059EEE0(v43, v44, &unk_1008E8510, sub_10059FFC4, &unk_1008E8528);

      goto LABEL_45;
    }

    v59 = *(v0 + 264);
    v30 = [v59 code];
    v31 = [v59 domain];
    v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v34 = v33;

    if (v32 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v34 == v35)
    {

LABEL_28:
      v46 = SFAuthenticationErrorCodeToString();
      v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v49 = v48;

      v50 = sub_100010F88(v30, v47, v49);
      sub_10059EEE0(v50, v51, &unk_1008E8510, sub_10059FFC4, &unk_1008E8528);

      goto LABEL_45;
    }

    v45 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v45)
    {
      goto LABEL_28;
    }

    if (qword_100973AC0 == -1)
    {
LABEL_42:
      sub_10000C4AC(v8, qword_100984130);
      v79 = v59;
      v80 = Logger.logObject.getter();
      v81 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v80, v81))
      {
        v82 = swift_slowAlloc();
        v83 = swift_slowAlloc();
        v110[0] = v83;
        *v82 = 136315138;
        *(v0 + 280) = v79;
        v84 = v79;
        v85 = String.init<A>(describing:)();
        v87 = sub_10000C4E4(v85, v86, v110);

        *(v82 + 4) = v87;
        _os_log_impl(&_mh_execute_header, v80, v81, "Unexpected error: %s", v82, 0xCu);
        sub_10000C60C(v83);
      }

      v88 = sub_100010F88(10, 0, 0xE000000000000000);
      sub_10059EEE0(v88, v89, &unk_1008E8510, sub_10059FFC4, &unk_1008E8528);

      goto LABEL_45;
    }

LABEL_52:
    swift_once();
    goto LABEL_42;
  }

  v27 = swift_task_alloc();
  *(v0 + 456) = v27;
  *v27 = v0;
  v27[1] = sub_10059B2D0;

  return sub_100678A54();
}

uint64_t sub_100599E88()
{
  *(*v1 + 408) = v0;

  if (v0)
  {
    v2 = sub_10059AD74;
  }

  else
  {
    v2 = sub_100599F9C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100599F9C()
{
  v108 = v0;
  sub_10000C60C((v0 + 144));
  v1 = *(v0 + 408);
  if (qword_100973AC0 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 296);
  v3 = type metadata accessor for Logger();
  *(v0 + 416) = sub_10000C4AC(v3, qword_100984130);
  v4 = v2;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v107[0] = v8;
    *v7 = 136315138;
    v9 = sub_100027340();
    v11 = sub_10000C4E4(v9, v10, v107);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v5, v6, "Authentication Session type: %s", v7, 0xCu);
    sub_10000C60C(v8);
  }

  v12 = [objc_allocWithZone(SDAuthenticationPairingResponse) init];
  *(v0 + 424) = v12;
  if (!v12)
  {
    v19 = sub_100010F88(10, 0xD000000000000039, 0x80000001007967F0);
    v21 = v20;
    sub_1000115C8();
    v18 = swift_allocError();
    *v22 = v19;
    *(v22 + 8) = v21;
    swift_willThrow();
    goto LABEL_14;
  }

  v13 = *(v0 + 296);
  v14 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_type;
  *(v0 + 432) = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_type;
  v15 = *(v13 + v14);
  v16 = OBJC_IVAR____TtC16DaemoniOSLibrary33SDAuthenticationPairingKeySession_aksPairingSession;
  *(v0 + 440) = OBJC_IVAR____TtC16DaemoniOSLibrary33SDAuthenticationPairingKeySession_aksPairingSession;
  *(v0 + 448) = *(v13 + v16);
  if (v15 != 8)
  {

    v23 = swift_task_alloc();
    *(v0 + 456) = v23;
    *v23 = v0;
    v23[1] = sub_10059B2D0;

    return sub_100678A54();
  }

  v17 = v12;

  sub_10067B040();
  v18 = v1;
  if (v1)
  {

    goto LABEL_14;
  }

  sub_10067A7F8(0, 0xF000000000000000);
  v26 = v25;

  *(v0 + 488) = v26;
  v49 = *(v0 + 424);
  v50 = *(v0 + 432);
  v51 = *(v0 + 296);
  v52 = v26;
  UUID.uuidString.getter();
  v53 = String._bridgeToObjectiveC()();

  [v49 setSessionID:v53];

  [v49 setVersion:1];
  v54 = Data.init(referencing:)();
  v56 = v55;

  isa = Data._bridgeToObjectiveC()().super.isa;
  sub_100026AC0(v54, v56);
  [v49 setToken:isa];

  if (HIDWORD(*(v51 + v50)))
  {
    __break(1u);
    goto LABEL_50;
  }

  v58 = *(v0 + 296);
  [*(v0 + 424) setType:?];
  v59 = OBJC_IVAR____TtC16DaemoniOSLibrary33SDAuthenticationPairingKeySession_requestArmingUI;
  if (*(v58 + OBJC_IVAR____TtC16DaemoniOSLibrary33SDAuthenticationPairingKeySession_requestArmingUI) == 1)
  {
    v60 = Logger.logObject.getter();
    v61 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      *v62 = 0;
      _os_log_impl(&_mh_execute_header, v60, v61, "Requesting arming UI", v62, 2u);
    }

    v63 = *(v0 + 424);

    [v63 setRequestArmingUI:*(v58 + v59)];
  }

  v64 = [*(v0 + 424) data];
  if (!v64)
  {
    v88 = *(v0 + 424);
    v89 = sub_100010F88(10, 0xD000000000000020, 0x800000010078DDB0);
    v91 = v90;
    sub_1000115C8();
    v18 = swift_allocError();
    *v92 = v89;
    *(v92 + 8) = v91;
    swift_willThrow();

LABEL_14:
    *(v0 + 248) = v18;
    swift_errorRetain();
    sub_10028088C(&unk_10097A930, &unk_1007F9050);
    if (swift_dynamicCast())
    {

      sub_10059EEE0(*(v0 + 232), *(v0 + 240), &unk_1008E8510, sub_10059FFC4, &unk_1008E8528);

LABEL_43:

LABEL_44:

      v87 = *(v0 + 8);

      return v87();
    }

    *(v0 + 256) = v18;
    swift_errorRetain();
    sub_1004F42D4();
    if (!swift_dynamicCast())
    {

      if (qword_100973AC0 != -1)
      {
        swift_once();
      }

      sub_10000C4AC(v3, qword_100984130);
      swift_errorRetain();
      v33 = Logger.logObject.getter();
      v34 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v107[0] = v36;
        *v35 = 136315138;
        *(v0 + 272) = v18;
        swift_errorRetain();
        v37 = String.init<A>(describing:)();
        v39 = sub_10000C4E4(v37, v38, v107);

        *(v35 + 4) = v39;
        _os_log_impl(&_mh_execute_header, v33, v34, "Unexpected error: %s", v35, 0xCu);
        sub_10000C60C(v36);
      }

      v40 = sub_100010F88(10, 0, 0xE000000000000000);
      sub_10059EEE0(v40, v41, &unk_1008E8510, sub_10059FFC4, &unk_1008E8528);

      goto LABEL_43;
    }

    v56 = *(v0 + 264);
    v27 = [v56 code];
    v28 = [v56 domain];
    v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v31 = v30;

    if (v29 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v31 == v32)
    {

LABEL_26:
      v43 = SFAuthenticationErrorCodeToString();
      v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v46 = v45;

      v47 = sub_100010F88(v27, v44, v46);
      sub_10059EEE0(v47, v48, &unk_1008E8510, sub_10059FFC4, &unk_1008E8528);

      goto LABEL_43;
    }

    v42 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v42)
    {
      goto LABEL_26;
    }

    if (qword_100973AC0 == -1)
    {
LABEL_40:
      sub_10000C4AC(v3, qword_100984130);
      v76 = v56;
      v77 = Logger.logObject.getter();
      v78 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v77, v78))
      {
        v79 = swift_slowAlloc();
        v80 = swift_slowAlloc();
        v107[0] = v80;
        *v79 = 136315138;
        *(v0 + 280) = v76;
        v81 = v76;
        v82 = String.init<A>(describing:)();
        v84 = sub_10000C4E4(v82, v83, v107);

        *(v79 + 4) = v84;
        _os_log_impl(&_mh_execute_header, v77, v78, "Unexpected error: %s", v79, 0xCu);
        sub_10000C60C(v80);
      }

      v85 = sub_100010F88(10, 0, 0xE000000000000000);
      sub_10059EEE0(v85, v86, &unk_1008E8510, sub_10059FFC4, &unk_1008E8528);

      goto LABEL_43;
    }

LABEL_50:
    swift_once();
    goto LABEL_40;
  }

  v65 = v64;
  v66 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v68 = v67;

  *(v0 + 496) = v66;
  *(v0 + 504) = v68;
  v69 = [objc_opt_self() standardUserDefaults];
  v70 = String._bridgeToObjectiveC()();
  v71 = [v69 integerForKey:v70];

  if (v71 < 1)
  {
    v94 = *(v0 + 496);
    v93 = *(v0 + 504);
    v103 = *(v0 + 488);
    v104 = *(v0 + 424);
    v95 = *(v0 + 368);
    v96 = *(v0 + 344);
    v105 = *(v0 + 360);
    v106 = *(v0 + 352);
    v97 = *(v0 + 328);
    v98 = *(v0 + 336);
    v99 = *(v0 + 296);
    sub_1002A9938(*(v0 + 320), v0 + 104);
    v100 = swift_allocObject();
    v100[2] = v99;
    v100[3] = v94;
    v100[4] = v93;
    sub_1000121F8((v0 + 104), (v100 + 5));
    *(v0 + 48) = sub_10059FFB4;
    *(v0 + 56) = v100;
    *(v0 + 16) = _NSConcreteStackBlock;
    *(v0 + 24) = 1107296256;
    *(v0 + 32) = sub_100011678;
    *(v0 + 40) = &unk_1008E84D8;
    v101 = _Block_copy((v0 + 16));
    v102 = v99;
    sub_100294008(v94, v93);
    static DispatchQoS.unspecified.getter();
    *(v0 + 288) = _swiftEmptyArrayStorage;
    sub_10001432C(&qword_100976140, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
    sub_100013EB8();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();

    _Block_release(v101);
    sub_100026AC0(v94, v93);

    (*(v98 + 8))(v96, v97);
    (*(v105 + 8))(v95, v106);

    goto LABEL_44;
  }

  v72 = Logger.logObject.getter();
  v73 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v72, v73))
  {
    v74 = swift_slowAlloc();
    *v74 = 134217984;
    *(v74 + 4) = v71;
    _os_log_impl(&_mh_execute_header, v72, v73, "### TESTING ONLY: start delaySendingPairingResponse for %ld seconds", v74, 0xCu);
  }

  static Clock<>.continuous.getter();
  v75 = swift_task_alloc();
  *(v0 + 512) = v75;
  *v75 = v0;
  v75[1] = sub_10059C2CC;

  return sub_10002ED10(1000000000000000000 * v71, (v71 * 0xDE0B6B3A7640000uLL) >> 64, 0, 0, 1);
}

uint64_t sub_10059AD74()
{
  v42 = v0;
  sub_10000C60C((v0 + 144));
  v1 = *(v0 + 408);
  *(v0 + 248) = v1;
  swift_errorRetain();
  sub_10028088C(&unk_10097A930, &unk_1007F9050);
  if (swift_dynamicCast())
  {

    sub_10059EEE0(*(v0 + 232), *(v0 + 240), &unk_1008E8510, sub_10059FFC4, &unk_1008E8528);

    goto LABEL_22;
  }

  *(v0 + 256) = v1;
  swift_errorRetain();
  sub_1004F42D4();
  if (swift_dynamicCast())
  {

    v2 = *(v0 + 264);
    v3 = [v2 code];
    v4 = [v2 domain];
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;

    if (v5 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v7 == v8)
    {
    }

    else
    {
      v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v10 & 1) == 0)
      {
        if (qword_100973AC0 != -1)
        {
          swift_once();
        }

        v11 = type metadata accessor for Logger();
        sub_10000C4AC(v11, qword_100984130);
        v2 = v2;
        v12 = Logger.logObject.getter();
        v13 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v12, v13))
        {
          v14 = swift_slowAlloc();
          v15 = swift_slowAlloc();
          v41 = v15;
          *v14 = 136315138;
          *(v0 + 280) = v2;
          v16 = v2;
          v17 = String.init<A>(describing:)();
          v19 = sub_10000C4E4(v17, v18, &v41);

          *(v14 + 4) = v19;
          _os_log_impl(&_mh_execute_header, v12, v13, "Unexpected error: %s", v14, 0xCu);
          sub_10000C60C(v15);
        }

        v20 = 10;
        v21 = 0;
        v22 = 0xE000000000000000;
        goto LABEL_21;
      }
    }

    v33 = SFAuthenticationErrorCodeToString();
    v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v36 = v35;

    v20 = v3;
    v21 = v34;
    v22 = v36;
LABEL_21:
    v37 = sub_100010F88(v20, v21, v22);
    sub_10059EEE0(v37, v38, &unk_1008E8510, sub_10059FFC4, &unk_1008E8528);

    goto LABEL_22;
  }

  if (qword_100973AC0 != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  sub_10000C4AC(v23, qword_100984130);
  swift_errorRetain();
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v41 = v27;
    *v26 = 136315138;
    *(v0 + 272) = v1;
    swift_errorRetain();
    v28 = String.init<A>(describing:)();
    v30 = sub_10000C4E4(v28, v29, &v41);

    *(v26 + 4) = v30;
    _os_log_impl(&_mh_execute_header, v24, v25, "Unexpected error: %s", v26, 0xCu);
    sub_10000C60C(v27);
  }

  v31 = sub_100010F88(10, 0, 0xE000000000000000);
  sub_10059EEE0(v31, v32, &unk_1008E8510, sub_10059FFC4, &unk_1008E8528);

LABEL_22:

  v39 = *(v0 + 8);

  return v39();
}

uint64_t sub_10059B2D0(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[58] = a1;
  v4[59] = a2;
  v4[60] = v2;

  if (v2)
  {
    v5 = sub_10059CC90;
  }

  else
  {

    v5 = sub_10059B3F0;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10059B3F0()
{
  v132 = v0;
  v1 = [*(v0 + 312) longTermKey];
  if (!v1)
  {
    v20 = *(v0 + 464);
    v21 = *(v0 + 472);
    v22 = *(v0 + 424);
    v23 = sub_100010F88(10, 0xD000000000000015, 0x800000010078CD90);
    v25 = v24;
    sub_1000115C8();
    v26 = swift_allocError();
    *v27 = v23;
    *(v27 + 8) = v25;
    swift_willThrow();
    sub_100026AC0(v20, v21);

    goto LABEL_9;
  }

  v2 = *(v0 + 440);
  v3 = *(v0 + 296);
  v4 = v1;
  v5 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v8 = *(v3 + v2);
  v9 = *(v8 + OBJC_IVAR____TtC16DaemoniOSLibrary33SDAuthenticationAKSPairingSession_aksManager);

  sub_100294008(v5, v7);
  v129 = v5;
  v10 = v7;
  v11.super.isa = Data._bridgeToObjectiveC()().super.isa;
  v13 = *(v8 + OBJC_IVAR____TtC16DaemoniOSLibrary33SDAuthenticationAKSPairingSession_peerDevice + 24);
  v12 = *(v8 + OBJC_IVAR____TtC16DaemoniOSLibrary33SDAuthenticationAKSPairingSession_peerDevice + 32);
  v14 = sub_10002CDC0((v8 + OBJC_IVAR____TtC16DaemoniOSLibrary33SDAuthenticationAKSPairingSession_peerDevice), v13);
  v15 = *(v13 - 8);
  v16 = swift_task_alloc();
  (*(v15 + 16))(v16, v14, v13);
  (*(v12 + 8))(v13, v12);
  v18 = v17;
  (*(v15 + 8))(v16, v13);
  if (v18)
  {
    v19 = String._bridgeToObjectiveC()();
  }

  else
  {
    v19 = 0;
  }

  v28 = *(v0 + 480);

  [v9 signAndStoreRemoteLTK:v11.super.isa forDeviceID:v19];

  sub_10067A2BC();
  v26 = v28;
  if (v28)
  {
    v30 = *(v0 + 464);
    v29 = *(v0 + 472);
    v31 = *(v0 + 424);

    sub_100026AC0(v129, v10);

    sub_100026AC0(v30, v29);
    sub_100026AC0(v129, v10);
    goto LABEL_9;
  }

  sub_10067A7F8(0, 0xF000000000000000);
  v33 = *(v0 + 464);
  v32 = *(v0 + 472);
  v60 = v59;

  sub_100026AC0(v129, v10);
  v61 = v60;
  sub_100294008(v33, v32);
  v62 = Logger.logObject.getter();
  v63 = static os_log_type_t.default.getter();
  sub_100026AC0(v33, v32);
  if (os_log_type_enabled(v62, v63))
  {
    v64 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    v131[0] = v65;
    *v64 = 136315138;
    v66 = Data.debugDescription.getter();
    v68 = sub_10000C4E4(v66, v67, v131);

    *(v64 + 4) = v68;
    _os_log_impl(&_mh_execute_header, v62, v63, "Sending localAttestedLTK: %s", v64, 0xCu);
    sub_10000C60C(v65);
  }

  v70 = *(v0 + 464);
  v69 = *(v0 + 472);
  v71 = *(v0 + 424);
  isa = Data._bridgeToObjectiveC()().super.isa;
  [v71 setLongTermKey:isa];

  sub_100026AC0(v129, v10);
  sub_100026AC0(v70, v69);
  *(v0 + 488) = v61;
  v34 = *(v0 + 424);
  v73 = *(v0 + 432);
  v74 = *(v0 + 296);
  UUID.uuidString.getter();
  v75 = String._bridgeToObjectiveC()();

  [v34 setSessionID:v75];

  [v34 setVersion:1];
  v76 = Data.init(referencing:)();
  v78 = v77;

  v79 = Data._bridgeToObjectiveC()().super.isa;
  sub_100026AC0(v76, v78);
  [v34 setToken:v79];

  if (HIDWORD(*(v74 + v73)))
  {
    __break(1u);
    goto LABEL_48;
  }

  v80 = *(v0 + 296);
  [*(v0 + 424) setType:?];
  v81 = OBJC_IVAR____TtC16DaemoniOSLibrary33SDAuthenticationPairingKeySession_requestArmingUI;
  if (*(v80 + OBJC_IVAR____TtC16DaemoniOSLibrary33SDAuthenticationPairingKeySession_requestArmingUI) == 1)
  {
    v82 = Logger.logObject.getter();
    v83 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v82, v83))
    {
      v84 = swift_slowAlloc();
      *v84 = 0;
      _os_log_impl(&_mh_execute_header, v82, v83, "Requesting arming UI", v84, 2u);
    }

    v85 = *(v0 + 424);

    [v85 setRequestArmingUI:*(v80 + v81)];
  }

  v86 = [*(v0 + 424) data];
  if (!v86)
  {
    v111 = *(v0 + 424);
    v112 = sub_100010F88(10, 0xD000000000000020, 0x800000010078DDB0);
    v114 = v113;
    sub_1000115C8();
    v26 = swift_allocError();
    *v115 = v112;
    *(v115 + 8) = v114;
    swift_willThrow();

LABEL_9:
    *(v0 + 248) = v26;
    swift_errorRetain();
    sub_10028088C(&unk_10097A930, &unk_1007F9050);
    if (swift_dynamicCast())
    {

      sub_10059EEE0(*(v0 + 232), *(v0 + 240), &unk_1008E8510, sub_10059FFC4, &unk_1008E8528);

LABEL_41:

LABEL_42:

      v110 = *(v0 + 8);

      return v110();
    }

    *(v0 + 256) = v26;
    swift_errorRetain();
    sub_1004F42D4();
    if (!swift_dynamicCast())
    {

      if (qword_100973AC0 != -1)
      {
        swift_once();
      }

      v41 = type metadata accessor for Logger();
      sub_10000C4AC(v41, qword_100984130);
      swift_errorRetain();
      v42 = Logger.logObject.getter();
      v43 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        v131[0] = v45;
        *v44 = 136315138;
        *(v0 + 272) = v26;
        swift_errorRetain();
        v46 = String.init<A>(describing:)();
        v48 = sub_10000C4E4(v46, v47, v131);

        *(v44 + 4) = v48;
        _os_log_impl(&_mh_execute_header, v42, v43, "Unexpected error: %s", v44, 0xCu);
        sub_10000C60C(v45);
      }

      v49 = sub_100010F88(10, 0, 0xE000000000000000);
      sub_10059EEE0(v49, v50, &unk_1008E8510, sub_10059FFC4, &unk_1008E8528);

      goto LABEL_41;
    }

    v34 = *(v0 + 264);
    v35 = [v34 code];
    v36 = [v34 domain];
    v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v39 = v38;

    if (v37 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v39 == v40)
    {

LABEL_21:
      v52 = SFAuthenticationErrorCodeToString();
      v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v55 = v54;

      v56 = v35;
      v57 = v53;
      v58 = v55;
LABEL_40:
      v108 = sub_100010F88(v56, v57, v58);
      sub_10059EEE0(v108, v109, &unk_1008E8510, sub_10059FFC4, &unk_1008E8528);

      goto LABEL_41;
    }

    v51 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v51)
    {
      goto LABEL_21;
    }

    if (qword_100973AC0 == -1)
    {
LABEL_37:
      v99 = type metadata accessor for Logger();
      sub_10000C4AC(v99, qword_100984130);
      v34 = v34;
      v100 = Logger.logObject.getter();
      v101 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v100, v101))
      {
        v102 = swift_slowAlloc();
        v103 = swift_slowAlloc();
        v131[0] = v103;
        *v102 = 136315138;
        *(v0 + 280) = v34;
        v104 = v34;
        v105 = String.init<A>(describing:)();
        v107 = sub_10000C4E4(v105, v106, v131);

        *(v102 + 4) = v107;
        _os_log_impl(&_mh_execute_header, v100, v101, "Unexpected error: %s", v102, 0xCu);
        sub_10000C60C(v103);
      }

      v56 = 10;
      v57 = 0;
      v58 = 0xE000000000000000;
      goto LABEL_40;
    }

LABEL_48:
    swift_once();
    goto LABEL_37;
  }

  v87 = v86;
  v88 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v90 = v89;

  *(v0 + 496) = v88;
  *(v0 + 504) = v90;
  v91 = [objc_opt_self() standardUserDefaults];
  v92 = String._bridgeToObjectiveC()();
  v93 = [v91 integerForKey:v92];

  if (v93 < 1)
  {
    v117 = *(v0 + 496);
    v116 = *(v0 + 504);
    v126 = *(v0 + 488);
    v127 = *(v0 + 424);
    v118 = *(v0 + 368);
    v119 = *(v0 + 344);
    v128 = *(v0 + 360);
    v130 = *(v0 + 352);
    v120 = *(v0 + 328);
    v121 = *(v0 + 336);
    v122 = *(v0 + 296);
    sub_1002A9938(*(v0 + 320), v0 + 104);
    v123 = swift_allocObject();
    v123[2] = v122;
    v123[3] = v117;
    v123[4] = v116;
    sub_1000121F8((v0 + 104), (v123 + 5));
    *(v0 + 48) = sub_10059FFB4;
    *(v0 + 56) = v123;
    *(v0 + 16) = _NSConcreteStackBlock;
    *(v0 + 24) = 1107296256;
    *(v0 + 32) = sub_100011678;
    *(v0 + 40) = &unk_1008E84D8;
    v124 = _Block_copy((v0 + 16));
    v125 = v122;
    sub_100294008(v117, v116);
    static DispatchQoS.unspecified.getter();
    *(v0 + 288) = _swiftEmptyArrayStorage;
    sub_10001432C(&qword_100976140, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
    sub_100013EB8();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();

    _Block_release(v124);
    sub_100026AC0(v117, v116);

    (*(v121 + 8))(v119, v120);
    (*(v128 + 8))(v118, v130);

    goto LABEL_42;
  }

  v94 = Logger.logObject.getter();
  v95 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v94, v95))
  {
    v96 = swift_slowAlloc();
    *v96 = 134217984;
    *(v96 + 4) = v93;
    _os_log_impl(&_mh_execute_header, v94, v95, "### TESTING ONLY: start delaySendingPairingResponse for %ld seconds", v96, 0xCu);
  }

  static Clock<>.continuous.getter();
  v97 = swift_task_alloc();
  *(v0 + 512) = v97;
  *v97 = v0;
  v97[1] = sub_10059C2CC;

  return sub_10002ED10(1000000000000000000 * v93, (v93 * 0xDE0B6B3A7640000uLL) >> 64, 0, 0, 1);
}

uint64_t sub_10059C2CC()
{
  v2 = *v1;
  *(*v1 + 520) = v0;

  (*(v2[48] + 8))(v2[49], v2[47]);
  if (v0)
  {
    v3 = sub_10059C71C;
  }

  else
  {
    v3 = sub_10059C434;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10059C434(uint64_t a1)
{
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "### TESTING ONLY: end delaySendingPairingResponse", v4, 2u);
  }

  v6 = v1[62];
  v5 = v1[63];
  v17 = v1[61];
  v18 = v1[53];
  v7 = v1[46];
  v8 = v1[43];
  v19 = v1[45];
  v20 = v1[44];
  v9 = v1[41];
  v10 = v1[42];
  v11 = v1[37];
  sub_1002A9938(v1[40], (v1 + 13));
  v12 = swift_allocObject();
  v12[2] = v11;
  v12[3] = v6;
  v12[4] = v5;
  sub_1000121F8((v1 + 13), (v12 + 5));
  v1[6] = sub_10059FFB4;
  v1[7] = v12;
  v1[2] = _NSConcreteStackBlock;
  v1[3] = 1107296256;
  v1[4] = sub_100011678;
  v1[5] = &unk_1008E84D8;
  v13 = _Block_copy(v1 + 2);
  v14 = v11;
  sub_100294008(v6, v5);
  static DispatchQoS.unspecified.getter();
  v1[36] = _swiftEmptyArrayStorage;
  sub_10001432C(&qword_100976140, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
  sub_100013EB8();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();

  _Block_release(v13);
  sub_100026AC0(v6, v5);

  (*(v10 + 8))(v8, v9);
  (*(v19 + 8))(v7, v20);

  v15 = v1[1];

  return v15();
}

uint64_t sub_10059C71C()
{
  v45 = v0;
  v1 = *(v0 + 496);
  v2 = *(v0 + 504);
  v3 = *(v0 + 424);

  sub_100026AC0(v1, v2);
  v4 = *(v0 + 520);
  *(v0 + 248) = v4;
  swift_errorRetain();
  sub_10028088C(&unk_10097A930, &unk_1007F9050);
  if (swift_dynamicCast())
  {

    sub_10059EEE0(*(v0 + 232), *(v0 + 240), &unk_1008E8510, sub_10059FFC4, &unk_1008E8528);

    goto LABEL_22;
  }

  *(v0 + 256) = v4;
  swift_errorRetain();
  sub_1004F42D4();
  if (swift_dynamicCast())
  {

    v5 = *(v0 + 264);
    v6 = [v5 code];
    v7 = [v5 domain];
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    if (v8 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v10 == v11)
    {
    }

    else
    {
      v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v13 & 1) == 0)
      {
        if (qword_100973AC0 != -1)
        {
          swift_once();
        }

        v14 = type metadata accessor for Logger();
        sub_10000C4AC(v14, qword_100984130);
        v5 = v5;
        v15 = Logger.logObject.getter();
        v16 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v15, v16))
        {
          v17 = swift_slowAlloc();
          v18 = swift_slowAlloc();
          v44 = v18;
          *v17 = 136315138;
          *(v0 + 280) = v5;
          v19 = v5;
          v20 = String.init<A>(describing:)();
          v22 = sub_10000C4E4(v20, v21, &v44);

          *(v17 + 4) = v22;
          _os_log_impl(&_mh_execute_header, v15, v16, "Unexpected error: %s", v17, 0xCu);
          sub_10000C60C(v18);
        }

        v23 = 10;
        v24 = 0;
        v25 = 0xE000000000000000;
        goto LABEL_21;
      }
    }

    v36 = SFAuthenticationErrorCodeToString();
    v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v39 = v38;

    v23 = v6;
    v24 = v37;
    v25 = v39;
LABEL_21:
    v40 = sub_100010F88(v23, v24, v25);
    sub_10059EEE0(v40, v41, &unk_1008E8510, sub_10059FFC4, &unk_1008E8528);

    goto LABEL_22;
  }

  if (qword_100973AC0 != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for Logger();
  sub_10000C4AC(v26, qword_100984130);
  swift_errorRetain();
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v44 = v30;
    *v29 = 136315138;
    *(v0 + 272) = v4;
    swift_errorRetain();
    v31 = String.init<A>(describing:)();
    v33 = sub_10000C4E4(v31, v32, &v44);

    *(v29 + 4) = v33;
    _os_log_impl(&_mh_execute_header, v27, v28, "Unexpected error: %s", v29, 0xCu);
    sub_10000C60C(v30);
  }

  v34 = sub_100010F88(10, 0, 0xE000000000000000);
  sub_10059EEE0(v34, v35, &unk_1008E8510, sub_10059FFC4, &unk_1008E8528);

LABEL_22:

  v42 = *(v0 + 8);

  return v42();
}

uint64_t sub_10059CC90()
{
  v42 = v0;

  v1 = *(v0 + 480);
  *(v0 + 248) = v1;
  swift_errorRetain();
  sub_10028088C(&unk_10097A930, &unk_1007F9050);
  if (swift_dynamicCast())
  {

    sub_10059EEE0(*(v0 + 232), *(v0 + 240), &unk_1008E8510, sub_10059FFC4, &unk_1008E8528);

    goto LABEL_22;
  }

  *(v0 + 256) = v1;
  swift_errorRetain();
  sub_1004F42D4();
  if (swift_dynamicCast())
  {

    v2 = *(v0 + 264);
    v3 = [v2 code];
    v4 = [v2 domain];
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;

    if (v5 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v7 == v8)
    {
    }

    else
    {
      v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v10 & 1) == 0)
      {
        if (qword_100973AC0 != -1)
        {
          swift_once();
        }

        v11 = type metadata accessor for Logger();
        sub_10000C4AC(v11, qword_100984130);
        v2 = v2;
        v12 = Logger.logObject.getter();
        v13 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v12, v13))
        {
          v14 = swift_slowAlloc();
          v15 = swift_slowAlloc();
          v41 = v15;
          *v14 = 136315138;
          *(v0 + 280) = v2;
          v16 = v2;
          v17 = String.init<A>(describing:)();
          v19 = sub_10000C4E4(v17, v18, &v41);

          *(v14 + 4) = v19;
          _os_log_impl(&_mh_execute_header, v12, v13, "Unexpected error: %s", v14, 0xCu);
          sub_10000C60C(v15);
        }

        v20 = 10;
        v21 = 0;
        v22 = 0xE000000000000000;
        goto LABEL_21;
      }
    }

    v33 = SFAuthenticationErrorCodeToString();
    v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v36 = v35;

    v20 = v3;
    v21 = v34;
    v22 = v36;
LABEL_21:
    v37 = sub_100010F88(v20, v21, v22);
    sub_10059EEE0(v37, v38, &unk_1008E8510, sub_10059FFC4, &unk_1008E8528);

    goto LABEL_22;
  }

  if (qword_100973AC0 != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  sub_10000C4AC(v23, qword_100984130);
  swift_errorRetain();
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v41 = v27;
    *v26 = 136315138;
    *(v0 + 272) = v1;
    swift_errorRetain();
    v28 = String.init<A>(describing:)();
    v30 = sub_10000C4E4(v28, v29, &v41);

    *(v26 + 4) = v30;
    _os_log_impl(&_mh_execute_header, v24, v25, "Unexpected error: %s", v26, 0xCu);
    sub_10000C60C(v27);
  }

  v31 = sub_100010F88(10, 0, 0xE000000000000000);
  sub_10059EEE0(v31, v32, &unk_1008E8510, sub_10059FFC4, &unk_1008E8528);

LABEL_22:

  v39 = *(v0 + 8);

  return v39();
}

uint64_t sub_10059D1F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_100973AC0 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_10000C4AC(v8, qword_100984130);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "Sending authentication pairing response", v11, 2u);
  }

  v12 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_delegate;
  swift_beginAccess();
  sub_10000FF90(a1 + v12, &v27, &qword_10097A9C8, &unk_1007FDD40);
  if (v28)
  {
    sub_1000121F8(&v27, v29);
    sub_10002CDC0(v29, v29[3]);
    if (*(a1 + OBJC_IVAR____TtC16DaemoniOSLibrary33SDAuthenticationPairingKeySession_requestArmingUI) == 1)
    {
      v13 = *(a1 + OBJC_IVAR____TtC16DaemoniOSLibrary33SDAuthenticationPairingKeySession_armingUITransportType);
    }

    else
    {
      v13 = sub_1004FE08C(*(a1 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_type));
    }

    if (qword_100973C48 != -1)
    {
      swift_once();
    }

    sub_10000C4AC(v8, qword_1009895D8);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *&v27 = v20;
      *v19 = 136315138;
      v26 = a3;
      v21 = a4;
      if (v13 <= 2u)
      {
        v22 = 0xEB0000000074656ELL;
        if (v13)
        {
          if (v13 == 1)
          {
            v22 = 0xE800000000000000;
            v23 = 0x6C61636F4C736469;
          }

          else
          {
            v23 = 0x7265746E49736469;
          }
        }

        else
        {
          v22 = 0xEB00000000746E65;
          v23 = 0x674179627261656ELL;
        }
      }

      else if (v13 > 4u)
      {
        if (v13 == 5)
        {
          v22 = 0x80000001007888E0;
          v23 = 0xD000000000000010;
        }

        else
        {
          v22 = 0xED000068746F6F74;
          v23 = 0x65756C4265726F63;
        }
      }

      else if (v13 == 3)
      {
        v22 = 0xE900000000000054;
        v23 = 0x4274726F70706172;
      }

      else
      {
        v22 = 0xEB000000004C4457;
        v23 = 0x4174726F70706172;
      }

      v24 = sub_10000C4E4(v23, v22, &v27);

      *(v19 + 4) = v24;
      _os_log_impl(&_mh_execute_header, v17, v18, "Using transport type %s", v19, 0xCu);
      sub_10000C60C(v20);

      a4 = v21;
      a3 = v26;
    }

    else
    {
    }

    sub_1005CCC7C(a2, a3, a4, 4u, v13);
    sub_10000C60C(v29);
  }

  else
  {
    sub_100005508(&v27, &qword_10097A9C8, &unk_1007FDD40);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "Warning: No delegate to send response to", v16, 2u);
    }
  }

  return sub_1004FD4B0(0, 1);
}

id sub_10059D67C(void *a1)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (v124 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *&v1[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_queue];
  *v6 = v7;
  (*(v4 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v3);
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  (*(v4 + 8))(v6, v3);
  if (v7)
  {
    if (qword_100973AC0 == -1)
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
  v9 = type metadata accessor for Logger();
  v10 = sub_10000C4AC(v9, qword_100984130);
  v11 = a1;
  v12 = v1;
  v134 = v10;
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v141[0] = v17;
    *v15 = 138412546;
    *(v15 + 4) = v11;
    *v16 = v11;
    *(v15 + 12) = 2080;
    v18 = v11;
    v19 = UUID.uuidString.getter();
    v21 = sub_10000C4E4(v19, v20, v141);

    *(v15 + 14) = v21;
    _os_log_impl(&_mh_execute_header, v13, v14, "Received authentication pairing create secret: %@ for sessionID %s", v15, 0x16u);
    sub_100005508(v16, &qword_100975400, &qword_1007F65D0);

    sub_10000C60C(v17);
  }

  sub_1004FDD9C();
  v22 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_peerDevice;
  swift_beginAccess();
  sub_10000FF90(&v12[v22], &v137, &qword_100982080, &unk_1007FDD30);
  sub_10000FF90(&v137, &v135, &qword_100982080, &unk_1007FDD30);
  if (v136)
  {
    sub_100005508(&v137, &qword_100982080, &unk_1007FDD30);
    sub_1000121F8(&v135, v141);
    v23 = [v11 token];
    if (v23)
    {
      v24 = v23;
      v25 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v27 = v26;

      v41 = sub_1006794BC(v25, v27);

      v42 = [objc_allocWithZone(SDAuthenticationPairingCreateRecord) init];
      if (v42)
      {
        v43 = v42;
        v129 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_sessionID;
        UUID.uuidString.getter();
        v44 = String._bridgeToObjectiveC()();

        [v43 setSessionID:v44];

        [v43 setToken:v41];
        v45 = OBJC_IVAR____TtC16DaemoniOSLibrary33SDAuthenticationPairingKeySession_requestArmingUI;
        [v43 setRequestArmingUI:v12[OBJC_IVAR____TtC16DaemoniOSLibrary33SDAuthenticationPairingKeySession_requestArmingUI]];
        v46 = [v43 data];
        if (v46)
        {
          v132 = v43;
          v133 = v41;
          v47 = v46;
          v130 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v131 = v48;

          v49 = [objc_opt_self() standardUserDefaults];
          v50 = String._bridgeToObjectiveC()();
          v51 = [v49 BOOLForKey:v50];

          v52 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_delegate;
          swift_beginAccess();
          sub_10000FF90(&v12[v52], &v135, &qword_10097A9C8, &unk_1007FDD40);
          if (v136)
          {
            v128 = v52;
            sub_1000121F8(&v135, &v137);
            v53 = v133;
            if (v51)
            {
              v54 = Logger.logObject.getter();
              v55 = static os_log_type_t.error.getter();
              v56 = os_log_type_enabled(v54, v55);
              v57 = v132;
              if (v56)
              {
                v58 = swift_slowAlloc();
                *v58 = 0;
                _os_log_impl(&_mh_execute_header, v54, v55, "### TESTING ONLY: Skip sending authentication pairing create record due to default skipSendAuthenticationPairingCreateRecord", v58, 2u);
                v53 = v133;
              }

              v59 = v57;
            }

            else
            {
              v74 = sub_10002CDC0(&v137, v139);
              v59 = v132;
              if (v12[v45] == 1)
              {
                LODWORD(v127) = v12[OBJC_IVAR____TtC16DaemoniOSLibrary33SDAuthenticationPairingKeySession_armingUITransportType];
              }

              else
              {
                LODWORD(v127) = sub_1004FE08C(*&v12[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_type]);
              }

              v126 = *v74;
              if (qword_100973C48 != -1)
              {
                swift_once();
              }

              sub_10000C4AC(v9, qword_1009895D8);
              v75 = Logger.logObject.getter();
              v76 = static os_log_type_t.default.getter();
              if (os_log_type_enabled(v75, v76))
              {
                v77 = swift_slowAlloc();
                v78 = swift_slowAlloc();
                *&v135 = v78;
                *v77 = 136315138;
                if (v127 <= 2u)
                {
                  v80 = 0xEB0000000074656ELL;
                  v79 = v78;
                  if (v127)
                  {
                    if (v127 == 1)
                    {
                      v80 = 0xE800000000000000;
                      v81 = 0x6C61636F4C736469;
                    }

                    else
                    {
                      v81 = 0x7265746E49736469;
                    }
                  }

                  else
                  {
                    v80 = 0xEB00000000746E65;
                    v81 = 0x674179627261656ELL;
                  }
                }

                else
                {
                  v79 = v78;
                  if (v127 > 4u)
                  {
                    if (v127 == 5)
                    {
                      v80 = 0x80000001007888E0;
                      v81 = 0xD000000000000010;
                    }

                    else
                    {
                      v80 = 0xED000068746F6F74;
                      v81 = 0x65756C4265726F63;
                    }
                  }

                  else if (v127 == 3)
                  {
                    v80 = 0xE900000000000054;
                    v81 = 0x4274726F70706172;
                  }

                  else
                  {
                    v80 = 0xEB000000004C4457;
                    v81 = 0x4174726F70706172;
                  }
                }

                v82 = sub_10000C4E4(v81, v80, &v135);

                *(v77 + 4) = v82;
                _os_log_impl(&_mh_execute_header, v75, v76, "Using transport type %s", v77, 0xCu);
                sub_10000C60C(v79);

                v53 = v133;
                v59 = v132;
              }

              else
              {
              }

              sub_1005CCC7C(v130, v131, v141, 5u, v127);
            }

            v83 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_type;
            if (*&v12[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_type] == 5)
            {
              sub_1004FD4B0(0, 1);
            }

            sub_10000C60C(&v137);
            v84 = *&v12[v83];
            if (v84 != 3)
            {
LABEL_71:
              if (v84 == 5)
              {
                sub_10000C60C(v141);

                sub_100026AC0(v130, v131);
                return sub_100026AC0(v25, v27);
              }

              else
              {
                sub_10000FF90(&v12[v128], &v137, &qword_10097A9C8, &unk_1007FDD40);
                v121 = v131;
                v122 = v130;
                if (v139)
                {
                  sub_1002A9938(&v137, &v135);
                  sub_100005508(&v137, &qword_10097A9C8, &unk_1007FDD40);
                  v123 = sub_10002CDC0(&v135, v136);
                  sub_1004E2F7C(v12, *v123);
                  sub_100026AC0(v25, v27);
                  sub_100026AC0(v122, v121);

                  sub_10000C60C(v141);
                  return sub_10000C60C(&v135);
                }

                else
                {
                  sub_10000C60C(v141);

                  sub_100026AC0(v122, v121);
                  sub_100026AC0(v25, v27);
                  return sub_100005508(&v137, &qword_10097A9C8, &unk_1007FDD40);
                }
              }
            }

            v126 = v83;
            v85 = v12;
            v86 = Logger.logObject.getter();
            LODWORD(v87) = static os_log_type_t.info.getter();

            v127 = v86;
            if (!os_log_type_enabled(v86, v87))
            {

LABEL_61:
              result = [objc_opt_self() sharedManager];
              if (!result)
              {
                __break(1u);
                return result;
              }

              v106 = result;
              UUID.uuidString.getter();
              v107 = String._bridgeToObjectiveC()();

              sub_10000FF90(&v12[v22], &v137, &qword_100982080, &unk_1007FDD30);
              v108 = v139;
              if (v139)
              {
                v109 = v107;
                v110 = v140;
                v111 = sub_10002CDC0(&v137, v139);
                v129 = v124;
                v112 = *(v108 - 8);
                __chkstk_darwin(v111);
                v114 = v124 - ((v113 + 15) & 0xFFFFFFFFFFFFFFF0);
                (*(v112 + 16))(v114);
                sub_100005508(&v137, &qword_100982080, &unk_1007FDD30);
                (*(v110 + 8))(v108, v110);
                v116 = v115;
                (*(v112 + 8))(v114, v108);
                if (v116)
                {
                  v117 = String._bridgeToObjectiveC()();
                }

                else
                {
                  v117 = 0;
                }

                v53 = v133;
                v107 = v109;
                v59 = v132;
              }

              else
              {
                sub_100005508(&v137, &qword_100982080, &unk_1007FDD30);
                v117 = 0;
              }

              [v106 setPairingID:v107 forWatchID:v117];

              v118 = Logger.logObject.getter();
              v119 = static os_log_type_t.default.getter();
              if (os_log_type_enabled(v118, v119))
              {
                v120 = swift_slowAlloc();
                *v120 = 0;
                _os_log_impl(&_mh_execute_header, v118, v119, "Pairing enabled", v120, 2u);
                v53 = v133;
              }

              v84 = *&v12[v126];
              goto LABEL_71;
            }

            v88 = swift_slowAlloc();
            v89 = swift_slowAlloc();
            *&v135 = v89;
            *v88 = 136315394;
            v90 = UUID.uuidString.getter();
            v92 = sub_10000C4E4(v90, v91, &v135);

            *(v88 + 4) = v92;
            *(v88 + 12) = 2080;
            sub_10000FF90(&v12[v22], &v137, &qword_100982080, &unk_1007FDD30);
            v93 = v139;
            if (v139)
            {
              v94 = v140;
              v95 = sub_10002CDC0(&v137, v139);
              v124[1] = v124;
              v96 = *(v93 - 8);
              v125 = v87;
              v87 = v96;
              __chkstk_darwin(v95);
              v124[2] = v89;
              v98 = v88;
              v99 = v124 - ((v97 + 15) & 0xFFFFFFFFFFFFFFF0);
              (*(v87 + 16))(v99);
              sub_100005508(&v137, &qword_100982080, &unk_1007FDD30);
              v100 = (*(v94 + 8))(v93, v94);
              v102 = v101;
              v103 = v99;
              v88 = v98;
              (*(v87 + 8))(v103, v93);
              LOBYTE(v87) = v125;
              if (v102)
              {
LABEL_60:
                v104 = sub_10000C4E4(v100, v102, &v135);

                *(v88 + 14) = v104;
                v105 = v127;
                _os_log_impl(&_mh_execute_header, v127, v87, "Setting pairing ID: %s for device: %s", v88, 0x16u);
                swift_arrayDestroy();

                v53 = v133;
                v59 = v132;
                goto LABEL_61;
              }
            }

            else
            {
              sub_100005508(&v137, &qword_100982080, &unk_1007FDD30);
            }

            v102 = 0x8000000100789F30;
            v100 = 0xD000000000000015;
            goto LABEL_60;
          }

          sub_100005508(&v135, &qword_10097A9C8, &unk_1007FDD40);
          v137 = 0;
          v138 = 0xE000000000000000;
          _StringGuts.grow(_:)(61);
          v68._countAndFlagsBits = 0xD00000000000003BLL;
          v68._object = 0x8000000100796890;
          String.append(_:)(v68);
          v69._countAndFlagsBits = 0x5F28656C646E6168;
          v69._object = 0xEA0000000000293ALL;
          String.append(_:)(v69);
          v70 = sub_100010F88(25, v137, v138);
          v72 = v71;
          sub_1000115C8();
          v31 = swift_allocError();
          *v73 = v70;
          *(v73 + 8) = v72;
          swift_willThrow();
          sub_100026AC0(v25, v27);
          sub_100026AC0(v130, v131);
        }

        else
        {
          v64 = sub_100010F88(10, 0xD000000000000020, 0x800000010078DDB0);
          v66 = v65;
          sub_1000115C8();
          v31 = swift_allocError();
          *v67 = v64;
          *(v67 + 8) = v66;
          swift_willThrow();
          sub_100026AC0(v25, v27);
        }
      }

      else
      {
        v60 = sub_100010F88(10, 0xD00000000000003ELL, 0x8000000100796850);
        v62 = v61;
        sub_1000115C8();
        v31 = swift_allocError();
        *v63 = v60;
        *(v63 + 8) = v62;
        swift_willThrow();
        sub_100026AC0(v25, v27);
      }
    }

    else
    {
      v33 = sub_100010F88(10, 0x20676E697373694DLL, 0xED00006E656B6F74);
      v35 = v34;
      sub_1000115C8();
      v31 = swift_allocError();
      *v36 = v33;
      *(v36 + 8) = v35;
      swift_willThrow();
    }

    sub_10000C60C(v141);
  }

  else
  {
    sub_100005508(&v135, &qword_100982080, &unk_1007FDD30);
    v28 = sub_100010F88(10, 0xD00000000000001BLL, 0x8000000100796830);
    v30 = v29;
    sub_1000115C8();
    v31 = swift_allocError();
    *v32 = v28;
    *(v32 + 8) = v30;
    swift_willThrow();
    sub_100005508(&v137, &qword_100982080, &unk_1007FDD30);
  }

  v137 = v31;
  swift_errorRetain();
  sub_10028088C(&unk_10097A930, &unk_1007F9050);
  if (swift_dynamicCast())
  {
    v37 = v141[0];
    v38 = v141[1];
  }

  else
  {
    v141[0] = v31;
    swift_errorRetain();
    type metadata accessor for SFAuthenticationErrorCode(0);
    if (swift_dynamicCast())
    {
      v39 = v137;
    }

    else
    {
      v39 = 25;
    }

    v37 = sub_100010F88(v39, 0, 0xE000000000000000);
  }

  sub_10059EEE0(v37, v38, &unk_1008E8510, sub_10059FFC4, &unk_1008E8528);
}

void sub_10059E9D0(void *a1)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *&v1[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_queue];
  *v6 = v7;
  (*(v4 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v3);
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  (*(v4 + 8))(v6, v3);
  if (v7)
  {
    if (qword_100973AC0 == -1)
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
  v9 = type metadata accessor for Logger();
  sub_10000C4AC(v9, qword_100984130);
  v10 = a1;
  v11 = v1;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v38 = v16;
    *v14 = 138412546;
    *(v14 + 4) = v10;
    *v15 = v10;
    *(v14 + 12) = 2080;
    v17 = v10;
    v18 = UUID.uuidString.getter();
    v20 = sub_10000C4E4(v18, v19, &v38);

    *(v14 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v12, v13, "Received authentication pairing response: %@ for sessionID %s", v14, 0x16u);
    sub_100005508(v15, &qword_100975400, &qword_1007F65D0);

    sub_10000C60C(v16);
  }

  if ([v10 hasErrorCode])
  {
    v21 = [v10 errorCode];
    v38 = 0;
    v39 = 0xE000000000000000;
    _StringGuts.grow(_:)(32);

    v38 = 0xD00000000000001ELL;
    v39 = 0x800000010078DE50;
    v22 = SFAuthenticationErrorCodeToString();
    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;

    v26._countAndFlagsBits = v23;
    v26._object = v25;
    String.append(_:)(v26);

    LODWORD(v22) = sub_100010F88(v21, v38, v39);
    v28 = v27;
    sub_1000115C8();
    v29 = swift_allocError();
    *v30 = v22;
    *(v30 + 8) = v28;
    swift_willThrow();
    *v37 = v29;
    swift_errorRetain();
    swift_errorRetain();
    sub_10028088C(&unk_10097A930, &unk_1007F9050);
    if (swift_dynamicCast())
    {
      v31 = v38;
      v32 = v39;
    }

    else
    {
      v38 = v29;
      swift_errorRetain();
      type metadata accessor for SFAuthenticationErrorCode(0);
      if (swift_dynamicCast())
      {
        v36 = v37[0];
      }

      else
      {
        v36 = 25;
      }

      v31 = sub_100010F88(v36, 0, 0xE000000000000000);
    }

    sub_10059EEE0(v31, v32, &unk_1008E8560, sub_10059FFF4, &unk_1008E8578);
  }

  else
  {
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&_mh_execute_header, v33, v34, "Got message that should include error but didn't include error", v35, 2u);
    }
  }
}

uint64_t sub_10059EEE0(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v20[0] = a5;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for DispatchQoS();
  v13 = *(v21 - 8);
  __chkstk_darwin(v21);
  v15 = v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20[1] = *&v5[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_queue];
  v16 = swift_allocObject();
  *(v16 + 16) = v5;
  *(v16 + 24) = a1;
  *(v16 + 32) = a2;
  aBlock[4] = a4;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100011678;
  aBlock[3] = v20[0];
  v17 = _Block_copy(aBlock);
  v18 = v5;

  static DispatchQoS.unspecified.getter();
  v22 = _swiftEmptyArrayStorage;
  sub_10001432C(&qword_100976140, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
  sub_100013EB8();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v17);
  (*(v10 + 8))(v12, v9);
  (*(v13 + 8))(v15, v21);
}

void sub_10059F194(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = [objc_allocWithZone(SDAuthenticationPairingResponse) init];
  v7 = v6;
  p_opt_class_meths = &OBJC_PROTOCOL___BLSBacklightStateObserving.opt_class_meths;
  if (v6)
  {
    [v6 setVersion:1];
    v9 = v7;
    UUID.uuidString.getter();
    v10 = String._bridgeToObjectiveC()();

    [v9 setSessionID:v10];

    [v9 setErrorCode:a1];
    v11 = [v9 data];
    if (v11)
    {
      v12 = v11;
      v13 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;

      v16 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_peerDevice;
      swift_beginAccess();
      sub_10000FF90(&v3[v16], &v51, &qword_100982080, &unk_1007FDD30);
      if (v52)
      {
        sub_1000121F8(&v51, v53);
        v17 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_delegate;
        swift_beginAccess();
        sub_10000FF90(&v3[v17], &v51, &qword_10097A9C8, &unk_1007FDD40);
        if (v52)
        {
          sub_1002A9938(&v51, v50);
          sub_100005508(&v51, &qword_10097A9C8, &unk_1007FDD40);
          sub_10002CDC0(v50, v50[3]);
          if (v3[OBJC_IVAR____TtC16DaemoniOSLibrary33SDAuthenticationPairingKeySession_requestArmingUI] == 1)
          {
            v18 = v3[OBJC_IVAR____TtC16DaemoniOSLibrary33SDAuthenticationPairingKeySession_armingUITransportType];
          }

          else
          {
            v18 = sub_1004FE08C(*&v3[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_type]);
          }

          if (qword_100973C48 != -1)
          {
            swift_once();
          }

          v37 = type metadata accessor for Logger();
          sub_10000C4AC(v37, qword_1009895D8);
          v38 = Logger.logObject.getter();
          v39 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v38, v39))
          {
            v40 = swift_slowAlloc();
            v41 = swift_slowAlloc();
            v49 = v41;
            *v40 = 136315138;
            v42 = v18;
            v48 = v18;
            v46 = v41;
            buf = v40;
            if (v18 <= 2u)
            {
              v43 = 0xEB0000000074656ELL;
              if (v42)
              {
                if (v42 == 1)
                {
                  v43 = 0xE800000000000000;
                  v44 = 0x6C61636F4C736469;
                }

                else
                {
                  v44 = 0x7265746E49736469;
                }
              }

              else
              {
                v43 = 0xEB00000000746E65;
                v44 = 0x674179627261656ELL;
              }
            }

            else if (v18 > 4u)
            {
              if (v18 == 5)
              {
                v43 = 0x80000001007888E0;
                v44 = 0xD000000000000010;
              }

              else
              {
                v43 = 0xED000068746F6F74;
                v44 = 0x65756C4265726F63;
              }
            }

            else if (v18 == 3)
            {
              v43 = 0xE900000000000054;
              v44 = 0x4274726F70706172;
            }

            else
            {
              v43 = 0xEB000000004C4457;
              v44 = 0x4174726F70706172;
            }

            v45 = sub_10000C4E4(v44, v43, &v49);

            *(buf + 4) = v45;
            _os_log_impl(&_mh_execute_header, v38, v39, "Using transport type %s", buf, 0xCu);
            sub_10000C60C(v46);

            v18 = v48;
          }

          else
          {
          }

          sub_1005CCC7C(v13, v15, v53, 4u, v18);
          sub_100026AC0(v13, v15);
          sub_10000C60C(v53);
          sub_10000C60C(v50);
          p_opt_class_meths = (&OBJC_PROTOCOL___BLSBacklightStateObserving + 48);
        }

        else
        {
          sub_10000C60C(v53);
          sub_100026AC0(v13, v15);
          sub_100005508(&v51, &qword_10097A9C8, &unk_1007FDD40);
        }

        goto LABEL_13;
      }

      sub_100026AC0(v13, v15);
      sub_100005508(&v51, &qword_100982080, &unk_1007FDD30);
    }
  }

  if (qword_100973AC0 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  sub_10000C4AC(v19, qword_100984130);
  v20 = v7;
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v23 = 138412290;
    *(v23 + 4) = v20;
    *v24 = v7;
    v25 = v20;
    _os_log_impl(&_mh_execute_header, v21, v22, "Could not convert response to data: %@", v23, 0xCu);
    sub_100005508(v24, &qword_100975400, &qword_1007F65D0);
  }

LABEL_13:
  v26 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_delegate;
  swift_beginAccess();
  sub_10000FF90(&v3[v26], v53, &qword_10097A9C8, &unk_1007FDD40);
  if (v53[3])
  {
    sub_1002A9938(v53, &v51);
    sub_100005508(v53, &qword_10097A9C8, &unk_1007FDD40);
    v27 = sub_10002CDC0(&v51, v52);
    v28 = sub_1000116BC(a1, a2);
    sub_100463010(v3, a1, v28, v29, *v27);

    sub_10000C60C(&v51);
  }

  else
  {
    sub_100005508(v53, &qword_10097A9C8, &unk_1007FDD40);
  }

  if (p_opt_class_meths[344] != -1)
  {
    swift_once();
  }

  v30 = type metadata accessor for Logger();
  sub_10000C4AC(v30, qword_100984130);

  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *v33 = 138412290;
    sub_1000115C8();
    swift_allocError();
    *v35 = a1;
    *(v35 + 8) = a2;

    v36 = _swift_stdlib_bridgeErrorToNSError();
    *(v33 + 4) = v36;
    *v34 = v36;
    _os_log_impl(&_mh_execute_header, v31, v32, "Session failed with error: %@", v33, 0xCu);
    sub_100005508(v34, &qword_100975400, &qword_1007F65D0);
  }
}

uint64_t sub_10059F98C()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = (&v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *&v0[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_queue];
  *v4 = v5;
  (*(v2 + 104))(v4, enum case for DispatchPredicate.onQueue(_:), v1);
  v6 = v5;
  LOBYTE(v5) = _dispatchPreconditionTest(_:)();
  (*(v2 + 8))(v4, v1);
  if (v5)
  {
    if (qword_100973AC0 == -1)
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
  v7 = type metadata accessor for Logger();
  sub_10000C4AC(v7, qword_100984130);
  v8 = v0;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v20 = v12;
    *v11 = 136315138;
    type metadata accessor for UUID();
    sub_10001432C(&qword_100978CE0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = sub_10000C4E4(v13, v14, &v20);

    *(v11 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v9, v10, "Response timer fired for %s", v11, 0xCu);
    sub_10000C60C(v12);
  }

  v16 = sub_100010F88(12, 0xD000000000000035, 0x80000001007968D0);
  sub_10059EEE0(v16, v17, &unk_1008E8560, sub_10059FFF4, &unk_1008E8578);

  return sub_1004FDD9C();
}

uint64_t sub_10059FC78(char *a1, uint64_t a2, uint64_t a3)
{
  v6 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_delegate;
  swift_beginAccess();
  sub_10000FF90(&a1[v6], v12, &qword_10097A9C8, &unk_1007FDD40);
  if (!v13)
  {
    return sub_100005508(v12, &qword_10097A9C8, &unk_1007FDD40);
  }

  sub_1002A9938(v12, v11);
  sub_100005508(v12, &qword_10097A9C8, &unk_1007FDD40);
  v7 = sub_10002CDC0(v11, v11[3]);
  v8 = sub_1000116BC(a2, a3);
  sub_100463010(a1, a2, v8, v9, *v7);

  return sub_10000C60C(v11);
}

uint64_t type metadata accessor for SDAuthenticationPairingKeySession(uint64_t a1)
{
  result = qword_100984180;
  if (!qword_100984180)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10059FE74(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for AuthenticationSecurityRequest(0) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = v1[2];
  v10 = v1[3];
  v11 = v1[4];
  v12 = *(v1 + v7);
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_100005C04;

  return sub_100598E04(a1, v9, v10, v11, v1 + v6, v12, v1 + v8);
}

id sub_1005A0004()
{
  sub_1004FDD9C();
  if (qword_100973AC0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v2 = sub_10000C4AC(v1, qword_100984130);
  v3 = v0;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();

  if (!os_log_type_enabled(v4, v5))
  {

    goto LABEL_11;
  }

  v40[1] = v2;
  v6 = swift_slowAlloc();
  v41[0] = swift_slowAlloc();
  *v6 = 136315394;
  v7 = UUID.uuidString.getter();
  v9 = sub_10000C4E4(v7, v8, v41);

  *(v6 + 4) = v9;
  *(v6 + 12) = 2080;
  v10 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_peerDevice;
  swift_beginAccess();
  sub_10000FF90(&v3[v10], v42, &qword_100982080, &unk_1007FDD30);
  v11 = v43;
  if (!v43)
  {
    sub_100005508(v42, &qword_100982080, &unk_1007FDD30);
    goto LABEL_9;
  }

  v12 = v44;
  v13 = sub_10002CDC0(v42, v43);
  v40[0] = v40;
  v14 = *(v11 - 8);
  __chkstk_darwin(v13);
  v16 = v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v16);
  sub_100005508(v42, &qword_100982080, &unk_1007FDD30);
  v17 = (*(v12 + 8))(v11, v12);
  v19 = v18;
  (*(v14 + 8))(v16, v11);
  if (!v19)
  {
LABEL_9:

    v19 = 0x8000000100789F30;
    v20 = 0xD000000000000015;
    goto LABEL_10;
  }

  v20 = v17;
LABEL_10:
  v21 = sub_10000C4E4(v20, v19, v41);

  *(v6 + 14) = v21;
  _os_log_impl(&_mh_execute_header, v4, v5, "Setting pairing ID: %s for device: %s", v6, 0x16u);
  swift_arrayDestroy();

LABEL_11:
  result = [objc_opt_self() sharedManager];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v23 = result;
  UUID.uuidString.getter();
  v24 = String._bridgeToObjectiveC()();

  v25 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_peerDevice;
  swift_beginAccess();
  sub_10000FF90(&v3[v25], v42, &qword_100982080, &unk_1007FDD30);
  v26 = v43;
  if (!v43)
  {
    sub_100005508(v42, &qword_100982080, &unk_1007FDD30);
    goto LABEL_16;
  }

  v27 = v44;
  v28 = sub_10002CDC0(v42, v43);
  v29 = *(v26 - 8);
  __chkstk_darwin(v28);
  v31 = v40 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v29 + 16))(v31);
  sub_100005508(v42, &qword_100982080, &unk_1007FDD30);
  (*(v27 + 8))(v26, v27);
  v33 = v32;
  (*(v29 + 8))(v31, v26);
  if (!v33)
  {
LABEL_16:
    v34 = 0;
    goto LABEL_17;
  }

  v34 = String._bridgeToObjectiveC()();

LABEL_17:
  [v23 setPairingID:v24 forWatchID:{v34, v40[0]}];

  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    *v37 = 0;
    _os_log_impl(&_mh_execute_header, v35, v36, "Pairing enabled", v37, 2u);
  }

  if (*&v3[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_type] != 8)
  {
    if (qword_100973C50 != -1)
    {
      swift_once();
    }

    if (qword_1009A10A8)
    {
      sub_10069579C();
    }
  }

  v38 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_delegate;
  swift_beginAccess();
  sub_10000FF90(&v3[v38], v42, &qword_10097A9C8, &unk_1007FDD40);
  if (!v43)
  {
    return sub_100005508(v42, &qword_10097A9C8, &unk_1007FDD40);
  }

  sub_1002A9938(v42, v41);
  sub_100005508(v42, &qword_10097A9C8, &unk_1007FDD40);
  v39 = sub_10002CDC0(v41, v41[3]);
  sub_1004E2F7C(v3, *v39);
  return sub_10000C60C(v41);
}

uint64_t sub_1005A06B4()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_100984190);
  v1 = sub_10000C4AC(v0, qword_100984190);
  if (qword_100973728 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A09C0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_1005A0840(uint64_t a1, unint64_t a2)
{
  v4 = [objc_allocWithZone(CNChangeHistoryFetchRequest) init];
  v5 = a2;
  v6 = v4;
  if (v5 >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
  }

  [v6 setStartingToken:isa];

  [v6 setShouldUnifyResults:1];
  [v6 setIncludeGroupChanges:0];
  if (qword_100973A30 != -1)
  {
    swift_once();
  }

  sub_10028088C(&unk_10097A940, &unk_100807F40);
  v8 = Array._bridgeToObjectiveC()().super.isa;
  [v6 setAdditionalContactKeyDescriptors:v8];

  v9 = sub_1005A0E98(v6);
  if (v2)
  {
    return v10;
  }

  else
  {
    return v9;
  }
}

uint64_t sub_1005A09A0(uint64_t a1, unint64_t a2)
{
  if (qword_100973A38 != -1)
  {
    swift_once();
  }

  v5 = objc_allocWithZone(CNContactFetchRequest);
  sub_10028088C(&unk_10097A940, &unk_100807F40);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v7 = [v5 initWithKeysToFetch:isa];

  v8 = objc_opt_self();
  sub_10028088C(&qword_1009750C0, &qword_1007F90F0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1007F5670;
  *(v9 + 32) = a1;
  *(v9 + 40) = a2;

  v10 = Array._bridgeToObjectiveC()().super.isa;

  v11 = [v8 predicateForContactsWithIdentifiers:v10];

  [v7 setPredicate:v11];
  v29 = 0;
  v12 = *(v2 + 32);
  v13 = swift_allocObject();
  *(v13 + 16) = &v29;
  v14 = swift_allocObject();
  v14[2] = sub_1005A15F4;
  v14[3] = v13;
  aBlock[4] = sub_1005A1630;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1005A0E3C;
  aBlock[3] = &unk_1008E8620;
  v15 = _Block_copy(aBlock);

  aBlock[0] = 0;
  v16 = [v12 enumerateContactsWithFetchRequest:v7 error:aBlock usingBlock:v15];
  _Block_release(v15);
  v17 = aBlock[0];
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_12:
    swift_once();
    goto LABEL_7;
  }

  if (v16)
  {

    goto LABEL_10;
  }

  _convertNSErrorToError(_:)();

  swift_willThrow();
  if (qword_100973AC8 != -1)
  {
    goto LABEL_12;
  }

LABEL_7:
  v19 = type metadata accessor for Logger();
  sub_10000C4AC(v19, qword_100984190);

  swift_errorRetain();
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v22 = 136315394;
    *(v22 + 4) = sub_10000C4E4(a1, a2, aBlock);
    *(v22 + 12) = 2080;
    swift_getErrorValue();
    v23 = Error.localizedDescription.getter();
    v25 = sub_10000C4E4(v23, v24, aBlock);

    *(v22 + 14) = v25;
    _os_log_impl(&_mh_execute_header, v20, v21, "Failed to find contact with contact identifier %s, error: %s", v22, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

LABEL_10:
  v26 = v29;

  return v26;
}

void sub_1005A0E3C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

id sub_1005A0E98(uint64_t a1)
{
  v2 = *(v1 + 32);
  v15 = 0;
  v3 = sub_1001EA974(a1, v2, &v15);
  v4 = v3;
  v5 = v15;
  if (v15)
  {
    v15;
  }

  else
  {
    if (v3)
    {
      v6 = [(SDContactFetchResult *)v3 events];
      sub_1005A1194();
      v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v8 = [(SDContactFetchResult *)v4 currentHistoryToken];
      static Data._unconditionallyBridgeFromObjectiveC(_:)();

      v5 = sub_1005A11E0(v7);

      return v5;
    }

    if (qword_100973AC8 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_10000C4AC(v10, qword_100984190);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "Fetch result should not be nil since no error was reported", v13, 2u);
    }

    sub_1005A1140();
    swift_allocError();
    *v14 = 104;
  }

  swift_willThrow();

  return v5;
}

uint64_t sub_1005A10D4()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = sub_1001F26EC(v0);

  if (!v1)
  {
    return 0;
  }

  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

unint64_t sub_1005A1140()
{
  result = qword_1009845A0;
  if (!qword_1009845A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009845A0);
  }

  return result;
}

unint64_t sub_1005A1194()
{
  result = qword_1009845A8;
  if (!qword_1009845A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1009845A8);
  }

  return result;
}

unint64_t sub_1005A11E0(unint64_t result)
{
  v1 = result;
  v29 = _swiftEmptyArrayStorage;
  if (result >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    v2 = result;
    if (result)
    {
      goto LABEL_3;
    }

    return _swiftEmptyArrayStorage;
  }

  v2 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

LABEL_3:
  if (v2 >= 1)
  {
    v3 = 0;
    v4 = _swiftEmptyArrayStorage;
    v5 = &NSURLAuthenticationMethodServerTrust_ptr;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v10 = *(v1 + 8 * v3 + 32);
      }

      v11 = v10;
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        type metadata accessor for SDContactChangeHistoryDropEverythingEvent();
        swift_allocObject();
      }

      else
      {
        objc_opt_self();
        v12 = swift_dynamicCastObjCClass();
        if (v12)
        {
          v13 = [v12 contact];
          type metadata accessor for SDContactChangeHistoryAddEvent();
        }

        else
        {
          objc_opt_self();
          v14 = swift_dynamicCastObjCClass();
          if (v14)
          {
            v15 = v5;
            v16 = [v14 contactIdentifier];
            v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v19 = v18;

            type metadata accessor for SDContactChangeHistoryDeleteEvent();
            v20 = swift_allocObject();
            *(v20 + 16) = v17;
            *(v20 + 24) = v19;
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

            v4 = v29;
            v5 = v15;
            goto LABEL_7;
          }

          objc_opt_self();
          v21 = swift_dynamicCastObjCClass();
          if (!v21)
          {
            if (qword_100973AC8 != -1)
            {
              swift_once();
            }

            v22 = type metadata accessor for Logger();
            sub_10000C4AC(v22, qword_100984190);
            v23 = v11;
            v24 = Logger.logObject.getter();
            v25 = static os_log_type_t.debug.getter();

            if (os_log_type_enabled(v24, v25))
            {
              v6 = swift_slowAlloc();
              v27 = swift_slowAlloc();
              v28 = v27;
              *v6 = 136315138;
              swift_getObjectType();
              v7 = _typeName(_:qualified:)();
              v26 = v23;
              v9 = sub_10000C4E4(v7, v8, &v28);

              *(v6 + 4) = v9;
              _os_log_impl(&_mh_execute_header, v24, v25, "Ignore event %s", v6, 0xCu);
              sub_10000C60C(v27);
            }

            else
            {
            }

            v5 = &NSURLAuthenticationMethodServerTrust_ptr;
            goto LABEL_7;
          }

          v13 = [v21 contact];
          type metadata accessor for SDContactChangeHistoryUpdateEvent();
        }

        *(swift_allocObject() + 16) = v13;
      }

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v4 = v29;
LABEL_7:
      if (v2 == ++v3)
      {
        return v4;
      }
    }
  }

  __break(1u);
  return result;
}

void sub_1005A15F4(void *a1, _BYTE *a2)
{
  v4 = *(v2 + 16);
  v5 = *v4;
  *v4 = a1;
  v6 = a1;

  *a2 = 1;
}

__n128 sub_1005A165C(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_1005A1688(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
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

uint64_t sub_1005A16D0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t _s10AskRequestVMa(uint64_t a1)
{
  result = qword_100984620;
  if (!qword_100984620)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1005A17AC(uint64_t a1)
{
  sub_1005A1960(319, &qword_10097F178, &type metadata accessor for SFAirDrop.TransferIdentifier);
  if (v1 <= 0x3F)
  {
    sub_1005A1960(319, &qword_100984630, &type metadata accessor for SFAirDrop.TransferType);
    if (v2 <= 0x3F)
    {
      sub_1002F2B90(319, &unk_100978AB0, &type metadata for Data);
      if (v3 <= 0x3F)
      {
        sub_1002F2B90(319, qword_1009771F0, &type metadata for String);
        if (v4 <= 0x3F)
        {
          sub_10030A92C(319, &qword_100984638, &unk_100976C20, &unk_1007F9D80);
          if (v5 <= 0x3F)
          {
            sub_10030A92C(319, &qword_100984640, &unk_100984648, &qword_10080BC00);
            if (v6 <= 0x3F)
            {
              sub_1002F2B90(319, &qword_100975790, &type metadata for Bool);
              if (v7 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_1005A1960(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

__n128 sub_1005A19B4(uint64_t a1, uint64_t a2)
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

uint64_t sub_1005A19D8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 82))
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

uint64_t sub_1005A1A20(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 82) = 1;
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

    *(result + 82) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *sub_1005A1A88(void (*a1)(void *__return_ptr), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = _swiftEmptyArrayStorage;
  if (v4)
  {
    v27 = _swiftEmptyArrayStorage;
    sub_10028FDE8(0, v4, 0);
    v5 = _swiftEmptyArrayStorage;
    v8 = *(type metadata accessor for URL() - 8);
    v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v10 = *(v8 + 72);
    (a1)(v25, a3 + v9, &v24);
    if (v3)
    {
    }

    else
    {
      for (i = a3 + v10 + v9; ; i = v16)
      {
        v23 = v26;
        v21 = v25[3];
        v22 = v25[4];
        v19 = v25[1];
        v20 = v25[2];
        v18 = v25[0];
        v27 = v5;
        v14 = v5[2];
        v13 = v5[3];
        if (v14 >= v13 >> 1)
        {
          v17 = i;
          sub_10028FDE8((v13 > 1), v14 + 1, 1);
          i = v17;
          v5 = v27;
        }

        v5[2] = v14 + 1;
        v15 = &v5[11 * v14];
        *(v15 + 2) = v18;
        *(v15 + 3) = v19;
        *(v15 + 56) = v23;
        *(v15 + 5) = v21;
        *(v15 + 6) = v22;
        *(v15 + 4) = v20;
        if (!--v4)
        {
          break;
        }

        v16 = i + v10;
        a1(v25);
      }
    }
  }

  return v5;
}

uint64_t sub_1005A1C54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[10] = a8;
  v8[11] = v16;
  v8[8] = a6;
  v8[9] = a7;
  v8[6] = a4;
  v8[7] = a5;
  v8[4] = a2;
  v8[5] = a3;
  v8[3] = a1;
  v9 = type metadata accessor for SFAirDrop.TransferIdentifier();
  v8[12] = v9;
  v8[13] = *(v9 - 8);
  v8[14] = swift_task_alloc();
  v10 = type metadata accessor for SFAirDropSend.ItemMetadata();
  v8[15] = v10;
  v8[16] = *(v10 - 8);
  v8[17] = swift_task_alloc();
  v8[18] = swift_task_alloc();
  sub_10028088C(&qword_10097B548, &qword_1007FE968);
  v8[19] = swift_task_alloc();
  v11 = type metadata accessor for SFAirDrop.TransferType();
  v8[20] = v11;
  v8[21] = *(v11 - 8);
  v8[22] = swift_task_alloc();
  v8[23] = swift_task_alloc();
  v12 = type metadata accessor for URL();
  v8[24] = v12;
  v8[25] = *(v12 - 8);
  v8[26] = swift_task_alloc();
  v13 = type metadata accessor for SFSecurityScopedURL();
  v8[27] = v13;
  v8[28] = *(v13 - 8);
  v8[29] = swift_task_alloc();
  v8[30] = swift_task_alloc();
  v8[31] = swift_task_alloc();

  return _swift_task_switch(sub_1005A1F04, 0, 0);
}

uint64_t sub_1005A1F04()
{
  v219 = v0;
  v2 = v0[8];
  v3 = sub_10046AB74();
  v189 = v4;
  v192 = v3;
  v0[32] = v3;
  v0[33] = v4;
  v215 = v0;
  v195 = v2;
  if (v2)
  {
    v5 = v0[8];
  }

  else
  {
    v6 = SFAirDropSend.Request.urls.getter();
    if (!v6)
    {
      goto LABEL_26;
    }

    v5 = v6;
  }

  v7 = *(v5 + 16);

  v211 = v7;
  if (!v7)
  {
    v10 = _swiftEmptyArrayStorage;
LABEL_17:

    v23 = *(v10 + 2);
    if (v23)
    {
      v24 = v0[28];
      v208 = *(v24 + 16);
      v25 = &v10[(*(v24 + 80) + 32) & ~*(v24 + 80)];
      v202 = (v0[25] + 8);
      v205 = *(v24 + 72);
      v198 = (v24 + 8);
      v1 = _swiftEmptyArrayStorage;
      do
      {
        v26 = v0[30];
        v27 = v1;
        v28 = v0[26];
        v29 = v0[27];
        v30 = v0[24];
        v208(v26, v25, v29);
        SFSecurityScopedURL.url.getter();
        v31 = URL.absoluteString.getter();
        v33 = v32;
        (*v202)(v28, v30);
        v34 = v29;
        v1 = v27;
        (*v198)(v26, v34);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v1 = sub_10028E1C8(0, *(v27 + 2) + 1, 1, v27);
        }

        v36 = *(v1 + 2);
        v35 = *(v1 + 3);
        if (v36 >= v35 >> 1)
        {
          v1 = sub_10028E1C8((v35 > 1), v36 + 1, 1, v1);
        }

        *(v1 + 2) = v36 + 1;
        v37 = &v1[16 * v36];
        *(v37 + 4) = v31;
        *(v37 + 5) = v33;
        v25 += v205;
        --v23;
        v0 = v215;
      }

      while (v23);

LABEL_27:
      v0[34] = v1;
      if (qword_100973AD0 == -1)
      {
        goto LABEL_28;
      }

      goto LABEL_85;
    }

LABEL_26:
    v1 = _swiftEmptyArrayStorage;
    goto LABEL_27;
  }

  v8 = 0;
  v9 = v0[28];
  v204 = (v0[25] + 8);
  v201 = (v9 + 32);
  v10 = _swiftEmptyArrayStorage;
  while (v8 < *(v5 + 16))
  {
    v11 = v10;
    v12 = v0[26];
    v13 = v0[24];
    v14 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v1 = v5;
    v15 = v5 + v14;
    v16 = *(v9 + 72);
    (*(v9 + 16))(v0[31], v15 + v16 * v8, v0[27]);
    SFSecurityScopedURL.url.getter();
    v17 = URL.isFileURL.getter();
    (*v204)(v12, v13);
    if (v17)
    {
      (*(v9 + 8))(v0[31], v0[27]);
      v10 = v11;
    }

    else
    {
      v18 = *v201;
      (*v201)(v0[29], v0[31], v0[27]);
      v10 = v11;
      v218[0] = v11;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_10028FE08(0, *(v11 + 16) + 1, 1);
        v10 = v218[0];
      }

      v20 = *(v10 + 2);
      v19 = *(v10 + 3);
      if (v20 >= v19 >> 1)
      {
        sub_10028FE08((v19 > 1), v20 + 1, 1);
        v10 = v218[0];
      }

      v0 = v215;
      v21 = v215[29];
      v22 = v215[27];
      *(v10 + 2) = v20 + 1;
      v18(&v10[v14 + v20 * v16], v21, v22);
    }

    ++v8;
    v5 = v1;
    if (v211 == v8)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_85:
  swift_once();
LABEL_28:
  v38 = type metadata accessor for Logger();
  v0[35] = sub_10000C4AC(v38, qword_1009845B0);

  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v218[0] = v42;
    *v41 = 134218499;
    *(v41 + 4) = *(v1 + 2);

    *(v41 + 12) = 2160;
    *(v41 + 14) = 1752392040;
    *(v41 + 22) = 2081;
    v43 = Array.description.getter();
    v45 = sub_10000C4E4(v43, v44, v218);
    v0 = v215;

    *(v41 + 24) = v45;
    _os_log_impl(&_mh_execute_header, v39, v40, "Adding URL items (count=%ld) to request: %{private,mask.hash}s", v41, 0x20u);
    sub_10000C60C(v42);
  }

  else
  {
  }

  v46 = v0[9];
  if (v46)
  {
    goto LABEL_34;
  }

  if (v195)
  {
    v46 = v0[8];
LABEL_34:

LABEL_35:
    v0[36] = v46;
    v0[37] = v46;
    v47 = v0;
    v48 = v0[23];
    v49 = v0[21];
    v50 = v47[20];

    SFAirDropSend.Request.type.getter();
    v51 = SFAirDrop.TransferType.isOnlyExchange.getter();
    (*(v49 + 8))(v48, v50);
    if (v51)
    {

      v52 = Logger.logObject.getter();
      v53 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        *v54 = 0;
        _os_log_impl(&_mh_execute_header, v52, v53, "Adding empty file info to request for exchange only send request", v54, 2u);
      }

      v212 = _swiftEmptyArrayStorage;
      goto LABEL_39;
    }

    if (*(v46 + 16))
    {
      v66 = v215[27];
      v67 = v215[28];
      v68 = v215[19];
      v69 = v215[11];
      v213 = *(v215 + 9);
      (*(v67 + 16))(v68, v46 + ((*(v67 + 80) + 32) & ~*(v67 + 80)), v66);
      (*(v67 + 56))(v68, 0, 1, v66);
      sub_100005508(v68, &qword_10097B548, &qword_1007FE968);
      v70 = swift_task_alloc();
      v215[38] = v70;
      *(v70 + 16) = v213;
      *(v70 + 32) = v69;
      v71 = swift_task_alloc();
      v215[39] = v71;
      v72 = sub_10028088C(&unk_100984648, &qword_10080BC00);
      *v71 = v215;
      v71[1] = sub_1005A3244;
      v73 = &unk_10080BDE0;
      v74 = v215 + 2;
      v75 = v46;
      v76 = v70;

      return static SFSecurityScopedURL.withAccess<A>(to:body:)(v74, v75, v73, v76, v72);
    }

    v84 = v215[28];
    v214 = v215[27];
    v85 = v215[19];
    v87 = v215[10];
    v86 = v215[11];
    v88 = v215[9];
    swift_bridgeObjectRelease_n();

    sub_1003C426C(v88, v87, v86);

    (*(v84 + 56))(v85, 1, 1, v214);
    sub_100005508(v85, &qword_10097B548, &qword_1007FE968);
    v89 = Logger.logObject.getter();
    v90 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v89, v90))
    {
      v91 = swift_slowAlloc();
      *v91 = 0;
      _os_log_impl(&_mh_execute_header, v89, v90, "Send request claims to provide URLs but provides none", v91, 2u);
    }

    v0 = v215;
    goto LABEL_54;
  }

  v98 = SFAirDropSend.Request.urls.getter();
  if (v98)
  {
    v46 = v98;
    goto LABEL_35;
  }

  v129 = SFAirDropSend.Request.urlsMetadata.getter();
  if (!v129)
  {

    v89 = Logger.logObject.getter();
    v162 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v89, v162))
    {
      goto LABEL_54;
    }

    v163 = swift_slowAlloc();
    *v163 = 0;
    v164 = "Send request does not provide either file URLs or file metadata";
LABEL_81:
    _os_log_impl(&_mh_execute_header, v89, v162, v164, v163, 2u);
    v0 = v215;

    goto LABEL_54;
  }

  v130 = *(v129 + 16);
  if (v130)
  {
    v131 = v0[16];
    v132 = v129;
    sub_10028FDE8(0, v130, 0);
    v212 = _swiftEmptyArrayStorage;
    v133 = *(v131 + 16);
    v131 += 16;
    v187 = v133;
    v134 = v132 + ((*(v131 + 64) + 32) & ~*(v131 + 64));
    v184 = *(v131 + 56);
    v185 = (v131 - 8);
    for (i = v130 - 1; ; --i)
    {
      v135 = v0[17];
      v136 = v0[18];
      v137 = v0[15];
      v191 = v134;
      v187(v136);
      (v187)(v135, v136, v137);
      v138 = SFAirDropSend.ItemMetadata.fileName.getter();
      v203 = v139;
      v207 = v138;
      v140 = SFAirDropSend.ItemMetadata.fileType.getter();
      v197 = v141;
      v200 = v140;
      v142 = SFAirDropSend.ItemMetadata.fileSubType.getter();
      v194 = v143;
      v144 = SFAirDropSend.ItemMetadata.fileSize.getter();
      v145 = SFAirDropSend.ItemMetadata.fileBOMPath.getter();
      v147 = v146;
      v148 = SFAirDropSend.ItemMetadata.fileIsDirectory.getter();
      v149 = *v185;
      (*v185)(v135, v137);
      v149(v136, v137);
      v150 = v212;
      v152 = v212[2];
      v151 = v212[3];
      if (v152 >= v151 >> 1)
      {
        sub_10028FDE8((v151 > 1), v152 + 1, 1);
        v150 = v212;
      }

      v150[2] = v152 + 1;
      v153 = &v150[11 * v152];
      v153[4] = v207;
      v153[5] = v203;
      v153[6] = v200;
      v153[7] = v197;
      v153[8] = v142;
      v153[9] = v194;
      v153[10] = v144;
      *(v153 + 88) = 0;
      *(v153 + 89) = *v217;
      *(v153 + 23) = *&v217[3];
      v153[12] = v145;
      v153[13] = v147;
      *(v153 + 112) = v148 & 1;
      *(v153 + 113) = 0;
      v212 = v150;
      if (!i)
      {
        break;
      }

      v134 = v191 + v184;
      v0 = v215;
    }

    v154 = v150;
    v155 = Logger.logObject.getter();
    v156 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v155, v156))
    {
      v157 = swift_slowAlloc();
      v158 = swift_slowAlloc();
      v218[0] = v158;
      *v157 = 134218499;
      *(v157 + 4) = v154[2];

      *(v157 + 12) = 2160;
      *(v157 + 14) = 1752392040;
      *(v157 + 22) = 2081;
      v159 = Array.description.getter();
      v161 = sub_10000C4E4(v159, v160, v218);

      *(v157 + 24) = v161;
      _os_log_impl(&_mh_execute_header, v155, v156, "Adding file info (count=%ld) to request: %{private,mask.hash}s", v157, 0x20u);
      sub_10000C60C(v158);
    }

    else
    {
    }

LABEL_39:
    v55 = v215[23];
    v56 = v215[20];
    v57 = v215[21];
    v58 = SFAirDropSend.Request.itemPreviewData.getter();
    v60 = v59;
    SFAirDropSend.Request.type.getter();
    v61 = SFAirDrop.TransferType.isOnlyExchange.getter();
    v199 = *(v57 + 8);
    v199(v55, v56);
    if ((v61 & 1) != 0 || (v62 = [v215[7] computerName]) == 0)
    {
      v206 = 0;
      v65 = 0;
    }

    else
    {
      v63 = v62;
      v206 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v65 = v64;
    }

    sub_1002A9924(v58, v60);
    v77 = Logger.logObject.getter();
    v78 = static os_log_type_t.default.getter();
    sub_10028BCC0(v58, v60);
    if (os_log_type_enabled(v77, v78))
    {
      v79 = v65;
      v80 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      v218[0] = v81;
      *v80 = 136315138;
      if (v60 >> 60 == 15)
      {
        v82 = 0x8000000100796C40;
        v83 = 0xD000000000000016;
      }

      else
      {
        v83 = Data.description.getter();
        v82 = v99;
      }

      v100 = sub_10000C4E4(v83, v82, v218);

      *(v80 + 4) = v100;
      _os_log_impl(&_mh_execute_header, v77, v78, "Adding preview data to request %s", v80, 0xCu);
      sub_10000C60C(v81);

      v65 = v79;
    }

    else
    {
    }

    SFAirDropSend.Request.id.getter();
    SFAirDropSend.Request.type.getter();
    v101 = SFAirDropSend.Request.requestSource.getter();
    v193 = v102;
    v196 = v101;
    if (v65)
    {
      v186 = v65;
    }

    else
    {
      v103 = String._bridgeToObjectiveC()();
      v104 = SFLocalizedStringForKey();

      if (!v104)
      {
LABEL_87:
        __break(1u);
        return static SFSecurityScopedURL.withAccess<A>(to:body:)(v74, v75, v73, v76, v72);
      }

      v206 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v186 = v105;
    }

    v106 = v215;
    v188 = v60;
    v190 = v58;
    v107 = v215[7];

    v74 = [v107 modelName];
    v108 = v74;
    if (v74)
    {
      v179 = v215[32];
      v180 = v215[33];
      v183 = v215[34];
      v109 = v215[21];
      v169 = v215[20];
      v170 = v215[22];
      v216 = v215[14];
      v165 = v106[13];
      v110 = v106[11];
      v209 = v106[12];
      v112 = v106[9];
      v111 = v106[10];
      v176 = v106[5];
      v177 = v106[6];
      v113 = v106[3];
      v171 = v106[7];
      v172 = v106[4];

      sub_1003C426C(v112, v111, v110);

      v114 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v167 = v115;
      v168 = v114;

      v116 = SFAirDropSend.Request.customPayload.getter();
      v181 = v117;
      v182 = v116;
      v118 = _s10AskRequestVMa(0);
      v166 = v118[11];
      v175 = v118[12];
      v173 = (v113 + v118[13]);
      v119 = v113 + v118[14];
      *v119 = xmmword_1007F8A80;
      v174 = v113 + v118[15];
      *v174 = xmmword_1007F8A80;
      v178 = v118[16];
      v120 = v113 + v118[17];
      *v120 = xmmword_1007F8A80;
      (*(v165 + 16))(v113, v216, v209);
      (*(v165 + 56))(v113, 0, 1, v209);
      v121 = v118[5];
      (*(v109 + 16))(v113 + v121, v170, v169);
      (*(v109 + 56))(v113 + v121, 0, 1, v169);

      v122 = (v113 + v118[6]);
      *v122 = v179;
      v122[1] = v180;
      v123 = (v113 + v118[8]);
      *v123 = v196;
      v123[1] = v193;
      v124 = (v113 + v118[7]);
      *v124 = v176;
      v124[1] = v177;
      v125 = (v113 + v118[9]);
      *v125 = v206;
      v125[1] = v186;
      v126 = (v113 + v118[10]);
      *v126 = v168;
      v126[1] = v167;
      *(v113 + v166) = v183;
      v127 = type metadata accessor for SFAirDropSend.Request();
      (*(*(v127 - 8) + 8))(v172, v127);
      v199(v170, v169);
      (*(v165 + 8))(v216, v209);
      *(v113 + v175) = v212;
      *v173 = 0;
      v173[1] = 0;
      sub_10028BCC0(*v119, *(v119 + 8));
      *v119 = v190;
      *(v119 + 8) = v188;
      sub_10028BCC0(*v174, *(v174 + 8));
      *v174 = xmmword_1007F8A80;
      *(v113 + v178) = 0;
      sub_10028BCC0(*v120, *(v120 + 8));
      *v120 = v182;
      *(v120 + 8) = v181;

      v97 = v106[1];
      goto LABEL_65;
    }

    __break(1u);
    goto LABEL_87;
  }

  v89 = Logger.logObject.getter();
  v162 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v89, v162))
  {
    v163 = swift_slowAlloc();
    *v163 = 0;
    v164 = "Send request claims to provide file metadata but provides none";
    goto LABEL_81;
  }

LABEL_54:
  v92 = v0[7];
  v93 = v0[4];

  v94 = type metadata accessor for SFAirDropSend.Failure();
  sub_1005AB7FC(&qword_1009755A0, &type metadata accessor for SFAirDropSend.Failure, &protocol conformance descriptor for SFAirDropSend.Failure);
  swift_allocError();
  (*(*(v94 - 8) + 104))(v95, enum case for SFAirDropSend.Failure.badRequest(_:), v94);
  swift_willThrow();
  sub_10028BCC0(v192, v189);

  v96 = type metadata accessor for SFAirDropSend.Request();
  (*(*(v96 - 8) + 8))(v93, v96);

  v97 = v0[1];
LABEL_65:

  return v97();
}

uint64_t sub_1005A3244()
{
  v2 = *v1;
  *(*v1 + 320) = v0;

  if (v0)
  {
    v4 = v2[10];
    v3 = v2[11];
    v5 = v2[9];

    sub_1003C426C(v5, v4, v3);

    v6 = sub_1005A39E0;
  }

  else
  {

    v6 = sub_1005A33F8;
  }

  return _swift_task_switch(v6, 0, 0);
}

void sub_1005A33F8()
{
  v78 = v0;
  v1 = *(v0 + 16);
  v2 = *(v0 + 184);
  v3 = *(v0 + 160);
  v4 = *(v0 + 168);
  v5 = SFAirDropSend.Request.itemPreviewData.getter();
  v7 = v6;
  SFAirDropSend.Request.type.getter();
  v8 = SFAirDrop.TransferType.isOnlyExchange.getter();
  v72 = *(v4 + 8);
  v72(v2, v3);
  if ((v8 & 1) != 0 || (v9 = [*(v0 + 56) computerName]) == 0)
  {
    v74 = 0;
    v12 = 0;
  }

  else
  {
    v10 = v9;
    v74 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;
  }

  sub_1002A9924(v5, v7);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  sub_10028BCC0(v5, v7);
  v73 = v1;
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v77 = v16;
    *v15 = 136315138;
    if (v7 >> 60 == 15)
    {
      v17 = 0x8000000100796C40;
      v18 = 0xD000000000000016;
    }

    else
    {
      v18 = Data.description.getter();
      v17 = v19;
    }

    v20 = sub_10000C4E4(v18, v17, &v77);

    *(v15 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v13, v14, "Adding preview data to request %s", v15, 0xCu);
    sub_10000C60C(v16);
  }

  SFAirDropSend.Request.id.getter();
  SFAirDropSend.Request.type.getter();
  v21 = SFAirDropSend.Request.requestSource.getter();
  v70 = v22;
  if (v12)
  {
    v66 = v12;
  }

  else
  {
    v23 = v21;
    v24 = String._bridgeToObjectiveC()();
    v25 = SFLocalizedStringForKey();

    if (!v25)
    {
LABEL_19:
      __break(1u);
      return;
    }

    v74 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v66 = v26;

    v21 = v23;
  }

  v67 = v21;
  v68 = v7;
  v69 = v5;
  v27 = *(v0 + 56);

  v28 = [v27 modelName];
  if (!v28)
  {
    __break(1u);
    goto LABEL_19;
  }

  v62 = *(v0 + 256);
  v63 = *(v0 + 264);
  v65 = *(v0 + 272);
  v29 = *(v0 + 168);
  v52 = *(v0 + 160);
  v53 = *(v0 + 176);
  v30 = *(v0 + 104);
  v31 = *(v0 + 88);
  v75 = *(v0 + 96);
  v76 = *(v0 + 112);
  v32 = *(v0 + 72);
  v33 = *(v0 + 80);
  v59 = *(v0 + 40);
  v60 = *(v0 + 48);
  v34 = *(v0 + 24);
  v54 = *(v0 + 56);
  v55 = *(v0 + 32);

  sub_1003C426C(v32, v33, v31);

  v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v50 = v36;
  v51 = v35;

  v71 = SFAirDropSend.Request.customPayload.getter();
  v64 = v37;
  v38 = _s10AskRequestVMa(0);
  v49 = v38[11];
  v58 = v38[12];
  v56 = (v34 + v38[13]);
  v39 = v34 + v38[14];
  *v39 = xmmword_1007F8A80;
  v57 = v34 + v38[15];
  *v57 = xmmword_1007F8A80;
  v61 = v38[16];
  v40 = v34 + v38[17];
  *v40 = xmmword_1007F8A80;
  (*(v30 + 16))(v34, v76, v75);
  (*(v30 + 56))(v34, 0, 1, v75);
  v41 = v38[5];
  (*(v29 + 16))(v34 + v41, v53, v52);
  (*(v29 + 56))(v34 + v41, 0, 1, v52);

  v42 = (v34 + v38[6]);
  *v42 = v62;
  v42[1] = v63;
  v43 = (v34 + v38[8]);
  *v43 = v67;
  v43[1] = v70;
  v44 = (v34 + v38[7]);
  *v44 = v59;
  v44[1] = v60;
  v45 = (v34 + v38[9]);
  *v45 = v74;
  v45[1] = v66;
  v46 = (v34 + v38[10]);
  *v46 = v51;
  v46[1] = v50;
  *(v34 + v49) = v65;
  v47 = type metadata accessor for SFAirDropSend.Request();
  (*(*(v47 - 8) + 8))(v55, v47);
  v72(v53, v52);
  (*(v30 + 8))(v76, v75);
  *(v34 + v58) = v73;
  *v56 = 0;
  v56[1] = 0;
  sub_10028BCC0(*v39, *(v39 + 8));
  *v39 = v69;
  *(v39 + 8) = v68;
  sub_10028BCC0(*v57, *(v57 + 8));
  *v57 = xmmword_1007F8A80;
  *(v34 + v61) = 0;
  sub_10028BCC0(*v40, *(v40 + 8));
  *v40 = v71;
  *(v40 + 8) = v64;

  v48 = *(v0 + 8);

  v48();
}

uint64_t sub_1005A39E0()
{
  v1 = v0[7];
  v2 = v0[4];
  sub_10028BCC0(v0[32], v0[33]);

  v3 = type metadata accessor for SFAirDropSend.Request();
  (*(*(v3 - 8) + 8))(v2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1005A3B18(uint64_t a1, uint64_t a2)
{
  if (IsAppleInternalBuild())
  {
    _StringGuts.grow(_:)(222);
    v3._countAndFlagsBits = 0x75716572204B5341;
    v3._object = 0xEF20444920747365;
    String.append(_:)(v3);
    type metadata accessor for SFAirDrop.TransferIdentifier();
    sub_1005AB7FC(&qword_100977BF0, &type metadata accessor for SFAirDrop.TransferIdentifier, &protocol conformance descriptor for SFAirDrop.TransferIdentifier);
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    v4._countAndFlagsBits = 0x206570795420;
    v4._object = 0xE600000000000000;
    String.append(_:)(v4);
    v5 = _s10AskRequestVMa(0);
    type metadata accessor for SFAirDrop.TransferType();
    sub_1005AB7FC(&unk_100989320, &type metadata accessor for SFAirDrop.TransferType, &protocol conformance descriptor for SFAirDrop.TransferType);
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    v6._countAndFlagsBits = 0x207265646E655320;
    v6._object = 0xE800000000000000;
    String.append(_:)(v6);
    String.append(_:)(*(v2 + v5[7]));
    v7._countAndFlagsBits = 0x22206D4E202CLL;
    v7._object = 0xE600000000000000;
    String.append(_:)(v7);
    String.append(_:)(*(v2 + v5[9]));
    v8._countAndFlagsBits = 0x20644D202C22;
    v8._object = 0xE600000000000000;
    String.append(_:)(v8);
    String.append(_:)(*(v2 + v5[10]));
    v9._countAndFlagsBits = 0x6574496C7275202CLL;
    v9._object = 0xEC000000203A736DLL;
    String.append(_:)(v9);
    sub_10028088C(&unk_100976C20, &unk_1007F9D80);
    sub_1005A71C8(&qword_1009846A8, &unk_100976C20, &unk_1007F9D80);
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    v10._countAndFlagsBits = 0x3A73656C6966202CLL;
    v10._object = 0xE900000000000020;
    String.append(_:)(v10);
    sub_10028088C(&unk_100984648, &qword_10080BC00);
    sub_1005A71C8(&qword_1009846B0, &unk_100984648, &qword_10080BC00);
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    v11._countAndFlagsBits = 0xD00000000000001CLL;
    v11._object = 0x8000000100796B00;
    String.append(_:)(v11);
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    v12._countAndFlagsBits = 0xD000000000000014;
    v12._object = 0x8000000100796B20;
    String.append(_:)(v12);
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    v13._countAndFlagsBits = 0x6349656C6966202CLL;
    v13._object = 0xEC000000203A6E6FLL;
    String.append(_:)(v13);
    v14 = (v2 + v5[14]);
    v38 = *v14;
    v45 = v14[1];
    sub_1002A9924(*v14, v45);
    sub_1002F4C88();
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    sub_10028BCC0(v38, v45);
    v15._object = 0x8000000100796B40;
    v15._countAndFlagsBits = 0xD000000000000011;
    String.append(_:)(v15);
    v16 = (v2 + v5[15]);
    v39 = *v16;
    v46 = v16[1];
    sub_1002A9924(*v16, v46);
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    sub_10028BCC0(v39, v46);
    v17._countAndFlagsBits = 0xD000000000000014;
    v17._object = 0x8000000100796B60;
    String.append(_:)(v17);
    v18 = (v2 + v5[6]);
    v40 = *v18;
    v47 = v18[1];
    sub_1002A9924(*v18, v47);
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    sub_10028BCC0(v40, v47);
    v19._countAndFlagsBits = 0xD000000000000012;
    v19._object = 0x8000000100796B80;
    String.append(_:)(v19);
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
  }

  else
  {
    _StringGuts.grow(_:)(214);
    v20._countAndFlagsBits = 0x75716572204B5341;
    v20._object = 0xEF20444920747365;
    String.append(_:)(v20);
    type metadata accessor for SFAirDrop.TransferIdentifier();
    sub_1005AB7FC(&qword_100977BF0, &type metadata accessor for SFAirDrop.TransferIdentifier, &protocol conformance descriptor for SFAirDrop.TransferIdentifier);
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    v21._countAndFlagsBits = 0x206570795420;
    v21._object = 0xE600000000000000;
    String.append(_:)(v21);
    v5 = _s10AskRequestVMa(0);
    type metadata accessor for SFAirDrop.TransferType();
    sub_1005AB7FC(&unk_100989320, &type metadata accessor for SFAirDrop.TransferType, &protocol conformance descriptor for SFAirDrop.TransferType);
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    v22._countAndFlagsBits = 0x207265646E655320;
    v22._object = 0xE800000000000000;
    String.append(_:)(v22);
    String.append(_:)(*(v2 + v5[7]));
    v23._countAndFlagsBits = 0x22206D4E202CLL;
    v23._object = 0xE600000000000000;
    String.append(_:)(v23);
    String.append(_:)(*(v2 + v5[9]));
    v24._countAndFlagsBits = 0x20644D202C22;
    v24._object = 0xE600000000000000;
    String.append(_:)(v24);
    String.append(_:)(*(v2 + v5[10]));
    v25._countAndFlagsBits = 0xD000000000000012;
    v25._object = 0x8000000100796BC0;
    String.append(_:)(v25);
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    v26._countAndFlagsBits = 0x2E73656C6966202CLL;
    v26._object = 0xEF203A746E756F63;
    String.append(_:)(v26);
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    v27._countAndFlagsBits = 0xD00000000000001CLL;
    v27._object = 0x8000000100796B00;
    String.append(_:)(v27);
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    v28._countAndFlagsBits = 0xD000000000000014;
    v28._object = 0x8000000100796B20;
    String.append(_:)(v28);
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    v29._countAndFlagsBits = 0x6349656C6966202CLL;
    v29._object = 0xEC000000203A6E6FLL;
    String.append(_:)(v29);
    v30 = (v2 + v5[14]);
    v41 = *v30;
    v48 = v30[1];
    sub_1002A9924(*v30, v48);
    sub_1002F4C88();
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    sub_10028BCC0(v41, v48);
    v31._object = 0x8000000100796B40;
    v31._countAndFlagsBits = 0xD000000000000011;
    String.append(_:)(v31);
    v32 = (v2 + v5[15]);
    v42 = *v32;
    v49 = v32[1];
    sub_1002A9924(*v32, v49);
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    sub_10028BCC0(v42, v49);
    v33._countAndFlagsBits = 0xD000000000000014;
    v33._object = 0x8000000100796B60;
    String.append(_:)(v33);
    v34 = (v2 + v5[6]);
    v43 = *v34;
    v50 = v34[1];
    sub_1002A9924(*v34, v50);
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    sub_10028BCC0(v43, v50);
  }

  v35._object = 0x8000000100796BA0;
  v35._countAndFlagsBits = 0xD000000000000011;
  String.append(_:)(v35);
  v36 = (v2 + v5[17]);
  v44 = *v36;
  v51 = v36[1];
  sub_1002A9924(*v36, v51);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  sub_10028BCC0(v44, v51);
  return 0;
}

uint64_t sub_1005A43F8()
{
  *&v12 = 0;
  *(&v12 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(118);
  v11 = v12;
  v1._countAndFlagsBits = 0xD000000000000011;
  v1._object = 0x8000000100796BE0;
  String.append(_:)(v1);
  String.append(_:)(*v0);
  v2._countAndFlagsBits = 0x20644D202C22;
  v2._object = 0xE600000000000000;
  String.append(_:)(v2);
  String.append(_:)(*(v0 + 16));
  v3._countAndFlagsBits = 0xD00000000000001ALL;
  v3._object = 0x8000000100796C00;
  String.append(_:)(v3);
  LOBYTE(v12) = *(v0 + 32);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v4._countAndFlagsBits = 0x736553736469202CLL;
  v4._object = 0xEF2044496E6F6973;
  String.append(_:)(v4);
  v12 = *(v0 + 40);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v5._countAndFlagsBits = 0x6F6475657370202CLL;
  v5._object = 0xEC000000206D796ELL;
  String.append(_:)(v5);
  v12 = *(v0 + 56);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v6._countAndFlagsBits = 0x6F5468737570202CLL;
  v6._object = 0xEC000000206E656BLL;
  String.append(_:)(v6);
  v12 = *(v0 + 72);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v7._object = 0x8000000100796C20;
  v7._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v7);
  v12 = *(v0 + 88);
  v10 = *(v0 + 88);
  sub_10000FF90(&v12, &v9, &qword_100974E10, &qword_1007FC4C0);
  sub_1002F4C88();
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  sub_10028BCC0(v10, *(&v10 + 1));
  return v11;
}

uint64_t sub_1005A4624()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_1009845B0);
  v1 = sub_10000C4AC(v0, qword_1009845B0);
  if (qword_1009736D0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A08B8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

unint64_t sub_1005A46EC(char a1)
{
  result = 0x726566736E617254;
  switch(a1)
  {
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0x44497265646E6553;
      break;
    case 4:
      result = 0x4449656C646E7542;
      break;
    case 5:
      result = 0xD000000000000012;
      break;
    case 6:
      result = 0x6F4D7265646E6553;
      break;
    case 7:
      result = 0x736D657449;
      break;
    case 8:
      result = 0x73656C6946;
      break;
    case 9:
      result = 0xD000000000000010;
      break;
    case 10:
      result = 0x6E6F6349656C6946;
      break;
    case 11:
      result = 0x6C69466C6C616D53;
      break;
    case 12:
      result = 0xD000000000000013;
      break;
    case 13:
      result = 0x61506D6F74737543;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1005A4888(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_1005A46EC(*a1);
  v5 = v4;
  if (v3 == sub_1005A46EC(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_1005A4910()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_1005A46EC(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1005A4974(uint64_t a1)
{
  sub_1005A46EC(*v1);
  String.hash(into:)();
}

Swift::Int sub_1005A49C8(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  sub_1005A46EC(v2);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1005A4A28@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1005A88E4(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_1005A4A58@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1005A46EC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1005A4AA0@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_1005A88E4(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1005A4AC8(uint64_t a1)
{
  v2 = sub_1005AAF1C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1005A4B04(uint64_t a1)
{
  v2 = sub_1005AAF1C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1005A4B40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = type metadata accessor for URL();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();
  v5[10] = swift_task_alloc();
  v5[11] = swift_task_alloc();

  return _swift_task_switch(sub_1005A4C20, 0, 0);
}

void sub_1005A4C20()
{
  v41 = v0;
  v1 = *(v0 + 24);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 64);
    v6 = *(v3 + 16);
    v4 = v3 + 16;
    v5 = v6;
    v7 = v1 + ((*(v4 + 64) + 32) & ~*(v4 + 64));
    v8 = *(v4 + 56);
    v38 = (*(v4 + 64) + 32) & ~*(v4 + 64);
    v9 = (v4 + 16);
    v10 = _swiftEmptyArrayStorage;
    v39 = v6;
    v6(*(v0 + 88), v7, *(v0 + 56));
    while (1)
    {
      if (URL.isFileURL.getter())
      {
        v11 = *v9;
        (*v9)(*(v0 + 80), *(v0 + 88), *(v0 + 56));
        v40 = v10;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_10028FAB4(0, v10[2] + 1, 1);
          v10 = v40;
        }

        v13 = v10[2];
        v12 = v10[3];
        if (v13 >= v12 >> 1)
        {
          sub_10028FAB4((v12 > 1), v13 + 1, 1);
          v10 = v40;
        }

        v14 = *(v0 + 80);
        v15 = *(v0 + 56);
        v10[2] = v13 + 1;
        v11(v10 + v38 + v13 * v8, v14, v15);
        v5 = v39;
      }

      else
      {
        (*(v4 - 8))(*(v0 + 88), *(v0 + 56));
      }

      v7 += v8;
      if (!--v2)
      {
        break;
      }

      v5(*(v0 + 88), v7, *(v0 + 56));
    }
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v10[2])
  {
    isa = Array._bridgeToObjectiveC()().super.isa;
    v17 = sub_1001F0874(isa);

    if (!v17)
    {
      __break(1u);
      return;
    }

    v18 = *(v0 + 32);
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v19 = *(v0 + 72);
    if (v18)
    {
      v20 = *(v0 + 48);
      v21 = swift_task_alloc();
      v22 = *(v0 + 32);
      *(v21 + 16) = v19;
      *(v21 + 24) = v22;
      *(v21 + 40) = v20;
      v23 = sub_1005AB778;
    }

    else
    {
      v21 = swift_task_alloc();
      *(v21 + 16) = v19;
      v23 = sub_1005AB758;
    }

    v24 = sub_1005A1A88(v23, v21, v10);
    v26 = *(v0 + 64);
    v25 = *(v0 + 72);
    v27 = *(v0 + 56);

    (*(v26 + 8))(v25, v27);
  }

  else
  {
    v24 = _swiftEmptyArrayStorage;
  }

  if (qword_100973AD0 != -1)
  {
    swift_once();
  }

  v28 = type metadata accessor for Logger();
  sub_10000C4AC(v28, qword_1009845B0);

  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v40 = v32;
    *v31 = 134218499;
    *(v31 + 4) = v10[2];

    *(v31 + 12) = 2160;
    *(v31 + 14) = 1752392040;
    *(v31 + 22) = 2081;
    v33 = Array.description.getter();
    v35 = v34;

    v36 = sub_10000C4E4(v33, v35, &v40);

    *(v31 + 24) = v36;
    _os_log_impl(&_mh_execute_header, v29, v30, "Adding file items (count=%ld) to request: %{private,mask.hash}s", v31, 0x20u);
    sub_10000C60C(v32);
  }

  else
  {
  }

  **(v0 + 16) = v24;

  v37 = *(v0 + 8);

  v37();
}

double sub_1005A50B4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, void *a4@<X5>, uint64_t a5@<X8>)
{
  v24 = a4;
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v24 - v14;
  v16 = *(v10 + 16);
  v16(&v24 - v14, a1, v9);
  v16(v13, a2, v9);
  if (*(a3 + 16) && (v17 = sub_100570988(a1), (v18 & 1) != 0))
  {
    v19 = *(*(a3 + 56) + v17);
  }

  else
  {
    v19 = 0;
  }

  v20 = v27;
  sub_1005AA000(v15, v13, v19, v25);
  if (v20)
  {
    *v24 = v20;
  }

  else
  {
    v22 = v25[3];
    *(a5 + 32) = v25[2];
    *(a5 + 48) = v22;
    *(a5 + 64) = v25[4];
    *(a5 + 80) = v26;
    result = *v25;
    v23 = v25[1];
    *a5 = v25[0];
    *(a5 + 16) = v23;
  }

  return result;
}

double sub_1005A5250@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v22 = a3;
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v19 - v13;
  v15 = *(v9 + 16);
  v15(&v19 - v13, a1, v8);
  v15(v12, a2, v8);
  sub_1005AA000(v14, v12, 0, v20);
  if (v4)
  {
    *v22 = v4;
  }

  else
  {
    v17 = v20[3];
    *(a4 + 32) = v20[2];
    *(a4 + 48) = v17;
    *(a4 + 64) = v20[4];
    *(a4 + 80) = v21;
    result = *v20;
    v18 = v20[1];
    *a4 = v20[0];
    *(a4 + 16) = v18;
  }

  return result;
}

uint64_t sub_1005A53C8(void *a1)
{
  v3 = v1;
  v5 = sub_10028088C(&qword_100984708, &qword_10080BDB8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19 - v7;
  sub_10002CDC0(a1, a1[3]);
  sub_1005AAF1C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v21) = 0;
  type metadata accessor for SFAirDrop.TransferIdentifier();
  sub_1005AB7FC(&qword_10097F1F0, &type metadata accessor for SFAirDrop.TransferIdentifier, &protocol conformance descriptor for SFAirDrop.TransferIdentifier);
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (!v2)
  {
    v9 = _s10AskRequestVMa(0);
    LOBYTE(v21) = 1;
    type metadata accessor for SFAirDrop.TransferType();
    sub_1005AB7FC(&qword_100984710, &type metadata accessor for SFAirDrop.TransferType, &protocol conformance descriptor for SFAirDrop.TransferType);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v10 = (v3 + v9[6]);
    v11 = v10[1];
    v21 = *v10;
    v22 = v11;
    v20 = 2;
    sub_1002A9924(v21, v11);
    sub_1002F3198();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_10028BCC0(v21, v22);
    LOBYTE(v21) = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v21) = 4;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v21) = 5;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v21) = 6;
    KeyedEncodingContainer.encode(_:forKey:)();
    v21 = *(v3 + v9[11]);
    v20 = 7;
    sub_10028088C(&unk_100976C20, &unk_1007F9D80);
    sub_1005AB02C(&qword_100984718, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v21 = *(v3 + v9[12]);
    v20 = 8;
    sub_10028088C(&unk_100984648, &qword_10080BC00);
    sub_1005AB098(&qword_100984720, sub_1005AB110, &protocol conformance descriptor for <A> [A]);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v21) = 9;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v13 = (v3 + v9[14]);
    v14 = v13[1];
    v21 = *v13;
    v22 = v14;
    v20 = 10;
    sub_1002A9924(v21, v14);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_10028BCC0(v21, v22);
    v15 = (v3 + v9[15]);
    v16 = v15[1];
    v21 = *v15;
    v22 = v16;
    v20 = 11;
    sub_1002A9924(v21, v16);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_10028BCC0(v21, v22);
    LOBYTE(v21) = 12;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v17 = (v3 + v9[17]);
    v18 = v17[1];
    v21 = *v17;
    v22 = v18;
    v20 = 13;
    sub_1002A9924(v21, v18);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_10028BCC0(v21, v22);
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1005A593C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a2;
  v3 = sub_10028088C(&qword_100977BD8, &qword_1007FAE38);
  __chkstk_darwin(v3 - 8);
  v5 = &v45 - v4;
  v6 = sub_10028088C(&unk_100977BE0, &unk_1007FAE40);
  __chkstk_darwin(v6 - 8);
  v8 = &v45 - v7;
  v48 = sub_10028088C(&qword_1009846D8, &qword_10080BDB0);
  v9 = *(v48 - 8);
  __chkstk_darwin(v48);
  v11 = &v45 - v10;
  v12 = _s10AskRequestVMa(0);
  v13 = __chkstk_darwin(v12);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = &v15[v13[14]];
  *v16 = xmmword_1007F8A80;
  v53 = &v15[v13[15]];
  v54 = v16;
  *v53 = xmmword_1007F8A80;
  v17 = &v15[v13[17]];
  v51 = a1;
  v52 = v17;
  *v17 = xmmword_1007F8A80;
  sub_10002CDC0(a1, a1[3]);
  sub_1005AAF1C();
  v49 = v11;
  v18 = v50;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v18)
  {
    sub_10000C60C(v51);

    sub_10028BCC0(*v54, *(v54 + 1));
    sub_10028BCC0(*v53, *(v53 + 1));
    return sub_10028BCC0(*v52, *(v52 + 1));
  }

  else
  {
    v50 = v15;
    v46 = v12;
    type metadata accessor for SFAirDrop.TransferIdentifier();
    LOBYTE(v55) = 0;
    sub_1005AB7FC(&qword_10097F1E0, &type metadata accessor for SFAirDrop.TransferIdentifier, &protocol conformance descriptor for SFAirDrop.TransferIdentifier);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v19 = v50;
    sub_10002C4E4(v8, v50, &unk_100977BE0, &unk_1007FAE40);
    type metadata accessor for SFAirDrop.TransferType();
    LOBYTE(v55) = 1;
    sub_1005AB7FC(&qword_1009846E8, &type metadata accessor for SFAirDrop.TransferType, &protocol conformance descriptor for SFAirDrop.TransferType);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v20 = v46;
    sub_10002C4E4(v5, v19 + v46[5], &qword_100977BD8, &qword_1007FAE38);
    v56 = 2;
    sub_1002F309C();
    v45 = 0;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    *(v19 + v20[6]) = v55;
    LOBYTE(v55) = 3;
    v21 = KeyedDecodingContainer.decode(_:forKey:)();
    v22 = (v19 + v20[7]);
    *v22 = v21;
    v22[1] = v23;
    LOBYTE(v55) = 4;
    v24 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v25 = (v19 + v20[8]);
    *v25 = v24;
    v25[1] = v26;
    LOBYTE(v55) = 5;
    v27 = KeyedDecodingContainer.decode(_:forKey:)();
    v28 = (v19 + v20[9]);
    *v28 = v27;
    v28[1] = v29;
    LOBYTE(v55) = 6;
    v30 = KeyedDecodingContainer.decode(_:forKey:)();
    v31 = (v19 + v20[10]);
    *v31 = v30;
    v31[1] = v32;
    sub_10028088C(&unk_100976C20, &unk_1007F9D80);
    v56 = 7;
    sub_1005AB02C(&qword_1009846F0, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v33 = v20[11];
    v45 = v55;
    *(v19 + v33) = v55;
    sub_10028088C(&unk_100984648, &qword_10080BC00);
    v56 = 8;
    sub_1005AB098(&qword_1009846F8, sub_1005AAF70, &protocol conformance descriptor for <A> [A]);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    *&v50[v20[12]] = v55;
    LOBYTE(v55) = 9;
    v34 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v35 = &v50[v46[13]];
    *v35 = v34;
    v35[1] = v36;
    v56 = 10;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v37 = v55;
    v38 = v54;
    sub_10028BCC0(*v54, *(v54 + 1));
    *v38 = v37;
    v56 = 11;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v39 = v55;
    v40 = v53;
    sub_10028BCC0(*v53, *(v53 + 1));
    *v40 = v39;
    LOBYTE(v55) = 12;
    v50[v46[16]] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v56 = 13;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v9 + 8))(v49, v48);
    v41 = v55;
    v42 = v52;
    sub_10028BCC0(*v52, *(v52 + 1));
    *v42 = v41;
    v43 = v50;
    sub_1005AAFC4(v50, v47, _s10AskRequestVMa);
    sub_10000C60C(v51);
    return sub_1005AB79C(v43, _s10AskRequestVMa);
  }
}

uint64_t sub_1005A6448(uint64_t a1)
{
  String.hash(into:)();
}

unint64_t sub_1005A656C@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1005AA8FC(*a1);
  *a2 = result;
  return result;
}

void sub_1005A659C(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEC00000044496E6FLL;
  v4 = 0x6973736553534449;
  v5 = 0xD000000000000011;
  v6 = 0x8000000100788800;
  if (v2 != 5)
  {
    v5 = 0xD000000000000015;
    v6 = 0x8000000100788820;
  }

  v7 = 0xD000000000000011;
  if (v2 != 3)
  {
    v4 = 0xD000000000000011;
    v3 = 0x80000001007887E0;
  }

  if (*v1 > 4u)
  {
    v4 = v5;
    v3 = v6;
  }

  v8 = 0x8000000100788580;
  v9 = 0xD000000000000014;
  v10 = 0x80000001007885E0;
  if (v2 != 1)
  {
    v7 = 0xD000000000000017;
    v10 = 0x80000001007887B0;
  }

  if (*v1)
  {
    v9 = v7;
    v8 = v10;
  }

  v13 = __OFSUB__(v2, 2);
  v11 = v2 == 2;
  v12 = v2 - 2 < 0;
  if (*v1 <= 2u)
  {
    v14 = v9;
  }

  else
  {
    v14 = v4;
  }

  if (v12 ^ v13 | v11)
  {
    v3 = v8;
  }

  *a1 = v14;
  a1[1] = v3;
}

unint64_t sub_1005A6688()
{
  v1 = *v0;
  v2 = 0x6973736553534449;
  v3 = 0xD000000000000011;
  if (v1 != 5)
  {
    v3 = 0xD000000000000015;
  }

  v4 = 0xD000000000000011;
  if (v1 != 3)
  {
    v2 = 0xD000000000000011;
  }

  if (*v0 > 4u)
  {
    v2 = v3;
  }

  v5 = 0xD000000000000014;
  if (v1 != 1)
  {
    v4 = 0xD000000000000017;
  }

  if (*v0)
  {
    v5 = v4;
  }

  if (*v0 <= 2u)
  {
    return v5;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1005A6770@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_1005AA8FC(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1005A6798(uint64_t a1)
{
  v2 = sub_1005AAEC8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1005A67D4(uint64_t a1)
{
  v2 = sub_1005AAEC8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1005A6810(void *a1)
{
  v3 = v1;
  v5 = sub_10028088C(&qword_1009846D0, &qword_10080BDA8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11[-v7 - 8];
  sub_10002CDC0(a1, a1[3]);
  sub_1005AAEC8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v12) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    LOBYTE(v12) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v12) = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v12) = 3;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v12) = 4;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v12) = 5;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v12 = *(v3 + 88);
    v13 = v12;
    v11[23] = 6;
    sub_10000FF90(&v13, v11, &qword_100974E10, &qword_1007FC4C0);
    sub_1002F3198();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_10028BCC0(v12, *(&v12 + 1));
  }

  return (*(v6 + 8))(v8, v5);
}

__n128 sub_1005A6A98@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1005AA948(a2, v7);
  if (!v2)
  {
    v5 = v7[5];
    *(a1 + 64) = v7[4];
    *(a1 + 80) = v5;
    *(a1 + 96) = v8;
    v6 = v7[1];
    *a1 = v7[0];
    *(a1 + 16) = v6;
    result = v7[3];
    *(a1 + 32) = v7[2];
    *(a1 + 48) = result;
  }

  return result;
}

uint64_t sub_1005A6B2C(uint64_t a1)
{
  String.hash(into:)();
}

unint64_t sub_1005A6C64@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1005AB164(*a1);
  *a2 = result;
  return result;
}

void sub_1005A6C94(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0x656D614E656C6946;
  v5 = 0xEF79726F74636572;
  v6 = 0x69447349656C6946;
  if (v2 != 5)
  {
    v6 = 0xD000000000000019;
    v5 = 0x8000000100788880;
  }

  v7 = 0xE800000000000000;
  v8 = 0x657A6953656C6946;
  if (v2 != 3)
  {
    v8 = 0x506D6F42656C6946;
    v7 = 0xEB00000000687461;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE800000000000000;
  v10 = 0x65707954656C6946;
  if (v2 != 1)
  {
    v10 = 0x54627553656C6946;
    v9 = 0xEB00000000657079;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 2);
  v11 = v2 == 2;
  v12 = v2 - 2 < 0;
  if (*v1 <= 2u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

unint64_t sub_1005A6D94()
{
  v1 = *v0;
  v2 = 0x656D614E656C6946;
  v3 = 0x69447349656C6946;
  if (v1 != 5)
  {
    v3 = 0xD000000000000019;
  }

  v4 = 0x657A6953656C6946;
  if (v1 != 3)
  {
    v4 = 0x506D6F42656C6946;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x65707954656C6946;
  if (v1 != 1)
  {
    v5 = 0x54627553656C6946;
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

unint64_t sub_1005A6E90@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_1005AB164(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1005A6EB8(uint64_t a1)
{
  v2 = sub_1005AB640();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1005A6EF4(uint64_t a1)
{
  v2 = sub_1005AB640();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1005A6F30(void *a1)
{
  v3 = sub_10028088C(&qword_100984740, &qword_10080BDC8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_10002CDC0(a1, a1[3]);
  sub_1005AB640();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v8[13] = 2;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v8[12] = 3;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v8[11] = 4;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v8[10] = 5;
  KeyedEncodingContainer.encode(_:forKey:)();
  v8[9] = 6;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  return (*(v4 + 8))(v6, v3);
}

double sub_1005A7154@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1005AB1B0(a2, v7);
  if (!v2)
  {
    v5 = v7[3];
    *(a1 + 32) = v7[2];
    *(a1 + 48) = v5;
    *(a1 + 64) = v7[4];
    *(a1 + 80) = v8;
    result = *v7;
    v6 = v7[1];
    *a1 = v7[0];
    *(a1 + 16) = v6;
  }

  return result;
}

uint64_t sub_1005A71C8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100280938(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1005A721C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[50] = a5;
  v6[51] = v5;
  v6[48] = a3;
  v6[49] = a4;
  v6[46] = a1;
  v6[47] = a2;
  sub_10028088C(&qword_100974DF8, &qword_10080F350);
  v6[52] = swift_task_alloc();
  v7 = type metadata accessor for UUID();
  v6[53] = v7;
  v6[54] = *(v7 - 8);
  v6[55] = swift_task_alloc();
  v8 = type metadata accessor for SFAirDrop.TransferIdentifier();
  v6[56] = v8;
  v6[57] = *(v8 - 8);
  v6[58] = swift_task_alloc();
  sub_10028088C(&unk_100976120, &qword_1007F9260);
  v6[59] = swift_task_alloc();
  v6[60] = swift_task_alloc();
  v6[61] = type metadata accessor for SDAirDropServerConnection(0);
  v6[62] = swift_task_alloc();
  v6[63] = swift_task_alloc();
  sub_10028088C(&qword_100977BD8, &qword_1007FAE38);
  v6[64] = swift_task_alloc();
  v9 = type metadata accessor for SFAirDrop.TransferType();
  v6[65] = v9;
  v6[66] = *(v9 - 8);
  v6[67] = swift_task_alloc();
  v6[68] = swift_task_alloc();
  v6[69] = swift_task_alloc();
  sub_10028088C(&qword_1009846B8, &qword_10080BD98);
  v6[70] = swift_task_alloc();
  v10 = type metadata accessor for SFAirDropReceive.AskRequest.ItemInfo();
  v6[71] = v10;
  v6[72] = *(v10 - 8);
  v6[73] = swift_task_alloc();
  v6[74] = swift_task_alloc();
  sub_10028088C(&unk_100974E00, &qword_1007F8940);
  v6[75] = swift_task_alloc();
  v11 = type metadata accessor for URL();
  v6[76] = v11;
  v6[77] = *(v11 - 8);
  v6[78] = swift_task_alloc();

  return _swift_task_switch(sub_1005A75D8, 0, 0);
}

int *sub_1005A75D8()
{
  v110 = v0;
  v1 = *(v0 + 408);
  result = _s10AskRequestVMa(0);
  *(v0 + 632) = result;
  v3 = *(v1 + result[11]);
  v95 = result;
  if (v3)
  {
    v101 = *(v3 + 16);
    if (v101)
    {
      v4 = 0;
      v5 = *(v0 + 616);
      v6 = (v5 + 48);
      v96 = v5;
      v98 = (v5 + 32);
      v7 = v3 + 40;
      v8 = _swiftEmptyArrayStorage;
      while (v4 < *(v3 + 16))
      {
        v9 = *(v0 + 608);
        v10 = *(v0 + 600);

        URL.init(string:)();

        if ((*v6)(v10, 1, v9) == 1)
        {
          result = sub_100005508(*(v0 + 600), &unk_100974E00, &qword_1007F8940);
        }

        else
        {
          v11 = *v98;
          (*v98)(*(v0 + 624), *(v0 + 600), *(v0 + 608));
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v8 = sub_10028E2D4(0, *(v8 + 2) + 1, 1, v8);
          }

          v13 = *(v8 + 2);
          v12 = *(v8 + 3);
          if (v13 >= v12 >> 1)
          {
            v8 = sub_10028E2D4((v12 > 1), v13 + 1, 1, v8);
          }

          v14 = *(v0 + 624);
          v15 = *(v0 + 608);
          *(v8 + 2) = v13 + 1;
          result = v11(&v8[((*(v96 + 80) + 32) & ~*(v96 + 80)) + *(v96 + 72) * v13], v14, v15);
        }

        ++v4;
        v7 += 16;
        if (v101 == v4)
        {
          v1 = *(v0 + 408);
          result = v95;
          goto LABEL_15;
        }
      }

      __break(1u);
      goto LABEL_60;
    }
  }

  v8 = _swiftEmptyArrayStorage;
LABEL_15:
  *(v0 + 640) = v8;
  v16 = *(v1 + result[12]);
  if (v16)
  {
    v17 = *(v16 + 16);
    if (v17)
    {
      v18 = 0;
      v19 = *(v0 + 576);
      v20 = (v16 + 32);
      v21 = (v19 + 48);
      v93 = v19;
      v99 = (v19 + 32);
      v102 = _swiftEmptyArrayStorage;
      v94 = v16;
      v92 = (v19 + 48);
      v97 = v8;
      while (v18 < *(v16 + 16))
      {
        v22 = *(v0 + 560);
        v23 = v20[1];
        *(v0 + 16) = *v20;
        *(v0 + 32) = v23;
        v25 = v20[3];
        v24 = v20[4];
        v26 = v20[2];
        *(v0 + 96) = *(v20 + 40);
        *(v0 + 64) = v25;
        *(v0 + 80) = v24;
        *(v0 + 48) = v26;
        v27 = v20[3];
        v106 = v20[2];
        v107 = v27;
        v108 = v20[4];
        v109 = *(v20 + 40);
        v28 = v20[1];
        v104 = *v20;
        v105 = v28;
        sub_1002A56F0(v0 + 16, v0 + 104);
        sub_1005A86E0(&v104, v22);
        v29 = *(v0 + 568);
        v30 = *(v0 + 560);
        v31 = v107;
        *(v0 + 312) = v106;
        *(v0 + 328) = v31;
        *(v0 + 344) = v108;
        *(v0 + 360) = v109;
        v32 = v105;
        *(v0 + 280) = v104;
        *(v0 + 296) = v32;
        sub_1002A574C(v0 + 280);
        if ((*v21)(v30, 1, v29) == 1)
        {
          result = sub_100005508(*(v0 + 560), &qword_1009846B8, &qword_10080BD98);
        }

        else
        {
          v33 = v17;
          v34 = *(v0 + 592);
          v35 = *(v0 + 584);
          v36 = *(v0 + 568);
          v37 = *v99;
          (*v99)(v34, *(v0 + 560), v36);
          v37(v35, v34, v36);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v102 = sub_10028EBC0(0, v102[2] + 1, 1, v102);
          }

          v39 = v102[2];
          v38 = v102[3];
          v17 = v33;
          if (v39 >= v38 >> 1)
          {
            v102 = sub_10028EBC0((v38 > 1), v39 + 1, 1, v102);
          }

          v21 = v92;
          v40 = *(v0 + 584);
          v41 = *(v0 + 568);
          v102[2] = v39 + 1;
          result = (v37)(v102 + ((*(v93 + 80) + 32) & ~*(v93 + 80)) + *(v93 + 72) * v39, v40, v41);
          v16 = v94;
        }

        ++v18;
        v20 = (v20 + 88);
        v8 = v97;
        if (v17 == v18)
        {
          goto LABEL_28;
        }
      }

LABEL_60:
      __break(1u);
      return result;
    }
  }

  v102 = _swiftEmptyArrayStorage;
LABEL_28:
  *(v0 + 648) = v102;
  if (v102[2] || !*(v8 + 2))
  {
    v42 = &enum case for SFAirDrop.TransferType.files(_:);
  }

  else
  {
    v42 = &enum case for SFAirDrop.TransferType.links(_:);
  }

  v43 = *(v0 + 528);
  v44 = *(v0 + 520);
  v45 = *(v0 + 512);
  v46 = *(v0 + 408);
  (*(v43 + 104))(*(v0 + 552), *v42, v44);
  sub_10000FF90(v46 + v95[5], v45, &qword_100977BD8, &qword_1007FAE38);
  v47 = *(v43 + 48);
  if (v47(v45, 1, v44) == 1)
  {
    v48 = *(v0 + 520);
    v49 = *(v0 + 512);
    (*(*(v0 + 528) + 16))(*(v0 + 544), *(v0 + 552), v48);
    if (v47(v49, 1, v48) != 1)
    {
      sub_100005508(*(v0 + 512), &qword_100977BD8, &qword_1007FAE38);
    }
  }

  else
  {
    (*(*(v0 + 528) + 32))(*(v0 + 544), *(v0 + 512), *(v0 + 520));
  }

  v50 = (*(v0 + 408) + v95[6]);
  v51 = v50[1];
  if (v51 >> 60 != 15)
  {
    v61 = *v50;
    sub_1005AAFC4(*(v0 + 392), *(v0 + 504), type metadata accessor for SDAirDropServerConnection);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v63 = *(v0 + 504);
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v64 = *(v0 + 384);
        sub_100294008(v61, v51);
        sub_1005AB79C(v63, type metadata accessor for SDAirDropServerConnection);
        v65 = sub_10046C07C(v64);
        sub_10028BCC0(v61, v51);
      }

      else
      {
        v67 = *(v0 + 424);
        v68 = *(v0 + 432);
        v69 = *(v0 + 384);
        sub_100294008(v61, v51);

        v70 = *(sub_10028088C(&unk_10097A650, &qword_1007FD780) + 48);
        v65 = sub_10046C07C(v69);
        sub_10028BCC0(v61, v51);
        (*(v68 + 8))(v63 + v70, v67);
      }
    }

    else
    {
      v66 = *v63;
      sub_100294008(v61, v51);
      v65 = sub_10046C644(v66);
      sub_10028BCC0(v61, v51);
    }

    v71 = v50[1];
    if (v71 >> 60 == 15)
    {
      v59 = 0;
      v54 = 0;
      v53 = 0;
      v52 = 0;
      if ((v65 & 1) == 0)
      {
        goto LABEL_38;
      }

LABEL_50:
      v55 = *(v0 + 408);
      v56 = v95;
      v57 = *(v55 + v95[9]);

      v60 = 1;
      goto LABEL_54;
    }

    v72 = *v50;
    sub_1005AAFC4(*(v0 + 392), *(v0 + 496), type metadata accessor for SDAirDropServerConnection);
    v73 = swift_getEnumCaseMultiPayload();
    v74 = *(v0 + 496);
    if (v73)
    {
      if (v73 == 1)
      {
        v75 = *(v0 + 384);
        sub_100294008(v72, v71);
        sub_1005AB79C(v74, type metadata accessor for SDAirDropServerConnection);
        v53 = sub_10046B604(v75);
        v54 = v76;
        v57 = v77;
        v59 = v78;
        sub_10028BCC0(v72, v71);
        v52 = 0;
        if (v65)
        {
          goto LABEL_50;
        }
      }

      else
      {
        v87 = *(v0 + 432);
        v103 = *(v0 + 424);
        v88 = *(v0 + 384);
        sub_100294008(v72, v71);

        v100 = *(sub_10028088C(&unk_10097A650, &qword_1007FD780) + 48);
        v53 = sub_10046B604(v88);
        v54 = v89;
        v57 = v90;
        v59 = v91;
        sub_10028BCC0(v72, v71);
        (*(v87 + 8))(v74 + v100, v103);
        v52 = 0;
        if (v65)
        {
          goto LABEL_50;
        }
      }
    }

    else
    {
      v79 = *(v0 + 384);
      v80 = *v74;
      sub_100294008(v72, v71);
      sub_10046BAA4(v79, &v104, v80);
      v52 = *(&v104 + 1);
      v54 = *(&v105 + 1);
      v53 = v105;
      v59 = *(&v106 + 1);
      v57 = v106;

      sub_10028BCC0(v72, v71);
      if (v65)
      {
        goto LABEL_50;
      }
    }

    if (v59)
    {

      v60 = 0;
      v55 = *(v0 + 408);
      v56 = v95;
      goto LABEL_54;
    }

    goto LABEL_38;
  }

  v52 = 0;
  v53 = 0;
  v54 = 0;
LABEL_38:
  v55 = *(v0 + 408);
  v56 = v95;
  v57 = *(v55 + v95[9]);

  v59 = 0;
  v60 = 0;
LABEL_54:
  *(v0 + 696) = v58;
  *(v0 + 688) = v57;
  *(v0 + 98) = v60;
  *(v0 + 680) = v52;
  *(v0 + 672) = v53;
  *(v0 + 664) = v54;
  *(v0 + 656) = v59;
  sub_10039D0AC();
  v81 = static NSUserDefaults.airdrop.getter();
  *(v0 + 99) = SFAirDropUserDefaults.alwaysAutoAccept.getter() & 1;

  v82 = (v55 + v56[7]);
  v84 = *v82;
  v83 = v82[1];
  v85 = swift_task_alloc();
  *(v0 + 704) = v85;
  *v85 = v0;
  v85[1] = sub_1005A7FF4;
  v86 = *(v0 + 480);

  return sub_1004924A4(v86, v84, v83, v53, v54);
}

uint64_t sub_1005A7FF4()
{

  return _swift_task_switch(sub_1005A80F0, 0, 0);
}

uint64_t sub_1005A80F0(uint64_t a1)
{
  if ((SFAirDrop.TransferType.isOnlyExchange.getter() & 1) == 0)
  {
    v2 = v1[51] + *(v1[79] + 60);
    v3 = *(v2 + 8);
    if (v3 >> 60 != 15)
    {
      v10 = *v2;
      sub_100294008(*v2, *(v2 + 8));
      isa = Data._bridgeToObjectiveC()().super.isa;
      v12 = sub_100117BCC(isa);

      if (v12)
      {
        v13 = v12;
        sub_10028BCC0(v10, v3);
      }

      else
      {
        sub_10028BCC0(v10, v3);
      }
    }
  }

  if ((SFAirDrop.TransferType.isOnlyExchange.getter() & 1) == 0)
  {
    v4 = v1[51] + *(v1[79] + 56);
    v5 = *(v4 + 8);
    if (v5 >> 60 != 15)
    {
      v6 = *v4;
      sub_100294008(*v4, *(v4 + 8));
      v7 = Data._bridgeToObjectiveC()().super.isa;
      v8 = sub_100117BCC(v7);

      if (v8)
      {
        v9 = v8;
        sub_10028BCC0(v6, v5);
      }

      else
      {
        sub_10028BCC0(v6, v5);
      }
    }
  }

  v14 = v1[68];
  v15 = v1[67];
  v16 = v1[66];
  v17 = v1[65];
  (*(v1[57] + 16))(v1[58], v1[47], v1[56]);
  (*(v16 + 16))(v15, v14, v17);

  v18 = v1[59];
  v19 = v1[53];
  v20 = v1[54];
  sub_10000FF90(v1[60], v18, &unk_100976120, &qword_1007F9260);
  LODWORD(v18) = (*(v20 + 48))(v18, 1, v19);

  if (v18 == 1)
  {
    v21 = v1 + 55;
    sub_100005508(v1[59], &unk_100976120, &qword_1007F9260);
    UUID.init()();
  }

  else
  {
    v21 = v1 + 59;
  }

  v22 = *v21;
  v33 = v1[81];
  v23 = v1[80];
  v24 = v1[79];
  v37 = v1[68];
  v38 = v1[69];
  v34 = v1[66];
  v36 = v1[65];
  v35 = v1[60];
  v25 = v1[54];
  v26 = v1[52];
  v27 = v1[53];
  v28 = v1[51];
  UUID.uuidString.getter();
  (*(v25 + 8))(v22, v27);
  v29 = type metadata accessor for SFAirDropReceive.AskRequest.AdvancedItemsDescription();
  (*(*(v29 - 8) + 56))(v26, 1, 1, v29);

  sub_1002929F0(v23);

  sub_100292B8C(v33);

  sub_1002A9924(*(v28 + *(v24 + 68)), *(v28 + *(v24 + 68) + 8));
  SFAirDropReceive.AskRequest.init(id:type:transferTypes:canAutoAccept:verifiableIdentity:senderIsMe:contactIdentifier:senderBundleID:senderComputerName:senderModelName:senderEmail:senderEmailHash:senderCompositeName:senderFirstName:senderLastName:senderID:senderIcon:smallPreviewImage:previewImage:itemsDescription:itemsDescriptionAdvanced:urlItems:items:customPayload:)();
  sub_100005508(v35, &unk_100976120, &qword_1007F9260);
  v30 = *(v34 + 8);
  v30(v37, v36);
  v30(v38, v36);

  v31 = v1[1];

  return v31();
}

uint64_t sub_1005A86E0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  if (a1[3])
  {
    v3 = *a1;
    v4 = a1[1];
    if (a1[9])
    {
    }

    else
    {

      v10._countAndFlagsBits = v3;
      v10._object = v4;
      String.append(_:)(v10);
    }

    SFAirDropReceive.AskRequest.ItemInfo.init(convertMediaFormats:fileBomPath:fileIsDirectory:fileName:fileSubType:fileType:)();
    v9 = 0;
  }

  else
  {
    if (qword_100973AD0 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_10000C4AC(v5, qword_1009845B0);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "Missing fileType for ASK", v8, 2u);
    }

    v9 = 1;
  }

  v11 = type metadata accessor for SFAirDropReceive.AskRequest.ItemInfo();
  return (*(*(v11 - 8) + 56))(a2, v9, 1, v11);
}

unint64_t sub_1005A88E4(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1008D7E60, v2);

  if (v3 >= 0xE)
  {
    return 14;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1005A8930(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v205 = a1;
  v206 = a3;
  v204 = 0;
  v4 = sub_10028088C(&qword_100975180, &qword_100805430);
  v5 = __chkstk_darwin(v4 - 8);
  v187 = &v181 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v197 = &v181 - v8;
  __chkstk_darwin(v7);
  v209 = &v181 - v9;
  v190 = type metadata accessor for URLResourceValues();
  v189 = *(v190 - 8);
  v10 = __chkstk_darwin(v190);
  v188 = &v181 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v192 = &v181 - v12;
  v207 = type metadata accessor for URL();
  v210 = *(v207 - 8);
  v13 = __chkstk_darwin(v207);
  v196 = &v181 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v191 = &v181 - v16;
  __chkstk_darwin(v15);
  v193 = &v181 - v17;
  v18 = sub_10028088C(&unk_100974E00, &qword_1007F8940);
  v19 = __chkstk_darwin(v18 - 8);
  v201 = &v181 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v184 = &v181 - v22;
  v23 = __chkstk_darwin(v21);
  v25 = &v181 - v24;
  v26 = __chkstk_darwin(v23);
  v194 = &v181 - v27;
  v28 = __chkstk_darwin(v26);
  v185 = &v181 - v29;
  v30 = __chkstk_darwin(v28);
  v183 = &v181 - v31;
  v32 = __chkstk_darwin(v30);
  v34 = &v181 - v33;
  v35 = __chkstk_darwin(v32);
  v37 = &v181 - v36;
  v38 = __chkstk_darwin(v35);
  v200 = &v181 - v39;
  __chkstk_darwin(v38);
  v202 = &v181 - v40;
  v41 = type metadata accessor for UTType();
  v42 = *(v41 - 8);
  v43 = __chkstk_darwin(v41);
  v182 = &v181 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = __chkstk_darwin(v43);
  v186 = &v181 - v46;
  v47 = __chkstk_darwin(v45);
  v195 = &v181 - v48;
  __chkstk_darwin(v47);
  v50 = &v181 - v49;
  v51 = [objc_opt_self() contentType];
  static UTType._unconditionallyBridgeFromObjectiveC(_:)();

  v52 = UTType.identifier.getter();
  v54 = v53;
  v208 = v42;
  v55 = *(v42 + 8);
  v203 = v41;
  v56 = v41;
  v57 = v206;
  v199 = v42 + 8;
  v198 = v55;
  v55(v50, v56);
  v211 = a2;
  if (v52 == a2 && v54 == v57)
  {
  }

  else
  {
    v58 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v58 & 1) == 0)
    {
      v200 = 0;
      v201 = 0;
      v70 = 0;
      v66 = v207;
      v71 = v208;
      v72 = v203;
      goto LABEL_43;
    }
  }

  v59 = objc_allocWithZone(PFAssetBundle);
  URL._bridgeToObjectiveC()(v60);
  v62 = v61;
  v63 = [v59 initWithAssetBundleAtURL:v61];

  v64 = v210[7];
  v65 = v202;
  v66 = v207;
  v64(v202, 1, 1, v207);
  if (v63)
  {
    if ([v63 mediaType] == 2)
    {
      v67 = [v63 fullSizeVideoURL];
      if (v67)
      {
        v68 = v67;
        static URL._unconditionallyBridgeFromObjectiveC(_:)();

        v69 = 0;
      }

      else
      {
        v69 = 1;
      }

      v76 = v210;
      v64(v34, v69, 1, v66);
      sub_10002C4E4(v34, v37, &unk_100974E00, &qword_1007F8940);
      v77 = v76[6];
      if (v77(v37, 1, v66) == 1)
      {
        v78 = [v63 videoURL];
        if (v78)
        {
          v79 = v183;
          v80 = v78;
          static URL._unconditionallyBridgeFromObjectiveC(_:)();

          v81 = 0;
        }

        else
        {
          v81 = 1;
          v79 = v183;
        }

        sub_100005508(v65, &unk_100974E00, &qword_1007F8940);
        v93 = v81;
        v94 = v207;
        v64(v79, v93, 1, v207);
        sub_10002C4E4(v79, v200, &unk_100974E00, &qword_1007F8940);
        if (v77(v37, 1, v94) != 1)
        {
          sub_100005508(v37, &unk_100974E00, &qword_1007F8940);
        }

        v66 = v207;
        v83 = v200;
      }

      else
      {
        sub_100005508(v65, &unk_100974E00, &qword_1007F8940);
        v82 = v200;
        (v76[4])(v200, v37, v66);
        v64(v82, 0, 1, v66);
        v83 = v82;
      }
    }

    else
    {
      if ([v63 mediaType] != 1)
      {
        goto LABEL_32;
      }

      v73 = [v63 fullSizePhotoURL];
      if (v73)
      {
        v74 = v73;
        static URL._unconditionallyBridgeFromObjectiveC(_:)();

        v75 = 0;
      }

      else
      {
        v75 = 1;
      }

      v84 = v194;
      v85 = v184;
      v64(v25, v75, 1, v66);
      sub_10002C4E4(v25, v84, &unk_100974E00, &qword_1007F8940);
      v86 = v210;
      v87 = v210[6];
      if (v87(v84, 1, v66) == 1)
      {
        v88 = [v63 photoURL];
        if (v88)
        {
          v89 = v88;
          static URL._unconditionallyBridgeFromObjectiveC(_:)();

          v90 = 0;
        }

        else
        {
          v90 = 1;
        }

        sub_100005508(v202, &unk_100974E00, &qword_1007F8940);
        v64(v85, v90, 1, v66);
        v95 = v185;
        sub_10002C4E4(v85, v185, &unk_100974E00, &qword_1007F8940);
        v96 = v194;
        if (v87(v194, 1, v66) != 1)
        {
          sub_100005508(v96, &unk_100974E00, &qword_1007F8940);
        }

        v83 = v95;
        v65 = v202;
      }

      else
      {
        v65 = v202;
        sub_100005508(v202, &unk_100974E00, &qword_1007F8940);
        v91 = v86[4];
        v92 = v185;
        v91(v185, v84, v66);
        v64(v92, 0, 1, v66);
        v83 = v92;
      }
    }

    sub_10002C4E4(v83, v65, &unk_100974E00, &qword_1007F8940);
  }

LABEL_32:
  v194 = v63;
  v97 = v201;
  sub_10000FF90(v65, v201, &unk_100974E00, &qword_1007F8940);
  v98 = v210;
  v99 = (v210[6])(v97, 1, v66);
  v72 = v203;
  v71 = v208;
  if (v99 == 1)
  {
    sub_100005508(v65, &unk_100974E00, &qword_1007F8940);

    sub_100005508(v97, &unk_100974E00, &qword_1007F8940);
    v200 = 0;
    v201 = 0;
    v70 = 1;
  }

  else
  {
    v100 = v193;
    (v98[4])(v193, v97, v66);
    sub_10028088C(&qword_100976C30, &qword_1007F8818);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1007F5670;
    *(inited + 32) = NSURLTypeIdentifierKey;
    v102 = NSURLTypeIdentifierKey;
    sub_1002F13BC(inited);
    swift_setDeallocating();
    sub_1005AB79C(inited + 32, type metadata accessor for URLResourceKey);
    v103 = v192;
    v104 = v204;
    URL.resourceValues(forKeys:)();
    if (v104)
    {

      if (qword_100973AD0 != -1)
      {
        swift_once();
      }

      v105 = type metadata accessor for Logger();
      sub_10000C4AC(v105, qword_1009845B0);
      v106 = v98[2];
      v107 = v98;
      v108 = v191;
      v106(v191, v100, v66);
      swift_errorRetain();
      v109 = Logger.logObject.getter();
      v110 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v109, v110))
      {
        v111 = swift_slowAlloc();
        v204 = v104;
        v112 = v111;
        v113 = swift_slowAlloc();
        v114 = swift_slowAlloc();
        v212 = v114;
        *v112 = 136315394;
        sub_1005AB7FC(&qword_100975160, &type metadata accessor for URL, &protocol conformance descriptor for URL);
        v115 = v110;
        v116 = dispatch thunk of CustomStringConvertible.description.getter();
        v118 = v117;
        v119 = v210[1];
        v119(v108, v207);
        v120 = sub_10000C4E4(v116, v118, &v212);

        *(v112 + 4) = v120;
        *(v112 + 12) = 2112;
        swift_errorRetain();
        v121 = _swift_stdlib_bridgeErrorToNSError();
        *(v112 + 14) = v121;
        *v113 = v121;
        _os_log_impl(&_mh_execute_header, v109, v115, "Subtype for asset bundle couldn't be determined for URL: %s. Error: %@", v112, 0x16u);
        sub_100005508(v113, &qword_100975400, &qword_1007F65D0);

        sub_10000C60C(v114);

        v72 = v203;

        v119(v193, v207);
        v66 = v207;
        v71 = v208;
        v122 = v202;
      }

      else
      {

        v124 = v107[1];
        v124(v108, v66);
        v124(v100, v66);
        v122 = v65;
      }

      sub_100005508(v122, &unk_100974E00, &qword_1007F8940);
      v200 = 0;
      v201 = 0;
      v204 = 0;
    }

    else
    {
      v204 = 0;

      v200 = URLResourceValues.typeIdentifier.getter();
      v201 = v123;
      (*(v189 + 8))(v103, v190);

      (v98[1])(v100, v66);
      sub_100005508(v65, &unk_100974E00, &qword_1007F8940);
    }

    v70 = 1;
    v57 = v206;
  }

LABEL_43:
  v125 = v57;
  v126 = String._bridgeToObjectiveC()();
  v127 = 1;
  v128 = [objc_opt_self() _typeWithIdentifier:v126 allowUndeclared:1];

  v129 = *(v71 + 56);
  if (v128)
  {
    v130 = v197;
    v129(v197, 1, 1, v72);
    sub_1005AB7FC(&qword_100975188, &type metadata accessor for UTType, &protocol conformance descriptor for UTType);
    dispatch thunk of static _ObjectiveCBridgeable._conditionallyBridgeFromObjectiveC(_:result:)();

    v131 = v130;
    v71 = v208;
    if ((*(v208 + 48))(v131, 1, v72) != 1)
    {
      (*(v71 + 32))(v209, v131, v72);
      v127 = 0;
    }
  }

  v132 = v209;
  v129(v209, v127, 1, v72);
  if (v70)
  {
    v133 = v132;
LABEL_70:
    sub_100005508(v133, &qword_100975180, &qword_100805430);
    return v200;
  }

  v134 = v195;
  static UTType.livePhoto.getter();
  v135 = UTType.identifier.getter();
  v137 = v136;
  v198(v134, v72);
  if (v135 == v211 && v137 == v125)
  {

    v138 = v196;
  }

  else
  {
    v139 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v138 = v196;
    if ((v139 & 1) == 0)
    {
      v164 = v209;
      v165 = v187;
      sub_10000FF90(v209, v187, &qword_100975180, &qword_100805430);
      if ((*(v71 + 48))(v165, 1, v72) == 1)
      {
        sub_100005508(v164, &qword_100975180, &qword_100805430);
        v133 = v165;
        goto LABEL_70;
      }

      v166 = v186;
      static UTType.livePhoto.getter();
      v167 = UTType.conforms(to:)();
      v168 = v166;
      v169 = v198;
      v198(v168, v72);
      v169(v165, v72);
      if ((v167 & 1) == 0)
      {
LABEL_69:
        v133 = v209;
        goto LABEL_70;
      }
    }
  }

  v140 = objc_allocWithZone(PFVideoComplement);
  URL._bridgeToObjectiveC()(v141);
  v143 = v142;
  v144 = [v140 initWithBundleAtURL:v142];

  if (!v144)
  {
    goto LABEL_69;
  }

  v145 = [v144 imagePath];
  if (!v145)
  {
    sub_100005508(v209, &qword_100975180, &qword_100805430);

    return v200;
  }

  v146 = v145;
  v147 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v149 = v148;

  URL.init(fileURLWithPath:)();
  sub_10028088C(&qword_100976C30, &qword_1007F8818);
  v150 = swift_initStackObject();
  *(v150 + 16) = xmmword_1007F5670;
  *(v150 + 32) = NSURLTypeIdentifierKey;
  v151 = NSURLTypeIdentifierKey;
  sub_1002F13BC(v150);
  swift_setDeallocating();
  sub_1005AB79C(v150 + 32, type metadata accessor for URLResourceKey);
  v152 = v188;
  v153 = v204;
  URL.resourceValues(forKeys:)();
  if (v153)
  {

    (v210[1])(v138, v66);
    if (qword_100973AD0 != -1)
    {
      swift_once();
    }

    v154 = type metadata accessor for Logger();
    sub_10000C4AC(v154, qword_1009845B0);

    swift_errorRetain();
    v155 = Logger.logObject.getter();
    v156 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v155, v156))
    {
      v157 = swift_slowAlloc();
      v158 = swift_slowAlloc();
      v159 = swift_slowAlloc();
      v160 = v147;
      v161 = v159;
      v212 = v159;
      *v157 = 136315394;
      v162 = sub_10000C4E4(v160, v149, &v212);

      *(v157 + 4) = v162;
      *(v157 + 12) = 2112;
      swift_errorRetain();
      v163 = _swift_stdlib_bridgeErrorToNSError();
      *(v157 + 14) = v163;
      *v158 = v163;
      _os_log_impl(&_mh_execute_header, v155, v156, "Subtype for live photo couldn't be determined for URL: %s. Error: %@", v157, 0x16u);
      sub_100005508(v158, &qword_100975400, &qword_1007F65D0);

      sub_10000C60C(v161);
    }

    else
    {
    }

    goto LABEL_69;
  }

  v170 = URLResourceValues.typeIdentifier.getter();
  v172 = v171;
  (*(v189 + 8))(v152, v190);
  (v210[1])(v138, v66);

  v173 = v182;
  static UTType.jpeg.getter();
  v174 = UTType.identifier.getter();
  v176 = v175;
  v198(v173, v72);
  if (!v172)
  {

    goto LABEL_75;
  }

  if (v170 != v174 || v172 != v176)
  {
    v178 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v178)
    {
      goto LABEL_74;
    }

LABEL_75:
    v179 = v186;
    static UTType.heic.getter();
    goto LABEL_76;
  }

LABEL_74:
  v179 = v186;
  static UTType.jpeg.getter();
LABEL_76:
  v180 = UTType.identifier.getter();

  v198(v179, v72);
  sub_100005508(v209, &qword_100975180, &qword_100805430);
  return v180;
}

uint64_t sub_1005AA000@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t *a4@<X8>)
{
  v74 = a3;
  v83 = a2;
  v75 = a4;
  v6 = type metadata accessor for URLResourceValues();
  v7 = *(v6 - 8);
  v81 = v6;
  v82 = v7;
  v8 = __chkstk_darwin(v6);
  v10 = v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = v69 - v11;
  v78 = sub_10028088C(&qword_100975180, &qword_100805430);
  __chkstk_darwin(v78);
  v80 = v69 - v13;
  v14 = type metadata accessor for UTType();
  v77 = *(v14 - 8);
  __chkstk_darwin(v14);
  v79 = v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10028088C(&qword_100976C30, &qword_1007F8818);
  inited = swift_initStackObject();
  v76 = xmmword_1007F5670;
  *(inited + 16) = xmmword_1007F5670;
  *(inited + 32) = NSURLContentTypeKey;
  v18 = NSURLContentTypeKey;
  sub_1002F13BC(inited);
  swift_setDeallocating();
  sub_1005AB79C(inited + 32, type metadata accessor for URLResourceKey);
  v84 = a1;
  URL.resourceValues(forKeys:)();
  if (v4)
  {

    v19 = type metadata accessor for URL();
    v20 = *(*(v19 - 8) + 8);
    v20(v83, v19);
    return (v20)(v84, v19);
  }

  else
  {
    v73 = v14;
    v69[1] = v16;
    v70 = v10;

    v22 = v80;
    URLResourceValues.contentType.getter();
    v24 = v82 + 8;
    v23 = *(v82 + 8);
    v23(v12, v81);
    v86 = 0;
    v87 = 0xE000000000000000;
    _StringGuts.grow(_:)(34);

    v86 = 0xD00000000000001FLL;
    v87 = 0x8000000100796C60;
    v25 = type metadata accessor for URL();
    v71 = sub_1005AB7FC(&qword_100975160, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v26._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v26);

    v27._countAndFlagsBits = 125;
    v27._object = 0xE100000000000000;
    String.append(_:)(v27);
    v72 = "Failed to get fileUTType {url: ";
    v28 = v79;
    Optional.tryUnwrap(_:file:line:)();
    v78 = v23;
    v82 = v24;
    sub_100005508(v22, &qword_100975180, &qword_100805430);

    v29 = UTType.identifier.getter();
    v31 = v30;
    (*(v77 + 8))(v28, v73);
    v32 = v29;
    v79 = sub_1005A8930(v84, v29, v31);
    v80 = v33;
    URL._bridgeToObjectiveC()(v34);
    v36 = v35;
    URL._bridgeToObjectiveC()(v37);
    v39 = v38;
    v40 = sub_1001F09CC(v36, v38);

    v85 = v40;
    v86 = 0;
    v87 = 0xE000000000000000;
    _StringGuts.grow(_:)(61);
    v41._countAndFlagsBits = 0xD000000000000025;
    v41._object = 0x8000000100796CE0;
    String.append(_:)(v41);
    v42._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v42);

    v43._countAndFlagsBits = 0xD000000000000013;
    v43._object = 0x8000000100796D10;
    String.append(_:)(v43);
    v44._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v44);

    v45._countAndFlagsBits = 125;
    v45._object = 0xE100000000000000;
    String.append(_:)(v45);
    sub_10028088C(&qword_100984748, &qword_10080BDE8);
    Optional.tryUnwrap(_:file:line:)();
    v72 = v32;
    v77 = v31;
    v73 = v25;

    v46 = v88;
    v47 = String.init(cString:)();
    v49 = v48;
    free(v46);
    v50 = URL.lastPathComponent.getter();
    v52 = v51;
    v53 = swift_initStackObject();
    *(v53 + 16) = v76;
    *(v53 + 32) = NSURLFileSizeKey;
    v54 = NSURLFileSizeKey;
    sub_1002F13BC(v53);
    swift_setDeallocating();
    sub_1005AB79C(v53 + 32, type metadata accessor for URLResourceKey);
    v55 = v70;
    URL.resourceValues(forKeys:)();
    *&v76 = v47;

    v56 = URLResourceValues.fileSize.getter();
    v58 = v57;
    v78(v55, v81);
    v59 = URL.isDirectory()();
    if (v60)
    {

      v61 = v73;
      v62 = *(*(v73 - 8) + 8);
      v62(v83, v73);
      return (v62)(v84, v61);
    }

    else
    {
      v63 = v59;
      if (v58)
      {
        v64 = 0;
      }

      else
      {
        v64 = v56;
      }

      v65 = v73;
      v66 = *(*(v73 - 8) + 8);
      v66(v83, v73);
      result = (v66)(v84, v65);
      v67 = v74 & 1;
      v68 = v75;
      *v75 = v50;
      v68[1] = v52;
      v68[2] = v72;
      v68[3] = v77;
      v68[4] = v79;
      v68[5] = v80;
      v68[6] = v64;
      *(v68 + 56) = 0;
      *(v68 + 57) = v86;
      *(v68 + 15) = *(&v86 + 3);
      v68[8] = v76;
      v68[9] = v49;
      *(v68 + 80) = v63;
      *(v68 + 81) = v67;
    }
  }

  return result;
}

unint64_t sub_1005AA8FC(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1008D7FD0, v2);

  if (v3 >= 7)
  {
    return 7;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1005AA948@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_10028088C(&qword_1009846C0, &qword_10080BDA0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v26 - v7;
  sub_10002CDC0(a1, a1[3]);
  sub_1005AAEC8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000C60C(a1);
  }

  LOBYTE(v43[0]) = 0;
  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  v35 = v10;
  LOBYTE(v43[0]) = 1;
  *&v34 = KeyedDecodingContainer.decode(_:forKey:)();
  *(&v34 + 1) = v11;
  LOBYTE(v43[0]) = 2;
  v12 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  LOBYTE(v43[0]) = 3;
  v13 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v33 = v14;
  v29 = v13;
  LOBYTE(v43[0]) = 4;
  v32 = 0;
  v28 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v31 = v15;
  LOBYTE(v43[0]) = 5;
  v27 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v30 = v16;
  v56 = 6;
  sub_1002F309C();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v6 + 8))(v8, v5);
  v32 = v53;
  v26 = v54;
  *&v36 = v9;
  v17 = v35;
  *(&v36 + 1) = v35;
  v18 = v34;
  v37 = v34;
  v19 = *(&v34 + 1);
  v55 = v12;
  LOBYTE(v38) = v12;
  *(&v38 + 1) = v29;
  *&v39 = v33;
  v20 = v31;
  *(&v39 + 1) = v28;
  *&v40 = v31;
  v21 = v30;
  *(&v40 + 1) = v27;
  *&v41 = v30;
  *(&v41 + 1) = v53;
  v42 = v54;
  sub_1003C34C8(&v36, v43);
  sub_10000C60C(a1);
  v43[0] = v9;
  v43[1] = v17;
  v43[2] = v18;
  v43[3] = v19;
  v44 = v55;
  v45 = v29;
  v46 = v33;
  v47 = v28;
  v48 = v20;
  v49 = v27;
  v50 = v21;
  v51 = v32;
  v52 = v26;
  result = sub_10030D74C(v43);
  v23 = v41;
  *(a2 + 64) = v40;
  *(a2 + 80) = v23;
  *(a2 + 96) = v42;
  v24 = v37;
  *a2 = v36;
  *(a2 + 16) = v24;
  v25 = v39;
  *(a2 + 32) = v38;
  *(a2 + 48) = v25;
  return result;
}

unint64_t sub_1005AAEC8()
{
  result = qword_1009846C8;
  if (!qword_1009846C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009846C8);
  }

  return result;
}

unint64_t sub_1005AAF1C()
{
  result = qword_1009846E0;
  if (!qword_1009846E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009846E0);
  }

  return result;
}

unint64_t sub_1005AAF70()
{
  result = qword_100984700;
  if (!qword_100984700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100984700);
  }

  return result;
}

uint64_t sub_1005AAFC4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1005AB02C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_100280938(&unk_100976C20, &unk_1007F9D80);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1005AB098(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_100280938(&unk_100984648, &qword_10080BC00);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1005AB110()
{
  result = qword_100984728;
  if (!qword_100984728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100984728);
  }

  return result;
}

unint64_t sub_1005AB164(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1008D8098, v2);

  if (v3 >= 7)
  {
    return 7;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1005AB1B0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_10028088C(&qword_100984730, &qword_10080BDC0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v23 - v7;
  sub_10002CDC0(a1, a1[3]);
  sub_1005AB640();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000C60C(a1);
  }

  LOBYTE(v37[0]) = 0;
  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  v30 = v10;
  LOBYTE(v37[0]) = 1;
  *&v29 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  *(&v29 + 1) = v11;
  LOBYTE(v37[0]) = 2;
  v28 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v13 = v12;
  LOBYTE(v37[0]) = 3;
  v26 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v47 = v14 & 1;
  LOBYTE(v37[0]) = 4;
  v25 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v27 = v15;
  LOBYTE(v37[0]) = 5;
  v24 = KeyedDecodingContainer.decode(_:forKey:)();
  v48 = 6;
  v16 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v24 &= 1u;
  (*(v6 + 8))(v8, v5);
  *&v31 = v9;
  *(&v31 + 1) = v30;
  v32 = v29;
  *&v33 = v28;
  *(&v33 + 1) = v13;
  *&v34 = v26;
  v17 = v47;
  BYTE8(v34) = v47;
  v18 = v25;
  v19 = v27;
  *&v35 = v25;
  *(&v35 + 1) = v27;
  LOBYTE(v36) = v24;
  HIBYTE(v36) = v16;
  sub_1002A56F0(&v31, v37);
  sub_10000C60C(a1);
  v37[0] = v9;
  v37[1] = v30;
  v38 = v29;
  v39 = v28;
  v40 = v13;
  v41 = v26;
  v42 = v17;
  v43 = v18;
  v44 = v19;
  v45 = v24;
  v46 = v16;
  result = sub_1002A574C(v37);
  v21 = v34;
  *(a2 + 32) = v33;
  *(a2 + 48) = v21;
  *(a2 + 64) = v35;
  *(a2 + 80) = v36;
  v22 = v32;
  *a2 = v31;
  *(a2 + 16) = v22;
  return result;
}

unint64_t sub_1005AB640()
{
  result = qword_100984738;
  if (!qword_100984738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100984738);
  }

  return result;
}

uint64_t sub_1005AB694(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_100005C04;

  return sub_1005A4B40(a1, a2, v6, v7, v8);
}

uint64_t sub_1005AB79C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1005AB7FC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1005AB878()
{
  result = qword_100984750;
  if (!qword_100984750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100984750);
  }

  return result;
}

unint64_t sub_1005AB8D0()
{
  result = qword_100984758;
  if (!qword_100984758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100984758);
  }

  return result;
}

unint64_t sub_1005AB928()
{
  result = qword_100984760;
  if (!qword_100984760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100984760);
  }

  return result;
}

unint64_t sub_1005AB980()
{
  result = qword_100984768;
  if (!qword_100984768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100984768);
  }

  return result;
}

unint64_t sub_1005AB9D8()
{
  result = qword_100984770;
  if (!qword_100984770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100984770);
  }

  return result;
}

unint64_t sub_1005ABA30()
{
  result = qword_100984778;
  if (!qword_100984778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100984778);
  }

  return result;
}

unint64_t sub_1005ABA88()
{
  result = qword_100984780;
  if (!qword_100984780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100984780);
  }

  return result;
}

unint64_t sub_1005ABAE0()
{
  result = qword_100984788;
  if (!qword_100984788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100984788);
  }

  return result;
}

unint64_t sub_1005ABB38()
{
  result = qword_100984790;
  if (!qword_100984790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100984790);
  }

  return result;
}

unint64_t sub_1005ABBAC()
{
  result = qword_100984798;
  if (!qword_100984798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100984798);
  }

  return result;
}

void sub_1005ABC38(uint64_t a1)
{
  sub_1005ABE6C(319, &qword_100980590, &type metadata accessor for NWConnection);
  if (v1 <= 0x3F)
  {
    sub_1005ABCC8(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1005ABCC8(uint64_t a1)
{
  if (!qword_100984840)
  {
    type metadata accessor for NWConnection();
    type metadata accessor for UUID();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_100984840);
    }
  }
}

void sub_1005ABD5C(uint64_t a1)
{
  sub_1005ABE6C(319, &qword_1009848F0, sub_1005ABE08);
  if (v1 <= 0x3F)
  {
    sub_1005ABE6C(319, &unk_100984900, &type metadata accessor for SFAirDrop.TransferIdentifier);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

unint64_t sub_1005ABE08()
{
  result = qword_1009848F8;
  if (!qword_1009848F8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1009848F8);
  }

  return result;
}

void sub_1005ABE6C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1005ABEB8(uint64_t a1, uint64_t a2)
{
  v3[20] = a2;
  v3[21] = v2;
  v3[19] = a1;
  v4 = type metadata accessor for UUID();
  v3[22] = v4;
  v3[23] = *(v4 - 8);
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();
  sub_10028088C(&unk_100977BE0, &unk_1007FAE40);
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();
  v5 = type metadata accessor for SFAirDrop.TransferIdentifier();
  v3[28] = v5;
  v3[29] = *(v5 - 8);
  v3[30] = swift_task_alloc();
  v3[31] = swift_task_alloc();
  type metadata accessor for SDAirDropMessage(0);
  v3[32] = swift_task_alloc();
  v3[33] = type metadata accessor for SDAirDropServerConnection(0);
  v3[34] = swift_task_alloc();
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();
  v3[37] = swift_task_alloc();

  return _swift_task_switch(sub_1005AC0B4, 0, 0);
}

uint64_t sub_1005AC0B4()
{
  if (qword_100973AD8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[38] = sub_10000C4AC(v1, qword_1009847A0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Ready to receive AirDrop Message", v4, 2u);
  }

  v5 = v0[37];
  v6 = v0[21];

  sub_1005AE94C(v6, v5, type metadata accessor for SDAirDropServerConnection);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v8 = *v5;
  v0[39] = v8;
  if (EnumCaseMultiPayload >= 2)
  {
    v9 = v0[37];
    v10 = v0[22];
    v11 = v0[23];
    v12 = sub_10028088C(&unk_10097A650, &qword_1007FD780);
    (*(v11 + 8))(v9 + *(v12 + 48), v10);
  }

  v13 = swift_task_alloc();
  v0[40] = v13;
  *(v13 + 16) = v8;
  *(v13 + 24) = 0;
  v14 = swift_task_alloc();
  v0[41] = v14;
  *v14 = v0;
  v14[1] = sub_1005AC2E0;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 2, 0, 0, 0xD000000000000027, 0x8000000100796E60, sub_1005AFFB4, v13, &type metadata for SDNWHTTPMessage);
}

uint64_t sub_1005AC2E0()
{
  *(*v1 + 336) = v0;

  if (v0)
  {
    v2 = sub_1005ACE70;
  }

  else
  {

    v2 = sub_1005AC3FC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1005AC3FC()
{

  v1 = *(v0 + 32);
  *(v0 + 136) = v1;
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  *(v0 + 344) = v2;
  *(v0 + 352) = v1;
  v5 = *(v0 + 40);
  v4 = *(v0 + 48);
  *(v0 + 360) = v5;
  *(v0 + 368) = v4;
  v6 = *(v0 + 56);
  *(v0 + 144) = v5;
  v7 = v3 == 0x64616F6C70552FLL && v2 == 0xE700000000000000;
  if (!v7 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    v24 = *(v0 + 288);
    sub_1005AE94C(*(v0 + 168), v24, type metadata accessor for SDAirDropServerConnection);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v26 = *v24;
    *(v0 + 376) = v26;
    if (EnumCaseMultiPayload > 1)
    {
      v65 = v5;
      v66 = *(v0 + 288);
      v67 = *(v0 + 176);
      v68 = *(v0 + 184);
      v69 = *(sub_10028088C(&unk_10097A650, &qword_1007FD780) + 48);
      sub_100294008(v1, v65);
      (*(v68 + 8))(v66 + v69, v67);
    }

    else
    {
      sub_100294008(v1, v5);
    }

    v70 = swift_task_alloc();
    *(v0 + 384) = v70;
    *v70 = v0;
    v70[1] = sub_1005ACF70;
    v20 = &type metadata for SDNWHTTPMessage;
    v18 = sub_1005AFFBC;
    v13 = v0 + 64;
    v17 = 0x8000000100796E90;
    v14 = 0;
    v15 = 0;
    v16 = 0xD000000000000014;
    v19 = v26;

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v13, v14, v15, v16, v17, v18, v19, v20);
  }

  v95 = v4;
  v96 = v2;
  v94 = v5;
  sub_100294008(v1, v5);
  v8 = *(v0 + 336);
  v10 = *(v0 + 136);
  v9 = *(v0 + 144);
  sub_100294008(v10, v9);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();
  if (!os_log_type_enabled(v11, v12))
  {
    sub_100026AC0(v10, v9);
    goto LABEL_21;
  }

  v93 = v1;
  v13 = swift_slowAlloc();
  v21 = v13;
  *v13 = 134217984;
  v22 = v9 >> 62;
  if ((v9 >> 62) > 1)
  {
    if (v22 != 2)
    {
      v23 = 0;
      goto LABEL_20;
    }

    v28 = *(v10 + 16);
    v27 = *(v10 + 24);
    v29 = __OFSUB__(v27, v28);
    v23 = v27 - v28;
    if (!v29)
    {
      goto LABEL_20;
    }

    __break(1u);
    goto LABEL_17;
  }

  if (v22)
  {
LABEL_17:
    LODWORD(v23) = HIDWORD(v10) - v10;
    if (!__OFSUB__(HIDWORD(v10), v10))
    {
      v23 = v23;
      goto LABEL_20;
    }

    __break(1u);
    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v13, v14, v15, v16, v17, v18, v19, v20);
  }

  v23 = BYTE6(v9);
LABEL_20:
  *(v13 + 4) = v23;
  sub_100026AC0(v10, v9);
  _os_log_impl(&_mh_execute_header, v11, v12, "Received HTTP message data %ld", v21, 0xCu);

  v1 = v93;
LABEL_21:
  v30 = *(v0 + 256);

  swift_beginAccess();
  sub_1006767B8(v3, v96, v95, v6, *(v0 + 136), *(v0 + 144), v30);
  if (!v8)
  {
    sub_1005AE94C(*(v0 + 168), *(v0 + 280), type metadata accessor for SDAirDropServerConnection);
    v32 = swift_getEnumCaseMultiPayload();
    v33 = *(v0 + 280);
    if (v32)
    {
      if (v32 == 1)
      {
        v34 = *(v0 + 224);
        v35 = *(v0 + 232);
        v36 = *(v0 + 208);
        sub_1005AFF54(v33, type metadata accessor for SDAirDropServerConnection);
        sub_100566750(v36);
        if ((*(v35 + 48))(v36, 1, v34) == 1)
        {
          sub_10047997C(*(v0 + 208));
          v37 = Logger.logObject.getter();
          v38 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v37, v38))
          {
            v39 = swift_slowAlloc();
            *v39 = 0;
            _os_log_impl(&_mh_execute_header, v37, v38, "Missing request transferID", v39, 2u);
LABEL_46:

            goto LABEL_48;
          }

          goto LABEL_48;
        }

        v71 = *(v0 + 256);
        v73 = *(v0 + 232);
        v72 = *(v0 + 240);
        v74 = *(v0 + 224);
        v75 = *(v0 + 208);
        v76 = v1;
        v78 = *(v0 + 152);
        v77 = *(v0 + 160);
        sub_100026AC0(*(v0 + 136), *(v0 + 144));

        sub_100026AC0(v76, v94);
        swift_unknownObjectRelease();
        v79 = *(v73 + 32);
        v79(v72, v75, v74);
        sub_1005B000C(v71, v78);
        v79(v77, v72, v74);
        type metadata accessor for SDAirDropServerConnectionIdentity(0);
      }

      else
      {
        v56 = *(v0 + 256);
        v58 = *(v0 + 192);
        v57 = *(v0 + 200);
        v59 = *(v0 + 176);
        v60 = *(v0 + 184);
        v61 = v1;
        v62 = *(v0 + 152);
        v63 = *(v0 + 280);

        v64 = sub_10028088C(&unk_10097A650, &qword_1007FD780);
        (*(v60 + 32))(v57, v63 + *(v64 + 48), v59);
        sub_1005AE94C(v56, v62, type metadata accessor for SDAirDropMessage);
        (*(v60 + 16))(v58, v57, v59);
        SFAirDrop.TransferIdentifier.init(_:)();
        (*(v60 + 8))(v57, v59);
        sub_1005AFF54(v56, type metadata accessor for SDAirDropMessage);
        sub_100026AC0(*(v0 + 136), *(v0 + 144));

        sub_100026AC0(v61, v94);
        swift_unknownObjectRelease();
        type metadata accessor for SDAirDropServerConnectionIdentity(0);
      }
    }

    else
    {
      v40 = *(v0 + 272);
      v41 = *(v0 + 168);
      sub_1005AFF54(v33, type metadata accessor for SDAirDropServerConnection);
      sub_1005AE94C(v41, v40, type metadata accessor for SDAirDropServerConnection);
      if (swift_getEnumCaseMultiPayload() >= 2)
      {
        v42 = *(v0 + 272);
        v43 = *(v0 + 176);
        v44 = *(v0 + 184);
        v45 = sub_10028088C(&unk_10097A650, &qword_1007FD780);
        (*(v44 + 8))(v42 + *(v45 + 48), v43);
      }

      v46 = NWConnection.nw.getter();

      v47 = nw_protocol_copy_http_connection_definition();
      v48 = nw_connection_copy_protocol_metadata(v46, v47);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      if (!v48)
      {
        v37 = Logger.logObject.getter();
        v81 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v37, v81))
        {
          v82 = swift_slowAlloc();
          *v82 = 0;
          _os_log_impl(&_mh_execute_header, v37, v81, "Missing connection definition", v82, 2u);
          goto LABEL_46;
        }

LABEL_48:
        v90 = *(v0 + 256);

        v91 = type metadata accessor for SFAirDropReceive.Failure();
        sub_1005AFFC4(&unk_10097A660, &type metadata accessor for SFAirDropReceive.Failure, &protocol conformance descriptor for SFAirDropReceive.Failure);
        swift_allocError();
        (*(*(v91 - 8) + 104))(v92, enum case for SFAirDropReceive.Failure.badRequest(_:), v91);
        swift_willThrow();
        sub_1005AFF54(v90, type metadata accessor for SDAirDropMessage);
        goto LABEL_22;
      }

      v49 = *(v0 + 224);
      v50 = *(v0 + 232);
      v51 = *(v0 + 216);
      sub_100566750(v51);
      sub_100026AC0(*(v0 + 136), *(v0 + 144));

      sub_100026AC0(v1, v94);
      swift_unknownObjectRelease();
      v52 = (*(v50 + 48))(v51, 1, v49);
      v53 = *(v0 + 256);
      if (v52 == 1)
      {
        v55 = *(v0 + 152);
        v54 = *(v0 + 160);
        sub_10047997C(*(v0 + 216));
        sub_1005B000C(v53, v55);
        *v54 = v48;
      }

      else
      {
        v83 = *(v0 + 248);
        v84 = *(v0 + 224);
        v85 = *(v0 + 232);
        v86 = *(v0 + 216);
        v88 = *(v0 + 152);
        v87 = *(v0 + 160);
        swift_unknownObjectRelease();
        v89 = *(v85 + 32);
        v89(v83, v86, v84);
        sub_1005B000C(v53, v88);
        v89(v87, v83, v84);
      }

      type metadata accessor for SDAirDropServerConnectionIdentity(0);
    }

    swift_storeEnumTagMultiPayload();

    v31 = *(v0 + 8);
    goto LABEL_41;
  }

LABEL_22:
  sub_100026AC0(*(v0 + 136), *(v0 + 144));

  sub_100026AC0(v1, v94);
  swift_unknownObjectRelease();

  v31 = *(v0 + 8);
LABEL_41:

  return v31();
}

uint64_t sub_1005ACE70()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1005ACF70()
{
  *(*v1 + 392) = v0;

  if (v0)
  {
    v2 = sub_1005AD95C;
  }

  else
  {
    v2 = sub_1005AD084;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1005AD084()
{
  v2 = *(v0 + 352);
  v1 = *(v0 + 360);

  v3 = *(v0 + 72);
  v76 = *(v0 + 64);
  v5 = *(v0 + 80);
  v4 = *(v0 + 88);
  v6 = *(v0 + 96);
  v7 = *(v0 + 104);

  sub_100026AC0(v2, v1);
  swift_unknownObjectRelease();
  v78 = v5;
  Data.append(_:)();
  v8 = *(v0 + 392);
  v10 = *(v0 + 136);
  v9 = *(v0 + 144);
  sub_100294008(v10, v9);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();
  if (!os_log_type_enabled(v11, v12))
  {
    sub_100026AC0(v10, v9);
    v17 = v4;
    v18 = v6;
    goto LABEL_14;
  }

  v75 = v4;
  result = swift_slowAlloc();
  v14 = result;
  *result = 134217984;
  v15 = v9 >> 62;
  if ((v9 >> 62) > 1)
  {
    if (v15 != 2)
    {
      v16 = 0;
      goto LABEL_13;
    }

    v20 = *(v10 + 16);
    v19 = *(v10 + 24);
    v21 = __OFSUB__(v19, v20);
    v16 = v19 - v20;
    if (!v21)
    {
      goto LABEL_13;
    }

    __break(1u);
LABEL_10:
    LODWORD(v16) = HIDWORD(v10) - v10;
    if (__OFSUB__(HIDWORD(v10), v10))
    {
      __break(1u);
      return result;
    }

    v16 = v16;
    goto LABEL_13;
  }

  if (v15)
  {
    goto LABEL_10;
  }

  v16 = BYTE6(v9);
LABEL_13:
  *(result + 4) = v16;
  sub_100026AC0(v10, v9);
  _os_log_impl(&_mh_execute_header, v11, v12, "Received HTTP message data %ld", v14, 0xCu);

  v17 = v75;
  v18 = v6;
LABEL_14:
  v22 = *(v0 + 256);

  swift_beginAccess();
  sub_1006767B8(v76, v3, v18, v7, *(v0 + 136), *(v0 + 144), v22);
  if (!v8)
  {
    sub_1005AE94C(*(v0 + 168), *(v0 + 280), type metadata accessor for SDAirDropServerConnection);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v25 = *(v0 + 280);
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v26 = *(v0 + 224);
        v27 = *(v0 + 232);
        v28 = *(v0 + 208);
        sub_1005AFF54(v25, type metadata accessor for SDAirDropServerConnection);
        sub_100566750(v28);
        if ((*(v27 + 48))(v28, 1, v26) == 1)
        {
          sub_10047997C(*(v0 + 208));
          v29 = Logger.logObject.getter();
          v30 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v29, v30))
          {
            v31 = swift_slowAlloc();
            *v31 = 0;
            v32 = "Missing request transferID";
LABEL_35:
            _os_log_impl(&_mh_execute_header, v29, v30, v32, v31, 2u);

            goto LABEL_36;
          }

          goto LABEL_36;
        }

        v77 = *(v0 + 256);
        v59 = *(v0 + 232);
        v58 = *(v0 + 240);
        v60 = *(v0 + 224);
        v61 = *(v0 + 208);
        v63 = *(v0 + 152);
        v62 = *(v0 + 160);
        sub_100026AC0(*(v0 + 136), *(v0 + 144));

        sub_100026AC0(v78, v17);
        swift_unknownObjectRelease();
        v64 = *(v59 + 32);
        v64(v58, v61, v60);
        sub_1005B000C(v77, v63);
        v64(v62, v58, v60);
        type metadata accessor for SDAirDropServerConnectionIdentity(0);
      }

      else
      {
        v49 = *(v0 + 256);
        v51 = *(v0 + 192);
        v50 = *(v0 + 200);
        v52 = *(v0 + 176);
        v53 = *(v0 + 184);
        v54 = *(v0 + 152);
        v55 = v17;
        v56 = *(v0 + 280);

        v57 = sub_10028088C(&unk_10097A650, &qword_1007FD780);
        (*(v53 + 32))(v50, v56 + *(v57 + 48), v52);
        sub_1005AE94C(v49, v54, type metadata accessor for SDAirDropMessage);
        (*(v53 + 16))(v51, v50, v52);
        SFAirDrop.TransferIdentifier.init(_:)();
        (*(v53 + 8))(v50, v52);
        sub_1005AFF54(v49, type metadata accessor for SDAirDropMessage);
        sub_100026AC0(*(v0 + 136), *(v0 + 144));

        sub_100026AC0(v78, v55);
        swift_unknownObjectRelease();
        type metadata accessor for SDAirDropServerConnectionIdentity(0);
      }
    }

    else
    {
      v33 = *(v0 + 272);
      v34 = *(v0 + 168);
      sub_1005AFF54(v25, type metadata accessor for SDAirDropServerConnection);
      sub_1005AE94C(v34, v33, type metadata accessor for SDAirDropServerConnection);
      if (swift_getEnumCaseMultiPayload() >= 2)
      {
        v35 = *(v0 + 272);
        v36 = *(v0 + 176);
        v37 = *(v0 + 184);
        v38 = sub_10028088C(&unk_10097A650, &qword_1007FD780);
        (*(v37 + 8))(v35 + *(v38 + 48), v36);
      }

      v39 = NWConnection.nw.getter();

      v40 = nw_protocol_copy_http_connection_definition();
      v41 = nw_connection_copy_protocol_metadata(v39, v40);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      if (!v41)
      {
        v29 = Logger.logObject.getter();
        v30 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v29, v30))
        {
          v31 = swift_slowAlloc();
          *v31 = 0;
          v32 = "Missing connection definition";
          goto LABEL_35;
        }

LABEL_36:
        v65 = *(v0 + 256);

        v66 = type metadata accessor for SFAirDropReceive.Failure();
        sub_1005AFFC4(&unk_10097A660, &type metadata accessor for SFAirDropReceive.Failure, &protocol conformance descriptor for SFAirDropReceive.Failure);
        swift_allocError();
        (*(*(v66 - 8) + 104))(v67, enum case for SFAirDropReceive.Failure.badRequest(_:), v66);
        swift_willThrow();
        sub_1005AFF54(v65, type metadata accessor for SDAirDropMessage);
        goto LABEL_15;
      }

      v42 = *(v0 + 224);
      v43 = *(v0 + 232);
      v44 = *(v0 + 216);
      sub_100566750(v44);
      sub_100026AC0(*(v0 + 136), *(v0 + 144));

      sub_100026AC0(v78, v17);
      swift_unknownObjectRelease();
      v45 = (*(v43 + 48))(v44, 1, v42);
      v46 = *(v0 + 256);
      if (v45 == 1)
      {
        v48 = *(v0 + 152);
        v47 = *(v0 + 160);
        sub_10047997C(*(v0 + 216));
        sub_1005B000C(v46, v48);
        *v47 = v41;
      }

      else
      {
        v68 = *(v0 + 248);
        v69 = *(v0 + 224);
        v70 = *(v0 + 232);
        v71 = *(v0 + 216);
        v73 = *(v0 + 152);
        v72 = *(v0 + 160);
        swift_unknownObjectRelease();
        v74 = *(v70 + 32);
        v74(v68, v71, v69);
        sub_1005B000C(v46, v73);
        v74(v72, v68, v69);
      }

      type metadata accessor for SDAirDropServerConnectionIdentity(0);
    }

    swift_storeEnumTagMultiPayload();

    v23 = *(v0 + 8);
    goto LABEL_30;
  }

LABEL_15:
  sub_100026AC0(*(v0 + 136), *(v0 + 144));

  sub_100026AC0(v78, v17);
  swift_unknownObjectRelease();

  v23 = *(v0 + 8);
LABEL_30:

  return v23();
}