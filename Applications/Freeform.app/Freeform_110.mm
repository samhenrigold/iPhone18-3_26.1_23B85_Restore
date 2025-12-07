void sub_100DDD654()
{
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = (&v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v0 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_queue);
  *v6 = v7;
  v8 = *(v3 + 104);
  v48 = enum case for DispatchPredicate.onQueue(_:);
  v49 = v8;
  v8(v6, v4);
  v9 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  v10 = *(v3 + 8);
  v10(v6, v2);
  if (v7)
  {
    v50 = v1;
    v47 = v10;
    if (qword_1019F2258 == -1)
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
  v11 = 0xD000000000000010;
  v12 = static OS_os_log.boardStore;
  v13 = static os_log_type_t.info.getter();
  sub_100005404(v12, &_mh_execute_header, v13, "Creating schema for the command_history_items table", 51, 2, _swiftEmptyArrayStorage);
  v51 = 0;
  v52 = 0xE000000000000000;
  _StringGuts.grow(_:)(167);
  v14._countAndFlagsBits = 0x5420455441455243;
  v14._object = 0xED000020454C4241;
  String.append(_:)(v14);
  v15._countAndFlagsBits = 0xD000000000000015;
  v15._object = 0x80000001015A3160;
  String.append(_:)(v15);
  v16._countAndFlagsBits = 10272;
  v16._object = 0xE200000000000000;
  String.append(_:)(v16);
  v17._countAndFlagsBits = 0x64695F6D657469;
  v17._object = 0xE700000000000000;
  String.append(_:)(v17);
  v18._countAndFlagsBits = 0xD000000000000024;
  v18._object = 0x80000001015AA240;
  String.append(_:)(v18);
  v19._object = 0x8000000101585360;
  v19._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v19);
  v20._countAndFlagsBits = 0xD00000000000001ALL;
  v20._object = 0x80000001015AA000;
  String.append(_:)(v20);
  v21._countAndFlagsBits = 0x736472616F62;
  v21._object = 0xE600000000000000;
  String.append(_:)(v21);
  v22._countAndFlagsBits = 10272;
  v22._object = 0xE200000000000000;
  String.append(_:)(v22);
  v23._object = 0x8000000101585360;
  v23._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v23);
  v24._countAndFlagsBits = 0xD000000000000015;
  v24._object = 0x80000001015AA020;
  String.append(_:)(v24);
  v25._countAndFlagsBits = 0x6975755F6D657469;
  v25._object = 0xE900000000000064;
  String.append(_:)(v25);
  v26._object = 0x80000001015AA270;
  v26._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v26);
  v27._countAndFlagsBits = 0x7461645F6D657469;
  v27._object = 0xE900000000000061;
  String.append(_:)(v27);
  v28._object = 0x80000001015AA270;
  v28._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v28);
  v29._countAndFlagsBits = 0x616C665F6F646E75;
  v29._object = 0xE900000000000067;
  String.append(_:)(v29);
  v30._countAndFlagsBits = 0xD000000000000013;
  v30._object = 0x80000001015AA290;
  String.append(_:)(v30);
  v31 = v51;
  v32 = v52;
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v34 = v50;
  v35 = sub_10001CC04(v33, v31, v32);

  if (v34)
  {
    return;
  }

  v36 = *(*(v35 + 16) + 32);
  *v6 = v36;
  v49(v6, v48, v2);
  v37 = v36;
  LOBYTE(v36) = _dispatchPreconditionTest(_:)();
  v38 = v47;
  v47(v6, v2);
  if ((v36 & 1) == 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  v39 = *(v35 + 16);

  v40 = sub_10001CEC4(v39, v35);

  if (v40 != 101)
  {
LABEL_8:
    sub_10089C7D0();
    swift_allocError();
    *v43 = v40;
    *(v43 + 8) = v11 + 32;
    *(v43 + 16) = 0x80000001015AA2B0;
    swift_willThrow();
    v44 = *(*(v35 + 16) + 32);
    *v6 = v44;
    v49(v6, v48, v2);
    v45 = v44;
    LOBYTE(v44) = _dispatchPreconditionTest(_:)();
    v47(v6, v2);
    if (v44)
    {
      goto LABEL_9;
    }

LABEL_16:
    __break(1u);
  }

  v41 = *(*(v35 + 16) + 32);
  *v6 = v41;
  v49(v6, v48, v2);
  v42 = v41;
  v11 = _dispatchPreconditionTest(_:)();
  v38(v6, v2);
  if ((v11 & 1) == 0)
  {
    __break(1u);
    goto LABEL_8;
  }

LABEL_9:
  swift_beginAccess();
  v46 = *(v35 + 24);
  if (v46)
  {
    sqlite3_finalize(v46);
    *(v35 + 24) = 0;
  }
}

void sub_100DDDBE0()
{
  v2 = v0;
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = (&v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v0 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_queue);
  *v7 = v8;
  v9 = *(v4 + 104);
  v69 = enum case for DispatchPredicate.onQueue(_:);
  v70 = v9;
  v71 = v4 + 104;
  v9(v7, v5);
  v10 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  v11 = *(v4 + 8);
  v68 = v3;
  (v11)(v7, v3);
  if (v8)
  {
    v67 = v11;
    if (qword_1019F2258 == -1)
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
  v12 = static OS_os_log.boardStore;
  v13 = static os_log_type_t.info.getter();
  sub_100005404(v12, &_mh_execute_header, v13, "Creating schema for the command_history_asset_references table", 62, 2, _swiftEmptyArrayStorage);
  v72 = 0;
  v73 = 0xE000000000000000;
  _StringGuts.grow(_:)(105);
  v14._countAndFlagsBits = 0x5420455441455243;
  v14._object = 0xED000020454C4241;
  String.append(_:)(v14);
  v15._countAndFlagsBits = 0xD000000000000020;
  v15._object = 0x80000001015A3130;
  String.append(_:)(v15);
  v16._countAndFlagsBits = 10272;
  v16._object = 0xE200000000000000;
  String.append(_:)(v16);
  v17._object = 0x80000001015A9FE0;
  v17._countAndFlagsBits = 0xD000000000000017;
  String.append(_:)(v17);
  v18._countAndFlagsBits = 0xD00000000000001ALL;
  v18._object = 0x80000001015AA000;
  String.append(_:)(v18);
  v19._object = 0x80000001015A3160;
  v19._countAndFlagsBits = 0xD000000000000015;
  String.append(_:)(v19);
  v20._countAndFlagsBits = 10272;
  v20._object = 0xE200000000000000;
  String.append(_:)(v20);
  v21._countAndFlagsBits = 0x64695F6D657469;
  v21._object = 0xE700000000000000;
  String.append(_:)(v21);
  v22._object = 0x80000001015AA020;
  v22._countAndFlagsBits = 0xD000000000000015;
  String.append(_:)(v22);
  v23._countAndFlagsBits = 0x75755F7465737361;
  v23._object = 0xEA00000000006469;
  String.append(_:)(v23);
  v24._object = 0x80000001015AA040;
  v24._countAndFlagsBits = 0xD000000000000017;
  String.append(_:)(v24);
  v25._object = 0x80000001015A9FE0;
  v25._countAndFlagsBits = 0xD000000000000017;
  String.append(_:)(v25);
  v26._countAndFlagsBits = 8236;
  v26._object = 0xE200000000000000;
  String.append(_:)(v26);
  v27._countAndFlagsBits = 0x75755F7465737361;
  v27._object = 0xEA00000000006469;
  String.append(_:)(v27);
  v28._countAndFlagsBits = 10537;
  v28._object = 0xE200000000000000;
  String.append(_:)(v28);
  v29 = v72;
  v30 = v73;
  v31 = *(v2 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_database);
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v33 = sub_10001CC04(v32, v29, v30);
  if (v1)
  {
    goto LABEL_18;
  }

  v34 = v33;

  v35 = *(*(v34 + 16) + 32);
  *v7 = v35;
  v36 = v68;
  v70(v7, v69, v68);
  v37 = v35;
  LOBYTE(v35) = _dispatchPreconditionTest(_:)();
  v38 = v36;
  v39 = v67;
  (v67)(v7, v38);
  if ((v35 & 1) == 0)
  {
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
  }

  v40 = *(v34 + 16);

  v41 = sub_10001CEC4(v40, v34);

  if (v41 == 101)
  {
    v72 = 0;
    v73 = 0xE000000000000000;
    _StringGuts.grow(_:)(53);
    v42._countAndFlagsBits = 0xD00000000000002ELL;
    v42._object = 0x80000001015AA0A0;
    String.append(_:)(v42);
    v43._countAndFlagsBits = 0xD000000000000020;
    v43._object = 0x80000001015A3130;
    String.append(_:)(v43);
    v44._countAndFlagsBits = 10272;
    v44._object = 0xE200000000000000;
    String.append(_:)(v44);
    v45._object = 0x80000001015A9FE0;
    v45._countAndFlagsBits = 0xD000000000000017;
    String.append(_:)(v45);
    v46._countAndFlagsBits = 41;
    v46._object = 0xE100000000000000;
    String.append(_:)(v46);
    v39 = v73;
    v47 = sub_10001C924(v31, v72, v73);

    if (v47 == 101)
    {
      v48 = sub_10001C924(v31, 0xD00000000000006DLL, 0x80000001015AA130);
      v31 = v67;
      v39 = 0xD000000000000017;
      if (v48 == 101)
      {
        v49 = *(*(v34 + 16) + 32);
        *v7 = v49;
        v50 = v68;
        v70(v7, v69, v68);
        v51 = v49;
        LOBYTE(v49) = _dispatchPreconditionTest(_:)();
        (v31)(v7, v50);
        if (v49)
        {
          swift_beginAccess();
          v52 = *(v34 + 24);
          if (v52)
          {
            goto LABEL_17;
          }

          goto LABEL_18;
        }

        goto LABEL_22;
      }

      goto LABEL_15;
    }
  }

  else
  {
    sub_10089C7D0();
    swift_allocError();
    *v53 = v41;
    *(v53 + 8) = 0xD00000000000003BLL;
    *(v53 + 16) = 0x80000001015AA060;
    swift_willThrow();
    v54 = *(*(v34 + 16) + 32);
    *v7 = v54;
    v55 = v68;
    v70(v7, v69, v68);
    v56 = v54;
    v47 = _dispatchPreconditionTest(_:)();
    (v39)(v7, v55);
    if (v47)
    {
      goto LABEL_16;
    }

    __break(1u);
  }

  sub_10089C7D0();
  swift_allocError();
  *v57 = v47;
  *(v57 + 8) = 0xD00000000000005FLL;
  *(v57 + 16) = 0x80000001015AA0D0;
  swift_willThrow();
  v58 = *(*(v34 + 16) + 32);
  *v7 = v58;
  v59 = v68;
  v70(v7, v69, v68);
  v60 = v58;
  LOBYTE(v58) = _dispatchPreconditionTest(_:)();
  v48 = (v67)(v7, v59);
  if (v58)
  {
    goto LABEL_16;
  }

  __break(1u);
LABEL_15:
  v61 = v48;
  sub_10089C7D0();
  swift_allocError();
  *v62 = v61;
  *(v62 + 8) = v39 + 57;
  *(v62 + 16) = 0x80000001015AA1A0;
  swift_willThrow();
  v63 = *(*(v34 + 16) + 32);
  *v7 = v63;
  v64 = v68;
  v70(v7, v69, v68);
  v65 = v63;
  LOBYTE(v63) = _dispatchPreconditionTest(_:)();
  (v31)(v7, v64);
  if ((v63 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_16:
  swift_beginAccess();
  v52 = *(v34 + 24);
  if (v52)
  {
LABEL_17:
    sqlite3_finalize(v52);
    *(v34 + 24) = 0;
  }

LABEL_18:
}

unint64_t sub_100DDE69C@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100EA391C(*a1);
  *a2 = result;
  return result;
}

NSString sub_100DDE6E8()
{
  result = String._bridgeToObjectiveC()();
  qword_101AD8580 = result;
  return result;
}

NSString sub_100DDE720()
{
  result = String._bridgeToObjectiveC()();
  qword_101AD8588 = result;
  return result;
}

NSString sub_100DDE758()
{
  result = String._bridgeToObjectiveC()();
  qword_101AD8590 = result;
  return result;
}

id sub_100DDE790()
{
  if (qword_1019F2520 != -1)
  {
    swift_once();
  }

  v1 = qword_101AD8568;
  qword_101AD8598 = qword_101AD8568;

  return v1;
}

uint64_t sub_100DDE8A8()
{

  return swift_deallocClassInstance();
}

uint64_t sub_100DDE9EC()
{
  v66 = type metadata accessor for CRLBoardDataStore.KeyValueTableKey(0);
  __chkstk_darwin(v66);
  v60 = &v51 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v65 = &v51 - v3;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = (&v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v0 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue);
  *v8 = v9;
  v10 = enum case for DispatchPredicate.onQueue(_:);
  v12 = v5 + 104;
  v11 = *(v5 + 104);
  (v11)(v8, enum case for DispatchPredicate.onQueue(_:), v4, v6);
  v13 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  v16 = *(v5 + 8);
  v15 = v5 + 8;
  v14 = v16;
  v16(v8, v4);
  if ((v9 & 1) == 0)
  {
    __break(1u);
    goto LABEL_33;
  }

  v63 = sub_10061A1C8();
  v67 = v17;
  v18 = *(v0 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_queue);
  *v8 = v18;
  v59 = v10;
  v11(v8, v10, v4);
  v58 = v18;
  LOBYTE(v18) = _dispatchPreconditionTest(_:)();
  v61 = v8;
  v62 = v14;
  v14(v8, v4);
  if ((v18 & 1) == 0)
  {
LABEL_33:
    __break(1u);
LABEL_34:
    swift_once();
    goto LABEL_7;
  }

  v19 = v15;
  v20 = v65;
  swift_storeEnumTagMultiPayload();
  v21 = v64;
  v22 = sub_100E266C0(v20);
  if (v21)
  {
LABEL_4:

    return sub_100026028(v20, type metadata accessor for CRLBoardDataStore.KeyValueTableKey);
  }

  v15 = v23;
  v64 = v22;
  v54 = v19;
  v52 = v4;
  v53 = v12;
  v55 = v11;
  v56 = v0;
  v57 = 0;
  sub_100026028(v20, type metadata accessor for CRLBoardDataStore.KeyValueTableKey);
  if (qword_1019F2258 != -1)
  {
    goto LABEL_34;
  }

LABEL_7:
  v25 = static OS_os_log.boardStore;
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146BDE0;
  *(inited + 56) = &type metadata for String;
  v27 = sub_1000053B0();
  v28 = v67;
  v29 = 7104878;
  v30 = v63;
  if (!v67)
  {
    v30 = 7104878;
  }

  *(inited + 32) = v30;
  v31 = 0xE300000000000000;
  if (v28)
  {
    v32 = v28;
  }

  else
  {
    v32 = 0xE300000000000000;
  }

  *(inited + 40) = v32;
  *(inited + 96) = &type metadata for String;
  *(inited + 104) = v27;
  if (v15)
  {
    v29 = v64;
    v31 = v15;
  }

  v33 = v27;
  *(inited + 64) = v27;
  *(inited + 72) = v29;
  *(inited + 80) = v31;

  v34 = static os_log_type_t.default.getter();
  sub_100005404(v25, &_mh_execute_header, v34, "Ensuring ownership of data. currentAccountIdentifier: %{public}@. accountIdentifierFromDatabase: %{public}@", 107, 2, inited);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
  swift_arrayDestroy();
  v35 = v62;
  v36 = v61;
  if (!v15)
  {
    v37 = v25;
    if (!v28)
    {
      goto LABEL_24;
    }

    goto LABEL_27;
  }

  if (v28)
  {
    if (v64 == v63 && v15 == v28)
    {

LABEL_23:
      v37 = v25;

LABEL_24:
      v39 = static os_log_type_t.default.getter();
      return sub_100005404(v37, &_mh_execute_header, v39, "No ownership change. Continuing.", 32, 2, _swiftEmptyArrayStorage);
    }

    v38 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v38)
    {
      goto LABEL_23;
    }
  }

  else
  {
  }

  v40 = static os_log_type_t.default.getter();
  sub_100005404(v25, &_mh_execute_header, v40, "Ownership of data changed. Deleting data.", 41, 2, _swiftEmptyArrayStorage);
  v37 = v25;
  v41 = v57;
  sub_100DDF1A0();
  if (v41)
  {
  }

  v57 = 0;
  if (v67)
  {
LABEL_27:
    v42 = swift_initStackObject();
    *(v42 + 16) = xmmword_10146C6B0;
    *(v42 + 56) = &type metadata for String;
    *(v42 + 64) = v33;
    v43 = v63;
    *(v42 + 32) = v63;
    v44 = v67;
    *(v42 + 40) = v67;

    v45 = static os_log_type_t.default.getter();
    sub_100005404(v37, &_mh_execute_header, v45, "Previously unowned data is being claimed by owner: %@", 53, 2, v42);
    swift_setDeallocating();
    sub_100005070((v42 + 32));
    sub_100DDFDF8(v43, v44);
  }

  v46 = static os_log_type_t.default.getter();
  sub_100005404(v25, &_mh_execute_header, v46, "Owner set to nil.", 17, 2, _swiftEmptyArrayStorage);
  v47 = v58;
  *v36 = v58;
  v48 = v52;
  v55(v36, v59, v52);
  v49 = v47;
  LOBYTE(v47) = _dispatchPreconditionTest(_:)();
  result = v35(v36, v48);
  if (v47)
  {
    v20 = v60;
    swift_storeEnumTagMultiPayload();
    v50 = v57;
    sub_100E266C0(v20);
    if (v50)
    {
      return sub_100026028(v20, type metadata accessor for CRLBoardDataStore.KeyValueTableKey);
    }

    goto LABEL_4;
  }

  __break(1u);
  return result;
}

void sub_100DDF1A0()
{
  v2 = v0;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v82 = v72 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v81 = *(v6 - 8);
  __chkstk_darwin(v6);
  v80 = v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1005B981C(&qword_1019FB750, &qword_10146F1B0);
  __chkstk_darwin(v8 - 8);
  v90 = v72 - v9;
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = (v72 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *&v2[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue];
  *v14 = v15;
  (*(v11 + 104))(v14, enum case for DispatchPredicate.onQueue(_:), v10, v12);
  v16 = v15;
  LOBYTE(v15) = _dispatchPreconditionTest(_:)();
  (*(v11 + 8))(v14, v10);
  if (v15)
  {
    v78 = v6;
    if (qword_1019F2258 == -1)
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
  v17 = static OS_os_log.boardStore;
  v18 = static os_log_type_t.default.getter();
  sub_100005404(v17, &_mh_execute_header, v18, "Removing all assets.", 20, 2, _swiftEmptyArrayStorage);
  v19 = *&v2[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManagerLock];
  os_unfair_lock_lock(*(v19 + 16));
  v20 = OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManager;
  v21 = *&v2[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManager];
  v79 = v4;
  if (v21)
  {
    v22 = v21;
  }

  else
  {
    v23 = objc_allocWithZone(type metadata accessor for CRLAssetFileManager(0));
    v24 = v2;
    v25 = sub_10001F1A0(v24);

    v26 = *&v2[v20];
    *&v2[v20] = v25;
    v22 = v25;

    v21 = 0;
  }

  v27 = *(v19 + 16);
  v28 = v21;
  os_unfair_lock_unlock(v27);
  sub_10108974C();

  if (!v1)
  {
    v77 = v3;
    v29 = sub_100DCB394();
    v30 = type metadata accessor for TaskPriority();
    v31 = *(v30 - 8);
    v32 = *(v31 + 56);
    v33 = v90;
    v76 = v30;
    v75 = v32;
    v74 = v31 + 56;
    (v32)(v90, 1, 1);
    v34 = swift_allocObject();
    v34[2] = 0;
    v34[3] = 0;
    v34[4] = v29;
    sub_10064191C(0, 0, v33, &unk_1014B6A40, v34);

    v35 = *&v2[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetManagerLock];
    os_unfair_lock_lock(*(v35 + 16));
    v36 = OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetManager;
    v37 = *&v2[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetManager];
    v38 = &unk_101A17000;
    if (v37)
    {
      v39 = *&v2[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetManager];
    }

    else
    {
      *&v83 = type metadata accessor for CRLAssetManager();
      v40 = objc_allocWithZone(v83);
      v73 = OBJC_IVAR____TtC8Freeform15CRLAssetManager_store;
      swift_unknownObjectWeakInit();
      v41 = OBJC_IVAR____TtC8Freeform15CRLAssetManager_lock;
      type metadata accessor for CRLUnfairLock();
      v42 = swift_allocObject();
      v43 = v2;
      v44 = swift_slowAlloc();
      *v44 = 0;
      *(v42 + 16) = v44;
      atomic_thread_fence(memory_order_acq_rel);
      *&v40[v41] = v42;
      *&v40[OBJC_IVAR____TtC8Freeform15CRLAssetManager_assets] = _swiftEmptyDictionarySingleton;
      v45 = OBJC_IVAR____TtC8Freeform15CRLAssetManager_owners;
      *&v40[v45] = [objc_opt_self() mapTableWithKeyOptions:517 valueOptions:0];
      *&v40[OBJC_IVAR____TtC8Freeform15CRLAssetManager_garbageCollectionWorkItem] = 0;
      swift_unknownObjectWeakAssign();
      v89.receiver = v40;
      v89.super_class = v83;
      v46 = objc_msgSendSuper2(&v89, "init");

      v38 = &unk_101A17000;
      v47 = *&v2[v36];
      *&v2[v36] = v46;
      v39 = v46;

      v37 = 0;
    }

    v48 = *(v35 + 16);
    v49 = v37;
    os_unfair_lock_unlock(v48);
    if (qword_1019F22C0 != -1)
    {
      swift_once();
    }

    v50 = static OS_os_log.assetManagement;
    v51 = static os_log_type_t.default.getter();
    sub_100005404(v50, &_mh_execute_header, v51, "reset() asset cache", 19, 2, _swiftEmptyArrayStorage);
    v52 = v38[504];
    swift_beginAccess();
    *&v39[v52] = _swiftEmptyDictionarySingleton;

    v72[0] = sub_100DE90F4();
    v53 = 0;
    v73 = 0x80000001015A30F0;
    v72[5] = 0x80000001015A3110;
    v72[4] = 0x80000001015A3130;
    v72[3] = 0x80000001015A3160;
    v72[2] = 0x80000001015A3180;
    v72[1] = 0x80000001015A31A0;
    v83 = xmmword_10146C6B0;
    do
    {
      v54 = *(&off_101873560 + v53++ + 32);
      sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
      inited = swift_initStackObject();
      *(inited + 16) = v83;
      v56 = 0xE600000000000000;
      v57 = 0x736472616F62;
      v58 = inited;
      switch(v54)
      {
        case 1:
          v57 = 0x74695F6472616F62;
          v56 = 0xEB00000000736D65;
          break;
        case 2:
          v57 = 0x756C61765F79656BLL;
          v56 = 0xEE00617461645F65;
          break;
        case 3:
          v57 = 0x737465737361;
          break;
        case 4:
          v57 = 0xD000000000000010;
          p_super_class = v86;
          goto LABEL_27;
        case 5:
          v57 = 0xD000000000000015;
          p_super_class = &v87;
          goto LABEL_27;
        case 6:
          v57 = 0xD000000000000020;
          p_super_class = &v88;
          goto LABEL_27;
        case 7:
          v57 = 0x6D5F736472616F62;
          v56 = 0xEF61746164617465;
          break;
        case 8:
          v57 = 0xD000000000000018;
          p_super_class = &v85;
          goto LABEL_27;
        case 9:
          v57 = 0x64726F6365726B63;
          v56 = 0xEE0065686361635FLL;
          break;
        case 10:
          v57 = 0x635F656E6F7A6B63;
          v56 = 0xEC00000065686361;
          break;
        case 11:
          v57 = 0xD000000000000015;
          p_super_class = &v89;
          goto LABEL_27;
        case 12:
          v56 = 0xE700000000000000;
          v57 = 0x737265646C6F66;
          break;
        case 13:
          v57 = 0xD000000000000010;
          p_super_class = &v89.super_class;
LABEL_27:
          v56 = *(p_super_class - 32);
          break;
        default:
          break;
      }

      *(inited + 56) = &type metadata for String;
      *(inited + 64) = sub_1000053B0();
      *(v58 + 32) = v57;
      *(v58 + 40) = v56;
      v60 = static os_log_type_t.default.getter();
      sub_100005404(v17, &_mh_execute_header, v60, "Removing data for table: %@", 27, 2, v58);
      swift_setDeallocating();
      sub_100005070((v58 + 32));
      sub_100E69940(v54);
    }

    while (v53 != 14);
    v61 = static os_log_type_t.default.getter();
    sub_100005404(v17, &_mh_execute_header, v61, "Clearing sync metadata.", 23, 2, _swiftEmptyArrayStorage);
    if (*&v2[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_syncHelper])
    {
      v62 = v90;
      v75(v90, 1, 1, v76);
      v63 = swift_allocObject();
      swift_weakInit();
      v64 = swift_allocObject();
      v64[2] = 0;
      v64[3] = 0;
      v64[4] = v63;

      sub_100CA64C8(0, 0, v62, &unk_1014B6A48, v64);

      sub_10000CAAC(v62, &qword_1019FB750, &qword_10146F1B0);
    }

    sub_100006370(0, &qword_1019F2D90, OS_dispatch_queue_ptr);
    v65 = static OS_dispatch_queue.main.getter();
    v66 = swift_allocObject();
    *(v66 + 16) = v72[0];
    *(v66 + 24) = _swiftEmptySetSingleton;
    *(v66 + 32) = _swiftEmptySetSingleton;
    *(v66 + 40) = 0;
    *(v66 + 48) = v2;
    aBlock[4] = sub_1000260F4;
    aBlock[5] = v66;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = *"";
    aBlock[2] = sub_100007638;
    aBlock[3] = &unk_1018A6400;
    v67 = _Block_copy(aBlock);
    v68 = v2;

    v69 = v80;
    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_1000066D0(&qword_1019F4D10, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1005B981C(&unk_1019FF400, &unk_10146CF00);
    sub_10001A2F8(&qword_1019F4D20, &unk_1019FF400, &unk_10146CF00, &protocol conformance descriptor for [A]);
    v70 = v82;
    v71 = v77;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v67);

    (*(v79 + 8))(v70, v71);
    (*(v81 + 8))(v69, v78);
  }
}

uint64_t sub_100DDFDF8(uint64_t a1, uint64_t a2)
{
  v22 = a2;
  v20 = a1;
  v23 = type metadata accessor for CRLBoardDataStore.KeyValueTableKey(0);
  __chkstk_darwin(v23);
  v24 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = (&v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = v2;
  v9 = *(v2 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue);
  *v8 = v9;
  v10 = enum case for DispatchPredicate.onQueue(_:);
  v11 = *(v5 + 104);
  (v11)(v8, enum case for DispatchPredicate.onQueue(_:), v4, v6);
  v12 = v9;
  v13 = _dispatchPreconditionTest(_:)();
  v14 = *(v5 + 8);
  result = v14(v8, v4);
  if (v13)
  {
    v16 = v24;
    swift_storeEnumTagMultiPayload();
    *v8 = v12;
    v11(v8, v10, v4);
    v17 = _dispatchPreconditionTest(_:)();
    result = v14(v8, v4);
    if (v17)
    {
      v18 = v22;

      sub_100E24C64(v16, 0, 0, v21, v20, v18);
      return sub_100026028(v16, type metadata accessor for CRLBoardDataStore.KeyValueTableKey);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_100DE0028(uint64_t a1, uint64_t a2, char a3, char a4, uint64_t a5)
{
  v9 = [objc_opt_self() defaultCenter];
  if (qword_1019F2528 != -1)
  {
    swift_once();
  }

  v10 = qword_101AD8570;
  sub_1005B981C(&qword_1019FB8A0, &unk_10148CEB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146D2A0;
  AnyHashable.init<A>(_:)();
  *(inited + 96) = sub_1005B981C(&unk_101A22E80, &unk_1014A08B0);
  *(inited + 72) = a2;

  AnyHashable.init<A>(_:)();
  *(inited + 168) = &type metadata for Bool;
  *(inited + 144) = a3 & 1;
  AnyHashable.init<A>(_:)();
  *(inited + 240) = &type metadata for Bool;
  *(inited + 216) = a4 & 1;
  AnyHashable.init<A>(_:)();
  *(inited + 312) = sub_1005B981C(&qword_101A21E00, &unk_1014B6780);
  *(inited + 288) = a5;

  sub_100078EA4(inited);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019FB8B0, &unk_101471280);
  swift_arrayDestroy();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v9 postNotificationName:v10 object:a1 userInfo:isa];
}

uint64_t sub_100DE02C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = a3;
  v24 = a4;
  v22 = a2;
  v5 = v4;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v27 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v25 = *(v10 - 8);
  v26 = v10;
  __chkstk_darwin(v10);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for CRLBoardIdentifier(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13 - 8);
  sub_100006370(0, &qword_1019F2D90, OS_dispatch_queue_ptr);
  v16 = static OS_dispatch_queue.main.getter();
  sub_10000C83C(a1, &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CRLBoardIdentifier);
  v17 = (*(v14 + 80) + 24) & ~*(v14 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = v5;
  sub_100025668(&v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17, type metadata accessor for CRLBoardIdentifier);
  aBlock[4] = v23;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = *"";
  aBlock[2] = sub_100007638;
  aBlock[3] = v24;
  v19 = _Block_copy(aBlock);
  v20 = v5;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1000066D0(&qword_1019F4D10, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1005B981C(&unk_1019FF400, &unk_10146CF00);
  sub_10001A2F8(&qword_1019F4D20, &unk_1019FF400, &unk_10146CF00, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v19);

  (*(v27 + 8))(v9, v7);
  return (*(v25 + 8))(v12, v26);
}

void sub_100DE066C(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5)
{
  v9 = [objc_opt_self() defaultCenter];
  if (*a3 != -1)
  {
    swift_once();
  }

  v10 = *a4;
  sub_1005B981C(&qword_1019FB8A0, &unk_10148CEB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  AnyHashable.init<A>(_:)();
  sub_1005B981C(&unk_101A19BD0, &qword_10146FA00);
  v12 = *(type metadata accessor for CRLBoardIdentifier(0) - 8);
  v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_10146C6B0;
  sub_10000C83C(a2, v14 + v13, type metadata accessor for CRLBoardIdentifier);
  v15 = sub_10004B3DC(v14);
  swift_setDeallocating();
  sub_100026028(v14 + v13, type metadata accessor for CRLBoardIdentifier);
  swift_deallocClassInstance();
  *(inited + 96) = sub_1005B981C(&unk_101A22E80, &unk_1014A08B0);
  *(inited + 72) = v15;
  sub_100078EA4(inited);
  swift_setDeallocating();
  sub_10000CAAC(inited + 32, &unk_1019FB8B0, &unk_101471280);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v9 postNotificationName:v10 object:a1 userInfo:isa];
}

uint64_t sub_100DE08EC()
{
  v1 = type metadata accessor for CRLBoardDataStore.KeyValueTableKey(0);
  __chkstk_darwin(v1);
  v3 = &v8[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_1019F22A0 != -1)
  {
    swift_once();
  }

  v4 = static OS_os_log.upgrade;
  v5 = static os_log_type_t.default.getter();
  sub_100005404(v4, &_mh_execute_header, v5, "Running upgrade code for rdar://102994991", 41, 2, _swiftEmptyArrayStorage);
  v6 = swift_storeEnumTagMultiPayload();
  __chkstk_darwin(v6);
  *&v8[-32] = v0;
  *&v8[-24] = xmmword_101486780;
  *&v8[-8] = v3;
  OS_dispatch_queue.sync<A>(execute:)();
  return sub_100026028(v3, type metadata accessor for CRLBoardDataStore.KeyValueTableKey);
}

uint64_t sub_100DE0BD8(uint64_t a1)
{
  if (qword_1019F22A0 != -1)
  {
    swift_once();
  }

  v1 = static OS_os_log.upgrade;
  v2 = static os_log_type_t.default.getter();
  v3 = sub_100005404(v1, &_mh_execute_header, v2, "Running upgrade code for rdar://119152219", 41, 2, _swiftEmptyArrayStorage);
  __chkstk_darwin(v3);
  return OS_dispatch_queue.sync<A>(execute:)();
}

uint64_t sub_100DE0D10@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v5[2] = a1;
  result = sub_10002FA9C(sub_100EA4F00, v5);
  if (!v2)
  {
    *a2 = result & 1;
  }

  return result;
}

void sub_100DE0D68(int a1)
{
  LODWORD(v41) = a1;
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = (&v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v1 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue);
  *v7 = v8;
  v9 = enum case for DispatchPredicate.onQueue(_:);
  v10 = *(v4 + 104);
  v10(v7, enum case for DispatchPredicate.onQueue(_:), v3, v5);
  v11 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  v42 = *(v4 + 8);
  v42(v7, v3);
  if ((v8 & 1) == 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  v43 = v9;
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v13 = sub_10001CC04(v12, 0xD000000000000037, 0x80000001015A9680);
  if (v2)
  {
LABEL_13:

    if (qword_1019F2258 == -1)
    {
LABEL_14:
      v34 = static OS_os_log.boardStore;
      sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146C6B0;
      swift_getErrorValue();
      v36 = Error.localizedDescription.getter();
      v38 = v37;
      *(inited + 56) = &type metadata for String;
      *(inited + 64) = sub_1000053B0();
      *(inited + 32) = v36;
      *(inited + 40) = v38;
      v39 = static os_log_type_t.error.getter();
      sub_100005404(v34, &_mh_execute_header, v39, "Failed to removeAllBoardItemDatabaseRows with error %@", 54, 2, inited);
      swift_setDeallocating();
      sub_100005070((inited + 32));
      swift_willThrow();
      return;
    }

LABEL_16:
    swift_once();
    goto LABEL_14;
  }

  v14 = v13;
  v40 = 0;

  v15 = *(*(v14 + 16) + 32);
  *v7 = v15;
  (v10)(v7, v43, v3);
  v16 = v15;
  v17 = _dispatchPreconditionTest(_:)();
  v18 = v10;
  v19 = v42;
  v42(v7, v3);
  if ((v17 & 1) == 0)
  {
    __break(1u);
    goto LABEL_18;
  }

  swift_beginAccess();
  sqlite3_bind_int(*(v14 + 24), 1, v41);
  v20 = *(*(v14 + 16) + 32);
  *v7 = v20;
  v41 = v18;
  v18(v7, v43, v3);
  v21 = v20;
  LOBYTE(v20) = _dispatchPreconditionTest(_:)();
  v19(v7, v3);
  if ((v20 & 1) == 0)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v22 = v19;
  v23 = *(v14 + 16);

  v24 = sub_10001CEC4(v23, v14);

  if (v24 != 101)
  {
    sub_10089C7D0();
    swift_allocError();
    *v29 = v24;
    *(v29 + 8) = 0xD00000000000003ELL;
    *(v29 + 16) = 0x80000001015A9700;
    swift_willThrow();
    v30 = *(*(v14 + 16) + 32);
    *v7 = v30;
    v41(v7, v43, v3);
    v31 = v30;
    v32 = _dispatchPreconditionTest(_:)();
    v42(v7, v3);
    if ((v32 & 1) == 0)
    {
      goto LABEL_20;
    }

    v33 = *(v14 + 24);
    if (v33)
    {
      sqlite3_finalize(v33);
      *(v14 + 24) = 0;
    }

    goto LABEL_13;
  }

  v25 = *(*(v14 + 16) + 32);
  *v7 = v25;
  v41(v7, v43, v3);
  v26 = v25;
  v27 = _dispatchPreconditionTest(_:)();
  v22(v7, v3);
  if ((v27 & 1) == 0)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
  }

  v28 = *(v14 + 24);
  if (v28)
  {
    sqlite3_finalize(v28);
    *(v14 + 24) = 0;
  }
}

uint64_t sub_100DE12E0(int a1)
{
  v72 = type metadata accessor for CKSyncEngine.State.Serialization();
  v68 = *(v72 - 8);
  __chkstk_darwin(v72);
  v71 = &v61 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for CRLBoardDataStore.KeyValueTableKey(0);
  __chkstk_darwin(v4);
  v66 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v70 = &v61 - v7;
  __chkstk_darwin(v8);
  v11 = &v61 - v10;
  if (a1)
  {
    v12 = 6;
  }

  else
  {
    v12 = 5;
  }

  v74 = v9;
  v73 = v12;
  swift_storeEnumTagMultiPayload();
  v75 = v1;
  v79 = v1;
  v80 = v11;
  sub_1005B981C(&qword_1019FB5E0, &qword_101474AF0);
  OS_dispatch_queue.sync<A>(execute:)();
  LODWORD(v77) = a1;
  v13 = v82;
  v76 = v81;
  sub_100026028(v11, type metadata accessor for CRLBoardDataStore.KeyValueTableKey);
  if (qword_1019F22A0 != -1)
  {
    swift_once();
  }

  v14 = static OS_os_log.upgrade;
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  v15 = swift_allocObject();
  v16 = v15;
  *(v15 + 16) = xmmword_10146C6B0;
  if (v77)
  {
    v17 = 0x5320646572616853;
  }

  else
  {
    v17 = 0x2065746176697250;
  }

  if (v77)
  {
    v18 = 0xEC00000065706F63;
  }

  else
  {
    v18 = 0xED000065706F6353;
  }

  *(v15 + 56) = &type metadata for String;
  *(v15 + 64) = sub_1000053B0();
  *(v16 + 32) = v17;
  *(v16 + 40) = v18;
  v19 = static os_log_type_t.default.getter();
  sub_100005404(v14, &_mh_execute_header, v19, "Successfully fetched %{public}@ oldSyncMetadata", 47, 2, v16);
  swift_setDeallocating();
  sub_100005070((v16 + 32));
  swift_deallocClassInstance();
  v20 = v70;
  v21 = swift_storeEnumTagMultiPayload();
  v22 = *(v75 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue);
  __chkstk_darwin(v21);
  *(&v61 - 4) = v23;
  *(&v61 - 24) = xmmword_101486780;
  *(&v61 - 1) = v20;
  v64 = v22;
  OS_dispatch_queue.sync<A>(execute:)();
  v69 = v13;
  sub_100026028(v20, type metadata accessor for CRLBoardDataStore.KeyValueTableKey);
  if (qword_1019F22A0 != -1)
  {
    swift_once();
  }

  v24 = static OS_os_log.upgrade;
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  v25 = swift_allocObject();
  v26 = v25;
  *(v25 + 16) = xmmword_10146C6B0;
  if (v77)
  {
    v27 = 0x5320646572616853;
  }

  else
  {
    v27 = 0x2065746176697250;
  }

  if (v77)
  {
    v28 = 0xEC00000065706F63;
  }

  else
  {
    v28 = 0xED000065706F6353;
  }

  *(v25 + 56) = &type metadata for String;
  *(v25 + 64) = sub_1000053B0();
  *(v26 + 32) = v27;
  *(v26 + 40) = v28;
  v29 = static os_log_type_t.default.getter();
  sub_100005404(v24, &_mh_execute_header, v29, "Successfully deleted %{public}@ syncMetadata database entry", 59, 2, v26);
  swift_setDeallocating();
  sub_100005070((v26 + 32));
  swift_deallocClassInstance();
  type metadata accessor for PropertyListEncoder();
  swift_allocObject();
  v70 = PropertyListEncoder.init()();
  if (v13 >> 60 == 15)
  {
    v30 = 0x2065746176697250;
    if (qword_1019F22A0 != -1)
    {
      swift_once();
    }

    v31 = static OS_os_log.upgrade;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    v33 = inited;
    *(inited + 16) = xmmword_10146C6B0;
    if (v77)
    {
      v30 = 0x5320646572616853;
      v34 = 0xEC00000065706F63;
    }

    else
    {
      v34 = 0xED000065706F6353;
    }

    *(inited + 56) = &type metadata for String;
    *(inited + 64) = sub_1000053B0();
    *(v33 + 32) = v30;
    *(v33 + 40) = v34;
    v35 = static os_log_type_t.default.getter();
    sub_100005404(v31, &_mh_execute_header, v35, "There was no %{public}@ oldSyncMetadata to convert.", 51, 2, v33);
    swift_setDeallocating();
    sub_100005070((v33 + 32));
    v36 = v76;
    if (qword_1019F22A0 != -1)
    {
      swift_once();
    }

    v37 = static OS_os_log.upgrade;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    v38 = swift_initStackObject();
    v39 = v38;
    *(v38 + 16) = xmmword_10146C6B0;
    if (v77)
    {
      v40 = 0x5320646572616853;
    }

    else
    {
      v40 = 0x2065746176697250;
    }

    if (v77)
    {
      v41 = 0xEC00000065706F63;
    }

    else
    {
      v41 = 0xED000065706F6353;
    }

    *(v38 + 56) = &type metadata for String;
    *(v38 + 64) = sub_1000053B0();
    *(v39 + 32) = v40;
    *(v39 + 40) = v41;
    v42 = static os_log_type_t.default.getter();
    sub_100005404(v37, &_mh_execute_header, v42, "There was no converted %{public}@ oldSyncMetadata to save.", 58, 2, v39);

    sub_100025870(v36, v13);
    swift_setDeallocating();
    return sub_100005070((v39 + 32));
  }

  else
  {
    sub_100024E98(v76, v13);
    CKSyncEngine.State.Serialization.init(deprecatedData:)();
    sub_1000066D0(&qword_1019FF728, &type metadata accessor for CKSyncEngine.State.Serialization, &protocol conformance descriptor for CKSyncEngine.State.Serialization);
    v65 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    v67 = v44;
    v45 = 0xED000065706F6353;
    if (qword_1019F22A0 != -1)
    {
      swift_once();
    }

    v46 = static OS_os_log.upgrade;
    v63 = sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    v47 = swift_allocObject();
    v48 = v47;
    v61 = xmmword_10146C6B0;
    *(v47 + 16) = xmmword_10146C6B0;
    if (v77)
    {
      v49 = 0x5320646572616853;
    }

    else
    {
      v49 = 0x2065746176697250;
    }

    if (v77)
    {
      v45 = 0xEC00000065706F63;
    }

    *(v47 + 56) = &type metadata for String;
    v50 = sub_1000053B0();
    v77 = v45;
    v78 = v50;
    v48[8] = v50;
    v48[4] = v49;
    v48[5] = v45;
    v51 = static os_log_type_t.default.getter();
    v62 = v46;
    sub_100005404(v46, &_mh_execute_header, v51, "Successfully converted %{public}@ oldSyncMetadata into new format.", 66, 2, v48);
    swift_setDeallocating();
    sub_100005070(v48 + 4);
    swift_deallocClassInstance();
    (*(v68 + 8))(v71, v72);
    v52 = v66;
    v53 = swift_storeEnumTagMultiPayload();
    __chkstk_darwin(v53);
    v54 = v65;
    *(&v61 - 4) = v75;
    *(&v61 - 3) = v54;
    v55 = v67;
    *(&v61 - 2) = v67;
    *(&v61 - 1) = v52;
    sub_100024E98(v54, v55);
    OS_dispatch_queue.sync<A>(execute:)();
    v56 = v76;
    sub_10002640C(v54, v55);
    sub_100026028(v52, type metadata accessor for CRLBoardDataStore.KeyValueTableKey);
    v57 = swift_allocObject();
    *(v57 + 16) = v61;
    v58 = v77;
    v59 = v78;
    *(v57 + 56) = &type metadata for String;
    *(v57 + 64) = v59;
    *(v57 + 32) = v49;
    *(v57 + 40) = v58;
    v60 = static os_log_type_t.default.getter();
    sub_100005404(v62, &_mh_execute_header, v60, "Successfully saved the new format of %{public}@ sync metadata", 61, 2, v57);

    sub_100025870(v56, v13);
    sub_10002640C(v54, v55);
    swift_setDeallocating();
    sub_100005070((v57 + 32));
    return swift_deallocClassInstance();
  }
}

void sub_100DE36B8()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = (&v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_queue);
  *v5 = v6;
  v7 = enum case for DispatchPredicate.onQueue(_:);
  v8 = *(v2 + 104);
  (v8)(v5, enum case for DispatchPredicate.onQueue(_:), v1, v3);
  v22 = v6;
  v9 = _dispatchPreconditionTest(_:)();
  v10 = *(v2 + 8);
  v10(v5, v1);
  if ((v9 & 1) == 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  v11 = v23;
  v12 = sub_100DE38A4();
  if (v11)
  {
    return;
  }

  v21 = v12;
  v23 = 0;
  v13 = v22;
  *v5 = v22;
  v8(v5, v7, v1);
  v14 = v13;
  v15 = _dispatchPreconditionTest(_:)();
  v10(v5, v1);
  if ((v15 & 1) == 0)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v16 = v23;
  v17 = sub_100DE4F8C();
  if (v16)
  {
  }

  else
  {
    sub_100DC9150(v17);
    v19 = v18;

    v20 = sub_10004B3DC(v19);

    sub_1010ACDC4(v20, v21);
  }
}

uint64_t sub_100DE38A4()
{
  v128 = type metadata accessor for UUID();
  v1 = *(v128 - 8);
  __chkstk_darwin(v128);
  v3 = &v118 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = type metadata accessor for CRLBoardIdentifierStorage(0);
  __chkstk_darwin(v127);
  v126 = &v118 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v125 = &v118 - v6;
  v7 = type metadata accessor for CRLBoardIdentifier(0);
  __chkstk_darwin(v7 - 8);
  v124 = &v118 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v123 = &v118 - v10;
  __chkstk_darwin(v11);
  v122 = &v118 - v12;
  __chkstk_darwin(v13);
  v121 = &v118 - v14;
  __chkstk_darwin(v15);
  v131 = &v118 - v16;
  v17 = type metadata accessor for DispatchPredicate();
  v18 = *(v17 - 8);
  v19 = __chkstk_darwin(v17);
  v21 = (&v118 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v137 = v0;
  v22 = *(v0 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_queue);
  *v21 = v22;
  v23 = enum case for DispatchPredicate.onQueue(_:);
  v25 = v18 + 104;
  v24 = *(v18 + 104);
  (v24)(v21, enum case for DispatchPredicate.onQueue(_:), v17, v19);
  v26 = v22;
  LOBYTE(v22) = _dispatchPreconditionTest(_:)();
  v28 = *(v18 + 8);
  v27 = v18 + 8;
  v135 = v28;
  v28(v21, v17);
  if ((v22 & 1) == 0)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v120 = v1;
  v133 = v24;
  v134 = v23;
  v130 = v27;
  v132 = v3;
  v140 = 0;
  v141 = 0xE000000000000000;
  _StringGuts.grow(_:)(102);
  v29._countAndFlagsBits = 0x205443454C4553;
  v29._object = 0xE700000000000000;
  String.append(_:)(v29);
  v30._countAndFlagsBits = 0x736472616F62;
  v30._object = 0xE600000000000000;
  String.append(_:)(v30);
  v31._countAndFlagsBits = 46;
  v31._object = 0xE100000000000000;
  String.append(_:)(v31);
  v32._object = 0x8000000101585360;
  v32._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v32);
  v33._countAndFlagsBits = 0x204D4F524620;
  v33._object = 0xE600000000000000;
  String.append(_:)(v33);
  v34._countAndFlagsBits = 0x736472616F62;
  v34._object = 0xE600000000000000;
  String.append(_:)(v34);
  v35._countAndFlagsBits = 0x4A2052454E4E4920;
  v35._object = 0xEC000000204E494FLL;
  String.append(_:)(v35);
  v36._countAndFlagsBits = 0x74695F6472616F62;
  v36._object = 0xEB00000000736D65;
  String.append(_:)(v36);
  v37._countAndFlagsBits = 542002976;
  v37._object = 0xE400000000000000;
  String.append(_:)(v37);
  v38._countAndFlagsBits = 0x74695F6472616F62;
  v38._object = 0xEB00000000736D65;
  String.append(_:)(v38);
  v39._countAndFlagsBits = 46;
  v39._object = 0xE100000000000000;
  String.append(_:)(v39);
  v40._object = 0x8000000101585360;
  v40._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v40);
  v41._countAndFlagsBits = 2112800;
  v41._object = 0xE300000000000000;
  String.append(_:)(v41);
  v42._countAndFlagsBits = 0x736472616F62;
  v42._object = 0xE600000000000000;
  String.append(_:)(v42);
  v43._countAndFlagsBits = 46;
  v43._object = 0xE100000000000000;
  String.append(_:)(v43);
  v44._object = 0x8000000101585360;
  v44._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v44);
  v45._countAndFlagsBits = 0x20455245485720;
  v45._object = 0xE700000000000000;
  String.append(_:)(v45);
  v46._countAndFlagsBits = 0x736472616F62;
  v46._object = 0xE600000000000000;
  String.append(_:)(v46);
  v47._countAndFlagsBits = 46;
  v47._object = 0xE100000000000000;
  String.append(_:)(v47);
  v48._countAndFlagsBits = 0xD000000000000014;
  v48._object = 0x80000001015A3590;
  String.append(_:)(v48);
  v49._countAndFlagsBits = 0x20524F203F203E20;
  v49._object = 0xE900000000000028;
  String.append(_:)(v49);
  v50._countAndFlagsBits = 0x74695F6472616F62;
  v50._object = 0xEB00000000736D65;
  String.append(_:)(v50);
  v51._countAndFlagsBits = 46;
  v51._object = 0xE100000000000000;
  String.append(_:)(v51);
  v52._countAndFlagsBits = 0xD000000000000014;
  v52._object = 0x80000001015A3590;
  String.append(_:)(v52);
  v53._countAndFlagsBits = 0x444E41203F203E20;
  v53._object = 0xEA00000000002820;
  String.append(_:)(v53);
  v54._countAndFlagsBits = 0x74695F6472616F62;
  v54._object = 0xEB00000000736D65;
  String.append(_:)(v54);
  v55._countAndFlagsBits = 46;
  v55._object = 0xE100000000000000;
  String.append(_:)(v55);
  v56._countAndFlagsBits = 0x6F5F7463656A626FLL;
  v56._object = 0xEE00736E6F697470;
  String.append(_:)(v56);
  v57._countAndFlagsBits = 0x203E20293F202620;
  v57._object = 0xEA00000000002930;
  String.append(_:)(v57);
  v58 = v140;
  v59 = v141;
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v61 = v138;
  v62 = sub_10001CC04(v60, v58, v59);
  v136 = v61;
  if (v61)
  {

    if (qword_1019F2258 == -1)
    {
LABEL_4:
      v63 = static OS_os_log.boardStore;
      sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146C6B0;
      swift_getErrorValue();
      v65 = Error.localizedDescription.getter();
      v67 = v66;
      *(inited + 56) = &type metadata for String;
      *(inited + 64) = sub_1000053B0();
      *(inited + 32) = v65;
      *(inited + 40) = v67;
      v68 = static os_log_type_t.error.getter();
      sub_100005404(v63, &_mh_execute_header, v68, "Failed to fetch list of unsupported boards with error %@", 56, 2, inited);
      swift_setDeallocating();
      sub_100005070((inited + 32));
      swift_willThrow();
      return v65;
    }

LABEL_32:
    swift_once();
    goto LABEL_4;
  }

  v69 = v62;

  v70 = sub_10001FF1C();
  sub_100034254(v70, 1);
  sub_100034254(v70, 2);
  sub_100034254(1, 3);
  v139 = _swiftEmptySetSingleton;
  v71 = *(*(v69 + 16) + 32);
  *v21 = v71;
  v72 = v134;
  v73 = v133;
  v133(v21, v134, v17);
  v74 = v71;
  LOBYTE(v71) = _dispatchPreconditionTest(_:)();
  v75 = v135;
  v135(v21, v17);
  if ((v71 & 1) == 0)
  {
    __break(1u);
    goto LABEL_34;
  }

  type metadata accessor for SQLiteRowIterator();
  v76 = swift_initStackObject();
  v76[3] = 0;
  v137 = v76 + 3;
  v76[4] = 0;
  v119 = v76 + 4;
  v76[5] = 1;
  v138 = v76;
  v76[2] = v69;

  swift_beginAccess();
  v77 = *(*(v69 + 16) + 32);
  *v21 = v77;
  v73(v21, v72, v17);
  v78 = v77;
  LOBYTE(v77) = _dispatchPreconditionTest(_:)();
  v75(v21, v17);
  if ((v77 & 1) == 0)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v120 += 4;
  v129 = v25;
  while (1)
  {
    v95 = v137;
    *v137 = 0;
    v95[1] = 0;
    v138[5] = 1;
    v96 = sqlite3_step(*(v69 + 24));
    if (v96 != 100)
    {
      break;
    }

    v97 = *(*(v69 + 16) + 32);
    *v21 = v97;
    v73(v21, v72, v17);

    v98 = v97;
    LOBYTE(v97) = _dispatchPreconditionTest(_:)();
    v75(v21, v17);
    if ((v97 & 1) == 0)
    {
      goto LABEL_29;
    }

    v99 = *(*(v69 + 16) + 32);
    *v21 = v99;
    v73(v21, v72, v17);
    v100 = v99;
    LOBYTE(v99) = _dispatchPreconditionTest(_:)();
    v75(v21, v17);
    if ((v99 & 1) == 0)
    {
      goto LABEL_30;
    }

    if (sqlite3_column_type(*(v69 + 24), 0) == 5)
    {
      goto LABEL_17;
    }

    v101 = sqlite3_column_blob(*(v69 + 24), 0);
    if (!v101)
    {
      goto LABEL_17;
    }

    v102 = v101;
    v103 = sqlite3_column_bytes(*(v69 + 24), 0);
    v104 = sub_100024DD4(v102, v103);
    v106 = v105;
    sub_100024E98(v104, v105);
    v107 = v132;
    v108 = v136;
    sub_100024EEC(v132, v104, v106);
    if (v108)
    {

      sub_10002640C(v104, v106);
      sub_10002640C(v104, v106);
      v136 = 0;
      v72 = v134;
      v73 = v133;
      v75 = v135;
LABEL_17:
      if (qword_1019F2258 != -1)
      {
        swift_once();
      }

      v111 = static OS_os_log.boardStore;
      v112 = static os_log_type_t.error.getter();
      sub_100005404(v111, &_mh_execute_header, v112, "Failure reading board identifier data.", 38, 2, _swiftEmptyArrayStorage);

      goto LABEL_9;
    }

    v79 = v109;
    v80 = v110;
    v136 = 0;
    sub_10002640C(v104, v106);
    v81 = v126;
    (*v120)(v126, v107, v128);
    v82 = (v81 + *(v127 + 20));
    *v82 = v79;
    v82[1] = v80;
    v83 = v125;
    sub_100025668(v81, v125, type metadata accessor for CRLBoardIdentifierStorage);
    v84 = v83;
    v85 = v122;
    sub_100025668(v84, v122, type metadata accessor for CRLBoardIdentifierStorage);
    v86 = v85;
    v87 = v121;
    sub_100025668(v86, v121, type metadata accessor for CRLBoardIdentifier);
    v88 = v87;
    v89 = v131;
    sub_100025668(v88, v131, type metadata accessor for CRLBoardIdentifier);
    v90 = v89;
    v91 = v124;
    sub_10000C83C(v90, v124, type metadata accessor for CRLBoardIdentifier);
    v92 = v123;
    sub_100031F10(v123, v91);

    sub_10002640C(v104, v106);
    sub_100026028(v92, type metadata accessor for CRLBoardIdentifier);
    sub_100026028(v131, type metadata accessor for CRLBoardIdentifier);
    v72 = v134;
    v73 = v133;
    v75 = v135;
LABEL_9:
    v93 = *(*(v69 + 16) + 32);
    *v21 = v93;
    v73(v21, v72, v17);
    v94 = v93;
    LOBYTE(v93) = _dispatchPreconditionTest(_:)();
    v75(v21, v17);
    if ((v93 & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  if (v96 && v96 != 101)
  {
    *v137 = v96;
    v113 = v119;
    *v119 = 0;
    v113[1] = 0;
  }

  v65 = v139;
  v114 = *(*(v69 + 16) + 32);
  *v21 = v114;
  v73(v21, v72, v17);
  v115 = v114;
  LOBYTE(v114) = _dispatchPreconditionTest(_:)();
  v135(v21, v17);
  if ((v114 & 1) == 0)
  {
LABEL_34:
    __break(1u);
  }

  v116 = *(v69 + 24);
  if (v116)
  {
    sqlite3_finalize(v116);
    *(v69 + 24) = 0;
  }

  return v65;
}

uint64_t sub_100DE4638()
{
  v90 = type metadata accessor for UUID();
  v81 = *(v90 - 8);
  __chkstk_darwin(v90);
  v3 = v80 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = type metadata accessor for CRLBoardIdentifierStorage(0);
  __chkstk_darwin(v89);
  v88 = v80 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v87 = v80 - v6;
  v7 = type metadata accessor for CRLBoardIdentifier(0);
  __chkstk_darwin(v7 - 8);
  v86 = v80 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v85 = v80 - v10;
  __chkstk_darwin(v11);
  v84 = v80 - v12;
  __chkstk_darwin(v13);
  v83 = v80 - v14;
  __chkstk_darwin(v15);
  v82 = v80 - v16;
  v17 = type metadata accessor for DispatchPredicate();
  v18 = *(v17 - 8);
  v19 = __chkstk_darwin(v17);
  v21 = (v80 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = *(inited + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_queue);
  *v21 = v22;
  v24 = v18 + 104;
  v23 = *(v18 + 104);
  v93 = enum case for DispatchPredicate.onQueue(_:);
  v94 = v23;
  v23(v21, v19);
  v25 = v22;
  LOBYTE(v22) = _dispatchPreconditionTest(_:)();
  v28 = *(v18 + 8);
  v27 = v18 + 8;
  v26 = v28;
  v28(v21, v17);
  if ((v22 & 1) == 0)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v98 = v26;
  v92 = v3;
  type metadata accessor for SQLiteStatement();
  inited = swift_initStackObject();

  v30 = sub_10001CC04(v29, 0xD000000000000050, 0x80000001015ABF20);
  v97 = v1;
  if (v1)
  {

    if (qword_1019F2258 == -1)
    {
LABEL_4:
      v31 = static OS_os_log.boardStore;
      v32 = static os_log_type_t.error.getter();
      sub_100005404(v31, &_mh_execute_header, v32, "Failed to fetch shared boards that were deleted while offline", 61, 2, _swiftEmptyArrayStorage);
      v33 = v97;
      swift_willThrow();
      v97 = v33;
      return inited;
    }

LABEL_31:
    swift_once();
    goto LABEL_4;
  }

  v34 = v30;

  v99 = _swiftEmptySetSingleton;
  v35 = *(*(v34 + 16) + 32);
  *v21 = v35;
  v36 = v93;
  v37 = v94;
  v94(v21, v93, v17);
  v38 = v35;
  LOBYTE(v35) = _dispatchPreconditionTest(_:)();
  v39 = v98;
  v98(v21, v17);
  if ((v35 & 1) == 0)
  {
    __break(1u);
    goto LABEL_33;
  }

  type metadata accessor for SQLiteRowIterator();
  v40 = swift_initStackObject();
  v40[3] = 0;
  v95 = v40 + 3;
  v40[4] = 0;
  v80[0] = v40 + 4;
  v40[5] = 1;
  v96 = v40;
  v40[2] = v34;

  swift_beginAccess();
  v41 = *(*(v34 + 16) + 32);
  *v21 = v41;
  v37(v21, v36, v17);
  v42 = v41;
  inited = _dispatchPreconditionTest(_:)();
  v39(v21, v17);
  if ((inited & 1) == 0)
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v81 += 4;
  v91 = v27;
  v80[1] = v24;
  while (1)
  {
    v46 = v95;
    v45 = v96;
    *v95 = 0;
    v46[1] = 0;
    v45[5] = 1;
    v47 = sqlite3_step(*(v34 + 24));
    if (v47 != 100)
    {
      break;
    }

    v48 = *(*(v34 + 16) + 32);
    *v21 = v48;
    v37(v21, v36, v17);

    v49 = v48;
    inited = _dispatchPreconditionTest(_:)();
    v50 = v98;
    v98(v21, v17);
    if ((inited & 1) == 0)
    {
      goto LABEL_28;
    }

    v51 = *(*(v34 + 16) + 32);
    *v21 = v51;
    v37(v21, v36, v17);
    v52 = v51;
    inited = _dispatchPreconditionTest(_:)();
    v50(v21, v17);
    if ((inited & 1) == 0)
    {
      goto LABEL_29;
    }

    if (sqlite3_column_type(*(v34 + 24), 0) == 5 || (v53 = sqlite3_column_blob(*(v34 + 24), 0)) == 0)
    {
    }

    else
    {
      v54 = v53;
      v55 = sqlite3_column_bytes(*(v34 + 24), 0);
      v56 = sub_100024DD4(v54, v55);
      v58 = v57;
      sub_100024E98(v56, v57);
      v59 = v92;
      v60 = v97;
      sub_100024EEC(v92, v56, v58);
      if (v60)
      {

        sub_10002640C(v56, v58);

        sub_10002640C(v56, v58);
        v97 = 0;
      }

      else
      {
        v63 = v61;
        v64 = v62;
        v97 = 0;
        sub_10002640C(v56, v58);
        v65 = v88;
        (*v81)(v88, v59, v90);
        v66 = (v65 + *(v89 + 20));
        *v66 = v63;
        v66[1] = v64;
        v67 = v87;
        sub_100025668(v65, v87, type metadata accessor for CRLBoardIdentifierStorage);
        v68 = v67;
        v69 = v84;
        sub_100025668(v68, v84, type metadata accessor for CRLBoardIdentifierStorage);
        v70 = v69;
        v71 = v83;
        sub_100025668(v70, v83, type metadata accessor for CRLBoardIdentifier);
        v72 = v82;
        sub_100025668(v71, v82, type metadata accessor for CRLBoardIdentifier);
        v73 = v86;
        sub_10000C83C(v72, v86, type metadata accessor for CRLBoardIdentifier);
        v74 = v85;
        sub_100031F10(v85, v73);

        sub_10002640C(v56, v58);
        sub_100026028(v74, type metadata accessor for CRLBoardIdentifier);
        sub_100026028(v72, type metadata accessor for CRLBoardIdentifier);
      }

      v36 = v93;
      v37 = v94;
    }

    v43 = *(*(v34 + 16) + 32);
    *v21 = v43;
    v37(v21, v36, v17);
    v44 = v43;
    inited = _dispatchPreconditionTest(_:)();
    v98(v21, v17);
    if ((inited & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  if (v47 && v47 != 101)
  {
    *v95 = v47;
    v75 = v80[0];
    *v80[0] = 0;
    *(v75 + 8) = 0;
  }

  inited = v99;
  v76 = *(*(v34 + 16) + 32);
  *v21 = v76;
  v94(v21, v36, v17);
  v77 = v76;
  LOBYTE(v76) = _dispatchPreconditionTest(_:)();
  v98(v21, v17);
  if ((v76 & 1) == 0)
  {
LABEL_33:
    __break(1u);
  }

  v78 = *(v34 + 24);
  if (v78)
  {
    sqlite3_finalize(v78);
    *(v34 + 24) = 0;
  }

  return inited;
}

uint64_t sub_100DE4F8C()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 1);
  v3 = __chkstk_darwin(v1);
  v5 = (&v81 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_queue);
  *v5 = v6;
  v7 = enum case for DispatchPredicate.onQueue(_:);
  v8 = v2 + 104;
  v9 = *(v2 + 104);
  (v9)(v5, enum case for DispatchPredicate.onQueue(_:), v1, v3);
  v10 = v6;
  v11 = _dispatchPreconditionTest(_:)();
  v12 = *(v2 + 8);
  v86 = v1;
  v92 = (v2 + 8);
  (v12)(v5, v1);
  if ((v11 & 1) == 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v90 = v9;
  v91 = v12;
  v96 = 0;
  v97 = 0xE000000000000000;
  _StringGuts.grow(_:)(65);
  v13._countAndFlagsBits = 0x205443454C4553;
  v13._object = 0xE700000000000000;
  String.append(_:)(v13);
  v14._countAndFlagsBits = 0x65756C6176;
  v14._object = 0xE500000000000000;
  String.append(_:)(v14);
  v15._countAndFlagsBits = 0x204D4F524620;
  v15._object = 0xE600000000000000;
  String.append(_:)(v15);
  v16._countAndFlagsBits = 0x756C61765F79656BLL;
  v16._object = 0xEE00617461645F65;
  String.append(_:)(v16);
  v17._countAndFlagsBits = 0x20455245485720;
  v17._object = 0xE700000000000000;
  String.append(_:)(v17);
  v18._countAndFlagsBits = 7955819;
  v18._object = 0xE300000000000000;
  String.append(_:)(v18);
  v19._countAndFlagsBits = 0x2720454B494C20;
  v19._object = 0xE700000000000000;
  String.append(_:)(v19);
  v20._countAndFlagsBits = 0xD000000000000016;
  v20._object = 0x80000001015A36D0;
  String.append(_:)(v20);
  v21._countAndFlagsBits = 0x4320444E41202725;
  v21._object = 0xEC00000028545341;
  String.append(_:)(v21);
  v22._countAndFlagsBits = 0x6E695F6172747865;
  v22._object = 0xEA00000000006F66;
  String.append(_:)(v22);
  v23._object = 0x80000001015A36F0;
  v23._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v23);
  v24 = v96;
  v25 = v97;
  type metadata accessor for SQLiteStatement();
  inited = swift_initStackObject();

  v28 = v24;
  v11 = inited;
  v29 = v89;
  v30 = sub_10001CC04(v27, v28, v25);
  if (v29)
  {
LABEL_3:

    if (qword_1019F2160 == -1)
    {
LABEL_4:
      v31 = static OS_os_log.crlZoneRefetch;
      v32 = static os_log_type_t.error.getter();
      sub_100005404(v31, &_mh_execute_header, v32, "Failed to fetch unsupported zones needing refetching from the datastore.", 72, 2, _swiftEmptyArrayStorage);
      swift_willThrow();
      return v11;
    }

LABEL_43:
    swift_once();
    goto LABEL_4;
  }

  v33 = v30;

  v95 = _swiftEmptySetSingleton;
  v34 = *(*(v33 + 16) + 32);
  *v5 = v34;
  v35 = v86;
  (v90)(v5, v7, v86);
  v36 = v34;
  LOBYTE(v34) = _dispatchPreconditionTest(_:)();
  v37 = v91;
  (v91)(v5, v35);
  if ((v34 & 1) == 0)
  {
    __break(1u);
    goto LABEL_45;
  }

  v85 = 0;
  type metadata accessor for SQLiteRowIterator();
  v38 = swift_initStackObject();
  v38[3] = 0;
  v88 = v38 + 3;
  v38[4] = 0;
  v84 = v38 + 4;
  v38[5] = 1;
  v89 = v38;
  v38[2] = v33;

  swift_beginAccess();
  v39 = *(*(v33 + 16) + 32);
  *v5 = v39;
  (v90)(v5, v7, v35);
  v40 = v39;
  LOBYTE(v39) = _dispatchPreconditionTest(_:)();
  (v37)(v5, v35);
  v41 = v90;
  if (v39)
  {
    v37 = v33;
    v83 = xmmword_1014B6250;
    v87 = v8;
    while (1)
    {
      v42 = v88;
      *v88 = 0;
      v42[1] = 0;
      v89[5] = 1;
      v43 = sqlite3_step(v37[3]);
      if (v43 != 100)
      {
        break;
      }

      v44 = *(v37[2] + 4);
      *v5 = v44;
      (v41)(v5, v7, v35);

      v45 = v44;
      LOBYTE(v44) = _dispatchPreconditionTest(_:)();
      v46 = v41;
      v41 = v7;
      v33 = v8;
      v47 = v91;
      v7 = v92;
      (v91)(v5, v35);
      if ((v44 & 1) == 0)
      {
        goto LABEL_37;
      }

      v48 = *(v37[2] + 4);
      *v5 = v48;
      v49 = v35;
      v35 = v41;
      v50 = v41;
      v41 = v49;
      v46(v5, v50);
      v51 = v48;
      LOBYTE(v48) = _dispatchPreconditionTest(_:)();
      v33 = v41;
      (v47)(v5, v41);
      if ((v48 & 1) == 0)
      {
        goto LABEL_38;
      }

      if (sqlite3_column_type(v37[3], 0) != 5 && (v52 = sqlite3_column_blob(v37[3], 0)) != 0)
      {
        v86 = v52;
        v60 = sqlite3_column_bytes(v37[3], 0);
        v41 = v90;
        v7 = v35;
        v8 = v87;
        if (v60)
        {
          v35 = v33;
          if (v60 <= 14)
          {
            memset(__dst, 0, sizeof(__dst));
            v94 = v60;
            memcpy(__dst, v86, v60);
            v86 = *__dst;
            v33 = v82 & 0xF00000000000000 | *&__dst[8] | ((*&__dst[12] | (v94 << 16)) << 32);
            v82 = v33;
          }

          else
          {
            v61 = v60;
            type metadata accessor for __DataStorage();
            swift_allocObject();
            if (v61 == 0x7FFFFFFF)
            {
              v62 = __DataStorage.init(bytes:length:)();
              type metadata accessor for Data.RangeReference();
              v86 = swift_allocObject();
              *(v86 + 1) = v83;
              v33 = v62 | 0x8000000000000000;
            }

            else
            {
              v63 = __DataStorage.init(bytes:length:)();
              v86 = (v61 << 32);
              v33 = v63 | 0x4000000000000000;
            }
          }
        }

        else
        {
          v86 = 0;
          v35 = v33;
          v33 = 0xC000000000000000;
        }

        sub_100006370(0, &qword_101A1AEB0, NSKeyedUnarchiver_ptr);
        sub_100006370(0, &qword_1019F69D0, CKRecordZoneID_ptr);
        v64 = v85;
        v65 = static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)();
        v85 = v64;
        if (v64)
        {
          goto LABEL_39;
        }

        if (v65)
        {
          v66 = v65;
          sub_100E7227C(__dst, v66, &qword_1019F69D0, CKRecordZoneID_ptr, &unk_1019F3540, &unk_1014B6540);
          sub_10002640C(v86, v33);
        }

        else
        {

          sub_10002640C(v86, v33);
        }

        v67 = *(v37[2] + 4);
        *v5 = v67;
        (v41)(v5, v7, v35);
        v68 = v67;
        v57 = _dispatchPreconditionTest(_:)();
        v58 = v5;
        v59 = v35;
      }

      else
      {

        v53 = *(v37[2] + 4);
        *v5 = v53;
        v7 = v35;
        v54 = v35;
        v35 = v41;
        v55 = v41;
        v41 = v90;
        v8 = v87;
        (v90)(v5, v54, v55);
        v56 = v53;
        v57 = _dispatchPreconditionTest(_:)();
        v58 = v5;
        v59 = v33;
      }

      (v91)(v58, v59);
      if ((v57 & 1) == 0)
      {
        goto LABEL_36;
      }
    }

    v69 = v35;
    v70 = v5;
    if (v43 && v43 != 101)
    {
      *v88 = v43;
      v71 = v84;
      *v84 = 0;
      v71[1] = 0;
    }

    v11 = v95;
    v72 = v37;
    v73 = *(v37[2] + 4);
    *v70 = v73;
    (v41)(v70, v7, v69);
    v74 = v73;
    v75 = _dispatchPreconditionTest(_:)();
    (v91)(v70, v69);
    if (v75)
    {
      v76 = v72[3];
      if (v76)
      {
        sqlite3_finalize(v76);
        v72[3] = 0;
      }

      return v11;
    }

LABEL_45:
    __break(1u);
  }

LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:

  sub_10002640C(v86, v33);

  v78 = *(v37[2] + 4);
  *v5 = v78;
  (v41)(v5, v7, v35);
  v79 = v78;
  v11 = _dispatchPreconditionTest(_:)();
  result = (v91)(v5, v35);
  if (v11)
  {
    v80 = v37[3];
    if (v80)
    {
      sqlite3_finalize(v80);
      v37[3] = 0;
    }

    goto LABEL_3;
  }

  __break(1u);
  return result;
}

uint64_t sub_100DE5990(uint64_t a1)
{
  v89 = a1;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = (&v81 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v87 = v1;
  v7 = *(v1 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_queue);
  *v6 = v7;
  v8 = enum case for DispatchPredicate.onQueue(_:);
  v9 = *(v3 + 104);
  v9(v6, enum case for DispatchPredicate.onQueue(_:), v2, v4);
  v10 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  v11 = *(v3 + 8);
  v11(v6, v2);
  if ((v7 & 1) == 0)
  {
    __break(1u);
    goto LABEL_20;
  }

  v83 = v8;
  v84 = v9;
  v85 = v3 + 104;
  v86 = v11;
  v82 = v2;
  v90 = 0;
  v91 = 0xE000000000000000;
  _StringGuts.grow(_:)(131);
  v12._countAndFlagsBits = 0xD00000000000001ELL;
  v12._object = 0x80000001015A3570;
  String.append(_:)(v12);
  v13._countAndFlagsBits = 0x736472616F62;
  v13._object = 0xE600000000000000;
  String.append(_:)(v13);
  v14._countAndFlagsBits = 0x4A2052454E4E4920;
  v14._object = 0xEC000000204E494FLL;
  String.append(_:)(v14);
  v15._countAndFlagsBits = 0x74695F6472616F62;
  v15._object = 0xEB00000000736D65;
  String.append(_:)(v15);
  v16._countAndFlagsBits = 542002976;
  v16._object = 0xE400000000000000;
  String.append(_:)(v16);
  v17._countAndFlagsBits = 0x74695F6472616F62;
  v17._object = 0xEB00000000736D65;
  String.append(_:)(v17);
  v18._countAndFlagsBits = 46;
  v18._object = 0xE100000000000000;
  String.append(_:)(v18);
  v19._object = 0x8000000101585360;
  v19._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v19);
  v20._countAndFlagsBits = 2112800;
  v20._object = 0xE300000000000000;
  String.append(_:)(v20);
  v21._countAndFlagsBits = 0x736472616F62;
  v21._object = 0xE600000000000000;
  String.append(_:)(v21);
  v22._countAndFlagsBits = 46;
  v22._object = 0xE100000000000000;
  String.append(_:)(v22);
  v23._object = 0x8000000101585360;
  v23._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v23);
  v24._countAndFlagsBits = 0x20455245485720;
  v24._object = 0xE700000000000000;
  String.append(_:)(v24);
  v25._countAndFlagsBits = 0x736472616F62;
  v25._object = 0xE600000000000000;
  String.append(_:)(v25);
  v26._countAndFlagsBits = 46;
  v26._object = 0xE100000000000000;
  String.append(_:)(v26);
  v27._object = 0x8000000101585360;
  v27._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v27);
  v28._countAndFlagsBits = 0x444E41203F203D20;
  v28._object = 0xEA00000000002820;
  String.append(_:)(v28);
  v29._countAndFlagsBits = 0x736472616F62;
  v29._object = 0xE600000000000000;
  String.append(_:)(v29);
  v30._countAndFlagsBits = 46;
  v30._object = 0xE100000000000000;
  String.append(_:)(v30);
  v31._countAndFlagsBits = 0xD000000000000014;
  v31._object = 0x80000001015A3590;
  String.append(_:)(v31);
  v32._countAndFlagsBits = 0x20524F203F203E20;
  v32._object = 0xE900000000000028;
  String.append(_:)(v32);
  v33._countAndFlagsBits = 0x74695F6472616F62;
  v33._object = 0xEB00000000736D65;
  String.append(_:)(v33);
  v34._countAndFlagsBits = 46;
  v34._object = 0xE100000000000000;
  String.append(_:)(v34);
  v35._countAndFlagsBits = 0xD000000000000014;
  v35._object = 0x80000001015A3590;
  String.append(_:)(v35);
  v36._countAndFlagsBits = 0x444E41203F203E20;
  v36._object = 0xEA00000000002820;
  String.append(_:)(v36);
  v37._countAndFlagsBits = 0x74695F6472616F62;
  v37._object = 0xEB00000000736D65;
  String.append(_:)(v37);
  v38._countAndFlagsBits = 46;
  v38._object = 0xE100000000000000;
  String.append(_:)(v38);
  v39._countAndFlagsBits = 0x6F5F7463656A626FLL;
  v39._object = 0xEE00736E6F697470;
  String.append(_:)(v39);
  v40._countAndFlagsBits = 0x203E20293F202620;
  v40._object = 0xEC00000029292930;
  String.append(_:)(v40);
  v41 = v90;
  v42 = v91;
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v44 = v88;
  v45 = sub_10001CC04(v43, v41, v42);
  if (v44)
  {

    if (qword_1019F2258 == -1)
    {
LABEL_5:
      v49 = static OS_os_log.boardStore;
      sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146BDE0;
      v51 = UUID.uuidString.getter();
      v53 = v52;
      *(inited + 56) = &type metadata for String;
      v54 = sub_1000053B0();
      *(inited + 64) = v54;
      *(inited + 32) = v51;
      *(inited + 40) = v53;
      swift_getErrorValue();
      v55 = Error.localizedDescription.getter();
      *(inited + 96) = &type metadata for String;
      *(inited + 104) = v54;
      *(inited + 72) = v55;
      *(inited + 80) = v56;
      v57 = static os_log_type_t.error.getter();
      sub_100005404(v49, &_mh_execute_header, v57, "Failed to fetch if specific board %@ is unsupported with error %@", 65, 2, inited);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
      swift_arrayDestroy();
      swift_willThrow();
      return v49 & 1;
    }

LABEL_20:
    swift_once();
    goto LABEL_5;
  }

  v46 = v45;

  v47 = type metadata accessor for CRLBoardIdentifierStorage(0);
  v48 = sub_10084DAE4(v89, *(v89 + *(v47 + 20)), *(v89 + *(v47 + 20) + 8));
  v60 = v59;
  v61 = v48;
  v62 = *(*(v46 + 16) + 32);
  *v6 = v62;
  v63 = v82;
  v84(v6, v83, v82);
  v64 = v62;
  LOBYTE(v62) = _dispatchPreconditionTest(_:)();
  v86(v6, v63);
  if ((v62 & 1) == 0)
  {
    __break(1u);
    goto LABEL_22;
  }

  sub_100DCCAB4(v61, v60, v46, 1);
  sub_10002640C(v61, v60);
  v65 = sub_10001FF1C();
  sub_100034254(v65, 2);
  sub_100034254(v65, 3);
  sub_100034254(1, 4);
  v66 = *(*(v46 + 16) + 32);
  *v6 = v66;
  v84(v6, v83, v63);
  v67 = v66;
  LOBYTE(v66) = _dispatchPreconditionTest(_:)();
  v86(v6, v63);
  if ((v66 & 1) == 0)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }

  type metadata accessor for SQLiteRowIterator();
  v68 = swift_initStackObject();
  v68[4] = 0;
  v68[5] = 1;
  v68[2] = v46;
  v68[3] = 0;

  v69 = sub_10001E1D0();
  if (!v69)
  {

    swift_setDeallocating();
    sub_10001E364(v68[3], v68[4], v68[5]);
LABEL_14:
    v77 = *(*(v46 + 16) + 32);
    *v6 = v77;
    v78 = v82;
    v84(v6, v83, v82);
    v79 = v77;
    LOBYTE(v77) = _dispatchPreconditionTest(_:)();
    v86(v6, v78);
    if (v77)
    {
      v76 = (v46 + 24);
      swift_beginAccess();
      LOBYTE(v49) = 0;
      goto LABEL_16;
    }

    goto LABEL_23;
  }

  v70 = sub_10001E378(0, v69);
  v72 = v71;

  swift_setDeallocating();
  sub_10001E364(v68[3], v68[4], v68[5]);
  if (v72)
  {
    goto LABEL_14;
  }

  v73 = *(*(v46 + 16) + 32);
  *v6 = v73;
  v74 = v82;
  v84(v6, v83, v82);
  v75 = v73;
  LOBYTE(v73) = _dispatchPreconditionTest(_:)();
  v86(v6, v74);
  if ((v73 & 1) == 0)
  {
    goto LABEL_24;
  }

  LOBYTE(v49) = v70 > 0;
  v76 = (v46 + 24);
  swift_beginAccess();
LABEL_16:
  v80 = *(v46 + 24);
  if (v80)
  {
    sqlite3_finalize(v80);
    *v76 = 0;
  }

  return v49 & 1;
}

void *sub_100DE62C0()
{
  v1 = v0;
  v2 = sub_1005B981C(&qword_101A21C68, &qword_1014B6530);
  __chkstk_darwin(v2 - 8);
  v161 = &v141 - v3;
  v4 = type metadata accessor for CRLBoardCRDTData(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v157 = &v141 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v156 = &v141 - v8;
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = (&v141 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *(v0 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_queue);
  *v13 = v14;
  v15 = enum case for DispatchPredicate.onQueue(_:);
  v16 = *(v10 + 104);
  v164 = v10 + 104;
  v167 = v16;
  (v16)(v13, enum case for DispatchPredicate.onQueue(_:), v9, v11);
  v165 = v14;
  v17 = _dispatchPreconditionTest(_:)();
  v20 = *(v10 + 8);
  v19 = v10 + 8;
  v18 = v20;
  v20(v13, v9);
  if ((v17 & 1) == 0)
  {
    __break(1u);
LABEL_63:
    sub_100025870(v5, v9);

    sub_100025870(v5, v9);

    v138 = *(*(v19 + 16) + 32);
    *v13 = v138;
    v167(v13, v168, v4);
    v139 = v138;
    v140 = _dispatchPreconditionTest(_:)();
    result = (v162)(v13, v4);
    if (v140)
    {
      v137 = *(v19 + 24);
      if (!v137)
      {
        goto LABEL_6;
      }

LABEL_5:
      sqlite3_finalize(v137);
      *(v19 + 24) = 0;
      goto LABEL_6;
    }

LABEL_71:
    __break(1u);
    return result;
  }

  v155 = v5;
  v160 = v4;
  v168 = v15;
  v162 = v18;
  v159 = v19;
  v158 = v9;
  v169 = 0;
  v170 = 0xE000000000000000;
  _StringGuts.grow(_:)(179);
  v21._countAndFlagsBits = 0x205443454C4553;
  v21._object = 0xE700000000000000;
  String.append(_:)(v21);
  v22._countAndFlagsBits = sub_1000820E8(0x736472616F62, 0xE600000000000000);
  String.append(_:)(v22);

  v23._countAndFlagsBits = 8236;
  v23._object = 0xE200000000000000;
  String.append(_:)(v23);
  v24._countAndFlagsBits = sub_100E9B2F4(0x74695F6472616F62, 0xED0000315F736D65);
  String.append(_:)(v24);

  v25._countAndFlagsBits = 8236;
  v25._object = 0xE200000000000000;
  String.append(_:)(v25);
  v26._countAndFlagsBits = sub_100E9B2F4(0x74695F6472616F62, 0xED0000325F736D65);
  String.append(_:)(v26);

  v27._countAndFlagsBits = 0x204D4F524620;
  v27._object = 0xE600000000000000;
  String.append(_:)(v27);
  v28._countAndFlagsBits = 0x736472616F62;
  v28._object = 0xE600000000000000;
  String.append(_:)(v28);
  v29._countAndFlagsBits = 0x4A2052454E4E4920;
  v29._object = 0xEC000000204E494FLL;
  String.append(_:)(v29);
  v30._countAndFlagsBits = 0x74695F6472616F62;
  v30._object = 0xEB00000000736D65;
  String.append(_:)(v30);
  v31._object = 0x80000001015A3460;
  v31._countAndFlagsBits = 0xD000000000000021;
  String.append(_:)(v31);
  v32._countAndFlagsBits = 0x6975755F6D657469;
  v32._object = 0xE900000000000064;
  String.append(_:)(v32);
  v33._countAndFlagsBits = 2112800;
  v33._object = 0xE300000000000000;
  String.append(_:)(v33);
  v34._countAndFlagsBits = 0x736472616F62;
  v34._object = 0xE600000000000000;
  String.append(_:)(v34);
  v35._countAndFlagsBits = 46;
  v35._object = 0xE100000000000000;
  String.append(_:)(v35);
  v36._countAndFlagsBits = 0x656E6961746E6F63;
  v36._object = 0xEE00646975755F72;
  String.append(_:)(v36);
  v37._countAndFlagsBits = 0x2052454E4E492029;
  v37._object = 0xED0000204E494F4ALL;
  String.append(_:)(v37);
  v38._countAndFlagsBits = 0x74695F6472616F62;
  v38._object = 0xEB00000000736D65;
  String.append(_:)(v38);
  v39._object = 0x80000001015A3490;
  v39._countAndFlagsBits = 0xD000000000000021;
  String.append(_:)(v39);
  v40._countAndFlagsBits = 0x6975755F6D657469;
  v40._object = 0xE900000000000064;
  String.append(_:)(v40);
  v41._countAndFlagsBits = 2112800;
  v41._object = 0xE300000000000000;
  String.append(_:)(v41);
  v42._countAndFlagsBits = 0x736472616F62;
  v42._object = 0xE600000000000000;
  String.append(_:)(v42);
  v43._countAndFlagsBits = 46;
  v43._object = 0xE100000000000000;
  String.append(_:)(v43);
  v44._countAndFlagsBits = 0xD000000000000018;
  v44._object = 0x80000001015A34C0;
  String.append(_:)(v44);
  v45._countAndFlagsBits = 0x2045524548572029;
  v45._object = 0xE800000000000000;
  String.append(_:)(v45);
  v46._countAndFlagsBits = 0x736472616F62;
  v46._object = 0xE600000000000000;
  String.append(_:)(v46);
  v47._countAndFlagsBits = 46;
  v47._object = 0xE100000000000000;
  String.append(_:)(v47);
  v48._countAndFlagsBits = 1635017060;
  v48._object = 0xE400000000000000;
  String.append(_:)(v48);
  v49._countAndFlagsBits = 0xD000000000000011;
  v49._object = 0x80000001015A3B00;
  String.append(_:)(v49);
  v50._countAndFlagsBits = 0x736472616F62;
  v50._object = 0xE600000000000000;
  String.append(_:)(v50);
  v51._countAndFlagsBits = 46;
  v51._object = 0xE100000000000000;
  String.append(_:)(v51);
  v52._countAndFlagsBits = 0x6E6F7473626D6F74;
  v52._object = 0xEA00000000006465;
  String.append(_:)(v52);
  v53._countAndFlagsBits = 807419168;
  v53._object = 0xE400000000000000;
  String.append(_:)(v53);
  v54 = v169;
  v55 = v170;
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v57 = v166;
  v58 = sub_10001CC04(v56, v54, v55);
  if (v57)
  {
LABEL_6:

    if (qword_1019F2258 != -1)
    {
      swift_once();
    }

    v62 = static OS_os_log.boardStore;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C6B0;
    swift_getErrorValue();
    v64 = Error.localizedDescription.getter();
    v66 = v65;
    *(inited + 56) = &type metadata for String;
    *(inited + 64) = sub_1000053B0();
    *(inited + 32) = v64;
    *(inited + 40) = v66;
    v67 = static os_log_type_t.error.getter();
    sub_100005404(v62, &_mh_execute_header, v67, "Failed to fetch a board and its container records and CKShares with error %@", 76, 2, inited);
    swift_setDeallocating();
    sub_100005070((inited + 32));
    return swift_willThrow();
  }

  v19 = v58;

  v59 = v165;
  *v13 = v165;
  v4 = v158;
  v167(v13, v168, v158);
  v148 = v59;
  LOBYTE(v59) = _dispatchPreconditionTest(_:)();
  v60 = v162;
  v162(v13, v4);
  if ((v59 & 1) == 0)
  {
    __break(1u);
    __break(1u);
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  v61 = sub_100DE4F8C();
  v144 = v1;
  sub_100DC9150(v61);
  v70 = v69;
  v163 = 0;

  v146 = sub_10004B3DC(v70);

  v71 = *(*(v19 + 16) + 32);
  *v13 = v71;
  v72 = v167;
  v167(v13, v168, v4);
  v73 = v71;
  v74 = _dispatchPreconditionTest(_:)();
  v60(v13, v4);
  if ((v74 & 1) == 0)
  {
    goto LABEL_67;
  }

  type metadata accessor for SQLiteRowIterator();
  v75 = swift_initStackObject();
  v75[3] = 0;
  v165 = v75 + 3;
  v75[4] = 0;
  v145 = v75 + 4;
  v75[5] = 1;
  v166 = v75;
  v75[2] = v19;

  swift_beginAccess();
  v76 = *(*(v19 + 16) + 32);
  *v13 = v76;
  v72(v13, v168, v4);
  v77 = v76;
  v78 = _dispatchPreconditionTest(_:)();
  v60(v13, v4);
  if ((v78 & 1) == 0)
  {
LABEL_58:
    __break(1u);
LABEL_59:

    swift_bridgeObjectRelease_n();

    v134 = *(*(v19 + 16) + 32);
    *v13 = v134;
    v167(v13, v168, v4);
    v135 = v134;
    v136 = _dispatchPreconditionTest(_:)();
    result = (v60)(v13, v4);
    if (v136)
    {
      v137 = *(v19 + 24);
      if (!v137)
      {
        goto LABEL_6;
      }

      goto LABEL_5;
    }

    __break(1u);
    goto LABEL_71;
  }

  v147 = _swiftEmptyArrayStorage;
  v155 += 7;
  while (1)
  {
    v82 = v165;
    *v165 = 0;
    v82[1] = 0;
    v166[5] = 1;
    v83 = sqlite3_step(*(v19 + 24));
    if (v83 != 100)
    {
      break;
    }

    v84 = swift_retain_n();
    v85 = sub_1000826B0(v84, 0);
    if (!v85)
    {
      goto LABEL_32;
    }

    v86 = v85;
    v87 = (v85 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_data);
    v88 = *(v85 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_data + 8);
    if (v88 >> 60 == 15)
    {
    }

    else
    {
      v89 = *v87;
      sub_100024E84(*v87, v88);
      sub_100024E84(v89, v88);
      sub_1000066D0(&unk_101A22E10, type metadata accessor for CRLBoardCRDTData, byte_1014DD800);

      v90 = v161;
      v91 = v160;
      v92 = v163;
      CRDT.init(serializedData:)();
      if (v92)
      {

        sub_100025870(v89, v88);

        (*v155)(v90, 1, 1, v91);
        sub_10000CAAC(v90, &qword_101A21C68, &qword_1014B6530);
        v163 = 0;
      }

      else
      {
        v163 = 0;
        (*v155)(v90, 0, 1, v91);
        v154 = type metadata accessor for CRLBoardCRDTData;
        v93 = v156;
        sub_100025668(v90, v156, type metadata accessor for CRLBoardCRDTData);
        LODWORD(v153) = *(v86 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_minRequiredVersions + 32);
        v94 = *(v86 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_minRequiredVersions + 16);
        v152 = *(v86 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_minRequiredVersions);
        v151 = v94;
        v95 = v157;
        sub_10000C83C(v93, v157, type metadata accessor for CRLBoardCRDTData);
        v96 = v86 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_boardIdentifier;
        v97 = *(type metadata accessor for CRLBoardIdentifierStorage(0) + 20);
        v149 = v96;
        v98 = (v96 + v97);
        v99 = v98[1];
        v150 = *v98;
        type metadata accessor for CRLBoardData(0);
        v100 = swift_allocObject();

        sub_100025870(v89, v88);

        sub_100026028(v93, type metadata accessor for CRLBoardCRDTData);
        *(v100 + 16) = 7;
        *(v100 + 40) = v151;
        *(v100 + 24) = v152;
        *(v100 + 56) = v153;
        sub_100025668(v95, v100 + OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData, v154);
        v101 = (v100 + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName);
        *v101 = v150;
        v101[1] = v99;

        v103 = sub_100E9B7E0(v102, 19);
        if (v103)
        {
          v104 = v103;
          v105 = sub_100E929EC(v103);
          v4 = v158;
          v60 = v162;
          if (v105)
          {
            v154 = v104;
            v106 = v105;
            type metadata accessor for CRLContainerItemData(0);
            v107 = swift_dynamicCastClass();
            if (v107 && (*&v151 = v107, v153 = v106, v108 = , (v109 = sub_100E9B7E0(v108, 36)) != 0))
            {
              *&v152 = v109;
              v110 = sub_100E929EC(v109);
              if (v110)
              {
                v150 = v110;
                v111 = swift_dynamicCastClass();
                if (v111)
                {
                  v141 = v111;
                  v143 = v100;
                  v9 = *(v86 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_ckShareData + 8);
                  if (v9 >> 60 == 15)
                  {
                    v142 = 0;
                  }

                  else
                  {
                    v5 = *(v86 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_ckShareData);
                    sub_100006370(0, &qword_101A1AEB0, NSKeyedUnarchiver_ptr);
                    sub_100006370(0, &qword_1019F52C0, CKShare_ptr);
                    sub_100024E98(v5, v9);
                    sub_100024E98(v5, v9);
                    v112 = v163;
                    v113 = static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)();
                    if (v112)
                    {
                      goto LABEL_63;
                    }

                    v163 = 0;
                    if (v113)
                    {
                      v142 = v113;
                      v114 = v113;
                      sub_100CE94A4();
                      sub_100025870(v5, v9);
                    }

                    else
                    {
                      sub_100025870(v5, v9);
                      v142 = 0;
                    }

                    sub_100025870(v5, v9);
                    v60 = v162;
                  }

                  v115 = v148;
                  *v13 = v148;
                  v167(v13, v168, v4);
                  v116 = v115;

                  LOBYTE(v115) = _dispatchPreconditionTest(_:)();
                  v60(v13, v4);
                  if ((v115 & 1) == 0)
                  {
                    goto LABEL_69;
                  }

                  v117 = v163;
                  v118 = sub_100DE5990(v149);
                  v163 = v117;
                  if (v117)
                  {
                    goto LABEL_59;
                  }

                  if (v118)
                  {

                    goto LABEL_45;
                  }

                  v119 = sub_10079DDA0(v149, v146);

                  if (v119)
                  {
LABEL_45:
                    v120 = v147;
                    v121 = 1;
                    if (swift_isUniquelyReferenced_nonNull_native())
                    {
LABEL_46:
                      v147 = v120;
                      v123 = v120[2];
                      v122 = v120[3];
                      if (v123 >= v122 >> 1)
                      {
                        v147 = sub_100B38D30((v122 > 1), v123 + 1, 1, v147);
                      }

                      v124 = v147;
                      v147[2] = v123 + 1;
                      v125 = &v124[5 * v123];
                      v126 = v151;
                      v125[4] = v143;
                      v125[5] = v126;
                      v127 = v142;
                      v125[6] = v141;
                      v125[7] = v127;
                      *(v125 + 64) = v121;
                      goto LABEL_13;
                    }
                  }

                  else
                  {
                    v120 = v147;
                    v121 = 0;
                    if (swift_isUniquelyReferenced_nonNull_native())
                    {
                      goto LABEL_46;
                    }
                  }

                  v120 = sub_100B38D30(0, v120[2] + 1, 1, v120);
                  goto LABEL_46;
                }
              }

              else
              {
              }
            }

            else
            {
            }
          }

          else
          {
          }

LABEL_32:

          goto LABEL_13;
        }

        v4 = v158;
      }

      v60 = v162;
    }

LABEL_13:
    v79 = *(*(v19 + 16) + 32);
    *v13 = v79;
    v72 = v167;
    v167(v13, v168, v4);
    v80 = v79;
    v81 = _dispatchPreconditionTest(_:)();
    v60(v13, v4);
    if ((v81 & 1) == 0)
    {
      goto LABEL_58;
    }
  }

  v128 = v83;

  if (v128 && v128 != 101)
  {
    *v165 = v128;
    v129 = v145;
    *v145 = 0;
    v129[1] = 0;
  }

  v130 = *(*(v19 + 16) + 32);
  *v13 = v130;
  v72(v13, v168, v4);
  v131 = v130;
  v132 = _dispatchPreconditionTest(_:)();
  v60(v13, v4);
  if ((v132 & 1) == 0)
  {
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
  }

  v133 = *(v19 + 24);
  if (v133)
  {
    sqlite3_finalize(v133);
    *(v19 + 24) = 0;
  }

  return v147;
}

void sub_100DE778C(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  v4 = v2;
  v7 = sub_1005B981C(&qword_101A21C68, &qword_1014B6530);
  __chkstk_darwin(v7 - 8);
  v183 = v171 - v8;
  v182 = type metadata accessor for CRLBoardCRDTData(0);
  *&v181 = *(v182 - 1);
  __chkstk_darwin(v182);
  v180 = v171 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v179 = (v171 - v11);
  v12 = type metadata accessor for DispatchPredicate();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = (v171 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = *(v4 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_queue);
  *v16 = v17;
  v18 = enum case for DispatchPredicate.onQueue(_:);
  v19 = *(v13 + 104);
  v190 = v13 + 104;
  v188 = v19;
  (v19)(v16, enum case for DispatchPredicate.onQueue(_:), v12, v14);
  v185 = v17;
  LOBYTE(v17) = _dispatchPreconditionTest(_:)();
  v21 = *(v13 + 8);
  v20 = v13 + 8;
  v189 = v21;
  v21(v16, v12);
  if ((v17 & 1) == 0)
  {
    __break(1u);
    goto LABEL_45;
  }

  v191 = v18;
  v186 = v12;
  v187 = v20;
  v184 = a2;
  v193 = 0;
  v194 = 0xE000000000000000;
  _StringGuts.grow(_:)(195);
  v22._countAndFlagsBits = 0x205443454C4553;
  v22._object = 0xE700000000000000;
  String.append(_:)(v22);
  v23._countAndFlagsBits = sub_1000820E8(0x736472616F62, 0xE600000000000000);
  String.append(_:)(v23);

  v24._countAndFlagsBits = 8236;
  v24._object = 0xE200000000000000;
  String.append(_:)(v24);
  v25._countAndFlagsBits = sub_100E9B2F4(0x74695F6472616F62, 0xED0000315F736D65);
  String.append(_:)(v25);

  v26._countAndFlagsBits = 8236;
  v26._object = 0xE200000000000000;
  String.append(_:)(v26);
  v27._countAndFlagsBits = sub_100E9B2F4(0x74695F6472616F62, 0xED0000325F736D65);
  String.append(_:)(v27);

  v28._countAndFlagsBits = 0x204D4F524620;
  v28._object = 0xE600000000000000;
  String.append(_:)(v28);
  v29._countAndFlagsBits = 0x736472616F62;
  v29._object = 0xE600000000000000;
  String.append(_:)(v29);
  v30._countAndFlagsBits = 0x4A2052454E4E4920;
  v30._object = 0xEC000000204E494FLL;
  String.append(_:)(v30);
  v31._countAndFlagsBits = 0x74695F6472616F62;
  v31._object = 0xEB00000000736D65;
  String.append(_:)(v31);
  v32._countAndFlagsBits = 0xD000000000000021;
  v32._object = 0x80000001015A3460;
  String.append(_:)(v32);
  v192 = v4;
  v33._countAndFlagsBits = 0x6975755F6D657469;
  v33._object = 0xE900000000000064;
  String.append(_:)(v33);
  v34._countAndFlagsBits = 2112800;
  v34._object = 0xE300000000000000;
  String.append(_:)(v34);
  v35._countAndFlagsBits = 0x736472616F62;
  v35._object = 0xE600000000000000;
  String.append(_:)(v35);
  v36._countAndFlagsBits = 46;
  v36._object = 0xE100000000000000;
  String.append(_:)(v36);
  v37._countAndFlagsBits = 0x656E6961746E6F63;
  v37._object = 0xEE00646975755F72;
  String.append(_:)(v37);
  v38._countAndFlagsBits = 0x2052454E4E492029;
  v38._object = 0xED0000204E494F4ALL;
  String.append(_:)(v38);
  v39._countAndFlagsBits = 0x74695F6472616F62;
  v39._object = 0xEB00000000736D65;
  String.append(_:)(v39);
  v40._countAndFlagsBits = 0xD000000000000021;
  v40._object = 0x80000001015A3490;
  String.append(_:)(v40);
  v41._countAndFlagsBits = 0x6975755F6D657469;
  v41._object = 0xE900000000000064;
  String.append(_:)(v41);
  v42._countAndFlagsBits = 2112800;
  v42._object = 0xE300000000000000;
  String.append(_:)(v42);
  v43._countAndFlagsBits = 0x736472616F62;
  v43._object = 0xE600000000000000;
  String.append(_:)(v43);
  v44._countAndFlagsBits = 46;
  v44._object = 0xE100000000000000;
  String.append(_:)(v44);
  v45._countAndFlagsBits = 0xD000000000000018;
  v45._object = 0x80000001015A34C0;
  String.append(_:)(v45);
  v46._object = 0x80000001015A34E0;
  v46._countAndFlagsBits = 0xD000000000000017;
  String.append(_:)(v46);
  v47._countAndFlagsBits = 0xD000000000000010;
  v47._object = 0x8000000101585360;
  String.append(_:)(v47);
  v48._object = 0x80000001015A3500;
  v48._countAndFlagsBits = 0xD000000000000017;
  String.append(_:)(v48);
  v49._countAndFlagsBits = 0x6E6F7473626D6F74;
  v49._object = 0xEA00000000006465;
  String.append(_:)(v49);
  v50._countAndFlagsBits = 0x2930203D20;
  v50._object = 0xE500000000000000;
  String.append(_:)(v50);
  v51 = v193;
  v52 = v194;
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v54 = sub_10001CC04(v53, v51, v52);
  if (v3)
  {
LABEL_9:

    if (qword_1019F2258 == -1)
    {
LABEL_10:
      v78 = static OS_os_log.boardStore;
      sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146C6B0;
      swift_getErrorValue();
      v80 = Error.localizedDescription.getter();
      v82 = v81;
      *(inited + 56) = &type metadata for String;
      *(inited + 64) = sub_1000053B0();
      *(inited + 32) = v80;
      *(inited + 40) = v82;
      v83 = static os_log_type_t.error.getter();
      sub_100005404(v78, &_mh_execute_header, v83, "Failed to fetch a board and its container records and CKShare with error %@", 75, 2, inited);
      swift_setDeallocating();
      sub_100005070((inited + 32));
      swift_willThrow();
      return;
    }

LABEL_45:
    swift_once();
    goto LABEL_10;
  }

  v55 = v54;

  v56 = type metadata accessor for CRLBoardIdentifierStorage(0);
  v57 = sub_10084DAE4(a1, *(a1 + *(v56 + 20)), *(a1 + *(v56 + 20) + 8));
  v176 = v56;
  v177 = 0;
  v59 = v58;
  v60 = v57;
  v61 = *(*(v55 + 16) + 32);
  *v16 = v61;
  v62 = v186;
  v63 = v188;
  v188(v16, v191, v186);
  v64 = v61;
  v65 = _dispatchPreconditionTest(_:)();
  v66 = v189;
  v67 = v189(v16, v62);
  if ((v65 & 1) == 0)
  {
    __break(1u);
    goto LABEL_54;
  }

  v178 = v55;
  v68 = v177;
  sub_100DCCAB4(v60, v59, v55, 1);
  v65 = v68;
  sub_10002640C(v60, v59);
  v69 = v185;
  *v16 = v185;
  v63(v16, v191, v62);
  v70 = v69;
  LOBYTE(v69) = _dispatchPreconditionTest(_:)();
  v185 = v16;
  v59 = v62;
  v67 = v66(v16, v62);
  if ((v69 & 1) == 0)
  {
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v71 = v63;
  v72 = sub_100DE4F8C();
  v63 = v68;
  if (v68)
  {
    v73 = v178;
    v74 = *(*(v178 + 16) + 32);
    v75 = v185;
    *v185 = v74;
    v71(v75, v191, v59);
    v76 = v74;
    v65 = _dispatchPreconditionTest(_:)();
    v67 = v189(v75, v59);
    if (v65)
    {
      swift_beginAccess();
      v77 = *(v73 + 24);
      if (v77)
      {
        sqlite3_finalize(v77);
        *(v73 + 24) = 0;
      }

      goto LABEL_9;
    }

    goto LABEL_55;
  }

  v175 = v70;
  sub_100DC9150(v72);
  v85 = v84;
  v63 = 0;

  v177 = sub_10004B3DC(v85);

  v86 = v178;
  v87 = *(*(v178 + 16) + 32);
  v88 = v185;
  *v185 = v87;
  v71(v88, v191, v59);
  v89 = v87;
  LOBYTE(v87) = _dispatchPreconditionTest(_:)();
  v189(v88, v59);
  if ((v87 & 1) == 0)
  {
    __break(1u);
    goto LABEL_73;
  }

  type metadata accessor for SQLiteRowIterator();
  v90 = swift_initStackObject();
  v90[4] = 0;
  v90[5] = 1;
  v90[2] = v86;
  v90[3] = 0;

  v91 = sub_10001E1D0();
  if (!v91)
  {

    swift_setDeallocating();
    sub_10001E364(v90[3], v90[4], v90[5]);
    v98 = *(*(v86 + 16) + 32);
    v99 = v185;
    *v185 = v98;
    v71(v99, v191, v59);
    v100 = v98;
    LOBYTE(v98) = _dispatchPreconditionTest(_:)();
    v189(v99, v59);
    if (v98)
    {
      goto LABEL_22;
    }

    __break(1u);
    goto LABEL_18;
  }

  v92 = v91;

  v94 = sub_1000826B0(v93, 0);
  if (!v94)
  {
LABEL_18:
    v86 = v178;

    swift_setDeallocating();
    sub_10001E364(v90[3], v90[4], v90[5]);
    v101 = *(*(v86 + 16) + 32);
    v97 = v185;
    *v185 = v101;
    v71(v97, v191, v59);
    v102 = v101;
    v96 = _dispatchPreconditionTest(_:)();
    v189(v97, v59);
    if (v96)
    {
      goto LABEL_22;
    }

    __break(1u);
    goto LABEL_20;
  }

  v174 = v92;
  v173 = v90;
  v95 = (v94 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_data);
  v96 = *(v94 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_data + 8);
  v97 = v94;
  if (v96 >> 60 == 15)
  {
    v86 = v178;

    v106 = v173;
    swift_setDeallocating();
    sub_10001E364(v106[3], v106[4], v106[5]);
    v107 = *(*(v86 + 16) + 32);
    v108 = v185;
    *v185 = v107;
    v71(v108, v191, v59);
    v109 = v107;
    LOBYTE(v107) = _dispatchPreconditionTest(_:)();
    v189(v108, v59);
    if (v107)
    {
LABEL_22:
      swift_beginAccess();
      v110 = *(v86 + 24);
      if (v110)
      {
        sqlite3_finalize(v110);
        *(v86 + 24) = 0;
      }

LABEL_24:

      v59 = 0;
      v111 = 0;
      v65 = 0;
      v112 = 0;
      v113 = 0;
      goto LABEL_25;
    }

LABEL_73:
    __break(1u);
  }

LABEL_20:
  v103 = *v95;
  sub_100024E84(*v95, v96);
  sub_100024E84(v103, v96);
  sub_1000066D0(&unk_101A22E10, type metadata accessor for CRLBoardCRDTData, byte_1014DD800);

  v104 = v183;
  v105 = v182;
  CRDT.init(serializedData:)();
  (*(v181 + 56))(v104, 0, 1, v105);
  v182 = type metadata accessor for CRLBoardCRDTData;
  v115 = v179;
  sub_100025668(v104, v179, type metadata accessor for CRLBoardCRDTData);
  LODWORD(v183) = v97[OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_minRequiredVersions + 32];
  v116 = *&v97[OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_minRequiredVersions + 16];
  v181 = *&v97[OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_minRequiredVersions];
  v172 = v116;
  v117 = v97;
  v118 = v180;
  sub_10000C83C(v115, v180, type metadata accessor for CRLBoardCRDTData);
  v119 = &v117[OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_boardIdentifier];
  v120 = &v117[OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_boardIdentifier + *(v176 + 20)];
  v121 = v120[1];
  v176 = *v120;
  type metadata accessor for CRLBoardData(0);
  v59 = swift_allocObject();

  sub_100025870(v103, v96);

  sub_100026028(v115, type metadata accessor for CRLBoardCRDTData);
  *(v59 + 16) = 7;
  *(v59 + 40) = v172;
  *(v59 + 24) = v181;
  *(v59 + 56) = v183;
  sub_100025668(v118, v59 + OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData, v182);
  v122 = (v59 + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName);
  *v122 = v176;
  v122[1] = v121;

  v124 = sub_100E9B7E0(v123, 19);
  if (!v124)
  {
    v136 = v178;

    v137 = v173;
    swift_setDeallocating();
    sub_10001E364(v137[3], v137[4], v137[5]);
    v138 = *(*(v136 + 16) + 32);
    v139 = v185;
    *v185 = v138;
    v140 = v186;
    v188(v139, v191, v186);
    v141 = v138;
    LOBYTE(v138) = _dispatchPreconditionTest(_:)();
    v189(v139, v140);
    if (v138)
    {
      swift_beginAccess();
      v142 = *(v136 + 24);
      if (v142)
      {
        sqlite3_finalize(v142);
        *(v136 + 24) = 0;
      }

      goto LABEL_24;
    }

    goto LABEL_75;
  }

  v183 = v117;
  v125 = sub_100E929EC(v124);
  v126 = v186;
  v127 = v178;
  v128 = v185;
  if (!v125)
  {
LABEL_40:

    v143 = *(*(v127 + 16) + 32);
    *v128 = v143;
    v188(v128, v191, v126);
    v144 = v143;
    LOBYTE(v143) = _dispatchPreconditionTest(_:)();
    v189(v128, v126);
    if (v143)
    {
      goto LABEL_41;
    }

    __break(1u);
LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

  *&v181 = v119;
  v129 = v125;
  type metadata accessor for CRLContainerItemData(0);
  v130 = swift_dynamicCastClass();
  if (!v130)
  {

    goto LABEL_40;
  }

  v182 = v129;
  v180 = v130;

  v132 = sub_100E9B7E0(v131, 36);
  if (v132)
  {
    v133 = sub_100E929EC(v132);
    if (v133)
    {
      v179 = v133;
      v134 = swift_dynamicCastClass();
      if (v134)
      {
        v65 = v134;
        v135 = &v183[OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_ckShareData];
        v127 = *&v183[OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_ckShareData + 8];
        if (v127 >> 60 == 15)
        {
          v112 = 0;
          goto LABEL_59;
        }

        goto LABEL_52;
      }
    }
  }

  else
  {

    v146 = v173;
    swift_setDeallocating();
    sub_10001E364(v146[3], v146[4], v146[5]);
    v147 = *(*(v127 + 16) + 32);
    *v128 = v147;
    v188(v128, v191, v126);
    v148 = v147;
    LOBYTE(v147) = _dispatchPreconditionTest(_:)();
    v189(v128, v126);
    if (v147)
    {
      goto LABEL_41;
    }

    __break(1u);
  }

  v149 = v173;
  swift_setDeallocating();
  sub_10001E364(v149[3], v149[4], v149[5]);
  v150 = *(*(v127 + 16) + 32);
  *v128 = v150;
  v188(v128, v191, v126);
  v151 = v150;
  v65 = _dispatchPreconditionTest(_:)();
  v189(v128, v126);
  if (v65)
  {
LABEL_41:
    swift_beginAccess();
    v145 = *(v127 + 24);
    if (v145)
    {
      sqlite3_finalize(v145);
      *(v127 + 24) = 0;
    }

    goto LABEL_24;
  }

  __break(1u);
  __break(1u);
LABEL_52:
  v152 = *v135;
  v171[1] = sub_100006370(0, &qword_101A1AEB0, NSKeyedUnarchiver_ptr);
  sub_100006370(0, &qword_1019F52C0, CKShare_ptr);
  sub_100024E98(v152, v127);
  *&v172 = v152;
  v176 = v127;
  v67 = static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)();
LABEL_56:
  v112 = v67;
  if (v67)
  {
    v153 = v67;
    sub_100CE94A4();
  }

  sub_100025870(v172, v176);
  v126 = v186;
  v128 = v185;
LABEL_59:
  v154 = v175;
  *v128 = v175;
  v188(v128, v191, v126);
  v155 = v154;
  LOBYTE(v154) = _dispatchPreconditionTest(_:)();
  v189(v128, v126);
  if (v154)
  {
    v156 = sub_100DE5990(v181);
    if (v63)
    {
      v157 = v178;

      v158 = v173;
      swift_setDeallocating();
      sub_10001E364(v158[3], v158[4], v158[5]);
      v159 = *(*(v157 + 16) + 32);
      *v128 = v159;
      v188(v128, v191, v126);
      v160 = v159;
      LOBYTE(v159) = _dispatchPreconditionTest(_:)();
      v189(v128, v126);
      if (v159)
      {
        swift_beginAccess();
        v161 = *(v157 + 24);
        if (v161)
        {
          sqlite3_finalize(v161);
          *(v157 + 24) = 0;
        }

        goto LABEL_9;
      }

      goto LABEL_77;
    }

    if (v156)
    {
      v162 = 1;
    }

    else
    {
      v162 = sub_10079DDA0(v181, v177);
    }

    v163 = v178;

    v164 = v173;
    swift_setDeallocating();
    sub_10001E364(v164[3], v164[4], v164[5]);
    v165 = *(*(v163 + 16) + 32);
    v166 = v185;
    *v185 = v165;
    v167 = v186;
    v188(v166, v191, v186);
    v168 = v165;
    LOBYTE(v164) = _dispatchPreconditionTest(_:)();
    v189(v166, v167);
    if ((v164 & 1) == 0)
    {
      goto LABEL_78;
    }

    v169 = v178;
    swift_beginAccess();
    v170 = *(v169 + 24);
    if (v170)
    {
      sqlite3_finalize(v170);
      *(v169 + 24) = 0;
    }

    v113 = v162 & 1;
    v111 = v180;
LABEL_25:
    v114 = v184;
    *v184 = v59;
    v114[1] = v111;
    v114[2] = v65;
    v114[3] = v112;
    *(v114 + 32) = v113;
    return;
  }

LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
  __break(1u);
LABEL_78:
  __break(1u);
}

uint64_t sub_100DE90F4()
{
  v97 = type metadata accessor for UUID();
  v88 = *(v97 - 8);
  __chkstk_darwin(v97);
  v3 = &v85 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = type metadata accessor for CRLBoardIdentifierStorage(0);
  __chkstk_darwin(v96);
  v95 = &v85 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v94 = &v85 - v6;
  v7 = type metadata accessor for CRLBoardIdentifier(0);
  __chkstk_darwin(v7 - 8);
  v93 = &v85 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v92 = &v85 - v10;
  __chkstk_darwin(v11);
  v91 = &v85 - v12;
  __chkstk_darwin(v13);
  v90 = &v85 - v14;
  __chkstk_darwin(v15);
  v89 = &v85 - v16;
  v17 = type metadata accessor for DispatchPredicate();
  v18 = *(v17 - 8);
  v19 = __chkstk_darwin(v17);
  v21 = (&v85 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = *(v0 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_queue);
  *v21 = v22;
  v24 = v18 + 104;
  v23 = *(v18 + 104);
  v100 = enum case for DispatchPredicate.onQueue(_:);
  v101 = v23;
  v23(v21, v19);
  v25 = v22;
  LOBYTE(v22) = _dispatchPreconditionTest(_:)();
  v28 = *(v18 + 8);
  v26 = v18 + 8;
  v27 = v28;
  v28(v21, v17);
  if ((v22 & 1) == 0)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v105 = v27;
  v99 = v3;
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v30 = sub_10001CC04(v29, 0xD000000000000023, 0x80000001015A99A0);
  v104 = v1;
  if (v1)
  {

    if (qword_1019F2258 == -1)
    {
LABEL_4:
      v31 = static OS_os_log.boardStore;
      sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146C6B0;
      v33 = v104;
      swift_getErrorValue();
      v34 = Error.localizedDescription.getter();
      v36 = v35;
      *(inited + 56) = &type metadata for String;
      *(inited + 64) = sub_1000053B0();
      *(inited + 32) = v34;
      *(inited + 40) = v36;
      v37 = static os_log_type_t.error.getter();
      sub_100005404(v31, &_mh_execute_header, v37, "Failed to fetch all board identifiers with error %@", 51, 2, inited);
      swift_setDeallocating();
      sub_100005070((inited + 32));
      swift_willThrow();
      v104 = v33;
      return v31;
    }

LABEL_32:
    swift_once();
    goto LABEL_4;
  }

  v38 = v30;

  v106 = _swiftEmptySetSingleton;
  v39 = *(*(v38 + 16) + 32);
  *v21 = v39;
  v40 = v100;
  v41 = v101;
  v101(v21, v100, v17);
  v42 = v39;
  LOBYTE(v39) = _dispatchPreconditionTest(_:)();
  v43 = v105;
  v105(v21, v17);
  if ((v39 & 1) == 0)
  {
    __break(1u);
    goto LABEL_34;
  }

  type metadata accessor for SQLiteRowIterator();
  v44 = swift_initStackObject();
  v44[3] = 0;
  v102 = v44 + 3;
  v44[4] = 0;
  v86 = v44 + 4;
  v44[5] = 1;
  v103 = v44;
  v44[2] = v38;

  swift_beginAccess();
  v45 = *(*(v38 + 16) + 32);
  *v21 = v45;
  v41(v21, v40, v17);
  v46 = v45;
  LOBYTE(v45) = _dispatchPreconditionTest(_:)();
  v43(v21, v17);
  if ((v45 & 1) == 0)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v88 += 4;
  v98 = v26;
  v87 = v24;
  while (1)
  {
    v61 = v102;
    *v102 = 0;
    v61[1] = 0;
    v103[5] = 1;
    v62 = sqlite3_step(*(v38 + 24));
    if (v62 != 100)
    {
      break;
    }

    v63 = *(*(v38 + 16) + 32);
    *v21 = v63;
    v41(v21, v40, v17);

    v64 = v63;
    LOBYTE(v63) = _dispatchPreconditionTest(_:)();
    v65 = v105;
    v105(v21, v17);
    if ((v63 & 1) == 0)
    {
      goto LABEL_29;
    }

    v66 = *(*(v38 + 16) + 32);
    *v21 = v66;
    v41(v21, v40, v17);
    v67 = v66;
    LOBYTE(v66) = _dispatchPreconditionTest(_:)();
    v65(v21, v17);
    if ((v66 & 1) == 0)
    {
      goto LABEL_30;
    }

    if (sqlite3_column_type(*(v38 + 24), 0) == 5)
    {
      goto LABEL_17;
    }

    v68 = sqlite3_column_blob(*(v38 + 24), 0);
    if (!v68)
    {
      goto LABEL_17;
    }

    v69 = v68;
    v70 = sqlite3_column_bytes(*(v38 + 24), 0);
    v71 = sub_100024DD4(v69, v70);
    v73 = v72;
    sub_100024E98(v71, v72);
    v74 = v99;
    v75 = v104;
    sub_100024EEC(v99, v71, v73);
    if (v75)
    {

      sub_10002640C(v71, v73);
      sub_10002640C(v71, v73);
      v104 = 0;
      v40 = v100;
      v41 = v101;
LABEL_17:
      if (qword_1019F2258 != -1)
      {
        swift_once();
      }

      v78 = static OS_os_log.boardStore;
      v79 = static os_log_type_t.error.getter();
      sub_100005404(v78, &_mh_execute_header, v79, "Failure reading board identifier data.", 38, 2, _swiftEmptyArrayStorage);

      goto LABEL_9;
    }

    v47 = v76;
    v48 = v77;
    v104 = 0;
    sub_10002640C(v71, v73);
    v49 = v95;
    (*v88)(v95, v74, v97);
    v50 = &v49[*(v96 + 20)];
    *v50 = v47;
    *(v50 + 1) = v48;
    v51 = v49;
    v52 = v94;
    sub_100025668(v51, v94, type metadata accessor for CRLBoardIdentifierStorage);
    v53 = v91;
    sub_100025668(v52, v91, type metadata accessor for CRLBoardIdentifierStorage);
    v54 = v53;
    v55 = v90;
    sub_100025668(v54, v90, type metadata accessor for CRLBoardIdentifier);
    v56 = v89;
    sub_100025668(v55, v89, type metadata accessor for CRLBoardIdentifier);
    v57 = v93;
    sub_10000C83C(v56, v93, type metadata accessor for CRLBoardIdentifier);
    v58 = v92;
    sub_100031F10(v92, v57);

    sub_10002640C(v71, v73);
    sub_100026028(v58, type metadata accessor for CRLBoardIdentifier);
    sub_100026028(v56, type metadata accessor for CRLBoardIdentifier);
    v40 = v100;
    v41 = v101;
LABEL_9:
    v59 = *(*(v38 + 16) + 32);
    *v21 = v59;
    v41(v21, v40, v17);
    v60 = v59;
    LOBYTE(v59) = _dispatchPreconditionTest(_:)();
    v105(v21, v17);
    if ((v59 & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  if (v62 && v62 != 101)
  {
    *v102 = v62;
    v80 = v86;
    *v86 = 0;
    v80[1] = 0;
  }

  v31 = v106;
  v81 = *(*(v38 + 16) + 32);
  *v21 = v81;
  v101(v21, v40, v17);
  v82 = v81;
  LOBYTE(v81) = _dispatchPreconditionTest(_:)();
  v105(v21, v17);
  if ((v81 & 1) == 0)
  {
LABEL_34:
    __break(1u);
  }

  v83 = *(v38 + 24);
  if (v83)
  {
    sqlite3_finalize(v83);
    *(v38 + 24) = 0;
  }

  return v31;
}

__n128 sub_100DE9BC0@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = (&v108 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(v2 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_queue);
  *v9 = v10;
  v11 = *(v6 + 104);
  v119 = enum case for DispatchPredicate.onQueue(_:);
  v117 = v6 + 104;
  v11(v9, v7);
  v12 = v10;
  LOBYTE(v10) = _dispatchPreconditionTest(_:)();
  v14 = *(v6 + 8);
  v13 = v6 + 8;
  v121 = v5;
  v115 = v14;
  v14(v9, v5);
  if ((v10 & 1) == 0)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v116 = a1;
  v120 = v11;
  v114 = v13;
  v112 = a2;
  *&v128 = 0;
  *(&v128 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(80);
  v15._countAndFlagsBits = 0x205443454C4553;
  v15._object = 0xE700000000000000;
  String.append(_:)(v15);
  v16._countAndFlagsBits = 0x6D5F736472616F62;
  v16._object = 0xEF61746164617465;
  String.append(_:)(v16);
  v17._countAndFlagsBits = 46;
  v17._object = 0xE100000000000000;
  String.append(_:)(v17);
  v18._countAndFlagsBits = 0x6174735F77656976;
  v18._object = 0xEF617461645F6574;
  String.append(_:)(v18);
  v19._countAndFlagsBits = 0x204D4F524620;
  v19._object = 0xE600000000000000;
  String.append(_:)(v19);
  v20._countAndFlagsBits = 0x6D5F736472616F62;
  v20._object = 0xEF61746164617465;
  String.append(_:)(v20);
  v21._countAndFlagsBits = 0x4A2052454E4E4920;
  v21._object = 0xEC000000204E494FLL;
  String.append(_:)(v21);
  v22._countAndFlagsBits = 0x736472616F62;
  v22._object = 0xE600000000000000;
  String.append(_:)(v22);
  v23._countAndFlagsBits = 542002976;
  v23._object = 0xE400000000000000;
  String.append(_:)(v23);
  v24._countAndFlagsBits = 0x736472616F62;
  v24._object = 0xE600000000000000;
  String.append(_:)(v24);
  v25._countAndFlagsBits = 46;
  v25._object = 0xE100000000000000;
  String.append(_:)(v25);
  v26._object = 0x8000000101585360;
  v26._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v26);
  v27._countAndFlagsBits = 2112800;
  v27._object = 0xE300000000000000;
  String.append(_:)(v27);
  v28._countAndFlagsBits = 0x6D5F736472616F62;
  v28._object = 0xEF61746164617465;
  String.append(_:)(v28);
  v29._countAndFlagsBits = 46;
  v29._object = 0xE100000000000000;
  String.append(_:)(v29);
  v30._object = 0x8000000101585360;
  v30._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v30);
  v31._countAndFlagsBits = 0x2820455245485720;
  v31._object = 0xE800000000000000;
  String.append(_:)(v31);
  v32._countAndFlagsBits = 0x6E6F7473626D6F74;
  v32._object = 0xEA00000000006465;
  String.append(_:)(v32);
  v33._countAndFlagsBits = 0x444E412030203D20;
  v33._object = 0xE900000000000020;
  String.append(_:)(v33);
  v34._countAndFlagsBits = 0x6D5F736472616F62;
  v34._object = 0xEF61746164617465;
  String.append(_:)(v34);
  v35._countAndFlagsBits = 46;
  v35._object = 0xE100000000000000;
  String.append(_:)(v35);
  v36._object = 0x8000000101585360;
  v36._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v36);
  v37._countAndFlagsBits = 0x293F203D20;
  v37._object = 0xE500000000000000;
  String.append(_:)(v37);
  v38 = v128;
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v40 = v118;
  v41 = sub_10001CC04(v39, v38, *(&v38 + 1));
  if (v40)
  {

    if (qword_1019F2258 == -1)
    {
LABEL_5:
      v46 = static OS_os_log.boardStore;
      sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146C6B0;
      swift_getErrorValue();
      v48 = Error.localizedDescription.getter();
      v50 = v49;
      *(inited + 56) = &type metadata for String;
      *(inited + 64) = sub_1000053B0();
      *(inited + 32) = v48;
      *(inited + 40) = v50;
      v51 = static os_log_type_t.error.getter();
      sub_100005404(v46, &_mh_execute_header, v51, "Failed to fetch view state with error %@", 40, 2, inited);
      swift_setDeallocating();
      sub_100005070((inited + 32));
      swift_willThrow();
      return result;
    }

LABEL_34:
    swift_once();
    goto LABEL_5;
  }

  v42 = v41;

  v43 = type metadata accessor for CRLBoardIdentifierStorage(0);
  v44 = sub_10084DAE4(v116, *(v116 + *(v43 + 20)), *(v116 + *(v43 + 20) + 8));
  v113 = 0;
  v118 = v45;
  v53 = v44;
  v54 = *(*(v42 + 16) + 32);
  *v9 = v54;
  v55 = v119;
  v56 = v121;
  v120(v9, v119, v121);
  v57 = v54;
  LOBYTE(v54) = _dispatchPreconditionTest(_:)();
  v58 = v115;
  v115(v9, v56);
  if ((v54 & 1) == 0)
  {
    __break(1u);
    goto LABEL_36;
  }

  v59 = v53;
  v60 = v53;
  v61 = v118;
  v62 = v113;
  sub_100DCCAB4(v60, v118, v42, 1);
  v113 = v62;
  sub_10002640C(v59, v61);
  v63 = *(*(v42 + 16) + 32);
  *v9 = v63;
  v64 = v121;
  v120(v9, v55, v121);
  v65 = v63;
  LOBYTE(v63) = _dispatchPreconditionTest(_:)();
  v58(v9, v64);
  if ((v63 & 1) == 0)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  type metadata accessor for SQLiteRowIterator();
  v66 = swift_initStackObject();
  v66[3] = 0;
  v116 = v66 + 3;
  v66[4] = 0;
  v109 = v66 + 4;
  v66[5] = 1;
  v118 = v66;
  v66[2] = v42;

  swift_beginAccess();
  v130 = 0u;
  memset(v131, 0, 24);
  v128 = 0u;
  v129 = 0u;
  BYTE8(v131[1]) = 2;
  v67 = *(*(v42 + 16) + 32);
  *v9 = v67;
  v68 = v121;
  v120(v9, v55, v121);
  v69 = v67;
  LOBYTE(v67) = _dispatchPreconditionTest(_:)();
  v58(v9, v68);
  if ((v67 & 1) == 0)
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v110 = xmmword_10146C6B0;
  while (1)
  {
    v73 = v116;
    *v116 = 0;
    v73[1] = 0;
    v118[5] = 1;
    v74 = sqlite3_step(*(v42 + 24));
    if (v74 != 100)
    {
      break;
    }

    v75 = *(*(v42 + 16) + 32);
    *v9 = v75;
    v76 = v55;
    v78 = v120;
    v77 = v121;
    v120(v9, v76, v121);

    v79 = v75;
    LOBYTE(v75) = _dispatchPreconditionTest(_:)();
    v58(v9, v77);
    if ((v75 & 1) == 0)
    {
      goto LABEL_31;
    }

    v80 = *(*(v42 + 16) + 32);
    *v9 = v80;
    v78(v9, v119, v77);
    v81 = v80;
    LOBYTE(v80) = _dispatchPreconditionTest(_:)();
    v58(v9, v77);
    if ((v80 & 1) == 0)
    {
      goto LABEL_32;
    }

    if (sqlite3_column_type(*(v42 + 24), 0) == 5 || (v82 = sqlite3_column_blob(*(v42 + 24), 0)) == 0)
    {

      v55 = v119;
    }

    else
    {
      v83 = v82;
      v84 = sqlite3_column_bytes(*(v42 + 24), 0);
      v85 = sub_100024DD4(v83, v84);
      v87 = v86;
      type metadata accessor for JSONDecoder();
      swift_allocObject();
      JSONDecoder.init()();
      sub_100EA559C();
      v88 = v113;
      dispatch thunk of JSONDecoder.decode<A>(_:from:)();
      if (v88)
      {
        v111 = v85;
        v113 = v87;

        if (qword_1019F2098 != -1)
        {
          swift_once();
        }

        v89 = static OS_os_log.crlDefault;
        sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
        v90 = swift_initStackObject();
        *(v90 + 16) = v110;
        *&v122 = v88;
        swift_errorRetain();
        sub_1005B981C(&unk_1019F6B40, &qword_10146F320);
        v91 = String.init<A>(describing:)();
        v93 = v92;
        *(v90 + 56) = &type metadata for String;
        *(v90 + 64) = sub_1000053B0();
        *(v90 + 32) = v91;
        *(v90 + 40) = v93;
        v94 = static os_log_type_t.error.getter();
        v95 = 2;
        sub_100005404(v89, &_mh_execute_header, v94, "Error unarchiving view state: %@", 32, 2, v90);

        sub_10000CAAC(&v128, &qword_1019FE618, &qword_1014B6B70);
        sub_10002640C(v111, v113);

        swift_setDeallocating();
        sub_100005070((v90 + 32));
        v96 = 0;
        v113 = 0;
        v97 = 0uLL;
        v98 = 0uLL;
        v99 = 0uLL;
        v100 = 0uLL;
        v58 = v115;
        v55 = v119;
      }

      else
      {
        v113 = 0;
        sub_10000CAAC(&v128, &qword_1019FE618, &qword_1014B6B70);
        sub_10002640C(v85, v87);

        v97 = v122;
        v98 = v123;
        v99 = v124;
        v100 = v125;
        v96 = v126;
        v95 = v127;
        v55 = v119;
      }

      v128 = v97;
      v129 = v98;
      v130 = v99;
      v131[0] = v100;
      *&v131[1] = v96;
      BYTE8(v131[1]) = v95;
    }

    v70 = *(*(v42 + 16) + 32);
    *v9 = v70;
    v71 = v121;
    v120(v9, v55, v121);
    v72 = v70;
    LOBYTE(v70) = _dispatchPreconditionTest(_:)();
    v58(v9, v71);
    if ((v70 & 1) == 0)
    {
      goto LABEL_30;
    }
  }

  if (v74 && v74 != 101)
  {
    *v116 = v74;
    v101 = v109;
    *v109 = 0;
    v101[1] = 0;
  }

  v102 = *(*(v42 + 16) + 32);
  *v9 = v102;
  v103 = v121;
  v120(v9, v55, v121);
  v104 = v102;
  LOBYTE(v102) = _dispatchPreconditionTest(_:)();
  v58(v9, v103);
  if ((v102 & 1) == 0)
  {
LABEL_37:
    __break(1u);
  }

  v105 = *(v42 + 24);
  if (v105)
  {
    sqlite3_finalize(v105);
    *(v42 + 24) = 0;
  }

  v106 = v131[0];
  v107 = v112;
  *(v112 + 32) = v130;
  *(v107 + 48) = v106;
  *(v107 + 57) = *(v131 + 9);
  result = v129;
  *v107 = v128;
  *(v107 + 16) = result;
  return result;
}

uint64_t (*sub_100DEA7B4(void *a1))(uint64_t a1)
{
  v97 = a1;
  v3 = sub_1005B981C(&qword_101A21C68, &qword_1014B6530);
  __chkstk_darwin(v3 - 8);
  v94 = &v82 - v4;
  v5 = type metadata accessor for CRLBoardCRDTData(0);
  v92 = *(v5 - 8);
  __chkstk_darwin(v5);
  v90 = &v82 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v89 = &v82 - v8;
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = (&v82 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *(v1 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_queue);
  *v13 = v14;
  v15 = *(v10 + 104);
  v100 = enum case for DispatchPredicate.onQueue(_:);
  v99 = v10 + 104;
  v15(v13, v11);
  v16 = v14;
  LOBYTE(v14) = _dispatchPreconditionTest(_:)();
  v19 = *(v10 + 8);
  v18 = v10 + 8;
  v17 = v19;
  v19(v13, v9);
  if ((v14 & 1) == 0)
  {
    goto LABEL_29;
  }

  v93 = v5;
  v96 = v18;
  v102 = 0;
  v103 = 0xE000000000000000;
  _StringGuts.grow(_:)(85);
  v20._countAndFlagsBits = 0x205443454C4553;
  v20._object = 0xE700000000000000;
  String.append(_:)(v20);
  v21._countAndFlagsBits = sub_1000820E8(0, 0xE000000000000000);
  String.append(_:)(v21);

  v22._countAndFlagsBits = 0x204D4F524620;
  v22._object = 0xE600000000000000;
  String.append(_:)(v22);
  v23._countAndFlagsBits = 0x736472616F62;
  v23._object = 0xE600000000000000;
  String.append(_:)(v23);
  v24._countAndFlagsBits = 0x20455245485720;
  v24._object = 0xE700000000000000;
  String.append(_:)(v24);
  v25._countAndFlagsBits = 0x6E6F7473626D6F74;
  v25._object = 0xEA00000000006465;
  String.append(_:)(v25);
  v26._countAndFlagsBits = 0x444E412031203D20;
  v26._object = 0xE900000000000020;
  String.append(_:)(v26);
  v27._countAndFlagsBits = 0xD00000000000001ALL;
  v27._object = 0x80000001015A37F0;
  String.append(_:)(v27);
  v28._countAndFlagsBits = 0x444E412030203D20;
  v28._object = 0xE900000000000020;
  String.append(_:)(v28);
  LOBYTE(v101) = 4;
  _print_unlocked<A, B>(_:_:)();
  v29._object = 0x80000001015A3C00;
  v29._countAndFlagsBits = 0xD000000000000016;
  String.append(_:)(v29);
  v30._object = 0xEE00657461645F65;
  v30._countAndFlagsBits = 0x6E6F7473626D6F74;
  String.append(_:)(v30);
  v31._countAndFlagsBits = 0x494C0A4353454420;
  v31._object = 0xED00003F2054494DLL;
  String.append(_:)(v31);
  v32 = v102;
  v33 = v103;
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v35 = sub_10001CC04(v34, v32, v33);
  if (v2)
  {

    if (qword_1019F2258 == -1)
    {
LABEL_4:
      v36 = static OS_os_log.boardStore;
      sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146C6B0;
      swift_getErrorValue();
      v38 = Error.localizedDescription.getter();
      v40 = v39;
      *(inited + 56) = &type metadata for String;
      *(inited + 64) = sub_1000053B0();
      *(inited + 32) = v38;
      *(inited + 40) = v40;
      v41 = static os_log_type_t.error.getter();
      sub_100005404(v36, &_mh_execute_header, v41, "Failed to fetch list of recently deleted boards with error %@", 61, 2, inited);
      swift_setDeallocating();
      sub_100005070((inited + 32));
      return swift_willThrow();
    }

LABEL_30:
    swift_once();
    goto LABEL_4;
  }

  v43 = v35;

  v44 = *(*(v43 + 16) + 32);
  *v13 = v44;
  v45 = v15;
  v46 = v100;
  v98 = v45;
  v45(v13, v100, v9);
  v47 = v44;
  LOBYTE(v44) = _dispatchPreconditionTest(_:)();
  v95 = v17;
  v17(v13, v9);
  if ((v44 & 1) == 0)
  {
    __break(1u);
    goto LABEL_32;
  }

  swift_beginAccess();
  sqlite3_bind_int64(*(v43 + 24), 1, v97);
  v101 = _swiftEmptyArrayStorage;
  v48 = *(*(v43 + 16) + 32);
  *v13 = v48;
  v49 = v98;
  v98(v13, v46, v9);
  v50 = v48;
  LOBYTE(v48) = _dispatchPreconditionTest(_:)();
  v95(v13, v9);
  if ((v48 & 1) == 0)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  type metadata accessor for SQLiteRowIterator();
  v51 = swift_initStackObject();
  v52 = v46;
  v51[3] = 0;
  v53 = v51 + 3;
  v51[4] = 0;
  v87 = v51 + 4;
  v51[5] = 1;
  v97 = v51;
  v51[2] = v43;
  v54 = *(*(v43 + 16) + 32);
  *v13 = v54;

  v49(v13, v52, v9);
  v55 = v54;
  LOBYTE(v54) = _dispatchPreconditionTest(_:)();
  v56 = v95;
  v95(v13, v9);
  if ((v54 & 1) == 0)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v92 += 7;
  v88 = _swiftEmptyArrayStorage;
  v91 = v9;
  while (1)
  {
    *v53 = 0;
    v53[1] = 0;
    v97[5] = 1;
    v57 = sqlite3_step(*(v43 + 24));
    if (v57 != 100)
    {
      break;
    }

    v58 = swift_retain_n();
    v59 = sub_1000826B0(v58, 0);
    if (!v59)
    {

      goto LABEL_15;
    }

    v60 = v59;
    v61 = (v59 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_data);
    v62 = *(v59 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_data + 8);
    if (v62 >> 60 == 15)
    {

LABEL_15:
      v66 = *(*(v43 + 16) + 32);
      *v13 = v66;
      v98(v13, v100, v9);
      v67 = v66;
      LOBYTE(v66) = _dispatchPreconditionTest(_:)();
      v56(v13, v9);
      if ((v66 & 1) == 0)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v63 = v94;
      v64 = *v61;
      sub_100024E84(*v61, v62);
      sub_100024E84(v64, v62);
      sub_1000066D0(&unk_101A22E10, type metadata accessor for CRLBoardCRDTData, byte_1014DD800);

      v65 = v93;
      CRDT.init(serializedData:)();
      (*v92)(v63, 0, 1, v65);
      v88 = type metadata accessor for CRLBoardCRDTData;
      v68 = v63;
      v69 = v89;
      sub_100025668(v68, v89, type metadata accessor for CRLBoardCRDTData);
      v86 = *(v60 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_minRequiredVersions + 32);
      v70 = *(v60 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_minRequiredVersions + 16);
      v85 = *(v60 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_minRequiredVersions);
      v84 = v70;
      sub_10000C83C(v69, v90, type metadata accessor for CRLBoardCRDTData);
      v71 = OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_boardIdentifier;
      v72 = (v60 + *(type metadata accessor for CRLBoardIdentifierStorage(0) + 20) + v71);
      v73 = v72[1];
      v83 = *v72;
      type metadata accessor for CRLBoardData(0);
      v74 = swift_allocObject();

      sub_100025870(v64, v62);

      sub_100026028(v89, type metadata accessor for CRLBoardCRDTData);
      *(v74 + 16) = 7;
      *(v74 + 40) = v84;
      *(v74 + 24) = v85;
      *(v74 + 56) = v86;
      sub_100025668(v90, v74 + OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData, v88);
      v75 = (v74 + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName);
      *v75 = v83;
      v75[1] = v73;

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v101 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v101 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v88 = v101;
      v76 = *(*(v43 + 16) + 32);
      *v13 = v76;
      v9 = v91;
      v98(v13, v100, v91);
      v77 = v76;
      LOBYTE(v76) = _dispatchPreconditionTest(_:)();
      v56 = v95;
      v95(v13, v9);
      if ((v76 & 1) == 0)
      {
        goto LABEL_28;
      }
    }
  }

  if (v57 && v57 != 101)
  {
    *v53 = v57;
    v78 = v87;
    *v87 = 0;
    v78[1] = 0;
  }

  v79 = *(*(v43 + 16) + 32);
  *v13 = v79;
  v98(v13, v100, v9);
  v80 = v79;
  LOBYTE(v79) = _dispatchPreconditionTest(_:)();
  v56(v13, v9);
  if ((v79 & 1) == 0)
  {
LABEL_33:
    __break(1u);
  }

  v81 = *(v43 + 24);
  if (v81)
  {
    sqlite3_finalize(v81);
    *(v43 + 24) = 0;
  }

  return v88;
}

sqlite3_int64 sub_100DEB448(uint64_t a1)
{
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = (&v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v1 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_queue);
  *v8 = v9;
  v10 = *(v5 + 104);
  v56 = enum case for DispatchPredicate.onQueue(_:);
  v10(v8, v6);
  v11 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  v54 = *(v5 + 8);
  v54(v8, v4);
  if ((v9 & 1) == 0)
  {
    __break(1u);
LABEL_18:
    swift_once();
    goto LABEL_5;
  }

  v55 = v10;
  v53 = v4;
  v57 = 0;
  v58 = 0xE000000000000000;
  _StringGuts.grow(_:)(32);

  v57 = 0x205443454C4553;
  v58 = 0xE700000000000000;
  v12._countAndFlagsBits = sub_1000820E8(0, 0xE000000000000000);
  String.append(_:)(v12);

  v13._countAndFlagsBits = 0x204D4F524620;
  v13._object = 0xE600000000000000;
  String.append(_:)(v13);
  v14._countAndFlagsBits = 0x736472616F62;
  v14._object = 0xE600000000000000;
  String.append(_:)(v14);
  v15._countAndFlagsBits = 0x2820455245485720;
  v15._object = 0xE800000000000000;
  String.append(_:)(v15);
  v16._object = 0x8000000101585360;
  v16._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v16);
  v17._countAndFlagsBits = 0x293F203D20;
  v17._object = 0xE500000000000000;
  String.append(_:)(v17);
  v18 = v57;
  v19 = v58;
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v21 = sub_10001CC04(v20, v18, v19);
  if (!v2)
  {
    v22 = v21;

    v23 = type metadata accessor for CRLBoardIdentifierStorage(0);
    v24 = sub_10084DAE4(a1, *(a1 + *(v23 + 20)), *(a1 + *(v23 + 20) + 8));
    v52 = v32;
    v33 = v24;
    v34 = *(*(v22 + 16) + 32);
    *v8 = v34;
    v35 = v53;
    v55(v8, v56, v53);
    v36 = v34;
    LOBYTE(v34) = _dispatchPreconditionTest(_:)();
    v37 = v54;
    v54(v8, v35);
    if (v34)
    {

      v38 = v33;
      v39 = v33;
      v40 = v52;
      sub_100DCCAB4(v39, v52, v22, 1);
      sub_10002640C(v38, v40);
      v41 = *(*(v22 + 16) + 32);
      *v8 = v41;
      v55(v8, v56, v35);
      v42 = v41;
      LOBYTE(v41) = _dispatchPreconditionTest(_:)();
      v37(v8, v35);
      if (v41)
      {
        type metadata accessor for SQLiteRowIterator();
        inited = swift_initStackObject();
        inited[4] = 0;
        inited[5] = 1;
        inited[2] = v22;
        inited[3] = 0;

        v44 = sub_10001E1D0();
        if (!v44)
        {

          swift_setDeallocating();
          sub_10001E364(inited[3], inited[4], inited[5]);
          v49 = *(*(v22 + 16) + 32);
          *v8 = v49;
          v55(v8, v56, v35);
          v50 = v49;
          LOBYTE(v49) = _dispatchPreconditionTest(_:)();
          v37(v8, v35);
          if (v49)
          {
            v47 = (v22 + 24);
            swift_beginAccess();
            v27 = 0;
            v48 = *(v22 + 24);
            if (!v48)
            {
              goto LABEL_13;
            }

            goto LABEL_12;
          }

LABEL_22:
          __break(1u);
        }

        v27 = sub_1000826B0(v44, 0);

        swift_setDeallocating();
        sub_10001E364(inited[3], inited[4], inited[5]);
        v45 = *(*(v22 + 16) + 32);
        *v8 = v45;
        v55(v8, v56, v35);
        v46 = v45;
        LOBYTE(v45) = _dispatchPreconditionTest(_:)();
        v37(v8, v35);
        if (v45)
        {
          v47 = (v22 + 24);
          swift_beginAccess();
          v48 = *(v22 + 24);
          if (!v48)
          {
LABEL_13:

            return v27;
          }

LABEL_12:
          sqlite3_finalize(v48);
          *v47 = 0;
          goto LABEL_13;
        }

LABEL_21:
        __break(1u);
        goto LABEL_22;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_21;
  }

  if (qword_1019F2258 != -1)
  {
    goto LABEL_18;
  }

LABEL_5:
  v25 = static OS_os_log.boardStore;
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  v26 = swift_initStackObject();
  *(v26 + 16) = xmmword_10146C6B0;
  swift_getErrorValue();
  v27 = Error.localizedDescription.getter();
  v29 = v28;
  *(v26 + 56) = &type metadata for String;
  *(v26 + 64) = sub_1000053B0();
  *(v26 + 32) = v27;
  *(v26 + 40) = v29;
  v30 = static os_log_type_t.error.getter();
  sub_100005404(v25, &_mh_execute_header, v30, "Failed to fetch a board record with error %@", 44, 2, v26);
  swift_setDeallocating();
  sub_100005070((v26 + 32));
  swift_willThrow();
  return v27;
}

uint64_t sub_100DEBB44(uint64_t a1, unint64_t a2)
{
  v84 = a2;
  v76 = a1;
  v3 = sub_1005B981C(&qword_1019F6990, &qword_10146D2F0);
  __chkstk_darwin(v3 - 8);
  v78 = &v74 - v4;
  v5 = type metadata accessor for UUID();
  v80 = *(v5 - 8);
  v81 = v5;
  __chkstk_darwin(v5);
  v75 = &v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v83 = &v74 - v8;
  __chkstk_darwin(v9);
  v88 = (&v74 - v10);
  v11 = type metadata accessor for DispatchPredicate();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = (&v74 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v86 = v2;
  v16 = *(v2 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_queue);
  *v15 = v16;
  v17 = enum case for DispatchPredicate.onQueue(_:);
  v18 = v12 + 104;
  v19 = *(v12 + 104);
  (v19)(v15, enum case for DispatchPredicate.onQueue(_:), v11, v13);
  v20 = v16;
  v21 = _dispatchPreconditionTest(_:)();
  v24 = *(v12 + 8);
  v22 = v12 + 8;
  v23 = v24;
  v24(v15, v11);
  if ((v21 & 1) == 0)
  {
    goto LABEL_71;
  }

  *v15 = v20;
  v19(v15, v17, v11);
  v25 = _dispatchPreconditionTest(_:)();
  v23(v15, v11);
  if ((v25 & 1) == 0)
  {
    goto LABEL_72;
  }

  v26 = v85;
  v27 = sub_100DEC510(v76, v84, 0);
  if (!v26)
  {
    v22 = v27;
    v74 = 0;
    v87 = _swiftEmptyArrayStorage;
    v18 = v27 & 0xFFFFFFFFFFFFFF8;
    if (v27 >> 62)
    {
      goto LABEL_73;
    }

    v28 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_6:
    if (!v28)
    {
      v82 = _swiftEmptyArrayStorage;
LABEL_24:

      v34 = v82;
      if (v82 >> 62)
      {
        if (!_CocoaArrayWrapper.endIndex.getter())
        {
          goto LABEL_80;
        }

        v85 = _CocoaArrayWrapper.endIndex.getter();
        if (!v85)
        {
          v35 = _swiftEmptyDictionarySingleton;
          goto LABEL_77;
        }
      }

      else
      {
        v85 = *((v82 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v85)
        {
          goto LABEL_80;
        }
      }

      v22 = 0;
      v84 = v34 & 0xC000000000000001;
      v77 = v34 & 0xFFFFFFFFFFFFFF8;
      v79 = v80 + 16;
      v86 = (v80 + 8);
      v35 = _swiftEmptyDictionarySingleton;
      while (2)
      {
        if (v84)
        {
          v39 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v40 = v39;
          v18 = v22 + 1;
          if (__OFADD__(v22, 1))
          {
            goto LABEL_67;
          }
        }

        else
        {
          if (v22 >= *(v77 + 16))
          {
            goto LABEL_70;
          }

          v40 = *(v34 + 8 * v22 + 32);

          v18 = v22 + 1;
          if (__OFADD__(v22, 1))
          {
            goto LABEL_67;
          }
        }

        v41 = v88;
        (*(*v40 + 264))(v39);
        type metadata accessor for CRLBoardItemDatabaseResult();
        v42 = swift_allocObject();
        *(v42 + 16) = v40;
        *(v42 + 24) = _swiftEmptyArrayStorage;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v87 = v35;
        v45 = sub_10003E994(v41);
        v46 = v35[2];
        v47 = (v44 & 1) == 0;
        v48 = v46 + v47;
        if (__OFADD__(v46, v47))
        {
          goto LABEL_68;
        }

        v49 = v44;
        if (v35[3] >= v48)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            v35 = v87;
            if ((v44 & 1) == 0)
            {
              goto LABEL_42;
            }
          }

          else
          {
            sub_100AABEC4();
            v35 = v87;
            if ((v49 & 1) == 0)
            {
              goto LABEL_42;
            }
          }
        }

        else
        {
          sub_100A96634(v48, isUniquelyReferenced_nonNull_native);
          v50 = sub_10003E994(v88);
          if ((v49 & 1) != (v51 & 1))
          {
            goto LABEL_83;
          }

          v45 = v50;
          v35 = v87;
          if ((v49 & 1) == 0)
          {
LABEL_42:
            v35[(v45 >> 6) + 8] |= 1 << v45;
            v53 = v80;
            v52 = v81;
            v54 = v88;
            (*(v80 + 16))(v35[6] + *(v80 + 72) * v45, v88, v81);
            *(v35[7] + 8 * v45) = v42;
            v37 = v52;

            v36 = *(v53 + 8);
            v36(v54, v52);
            v55 = v35[2];
            v56 = __OFADD__(v55, 1);
            v57 = v55 + 1;
            if (v56)
            {
              goto LABEL_69;
            }

            v35[2] = v57;
LABEL_28:
            ++v22;
            v34 = v82;
            v38 = v83;
            if (v18 == v85)
            {
              if (v85 < 1)
              {
                __break(1u);
LABEL_83:
                result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
                __break(1u);
                return result;
              }

              v58 = 0;
              v59 = (v80 + 48);
              v88 = (v80 + 32);
              do
              {
                if (v84)
                {
                  v60 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                  v61 = v60;
                }

                else
                {
                  v61 = *(v34 + 8 * v58 + 32);
                }

                (*(*v61 + 264))(v60);
                if (v35[2] && (sub_10003E994(v38), (v62 & 1) != 0))
                {

                  v63 = (v36)(v38, v37);
                  v64 = v78;
                  (*(*v61 + 272))(v63);
                  if ((*v59)(v64, 1, v37) == 1)
                  {

                    sub_10000CAAC(v64, &qword_1019F6990, &qword_10146D2F0);
                  }

                  else
                  {
                    v65 = v75;
                    (*v88)(v75);
                    if (v35[2] && (v66 = sub_10003E994(v65), (v67 & 1) != 0))
                    {
                      v68 = *(v35[7] + 8 * v66);
                      swift_beginAccess();

                      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
                      if (*((*(v68 + 24) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v68 + 24) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                      {
                        v80 = *((*(v68 + 24) & 0xFFFFFFFFFFFFFF8) + 0x10);
                        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                      }

                      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                      swift_endAccess();

                      v69 = v65;
                      v37 = v81;
                      v36(v69, v81);
                    }

                    else
                    {
                      v70 = v65;
                      v37 = v81;
                      v36(v70, v81);
                    }
                  }

                  v34 = v82;
                  v38 = v83;
                }

                else
                {
                  v36(v38, v37);
                }

                ++v58;
              }

              while (v85 != v58);
LABEL_77:

              if (v35[2])
              {
                v71 = sub_10003E994(v76);
                if (v72)
                {
                  v18 = *(v35[7] + 8 * v71);

                  return v18;
                }
              }

LABEL_80:

              return 0;
            }

            continue;
          }
        }

        break;
      }

      *(v35[7] + 8 * v45) = v42;

      v36 = *v86;
      v37 = v81;
      (*v86)(v88, v81);
      goto LABEL_28;
    }

    v29 = v22 & 0xC000000000000001;
    v82 = _swiftEmptyArrayStorage;
    v30 = 0;
    if ((v22 & 0xC000000000000001) != 0)
    {
LABEL_20:
      v31 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v32 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        goto LABEL_65;
      }

      goto LABEL_14;
    }

    while (1)
    {
      while (1)
      {
        if (v30 >= *(v18 + 16))
        {
          goto LABEL_66;
        }

        v31 = *(v22 + 8 * v30 + 32);

        v32 = v30 + 1;
        if (__OFADD__(v30, 1))
        {
LABEL_65:
          __break(1u);
LABEL_66:
          __break(1u);
LABEL_67:
          __break(1u);
LABEL_68:
          __break(1u);
LABEL_69:
          __break(1u);
LABEL_70:
          __break(1u);
LABEL_71:
          __break(1u);
LABEL_72:
          __break(1u);
LABEL_73:
          v28 = _CocoaArrayWrapper.endIndex.getter();
          goto LABEL_6;
        }

LABEL_14:
        if ((*(v31 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_isLocalTombstone) & 1) == 0)
        {
          break;
        }

LABEL_10:
        ++v30;
        if (v32 == v28)
        {
          goto LABEL_24;
        }

        if (v29)
        {
          goto LABEL_20;
        }
      }

      v33 = sub_100E929EC(v31);

      if (!v33)
      {
        goto LABEL_10;
      }

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v87 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v87 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v82 = v87;
      if (v32 == v28)
      {
        goto LABEL_24;
      }

      v30 = v32;
      if (v29)
      {
        goto LABEL_20;
      }
    }
  }

  return v18;
}

void *sub_100DEC510(unint64_t a1, unint64_t a2, char a3)
{
  v62 = a2;
  v63 = a1;
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = (&v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(v3 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_queue);
  *v9 = v10;
  v11 = enum case for DispatchPredicate.onQueue(_:);
  v12 = *(v6 + 104);
  v12(v9, enum case for DispatchPredicate.onQueue(_:), v5, v7);
  v13 = v10;
  LOBYTE(v10) = _dispatchPreconditionTest(_:)();
  v66 = *(v6 + 8);
  v66(v9, v5);
  if ((v10 & 1) == 0)
  {
    goto LABEL_30;
  }

  v65 = v6 + 104;
  v68 = v11;
  v67 = v12;
  if (qword_1019F19A8 != -1)
  {
    goto LABEL_31;
  }

  while (1)
  {
    v14 = qword_101AD6CA0;
    CRLAnalyticsOSSignpostManager.beginSignpostInterval(for:with:)(30, 1, _swiftEmptyArrayStorage);
    v15 = sub_100E9D4E0(&off_1018734C0, a3 & 1);
    v17 = v16;
    v69 = _swiftEmptyArrayStorage;
    type metadata accessor for SQLiteStatement();
    swift_initStackObject();

    v19 = v64;
    v20 = sub_10001CC04(v18, v15, v17);
    if (v19)
    {
      break;
    }

    v21 = v20;
    v64 = v14;

    v23 = UUID.crl_data()(v22);
    v25 = v24;
    v26 = *(*(v21 + 16) + 32);
    *v9 = v26;
    v67(v9, v68, v5);
    v27 = v26;
    LOBYTE(v26) = _dispatchPreconditionTest(_:)();
    v66(v9, v5);
    if ((v26 & 1) == 0)
    {
      __break(1u);
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    sub_100DCCAB4(v23, v25, v21, 1);
    sub_10002640C(v23, v25);
    v28 = type metadata accessor for CRLBoardIdentifierStorage(0);
    v29 = sub_10084DAE4(v62, *(v62 + *(v28 + 20)), *(v62 + *(v28 + 20) + 8));
    v62 = v37;
    v63 = v29;
    v38 = *(*(v21 + 16) + 32);
    *v9 = v38;
    v39 = v67;
    a3 = v65;
    v67(v9, v68, v5);
    v40 = v38;
    LOBYTE(v38) = _dispatchPreconditionTest(_:)();
    v41 = v66;
    v66(v9, v5);
    if ((v38 & 1) == 0)
    {
      goto LABEL_33;
    }

    sub_100DCCAB4(v63, v62, v21, 2);
    v61 = 0;
    v42 = *(*(v21 + 16) + 32);
    *v9 = v42;
    v39(v9, v68, v5);
    v43 = v42;
    LOBYTE(v42) = _dispatchPreconditionTest(_:)();
    v41(v9, v5);
    if ((v42 & 1) == 0)
    {
      goto LABEL_34;
    }

    type metadata accessor for SQLiteRowIterator();
    inited = swift_initStackObject();
    inited[3] = 0;
    v45 = inited + 3;
    inited[4] = 0;
    v59 = inited + 4;
    inited[5] = 1;
    inited[2] = v21;

    swift_beginAccess();
    v46 = *(*(v21 + 16) + 32);
    *v9 = v46;
    v67(v9, v68, v5);
    v47 = v46;
    LOBYTE(v46) = _dispatchPreconditionTest(_:)();
    v41(v9, v5);
    if (v46)
    {
      v14 = _swiftEmptyArrayStorage;
      a3 = 1;
      while (1)
      {
        *v45 = 0;
        inited[4] = 0;
        inited[5] = 1;
        v48 = sqlite3_step(*(v21 + 24));
        if (v48 != 100)
        {
          break;
        }

        v49 = swift_retain_n();
        v50 = sub_100E9B7E0(v49, 0);
        if (v50)
        {
          v60 = v50;

          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v69 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v69 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v58 = *((v69 & 0xFFFFFFFFFFFFFF8) + 0x10);
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

          v14 = v69;
        }

        else
        {
        }

        v51 = *(*(v21 + 16) + 32);
        *v9 = v51;
        v67(v9, v68, v5);
        v52 = v51;
        LOBYTE(v51) = _dispatchPreconditionTest(_:)();
        v66(v9, v5);
        if ((v51 & 1) == 0)
        {
          goto LABEL_29;
        }
      }

      v53 = v48;
      sub_10002640C(v63, v62);
      if (v53 && v53 != 101)
      {
        *v45 = v53;
        v54 = v59;
        *v59 = 0;
        v54[1] = 0;
      }

      v55 = *(*(v21 + 16) + 32);
      *v9 = v55;
      v67(v9, v68, v5);
      v56 = v55;
      LOBYTE(v55) = _dispatchPreconditionTest(_:)();
      v66(v9, v5);
      if (v55)
      {
        v57 = *(v21 + 24);
        if (v57)
        {
          sqlite3_finalize(v57);
          *(v21 + 24) = 0;
        }

        CRLAnalyticsOSSignpostManager.endSignpostInterval(for:)(0x1EuLL, 1);
        return v14;
      }

LABEL_35:
      __break(1u);
    }

LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    swift_once();
  }

  if (qword_1019F2258 != -1)
  {
    swift_once();
  }

  v30 = static OS_os_log.boardStore;
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  v31 = swift_initStackObject();
  *(v31 + 16) = xmmword_10146C6B0;
  swift_getErrorValue();
  v32 = Error.localizedDescription.getter();
  v34 = v33;
  *(v31 + 56) = &type metadata for String;
  *(v31 + 64) = sub_1000053B0();
  *(v31 + 32) = v32;
  *(v31 + 40) = v34;
  v35 = static os_log_type_t.error.getter();
  sub_100005404(v30, &_mh_execute_header, v35, "Failed to fetch a board item record with error %@", 49, 2, v31);
  swift_setDeallocating();
  sub_100005070((v31 + 32));
  swift_willThrow();
  return v14;
}

uint64_t sub_100DECDC4(unint64_t a1, unint64_t a2)
{
  v57 = a2;
  v58 = a1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = (&v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v2 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_queue);
  *v8 = v9;
  v10 = *(v5 + 104);
  v61 = enum case for DispatchPredicate.onQueue(_:);
  v10(v8, v6);
  v11 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  v12 = *(v5 + 8);
  v12(v8, v4);
  if ((v9 & 1) == 0)
  {
    __break(1u);
LABEL_19:
    swift_once();
    goto LABEL_6;
  }

  v59 = v10;
  v60 = v12;
  v62 = 0;
  v63 = 0xE000000000000000;
  _StringGuts.grow(_:)(43);

  v62 = 0x205443454C4553;
  v63 = 0xE700000000000000;
  v13._countAndFlagsBits = sub_100E9B2F4(0, 0xE000000000000000);
  String.append(_:)(v13);

  v14._countAndFlagsBits = 0x204D4F524620;
  v14._object = 0xE600000000000000;
  String.append(_:)(v14);
  v15._countAndFlagsBits = 0x74695F6472616F62;
  v15._object = 0xEB00000000736D65;
  String.append(_:)(v15);
  v16._countAndFlagsBits = 0x2820455245485720;
  v16._object = 0xE800000000000000;
  String.append(_:)(v16);
  v17._countAndFlagsBits = 0x6975755F6D657469;
  v17._object = 0xE900000000000064;
  String.append(_:)(v17);
  v18._countAndFlagsBits = 0x444E41203F203D20;
  v18._object = 0xE900000000000020;
  String.append(_:)(v18);
  v19._object = 0x8000000101585360;
  v19._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v19);
  v20._countAndFlagsBits = 0x293F203D20;
  v20._object = 0xE500000000000000;
  String.append(_:)(v20);
  v21 = v62;
  v22 = v63;
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v24 = sub_10001CC04(v23, v21, v22);
  if (!v3)
  {
    v25 = v24;

    v27 = UUID.crl_data()(v26);
    v29 = v28;
    v30 = *(*(v25 + 16) + 32);
    *v8 = v30;
    v59(v8, v61, v4);
    v31 = v30;
    LOBYTE(v30) = _dispatchPreconditionTest(_:)();
    v60(v8, v4);
    if (v30)
    {

      sub_100DCCAB4(v27, v29, v25, 1);
      sub_10002640C(v27, v29);
      v32 = type metadata accessor for CRLBoardIdentifierStorage(0);
      v57 = sub_10084DAE4(v57, *(v57 + *(v32 + 20)), *(v57 + *(v32 + 20) + 8));
      v58 = v40;
      v41 = *(*(v25 + 16) + 32);
      *v8 = v41;
      v42 = v59;
      v59(v8, v61, v4);
      v43 = v41;
      LOBYTE(v41) = _dispatchPreconditionTest(_:)();
      v44 = v60;
      v60(v8, v4);
      if (v41)
      {

        sub_100DCCAB4(v57, v58, v25, 2);
        v45 = *(*(v25 + 16) + 32);
        *v8 = v45;
        v42(v8, v61, v4);
        v46 = v45;
        LOBYTE(v45) = _dispatchPreconditionTest(_:)();
        v44(v8, v4);
        if (v45)
        {
          type metadata accessor for SQLiteRowIterator();
          inited = swift_initStackObject();
          inited[4] = 0;
          inited[5] = 1;
          inited[2] = v25;
          inited[3] = 0;

          v48 = sub_10001E1D0();
          if (!v48)
          {
            sub_10002640C(v57, v58);

            swift_setDeallocating();
            sub_10001E364(inited[3], inited[4], inited[5]);
            v54 = *(*(v25 + 16) + 32);
            *v8 = v54;
            v59(v8, v61, v4);
            v55 = v54;
            LOBYTE(v54) = _dispatchPreconditionTest(_:)();
            v60(v8, v4);
            if (v54)
            {
              v52 = (v25 + 24);
              swift_beginAccess();
              v35 = 0;
              v53 = *(v25 + 24);
              if (!v53)
              {
                goto LABEL_14;
              }

              goto LABEL_13;
            }

LABEL_24:
            __break(1u);
          }

          v35 = sub_100E9B7E0(v48, 0);
          sub_10002640C(v57, v58);

          swift_setDeallocating();
          sub_10001E364(inited[3], inited[4], inited[5]);
          v49 = *(*(v25 + 16) + 32);
          *v8 = v49;
          v59(v8, v61, v4);
          v50 = v49;
          v51 = _dispatchPreconditionTest(_:)();
          v60(v8, v4);
          if (v51)
          {
            v52 = (v25 + 24);
            swift_beginAccess();
            v53 = *(v25 + 24);
            if (!v53)
            {
LABEL_14:

              return v35;
            }

LABEL_13:
            sqlite3_finalize(v53);
            *v52 = 0;
            goto LABEL_14;
          }

LABEL_23:
          __break(1u);
          goto LABEL_24;
        }

LABEL_22:
        __break(1u);
        goto LABEL_23;
      }
    }

    else
    {
      __break(1u);
      __break(1u);
    }

    __break(1u);
    goto LABEL_22;
  }

  if (qword_1019F2258 != -1)
  {
    goto LABEL_19;
  }

LABEL_6:
  v33 = static OS_os_log.boardStore;
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  v34 = swift_initStackObject();
  *(v34 + 16) = xmmword_10146C6B0;
  swift_getErrorValue();
  v35 = Error.localizedDescription.getter();
  v37 = v36;
  *(v34 + 56) = &type metadata for String;
  *(v34 + 64) = sub_1000053B0();
  *(v34 + 32) = v35;
  *(v34 + 40) = v37;
  v38 = static os_log_type_t.error.getter();
  sub_100005404(v33, &_mh_execute_header, v38, "Failed to fetch a board item record with error %@", 49, 2, v34);
  swift_setDeallocating();
  sub_100005070((v34 + 32));
  swift_willThrow();
  return v35;
}

uint64_t sub_100DED5D0(unint64_t a1)
{
  v82 = a1;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = (v79 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v1 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_queue);
  *v6 = v7;
  v8 = enum case for DispatchPredicate.onQueue(_:);
  v9 = v3 + 104;
  v10 = *(v3 + 104);
  v10(v6, enum case for DispatchPredicate.onQueue(_:), v2, v4);
  v11 = v7;
  v12 = _dispatchPreconditionTest(_:)();
  v15 = *(v3 + 8);
  v14 = v3 + 8;
  v13 = v15;
  v15(v6, v2);
  if ((v12 & 1) == 0)
  {
    __break(1u);
    goto LABEL_21;
  }

  v84 = v8;
  v80 = v10;
  v85 = v9;
  v83 = v13;
  v86 = v14;
  v81 = v2;
  v88 = 0;
  v89 = 0xE000000000000000;
  _StringGuts.grow(_:)(120);
  v16._countAndFlagsBits = 0xD00000000000001DLL;
  v16._object = 0x80000001015A3EF0;
  String.append(_:)(v16);
  v17._countAndFlagsBits = 0x74695F6472616F62;
  v17._object = 0xEB00000000736D65;
  String.append(_:)(v17);
  v18._countAndFlagsBits = 0x20455245485720;
  v18._object = 0xE700000000000000;
  String.append(_:)(v18);
  v19._countAndFlagsBits = 0x74695F6472616F62;
  v19._object = 0xEB00000000736D65;
  String.append(_:)(v19);
  v20._countAndFlagsBits = 46;
  v20._object = 0xE100000000000000;
  String.append(_:)(v20);
  v21._object = 0x8000000101585360;
  v21._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v21);
  v22._countAndFlagsBits = 0x444E41203F203D20;
  v22._object = 0xE900000000000020;
  String.append(_:)(v22);
  v23._countAndFlagsBits = 0x74695F6472616F62;
  v23._object = 0xEB00000000736D65;
  String.append(_:)(v23);
  v24._countAndFlagsBits = 46;
  v24._object = 0xE100000000000000;
  String.append(_:)(v24);
  v25._object = 0x80000001015A33D0;
  v25._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v25);
  v26._countAndFlagsBits = 0xD00000000000001DLL;
  v26._object = 0x80000001015A6950;
  String.append(_:)(v26);
  v27._countAndFlagsBits = 0x736472616F62;
  v27._object = 0xE600000000000000;
  String.append(_:)(v27);
  v28._countAndFlagsBits = 0x20455245485720;
  v28._object = 0xE700000000000000;
  String.append(_:)(v28);
  v29._countAndFlagsBits = 0x736472616F62;
  v29._object = 0xE600000000000000;
  String.append(_:)(v29);
  v30._countAndFlagsBits = 46;
  v30._object = 0xE100000000000000;
  String.append(_:)(v30);
  v31._object = 0x8000000101585360;
  v31._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v31);
  v32._countAndFlagsBits = 0x444E410A3F203D20;
  v32._object = 0xE900000000000020;
  String.append(_:)(v32);
  v33._countAndFlagsBits = 0x736472616F62;
  v33._object = 0xE600000000000000;
  String.append(_:)(v33);
  v34._countAndFlagsBits = 46;
  v34._object = 0xE100000000000000;
  String.append(_:)(v34);
  v35._object = 0x80000001015A33D0;
  v35._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v35);
  v36._countAndFlagsBits = 0x292030203E20;
  v36._object = 0xE600000000000000;
  String.append(_:)(v36);
  v37 = v88;
  v38 = v89;
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v40 = v87;
  v41 = sub_10001CC04(v39, v37, v38);
  if (v40)
  {

    if (qword_1019F2258 == -1)
    {
LABEL_5:
      v44 = static OS_os_log.boardStore;
      sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146C6B0;
      swift_getErrorValue();
      v46 = Error.localizedDescription.getter();
      v48 = v47;
      *(inited + 56) = &type metadata for String;
      *(inited + 64) = sub_1000053B0();
      *(inited + 32) = v46;
      *(inited + 40) = v48;
      v49 = static os_log_type_t.error.getter();
      sub_100005404(v44, &_mh_execute_header, v49, "Failed to fetch a board syncData with error %@", 46, 2, inited);
      swift_setDeallocating();
      sub_100005070((inited + 32));
      swift_willThrow();
      return v46 & 1;
    }

LABEL_21:
    swift_once();
    goto LABEL_5;
  }

  v42 = v41;

  v43 = type metadata accessor for CRLBoardIdentifierStorage(0);
  v82 = sub_10084DAE4(v82, *(v82 + *(v43 + 20)), *(v82 + *(v43 + 20) + 8));
  v87 = v51;
  v52 = *(*(v42 + 16) + 32);
  *v6 = v52;
  v53 = v81;
  v54 = v80;
  v80(v6, v84, v81);
  v55 = v52;
  v56 = _dispatchPreconditionTest(_:)();
  v57 = v83;
  v83(v6, v53);
  if ((v56 & 1) == 0)
  {
    __break(1u);
    goto LABEL_23;
  }

  v58 = v82;
  v59 = v87;
  sub_100DCCAB4(v82, v87, v42, 1);
  v79[1] = 0;
  v60 = *(*(v42 + 16) + 32);
  *v6 = v60;
  v54(v6, v84, v53);
  v61 = v60;
  v62 = _dispatchPreconditionTest(_:)();
  v57(v6, v53);
  if ((v62 & 1) == 0)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  sub_100DCCAB4(v58, v59, v42, 2);
  v63 = *(*(v42 + 16) + 32);
  *v6 = v63;
  v54(v6, v84, v53);
  v64 = v63;
  v65 = _dispatchPreconditionTest(_:)();
  v57(v6, v53);
  if ((v65 & 1) == 0)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  type metadata accessor for SQLiteRowIterator();
  v66 = swift_initStackObject();
  v66[4] = 0;
  v66[5] = 1;
  v66[2] = v42;
  v66[3] = 0;

  v67 = sub_10001E1D0();
  if (!v67)
  {
    sub_10002640C(v82, v87);

    swift_setDeallocating();
    sub_10001E364(v66[3], v66[4], v66[5]);
LABEL_15:
    v75 = *(*(v42 + 16) + 32);
    *v6 = v75;
    v54(v6, v84, v53);
    v76 = v75;
    v77 = _dispatchPreconditionTest(_:)();
    v83(v6, v53);
    if (v77)
    {
      v74 = (v42 + 24);
      swift_beginAccess();
      LOBYTE(v46) = 0;
      goto LABEL_17;
    }

    goto LABEL_25;
  }

  v68 = sub_10001E378(0, v67);
  v70 = v69;
  sub_10002640C(v82, v87);

  swift_setDeallocating();
  sub_10001E364(v66[3], v66[4], v66[5]);
  if (v70)
  {
    goto LABEL_15;
  }

  v71 = *(*(v42 + 16) + 32);
  *v6 = v71;
  v54(v6, v84, v53);
  v72 = v71;
  v73 = _dispatchPreconditionTest(_:)();
  v83(v6, v53);
  if ((v73 & 1) == 0)
  {
    goto LABEL_26;
  }

  LOBYTE(v46) = v68 > 0;
  v74 = (v42 + 24);
  swift_beginAccess();
LABEL_17:
  v78 = *(v42 + 24);
  if (v78)
  {
    sqlite3_finalize(v78);
    *v74 = 0;
  }

  return v46 & 1;
}

void sub_100DEDF04()
{
  v2 = type metadata accessor for CRLBoardDataStore.KeyValueTableKey(0);
  __chkstk_darwin(v2);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = (&v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(v0 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_queue);
  *v9 = v10;
  (*(v6 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v5, v7);
  v11 = v10;
  LOBYTE(v10) = _dispatchPreconditionTest(_:)();
  (*(v6 + 8))(v9, v5);
  if (v10)
  {
    swift_storeEnumTagMultiPayload();
    v12 = sub_10002BB60(v4);
    v14 = v13;
    sub_100026028(v4, type metadata accessor for CRLBoardDataStore.KeyValueTableKey);
    if (!v1 && v14 >> 60 != 15)
    {
      type metadata accessor for JSONDecoder();
      swift_allocObject();
      JSONDecoder.init()();
      sub_1005B981C(&unk_101A22E80, &unk_1014A08B0);
      sub_100034CCC(&qword_101A21F10, &qword_1019F4758, "U);", &protocol conformance descriptor for <> Set<A>);
      dispatch thunk of JSONDecoder.decode<A>(_:from:)();
      sub_100025870(v12, v14);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100DEE194(uint64_t a1)
{
  v54 = a1;
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = (&v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v1 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_queue);
  *v7 = v8;
  v9 = v4 + 104;
  v10 = *(v4 + 104);
  v57 = enum case for DispatchPredicate.onQueue(_:);
  v10(v7, v5);
  v11 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  v12 = *(v4 + 8);
  v12(v7, v3);
  if ((v8 & 1) == 0)
  {
    __break(1u);
    goto LABEL_20;
  }

  v56 = v10;
  v55 = v12;
  v58 = 0;
  v59 = 0xE000000000000000;
  _StringGuts.grow(_:)(65);
  v13._countAndFlagsBits = 0xD00000000000001DLL;
  v13._object = 0x80000001015A3EF0;
  String.append(_:)(v13);
  v14._countAndFlagsBits = 0x736472616F62;
  v14._object = 0xE600000000000000;
  String.append(_:)(v14);
  v15._countAndFlagsBits = 0x20455245485720;
  v15._object = 0xE700000000000000;
  String.append(_:)(v15);
  v16._object = 0x8000000101585360;
  v16._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v16);
  v17._countAndFlagsBits = 0x444E41203F203D20;
  v17._object = 0xE900000000000020;
  String.append(_:)(v17);
  v18._countAndFlagsBits = 0x7461645F636E7973;
  v18._object = 0xE900000000000061;
  String.append(_:)(v18);
  v19._countAndFlagsBits = 0x20544F4E20534920;
  v19._object = 0xEE0029204C4C554ELL;
  String.append(_:)(v19);
  v20 = v58;
  v21 = v59;
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v23 = sub_10001CC04(v22, v20, v21);
  if (v2)
  {

    if (qword_1019F2258 == -1)
    {
LABEL_5:
      v27 = static OS_os_log.boardStore;
      sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146C6B0;
      swift_getErrorValue();
      v29 = Error.localizedDescription.getter();
      v31 = v30;
      *(inited + 56) = &type metadata for String;
      *(inited + 64) = sub_1000053B0();
      *(inited + 32) = v29;
      *(inited + 40) = v31;
      v32 = static os_log_type_t.error.getter();
      sub_100005404(v27, &_mh_execute_header, v32, "Failed to fetch a board syncData with error %@", 46, 2, inited);
      swift_setDeallocating();
      sub_100005070((inited + 32));
      swift_willThrow();
      return v9 & 1;
    }

LABEL_20:
    swift_once();
    goto LABEL_5;
  }

  v24 = v23;

  v25 = type metadata accessor for CRLBoardIdentifierStorage(0);
  v26 = sub_10084DAE4(v54, *(v54 + *(v25 + 20)), *(v54 + *(v25 + 20) + 8));
  v54 = v34;
  v35 = v26;
  v36 = *(*(v24 + 16) + 32);
  *v7 = v36;
  v56(v7, v57, v3);
  v37 = v36;
  LOBYTE(v36) = _dispatchPreconditionTest(_:)();
  v38 = v55;
  v55(v7, v3);
  if ((v36 & 1) == 0)
  {
    __break(1u);
    goto LABEL_22;
  }

  v39 = v35;
  v40 = v35;
  v41 = v54;
  sub_100DCCAB4(v40, v54, v24, 1);
  sub_10002640C(v39, v41);
  v42 = *(*(v24 + 16) + 32);
  *v7 = v42;
  v56(v7, v57, v3);
  v43 = v42;
  LOBYTE(v42) = _dispatchPreconditionTest(_:)();
  v38(v7, v3);
  if ((v42 & 1) == 0)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }

  type metadata accessor for SQLiteRowIterator();
  v44 = swift_initStackObject();
  v44[4] = 0;
  v44[5] = 1;
  v44[2] = v24;
  v44[3] = 0;

  v45 = sub_10001E1D0();
  if (!v45)
  {

    swift_setDeallocating();
    sub_10001E364(v44[3], v44[4], v44[5]);
LABEL_14:
    v51 = *(*(v24 + 16) + 32);
    *v7 = v51;
    v56(v7, v57, v3);
    v52 = v51;
    LOBYTE(v51) = _dispatchPreconditionTest(_:)();
    v55(v7, v3);
    if (v51)
    {
      v50 = (v24 + 24);
      swift_beginAccess();
      v9 = 0;
      goto LABEL_16;
    }

    goto LABEL_23;
  }

  v54 = sub_10001E378(0, v45);
  v47 = v46;

  swift_setDeallocating();
  sub_10001E364(v44[3], v44[4], v44[5]);
  if (v47)
  {
    goto LABEL_14;
  }

  v48 = *(*(v24 + 16) + 32);
  *v7 = v48;
  v56(v7, v57, v3);
  v49 = v48;
  LOBYTE(v48) = _dispatchPreconditionTest(_:)();
  v55(v7, v3);
  if ((v48 & 1) == 0)
  {
    goto LABEL_24;
  }

  v9 = v54 > 0;
  v50 = (v24 + 24);
  swift_beginAccess();
LABEL_16:
  v53 = *(v24 + 24);
  if (v53)
  {
    sqlite3_finalize(v53);
    *v50 = 0;
  }

  return v9 & 1;
}

uint64_t sub_100DEE8DC(uint64_t a1, char a2)
{
  v3 = v2;
  v55 = a1;
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = (&v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(v3 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_queue);
  *v9 = v10;
  v11 = v6 + 104;
  v12 = *(v6 + 104);
  v58 = enum case for DispatchPredicate.onQueue(_:);
  v12(v9, v7);
  v13 = v10;
  LOBYTE(v10) = _dispatchPreconditionTest(_:)();
  v14 = *(v6 + 8);
  v14(v9, v5);
  if ((v10 & 1) == 0)
  {
    __break(1u);
    goto LABEL_26;
  }

  v57 = v12;
  v56 = v14;
  if (a2)
  {
    v15 = 0;
  }

  else
  {
    v15 = 0xD000000000000012;
  }

  if (a2)
  {
    v16 = 0xE000000000000000;
  }

  else
  {
    v16 = 0x80000001015A6D50;
  }

  v60 = 0;
  v61 = 0xE000000000000000;
  _StringGuts.grow(_:)(49);

  v60 = 0xD00000000000003FLL;
  v61 = 0x80000001015A6D70;
  v17._countAndFlagsBits = v15;
  v17._object = v16;
  String.append(_:)(v17);

  v18._countAndFlagsBits = 10528;
  v18._object = 0xE200000000000000;
  String.append(_:)(v18);
  v19 = v60;
  v20 = v61;
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v22 = v59;
  v23 = sub_10001CC04(v21, v19, v20);
  if (v22)
  {

    if (qword_1019F2258 == -1)
    {
LABEL_11:
      v27 = static OS_os_log.boardStore;
      sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146C6B0;
      swift_getErrorValue();
      v29 = Error.localizedDescription.getter();
      v31 = v30;
      *(inited + 56) = &type metadata for String;
      *(inited + 64) = sub_1000053B0();
      *(inited + 32) = v29;
      *(inited + 40) = v31;
      v32 = static os_log_type_t.error.getter();
      sub_100005404(v27, &_mh_execute_header, v32, "Failed to fetch a board with error %@", 37, 2, inited);
      swift_setDeallocating();
      sub_100005070((inited + 32));
      swift_willThrow();
      return v11 & 1;
    }

LABEL_26:
    swift_once();
    goto LABEL_11;
  }

  v24 = v23;

  v25 = type metadata accessor for CRLBoardIdentifierStorage(0);
  v26 = sub_10084DAE4(v55, *(v55 + *(v25 + 20)), *(v55 + *(v25 + 20) + 8));
  v59 = v34;
  v35 = v26;
  v36 = *(*(v24 + 16) + 32);
  *v9 = v36;
  v57(v9, v58, v5);
  v37 = v36;
  LOBYTE(v36) = _dispatchPreconditionTest(_:)();
  v38 = v56;
  v56(v9, v5);
  if ((v36 & 1) == 0)
  {
    __break(1u);
    goto LABEL_28;
  }

  v39 = v35;
  v40 = v35;
  v41 = v59;
  sub_100DCCAB4(v40, v59, v24, 1);
  sub_10002640C(v39, v41);
  v42 = *(*(v24 + 16) + 32);
  *v9 = v42;
  v57(v9, v58, v5);
  v43 = v42;
  LOBYTE(v42) = _dispatchPreconditionTest(_:)();
  v38(v9, v5);
  if ((v42 & 1) == 0)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
  }

  type metadata accessor for SQLiteRowIterator();
  v44 = swift_initStackObject();
  v44[4] = 0;
  v44[5] = 1;
  v44[2] = v24;
  v44[3] = 0;

  v45 = sub_10001E1D0();
  if (!v45)
  {

    swift_setDeallocating();
    sub_10001E364(v44[3], v44[4], v44[5]);
LABEL_20:
    v51 = *(*(v24 + 16) + 32);
    *v9 = v51;
    v57(v9, v58, v5);
    v52 = v51;
    LOBYTE(v51) = _dispatchPreconditionTest(_:)();
    v56(v9, v5);
    if (v51)
    {
      v50 = (v24 + 24);
      swift_beginAccess();
      v11 = 0;
      goto LABEL_22;
    }

    goto LABEL_29;
  }

  v59 = sub_10001E378(0, v45);
  v47 = v46;

  swift_setDeallocating();
  sub_10001E364(v44[3], v44[4], v44[5]);
  if (v47)
  {
    goto LABEL_20;
  }

  v48 = *(*(v24 + 16) + 32);
  *v9 = v48;
  v57(v9, v58, v5);
  v49 = v48;
  LOBYTE(v48) = _dispatchPreconditionTest(_:)();
  v56(v9, v5);
  if ((v48 & 1) == 0)
  {
    goto LABEL_30;
  }

  v11 = v59 > 0;
  v50 = (v24 + 24);
  swift_beginAccess();
LABEL_22:
  v53 = *(v24 + 24);
  if (v53)
  {
    sqlite3_finalize(v53);
    *v50 = 0;
  }

  return v11 & 1;
}

uint64_t sub_100DEEFC0(uint64_t a1, unint64_t a2)
{
  v60 = a2;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = (&v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v2 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_queue);
  *v8 = v9;
  v10 = *(v5 + 104);
  v64 = enum case for DispatchPredicate.onQueue(_:);
  v62 = v10;
  v10(v8, v6);
  v11 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  v12 = *(v5 + 8);
  v12(v8, v4);
  if ((v9 & 1) == 0)
  {
    __break(1u);
    goto LABEL_21;
  }

  v63 = v5 + 104;
  v61 = v12;
  v65 = 0;
  v66 = 0xE000000000000000;
  _StringGuts.grow(_:)(59);
  v13._countAndFlagsBits = 0xD00000000000001DLL;
  v13._object = 0x80000001015A3EF0;
  String.append(_:)(v13);
  v14._countAndFlagsBits = 0x74695F6472616F62;
  v14._object = 0xEB00000000736D65;
  String.append(_:)(v14);
  v15._countAndFlagsBits = 0x2820455245485720;
  v15._object = 0xE800000000000000;
  String.append(_:)(v15);
  v16._countAndFlagsBits = 0x6975755F6D657469;
  v16._object = 0xE900000000000064;
  String.append(_:)(v16);
  v17._countAndFlagsBits = 0x444E41203F203D20;
  v17._object = 0xE900000000000020;
  String.append(_:)(v17);
  v18._object = 0x8000000101585360;
  v18._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v18);
  v19._countAndFlagsBits = 0x2920293F203D20;
  v19._object = 0xE700000000000000;
  String.append(_:)(v19);
  v20 = v65;
  v21 = v66;
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v23 = sub_10001CC04(v22, v20, v21);
  if (v3)
  {

    if (qword_1019F2258 == -1)
    {
LABEL_6:
      v33 = static OS_os_log.boardStore;
      sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146C6B0;
      swift_getErrorValue();
      v35 = Error.localizedDescription.getter();
      v37 = v36;
      *(inited + 56) = &type metadata for String;
      *(inited + 64) = sub_1000053B0();
      *(inited + 32) = v35;
      *(inited + 40) = v37;
      v38 = static os_log_type_t.error.getter();
      sub_100005404(v33, &_mh_execute_header, v38, "Failed to fetch a board item record with error %@", 49, 2, inited);
      swift_setDeallocating();
      sub_100005070((inited + 32));
      swift_willThrow();
      return v33 & 1;
    }

LABEL_21:
    swift_once();
    goto LABEL_6;
  }

  v24 = v23;

  v26 = UUID.crl_data()(v25);
  v28 = v27;
  v29 = *(*(v24 + 16) + 32);
  *v8 = v29;
  v62(v8, v64, v4);
  v30 = v29;
  LOBYTE(v29) = _dispatchPreconditionTest(_:)();
  v31 = v61;
  v61(v8, v4);
  if ((v29 & 1) == 0)
  {
    __break(1u);
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  sub_100DCCAB4(v26, v28, v24, 1);
  sub_10002640C(v26, v28);
  v32 = type metadata accessor for CRLBoardIdentifierStorage(0);
  v59 = sub_10084DAE4(v60, *(v60 + *(v32 + 20)), *(v60 + *(v32 + 20) + 8));
  v60 = v40;
  v41 = *(*(v24 + 16) + 32);
  *v8 = v41;
  v42 = v62;
  v62(v8, v64, v4);
  v43 = v41;
  LOBYTE(v41) = _dispatchPreconditionTest(_:)();
  v31(v8, v4);
  if ((v41 & 1) == 0)
  {
    goto LABEL_23;
  }

  sub_100DCCAB4(v59, v60, v24, 2);
  v44 = *(*(v24 + 16) + 32);
  *v8 = v44;
  v42(v8, v64, v4);
  v45 = v44;
  LOBYTE(v44) = _dispatchPreconditionTest(_:)();
  v31(v8, v4);
  if ((v44 & 1) == 0)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  type metadata accessor for SQLiteRowIterator();
  v46 = swift_initStackObject();
  v46[4] = 0;
  v46[5] = 1;
  v46[2] = v24;
  v46[3] = 0;

  v47 = sub_10001E1D0();
  if (!v47)
  {
    sub_10002640C(v59, v60);

    swift_setDeallocating();
    sub_10001E364(v46[3], v46[4], v46[5]);
    v50 = v64;
LABEL_15:
    v54 = *(*(v24 + 16) + 32);
    *v8 = v54;
    v42(v8, v50, v4);
    v55 = v54;
    LOBYTE(v54) = _dispatchPreconditionTest(_:)();
    v61(v8, v4);
    if (v54)
    {
      v53 = (v24 + 24);
      swift_beginAccess();
      LOBYTE(v33) = 0;
      goto LABEL_17;
    }

    goto LABEL_25;
  }

  v48 = sub_10001E378(0, v47);
  v58 = v49;
  sub_10002640C(v59, v60);

  swift_setDeallocating();
  sub_10001E364(v46[3], v46[4], v46[5]);
  v50 = v64;
  if (v58)
  {
    goto LABEL_15;
  }

  v51 = *(*(v24 + 16) + 32);
  *v8 = v51;
  v42(v8, v50, v4);
  v52 = v51;
  LOBYTE(v51) = _dispatchPreconditionTest(_:)();
  v61(v8, v4);
  if ((v51 & 1) == 0)
  {
    goto LABEL_26;
  }

  LOBYTE(v33) = v48 > 0;
  v53 = (v24 + 24);
  swift_beginAccess();
LABEL_17:
  v56 = *(v24 + 24);
  if (v56)
  {
    sqlite3_finalize(v56);
    *v53 = 0;
  }

  return v33 & 1;
}

sqlite3_int64 sub_100DEF7D4(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v59 = a3;
  v6 = sub_1005B981C(&qword_1019F6990, &qword_10146D2F0);
  __chkstk_darwin(v6 - 8);
  v58 = &v52[-v7];
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v52[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = *(v3 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_queue);
  *v12 = v13;
  v14 = *(v9 + 104);
  v62 = enum case for DispatchPredicate.onQueue(_:);
  v60 = v14;
  v14(v12, v10);
  v15 = v13;
  LOBYTE(v13) = _dispatchPreconditionTest(_:)();
  v61 = *(v9 + 8);
  v61(v12, v8);
  if ((v13 & 1) == 0)
  {
    __break(1u);
    goto LABEL_24;
  }

  v57 = a1;
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v17 = sub_10001CC04(v16, 0xD000000000000064, 0x80000001015A4F20);
  if (v4)
  {

    if (qword_1019F2258 == -1)
    {
LABEL_6:
      v26 = static OS_os_log.boardStore;
      sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146C6B0;
      swift_getErrorValue();
      v28 = Error.localizedDescription.getter();
      v30 = v29;
      *(inited + 56) = &type metadata for String;
      *(inited + 64) = sub_1000053B0();
      *(inited + 32) = v28;
      *(inited + 40) = v30;
      v31 = static os_log_type_t.error.getter();
      sub_100005404(v26, &_mh_execute_header, v31, "Failed to fetch a board item's parent UUID with error %@", 56, 2, inited);
      swift_setDeallocating();
      sub_100005070((inited + 32));
      swift_willThrow();
      return v30;
    }

LABEL_24:
    swift_once();
    goto LABEL_6;
  }

  v18 = v17;

  v20 = UUID.crl_data()(v19);
  v22 = v21;
  v23 = *(*(v18 + 16) + 32);
  *v12 = v23;
  v60(v12, v62, v8);
  v24 = v23;
  LOBYTE(v23) = _dispatchPreconditionTest(_:)();
  v61(v12, v8);
  if ((v23 & 1) == 0)
  {
    __break(1u);
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  sub_100DCCAB4(v20, v22, v18, 1);
  sub_10002640C(v20, v22);
  v25 = type metadata accessor for CRLBoardIdentifierStorage(0);
  v56 = sub_10084DAE4(v59, *(v59 + *(v25 + 20)), *(v59 + *(v25 + 20) + 8));
  v59 = v33;
  v34 = *(*(v18 + 16) + 32);
  *v12 = v34;
  v35 = v60;
  v60(v12, v62, v8);
  v36 = v34;
  LOBYTE(v34) = _dispatchPreconditionTest(_:)();
  v37 = v61;
  v61(v12, v8);
  if ((v34 & 1) == 0)
  {
    goto LABEL_26;
  }

  sub_100DCCAB4(v56, v59, v18, 2);
  v38 = *(*(v18 + 16) + 32);
  *v12 = v38;
  v35(v12, v62, v8);
  v39 = v38;
  LOBYTE(v38) = _dispatchPreconditionTest(_:)();
  v37(v12, v8);
  if ((v38 & 1) == 0)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  type metadata accessor for SQLiteRowIterator();
  v40 = swift_initStackObject();
  v40[4] = 0;
  v40[5] = 1;
  v40[2] = v18;
  v40[3] = 0;

  v41 = sub_10001E1D0();
  v42 = v58;
  if (v41)
  {
    sub_100083B64(0, v41, v58);
    v54 = sub_100028894(1, v41);
    v53 = v48;

    v55 = v41;

    sub_10002640C(v56, v59);
    if (v53)
    {
      v30 = 0;
    }

    else
    {
      v30 = v54;
    }

    sub_10003DFF8(v42, v57, &qword_1019F6990, &qword_10146D2F0);
    v49 = *(*(v18 + 16) + 32);
    *v12 = v49;
    v60(v12, v62, v8);
    v50 = v49;
    LOBYTE(v49) = _dispatchPreconditionTest(_:)();
    v61(v12, v8);
    if (v49)
    {
      swift_beginAccess();
      v51 = *(v18 + 24);
      if (v51)
      {
        sqlite3_finalize(v51);
        *(v18 + 24) = 0;
      }

      return v30;
    }

LABEL_29:
    __break(1u);
  }

  sub_10002640C(v56, v59);

  swift_setDeallocating();
  sub_10001E364(v40[3], v40[4], v40[5]);
  v43 = *(*(v18 + 16) + 32);
  *v12 = v43;
  v60(v12, v62, v8);
  v44 = v43;
  LOBYTE(v43) = _dispatchPreconditionTest(_:)();
  v61(v12, v8);
  if ((v43 & 1) == 0)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v55 = v41;
  swift_beginAccess();
  v45 = *(v18 + 24);
  v46 = v57;
  if (v45)
  {
    sqlite3_finalize(v45);
    *(v18 + 24) = 0;
  }

  v47 = type metadata accessor for UUID();
  (*(*(v47 - 8) + 56))(v46, 1, 1, v47);
  return 0;
}

char *sub_100DF00A0(uint64_t *a1, unint64_t a2, unsigned int a3, uint64_t a4, unint64_t a5, int a6, int a7, unint64_t a8, unint64_t a9, unsigned __int8 a10, unsigned __int8 a11)
{
  v12 = v11;
  LODWORD(v468) = a7;
  LODWORD(v470) = a6;
  v463 = a5;
  v459 = a4;
  v473 = a3;
  v482 = a1;
  v15 = type metadata accessor for CRLBoardIdentifier(0);
  __chkstk_darwin(v15 - 8);
  v458 = &v436 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v456 = type metadata accessor for CRLAssetReferrerIdentifier(0);
  __chkstk_darwin(v456);
  v455 = (&v436 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v18);
  v453 = &v436 - v19;
  __chkstk_darwin(v20);
  v461 = (&v436 - v21);
  v469 = sub_1005B981C(&unk_101A0AFE0, &unk_10146F3C0);
  __chkstk_darwin(v469);
  v467 = &v436 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v465 = &v436 - v24;
  v25 = sub_1005B981C(&qword_1019F6990, &qword_10146D2F0);
  __chkstk_darwin(v25 - 8);
  v457 = &v436 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v460 = &v436 - v28;
  __chkstk_darwin(v29);
  v464 = &v436 - v30;
  __chkstk_darwin(v31);
  v462 = &v436 - v32;
  __chkstk_darwin(v33);
  v472 = &v436 - v34;
  __chkstk_darwin(v35);
  v471 = &v436 - v36;
  v37 = type metadata accessor for UUID();
  v476 = *(v37 - 8);
  v477 = v37;
  __chkstk_darwin(v37);
  v454 = &v436 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v39);
  v475 = &v436 - v40;
  __chkstk_darwin(v41);
  v43 = &v436 - v42;
  v44 = type metadata accessor for DispatchPredicate();
  v45 = *(v44 - 8);
  v46 = __chkstk_darwin(v44);
  v48 = (&v436 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0));
  v49 = *(v12 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue);
  *v48 = v49;
  (*(v45 + 104))(v48, enum case for DispatchPredicate.onQueue(_:), v44, v46);
  v50 = v49;
  LOBYTE(v49) = _dispatchPreconditionTest(_:)();
  v52 = *(v45 + 8);
  v51 = (v45 + 8);
  v53 = v52(v48, v44);
  if ((v49 & 1) == 0)
  {
    __break(1u);
    goto LABEL_236;
  }

  v54 = (*v482 + 264);
  v55 = *v54;
  v56 = v54;
  (*v54)(v53);
  v57 = v478;
  v58 = sub_100DECDC4(v43, a2);
  v474 = a2;
  v478 = v57;
  if (v57)
  {
    v59 = *(v476 + 8);
    v60 = v43;
    v43 = v477;
    v61 = v59(v60, v477);
    v62 = v475;
    (v55)(v61);
    swift_beginAccess();
    sub_101270DAC(v62, v474);
    swift_endAccess();
    v59(v62, v43);
    return v43;
  }

  v63 = v58;
  v466 = v12;
  v447 = a8;
  v451 = v56;
  v452 = v55;
  v64 = v477;
  v65 = v476 + 8;
  v66 = *(v476 + 8);
  v67 = v66(v43, v477);
  if (!v63)
  {
    v74 = v482;
    v75 = v473;
    if ((v470 & 1) == 0)
    {
      v78 = v474;
LABEL_113:
      v122 = v475;
      (v452)(v67);
      swift_beginAccess();
      sub_101270DAC(v122, v78);
      swift_endAccess();
      v66(v122, v64);
      return 0;
    }

    v450 = v66;
    v470 = v473 == 0;
    if (a9 >> 60 == 15)
    {
      v471 = 0xF000000000000000;
      v472 = 0;
      v76 = v473 == 0;
      v77 = v466;
    }

    else
    {
      v449 = v65;
      v123 = *v482;
      v124 = swift_conformsToProtocol2();
      if (v124)
      {
        v125 = v124;
        v126 = *(v466 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_crdtContext);
        v127 = v447;
        sub_100024E84(v447, a9);

        v128 = v478;
        sub_100F185A8(v127, a9, 0, 0xF000000000000000, v126, v75 == 2, v123, v125);
        v478 = v128;
        if (v128)
        {

          v132 = sub_100025870(v127, a9);
          v43 = v475;
          (v452)(v132);
          swift_beginAccess();
          sub_101270DAC(v43, v474);
          swift_endAccess();
          v450(v43, v64);
          return v43;
        }

        v157 = v129;
        v471 = v131;
        v472 = v130;
        sub_100025870(v127, a9);
      }

      else
      {
        v144 = v447;
        sub_100024E84(v447, a9);
        v448 = a9;
        if (qword_1019F22B8 != -1)
        {
          swift_once();
        }

        v472 = static OS_os_log.boardItemLifecycle;
        sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
        inited = swift_initStackObject();
        v146 = v482;
        *(inited + 16) = xmmword_10146BDE0;
        (*(*v146 + 464))();
        v147 = sub_1009B6B8C();
        v149 = v148;
        *(inited + 56) = &type metadata for String;
        v150 = sub_1000053B0();
        *(inited + 64) = v150;
        *(inited + 32) = v147;
        *(inited + 40) = v149;
        v151 = v475;
        v452();
        v152 = UUID.uuidString.getter();
        v154 = v153;
        v155 = v151;
        v64 = v477;
        v450(v155, v477);
        *(inited + 96) = &type metadata for String;
        *(inited + 104) = v150;
        *(inited + 72) = v152;
        *(inited + 80) = v154;
        v156 = static os_log_type_t.error.getter();
        sub_100005404(v472, &_mh_execute_header, v156, "Attempting to merge a ckmergeableRecordValue into a board item type (%{public}@) that does not support mergeable capsules. item id: %{public}@", 142, 2, inited);
        sub_100025870(v144, v448);
        swift_setDeallocating();
        sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
        swift_arrayDestroy();
        v157 = 0;
        v471 = 0xF000000000000000;
        v472 = 0;
      }

      v76 = v157 | v470;
      v77 = v466;
      v65 = v449;
      v74 = v482;
    }

    v264 = *(v77 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_crdtContext);
    v265 = v478;
    v266 = (*(*v74 + 520))(v264, 0);
    v268 = v74;
    if (v265)
    {
      v43 = v475;
      (v452)(v266);
      swift_beginAccess();
      sub_101270DAC(v43, v474);
      swift_endAccess();
      sub_100025870(v472, v471);
      v450(v43, v64);
      return v43;
    }

    v468 = v266;
    v469 = v267;
    v467 = (*(*v74 + 528))(v264, 0);
    v270 = v269;
    v271 = (*(*v74 + 536))(v264, 0);
    v449 = v65;
    v354 = v454;
    v464 = v355;
    v462 = v271;
    v356 = (v452)();
    v465 = v270;
    LODWORD(v447) = *(v74 + 56);
    v448 = v74[2];
    v357 = *(*v74 + 272);
    v358 = *(v74 + 3);
    v445 = *(v74 + 5);
    v446 = v358;
    v478 = 0;
    v357(v356);
    v359 = sub_10000C83C(v474, v458, type metadata accessor for CRLBoardIdentifier);
    v360 = (*(*v74 + 464))(v359);
    v363 = sub_100A03BC4(v360, v362, v361 & 0x1FF);
    v460 = v364;
    v461 = v363;
    LODWORD(v453) = v365;
    type metadata accessor for CRLBoardItemDatabaseRow(0);
    v366 = swift_allocObject();
    v367 = v64;
    v368 = OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_parentContainerUUID;
    v369 = v476;
    (*(v476 + 56))(v366 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_parentContainerUUID, 1, 1, v367);
    *(v366 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_commonData) = xmmword_101486780;
    *(v366 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_specificData) = xmmword_101486780;
    *(v366 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_capsuleData) = xmmword_101486780;
    *(v366 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_syncData) = xmmword_101486780;
    *(v366 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_ckMergeableRecordValue) = xmmword_101486780;
    (*(v369 + 32))(v366 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_itemUUID, v354, v367);
    v370 = v366 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_minRequiredVersions;
    v371 = v445;
    *v370 = v446;
    *(v370 + 16) = v371;
    *(v370 + 32) = v447;
    *(v366 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_objectOptions) = v448;
    swift_beginAccess();
    v373 = v468;
    v372 = v469;
    sub_100024E98(v468, v469);
    sub_100024E98(v467, v465);
    sub_100024E84(v462, v464);
    sub_100024E84(v472, v471);
    sub_10002C638(v457, v366 + v368, &qword_1019F6990, &qword_10146D2F0);
    swift_endAccess();
    sub_100025668(v458, v366 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_boardIdentifier, type metadata accessor for CRLBoardIdentifier);
    v374 = v366 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_rawTypeValues;
    v375 = v460;
    *v374 = v461;
    *(v374 + 8) = v375;
    *(v374 + 16) = v453 & 1;
    v376 = (v366 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_commonData);
    v377 = *(v366 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_commonData);
    v378 = *(v366 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_commonData + 8);
    sub_100024E98(v373, v372);
    *v376 = v373;
    v376[1] = v372;
    sub_100025870(v377, v378);
    sub_10002640C(v373, v372);
    v379 = (v366 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_specificData);
    v380 = *(v366 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_specificData);
    v381 = *(v366 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_specificData + 8);
    v382 = v467;
    v383 = v465;
    sub_100024E98(v467, v465);
    *v379 = v382;
    v379[1] = v383;
    sub_100025870(v380, v381);
    sub_10002640C(v382, v383);
    v384 = (v366 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_capsuleData);
    v385 = *(v366 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_capsuleData);
    v386 = *(v366 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_capsuleData + 8);
    v387 = v462;
    v388 = v464;
    sub_100024E84(v462, v464);
    *v384 = v387;
    v384[1] = v388;
    sub_100025870(v385, v386);
    sub_100025870(v387, v388);
    *(v366 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_isLocalTombstone) = 0;
    *(v366 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_unsyncedChanges) = v76;
    v389 = (v366 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_syncData);
    v390 = *(v366 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_syncData);
    v391 = *(v366 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_syncData + 8);
    v392 = v459;
    v393 = v463;
    sub_100024E84(v459, v463);
    *v389 = v392;
    v389[1] = v393;
    v394 = v471;
    sub_100025870(v390, v391);
    v395 = (v366 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_ckMergeableRecordValue);
    v396 = *(v366 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_ckMergeableRecordValue);
    v397 = *(v366 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_ckMergeableRecordValue + 8);
    v398 = v472;
    sub_100024E84(v472, v394);
    *v395 = v398;
    v395[1] = v394;
    sub_100025870(v396, v397);
    sub_100025870(v398, v394);
    v399 = v478;
    sub_100DF5A90(v366);
    if (v399)
    {
      sub_10002640C(v468, v469);
      sub_10002640C(v467, v465);
      sub_100025870(v462, v464);
      swift_setDeallocating();
      sub_100FE3A40();
      v400 = swift_deallocClassInstance();
      v43 = v475;
      (v452)(v400);
      swift_beginAccess();
      sub_101270DAC(v43, v474);
      swift_endAccess();
      sub_100025870(v472, v394);
      v450(v43, v477);
      return v43;
    }

    v476 = v366;
    v404 = (*(*v268 + 664))();
    v405 = (*(*v268 + 672))();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v479[0] = v404;
    sub_100E9CD68(v405, sub_100E8FDF4, 0, isUniquelyReferenced_nonNull_native, v479);
    v478 = 0;

    v407 = v479[0];
    v408 = *(sub_1005B981C(&qword_1019F4720, &qword_101478A30) + 48);
    v409 = v455;
    v452();
    sub_10000C83C(v474, v409 + v408, type metadata accessor for CRLBoardIdentifier);
    swift_storeEnumTagMultiPayload();
    v410 = sub_100BD5554(_swiftEmptyArrayStorage);
    if (*(v410 + 16) || *(v407 + 16))
    {
      v411 = sub_100DF6D54(v410, v407, 0);
      v413 = v412;

      v414 = sub_100EE970C(v413);
      v415 = v478;
      sub_100DF8FA8(v455, v414);
      v478 = v415;
      if (v415)
      {
        sub_10002640C(v468, v469);
        sub_10002640C(v467, v465);
        sub_100025870(v462, v464);

LABEL_241:

        sub_100026028(v455, type metadata accessor for CRLAssetReferrerIdentifier);

        v43 = v475;
        (v452)(v419);
        swift_beginAccess();
        sub_101270DAC(v43, v474);
        swift_endAccess();
        sub_100025870(v472, v471);
        v450(v43, v477);
        return v43;
      }

      v418 = v478;
      sub_100DF9920(v455, v411, v470);
      v478 = v418;
      if (v418)
      {
        sub_10002640C(v468, v469);
        sub_10002640C(v467, v465);
        sub_100025870(v462, v464);

        goto LABEL_241;
      }
    }

    sub_100026028(v455, type metadata accessor for CRLAssetReferrerIdentifier);
    v431 = sub_100BD5554(_swiftEmptyArrayStorage);
    v432 = v482;
    sub_100743DF0();
    sub_100DF52B8(v476, v473, v431, v407, v433);

    sub_10073E718();

    sub_10002640C(v468, v469);
    sub_10002640C(v467, v465);
    v434 = sub_100025870(v462, v464);
    v435 = v475;
    (v452)(v434);
    swift_beginAccess();
    sub_101270DAC(v435, v474);
    swift_endAccess();
    sub_100025870(v472, v471);
    v450(v435, v477);

    return v432;
  }

  v448 = a9;
  v442 = OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_isLocalTombstone;
  LODWORD(v457) = *(v63 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_isLocalTombstone);
  v455 = OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_unsyncedChanges;
  *&v446 = *(v63 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_unsyncedChanges);
  v68 = v63 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_rawTypeValues;
  v69 = sub_100A0557C(*(v63 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_rawTypeValues), *(v63 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_rawTypeValues + 8), *(v63 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_rawTypeValues + 16));
  v72 = v482;
  v73 = v473;
  v458 = v63;
  if ((v71 & 0x10000) == 0)
  {
    if ((v71 & 0x100) != 0)
    {
      if ((v69 | v70 || v71) && (v69 != 1 || v70 || v71) && (v69 != 2 || v70 || v71) && (v69 != 3 || v70 || v71) && (v69 != 4 || v70 || v71) && (v69 != 5 || v70 || v71) && (v69 != 6 || v70 || v71) && (v69 != 7 || v70 || v71) && (v69 != 8 || v70 || v71) && (v69 != 9 || v70 || v71) && (v69 != 10 || v70 || v71))
      {
        goto LABEL_82;
      }
    }

    else if ((v71 & 1) == 0 && v70)
    {
      goto LABEL_82;
    }
  }

  v79 = (*v482 + 464);
  v80 = *v79;
  v81 = (*v79)(v69);
  if ((v83 & 0x100) != 0)
  {
    v63 = v458;
    if ((v81 | v82 || v83) && (v81 != 1 || v82 || v83) && (v81 != 2 || v82 || v83) && (v81 != 3 || v82 || v83) && (v81 != 4 || v82 || v83) && (v81 != 5 || v82 || v83) && (v81 != 6 || v82 || v83) && (v81 != 7 || v82 || v83) && (v81 != 8 || v82 || v83) && (v81 != 9 || v82 || v83) && (v81 != 10 || v82 || v83))
    {
      goto LABEL_49;
    }
  }

  else
  {
    v63 = v458;
    if ((v83 & 1) == 0 && v82)
    {
LABEL_49:
      v84 = v80(v81);
      v63 = v458;
      *v68 = sub_100A03BC4(v84, v86, v85 & 0x1FF);
      *(v68 + 8) = v87;
      *(v68 + 16) = v88 & 1;
    }
  }

LABEL_82:
  v443 = (v63 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_capsuleData);
  v89 = *(v63 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_capsuleData + 8) >> 60;
  v449 = v65;
  v450 = v66;
  if (v89 < 0xF)
  {
    v108 = v73;
    v93 = v472;
  }

  else
  {
    v90 = v478;
    v91 = (*(*v72 + 536))(*(v466 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_crdtContext), 0);
    v478 = v90;
    v93 = v472;
    if (v90)
    {
      v94 = v66;
      if (qword_1019F2258 != -1)
      {
        swift_once();
      }

      v454 = static OS_os_log.boardStore;
      sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
      v95 = swift_initStackObject();
      *(v95 + 16) = xmmword_10146C4D0;
      v96 = v475;
      v97 = v458;
      v98 = v477;
      (*(v476 + 16))(v475, v458 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_itemUUID, v477);
      v99 = UUID.uuidString.getter();
      v101 = v100;
      v94(v96, v98);
      *(v95 + 56) = &type metadata for String;
      v102 = sub_1000053B0();
      *(v95 + 64) = v102;
      *(v95 + 32) = v99;
      *(v95 + 40) = v101;
      v103 = UUID.uuidString.getter();
      *(v95 + 96) = &type metadata for String;
      *(v95 + 104) = v102;
      *(v95 + 72) = v103;
      *(v95 + 80) = v104;
      swift_getErrorValue();
      v105 = Error.localizedDescription.getter();
      v63 = v97;
      *(v95 + 136) = &type metadata for String;
      *(v95 + 144) = v102;
      *(v95 + 112) = v105;
      *(v95 + 120) = v106;
      v107 = static os_log_type_t.error.getter();
      sub_100005404(v454, &_mh_execute_header, v107, "Serializing incoming capsuleData failed when trying to write it in for the database for item %{public}@ in board %{public}@ with error %{public}@", 145, 2, v95);

      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
      swift_arrayDestroy();
      v478 = 0;
      v72 = v482;
      v108 = v473;
      v93 = v472;
    }

    else
    {
      if (v92 >> 60 != 15)
      {
        v109 = v443;
        v110 = *v443;
        v111 = v443[1];
        *v443 = v91;
        v109[1] = v92;
        sub_100025870(v110, v111);
      }

      v63 = v458;
      v108 = v73;
    }
  }

  LODWORD(v454) = a10;
  v112 = sub_100E929EC(v63);
  if (v112)
  {
    v113 = v112;
    LODWORD(v445) = a11;
    if (v108)
    {
      if (v108 == 1)
      {
        v114 = (v446 >> 4) & 1;
        v115 = sub_100DF3C18(v72);
        v116 = v115;
        if (v468 == 2)
        {
          if ((v457 & v114 & 1) == 0)
          {
            if ((v114 & ~v457 & 1) == 0)
            {
              goto LABEL_139;
            }

LABEL_129:
            v444 = 0;
            v116 = v115 | 0x10;
            if ((v457 & 1) == 0)
            {
LABEL_130:
              if (v444)
              {
                v440 = 1;
                v158 = _swiftEmptyDictionarySingleton;
                v444 = 1;
                v159 = _swiftEmptyDictionarySingleton;
                goto LABEL_142;
              }

              goto LABEL_132;
            }

LABEL_141:
            v440 = 1;
            v158 = _swiftEmptyDictionarySingleton;
            v159 = _swiftEmptyDictionarySingleton;
            goto LABEL_142;
          }
        }

        else
        {
          if ((v457 & v114 & 1) == 0)
          {
            if ((v114 & ~v457 & 1) == 0)
            {
LABEL_139:
              v133 = (v470 ^ 1) & v457;
LABEL_140:
              v444 = v133;
              if (v457)
              {
                goto LABEL_141;
              }

              goto LABEL_130;
            }

            if ((v468 & 1) == 0)
            {
              v444 = 0;
              if (v457)
              {
                goto LABEL_141;
              }

              goto LABEL_130;
            }

            goto LABEL_129;
          }

          if (v468)
          {
LABEL_120:
            v133 = 1;
            goto LABEL_140;
          }
        }

        v116 = v115 | 0x10;
        goto LABEL_120;
      }

      v116 = 0;
      if (v457)
      {
        v444 = 0;
        goto LABEL_141;
      }
    }

    else
    {
      v121 = sub_100DF3C18(v112);
      v116 = v121 | v446;
      if (v457)
      {
        v444 = v470 ^ 1;
        if (v470)
        {
          v116 |= 0x10uLL;
        }

        goto LABEL_141;
      }
    }

LABEL_132:
    v160 = (*(*v72 + 544))(v113);
    v159 = _swiftEmptyDictionarySingleton;
    v470 = v116;
    if (v160)
    {
      v161 = (*(*v113 + 664))();
      v162 = swift_isUniquelyReferenced_nonNull_native();
      v479[0] = _swiftEmptyDictionarySingleton;
      v163 = v478;
      sub_100E9CD68(v161, sub_100E8FDF4, 0, v162, v479);

      v165 = v479[0];
      v166 = (*(*v72 + 664))(v164);
      v167 = swift_isUniquelyReferenced_nonNull_native();
      v479[0] = _swiftEmptyDictionarySingleton;
      sub_100E9CD68(v166, sub_100E8FDF4, 0, v167, v479);
      v478 = v163;

      v158 = v479[0];
      v108 = v473;
      v159 = v165;
    }

    else
    {
      v158 = _swiftEmptyDictionarySingleton;
    }

    if ((*(*v72 + 552))(v113))
    {
      v168 = (*(*v113 + 672))();
      v169 = swift_isUniquelyReferenced_nonNull_native();
      v479[0] = v159;
      v170 = v478;
      sub_100E9CD68(v168, sub_100E8FDF4, 0, v169, v479);

      v172 = v479[0];
      v173 = (*(*v72 + 672))(v171);
      v174 = swift_isUniquelyReferenced_nonNull_native();
      v479[0] = v158;
      v159 = v172;
      sub_100E9CD68(v173, sub_100E8FDF4, 0, v174, v479);
      v478 = v170;

      v440 = 0;
      v444 = 0;
      v158 = v479[0];
    }

    else
    {
      v440 = 0;
      v444 = 0;
    }

    v116 = v470;
    v93 = v472;
LABEL_142:
    v439 = sub_10073E718();
    (*(*v113 + 272))();
    v468 = v159;
    if (v108 == 2)
    {
      if (v448 >> 60 == 15)
      {
        v448 = 0;
        *&v446 = 0xF000000000000000;
        goto LABEL_162;
      }

      v175 = *v72;
      v176 = swift_conformsToProtocol2();
      v470 = v116;
      v441 = v158;
      if (v176)
      {
        v177 = v176;
        v178 = *(v466 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_crdtContext);
        v180 = v447;
        v179 = v448;
        sub_100024E84(v447, v448);

        v181 = v478;
        sub_100F185A8(v180, v179, 0, 0xF000000000000000, v178, 1, v175, v177);
        v478 = v181;
        if (v181)
        {
          sub_100025870(v180, v179);

          sub_10000CAAC(v471, &qword_1019F6990, &qword_10146D2F0);

          goto LABEL_150;
        }

        v210 = v182;
        v225 = v183;
        *&v446 = v184;
        sub_100025870(v180, v179);

        v448 = v225;
      }

      else
      {
        v199 = v447;
        sub_100024E84(v447, v448);
        if (qword_1019F22B8 != -1)
        {
          swift_once();
        }

        v476 = static OS_os_log.boardItemLifecycle;
        sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
        v200 = swift_initStackObject();
        *(v200 + 16) = xmmword_10146BDE0;
        (*(*v72 + 464))();
        v201 = sub_1009B6B8C();
        v203 = v202;
        *(v200 + 56) = &type metadata for String;
        v204 = sub_1000053B0();
        *(v200 + 64) = v204;
        *(v200 + 32) = v201;
        *(v200 + 40) = v203;
        v205 = v475;
        v452();
        v206 = UUID.uuidString.getter();
        v208 = v207;
        v450(v205, v477);
        *(v200 + 96) = &type metadata for String;
        *(v200 + 104) = v204;
        *(v200 + 72) = v206;
        *(v200 + 80) = v208;
        v72 = v482;
        v209 = static os_log_type_t.error.getter();
        sub_100005404(v476, &_mh_execute_header, v209, "Attempting to merge a ckmergeableRecordValue into a board item type (%{public}@) that does not support mergeable capsules. item id: %{public}@", 142, 2, v200);
        sub_100025870(v199, v448);
        swift_setDeallocating();
        sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
        swift_arrayDestroy();
        v210 = 0;
        v448 = 0;
        *&v446 = 0xF000000000000000;
      }

      v158 = v441;
      v116 = v210 | v470;
      v93 = v472;
LABEL_162:
      v226 = *(*v72 + 272);
      v227 = swift_retain_n();
      v228 = v226(v227);
      v43 = v72;
      if (!v457)
      {
        goto LABEL_185;
      }

      goto LABEL_184;
    }

    v470 = v116;
    v441 = v158;
    if (v448 >> 60 == 15)
    {
      v448 = 0;
      *&v446 = 0xF000000000000000;
    }

    else
    {
      v186 = *(v458 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_ckMergeableRecordValue);
      v185 = *(v458 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_ckMergeableRecordValue + 8);
      v187 = *v113;
      v188 = swift_conformsToProtocol2();
      if (v188)
      {
        v189 = v188;
        v190 = v185;
        *&v446 = *(v466 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_crdtContext);
        v191 = v447;
        v192 = v186;
        v193 = v448;
        sub_100024E84(v447, v448);
        sub_100024E84(v192, v190);

        v194 = v478;
        sub_100F185A8(v191, v193, v192, v190, v446, 0, v187, v189);
        if (v194)
        {
          sub_100025870(v191, v193);

          sub_100025870(v192, v190);

          sub_10000CAAC(v471, &qword_1019F6990, &qword_10146D2F0);

          v43 = v475;
          (v452)(v198);
          swift_beginAccess();
          sub_101270DAC(v43, v474);
          swift_endAccess();
          v450(v43, v477);
          return v43;
        }

        v223 = v196;
        v224 = v197;
        v478 = 0;
        v229 = v195;
        sub_100025870(v191, v193);
        sub_100025870(v192, v190);

        v222 = v229;
      }

      else
      {
        v211 = v447;
        sub_100024E84(v447, v448);
        sub_100024E84(v186, v185);
        *&v446 = v185;
        v438 = v186;
        if (qword_1019F22B8 != -1)
        {
          swift_once();
        }

        v437 = static OS_os_log.boardItemLifecycle;
        sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
        v212 = swift_initStackObject();
        *(v212 + 16) = xmmword_10146BDE0;
        (*(*v113 + 464))();
        v213 = sub_1009B6B8C();
        v215 = v214;
        *(v212 + 56) = &type metadata for String;
        v216 = sub_1000053B0();
        *(v212 + 64) = v216;
        *(v212 + 32) = v213;
        *(v212 + 40) = v215;
        v217 = v475;
        (*(*v113 + 264))();
        v218 = UUID.uuidString.getter();
        v220 = v219;
        v450(v217, v477);
        *(v212 + 96) = &type metadata for String;
        *(v212 + 104) = v216;
        *(v212 + 72) = v218;
        *(v212 + 80) = v220;
        v221 = static os_log_type_t.error.getter();
        sub_100005404(v437, &_mh_execute_header, v221, "Attempting to merge a ckmergeableRecordValue into a board item type (%{public}@) that does not support mergeable capsules. item id: %{public}@", 142, 2, v212);
        sub_100025870(v211, v448);
        sub_100025870(v438, v446);
        swift_setDeallocating();
        sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
        swift_arrayDestroy();
        v222 = 0;
        v223 = 0;
        v224 = 0xF000000000000000;
      }

      *&v446 = v224;
      v448 = v223;
      v470 |= v222;
      v108 = v473;
      v93 = v472;
    }

    v447 = v113 & 0xFFFFFFFFFFFFLL | 0x6AE1000000000000;
    v230 = *(*v113 + 496);
    swift_retain_n();
    v231 = v482;
    v230(v482);
    (*(*v113 + 488))(v231);
    (*(*v113 + 480))(v231);
    v232 = *(v231 + 5);
    v480[0] = *(v231 + 3);
    v480[1] = v232;
    v481 = *(v231 + 56);
    v233 = sub_10073E870(v480, v231[2]);
    (*(*v113 + 272))(v233);
    v234 = *(v469 + 48);
    v235 = (v476 + 48);
    if (v108)
    {
      v236 = v467;
      sub_10000BE14(v471, v467, &qword_1019F6990, &qword_10146D2F0);
      sub_10000BE14(v93, v236 + v234, &qword_1019F6990, &qword_10146D2F0);
      v237 = *v235;
      if ((*v235)(v236, 1, v477) == 1)
      {
        v238 = v237(v236 + v234, 1, v477);
        v93 = v472;
        v158 = v441;
        if (v238 == 1)
        {
          v228 = sub_10000CAAC(v236, &qword_1019F6990, &qword_10146D2F0);
          v116 = v470;
LABEL_182:
          v116 &= ~2uLL;
          goto LABEL_183;
        }
      }

      else
      {
        v244 = v464;
        sub_10000BE14(v236, v464, &qword_1019F6990, &qword_10146D2F0);
        if (v237(v236 + v234, 1, v477) != 1)
        {
          v246 = v236 + v234;
          v247 = v236;
          v248 = v475;
          v249 = v244;
          v250 = v477;
          (*(v476 + 32))(v475, v246, v477);
          sub_1000066D0(&qword_1019F37C0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v251 = dispatch thunk of static Equatable.== infix(_:_:)();
          v252 = v248;
          v253 = v450;
          v450(v252, v250);
          v253(v249, v250);
          v228 = sub_10000CAAC(v247, &qword_1019F6990, &qword_10146D2F0);
          v93 = v472;
          v158 = v441;
          v116 = v470;
          if ((v251 & 1) == 0)
          {
            goto LABEL_183;
          }

          goto LABEL_182;
        }

        v450(v244, v477);
        v93 = v472;
        v158 = v441;
      }

      v242 = &unk_101A0AFE0;
      v243 = &unk_10146F3C0;
LABEL_176:
      v228 = sub_10000CAAC(v236, v242, v243);
      v43 = v113;
      v116 = v470;
      if (!v457)
      {
        goto LABEL_185;
      }

LABEL_184:
      if ((v444 & 1) == 0)
      {
        v255 = (*(*v43 + 664))(v228);
        v256 = swift_isUniquelyReferenced_nonNull_native();
        v470 = v116;
        v479[0] = v158;
        v257 = v478;
        sub_100E9CD68(v255, sub_100E8FDF4, 0, v256, v479);

        v259 = v479[0];
        v260 = (*(*v43 + 672))(v258);
        v261 = swift_isUniquelyReferenced_nonNull_native();
        v479[0] = v259;
        sub_100E9CD68(v260, sub_100E8FDF4, 0, v261, v479);
        v478 = v257;

        sub_10000CAAC(v93, &qword_1019F6990, &qword_10146D2F0);
        sub_10000CAAC(v471, &qword_1019F6990, &qword_10146D2F0);
        v158 = v479[0];
        v254 = v470;
        v440 = 1;
LABEL_187:
        v262 = v466;
        v263 = v458;
        if ((v454 & 1) == 0)
        {
          goto LABEL_204;
        }

        goto LABEL_203;
      }

LABEL_185:

      v254 = v116;
      sub_10000CAAC(v93, &qword_1019F6990, &qword_10146D2F0);
      sub_10000CAAC(v471, &qword_1019F6990, &qword_10146D2F0);
      goto LABEL_187;
    }

    v239 = v465;
    sub_10000BE14(v471, v465, &qword_1019F6990, &qword_10146D2F0);
    v236 = v239;
    sub_10000BE14(v93, v239 + v234, &qword_1019F6990, &qword_10146D2F0);
    v240 = *v235;
    if ((*v235)(v239, 1, v477) == 1)
    {
      v241 = v240(v239 + v234, 1, v477);
      v93 = v472;
      v158 = v441;
      if (v241 == 1)
      {
        v242 = &qword_1019F6990;
        v243 = &qword_10146D2F0;
        goto LABEL_176;
      }
    }

    else
    {
      v245 = v462;
      sub_10000BE14(v239, v462, &qword_1019F6990, &qword_10146D2F0);
      if (v240(v239 + v234, 1, v477) != 1)
      {
        v285 = v475;
        v286 = v245;
        v287 = v477;
        (*(v476 + 32))(v475, v239 + v234, v477);
        sub_1000066D0(&qword_1019F37C0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v288 = dispatch thunk of static Equatable.== infix(_:_:)();
        v289 = v285;
        v290 = v450;
        v450(v289, v287);
        v290(v286, v287);
        v228 = sub_10000CAAC(v239, &qword_1019F6990, &qword_10146D2F0);
        v93 = v472;
        v158 = v441;
        v116 = v470;
        if ((v288 & 1) == 0)
        {
          v116 = v470 | 2;
        }

LABEL_183:
        v43 = v113;
        if (!v457)
        {
          goto LABEL_185;
        }

        goto LABEL_184;
      }

      v450(v245, v477);
      v93 = v472;
      v158 = v441;
    }

    v228 = sub_10000CAAC(v239, &unk_101A0AFE0, &unk_10146F3C0);
    v116 = v470 | 2;
    goto LABEL_183;
  }

  if ((v470 & 1) == 0)
  {

    v64 = v477;
    v78 = v474;
    v66 = v450;
    goto LABEL_113;
  }

  v117 = v446 | 1;
  if (v457)
  {
    v117 = 16;
  }

  if (v108)
  {
    v118 = 0;
  }

  else
  {
    v118 = v117;
  }

  v119 = v448;
  LODWORD(v445) = a11;
  v470 = v118;
  if (v448 >> 60 == 15)
  {

    v448 = 0;
    *&v446 = 0xF000000000000000;
  }

  else
  {
    v134 = *v72;
    v135 = swift_conformsToProtocol2();
    if (v135)
    {
      v136 = v135;
      v137 = *(v466 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_crdtContext);
      v138 = v447;
      sub_100024E84(v447, v119);

      v139 = v478;
      sub_100F185A8(v138, v119, 0, 0xF000000000000000, v137, v108 == 2, v134, v136);
      v478 = v139;
      if (v139)
      {

        sub_100025870(v138, v119);

LABEL_150:
        v43 = v475;
        (v452)(v143);
        swift_beginAccess();
        sub_101270DAC(v43, v474);
        swift_endAccess();
LABEL_220:
        v450(v43, v477);
        return v43;
      }

      v284 = v140;
      v291 = v141;
      *&v446 = v142;
      v120 = sub_100025870(v138, v119);
      v448 = v291;
    }

    else
    {
      v272 = v447;
      sub_100024E84(v447, v119);
      v273 = qword_1019F22B8;

      if (v273 != -1)
      {
        swift_once();
      }

      v476 = static OS_os_log.boardItemLifecycle;
      sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
      v274 = swift_initStackObject();
      *(v274 + 16) = xmmword_10146BDE0;
      (*(*v72 + 464))();
      v275 = sub_1009B6B8C();
      v277 = v276;
      *(v274 + 56) = &type metadata for String;
      v278 = sub_1000053B0();
      *(v274 + 64) = v278;
      *(v274 + 32) = v275;
      *(v274 + 40) = v277;
      v279 = v475;
      v452();
      v280 = UUID.uuidString.getter();
      v282 = v281;
      v450(v279, v477);
      *(v274 + 96) = &type metadata for String;
      *(v274 + 104) = v278;
      v72 = v482;
      *(v274 + 72) = v280;
      *(v274 + 80) = v282;
      v283 = static os_log_type_t.error.getter();
      sub_100005404(v476, &_mh_execute_header, v283, "Attempting to merge a ckmergeableRecordValue into a board item type (%{public}@) that does not support mergeable capsules. item id: %{public}@", 142, 2, v274);
      sub_100025870(v272, v448);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
      v120 = swift_arrayDestroy();
      v284 = 0;
      v448 = 0;
      *&v446 = 0xF000000000000000;
    }

    v470 |= v284;
  }

  v292 = (*(*v72 + 664))(v120);
  v293 = swift_isUniquelyReferenced_nonNull_native();
  v468 = _swiftEmptyDictionarySingleton;
  v479[0] = _swiftEmptyDictionarySingleton;
  v294 = v478;
  sub_100E9CD68(v292, sub_100E8FDF4, 0, v293, v479);

  v296 = v479[0];
  v297 = (*(*v72 + 672))(v295);
  v298 = swift_isUniquelyReferenced_nonNull_native();
  v479[0] = v296;
  sub_100E9CD68(v297, sub_100E8FDF4, 0, v298, v479);
  v478 = v294;

  v158 = v479[0];
  if ((v454 & 1) == 0)
  {
    v299 = v479[0];
    v439 = 0;
    v444 = 0;
    v468 = _swiftEmptyDictionarySingleton;
    v440 = 1;
    v43 = v72;
    v263 = v458;
    v254 = v470;
    v262 = v466;
    if ((v445 & 1) == 0)
    {
      goto LABEL_206;
    }

    goto LABEL_205;
  }

  v444 = 0;
  v439 = 0;
  v440 = 1;
  v43 = v72;
  v263 = v458;
  v254 = v470;
  v262 = v466;
LABEL_203:
  v254 = *(v455 + v263) & 0xFFFFFFFFFFFFFDFFLL | (((v254 >> 9) & 1) << 9);
LABEL_204:
  v299 = v158;
  if (v445)
  {
LABEL_205:
    v254 = v254 & 0xFFFFFFFFFFFFFDFFLL | (((*(v455 + v263) >> 9) & 1) << 9);
  }

LABEL_206:
  v300 = v43[56];
  v301 = v263 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_minRequiredVersions;
  v302 = *(v43 + 40);
  *v301 = *(v43 + 24);
  *(v301 + 16) = v302;
  *(v301 + 32) = v300;
  *(v263 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_objectOptions) = *(v43 + 2);
  v303 = *(v262 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_crdtContext);
  v304 = v478;
  v305 = (*(*v43 + 520))(v303, 0);
  if (v304)
  {

    v43 = v475;
    (v452)(v307);
    swift_beginAccess();
    sub_101270DAC(v43, v474);
    swift_endAccess();
    sub_100025870(v448, v446);
    v450(v43, v477);
    return v43;
  }

  v308 = (v263 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_commonData);
  v309 = *(v263 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_commonData);
  v310 = *(v263 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_commonData + 8);
  *v308 = v305;
  v308[1] = v306;
  sub_100025870(v309, v310);
  v311 = (*(*v43 + 528))(v303, 0);
  v312 = (v263 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_specificData);
  v313 = *(v263 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_specificData);
  v314 = *(v263 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_specificData + 8);
  *v312 = v311;
  v312[1] = v315;
  sub_100025870(v313, v314);
  v316 = (*(*v43 + 536))(v303, 0);
  v478 = 0;
  v318 = v299;
  v319 = v443;
  v320 = *v443;
  v321 = v443[1];
  *v443 = v316;
  v319[1] = v317;
  v322 = sub_100025870(v320, v321);
  v323 = v460;
  (*(*v43 + 272))(v322);
  v324 = OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_parentContainerUUID;
  swift_beginAccess();
  sub_10002C638(v323, v263 + v324, &qword_1019F6990, &qword_10146D2F0);
  swift_endAccess();
  *(v455 + v263) = v254;
  *(v263 + v442) = v444 & 1;
  v325 = (v263 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_ckMergeableRecordValue);
  v326 = *(v263 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_ckMergeableRecordValue);
  v327 = *(v263 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_ckMergeableRecordValue + 8);
  v328 = v448;
  v329 = v446;
  *v325 = v448;
  v325[1] = v329;
  sub_100024E84(v328, v329);
  v330 = sub_100025870(v326, v327);
  v331 = v463;
  v332 = v482;
  if (v463 >> 60 != 15)
  {
    v333 = v459;
    v334 = (v458 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_syncData);
    v335 = *(v458 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_syncData);
    v336 = *(v458 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_syncData + 8);
    *v334 = v459;
    v334[1] = v331;
    sub_100024E98(v333, v331);
    v330 = sub_100025870(v335, v336);
  }

  if (v473)
  {
    v337 = (*(*v332 + 664))(v330);
    v338 = sub_100DCB0EC(v337);
    v339 = (*(*v332 + 672))();
    v340 = sub_100DCB0EC(v339);
    v341 = sub_1010ACCC0(v340, v338);

    v51 = sub_1012D944C(v342, v341);
  }

  else
  {
    v51 = _swiftEmptySetSingleton;
  }

  v343 = v478;
  sub_100DF3D48(v458);
  v478 = v343;
  if (v343)
  {

    v43 = v475;
    (v452)(v344);
    swift_beginAccess();
    sub_101270DAC(v43, v474);
    swift_endAccess();
    sub_100025870(v328, v446);
    goto LABEL_220;
  }

  v346 = v450;
  v12 = sub_1005B981C(&qword_1019F4720, &qword_101478A30);
  v347 = *(v12 + 48);
  v348 = (*v43 + 264);
  v349 = *v348;
  v441 = v318;
  v350 = v461;
  v476 = v349;
  v472 = v348;
  v349();
  sub_10000C83C(v474, v350 + v347, type metadata accessor for CRLBoardIdentifier);
  v351 = v441;
  swift_storeEnumTagMultiPayload();
  if (!*(v468 + 16) && ((*(v351 + 16) == 0) & ~v440) != 0)
  {
    goto LABEL_243;
  }

  v352 = v440;
  v48 = sub_100DF6D54(v468, v351, v440);
  if (v352)
  {
    v353 = v478;
    sub_100DF8718(v461);
    v478 = v353;
    if (v353)
    {
      goto LABEL_238;
    }

    goto LABEL_237;
  }

  v402 = sub_100EE970C(v401);
  v403 = v478;
  sub_100DF8FA8(v461, v402);
  v478 = v403;
  if (v403)
  {

LABEL_238:

    sub_100026028(v461, type metadata accessor for CRLAssetReferrerIdentifier);

    v43 = v475;
    (v452)(v417);
    swift_beginAccess();
    sub_101270DAC(v43, v474);
    swift_endAccess();
    sub_100025870(v448, v446);
    v450(v43, v477);
    return v43;
  }

LABEL_236:

LABEL_237:
  v416 = v478;
  sub_100DF9920(v461, v48, 1);
  v478 = v416;
  if (v416)
  {
    goto LABEL_238;
  }

  v346 = v450;
LABEL_243:
  v420 = sub_100026028(v461, type metadata accessor for CRLAssetReferrerIdentifier);
  v421 = *(v12 + 48);
  v422 = v453;
  (v476)(v420);
  v423 = v474;
  sub_10000C83C(v474, v422 + v421, type metadata accessor for CRLBoardIdentifier);
  swift_storeEnumTagMultiPayload();
  v424 = sub_100EE979C(v51);
  v425 = v478;
  sub_100DF4A2C(v422, v424, 0);
  v478 = v425;
  sub_100026028(v422, type metadata accessor for CRLAssetReferrerIdentifier);

  if (v425)
  {

    v43 = v475;
    (v452)(v426);
    swift_beginAccess();
    sub_101270DAC(v43, v423);
    swift_endAccess();
    sub_100025870(v448, v446);
    v346(v43, v477);
  }

  else
  {
    sub_100743DF0();
    sub_100DF52B8(v458, v473, v468, v441, v427);

    sub_10073E718();
    v428 = v477;

    v430 = v475;
    (v452)(v429);
    swift_beginAccess();
    sub_101270DAC(v430, v423);
    swift_endAccess();
    sub_100025870(v448, v446);
    v450(v430, v428);
  }

  return v43;
}

uint64_t sub_100DF3C18(void *a1)
{
  if ((*(*v1 + 544))())
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  if ((*(*v1 + 552))(a1))
  {
    v3 |= 8uLL;
  }

  v4 = (*(*v1 + 560))(a1);
  v5 = v3 | 0x200;
  if ((v4 & 1) == 0)
  {
    v5 = v3;
  }

  if (v1[3] != a1[3])
  {
    v5 |= 0x20uLL;
  }

  if (v1[4] != a1[4])
  {
    v5 |= 0x80uLL;
  }

  if (v1[5] != a1[5])
  {
    v5 |= 0x100uLL;
  }

  if (v1[2] == a1[2])
  {
    return v5;
  }

  else
  {
    return v5 | 0x40;
  }
}

double sub_100DF3D48(uint64_t a1)
{
  v3 = type metadata accessor for UUID();
  v114 = *(v3 - 8);
  __chkstk_darwin(v3);
  v113 = &v110 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1005B981C(&qword_1019F6990, &qword_10146D2F0);
  __chkstk_darwin(v5 - 8);
  v7 = &v110 - v6;
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = (&v110 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(v1 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue);
  *v12 = v13;
  v14 = *(v9 + 104);
  v118 = enum case for DispatchPredicate.onQueue(_:);
  v119 = v14;
  v120 = v9 + 104;
  v14(v12, v10);
  v15 = v13;
  LOBYTE(v13) = _dispatchPreconditionTest(_:)();
  v18 = *(v9 + 8);
  v16 = v9 + 8;
  v17 = v18;
  v18(v12, v8);
  if ((v13 & 1) == 0)
  {
    __break(1u);
    goto LABEL_23;
  }

  v112 = v3;
  v117 = v17;
  v115 = v16;
  v121 = 0;
  v122 = 0xE000000000000000;
  _StringGuts.grow(_:)(151);
  v19._countAndFlagsBits = 0x20455441445055;
  v19._object = 0xE700000000000000;
  String.append(_:)(v19);
  v20._countAndFlagsBits = 0x74695F6472616F62;
  v20._object = 0xEB00000000736D65;
  String.append(_:)(v20);
  v21._countAndFlagsBits = 0x2054455320;
  v21._object = 0xE500000000000000;
  String.append(_:)(v21);
  v22._countAndFlagsBits = 0x755F746E65726170;
  v22._object = 0xEB00000000646975;
  String.append(_:)(v22);
  v23._countAndFlagsBits = 0x202C3F203D20;
  v23._object = 0xE600000000000000;
  String.append(_:)(v23);
  v24._countAndFlagsBits = 0x645F6E6F6D6D6F63;
  v24._object = 0xEB00000000617461;
  String.append(_:)(v24);
  v25._countAndFlagsBits = 0x202C3F203D20;
  v25._object = 0xE600000000000000;
  String.append(_:)(v25);
  v26._countAndFlagsBits = 0x6369666963657073;
  v26._object = 0xED0000617461645FLL;
  String.append(_:)(v26);
  v27._countAndFlagsBits = 0x202C3F203D20;
  v27._object = 0xE600000000000000;
  String.append(_:)(v27);
  v28._countAndFlagsBits = 0x6E6F7473626D6F74;
  v28._object = 0xEA00000000006465;
  String.append(_:)(v28);
  v29._countAndFlagsBits = 0x202C3F203D20;
  v29._object = 0xE600000000000000;
  String.append(_:)(v29);
  v30._object = 0x80000001015A33D0;
  v30._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v30);
  v31._countAndFlagsBits = 0x202C3F203D20;
  v31._object = 0xE600000000000000;
  String.append(_:)(v31);
  v32._countAndFlagsBits = 0x7461645F636E7973;
  v32._object = 0xE900000000000061;
  String.append(_:)(v32);
  v33._countAndFlagsBits = 0x202C3F203D20;
  v33._object = 0xE600000000000000;
  String.append(_:)(v33);
  v34._countAndFlagsBits = 0xD000000000000014;
  v34._object = 0x80000001015A3590;
  String.append(_:)(v34);
  v35._countAndFlagsBits = 0x202C3F203D20;
  v35._object = 0xE600000000000000;
  String.append(_:)(v35);
  v36._countAndFlagsBits = 0x6F5F7463656A626FLL;
  v36._object = 0xEE00736E6F697470;
  String.append(_:)(v36);
  v37._countAndFlagsBits = 0x202C3F203D20;
  v37._object = 0xE600000000000000;
  String.append(_:)(v37);
  v38._countAndFlagsBits = 0xD00000000000002DLL;
  v38._object = 0x80000001015A3760;
  String.append(_:)(v38);
  v39._countAndFlagsBits = 0x202C3F203D20;
  v39._object = 0xE600000000000000;
  String.append(_:)(v39);
  v40._countAndFlagsBits = 0xD000000000000026;
  v40._object = 0x80000001015A33F0;
  String.append(_:)(v40);
  v41._countAndFlagsBits = 0x202C3F203D20;
  v41._object = 0xE600000000000000;
  String.append(_:)(v41);
  v42._countAndFlagsBits = 0xD00000000000001BLL;
  v42._object = 0x80000001015A3790;
  String.append(_:)(v42);
  v43._countAndFlagsBits = 0x202C3F203D20;
  v43._object = 0xE600000000000000;
  String.append(_:)(v43);
  v44._countAndFlagsBits = 0x6D6574695F627573;
  v44._object = 0xED0000657079745FLL;
  String.append(_:)(v44);
  v45._countAndFlagsBits = 0x202C3F203D20;
  v45._object = 0xE600000000000000;
  String.append(_:)(v45);
  v46._countAndFlagsBits = 0x5F656C7573706163;
  v46._object = 0xEC00000061746164;
  String.append(_:)(v46);
  v47._countAndFlagsBits = 0x202C3F203D20;
  v47._object = 0xE600000000000000;
  String.append(_:)(v47);
  v48._countAndFlagsBits = 0xD000000000000019;
  v48._object = 0x80000001015A37B0;
  String.append(_:)(v48);
  v49._countAndFlagsBits = 0x48570A203F203D20;
  v49._object = 0xED00002820455245;
  String.append(_:)(v49);
  v50._countAndFlagsBits = 0x6975755F6D657469;
  v50._object = 0xE900000000000064;
  String.append(_:)(v50);
  v51._countAndFlagsBits = 0x444E41203F203D20;
  v51._object = 0xE900000000000020;
  String.append(_:)(v51);
  v52._object = 0x8000000101585360;
  v52._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v52);
  v53._countAndFlagsBits = 0x293F203D20;
  v53._object = 0xE500000000000000;
  String.append(_:)(v53);
  v54 = v121;
  v55 = v122;
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v57 = v116;
  v58 = sub_10001CC04(v56, v54, v55);

  if (v57)
  {
    return result;
  }

  v60 = OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_parentContainerUUID;
  swift_beginAccess();
  sub_10000BE14(a1 + v60, v7, &qword_1019F6990, &qword_10146D2F0);
  sub_10089BD40(v7, 1);
  sub_10000CAAC(v7, &qword_1019F6990, &qword_10146D2F0);
  v61 = *(a1 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_commonData);
  v62 = *(a1 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_commonData + 8);
  sub_100024E84(v61, v62);
  sub_10089BB64(v61, v62, 2);
  sub_100025870(v61, v62);
  v63 = *(a1 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_specificData);
  v64 = *(a1 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_specificData + 8);
  sub_100024E84(v63, v64);
  sub_10089BB64(v63, v64, 3);
  sub_100025870(v63, v64);
  sub_10089B9A4(*(a1 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_isLocalTombstone), 4);
  sub_100034254(*(a1 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_unsyncedChanges), 5);
  v65 = *(a1 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_syncData);
  v66 = *(a1 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_syncData + 8);
  sub_100024E84(v65, v66);
  sub_10089BB64(v65, v66, 6);
  sub_100025870(v65, v66);
  v67 = a1 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_minRequiredVersions;
  sub_100034254(*(a1 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_minRequiredVersions), 7);
  sub_100034254(*(a1 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_objectOptions), 8);
  sub_100034254(*(v67 + 8), 9);
  sub_100034254(*(v67 + 16), 10);
  v68 = *(v67 + 32);
  v116 = 0;
  if (v68)
  {
    v69 = *(*(v58 + 16) + 32);
    *v12 = v69;
    v119(v12, v118, v8);
    v70 = v69;
    LOBYTE(v69) = _dispatchPreconditionTest(_:)();
    v117(v12, v8);
    v71 = v114;
    if ((v69 & 1) == 0)
    {
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    v72 = v8;
    swift_beginAccess();
    sqlite3_bind_null(*(v58 + 24), 11);
  }

  else
  {
    v72 = v8;
    sub_100034254(*(v67 + 24), 11);
    v71 = v114;
  }

  sub_10089C088(*(a1 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_rawTypeValues + 8), *(a1 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_rawTypeValues + 16), 12);
  v73 = *(a1 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_capsuleData);
  v74 = *(a1 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_capsuleData + 8);
  sub_100024E84(v73, v74);
  sub_10089BB64(v73, v74, 13);
  sub_100025870(v73, v74);
  v75 = *(a1 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_ckMergeableRecordValue);
  v76 = *(a1 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_ckMergeableRecordValue + 8);
  sub_100024E84(v75, v76);
  sub_10089BB64(v75, v76, 14);
  sub_100025870(v75, v76);
  v77 = *(v71 + 16);
  v114 = a1;
  v78 = v113;
  v79 = v112;
  v80 = v77(v113, a1 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_itemUUID, v112);
  v81 = UUID.crl_data()(v80);
  v83 = v82;
  v84 = *(*(v58 + 16) + 32);
  *v12 = v84;
  v119(v12, v118, v72);
  v85 = v84;
  LOBYTE(v84) = _dispatchPreconditionTest(_:)();
  v111 = v72;
  v117(v12, v72);
  if ((v84 & 1) == 0)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v86 = v116;
  sub_100DCCAB4(v81, v83, v58, 15);
  sub_10002640C(v81, v83);
  (*(v71 + 8))(v78, v79);
  v87 = v114 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_boardIdentifier;
  v88 = type metadata accessor for CRLBoardIdentifierStorage(0);
  v89 = sub_10084DAE4(v87, *(v87 + *(v88 + 20)), *(v87 + *(v88 + 20) + 8));
  v116 = v90;
  if (v86)
  {
    v91 = *(*(v58 + 16) + 32);
    *v12 = v91;
    v92 = v111;
    v119(v12, v118, v111);
    v93 = v91;
    LOBYTE(v91) = _dispatchPreconditionTest(_:)();
    v89 = (v117)(v12, v92);
    if (v91)
    {
      goto LABEL_18;
    }

    __break(1u);
  }

  v94 = v89;
  v95 = *(*(v58 + 16) + 32);
  *v12 = v95;
  v96 = v118;
  v97 = v111;
  v119(v12, v118, v111);
  v98 = v95;
  LOBYTE(v95) = _dispatchPreconditionTest(_:)();
  v99 = v117;
  v117(v12, v97);
  if ((v95 & 1) == 0)
  {
    goto LABEL_25;
  }

  v114 = v94;
  sub_100DCCAB4(v94, v116, v58, 16);
  v100 = *(*(v58 + 16) + 32);
  *v12 = v100;
  v119(v12, v96, v97);
  v101 = v100;
  LOBYTE(v100) = _dispatchPreconditionTest(_:)();
  v99(v12, v97);
  if ((v100 & 1) == 0)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
  }

  v102 = *(v58 + 16);

  v103 = sub_10001CEC4(v102, v58);

  if (v103 == 101)
  {
    sub_10002640C(v114, v116);
    v104 = *(*(v58 + 16) + 32);
    *v12 = v104;
    v119(v12, v118, v97);
    v105 = v104;
    LOBYTE(v104) = _dispatchPreconditionTest(_:)();
    v117(v12, v97);
    if (v104)
    {
      swift_beginAccess();
      v106 = *(v58 + 24);
      if (v106)
      {
        goto LABEL_19;
      }

      goto LABEL_20;
    }

    goto LABEL_27;
  }

  sub_10089C7D0();
  swift_allocError();
  *v107 = v103;
  *(v107 + 8) = 0xD00000000000001BLL;
  *(v107 + 16) = 0x80000001015A4F00;
  swift_willThrow();
  sub_10002640C(v114, v116);
  v108 = *(*(v58 + 16) + 32);
  *v12 = v108;
  v119(v12, v118, v97);
  v109 = v108;
  LOBYTE(v108) = _dispatchPreconditionTest(_:)();
  v117(v12, v97);
  if ((v108 & 1) == 0)
  {
    goto LABEL_28;
  }

LABEL_18:
  swift_beginAccess();
  v106 = *(v58 + 24);
  if (v106)
  {
LABEL_19:
    sqlite3_finalize(v106);
    *(v58 + 24) = 0;
  }

LABEL_20:

  return result;
}

double sub_100DF4A2C(uint64_t a1, uint64_t a2, void (**a3)(char *, uint64_t))
{
  v79 = a3;
  v81 = type metadata accessor for String.Encoding();
  v6 = *(v81 - 8);
  __chkstk_darwin(v81);
  v80 = v77 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = (v77 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(v3 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue);
  *v12 = v13;
  v14 = *(v9 + 104);
  v82 = enum case for DispatchPredicate.onQueue(_:);
  v83 = v14;
  v84 = v9 + 104;
  v14(v12, v10);
  v15 = v13;
  v16 = _dispatchPreconditionTest(_:)();
  v17 = *(v9 + 8);
  v86 = v12;
  v87 = v9 + 8;
  v88 = v8;
  v85 = v17;
  v17(v12, v8);
  if ((v16 & 1) == 0)
  {
LABEL_27:
    __break(1u);
    __break(1u);
    goto LABEL_28;
  }

  v78 = v6;
  v18 = *(a2 + 16);
  v92 = 0;
  v93 = 0xE000000000000000;
  _StringGuts.grow(_:)(50);

  v92 = 0xD00000000000006CLL;
  v93 = 0x80000001015A4600;
  v90 = sub_1000341B8(0x3F, 0xE100000000000000, v18);
  sub_1005B981C(&unk_1019F4D80, &unk_10146CF20);
  v19 = a2;
  sub_10001A2F8(&qword_1019F61E0, &unk_1019F4D80, &unk_10146CF20, &protocol conformance descriptor for [A]);
  v20 = BidirectionalCollection<>.joined(separator:)();
  v22 = v21;

  v23._countAndFlagsBits = v20;
  v23._object = v22;
  String.append(_:)(v23);

  v24._countAndFlagsBits = 10537;
  v24._object = 0xE200000000000000;
  String.append(_:)(v24);
  v25 = v92;
  v26 = v93;
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v28 = v89;
  v29 = sub_10001CC04(v27, v25, v26);

  if (!v28)
  {
    v89 = v19;
    sub_100034254(v79, 1);
    v31 = sub_1005C6934();
    v77[1] = a1;
    v33 = v32;
    v34 = v31;
    v35 = *(*(v29 + 16) + 32);
    v36 = v86;
    *v86 = v35;
    v37 = v88;
    v83(v36, v82, v88);
    v38 = v35;
    LOBYTE(v35) = _dispatchPreconditionTest(_:)();
    v85(v36, v37);
    if ((v35 & 1) == 0)
    {
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    sub_100DCCAB4(v34, v33, v29, 2);
    v77[0] = 0;
    sub_10002640C(v34, v33);
    if (v18)
    {
      swift_beginAccess();
      v79 = (v78 + 8);
      v39 = (v89 + 40);
      v40 = 3;
      v41 = 2147483645;
      while (1)
      {
        v89 = v18;
        v43 = *(v39 - 1);
        v42 = *v39;
        v44 = v29;
        v45 = *(*(v29 + 16) + 32);
        v46 = v86;
        *v86 = v45;
        v47 = v88;
        v83(v46, v82, v88);

        v48 = v45;
        LOBYTE(v45) = _dispatchPreconditionTest(_:)();
        v85(v46, v47);
        if ((v45 & 1) == 0)
        {
          break;
        }

        v90 = v43;
        v91 = v42;
        v49 = v80;
        static String.Encoding.utf8.getter();
        sub_100017CD8();
        v50 = StringProtocol.cString(using:)();
        (*v79)(v49, v81);

        if (!v41)
        {
          goto LABEL_26;
        }

        v29 = v44;
        v51 = *(v44 + 24);
        if (qword_1019F17C8 != -1)
        {
          v53 = *(v44 + 24);
          swift_once();
          v51 = v53;
        }

        if (v50)
        {
          v52 = (v50 + 32);
        }

        else
        {
          v52 = 0;
        }

        sqlite3_bind_text(v51, v40, v52, -1, qword_101AD69D0);

        ++v40;
        --v41;
        v39 += 2;
        v18 = v89 - 1;
        if (v89 == 1)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

LABEL_14:
    v54 = *(*(v29 + 16) + 32);
    v55 = v86;
    *v86 = v54;
    v56 = v88;
    v83(v55, v82, v88);
    v57 = v54;
    v58 = _dispatchPreconditionTest(_:)();
    v85(v55, v56);
    if ((v58 & 1) == 0)
    {
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    v59 = *(v29 + 16);

    v60 = v29;
    v61 = sub_10001CEC4(v59, v29);

    if (v61 == 101)
    {
      v62 = *(*(v60 + 16) + 32);
      v63 = v86;
      *v86 = v62;
      v64 = v88;
      v83(v63, v82, v88);
      v65 = v62;
      v66 = _dispatchPreconditionTest(_:)();
      v85(v63, v64);
      if ((v66 & 1) == 0)
      {
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
      }

      swift_beginAccess();
      v67 = *(v60 + 24);
      if (v67)
      {
        sqlite3_finalize(v67);
        *(v60 + 24) = 0;
      }
    }

    else
    {
      v90 = 0;
      v91 = 0xE000000000000000;
      _StringGuts.grow(_:)(78);
      v68._object = 0x80000001015A4670;
      v68._countAndFlagsBits = 0xD00000000000004CLL;
      String.append(_:)(v68);
      type metadata accessor for CRLAssetReferrerIdentifier(0);
      _print_unlocked<A, B>(_:_:)();
      v69 = v90;
      v70 = v91;
      sub_10089C7D0();
      swift_allocError();
      *v71 = v61;
      *(v71 + 8) = v69;
      *(v71 + 16) = v70;
      swift_willThrow();
      v72 = *(*(v60 + 16) + 32);
      v73 = v86;
      *v86 = v72;
      v74 = v88;
      v83(v73, v82, v88);
      v75 = v72;
      LOBYTE(v70) = _dispatchPreconditionTest(_:)();
      v85(v73, v74);
      if ((v70 & 1) == 0)
      {
        goto LABEL_31;
      }

      swift_beginAccess();
      v76 = *(v60 + 24);
      if (v76)
      {
        sqlite3_finalize(v76);
        *(v60 + 24) = 0;
      }
    }
  }

  return result;
}

void sub_100DF52B8(uint64_t a1, unsigned __int8 a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = a2;
  v11 = sub_1005B981C(&qword_1019FB750, &qword_10146F1B0);
  __chkstk_darwin(v11 - 8);
  v13 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v88 = &v68 - v15;
  v89 = type metadata accessor for UUID();
  v16 = *(v89 - 8);
  __chkstk_darwin(v89);
  v18 = &v68 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v79 = &v68 - v20;
  v80 = v21;
  __chkstk_darwin(v22);
  v81 = &v68 - v23;
  if (v10)
  {
    v24 = a5 + 56;
    v25 = 1 << *(a5 + 32);
    v26 = -1;
    if (v25 < 64)
    {
      v26 = ~(-1 << v25);
    }

    v27 = v26 & *(a5 + 56);
    v73 = OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetDownloadManagerLock;
    v83 = OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetDownloadManager;
    v69 = OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManagerLock;
    v28 = OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManager;
    v29 = (v25 + 63) >> 6;
    v86 = v16 + 32;
    v87 = v16 + 16;
    v70 = (v16 + 8);

    v30 = 0;
    v68 = xmmword_1014B6240;
    v78 = v5;
    v82 = v16;
    v76 = v13;
    v74 = a5 + 56;
    v72 = v28;
    v71 = v29;
    v77 = a5;
    v75 = v18;
    while (v27)
    {
LABEL_11:
      v32 = *(a5 + 48) + *(v16 + 72) * (__clz(__rbit64(v27)) | (v30 << 6));
      v33 = v79;
      v34 = v89;
      v84 = *(v16 + 16);
      v84(v79, v32, v89);
      v85 = *(v16 + 32);
      v85(v18, v33, v34);
      v35 = *&v5[v73];
      os_unfair_lock_lock(*(v35 + 16));
      if (*&v5[v83])
      {
        v36 = *&v5[v83];
      }

      else
      {
        v37 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v38 = v5;
        v39 = *&v5[v69];
        os_unfair_lock_lock(*(v39 + 16));
        v40 = *&v5[v28];
        if (v40)
        {
          v41 = *&v5[v28];
        }

        else
        {
          v42 = objc_allocWithZone(type metadata accessor for CRLAssetFileManager(0));
          v43 = v5;
          v44 = sub_10001F1A0(v43);

          v45 = *&v38[v28];
          *&v38[v28] = v44;
          v41 = v44;

          v40 = 0;
        }

        v46 = *(v39 + 16);
        v47 = v40;
        os_unfair_lock_unlock(v46);
        type metadata accessor for CRLAssetDownloadManager();
        v36 = swift_allocObject();
        swift_defaultActor_initialize();
        *(v36 + 224) = 0u;
        *(v36 + 240) = 0u;
        *(v36 + 192) = 0u;
        *(v36 + 208) = 0u;
        *(v36 + 176) = 0u;
        *(v36 + 256) = 0;
        *(v36 + 264) = _swiftEmptySetSingleton;
        *(v36 + 272) = _swiftEmptyDictionarySingleton;
        *(v36 + 112) = v41;
        *(v36 + 120) = sub_100EA25D0;
        *(v36 + 128) = v37;
        *(v36 + 136) = sub_10072CF0C;
        *(v36 + 144) = 0;
        *(v36 + 152) = 3;
        *(v36 + 160) = v68;
        *&v38[v83] = v36;

        v16 = v82;
      }

      v48 = *(v35 + 16);

      os_unfair_lock_unlock(v48);
      v49 = type metadata accessor for TaskPriority();
      v50 = *(v49 - 8);
      v51 = v88;
      (*(v50 + 56))(v88, 1, 1, v49);
      v52 = v81;
      v53 = v18;
      v54 = v89;
      v84(v81, v53, v89);
      v55 = (*(v16 + 80) + 40) & ~*(v16 + 80);
      v56 = swift_allocObject();
      *(v56 + 2) = 0;
      *(v56 + 3) = 0;
      *(v56 + 4) = v36;
      v85(&v56[v55], v52, v54);
      v57 = v76;
      sub_10000BE14(v51, v76, &qword_1019FB750, &qword_10146F1B0);
      LODWORD(v55) = (*(v50 + 48))(v57, 1, v49);

      if (v55 == 1)
      {
        sub_10000CAAC(v57, &qword_1019FB750, &qword_10146F1B0);
      }

      else
      {
        TaskPriority.rawValue.getter();
        (*(v50 + 8))(v57, v49);
      }

      v58 = *(v56 + 2);
      swift_unknownObjectRetain();

      v28 = v72;
      if (v58)
      {
        swift_getObjectType();
        v59 = dispatch thunk of Actor.unownedExecutor.getter();
        v61 = v60;
        swift_unknownObjectRelease();
      }

      else
      {
        v59 = 0;
        v61 = 0;
      }

      sub_10000CAAC(v88, &qword_1019FB750, &qword_10146F1B0);
      v62 = swift_allocObject();
      *(v62 + 16) = &unk_1014B67C0;
      *(v62 + 24) = v56;
      if (v61 | v59)
      {
        v90 = 0;
        v91 = 0;
        v92 = v59;
        v93 = v61;
      }

      a5 = v77;
      v5 = v78;
      v16 = v82;
      v27 &= v27 - 1;
      swift_task_create();

      v18 = v75;
      (*v70)(v75, v89);
      v24 = v74;
      v29 = v71;
    }

    while (1)
    {
      v31 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        break;
      }

      if (v31 >= v29)
      {

        return;
      }

      v27 = *(v24 + 8 * v31);
      ++v30;
      if (v27)
      {
        v30 = v31;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
    v63 = sub_100DF6D54(a3, a4, 0);

    v64 = sub_100DCAE8C(v63);
    if (*(v64 + 16))
    {
      v65 = v64;
      v66 = v81;
      v67 = v89;
      (*(v16 + 16))(v81, a1 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_itemUUID, v89);
      sub_10069A48C(v65, v66, a1 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_boardIdentifier);

      (*(v16 + 8))(v66, v67);
    }

    else
    {
    }
  }
}

void sub_100DF5A90(uint64_t a1)
{
  v4 = sub_1005B981C(&qword_1019F6990, &qword_10146D2F0);
  __chkstk_darwin(v4 - 8);
  v6 = &v168 - v5;
  v7 = type metadata accessor for UUID();
  v174 = *(v7 - 8);
  __chkstk_darwin(v7);
  v173 = &v168 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = (&v168 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v177 = v1;
  v14 = *(v1 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue);
  *v13 = v14;
  v15 = *(v10 + 104);
  v179 = enum case for DispatchPredicate.onQueue(_:);
  v180 = v15;
  v181 = v10 + 104;
  v15(v13, v11);
  v16 = v14;
  LOBYTE(v14) = _dispatchPreconditionTest(_:)();
  v17 = *(v10 + 8);
  v182 = v13;
  v183 = v10 + 8;
  v184 = v9;
  v18 = v9;
  v19 = v17;
  v17(v13, v18);
  if ((v14 & 1) == 0)
  {
    __break(1u);
LABEL_31:
    swift_once();
    goto LABEL_4;
  }

  v172 = v6;
  v171 = (a1 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_rawTypeValues);
  v20 = v2;
  v21 = v19;
  if (*(a1 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_rawTypeValues) != 11)
  {
    goto LABEL_5;
  }

  v169 = v2;
  v175 = v7;
  v176 = a1;
  v178 = v19;
  v168 = objc_opt_self();
  LODWORD(v6) = [v168 _atomicIncrementAssertCount];
  v190 = [objc_allocWithZone(NSString) init];
  sub_100604538(_swiftEmptyArrayStorage, &v190, "Attempted to save FreehandDrawingShapeItem (BoardItem_11) to SQL.", 65, 2u);
  StaticString.description.getter("_insertBoardItemDatabaseRow(_:)", 31, 2);
  v170 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Persistence/CRLBoardDataStore.swift", 89, 2);
  v22 = String._bridgeToObjectiveC()();

  v23 = [v22 lastPathComponent];

  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  a1 = v24;

  if (qword_1019F20A0 != -1)
  {
    goto LABEL_31;
  }

LABEL_4:
  v25 = static OS_os_log.crlAssert;
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146CA70;
  *(inited + 56) = &type metadata for Int32;
  *(inited + 64) = &protocol witness table for Int32;
  *(inited + 32) = v6;
  v27 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
  *(inited + 96) = v27;
  v28 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr, &protocol conformance descriptor for NSObject);
  *(inited + 104) = v28;
  v29 = v170;
  *(inited + 72) = v170;
  *(inited + 136) = &type metadata for String;
  v30 = sub_1000053B0();
  *(inited + 112) = v19;
  *(inited + 120) = a1;
  *(inited + 176) = &type metadata for UInt;
  *(inited + 184) = &protocol witness table for UInt;
  *(inited + 144) = v30;
  *(inited + 152) = 3679;
  v31 = v190;
  *(inited + 216) = v27;
  *(inited + 224) = v28;
  *(inited + 192) = v31;
  v32 = v29;
  v33 = v31;
  v34 = static os_log_type_t.error.getter();
  sub_100005404(v25, &_mh_execute_header, v34, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
  swift_arrayDestroy();
  v35 = static os_log_type_t.error.getter();
  sub_100005404(v25, &_mh_execute_header, v35, "Attempted to save FreehandDrawingShapeItem (BoardItem_11) to SQL.", 65, 2, _swiftEmptyArrayStorage);

  type metadata accessor for __VaListBuilder();
  v36 = swift_allocObject();
  v36[2] = 8;
  v36[3] = 0;
  v36[4] = 0;
  v36[5] = 0;
  v37 = __VaListBuilder.va_list()();
  StaticString.description.getter("_insertBoardItemDatabaseRow(_:)", 31, 2);
  v38 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Persistence/CRLBoardDataStore.swift", 89, 2);
  v39 = String._bridgeToObjectiveC()();

  StaticString.description.getter("Attempted to save FreehandDrawingShapeItem (BoardItem_11) to SQL.", 65, 2);
  v40 = String._bridgeToObjectiveC()();

  v41 = v168;
  [v168 handleFailureInFunction:v38 file:v39 lineNumber:3679 isFatal:0 format:v40 args:v37];

  [v41 logFullBacktrace];
  v21 = v178;
  v7 = v175;
  a1 = v176;
  v20 = v169;
LABEL_5:
  v190 = 0;
  v191 = 0xE000000000000000;
  _StringGuts.grow(_:)(144);
  v42._countAndFlagsBits = 0x4920545245534E49;
  v42._object = 0xEC000000204F544ELL;
  String.append(_:)(v42);
  v43._countAndFlagsBits = 0x74695F6472616F62;
  v43._object = 0xEB00000000736D65;
  String.append(_:)(v43);
  v44._countAndFlagsBits = 10272;
  v44._object = 0xE200000000000000;
  String.append(_:)(v44);
  v45._countAndFlagsBits = 0x6975755F6D657469;
  v45._object = 0xE900000000000064;
  String.append(_:)(v45);
  v46._countAndFlagsBits = 8236;
  v46._object = 0xE200000000000000;
  String.append(_:)(v46);
  v47._countAndFlagsBits = 0x755F746E65726170;
  v47._object = 0xEB00000000646975;
  String.append(_:)(v47);
  v48._countAndFlagsBits = 8236;
  v48._object = 0xE200000000000000;
  String.append(_:)(v48);
  v49._object = 0x8000000101585360;
  v49._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v49);
  v50._countAndFlagsBits = 8236;
  v50._object = 0xE200000000000000;
  String.append(_:)(v50);
  v51._countAndFlagsBits = 0x7079745F6D657469;
  v51._object = 0xE900000000000065;
  String.append(_:)(v51);
  v52._countAndFlagsBits = 8236;
  v52._object = 0xE200000000000000;
  String.append(_:)(v52);
  v53._countAndFlagsBits = 0x6D6574695F627573;
  v53._object = 0xED0000657079745FLL;
  String.append(_:)(v53);
  v54._countAndFlagsBits = 8236;
  v54._object = 0xE200000000000000;
  String.append(_:)(v54);
  v55._countAndFlagsBits = 0x645F6E6F6D6D6F63;
  v55._object = 0xEB00000000617461;
  String.append(_:)(v55);
  v56._countAndFlagsBits = 8236;
  v56._object = 0xE200000000000000;
  String.append(_:)(v56);
  v57._countAndFlagsBits = 0x6369666963657073;
  v57._object = 0xED0000617461645FLL;
  String.append(_:)(v57);
  v58._countAndFlagsBits = 8236;
  v58._object = 0xE200000000000000;
  String.append(_:)(v58);
  v59._countAndFlagsBits = 0x5F656C7573706163;
  v59._object = 0xEC00000061746164;
  String.append(_:)(v59);
  v60._countAndFlagsBits = 8236;
  v60._object = 0xE200000000000000;
  String.append(_:)(v60);
  v61._countAndFlagsBits = 0x6E6F7473626D6F74;
  v61._object = 0xEA00000000006465;
  String.append(_:)(v61);
  v62._countAndFlagsBits = 8236;
  v62._object = 0xE200000000000000;
  String.append(_:)(v62);
  v63._object = 0x80000001015A33D0;
  v63._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v63);
  v64._countAndFlagsBits = 8236;
  v64._object = 0xE200000000000000;
  String.append(_:)(v64);
  v65._countAndFlagsBits = 0x7461645F636E7973;
  v65._object = 0xE900000000000061;
  String.append(_:)(v65);
  v66._countAndFlagsBits = 8236;
  v66._object = 0xE200000000000000;
  String.append(_:)(v66);
  v67._countAndFlagsBits = 0xD000000000000019;
  v67._object = 0x80000001015A37B0;
  String.append(_:)(v67);
  v68._countAndFlagsBits = 8236;
  v68._object = 0xE200000000000000;
  String.append(_:)(v68);
  v69._countAndFlagsBits = 0xD000000000000014;
  v69._object = 0x80000001015A3590;
  String.append(_:)(v69);
  v70._countAndFlagsBits = 8236;
  v70._object = 0xE200000000000000;
  String.append(_:)(v70);
  v71._countAndFlagsBits = 0x6F5F7463656A626FLL;
  v71._object = 0xEE00736E6F697470;
  String.append(_:)(v71);
  v72._countAndFlagsBits = 8236;
  v72._object = 0xE200000000000000;
  String.append(_:)(v72);
  v73._countAndFlagsBits = 0xD00000000000002DLL;
  v73._object = 0x80000001015A3760;
  String.append(_:)(v73);
  v74._countAndFlagsBits = 8236;
  v74._object = 0xE200000000000000;
  String.append(_:)(v74);
  v75._countAndFlagsBits = 0xD000000000000026;
  v75._object = 0x80000001015A33F0;
  String.append(_:)(v75);
  v76._countAndFlagsBits = 8236;
  v76._object = 0xE200000000000000;
  String.append(_:)(v76);
  v77._countAndFlagsBits = 0xD00000000000001BLL;
  v77._object = 0x80000001015A3790;
  String.append(_:)(v77);
  v78._countAndFlagsBits = 0xD00000000000003ELL;
  v78._object = 0x80000001015A4AA0;
  String.append(_:)(v78);
  v79 = v190;
  v80 = v191;
  v81 = *(v177 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_database);
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v83 = sub_10001CC04(v82, v79, v80);

  if (v20)
  {
    return;
  }

  v170 = v81;
  v84 = v173;
  v85 = v174;
  v86 = *(v174 + 16);
  v176 = a1;
  v87 = v86(v173, a1 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_itemUUID, v7);
  v88 = UUID.crl_data()(v87);
  v175 = v7;
  v90 = v89;
  v177 = v83;
  v178 = v21;
  v91 = *(*(v83 + 16) + 32);
  v92 = v182;
  *v182 = v91;
  v93 = v184;
  v180(v92, v179, v184);
  v94 = v91;
  LOBYTE(v91) = _dispatchPreconditionTest(_:)();
  v178(v92, v93);
  if ((v91 & 1) == 0)
  {
    __break(1u);
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v95 = v177;

  sub_100DCCAB4(v88, v90, v95, 1);
  sub_10002640C(v88, v90);
  (*(v85 + 8))(v84, v175);
  v96 = OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_parentContainerUUID;
  v97 = v176;
  swift_beginAccess();
  v98 = v172;
  sub_10000BE14(v97 + v96, v172, &qword_1019F6990, &qword_10146D2F0);
  sub_10089BD40(v98, 2);
  sub_10000CAAC(v98, &qword_1019F6990, &qword_10146D2F0);
  v99 = v97 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_boardIdentifier;
  v100 = type metadata accessor for CRLBoardIdentifierStorage(0);
  v101 = sub_10084DAE4(v99, *(v99 + *(v100 + 20)), *(v99 + *(v100 + 20) + 8));
  v103 = v102;
  v104 = v101;
  v105 = v177;
  v106 = *(*(v177 + 16) + 32);
  v107 = v182;
  *v182 = v106;
  v108 = v184;
  v180(v107, v179, v184);
  v109 = v106;
  LOBYTE(v106) = _dispatchPreconditionTest(_:)();
  v110 = v107;
  v111 = v178;
  v178(v110, v108);
  if ((v106 & 1) == 0)
  {
    goto LABEL_33;
  }

  sub_100DCCAB4(v104, v103, v105, 3);
  sub_10002640C(v104, v103);
  v112 = v171;
  v113 = *v171;
  if (*v171 < 0xFFFFFFFF80000000)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (v113 > 0x7FFFFFFF)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v114 = *(*(v105 + 16) + 32);
  v115 = v182;
  *v182 = v114;
  v116 = v184;
  v180(v115, v179, v184);
  v117 = v114;
  LOBYTE(v114) = _dispatchPreconditionTest(_:)();
  v111(v115, v116);
  if ((v114 & 1) == 0)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v118 = (v105 + 24);
  swift_beginAccess();
  sqlite3_bind_int(*(v105 + 24), 4, v113);
  sub_10089C088(v112[1], *(v112 + 16), 5);
  v119 = v176;
  v120 = *(v176 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_commonData);
  v121 = *(v176 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_commonData + 8);
  sub_100024E84(v120, v121);
  sub_10089BB64(v120, v121, 6);
  sub_100025870(v120, v121);
  v122 = *(v119 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_specificData);
  v123 = *(v119 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_specificData + 8);
  sub_100024E84(v122, v123);
  sub_10089BB64(v122, v123, 7);
  sub_100025870(v122, v123);
  v124 = *(v119 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_capsuleData);
  v125 = *(v119 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_capsuleData + 8);
  sub_100024E84(v124, v125);
  sub_10089BB64(v124, v125, 8);
  sub_100025870(v124, v125);
  sub_10089B9A4(*(v119 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_isLocalTombstone), 9);
  sub_100034254(*(v119 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_unsyncedChanges), 10);
  v126 = *(v119 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_syncData);
  v127 = *(v119 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_syncData + 8);
  sub_100024E84(v126, v127);
  sub_10089BB64(v126, v127, 11);
  sub_100025870(v126, v127);
  v128 = *(v119 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_ckMergeableRecordValue);
  v129 = *(v119 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_ckMergeableRecordValue + 8);
  sub_100024E84(v128, v129);
  sub_10089BB64(v128, v129, 12);
  sub_100025870(v128, v129);
  v130 = v119 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_minRequiredVersions;
  sub_100034254(*(v119 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_minRequiredVersions), 13);
  sub_100034254(*(v119 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_objectOptions), 14);
  sub_100034254(*(v130 + 8), 15);
  sub_100034254(*(v130 + 16), 16);
  if (*(v130 + 32))
  {
    v131 = *(*(v105 + 16) + 32);
    v132 = v182;
    *v182 = v131;
    v133 = v184;
    v180(v132, v179, v184);
    v134 = v131;
    LOBYTE(v131) = _dispatchPreconditionTest(_:)();
    v111(v132, v133);
    if ((v131 & 1) == 0)
    {
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    sqlite3_bind_null(*v118, 17);
  }

  else
  {
    sub_100034254(*(v130 + 24), 17);
  }

  v135 = *(*(v105 + 16) + 32);
  v136 = v182;
  *v182 = v135;
  v137 = v184;
  v180(v136, v179, v184);
  v138 = v135;
  LOBYTE(v135) = _dispatchPreconditionTest(_:)();
  v111(v136, v137);
  if ((v135 & 1) == 0)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v139 = *(v105 + 16);

  v140 = sub_10001CEC4(v139, v105);

  if (v140 != 101)
  {
LABEL_23:
    v187 = 0xD00000000000001BLL;
    v188 = 0x80000001015A4AE0;
    if (sqlite3_errstr(v140))
    {
      v145 = v140;
      v146._countAndFlagsBits = String.init(cString:)();
      v189._countAndFlagsBits = 8250;
      v189._object = 0xE200000000000000;
      String.append(_:)(v146);

      String.append(_:)(v189);

      v147 = v170;
      v148 = *(v170 + 4);
      v149 = v182;
      *v182 = v148;
      v150 = v184;
      v180(v149, v179, v184);
      v151 = v148;
      LOBYTE(v148) = _dispatchPreconditionTest(_:)();
      v111(v149, v150);
      if ((v148 & 1) == 0)
      {
        goto LABEL_40;
      }

      swift_beginAccess();
      v152 = sqlite3_extended_errcode(v147[2]);
      v140 = v145;
      if (sqlite3_errstr(v152))
      {
        v186._countAndFlagsBits = 11552;
        v186._object = 0xE200000000000000;
        v185 = v152;
        v153._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v153);

        v154._countAndFlagsBits = 8237;
        v154._object = 0xE200000000000000;
        String.append(_:)(v154);
        countAndFlagsBits = v186._countAndFlagsBits;
        object = v186._object;
        v157 = String.init(cString:)();
        v159 = v158;
        v186._countAndFlagsBits = countAndFlagsBits;
        v186._object = object;

        v160._countAndFlagsBits = v157;
        v160._object = v159;
        String.append(_:)(v160);

        String.append(_:)(v186);
      }
    }

    v161 = v187;
    v162 = v188;
    sub_10089C7D0();
    swift_allocError();
    *v163 = v140;
    *(v163 + 8) = v161;
    *(v163 + 16) = v162;
    swift_willThrow();
    v164 = *(*(v105 + 16) + 32);
    v165 = v182;
    *v182 = v164;
    v166 = v184;
    v180(v165, v179, v184);
    v167 = v164;
    LOBYTE(v164) = _dispatchPreconditionTest(_:)();
    v111(v165, v166);
    if (v164)
    {
      goto LABEL_28;
    }

LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
  }

  v141 = *(*(v105 + 16) + 32);
  v142 = v182;
  *v182 = v141;
  v143 = v184;
  v180(v142, v179, v184);
  v144 = v141;
  LOBYTE(v141) = _dispatchPreconditionTest(_:)();
  v111(v142, v143);
  if ((v141 & 1) == 0)
  {
    __break(1u);
    goto LABEL_23;
  }

LABEL_28:
  if (*v118)
  {
    sqlite3_finalize(*v118);
    *v118 = 0;
  }
}