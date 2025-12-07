void sub_10040AEA8()
{
  v1 = objc_opt_self();
  v2 = [v1 tu_defaults];
  if (*(v0 + 8))
  {
    v3 = String._bridgeToObjectiveC()();
  }

  else
  {
    v3 = 0;
  }

  v4 = sub_10000F848();
  [v2 setObject:v3 forKey:v4];

  swift_unknownObjectRelease();
  v5 = [v1 tu_defaults];
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v7 = sub_100015304();
  [v5 setObject:isa forKey:v7];
}

uint64_t sub_10040AFD0(uint64_t a1, uint64_t a2)
{
  v5 = v2[3];
  v6 = v2[4];
  v7 = v2[2];

  v8 = sub_1002CB47C(a1, a2, v7);
  if (v6)
  {
    if (v9)
    {
      if (v5 != v8 || v6 != v9)
      {
        v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v12 = v11 ^ 1;
        goto LABEL_12;
      }

      goto LABEL_11;
    }

LABEL_9:

    v12 = 1;
    goto LABEL_12;
  }

  if (v9)
  {
    goto LABEL_9;
  }

LABEL_11:
  v12 = 0;
LABEL_12:
  if (qword_1006A0B28 != -1)
  {
    sub_1000080B0(&qword_1006A0B28);
  }

  v13 = type metadata accessor for Logger();
  sub_10000AF9C(v13, qword_1006BA5F8);

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *(v16 + 10) = sub_10000AAD8(1.5047e-36, v21, v17);
    sub_100018350(&_mh_execute_header, v18, v19, "Beep changed=%{BOOL}d for %s");
    sub_100009B7C(v21);
    sub_100005F40(v21);
    sub_100005F40(v16);
  }

  return v12 & 1;
}

uint64_t sub_10040B180(uint64_t a1, uint64_t a2)
{
  v4 = v2[1];
  if (v4)
  {
    if (*v2 == a1 && v4 == a2)
    {
      v6 = 0;
    }

    else
    {
      v6 = _stringCompareWithSmolCheck(_:_:expecting:)() ^ 1;
    }
  }

  else
  {
    v6 = 1;
  }

  if (qword_1006A0B28 != -1)
  {
    sub_1000080B0(&qword_1006A0B28);
  }

  v7 = type metadata accessor for Logger();
  sub_10000AF9C(v7, qword_1006BA5F8);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *(v10 + 10) = sub_10000AAD8(1.5047e-36, v15, v11);
    sub_100018350(&_mh_execute_header, v12, v13, "Siri utterance changed=%{BOOL}d for: %s");
    sub_100009B7C(v15);
    sub_100005F40(v15);
    sub_100005F40(v10);
  }

  return v6 & 1;
}

void sub_10040B2D0(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  sub_10040AEA8();
}

uint64_t sub_10040B338(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6565724769726973 && a2 == 0xEC000000676E6974;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000015 && 0x8000000100576110 == a2;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6365684370656562 && a2 == 0xEC0000006D75736BLL)
    {

      return 2;
    }

    else
    {
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_10040B460(char a1)
{
  if (!a1)
  {
    return 0x6565724769726973;
  }

  if (a1 == 1)
  {
    return 0xD000000000000015;
  }

  return 0x6365684370656562;
}

uint64_t sub_10040B4CC(void *a1)
{
  v3 = v1;
  v5 = sub_10026D814(&qword_1006AAFA0, &qword_100586D40);
  sub_100007FEC();
  v7 = v6;
  __chkstk_darwin(v8);
  v10 = &v12[-v9];
  sub_100009B14(a1, a1[3]);
  sub_10040BAA8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v2)
  {
    v13 = *(v3 + 16);
    v12[15] = 1;
    sub_10026D814(&qword_1006A2BE0, &unk_10057E8B0);
    sub_10040BAFC(&qword_1006AAFA8, &protocol witness table for String, &protocol conformance descriptor for <> [A : B]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v12[14] = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_10040B69C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_10026D814(&qword_1006AAF88, &qword_100586D38);
  sub_100007FEC();
  v7 = v6;
  __chkstk_darwin(v8);
  v10 = v19 - v9;
  sub_100009B14(a1, a1[3]);
  sub_10040BAA8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100009B7C(a1);
  }

  v22 = 0;
  v11 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v13 = v12;
  sub_10026D814(&qword_1006A2BE0, &unk_10057E8B0);
  v21 = 1;
  sub_10040BAFC(&qword_1006AAF98, &protocol witness table for String, &protocol conformance descriptor for <> [A : B]);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v19[0] = v19[1];
  v20 = 2;
  v14 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v15 = v10;
  v17 = v16;
  (*(v7 + 8))(v15, v5);
  result = sub_100009B7C(a1);
  *a2 = v11;
  a2[1] = v13;
  a2[2] = v19[0];
  a2[3] = v14;
  a2[4] = v17;
  return result;
}

uint64_t sub_10040B8E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10040B338(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10040B90C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10040B458();
  *a1 = result;
  return result;
}

uint64_t sub_10040B934(uint64_t a1)
{
  v2 = sub_10040BAA8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10040B970(uint64_t a1)
{
  v2 = sub_10040BAA8();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_10040B9AC@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_10040B69C(a1, v6);
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

uint64_t sub_10040BA10(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
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

uint64_t sub_10040BA50(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

unint64_t sub_10040BAA8()
{
  result = qword_1006AAF90;
  if (!qword_1006AAF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006AAF90);
  }

  return result;
}

uint64_t sub_10040BAFC(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_10026DCB4(&qword_1006A2BE0, &unk_10057E8B0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for GreetingsChecksums.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_10040BC48()
{
  result = qword_1006AAFB0;
  if (!qword_1006AAFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006AAFB0);
  }

  return result;
}

unint64_t sub_10040BCA0()
{
  result = qword_1006AAFB8;
  if (!qword_1006AAFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006AAFB8);
  }

  return result;
}

unint64_t sub_10040BCF8()
{
  result = qword_1006AAFC0;
  if (!qword_1006AAFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006AAFC0);
  }

  return result;
}

void sub_10040BD4C(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = _convertErrorToNSError(_:)();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

id sub_10040BDB0()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = String._bridgeToObjectiveC()();

  v2 = [v0 initWithBundleIdentifier:v1];

  return v2;
}

uint64_t (*sub_10040BE24(void *a1))()
{
  v3 = sub_1002FDF84(0x40uLL);
  *a1 = v3;
  v3[4] = type metadata accessor for UUID();
  sub_100007FEC();
  v3[5] = v4;
  v6 = sub_1002FDF84(*(v5 + 64));
  v7 = sub_100008C50(v6);
  v8(v7);
  v3[7] = sub_1004106E8(v3, v1);
  return sub_1004136E8;
}

uint64_t (*sub_10040BF00(void *a1))()
{
  v3 = sub_1002FDF84(0x40uLL);
  *a1 = v3;
  v3[4] = type metadata accessor for UUID();
  sub_100007FEC();
  v3[5] = v4;
  v6 = sub_1002FDF84(*(v5 + 64));
  v7 = sub_100008C50(v6);
  v8(v7);
  v3[7] = sub_100410804(v3, v1);
  return sub_10040BFDC;
}

void sub_10040BFE0(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 48);
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  v5 = sub_10000FF30();
  v6(v5);
  (*(v4 + 8))(v2, v3);
  free(v2);

  free(v1);
}

void (*sub_10040C054(void *a1, char a2))(void **a1)
{
  v4 = sub_1002FDF84(0x28uLL);
  *a1 = v4;
  v4[4] = sub_1004109B8(v4, a2 & 1);
  return sub_10040C0B8;
}

void sub_10040C0B8(void **a1)
{
  v1 = *a1;
  v2 = sub_10000FF30();
  v3(v2);

  free(v1);
}

uint64_t sub_10040C104(uint64_t a1)
{
  [v1 setDelegate:a1];

  return swift_unknownObjectRelease();
}

void sub_10040C164()
{
  sub_100006AF0(0, &unk_1006A7A00, UNNotificationCategory_ptr);
  sub_1004125F4();
  isa = Set._bridgeToObjectiveC()().super.isa;
  [v0 setNotificationCategories:isa];
}

void sub_10040C1F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    a3 = 0;
  }

  sub_10040C1FC(a1, a2, a3);
}

void sub_10040C1FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v6[4] = a2;
    v6[5] = a3;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 1107296256;
    v6[2] = sub_1004582CC;
    v6[3] = &unk_10062FB00;
    v5 = _Block_copy(v6);
  }

  else
  {
    v5 = 0;
  }

  [v3 addNotificationRequest:a1 withCompletionHandler:v5];
  _Block_release(v5);
}

void sub_10040C2CC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  if (!a4)
  {
    a5 = 0;
  }

  sub_10040C2D8(a1, a2, a3, a4, a5);
}

void sub_10040C2D8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v6 = v5;
  v10 = String._bridgeToObjectiveC()();
  if (a4)
  {
    v11[4] = a4;
    v11[5] = a5;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 1107296256;
    v11[2] = sub_1004582CC;
    v11[3] = &unk_10062FAD8;
    a4 = _Block_copy(v11);
  }

  [v6 replaceContentForRequestWithIdentifier:v10 replacementContent:a3 completionHandler:a4];
  _Block_release(a4);
}

void sub_10040C3BC()
{
  isa = Array._bridgeToObjectiveC()().super.isa;
  [v0 removeDeliveredNotificationsWithIdentifiers:isa];
}

void sub_10040C410(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + OBJC_IVAR___CSDUserNotificationController_faceTimeNotificationCenter + 8);
  ObjectType = swift_getObjectType();
  v4 = *(v2 + 16);
  v5 = swift_unknownObjectRetain();
  v4(v5, ObjectType, v2);
  (*(v2 + 32))(ObjectType, v2);
  v6 = *(v1 + OBJC_IVAR___CSDUserNotificationController_phoneNotificationCenter + 8);
  v7 = swift_getObjectType();
  v8 = *(v6 + 16);
  v9 = swift_unknownObjectRetain();
  v8(v9, v7, v6);
  (*(v6 + 32))(v7, v6);
  sub_10040CF74();
  sub_10026D814(&qword_1006AB130, &qword_100586EE8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10057D6A0;
  *(inited + 32) = 0;
  *(inited + 40) = &_swiftEmptySetSingleton;
  *(inited + 48) = 1;
  *(inited + 56) = &_swiftEmptySetSingleton;
  sub_10026D814(&qword_1006AB138, &qword_100586EF0);
  sub_1004124BC();
  v108 = Dictionary.init(dictionaryLiteral:)();
  v11 = OBJC_IVAR___CSDUserNotificationController_providers;
  swift_beginAccess();
  v12 = *(v1 + v11);
  v13 = *(v12 + 16);
  v97 = v1;
  if (v13)
  {
    v14 = OBJC_IVAR___CSDUserNotificationController_providersByIdentifier;

    v15 = 32;
    v95 = v12;
    v96 = v14;
    while (1)
    {
      v105 = *(v12 + v15);
      v16 = swift_getObjectType();
      v17 = *(*(&v105 + 1) + 16);
      swift_unknownObjectRetain();
      v18 = v17(v16, *(&v105 + 1));
      v19 = sub_10040D7F4(v18 & 1);
      v100 = v20;
      v101 = v17;
      v103 = v13;
      v104 = v15;
      v102 = v19;
      if (v17(v16, *(&v105 + 1)))
      {
        break;
      }

      v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v21)
      {
        goto LABEL_6;
      }

      v24 = TUPreferredFaceTimeBundleIdentifier();
      v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v98 = v26;
      v99 = v25;

LABEL_8:
      v27 = (*(*(&v105 + 1) + 8))(v16, *(&v105 + 1));
      v29 = v28;
      swift_beginAccess();
      swift_unknownObjectRetain();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v107 = *(v1 + v96);
      v31 = v107;
      *(v1 + v96) = 0x8000000000000000;
      v32 = sub_100005208(v27, v29);
      v34 = v31[2];
      v35 = (v33 & 1) == 0;
      v36 = v34 + v35;
      if (__OFADD__(v34, v35))
      {
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
        goto LABEL_45;
      }

      v37 = v32;
      v38 = v33;
      sub_10026D814(&unk_1006AB148, &qword_100586EF8);
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v36))
      {
        v39 = sub_100005208(v27, v29);
        v1 = v97;
        if ((v38 & 1) != (v40 & 1))
        {
          KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          return;
        }

        v37 = v39;
      }

      else
      {
        v1 = v97;
      }

      v41 = v107;
      if (v38)
      {
        *(v107[7] + 16 * v37) = v105;

        swift_unknownObjectRelease();
      }

      else
      {
        v107[(v37 >> 6) + 8] |= 1 << v37;
        v42 = (v41[6] + 16 * v37);
        *v42 = v27;
        v42[1] = v29;
        *(v41[7] + 16 * v37) = v105;
        v43 = v41[2];
        v44 = __OFADD__(v43, 1);
        v45 = v43 + 1;
        if (v44)
        {
          goto LABEL_44;
        }

        v41[2] = v45;
      }

      *(v1 + v96) = v41;

      swift_endAccess();
      v46 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v47 = swift_allocObject();
      v47[2] = v46;
      v47[3] = v99;
      v47[4] = v98;
      v47[5] = v102;
      v47[6] = v100;
      v48 = *(*(&v105 + 1) + 56);

      swift_unknownObjectRetain();
      v48(sub_100412510, v47, v16, *(&v105 + 1));

      v49 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v50 = swift_allocObject();
      v50[2] = v49;
      v50[3] = v102;
      v50[4] = v100;
      v51 = *(*(&v105 + 1) + 104);
      swift_unknownObjectRetain();

      v51(sub_100412520, v50, v16, *(&v105 + 1));

      v52 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v53 = swift_allocObject();
      *(v53 + 16) = v52;
      *(v53 + 24) = v105;
      v54 = *(*(&v105 + 1) + 128);
      swift_unknownObjectRetain();

      v54(sub_10041252C, v53, v16, *(&v105 + 1));

      v55 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v56 = swift_allocObject();
      v56[2] = v55;
      v56[3] = v102;
      v56[4] = v100;
      v57 = *(*(&v105 + 1) + 80);
      swift_unknownObjectRetain();

      v57(sub_100412578, v56, v16, *(&v105 + 1));

      v58 = v101(v16, *(&v105 + 1));
      v59 = sub_10040C054(v106, v58 & 1);
      if (*v60)
      {
        v61 = (*(*(&v105 + 1) + 24))(v16, *(&v105 + 1));
        sub_10040F0E0(v61);
      }

      (v59)(v106, 0);
      v12 = v95;
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v15 = v104 + 16;
      v13 = v103 - 1;
      if (v103 == 1)
      {

        goto LABEL_21;
      }
    }

LABEL_6:
    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v98 = v23;
    v99 = v22;
    goto LABEL_8;
  }

LABEL_21:
  BadgeManager.startObservingForStoreBadgeCountUpdate()();
  if (qword_1006A0B70 != -1)
  {
LABEL_45:
    swift_once();
  }

  v62 = type metadata accessor for Logger();
  sub_10000AF9C(v62, qword_1006BA6D0);
  v63 = Logger.logObject.getter();
  v64 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v63, v64))
  {
    v65 = swift_slowAlloc();
    *v65 = 0;
    _os_log_impl(&_mh_execute_header, v63, v64, "Looking to merge badge count data", v65, 2u);
  }

  BadgeManager.mergeBadgeCountData(_:)(1);
  v66 = 0;
  v67 = v108;
  v69 = v108 + 64;
  v68 = *(v108 + 64);
  v70 = 1 << *(v108 + 32);
  v71 = -1;
  if (v70 < 64)
  {
    v71 = ~(-1 << v70);
  }

  v72 = v71 & v68;
  v73 = (v70 + 63) >> 6;
  if ((v71 & v68) != 0)
  {
    while (1)
    {
      v74 = v66;
LABEL_32:
      v75 = __clz(__rbit64(v72));
      v72 &= v72 - 1;
      v76 = v75 | (v74 << 6);
      v77 = *(*(v67 + 48) + v76);
      v78 = *(*(v67 + 56) + 8 * v76);

      sub_10040D7F4(v77);
      v80 = v79;
      v81 = swift_getObjectType();
      (*(v80 + 40))(v78, v81, v80);
      swift_unknownObjectRelease();

      sub_10040E188();
      if (!v72)
      {
        goto LABEL_28;
      }
    }
  }

  while (1)
  {
LABEL_28:
    v74 = v66 + 1;
    if (__OFADD__(v66, 1))
    {
      __break(1u);
      goto LABEL_43;
    }

    if (v74 >= v73)
    {
      break;
    }

    v72 = *(v69 + 8 * v74);
    ++v66;
    if (v72)
    {
      v66 = v74;
      goto LABEL_32;
    }
  }

  if ([objc_opt_self() isFaceTimePhotosXPCServiceEnabled])
  {
    v82 = *(v97 + OBJC_IVAR___CSDUserNotificationController_clientManager);
    if (v82)
    {
      v83 = v82;
      [v83 setRequiredConnectionCapability:@"modify-usernotifications"];
      v84 = [objc_opt_self() userNotificationProviderServerXPCInterface];
      [v83 setExportedInterface:v84];

      [v83 setExportedObject:v97];
      v85 = String._bridgeToObjectiveC()();
      [v83 startListeningOnMachServiceWithName:v85];

      v86 = v83;
      v87 = Logger.logObject.getter();
      v88 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v87, v88))
      {
        v89 = swift_slowAlloc();
        v90 = swift_slowAlloc();
        *v89 = 138412290;
        *(v89 + 4) = v86;
        *v90 = v82;
        v91 = v86;
        _os_log_impl(&_mh_execute_header, v87, v88, "Started broadcasting User notifications mach service with %@", v89, 0xCu);
        sub_100009A04(v90, &unk_1006A2630, &qword_10057CB40);

        v86 = v87;
        v87 = v91;
      }
    }
  }

  v92 = Logger.logObject.getter();
  v93 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v92, v93))
  {
    v94 = swift_slowAlloc();
    *v94 = 0;
    _os_log_impl(&_mh_execute_header, v92, v93, "Loaded user notification controller", v94, 2u);
  }
}

void sub_10040CF74()
{
  v1 = v0;
  v2 = sub_10026D814(&qword_1006A3C70, &unk_10057EA80);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v69 - v6;
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = (&v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(v1 + OBJC_IVAR___CSDUserNotificationController_queue);
  *v11 = v12;
  (*(v9 + 104))(v11, enum case for DispatchPredicate.onQueue(_:), v8);
  v13 = v12;
  LOBYTE(v12) = _dispatchPreconditionTest(_:)();
  (*(v9 + 8))(v11, v8);
  if (v12)
  {
    if (qword_1006A0B70 == -1)
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
  v14 = type metadata accessor for Logger();
  v72 = sub_10000AF9C(v14, qword_1006BA6D0);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "Updating providers", v17, 2u);
  }

  v69 = v7;
  v70 = v5;

  v18 = [objc_allocWithZone(CHManager) init];
  sub_10026D814(&qword_1006A4760, &unk_10057EA60);
  v19 = swift_allocObject();
  v75 = xmmword_10057D690;
  *(v19 + 16) = xmmword_10057D690;
  *(v19 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v19 + 40) = v20;
  v21 = swift_allocObject();
  *(v21 + 16) = v75;
  *(v21 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v21 + 40) = v22;
  v23 = TUPreferredFaceTimeBundleIdentifier();
  if (!v23)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = String._bridgeToObjectiveC()();
  }

  v24 = [objc_opt_self() tu_contactStoreConfigurationForBundleIdentifier:v23];

  [v24 setIncludeLocalContacts:1];
  v25 = objc_allocWithZone(CNContactStore);
  v71 = v24;
  v73 = [v25 initWithConfiguration:v24];
  sub_10026D814(&qword_1006AB190, &unk_100583400);
  inited = swift_initStackObject();
  *(inited + 16) = v75;
  *&v75 = type metadata accessor for CallHistoryNotificationProvider(0);
  v27 = objc_allocWithZone(v75);
  v28 = v13;
  v29 = v18;
  v74 = v29;

  *(inited + 32) = sub_100411878(v28, v29, &off_100620CA8, v19, 0, v27);
  *(inited + 40) = &off_10062B148;
  v30 = OBJC_IVAR___CSDUserNotificationController_providers;
  swift_beginAccess();
  sub_100414424(inited);
  swift_endAccess();
  v31 = objc_opt_self();
  v32 = v28;
  v33 = [v31 defaultCenter];
  v34 = objc_allocWithZone(type metadata accessor for CallRecordingNotificationProvider(0));
  v35 = sub_1003AB91C(v32, v33);
  swift_beginAccess();
  sub_100461ABC();
  v36 = *(*(v1 + v30) + 16);
  sub_100461BC0(v36);
  v37 = *(v1 + v30);
  *(v37 + 16) = v36 + 1;
  v38 = v37 + 16 * v36;
  *(v38 + 32) = v35;
  *(v38 + 40) = &off_10062BDA0;
  *(v1 + v30) = v37;
  swift_endAccess();
  v39 = swift_initStackObject();
  *(v39 + 16) = xmmword_10057E830;
  v40 = v32;
  v41 = v73;
  *(v39 + 32) = sub_100411518(v40, v41);
  *(v39 + 40) = &off_100624CB8;
  v42 = v41;
  v43 = [v31 defaultCenter];
  v44 = objc_allocWithZone(type metadata accessor for FaceTimeNotificationProvider(0));
  v45 = v40;
  *(v39 + 48) = sub_100411600(v45, v42, v43, v44);
  *(v39 + 56) = &off_100625D68;
  v46 = objc_allocWithZone(v75);
  v47 = v74;

  *(v39 + 64) = sub_100411878(v45, v47, &off_100620CD8, v21, 1, v46);
  *(v39 + 72) = &off_10062B148;
  swift_beginAccess();
  sub_100414424(v39);
  swift_endAccess();
  v48 = [objc_opt_self() sharedInstance];
  if (v48)
  {
    v49 = v48;

    v50 = [v49 deviceType];

    if (v50 != 4 || [*(v1 + OBJC_IVAR___CSDUserNotificationController_featureFlags) voicemailInboxOnIPadEnabled])
    {
      v51 = type metadata accessor for Date();
      v52 = v69;
      sub_10000AF74(v69, 1, 1, v51);
      v53 = v70;
      sub_10000AF74(v70, 1, 1, v51);
      v54 = objc_allocWithZone(VMVoicemailManager);
      v55 = v45;
      v56 = [v54 init];
      v57 = objc_allocWithZone(TUFeatureFlags);
      v58 = v56;
      v59 = [v57 init];
      v60 = [objc_opt_self() tu_defaults];
      v61 = objc_allocWithZone(type metadata accessor for VoicemailNotificationProvider(0));
      v62 = sub_10041266C(v55, v58, v59, v60, &_swiftEmptySetSingleton, &_swiftEmptySetSingleton, v52, v53, v61);

      swift_beginAccess();
      sub_100461ABC();
      v63 = *(*(v1 + v30) + 16);
      sub_100461BC0(v63);
      v64 = *(v1 + v30);
      *(v64 + 16) = v63 + 1;
      v65 = v64 + 16 * v63;
      *(v65 + 32) = v62;
      *(v65 + 40) = &off_10062FC08;
      *(v1 + v30) = v64;
      swift_endAccess();
    }

    v66 = Logger.logObject.getter();
    v67 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      *v68 = 0;
      _os_log_impl(&_mh_execute_header, v66, v67, "Updated providers", v68, 2u);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10040D7F4(char a1)
{
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v1 + OBJC_IVAR___CSDUserNotificationController_queue);
  *v5 = v6;
  (*(v3 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v2);
  v7 = v6;
  LOBYTE(v6) = _dispatchPreconditionTest(_:)();
  result = (*(v3 + 8))(v5, v2);
  if (v6)
  {
    return swift_unknownObjectRetain();
  }

  __break(1u);
  return result;
}

void sub_10040D934(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = *(Strong + OBJC_IVAR___CSDUserNotificationController_callFilterController);
    v9 = sub_1002E23D4(v8);

    if (v9)
    {
      sub_10040DAAC();

      goto LABEL_9;
    }
  }

  if (qword_1006A0B70 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_10000AF9C(v10, qword_1006BA6D0);
  v9 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v9, v11, "Not posting notification since it is restricted by the call filter", v12, 2u);
  }

LABEL_9:
}

void sub_10040DAAC()
{
  sub_100005EF4();
  v2 = v1;
  v4 = v3;
  v5 = type metadata accessor for DispatchPredicate();
  sub_100007FEC();
  v7 = v6;
  __chkstk_darwin(v8);
  sub_100007FDC();
  v11 = v10 - v9;
  v12 = *(v0 + OBJC_IVAR___CSDUserNotificationController_queue);
  *(v10 - v9) = v12;
  (*(v7 + 104))(v10 - v9, enum case for DispatchPredicate.onQueue(_:), v5);
  v13 = v12;
  LOBYTE(v12) = _dispatchPreconditionTest(_:)();
  (*(v7 + 8))(v11, v5);
  if (v12)
  {
    if (qword_1006A0B70 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  sub_10000860C(&qword_1006A0B70);
LABEL_3:
  v14 = type metadata accessor for Logger();
  sub_10000AF9C(v14, qword_1006BA6D0);
  v15 = v4;
  swift_unknownObjectRetain();
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  swift_unknownObjectRelease();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v27 = v20;
    *v18 = 138412546;
    *(v18 + 4) = v15;
    *v19 = v15;
    *(v18 + 12) = 2080;
    v21 = v15;
    swift_unknownObjectRetain();
    sub_10026D814(&qword_1006AB188, &unk_100586F20);
    v22 = String.init<A>(reflecting:)();
    v24 = sub_10002741C(v22, v23, &v27);

    *(v18 + 14) = v24;
    _os_log_impl(&_mh_execute_header, v16, v17, "Adding notification request %@ to %s", v18, 0x16u);
    sub_100009A04(v19, &unk_1006A2630, &qword_10057CB40);
    sub_100005F40(v19);
    sub_100009B7C(v20);
    sub_100005F40(v20);
    sub_100005F40(v18);
  }

  ObjectType = swift_getObjectType();
  v26 = swift_allocObject();
  *(v26 + 16) = v15;
  (*(v2 + 48))(v15, sub_100412664, v26, ObjectType, v2);

  sub_100005EDC();
}

void sub_10040DD94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_10040DE1C();
  }
}

void sub_10040DE1C()
{
  sub_100005EF4();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = type metadata accessor for DispatchPredicate();
  sub_100007FEC();
  v9 = v8;
  __chkstk_darwin(v10);
  sub_100007FDC();
  v13 = v12 - v11;
  v14 = *(v0 + OBJC_IVAR___CSDUserNotificationController_queue);
  *(v12 - v11) = v14;
  (*(v9 + 104))(v12 - v11, enum case for DispatchPredicate.onQueue(_:), v7);
  v15 = v14;
  LOBYTE(v14) = _dispatchPreconditionTest(_:)();
  (*(v9 + 8))(v13, v7);
  if (v14)
  {
    if (qword_1006A0B70 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  sub_10000860C(&qword_1006A0B70);
LABEL_3:
  v16 = type metadata accessor for Logger();
  sub_10000AF9C(v16, qword_1006BA6D0);

  swift_unknownObjectRetain();
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  swift_unknownObjectRelease();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v27 = v20;
    *v19 = 136315394;
    *(v19 + 4) = sub_10002741C(v6, v4, &v27);
    *(v19 + 12) = 2080;
    swift_unknownObjectRetain();
    sub_10026D814(&qword_1006AB188, &unk_100586F20);
    v21 = String.init<A>(reflecting:)();
    v23 = sub_10002741C(v21, v22, &v27);

    *(v19 + 14) = v23;
    _os_log_impl(&_mh_execute_header, v17, v18, "Removing notification with identifier %s from %s", v19, 0x16u);
    swift_arrayDestroy();
    sub_100005F40(v20);
    sub_100005F40(v19);
  }

  ObjectType = swift_getObjectType();
  sub_10026D814(&qword_1006A4760, &unk_10057EA60);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_10057D690;
  *(v25 + 32) = v6;
  *(v25 + 40) = v4;
  v26 = *(v2 + 80);

  v26(v25, ObjectType, v2);

  sub_100005EDC();
}

void sub_10040E0FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    ObjectType = swift_getObjectType();
    (*(a3 + 16))(ObjectType, a3);
    sub_10040E188();
  }
}

void sub_10040E188()
{
  sub_100005EF4();
  v2 = v1;
  v118 = sub_10026D814(&unk_1006A7AC0, &qword_100586F00);
  sub_100007FEC();
  v117 = v3;
  __chkstk_darwin(v4);
  sub_100007BAC();
  v116 = v5 - v6;
  __chkstk_darwin(v7);
  v119 = &v115 - v8;
  v138 = type metadata accessor for BadgeCountCategory();
  sub_100007FEC();
  v121 = v9;
  __chkstk_darwin(v10);
  sub_100007BAC();
  v115 = v11 - v12;
  __chkstk_darwin(v13);
  v122 = &v115 - v14;
  v130 = sub_10026D814(&qword_1006AB158, &unk_100586F08);
  sub_100008070();
  __chkstk_darwin(v15);
  v129 = &v115 - v16;
  v17 = sub_10026D814(&qword_1006AB160, &qword_100584570);
  __chkstk_darwin(v17 - 8);
  sub_100007BAC();
  v20 = v18 - v19;
  v22 = __chkstk_darwin(v21);
  v24 = &v115 - v23;
  v25 = __chkstk_darwin(v22);
  v133 = &v115 - v26;
  __chkstk_darwin(v25);
  v137 = (&v115 - v27);
  v28 = type metadata accessor for DispatchPredicate();
  sub_100007FEC();
  v30 = v29;
  __chkstk_darwin(v31);
  sub_100007FDC();
  v34 = v33 - v32;
  v35 = *(v0 + OBJC_IVAR___CSDUserNotificationController_queue);
  *(v33 - v32) = v35;
  (*(v30 + 104))(v33 - v32, enum case for DispatchPredicate.onQueue(_:), v28);
  v36 = v35;
  LOBYTE(v35) = _dispatchPreconditionTest(_:)();
  (*(v30 + 8))(v34, v28);
  if ((v35 & 1) == 0)
  {
    goto LABEL_65;
  }

  v124 = v24;
  v134 = v20;
  v37 = OBJC_IVAR___CSDUserNotificationController_providers;
  swift_beginAccess();
  v120 = v0;
  v132 = v37;
  v38 = *(v0 + v37);
  v135 = *(v38 + 16);
  v39 = (v2 & 1) == 0;
  if (v2)
  {
    v40 = 0x656E6F6850;
  }

  else
  {
    v40 = 0x656D695465636146;
  }

  if (v39)
  {
    v41 = 0xE800000000000000;
  }

  else
  {
    v41 = 0xE500000000000000;
  }

  v42 = 0;
  v136 = _swiftEmptyArrayStorage;
  while (v135 != v42)
  {
    if (v42 >= *(v38 + 16))
    {
      __break(1u);
LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      sub_10000860C(&qword_1006A0B70);
      goto LABEL_57;
    }

    v139 = *(v38 + 16 * v42 + 32);
    ObjectType = swift_getObjectType();
    v44 = *(&v139 + 1);
    v45 = *(*(&v139 + 1) + 16);
    swift_unknownObjectRetain();
    v46 = v45(ObjectType, v44);
    v47 = (v46 & 1) == 0;
    if (v46)
    {
      v48 = 0x656E6F6850;
    }

    else
    {
      v48 = 0x656D695465636146;
    }

    if (v47)
    {
      v20 = 0xE800000000000000;
    }

    else
    {
      v20 = 0xE500000000000000;
    }

    if (v48 == v40 && v20 == v41)
    {

LABEL_24:
      v51 = v136;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v140 = v51;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_10039A440(0, v51[2] + 1, 1);
        v51 = v140;
      }

      v54 = v51[2];
      v53 = v51[3];
      v20 = v54 + 1;
      if (v54 >= v53 >> 1)
      {
        sub_10039A440((v53 > 1), v54 + 1, 1);
        v51 = v140;
      }

      ++v42;
      v51[2] = v20;
      v136 = v51;
      *&v51[2 * v54 + 4] = v139;
    }

    else
    {
      v50 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v50)
      {
        goto LABEL_24;
      }

      swift_unknownObjectRelease();
      ++v42;
    }
  }

  v132 = *(*(v120 + v132) + 16);
  v128 = enum case for BadgeCountCategory.legacyVoicemails(_:);
  v127 = (v121 + 104);
  v123 = (v121 + 32);
  v125 = (v121 + 8);
  v55 = 0;

  v56 = (v135 + 40);
  v57 = &qword_1006AB160;
  v58 = v129;
  while (1)
  {
    if (v132 == v55)
    {

      v20 = 0;
      v131 = 0;
      goto LABEL_45;
    }

    if (v55 >= *(v135 + 16))
    {
      goto LABEL_64;
    }

    v59 = v57;
    *&v139 = v56;
    v20 = *(v56 - 1);
    v60 = *v56;
    v61 = swift_getObjectType();
    v62 = *(v60 + 40);
    swift_unknownObjectRetain();
    v131 = v60;
    v63 = v60;
    v57 = v59;
    v62(v61, v63);
    v65 = v137;
    v64 = v138;
    v66 = v133;
    (*v127)(v133, v128, v138);
    sub_10000AF74(v66, 0, 1, v64);
    v67 = *(v130 + 48);
    sub_100343100(v65, v58, v59, &qword_100584570);
    sub_100343100(v66, v58 + v67, v59, &qword_100584570);
    sub_100007E10(v58);
    if (v39)
    {
      break;
    }

    v126 = v20;
    v75 = v124;
    sub_100343100(v58, v124, v59, &qword_100584570);
    sub_100007E10(v58 + v67);
    if (v76)
    {
      sub_1000112D0();
      sub_100009A04(v77, v78, v79);
      sub_1000112D0();
      sub_100009A04(v80, v81, v82);
      (*v125)(v75, v64);
      v20 = v126;
      v74 = v58;
LABEL_40:
      sub_100009A04(v74, &qword_1006AB158, &unk_100586F08);
      goto LABEL_42;
    }

    v83 = v122;
    (*v123)(v122, v58 + v67, v64);
    sub_10000F150(&unk_1006AB168, &type metadata accessor for BadgeCountCategory, &protocol conformance descriptor for BadgeCountCategory);
    v84 = dispatch thunk of static Equatable.== infix(_:_:)();
    v85 = *v125;
    (*v125)(v83, v64);
    sub_100009A04(v133, v59, &qword_100584570);
    sub_100009A04(v137, v59, &qword_100584570);
    v85(v75, v64);
    v57 = v59;
    sub_100009A04(v58, v59, &qword_100584570);
    v20 = v126;
    if (v84)
    {
      goto LABEL_44;
    }

LABEL_42:
    swift_unknownObjectRelease();
    v56 = (v139 + 16);
    ++v55;
  }

  sub_1000112D0();
  sub_100009A04(v68, v69, v70);
  sub_1000112D0();
  sub_100009A04(v71, v72, v73);
  sub_100007E10(v58 + v67);
  v74 = v58;
  if (!v39)
  {
    goto LABEL_40;
  }

  sub_100009A04(v58, &qword_1006AB160, &qword_100584570);
LABEL_44:

LABEL_45:
  v86 = 0;
  v87 = v136;
  v88 = v136[2];
  v137 = (v121 + 16);
  v89 = v136 + 5;
  *&v139 = _swiftEmptyArrayStorage;
  v135 = (v136 + 5);
LABEL_46:
  v90 = &v89[2 * v86];
  while (v88 != v86)
  {
    if (v86 >= v87[2])
    {
      goto LABEL_63;
    }

    v91 = *v90;
    v92 = swift_getObjectType();
    v93 = *(v91 + 40);
    swift_unknownObjectRetain();
    v94 = v134;
    v93(v92, v91);
    if (sub_100015468(v94, 1, v138) != 1)
    {
      v95 = v115;
      v96 = v138;
      (*v123)(v115, v94, v138);
      v97 = *(v118 + 48);
      v98 = v116;
      (*v137)(v116, v95, v96);
      v99 = (*(v91 + 32))(v92, v91);
      swift_unknownObjectRelease();
      (*v125)(v95, v96);
      *(v98 + v97) = v99;
      sub_100412584(v98, v119);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_100470A70(0, *(v139 + 16) + 1, 1, v139);
        *&v139 = v103;
      }

      v101 = *(v139 + 16);
      v100 = *(v139 + 24);
      if (v101 >= v100 >> 1)
      {
        sub_100470A70(v100 > 1, v101 + 1, 1, v139);
        *&v139 = v104;
      }

      ++v86;
      v102 = v139;
      *(v139 + 16) = v101 + 1;
      sub_100412584(v119, v102 + ((*(v117 + 80) + 32) & ~*(v117 + 80)) + *(v117 + 72) * v101);
      v89 = v135;
      v87 = v136;
      goto LABEL_46;
    }

    swift_unknownObjectRelease();
    sub_100009A04(v94, &qword_1006AB160, &qword_100584570);
    v90 += 2;
    ++v86;
    v87 = v136;
  }

  if (qword_1006A0B70 != -1)
  {
    goto LABEL_66;
  }

LABEL_57:
  v105 = type metadata accessor for Logger();
  sub_10000AF9C(v105, qword_1006BA6D0);
  v106 = Logger.logObject.getter();
  v107 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v106, v107))
  {
    v108 = swift_slowAlloc();
    *v108 = 0;
    _os_log_impl(&_mh_execute_header, v106, v107, "We have a voicemail provider, so setting isAmbiguous", v108, 2u);
    sub_100005F40(v108);
  }

  if (v20)
  {
    v109 = swift_getObjectType();
    v110 = v131;
    v111 = *(v131 + 32);
    swift_unknownObjectRetain();
    v111(v109, v110);
    swift_unknownObjectRelease();
  }

  v112 = sub_10000FF30();
  BadgeManager.setBadgeCounts(_:shouldForceUpdate:isAmbiguous:)(v112, v113, v114);
  swift_unknownObjectRelease();

  sub_100005EDC();
}

void sub_10040ED48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    sub_10040EDD8();
  }
}

void sub_10040EDD8()
{
  sub_100005EF4();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = type metadata accessor for DispatchPredicate();
  sub_100007FEC();
  v11 = v10;
  __chkstk_darwin(v12);
  sub_100007FDC();
  v15 = v14 - v13;
  v16 = *(v0 + OBJC_IVAR___CSDUserNotificationController_queue);
  *(v14 - v13) = v16;
  (*(v11 + 104))(v14 - v13, enum case for DispatchPredicate.onQueue(_:), v9);
  v17 = v16;
  LOBYTE(v16) = _dispatchPreconditionTest(_:)();
  (*(v11 + 8))(v15, v9);
  if (v16)
  {
    if (qword_1006A0B70 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  sub_10000860C(&qword_1006A0B70);
LABEL_3:
  v18 = type metadata accessor for Logger();
  sub_10000AF9C(v18, qword_1006BA6D0);

  swift_unknownObjectRetain();
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  swift_unknownObjectRelease();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v29 = v28;
    *v21 = 136315394;
    *(v21 + 4) = sub_10002741C(v8, v6, &v29);
    *(v21 + 12) = 2080;
    swift_unknownObjectRetain();
    sub_10026D814(&qword_1006AB188, &unk_100586F20);
    v22 = String.init<A>(reflecting:)();
    v24 = sub_10002741C(v22, v23, &v29);

    *(v21 + 14) = v24;
    _os_log_impl(&_mh_execute_header, v19, v20, "Replacing notification with identifier %s from %s", v21, 0x16u);
    swift_arrayDestroy();
    sub_100005F40(v28);
    sub_100005F40(v21);
  }

  ObjectType = swift_getObjectType();
  v26 = swift_allocObject();
  *(v26 + 16) = v8;
  *(v26 + 24) = v6;
  v27 = *(v2 + 56);

  v27(v8, v6, v4, sub_10041265C, v26, ObjectType, v2);

  sub_100005EDC();
}

void sub_10040F0E0(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    sub_100006AF0(0, &unk_1006A7A00, UNNotificationCategory_ptr);
    sub_1004125F4();
    Set.Iterator.init(_cocoa:)();
    v1 = v14[1];
    v2 = v14[2];
    v3 = v14[3];
    v4 = v14[4];
    v5 = v14[5];
  }

  else
  {
    v4 = 0;
    v6 = -1 << *(a1 + 32);
    v2 = (a1 + 56);
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = (v8 & *(a1 + 56));
  }

  if (v1 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v9 = v4;
    v10 = v5;
    v11 = v4;
    if (!v5)
    {
      break;
    }

LABEL_12:
    v12 = (v10 - 1) & v10;
    v13 = *(*(v1 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v10)))));
    if (!v13)
    {
LABEL_18:
      sub_100022DDC(v1);
      return;
    }

    while (1)
    {
      sub_10039634C(v14, v13);

      v4 = v11;
      v5 = v12;
      if ((v1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (__CocoaSet.Iterator.next()())
      {
        sub_100006AF0(0, &unk_1006A7A00, UNNotificationCategory_ptr);
        swift_dynamicCast();
        v13 = v14[0];
        v11 = v4;
        v12 = v5;
        if (v14[0])
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v11 = (v9 + 1);
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v11 >= ((v3 + 64) >> 6))
    {
      goto LABEL_18;
    }

    v10 = v2[v11];
    ++v9;
    if (v10)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

void sub_10040F2C0()
{
  sub_100005EF4();
  v18 = v0;
  ObjectType = swift_getObjectType();
  v16 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  sub_100007FEC();
  v2 = v1;
  __chkstk_darwin(v3);
  sub_100007FDC();
  v6 = v5 - v4;
  type metadata accessor for OS_dispatch_queue_serial.Attributes();
  sub_100008070();
  __chkstk_darwin(v7);
  sub_100007FDC();
  v8 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v8 - 8);
  sub_100007FDC();
  sub_100006AF0(0, &unk_1006A6340, OS_dispatch_queue_serial_ptr);
  static DispatchQoS.unspecified.getter();
  sub_10000F150(&unk_1006AB110, &type metadata accessor for OS_dispatch_queue_serial.Attributes, &protocol conformance descriptor for OS_dispatch_queue_serial.Attributes);
  sub_10026D814(&qword_1006A6350, &qword_100586EE0);
  sub_1000112D0();
  sub_100018040(v9, v10, v11);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v2 + 104))(v6, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v16);
  v12 = OS_dispatch_queue_serial.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v13 = TUPreferredFaceTimeBundleIdentifier();
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  swift_getObjectType();
  sub_100006AF0(0, &qword_1006A3C90, UNUserNotificationCenter_ptr);
  v14 = sub_10040BDB0();
  v15 = sub_10040BDB0();
  sub_100411FFC(v14, v15, _swiftEmptyArrayStorage, v18, v12, objc_allocWithZone(ObjectType));
  swift_deallocPartialClassInstance();
  sub_100005EDC();
}

id sub_10040F5DC()
{
  ObjectType = swift_getObjectType();
  if (qword_1006A0B70 != -1)
  {
    sub_10000860C(&qword_1006A0B70);
  }

  v2 = type metadata accessor for Logger();
  sub_10000AF9C(v2, qword_1006BA6D0);
  v3 = v0;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    *(v6 + 4) = v3;
    *v7 = v3;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v4, v5, "Deallocating %@", v6, 0xCu);
    sub_100009A04(v7, &unk_1006A2630, &qword_10057CB40);
    sub_100005F40(v7);
    sub_100005F40(v6);
  }

  v10.receiver = v3;
  v10.super_class = ObjectType;
  return objc_msgSendSuper2(&v10, "dealloc");
}

void sub_10040F804(uint64_t a1, void *a2)
{
  if (!a1)
  {
    if (qword_1006A0B70 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_10000AF9C(v8, qword_1006BA6D0);
    v9 = a2;
    oslog = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(oslog, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v19 = v12;
      *v11 = 136315138;
      v13 = [v9 identifier];
      v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v16 = v15;

      v17 = sub_10002741C(v14, v16, &v19);

      *(v11 + 4) = v17;
      _os_log_impl(&_mh_execute_header, oslog, v10, "Successfully posted notification with identifier: %s", v11, 0xCu);
      sub_100009B7C(v12);
    }

    goto LABEL_10;
  }

  swift_errorRetain();
  if (qword_1006A0B70 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000AF9C(v2, qword_1006BA6D0);
  swift_errorRetain();
  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, oslog, v3, "Error while posting notification: %@", v4, 0xCu);
    sub_100009A04(v5, &unk_1006A2630, &qword_10057CB40);

LABEL_10:

    return;
  }
}

void sub_10040FAF4(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (!a1)
  {
    if (qword_1006A0B70 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_10000AF9C(v10, qword_1006BA6D0);

    oslog = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(oslog, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v15 = v13;
      *v12 = 136315138;
      *(v12 + 4) = sub_10002741C(a2, a3, &v15);
      _os_log_impl(&_mh_execute_header, oslog, v11, "Successfully replaced notification with identifier: %s", v12, 0xCu);
      sub_100009B7C(v13);
    }

    goto LABEL_10;
  }

  swift_errorRetain();
  if (qword_1006A0B70 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000AF9C(v3, qword_1006BA6D0);
  swift_errorRetain();
  oslog = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&_mh_execute_header, oslog, v4, "Error while replacing notification: %@", v5, 0xCu);
    sub_100009A04(v6, &unk_1006A2630, &qword_10057CB40);

LABEL_10:

    return;
  }
}

void sub_10040FE14()
{
  sub_100005EF4();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  sub_100007FEC();
  v9 = v8;
  __chkstk_darwin(v10);
  sub_100007FDC();
  v13 = v12 - v11;
  v24 = type metadata accessor for DispatchQoS();
  sub_100007FEC();
  v15 = v14;
  __chkstk_darwin(v16);
  sub_100007FDC();
  v19 = v18 - v17;
  v20 = swift_allocObject();
  v20[2] = v6;
  v20[3] = v0;
  v20[4] = v4;
  v20[5] = v2;
  v25[4] = sub_1004106DC;
  v25[5] = v20;
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 1107296256;
  v25[2] = sub_100004CEC;
  v25[3] = &unk_10062F880;
  v21 = _Block_copy(v25);
  v22 = v6;
  v23 = v0;

  static DispatchQoS.unspecified.getter();
  sub_10000F150(&qword_1006A2CC0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_100018040(&qword_1006A2CD0, &unk_1006A2960, &unk_10057D6E0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v21);
  (*(v9 + 8))(v13, v7);
  (*(v15 + 8))(v19, v24);

  sub_100005EDC();
}

uint64_t sub_1004100B4(void *a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  if (qword_1006A0B70 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000AF9C(v6, qword_1006BA6D0);
  v7 = a1;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    *(v10 + 4) = v7;
    *v11 = v7;
    v12 = v7;
    _os_log_impl(&_mh_execute_header, v8, v9, "Received response %@", v10, 0xCu);
    sub_100009A04(v11, &unk_1006A2630, &qword_10057CB40);
  }

  v13 = [v7 notification];
  v14 = [v13 request];

  v15 = [v14 content];
  v16 = sub_1004114A8(v15);
  if (v17)
  {
    v18 = v16;
    v19 = v17;
    v20 = OBJC_IVAR___CSDUserNotificationController_providersByIdentifier;
    swift_beginAccess();
    if (sub_1002CBBB8(v18, v19, *(a2 + v20)))
    {
      v22 = v21;
      swift_endAccess();

      ObjectType = swift_getObjectType();
      v31[3] = sub_100006AF0(0, &qword_1006AB108, UNNotificationResponse_ptr);
      v31[4] = &off_1006253B8;
      v31[0] = v7;
      v24 = *(v22 + 144);
      v25 = v7;
      v24(v31, ObjectType, v22);
      swift_unknownObjectRelease();
      v26 = sub_100009B7C(v31);
      return a3(v26);
    }

    swift_endAccess();
  }

  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&_mh_execute_header, v27, v28, "Could not find notification provider for action", v29, 2u);
  }

  return a3(v26);
}

void sub_100410478(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (**a5)(void, void))
{
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = (&v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *(a4 + OBJC_IVAR___CSDUserNotificationController_queue);
  *v13 = v14;
  (*(v11 + 104))(v13, enum case for DispatchPredicate.onQueue(_:), v10);
  v15 = v14;
  LOBYTE(v14) = _dispatchPreconditionTest(_:)();
  (*(v11 + 8))(v13, v10);
  if (v14)
  {
    if ((a1 & 0x8000000000000000) == 0)
    {
      objc_allocWithZone(type metadata accessor for MomentsNotification());

      v16 = sub_100388A5C(a1, a2, a3);
      v17 = [objc_opt_self() defaultCenter];
      [v17 postNotificationName:@"CSDMomentsControllerStartedRemoteCaptureNotification" object:v16];

      a5[2](a5, 0);
      _Block_release(a5);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t (*sub_1004106E8(void *a1, uint64_t a2))()
{
  v4 = sub_1002FDF84(0x68uLL);
  *a1 = v4;
  v5 = type metadata accessor for UUID();
  v4[8] = v5;
  v6 = *(v5 - 8);
  v7 = v6;
  v4[9] = v6;
  v8 = sub_1002FDF84(*(v6 + 64));
  v4[10] = v8;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  (*(v7 + 16))(v8, a2, v5);
  v4[11] = sub_10041144C(v4);
  v4[12] = sub_100410AA4(v4 + 4, v8, isUniquelyReferenced_nonNull_native);
  return sub_1004136EC;
}

uint64_t (*sub_100410804(void *a1, uint64_t a2))()
{
  v4 = sub_1002FDF84(0x68uLL);
  *a1 = v4;
  v5 = type metadata accessor for UUID();
  v4[8] = v5;
  v6 = *(v5 - 8);
  v7 = v6;
  v4[9] = v6;
  v8 = sub_1002FDF84(*(v6 + 64));
  v4[10] = v8;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  (*(v7 + 16))(v8, a2, v5);
  v4[11] = sub_100411474(v4);
  v4[12] = sub_100410D70(v4 + 4, v8, isUniquelyReferenced_nonNull_native);
  return sub_100410920;
}

void sub_100410924(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 88);
  v4 = *(*a1 + 72);
  v3 = *(*a1 + 80);
  v5 = *(*a1 + 64);
  (*(*a1 + 96))();
  (*(v4 + 8))(v3, v5);
  v6 = sub_10000FF30();
  v2(v6);
  free(v3);

  free(v1);
}

void (*sub_1004109B8(void *a1, char a2))(uint64_t a1)
{
  v4 = sub_1002FDF84(0x50uLL);
  *a1 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4[8] = sub_10041144C(v4);
  v4[9] = sub_100411260((v4 + 4), a2 & 1, isUniquelyReferenced_nonNull_native);
  return sub_100410A48;
}

void sub_100410A48(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v3 = sub_10000FF30();
  v2(v3);

  free(v1);
}

void (*sub_100410AA4(void *a1, uint64_t a2, char a3))(uint64_t **a1)
{
  v4 = v3;
  v8 = sub_1002FDF84(0x40uLL);
  *a1 = v8;
  v8[1] = a2;
  v8[2] = v3;
  v9 = type metadata accessor for UUID();
  v8[3] = v9;
  v10 = *(v9 - 8);
  v8[4] = v10;
  v8[5] = sub_1002FDF84(*(v10 + 64));
  v11 = *v3;
  sub_100021E24();
  *(v8 + 56) = v13 & 1;
  v14 = *(v11 + 16);
  v15 = (v13 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_10;
  }

  v17 = v12;
  v18 = v13;
  sub_10026D814(&qword_1006A4AC0, &qword_10057FB38);
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(a3 & 1, v16))
  {
    sub_100021E24();
    if ((v18 & 1) == (v20 & 1))
    {
      v17 = v19;
      goto LABEL_5;
    }

LABEL_10:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_5:
  v8[6] = v17;
  if (v18)
  {
    v21 = *(*(*v4 + 56) + 8 * v17);
  }

  else
  {
    v21 = 0;
  }

  *v8 = v21;
  return sub_100410C30;
}

void sub_100410C30(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    if ((*a1)[7])
    {
      *(*(*v1[2] + 56) + 8 * v1[6]) = v2;
    }

    else
    {
      (*(v1[4] + 16))(v1[5], v1[1], v1[3]);
      sub_1003283CC();
    }
  }

  else if ((*a1)[7])
  {
    v3 = v1[6];
    v4 = v1[3];
    sub_100035BF4();
    v7(v5 + v6 * v3, v4);
    sub_10026D814(&qword_1006A7628, &qword_100582D70);
    sub_100010588();
    sub_10000F150(v8, v9, &protocol conformance descriptor for UUID);
    _NativeDictionary._delete(at:)();
  }

  v10 = v1[5];

  free(v10);

  free(v1);
}

void (*sub_100410D70(void *a1, uint64_t a2, char a3))(unsigned __int8 **a1, char a2)
{
  v4 = v3;
  v7 = sub_1002FDF84(0x78uLL);
  *a1 = v7;
  *v7 = a2;
  v7[1] = v3;
  v8 = type metadata accessor for UUID();
  v7[2] = v8;
  v9 = *(v8 - 8);
  v7[3] = v9;
  v7[4] = sub_1002FDF84(*(v9 + 64));
  v10 = type metadata accessor for SimulatedConversationManager.SimulatedGroupSession(0);
  v7[5] = v10;
  v11 = *(v10 - 8);
  v12 = v11;
  v7[6] = v11;
  v13 = *(v11 + 64);
  v7[7] = sub_1002FDF84(v13);
  v7[8] = sub_1002FDF84(v13);
  v7[9] = sub_1002FDF84(v13);
  v14 = *(*(sub_10026D814(&unk_1006A7600, &unk_100584E50) - 8) + 64);
  v7[10] = sub_1002FDF84(v14);
  v7[11] = sub_1002FDF84(v14);
  v15 = sub_1002FDF84(v14);
  v7[12] = v15;
  v16 = *v3;
  sub_100021E24();
  *(v7 + 112) = v18 & 1;
  v19 = *(v16 + 16);
  v20 = (v18 & 1) == 0;
  v21 = v19 + v20;
  if (__OFADD__(v19, v20))
  {
    __break(1u);
    goto LABEL_10;
  }

  v22 = v17;
  v23 = v18;
  sub_10026D814(&qword_1006A6FB8, &unk_100582780);
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(a3 & 1, v21))
  {
    sub_100021E24();
    if ((v23 & 1) == (v25 & 1))
    {
      v22 = v24;
      goto LABEL_5;
    }

LABEL_10:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_5:
  v7[13] = v22;
  if (v23)
  {
    sub_10032DE84(*(*v4 + 56) + *(v12 + 72) * v22, v15);
    v26 = 0;
  }

  else
  {
    v26 = 1;
  }

  sub_10000AF74(v15, v26, 1, v10);
  return sub_100411010;
}

void sub_100411010(unsigned __int8 **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = v2[5];
  if (a2)
  {
    v5 = v2[10];
    sub_100343100(v3, v5, &unk_1006A7600, &unk_100584E50);
    v6 = sub_100015468(v5, 1, v4);
    v7 = *(v2 + 112);
    v8 = v2[10];
    if (v6 != 1)
    {
      v9 = v2[1];
      sub_10032DE84(v8, v2[8]);
      v10 = *v9;
      v11 = v2[13];
      v12 = v2[8];
      if ((v7 & 1) == 0)
      {
LABEL_4:
        v13 = v2[7];
        v14 = v2[4];
        (*(v2[3] + 16))(v14, *v2, v2[2]);
        sub_10032DE84(v12, v13);
        sub_100327DF0(v11, v14, v13, v10);
        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v15 = v2[11];
    sub_100343100(v3, v15, &unk_1006A7600, &unk_100584E50);
    v16 = sub_100015468(v15, 1, v4);
    v7 = *(v2 + 112);
    v8 = v2[11];
    if (v16 != 1)
    {
      v24 = v2[1];
      sub_10032DE84(v8, v2[9]);
      v10 = *v24;
      v11 = v2[13];
      v12 = v2[9];
      if ((v7 & 1) == 0)
      {
        goto LABEL_4;
      }

LABEL_9:
      sub_10032DE84(v12, *(v10 + 56) + *(v2[6] + 72) * v11);
      goto LABEL_10;
    }
  }

  sub_100009A04(v8, &unk_1006A7600, &unk_100584E50);
  if (v7)
  {
    v17 = v2[13];
    v18 = v2[2];
    sub_100035BF4();
    v21(v19 + v20 * v17, v18);
    sub_100010588();
    sub_10000F150(v22, v23, &protocol conformance descriptor for UUID);
    _NativeDictionary._delete(at:)();
  }

LABEL_10:
  v25 = v2[11];
  v26 = v2[12];
  v28 = v2[9];
  v27 = v2[10];
  v30 = v2[7];
  v29 = v2[8];
  v31 = v2[4];
  sub_100009A04(v26, &unk_1006A7600, &unk_100584E50);
  free(v26);
  free(v25);
  free(v27);
  free(v28);
  free(v29);
  free(v30);
  free(v31);

  free(v2);
}

void (*sub_100411260(uint64_t a1, char a2, char a3))(uint64_t a1)
{
  v4 = v3;
  *(a1 + 8) = v3;
  *(a1 + 24) = a2;
  v8 = *v3;
  v9 = sub_1002DA960(a2 & 1);
  *(a1 + 25) = v10 & 1;
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_10;
  }

  v14 = v9;
  v15 = v10;
  sub_10026D814(&qword_1006AB180, &qword_100586F18);
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(a3 & 1, v13))
  {
    v16 = sub_1002DA960(a2 & 1);
    if ((v15 & 1) == (v17 & 1))
    {
      v14 = v16;
      goto LABEL_5;
    }

LABEL_10:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_5:
  *(a1 + 16) = v14;
  if (v15)
  {
    v18 = *(*(*v4 + 56) + 8 * v14);
  }

  else
  {
    v18 = 0;
  }

  *a1 = v18;
  return sub_100411378;
}

void sub_100411378(uint64_t a1)
{
  v1 = *a1;
  if (*a1)
  {
    v2 = **(a1 + 8);
    if (*(a1 + 25))
    {
      *(*(v2 + 56) + 8 * *(a1 + 16)) = v1;
    }

    else
    {
      v3 = *(a1 + 24) & 1;
      v4 = *(a1 + 16);

      sub_100327FA8(v4, v3, v1, v2);
    }
  }

  else if (*(a1 + 25))
  {
    sub_10026D814(&qword_1006AB138, &qword_100586EF0);
    sub_1004124BC();

    _NativeDictionary._delete(at:)();
  }
}

uint64_t (*sub_10041144C(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_1004136D8;
}

uint64_t (*sub_100411474(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_10041149C;
}

uint64_t sub_1004114A8(void *a1)
{
  v2 = [a1 notificationProviderIdentifier];

  if (!v2)
  {
    return 0;
  }

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

char *sub_100411518(void *a1, void *a2)
{
  v4 = [objc_allocWithZone(TUConversationManager) init];
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v6 = result;
    v7 = [objc_allocWithZone(type metadata accessor for ConversationInvitationResolver()) init];
    v8 = [objc_allocWithZone(type metadata accessor for SharedConversationServerBag()) init];
    v9 = objc_allocWithZone(type metadata accessor for GroupFaceTimeNotificationProvider());
    return sub_10041311C(a1, a2, v4, v6, v7, v8, 0, 0, v9);
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *sub_100411600(void *a1, void *a2, void *a3, _BYTE *a4)
{
  ObjectType = swift_getObjectType();
  v9 = &a4[OBJC_IVAR____TtC13callservicesd28FaceTimeNotificationProvider_updateBadgeValue];
  *v9 = 0;
  v9[1] = 0;
  v10 = OBJC_IVAR____TtC13callservicesd28FaceTimeNotificationProvider_badgeCategory;
  v11 = type metadata accessor for BadgeCountCategory();
  sub_10000AF74(&a4[v10], 1, 1, v11);
  v12 = &a4[OBJC_IVAR____TtC13callservicesd28FaceTimeNotificationProvider_openURL];
  *v12 = 0;
  v12[1] = 0;
  a4[OBJC_IVAR____TtC13callservicesd28FaceTimeNotificationProvider_notificationType] = 0;
  if (sub_10000B6F4(_swiftEmptyArrayStorage))
  {
    sub_10039B510(_swiftEmptyArrayStorage);
  }

  else
  {
    v13 = &_swiftEmptySetSingleton;
  }

  *&a4[OBJC_IVAR____TtC13callservicesd28FaceTimeNotificationProvider_categories] = v13;
  v14 = &a4[OBJC_IVAR____TtC13callservicesd28FaceTimeNotificationProvider_add];
  *v14 = 0;
  v14[1] = 0;
  v15 = &a4[OBJC_IVAR____TtC13callservicesd28FaceTimeNotificationProvider_replace];
  *v15 = 0;
  v15[1] = 0;
  v16 = &a4[OBJC_IVAR____TtC13callservicesd28FaceTimeNotificationProvider_removeNotification];
  *v16 = 0;
  v16[1] = 0;
  *&a4[OBJC_IVAR____TtC13callservicesd28FaceTimeNotificationProvider_queue] = a1;
  v17 = objc_allocWithZone(TUContactsDataProvider);
  v18 = a1;
  v19 = [v17 initWithContactsDataSource:a2];

  *&a4[OBJC_IVAR____TtC13callservicesd28FaceTimeNotificationProvider_contactsDataProvider] = v19;
  *&a4[OBJC_IVAR____TtC13callservicesd28FaceTimeNotificationProvider_notificationCenter] = a3;
  v20 = &a4[OBJC_IVAR____TtC13callservicesd28FaceTimeNotificationProvider_localizeHandleName];
  *v20 = sub_1002FA204;
  v20[1] = 0;
  v28.receiver = a4;
  v28.super_class = ObjectType;
  v21 = a3;
  v22 = objc_msgSendSuper2(&v28, "init");
  [v21 addObserver:v22 selector:"handlePendingMessageDidReceiveInviteNotification:" name:@"CSDIDSPendingMessageDidReceiveInviteNotification" object:{0, v28.receiver, v28.super_class}];
  v23 = v22;
  [v21 addObserver:v23 selector:"handlePendingMessageDidReceiveCancelNotification:" name:@"CSDIDSPendingMessageDidReceiveCancelNotification" object:0];

  v24 = &v23[OBJC_IVAR____TtC13callservicesd28FaceTimeNotificationProvider_openURL];
  v25 = *&v23[OBJC_IVAR____TtC13callservicesd28FaceTimeNotificationProvider_openURL];
  v26 = *&v23[OBJC_IVAR____TtC13callservicesd28FaceTimeNotificationProvider_openURL + 8];
  *v24 = sub_1002CC498;
  v24[1] = 0;
  sub_1000051F8(v25, v26);

  return v23;
}

char *sub_100411878(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, _BYTE *a6)
{
  v61 = a3;
  v62 = a4;
  ObjectType = swift_getObjectType();
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v66 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS();
  v64 = *(v13 - 8);
  v65 = v13;
  __chkstk_darwin(v13);
  v15 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70[3] = sub_100006AF0(0, &qword_1006AB1B0, CHManager_ptr);
  v70[4] = &off_10062B090;
  v70[0] = a2;
  v16 = OBJC_IVAR____TtC13callservicesd31CallHistoryNotificationProvider_callInteractionManager;
  *&a6[v16] = [objc_allocWithZone(CHCallInteractionManager) init];
  v17 = OBJC_IVAR____TtC13callservicesd31CallHistoryNotificationProvider_callProviderManager;
  *&a6[v17] = [objc_allocWithZone(TUCallProviderManager) init];
  *&a6[OBJC_IVAR____TtC13callservicesd31CallHistoryNotificationProvider_pendingCallIdentifiers] = &_swiftEmptySetSingleton;
  v18 = OBJC_IVAR____TtC13callservicesd31CallHistoryNotificationProvider_configurationProvider;
  *&a6[v18] = [objc_allocWithZone(TUConfigurationProvider) init];
  v19 = OBJC_IVAR____TtC13callservicesd31CallHistoryNotificationProvider_mostRecentCallDate;
  v20 = type metadata accessor for Date();
  sub_10000AF74(&a6[v19], 1, 1, v20);
  v21 = &a6[OBJC_IVAR____TtC13callservicesd31CallHistoryNotificationProvider_contactStore];
  v22 = [objc_opt_self() storeWithOptions:3];
  v21[3] = sub_100006AF0(0, &qword_1006A7BA0, CNContactStore_ptr);
  v21[4] = &off_100622F18;
  *v21 = v22;
  v23 = &a6[OBJC_IVAR____TtC13callservicesd31CallHistoryNotificationProvider_receptionistOnboardingNotificationIdentifier];
  *v23 = 0xD00000000000002CLL;
  v23[1] = 0x800000010056FE90;
  v24 = &a6[OBJC_IVAR____TtC13callservicesd31CallHistoryNotificationProvider_dialRecentCall];
  *v24 = 0;
  v24[1] = 0;
  v25 = &a6[OBJC_IVAR____TtC13callservicesd31CallHistoryNotificationProvider_findConversationLink];
  *v25 = 0;
  v25[1] = 0;
  v26 = &a6[OBJC_IVAR____TtC13callservicesd31CallHistoryNotificationProvider_blockHandles];
  *v26 = 0;
  v26[1] = 0;
  v27 = &a6[OBJC_IVAR____TtC13callservicesd31CallHistoryNotificationProvider_add];
  *v27 = 0;
  v27[1] = 0;
  v28 = &a6[OBJC_IVAR____TtC13callservicesd31CallHistoryNotificationProvider_replace];
  *v28 = 0;
  v28[1] = 0;
  v29 = &a6[OBJC_IVAR____TtC13callservicesd31CallHistoryNotificationProvider_removeNotification];
  *v29 = 0;
  v29[1] = 0;
  v30 = &a6[OBJC_IVAR____TtC13callservicesd31CallHistoryNotificationProvider_updateBadgeValue];
  *v30 = 0;
  v30[1] = 0;
  *&a6[OBJC_IVAR____TtC13callservicesd31CallHistoryNotificationProvider_queue] = a1;
  sub_100009AB0(v70, &a6[OBJC_IVAR____TtC13callservicesd31CallHistoryNotificationProvider_callHistoryDataSource]);
  a6[OBJC_IVAR____TtC13callservicesd31CallHistoryNotificationProvider_notificationType] = a5 & 1;
  v31 = objc_allocWithZone(type metadata accessor for ProcessObserver());
  v32 = a1;
  *&a6[OBJC_IVAR____TtC13callservicesd31CallHistoryNotificationProvider_inCallServiceProcessObserver] = sub_1002F344C(&off_100620C78, v32);
  v33 = v62;
  *&a6[OBJC_IVAR____TtC13callservicesd31CallHistoryNotificationProvider_supportedMediaTypes] = v61;
  *&a6[OBJC_IVAR____TtC13callservicesd31CallHistoryNotificationProvider_supportedProviders] = v33;
  v34 = &a6[OBJC_IVAR____TtC13callservicesd31CallHistoryNotificationProvider_supportsDisplayingFaceTimeAudioCalls];
  *v34 = sub_10038A974;
  v34[1] = 0;
  v35 = &a6[OBJC_IVAR____TtC13callservicesd31CallHistoryNotificationProvider_openURL];
  *v35 = sub_10038A9A0;
  v35[1] = 0;
  v36 = *v25;
  v37 = v25[1];
  *v25 = sub_10038AC70;
  v25[1] = 0;
  sub_1000051F8(v36, v37);
  v38 = [objc_allocWithZone(TUFeatureFlags) init];
  *&a6[OBJC_IVAR____TtC13callservicesd31CallHistoryNotificationProvider_featureFlags] = v38;
  v69.receiver = a6;
  v69.super_class = ObjectType;
  v39 = objc_msgSendSuper2(&v69, "init");
  v40 = *&v39[OBJC_IVAR____TtC13callservicesd31CallHistoryNotificationProvider_callInteractionManager];
  v41 = v39;
  [v40 addDelegate:v41 queue:v32];
  v42 = swift_allocObject();
  *(v42 + 16) = v41;
  aBlock[4] = sub_1004136B4;
  aBlock[5] = v42;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004CEC;
  aBlock[3] = &unk_10062FA88;
  v43 = _Block_copy(aBlock);
  v44 = v41;
  static DispatchQoS.unspecified.getter();
  v67 = _swiftEmptyArrayStorage;
  sub_10000F150(&qword_1006A2CC0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_100018040(&qword_1006A2CD0, &unk_1006A2960, &unk_10057D6E0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v43);
  (*(v66 + 8))(v12, v10);
  (*(v64 + 8))(v15, v65);

  v45 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v46 = &v44[OBJC_IVAR____TtC13callservicesd31CallHistoryNotificationProvider_dialRecentCall];
  v47 = *&v44[OBJC_IVAR____TtC13callservicesd31CallHistoryNotificationProvider_dialRecentCall];
  v48 = *&v44[OBJC_IVAR____TtC13callservicesd31CallHistoryNotificationProvider_dialRecentCall + 8];
  *v46 = sub_1004136BC;
  v46[1] = v45;
  v49 = v44;

  sub_1000051F8(v47, v48);

  v50 = [objc_opt_self() defaultCenter];
  [v50 addObserver:v49 selector:"handleCallHistoryDatabaseChangedWithNotification:" name:kCallHistoryDatabaseChangedNotification object:0];

  sub_100009B7C(v70);
  v51 = &v49[OBJC_IVAR____TtC13callservicesd31CallHistoryNotificationProvider_blockHandles];
  v52 = *&v49[OBJC_IVAR____TtC13callservicesd31CallHistoryNotificationProvider_blockHandles];
  v53 = *&v49[OBJC_IVAR____TtC13callservicesd31CallHistoryNotificationProvider_blockHandles + 8];
  *v51 = sub_100392CEC;
  v51[1] = 0;
  sub_1000051F8(v52, v53);
  v54 = *&v49[OBJC_IVAR____TtC13callservicesd31CallHistoryNotificationProvider_inCallServiceProcessObserver];

  v55 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v56 = &v54[OBJC_IVAR___CSDProcessObserver_processStateChanged];
  v57 = *&v54[OBJC_IVAR___CSDProcessObserver_processStateChanged];
  v58 = *&v54[OBJC_IVAR___CSDProcessObserver_processStateChanged + 8];
  *v56 = sub_1004136C4;
  v56[1] = v55;

  sub_1000051F8(v57, v58);

  return v49;
}

id sub_100411FFC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, char *a6)
{
  ObjectType = swift_getObjectType();
  v12 = type metadata accessor for DispatchWorkItemFlags();
  v40 = *(v12 - 8);
  v41 = v12;
  __chkstk_darwin(v12);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS();
  v38 = *(v15 - 8);
  v39 = v15;
  __chkstk_darwin(v15);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&a6[OBJC_IVAR___CSDUserNotificationController_providersByIdentifier] = _swiftEmptyDictionarySingleton;
  v18 = OBJC_IVAR___CSDUserNotificationController_featureFlags;
  v19 = [objc_allocWithZone(TUFeatureFlags) init];
  *&a6[v18] = v19;
  *&a6[OBJC_IVAR___CSDUserNotificationController_callFilterController] = a4;
  v20 = &a6[OBJC_IVAR___CSDUserNotificationController_faceTimeNotificationCenter];
  *v20 = a1;
  *(v20 + 1) = &off_10062F7D0;
  v21 = &a6[OBJC_IVAR___CSDUserNotificationController_phoneNotificationCenter];
  *v21 = a2;
  *(v21 + 1) = &off_10062F7D0;
  *&a6[OBJC_IVAR___CSDUserNotificationController_providers] = a3;
  *&a6[OBJC_IVAR___CSDUserNotificationController_queue] = a5;
  type metadata accessor for BadgeManager();
  v22 = a5;
  v23 = v19;
  v37 = a4;
  *&a6[OBJC_IVAR___CSDUserNotificationController_badgeManager] = BadgeManager.__allocating_init(types:defaults:deviceSupport:featureFlags:queue:)();
  if (qword_1006A0B70 != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  sub_10000AF9C(v24, qword_1006BA6D0);
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&_mh_execute_header, v25, v26, "Creating XPC endpoint for User notifications", v27, 2u);
  }

  v28 = [objc_allocWithZone(CSDClientManager) initWithSerialQueue:v22];
  *&a6[OBJC_IVAR___CSDUserNotificationController_clientManager] = v28;
  v44.receiver = a6;
  v44.super_class = ObjectType;
  v29 = objc_msgSendSuper2(&v44, "init");
  v30 = swift_allocObject();
  *(v30 + 16) = v29;
  aBlock[4] = sub_1004124B4;
  aBlock[5] = v30;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004CEC;
  aBlock[3] = &unk_10062F8D0;
  v31 = _Block_copy(aBlock);
  v32 = v29;
  static DispatchQoS.unspecified.getter();
  v42 = _swiftEmptyArrayStorage;
  sub_10000F150(&qword_1006A2CC0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_100018040(&qword_1006A2CD0, &unk_1006A2960, &unk_10057D6E0);
  v33 = v41;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v31);

  (*(v40 + 8))(v14, v33);
  (*(v38 + 8))(v17, v39);

  return v32;
}

unint64_t sub_1004124BC()
{
  result = qword_1006AB140;
  if (!qword_1006AB140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006AB140);
  }

  return result;
}

uint64_t sub_100412538()
{

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0);
}

uint64_t sub_100412584(uint64_t a1, uint64_t a2)
{
  v4 = sub_10026D814(&unk_1006A7AC0, &qword_100586F00);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1004125F4()
{
  result = qword_1006AB178;
  if (!qword_1006AB178)
  {
    sub_100006AF0(255, &unk_1006A7A00, UNNotificationCategory_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006AB178);
  }

  return result;
}

char *sub_10041266C(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, _BYTE *a9)
{
  v74 = a8;
  v75 = a7;
  v69 = a6;
  v68 = a5;
  v72 = a4;
  v73 = a3;
  ObjectType = swift_getObjectType();
  v65 = type metadata accessor for DispatchWorkItemFlags();
  v64 = *(v65 - 8);
  __chkstk_darwin(v65);
  v62 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = type metadata accessor for DispatchQoS();
  v61 = *(v63 - 8);
  __chkstk_darwin(v63);
  v60 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10026D814(&qword_1006A3C70, &unk_10057EA80);
  v14 = __chkstk_darwin(v13 - 8);
  v70 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v18 = &v60 - v17;
  __chkstk_darwin(v16);
  v67 = &v60 - v19;
  v79[3] = sub_100006AF0(0, &qword_1006AB198, VMVoicemailManager_ptr);
  v79[4] = &off_10062FBA0;
  v79[0] = a2;
  v20 = OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_contactStore;
  v21 = [objc_opt_self() sharedInstance];
  v22 = [v21 contactStore];

  *&a9[v20] = v22;
  v23 = OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_postedVoicemailIdentifiers;
  *&a9[OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_postedVoicemailIdentifiers] = &_swiftEmptySetSingleton;
  v24 = OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_pendingVoicemailIdentifiers;
  *&a9[OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_pendingVoicemailIdentifiers] = &_swiftEmptySetSingleton;
  v25 = OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_mostRecentVoicemailDate;
  v26 = type metadata accessor for Date();
  sub_10000AF74(&a9[v25], 1, 1, v26);
  v66 = OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_mostRecentNonVisualVoicemailDate;
  sub_10000AF74(&a9[OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_mostRecentNonVisualVoicemailDate], 1, 1, v26);
  v27 = OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_unsubscribedVoicemailInfoForUUID;
  type metadata accessor for UUID();
  sub_10026D814(&unk_1006AB1A0, &unk_100586F30);
  sub_10000F150(&qword_1006A3BE0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  *&a9[v27] = Dictionary.init(dictionaryLiteral:)();
  a9[OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_notificationType] = 1;
  v28 = &a9[OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_add];
  *v28 = 0;
  v28[1] = 0;
  v29 = &a9[OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_replace];
  *v29 = 0;
  v29[1] = 0;
  v30 = &a9[OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_removeNotification];
  *v30 = 0;
  v30[1] = 0;
  v31 = &a9[OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_updateBadgeValue];
  *v31 = 0;
  v31[1] = 0;
  v32 = a1;
  *&a9[OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_queue] = a1;
  sub_100009AB0(v79, &a9[OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_voicemailDataSource]);
  v33 = v73;
  *&a9[OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_featureFlags] = v73;
  v34 = v72;
  *&a9[OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_userDefaults] = v72;
  v35 = objc_allocWithZone(CoreTelephonyClient);
  v36 = v32;
  v73 = v33;
  v37 = v34;
  v38 = [v35 initWithQueue:v36];
  *&a9[OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_telephonyClient] = v38;
  swift_beginAccess();
  *&a9[v23] = v68;

  swift_beginAccess();
  *&a9[v24] = v69;

  sub_100343100(v75, v18, &qword_1006A3C70, &unk_10057EA80);
  v39 = sub_100015468(v18, 1, v26);
  v72 = v37;
  if (v39 == 1)
  {
    v40 = v67;
    sub_1002C8CEC(v67);
    if (sub_100015468(v18, 1, v26) != 1)
    {
      sub_100009A04(v18, &qword_1006A3C70, &unk_10057EA80);
    }
  }

  else
  {
    v40 = v67;
    (*(*(v26 - 8) + 32))(v67, v18, v26);
    sub_10000AF74(v40, 0, 1, v26);
  }

  swift_beginAccess();
  sub_1003B3734(v40, &a9[v25]);
  swift_endAccess();
  v41 = v66;
  swift_beginAccess();
  v42 = v74;
  sub_1004130A4(v74, &a9[v41]);
  swift_endAccess();
  v43 = &a9[OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_localizeVoicemailName];
  *v43 = sub_100415EA4;
  v43[1] = 0;
  v44 = &a9[OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_callbackVoicemail];
  *v44 = sub_100416018;
  v44[1] = 0;
  v45 = &a9[OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_openURL];
  *v45 = sub_1002CC498;
  v45[1] = 0;
  v78.receiver = a9;
  v78.super_class = ObjectType;
  v46 = objc_msgSendSuper2(&v78, "init");
  [*&v46[OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_telephonyClient] setDelegate:v46];
  v47 = OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_mostRecentVoicemailDate;
  swift_beginAccess();
  v48 = v70;
  sub_100343100(&v46[v47], v70, &qword_1006A3C70, &unk_10057EA80);
  LODWORD(v47) = sub_100015468(v48, 1, v26);
  sub_100009A04(v48, &qword_1006A3C70, &unk_10057EA80);
  if (v47 == 1)
  {
    v49 = swift_allocObject();
    *(v49 + 16) = v46;
    aBlock[4] = sub_100413114;
    aBlock[5] = v49;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100004CEC;
    aBlock[3] = &unk_10062FA38;
    v50 = _Block_copy(aBlock);
    v51 = v46;
    v52 = v60;
    static DispatchQoS.unspecified.getter();
    v76 = _swiftEmptyArrayStorage;
    sub_10000F150(&qword_1006A2CC0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
    sub_100018040(&qword_1006A2CD0, &unk_1006A2960, &unk_10057D6E0);
    v53 = v62;
    v54 = v65;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v50);
    (*(v64 + 8))(v53, v54);
    (*(v61 + 8))(v52, v63);
  }

  v55 = objc_opt_self();
  v56 = [v55 defaultCenter];
  [v56 addObserver:v46 selector:"voicemailsChangedWithNotification:" name:VMVoicemailVoicemailsChangedNotification object:0];

  v57 = [v55 defaultCenter];
  [v57 addObserver:v46 selector:"onlineStatusChangedWithNotification:" name:VMVoicemailOnlineStatusChangedNotification object:0];

  v58 = [v55 defaultCenter];
  [v58 addObserver:v46 selector:"subscriptionStateChangedWithNotification:" name:VMVoicemailSubscriptionStateStatusChangedNotification object:0];

  sub_100009A04(v42, &qword_1006A3C70, &unk_10057EA80);
  sub_100009A04(v75, &qword_1006A3C70, &unk_10057EA80);
  sub_100009B7C(v79);
  return v46;
}

uint64_t sub_1004130A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10026D814(&qword_1006A3C70, &unk_10057EA80);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

char *sub_10041311C(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, id (*a7)(), id (*a8)(), _BYTE *a9)
{
  ObjectType = swift_getObjectType();
  v15 = OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_featureFlags;
  *&a9[v15] = [objc_allocWithZone(TUFeatureFlags) init];
  *&a9[OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_pendingNotificationsForConversationsByUUID] = _swiftEmptyDictionarySingleton;
  *&a9[OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_notificationIdentifiersByConversationUUID] = _swiftEmptyDictionarySingleton;
  *&a9[OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_carPlayNotificationIdentifiersByConversationUUID] = _swiftEmptyDictionarySingleton;
  v16 = OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_faceTimeNotificationCenter;
  sub_100006AF0(0, &qword_1006A3C90, UNUserNotificationCenter_ptr);
  *&a9[v16] = sub_10040BDB0();
  v17 = &a9[OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_shouldDelayInviteNotification];
  *v17 = sub_1002CBE50;
  v17[1] = 0;
  a9[OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_facetimeIsShowingOnScreen] = 0;
  v18 = &a9[OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_openURL];
  *v18 = 0;
  v18[1] = 0;
  v19 = &a9[OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_unlockAndOpenSensitiveURL];
  *v19 = 0;
  v19[1] = 0;
  a9[OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_notificationType] = 0;
  v20 = OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_categories;
  *&a9[v20] = sub_1002CED8C();
  v21 = &a9[OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_add];
  *v21 = 0;
  v21[1] = 0;
  v22 = &a9[OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_replace];
  *v22 = 0;
  v22[1] = 0;
  v23 = &a9[OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_removeNotification];
  *v23 = 0;
  v23[1] = 0;
  v24 = &a9[OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_updateBadgeValue];
  *v24 = 0;
  v24[1] = 0;
  *&a9[OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_queue] = a1;
  v25 = objc_allocWithZone(TUContactsDataProvider);
  v59 = a1;
  v26 = [v25 initWithContactsDataSource:a2];

  *&a9[OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_contactsDataProvider] = v26;
  *&a9[OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_displayStringProvider] = v26;
  *&a9[OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_conversationManager] = a3;
  *&a9[OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_ftNetworkSupport] = a4;
  *&a9[OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_invitationResolver] = a5;
  *&a9[OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_conversationServerBag] = a6;
  if (a7)
  {
    *v17 = a7;
    v17[1] = a8;
    v27 = v26;
    v28 = a3;
    v29 = a4;
    v30 = a5;
    v31 = a6;
    sub_1000115CC(a7, a8);
  }

  else
  {
    v32 = v26;
    v33 = a3;
    v34 = a4;
    v35 = a5;
    v36 = a6;
  }

  v37 = &a9[OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_localizeConversationName];
  *v37 = sub_1002CBEE4;
  v37[1] = 0;
  v38 = &a9[OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_localizeHandleName];
  *v38 = sub_1002CBF38;
  v38[1] = 0;
  v39 = &a9[OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_localizeHandleNameWithConversation];
  *v39 = sub_1002CBFDC;
  v39[1] = 0;
  v62.receiver = a9;
  v62.super_class = ObjectType;
  v40 = objc_msgSendSuper2(&v62, "init", ObjectType);
  v41 = OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_conversationManager;
  v42 = *&v40[OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_conversationManager];
  v43 = v40;
  [v42 addDelegate:v43 queue:v59];
  [*&v40[v41] registerWithCompletionHandler:0];
  v44 = objc_opt_self();
  v45 = [v44 defaultCenter];
  [v45 addObserver:v43 selector:"momentsStartedRemoteCapture:" name:@"CSDMomentsControllerStartedRemoteCaptureNotification" object:0];

  v46 = [v44 defaultCenter];
  [v46 addObserver:v43 selector:"handlePendingMessageDidReceiveInviteNotification:" name:@"CSDGroupIDSPendingMessageDidReceiveInviteNotification" object:0];

  v47 = CFNotificationCenterGetDarwinNotifyCenter();
  v48 = String._bridgeToObjectiveC()();
  CFNotificationCenterAddObserver(v47, v43, sub_1002CC3B0, v48, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

  v49 = CFNotificationCenterGetDarwinNotifyCenter();
  v50 = String._bridgeToObjectiveC()();
  CFNotificationCenterAddObserver(v49, v43, sub_1002CC3DC, v50, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

  sub_1000051F8(a7, a8);
  v51 = &v43[OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_openURL];
  v52 = *&v43[OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_openURL];
  v53 = *&v43[OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_openURL + 8];
  *v51 = sub_1002CC498;
  v51[1] = 0;
  sub_1000051F8(v52, v53);
  v54 = &v43[OBJC_IVAR____TtC13callservicesd33GroupFaceTimeNotificationProvider_unlockAndOpenSensitiveURL];
  swift_beginAccess();
  v55 = *v54;
  v56 = v54[1];
  *v54 = sub_1002CC4E0;
  v54[1] = 0;
  sub_1000051F8(v55, v56);

  return v43;
}

void sub_100413728(unint64_t a1, unint64_t *a2)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = 0;
    v3 = 0;
    v4 = 0;
    v5 = __CocoaDictionary.makeIterator()() | 0x8000000000000000;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v3 = ~v6;
    v2 = a1 + 64;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v4 = v8 & *(a1 + 64);
    v5 = a1;
  }

  v9 = 0;
  v31 = v5;
  if ((v5 & 0x8000000000000000) != 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v10 = v9;
  v11 = v4;
  v12 = v9;
  if (v4)
  {
LABEL_12:
    v32 = (v11 - 1) & v11;
    v13 = (v12 << 9) | (8 * __clz(__rbit64(v11)));
    v14 = *(*(v5 + 56) + v13);
    v15 = *(*(v5 + 48) + v13);
    v16 = v14;
    if (!v15)
    {
LABEL_38:
      sub_100022DDC(v31);
      return;
    }

    while (1)
    {
      v17 = *a2;
      if (*a2 >> 62)
      {
        if (!_CocoaArrayWrapper.endIndex.getter())
        {
          goto LABEL_22;
        }
      }

      else if (!*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_22;
      }

      if ((v17 & 0xC000000000000001) != 0)
      {
        v29 = v15;

        v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (!*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_40;
        }

        v18 = *(v17 + 32);
        v19 = v15;
        v20 = v18;
      }

      sub_100006AF0(0, &qword_1006A2640, TUHandle_ptr);
      v21 = static NSObject.== infix(_:_:)();

      if (v21)
      {
        goto LABEL_38;
      }

LABEL_22:
      v22 = *a2;
      if (*a2 >> 62)
      {
        v23 = _CocoaArrayWrapper.endIndex.getter();
        if (v23)
        {
LABEL_24:
          v24 = v23 - 1;
          if (__OFSUB__(v23, 1))
          {
            goto LABEL_41;
          }

          if ((v22 & 0xC000000000000001) != 0)
          {
            v30 = v15;

            v27 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if ((v24 & 0x8000000000000000) != 0)
            {
              goto LABEL_42;
            }

            if (v24 >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v25 = *(v22 + 8 * v24 + 32);
            v26 = v15;
            v27 = v25;
          }

          sub_100006AF0(0, &qword_1006A2640, TUHandle_ptr);
          v28 = static NSObject.== infix(_:_:)();

          if (v28)
          {
            goto LABEL_38;
          }
        }
      }

      else
      {
        v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v23)
        {
          goto LABEL_24;
        }
      }

      v9 = v12;
      v5 = v31;
      v4 = v32;
      if ((v31 & 0x8000000000000000) == 0)
      {
        goto LABEL_8;
      }

LABEL_14:
      if (__CocoaDictionary.Iterator.next()())
      {
        sub_100006AF0(0, &qword_1006A2640, TUHandle_ptr);
        swift_dynamicCast();
        v15 = v34;
        sub_100006AF0(0, &unk_1006AB3F8, INStartCallIntent_ptr);
        swift_dynamicCast();
        v16 = v34;
        v12 = v9;
        v32 = v4;
        if (v34)
        {
          continue;
        }
      }

      goto LABEL_38;
    }
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= ((v3 + 64) >> 6))
    {
      goto LABEL_38;
    }

    v11 = *(v2 + 8 * v12);
    ++v10;
    if (v11)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
}

uint64_t sub_100413AD4(uint64_t a1)
{
  v7 = v1;
  v8 = a1;
  v9 = sub_10001E558(a1);
  v10 = sub_10000B6F4(*v1);
  v11 = __OFADD__(v10, v9);
  result = v10 + v9;
  if (v11)
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_10042043C(result, 1);
  v2 = *v1;
  v3 = *v1 & 0xFFFFFFFFFFFFFF8;
  v13 = *(v3 + 0x10);
  v14 = (*(v3 + 0x18) >> 1) - v13;
  result = sub_1002F6800(&v26, (v3 + 8 * v13 + 32), (*((*v7 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1) - v13, v8);
  if (result < v9)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (result >= 1)
  {
    v15 = *(v3 + 16);
    v11 = __OFADD__(v15, result);
    v16 = v15 + result;
    if (v11)
    {
      __break(1u);
      goto LABEL_14;
    }

    *(v3 + 16) = v16;
  }

  if (result != v14)
  {
LABEL_7:
    result = sub_100022DDC(v26);
    *v7 = v2;
    return result;
  }

LABEL_10:
  v3 = *(v3 + 16);
  v4 = v26;
  v5 = v27;
  v6 = v29;
  v24 = v28;
  v8 = v30;
  if (v26 < 0)
  {
LABEL_14:
    if (!__CocoaSet.Iterator.next()())
    {
      goto LABEL_7;
    }

    sub_100006AF0(0, &qword_1006A2640, TUHandle_ptr);
    result = swift_dynamicCast();
    v18 = v25;
    goto LABEL_22;
  }

  if (v30)
  {
    v17 = v29;
LABEL_20:
    v19 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v18 = *(*(v26 + 48) + ((v17 << 9) | (8 * v19)));
    result = v18;
  }

  else
  {
    while (1)
    {
      v17 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_44;
      }

      if (v17 >= ((v28 + 64) >> 6))
      {
        break;
      }

      v8 = *(v27 + 8 * v17);
      ++v6;
      if (v8)
      {
        v6 = v17;
        goto LABEL_20;
      }
    }

    v18 = 0;
    v8 = 0;
  }

  v29 = v6;
  v30 = v8;
LABEL_22:
  if (!v18)
  {
    goto LABEL_7;
  }

LABEL_23:
  if (v3 + 1 > *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    result = specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  v2 = *v7;
  v20 = *((*v7 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
  v23 = *v7 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if (v3 >= v20)
    {
      *(v23 + 16) = v3;
      goto LABEL_23;
    }

    *(v23 + 32 + 8 * v3++) = v18;
    if ((v4 & 0x8000000000000000) == 0)
    {
      break;
    }

    if (!__CocoaSet.Iterator.next()())
    {
      goto LABEL_41;
    }

    sub_100006AF0(0, &qword_1006A2640, TUHandle_ptr);
    result = swift_dynamicCast();
    v18 = v25;
LABEL_37:
    if (!v18)
    {
LABEL_41:
      *(v23 + 16) = v3;
      goto LABEL_7;
    }
  }

  if (v8)
  {
LABEL_33:
    v22 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v18 = *(*(v4 + 48) + ((v6 << 9) | (8 * v22)));
    result = v18;
LABEL_34:
    v26 = v4;
    v27 = v5;
    v28 = v24;
    v29 = v6;
    v30 = v8;
    goto LABEL_37;
  }

  while (1)
  {
    v21 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (v21 >= ((v24 + 64) >> 6))
    {
      v18 = 0;
      v8 = 0;
      goto LABEL_34;
    }

    v8 = *(v5 + 8 * v21);
    ++v6;
    if (v8)
    {
      v6 = v21;
      goto LABEL_33;
    }
  }

  __break(1u);
LABEL_44:
  __break(1u);
  return result;
}

uint64_t sub_100413E64(uint64_t a1)
{
  result = sub_100018370(a1);
  if (v7)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v8 = v6;
  sub_1004204DC(result, 1, v5);
  v9 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v10 = (*(v9 + 24) >> 1) - *(v9 + 16);
  result = v8(0);
  if (v10 < v1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v9;
    return result;
  }

  v11 = *(v9 + 16);
  v7 = __OFADD__(v11, v1);
  v12 = v11 + v1;
  if (!v7)
  {
    *(v9 + 16) = v12;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_100413F94(uint64_t a1, uint64_t (*a2)(void), void (*a3)(uint64_t, void, uint64_t))
{
  v7 = a2();
  v8 = (a2)(*v3);
  v9 = __OFADD__(v8, v7);
  result = v8 + v7;
  if (v9)
  {
    __break(1u);
    goto LABEL_8;
  }

  sub_10042043C(result, 1);
  v11 = *v3;
  v12 = *v3 & 0xFFFFFFFFFFFFFF8;
  a3(v12 + 8 * *(v12 + 0x10) + 32, (*(v12 + 0x18) >> 1) - *(v12 + 0x10), a1);
  v14 = v13;

  if (v14 < v7)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v14 < 1)
  {
LABEL_6:
    *v3 = v11;
    return result;
  }

  v15 = *(v12 + 16);
  v9 = __OFADD__(v15, v14);
  v16 = v15 + v14;
  if (!v9)
  {
    *(v12 + 16) = v16;
    goto LABEL_6;
  }

LABEL_9:
  __break(1u);
  return result;
}

void sub_100414080(uint64_t a1)
{
  v5 = a1;
  v6 = *(a1 + 16);
  v7 = sub_10000B6F4(*v1);
  v8 = __OFADD__(v7, v6);
  v9 = v7 + v6;
  if (v8)
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_10042043C(v9, 1);
  v3 = *v1;
  v2 = *v1 & 0xFFFFFFFFFFFFFF8;
  v10 = (*(v2 + 0x18) >> 1) - *(v2 + 0x10);
  sub_1002F6DCC();
  if (v11 < v6)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v11)
  {
    v12 = *(v2 + 16);
    v8 = __OFADD__(v12, v11);
    v13 = v12 + v11;
    if (v8)
    {
      __break(1u);
LABEL_13:
      v16 = (v2 + 64) >> 6;
      while (1)
      {
        v17 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          goto LABEL_34;
        }

        if (v17 >= v16)
        {
          goto LABEL_7;
        }

        v18 = *(v10 + 8 * v17);
        ++v6;
        if (v18)
        {
          v14 = (v18 - 1) & v18;
          v15 = __clz(__rbit64(v18)) | (v17 << 6);
          v6 = v17;
          goto LABEL_18;
        }
      }
    }

    *(v2 + 16) = v13;
  }

  v5 = v24;
  if (v11 != v10)
  {
LABEL_7:
    sub_100022DDC(v5);
    *v1 = v3;
    return;
  }

LABEL_10:
  v4 = *(v2 + 16);
  v10 = v25;
  v2 = v26;
  v6 = v27;
  if (!v28)
  {
    goto LABEL_13;
  }

  v14 = (v28 - 1) & v28;
  v15 = __clz(__rbit64(v28)) | (v27 << 6);
  v16 = (v26 + 64) >> 6;
LABEL_18:
  v19 = *(*(v5 + 56) + 8 * v15);

LABEL_19:
  if (v4 + 1 > *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  v3 = *v1;
  v22 = *v1 & 0xFFFFFFFFFFFFFF8;
  v23 = *(v22 + 0x18) >> 1;
  while (1)
  {
    if (v4 >= v23)
    {
      *(v22 + 16) = v4;
      goto LABEL_19;
    }

    *(v22 + 32 + 8 * v4++) = v19;
    if (!v14)
    {
      break;
    }

    v20 = v6;
LABEL_29:
    v21 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
    v19 = *(*(v5 + 56) + ((v20 << 9) | (8 * v21)));
  }

  while (1)
  {
    v20 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (v20 >= v16)
    {
      *(v22 + 16) = v4;
      goto LABEL_7;
    }

    v14 = *(v10 + 8 * v20);
    ++v6;
    if (v14)
    {
      v6 = v20;
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

void sub_100414368(uint64_t a1)
{
  v4 = sub_100018370(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1004204DC(v4, 1, sub_100017840);
  v6 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  sub_1000163D8();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v6;
    return;
  }

  v8 = *(v6 + 16);
  v5 = __OFADD__(v8, v1);
  v9 = v8 + v1;
  if (!v5)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_10041444C(uint64_t a1)
{
  v6 = sub_100018370(a1);
  if (v8)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_10000D76C(v6, v7);
  v9 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  sub_1000163D8();
  if (v10 != v8)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v11 = sub_10026D814(v5, v4);
  sub_10000C2B0(v11);

  if (!v1)
  {
LABEL_8:
    *v2 = v9;
    return;
  }

  v12 = *(v9 + 16);
  v8 = __OFADD__(v12, v1);
  v13 = v12 + v1;
  if (!v8)
  {
    *(v9 + 16) = v13;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_1004144F8(uint64_t a1)
{
  v6 = sub_100018370(a1);
  if (v8)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_10000D76C(v6, v7);
  v9 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  sub_1000163D8();
  if (v10 != v8)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v11 = sub_10026D814(v5, v4);
  sub_10000C2B0(v11);

  if (!v1)
  {
LABEL_8:
    *v2 = v9;
    return;
  }

  v12 = *(v9 + 16);
  v8 = __OFADD__(v12, v1);
  v13 = v12 + v1;
  if (!v8)
  {
    *(v9 + 16) = v13;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

uint64_t sub_1004145A8(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = *(result + 16);
    for (i = result + 40; v2; --v2)
    {

      sub_100428F00();

      i += 16;
    }
  }

  return result;
}

uint64_t sub_100414624(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = *(result + 16);
    if (v2)
    {
      v3 = (result + 32);
      do
      {
        v4 = *v3++;
        result = sub_100429564(v4);
        --v2;
      }

      while (v2);
    }
  }

  return result;
}

void sub_1004146EC()
{
  sub_100005EF4();
  v1 = sub_10039BD94(v0, &selRef_callbackDestinationID);
  if (v2 || (v1 = sub_10039BD94(v0, &selRef_senderDestinationID), v3))
  {
    v4 = v1;
    v5 = [objc_allocWithZone(TUCallProviderManager) init];
    v6 = [v5 telephonyProvider];
    v7 = [objc_allocWithZone(TUDialRequest) initWithProvider:v6];

    sub_100006AF0(0, &qword_1006A2640, TUHandle_ptr);
    v8 = sub_100389560(2, v4);
    [v7 setHandle:v8];
    [v7 setOriginatingUIType:41];
    v9 = [objc_allocWithZone(TUContactsDataProvider) init];
    v10 = [objc_allocWithZone(TUContactsDataProviderFetchRequest) initWithHandle:v8];
    v11 = [v9 executeFetchRequest:v10];
    v12 = [v11 contacts];
    sub_100006AF0(0, &unk_1006AB420, CNContact_ptr);
    v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (sub_10000B6F4(v13))
    {
      sub_10039C390(0, (v13 & 0xC000000000000001) == 0, v13);
      if ((v13 & 0xC000000000000001) != 0)
      {
        v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v14 = *(v13 + 32);
      }

      v15 = v14;

      v16 = [v15 identifier];

      if (v16)
      {
        goto LABEL_10;
      }

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v16 = String._bridgeToObjectiveC()();
    }

    else
    {
      v16 = 0;
    }

LABEL_10:
    [v7 setContactIdentifier:v16];
  }

  sub_100005EDC();
}

uint64_t sub_100414964()
{
  v1 = [v0 transcript];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  if ([v1 confidenceRating] < 2)
  {

    return 0;
  }

  v3 = [v2 transcriptionString];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v4;
}

void sub_100414B74(SEL *a1, void (*a2)(void))
{
  v4 = [v2 *a1];
  a2();
}

uint64_t sub_100414C78@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10026D814(&qword_1006A3C70, &unk_10057EA80);
  v3 = sub_100007BF0(v2);
  __chkstk_darwin(v3);
  v5 = &v15[-1] - v4;
  v6 = sub_100414E34(1);
  sub_1002E9780(v6, v15);

  v7 = v16;
  if (v16)
  {
    v8 = v17;
    v6 = sub_100009B14(v15, v16);
    (*(v8 + 32))(v7, v8);
    type metadata accessor for Date();
    sub_10000667C();
    sub_100007C20();
    sub_10000AF74(v9, v10, v11, v6);
    sub_100009B7C(v15);
    if (sub_100015468(v5, 1, v6) != 1)
    {
      return (*(*(v6 - 1) + 32))(a1, v5, v6);
    }
  }

  else
  {
    sub_100009A04(v15, &qword_1006AB398, &qword_1005870C0);
    type metadata accessor for Date();
    v13 = sub_10000667C();
    sub_10000AF74(v13, 1, 1, v6);
  }

  Date.init()();
  type metadata accessor for Date();
  result = sub_100015468(v5, 1, v6);
  if (result != 1)
  {
    return sub_100009A04(v5, &qword_1006A3C70, &unk_10057EA80);
  }

  return result;
}

void *sub_100414E34(uint64_t a1)
{
  v16 = 0;
  v2 = [v1 messagesForMailboxType:1 limit:a1 offset:0 error:&v16];
  v3 = v16;
  if (v2)
  {
    v4 = v2;
    sub_100006AF0(0, &qword_1006A4848, VMVoicemail_ptr);
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v3;

    sub_1002F4104();
    v7 = v6;
  }

  else
  {
    v8 = v16;
    sub_10000667C();
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_1006A0B70 != -1)
    {
      sub_10000860C(&qword_1006A0B70);
    }

    v9 = type metadata accessor for Logger();
    sub_10000AF9C(v9, qword_1006BA6D0);
    sub_10000667C();
    swift_errorRetain();
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = sub_100005274();
      v13 = sub_10000777C();
      *v12 = 138412290;
      swift_errorRetain();
      v14 = _swift_stdlib_bridgeErrorToNSError();
      *(v12 + 4) = v14;
      *v13 = v14;
      _os_log_impl(&_mh_execute_header, v10, v11, "Retrieving voicemail messages failed with error %@", v12, 0xCu);
      sub_100009A04(v13, &unk_1006A2630, &qword_10057CB40);
      sub_100005F40(v13);
      sub_100005F40(v12);
    }

    return _swiftEmptyArrayStorage;
  }

  return v7;
}

uint64_t sub_10041502C(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  sub_100009B14(a1, v2);
  v4 = [v1 dataForVoicemailWithIdentifier:{(*(v3 + 40))(v2, v3)}];
  if (v4)
  {
    v5 = v4;
    static Data._unconditionallyBridgeFromObjectiveC(_:)();
  }

  return sub_100006B30();
}

void sub_1004150C4()
{
  sub_100005EF4();
  v2 = v1;
  *&v35[0] = 0;
  v3 = [v0 messagesForMailboxType:1 read:0 limit:-1 offset:0 error:v35];
  v4 = *&v35[0];
  if (v3)
  {
    v5 = v3;
    sub_100006AF0(0, &qword_1006A4848, VMVoicemail_ptr);
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v4;

    sub_1002F4104();
    v8 = v7;
  }

  else
  {
    v9 = *&v35[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_1006A0B70 != -1)
    {
LABEL_20:
      sub_10000860C(&qword_1006A0B70);
    }

    v10 = type metadata accessor for Logger();
    sub_10000AF9C(v10, qword_1006BA6D0);
    swift_errorRetain();
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = sub_100005274();
      v14 = sub_10000777C();
      *v13 = 138412290;
      swift_errorRetain();
      v15 = _swift_stdlib_bridgeErrorToNSError();
      *(v13 + 4) = v15;
      *v14 = v15;
      _os_log_impl(&_mh_execute_header, v11, v12, "Retrieving inbox voicemail messages failed with error %@", v13, 0xCu);
      sub_100009A04(v14, &unk_1006A2630, &qword_10057CB40);
      sub_100005F40(v14);
      sub_100005F40(v13);
    }

    v8 = _swiftEmptyArrayStorage;
  }

  v16 = 0;
  v17 = v8[2];
  v18 = (v8 + 4);
  v19 = _swiftEmptyArrayStorage;
  v30 = v2;
  while (v17 != v16)
  {
    if (v16 >= v8[2])
    {
      __break(1u);
      goto LABEL_20;
    }

    sub_100009AB0(v18, v35);
    if (v2(v35))
    {
      sub_10002F0C8(v35, v32);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v31 = v19;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_10039A460(0, v19[2] + 1, 1);
        v19 = v31;
      }

      v22 = v19[2];
      v21 = v19[3];
      if (v22 >= v21 >> 1)
      {
        sub_10039A460(v21 > 1, v22 + 1, 1);
      }

      v23 = v33;
      v24 = v34;
      v25 = sub_10001BDB8(v32, v33);
      __chkstk_darwin(v25);
      sub_100007FDC();
      v28 = v27 - v26;
      (*(v29 + 16))(v27 - v26);
      sub_1002F705C(v22, v28, &v31, v23, v24);
      sub_100009B7C(v32);
      v2 = v30;
      v19 = v31;
    }

    else
    {
      sub_100009B7C(v35);
    }

    v18 += 40;
    ++v16;
  }

  sub_100005EDC();
}

double sub_10041546C@<D0>(uint64_t a1@<X8>, uint64_t a2@<X0>)
{
  v5 = 0;
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  while (v5 != 24)
  {
    v7 = sub_100415538(*(&off_100620D00 + v5 + 32), v2, a2);
    if (v7[2])
    {
      sub_1002E9780(v7, v9);

      sub_100009A04(a1, &qword_1006AB398, &qword_1005870C0);
      result = *v9;
      v8 = v9[1];
      *a1 = v9[0];
      *(a1 + 16) = v8;
      *(a1 + 32) = v10;
      return result;
    }

    v5 += 8;
  }

  return result;
}

void *sub_100415538(uint64_t a1, id a2, uint64_t a3)
{
  *&v38 = 0;
  v4 = [a2 messagesForMailboxType:a1 limit:-1 offset:0 error:&v38];
  v5 = v38;
  if (v4)
  {
    v6 = v4;
    sub_100006AF0(0, &qword_1006A4848, VMVoicemail_ptr);
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v5;

    sub_1002F4104();
    v9 = v8;

    v33 = 0;
  }

  else
  {
    v10 = v38;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_1006A0B70 != -1)
    {
LABEL_20:
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_10000AF9C(v11, qword_1006BA6D0);
    swift_errorRetain();
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138412290;
      swift_errorRetain();
      v16 = _swift_stdlib_bridgeErrorToNSError();
      *(v14 + 4) = v16;
      *v15 = v16;
      _os_log_impl(&_mh_execute_header, v12, v13, "Retrieving voicemail messages failed with error %@", v14, 0xCu);
      sub_100009A04(v15, &unk_1006A2630, &qword_10057CB40);
    }

    v33 = 0;
    v9 = _swiftEmptyArrayStorage;
  }

  v17 = 0;
  v18 = v9[2];
  v19 = (v9 + 4);
  v20 = _swiftEmptyArrayStorage;
  while (v18 != v17)
  {
    if (v17 >= v9[2])
    {
      __break(1u);
      goto LABEL_20;
    }

    sub_100009AB0(v19, &v38);
    v21 = v39;
    v22 = v40;
    sub_100009B14(&v38, v39);
    if ((*(v22 + 40))(v21, v22) == a3)
    {
      sub_10002F0C8(&v38, v35);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v34 = v20;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_10039A460(0, v20[2] + 1, 1);
        v20 = v34;
      }

      v25 = v20[2];
      v24 = v20[3];
      if (v25 >= v24 >> 1)
      {
        sub_10039A460(v24 > 1, v25 + 1, 1);
      }

      v26 = v36;
      v27 = v37;
      v28 = sub_10001BDB8(v35, v36);
      __chkstk_darwin(v28);
      v30 = &v33 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v31 + 16))(v30);
      sub_1002F705C(v25, v30, &v34, v26, v27);
      sub_100009B7C(v35);
      v20 = v34;
    }

    else
    {
      sub_100009B7C(&v38);
    }

    v19 += 40;
    ++v17;
  }

  return v20;
}

void sub_10041593C()
{
  v3[4] = sub_1004159F8;
  v3[5] = 0;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 1107296256;
  v3[2] = sub_100415A48;
  v3[3] = &unk_10062FFE8;
  v1 = _Block_copy(v3);
  v2 = [v0 countOfVoicemailsPassingTest:v1];
  _Block_release(v1);
  if ((v2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }
}

uint64_t sub_1004159F8(void *a1)
{
  if ([a1 mailboxType] == 1)
  {
    return [a1 isRead] ^ 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100415A48(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  LOBYTE(v3) = v3();

  return v3 & 1;
}

void sub_100415AA0(uint64_t a1)
{
  sub_100009AB0(a1, v4);
  sub_10026D814(&qword_1006A7AB0, &unk_1005870F0);
  sub_100006AF0(0, &qword_1006A4848, VMVoicemail_ptr);
  if (swift_dynamicCast())
  {
    v2 = [v1 trashVoicemail:v3];
  }
}

uint64_t sub_100415CB4@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for BadgeCountCategory.legacyVoicemails(_:);
  v3 = type metadata accessor for BadgeCountCategory();
  sub_100008070();
  (*(v4 + 104))(a1, v2, v3);
  sub_100007C20();

  return sub_10000AF74(v5, v6, v7, v3);
}

uint64_t sub_100415D3C()
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  qword_1006AB270 = result;
  *algn_1006AB278 = v1;
  return result;
}

uint64_t sub_100415D6C()
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  qword_1006AB280 = result;
  *algn_1006AB288 = v1;
  return result;
}

uint64_t sub_100415D9C()
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  qword_1006AB290 = result;
  *algn_1006AB298 = v1;
  return result;
}

uint64_t sub_100415DCC(Swift::String string)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  _findStringSwitchCase(cases:string:)(&off_100620D38, v3);
  sub_10000667C();

  if (v1 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (v1)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

void sub_100415E1C()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = [v0 contactStore];

  v2 = [objc_allocWithZone(TUContactsDataProvider) initWithContactsDataSource:v1];
  qword_1006AB2A0 = v2;
}

id sub_100415EA4(void *a1)
{
  v1 = a1[4];
  sub_100009B14(a1, a1[3]);
  v2 = sub_10000667C();
  v3(v2, v1);
  if (v4)
  {
    sub_100006AF0(0, &qword_1006A2640, TUHandle_ptr);
    sub_100006B30();
    v5 = sub_1002FC028();
    v6 = [objc_allocWithZone(TUContactsDataProviderFetchRequest) initWithHandle:v5];
    if (qword_1006A0BF8 != -1)
    {
      swift_once();
    }

    v7 = [qword_1006AB2A0 executeFetchRequest:v6];
    v8 = [v7 localizedName];
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    return v9;
  }

  else
  {

    return sub_10031E958(0x4E574F4E4B4E55, 0xE700000000000000);
  }
}

uint64_t sub_100416018(void *a1)
{
  v2 = sub_10026D814(&unk_1006A52C0, &unk_10057D930);
  v3 = sub_100007BF0(v2);
  __chkstk_darwin(v3);
  sub_100007BAC();
  v6 = v4 - v5;
  __chkstk_darwin(v7);
  v9 = &v29 - v8;
  v10 = type metadata accessor for URL();
  sub_100007FEC();
  v12 = v11;
  __chkstk_darwin(v13);
  sub_100007FDC();
  v16 = v15 - v14;
  v17 = a1[3];
  v18 = a1[4];
  sub_100009B14(a1, v17);
  v19 = (*(v18 + 88))(v17, v18);
  if (!v19)
  {
    sub_10000C87C(v9);
    return sub_100009A04(v9, &unk_1006A52C0, &unk_10057D930);
  }

  v20 = v19;
  v21 = [v19 URL];

  if (v21)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v22 = 0;
  }

  else
  {
    v22 = 1;
  }

  sub_10000AF74(v6, v22, 1, v10);
  sub_100421108(v6, v9, &unk_1006A52C0, &unk_10057D930);
  if (sub_100015468(v9, 1, v10) == 1)
  {
    return sub_100009A04(v9, &unk_1006A52C0, &unk_10057D930);
  }

  (*(v12 + 32))(v16, v9, v10);
  URL._bridgeToObjectiveC()(v24);
  v26 = v25;
  TUOpenURL();

  v27 = sub_100007764();
  return v28(v27);
}

void sub_100416268()
{
  sub_100005EF4();
  v2 = v0;
  v3 = sub_10026D814(&qword_1006A3C70, &unk_10057EA80);
  v4 = sub_100007BF0(v3);
  __chkstk_darwin(v4);
  sub_10000C4C4();
  v5 = type metadata accessor for Date();
  sub_100007FEC();
  v7 = v6;
  __chkstk_darwin(v8);
  sub_100007FDC();
  v11 = v10 - v9;
  v12 = type metadata accessor for DispatchPredicate();
  sub_100007FEC();
  v14 = v13;
  __chkstk_darwin(v15);
  sub_100007FDC();
  v18 = v17 - v16;
  v19 = *&v2[OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_queue];
  *(v17 - v16) = v19;
  (*(v14 + 104))(v17 - v16, enum case for DispatchPredicate.onQueue(_:), v12);
  v20 = v19;
  LOBYTE(v19) = _dispatchPreconditionTest(_:)();
  v22 = *(v14 + 8);
  v21 = v14 + 8;
  v22(v18, v12);
  if (v19)
  {
    v23 = *&v2[OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_voicemailDataSource + 24];
    v24 = *&v2[OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_voicemailDataSource + 32];
    sub_100009B14(&v2[OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_voicemailDataSource], v23);
    (*(v24 + 40))(v23, v24);
    v25 = *&v2[OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_userDefaults];
    isa = Date._bridgeToObjectiveC()().super.isa;
    v27 = String._bridgeToObjectiveC()();
    [v25 setObject:isa forKey:v27];

    (*(v7 + 16))(v1, v11, v5);
    sub_100007C20();
    sub_10000AF74(v28, v29, v30, v5);
    v21 = OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_mostRecentVoicemailDate;
    swift_beginAccess();
    sub_1003B3734(v1, &v2[v21]);
    swift_endAccess();
    if (qword_1006A0B70 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  sub_10000860C(&qword_1006A0B70);
LABEL_3:
  v31 = type metadata accessor for Logger();
  sub_10000AF9C(v31, qword_1006BA6D0);
  v32 = v2;
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v42 = v7;
    v36 = sub_10000777C();
    v43 = swift_slowAlloc();
    *v35 = 136315394;
    sub_100270E18(&v2[v21], v1);
    sub_100291548(v1);
    sub_100009A04(v1, &qword_1006A3C70, &unk_10057EA80);
    v37 = sub_100007764();
    v40 = sub_10002741C(v37, v38, v39);

    *(v35 + 4) = v40;
    *(v35 + 12) = 2112;
    *(v35 + 14) = v32;
    *v36 = v32;
    v41 = v32;
    _os_log_impl(&_mh_execute_header, v33, v34, "Most recent voicemail date is now %s for notification provider %@", v35, 0x16u);
    sub_100009A04(v36, &unk_1006A2630, &qword_10057CB40);
    sub_100005F40(v36);
    sub_100009B7C(v43);
    sub_100005F40(v43);
    sub_100005F40(v35);

    (*(v42 + 8))(v11, v5);
  }

  else
  {

    (*(v7 + 8))(v11, v5);
  }

  sub_100005EDC();
}

void sub_1004166A8()
{
  v1 = OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_contactStore;
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 contactStore];

  *(v0 + v1) = v3;
  *(v0 + OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_postedVoicemailIdentifiers) = &_swiftEmptySetSingleton;
  *(v0 + OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_pendingVoicemailIdentifiers) = &_swiftEmptySetSingleton;
  v4 = OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_mostRecentVoicemailDate;
  type metadata accessor for Date();
  sub_10000C87C(v0 + v4);
  sub_10000C87C(v0 + OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_mostRecentNonVisualVoicemailDate);
  v5 = OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_unsubscribedVoicemailInfoForUUID;
  type metadata accessor for UUID();
  sub_10026D814(&unk_1006AB1A0, &unk_100586F30);
  sub_10000F198(&qword_1006A3BE0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  *(v0 + v5) = Dictionary.init(dictionaryLiteral:)();
  *(v0 + OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_notificationType) = 1;
  v6 = (v0 + OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_add);
  *v6 = 0;
  v6[1] = 0;
  v7 = (v0 + OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_replace);
  *v7 = 0;
  v7[1] = 0;
  v8 = (v0 + OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_removeNotification);
  *v8 = 0;
  v8[1] = 0;
  v9 = (v0 + OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_updateBadgeValue);
  *v9 = 0;
  v9[1] = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_10041687C()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = (&v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *&v0[OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_queue];
  *v4 = v5;
  (*(v2 + 104))(v4, enum case for DispatchPredicate.onQueue(_:), v1);
  v6 = v5;
  LOBYTE(v5) = _dispatchPreconditionTest(_:)();
  (*(v2 + 8))(v4, v1);
  if (v5)
  {
    if (qword_1006A0B70 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
LABEL_18:
    __break(1u);
  }

  swift_once();
LABEL_3:
  v7 = type metadata accessor for Logger();
  sub_10000AF9C(v7, qword_1006BA6D0);
  v8 = v0;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v35[0] = v12;
    *v11 = 136315138;
    swift_beginAccess();

    v13 = Set.description.getter();
    v15 = v14;

    v16 = sub_10002741C(v13, v15, v35);

    *(v11 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v9, v10, "Removing all voicemail notifications. Current notification identifiers: %s", v11, 0xCu);
    sub_100009B7C(v12);
  }

  v0 = OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_postedVoicemailIdentifiers;
  swift_beginAccess();
  v33 = v0;
  v34 = v8;
  v17 = *&v0[v8];
  v18 = 1 << *(v17 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & *(v17 + 56);
  v21 = &v8[OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_removeNotification];
  v22 = (v18 + 63) >> 6;

  v23 = 0;
  while (v20)
  {
    v24 = v20;
LABEL_14:
    v20 = (v24 - 1) & v24;
    v26 = *v21;
    if (*v21)
    {
      v27 = (*(v17 + 48) + ((v23 << 10) | (16 * __clz(__rbit64(v24)))));
      v28 = *v27;
      v29 = v27[1];
      v30 = *(v21 + 1);

      sub_1000115CC(v26, v30);
      v31 = v28;
      v0 = v30;
      v26(v31, v29);
      sub_1000051F8(v26, v30);
    }
  }

  while (1)
  {
    v25 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      __break(1u);
      goto LABEL_18;
    }

    if (v25 >= v22)
    {
      break;
    }

    v24 = *(v17 + 56 + 8 * v25);
    ++v23;
    if (v24)
    {
      v23 = v25;
      goto LABEL_14;
    }
  }

  *&v33[v34] = &_swiftEmptySetSingleton;
}

uint64_t sub_100416C2C(void *a1)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (&v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v1 + OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_queue);
  *v6 = v7;
  (*(v4 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v3);
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  result = (*(v4 + 8))(v6, v3);
  if (v7)
  {
    v10 = *(v1 + OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_voicemailDataSource + 24);
    v11 = *(v1 + OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_voicemailDataSource + 32);
    sub_100009B14((v1 + OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_voicemailDataSource), v10);
    if ((*(v11 + 32))(v10, v11))
    {
      v12 = a1[3];
      v13 = a1[4];
      sub_100009B14(a1, v12);
      v14 = (*(v13 + 72))(v12, v13);
    }

    else
    {
      v14 = 0;
    }

    return v14 & 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100416DB8(void *a1)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (&v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v1 + OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_queue);
  *v6 = v7;
  (*(v4 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v3);
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  result = (*(v4 + 8))(v6, v3);
  if (v7)
  {
    v10 = *(v1 + OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_voicemailDataSource + 24);
    v11 = *(v1 + OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_voicemailDataSource + 32);
    sub_100009B14((v1 + OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_voicemailDataSource), v10);
    if ((*(v11 + 32))(v10, v11))
    {
      v12 = a1[3];
      v13 = a1[4];
      sub_100009B14(a1, v12);
      v14 = (*(v13 + 80))(v12, v13);
    }

    else
    {
      v14 = 0;
    }

    return v14 & 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100416F44(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *&v2[OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_queue];
  *v7 = v8;
  (*(v5 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v4);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v7, v4);
  if ((v8 & 1) == 0)
  {
    __break(1u);
LABEL_25:
    swift_once();
    goto LABEL_4;
  }

  v7 = &v2[OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_voicemailDataSource];
  v10 = *&v2[OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_voicemailDataSource + 24];
  v11 = *&v2[OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_voicemailDataSource + 32];
  sub_100009B14(&v2[OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_voicemailDataSource], v10);
  if (((*(v11 + 24))(v10, v11) & 1) == 0)
  {
    if (qword_1006A0B70 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_10000AF9C(v16, qword_1006BA6D0);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "Voicemail is not subscribed", v19, 2u);
    }

    goto LABEL_21;
  }

  if (qword_1006A0B70 != -1)
  {
    goto LABEL_25;
  }

LABEL_4:
  v12 = type metadata accessor for Logger();
  sub_10000AF9C(v12, qword_1006BA6D0);

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 134217984;
    *(v15 + 4) = *(a1 + 16);

    _os_log_impl(&_mh_execute_header, v13, v14, "Asked to post %ld voicemails", v15, 0xCu);
  }

  else
  {
  }

  v20 = *(a1 + 16);
  if (v20)
  {
    if (v20 == 1)
    {
      sub_1002E9780(a1, &v31);
      if (v32)
      {
        sub_10002F0C8(&v31, v33);
        v21 = v2;
        sub_10041757C(v33, 1, v21, v21);
        sub_100009B7C(v33);
      }

      else
      {
        sub_100009A04(&v31, &qword_1006AB398, &qword_1005870C0);
      }

      return;
    }

    v22 = (a1 + 32);
    do
    {
      v23 = v2;
      sub_100417FAC(v22, 0, v23, v23);
      v22 += 5;
      --v20;
    }

    while (v20);
    v24 = *(v7 + 3);
    v25 = *(v7 + 4);
    sub_100009B14(v7, v24);
    v26 = (*(v25 + 88))(v24, v25);
    if (v26 >= 1)
    {
      v27 = v26;
      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        *v30 = 134217984;
        *(v30 + 4) = v27;
        _os_log_impl(&_mh_execute_header, v28, v29, "Adding notification with count: %ld", v30, 0xCu);
      }

      v17 = sub_100418C14(v27, 0);
      sub_100418F74(v17);
LABEL_21:
    }
  }
}

void sub_1004173A4(void *a1, void *a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(v3 + OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_queue);
  *v9 = v10;
  (*(v7 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v6);
  v11 = v10;
  LOBYTE(v10) = _dispatchPreconditionTest(_:)();
  (*(v7 + 8))(v9, v6);
  if (v10)
  {
    sub_100006AF0(0, &qword_1006A7AE0, UNNotificationRequest_ptr);
    v12 = a1[3];
    v13 = a1[4];
    sub_100009B14(a1, v12);
    v17[1] = (*(v13 + 40))(v12, v13);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = sub_10044F628(v14, v15, a2, 0);
    [v16 setDestinations:15];
    sub_100418F74(v16);
  }

  else
  {
    __break(1u);
  }
}

void sub_10041757C(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v8 = swift_allocObject();
  *(v8 + 16) = a4;
  v9 = a4;
  v10 = sub_100419534(a1, v6);
  v11 = [objc_allocWithZone(TUIntentController) initWithContactProvider:*(a3 + OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_contactStore)];
  sub_100009AB0(a1, aBlock);
  sub_10026D814(&qword_1006A7AB0, &unk_1005870F0);
  sub_100006AF0(0, &qword_1006A4848, VMVoicemail_ptr);
  if (swift_dynamicCast())
  {
    v12 = v72[0];
    v67 = _swiftEmptyArrayStorage;
    if ([v72[0] csd_callbackHandle])
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v67 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v67 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

    if ([v12 csd_senderHandle])
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v67 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v67 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

    sub_100006AF0(0, &qword_1006A2640, TUHandle_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;
    v14 = [v11 voicemailStartCallIntentByHandleForHandles:isa];

    sub_100006AF0(0, &unk_1006AB3F8, INStartCallIntent_ptr);
    sub_1002E932C();
    v15 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    sub_100413728(v15, &v67);
    v17 = v16;
    v65 = v18;

    if (v17)
    {
      v63 = v9;
      v64 = v11;

      if (qword_1006A0B70 != -1)
      {
        swift_once();
      }

      v19 = type metadata accessor for Logger();
      sub_10000AF9C(v19, qword_1006BA6D0);
      v20 = v12;
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 134217984;
        *(v23 + 4) = [v20 identifier];

        _os_log_impl(&_mh_execute_header, v21, v22, "Retrieved intent; updating notification content for voicemail message with identifier %lu", v23, 0xCu);
      }

      else
      {

        v21 = v20;
      }

      v47 = v65;

      if ([*(a3 + OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_featureFlags) vmCatchUpDonationEnabled])
      {
        sub_100006AF0(0, &qword_1006AB408, INInteraction_ptr);
        v48 = v65;
        v49 = sub_10041B138(v48, 0);
        [v49 setDirection:2];
        sub_100009AB0(a1, v72);
        v50 = swift_allocObject();
        v50[2] = v10;
        v50[3] = v48;
        v50[4] = sub_100421164;
        v50[5] = v8;
        sub_10002F0C8(v72, (v50 + 6));
        v50[11] = v20;
        v70 = sub_1004211A4;
        v71 = v50;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1004582CC;
        v69 = &unk_10062FE80;
        v51 = _Block_copy(aBlock);
        v52 = v20;
        v53 = v48;
        v54 = v10;

        [v49 donateInteractionWithCompletion:v51];

        _Block_release(v51);

        return;
      }

      aBlock[0] = 0;
      v55 = [v10 contentByUpdatingWithProvider:v65 error:aBlock];
      if (v55)
      {
        v56 = v55;
        v57 = aBlock[0];
        sub_1004189DC();
      }

      else
      {
        v58 = aBlock[0];
        _convertNSErrorToError(_:)();

        swift_willThrow();
        v59 = v20;
        v60 = Logger.logObject.getter();
        v61 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v60, v61))
        {
          v62 = swift_slowAlloc();
          *v62 = 134217984;
          *(v62 + 4) = [v59 identifier];

          _os_log_impl(&_mh_execute_header, v60, v61, "Could not update notification content; using original notification content for voicemail message with identifier %lu", v62, 0xCu);
          v47 = v65;
        }

        else
        {

          v60 = v59;
        }

        sub_1004189DC();
      }
    }

    else
    {
      v66 = v12;
      if (qword_1006A0B70 != -1)
      {
        swift_once();
      }

      v37 = type metadata accessor for Logger();
      sub_10000AF9C(v37, qword_1006BA6D0);
      sub_100009AB0(a1, aBlock);
      v38 = Logger.logObject.getter();
      v39 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        *v40 = 134217984;
        v41 = v9;
        v43 = v69;
        v42 = v70;
        sub_100009B14(aBlock, v69);
        v44 = *(v42 + 5);
        v45 = v42;
        v9 = v41;
        v46 = v44(v43, v45);
        sub_100009B7C(aBlock);
        *(v40 + 4) = v46;
        _os_log_impl(&_mh_execute_header, v38, v39, "Cound not retrieve intent; using original notification content for voicemail message with identifier %lu", v40, 0xCu);
      }

      else
      {
        sub_100009B7C(aBlock);
      }

      sub_1004189DC();
    }
  }

  else
  {
    if (qword_1006A0B70 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_10000AF9C(v24, qword_1006BA6D0);
    sub_100009AB0(a1, aBlock);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 134217984;
      v28 = v9;
      v29 = v11;
      v30 = v10;
      v31 = v69;
      v32 = v70;
      sub_100009B14(aBlock, v69);
      v33 = *(v32 + 5);
      v34 = v31;
      v9 = v28;
      v35 = v32;
      v10 = v30;
      v11 = v29;
      v36 = v33(v34, v35);
      sub_100009B7C(aBlock);
      *(v27 + 4) = v36;
      _os_log_impl(&_mh_execute_header, v25, v26, "Cound not retrieve voicemail message; using original notification content for voicemail message with identifier %lu", v27, 0xCu);
    }

    else
    {
      sub_100009B7C(aBlock);
    }

    sub_1004189DC();
  }
}

void sub_100417FAC(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v8 = swift_allocObject();
  *(v8 + 16) = a4;
  v9 = a4;
  v10 = sub_100419534(a1, v6);
  v11 = [objc_allocWithZone(TUIntentController) initWithContactProvider:*(a3 + OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_contactStore)];
  sub_100009AB0(a1, aBlock);
  sub_10026D814(&qword_1006A7AB0, &unk_1005870F0);
  sub_100006AF0(0, &qword_1006A4848, VMVoicemail_ptr);
  if (swift_dynamicCast())
  {
    v12 = v72[0];
    v67 = _swiftEmptyArrayStorage;
    if ([v72[0] csd_callbackHandle])
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v67 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v67 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

    if ([v12 csd_senderHandle])
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v67 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v67 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

    sub_100006AF0(0, &qword_1006A2640, TUHandle_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;
    v14 = [v11 voicemailStartCallIntentByHandleForHandles:isa];

    sub_100006AF0(0, &unk_1006AB3F8, INStartCallIntent_ptr);
    sub_1002E932C();
    v15 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    sub_100413728(v15, &v67);
    v17 = v16;
    v65 = v18;

    if (v17)
    {
      v63 = v9;
      v64 = v11;

      if (qword_1006A0B70 != -1)
      {
        swift_once();
      }

      v19 = type metadata accessor for Logger();
      sub_10000AF9C(v19, qword_1006BA6D0);
      v20 = v12;
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 134217984;
        *(v23 + 4) = [v20 identifier];

        _os_log_impl(&_mh_execute_header, v21, v22, "Retrieved intent; updating notification content for voicemail message with identifier %lu", v23, 0xCu);
      }

      else
      {

        v21 = v20;
      }

      v47 = v65;

      if ([*(a3 + OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_featureFlags) vmCatchUpDonationEnabled])
      {
        sub_100006AF0(0, &qword_1006AB408, INInteraction_ptr);
        v48 = v65;
        v49 = sub_10041B138(v48, 0);
        [v49 setDirection:2];
        sub_100009AB0(a1, v72);
        v50 = swift_allocObject();
        v50[2] = v10;
        v50[3] = v48;
        v50[4] = sub_1004211A8;
        v50[5] = v8;
        sub_10002F0C8(v72, (v50 + 6));
        v50[11] = v20;
        v70 = sub_100421370;
        v71 = v50;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1004582CC;
        v69 = &unk_10062FF48;
        v51 = _Block_copy(aBlock);
        v52 = v20;
        v53 = v48;
        v54 = v10;

        [v49 donateInteractionWithCompletion:v51];

        _Block_release(v51);

        return;
      }

      aBlock[0] = 0;
      v55 = [v10 contentByUpdatingWithProvider:v65 error:aBlock];
      if (v55)
      {
        v56 = v55;
        v57 = aBlock[0];
        sub_1004189DC();
      }

      else
      {
        v58 = aBlock[0];
        _convertNSErrorToError(_:)();

        swift_willThrow();
        v59 = v20;
        v60 = Logger.logObject.getter();
        v61 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v60, v61))
        {
          v62 = swift_slowAlloc();
          *v62 = 134217984;
          *(v62 + 4) = [v59 identifier];

          _os_log_impl(&_mh_execute_header, v60, v61, "Could not update notification content; using original notification content for voicemail message with identifier %lu", v62, 0xCu);
          v47 = v65;
        }

        else
        {

          v60 = v59;
        }

        sub_1004189DC();
      }
    }

    else
    {
      v66 = v12;
      if (qword_1006A0B70 != -1)
      {
        swift_once();
      }

      v37 = type metadata accessor for Logger();
      sub_10000AF9C(v37, qword_1006BA6D0);
      sub_100009AB0(a1, aBlock);
      v38 = Logger.logObject.getter();
      v39 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        *v40 = 134217984;
        v41 = v9;
        v43 = v69;
        v42 = v70;
        sub_100009B14(aBlock, v69);
        v44 = *(v42 + 5);
        v45 = v42;
        v9 = v41;
        v46 = v44(v43, v45);
        sub_100009B7C(aBlock);
        *(v40 + 4) = v46;
        _os_log_impl(&_mh_execute_header, v38, v39, "Cound not retrieve intent; using original notification content for voicemail message with identifier %lu", v40, 0xCu);
      }

      else
      {
        sub_100009B7C(aBlock);
      }

      sub_1004189DC();
    }
  }

  else
  {
    if (qword_1006A0B70 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_10000AF9C(v24, qword_1006BA6D0);
    sub_100009AB0(a1, aBlock);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 134217984;
      v28 = v9;
      v29 = v11;
      v30 = v10;
      v31 = v69;
      v32 = v70;
      sub_100009B14(aBlock, v69);
      v33 = *(v32 + 5);
      v34 = v31;
      v9 = v28;
      v35 = v32;
      v10 = v30;
      v11 = v29;
      v36 = v33(v34, v35);
      sub_100009B7C(aBlock);
      *(v27 + 4) = v36;
      _os_log_impl(&_mh_execute_header, v25, v26, "Cound not retrieve voicemail message; using original notification content for voicemail message with identifier %lu", v27, 0xCu);
    }

    else
    {
      sub_100009B7C(aBlock);
    }

    sub_1004189DC();
  }
}

void sub_1004189DC()
{
  sub_100005EF4();
  v23 = v1;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  type metadata accessor for DispatchWorkItemFlags();
  sub_100007FEC();
  __chkstk_darwin(v10);
  sub_100007FDC();
  v24 = type metadata accessor for DispatchQoS();
  sub_100007FEC();
  v12 = v11;
  __chkstk_darwin(v13);
  sub_100007FDC();
  sub_10000C4C4();
  sub_100009AB0(v9, v26);
  v14 = swift_allocObject();
  *(v14 + 16) = v5;
  sub_10002F0C8(v26, v14 + 24);
  *(v14 + 64) = v7;
  v25[4] = v3;
  v25[5] = v14;
  sub_100006028();
  v25[1] = 1107296256;
  sub_10000A600();
  v25[2] = v15;
  v25[3] = v23;
  v16 = _Block_copy(v25);
  v17 = v5;
  v18 = v7;
  static DispatchQoS.unspecified.getter();
  sub_100015324();
  sub_10000F198(v19, v20, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_1000057D0();
  sub_100035C08();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  sub_100008AB0();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);
  v21 = sub_100007764();
  v22(v21);
  (*(v12 + 8))(v0, v24);

  sub_100005EDC();
}

id sub_100418C14(uint64_t a1, char a2)
{
  v4 = sub_10026D814(&unk_1006A52C0, &unk_10057D930);
  __chkstk_darwin(v4 - 8);
  v6 = &v22 - v5;
  v7 = [objc_allocWithZone(UNMutableNotificationContent) init];
  sub_10031E958(0xD000000000000014, 0x8000000100576650);
  sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_10057D690;
  *(v8 + 56) = &type metadata for Int;
  *(v8 + 64) = &protocol witness table for Int;
  *(v8 + 32) = a1;
  String.init(format:_:)();

  v9 = String._bridgeToObjectiveC()();

  [v7 setBody:v9];

  sub_10031E958(0x49414D4543494F56, 0xE90000000000004CLL);
  v10 = String._bridgeToObjectiveC()();

  [v7 setTitle:v10];

  if (qword_1006A0BF0 != -1)
  {
    swift_once();
  }

  v11 = String._bridgeToObjectiveC()();
  [v7 setCategoryIdentifier:v11];

  URL.init(string:)();
  v12 = type metadata accessor for URL();
  v14 = 0;
  if (sub_100015468(v6, 1, v12) != 1)
  {
    URL._bridgeToObjectiveC()(v13);
    v14 = v15;
    (*(*(v12 - 8) + 8))(v6, v12);
  }

  [v7 setDefaultActionURL:v14];

  v16 = sub_10041B070();
  sub_1004554A0(v16, v17, v7);
  if (a2)
  {
    v18 = [objc_opt_self() soundWithAlertType:4];
    [v7 setSound:v18];
  }

  sub_100006AF0(0, &qword_1006A7AE0, UNNotificationRequest_ptr);
  v19 = v7;
  v20 = sub_10044F628(0xD000000000000012, 0x8000000100576670, v19, 0);
  [v20 setDestinations:15];

  return v20;
}

void sub_10041914C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v2 + OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_queue);
  *v7 = v8;
  (*(v5 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v4);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v7, v4);
  if ((v8 & 1) == 0)
  {
    __break(1u);
LABEL_19:
    swift_once();
LABEL_4:
    v12 = type metadata accessor for Logger();
    sub_10000AF9C(v12, qword_1006BA6D0);

    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 134217984;
      *(v15 + 4) = *(a1 + 16);

      _os_log_impl(&_mh_execute_header, v13, v14, "Asked to update %ld voicemail notifications", v15, 0xCu);
    }

    else
    {
    }

    v20 = *(a1 + 16);
    if (v20)
    {
      v21 = v2 + OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_replace;
      v22 = a1 + 32;
      v32 = v2;
      do
      {
        sub_100009AB0(v22, v35);
        v23 = sub_100419534(v35, 0);
        v24 = *v21;
        if (*v21)
        {
          v25 = *(v21 + 8);
          v27 = v36;
          v26 = v37;
          sub_100009B14(v35, v36);
          v33 = v23;
          v28 = v21;
          v29 = *(v26 + 40);

          v30 = v29(v27, v26);
          v21 = v28;
          v23 = v33;
          v34 = v30;
          v31 = dispatch thunk of CustomStringConvertible.description.getter();
          v24(v31);
          sub_1000051F8(v24, v25);
        }

        sub_100009B7C(v35);
        v22 += 40;
        --v20;
      }

      while (v20);
    }

    return;
  }

  v10 = *(v2 + OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_voicemailDataSource + 24);
  v11 = *(v2 + OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_voicemailDataSource + 32);
  sub_100009B14((v2 + OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_voicemailDataSource), v10);
  if ((*(v11 + 24))(v10, v11))
  {
    if (qword_1006A0B70 == -1)
    {
      goto LABEL_4;
    }

    goto LABEL_19;
  }

  if (qword_1006A0B70 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_10000AF9C(v16, qword_1006BA6D0);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v17, v18, "Voicemail is not subscribed", v19, 2u);
  }
}

id sub_100419534(void *a1, int a2)
{
  v138 = a2;
  v4 = sub_10026D814(&unk_1006A52C0, &unk_10057D930);
  v5 = __chkstk_darwin(v4 - 8);
  v135 = &v133 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v136 = &v133 - v7;
  v8 = type metadata accessor for URL();
  v139 = *(v8 - 8);
  v140 = v8;
  __chkstk_darwin(v8);
  v134 = &v133 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = type metadata accessor for UUID();
  v10 = *(v137 - 8);
  __chkstk_darwin(v137);
  v12 = &v133 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Date();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v133 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = [objc_allocWithZone(UNMutableNotificationContent) init];
  sub_10031E958(0x49414D4543494F56, 0xE90000000000004CLL);
  v18 = String._bridgeToObjectiveC()();

  [v17 setTitle:v18];

  v142 = v2;
  sub_10041AFDC(a1);
  v19 = String._bridgeToObjectiveC()();

  [v17 setBody:v19];

  v20 = a1[3];
  v21 = a1[4];
  sub_100009B14(a1, v20);
  (*(v21 + 32))(v20, v21);
  isa = Date._bridgeToObjectiveC()().super.isa;
  (*(v14 + 8))(v16, v13);
  v141 = v17;
  [v17 setDate:isa];

  v23 = objc_opt_self();
  v24 = a1[3];
  v25 = a1[4];
  sub_100009B14(a1, v24);
  (*(v25 + 8))(v24, v25);
  v26 = UUID._bridgeToObjectiveC()().super.isa;
  (*(v10 + 8))(v12, v137);
  v27 = [v23 phoneAppVoicemailURLForMessageUUID:v26];

  if (v27)
  {
    v28 = v134;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    URL._bridgeToObjectiveC()(v29);
    v27 = v30;
    (*(v139 + 8))(v28, v140);
  }

  v31 = v141;
  [v141 setDefaultActionURL:v27];

  v32 = sub_10041B070();
  sub_1004554A0(v32, v33, v31);
  *&v143 = 0xD000000000000015;
  *(&v143 + 1) = 0x8000000100576610;
  AnyHashable.init<A>(_:)();
  v34 = a1;
  v35 = v31;
  v36 = a1[3];
  v37 = a1[4];
  sub_100009B14(a1, v36);
  v38 = [objc_allocWithZone(NSNumber) initWithUnsignedInteger:{(*(v37 + 40))(v36, v37)}];
  v39 = sub_100006AF0(0, &qword_1006A3480, NSNumber_ptr);
  v144 = v39;
  *&v143 = v38;
  v40 = [v35 userInfo];
  v41 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (v144)
  {
    sub_10003EBF0(&v143, &v146);
    swift_isUniquelyReferenced_nonNull_native();
    v145 = v41;
    sub_100378C74(&v146, v148);
    sub_100006780(v148);
  }

  else
  {
    sub_100009A04(&v143, &unk_1006A2D10, &unk_10057D940);
    v42 = sub_1000067D4();
    if (v43)
    {
      v44 = v42;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v145 = v41;
      v46 = *(v41 + 24);
      sub_10026D814(&qword_1006AB3F0, &unk_10057EA70);
      _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v46);
      v47 = v145;
      sub_100006780(*(v145 + 48) + 40 * v44);
      sub_10003EBF0((*(v47 + 56) + 32 * v44), &v146);
      _NativeDictionary._delete(at:)();
    }

    else
    {
      v146 = 0u;
      v147 = 0u;
    }

    sub_100006780(v148);
    sub_100009A04(&v146, &unk_1006A2D10, &unk_10057D940);
  }

  v48 = Dictionary._bridgeToObjectiveC()().super.isa;

  [v35 setUserInfo:v48];

  *&v143 = 0xD000000000000011;
  *(&v143 + 1) = 0x8000000100576630;
  AnyHashable.init<A>(_:)();
  v49 = a1[3];
  v50 = a1[4];
  sub_100009B14(a1, v49);
  v51 = [objc_allocWithZone(NSNumber) initWithDouble:{(*(v50 + 56))(v49, v50)}];
  v144 = v39;
  *&v143 = v51;
  v52 = [v35 userInfo];
  v53 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (v144)
  {
    sub_10003EBF0(&v143, &v146);
    swift_isUniquelyReferenced_nonNull_native();
    v145 = v53;
    sub_100378C74(&v146, v148);
    sub_100006780(v148);
    v54 = &selRef_setParticipantRefreshBlock_;
  }

  else
  {
    sub_100009A04(&v143, &unk_1006A2D10, &unk_10057D940);
    v55 = sub_1000067D4();
    if (v56)
    {
      v57 = v55;
      v58 = swift_isUniquelyReferenced_nonNull_native();
      v145 = v53;
      v59 = *(v53 + 24);
      sub_10026D814(&qword_1006AB3F0, &unk_10057EA70);
      _NativeDictionary.ensureUnique(isUnique:capacity:)(v58, v59);
      v60 = v145;
      sub_100006780(*(v145 + 48) + 40 * v57);
      sub_10003EBF0((*(v60 + 56) + 32 * v57), &v146);
      _NativeDictionary._delete(at:)();
    }

    else
    {
      v146 = 0u;
      v147 = 0u;
    }

    v54 = &selRef_setParticipantRefreshBlock_;
    sub_100006780(v148);
    sub_100009A04(&v146, &unk_1006A2D10, &unk_10057D940);
  }

  v61 = Dictionary._bridgeToObjectiveC()().super.isa;

  [v35 v54[455]];

  v62 = *(v142 + OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_voicemailDataSource + 24);
  v63 = *(v142 + OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_voicemailDataSource + 32);
  sub_100009B14((v142 + OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_voicemailDataSource), v62);
  v64 = (*(v63 + 48))(a1, v62, v63);
  if (v65 >> 60 != 15)
  {
    v66 = v64;
    v67 = v65;
    strcpy(&v143, "voicemailData");
    HIWORD(v143) = -4864;
    AnyHashable.init<A>(_:)();
    v68 = Data._bridgeToObjectiveC()().super.isa;
    v144 = sub_100006AF0(0, &qword_1006A41C0, NSData_ptr);
    *&v143 = v68;
    v69 = [v35 userInfo];
    v70 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    if (v144)
    {
      sub_10003EBF0(&v143, &v146);
      swift_isUniquelyReferenced_nonNull_native();
      v145 = v70;
      sub_100378C74(&v146, v148);
      sub_100006780(v148);
    }

    else
    {
      sub_100009A04(&v143, &unk_1006A2D10, &unk_10057D940);
      v71 = sub_1000067D4();
      if (v72)
      {
        v73 = v71;
        v74 = swift_isUniquelyReferenced_nonNull_native();
        v145 = v70;
        v75 = *(v70 + 24);
        sub_10026D814(&qword_1006AB3F0, &unk_10057EA70);
        v76 = v75;
        v54 = &selRef_setParticipantRefreshBlock_;
        _NativeDictionary.ensureUnique(isUnique:capacity:)(v74, v76);
        v77 = v145;
        sub_100006780(*(v145 + 48) + 40 * v73);
        sub_10003EBF0((*(v77 + 56) + 32 * v73), &v146);
        _NativeDictionary._delete(at:)();
      }

      else
      {
        v146 = 0u;
        v147 = 0u;
      }

      sub_100006780(v148);
      sub_100009A04(&v146, &unk_1006A2D10, &unk_10057D940);
    }

    v78 = Dictionary._bridgeToObjectiveC()().super.isa;

    [v35 v54[455]];
    sub_100290B6C(v66, v67);
  }

  v79 = v34[3];
  v80 = v34[4];
  sub_100009B14(v34, v79);
  v81 = (*(v80 + 88))(v79, v80);
  if (v81)
  {
    v82 = v81;
    v83 = [v81 URL];

    if (v83)
    {
      v84 = v135;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v85 = 0;
      v86 = v136;
      v88 = v139;
      v87 = v140;
    }

    else
    {
      v85 = 1;
      v86 = v136;
      v88 = v139;
      v87 = v140;
      v84 = v135;
    }

    sub_10000AF74(v84, v85, 1, v87);
    sub_100421108(v84, v86, &unk_1006A52C0, &unk_10057D930);
    if (sub_100015468(v86, 1, v87) != 1)
    {
      URL.absoluteString.getter();
      (*(v88 + 8))(v86, v87);
      *&v143 = 0xD000000000000010;
      *(&v143 + 1) = 0x800000010056FCF0;
      AnyHashable.init<A>(_:)();
      v98 = String._bridgeToObjectiveC()();

      v99 = sub_100006AF0(0, &qword_1006A9E70, NSString_ptr);
      v144 = v99;
      *&v143 = v98;
      v100 = [v35 userInfo];
      v101 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      if (v99)
      {
        sub_10003EBF0(&v143, &v146);
        swift_isUniquelyReferenced_nonNull_native();
        v145 = v101;
        sub_100378C74(&v146, v148);
        sub_100006780(v148);
      }

      else
      {
        sub_100009A04(&v143, &unk_1006A2D10, &unk_10057D940);
        v102 = sub_1000067D4();
        if (v103)
        {
          v104 = v102;
          v105 = swift_isUniquelyReferenced_nonNull_native();
          v145 = v101;
          v106 = *(v101 + 24);
          sub_10026D814(&qword_1006AB3F0, &unk_10057EA70);
          v107 = v106;
          v54 = &selRef_setParticipantRefreshBlock_;
          _NativeDictionary.ensureUnique(isUnique:capacity:)(v105, v107);
          v108 = v145;
          sub_100006780(*(v145 + 48) + 40 * v104);
          sub_10003EBF0((*(v108 + 56) + 32 * v104), &v146);
          _NativeDictionary._delete(at:)();
        }

        else
        {
          v146 = 0u;
          v147 = 0u;
        }

        sub_100006780(v148);
        sub_100009A04(&v146, &unk_1006A2D10, &unk_10057D940);
      }

      v90 = Dictionary._bridgeToObjectiveC()().super.isa;

      [v35 v54[455]];
      goto LABEL_41;
    }

    sub_100009A04(v86, &unk_1006A52C0, &unk_10057D930);
  }

  if (qword_1006A0B70 != -1)
  {
    swift_once();
  }

  v89 = type metadata accessor for Logger();
  sub_10000AF9C(v89, qword_1006BA6D0);
  sub_100009AB0(v34, v148);
  v90 = Logger.logObject.getter();
  v91 = static os_log_type_t.default.getter();
  if (!os_log_type_enabled(v90, v91))
  {

    sub_100009B7C(v148);
    goto LABEL_42;
  }

  v92 = swift_slowAlloc();
  v93 = swift_slowAlloc();
  *&v146 = v93;
  *v92 = 136315138;
  sub_100009AB0(v148, &v143);
  sub_10026D814(&qword_1006A7AB0, &unk_1005870F0);
  v94 = String.init<A>(reflecting:)();
  v96 = v95;
  sub_100009B7C(v148);
  v97 = sub_10002741C(v94, v96, &v146);
  v35 = v141;

  *(v92 + 4) = v97;
  _os_log_impl(&_mh_execute_header, v90, v91, "[WARN] Could not generate dial request URL for voicemail: %s", v92, 0xCu);
  sub_100009B7C(v93);
  v54 = &selRef_setParticipantRefreshBlock_;

LABEL_41:

LABEL_42:
  v109 = v34[3];
  v110 = v34[4];
  sub_100009B14(v34, v109);
  v111 = (*(v110 + 48))(v109, v110);
  if (v112)
  {
    v113 = v111;
    v114 = v112;
    if (qword_1006A0BE0 != -1)
    {
      swift_once();
    }

    v115 = String._bridgeToObjectiveC()();
    [v35 setCategoryIdentifier:v115];

    sub_10026D814(&qword_1006A4760, &unk_10057EA60);
    v116 = swift_allocObject();
    *(v116 + 16) = xmmword_10057D690;
    *(v116 + 32) = v113;
    *(v116 + 40) = v114;

    sub_100420F48(v116, v35);
    v117 = String._bridgeToObjectiveC()();
    [v35 setThreadIdentifier:v117];

    strcpy(&v143, "contactInfo");
    HIDWORD(v143) = -352321536;
    AnyHashable.init<A>(_:)();
    v118 = String._bridgeToObjectiveC()();

    v119 = sub_100006AF0(0, &qword_1006A9E70, NSString_ptr);
    v144 = v119;
    *&v143 = v118;
    v120 = [v35 userInfo];
    v121 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    if (v119)
    {
      sub_10003EBF0(&v143, &v146);
      swift_isUniquelyReferenced_nonNull_native();
      v145 = v121;
      sub_100378C74(&v146, v148);
      sub_100006780(v148);
    }

    else
    {
      sub_100009A04(&v143, &unk_1006A2D10, &unk_10057D940);
      v123 = sub_1000067D4();
      if (v124)
      {
        v125 = v123;
        v126 = swift_isUniquelyReferenced_nonNull_native();
        v145 = v121;
        v127 = *(v121 + 24);
        sub_10026D814(&qword_1006AB3F0, &unk_10057EA70);
        v128 = v127;
        v54 = &selRef_setParticipantRefreshBlock_;
        _NativeDictionary.ensureUnique(isUnique:capacity:)(v126, v128);
        v129 = v145;
        sub_100006780(*(v145 + 48) + 40 * v125);
        sub_10003EBF0((*(v129 + 56) + 32 * v125), &v146);
        _NativeDictionary._delete(at:)();
      }

      else
      {
        v146 = 0u;
        v147 = 0u;
      }

      sub_100006780(v148);
      sub_100009A04(&v146, &unk_1006A2D10, &unk_10057D940);
    }

    v122 = Dictionary._bridgeToObjectiveC()().super.isa;

    [v35 v54[455]];
  }

  else
  {
    if (qword_1006A0BE8 != -1)
    {
      swift_once();
    }

    v122 = String._bridgeToObjectiveC()();
    [v35 setCategoryIdentifier:v122];
  }

  if (v138)
  {
    v130 = [objc_opt_self() soundWithAlertType:4];
    [v35 setSound:v130];
  }

  sub_10041A90C(v34);
  sub_100006AF0(0, &unk_1006AB3E0, UNNotificationAttachment_ptr);
  v131 = Array._bridgeToObjectiveC()().super.isa;

  [v35 setAttachments:v131];

  return v35;
}

void *sub_10041A90C(void *a1)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = v28 - v8;
  __chkstk_darwin(v7);
  v11 = v28 - v10;
  v29 = _swiftEmptyArrayStorage;
  v12 = a1[3];
  v13 = a1[4];
  sub_100009B14(a1, v12);
  (*(v13 + 64))(v12, v13);
  v14 = objc_opt_self();
  URL._bridgeToObjectiveC()(v15);
  v17 = v16;
  URL.lastPathComponent.getter();
  v18 = String._bridgeToObjectiveC()();

  v19 = [v14 copyFileAtURL:v17 toTemporaryFileWithName:v18];

  if (v19)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    sub_100006AF0(0, &unk_1006AB3E0, UNNotificationAttachment_ptr);
    v20 = a1[3];
    v21 = a1[4];
    sub_100009B14(a1, v20);
    v28[2] = (*(v21 + 40))(v20, v21);
    v22 = dispatch thunk of CustomStringConvertible.description.getter();
    v24 = v23;
    (*(v3 + 16))(v6, v9, v2);
    sub_10041AE20(v22, v24, v6, 0);
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v26 = v29;
    v25 = *(v3 + 8);
    v25(v9, v2);
    v25(v11, v2);
  }

  else
  {
    (*(v3 + 8))(v11, v2);
    return _swiftEmptyArrayStorage;
  }

  return v26;
}

id sub_10041AE20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = String._bridgeToObjectiveC()();

  URL._bridgeToObjectiveC()(v7);
  v9 = v8;
  if (a4)
  {
    v10.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v10.super.isa = 0;
  }

  v19 = 0;
  v11 = [swift_getObjCClassFromMetadata() attachmentWithIdentifier:v6 URL:v9 options:v10.super.isa error:&v19];

  v12 = v19;
  if (v11)
  {
    v13 = type metadata accessor for URL();
    v14 = *(*(v13 - 8) + 8);
    v15 = v12;
    v14(a3, v13);
  }

  else
  {
    v16 = v19;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v17 = type metadata accessor for URL();
    (*(*(v17 - 8) + 8))(a3, v17);
  }

  return v11;
}

id sub_10041AFDC(void *a1)
{
  if (![*(v1 + OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_featureFlags) vmCatchUpDonationEnabled])
  {
    return sub_10031E958(0x49414D4543494F56, 0xE90000000000004CLL);
  }

  v3 = a1[3];
  v4 = a1[4];
  sub_100009B14(a1, v3);
  result = (*(v4 + 96))(v3, v4);
  if (!v6)
  {
    return sub_10031E958(0x49414D4543494F56, 0xE90000000000004CLL);
  }

  return result;
}

uint64_t sub_10041B070()
{
  swift_getObjectType();
  sub_10026D814(&unk_1006AB3D0, &unk_1005870E0);
  v1 = String.init<A>(describing:)();
  if (*(v0 + OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_notificationType))
  {
    v2 = 0x656E6F6850;
  }

  else
  {
    v2 = 0x656D695465636146;
  }

  if (*(v0 + OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_notificationType))
  {
    v3 = 0xE500000000000000;
  }

  else
  {
    v3 = 0xE800000000000000;
  }

  v6 = v1;

  v4._countAndFlagsBits = v2;
  v4._object = v3;
  String.append(_:)(v4);

  return v6;
}

id sub_10041B138(void *a1, void *a2)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithIntent:a1 response:a2];

  return v4;
}

void sub_10041B194(uint64_t a1, id a2, uint64_t a3, void (*a4)(void, void), uint64_t a5, uint64_t a6, void *a7)
{
  if (a1)
  {
    sub_100006AF0(0, &qword_1006A8B60, OS_os_log_ptr);
    swift_errorRetain();
    v12 = static OS_os_log.default.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v28 = a2;
      v15 = a4;
      v16 = a7;
      v17 = swift_slowAlloc();
      *v14 = 138412290;
      swift_errorRetain();
      v18 = _swift_stdlib_bridgeErrorToNSError();
      *(v14 + 4) = v18;
      *v17 = v18;
      _os_log_impl(&_mh_execute_header, v12, v13, "Failed to donate interaction: %@", v14, 0xCu);
      sub_100009A04(v17, &unk_1006A2630, &qword_10057CB40);
      a7 = v16;
      a4 = v15;
    }

    else
    {
    }
  }

  v29 = 0;
  v19 = [a2 contentByUpdatingWithProvider:a3 error:{&v29, v28}];
  if (v19)
  {
    v20 = v19;
    v21 = v29;
    a4(a6, v20);
  }

  else
  {
    v22 = v29;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_1006A0B70 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_10000AF9C(v23, qword_1006BA6D0);
    v24 = a7;
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 134217984;
      *(v27 + 4) = [v24 identifier];

      _os_log_impl(&_mh_execute_header, v25, v26, "Could not update notification content; using original notification content for voicemail message with identifier %lu", v27, 0xCu);
    }

    else
    {

      v25 = v24;
    }

    a4(a6, a2);
  }
}

void *sub_10041B4D0()
{
  if (sub_10000B6F4(_swiftEmptyArrayStorage))
  {
    sub_10039B510(_swiftEmptyArrayStorage);
  }

  else
  {
    v0 = &_swiftEmptySetSingleton;
  }

  v29 = v0;
  sub_10038A844();
  sub_100006AF0(0, &unk_1006A3C10, UNNotificationAction_ptr);
  sub_10031E958(0xD000000000000016, 0x800000010056FB60);
  sub_100006AF0(0, &unk_1006AB3C0, UNNotificationActionIcon_ptr);
  sub_100392948();
  sub_1003929A4();
  v2 = v1;
  sub_10031E958(0xD000000000000025, 0x80000001005765E0);
  sub_100392948();
  sub_1003929A4();
  v4 = v3;
  sub_100006AF0(0, &unk_1006A7A00, UNNotificationCategory_ptr);
  if (qword_1006A0BE0 != -1)
  {
    swift_once();
  }

  v5 = qword_1006AB270;
  v6 = *algn_1006AB278;
  sub_10026D814(&qword_1006A2EA0, &qword_10057CB60);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_10057DEC0;
  *(v7 + 32) = v2;
  *(v7 + 40) = v4;
  sub_10026D814(&qword_1006A4760, &unk_10057EA60);
  sub_100022D00();
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_10057D6A0;
  *(v8 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v8 + 40) = v9;
  *(v8 + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v8 + 56) = v10;

  v11 = v2;
  v12 = v4;
  v13 = sub_1003890FC(v5, v6, v7, v8, 2);
  sub_10039634C(&v28, v13);

  if (qword_1006A0BE8 != -1)
  {
    swift_once();
  }

  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_10057CA80;
  *(v14 + 32) = v12;
  sub_100022D00();
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_10057D6A0;
  *(v15 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v15 + 40) = v16;
  *(v15 + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v15 + 56) = v17;
  v18 = v12;

  v19 = sub_100006B30();
  v21 = sub_1003890FC(v19, v20, v14, v15, 2);
  sub_10039634C(&v28, v21);

  if (qword_1006A0BF0 != -1)
  {
    swift_once();
  }

  v22 = qword_1006AB290;
  v23 = *algn_1006AB298;
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_10057D690;
  *(v24 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v24 + 40) = v25;

  v26 = sub_1003890FC(v22, v23, _swiftEmptyArrayStorage, v24, 2);
  sub_10039634C(&v28, v26);

  return v29;
}

void sub_10041B948()
{
  sub_100005EF4();
  v1 = v0;
  v87 = type metadata accessor for UUID();
  sub_100007FEC();
  v84 = v2;
  __chkstk_darwin(v3);
  sub_100007FDC();
  v83 = v5 - v4;
  v6 = sub_10026D814(&qword_1006AB3A0, &qword_1005870C8);
  v7 = sub_100007BF0(v6);
  __chkstk_darwin(v7);
  sub_100007BAC();
  v88 = v8 - v9;
  __chkstk_darwin(v10);
  v12 = &v73 - v11;
  v13 = type metadata accessor for DispatchPredicate();
  sub_100007FEC();
  v15 = v14;
  __chkstk_darwin(v16);
  sub_100007FDC();
  v19 = v18 - v17;
  v20 = *(v1 + OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_queue);
  *(v18 - v17) = v20;
  (*(v15 + 104))(v18 - v17, enum case for DispatchPredicate.onQueue(_:), v13);
  v21 = v20;
  v22 = _dispatchPreconditionTest(_:)();
  (*(v15 + 8))(v19, v13);
  if (v22)
  {
    if (qword_1006A0B70 == -1)
    {
      goto LABEL_3;
    }

    goto LABEL_40;
  }

  while (1)
  {
    __break(1u);
LABEL_40:
    sub_10000860C(&qword_1006A0B70);
LABEL_3:
    v23 = type metadata accessor for Logger();
    v24 = sub_10000AF9C(v23, qword_1006BA6D0);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = sub_100005274();
      v28 = swift_slowAlloc();
      v89 = v28;
      *v27 = 136315138;
      *(v27 + 4) = sub_10002741C(0xD000000000000011, 0x8000000100576590, &v89);
      _os_log_impl(&_mh_execute_header, v25, v26, "%s", v27, 0xCu);
      sub_100009B7C(v28);
      sub_100005F40(v28);
      sub_100005F40(v27);
    }

    v29 = *(v1 + OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_voicemailDataSource + 32);
    sub_100009B14((v1 + OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_voicemailDataSource), *(v1 + OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_voicemailDataSource + 24));
    v30 = sub_10000667C();
    if (v31(v30, v29))
    {
      break;
    }

    v34 = OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_unsubscribedVoicemailInfoForUUID;
    swift_beginAccess();
    v35 = *(v1 + v34);
    if (!*(v35 + 16))
    {
      v36 = Logger.logObject.getter();
      v37 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        *v38 = 0;
        _os_log_impl(&_mh_execute_header, v36, v37, "No current unsubscribed voicemail info, attempting to update...", v38, 2u);
        sub_100005F40(v38);
      }

      sub_10041C034();
      v35 = *(v1 + v34);
    }

    v73 = v24;
    v74 = v1;
    v39 = v35 + 64;
    v40 = 1 << *(v35 + 32);
    v41 = -1;
    if (v40 < 64)
    {
      v41 = ~(-1 << v40);
    }

    v42 = v41 & *(v35 + 64);
    v43 = (v40 + 63) >> 6;
    v78 = v84 + 32;
    v79 = v84 + 16;
    v85 = (v84 + 8);
    v82 = v35;

    v75 = 0;
    v76 = 0;
    v77 = v43;
    v44 = 0;
    v45 = 0;
    v1 = &qword_1006AB3A8;
    v46 = v88;
    v80 = v39;
    v81 = v12;
    while (v42)
    {
      v86 = v44;
      v47 = v45;
LABEL_19:
      v48 = __clz(__rbit64(v42));
      v42 &= v42 - 1;
      v49 = v48 | (v47 << 6);
      v50 = v82;
      v51 = v83;
      v52 = v84;
      v53 = v87;
      (*(v84 + 16))(v83, *(v82 + 48) + *(v84 + 72) * v49, v87);
      v54 = *(v50 + 56) + 16 * v49;
      LOBYTE(v50) = *v54;
      v55 = *(v54 + 8);
      v56 = sub_10026D814(&qword_1006AB3A8, &unk_1005870D0);
      v57 = v88 + *(v56 + 48);
      v1 = &qword_1006AB3A8;
      (*(v52 + 32))(v88, v51, v53);
      *v57 = v50;
      *(v57 + 8) = v55;
      v46 = v88;
      sub_100007C20();
      sub_10000AF74(v58, v59, v60, v56);
      v39 = v80;
      v12 = v81;
      v44 = v86;
      v43 = v77;
LABEL_20:
      sub_100421108(v46, v12, &qword_1006AB3A0, &qword_1005870C8);
      v61 = sub_10026D814(&qword_1006AB3A8, &unk_1005870D0);
      if (sub_100015468(v12, 1, v61) == 1)
      {

        if (v44)
        {
          v33 = v76 & ~(v76 >> 63);
        }

        else
        {
          v33 = 0;
        }

        v1 = v74;
        v32 = v75;
        goto LABEL_34;
      }

      v62 = &v12[*(v61 + 48)];
      v63 = *v62;
      if (v63 == 1)
      {
        v64 = *(v62 + 1);
        if (v64 < 1)
        {
          v75 = 1;
        }

        else
        {
          v65 = __OFADD__(v76, v64);
          v76 += v64;
          if (v65)
          {
            goto LABEL_38;
          }
        }
      }

      v44 |= v63;
      (*v85)(v12, v87);
    }

    while (1)
    {
      v47 = v45 + 1;
      if (__OFADD__(v45, 1))
      {
        break;
      }

      if (v47 >= v43)
      {
        v66 = sub_10026D814(&qword_1006AB3A8, &unk_1005870D0);
        sub_10000AF74(v46, 1, 1, v66);
        v42 = 0;
        goto LABEL_20;
      }

      v42 = *(v39 + 8 * v47);
      ++v45;
      if (v42)
      {
        v86 = v44;
        v45 = v47;
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
  }

  v32 = 0;
  v33 = 0;
LABEL_34:
  v67 = v1;
  v68 = Logger.logObject.getter();
  v69 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v68, v69))
  {
    v70 = swift_slowAlloc();
    v71 = sub_10000777C();
    *v70 = 138412802;
    *(v70 + 4) = v67;
    *v71 = v67;
    *(v70 + 12) = 2048;
    *(v70 + 14) = v33;
    *(v70 + 22) = 1024;
    *(v70 + 24) = v32 & 1;
    v72 = v67;
    _os_log_impl(&_mh_execute_header, v68, v69, "%@ count: %ld isAmbiguous: %{BOOL}d", v70, 0x1Cu);
    sub_100009A04(v71, &unk_1006A2630, &qword_10057CB40);
    sub_100005F40(v71);
    sub_100005F40(v70);
  }

  sub_100005EDC();
}

void sub_10041C034()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v46 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v36 - v6;
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = (&v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *&v1[OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_queue];
  *v11 = v12;
  (*(v9 + 104))(v11, enum case for DispatchPredicate.onQueue(_:), v8);
  v13 = v12;
  LOBYTE(v12) = _dispatchPreconditionTest(_:)();
  (*(v9 + 8))(v11, v8);
  if ((v12 & 1) == 0)
  {
    __break(1u);
    goto LABEL_19;
  }

  v14 = *&v1[OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_voicemailDataSource + 24];
  v15 = *&v1[OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_voicemailDataSource + 32];
  sub_100009B14(&v1[OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_voicemailDataSource], v14);
  if ((*(v15 + 24))(v14, v15))
  {
    return;
  }

  v16 = *&v1[OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_telephonyClient];
  aBlock[0] = 0;
  v45 = v16;
  v17 = [v16 getSubscriptionInfoWithError:aBlock];
  if (!v17)
  {
    v35 = aBlock[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();

    return;
  }

  v18 = v17;
  v19 = aBlock[0];
  v20 = sub_100420FB4(v18);
  if (!v20)
  {

    return;
  }

  v21 = v20;
  v22 = sub_10000B6F4(v20);
  if (v22)
  {
    v23 = v22;
    v36 = v18;
    if (v22 >= 1)
    {
      v24 = 0;
      v41 = v3 + 16;
      v42 = v21 & 0xC000000000000001;
      v39 = v3 + 32;
      v40 = v4 + 7;
      v37 = v3 + 8;
      v38 = v48;
      v43 = v1;
      v44 = v21;
      do
      {
        if (v42)
        {
          v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v25 = *(v21 + 8 * v24 + 32);
        }

        v26 = v25;
        ++v24;
        v27 = [v25 uuid];
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v28 = v46;
        (*(v3 + 16))(v46, v7, v2);
        v29 = (*(v3 + 80) + 16) & ~*(v3 + 80);
        v30 = (v40 + v29) & 0xFFFFFFFFFFFFFFF8;
        v31 = swift_allocObject();
        (*(v3 + 32))(v31 + v29, v28, v2);
        v32 = v43;
        *(v31 + v30) = v43;
        v48[2] = sub_100421024;
        v48[3] = v31;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        v48[0] = sub_10041DC10;
        v48[1] = &unk_10062FD18;
        v33 = _Block_copy(aBlock);
        v34 = v32;

        [v45 getVoicemailInfo:v26 completion:v33];
        _Block_release(v33);

        (*(v3 + 8))(v7, v2);
        v21 = v44;
      }

      while (v23 != v24);

      goto LABEL_16;
    }

LABEL_19:
    __break(1u);
  }

LABEL_16:
}

void sub_10041C508()
{
  sub_100005EF4();
  v3 = v2;
  type metadata accessor for DispatchWorkItemFlags();
  sub_100007FEC();
  __chkstk_darwin(v4);
  sub_100007FDC();
  v5 = type metadata accessor for DispatchQoS();
  sub_100007FEC();
  v7 = v6;
  __chkstk_darwin(v8);
  sub_100007FDC();
  sub_10000C4C4();
  sub_100009AB0(v3, v18);
  sub_100022D00();
  v9 = swift_allocObject();
  sub_10002F0C8(v18, v9 + 16);
  *(v9 + 56) = v0;
  v17[4] = sub_100420414;
  v17[5] = v9;
  sub_100006028();
  v17[1] = 1107296256;
  sub_10000A600();
  v17[2] = v10;
  v17[3] = &unk_10062FCC8;
  v11 = _Block_copy(v17);
  v12 = v0;
  static DispatchQoS.unspecified.getter();
  sub_100015324();
  sub_10000F198(v13, v14, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_1000057D0();
  sub_100035C08();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  sub_100008AB0();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v11);
  v15 = sub_100007764();
  v16(v15);
  (*(v7 + 8))(v1, v5);

  sub_100005EDC();
}

void sub_10041C734(void *a1, uint64_t a2)
{
  v4 = a1[3];
  v5 = a1[4];
  sub_100009B14(a1, v4);
  v60._countAndFlagsBits = (*(v5 + 8))(v4, v5);
  v6 = sub_100415DCC(v60);
  if (v6 != 2)
  {
    v10 = v6;
    v11 = a1[3];
    v12 = a1[4];
    sub_100009B14(a1, v11);
    v13 = (*(v12 + 16))(v11, v12);
    v15 = v14;
    v16 = HIBYTE(v14) & 0xF;
    v17 = v13 & 0xFFFFFFFFFFFFLL;
    if ((v15 & 0x2000000000000000) != 0)
    {
      v18 = v16;
    }

    else
    {
      v18 = v13 & 0xFFFFFFFFFFFFLL;
    }

    if (!v18)
    {

      goto LABEL_78;
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      LOBYTE(v54) = 0;
      v21 = sub_100420554(v13, v15, 10);
      v34 = v52;
LABEL_73:

      if ((v34 & 1) == 0)
      {
        v35 = (a2 + OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_voicemailDataSource);
        v36 = *(a2 + OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_voicemailDataSource + 24);
        v37 = *(a2 + OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_voicemailDataSource + 32);
        sub_100009B14((a2 + OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_voicemailDataSource), v36);
        (*(v37 + 72))(&v54, v21, v36, v37);
        if (v55)
        {
          sub_10002F0C8(&v54, v56);
          if (v10)
          {
            v38 = *(a2 + OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_callbackVoicemail);

            v38(v56);
          }

          else
          {
            v50 = v35[3];
            v51 = v35[4];
            sub_100009B14(v35, v50);
            (*(v51 + 96))(v56, v50, v51);
          }

LABEL_84:
          sub_100009B7C(v56);
          return;
        }

        sub_100009A04(&v54, &qword_1006AB398, &qword_1005870C0);
      }

LABEL_78:
      if (qword_1006A0B70 != -1)
      {
        swift_once();
      }

      v39 = type metadata accessor for Logger();
      sub_10000AF9C(v39, qword_1006BA6D0);
      sub_100009AB0(a1, v56);
      v40 = Logger.logObject.getter();
      v41 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        *&v54 = v43;
        *v42 = 136315138;
        v44 = v57;
        v45 = v58;
        sub_100009B14(v56, v57);
        v46 = (*(v45 + 16))(v44, v45);
        v48 = v47;
        sub_100009B7C(v56);
        v49 = sub_10002741C(v46, v48, &v54);

        *(v42 + 4) = v49;
        _os_log_impl(&_mh_execute_header, v40, v41, "Could not find voicemail with identifier: %s", v42, 0xCu);
        sub_100009B7C(v43);

        return;
      }

      goto LABEL_84;
    }

    if ((v15 & 0x2000000000000000) != 0)
    {
      v56[0] = v13;
      v56[1] = v15 & 0xFFFFFFFFFFFFFFLL;
      if (v13 == 43)
      {
        if (v16)
        {
          if (--v16)
          {
            v21 = 0;
            v29 = v56 + 1;
            while (1)
            {
              v30 = *v29 - 48;
              if (v30 > 9)
              {
                break;
              }

              if (!is_mul_ok(v21, 0xAuLL))
              {
                break;
              }

              v24 = __CFADD__(10 * v21, v30);
              v21 = 10 * v21 + v30;
              if (v24)
              {
                break;
              }

              ++v29;
              if (!--v16)
              {
                goto LABEL_72;
              }
            }
          }

          goto LABEL_71;
        }

LABEL_91:
        __break(1u);
        return;
      }

      if (v13 != 45)
      {
        if (v16)
        {
          v21 = 0;
          v32 = v56;
          while (1)
          {
            v33 = *v32 - 48;
            if (v33 > 9)
            {
              break;
            }

            if (!is_mul_ok(v21, 0xAuLL))
            {
              break;
            }

            v24 = __CFADD__(10 * v21, v33);
            v21 = 10 * v21 + v33;
            if (v24)
            {
              break;
            }

            ++v32;
            if (!--v16)
            {
              goto LABEL_72;
            }
          }
        }

        goto LABEL_71;
      }

      if (v16)
      {
        if (--v16)
        {
          v21 = 0;
          v25 = v56 + 1;
          while (1)
          {
            v26 = *v25 - 48;
            if (v26 > 9)
            {
              break;
            }

            if (!is_mul_ok(v21, 0xAuLL))
            {
              break;
            }

            v24 = 10 * v21 >= v26;
            v21 = 10 * v21 - v26;
            if (!v24)
            {
              break;
            }

            ++v25;
            if (!--v16)
            {
              goto LABEL_72;
            }
          }
        }

        goto LABEL_71;
      }
    }

    else
    {
      if ((v13 & 0x1000000000000000) != 0)
      {
        v19 = ((v15 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v19 = _StringObject.sharedUTF8.getter();
      }

      v20 = *v19;
      if (v20 == 43)
      {
        if (v17 >= 1)
        {
          v16 = v17 - 1;
          if (v17 != 1)
          {
            v21 = 0;
            if (v19)
            {
              v27 = v19 + 1;
              while (1)
              {
                v28 = *v27 - 48;
                if (v28 > 9)
                {
                  goto LABEL_71;
                }

                if (!is_mul_ok(v21, 0xAuLL))
                {
                  goto LABEL_71;
                }

                v24 = __CFADD__(10 * v21, v28);
                v21 = 10 * v21 + v28;
                if (v24)
                {
                  goto LABEL_71;
                }

                ++v27;
                if (!--v16)
                {
                  goto LABEL_72;
                }
              }
            }

            goto LABEL_63;
          }

          goto LABEL_71;
        }

        goto LABEL_90;
      }

      if (v20 != 45)
      {
        if (v17)
        {
          v21 = 0;
          if (v19)
          {
            while (1)
            {
              v31 = *v19 - 48;
              if (v31 > 9)
              {
                goto LABEL_71;
              }

              if (!is_mul_ok(v21, 0xAuLL))
              {
                goto LABEL_71;
              }

              v24 = __CFADD__(10 * v21, v31);
              v21 = 10 * v21 + v31;
              if (v24)
              {
                goto LABEL_71;
              }

              ++v19;
              if (!--v17)
              {
                goto LABEL_63;
              }
            }
          }

          goto LABEL_63;
        }

LABEL_71:
        v21 = 0;
        LOBYTE(v16) = 1;
        goto LABEL_72;
      }

      if (v17 >= 1)
      {
        v16 = v17 - 1;
        if (v17 != 1)
        {
          v21 = 0;
          if (v19)
          {
            v22 = v19 + 1;
            while (1)
            {
              v23 = *v22 - 48;
              if (v23 > 9)
              {
                goto LABEL_71;
              }

              if (!is_mul_ok(v21, 0xAuLL))
              {
                goto LABEL_71;
              }

              v24 = 10 * v21 >= v23;
              v21 = 10 * v21 - v23;
              if (!v24)
              {
                goto LABEL_71;
              }

              ++v22;
              if (!--v16)
              {
                goto LABEL_72;
              }
            }
          }

LABEL_63:
          LOBYTE(v16) = 0;
LABEL_72:
          LOBYTE(v54) = v16;
          v34 = v16;
          goto LABEL_73;
        }

        goto LABEL_71;
      }

      __break(1u);
    }

    __break(1u);
LABEL_90:
    __break(1u);
    goto LABEL_91;
  }

  if (qword_1006A0B70 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_10000AF9C(v7, qword_1006BA6D0);
  oslog = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(oslog, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v8, "Unknown notification response received", v9, 2u);
  }
}

uint64_t type metadata accessor for VoicemailNotificationProvider(uint64_t a1)
{
  result = qword_1006AB318;
  if (!qword_1006AB318)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10041CF9C(uint64_t a1)
{
  sub_100316450(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10041D0D4()
{
  sub_100005EF4();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = sub_10026D814(&qword_1006A3C70, &unk_10057EA80);
  v7 = sub_100007BF0(v6);
  __chkstk_darwin(v7);
  sub_100007BAC();
  v10 = v8 - v9;
  __chkstk_darwin(v11);
  v13 = &v48 - v12;
  if (v3)
  {
    if ([v3 isVoiceMailMWI])
    {
      if (qword_1006A0B70 != -1)
      {
        sub_10000860C(&qword_1006A0B70);
      }

      v14 = type metadata accessor for Logger();
      sub_10000AF9C(v14, qword_1006BA6D0);
      v15 = v5;
      v16 = v3;
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v49 = v1;
        v20 = v19;
        v21 = swift_slowAlloc();
        *v20 = 138412546;
        *(v20 + 4) = v16;
        *(v20 + 12) = 2112;
        *(v20 + 14) = v15;
        *v21 = v3;
        v21[1] = v5;
        v22 = v16;
        v23 = v15;
        _os_log_impl(&_mh_execute_header, v17, v18, "Handling voicemailInfoAvailableNotification voicemailInfo: %@, context: %@", v20, 0x16u);
        sub_10026D814(&unk_1006A2630, &qword_10057CB40);
        swift_arrayDestroy();
        sub_100005F40(v21);
        v24 = v20;
        v1 = v49;
        sub_100005F40(v24);
      }

      v25 = [v16 count];
      v26 = [v25 integerValue];

      if (v26 && ([v16 available] & 1) != 0)
      {
        v27 = OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_mostRecentNonVisualVoicemailDate;
        swift_beginAccess();
        sub_100270E18(v1 + v27, v13);
        v28 = type metadata accessor for Date();
        v29 = sub_100015468(v13, 1, v28);
        sub_100009A04(v13, &qword_1006A3C70, &unk_10057EA80);
        Date.init()();
        sub_100007C20();
        sub_10000AF74(v30, v31, v32, v28);
        swift_beginAccess();
        sub_1003B3734(v10, v1 + v27);
        swift_endAccess();
        v33 = [v16 count];
        v34 = [v33 integerValue];

        if ((v34 & 0x8000000000000000) != 0)
        {
          v39 = v29 == 1;
          v38 = 0;
        }

        else
        {
          v35 = v29 == 1;
          v36 = [v16 count];
          v37 = [v36 integerValue];

          v38 = v37;
          v39 = v35;
        }

        v47 = sub_100418C14(v38, v39);
        sub_100418F74(v47);
      }

      else
      {
        v45 = *(&v1->isa + OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_removeNotification);
        if (v45)
        {
          v46 = *(&v1[1].isa + OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_removeNotification);

          v45(0xD000000000000012, 0x8000000100576670);
          sub_1000051F8(v45, v46);
        }
      }

      sub_10041C034();
      sub_100005EDC();
    }

    else
    {
      if (qword_1006A0B70 != -1)
      {
        sub_10000860C(&qword_1006A0B70);
      }

      v40 = type metadata accessor for Logger();
      sub_10000AF9C(v40, qword_1006BA6D0);
      v49 = Logger.logObject.getter();
      v41 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v49, v41))
      {
        v42 = swift_slowAlloc();
        *v42 = 0;
        _os_log_impl(&_mh_execute_header, v49, v41, "Voicemail is not MWI - Ignoring voicemailInfoAvailableNotification", v42, 2u);
        sub_100005F40(v42);
      }

      sub_100005EDC();
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10041D5B4(int a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v64 - v16;
  if (qword_1006A0B70 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  v19 = sub_10000AF9C(v18, qword_1006BA6D0);
  v70 = *(v12 + 16);
  v71 = v12 + 16;
  v70(v17, a6, v11);
  v20 = a2;
  v72 = v19;
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();

  v68 = v22;
  v23 = os_log_type_enabled(v21, v22);
  v73 = v12;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v67 = v15;
    v25 = v12;
    v26 = v24;
    v65 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    v75[0] = v66;
    *v26 = 136315650;
    sub_10000F198(&qword_1006A25E0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v27 = dispatch thunk of CustomStringConvertible.description.getter();
    v28 = v11;
    v29 = a1;
    v30 = a6;
    v31 = a7;
    v33 = v32;
    v34 = v25;
    v15 = v67;
    v35 = v17;
    v36 = v28;
    v69 = *(v34 + 8);
    v69(v35, v28);
    v37 = sub_10002741C(v27, v33, v75);
    a7 = v31;
    a6 = v30;
    a1 = v29;

    *(v26 + 4) = v37;
    *(v26 + 12) = 1024;
    *(v26 + 14) = v29 & 1;
    *(v26 + 18) = 2112;
    *(v26 + 20) = v20;
    v38 = v65;
    *v65 = v20;
    v39 = v20;
    _os_log_impl(&_mh_execute_header, v21, v68, "Got voicemail info for uuid %s to available: %{BOOL}d, count: %@", v26, 0x1Cu);
    sub_100009A04(v38, &unk_1006A2630, &qword_10057CB40);

    sub_100009B7C(v66);

    if ((v29 & 1) == 0)
    {
LABEL_5:
      v40 = 0;
      goto LABEL_8;
    }
  }

  else
  {

    v41 = v17;
    v36 = v11;
    v69 = *(v12 + 8);
    v69(v41, v11);
    if ((a1 & 1) == 0)
    {
      goto LABEL_5;
    }
  }

  v40 = [v20 integerValue];
LABEL_8:
  v42 = OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_unsubscribedVoicemailInfoForUUID;
  swift_beginAccess();
  v43 = sub_1002CBC08(a6, *(a7 + v42));
  if (v43 == 2)
  {
    swift_endAccess();
    v45 = v36;
    goto LABEL_15;
  }

  v46 = v44;
  v47 = v43 & 1;
  swift_endAccess();
  v48 = v47 == (a1 & 1) && v46 == v40;
  v45 = v36;
  if (v48)
  {
LABEL_15:
    swift_beginAccess();
    v49 = sub_1002CBC08(a6, *(a7 + v42));
    result = swift_endAccess();
    if (v49 != 2)
    {
      return result;
    }
  }

  v68 = a1;
  v70(v15, a6, v45);
  v51 = Logger.logObject.getter();
  v52 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    LODWORD(v71) = v52;
    v55 = v15;
    v72 = v54;
    v75[0] = v54;
    *v53 = 136315650;
    sub_10000F198(&qword_1006A25E0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v56 = dispatch thunk of CustomStringConvertible.description.getter();
    v57 = a7;
    v59 = v58;
    v69(v55, v45);
    v60 = sub_10002741C(v56, v59, v75);
    a7 = v57;

    *(v53 + 4) = v60;
    *(v53 + 12) = 1024;
    *(v53 + 14) = v68 & 1;
    *(v53 + 18) = 2048;
    *(v53 + 20) = v40;
    _os_log_impl(&_mh_execute_header, v51, v71, "Updating voicemail info for uuid %s to available: %{BOOL}d, count: %ld", v53, 0x1Cu);
    sub_100009B7C(v72);
  }

  else
  {

    v69(v15, v45);
  }

  swift_beginAccess();
  swift_isUniquelyReferenced_nonNull_native();
  v74 = *(a7 + v42);
  sub_100379D9C();
  *(a7 + v42) = v74;
  result = swift_endAccess();
  v61 = *(a7 + OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_updateBadgeValue);
  if (v61)
  {
    v62 = *(a7 + OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_updateBadgeValue + 8);

    v61(v63);
    return sub_1000051F8(v61, v62);
  }

  return result;
}

void sub_10041DC10(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v8 = *(a1 + 32);
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  v13 = a3;
  v12 = a5;
  v8(a2, v13, v9, v11, v12);
}

void *sub_10041DCCC(char *a1)
{
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v86 = &v79 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v79 - v7;
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = (&v79 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *&v1[OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_queue];
  *v12 = v13;
  (*(v10 + 104))(v12, enum case for DispatchPredicate.onQueue(_:), v9);
  v14 = v13;
  LOBYTE(v13) = _dispatchPreconditionTest(_:)();
  (*(v10 + 8))(v12, v9);
  if ((v13 & 1) == 0)
  {
LABEL_30:
    __break(1u);
LABEL_31:
    swift_once();
    goto LABEL_23;
  }

  v96 = &_swiftEmptySetSingleton;
  v97 = &_swiftEmptySetSingleton;
  v15 = *(v4 + 16);
  v82 = a1;
  v81 = v4 + 16;
  v80 = v15;
  v15(v8, a1, v3);
  v16 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = v1;
  v84 = v4;
  v18 = *(v4 + 32);
  v85 = v3;
  v18(v17 + v16, v8, v3);
  v19 = *&v1[OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_voicemailDataSource + 24];
  v20 = *&v1[OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_voicemailDataSource + 32];
  sub_100009B14(&v1[OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_voicemailDataSource], v19);
  v21 = *(v20 + 64);
  a1 = v1;
  v83 = v17;
  v22 = v21(sub_1004212CC, v17, v19, v20);
  v23 = v22;
  v90 = *(v22 + 16);
  if (v90)
  {
    v88 = v22 + 32;
    v89 = OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_pendingVoicemailIdentifiers;
    swift_beginAccess();
    v24 = 0;
    v12 = _swiftEmptyArrayStorage;
    v87 = _swiftEmptyArrayStorage;
    while (v24 < *(v23 + 16))
    {
      sub_100009AB0(v88 + 40 * v24, v93);
      v25 = *&a1[v89];
      v27 = v94;
      v26 = v95;
      sub_100009B14(v93, v94);
      v28 = *(v26 + 40);

      v29 = v28(v27, v26);
      if (*(v25 + 16))
      {
        v30 = v29;
        v31 = static Hasher._hash(seed:_:)();
        v32 = ~(-1 << *(v25 + 32));
        while (1)
        {
          v33 = v31 & v32;
          if (((*(v25 + 56 + (((v31 & v32) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v31 & v32)) & 1) == 0)
          {
            break;
          }

          v31 = v33 + 1;
          if (*(*(v25 + 48) + 8 * v33) == v30)
          {

            sub_100009AB0(v93, v92);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_100470AAC();
              v87 = v50;
            }

            v34 = v87[2];
            if (v34 >= v87[3] >> 1)
            {
              sub_100470AAC();
              v87 = v51;
            }

            v35 = v87;
            v87[2] = v34 + 1;
            sub_10002F0C8(v92, &v35[5 * v34 + 4]);
            v36 = v94;
            v37 = v95;
            sub_100009B14(v93, v94);
            v38 = (*(v37 + 40))(v36, v37);
            goto LABEL_19;
          }
        }
      }

      sub_100009AB0(v93, v92);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_100470AAC();
        v12 = v48;
      }

      v45 = v12[2];
      if (v45 >= v12[3] >> 1)
      {
        sub_100470AAC();
        v12 = v49;
      }

      v12[2] = v45 + 1;
      sub_10002F0C8(v92, &v12[5 * v45 + 4]);
      v46 = v94;
      v47 = v95;
      sub_100009B14(v93, v94);
      v38 = (*(v47 + 40))(v46, v47);
LABEL_19:
      sub_100396904(v92, v38, v39, v40, v41, v42, v43, v44, v79, v80);
      ++v24;
      sub_100009B7C(v93);
      if (v24 == v90)
      {

        goto LABEL_22;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v12 = _swiftEmptyArrayStorage;
  v87 = _swiftEmptyArrayStorage;
LABEL_22:
  if (qword_1006A0B70 != -1)
  {
    goto LABEL_31;
  }

LABEL_23:
  v52 = type metadata accessor for Logger();
  sub_10000AF9C(v52, qword_1006BA6D0);
  v53 = a1;
  v54 = Logger.logObject.getter();
  v55 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    v93[0] = swift_slowAlloc();
    *v56 = 136315394;
    swift_beginAccess();

    v57 = Set.description.getter();
    v59 = v58;

    v60 = sub_10002741C(v57, v59, v93);

    *(v56 + 4) = v60;
    *(v56 + 12) = 2080;
    swift_beginAccess();

    v61 = Set.description.getter();
    v63 = v62;

    v64 = sub_10002741C(v61, v63, v93);

    *(v56 + 14) = v64;
    _os_log_impl(&_mh_execute_header, v54, v55, "Voicemail store changed. We were waiting for %s and found %s", v56, 0x16u);
    swift_arrayDestroy();
  }

  v65 = v86;
  v66 = v85;
  v80(v86, v82, v85);
  swift_bridgeObjectRetain_n();
  v67 = Logger.logObject.getter();
  v68 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v67, v68))
  {
    v69 = swift_slowAlloc();
    v91 = swift_slowAlloc();
    *v69 = 134218498;
    *(v69 + 4) = v12[2];

    *(v69 + 12) = 2080;
    sub_10000F198(&unk_1006A6740, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v70 = dispatch thunk of CustomStringConvertible.description.getter();
    v72 = v71;
    (*(v84 + 8))(v65, v66);
    v73 = sub_10002741C(v70, v72, &v91);

    *(v69 + 14) = v73;
    *(v69 + 22) = 2080;
    swift_beginAccess();

    v74 = Set.description.getter();
    v76 = v75;

    v77 = sub_10002741C(v74, v76, &v91);

    *(v69 + 24) = v77;

    _os_log_impl(&_mh_execute_header, v67, v68, "Received %ld new voicemails since date %s: %s", v69, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v84 + 8))(v65, v66);
  }

  return v12;
}

uint64_t sub_10041E700(void *a1, uint64_t a2, uint64_t a3)
{
  v19[1] = a3;
  v20 = type metadata accessor for Date();
  v5 = *(v20 - 8);
  __chkstk_darwin(v20);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_pendingVoicemailIdentifiers;
  swift_beginAccess();
  v9 = *(a2 + v8);
  v11 = a1[3];
  v10 = a1[4];
  sub_100009B14(a1, v11);
  v12 = *(v10 + 40);

  v13 = v12(v11, v10);
  LOBYTE(v8) = sub_100422980(v13, v9);

  if (v8)
  {
    if (sub_100416C2C(a1))
    {
      v14 = 0;
    }

    else
    {
      v14 = sub_100416DB8(a1) ^ 1;
    }
  }

  else
  {
    v15 = a1[3];
    v16 = a1[4];
    sub_100009B14(a1, v15);
    (*(v16 + 32))(v15, v16);
    v17 = Date.compare(_:)();
    (*(v5 + 8))(v7, v20);
    v14 = v17 == 1;
  }

  return v14 & 1;
}

void sub_10041E8CC(char *a1)
{
  v2 = sub_10026D814(&qword_1006A3C70, &unk_10057EA80);
  __chkstk_darwin(v2 - 8);
  v4 = &v159 - v3;
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v159 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v159 - v11;
  __chkstk_darwin(v10);
  v14 = &v159 - v13;
  v15 = OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_mostRecentVoicemailDate;
  swift_beginAccess();
  sub_100270E18(&a1[v15], v4);
  if (sub_100015468(v4, 1, v5) == 1)
  {
    sub_100009A04(v4, &qword_1006A3C70, &unk_10057EA80);
    if (qword_1006A0B70 != -1)
    {
LABEL_87:
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_10000AF9C(v16, qword_1006BA6D0);
    v17 = a1;
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 138412290;
      *(v20 + 4) = v17;
      *v21 = v17;
      v22 = v17;
      _os_log_impl(&_mh_execute_header, v18, v19, "Could not retrieve date of most recent voicemail for notification provider %@", v20, 0xCu);
      sub_100009A04(v21, &unk_1006A2630, &qword_10057CB40);
    }

    sub_100416268();
    return;
  }

  v23 = *(v6 + 32);
  v163 = v14;
  v162 = v5;
  v23(v14, v4, v5);
  v24 = *&a1[OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_voicemailDataSource + 24];
  v25 = *&a1[OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_voicemailDataSource + 32];
  sub_100009B14(&a1[OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_voicemailDataSource], v24);
  if (((*(v25 + 24))(v24, v25) & 1) == 0)
  {
    if (qword_1006A0B70 != -1)
    {
      swift_once();
    }

    v38 = type metadata accessor for Logger();
    sub_10000AF9C(v38, qword_1006BA6D0);
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.error.getter();
    v41 = os_log_type_enabled(v39, v40);
    v42 = v162;
    v43 = v163;
    if (v41)
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&_mh_execute_header, v39, v40, "Voicemail is not subscribed", v44, 2u);
    }

    (*(v6 + 8))(v43, v42);
    return;
  }

  v177 = _swiftEmptyArrayStorage;
  if (qword_1006A0B70 != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for Logger();
  v27 = sub_10000AF9C(v26, qword_1006BA6D0);
  v28 = v162;
  v164 = *(v6 + 16);
  v164(v12, v163, v162);
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.default.getter();
  v31 = os_log_type_enabled(v29, v30);
  v166 = a1;
  v161 = v6;
  v167 = v27;
  v165 = v6 + 16;
  if (v31)
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v170[0] = v33;
    *v32 = 136315138;
    sub_10000F198(&unk_1006A6740, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v34 = dispatch thunk of CustomStringConvertible.description.getter();
    v36 = v35;
    v160 = *(v6 + 8);
    v160(v12, v28);
    v37 = sub_10002741C(v34, v36, v170);

    *(v32 + 4) = v37;
    _os_log_impl(&_mh_execute_header, v29, v30, "Retrieving messages delivered after %s", v32, 0xCu);
    sub_100009B7C(v33);

    a1 = v166;
  }

  else
  {

    v160 = *(v6 + 8);
    v160(v12, v28);
  }

  v45 = sub_10041DCCC(v163);
  v47 = v46;
  if (*(v46 + 16))
  {

    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v170[0] = v51;
      *v50 = 136315138;
      sub_10026D814(&qword_1006A7AB0, &unk_1005870F0);
      v52 = Array.description.getter();
      v54 = sub_10002741C(v52, v53, v170);

      *(v50 + 4) = v54;
      _os_log_impl(&_mh_execute_header, v48, v49, "Voicemail store changed, and we found the following voicemail messages we were waiting for: %s", v50, 0xCu);
      sub_100009B7C(v51);
    }

    sub_1004144F8(v55);
    v56 = *(v47 + 16);
    if (v56)
    {
      *&v174 = _swiftEmptyArrayStorage;
      sub_10039A4A0(0, v56, 0);
      v57 = v174;
      v58 = v47 + 32;
      do
      {
        sub_100009AB0(v58, v170);
        v59 = v171;
        v60 = v172;
        sub_100009B14(v170, v171);
        v61 = (*(v60 + 40))(v59, v60);
        sub_100009B7C(v170);
        *&v174 = v57;
        v63 = v57[2];
        v62 = v57[3];
        if (v63 >= v62 >> 1)
        {
          sub_10039A4A0((v62 > 1), v63 + 1, 1);
          v57 = v174;
        }

        v57[2] = v63 + 1;
        v57[v63 + 4] = v61;
        v58 += 40;
        --v56;
      }

      while (v56);
    }

    else
    {

      v57 = _swiftEmptyArrayStorage;
    }

    a1 = v166;
    swift_beginAccess();
    sub_100414624(v57);
    swift_endAccess();
  }

  else
  {

    v64 = a1;
    v65 = Logger.logObject.getter();
    v66 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v170[0] = v68;
      *v67 = 136315138;
      swift_beginAccess();

      v69 = Set.description.getter();
      v71 = v70;

      v72 = sub_10002741C(v69, v71, v170);
      a1 = v166;

      *(v67 + 4) = v72;
      _os_log_impl(&_mh_execute_header, v65, v66, "Voicemail store changed, but we did not find any voicemail messages we were waiting for. Waiting for: %s", v67, 0xCu);
      sub_100009B7C(v68);
    }
  }

  v73 = v45[2];
  if (v73)
  {
    v74 = v162;
    v164(v9, v163, v162);

    v75 = Logger.logObject.getter();
    v76 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      v170[0] = v78;
      *v77 = 134218242;
      *(v77 + 4) = v45[2];

      *(v77 + 12) = 2080;
      sub_10000F198(&unk_1006A6740, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      v79 = dispatch thunk of CustomStringConvertible.description.getter();
      v81 = v80;
      v160(v9, v74);
      v82 = sub_10002741C(v79, v81, v170);

      *(v77 + 14) = v82;
      _os_log_impl(&_mh_execute_header, v75, v76, "Received %ld new voicemails since date %s", v77, 0x16u);
      sub_100009B7C(v78);
      a1 = v166;
    }

    else
    {

      v160(v9, v74);
    }

    sub_100416268();
    v83 = (v45 + 4);
    while (1)
    {
      sub_100009AB0(v83, v170);
      if (sub_100416DB8(v170))
      {
        break;
      }

      if ((sub_100416C2C(v170) & 1) == 0)
      {
        goto LABEL_40;
      }

      v93 = v171;
      v94 = v172;
      sub_100009B14(v170, v171);
      v95 = (*(v94 + 40))(v93, v94);
      swift_beginAccess();
      sub_100396904(v173, v95, v96, v97, v98, v99, v100, v101, v159, v160);
      swift_endAccess();
LABEL_45:
      sub_100009B7C(v170);
      v83 += 40;
      if (!--v73)
      {
        goto LABEL_46;
      }
    }

    v84 = v171;
    v85 = v172;
    sub_100009B14(v170, v171);
    v86 = (*(v85 + 40))(v84, v85);
    swift_beginAccess();
    sub_100396904(v173, v86, v87, v88, v89, v90, v91, v92, v159, v160);
    swift_endAccess();
LABEL_40:
    sub_100009AB0(v170, &v174);
    v102 = v177;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_100470AAC();
      v102 = v104;
    }

    v103 = v102[2];
    if (v103 >= v102[3] >> 1)
    {
      sub_100470AAC();
      v102 = v105;
    }

    v102[2] = v103 + 1;
    sub_10002F0C8(&v174, &v102[5 * v103 + 4]);
    v177 = v102;
    goto LABEL_45;
  }

LABEL_46:

  v106 = v177;
  v167 = v177[2];
  v165 = OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_postedVoicemailIdentifiers;
  swift_beginAccess();
  v107 = 0;
  v164 = (v106 + 4);
  v108 = _swiftEmptyArrayStorage;
LABEL_47:
  while (v107 != v167)
  {
    if (v107 >= v106[2])
    {
      __break(1u);
LABEL_86:
      __break(1u);
      goto LABEL_87;
    }

    v109 = v107 + 1;
    sub_100009AB0(v164 + 40 * v107, &v174);
    v110 = *&a1[v165];
    v111 = v175;
    v112 = v176;
    sub_100009B14(&v174, v175);
    v113 = *(v112 + 40);

    v170[0] = v113(v111, v112);
    v114 = dispatch thunk of CustomStringConvertible.description.getter();
    v116 = v115;
    if (*(v110 + 16))
    {
      v117 = v114;
      Hasher.init(_seed:)();
      String.hash(into:)();
      v118 = Hasher._finalize()();
      v119 = ~(-1 << *(v110 + 32));
      while (1)
      {
        v120 = v118 & v119;
        if (((*(v110 + 56 + (((v118 & v119) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v118 & v119)) & 1) == 0)
        {
          break;
        }

        v121 = (*(v110 + 48) + 16 * v120);
        if (*v121 != v117 || v121[1] != v116)
        {
          v123 = _stringCompareWithSmolCheck(_:_:expecting:)();
          v118 = v120 + 1;
          if ((v123 & 1) == 0)
          {
            continue;
          }
        }

        sub_100009B7C(&v174);
        v107 = v109;
        a1 = v166;
        goto LABEL_47;
      }
    }

    sub_10002F0C8(&v174, v170);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v168[0] = v108;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_10039A460(0, v108[2] + 1, 1);
      v108 = v168[0];
    }

    a1 = v166;
    v126 = v108[2];
    v125 = v108[3];
    if (v126 >= v125 >> 1)
    {
      sub_10039A460(v125 > 1, v126 + 1, 1);
    }

    v127 = v171;
    v128 = v172;
    v129 = sub_10001BDB8(v170, v171);
    __chkstk_darwin(v129);
    v131 = &v159 - ((v130 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v132 + 16))(v131);
    sub_1002F705C(v126, v131, v168, v127, v128);
    sub_100009B7C(v170);
    v108 = v168[0];
    v107 = v109;
  }

  swift_beginAccess();
  v133 = 0;
  v134 = _swiftEmptyArrayStorage;
LABEL_64:
  while (v133 != v167)
  {
    if (v133 >= v106[2])
    {
      goto LABEL_86;
    }

    v135 = v133 + 1;
    sub_100009AB0(v164 + 40 * v133, &v174);
    v136 = *&a1[v165];
    v137 = v175;
    v138 = v176;
    sub_100009B14(&v174, v175);
    v139 = *(v138 + 40);

    v170[0] = v139(v137, v138);
    v140 = dispatch thunk of CustomStringConvertible.description.getter();
    v142 = v141;
    if (*(v136 + 16))
    {
      v143 = v140;
      Hasher.init(_seed:)();
      String.hash(into:)();
      v144 = Hasher._finalize()();
      v145 = ~(-1 << *(v136 + 32));
      while (1)
      {
        v146 = v144 & v145;
        if (((*(v136 + 56 + (((v144 & v145) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v144 & v145)) & 1) == 0)
        {
          break;
        }

        v147 = (*(v136 + 48) + 16 * v146);
        if (*v147 != v143 || v147[1] != v142)
        {
          v149 = _stringCompareWithSmolCheck(_:_:expecting:)();
          v144 = v146 + 1;
          if ((v149 & 1) == 0)
          {
            continue;
          }
        }

        sub_10002F0C8(&v174, v170);
        v150 = swift_isUniquelyReferenced_nonNull_native();
        v169 = v134;
        if ((v150 & 1) == 0)
        {
          sub_10039A460(0, v134[2] + 1, 1);
          v134 = v169;
        }

        a1 = v166;
        v152 = v134[2];
        v151 = v134[3];
        if (v152 >= v151 >> 1)
        {
          sub_10039A460(v151 > 1, v152 + 1, 1);
        }

        v153 = v171;
        v154 = v172;
        v155 = sub_10001BDB8(v170, v171);
        __chkstk_darwin(v155);
        v157 = &v159 - ((v156 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v158 + 16))(v157);
        sub_1002F705C(v152, v157, &v169, v153, v154);
        sub_100009B7C(v170);
        v134 = v169;
        v133 = v135;
        goto LABEL_64;
      }
    }

    sub_100009B7C(&v174);
    v133 = v135;
    a1 = v166;
  }

  if (v108[2])
  {
    sub_100416F44(v108);
  }

  if (v134[2])
  {
    sub_10041914C(v134);

    v160(v163, v162);
  }

  else
  {
    v160(v163, v162);
  }
}

void sub_10041FCD0(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4, ...)
{
  sub_100005EF4();
  v5 = v4;
  v6 = type metadata accessor for Notification();
  sub_100007FEC();
  v8 = v7;
  __chkstk_darwin(v9);
  sub_100007FDC();
  v12 = v11 - v10;
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v5;
  sub_1000060F0();
  sub_10041FDB8();

  (*(v8 + 8))(v12, v6);
  sub_100005EDC();
}

void sub_10041FDB8()
{
  sub_100005EF4();
  v43 = v2;
  v44 = v3;
  v42 = v4;
  v5 = v0;
  v7 = v6;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  sub_100007FEC();
  v10 = v9;
  __chkstk_darwin(v11);
  sub_100007FDC();
  v46 = v13 - v12;
  v47 = type metadata accessor for DispatchQoS();
  sub_100007FEC();
  v45 = v14;
  __chkstk_darwin(v15);
  sub_100007FDC();
  sub_10000C4C4();
  v16 = type metadata accessor for Notification();
  sub_100007FEC();
  v18 = v17;
  __chkstk_darwin(v19);
  sub_100007FDC();
  v22 = v21 - v20;
  if (qword_1006A0B70 != -1)
  {
    sub_10000860C(&qword_1006A0B70);
  }

  v23 = type metadata accessor for Logger();
  sub_10000AF9C(v23, qword_1006BA6D0);
  (*(v18 + 16))(v22, v7, v16);
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v24, v25))
  {
    v40 = v10;
    v26 = sub_100005274();
    v41 = v8;
    v39 = swift_slowAlloc();
    v48[0] = v39;
    *v26 = 136315138;
    sub_10000F198(&unk_1006A3C80, &type metadata accessor for Notification, &protocol conformance descriptor for Notification);
    v27 = dispatch thunk of CustomStringConvertible.description.getter();
    v28 = v1;
    v29 = v5;
    v31 = v30;
    (*(v18 + 8))(v22, v16);
    sub_10002741C(v27, v31, v48);
    sub_10000667C();
    v5 = v29;
    v1 = v28;

    *(v26 + 4) = v27;
    _os_log_impl(&_mh_execute_header, v24, v25, v42, v26, 0xCu);
    sub_100009B7C(v39);
    v8 = v41;
    sub_100005F40(v39);
    v32 = v26;
    v10 = v40;
    sub_100005F40(v32);
  }

  else
  {

    (*(v18 + 8))(v22, v16);
  }

  v33 = swift_allocObject();
  *(v33 + 16) = v5;
  v48[4] = v43;
  v48[5] = v33;
  v48[0] = _NSConcreteStackBlock;
  v48[1] = 1107296256;
  sub_10000A600();
  v48[2] = v34;
  v48[3] = v44;
  v35 = _Block_copy(v48);
  v36 = v5;
  static DispatchQoS.unspecified.getter();
  sub_100015324();
  sub_10000F198(v37, v38, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_1000057D0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  sub_100008AB0();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v35);
  (*(v10 + 8))(v46, v8);
  (*(v45 + 8))(v1, v47);

  sub_100005EDC();
}

uint64_t sub_100420208(uint64_t a1)
{
  v2 = sub_10026D814(&qword_1006A3C70, &unk_10057EA80);
  v3 = sub_100007BF0(v2);
  __chkstk_darwin(v3);
  v5 = &v19 - v4;
  v6 = *(a1 + OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_voicemailDataSource + 24);
  v7 = *(a1 + OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_voicemailDataSource + 32);
  sub_100009B14((a1 + OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_voicemailDataSource), v6);
  if (((*(v7 + 24))(v6, v7) & 1) == 0)
  {
    if (qword_1006A0B70 != -1)
    {
      sub_10000860C(&qword_1006A0B70);
    }

    v8 = type metadata accessor for Logger();
    sub_10000AF9C(v8, qword_1006BA6D0);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Removing posted voicemail notifications because vmd isn't subscribed.", v11, 2u);
      sub_100005F40(v11);
    }

    sub_10041687C();
  }

  v12 = type metadata accessor for Date();
  sub_10000AF74(v5, 1, 1, v12);
  v13 = OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_mostRecentNonVisualVoicemailDate;
  swift_beginAccess();
  sub_1003B3734(v5, a1 + v13);
  result = swift_endAccess();
  v15 = *(a1 + OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_updateBadgeValue);
  if (v15)
  {

    v15(v16);
    v17 = sub_100006B30();
    return sub_1000051F8(v17, v18);
  }

  return result;
}

uint64_t sub_10042043C(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  _CocoaArrayWrapper.endIndex.getter();
LABEL_9:
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v2 = result;
  return result;
}

uint64_t sub_1004204DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v6;
  if (!result || a1 > *(v6 + 24) >> 1)
  {
    result = a3();
    *v3 = result;
  }

  return result;
}

unsigned __int8 *sub_100420554(uint64_t a1, uint64_t a2, int64_t a3)
{
  v69 = a1;
  v70 = a2;

  result = String.init<A>(_:)();
  v6 = result;
  v7 = v5;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_100420ADC(result, v5);
    v40 = v39;

    v7 = v40;
    if ((v40 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v8 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
    }

    v9 = *result;
    if (v9 == 43)
    {
      if (v8 >= 1)
      {
        v22 = v8 - 1;
        if (v8 != 1)
        {
          v23 = a3 + 48;
          v24 = a3 + 55;
          v25 = a3 + 87;
          if (a3 > 10)
          {
            v23 = 58;
          }

          else
          {
            v25 = 97;
            v24 = 65;
          }

          if (result)
          {
            v14 = 0;
            v26 = result + 1;
            do
            {
              v27 = *v26;
              if (v27 < 0x30 || v27 >= v23)
              {
                if (v27 < 0x41 || v27 >= v24)
                {
                  v18 = 0;
                  if (v27 < 0x61 || v27 >= v25)
                  {
                    goto LABEL_129;
                  }

                  v28 = -87;
                }

                else
                {
                  v28 = -55;
                }
              }

              else
              {
                v28 = -48;
              }

              if (!is_mul_ok(v14, a3))
              {
                goto LABEL_128;
              }

              v29 = v14 * a3;
              v30 = v27 + v28;
              v21 = __CFADD__(v29, v30);
              v14 = v29 + v30;
              if (v21)
              {
                goto LABEL_128;
              }

              ++v26;
              --v22;
            }

            while (v22);
LABEL_47:
            v18 = v14;
            goto LABEL_129;
          }

          goto LABEL_67;
        }

LABEL_128:
        v18 = 0;
        goto LABEL_129;
      }

      goto LABEL_133;
    }

    if (v9 != 45)
    {
      if (v8)
      {
        v31 = a3 + 48;
        v32 = a3 + 55;
        v33 = a3 + 87;
        if (a3 > 10)
        {
          v31 = 58;
        }

        else
        {
          v33 = 97;
          v32 = 65;
        }

        if (result)
        {
          v34 = 0;
          do
          {
            v35 = *result;
            if (v35 < 0x30 || v35 >= v31)
            {
              if (v35 < 0x41 || v35 >= v32)
              {
                v18 = 0;
                if (v35 < 0x61 || v35 >= v33)
                {
                  goto LABEL_129;
                }

                v36 = -87;
              }

              else
              {
                v36 = -55;
              }
            }

            else
            {
              v36 = -48;
            }

            if (!is_mul_ok(v34, a3))
            {
              goto LABEL_128;
            }

            v37 = v34 * a3;
            v38 = v35 + v36;
            v21 = __CFADD__(v37, v38);
            v34 = v37 + v38;
            if (v21)
            {
              goto LABEL_128;
            }

            ++result;
            --v8;
          }

          while (v8);
          v18 = v34;
          goto LABEL_129;
        }

        goto LABEL_67;
      }

      goto LABEL_128;
    }

    if (v8 >= 1)
    {
      v10 = v8 - 1;
      if (v8 != 1)
      {
        v11 = a3 + 48;
        v12 = a3 + 55;
        v13 = a3 + 87;
        if (a3 > 10)
        {
          v11 = 58;
        }

        else
        {
          v13 = 97;
          v12 = 65;
        }

        if (result)
        {
          v14 = 0;
          v15 = result + 1;
          while (1)
          {
            v16 = *v15;
            if (v16 < 0x30 || v16 >= v11)
            {
              if (v16 < 0x41 || v16 >= v12)
              {
                v18 = 0;
                if (v16 < 0x61 || v16 >= v13)
                {
                  goto LABEL_129;
                }

                v17 = -87;
              }

              else
              {
                v17 = -55;
              }
            }

            else
            {
              v17 = -48;
            }

            if (!is_mul_ok(v14, a3))
            {
              goto LABEL_128;
            }

            v19 = v14 * a3;
            v20 = v16 + v17;
            v21 = v19 >= v20;
            v14 = v19 - v20;
            if (!v21)
            {
              goto LABEL_128;
            }

            ++v15;
            if (!--v10)
            {
              goto LABEL_47;
            }
          }
        }

LABEL_67:
        v18 = 0;
LABEL_129:

        return v18;
      }

      goto LABEL_128;
    }

    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v41 = HIBYTE(v7) & 0xF;
  v69 = v6;
  v70 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v41)
      {
        v43 = 0;
        v61 = a3 + 48;
        v62 = a3 + 55;
        v63 = a3 + 87;
        if (a3 > 10)
        {
          v61 = 58;
        }

        else
        {
          v63 = 97;
          v62 = 65;
        }

        v64 = &v69;
        while (1)
        {
          v65 = *v64;
          if (v65 < 0x30 || v65 >= v61)
          {
            if (v65 < 0x41 || v65 >= v62)
            {
              v18 = 0;
              if (v65 < 0x61 || v65 >= v63)
              {
                goto LABEL_129;
              }

              v66 = -87;
            }

            else
            {
              v66 = -55;
            }
          }

          else
          {
            v66 = -48;
          }

          if (!is_mul_ok(v43, a3))
          {
            goto LABEL_128;
          }

          v67 = v43 * a3;
          v68 = v65 + v66;
          v21 = __CFADD__(v67, v68);
          v43 = v67 + v68;
          if (v21)
          {
            goto LABEL_128;
          }

          v64 = (v64 + 1);
          if (!--v41)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    if (v41)
    {
      v42 = v41 - 1;
      if (v42)
      {
        v43 = 0;
        v44 = a3 + 48;
        v45 = a3 + 55;
        v46 = a3 + 87;
        if (a3 > 10)
        {
          v44 = 58;
        }

        else
        {
          v46 = 97;
          v45 = 65;
        }

        v47 = &v69 + 1;
        while (1)
        {
          v48 = *v47;
          if (v48 < 0x30 || v48 >= v44)
          {
            if (v48 < 0x41 || v48 >= v45)
            {
              v18 = 0;
              if (v48 < 0x61 || v48 >= v46)
              {
                goto LABEL_129;
              }

              v49 = -87;
            }

            else
            {
              v49 = -55;
            }
          }

          else
          {
            v49 = -48;
          }

          if (!is_mul_ok(v43, a3))
          {
            goto LABEL_128;
          }

          v50 = v43 * a3;
          v51 = v48 + v49;
          v21 = v50 >= v51;
          v43 = v50 - v51;
          if (!v21)
          {
            goto LABEL_128;
          }

          ++v47;
          if (!--v42)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    goto LABEL_132;
  }

  if (v41)
  {
    v52 = v41 - 1;
    if (v52)
    {
      v43 = 0;
      v53 = a3 + 48;
      v54 = a3 + 55;
      v55 = a3 + 87;
      if (a3 > 10)
      {
        v53 = 58;
      }

      else
      {
        v55 = 97;
        v54 = 65;
      }

      v56 = &v69 + 1;
      do
      {
        v57 = *v56;
        if (v57 < 0x30 || v57 >= v53)
        {
          if (v57 < 0x41 || v57 >= v54)
          {
            v18 = 0;
            if (v57 < 0x61 || v57 >= v55)
            {
              goto LABEL_129;
            }

            v58 = -87;
          }

          else
          {
            v58 = -55;
          }
        }

        else
        {
          v58 = -48;
        }

        if (!is_mul_ok(v43, a3))
        {
          goto LABEL_128;
        }

        v59 = v43 * a3;
        v60 = v57 + v58;
        v21 = __CFADD__(v59, v60);
        v43 = v59 + v60;
        if (v21)
        {
          goto LABEL_128;
        }

        ++v56;
        --v52;
      }

      while (v52);
LABEL_127:
      v18 = v43;
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_134:
  __break(1u);
  return result;
}

uint64_t sub_100420ADC(uint64_t a1, unint64_t a2)
{
  v2 = sub_100420B48(sub_100420B44, 0, a1, a2);
  v6 = sub_100420B7C(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_100420B7C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = Substring.UTF8View.distance(from:to:)();
    if (!v9 || (v10 = v9, v11 = sub_100049958(v9, 0), v12 = sub_100420CDC(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = static String._uncheckedFromUTF8(_:)();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return static String._uncheckedFromUTF8(_:)();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  _StringObject.sharedUTF8.getter();
LABEL_4:

  return static String._uncheckedFromUTF8(_:)();
}

unint64_t sub_100420CDC(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_36;
  }

  if (a3 < 0)
  {
    goto LABEL_40;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_36:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    result = v12;
    if ((v12 & 0xC) == v15)
    {
      result = sub_100420EEC(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = String.UTF8View._foreignSubscript(position:)();
      v19 = result;
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = _StringObject.sharedUTF8.getter();
        }

        v19 = *(result + v18);
      }
    }

    if ((v12 & 0xC) == v15)
    {
      result = sub_100420EEC(v12, a6, a7);
      v12 = result;
      if ((a7 & 0x1000000000000000) == 0)
      {
LABEL_27:
        v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_31;
      }
    }

    else if ((a7 & 0x1000000000000000) == 0)
    {
      goto LABEL_27;
    }

    if (v23 <= v12 >> 16)
    {
      goto LABEL_39;
    }

    result = String.UTF8View._foreignIndex(after:)();
    v12 = result;
LABEL_31:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_36;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_38;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}