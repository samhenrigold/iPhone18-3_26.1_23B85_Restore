BOOL sub_1001BDA3C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v68)
  {
    v5 = v68;
    v6 = sub_10000F0CC();
    sub_100035D04(&unk_10033D890, &qword_100275EB0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10026F050;
    v8 = [v3 uniqueIdentifier];
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    *(inited + 32) = v9;
    *(inited + 40) = v11;
    v12 = sub_1001CB970(inited);
    swift_setDeallocating();
    sub_100056F28(inited + 32);
    v13 = sub_1000089FC(v12, v6);

    v14 = *(v13 + 16);

    if (v14)
    {
      return 1;
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v68)
  {
    v15 = sub_100003118(0, &qword_1003452B0, HMAccessory_ptr);
    v16 = &off_100302540;
  }

  else
  {
    v15 = 0;
    v16 = 0;
    v69 = 0;
    v70 = 0;
  }

  v71 = v15;
  v72 = v16;
  v17 = sub_1001C296C(&v68, &unk_10034B540, qword_100270E60, sub_100038394);
  sub_1000097E8(&v68, &unk_10034B540, qword_100270E60);
  if (v17)
  {
    return 1;
  }

  v18 = *(a1 + OBJC_IVAR____TtC17proximitycontrold8Identity_idsDevice);
  if (v18)
  {
    v19 = sub_100003118(0, &qword_10033B5F0, IDSDevice_ptr);
    v20 = &off_100303480;
  }

  else
  {
    v19 = 0;
    v20 = 0;
    v69 = 0;
    v70 = 0;
  }

  v68 = v18;
  v71 = v19;
  v72 = v20;
  v21 = v18;
  v22 = sub_1001C296C(&v68, &qword_10033A240, &unk_100272E70, sub_100038394);
  sub_1000097E8(&v68, &qword_10033A240, &unk_100272E70);
  if (v22)
  {
    return 1;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v68)
  {
    v23 = v68;
    sub_100008574();
    v25 = v24;
    sub_100035D04(&unk_10033D890, &qword_100275EB0);
    v26 = swift_initStackObject();
    *(v26 + 16) = xmmword_10026F050;
    v27 = [v3 uniqueIdentifier];
    v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = v29;

    *(v26 + 32) = v28;
    *(v26 + 40) = v30;
    v31 = sub_1001CB970(v26);
    swift_setDeallocating();
    sub_100056F28(v26 + 32);
    v32 = sub_1000089FC(v31, v25);

    v33 = *(v32 + 16);

    if (v33)
    {
      return 1;
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v68)
  {
    v34 = v68;
    sub_100008574();
    v36 = v35;
    sub_100035D04(&unk_10033D890, &qword_100275EB0);
    v37 = swift_initStackObject();
    *(v37 + 16) = xmmword_10026F050;
    v38 = [v3 uniqueIdentifier];
    v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v41 = v40;

    *(v37 + 32) = v39;
    *(v37 + 40) = v41;
    v42 = sub_1001CB970(v37);
    swift_setDeallocating();
    sub_100056F28(v37 + 32);
    v43 = sub_1000089FC(v42, v36);

    v44 = *(v43 + 16);

    if (v44)
    {
      return 1;
    }
  }

  if (*(a1 + OBJC_IVAR____TtC17proximitycontrold8Identity_rapportIdentities))
  {
    v46 = *(a1 + OBJC_IVAR____TtC17proximitycontrold8Identity_rapportIdentities);
  }

  else
  {
    v46 = _swiftEmptyArrayStorage;
  }

  if (v46 >> 62)
  {
    goto LABEL_34;
  }

  for (i = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v66 = v46 & 0xC000000000000001;
    v65 = v46 & 0xFFFFFFFFFFFFFF8;

    v48 = 0;
    while (1)
    {
      if (v66)
      {
        v49 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v48 >= *(v65 + 16))
        {
          goto LABEL_33;
        }

        v49 = *(v46 + 8 * v48 + 32);
      }

      v50 = v49;
      v51 = v48 + 1;
      if (__OFADD__(v48, 1))
      {
        break;
      }

      v52 = v46;
      sub_1000104F8();
      v67 = v53;
      sub_100035D04(&unk_10033D890, &qword_100275EB0);
      v54 = swift_initStackObject();
      *(v54 + 16) = xmmword_10026F050;
      v55 = v3;
      v56 = [v3 uniqueIdentifier];
      v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v59 = v58;

      *(v54 + 32) = v57;
      *(v54 + 40) = v59;
      v60 = sub_1001CB970(v54);
      swift_setDeallocating();
      sub_100056F28(v54 + 32);
      v61 = sub_1000089FC(v60, v67);

      v62 = *(v61 + 16);

      v63 = v62 != 0;
      if (!v62)
      {
        ++v48;
        v3 = v55;
        v46 = v52;
        if (v51 != i)
        {
          continue;
        }
      }

      goto LABEL_36;
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    ;
  }

  v63 = 0;
LABEL_36:
  v64 = v63;

  return v64;
}

uint64_t sub_1001BE0E4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100035D04(&unk_100348F30, &unk_100272540);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &v51 - v9;
  __chkstk_darwin(v8);
  v12 = &v51 - v11;
  v13 = type metadata accessor for UUID();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v51 - v18;
  sub_100009848(a1, &v55, &qword_10033A240, &unk_100272E70);
  if (!v56)
  {
    sub_1000097E8(&v55, &qword_10033A240, &unk_100272E70);
    return 0;
  }

  v52 = v17;
  v54 = v19;
  sub_10000E754(&v55, v57);
  if (([v2 isLocallyPaired] & 1) == 0)
  {
    v20 = [v2 uniqueID];
    if (v20)
    {
      v53 = v14;
      v21 = v20;
      v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v24 = v23;

      v26 = v58;
      v25 = v59;
      sub_10000EBC0(v57, v58);
      v27 = (*(v25 + 16))(v26, v25);
      if (v28)
      {
        if (v22 == v27 && v28 == v24)
        {
          goto LABEL_15;
        }

        v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v14 = v53;
        if (v29)
        {
          goto LABEL_28;
        }
      }

      else
      {

        v14 = v53;
      }
    }
  }

  v31 = [v2 uniqueIDOverride];
  if (!v31)
  {
LABEL_18:
    v41 = [v2 nsuuid];
    if (v41)
    {
      v42 = v41;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v43 = 0;
    }

    else
    {
      v43 = 1;
    }

    v44 = v54;
    (*(v14 + 56))(v10, v43, 1, v13);
    sub_10003693C(v10, v12, &unk_100348F30, &unk_100272540);
    v45 = *(v14 + 48);
    if (v45(v12, 1, v13) == 1)
    {
      v7 = v12;
    }

    else
    {
      v54 = *(v14 + 32);
      (v54)(v44, v12, v13);
      v46 = v58;
      v47 = v59;
      sub_10000EBC0(v57, v58);
      (*(v47 + 32))(v46, v47);
      if (v45(v7, 1, v13) != 1)
      {
        v48 = v52;
        (v54)(v52, v7, v13);
        v49 = static UUID.== infix(_:_:)();
        v50 = *(v14 + 8);
        v50(v48, v13);
        v50(v44, v13);
        if (v49)
        {
          goto LABEL_28;
        }

LABEL_26:
        sub_10000903C(v57);
        return 0;
      }

      (*(v14 + 8))(v44, v13);
    }

    sub_1000097E8(v7, &unk_100348F30, &unk_100272540);
    goto LABEL_26;
  }

  v53 = v14;
  v32 = v31;
  v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v35 = v34;

  v37 = v58;
  v36 = v59;
  sub_10000EBC0(v57, v58);
  v38 = (*(v36 + 24))(v37, v36);
  if (!v39)
  {

    v14 = v53;
    goto LABEL_18;
  }

  if (v33 != v38 || v39 != v35)
  {
    v40 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v14 = v53;
    if (v40)
    {
      goto LABEL_28;
    }

    goto LABEL_18;
  }

LABEL_15:

LABEL_28:
  sub_10000903C(v57);
  return 1;
}

uint64_t sub_1001BE6A0(uint64_t a1, uint64_t (*a2)(char *), uint64_t a3, void *a4, unint64_t a5, uint64_t a6, void *a7, uint64_t a8, os_log_type_t a9, uint64_t *a10, uint64_t *a11)
{
  v30 = a1;
  if (a2)
  {
    v28 = a2(&v30);
    v29 = v16;
  }

  else
  {
    LOBYTE(v28) = a1;
    sub_100035D04(a10, a11);
  }

  v17 = String.init<A>(describing:)();
  v19 = v18;
  v28 = a4;
  v29 = a5;

  v20._countAndFlagsBits = v17;
  v20._object = v19;
  String.append(_:)(v20);

  v21._countAndFlagsBits = a6;
  v21._object = a7;
  String.append(_:)(v21);

  v22 = a5;
  v23 = Logger.logObject.getter();
  if (os_log_type_enabled(v23, a9))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v28 = v25;
    *v24 = 136315138;
    v26 = sub_100017494(a4, v22, &v28);

    *(v24 + 4) = v26;
    _os_log_impl(&_mh_execute_header, v23, a9, "%s", v24, 0xCu);
    sub_10000903C(v25);
  }

  else
  {
  }

  return a1;
}

void *sub_1001BE860(void *a1, char a2, uint64_t (*a3)(uint64_t *), uint64_t a4, void *a5, unint64_t a6, uint64_t a7, void *a8, uint64_t a9, os_log_type_t a10)
{
  v29 = a1;
  v30 = a2;
  if (a3)
  {
    v27 = a3(&v29);
    v28 = v15;
  }

  else
  {
    v27 = a1;
    LOBYTE(v28) = a2;
  }

  v16 = String.init<A>(describing:)();
  v18 = v17;
  v27 = a5;
  v28 = a6;

  v19._countAndFlagsBits = v16;
  v19._object = v18;
  String.append(_:)(v19);

  v20._countAndFlagsBits = a7;
  v20._object = a8;
  String.append(_:)(v20);

  v21 = a6;
  v22 = Logger.logObject.getter();
  if (os_log_type_enabled(v22, a10))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v27 = v24;
    *v23 = 136315138;
    v25 = sub_100017494(a5, v21, &v27);

    *(v23 + 4) = v25;
    _os_log_impl(&_mh_execute_header, v22, a10, "%s", v23, 0xCu);
    sub_10000903C(v24);
  }

  else
  {
  }

  return a1;
}

uint64_t sub_1001BEA2C@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, unsigned __int8 a10)
{
  v53._object = a7;
  v54 = a8;
  v52 = a3;
  v53._countAndFlagsBits = a6;
  v56 = a9;
  v55 = a10;
  v14 = sub_100035D04(&unk_10034C700, &qword_100273D30);
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v50 - v19;
  v21 = sub_100035D04(&unk_10034B610, &qword_100289868);
  v22 = __chkstk_darwin(v21 - 8);
  v24 = &v50 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v26 = &v50 - v25;
  if (!a2)
  {
    v50 = a4;
    v51 = a5;
    v52 = a1;
    sub_100009848(a1, &v50 - v25, &unk_10034C700, &qword_100273D30);
    (*(v15 + 56))(v26, 0, 1, v14);
    sub_100009848(v26, v24, &unk_10034B610, &qword_100289868);
    if ((*(v15 + 48))(v24, 1, v14) == 1)
    {
      v36 = 0xE300000000000000;
      v37 = 7104878;
    }

    else
    {
      sub_10003693C(v24, v20, &unk_10034C700, &qword_100273D30);
      sub_100009848(v20, v18, &unk_10034C700, &qword_100273D30);
      v37 = String.init<A>(describing:)();
      v36 = v38;
      sub_1000097E8(v20, &unk_10034C700, &qword_100273D30);
    }

    object = v53._object;
    countAndFlagsBits = v53._countAndFlagsBits;
    v42 = v50;
    v41 = v51;
    sub_1000097E8(v26, &unk_10034B610, &qword_100289868);
    v57 = v42;
    v58 = v41;

    v43._countAndFlagsBits = v37;
    v43._object = v36;
    String.append(_:)(v43);

    v44._countAndFlagsBits = countAndFlagsBits;
    v44._object = object;
    String.append(_:)(v44);

    v33 = v57;
    v32 = v58;
    v34 = Logger.logObject.getter();
    v35 = v55;
    v45 = os_log_type_enabled(v34, v55);
    a1 = v52;
    if (!v45)
    {

      return sub_100009848(a1, v56, &unk_10034C700, &qword_100273D30);
    }

    goto LABEL_8;
  }

  v57 = a2(a1);
  v58 = v27;
  v28 = String.init<A>(describing:)();
  v30 = v29;
  v57 = a4;
  v58 = a5;

  v31._countAndFlagsBits = v28;
  v31._object = v30;
  String.append(_:)(v31);

  String.append(_:)(v53);

  v33 = v57;
  v32 = v58;
  v34 = Logger.logObject.getter();
  v35 = v55;
  if (os_log_type_enabled(v34, v55))
  {
LABEL_8:
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v57 = v47;
    *v46 = 136315138;
    v48 = sub_100017494(v33, v32, &v57);

    *(v46 + 4) = v48;
    _os_log_impl(&_mh_execute_header, v34, v35, "%s", v46, 0xCu);
    sub_10000903C(v47);

    return sub_100009848(a1, v56, &unk_10034C700, &qword_100273D30);
  }

  return sub_100009848(a1, v56, &unk_10034C700, &qword_100273D30);
}

uint64_t sub_1001BEE9C@<X0>(__int128 *a1@<X0>, uint64_t (*a2)(__int128 *)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, void *a6@<X6>, _OWORD *a7@<X8>, os_log_type_t a8)
{
  v13 = *(a1 + 6);
  v14 = *(a1 + 7);
  v15 = a1[1];
  v45 = *a1;
  v46 = v15;
  v47 = a1[2];
  *&v48 = v13;
  *(&v48 + 1) = v14;
  if (!a2)
  {
    v41 = v45;
    v42 = v46;
    v43 = v47;
    v44 = v48;
    v40[0] = v45;
    v40[1] = v46;
    v40[2] = v47;
    v40[3] = v48;
    sub_100009848(&v41, v39, &qword_10033E4F0, &qword_1002746F0);
    sub_100009848(&v41, v39, &qword_10033E4F0, &qword_1002746F0);
    sub_100035D04(&qword_10033E4F0, &qword_1002746F0);
    v26 = String.init<A>(describing:)();
    v28 = v27;
    *&v40[0] = a3;
    *(&v40[0] + 1) = a4;

    v29._countAndFlagsBits = v26;
    v29._object = v28;
    String.append(_:)(v29);

    v30._countAndFlagsBits = a5;
    v30._object = a6;
    String.append(_:)(v30);

    v31 = v40[0];
    v22 = Logger.logObject.getter();
    if (os_log_type_enabled(v22, a8))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *&v40[0] = v33;
      *v32 = 136315138;
      v34 = sub_100017494(v31, *(&v31 + 1), v40);

      *(v32 + 4) = v34;
      _os_log_impl(&_mh_execute_header, v22, a8, "%s", v32, 0xCu);
      sub_10000903C(v33);

      sub_1000097E8(&v41, &qword_10033E4F0, &qword_1002746F0);
      goto LABEL_8;
    }

    sub_1000097E8(&v41, &qword_10033E4F0, &qword_1002746F0);
LABEL_7:

    goto LABEL_8;
  }

  a2(&v45);
  v16 = String.init<A>(describing:)();
  v18 = v17;
  *&v41 = a3;
  *(&v41 + 1) = a4;

  v19._countAndFlagsBits = v16;
  v19._object = v18;
  String.append(_:)(v19);

  v20._countAndFlagsBits = a5;
  v20._object = a6;
  String.append(_:)(v20);

  v21 = v41;
  v22 = Logger.logObject.getter();
  if (!os_log_type_enabled(v22, a8))
  {
    goto LABEL_7;
  }

  v23 = swift_slowAlloc();
  v24 = swift_slowAlloc();
  *&v41 = v24;
  *v23 = 136315138;
  v25 = sub_100017494(v21, *(&v21 + 1), &v41);

  *(v23 + 4) = v25;
  _os_log_impl(&_mh_execute_header, v22, a8, "%s", v23, 0xCu);
  sub_10000903C(v24);

LABEL_8:

  v35 = v46;
  v41 = v45;
  v42 = v46;
  v37 = v48;
  v43 = v47;
  v36 = v47;
  v44 = v48;
  *a7 = v45;
  a7[1] = v35;
  a7[2] = v36;
  a7[3] = v37;
  return sub_100009848(&v41, v40, &qword_10033E4F0, &qword_1002746F0);
}

void *sub_1001BF234(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *), uint64_t a5, void *a6, unint64_t a7, uint64_t a8, void *a9, uint64_t a10, os_log_type_t a11)
{
  v39[0] = a1;
  v39[1] = a2;
  v39[2] = a3;
  if (a4)
  {
    a4(v39);
    v15 = String.init<A>(describing:)();
    v17 = v16;
    v36 = a6;
    v37 = a7;

    v18._countAndFlagsBits = v15;
    v18._object = v17;
    String.append(_:)(v18);

    v19._countAndFlagsBits = a8;
    v19._object = a9;
    String.append(_:)(v19);

    v20 = a7;
    v21 = Logger.logObject.getter();
    if (os_log_type_enabled(v21, a11))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v36 = v23;
      *v22 = 136315138;
      v24 = sub_100017494(a6, v20, &v36);

      *(v22 + 4) = v24;
      _os_log_impl(&_mh_execute_header, v21, a11, "%s", v22, 0xCu);
      sub_10000903C(v23);
    }

    else
    {
    }
  }

  else
  {
    v38 = a3;
    sub_100056F7C(a1);

    sub_100056F7C(a1);

    sub_100035D04(&qword_100342FE8, &qword_100278E60);
    v25 = String.init<A>(describing:)();
    v27 = v26;
    v36 = a6;
    v37 = a7;

    v28._countAndFlagsBits = v25;
    v28._object = v27;
    String.append(_:)(v28);

    v29._countAndFlagsBits = a8;
    v29._object = a9;
    String.append(_:)(v29);

    v30 = a7;
    v31 = Logger.logObject.getter();
    if (os_log_type_enabled(v31, a11))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v36 = v33;
      *v32 = 136315138;
      v34 = sub_100017494(a6, v30, &v36);

      *(v32 + 4) = v34;
      _os_log_impl(&_mh_execute_header, v31, a11, "%s", v32, 0xCu);
      sub_10000903C(v33);

      sub_10001DAC4(a1);
    }

    else
    {
      sub_10001DAC4(a1);
    }
  }

  sub_100056F7C(a1);

  return a1;
}

void sub_1001BF5AC(__int128 *a1@<X0>, uint64_t (*a2)(__int128 *)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, void *a6@<X6>, uint64_t a7@<X8>, os_log_type_t a8)
{
  v13 = a1[1];
  v46 = *a1;
  v47 = v13;
  v48 = a1[2];
  v49 = *(a1 + 6);
  if (!a2)
  {
    v36._countAndFlagsBits = a5;
    v36._object = a6;
    v44[1] = v47;
    v44[2] = v48;
    v45 = v49;
    sub_10006CCD4(v46, *(&v46 + 1), v47, *(&v47 + 1), v48, *(&v48 + 1), v49);
    v42 = *(&v46 + 1);
    v43 = v46;
    v40 = *(&v47 + 1);
    v41 = v47;
    v38 = *(&v48 + 1);
    v39 = v48;
    v37 = v49;
    sub_10006CCD4(v46, *(&v46 + 1), v47, *(&v47 + 1), v48, *(&v48 + 1), v49);
    sub_100035D04(&qword_10033D558, qword_100289880);
    v24 = String.init<A>(describing:)();
    v26 = v25;
    *&v44[0] = a3;
    *(&v44[0] + 1) = a4;

    v27._countAndFlagsBits = v24;
    v27._object = v26;
    String.append(_:)(v27);

    String.append(_:)(v36);

    v28 = v44[0];
    v20 = Logger.logObject.getter();
    if (os_log_type_enabled(v20, a8))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *&v44[0] = v30;
      *v29 = 136315138;
      v31 = sub_100017494(v28, *(&v28 + 1), v44);

      *(v29 + 4) = v31;
      _os_log_impl(&_mh_execute_header, v20, a8, "%s", v29, 0xCu);
      sub_10000903C(v30);

      sub_1001CED3C(v43, v42, v41, v40, v39, v38, v37);
      goto LABEL_8;
    }

    sub_1001CED3C(v46, *(&v46 + 1), v47, *(&v47 + 1), v48, *(&v48 + 1), v49);
LABEL_7:

    goto LABEL_8;
  }

  a2(&v46);
  v14 = String.init<A>(describing:)();
  v16 = v15;
  *&v44[0] = a3;
  *(&v44[0] + 1) = a4;

  v17._countAndFlagsBits = v14;
  v17._object = v16;
  String.append(_:)(v17);

  v18._countAndFlagsBits = a5;
  v18._object = a6;
  String.append(_:)(v18);

  v19 = v44[0];
  v20 = Logger.logObject.getter();
  if (!os_log_type_enabled(v20, a8))
  {
    goto LABEL_7;
  }

  v21 = swift_slowAlloc();
  v22 = swift_slowAlloc();
  *&v44[0] = v22;
  *v21 = 136315138;
  v23 = sub_100017494(v19, *(&v19 + 1), v44);

  *(v21 + 4) = v23;
  _os_log_impl(&_mh_execute_header, v20, a8, "%s", v21, 0xCu);
  sub_10000903C(v22);

LABEL_8:

  v32 = v46;
  v33 = v47;
  v34 = v48;
  v35 = v49;
  *a7 = v46;
  *(a7 + 16) = v33;
  *(a7 + 32) = v34;
  *(a7 + 48) = v35;
  sub_10006CCD4(v32, *(&v32 + 1), v33, *(&v33 + 1), v34, *(&v34 + 1), v35);
}

uint64_t sub_1001BF964(uint64_t a1, uint64_t (*a2)(char *), uint64_t a3, void *a4, unint64_t a5, uint64_t a6, void *a7, uint64_t a8, os_log_type_t a9)
{
  v28 = a1;
  if (a2)
  {
    v26 = a2(&v28);
    v27 = v14;
  }

  else
  {
    LOBYTE(v26) = a1;
  }

  v15 = String.init<A>(describing:)();
  v17 = v16;
  v26 = a4;
  v27 = a5;

  v18._countAndFlagsBits = v15;
  v18._object = v17;
  String.append(_:)(v18);

  v19._countAndFlagsBits = a6;
  v19._object = a7;
  String.append(_:)(v19);

  v20 = a5;
  v21 = Logger.logObject.getter();
  if (os_log_type_enabled(v21, a9))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v26 = v23;
    *v22 = 136315138;
    v24 = sub_100017494(a4, v20, &v26);

    *(v22 + 4) = v24;
    _os_log_impl(&_mh_execute_header, v21, a9, "%s", v22, 0xCu);
    sub_10000903C(v23);
  }

  else
  {
  }

  return a1;
}

uint64_t sub_1001BFB20(uint64_t a1, uint64_t (*a2)(char *), uint64_t a3, void *a4, unint64_t a5, uint64_t a6, void *a7, uint64_t a8, os_log_type_t a9)
{
  v33 = a1;
  if (!a2)
  {
    v22 = String.init<A>(describing:)();
    v24 = v23;
    v32 = a5;

    v25._countAndFlagsBits = v22;
    v25._object = v24;
    String.append(_:)(v25);

    v26._countAndFlagsBits = a6;
    v26._object = a7;
    String.append(_:)(v26);

    v20 = a4;
    v19 = a5;
    v21 = Logger.logObject.getter();
    if (!os_log_type_enabled(v21, a9))
    {

      return a1;
    }

    goto LABEL_5;
  }

  a2(&v33);
  v14 = String.init<A>(describing:)();
  v16 = v15;
  v31 = a4;
  v32 = a5;

  v17._countAndFlagsBits = v14;
  v17._object = v16;
  String.append(_:)(v17);

  v18._countAndFlagsBits = a6;
  v18._object = a7;
  String.append(_:)(v18);

  v20 = a4;
  v19 = a5;
  v21 = Logger.logObject.getter();
  if (os_log_type_enabled(v21, a9))
  {
LABEL_5:
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v31 = v28;
    *v27 = 136315138;
    v29 = sub_100017494(v20, v19, &v31);

    *(v27 + 4) = v29;
    _os_log_impl(&_mh_execute_header, v21, a9, "%s", v27, 0xCu);
    sub_10000903C(v28);

    goto LABEL_6;
  }

LABEL_6:

  return a1;
}

uint64_t sub_1001BFD60(char a1, uint64_t (*a2)(char *), uint64_t a3, void *a4, unint64_t a5, uint64_t a6, void *a7, uint64_t a8, os_log_type_t a9)
{
  v33 = a1;
  if (!a2)
  {
    v22 = String.init<A>(describing:)();
    v24 = v23;
    v32 = a5;

    v25._countAndFlagsBits = v22;
    v25._object = v24;
    String.append(_:)(v25);

    v26._countAndFlagsBits = a6;
    v26._object = a7;
    String.append(_:)(v26);

    v20 = a4;
    v19 = a5;
    v21 = Logger.logObject.getter();
    if (!os_log_type_enabled(v21, a9))
    {

      return a1 & 1;
    }

    goto LABEL_5;
  }

  a2(&v33);
  v14 = String.init<A>(describing:)();
  v16 = v15;
  v31 = a4;
  v32 = a5;

  v17._countAndFlagsBits = v14;
  v17._object = v16;
  String.append(_:)(v17);

  v18._countAndFlagsBits = a6;
  v18._object = a7;
  String.append(_:)(v18);

  v20 = a4;
  v19 = a5;
  v21 = Logger.logObject.getter();
  if (os_log_type_enabled(v21, a9))
  {
LABEL_5:
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v31 = v28;
    *v27 = 136315138;
    v29 = sub_100017494(v20, v19, &v31);

    *(v27 + 4) = v29;
    _os_log_impl(&_mh_execute_header, v21, a9, "%s", v27, 0xCu);
    sub_10000903C(v28);

    goto LABEL_6;
  }

LABEL_6:

  return a1 & 1;
}

float sub_1001BFFA4(uint64_t (*a1)(float *), float a2, uint64_t a3, void *a4, unint64_t a5, uint64_t a6, void *a7, uint64_t a8, os_log_type_t a9)
{
  v34 = a2;
  if (!a1)
  {
    v23 = String.init<A>(describing:)();
    v25 = v24;
    v33 = a5;

    v26._countAndFlagsBits = v23;
    v26._object = v25;
    String.append(_:)(v26);

    v27._countAndFlagsBits = a6;
    v27._object = a7;
    String.append(_:)(v27);

    v21 = a4;
    v20 = a5;
    v22 = Logger.logObject.getter();
    if (!os_log_type_enabled(v22, a9))
    {

      return a2;
    }

    goto LABEL_5;
  }

  a1(&v34);
  v15 = String.init<A>(describing:)();
  v17 = v16;
  v32 = a4;
  v33 = a5;

  v18._countAndFlagsBits = v15;
  v18._object = v17;
  String.append(_:)(v18);

  v19._countAndFlagsBits = a6;
  v19._object = a7;
  String.append(_:)(v19);

  v21 = a4;
  v20 = a5;
  v22 = Logger.logObject.getter();
  if (os_log_type_enabled(v22, a9))
  {
LABEL_5:
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v32 = v29;
    *v28 = 136315138;
    v30 = sub_100017494(v21, v20, &v32);

    *(v28 + 4) = v30;
    _os_log_impl(&_mh_execute_header, v22, a9, "%s", v28, 0xCu);
    sub_10000903C(v29);

    goto LABEL_6;
  }

LABEL_6:

  return a2;
}

uint64_t sub_1001C01F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *), uint64_t a4, void *a5, unint64_t a6, uint64_t a7, void *a8, uint64_t a9, os_log_type_t a10)
{
  v35[0] = a1;
  v35[1] = a2;
  if (!a3)
  {
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    sub_100035D04(&qword_10034B590, &qword_100289820);
    v24 = String.init<A>(describing:)();
    v26 = v25;
    v33 = a5;
    v34 = a6;

    v27._countAndFlagsBits = v24;
    v27._object = v26;
    String.append(_:)(v27);

    v28._countAndFlagsBits = a7;
    v28._object = a8;
    String.append(_:)(v28);

    v21 = a5;
    v20 = a6;
    v22 = Logger.logObject.getter();
    v23 = a10;
    if (!os_log_type_enabled(v22, a10))
    {

      goto LABEL_7;
    }

    goto LABEL_5;
  }

  a3(v35);
  v15 = String.init<A>(describing:)();
  v17 = v16;
  v33 = a5;
  v34 = a6;

  v18._countAndFlagsBits = v15;
  v18._object = v17;
  String.append(_:)(v18);

  v19._countAndFlagsBits = a7;
  v19._object = a8;
  String.append(_:)(v19);

  v21 = a5;
  v20 = a6;
  v22 = Logger.logObject.getter();
  v23 = a10;
  if (os_log_type_enabled(v22, a10))
  {
LABEL_5:
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v33 = v30;
    *v29 = 136315138;
    v31 = sub_100017494(v21, v20, &v33);

    *(v29 + 4) = v31;
    _os_log_impl(&_mh_execute_header, v22, v23, "%s", v29, 0xCu);
    sub_10000903C(v30);

    goto LABEL_6;
  }

LABEL_6:

LABEL_7:
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  return a1;
}

void sub_1001C049C(__int16 a1)
{
  v2 = v1;
  v31 = a1;
  CurrentValueSubject.send(_:)();
  if (*(v2 + *(*v2 + 128) + 8))
  {
    LOWORD(v28[0]) = a1;

    _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    objc_opt_self();
    v4 = swift_dynamicCastObjCClass();
    swift_unknownObjectRelease();
    v5 = *v1;
    if (v4)
    {
      v6 = *(v1 + *(v5 + 112));
      if (v6)
      {
        v7 = v6;
        v8 = String._bridgeToObjectiveC()();

        [v7 removeObjectForKey:v8];

        return;
      }

LABEL_11:

      return;
    }

    v9 = *(v1 + *(v5 + 120));
    if (v9 == 2 || (v9 & 1) == 0)
    {
      v12 = *(v1 + *(v5 + 112));
      if (v12)
      {
        LOWORD(v28[0]) = a1;
        v13 = v12;
        v14 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
        v15 = String._bridgeToObjectiveC()();

        [v13 setValue:v14 forKey:v15];

        swift_unknownObjectRelease();
        return;
      }

      goto LABEL_11;
    }

    v27 = a1;
    sub_100035D04(&qword_10034B468, &qword_100289668);
    if (swift_dynamicCast())
    {
      sub_1001CB418(v26, v28);
      v10 = v29;
      v11 = v30;
      sub_10000EBC0(v28, v29);
      v19 = sub_10013FF24(v10, v11);
      v21 = v20;
      v22 = *(v2 + *(*v2 + 112));
      if (v22)
      {
        v23 = v22;
        isa = Data._bridgeToObjectiveC()().super.isa;
        v25 = String._bridgeToObjectiveC()();

        [v23 setValue:isa forKey:v25];
        sub_100010708(v19, v21);
      }

      else
      {

        sub_100010708(v19, v21);
      }

      sub_10000903C(v28);
    }

    else
    {

      memset(v26, 0, sizeof(v26));
      sub_1000097E8(v26, &unk_10034B470, &qword_100289670);
      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&_mh_execute_header, v16, v17, "### Failed to cast as Codable", v18, 2u);
      }
    }
  }
}

uint64_t sub_1001C08B8(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for SFAirDrop.NearbySharingInteraction.State();
  v37 = *(v4 - 8);
  v5 = __chkstk_darwin(v4);
  v7 = v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = v36 - v8;
  CurrentValueSubject.send(_:)();
  v10 = (v2 + *(*v2 + 128));
  if (v10[1])
  {
    v36[1] = *v10;
    v11 = *(v37 + 16);
    v11(v9, a1, v4);

    _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    objc_opt_self();
    v12 = swift_dynamicCastObjCClass();
    swift_unknownObjectRelease();
    v13 = *v1;
    if (v12)
    {
      v14 = *(v1 + *(v13 + 112));
      if (v14)
      {
        v15 = v14;
        v16 = String._bridgeToObjectiveC()();

        [v15 removeObjectForKey:v16];

        return (*(v37 + 8))(a1, v4);
      }

      goto LABEL_14;
    }

    v19 = *(v1 + *(v13 + 120));
    if (v19 == 2 || (v19 & 1) == 0)
    {
      v22 = *(v1 + *(v13 + 112));
      if (v22)
      {
        v11(v9, a1, v4);
        v23 = v22;
        v24 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
        v25 = String._bridgeToObjectiveC()();

        [v23 setValue:v24 forKey:v25];

        swift_unknownObjectRelease();
        return (*(v37 + 8))(a1, v4);
      }

LABEL_14:

      return (*(v37 + 8))(a1, v4);
    }

    v11(v7, a1, v4);
    sub_100035D04(&qword_10034B468, &qword_100289668);
    if (!swift_dynamicCast())
    {

      memset(v38, 0, sizeof(v38));
      sub_1000097E8(v38, &unk_10034B470, &qword_100289670);
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&_mh_execute_header, v26, v27, "### Failed to cast as Codable", v28, 2u);
      }

      return (*(v37 + 8))(a1, v4);
    }

    sub_1001CB418(v38, v39);
    v20 = v40;
    v21 = v41;
    sub_10000EBC0(v39, v40);
    v29 = sub_10013FF24(v20, v21);
    v31 = v30;
    v32 = *(v2 + *(*v2 + 112));
    if (v32)
    {
      v33 = v32;
      isa = Data._bridgeToObjectiveC()().super.isa;
      v35 = String._bridgeToObjectiveC()();

      [v33 setValue:isa forKey:v35];
      sub_100010708(v29, v31);
    }

    else
    {

      sub_100010708(v29, v31);
    }

    (*(v37 + 8))(a1, v4);
    return sub_10000903C(v39);
  }

  else
  {
    v17 = *(v37 + 8);

    return v17(a1, v4);
  }
}

void sub_1001C0E48(void *a1, uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v7 = a1;
  v33 = a1;
  CurrentValueSubject.send(_:)();
  if (!*(v6 + *(*v6 + 128) + 8))
  {
    goto LABEL_5;
  }

  *&v30 = v7;
  v8 = v7;

  sub_100035D04(a2, a3);
  _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {

    swift_unknownObjectRelease();
    v9 = *(v3 + *(*v3 + 112));
    if (v9)
    {
      v10 = v9;
      v7 = String._bridgeToObjectiveC()();

      [v10 removeObjectForKey:v7];

LABEL_5:
      return;
    }

LABEL_13:

    return;
  }

  swift_unknownObjectRelease();
  v11 = *(v3 + *(*v3 + 120));
  if (v11 == 2 || (v11 & 1) == 0)
  {
    v14 = *(v3 + *(*v3 + 112));
    if (v14)
    {
      *&v30 = v7;
      v15 = v14;
      v16 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
      v17 = String._bridgeToObjectiveC()();

      [v15 setValue:v16 forKey:v17];

      swift_unknownObjectRelease();
      return;
    }

    goto LABEL_13;
  }

  v29 = v7;
  sub_100035D04(&qword_10034B468, &qword_100289668);
  if (swift_dynamicCast())
  {
    sub_1001CB418(v28, &v30);
    v12 = v31;
    v13 = v32;
    sub_10000EBC0(&v30, v31);
    v21 = sub_10013FF24(v12, v13);
    v23 = v22;
    v24 = *(v6 + *(*v6 + 112));
    if (v24)
    {
      v25 = v24;
      isa = Data._bridgeToObjectiveC()().super.isa;
      v27 = String._bridgeToObjectiveC()();

      [v25 setValue:isa forKey:v27];
      sub_100010708(v21, v23);
    }

    else
    {

      sub_100010708(v21, v23);
    }

    sub_10000903C(&v30);
  }

  else
  {

    memset(v28, 0, sizeof(v28));
    sub_1000097E8(v28, &unk_10034B470, &qword_100289670);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "### Failed to cast as Codable", v20, 2u);
    }
  }
}

void sub_1001C1304(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v33 = a1;
  CurrentValueSubject.send(_:)();
  if (!*(v6 + *(*v6 + 128) + 8))
  {
LABEL_13:

    return;
  }

  *&v30 = a1;

  sub_100035D04(a2, a3);
  _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {

    swift_unknownObjectRelease();
    v8 = *(v3 + *(*v3 + 112));
    if (v8)
    {
      v9 = v8;
      v10 = String._bridgeToObjectiveC()();

      [v9 removeObjectForKey:v10];

      return;
    }

    goto LABEL_13;
  }

  swift_unknownObjectRelease();
  v11 = *(v3 + *(*v3 + 120));
  if (v11 == 2 || (v11 & 1) == 0)
  {
    v14 = *(v3 + *(*v3 + 112));
    if (v14)
    {
      *&v30 = a1;
      v15 = v14;
      v16 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
      v17 = String._bridgeToObjectiveC()();

      [v15 setValue:v16 forKey:v17];

      swift_unknownObjectRelease();
      return;
    }

    goto LABEL_13;
  }

  v29 = a1;
  sub_100035D04(&qword_10034B468, &qword_100289668);
  if (swift_dynamicCast())
  {
    sub_1001CB418(v28, &v30);
    v12 = v31;
    v13 = v32;
    sub_10000EBC0(&v30, v31);
    v21 = sub_10013FF24(v12, v13);
    v23 = v22;
    v24 = *(v6 + *(*v6 + 112));
    if (v24)
    {
      v25 = v24;
      isa = Data._bridgeToObjectiveC()().super.isa;
      v27 = String._bridgeToObjectiveC()();

      [v25 setValue:isa forKey:v27];
      sub_100010708(v21, v23);
    }

    else
    {

      sub_100010708(v21, v23);
    }

    sub_10000903C(&v30);
  }

  else
  {

    memset(v28, 0, sizeof(v28));
    sub_1000097E8(v28, &unk_10034B470, &qword_100289670);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "### Failed to cast as Codable", v20, 2u);
    }
  }
}

void sub_1001C1780(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + 16);
  v35 = *a1;
  v36 = v4;
  v37 = *(a1 + 32);
  CurrentValueSubject.send(_:)();
  if (!*(v2 + *(*v2 + 128) + 8))
  {
LABEL_13:
    sub_1000097E8(a1, &unk_10034B5E0, &qword_1002704A8);
    return;
  }

  v5 = *(a1 + 16);
  v31 = *a1;
  v32 = v5;
  v33 = *(a1 + 32);

  sub_100009848(a1, v29, &unk_10034B5E0, &qword_1002704A8);
  sub_100035D04(&unk_10034B5E0, &qword_1002704A8);
  _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  swift_unknownObjectRelease();
  if (v6)
  {
    sub_1000097E8(a1, &unk_10034B5E0, &qword_1002704A8);
    v7 = *(v1 + *(*v1 + 112));
    if (v7)
    {
      v8 = v7;
      v9 = String._bridgeToObjectiveC()();

      [v8 removeObjectForKey:v9];
    }

    else
    {
    }

    return;
  }

  v10 = *(v1 + *(*v1 + 120));
  if (v10 == 2 || (v10 & 1) == 0)
  {
    v14 = *(v1 + *(*v1 + 112));
    if (v14)
    {
      v15 = *(a1 + 16);
      v31 = *a1;
      v32 = v15;
      v33 = *(a1 + 32);
      v16 = v14;
      v17 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
      v18 = String._bridgeToObjectiveC()();

      [v16 setValue:v17 forKey:v18];

      swift_unknownObjectRelease();
      return;
    }

    goto LABEL_13;
  }

  v11 = *(a1 + 16);
  v29[3] = *a1;
  v29[4] = v11;
  v30 = *(a1 + 32);
  sub_100035D04(&qword_10034B468, &qword_100289668);
  if (swift_dynamicCast())
  {
    sub_1001CB418(v29, &v31);
    v12 = *(&v32 + 1);
    v13 = v34;
    sub_10000EBC0(&v31, *(&v32 + 1));
    v22 = sub_10013FF24(v12, v13);
    v24 = v23;
    v25 = *(v2 + *(*v2 + 112));
    if (v25)
    {
      v26 = v25;
      isa = Data._bridgeToObjectiveC()().super.isa;
      v28 = String._bridgeToObjectiveC()();

      [v26 setValue:isa forKey:v28];
      sub_100010708(v22, v24);
    }

    else
    {

      sub_100010708(v22, v24);
    }

    sub_10000903C(&v31);
  }

  else
  {

    memset(v29, 0, 48);
    sub_1000097E8(v29, &unk_10034B470, &qword_100289670);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "### Failed to cast as Codable", v21, 2u);
    }
  }
}

void sub_1001C1C64(void *a1, char a2)
{
  v3 = v2;
  v33 = a1;
  v34 = a2;
  CurrentValueSubject.send(_:)();
  if (!*(v3 + *(*v3 + 128) + 8))
  {
LABEL_13:
    sub_100036718(a1, a2);
    return;
  }

  *&v30 = a1;
  BYTE8(v30) = a2;

  sub_10003672C(a1, a2);
  sub_100035D04(&qword_100339770, &qword_100270288);
  _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  swift_unknownObjectRelease();
  if (v6)
  {
    sub_100036718(a1, a2);
    v7 = *(v2 + *(*v2 + 112));
    if (v7)
    {
      v8 = v7;
      v9 = String._bridgeToObjectiveC()();

      [v8 removeObjectForKey:v9];
    }

    else
    {
    }

    return;
  }

  v10 = *(v2 + *(*v2 + 120));
  if (v10 == 2 || (v10 & 1) == 0)
  {
    v13 = *(v2 + *(*v2 + 112));
    if (v13)
    {
      *&v30 = a1;
      BYTE8(v30) = a2;
      v14 = v13;
      v15 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
      v16 = String._bridgeToObjectiveC()();

      [v14 setValue:v15 forKey:v16];

      swift_unknownObjectRelease();
      return;
    }

    goto LABEL_13;
  }

  v28 = a1;
  v29 = a2;
  sub_100035D04(&qword_10034B468, &qword_100289668);
  if (swift_dynamicCast())
  {
    sub_1001CB418(v27, &v30);
    v11 = v31;
    v12 = v32;
    sub_10000EBC0(&v30, v31);
    v20 = sub_10013FF24(v11, v12);
    v22 = v21;
    v23 = *(v3 + *(*v3 + 112));
    if (v23)
    {
      v24 = v23;
      isa = Data._bridgeToObjectiveC()().super.isa;
      v26 = String._bridgeToObjectiveC()();

      [v24 setValue:isa forKey:v26];
      sub_100010708(v20, v22);
    }

    else
    {

      sub_100010708(v20, v22);
    }

    sub_10000903C(&v30);
  }

  else
  {

    memset(v27, 0, sizeof(v27));
    sub_1000097E8(v27, &unk_10034B470, &qword_100289670);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "### Failed to cast as Codable", v19, 2u);
    }
  }
}

void sub_1001C2100(char a1)
{
  v2 = v1;
  v31 = a1;
  CurrentValueSubject.send(_:)();
  if (*(v2 + *(*v2 + 128) + 8))
  {
    LOBYTE(v28[0]) = a1;

    _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    objc_opt_self();
    v4 = swift_dynamicCastObjCClass();
    swift_unknownObjectRelease();
    v5 = *v1;
    if (v4)
    {
      v6 = *(v1 + *(v5 + 112));
      if (v6)
      {
        v7 = v6;
        v8 = String._bridgeToObjectiveC()();

        [v7 removeObjectForKey:v8];

        return;
      }

LABEL_11:

      return;
    }

    v9 = *(v1 + *(v5 + 120));
    if (v9 == 2 || (v9 & 1) == 0)
    {
      v12 = *(v1 + *(v5 + 112));
      if (v12)
      {
        LOBYTE(v28[0]) = a1;
        v13 = v12;
        v14 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
        v15 = String._bridgeToObjectiveC()();

        [v13 setValue:v14 forKey:v15];

        swift_unknownObjectRelease();
        return;
      }

      goto LABEL_11;
    }

    v27 = a1;
    sub_100035D04(&qword_10034B468, &qword_100289668);
    if (swift_dynamicCast())
    {
      sub_1001CB418(v26, v28);
      v10 = v29;
      v11 = v30;
      sub_10000EBC0(v28, v29);
      v19 = sub_10013FF24(v10, v11);
      v21 = v20;
      v22 = *(v2 + *(*v2 + 112));
      if (v22)
      {
        v23 = v22;
        isa = Data._bridgeToObjectiveC()().super.isa;
        v25 = String._bridgeToObjectiveC()();

        [v23 setValue:isa forKey:v25];
        sub_100010708(v19, v21);
      }

      else
      {

        sub_100010708(v19, v21);
      }

      sub_10000903C(v28);
    }

    else
    {

      memset(v26, 0, sizeof(v26));
      sub_1000097E8(v26, &unk_10034B470, &qword_100289670);
      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&_mh_execute_header, v16, v17, "### Failed to cast as Codable", v18, 2u);
      }
    }
  }
}

void sub_1001C251C(uint64_t a1, char a2)
{
  v3 = v2;
  v35 = a1;
  v6 = a2 & 1;
  v36 = a2 & 1;
  CurrentValueSubject.send(_:)();
  if (*(v3 + *(*v3 + 128) + 8))
  {
    *&v32 = a1;
    BYTE8(v32) = v6;

    sub_100035D04(&unk_10034B520, &qword_1002702E0);
    _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    objc_opt_self();
    v7 = swift_dynamicCastObjCClass();
    swift_unknownObjectRelease();
    v8 = *v2;
    if (v7)
    {
      v9 = *(v2 + *(v8 + 112));
      if (v9)
      {
        v10 = v9;
        v11 = String._bridgeToObjectiveC()();

        [v10 removeObjectForKey:v11];

        return;
      }

LABEL_11:

      return;
    }

    v12 = *(v2 + *(v8 + 120));
    if (v12 == 2 || (v12 & 1) == 0)
    {
      v15 = *(v2 + *(v8 + 112));
      if (v15)
      {
        *&v32 = a1;
        BYTE8(v32) = a2 & 1;
        v16 = v15;
        v17 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
        v18 = String._bridgeToObjectiveC()();

        [v16 setValue:v17 forKey:v18];

        swift_unknownObjectRelease();
        return;
      }

      goto LABEL_11;
    }

    v30 = a1;
    v31 = a2 & 1;
    sub_100035D04(&qword_10034B468, &qword_100289668);
    if (swift_dynamicCast())
    {
      sub_1001CB418(v29, &v32);
      v13 = v33;
      v14 = v34;
      sub_10000EBC0(&v32, v33);
      v22 = sub_10013FF24(v13, v14);
      v24 = v23;
      v25 = *(v3 + *(*v3 + 112));
      if (v25)
      {
        v26 = v25;
        isa = Data._bridgeToObjectiveC()().super.isa;
        v28 = String._bridgeToObjectiveC()();

        [v26 setValue:isa forKey:v28];
        sub_100010708(v22, v24);
      }

      else
      {

        sub_100010708(v22, v24);
      }

      sub_10000903C(&v32);
    }

    else
    {

      memset(v29, 0, sizeof(v29));
      sub_1000097E8(v29, &unk_10034B470, &qword_100289670);
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&_mh_execute_header, v19, v20, "### Failed to cast as Codable", v21, 2u);
      }
    }
  }
}

BOOL sub_1001C296C(uint64_t a1, uint64_t *a2, uint64_t *a3, void (*a4)(_BYTE *, void *))
{
  v8 = v4;
  sub_100009848(a1, v22, a2, a3);
  if (v23)
  {
    a4(v22, v24);
    v10 = v25;
    v9 = v26;
    sub_10000EBC0(v24, v25);
    v11 = (*(*(v9 + 8) + 8))(v10);
    sub_100035D04(&unk_10033D890, &qword_100275EB0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10026F050;
    v13 = [v8 uniqueIdentifier];
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    *(inited + 32) = v14;
    *(inited + 40) = v16;
    v17 = sub_1001CB970(inited);
    swift_setDeallocating();
    sub_100056F28(inited + 32);
    v18 = sub_1000089FC(v17, v11);

    v19 = *(v18 + 16);

    v20 = v19 != 0;
    sub_10000903C(v24);
  }

  else
  {
    sub_1000097E8(v22, a2, a3);
    return 0;
  }

  return v20;
}

void *sub_1001C2B34(uint64_t a1, unint64_t a2, void (*a3)(void), unint64_t a4)
{
  v33 = a3;
  v40 = a1;
  isUniquelyReferenced_nonNull_native = type metadata accessor for UUID();
  v34 = *(isUniquelyReferenced_nonNull_native - 8);
  v7 = __chkstk_darwin(isUniquelyReferenced_nonNull_native);
  v43 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v32 - v9;
  if (a2 >> 62)
  {
LABEL_24:
    v11 = _CocoaArrayWrapper.endIndex.getter();
    if (v11)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v11 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11)
    {
LABEL_3:
      v32 = a4;
      a4 = 0;
      v38 = a2 & 0xFFFFFFFFFFFFFF8;
      v39 = a2 & 0xC000000000000001;
      v41 = (v34 + 16);
      v35 = (v34 + 8);
      v12 = _swiftEmptyDictionarySingleton;
      v36 = v11;
      v37 = a2;
      while (1)
      {
        if (v39)
        {
          v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (a4 >= *(v38 + 16))
          {
            goto LABEL_21;
          }

          v16 = *(a2 + 8 * a4 + 32);
        }

        v17 = v16;
        if (__OFADD__(a4, 1))
        {
          __break(1u);
LABEL_21:
          __break(1u);
LABEL_22:
          __break(1u);
LABEL_23:
          __break(1u);
          goto LABEL_24;
        }

        v42 = (a4 + 1);
        v45 = v16;

        swift_getAtKeyPath();
        v18 = *v41;
        a2 = v43;
        v19 = v10;
        v20 = isUniquelyReferenced_nonNull_native;
        (*v41)(v43, v10, isUniquelyReferenced_nonNull_native);
        v21 = v17;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v44 = v12;
        v10 = sub_100019110(a2);
        v23 = v12[2];
        v24 = (v22 & 1) == 0;
        if (__OFADD__(v23, v24))
        {
          goto LABEL_22;
        }

        a2 = v22;
        if (v12[3] >= v23 + v24)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v32();
          }
        }

        else
        {
          v33();
          v25 = sub_100019110(v43);
          if ((a2 & 1) != (v26 & 1))
          {
            result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
            __break(1u);
            return result;
          }

          v10 = v25;
        }

        isUniquelyReferenced_nonNull_native = v20;
        v27 = v44;
        if (a2)
        {
          v13 = v44[7];
          v14 = *(v13 + 8 * v10);
          *(v13 + 8 * v10) = v21;
        }

        else
        {
          v44[(v10 >> 6) + 8] |= 1 << v10;
          v18(v27[6] + *(v34 + 72) * v10, v43, v20);
          *(v27[7] + 8 * v10) = v21;
          v28 = v27[2];
          v29 = __OFADD__(v28, 1);
          v30 = v28 + 1;
          if (v29)
          {
            goto LABEL_23;
          }

          v27[2] = v30;
        }

        v15 = *v35;
        (*v35)(v43, v20);
        v10 = v19;
        v15(v19, v20);

        ++a4;
        v12 = v27;
        a2 = v37;
        if (v42 == v36)
        {
          return v27;
        }
      }
    }
  }

  return _swiftEmptyDictionarySingleton;
}

void *sub_1001C2EA8(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  if (a2 >> 62)
  {
    goto LABEL_26;
  }

  for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v4 = 0;
    v25 = v2 & 0xFFFFFFFFFFFFFF8;
    v26 = v2 & 0xC000000000000001;
    v5 = _swiftEmptyDictionarySingleton;
    v24 = v2;
    while (v26)
    {
      v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v8 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        goto LABEL_22;
      }

LABEL_9:
      v2 = i;

      swift_getAtKeyPath();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v10 = sub_100004B58(v27, v28);
      v12 = v5[2];
      v13 = (v11 & 1) == 0;
      v14 = __OFADD__(v12, v13);
      v15 = v12 + v13;
      if (v14)
      {
        goto LABEL_24;
      }

      v16 = v11;
      if (v5[3] < v15)
      {
        sub_1000891F4(v15, isUniquelyReferenced_nonNull_native);
        v10 = sub_100004B58(v27, v28);
        if ((v16 & 1) != (v17 & 1))
        {
          result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          return result;
        }

LABEL_14:
        v18 = v5;
        if (v16)
        {
          goto LABEL_4;
        }

        goto LABEL_15;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_14;
      }

      v22 = v10;
      sub_10008B6D0();
      v10 = v22;
      v18 = v5;
      if (v16)
      {
LABEL_4:
        *(v18[7] + 8 * v10) = v7;

        swift_bridgeObjectRelease_n();

        goto LABEL_5;
      }

LABEL_15:
      v18[(v10 >> 6) + 8] |= 1 << v10;
      v19 = (v18[6] + 16 * v10);
      *v19 = v27;
      v19[1] = v28;
      *(v18[7] + 8 * v10) = v7;
      v20 = v18[2];
      v14 = __OFADD__(v20, 1);
      v21 = v20 + 1;
      if (v14)
      {
        goto LABEL_25;
      }

      v18[2] = v21;

LABEL_5:
      ++v4;
      v5 = v18;
      i = v2;
      v6 = v8 == v2;
      v2 = v24;
      if (v6)
      {
        return v18;
      }
    }

    if (v4 >= *(v25 + 16))
    {
      goto LABEL_23;
    }

    v7 = *(v2 + 8 * v4 + 32);

    v8 = v4 + 1;
    if (!__OFADD__(v4, 1))
    {
      goto LABEL_9;
    }

LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    ;
  }

  return _swiftEmptyDictionarySingleton;
}

void *sub_1001C3130(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  if (a2 >> 62)
  {
    goto LABEL_25;
  }

  for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v4 = 0;
    v29 = v2 & 0xFFFFFFFFFFFFFF8;
    v30 = v2 & 0xC000000000000001;
    v5 = _swiftEmptyDictionarySingleton;
    v28 = v2;
    while (1)
    {
      if (v30)
      {
        v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v4 >= *(v29 + 16))
        {
          goto LABEL_22;
        }

        v9 = *(v2 + 8 * v4 + 32);
      }

      v10 = v9;
      v11 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v2 = i;

      swift_getAtKeyPath();

      v12 = v10;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v14 = sub_100004B58(v31, v32);
      v16 = v5[2];
      v17 = (v15 & 1) == 0;
      v18 = __OFADD__(v16, v17);
      v19 = v16 + v17;
      if (v18)
      {
        goto LABEL_23;
      }

      v20 = v15;
      if (v5[3] < v19)
      {
        sub_100089208(v19, isUniquelyReferenced_nonNull_native);
        v14 = sub_100004B58(v31, v32);
        if ((v20 & 1) != (v21 & 1))
        {
          result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          return result;
        }

LABEL_15:
        v22 = v5;
        if (v20)
        {
          goto LABEL_4;
        }

        goto LABEL_16;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_15;
      }

      v26 = v14;
      sub_10008B6E4();
      v14 = v26;
      v22 = v5;
      if (v20)
      {
LABEL_4:
        v6 = v22[7];
        v7 = *(v6 + 8 * v14);
        *(v6 + 8 * v14) = v12;

        swift_bridgeObjectRelease_n();
        goto LABEL_5;
      }

LABEL_16:
      v22[(v14 >> 6) + 8] |= 1 << v14;
      v23 = (v22[6] + 16 * v14);
      *v23 = v31;
      v23[1] = v32;
      *(v22[7] + 8 * v14) = v12;
      v24 = v22[2];
      v18 = __OFADD__(v24, 1);
      v25 = v24 + 1;
      if (v18)
      {
        goto LABEL_24;
      }

      v22[2] = v25;

LABEL_5:
      ++v4;
      v5 = v22;
      i = v2;
      v8 = v11 == v2;
      v2 = v28;
      if (v8)
      {
        return v22;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    ;
  }

  return _swiftEmptyDictionarySingleton;
}

void sub_1001C33E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void, void), uint64_t (*a5)(void **, void *, uint64_t, uint64_t))
{
  v54 = a4;
  v55 = a5;
  v7 = v5;
  v10 = type metadata accessor for UUID();
  v63 = *(v10 - 8);
  v11 = __chkstk_darwin(v10);
  v59 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v53 - v13;

  v16 = a3(v15);

  v18 = a3(v17);
  v19 = v16[2];
  v20 = v18[2];
  v62 = v10;
  v56 = v16;
  v57 = v18;
  if (v19 <= v20 >> 3)
  {
    v64 = v18;

    sub_100068D6C(v16);
    v10 = v62;
    v22 = v64;
  }

  else
  {
    v21 = v18;

    v22 = sub_100069920(v16, v21);
  }

  v23 = v22 + 7;
  v24 = 1 << *(v22 + 32);
  v25 = -1;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  v26 = v25 & v22[7];
  v27 = (v24 + 63) >> 6;
  v60 = (v63 + 8);
  v61 = v63 + 16;

  v28 = 0;
  v58 = v14;
LABEL_8:
  if (v26)
  {
    goto LABEL_13;
  }

  while (1)
  {
    v29 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      break;
    }

    if (v29 >= v27)
    {
      v37 = a2;

      if (v57[2] <= v56[2] >> 3)
      {
        v64 = v56;
        sub_100068D6C(v57);
        v10 = v62;

        v38 = v64;
      }

      else
      {
        v38 = sub_100069920(v57, v56);
      }

      v39 = v59;
      v40 = 1 << *(v38 + 32);
      v41 = -1;
      if (v40 < 64)
      {
        v41 = ~(-1 << v40);
      }

      v42 = v41 & v38[7];
      v43 = (v40 + 63) >> 6;

      v44 = 0;
      while (v42)
      {
LABEL_28:
        (*(v63 + 16))(v39, v38[6] + *(v63 + 72) * (__clz(__rbit64(v42)) | (v44 << 6)), v10);
        if (*(a1 + 16))
        {
          v46 = sub_100019110(v39);
          v10 = v62;
          if (v47)
          {
            v64 = *(*(a1 + 56) + 8 * v46);
            v48 = v64;

            PassthroughSubject.send(_:)();

            v39 = v59;
            v10 = v62;
          }
        }

        v42 &= v42 - 1;
        (*v60)(v39, v10);
      }

      while (1)
      {
        v45 = v44 + 1;
        if (__OFADD__(v44, 1))
        {
          goto LABEL_37;
        }

        if (v45 >= v43)
        {
          break;
        }

        v42 = v38[v45 + 7];
        ++v44;
        if (v42)
        {
          v44 = v45;
          goto LABEL_28;
        }
      }

      v49 = *(v37 + 16);
      if (v49)
      {
        v50 = v54(*(v37 + 16), 0);
        v51 = v55(&v64, v50 + 4, v49, v37);
        v52 = v64;

        sub_100004F98(v52);
        if (v51 != v49)
        {
          __break(1u);
          goto LABEL_34;
        }
      }

      else
      {
LABEL_34:

        v50 = _swiftEmptyArrayStorage;
      }

      v64 = v50;
      PassthroughSubject.send(_:)();

      return;
    }

    v26 = v23[v29];
    ++v28;
    if (v26)
    {
      v28 = v29;
LABEL_13:
      (*(v63 + 16))(v14, v22[6] + *(v63 + 72) * (__clz(__rbit64(v26)) | (v28 << 6)), v10);
      if (*(a2 + 16))
      {
        v30 = sub_100019110(v14);
        v10 = v62;
        if (v31)
        {
          v64 = *(*(a2 + 56) + 8 * v30);
          v32 = v22;
          v33 = a1;
          v34 = v7;
          v35 = a2;
          v36 = v64;

          PassthroughSubject.send(_:)();

          a2 = v35;
          v7 = v34;
          a1 = v33;
          v22 = v32;
          v14 = v58;
          v10 = v62;
        }
      }

      v26 &= v26 - 1;
      (*v60)(v14, v10);
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_37:
  __break(1u);
}

void sub_1001C38E4(uint64_t a1, uint64_t a2)
{

  v4 = sub_10006DBC0();

  v5 = sub_10006DBC0();
  v6 = v5;
  v35 = v4;
  v36 = a1;
  if (*(v4 + 16) <= *(v5 + 16) >> 3)
  {
    v37 = v5;

    sub_100068F88(v4);
    v7 = v37;
  }

  else
  {

    v7 = sub_10006A38C(v4, v6);
  }

  v8 = 1 << *(v7 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & v7[7];
  v11 = (v8 + 63) >> 6;

  v12 = 0;
  while (v10)
  {
    if (!*(a2 + 16))
    {
      goto LABEL_8;
    }

LABEL_11:
    v13 = (v7[6] + ((v12 << 10) | (16 * __clz(__rbit64(v10)))));
    v14 = *v13;
    v15 = v13[1];

    v16 = sub_100004B58(v14, v15);
    if (v17)
    {
      v37 = *(*(a2 + 56) + 8 * v16);

      PassthroughSubject.send(_:)();
    }

    else
    {
    }

LABEL_8:
    v10 &= v10 - 1;
  }

  while (1)
  {
    v18 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v18 >= v11)
    {

      if (v6[2] <= v35[2] >> 3)
      {
        v37 = v35;
        sub_100068F88(v6);

        v19 = v35;
      }

      else
      {
        v19 = sub_10006A38C(v6, v35);
      }

      v20 = 1 << *(v19 + 32);
      v21 = -1;
      if (v20 < 64)
      {
        v21 = ~(-1 << v20);
      }

      v22 = v21 & v19[7];
      v23 = (v20 + 63) >> 6;

      v24 = 0;
      while (v22)
      {
        if (*(v36 + 16))
        {
LABEL_28:
          v25 = (v19[6] + ((v24 << 10) | (16 * __clz(__rbit64(v22)))));
          v26 = *v25;
          v27 = v25[1];

          v28 = sub_100004B58(v26, v27);
          if (v29)
          {
            v37 = *(*(v36 + 56) + 8 * v28);

            PassthroughSubject.send(_:)();
          }

          else
          {
          }
        }

LABEL_25:
        v22 &= v22 - 1;
      }

      while (1)
      {
        v30 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
          goto LABEL_41;
        }

        if (v30 >= v23)
        {
          break;
        }

        v22 = v19[v30 + 7];
        ++v24;
        if (v22)
        {
          v24 = v30;
          if (*(v36 + 16))
          {
            goto LABEL_28;
          }

          goto LABEL_25;
        }
      }

      v31 = *(a2 + 16);
      if (v31)
      {
        v32 = sub_100009194(*(a2 + 16), 0);
        v33 = sub_100009A04(&v37, v32 + 4, v31, a2);
        v34 = v37;

        sub_100004F98(v34);
        if (v33 != v31)
        {
          __break(1u);
          goto LABEL_38;
        }
      }

      else
      {
LABEL_38:

        v32 = _swiftEmptyArrayStorage;
      }

      v37 = v32;
      PassthroughSubject.send(_:)();

      return;
    }

    v10 = v7[v18 + 7];
    ++v12;
    if (v10)
    {
      v12 = v18;
      if (!*(a2 + 16))
      {
        goto LABEL_8;
      }

      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_41:
  __break(1u);
}

void sub_1001C3CC4(uint64_t a1, uint64_t a2)
{

  v4 = sub_10006DBC0();

  v5 = sub_10006DBC0();
  v6 = v5;
  v35 = v4;
  v36 = a1;
  if (*(v4 + 16) <= *(v5 + 16) >> 3)
  {
    v37 = v5;

    sub_100068F88(v4);
    v7 = v37;
  }

  else
  {

    v7 = sub_10006A38C(v4, v6);
  }

  v8 = 1 << *(v7 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & v7[7];
  v11 = (v8 + 63) >> 6;

  v12 = 0;
  while (v10)
  {
    if (!*(a2 + 16))
    {
      goto LABEL_8;
    }

LABEL_11:
    v14 = (v7[6] + ((v12 << 10) | (16 * __clz(__rbit64(v10)))));
    v15 = *v14;
    v16 = v14[1];

    v17 = sub_100004B58(v15, v16);
    if (v18)
    {
      v37 = *(*(a2 + 56) + 8 * v17);
      v13 = v37;

      PassthroughSubject.send(_:)();
    }

    else
    {
    }

LABEL_8:
    v10 &= v10 - 1;
  }

  while (1)
  {
    v19 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v19 >= v11)
    {

      if (v6[2] <= v35[2] >> 3)
      {
        v37 = v35;
        sub_100068F88(v6);

        v20 = v35;
      }

      else
      {
        v20 = sub_10006A38C(v6, v35);
      }

      v21 = 1 << *(v20 + 32);
      v22 = -1;
      if (v21 < 64)
      {
        v22 = ~(-1 << v21);
      }

      v23 = v22 & v20[7];
      v24 = (v21 + 63) >> 6;

      v25 = 0;
      while (v23)
      {
        if (*(v36 + 16))
        {
LABEL_28:
          v27 = (v20[6] + ((v25 << 10) | (16 * __clz(__rbit64(v23)))));
          v28 = *v27;
          v29 = v27[1];

          v30 = sub_100004B58(v28, v29);
          if (v31)
          {
            v37 = *(*(v36 + 56) + 8 * v30);
            v26 = v37;

            PassthroughSubject.send(_:)();
          }

          else
          {
          }
        }

LABEL_25:
        v23 &= v23 - 1;
      }

      while (1)
      {
        v32 = v25 + 1;
        if (__OFADD__(v25, 1))
        {
          goto LABEL_41;
        }

        if (v32 >= v24)
        {
          break;
        }

        v23 = v20[v32 + 7];
        ++v25;
        if (v23)
        {
          v25 = v32;
          if (*(v36 + 16))
          {
            goto LABEL_28;
          }

          goto LABEL_25;
        }
      }

      v33 = *(a2 + 16);
      if (v33)
      {
        sub_100009194(*(a2 + 16), 0);
        v34 = sub_1001295D4();

        sub_100004F98(v37);
        if (v34 != v33)
        {
          __break(1u);
          goto LABEL_38;
        }
      }

      else
      {
LABEL_38:
      }

      PassthroughSubject.send(_:)();

      return;
    }

    v10 = v7[v19 + 7];
    ++v12;
    if (v10)
    {
      v12 = v19;
      if (!*(a2 + 16))
      {
        goto LABEL_8;
      }

      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_41:
  __break(1u);
}

Swift::Int sub_1001C409C(uint64_t a1)
{
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    while (1)
    {
LABEL_5:
      while (1)
      {
        v9 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v10 = v9 | (v8 << 6);
        v11 = (*(a1 + 56) + 16 * v10);
        v12 = v11[1];
        if (v12)
        {
          break;
        }

        if (!v5)
        {
          goto LABEL_7;
        }
      }

      v25 = *v11;
      v26 = *(*(a1 + 48) + 8 * v10);
      v14 = _swiftEmptyDictionarySingleton[2];
      if (_swiftEmptyDictionarySingleton[3] <= v14)
      {

        sub_100085C20(v14 + 1, 1);
      }

      else
      {
      }

      Hasher.init(_seed:)();
      Hasher._combine(_:)(v26);
      result = Hasher._finalize()();
      v15 = &_swiftEmptyDictionarySingleton[8];
      v16 = -1 << LOBYTE(_swiftEmptyDictionarySingleton[4]);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~_swiftEmptyDictionarySingleton[(v17 >> 6) + 8]) == 0)
      {
        break;
      }

      v19 = __clz(__rbit64((-1 << v17) & ~_swiftEmptyDictionarySingleton[(v17 >> 6) + 8])) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_24:
      *(v15 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      *(_swiftEmptyDictionarySingleton[6] + 8 * v19) = v26;
      v24 = (_swiftEmptyDictionarySingleton[7] + 16 * v19);
      *v24 = v25;
      v24[1] = v12;
      ++_swiftEmptyDictionarySingleton[2];
      if (!v5)
      {
        goto LABEL_7;
      }
    }

    v20 = 0;
    v21 = (63 - v16) >> 6;
    while (++v18 != v21 || (v20 & 1) == 0)
    {
      v22 = v18 == v21;
      if (v18 == v21)
      {
        v18 = 0;
      }

      v20 |= v22;
      v23 = v15[v18];
      if (v23 != -1)
      {
        v19 = __clz(__rbit64(~v23)) + (v18 << 6);
        goto LABEL_24;
      }
    }
  }

  else
  {
LABEL_7:
    while (1)
    {
      v13 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v13 >= v6)
      {

        return _swiftEmptyDictionarySingleton;
      }

      v5 = *(v2 + 8 * v13);
      ++v8;
      if (v5)
      {
        v8 = v13;
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1001C42D4()
{
  v0 = type metadata accessor for Logger();
  sub_100036838(v0, qword_10038B4D0);
  sub_100003078(v0, qword_10038B4D0);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1001C4358()
{
  v0 = type metadata accessor for Logger();
  sub_100036838(v0, qword_10034B1D0);
  v1 = sub_100003078(v0, qword_10034B1D0);
  if (qword_100339170 != -1)
  {
    swift_once();
  }

  v2 = sub_100003078(v0, qword_10038B4D0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1001C4444(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1000CCEF4(a1, WitnessTable);
}

id sub_1001C4498@<X0>(uint64_t *a1@<X0>, char a2@<W1>, void *a3@<X8>)
{
  v4 = *(a1 + 8);
  if (v4 == 255)
  {
    result = 0;
  }

  else
  {
    v6 = *a1;
    v7 = objc_allocWithZone(PCTelephonyActivity);
    v8 = &selRef_initFromKnownConversation_;
    if ((a2 & 1) == 0)
    {
      v8 = &selRef_initFromSensitiveConversation_;
    }

    v9 = &selRef_initFromKnownCall_;
    if ((a2 & 1) == 0)
    {
      v9 = &selRef_initFromSensitiveCall_;
    }

    if ((v4 & 1) == 0)
    {
      v8 = v9;
    }

    result = [v7 *v8];
  }

  *a3 = result;
  return result;
}

void sub_1001C4554()
{
  type metadata accessor for TelephonyProxyState();
  v0 = swift_allocObject();
  sub_100035D04(&qword_10034B378, &qword_100289598);
  swift_allocObject();
  *(v0 + 16) = sub_10002C620(0, 0xFFu, 0, 0, 0, 0, 0);
  v1 = objc_allocWithZone(type metadata accessor for TelephonyProxy());
  v2 = sub_1001CA1AC(v0);

  qword_10038B4E8 = v2;
}

void sub_1001C45F4(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 uniqueIdentifier];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

id sub_1001C464C@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  if (v2)
  {
    v3 = 1;
  }

  else
  {
    v3 = -1;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return v2;
}

id sub_1001C4668@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *a1;
  LOBYTE(v6) = *(a1 + 8);
  if (v4 == 255)
  {
    v6 = *(a1 + 24);
    if (v6 == 255)
    {
      v5 = *(a1 + 32);
      LOBYTE(v6) = *(a1 + 40);
      sub_10003672C(v5, v6);
    }

    else
    {
      v5 = *(a1 + 16);
      v7 = v5;
    }
  }

  *a2 = v5;
  *(a2 + 8) = v6;

  return sub_10003672C(v3, v4);
}

uint64_t sub_1001C46FC(uint64_t a1)
{
  if (*(a1 + 8) == 255)
  {
    return 7104878;
  }

  v1 = *a1;
  return String.init<A>(describing:)();
}

double sub_1001C475C(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);

  sub_10003672C(v2, v3);
  sub_1001C1C64(v2, v3);

  return result;
}

void sub_1001C47C0(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;

    CurrentValueSubject.value.getter();
    v3 = v8;
    if (v8 == 1)
    {
      CurrentValueSubject.value.getter();

      v3 = v9;
      if (v9)
      {
        goto LABEL_10;
      }
    }

    else
    {

      if (v8)
      {
        goto LABEL_10;
      }
    }

    CurrentValueSubject.value.getter();
    if (v8 != 1)
    {

LABEL_15:

      return;
    }

    CurrentValueSubject.value.getter();

    v3 = v9;
    if (!v9)
    {
      goto LABEL_15;
    }

LABEL_10:

    if (qword_100339178 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_100003078(v4, qword_10034B1D0);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Call is active - updating call caches...", v7, 2u);
    }

    sub_1001C49C4(sub_1001CB430, &unk_1003106B0);
    sub_1001C49C4(sub_1001CB39C, &unk_100310688);
    goto LABEL_15;
  }
}

uint64_t sub_1001C49C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v15 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchQoS();
  v7 = *(v14 - 8);
  __chkstk_darwin(v14);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003118(0, &qword_100339320, OS_dispatch_queue_ptr);
  v10 = static OS_dispatch_queue.main.getter();
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = a1;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100018AB8;
  aBlock[3] = a2;
  v12 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1001CB3D0(&qword_10033D8C0, 255, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100035D04(&unk_100343710, &qword_100271800);
  sub_10000E244(&qword_10033D8D0, &unk_100343710, &qword_100271800, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v12);

  (*(v15 + 8))(v6, v4);
  return (*(v7 + 8))(v9, v14);
}

id sub_1001C4CB0()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver:v0];

  [*&v0[OBJC_IVAR____TtC17proximitycontrold14TelephonyProxy_conversationManager] removeDelegate:v0];
  v3.receiver = v0;
  v3.super_class = type metadata accessor for TelephonyProxy();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_1001C4E90()
{
  if (qword_100339178 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100003078(v0, qword_10034B1D0);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Activate", v3, 2u);
  }

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100035D04(&qword_100345FE0, &qword_1002795C0);
  swift_allocObject();
  return Future.init(_:)();
}

void sub_1001C4FD4(void (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  v5 = sub_100035D04(&qword_10034B5A8, &unk_100289840);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19 - v7;
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    *(swift_allocObject() + 16) = Strong;
    sub_100035D04(&qword_100345FE0, &qword_1002795C0);
    swift_allocObject();

    v12 = v11;
    v19 = Future.init(_:)();
    *(swift_allocObject() + 16) = v12;
    swift_allocObject();
    v13 = v12;
    v22 = Future.init(_:)();
    *(swift_allocObject() + 16) = v13;
    swift_allocObject();
    v14 = v13;
    v21 = Future.init(_:)();
    sub_10000E244(&qword_1003436B0, &qword_100345FE0, &qword_1002795C0, &protocol conformance descriptor for Future<A, B>);
    Publishers.Zip3.init(_:_:_:)();
    v15 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v16 = swift_allocObject();
    v16[2] = v15;
    v16[3] = sub_1000FBAA8;
    v16[4] = v9;
    sub_10000E244(&qword_10034B5B0, &qword_10034B5A8, &unk_100289840, &protocol conformance descriptor for Publishers.Zip3<A, B, C>);
    Publisher.sink(receiveCompletion:receiveValue:)();

    (*(v6 + 8))(v8, v5);
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();
  }

  else
  {

    sub_10001618C();
    v17 = swift_allocError();
    *v18 = 0x666C6573206C696ELL;
    *(v18 + 8) = 0xE800000000000000;
    *(v18 + 16) = 9;
    v19 = v17;
    v20 = 1;
    a1(&v19);
  }
}

void sub_1001C5408(uint64_t *a1, uint64_t a2, void (*a3)(void))
{
  v4 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if (v4)
    {
      if (qword_100339178 != -1)
      {
        swift_once();
      }

      v7 = type metadata accessor for Logger();
      sub_100003078(v7, qword_10034B1D0);
      swift_errorRetain();
      v8 = Logger.logObject.getter();
      v9 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        *v10 = 138412290;
        swift_errorRetain();
        v12 = _swift_stdlib_bridgeErrorToNSError();
        *(v10 + 4) = v12;
        *v11 = v12;
        _os_log_impl(&_mh_execute_header, v8, v9, "### Activation failed: %@", v10, 0xCu);
        sub_1000097E8(v11, &qword_100339940, &unk_100272C50);
      }

      v13 = v4;
      v14 = 1;
    }

    else
    {
      if (qword_100339178 != -1)
      {
        swift_once();
      }

      v20 = type metadata accessor for Logger();
      sub_100003078(v20, qword_10034B1D0);
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&_mh_execute_header, v21, v22, "Activated", v23, 2u);
      }

      sub_1001C5B78();
      v13 = 0;
      v14 = 0;
    }

    (a3)(v13, v14);
  }

  else
  {
    if (qword_100339178 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_100003078(v15, qword_10034B1D0);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "### Nil self after registrations", v18, 2u);
    }

    sub_10001618C();
    swift_allocError();
    *v19 = 0x666C6573206C696ELL;
    *(v19 + 8) = 0xE800000000000000;
    *(v19 + 16) = 9;
    a3();
  }
}

void *sub_1001C5784(void *a1)
{
  v2 = sub_100035D04(&unk_100348F30, &unk_100272540);
  __chkstk_darwin(v2 - 8);
  v4 = &v30 - v3;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);

  CurrentValueSubject.value.getter();
  v9 = v33;
  if (v33 == 254)
  {
    CurrentValueSubject.value.getter();

    v10 = v34;
    LOBYTE(v9) = v35;
    if (v35 == 255)
    {
      return v10;
    }

LABEL_5:
    v31 = a1;
    if ((v9 & 1) == 0)
    {
      v11 = [v10 callUUID];
      v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = v13;

      v15 = [v31 callUUID];
      if (v15)
      {
        v30 = v6;
        v16 = v15;
        v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v19 = v18;

        if (v17 == v12 && v19 == v14)
        {

          return v10;
        }

        v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v6 = v30;
        if (v20)
        {
          return v10;
        }
      }

      else
      {
      }
    }

    sub_1000529D8(v10, v9 & 1, v4);
    if ((*(v6 + 48))(v4, 1, v5) == 1)
    {
      sub_100036718(v10, v9);
      sub_1000097E8(v4, &unk_100348F30, &unk_100272540);
      return 0;
    }

    (*(v6 + 32))(v8, v4, v5);
    v21 = [v31 conversationUUID];
    if (v21)
    {
      v22 = v21;
      v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v25 = v24;

      v26 = UUID.uuidString.getter();
      if (v25)
      {
        if (v23 == v26 && v25 == v27)
        {

          (*(v6 + 8))(v8, v5);
          return v10;
        }

        v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

        (*(v6 + 8))(v8, v5);
        if (v29)
        {
          return v10;
        }

        sub_100036718(v10, v9);
        return 0;
      }
    }

    else
    {
      UUID.uuidString.getter();
    }

    (*(v6 + 8))(v8, v5);
    sub_100036718(v10, v9);

    return 0;
  }

  v10 = v32;

  if (v9 != 255)
  {
    goto LABEL_5;
  }

  return v10;
}

uint64_t sub_1001C5B78()
{
  v0 = type metadata accessor for DispatchWorkItemFlags();
  v15 = *(v0 - 8);
  __chkstk_darwin(v0);
  v2 = &v14 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchQoS();
  v3 = *(v14 - 8);
  __chkstk_darwin(v14);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100339178 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100003078(v6, qword_10034B1D0);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Updating routes", v9, 2u);
  }

  sub_100003118(0, &qword_100339320, OS_dispatch_queue_ptr);
  v10 = static OS_dispatch_queue.main.getter();
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_1001CEBDC;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100018AB8;
  aBlock[3] = &unk_100310750;
  v12 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1001CB3D0(&qword_10033D8C0, 255, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100035D04(&unk_100343710, &qword_100271800);
  sub_10000E244(&qword_10033D8D0, &unk_100343710, &qword_100271800, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v12);

  (*(v15 + 8))(v2, v0);
  return (*(v3 + 8))(v5, v14);
}

char *sub_1001C5F28(uint64_t a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = result;
    v3 = [*&result[OBJC_IVAR____TtC17proximitycontrold14TelephonyProxy_callCenter] routeController];
    v4 = [v3 routes];

    sub_100003118(0, &unk_10034B530, TURoute_ptr);
    v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v5 >> 62)
    {
      goto LABEL_17;
    }

    for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v20 = v2;
      v7 = 0;
      v2 = (v5 & 0xC000000000000001);
      while (1)
      {
        if (v2)
        {
          v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_16;
          }

          v8 = *(v5 + 8 * v7 + 32);
        }

        v9 = v8;
        v10 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        if ([v8 isHomePodFamily])
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        else
        {
        }

        ++v7;
        if (v10 == i)
        {
          v2 = v20;
          goto LABEL_18;
        }
      }

      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      ;
    }

LABEL_18:

    if (qword_100339178 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_100003078(v11, qword_10034B1D0);

    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 134217984;
      if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0 || (_swiftEmptyArrayStorage & 0x4000000000000000) != 0)
      {
        v15 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v15 = _swiftEmptyArrayStorage[2];
      }

      *(v14 + 4) = v15;

      _os_log_impl(&_mh_execute_header, v12, v13, "Found %ld routes", v14, 0xCu);
    }

    else
    {
    }

    v16 = *&v2[OBJC_IVAR____TtC17proximitycontrold14TelephonyProxy_homepodRoutes] + qword_100346AF8;

    os_unfair_lock_lock(v16);
    v17 = *(v16 + 8);

    v19 = sub_1001C3130(v18, _swiftEmptyArrayStorage);

    *(v16 + 8) = v19;

    os_unfair_lock_unlock(v16);

    sub_1001C3CC4(v17, v19);
  }

  return result;
}

void sub_1001C62E0(unint64_t a1)
{
  v2 = v1;
  v4 = sub_100035D04(&unk_100348F30, &unk_100272540);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v66 = &v64 - v8;
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = (&v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100339178 != -1)
  {
    goto LABEL_20;
  }

  while (1)
  {
    v13 = type metadata accessor for Logger();
    v14 = sub_100003078(v13, qword_10034B1D0);

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();

    v17 = os_log_type_enabled(v15, v16);
    v67 = v14;
    v68 = a1;
    v65 = v7;
    if (v17)
    {
      v18 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      *v18 = 136315394;
      v19 = sub_100017494(0x74756F52646E6966, 0xEF293A726F662865, &v69);
      *(v18 + 4) = v19;
      *(v18 + 12) = 2080;
      v21 = sub_1000092A0(v19, v20);
      a1 = sub_100017494(v21, v22, &v69);

      *(v18 + 14) = a1;
      _os_log_impl(&_mh_execute_header, v15, v16, "%s: device=%s", v18, 0x16u);
      swift_arrayDestroy();
    }

    sub_100003118(0, &qword_100339320, OS_dispatch_queue_ptr);
    *v12 = static OS_dispatch_queue.main.getter();
    (*(v10 + 104))(v12, enum case for DispatchPredicate.onQueue(_:), v9);
    v7 = _dispatchPreconditionTest(_:)();
    (*(v10 + 8))(v12, v9);
    if ((v7 & 1) == 0)
    {
      break;
    }

    v7 = [*&v2[OBJC_IVAR____TtC17proximitycontrold14TelephonyProxy_callCenter] routeController];
    v23 = [v7 routes];

    sub_100003118(0, &unk_10034B530, TURoute_ptr);
    v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v69 = _swiftEmptyArrayStorage;
    if (v9 >> 62)
    {
      goto LABEL_22;
    }

    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v10)
    {
      goto LABEL_23;
    }

LABEL_7:
    v12 = 0;
    while (1)
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v12 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_19;
        }

        v24 = *(v9 + 8 * v12 + 32);
      }

      v7 = v24;
      v2 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if ([v24 isHomePodFamily])
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        a1 = v69[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      else
      {
      }

      v12 = (v12 + 1);
      if (v2 == v10)
      {
        v25 = v69;
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    swift_once();
  }

  __break(1u);
LABEL_22:
  v10 = _CocoaArrayWrapper.endIndex.getter();
  if (v10)
  {
    goto LABEL_7;
  }

LABEL_23:
  v25 = _swiftEmptyArrayStorage;
LABEL_24:

  if ((v25 & 0x8000000000000000) != 0 || (v25 & 0x4000000000000000) != 0)
  {
LABEL_40:
    v26 = _CocoaArrayWrapper.endIndex.getter();
    if (v26)
    {
      goto LABEL_27;
    }
  }

  else
  {
    v26 = *(v25 + 16);
    if (v26)
    {
LABEL_27:
      v27 = 0;
      while (1)
      {
        if ((v25 & 0xC000000000000001) != 0)
        {
          v28 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v27 >= *(v25 + 16))
          {
            goto LABEL_39;
          }

          v28 = *(v25 + 8 * v27 + 32);
        }

        v29 = v28;
        v30 = v27 + 1;
        if (__OFADD__(v27, 1))
        {
          __break(1u);
LABEL_39:
          __break(1u);
          goto LABEL_40;
        }

        swift_getKeyPath();
        swift_getKeyPath();
        static Published.subscript.getter();

        v32 = sub_1001BDA3C(v69, v31);

        if (v32)
        {
          break;
        }

        ++v27;
        if (v30 == v26)
        {
          goto LABEL_41;
        }
      }

      v33 = v29;
      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.default.getter();

      if (!os_log_type_enabled(v34, v35))
      {
        goto LABEL_72;
      }

      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      *v36 = 138412290;
      *(v36 + 4) = v33;
      *v37 = v29;
      v38 = v33;
      v39 = "Found device route: %@";
LABEL_70:
      _os_log_impl(&_mh_execute_header, v34, v35, v39, v36, 0xCu);
      sub_1000097E8(v37, &qword_100339940, &unk_100272C50);

LABEL_71:

      goto LABEL_72;
    }
  }

LABEL_41:
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v40 = v69;
  if (v69)
  {
    v41 = [v69 mediaSystemIdentifier];

    if (v41)
    {
      v42 = v65;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v43 = 0;
    }

    else
    {
      v43 = 1;
      v42 = v65;
    }

    v44 = v66;
    v45 = type metadata accessor for UUID();
    v46 = *(v45 - 8);
    (*(v46 + 56))(v42, v43, 1, v45);
    sub_10003693C(v42, v44, &unk_100348F30, &unk_100272540);
    if ((*(v46 + 48))(v44, 1, v45) == 1)
    {

      sub_1000097E8(v44, &unk_100348F30, &unk_100272540);
      goto LABEL_63;
    }

    v47 = UUID.uuidString.getter();
    v49 = v48;
    (*(v46 + 8))(v44, v45);
    if (v26)
    {
      v50 = 0;
      v68 = v25 & 0xC000000000000001;
      while (1)
      {
        if (v68)
        {
          v51 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v50 >= *(v25 + 16))
          {
            goto LABEL_74;
          }

          v51 = *(v25 + 8 * v50 + 32);
        }

        v52 = v51;
        v53 = v50 + 1;
        if (__OFADD__(v50, 1))
        {
          __break(1u);
LABEL_74:
          __break(1u);
          return;
        }

        v54 = [v51 uniqueIdentifier];
        v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v57 = v56;

        if (v55 == v47 && v57 == v49)
        {

          goto LABEL_68;
        }

        v59 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v59)
        {
          break;
        }

        ++v50;
        if (v53 == v26)
        {
          goto LABEL_61;
        }
      }

LABEL_68:
      v62 = v52;
      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.default.getter();

      if (!os_log_type_enabled(v34, v35))
      {
        goto LABEL_72;
      }

      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      *v36 = 138412290;
      *(v36 + 4) = v62;
      *v37 = v52;
      v63 = v62;
      v39 = "Found route for mediaSystemIdentifier: %@";
      goto LABEL_70;
    }

LABEL_61:
  }

LABEL_63:
  v34 = Logger.logObject.getter();
  v60 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v34, v60))
  {
    v61 = swift_slowAlloc();
    *v61 = 0;
    _os_log_impl(&_mh_execute_header, v34, v60, "No route found", v61, 2u);
    goto LABEL_71;
  }

LABEL_72:
}

uint64_t sub_1001C6CE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v18 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  v8 = *(v17 - 8);
  __chkstk_darwin(v17);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  sub_100003118(0, &qword_100339320, OS_dispatch_queue_ptr);

  v12 = static OS_dispatch_queue.main.getter();
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = swift_allocObject();
  v14[2] = v13;
  v14[3] = sub_1001CEE14;
  v14[4] = v11;
  aBlock[4] = sub_1001CEC90;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100018AB8;
  aBlock[3] = &unk_100310A70;
  v15 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1001CB3D0(&qword_10033D8C0, 255, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100035D04(&unk_100343710, &qword_100271800);
  sub_10000E244(&qword_10033D8D0, &unk_100343710, &qword_100271800, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);

  (*(v18 + 8))(v7, v5);
  return (*(v8 + 8))(v10, v17);
}

void sub_1001C703C(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if (qword_100339178 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100003078(v7, qword_10034B1D0);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "Registering with TUCallCenter...", v10, 2u);
    }

    v11 = *&v6[OBJC_IVAR____TtC17proximitycontrold14TelephonyProxy_callCenter];
    v12 = swift_allocObject();
    v12[2] = v6;
    v12[3] = a2;
    v12[4] = a3;
    aBlock[4] = sub_1001CECDC;
    aBlock[5] = v12;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100018AB8;
    aBlock[3] = &unk_100310AC0;
    v13 = _Block_copy(aBlock);
    v14 = v11;
    v15 = v6;

    [v14 registerWithCompletionHandler:v13];
    _Block_release(v13);
  }

  else
  {
    sub_10001618C();
    swift_allocError();
    *v16 = 0x666C6573206C696ELL;
    *(v16 + 8) = 0xE800000000000000;
    *(v16 + 16) = 9;
    a2();
  }
}

uint64_t sub_1001C7284(uint64_t a1, uint64_t (*a2)(void, void))
{
  if (qword_100339178 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100003078(v3, qword_10034B1D0);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "Done registering with TUCallCenter", v6, 2u);
  }

  sub_1001C49C4(sub_1001CB430, &unk_1003106B0);
  sub_1001C49C4(sub_1001CB39C, &unk_100310688);
  return a2(0, 0);
}

uint64_t sub_1001C73C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v18 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  v8 = *(v17 - 8);
  __chkstk_darwin(v17);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  sub_100003118(0, &qword_100339320, OS_dispatch_queue_ptr);

  v12 = static OS_dispatch_queue.main.getter();
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = swift_allocObject();
  v14[2] = v13;
  v14[3] = sub_1001CEE14;
  v14[4] = v11;
  aBlock[4] = sub_1001CEC2C;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100018AB8;
  aBlock[3] = &unk_100310958;
  v15 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1001CB3D0(&qword_10033D8C0, 255, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100035D04(&unk_100343710, &qword_100271800);
  sub_10000E244(&qword_10033D8D0, &unk_100343710, &qword_100271800, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);

  (*(v18 + 8))(v7, v5);
  return (*(v8 + 8))(v10, v17);
}

void sub_1001C7720(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if (qword_100339178 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100003078(v7, qword_10034B1D0);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "Registering with TUConversationManager...", v10, 2u);
    }

    v11 = OBJC_IVAR____TtC17proximitycontrold14TelephonyProxy_conversationManager;
    v12 = qword_1003391E8;
    v13 = *&v6[OBJC_IVAR____TtC17proximitycontrold14TelephonyProxy_conversationManager];
    v14 = v6;
    if (v12 != -1)
    {
      swift_once();
    }

    [v13 addDelegate:v14 queue:qword_10038B5B8];

    v15 = *&v6[v11];
    v16 = swift_allocObject();
    v16[2] = v14;
    v16[3] = a2;
    v16[4] = a3;
    aBlock[4] = sub_1001CEC38;
    aBlock[5] = v16;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100018AB8;
    aBlock[3] = &unk_1003109A8;
    v17 = _Block_copy(aBlock);
    v18 = v14;
    v19 = v15;

    [v19 registerWithCompletionHandler:v17];
    _Block_release(v17);
  }

  else
  {
    sub_10001618C();
    swift_allocError();
    *v20 = 0x666C6573206C696ELL;
    *(v20 + 8) = 0xE800000000000000;
    *(v20 + 16) = 9;
    a2();
  }
}

double sub_1001C79D8(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS();
  v10 = *(v18 - 8);
  __chkstk_darwin(v18);
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1003391E8 != -1)
  {
    swift_once();
  }

  v17[1] = qword_10038B5B8;
  v13 = swift_allocObject();
  v13[2] = a1;
  v13[3] = a2;
  v13[4] = a3;
  aBlock[4] = sub_1001CEC44;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100018AB8;
  aBlock[3] = &unk_1003109F8;
  v14 = _Block_copy(aBlock);
  v15 = a1;

  static DispatchQoS.unspecified.getter();
  v19 = _swiftEmptyArrayStorage;
  sub_1001CB3D0(&qword_10033D8C0, 255, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100035D04(&unk_100343710, &qword_100271800);
  sub_10000E244(&qword_10033D8D0, &unk_100343710, &qword_100271800, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);
  (*(v7 + 8))(v9, v6);
  (*(v10 + 8))(v12, v18);

  return result;
}

uint64_t sub_1001C7CF0(char *a1, uint64_t (*a2)(void, void))
{
  if (qword_100339178 == -1)
  {
    goto LABEL_2;
  }

  while (1)
  {
    swift_once();
LABEL_2:
    v2 = type metadata accessor for Logger();
    sub_100003078(v2, qword_10034B1D0);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Done registering with TUConversationManager", v5, 2u);
    }

    v6 = *&a1[OBJC_IVAR____TtC17proximitycontrold14TelephonyProxy_conversationManager];
    v7 = [v6 activeConversations];
    sub_100003118(0, &qword_10034B5B8, TUConversation_ptr);
    sub_100076FC4(&unk_10034B5C0, &qword_10034B5B8, TUConversation_ptr, &protocol conformance descriptor for NSObject);
    v8 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    if ((v8 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      __CocoaSet.makeIterator()();
      Set.Iterator.init(_cocoa:)();
      v10 = v28;
      v9 = v29;
      v11 = v30;
      v12 = v31;
      v13 = v32;
    }

    else
    {
      v14 = -1 << *(v8 + 32);
      v9 = v8 + 56;
      v11 = ~v14;
      v15 = -v14;
      v16 = v15 < 64 ? ~(-1 << v15) : -1;
      v13 = v16 & *(v8 + 56);

      v12 = 0;
      v10 = v8;
    }

    v24 = v11;
    v17 = (v11 + 64) >> 6;
    if (v10 < 0)
    {
      break;
    }

LABEL_11:
    v18 = v12;
    v19 = v13;
    v20 = v12;
    if (v13)
    {
LABEL_15:
      v21 = (v19 - 1) & v19;
      v22 = *(*(v10 + 48) + ((v20 << 9) | (8 * __clz(__rbit64(v19)))));
      if (v22)
      {
        goto LABEL_19;
      }

      goto LABEL_21;
    }

    while (1)
    {
      v20 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v20 >= v17)
      {
        goto LABEL_21;
      }

      v19 = *(v9 + 8 * v20);
      ++v18;
      if (v19)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  while (__CocoaSet.Iterator.next()())
  {
    swift_dynamicCast();
    v22 = v27;
    v20 = v12;
    v21 = v13;
    if (!v27)
    {
      break;
    }

LABEL_19:
    [a1 conversationManager:v6 stateChangedForConversation:{v22, v24}];

    v12 = v20;
    v13 = v21;
    if ((v10 & 0x8000000000000000) == 0)
    {
      goto LABEL_11;
    }
  }

LABEL_21:
  sub_100004F98(v10);

  return a2(0, 0);
}

uint64_t sub_1001C8014(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v18 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  v8 = *(v17 - 8);
  __chkstk_darwin(v17);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  sub_100003118(0, &qword_100339320, OS_dispatch_queue_ptr);

  v12 = static OS_dispatch_queue.main.getter();
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = swift_allocObject();
  v14[2] = v13;
  v14[3] = sub_1001CEE14;
  v14[4] = v11;
  aBlock[4] = sub_1001CEC10;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100018AB8;
  aBlock[3] = &unk_100310890;
  v15 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1001CB3D0(&qword_10033D8C0, 255, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100035D04(&unk_100343710, &qword_100271800);
  sub_10000E244(&qword_10033D8D0, &unk_100343710, &qword_100271800, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);

  (*(v18 + 8))(v7, v5);
  return (*(v8 + 8))(v10, v17);
}

uint64_t sub_1001C836C(uint64_t a1, uint64_t (*a2)(void, void))
{
  v3 = objc_opt_self();
  v4 = [v3 defaultCenter];
  v5 = TUCallCenterCallStatusChangedNotification;
  v18 = sub_1001CEC1C;
  v19 = a1;
  aBlock = _NSConcreteStackBlock;
  v15 = 1107296256;
  v16 = sub_1001C86E4;
  v17 = &unk_1003108B8;
  v6 = _Block_copy(&aBlock);

  v7 = [v4 addObserverForName:v5 object:0 queue:0 usingBlock:v6];
  _Block_release(v6);
  swift_unknownObjectRelease();

  v8 = [v3 defaultCenter];
  v9 = TUCallCenterVideoCallStatusChangedNotification;
  v18 = sub_1001CEC24;
  v19 = a1;
  aBlock = _NSConcreteStackBlock;
  v15 = 1107296256;
  v16 = sub_1001C86E4;
  v17 = &unk_1003108E0;
  v10 = _Block_copy(&aBlock);

  v11 = [v8 addObserverForName:v9 object:0 queue:0 usingBlock:v10];
  _Block_release(v10);
  swift_unknownObjectRelease();

  return a2(0, 0);
}

void sub_1001C858C(uint64_t a1, uint64_t a2)
{
  if (qword_100339178 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_10034B1D0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Call status changed", v5, 2u);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    sub_1001C49C4(sub_1001CB430, &unk_1003106B0);
  }

  swift_beginAccess();
  v8 = swift_unknownObjectWeakLoadStrong();
  if (v8)
  {
    v9 = v8;
    sub_1001C5B78();
  }
}

uint64_t sub_1001C86E4(uint64_t a1, uint64_t a2)
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

void sub_1001C87D8(uint64_t a1, uint64_t a2)
{
  if (qword_100339178 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_10034B1D0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Video call status changed", v5, 2u);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    sub_1001C49C4(sub_1001CB39C, &unk_100310688);
  }
}

uint64_t sub_1001C8904()
{
  v1 = v0;
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = v52 - v7;
  v9 = [v0 sourceIdentifier];
  if (v9)
  {
    v10 = v9;
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    strcpy(v52, "source=");
    v52[1] = 0xE700000000000000;
    v14._countAndFlagsBits = v11;
    v14._object = v13;
    String.append(_:)(v14);

    v15 = v52[0];
    v16 = v52[1];
    v17 = sub_100009088(0, 1, 1, _swiftEmptyArrayStorage);
    v19 = *(v17 + 2);
    v18 = *(v17 + 3);
    if (v19 >= v18 >> 1)
    {
      v17 = sub_100009088((v18 > 1), v19 + 1, 1, v17);
    }

    *(v17 + 2) = v19 + 1;
    v20 = &v17[16 * v19];
    *(v20 + 4) = v15;
    *(v20 + 5) = v16;
  }

  else
  {
    v17 = _swiftEmptyArrayStorage;
  }

  v21 = [v0 dateConnected];
  if (v21)
  {
    v22 = v21;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v3 + 32))(v8, v6, v2);
    v52[0] = 0x3D65746164;
    v52[1] = 0xE500000000000000;
    sub_1001CB3D0(&qword_100345628, 255, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v23._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v23);

    v24 = v52[0];
    v25 = v52[1];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v17 = sub_100009088(0, *(v17 + 2) + 1, 1, v17);
    }

    v27 = *(v17 + 2);
    v26 = *(v17 + 3);
    if (v27 >= v26 >> 1)
    {
      v17 = sub_100009088((v26 > 1), v27 + 1, 1, v17);
    }

    (*(v3 + 8))(v8, v2);
    *(v17 + 2) = v27 + 1;
    v28 = &v17[16 * v27];
    *(v28 + 4) = v24;
    *(v28 + 5) = v25;
  }

  v29 = [v1 suggestedDisplayName];
  if (v29)
  {
    v30 = v29;
    v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v33 = v32;

    v52[0] = 0;
    v52[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(23);

    v52[0] = 0xD000000000000015;
    v52[1] = 0x80000001002A4680;
    v34._countAndFlagsBits = v31;
    v34._object = v33;
    String.append(_:)(v34);

    v35 = v52[0];
    v36 = v52[1];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v17 = sub_100009088(0, *(v17 + 2) + 1, 1, v17);
    }

    v38 = *(v17 + 2);
    v37 = *(v17 + 3);
    if (v38 >= v37 >> 1)
    {
      v17 = sub_100009088((v37 > 1), v38 + 1, 1, v17);
    }

    *(v17 + 2) = v38 + 1;
    v39 = &v17[16 * v38];
    *(v39 + 4) = v35;
    *(v39 + 5) = v36;
  }

  strcpy(v52, "displayName=");
  BYTE5(v52[1]) = 0;
  HIWORD(v52[1]) = -5120;
  v40 = [v1 displayName];
  v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v43 = v42;

  v44._countAndFlagsBits = v41;
  v44._object = v43;
  String.append(_:)(v44);

  v45 = v52[0];
  v46 = v52[1];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v17 = sub_100009088(0, *(v17 + 2) + 1, 1, v17);
  }

  v48 = *(v17 + 2);
  v47 = *(v17 + 3);
  if (v48 >= v47 >> 1)
  {
    v17 = sub_100009088((v47 > 1), v48 + 1, 1, v17);
  }

  *(v17 + 2) = v48 + 1;
  v49 = &v17[16 * v48];
  *(v49 + 4) = v45;
  *(v49 + 5) = v46;
  v52[0] = v17;
  sub_100035D04(&qword_1003397D0, &qword_1002729A0);
  sub_10000E244(&qword_10033D8A0, &qword_1003397D0, &qword_1002729A0, &protocol conformance descriptor for [A]);
  v50 = BidirectionalCollection<>.joined(separator:)();

  return v50;
}

double sub_1001C8E20(uint64_t a1, SEL *a2, char *a3, void *a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = [*(Strong + OBJC_IVAR____TtC17proximitycontrold14TelephonyProxy_callCenter) *a2];
    sub_100003118(0, &qword_10034B460, TUCall_ptr);
    v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    format = a3;
    if (v10 >> 62)
    {
      goto LABEL_16;
    }

    for (i = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v12 = 0;
      while (1)
      {
        if ((v10 & 0xC000000000000001) != 0)
        {
          v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v12 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_15;
          }

          v13 = *(v10 + 8 * v12 + 32);
        }

        v14 = v13;
        v15 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if ([v13 status] == 1)
        {

          goto LABEL_18;
        }

        ++v12;
        if (v15 == i)
        {
          goto LABEL_17;
        }
      }

      __break(1u);
LABEL_15:
      __break(1u);
LABEL_16:
      ;
    }

LABEL_17:

    v14 = 0;
LABEL_18:
    if (qword_100339178 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_100003078(v16, qword_10034B1D0);
    v17 = v14;
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v28 = v21;
      *v20 = 136315138;
      if (v14)
      {
        sub_1001C8904();
        v22 = String.init<A>(describing:)();
        v24 = v23;
      }

      else
      {
        v24 = 0xE300000000000000;
        v22 = 7104878;
      }

      v25 = sub_100017494(v22, v24, &v28);

      *(v20 + 4) = v25;
      _os_log_impl(&_mh_execute_header, v18, v19, format, v20, 0xCu);
      sub_10000903C(v21);
    }

    v26 = v17;

    sub_1001C0E48(v14, &qword_100339750, &qword_100289660);
  }

  return result;
}

uint64_t sub_1001C9124(char a1, void *a2)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v18 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  v8 = *(v17 - 8);
  __chkstk_darwin(v17);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003118(0, &qword_100339320, OS_dispatch_queue_ptr);
  v11 = static OS_dispatch_queue.main.getter();
  v12 = swift_allocObject();
  *(v12 + 16) = a1 & 1;
  *(v12 + 24) = a2;
  *(v12 + 32) = v2;
  aBlock[4] = sub_1001CEBD0;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100018AB8;
  aBlock[3] = &unk_100310728;
  v13 = _Block_copy(aBlock);
  v14 = a2;
  v15 = v2;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1001CB3D0(&qword_10033D8C0, 255, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100035D04(&unk_100343710, &qword_100271800);
  sub_10000E244(&qword_10033D8D0, &unk_100343710, &qword_100271800, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v13);

  (*(v18 + 8))(v7, v5);
  return (*(v8 + 8))(v10, v17);
}

double sub_1001C9430(char a1, void *a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v54 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v48[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_100035D04(&qword_10034B598, &qword_100289828);
  __chkstk_darwin(v9);
  v11 = &v48[-v10];
  v12 = sub_100035D04(&unk_100348F30, &unk_100272540);
  v13 = __chkstk_darwin(v12 - 8);
  v15 = &v48[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = __chkstk_darwin(v13);
  v18 = &v48[-v17];
  __chkstk_darwin(v16);
  v20 = &v48[-v19];
  v21 = [a2 state];
  if ((a1 & 1) == 0 && v21 == 3)
  {
    if (qword_100339178 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_100003078(v22, qword_10034B1D0);
    v23 = a2;
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *v26 = 138412290;
      *(v26 + 4) = v23;
      *v27 = v23;
      v28 = v23;
      _os_log_impl(&_mh_execute_header, v24, v25, "Setting activeConversation: %@", v26, 0xCu);
      sub_1000097E8(v27, &qword_100339940, &unk_100272C50);
    }

    v29 = v23;

    sub_1001C0E48(v23, &qword_100339730, &unk_100289830);

    return result;
  }

  v51 = OBJC_IVAR____TtC17proximitycontrold14TelephonyProxy__activeConversation;
  v52 = v15;

  CurrentValueSubject.value.getter();
  v31 = v55;
  if (v55 == 1)
  {
    CurrentValueSubject.value.getter();

    v31 = v56;
  }

  else
  {
  }

  v53 = a3;
  v50 = v8;
  if (v31)
  {
    v32 = [v31 UUID];

    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    v33 = 0;
  }

  else
  {
    v33 = 1;
  }

  v34 = v54;
  v35 = *(v54 + 56);
  v35(v20, v33, 1, v6);
  v36 = [a2 UUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v35(v18, 0, 1, v6);
  v37 = *(v9 + 48);
  sub_100009848(v20, v11, &unk_100348F30, &unk_100272540);
  sub_100009848(v18, &v11[v37], &unk_100348F30, &unk_100272540);
  v38 = *(v34 + 48);
  if (v38(v11, 1, v6) != 1)
  {
    v39 = v52;
    sub_100009848(v11, v52, &unk_100348F30, &unk_100272540);
    if (v38(&v11[v37], 1, v6) != 1)
    {
      v40 = v54;
      v41 = &v11[v37];
      v42 = v50;
      (*(v54 + 32))(v50, v41, v6);
      sub_1001CB3D0(&qword_10034B5A0, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v49 = dispatch thunk of static Equatable.== infix(_:_:)();
      v43 = *(v40 + 8);
      v43(v42, v6);
      sub_1000097E8(v18, &unk_100348F30, &unk_100272540);
      sub_1000097E8(v20, &unk_100348F30, &unk_100272540);
      v43(v39, v6);
      sub_1000097E8(v11, &unk_100348F30, &unk_100272540);
      if ((v49 & 1) == 0)
      {
        return result;
      }

      goto LABEL_23;
    }

    sub_1000097E8(v18, &unk_100348F30, &unk_100272540);
    sub_1000097E8(v20, &unk_100348F30, &unk_100272540);
    (*(v54 + 8))(v39, v6);
LABEL_21:
    sub_1000097E8(v11, &qword_10034B598, &qword_100289828);
    return result;
  }

  sub_1000097E8(v18, &unk_100348F30, &unk_100272540);
  sub_1000097E8(v20, &unk_100348F30, &unk_100272540);
  if (v38(&v11[v37], 1, v6) != 1)
  {
    goto LABEL_21;
  }

  sub_1000097E8(v11, &unk_100348F30, &unk_100272540);
LABEL_23:
  if (qword_100339178 != -1)
  {
    swift_once();
  }

  v44 = type metadata accessor for Logger();
  sub_100003078(v44, qword_10034B1D0);
  v45 = Logger.logObject.getter();
  v46 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    *v47 = 0;
    _os_log_impl(&_mh_execute_header, v45, v46, "Setting activeConversation: nil", v47, 2u);
  }

  sub_1001C0E48(0, &qword_100339730, &unk_100289830);

  return result;
}

uint64_t sub_1001C9D7C(uint64_t a1, uint64_t a2)
{
  result = sub_1001CB3D0(&qword_10034B370, a2, type metadata accessor for TelephonyProxyState, &unk_100289554);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1001C9DD4()
{
  v1 = v0;
  v16[0] = 0;
  v16[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(80);
  v17 = 0;
  v18 = 0xE000000000000000;
  v2._countAndFlagsBits = 0xD000000000000026;
  v2._object = 0x80000001002A46A0;
  String.append(_:)(v2);
  v3 = *(v0 + OBJC_IVAR____TtC17proximitycontrold14TelephonyProxy_state);
  v16[3] = type metadata accessor for TelephonyProxyState();
  v16[0] = v3;

  v4 = sub_100058004(v16);
  v6 = v5;
  sub_10000903C(v16);
  v7._countAndFlagsBits = v4;
  v7._object = v6;
  String.append(_:)(v7);

  v8._object = 0x80000001002A46D0;
  v8._countAndFlagsBits = 0xD000000000000012;
  String.append(_:)(v8);
  v9 = *(v1 + OBJC_IVAR____TtC17proximitycontrold14TelephonyProxy_homepodRoutes) + qword_100346AF8;

  os_unfair_lock_lock(v9);
  v10 = *(*(v9 + 8) + 16);
  os_unfair_lock_unlock(v9);

  v16[0] = v10;
  v11._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v11);

  v12._object = 0x80000001002A46F0;
  v12._countAndFlagsBits = 0xD000000000000012;
  String.append(_:)(v12);
  v13 = OBJC_IVAR____TtC17proximitycontrold14TelephonyProxy_tasks;
  swift_beginAccess();
  if ((*(v1 + v13) & 0xC000000000000001) != 0)
  {

    __CocoaSet.count.getter();
  }

  v14._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v14);

  return v17;
}

uint64_t sub_1001C9FD0()
{
  v1 = [v0 sourceIdentifier];
  if (v1)
  {
    v2 = v1;
  }

  else
  {
    v5 = [v0 service];
    if (v5 > 1)
    {
      if (v5 == 2 || v5 == 3)
      {
        return 0xD000000000000012;
      }
    }

    else if (v5 == 1)
    {
      return 0xD000000000000015;
    }

    v6 = [v0 provider];
    v2 = [v6 bundleIdentifier];

    if (!v2)
    {
      return 0;
    }
  }

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

void *sub_1001CA11C(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
    }

    v8 = sub_100008198(result, a2, a3, a4);

    return v8;
  }

  return result;
}

char *sub_1001CA1AC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100035D04(&unk_10034B380, &unk_1002895A0);
  v85 = *(v4 - 8);
  v86 = v4;
  __chkstk_darwin(v4);
  v84 = &v62 - v5;
  v6 = sub_100035D04(&qword_10034AE08, qword_100288FA8);
  v82 = *(v6 - 8);
  v83 = v6;
  __chkstk_darwin(v6);
  v81 = &v62 - v7;
  v8 = type metadata accessor for Logger();
  v74 = *(v8 - 8);
  v75 = v8;
  __chkstk_darwin(v8);
  v70 = v9;
  v71 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100035D04(&unk_10034B390, &unk_1002895B0);
  v77 = *(v10 - 8);
  v78 = v10;
  __chkstk_darwin(v10);
  v76 = &v62 - v11;
  v12 = sub_100035D04(&qword_10034C680, &qword_100270390);
  __chkstk_darwin(v12 - 8);
  v69 = &v62 - v13;
  v73 = sub_100035D04(&qword_10034B3A0, &qword_1002895C0);
  v72 = *(v73 - 8);
  __chkstk_darwin(v73);
  v88 = &v62 - v14;
  v68 = sub_100035D04(&qword_10034B3A8, &qword_1002895C8);
  __chkstk_darwin(v68);
  v64 = &v62 - v15;
  v66 = sub_100035D04(&qword_10034B3B0, &qword_1002895D0);
  v16 = __chkstk_darwin(v66);
  v62 = &v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v65 = sub_100035D04(&qword_10034B3B8, &qword_1002895D8);
  v67 = *(v65 - 8);
  __chkstk_darwin(v65);
  v63 = &v62 - v18;
  v87 = sub_100035D04(&qword_10034B3C0, &qword_1002895E0);
  v80 = *(v87 - 8);
  __chkstk_darwin(v87);
  v89 = &v62 - v19;
  v20 = OBJC_IVAR____TtC17proximitycontrold14TelephonyProxy_callCenter;
  v21 = objc_opt_self();
  *&v2[v20] = [v21 sharedInstance];
  v22 = OBJC_IVAR____TtC17proximitycontrold14TelephonyProxy_conversationManager;
  v23 = [v21 sharedInstance];
  v24 = [v23 conversationManager];

  *&v2[v22] = v24;
  v25 = OBJC_IVAR____TtC17proximitycontrold14TelephonyProxy__activeAudioCall;
  sub_100035D04(&qword_10034B3C8, &qword_1002895E8);
  swift_allocObject();
  *&v2[v25] = sub_10002D434(0, 0, 0, 0, 0, 0);
  v26 = OBJC_IVAR____TtC17proximitycontrold14TelephonyProxy__activeVideoCall;
  swift_allocObject();
  *&v2[v26] = sub_10002D434(0, 0, 0, 0, 0, 0);
  v27 = OBJC_IVAR____TtC17proximitycontrold14TelephonyProxy__activeConversation;
  sub_100035D04(&qword_10034B3D0, qword_1002895F0);
  swift_allocObject();
  *&v2[v27] = sub_10002D4B4(0, 0, 0, 0, 0, 0);
  v28 = OBJC_IVAR____TtC17proximitycontrold14TelephonyProxy_homepodRoutes;
  KeyPath = swift_getKeyPath();
  sub_100035D04(&unk_10034B3D8, &unk_100289640);
  swift_allocObject();
  v30 = sub_10006B6A4(KeyPath, 0);

  *&v2[v28] = v30;
  *&v2[OBJC_IVAR____TtC17proximitycontrold14TelephonyProxy_tasks] = &_swiftEmptySetSingleton;
  *&v2[OBJC_IVAR____TtC17proximitycontrold14TelephonyProxy_state] = a1;
  v31 = type metadata accessor for TelephonyProxy();
  v91.receiver = v2;
  v91.super_class = v31;
  v79 = a1;

  v32 = objc_msgSendSuper2(&v91, "init");
  v90 = *&v32[OBJC_IVAR____TtC17proximitycontrold14TelephonyProxy__activeAudioCall];
  v33 = v32;

  sub_100035D04(&qword_100339770, &qword_100270288);
  sub_10000E244(&qword_10034B3E8, &qword_10034B3C8, &qword_1002895E8, &unk_10027C688);
  Publisher.map<A>(_:)();

  v90 = *&v33[OBJC_IVAR____TtC17proximitycontrold14TelephonyProxy__activeVideoCall];

  Publisher.map<A>(_:)();

  v90 = *&v33[OBJC_IVAR____TtC17proximitycontrold14TelephonyProxy__activeConversation];
  sub_10000E244(&qword_10034B3F0, &qword_10034B3D0, qword_1002895F0, &unk_10027C688);

  Publisher.map<A>(_:)();

  sub_10000E244(&qword_10034B3F8, &qword_10034B3B0, &qword_1002895D0, &protocol conformance descriptor for Publishers.Map<A, B>);
  sub_10000E244(&qword_10034B400, &qword_10034B3A8, &qword_1002895C8, &protocol conformance descriptor for Publishers.Map<A, B>);
  v34 = v63;
  Publishers.CombineLatest3.init(_:_:_:)();
  sub_10000E244(&unk_10034B408, &qword_10034B3B8, &qword_1002895D8, &protocol conformance descriptor for Publishers.CombineLatest3<A, B, C>);
  v35 = v65;
  Publisher.map<A>(_:)();
  (*(v67 + 8))(v34, v35);
  if (qword_1003391E8 != -1)
  {
    swift_once();
  }

  v36 = qword_10038B5B8;
  v90 = qword_10038B5B8;
  v37 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v38 = v69;
  (*(*(v37 - 8) + 56))(v69, 1, 1, v37);
  sub_100003118(0, &qword_100339320, OS_dispatch_queue_ptr);
  sub_10000E244(&qword_10034B418, &qword_10034B3C0, &qword_1002895E0, &protocol conformance descriptor for Publishers.Map<A, B>);
  sub_100076FC4(&qword_10034B420, &qword_100339320, OS_dispatch_queue_ptr, &protocol conformance descriptor for OS_dispatch_queue);
  v39 = v36;
  Publisher.receive<A>(on:options:)();
  sub_1000097E8(v38, &qword_10034C680, &qword_100270390);

  if (qword_100339178 != -1)
  {
    swift_once();
  }

  v40 = v75;
  v41 = sub_100003078(v75, qword_10034B1D0);
  v42 = static os_log_type_t.info.getter();
  v43 = v74;
  v44 = v71;
  (*(v74 + 16))(v71, v41, v40);
  v45 = (*(v43 + 80) + 64) & ~*(v43 + 80);
  v46 = v45 + v70;
  v47 = swift_allocObject();
  *(v47 + 16) = sub_1001C46FC;
  *(v47 + 24) = xmmword_100272E90;
  *(v47 + 40) = 0x80000001002A4660;
  *(v47 + 48) = 0;
  *(v47 + 56) = 0xE000000000000000;
  (*(v43 + 32))(v47 + v45, v44, v40);
  *(v47 + v46) = v42;
  sub_10000E244(&qword_10034B428, &qword_10034B3A0, &qword_1002895C0, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
  v48 = v76;
  v49 = v73;
  v50 = v88;
  Publisher.map<A>(_:)();

  sub_10000E244(&qword_10034B430, &unk_10034B390, &unk_1002895B0, &protocol conformance descriptor for Publishers.Map<A, B>);
  v51 = v78;
  v52 = Publisher.eraseToAnyPublisher()();
  (*(v77 + 8))(v48, v51);
  (*(v72 + 8))(v50, v49);
  v90 = v52;

  sub_100035D04(&qword_10034B438, &unk_100289650);
  sub_10000E244(&unk_10034B440, &qword_10034B438, &unk_100289650, &protocol conformance descriptor for AnyPublisher<A, B>);
  Publisher<>.sink(receiveValue:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  if (qword_100339268 != -1)
  {
    swift_once();
  }

  v90 = sub_10005E50C();
  sub_100035D04(&unk_1003436D0, &qword_1002702F0);
  sub_10000E244(&unk_10034A4A0, &unk_1003436D0, &qword_1002702F0, &protocol conformance descriptor for CurrentValueSubject<A, B>);
  v53 = Publisher.eraseToAnyPublisher()();

  v90 = v53;
  sub_100035D04(&unk_1003436E0, &unk_100276210);
  sub_10000E244(&qword_10034A4B0, &unk_1003436E0, &unk_100276210, &protocol conformance descriptor for AnyPublisher<A, B>);
  v54 = v81;
  Publisher.filter(_:)();

  sub_10000E244(&qword_10034AE10, &qword_10034AE08, qword_100288FA8, &protocol conformance descriptor for Publishers.Filter<A>);
  v56 = v83;
  v55 = v84;
  Publisher.map<A>(_:)();
  sub_10000E244(&unk_10034B450, &unk_10034B380, &unk_1002895A0, &protocol conformance descriptor for Publishers.Map<A, B>);
  v57 = v86;
  v58 = Publisher.eraseToAnyPublisher()();
  (*(v85 + 8))(v55, v57);
  (*(v82 + 8))(v54, v56);
  v90 = v58;
  v59 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v60 = swift_allocObject();
  *(v60 + 16) = sub_1001CB394;
  *(v60 + 24) = v59;
  sub_100035D04(&qword_10033D630, &unk_100274960);
  sub_10000E244(&qword_10034A3F0, &qword_10033D630, &unk_100274960, &protocol conformance descriptor for AnyPublisher<A, B>);
  Publisher<>.sink(receiveValue:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  (*(v80 + 8))(v89, v87);
  return v33;
}

id sub_1001CB2C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for Logger() - 8);
  v6 = sub_1001CC074(*a1, *(a1 + 8), *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), *(v2 + 48), *(v2 + 56), v2 + ((*(v5 + 80) + 64) & ~*(v5 + 80)), *(v2 + ((*(v5 + 80) + 64) & ~*(v5 + 80)) + *(v5 + 64)));
  *a2 = v6;
  *(a2 + 8) = v7;

  return sub_10003672C(v6, v7);
}

uint64_t sub_1001CB3D0(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

_OWORD *sub_1001CB418(__int128 *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a1[2];
  a2[1] = a1[1];
  a2[2] = v3;
  *a2 = v2;
  return a2;
}

id sub_1001CB464(uint64_t a1)
{
  v1 = sub_100035D04(&unk_100348F30, &unk_100272540);
  __chkstk_darwin(v1 - 8);
  v3 = &v30 - v2;
  sub_100035D04(&qword_10034B550, &qword_100289800);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1002727F0;
  *(inited + 32) = 0;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v5 = v31;
  if (v31)
  {
    v6 = [v31 effectiveIdentifier];

    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  *(inited + 40) = v5;
  *(inited + 48) = v8;
  *(inited + 56) = 2;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  sub_1000BC398(v3);

  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v3, 1, v9) == 1)
  {
    sub_1000097E8(v3, &unk_100348F30, &unk_100272540);
    v11 = 0;
    v12 = 0;
  }

  else
  {
    v11 = UUID.uuidString.getter();
    v12 = v13;
    (*(v10 + 8))(v3, v9);
  }

  *(inited + 64) = v11;
  *(inited + 72) = v12;
  *(inited + 80) = 1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v16 = sub_10000DF0C(v14, v15);
  v18 = v17;

  *(inited + 88) = v16;
  *(inited + 96) = v18;
  v19 = sub_10024CE24(inited);
  swift_setDeallocating();
  sub_100035D04(&qword_10034B558, &qword_100289808);
  swift_arrayDestroy();
  v20 = sub_1001C409C(v19);

  if (*(v20 + 16))
  {
    sub_1001402BC(v20);

    v21 = [objc_allocWithZone(TUNearbyDeviceHandleCapabilities) init];
    v22 = objc_allocWithZone(TUNearbyDeviceHandle);
    sub_100003118(0, &qword_10034B560, NSNumber_ptr);
    sub_100076FC4(&qword_10034B568, &qword_10034B560, NSNumber_ptr, &protocol conformance descriptor for NSObject);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v24 = [v22 initWithName:0 knownIdentifiers:isa deviceModel:0 capabilities:v21];
  }

  else
  {

    if (qword_100339178 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_100003078(v25, qword_10034B1D0);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v26, v27, "### No knownIdentifiers?", v28, 2u);
    }

    return 0;
  }

  return v24;
}

Swift::Int sub_1001CB970(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100035D04(&qword_10033C2D0, &qword_100272AC8);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v11 = ~(-1 << *(v3 + 32));
      for (i = result & v11; ; i = (i + 1) & v11)
      {
        v13 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v13) == 0)
        {
          break;
        }

        v14 = (*(v3 + 48) + 16 * i);
        if (*v14 != v9 || v14[1] != v8)
        {
          result = _stringCompareWithSmolCheck(_:_:expecting:)();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v13;
      v16 = (*(v3 + 48) + 16 * i);
      *v16 = v9;
      v16[1] = v8;
      v17 = *(v3 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (!v18)
      {
        *(v3 + 16) = v19;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return &_swiftEmptySetSingleton;
  }

  return result;
}

uint64_t sub_1001CBAD8(char a1)
{
  v14 = sub_100035D04(&qword_10034B4E0, &qword_100289678);
  v3 = *(v14 - 8);
  __chkstk_darwin(v14);
  v5 = &v13 - v4;
  v15 = sub_100035D04(&qword_10034B4E8, &qword_100289680);
  v6 = *(v15 - 8);
  __chkstk_darwin(v15);
  v8 = &v13 - v7;
  v16 = *(v1 + 16);
  *(swift_allocObject() + 16) = a1;

  sub_100035D04(&qword_10034B378, &qword_100289598);
  sub_100035D04(&qword_10034B4F0, &unk_10027C100);
  sub_10000E244(&unk_10034B4F8, &qword_10034B378, &qword_100289598, &unk_10027C688);
  Publisher.map<A>(_:)();

  sub_100035D04(&unk_100346020, &qword_100271A00);
  sub_10000E244(&qword_10034B508, &qword_10034B4E0, &qword_100289678, &protocol conformance descriptor for Publishers.Map<A, B>);
  v9 = v14;
  Publisher<>.setFailureType<A>(to:)();
  (*(v3 + 8))(v5, v9);
  sub_10000E244(&qword_10034B510, &qword_10034B4E8, &qword_100289680, &protocol conformance descriptor for Publishers.SetFailureType<A, B>);
  v10 = v15;
  v11 = Publisher.eraseToAnyPublisher()();
  (*(v6 + 8))(v8, v10);
  return v11;
}

void sub_1001CBDD8(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
LABEL_3:
      sub_100035D04(&unk_10034B5F0, &qword_100272B10);
      v3 = static _SetStorage.allocate(capacity:)();
      v4 = a1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = _CocoaArrayWrapper.endIndex.getter();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = &_swiftEmptySetSingleton;
  v4 = a1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = 0;
  v7 = v3 + 56;
  v21 = a1 & 0xC000000000000001;
  v19 = a1 + 32;
  v20 = a1 & 0xFFFFFFFFFFFFFF8;
  while (v21)
  {
    v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v9 = __OFADD__(v6++, 1);
    if (v9)
    {
      goto LABEL_25;
    }

LABEL_18:
    type metadata accessor for AnyCancellable();
    sub_1001CB3D0(&qword_10033B5E8, 255, &type metadata accessor for AnyCancellable, &protocol conformance descriptor for AnyCancellable);
    v10 = dispatch thunk of Hashable._rawHashValue(seed:)();
    v11 = -1 << v3[32];
    v12 = v10 & ~v11;
    v13 = v12 >> 6;
    v14 = *&v7[8 * (v12 >> 6)];
    v15 = 1 << v12;
    if (((1 << v12) & v14) != 0)
    {
      v16 = ~v11;
      sub_1001CB3D0(&unk_10034B600, 255, &type metadata accessor for AnyCancellable, &protocol conformance descriptor for AnyCancellable);
      while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
      {
        v12 = (v12 + 1) & v16;
        v13 = v12 >> 6;
        v14 = *&v7[8 * (v12 >> 6)];
        v15 = 1 << v12;
        if (((1 << v12) & v14) == 0)
        {
          goto LABEL_22;
        }
      }
    }

    else
    {
LABEL_22:
      *&v7[8 * v13] = v15 | v14;
      *(*(v3 + 6) + 8 * v12) = v8;
      v17 = *(v3 + 2);
      v9 = __OFADD__(v17, 1);
      v18 = v17 + 1;
      if (v9)
      {
        goto LABEL_26;
      }

      *(v3 + 2) = v18;
    }

    if (v6 == v5)
    {
      return;
    }
  }

  if (v6 >= *(v20 + 16))
  {
    goto LABEL_27;
  }

  v8 = *(v19 + 8 * v6);

  v9 = __OFADD__(v6++, 1);
  if (!v9)
  {
    goto LABEL_18;
  }

LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
}

void *sub_1001CC074(void *a1, char a2, uint64_t (*a3)(void **), uint64_t a4, void *a5, unint64_t a6, uint64_t a7, void *a8, uint64_t a9, os_log_type_t a10)
{
  v38 = a1;
  v39 = a2;
  if (!a3)
  {
    sub_10003672C(a1, a2);
    sub_10003672C(a1, a2);
    sub_100035D04(&qword_100339770, &qword_100270288);
    v26 = String.init<A>(describing:)();
    v28 = v27;
    v36 = a5;
    v37 = a6;

    v29._countAndFlagsBits = v26;
    v29._object = v28;
    String.append(_:)(v29);

    v30._countAndFlagsBits = a7;
    v30._object = a8;
    String.append(_:)(v30);

    v31 = a6;
    v22 = Logger.logObject.getter();
    if (os_log_type_enabled(v22, a10))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v36 = v33;
      *v32 = 136315138;
      v34 = sub_100017494(a5, v31, &v36);

      *(v32 + 4) = v34;
      _os_log_impl(&_mh_execute_header, v22, a10, "%s", v32, 0xCu);
      sub_10000903C(v33);

      sub_100036718(a1, a2);
      goto LABEL_8;
    }

    sub_100036718(a1, a2);
LABEL_7:

    goto LABEL_8;
  }

  a3(&v38);
  v16 = String.init<A>(describing:)();
  v18 = v17;
  v36 = a5;
  v37 = a6;

  v19._countAndFlagsBits = v16;
  v19._object = v18;
  String.append(_:)(v19);

  v20._countAndFlagsBits = a7;
  v20._object = a8;
  String.append(_:)(v20);

  v21 = a6;
  v22 = Logger.logObject.getter();
  if (!os_log_type_enabled(v22, a10))
  {
    goto LABEL_7;
  }

  v23 = swift_slowAlloc();
  v24 = swift_slowAlloc();
  v36 = v24;
  *v23 = 136315138;
  v25 = sub_100017494(a5, v21, &v36);

  *(v23 + 4) = v25;
  _os_log_impl(&_mh_execute_header, v22, a10, "%s", v23, 0xCu);
  sub_10000903C(v24);

LABEL_8:

  return a1;
}

uint64_t sub_1001CC3A8(uint64_t a1, char a2, uint64_t (*a3)(uint64_t *), uint64_t a4, void *a5, unint64_t a6, uint64_t a7, void *a8, uint64_t a9, os_log_type_t a10)
{
  v38 = a1;
  v39 = a2;
  if (a3)
  {
    a3(&v38);
    v15 = String.init<A>(describing:)();
    v17 = v16;
    v37 = a6;

    v18._countAndFlagsBits = v15;
    v18._object = v17;
    String.append(_:)(v18);

    v19._countAndFlagsBits = a7;
    v19._object = a8;
    String.append(_:)(v19);

    v20 = a6;
    v21 = Logger.logObject.getter();
    if (os_log_type_enabled(v21, a10))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v36 = v23;
      *v22 = 136315138;
      v24 = sub_100017494(a5, v20, &v36);

      *(v22 + 4) = v24;
      _os_log_impl(&_mh_execute_header, v21, a10, "%s", v22, 0xCu);
      sub_10000903C(v23);
    }

    else
    {
    }
  }

  else
  {
    swift_retain_n();
    sub_100035D04(&unk_10034B570, &unk_100289810);
    v25 = String.init<A>(describing:)();
    v27 = v26;
    v36 = a5;
    v37 = a6;

    v28._countAndFlagsBits = v25;
    v28._object = v27;
    String.append(_:)(v28);

    v29._countAndFlagsBits = a7;
    v29._object = a8;
    String.append(_:)(v29);

    v30 = a6;
    v31 = Logger.logObject.getter();
    if (os_log_type_enabled(v31, a10))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v36 = v33;
      *v32 = 136315138;
      v34 = sub_100017494(a5, v30, &v36);

      *(v32 + 4) = v34;
      _os_log_impl(&_mh_execute_header, v31, a10, "%s", v32, 0xCu);
      sub_10000903C(v33);
    }

    else
    {
    }
  }

  return a1;
}

uint64_t sub_1001CC720(uint64_t a1, uint64_t (*a2)(uint64_t *), uint64_t a3, void *a4, unint64_t a5, uint64_t a6, void *a7, uint64_t a8, os_log_type_t a9)
{
  v37 = a1;
  if (a2)
  {
    a2(&v37);
    v14 = String.init<A>(describing:)();
    v16 = v15;
    v36 = a5;

    v17._countAndFlagsBits = v14;
    v17._object = v16;
    String.append(_:)(v17);

    v18._countAndFlagsBits = a6;
    v18._object = a7;
    String.append(_:)(v18);

    v19 = a5;
    v20 = Logger.logObject.getter();
    if (os_log_type_enabled(v20, a9))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v35 = v22;
      *v21 = 136315138;
      v23 = sub_100017494(a4, v19, &v35);

      *(v21 + 4) = v23;
      _os_log_impl(&_mh_execute_header, v20, a9, "%s", v21, 0xCu);
      sub_10000903C(v22);
    }

    else
    {
    }
  }

  else
  {
    swift_bridgeObjectRetain_n();
    sub_100035D04(&qword_10033BAF8, &unk_100272470);
    v24 = String.init<A>(describing:)();
    v26 = v25;
    v35 = a4;
    v36 = a5;

    v27._countAndFlagsBits = v24;
    v27._object = v26;
    String.append(_:)(v27);

    v28._countAndFlagsBits = a6;
    v28._object = a7;
    String.append(_:)(v28);

    v29 = a5;
    v30 = Logger.logObject.getter();
    if (os_log_type_enabled(v30, a9))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v35 = v32;
      *v31 = 136315138;
      v33 = sub_100017494(a4, v29, &v35);

      *(v31 + 4) = v33;
      _os_log_impl(&_mh_execute_header, v30, a9, "%s", v31, 0xCu);
      sub_10000903C(v32);
    }

    else
    {
    }
  }

  return a1;
}

void *sub_1001CCA28(void *a1, uint64_t (*a2)(void **), uint64_t a3, void *a4, unint64_t a5, uint64_t a6, void *a7, uint64_t a8, os_log_type_t a9)
{
  v37 = a1;
  if (a2)
  {
    a2(&v37);
    v14 = String.init<A>(describing:)();
    v16 = v15;
    v36 = a5;

    v17._countAndFlagsBits = v14;
    v17._object = v16;
    String.append(_:)(v17);

    v18._countAndFlagsBits = a6;
    v18._object = a7;
    String.append(_:)(v18);

    v19 = Logger.logObject.getter();
    if (os_log_type_enabled(v19, a9))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v35 = v21;
      *v20 = 136315138;
      v22 = sub_100017494(a4, a5, &v35);

      *(v20 + 4) = v22;
      _os_log_impl(&_mh_execute_header, v19, a9, "%s", v20, 0xCu);
      sub_10000903C(v21);
    }

    else
    {
    }
  }

  else
  {
    v34 = a1;
    sub_100035D04(&qword_1003396B0, &qword_1002731A0);
    v23 = String.init<A>(describing:)();
    v25 = v24;
    v35 = a4;
    v36 = a5;

    v26._countAndFlagsBits = v23;
    v26._object = v25;
    String.append(_:)(v26);

    v27._countAndFlagsBits = a6;
    v27._object = a7;
    String.append(_:)(v27);

    v28 = a5;
    v29 = Logger.logObject.getter();
    if (os_log_type_enabled(v29, a9))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v35 = v31;
      *v30 = 136315138;
      v32 = sub_100017494(a4, v28, &v35);

      *(v30 + 4) = v32;
      _os_log_impl(&_mh_execute_header, v29, a9, "%s", v30, 0xCu);
      sub_10000903C(v31);
    }

    else
    {
    }
  }

  return a1;
}

uint64_t sub_1001CCD34(uint64_t a1, uint64_t (*a2)(uint64_t *), uint64_t a3, void *a4, unint64_t a5, uint64_t a6, void *a7, uint64_t a8, os_log_type_t a9, void (*a10)(uint64_t, uint64_t, uint64_t), uint64_t *a11, uint64_t *a12, void (*a13)(uint64_t))
{
  v41 = a1;
  if (a2)
  {
    a2(&v41);
    v18 = String.init<A>(describing:)();
    v20 = v19;
    v40 = a5;

    v21._countAndFlagsBits = v18;
    v21._object = v20;
    String.append(_:)(v21);

    v22._countAndFlagsBits = a6;
    v22._object = a7;
    String.append(_:)(v22);

    v23 = a5;
    v24 = Logger.logObject.getter();
    if (os_log_type_enabled(v24, a9))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v39 = v26;
      *v25 = 136315138;
      v27 = sub_100017494(a4, v23, &v39);

      *(v25 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v24, a9, "%s", v25, 0xCu);
      sub_10000903C(v26);
    }

    else
    {
    }
  }

  else
  {
    a10(a1, 2, a3);
    sub_100035D04(a11, a12);
    v28 = String.init<A>(describing:)();
    v30 = v29;
    v39 = a4;
    v40 = a5;

    v31._countAndFlagsBits = v28;
    v31._object = v30;
    String.append(_:)(v31);

    v32._countAndFlagsBits = a6;
    v32._object = a7;
    String.append(_:)(v32);

    v33 = a5;
    v34 = Logger.logObject.getter();
    if (os_log_type_enabled(v34, a9))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v39 = v36;
      *v35 = 136315138;
      v37 = sub_100017494(a4, v33, &v39);

      *(v35 + 4) = v37;
      _os_log_impl(&_mh_execute_header, v34, a9, "%s", v35, 0xCu);
      sub_10000903C(v36);
    }

    else
    {
    }

    a13(a1);
  }

  return a1;
}

__n128 sub_1001CD050@<Q0>(__n128 *a1@<X0>, uint64_t (*a2)(_OWORD *)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, void *a6@<X6>, __n128 *a7@<X8>, os_log_type_t a8)
{
  v13 = a1[1];
  v39[0] = *a1;
  v39[1] = v13;
  v39[2] = a1[2];
  if (!a2)
  {
    v24 = a1[1];
    v38[0] = *a1;
    v38[1] = v24;
    v38[2] = a1[2];
    sub_10009D868(a1, v37);
    sub_10009D868(a1, v37);
    v25 = String.init<A>(describing:)();
    v27 = v26;
    *&v38[0] = a3;
    *(&v38[0] + 1) = a4;

    v28._countAndFlagsBits = v25;
    v28._object = v27;
    String.append(_:)(v28);

    v29._countAndFlagsBits = a5;
    v29._object = a6;
    String.append(_:)(v29);

    v30 = v38[0];
    v20 = Logger.logObject.getter();
    if (os_log_type_enabled(v20, a8))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *&v38[0] = v32;
      *v31 = 136315138;
      v33 = sub_100017494(v30, *(&v30 + 1), v38);

      *(v31 + 4) = v33;
      _os_log_impl(&_mh_execute_header, v20, a8, "%s", v31, 0xCu);
      sub_10000903C(v32);

      sub_1001CECE8(a1);
      goto LABEL_8;
    }

    sub_1001CECE8(a1);
LABEL_7:

    goto LABEL_8;
  }

  a2(v39);
  v14 = String.init<A>(describing:)();
  v16 = v15;
  *&v38[0] = a3;
  *(&v38[0] + 1) = a4;

  v17._countAndFlagsBits = v14;
  v17._object = v16;
  String.append(_:)(v17);

  v18._countAndFlagsBits = a5;
  v18._object = a6;
  String.append(_:)(v18);

  v19 = v38[0];
  v20 = Logger.logObject.getter();
  if (!os_log_type_enabled(v20, a8))
  {
    goto LABEL_7;
  }

  v21 = swift_slowAlloc();
  v22 = swift_slowAlloc();
  *&v38[0] = v22;
  *v21 = 136315138;
  v23 = sub_100017494(v19, *(&v19 + 1), v38);

  *(v21 + 4) = v23;
  _os_log_impl(&_mh_execute_header, v20, a8, "%s", v21, 0xCu);
  sub_10000903C(v22);

LABEL_8:

  v34 = a1[1];
  *a7 = *a1;
  a7[1] = v34;
  result = a1[2];
  a7[2] = result;
  return result;
}

uint64_t sub_1001CD374(uint64_t a1, uint64_t (*a2)(uint64_t *), uint64_t a3, void *a4, unint64_t a5, uint64_t a6, void *a7, uint64_t a8, os_log_type_t a9)
{
  v37 = a1;
  if (a2)
  {
    a2(&v37);
    v14 = String.init<A>(describing:)();
    v16 = v15;
    v36 = a5;

    v17._countAndFlagsBits = v14;
    v17._object = v16;
    String.append(_:)(v17);

    v18._countAndFlagsBits = a6;
    v18._object = a7;
    String.append(_:)(v18);

    v19 = a5;
    v20 = Logger.logObject.getter();
    if (os_log_type_enabled(v20, a9))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v35 = v22;
      *v21 = 136315138;
      v23 = sub_100017494(a4, v19, &v35);

      *(v21 + 4) = v23;
      _os_log_impl(&_mh_execute_header, v20, a9, "%s", v21, 0xCu);
      sub_10000903C(v22);
    }

    else
    {
    }
  }

  else
  {
    type metadata accessor for HandoffDevice(0);
    swift_retain_n();
    v24 = String.init<A>(describing:)();
    v26 = v25;
    v35 = a4;
    v36 = a5;

    v27._countAndFlagsBits = v24;
    v27._object = v26;
    String.append(_:)(v27);

    v28._countAndFlagsBits = a6;
    v28._object = a7;
    String.append(_:)(v28);

    v29 = a5;
    v30 = Logger.logObject.getter();
    if (os_log_type_enabled(v30, a9))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v35 = v32;
      *v31 = 136315138;
      v33 = sub_100017494(a4, v29, &v35);

      *(v31 + 4) = v33;
      _os_log_impl(&_mh_execute_header, v30, a9, "%s", v31, 0xCu);
      sub_10000903C(v32);
    }

    else
    {
    }
  }

  return a1;
}

void *sub_1001CD6EC(void *a1, uint64_t (*a2)(void **), uint64_t a3, void *a4, unint64_t a5, uint64_t a6, void *a7, uint64_t a8, os_log_type_t a9, unint64_t *a10, void *a11)
{
  v39 = a1;
  if (a2)
  {
    a2(&v39);
    v16 = String.init<A>(describing:)();
    v18 = v17;
    v38 = a5;

    v19._countAndFlagsBits = v16;
    v19._object = v18;
    String.append(_:)(v19);

    v20._countAndFlagsBits = a6;
    v20._object = a7;
    String.append(_:)(v20);

    v21 = Logger.logObject.getter();
    if (os_log_type_enabled(v21, a9))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v37 = v23;
      *v22 = 136315138;
      v24 = sub_100017494(a4, a5, &v37);

      *(v22 + 4) = v24;
      _os_log_impl(&_mh_execute_header, v21, a9, "%s", v22, 0xCu);
      sub_10000903C(v23);
    }

    else
    {
    }
  }

  else
  {
    sub_100003118(0, a10, a11);
    v36 = a1;
    v25 = String.init<A>(describing:)();
    v27 = v26;
    v37 = a4;
    v38 = a5;

    v28._countAndFlagsBits = v25;
    v28._object = v27;
    String.append(_:)(v28);

    v29._countAndFlagsBits = a6;
    v29._object = a7;
    String.append(_:)(v29);

    v30 = a5;
    v31 = Logger.logObject.getter();
    if (os_log_type_enabled(v31, a9))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v37 = v33;
      *v32 = 136315138;
      v34 = sub_100017494(a4, v30, &v37);

      *(v32 + 4) = v34;
      _os_log_impl(&_mh_execute_header, v31, a9, "%s", v32, 0xCu);
      sub_10000903C(v33);
    }

    else
    {
    }
  }

  return a1;
}

void *sub_1001CDA6C(void *a1, uint64_t (*a2)(void **), uint64_t a3, void *a4, unint64_t a5, uint64_t a6, void *a7, uint64_t a8, os_log_type_t a9, uint64_t *a10, uint64_t *a11)
{
  v36 = a1;
  if (!a2)
  {
    v24 = a1;
    sub_100035D04(a10, a11);
    v25 = String.init<A>(describing:)();
    v27 = v26;
    v35 = a5;

    v28._countAndFlagsBits = v25;
    v28._object = v27;
    String.append(_:)(v28);

    v29._countAndFlagsBits = a6;
    v29._object = a7;
    String.append(_:)(v29);

    v22 = a4;
    v21 = a5;
    v23 = Logger.logObject.getter();
    if (!os_log_type_enabled(v23, a9))
    {

      return a1;
    }

    goto LABEL_5;
  }

  a2(&v36);
  v16 = String.init<A>(describing:)();
  v18 = v17;
  v34 = a4;
  v35 = a5;

  v19._countAndFlagsBits = v16;
  v19._object = v18;
  String.append(_:)(v19);

  v20._countAndFlagsBits = a6;
  v20._object = a7;
  String.append(_:)(v20);

  v22 = a4;
  v21 = a5;
  v23 = Logger.logObject.getter();
  if (os_log_type_enabled(v23, a9))
  {
LABEL_5:
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v34 = v31;
    *v30 = 136315138;
    v32 = sub_100017494(v22, v21, &v34);

    *(v30 + 4) = v32;
    _os_log_impl(&_mh_execute_header, v23, a9, "%s", v30, 0xCu);
    sub_10000903C(v31);

    goto LABEL_6;
  }

LABEL_6:

  return a1;
}

uint64_t sub_1001CDCBC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *), uint64_t a4, void *a5, unint64_t a6, uint64_t a7, void *a8, uint64_t a9, os_log_type_t a10)
{
  v34[0] = a1;
  v34[1] = a2;
  if (!a3)
  {

    v22 = String.init<A>(describing:)();
    v24 = v23;
    v33 = a6;

    v25._countAndFlagsBits = v22;
    v25._object = v24;
    String.append(_:)(v25);

    v26._countAndFlagsBits = a7;
    v26._object = a8;
    String.append(_:)(v26);

    v20 = a5;
    v19 = a6;
    v21 = Logger.logObject.getter();
    if (!os_log_type_enabled(v21, a10))
    {

      return a1;
    }

    goto LABEL_5;
  }

  a3(v34);
  v14 = String.init<A>(describing:)();
  v16 = v15;
  v32 = a5;
  v33 = a6;

  v17._countAndFlagsBits = v14;
  v17._object = v16;
  String.append(_:)(v17);

  v18._countAndFlagsBits = a7;
  v18._object = a8;
  String.append(_:)(v18);

  v20 = a5;
  v19 = a6;
  v21 = Logger.logObject.getter();
  if (os_log_type_enabled(v21, a10))
  {
LABEL_5:
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v32 = v28;
    *v27 = 136315138;
    v29 = sub_100017494(v20, v19, &v32);

    *(v27 + 4) = v29;
    _os_log_impl(&_mh_execute_header, v21, a10, "%s", v27, 0xCu);
    sub_10000903C(v28);

    goto LABEL_6;
  }

LABEL_6:

  return a1;
}

uint64_t sub_1001CDF0C(uint64_t a1, uint64_t (*a2)(uint64_t *), uint64_t a3, void *a4, unint64_t a5, uint64_t a6, void *a7, uint64_t a8, os_log_type_t a9)
{
  v33 = a1;
  if (!a2)
  {
    swift_unknownObjectRetain();
    sub_100035D04(&qword_10034B4F0, &unk_10027C100);
    v22 = String.init<A>(describing:)();
    v24 = v23;
    v32 = a5;

    v25._countAndFlagsBits = v22;
    v25._object = v24;
    String.append(_:)(v25);

    v26._countAndFlagsBits = a6;
    v26._object = a7;
    String.append(_:)(v26);

    v20 = a4;
    v19 = a5;
    v21 = Logger.logObject.getter();
    if (!os_log_type_enabled(v21, a9))
    {

      return a1;
    }

    goto LABEL_5;
  }

  a2(&v33);
  v14 = String.init<A>(describing:)();
  v16 = v15;
  v31 = a4;
  v32 = a5;

  v17._countAndFlagsBits = v14;
  v17._object = v16;
  String.append(_:)(v17);

  v18._countAndFlagsBits = a6;
  v18._object = a7;
  String.append(_:)(v18);

  v20 = a4;
  v19 = a5;
  v21 = Logger.logObject.getter();
  if (os_log_type_enabled(v21, a9))
  {
LABEL_5:
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v31 = v28;
    *v27 = 136315138;
    v29 = sub_100017494(v20, v19, &v31);

    *(v27 + 4) = v29;
    _os_log_impl(&_mh_execute_header, v21, a9, "%s", v27, 0xCu);
    sub_10000903C(v28);

    goto LABEL_6;
  }

LABEL_6:

  return a1;
}

uint64_t sub_1001CE1A0(uint64_t a1, uint64_t (*a2)(uint64_t *), uint64_t a3, void *a4, unint64_t a5, uint64_t a6, void *a7, uint64_t a8, os_log_type_t a9)
{
  v33 = a1;
  if (!a2)
  {

    sub_100035D04(&qword_10034B518, &qword_100289688);
    v22 = String.init<A>(describing:)();
    v24 = v23;
    v32 = a5;

    v25._countAndFlagsBits = v22;
    v25._object = v24;
    String.append(_:)(v25);

    v26._countAndFlagsBits = a6;
    v26._object = a7;
    String.append(_:)(v26);

    v20 = a4;
    v19 = a5;
    v21 = Logger.logObject.getter();
    if (!os_log_type_enabled(v21, a9))
    {

      return a1;
    }

    goto LABEL_5;
  }

  a2(&v33);
  v14 = String.init<A>(describing:)();
  v16 = v15;
  v31 = a4;
  v32 = a5;

  v17._countAndFlagsBits = v14;
  v17._object = v16;
  String.append(_:)(v17);

  v18._countAndFlagsBits = a6;
  v18._object = a7;
  String.append(_:)(v18);

  v20 = a4;
  v19 = a5;
  v21 = Logger.logObject.getter();
  if (os_log_type_enabled(v21, a9))
  {
LABEL_5:
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v31 = v28;
    *v27 = 136315138;
    v29 = sub_100017494(v20, v19, &v31);

    *(v27 + 4) = v29;
    _os_log_impl(&_mh_execute_header, v21, a9, "%s", v27, 0xCu);
    sub_10000903C(v28);

    goto LABEL_6;
  }

LABEL_6:

  return a1;
}

void *sub_1001CE434(void *a1, uint64_t (*a2)(void **), uint64_t a3, void *a4, unint64_t a5, uint64_t a6, void *a7, uint64_t a8, os_log_type_t a9, unint64_t *a10, void *a11)
{
  v36 = a1;
  if (!a2)
  {
    sub_100003118(0, a10, a11);
    v24 = a1;
    v25 = String.init<A>(describing:)();
    v27 = v26;
    v35 = a5;

    v28._countAndFlagsBits = v25;
    v28._object = v27;
    String.append(_:)(v28);

    v29._countAndFlagsBits = a6;
    v29._object = a7;
    String.append(_:)(v29);

    v22 = a4;
    v21 = a5;
    v23 = Logger.logObject.getter();
    if (!os_log_type_enabled(v23, a9))
    {

      return a1;
    }

    goto LABEL_5;
  }

  a2(&v36);
  v16 = String.init<A>(describing:)();
  v18 = v17;
  v34 = a4;
  v35 = a5;

  v19._countAndFlagsBits = v16;
  v19._object = v18;
  String.append(_:)(v19);

  v20._countAndFlagsBits = a6;
  v20._object = a7;
  String.append(_:)(v20);

  v22 = a4;
  v21 = a5;
  v23 = Logger.logObject.getter();
  if (os_log_type_enabled(v23, a9))
  {
LABEL_5:
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v34 = v31;
    *v30 = 136315138;
    v32 = sub_100017494(v22, v21, &v34);

    *(v30 + 4) = v32;
    _os_log_impl(&_mh_execute_header, v23, a9, "%s", v30, 0xCu);
    sub_10000903C(v31);

    goto LABEL_6;
  }

LABEL_6:

  return a1;
}

uint64_t sub_1001CE684(void *a1)
{
  if (qword_100339178 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_10034B1D0);
  v3 = a1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v11 = v8;
    *v6 = 136315394;
    *(v6 + 4) = sub_100017494(0xD000000000000035, 0x80000001002A4780, &v11);
    *(v6 + 12) = 2112;
    *(v6 + 14) = v3;
    *v7 = v3;
    v9 = v3;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s: conversation=%@", v6, 0x16u);
    sub_1000097E8(v7, &qword_100339940, &unk_100272C50);

    sub_10000903C(v8);
  }

  return sub_1001C9124(0, v3);
}

uint64_t sub_1001CE848(void *a1)
{
  if (qword_100339178 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_10034B1D0);
  v3 = a1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v11 = v8;
    *v6 = 136315394;
    *(v6 + 4) = sub_100017494(0xD000000000000027, 0x80000001002A4750, &v11);
    *(v6 + 12) = 2112;
    *(v6 + 14) = v3;
    *v7 = v3;
    v9 = v3;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s: conversation=%@", v6, 0x16u);
    sub_1000097E8(v7, &qword_100339940, &unk_100272C50);

    sub_10000903C(v8);
  }

  return sub_1001C9124(0, v3);
}

uint64_t sub_1001CEA0C(void *a1)
{
  if (qword_100339178 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_10034B1D0);
  v3 = a1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v11 = v8;
    *v6 = 136315394;
    *(v6 + 4) = sub_100017494(0xD000000000000031, 0x80000001002A4710, &v11);
    *(v6 + 12) = 2112;
    *(v6 + 14) = v3;
    *v7 = v3;
    v9 = v3;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s: conversation=%@", v6, 0x16u);
    sub_1000097E8(v7, &qword_100339940, &unk_100272C50);

    sub_10000903C(v8);
  }

  return sub_1001C9124(1, v3);
}

uint64_t sub_1001CEC50()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1001CEC9C()
{

  return _swift_deallocObject(v0, 40, 7);
}

void sub_1001CED3C(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a3 != 3)
  {
    sub_1001CED4C(a1, a2, a3, a4, a5, a6, a7);
  }
}

void sub_1001CED4C(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a3 >= 3)
  {
  }
}

uint64_t sub_1001CEE18(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1001CEE74(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1001CEED4(void *a1, uint64_t a2)
{
  v4 = sub_100035D04(&qword_10034B668, &qword_1002899A0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v9 - v6;
  sub_10000EBC0(a1, a1[3]);
  sub_1001CF3D0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9[1] = a2;
  sub_100035D04(&qword_10034B658, &qword_100289998);
  sub_1001CF424(&qword_10034B670, &unk_100296200);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1001CF068@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6E6F70736552726DLL && a2 == 0xEA00000000006573)
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

uint64_t sub_1001CF0F8(uint64_t a1)
{
  v2 = sub_1001CF3D0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001CF134(uint64_t a1)
{
  v2 = sub_1001CF3D0();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_1001CF170@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1001CF230(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1001CF1B8(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1)
  {
    if (v3)
    {
      sub_100151930();
      v4 = v3;
      v5 = v2;
      v6 = static NSObject.== infix(_:_:)();

      if (v6)
      {
        return 1;
      }
    }
  }

  else if (!v3)
  {
    return 1;
  }

  return 0;
}

void *sub_1001CF230(void *a1)
{
  v3 = sub_100035D04(&qword_10034B648, &qword_100289990);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v9 - v5;
  v7 = sub_10000EBC0(a1, a1[3]);
  sub_1001CF3D0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_10000903C(a1);
  }

  else
  {
    sub_100035D04(&qword_10034B658, &qword_100289998);
    sub_1001CF424(&qword_10034B660, &unk_100296228);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v6, v3);
    v7 = v9[1];
    sub_10000903C(a1);
  }

  return v7;
}

unint64_t sub_1001CF3D0()
{
  result = qword_10034B650;
  if (!qword_10034B650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034B650);
  }

  return result;
}

uint64_t sub_1001CF424(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_100035D4C(&qword_10034B658, &qword_100289998);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1001CF488()
{
  result = qword_10034B678;
  if (!qword_10034B678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034B678);
  }

  return result;
}

unint64_t sub_1001CF4E0()
{
  result = qword_10034B680;
  if (!qword_10034B680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034B680);
  }

  return result;
}

unint64_t sub_1001CF538()
{
  result = qword_10034B688;
  if (!qword_10034B688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034B688);
  }

  return result;
}

uint64_t sub_1001CF60C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, uint64_t), void (*a4)(unint64_t, uint64_t), void (*a5)(void))
{
  v6 = v5;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v5;
    a3(a1, a2, isUniquelyReferenced_nonNull_native);
    v11 = type metadata accessor for UUID();
    result = (*(*(v11 - 8) + 8))(a2, v11);
    *v5 = v26;
  }

  else
  {
    v15 = sub_100019110(a2);
    if (v16)
    {
      v17 = v15;
      v18 = swift_isUniquelyReferenced_nonNull_native();
      v19 = *v5;
      v27 = *v6;
      if (!v18)
      {
        a5();
        v19 = v27;
      }

      v20 = *(v19 + 48);
      v21 = type metadata accessor for UUID();
      v22 = *(v21 - 8);
      v23 = *(v22 + 8);
      v23(v20 + *(v22 + 72) * v17, v21);

      a4(v17, v19);
      result = (v23)(a2, v21);
      *v6 = v19;
    }

    else
    {
      v24 = type metadata accessor for UUID();
      v25 = *(*(v24 - 8) + 8);

      return v25(a2, v24);
    }
  }

  return result;
}

uint64_t sub_1001CF7F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a2)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v4;
    sub_10004CE88(a1, a2, a3, a4, isUniquelyReferenced_nonNull_native);

    *v4 = v17;
  }

  else
  {
    v12 = sub_100004B58(a3, a4);
    v14 = v13;

    if (v14)
    {
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v5;
      v18 = *v5;
      if (!v15)
      {
        sub_100089EBC();
        v16 = v18;
      }

      result = sub_10004BF8C(v12, v16);
      *v5 = v16;
    }
  }

  return result;
}

uint64_t sub_1001CF8F8(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    sub_1000516B4(a1, v7);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *v2;
    sub_10004D368(v7, a2, isUniquelyReferenced_nonNull_native);
    result = sub_1000516C4(a2);
    *v2 = v6;
  }

  else
  {
    sub_1000097E8(a1, &unk_100339680, &qword_100278390);
    sub_1001D0AB4(a2, v7);
    sub_1000516C4(a2);
    return sub_1000097E8(v7, &unk_100339680, &qword_100278390);
  }

  return result;
}

uint64_t sub_1001CF9B4(uint64_t a1, uint64_t a2)
{
  v5 = sub_100035D04(&qword_10033C280, &qword_100272A80);
  __chkstk_darwin(v5 - 8);
  v7 = &v16 - v6;
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v9 + 48))(a1, 1, v8) == 1)
  {
    sub_1000097E8(a1, &qword_10033C280, &qword_100272A80);
    sub_1001D0B58(a2, v7);
    v12 = type metadata accessor for UUID();
    (*(*(v12 - 8) + 8))(a2, v12);
    return sub_1000097E8(v7, &qword_10033C280, &qword_100272A80);
  }

  else
  {
    (*(v9 + 32))(v11, a1, v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v2;
    sub_10004D910(v11, a2, isUniquelyReferenced_nonNull_native);
    v15 = type metadata accessor for UUID();
    result = (*(*(v15 - 8) + 8))(a2, v15);
    *v2 = v17;
  }

  return result;
}

uint64_t sub_1001CFBE0(uint64_t a1, uint64_t a2)
{
  v5 = sub_100035D04(&qword_10034B6B0, &qword_1002967F0);
  __chkstk_darwin(v5 - 8);
  v7 = &v16 - v6;
  active = type metadata accessor for PCUserAlertManager.ActiveAlertContext(0);
  __chkstk_darwin(active);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1) == 1)
  {
    sub_1000097E8(a1, &qword_10034B6B0, &qword_1002967F0);
    sub_1001D0CF8(a2, v7);
    v12 = type metadata accessor for UUID();
    (*(*(v12 - 8) + 8))(a2, v12);
    return sub_1000097E8(v7, &qword_10034B6B0, &qword_1002967F0);
  }

  else
  {
    sub_10008CD9C(a1, v10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v2;
    sub_10004DB14(v10, a2, isUniquelyReferenced_nonNull_native);
    v15 = type metadata accessor for UUID();
    result = (*(*(v15 - 8) + 8))(a2, v15);
    *v2 = v17;
  }

  return result;
}

uint64_t sub_1001CFDEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_10004DCFC(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v15;
  }

  else
  {
    v10 = sub_100004B58(a2, a3);
    v12 = v11;

    if (v12)
    {
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v4;
      v16 = *v4;
      if (!v13)
      {
        sub_10008B984();
        v14 = v16;
      }

      result = sub_10004CE10(v10, v14);
      *v4 = v14;
    }
  }

  return result;
}

uint64_t *sub_1001CFEE4()
{
  v2 = v0;
  sub_100035D04(&qword_100344030, &unk_10027A140);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100274B30;
  AnyHashable.init<A>(_:)();
  v4 = type metadata accessor for UUID();
  *(inited + 96) = v4;
  v5 = sub_10000F798((inited + 72));
  (*(*(v4 - 8) + 16))(v5, v2, v4);
  AnyHashable.init<A>(_:)();
  v6 = type metadata accessor for HandoffRemotePeerInterface.Request.LeaderSessionStarted(0);
  v7 = (v2 + *(v6 + 20));
  v9 = *v7;
  v8 = v7[1];
  *(inited + 168) = &type metadata for String;
  *(inited + 144) = v9;
  *(inited + 152) = v8;

  AnyHashable.init<A>(_:)();
  Date.timeIntervalSinceReferenceDate.getter();
  *(inited + 240) = &type metadata for Double;
  *(inited + 216) = v10;
  AnyHashable.init<A>(_:)();
  v11 = *(v2 + *(v6 + 28));
  *(inited + 312) = &type metadata for Double;
  *(inited + 288) = v11;
  AnyHashable.init<A>(_:)();
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  sub_100035D04(&qword_10034B690, &qword_100289B48);
  sub_1001D087C();
  v12 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v14 = v13;

  if (v1)
  {
    sub_1000516C4(inited + 320);
    v15 = &qword_100344038;
    sub_1000097E8(inited + 248, &qword_100344038, qword_100279DB0);
    sub_1000097E8(inited + 176, &qword_100344038, qword_100279DB0);
    sub_1000097E8(inited + 104, &qword_100344038, qword_100279DB0);
    sub_1000097E8(inited + 32, &qword_100344038, qword_100279DB0);
  }

  else
  {
    *(inited + 384) = &type metadata for Data;
    *(inited + 360) = v12;
    *(inited + 368) = v14;
    v15 = sub_10024D824(inited);
  }

  swift_setDeallocating();
  sub_100035D04(&qword_100344038, qword_100279DB0);
  swift_arrayDestroy();
  return v15;
}

unint64_t sub_1001D023C()
{
  v1 = v0;
  sub_100035D04(&qword_100344030, &unk_10027A140);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1002725A0;
  AnyHashable.init<A>(_:)();
  v3 = type metadata accessor for UUID();
  *(inited + 96) = v3;
  v4 = sub_10000F798((inited + 72));
  (*(*(v3 - 8) + 16))(v4, v1, v3);
  AnyHashable.init<A>(_:)();
  v5 = (v1 + *(type metadata accessor for HandoffRemotePeerInterface.Request.LeaderSessionEnded(0) + 20));
  v7 = *v5;
  v6 = v5[1];
  *(inited + 168) = &type metadata for String;
  *(inited + 144) = v7;
  *(inited + 152) = v6;

  v8 = sub_10024D824(inited);
  swift_setDeallocating();
  sub_100035D04(&qword_100344038, qword_100279DB0);
  swift_arrayDestroy();
  return v8;
}

uint64_t *sub_1001D03E0()
{
  v2 = v0;
  sub_100035D04(&qword_100344030, &unk_10027A140);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100278930;
  v23 = 25705;
  v24 = 0xE200000000000000;
  AnyHashable.init<A>(_:)();
  v4 = type metadata accessor for UUID();
  *(inited + 96) = v4;
  v5 = sub_10000F798((inited + 72));
  (*(*(v4 - 8) + 16))(v5, v2, v4);
  v23 = 0x496E6F6973736573;
  v24 = 0xE900000000000044;
  AnyHashable.init<A>(_:)();
  v6 = type metadata accessor for HandoffRemotePeerInterface.Request.LeaderSessionOutput(0);
  v7 = (v2 + v6[5]);
  v9 = *v7;
  v8 = v7[1];
  *(inited + 168) = &type metadata for String;
  *(inited + 144) = v9;
  *(inited + 152) = v8;

  AnyHashable.init<A>(_:)();
  Date.timeIntervalSinceReferenceDate.getter();
  *(inited + 240) = &type metadata for Double;
  *(inited + 216) = v10;
  v23 = 0x74757074756FLL;
  v24 = 0xE600000000000000;
  AnyHashable.init<A>(_:)();
  LOBYTE(v23) = *(v2 + v6[7]);
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  sub_1001D0EC0();
  v11 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v13 = v12;

  if (v1)
  {
    sub_1000516C4(inited + 248);
    v14 = &qword_100344038;
    sub_1000097E8(inited + 176, &qword_100344038, qword_100279DB0);
    sub_1000097E8(inited + 104, &qword_100344038, qword_100279DB0);
    sub_1000097E8(inited + 32, &qword_100344038, qword_100279DB0);
    swift_setDeallocating();
    sub_100035D04(&qword_100344038, qword_100279DB0);
    swift_arrayDestroy();
  }

  else
  {
    *(inited + 312) = &type metadata for Data;
    *(inited + 288) = v11;
    *(inited + 296) = v13;
    v14 = sub_10024D824(inited);
    swift_setDeallocating();
    sub_100035D04(&qword_100344038, qword_100279DB0);
    swift_arrayDestroy();
    v15 = (v2 + v6[8]);
    v16 = v15[1];
    if (v16)
    {
      v17 = *v15;

      AnyHashable.init<A>(_:)();
      v22 = &type metadata for String;
      *&v21 = v17;
      *(&v21 + 1) = v16;
      sub_1000516B4(&v21, v20);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v25 = v14;
      sub_10004D368(v20, &v23, isUniquelyReferenced_nonNull_native);
      sub_1000516C4(&v23);
      return v25;
    }
  }

  return v14;
}

unint64_t sub_1001D0760()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_100035D04(&qword_100344030, &unk_10027A140);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10026F050;
  AnyHashable.init<A>(_:)();
  v5 = sub_1001F7300(v1, v2, v3);
  *(inited + 96) = &type metadata for String;
  *(inited + 72) = v5;
  *(inited + 80) = v6;
  v7 = sub_10024D824(inited);
  swift_setDeallocating();
  sub_1000097E8(inited + 32, &qword_100344038, qword_100279DB0);
  return v7;
}

unint64_t sub_1001D087C()
{
  result = qword_10034B698;
  if (!qword_10034B698)
  {
    sub_100035D4C(&qword_10034B690, &qword_100289B48);
    sub_1001D0900();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034B698);
  }

  return result;
}

unint64_t sub_1001D0900()
{
  result = qword_10034B6A0;
  if (!qword_10034B6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034B6A0);
  }

  return result;
}

uint64_t sub_1001D0954(uint64_t a1)
{
  v2 = v1;
  v3 = sub_100019110(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  v12 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_100089CDC();
    v7 = v12;
  }

  v8 = *(v7 + 48);
  v9 = type metadata accessor for UUID();
  (*(*(v9 - 8) + 8))(v8 + *(*(v9 - 8) + 72) * v5, v9);
  v10 = *(*(v7 + 56) + 8 * v5);
  sub_100051968();
  *v2 = v7;
  return v10;
}

uint64_t sub_1001D0A1C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_100004B58(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 1;
  }

  v6 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *v2;
  v11 = *v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_10008A2E8();
    v8 = v11;
  }

  v9 = *(*(v8 + 56) + 8 * v6);
  sub_100005840(v6, v8);
  *v3 = v8;
  return v9;
}

double sub_1001D0AB4@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = sub_1000851E8(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v11 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_10008A458();
      v9 = v11;
    }

    sub_1000516C4(*(v9 + 48) + 40 * v7);
    sub_1000516B4((*(v9 + 56) + 32 * v7), a2);
    sub_10004C45C(v7, v9);
    *v3 = v9;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_1001D0B58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_100019110(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_10008ADDC();
      v9 = v21;
    }

    v10 = *(v9 + 48);
    v11 = type metadata accessor for UUID();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    v12 = *(v9 + 56);
    v13 = type metadata accessor for Date();
    v20 = *(v13 - 8);
    (*(v20 + 32))(a2, v12 + *(v20 + 72) * v7, v13);
    sub_10004C770(v7, v9);
    *v3 = v9;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = type metadata accessor for Date();
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

uint64_t sub_1001D0CF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_100019110(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_10008B130();
      v9 = v21;
    }

    v10 = *(v9 + 48);
    v11 = type metadata accessor for UUID();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    v12 = *(v9 + 56);
    active = type metadata accessor for PCUserAlertManager.ActiveAlertContext(0);
    v20 = *(active - 8);
    sub_10008CD9C(v12 + *(v20 + 72) * v7, a2);
    sub_10004C788(v7, v9);
    *v3 = v9;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = active;
  }

  else
  {
    v18 = type metadata accessor for PCUserAlertManager.ActiveAlertContext(0);
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

unint64_t sub_1001D0EC0()
{
  result = qword_10034B6A8;
  if (!qword_10034B6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034B6A8);
  }

  return result;
}

uint64_t sub_1001D0F80(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1001D1008(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = type metadata accessor for Date();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1001D1144(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  else
  {
    v11 = type metadata accessor for Date();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_1001D1288(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5, uint64_t a6)
{
  type metadata accessor for UUID();
  if (v8 <= 0x3F)
  {
    type metadata accessor for Date();
    if (v9 <= 0x3F)
    {
      sub_1001D1348(319, a5, a6);
      if (v10 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1001D1348(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1001D1394(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_1001D13B0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1001D13F8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_1001D145C()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  if (*(v0 + 56) > 1u)
  {
    if (*(v0 + 56) == 2)
    {
      String.append(_:)(*v0);
      v7._countAndFlagsBits = 10528;
      v7._object = 0xE200000000000000;
      String.append(_:)(v7);
      return 0x65646E6570737573;
    }

    else
    {
      v10 = v0[4] | v0[5] | v0[6];
      if (v4 | v2 | v1 | v3 | v10)
      {
        v11 = v4 | v2 | v3 | v10;
        if (v1 != 1 || v11)
        {
          if (v1 != 2 || v11)
          {
            if (v1 == 3 && v11 == 0)
            {
              return 0x676E69646E6570;
            }

            else
            {
              return 0x6E65707375736E75;
            }
          }

          else
          {
            return 0x676E696E6E7572;
          }
        }

        else
        {
          return 0x646573756170;
        }
      }

      else
      {
        return 0x6576697463616E69;
      }
    }
  }

  else
  {
    if (*(v0 + 56))
    {
      v5 = 0x202864656C696166;
      v6 = 0xE800000000000000;
    }

    else
    {
      _StringGuts.grow(_:)(17);
      v5 = 0x6164696C61766E69;
      v6 = 0xED00002028646574;
    }

    String.append(_:)(*&v5);
    _print_unlocked<A, B>(_:_:)();
    v9._countAndFlagsBits = 10528;
    v9._object = 0xE200000000000000;
    String.append(_:)(v9);
    return 0;
  }
}

uint64_t sub_1001D1684(void *a1)
{
  v2 = v1;
  v59 = sub_100035D04(&qword_10034B920, &qword_100289E48);
  v58 = *(v59 - 8);
  __chkstk_darwin(v59);
  v57 = &v53 - v4;
  v5 = sub_100035D04(&qword_10034B928, &qword_100289E50);
  v74 = *(v5 - 8);
  v75 = v5;
  __chkstk_darwin(v5);
  v73 = &v53 - v6;
  v56 = sub_100035D04(&qword_10034B930, &qword_100289E58);
  v55 = *(v56 - 8);
  __chkstk_darwin(v56);
  v54 = &v53 - v7;
  v62 = sub_100035D04(&qword_10034B938, &qword_100289E60);
  v61 = *(v62 - 8);
  __chkstk_darwin(v62);
  v60 = &v53 - v8;
  v65 = sub_100035D04(&qword_10034B940, &qword_100289E68);
  v64 = *(v65 - 8);
  __chkstk_darwin(v65);
  v63 = &v53 - v9;
  v10 = sub_100035D04(&qword_10034B948, &qword_100289E70);
  v71 = *(v10 - 8);
  v72 = v10;
  __chkstk_darwin(v10);
  v70 = &v53 - v11;
  v12 = sub_100035D04(&qword_10034B950, &qword_100289E78);
  v68 = *(v12 - 8);
  v69 = v12;
  __chkstk_darwin(v12);
  v14 = &v53 - v13;
  v15 = sub_100035D04(&qword_10034B958, &qword_100289E80);
  v66 = *(v15 - 8);
  v67 = v15;
  __chkstk_darwin(v15);
  v17 = &v53 - v16;
  v18 = sub_100035D04(&qword_10034B960, &qword_100289E88);
  v19 = *(v18 - 8);
  v77 = v18;
  v78 = v19;
  __chkstk_darwin(v18);
  v21 = &v53 - v20;
  sub_10000EBC0(a1, a1[3]);
  sub_1001D3938();
  v76 = v21;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v22 = *v2;
  v23 = *(v2 + 8);
  v24 = *(v2 + 16);
  v25 = *(v2 + 24);
  v26 = *(v2 + 32);
  v27 = *(v2 + 40);
  v28 = *(v2 + 56);
  if (v28 <= 1)
  {
    v74 = *(v2 + 48);
    v75 = v22;
    if (!v28)
    {
      LOBYTE(v79) = 1;
      sub_1001D3B84();
      v30 = v76;
      v29 = v77;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v79 = v75;
      v80 = v23;
      v81 = v24;
      v82 = v25;
      v83 = v26;
      v84 = v27;
      v85 = v74;
      sub_10010B950();
      v31 = v69;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v68 + 8))(v14, v31);
      return (*(v78 + 8))(v30, v29);
    }

    LOBYTE(v79) = 2;
    sub_1001D3B30();
    v37 = v70;
    v35 = v76;
    v34 = v77;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v79 = v75;
    v80 = v23;
    v81 = v24;
    v82 = v25;
    v83 = v26;
    v84 = v27;
    v85 = v74;
    sub_10010B950();
    v38 = v72;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v71 + 8))(v37, v38);
    goto LABEL_7;
  }

  if (v28 == 2)
  {
    LOBYTE(v79) = 6;
    sub_1001D39E0();
    v33 = v73;
    v35 = v76;
    v34 = v77;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v36 = v75;
    KeyedEncodingContainer.encode(_:forKey:)();
    (*(v74 + 8))(v33, v36);
LABEL_7:
    v39 = *(v78 + 8);
    v40 = v35;
    return v39(v40, v34);
  }

  v41 = v26 | v27 | *(v2 + 48);
  if (!(v24 | v23 | v22 | v25 | v41))
  {
    LOBYTE(v79) = 0;
    sub_1001D3BD8();
    v46 = v76;
    v45 = v77;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v66 + 8))(v17, v67);
    return (*(v78 + 8))(v46, v45);
  }

  v42 = v24 | v23 | v25 | v41;
  if (v22 != 1 || v42)
  {
    if (v22 != 2 || v42)
    {
      if (v22 != 3 || v42)
      {
        LOBYTE(v79) = 7;
        sub_1001D398C();
        v52 = v57;
        v44 = v76;
        v34 = v77;
        KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v48 = *(v58 + 8);
        v49 = v52;
        v50 = &v87;
      }

      else
      {
        LOBYTE(v79) = 5;
        sub_1001D3A34();
        v51 = v54;
        v44 = v76;
        v34 = v77;
        KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v48 = *(v55 + 8);
        v49 = v51;
        v50 = &v86;
      }
    }

    else
    {
      LOBYTE(v79) = 4;
      sub_1001D3A88();
      v47 = v60;
      v44 = v76;
      v34 = v77;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v48 = *(v61 + 8);
      v49 = v47;
      v50 = &v88;
    }

    v48(v49, *(v50 - 32));
  }

  else
  {
    LOBYTE(v79) = 3;
    sub_1001D3ADC();
    v43 = v63;
    v44 = v76;
    v34 = v77;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v64 + 8))(v43, v65);
  }

  v39 = *(v78 + 8);
  v40 = v44;
  return v39(v40, v34);
}

uint64_t sub_1001D1FC0()
{
  v1 = *v0;
  v2 = 0x6576697463616E69;
  v3 = 0x65646E6570737573;
  if (v1 != 6)
  {
    v3 = 0x6E65707375736E75;
  }

  v4 = 0x676E696E6E7572;
  if (v1 != 4)
  {
    v4 = 0x676E69646E6570;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x64656C696166;
  if (v1 != 2)
  {
    v5 = 0x646573756170;
  }

  if (*v0)
  {
    v2 = 0x6164696C61766E69;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
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

uint64_t sub_1001D20C0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1001D2908(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1001D20F4(uint64_t a1)
{
  v2 = sub_1001D3938();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001D2130(uint64_t a1)
{
  v2 = sub_1001D3938();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001D216C(uint64_t a1)
{
  v2 = sub_1001D3B30();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001D21A8(uint64_t a1)
{
  v2 = sub_1001D3B30();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001D21E4(uint64_t a1)
{
  v2 = sub_1001D3BD8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001D2220(uint64_t a1)
{
  v2 = sub_1001D3BD8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001D225C(uint64_t a1)
{
  v2 = sub_1001D3B84();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001D2298(uint64_t a1)
{
  v2 = sub_1001D3B84();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001D22D4(uint64_t a1)
{
  v2 = sub_1001D3ADC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001D2310(uint64_t a1)
{
  v2 = sub_1001D3ADC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001D234C(uint64_t a1)
{
  v2 = sub_1001D3A34();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001D2388(uint64_t a1)
{
  v2 = sub_1001D3A34();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001D23C4(uint64_t a1)
{
  v2 = sub_1001D3A88();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001D2400(uint64_t a1)
{
  v2 = sub_1001D3A88();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001D243C(uint64_t a1)
{
  v2 = sub_1001D39E0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001D2478(uint64_t a1)
{
  v2 = sub_1001D39E0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001D24B4(uint64_t a1)
{
  v2 = sub_1001D398C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001D24F0(uint64_t a1)
{
  v2 = sub_1001D398C();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_1001D252C@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  result = sub_1001D2BAC(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    a1[1] = v5;
    a1[2] = v7[0];
    result = *(v7 + 9);
    *(a1 + 41) = *(v7 + 9);
  }

  return result;
}

uint64_t sub_1001D2594(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v5[0] = *a1;
  v5[1] = v2;
  v6[0] = a1[2];
  *(v6 + 9) = *(a1 + 41);
  v3 = a2[1];
  v7[0] = *a2;
  v7[1] = v3;
  v8[0] = a2[2];
  *(v8 + 9) = *(a2 + 41);
  return sub_1001D25F0(v5, v7) & 1;
}

uint64_t sub_1001D25F0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = a1[4];
  v9 = a1[5];
  v8 = a1[6];
  v10 = *(a1 + 56);
  if (v10 <= 1)
  {
    if (v10)
    {
      if (*(a2 + 56) != 1 || v3 != *a2)
      {
        return 0;
      }

      v16 = a2[3];
      v17 = a2[4];
      v18 = a2[5];
      v13 = a2[6];
      if ((v4 != a2[1] || v5 != a2[2]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        return 0;
      }

      if ((v6 != v16 || v7 != v17) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        return 0;
      }

      if (v8)
      {
        if (v13)
        {
          if (v9 == v18 && v8 == v13)
          {
            return 1;
          }

          return (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0;
        }

        return 0;
      }
    }

    else
    {
      if (*(a2 + 56) || v3 != *a2)
      {
        return 0;
      }

      v11 = a2[3];
      v12 = a2[4];
      v14 = a2[5];
      v13 = a2[6];
      if ((v4 != a2[1] || v5 != a2[2]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        return 0;
      }

      if ((v6 != v11 || v7 != v12) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        return 0;
      }

      if (v8)
      {
        if (v13)
        {
          if (v9 == v14 && v8 == v13)
          {
            return 1;
          }

          return (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0;
        }

        return 0;
      }
    }

    return !v13;
  }

  if (v10 != 2)
  {
    v19 = v5 | v4;
    v20 = v7 | v9 | v8;
    if (!(v19 | v3 | v6 | v20))
    {
      if (*(a2 + 56) != 3)
      {
        return 0;
      }

      v22 = vorrq_s8(*(a2 + 3), *(a2 + 5));
      return !(*&vorr_s8(*v22.i8, *&vextq_s8(v22, v22, 8uLL)) | a2[2] | a2[1] | *a2);
    }

    v21 = v19 | v6 | v20;
    if (v3 != 1 || v21)
    {
      if (v3 != 2 || v21)
      {
        if (v3 != 3 || v21)
        {
          if (*(a2 + 56) != 3 || *a2 != 4)
          {
            return 0;
          }
        }

        else if (*(a2 + 56) != 3 || *a2 != 3)
        {
          return 0;
        }
      }

      else if (*(a2 + 56) != 3 || *a2 != 2)
      {
        return 0;
      }
    }

    else if (*(a2 + 56) != 3 || *a2 != 1)
    {
      return 0;
    }

    v23 = vorrq_s8(*(a2 + 3), *(a2 + 5));
    return !(*&vorr_s8(*v23.i8, *&vextq_s8(v23, v23, 8uLL)) | a2[2] | a2[1]);
  }

  if (*(a2 + 56) != 2)
  {
    return 0;
  }

  if (v3 == *a2 && v4 == a2[1])
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_1001D2908(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6576697463616E69 && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6164696C61766E69 && a2 == 0xEB00000000646574 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x64656C696166 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x646573756170 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x676E696E6E7572 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x676E69646E6570 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x65646E6570737573 && a2 == 0xE900000000000064 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6E65707375736E75 && a2 == 0xEB00000000646564)
  {

    return 7;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

double sub_1001D2BAC@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v73 = a2;
  v70 = sub_100035D04(&qword_10034B890, &qword_100289DF8);
  v67 = *(v70 - 8);
  __chkstk_darwin(v70);
  v77 = &v52 - v3;
  v69 = sub_100035D04(&qword_10034B898, &qword_100289E00);
  v68 = *(v69 - 8);
  __chkstk_darwin(v69);
  v72 = &v52 - v4;
  v66 = sub_100035D04(&qword_10034B8A0, &qword_100289E08);
  v65 = *(v66 - 8);
  __chkstk_darwin(v66);
  v76 = &v52 - v5;
  v63 = sub_100035D04(&qword_10034B8A8, &qword_100289E10);
  v64 = *(v63 - 8);
  __chkstk_darwin(v63);
  v75 = &v52 - v6;
  v59 = sub_100035D04(&qword_10034B8B0, &qword_100289E18);
  v60 = *(v59 - 8);
  __chkstk_darwin(v59);
  v71 = &v52 - v7;
  v62 = sub_100035D04(&qword_10034B8B8, &qword_100289E20);
  v61 = *(v62 - 8);
  __chkstk_darwin(v62);
  v74 = &v52 - v8;
  v58 = sub_100035D04(&qword_10034B8C0, &qword_100289E28);
  v57 = *(v58 - 8);
  __chkstk_darwin(v58);
  v10 = &v52 - v9;
  v11 = sub_100035D04(&qword_10034B8C8, &qword_100289E30);
  v56 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v52 - v12;
  v14 = sub_100035D04(&qword_10034B8D0, &unk_100289E38);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v52 - v16;
  v18 = a1[3];
  v89 = a1;
  sub_10000EBC0(a1, v18);
  sub_1001D3938();
  v19 = v78;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  v20 = v19;
  if (v19)
  {
    goto LABEL_10;
  }

  v54 = v13;
  v53 = v11;
  v55 = v10;
  v22 = v74;
  v21 = v75;
  v23 = v76;
  v24 = v77;
  *&v78 = v15;
  v25 = KeyedDecodingContainer.allKeys.getter();
  v26 = (2 * *(v25 + 16)) | 1;
  v85 = v25;
  v86 = v25 + 32;
  v87 = 0;
  v88 = v26;
  v27 = sub_100218024();
  if (v27 == 8 || v87 != v88 >> 1)
  {
    v35 = v17;
    v36 = type metadata accessor for DecodingError();
    swift_allocError();
    v38 = v37;
    sub_100035D04(&qword_10033EA78, &qword_100275A60);
    *v38 = &type metadata for RangingSessionState;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v36 - 8) + 104))(v38, enum case for DecodingError.typeMismatch(_:), v36);
    swift_willThrow();
    (*(v78 + 8))(v35, v14);
    swift_unknownObjectRelease();
LABEL_10:
    sub_10000903C(v89);
    return result;
  }

  if (v27 > 3u)
  {
    v34 = v73;
    if (v27 > 5u)
    {
      v43 = v73;
      v44 = v78;
      if (v27 == 6)
      {
        LOBYTE(v79) = 6;
        sub_1001D39E0();
        v45 = v72;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v46 = v17;
        v32 = v69;
        v20 = 0;
        v29 = KeyedDecodingContainer.decode(_:forKey:)();
        v30 = v50;
        v58 = 0;
        (*(v68 + 8))(v45, v32);
        v51 = *(v44 + 8);
        v31 = v44 + 8;
        v51(v46, v14);
        swift_unknownObjectRelease();
        v33 = 2;
      }

      else
      {
        LOBYTE(v79) = 7;
        sub_1001D398C();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v58 = 0;
        (*(v67 + 8))(v24, v70);
        (*(v44 + 8))(v17, v14);
        swift_unknownObjectRelease();
        v30 = 0;
        v31 = 0;
        v32 = 0;
        v78 = 0u;
        v33 = 3;
        v29 = 4;
      }

      v34 = v43;
    }

    else
    {
      v40 = v78;
      if (v27 == 4)
      {
        LOBYTE(v79) = 4;
        sub_1001D3A88();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v58 = 0;
        (*(v64 + 8))(v21, v63);
        (*(v40 + 8))(v17, v14);
        swift_unknownObjectRelease();
        v30 = 0;
        v31 = 0;
        v32 = 0;
        v78 = 0u;
        v33 = 3;
        v29 = 2;
      }

      else
      {
        LOBYTE(v79) = 5;
        sub_1001D3A34();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v58 = 0;
        (*(v65 + 8))(v23, v66);
        (*(v40 + 8))(v17, v14);
        swift_unknownObjectRelease();
        v30 = 0;
        v31 = 0;
        v32 = 0;
        v78 = 0u;
        v29 = 3;
        v33 = 3;
      }
    }
  }

  else if (v27 > 1u)
  {
    v41 = v78;
    if (v27 == 2)
    {
      LOBYTE(v79) = 2;
      sub_1001D3B30();
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v34 = v73;
      sub_10010B758();
      v42 = v62;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v58 = 0;
      (*(v61 + 8))(v22, v42);
      (*(v41 + 8))(v17, v14);
      swift_unknownObjectRelease();
      v29 = v79;
      v30 = v80;
      v20 = v81;
      v31 = v82;
      v32 = v83;
      v33 = 1;
      v78 = v84;
    }

    else
    {
      LOBYTE(v79) = 3;
      sub_1001D3ADC();
      v48 = v71;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v34 = v73;
      v58 = 0;
      (*(v60 + 8))(v48, v59);
      (*(v41 + 8))(v17, v14);
      swift_unknownObjectRelease();
      v30 = 0;
      v31 = 0;
      v32 = 0;
      v78 = 0u;
      v33 = 3;
      v29 = 1;
    }
  }

  else
  {
    if (v27)
    {
      LOBYTE(v79) = 1;
      sub_1001D3B84();
      v47 = v55;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      sub_10010B758();
      v49 = v58;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      (*(v57 + 8))(v47, v49);
      (*(v78 + 8))(v17, v14);
      swift_unknownObjectRelease();
      v58 = 0;
      v33 = 0;
      v29 = v79;
      v30 = v80;
      v20 = v81;
      v31 = v82;
      v32 = v83;
      v78 = v84;
    }

    else
    {
      LOBYTE(v79) = 0;
      sub_1001D3BD8();
      v28 = v54;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v58 = 0;
      (*(v56 + 8))(v28, v53);
      (*(v78 + 8))(v17, v14);
      swift_unknownObjectRelease();
      v29 = 0;
      v30 = 0;
      v31 = 0;
      v32 = 0;
      v78 = 0u;
      v33 = 3;
    }

    v34 = v73;
  }

  sub_10000903C(v89);
  *v34 = v29;
  *(v34 + 8) = v30;
  *(v34 + 16) = v20;
  *(v34 + 24) = v31;
  *(v34 + 32) = v32;
  result = *&v78;
  *(v34 + 40) = v78;
  *(v34 + 56) = v33;
  return result;
}

unint64_t sub_1001D3938()
{
  result = qword_10034B8D8;
  if (!qword_10034B8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034B8D8);
  }

  return result;
}

unint64_t sub_1001D398C()
{
  result = qword_10034B8E0;
  if (!qword_10034B8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034B8E0);
  }

  return result;
}

unint64_t sub_1001D39E0()
{
  result = qword_10034B8E8;
  if (!qword_10034B8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034B8E8);
  }

  return result;
}

unint64_t sub_1001D3A34()
{
  result = qword_10034B8F0;
  if (!qword_10034B8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034B8F0);
  }

  return result;
}

unint64_t sub_1001D3A88()
{
  result = qword_10034B8F8;
  if (!qword_10034B8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034B8F8);
  }

  return result;
}

unint64_t sub_1001D3ADC()
{
  result = qword_10034B900;
  if (!qword_10034B900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034B900);
  }

  return result;
}

unint64_t sub_1001D3B30()
{
  result = qword_10034B908;
  if (!qword_10034B908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034B908);
  }

  return result;
}

unint64_t sub_1001D3B84()
{
  result = qword_10034B910;
  if (!qword_10034B910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034B910);
  }

  return result;
}

unint64_t sub_1001D3BD8()
{
  result = qword_10034B918;
  if (!qword_10034B918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034B918);
  }

  return result;
}

unint64_t sub_1001D3CC0()
{
  result = qword_10034B968;
  if (!qword_10034B968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034B968);
  }

  return result;
}

unint64_t sub_1001D3D18()
{
  result = qword_10034B970;
  if (!qword_10034B970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034B970);
  }

  return result;
}

unint64_t sub_1001D3D70()
{
  result = qword_10034B978;
  if (!qword_10034B978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034B978);
  }

  return result;
}

unint64_t sub_1001D3DC8()
{
  result = qword_10034B980;
  if (!qword_10034B980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034B980);
  }

  return result;
}

unint64_t sub_1001D3E20()
{
  result = qword_10034B988;
  if (!qword_10034B988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034B988);
  }

  return result;
}

unint64_t sub_1001D3E78()
{
  result = qword_10034B990;
  if (!qword_10034B990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034B990);
  }

  return result;
}

unint64_t sub_1001D3ED0()
{
  result = qword_10034B998;
  if (!qword_10034B998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034B998);
  }

  return result;
}

unint64_t sub_1001D3F28()
{
  result = qword_10034B9A0;
  if (!qword_10034B9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034B9A0);
  }

  return result;
}

unint64_t sub_1001D3F80()
{
  result = qword_10034B9A8;
  if (!qword_10034B9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034B9A8);
  }

  return result;
}

unint64_t sub_1001D3FD8()
{
  result = qword_10034B9B0;
  if (!qword_10034B9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034B9B0);
  }

  return result;
}

unint64_t sub_1001D4030()
{
  result = qword_10034B9B8;
  if (!qword_10034B9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034B9B8);
  }

  return result;
}

unint64_t sub_1001D4088()
{
  result = qword_10034B9C0;
  if (!qword_10034B9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034B9C0);
  }

  return result;
}

unint64_t sub_1001D40E0()
{
  result = qword_10034B9C8;
  if (!qword_10034B9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034B9C8);
  }

  return result;
}

unint64_t sub_1001D4138()
{
  result = qword_10034B9D0;
  if (!qword_10034B9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034B9D0);
  }

  return result;
}

unint64_t sub_1001D4190()
{
  result = qword_10034B9D8;
  if (!qword_10034B9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034B9D8);
  }

  return result;
}

unint64_t sub_1001D41E8()
{
  result = qword_10034B9E0;
  if (!qword_10034B9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034B9E0);
  }

  return result;
}

unint64_t sub_1001D4240()
{
  result = qword_10034B9E8;
  if (!qword_10034B9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034B9E8);
  }

  return result;
}

unint64_t sub_1001D4298()
{
  result = qword_10034B9F0;
  if (!qword_10034B9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034B9F0);
  }

  return result;
}

unint64_t sub_1001D42F0()
{
  result = qword_10034B9F8;
  if (!qword_10034B9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034B9F8);
  }

  return result;
}

unint64_t sub_1001D4348()
{
  result = qword_10034BA00;
  if (!qword_10034BA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034BA00);
  }

  return result;
}

unint64_t sub_1001D43A0()
{
  result = qword_10034BA08;
  if (!qword_10034BA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034BA08);
  }

  return result;
}

unint64_t sub_1001D43F8()
{
  result = qword_10034BA10;
  if (!qword_10034BA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10034BA10);
  }

  return result;
}

id sub_1001D444C(uint64_t a1, uint64_t a2)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithFrame:{0.0, 0.0, 200.0, 200.0}];
  v3 = objc_opt_self();
  v4 = v2;
  v5 = [v3 configurationWithScale:3];
  v6 = String._bridgeToObjectiveC()();

  v7 = [objc_opt_self() systemImageNamed:v6 withConfiguration:v5];

  [v4 setImage:v7 forState:0];
  v8 = [objc_opt_self() systemBlueColor];
  [v4 setTintColor:v8];

  return v4;
}

uint64_t type metadata accessor for ClassicCardViewServiceContext(uint64_t a1)
{
  result = qword_10034BA70;
  if (!qword_10034BA70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1001D4614(uint64_t a1)
{
  type metadata accessor for ActivityDisplayContext(319);
  if (v1 <= 0x3F)
  {
    sub_1001D46D8(319);
    if (v2 <= 0x3F)
    {
      _s8CardInfoOMa(319);
      if (v3 <= 0x3F)
      {
        type metadata accessor for PCActivityAssetType(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1001D46D8(uint64_t a1)
{
  if (!qword_10034BA80)
  {
    v2 = sub_100151930();
    v5 = type metadata accessor for NSCodingCodableOptional(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_10034BA80);
    }
  }
}

uint64_t sub_1001D4730(void *a1)
{
  v3 = v1;
  v5 = sub_100035D04(&qword_10034BAF8, &qword_10028A860);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - v7;
  sub_10000EBC0(a1, a1[3]);
  sub_1001D52F4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v11) = 0;
  type metadata accessor for ActivityDisplayContext(0);
  sub_1001D551C(&qword_10034BB00, type metadata accessor for ActivityDisplayContext, &unk_10027D2DC);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v9 = type metadata accessor for ClassicCardViewServiceContext(0);
    LOBYTE(v11) = *(v3 + v9[5]);
    v12 = 1;
    sub_10010BAF4();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    *&v11 = *(v3 + v9[6]);
    v12 = 2;
    sub_100035D04(&qword_10034B658, &qword_100289998);
    sub_1001CF424(&qword_10034B670, &unk_100296200);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v11 = *(v3 + v9[7]);
    v12 = 3;
    sub_1001D54C8();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v11) = 4;
    _s8CardInfoOMa(0);
    sub_1001D551C(&qword_10034BB10, _s8CardInfoOMa, &unk_100288FCC);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    *&v11 = *(v3 + v9[9]);
    v12 = 5;
    type metadata accessor for PCActivityAssetType(0);
    sub_1001D551C(&qword_100346538, type metadata accessor for PCActivityAssetType, &protocol conformance descriptor for PCActivityAssetType);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

void sub_1001D4AAC(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v18 = _s8CardInfoOMa(0);
  __chkstk_darwin(v18);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ActivityDisplayContext(0);
  __chkstk_darwin(v5);
  v20 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_100035D04(&qword_10034BAD0, &unk_10028A850);
  v19 = *(v22 - 8);
  __chkstk_darwin(v22);
  v8 = &v16 - v7;
  v9 = type metadata accessor for ClassicCardViewServiceContext(0);
  __chkstk_darwin(v9);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000EBC0(a1, a1[3]);
  sub_1001D52F4();
  v21 = v8;
  v12 = v23;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v12)
  {
    sub_10000903C(a1);
  }

  else
  {
    v23 = v4;
    v13 = v19;
    LOBYTE(v24) = 0;
    sub_1001D551C(&qword_10034BAE0, type metadata accessor for ActivityDisplayContext, &unk_10027D304);
    v14 = v20;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    sub_1001D539C(v14, v11, type metadata accessor for ActivityDisplayContext);
    v25 = 1;
    sub_10010BAA0();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v11[v9[5]] = v24;
    sub_100035D04(&qword_10034B658, &qword_100289998);
    v25 = 2;
    sub_1001CF424(&qword_10034B660, &unk_100296228);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *&v11[v9[6]] = v24;
    v25 = 3;
    sub_1001D5348();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *&v11[v9[7]] = v24;
    LOBYTE(v24) = 4;
    sub_1001D551C(&qword_10034BAF0, _s8CardInfoOMa, &unk_100288FF4);
    v15 = v23;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    sub_1001D539C(v15, &v11[v9[8]], _s8CardInfoOMa);
    type metadata accessor for PCActivityAssetType(0);
    v25 = 5;
    sub_1001D551C(&qword_100346508, type metadata accessor for PCActivityAssetType, &protocol conformance descriptor for PCActivityAssetType);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v13 + 8))(v21, v22);
    *&v11[v9[9]] = v24;
    sub_1001D5404(v11, v17);
    sub_10000903C(a1);
    sub_1001D5468(v11, type metadata accessor for ClassicCardViewServiceContext);
  }
}