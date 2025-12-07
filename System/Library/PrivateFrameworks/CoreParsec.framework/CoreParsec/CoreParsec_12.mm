uint64_t sub_100112B44(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = *(v3 + 80);
  v8[3] = a1;
  v8[4] = a2;
  v8[0] = v5;
  v6 = sub_100007534(v8, a1);
  LOBYTE(a3) = a3(*v6);
  sub_100007378(v8);
  return a3 & 1;
}

uint64_t sub_100112BA4()
{
  v4 = v0;
  v5 = sub_100046184(&unk_100214C80, &qword_10019AFC0);
  __chkstk_darwin(v5 - 8);
  sub_1000067A4();
  __chkstk_darwin(v6);
  sub_100003B98();
  sub_10000F038(v35, v34, &qword_10021BC68, &qword_1001A0690);
  sub_100114454(v0);
  if ((v37 & 1) == 0)
  {
    v7 = v38;
    if (v38)
    {
      v3 = v35[1];
      v33 = v35[0];
      LOBYTE(v2) = v36;
      v8 = *(v4 + 80);
      sub_1000036C8();
      v10 = *(v9 + 136);
      sub_10000DEE4(v4 + v10);
      sub_10000F038(v4 + v10, v1, &unk_100214C80, &qword_10019AFC0);
      v11 = type metadata accessor for OSSignpostID();
      result = sub_100008D0C(v1, 1, v11);
      if (result != 1)
      {
        v13 = *(v4 + 88);

        v14 = "lifetime";
        v15 = 8;
        v16 = static os_signpost_type_t.end.getter();
        switch(v8)
        {
          case 1:
            v14 = "cacheAccess";
            v15 = 11;
            break;
          case 2:
            v14 = "cacheWrite";
            v15 = 10;
            break;
          case 3:
            v14 = "resultLifetime";
            v15 = 14;
            break;
          default:
            break;
        }

        LOBYTE(v32) = v2;
        sub_1000070D0(v16, v13, v14, v15, 2, v1, v33, v3, v32, v7);

        sub_10000690C();
        v23 = *(v24 + 8);
        v21 = v1;
        v22 = v11;
        goto LABEL_11;
      }

LABEL_18:
      __break(1u);
      return result;
    }
  }

  v17 = *(v4 + 80);
  sub_1000036C8();
  v19 = *(v18 + 136);
  sub_10000DEE4(v4 + v19);
  sub_10000F038(v4 + v19, v2, &unk_100214C80, &qword_10019AFC0);
  type metadata accessor for OSSignpostID();
  result = sub_100007928(v2);
  if (v20)
  {
    __break(1u);
    goto LABEL_18;
  }

  sub_1001143A0(v2, *(v4 + 88), v17);
  sub_10000690C();
  v21 = sub_10000F18C();
LABEL_11:
  v23(v21, v22);
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return sub_10000B298(v35, &qword_10021BC68, &qword_1001A0690);
  }

  v26 = Strong;
  v34[0] = v4;
  String.init<A>(describing:)();
  sub_10000EAE0();
  sub_100008AA0(v27, v28, v29, v30, &off_1001FD218);

  os_unfair_lock_unlock(v3);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v2 = *(v26 + 24);
    swift_getObjectType();
    sub_100006FE0();
    v31(v4, &off_1001FD218);
    swift_unknownObjectRelease();
  }

  sub_10000EC20();
  sub_1000099A8();
  sub_100006130();
  sub_100008110(_swiftEmptyArrayStorage);
  *(v4 + 81) = v2;
  return swift_weakAssign();
}

uint64_t sub_100112F10()
{
  v1 = v0;
  v2 = sub_100046184(&unk_100214C80, &qword_10019AFC0);
  __chkstk_darwin(v2 - 8);
  v4 = v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  __chkstk_darwin(v5);
  v7 = v37 - v6 + 16;
  v8 = *(v0 + 40);
  v39 = *(v0 + 24);
  v40 = v8;
  v41 = *(v0 + 56);
  v42 = *(v0 + 72);
  sub_10000F038(&v39, v37, &unk_10021BC30, &unk_1001A0670);
  sub_10000E7E8();
  if ((BYTE1(v40) & 1) == 0)
  {
    v9 = v41;
    if (v41)
    {
      v10 = v39;
      v11 = v40;
      v12 = *(v1 + 80);
      v13 = *(*v1 + 136);
      swift_beginAccess();
      sub_10000F038(v1 + v13, v7, &unk_100214C80, &qword_10019AFC0);
      v14 = type metadata accessor for OSSignpostID();
      result = sub_100008D0C(v7, 1, v14);
      if (result != 1)
      {
        v16 = *(v1 + 96);

        v17 = static os_signpost_type_t.end.getter();
        v18 = sub_100008D34(v12);
        LOBYTE(v35) = v11;
        sub_1000070D0(v17, v16, v18, v19, v20, v7, v10, *(&v10 + 1), v35, v9);

        (*(*(v14 - 8) + 8))(v7, v14);
        goto LABEL_7;
      }

LABEL_16:
      __break(1u);
      return result;
    }
  }

  v21 = *(v1 + 80);
  v22 = *(*v1 + 136);
  swift_beginAccess();
  sub_10000F038(v1 + v22, v4, &unk_100214C80, &qword_10019AFC0);
  v23 = type metadata accessor for OSSignpostID();
  result = sub_100008D0C(v4, 1, v23);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_16;
  }

  v16 = *(v1 + 96);
  static os_signpost_type_t.end.getter();
  sub_100008D34(v21);
  os_signpost(_:dso:log:name:signpostID:)();
  (*(*(v23 - 8) + 8))(v4, v23);
LABEL_7:
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v25 = Strong;
    *&v37[0] = v1;
    v26 = String.init<A>(describing:)();
    v28 = v27;
    v29 = *(*(v25 + 32) + 16);
    os_unfair_lock_lock(v29);
    sub_10000ECB8(v25, v26, v28, v1, &off_1001FD218);

    os_unfair_lock_unlock(v29);
    if (swift_unknownObjectWeakLoadStrong())
    {
      v30 = *(v25 + 24);
      ObjectType = swift_getObjectType();
      (*(v30 + 16))(v1, &off_1001FD218, ObjectType, v30);
      swift_unknownObjectRelease();
    }

    LOBYTE(v37[0]) = 1;

    sub_10000B298(&v39, &unk_10021BC30, &unk_1001A0670);
    v32 = v37[0];
    v33 = *(v1 + 40);
    v37[0] = *(v1 + 24);
    v37[1] = v33;
    v37[2] = *(v1 + 56);
    v38 = *(v1 + 72);
    *(v1 + 24) = 0;
    *(v1 + 32) = 0;
    *(v1 + 40) = 0;
    *(v1 + 41) = v32;
    *(v1 + 48) = 0;
    *(v1 + 56) = 0;
    *(v1 + 64) = _swiftEmptyArrayStorage;
    *(v1 + 72) = 0;
    sub_10000B298(v37, &unk_10021BC30, &unk_1001A0670);
    *(v1 + 88) = 1;
    return swift_weakAssign();
  }

  else
  {
    if (sub_100112B44(&type metadata for ResourceNetworkActivity, &off_1001FE818, sub_1000E53A0))
    {
      v34 = static os_log_type_t.fault.getter();
      os_log(_:dso:log:type:_:)("ActivityMonitor is deallocated before ActivitySpan's end() method is invoked. Activity's bookkeeping could be inaccurate.", 121, 2, &_mh_execute_header, v16, v34, _swiftEmptyArrayStorage);
    }

    return sub_10000B298(&v39, &unk_10021BC30, &unk_1001A0670);
  }
}

uint64_t sub_1001133D4(uint64_t a1)
{
  if ((*(v1 + 88) & 1) == 0)
  {
    sub_1001140F8(a1);
  }

  v2 = sub_10001006C();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  return v2;
}

uint64_t sub_10011345C(uint64_t a1)
{
  v2 = v1[12];
  v3 = static os_log_type_t.error.getter();
  os_log(_:dso:log:type:_:)("LEAKED NETWORK SPAN: {{{", 24, 2, &_mh_execute_header, v2, v3, _swiftEmptyArrayStorage);
  sub_1001125B8();
  static os_log_type_t.error.getter();
  sub_100046184(&unk_100217040, &qword_1001989F0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100197F20;
  v5 = *(v1 + *(*v1 + 464) + 8);
  swift_unknownObjectRetain();
  sub_100046184(&qword_100219560, &qword_10019E4F8);
  v6 = String.init<A>(describing:)();
  v8 = v7;
  *(v4 + 56) = &type metadata for String;
  v9 = sub_10000512C();
  *(v4 + 64) = v9;
  *(v4 + 32) = v6;
  *(v4 + 40) = v8;
  os_log(_:dso:log:type:_:)("Network task: %s", v35);

  static os_log_type_t.error.getter();
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_100197F20;
  ObjectType = swift_getObjectType();
  v42 = v5;
  v11 = v5;
  v12 = *(v5 + 16);
  v12(ObjectType, v11);
  sub_100046184(&qword_100218A80, &qword_10019D020);
  v13 = String.init<A>(describing:)();
  *(v10 + 56) = &type metadata for String;
  *(v10 + 64) = v9;
  *(v10 + 32) = v13;
  *(v10 + 40) = v14;
  v44 = v2;
  os_log(_:dso:log:type:_:)("Response: %s", ObjectType);

  v43 = sub_1001139AC();
  if (v17)
  {
    static os_log_type_t.error.getter();
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_100197F20;
    v12(v37, v42);
    v19 = String.init<A>(describing:)();
    v20 = v9;
    *(v18 + 56) = &type metadata for String;
    *(v18 + 64) = v9;
    *(v18 + 32) = v19;
    *(v18 + 40) = v21;
    v22 = v2;
    os_log(_:dso:log:type:_:)("Unsupported response: %s", v37);
  }

  else
  {
    v23 = v15;
    v24 = v16;
    v25 = HIDWORD(v16);
    static os_log_type_t.error.getter();
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_100197F20;
    *(v26 + 56) = &type metadata for Int;
    *(v26 + 64) = &protocol witness table for Int;
    *(v26 + 32) = v23;
    v22 = v44;
    os_log(_:dso:log:type:_:)("Status: %d", v37);

    static os_log_type_t.error.getter();
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_100197F20;
    *(v27 + 56) = &type metadata for UInt32;
    *(v27 + 64) = &protocol witness table for UInt32;
    *(v27 + 32) = v25;
    os_log(_:dso:log:type:_:)("Uploaded: %llu bytes", v39);

    static os_log_type_t.error.getter();
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_100197F20;
    *(v28 + 56) = &type metadata for UInt32;
    *(v28 + 64) = &protocol witness table for UInt32;
    *(v28 + 32) = v24;
    os_log(_:dso:log:type:_:)("Downloaded: %llu bytes", v40);

    static os_log_type_t.error.getter();
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_100197F20;
    *(v29 + 56) = &type metadata for Double;
    *(v29 + 64) = &protocol witness table for Double;
    *(v29 + 32) = v43;
    os_log(_:dso:log:type:_:)("Runtime: %f seconds", v41);
    v20 = v9;
  }

  static os_log_type_t.error.getter();
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_100197F20;
  swift_errorRetain();
  sub_100046184(&unk_10021BC20, &unk_10019E500);
  v31 = String.init<A>(describing:)();
  *(v30 + 56) = &type metadata for String;
  *(v30 + 64) = v20;
  *(v30 + 32) = v31;
  *(v30 + 40) = v32;
  os_log(_:dso:log:type:_:)("Error: %s", v38);

  v33 = static os_log_type_t.error.getter();
  return os_log(_:dso:log:type:_:)("}}}", 3, 2, &_mh_execute_header, v22, v33, _swiftEmptyArrayStorage);
}

uint64_t sub_1001139AC()
{
  v1 = v0;
  v2 = *&v0[*(*v0 + 464) + 8];
  ObjectType = swift_getObjectType();
  v4 = *(v2 + 16);
  v5 = v4(ObjectType, v2);
  if (v5)
  {
    v6 = v5;
    objc_opt_self();
    v7 = swift_dynamicCastObjCClass();
    if (v7)
    {
      [v7 statusCode];
      v8 = (*(v2 + 8))(ObjectType, v2);
      if (!v8)
      {

        *&result = 0.0;
        return result;
      }

      v9 = v8;
      *&v23 = 0xD000000000000021;
      *(&v23 + 1) = 0x80000001001AD090;
      AnyHashable.init<A>(_:)();
      sub_100034150(v9, &v23);
      sub_10003430C(v22);
      if (v24)
      {
        swift_dynamicCast();
      }

      else
      {
        sub_10000B298(&v23, &qword_1002181D0, &qword_100198E00);
      }

      *&v23 = 0xD00000000000001DLL;
      *(&v23 + 1) = 0x80000001001AD070;
      AnyHashable.init<A>(_:)();
      sub_100034150(v9, &v23);
      sub_10003430C(v22);
      if (v24)
      {
        swift_dynamicCast();
      }

      else
      {
        sub_10000B298(&v23, &qword_1002181D0, &qword_100198E00);
      }

      AnyHashable.init<A>(_:)();
      sub_100034150(v9, &v23);
      sub_10003430C(v22);
      if (v24)
      {
        if (swift_dynamicCast())
        {
          v21 = -2.31584178e77;
          goto LABEL_26;
        }
      }

      else
      {
        sub_10000B298(&v23, &qword_1002181D0, &qword_100198E00);
      }

      AnyHashable.init<A>(_:)();
      sub_100034150(v9, &v23);
      sub_10003430C(v22);
      if (v24)
      {
        if (swift_dynamicCast())
        {
LABEL_26:
          AnyHashable.init<A>(_:)();
          sub_100034150(v9, &v23);

          sub_10003430C(v22);
          if (v24)
          {
            if (swift_dynamicCast())
            {
              *&result = -2.31584178e77 - v21;
              return result;
            }
          }

          else
          {
            sub_10000B298(&v23, &qword_1002181D0, &qword_100198E00);
          }

          goto LABEL_32;
        }
      }

      else
      {
        sub_10000B298(&v23, &qword_1002181D0, &qword_100198E00);
      }

LABEL_32:
      *&result = 0.0;
      return result;
    }
  }

  sub_100046184(&unk_100217040, &qword_1001989F0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_100197F20;
  v22[0] = v4(ObjectType, v2);
  sub_100046184(&qword_100218A80, &qword_10019D020);
  v11 = String.init<A>(describing:)();
  v13 = v12;
  *(v10 + 56) = &type metadata for String;
  v14 = sub_10000512C();
  *(v10 + 64) = v14;
  *(v10 + 32) = v11;
  *(v10 + 40) = v13;
  sub_10000E38C("UNIDENTIFIED_RESPONSE_TYPE=%{signpost.description:attribute,public}s", 68, 2, v10);

  v15 = *(*&v1[*(*v1 + 152)] + 16);

  os_unfair_lock_lock(v15);
  if ((v1[88] & 1) == 0)
  {
    v16 = *&v1[*(*v1 + 480)];
    if (v16)
    {
      swift_unknownObjectRetain();
      if (nw_activity_is_activated())
      {
        nw_activity_complete_with_reason();
      }

      else
      {
        static os_log_type_t.info.getter();
        v18 = swift_allocObject();
        *(v18 + 16) = xmmword_100197F20;
        v22[0] = v16;
        swift_unknownObjectRetain();
        sub_100046184(&qword_100219548, &unk_10019E4E8);
        v19 = String.init<A>(describing:)();
        *(v18 + 56) = &type metadata for String;
        *(v18 + 64) = v14;
        *(v18 + 32) = v19;
        *(v18 + 40) = v20;
        os_log(_:dso:log:type:_:)("Ending NetworkSpan before nw_activity (%s) was activated", 1);
      }

      swift_unknownObjectRelease();
    }

    sub_100112F10();
  }

  os_unfair_lock_unlock(v15);

  *&result = 0.0;
  return result;
}

uint64_t sub_100114008(uint64_t a1, unint64_t a2, double a3)
{
  v3 = a2;
  v6 = HIDWORD(a2);
  sub_100046184(&unk_100217040, &qword_1001989F0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100198E20;
  *(v7 + 56) = &type metadata for Int;
  *(v7 + 64) = &protocol witness table for Int;
  *(v7 + 32) = a1;
  *(v7 + 96) = &type metadata for UInt32;
  *(v7 + 104) = &protocol witness table for UInt32;
  *(v7 + 72) = v3;
  *(v7 + 136) = &type metadata for UInt32;
  *(v7 + 144) = &protocol witness table for UInt32;
  *(v7 + 112) = v6;
  *(v7 + 176) = &type metadata for Double;
  *(v7 + 184) = &protocol witness table for Double;
  *(v7 + 152) = a3;
  sub_10000E38C("statusCode=%{signpost.description:attribute,public}d, download=%{signpost.description:attribute}lu, upload=%{signpost.description:attribute}lu, runtime=%{signpost.description:attribute}f", 186, 2, v7);
}

uint64_t sub_1001143A0(uint64_t a1, uint64_t a2, char a3)
{
  static os_signpost_type_t.end.getter();

  return os_signpost(_:dso:log:name:signpostID:)();
}

uint64_t sub_100114454(uint64_t a1)
{
  result = sub_10011465C(a1);
  if (result)
  {
    v3 = *(v1 + 88);

    v4 = static os_log_type_t.debug.getter();
    sub_100046184(&unk_100217040, &qword_1001989F0);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_100198F10;
    v6 = aQuerycache_2[0];
    v7 = aQuerycache_2[1];
    *(v5 + 56) = &type metadata for String;
    v8 = sub_10000512C();
    *(v5 + 64) = v8;
    *(v5 + 32) = v6;
    *(v5 + 40) = v7;
    sub_10000EA9C();

    v9 = Dictionary.description.getter();
    v11 = v10;

    *(v5 + 96) = &type metadata for String;
    *(v5 + 104) = v8;
    *(v5 + 72) = v9;
    *(v5 + 80) = v11;
    os_log(_:dso:log:type:_:)("Reporting to CA event: '%s'\n\twith data: %@", 42, 2, &_mh_execute_header, v3, v4, v5);

    v12 = aQuerycache_2[0];
    v13 = aQuerycache_2[1];
    swift_bridgeObjectRetain_n();

    v14._countAndFlagsBits = 46;
    v14._object = 0xE100000000000000;
    String.append(_:)(v14);
    v15._countAndFlagsBits = v12;
    v15._object = v13;
    String.append(_:)(v15);

    v16 = String._bridgeToObjectiveC()();

    isa = Dictionary._bridgeToObjectiveC()().super.isa;
    AnalyticsSendEvent();
  }

  return result;
}

uint64_t sub_10011465C(uint64_t a1)
{
  v3 = sub_100029FC4(&type metadata for QueryCache.Activity, &type metadata for QueryCache.Activity, &protocol descriptor for __CoreAnalyticsActivity);
  result = 0;
  if (v3)
  {
    if (a1)
    {
      v5 = v2;
      v6 = *(v2 + 16);

      v6(v3, v5);
      UInt._bridgeToObjectiveC()();
      swift_isUniquelyReferenced_nonNull_native();
      sub_10000F318();

      (*(v5 + 8))(v3, v5);
      sub_10000E96C();
      Double._bridgeToObjectiveC()();
      swift_isUniquelyReferenced_nonNull_native();
      sub_10000F318();

      return a1;
    }
  }

  return result;
}

uint64_t sub_1001147C8@<X0>(uint64_t a1@<X8>)
{
  result = sub_100067C44();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_100114828()
{
  v1 = qword_100232D80;
  type metadata accessor for Client();
  sub_10000374C();
  v3 = *(v2 + 8);

  return v3(v0 + v1);
}

uint64_t sub_100114884(uint64_t a1)
{
  if ((*(v1 + 88) & 1) == 0)
  {
    a1 = sub_1001140F8(a1);
  }

  v2 = sub_1001133D4(a1);
  v3 = qword_100232D80;
  type metadata accessor for Client();
  sub_10000374C();
  (*(v4 + 8))(v2 + v3);
  return v2;
}

uint64_t sub_1001148EC(uint64_t a1)
{
  v1 = sub_100114884(a1);
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 52);

  return _swift_deallocClassInstance(v1, v2, v3);
}

uint64_t type metadata accessor for ResourceAccessNetworkSpan(uint64_t a1)
{
  result = qword_10021B928;
  if (!qword_10021B928)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10011498C(uint64_t a1)
{
  result = type metadata accessor for Client();
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

uint64_t sub_100114BBC(uint64_t a1, unint64_t a2, double a3)
{
  v3 = sub_1000E3D6C(a1, a2, a3);
  Client.type.getter();
  [objc_allocWithZone(NSNumber) initWithUnsignedInteger:ClientType.rawValue.getter()];
  swift_isUniquelyReferenced_nonNull_native();
  sub_10000F318();
  sub_10000E2DC(v3);

  v4 = sub_10000F18C();

  return sub_100114008(v4, v5, v6);
}

unint64_t sub_100114CBC()
{
  result = qword_10021BBC0;
  if (!qword_10021BBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021BBC0);
  }

  return result;
}

unint64_t sub_100114D10(uint64_t a1)
{
  *(a1 + 8) = sub_100114D40();
  result = sub_100114D94();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_100114D40()
{
  result = qword_10021BBC8;
  if (!qword_10021BBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021BBC8);
  }

  return result;
}

unint64_t sub_100114D94()
{
  result = qword_10021BBD0;
  if (!qword_10021BBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021BBD0);
  }

  return result;
}

unint64_t sub_100114DE8(uint64_t a1)
{
  result = sub_100114E10();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100114E10()
{
  result = qword_10021BC18;
  if (!qword_10021BC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021BC18);
  }

  return result;
}

uint64_t NSFileManager.feedbackLoggerCacheDirectoryURL.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v23[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v10 = &v23[-v9];
  v12 = __chkstk_darwin(v11);
  v14 = &v23[-v13];
  v24 = 0;
  v15 = [v2 URLForDirectory:13 inDomain:1 appropriateForURL:0 create:0 error:{&v24, v12}];
  v16 = v24;
  if (v15)
  {
    v17 = v15;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v16;

    (*(v5 + 32))(v14, v10, v4);
    URL.appendingPathComponent(_:isDirectory:)();
    URL.standardizedFileURL.getter();
    v19 = *(v5 + 8);
    v19(v7, v4);
    v19(v14, v4);
    v20 = 0;
  }

  else
  {
    v21 = v24;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    v20 = 1;
  }

  return sub_1000051C0(a1, v20, 1, v4);
}

void NSFileManager.forceMoveItem(at:to:)(uint64_t a1)
{
  v2 = v1;
  URL.path.getter();
  v3 = String._bridgeToObjectiveC()();

  v4 = [v1 fileExistsAtPath:v3];

  if (v4)
  {
    URL.path.getter();
    v5 = String._bridgeToObjectiveC()();

    v6 = [v2 fileExistsAtPath:v5];

    if (v6)
    {
      URL._bridgeToObjectiveC()(v7);
      v9 = v8;
      v21 = 0;
      v10 = [v2 removeItemAtURL:v8 error:&v21];

      v11 = v21;
      if (!v10)
      {
LABEL_7:
        v20 = v11;
        _convertNSErrorToError(_:)();

        swift_willThrow();
        return;
      }

      v12 = v21;
    }

    URL._bridgeToObjectiveC()(v7);
    v14 = v13;
    URL._bridgeToObjectiveC()(v15);
    v17 = v16;
    v21 = 0;
    v18 = [v2 moveItemAtURL:v14 toURL:v16 error:&v21];

    v11 = v21;
    if (v18)
    {
      v19 = v21;
      return;
    }

    goto LABEL_7;
  }
}

unint64_t sub_100115264(uint64_t a1)
{
  result = type metadata accessor for URL();
  if (v2 <= 0x3F)
  {
    result = sub_1000B2EB4();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1001152E8(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = sub_100046184(&qword_1002183B0, &qword_10019C758);
  sub_100005490(v6);
  sub_100003760();
  __chkstk_darwin(v7);
  v9 = &v15 - v8;
  type metadata accessor for TopicCacheEntry(0);
  sub_1000036B8();
  __chkstk_darwin(v10);
  sub_100003664();
  v13 = v12 - v11;
  if (sub_100008D0C(a1, 1, v14) == 1)
  {
    sub_10000B240(a1, &qword_1002183B0, &qword_10019C758);
    sub_1000BC030(a2);

    sub_10000B240(v9, &qword_1002183B0, &qword_10019C758);
  }

  else
  {
    sub_1000A6BC0(a1, v13);
    swift_isUniquelyReferenced_nonNull_native();
    v16 = *v3;
    sub_1000BDC98(v13, a2);

    *v3 = v16;
  }
}

uint64_t sub_100115440(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_100046184(&unk_100216F00, &unk_10019B3D0);
  sub_100005490(v7);
  sub_100003760();
  __chkstk_darwin(v8);
  v10 = &v14[-v9 - 8];

  URLQueryItem.init(name:value:)();
  v11 = type metadata accessor for URLQueryItem();
  sub_1000051C0(v10, 0, 1, v11);
  sub_100005D5C(v4 + OBJC_IVAR____TtC7parsecd23ParsecURLRequestBuilder_queryItems, v14);
  sub_100019D4C(v10, a1, a2);
  return swift_endAccess();
}

BOOL sub_100115534()
{
  v1 = sub_100046184(&unk_100216F00, &unk_10019B3D0);
  sub_100005490(v1);
  sub_100003760();
  __chkstk_darwin(v2);
  v4 = &v21 - v3;
  v5 = OBJC_IVAR____TtC7parsecd23ParsecURLRequestBuilder_queryItems;
  sub_10000F284();
  v6 = *(v0 + v5);
  if (*(v6 + 16) && (v7 = sub_1000078A0(), v9 = sub_100005B74(v7, v8), (v10 & 1) != 0))
  {
    v11 = v9;
    v12 = *(v6 + 56);
    v13 = type metadata accessor for URLQueryItem();
    sub_1000036B8();
    (*(v14 + 16))(v4, v12 + *(v14 + 72) * v11, v13);
    v15 = v4;
    v16 = 0;
  }

  else
  {
    v13 = type metadata accessor for URLQueryItem();
    v15 = sub_100009940();
  }

  sub_10000DCAC(v15, v16);
  swift_endAccess();
  type metadata accessor for URLQueryItem();
  v17 = sub_100009940();
  v19 = sub_100008D0C(v17, v18, v13) != 1;
  sub_10000B240(v4, &unk_100216F00, &unk_10019B3D0);
  return v19;
}

uint64_t sub_10011567C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = OBJC_IVAR____TtC7parsecd23ParsecURLRequestBuilder_httpHeader;
  swift_beginAccess();
  if (!*(*(v4 + v7) + 16) || (sub_100005B74(a1, a2), (v8 & 1) == 0))
  {
    swift_endAccess();
    sub_100005D5C(v4 + v7, v11);

    swift_isUniquelyReferenced_nonNull_native();
    v10 = *(v4 + v7);
    sub_1000BD710();
    *(v4 + v7) = v10;
  }

  return swift_endAccess();
}

uint64_t sub_10011575C(uint64_t a1)
{
  v1 = URLQueryItem.name.getter();
  v3 = v2;
  if (v1 == URLQueryItem.name.getter() && v3 == v4)
  {
    v6 = 0;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v6 & 1;
}

uint64_t sub_1001157FC(uint64_t a1)
{
  result = type metadata accessor for URLComponents();
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

uint64_t sub_10011589C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100046184(&unk_100216F00, &unk_10019B3D0);
  sub_100005490(v4);
  sub_100003760();
  __chkstk_darwin(v5);
  v7 = &v16[-v6 - 8];
  URLQueryItem.name.getter();
  v9 = v8;
  v10 = type metadata accessor for URLQueryItem();
  sub_1000036B8();
  (*(v11 + 16))(v7, a1, v10);
  sub_1000051C0(v7, 0, 1, v10);
  sub_100005D5C(v2 + OBJC_IVAR____TtC7parsecd23ParsecURLRequestBuilder_queryItems, v16);
  v12 = sub_1000078A0();
  sub_100019D4C(v12, v13, v9);
  return swift_endAccess();
}

char *sub_1001159A0(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[24 * a2] <= a3)
  {
    return sub_100006164(a3, result);
  }

  return result;
}

char *sub_1001159C8(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[40 * a2] <= a3)
  {
    return sub_100006164(a3, result);
  }

  return result;
}

char *sub_100115A08(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[32 * a2] <= a3)
  {
    return sub_100006164(a3, result);
  }

  return result;
}

char *sub_100115A28(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[4 * a2] <= a3)
  {
    return sub_100006164(a3, result);
  }

  return result;
}

void sub_100115A90()
{
  sub_10000E218();
  if (v3 && (sub_100046184(&qword_100219BD8, &unk_1001A0700), sub_1000036B8(), v1 + *(v4 + 72) * v0 > v2))
  {
    if (v2 != v1)
    {
      sub_100006BC0();

      swift_arrayInitWithTakeBackToFront();
    }
  }

  else
  {
    sub_100046184(&qword_100219BD8, &unk_1001A0700);
    sub_100006BC0();

    swift_arrayInitWithTakeFrontToBack();
  }
}

char *sub_100115B50(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[8 * a2] <= a3)
  {
    return sub_100006164(a3, result);
  }

  return result;
}

void sub_100115B88(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  sub_10000E218();
  if (v8 && (a4(0), sub_1000036B8(), v5 + *(v9 + 72) * v4 > v6))
  {
    if (v6 != v5)
    {
      sub_100006BC0();

      swift_arrayInitWithTakeBackToFront();
    }
  }

  else
  {
    a4(0);
    sub_100006BC0();

    swift_arrayInitWithTakeFrontToBack();
  }
}

char *sub_100115C3C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100046184(&qword_1002161A8, &qword_1001A0730);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[40 * v8] <= v12)
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_100115D54()
{
  sub_100005510();
  if (v4)
  {
    sub_100005DE0();
    if (v5 != v6)
    {
      sub_100005900();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_10000381C();
    }
  }

  sub_100006994();
  if (v3)
  {
    sub_100046184(&qword_10021BDF0, &qword_1001A0720);
    v7 = swift_allocObject();
    v8 = j__malloc_size(v7);
    v7[2] = v2;
    v7[3] = 2 * ((v8 - 32) / 40);
  }

  else
  {
    v7 = _swiftEmptyArrayStorage;
  }

  if (v1)
  {
    if (v7 != v0 || &v0[5 * v2 + 4] <= v7 + 4)
    {
      v10 = sub_100006B0C();
      memmove(v10, v11, v12);
    }

    v0[2] = 0;
  }

  else
  {
    sub_100046184(&qword_10021BDF8, &qword_1001A0728);
    sub_100006B0C();
    swift_arrayInitWithCopy();
  }
}

void sub_100115E64()
{
  sub_100005510();
  if (v4)
  {
    sub_100005DE0();
    if (v5 != v6)
    {
      sub_100005900();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_10000381C();
    }
  }

  sub_100006994();
  if (v3)
  {
    v7 = sub_100046184(&qword_1002161F0, &unk_1001A0750);
    v8 = sub_100006F24(v7);
    v9 = j__malloc_size(v8);
    sub_1000040C0(v9);
  }

  else
  {
    v8 = _swiftEmptyArrayStorage;
  }

  if (v1)
  {
    if (v8 != v0 || &v0[2 * v2 + 4] <= v8 + 4)
    {
      v11 = sub_100006B0C();
      memmove(v11, v12, v13);
    }

    v0[2] = 0;
  }

  else
  {
    sub_100046184(&qword_1002161F8, &qword_10019A698);
    sub_100006B0C();
    swift_arrayInitWithCopy();
  }
}

void sub_100115F50()
{
  sub_100005510();
  if (v4)
  {
    sub_100005DE0();
    if (v5 != v6)
    {
      sub_100005900();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_10000381C();
    }
  }

  sub_100006994();
  if (v3)
  {
    sub_100046184(&qword_100216160, &qword_10019A598);
    v7 = swift_allocObject();
    v8 = j__malloc_size(v7);
    *(v7 + 2) = v2;
    *(v7 + 3) = 2 * v8 - 64;
  }

  else
  {
    v7 = _swiftEmptyArrayStorage;
  }

  v9 = v7 + 32;
  v10 = v0 + 32;
  if (v1)
  {
    if (v7 != v0 || &v10[v2] <= v9)
    {
      memmove(v9, v10, v2);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    memcpy(v9, v10, v2);
  }
}

void sub_100116060(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void), void (*a8)(void))
{
  if (a3)
  {
    sub_100005DE0();
    if (v13 != v14)
    {
      sub_100005900();
      if (v13)
      {
LABEL_24:
        __break(1u);
        return;
      }

      sub_10000381C();
    }
  }

  else
  {
    v12 = a2;
  }

  v15 = *(a4 + 16);
  if (v12 <= v15)
  {
    v16 = *(a4 + 16);
  }

  else
  {
    v16 = v12;
  }

  if (!v16)
  {
    v20 = _swiftEmptyArrayStorage;
    goto LABEL_18;
  }

  sub_100046184(a5, a6);
  v17 = *(a7(0) - 8);
  v18 = *(v17 + 72);
  v19 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v20 = swift_allocObject();
  v21 = j__malloc_size(v20);
  if (!v18)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v21 - v19 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_23;
  }

  v20[2] = v15;
  v20[3] = 2 * ((v21 - v19) / v18);
LABEL_18:
  v23 = *(a7(0) - 8);
  if (a1)
  {
    v24 = (*(v23 + 80) + 32) & ~*(v23 + 80);
    sub_100115B88(a4 + v24, v15, v20 + v24, a8);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_10011628C()
{
  sub_100005510();
  if (v4)
  {
    sub_100005DE0();
    if (v5 != v6)
    {
      sub_100005900();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_10000381C();
    }
  }

  sub_100006994();
  if (v3)
  {
    v7 = sub_100046184(&qword_10021BE00, &qword_1001A0738);
    v8 = sub_100006F24(v7);
    v9 = j__malloc_size(v8);
    sub_1000040C0(v9);
  }

  else
  {
    v8 = _swiftEmptyArrayStorage;
  }

  v10 = v8 + 32;
  v11 = v0 + 32;
  if (v1)
  {
    if (v8 != v0 || &v11[16 * v2] <= v10)
    {
      memmove(v10, v11, 16 * v2);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void *sub_100116358(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100046184(&qword_100219BE0, &qword_10019EA90);
  v10 = *(sub_100046184(&qword_100219BD8, &unk_1001A0700) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  sub_100046184(&qword_100219BD8, &unk_1001A0700);
  if (v5)
  {
    sub_100115A90();
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void sub_100116560(unint64_t *a1, uint64_t a2, char **a3, uint64_t a4)
{
  v5 = v4;
  v146 = a1;
  v8 = type metadata accessor for URLQueryItem();
  __chkstk_darwin(v8);
  v151 = &v142 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v164 = &v142 - v11;
  __chkstk_darwin(v12);
  v14 = &v142 - v13;
  __chkstk_darwin(v15);
  __chkstk_darwin(v16);
  v160 = &v142 - v17;
  __chkstk_darwin(v18);
  v159 = &v142 - v19;
  __chkstk_darwin(v20);
  v26.n128_f64[0] = __chkstk_darwin(v21);
  v27 = &v142 - v22;
  v157 = v23;
  v158 = a3;
  v28 = a3[1];
  if (v28 < 1)
  {
    v30 = _swiftEmptyArrayStorage;
LABEL_114:
    v169 = *v146;
    if (!v169)
    {
      goto LABEL_156;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_116;
    }

    goto LABEL_150;
  }

  v165 = v24;
  v142 = a4;
  v29 = 0;
  v169 = v23 + 16;
  v167 = (v23 + 32);
  v168 = (v23 + 8);
  v30 = _swiftEmptyArrayStorage;
  v161 = v8;
  v153 = v14;
  v143 = v25;
  v145 = &v142 - v22;
  while (1)
  {
    v31 = v29;
    v32 = v29 + 1;
    v148 = v29;
    if (v29 + 1 < v28)
    {
      v163 = v28;
      v144 = v30;
      v33 = v27;
      v34 = *v158;
      v35 = *(v23 + 72);
      v36 = v25;
      v156 = v29 + 1;
      v37 = v29;
      v38 = &v34[v35 * (v29 + 1)];
      v39 = *(v23 + 16);
      v39(v33, v38, v8, v26);
      v40 = &v34[v35 * v37];
      v41 = v145;
      v155 = v39;
      (v39)(v36, v40, v8);
      LODWORD(v162) = sub_10011575C(v41);
      if (v5)
      {
        v141 = *v168;
        (*v168)(v36, v8);
        (v141)(v41, v8);
LABEL_124:

        return;
      }

      v147 = 0;
      v30 = v168;
      v42 = *v168;
      (*v168)(v36, v8);
      v154 = v42;
      (v42)(v41, v8);
      v43 = v148 + 2;
      v44 = &v34[v35 * (v148 + 2)];
      v32 = v156;
      v45 = v35;
      v166 = v35;
      v46 = v163;
      while (1)
      {
        v47 = v43;
        if (v32 + 1 >= v46)
        {
          break;
        }

        v48 = v32;
        v49 = v161;
        v5 = v155;
        (v155)(v159, v44, v161);
        v5(v160, v38, v49);
        v50 = URLQueryItem.name.getter();
        v52 = v51;
        if (v50 == URLQueryItem.name.getter() && v52 == v53)
        {
          v55 = 0;
        }

        else
        {
          v55 = _stringCompareWithSmolCheck(_:_:expecting:)();
        }

        v56 = v161;
        v30 = v154;
        (v154)(v160, v161);
        (v30)(v159, v56);
        v45 = v166;
        v44 += v166;
        v38 += v166;
        v32 = v48 + 1;
        v43 = v47 + 1;
        v46 = v163;
        if ((v162 ^ v55))
        {
          goto LABEL_16;
        }
      }

      v32 = v46;
LABEL_16:
      if (v162)
      {
        v31 = v148;
        if (v32 < v148)
        {
          goto LABEL_149;
        }

        v5 = v147;
        if (v148 >= v32)
        {
          v23 = v157;
          v30 = v144;
          v8 = v161;
          v14 = v153;
          goto LABEL_39;
        }

        if (v46 >= v47)
        {
          v57 = v47;
        }

        else
        {
          v57 = v46;
        }

        v58 = v45 * (v57 - 1);
        v59 = v45 * v57;
        v60 = v148;
        v61 = v148 * v45;
        v62 = v32;
        do
        {
          if (v60 != --v62)
          {
            v63 = *v158;
            if (!*v158)
            {
              goto LABEL_154;
            }

            v64 = v161;
            v163 = *v167;
            v163(v151, &v63[v61], v161);
            v65 = v61 < v58 || &v63[v61] >= &v63[v59];
            if (v65)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v61 != v58)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v163(&v63[v58], v151, v64);
            v5 = v147;
            v45 = v166;
          }

          ++v60;
          v58 -= v45;
          v59 -= v45;
          v61 += v45;
        }

        while (v60 < v62);
      }

      else
      {
        v5 = v147;
      }

      v23 = v157;
      v30 = v144;
      v8 = v161;
      v14 = v153;
      v31 = v148;
    }

LABEL_39:
    v66 = v158[1];
    if (v32 < v66)
    {
      if (__OFSUB__(v32, v31))
      {
        goto LABEL_146;
      }

      if (v32 - v31 < v142)
      {
        break;
      }
    }

LABEL_62:
    if (v32 < v31)
    {
      goto LABEL_145;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_10006C888();
      v30 = v132;
    }

    v89 = *(v30 + 2);
    v88 = *(v30 + 3);
    v90 = v89 + 1;
    v156 = v32;
    if (v89 >= v88 >> 1)
    {
      sub_10006C888();
      v30 = v133;
    }

    *(v30 + 2) = v90;
    v91 = v30 + 32;
    v92 = &v30[16 * v89 + 32];
    v93 = v156;
    *v92 = v148;
    *(v92 + 1) = v93;
    v166 = *v146;
    if (!v166)
    {
      goto LABEL_155;
    }

    if (v89)
    {
      while (1)
      {
        v94 = v90 - 1;
        v95 = &v91[16 * v90 - 16];
        v96 = &v30[16 * v90];
        if (v90 >= 4)
        {
          break;
        }

        if (v90 == 3)
        {
          v97 = *(v30 + 4);
          v98 = *(v30 + 5);
          v107 = __OFSUB__(v98, v97);
          v99 = v98 - v97;
          v100 = v107;
LABEL_82:
          if (v100)
          {
            goto LABEL_132;
          }

          v112 = *v96;
          v111 = *(v96 + 1);
          v113 = __OFSUB__(v111, v112);
          v114 = v111 - v112;
          v115 = v113;
          if (v113)
          {
            goto LABEL_135;
          }

          v116 = *(v95 + 1);
          v117 = v116 - *v95;
          if (__OFSUB__(v116, *v95))
          {
            goto LABEL_138;
          }

          if (__OFADD__(v114, v117))
          {
            goto LABEL_140;
          }

          if (v114 + v117 >= v99)
          {
            if (v99 < v117)
            {
              v94 = v90 - 2;
            }

            goto LABEL_104;
          }

          goto LABEL_97;
        }

        if (v90 < 2)
        {
          goto LABEL_134;
        }

        v119 = *v96;
        v118 = *(v96 + 1);
        v107 = __OFSUB__(v118, v119);
        v114 = v118 - v119;
        v115 = v107;
LABEL_97:
        if (v115)
        {
          goto LABEL_137;
        }

        v121 = *v95;
        v120 = *(v95 + 1);
        v107 = __OFSUB__(v120, v121);
        v122 = v120 - v121;
        if (v107)
        {
          goto LABEL_139;
        }

        if (v122 < v114)
        {
          goto LABEL_111;
        }

LABEL_104:
        if (v94 - 1 >= v90)
        {
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
          goto LABEL_148;
        }

        if (!*v158)
        {
          goto LABEL_152;
        }

        v126 = v30;
        v127 = &v91[16 * v94 - 16];
        v30 = *v127;
        v128 = &v91[16 * v94];
        v129 = *(v128 + 1);
        sub_100117124(&(*v158)[*(v157 + 72) * *v127], &(*v158)[*(v157 + 72) * *v128], &(*v158)[*(v157 + 72) * v129], v166);
        if (v5)
        {
          goto LABEL_124;
        }

        if (v129 < v30)
        {
          goto LABEL_127;
        }

        v130 = *(v126 + 2);
        if (v94 > v130)
        {
          goto LABEL_128;
        }

        *v127 = v30;
        *(v127 + 1) = v129;
        if (v94 >= v130)
        {
          goto LABEL_129;
        }

        v90 = v130 - 1;
        memmove(&v91[16 * v94], v128 + 16, 16 * (v130 - 1 - v94));
        v30 = v126;
        *(v126 + 2) = v130 - 1;
        v131 = v130 > 2;
        v14 = v153;
        if (!v131)
        {
          goto LABEL_111;
        }
      }

      v101 = &v91[16 * v90];
      v102 = *(v101 - 8);
      v103 = *(v101 - 7);
      v107 = __OFSUB__(v103, v102);
      v104 = v103 - v102;
      if (v107)
      {
        goto LABEL_130;
      }

      v106 = *(v101 - 6);
      v105 = *(v101 - 5);
      v107 = __OFSUB__(v105, v106);
      v99 = v105 - v106;
      v100 = v107;
      if (v107)
      {
        goto LABEL_131;
      }

      v108 = *(v96 + 1);
      v109 = v108 - *v96;
      if (__OFSUB__(v108, *v96))
      {
        goto LABEL_133;
      }

      v107 = __OFADD__(v99, v109);
      v110 = v99 + v109;
      if (v107)
      {
        goto LABEL_136;
      }

      if (v110 >= v104)
      {
        v124 = *v95;
        v123 = *(v95 + 1);
        v107 = __OFSUB__(v123, v124);
        v125 = v123 - v124;
        if (v107)
        {
          goto LABEL_144;
        }

        if (v99 < v125)
        {
          v94 = v90 - 2;
        }

        goto LABEL_104;
      }

      goto LABEL_82;
    }

LABEL_111:
    v23 = v157;
    v28 = v158[1];
    v29 = v156;
    v8 = v161;
    v25 = v143;
    v27 = v145;
    if (v156 >= v28)
    {
      goto LABEL_114;
    }
  }

  v67 = (v31 + v142);
  if (__OFADD__(v31, v142))
  {
    goto LABEL_147;
  }

  if (v67 >= v66)
  {
    v67 = v158[1];
  }

  if (v67 < v31)
  {
LABEL_148:
    __break(1u);
LABEL_149:
    __break(1u);
LABEL_150:
    v30 = sub_10011775C(v30);
LABEL_116:
    v134 = v30 + 16;
    v135 = *(v30 + 2);
    while (v135 >= 2)
    {
      if (!*v158)
      {
        goto LABEL_153;
      }

      v136 = v30;
      v30 += 16 * v135;
      v137 = *v30;
      v138 = &v134[2 * v135];
      v139 = v138[1];
      sub_100117124(&(*v158)[*(v157 + 72) * *v30], &(*v158)[*(v157 + 72) * *v138], &(*v158)[*(v157 + 72) * v139], v169);
      if (v5)
      {
        break;
      }

      if (v139 < v137)
      {
        goto LABEL_141;
      }

      if (v135 - 2 >= *v134)
      {
        goto LABEL_142;
      }

      *v30 = v137;
      *(v30 + 1) = v139;
      v140 = *v134 - v135;
      if (*v134 < v135)
      {
        goto LABEL_143;
      }

      v135 = *v134 - 1;
      memmove(v138, v138 + 2, 16 * v140);
      *v134 = v135;
      v30 = v136;
    }

    goto LABEL_124;
  }

  if (v32 == v67)
  {
    goto LABEL_62;
  }

  v144 = v30;
  v147 = v5;
  v68 = *v158;
  v69 = *(v23 + 72);
  v166 = *(v23 + 16);
  v70 = &v68[v69 * (v32 - 1)];
  v162 = -v69;
  v163 = v68;
  v71 = (v31 - v32);
  v149 = v69;
  v150 = v67;
  v72 = &v68[v32 * v69];
  v73 = v165;
LABEL_48:
  v155 = v70;
  v156 = v32;
  v152 = v72;
  v154 = v71;
  while (1)
  {
    v74 = v166;
    (v166)(v73, v72, v8);
    v74(v14, v70, v8);
    v75 = v14;
    v76 = URLQueryItem.name.getter();
    v77 = v8;
    v79 = v78;
    if (v76 == URLQueryItem.name.getter() && v79 == v80)
    {

      v87 = *v168;
      (*v168)(v75, v77);
      (v87)(v73, v77);
      v8 = v77;
      v14 = v75;
      goto LABEL_60;
    }

    v82 = v73;
    v83 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v84 = *v168;
    (*v168)(v75, v77);
    (v84)(v82, v77);
    v8 = v77;
    v14 = v75;
    if ((v83 & 1) == 0)
    {
      v73 = v165;
LABEL_60:
      v32 = v156 + 1;
      v70 = &v155[v149];
      v71 = v154 - 1;
      v72 = &v152[v149];
      if ((v156 + 1) == v150)
      {
        v32 = v150;
        v5 = v147;
        v30 = v144;
        v31 = v148;
        goto LABEL_62;
      }

      goto LABEL_48;
    }

    if (!v163)
    {
      break;
    }

    v85 = *v167;
    v86 = v164;
    (*v167)(v164, v72, v77);
    swift_arrayInitWithTakeFrontToBack();
    v85(v70, v86, v77);
    v70 += v162;
    v72 += v162;
    v65 = __CFADD__(v71++, 1);
    v73 = v165;
    if (v65)
    {
      goto LABEL_60;
    }
  }

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
  __break(1u);
}

void sub_100117124(unint64_t a1, char *a2, unint64_t a3, unint64_t a4)
{
  v8 = type metadata accessor for URLQueryItem();
  __chkstk_darwin(v8);
  v66 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v65 = &v61 - v11;
  __chkstk_darwin(v12);
  v68 = &v61 - v13;
  __chkstk_darwin(v14);
  v18 = *(v17 + 72);
  if (!v18)
  {
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
    return;
  }

  v19 = &a2[-a1] == 0x8000000000000000 && v18 == -1;
  if (v19)
  {
    goto LABEL_72;
  }

  v20 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_73;
  }

  v67 = &v61 - v16;
  v22 = &a2[-a1] / v18;
  v74 = a1;
  v73 = a4;
  v69 = (v15 + 8);
  v70 = (v15 + 16);
  v23 = v20 / v18;
  if (v22 < v20 / v18)
  {
    sub_100115B88(a1, &a2[-a1] / v18, a4, &type metadata accessor for URLQueryItem);
    v66 = (a4 + v22 * v18);
    v72 = v66;
    v64 = a3;
    while (1)
    {
      if (a4 >= v66 || a2 >= a3)
      {
        goto LABEL_70;
      }

      v25 = a1;
      v26 = v18;
      v27 = *v70;
      v28 = v67;
      v29 = a2;
      (*v70)(v67, a2, v8);
      v71 = a4;
      v30 = v68;
      v27();
      v31 = URLQueryItem.name.getter();
      v33 = v32;
      if (v31 == URLQueryItem.name.getter() && v33 == v34)
      {

        v41 = *v69;
        (*v69)(v30, v8);
        v41(v28, v8);
        v18 = v26;
      }

      else
      {
        v36 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v37 = *v69;
        (*v69)(v30, v8);
        v37(v28, v8);
        v18 = v26;
        if (v36)
        {
          v38 = v29;
          a2 = (v29 + v26);
          v39 = v25;
          if (v25 < v29 || v25 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
            a3 = v64;
          }

          else
          {
            a3 = v64;
            if (v25 != v38)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          a4 = v71;
          goto LABEL_40;
        }
      }

      a4 = v71 + v18;
      v39 = v25;
      v42 = v25 < v71 || v25 >= a4;
      a2 = v29;
      if (v42)
      {
        swift_arrayInitWithTakeFrontToBack();
        a3 = v64;
      }

      else
      {
        a3 = v64;
        if (v25 != v71)
        {
          swift_arrayInitWithTakeBackToFront();
        }
      }

      v73 = a4;
LABEL_40:
      a1 = v39 + v18;
      v74 = a1;
    }
  }

  sub_100115B88(a2, v20 / v18, a4, &type metadata accessor for URLQueryItem);
  v71 = a4;
  v43 = a4 + v23 * v18;
  v44 = -v18;
  v45 = v43;
  v68 = -v18;
LABEL_42:
  v67 = a2;
  v64 = &a2[v44];
  v46 = a3;
  v62 = v45;
  while (1)
  {
    if (v43 <= v71)
    {
      v74 = v67;
      v72 = v45;
      goto LABEL_70;
    }

    if (v67 <= a1)
    {
      break;
    }

    v63 = v45;
    v47 = v43 + v44;
    v48 = *v70;
    (*v70)(v65, v43 + v44, v8);
    (v48)(v66, v64, v8);
    v49 = URLQueryItem.name.getter();
    v51 = v50;
    if (v49 == URLQueryItem.name.getter() && v51 == v52)
    {
      v54 = 0;
    }

    else
    {
      v54 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    v55 = v46 + v68;
    v56 = *v69;
    (*v69)(v66, v8);
    v56(v65, v8);
    if (v54)
    {
      v58 = v46 < v67 || v55 >= v67;
      a3 = v55;
      if (v58)
      {
        a2 = v64;
        swift_arrayInitWithTakeFrontToBack();
        v45 = v63;
        v44 = v68;
      }

      else
      {
        v60 = v63;
        v59 = v64;
        v45 = v63;
        v19 = v46 == v67;
        a2 = v64;
        v44 = v68;
        if (!v19)
        {
          swift_arrayInitWithTakeBackToFront();
          a2 = v59;
          v45 = v60;
        }
      }

      goto LABEL_42;
    }

    if (v46 < v43 || v55 >= v43)
    {
      swift_arrayInitWithTakeFrontToBack();
      v46 = v55;
      v43 = v47;
      v45 = v47;
      v44 = v68;
    }

    else
    {
      v45 = v47;
      v19 = v43 == v46;
      v46 = v55;
      v43 = v47;
      v44 = v68;
      if (!v19)
      {
        swift_arrayInitWithTakeBackToFront();
        v46 = v55;
        v43 = v47;
        v45 = v47;
      }
    }
  }

  v74 = v67;
  v72 = v62;
LABEL_70:
  sub_100117870(&v74, &v73, &v72, &type metadata accessor for URLQueryItem);
}

void sub_100117788(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  sub_100046184(&qword_100219BD8, &unk_1001A0700);
  sub_1000036B8();
  v7 = *(v6 + 72);
  if (!v7)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    return;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_20;
  }

  sub_10000AF2C();
  v10 = !v10 || v3 >= v9;
  if (v10)
  {
    sub_10000672C();

    swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {
    sub_10000672C();

    swift_arrayInitWithTakeBackToFront();
  }
}

void sub_100117870(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  v4 = *a1;
  v5 = *a2;
  v6 = *a3;
  a4(0);
  sub_1000036B8();
  v8 = *(v7 + 72);
  if (!v8)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    return;
  }

  if (v6 - v5 == 0x8000000000000000 && v8 == -1)
  {
    goto LABEL_20;
  }

  sub_10000AF2C();
  v11 = !v11 || v4 >= v10;
  if (v11)
  {
    sub_10000672C();

    swift_arrayInitWithTakeFrontToBack();
  }

  else if (v4 != v5)
  {
    sub_10000672C();

    swift_arrayInitWithTakeBackToFront();
  }
}

char *sub_100117938(char *result, int64_t a2, char a3, char *a4)
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
    sub_100046184(&qword_100216178, &qword_1001A1310);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

_BYTE *storeEnumTagSinglePayload for ParsecURLRequestBuilder.URLError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_100117C50()
{
  result = qword_10021BE10;
  if (!qword_10021BE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021BE10);
  }

  return result;
}

void PegasusConfigURLProvider.init(fileManager:)(void *a1@<X0>, char *a2@<X8>)
{
  *a2 = a1;
  v4 = *(type metadata accessor for PegasusConfigURLProvider(0) + 20);
  v5 = a1;
  static PegasusConfigURLProvider.getPegasusConfigCacheDirectoryURL(fileManager:)(v5, &a2[v4]);
}

uint64_t static PegasusConfigURLProvider.getPegasusConfigCacheDirectoryURL(fileManager:)@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v5 = sub_100046184(&qword_100218230, &unk_100199A00);
  __chkstk_darwin(v5 - 8);
  v7 = &v27 - v6;
  type metadata accessor for URL();
  sub_100003BC8();
  v9 = v8;
  __chkstk_darwin(v10);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v27 - v14;
  v31 = a1;
  sub_10011813C();
  static PegasusConfigContainerURLProvider.containerURL<A>(using:)();
  sub_10000447C(v7, 0);
  v16 = *(v9 + 32);
  v16(v15, v7, v2);
  if (qword_1002141B8 != -1)
  {
    sub_100004270(&qword_1002141B8);
  }

  v17 = type metadata accessor for Logger();
  sub_10000964C(v17, qword_100232D18);
  (*(v9 + 16))(v12, v15, v2);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v30 = a2;
    v21 = v20;
    v28 = swift_slowAlloc();
    v31 = v28;
    *v21 = 136315138;
    sub_100118610();
    v22 = dispatch thunk of CustomStringConvertible.description.getter();
    v29 = v16;
    v24 = v23;
    (*(v9 + 8))(v12, v2);
    v25 = sub_100009684(v22, v24, &v31);
    v16 = v29;

    *(v21 + 4) = v25;
    _os_log_impl(&_mh_execute_header, v18, v19, "PegasusConfiguration container URL: %s", v21, 0xCu);
    sub_100007378(v28);

    a2 = v30;
  }

  else
  {

    (*(v9 + 8))(v12, v2);
  }

  v16(a2, v15, v2);
  return sub_10000447C(a2, 0);
}

uint64_t type metadata accessor for PegasusConfigURLProvider(uint64_t a1)
{
  result = qword_10021BE70;
  if (!qword_10021BE70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_10011813C()
{
  result = qword_1002157B8;
  if (!qword_1002157B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1002157B8);
  }

  return result;
}

uint64_t PegasusConfigURLProvider.cachedBagURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100046184(&qword_100218230, &unk_100199A00);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  static PegasusConfigContainerURLProvider.configFileName.getter();
  v6 = type metadata accessor for PegasusConfigURLProvider(0);
  sub_100118668(v1 + *(v6 + 20), v5);
  v7 = type metadata accessor for URL();
  if (sub_100008D0C(v5, 1, v7) == 1)
  {

    sub_1000982A0(v5);
    v8 = 1;
  }

  else
  {
    URL.appendingPathComponent(_:isDirectory:)();

    (*(*(v7 - 8) + 8))(v5, v7);
    v8 = 0;
  }

  return sub_1000051C0(a1, v8, 1, v7);
}

uint64_t PegasusConfigURLProvider.legacyCachedBagURL.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100046184(&qword_100218230, &unk_100199A00);
  __chkstk_darwin(v2 - 8);
  v4 = &v8 - v3;
  PegasusConfigURLProvider.parsecdAssetsDirectoryURL.getter(&v8 - v3);
  v5 = type metadata accessor for URL();
  if (sub_100008D0C(v4, 1, v5) == 1)
  {
    sub_1000982A0(v4);
    v6 = 1;
  }

  else
  {
    URL.appendingPathComponent(_:isDirectory:)();
    (*(*(v5 - 8) + 8))(v4, v5);
    v6 = 0;
  }

  return sub_1000051C0(a1, v6, 1, v5);
}

uint64_t PegasusConfigURLProvider.parsecdAssetsDirectoryURL.getter@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for URL();
  sub_100003BC8();
  v5 = v4;
  __chkstk_darwin(v6);
  v8 = &v25[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v11 = &v25[-v10];
  v13 = __chkstk_darwin(v12);
  v15 = &v25[-v14];
  v16 = *v1;
  v26 = 0;
  v17 = [v16 URLForDirectory:13 inDomain:1 appropriateForURL:0 create:0 error:{&v26, v13}];
  v18 = v26;
  if (v17)
  {
    v19 = v17;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v18;

    (*(v5 + 32))(v15, v11, v2);
    URL.appendingPathComponent(_:isDirectory:)();
    URL.standardizedFileURL.getter();
    v21 = *(v5 + 8);
    v21(v8, v2);
    v21(v15, v2);
    v22 = 0;
  }

  else
  {
    v23 = v26;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    v22 = 1;
  }

  return sub_10000447C(a1, v22);
}

unint64_t sub_100118610()
{
  result = qword_1002157B0;
  if (!qword_1002157B0)
  {
    type metadata accessor for URL();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002157B0);
  }

  return result;
}

uint64_t sub_100118668(uint64_t a1, uint64_t a2)
{
  v4 = sub_100046184(&qword_100218230, &unk_100199A00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_100118700(uint64_t a1)
{
  sub_10011813C();
  if (v1 <= 0x3F)
  {
    sub_1000487E0(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void *sub_100118784()
{
  v0 = sub_100046184(&qword_100219BD8, &unk_1001A0700);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v13[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v6 = &v13[-v5];
  swift_beginAccess();

  v14 = sub_1000ED158(v7);
  sub_100118EFC(&v14);

  v8 = v14;
  v9 = v14[2];
  if (v9)
  {
    v14 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v10 = v8 + ((*(v1 + 80) + 32) & ~*(v1 + 80));
    v11 = *(v1 + 72);
    do
    {
      sub_100118FB0(v10, v6);
      sub_1000F0978(v6, v3);
      sub_1000A6C2C(&v3[*(v0 + 48)]);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v10 += v11;
      --v9;
    }

    while (v9);

    return v14;
  }

  else
  {

    return _swiftEmptyArrayStorage;
  }
}

uint64_t sub_100118974(uint64_t a1, uint64_t a2)
{
  v23 = a2;
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v22 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v22 - v7;
  v9 = sub_100046184(&qword_100219BD8, &unk_1001A0700);
  v10 = v9 - 8;
  __chkstk_darwin(v9);
  v12 = (&v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v13);
  v15 = (&v22 - v14);
  sub_100118FB0(a1, &v22 - v14);

  v16 = *(v10 + 56);
  v17 = *(v4 + 16);
  v17(v8, v15 + v16, v3);
  sub_1000A6C2C(v15 + v16);
  sub_100118FB0(v23, v12);

  v18 = *(v10 + 56);
  v19 = v22;
  v17(v22, v12 + v18, v3);
  sub_1000A6C2C(v12 + v18);
  LOBYTE(v17) = static Date.< infix(_:_:)();
  v20 = *(v4 + 8);
  v20(v19, v3);
  v20(v8, v3);
  return v17 & 1;
}

uint64_t sub_100118BC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_100006174(a1);
  v4 = *(v2 + 24);
  if (!*(v4 + 16))
  {
    goto LABEL_5;
  }

  v5 = sub_1000BB9E0();
  if ((v6 & 1) == 0)
  {

LABEL_5:
    v12 = type metadata accessor for TopicCacheEntry(0);
    v10 = a2;
    v11 = 1;
    return sub_1000051C0(v10, v11, 1, v12);
  }

  v7 = v5;
  v8 = *(v4 + 56);
  v9 = type metadata accessor for TopicCacheEntry(0);
  sub_1000F0914(v8 + *(*(v9 - 8) + 72) * v7, a2);

  v10 = a2;
  v11 = 0;
  v12 = v9;
  return sub_1000051C0(v10, v11, 1, v12);
}

uint64_t sub_100118C9C(void *a1, uint64_t a2)
{
  v4 = sub_100046184(&qword_1002183B0, &qword_10019C758);
  __chkstk_darwin(v4 - 8);
  v6 = &v9 - v5;
  sub_1000F0914(a2, &v9 - v5);
  v7 = type metadata accessor for TopicCacheEntry(0);
  sub_1000051C0(v6, 0, 1, v7);
  sub_100003BE0();
  sub_1001152E8(v6, a1);
  return swift_endAccess();
}

uint64_t sub_100118D64(void *a1)
{
  v2 = sub_100046184(&qword_1002183B0, &qword_10019C758);
  __chkstk_darwin(v2 - 8);
  v4 = &v7 - v3;
  v5 = type metadata accessor for TopicCacheEntry(0);
  sub_1000051C0(v4, 1, 1, v5);
  sub_100003BE0();
  sub_1001152E8(v4, a1);
  return swift_endAccess();
}

uint64_t sub_100118E1C()
{
  sub_1000A6C88();
  type metadata accessor for TopicCacheEntry(0);
  sub_1000BCC0C();
  v1 = Dictionary.init(dictionaryLiteral:)();
  swift_beginAccess();
  *(v0 + 24) = v1;
}

uint64_t sub_100118EA0()
{

  return _swift_deallocClassInstance(v0, 32, 7);
}

void sub_100118EFC(size_t *a1)
{
  v2 = *(sub_100046184(&qword_100219BD8, &unk_1001A0700) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_100117B0C(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_100119020(v5);
  *a1 = v3;
}

uint64_t sub_100118FB0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100046184(&qword_100219BD8, &unk_1001A0700);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_100119020(uint64_t *a1)
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
        sub_100046184(&qword_100219BD8, &unk_1001A0700);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v6[2] = v5;
      }

      v7 = *(sub_100046184(&qword_100219BD8, &unk_1001A0700) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_100119550(v8, v9, a1, v4);
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
    sub_100119168(0, v2, 1, a1);
  }
}

void sub_100119168(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v61 = type metadata accessor for Date();
  v8 = *(v61 - 8);
  __chkstk_darwin(v61);
  v60 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v66 = &v46 - v11;
  v12 = sub_100046184(&qword_100219BD8, &unk_1001A0700);
  __chkstk_darwin(v12);
  v55 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v59 = (&v46 - v15);
  __chkstk_darwin(v16);
  v58 = (&v46 - v17);
  __chkstk_darwin(v18);
  v65 = &v46 - v19;
  __chkstk_darwin(v20);
  v64 = &v46 - v23;
  v48 = a2;
  if (a3 != a2)
  {
    v24 = v21;
    v25 = *a4;
    v26 = *(v22 + 72);
    v56 = (v8 + 8);
    v57 = (v8 + 16);
    v27 = v25 + v26 * (a3 - 1);
    v53 = -v26;
    v54 = v25;
    v28 = a1 - a3;
    v47 = v26;
    v29 = v25 + v26 * a3;
    v30 = v66;
    while (2)
    {
      v51 = v27;
      v52 = a3;
      v49 = v29;
      v50 = v28;
      v62 = v28;
      do
      {
        v31 = v64;
        sub_100118FB0(v29, v64);
        v32 = v65;
        sub_100118FB0(v27, v65);
        v33 = v31;
        v34 = v58;
        sub_100118FB0(v33, v58);

        v35 = *(v24 + 48);
        v63 = *v57;
        v36 = v61;
        v63(v66, v34 + v35, v61);
        sub_1000A6C2C(v34 + v35);
        v37 = v32;
        v38 = v59;
        sub_100118FB0(v37, v59);

        v39 = *(v24 + 48);
        v40 = v24;
        v41 = v60;
        v63(v60, v38 + v39, v36);
        sub_1000A6C2C(v38 + v39);
        LOBYTE(v39) = static Date.< infix(_:_:)();
        v42 = *v56;
        v43 = v41;
        v24 = v40;
        (*v56)(v43, v36);
        v42(v30, v36);
        sub_10011A790(v65);
        sub_10011A790(v64);
        if ((v39 & 1) == 0)
        {
          break;
        }

        if (!v54)
        {
          __break(1u);
          return;
        }

        v44 = v55;
        sub_1000F0978(v29, v55);
        swift_arrayInitWithTakeFrontToBack();
        sub_1000F0978(v44, v27);
        v27 += v53;
        v29 += v53;
      }

      while (!__CFADD__(v62++, 1));
      a3 = v52 + 1;
      v27 = v51 + v47;
      v28 = v50 - 1;
      v29 = v49 + v47;
      if (v52 + 1 != v48)
      {
        continue;
      }

      break;
    }
  }
}

void sub_100119550(unint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v144 = a1;
  v165 = type metadata accessor for Date();
  v6 = *(v165 - 8);
  __chkstk_darwin(v165);
  v164 = &v139 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v163 = &v139 - v9;
  v10 = sub_100046184(&qword_100219BD8, &unk_1001A0700);
  v152 = *(v10 - 8);
  __chkstk_darwin(v10);
  v147 = &v139 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v158 = &v139 - v13;
  __chkstk_darwin(v14);
  v162 = (&v139 - v15);
  __chkstk_darwin(v16);
  v161 = (&v139 - v17);
  __chkstk_darwin(v18);
  v170 = &v139 - v19;
  __chkstk_darwin(v20);
  v169 = &v139 - v21;
  __chkstk_darwin(v22);
  v141 = &v139 - v23;
  __chkstk_darwin(v24);
  v153 = a3;
  v27 = a3[1];
  if (v27 < 1)
  {
    v154 = _swiftEmptyArrayStorage;
LABEL_100:
    v170 = *v144;
    if (!v170)
    {
      goto LABEL_143;
    }

    v29 = v154;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_102;
    }

    goto LABEL_137;
  }

  v140 = &v139 - v26;
  v28 = 0;
  v159 = (v6 + 8);
  v160 = (v6 + 16);
  v154 = _swiftEmptyArrayStorage;
  v143 = a4;
  v29 = v25;
  v166 = v25;
  while (1)
  {
    v30 = v28++;
    if (v28 < v27)
    {
      v31 = *v153;
      v32 = *(v152 + 72);
      v33 = v28;
      v34 = (*v153 + v32 * v28);
      v35 = v140;
      sub_100118FB0(v34, v140);
      v36 = v141;
      sub_100118FB0(v31 + v32 * v30, v141);
      v37 = v155;
      LODWORD(v156) = sub_100118974(v35, v36);
      v155 = v37;
      if (v37)
      {
        sub_10011A790(v36);
        sub_10011A790(v35);
LABEL_112:

        return;
      }

      sub_10011A790(v36);
      sub_10011A790(v35);
      v142 = v30;
      v38 = v30 + 2;
      v39 = v31 + v32 * (v30 + 2);
      v28 = v33;
      v157 = v32;
      v151 = v27;
      while (1)
      {
        v40 = v38;
        v41 = v28 + 1;
        if (v41 >= v27)
        {
          break;
        }

        v42 = v169;
        v167 = v38;
        sub_100118FB0(v39, v169);
        v43 = v170;
        sub_100118FB0(v34, v170);
        v168 = v34;
        v44 = v161;
        sub_100118FB0(v42, v161);

        v45 = *(v29 + 12);
        v46 = *v160;
        v47 = v163;
        v48 = v165;
        (*v160)(v163, v44 + v45, v165);
        sub_1000A6C2C(v44 + v45);
        v49 = v162;
        sub_100118FB0(v43, v162);

        v50 = *(v166 + 12);
        v51 = v41;
        v52 = v164;
        v46(v164, v49 + v50, v48);
        v53 = v49 + v50;
        v54 = v168;
        sub_1000A6C2C(v53);
        LODWORD(v50) = static Date.< infix(_:_:)() & 1;
        v55 = *v159;
        v56 = v52;
        v28 = v51;
        v32 = v157;
        (*v159)(v56, v48);
        v57 = v47;
        v29 = v166;
        v58 = v48;
        v27 = v151;
        v55(v57, v58);
        sub_10011A790(v170);
        sub_10011A790(v169);
        v40 = v167;
        v39 += v32;
        v34 = &v54[v32];
        v38 = v167 + 1;
        if ((v156 & 1) != v50)
        {
          goto LABEL_10;
        }
      }

      v28 = v27;
LABEL_10:
      if ((v156 & 1) == 0)
      {
        goto LABEL_29;
      }

      v30 = v142;
      a4 = v143;
      if (v28 < v142)
      {
        goto LABEL_136;
      }

      if (v142 < v28)
      {
        if (v27 >= v40)
        {
          v59 = v40;
        }

        else
        {
          v59 = v27;
        }

        v60 = v32 * (v59 - 1);
        v61 = v32 * v59;
        v62 = v142 * v32;
        v63 = v28;
        do
        {
          if (v30 != --v63)
          {
            v64 = *v153;
            if (!*v153)
            {
              goto LABEL_141;
            }

            sub_1000F0978(v64 + v62, v147);
            v65 = v62 < v60 || v64 + v62 >= (v64 + v61);
            if (v65)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v62 != v60)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            sub_1000F0978(v147, v64 + v60);
            v32 = v157;
          }

          ++v30;
          v60 -= v32;
          v61 -= v32;
          v62 += v32;
        }

        while (v30 < v63);
LABEL_29:
        a4 = v143;
        v30 = v142;
      }
    }

    v66 = v153[1];
    if (v28 < v66)
    {
      if (__OFSUB__(v28, v30))
      {
        goto LABEL_133;
      }

      if (v28 - v30 < a4)
      {
        break;
      }
    }

LABEL_48:
    v85 = v154;
    if (v28 < v30)
    {
      goto LABEL_132;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_10006C888();
      v85 = v128;
    }

    v86 = *(v85 + 2);
    v87 = v86 + 1;
    if (v86 >= *(v85 + 3) >> 1)
    {
      sub_10006C888();
      v85 = v129;
    }

    *(v85 + 2) = v87;
    v88 = v85 + 32;
    v89 = &v85[16 * v86 + 32];
    *v89 = v30;
    v89[1] = v28;
    v168 = *v144;
    if (!v168)
    {
      goto LABEL_142;
    }

    v154 = v85;
    if (v86)
    {
      while (1)
      {
        v90 = v87 - 1;
        v91 = &v88[2 * v87 - 2];
        v92 = &v85[16 * v87];
        if (v87 >= 4)
        {
          break;
        }

        if (v87 == 3)
        {
          v93 = *(v85 + 4);
          v94 = *(v85 + 5);
          v103 = __OFSUB__(v94, v93);
          v95 = v94 - v93;
          v96 = v103;
LABEL_68:
          if (v96)
          {
            goto LABEL_119;
          }

          v108 = *v92;
          v107 = *(v92 + 1);
          v109 = __OFSUB__(v107, v108);
          v110 = v107 - v108;
          v111 = v109;
          if (v109)
          {
            goto LABEL_122;
          }

          v112 = v91[1];
          v113 = v112 - *v91;
          if (__OFSUB__(v112, *v91))
          {
            goto LABEL_125;
          }

          if (__OFADD__(v110, v113))
          {
            goto LABEL_127;
          }

          if (v110 + v113 >= v95)
          {
            if (v95 < v113)
            {
              v90 = v87 - 2;
            }

            goto LABEL_90;
          }

          goto LABEL_83;
        }

        if (v87 < 2)
        {
          goto LABEL_121;
        }

        v115 = *v92;
        v114 = *(v92 + 1);
        v103 = __OFSUB__(v114, v115);
        v110 = v114 - v115;
        v111 = v103;
LABEL_83:
        if (v111)
        {
          goto LABEL_124;
        }

        v117 = *v91;
        v116 = v91[1];
        v103 = __OFSUB__(v116, v117);
        v118 = v116 - v117;
        if (v103)
        {
          goto LABEL_126;
        }

        if (v118 < v110)
        {
          goto LABEL_97;
        }

LABEL_90:
        if (v90 - 1 >= v87)
        {
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
          goto LABEL_135;
        }

        if (!*v153)
        {
          goto LABEL_139;
        }

        v122 = &v88[2 * v90 - 2];
        v123 = *v122;
        v124 = &v88[2 * v90];
        v125 = *(v124 + 1);
        v126 = v155;
        sub_10011A0C4(*v153 + *(v152 + 72) * *v122, *v153 + *(v152 + 72) * *v124, *v153 + *(v152 + 72) * v125, v168);
        v155 = v126;
        if (v126)
        {
          goto LABEL_112;
        }

        if (v125 < v123)
        {
          goto LABEL_114;
        }

        v127 = *(v154 + 2);
        if (v90 > v127)
        {
          goto LABEL_115;
        }

        *v122 = v123;
        v122[1] = v125;
        if (v90 >= v127)
        {
          goto LABEL_116;
        }

        v87 = v127 - 1;
        sub_100117CA4(v124 + 16, v127 - 1 - v90, &v88[2 * v90]);
        v85 = v154;
        *(v154 + 2) = v127 - 1;
        if (v127 <= 2)
        {
          goto LABEL_97;
        }
      }

      v97 = &v88[2 * v87];
      v98 = *(v97 - 8);
      v99 = *(v97 - 7);
      v103 = __OFSUB__(v99, v98);
      v100 = v99 - v98;
      if (v103)
      {
        goto LABEL_117;
      }

      v102 = *(v97 - 6);
      v101 = *(v97 - 5);
      v103 = __OFSUB__(v101, v102);
      v95 = v101 - v102;
      v96 = v103;
      if (v103)
      {
        goto LABEL_118;
      }

      v104 = *(v92 + 1);
      v105 = v104 - *v92;
      if (__OFSUB__(v104, *v92))
      {
        goto LABEL_120;
      }

      v103 = __OFADD__(v95, v105);
      v106 = v95 + v105;
      if (v103)
      {
        goto LABEL_123;
      }

      if (v106 >= v100)
      {
        v120 = *v91;
        v119 = v91[1];
        v103 = __OFSUB__(v119, v120);
        v121 = v119 - v120;
        if (v103)
        {
          goto LABEL_131;
        }

        if (v95 < v121)
        {
          v90 = v87 - 2;
        }

        goto LABEL_90;
      }

      goto LABEL_68;
    }

LABEL_97:
    v27 = v153[1];
    a4 = v143;
    if (v28 >= v27)
    {
      goto LABEL_100;
    }
  }

  v67 = v30 + a4;
  if (__OFADD__(v30, a4))
  {
    goto LABEL_134;
  }

  if (v67 >= v66)
  {
    v67 = v153[1];
  }

  if (v67 < v30)
  {
LABEL_135:
    __break(1u);
LABEL_136:
    __break(1u);
LABEL_137:
    v29 = sub_10011775C(v29);
LABEL_102:
    v130 = v29;
    v132 = *(v29 + 2);
    v29 += 16;
    for (i = v132; i >= 2; *v29 = i)
    {
      v133 = v155;
      if (!*v153)
      {
        goto LABEL_140;
      }

      v134 = &v130[16 * i];
      v135 = *v134;
      v136 = &v29[16 * i];
      v137 = *(v136 + 1);
      sub_10011A0C4(*v153 + *(v152 + 72) * *v134, *v153 + *(v152 + 72) * *v136, *v153 + *(v152 + 72) * v137, v170);
      v155 = v133;
      if (v133)
      {
        break;
      }

      if (v137 < v135)
      {
        goto LABEL_128;
      }

      if (i - 2 >= *v29)
      {
        goto LABEL_129;
      }

      *v134 = v135;
      *(v134 + 1) = v137;
      v138 = *v29 - i;
      if (*v29 < i)
      {
        goto LABEL_130;
      }

      i = *v29 - 1;
      sub_100117CA4(v136 + 16, v138, v136);
    }

    goto LABEL_112;
  }

  if (v28 == v67)
  {
    goto LABEL_48;
  }

  v68 = *v153;
  v69 = *(v152 + 72);
  v70 = *v153 + v69 * (v28 - 1);
  v156 = -v69;
  v142 = v30;
  v71 = v30 - v28;
  v157 = v68;
  v145 = v69;
  v72 = v68 + v28 * v69;
  v146 = v67;
LABEL_39:
  v151 = v28;
  v148 = v72;
  v149 = v71;
  v150 = v70;
  v73 = v71;
  while (1)
  {
    v167 = v73;
    v74 = v169;
    sub_100118FB0(v72, v169);
    sub_100118FB0(v70, v170);
    v75 = v161;
    sub_100118FB0(v74, v161);

    v76 = *(v29 + 12);
    v168 = *v160;
    v77 = v163;
    v78 = v165;
    (v168)(v163, v75 + v76, v165);
    sub_1000A6C2C(v75 + v76);
    v79 = v162;
    sub_100118FB0(v170, v162);

    v80 = *(v29 + 12);
    v81 = v164;
    (v168)(v164, v79 + v80, v78);
    sub_1000A6C2C(v79 + v80);
    LOBYTE(v80) = static Date.< infix(_:_:)();
    v82 = *v159;
    (*v159)(v81, v78);
    v82(v77, v78);
    sub_10011A790(v170);
    sub_10011A790(v169);
    if ((v80 & 1) == 0)
    {
      v29 = v166;
LABEL_46:
      v28 = v151 + 1;
      v70 = v150 + v145;
      v71 = v149 - 1;
      v72 = v148 + v145;
      if (v151 + 1 == v146)
      {
        v28 = v146;
        v30 = v142;
        goto LABEL_48;
      }

      goto LABEL_39;
    }

    v83 = v167;
    if (!v157)
    {
      break;
    }

    v84 = v158;
    sub_1000F0978(v72, v158);
    v29 = v166;
    swift_arrayInitWithTakeFrontToBack();
    sub_1000F0978(v84, v70);
    v70 += v156;
    v72 += v156;
    v65 = __CFADD__(v83, 1);
    v73 = v83 + 1;
    if (v65)
    {
      goto LABEL_46;
    }
  }

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
}

void sub_10011A0C4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v86 = a4;
  v80 = type metadata accessor for Date();
  v7 = *(v80 - 8);
  __chkstk_darwin(v80);
  v81 = v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v79 = v68 - v10;
  v87 = sub_100046184(&qword_100219BD8, &unk_1001A0700);
  __chkstk_darwin(v87);
  v78 = (v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v12);
  v77 = (v68 - v13);
  __chkstk_darwin(v14);
  v76 = v68 - v15;
  __chkstk_darwin(v16);
  v83 = v68 - v17;
  v19 = *(v18 + 72);
  if (!v19)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return;
  }

  v20 = a2 - a1 == 0x8000000000000000 && v19 == -1;
  if (v20)
  {
    goto LABEL_61;
  }

  v21 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_62;
  }

  v23 = (a2 - a1) / v19;
  v90 = a1;
  v24 = v86;
  v89 = v86;
  v74 = (v7 + 8);
  v75 = (v7 + 16);
  v25 = v21 / v19;
  if (v23 >= v21 / v19)
  {
    sub_100115A90();
    v43 = v24 + v25 * v19;
    v44 = -v19;
    v45 = v43;
    v84 = a1;
    v70 = -v19;
    v46 = v80;
LABEL_36:
    v47 = a2 + v44;
    v48 = a3;
    v68[0] = v45;
    v85 = a2;
    v71 = a2 + v44;
    while (1)
    {
      if (v43 <= v24)
      {
        v90 = a2;
        goto LABEL_58;
      }

      if (a2 <= a1)
      {
        break;
      }

      v69 = v45;
      v82 = v48 + v44;
      v72 = v43 + v44;
      v73 = v48;
      v49 = v83;
      sub_100118FB0(v43 + v44, v83);
      v50 = v76;
      sub_100118FB0(v47, v76);
      v51 = v43;
      v52 = v77;
      sub_100118FB0(v49, v77);

      v53 = v87;
      v54 = *(v87 + 48);
      v55 = *v75;
      v56 = v79;
      (*v75)(v79, v52 + v54, v46);
      sub_1000A6C2C(v52 + v54);
      v57 = v78;
      sub_100118FB0(v50, v78);

      v58 = *(v53 + 48);
      v59 = v81;
      v55(v81, v57 + v58, v46);
      sub_1000A6C2C(v57 + v58);
      LOBYTE(v58) = static Date.< infix(_:_:)();
      v60 = *v74;
      (*v74)(v59, v46);
      v60(v56, v46);
      sub_10011A790(v50);
      sub_10011A790(v83);
      if (v58)
      {
        v43 = v51;
        v24 = v86;
        a3 = v82;
        if (v73 < v85 || v82 >= v85)
        {
          a2 = v71;
          swift_arrayInitWithTakeFrontToBack();
          v45 = v69;
          v44 = v70;
          a1 = v84;
        }

        else
        {
          v66 = v69;
          v44 = v70;
          v45 = v69;
          v67 = v71;
          a2 = v71;
          a1 = v84;
          if (v73 != v85)
          {
            swift_arrayInitWithTakeBackToFront();
            a2 = v67;
            v45 = v66;
          }
        }

        goto LABEL_36;
      }

      v61 = v82;
      v62 = v73 < v51 || v82 >= v51;
      v24 = v86;
      if (v62)
      {
        v63 = v72;
        swift_arrayInitWithTakeFrontToBack();
        v48 = v61;
        v43 = v63;
        v45 = v63;
        a1 = v84;
        a2 = v85;
        v44 = v70;
        v47 = v71;
      }

      else
      {
        v64 = v72;
        v45 = v72;
        v20 = v51 == v73;
        v48 = v82;
        v43 = v72;
        a1 = v84;
        a2 = v85;
        v44 = v70;
        v47 = v71;
        if (!v20)
        {
          swift_arrayInitWithTakeBackToFront();
          v48 = v61;
          v43 = v64;
          v45 = v64;
        }
      }
    }

    v90 = a2;
    v45 = v68[0];
LABEL_58:
    v88 = v45;
  }

  else
  {
    sub_100115A90();
    v72 = v19;
    v73 = v24 + v23 * v19;
    v88 = v73;
    v82 = a3;
    while (v24 < v73 && a2 < a3)
    {
      v84 = a1;
      v27 = v83;
      sub_100118FB0(a2, v83);
      v28 = v76;
      sub_100118FB0(v24, v76);
      v86 = v24;
      v29 = v77;
      sub_100118FB0(v27, v77);

      v30 = v87;
      v31 = *(v87 + 48);
      v85 = a2;
      v32 = *v75;
      v34 = v79;
      v33 = v80;
      (*v75)(v79, v29 + v31, v80);
      sub_1000A6C2C(v29 + v31);
      v35 = v78;
      sub_100118FB0(v28, v78);

      v36 = *(v30 + 48);
      v37 = v81;
      v32(v81, v35 + v36, v33);
      sub_1000A6C2C(v35 + v36);
      LOBYTE(v36) = static Date.< infix(_:_:)();
      v38 = *v74;
      (*v74)(v37, v33);
      v38(v34, v33);
      sub_10011A790(v28);
      sub_10011A790(v27);
      if (v36)
      {
        v39 = v72;
        v40 = v84;
        a2 = v85 + v72;
        v41 = v84 < v85 || v84 >= a2;
        v24 = v86;
        if (v41)
        {
          swift_arrayInitWithTakeFrontToBack();
          a3 = v82;
        }

        else
        {
          a3 = v82;
          if (v84 != v85)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      else
      {
        a2 = v85;
        v39 = v72;
        v24 = v86 + v72;
        v40 = v84;
        if (v84 < v86 || v84 >= v24)
        {
          swift_arrayInitWithTakeFrontToBack();
          a3 = v82;
        }

        else
        {
          a3 = v82;
          if (v84 != v86)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v89 = v24;
      }

      a1 = v40 + v39;
      v90 = a1;
    }
  }

  sub_100117788(&v90, &v89, &v88);
}

uint64_t sub_10011A790(uint64_t a1)
{
  v2 = sub_100046184(&qword_100219BD8, &unk_1001A0700);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10011A7F8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x7365756C6176 && a2 == 0xE600000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_10011A880@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10011A7F8(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_10011A8B8(uint64_t a1)
{
  v2 = sub_10011AC00();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10011A8F4(uint64_t a1)
{
  v2 = sub_10011AC00();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t EnumModel.values.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t EnumModel.nextAvailableValue.getter(uint64_t result)
{
  v1 = 0;
  v2 = 1;
  v3 = 1 << *(result + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(result + 64);
  v6 = (v3 + 63) >> 6;
  if (v5)
  {
    while (1)
    {
      v7 = v1;
LABEL_8:
      v8 = *(*(result + 56) + ((v7 << 8) | (4 * __clz(__rbit64(v5)))));
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        break;
      }

      v5 &= v5 - 1;
      if (v10 <= v2)
      {
        v2 = v2;
      }

      else
      {
        v2 = v10;
      }

      v1 = v7;
      if (!v5)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v7 = v1 + 1;
      if (__OFADD__(v1, 1))
      {
        break;
      }

      if (v7 >= v6)
      {
        return v2;
      }

      v5 = *(result + 64 + 8 * v7);
      ++v1;
      if (v5)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void *EnumModel.init(from:)(void *a1)
{
  sub_100046184(&qword_10021BFE8, &qword_1001A08C8);
  sub_100003650();
  __chkstk_darwin(v3);
  v4 = sub_100007534(a1, a1[3]);
  sub_10011AC00();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_100007378(a1);
  }

  else
  {
    sub_100046184(&qword_10021BFF8, &qword_1001A08D0);
    sub_10011ADD0(&qword_10021C000, &protocol witness table for String, &protocol witness table for Int32, &protocol conformance descriptor for <> [A : B]);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v4 = v8;
    if (!v8)
    {
      v4 = Dictionary.init(dictionaryLiteral:)();
    }

    v6 = sub_100008AD8();
    v7(v6);
    sub_100007378(a1);
  }

  return v4;
}

unint64_t sub_10011AC00()
{
  result = qword_10021BFF0;
  if (!qword_10021BFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021BFF0);
  }

  return result;
}

uint64_t EnumModel.encode(to:)(void *a1, uint64_t a2)
{
  sub_100046184(&qword_10021C008, &qword_1001A08D8);
  sub_100003650();
  __chkstk_darwin(v4);
  sub_100007534(a1, a1[3]);
  sub_10011AC00();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (*(a2 + 16))
  {
    sub_100046184(&qword_10021BFF8, &qword_1001A08D0);
    sub_10011ADD0(&qword_10021C010, &protocol witness table for String, &protocol witness table for Int32, &protocol conformance descriptor for <> [A : B]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  v5 = sub_100008AD8();
  return v6(v5);
}

uint64_t sub_10011ADD0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1000461CC(&qword_10021BFF8, &qword_1001A08D0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10011AE44(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = (*(v3 + 48) + 16 * v12);
    v14 = *v13;
    v15 = v13[1];
    v16 = *(*(v3 + 56) + 4 * v12);

    v17 = sub_100005B74(v14, v15);
    v19 = v18;

    if ((v19 & 1) == 0 || *(*(a2 + 56) + 4 * v17) != v16)
    {
      return 0;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

void sub_10011AF78(void *a1, void *a2)
{
  if (a1 == a2)
  {
    return;
  }

  v2 = a2;
  if (a1[2] != a2[2])
  {
    return;
  }

  v3 = 0;
  v4 = a1 + 8;
  sub_100004154();
  v8 = v7 & v6;
  v9 = (v5 + 63) >> 6;
  while (2)
  {
    while (2)
    {
      if (v8)
      {
        sub_100006BD4();
        v329 = v11;
        goto LABEL_11;
      }

      v12 = v3;
      do
      {
        v3 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          __break(1u);
LABEL_157:
          sub_10011CE88(v5, v314, 2);
          sub_10000AF40(v301, v223, v224, v225, v226, v227, v228, v229, v286, v288);
          sub_1000067EC();
          sub_10011CE88(v230, v231, v232);
          sub_10000CA54();
          sub_10011CE88(v233, v234, v235);
          v236 = sub_100011AA8();
          sub_10011CE88(v236, v237, v238);
          sub_10000E22C();
          sub_10011CE88(v239, v240, v241);
          sub_10011CE88(v330, v331, 2);
          v242 = sub_1000099C4();
          v244 = sub_10000F2A4(v242, v243, 2);
          sub_10011CE88(v244, v308, 2);
          v217 = v294;
          v218 = v287;
          goto LABEL_168;
        }

        if (v3 >= v9)
        {
          return;
        }

        v5 = v4[v3];
        ++v12;
      }

      while (!v5);
      sub_100003C00();
      v329 = v14 & v13;
LABEL_11:
      v15 = v10 | (v3 << 6);
      v16 = (a1[6] + 16 * v15);
      v17 = *v16;
      v18 = v16[1];
      v19 = a1[7] + 24 * v15;
      v20 = *v19;
      v21 = *(v19 + 8);
      v22 = *(v19 + 16);

      v330 = v20;
      v331 = v21;
      sub_10011CE44(v20, v21, v22);
      v23 = sub_100005B74(v17, v18);
      LOBYTE(v21) = v24;

      if ((v21 & 1) == 0)
      {
        v217 = v20;
        v218 = v331;
        goto LABEL_153;
      }

      v25 = v2[7] + 24 * v23;
      v332 = *v25;
      v328 = *(v25 + 8);
      v26 = v20;
      switch(*(v25 + 16))
      {
        case 1:
          if (v22 != 1)
          {
            goto LABEL_152;
          }

          if (v332 == v20 && v328 == v331)
          {
            v33 = sub_10000AC38();
            v35 = 1;
            goto LABEL_32;
          }

          sub_1000099C4();
          LOBYTE(v28) = _stringCompareWithSmolCheck(_:_:expecting:)();
          v29 = sub_10000AC38();
          v31 = 1;
          goto LABEL_29;
        case 2:
          if (v22 != 2)
          {
            goto LABEL_152;
          }

          v32 = v332[2];
          if (v32 != v20[2])
          {
            v217 = sub_10000AC38();
            goto LABEL_168;
          }

          if (!v32 || v332 == v20)
          {
            v33 = sub_10000AC38();
            goto LABEL_20;
          }

          v324 = v20 + 4;

          v41 = 0;
          v318 = v32;
          v321 = v2;
          break;
        case 3:
          if (v22 != 3)
          {
            goto LABEL_152;
          }

          sub_10011AF78(v36, v20);
          LOBYTE(v28) = v37;
          v38 = sub_10000AC38();
          sub_10011CE88(v38, v39, 3);
          v29 = v332;
          v30 = v328;
          v31 = 3;
          goto LABEL_29;
        default:
          if (!v22)
          {
            sub_10000EA9C();
            v27 = v332;
            v28 = static NSObject.== infix(_:_:)();
            sub_10011CE88(v20, v331, 0);
            v29 = v332;
            v30 = v328;
            v31 = 0;
LABEL_29:
            sub_10011CE88(v29, v30, v31);
            v8 = v329;
            if ((v28 & 1) == 0)
            {
              return;
            }

            continue;
          }

LABEL_152:
          v217 = sub_10000AC38();
LABEL_153:
          v219 = v22;
          goto LABEL_169;
      }

      break;
    }

LABEL_34:
    if (v41 >= v332[2])
    {
      __break(1u);
LABEL_172:
      __break(1u);
LABEL_173:
      __break(1u);
LABEL_174:
      __break(1u);
LABEL_175:
      __break(1u);
LABEL_176:
      __break(1u);
LABEL_177:
      __break(1u);
LABEL_178:
      __break(1u);
LABEL_179:
      __break(1u);
LABEL_180:
      __break(1u);
      return;
    }

    if (v41 >= v26[2])
    {
      goto LABEL_172;
    }

    sub_10000B10C();
    v44 = &v332[v43 + 4];
    v45 = *v44;
    v46 = *(v44 + 16);
    v326 = *(v44 + 8);
    v327 = *(v324 + v42);
    v325 = *(v324 + v42 + 8);
    v47 = *(v324 + v42 + 16);
    switch(v46)
    {
      case 1:
        if (v47 == 1)
        {
          if (v45 == v327 && v326 == v325)
          {
            goto LABEL_148;
          }

          v213 = v41;
          v214 = _stringCompareWithSmolCheck(_:_:expecting:)();
          v41 = v213;
          if (v214)
          {
            goto LABEL_148;
          }
        }

        goto LABEL_167;
      case 2:
        if (v47 != 2)
        {
          goto LABEL_167;
        }

        v52 = v45[2];
        if (v52 != v327[2])
        {
          goto LABEL_167;
        }

        if (v52)
        {
          v53 = v45 == v327;
        }

        else
        {
          v53 = 1;
        }

        if (v53)
        {
          goto LABEL_148;
        }

        v323 = v41;
        v316 = v45 + 4;
        v315 = v327 + 4;
        v317 = v45;
        sub_10011CE44(v327, v325, 2);
        sub_10000E22C();
        sub_10011CE44(v54, v55, v56);
        v57 = v45;
        v58 = 0;
        v309 = v52;
        break;
      case 3:
        if (v47 != 3)
        {
          goto LABEL_167;
        }

        v322 = v41;
        sub_10011CE44(v327, v325, 3);
        sub_10011CE44(v45, v326, 3);
        sub_10011AF78(v45, v327);
        v48 = v211;
        v32 = v318;
        sub_10011CE88(v327, v325, 3);
        v49 = v45;
        v50 = v326;
        v51 = 3;
        goto LABEL_140;
      default:
        if (*(v324 + v42 + 16))
        {
          goto LABEL_167;
        }

        v322 = v41;
        sub_10000EA9C();
        sub_10011CE44(v327, v325, 0);
        sub_10011CE44(v45, v326, 0);
        sub_100005A8C();
        v48 = static NSObject.== infix(_:_:)();
        sub_10011CE88(v327, v325, 0);
        v49 = v45;
        v50 = v326;
        v26 = v330;
        v51 = 0;
LABEL_140:
        sub_10011CE88(v49, v50, v51);
        v41 = v322;
        if ((v48 & 1) == 0)
        {
          goto LABEL_167;
        }

        goto LABEL_148;
    }

LABEL_46:
    if (v58 >= v57[2])
    {
      goto LABEL_173;
    }

    if (v58 >= v327[2])
    {
      goto LABEL_174;
    }

    ++v58;
    sub_10000B10C();
    v61 = &v316[v60];
    v62 = *v61;
    v320 = v61[1];
    v63 = *(v61 + 16);
    v64 = *(v315 + v59);
    v319 = *(v315 + v59 + 8);
    v65 = *(v315 + v59 + 16);
    switch(v63)
    {
      case 1:
        if (v65 == 1)
        {
          if (v62 == v64 && v320 == v319)
          {
            goto LABEL_136;
          }

          v204 = _stringCompareWithSmolCheck(_:_:expecting:)();
          v57 = v317;
          if (v204)
          {
            goto LABEL_136;
          }
        }

        goto LABEL_155;
      case 2:
        if (v65 != 2)
        {
          goto LABEL_165;
        }

        v70 = v62[2];
        if (v70 != v64[2])
        {
          goto LABEL_165;
        }

        if (v70)
        {
          v71 = v62 == v64;
        }

        else
        {
          v71 = 1;
        }

        v57 = v317;
        if (v71)
        {
          goto LABEL_136;
        }

        v289 = v58;
        v72 = v62 + 4;
        v307 = v64 + 4;
        v310 = v64;
        sub_1000067EC();
        v302 = v73;
        sub_10011CE44(v74, v75, v76);
        sub_10000CA54();
        sub_10011CE44(v77, v78, v79);
        v80 = 0;
        v311 = v62;
        v297 = v62 + 4;
        break;
      case 3:
        if (v65 != 3)
        {
          goto LABEL_165;
        }

        v197 = *(v315 + v59);
        sub_10011CE44(v64, v319, 3);
        sub_10011CE44(v62, v320, 3);
        sub_10011AF78(v62, v197);
        v199 = v198;
        v200 = v197;
        v52 = v309;
        sub_10011CE88(v200, v319, 3);
        v201 = sub_100007878();
        sub_10011CE88(v201, v202, 3);
        v57 = v317;
        if ((v199 & 1) == 0)
        {
          goto LABEL_155;
        }

        goto LABEL_136;
      default:
        if (*(v315 + v59 + 16))
        {
          goto LABEL_165;
        }

        v66 = *(v315 + v59);
        sub_10000EA9C();
        sub_10011CE44(v66, v319, 0);
        sub_10011CE44(v62, v320, 0);
        v67 = static NSObject.== infix(_:_:)();
        v68 = v66;
        v52 = v309;
        v69 = sub_10000F2A4(v68, v319, 0);
        sub_10011CE88(v69, v320, 0);
        v57 = v317;
        if (v67)
        {
          goto LABEL_136;
        }

LABEL_155:
        v220 = sub_100011AA8();
        sub_10000F2A4(v220, v221, v222);
        goto LABEL_166;
    }

LABEL_59:
    if (v80 >= v62[2])
    {
      goto LABEL_175;
    }

    if (v80 >= v310[2])
    {
      goto LABEL_176;
    }

    sub_10000B10C();
    v84 = &v72[v83];
    v85 = *v84;
    v86 = v84[1];
    v87 = *(v84 + 16);
    v88 = *(v307 + v81);
    v314 = *(v307 + v81 + 8);
    v89 = *(v307 + v81 + 16);
    switch(v87)
    {
      case 1:
        if (v89 != 1)
        {
          goto LABEL_163;
        }

        if (v85 == v88 && v86 == v314)
        {
          goto LABEL_125;
        }

        v189 = v80;
        v190 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v80 = v189;
        v82 = v302;
        if (v190)
        {
          goto LABEL_125;
        }

        goto LABEL_160;
      case 2:
        if (v89 != 2)
        {
          goto LABEL_163;
        }

        v95 = v85[2];
        if (v95 != v88[2])
        {
          goto LABEL_163;
        }

        if (v95)
        {
          v96 = v85 == v88;
        }

        else
        {
          v96 = 1;
        }

        if (v96)
        {
          goto LABEL_125;
        }

        v304 = v80;
        v306 = v88;
        v295 = v88 + 4;
        v296 = v85 + 4;
        sub_100005674();
        v301 = v97;
        v293 = v98;
        sub_10011CE44(v99, v100, v101);
        v288 = v86;
        sub_10011CE44(v301, v86, 2);
        sub_10000EC3C();
        v313 = 0;
        break;
      case 3:
        if (v89 != 3)
        {
          goto LABEL_163;
        }

        v180 = *(v307 + v81);
        v181 = v85;
        v305 = v80;
        sub_10011CE44(v88, v314, 3);
        v182 = sub_10000DF00();
        sub_10011CE44(v182, v183, 3);
        sub_10011AF78(v181, v180);
        v185 = v184;
        sub_10011CE88(v180, v314, 3);
        v186 = sub_10000DF00();
        v72 = v297;
        sub_10011CE88(v186, v187, 3);
        v82 = v302;
        v80 = v305;
        if ((v185 & 1) == 0)
        {
          goto LABEL_160;
        }

        goto LABEL_125;
      default:
        if (*(v307 + v81 + 16))
        {
          goto LABEL_163;
        }

        v303 = v80;
        v90 = *(v307 + v81);
        sub_10000EA9C();
        sub_10011CE44(v90, v314, 0);
        v91 = sub_10000DF00();
        sub_10011CE44(v91, v92, 0);
        v312 = static NSObject.== infix(_:_:)();
        sub_10011CE88(v90, v314, 0);
        v93 = sub_10000DF00();
        v72 = v297;
        sub_10011CE88(v93, v94, 0);
        v82 = v302;
        v80 = v303;
        if ((v312 & 1) == 0)
        {
          goto LABEL_160;
        }

        goto LABEL_125;
    }

LABEL_72:
    if (v313 >= v86[2])
    {
      goto LABEL_177;
    }

    if (v313 >= v306[2])
    {
      goto LABEL_178;
    }

    ++v313;
    sub_10000B10C();
    v105 = &v296[v104];
    v107 = *v105;
    v106 = v105[1];
    v108 = *(v105 + 16);
    v109 = *(v295 + v102);
    v308 = *(v295 + v102 + 8);
    v110 = *(v295 + v102 + 16);
    switch(v108)
    {
      case 1:
        if (v110 != 1)
        {
          sub_100005674();
          sub_10011CE88(v269, v270, v271);
          v255 = v86;
          goto LABEL_162;
        }

        if (v107 != v109 || v106 != v308)
        {
          _stringCompareWithSmolCheck(_:_:expecting:)();
          sub_10000EC3C();
          if ((v169 & 1) == 0)
          {
            goto LABEL_159;
          }
        }

        goto LABEL_114;
      case 2:
        if (v110 != 2)
        {
          goto LABEL_158;
        }

        v115 = v107[2];
        if (v115 != v109[2])
        {
          goto LABEL_158;
        }

        if (v115)
        {
          v116 = v107 == v109;
        }

        else
        {
          v116 = 1;
        }

        v86 = v301;
        if (v116)
        {
          goto LABEL_114;
        }

        v117 = v106;
        v292 = v107[2];
        v294 = v107;
        sub_10011CE44(v109, v308, 2);
        v286 = v117;
        sub_10011CE44(v107, v117, 2);
        v119 = v292;
        v118 = v109;
        v120 = v107;
        v121 = 0;
        v122 = v109 + 6;
        v123 = v107 + 6;
        v5 = v306;
        while (2)
        {
          if (v121 >= v120[2])
          {
            goto LABEL_179;
          }

          if (v121 >= v118[2])
          {
            goto LABEL_180;
          }

          ++v121;
          v125 = *(v123 - 2);
          v124 = *(v123 - 1);
          v126 = *v122;
          switch(*v123)
          {
            case 1:
              if (v126 != 1)
              {
                goto LABEL_157;
              }

              if (v125 != *(v122 - 2) || v124 != *(v122 - 1))
              {
                sub_100007CC8();
                v159 = v158;
                v160 = _stringCompareWithSmolCheck(_:_:expecting:)();
                v121 = v159;
                v119 = v292;
                v118 = v109;
                v5 = v306;
                if ((v160 & 1) == 0)
                {
                  goto LABEL_157;
                }
              }

              goto LABEL_103;
            case 2:
              if (v126 != 2)
              {
                goto LABEL_157;
              }

              v134 = sub_100007878();
              v300 = v135;
              sub_10011CE44(v134, v136, 2);
              v137 = sub_100007CC8();
              sub_10011CE44(v137, v138, 2);
              v139 = sub_10000DF00();
              sub_1001257E0(v139, v140);
              v290 = v141;
              v142 = sub_100007878();
              sub_10011CE88(v142, v143, 2);
              v144 = sub_100007CC8();
              v146 = 2;
              goto LABEL_95;
            case 3:
              if (v126 != 3)
              {
                goto LABEL_157;
              }

              v147 = sub_100007878();
              v300 = v148;
              sub_10011CE44(v147, v149, 3);
              v150 = sub_100007CC8();
              sub_10011CE44(v150, v151, 3);
              v152 = sub_10000DF00();
              sub_10011AF78(v152, v153);
              v290 = v154;
              v155 = sub_100007878();
              sub_10011CE88(v155, v156, 3);
              v144 = sub_100007CC8();
              v146 = 3;
LABEL_95:
              sub_10011CE88(v144, v145, v146);
              v121 = v300;
              v119 = v292;
              v118 = v109;
              v5 = v306;
              if ((v290 & 1) == 0)
              {
                goto LABEL_157;
              }

              goto LABEL_103;
            default:
              if (*v122)
              {
                goto LABEL_157;
              }

              v299 = v121;
              sub_10000EA9C();
              v291 = v124;
              v127 = sub_100007878();
              sub_10011CE44(v127, v128, 0);
              v129 = sub_100007CC8();
              sub_10011CE44(v129, v130, 0);
              sub_10000DF00();
              v131 = static NSObject.== infix(_:_:)();
              v132 = sub_100007878();
              sub_10011CE88(v132, v133, 0);
              sub_10011CE88(v125, v291, 0);
              v121 = v299;
              v119 = v292;
              v118 = v109;
              v5 = v306;
              if ((v131 & 1) == 0)
              {
                goto LABEL_157;
              }

LABEL_103:
              v122 += 3;
              v123 += 24;
              v120 = v107;
              if (v119 != v121)
              {
                continue;
              }

              v161 = sub_10000F2A4(v118, v308, 2);
              sub_10011CE88(v161, v286, 2);
              v26 = v330;
              v86 = v301;
              v103 = v293;
              break;
          }

          goto LABEL_114;
        }

      case 3:
        if (v110 != 3)
        {
          goto LABEL_158;
        }

        v86 = v106;
        sub_10011CE44(v109, v308, 3);
        v162 = sub_100005A8C();
        sub_10011CE44(v162, v163, 3);
        sub_10011AF78(v107, v109);
        v165 = v164;
        sub_10011CE88(v109, v308, 3);
        v166 = sub_100005A8C();
        sub_10011CE88(v166, v167, 3);
        sub_10000EC3C();
        if ((v165 & 1) == 0)
        {
          goto LABEL_159;
        }

        goto LABEL_114;
      default:
        if (!*(v295 + v102 + 16))
        {
          v86 = v106;
          sub_10000EA9C();
          sub_10011CE44(v109, v308, 0);
          v111 = sub_100005A8C();
          sub_10011CE44(v111, v112, 0);
          v298 = static NSObject.== infix(_:_:)();
          sub_10011CE88(v109, v308, 0);
          v113 = sub_100005A8C();
          sub_10011CE88(v113, v114, 0);
          sub_10000EC3C();
          if ((v298 & 1) == 0)
          {
LABEL_159:
            sub_100005674();
            sub_10011CE88(v256, v257, v258);
            sub_10000AF40(v86, v259, v260, v261, v262, v263, v264, v265, v286, v288);
LABEL_160:
            sub_1000067EC();
            sub_10011CE88(v266, v267, v268);
            goto LABEL_164;
          }

LABEL_114:
          if (v313 == v103)
          {
            sub_100005674();
            sub_10011CE88(v170, v171, v172);
            sub_10000AF40(v86, v173, v174, v175, v176, v177, v178, v179, v286, v288);
            v82 = v302;
            v80 = v304;
            v72 = v297;
LABEL_125:
            v62 = v311;
            if (v80 == v82)
            {
              sub_1000067EC();
              sub_10000F2A4(v191, v192, v193);
              sub_10000CA54();
              sub_10011CE88(v194, v195, v196);
              v57 = v317;
              v58 = v289;
LABEL_136:
              v32 = v318;
              if (v58 == v52)
              {
                v205 = sub_100011AA8();
                sub_10000F2A4(v205, v206, v207);
                sub_10000E22C();
                sub_10011CE88(v208, v209, v210);
                v41 = v323;
LABEL_148:
                v2 = v321;
                if (v41 == v32)
                {
                  v215 = sub_10000AC38();
                  sub_10011CE88(v215, v216, 2);
                  v33 = sub_1000099C4();
LABEL_20:
                  v35 = 2;
LABEL_32:
                  sub_10011CE88(v33, v34, v35);
                  v8 = v329;
                  continue;
                }

                goto LABEL_34;
              }

              goto LABEL_46;
            }

            goto LABEL_59;
          }

          goto LABEL_72;
        }

LABEL_158:
        sub_100005674();
        sub_10011CE88(v245, v246, v247);
        v255 = v301;
LABEL_162:
        sub_10000AF40(v255, v248, v249, v250, v251, v252, v253, v254, v286, v288);
LABEL_163:
        sub_1000067EC();
        sub_10000F2A4(v272, v273, v274);
LABEL_164:
        sub_10000CA54();
        sub_10011CE88(v275, v276, v277);
LABEL_165:
        v278 = sub_100011AA8();
        sub_10011CE88(v278, v279, v280);
LABEL_166:
        sub_10000E22C();
        sub_10011CE88(v281, v282, v283);
LABEL_167:
        v284 = sub_10000AC38();
        sub_10011CE88(v284, v285, 2);
        v217 = sub_1000099C4();
LABEL_168:
        v219 = 2;
LABEL_169:
        sub_10011CE88(v217, v218, v219);
        return;
    }
  }
}

void sub_10011BE00(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sub_10000F634();
    if (v35)
    {
      v4 = 0;
      v5 = v3 + 64;
      sub_100004154();
      v8 = v7 & v6;
      v10 = (v9 + 63) >> 6;
      while (v8)
      {
        sub_100006BD4();
        v42 = v13;
LABEL_12:
        v17 = v12 | (v4 << 6);
        v18 = (*(v11 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v11 + 56) + 40 * v17);
        v22 = *v21;
        v24 = *(v21 + 1);
        v23 = *(v21 + 2);
        v43 = *(v21 + 3);
        v41 = v21[32];

        if (!v19)
        {
          return;
        }

        v38 = v24;
        v25 = sub_100005B74(v20, v19);
        v27 = v26;

        if ((v27 & 1) == 0)
        {
          goto LABEL_58;
        }

        v28 = *(a2 + 56) + 40 * v25;
        v30 = *(v28 + 8);
        v29 = *(v28 + 16);
        v40 = *(v28 + 24);
        v39 = *(v28 + 32);
        v31 = 0xE300000000000000;
        v32 = 7630441;
        switch(*v28)
        {
          case 1:
            v31 = 0xE500000000000000;
            v32 = 0x3436746E69;
            break;
          case 2:
            v31 = 0xE400000000000000;
            v32 = 1953393013;
            break;
          case 3:
            v31 = 0xE600000000000000;
            v32 = 0x3436746E6975;
            break;
          case 4:
            v31 = 0xE500000000000000;
            v32 = 0x74616F6C66;
            break;
          case 5:
            v31 = 0xE600000000000000;
            v32 = 0x656C62756F64;
            break;
          case 6:
            v31 = 0xE400000000000000;
            v32 = 1819242338;
            break;
          case 7:
            v31 = 0xE400000000000000;
            v32 = 1836412517;
            break;
          case 8:
            v31 = 0xE400000000000000;
            v32 = 1635017060;
            break;
          case 9:
            v31 = 0xE600000000000000;
            v32 = 0x676E69727473;
            break;
          case 0xA:
            v31 = 0xE600000000000000;
            v32 = 0x616D65686373;
            break;
          default:
            break;
        }

        v33 = 0xE300000000000000;
        v34 = 7630441;
        switch(v22)
        {
          case 1:
            v33 = 0xE500000000000000;
            v34 = 0x3436746E69;
            break;
          case 2:
            v33 = 0xE400000000000000;
            v34 = 1953393013;
            break;
          case 3:
            v33 = 0xE600000000000000;
            v34 = 0x3436746E6975;
            break;
          case 4:
            v33 = 0xE500000000000000;
            v34 = 0x74616F6C66;
            break;
          case 5:
            v33 = 0xE600000000000000;
            v34 = 0x656C62756F64;
            break;
          case 6:
            v33 = 0xE400000000000000;
            v34 = 1819242338;
            break;
          case 7:
            v33 = 0xE400000000000000;
            v34 = 1836412517;
            break;
          case 8:
            v33 = 0xE400000000000000;
            v34 = 1635017060;
            break;
          case 9:
            v33 = 0xE600000000000000;
            v34 = 0x676E69727473;
            break;
          case 10:
            v33 = 0xE600000000000000;
            v34 = 0x616D65686373;
            break;
          default:
            break;
        }

        v35 = v32 == v34 && v31 == v33;
        if (v35)
        {
        }

        else
        {
          v36 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v36 & 1) == 0)
          {
            goto LABEL_57;
          }
        }

        if (v29)
        {
          if (!v23)
          {
            goto LABEL_58;
          }

          v37 = v30 == v38 && v29 == v23;
          if (!v37 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
LABEL_57:

LABEL_58:

            return;
          }
        }

        else if (v23)
        {
          goto LABEL_58;
        }

        if (v40 == v43)
        {
          v8 = v42;
          if (v41 == v39)
          {
            continue;
          }
        }

        return;
      }

      v14 = v4;
      while (1)
      {
        v4 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v4 >= v10)
        {
          return;
        }

        ++v14;
        if (*(v5 + 8 * v4))
        {
          sub_100003C00();
          v42 = v16 & v15;
          goto LABEL_12;
        }
      }

      __break(1u);
    }
  }
}

void _s11Schematizer10OneOfModelV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sub_10000F634();
    if (v4)
    {
      v5 = 0;
      sub_100004154();
      v8 = v7 & v6;
      v10 = (v9 + 63) >> 6;
      while (v8)
      {
        v11 = __clz(__rbit64(v8));
        v8 &= v8 - 1;
LABEL_12:
        v15 = v11 | (v5 << 6);
        v16 = (*(a1 + 48) + 16 * v15);
        v17 = *v16;
        v18 = v16[1];
        v19 = *(*(a1 + 56) + 8 * v15);

        v20 = sub_100005B74(v17, v18);
        v22 = v21;

        if ((v22 & 1) == 0 || *(*(a2 + 56) + 8 * v20) != v19)
        {
          return;
        }
      }

      v12 = v5;
      while (1)
      {
        v5 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v5 >= v10)
        {
          return;
        }

        ++v12;
        if (*(a1 + 64 + 8 * v5))
        {
          sub_100003C00();
          v8 = v14 & v13;
          goto LABEL_12;
        }
      }

      __break(1u);
    }
  }
}

void sub_10011C340(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v2 = a2;
    sub_10000F634();
    if (v4)
    {
      v5 = 0;
      v6 = v3 + 64;
      sub_100004154();
      v9 = v8 & v7;
      v11 = (v10 + 63) >> 6;
      while (v9)
      {
        sub_100006BD4();
        v39 = v15;
LABEL_12:
        v19 = v13 | (v5 << 6);
        v20 = (*(v12 + 48) + 16 * v19);
        v21 = *v20;
        v22 = v20[1];
        v23 = *(v12 + 56) + v19 * v14;
        v24 = *v23;
        v25 = *(v23 + 8);
        v26 = *(v23 + 16);

        v27 = sub_100005B74(v21, v22);
        v28 = v2;
        v30 = v29;

        if ((v30 & 1) == 0)
        {
          goto LABEL_19;
        }

        v2 = v28;
        v31 = *(v28 + 56) + 24 * v27;
        v32 = *v31;
        v33 = *(v31 + 8);
        v34 = *(v31 + 16);

        sub_10011AF78(v32, v24);
        if ((v35 & 1) == 0 || (sub_10011BE00(v33, v25), (v36 & 1) == 0))
        {

LABEL_19:

          return;
        }

        sub_10011C570(v34, v26, _s11Schematizer10OneOfModelV23__derived_struct_equalsySbAC_ACtFZ_0);
        v38 = v37;

        v9 = v39;
        if ((v38 & 1) == 0)
        {
          return;
        }
      }

      v16 = v5;
      while (1)
      {
        v5 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          break;
        }

        if (v5 >= v11)
        {
          return;
        }

        ++v16;
        if (*(v6 + 8 * v5))
        {
          sub_100003C00();
          v39 = v18 & v17;
          goto LABEL_12;
        }
      }

      __break(1u);
    }
  }
}

void sub_10011C570(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (a1 != a2)
  {
    sub_10000F634();
    if (v4)
    {
      v5 = 0;
      sub_100004154();
      v8 = v7 & v6;
      v10 = (v9 + 63) >> 6;
      while (v8)
      {
        v11 = __clz(__rbit64(v8));
        v8 &= v8 - 1;
LABEL_12:
        v15 = v11 | (v5 << 6);
        v16 = (*(a1 + 48) + 16 * v15);
        v17 = *v16;
        v18 = v16[1];
        v19 = *(*(a1 + 56) + 8 * v15);

        sub_100005B74(v17, v18);
        v21 = v20;

        if ((v21 & 1) == 0)
        {

          return;
        }

        v23 = a3(v22, v19);

        if ((v23 & 1) == 0)
        {
          return;
        }
      }

      v12 = v5;
      while (1)
      {
        v5 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v5 >= v10)
        {
          return;
        }

        ++v12;
        if (*(a1 + 64 + 8 * v5))
        {
          sub_100003C00();
          v8 = v14 & v13;
          goto LABEL_12;
        }
      }

      __break(1u);
    }
  }
}

void *sub_10011C6C8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = EnumModel.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t EnumModel.init(_:)(void *a1)
{
  v9 = Dictionary.init(dictionaryLiteral:)();
  v3 = a1[3];
  v4 = a1[4];
  sub_100007534(a1, v3);
  v5 = (*(v4 + 16))(v3, v4);
  v8[2] = &v9;
  v8[3] = a1;
  sub_10011C8EC(sub_10011C8D0, v8, v5);

  v6 = v9;
  if (v1)
  {
  }

  sub_100007378(a1);
  return v6;
}

uint64_t sub_10011C80C(unsigned int *a1, uint64_t *a2, void *a3)
{
  v5 = *a1;
  v6 = a3[3];
  v7 = a3[4];
  sub_100007534(a3, v6);
  result = (*(v7 + 32))(v5, v6, v7);
  if (!v3)
  {
    v10 = result;
    v11 = v9;
    swift_isUniquelyReferenced_nonNull_native();
    v12 = *a2;
    sub_100135C94(v5, v10, v11);
    *a2 = v12;
  }

  return result;
}

uint64_t (*sub_10011C8EC(uint64_t (*result)(int *, uint64_t), uint64_t a2, uint64_t a3))(int *, uint64_t)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v5 = result;
    v6 = 0;
    v7 = a3 + 32;
    while (2)
    {
      v8 = (v7 + 8 * v6++);
      v10 = *v8;
      v9 = v8[1];
      do
      {
        v13 = v10;
        if (v10 == v9)
        {
          v11 = 0;
        }

        else
        {
          if (v10 == 0x7FFFFFFF)
          {
            __break(1u);
            return result;
          }

          v11 = v10 + 1;
        }

        result = v5(&v13, a2);
        if (v3)
        {
          return result;
        }

        v12 = v10 == v9;
        v10 = v11;
      }

      while (!v12);
      if (v6 != v4)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t variable initialization expression of SQLiteBaseSchematizer.impl()
{
  type metadata accessor for Schematizer();
  v0 = swift_allocObject();
  type metadata accessor for ProtoSchemaStore();
  swift_allocObject();
  *(v0 + 16) = ProtoSchemaStore.init()();
  *(v0 + 24) = &protocol witness table for ProtoSchemaStore;
  return v0;
}

uint64_t variable initialization expression of SQLiteBaseSchematizer.queryTimeFrameGuideline()
{
  v0 = type metadata accessor for Date();
  sub_100003650();
  v2 = v1;
  __chkstk_darwin(v3);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v15 - v7;
  static Date.distantPast.getter();
  Date.timeIntervalSince1970.getter();
  v10 = v9;
  v11 = *(v2 + 8);
  v11(v8, v0);
  static Date.distantFuture.getter();
  Date.timeIntervalSince1970.getter();
  v13 = v12;
  result = (v11)(v5, v0);
  if (v10 > v13)
  {
    __break(1u);
  }

  return result;
}

uint64_t variable initialization expression of SQLiteBaseSchematizer.functions()
{
  sub_100046184(&qword_10021C018, &qword_1001A1130);

  return Dictionary.init(dictionaryLiteral:)();
}

uint64_t IntegerSet.init()(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ClosedRange();

  return static Array._allocateUninitialized(_:)();
}

uint64_t variable initialization expression of ProtoSchemaStore.enums()
{
  type metadata accessor for ProtoEnum();

  return Dictionary.init(dictionaryLiteral:)();
}

uint64_t variable initialization expression of ProtoSchemaStore.schemas()
{
  type metadata accessor for ProtoMessageSchema();

  return Dictionary.init(dictionaryLiteral:)();
}

_BYTE *storeEnumTagSinglePayload for EnumModel.CodingKeys(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_10011CD40()
{
  result = qword_10021C020;
  if (!qword_10021C020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021C020);
  }

  return result;
}

unint64_t sub_10011CD98()
{
  result = qword_10021C028;
  if (!qword_10021C028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021C028);
  }

  return result;
}

unint64_t sub_10011CDF0()
{
  result = qword_10021C030;
  if (!qword_10021C030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021C030);
  }

  return result;
}

id sub_10011CE44(id result, uint64_t a2, char a3)
{
  switch(a3)
  {
    case 0:
      result = result;
      break;
    case 1:
    case 2:
    case 3:

      break;
    default:
      return result;
  }

  return result;
}

void sub_10011CE88(void *a1, uint64_t a2, char a3)
{
  switch(a3)
  {
    case 0:

      break;
    case 1:
    case 2:
    case 3:

      break;
    default:
      return;
  }
}

uint64_t sub_10011CECC(uint64_t a1, void (*a2)(uint64_t *, void *), uint64_t a3, uint64_t a4)
{
  v18 = a1;
  v7 = a4 + 56;
  v8 = 1 << *(a4 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a4 + 56);
  v11 = (v8 + 63) >> 6;

  v13 = 0;
  if (v10)
  {
    while (1)
    {
      v14 = v13;
LABEL_8:
      v15 = (*(a4 + 48) + ((v14 << 10) | (16 * __clz(__rbit64(v10)))));
      v16 = v15[1];
      v17[0] = *v15;
      v17[1] = v16;

      a2(&v18, v17);
      if (v4)
      {
        break;
      }

      v10 &= v10 - 1;

      v13 = v14;
      if (!v10)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v14 >= v11)
      {

        return v18;
      }

      v10 = *(v7 + 8 * v14);
      ++v13;
      if (v10)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10011D014(uint64_t a1, void (*a2)(uint64_t *, void *), uint64_t a3, uint64_t a4)
{
  v11 = a1;
  v6 = *(a4 + 16);
  v7 = (a4 + 40);
  if (!v6)
  {
    return v11;
  }

  while (1)
  {
    v8 = *v7;
    v10[0] = *(v7 - 1);
    v10[1] = v8;

    a2(&v11, v10);
    if (v4)
    {
      break;
    }

    v7 += 2;
    if (!--v6)
    {
      return v11;
    }
  }
}

uint64_t sub_10011D0BC(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x69747265706F7270 && a2 == 0xEA00000000007365)
  {

    v4 = 0;
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_10011D15C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10011D0BC(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_10011D1A4@<X0>(_BYTE *a1@<X8>)
{
  result = static Optional<A>.sqlNullable.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_10011D1D0(uint64_t a1)
{
  v2 = sub_10011D3C4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10011D20C(uint64_t a1)
{
  v2 = sub_10011D3C4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t OneOfModel.encode(to:)(void *a1, uint64_t a2)
{
  sub_100046184(&qword_10021C038, &qword_1001A0AB0);
  sub_100003BC8();
  v6 = v5;
  __chkstk_darwin(v7);
  v9 = v11 - v8;
  sub_100007534(a1, a1[3]);
  sub_10011D3C4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11[1] = a2;
  sub_100046184(&qword_10021C048, &qword_1001A0AB8);
  sub_10011D5B8(&qword_10021C050, &protocol witness table for String, &protocol witness table for Int, &protocol conformance descriptor for <> [A : B]);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v6 + 8))(v9, v2);
}

unint64_t sub_10011D3C4()
{
  result = qword_10021C040;
  if (!qword_10021C040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021C040);
  }

  return result;
}

void *OneOfModel.init(from:)(void *a1)
{
  sub_100046184(&qword_10021C058, &qword_1001A0AC0);
  sub_100003BC8();
  v5 = v4;
  __chkstk_darwin(v6);
  v8 = v11 - v7;
  v9 = sub_100007534(a1, a1[3]);
  sub_10011D3C4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_100007378(a1);
  }

  else
  {
    sub_100046184(&qword_10021C048, &qword_1001A0AB8);
    sub_10011D5B8(&qword_10021C060, &protocol witness table for String, &protocol witness table for Int, &protocol conformance descriptor for <> [A : B]);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v5 + 8))(v8, v2);
    v9 = v11[1];
    sub_100007378(a1);
  }

  return v9;
}

uint64_t sub_10011D5B8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1000461CC(&qword_10021C048, &qword_1001A0AB8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *sub_10011D628@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = OneOfModel.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t OneOfModel.init(_:)(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  sub_100007534(a1, v2);
  v4 = (*(v3 + 24))(v2, v3);
  v5 = Dictionary.init(dictionaryLiteral:)();
  v8[2] = a1;
  v6 = sub_10011CECC(v5, sub_10011D810, v8, v4);

  sub_100007378(a1);
  return v6;
}

void sub_10011D754(uint64_t *a1, uint64_t *a2, void *a3)
{
  v5 = *a2;
  v6 = a2[1];
  v7 = a3[3];
  v8 = a3[4];
  sub_100007534(a3, v7);
  v9 = (*(v8 + 40))(v5, v6, v7, v8);
  if (!v3)
  {
    v10 = v9;
    swift_isUniquelyReferenced_nonNull_native();
    v11 = *a1;
    sub_100135D6C(v10, v5, v6);
    *a1 = v11;
  }
}

_BYTE *storeEnumTagSinglePayload for OneOfModel.CodingKeys(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_10011D8EC()
{
  result = qword_10021C068;
  if (!qword_10021C068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021C068);
  }

  return result;
}

unint64_t sub_10011D944()
{
  result = qword_10021C070;
  if (!qword_10021C070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021C070);
  }

  return result;
}

unint64_t sub_10011D99C()
{
  result = qword_10021C078;
  if (!qword_10021C078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021C078);
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> PObjFunction.perform(with:arguments:)(SQLiter::SQLiteContext with, Swift::OpaquePointer arguments)
{
  v3 = *(arguments._rawValue + 2);
  if (!v3)
  {
    __break(1u);
    goto LABEL_13;
  }

  v5 = *(arguments._rawValue + 4);
  if (SQLiteArgument.isNull.getter(v5))
  {
    SQLiteContext.setNull()();
    return;
  }

  sub_10011DD3C();
  if (!v2)
  {
    SQLiteBaseSchematizer.getSQLiteBridge()();
    v7 = v6;

    v8 = SQLiteArgument.getData()(v5);
    if (v9 >> 60 == 15)
    {
      swift_unknownObjectRelease();
      sub_10011DC44();
      swift_allocError();
      *(v10 + 8) = 0;
      *(v10 + 16) = 0;
      *v10 = 6;
      *(v10 + 24) = 4;
      swift_willThrow();
      return;
    }

    if (v3 != 1)
    {
      v11 = v8;
      v12 = v9;
      v13 = SQLiteArgument.getStringNonNull()();
      if (!v14)
      {
        ObjectType = swift_getObjectType();
        (*(v7 + 32))(v11, v12, v13._countAndFlagsBits, v13._object, with.context._rawValue, ObjectType, v7);
      }

      sub_100014A2C(v11, v12);
      swift_unknownObjectRelease();
      return;
    }

LABEL_13:
    __break(1u);
  }
}

uint64_t PGetTimeWindowStartFunction.deinit()
{
  v0 = SQLiteBaseFunction.deinit();
  swift_weakDestroy();
  return v0;
}

uint64_t PGetTimeWindowStartFunction.__deallocating_deinit()
{
  v0 = SQLiteBaseFunction.deinit();
  swift_weakDestroy();

  return _swift_deallocClassInstance(v0, 48, 7);
}

unint64_t sub_10011DC44()
{
  result = qword_10021C080;
  if (!qword_10021C080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021C080);
  }

  return result;
}

uint64_t sub_10011DCBC()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    sub_10011DDBC();
    swift_allocError();
    sub_100006194(v1, "Schematizer is dead");
  }

  return Strong;
}

uint64_t sub_10011DD3C()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    sub_10011DDBC();
    swift_allocError();
    sub_100006194(v1, "Schematizer is dead");
  }

  return Strong;
}

unint64_t sub_10011DDBC()
{
  result = qword_10021C1C0;
  if (!qword_10021C1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021C1C0);
  }

  return result;
}

Swift::Int sub_10011DE28(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  SQLiteBaseVTab.Style.hash(into:)(v4, v2);
  return Hasher._finalize()();
}

uint64_t SQLiteViewProvider.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(a3 + 16))(a2, a3);
  String.hash(into:)();
}

uint64_t Array<A>.reloadAll(with:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v18 = result;
  v5 = *(a3 + 16);
  if (v5)
  {
    v6 = (a3 + 40);
    do
    {
      v7 = *v6;
      ObjectType = swift_getObjectType();
      v9 = *(v7 + 48);
      swift_unknownObjectRetain();
      v9(v18, a2, ObjectType, v7);
      if (v4)
      {
        v22 = v4;
        swift_errorRetain();
        sub_100046184(&qword_100216900, &unk_10019AE20);
        if (!swift_dynamicCast() || v21)
        {

          swift_willThrow();
          return swift_unknownObjectRelease();
        }

        if (qword_10021BFB0 != -1)
        {
          swift_once();
        }

        v10 = type metadata accessor for Logger();
        sub_10000964C(v10, qword_100232D90);
        swift_unknownObjectRetain();
        v11 = Logger.logObject.getter();
        v12 = static os_log_type_t.info.getter();
        swift_unknownObjectRelease();
        if (os_log_type_enabled(v11, v12))
        {
          v13 = swift_slowAlloc();
          v14 = swift_slowAlloc();
          v20 = v14;
          *v13 = 136315138;
          v15 = (*(v7 + 16))(ObjectType, v7);
          v17 = sub_100009684(v15, v16, &v20);

          *(v13 + 4) = v17;
          _os_log_impl(&_mh_execute_header, v11, v12, "Schema file does not meet %s view provider requirements", v13, 0xCu);
          sub_100007378(v14);
        }

        swift_unknownObjectRelease();

        v4 = 0;
      }

      else
      {
        result = swift_unknownObjectRelease();
      }

      v6 += 2;
      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t Array<A>.teardownAll()(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = (result + 40);
    do
    {
      v3 = *v2;
      ObjectType = swift_getObjectType();
      v5 = *(v3 + 40);
      swift_unknownObjectRetain();
      v5(ObjectType, v3);
      result = swift_unknownObjectRelease();
      v2 += 2;
      --v1;
    }

    while (v1);
  }

  return result;
}

unint64_t sub_10011E248()
{
  result = qword_10021C1C8;
  if (!qword_10021C1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021C1C8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SQLiteViewProviderError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t EnumValue.init(intValue:type:)@<X0>(unsigned int a1@<W0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 40) = a1;
  *(a3 + 48) = 0;
  *(a3 + 56) = 1;
  return sub_100008C84(a2, a3);
}

uint64_t EnumValue.init(stringValue:type:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X8>)
{
  *(a4 + 40) = a1;
  *(a4 + 48) = a2;
  *(a4 + 56) = 0;
  return sub_100008C84(a3, a4);
}

Swift::Int32 __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> EnumValue.asInteger()()
{
  v1 = sub_1000085E0();
  if (v2)
  {
    return v0;
  }

  sub_100007534(v1, v1[3]);
  v4 = sub_1000061C4();
  return v5(v4);
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> EnumValue.asString()()
{
  v2 = sub_1000085E0();
  if (v3)
  {
    v4 = v2[3];
    v5 = v2[4];
    sub_100007534(v2, v4);
    v6 = sub_100003C10();
    v8 = v7(v6, v4, v5);
    if (!v1)
    {
      v0 = v8;
      v4 = v9;
    }
  }

  else
  {
    v4 = v2[6];
  }

  v10 = v0;
  v11 = v4;
  result._object = v11;
  result._countAndFlagsBits = v10;
  return result;
}

uint64_t static EnumValue.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 24);
  sub_100007534(a1, v4);
  sub_100003C24();
  v6 = v5(v4);
  v8 = v7;
  v9 = *(a2 + 24);
  sub_100007534(a2, v9);
  sub_100003C24();
  if (v6 == v10(v9) && v8 == v11)
  {
  }

  else
  {
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

    result = 0;
    if ((v13 & 1) == 0)
    {
      return result;
    }
  }

  v15 = *(a1 + 40);
  v17 = *(a2 + 40);
  v16 = *(a2 + 48);
  v18 = *(a2 + 56);
  if (*(a1 + 56))
  {
    if (*(a2 + 56))
    {
      return v15 == v17;
    }

    else
    {
      v23 = *(a2 + 24);
      v24 = *(a2 + 32);
      sub_100007534(a2, v23);
      return (*(v24 + 24))(v17, v16, v23, v24) == v15;
    }
  }

  v20 = *(a1 + 48);
  if (v18)
  {
    v21 = *(a1 + 24);
    v22 = *(a1 + 32);
    sub_100007534(a1, v21);
    return (*(v22 + 24))(v15, v20, v21, v22) == v17;
  }

  if (v15 == v17 && v20 == v16)
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t EnumValue.encode(to:)(void *a1)
{
  sub_100007534(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  if ((*(v1 + 56) & 1) == 0)
  {

LABEL_5:
    sub_100026EEC(v8, v8[3]);
    sub_1000061C4();
    dispatch thunk of SingleValueEncodingContainer.encode(_:)();

    return sub_100007378(v8);
  }

  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  sub_100007534(v1, v3);
  v5 = sub_100003C10();
  v6(v5, v3, v4);
  if (!v2)
  {
    goto LABEL_5;
  }

  return sub_100007378(v8);
}

__n128 sub_10011E7E8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_10011E804(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 57))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10011E844(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10011E8B4@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 16);
  return swift_unknownObjectRetain();
}

uint64_t sub_10011E904(_OWORD *a1, uint64_t *a2)
{
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 16) = *a1;
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

uint64_t Schematizer.schemaStore.getter()
{
  sub_1000061E0();
  swift_beginAccess();
  return swift_unknownObjectRetain();
}

uint64_t Schematizer.__allocating_init()()
{
  sub_100003C38();
  v0 = swift_allocObject();
  type metadata accessor for ProtoSchemaStore();
  swift_allocObject();
  *(v0 + 16) = ProtoSchemaStore.init()();
  *(v0 + 24) = &protocol witness table for ProtoSchemaStore;
  return v0;
}

uint64_t Schematizer.init()()
{
  type metadata accessor for ProtoSchemaStore();
  swift_allocObject();
  *(v0 + 16) = ProtoSchemaStore.init()();
  *(v0 + 24) = &protocol witness table for ProtoSchemaStore;
  return v0;
}

uint64_t Schematizer.__allocating_init(withModel:)(uint64_t a1, uint64_t a2)
{
  sub_100003C38();
  v4 = swift_allocObject();
  Schematizer.init(withModel:)(a1, a2);
  return v4;
}

uint64_t Schematizer.init(withModel:)(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  type metadata accessor for ProtoSchemaStore();
  swift_allocObject();
  v7 = ProtoSchemaStore.init(withModel:)(a1, a2);
  if (v3)
  {
    type metadata accessor for Schematizer();
    swift_deallocPartialClassInstance();
  }

  else
  {
    *(v4 + 16) = v7;
    *(v4 + 24) = &protocol witness table for ProtoSchemaStore;
  }

  return v4;
}

uint64_t Schematizer.__allocating_init(withSchemaStore:)(uint64_t a1, uint64_t a2)
{
  sub_100003C38();
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t Schematizer.init(withSchemaStore:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t Schematizer.interpret(payload:with:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = a2;
  swift_beginAccess();
  v9 = *(v4 + 16);
  v8 = *(v4 + 24);
  ObjectType = swift_getObjectType();
  v11 = *(v8 + 40);
  swift_unknownObjectRetain();
  v12 = v9;
  v11(v15, a3, a4, ObjectType, v8);
  swift_unknownObjectRelease();
  if (!v5)
  {
    type metadata accessor for ProtobufPayload();
    v12 = static ProtobufPayload.create(with:payload:)(v15, a1, v16);
    sub_100007378(v15);
  }

  return v12;
}

uint64_t Schematizer.enum(withName:)()
{
  sub_1000061E0();
  swift_beginAccess();
  v1 = *(v0 + 24);
  swift_getObjectType();
  v2 = *(v1 + 48);
  swift_unknownObjectRetain();
  v3 = sub_100004494();
  v2(v3);
  return swift_unknownObjectRelease();
}

uint64_t Schematizer.messageSchema(withName:)()
{
  sub_1000061E0();
  swift_beginAccess();
  v1 = *(v0 + 24);
  swift_getObjectType();
  v2 = *(v1 + 40);
  swift_unknownObjectRetain();
  v3 = sub_100004494();
  v2(v3);
  return swift_unknownObjectRelease();
}

uint64_t Schematizer.__deallocating_deinit()
{
  swift_unknownObjectRelease();
  v0 = sub_100003C38();

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t sub_10011EE18(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (sub_1000037C8(1701869940, 0xE400000000000000) & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656D614E65707974 && a2 == 0xE800000000000000;
    if (v6 || (sub_1000037C8(0x656D614E65707974, 0xE800000000000000) & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 6775156 && a2 == 0xE300000000000000;
      if (v7 || (sub_1000037C8(6775156, 0xE300000000000000) & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x7461657065527369 && a2 == 0xEA00000000006465)
      {

        return 3;
      }

      else
      {
        v9 = sub_1000037C8(0x7461657065527369, 0xEA00000000006465);

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_10011EF48(char a1)
{
  result = 1701869940;
  switch(a1)
  {
    case 1:
      result = 0x656D614E65707974;
      break;
    case 2:
      result = 6775156;
      break;
    case 3:
      result = 0x7461657065527369;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_10011EFC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10011EE18(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10011EFFC(uint64_t a1)
{
  v2 = sub_10011F2FC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10011F038(uint64_t a1)
{
  v2 = sub_10011F2FC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t PropertyModel.typeName.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

void __swiftcall PropertyModel.init(type:typeName:tag:isRepeated:)(Schematizer::PropertyModel *__return_ptr retstr, Schematizer::TypeModel type, Swift::String_optional typeName, Swift::Int tag, Swift::Bool isRepeated)
{
  retstr->type = type;
  retstr->typeName = typeName;
  retstr->tag = tag;
  retstr->isRepeated = isRepeated;
}

uint64_t PropertyModel.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_100046184(&qword_10021C2B0, &qword_1001A0F08);
  sub_100003650();
  __chkstk_darwin(v5);
  sub_100007534(a1, a1[3]);
  sub_10011F2FC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100007378(a1);
  }

  sub_10011F350();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  sub_1000044B4();
  v6 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v8 = v7;
  v14 = v6;
  sub_1000044B4();
  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  sub_1000044B4();
  v10 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v11 = sub_100006BE8();
  v12(v11);
  result = sub_100007378(a1);
  *a2 = v15;
  *(a2 + 8) = v14;
  *(a2 + 16) = v8;
  *(a2 + 24) = v9;
  *(a2 + 32) = v10 & 1;
  return result;
}

unint64_t sub_10011F2FC()
{
  result = qword_10021C2B8;
  if (!qword_10021C2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021C2B8);
  }

  return result;
}

unint64_t sub_10011F350()
{
  result = qword_10021C2C0;
  if (!qword_10021C2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021C2C0);
  }

  return result;
}

uint64_t PropertyModel.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_100046184(&qword_10021C2C8, &qword_1001A0F10);
  sub_100003650();
  v7 = v6;
  __chkstk_darwin(v8);
  v10 = &v12[-v9];
  sub_100007534(a1, a1[3]);
  sub_10011F2FC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v12[15] = *v3;
  v12[14] = 0;
  sub_10011F558();
  sub_1000085F4();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v12[13] = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v12[12] = 2;
    sub_1000085F4();
    KeyedEncodingContainer.encode(_:forKey:)();
    if (v3[32] == 1)
    {
      v12[11] = 3;
      sub_1000085F4();
      KeyedEncodingContainer.encode(_:forKey:)();
    }
  }

  return (*(v7 + 8))(v10, v5);
}

unint64_t sub_10011F558()
{
  result = qword_10021C2D0;
  if (!qword_10021C2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021C2D0);
  }

  return result;
}

uint64_t static PropertyModel.__derived_struct_equals(_:_:)(unsigned __int8 *a1, uint64_t a2)
{
  v2 = 7630441;
  v3 = *a1;
  v4 = 0xE300000000000000;
  v7 = 7630441;
  switch(v3)
  {
    case 1:
      v4 = 0xE500000000000000;
      v7 = 0x3436746E69;
      break;
    case 2:
      v4 = 0xE400000000000000;
      v7 = 1953393013;
      break;
    case 3:
      v4 = 0xE600000000000000;
      v7 = 0x3436746E6975;
      break;
    case 4:
      v4 = 0xE500000000000000;
      v7 = 0x74616F6C66;
      break;
    case 5:
      v4 = 0xE600000000000000;
      v7 = 0x656C62756F64;
      break;
    case 6:
      v4 = 0xE400000000000000;
      v7 = 1819242338;
      break;
    case 7:
      v4 = 0xE400000000000000;
      v7 = 1836412517;
      break;
    case 8:
      v4 = 0xE400000000000000;
      v7 = 1635017060;
      break;
    case 9:
      v4 = 0xE600000000000000;
      v7 = 0x676E69727473;
      break;
    case 10:
      v4 = 0xE600000000000000;
      v7 = 0x616D65686373;
      break;
    default:
      break;
  }

  v8 = 0xE300000000000000;
  switch(*a2)
  {
    case 1:
      v8 = 0xE500000000000000;
      v2 = 0x3436746E69;
      break;
    case 2:
      v8 = 0xE400000000000000;
      v2 = 1953393013;
      break;
    case 3:
      v8 = 0xE600000000000000;
      v2 = 0x3436746E6975;
      break;
    case 4:
      v8 = 0xE500000000000000;
      v2 = 0x74616F6C66;
      break;
    case 5:
      v8 = 0xE600000000000000;
      v2 = 0x656C62756F64;
      break;
    case 6:
      v8 = 0xE400000000000000;
      v2 = 1819242338;
      break;
    case 7:
      v8 = 0xE400000000000000;
      v2 = 1836412517;
      break;
    case 8:
      v8 = 0xE400000000000000;
      v2 = 1635017060;
      break;
    case 9:
      v8 = 0xE600000000000000;
      v2 = 0x676E69727473;
      break;
    case 0xA:
      v8 = 0xE600000000000000;
      v2 = 0x616D65686373;
      break;
    default:
      break;
  }

  if (v7 == v2 && v4 == v8)
  {
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v10 & 1) == 0)
    {
      goto LABEL_41;
    }
  }

  v11 = *(a1 + 2);
  v12 = *(a2 + 16);
  if (v11)
  {
    if (!v12)
    {
      goto LABEL_41;
    }

    v13 = *(a1 + 1) == *(a2 + 8) && v11 == v12;
    if (!v13 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_41;
    }
  }

  else if (v12)
  {
LABEL_41:
    v14 = 0;
    return v14 & 1;
  }

  if (*(a1 + 3) != *(a2 + 24))
  {
    goto LABEL_41;
  }

  v14 = a1[32] ^ *(a2 + 32) ^ 1;
  return v14 & 1;
}

double sub_10011F854@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  PropertyModel.init(from:)(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

uint64_t PropertyModel.init(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v6 = a1[3];
  v7 = a1[4];
  sub_100007534(a1, v6);
  (*(v7 + 40))(v35, v6, v7);
  if (v2)
  {
    return sub_100007378(a1);
  }

  sub_10011FB8C(v35, &v30);
  if (v34)
  {
    if (v34 == 1)
    {
      sub_100008C84(&v30, v28);
      sub_100007534(v28, v29);
      v8 = sub_100011AB8();
      v3 = v9(v8);
      v6 = v10;
      sub_100007378(v28);
      v11 = 10;
    }

    else if (v32 | v33 | v30 | v31 | *(&v30 + 1))
    {
      v15 = v32 | v33 | v31 | *(&v30 + 1);
      if (v30 != 1 || v15)
      {
        if (v30 != 2 || v15)
        {
          if (v30 != 3 || v15)
          {
            if (v30 != 4 || v15)
            {
              if (v30 != 5 || v15)
              {
                if (v30 != 6 || v15)
                {
                  sub_1000061F4();
                  if (v17)
                  {
                    v18 = 0;
                  }

                  else
                  {
                    v18 = v16 == 7;
                  }

                  if (v18)
                  {
                    v11 = 9;
                  }

                  else
                  {
                    v11 = 8;
                  }
                }

                else
                {
                  sub_1000061F4();
                  v11 = 6;
                }
              }

              else
              {
                sub_1000061F4();
                v11 = 5;
              }
            }

            else
            {
              sub_1000061F4();
              v11 = 4;
            }
          }

          else
          {
            sub_1000061F4();
            v11 = 3;
          }
        }

        else
        {
          sub_1000061F4();
          v11 = 1;
        }
      }

      else
      {
        sub_1000061F4();
        v11 = 2;
      }
    }

    else
    {
      v11 = 0;
      sub_1000061F4();
    }
  }

  else
  {
    sub_100008C84(&v30, v28);
    sub_100007534(v28, v29);
    v12 = sub_100011AB8();
    v3 = v13(v12);
    v6 = v14;
    sub_100007378(v28);
    v11 = 7;
  }

  v19 = a1[3];
  v20 = a1[4];
  sub_100007534(a1, v19);
  v21 = (*(v20 + 32))(v19, v20);
  v36 = v6;
  v22 = v3;
  v23 = a1[3];
  v24 = a1[4];
  sub_100007534(a1, v23);
  v25 = (*(v24 + 16))(v23, v24);
  sub_10011FBE8(v35);
  result = sub_100007378(a1);
  *a2 = v11;
  v27 = v36;
  *(a2 + 8) = v22;
  *(a2 + 16) = v27;
  *(a2 + 24) = v21;
  *(a2 + 32) = v25 & 1;
  return result;
}

uint64_t sub_10011FC3C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 33))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10011FC90(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PropertyModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_10011FDD8()
{
  result = qword_10021C2D8;
  if (!qword_10021C2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021C2D8);
  }

  return result;
}

unint64_t sub_10011FE30()
{
  result = qword_10021C2E0;
  if (!qword_10021C2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021C2E0);
  }

  return result;
}

unint64_t sub_10011FE88()
{
  result = qword_10021C2E8;
  if (!qword_10021C2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021C2E8);
  }

  return result;
}

void sub_10011FEE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = a3 + 64;
  v8 = 1 << *(a3 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a3 + 64);
  v11 = (v8 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v12 = 0;
  while (v10)
  {
    v13 = v12;
LABEL_9:
    v14 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    sub_100141D0C(*(*(a3 + 56) + ((v13 << 8) | (4 * v14))));
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v13 >= v11)
    {

      v3[4] = a3;
      v3[5] = _swiftEmptyArrayStorage;
      v3[2] = a1;
      v3[3] = a2;
      return;
    }

    v10 = *(v7 + 8 * v13);
    ++v12;
    if (v10)
    {
      v12 = v13;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_100120000(uint64_t a1, void *a2)
{
  v3 = v2;
  countAndFlagsBits = v2[2]._countAndFlagsBits;
  if (*(countAndFlagsBits + 16))
  {
    v7 = sub_100005B74(a1, a2);
    if (v8)
    {
      return *(*(countAndFlagsBits + 56) + 4 * v7);
    }
  }

  sub_10011DDBC();
  swift_allocError();
  sub_100006200();

  sub_100003C48();
  String.append(_:)(v3[1]);
  v10._countAndFlagsBits = 8236;
  v10._object = 0xE200000000000000;
  String.append(_:)(v10);
  v11._countAndFlagsBits = a1;
  v11._object = a2;
  String.append(_:)(v11);
  sub_1000044C4();
  return sub_100008604(v12, v13, v14, v15, v16, v17, v18, v19, v20, v21);
}

uint64_t *sub_1001200D0(uint64_t *result)
{
  v2 = result;
  v3 = 0;
  countAndFlagsBits = v1[2]._countAndFlagsBits;
  v5 = 1 << *(countAndFlagsBits + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(countAndFlagsBits + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = v3;
LABEL_10:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = v10 | (v9 << 6);
    if (*(*(countAndFlagsBits + 56) + 4 * v11) == result)
    {
      v12 = *(*(countAndFlagsBits + 48) + 16 * v11);

      return v12;
    }
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= v8)
    {
      sub_10011DDBC();
      swift_allocError();
      sub_100006200();

      sub_100003C48();
      String.append(_:)(v1[1]);
      v13._countAndFlagsBits = 8236;
      v13._object = 0xE200000000000000;
      String.append(_:)(v13);
      v24 = v2;
      v14._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      v12 = v23;
      String.append(_:)(v14);

      sub_1000044C4();
      sub_100008604(v15, v16, v17, v18, v19, v20, v21, v22, v23[0], v23[1]);
      return v12;
    }

    v7 = *(countAndFlagsBits + 64 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100120240()
{
}

uint64_t sub_100120270()
{

  return v0;
}

uint64_t sub_1001202A0()
{
  sub_100120270();

  return _swift_deallocClassInstance(v0, 48, 7);
}

uint64_t sub_100120340()
{
  v0 = type metadata accessor for Logger();
  sub_100057FF8(v0, qword_100232D90);
  sub_10000964C(v0, qword_100232D90);
  return Logger.init(subsystem:category:)();
}

void *sub_1001203C4()
{
  if (swift_weakLoadStrong())
  {
    v0 = SQLiteBaseSchematizer.getSQLiteBridge()();
  }

  else
  {
    sub_100121E4C();
    swift_allocError();
    *v1 = 0;
    swift_willThrow();
  }

  return v0;
}

double sub_10012045C()
{
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    swift_beginAccess();
    v0 = *(v2 + 32);
  }

  else
  {
    sub_100121E4C();
    swift_allocError();
    *v3 = 0;
    swift_willThrow();
  }

  return v0;
}

uint64_t sub_1001204F8()
{
  swift_weakDestroy();

  return _swift_deallocClassInstance(v0, 24, 7);
}

double SQLiteBaseSchematizer.queryTimeFrameGuideline.getter()
{
  sub_1000044E8();
  swift_beginAccess();
  return *(v0 + 32);
}

uint64_t SQLiteBaseSchematizer.queryTimeFrameGuideline.setter(double a1, double a2)
{
  result = swift_beginAccess();
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t sub_100120624()
{
  sub_100046184(&qword_10021C640, &unk_1001A11F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001A1120;
  *(inited + 32) = 0x6D756E655F70;
  *(inited + 40) = 0xE600000000000000;
  *(inited + 48) = type metadata accessor for PEnumFunction();
  *(inited + 56) = &protocol witness table for SQLiteSchematizerFunction;
  *(inited + 64) = 0x6A626F5F70;
  *(inited + 72) = 0xE500000000000000;
  *(inited + 80) = type metadata accessor for PObjFunction();
  *(inited + 88) = &protocol witness table for SQLiteSchematizerFunction;
  *(inited + 96) = 0x7465675F70;
  *(inited + 104) = 0xE500000000000000;
  *(inited + 112) = type metadata accessor for PGetFunction();
  *(inited + 120) = &protocol witness table for SQLiteSchematizerFunction;
  *(inited + 128) = 0x6E616D7465675F70;
  *(inited + 136) = 0xE900000000000079;
  *(inited + 144) = sub_100046184(&qword_10021C648, &unk_1001A2040);
  *(inited + 152) = &protocol witness table for SQLiteSchematizerTableFunction<A>;
  *(inited + 160) = 0x666F656E6F5F70;
  *(inited + 168) = 0xE700000000000000;
  *(inited + 176) = type metadata accessor for POneOfFunction();
  *(inited + 184) = &protocol witness table for SQLiteSchematizerFunction;
  *(inited + 192) = 0x6E6F736A5F70;
  *(inited + 200) = 0xE600000000000000;
  *(inited + 208) = type metadata accessor for PJSONFunction();
  *(inited + 216) = &protocol witness table for SQLiteSchematizerFunction;
  *(inited + 224) = 0x616F6C7961705F70;
  *(inited + 232) = 0xE900000000000064;
  *(inited + 240) = type metadata accessor for PPayloadFunction();
  *(inited + 248) = &protocol witness table for SQLiteSchematizerFunction;
  strcpy((inited + 256), "p_message_name");
  *(inited + 271) = -18;
  *(inited + 272) = type metadata accessor for PMessageNameFunction();
  *(inited + 280) = &protocol witness table for SQLiteSchematizerFunction;
  *(inited + 288) = 0x7465675F6270;
  *(inited + 296) = 0xE600000000000000;
  *(inited + 304) = type metadata accessor for PBGetFunction();
  *(inited + 312) = &protocol witness table for SQLiteSchematizerFunction;
  *(inited + 320) = 0x74737269665F6270;
  *(inited + 328) = 0xEA0000000000666FLL;
  *(inited + 336) = type metadata accessor for PBFirstOfFunction();
  *(inited + 344) = &protocol witness table for SQLiteSchematizerFunction;
  *(inited + 352) = 0x65646F6365645F70;
  *(inited + 360) = 0xEF3436657361625FLL;
  *(inited + 368) = type metadata accessor for PBase64DecodeFunction();
  *(inited + 376) = &protocol witness table for SQLiteSchematizerFunction;
  *(inited + 384) = 0xD000000000000017;
  *(inited + 392) = 0x80000001001B2330;
  *(inited + 400) = type metadata accessor for PSetTimeWindowFunction();
  *(inited + 408) = &protocol witness table for SQLiteSchematizerFunction;
  *(inited + 416) = 0xD000000000000019;
  *(inited + 424) = 0x80000001001B2350;
  *(inited + 432) = type metadata accessor for PGetTimeWindowStartFunction();
  *(inited + 440) = &protocol witness table for SQLiteSchematizerFunction;
  *(inited + 448) = 0xD000000000000017;
  *(inited + 456) = 0x80000001001B2370;
  *(inited + 464) = type metadata accessor for PGetTimeWindowEndFunction();
  *(inited + 472) = &protocol witness table for SQLiteSchematizerFunction;
  sub_100046184(&qword_10021C650, &unk_1001A1200);
  result = Dictionary.init(dictionaryLiteral:)();
  qword_100232DA8 = result;
  return result;
}

uint64_t SQLiteBaseSchematizer.functions.getter()
{
  sub_1000044E8();
  swift_beginAccess();
}

uint64_t SQLiteBaseSchematizer.functions.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 64) = a1;
}

uint64_t SQLiteBaseSchematizer.__allocating_init(schemaStore:viewProviders:)()
{
  v0 = sub_100006BF8();
  v1 = sub_100011AD0();
  SQLiteBaseSchematizer.init(schemaStore:viewProviders:)(v1, v2, v3);
  return v0;
}

uint64_t SQLiteBaseSchematizer.init(schemaStore:viewProviders:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v28 = a1;
  v29 = a3;
  v27 = a2;
  v4 = type metadata accessor for Date();
  sub_100003650();
  v6 = v5;
  __chkstk_darwin(v7);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v26 - v11;
  type metadata accessor for Schematizer();
  sub_100006634();
  v13 = swift_allocObject();
  type metadata accessor for ProtoSchemaStore();
  sub_100008130();
  swift_allocObject();
  *(v13 + 16) = ProtoSchemaStore.init()();
  *(v13 + 24) = &protocol witness table for ProtoSchemaStore;
  *(v3 + 16) = v13;
  static Date.distantPast.getter();
  Date.timeIntervalSince1970.getter();
  v15 = v14;
  v16 = *(v6 + 8);
  v16(v12, v4);
  static Date.distantFuture.getter();
  Date.timeIntervalSince1970.getter();
  v18 = v17;
  result = (v16)(v9, v4);
  if (v15 > v18)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 32) = v15;
    *(v3 + 40) = v18;
    *(v3 + 48) = 0;
    *(v3 + 56) = 0;
    sub_100046184(&qword_10021C018, &qword_1001A1130);
    *(v3 + 64) = Dictionary.init(dictionaryLiteral:)();
    v20 = v28;
    if (v28)
    {
      sub_100006634();
      v21 = swift_allocObject();
      v22 = v27;
      *(v21 + 16) = v20;
      *(v21 + 24) = v22;
      *(v3 + 16) = v21;
      swift_unknownObjectRetain();
    }

    else
    {
      sub_100006634();
      v23 = swift_allocObject();
      sub_100008130();
      swift_allocObject();
      *(v23 + 16) = ProtoSchemaStore.init()();
      *(v23 + 24) = &protocol witness table for ProtoSchemaStore;
      *(v3 + 16) = v23;
    }

    *(v3 + 24) = v29;
    v25 = v30;
    (*(*v3 + 272))(v24);
    if (v25)
    {
    }

    swift_unknownObjectRelease();
    return v3;
  }

  return result;
}

uint64_t SQLiteBaseSchematizer.__allocating_init(schemaStoreModel:viewProviders:)()
{
  v0 = sub_100006BF8();
  v1 = sub_100011AD0();
  SQLiteBaseSchematizer.init(schemaStoreModel:viewProviders:)(v1, v2, v3);
  return v0;
}

uint64_t SQLiteBaseSchematizer.init(schemaStoreModel:viewProviders:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24[0] = a2;
  v25 = a3;
  v5 = type metadata accessor for Date();
  sub_100003650();
  v7 = v6;
  __chkstk_darwin(v8);
  v10 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = v24 - v12;
  type metadata accessor for Schematizer();
  sub_100006634();
  v14 = swift_allocObject();
  type metadata accessor for ProtoSchemaStore();
  sub_100008130();
  swift_allocObject();
  *(v14 + 16) = ProtoSchemaStore.init()();
  *(v14 + 24) = &protocol witness table for ProtoSchemaStore;
  *(v3 + 16) = v14;
  static Date.distantPast.getter();
  Date.timeIntervalSince1970.getter();
  v16 = v15;
  v17 = *(v7 + 8);
  v17(v13, v5);
  static Date.distantFuture.getter();
  Date.timeIntervalSince1970.getter();
  v19 = v18;
  result = (v17)(v10, v5);
  if (v16 > v19)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 32) = v16;
    *(v3 + 40) = v19;
    *(v3 + 48) = 0;
    *(v3 + 56) = 0;
    sub_100046184(&qword_10021C018, &qword_1001A1130);
    *(v3 + 64) = Dictionary.init(dictionaryLiteral:)();
    sub_100006634();
    swift_allocObject();
    v21 = v24[1];
    v22 = Schematizer.init(withModel:)(a1, v24[0]);
    if (v21)
    {

      swift_unknownObjectRelease();

      type metadata accessor for SQLiteBaseSchematizer();
      swift_deallocPartialClassInstance();
    }

    else
    {
      *(v3 + 16) = v22;

      *(v3 + 24) = v25;
      (*(*v3 + 272))(v23);
    }

    return v3;
  }

  return result;
}

Swift::Void __swiftcall SQLiteBaseSchematizer.ensureFunctions()()
{
  v1 = v0;
  swift_beginAccess();
  if (!*(*(v0 + 64) + 16))
  {
    if (qword_10021BFB8 != -1)
    {
      goto LABEL_25;
    }

    while (1)
    {
      v2 = qword_100232DA8 + 64;
      v3 = 1 << *(qword_100232DA8 + 32);
      v4 = -1;
      if (v3 < 64)
      {
        v4 = ~(-1 << v3);
      }

      v5 = v4 & *(qword_100232DA8 + 64);
      v6 = (v3 + 63) >> 6;
      v37 = qword_100232DA8;

      v7 = 0;
      v34 = v6;
      v35 = v2;
      for (i = v1; v5; v2 = v35)
      {
LABEL_10:
        v9 = (v7 << 10) | (16 * __clz(__rbit64(v5)));
        v10 = (*(v37 + 48) + v9);
        v12 = *v10;
        v11 = v10[1];
        v13 = (*(v37 + 56) + v9);
        v14 = *v13;
        v15 = v13[1];
        v16 = *(v15 + 24);

        v38 = v16(v17, v14, v15);
        sub_100005D5C(v1 + 64, v39);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v19 = *(v1 + 64);
        *(v1 + 64) = 0x8000000000000000;
        v20 = sub_100005B74(v12, v11);
        v22 = v19[2];
        v23 = (v21 & 1) == 0;
        v24 = v22 + v23;
        if (__OFADD__(v22, v23))
        {
          goto LABEL_23;
        }

        v1 = v20;
        v25 = v21;
        sub_100046184(&qword_10021C3C0, &qword_1001A1138);
        if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v24))
        {
          v26 = sub_100005B74(v12, v11);
          if ((v25 & 1) != (v27 & 1))
          {
            KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
            __break(1u);
            return;
          }

          v1 = v26;
        }

        if (v25)
        {

          v28 = (v19[7] + 16 * v1);
          *v28 = v38;
          v28[1] = v15;
          swift_unknownObjectRelease();
        }

        else
        {
          v19[(v1 >> 6) + 8] |= 1 << v1;
          v29 = (v19[6] + 16 * v1);
          *v29 = v12;
          v29[1] = v11;
          v30 = (v19[7] + 16 * v1);
          *v30 = v38;
          v30[1] = v15;
          v31 = v19[2];
          v32 = __OFADD__(v31, 1);
          v33 = v31 + 1;
          if (v32)
          {
            goto LABEL_24;
          }

          v19[2] = v33;
        }

        v5 &= v5 - 1;
        v1 = i;
        *(i + 64) = v19;

        swift_endAccess();
        v6 = v34;
      }

      while (1)
      {
        v8 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        if (v8 >= v6)
        {

          return;
        }

        v5 = *(v2 + 8 * v8);
        ++v7;
        if (v5)
        {
          v7 = v8;
          goto LABEL_10;
        }
      }

      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      swift_once();
    }
  }
}

void *SQLiteBaseSchematizer.deinit()
{
  (*(*v0 + 240))();

  swift_unknownObjectRelease();

  return v0;
}

uint64_t SQLiteBaseSchematizer.__deallocating_deinit()
{
  SQLiteBaseSchematizer.deinit();

  return _swift_deallocClassInstance(v0, 72, 7);
}

Swift::Void __swiftcall SQLiteBaseSchematizer.teardown()()
{
  type metadata accessor for Schematizer();
  sub_100006634();
  v1 = swift_allocObject();
  type metadata accessor for ProtoSchemaStore();
  sub_100008130();
  swift_allocObject();
  *(v1 + 16) = ProtoSchemaStore.init()();
  *(v1 + 24) = &protocol witness table for ProtoSchemaStore;
  *(v0 + 16) = v1;

  Array<A>.teardownAll()(*(v0 + 24));
  sub_100005D5C(v0 + 64, v2);
  sub_100046184(&qword_10021C3C8, &unk_1001A1140);
  Dictionary._Variant.removeAll(keepingCapacity:)(0);
  swift_endAccess();
}

uint64_t static SQLiteBaseSchematizer.createEnvironment()()
{
  type metadata accessor for SQLiteBaseSchematizer.Environment();
  v0 = swift_allocObject();
  swift_weakInit();
  return v0;
}

uint64_t SQLiteBaseSchematizer.getSchemaStore()()
{
  sub_1000044E8();
  swift_beginAccess();
  return swift_unknownObjectRetain();
}

void *SQLiteBaseSchematizer.getSQLiteBridge()()
{
  v1 = v0;
  if (*(v0 + 48))
  {
    v2 = *(v0 + 48);
  }

  else
  {
    v3 = SQLiteBaseSchematizer.getSchemaStore()();
    v5 = v4;
    type metadata accessor for SQLiteMessageInBlobBridge();
    swift_allocObject();
    v2 = sub_10013572C(v3, v5);
    *(v1 + 48) = v2;
    *(v1 + 56) = &off_1001FF590;

    swift_unknownObjectRelease();
  }

  swift_unknownObjectRetain();
  return v2;
}

Schematizer::SchemaStoreModel __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SQLiteBaseSchematizer.getSchemaStoreModel()()
{
  SQLiteBaseSchematizer.getSchemaStore()();
  v2 = v1;
  ObjectType = swift_getObjectType();
  v2[7](ObjectType, v2);
  sub_10000AC44();
  swift_unknownObjectRelease();
  v4 = v0;
  v5 = v2;
  result.enums._rawValue = v5;
  result.schemas._rawValue = v4;
  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SQLiteBaseSchematizer.reloadViewProviders()()
{
  v1 = *(v0 + 24);
  v2 = SQLiteBaseSchematizer.getSchemaStore()();
  Array<A>.reloadAll(with:)(v2, v3, v1);
  swift_unknownObjectRelease();
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SQLiteBaseSchematizer.reconfigure(withSchemaStoreModel:)(Schematizer::SchemaStoreModel withSchemaStoreModel)
{
  v3 = v1;
  rawValue = withSchemaStoreModel.enums._rawValue;
  v5 = withSchemaStoreModel.schemas._rawValue;
  type metadata accessor for Schematizer();
  sub_100006634();
  swift_allocObject();

  v6 = Schematizer.init(withModel:)(v5, rawValue);
  if (!v2)
  {
    v3[2] = v6;

    v3[6] = 0;
    v3[7] = 0;
    v7 = swift_unknownObjectRelease();
    (*(*v3 + 272))(v7);
  }
}

uint64_t SQLiteBaseSchematizer.reconfigure(withSchemaStore:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Schematizer();
  sub_100006634();
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v2[2] = v5;
  swift_unknownObjectRetain();

  v2[6] = 0;
  v2[7] = 0;
  v6 = swift_unknownObjectRelease();
  return (*(*v2 + 272))(v6);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SQLiteBaseSchematizer.configureEventViews(for:withSchemaUpdate:)(Swift::OpaquePointer a1, Swift::Bool withSchemaUpdate)
{
  v6 = v3;
  v7 = *(v2 + 24);
  v8 = *(v7 + 16);
  if (v8)
  {
    v9 = (v7 + 40);
    *&v5 = 136315138;
    v57 = v5;
    *&v5 = 136315394;
    v58 = v5;
    while (1)
    {
      v10 = *v9;
      if (!withSchemaUpdate)
      {
        break;
      }

      ObjectType = swift_getObjectType();
      v12 = *(v10 + 24);
      swift_unknownObjectRetain();
      if (v12(ObjectType, v10))
      {
        goto LABEL_7;
      }

      swift_unknownObjectRelease();
LABEL_22:
      v9 += 2;
      if (!--v8)
      {
        return;
      }
    }

    swift_unknownObjectRetain();
LABEL_7:
    v13 = swift_getObjectType();
    (*(v10 + 56))(a1._rawValue, v13, v10);
    if (!v6)
    {
      v61 = v13;
      if (qword_10021BFB0 != -1)
      {
        sub_100006228();
        swift_once();
      }

      v24 = type metadata accessor for Logger();
      sub_10000964C(v24, qword_100232D90);
      swift_unknownObjectRetain();
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.debug.getter();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v36 = sub_100003C60(v28, v29, v30, v31, v32, v33, v34, v35, v57, *(&v57 + 1), v58, *(&v58 + 1), v59, log, v61);
        v38 = v37(v36);
        v40 = sub_100008AE8(v38, v39);

        *(v27 + 4) = v40;
        _os_log_impl(&_mh_execute_header, log, v26, "Database configured with %s event provider", v27, 0xCu);
        sub_100007378(v4);

        sub_10000F644();
        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
      }

      goto LABEL_22;
    }

    swift_errorRetain();
    v4 = sub_100046184(&qword_100216900, &unk_10019AE20);
    if ((swift_dynamicCast() & 1) != 0 && !v65)
    {
      v62 = v13;
      if (qword_10021BFB0 != -1)
      {
        sub_100006228();
        swift_once();
      }

      v41 = type metadata accessor for Logger();
      sub_10000964C(v41, qword_100232D90);
      swift_unknownObjectRetain();
      v15 = Logger.logObject.getter();
      v42 = static os_log_type_t.info.getter();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(v15, v42))
      {
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        v52 = sub_100003C60(v44, v45, v46, v47, v48, v49, v50, v51, v57, *(&v57 + 1), v58, *(&v58 + 1), v59, log, v62);
        v54 = v53(v52);
        v56 = sub_100008AE8(v54, v55);

        *(v43 + 4) = v56;
        _os_log_impl(&_mh_execute_header, log, v42, "Database does not meet %s view provider requirements", v43, 0xCu);
        sub_100007378(v4);

        sub_10000F644();

        swift_unknownObjectRelease();

        goto LABEL_20;
      }
    }

    else
    {
      if (qword_10021BFB0 != -1)
      {
        sub_100006228();
        swift_once();
      }

      v14 = type metadata accessor for Logger();
      sub_10000964C(v14, qword_100232D90);
      swift_unknownObjectRetain();
      swift_errorRetain();
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.error.getter();
      swift_unknownObjectRelease();

      if (!os_log_type_enabled(v15, v16))
      {
        swift_unknownObjectRelease();

        goto LABEL_20;
      }

      v59 = v4;
      v17 = v13;
      v18 = swift_slowAlloc();
      log = v15;
      swift_slowAlloc();
      *v18 = v58;
      v19 = (*(v10 + 16))(v17, v10);
      v21 = sub_100008AE8(v19, v20);

      *(v18 + 4) = v21;
      *(v18 + 12) = 2080;
      v65 = v6;
      swift_errorRetain();
      v22 = String.init<A>(describing:)();
      v4 = sub_100008AE8(v22, v23);

      *(v18 + 14) = v4;
      _os_log_impl(&_mh_execute_header, v15, v16, "Failed to configure database with %s event provider: %s", v18, 0x16u);
      swift_arrayDestroy();
      sub_10000F644();
    }

    swift_unknownObjectRelease();

LABEL_20:
    v6 = 0;
    goto LABEL_22;
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SQLiteBaseSchematizer.createFunctions(for:)(Swift::OpaquePointer a1)
{
  v3 = v1;
  SQLiteBaseSchematizer.ensureFunctions()();
  type metadata accessor for SQLiteDatabase();
  swift_allocObject();
  v5 = SQLiteDatabase.init(connection:)(a1._rawValue);
  if (!v2)
  {
    v6 = v5;
    sub_1000044E8();
    swift_beginAccess();
    v7 = *(v3 + 64);

    Dictionary<>.registerAll(on:)(v6, v7);

    (*(*v6 + 144))(v8);
  }
}

uint64_t SQLiteBaseSchematizer.interpret(_:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  v5 = sub_100011AD0();
  Schematizer.interpret(payload:with:)(v5, v6, v7, a4);
  sub_10000AC44();

  return a4;
}

uint64_t sub_100121D70(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{

  a3(a1, a2);
}

unint64_t sub_100121E4C()
{
  result = qword_10021C638;
  if (!qword_10021C638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021C638);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SQLiteSchematizerError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_100121F80()
{
  result = qword_10021C658;
  if (!qword_10021C658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021C658);
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> PBFirstOfFunction.perform(with:arguments:)(SQLiter::SQLiteContext with, Swift::OpaquePointer arguments)
{
  v2 = *(arguments._rawValue + 2);
  if (!v2)
  {
LABEL_94:
    __break(1u);
LABEL_95:
    __break(1u);
LABEL_96:
    __break(1u);
LABEL_97:
    __break(1u);
LABEL_98:
    __break(1u);
LABEL_99:
    __break(1u);
LABEL_100:
    __break(1u);
    goto LABEL_101;
  }

  v3 = SQLiteArgument.getUnsafeData()(*(arguments._rawValue + 4));
  if (v4 >> 60 == 15)
  {
    sub_10011DC44();
    swift_allocError();
    *(v5 + 8) = 0;
    *(v5 + 16) = 0;
    *v5 = 6;
    *(v5 + 24) = 4;
    swift_willThrow();
    return;
  }

  if (v2 == 1)
  {
    goto LABEL_95;
  }

  v6 = v3;
  v7 = v4;
  v8 = SQLiteArgument.getStringNonNull()();
  if (v9)
  {
    goto LABEL_9;
  }

  if (v2 < 3)
  {
    goto LABEL_100;
  }

  v10 = SQLiteArgument.getStringNonNull()();
  if (v11)
  {

    goto LABEL_9;
  }

  v62 = v6;
  v57 = v8;
  v60 = 46;
  v61 = 0xE100000000000000;
  sub_10000527C();
  v12 = StringProtocol.components<A>(separatedBy:)();

  v13 = 0;
  v14 = *(v12 + 16);
  v15 = &v57._countAndFlagsBits + 1;
  v16 = _swiftEmptyArrayStorage;
  v17 = 10;
  while (v13 != v14)
  {
    if (v13 >= *(v12 + 16))
    {
      __break(1u);
      goto LABEL_94;
    }

    v18 = (v12 + 32 + 16 * v13);
    v19 = *v18;
    v20 = v18[1];
    ++v13;
    v21 = HIBYTE(v20) & 0xF;
    v22 = v19 & 0xFFFFFFFFFFFFLL;
    if ((v20 & 0x2000000000000000) != 0)
    {
      v23 = HIBYTE(v20) & 0xF;
    }

    else
    {
      v23 = v19 & 0xFFFFFFFFFFFFLL;
    }

    if (v23)
    {
      if ((v20 & 0x1000000000000000) != 0)
      {
        v45 = v16;

        v26 = sub_1001237E8(v19, v20, 10);
        v56 = v46;

        v16 = v45;
        v17 = 10;
        v15 = &v57._countAndFlagsBits + 1;
        if ((v56 & 1) == 0)
        {
LABEL_80:
          v42 = v16;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v42 = sub_1001232FC(0, *(v42 + 2) + 1, 1, v42);
          }

          v16 = v42;
          v43 = *(v42 + 2);
          v44 = *(v16 + 3);
          if (v43 >= v44 >> 1)
          {
            v16 = sub_1001232FC((v44 > 1), v43 + 1, 1, v16);
          }

          *(v16 + 2) = v43 + 1;
          *&v16[8 * v43 + 32] = v26;
          v15 = &v57._countAndFlagsBits + 1;
          v17 = 10;
        }
      }

      else
      {
        if ((v20 & 0x2000000000000000) != 0)
        {
          v57._countAndFlagsBits = v19;
          v57._object = (v20 & 0xFFFFFFFFFFFFFFLL);
          if (v19 == 43)
          {
            if (!v21)
            {
              goto LABEL_97;
            }

            if (v21 != 1)
            {
              while (1)
              {
                sub_100006C24();
                if (!v28 & v27)
                {
                  break;
                }

                sub_100003C8C();
                if (!v28)
                {
                  break;
                }

                v26 = v37 + v36;
                if (__OFADD__(v37, v36))
                {
                  break;
                }

                sub_1000080F4();
                if (v28)
                {
                  goto LABEL_79;
                }
              }
            }
          }

          else if (v19 == 45)
          {
            if (!v21)
            {
              goto LABEL_96;
            }

            if (v21 != 1)
            {
              while (1)
              {
                sub_100006C24();
                if (!v28 & v27)
                {
                  break;
                }

                sub_100003C8C();
                if (!v28)
                {
                  break;
                }

                v26 = v33 - v32;
                if (__OFSUB__(v33, v32))
                {
                  break;
                }

                sub_1000080F4();
                if (v28)
                {
                  goto LABEL_79;
                }
              }
            }
          }

          else if (v21)
          {
            while (1)
            {
              sub_100006C24();
              if (!v28 & v27)
              {
                break;
              }

              sub_100003C8C();
              if (!v28)
              {
                break;
              }

              v26 = v41 + v40;
              if (__OFADD__(v41, v40))
              {
                break;
              }

              sub_1000080F4();
              if (v28)
              {
                goto LABEL_79;
              }
            }
          }

          goto LABEL_78;
        }

        if ((v19 & 0x1000000000000000) != 0)
        {
          v24 = ((v20 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          v47 = v15;
          v48 = v16;
          v24 = _StringObject.sharedUTF8.getter();
          v16 = v48;
          v17 = 10;
          v15 = v47;
        }

        v25 = *v24;
        if (v25 == 43)
        {
          if (v22 < 1)
          {
            goto LABEL_99;
          }

          if (v22 == 1)
          {
            goto LABEL_78;
          }

          v26 = 0;
          if (v24)
          {
            while (1)
            {
              sub_100006C24();
              if (!v28 & v27)
              {
                goto LABEL_78;
              }

              sub_100003C8C();
              if (!v28)
              {
                goto LABEL_78;
              }

              v26 = v35 + v34;
              if (__OFADD__(v35, v34))
              {
                goto LABEL_78;
              }

              sub_1000080F4();
              if (v28)
              {
                goto LABEL_79;
              }
            }
          }
        }

        else if (v25 == 45)
        {
          if (v22 < 1)
          {
            goto LABEL_98;
          }

          if (v22 == 1)
          {
            goto LABEL_78;
          }

          v26 = 0;
          if (v24)
          {
            while (1)
            {
              sub_100006C24();
              if (!v28 & v27)
              {
                break;
              }

              sub_100003C8C();
              if (!v28)
              {
                break;
              }

              v26 = v30 - v29;
              if (__OFSUB__(v30, v29))
              {
                break;
              }

              sub_1000080F4();
              if (v28)
              {
                goto LABEL_79;
              }
            }

LABEL_78:
            v26 = 0;
            v31 = 1;
            goto LABEL_79;
          }
        }

        else
        {
          if (!v22)
          {
            goto LABEL_78;
          }

          v26 = 0;
          if (v24)
          {
            do
            {
              v38 = *v24 - 48;
              if (v38 > 9)
              {
                goto LABEL_78;
              }

              v39 = 10 * v26;
              if ((v26 * v17) >> 64 != (10 * v26) >> 63)
              {
                goto LABEL_78;
              }

              v26 = v39 + v38;
              if (__OFADD__(v39, v38))
              {
                goto LABEL_78;
              }

              ++v24;
            }

            while (--v22);
          }
        }

        v31 = 0;
LABEL_79:
        LOBYTE(v60) = v31;
        if ((v31 & 1) == 0)
        {
          goto LABEL_80;
        }
      }
    }
  }

  v49 = v16;

  sub_10011DE10();
  SQLiteBaseSchematizer.enum(withName:)(v10._countAndFlagsBits, v10._object);
  v6 = v62;

  v50 = v58;
  v51 = v59;
  sub_100007534(&v57, v58);
  v52 = (*(v51 + 16))(v50, v51);
  sub_100007378(&v57);
  v53 = sub_10012260C(v52, v6, v7, v49);
  v55 = v54;

  if (v55)
  {
    SQLiteContext.setNull()();
    goto LABEL_9;
  }

  if (v53 < 0xFFFFFFFF80000000)
  {
LABEL_101:
    __break(1u);
LABEL_102:
    __break(1u);
    return;
  }

  if (v53 > 0x7FFFFFFF)
  {
    goto LABEL_102;
  }

  SQLiteContext.setInt32(_:)(v53);
LABEL_9:
  sub_100014A2C(v6, v7);
}

unint64_t *sub_10012260C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_10021BFE0 != -1)
  {
    swift_once();
  }

  v5 = qword_10021EA50;
  isa = Data._bridgeToObjectiveC()().super.isa;
  [v5 updateData:isa];

  [v5 seekToOffset:0];
  v7 = *(a4 + 16);
  v8 = Data.count.getter();
  if (v8 < 0)
  {
    __break(1u);
    goto LABEL_66;
  }

  v9 = v8;
  if (v7)
  {
    v10 = 0;
    v11 = a4 + 32;
    v47 = a4 + 32;
    v48 = v7;
    while (1)
    {
      v12 = *(v11 + 8 * v10);
      while (1)
      {
        v13 = [v5 position];
        if ((v13 & 0x8000000000000000) == 0 && v13 >= v9)
        {
          v41 = 0;
          goto LABEL_61;
        }

        v14 = 0;
        v15 = 0;
        for (i = 0; ; ++i)
        {
          if (i > 9)
          {
            v20 = 0;
            goto LABEL_21;
          }

          LOBYTE(v50) = 0;
          v17 = [v5 position] + 1;
          if (v17 >= [v5 position] && (v18 = objc_msgSend(v5, "position") + 1, v18 <= objc_msgSend(v5, "length")))
          {
            v19 = [v5 data];
            [v19 getBytes:&v50 range:{objc_msgSend(v5, "position"), 1}];

            [v5 setPosition:{objc_msgSend(v5, "position") + 1}];
          }

          else
          {
            [v5 _setError];
          }

          v15 |= (v50 & 0x7F) << v14;
          if ((v50 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
        }

        v20 = [v5 hasError] ? 0 : v15;
LABEL_21:
        if (v12 == (v20 >> 3))
        {
          break;
        }

        PBReaderSkipValueWithTag();
      }

      if ((v20 & 7) != 2)
      {
        break;
      }

      v21 = 0;
      v22 = 0;
      for (j = 0; ; ++j)
      {
        if (j > 9)
        {
          v22 = 0;
          goto LABEL_36;
        }

        LOBYTE(v50) = 0;
        v24 = [v5 position] + 1;
        if (v24 >= [v5 position] && (v25 = objc_msgSend(v5, "position") + 1, v25 <= objc_msgSend(v5, "length")))
        {
          v26 = [v5 data];
          [v26 getBytes:&v50 range:{objc_msgSend(v5, "position"), 1}];

          [v5 setPosition:{objc_msgSend(v5, "position") + 1}];
        }

        else
        {
          [v5 _setError];
        }

        v22 |= (v50 & 0x7F) << v21;
        if ((v50 & 0x80) == 0)
        {
          break;
        }

        v21 += 7;
      }

      if ([v5 hasError])
      {
        v22 = 0;
      }

      if (v22 < 0)
      {
        goto LABEL_67;
      }

LABEL_36:
      v27 = [v5 position];
      if ((v27 & 0x8000000000000000) != 0)
      {
        goto LABEL_68;
      }

      ++v10;
      v9 = (v27 + v22);
      v11 = v47;
      if (v10 == v48)
      {
        goto LABEL_38;
      }
    }

    sub_10011DDBC();
    swift_allocError();
    v44 = v43;
    v50 = 0;
    v51 = 0xE000000000000000;
    _StringGuts.grow(_:)(38);

    v50 = 0xD000000000000024;
    v51 = 0x80000001001B23E0;
    v45._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    v41 = &v50;
    String.append(_:)(v45);

    v46 = v51;
    *v44 = v50;
    *(v44 + 8) = v46;
    *(v44 + 41) = 12;
    swift_willThrow();
    [v5 updateData:0];
  }

  else
  {
LABEL_38:
    while (1)
    {
      v28 = [v5 position];
      if ((v28 & 0x8000000000000000) == 0 && v28 >= v9)
      {
        break;
      }

      v29 = 0;
      v30 = 0;
      for (k = 0; k <= 9; ++k)
      {
        LOBYTE(v50) = 0;
        v32 = [v5 position] + 1;
        if (v32 >= [v5 position] && (v33 = objc_msgSend(v5, "position") + 1, v33 <= objc_msgSend(v5, "length")))
        {
          v34 = [v5 data];
          [v34 getBytes:&v50 range:{objc_msgSend(v5, "position"), 1}];

          [v5 setPosition:{objc_msgSend(v5, "position") + 1}];
        }

        else
        {
          [v5 _setError];
        }

        v30 |= (v50 & 0x7F) << v29;
        if ((v50 & 0x80) == 0)
        {
          if ([v5 hasError])
          {
            v37 = 0;
          }

          else
          {
            v37 = v30;
          }

          v35 = v37 >> 3;
          if (((v37 >> 3) & 0x80000000) == 0)
          {
            v36 = v37 >> 3;
            goto LABEL_54;
          }

LABEL_66:
          __break(1u);
LABEL_67:
          __break(1u);
LABEL_68:
          __break(1u);
        }

        v29 += 7;
      }

      LODWORD(v35) = 0;
      LODWORD(v36) = 0;
LABEL_54:
      v38 = *(a1 + 16) + 1;
      v39 = (a1 + 36);
      while (--v38)
      {
        v40 = v39;
        v39 += 2;
        if (*(v40 - 1) <= v35 && *v40 >= v35)
        {
          v41 = (v36 & 0x7FFFFFFF);
          goto LABEL_61;
        }
      }

      PBReaderSkipValueWithTag();
    }

    v41 = 0;
LABEL_61:
    [v5 updateData:0];
  }

  return v41;
}