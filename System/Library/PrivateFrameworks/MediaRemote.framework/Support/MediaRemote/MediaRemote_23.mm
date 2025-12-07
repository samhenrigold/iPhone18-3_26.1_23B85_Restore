void *sub_10032595C(void *a1, void *a2)
{
  v5 = *v2;
  v6 = type metadata accessor for HostedRoutingSourceSession(0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6 - 8);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [a2 deviceUID];
  if (!v10 || (v10, ([a2 groupContainsDiscoverableGroupLeader] & 1) != 0))
  {

    return a1;
  }

  v11 = a1[2];
  if (*(v11 + 16))
  {
    sub_10002ADF8(v11 + ((*(v7 + 80) + 32) & ~*(v7 + 80)), v9, type metadata accessor for HostedRoutingSourceSession);
    if (sub_1000325DC())
    {
      v12 = a1[4];
      v21 = a1[3];
      v22 = v12;
      __chkstk_darwin(v12);
      v20[-4] = a2;
      v20[-3] = &v21;
      v18 = v9;
      v19 = v5;

      v13 = sub_10031D5DC(sub_100331580, &v20[-6], v11);
      type metadata accessor for RoutingSourceSessionState();
      a1 = sub_10025E9E4(v13, v21, v22);
      sub_10002AC54(v9, type metadata accessor for HostedRoutingSourceSession);
      return a1;
    }

    sub_10002AC54(v9, type metadata accessor for HostedRoutingSourceSession);
  }

  v21 = 0;
  v22 = 0xE000000000000000;
  _StringGuts.grow(_:)(72);
  v15._countAndFlagsBits = 91;
  v15._object = 0xE100000000000000;
  String.append(_:)(v15);
  v16._countAndFlagsBits = _typeName(_:qualified:)();
  String.append(_:)(v16);

  v17._object = 0x8000000100440540;
  v17._countAndFlagsBits = 0xD000000000000043;
  String.append(_:)(v17);
  v20[1] = a1;
  type metadata accessor for RoutingSourceSessionState();
  _print_unlocked<A, B>(_:_:)();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void *sub_100325C48(void *a1, uint64_t a2)
{
  v41 = *v2;
  v5 = sub_1001BC5A8(&qword_100525C00, &unk_1004511A0);
  __chkstk_darwin(v5 - 8);
  v42 = v37 - v6;
  v7 = sub_1001BC5A8(&qword_100523B88, &unk_100451A50);
  __chkstk_darwin(v7 - 8);
  v9 = v37 - v8;
  v10 = type metadata accessor for HostedRoutingSourceSession(0);
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = v37 - v15;
  v17 = a1[2];
  if (v17[2])
  {
    v18 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    sub_10002ADF8(v17 + v18, v37 - v15, type metadata accessor for HostedRoutingSourceSession);
    if (sub_1000325DC())
    {
      if (v16[*(v10 + 44)] == 1)
      {
        sub_10002AC54(v16, type metadata accessor for HostedRoutingSourceSession);
LABEL_7:

        return a1;
      }

      (*(*a1 + 128))(a2);
      if ((*(v11 + 48))(v9, 1, v10) == 1)
      {
        sub_10002AC54(v16, type metadata accessor for HostedRoutingSourceSession);
        sub_1000038A4(v9, &qword_100523B88, &unk_100451A50);
        goto LABEL_7;
      }

      sub_10002ADF8(v16, v14, type metadata accessor for HostedRoutingSourceSession);
      v14[*(v10 + 44)] = 1;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v17 = sub_10032CC8C(v17);
      }

      v19 = v42;
      if (v17[2])
      {
        sub_10033151C(v14, v17 + v18);
        v20 = sub_100015A78();
        sub_10001D9AC(v20, v19, &qword_100525C00, &unk_1004511A0);
        v21 = type metadata accessor for Logger();
        v22 = *(v21 - 8);
        if ((*(v22 + 48))(v19, 1, v21) == 1)
        {
          sub_1000038A4(v19, &qword_100525C00, &unk_1004511A0);
        }

        else
        {
          v23 = Logger.logObject.getter();
          v24 = static os_log_type_t.info.getter();
          v40 = v23;
          if (os_log_type_enabled(v23, v24))
          {
            v25 = swift_slowAlloc();
            v39 = v24;
            v26 = v25;
            v38 = swift_slowAlloc();
            v44[0] = v38;
            *v26 = 136315138;
            v27 = _typeName(_:qualified:)();
            v29 = sub_10002C9C8(v27, v28, v44);
            v19 = v42;

            v37[1] = v26;
            *(v26 + 4) = v29;
            v30 = v40;
            _os_log_impl(&_mh_execute_header, v40, v39, "[%s] validateLimitedRoutingSessions - local session demoted to limitedRouting due to missing discoverable remote session containing local device", v26, 0xCu);
            sub_100026A44(v38);
          }

          else
          {
          }

          (*(v22 + 8))(v19, v21);
        }

        type metadata accessor for RoutingSourceSessionState();
        v32 = a1[3];
        v31 = a1[4];

        a1 = sub_10025E9E4(v17, v32, v31);
        sub_10002AC54(v14, type metadata accessor for HostedRoutingSourceSession);
        sub_10002AC54(v16, type metadata accessor for HostedRoutingSourceSession);
        sub_1000038A4(v9, &qword_100523B88, &unk_100451A50);
        return a1;
      }

      __break(1u);
    }

    sub_10002AC54(v16, type metadata accessor for HostedRoutingSourceSession);
  }

  v44[0] = 0;
  v44[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(67);
  v34._countAndFlagsBits = 91;
  v34._object = 0xE100000000000000;
  String.append(_:)(v34);
  v35._countAndFlagsBits = _typeName(_:qualified:)();
  String.append(_:)(v35);

  v36._object = 0x8000000100440500;
  v36._countAndFlagsBits = 0xD00000000000003ELL;
  String.append(_:)(v36);
  v43 = a1;
  type metadata accessor for RoutingSourceSessionState();
  _print_unlocked<A, B>(_:_:)();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void *sub_10032625C(void *a1, uint64_t a2)
{
  v80 = *v2;
  v5 = sub_1001BC5A8(&qword_100525C00, &unk_1004511A0);
  v6 = __chkstk_darwin(v5 - 8);
  v81 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v68 - v8;
  v10 = sub_1001BC5A8(&qword_100523B88, &unk_100451A50);
  __chkstk_darwin(v10 - 8);
  v12 = &v68 - v11;
  v13 = type metadata accessor for HostedRoutingSourceSession(0);
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v79 = (&v68 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = __chkstk_darwin(v15);
  v82 = (&v68 - v18);
  v19 = __chkstk_darwin(v17);
  v21 = &v68 - v20;
  v22 = __chkstk_darwin(v19);
  v24 = (&v68 - v23);
  __chkstk_darwin(v22);
  v26 = (&v68 - v25);
  if (RoutingSessionConfiguration.alwaysWantsLocalSession.getter())
  {
    goto LABEL_4;
  }

  (*(*a1 + 128))(a2);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_1000038A4(v12, &qword_100523B88, &unk_100451A50);
LABEL_4:

    return a1;
  }

  sub_10002AF68(v12, v26, type metadata accessor for HostedRoutingSourceSession);
  v27 = a1[4];
  v28 = a1[2];
  if (v28[2])
  {
    v78 = a1[3];
    sub_10002ADF8(v28 + ((*(v14 + 80) + 32) & ~*(v14 + 80)), v24, type metadata accessor for HostedRoutingSourceSession);

    if ((sub_1000325DC() & 1) == 0)
    {
      sub_10002AC54(v24, type metadata accessor for HostedRoutingSourceSession);
      goto LABEL_32;
    }

    v77 = sub_100015A78();
    sub_10001D9AC(v77, v9, &qword_100525C00, &unk_1004511A0);
    v29 = type metadata accessor for Logger();
    a1 = *(v29 - 8);
    v75 = a1[6];
    v76 = a1 + 6;
    if (v75(v9, 1, v29) == 1)
    {
      sub_1000038A4(v9, &qword_100525C00, &unk_1004511A0);
    }

    else
    {
      sub_10002ADF8(v26, v21, type metadata accessor for HostedRoutingSourceSession);
      v30 = Logger.logObject.getter();
      v73 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v30, v73))
      {
        v31 = swift_slowAlloc();
        v74 = a1;
        v32 = v31;
        v72 = v31;
        v70 = swift_slowAlloc();
        v84[0] = v70;
        *v32 = 136315394;
        v33 = _typeName(_:qualified:)();
        v69 = v30;
        v35 = sub_10002C9C8(v33, v34, v84);
        v71 = v27;
        v36 = v29;
        v37 = v35;

        v27 = v71;
        v38 = v72;
        *(v72 + 4) = v37;
        v29 = v36;
        a1 = v74;
        *(v38 + 12) = 2080;
        sub_100004930(&qword_100525778, type metadata accessor for HostedRoutingSourceSession, &unk_100452428);
        v39 = dispatch thunk of CustomStringConvertible.description.getter();
        v41 = v40;
        sub_10002AC54(v21, type metadata accessor for HostedRoutingSourceSession);
        v42 = sub_10002C9C8(v39, v41, v84);

        v43 = v72;
        *(v72 + 14) = v42;
        v44 = v69;
        _os_log_impl(&_mh_execute_header, v69, v73, "[%s] filterRedundantLocalSession - removing local session because local device found in remote session: %s", v43, 0x16u);
        swift_arrayDestroy();
      }

      else
      {

        sub_10002AC54(v21, type metadata accessor for HostedRoutingSourceSession);
      }

      (a1[1])(v9, v29);
    }

    v45 = v82;
    v46 = v28[2];
    if (v46)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v84[0] = v28;
      if (!isUniquelyReferenced_nonNull_native || (v46 - 1) > v28[3] >> 1)
      {
        v28 = sub_100026868(isUniquelyReferenced_nonNull_native, v46, 1, v28, &qword_100525748, &unk_100457D90, type metadata accessor for HostedRoutingSourceSession);
        v84[0] = v28;
      }

      sub_10032F554(0, 1, 0);
      v48 = v78;
      if (*v24 == v78 && v24[1] == v27 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        v49 = v81;
        sub_10001D9AC(v77, v81, &qword_100525C00, &unk_1004511A0);
        if (v75(v49, 1, v29) == 1)
        {
          sub_1000038A4(v49, &qword_100525C00, &unk_1004511A0);
        }

        else
        {
          v74 = a1;
          sub_10002ADF8(v24, v45, type metadata accessor for HostedRoutingSourceSession);
          v50 = v79;
          sub_10002ADF8(v26, v79, type metadata accessor for HostedRoutingSourceSession);
          v51 = Logger.logObject.getter();
          v52 = static os_log_type_t.info.getter();
          if (os_log_type_enabled(v51, v52))
          {
            v53 = swift_slowAlloc();
            LODWORD(v77) = v52;
            v54 = v53;
            v78 = swift_slowAlloc();
            v83 = v78;
            *v54 = 136315650;
            v55 = _typeName(_:qualified:)();
            v82 = v29;
            v57 = sub_10002C9C8(v55, v56, &v83);

            *(v54 + 4) = v57;
            *(v54 + 12) = 2080;
            v58 = *v45;
            v59 = v45[1];

            sub_10002AC54(v45, type metadata accessor for HostedRoutingSourceSession);
            v60 = sub_10002C9C8(v58, v59, &v83);

            *(v54 + 14) = v60;
            *(v54 + 22) = 2080;
            v61 = *v50;
            v62 = v50[1];

            v49 = v81;
            sub_10002AC54(v50, type metadata accessor for HostedRoutingSourceSession);
            v63 = sub_10002C9C8(v61, v62, &v83);

            *(v54 + 24) = v63;
            v29 = v82;
            _os_log_impl(&_mh_execute_header, v51, v77, "[%s] filterRedundantLocalSession - updating activeSessionIdentifier from: %s to: %s", v54, 0x20u);
            swift_arrayDestroy();
          }

          else
          {

            sub_10002AC54(v50, type metadata accessor for HostedRoutingSourceSession);
            sub_10002AC54(v45, type metadata accessor for HostedRoutingSourceSession);
          }

          (v74[1])(v49, v29);
        }

        v48 = *v26;
        v27 = v26[1];
      }

      type metadata accessor for RoutingSourceSessionState();
      a1 = sub_10025E9E4(v28, v48, v27);
      sub_10002AC54(v26, type metadata accessor for HostedRoutingSourceSession);
      sub_10002AC54(v24, type metadata accessor for HostedRoutingSourceSession);
      return a1;
    }

    __break(1u);
  }

LABEL_32:
  v84[0] = 0;
  v84[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(64);
  v65._countAndFlagsBits = 91;
  v65._object = 0xE100000000000000;
  String.append(_:)(v65);
  v66._countAndFlagsBits = _typeName(_:qualified:)();
  String.append(_:)(v66);

  v67._object = 0x80000001004404C0;
  v67._countAndFlagsBits = 0xD00000000000003BLL;
  String.append(_:)(v67);
  v83 = a1;
  type metadata accessor for RoutingSourceSessionState();
  _print_unlocked<A, B>(_:_:)();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void *sub_100326CB0(void *a1, uint64_t a2)
{
  v34 = *v2;
  v35 = a2;
  v36 = type metadata accessor for HostedRoutingItem(0);
  v4 = *(v36 - 8);
  __chkstk_darwin(v36);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1001BC5A8(&qword_100523C18, &qword_100451AF0);
  __chkstk_darwin(v7 - 8);
  v37 = &v33 - v8;
  v9 = type metadata accessor for HostedRoutingSourceSession(0);
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9 - 8);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v16 = &v33 - v15;
  result = __chkstk_darwin(v14);
  v19 = &v33 - v18;
  v20 = a1[2];
  v21 = *(v20 + 16);
  if (v21)
  {
    v22 = 0;
    while (1)
    {
      if (v22 >= *(v20 + 16))
      {
        __break(1u);
LABEL_17:
        __break(1u);
        return result;
      }

      sub_10002ADF8(v20 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v22, v13, type metadata accessor for HostedRoutingSourceSession);
      if (sub_1000325DC())
      {
        break;
      }

      ++v22;
      result = sub_10002AC54(v13, type metadata accessor for HostedRoutingSourceSession);
      if (v21 == v22)
      {
        goto LABEL_6;
      }
    }

    sub_10002AF68(v13, v16, type metadata accessor for HostedRoutingSourceSession);
    result = sub_10002AF68(v16, v19, type metadata accessor for HostedRoutingSourceSession);
    v23 = *(v19 + 4);
    v24 = *(v23 + 16);
    if (v24)
    {
      v25 = 0;
      while (v25 < *(v23 + 16))
      {
        sub_10002ADF8(v23 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v25, v6, type metadata accessor for HostedRoutingItem);
        if (sub_100032ED8())
        {
          v27 = v37;
          sub_10002AF68(v6, v37, type metadata accessor for HostedRoutingItem);
          (*(v4 + 56))(v27, 0, 1, v36);
          v28 = a1[4];
          v38 = a1[3];
          v39 = v28;
          __chkstk_darwin(v28);
          *(&v33 - 4) = v35;
          *(&v33 - 3) = &v38;
          v29 = v34;
          *(&v33 - 2) = v19;
          *(&v33 - 1) = v29;

          v30 = sub_10031D5DC(sub_1003314D8, (&v33 - 6), v20);
          type metadata accessor for RoutingSourceSessionState();
          v31 = v38;
          v32 = v39;

          a1 = sub_10025E9E4(v30, v31, v32);
          sub_1000038A4(v27, &qword_100523C18, &qword_100451AF0);

          goto LABEL_14;
        }

        ++v25;
        result = sub_10002AC54(v6, type metadata accessor for HostedRoutingItem);
        if (v24 == v25)
        {
          goto LABEL_12;
        }
      }

      goto LABEL_17;
    }

LABEL_12:
    v26 = v37;
    (*(v4 + 56))(v37, 1, 1, v36);
    sub_1000038A4(v26, &qword_100523C18, &qword_100451AF0);

LABEL_14:
    sub_10002AC54(v19, type metadata accessor for HostedRoutingSourceSession);
  }

  else
  {
LABEL_6:
  }

  return a1;
}

uint64_t sub_100327150(void *a1, void *a2, void *a3, void *a4, uint64_t a5, const char *a6, const char *a7)
{
  v77 = a6;
  v80 = a5;
  v12 = type metadata accessor for HostedRoutingSourceSession(0);
  v13 = __chkstk_darwin(v12);
  v79 = (&v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = __chkstk_darwin(v13);
  v78 = (&v68 - v16);
  __chkstk_darwin(v15);
  v18 = &v68 - v17;
  v19 = sub_1001BC5A8(&qword_100525C00, &unk_1004511A0);
  v20 = __chkstk_darwin(v19 - 8);
  v22 = &v68 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v24 = &v68 - v23;
  v25 = a1[3];
  if (!v25)
  {
    return 1;
  }

  v74 = a7;
  v75 = a4;
  v26 = a1[2];
  v27 = [a2 groupUID];
  if (!v27)
  {
    return 1;
  }

  v28 = v27;
  v76 = a3;
  v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v31 = v30;

  if (v26 == v29 && v25 == v31)
  {

    goto LABEL_7;
  }

  v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v32 & 1) == 0)
  {
    return 1;
  }

LABEL_7:
  v33 = sub_100015A78();
  sub_10001D9AC(v33, v24, &qword_100525C00, &unk_1004511A0);
  v34 = type metadata accessor for Logger();
  v35 = *(v34 - 8);
  v36 = *(v35 + 48);
  if (v36(v24, 1, v34) == 1)
  {
    sub_1000038A4(v24, &qword_100525C00, &unk_1004511A0);
  }

  else
  {
    v71 = v33;
    sub_10002ADF8(a1, v18, type metadata accessor for HostedRoutingSourceSession);
    v38 = Logger.logObject.getter();
    v70 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v38, v70))
    {
      v39 = swift_slowAlloc();
      v72 = v35;
      v40 = v39;
      v69 = swift_slowAlloc();
      v81 = v69;
      *v40 = 136315394;
      v41 = _typeName(_:qualified:)();
      v73 = v34;
      v43 = sub_10002C9C8(v41, v42, &v81);
      v68 = v38;
      v44 = v43;

      *(v40 + 4) = v44;
      *(v40 + 12) = 2080;
      sub_100004930(&qword_100525778, type metadata accessor for HostedRoutingSourceSession, &unk_100452428);
      v45 = dispatch thunk of CustomStringConvertible.description.getter();
      v47 = v46;
      sub_10002AC54(v18, type metadata accessor for HostedRoutingSourceSession);
      v48 = sub_10002C9C8(v45, v47, &v81);

      *(v40 + 14) = v48;
      v34 = v73;
      v49 = v68;
      _os_log_impl(&_mh_execute_header, v68, v70, v77, v40, 0x16u);
      swift_arrayDestroy();

      v35 = v72;
    }

    else
    {

      sub_10002AC54(v18, type metadata accessor for HostedRoutingSourceSession);
    }

    (*(v35 + 8))(v24, v34);
    v33 = v71;
  }

  if (*a1 == *v76 && a1[1] == v76[1] || (v50 = _stringCompareWithSmolCheck(_:_:expecting:)(), result = 0, (v50 & 1) != 0))
  {
    sub_10001D9AC(v33, v22, &qword_100525C00, &unk_1004511A0);
    if (v36(v22, 1, v34) == 1)
    {
      sub_1000038A4(v22, &qword_100525C00, &unk_1004511A0);
      v52 = v75;
      v51 = v76;
    }

    else
    {
      v72 = v35;
      v73 = v34;
      v53 = v78;
      sub_10002ADF8(a1, v78, type metadata accessor for HostedRoutingSourceSession);
      v52 = v75;
      v54 = v79;
      sub_10002ADF8(v75, v79, type metadata accessor for HostedRoutingSourceSession);
      v55 = Logger.logObject.getter();
      v56 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        v81 = swift_slowAlloc();
        *v57 = 136315650;
        v58 = _typeName(_:qualified:)();
        v60 = sub_10002C9C8(v58, v59, &v81);

        *(v57 + 4) = v60;
        *(v57 + 12) = 2080;
        v61 = *v53;
        v62 = v53[1];

        sub_10002AC54(v53, type metadata accessor for HostedRoutingSourceSession);
        v63 = sub_10002C9C8(v61, v62, &v81);

        *(v57 + 14) = v63;
        *(v57 + 22) = 2080;
        v64 = *v54;
        v65 = v54[1];

        v52 = v75;
        sub_10002AC54(v54, type metadata accessor for HostedRoutingSourceSession);
        v66 = sub_10002C9C8(v64, v65, &v81);

        *(v57 + 24) = v66;
        _os_log_impl(&_mh_execute_header, v55, v56, v74, v57, 0x20u);
        swift_arrayDestroy();
      }

      else
      {

        sub_10002AC54(v54, type metadata accessor for HostedRoutingSourceSession);
        sub_10002AC54(v53, type metadata accessor for HostedRoutingSourceSession);
      }

      v51 = v76;
      (*(v72 + 8))(v22, v73);
    }

    v67 = v52[1];
    *v51 = *v52;
    v51[1] = v67;

    return 0;
  }

  return result;
}

unint64_t sub_100327878(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_100021264();
  v9 = *v8;
  *v7 = *v8;
  (*(v5 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v4);
  v10 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  v11 = (*(v5 + 8))(v7, v4);
  if (v9)
  {
    result = (*(*a1 + 112))(v11);
    v13 = *(result + 24);
    if (v13)
    {
      if (v13 < 1)
      {
        __break(1u);
        goto LABEL_22;
      }

      v14 = *(result + 32);
      v15 = *(result + 16);
      if (v14 < v15)
      {
        v15 = 0;
      }

      v16 = *(result + 8 * (v14 - v15) + 40);

      v18 = (*(*v16 + 104))(v17);
      if (v18 == 2)
      {
        sub_1001BC5A8(&qword_100525748, &unk_100457D90);
        v22 = *(type metadata accessor for HostedRoutingSourceSession(0) - 8);
        v23 = (*(v22 + 80) + 32) & ~*(v22 + 80);
        v24 = swift_allocObject();
        *(v24 + 16) = xmmword_10044EC70;
        v25 = *sub_100028BB8();
        (*(v25 + 888))(0, 0, 3);
        v27 = v26;

        ObjectType = swift_getObjectType();
        v29 = (*(v27 + 56))(ObjectType, v27);
        swift_unknownObjectRelease();
        sub_100024BB0(v29, 0, 0, 0, (v24 + v23));

        v30 = *(**(v2 + 88) + 440);

        v32 = v30(v31);

        v39 = v24;
        sub_100030DE8(v32, &qword_100525748, &unk_100457D90, type metadata accessor for HostedRoutingSourceSession, type metadata accessor for HostedRoutingSourceSession);
        v33 = v39;
        v34 = sub_1000321BC();
        (*(*v34 + 288))(v16 + OBJC_IVAR____TtCC12mediaremoted15RoutingTimeline5Event_routingEvent, v33);
      }

      else
      {
        sub_1002FB794(v18, v19, v20, v21);
      }
    }

    result = sub_10002107C();
    v4 = result;
    if (!(result >> 62))
    {
      v35 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v35)
      {
        goto LABEL_12;
      }

LABEL_20:

      return sub_10031B8F4();
    }
  }

  else
  {
    __break(1u);
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  v35 = result;
  if (!result)
  {
    goto LABEL_20;
  }

LABEL_12:
  if (v35 >= 1)
  {
    for (i = 0; i != v35; ++i)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v37 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v37 = *(v4 + 8 * i + 32);
      }

      sub_100028D64(v37);
    }

    goto LABEL_20;
  }

LABEL_22:
  __break(1u);
  return result;
}

void sub_100327D5C()
{
  v200 = sub_1001BC5A8(&qword_100525F28, &qword_100458120);
  v193 = *(v200 - 8);
  v1 = __chkstk_darwin(v200);
  v199 = (&v188 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v3 = __chkstk_darwin(v1);
  v198 = &v188 - v4;
  v5 = __chkstk_darwin(v3);
  v220 = (&v188 - v6);
  __chkstk_darwin(v5);
  v211 = &v188 - v7;
  v8 = sub_1001BC5A8(&qword_100525F70, &unk_100458170);
  v9 = __chkstk_darwin(v8 - 8);
  v202 = &v188 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v201 = &v188 - v11;
  v218 = type metadata accessor for RoutingSessionConfiguration();
  v12 = *(v218 - 8);
  __chkstk_darwin(v218);
  v217 = &v188 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1001BC5A8(&qword_100523C30, &qword_100451B00);
  __chkstk_darwin(v14 - 8);
  v216 = &v188 - v15;
  v16 = sub_1001BC5A8(&qword_100525F78, &qword_100458A90);
  v17 = __chkstk_darwin(v16 - 8);
  v197 = &v188 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v20 = &v188 - v19;
  v215 = type metadata accessor for HostedRoutingSessionSnapshot(0);
  v21 = *(v215 - 8);
  v22 = __chkstk_darwin(v215);
  v24 = &v188 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v194 = &v188 - v25;
  v26 = sub_1001BC5A8(&qword_100525F80, &qword_100458180);
  v27 = __chkstk_darwin(v26 - 8);
  v29 = (&v188 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v27);
  v31 = (&v188 - v30);
  v229 = 0xD00000000000002CLL;
  v230 = 0x800000010043FEF0;
  v32 = sub_100030790();
  v33 = 0;
  v34 = v32[8];
  v191 = (v32 + 8);
  v196 = v32;
  v35 = 1 << *(v32 + 32);
  if (v35 < 64)
  {
    v36 = ~(-1 << v35);
  }

  else
  {
    v36 = -1;
  }

  v37 = v36 & v34;
  v190 = (v35 + 63) >> 6;
  v189 = "Client snapshot: ";
  v214 = 0x800000010043FF40;
  v195 = v21;
  v212 = (v12 + 16);
  v213 = (v21 + 56);
  v192 = v0;
  v207 = v20;
  v221 = v24;
  v205 = v29;
  v204 = v31;
  if ((v36 & v34) != 0)
  {
    while (1)
    {
      v38 = v0;
      v39 = v33;
LABEL_13:
      v41 = __clz(__rbit64(v37));
      v37 &= v37 - 1;
      v42 = v41 | (v39 << 6);
      v43 = *(v196[6] + 8 * v42);
      v44 = v194;
      sub_10002ADF8(v196[7] + *(v195 + 72) * v42, v194, type metadata accessor for HostedRoutingSessionSnapshot);
      v45 = sub_1001BC5A8(&qword_100525F88, &qword_100458188);
      v46 = *(v45 + 48);
      *v29 = v43;
      sub_10002AF68(v44, v29 + v46, type metadata accessor for HostedRoutingSessionSnapshot);
      (*(*(v45 - 8) + 56))(v29, 0, 1, v45);

      v219 = v39;
LABEL_14:
      sub_10003AEF0(v29, v31, &qword_100525F80, &qword_100458180);
      v47 = sub_1001BC5A8(&qword_100525F88, &qword_100458188);
      if ((*(*(v47 - 8) + 48))(v31, 1, v47) == 1)
      {
        break;
      }

      v48 = *v31;
      sub_10002AF68(v31 + *(v47 + 48), v221, type metadata accessor for HostedRoutingSessionSnapshot);
      v222._countAndFlagsBits = 0x203A746E65696C43;
      v222._object = 0xE800000000000000;
      v49._countAndFlagsBits = sub_100036B00();
      String.append(_:)(v49);

      v50._countAndFlagsBits = 10;
      v50._object = 0xE100000000000000;
      String.append(_:)(v50);
      String.append(_:)(v222);

      v222._countAndFlagsBits = *(*(v48 + OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_context) + 96);
      type metadata accessor for RoutingClientEventContext(0);
      sub_100004930(&qword_100525F98, type metadata accessor for RoutingClientEventContext, &unk_100450F60);
      v51._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v51);

      v52 = v38;
      v53 = sub_100300F7C();
      if (v53[2])
      {
        v54 = sub_100031588(v48);
        v55 = v207;
        if (v56)
        {
          v57 = *(v53[7] + 8 * v54);

          v58 = v221;
          if (*(v57 + 16))
          {
            v203 = v48;
            v59._countAndFlagsBits = 0xD000000000000016;
            v59._object = (v189 | 0x8000000000000000);
            String.append(_:)(v59);
            v60 = 0;
            v206 = v57;
            v61 = v57 + 56;
            v62 = 1 << *(v57 + 32);
            if (v62 < 64)
            {
              v63 = ~(-1 << v62);
            }

            else
            {
              v63 = -1;
            }

            v64 = v63 & *(v57 + 56);
            for (i = (v62 + 63) >> 6; v64; v29 = v205)
            {
              v66 = v60;
LABEL_28:
              v67 = *(v206 + 48) + 56 * (__clz(__rbit64(v64)) | (v66 << 6));
              v69 = *v67;
              v68 = *(v67 + 8);
              v64 &= v64 - 1;
              v70 = *(v67 + 16);
              v71 = *(v67 + 24);
              v210 = v70;
              v209 = v71;
              v72 = *(v67 + 32);
              v73 = *(v67 + 40);
              v74 = *(v67 + 48);
              v228._countAndFlagsBits = 538976288;
              v228._object = 0xE400000000000000;
              v222._countAndFlagsBits = v69;
              v222._object = v68;
              v208 = v68;
              v223 = v70;
              v224 = v71;
              v225 = v72;
              v226 = v73;
              v227 = v74;

              sub_10026D0B8(v70, v71, v72, v73, v74);
              sub_1002856A4();
              v75._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
              String.append(_:)(v75);

              v76._countAndFlagsBits = 10;
              v76._object = 0xE100000000000000;
              String.append(_:)(v76);
              String.append(_:)(v228);

              sub_1002485A4(v210, v209, v72, v73, v74);
              v58 = v221;
            }

            v52 = v192;
            while (1)
            {
              v66 = v60 + 1;
              if (__OFADD__(v60, 1))
              {
                goto LABEL_75;
              }

              if (v66 >= i)
              {

                v55 = v207;
                v48 = v203;
                goto LABEL_35;
              }

              v64 = *(v61 + 8 * v66);
              ++v60;
              if (v64)
              {
                v60 = v66;
                goto LABEL_28;
              }
            }
          }
        }

        else
        {

          v58 = v221;
        }
      }

      else
      {

        v58 = v221;
        v55 = v207;
      }

LABEL_35:
      v78 = sub_100301014();
      if (v78[2] && (v79 = sub_100031588(v48), (v80 & 1) != 0))
      {
        v203 = v48;
        v81 = *(v78[7] + 8 * v79);

        if (*(v81 + 16))
        {
          v82._countAndFlagsBits = 0x20676E69646E6550;
          v82._object = 0xEF0A3A736D657469;
          String.append(_:)(v82);
          v83 = 0;
          v84 = 1 << *(v81 + 32);
          if (v84 < 64)
          {
            v85 = ~(-1 << v84);
          }

          else
          {
            v85 = -1;
          }

          v86 = v85 & *(v81 + 56);
          v87 = (v84 + 63) >> 6;
          while (v86)
          {
            v88 = v83;
LABEL_47:
            v89 = (*(v81 + 48) + ((v88 << 10) | (16 * __clz(__rbit64(v86)))));
            v90 = *v89;
            v91 = v89[1];
            v86 &= v86 - 1;
            v222._countAndFlagsBits = 538976288;
            v222._object = 0xE400000000000000;

            v92._countAndFlagsBits = v90;
            v92._object = v91;
            String.append(_:)(v92);

            v93._countAndFlagsBits = 10;
            v93._object = 0xE100000000000000;
            String.append(_:)(v93);
            String.append(_:)(v222);
          }

          while (1)
          {
            v88 = v83 + 1;
            if (__OFADD__(v83, 1))
            {
              goto LABEL_76;
            }

            if (v88 >= v87)
            {

              v52 = v192;
              v55 = v207;
              v29 = v205;
              goto LABEL_52;
            }

            v86 = *(v81 + 56 + 8 * v88);
            ++v83;
            if (v86)
            {
              v83 = v88;
              goto LABEL_47;
            }
          }
        }

LABEL_52:
        v48 = v203;
      }

      else
      {
      }

      v94 = v52;
      v222._countAndFlagsBits = 0x746F687370616E53;
      v222._object = 0xEA0000000000203ALL;
      v95._countAndFlagsBits = sub_100264AAC();
      String.append(_:)(v95);

      String.append(_:)(v222);

      v222._countAndFlagsBits = 0;
      v222._object = 0xE000000000000000;
      _StringGuts.grow(_:)(19);

      v222._countAndFlagsBits = 0xD000000000000011;
      v222._object = v214;
      v96 = v216;
      sub_10002ADF8(v58, v216, type metadata accessor for HostedRoutingSessionSnapshot);
      (*v213)(v96, 0, 1, v215);
      v97 = v217;
      (*v212)(v217, v48 + OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_configuration, v218);
      sub_100265398(v96, v97, v55);
      v98 = type metadata accessor for RoutingSessionSnapshot();
      v99 = v55;
      v100 = *(v98 - 8);
      if ((*(v100 + 48))(v99, 1, v98) == 1)
      {
        goto LABEL_78;
      }

      v101 = RoutingSessionSnapshot.debugDescription.getter();
      v103 = v102;
      (*(v100 + 8))(v99, v98);
      v104._countAndFlagsBits = v101;
      v104._object = v103;
      String.append(_:)(v104);

      String.append(_:)(v222);

      sub_10002AC54(v58, type metadata accessor for HostedRoutingSessionSnapshot);
      v33 = v219;
      v31 = v204;
      v0 = v94;
      if (!v37)
      {
        goto LABEL_6;
      }
    }

    v105._countAndFlagsBits = 0xD000000000000014;
    v105._object = 0x800000010043FF20;
    String.append(_:)(v105);
    v106 = sub_1003010FC();
    v107 = 0;
    v108 = v106[8];
    v209 = v106 + 8;
    v210 = v106;
    v109 = 1 << *(v106 + 32);
    v110 = -1;
    if (v109 < 64)
    {
      v110 = ~(-1 << v109);
    }

    v111 = v110 & v108;
    v112 = (v109 + 63) >> 6;
    v113 = v220;
    v114 = v202;
    v219 = v112;
    if ((v110 & v108) != 0)
    {
      while (1)
      {
        v115 = v107;
LABEL_67:
        v118 = __clz(__rbit64(v111));
        v111 &= v111 - 1;
        v119 = v118 | (v115 << 6);
        v120 = (v210[6] + 16 * v119);
        v122 = *v120;
        v121 = v120[1];
        v123 = v211;
        sub_10001D9AC(v210[7] + *(v193 + 72) * v119, v211, &qword_100525F28, &qword_100458120);
        v124 = sub_1001BC5A8(&qword_100525F90, &qword_100458190);
        v125 = *(v124 + 48);
        *v114 = v122;
        v114[1] = v121;
        sub_10003AEF0(v123, v114 + v125, &qword_100525F28, &qword_100458120);
        (*(*(v124 - 8) + 56))(v114, 0, 1, v124);

        v117 = v115;
        v113 = v220;
LABEL_68:
        v126 = v201;
        sub_10003AEF0(v114, v201, &qword_100525F70, &unk_100458170);
        v127 = sub_1001BC5A8(&qword_100525F90, &qword_100458190);
        if ((*(*(v127 - 8) + 48))(v126, 1, v127) == 1)
        {
          break;
        }

        v221 = v117;

        v128 = (v126 + *(v127 + 48));
        v129 = *v128;
        v130 = v200;
        v131 = *(v200 + 48);
        v132 = v198;
        sub_10002AF68(v128 + v131, &v198[v131], type metadata accessor for HostedRoutingSessionSnapshot);
        v133 = *(v130 + 48);
        *v113 = v129;
        sub_10002AF68(&v132[v131], v113 + v133, type metadata accessor for HostedRoutingSessionSnapshot);
        v222._countAndFlagsBits = 0x203A746E65696C43;
        v222._object = 0xE800000000000000;
        v134._countAndFlagsBits = sub_1003001B8();
        String.append(_:)(v134);

        v135._countAndFlagsBits = 10;
        v135._object = 0xE100000000000000;
        String.append(_:)(v135);
        String.append(_:)(v222);

        v136 = v211;
        sub_10001D9AC(v113, v211, &qword_100525F28, &qword_100458120);
        v137 = *(v130 + 48);
        v138 = *(*v136 + 32);

        v139 = *(v138 + 96);

        v222._countAndFlagsBits = v139;
        type metadata accessor for RoutingClientEventContext(0);
        sub_100004930(&qword_100525F98, type metadata accessor for RoutingClientEventContext, &unk_100450F60);
        v140 = dispatch thunk of CustomStringConvertible.description.getter();
        v142 = v141;

        sub_10002AC54(v136 + v137, type metadata accessor for HostedRoutingSessionSnapshot);
        v143._countAndFlagsBits = v140;
        v143._object = v142;
        String.append(_:)(v143);

        v222._countAndFlagsBits = 0x746F687370616E53;
        v222._object = 0xEA0000000000203ALL;
        sub_10001D9AC(v220, v136, &qword_100525F28, &qword_100458120);

        v144 = *(v130 + 48);
        v145 = sub_100264AAC();
        v147 = v146;
        v148 = v136 + v144;
        v113 = v220;
        sub_10002AC54(v148, type metadata accessor for HostedRoutingSessionSnapshot);
        v149._countAndFlagsBits = v145;
        v149._object = v147;
        String.append(_:)(v149);

        String.append(_:)(v222);

        v222._countAndFlagsBits = 0;
        v222._object = 0xE000000000000000;
        _StringGuts.grow(_:)(20);

        v222._countAndFlagsBits = 0xD000000000000011;
        v222._object = v214;
        sub_10001D9AC(v113, v136, &qword_100525F28, &qword_100458120);

        v150 = v136 + *(v130 + 48);
        v151 = v197;
        v152 = v216;
        sub_10002AF68(v150, v216, type metadata accessor for HostedRoutingSessionSnapshot);
        (*v213)(v152, 0, 1, v215);
        v153 = v199;
        sub_10001D9AC(v113, v199, &qword_100525F28, &qword_100458120);
        v154 = *(v130 + 48);
        v155 = v217;
        (*v212)(v217, *v153 + OBJC_IVAR____TtCCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client10Descriptor_configuration, v218);

        sub_100265398(v152, v155, v151);
        sub_10002AC54(v153 + v154, type metadata accessor for HostedRoutingSessionSnapshot);
        v156 = type metadata accessor for RoutingSessionSnapshot();
        v157 = *(v156 - 8);
        if ((*(v157 + 48))(v151, 1, v156) == 1)
        {
          goto LABEL_79;
        }

        v158 = RoutingSessionSnapshot.debugDescription.getter();
        v160 = v159;
        (*(v157 + 8))(v151, v156);
        v161._countAndFlagsBits = v158;
        v161._object = v160;
        String.append(_:)(v161);

        v162._countAndFlagsBits = 10;
        v162._object = 0xE100000000000000;
        String.append(_:)(v162);
        String.append(_:)(v222);

        sub_1000038A4(v113, &qword_100525F28, &qword_100458120);
        v107 = v221;
        v114 = v202;
        v112 = v219;
        if (!v111)
        {
          goto LABEL_60;
        }
      }

      v164._countAndFlagsBits = 10;
      v164._object = 0xE100000000000000;
      String.append(_:)(v164);
      sub_100028BB8();
      sub_1002C9EE8();
      v166 = v165;
      v168 = v167;

      v169._countAndFlagsBits = v166;
      v169._object = v168;
      String.append(_:)(v169);

      v170._countAndFlagsBits = 10;
      v170._object = 0xE100000000000000;
      String.append(_:)(v170);
      sub_100030F88();
      v171 = sub_10033C42C();
      v173 = v172;

      v174._countAndFlagsBits = v171;
      v174._object = v173;
      String.append(_:)(v174);

      v175._countAndFlagsBits = 10;
      v175._object = 0xE100000000000000;
      String.append(_:)(v175);
      sub_100301054();
      v176 = sub_10024E44C();
      v178 = v177;

      v179._countAndFlagsBits = v176;
      v179._object = v178;
      String.append(_:)(v179);

      v180._countAndFlagsBits = 10;
      v180._object = 0xE100000000000000;
      String.append(_:)(v180);
      type metadata accessor for Preferences();
      v181._countAndFlagsBits = static Preferences.diagnosticDescription.getter();
      String.append(_:)(v181);

      v182._countAndFlagsBits = 10;
      v182._object = 0xE100000000000000;
      String.append(_:)(v182);
      sub_1000321BC();
      v183 = sub_1002FD9D4();
      v185 = v184;

      v186._countAndFlagsBits = v183;
      v186._object = v185;
      String.append(_:)(v186);

      v187._countAndFlagsBits = 10;
      v187._object = 0xE100000000000000;
      String.append(_:)(v187);
      return;
    }

LABEL_60:
    if (v112 <= v107 + 1)
    {
      v116 = v107 + 1;
    }

    else
    {
      v116 = v112;
    }

    v117 = v116 - 1;
    while (1)
    {
      v115 = v107 + 1;
      if (__OFADD__(v107, 1))
      {
        break;
      }

      if (v115 >= v112)
      {
        v163 = sub_1001BC5A8(&qword_100525F90, &qword_100458190);
        (*(*(v163 - 8) + 56))(v114, 1, 1, v163);
        v111 = 0;
        goto LABEL_68;
      }

      v111 = v209[v115];
      ++v107;
      if (v111)
      {
        goto LABEL_67;
      }
    }
  }

  else
  {
LABEL_6:
    if (v190 <= v33 + 1)
    {
      v40 = v33 + 1;
    }

    else
    {
      v40 = v190;
    }

    while (1)
    {
      v39 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        break;
      }

      if (v39 >= v190)
      {
        v219 = v40 - 1;
        v38 = v0;
        v77 = sub_1001BC5A8(&qword_100525F88, &qword_100458188);
        (*(*(v77 - 8) + 56))(v29, 1, 1, v77);
        v37 = 0;
        goto LABEL_14;
      }

      v37 = *&v191[8 * v39];
      ++v33;
      if (v37)
      {
        v38 = v0;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
  }

  __break(1u);
LABEL_78:
  __break(1u);
LABEL_79:
  __break(1u);
}

uint64_t sub_1003293A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HostedRoutingSession(0);
  v5 = __chkstk_darwin(v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v10 = &v18 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      v16 = 1;
    }

    else
    {
      v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = a1 + v12;
      v14 = a2 + v12;
      v15 = *(v8 + 72);
      do
      {
        sub_10002ADF8(v13, v10, type metadata accessor for HostedRoutingSession);
        sub_10002ADF8(v14, v7, type metadata accessor for HostedRoutingSession);
        sub_100004930(&qword_100523CE0, type metadata accessor for HostedRoutingSession, &unk_100452878);
        v16 = dispatch thunk of static Equatable.== infix(_:_:)();
        sub_10002AC54(v7, type metadata accessor for HostedRoutingSession);
        sub_10002AC54(v10, type metadata accessor for HostedRoutingSession);
        if ((v16 & 1) == 0)
        {
          break;
        }

        v14 += v15;
        v13 += v15;
        --v11;
      }

      while (v11);
    }
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

uint64_t sub_1003295AC()
{
  v1 = *(type metadata accessor for RoutingSessionConfiguration() - 8);
  v2 = (*(v1 + 80) + 56) & ~*(v1 + 80);
  return (*(**(v0 + 16) + 504))(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), v0 + v2, *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8)), 1);
}

void sub_10032970C(uint64_t a2@<X8>)
{
  v4 = *v2;
  sub_10028BE34();
  v5 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v6 = -1 << *(v4 + 32);
  v7 = v5 & ~v6;
  v8 = 0uLL;
  if ((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v9 = ~v6;
    sub_100276B34();
    while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
    {
      v7 = (v7 + 1) & v9;
      if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        v10 = 0;
        v11 = 0;
        v12 = 0;
        v13 = 0uLL;
        v8 = 0uLL;
        goto LABEL_10;
      }
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v2;
    v19 = *v2;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1003298C0();
      v15 = v19;
    }

    v16 = *(v15 + 48) + 56 * v7;
    v10 = *v16;
    v11 = *(v16 + 8);
    v17 = *(v16 + 32);
    v18 = *(v16 + 16);
    v12 = *(v16 + 48);
    sub_100329FF4(v7);
    v13 = v17;
    v8 = v18;
    *v2 = v19;
  }

  else
  {
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0uLL;
  }

LABEL_10:
  *a2 = v10;
  *(a2 + 8) = v11;
  *(a2 + 16) = v8;
  *(a2 + 32) = v13;
  *(a2 + 48) = v12;
}

void sub_1003298C0()
{
  sub_1001BC5A8(&qword_1005266F0, &qword_1004584B0);
  v23 = v0;
  v1 = *v0;
  v24 = static _SetStorage.copy(original:)();
  if (*(v1 + 16))
  {
    v2 = (v24 + 56);
    v3 = ((1 << *(v24 + 32)) + 63) >> 6;
    if (v24 != v1 || v2 >= v1 + 56 + 8 * v3)
    {
      memmove(v2, (v1 + 56), 8 * v3);
    }

    v5 = 0;
    *(v24 + 16) = *(v1 + 16);
    v6 = 1 << *(v1 + 32);
    v7 = *(v1 + 56);
    v8 = -1;
    if (v6 < 64)
    {
      v8 = ~(-1 << v6);
    }

    v9 = v8 & v7;
    v10 = (v6 + 63) >> 6;
    if ((v8 & v7) != 0)
    {
      do
      {
        v11 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_17:
        v14 = 56 * (v11 | (v5 << 6));
        v15 = *(v1 + 48) + v14;
        v16 = *(v15 + 8);
        v17 = *(v15 + 16);
        v18 = *(v15 + 24);
        v19 = *(v15 + 32);
        v20 = *(v15 + 40);
        v21 = *(v24 + 48) + v14;
        v22 = *(v15 + 48);
        *v21 = *v15;
        *(v21 + 8) = v16;
        *(v21 + 16) = v17;
        *(v21 + 24) = v18;
        *(v21 + 32) = v19;
        *(v21 + 40) = v20;
        *(v21 + 48) = v22;

        sub_10026D0B8(v17, v18, v19, v20, v22);
      }

      while (v9);
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
        goto LABEL_19;
      }

      v13 = *(v1 + 56 + 8 * v5);
      ++v12;
      if (v13)
      {
        v11 = __clz(__rbit64(v13));
        v9 = (v13 - 1) & v13;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v23 = v24;
  }
}

void sub_100329A74(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1001BC5A8(&qword_1005266F0, &qword_1004584B0);
  v34 = static _SetStorage.resize(original:capacity:move:)();
  if (*(v3 + 16))
  {
    v4 = 0;
    v5 = v3 + 56;
    v6 = 1 << *(v3 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v3 + 56);
    v29 = (v6 + 63) >> 6;
    v9 = v34 + 56;
    v30 = v3;
    while (v8)
    {
      v12 = __clz(__rbit64(v8));
      v33 = (v8 - 1) & v8;
LABEL_15:
      v15 = *(v3 + 48) + 56 * (v12 | (v4 << 6));
      v16 = *(v15 + 16);
      v17 = *(v15 + 24);
      v18 = *(v15 + 32);
      v19 = *(v15 + 40);
      v20 = *(v15 + 48);
      v31 = *(v15 + 8);
      v32 = *v15;

      sub_10026D0B8(v16, v17, v18, v19, v20);
      sub_10028BE34();
      v21 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v22 = -1 << *(v34 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v9 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v9 + 8 * v24);
          if (v28 != -1)
          {
            v10 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_26;
      }

      v10 = __clz(__rbit64((-1 << v23) & ~*(v9 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v9 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
      v11 = *(v34 + 48) + 56 * v10;
      *v11 = v32;
      *(v11 + 8) = v31;
      *(v11 + 16) = v16;
      v3 = v30;
      *(v11 + 24) = v17;
      *(v11 + 32) = v18;
      *(v11 + 40) = v19;
      *(v11 + 48) = v20;
      ++*(v34 + 16);
      v8 = v33;
    }

    v13 = v4;
    while (1)
    {
      v4 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v4 >= v29)
      {
        goto LABEL_24;
      }

      v14 = *(v5 + 8 * v4);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v33 = (v14 - 1) & v14;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_24:

    *v2 = v34;
  }
}

void sub_100329D40(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1001BC5A8(&qword_1005266F0, &qword_1004584B0);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v30 = v2;
    v31 = v3;
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
    v12 = v4 + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = *(v3 + 48) + 56 * (v15 | (v6 << 6));
      v19 = *v18;
      v20 = *(v18 + 16);
      v36 = *(v18 + 8);
      v34 = *(v18 + 32);
      v35 = *(v18 + 24);
      v33 = *(v18 + 40);
      v32 = *(v18 + 48);
      sub_10028BE34();
      v21 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v22 = -1 << *(v5 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v5 + 48) + 56 * v13;
      *v14 = v19;
      *(v14 + 8) = v36;
      *(v14 + 16) = v20;
      *(v14 + 24) = v35;
      *(v14 + 32) = v34;
      *(v14 + 40) = v33;
      *(v14 + 48) = v32;
      ++*(v5 + 16);
      v3 = v31;
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

    v29 = 1 << *(v3 + 32);
    if (v29 >= 64)
    {
      bzero(v7, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v29;
    }

    v2 = v30;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_100329FF4(unint64_t a1)
{
  v2 = a1;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (a1 + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      sub_10028BE34();
      do
      {
        v13 = 56 * v6;
        v14 = dispatch thunk of Hashable._rawHashValue(seed:)() & v7;
        if (v2 >= v9)
        {
          if (v14 >= v9 && v2 >= v14)
          {
LABEL_16:
            v17 = *(v3 + 48);
            v18 = v17 + 56 * v2;
            v19 = (v17 + v13);
            if (56 * v2 < v13 || v18 >= v19 + 56 || v2 != v6)
            {
              v10 = *v19;
              v11 = v19[1];
              v12 = v19[2];
              *(v18 + 48) = *(v19 + 6);
              *(v18 + 16) = v11;
              *(v18 + 32) = v12;
              *v18 = v10;
              v2 = v6;
            }
          }
        }

        else if (v14 >= v9 || v2 >= v14)
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
    *(v4 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v20 = *(v3 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v22;
    ++*(v3 + 36);
  }
}

uint64_t sub_10032A1F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_100031588(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v19 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_100039510();
      v9 = v19;
    }

    v10 = *(v9 + 56);
    v11 = type metadata accessor for HostedRoutingSessionSnapshot(0);
    v18 = *(v11 - 8);
    sub_10002AF68(v10 + *(v18 + 72) * v7, a2, type metadata accessor for HostedRoutingSessionSnapshot);
    sub_10032B314(v7, v9);
    *v3 = v9;
    v12 = *(v18 + 56);
    v13 = a2;
    v14 = 0;
    v15 = v11;
  }

  else
  {
    v16 = type metadata accessor for HostedRoutingSessionSnapshot(0);
    v12 = *(*(v16 - 8) + 56);
    v15 = v16;
    v13 = a2;
    v14 = 1;
  }

  return v12(v13, v14, 1, v15);
}

uint64_t sub_10032A358@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_10000698C(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v20 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_10032C754();
      v10 = v20;
    }

    v11 = *(v10 + 56);
    v12 = sub_1001BC5A8(&qword_100525F28, &qword_100458120);
    v19 = *(v12 - 8);
    sub_10003AEF0(v11 + *(v19 + 72) * v8, a3, &qword_100525F28, &qword_100458120);
    sub_10032B510(v8, v10);
    *v4 = v10;
    v13 = *(v19 + 56);
    v14 = a3;
    v15 = 0;
    v16 = v12;
  }

  else
  {
    v17 = sub_1001BC5A8(&qword_100525F28, &qword_100458120);
    v13 = *(*(v17 - 8) + 56);
    v16 = v17;
    v14 = a3;
    v15 = 1;
  }

  return v13(v14, v15, 1, v16);
}

uint64_t sub_10032A4E0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v7 = sub_100031588(a1);
  if ((v8 & 1) == 0)
  {
    return 0;
  }

  v9 = v7;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *v3;
  v14 = *v6;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_10032C9B8(a2, a3);
    v11 = v14;
  }

  v12 = *(*(v11 + 56) + 8 * v9);
  sub_10032B714(v9, v11);
  *v6 = v11;
  return v12;
}

double sub_10032A5AC()
{
  v1 = *(sub_1001BC5A8(&qword_100525F38, &unk_100458130) - 8);
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0 + ((*(v1 + 80) + 40) & ~*(v1 + 80));

  return sub_10030494C(v2, v3, v4, v5);
}

uint64_t sub_10032A620(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_10000698C(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *v2;
  v11 = *v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_10032CB0C();
    v8 = v11;
  }

  v9 = *(*(v8 + 56) + 16 * v6);
  sub_10021A064(v6, v8);
  *v3 = v8;
  return v9;
}

void sub_10032A6D0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for HostedRoutingSessionSnapshot(0);
  v36 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v38 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  sub_1001BC5A8(&qword_100526720, &qword_1004584E8);
  v37 = v4;
  v8 = static _DictionaryStorage.resize(original:capacity:move:)();
  v9 = v8;
  if (*(v7 + 16))
  {
    v35 = v2;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = v8 + 64;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = v18 | (v10 << 6);
      v22 = *(*(v7 + 48) + 8 * v21);
      v23 = *(v36 + 72);
      v24 = *(v7 + 56) + v23 * v21;
      if (v37)
      {
        sub_10002AF68(v24, v38, type metadata accessor for HostedRoutingSessionSnapshot);
      }

      else
      {
        sub_10002ADF8(v24, v38, type metadata accessor for HostedRoutingSessionSnapshot);
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      v25 = Hasher._finalize()();
      v26 = -1 << *(v9 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v16 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v16 + 8 * v28);
          if (v32 != -1)
          {
            v17 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v17 = __clz(__rbit64((-1 << v27) & ~*(v16 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v9 + 48) + 8 * v17) = v22;
      sub_10002AF68(v38, *(v9 + 56) + v23 * v17, type metadata accessor for HostedRoutingSessionSnapshot);
      ++*(v9 + 16);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v20 = v11[v10];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v7 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero((v7 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v33;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
}

void sub_10032AA44(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_1001BC5A8(&qword_100525F28, &qword_100458120);
  v40 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v42 = &v38 - v6;
  v7 = *v2;
  sub_1001BC5A8(&qword_100526718, &qword_1004584E0);
  v41 = v4;
  v8 = static _DictionaryStorage.resize(original:capacity:move:)();
  v9 = v8;
  if (*(v7 + 16))
  {
    v38 = v2;
    v39 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = v8 + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 16 * v22);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(v40 + 72);
      v28 = v23 + v27 * v22;
      if (v41)
      {
        sub_10003AEF0(v28, v42, &qword_100525F28, &qword_100458120);
      }

      else
      {
        sub_10001D9AC(v28, v42, &qword_100525F28, &qword_100458120);
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      v29 = Hasher._finalize()();
      v30 = -1 << *(v9 + 32);
      v31 = v29 & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v16 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v16 + 8 * v32);
          if (v36 != -1)
          {
            v17 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v17 = __clz(__rbit64((-1 << v31) & ~*(v16 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v25;
      v18[1] = v26;
      sub_10003AEF0(v42, *(v9 + 56) + v27 * v17, &qword_100525F28, &qword_100458120);
      ++*(v9 + 16);
      v7 = v39;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v41 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v37 = 1 << *(v7 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v11, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v37;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
}

void sub_10032ADC0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  sub_1001BC5A8(a3, a4);
  v33 = v6;
  v8 = static _DictionaryStorage.resize(original:capacity:move:)();
  v9 = v8;
  if (*(v7 + 16))
  {
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = v8 + 64;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = v18 | (v10 << 6);
      v22 = *(*(v7 + 48) + 8 * v21);
      v23 = *(*(v7 + 56) + 8 * v21);
      if ((v33 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      v24 = Hasher._finalize()();
      v25 = -1 << *(v9 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v16 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v16 + 8 * v27);
          if (v31 != -1)
          {
            v17 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v17 = __clz(__rbit64((-1 << v26) & ~*(v16 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v9 + 48) + 8 * v17) = v22;
      *(*(v9 + 56) + 8 * v17) = v23;
      ++*(v9 + 16);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v20 = v11[v10];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_33;
    }

    v32 = 1 << *(v7 + 32);
    v5 = v4;
    if (v32 >= 64)
    {
      bzero((v7 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v32;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
}

void sub_10032B05C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1001BC5A8(&qword_1005266E0, &unk_100458490);
  v34 = v4;
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
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
    v14 = v6 + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = 16 * (v18 | (v8 << 6));
      v22 = (*(v5 + 48) + v21);
      v23 = *v22;
      v24 = v22[1];
      v35 = *(*(v5 + 56) + v21);
      if ((v34 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      v25 = Hasher._finalize()();
      v26 = -1 << *(v7 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v7 + 56) + v16) = v35;
      ++*(v7 + 16);
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_10032B314(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    while (1)
    {
      Hasher.init(_seed:)();

      String.hash(into:)();
      v9 = Hasher._finalize()();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v10 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v11 = *(a2 + 48);
      v12 = (v11 + 8 * v3);
      v13 = (v11 + 8 * v6);
      if (v3 != v6 || v12 >= v13 + 1)
      {
        *v12 = *v13;
      }

      v14 = *(a2 + 56);
      v15 = *(*(type metadata accessor for HostedRoutingSessionSnapshot(0) - 8) + 72);
      v16 = v15 * v3;
      v17 = v14 + v15 * v3;
      v18 = v15 * v6;
      v19 = v14 + v15 * v6 + v15;
      if (v16 < v18 || v17 >= v19)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v16 == v18)
        {
          goto LABEL_5;
        }

        swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v10 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v10)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
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

unint64_t sub_10032B510(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    while (1)
    {
      Hasher.init(_seed:)();

      String.hash(into:)();
      v9 = Hasher._finalize()();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v10 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v11 = *(a2 + 48);
      v12 = (v11 + 16 * v3);
      v13 = (v11 + 16 * v6);
      if (v3 != v6 || v12 >= v13 + 1)
      {
        *v12 = *v13;
      }

      v14 = *(a2 + 56);
      v15 = *(*(sub_1001BC5A8(&qword_100525F28, &qword_100458120) - 8) + 72);
      v16 = v15 * v3;
      result = v14 + v15 * v3;
      v17 = v15 * v6;
      v18 = v14 + v15 * v6 + v15;
      if (v16 < v17 || result >= v18)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v16 == v17)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v10 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v10)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

void sub_10032B714(int64_t a1, uint64_t a2)
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
      Hasher.init(_seed:)();

      String.hash(into:)();
      v9 = Hasher._finalize()();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 8 * v3);
        v13 = (v11 + 8 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }
}

void sub_10032B8D4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_10000698C(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_15;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 >= v15 && (a4 & 1) != 0)
  {
LABEL_7:
    v18 = *v5;
    if (v16)
    {
LABEL_8:
      v19 = v18[7];
      v20 = sub_1001BC5A8(&qword_100525F28, &qword_100458120);
      sub_10001CECC(a1, v19 + *(*(v20 - 8) + 72) * v12, &qword_100525F28, &qword_100458120);
      return;
    }

    goto LABEL_11;
  }

  if (v17 >= v15 && (a4 & 1) == 0)
  {
    sub_10032C754();
    goto LABEL_7;
  }

  sub_10032AA44(v15, a4 & 1);
  v21 = sub_10000698C(a2, a3);
  if ((v16 & 1) != (v22 & 1))
  {
LABEL_15:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v12 = v21;
  v18 = *v5;
  if (v16)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_10032C698(v12, a2, a3, a1, v18);
}

unint64_t sub_10032BA48()
{
  result = qword_100525F48;
  if (!qword_100525F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100525F48);
  }

  return result;
}

uint64_t sub_10032BAF8()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  ObjectType = swift_getObjectType();
  return (*(v1 + 56))(v2, v3, v4, ObjectType, v1);
}

uint64_t sub_10032BB64()
{
  v1 = v0[3];
  v3 = v0[4];
  v2 = v0[5];
  ObjectType = swift_getObjectType();
  return (*(v1 + 56))(v3, v2, 0, ObjectType, v1);
}

double sub_10032BBC4()
{
  v1 = *(type metadata accessor for HostedRoutingSessionSnapshot(0) - 8);
  v2 = (*(v1 + 80) + 80) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for RoutingSessionConfiguration() - 8);
  v5 = (v2 + v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(type metadata accessor for RoutingSessionConfiguration.Attribution() - 8);
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v10 = (*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_1003072F4((v0 + 16), *(v0 + 72), v0 + v2, v0 + v5, *(v0 + v6), *(v0 + v7), v0 + v9, *(v0 + v10), *(v0 + v10 + 8), *(v0 + ((v10 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v10 + 23) & 0xFFFFFFFFFFFFFFF8) + 8), *(v0 + ((((v10 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_10032BD68()
{

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10032BE1C()
{
  v1 = *(type metadata accessor for RoutingDialog.Action() - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  return (*(**(v0 + 16) + 536))(*(v0 + 24), *(v0 + 32), v0 + v2, *(v0 + v3), *(v0 + v3 + 8), 1);
}

uint64_t sub_10032BEE0()
{
  v1 = *(type metadata accessor for RoutingControl() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  return (*(**(v0 + 16) + 544))(v0 + v2, *v3, v3[1], 1);
}

uint64_t sub_10032BFA0()
{
  v1 = *(type metadata accessor for RoutingControl() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v4 = *(*(v0 + 16) + OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_externalClient + 8);
  ObjectType = swift_getObjectType();
  v6 = *(v4 + 64);
  swift_unknownObjectRetain();
  v6(v0 + v2, v3, ObjectType, v4);

  return swift_unknownObjectRelease();
}

double sub_10032C09C(uint64_t a1)
{
  v3 = *(type metadata accessor for RoutingControl() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + v5);
  v7 = *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));
  v8 = *(v1 + 16);

  return sub_10031031C(a1, v8, v1 + v4, v6, v7);
}

uint64_t sub_10032C148()
{
  v1 = *(type metadata accessor for RoutingControls.TVRemoteControl.Context() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(*(v0 + 16) + OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_externalClient + 8);
  ObjectType = swift_getObjectType();
  v5 = *(v3 + 40);
  swift_unknownObjectRetain();
  v5(v0 + v2, ObjectType, v3);

  return swift_unknownObjectRelease();
}

uint64_t sub_10032C214()
{
  v1 = *(type metadata accessor for RoutingControl() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(*(v0 + 16) + OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_externalClient + 8);
  ObjectType = swift_getObjectType();
  v5 = *(v3 + 64);
  swift_unknownObjectRetain();
  v5(v0 + v2, 0, ObjectType, v3);

  return swift_unknownObjectRelease();
}

void sub_10032C2E4(uint64_t a1, uint64_t a2, char a3, uint64_t *a4, uint64_t *a5)
{
  v8 = v5;
  v12 = *v5;
  v13 = sub_100031588(a2);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 < v18 || (a3 & 1) != 0)
    {
      sub_10032ADC0(v18, a3 & 1, a4, a5);
      v13 = sub_100031588(a2);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        type metadata accessor for RoutingSessionServer.Client(0);
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return;
      }
    }

    else
    {
      v21 = v13;
      sub_10032C9B8(a4, a5);
      v13 = v21;
    }
  }

  v23 = *v8;
  if (v19)
  {
    *(v23[7] + 8 * v13) = a1;

    return;
  }

  v23[(v13 >> 6) + 8] |= 1 << v13;
  *(v23[6] + 8 * v13) = a2;
  *(v23[7] + 8 * v13) = a1;
  v24 = v23[2];
  v17 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v25;
}

void sub_10032C468(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_10000698C(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_10032B05C(v18, a5 & 1);
      v13 = sub_10000698C(a3, a4);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return;
      }
    }

    else
    {
      v21 = v13;
      sub_10032CB0C();
      v13 = v21;
    }
  }

  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v13);
    *v24 = a1;
    v24[1] = a2;

    return;
  }

  v23[(v13 >> 6) + 8] |= 1 << v13;
  v25 = (v23[6] + 16 * v13);
  *v25 = a3;
  v25[1] = a4;
  v26 = (v23[7] + 16 * v13);
  *v26 = a1;
  v26[1] = a2;
  v27 = v23[2];
  v17 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v28;
}

uint64_t sub_10032C5F0(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  v7 = a4[7];
  v8 = type metadata accessor for HostedRoutingSessionSnapshot(0);
  result = sub_10002AF68(a3, v7 + *(*(v8 - 8) + 72) * a1, type metadata accessor for HostedRoutingSessionSnapshot);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

uint64_t sub_10032C698(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = sub_1001BC5A8(&qword_100525F28, &qword_100458120);
  result = sub_10003AEF0(a4, v9 + *(*(v10 - 8) + 72) * a1, &qword_100525F28, &qword_100458120);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

void sub_10032C754()
{
  v1 = v0;
  v2 = sub_1001BC5A8(&qword_100525F28, &qword_100458120);
  v32 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v31 = &v29 - v3;
  sub_1001BC5A8(&qword_100526718, &qword_1004584E0);
  v4 = *v0;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    v30 = v1;
    v7 = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v8 + 8 * v9)
    {
      memmove(v7, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v33 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    v14 = *(v4 + 64);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v15 = v13 & v14;
    v16 = (v12 + 63) >> 6;
    if ((v13 & v14) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v34 = (v15 - 1) & v15;
LABEL_14:
        v20 = v17 | (v10 << 6);
        v21 = 16 * v20;
        v22 = (*(v4 + 48) + 16 * v20);
        v23 = *v22;
        v24 = v22[1];
        v25 = v31;
        v26 = *(v32 + 72) * v20;
        sub_10001D9AC(*(v4 + 56) + v26, v31, &qword_100525F28, &qword_100458120);
        v27 = v33;
        v28 = (*(v33 + 48) + v21);
        *v28 = v23;
        v28[1] = v24;
        sub_10003AEF0(v25, *(v27 + 56) + v26, &qword_100525F28, &qword_100458120);

        v15 = v34;
      }

      while (v34);
    }

    v18 = v10;
    v6 = v33;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v16)
      {

        v1 = v30;
        goto LABEL_18;
      }

      v19 = *(v8 + 8 * v10);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v34 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }
}

void sub_10032C9B8(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_1001BC5A8(a1, a2);
  v4 = *v2;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v4 + 64 + 8 * v8)
    {
      memmove(v7, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 56) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = *(*(v4 + 48) + 8 * v19);
        *(*(v6 + 56) + 8 * v19) = v20;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }
}

void sub_10032CB0C()
{
  v1 = v0;
  sub_1001BC5A8(&qword_1005266E0, &unk_100458490);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + v17);
        v22 = (*(v4 + 48) + v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + v17) = v21;
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
}

uint64_t (*sub_10032CCD8(uint64_t *a1, uint64_t a2))()
{
  if (&_swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x50uLL);
  }

  v5 = v4;
  *a1 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5[8] = sub_10032D4AC(v5);
  v5[9] = sub_10032CF28(v5 + 4, a2, isUniquelyReferenced_nonNull_native);
  return sub_10032CD7C;
}

uint64_t (*sub_10032CD80(uint64_t *a1, uint64_t a2))()
{
  if (&_swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x50uLL);
  }

  v5 = v4;
  *a1 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5[8] = sub_10032D4E0(v5);
  v5[9] = sub_10032D098(v5 + 4, a2, isUniquelyReferenced_nonNull_native);
  return sub_100331924;
}

uint64_t (*sub_10032CE24(uint64_t *a1, uint64_t a2))()
{
  if (&_swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x50uLL);
  }

  v5 = v4;
  *a1 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5[8] = sub_10032D4E0(v5);
  v5[9] = sub_10032D340(v5 + 4, a2, isUniquelyReferenced_nonNull_native);
  return sub_100331924;
}

void sub_10032CEC8(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

uint64_t (*sub_10032CF28(uint64_t *a1, uint64_t a2, char a3))()
{
  v4 = v3;
  if (&_swift_coroFrameAlloc)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x28uLL);
  }

  v9 = v8;
  *a1 = v8;
  *(v8 + 8) = a2;
  *(v8 + 16) = v3;
  v10 = *v3;
  v11 = sub_100031588(a2);
  *(v9 + 32) = v12 & 1;
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 >= v16 && (a3 & 1) == 0)
    {
      v19 = v11;
      sub_10032C9B8(&qword_1005266D8, &qword_100458488);
      v11 = v19;
      goto LABEL_11;
    }

    sub_10032ADC0(v16, a3 & 1, &qword_1005266D8, &qword_100458488);
    v11 = sub_100031588(a2);
    if ((v17 & 1) == (v20 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    type metadata accessor for RoutingSessionServer.Client(0);
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_11:
  *(v9 + 24) = v11;
  if (v17)
  {
    v21 = *(*(*v4 + 56) + 8 * v11);
  }

  else
  {
    v21 = 0;
  }

  *v9 = v21;
  return sub_10032D094;
}

uint64_t (*sub_10032D098(uint64_t *a1, uint64_t a2, char a3))()
{
  v4 = v3;
  if (&_swift_coroFrameAlloc)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x28uLL);
  }

  v9 = v8;
  *a1 = v8;
  *(v8 + 8) = a2;
  *(v8 + 16) = v3;
  v10 = *v3;
  v11 = sub_100031588(a2);
  *(v9 + 32) = v12 & 1;
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 >= v16 && (a3 & 1) == 0)
    {
      v19 = v11;
      sub_10032C9B8(&qword_1005266F8, &qword_1004584B8);
      v11 = v19;
      goto LABEL_11;
    }

    sub_10032ADC0(v16, a3 & 1, &qword_1005266F8, &qword_1004584B8);
    v11 = sub_100031588(a2);
    if ((v17 & 1) == (v20 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    type metadata accessor for RoutingSessionServer.Client(0);
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_11:
  *(v9 + 24) = v11;
  if (v17)
  {
    v21 = *(*(*v4 + 56) + 8 * v11);
  }

  else
  {
    v21 = 0;
  }

  *v9 = v21;
  return sub_100331928;
}

void sub_10032D204(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  LOBYTE(v4) = *(*a1 + 32);
  if (a2)
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    v5 = v2[3];
    v6 = *v2[2];
    if ((*a1)[4])
    {
      goto LABEL_9;
    }

    v7 = v2[1];
    v6[(v5 >> 6) + 8] |= 1 << v5;
    *(v6[6] + 8 * v5) = v7;
    *(v6[7] + 8 * v5) = v3;
    v8 = v6[2];
    v9 = __OFADD__(v8, 1);
    v4 = v8 + 1;
    if (!v9)
    {
LABEL_13:
      v6[2] = v4;

      goto LABEL_14;
    }

    __break(1u);
  }

  if (!v3)
  {
LABEL_10:
    if (v4)
    {
      v10 = v2[3];
      v11 = *v2[2];

      sub_10032B714(v10, v11);
    }

    goto LABEL_14;
  }

  v5 = v2[3];
  v6 = *v2[2];
  if ((v4 & 1) == 0)
  {
    v12 = v2[1];
    v6[(v5 >> 6) + 8] |= 1 << v5;
    *(v6[6] + 8 * v5) = v12;
    *(v6[7] + 8 * v5) = v3;
    v13 = v6[2];
    v9 = __OFADD__(v13, 1);
    v4 = v13 + 1;
    if (v9)
    {
      __break(1u);
      return;
    }

    goto LABEL_13;
  }

LABEL_9:
  *(v6[7] + 8 * v5) = v3;
LABEL_14:

  free(v2);
}

uint64_t (*sub_10032D340(uint64_t *a1, uint64_t a2, char a3))()
{
  v4 = v3;
  if (&_swift_coroFrameAlloc)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x28uLL);
  }

  v9 = v8;
  *a1 = v8;
  *(v8 + 8) = a2;
  *(v8 + 16) = v3;
  v10 = *v3;
  v11 = sub_100031588(a2);
  *(v9 + 32) = v12 & 1;
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 >= v16 && (a3 & 1) == 0)
    {
      v19 = v11;
      sub_10032C9B8(&qword_100526700, &unk_1004584C8);
      v11 = v19;
      goto LABEL_11;
    }

    sub_10032ADC0(v16, a3 & 1, &qword_100526700, &unk_1004584C8);
    v11 = sub_100031588(a2);
    if ((v17 & 1) == (v20 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    type metadata accessor for RoutingSessionServer.Client(0);
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_11:
  *(v9 + 24) = v11;
  if (v17)
  {
    v21 = *(*(*v4 + 56) + 8 * v11);
  }

  else
  {
    v21 = 0;
  }

  *v9 = v21;
  return sub_100331928;
}

uint64_t (*sub_10032D4AC(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_10032D4D4;
}

uint64_t (*sub_10032D4E0(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_100331894;
}

uint64_t sub_10032D508(uint64_t a1, __int128 *a2)
{
  v5 = a2[2];
  v6 = *a2;
  v37[0] = a2[1];
  v37[1] = v5;
  v38 = *(a2 + 48);
  v36 = v6;
  v33 = v37[0];
  v34 = v5;
  v35 = v38;
  v32 = v6;
  v7 = *v2;
  sub_10028BE34();
  v8 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    sub_100276B34();
    while (1)
    {
      v12 = *(v7 + 48) + 56 * v10;
      v13 = *(v12 + 8);
      v14 = *(v12 + 48);
      v15 = *(v12 + 16);
      v16 = *(v12 + 32);
      v28[0] = *v12;
      v28[1] = v13;
      v29 = v15;
      v30 = v16;
      v31 = v14;
      if (dispatch thunk of static Equatable.== infix(_:_:)())
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_1001E6204(&v36);
    sub_100238E4C(v37);
    v20 = *(v7 + 48) + 56 * v10;
    v21 = *(v20 + 8);
    v22 = *(v20 + 16);
    v23 = *(v20 + 24);
    v24 = *(v20 + 32);
    v25 = *(v20 + 40);
    *a1 = *v20;
    *(a1 + 8) = v21;
    *(a1 + 16) = v22;
    *(a1 + 24) = v23;
    *(a1 + 32) = v24;
    *(a1 + 40) = v25;
    v26 = *(v20 + 48);
    *(a1 + 48) = v26;

    sub_10026D0B8(v22, v23, v24, v25, v26);
    return 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = *v2;
    sub_10028BC98(&v36, v28);
    sub_10026D080(v37, v28);
    sub_10032DE94(a2, v10, isUniquelyReferenced_nonNull_native);
    *v2 = v27;
    v18 = a2[1];
    *a1 = *a2;
    *(a1 + 16) = v18;
    *(a1 + 32) = a2[2];
    *(a1 + 48) = *(a2 + 48);
    return 1;
  }
}

uint64_t sub_10032D700()
{
  v1 = *(type metadata accessor for ContinuousRoutingControl() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  return (*(**(v0 + 16) + 552))(v0 + v2, *v3, v3[1], 1);
}

void sub_10032D7C4()
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v2 = Strong;
      v3 = sub_100300FBC(v8);
      v4 = sub_10030D88C(v7, v2);
      if (*v5)
      {
        sub_10032970C(v9);
        (v4)(v7, 0);
        (v3)(v8, 0);
        if (v10)
        {
          sub_1000038A4(v9, &qword_1005266C8, &unk_100458470);
          v6 = *(v0 + 80);
          if (v6 <= 6 && ((1 << v6) & 0x47) != 0)
          {
            sub_10031C9DC(v2);
          }

          goto LABEL_9;
        }
      }

      else
      {
        (v4)(v7, 0);
        (v3)(v8, 0);
      }

      __break(1u);
      return;
    }

LABEL_9:
  }
}

uint64_t sub_10032D94C()
{
  v1 = *(type metadata accessor for RoutingSession.Action() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  return (*(**(v0 + 16) + 568))(v0 + v2, *v3, v3[1], 1);
}

uint64_t sub_10032DA0C()
{
  v1 = *(type metadata accessor for RoutingItem.Action() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  return (*(**(v0 + 16) + 576))(v0 + v2, *v3, v3[1], 1);
}

uint64_t sub_10032DACC()
{
  v1 = *(type metadata accessor for RoutingSessionConfiguration() - 8);
  v2 = (*(v1 + 80) + 65) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for HostedRoutingSessionSnapshot(0) - 8);
  v5 = (v2 + v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + v6);
  v9 = *(v0 + v7);
  v10 = *(v0 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_1003165A0((v0 + 16), v0 + v2, v0 + v5, v8, v9, v10);
}

uint64_t sub_10032DBF4()
{
  v1 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  return (*(v1 + 32))(ObjectType, v1);
}

uint64_t sub_10032DC40(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 24) & ~v4;
  v6 = (*(v3 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v3 + 8))(v1 + v5, v2);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v1, v6 + 16, v4 | 7);
}

uint64_t sub_10032DD20()
{
  v1 = *(type metadata accessor for RoutingMode() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  return (*(**(v0 + 16) + 592))(v0 + v2, *v3, v3[1], 1);
}

void sub_10032DE94(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100329D40(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_1003298C0();
      goto LABEL_12;
    }

    sub_100329A74(v6 + 1);
  }

  v8 = *v3;
  sub_10028BE34();
  v9 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_100276B34();
    while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v13 = *(v12 + 48) + 56 * a2;
  v14 = *(a1 + 16);
  *v13 = *a1;
  *(v13 + 16) = v14;
  *(v13 + 32) = *(a1 + 32);
  *(v13 + 48) = *(a1 + 48);
  v15 = *(v12 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v12 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void *sub_10032E068(void *a1, int64_t a2, char a3)
{
  result = sub_1000313AC(a1, a2, a3, *v3, &qword_100525748, &unk_100457D90, type metadata accessor for HostedRoutingSourceSession);
  *v3 = result;
  return result;
}

unint64_t sub_10032E0AC(unint64_t result, int64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v5 = *v3;
  v6 = *(*v3 + 16);
  if (v6 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = result;
  v8 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v9 = __OFSUB__(1, v8);
  v10 = 1 - v8;
  if (v9)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = v6 + v10;
  if (__OFADD__(v6, v10))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v5;
  if (!isUniquelyReferenced_nonNull_native || v11 > v5[3] >> 1)
  {
    if (v6 <= v11)
    {
      v14 = v11;
    }

    else
    {
      v14 = v6;
    }

    v5 = sub_100026868(isUniquelyReferenced_nonNull_native, v14, 1, v5, &unk_100524EB0, &unk_1004584A0, type metadata accessor for HostedRoutingItem);
    *v3 = v5;
  }

  result = sub_10032F3C8(v7, a2, 1, a3);
  *v3 = v5;
  return result;
}

uint64_t sub_10032E1A4(char **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(char *, char *), uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v142 = a4;
  v143 = a5;
  v130 = a1;
  v135 = type metadata accessor for HostedRoutingItem(0);
  v140 = *(v135 - 8);
  v10 = __chkstk_darwin(v135);
  v132 = &v119 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v134 = &v119 - v13;
  v14 = __chkstk_darwin(v12);
  v15 = __chkstk_darwin(v14);
  v17 = &v119 - v16;
  v18 = __chkstk_darwin(v15);
  v19 = __chkstk_darwin(v18);
  v21 = &v119 - v20;
  v22 = __chkstk_darwin(v19);
  result = __chkstk_darwin(v22);
  v141 = a3;
  if (a3[1] < 1)
  {
    v30 = _swiftEmptyArrayStorage;
LABEL_99:
    v21 = *v130;
    if (*v130)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        goto LABEL_133;
      }

      goto LABEL_101;
    }

    goto LABEL_142;
  }

  v28 = a3[1];
  v125 = &v119 - v24;
  v126 = v27;
  v136 = v26;
  v133 = v25;
  v124 = a6;
  v29 = 0;
  v30 = _swiftEmptyArrayStorage;
  v123 = v17;
  while (1)
  {
    if (v29 + 1 >= v28)
    {
      v43 = v29 + 1;
    }

    else
    {
      v128 = v28;
      v31 = *v141;
      v32 = *(v140 + 72);
      v33 = v29;
      v34 = *v141 + v32 * (v29 + 1);
      v35 = v125;
      sub_10002ADF8(v34, v125, type metadata accessor for HostedRoutingItem);
      v139 = v31;
      v36 = v31 + v32 * v33;
      v37 = v126;
      sub_10002ADF8(v36, v126, type metadata accessor for HostedRoutingItem);
      LODWORD(v138) = v142(v35, v37);
      if (v7)
      {
        sub_10002AC54(v37, type metadata accessor for HostedRoutingItem);
        v118 = v35;
        goto LABEL_112;
      }

      sub_10002AC54(v37, type metadata accessor for HostedRoutingItem);
      result = sub_10002AC54(v35, type metadata accessor for HostedRoutingItem);
      v122 = v128 - 1;
      v137 = v128 - 2;
      v38 = v139 + v32 * (v33 + 2);
      v127 = v33;
      v39 = v32;
      v139 = v32;
      while (v137 != v33)
      {
        sub_10002ADF8(v38, v21, type metadata accessor for HostedRoutingItem);
        v40 = v21;
        v41 = v136;
        sub_10002ADF8(v34, v136, type metadata accessor for HostedRoutingItem);
        v42 = v142(v40, v41);
        sub_10002AC54(v41, type metadata accessor for HostedRoutingItem);
        result = sub_10002AC54(v40, type metadata accessor for HostedRoutingItem);
        ++v33;
        v39 = v139;
        v38 += v139;
        v34 += v139;
        v21 = v40;
        if ((v138 ^ v42))
        {
          v43 = v33 + 1;
          goto LABEL_12;
        }
      }

      v33 = v122;
      v43 = v128;
LABEL_12:
      v29 = v127;
      if ((v138 & 1) == 0)
      {
        goto LABEL_15;
      }

      if (v43 < v127)
      {
        goto LABEL_136;
      }

      if (v127 <= v33)
      {
        v44 = v43;
        v45 = v39 * (v43 - 1);
        v46 = v44 * v39;
        v128 = v44;
        v129 = v21;
        v47 = v44;
        v48 = v127;
        v49 = v127 * v39;
        do
        {
          if (v48 != --v47)
          {
            v50 = *v141;
            if (!*v141)
            {
              goto LABEL_140;
            }

            sub_10002AF68(v50 + v49, v132, type metadata accessor for HostedRoutingItem);
            if (v49 < v45 || v50 + v49 >= (v50 + v46))
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v49 != v45)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            result = sub_10002AF68(v132, v50 + v45, type metadata accessor for HostedRoutingItem);
            v21 = v129;
            v39 = v139;
          }

          ++v48;
          v45 -= v39;
          v46 -= v39;
          v49 += v39;
        }

        while (v48 < v47);
        v17 = v123;
        v29 = v127;
        v43 = v128;
      }

      else
      {
LABEL_15:
        v17 = v123;
      }
    }

    v51 = v141[1];
    if (v43 >= v51)
    {
      goto LABEL_36;
    }

    if (__OFSUB__(v43, v29))
    {
      goto LABEL_132;
    }

    if (v43 - v29 >= v124)
    {
LABEL_36:
      v53 = v43;
      if (v43 < v29)
      {
        goto LABEL_131;
      }

      goto LABEL_37;
    }

    if (__OFADD__(v29, v124))
    {
      __break(1u);
LABEL_135:
      __break(1u);
LABEL_136:
      __break(1u);
LABEL_137:
      __break(1u);
LABEL_138:
      __break(1u);
      goto LABEL_139;
    }

    if (v29 + v124 >= v51)
    {
      v52 = v141[1];
    }

    else
    {
      v52 = v29 + v124;
    }

    if (v52 < v29)
    {
      goto LABEL_135;
    }

    if (v43 == v52)
    {
      goto LABEL_36;
    }

    v129 = v21;
    v101 = *v141;
    v102 = *(v140 + 72);
    v103 = *v141 + v102 * (v43 - 1);
    v138 = -v102;
    v139 = v101;
    v127 = v29;
    v104 = v29 - v43;
    v120 = v102;
    v105 = v101 + v43 * v102;
    v137 = v52;
    v131 = v30;
    do
    {
      v121 = v105;
      v122 = v104;
      v128 = v103;
      while (1)
      {
        sub_10002ADF8(v105, v17, type metadata accessor for HostedRoutingItem);
        v106 = v17;
        v107 = v133;
        sub_10002ADF8(v103, v133, type metadata accessor for HostedRoutingItem);
        v108 = v142(v106, v107);
        if (v7)
        {
          sub_10002AC54(v107, type metadata accessor for HostedRoutingItem);
          v118 = v106;
LABEL_112:
          sub_10002AC54(v118, type metadata accessor for HostedRoutingItem);
        }

        v109 = v108;
        v110 = v43;
        sub_10002AC54(v107, type metadata accessor for HostedRoutingItem);
        result = sub_10002AC54(v106, type metadata accessor for HostedRoutingItem);
        v17 = v106;
        if ((v109 & 1) == 0)
        {
          break;
        }

        if (!v139)
        {
          goto LABEL_138;
        }

        v111 = v134;
        sub_10002AF68(v105, v134, type metadata accessor for HostedRoutingItem);
        swift_arrayInitWithTakeFrontToBack();
        sub_10002AF68(v111, v103, type metadata accessor for HostedRoutingItem);
        v103 += v138;
        v105 += v138;
        v112 = __CFADD__(v104++, 1);
        v43 = v110;
        v7 = 0;
        v30 = v131;
        if (v112)
        {
          goto LABEL_95;
        }
      }

      v7 = 0;
      v30 = v131;
LABEL_95:
      ++v43;
      v103 = v128 + v120;
      v104 = v122 - 1;
      v105 = v121 + v120;
      v53 = v137;
    }

    while (v43 != v137);
    v21 = v129;
    v29 = v127;
    if (v137 < v127)
    {
      goto LABEL_131;
    }

LABEL_37:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_10024A7E0(0, *(v30 + 2) + 1, 1, v30);
      v30 = result;
    }

    v55 = *(v30 + 2);
    v54 = *(v30 + 3);
    v56 = v55 + 1;
    if (v55 >= v54 >> 1)
    {
      result = sub_10024A7E0((v54 > 1), v55 + 1, 1, v30);
      v30 = result;
    }

    *(v30 + 2) = v56;
    v57 = &v30[16 * v55];
    *(v57 + 4) = v29;
    *(v57 + 5) = v53;
    v137 = v53;
    v58 = *v130;
    if (!*v130)
    {
      goto LABEL_141;
    }

    if (v55)
    {
      break;
    }

LABEL_3:
    v28 = v141[1];
    v29 = v137;
    if (v137 >= v28)
    {
      goto LABEL_99;
    }
  }

  while (2)
  {
    v59 = v56 - 1;
    if (v56 >= 4)
    {
      v64 = &v30[16 * v56 + 32];
      v65 = *(v64 - 64);
      v66 = *(v64 - 56);
      v70 = __OFSUB__(v66, v65);
      v67 = v66 - v65;
      if (v70)
      {
        goto LABEL_118;
      }

      v69 = *(v64 - 48);
      v68 = *(v64 - 40);
      v70 = __OFSUB__(v68, v69);
      v62 = v68 - v69;
      v63 = v70;
      if (v70)
      {
        goto LABEL_119;
      }

      v71 = &v30[16 * v56];
      v73 = *v71;
      v72 = *(v71 + 1);
      v70 = __OFSUB__(v72, v73);
      v74 = v72 - v73;
      if (v70)
      {
        goto LABEL_121;
      }

      v70 = __OFADD__(v62, v74);
      v75 = v62 + v74;
      if (v70)
      {
        goto LABEL_124;
      }

      if (v75 >= v67)
      {
        v93 = &v30[16 * v59 + 32];
        v95 = *v93;
        v94 = *(v93 + 1);
        v70 = __OFSUB__(v94, v95);
        v96 = v94 - v95;
        if (v70)
        {
          goto LABEL_130;
        }

        if (v62 < v96)
        {
          v59 = v56 - 2;
        }
      }

      else
      {
LABEL_56:
        if (v63)
        {
          goto LABEL_120;
        }

        v76 = &v30[16 * v56];
        v78 = *v76;
        v77 = *(v76 + 1);
        v79 = __OFSUB__(v77, v78);
        v80 = v77 - v78;
        v81 = v79;
        if (v79)
        {
          goto LABEL_123;
        }

        v82 = &v30[16 * v59 + 32];
        v84 = *v82;
        v83 = *(v82 + 1);
        v70 = __OFSUB__(v83, v84);
        v85 = v83 - v84;
        if (v70)
        {
          goto LABEL_126;
        }

        if (__OFADD__(v80, v85))
        {
          goto LABEL_127;
        }

        if (v80 + v85 < v62)
        {
          goto LABEL_70;
        }

        if (v62 < v85)
        {
          v59 = v56 - 2;
        }
      }
    }

    else
    {
      if (v56 == 3)
      {
        v60 = *(v30 + 4);
        v61 = *(v30 + 5);
        v70 = __OFSUB__(v61, v60);
        v62 = v61 - v60;
        v63 = v70;
        goto LABEL_56;
      }

      v86 = &v30[16 * v56];
      v88 = *v86;
      v87 = *(v86 + 1);
      v70 = __OFSUB__(v87, v88);
      v80 = v87 - v88;
      v81 = v70;
LABEL_70:
      if (v81)
      {
        goto LABEL_122;
      }

      v89 = &v30[16 * v59];
      v91 = *(v89 + 4);
      v90 = *(v89 + 5);
      v70 = __OFSUB__(v90, v91);
      v92 = v90 - v91;
      if (v70)
      {
        goto LABEL_125;
      }

      if (v92 < v80)
      {
        goto LABEL_3;
      }
    }

    v97 = v59 - 1;
    if (v59 - 1 < v56)
    {
      if (!*v141)
      {
        goto LABEL_137;
      }

      v98 = *&v30[16 * v97 + 32];
      v99 = *&v30[16 * v59 + 40];
      sub_10032EC9C(*v141 + *(v140 + 72) * v98, *v141 + *(v140 + 72) * *&v30[16 * v59 + 32], *v141 + *(v140 + 72) * v99, v58, v142, v143);
      if (v7)
      {
      }

      if (v99 < v98)
      {
        goto LABEL_116;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v30 = sub_10024C200(v30);
      }

      if (v97 >= *(v30 + 2))
      {
        goto LABEL_117;
      }

      v100 = &v30[16 * v97];
      *(v100 + 4) = v98;
      *(v100 + 5) = v99;
      v144 = v30;
      result = sub_10024C174(v59);
      v30 = v144;
      v56 = *(v144 + 2);
      if (v56 <= 1)
      {
        goto LABEL_3;
      }

      continue;
    }

    break;
  }

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
  result = sub_10024C200(v30);
  v30 = result;
LABEL_101:
  v144 = v30;
  v113 = *(v30 + 2);
  if (v113 < 2)
  {
  }

  v114 = v142;
  while (*v141)
  {
    v115 = *&v30[16 * v113];
    v116 = *&v30[16 * v113 + 24];
    sub_10032EC9C(*v141 + *(v140 + 72) * v115, *v141 + *(v140 + 72) * *&v30[16 * v113 + 16], *v141 + *(v140 + 72) * v116, v21, v114, v143);
    if (v7)
    {
    }

    if (v116 < v115)
    {
      goto LABEL_128;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v30 = sub_10024C200(v30);
    }

    if (v113 - 2 >= *(v30 + 2))
    {
      goto LABEL_129;
    }

    v117 = &v30[16 * v113];
    *v117 = v115;
    *(v117 + 1) = v116;
    v144 = v30;
    result = sub_10024C174(v113 - 1);
    v30 = v144;
    v113 = *(v144 + 2);
    if (v113 <= 1)
    {
    }
  }

LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
  return result;
}

unint64_t sub_10032EC9C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t (*a5)(char *, char *), uint64_t a6)
{
  v7 = v6;
  v54 = a6;
  v55 = a5;
  v56 = a3;
  v53 = type metadata accessor for HostedRoutingItem(0);
  v11 = __chkstk_darwin(v53);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v16 = &v45 - v15;
  v17 = __chkstk_darwin(v14);
  v19 = &v45 - v18;
  result = __chkstk_darwin(v17);
  v22 = &v45 - v21;
  v52 = *(v23 + 72);
  if (!v52)
  {
    __break(1u);
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  result = a1;
  if (a2 - a1 == 0x8000000000000000 && v52 == -1)
  {
    goto LABEL_66;
  }

  v24 = v56 - a2;
  if (v56 - a2 != 0x8000000000000000 || v52 != -1)
  {
    v25 = (a2 - a1) / v52;
    v59 = a1;
    v58 = a4;
    v51 = a1;
    if (v25 < v24 / v52)
    {
      v26 = v25 * v52;
      if (a4 < result || result + v26 <= a4)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        if (a4 == result)
        {
          goto LABEL_17;
        }

        swift_arrayInitWithTakeBackToFront();
      }

      result = v51;
LABEL_17:
      v51 = a4 + v26;
      v57 = a4 + v26;
      if (v26 >= 1 && a2 < v56)
      {
        while (1)
        {
          v29 = result;
          sub_10002ADF8(a2, v22, type metadata accessor for HostedRoutingItem);
          sub_10002ADF8(a4, v19, type metadata accessor for HostedRoutingItem);
          v30 = v55(v22, v19);
          if (v7)
          {
            break;
          }

          v31 = v30;
          v32 = a4;
          sub_10002AC54(v19, type metadata accessor for HostedRoutingItem);
          sub_10002AC54(v22, type metadata accessor for HostedRoutingItem);
          if (v31)
          {
            v33 = v52;
            v34 = v29;
            if (v29 < a2 || v29 >= a2 + v52)
            {
              swift_arrayInitWithTakeFrontToBack();
              v34 = v29;
              a2 += v33;
              v7 = 0;
            }

            else
            {
              v7 = 0;
              if (v29 != a2)
              {
                swift_arrayInitWithTakeBackToFront();
                v34 = v29;
              }

              a2 += v33;
            }
          }

          else
          {
            v35 = a4;
            v33 = v52;
            a4 += v52;
            v34 = v29;
            if (v29 < v32 || v29 >= a4)
            {
              swift_arrayInitWithTakeFrontToBack();
              v34 = v29;
              v7 = 0;
            }

            else
            {
              v7 = 0;
              if (v29 != v35)
              {
                swift_arrayInitWithTakeBackToFront();
                v34 = v29;
              }
            }

            v58 = a4;
          }

          result = v34 + v33;
          v59 = result;
          if (a4 >= v51 || a2 >= v56)
          {
            goto LABEL_64;
          }
        }

        sub_10002AC54(v19, type metadata accessor for HostedRoutingItem);
        sub_10002AC54(v22, type metadata accessor for HostedRoutingItem);
      }

LABEL_64:
      sub_10032F2E4(&v59, &v58, &v57);
      return 1;
    }

    v27 = v24 / v52 * v52;
    if (a4 < a2 || a2 + v27 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else
    {
      if (a4 == a2)
      {
LABEL_40:
        v36 = a4 + v27;
        if (v27 >= 1)
        {
          v37 = -v52;
          v38 = v36;
          v47 = v16;
          v48 = v13;
          do
          {
            v45 = v36;
            v39 = a2;
            v49 = a2;
            v50 = a2 + v37;
            while (1)
            {
              v40 = v56;
              if (v39 <= result)
              {
                v59 = v39;
                v57 = v45;
                goto LABEL_64;
              }

              v46 = v36;
              v52 = v38;
              v41 = v38 + v37;
              sub_10002ADF8(v38 + v37, v16, type metadata accessor for HostedRoutingItem);
              sub_10002ADF8(v50, v13, type metadata accessor for HostedRoutingItem);
              v42 = v55(v16, v13);
              if (v7)
              {
                sub_10002AC54(v13, type metadata accessor for HostedRoutingItem);
                sub_10002AC54(v16, type metadata accessor for HostedRoutingItem);
                v59 = v49;
                v57 = v46;
                goto LABEL_64;
              }

              v43 = v42;
              v56 = v40 + v37;
              sub_10002AC54(v13, type metadata accessor for HostedRoutingItem);
              sub_10002AC54(v16, type metadata accessor for HostedRoutingItem);
              if (v43)
              {
                break;
              }

              v36 = v41;
              if (v40 < v52 || v56 >= v52)
              {
                swift_arrayInitWithTakeFrontToBack();
                v7 = 0;
              }

              else
              {
                v7 = 0;
                if (v40 != v52)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              v38 = v41;
              result = v51;
              v16 = v47;
              v13 = v48;
              v39 = v49;
              if (v41 <= a4)
              {
                a2 = v49;
                goto LABEL_63;
              }
            }

            if (v40 < v49 || v56 >= v49)
            {
              a2 = v50;
              swift_arrayInitWithTakeFrontToBack();
              v7 = 0;
              v36 = v46;
            }

            else
            {
              v44 = v40 == v49;
              a2 = v50;
              v7 = 0;
              v36 = v46;
              if (!v44)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            result = v51;
            v38 = v52;
            v16 = v47;
            v13 = v48;
          }

          while (v52 > a4);
        }

LABEL_63:
        v59 = a2;
        v57 = v36;
        goto LABEL_64;
      }

      swift_arrayInitWithTakeBackToFront();
    }

    result = v51;
    goto LABEL_40;
  }

LABEL_67:
  __break(1u);
  return result;
}

uint64_t sub_10032F2E4(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = type metadata accessor for HostedRoutingItem(0);
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

unint64_t sub_10032F3C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  result = type metadata accessor for HostedRoutingItem(0);
  v12 = *(*(result - 8) + 72);
  v13 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v11 = *(*(result - 8) + 80);
  v14 = v9 + ((v11 + 32) & ~v11);
  v15 = v14 + v12 * a1;
  result = swift_arrayDestroy();
  v16 = a3 - v13;
  if (__OFSUB__(a3, v13))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v17 = v12 * a3;
  if (v16)
  {
    v18 = *(v9 + 16);
    if (!__OFSUB__(v18, a2))
    {
      result = v15 + v17;
      v19 = v14 + v12 * a2;
      if (v15 + v17 < v19 || result >= v19 + (v18 - a2) * v12)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v19)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v21 = *(v9 + 16);
      v22 = __OFADD__(v21, v16);
      v23 = v21 + v16;
      if (!v22)
      {
        *(v9 + 16) = v23;
        goto LABEL_15;
      }

LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

LABEL_15:
  if (a3 < 1)
  {
    return sub_1000038A4(a4, &qword_100526740, &unk_100458520);
  }

  if (v17 < 1)
  {
    return sub_1000038A4(a4, &qword_100526740, &unk_100458520);
  }

  result = sub_10002ADF8(a4, v15, type metadata accessor for HostedRoutingItem);
  if (v12 >= v17)
  {
    return sub_1000038A4(a4, &qword_100526740, &unk_100458520);
  }

LABEL_23:
  __break(1u);
  return result;
}

unint64_t sub_10032F554(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  result = type metadata accessor for HostedRoutingSourceSession(0);
  v10 = *(*(result - 8) + 72);
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v9 = *(*(result - 8) + 80);
  v12 = v7 + ((v9 + 32) & ~v9);
  v13 = v12 + v10 * a1;
  result = swift_arrayDestroy();
  v14 = a3 - v11;
  if (__OFSUB__(a3, v11))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v15 = v10 * a3;
  if (v14)
  {
    v16 = *(v7 + 16);
    if (!__OFSUB__(v16, a2))
    {
      result = v13 + v15;
      v17 = v12 + v10 * a2;
      if (v13 + v15 < v17 || result >= v17 + (v16 - a2) * v10)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v17)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v19 = *(v7 + 16);
      v20 = __OFADD__(v19, v14);
      v21 = v19 + v14;
      if (!v20)
      {
        *(v7 + 16) = v21;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v15 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_10032F69C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1001BC5A8(&qword_1005266F0, &qword_1004584B0);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v24 = v1;
    while (1)
    {
      v7 = a1 + 32 + 56 * v4;
      v8 = *(v7 + 16);
      v9 = *(v7 + 24);
      v11 = *(v7 + 32);
      v10 = *(v7 + 40);
      v12 = *(v7 + 48);
      v25 = *v7;
      v26 = *(v7 + 8);

      v28 = v9;
      v27 = v11;
      sub_10026D0B8(v8, v9, v11, v10, v12);
      sub_10028BE34();
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v14 = -1 << *(v3 + 32);
      v15 = result & ~v14;
      v16 = v15 >> 6;
      v17 = *(v5 + 8 * (v15 >> 6));
      v18 = 1 << v15;
      if (((1 << v15) & v17) != 0)
      {
        v19 = ~v14;
        sub_100276B34();
        do
        {
          result = dispatch thunk of static Equatable.== infix(_:_:)();
          if (result)
          {

            sub_1002485A4(v8, v28, v27, v10, v12);
            v6 = v24;
            goto LABEL_4;
          }

          v15 = (v15 + 1) & v19;
          v16 = v15 >> 6;
          v17 = *(v5 + 8 * (v15 >> 6));
          v18 = 1 << v15;
        }

        while (((1 << v15) & v17) != 0);
        v6 = v24;
      }

      else
      {
        v6 = v24;
      }

      *(v5 + 8 * v16) = v18 | v17;
      v20 = *(v3 + 48) + 56 * v15;
      *v20 = v25;
      *(v20 + 8) = v26;
      *(v20 + 16) = v8;
      *(v20 + 24) = v28;
      *(v20 + 32) = v27;
      *(v20 + 40) = v10;
      *(v20 + 48) = v12;
      v21 = *(v3 + 16);
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        break;
      }

      *(v3 + 16) = v23;
LABEL_4:
      if (++v4 == v6)
      {
        return v3;
      }
    }

    __break(1u);
  }

  else
  {
    return &_swiftEmptySetSingleton;
  }

  return result;
}

unint64_t sub_10032F8C4(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v69 = a3;
  v66 = *v4;
  v63 = type metadata accessor for DispatchWorkItemFlags();
  v8 = *(v63 - 8);
  __chkstk_darwin(v63);
  v62 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = type metadata accessor for DispatchQoS();
  v70 = *(v61 - 8);
  __chkstk_darwin(v61);
  v60 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = type metadata accessor for RoutingSessionConfiguration.Context();
  v72 = *(v78 - 8);
  __chkstk_darwin(v78);
  v77 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = type metadata accessor for RoutingSessionConfiguration();
  v59 = *(v76 - 8);
  __chkstk_darwin(v76);
  v75 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = type metadata accessor for Logger();
  v13 = *(v74 - 1);
  __chkstk_darwin(v74);
  v15 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchPredicate();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = (&v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v68 = sub_100021264();
  v20 = *v68;
  *v19 = *v68;
  (*(v17 + 104))(v19, enum case for DispatchPredicate.onQueue(_:), v16);
  v21 = v20;
  v22 = _dispatchPreconditionTest(_:)();
  v24 = *(v17 + 8);
  v23 = v17 + 8;
  v24(v19, v16);
  if (v22)
  {
    v58 = v8;
    v25 = sub_100028D40();
    (*(v13 + 16))(v15, v25, v74);

    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();

    v28 = os_log_type_enabled(v26, v27);
    v71 = a4;
    v67 = a1;
    if (v28)
    {
      v29 = a1;
      v30 = swift_slowAlloc();
      aBlock[0] = swift_slowAlloc();
      *v30 = 136315650;
      v31 = _typeName(_:qualified:)();
      v33 = sub_10002C9C8(v31, v32, aBlock);

      *(v30 + 4) = v33;
      *(v30 + 12) = 2082;
      *(v30 + 14) = sub_10002C9C8(v29, a2, aBlock);
      *(v30 + 22) = 2082;
      *(v30 + 24) = sub_10002C9C8(v69, v71, aBlock);
      _os_log_impl(&_mh_execute_header, v26, v27, "[%s] dataSourceWillTransition - from: %{public}s to: %{public}s", v30, 0x20u);
      swift_arrayDestroy();
      v22 = v71;
    }

    else
    {
      v22 = a4;
    }

    (*(v13 + 8))(v15, v74);
    a4 = a2;
    result = sub_10002107C();
    v23 = result;
    if (!(result >> 62))
    {
      v35 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v35)
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
    __break(1u);
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  v35 = result;
  if (!result)
  {
  }

LABEL_7:
  if (v35 >= 1)
  {
    v36 = 0;
    v37 = v23 & 0xC000000000000001;
    v73 = (v59 + 1);
    v74 = (v59 + 2);
    ++v72;
    v59 = v81;
    ++v58;
    v57 = (v70 + 8);
    v70 = a4;
    v66 = v23;
    v65 = v35;
    v64 = v23 & 0xC000000000000001;
    do
    {
      if (v37)
      {
        v38 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v38 = *(v23 + 8 * v36 + 32);
      }

      v39 = v75;
      v40 = v76;
      (*v74)(v75, v38 + OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_configuration, v76);
      v41 = v77;
      RoutingSessionConfiguration.context.getter();
      (*v73)(v39, v40);
      LOBYTE(v40) = sub_100265DF0();
      (*v72)(v41, v78);
      if (v40)
      {
        v42 = swift_allocObject();
        v43 = v67;
        v42[2] = v38;
        v42[3] = v43;
        v44 = v69;
        v42[4] = a4;
        v42[5] = v44;
        v42[6] = v22;
        v45 = *(v38 + OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_queue);
        if (v45 == *v68)
        {
          v53 = *(v38 + OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_externalClient + 8);
          ObjectType = swift_getObjectType();
          v55 = *(v53 + 72);

          swift_unknownObjectRetain();
          v56 = ObjectType;
          a4 = v70;
          v55(v43, v70, v44, v71, v56, v53);
          v22 = v71;

          swift_unknownObjectRelease();
        }

        else
        {
          v46 = swift_allocObject();
          *(v46 + 16) = sub_10033093C;
          *(v46 + 24) = v42;
          v81[2] = sub_1002253D8;
          v81[3] = v46;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          v81[0] = sub_100003D98;
          v81[1] = &unk_1004CE1D0;
          v47 = _Block_copy(aBlock);

          v48 = v45;

          v49 = v60;
          static DispatchQoS.unspecified.getter();
          v79 = _swiftEmptyArrayStorage;
          sub_100004930(&qword_100527410, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
          sub_1001BC5A8(&unk_100522280, &unk_10044F590);
          sub_10000462C(&qword_100527420, &unk_100522280, &unk_10044F590, &protocol conformance descriptor for [A]);
          v50 = v62;
          v51 = v63;
          dispatch thunk of SetAlgebra.init<A>(_:)();
          OS_dispatch_queue.async(group:qos:flags:execute:)();
          _Block_release(v47);

          a4 = v70;
          (*v58)(v50, v51);
          v52 = v49;
          v22 = v71;
          (*v57)(v52, v61);
        }

        v23 = v66;
        v35 = v65;
        v37 = v64;
      }

      else
      {
      }

      ++v36;
    }

    while (v35 != v36);
  }

  __break(1u);
  return result;
}

unint64_t sub_1003302B8(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_100021264();
  v9 = *v8;
  *v7 = *v8;
  (*(v5 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v4);
  v10 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v7, v4);
  if ((v9 & 1) == 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v11 = sub_100037234();
  if (*v11 == a1 && *(v11 + 1) == a2 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
  {
    result = sub_10002107C();
    a2 = result;
    if (!(result >> 62))
    {
      v13 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v13)
      {
LABEL_7:
        if (v13 < 1)
        {
          __break(1u);
          return result;
        }

        for (i = 0; i != v13; ++i)
        {
          if ((a2 & 0xC000000000000001) != 0)
          {
            v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v15 = *(a2 + 8 * i + 32);
          }

          sub_100028D64(v15);
        }
      }

LABEL_15:

      return sub_10031B8F4();
    }

LABEL_14:
    result = _CocoaArrayWrapper.endIndex.getter();
    v13 = result;
    if (result)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

  return result;
}

uint64_t sub_1003304C8(uint64_t a1)
{
  result = type metadata accessor for RoutingSessionConfiguration();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for RoutingMode();
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_1003305C0(uint64_t a1)
{
  result = type metadata accessor for RoutingSessionConfiguration();
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

uint64_t sub_1003306F8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100330740(void (*a1)(void, __n128), uint64_t a2)
{

  (a1)(*(v2 + 24));

  return _swift_deallocObject(v2, a2, 7);
}

uint64_t sub_10033079C()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_externalClient + 8);
  ObjectType = swift_getObjectType();
  swift_beginAccess();
  v3 = *(v1 + 16);
  swift_unknownObjectRetain();

  v3(v4, ObjectType, v1);

  return swift_unknownObjectRelease();
}

uint64_t sub_100330870()
{
  v1 = *(type metadata accessor for RoutingDialog() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(*(v0 + 16) + OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_externalClient + 8);
  ObjectType = swift_getObjectType();
  v5 = *(v3 + 24);
  swift_unknownObjectRetain();
  v5(v0 + v2, ObjectType, v3);

  return swift_unknownObjectRelease();
}

uint64_t sub_10033093C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = *(v1 + OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_externalClient + 8);
  ObjectType = swift_getObjectType();
  v8 = *(v6 + 72);
  swift_unknownObjectRetain();
  v8(v2, v3, v4, v5, ObjectType, v6);

  return swift_unknownObjectRelease();
}

double sub_1003309EC()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    if (*(Strong + 104))
    {
      *(Strong + 81) = 1;
      sub_1002FFF30();
    }
  }

  return result;
}

uint64_t sub_100330A84()
{

  sub_1002485A4(*(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80));

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t sub_100330AE4()
{
  v1 = *(type metadata accessor for RoutingControl() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  v4 = *(*(v0 + 16) + OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_externalClient + 8);
  v5 = *v3;
  if (*v3)
  {
    v13 = *(v3 + 8);
    v14 = *(v3 + 24);
    sub_1002D3DE8();
    v6 = swift_allocError();
    *v7 = v5;
    v8 = v13;
    *(v7 + 24) = v14;
    *(v7 + 8) = v8;
  }

  else
  {
    v6 = 0;
  }

  ObjectType = swift_getObjectType();
  v10 = *(v4 + 64);
  swift_unknownObjectRetain();
  sub_100330C4C(v3, v12);
  v10(v0 + v2, v6, ObjectType, v4);

  return swift_unknownObjectRelease();
}

uint64_t sub_100330D3C(void (*a1)(void, __n128), uint64_t a2)
{

  (a1)(*(v2 + 32));

  return _swift_deallocObject(v2, a2, 7);
}

uint64_t sub_100330D98()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = *(v0[2] + OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_externalClient + 8);
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for InternalRoutingError();
  sub_100004930(&qword_100524710, &type metadata accessor for InternalRoutingError, &protocol conformance descriptor for InternalRoutingError);
  v6 = swift_allocError();
  (*(*(v5 - 8) + 104))(v7, enum case for InternalRoutingError.cancelled(_:), v5);
  v8 = *(v3 + 56);
  swift_unknownObjectRetain();
  v8(v1, v2, v6, ObjectType, v3);

  return swift_unknownObjectRelease();
}

void sub_100330ED0(__int128 *a1)
{
  v3 = *(type metadata accessor for RoutingSessionConfiguration() - 8);
  v4 = (*(v3 + 80) + 104) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for RoutingSessionConfiguration.Attribution() - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_100307DE8(a1, *(v1 + 16), *(v1 + 24), (v1 + 32), *(v1 + 88), *(v1 + 96), v1 + v4, v1 + v7, *(v1 + v8), *(v1 + v8 + 8), *(v1 + ((v8 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((v8 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_100330FFC()
{
  v1 = *(v0 + OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_externalClient + 8);
  ObjectType = swift_getObjectType();
  v3 = *(v1 + 48);
  swift_unknownObjectRetain();
  v3(ObjectType, v1);

  return swift_unknownObjectRelease();
}

uint64_t sub_10033107C()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 40);
  v3 = *(v0 + 32);
  v4 = *(*(v0 + 16) + OBJC_IVAR____TtCC12mediaremoted20RoutingSessionServerP33_3B73967C365FB47E5431CA6E1588B6FE6Client_externalClient + 8);
  if (v2)
  {
    v12 = *(v0 + 48);
    v13 = *(v0 + 64);
    sub_1002D3DE8();
    v5 = swift_allocError();
    *v6 = v2;
    v7 = v12;
    *(v6 + 24) = v13;
    *(v6 + 8) = v7;
  }

  else
  {
    v5 = 0;
  }

  ObjectType = swift_getObjectType();
  v9 = *(v4 + 56);
  swift_unknownObjectRetain();
  sub_100330C4C(v0 + 40, v11);
  v9(v1, v3, v5, ObjectType, v4);

  return swift_unknownObjectRelease();
}

uint64_t sub_10033118C()
{

  sub_1002485A4(*(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80));

  return _swift_deallocObject(v0, 81, 7);
}

double sub_1003311E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int8 a7)
{
  if (a2)
  {

    return sub_10026D0B8(a3, a4, a5, a6, a7);
  }

  return result;
}

uint64_t sub_100331258()
{
  v1 = *(type metadata accessor for HostedRoutingSessionSnapshot(0) - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_10031B6A0(v2, v3);
}

uint64_t sub_1003312BC(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 24) & ~v4;
  v6 = *(v3 + 64);

  (*(v3 + 8))(v1 + v5, v2);

  return _swift_deallocObject(v1, v5 + v6, v4 | 7);
}

BOOL sub_100331388(uint64_t *a1, uint64_t a2)
{
  v5 = *(type metadata accessor for RoutingSessionConfiguration() - 8);
  v6 = *(v2 + 16);
  v7 = v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80));

  return sub_10031F678(a1, a2, v6, v7);
}

unint64_t sub_100331484()
{
  result = qword_100526750;
  if (!qword_100526750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100526750);
  }

  return result;
}

uint64_t sub_10033151C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HostedRoutingSourceSession(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void sub_1003315C4()
{
  v0 = Notification.userInfo.getter();
  if (!v0)
  {
    goto LABEL_14;
  }

  v1 = v0;
  v13 = kMRNowPlayingPlayerPathUserInfoKey;
  v2 = kMRNowPlayingPlayerPathUserInfoKey;
  sub_1001BC5A8(&qword_100523738, &unk_100457AF0);
  sub_100037570();
  AnyHashable.init<A>(_:)();
  if (!*(v1 + 16) || (v3 = sub_10001BF64(v14), (v4 & 1) == 0))
  {

    sub_10001BF10(v14);
LABEL_14:
    v15 = 0u;
    v16 = 0u;
    goto LABEL_15;
  }

  sub_100020E0C(*(v1 + 56) + 32 * v3, &v15);
  sub_10001BF10(v14);

  if (!*(&v16 + 1))
  {
LABEL_15:
    sub_1000038A4(&v15, &qword_100522890, &qword_100450610);
    return;
  }

  sub_100018D7C(0, &qword_100522FF0, MRPlayerPath_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return;
  }

  v5 = v14[0];
  v6 = [v14[0] origin];
  if (!v6)
  {
LABEL_22:

    return;
  }

  v7 = v6;
  if (([v6 isLocal] & 1) == 0)
  {

    goto LABEL_22;
  }

  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {

    return;
  }

  v8 = sub_10002107C();
  v9 = v8;
  if (v8 >> 62)
  {
    v10 = _CocoaArrayWrapper.endIndex.getter();
    if (v10)
    {
      goto LABEL_11;
    }

LABEL_25:

    sub_10031B8F4();

    return;
  }

  v10 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v10)
  {
    goto LABEL_25;
  }

LABEL_11:
  if (v10 >= 1)
  {
    for (i = 0; i != v10; ++i)
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v12 = *(v9 + 8 * i + 32);
      }

      sub_100028D64(v12);
    }

    goto LABEL_25;
  }

  __break(1u);
}

uint64_t sub_100331930()
{
  sub_1001DFBCC(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_100331968(uint64_t a1)
{
  if (a1 > 1)
  {
    if (a1 != 2)
    {
      if (a1 == 3)
      {
        return 0x6C6C65636E61632ELL;
      }

      goto LABEL_8;
    }

    return 0x646565636375732ELL;
  }

  else
  {
    if (a1)
    {
      if (a1 == 1)
      {
        return 0x737365636F72702ELL;
      }

LABEL_8:
      sub_10023DD70();
      v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v2);

      v3._countAndFlagsBits = 41;
      v3._object = 0xE100000000000000;
      String.append(_:)(v3);
      return 0x2864656C6961662ELL;
    }

    return 0x65756575716E652ELL;
  }
}

BOOL sub_100331A84(uint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1 <= 1)
  {
    if (!v2)
    {
      return !v3;
    }

    if (v2 == 1)
    {
      return v3 == 1;
    }

    return v3 > 3;
  }

  if (v2 != 2)
  {
    if (v2 == 3)
    {
      return v3 == 3;
    }

    return v3 > 3;
  }

  return v3 == 2;
}

uint64_t sub_100331B10(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RoutingEvent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100331B74()
{
  v1 = v0 + OBJC_IVAR____TtCC12mediaremoted15RoutingTimeline5Event_state;
  swift_beginAccess();
  v2 = *v1;
  sub_100331BF0(*v1, *(v1 + 8), *(v1 + 16), *(v1 + 24));
  return v2;
}

unint64_t sub_100331BF0(unint64_t result, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (result >= 4)
  {
    swift_errorRetain();

    return sub_10023DC40(a2, a3, a4);
  }

  return result;
}

unint64_t sub_100331C4C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v9 = v4 + OBJC_IVAR____TtCC12mediaremoted15RoutingTimeline5Event_state;
  swift_beginAccess();
  v10 = *v9;
  v11 = *(v9 + 8);
  v12 = *(v9 + 16);
  *v9 = a1;
  *(v9 + 8) = a2;
  *(v9 + 16) = a3;
  v13 = *(v9 + 24);
  *(v9 + 24) = a4;
  return sub_1002FB794(v10, v11, v12, v13);
}

uint64_t sub_100331D2C()
{
  v1 = (v0 + OBJC_IVAR____TtCC12mediaremoted15RoutingTimeline5Event_dependencies);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

double sub_100331D8C(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtCC12mediaremoted15RoutingTimeline5Event_dependencies);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  return result;
}

uint64_t sub_100331E54()
{
  v1._countAndFlagsBits = _typeName(_:qualified:)();
  String.append(_:)(v1);

  v2._countAndFlagsBits = 60;
  v2._object = 0xE100000000000000;
  String.append(_:)(v2);
  v3._countAndFlagsBits = (*(*v0 + 160))();
  String.append(_:)(v3);

  v4._countAndFlagsBits = 8254;
  v4._object = 0xE200000000000000;
  String.append(_:)(v4);
  v5 = (*(*v0 + 104))();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12._countAndFlagsBits = sub_100331968(v5);
  String.append(_:)(v12);

  sub_1002FB794(v5, v7, v9, v11);
  v13._countAndFlagsBits = 8236;
  v13._object = 0xE200000000000000;
  String.append(_:)(v13);
  (*(*v0 + 168))(&v17);
  sub_10023DCC8();
  v14._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v14);
  sub_100238E4C(&v17);

  v15._countAndFlagsBits = 62;
  v15._object = 0xE100000000000000;
  String.append(_:)(v15);
  return 60;
}

double sub_100332068@<D0>(uint64_t a1@<X8>)
{
  sub_10026D074(v4);
  result = *v4;
  v3 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v3;
  *(a1 + 32) = v5;
  return result;
}

void sub_1003320B8(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtCC12mediaremoted15RoutingTimeline5Event_routingEvent;
  v5 = *(v1 + OBJC_IVAR____TtCC12mediaremoted15RoutingTimeline5Event_routingEvent);
  v4 = *(v1 + OBJC_IVAR____TtCC12mediaremoted15RoutingTimeline5Event_routingEvent + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(v3 + 32);
  v9 = *(v3 + 40);
  v10 = *(v3 + 48);

  sub_10026D0B8(v6, v7, v8, v9, v10);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  *(a1 + 40) = v9;
  *(a1 + 48) = v10;
}

uint64_t sub_10033213C(uint64_t a1)
{
  v2 = swift_allocObject();
  v3 = v2 + OBJC_IVAR____TtCC12mediaremoted15RoutingTimeline5Event_state;
  *(v3 + 8) = 0;
  *(v3 + 16) = 0;
  *v3 = 0;
  *(v3 + 24) = 0;
  v4 = (v2 + OBJC_IVAR____TtCC12mediaremoted15RoutingTimeline5Event_dependencies);
  *v4 = 0;
  v4[1] = _swiftEmptyArrayStorage;
  sub_1003321B8(a1, v2 + OBJC_IVAR____TtCC12mediaremoted15RoutingTimeline5Event_routingEvent);
  return v2;
}

uint64_t sub_1003321B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RoutingEvent(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10033221C(uint64_t a1)
{
  type metadata accessor for RoutingEvent(0);
  sub_100339ABC(&qword_100526788, type metadata accessor for RoutingEvent, &unk_100455270);
  return dispatch thunk of Hashable.hash(into:)();
}

uint64_t sub_1003322A0()
{
  sub_100339480(v0 + OBJC_IVAR____TtCC12mediaremoted15RoutingTimeline5Event_routingEvent);
  sub_1002FB794(*(v0 + OBJC_IVAR____TtCC12mediaremoted15RoutingTimeline5Event_state), *(v0 + OBJC_IVAR____TtCC12mediaremoted15RoutingTimeline5Event_state + 8), *(v0 + OBJC_IVAR____TtCC12mediaremoted15RoutingTimeline5Event_state + 16), *(v0 + OBJC_IVAR____TtCC12mediaremoted15RoutingTimeline5Event_state + 24));

  return swift_deallocClassInstance();
}

Swift::Int sub_100332344()
{
  Hasher.init(_seed:)();
  (*(*v0 + 192))(v2);
  return Hasher._finalize()();
}

Swift::Int sub_100332470(uint64_t a1)
{
  Hasher.init(_seed:)();
  (*(**v1 + 192))(v3);
  return Hasher._finalize()();
}

void sub_1003324DC()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = (&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v5 = (*(*v0 + 120))(v3);
  (*(v2 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v1);
  v6 = _dispatchPreconditionTest(_:)();
  (*(v2 + 8))(v5, v1);
  if (v6)
  {
    swift_beginAccess();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100332620()
{
  _StringGuts.grow(_:)(25);

  v42[0] = 0x1000000000000016;
  v42[1] = 0x80000001004405C0;
  swift_beginAccess();
  v1._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v1);

  v2._countAndFlagsBits = 10;
  v2._object = 0xE100000000000000;
  String.append(_:)(v2);
  v3._countAndFlagsBits = 0x1000000000000016;
  v3._object = 0x80000001004405C0;
  String.append(_:)(v3);

  v4 = *(v0 + 32);
  v5 = v4[4];
  if (v4[2] >= v4[3] + v5)
  {
    v6 = v4[3] + v5;
  }

  else
  {
    v6 = v4[2];
  }

  v39 = v4;
  v40 = v4[4];
  v41 = v6;

  while (1)
  {
    if (v5 != v6)
    {
      v7 = v39;
      goto LABEL_6;
    }

    v36 = sub_1002FB688();
    v7 = v39;
    if ((v36 & 1) == 0)
    {
      break;
    }

LABEL_6:
    v8 = v40;
    v5 = ++v40;
    v9 = v7[v8 + 5];

    v10._object = 0x80000001004405E0;
    v10._countAndFlagsBits = 0x1000000000000010;
    String.append(_:)(v10);
    _StringGuts.grow(_:)(30);

    v12._countAndFlagsBits = (*(*v9 + 160))(v11);
    String.append(_:)(v12);

    v13._countAndFlagsBits = 10;
    v13._object = 0xE100000000000000;
    String.append(_:)(v13);
    v14._countAndFlagsBits = 0x100000000000001BLL;
    v14._object = 0x8000000100440600;
    String.append(_:)(v14);

    _StringGuts.grow(_:)(26);

    (*(*v9 + 168))(v42, v15);
    sub_10023DCC8();
    v16._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v16);
    sub_100238E4C(v42);

    v17._countAndFlagsBits = 10;
    v17._object = 0xE100000000000000;
    String.append(_:)(v17);
    v18._countAndFlagsBits = 0x1000000000000017;
    v18._object = 0x8000000100440620;
    String.append(_:)(v18);

    _StringGuts.grow(_:)(34);

    (*(*v9 + 128))(v19);
    sub_1001BC5A8(&qword_100526790, qword_1004585A0);
    sub_1003394DC();
    v20 = BidirectionalCollection<>.joined(separator:)();
    v22 = v21;

    v23._countAndFlagsBits = v20;
    v23._object = v22;
    String.append(_:)(v23);

    v24._countAndFlagsBits = 2653;
    v24._object = 0xE200000000000000;
    String.append(_:)(v24);
    v25._countAndFlagsBits = 0x100000000000001ELL;
    v25._object = 0x8000000100440640;
    String.append(_:)(v25);

    _StringGuts.grow(_:)(25);

    v27 = (*(*v9 + 104))(v26);
    v29 = v28;
    v31 = v30;
    LOBYTE(v22) = v32;
    v33._countAndFlagsBits = sub_100331968(v27);
    String.append(_:)(v33);

    sub_1002FB794(v27, v29, v31, v22);
    v34._countAndFlagsBits = 10;
    v34._object = 0xE100000000000000;
    String.append(_:)(v34);
    v35._countAndFlagsBits = 0x1000000000000016;
    v35._object = 0x8000000100440660;
    String.append(_:)(v35);

    v6 = v41;
  }

  v37._countAndFlagsBits = 0xE2B095E220202020;
  v37._object = 0xAF0A899F80F48094;
  String.append(_:)(v37);
  return 0x100000000000002FLL;
}

uint64_t sub_100332B0C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = (&v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v9 = (*(*v2 + 120))(v7);
  (*(v6 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v5);
  v10 = _dispatchPreconditionTest(_:)();
  (*(v6 + 8))(v9, v5);
  if ((v10 & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  type metadata accessor for RoutingTimeline.Observer();
  v11 = swift_allocObject();
  *(v11 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v11 + 24) = a2;
  swift_unknownObjectWeakAssign();
  swift_beginAccess();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(v3 + 40) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v3 + 40) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
LABEL_5:
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  return swift_endAccess();
}

uint64_t sub_100332CE8(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = (&v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v9 = (*(*v2 + 120))(v7);
  (*(v6 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v5);
  v10 = _dispatchPreconditionTest(_:)();
  (*(v6 + 8))(v9, v5);
  if ((v10 & 1) == 0)
  {
    __break(1u);
LABEL_6:
    result = _CocoaArrayWrapper.endIndex.getter();
    v13 = result;
    if (result >= a2)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  swift_beginAccess();
  swift_unknownObjectRetain();
  a2 = sub_100339564(v2 + 5, a1);
  result = swift_unknownObjectRelease();
  v12 = v2[5];
  if (v12 >> 62)
  {
    goto LABEL_6;
  }

  v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v13 >= a2)
  {
LABEL_4:
    sub_100339948(a2, v13);
    return swift_endAccess();
  }

LABEL_7:
  __break(1u);
  return result;
}

void sub_100332EAC(uint64_t a1)
{
  v2 = v1;
  v79 = a1;
  v3 = *v1;
  v4 = sub_1001BC5A8(&qword_100525C00, &unk_1004511A0);
  __chkstk_darwin(v4 - 8);
  v81 = &v73 - v5;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v80 = &v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for RoutingEvent(0);
  v10 = __chkstk_darwin(v9);
  v75 = &v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v14 = &v73 - v13;
  __chkstk_darwin(v12);
  v16 = &v73 - v15;
  v17 = type metadata accessor for DispatchPredicate();
  v18 = *(v17 - 8);
  v19 = __chkstk_darwin(v17);
  v21 = (&v73 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v76 = v3;
  *v21 = (*(v3 + 120))(v19);
  (*(v18 + 104))(v21, enum case for DispatchPredicate.onQueue(_:), v17);
  LOBYTE(v3) = _dispatchPreconditionTest(_:)();
  (*(v18 + 8))(v21, v17);
  if ((v3 & 1) == 0)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return;
  }

  v77 = v9;
  v22 = v79;
  sub_100331B10(v79, v16);
  type metadata accessor for RoutingTimeline.Event(0);
  v23 = swift_allocObject();
  v24 = v23 + OBJC_IVAR____TtCC12mediaremoted15RoutingTimeline5Event_state;
  *(v24 + 8) = 0;
  *(v24 + 16) = 0;
  *v24 = 0;
  *(v24 + 24) = 0;
  v25 = (v23 + OBJC_IVAR____TtCC12mediaremoted15RoutingTimeline5Event_dependencies);
  *v25 = 0;
  v25[1] = _swiftEmptyArrayStorage;
  sub_1003321B8(v16, v23 + OBJC_IVAR____TtCC12mediaremoted15RoutingTimeline5Event_routingEvent);
  v26 = sub_100333B9C(v23);
  v28 = v27;
  v29 = (v23 + OBJC_IVAR____TtCC12mediaremoted15RoutingTimeline5Event_dependencies);
  swift_beginAccess();
  *v29 = v26;
  v29[1] = v28;

  v30 = sub_100028D40();
  (*(v7 + 16))(v80, v30, v6);
  sub_100331B10(v22, v14);
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.default.getter();
  v33 = os_log_type_enabled(v31, v32);
  v34 = v6;
  v78 = v7;
  if (v33)
  {
    v35 = v22;
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v74 = v34;
    v82[0] = v37;
    *v36 = 136315394;
    v38 = _typeName(_:qualified:)();
    v40 = sub_10002C9C8(v38, v39, v82);

    *(v36 + 4) = v40;
    *(v36 + 12) = 2082;
    v41 = sub_10026D044();
    v43 = v42;
    sub_100339480(v14);
    v44 = sub_10002C9C8(v41, v43, v82);

    *(v36 + 14) = v44;
    _os_log_impl(&_mh_execute_header, v31, v32, "[%s] addEvent<%{public}s>", v36, 0x16u);
    swift_arrayDestroy();
    v34 = v74;

    v22 = v35;
    v7 = v78;
  }

  else
  {

    sub_100339480(v14);
  }

  v45 = *(v7 + 8);
  v45(v80, v34);
  swift_beginAccess();
  v46 = *(v2[4] + 24);
  v47 = v46 + 1;
  if (__OFADD__(v46, 1))
  {
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v49 = v2[4];
  if (*(v49 + 16) < v47 || (isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_10033871C(isUniquelyReferenced_nonNull_native, v47, 0);
    v49 = v2[4];
  }

  sub_1003388D8((v49 + 16), v49 + 40, v23);
  swift_endAccess();
  v50 = *(v22 + *(v77 + 28));
  v51 = swift_allocObject();
  swift_weakInit();
  v52 = swift_allocObject();
  *(v52 + 16) = v51;
  *(v52 + 24) = v23;
  v53 = *(*v50 + 168);

  v53(sub_100339A6C, v52);

  v54 = sub_1001D93CC();
  v55 = v81;
  sub_100015B34(v54, v81);
  if ((*(v7 + 48))(v55, 1, v34) == 1)
  {
    sub_1000038A4(v81, &qword_100525C00, &unk_1004511A0);
  }

  else
  {
    v56 = v75;
    sub_100331B10(v22, v75);

    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      v82[0] = v80;
      *v59 = 136315650;
      v60 = _typeName(_:qualified:)();
      v62 = v45;
      v63 = v56;
      v64 = sub_10002C9C8(v60, v61, v82);

      *(v59 + 4) = v64;
      *(v59 + 12) = 2080;
      v65 = sub_10026D044();
      v67 = v66;
      sub_100339480(v63);
      v68 = sub_10002C9C8(v65, v67, v82);

      *(v59 + 14) = v68;
      *(v59 + 22) = 2080;
      v70 = (*(*v2 + 216))(v69);
      v72 = sub_10002C9C8(v70, v71, v82);

      *(v59 + 24) = v72;
      _os_log_impl(&_mh_execute_header, v57, v58, "[%s] addEvent<%s> - updated timeline: %s", v59, 0x20u);
      swift_arrayDestroy();

      v62(v81, v34);
    }

    else
    {

      sub_100339480(v56);
      v45(v81, v34);
    }
  }

  sub_100337CF8();
  sub_100338148();
}

void sub_1003336E4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = (&v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *a1;
  v10 = a1[1];
  v11 = a1[2];
  v12 = *(a1 + 24);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    *v8 = (*(*Strong + 120))(Strong);
    (*(v6 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v5);
    v14 = _dispatchPreconditionTest(_:)();
    (*(v6 + 8))(v8, v5);
    if (v14)
    {
      sub_10033509C(a3, v9, v10, v11, v12);
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_100333878(uint64_t a1)
{
  v3 = sub_1001BC5A8(&qword_100525C00, &unk_1004511A0);
  __chkstk_darwin(v3 - 8);
  v5 = &v24 - v4;
  (*(*a1 + 112))(1, 0, 0, 0);
  v6 = sub_1001D93CC();
  sub_100015B34(v6, v5);
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v5, 1, v7) == 1)
  {
    return sub_1000038A4(v5, &qword_100525C00, &unk_1004511A0);
  }

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v25 = v24;
    *v12 = 136315650;
    v13 = _typeName(_:qualified:)();
    v15 = sub_10002C9C8(v13, v14, &v25);

    *(v12 + 4) = v15;
    *(v12 + 12) = 2080;
    v17 = (*(*a1 + 160))(v16);
    v19 = sub_10002C9C8(v17, v18, &v25);

    *(v12 + 14) = v19;
    *(v12 + 22) = 2080;
    v21 = (*(*v1 + 216))(v20);
    v23 = sub_10002C9C8(v21, v22, &v25);

    *(v12 + 24) = v23;
    _os_log_impl(&_mh_execute_header, v10, v11, "[%s] willBeginProcessingEvent<%s> - updated timeline: %s", v12, 0x20u);
    swift_arrayDestroy();
  }

  return (*(v8 + 8))(v5, v7);
}

uint64_t sub_100333B9C(uint64_t a1)
{
  v230 = a1;
  v215 = sub_1001BC5A8(&qword_100526AE8, &qword_100458840);
  __chkstk_darwin(v215);
  v222 = &v203 - v2;
  v217 = type metadata accessor for RoutingControl.Target();
  v3 = *(v217 - 8);
  v4 = __chkstk_darwin(v217);
  v203 = (&v203 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __chkstk_darwin(v4);
  v206 = &v203 - v7;
  v8 = __chkstk_darwin(v6);
  v214 = &v203 - v9;
  __chkstk_darwin(v8);
  v213 = &v203 - v10;
  v224 = type metadata accessor for RoutingControl.RoutingControlType();
  v11 = *(v224 - 8);
  __chkstk_darwin(v224);
  v223 = &v203 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v227 = type metadata accessor for RoutingControl();
  v13 = *(v227 - 8);
  v14 = __chkstk_darwin(v227);
  v221 = &v203 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v228 = &v203 - v17;
  __chkstk_darwin(v16);
  v226 = &v203 - v18;
  v234 = 0;
  v235 = _swiftEmptyArrayStorage;
  swift_beginAccess();
  v19 = *(v1 + 32);
  v20 = v19[4];
  if (v19[2] >= v19[3] + v20)
  {
    v21 = v19[3] + v20;
  }

  else
  {
    v21 = v19[2];
  }

  v231 = v19;
  v232 = v20;
  v233 = v21;
  v22 = (v13 + 16);
  v225 = (v13 + 8);
  v212 = (v3 + 32);
  v216 = (v3 + 88);
  v211 = enum case for RoutingControl.Target.session(_:);
  v208 = enum case for RoutingControl.Target.item(_:);
  v207 = (v3 + 16);
  v205 = (v3 + 8);
  v220 = (v11 + 88);
  v219 = enum case for RoutingControl.RoutingControlType.play(_:);
  v209 = (v11 + 8);

  v229 = (v13 + 16);
  v210 = (v3 + 96);
  while (1)
  {
    if (v20 != v21)
    {
      v25 = v231;
      goto LABEL_12;
    }

    v24 = sub_1002FB688();
    v25 = v231;
    if ((v24 & 1) == 0)
    {
      break;
    }

LABEL_12:
    v26 = v232;
    v20 = ++v232;
    v27 = v25[v26 + 5];
    v28 = *(*v230 + 168);

    v28(v236, v29);
    v30 = v236[0];
    if (v237 > 5u)
    {
      v36 = v228;
      if (v237 > 8u)
      {
        if (v237 == 9)
        {
          v85 = sub_100238E4C(v236);
          v69 = (*(*v27 + 160))(v85);
          v71 = v86;
          v72 = v234;
          v73 = v235;
          v74 = v235[2];
          if (!v234)
          {
            if (v74)
            {
              v87 = v235 + 5;
              do
              {
                v88 = *(v87 - 1) == v69 && *v87 == v71;
                if (v88 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {
                  goto LABEL_116;
                }

                v87 += 2;
              }

              while (--v74);
            }

LABEL_5:
            v23 = 0;
LABEL_6:
            sub_100338C5C(v69, v71, v23);
            goto LABEL_7;
          }

LABEL_97:

          sub_100339074(v69, v71, (v73 + 4), v74, (v72 + 16), v72 + 32);
          v100 = v99;
          v23 = v101;

          if (v100)
          {
            goto LABEL_6;
          }

LABEL_7:

          v22 = v229;
          v21 = v233;
        }

        else
        {
          if (v237 != 10)
          {
            sub_100238E4C(v236);
            goto LABEL_117;
          }

          v46 = swift_projectBox();
          v47 = *v22;
          v48 = v227;
          v49 = (*v22)(v36, v46, v227);
          (*(*v27 + 168))(v244, v49);
          if (v245 == 10)
          {
            v218 = v20;
            v50 = swift_projectBox();
            v47(v221, v50, v48);
            v51 = v213;
            RoutingControl.target.getter();
            v52 = v214;
            RoutingControl.target.getter();
            v53 = v216;
            v54 = v222;
            v55 = (v222 + *(v215 + 48));
            v56 = *v212;
            v57 = v217;
            (*v212)(v222, v51, v217);
            v56(v55, v52, v57);
            v58 = *v53;
            v59 = (*v53)(v54, v57);
            v60 = v211;
            if (v59 == v211)
            {
              v61 = v206;
              (*v207)(v206, v54, v57);
              v204 = *v210;
              v204(v61, v57);
              v62 = v57;
              v64 = *v61;
              v63 = v61[1];
              if (v58(v55, v62) == v60)
              {
                v204(v55, v62);
                v65 = *v55;
                v66 = v55[1];
                if (v64 == v65 && v63 == v66)
                {

                  v22 = v229;
                  goto LABEL_193;
                }

                v183 = _stringCompareWithSmolCheck(_:_:expecting:)();

                v22 = v229;
                if ((v183 & 1) == 0)
                {

                  v20 = v218;
                  goto LABEL_226;
                }

LABEL_193:
                v184 = (*(*v27 + 160))(v67);
                v186 = v185;
                v187 = v234;
                v188 = v235;
                v189 = v235[2];
                v20 = v218;
                if (!v234)
                {
                  if (v189)
                  {
                    v190 = v235 + 5;
                    do
                    {
                      v191 = *(v190 - 1) == v184 && *v190 == v186;
                      if (v191 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                      {
                        goto LABEL_224;
                      }

                      v190 += 2;
                    }

                    while (--v189);
                  }

LABEL_221:
                  v197 = 0;
LABEL_222:
                  sub_100338C5C(v184, v186, v197);
LABEL_223:

                  v22 = v229;
LABEL_226:
                  v200 = *v225;
                  v201 = v227;
                  (*v225)(v221, v227);
                  v200(v228, v201);
                  (*v205)(v222, v217);
LABEL_227:
                  v182 = v244;
                  goto LABEL_228;
                }

LABEL_210:

                sub_100339074(v184, v186, (v188 + 4), v189, (v187 + 16), v187 + 32);
                v195 = v194;
                v197 = v196;

                if (v195)
                {
                  goto LABEL_222;
                }

                goto LABEL_223;
              }

LABEL_145:

LABEL_146:
              v156 = (*(*v27 + 160))(v59);
              v158 = v157;
              v159 = v234;
              v160 = v235;
              v161 = v235[2];
              if (v234)
              {

                sub_100339074(v156, v158, (v160 + 4), v161, (v159 + 16), v159 + 32);
                v163 = v162;
                v165 = v164;

                v20 = v218;
                if ((v163 & 1) == 0)
                {
LABEL_163:

                  v22 = v229;
LABEL_164:
                  v174 = *v225;
                  v175 = v227;
                  (*v225)(v221, v227);
                  v174(v228, v175);
                  sub_1000038A4(v222, &qword_100526AE8, &qword_100458840);
                  goto LABEL_227;
                }
              }

              else
              {
                v20 = v218;
                if (v161)
                {
                  v172 = v235 + 5;
                  v22 = v229;
                  while (1)
                  {
                    v173 = *(v172 - 1) == v156 && *v172 == v158;
                    if (v173 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                    {
                      break;
                    }

                    v172 += 2;
                    if (!--v161)
                    {
                      goto LABEL_161;
                    }
                  }

                  goto LABEL_164;
                }

LABEL_161:
                v165 = 0;
              }

              sub_100338C5C(v156, v158, v165);
              goto LABEL_163;
            }

            v126 = v210;
            if (v59 != v208)
            {
              goto LABEL_146;
            }

            v127 = v203;
            (*v207)(v203, v222, v57);
            v128 = *v126;
            (*v126)(v127, v57);
            v130 = *v127;
            v129 = v127[1];
            v131 = v58(v55, v57);
            if (v131 != v208)
            {
              goto LABEL_145;
            }

            v128(v55, v57);
            v132 = *v55;
            v133 = v55[1];
            v136 = sub_1002586E4(v130, v129, v134, v135);
            v138 = v137;

            v141 = sub_1002586E4(v132, v133, v139, v140);
            v143 = v142;

            if (v136 == v141 && v138 == v143)
            {

              v22 = v229;
              v20 = v218;
              goto LABEL_209;
            }

            v192 = _stringCompareWithSmolCheck(_:_:expecting:)();

            v22 = v229;
            v20 = v218;
            if (v192)
            {
LABEL_209:
              v184 = (*(*v27 + 160))(v144);
              v186 = v193;
              v187 = v234;
              v188 = v235;
              v189 = v235[2];
              if (v234)
              {
                goto LABEL_210;
              }

              if (!v189)
              {
                goto LABEL_221;
              }

              v198 = v235 + 5;
              while (1)
              {
                v199 = *(v198 - 1) == v184 && *v198 == v186;
                if (v199 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {
                  break;
                }

                v198 += 2;
                if (!--v189)
                {
                  goto LABEL_221;
                }
              }

LABEL_224:
            }

            goto LABEL_226;
          }

          v113 = sub_100238E4C(v244);
          v114 = (*(*v27 + 160))(v113);
          v116 = v115;
          v117 = v234;
          v118 = v235;
          v119 = v235[2];
          if (v234)
          {

            sub_100339074(v114, v116, (v118 + 4), v119, (v117 + 16), v117 + 32);
            v121 = v120;
            v123 = v122;

            if ((v121 & 1) == 0)
            {

              v22 = v229;
              goto LABEL_189;
            }
          }

          else
          {
            if (v119)
            {
              v154 = v235 + 5;
              while (1)
              {
                v155 = *(v154 - 1) == v114 && *v154 == v116;
                if (v155 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {
                  break;
                }

                v154 += 2;
                if (!--v119)
                {
                  goto LABEL_143;
                }
              }

LABEL_189:
              v180 = *v225;
              v181 = v228;
LABEL_205:
              v180(v181, v227);
              goto LABEL_229;
            }

LABEL_143:
            v123 = 0;
          }

          sub_100338C5C(v114, v116, v123);

          (*v225)(v228, v227);
LABEL_187:
          sub_100238E4C(v236);
          v22 = v229;
          v21 = v233;
        }
      }

      else
      {
        if (v237 == 6)
        {
          v81 = sub_100238E4C(v236);
          v69 = (*(*v27 + 160))(v81);
          v71 = v82;
          v72 = v234;
          v73 = v235;
          v74 = v235[2];
          if (!v234)
          {
            if (v74)
            {
              v83 = v235 + 5;
              while (1)
              {
                v84 = *(v83 - 1) == v69 && *v83 == v71;
                if (v84 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {
                  goto LABEL_116;
                }

                v83 += 2;
                if (!--v74)
                {
                  goto LABEL_5;
                }
              }
            }

            goto LABEL_5;
          }

          goto LABEL_97;
        }

        if (v237 != 7)
        {
          v97 = sub_100238E4C(v236);
          v69 = (*(*v27 + 160))(v97);
          v71 = v98;
          v72 = v234;
          v73 = v235;
          v74 = v235[2];
          if (!v234)
          {
            if (v74)
            {
              v124 = v235 + 5;
              while (1)
              {
                v125 = *(v124 - 1) == v69 && *v124 == v71;
                if (v125 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {
                  goto LABEL_116;
                }

                v124 += 2;
                if (!--v74)
                {
                  goto LABEL_5;
                }
              }
            }

            goto LABEL_5;
          }

          goto LABEL_97;
        }

        v37 = swift_projectBox();
        v38 = v227;
        (*v22)(v226, v37, v227);
        v39 = v223;
        RoutingControl.type.getter();
        v40 = (*v220)(v39, v224);
        v41 = *(*v27 + 168);
        if (v40 != v219)
        {
          v41(v242);
          if (v243 - 5 <= 1)
          {
            v102 = sub_100238E4C(v242);
            v103 = (*(*v27 + 160))(v102);
            v105 = v104;
            v106 = v234;
            v107 = v235;
            v108 = v235[2];
            if (v234)
            {

              sub_100339074(v103, v105, (v107 + 4), v108, (v106 + 16), v106 + 32);
              v110 = v109;
              v112 = v111;

              if ((v110 & 1) == 0)
              {
LABEL_175:

                v38 = v227;
                v22 = v229;
                goto LABEL_176;
              }
            }

            else
            {
              if (v108)
              {
                v176 = v235 + 5;
                while (1)
                {
                  v177 = *(v176 - 1) == v103 && *v176 == v105;
                  if (v177 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                  {
                    break;
                  }

                  v176 += 2;
                  if (!--v108)
                  {
                    goto LABEL_173;
                  }
                }

                v38 = v227;
                goto LABEL_176;
              }

LABEL_173:
              v112 = 0;
            }

            sub_100338C5C(v103, v105, v112);
            goto LABEL_175;
          }

          sub_100238E4C(v242);
LABEL_176:
          (*v225)(v226, v38);
          (*v209)(v223, v224);
          goto LABEL_229;
        }

        v41(v240);
        if (v241 < 4u)
        {
          v43 = v240[2];
          v42 = v240[3];

          sub_100238E4C(v240);
          if (v43 == RoutingControl.sessionIdentifier.getter() && v42 == v44)
          {
          }

          else
          {
            v166 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((v166 & 1) == 0)
            {
              (*v225)(v226, v227);

              goto LABEL_229;
            }
          }

          v146 = (*(*v27 + 160))(v45);
          v148 = v167;
          v149 = v234;
          v150 = v235;
          v151 = v235[2];
          if (v234)
          {
            goto LABEL_151;
          }

          if (v151)
          {
            v178 = v235 + 5;
            do
            {
              v179 = *(v178 - 1) == v146 && *v178 == v148;
              if (v179 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {
                goto LABEL_203;
              }

              v178 += 2;
            }

            while (--v151);
          }

LABEL_185:
          v171 = 0;
          goto LABEL_186;
        }

        if (v241 - 5 < 2)
        {
          v145 = sub_100238E4C(v240);
          v146 = (*(*v27 + 160))(v145);
          v148 = v147;
          v149 = v234;
          v150 = v235;
          v151 = v235[2];
          if (!v234)
          {
            if (v151)
            {
              v152 = v235 + 5;
              while (1)
              {
                v153 = *(v152 - 1) == v146 && *v152 == v148;
                if (v153 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {
                  break;
                }

                v152 += 2;
                if (!--v151)
                {
                  goto LABEL_185;
                }
              }

LABEL_203:

LABEL_204:
              v181 = v226;
              v180 = *v225;
              goto LABEL_205;
            }

            goto LABEL_185;
          }

LABEL_151:

          sub_100339074(v146, v148, (v150 + 4), v151, (v149 + 16), v149 + 32);
          v169 = v168;
          v171 = v170;

          if ((v169 & 1) == 0)
          {

            v22 = v229;
            goto LABEL_204;
          }

LABEL_186:
          sub_100338C5C(v146, v148, v171);

          (*v225)(v226, v227);
          goto LABEL_187;
        }

        (*v225)(v226, v38);

        v182 = v240;
LABEL_228:
        sub_100238E4C(v182);
LABEL_229:
        sub_100238E4C(v236);
        v21 = v233;
      }
    }

    else
    {
      if (v237 >= 4u)
      {
        if (v237 == 4)
        {
          v68 = sub_100238E4C(v236);
          v69 = (*(*v27 + 160))(v68);
          v71 = v70;
          v72 = v234;
          v73 = v235;
          v74 = v235[2];
          if (!v234)
          {
            if (v74)
            {
              v75 = v235 + 5;
              v22 = v229;
              while (1)
              {
                v76 = *(v75 - 1) == v69 && *v75 == v71;
                if (v76 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {
                  goto LABEL_116;
                }

                v75 += 2;
                if (!--v74)
                {
                  goto LABEL_5;
                }
              }
            }

            goto LABEL_5;
          }
        }

        else
        {
          v89 = sub_100238E4C(v236);
          v69 = (*(*v27 + 160))(v89);
          v71 = v90;
          v72 = v234;
          v73 = v235;
          v74 = v235[2];
          if (!v234)
          {
            if (v74)
            {
              v91 = v235 + 5;
              v22 = v229;
              while (1)
              {
                v92 = *(v91 - 1) == v69 && *v91 == v71;
                if (v92 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {
                  goto LABEL_116;
                }

                v91 += 2;
                if (!--v74)
                {
                  goto LABEL_5;
                }
              }
            }

            goto LABEL_5;
          }
        }

        goto LABEL_97;
      }

      v31 = v236[1];

      (*(*v27 + 168))(v238, v32);
      if (v239 > 3u)
      {

        v77 = sub_100238E4C(v238);
        v69 = (*(*v27 + 160))(v77);
        v71 = v78;
        v72 = v234;
        v73 = v235;
        v74 = v235[2];
        if (!v234)
        {
          if (v74)
          {
            v79 = v235 + 5;
            while (1)
            {
              v80 = *(v79 - 1) == v69 && *v79 == v71;
              if (v80 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {
                goto LABEL_116;
              }

              v79 += 2;
              if (!--v74)
              {
                goto LABEL_5;
              }
            }
          }

          goto LABEL_5;
        }

        goto LABEL_97;
      }

      v34 = v238[0];
      v33 = v238[1];

      sub_100238E4C(v238);
      if (v34 == v30 && v33 == v31)
      {
      }

      else
      {
        v93 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v93 & 1) == 0)
        {
          goto LABEL_117;
        }
      }

      v69 = (*(*v27 + 160))(v35);
      v71 = v94;
      v72 = v234;
      v73 = v235;
      v74 = v235[2];
      if (v234)
      {
        goto LABEL_97;
      }

      if (!v74)
      {
        goto LABEL_5;
      }

      v95 = v235 + 5;
      while (1)
      {
        v96 = *(v95 - 1) == v69 && *v95 == v71;
        if (v96 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          break;
        }

        v95 += 2;
        if (!--v74)
        {
          goto LABEL_5;
        }
      }

LABEL_116:

LABEL_117:

      v21 = v233;
    }
  }

  return v234;
}

void sub_10033509C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(*a1 + 104);
  v11 = v10();
  if (v11 != 3)
  {
    v15 = sub_1002FB794(v11, v12, v13, v14);
    v16 = (v10)(v15);
    if (v16 == 1)
    {
      if (a2)
      {
        v20 = *(*a1 + 112);
        sub_10023DBE8(a2, a3, a4, a5);
        swift_errorRetain();
        sub_10023DC40(a3, a4, a5);
        v20(a2, a3, a4, a5);

        sub_10023DCB0(a3, a4, a5);
      }

      else
      {
        (*(*a1 + 112))(2, 0, 0, 0);
      }

      sub_1003353A0(a1);
    }

    else
    {
      sub_1002FB794(v16, v17, v18, v19);
      _StringGuts.grow(_:)(52);
      v21._countAndFlagsBits = 91;
      v21._object = 0xE100000000000000;
      String.append(_:)(v21);
      v22._countAndFlagsBits = _typeName(_:qualified:)();
      String.append(_:)(v22);

      v23._countAndFlagsBits = 0xD000000000000017;
      v23._object = 0x8000000100440830;
      String.append(_:)(v23);
      v24._countAndFlagsBits = (*(*a1 + 160))();
      String.append(_:)(v24);

      v25._object = 0x8000000100440850;
      v25._countAndFlagsBits = 0xD000000000000016;
      String.append(_:)(v25);
      v26._countAndFlagsBits = (*(*a1 + 152))();
      String.append(_:)(v26);

      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }
}

void sub_1003353A0(uint64_t a1)
{
  v3 = *v1;
  v4 = sub_1001BC5A8(&qword_100525C00, &unk_1004511A0);
  v5 = __chkstk_darwin(v4 - 8);
  v176 = &v168 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v190 = &v168 - v7;
  v8 = type metadata accessor for Logger();
  v183 = *(v8 - 8);
  v9 = v183;
  v10 = __chkstk_darwin(v8);
  v169 = &v168 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v172 = &v168 - v13;
  v14 = __chkstk_darwin(v12);
  v16 = &v168 - v15;
  v17 = (*(*a1 + 160))(v14);
  v19 = v18;
  v20 = sub_100028D40();
  v181 = v9;
  v21 = *(v9 + 16);
  v175 = v20;
  v173 = v9 + 16;
  v174 = v21;
  (v21)(v16);

  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.info.getter();

  v24 = os_log_type_enabled(v22, v23);
  v182 = v19;
  v189 = a1;
  v177 = v3;
  v178 = v17;
  if (v24)
  {
    v25 = swift_slowAlloc();
    v194[0] = swift_slowAlloc();
    *v25 = 136315650;
    v26 = _typeName(_:qualified:)();
    v28 = sub_10002C9C8(v26, v27, v194);

    *(v25 + 4) = v28;
    *(v25 + 12) = 2082;
    *(v25 + 14) = sub_10002C9C8(v17, v19, v194);
    *(v25 + 22) = 2082;
    v29 = (*(*v189 + 152))();
    v3 = sub_10002C9C8(v29, v30, v194);

    *(v25 + 24) = v3;
    _os_log_impl(&_mh_execute_header, v22, v23, "[%s] rebuild<%{public}s> - rebuild for event: %{public}s", v25, 0x20u);
    swift_arrayDestroy();

    a1 = v189;
  }

  v31 = v183;
  v180 = *(v183 + 8);
  v180(v16, v8);
  v170 = sub_1001D93CC();
  v32 = v190;
  sub_100015B34(v170, v190);
  v33 = *(v31 + 48);
  v179 = v8;
  v171 = v33;
  v34 = v33(v32, 1, v8);
  v183 = v31 + 48;
  if (v34 == 1)
  {
    sub_1000038A4(v32, &qword_100525C00, &unk_1004511A0);
  }

  else
  {
    v35 = v182;

    v36 = v184;

    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v194[0] = swift_slowAlloc();
      *v39 = 136315650;
      v40 = _typeName(_:qualified:)();
      v42 = sub_10002C9C8(v40, v41, v194);

      *(v39 + 4) = v42;
      *(v39 + 12) = 2080;
      *(v39 + 14) = sub_10002C9C8(v178, v35, v194);
      *(v39 + 22) = 2080;
      v43 = (*(*v36 + 216))();
      v3 = sub_10002C9C8(v43, v44, v194);

      *(v39 + 24) = v3;
      _os_log_impl(&_mh_execute_header, v37, v38, "[%s] rebuild<%s> - current: %s", v39, 0x20u);
      swift_arrayDestroy();
    }

    a1 = v189;
    v180(v32, v179);
  }

  v45 = v184;
  swift_beginAccess();
  v46 = *(v45 + 32);
  v47 = &unk_100538000;
  v48 = OBJC_IVAR____TtCC12mediaremoted15RoutingTimeline5Event_routingEvent;
  v49 = v46[3];

  if (!v49)
  {
    goto LABEL_96;
  }

  v50 = 0;
  v51 = v46 + 5;
  v185 = v46 + 5;
  v186 = v48;
  while (1)
  {
    if (v50 >= v49)
    {
      __break(1u);
LABEL_91:
      __break(1u);
LABEL_92:
      __break(1u);
LABEL_93:
      __break(1u);
LABEL_94:
      __break(1u);
      goto LABEL_95;
    }

    v52 = v46[4];
    v53 = v50 + v52 >= v46[2] ? v46[2] : 0;
    v3 = v51[v50 + v52 - v53];
    v54 = v47[172];

    if (sub_10026D4AC((v3 + v54), (a1 + v48)))
    {
      break;
    }

LABEL_11:
    ++v50;
    v49 = v46[3];
    if (v50 == v49)
    {
      goto LABEL_96;
    }
  }

  v55 = (*(*v3 + 104))();
  v57 = v56;
  v190 = v58;
  v60 = v59;
  v61 = *(*a1 + 104);
  v187 = *a1 + 104;
  v188 = v61;
  v62 = v61();
  v64 = v63;
  v66 = v65;
  v68 = v67;

  if (v55 <= 1)
  {
    if (!v55)
    {
      if (!v62)
      {
        goto LABEL_32;
      }

      goto LABEL_31;
    }

    if (v55 == 1)
    {
      if (v62 == 1)
      {
        goto LABEL_32;
      }

      goto LABEL_31;
    }

LABEL_26:
    sub_1002FB794(v55, v57, v190, v60);
    if (v62 >= 4)
    {

      v121 = sub_1002FB794(v62, v64, v66, v68);
      goto LABEL_33;
    }

    goto LABEL_31;
  }

  if (v55 != 2)
  {
    if (v55 == 3)
    {
      if (v62 == 3)
      {
        goto LABEL_32;
      }

      goto LABEL_31;
    }

    goto LABEL_26;
  }

  if (v62 != 2)
  {
LABEL_31:
    sub_1002FB794(v62, v64, v66, v68);
    a1 = v189;
    v47 = &unk_100538000;
    v51 = v185;
    v48 = v186;
    goto LABEL_11;
  }

LABEL_32:

LABEL_33:
  v3 = v188;
  v69 = v189;
  v70 = (v188)(v121);
  if (v70 == 2)
  {
    goto LABEL_34;
  }

  if (v70 < 2 || v70 == 3)
  {
    goto LABEL_98;
  }

  v85 = v71;
  v86 = v72;
  v87 = v177;
  if (v73 <= 1u)
  {
    if (v73)
    {

      sub_100337220(v85, v86, v50, v184, v178, v182, v69, v87);

      sub_10023DCB0(v85, v86, 1u);
      sub_10023DCB0(v85, v86, 1u);
    }

    else
    {

      sub_100336744(v85, v86, v50, v184, v178, v182, v69, v87);

      sub_10023DCB0(v85, v86, 0);
      sub_10023DCB0(v85, v86, 0);
    }
  }

  else
  {
    if (v73 == 2)
    {

      sub_100336744(v85, v86, 0, v184, v178, v182, v69, v87);

      sub_10023DCB0(v85, v86, 2u);
      sub_10023DCB0(v85, v86, 2u);
      goto LABEL_34;
    }

    v88 = v184;
    v89 = v178;
    if (v73 == 3)
    {

      sub_100337220(v85, v86, 0, v88, v89, v182, v69, v87);

      sub_10023DCB0(v85, v86, 3u);
      sub_10023DCB0(v85, v86, 3u);
      goto LABEL_34;
    }

    if (v71 | v72)
    {
      v122 = v184[4];
      v123 = v122[4];
      if (v122[2] >= (v122[3] + v123))
      {
        v124 = v122[3] + v123;
      }

      else
      {
        v124 = v122[2];
      }

      v191 = v184[4];
      v192 = v123;
      v193 = v124;

      while (1)
      {
        if (v123 == v124)
        {
          if ((sub_1002FB688() & 1) == 0)
          {

            sub_10023DCB0(v85, v86, 4u);

            goto LABEL_34;
          }

          v122 = v191;
          v123 = v192;
        }

        v125 = v123 + 1;
        v192 = v123 + 1;
        v126 = v122[v123 + 5];
        v127 = *(*v126 + 104);

        v129 = v127(v128);
        if (v129)
        {
          sub_1002FB794(v129, v130, v131, v132);
        }

        else
        {
          (*(*v126 + 112))(3, 0, 0, 0);
        }

        v124 = v193;
        v123 = v125;
      }
    }
  }

LABEL_34:
  v74 = v172;
  v75 = v179;
  v174(v172, v175, v179);
  v3 = v182;

  v76 = v184;

  v77 = Logger.logObject.getter();
  a1 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v77, a1))
  {
    v78 = swift_slowAlloc();
    v191 = swift_slowAlloc();
    *v78 = 136315650;
    v79 = _typeName(_:qualified:)();
    v81 = sub_10002C9C8(v79, v80, &v191);

    *(v78 + 4) = v81;
    *(v78 + 12) = 2080;
    *(v78 + 14) = sub_10002C9C8(v178, v182, &v191);
    *(v78 + 22) = 2080;
    v82 = (*(*v76 + 216))();
    v84 = sub_10002C9C8(v82, v83, &v191);

    *(v78 + 24) = v84;
    _os_log_impl(&_mh_execute_header, v77, a1, "[%s] rebuild<%s> - before advancing: %s", v78, 0x20u);
    swift_arrayDestroy();

    v3 = v182;
  }

  v180(v74, v75);
  v90 = v176;
  sub_100337CF8();
  v91 = v76[4];
  v92 = v91[3];
  if (v92)
  {
    if (v92 >= 1)
    {
      v93 = v91[4];
      v94 = v91[2];
      if (v93 < v94)
      {
        v94 = 0;
      }

      if (v91[v93 - v94 + 5] == v189)
      {
        while (1)
        {
          if (v92 < 1)
          {
            goto LABEL_91;
          }

          v95 = v91[4];
          v96 = v91[2];
          if (v95 < v96)
          {
            v96 = 0;
          }

          a1 = v91[v95 - v96 + 5];
          v97 = *(*a1 + 104);

          v99 = v97(v98);
          if (v99 - 2 >= 2)
          {
            if (v99 < 2)
            {
              v133 = v169;
              v174(v169, v175, v75);

              v134 = Logger.logObject.getter();
              v135 = v3;
              v136 = static os_log_type_t.debug.getter();

              if (os_log_type_enabled(v134, v136))
              {
                v137 = swift_slowAlloc();
                v191 = swift_slowAlloc();
                *v137 = 136315650;
                v138 = _typeName(_:qualified:)();
                v139 = v133;
                v141 = sub_10002C9C8(v138, v140, &v191);

                *(v137 + 4) = v141;
                *(v137 + 12) = 2080;
                v142 = sub_10002C9C8(v178, v135, &v191);

                *(v137 + 14) = v142;
                *(v137 + 22) = 2080;
                v144 = (*(*v76 + 216))(v143);
                v146 = sub_10002C9C8(v144, v145, &v191);

                *(v137 + 24) = v146;
                _os_log_impl(&_mh_execute_header, v134, v136, "[%s] rebuild<%s> - advanced: %s", v137, 0x20u);
                swift_arrayDestroy();

                v147 = v139;
                v148 = v179;
              }

              else
              {

                v147 = v133;
                v148 = v75;
              }

              v180(v147, v148);
              return;
            }

            v103 = v100;
            v104 = v101;
            v105 = v102;

            sub_10023DCB0(v103, v104, v105);
          }

          swift_beginAccess();
          if (!*(v76[4] + 24))
          {
            goto LABEL_92;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1003391C0();
          }

          v106 = v76[4];
          v107 = v106[4];
          v108 = v107 + 1;
          if (__OFADD__(v107, 1))
          {
            goto LABEL_93;
          }

          v109 = v106[3];
          if (v108 >= v106[2])
          {
            v108 = 0;
          }

          v106[4] = v108;
          if (__OFSUB__(v109, 1))
          {
            goto LABEL_94;
          }

          v106[3] = v109 - 1;
          swift_endAccess();

          sub_100337CF8();

          v91 = v76[4];
          v92 = v91[3];
          if (!v92)
          {
            goto LABEL_61;
          }
        }
      }

      goto LABEL_61;
    }

LABEL_95:
    __break(1u);
LABEL_96:

    v191 = 0;
    v192 = 0xE000000000000000;
    _StringGuts.grow(_:)(64);
    v149._countAndFlagsBits = 91;
    v149._object = 0xE100000000000000;
    String.append(_:)(v149);
    v150._countAndFlagsBits = _typeName(_:qualified:)();
    String.append(_:)(v150);

    v151._countAndFlagsBits = 0x6C6975626572205DLL;
    v151._object = 0xEA00000000003C64;
    String.append(_:)(v151);
    v152._countAndFlagsBits = v178;
    v152._object = v182;
    String.append(_:)(v152);
    v153._countAndFlagsBits = 0xD00000000000002FLL;
    v153._object = 0x8000000100440800;
    String.append(_:)(v153);
    v154._countAndFlagsBits = (*(*a1 + 152))();
    String.append(_:)(v154);

    while (1)
    {
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
LABEL_98:
      v191 = 0;
      v192 = 0xE000000000000000;
      _StringGuts.grow(_:)(51);
      v155._countAndFlagsBits = 91;
      v155._object = 0xE100000000000000;
      String.append(_:)(v155);
      v156._countAndFlagsBits = _typeName(_:qualified:)();
      String.append(_:)(v156);

      v157._countAndFlagsBits = 0x6C6975626572205DLL;
      v157._object = 0xEA00000000003C64;
      String.append(_:)(v157);
      v158._countAndFlagsBits = v178;
      v158._object = v182;
      String.append(_:)(v158);
      v159._object = 0x80000001004407E0;
      v159._countAndFlagsBits = 0xD00000000000001BLL;
      String.append(_:)(v159);
      v160 = v3();
      v162 = v161;
      v3 = v163;
      v165 = v164;
      v166._countAndFlagsBits = sub_100331968(v160);
      String.append(_:)(v166);

      sub_1002FB794(v160, v162, v3, v165);
      v167._countAndFlagsBits = 0x2E746E65766520;
      v167._object = 0xE700000000000000;
      String.append(_:)(v167);
    }
  }

LABEL_61:
  sub_100015B34(v170, v90);
  if (v171(v90, 1, v75) == 1)
  {

    sub_1000038A4(v90, &qword_100525C00, &unk_1004511A0);
  }

  else
  {

    v110 = Logger.logObject.getter();
    v111 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v110, v111))
    {
      v112 = swift_slowAlloc();
      v191 = swift_slowAlloc();
      *v112 = 136315650;
      v113 = _typeName(_:qualified:)();
      v115 = sub_10002C9C8(v113, v114, &v191);

      *(v112 + 4) = v115;
      *(v112 + 12) = 2080;
      v116 = sub_10002C9C8(v178, v3, &v191);

      *(v112 + 14) = v116;
      *(v112 + 22) = 2080;
      v118 = (*(*v76 + 216))(v117);
      v120 = sub_10002C9C8(v118, v119, &v191);

      *(v112 + 24) = v120;
      _os_log_impl(&_mh_execute_header, v110, v111, "[%s] rebuild<%s> - after fully advancing: %s", v112, 0x20u);
      swift_arrayDestroy();

      v90 = v176;
    }

    else
    {
    }

    v180(v90, v75);
  }

  sub_100338148();
}

void sub_100336744(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8)
{
  v101 = a5;
  v102 = a8;
  v107 = a6;
  v109 = a1;
  v98 = type metadata accessor for RoutingControl.Target();
  v12 = *(v98 - 8);
  __chkstk_darwin(v98);
  v106 = &v86 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = type metadata accessor for Logger();
  v14 = *(v108 - 8);
  v15 = __chkstk_darwin(v108);
  v17 = &v86 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v86 - v18;
  v97 = type metadata accessor for RoutingControl();
  v20 = *(v97 - 8);
  __chkstk_darwin(v97);
  v96 = &v86 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v23 = *(*(a4 + 32) + 24);
  if (v23 <= a3)
  {
    return;
  }

  v93 = (v20 + 16);
  v92 = (v20 + 8);
  v91 = (v12 + 88);
  v90 = enum case for RoutingControl.Target.session(_:);
  v88 = (v12 + 8);
  v87 = (v12 + 96);
  v104 = (v14 + 16);
  v105 = (v14 + 8);
  *&v22 = 136315906;
  v94 = v22;
  v95 = a4;
  v103 = a2;
  v89 = v17;
  v110 = v23;
  while (a3 < v23)
  {
    v24 = *(a4 + 32);
    if (a3 >= v24[3])
    {
      goto LABEL_43;
    }

    v25 = v24[4];
    if (a3 + v25 >= v24[2])
    {
      v26 = v24[2];
    }

    else
    {
      v26 = 0;
    }

    v27 = v24[a3 + 5 + v25 - v26];
    v28 = *(*v27 + 104);

    v30 = v28(v29);
    if (v30)
    {
      sub_1002FB794(v30, v31, v32, v33);
    }

    else
    {
      (*(*v27 + 168))(v112);
      v34 = v112[0];
      if (v113 <= 5u)
      {
        v35 = v112[1];
        v36 = v112[2];
        v37 = v112[3];
        if (v113 < 4u)
        {

          v34 = v36;
          v35 = v37;
          goto LABEL_20;
        }

        if (v113 == 4)
        {
          goto LABEL_20;
        }

LABEL_31:
        sub_100238E4C(v112);
        goto LABEL_4;
      }

      v38 = v106;
      if (v113 > 8u)
      {
        if (v113 != 10)
        {
          goto LABEL_31;
        }
      }

      else
      {
        if (v113 == 6)
        {
          v64 = *(v112[0] + 16);
          v35 = *(v112[0] + 24);

          sub_100238E4C(v112);
          v34 = v64;
LABEL_20:
          if (v34 == v109 && v35 == a2)
          {

            v39 = v108;
LABEL_24:
            v41 = sub_100028D40();
            (*v104)(v19, v41, v39);

            v42 = Logger.logObject.getter();
            v43 = static os_log_type_t.info.getter();

            if (os_log_type_enabled(v42, v43))
            {
              v44 = swift_slowAlloc();
              v100 = swift_slowAlloc();
              v111 = v100;
              *v44 = v94;
              v45 = _typeName(_:qualified:)();
              LODWORD(v99) = v43;
              v47 = sub_10002C9C8(v45, v46, &v111);

              *(v44 + 4) = v47;
              *(v44 + 12) = 2082;
              *(v44 + 14) = sub_10002C9C8(v101, v107, &v111);
              *(v44 + 22) = 2082;
              v48 = *(*v27 + 152);

              v50 = v48(v49);
              v52 = v51;

              v53 = sub_10002C9C8(v50, v52, &v111);

              *(v44 + 24) = v53;
              *(v44 + 32) = 2082;
              v55 = (*(*a7 + 152))(v54);
              v57 = sub_10002C9C8(v55, v56, &v111);

              *(v44 + 34) = v57;
              _os_log_impl(&_mh_execute_header, v42, v99, "[%s] rebuild<%{public}s> - cancel event: %{public}s as per resolution of failed event: %{public}s", v44, 0x2Au);
              swift_arrayDestroy();

              a4 = v95;

              (*v105)(v19, v108);
            }

            else
            {

              (*v105)(v19, v39);
            }

            (*(*v27 + 112))(3, 0, 0, 0);

            a2 = v103;
            goto LABEL_5;
          }

          v40 = _stringCompareWithSmolCheck(_:_:expecting:)();

          v39 = v108;
          if (v40)
          {
            goto LABEL_24;
          }

          goto LABEL_4;
        }

        if (v113 != 7)
        {
          goto LABEL_31;
        }
      }

      v58 = swift_projectBox();
      v59 = v96;
      v60 = v97;
      (*v93)(v96, v58, v97);
      sub_100238E4C(v112);
      RoutingControl.target.getter();
      (*v92)(v59, v60);
      v61 = v98;
      v62 = (*v91)(v38, v98);
      if (v62 != v90)
      {

        (*v88)(v38, v61);
        goto LABEL_5;
      }

      (*v87)(v38, v61);
      if (*v38 == v109 && v38[1] == a2)
      {

        v63 = v108;
LABEL_37:
        v66 = sub_100028D40();
        v67 = v89;
        (*v104)(v89, v66, v63);

        v68 = Logger.logObject.getter();
        v69 = static os_log_type_t.info.getter();

        LODWORD(v100) = v69;
        if (os_log_type_enabled(v68, v69))
        {
          v70 = swift_slowAlloc();
          v99 = swift_slowAlloc();
          v111 = v99;
          *v70 = v94;
          v71 = _typeName(_:qualified:)();
          v86 = v68;
          v73 = sub_10002C9C8(v71, v72, &v111);

          *(v70 + 4) = v73;
          *(v70 + 12) = 2082;
          *(v70 + 14) = sub_10002C9C8(v101, v107, &v111);
          *(v70 + 22) = 2082;
          v74 = *(*v27 + 152);

          v76 = v74(v75);
          a4 = v95;
          v77 = v76;
          v79 = v78;

          v80 = sub_10002C9C8(v77, v79, &v111);

          *(v70 + 24) = v80;
          *(v70 + 32) = 2082;
          v82 = (*(*a7 + 152))(v81);
          v84 = sub_10002C9C8(v82, v83, &v111);

          *(v70 + 34) = v84;
          v85 = v86;
          _os_log_impl(&_mh_execute_header, v86, v100, "[%s] rebuild<%{public}s> - cancel event: %{public}s as per resolution of failed event: %{public}s", v70, 0x2Au);
          swift_arrayDestroy();

          a2 = v103;

          (*v105)(v89, v108);
        }

        else
        {

          (*v105)(v67, v108);
        }

        (*(*v27 + 112))(3, 0, 0, 0);
        goto LABEL_4;
      }

      v65 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v63 = v108;
      if (v65)
      {
        goto LABEL_37;
      }
    }

LABEL_4:

LABEL_5:
    ++a3;
    v23 = v110;
    if (v110 == a3)
    {
      return;
    }
  }

  __break(1u);
LABEL_43:
  __break(1u);
}

void sub_100337220(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8)
{
  v99 = a5;
  v100 = a8;
  v105 = a6;
  v106 = a1;
  v96 = type metadata accessor for RoutingControl.Target();
  v12 = *(v96 - 8);
  __chkstk_darwin(v96);
  v104 = &v84 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = type metadata accessor for Logger();
  v14 = *(v107 - 8);
  v15 = __chkstk_darwin(v107);
  v17 = &v84 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v84 - v18;
  v95 = type metadata accessor for RoutingControl();
  v20 = *(v95 - 8);
  __chkstk_darwin(v95);
  v94 = &v84 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v23 = *(*(a4 + 32) + 24);
  if (v23 <= a3)
  {
    return;
  }

  v91 = (v20 + 16);
  v90 = (v20 + 8);
  v89 = (v12 + 88);
  v88 = enum case for RoutingControl.Target.item(_:);
  v86 = (v12 + 8);
  v85 = (v12 + 96);
  v102 = (v14 + 16);
  v103 = (v14 + 8);
  *&v22 = 136315906;
  v92 = v22;
  v93 = a4;
  v101 = a2;
  v87 = v17;
  v108 = v23;
  while (a3 < v23)
  {
    v24 = *(a4 + 32);
    if (a3 >= v24[3])
    {
      goto LABEL_46;
    }

    v25 = v24[4];
    if (a3 + v25 >= v24[2])
    {
      v26 = v24[2];
    }

    else
    {
      v26 = 0;
    }

    v27 = v24[a3 + 5 + v25 - v26];
    v28 = *(*v27 + 104);

    v30 = v28(v29);
    if (v30)
    {
      sub_1002FB794(v30, v31, v32, v33);
    }

    else
    {
      (*(*v27 + 168))(v110);
      v34 = v110[0];
      if (v111 <= 5u)
      {
        v35 = v110[1];
        if (v111 <= 2u)
        {
          v36 = v107;
LABEL_22:

LABEL_23:
          if (v34 == v106 && v35 == a2)
          {

LABEL_27:
            v39 = sub_100028D40();
            (*v102)(v19, v39, v36);

            v40 = Logger.logObject.getter();
            v41 = static os_log_type_t.info.getter();

            if (os_log_type_enabled(v40, v41))
            {
              v42 = swift_slowAlloc();
              v98 = swift_slowAlloc();
              v109 = v98;
              *v42 = v92;
              v43 = _typeName(_:qualified:)();
              LODWORD(v97) = v41;
              v45 = sub_10002C9C8(v43, v44, &v109);

              *(v42 + 4) = v45;
              *(v42 + 12) = 2082;
              *(v42 + 14) = sub_10002C9C8(v99, v105, &v109);
              *(v42 + 22) = 2082;
              v46 = *(*v27 + 152);

              v48 = v46(v47);
              v50 = v49;

              v51 = sub_10002C9C8(v48, v50, &v109);

              *(v42 + 24) = v51;
              *(v42 + 32) = 2082;
              v53 = (*(*a7 + 152))(v52);
              v55 = sub_10002C9C8(v53, v54, &v109);

              *(v42 + 34) = v55;
              _os_log_impl(&_mh_execute_header, v40, v97, "[%s] rebuild<%{public}s> - cancel event: %{public}s as per resolution of failed event: %{public}s", v42, 0x2Au);
              swift_arrayDestroy();

              a4 = v93;

              (*v103)(v19, v107);
            }

            else
            {

              (*v103)(v19, v36);
            }

            (*(*v27 + 112))(3, 0, 0, 0);

            a2 = v101;
            goto LABEL_5;
          }

          v38 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v38)
          {
            goto LABEL_27;
          }

          goto LABEL_4;
        }

        v36 = v107;
        if (v111 == 3)
        {
          goto LABEL_22;
        }

        if (v111 != 4)
        {
          goto LABEL_23;
        }

LABEL_34:
        sub_100238E4C(v110);
        goto LABEL_4;
      }

      v37 = v104;
      if (v111 > 8u)
      {
        if (v111 != 10)
        {
          goto LABEL_34;
        }
      }

      else
      {
        if (v111 == 6)
        {
          v62 = *(v110[0] + 32);
          v35 = *(v110[0] + 40);

          sub_100238E4C(v110);
          v34 = v62;
          v36 = v107;
          goto LABEL_23;
        }

        if (v111 != 7)
        {
          goto LABEL_34;
        }
      }

      v56 = swift_projectBox();
      v57 = v94;
      v58 = v95;
      (*v91)(v94, v56, v95);
      sub_100238E4C(v110);
      RoutingControl.target.getter();
      (*v90)(v57, v58);
      v59 = v96;
      v60 = (*v89)(v37, v96);
      if (v60 != v88)
      {

        (*v86)(v37, v59);
        goto LABEL_5;
      }

      (*v85)(v37, v59);
      if (*v37 == v106 && v37[1] == a2)
      {

        v61 = v107;
LABEL_40:
        v64 = sub_100028D40();
        v65 = v87;
        (*v102)(v87, v64, v61);

        v66 = Logger.logObject.getter();
        v67 = static os_log_type_t.info.getter();

        LODWORD(v98) = v67;
        if (os_log_type_enabled(v66, v67))
        {
          v68 = swift_slowAlloc();
          v97 = swift_slowAlloc();
          v109 = v97;
          *v68 = v92;
          v69 = _typeName(_:qualified:)();
          v84 = v66;
          v71 = sub_10002C9C8(v69, v70, &v109);

          *(v68 + 4) = v71;
          *(v68 + 12) = 2082;
          *(v68 + 14) = sub_10002C9C8(v99, v105, &v109);
          *(v68 + 22) = 2082;
          v72 = *(*v27 + 152);

          v74 = v72(v73);
          a4 = v93;
          v75 = v74;
          v77 = v76;

          v78 = sub_10002C9C8(v75, v77, &v109);

          *(v68 + 24) = v78;
          *(v68 + 32) = 2082;
          v80 = (*(*a7 + 152))(v79);
          v82 = sub_10002C9C8(v80, v81, &v109);

          *(v68 + 34) = v82;
          v83 = v84;
          _os_log_impl(&_mh_execute_header, v84, v98, "[%s] rebuild<%{public}s> - cancel event: %{public}s as per resolution of failed event: %{public}s", v68, 0x2Au);
          swift_arrayDestroy();

          a2 = v101;

          (*v103)(v87, v107);
        }

        else
        {

          (*v103)(v65, v107);
        }

        (*(*v27 + 112))(3, 0, 0, 0);
        goto LABEL_4;
      }

      v63 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v61 = v107;
      if (v63)
      {
        goto LABEL_40;
      }
    }

LABEL_4:

LABEL_5:
    ++a3;
    v23 = v108;
    if (v108 == a3)
    {
      return;
    }
  }

  __break(1u);
LABEL_46:
  __break(1u);
}

void sub_100337CF8()
{
  v1 = v0;
  swift_beginAccess();
  v2 = *(v0 + 40);
  v3 = v2 & 0xFFFFFFFFFFFFFF8;
  v4 = v2 >> 62;
  if (v2 >> 62)
  {
    goto LABEL_79;
  }

  v5 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v6 = 0;
  while (1)
  {
    if (v5 == v6)
    {
      if (v4)
      {
        v6 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v6 = *(v3 + 16);
      }

      goto LABEL_21;
    }

    if ((v2 & 0xC000000000000001) != 0)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v6 >= *(v3 + 16))
      {
LABEL_70:
        __break(1u);
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
        v5 = _CocoaArrayWrapper.endIndex.getter();
        goto LABEL_3;
      }
    }

    Strong = swift_unknownObjectWeakLoadStrong();

    if (!Strong)
    {
      break;
    }

    swift_unknownObjectRelease();
    v8 = __OFADD__(v6++, 1);
    if (v8)
    {
      goto LABEL_71;
    }
  }

  v9 = v6 + 1;
  if (__OFADD__(v6, 1))
  {
    goto LABEL_88;
  }

  if (v4)
  {
    if (v9 != _CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_36;
    }

LABEL_21:
    if (v2 >> 62)
    {
      v10 = _CocoaArrayWrapper.endIndex.getter();
      if (v10 >= v6)
      {
LABEL_23:
        sub_100339948(v6, v10);
        swift_endAccess();
        v6 = *(v1 + 40);
        if (!(v6 >> 62))
        {
          v11 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v11)
          {
            return;
          }

LABEL_25:
          if (v11 < 1)
          {
            goto LABEL_87;
          }

          for (i = 0; i != v11; ++i)
          {
            if ((v6 & 0xC000000000000001) != 0)
            {
              v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              v15 = *(v6 + 8 * i + 32);
            }

            if (swift_unknownObjectWeakLoadStrong())
            {
              v13 = *(v15 + 24);
              ObjectType = swift_getObjectType();
              (*(v13 + 8))(v1, ObjectType, v13);

              swift_unknownObjectRelease();
            }

            else
            {
            }
          }

          return;
        }

LABEL_82:
        v11 = _CocoaArrayWrapper.endIndex.getter();
        if (!v11)
        {
          return;
        }

        goto LABEL_25;
      }
    }

    else
    {
      v10 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v10 >= v6)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
    goto LABEL_82;
  }

  if (v9 == *(v3 + 16))
  {
    goto LABEL_21;
  }

LABEL_36:
  v3 = v6 + 5;
  while (2)
  {
    v16 = v3 - 4;
    v4 = v2 & 0xC000000000000001;
    if ((v2 & 0xC000000000000001) != 0)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if ((v16 & 0x8000000000000000) != 0)
      {
        goto LABEL_72;
      }

      if (v16 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_73;
      }
    }

    v17 = swift_unknownObjectWeakLoadStrong();

    if (!v17)
    {
      goto LABEL_61;
    }

    swift_unknownObjectRelease();
    if (v16 == v6)
    {
      goto LABEL_60;
    }

    if (v4)
    {
      v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_49;
    }

    if ((v6 & 0x8000000000000000) == 0)
    {
      v20 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v6 >= v20)
      {
        goto LABEL_85;
      }

      if (v16 >= v20)
      {
        goto LABEL_86;
      }

      v18 = *(v2 + 8 * v6 + 32);
      v19 = *(v2 + 8 * v3);

LABEL_49:
      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      *(v1 + 40) = v2;
      if (!isUniquelyReferenced_nonNull_bridgeObject || (v2 & 0x8000000000000000) != 0 || (v2 & 0x4000000000000000) != 0)
      {
        v2 = sub_10021C368(v2);
        *(v1 + 40) = v2;
      }

      if ((v6 & 0x8000000000000000) != 0)
      {
        goto LABEL_76;
      }

      v4 = v2 & 0xFFFFFFFFFFFFFF8;
      if (v6 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_77;
      }

      *((v2 & 0xFFFFFFFFFFFFFF8) + 8 * v6 + 0x20) = v19;

      *(v1 + 40) = v2;
      if ((v2 & 0x8000000000000000) != 0 || (v2 & 0x4000000000000000) != 0)
      {
        v2 = sub_10021C368(v2);
        *(v1 + 40) = v2;
        v4 = v2 & 0xFFFFFFFFFFFFFF8;
        if ((v16 & 0x8000000000000000) != 0)
        {
LABEL_69:
          __break(1u);
          goto LABEL_70;
        }
      }

      else if ((v16 & 0x8000000000000000) != 0)
      {
        goto LABEL_69;
      }

      if (v16 >= *(v4 + 16))
      {
        goto LABEL_78;
      }

      *(v4 + 8 * v3) = v18;

      *(v1 + 40) = v2;
LABEL_60:
      v8 = __OFADD__(v6++, 1);
      if (v8)
      {
        goto LABEL_75;
      }

LABEL_61:
      v8 = __OFADD__(v16, 1);
      v22 = v3 - 3;
      if (v8)
      {
        goto LABEL_74;
      }

      if (v2 >> 62)
      {
        v23 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v23 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      ++v3;
      if (v22 == v23)
      {
        goto LABEL_21;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  __break(1u);
LABEL_88:
  __break(1u);
}

void sub_100338148()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v30 - v7;
  swift_beginAccess();
  v9 = *(v1 + 24);
  if (*(*(v1 + 32) + 24))
  {
    if (v9)
    {
      return;
    }

    v10 = sub_100038EF0();
    (*(v3 + 16))(v6, v10, v2);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v30 = v14;
      *v13 = 136315138;
      v15 = _typeName(_:qualified:)();
      v17 = sub_10002C9C8(v15, v16, &v30);

      *(v13 + 4) = v17;
      _os_log_impl(&_mh_execute_header, v11, v12, "[%s] updateTransaction - creating transaction", v13, 0xCu);
      sub_100026A44(v14);
    }

    (*(v3 + 8))(v6, v2);
    v18 = objc_allocWithZone(MROSTransaction);
    v19 = String._bridgeToObjectiveC()();
    v20 = [v18 initWithName:v19];

    MRRegisterTransaction();
  }

  else
  {
    if (!v9)
    {
      return;
    }

    v21 = sub_100038EF0();
    (*(v3 + 16))(v8, v21, v2);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v30 = v25;
      *v24 = 136315138;
      v26 = _typeName(_:qualified:)();
      v28 = sub_10002C9C8(v26, v27, &v30);

      *(v24 + 4) = v28;
      _os_log_impl(&_mh_execute_header, v22, v23, "[%s] updateTransaction - finishing transaction", v24, 0xCu);
      sub_100026A44(v25);
    }

    (*(v3 + 8))(v8, v2);
    v20 = 0;
  }

  v29 = *(v1 + 24);
  *(v1 + 24) = v20;
}

uint64_t sub_1003384EC()
{

  return swift_deallocClassInstance();
}

void *sub_10033853C()
{
  v0 = swift_allocObject();
  v1 = sub_100021264();
  v2 = *v1;
  v0[2] = *v1;
  v0[3] = 0;
  v3 = v2;
  v0[4] = *_emptyDequeStorage.unsafeMutableAddressor();
  v0[5] = _swiftEmptyArrayStorage;

  return v0;
}

unint64_t sub_1003385DC()
{
  _StringGuts.grow(_:)(19);

  v2._countAndFlagsBits = (*(*v0 + 216))(v1);
  String.append(_:)(v2);

  return 0xD000000000000011;
}

unint64_t sub_10033867C()
{
  v1 = *v0;
  _StringGuts.grow(_:)(19);

  v3._countAndFlagsBits = (*(*v1 + 216))(v2);
  String.append(_:)(v3);

  return 0xD000000000000011;
}

void sub_10033871C(char a1, Swift::Int a2, char a3)
{
  v4 = *v3;
  v5 = (*v3 + 16);
  v6 = *v5;
  if (*v5 >= a2)
  {
    sub_1001BC5A8(&qword_100526AE0, &unk_100458830);
    v11 = swift_allocObject();
    v14 = *(v4 + 24);
    *(v11 + 16) = v6;
    *(v11 + 24) = v14;
    if (v14 >= 1)
    {
      sub_100338B64(v11 + 16, v11 + 40, v5, v4 + 40);
    }
  }

  else
  {
    type metadata accessor for RoutingTimeline.Event(0);
    Deque._Storage._growCapacity(to:linearly:)(a2, a3 & 1);
    if (a1)
    {
      v10 = *(v4 + 24);
      sub_1001BC5A8(&qword_100526AE0, &unk_100458830);
      v11 = swift_allocObject();
      v12 = j__malloc_size(v11);
      v13 = v12 - 40;
      if (v12 < 40)
      {
        v13 = v12 - 33;
      }

      *(v11 + 16) = v13 >> 3;
      *(v11 + 24) = v10;
      *(v11 + 32) = 0;
      if (v10 >= 1)
      {
        sub_100338948(v11 + 16, (v11 + 40), v5, (v4 + 40));
        *(v4 + 24) = 0;
      }
    }

    else
    {
      sub_1001BC5A8(&qword_100526AE0, &unk_100458830);
      v11 = swift_allocObject();
      v15 = j__malloc_size(v11);
      v16 = v15 - 40;
      if (v15 < 40)
      {
        v16 = v15 - 33;
      }

      v17 = *(v4 + 24);
      *(v11 + 16) = v16 >> 3;
      *(v11 + 24) = v17;
      *(v11 + 32) = 0;
      if (v17 >= 1)
      {
        sub_100338A70(v11 + 16, v11 + 40, v5, v4 + 40);
      }
    }
  }

  *v3 = v11;
}

void sub_1003388D8(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = a1[1];
  v4 = a1[2];
  v6 = __OFADD__(v4, v3);
  v5 = v4 + v3;
  if (!v6)
  {
    if ((v3 & 0x8000000000000000) == 0)
    {
      v6 = __OFSUB__(v5, *a1);
      if (v5 < *a1 || (v5 -= *a1, !v6))
      {
LABEL_9:
        *(a2 + 8 * v5) = a3;
        v6 = __OFADD__(v3, 1);
        v7 = v3 + 1;
        if (!v6)
        {
          a1[1] = v7;

          return;
        }

        goto LABEL_12;
      }

      __break(1u);
    }

    if (v5 < 0)
    {
      v6 = __OFADD__(v5, *a1);
      v5 += *a1;
      if (v6)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_9;
  }

  __break(1u);
LABEL_12:
  __break(1u);
LABEL_13:
  __break(1u);
}

void sub_100338948(int a1, char *__dst, void *a3, char *a4)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_35;
  }

  v6 = a3[1];
  if (v5 < v6)
  {
    v7 = v6 - v5;
    if (!__OFSUB__(v6, v5))
    {
      v8 = *a3 - v4;
      v9 = a4;
      goto LABEL_6;
    }

LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v9 = 0;
  v7 = 0;
  v8 = a3[1];
LABEL_6:
  if (v7)
  {
    v10 = v5 < v6;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    v11 = v9;
  }

  else
  {
    v11 = 0;
  }

  if (v8 < 1)
  {
    v8 = 0;
    goto LABEL_20;
  }

  if (!a4)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v12 = &a4[8 * v4];
  if (v12 != __dst || &v12[8 * v8] <= __dst)
  {
    v14 = __dst;
    memmove(__dst, v12, 8 * v8);
    __dst = v14;
  }

LABEL_20:
  if (v5 >= v6 || v7 < 1)
  {
    return;
  }

  if (!v11)
  {
LABEL_37:
    __break(1u);
    return;
  }

  v16 = &__dst[8 * v8];
  if (v16 != v11 || v16 >= &v11[8 * v7])
  {

    memmove(v16, v11, 8 * v7);
  }
}