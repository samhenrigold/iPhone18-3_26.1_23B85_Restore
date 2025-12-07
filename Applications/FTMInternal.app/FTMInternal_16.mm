void sub_10020A870()
{
  v1 = [objc_opt_self() defaultCenter];
  v10 = v1;
  if (qword_100374FF8 != -1)
  {
    goto LABEL_19;
  }

  while (1)
  {
    [v1 postNotificationName:static NSNotificationName.subsIdSelectionChange object:0 userInfo:0];
    v2 = *(v0 + 128);
    v3 = *(v2 + 16);
    if (!v3)
    {
      break;
    }

    if (*(v0 + 160))
    {
      LODWORD(v4) = 0;
LABEL_9:
      v5 = v4;
      if (v4 < v3)
      {
        goto LABEL_10;
      }

      goto LABEL_18;
    }

    v4 = *(v0 + 156);
    if (v3 > v4)
    {
      goto LABEL_9;
    }

    v5 = v3 - 1;
    if (v3 - 1 < v3)
    {
LABEL_10:
      sub_1001A773C(v2 + 32 * v5 + 32, v13);
      if (swift_dynamicCast())
      {
        *(v0 + 96) = v11;
        *(v0 + 104) = v12;
      }

      v6 = *(v0 + 136);
      if (v5 >= *(v6 + 16))
      {
        __break(1u);
      }

      else
      {
        sub_1001A773C(v6 + 32 * v5 + 32, v13);
        if (swift_dynamicCast())
        {
          *(v0 + 112) = v11;
          *(v0 + 120) = v12;
        }

        if (qword_100375020 == -1)
        {
          goto LABEL_16;
        }
      }

      swift_once();
LABEL_16:
      swift_getKeyPath();
      swift_getKeyPath();
      swift_retain_n();
      static Published.subscript.getter();

      v7 = v13[0];
      swift_getKeyPath();
      swift_getKeyPath();
      LOBYTE(v13[0]) = (v7 & 1) == 0;
      static Published.subscript.setter();
      swift_getKeyPath();
      swift_getKeyPath();
      swift_retain_n();
      static Published.subscript.getter();

      v8 = v13[0];
      swift_getKeyPath();
      swift_getKeyPath();
      LOBYTE(v13[0]) = (v8 & 1) == 0;
      static Published.subscript.setter();
      swift_getKeyPath();
      swift_getKeyPath();
      swift_retain_n();
      static Published.subscript.getter();

      v9 = v13[0];
      swift_getKeyPath();
      swift_getKeyPath();
      LOBYTE(v13[0]) = (v9 & 1) == 0;
      static Published.subscript.setter();

      return;
    }

LABEL_18:
    __break(1u);
LABEL_19:
    swift_once();
    v1 = v10;
  }
}

uint64_t sub_10020AC60(char a1, char a2, void **a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  *&v27 = a5;
  *(&v27 + 1) = a6;
  v12 = 1684099177;
  *(v7 + 16) = 0;
  *(v7 + 22) = 0;
  *(v7 + 64) = 0;
  *(v7 + 72) = 0xE000000000000000;
  type metadata accessor for FTMCarrierInfoObjectChanged(0);
  v13 = swift_allocObject();
  Published.init(initialValue:)();
  *(v7 + 153) = 0;
  *(v7 + 80) = v13;
  *(v7 + 88) = _swiftEmptyArrayStorage;
  *(v7 + 96) = 0;
  *(v7 + 104) = 0xE000000000000000;
  *(v7 + 112) = 0;
  *(v7 + 120) = 0xE000000000000000;
  *(v7 + 128) = _swiftEmptyArrayStorage;
  *(v7 + 136) = _swiftEmptyArrayStorage;
  *(v7 + 144) = 0;
  *(v7 + 152) = 2;
  *(v7 + 156) = 0;
  *(v7 + 160) = 1;
  *(v7 + 168) = xmmword_1002F2990;
  v14 = 0xE400000000000000;
  *(v7 + 184) = 0xE400000000000000;
  *(v7 + 192) = 5202011;
  *(v7 + 24) = a1;
  *(v7 + 25) = a2;
  *(v7 + 26) = (a1 | a2) & 1;
  *(v7 + 48) = a3;
  *(v7 + 56) = a4;
  sub_1001A56A0();

  *(v7 + 27) = StringProtocol.contains<A>(_:)() & 1;
  *(v7 + 28) = StringProtocol.contains<A>(_:)() & 1;
  aBlock = a3;
  v29 = a4;
  v34 = 829714025;
  v35 = 0xE400000000000000;
  *(v7 + 153) = StringProtocol.contains<A>(_:)() & 1;
  if (v27 != __PAIR128__(0xE400000000000000, 1684099177) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    v12 = 0x656E6F685069;
    v14 = 0xE600000000000000;
  }

  *(v7 + 32) = v12;
  *(v7 + 40) = v14;
  sub_10020BEF4();
  if (qword_100374FA8 != -1)
  {
    swift_once();
  }

  v15 = qword_100382490;
  v16 = static os_log_type_t.default.getter();
  sub_1001A551C(&unk_100377020, &unk_1002EF770);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1002EED30;
  *(v17 + 56) = &type metadata for String;
  v18 = sub_1001A76E8();
  *(v17 + 32) = a3;
  *(v17 + 40) = a4;
  *(v17 + 96) = &type metadata for String;
  *(v17 + 104) = v18;
  *(v17 + 64) = v18;
  *(v17 + 72) = v27;
  v19 = *(v7 + 27);
  *(v17 + 136) = &type metadata for Bool;
  *(v17 + 144) = &protocol witness table for Bool;
  *(v17 + 112) = v19;
  os_log(_:dso:log:type:_:)("Hardware manager - init - basebandchipset: %{public}@ - deviceClass: %{public}@ - isMavDevice: %{public}d", 105, 2, &_mh_execute_header, v15, v16, v17);

  v20 = 843928646;
  if (*(v7 + 28))
  {
    v20 = 827151430;
  }

  *(v7 + 176) = v20;
  *(v7 + 184) = 0xE400000000000000;

  if (*(v7 + 28))
  {
    v21 = 8323091;
  }

  else
  {
    v21 = 5202011;
  }

  *(v7 + 192) = v21;
  if (*(v7 + 24) == 1)
  {
    sub_10020B25C();
  }

  if (*(v7 + 153) == 1)
  {
    *(v7 + 176) = 860705862;
    *(v7 + 184) = 0xE400000000000000;

    *(v7 + 192) = 8323091;
  }

  v22 = [objc_opt_self() defaultCenter];
  if (qword_100374FF0 != -1)
  {
    swift_once();
  }

  v23 = static NSNotificationName.carrierUpdate;
  v32 = sub_10020BFF4;
  v33 = v7;
  aBlock = _NSConcreteStackBlock;
  v29 = 1107296256;
  v30 = sub_10025BE6C;
  v31 = &unk_10031F160;
  v24 = _Block_copy(&aBlock);

  v25 = [v22 addObserverForName:v23 object:0 queue:0 usingBlock:v24];
  _Block_release(v24);
  swift_unknownObjectRelease();

  *(v7 + 29) = sub_10020BD78() & 1;
  return v7;
}

uint64_t sub_10020B134()
{
  v1 = [objc_opt_self() defaultCenter];
  if (qword_100374FF0 != -1)
  {
    swift_once();
  }

  [v1 removeObserver:v0 name:static NSNotificationName.carrierUpdate object:0];

  return v0;
}

uint64_t sub_10020B228()
{
  sub_10020B134();

  return swift_deallocClassInstance();
}

void sub_10020B25C()
{
  if (sub_10020B57C())
  {
    return;
  }

  v1 = [objc_opt_self() standardUserDefaults];
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 objectForKey:v2];

  if (v3)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
  }

  v17[0] = v15;
  v17[1] = v16;
  if (*(&v16 + 1))
  {
    if (swift_dynamicCast())
    {
      if (v14 == 1)
      {
        if (qword_100374FA8 != -1)
        {
          swift_once();
        }

        v4 = qword_100382490;
        v5 = static os_log_type_t.default.getter();
        os_log(_:dso:log:type:_:)("Hardware manager - enable awd logging: true", 43, 2, &_mh_execute_header, v4, v5, _swiftEmptyArrayStorage);
        *(v0 + 24) = 0;
        *(v0 + 26) = 0;
      }

      else
      {
        v8 = String._bridgeToObjectiveC()();
        MGGetBoolAnswer();

        v9.super.super.isa = Bool._bridgeToObjectiveC()().super.super.isa;
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          LOBYTE(v17[0]) = 2;
          static Bool._conditionallyBridgeFromObjectiveC(_:result:)();

          v10 = 2;
        }

        else
        {

          v10 = 0;
        }

        *(v0 + 24) = v10 & 1;
        v11 = String._bridgeToObjectiveC()();
        MGGetBoolAnswer();

        v12.super.super.isa = Bool._bridgeToObjectiveC()().super.super.isa;
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          LOBYTE(v17[0]) = 2;
          static Bool._conditionallyBridgeFromObjectiveC(_:result:)();

          v13 = 2;
        }

        else
        {

          v13 = 0;
        }

        *(v0 + 25) = v13 & 1;
        *(v0 + 26) = (*(v0 + 24) | v13) & 1;
      }

      return;
    }
  }

  else
  {
    sub_1001AC99C(v17, &qword_100375D68, &unk_1002F2370);
  }

  if (qword_100374FA8 != -1)
  {
    swift_once();
  }

  v6 = qword_100382490;
  v7 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("Hardware manager - enable awd logging: not set", 46, 2, &_mh_execute_header, v6, v7, _swiftEmptyArrayStorage);
}

uint64_t sub_10020B57C()
{
  v1 = [objc_opt_self() standardUserDefaults];
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 integerForKey:v2];

  if (v3 == 2)
  {
    if (qword_100374FA8 != -1)
    {
      swift_once();
    }

    v9 = qword_100382490;
    v10 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("update build settings to user", 29, 2, &_mh_execute_header, v9, v10, _swiftEmptyArrayStorage);
    *(v0 + 24) = 0;
    *(v0 + 26) = 0;
    return 1;
  }

  else if (v3 == 1)
  {
    if (qword_100374FA8 != -1)
    {
      swift_once();
    }

    v7 = qword_100382490;
    v8 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("update build settings to carrier", 32, 2, &_mh_execute_header, v7, v8, _swiftEmptyArrayStorage);
    *(v0 + 24) = 256;
    result = 1;
    *(v0 + 26) = 1;
  }

  else if (v3)
  {
    if (qword_100374FA8 != -1)
    {
      swift_once();
    }

    v11 = qword_100382490;
    v12 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("update build settings error", 27, 2, &_mh_execute_header, v11, v12, _swiftEmptyArrayStorage);
    return 0;
  }

  else
  {
    if (qword_100374FA8 != -1)
    {
      swift_once();
    }

    v4 = qword_100382490;
    v5 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("update build settings to internal", 33, 2, &_mh_execute_header, v4, v5, _swiftEmptyArrayStorage);
    result = 1;
    *(v0 + 24) = 1;
    *(v0 + 26) = 1;
  }

  return result;
}

void sub_10020B7D4()
{
  v1 = Notification.userInfo.getter();
  if (v1)
  {
    v2 = v1;
    AnyHashable.init<A>(_:)();
    if (*(v2 + 16) && (v3 = sub_1001F6774(v13), (v4 & 1) != 0))
    {
      sub_1001A773C(*(v2 + 56) + 32 * v3, v14);
      sub_1002015DC(v13);
      sub_1001A551C(&qword_100377040, &qword_1002F21E8);
      if (swift_dynamicCast())
      {
        swift_beginAccess();
        *(v0 + 88) = _swiftEmptyArrayStorage;

        swift_getKeyPath();
        swift_getKeyPath();

        static Published.subscript.getter();

        v5 = v14[0];
        swift_getKeyPath();
        swift_getKeyPath();
        LOBYTE(v14[0]) = (v5 & 1) == 0;
        static Published.subscript.setter();
        swift_beginAccess();
        sub_1001E3210(0x7372656972726163);
        swift_endAccess();
        swift_getKeyPath();
        swift_getKeyPath();

        static Published.subscript.getter();

        v6 = v14[0];
        swift_getKeyPath();
        swift_getKeyPath();
        LOBYTE(v14[0]) = (v6 & 1) == 0;
        static Published.subscript.setter();
        sub_1001A551C(&unk_1003770A0, &unk_1002EED60);
        v7 = swift_allocObject();
        *(v7 + 16) = xmmword_1002EED50;
        *(v7 + 56) = &type metadata for String;
        *(v7 + 32) = 0xD000000000000014;
        *(v7 + 40) = 0x80000001002BCA40;
        *(v7 + 88) = sub_1001A551C(&qword_100377A10, &unk_1002F2BA0);
        *(v7 + 64) = v2;
        print(_:separator:terminator:)();

        v8 = [objc_opt_self() defaultCenter];
        if (qword_100374FE8 != -1)
        {
          swift_once();
        }

        v9 = static NSNotificationName.NewCTMetric;
        sub_1001A551C(&qword_100377050, &qword_1002F21F0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1002EED40;
        strcpy(v14, "metricObject");
        HIBYTE(v14[6]) = 0;
        v14[7] = -5120;
        AnyHashable.init<A>(_:)();
        *(inited + 96) = &type metadata for MetricNotificationObject;
        v11 = swift_allocObject();
        *(inited + 72) = v11;
        *(v11 + 16) = 5521746;
        *(v11 + 24) = 0xE300000000000000;
        *(v11 + 32) = 0xD000000000000011;
        *(v11 + 40) = 0x80000001002B9FD0;
        *(v11 + 48) = 0;
        sub_1001FD020(inited);
        swift_setDeallocating();
        sub_1001AC99C(inited + 32, &qword_100377058, &qword_1002F21F8);
        isa = Dictionary._bridgeToObjectiveC()().super.isa;

        [v8 postNotificationName:v9 object:0 userInfo:isa];
      }

      else
      {
      }
    }

    else
    {

      sub_1002015DC(v13);
    }
  }
}

uint64_t sub_10020BD78()
{
  v1 = objc_getClass("CellularLogging");
  if (v1)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  sub_1001AC99C(&v9, &qword_100375D68, &unk_1002F2370);
  if (qword_100374FA0 != -1)
  {
    swift_once();
  }

  v2 = qword_100382488;
  v3 = static os_log_type_t.default.getter();
  sub_1001A551C(&unk_100377020, &unk_1002EF770);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1002EED40;
  v5 = sub_1001A76E8();
  v6 = 1163219540;
  if (!v1)
  {
    v6 = 0x45534C4146;
  }

  v7 = 0xE400000000000000;
  *(v4 + 56) = &type metadata for String;
  *(v4 + 64) = v5;
  if (!v1)
  {
    v7 = 0xE500000000000000;
  }

  *(v4 + 32) = v6;
  *(v4 + 40) = v7;
  os_log(_:dso:log:type:_:)("Base view controller - is cLogging available %{public}s", 55, 2, &_mh_execute_header, v2, v3, v4, v9, v10);

  if (v1 && (*(v0 + 28) & 1) == 0)
  {
    return *(v0 + 26);
  }

  else
  {
    return 0;
  }
}

void sub_10020BEF4()
{
  [*(v0 + 16) invalidate];
  v1 = objc_opt_self();
  v5[4] = sub_10020C268;
  v6 = v0;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 1107296256;
  v5[2] = sub_10025BE04;
  v5[3] = &unk_10031F188;
  v2 = _Block_copy(v5);

  v3 = [v1 scheduledTimerWithTimeInterval:0 repeats:v2 block:2.0];
  _Block_release(v2);
  v4 = *(v0 + 16);
  *(v0 + 16) = v3;
}

uint64_t sub_10020BFF8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_10020C010(uint64_t a1, uint64_t a2)
{
  v3 = String._bridgeToObjectiveC()();
  MGGetBoolAnswer();

  v4.super.super.isa = Bool._bridgeToObjectiveC()().super.super.isa;
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    static Bool._conditionallyBridgeFromObjectiveC(_:result:)();

    v5 = 2;
  }

  else
  {

    v5 = 0;
  }

  *(a2 + 155) = v5 & 1;
  if (qword_100374FA8 != -1)
  {
    swift_once();
  }

  v6 = qword_100382490;
  v7 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("airplane mode changed", 21, 2, &_mh_execute_header, v6, v7, _swiftEmptyArrayStorage);
  v8 = [objc_opt_self() defaultCenter];
  v9 = v8;
  if (qword_100375010 != -1)
  {
    swift_once();
    v8 = v9;
  }

  [v8 postNotificationName:static NSNotificationName.isAirPlaneModeEnabled object:0 userInfo:{0, v9}];
}

uint64_t sub_10020C2C0()
{

  return _swift_deallocObject(v0, 52, 7);
}

uint64_t sub_10020C300(uint64_t a1)
{
  v2 = type metadata accessor for FTMBandInfoDataModel(0) - 8;
  __chkstk_darwin(v2);
  v4 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v32 - v6;
  __chkstk_darwin(v8);
  v10 = &v32 - v9;
  __chkstk_darwin(v11);
  v33 = v12;
  v34 = &v32 - v13;
  v14 = *(a1 + 16);
  if (v14)
  {
    v15 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    v16 = *(v12 + 72);
    v17 = a1 + v15;
    v18 = _swiftEmptyArrayStorage;
    while (1)
    {
      sub_1001BB760(v17, v10);
      v19 = v10[9];
      if (v19 <= 1)
      {
        if (!v10[9])
        {

LABEL_12:
          sub_1001BB4B8(v10, v4);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v35 = v18;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1001F5438(0, v18[2] + 1, 1);
            v18 = v35;
          }

          v23 = v18[2];
          v22 = v18[3];
          if (v23 >= v22 >> 1)
          {
            sub_1001F5438((v22 > 1), v23 + 1, 1);
            v18 = v35;
          }

          v18[2] = v23 + 1;
          sub_1001BB4B8(v4, v18 + v15 + v23 * v16);
          goto LABEL_4;
        }
      }

      else if (v19 != 2 && v19 != 3)
      {
        goto LABEL_3;
      }

      v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v20)
      {
        goto LABEL_12;
      }

LABEL_3:
      sub_1001BB7C4(v10);
LABEL_4:
      v17 += v16;
      if (!--v14)
      {
        goto LABEL_18;
      }
    }
  }

  v18 = _swiftEmptyArrayStorage;
LABEL_18:
  if (!v18[2])
  {

    goto LABEL_36;
  }

  sub_1001BB760(v18 + ((*(v33 + 80) + 32) & ~*(v33 + 80)), v7);

  v24 = v7;
  v25 = v34;
  sub_1001BB4B8(v24, v34);
  v26 = *(v25 + 25);
  if (v26 <= 3)
  {
    goto LABEL_28;
  }

  if (*(v25 + 25) > 5u)
  {
    if (v26 != 6)
    {
      sub_1001BB7C4(v25);
      goto LABEL_36;
    }

    goto LABEL_28;
  }

  if (v26 == 4)
  {
LABEL_28:
    v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v27)
    {
      goto LABEL_29;
    }

    if (v26 == 3)
    {

      sub_1001BB7C4(v25);
LABEL_35:
      v29 = 0;
      v28 = 256;
      return v28 | v29;
    }

    v30 = _stringCompareWithSmolCheck(_:_:expecting:)();

    sub_1001BB7C4(v25);
    if (v30)
    {
      goto LABEL_35;
    }

LABEL_36:
    v28 = 0;
    v29 = 0;
    return v28 | v29;
  }

LABEL_29:
  sub_1001BB7C4(v25);
  v28 = 0;
  v29 = 1;
  return v28 | v29;
}

uint64_t sub_10020C78C(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    return String.subscript.getter();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10020C7D4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1001A551C(&qword_1003772A0, &qword_1002F11B0);
  v12 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v11 - v5;
  v7 = _HashTable.startBucket.getter();
  if (v7 == 1 << *(a1 + 32))
  {
    v8 = *(v12 + 56);

    return v8(a2, 1, 1, v4);
  }

  else
  {
    v10 = *(v4 + 48);
    *a2 = sub_10021A69C(&v6[v10], v7, *(a1 + 36), 0, a1);
    sub_10021C3E0(&v6[v10], a2 + *(v4 + 48), type metadata accessor for STransferMetrics);
    return (*(v12 + 56))(a2, 0, 1, v4);
  }
}

double sub_10020C96C(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);

  return result;
}

void sub_10020C9B0(uint64_t (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
{
  v5 = a3 & 0xFFFFFFFFFFFFFF8;
  if (a3 >> 62)
  {
LABEL_19:
    v6 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = 0;
  while (v6 != v7)
  {
    if ((a3 & 0xC000000000000001) != 0)
    {
      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v7 >= *(v5 + 16))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      v8 = *(a3 + 8 * v7 + 32);
    }

    v12 = v8;
    v9 = a1(&v12);

    if (v3 || (v9 & 1) != 0)
    {
      return;
    }

    if (__OFADD__(v7++, 1))
    {
      goto LABEL_18;
    }
  }
}

uint64_t sub_10020CACC()
{
  v0 = type metadata accessor for Date();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v28 = &v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v29 = &v28 - v4;
  __chkstk_darwin(v5);
  v7 = &v28 - v6;
  __chkstk_darwin(v8);
  v10 = &v28 - v9;
  __chkstk_darwin(v11);
  v13 = &v28 - v12;
  Date.init()();
  v30 = sub_1001D530C();
  v31 = *(v1 + 8);
  v31(v13, v0);
  if (qword_100374F80 != -1)
  {
    swift_once();
  }

  v14 = qword_100382470;
  v15 = String._bridgeToObjectiveC()();
  [v14 setDateFormat:v15];

  v16 = String._bridgeToObjectiveC()();
  v17 = [v14 dateFromString:v16];

  if (!v17)
  {

    return 0;
  }

  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  v18 = *(v1 + 32);
  v18(v10, v7, v0);
  v19 = String._bridgeToObjectiveC()();

  v20 = [v14 dateFromString:v19];

  if (!v20)
  {
    v31(v10, v0);
    return 0;
  }

  v21 = v28;
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  v22 = v29;
  v18(v29, v21, v0);
  Date.timeIntervalSince(_:)();
  v24 = v23;
  v25 = v23;
  v26 = v31;
  v31(v22, v0);
  result = v26(v10, v0);
  if ((*&v25 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
  }

  else if (v24 > -9.22337204e18)
  {
    if (v24 < 9.22337204e18)
    {
      return v24;
    }

    goto LABEL_14;
  }

  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

id sub_10020CE48()
{
  result = [objc_allocWithZone(type metadata accessor for FTMCellMonitorSharedClass()) init];
  qword_100382508 = result;
  return result;
}

uint64_t sub_10020CE78(uint64_t a1)
{
  swift_beginAccess();
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_10020CF44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v18 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  v9 = *(v17 - 8);
  __chkstk_darwin(v17);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1002181D0();
  v12 = static OS_dispatch_queue.main.getter();
  v13 = swift_allocObject();
  *(v13 + 16) = v3;
  aBlock[4] = a2;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10020C96C;
  aBlock[3] = a3;
  v14 = _Block_copy(aBlock);
  v15 = v3;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10021B134(&qword_1003784A0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1001A551C(&unk_100377090, &qword_1002F2CA0);
  sub_1001AD0C8(&qword_1003784B0, &unk_100377090, &qword_1002F2CA0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);

  (*(v18 + 8))(v8, v6);
  return (*(v9 + 8))(v11, v17);
}

uint64_t sub_10020D218(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_bandInfoDataModels;
  swift_beginAccess();
  v3 = *(a1 + v2);
  swift_getKeyPath();
  swift_getKeyPath();
  v9 = v3;

  static Published.subscript.setter();
  if (qword_100374FA8 != -1)
  {
    swift_once();
  }

  v4 = qword_100382490;
  v5 = static os_log_type_t.default.getter();
  sub_1001A551C(&unk_100377020, &unk_1002EF770);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1002EED40;
  v7 = *(a1 + v2);
  *(v6 + 56) = sub_1001A551C(&qword_1003770E8, &unk_1002F22C0);
  *(v6 + 64) = sub_1001AD0C8(&qword_100377BC0, &qword_1003770E8, &unk_1002F22C0, &protocol conformance descriptor for [A]);
  *(v6 + 32) = v7;

  os_log(_:dso:log:type:_:)("BandInfoDataModels %{private}@", 30, 2, &_mh_execute_header, v4, v5, v6, v9);
}

void sub_10020D3C0(int a1)
{
  LODWORD(v227) = a1;
  v233 = type metadata accessor for DispatchWorkItemFlags();
  v220 = *(v233 - 8);
  __chkstk_darwin(v233);
  v232 = &v215 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v231 = type metadata accessor for DispatchQoS();
  v219 = *(v231 - 8);
  __chkstk_darwin(v231);
  v230 = &v215 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v229 = type metadata accessor for FTMNetworkInfoDataModel(0);
  v242 = *(v229 - 8);
  __chkstk_darwin(v229);
  v228 = &v215 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v241 = &v215 - v6;
  __chkstk_darwin(v7);
  v225 = &v215 - v8;
  __chkstk_darwin(v9);
  v224 = &v215 - v10;
  __chkstk_darwin(v11);
  v240 = &v215 - v12;
  __chkstk_darwin(v13);
  v234 = &v215 - v14;
  __chkstk_darwin(v15);
  v17 = &v215 - v16;
  __chkstk_darwin(v18);
  v236 = &v215 - v19;
  __chkstk_darwin(v20);
  v22 = &v215 - v21;
  __chkstk_darwin(v23);
  v25 = &v215 - v24;
  __chkstk_darwin(v26);
  v238 = &v215 - v27;
  __chkstk_darwin(v28);
  v30 = &v215 - v29;
  __chkstk_darwin(v31);
  v33 = &v215 - v32;
  __chkstk_darwin(v34);
  *&v237 = &v215 - v35;
  __chkstk_darwin(v36);
  v38 = &v215 - v37;
  __chkstk_darwin(v39);
  v223 = (&v215 - v40);
  __chkstk_darwin(v41);
  v239 = &v215 - v42;
  __chkstk_darwin(v43);
  v226 = &v215 - v44;
  v45 = sub_10021AF50();
  j = v45;
  v47 = *(v45 + 16);
  if (!v47)
  {
LABEL_8:

    goto LABEL_10;
  }

  v216 = v33;
  v217 = v25;
  v221 = v38;
  v222 = v30;
  v215 = v17;
  i = v22;
  v235 = v1;
  v48 = 0;
  while (1)
  {
    if (v48 >= *(j + 16))
    {
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
      v167 = v45;

      sub_10021C2E0(v167, v168);
LABEL_142:

      v107 = v221;
      v52 = v235;
      sub_10020F644(v221, j);
      v109 = v107;
      goto LABEL_148;
    }

    if (*(j + v48 + 32) && *(j + v48 + 32) != 1)
    {
      break;
    }

    v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v17)
    {
      goto LABEL_12;
    }

    if (v47 == ++v48)
    {
      goto LABEL_8;
    }
  }

LABEL_12:

  v50 = v234;
  v49 = v235;
  if (v227 == 2 || (v227 & 1) == 0)
  {
    if (qword_100375020 != -1)
    {
      goto LABEL_202;
    }

    goto LABEL_17;
  }

  v51 = OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_networkInfoDataModels;
  swift_beginAccess();
  v52 = *(v49 + v51);
  v17 = v52[2];
  v227 = v51;
  v53 = 0;
  if (!v17)
  {
    v89 = 0;
    goto LABEL_182;
  }

  j = (*(v242 + 80) + 32) & ~*(v242 + 80);
  v54 = v52 + j;
  while (2)
  {
    if (v53 < v52[2])
    {
      v58 = *(v242 + 72);
      sub_10021C448(v54 + v58 * v53, v50, type metadata accessor for FTMNetworkInfoDataModel);
      v65 = *(v50 + 9);
      if (v65 > 2)
      {
        if (v65 == 3)
        {
          goto LABEL_31;
        }

        sub_10021C2E0(v50, v64);
      }

      else
      {
        if (*(v50 + 9) && v65 != 2)
        {

          sub_10021C2E0(v50, v116);
LABEL_155:
          v89 = v53 + 1;
          v117 = v52[2];
          if (v117 - 1 == v53)
          {
            goto LABEL_182;
          }

          v17 = j + v58 * v89;
          v74 = v227;
          while (2)
          {
            if (v89 >= v117)
            {
              goto LABEL_201;
            }

            v91 = v240;
            sub_10021C448(v52 + v17, v240, type metadata accessor for FTMNetworkInfoDataModel);
            v119 = *(v91 + 9);
            if (v119 <= 1)
            {
              if (*(v91 + 9))
              {

                sub_10021C2E0(v240, v126);
                goto LABEL_159;
              }

              v91 = 0xE100000000000000;
            }

            else
            {
              if (v119 != 2)
              {
                if (v119 == 3)
                {
                  v91 = 0xE200000000000000;
                  goto LABEL_168;
                }

                sub_10021C2E0(v240, v118);
                if (v89 != v53)
                {
LABEL_172:
                  if ((v53 & 0x8000000000000000) != 0)
                  {
                    __break(1u);
LABEL_312:
                    __break(1u);
LABEL_313:
                    __break(1u);
LABEL_314:
                    __break(1u);
LABEL_315:
                    __break(1u);
LABEL_316:
                    v91 = sub_100224AD4(0, *(v91 + 16) + 1, 1, v91);
                    *(v52 + v240) = v91;
LABEL_100:
                    j = *(v91 + 16);
                    v93 = *(v91 + 24);
                    if (j >= v93 >> 1)
                    {
                      v91 = sub_100224AD4((v93 > 1), j + 1, 1, v91);
                    }

                    *(v91 + 16) = j + 1;
                    sub_10021C3E0(v89, v91 + ((*(v242 + 80) + 32) & ~*(v242 + 80)) + *(v242 + 72) * j, type metadata accessor for FTMNetworkInfoDataModel);
                    *(v52 + v240) = v91;
                    swift_endAccess();
                    sub_10020CF44(&unk_10031F328, sub_10021C2D0, &unk_10031F340);
                    goto LABEL_103;
                  }

                  v122 = v52[2];
                  if (v53 >= v122)
                  {
                    goto LABEL_312;
                  }

                  v91 = v53 * v58;
                  sub_10021C448(v52 + j + v53 * v58, v224, type metadata accessor for FTMNetworkInfoDataModel);
                  if (v89 >= v122)
                  {
                    goto LABEL_313;
                  }

                  sub_10021C448(v52 + v17, v225, type metadata accessor for FTMNetworkInfoDataModel);
                  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                  *(v235 + v74) = v52;
                  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                  {
                    v52 = sub_1001FA67C(v52);
                    *(v235 + v74) = v52;
                  }

                  if (v53 >= v52[2])
                  {
                    goto LABEL_314;
                  }

                  sub_10021C33C(v225, v52 + j + v91, v124);
                  v91 = v235;
                  *(v235 + v74) = v52;
                  if (v89 >= v52[2])
                  {
                    goto LABEL_315;
                  }

                  sub_10021C33C(v224, v52 + v17, v125);
                  *(v91 + v74) = v52;
                }

LABEL_158:
                ++v53;
                goto LABEL_159;
              }

              v91 = 0xE200000000000000;
            }

LABEL_168:
            v120 = _stringCompareWithSmolCheck(_:_:expecting:)();

            sub_10021C2E0(v240, v121);
            if ((v120 & 1) == 0)
            {
              if (v89 != v53)
              {
                goto LABEL_172;
              }

              goto LABEL_158;
            }

LABEL_159:
            ++v89;
            v117 = v52[2];
            v17 += v58;
            if (v89 == v117)
            {
              if (v89 >= v53)
              {
LABEL_182:
                v127 = v235;
                sub_1001FCA54(v53, v89);
                swift_endAccess();
                sub_10020CF44(&unk_10031F328, sub_10021C2D0, &unk_10031F340);
                v128 = OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_secondaryCell;
                swift_beginAccess();
                v129 = *(v127 + v128);
                v226 = *(v129 + 16);
                if (!v226)
                {
                  return;
                }

                v225 = sub_1002181D0();
                v224 = type metadata accessor for Date();
                v130 = *(v224 - 8);
                v131 = *(v130 + 56);
                v222 = v130 + 56;
                v223 = v131;
                ++v220;
                v221 = v245;
                ++v219;

                v132 = 32;
                v236 = 1;
                for (i = v129; ; v129 = i)
                {
                  v234 = v132;
                  v246 = *(v129 + v132);
                  v133 = *(v129 + v132 + 16);
                  v134 = *(v129 + v132 + 32);
                  v135 = *(v129 + v132 + 64);
                  v249 = *(v129 + v132 + 48);
                  v250 = v135;
                  v247 = v133;
                  v248 = v134;
                  v136 = *(v129 + v132 + 80);
                  v137 = *(v129 + v132 + 96);
                  v138 = *(v129 + v132 + 128);
                  v253 = *(v129 + v132 + 112);
                  v254 = v138;
                  v251 = v136;
                  v252 = v137;
                  v139 = *(v129 + v132 + 144);
                  v140 = *(v129 + v132 + 160);
                  v141 = *(v129 + v132 + 176);
                  *(v257 + 9) = *(v129 + v132 + 185);
                  v256 = v140;
                  v257[0] = v141;
                  v255 = v139;
                  v142 = v247;
                  v143 = BYTE8(v247);
                  v144 = BYTE10(v139);
                  v237 = v248;
                  v145 = v249;
                  v146 = BYTE8(v249);
                  v147 = v141;
                  v148 = BYTE8(v141);
                  v149 = v140;
                  LODWORD(v240) = BYTE8(v140);
                  v239 = v250;
                  LODWORD(v238) = BYTE8(v250);
                  v150 = v241;
                  (v223)(v241 + *(v229 + 84), 1, 1, v224);
                  *v150 = v142;
                  *(v150 + 8) = v143;
                  *(v150 + 9) = 1;
                  v151 = v236;
                  *(v150 + 16) = v236;
                  *(v150 + 24) = 0;
                  *(v150 + 25) = v144;
                  *(v150 + 32) = v237;
                  *(v150 + 48) = v145;
                  *(v150 + 56) = v146;
                  *(v150 + 72) = 0;
                  *(v150 + 80) = 0;
                  *(v150 + 64) = 0;
                  *(v150 + 88) = 1;
                  *(v150 + 96) = v147;
                  *(v150 + 104) = v148;
                  *(v150 + 112) = v149;
                  *(v150 + 120) = v240;
                  *(v150 + 128) = v239;
                  *(v150 + 136) = v238;
                  *(v150 + 144) = 0;
                  *(v150 + 152) = 1;
                  *(v150 + 160) = 0;
                  *(v150 + 168) = 1;
                  *(v150 + 176) = 0;
                  *(v150 + 184) = 1;
                  *(v150 + 192) = 0;
                  *(v150 + 200) = 1;
                  *(v150 + 208) = 0;
                  *(v150 + 216) = 1;
                  *(v150 + 224) = 0;
                  *(v150 + 232) = 1;
                  v152 = v228;
                  sub_10021C448(v150, v228, type metadata accessor for FTMNetworkInfoDataModel);
                  v153 = v235;
                  v154 = v227;
                  swift_beginAccess();
                  v155 = *&v153[v154];
                  sub_100201470(&v246, &v243);
                  v156 = swift_isUniquelyReferenced_nonNull_native();
                  *&v153[v154] = v155;
                  if ((v156 & 1) == 0)
                  {
                    v155 = sub_100224AD4(0, v155[2] + 1, 1, v155);
                    *&v153[v154] = v155;
                  }

                  v158 = v155[2];
                  v157 = v155[3];
                  if (v158 >= v157 >> 1)
                  {
                    v155 = sub_100224AD4((v157 > 1), v158 + 1, 1, v155);
                  }

                  v155[2] = v158 + 1;
                  sub_10021C3E0(v152, v155 + ((*(v242 + 80) + 32) & ~*(v242 + 80)) + *(v242 + 72) * v158, type metadata accessor for FTMNetworkInfoDataModel);
                  *&v153[v154] = v155;
                  swift_endAccess();
                  v159 = static OS_dispatch_queue.main.getter();
                  v160 = swift_allocObject();
                  *(v160 + 16) = v153;
                  v245[2] = sub_10021C51C;
                  v245[3] = v160;
                  v243 = _NSConcreteStackBlock;
                  v244 = 1107296256;
                  v245[0] = sub_10020C96C;
                  v245[1] = &unk_10031F390;
                  v161 = _Block_copy(&v243);
                  v162 = v153;

                  v163 = v230;
                  static DispatchQoS.unspecified.getter();
                  v243 = _swiftEmptyArrayStorage;
                  sub_10021B134(&qword_1003784A0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
                  sub_1001A551C(&unk_100377090, &qword_1002F2CA0);
                  sub_1001AD0C8(&qword_1003784B0, &unk_100377090, &qword_1002F2CA0, &protocol conformance descriptor for [A]);
                  v165 = v232;
                  v164 = v233;
                  dispatch thunk of SetAlgebra.init<A>(_:)();
                  OS_dispatch_queue.async(group:qos:flags:execute:)();
                  _Block_release(v161);

                  (*v220)(v165, v164);
                  v166.n128_f64[0] = (*v219)(v163, v231);
                  sub_10021C2E0(v241, v166);
                  if (v226 == v151)
                  {
                    break;
                  }

                  v236 = v151 + 1;
                  v132 = (v234 + 208);
                }

LABEL_10:

                return;
              }

              __break(1u);
LABEL_318:
              v91 = sub_100224AD4(0, *(v91 + 16) + 1, 1, v91);
              *(v52 + v74) = v91;
LABEL_248:
              v186 = *(v91 + 16);
              v185 = *(v91 + 24);
              if (v186 >= v185 >> 1)
              {
                v91 = sub_100224AD4((v185 > 1), v186 + 1, 1, v91);
              }

              *(v91 + 16) = v186 + 1;
              sub_10021C3E0(v217, v91 + ((*(v242 + 80) + 32) & ~*(v242 + 80)) + *(v242 + 72) * v186, type metadata accessor for FTMNetworkInfoDataModel);
              *(v52 + v74) = v91;
              swift_endAccess();
              sub_10020CF44(&unk_10031F328, sub_10021C2D0, &unk_10031F340);
LABEL_251:
              v115 = sub_10021C2E0(v222, v183);
              goto LABEL_252;
            }

            continue;
          }
        }

LABEL_31:
        v62 = _stringCompareWithSmolCheck(_:_:expecting:)();

        sub_10021C2E0(v50, v63);
        if (v62)
        {
          goto LABEL_155;
        }
      }

      if (v17 == ++v53)
      {
        v53 = v52[2];
        v89 = v53;
        goto LABEL_182;
      }

      continue;
    }

    break;
  }

  while (2)
  {
    __break(1u);
LABEL_201:
    __break(1u);
LABEL_202:
    swift_once();
LABEL_17:
    v55 = &unk_100382000;
    v56 = qword_100382508;
    p_cb = &OBJC_PROTOCOL___CoreTelephonyClientDataDelegate.cb;
    j = OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_metricModelsArray;
    swift_beginAccess();
    v58 = *(v56 + j);
    v260 = _swiftEmptyArrayStorage;
    if (v58 >> 62)
    {
      v59 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v59 = *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v241 = v59;
    if (v59)
    {
      v17 = 0;
      v53 = v58 & 0xC000000000000001;
      v52 = (v58 & 0xFFFFFFFFFFFFFF8);
      v50 = &type metadata for String;
      v60 = v241;
      do
      {
        if (v53)
        {
          v54 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          j = v17 + 1;
          if (__OFADD__(v17, 1))
          {
            goto LABEL_30;
          }
        }

        else
        {
          if (v17 >= *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_192;
          }

          v54 = *(v58 + 8 * v17 + 32);

          j = v17 + 1;
          if (__OFADD__(v17, 1))
          {
LABEL_30:
            __break(1u);
            goto LABEL_31;
          }
        }

        v61 = *(v54 + 40);
        v243 = *(v54 + 32);
        v244 = v61;
        v262 = 18229;
        v263 = 0xE200000000000000;
        sub_1001A56A0();
        if (StringProtocol.contains<A>(_:)())
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          v60 = v241;
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v45 = specialized ContiguousArray._endMutation()();
        }

        else
        {
        }

        ++v17;
      }

      while (j != v60);
      v53 = v260;
      v55 = &unk_100382000;
      p_cb = (&OBJC_PROTOCOL___CoreTelephonyClientDataDelegate + 64);
    }

    else
    {
      v53 = _swiftEmptyArrayStorage;
    }

    v66 = v55[161];
    j = *(p_cb + 323);
    swift_beginAccess();
    v67 = *(v66 + j);
    v259 = _swiftEmptyArrayStorage;
    if (v67 >> 62)
    {
      v68 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v68 = *((v67 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v17 = _swiftEmptyArrayStorage;
    v241 = v53;
    if (!v68)
    {
      goto LABEL_58;
    }

    v69 = 0;
    v240 = v67 & 0xC000000000000001;
    j = v67 & 0xFFFFFFFFFFFFFF8;
    while (2)
    {
      if (v240)
      {
        v70 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v17 = v69 + 1;
        if (__OFADD__(v69, 1))
        {
          break;
        }

        goto LABEL_52;
      }

      if (v69 >= *((v67 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_193;
      }

      v70 = *(v67 + 8 * v69 + 32);

      v17 = v69 + 1;
      if (!__OFADD__(v69, 1))
      {
LABEL_52:
        v71 = *(v70 + 40);
        v262 = *(v70 + 32);
        v263 = v71;
        v260 = 4543564;
        v261 = 0xE300000000000000;
        sub_1001A56A0();
        if (StringProtocol.contains<A>(_:)())
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          v53 = v241;
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v45 = specialized ContiguousArray._endMutation()();
        }

        else
        {
        }

        ++v69;
        if (v17 == v68)
        {
          goto LABEL_57;
        }

        continue;
      }

      break;
    }

    __break(1u);
LABEL_57:
    v17 = v259;
LABEL_58:

    v72 = &OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_subsId;
    v52 = v235;
    if ((v53 & 0x8000000000000000) != 0 || (v53 & 0x4000000000000000) != 0)
    {
      v45 = _CocoaArrayWrapper.endIndex.getter();
      v58 = v45;
      if (!v45)
      {
        goto LABEL_206;
      }

LABEL_61:
      v73 = 0;
      v262 = _swiftEmptyArrayStorage;
      v74 = v53 & 0xC000000000000001;
      while (v74)
      {
        v75 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        j = v73 + 1;
        if (__OFADD__(v73, 1))
        {
          goto LABEL_71;
        }

LABEL_67:
        if (*(v75 + OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_subsId))
        {
        }

        else
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          v53 = v241;
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v45 = specialized ContiguousArray._endMutation()();
        }

        ++v73;
        if (j == v58)
        {
          goto LABEL_72;
        }
      }

      if (v73 >= *(v53 + 16))
      {
        goto LABEL_194;
      }

      v75 = *(v53 + 8 * v73 + 32);

      j = v73 + 1;
      if (!__OFADD__(v73, 1))
      {
        goto LABEL_67;
      }

LABEL_71:
      __break(1u);
LABEL_72:
      if (v262 < 0 || (v262 & 0x4000000000000000) != 0)
      {
        v212 = _CocoaArrayWrapper.endIndex.getter();

        if (!v212)
        {
          goto LABEL_104;
        }
      }

      else
      {
        v76 = *(v262 + 16);

        if (!v76)
        {
          goto LABEL_104;
        }
      }

      sub_1002100F0(v53, 0, 1, 1uLL, v226);
      v77 = OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_networkInfoDataModels;
      swift_beginAccess();
      v240 = v77;
      v78 = *(v52 + v77);
      v79 = *(v78 + 16);

      if (!v79)
      {
LABEL_99:

        v89 = v223;
        sub_10021C448(v226, v223, type metadata accessor for FTMNetworkInfoDataModel);
        v90 = v240;
        v52 = v235;
        swift_beginAccess();
        v91 = *(v52 + v90);
        v92 = swift_isUniquelyReferenced_nonNull_native();
        *(v52 + v90) = v91;
        if ((v92 & 1) == 0)
        {
          goto LABEL_316;
        }

        goto LABEL_100;
      }

      v80 = v79;
      v81 = 0;
LABEL_79:
      if (v81 >= *(v78 + 16))
      {
        __break(1u);
LABEL_199:
        __break(1u);
        continue;
      }

      j = v239;
      sub_10021C448(v78 + ((*(v242 + 80) + 32) & ~*(v242 + 80)) + *(v242 + 72) * v81, v239, type metadata accessor for FTMNetworkInfoDataModel);
      v82 = *(j + 9);
      if (v82 <= 1)
      {
        if (*(j + 9))
        {
          goto LABEL_86;
        }
      }

      else if (v82 == 2 || v82 == 3)
      {
LABEL_86:
        v85 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v84 = v239;
        if (v85)
        {
          goto LABEL_87;
        }

        goto LABEL_77;
      }

      v84 = v239;
LABEL_87:
      if ((*(v84 + 8) & 1) != 0 || *v84)
      {
LABEL_77:
        sub_10021C2E0(v84, v83);
        goto LABEL_78;
      }

      if (*(v84 + 25) > 3u)
      {
        if (*(v84 + 25) > 5u && *(v84 + 25) != 6)
        {
          goto LABEL_77;
        }

LABEL_97:
        v86 = _stringCompareWithSmolCheck(_:_:expecting:)();

        sub_10021C2E0(v239, v87);
        if (v86)
        {
          goto LABEL_98;
        }

LABEL_78:
        ++v81;
        v53 = v241;
        if (v80 == v81)
        {
          goto LABEL_99;
        }

        goto LABEL_79;
      }

      if (*(v84 + 25) > 1u || !*(v84 + 25))
      {
        goto LABEL_97;
      }

      sub_10021C2E0(v239, v169);
LABEL_98:

      v52 = v235;
      sub_10020F644(v226, v81);
      v53 = v241;
LABEL_103:
      v45 = sub_10021C2E0(v226, v88);
LABEL_104:
      v94 = 0;
      v260 = _swiftEmptyArrayStorage;
      while (2)
      {
        if (v74)
        {
          v95 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          j = v94 + 1;
          if (__OFADD__(v94, 1))
          {
            break;
          }

          goto LABEL_110;
        }

        if (v94 >= *(v53 + 16))
        {
          goto LABEL_195;
        }

        v95 = *(v53 + 8 * v94 + 32);

        j = v94 + 1;
        if (!__OFADD__(v94, 1))
        {
LABEL_110:
          if (*(v95 + OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_subsId) == 1)
          {
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            v53 = v241;
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            v45 = specialized ContiguousArray._endMutation()();
          }

          else
          {
          }

          ++v94;
          if (j == v58)
          {
            goto LABEL_115;
          }

          continue;
        }

        break;
      }

      __break(1u);
LABEL_115:
      if (v260 < 0 || (v260 & 0x4000000000000000) != 0)
      {
        v96 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v96 = *(v260 + 16);
      }

      v97 = v221;

      if (!v96)
      {

LABEL_150:
        v72 = &OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_subsId;
        if ((v17 & 0x8000000000000000) == 0)
        {
          goto LABEL_207;
        }

        goto LABEL_301;
      }

      sub_1002100F0(v53, 1, 1, 1uLL, v97);

      v98 = OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_networkInfoDataModels;
      swift_beginAccess();
      v99 = *(v52 + v98);
      v100 = *(v99 + 16);

      if (v100)
      {
        for (j = 0; v100 != j; ++j)
        {
          if (j >= *(v99 + 16))
          {
            goto LABEL_199;
          }

          v101 = v237;
          sub_10021C448(v99 + ((*(v242 + 80) + 32) & ~*(v242 + 80)) + *(v242 + 72) * j, v237, type metadata accessor for FTMNetworkInfoDataModel);
          v102 = *(v101 + 9);
          if (v102 <= 1)
          {
            if (!*(v101 + 9))
            {
              goto LABEL_129;
            }
          }

          else if (v102 != 2 && v102 != 3)
          {
LABEL_129:

            v45 = v237;
            goto LABEL_131;
          }

          v104 = _stringCompareWithSmolCheck(_:_:expecting:)();

          v45 = v237;
          if ((v104 & 1) == 0)
          {
            goto LABEL_121;
          }

LABEL_131:
          if ((*(v45 + 8) & 1) != 0 || *v45 != 1)
          {
LABEL_121:
            sub_10021C2E0(v45, v103);
            continue;
          }

          if (*(v45 + 25) <= 3u)
          {
            if (*(v45 + 25) <= 1u && *(v45 + 25))
            {
              goto LABEL_196;
            }
          }

          else if (*(v45 + 25) > 5u && *(v45 + 25) != 6)
          {
            goto LABEL_121;
          }

          v105 = _stringCompareWithSmolCheck(_:_:expecting:)();

          sub_10021C2E0(v237, v106);
          if (v105)
          {
            goto LABEL_142;
          }
        }
      }

      v110 = v221;
      sub_10021C448(v221, v216, type metadata accessor for FTMNetworkInfoDataModel);
      v52 = v235;
      swift_beginAccess();
      v111 = *(v52 + v98);
      v112 = swift_isUniquelyReferenced_nonNull_native();
      *(v52 + v98) = v111;
      if ((v112 & 1) == 0)
      {
        v111 = sub_100224AD4(0, v111[2] + 1, 1, v111);
        *(v52 + v98) = v111;
      }

      v114 = v111[2];
      v113 = v111[3];
      if (v114 >= v113 >> 1)
      {
        v111 = sub_100224AD4((v113 > 1), v114 + 1, 1, v111);
      }

      v111[2] = v114 + 1;
      sub_10021C3E0(v216, v111 + ((*(v242 + 80) + 32) & ~*(v242 + 80)) + *(v242 + 72) * v114, type metadata accessor for FTMNetworkInfoDataModel);
      *(v52 + v98) = v111;
      swift_endAccess();
      sub_10020CF44(&unk_10031F328, sub_10021C2D0, &unk_10031F340);
      v109 = v110;
LABEL_148:
      v115 = sub_10021C2E0(v109, v108);
      goto LABEL_150;
    }

    break;
  }

  v58 = *(v53 + 16);
  if (v58)
  {
    goto LABEL_61;
  }

LABEL_206:

  if ((v17 & 0x8000000000000000) == 0)
  {
LABEL_207:
    if ((v17 & 0x4000000000000000) == 0)
    {
      j = *(v17 + 16);
      if (!j)
      {
        goto LABEL_309;
      }

      goto LABEL_209;
    }
  }

LABEL_301:
  v115 = _CocoaArrayWrapper.endIndex.getter();
  j = v115;
  if (!v115)
  {
    goto LABEL_309;
  }

LABEL_209:
  v170 = 0;
  v259 = _swiftEmptyArrayStorage;
  v53 = v17 & 0xC000000000000001;
  while (2)
  {
    if (v53)
    {
      v171 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v172 = v170 + 1;
      if (__OFADD__(v170, 1))
      {
        break;
      }

      goto LABEL_215;
    }

    if (v170 >= *(v17 + 16))
    {
      __break(1u);
LABEL_296:
      __break(1u);
LABEL_297:
      v209 = v115;

      sub_10021C2E0(v209, v210);
LABEL_289:

      v199 = i;
      sub_10020F644(i, j);
      sub_10021C2E0(v199, v200);
      return;
    }

    v171 = *(v17 + 8 * v170 + 32);

    v172 = v170 + 1;
    if (!__OFADD__(v170, 1))
    {
LABEL_215:
      if (*(v171 + *v72))
      {
      }

      else
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v115 = specialized ContiguousArray._endMutation()();
        v72 = &OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_subsId;
      }

      ++v170;
      if (v172 == j)
      {
        goto LABEL_220;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_220:
  if ((v259 & 0x8000000000000000) != 0 || (v259 & 0x4000000000000000) != 0)
  {
    v213 = _CocoaArrayWrapper.endIndex.getter();

    if (!v213)
    {
      goto LABEL_252;
    }

LABEL_223:
    sub_1002100F0(v17, 0, 1, 2uLL, v222);
    v74 = OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_networkInfoDataModels;
    swift_beginAccess();
    v72 = *(v52 + v74);
    v52 = v72[2];

    if (!v52)
    {
LABEL_247:

      sub_10021C448(v222, v217, type metadata accessor for FTMNetworkInfoDataModel);
      v52 = v235;
      swift_beginAccess();
      v91 = *(v52 + v74);
      v184 = swift_isUniquelyReferenced_nonNull_native();
      *(v52 + v74) = v91;
      if ((v184 & 1) == 0)
      {
        goto LABEL_318;
      }

      goto LABEL_248;
    }

    v174 = 0;
    while (1)
    {
      if (v174 >= v72[2])
      {
        __break(1u);
LABEL_300:
        __break(1u);
        goto LABEL_301;
      }

      v175 = v238;
      sub_10021C448(v72 + ((*(v242 + 80) + 32) & ~*(v242 + 80)) + *(v242 + 72) * v174, v238, type metadata accessor for FTMNetworkInfoDataModel);
      v176 = *(v175 + 9);
      if (v176 <= 1)
      {
        if (!*(v175 + 9))
        {
          goto LABEL_233;
        }
      }

      else if (v176 != 2 && v176 != 3)
      {
LABEL_233:

        v178 = v238;
        goto LABEL_235;
      }

      v179 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v178 = v238;
      if ((v179 & 1) == 0)
      {
        goto LABEL_225;
      }

LABEL_235:
      if ((*(v178 + 8) & 1) != 0 || *v178)
      {
LABEL_225:
        sub_10021C2E0(v178, v177);
        goto LABEL_226;
      }

      v180 = *(v178 + 25);
      if (v180 <= 3)
      {
        if (*(v178 + 25) > 1u && v180 != 3)
        {

          sub_10021C2E0(v238, v211);
LABEL_246:

          v52 = v235;
          sub_10020F644(v222, v174);
          goto LABEL_251;
        }
      }

      else if (*(v178 + 25) > 5u && v180 != 6)
      {
        goto LABEL_225;
      }

      v181 = _stringCompareWithSmolCheck(_:_:expecting:)();

      sub_10021C2E0(v238, v182);
      if (v181)
      {
        goto LABEL_246;
      }

LABEL_226:
      if (v52 == ++v174)
      {
        goto LABEL_247;
      }
    }
  }

  v173 = *(v259 + 16);

  if (v173)
  {
    goto LABEL_223;
  }

LABEL_252:
  v187 = 0;
  v258 = _swiftEmptyArrayStorage;
  while (2)
  {
    if (v53)
    {
      v188 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v189 = v187 + 1;
      if (__OFADD__(v187, 1))
      {
        break;
      }

      goto LABEL_258;
    }

    if (v187 >= *(v17 + 16))
    {
      goto LABEL_296;
    }

    v188 = *(v17 + 8 * v187 + 32);

    v189 = v187 + 1;
    if (!__OFADD__(v187, 1))
    {
LABEL_258:
      if (*(v188 + OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_subsId) == 1)
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v115 = specialized ContiguousArray._endMutation()();
      }

      else
      {
      }

      ++v187;
      if (v189 == j)
      {
        goto LABEL_263;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_263:
  if ((v258 & 0x8000000000000000) != 0 || (v258 & 0x4000000000000000) != 0)
  {
    v214 = _CocoaArrayWrapper.endIndex.getter();

    if (!v214)
    {
      goto LABEL_309;
    }

LABEL_266:
    sub_1002100F0(v17, 1, 1, 2uLL, i);

    v17 = OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_networkInfoDataModels;
    swift_beginAccess();
    v72 = *(v52 + v17);
    v191 = v72[2];

    if (!v191)
    {
LABEL_290:

      v201 = i;
      v202 = v215;
      sub_10021C448(i, v215, type metadata accessor for FTMNetworkInfoDataModel);
      v203 = v235;
      swift_beginAccess();
      v204 = *(v203 + v17);
      v205 = swift_isUniquelyReferenced_nonNull_native();
      *(v203 + v17) = v204;
      if ((v205 & 1) == 0)
      {
        v204 = sub_100224AD4(0, v204[2] + 1, 1, v204);
        *(v203 + v17) = v204;
      }

      v207 = v204[2];
      v206 = v204[3];
      if (v207 >= v206 >> 1)
      {
        v204 = sub_100224AD4((v206 > 1), v207 + 1, 1, v204);
      }

      v204[2] = v207 + 1;
      sub_10021C3E0(v202, v204 + ((*(v242 + 80) + 32) & ~*(v242 + 80)) + *(v242 + 72) * v207, type metadata accessor for FTMNetworkInfoDataModel);
      *(v203 + v17) = v204;
      swift_endAccess();
      sub_10020CF44(&unk_10031F328, sub_10021C2D0, &unk_10031F340);
      sub_10021C2E0(v201, v208);
      return;
    }

    j = 0;
    v52 = 0xE500000000000000;
    while (1)
    {
      if (j >= v72[2])
      {
        goto LABEL_300;
      }

      v192 = v236;
      sub_10021C448(v72 + ((*(v242 + 80) + 32) & ~*(v242 + 80)) + *(v242 + 72) * j, v236, type metadata accessor for FTMNetworkInfoDataModel);
      v193 = *(v192 + 9);
      if (v193 <= 1)
      {
        if (!*(v192 + 9))
        {
          goto LABEL_276;
        }
      }

      else if (v193 != 2 && v193 != 3)
      {
LABEL_276:

        v115 = v236;
        goto LABEL_278;
      }

      v195 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v115 = v236;
      if ((v195 & 1) == 0)
      {
        goto LABEL_268;
      }

LABEL_278:
      if ((*(v115 + 8) & 1) != 0 || *v115 != 1)
      {
LABEL_268:
        sub_10021C2E0(v115, v194);
        goto LABEL_269;
      }

      v196 = *(v115 + 25);
      if (v196 <= 3)
      {
        if (*(v115 + 25) > 1u && v196 != 3)
        {
          goto LABEL_297;
        }
      }

      else if (*(v115 + 25) > 5u && v196 != 6)
      {
        goto LABEL_268;
      }

      v197 = _stringCompareWithSmolCheck(_:_:expecting:)();

      sub_10021C2E0(v236, v198);
      if (v197)
      {
        goto LABEL_289;
      }

LABEL_269:
      if (v191 == ++j)
      {
        goto LABEL_290;
      }
    }
  }

  v190 = *(v258 + 16);

  if (v190)
  {
    goto LABEL_266;
  }

LABEL_309:
}

uint64_t sub_10020F644(uint64_t a1, unint64_t a2)
{
  v5 = v2;
  v8 = OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_networkInfoDataModels;
  result = swift_beginAccess();
  v10 = *(v2 + v8);
  if (v10[2] > a2)
  {
    v12 = *(a1 + 32);
    v11 = *(a1 + 40);
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v5 + v8) = v10;
    if (isUniquelyReferenced_nonNull_native)
    {
      if ((a2 & 0x8000000000000000) == 0)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v10 = sub_1001FA67C(v10);
      *(v5 + v8) = v10;
      if ((a2 & 0x8000000000000000) == 0)
      {
LABEL_4:
        if (v10[2] > a2)
        {
          v14 = *(type metadata accessor for FTMNetworkInfoDataModel(0) - 8);
          v3 = (*(v14 + 80) + 32) & ~*(v14 + 80);
          v4 = *(v14 + 72) * a2;
          v15 = v10 + v3 + v4;
          *(v15 + 4) = v12;
          *(v15 + 5) = v11;

          if (*(v15 + 5))
          {
            if (v15[56])
            {
              sub_1001A56A0();
              v16 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
              v12 = v17;
            }

            else
            {
              sub_1001A56A0();
              v18._countAndFlagsBits = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
              String.append(_:)(v18);

              v19._countAndFlagsBits = 10272;
              v19._object = 0xE200000000000000;
              String.append(_:)(v19);
              Double.write<A>(to:)();
              v20._countAndFlagsBits = 0x297A484D20;
              v20._object = 0xE500000000000000;
              String.append(_:)(v20);
              v16 = 0;
              v12 = 0xE000000000000000;
            }
          }

          else
          {
            v16 = 0;
            v12 = 0xE000000000000000;
          }

          *(v15 + 8) = v16;
          *(v15 + 9) = v12;
          *(v5 + v8) = v10;
          swift_endAccess();
          sub_10020CF44(&unk_10031F328, sub_10021C2D0, &unk_10031F340);
          v11 = *(a1 + 48);
          LOBYTE(v12) = *(a1 + 56);
          swift_beginAccess();
          v10 = *(v5 + v8);
          v21 = swift_isUniquelyReferenced_nonNull_native();
          *(v5 + v8) = v10;
          if (v21)
          {
LABEL_11:
            if (v10[2] <= a2)
            {
              __break(1u);
            }

            else
            {
              v22 = v10 + v3 + v4;
              *(v22 + 6) = v11;
              v22[56] = v12;
              if (*(v22 + 5))
              {
                sub_1001A56A0();
                if (v12)
                {
                  v23 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
                  v12 = v24;
                }

                else
                {
                  v25._countAndFlagsBits = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
                  String.append(_:)(v25);

                  v26._countAndFlagsBits = 10272;
                  v26._object = 0xE200000000000000;
                  String.append(_:)(v26);
                  Double.write<A>(to:)();
                  v27._countAndFlagsBits = 0x297A484D20;
                  v27._object = 0xE500000000000000;
                  String.append(_:)(v27);
                  v23 = 0;
                  v12 = 0xE000000000000000;
                }
              }

              else
              {
                v23 = 0;
                v12 = 0xE000000000000000;
              }

              *(v22 + 8) = v23;
              *(v22 + 9) = v12;
              *(v5 + v8) = v10;
              swift_endAccess();
              sub_10020CF44(&unk_10031F328, sub_10021C2D0, &unk_10031F340);
              v10 = *(a1 + 80);
              LOBYTE(v12) = *(a1 + 88);
              swift_beginAccess();
              v11 = *(v5 + v8);
              v28 = swift_isUniquelyReferenced_nonNull_native();
              *(v5 + v8) = v11;
              if (v28)
              {
LABEL_18:
                if (v11[2] <= a2)
                {
                  __break(1u);
                }

                else
                {
                  v29 = v11 + v3 + v4;
                  *(v29 + 10) = v10;
                  v29[88] = v12;
                  *(v5 + v8) = v11;
                  swift_endAccess();
                  sub_10020CF44(&unk_10031F328, sub_10021C2D0, &unk_10031F340);
                  v10 = *(a1 + 112);
                  LOBYTE(v12) = *(a1 + 120);
                  swift_beginAccess();
                  v11 = *(v5 + v8);
                  v30 = swift_isUniquelyReferenced_nonNull_native();
                  *(v5 + v8) = v11;
                  if (v30)
                  {
                    goto LABEL_20;
                  }
                }

                v11 = sub_1001FA67C(v11);
LABEL_20:
                if (v11[2] <= a2)
                {
                  __break(1u);
                }

                else
                {
                  v31 = v11 + v3 + v4;
                  *(v31 + 14) = v10;
                  v31[120] = v12;
                  *(v5 + v8) = v11;
                  swift_endAccess();
                  sub_10020CF44(&unk_10031F328, sub_10021C2D0, &unk_10031F340);
                  v10 = *(a1 + 96);
                  LOBYTE(v12) = *(a1 + 104);
                  swift_beginAccess();
                  v11 = *(v5 + v8);
                  v32 = swift_isUniquelyReferenced_nonNull_native();
                  *(v5 + v8) = v11;
                  if (v32)
                  {
                    goto LABEL_22;
                  }
                }

                v11 = sub_1001FA67C(v11);
LABEL_22:
                if (v11[2] <= a2)
                {
                  __break(1u);
                }

                else
                {
                  v33 = v11 + v3 + v4;
                  *(v33 + 12) = v10;
                  v33[104] = v12;
                  *(v5 + v8) = v11;
                  swift_endAccess();
                  sub_10020CF44(&unk_10031F328, sub_10021C2D0, &unk_10031F340);
                  v10 = *(a1 + 128);
                  LOBYTE(v12) = *(a1 + 136);
                  swift_beginAccess();
                  v11 = *(v5 + v8);
                  v34 = swift_isUniquelyReferenced_nonNull_native();
                  *(v5 + v8) = v11;
                  if (v34)
                  {
                    goto LABEL_24;
                  }
                }

                v11 = sub_1001FA67C(v11);
LABEL_24:
                if (v11[2] <= a2)
                {
                  __break(1u);
                }

                else
                {
                  v35 = v11 + v3 + v4;
                  *(v35 + 16) = v10;
                  v35[136] = v12;
                  *(v5 + v8) = v11;
                  swift_endAccess();
                  sub_10020CF44(&unk_10031F328, sub_10021C2D0, &unk_10031F340);
                  v10 = *(a1 + 144);
                  LOBYTE(v12) = *(a1 + 152);
                  swift_beginAccess();
                  v11 = *(v5 + v8);
                  v36 = swift_isUniquelyReferenced_nonNull_native();
                  *(v5 + v8) = v11;
                  if (v36)
                  {
                    goto LABEL_26;
                  }
                }

                v11 = sub_1001FA67C(v11);
LABEL_26:
                if (v11[2] <= a2)
                {
                  __break(1u);
                }

                else
                {
                  v37 = v11 + v3 + v4;
                  *(v37 + 18) = v10;
                  v37[152] = v12;
                  *(v5 + v8) = v11;
                  swift_endAccess();
                  sub_10020CF44(&unk_10031F328, sub_10021C2D0, &unk_10031F340);
                  v10 = *(a1 + 160);
                  LOBYTE(v12) = *(a1 + 168);
                  swift_beginAccess();
                  v11 = *(v5 + v8);
                  v38 = swift_isUniquelyReferenced_nonNull_native();
                  *(v5 + v8) = v11;
                  if (v38)
                  {
                    goto LABEL_28;
                  }
                }

                v11 = sub_1001FA67C(v11);
LABEL_28:
                if (v11[2] <= a2)
                {
                  __break(1u);
                }

                else
                {
                  v39 = v11 + v3 + v4;
                  *(v39 + 20) = v10;
                  v39[168] = v12;
                  *(v5 + v8) = v11;
                  swift_endAccess();
                  sub_10020CF44(&unk_10031F328, sub_10021C2D0, &unk_10031F340);
                  v10 = *(a1 + 176);
                  LOBYTE(v12) = *(a1 + 184);
                  swift_beginAccess();
                  v11 = *(v5 + v8);
                  v40 = swift_isUniquelyReferenced_nonNull_native();
                  *(v5 + v8) = v11;
                  if (v40)
                  {
                    goto LABEL_30;
                  }
                }

                v11 = sub_1001FA67C(v11);
LABEL_30:
                if (v11[2] <= a2)
                {
                  __break(1u);
                }

                else
                {
                  v41 = v11 + v3 + v4;
                  *(v41 + 22) = v10;
                  v41[184] = v12;
                  *(v5 + v8) = v11;
                  swift_endAccess();
                  sub_10020CF44(&unk_10031F328, sub_10021C2D0, &unk_10031F340);
                  v10 = *(a1 + 192);
                  LOBYTE(v12) = *(a1 + 200);
                  swift_beginAccess();
                  v11 = *(v5 + v8);
                  v42 = swift_isUniquelyReferenced_nonNull_native();
                  *(v5 + v8) = v11;
                  if (v42)
                  {
                    goto LABEL_32;
                  }
                }

                v11 = sub_1001FA67C(v11);
LABEL_32:
                if (v11[2] <= a2)
                {
                  __break(1u);
                }

                else
                {
                  v43 = v11 + v3 + v4;
                  *(v43 + 24) = v10;
                  v43[200] = v12;
                  *(v5 + v8) = v11;
                  swift_endAccess();
                  sub_10020CF44(&unk_10031F328, sub_10021C2D0, &unk_10031F340);
                  v10 = *(a1 + 208);
                  LOBYTE(v12) = *(a1 + 216);
                  swift_beginAccess();
                  v11 = *(v5 + v8);
                  v44 = swift_isUniquelyReferenced_nonNull_native();
                  *(v5 + v8) = v11;
                  if (v44)
                  {
                    goto LABEL_34;
                  }
                }

                v11 = sub_1001FA67C(v11);
LABEL_34:
                if (v11[2] <= a2)
                {
                  __break(1u);
                }

                else
                {
                  v45 = v11 + v3 + v4;
                  *(v45 + 26) = v10;
                  v45[216] = v12;
                  *(v5 + v8) = v11;
                  swift_endAccess();
                  sub_10020CF44(&unk_10031F328, sub_10021C2D0, &unk_10031F340);
                  v10 = *(a1 + 224);
                  LOBYTE(a1) = *(a1 + 232);
                  swift_beginAccess();
                  v11 = *(v5 + v8);
                  result = swift_isUniquelyReferenced_nonNull_native();
                  *(v5 + v8) = v11;
                  if (result)
                  {
                    goto LABEL_36;
                  }
                }

                result = sub_1001FA67C(v11);
                v11 = result;
LABEL_36:
                if (v11[2] <= a2)
                {
                  __break(1u);
                }

                else
                {
                  v46 = v11 + v3 + v4;
                  *(v46 + 28) = v10;
                  v46[232] = a1;
                  *(v5 + v8) = v11;
                  swift_endAccess();
                  return sub_10020CF44(&unk_10031F328, sub_10021C2D0, &unk_10031F340);
                }

                return result;
              }
            }

            v11 = sub_1001FA67C(v11);
            goto LABEL_18;
          }

LABEL_42:
          v10 = sub_1001FA67C(v10);
          *(v5 + v8) = v10;
          goto LABEL_11;
        }

LABEL_41:
        __break(1u);
        goto LABEL_42;
      }
    }

    __break(1u);
    goto LABEL_41;
  }

  return result;
}

void sub_1002100F0(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X8>)
{
  v6 = a4;
  v11 = sub_1001A551C(&qword_100375738, &qword_1002EF900);
  __chkstk_darwin(v11 - 8);
  v172 = &v163 - v12;
  v13 = *(type metadata accessor for FTMNetworkInfoDataModel(0) + 84);
  v14 = type metadata accessor for Date();
  v15 = *(v14 - 8);
  v16 = *(v15 + 56);
  v170 = v14;
  v171 = v13;
  v168 = v15 + 56;
  v169 = v16;
  (v16)(a5 + v13, 1, 1);
  v176 = a2;
  *a5 = a2;
  *(a5 + 8) = 0;
  *(a5 + 16) = a3;
  v17 = a1;
  *(a5 + 24) = 0;
  *(a5 + 25) = v6;
  *(a5 + 40) = 0;
  *(a5 + 48) = 0;
  *(a5 + 32) = 0;
  *(a5 + 56) = 1;
  *(a5 + 64) = 0;
  v164 = (a5 + 64);
  *(a5 + 72) = 0;
  *(a5 + 80) = 0;
  *(a5 + 88) = 1;
  *(a5 + 96) = 0;
  *(a5 + 104) = 1;
  *(a5 + 112) = 0;
  *(a5 + 120) = 1;
  *(a5 + 128) = 0;
  *(a5 + 136) = 1;
  *(a5 + 144) = 0;
  *(a5 + 152) = 1;
  *(a5 + 160) = 0;
  *(a5 + 168) = 1;
  *(a5 + 176) = 0;
  *(a5 + 184) = 1;
  *(a5 + 192) = 0;
  *(a5 + 200) = 1;
  *(a5 + 208) = 0;
  *(a5 + 216) = 1;
  *(a5 + 232) = 1;
  v181 = _swiftEmptyArrayStorage;
  *(a5 + 224) = 0;
  if (a1 >> 62)
  {
LABEL_34:
    v18 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v18 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v173 = a5;
  v19 = _swiftEmptyArrayStorage;
  v174 = v17;
  v175 = v18;
  if (v18)
  {
    a5 = 0;
    v20 = v17 & 0xC000000000000001;
    v5 = v17 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v20)
      {
        v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v22 = a5 + 1;
        if (__OFADD__(a5, 1))
        {
LABEL_19:
          __break(1u);
LABEL_20:
          v19 = _swiftEmptyArrayStorage;
          break;
        }
      }

      else
      {
        if (a5 >= *(v5 + 16))
        {
          __break(1u);
          goto LABEL_34;
        }

        v21 = *(v17 + 8 * a5 + 32);

        v22 = a5 + 1;
        if (__OFADD__(a5, 1))
        {
          goto LABEL_19;
        }
      }

      v23 = *(v21 + 48) == 1684955458 && *(v21 + 56) == 0xE400000000000000;
      if (v23 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && *(v21 + OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_subsId) == v176)
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        v18 = v175;
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v17 = v174;
      }

      else
      {
      }

      ++a5;
      if (v22 == v18)
      {
        goto LABEL_20;
      }
    }
  }

  v181 = sub_10021A608(v24);
  v25 = 0;
  sub_100218274(&v181);

  v26 = v181;
  if ((v181 & 0x8000000000000000) == 0 && (v181 & 0x4000000000000000) == 0)
  {
    if (*(v181 + 16))
    {
      goto LABEL_24;
    }

LABEL_36:

    v36 = 0;
    v165 = 0;
    v5 = 0;
    goto LABEL_37;
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_36;
  }

LABEL_24:
  if ((v26 & 0xC000000000000001) != 0)
  {
    v27 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*(v26 + 16))
    {
      __break(1u);
      goto LABEL_283;
    }

    v27 = *(v26 + 32);
  }

  if (v6 == 2)
  {

    goto LABEL_31;
  }

  v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v28)
  {
LABEL_31:
    v181 = 66;
    v182 = 0xE100000000000000;
    v30 = *(v27 + 112);
    v31 = *(v27 + 120);

    v32._countAndFlagsBits = v30;
    v32._object = v31;
    String.append(_:)(v32);
    v18 = v175;

    v29 = v181;
    v5 = v182;
    goto LABEL_32;
  }

  v29 = *(v27 + 112);
  v5 = *(v27 + 120);

LABEL_32:
  v33 = v173;
  v173[4] = v29;
  v33[5] = v5;
  v165 = v29;
  v181 = v29;
  v182 = v5;
  v179 = 0x20646E6142;
  v180 = 0xE500000000000000;
  v177 = 0;
  v178 = 0xE000000000000000;
  sub_1001A56A0();
  v34 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v36 = v35;

  v33[8] = v34;
  v33[9] = v36;
LABEL_37:
  v37 = v174;
  v181 = _swiftEmptyArrayStorage;
  if (!v18)
  {
    goto LABEL_55;
  }

  v166 = v5;
  v167 = 0;
  v25 = v36;
  v38 = 0;
  v5 = 0x74646977646E6142;
  v39 = v174 & 0xC000000000000001;
  v19 = (v174 & 0xFFFFFFFFFFFFFF8);
  while (1)
  {
    if (!v39)
    {
      if (v38 < v19[2])
      {
        v18 = *(v37 + 8 * v38 + 32);

        v40 = v38 + 1;
        if (__OFADD__(v38, 1))
        {
          break;
        }

        goto LABEL_44;
      }

      __break(1u);
LABEL_68:
      if (!_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_69;
      }

LABEL_59:
      if ((v37 & 0xC000000000000001) == 0)
      {
        if (!*(v37 + 16))
        {
          __break(1u);
          goto LABEL_285;
        }

        v43 = *(v37 + 32);

LABEL_62:

        v44 = *(v43 + 112);
        v45 = *(v43 + 120);
        v181 = 0;

        LOBYTE(v44) = sub_10022464C(v44, v45, &v181);

        if ((v44 & 1) == 0)
        {
          goto LABEL_69;
        }

        v46 = v173;
        v173[6] = v181;
        *(v46 + 56) = 0;
        if (v5)
        {
          v181 = v165;
          v182 = v5;
          v179 = 0x20646E6142;
          v180 = 0xE500000000000000;
          v177 = 0;
          v178 = 0xE000000000000000;
          sub_1001A56A0();
          v47._countAndFlagsBits = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
          v181 = 0;
          v182 = 0xE000000000000000;
          String.append(_:)(v47);

          v48._countAndFlagsBits = 10272;
          v48._object = 0xE200000000000000;
          String.append(_:)(v48);
          Double.write<A>(to:)();
          v49._countAndFlagsBits = 0x297A484D20;
          v49._object = 0xE500000000000000;
          String.append(_:)(v49);

          v50 = v182;
          v46[8] = v181;
          v46[9] = v50;
        }

        else
        {

          *v164 = xmmword_1002F2090;
        }

        goto LABEL_70;
      }

LABEL_283:
      v43 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_62;
    }

    v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v40 = v38 + 1;
    if (__OFADD__(v38, 1))
    {
      break;
    }

LABEL_44:
    v41 = *(v18 + 48) == 0x74646977646E6142 && *(v18 + 56) == 0xE900000000000068;
    if (v41 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && *(v18 + OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_subsId) == v176)
    {
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v37 = v174;
    }

    else
    {
    }

    ++v38;
    v18 = v175;
    if (v40 == v175)
    {
      goto LABEL_54;
    }
  }

  __break(1u);
LABEL_54:
  v19 = _swiftEmptyArrayStorage;
  v5 = v166;
  v25 = v167;
LABEL_55:

  v181 = sub_10021A608(v42);
  sub_100218274(&v181);
  if (v25)
  {
    goto LABEL_368;
  }

  v37 = v181;
  if (v181 < 0 || (v181 & 0x4000000000000000) != 0)
  {
    goto LABEL_68;
  }

  if (*(v181 + 16))
  {
    goto LABEL_59;
  }

LABEL_69:

LABEL_70:
  v51 = v174;
  v181 = v19;
  if (!v18)
  {
    goto LABEL_88;
  }

  v52 = 0;
  v53 = v174 & 0xC000000000000001;
  v54 = v174 & 0xFFFFFFFFFFFFFF8;
  v19 = 0xE700000000000000;
  while (2)
  {
    if (!v53)
    {
      if (v52 < *(v54 + 16))
      {
        v18 = *(v51 + 8 * v52 + 32);

        v55 = v52 + 1;
        if (__OFADD__(v52, 1))
        {
          goto LABEL_86;
        }

LABEL_77:
        v56 = *(v18 + 48) == 0x6449206C6C6543 && *(v18 + 56) == 0xE700000000000000;
        if (v56 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && *(v18 + OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_subsId) == v176)
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          v51 = v174;
        }

        else
        {
        }

        ++v52;
        v18 = v175;
        if (v55 == v175)
        {
          goto LABEL_87;
        }

        continue;
      }

      __break(1u);
LABEL_116:
      __break(1u);
LABEL_117:
      if (!_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_118;
      }

LABEL_92:
      if ((v52 & 0xC000000000000001) == 0)
      {
        if (*(v52 + 16))
        {
          v58 = *(v52 + 32);

          goto LABEL_95;
        }

        __break(1u);
LABEL_287:
        v71 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        goto LABEL_126;
      }

LABEL_285:
      v58 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_95:

      v59 = *(v58 + 112);
      v60 = *(v58 + 120);

      v61 = sub_1001E248C(v59, v60);
      LOBYTE(v60) = v62;

      v63 = v174;
      if ((v60 & 1) == 0)
      {
        v64 = v173;
        v173[10] = v61;
        *(v64 + 88) = 0;
      }

      v181 = v19;
      if (!v18)
      {
        goto LABEL_119;
      }

      goto LABEL_98;
    }

    break;
  }

  v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  v55 = v52 + 1;
  if (!__OFADD__(v52, 1))
  {
    goto LABEL_77;
  }

LABEL_86:
  __break(1u);
LABEL_87:
  v19 = _swiftEmptyArrayStorage;
LABEL_88:

  v181 = sub_10021A608(v57);
  sub_100218274(&v181);
  if (v25)
  {
    goto LABEL_368;
  }

  v52 = v181;
  if (v181 < 0 || (v181 & 0x4000000000000000) != 0)
  {
    goto LABEL_117;
  }

  if (*(v181 + 16))
  {
    goto LABEL_92;
  }

LABEL_118:

  v63 = v174;
  v181 = v19;
  if (!v18)
  {
    goto LABEL_119;
  }

LABEL_98:
  v52 = 0;
  v65 = v63 & 0xC000000000000001;
  v66 = v63 & 0xFFFFFFFFFFFFFF8;
  v19 = 0xE700000000000000;
  while (2)
  {
    if (v65)
    {
      v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v67 = v52 + 1;
      if (__OFADD__(v52, 1))
      {
        break;
      }

      goto LABEL_104;
    }

    if (v52 >= *(v66 + 16))
    {
      goto LABEL_116;
    }

    v18 = *(v63 + 8 * v52 + 32);

    v67 = v52 + 1;
    if (!__OFADD__(v52, 1))
    {
LABEL_104:
      v68 = *(v18 + 48) == 0x4E43465241524ELL && *(v18 + 56) == 0xE700000000000000;
      if (v68 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && *(v18 + OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_subsId) == v176)
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v63 = v174;
      }

      else
      {
      }

      ++v52;
      v18 = v175;
      if (v67 == v175)
      {
        goto LABEL_114;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_114:
  v19 = _swiftEmptyArrayStorage;
LABEL_119:

  v181 = sub_10021A608(v69);
  sub_100218274(&v181);
  if (v25)
  {
    goto LABEL_368;
  }

  v70 = v181;
  if (v181 < 0 || (v181 & 0x4000000000000000) != 0)
  {
LABEL_147:
    if (!_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_148;
    }

LABEL_123:
    if ((v70 & 0xC000000000000001) != 0)
    {
      goto LABEL_287;
    }

    if (!*(v70 + 16))
    {
      __break(1u);
      goto LABEL_289;
    }

    v71 = *(v70 + 32);

LABEL_126:

    v72 = *(v71 + 112);
    v73 = *(v71 + 120);

    v74 = sub_1001E248C(v72, v73);
    LOBYTE(v73) = v75;

    v76 = v174;
    if ((v73 & 1) == 0)
    {
      v77 = v173;
      v173[14] = v74;
      *(v77 + 120) = 0;
    }

    v181 = v19;
    if (!v18)
    {
      goto LABEL_149;
    }

    goto LABEL_129;
  }

  if (*(v181 + 16))
  {
    goto LABEL_123;
  }

LABEL_148:

  v76 = v174;
  v181 = v19;
  if (!v18)
  {
    goto LABEL_149;
  }

LABEL_129:
  v70 = 0;
  v78 = v76 & 0xC000000000000001;
  v79 = v76 & 0xFFFFFFFFFFFFFF8;
  v19 = 0xE600000000000000;
  while (2)
  {
    if (!v78)
    {
      if (v70 >= *(v79 + 16))
      {
        __break(1u);
        goto LABEL_147;
      }

      v18 = *(v76 + 8 * v70 + 32);

      v80 = v70 + 1;
      if (__OFADD__(v70, 1))
      {
        break;
      }

      goto LABEL_135;
    }

    v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v80 = v70 + 1;
    if (!__OFADD__(v70, 1))
    {
LABEL_135:
      v81 = *(v18 + 48) == 0x4E4346524145 && *(v18 + 56) == 0xE600000000000000;
      if (v81 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && *(v18 + OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_subsId) == v176)
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v76 = v174;
      }

      else
      {
      }

      ++v70;
      v18 = v175;
      if (v80 == v175)
      {
        goto LABEL_145;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_145:
  v19 = _swiftEmptyArrayStorage;
LABEL_149:

  v181 = sub_10021A608(v82);
  sub_100218274(&v181);
  if (v25)
  {
    goto LABEL_368;
  }

  v83 = v181;
  if (v181 < 0 || (v181 & 0x4000000000000000) != 0)
  {
    goto LABEL_177;
  }

  if (!*(v181 + 16))
  {
    goto LABEL_178;
  }

  while (2)
  {
    if ((v83 & 0xC000000000000001) == 0)
    {
      if (*(v83 + 16))
      {
        v84 = *(v83 + 32);

        goto LABEL_156;
      }

      __break(1u);
LABEL_291:
      v98 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_186:

      v99 = *(v98 + 112);
      v100 = *(v98 + 120);

      v101 = sub_1001E248C(v99, v100);
      LOBYTE(v100) = v102;

      v103 = v174;
      if ((v100 & 1) == 0)
      {
        v104 = v173;
        v173[16] = v101;
        *(v104 + 136) = 0;
      }

      v181 = v19;
      if (!v18)
      {
        goto LABEL_209;
      }

LABEL_189:
      v97 = 0;
      v105 = v103 & 0xC000000000000001;
      v106 = v103 & 0xFFFFFFFFFFFFFF8;
      v19 = 0xE400000000000000;
      while (1)
      {
        if (v105)
        {
          v107 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v108 = v97 + 1;
          if (__OFADD__(v97, 1))
          {
LABEL_204:
            __break(1u);
LABEL_205:
            v19 = _swiftEmptyArrayStorage;
            goto LABEL_209;
          }
        }

        else
        {
          if (v97 >= *(v106 + 16))
          {
            __break(1u);
            goto LABEL_207;
          }

          v107 = *(v103 + 8 * v97 + 32);

          v108 = v97 + 1;
          if (__OFADD__(v97, 1))
          {
            goto LABEL_204;
          }
        }

        v109 = *(v107 + 48) == 1347572562 && *(v107 + 56) == 0xE400000000000000;
        if (v109 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && *(v107 + OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_subsId) == v176)
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          v18 = v175;
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          v103 = v174;
        }

        else
        {
        }

        ++v97;
        if (v108 == v18)
        {
          goto LABEL_205;
        }
      }
    }

LABEL_289:
    v84 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_156:

    v85 = *(v84 + 112);
    v86 = *(v84 + 120);

    v87 = sub_1001E248C(v85, v86);
    LOBYTE(v86) = v88;

    v89 = v174;
    if ((v86 & 1) == 0)
    {
      v90 = v173;
      v173[12] = v87;
      *(v90 + 104) = 0;
    }

    v181 = v19;
    if (!v18)
    {
      goto LABEL_179;
    }

LABEL_159:
    v83 = 0;
    v91 = v89 & 0xC000000000000001;
    v92 = v89 & 0xFFFFFFFFFFFFFF8;
    v19 = 0xE300000000000000;
LABEL_162:
    if (!v91)
    {
      if (v83 >= *(v92 + 16))
      {
        __break(1u);
LABEL_177:
        if (_CocoaArrayWrapper.endIndex.getter())
        {
          continue;
        }

LABEL_178:

        v89 = v174;
        v181 = v19;
        if (!v18)
        {
          goto LABEL_179;
        }

        goto LABEL_159;
      }

      v93 = *(v89 + 8 * v83 + 32);

      v94 = v83 + 1;
      if (__OFADD__(v83, 1))
      {
        goto LABEL_174;
      }

      goto LABEL_165;
    }

    break;
  }

  v93 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  v94 = v83 + 1;
  if (!__OFADD__(v83, 1))
  {
LABEL_165:
    v95 = *(v93 + 48) == 4801360 && *(v93 + 56) == 0xE300000000000000;
    if (v95 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && *(v93 + OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_subsId) == v176)
    {
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      v18 = v175;
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v89 = v174;
    }

    else
    {
    }

    ++v83;
    if (v94 == v18)
    {
      goto LABEL_175;
    }

    goto LABEL_162;
  }

LABEL_174:
  __break(1u);
LABEL_175:
  v19 = _swiftEmptyArrayStorage;
LABEL_179:

  v181 = sub_10021A608(v96);
  sub_100218274(&v181);
  if (v25)
  {
    goto LABEL_368;
  }

  v97 = v181;
  if (v181 < 0 || (v181 & 0x4000000000000000) != 0)
  {
LABEL_207:
    if (!_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_208;
    }

LABEL_183:
    if ((v97 & 0xC000000000000001) != 0)
    {
      goto LABEL_291;
    }

    if (*(v97 + 16))
    {
      v98 = *(v97 + 32);

      goto LABEL_186;
    }

    __break(1u);
    goto LABEL_293;
  }

  if (*(v181 + 16))
  {
    goto LABEL_183;
  }

LABEL_208:

  v103 = v174;
  v181 = v19;
  if (v18)
  {
    goto LABEL_189;
  }

LABEL_209:

  v181 = sub_10021A608(v110);
  sub_100218274(&v181);
  if (v25)
  {
    goto LABEL_368;
  }

  v111 = v181;
  if (v181 < 0 || (v181 & 0x4000000000000000) != 0)
  {
    if (!_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_219;
    }

LABEL_213:
    if ((v111 & 0xC000000000000001) == 0)
    {
      if (!*(v111 + 16))
      {
        __break(1u);
        goto LABEL_295;
      }

      v112 = *(v111 + 32);

LABEL_216:

      v113 = *(v112 + 112);
      v114 = *(v112 + 120);
      v181 = 0;

      LOBYTE(v113) = sub_10022464C(v113, v114, &v181);

      if (v113)
      {
        v115 = v173;
        v173[18] = v181;
        *(v115 + 152) = 0;
      }

      goto LABEL_220;
    }

LABEL_293:
    v112 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_216;
  }

  if (*(v181 + 16))
  {
    goto LABEL_213;
  }

LABEL_219:

LABEL_220:
  v116 = v174;
  v181 = v19;
  if (v18)
  {
    v117 = 0;
    v118 = v174 & 0xC000000000000001;
    v119 = v174 & 0xFFFFFFFFFFFFFF8;
    v19 = 0xE400000000000000;
    while (1)
    {
      if (v118)
      {
        v120 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v121 = v117 + 1;
        if (__OFADD__(v117, 1))
        {
LABEL_236:
          __break(1u);
LABEL_237:
          v19 = _swiftEmptyArrayStorage;
          break;
        }
      }

      else
      {
        if (v117 >= *(v119 + 16))
        {
          __break(1u);
          goto LABEL_248;
        }

        v120 = *(v116 + 8 * v117 + 32);

        v121 = v117 + 1;
        if (__OFADD__(v117, 1))
        {
          goto LABEL_236;
        }
      }

      v122 = *(v120 + 48) == 1364349778 && *(v120 + 56) == 0xE400000000000000;
      if (v122 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && *(v120 + OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_subsId) == v176)
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        v18 = v175;
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v116 = v174;
      }

      else
      {
      }

      ++v117;
      if (v121 == v18)
      {
        goto LABEL_237;
      }
    }
  }

  v181 = sub_10021A608(v123);
  sub_100218274(&v181);
  if (v25)
  {
    goto LABEL_368;
  }

  v117 = v181;
  if (v181 < 0 || (v181 & 0x4000000000000000) != 0)
  {
LABEL_248:
    if (!_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_249;
    }

LABEL_242:
    if ((v117 & 0xC000000000000001) == 0)
    {
      if (!*(v117 + 16))
      {
        __break(1u);
        goto LABEL_297;
      }

      v124 = *(v117 + 32);

      goto LABEL_245;
    }

LABEL_295:
    v124 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_245:

    v125 = *(v124 + 112);
    v126 = *(v124 + 120);
    v181 = 0;

    LOBYTE(v125) = sub_10022464C(v125, v126, &v181);

    if (v125)
    {
      v127 = v173;
      v173[20] = v181;
      *(v127 + 168) = 0;
    }

    goto LABEL_250;
  }

  if (*(v181 + 16))
  {
    goto LABEL_242;
  }

LABEL_249:

LABEL_250:
  v128 = v174;
  if (qword_100375018 != -1)
  {
    goto LABEL_280;
  }

LABEL_251:
  if (*(qword_100382500 + 27) != 1)
  {
    goto LABEL_330;
  }

  v181 = v19;
  if (v18)
  {
    v129 = 0;
    v130 = v128 & 0xC000000000000001;
    v131 = v128 & 0xFFFFFFFFFFFFFF8;
    v19 = 0xE500000000000000;
    while (1)
    {
      if (v130)
      {
        v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v132 = v129 + 1;
        if (__OFADD__(v129, 1))
        {
LABEL_268:
          __break(1u);
LABEL_269:
          v19 = _swiftEmptyArrayStorage;
          break;
        }
      }

      else
      {
        if (v129 >= *(v131 + 16))
        {
          __break(1u);
LABEL_280:
          swift_once();
          goto LABEL_251;
        }

        v18 = *(v128 + 8 * v129 + 32);

        v132 = v129 + 1;
        if (__OFADD__(v129, 1))
        {
          goto LABEL_268;
        }
      }

      v133 = *(v18 + 48) == 0x30524E4953 && *(v18 + 56) == 0xE500000000000000;
      if (v133 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && *(v18 + OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_subsId) == v176)
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v128 = v174;
      }

      else
      {
      }

      ++v129;
      v18 = v175;
      if (v132 == v175)
      {
        goto LABEL_269;
      }
    }
  }

  v181 = sub_10021A608(v134);
  sub_100218274(&v181);
  if (!v25)
  {

    v117 = v181;
    if ((v181 & 0x8000000000000000) == 0 && (v181 & 0x4000000000000000) == 0)
    {
      if (*(v181 + 16))
      {
        goto LABEL_274;
      }

LABEL_298:

      goto LABEL_299;
    }

LABEL_297:
    if (!_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_298;
    }

LABEL_274:
    if ((v117 & 0xC000000000000001) != 0)
    {
      goto LABEL_364;
    }

    if (!*(v117 + 16))
    {
      __break(1u);
      goto LABEL_366;
    }

    v135 = *(v117 + 32);

    while (2)
    {

      v136 = *(v135 + 112);
      v137 = *(v135 + 120);
      v181 = 0;

      LOBYTE(v136) = sub_10022464C(v136, v137, &v181);

      if (v136)
      {
        v138 = v173;
        v173[26] = v181;
        *(v138 + 216) = 0;
      }

LABEL_299:
      v139 = v174;
      v181 = v19;
      if (v18)
      {
        v140 = 0;
        v141 = v174 & 0xC000000000000001;
        v142 = v174 & 0xFFFFFFFFFFFFFF8;
        v19 = 0xE500000000000000;
        while (1)
        {
          if (v141)
          {
            v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            v143 = v140 + 1;
            if (__OFADD__(v140, 1))
            {
LABEL_315:
              __break(1u);
LABEL_316:
              v19 = _swiftEmptyArrayStorage;
              break;
            }
          }

          else
          {
            if (v140 >= *(v142 + 16))
            {
              __break(1u);
              goto LABEL_327;
            }

            v18 = *(v139 + 8 * v140 + 32);

            v143 = v140 + 1;
            if (__OFADD__(v140, 1))
            {
              goto LABEL_315;
            }
          }

          v144 = *(v18 + 48) == 0x31524E4953 && *(v18 + 56) == 0xE500000000000000;
          if (v144 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && *(v18 + OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_subsId) == v176)
          {
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
            v139 = v174;
          }

          else
          {
          }

          ++v140;
          v18 = v175;
          if (v143 == v175)
          {
            goto LABEL_316;
          }
        }
      }

      v181 = sub_10021A608(v145);
      sub_100218274(&v181);
      if (v25)
      {
        break;
      }

      v140 = v181;
      if (v181 < 0 || (v181 & 0x4000000000000000) != 0)
      {
LABEL_327:
        if (!_CocoaArrayWrapper.endIndex.getter())
        {
          goto LABEL_328;
        }

LABEL_321:
        if ((v140 & 0xC000000000000001) != 0)
        {
LABEL_366:
          v146 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (!*(v140 + 16))
          {
            __break(1u);
            break;
          }

          v146 = *(v140 + 32);
        }

        v147 = *(v146 + 112);
        v148 = *(v146 + 120);
        v181 = 0;

        LOBYTE(v147) = sub_10022464C(v147, v148, &v181);

        if (v147)
        {
          v149 = v173;
          v173[28] = v181;
          *(v149 + 232) = 0;
        }
      }

      else
      {
        if (*(v181 + 16))
        {
          goto LABEL_321;
        }

LABEL_328:
      }

      v128 = v174;
LABEL_330:
      v181 = v19;
      if (v18)
      {
        v150 = 0;
        v151 = v128 & 0xC000000000000001;
        v152 = v128 & 0xFFFFFFFFFFFFFF8;
        v19 = 0xE300000000000000;
        while (1)
        {
          if (v151)
          {
            v153 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            v154 = v150 + 1;
            if (__OFADD__(v150, 1))
            {
LABEL_346:
              __break(1u);
LABEL_347:
              v19 = v181;
              break;
            }
          }

          else
          {
            if (v150 >= *(v152 + 16))
            {
              __break(1u);
              goto LABEL_358;
            }

            v153 = *(v128 + 8 * v150 + 32);

            v154 = v150 + 1;
            if (__OFADD__(v150, 1))
            {
              goto LABEL_346;
            }
          }

          v155 = *(v153 + 48) == 5394003 && *(v153 + 56) == 0xE300000000000000;
          if (v155 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && *(v153 + OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_subsId) == v176)
          {
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            v18 = v175;
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
            v128 = v174;
          }

          else
          {
          }

          ++v150;
          if (v154 == v18)
          {
            goto LABEL_347;
          }
        }
      }

      v181 = sub_10021A608(v156);
      sub_100218274(&v181);
      if (v25)
      {
        break;
      }

      v150 = v181;
      if (v181 < 0 || (v181 & 0x4000000000000000) != 0)
      {
LABEL_358:
        if (!_CocoaArrayWrapper.endIndex.getter())
        {
LABEL_359:

LABEL_360:
          v161 = v173;
LABEL_361:
          v162 = v172;
          Date.init()();
          v169(v162, 0, 1, v170);
          sub_1001CB2A0(v162, v161 + v171);
          return;
        }
      }

      else if (!*(v181 + 16))
      {
        goto LABEL_359;
      }

      if ((v150 & 0xC000000000000001) != 0)
      {
        v157 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        goto LABEL_355;
      }

      if (*(v150 + 16))
      {
        v157 = *(v150 + 32);

LABEL_355:

        v158 = *(v157 + 112);
        v159 = *(v157 + 120);
        v181 = 0;

        v160 = sub_10022464C(v158, v159, &v181);

        if (!v160)
        {
          goto LABEL_360;
        }

        v161 = v173;
        v173[24] = v181;
        *(v161 + 200) = 0;
        goto LABEL_361;
      }

      __break(1u);
LABEL_364:
      v135 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      continue;
    }
  }

LABEL_368:

  __break(1u);
}

uint64_t sub_100211A64(uint64_t *a1, uint64_t *a2)
{
  v4 = sub_1001A551C(&qword_100375738, &qword_1002EF900);
  __chkstk_darwin(v4 - 8);
  v6 = &v25[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v9 = &v25[-v8];
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v25[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v14);
  v16 = &v25[-v15];
  v17 = *a1;
  v18 = *a2;
  v19 = OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_timestamp;
  swift_beginAccess();
  sub_1001C2E78(v17 + v19, v9);
  v20 = *(v11 + 48);
  if (v20(v9, 1, v10) == 1)
  {
    Date.init()();
    if (v20(v9, 1, v10) != 1)
    {
      sub_1001AC99C(v9, &qword_100375738, &qword_1002EF900);
    }
  }

  else
  {
    (*(v11 + 32))(v16, v9, v10);
  }

  v21 = OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_timestamp;
  swift_beginAccess();
  sub_1001C2E78(v18 + v21, v6);
  if (v20(v6, 1, v10) == 1)
  {
    Date.init()();
    if (v20(v6, 1, v10) != 1)
    {
      sub_1001AC99C(v6, &qword_100375738, &qword_1002EF900);
    }
  }

  else
  {
    (*(v11 + 32))(v13, v6, v10);
  }

  v22 = static Date.> infix(_:_:)();
  v23 = *(v11 + 8);
  v23(v13, v10);
  v23(v16, v10);
  return v22 & 1;
}

void sub_100211D70(char a1, __n128 a2)
{
  v3 = v2;
  LOBYTE(v2) = a1;
  v4 = type metadata accessor for FTMNetworkInfoDataModel(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4 - 8);
  v7 = &v133 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v133 - v9;
  __chkstk_darwin(v11);
  v13 = &v133 - v12;
  if (qword_100374FA8 != -1)
  {
    goto LABEL_150;
  }

LABEL_2:
  v14 = qword_100382490;
  v15 = static os_log_type_t.default.getter();
  v16 = os_log(_:dso:log:type:_:)("All items cleared", 17, 2, &_mh_execute_header, v14, v15, _swiftEmptyArrayStorage);
  if (v2 == 2 || (v2 & 1) == 0)
  {
    v20 = sub_1001FD15C(_swiftEmptyArrayStorage);
    v21 = OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_metricDetailsClassObject;
    swift_beginAccess();
    *(v3 + v21) = v20;

    if (qword_100375020 != -1)
    {
      swift_once();
    }

    v22 = qword_100382508;
    v23 = OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_secondaryCell;
    swift_beginAccess();
    *&v22[v23] = _swiftEmptyArrayStorage;
    v24 = v22;

    sub_10020D3C0(1);
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v25 = v147[0];
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v147[0]) = (v25 & 1) == 0;

    static Published.subscript.setter();

    v26 = qword_100382508;
    v27 = OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_primaryCell;
    swift_beginAccess();
    *&v26[v27] = _swiftEmptyArrayStorage;
    v28 = v26;

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v29 = v146[0];
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v146[0]) = (v29 & 1) == 0;

    static Published.subscript.setter();

    return;
  }

  v134 = v5;
  v137 = v13;
  v5 = OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_lock;
  [*(v3 + OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_lock) lock];
  if (qword_100375018 != -1)
  {
    goto LABEL_156;
  }

LABEL_5:
  if (*(qword_100382500 + 160))
  {
    goto LABEL_96;
  }

  v144 = *(qword_100382500 + 156);
  v17 = OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_metricModelsArray;
  swift_beginAccess();
  v145 = v17;
  v18 = *&v17[v3];
  if (v18 >> 62)
  {
LABEL_167:
    v13 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v13 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v141 = v3;
  v133 = v5;
  v135 = v10;
  v136 = v7;
  if (!v13)
  {
    goto LABEL_56;
  }

  if (v13 < 1)
  {
    __break(1u);
LABEL_169:
    __break(1u);
LABEL_170:
    __break(1u);
LABEL_171:
    __break(1u);
    return;
  }

  v19 = v18 & 0xC000000000000001;

  v5 = 0;
  v139 = v13;
  v140 = v18;
  v138 = v18 & 0xC000000000000001;
  do
  {
    if (v19)
    {
      v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v10 = *(v18 + 8 * v5 + 32);
    }

    if (*(v10 + OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_subsId) != v144)
    {
      goto LABEL_51;
    }

    v32 = v145;
    swift_beginAccess();

    v33 = sub_10021B49C(&v32[v3], v10);

    v2 = *&v32[v3];
    v7 = v2 >> 62;
    if (v2 >> 62)
    {
      v34 = _CocoaArrayWrapper.endIndex.getter();
      v35 = v34 - v33;
      if (v34 < v33)
      {
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
        swift_once();
        goto LABEL_2;
      }
    }

    else
    {
      v34 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v35 = v34 - v33;
      if (v34 < v33)
      {
        goto LABEL_145;
      }
    }

    if (v33 < 0)
    {
      goto LABEL_146;
    }

    if (v7)
    {
      v13 = v34;
      v36 = _CocoaArrayWrapper.endIndex.getter();
      v34 = v13;
    }

    else
    {
      v36 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v36 < v34)
    {
      goto LABEL_147;
    }

    v13 = -v35;
    if (__OFSUB__(0, v35))
    {
      goto LABEL_148;
    }

    v142 = v34;
    v143 = v33;
    if (v7)
    {
      v37 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v37 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v38 = v37 - v35;
    if (__OFADD__(v37, v13))
    {
      goto LABEL_149;
    }

    isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
    *&v145[v3] = v2;
    if (!isUniquelyReferenced_nonNull_bridgeObject)
    {
      if (v7)
      {
LABEL_38:
        _CocoaArrayWrapper.endIndex.getter();
      }

LABEL_39:
      v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      *&v145[v3] = v2;
      v7 = v2 & 0xFFFFFFFFFFFFFF8;
      goto LABEL_40;
    }

    if (v7)
    {
      goto LABEL_38;
    }

    v7 = v2 & 0xFFFFFFFFFFFFFF8;
    if (v38 > *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_39;
    }

LABEL_40:
    v3 = v7 + 32;
    v40 = (v7 + 32 + 8 * v143);
    type metadata accessor for FTMAllMetricsModel(0);
    swift_arrayDestroy();
    if (v35)
    {
      if (v2 >> 62)
      {
        v41 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v41 = *(v7 + 16);
      }

      v42 = v41 - v142;
      if (__OFSUB__(v41, v142))
      {
        __break(1u);
LABEL_152:
        __break(1u);
LABEL_153:
        __break(1u);
LABEL_154:
        __break(1u);
LABEL_155:
        __break(1u);
LABEL_156:
        swift_once();
        goto LABEL_5;
      }

      v43 = (v3 + 8 * v142);
      if (v142 != v143 || v40 >= &v43[8 * v42])
      {
        memmove(v40, v43, 8 * v42);
      }

      if (v2 >> 62)
      {
        v44 = _CocoaArrayWrapper.endIndex.getter();
        v31 = v44 - v35;
        if (__OFADD__(v44, v13))
        {
          goto LABEL_152;
        }
      }

      else
      {
        v30 = *(v7 + 16);
        v31 = v30 - v35;
        if (__OFADD__(v30, v13))
        {
          goto LABEL_152;
        }
      }

      *(v7 + 16) = v31;
    }

    v3 = v141;
    *&v145[v141] = v2;
    swift_endAccess();
    sub_10020D3C0(0);
    v13 = v139;
    v18 = v140;
    v19 = v138;
LABEL_51:
    ++v5;
  }

  while (v13 != v5);

LABEL_56:
  if (qword_100375020 != -1)
  {
    swift_once();
  }

  v142 = 0;
  v45 = qword_100382508;
  v46 = OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_secondaryCell;
  v143 = OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_secondaryCell;
  swift_beginAccess();
  v145 = v45;
  v18 = *&v45[v46];
  v10 = *(v18 + 16);
  if (!v10)
  {
LABEL_69:
    v49 = v145;
    v50 = v145;
    v5 = v10;
    goto LABEL_70;
  }

  v7 = 0;
  v47 = 264;
  while (2)
  {
    if (*(v18 + v47 - 208) != 1)
    {
      if (*(v18 + v47 - 216) == v144)
      {
        goto LABEL_64;
      }

LABEL_61:
      ++v7;
      v47 += 208;
      if (v10 == v7)
      {
        goto LABEL_69;
      }

      continue;
    }

    break;
  }

  if (v144)
  {
    goto LABEL_61;
  }

LABEL_64:
  v5 = v7 + 1;
  if (__OFADD__(v7, 1))
  {
    goto LABEL_169;
  }

  v48 = v145;
  if (v5 != v10)
  {
    v62 = v144;
    while (1)
    {
      if (v5 >= v10)
      {
        goto LABEL_153;
      }

      v82 = v18 + v47;
      if (*(v18 + v47) == 1)
      {
        if (!v62)
        {
          goto LABEL_100;
        }
      }

      else if (*(v82 - 8) == v62)
      {
        goto LABEL_100;
      }

      if (v5 != v7)
      {
        if (v7 >= v10)
        {
          __break(1u);
LABEL_158:
          __break(1u);
LABEL_159:
          __break(1u);
LABEL_160:
          __break(1u);
LABEL_161:
          __break(1u);
LABEL_162:
          __break(1u);
LABEL_163:
          __break(1u);
LABEL_164:
          __break(1u);
LABEL_165:
          __break(1u);
LABEL_166:
          __break(1u);
          goto LABEL_167;
        }

        v10 = 208 * v7;
        v83 = (v18 + 32 + 208 * v7);
        v148[0] = *v83;
        v84 = v83[1];
        v85 = v83[2];
        v86 = v83[4];
        v148[3] = v83[3];
        v148[4] = v86;
        v148[1] = v84;
        v148[2] = v85;
        v87 = v83[5];
        v88 = v83[6];
        v89 = v83[8];
        v148[7] = v83[7];
        v148[8] = v89;
        v148[5] = v87;
        v148[6] = v88;
        v90 = v83[9];
        v91 = v83[10];
        v92 = v83[11];
        *(&v148[11] + 9) = *(v83 + 185);
        v148[10] = v91;
        v148[11] = v92;
        v148[9] = v90;
        v94 = *(v82 - 24);
        v93 = (v82 - 24);
        v149[0] = v94;
        v95 = v93[1];
        v96 = v93[2];
        v97 = v93[4];
        v149[3] = v93[3];
        v149[4] = v97;
        v149[1] = v95;
        v149[2] = v96;
        v98 = v93[5];
        v99 = v93[6];
        v100 = v93[8];
        v149[7] = v93[7];
        v149[8] = v100;
        v149[5] = v98;
        v149[6] = v99;
        v101 = v93[9];
        v102 = v93[10];
        v103 = v93[11];
        *(&v149[11] + 9) = *(v93 + 185);
        v149[10] = v102;
        v149[11] = v103;
        v149[9] = v101;
        sub_100201470(v148, v147);
        sub_100201470(v149, v147);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v145[v143] = v18;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v18 = sub_1001FA708(v18);
          *&v145[v143] = v18;
        }

        if (v7 >= *(v18 + 16))
        {
          goto LABEL_158;
        }

        v105 = (v18 + v10);
        v146[0] = *(v18 + v10 + 32);
        v106 = *(v18 + v10 + 48);
        v107 = *(v18 + v10 + 64);
        v108 = *(v18 + v10 + 96);
        v146[3] = *(v18 + v10 + 80);
        v146[4] = v108;
        v146[1] = v106;
        v146[2] = v107;
        v109 = *(v18 + v10 + 112);
        v110 = *(v18 + v10 + 128);
        v111 = *(v18 + v10 + 144);
        v146[8] = *(v18 + v10 + 160);
        v146[6] = v110;
        v146[7] = v111;
        v146[5] = v109;
        v112 = *(v18 + v10 + 176);
        v113 = *(v18 + v10 + 192);
        v114 = *(v18 + v10 + 208);
        *(&v146[11] + 9) = *(v18 + v10 + 217);
        v146[10] = v113;
        v146[11] = v114;
        v146[9] = v112;
        v105[2] = v149[0];
        v115 = v149[1];
        v116 = v149[2];
        v117 = v149[4];
        v105[5] = v149[3];
        v105[6] = v117;
        v105[3] = v115;
        v105[4] = v116;
        v118 = v149[5];
        v119 = v149[6];
        v120 = v149[8];
        v105[9] = v149[7];
        v105[10] = v120;
        v105[7] = v118;
        v105[8] = v119;
        v121 = v149[9];
        v122 = v149[10];
        v123 = v149[11];
        *(v105 + 217) = *(&v149[11] + 9);
        v105[12] = v122;
        v105[13] = v123;
        v105[11] = v121;
        sub_1002014CC(v146);
        v10 = v145;
        v3 = v143;
        *&v145[v143] = v18;
        if (v5 >= *(v18 + 16))
        {
          goto LABEL_159;
        }

        v63 = v18 + v47;
        v147[0] = *(v18 + v47 - 24);
        v64 = *(v18 + v47 - 8);
        v65 = *(v18 + v47 + 8);
        v66 = *(v18 + v47 + 40);
        v147[3] = *(v18 + v47 + 24);
        v147[4] = v66;
        v147[1] = v64;
        v147[2] = v65;
        v67 = *(v18 + v47 + 56);
        v68 = *(v18 + v47 + 72);
        v69 = *(v18 + v47 + 104);
        v147[7] = *(v18 + v47 + 88);
        v147[8] = v69;
        v147[5] = v67;
        v147[6] = v68;
        v70 = *(v18 + v47 + 120);
        v71 = *(v18 + v47 + 136);
        v72 = *(v18 + v47 + 152);
        *(&v147[11] + 9) = *(v18 + v47 + 161);
        v147[10] = v71;
        v147[11] = v72;
        v147[9] = v70;
        *(v63 - 24) = v148[0];
        v73 = v148[1];
        v74 = v148[2];
        v75 = v148[3];
        *(v63 + 40) = v148[4];
        *(v63 + 24) = v75;
        *(v63 + 8) = v74;
        *(v63 - 8) = v73;
        v76 = v148[5];
        v77 = v148[6];
        v78 = v148[7];
        *(v63 + 104) = v148[8];
        *(v63 + 88) = v78;
        *(v63 + 72) = v77;
        *(v63 + 56) = v76;
        v79 = v148[9];
        v80 = v148[10];
        v81 = v148[11];
        *(v63 + 161) = *(&v148[11] + 9);
        *(v63 + 152) = v81;
        *(v63 + 136) = v80;
        *(v63 + 120) = v79;
        sub_1002014CC(v147);
        *(v10 + v3) = v18;
        v62 = v144;
      }

      ++v7;
LABEL_100:
      ++v5;
      v10 = *(v18 + 16);
      v47 += 208;
      if (v5 == v10)
      {
        goto LABEL_67;
      }
    }
  }

  v5 = v10;
LABEL_67:
  v10 = v7;
  v49 = v145;
  if (v5 < v7)
  {
    __break(1u);
    goto LABEL_69;
  }

LABEL_70:
  sub_1001FCA28(v10, v5);
  swift_endAccess();
  sub_10020D3C0(1);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v51 = v149[0];
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v149[0]) = (v51 & 1) == 0;

  static Published.subscript.setter();

  v7 = qword_100382508;
  v52 = OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_primaryCell;
  swift_beginAccess();
  v18 = *(v7 + v52);
  v3 = *(v18 + 16);
  if (!v3)
  {
    goto LABEL_81;
  }

  v5 = 0;
  v53 = 328;
  while (2)
  {
    if (*(v18 + v53 - 272) != 1)
    {
      if (*(v18 + v53 - 280) == v144)
      {
        goto LABEL_76;
      }

LABEL_73:
      ++v5;
      v53 += 296;
      if (v3 == v5)
      {
        goto LABEL_81;
      }

      continue;
    }

    break;
  }

  if (v144)
  {
    goto LABEL_73;
  }

LABEL_76:
  v10 = v5 + 1;
  if (__OFADD__(v5, 1))
  {
    goto LABEL_170;
  }

  v54 = v7;
  if (v10 != v3)
  {
    v124 = v144;
    while (1)
    {
      if (v10 >= v3)
      {
        goto LABEL_154;
      }

      if (*(v18 + v53 + 24) == 1)
      {
        if (!v124)
        {
          goto LABEL_116;
        }
      }

      else if (*(v18 + v53 + 16) == v124)
      {
        goto LABEL_116;
      }

      if (v10 != v5)
      {
        if (v5 >= v3)
        {
          goto LABEL_160;
        }

        v3 = 296 * v5;
        memcpy(v148, (v18 + 32 + 296 * v5), 0x121uLL);
        memcpy(v149, (v18 + v53), 0x121uLL);
        sub_1001DFAB0(v148, v147);
        sub_1001DFAB0(v149, v147);
        v125 = swift_isUniquelyReferenced_nonNull_native();
        *(v7 + v52) = v18;
        if ((v125 & 1) == 0)
        {
          v18 = sub_1001FA730(v18);
          *(v7 + v52) = v18;
        }

        if (v5 >= *(v18 + 16))
        {
          goto LABEL_161;
        }

        v3 += v18;
        memcpy(v146, (v3 + 32), 0x121uLL);
        memcpy((v3 + 32), v149, 0x121uLL);
        sub_1001DFB0C(v146);
        *(v7 + v52) = v18;
        if (v10 >= *(v18 + 16))
        {
          goto LABEL_162;
        }

        memcpy(v147, (v18 + v53), 0x121uLL);
        memcpy((v18 + v53), v148, 0x121uLL);
        sub_1001DFB0C(v147);
        *(v7 + v52) = v18;
        v124 = v144;
      }

      ++v5;
LABEL_116:
      ++v10;
      v3 = *(v18 + 16);
      v53 += 296;
      if (v10 == v3)
      {
        goto LABEL_79;
      }
    }
  }

  v10 = v3;
LABEL_79:
  v3 = v5;
  if (v10 < v5)
  {
    __break(1u);
LABEL_81:
    v55 = v7;
    v10 = v3;
  }

  sub_1001FCC2C(v3, v10);
  swift_endAccess();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v56 = v149[0];
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v149[0]) = (v56 & 1) == 0;

  static Published.subscript.setter();

  v7 = OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_networkInfoDataModels;
  v3 = v141;
  swift_beginAccess();
  v18 = *(v3 + v7);
  v58 = (v18 + 16);
  v57 = *(v18 + 16);
  if (!v57)
  {
LABEL_93:
    v61 = v57;
    v5 = v133;
    goto LABEL_95;
  }

  v10 = 0;
  v5 = v133;
  v59 = ((*(v134 + 80) + 32) & ~*(v134 + 80));
  v60 = *(v134 + 72);
  v145 = v59;
  while (2)
  {
    if (v59[v18 + 8] != 1)
    {
      if (*&v59[v18] == v144)
      {
        break;
      }

      goto LABEL_85;
    }

    if (v144)
    {
LABEL_85:
      ++v10;
      v59 += v60;
      if (v57 == v10)
      {
        v61 = v57;
        v3 = v141;
        goto LABEL_95;
      }

      continue;
    }

    break;
  }

  v61 = v10 + 1;
  if (__OFADD__(v10, 1))
  {
    goto LABEL_171;
  }

  if (v61 != v57)
  {
    v5 = &v59[v60];
    while (v61 < v57)
    {
      v3 = v137;
      sub_10021C448(v18 + v5, v137, type metadata accessor for FTMNetworkInfoDataModel);
      if (*(v3 + 8))
      {
        v127 = 0;
      }

      else
      {
        v127 = *v3;
      }

      sub_10021C2E0(v3, v126);
      if (v127 != v144)
      {
        if (v61 != v10)
        {
          if ((v10 & 0x8000000000000000) != 0)
          {
            goto LABEL_163;
          }

          v128 = *v58;
          if (v10 >= *v58)
          {
            goto LABEL_164;
          }

          sub_10021C448(&v145[v18 + v10 * v60], v135, type metadata accessor for FTMNetworkInfoDataModel);
          if (v61 >= v128)
          {
            goto LABEL_165;
          }

          sub_10021C448(v18 + v5, v136, type metadata accessor for FTMNetworkInfoDataModel);
          v129 = swift_isUniquelyReferenced_nonNull_native();
          *(v141 + v7) = v18;
          if ((v129 & 1) == 0)
          {
            v18 = sub_1001FA67C(v18);
            *(v141 + v7) = v18;
          }

          sub_10021C33C(v136, &v145[v18 + v10 * v60], v130);
          v132 = v141;
          *(v141 + v7) = v18;
          if (v61 >= *(v18 + 16))
          {
            goto LABEL_166;
          }

          sub_10021C33C(v135, v18 + v5, v131);
          *(v132 + v7) = v18;
        }

        ++v10;
      }

      ++v61;
      v58 = (v18 + 16);
      v57 = *(v18 + 16);
      v5 += v60;
      if (v61 == v57)
      {
        goto LABEL_91;
      }
    }

    goto LABEL_155;
  }

  v61 = v57;
LABEL_91:
  v57 = v10;
  v3 = v141;
  v5 = v133;
  if (v61 < v10)
  {
    __break(1u);
    goto LABEL_93;
  }

LABEL_95:
  sub_1001FCA54(v57, v61);
  swift_endAccess();
  sub_10020CF44(&unk_10031F328, sub_10021C2D0, &unk_10031F340);
LABEL_96:
  [*(v3 + v5) unlock];
}

double sub_100212E50()
{
  v0 = type metadata accessor for DispatchWorkItemFlags();
  v26 = *(v0 - 8);
  v27 = v0;
  __chkstk_darwin(v0);
  v25 = &v19 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v20 = *(v2 - 8);
  v21 = v2;
  __chkstk_darwin(v2);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v5);
  v6 = type metadata accessor for DispatchQoS();
  v22 = *(v6 - 8);
  v23 = v6;
  __chkstk_darwin(v6);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100374FA8 != -1)
  {
    swift_once();
  }

  v9 = qword_100382490;
  v10 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("All items cleanedup", 19, 2, &_mh_execute_header, v9, v10);
  v19 = sub_1002181D0();
  static DispatchQoS.background.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10021B134(&qword_100377BD0, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_1001A551C(&qword_100377BD8, &unk_1002F3710);
  sub_1001AD0C8(&qword_100377BE0, &qword_100377BD8, &unk_1002F3710, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v20 + 104))(v4, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v21);
  v11 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v12 = swift_allocObject();
  v13 = v24;
  *(v12 + 16) = v24;
  aBlock[4] = sub_10021C2B8;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10020C96C;
  aBlock[3] = &unk_10031F2F0;
  v14 = _Block_copy(aBlock);
  v15 = v13;
  static DispatchQoS.unspecified.getter();
  v28 = _swiftEmptyArrayStorage;
  sub_10021B134(&qword_1003784A0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1001A551C(&unk_100377090, &qword_1002F2CA0);
  sub_1001AD0C8(&qword_1003784B0, &unk_100377090, &qword_1002F2CA0, &protocol conformance descriptor for [A]);
  v16 = v25;
  v17 = v27;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);

  (*(v26 + 8))(v16, v17);
  (*(v22 + 8))(v8, v23);

  return result;
}

id sub_100213350(uint64_t a1)
{
  v48 = type metadata accessor for TimeZone();
  v2 = *(v48 - 8);
  __chkstk_darwin(v48);
  v47 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1001A551C(&qword_100375738, &qword_1002EF900);
  __chkstk_darwin(v4 - 8);
  v6 = &v39 - v5;
  v49 = type metadata accessor for Date();
  v7 = *(v49 - 8);
  __chkstk_darwin(v49);
  v40 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_metricModelsArray;
  result = swift_beginAccess();
  v11 = *(a1 + v9);
  if (v11 >> 62)
  {
LABEL_25:
    result = _CocoaArrayWrapper.endIndex.getter();
    v12 = result;
    p_cb = (&OBJC_PROTOCOL___CoreTelephonyClientDataDelegate + 64);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_21:
    v29 = *(p_cb + 325);
    [*(a1 + v29) lock];
    if (qword_100375020 != -1)
    {
      swift_once();
    }

    v30 = qword_100382508;
    v31 = OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_secondaryCell;
    swift_beginAccess();
    *&v30[v31] = _swiftEmptyArrayStorage;
    v32 = v30;

    sub_10020D3C0(1);
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v33 = v53[0];
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v53[0]) = (v33 & 1) == 0;

    static Published.subscript.setter();

    v34 = qword_100382508;
    v35 = OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_primaryCell;
    swift_beginAccess();
    *&v34[v35] = _swiftEmptyArrayStorage;
    v36 = v34;

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v37 = v52[0];
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v52[0]) = (v37 & 1) == 0;

    static Published.subscript.setter();

    v38 = OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_networkInfoDataModels;
    swift_beginAccess();
    *(a1 + v38) = _swiftEmptyArrayStorage;

    sub_10020CF44(&unk_10031F328, sub_10021C2D0, &unk_10031F340);
    return [*(a1 + v29) unlock];
  }

  v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  p_cb = &OBJC_PROTOCOL___CoreTelephonyClientDataDelegate.cb;
  if (!v12)
  {
    goto LABEL_21;
  }

LABEL_3:
  if (v12 >= 1)
  {
    v39 = v9;
    v42 = *(p_cb + 325);
    v50 = (v7 + 48);
    v51 = v11 & 0xC000000000000001;
    v46 = (v7 + 32);
    v45 = (v2 + 8);
    v44 = "Cellular logging";
    v41 = (v7 + 8);

    v14 = 0;
    v7 = 0;
    v15 = v40;
    v16 = v49;
    v43 = v11;
    while (1)
    {
      if (v51)
      {
        v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v17 = *(v11 + 8 * v14 + 32);
      }

      v18 = OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_timestamp;
      swift_beginAccess();
      sub_1001C2E78(v17 + v18, v6);
      if ((*v50)(v6, 1, v16) == 1)
      {

        sub_1001AC99C(v6, &qword_100375738, &qword_1002EF900);
      }

      else
      {
        v19 = a1;
        (*v46)(v15, v6, v16);
        if (qword_100374F80 != -1)
        {
          swift_once();
        }

        v20 = qword_100382470;
        v21 = v47;
        static TimeZone.current.getter();
        isa = TimeZone._bridgeToObjectiveC()().super.isa;
        (*v45)(v21, v48);
        [v20 setTimeZone:isa];

        v23 = String._bridgeToObjectiveC()();
        [v20 setDateFormat:v23];

        v24 = Date._bridgeToObjectiveC()().super.isa;
        v25 = [v20 stringFromDate:v24];

        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v26 = sub_10020CACC();

        if (v26 < 881)
        {
          v16 = v49;
          (*v41)(v15, v49);

          a1 = v19;
          v11 = v43;
        }

        else
        {
          a1 = v19;
          [*(v19 + v42) lock];
          v2 = v39;
          swift_beginAccess();

          v9 = sub_10021B49C((v19 + v2), v17);

          v27 = *(v19 + v2);
          if (v27 >> 62)
          {
            v28 = _CocoaArrayWrapper.endIndex.getter();
          }

          else
          {
            v28 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v11 = v43;
          if (v28 < v9)
          {
            __break(1u);
            goto LABEL_25;
          }

          sub_1001FE250(v9, v28);
          swift_endAccess();
          sub_10020D3C0(0);
          [*(a1 + v42) unlock];

          v15 = v40;
          v16 = v49;
          (*v41)(v40, v49);
        }
      }

      if (v12 == ++v14)
      {

        p_cb = &OBJC_PROTOCOL___CoreTelephonyClientDataDelegate.cb;
        goto LABEL_21;
      }
    }
  }

  __break(1u);
  return result;
}

double sub_100213B74(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v37 = *(v4 - 8);
  v38 = v4;
  __chkstk_darwin(v4);
  v36 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v31 = *(v6 - 8);
  v32 = v6;
  __chkstk_darwin(v6);
  v30 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v8);
  v9 = type metadata accessor for DispatchQoS();
  v33 = *(v9 - 8);
  v34 = v9;
  __chkstk_darwin(v9);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100374F98 != -1)
  {
    swift_once();
  }

  v12 = qword_100382480;
  v13 = static os_log_type_t.default.getter();
  sub_1001A551C(&unk_100377020, &unk_1002EF770);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1002EED40;
  v45 = a2;
  aBlock = dispatch thunk of CustomStringConvertible.description.getter();
  v40 = v15;
  v16._countAndFlagsBits = 44;
  v16._object = 0xE100000000000000;
  String.append(_:)(v16);
  v29 = a2;
  v17._countAndFlagsBits = Dictionary.description.getter();
  String.append(_:)(v17);

  v18 = aBlock;
  v19 = v40;
  *(v14 + 56) = &type metadata for String;
  *(v14 + 64) = sub_1001A76E8();
  *(v14 + 32) = v18;
  *(v14 + 40) = v19;
  os_log(_:dso:log:type:_:)("Data received from CT %{private}s", 33, 2, &_mh_execute_header, v12, v13, v14);

  sub_1002181D0();
  static DispatchQoS.userInteractive.getter();
  aBlock = _swiftEmptyArrayStorage;
  sub_10021B134(&qword_100377BD0, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_1001A551C(&qword_100377BD8, &unk_1002F3710);
  sub_1001AD0C8(&qword_100377BE0, &qword_100377BD8, &unk_1002F3710, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v31 + 104))(v30, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v32);
  v20 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v21 = swift_allocObject();
  v22 = v35;
  v21[2] = a1;
  v21[3] = v22;
  v21[4] = v29;
  v43 = sub_10021BCE4;
  v44 = v21;
  aBlock = _NSConcreteStackBlock;
  v40 = 1107296256;
  v41 = sub_10020C96C;
  v42 = &unk_10031F2A0;
  v23 = _Block_copy(&aBlock);

  v24 = v22;
  static DispatchQoS.unspecified.getter();
  v45 = _swiftEmptyArrayStorage;
  sub_10021B134(&qword_1003784A0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1001A551C(&unk_100377090, &qword_1002F2CA0);
  sub_1001AD0C8(&qword_1003784B0, &unk_100377090, &qword_1002F2CA0, &protocol conformance descriptor for [A]);
  v25 = v36;
  v26 = v38;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v23);

  (*(v37 + 8))(v25, v26);
  (*(v33 + 8))(v11, v34);

  return result;
}

void sub_10021415C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v118 = a3;
  v117 = a2;
  v4 = sub_1001A551C(&qword_100375738, &qword_1002EF900);
  __chkstk_darwin(v4 - 8);
  v113 = &v103 - v5;
  v6 = *(a1 + 16);
  v125 = a1;
  v107 = "kCTCellMonitorTAC";
  if (!v6)
  {
    goto LABEL_8;
  }

  v7 = sub_1001F66B8(0xD000000000000027, 0x80000001002B9780);
  if ((v8 & 1) == 0)
  {
    goto LABEL_8;
  }

  sub_1001A773C(*(a1 + 56) + 32 * v7, &v140);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_8;
  }

  if (__PAIR128__(0x80000001002BB8B0, 0xD000000000000025) != v137)
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      goto LABEL_7;
    }

LABEL_8:
    if (!kCTCellMonitorCellRadioAccessTechnology)
    {
      goto LABEL_106;
    }

    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    if (*(v125 + 16))
    {
      v12 = sub_1001F66B8(v10, v11);
      v14 = v13;

      if (v14)
      {
        sub_1001A773C(*(v125 + 56) + 32 * v12, &v140);
        if (swift_dynamicCast())
        {
          if (!kCTCellMonitorRadioAccessTechnologyGSM)
          {
            goto LABEL_107;
          }

          v15 = v137;
          if (v15 == static String._unconditionallyBridgeFromObjectiveC(_:)() && *(&v15 + 1) == v16)
          {

LABEL_27:
            v124 = 0;
            v126 = 0;
            v120 = 1;
            goto LABEL_31;
          }

          v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v24)
          {
            goto LABEL_27;
          }
        }
      }
    }

    else
    {
    }

    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    a1 = v125;
    if (*(v125 + 16))
    {
      v19 = sub_1001F66B8(v17, v18);
      v21 = v20;
      a1 = v125;

      if (v21)
      {
        sub_1001A773C(*(a1 + 56) + 32 * v19, &v140);
        if (swift_dynamicCast())
        {
          if (!kCTCellMonitorRadioAccessTechnologyUMTS)
          {
            goto LABEL_108;
          }

          v22 = v137;
          if (v22 == static String._unconditionallyBridgeFromObjectiveC(_:)() && *(&v22 + 1) == v23)
          {
          }

          else
          {
            v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((v25 & 1) == 0)
            {
              v124 = 0;
              v120 = 0;
              v126 = 0;
              goto LABEL_31;
            }
          }

          v120 = 0;
          v126 = 0;
          v124 = 1;
LABEL_31:
          a1 = v125;
          goto LABEL_32;
        }
      }
    }

    else
    {
    }

    v124 = 0;
    v120 = 0;
    v126 = 0;
    goto LABEL_32;
  }

LABEL_7:
  v124 = 0;
  v120 = 0;
  v126 = 1;
LABEL_32:
  v26 = a1 + 64;
  v27 = 1 << *(a1 + 32);
  v28 = -1;
  if (v27 < 64)
  {
    v28 = ~(-1 << v27);
  }

  v29 = v28 & *(a1 + 64);
  v115 = OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_lock;
  v122 = OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_metricModelsArray;
  v30 = (v27 + 63) >> 6;
  v119 = "om CT %{private}s";
  v106 = "dioAccessTechnologyLTE";
  v123 = "snr_heartbeat_nr";
  v105 = "kCTCellMonitorUARFCN";
  v104 = 0x80000001002BCF10;

  v31 = 0;
  v121 = 0;
  v116 = a1 + 64;
  v114 = v30;
  while (v29)
  {
    v32 = v31;
LABEL_47:
    v35 = __clz(__rbit64(v29));
    v29 &= v29 - 1;
    v36 = v35 | (v32 << 6);
    v37 = (*(a1 + 48) + 16 * v36);
    v39 = *v37;
    v38 = v37[1];
    sub_1001A773C(*(a1 + 56) + 32 * v36, &v135);
    *&v137 = v39;
    *(&v137 + 1) = v38;
    sub_100201570(&v135, &v138);

LABEL_48:
    v140 = v137;
    v141[0] = v138;
    v141[1] = v139;
    v40 = *(&v137 + 1);
    if (!*(&v137 + 1))
    {

      return;
    }

    v41 = v140;
    v134[0] = v140;
    v134[1] = *(&v137 + 1);
    sub_100201570(v141, &v137);

    v42 = sub_10021BCF0(v126, v41, v40, v120, v124);
    v44 = v43;
    LODWORD(v127) = v45;
    v46 = v42;
    v132 = v42;
    v133 = v43;
    v47 = v41;
    v48 = String.lowercased()();

    v49 = String.lowercased()();
    if (v48._countAndFlagsBits == v49._countAndFlagsBits && v48._object == v49._object)
    {
    }

    else
    {
      v50 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v50 & 1) == 0)
      {
        v129 = v44;
        v55 = v47;
        v54 = v46;
        a1 = v125;
        goto LABEL_59;
      }
    }

    v132 = 5521746;
    v133 = 0xE300000000000000;

    strcpy(v134, "Network PLMN");
    BYTE5(v134[1]) = 0;
    HIWORD(v134[1]) = -5120;
    *&v131 = 0;
    *(&v131 + 1) = 0xE000000000000000;
    _print_unlocked<A, B>(_:_:)();
    v51._countAndFlagsBits = 32;
    v51._object = 0xE100000000000000;
    String.append(_:)(v51);
    a1 = v125;
    if (*(v125 + 16) && (v52 = sub_1001F66B8(0xD000000000000011, v106 | 0x8000000000000000), (v53 & 1) != 0))
    {
      sub_1001A773C(*(a1 + 56) + 32 * v52, v130);
      sub_100201570(v130, &v135);
    }

    else
    {
      v136 = &type metadata for String;
      *&v135 = 0;
      *(&v135 + 1) = 0xE000000000000000;
    }

    _print_unlocked<A, B>(_:_:)();
    sub_1001A5654(&v135);
    v136 = &type metadata for String;
    v135 = v131;
    sub_1001A5654(&v137);
    sub_100201570(&v135, &v137);
    v129 = 0xE300000000000000;
    LODWORD(v127) = 1;
    v54 = 5521746;
    v55 = 0x206B726F7774654ELL;
    v40 = 0xEC0000004E4D4C50;
LABEL_59:
    v128 = v55;
    v56 = String.lowercased()();
    v57 = String.lowercased()();
    if (v56._countAndFlagsBits == v57._countAndFlagsBits && v56._object == v57._object)
    {

      v58 = v129;
    }

    else
    {
      v59 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v58 = v129;
      if ((v59 & 1) == 0)
      {
        goto LABEL_79;
      }
    }

    *&v131 = 0;
    *(&v131 + 1) = 0xE000000000000000;
    if (*(a1 + 16) && (v60 = sub_1001F66B8(v128, v40), (v61 & 1) != 0))
    {
      sub_1001A773C(*(a1 + 56) + 32 * v60, v130);
      sub_100201570(v130, &v135);
    }

    else
    {
      v136 = &type metadata for String;
      *&v135 = 0;
      *(&v135 + 1) = 0xE000000000000000;
    }

    _print_unlocked<A, B>(_:_:)();
    sub_1001A5654(&v135);
    v62 = sub_1001E248C(v131, *(&v131 + 1));
    if ((v63 & 1) == 0 && v62 == 2)
    {
      *&v131 = 0;
      *(&v131 + 1) = 0xE000000000000000;
      if (*(a1 + 16) && (v64 = sub_1001F66B8(0xD000000000000027, v107 | 0x8000000000000000), (v65 & 1) != 0))
      {
        sub_1001A773C(*(a1 + 56) + 32 * v64, v130);
        sub_100201570(v130, &v135);
      }

      else
      {
        v136 = &type metadata for String;
        *&v135 = 0;
        *(&v135 + 1) = 0xE000000000000000;
      }

      _print_unlocked<A, B>(_:_:)();
      sub_1001A5654(&v135);
      v66 = String.lowercased()();

      v67 = String.lowercased()();
      if (v66._countAndFlagsBits == v67._countAndFlagsBits && v66._object == v67._object)
      {
      }

      else
      {
        v68 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v68 & 1) == 0)
        {
          goto LABEL_79;
        }
      }

      v136 = &type metadata for String;
      *&v135 = 51;
      *(&v135 + 1) = 0xE100000000000000;
      sub_1001A5654(&v137);
      sub_100201570(&v135, &v137);
    }

LABEL_79:
    if (!v126)
    {
      goto LABEL_89;
    }

    v69 = String.lowercased()();
    v70 = String.lowercased()();
    if (v69._countAndFlagsBits == v70._countAndFlagsBits && v69._object == v70._object)
    {
    }

    else
    {
      v71 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v71 & 1) == 0)
      {
        goto LABEL_89;
      }
    }

    if (!*(a1 + 16) || (v72 = sub_1001F66B8(0xD00000000000001CLL, v123 | 0x8000000000000000), (v73 & 1) == 0))
    {
LABEL_89:
      if ((v127 & 1) == 0)
      {
        goto LABEL_35;
      }

      goto LABEL_90;
    }

    sub_1001A773C(*(a1 + 56) + 32 * v72, &v135);
    if (swift_dynamicCast() & 1) != 0 || ((v127 ^ 1))
    {
LABEL_35:
      sub_1001A5654(&v137);

      goto LABEL_36;
    }

LABEL_90:
    *&v135 = v54;
    *(&v135 + 1) = v58;

    v74._countAndFlagsBits = 126;
    v74._object = 0xE100000000000000;
    String.append(_:)(v74);
    v75 = v118;
    *&v130[0] = v118;
    v76._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v76);

    v77 = v135;
    v78 = v117;
    [*(v117 + v115) lock];
    v79 = v122;
    swift_beginAccess();
    v80 = v75;
    v81 = v121;
    v82 = sub_100219E58((v78 + v79), v80, &v132, v134);
    v121 = v81;
    v83 = *(v78 + v79);
    if (v83 >> 62)
    {
      v102 = v82;
      v84 = _CocoaArrayWrapper.endIndex.getter();
      v82 = v102;
    }

    else
    {
      v84 = *((v83 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v85 = v128;
    if (v84 < v82)
    {
      goto LABEL_105;
    }

    sub_1001FE250(v82, v84);
    swift_endAccess();
    sub_10020D3C0(0);
    v112 = v54;
    v111 = *(&v77 + 1);
    v127 = v77;
    if (v124 && (v85 == 0xD000000000000014 && v104 == v40 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
    {
      *&v135 = v85;
      *(&v135 + 1) = v40;

      v86._countAndFlagsBits = 0x53544D555FLL;
      v86._object = 0xE500000000000000;
      String.append(_:)(v86);
      v110 = *(&v135 + 1);
      v128 = v135;
    }

    else
    {

      v110 = v40;
    }

    *&v135 = 0;
    *(&v135 + 1) = 0xE000000000000000;
    v87 = v129;

    _print_unlocked<A, B>(_:_:)();
    v108 = *(&v135 + 1);
    v109 = v135;
    v88 = v113;
    Date.init()();
    v89 = type metadata accessor for Date();
    v90 = *(*(v89 - 8) + 56);
    v90(v88, 0, 1, v89);
    type metadata accessor for FTMAllMetricsModel(0);
    v91 = swift_allocObject();
    v91[2] = 0;
    v91[3] = 0xE000000000000000;
    v91[4] = 0;
    v91[5] = 0xE000000000000000;
    v91[6] = 0;
    v91[7] = 0xE000000000000000;
    v91[8] = 0;
    v91[9] = 0xE000000000000000;
    v91[10] = 0;
    v91[11] = 0xE000000000000000;
    v91[12] = 0;
    v91[13] = 0xE000000000000000;
    v91[14] = 0;
    v91[15] = 0xE000000000000000;
    v91[16] = 0;
    v91[17] = 0xE000000000000000;
    v92 = OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_timestamp;
    v90(v91 + OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_timestamp, 1, 1, v89);
    v93 = OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_subsId;
    *(v91 + OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_subsId) = 0;
    v94 = OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_isVisible;
    *(v91 + OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_isVisible) = 1;
    v95 = v111;
    v91[2] = v127;
    v91[3] = v95;
    v91[4] = v112;
    v91[5] = v87;
    v129 = v87;
    v96 = v110;
    v91[8] = v128;
    v91[9] = v96;

    v91[6] = sub_100223914();
    v91[7] = v97;

    v98 = v108;
    v91[16] = v109;
    v91[17] = v98;

    v91[12] = sub_100223AD4();
    v91[13] = v99;

    v91[10] = 0;
    v91[11] = 0xE000000000000000;

    swift_beginAccess();
    sub_1001CB2A0(v113, v91 + v92);
    swift_endAccess();
    *(v91 + v93) = v118;
    *(v91 + v94) = 1;
    v100 = v117;
    v101 = v122;
    swift_beginAccess();

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*(v100 + v101) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v100 + v101) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_endAccess();
    sub_10020D3C0(0);
    [*(v100 + v115) unlock];

    sub_1001A5654(&v137);

    a1 = v125;
LABEL_36:
    v26 = v116;
    v30 = v114;
  }

  if (v30 <= v31 + 1)
  {
    v33 = v31 + 1;
  }

  else
  {
    v33 = v30;
  }

  v34 = v33 - 1;
  while (1)
  {
    v32 = v31 + 1;
    if (__OFADD__(v31, 1))
    {
      break;
    }

    if (v32 >= v30)
    {
      v29 = 0;
      v138 = 0u;
      v139 = 0u;
      v31 = v34;
      v137 = 0u;
      goto LABEL_48;
    }

    v29 = *(v26 + 8 * v32);
    ++v31;
    if (v29)
    {
      v31 = v32;
      goto LABEL_47;
    }
  }

  __break(1u);
LABEL_105:
  __break(1u);
LABEL_106:
  __break(1u);
LABEL_107:
  __break(1u);
LABEL_108:
  __break(1u);
}

double sub_100215264(uint64_t a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v63 = *(v2 - 8);
  v64 = v2;
  __chkstk_darwin(v2);
  v62 = &v50[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = type metadata accessor for Metric(0);
  v57 = *(v4 - 1);
  __chkstk_darwin(v4);
  v56 = v5;
  v58 = &v50[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v54 = *(v6 - 8);
  v55 = v6;
  __chkstk_darwin(v6);
  v53 = &v50[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v8);
  v9 = type metadata accessor for DispatchQoS();
  v59 = *(v9 - 8);
  v60 = v9;
  __chkstk_darwin(v9);
  v11 = &v50[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_100374F98 != -1)
  {
    swift_once();
  }

  v52 = qword_100382480;
  v51 = static os_log_type_t.default.getter();
  sub_1001A551C(&unk_100377020, &unk_1002EF770);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1002EED40;
  v13 = [*(a1 + v4[5]) description];
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  aBlock = v14;
  v67 = v16;
  v17._countAndFlagsBits = 44;
  v17._object = 0xE100000000000000;
  String.append(_:)(v17);
  LODWORD(v65) = *(a1 + v4[13]);
  v18._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v18);

  v19._countAndFlagsBits = 44;
  v19._object = 0xE100000000000000;
  String.append(_:)(v19);
  v20 = [*(a1 + v4[6]) description];
  v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = v22;

  v24._countAndFlagsBits = v21;
  v24._object = v23;
  String.append(_:)(v24);

  v25._countAndFlagsBits = 44;
  v25._object = 0xE100000000000000;
  String.append(_:)(v25);
  v26 = [*(a1 + v4[7]) description];
  v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v29 = v28;

  v30._countAndFlagsBits = v27;
  v30._object = v29;
  String.append(_:)(v30);

  v31._countAndFlagsBits = 44;
  v31._object = 0xE100000000000000;
  String.append(_:)(v31);
  v32 = [*(a1 + v4[9]) description];
  v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v35 = v34;

  v36._countAndFlagsBits = v33;
  v36._object = v35;
  String.append(_:)(v36);

  v37 = aBlock;
  v38 = v67;
  *(v12 + 56) = &type metadata for String;
  *(v12 + 64) = sub_1001A76E8();
  *(v12 + 32) = v37;
  *(v12 + 40) = v38;
  os_log(_:dso:log:type:_:)("Metric received from AWD %{private}s", 36, 2, &_mh_execute_header, v52, v51, v12);

  sub_1002181D0();
  static DispatchQoS.userInteractive.getter();
  aBlock = _swiftEmptyArrayStorage;
  sub_10021B134(&qword_100377BD0, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_1001A551C(&qword_100377BD8, &unk_1002F3710);
  sub_1001AD0C8(&qword_100377BE0, &qword_100377BD8, &unk_1002F3710, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v54 + 104))(v53, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v55);
  v39 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v40 = v58;
  sub_10021C448(a1, v58, type metadata accessor for Metric);
  v41 = (*(v57 + 80) + 16) & ~*(v57 + 80);
  v42 = (v56 + v41 + 7) & 0xFFFFFFFFFFFFFFF8;
  v43 = swift_allocObject();
  sub_10021C3E0(v40, v43 + v41, type metadata accessor for Metric);
  v44 = v61;
  *(v43 + v42) = v61;
  v70 = sub_10021B30C;
  v71 = v43;
  aBlock = _NSConcreteStackBlock;
  v67 = 1107296256;
  v68 = sub_10020C96C;
  v69 = &unk_10031F250;
  v45 = _Block_copy(&aBlock);
  v46 = v44;
  static DispatchQoS.unspecified.getter();
  v65 = _swiftEmptyArrayStorage;
  sub_10021B134(&qword_1003784A0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1001A551C(&unk_100377090, &qword_1002F2CA0);
  sub_1001AD0C8(&qword_1003784B0, &unk_100377090, &qword_1002F2CA0, &protocol conformance descriptor for [A]);
  v47 = v62;
  v48 = v64;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v45);

  (*(v63 + 8))(v47, v48);
  (*(v59 + 8))(v11, v60);

  return result;
}

void sub_100215A1C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001A551C(&qword_100375738, &qword_1002EF900);
  __chkstk_darwin(v4 - 8);
  v6 = &v168 - v5;
  v7 = type metadata accessor for Metric(0);
  v8 = *(a1 + v7[5]);
  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == 18229 && v9 == 0xE200000000000000)
  {

LABEL_23:
    v20 = sub_10021BA8C();
    __chkstk_darwin(v20);
    *(&v168 - 2) = a1;
    v21 = sub_1001E2ED0(sub_10021C4D4, (&v168 - 4), v20);

    if ((v21 & 1) == 0)
    {
      return;
    }

    v22 = [v8 description];
    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;

    v180._countAndFlagsBits = v23;
    v180._object = v25;
    v26._countAndFlagsBits = 126;
    v26._object = 0xE100000000000000;
    String.append(_:)(v26);
    v27 = v7;
    v176 = *(a1 + v7[13]);
    *v179 = v176;
    v28._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v28);

    object = v180._object;
    countAndFlagsBits = v180._countAndFlagsBits;
    v177 = OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_lock;
    __chkstk_darwin([*(a2 + OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_lock) lock]);
    *(&v168 - 2) = a1;
    v29 = OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_metricModelsArray;
    swift_beginAccess();
    v30 = sub_10021A384(sub_10021BC84, (&v168 - 4));
    v31 = *(a2 + v29);
    if (v31 >> 62)
    {
      v148 = v30;
      v32 = _CocoaArrayWrapper.endIndex.getter();
      v30 = v148;
      if (v32 >= v148)
      {
LABEL_26:
        sub_1001FE250(v30, v32);
        swift_endAccess();
        sub_10020D3C0(0);
        v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v178 = a2;
        v169 = v34;
        v35 = v6;
        v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v38 = v37;
        v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v170 = v40;
        v171 = v39;
        v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v172 = v42;
        v173 = v41;
        Date.init()();
        v43 = type metadata accessor for Date();
        v44 = *(*(v43 - 8) + 56);
        v44(v35, 0, 1, v43);
        type metadata accessor for FTMAllMetricsModel(0);
        v45 = swift_allocObject();
        v45[2] = 0;
        v45[3] = 0xE000000000000000;
        v45[4] = 0;
        v45[5] = 0xE000000000000000;
        v45[6] = 0;
        v45[7] = 0xE000000000000000;
        v45[8] = 0;
        v45[9] = 0xE000000000000000;
        v45[10] = 0;
        v45[11] = 0xE000000000000000;
        v45[12] = 0;
        v45[13] = 0xE000000000000000;
        v45[14] = 0;
        v45[15] = 0xE000000000000000;
        v45[16] = 0;
        v45[17] = 0xE000000000000000;
        v46 = OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_timestamp;
        v44(v45 + OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_timestamp, 1, 1, v43);
        v47 = OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_subsId;
        *(v45 + OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_subsId) = 0;
        v48 = OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_isVisible;
        *(v45 + OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_isVisible) = 1;
        v49 = object;
        v45[2] = countAndFlagsBits;
        v45[3] = v49;
        v50 = v169;
        v45[4] = v33;
        v45[5] = v50;
        v27 = v178;
        v45[8] = v36;
        v45[9] = v38;

        v45[6] = sub_100223914();
        v45[7] = v51;

        v52 = v170;
        v45[16] = v171;
        v45[17] = v52;

        v45[12] = sub_100223AD4();
        v45[13] = v53;

        v54 = v172;
        v45[10] = v173;
        v45[11] = v54;

        swift_beginAccess();
        sub_1001CB2A0(v35, v45 + v46);
        swift_endAccess();
        *(v45 + v47) = v176;
        *(v45 + v48) = 1;
        swift_beginAccess();

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((*(v27 + v29) & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*(v27 + v29) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
LABEL_27:
          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          swift_endAccess();
          sub_10020D3C0(0);
          v55 = *(v27 + v177);
LABEL_28:
          [v55 unlock];

          return;
        }

LABEL_74:
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        goto LABEL_27;
      }
    }

    else
    {
      v32 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v32 >= v30)
      {
        goto LABEL_26;
      }
    }

    __break(1u);
    goto LABEL_74;
  }

  v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v11)
  {
    goto LABEL_23;
  }

  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == 4543564 && v12 == 0xE300000000000000)
  {

LABEL_31:
    v56 = *(a1 + v7[6]);
    if (static String._unconditionallyBridgeFromObjectiveC(_:)() == 0x207942206C6C6543 && v57 == 0xEC000000646E6142)
    {
    }

    else
    {
      v59 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v59 & 1) == 0)
      {
        v60 = sub_10021B808();
        __chkstk_darwin(v60);
        *(&v168 - 2) = a1;
        v61 = sub_1001E2ED0(sub_10021BA48, (&v168 - 4), v60);

        if ((v61 & 1) == 0)
        {
          return;
        }

        v62 = [v8 description];
        v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v65 = v64;

        v180._countAndFlagsBits = v63;
        v180._object = v65;
        v66._countAndFlagsBits = 126;
        v66._object = 0xE100000000000000;
        String.append(_:)(v66);
        v178 = v7;
        v176 = *(a1 + v7[13]);
        *v179 = v176;
        v67._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v67);

        object = v180._object;
        countAndFlagsBits = v180._countAndFlagsBits;
        v177 = OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_lock;
        __chkstk_darwin([*(a2 + OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_lock) lock]);
        *(&v168 - 2) = a1;
        v68 = OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_metricModelsArray;
        swift_beginAccess();
        v69 = sub_10021A384(sub_10021C4F0, (&v168 - 4));
        v70 = *(a2 + v68);
        if (v70 >> 62)
        {
          v167 = v69;
          v71 = _CocoaArrayWrapper.endIndex.getter();
          v69 = v167;
          if (v71 >= v167)
          {
LABEL_39:
            sub_1001FE250(v69, v71);
            swift_endAccess();
            sub_10020D3C0(0);
            v72 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v169 = v73;
            v170 = v72;
            v74 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v76 = v75;
            v77 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v171 = v78;
            v172 = v77;
            v178 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v173 = v79;
            Date.init()();
            v80 = type metadata accessor for Date();
            v81 = *(*(v80 - 8) + 56);
            v81(v6, 0, 1, v80);
            type metadata accessor for FTMAllMetricsModel(0);
            v82 = swift_allocObject();
            *(v82 + 2) = 0;
            *(v82 + 3) = 0xE000000000000000;
            *(v82 + 4) = 0;
            *(v82 + 5) = 0xE000000000000000;
            *(v82 + 6) = 0;
            *(v82 + 7) = 0xE000000000000000;
            *(v82 + 8) = 0;
            *(v82 + 9) = 0xE000000000000000;
            *(v82 + 10) = 0;
            *(v82 + 11) = 0xE000000000000000;
            *(v82 + 12) = 0;
            *(v82 + 13) = 0xE000000000000000;
            *(v82 + 14) = 0;
            *(v82 + 15) = 0xE000000000000000;
            *(v82 + 16) = 0;
            *(v82 + 17) = 0xE000000000000000;
            v83 = OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_timestamp;
            v81(&v82[OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_timestamp], 1, 1, v80);
            v84 = OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_subsId;
            *&v82[OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_subsId] = 0;
            v85 = OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_isVisible;
            v82[OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_isVisible] = 1;
            v86 = object;
            *(v82 + 2) = countAndFlagsBits;
            *(v82 + 3) = v86;
            v87 = v169;
            *(v82 + 4) = v170;
            *(v82 + 5) = v87;
            *(v82 + 8) = v74;
            *(v82 + 9) = v76;

            *(v82 + 6) = sub_100223914();
            *(v82 + 7) = v88;

            v89 = v171;
            *(v82 + 16) = v172;
            *(v82 + 17) = v89;

            *(v82 + 12) = sub_100223AD4();
            *(v82 + 13) = v90;

            v91 = v173;
            *(v82 + 10) = v178;
            *(v82 + 11) = v91;

            swift_beginAccess();
            sub_1001CB2A0(v6, &v82[v83]);
            swift_endAccess();
            *&v82[v84] = v176;
            v82[v85] = 1;
            swift_beginAccess();

            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((*(a2 + v68) & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*(a2 + v68) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
LABEL_40:
              specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              swift_endAccess();
              sub_10020D3C0(0);
              v55 = *(a2 + v177);
              goto LABEL_28;
            }

LABEL_88:
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            goto LABEL_40;
          }
        }

        else
        {
          v71 = *((v70 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v71 >= v69)
          {
            goto LABEL_39;
          }
        }

        __break(1u);
        goto LABEL_88;
      }
    }

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v92 = String.lowercased()();

    v180 = v92;
    strcpy(v179, "-section-dl_bw");
    v179[15] = -18;
    sub_1001A56A0();
    v93 = StringProtocol.contains<A>(_:)();

    if ((v93 & 1) == 0)
    {
      return;
    }

    v94 = v56;
    v180._countAndFlagsBits = 0xD000000000000010;
    v180._object = 0x80000001002BCE40;
    v178 = v7;
    countAndFlagsBits = *(a1 + v7[13]);
    v176 = v6;
    *v179 = countAndFlagsBits;
    v95._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v95);

    v27 = v180._countAndFlagsBits;
    v96 = v180._object;
    v177 = OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_lock;
    [*(a2 + OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_lock) lock];
    v97 = OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_metricModelsArray;
    v98 = swift_beginAccess();
    v99 = *(a2 + v97);
    __chkstk_darwin(v98);
    object = v27;
    *(&v168 - 4) = v27;
    *(&v168 - 3) = v96;
    *(&v168 - 2) = a1;

    v100 = sub_1001E21AC(sub_10021BA68, &v168 - 6, v99);
    v101 = v100;
    if (v100 >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_45;
      }
    }

    else if (*((v100 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_45:

      v6 = v178;
      if ((v101 & 0xC000000000000001) != 0)
      {
        v103 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (!*((v101 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_83;
        }

        v103 = *(v101 + 32);
      }

      v104 = v103[16];
      v105 = v103[17];
      if (v104 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v105 == v106)
      {

LABEL_69:

LABEL_80:
        [*(a2 + v177) unlock];
        return;
      }

      v112 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v112 & 1) == 0)
      {
        v103[16] = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v103[17] = v145;

        v103[12] = sub_100223AD4();
        v103[13] = v146;

        goto LABEL_69;
      }

LABEL_79:

      goto LABEL_80;
    }

    v149 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v169 = v150;
    v170 = v149;
    v151 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v171 = v152;
    v172 = v151;
    v178 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v173 = v153;
    v154 = v176;
    Date.init()();
    v155 = type metadata accessor for Date();
    v156 = *(*(v155 - 8) + 56);
    v156(v154, 0, 1, v155);
    type metadata accessor for FTMAllMetricsModel(0);
    v157 = swift_allocObject();
    v157[2] = 0;
    v157[3] = 0xE000000000000000;
    v157[4] = 0;
    v157[5] = 0xE000000000000000;
    v157[6] = 0;
    v157[7] = 0xE000000000000000;
    v157[8] = 0;
    v157[9] = 0xE000000000000000;
    v157[10] = 0;
    v157[11] = 0xE000000000000000;
    v157[12] = 0;
    v157[13] = 0xE000000000000000;
    v157[14] = 0;
    v157[15] = 0xE000000000000000;
    v157[16] = 0;
    v157[17] = 0xE000000000000000;
    v158 = OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_timestamp;
    v156(v157 + OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_timestamp, 1, 1, v155);
    v159 = OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_subsId;
    *(v157 + OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_subsId) = 0;
    v160 = OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_isVisible;
    *(v157 + OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_isVisible) = 1;
    v157[2] = object;
    v157[3] = v96;
    v157[4] = 0x544C20726568744FLL;
    v157[5] = 0xEF73646E61422045;
    v161 = v169;
    v157[8] = v170;
    v157[9] = v161;

    v157[6] = sub_100223914();
    v157[7] = v162;

    v163 = v171;
    v157[16] = v172;
    v157[17] = v163;

    v157[12] = sub_100223AD4();
    v157[13] = v164;

    v165 = v173;
    v157[10] = v178;
    v157[11] = v165;

    swift_beginAccess();
    sub_1001CB2A0(v154, v157 + v158);
    swift_endAccess();
    *(v157 + v159) = countAndFlagsBits;
    *(v157 + v160) = 1;
    swift_beginAccess();

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*(a2 + v97) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a2 + v97) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_endAccess();
    sub_10020D3C0(0);
    goto LABEL_79;
  }

  v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v14)
  {
    goto LABEL_31;
  }

  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == 5067591 && v15 == 0xE300000000000000)
  {
    goto LABEL_18;
  }

  v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v17 & 1) == 0)
  {
    if (static String._unconditionallyBridgeFromObjectiveC(_:)() == 1398033749 && v18 == 0xE400000000000000)
    {
LABEL_18:

      goto LABEL_19;
    }

    v147 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v147 & 1) == 0)
    {
      return;
    }
  }

LABEL_19:
  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == 5067591 && v19 == 0xE300000000000000)
  {
  }

  else
  {
    v107 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v107 & 1) == 0)
    {
      v108 = sub_10021B6C4();
      v109 = v108;
      goto LABEL_63;
    }
  }

  sub_1001A551C(&qword_1003770E0, &qword_1002F22B8);
  v108 = swift_allocObject();
  v109 = v108;
  *(v108 + 16) = xmmword_1002F2BB0;
  *(v108 + 32) = 0xD000000000000016;
  *(v108 + 40) = 0x80000001002B95F0;
  if (qword_100375018 != -1)
  {
    v108 = swift_once();
  }

  v110 = 0x80000001002B96C0;
  if (*(qword_100382500 + 26))
  {
    v111 = 0;
  }

  else
  {
    v111 = 0xD000000000000014;
  }

  if (*(qword_100382500 + 26))
  {
    v110 = 0xE000000000000000;
  }

  v109[6] = v111;
  v109[7] = v110;
  v109[8] = 0xD000000000000011;
  v109[9] = 0x80000001002BCE00;
  v109[10] = 0xD000000000000013;
  v109[11] = 0x80000001002BCE20;
  v109[12] = 0x74635F70637372;
  v109[13] = 0xE700000000000000;
  v109[14] = 0x74635F306E6365;
  v109[15] = 0xE700000000000000;
LABEL_63:
  __chkstk_darwin(v108);
  *(&v168 - 2) = a1;
  v113 = sub_1001E2ED0(sub_10021C4D4, (&v168 - 4), v109);

  if (v113)
  {
    v114 = [v8 description];
    v115 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v117 = v116;

    v180._countAndFlagsBits = v115;
    v180._object = v117;
    v118._countAndFlagsBits = 126;
    v118._object = 0xE100000000000000;
    String.append(_:)(v118);
    v27 = v7;
    v176 = *(a1 + v7[13]);
    *v179 = v176;
    v119._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v119);

    object = v180._object;
    countAndFlagsBits = v180._countAndFlagsBits;
    v177 = OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_lock;
    __chkstk_darwin([*(a2 + OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_lock) lock]);
    *(&v168 - 2) = a1;
    v94 = OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_metricModelsArray;
    swift_beginAccess();
    v102 = sub_10021A384(sub_10021C4F0, (&v168 - 4));
    v120 = *(a2 + v94);
    if (!(v120 >> 62))
    {
      v121 = *((v120 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v121 >= v102)
      {
        goto LABEL_66;
      }

LABEL_84:
      __break(1u);
      goto LABEL_74;
    }

LABEL_83:
    v166 = v102;
    v121 = _CocoaArrayWrapper.endIndex.getter();
    v102 = v166;
    if (v121 >= v166)
    {
LABEL_66:
      v122 = v6;
      sub_1001FE250(v102, v121);
      swift_endAccess();
      sub_10020D3C0(0);
      v123 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v178 = a2;
      v169 = v124;
      v125 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v127 = v126;
      v128 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v170 = v129;
      v171 = v128;
      v130 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v172 = v131;
      v173 = v130;
      v132 = v122;
      Date.init()();
      v133 = type metadata accessor for Date();
      v134 = *(*(v133 - 8) + 56);
      v134(v132, 0, 1, v133);
      type metadata accessor for FTMAllMetricsModel(0);
      v135 = swift_allocObject();
      v135[2] = 0;
      v135[3] = 0xE000000000000000;
      v135[4] = 0;
      v135[5] = 0xE000000000000000;
      v135[6] = 0;
      v135[7] = 0xE000000000000000;
      v135[8] = 0;
      v135[9] = 0xE000000000000000;
      v135[10] = 0;
      v135[11] = 0xE000000000000000;
      v135[12] = 0;
      v135[13] = 0xE000000000000000;
      v135[14] = 0;
      v135[15] = 0xE000000000000000;
      v135[16] = 0;
      v135[17] = 0xE000000000000000;
      v136 = OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_timestamp;
      v134(v135 + OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_timestamp, 1, 1, v133);
      v137 = OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_subsId;
      *(v135 + OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_subsId) = 0;
      v138 = OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_isVisible;
      *(v135 + OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_isVisible) = 1;
      v139 = object;
      v135[2] = countAndFlagsBits;
      v135[3] = v139;
      v140 = v169;
      v135[4] = v123;
      v135[5] = v140;
      v27 = v178;
      v135[8] = v125;
      v135[9] = v127;

      v135[6] = sub_100223914();
      v135[7] = v141;

      v142 = v170;
      v135[16] = v171;
      v135[17] = v142;

      v135[12] = sub_100223AD4();
      v135[13] = v143;

      v144 = v172;
      v135[10] = v173;
      v135[11] = v144;

      swift_beginAccess();
      sub_1001CB2A0(v132, v135 + v136);
      swift_endAccess();
      *(v135 + v137) = v176;
      *(v135 + v138) = 1;
      swift_beginAccess();

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*(v27 + v94) & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*(v27 + v94) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_27;
      }

      goto LABEL_74;
    }

    goto LABEL_84;
  }
}

uint64_t sub_100216F3C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = *(*a1 + 16) == a2 && *(*a1 + 24) == a3;
  if (v5 || (v6 = 0, (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {
    v7 = *(v4 + 64);
    v8 = *(v4 + 72);
    type metadata accessor for Metric(0);
    if (v7 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v8 == v9)
    {
      v6 = 1;
    }

    else
    {
      v6 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  return v6 & 1;
}

uint64_t sub_100216FF0(uint64_t a1, uint64_t a2)
{
  v2 = String.lowercased()();
  type metadata accessor for Metric(0);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = String.lowercased()();

  if (v2._countAndFlagsBits == v3._countAndFlagsBits && v2._object == v3._object)
  {
    v5 = 1;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v5 & 1;
}

uint64_t sub_1002170AC(void *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(*a1 + OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_subsId);
  if (v3 != *(a2 + *(type metadata accessor for Metric(0) + 52)))
  {
    goto LABEL_7;
  }

  v4 = v2[4];
  v5 = v2[5];
  if (v4 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v5 == v6)
  {
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v8 & 1) == 0)
    {
LABEL_7:
      v9 = 0;
      return v9 & 1;
    }
  }

  v10 = v2[8];
  v11 = v2[9];
  v12 = objc_opt_self();

  v13 = [v12 mainBundle];
  v27._object = v11;
  v14.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v14.value._object = 0xEB00000000656C62;
  v15._countAndFlagsBits = v10;
  v15._object = v11;
  v16._countAndFlagsBits = v10;
  v16._object = v11;
  v27._countAndFlagsBits = v10;
  v17 = NSLocalizedString(_:tableName:bundle:value:comment:)(v15, v14, v13, v16, v27);

  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;
  v21 = [v12 mainBundle];
  v28._object = v20;
  v22._countAndFlagsBits = v18;
  v22._object = v20;
  v23.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v23.value._object = 0xEB00000000656C62;
  v24._countAndFlagsBits = v18;
  v24._object = v20;
  v28._countAndFlagsBits = v18;
  v25 = NSLocalizedString(_:tableName:bundle:value:comment:)(v22, v23, v21, v24, v28);

  if (v17._countAndFlagsBits == v25._countAndFlagsBits && v17._object == v25._object)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

void sub_1002172D0(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    if (qword_100374FA8 != -1)
    {
      swift_once();
    }

    v5 = qword_100382490;
    v6 = static os_log_type_t.default.getter();
    sub_1001A551C(&unk_100377020, &unk_1002EF770);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1002EED40;
    *(v7 + 56) = &type metadata for String;
    *(v7 + 64) = sub_1001A76E8();
    *(v7 + 32) = a1;
    *(v7 + 40) = a2;

    os_log(_:dso:log:type:_:)("CopiedString: %{public}@", 24, 2, &_mh_execute_header, v5, v6, v7);

    v8 = [objc_opt_self() generalPasteboard];
    v9 = String._bridgeToObjectiveC()();
    [v8 setString:v9];
  }
}

id sub_100217444(__n128 a1)
{
  v2 = v1;
  v3 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v23 = *(v3 - 8);
  v24 = v3;
  __chkstk_darwin(v3);
  v5 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v6);
  v7 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v7 - 8);
  *&v1[OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_metricModelsArray] = _swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_metricModelsGraphArray] = _swiftEmptyArrayStorage;
  v8 = OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_lock;
  *&v1[v8] = [objc_allocWithZone(NSLock) init];
  *&v1[OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_metricSheetData] = 0;
  v9 = OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_metricDetailsClassObject;
  *&v1[v9] = sub_1001FD15C(_swiftEmptyArrayStorage);
  *&v1[OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_currentSelectedSubsId] = 0;
  v22 = OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_queueMetricGraph;
  v21[1] = sub_1002181D0();
  static DispatchQoS.background.getter();
  v26 = _swiftEmptyArrayStorage;
  sub_10021B134(&qword_100377BD0, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_1001A551C(&qword_100377BD8, &unk_1002F3710);
  sub_1001AD0C8(&qword_100377BE0, &qword_100377BD8, &unk_1002F3710, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v23 + 104))(v5, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v24);
  *&v1[v22] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *&v1[OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_numberFormatter] = 0;
  *&v1[OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_secondaryCell] = _swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_primaryCell] = _swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_networkInfoDataModels] = _swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_bandInfoDataModels] = _swiftEmptyArrayStorage;
  v10 = OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_primaryCellStateObj;
  type metadata accessor for FTMPrimaryStateChanged(0);
  v11 = swift_allocObject();
  LOBYTE(v26) = 1;
  Published.init(initialValue:)();
  *&v1[v10] = v11;
  v12 = OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_neighbourCellStateObj;
  type metadata accessor for FTMNeighbourStateChanged(0);
  v13 = swift_allocObject();
  LOBYTE(v26) = 1;
  Published.init(initialValue:)();
  *&v1[v12] = v13;
  v14 = OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_networkDataStateObj;
  type metadata accessor for FTMNetworkInfoDataStateChanged(0);
  v15 = swift_allocObject();
  LOBYTE(v26) = 1;
  Published.init(initialValue:)();
  v26 = _swiftEmptyArrayStorage;
  sub_1001A551C(&qword_100377BE8, &qword_1002F4170);
  Published.init(initialValue:)();
  *&v1[v14] = v15;
  v16 = OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_bandDataObj;
  type metadata accessor for FTMBandInfoDataChanged(0);
  v17 = swift_allocObject();
  v26 = _swiftEmptyArrayStorage;
  sub_1001A551C(&qword_1003770E8, &unk_1002F22C0);
  Published.init(initialValue:)();
  *&v2[v16] = v17;
  v18 = OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_urlSessionObj;
  *&v2[v18] = [objc_allocWithZone(type metadata accessor for FTMURLSessionViewModel()) init];
  v19 = type metadata accessor for FTMCellMonitorSharedClass();
  v25.receiver = v2;
  v25.super_class = v19;
  return objc_msgSendSuper2(&v25, "init");
}

id sub_10021790C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FTMCellMonitorSharedClass();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100217A90@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for FTMCellMonitorSharedClass();
  result = ObservableObject<>.objectWillChange.getter();
  *a2 = result;
  return result;
}

uint64_t sub_100217ACC(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for CharacterSet();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v30 - v9;
  v11 = [objc_opt_self() decimalDigitCharacterSet];
  static CharacterSet._unconditionallyBridgeFromObjectiveC(_:)();

  CharacterSet.inverted.getter();
  v31 = *(v5 + 8);
  v31(v7, v4);
  v12 = sub_10020C78C(a1, a2);
  if (v13)
  {
    if (v12 == 45 && v13 == 0xE100000000000000)
    {

LABEL_6:

      sub_10021AEA0(1uLL, a1, a2);

      a1 = static String._fromSubstring(_:)();
      a2 = v15;

      goto LABEL_8;
    }

    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v14)
    {
      goto LABEL_6;
    }
  }

LABEL_8:
  v36 = a1;
  v37 = a2;
  v34 = 46;
  v35 = 0xE100000000000000;
  v32 = 0;
  v33 = 0xE000000000000000;
  sub_1001A56A0();
  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v16 = String.count.getter();
  v17 = String.count.getter();

  v19 = v16 - v17;
  if (__OFSUB__(v16, v17))
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  result = String.count.getter();
  if (result)
  {
    if (v19 == 0x8000000000000000 && result == -1)
    {
      goto LABEL_35;
    }

    if (v19 / result == 1)
    {
      v36 = a1;
      v37 = a2;
      v34 = 46;
      v35 = 0xE100000000000000;
      v20 = StringProtocol.components<A>(separatedBy:)();

      v21 = *(v20 + 16);
      v22 = v21 != 0;
      if (v21)
      {
        v30 = v4;
        v23 = 0;
        v24 = (v20 + 40);
        while (v23 < *(v20 + 16))
        {
          v25 = *v24;
          v26 = HIBYTE(*v24) & 0xF;
          if ((*v24 & 0x2000000000000000) == 0)
          {
            v26 = *(v24 - 1) & 0xFFFFFFFFFFFFLL;
          }

          if (!v26 || (v36 = *(v24 - 1), v37 = v25, result = StringProtocol.rangeOfCharacter(from:options:range:)(), (v27 & 1) == 0))
          {
            v31(v10, v30);
            goto LABEL_30;
          }

          ++v23;
          v24 += 2;
          if (v21 == v23)
          {

            v4 = v30;
            goto LABEL_28;
          }
        }

        __break(1u);
        goto LABEL_33;
      }

LABEL_28:
      v31(v10, v4);
    }

    else
    {
      v28 = HIBYTE(a2) & 0xF;
      if ((a2 & 0x2000000000000000) == 0)
      {
        v28 = a1 & 0xFFFFFFFFFFFFLL;
      }

      if (v28)
      {
        v36 = a1;
        v37 = a2;
        StringProtocol.rangeOfCharacter(from:options:range:)();
        v22 = v29;
        v31(v10, v4);
      }

      else
      {
        v31(v10, v4);
LABEL_30:

        return 0;
      }
    }

    return v22;
  }

LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
  return result;
}

uint64_t sub_100217F2C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_100217FA0()
{
  v1 = OBJC_IVAR____TtC11FTMInternal21FTMMetricDetailsClass__items;
  v2 = sub_1001A551C(&qword_100377BC8, &unk_1002F2D40);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for FTMMetricDetailsClass(uint64_t a1)
{
  result = qword_100377AF8;
  if (!qword_100377AF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10021809C(uint64_t a1)
{
  sub_10021812C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10021812C(uint64_t a1)
{
  if (!qword_100377B08)
  {
    sub_1001A55C8(&qword_100376B70, &qword_1002F1BA8);
    v1 = type metadata accessor for Published();
    if (!v2)
    {
      atomic_store(v1, &qword_100377B08);
    }
  }
}

uint64_t sub_100218190@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for FTMMetricDetailsClass(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a2 = result;
  return result;
}

unint64_t sub_1002181D0()
{
  result = qword_100377080;
  if (!qword_100377080)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100377080);
  }

  return result;
}

uint64_t sub_10021821C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10021825C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100218274(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1001FC82C(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_100218484(v6);
  return specialized ContiguousArray._endMutation()();
}

void sub_10021832C(void *a4@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a4 = v5;
}

uint64_t sub_1002183E4(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

void sub_100218484(void *a1)
{
  v3 = sub_1001A551C(&qword_100375738, &qword_1002EF900);
  __chkstk_darwin(v3 - 8);
  v5 = v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v40 - v7;
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v55 = v40 - v14;
  v15 = a1[1];
  v16 = _minimumMergeRunLength(_:)(v15);
  v17 = v15;
  if (v16 < v15)
  {
    if (v15 >= -1)
    {
      v18 = v16;
      v19 = v17 / 2;
      if (v17 <= 1)
      {
        v20 = _swiftEmptyArrayStorage;
      }

      else
      {
        type metadata accessor for FTMAllMetricsModel(0);
        v20 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10) = v19;
      }

      v39 = v20 & 0xFFFFFFFFFFFFFF8;
      v54[0] = (v20 & 0xFFFFFFFFFFFFFF8) + 32;
      v54[1] = v19;
      sub_100218918(v54, v53, a1, v18);
      *(v39 + 16) = 0;

      return;
    }

    __break(1u);
    goto LABEL_27;
  }

  if (v15 < 0)
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    return;
  }

  if (v15 >= 2)
  {
    v49 = v12;
    v50 = v5;
    v40[1] = v1;
    v21 = *a1;
    v22 = (v10 + 48);
    v45 = (v10 + 8);
    v46 = (v10 + 32);
    v23 = -1;
    v24 = 1;
    v51 = v21;
    v47 = (v10 + 48);
    v48 = v8;
    v41 = v15;
    do
    {
      v43 = v24;
      v44 = v23;
      v25 = v51[v24];
      v42 = v21;
      do
      {
        v26 = *v21;
        v27 = OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_timestamp;
        swift_beginAccess();
        sub_1001C2E78(v25 + v27, v8);
        v28 = *v22;
        if ((*v22)(v8, 1, v9) == 1)
        {

          Date.init()();
          if (v28(v8, 1, v9) != 1)
          {
            sub_1001AC99C(v8, &qword_100375738, &qword_1002EF900);
          }
        }

        else
        {
          (*v46)(v55, v8, v9);
        }

        v29 = OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_timestamp;
        swift_beginAccess();
        v52 = v26;
        v30 = v26 + v29;
        v31 = v50;
        sub_1001C2E78(v30, v50);
        if (v28(v31, 1, v9) == 1)
        {
          v32 = v49;
          Date.init()();
          v33 = v9;
          if (v28(v31, 1, v9) != 1)
          {
            sub_1001AC99C(v31, &qword_100375738, &qword_1002EF900);
          }
        }

        else
        {
          v32 = v49;
          (*v46)(v49, v31, v9);
          v33 = v9;
        }

        v34 = v55;
        v35 = static Date.> infix(_:_:)();
        v36 = *v45;
        (*v45)(v32, v33);
        v36(v34, v33);

        v22 = v47;
        v8 = v48;
        v9 = v33;
        if ((v35 & 1) == 0)
        {
          break;
        }

        if (!v51)
        {
          goto LABEL_28;
        }

        v37 = *v21;
        v25 = v21[1];
        *v21 = v25;
        v21[1] = v37;
        --v21;
      }

      while (!__CFADD__(v23++, 1));
      v24 = v43 + 1;
      v21 = v42 + 1;
      v23 = v44 - 1;
    }

    while (v43 + 1 != v41);
  }
}

void sub_100218918(unint64_t *a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v5 = v4;
  v132 = a1;
  v8 = sub_1001A551C(&qword_100375738, &qword_1002EF900);
  __chkstk_darwin(v8 - 8);
  v10 = &v128 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v149 = &v128 - v12;
  __chkstk_darwin(v13);
  v15 = &v128 - v14;
  __chkstk_darwin(v16);
  v18 = &v128 - v17;
  v19 = type metadata accessor for Date();
  __chkstk_darwin(v19);
  __chkstk_darwin(v20);
  v150 = &v128 - v21;
  __chkstk_darwin(v22);
  v135 = &v128 - v23;
  __chkstk_darwin(v24);
  v141 = &v128 - v27;
  v140 = a3;
  v28 = *(a3 + 8);
  if (v28 < 1)
  {
    v31 = _swiftEmptyArrayStorage;
LABEL_110:
    a3 = *v132;
    if (!*v132)
    {
      goto LABEL_151;
    }

    a4 = v31;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v123 = a4;
LABEL_113:
      v153 = v123;
      a4 = *(v123 + 2);
      if (a4 >= 2)
      {
        while (*v140)
        {
          v124 = *&v123[16 * a4];
          v125 = v123;
          v126 = *&v123[16 * a4 + 24];
          sub_100219620((*v140 + 8 * v124), (*v140 + 8 * *&v123[16 * a4 + 16]), (*v140 + 8 * v126), a3);
          if (v5)
          {
            goto LABEL_121;
          }

          if (v126 < v124)
          {
            goto LABEL_138;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v125 = sub_1001FA564(v125);
          }

          if (a4 - 2 >= *(v125 + 2))
          {
            goto LABEL_139;
          }

          v127 = &v125[16 * a4];
          *v127 = v124;
          *(v127 + 1) = v126;
          v153 = v125;
          sub_1001FA4D8(a4 - 1);
          v123 = v153;
          a4 = *(v153 + 2);
          if (a4 <= 1)
          {
            goto LABEL_121;
          }
        }

        goto LABEL_149;
      }

LABEL_121:

      return;
    }

LABEL_145:
    v123 = sub_1001FA564(a4);
    goto LABEL_113;
  }

  v139 = v15;
  v129 = a4;
  v29 = 0;
  v30 = (v25 + 48);
  v147 = (v25 + 8);
  v148 = (v25 + 32);
  v31 = _swiftEmptyArrayStorage;
  v145 = v10;
  v32 = v149;
  v138 = v18;
  v144 = v26;
  v143 = (v25 + 48);
  while (1)
  {
    v33 = v29;
    if (v29 + 1 >= v28)
    {
      v43 = v29 + 1;
    }

    else
    {
      v142 = v28;
      v131 = v31;
      v34 = v29;
      v35 = *v140;
      v36 = *(*v140 + 8 * (v29 + 1));
      a3 = *(*v140 + 8 * v29);
      v151 = a3;
      v152 = v36;

      LODWORD(v137) = sub_100211A64(&v152, &v151);
      if (v5)
      {

        return;
      }

      a4 = v34 + 2;
      v130 = v34;
      v134 = 8 * v34;
      v37 = (v35 + 8 * v34 + 16);
      v136 = 0;
      while (1)
      {
        v43 = v142;
        if (v142 == a4)
        {
          break;
        }

        v44 = *(v37 - 1);
        v45 = *v37;
        v46 = OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_timestamp;
        swift_beginAccess();
        v47 = v138;
        sub_1001C2E78(v45 + v46, v138);
        v48 = *v30;
        if ((*v30)(v47, 1, v19) == 1)
        {

          Date.init()();
          if (v48(v47, 1, v19) != 1)
          {
            sub_1001AC99C(v138, &qword_100375738, &qword_1002EF900);
          }
        }

        else
        {
          (*v148)(v141, v47, v19);
        }

        v49 = OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_timestamp;
        swift_beginAccess();
        v50 = v44 + v49;
        v51 = v139;
        sub_1001C2E78(v50, v139);
        v52 = v48(v51, 1, v19);
        v146 = v44;
        if (v52 == 1)
        {
          v38 = v135;
          Date.init()();
          if (v48(v51, 1, v19) != 1)
          {
            sub_1001AC99C(v139, &qword_100375738, &qword_1002EF900);
          }
        }

        else
        {
          v38 = v135;
          (*v148)(v135, v51, v19);
        }

        v39 = v141;
        v40 = static Date.> infix(_:_:)();
        v41 = v38;
        a3 = v147;
        v42 = *v147;
        (*v147)(v41, v19);
        v42(v39, v19);

        ++a4;
        ++v37;
        v5 = v136;
        v32 = v149;
        if ((v137 ^ v40))
        {
          v43 = a4 - 1;
          break;
        }
      }

      v31 = v131;
      v33 = v130;
      v53 = v134;
      if (v137)
      {
        if (v43 < v130)
        {
          goto LABEL_144;
        }

        if (v130 < v43)
        {
          v54 = 8 * v43 - 8;
          v55 = v43;
          v56 = v130;
          do
          {
            if (v56 != --v55)
            {
              v58 = *v140;
              if (!*v140)
              {
                goto LABEL_148;
              }

              v57 = *(v58 + v53);
              *(v58 + v53) = *(v58 + v54);
              *(v58 + v54) = v57;
            }

            ++v56;
            v54 -= 8;
            v53 += 8;
          }

          while (v56 < v55);
        }
      }
    }

    v59 = v140[1];
    if (v43 >= v59)
    {
      goto LABEL_37;
    }

    if (__OFSUB__(v43, v33))
    {
      goto LABEL_141;
    }

    if (v43 - v33 >= v129)
    {
LABEL_37:
      v61 = v43;
      if (v43 < v33)
      {
        goto LABEL_140;
      }

      goto LABEL_38;
    }

    if (__OFADD__(v33, v129))
    {
      goto LABEL_142;
    }

    if (v33 + v129 >= v59)
    {
      v60 = v140[1];
    }

    else
    {
      v60 = v33 + v129;
    }

    if (v60 < v33)
    {
LABEL_143:
      __break(1u);
LABEL_144:
      __break(1u);
      goto LABEL_145;
    }

    if (v43 == v60)
    {
      goto LABEL_37;
    }

    v131 = v31;
    v136 = v5;
    v146 = *v140;
    v108 = (v146 + 8 * v43 - 8);
    v130 = v33;
    v109 = v33 - v43;
    v133 = v60;
LABEL_91:
    v142 = v43;
    a3 = *(v146 + 8 * v43);
    v134 = v109;
    v137 = v108;
LABEL_92:
    v110 = *v108;
    v111 = OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_timestamp;
    swift_beginAccess();
    sub_1001C2E78(a3 + v111, v32);
    v112 = *v30;
    if ((*v30)(v32, 1, v19) == 1)
    {

      Date.init()();
      if (v112(v32, 1, v19) != 1)
      {
        sub_1001AC99C(v32, &qword_100375738, &qword_1002EF900);
      }
    }

    else
    {
      (*v148)(v150, v32, v19);
    }

    v113 = OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_timestamp;
    swift_beginAccess();
    v114 = v110 + v113;
    v115 = v145;
    sub_1001C2E78(v114, v145);
    if (v112(v115, 1, v19) == 1)
    {
      v116 = v144;
      Date.init()();
      if (v112(v115, 1, v19) != 1)
      {
        sub_1001AC99C(v115, &qword_100375738, &qword_1002EF900);
      }
    }

    else
    {
      v116 = v144;
      (*v148)(v144, v115, v19);
    }

    a4 = v150;
    v117 = static Date.> infix(_:_:)();
    v118 = v116;
    v119 = v117;
    v120 = *v147;
    (*v147)(v118, v19);
    v120(a4, v19);

    if (v119)
    {
      break;
    }

    v32 = v149;
    v30 = v143;
LABEL_90:
    v43 = v142 + 1;
    v108 = v137 + 1;
    v109 = v134 - 1;
    v61 = v133;
    if (v142 + 1 != v133)
    {
      goto LABEL_91;
    }

    v5 = v136;
    v31 = v131;
    v33 = v130;
    if (v133 < v130)
    {
      goto LABEL_140;
    }

LABEL_38:
    v62 = v31;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v31 = v62;
    }

    else
    {
      v31 = sub_1001FA578(0, *(v62 + 2) + 1, 1, v62);
    }

    a4 = *(v31 + 2);
    v63 = *(v31 + 3);
    a3 = a4 + 1;
    if (a4 >= v63 >> 1)
    {
      v31 = sub_1001FA578((v63 > 1), a4 + 1, 1, v31);
    }

    *(v31 + 2) = a3;
    v64 = &v31[16 * a4];
    *(v64 + 4) = v33;
    *(v64 + 5) = v61;
    v65 = *v132;
    if (!*v132)
    {
      goto LABEL_150;
    }

    v133 = v61;
    if (a4)
    {
      while (2)
      {
        v66 = a3 - 1;
        if (a3 >= 4)
        {
          v71 = &v31[16 * a3 + 32];
          v72 = *(v71 - 64);
          v73 = *(v71 - 56);
          v77 = __OFSUB__(v73, v72);
          v74 = v73 - v72;
          if (v77)
          {
            goto LABEL_127;
          }

          v76 = *(v71 - 48);
          v75 = *(v71 - 40);
          v77 = __OFSUB__(v75, v76);
          v69 = v75 - v76;
          v70 = v77;
          if (v77)
          {
            goto LABEL_128;
          }

          v78 = &v31[16 * a3];
          v80 = *v78;
          v79 = *(v78 + 1);
          v77 = __OFSUB__(v79, v80);
          v81 = v79 - v80;
          if (v77)
          {
            goto LABEL_130;
          }

          v77 = __OFADD__(v69, v81);
          v82 = v69 + v81;
          if (v77)
          {
            goto LABEL_133;
          }

          if (v82 >= v74)
          {
            v100 = &v31[16 * v66 + 32];
            v102 = *v100;
            v101 = *(v100 + 1);
            v77 = __OFSUB__(v101, v102);
            v103 = v101 - v102;
            if (v77)
            {
              goto LABEL_137;
            }

            if (v69 < v103)
            {
              v66 = a3 - 2;
            }
          }

          else
          {
LABEL_57:
            if (v70)
            {
              goto LABEL_129;
            }

            v83 = &v31[16 * a3];
            v85 = *v83;
            v84 = *(v83 + 1);
            v86 = __OFSUB__(v84, v85);
            v87 = v84 - v85;
            v88 = v86;
            if (v86)
            {
              goto LABEL_132;
            }

            v89 = &v31[16 * v66 + 32];
            v91 = *v89;
            v90 = *(v89 + 1);
            v77 = __OFSUB__(v90, v91);
            v92 = v90 - v91;
            if (v77)
            {
              goto LABEL_135;
            }

            if (__OFADD__(v87, v92))
            {
              goto LABEL_136;
            }

            if (v87 + v92 < v69)
            {
              goto LABEL_71;
            }

            if (v69 < v92)
            {
              v66 = a3 - 2;
            }
          }
        }

        else
        {
          if (a3 == 3)
          {
            v67 = *(v31 + 4);
            v68 = *(v31 + 5);
            v77 = __OFSUB__(v68, v67);
            v69 = v68 - v67;
            v70 = v77;
            goto LABEL_57;
          }

          v93 = &v31[16 * a3];
          v95 = *v93;
          v94 = *(v93 + 1);
          v77 = __OFSUB__(v94, v95);
          v87 = v94 - v95;
          v88 = v77;
LABEL_71:
          if (v88)
          {
            goto LABEL_131;
          }

          v96 = &v31[16 * v66];
          v98 = *(v96 + 4);
          v97 = *(v96 + 5);
          v77 = __OFSUB__(v97, v98);
          v99 = v97 - v98;
          if (v77)
          {
            goto LABEL_134;
          }

          if (v99 < v87)
          {
            break;
          }
        }

        a4 = v66 - 1;
        if (v66 - 1 >= a3)
        {
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
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
          goto LABEL_143;
        }

        if (!*v140)
        {
          goto LABEL_147;
        }

        v104 = v31;
        a3 = *&v31[16 * a4 + 32];
        v105 = *&v31[16 * v66 + 40];
        sub_100219620((*v140 + 8 * a3), (*v140 + 8 * *&v31[16 * v66 + 32]), (*v140 + 8 * v105), v65);
        if (v5)
        {
          goto LABEL_121;
        }

        if (v105 < a3)
        {
          goto LABEL_125;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v106 = v104;
        }

        else
        {
          v106 = sub_1001FA564(v104);
        }

        v32 = v149;
        if (a4 >= *(v106 + 2))
        {
          goto LABEL_126;
        }

        v107 = &v106[16 * a4];
        *(v107 + 4) = a3;
        *(v107 + 5) = v105;
        v153 = v106;
        a4 = &v153;
        sub_1001FA4D8(v66);
        v31 = v153;
        a3 = *(v153 + 2);
        if (a3 <= 1)
        {
          break;
        }

        continue;
      }
    }

    v28 = v140[1];
    v29 = v133;
    if (v133 >= v28)
    {
      goto LABEL_110;
    }
  }

  v32 = v149;
  if (v146)
  {
    v121 = *v108;
    a3 = v108[1];
    *v108 = a3;
    v108[1] = v121;
    --v108;
    v122 = __CFADD__(v109++, 1);
    v30 = v143;
    if (v122)
    {
      goto LABEL_90;
    }

    goto LABEL_92;
  }

  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
LABEL_149:
  __break(1u);
LABEL_150:
  __break(1u);
LABEL_151:
  __break(1u);
}

uint64_t sub_100219620(char *a1, char *a2, char *a3, char *a4)
{
  v8 = sub_1001A551C(&qword_100375738, &qword_1002EF900);
  __chkstk_darwin(v8 - 8);
  v76 = (&v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v10);
  v77 = (&v70 - v11);
  __chkstk_darwin(v12);
  v75 = &v70 - v13;
  __chkstk_darwin(v14);
  v74 = (&v70 - v15);
  v16 = type metadata accessor for Date();
  __chkstk_darwin(v16);
  __chkstk_darwin(v17);
  v80 = &v70 - v18;
  __chkstk_darwin(v19);
  v73 = (&v70 - v20);
  __chkstk_darwin(v21);
  v79 = &v70 - v24;
  v25 = a2 - a1 + 7;
  if (a2 - a1 >= 0)
  {
    v25 = a2 - a1;
  }

  v26 = v25 >> 3;
  v27 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v27 = a3 - a2;
  }

  v28 = v27 >> 3;
  if (v26 >= v27 >> 3)
  {
    v79 = v22;
    if (a4 != a2 || &a2[8 * v28] <= a4)
    {
      v48 = v23;
      memmove(a4, a2, 8 * v28);
      v23 = v48;
    }

    v83 = &a4[8 * v28];
    v49 = v77;
    if (a3 - a2 < 8)
    {
      v47 = a2;
    }

    else
    {
      v47 = a2;
      if (a2 > a1)
      {
        v50 = (v23 + 48);
        v72 = (v23 + 8);
        v73 = (v23 + 32);
        v74 = (v23 + 48);
        v82 = a4;
        v71 = a1;
LABEL_34:
        v78 = v47;
        v51 = v47 - 8;
        v52 = a3 - 8;
        v53 = v83;
        v75 = v47 - 8;
        do
        {
          v54 = *(v53 - 1);
          v53 -= 8;
          v55 = *v51;
          v56 = OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_timestamp;
          swift_beginAccess();
          sub_1001C2E78(v54 + v56, v49);
          v57 = *v50;
          v58 = (*v50)(v49, 1, v16);
          v81 = v52;
          if (v58 == 1)
          {

            Date.init()();
            if (v57(v49, 1, v16) != 1)
            {
              sub_1001AC99C(v49, &qword_100375738, &qword_1002EF900);
            }
          }

          else
          {
            (*v73)(v80, v49, v16);
          }

          v59 = OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_timestamp;
          swift_beginAccess();
          v60 = v55 + v59;
          v61 = v76;
          sub_1001C2E78(v60, v76);
          if (v57(v61, 1, v16) == 1)
          {
            v62 = v79;
            Date.init()();
            if (v57(v61, 1, v16) != 1)
            {
              sub_1001AC99C(v61, &qword_100375738, &qword_1002EF900);
            }
          }

          else
          {
            v62 = v79;
            (*v73)(v79, v61, v16);
          }

          v63 = v80;
          v64 = static Date.> infix(_:_:)();
          v65 = *v72;
          (*v72)(v62, v16);
          v65(v63, v16);

          if (v64)
          {
            a3 = v81;
            a4 = v82;
            v49 = v77;
            v67 = v71;
            v68 = v75;
            if (v81 + 8 != v78)
            {
              *v81 = *v75;
            }

            v50 = v74;
            if (v83 <= a4 || (v47 = v68, v68 <= v67))
            {
              v47 = v68;
              goto LABEL_54;
            }

            goto LABEL_34;
          }

          v66 = v81;
          a4 = v82;
          v49 = v77;
          if (v81 + 8 != v83)
          {
            *v81 = *v53;
          }

          v52 = v66 - 8;
          v83 = v53;
          v50 = v74;
          v51 = v75;
        }

        while (v53 > a4);
        v83 = v53;
        v47 = v78;
      }
    }
  }

  else
  {
    if (a4 != a1 || &a1[8 * v26] <= a4)
    {
      v29 = v23;
      memmove(a4, a1, 8 * v26);
      v23 = v29;
    }

    v83 = &a4[8 * v26];
    if (a2 - a1 >= 8)
    {
      v30 = a2;
      if (a2 < a3)
      {
        v31 = (v23 + 48);
        v76 = (v23 + 8);
        v77 = (v23 + 32);
        v80 = (v23 + 48);
        v81 = a3;
        while (1)
        {
          v78 = v30;
          v32 = *v30;
          v33 = *a4;
          v34 = OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_timestamp;
          swift_beginAccess();
          v35 = v74;
          sub_1001C2E78(v32 + v34, v74);
          v36 = *v31;
          v37 = (*v31)(v35, 1, v16);
          v82 = a4;
          if (v37 == 1)
          {

            Date.init()();
            if (v36(v35, 1, v16) != 1)
            {
              sub_1001AC99C(v35, &qword_100375738, &qword_1002EF900);
            }
          }

          else
          {
            (*v77)(v79, v35, v16);
          }

          v38 = OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_timestamp;
          swift_beginAccess();
          v39 = v33 + v38;
          v40 = v75;
          sub_1001C2E78(v39, v75);
          v41 = v36(v40, 1, v16);
          v42 = v73;
          if (v41 == 1)
          {
            Date.init()();
            if (v36(v40, 1, v16) != 1)
            {
              sub_1001AC99C(v40, &qword_100375738, &qword_1002EF900);
            }
          }

          else
          {
            (*v77)(v73, v40, v16);
          }

          v43 = v79;
          v44 = static Date.> infix(_:_:)();
          v45 = *v76;
          (*v76)(v42, v16);
          v45(v43, v16);

          if ((v44 & 1) == 0)
          {
            break;
          }

          v46 = v78;
          v30 = v78 + 8;
          a4 = v82;
          if (a1 != v78)
          {
            goto LABEL_24;
          }

LABEL_25:
          a1 += 8;
          v31 = v80;
          if (a4 >= v83 || v30 >= v81)
          {
            goto LABEL_27;
          }
        }

        v46 = v82;
        a4 = v82 + 8;
        v30 = v78;
        if (a1 == v82)
        {
          goto LABEL_25;
        }

LABEL_24:
        *a1 = *v46;
        goto LABEL_25;
      }
    }

LABEL_27:
    v47 = a1;
  }

LABEL_54:
  if (v47 != a4 || v47 >= &a4[(v83 - a4 + (v83 - a4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v47, a4, 8 * ((v83 - a4) / 8));
  }

  return 1;
}

uint64_t sub_100219E58(unint64_t *a1, uint64_t a2, void *a3, void *a4)
{
  v5 = *a1;
  v38 = *a1 >> 62;
  object = *a1 & 0xFFFFFFFFFFFFFF8;
  if (v38)
  {
    goto LABEL_82;
  }

  v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v8 = 0;
  v9 = v5 & 0xC000000000000001;
  v41 = a2;
  v40 = v5;
  while (v7 != v8)
  {
    if (v9)
    {
      v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v8 >= *(object + 16))
      {
        goto LABEL_72;
      }

      v11 = *(v5 + 8 * v8 + 32);
    }

    if (*(v11 + OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_subsId) == a2 && (v11[4] == *a3 ? (v12 = v11[5] == a3[1]) : (v12 = 0), v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
    {
      v13 = v9;
      v9 = v7;
      v14 = object;
      v15 = v11[8];
      v16 = v11[9];
      v17 = objc_opt_self();

      v18 = [v17 mainBundle];
      v44._object = v16;
      v19._countAndFlagsBits = v15;
      v19._object = v16;
      v20.value._countAndFlagsBits = 0x617A696C61636F4CLL;
      v20.value._object = 0xEB00000000656C62;
      v21._countAndFlagsBits = v15;
      v21._object = v16;
      v44._countAndFlagsBits = v15;
      v22 = NSLocalizedString(_:tableName:bundle:value:comment:)(v19, v20, v18, v21, v44);
      object = v22._object;

      if (v22._countAndFlagsBits == *a4 && v22._object == a4[1])
      {

        a2 = v41;
        v5 = v40;
LABEL_28:
        v26 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          __break(1u);
          goto LABEL_31;
        }

        while (2)
        {
          if (v5 >> 62)
          {
            if (v26 == _CocoaArrayWrapper.endIndex.getter())
            {
              return v8;
            }
          }

          else if (v26 == *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            return v8;
          }

          if ((v5 & 0xC000000000000001) != 0)
          {
            v27 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if ((v26 & 0x8000000000000000) != 0)
            {
              goto LABEL_74;
            }

            if (v26 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_75;
            }

            v27 = *(v5 + 8 * v26 + 32);
          }

          if (*(v27 + OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_subsId) == a2 && (v27[4] == *a3 && v27[5] == a3[1] || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
          {
            v28 = v27[8];
            v29 = v27[9];

            v30 = [v17 mainBundle];
            v45._object = v29;
            v31._countAndFlagsBits = v28;
            v31._object = v29;
            v32.value._countAndFlagsBits = 0x617A696C61636F4CLL;
            v32.value._object = 0xEB00000000656C62;
            v33._countAndFlagsBits = v28;
            v33._object = v29;
            v45._countAndFlagsBits = v28;
            v34 = NSLocalizedString(_:tableName:bundle:value:comment:)(v31, v32, v30, v33, v45);
            object = v34._object;

            if (v34._countAndFlagsBits == *a4 && v34._object == a4[1])
            {

              a2 = v41;
              goto LABEL_33;
            }

            v35 = _stringCompareWithSmolCheck(_:_:expecting:)();

            a2 = v41;
            if (v35)
            {
LABEL_33:
              v10 = __OFADD__(v26++, 1);
              if (v10)
              {
                goto LABEL_76;
              }

              continue;
            }
          }

          else
          {
          }

          break;
        }

        if (v8 != v26)
        {
          if ((v5 & 0xC000000000000001) != 0)
          {
            v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            object = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if ((v8 & 0x8000000000000000) != 0)
            {
              goto LABEL_79;
            }

            v36 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v8 >= v36)
            {
              goto LABEL_80;
            }

            if (v26 >= v36)
            {
              goto LABEL_81;
            }

            v11 = *(v5 + 32 + 8 * v8);
            object = *(v5 + 32 + 8 * v26);
          }

          if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v5 & 0x8000000000000000) != 0 || (v5 & 0x4000000000000000) != 0)
          {
            v5 = sub_1001FA690(v5);
            v37 = (v5 >> 62) & 1;
          }

          else
          {
            LODWORD(v37) = 0;
          }

          v9 = v5 & 0xFFFFFFFFFFFFFF8;
          *((v5 & 0xFFFFFFFFFFFFFF8) + 8 * v8 + 0x20) = object;

          if ((v5 & 0x8000000000000000) != 0 || v37)
          {
            v5 = sub_1001FA690(v5);
            v9 = v5 & 0xFFFFFFFFFFFFFF8;
            if ((v26 & 0x8000000000000000) != 0)
            {
LABEL_71:
              __break(1u);
LABEL_72:
              __break(1u);
LABEL_73:
              __break(1u);
LABEL_74:
              __break(1u);
LABEL_75:
              __break(1u);
LABEL_76:
              __break(1u);
LABEL_77:
              __break(1u);
LABEL_78:
              __break(1u);
LABEL_79:
              __break(1u);
LABEL_80:
              __break(1u);
LABEL_81:
              __break(1u);
LABEL_82:
              v7 = _CocoaArrayWrapper.endIndex.getter();
              goto LABEL_3;
            }
          }

          else if ((v26 & 0x8000000000000000) != 0)
          {
            goto LABEL_71;
          }

          if (v26 >= *(v9 + 16))
          {
            goto LABEL_78;
          }

LABEL_31:
          *(v9 + 8 * v26 + 32) = v11;

          *a1 = v5;
        }

        v10 = __OFADD__(v8++, 1);
        if (v10)
        {
          goto LABEL_77;
        }

        goto LABEL_33;
      }

      v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

      a2 = v41;
      object = v14;
      v7 = v9;
      v9 = v13;
      v5 = v40;
      if (v24)
      {
        goto LABEL_28;
      }
    }

    else
    {
    }

    v10 = __OFADD__(v8++, 1);
    if (v10)
    {
      goto LABEL_73;
    }
  }

  if (v38)
  {
    return _CocoaArrayWrapper.endIndex.getter();
  }

  return *(object + 16);
}

uint64_t sub_10021A384(uint64_t (*a1)(uint64_t *), uint64_t a2)
{
  v6 = *v3;
  sub_10020C9B0(a1, a2, *v3);
  if (v4)
  {
    return v2;
  }

  if (v8)
  {
    if (v6 >> 62)
    {
      return _CocoaArrayWrapper.endIndex.getter();
    }

    return *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v2 = v7;
  v10 = v7 + 1;
  if (__OFADD__(v7, 1))
  {
    __break(1u);
    goto LABEL_9;
  }

  while (1)
  {
    if (v6 >> 62)
    {
      if (v10 == _CocoaArrayWrapper.endIndex.getter())
      {
        return v2;
      }
    }

    else if (v10 == *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v2;
    }

    if ((v6 & 0xC000000000000001) != 0)
    {
      v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if ((v10 & 0x8000000000000000) != 0)
      {
        goto LABEL_40;
      }

      if (v10 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_41;
      }

      v12 = *(v6 + 8 * v10 + 32);
    }

    v19 = v12;
    v13 = a1(&v19);

    if ((v13 & 1) == 0)
    {
      break;
    }

LABEL_10:
    v11 = __OFADD__(v10++, 1);
    if (v11)
    {
      goto LABEL_42;
    }
  }

  if (v2 == v10)
  {
LABEL_9:
    v11 = __OFADD__(v2++, 1);
    if (v11)
    {
      goto LABEL_43;
    }

    goto LABEL_10;
  }

  if ((v6 & 0xC000000000000001) != 0)
  {
    v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if ((v2 & 0x8000000000000000) != 0)
    {
      goto LABEL_45;
    }

    v16 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2 >= v16)
    {
      goto LABEL_46;
    }

    if (v10 >= v16)
    {
      goto LABEL_47;
    }

    v14 = *(v6 + 32 + 8 * v2);
    v15 = *(v6 + 32 + 8 * v10);
  }

  if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v6 & 0x8000000000000000) != 0 || (v6 & 0x4000000000000000) != 0)
  {
    v6 = sub_1001FA690(v6);
    v17 = (v6 >> 62) & 1;
  }

  else
  {
    LODWORD(v17) = 0;
  }

  v18 = v6 & 0xFFFFFFFFFFFFFF8;
  *((v6 & 0xFFFFFFFFFFFFFF8) + 8 * v2 + 0x20) = v15;

  if ((v6 & 0x8000000000000000) == 0 && !v17)
  {
    if ((v10 & 0x8000000000000000) != 0)
    {
      goto LABEL_39;
    }

    goto LABEL_33;
  }

  v6 = sub_1001FA690(v6);
  v18 = v6 & 0xFFFFFFFFFFFFFF8;
  if ((v10 & 0x8000000000000000) == 0)
  {
LABEL_33:
    if (v10 >= *(v18 + 16))
    {
      goto LABEL_44;
    }

    *(v18 + 8 * v10 + 32) = v14;

    *v3 = v6;
    goto LABEL_9;
  }

LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
  return _CocoaArrayWrapper.endIndex.getter();
}

void *sub_10021A608(unint64_t a1)
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
  v5 = sub_100227334();
  sub_1001FBC64((v5 + 4), v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_10021A69C(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v6 = result;
    v7 = *(a5 + 56);
    v8 = *(*(a5 + 48) + 8 * a2);
    v9 = type metadata accessor for STransferMetrics(0);
    sub_10021C448(v7 + *(*(v9 - 8) + 72) * a2, v6, type metadata accessor for STransferMetrics);
    return v8;
  }

LABEL_8:
  __break(1u);
  return result;
}

void *sub_10021A754(void *a1)
{
  v12 = a1[4];
  v13 = a1[5];

  v2._countAndFlagsBits = 126;
  v2._object = 0xE100000000000000;
  String.append(_:)(v2);
  v3._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v3);

  if (qword_100375020 != -1)
  {
LABEL_30:
    swift_once();
  }

  v4 = *(qword_100382508 + OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_metricModelsGraphArray);
  if (v4 >> 62)
  {
    v5 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v5)
  {
    v6 = 0;
    v11 = v5;
    do
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v8 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
LABEL_23:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_30;
        }

        v7 = *(v4 + 8 * v6 + 32);

        v8 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          goto LABEL_23;
        }
      }

      v9 = v7[2] == v12 && v7[3] == v13;
      if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (*(v7 + OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_isVisible) & 1) != 0 && (v7[6] == a1[6] && v7[7] == a1[7] || (_stringCompareWithSmolCheck(_:_:expecting:)()))
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v5 = v11;
      }

      else
      {
      }

      ++v6;
    }

    while (v8 != v5);
  }

  if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0 || (_swiftEmptyArrayStorage & 0x4000000000000000) != 0)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      return _swiftEmptyArrayStorage;
    }

    goto LABEL_27;
  }

  if (!_swiftEmptyArrayStorage[2])
  {
LABEL_27:
  }

  return _swiftEmptyArrayStorage;
}

double sub_10021AA10(uint64_t a1, uint64_t a2)
{
  v21 = a1;
  v22 = a2;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  v26 = v2;
  v27 = v3;
  __chkstk_darwin(v2);
  v25 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v5 = *(v20 - 8);
  __chkstk_darwin(v20);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v8);
  v9 = type metadata accessor for DispatchQoS();
  v23 = *(v9 - 8);
  v24 = v9;
  __chkstk_darwin(v9);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1002181D0();
  static DispatchQoS.background.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10021B134(&qword_100377BD0, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_1001A551C(&qword_100377BD8, &unk_1002F3710);
  sub_1001AD0C8(&qword_100377BE0, &qword_100377BD8, &unk_1002F3710, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v5 + 104))(v7, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v20);
  v12 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v13 = swift_allocObject();
  v14 = v22;
  *(v13 + 16) = v21;
  *(v13 + 24) = v14;
  aBlock[4] = sub_10021C3D8;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10020C96C;
  aBlock[3] = &unk_10031F3E0;
  v15 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v28 = _swiftEmptyArrayStorage;
  sub_10021B134(&qword_1003784A0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1001A551C(&unk_100377090, &qword_1002F2CA0);
  sub_1001AD0C8(&qword_1003784B0, &unk_100377090, &qword_1002F2CA0, &protocol conformance descriptor for [A]);
  v17 = v25;
  v16 = v26;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);

  (*(v27 + 8))(v17, v16);
  (*(v23 + 8))(v11, v24);

  return result;
}

unint64_t sub_10021AEA0(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v4 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v4 = 11;
  }

  v5 = v4 | (v3 << 16);
  result = String.index(_:offsetBy:limitedBy:)();
  if (v6)
  {
    result = v5;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_14;
  }

  return String.subscript.getter();
}

_UNKNOWN **sub_10021AF50()
{
  if (qword_100375018 != -1)
  {
    swift_once();
  }

  if (*(qword_100382500 + 24) == 1)
  {
    v0 = [objc_opt_self() standardUserDefaults];
    v1 = String._bridgeToObjectiveC()();
    v2 = [v0 objectForKey:v1];

    if (v2)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v5 = 0u;
      v6 = 0u;
    }

    v7[0] = v5;
    v7[1] = v6;
    if (*(&v6 + 1))
    {
      if ((swift_dynamicCast() & 1) != 0 && v4 == 1)
      {

        return &off_10031A168;
      }
    }

    else
    {
      sub_1001AC99C(v7, &qword_100375D68, &unk_1002F2370);
    }

    return &off_10031A190;
  }

  else if (*(qword_100382500 + 25))
  {
    return &off_10031A1B8;
  }

  else
  {
    return &off_10031A1E0;
  }
}

uint64_t sub_10021B134(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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