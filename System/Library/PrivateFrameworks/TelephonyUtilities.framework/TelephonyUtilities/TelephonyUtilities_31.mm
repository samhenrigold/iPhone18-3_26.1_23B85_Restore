uint64_t sub_10046A7E0()
{
  sub_1000066BC();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100035FE0;
  sub_1000333B4();

  return v2();
}

double sub_10046A8F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  *(v25 + 24) = v26;
  *(v25 + 32) = 2080;
  *(v24 + 544) = a23;
  *(v24 + 552) = a24;

  return result;
}

uint64_t sub_10046A91C()
{

  return sub_10002741C(v0, v1, (v2 - 88));
}

BOOL sub_10046A938()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t sub_10046A950()
{
}

uint64_t sub_10046A9C0(void x0_0, void x1_0, void x2_0, void x3_0, void x4_0, void x5_0, void x6_0, void x7_0, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{

  return swift_arrayDestroy();
}

uint64_t sub_10046A9E0()
{

  return swift_task_create();
}

uint64_t sub_10046AA00(float a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, unint64_t a23)
{
  *v23 = a1;

  return sub_10002741C(v24, a23, (v25 - 88));
}

uint64_t sub_10046AA20()
{

  return swift_allocObject();
}

uint64_t sub_10046AA38()
{
  sub_1000115CC(v1, v0);

  return static DispatchQoS.unspecified.getter();
}

uint64_t sub_10046AA70()
{
  v1 = [v0 remoteMembers];
  sub_100006AF0(0, &qword_1006A3DE0, TUConversationMember_ptr);
  sub_10000CE3C(&qword_1006A2660, &qword_1006A3DE0, TUConversationMember_ptr);
  v2 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v3 = sub_10001E550();
  if (v3)
  {
    v4 = v3;
    v37 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    result = sub_10001E578();
    v34 = result;
    v35 = v6;
    v36 = v7 & 1;
    if ((v4 & 0x8000000000000000) == 0)
    {
      v8 = 0;
      while (!__OFADD__(v8++, 1))
      {
        v11 = v34;
        v10 = v35;
        v12 = v36;
        v13 = sub_10000534C();
        sub_1002E944C(v13, v14, v12, v2);
        v16 = v15;
        v17 = [v15 handle];

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        result = specialized ContiguousArray._endMutation()();
        if ((v2 & 0xC000000000000001) != 0)
        {
          if (!v12)
          {
            goto LABEL_32;
          }

          sub_10000534C();
          if (__CocoaSet.Index.handleBitPattern.getter())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          sub_10026D814(&unk_1006A3C40, &unk_100580340);
          v22 = Set.Index._asCocoa.modify();
          __CocoaSet.formIndex(after:isUnique:)();
          result = v22(v33, 0);
        }

        else
        {
          if (v12)
          {
            goto LABEL_33;
          }

          if ((v11 & 0x8000000000000000) != 0)
          {
            goto LABEL_28;
          }

          v18 = 1 << *(v2 + 32);
          if (v11 >= v18)
          {
            goto LABEL_28;
          }

          v19 = v11 >> 6;
          v20 = *(v2 + 56 + 8 * (v11 >> 6));
          if (((v20 >> v11) & 1) == 0)
          {
            goto LABEL_29;
          }

          if (*(v2 + 36) != v10)
          {
            goto LABEL_30;
          }

          v21 = v20 & (-2 << (v11 & 0x3F));
          if (v21)
          {
            v18 = __clz(__rbit64(v21)) | v11 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v23 = v19 << 6;
            v24 = v19 + 1;
            v25 = (v2 + 64 + 8 * v19);
            while (v24 < (v18 + 63) >> 6)
            {
              v27 = *v25++;
              v26 = v27;
              v23 += 64;
              ++v24;
              if (v27)
              {
                v28 = sub_10000534C();
                result = sub_100010000(v28, v29, 0);
                v18 = __clz(__rbit64(v26)) + v23;
                goto LABEL_22;
              }
            }

            v30 = sub_10000534C();
            result = sub_100010000(v30, v31, 0);
          }

LABEL_22:
          v34 = v18;
          v35 = v10;
          v36 = 0;
        }

        if (v8 == v4)
        {

          sub_100010000(v34, v35, v36);
          v32 = v37;
          return sub_1002F1FE8(v32);
        }
      }

      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
    }

    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {

    v32 = _swiftEmptyArrayStorage;
    return sub_1002F1FE8(v32);
  }

  return result;
}

uint64_t sub_10046AD88()
{
  v1 = [v0 avMode];
  if (v1 > 2)
  {
    return 1;
  }

  else
  {
    return qword_100588488[v1];
  }
}

id sub_10046AE3C@<X0>(unsigned int *a1@<X0>, void *a2@<X8>)
{
  *a2 = v2;
  v4 = *a1;
  v5 = type metadata accessor for InterventionRequest();
  (*(*(v5 - 8) + 104))(a2, v4, v5);

  return v7;
}

uint64_t type metadata accessor for DisclosureRequest(uint64_t a1)
{
  result = qword_1006AC580;
  if (!qword_1006AC580)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10046AF60(uint64_t a1)
{
  result = type metadata accessor for Locale();
  if (v2 <= 0x3F)
  {
    result = sub_10046B008();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_10046B008()
{
  result = qword_1006AC590;
  if (!qword_1006AC590)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1006AC590);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for disclosureRequestName(_BYTE *result, unsigned int a2, unsigned int a3)
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

Swift::Int sub_10046B140(char a1)
{
  sub_10000A4C4();
  Hasher._combine(_:)(a1 & 1);
  return Hasher._finalize()();
}

Swift::Int sub_10046B180()
{
  v0 = sub_10000A4C4();
  sub_1000088C0(v0);
  return Hasher._finalize()();
}

Swift::Int sub_10046B224(unsigned __int8 a1)
{
  sub_10000A4C4();
  Hasher._combine(_:)(a1 + 1);
  return Hasher._finalize()();
}

Swift::Int sub_10046B288(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v3 = Hasher.init(_seed:)();
  v4 = a2(v3);
  sub_10000F93C(v4, v5, v6, v7, v8, v9, v10, v11, v13);
  return Hasher._finalize()();
}

Swift::Int sub_10046B2D8(unsigned __int8 a1)
{
  sub_10000A4C4();
  Hasher._combine(_:)(a1);
  return Hasher._finalize()();
}

Swift::Int sub_10046B330(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  sub_10000A4C4();
  v4 = a2(a1);
  sub_10000ABAC(v4, v5, v6);

  return Hasher._finalize()();
}

Swift::Int sub_10046B380(Swift::UInt a1)
{
  sub_10000A4C4();
  Hasher._combine(_:)(a1);
  return Hasher._finalize()();
}

Swift::Int sub_10046B3C0(Swift::UInt32 a1)
{
  sub_10000A4C4();
  Hasher._combine(_:)(a1);
  return Hasher._finalize()();
}

Swift::Int sub_10046B400(uint64_t a1, char a2)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a2 & 1);
  return Hasher._finalize()();
}

Swift::Int sub_10046B444(uint64_t a1, char a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_10046B4F8(uint64_t a1, char a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_10046B570(uint64_t a1, unsigned __int8 a2)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a2 + 1);
  return Hasher._finalize()();
}

Swift::Int sub_10046B5D8(uint64_t a1)
{
  v1 = Hasher.init(_seed:)();
  sub_1000088C0(v1);
  return Hasher._finalize()();
}

Swift::Int sub_10046B630(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v4 = Hasher.init(_seed:)();
  v5 = a3(v4);
  sub_10000F93C(v5, v6, v7, v8, v9, v10, v11, v12, v14);
  return Hasher._finalize()();
}

Swift::Int sub_10046B694(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  Hasher.init(_seed:)();
  v5 = a3(a2);
  sub_10000ABAC(v5, v6, v7);

  return Hasher._finalize()();
}

Swift::Int sub_10046B6E8(uint64_t a1, unsigned __int8 a2)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a2);
  return Hasher._finalize()();
}

Swift::Int sub_10046B72C(uint64_t a1, Swift::UInt32 a2)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a2);
  return Hasher._finalize()();
}

uint64_t sub_10046B770(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100620F20, v2);

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_10046B7C4(char a1)
{
  if (a1)
  {
    return 0xD000000000000013;
  }

  else
  {
    return 0xD000000000000014;
  }
}

uint64_t sub_10046B81C@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10046B770(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_10046B84C@<X0>(unint64_t *a1@<X8>)
{
  result = sub_10046B7C4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_10046B87C()
{
  result = qword_1006AC5D8;
  if (!qword_1006AC5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006AC5D8);
  }

  return result;
}

uint64_t sub_10046B8F8(char a1, uint64_t a2, void *a3)
{
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  v6._countAndFlagsBits = 47;
  v6._object = 0xE100000000000000;
  String.append(_:)(v6);

  v7 = (a1 & 1) == 0;
  if (a1)
  {
    v8 = 0xD000000000000013;
  }

  else
  {
    v8 = 0xD000000000000014;
  }

  if (v7)
  {
    v9 = "joinSharePlayActivity";
  }

  else
  {
    v9 = "StartCallTranslation";
  }

  v10._object = (v9 | 0x8000000000000000);
  v10._countAndFlagsBits = v8;
  String.append(_:)(v10);

  v11._countAndFlagsBits = a2;
  v11._object = a3;
  String.append(_:)(v11);

  return v13;
}

uint64_t sub_10046BA00(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for URL();
  sub_100007FEC();
  v7 = v6;
  __chkstk_darwin(v8);
  sub_1000088F0();
  __chkstk_darwin(v9);
  sub_10000ABD0();
  sub_10046BC94(a1);
  sub_10000A4DC();
  v10 = *(v7 + 8);
  v10(v2, v5);
  URL.appendingPathComponent(_:)();
  return (v10)(v3, v5);
}

uint64_t sub_10046BB1C(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for URL();
  sub_100007FEC();
  v7 = v6;
  __chkstk_darwin(v8);
  sub_1000088F0();
  __chkstk_darwin(v9);
  sub_10000ABD0();
  sub_10046BC94(a1);
  sub_10000A4DC();
  v10 = *(v7 + 8);
  v10(v2, v5);
  URL.appendingPathComponent(_:)();
  return (v10)(v3, v5);
}

uint64_t sub_10046BC30()
{
  v0 = type metadata accessor for URL();
  sub_1002861B8(v0, qword_1006BAA60);
  sub_10000AF9C(v0, qword_1006BAA60);
  return URL.init(fileURLWithPath:)();
}

uint64_t sub_10046BC94(uint64_t a1)
{
  v1 = sub_10026D814(&unk_1006A52C0, &unk_10057D930);
  __chkstk_darwin(v1 - 8);
  v3 = &v9 - v2;
  v4 = [objc_opt_self() defaultManager];
  v5 = [v4 URLsForDirectory:5 inDomains:1];

  v6 = type metadata accessor for URL();
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1002E8B38(v7, v3);

  result = sub_100015468(v3, 1, v6);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {

    URL.appendingPathComponent(_:isDirectory:)();
    return (*(*(v6 - 8) + 8))(v3, v6);
  }

  return result;
}

void sub_10046BE00()
{
  sub_100005EF4();
  v1 = v0;
  v2 = type metadata accessor for DisclosureRequest(0);
  sub_100008070();
  __chkstk_darwin(v3);
  sub_10000F4E8();
  v69 = v4;
  sub_100006838();
  __chkstk_darwin(v5);
  v68 = &v67 - v6;
  sub_100006838();
  __chkstk_darwin(v7);
  v71 = &v67 - v8;
  sub_100006838();
  __chkstk_darwin(v9);
  v11 = &v67 - v10;
  type metadata accessor for LanguageManager();
  sub_100007FEC();
  v72 = v13;
  v73 = v12;
  __chkstk_darwin(v12);
  sub_100007FDC();
  v16 = v15 - v14;
  [objc_allocWithZone(TUFeatureFlags) init];
  LanguageManager.init(featureFlags:)();
  v17 = *(v2 + 32);
  v18 = (v1 + *(v2 + 28));
  v19 = *v18;
  v20 = v18[1];
  v21 = *(v1 + v17);
  v22 = *(v1 + v17 + 8);
  v23 = TUBundle();
  if (v23)
  {
    v24 = v23;
    v70 = v2;
    v25.value._countAndFlagsBits = Locale.identifier.getter();
    v27 = v26;
    v28._countAndFlagsBits = v19;
    v28._object = v20;
    v29._countAndFlagsBits = v21;
    v29._object = v22;
    v25.value._object = v27;
    v30 = LanguageManager.localizedString(forKey:table:bundle:languageCode:)(v28, v29, v24, v25);

    if (v30.value._object)
    {
      if (qword_1006A0B58 != -1)
      {
        sub_1000081B4(&qword_1006A0B58);
      }

      v31 = type metadata accessor for Logger();
      sub_10000AF9C(v31, qword_1006BA688);
      v32 = sub_10000667C();
      sub_1003812B0(v32, v11);
      v33 = v71;
      sub_1003812B0(v1, v71);

      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v34, v35))
      {
        v36 = sub_100005E84();
        v69 = v16;
        v37 = v36;
        v68 = swift_slowAlloc();
        object = v30.value._object;
        v76 = v68;
        *v37 = 136315650;
        countAndFlagsBits = v30.value._countAndFlagsBits;

        v38 = String.init<A>(reflecting:)();
        v40 = v39;
        v41 = sub_10002741C(v38, v39, &v76);

        *(v37 + 4) = v41;
        *(v37 + 12) = 2080;
        LOBYTE(countAndFlagsBits) = *v11;
        String.init<A>(reflecting:)();
        sub_10000C8E0();
        sub_1002B66D4(v11);
        v42 = sub_10000B8D0();
        sub_10002741C(v42, v43, v44);
        sub_100022DC4();
        *(v37 + 14) = v40;
        *(v37 + 22) = 2080;
        v45 = v33 + *(v70 + 20);
        countAndFlagsBits = Locale.identifier.getter();
        object = v46;
        String.init<A>(reflecting:)();
        sub_10000C8E0();
        sub_1002B66D4(v33);
        v47 = sub_10000B8D0();
        sub_10002741C(v47, v48, v49);
        sub_100022DC4();
        *(v37 + 24) = v45;
        _os_log_impl(&_mh_execute_header, v34, v35, "disclosureUtterance:%s for %s locale: %s", v37, 0x20u);
        v50 = v68;
        swift_arrayDestroy();
        sub_100005F40(v50);
        sub_100005F40(v37);

        (*(v72 + 8))(v69, v73);
      }

      else
      {

        sub_1002B66D4(v33);
        sub_1002B66D4(v11);
        (*(v72 + 8))(v16, v73);
      }
    }

    else
    {
      if (qword_1006A0B58 != -1)
      {
        sub_1000081B4(&qword_1006A0B58);
      }

      v51 = type metadata accessor for Logger();
      sub_10000AF9C(v51, qword_1006BA688);
      v52 = sub_10000667C();
      v53 = v68;
      sub_1003812B0(v52, v68);
      v54 = v69;
      sub_1003812B0(v1, v69);
      v55 = Logger.logObject.getter();
      v56 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        v58 = swift_slowAlloc();
        v76 = v58;
        *v57 = 136315394;
        LOBYTE(countAndFlagsBits) = *v53;
        String.init<A>(reflecting:)();
        sub_10000C8E0();
        sub_1002B66D4(v53);
        v59 = sub_10000B8D0();
        sub_10002741C(v59, v60, v61);
        sub_100022DC4();
        *(v57 + 4) = v16;
        *(v57 + 12) = 2080;
        v62 = v54 + *(v70 + 20);
        countAndFlagsBits = Locale.identifier.getter();
        object = v63;
        String.init<A>(reflecting:)();
        sub_10000C8E0();
        sub_1002B66D4(v54);
        v64 = sub_10000B8D0();
        sub_10002741C(v64, v65, v66);
        sub_100022DC4();
        *(v57 + 14) = v62;
        _os_log_impl(&_mh_execute_header, v55, v56, "Unable to localize %s for locale %s. Not creating an outgoing message", v57, 0x16u);
        swift_arrayDestroy();
        sub_100005F40(v58);
        sub_100005F40(v57);
      }

      else
      {

        sub_1002B66D4(v54);
        sub_1002B66D4(v53);
      }

      (*(v72 + 8))(v16, v73);
    }

    sub_100005EDC();
  }

  else
  {
    __break(1u);
  }
}

void sub_10046C380()
{
  sub_100005EF4();
  v1 = v0;
  v100 = v2;
  v102 = v3;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  type metadata accessor for Locale();
  sub_100007FEC();
  v91 = v13;
  v92 = v12;
  __chkstk_darwin(v12);
  sub_100007FDC();
  v90 = v15 - v14;
  v16 = sub_10000D414();
  v17 = type metadata accessor for DisclosureRequest(v16);
  sub_100007FEC();
  v94 = v18;
  v20 = __chkstk_darwin(v19);
  v99 = &v86 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  sub_10000C1C4();
  v97 = v22;
  v95 = v23;
  __chkstk_darwin(v24);
  sub_10000C1C4();
  v93 = v25;
  sub_10000D414();
  v88 = type metadata accessor for URL();
  sub_100007FEC();
  v87 = v26;
  __chkstk_darwin(v27);
  sub_100007FDC();
  v89 = v29 - v28;
  sub_10000D414();
  v30 = type metadata accessor for LanguageManager();
  sub_100007FEC();
  v32 = v31;
  __chkstk_darwin(v33);
  sub_100007FDC();
  v36 = v35 - v34;
  v37 = v1 + OBJC_IVAR____TtC13callservicesd19DisclosureGenerator_disclosureBeepChecksum;
  *v37 = 0u;
  *(v37 + 16) = 0u;
  *(v37 + 32) = 0;
  v1[2] = v11;
  v1[3] = v9;
  v1[4] = v7;
  sub_1003812B0(v5, v1 + OBJC_IVAR____TtC13callservicesd19DisclosureGenerator_disclosureRequest);
  v38 = objc_allocWithZone(TUFeatureFlags);
  v98 = v11;
  v101 = v9;
  swift_unknownObjectRetain();
  [v38 init];
  LanguageManager.init(featureFlags:)();
  (*(v32 + 32))(v1 + OBJC_IVAR____TtC13callservicesd19DisclosureGenerator_languageManager, v36, v30);
  *(v1 + OBJC_IVAR____TtC13callservicesd19DisclosureGenerator_disclosureUtilities) = v102;
  LOBYTE(v38) = *v5;
  v96 = v17[5];
  v39 = Locale.identifier.getter();
  v41 = v40;

  v42 = sub_10046B8F8(v38, v39, v41);
  v43 = (v1 + OBJC_IVAR____TtC13callservicesd19DisclosureGenerator_disclosureFileLocation);
  *v43 = v42;
  v43[1] = v44;
  if (v5[v17[10]] == 1)
  {
    if (qword_1006A0C58 != -1)
    {
      swift_once();
    }

    v45 = v88;
    v46 = sub_10000AF9C(v88, qword_1006BAA60);
    v47 = v89;
    (*(v87 + 16))(v89, v46, v45);
    v48 = [objc_opt_self() tu_defaults];
    v49 = type metadata accessor for FileChecksum(0);
    swift_allocObject();
    v50 = sub_1003FCFE8(0x6365684370656542, 0xEC0000006D75736BLL, v47, v48);
    if (v50)
    {
      v51 = &off_10062EC60;
    }

    else
    {
      v49 = 0;
      v51 = 0;
      v104[1] = 0;
      v104[2] = 0;
    }

    v104[0] = v50;
    v104[3] = v49;
    v104[4] = v51;
    swift_beginAccess();
    sub_10046EC28(v104, v37);
    swift_endAccess();
  }

  type metadata accessor for DisclosureGenerator(0);
  sub_10046BE00();
  v53 = v52;
  v55 = v54;
  v56 = &v5[v17[6]];
  v57 = *v56;
  v58 = v56[1];
  v59 = objc_opt_self();

  v60 = [v59 tu_defaults];
  v61 = sub_10026D814(&qword_1006A4390, &qword_10057F110);
  swift_allocObject();
  v62 = sub_1002E86B8(v57, v58, v53, v55, v60);
  v63 = (v1 + OBJC_IVAR____TtC13callservicesd19DisclosureGenerator_disclosureUtteranceChecksum);
  v63[3] = v61;
  v63[4] = &off_10062EC60;
  *v63 = v62;
  v64 = v1[3];
  v65 = swift_allocObject();
  swift_weakInit();
  v66 = v93;
  sub_1003812B0(v5, v93);
  v67 = (*(v94 + 80) + 24) & ~*(v94 + 80);
  v68 = swift_allocObject();
  *(v68 + 16) = v65;
  sub_10046EB60(v66, v68 + v67);
  *(v64 + 96) = sub_10046EBC4;
  *(v64 + 104) = v68;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();

  if (qword_1006A0B58 != -1)
  {
    sub_1000081B4(&qword_1006A0B58);
  }

  v69 = type metadata accessor for Logger();
  sub_10000AF9C(v69, qword_1006BA688);
  v70 = v97;
  sub_1003812B0(v5, v97);
  v71 = v99;
  sub_1003812B0(v5, v99);
  v72 = Logger.logObject.getter();
  v73 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v72, v73))
  {
    v74 = swift_slowAlloc();
    v75 = swift_slowAlloc();
    v104[0] = v75;
    *v74 = 136315394;
    v103 = *v70;
    v76 = v5;
    v77 = String.init<A>(reflecting:)();
    v78 = v70;
    v80 = v79;
    sub_1002B66D4(v78);
    v81 = sub_10002741C(v77, v80, v104);

    *(v74 + 4) = v81;
    *(v74 + 12) = 2080;
    (*(v91 + 16))(v90, v71 + v17[5], v92);
    v82 = String.init<A>(reflecting:)();
    v84 = v83;
    sub_1002B66D4(v71);
    v85 = sub_10002741C(v82, v84, v104);

    *(v74 + 14) = v85;
    v5 = v76;
    _os_log_impl(&_mh_execute_header, v72, v73, "initialized DisclosureGenerator for %s, locale: %s", v74, 0x16u);
    swift_arrayDestroy();
    sub_100005F40(v75);
    sub_100005F40(v74);
  }

  else
  {

    sub_1002B66D4(v71);
    sub_1002B66D4(v70);
  }

  Locale.identifier.getter();
  sub_10046D004();

  swift_unknownObjectRelease();

  sub_1002B66D4(v5);
  sub_100005EDC();
}

uint64_t sub_10046CB54(uint64_t a1)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_10046D004();
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    type metadata accessor for DisclosureRequest(0);
    Locale.identifier.getter();
    sub_10046D004();
  }

  return result;
}

void sub_10046CC28()
{
  sub_100005EF4();
  v2 = type metadata accessor for URL();
  sub_100007FEC();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_10000F4E8();
  v30 = v6;
  sub_100006838();
  __chkstk_darwin(v7);
  v9 = &v29 - v8;
  v10 = v0 + OBJC_IVAR____TtC13callservicesd19DisclosureGenerator_disclosureRequest;
  v11 = *(v10 + *(type metadata accessor for DisclosureRequest(0) + 40));
  v12 = v0 + OBJC_IVAR____TtC13callservicesd19DisclosureGenerator_disclosureFileLocation;
  v14 = *(v0 + OBJC_IVAR____TtC13callservicesd19DisclosureGenerator_disclosureFileLocation);
  v13 = *(v12 + 8);

  if (v11 == 1)
  {
    sub_10046BB1C(v14, v13);

    sub_10046CF7C();
    v15 = sub_100015C44();
    v13(v15);
    if (qword_1006A0B58 != -1)
    {
      sub_1000081B4(&qword_1006A0B58);
    }

    v16 = type metadata accessor for Logger();
    sub_10000AF9C(v16, qword_1006BA688);

    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = sub_100005E84();
      v29 = v13;
      v21 = v20;
      v31 = v20;
      sub_10000EC54(1.5047e-36);
      sub_10046BB1C(v1, v12);
LABEL_10:

      (*(v4 + 16))(v30, v9, v2);
      v25 = String.init<A>(reflecting:)();
      v27 = v26;
      v29(v9, v2);
      v28 = sub_10002741C(v25, v27, &v31);

      *(v19 + 10) = v28;
      _os_log_impl(&_mh_execute_header, v17, v18, "disclsoure file exists: %{BOOL}d at %s", v19, 0x12u);
      sub_100009B7C(v21);
      sub_100005F40(v21);
      sub_100005F40(v19);
    }
  }

  else
  {
    sub_10046BA00(v14, v13);

    sub_10046CF7C();
    v22 = sub_100015C44();
    v13(v22);
    if (qword_1006A0B58 != -1)
    {
      sub_1000081B4(&qword_1006A0B58);
    }

    v23 = type metadata accessor for Logger();
    sub_10000AF9C(v23, qword_1006BA688);

    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v24 = sub_100005E84();
      v29 = v13;
      v21 = v24;
      v31 = v24;
      sub_10000EC54(1.5047e-36);
      sub_10046BA00(v1, v12);
      goto LABEL_10;
    }
  }

  sub_100005EDC();
}

id sub_10046CF7C()
{
  v0 = [objc_opt_self() defaultManager];
  URL.path.getter();
  v1 = String._bridgeToObjectiveC()();

  v2 = [v0 fileExistsAtPath:v1];

  return v2;
}

void sub_10046D004()
{
  sub_100005EF4();
  v224 = v0;
  v2 = v1;
  v4 = v3;
  v215 = v5;
  v6 = sub_10026D814(&qword_1006A5360, &qword_10057CB80);
  __chkstk_darwin(v6 - 8);
  v211 = &v203 - v7;
  sub_10000D414();
  v218 = type metadata accessor for URL();
  sub_100007FEC();
  v210 = v8;
  __chkstk_darwin(v9);
  sub_10000F4E8();
  v208 = v10;
  sub_100006838();
  __chkstk_darwin(v11);
  v209 = &v203 - v12;
  sub_100006838();
  __chkstk_darwin(v13);
  sub_10000C1C4();
  v217 = v14;
  v15 = sub_10000D414();
  v16 = type metadata accessor for DisclosureRequest(v15);
  sub_100008070();
  __chkstk_darwin(v17);
  sub_10000F4E8();
  v207 = v18;
  sub_100006838();
  __chkstk_darwin(v19);
  sub_10000C1C4();
  v220 = v20;
  sub_10000D414();
  v21 = type metadata accessor for Locale();
  sub_100007FEC();
  v23 = v22;
  v25 = __chkstk_darwin(v24);
  v27 = &v203 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin(v25);
  v30 = &v203 - v29;
  __chkstk_darwin(v28);
  sub_10000C1C4();
  v214 = v31;
  if (v2)
  {
    v32 = v2;
  }

  else
  {
    v33 = v31;
    static Locale.current.getter();
    v4 = Locale.identifier.getter();
    v32 = v34;
    (*(v23 + 8))(v33, v21);
  }

  v222 = v16;
  v223 = (v224 + OBJC_IVAR____TtC13callservicesd19DisclosureGenerator_disclosureRequest);
  v35 = *(v23 + 16);
  v36 = v224 + OBJC_IVAR____TtC13callservicesd19DisclosureGenerator_disclosureRequest + *(v16 + 20);
  v219 = (v23 + 16);
  v221 = v35;
  (v35)(v30, v36, v21);
  v37 = Locale.identifier.getter();
  v39 = v38;
  v40 = *(v23 + 8);

  v216 = v21;
  v213 = v40;
  v212 = v23 + 8;
  (v40)(v30, v21);
  v41 = v37 == v4 && v39 == v32;
  v42 = v32;
  if (v41)
  {
  }

  else
  {
    v43 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v43 & 1) == 0)
    {
      v44 = v222;
      if (qword_1006A0B50 != -1)
      {
        sub_100008194(&qword_1006A0B50);
      }

      v45 = type metadata accessor for Logger();
      sub_100008CF0(v45, qword_1006BA670);

      v46 = Logger.logObject.getter();
      v47 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        v49 = v4;
        v50 = swift_slowAlloc();
        v226[0] = v50;
        *v48 = 136315394;
        (v221)(v214, &v223[*(v44 + 20)], v216);
        v51 = Locale.identifier.getter();
        v53 = v52;
        v54 = sub_10000B8D0();
        v213(v54);
        v55 = sub_10002741C(v51, v53, v226);

        *(v48 + 4) = v55;
        *(v48 + 12) = 2080;
        v56 = sub_10002741C(v49, v32, v226);

        *(v48 + 14) = v56;
        _os_log_impl(&_mh_execute_header, v46, v47, "disclosureRequest locale: %s doesn't match %s", v48, 0x16u);
        swift_arrayDestroy();
        sub_100005F40(v50);
        sub_100005F40(v48);
      }

      else
      {
      }

      goto LABEL_46;
    }
  }

  v57 = v4;
  type metadata accessor for DisclosureGenerator(0);
  v58 = v223;
  v59 = v220;
  sub_1003812B0(v223, v220);
  sub_10046BE00();
  v61 = v60;
  v63 = v62;
  sub_1002B66D4(v59);
  if (v63)
  {
    v204 = v61;
    v205 = v63;
    v64 = *(v224 + OBJC_IVAR____TtC13callservicesd19DisclosureGenerator_disclosureUtteranceChecksum + 24);
    v65 = *(v224 + OBJC_IVAR____TtC13callservicesd19DisclosureGenerator_disclosureUtteranceChecksum + 32);
    v206 = (v224 + OBJC_IVAR____TtC13callservicesd19DisclosureGenerator_disclosureUtteranceChecksum);
    sub_100009B14((v224 + OBJC_IVAR____TtC13callservicesd19DisclosureGenerator_disclosureUtteranceChecksum), v64);
    sub_1000083C0();
    __chkstk_darwin(v66);
    v68 = sub_100017464(v67);
    v69(v68);
    v70 = sub_10000D5BC();
    v71(v70);
    v72 = sub_100007E9C();
    v73(v72, v64);
    if (v65)
    {

      v75 = v222;
      v74 = v223;
      v76 = v221;
LABEL_36:
      v137 = v216;
      if (qword_1006A0B50 != -1)
      {
        sub_100008194(&qword_1006A0B50);
      }

      v138 = type metadata accessor for Logger();
      sub_100008CF0(v138, qword_1006BA670);
      v139 = Logger.logObject.getter();
      v140 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v139, v140))
      {
        v141 = swift_slowAlloc();
        v203 = swift_slowAlloc();
        v226[0] = v203;
        *v141 = 136316162;
        v142 = v220;
        sub_1003812B0(v74, v220);
        sub_10000FB64();
        v143 = String.init<A>(reflecting:)();
        LODWORD(v207) = v140;
        v144 = v143;
        v146 = v145;
        sub_1002B66D4(v142);
        v147 = sub_10002741C(v144, v146, v226);

        *(v141 + 4) = v147;
        *(v141 + 12) = 2080;
        v148 = sub_1000163E8();
        (v76)(v148);
        sub_1002E8ABC();
        v149 = dispatch thunk of CustomStringConvertible.description.getter();
        v150 = sub_100016124();
        v151(v150);
        v152 = sub_10002741C(v149, v142, v226);

        *(v141 + 14) = v152;
        *(v141 + 22) = 2080;
        v153 = v206[3];
        v154 = v206[4];
        sub_100009B14(v206, v153);
        sub_1000083C0();
        v156 = v155;
        __chkstk_darwin(v157);
        sub_100007FDC();
        v160 = v159 - v158;
        (*(v156 + 16))(v159 - v158);
        LOBYTE(v154) = (*(v154 + 8))(v153, v154);
        (*(v156 + 8))(v160, v153);
        v74 = v223;
        LOBYTE(v225[0]) = v154 & 1;
        v161 = String.init<A>(reflecting:)();
        v163 = sub_10002741C(v161, v162, v226);

        *(v141 + 24) = v163;
        *(v141 + 32) = 2080;
        sub_10046CC28();
        LOBYTE(v225[0]) = v164 & 1;
        v165 = String.init<A>(reflecting:)();
        v167 = sub_10002741C(v165, v166, v226);

        *(v141 + 34) = v167;
        *(v141 + 42) = 2080;
        v75 = v222;
        LOBYTE(v225[0]) = v215 & 1;
        v168 = String.init<A>(reflecting:)();
        v170 = sub_10002741C(v168, v169, v226);

        *(v141 + 44) = v170;
        _os_log_impl(&_mh_execute_header, v139, v207, "Generating disclosure for %s %s because disclosureUtteranceChecksum:%s fileExists:%s force: %s", v141, 0x34u);
        v171 = v203;
        swift_arrayDestroy();
        sub_100005F40(v171);
        sub_100005F40(v141);
      }

      v172 = v224;
      v173 = *(v224 + 16);
      v174 = *v74 == 0;
      v175 = 0xD000000000000013;
      if (!*v74)
      {
        v175 = 0xD000000000000014;
      }

      v222 = *(v224 + OBJC_IVAR____TtC13callservicesd19DisclosureGenerator_disclosureUtilities);
      v223 = v175;
      if (v174)
      {
        v176 = "joinSharePlayActivity";
      }

      else
      {
        v176 = "StartCallTranslation";
      }

      v220 = v176;
      v177 = (v224 + OBJC_IVAR____TtC13callservicesd19DisclosureGenerator_disclosureFileLocation);
      v178 = *(v224 + OBJC_IVAR____TtC13callservicesd19DisclosureGenerator_disclosureFileLocation);
      v179 = *(v224 + OBJC_IVAR____TtC13callservicesd19DisclosureGenerator_disclosureFileLocation + 8);

      v219 = v173;

      sub_10046BA00(v178, v179);

      v180 = v211;
      (v221)(v211, &v74[*(v75 + 20)], v137);
      sub_10000AF74(v180, 0, 1, v137);
      v181 = *(v172 + 32);
      v214 = *(v172 + 24);
      v182 = *v177;
      swift_unknownObjectRetain();

      v183 = v208;
      sub_10046BC94(v182);

      v184 = v209;
      URL.appendingPathComponent(_:)();
      v216 = *(v210 + 8);
      v216(v183, v218);
      v185 = v206[3];
      v186 = v206[4];
      sub_100009B14(v206, v185);
      v221 = &v203;
      sub_1000083C0();
      __chkstk_darwin(v187);
      sub_100007FDC();
      v189 = sub_100017464(v188);
      v190(v189);
      (*(v186 + 8))(v185, v186);
      v191 = sub_100007E9C();
      v192(v191, v185);
      v193 = swift_allocObject();
      v194 = v204;
      v193[2] = v172;
      v193[3] = v194;
      v195 = v205;
      v193[4] = v205;

      BYTE1(v201) = v186 & 1;
      LOBYTE(v201) = v215 & 1;
      v200 = v181;
      v196 = v219;
      v197 = v217;
      sub_100463470(v219, v194, v195, v223, v220 | 0x8000000000000000, v217, v180, v214, v200, v184, v201, sub_10046EB4C, v193, v202, v203, v204, v205, v206, v207, v208, v209, v210, v211, BYTE1(v211), v212, v213);

      swift_unknownObjectRelease();

      v198 = v218;
      v199 = v216;
      v216(v184, v218);
      sub_100009A04(v180, &qword_1006A5360, &qword_10057CB80);
      v199(v197, v198);
      goto LABEL_46;
    }

    v90 = OBJC_IVAR____TtC13callservicesd19DisclosureGenerator_disclosureBeepChecksum;
    v91 = v224;
    swift_beginAccess();
    sub_1002E86CC(v91 + v90, v226);
    v92 = v227;
    if (v227)
    {
      v93 = v228;
      sub_100009B14(v226, v227);
      sub_1000083C0();
      __chkstk_darwin(v94);
      sub_100007FDC();
      v96 = sub_100017464(v95);
      v97(v96);
      sub_100009A04(v226, &qword_1006A4398, &qword_10057F118);
      v98 = sub_10000D5BC();
      v99(v98);
      v100 = sub_100007E9C();
      v101(v100, v92);
      v76 = v221;
      if (v93)
      {

        v75 = v222;
        v74 = v223;
        goto LABEL_36;
      }
    }

    else
    {
      sub_100009A04(v226, &qword_1006A4398, &qword_10057F118);
      v76 = v221;
    }

    v74 = v223;
    if (v215)
    {

      v75 = v222;
      goto LABEL_36;
    }

    sub_10046CC28();
    v75 = v222;
    if ((v102 & 1) == 0)
    {

      goto LABEL_36;
    }

    if (qword_1006A0B50 != -1)
    {
      sub_100008194(&qword_1006A0B50);
    }

    v103 = type metadata accessor for Logger();
    sub_100008CF0(v103, qword_1006BA670);

    v104 = Logger.logObject.getter();
    v105 = static os_log_type_t.info.getter();

    v106 = os_log_type_enabled(v104, v105);
    v107 = v206;
    if (v106)
    {
      v108 = swift_slowAlloc();
      v221 = swift_slowAlloc();
      v225[0] = v221;
      *v108 = 136316162;
      v109 = v220;
      sub_1003812B0(v223, v220);
      sub_10000FB64();
      v110 = String.init<A>(reflecting:)();
      LODWORD(v223) = v105;
      v111 = v110;
      v113 = v112;
      sub_1002B66D4(v109);
      v114 = sub_10002741C(v111, v113, v225);

      *(v108 + 4) = v114;
      *(v108 + 12) = 2080;
      v226[0] = v57;
      v226[1] = v42;
      v115 = String.init<A>(reflecting:)();
      v117 = sub_10002741C(v115, v116, v225);

      *(v108 + 14) = v117;
      *(v108 + 22) = 2080;
      v118 = v107[3];
      v119 = v107[4];
      sub_100009B14(v107, v118);
      sub_1000083C0();
      v121 = v120;
      __chkstk_darwin(v122);
      sub_100007FDC();
      (*(v121 + 16))(v124 - v123);
      LOBYTE(v119) = (*(v119 + 8))(v118, v119);
      v125 = sub_10000B8D0();
      v126(v125);
      LOBYTE(v226[0]) = v119 & 1;
      v127 = String.init<A>(reflecting:)();
      v129 = sub_10002741C(v127, v128, v225);

      *(v108 + 24) = v129;
      *(v108 + 32) = 2080;
      v130 = v224;
      sub_10046CC28();
      LOBYTE(v226[0]) = v131 & 1;
      v132 = String.init<A>(reflecting:)();
      sub_10002741C(v132, v133, v225);
      sub_10000667C();

      *(v108 + 34) = v130;
      *(v108 + 42) = 2080;
      LOBYTE(v226[0]) = 0;
      v134 = String.init<A>(reflecting:)();
      sub_10002741C(v134, v135, v225);
      sub_10000667C();

      *(v108 + 44) = v130;
      _os_log_impl(&_mh_execute_header, v104, v223, "Not generating disclosure for %s localeIdentifier: %s  becuase %s, fileExists:%s force: %s", v108, 0x34u);
      v136 = v221;
      swift_arrayDestroy();
      sub_100005F40(v136);
      sub_100005F40(v108);
    }

    else
    {
    }
  }

  else
  {

    if (qword_1006A0B50 != -1)
    {
      sub_100008194(&qword_1006A0B50);
    }

    v77 = type metadata accessor for Logger();
    sub_100008CF0(v77, qword_1006BA670);
    v78 = Logger.logObject.getter();
    v79 = static os_log_type_t.error.getter();

    v80 = os_log_type_enabled(v78, v79);
    v81 = v216;
    if (v80)
    {
      v82 = swift_slowAlloc();
      v83 = sub_100005E84();
      v226[0] = v83;
      *v82 = 136315138;
      v84 = sub_1000163E8();
      v85 = v221;
      (v221)(v84);
      (v85)(v27, v58, v81);
      v86 = String.init<A>(reflecting:)();
      v87 = sub_100016124();
      v88(v87);
      v89 = sub_10002741C(v86, v85, v226);

      *(v82 + 4) = v89;
      _os_log_impl(&_mh_execute_header, v78, v79, "Unable to localize start disclosure for locale %s. Not creating start recording disclosure", v82, 0xCu);
      sub_100009B7C(v83);
      sub_100005F40(v83);
      sub_100005F40(v82);
    }
  }

LABEL_46:
  sub_100005EDC();
}

uint64_t sub_10046E230(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v53 = a4;
  v54 = a5;
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v48 - v13;
  __chkstk_darwin(v12);
  v16 = &v48 - v15;
  v17 = (a3 + OBJC_IVAR____TtC13callservicesd19DisclosureGenerator_disclosureFileLocation);
  v18 = *(a3 + OBJC_IVAR____TtC13callservicesd19DisclosureGenerator_disclosureFileLocation);
  v19 = *(a3 + OBJC_IVAR____TtC13callservicesd19DisclosureGenerator_disclosureFileLocation + 8);

  sub_10046BA00(v18, v19);

  URL.deletingLastPathComponent()();
  v20 = *(v8 + 8);
  v20(v11, v7);
  v52 = "esd19DisclosureUtilities";
  URL.appendingPathComponent(_:)();
  v55 = v20;
  v20(v14, v7);
  v21 = [objc_opt_self() defaultManager];
  URL.path.getter();
  v22 = String._bridgeToObjectiveC()();

  LODWORD(v11) = [v21 fileExistsAtPath:v22];

  v23 = v11 ^ 1;
  if ((a1 & 1) == 0 && !v23)
  {
    return v55(v16, v7);
  }

  v50 = a3;
  if (qword_1006A0B50 != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  sub_10000AF9C(v25, qword_1006BA670);
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();
  v28 = os_log_type_enabled(v26, v27);
  v51 = v7;
  if (v28)
  {
    v29 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v57[0] = v49;
    *v29 = 136315394;
    HIBYTE(v56) = a1 & 1;
    v30 = String.init<A>(reflecting:)();
    v32 = sub_10002741C(v30, v31, v57);

    *(v29 + 4) = v32;
    *(v29 + 12) = 2080;
    HIBYTE(v56) = v23;
    v33 = String.init<A>(reflecting:)();
    v35 = sub_10002741C(v33, v34, v57);

    *(v29 + 14) = v35;
    _os_log_impl(&_mh_execute_header, v26, v27, "wroteNewFile: %s or disclosureWithEndtone doesn't exist: %s. Creating new disclosure with endtone.", v29, 0x16u);
    swift_arrayDestroy();
  }

  v36 = v50;
  v37 = v50 + OBJC_IVAR____TtC13callservicesd19DisclosureGenerator_disclosureRequest;
  if (*(v37 + *(type metadata accessor for DisclosureRequest(0) + 40)) == 1)
  {
    v38 = *v17;
    v39 = v17[1];

    sub_10046BA00(v38, v39);

    v40 = *(v36 + 16);

    sub_100464E90(v53, v54, v14, 0xD000000000000016, v52 | 0x8000000000000000, 1, v40, sub_10046EB58, v36, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57[0], v57[1]);

    v41 = v14;
    v42 = v51;
    v43 = v55;
    v55(v41, v51);
  }

  else
  {
    v44 = [objc_opt_self() defaultCenter];
    if (qword_1006A0798 != -1)
    {
      swift_once();
    }

    [v44 postNotificationName:qword_1006BA1C8 object:0];

    v42 = v51;
    v43 = v55;
  }

  sub_100009AB0(v36 + OBJC_IVAR____TtC13callservicesd19DisclosureGenerator_disclosureUtteranceChecksum, v57);
  v45 = v58;
  v46 = v59;
  sub_100009B14(v57, v58);
  (*(v46 + 16))(v45, v46);
  v43(v16, v42);
  return sub_100009B7C(v57);
}

uint64_t sub_10046E784(uint64_t a1, uint64_t a2)
{
  v3 = [objc_opt_self() defaultCenter];
  if (qword_1006A0798 != -1)
  {
    swift_once();
  }

  [v3 postNotificationName:qword_1006BA1C8 object:0];

  v4 = OBJC_IVAR____TtC13callservicesd19DisclosureGenerator_disclosureBeepChecksum;
  swift_beginAccess();
  sub_1002E86CC(a2 + v4, v11);
  if (!v12)
  {
    return sub_100009A04(v11, &qword_1006A4398, &qword_10057F118);
  }

  sub_100009AB0(v11, v8);
  sub_100009A04(v11, &qword_1006A4398, &qword_10057F118);
  v5 = v9;
  v6 = v10;
  sub_100009B14(v8, v9);
  (*(v6 + 16))(v5, v6);
  return sub_100009B7C(v8);
}

uint64_t sub_10046E8D0()
{
  swift_unknownObjectRelease();
  v1 = OBJC_IVAR____TtC13callservicesd19DisclosureGenerator_languageManager;
  type metadata accessor for LanguageManager();
  sub_100008070();
  (*(v2 + 8))(v0 + v1);

  sub_1002B66D4(v0 + OBJC_IVAR____TtC13callservicesd19DisclosureGenerator_disclosureRequest);
  sub_100009B7C((v0 + OBJC_IVAR____TtC13callservicesd19DisclosureGenerator_disclosureUtteranceChecksum));
  sub_100009A04(v0 + OBJC_IVAR____TtC13callservicesd19DisclosureGenerator_disclosureBeepChecksum, &qword_1006A4398, &qword_10057F118);
  return v0;
}

uint64_t sub_10046E99C()
{
  sub_10046E8D0();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for DisclosureGenerator(uint64_t a1)
{
  result = qword_1006AC618;
  if (!qword_1006AC618)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10046EA48(uint64_t a1)
{
  result = type metadata accessor for LanguageManager();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for DisclosureRequest(319);
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_10046EB60(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DisclosureRequest(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10046EBC4()
{
  type metadata accessor for DisclosureRequest(0);
  v1 = *(v0 + 16);

  return sub_10046CB54(v1);
}

uint64_t sub_10046EC28(uint64_t a1, uint64_t a2)
{
  v4 = sub_10026D814(&qword_1006A4398, &qword_10057F118);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_10046EC98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v8 = objc_opt_self();

    v9 = [v8 sharedInstance];
    if (v9)
    {
      v10 = v9;
      sub_10026D814(&qword_1006A4458, &unk_100588070);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10057CA70;
      v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      sub_10000890C(v12, v13, v14, v15, v16, v17, v18, v19, v12);
      *(inited + 96) = &type metadata for String;
      *(inited + 72) = a1;
      *(inited + 80) = a2;
      v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      sub_10000890C(v20, v21, v22, v23, v24, v25, v26, v27, v20);
      v28 = [objc_allocWithZone(NSNumber) initWithInteger:5];
      v29 = sub_1000496D4();
      *(inited + 168) = v29;
      *(inited + 144) = v28;
      v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      sub_10000890C(v30, v31, v32, v33, v34, v35, v36, v37, v30);
      v38 = [objc_allocWithZone(NSNumber) initWithBool:1];
      *(inited + 240) = v29;
      *(inited + 216) = v38;
      v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      sub_10000890C(v39, v40, v41, v42, v43, v44, v45, v46, v39);
      *(inited + 312) = &type metadata for String;
      *(inited + 288) = a3;
      *(inited + 296) = a4;

      v47 = Dictionary.init(dictionaryLiteral:)();
      sub_10046F2D0(v47, 0x400000000000, v10);
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_10046EE78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v41 = a3;
  v7 = sub_10026D814(&qword_1006A5360, &qword_10057CB80);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v39 - v11;
  v13 = type metadata accessor for Locale();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v39 - v18;
  sub_100274DC4(a1, v12);
  if (sub_100015468(v12, 1, v13) == 1)
  {
    v10 = v12;
LABEL_5:
    sub_1003C620C(v10);
    v21 = [objc_opt_self() sharedInstance];
    if (v21)
    {
      v22 = v21;
      sub_10026D814(&qword_1006A4458, &unk_100588070);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10057D690;
      v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v43 = v24;
      AnyHashable.init<A>(_:)();
      *(inited + 96) = &type metadata for String;
      *(inited + 72) = v41;
      *(inited + 80) = a4;

      v25 = Dictionary.init(dictionaryLiteral:)();
      sub_10046F2D0(v25, 0x800000000000, v22);

      return;
    }

    __break(1u);
    goto LABEL_11;
  }

  v40 = a4;
  v20 = *(v14 + 32);
  v20(v19, v12, v13);
  sub_100274DC4(a2, v10);
  if (sub_100015468(v10, 1, v13) == 1)
  {
    (*(v14 + 8))(v19, v13);
    a4 = v40;
    goto LABEL_5;
  }

  v20(v17, v10, v13);
  v26 = [objc_opt_self() sharedInstance];
  if (!v26)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v27 = v26;
  sub_10026D814(&qword_1006A4458, &unk_100588070);
  v28 = swift_initStackObject();
  *(v28 + 16) = xmmword_10057E830;
  v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v43 = v29;
  sub_10000A508();
  v30 = Locale.identifier.getter();
  *(v28 + 96) = &type metadata for String;
  *(v28 + 72) = v30;
  *(v28 + 80) = v31;
  v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v43 = v32;
  sub_10000A508();
  v33 = Locale.identifier.getter();
  *(v28 + 168) = &type metadata for String;
  *(v28 + 144) = v33;
  *(v28 + 152) = v34;
  v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v43 = v35;
  sub_10000A508();
  *(v28 + 240) = &type metadata for String;
  v36 = v40;
  *(v28 + 216) = v41;
  *(v28 + 224) = v36;

  v37 = Dictionary.init(dictionaryLiteral:)();
  sub_10046F2D0(v37, 0x800000000000, v27);

  v38 = *(v14 + 8);
  v38(v17, v13);
  v38(v19, v13);
}

void sub_10046F2D0(uint64_t a1, uint64_t a2, void *a3)
{
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [a3 sendMessageWithPayload:isa andIdentifier:a2];
}

void *sub_10046F360(void *a1)
{
  v3 = sub_10026D814(&qword_1006A3C70, &unk_10057EA80);
  __chkstk_darwin(v3 - 8);
  v5 = (&v9 - v4);
  v1[2] = 0;
  v1[5] = 0;
  v6 = OBJC_IVAR____TtC13callservicesdP33_0A1659627E4D14053DCC87F1CE1AA4A69CallTimes_jailTimeFinish;
  v7 = type metadata accessor for Date();
  sub_10000AF74(v1 + v6, 1, 1, v7);
  sub_10000AF74(v5, 1, 1, v7);
  v1[3] = sub_10046F45C(v5, [a1 voIPDOSCount]);
  v1[4] = a1;
  swift_unknownObjectRetain();
  sub_10046F544();
  swift_unknownObjectRelease();
  return v1;
}

void *sub_10046F45C(void *result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = a2;
    v3 = result;
    if (a2)
    {
      sub_10026D814(&qword_1006A3C70, &unk_10057EA80);
      v4 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      v4[2] = v2;
      v5 = *(sub_10026D814(&qword_1006A3C70, &unk_10057EA80) - 8);
      for (i = v4 + ((*(v5 + 80) + 32) & ~*(v5 + 80)); ; i += *(v5 + 72))
      {
        --v2;
        sub_100270E18(v3, i);
        if (!v2)
        {
          break;
        }
      }
    }

    else
    {
      v4 = _swiftEmptyArrayStorage;
    }

    sub_1003EE32C(v3);
    return v4;
  }

  return result;
}

void sub_10046F544()
{
  v2 = sub_10026D814(&qword_1006A3C70, &unk_10057EA80);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v5 = &v12[-v4];
  v6 = *(v0 + 16);
  v7 = v6 + 1;
  if (__OFADD__(v6, 1))
  {
    __break(1u);
    goto LABEL_8;
  }

  swift_beginAccess();
  v8 = *(*(v0 + 24) + 16);
  if (!v8)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v1 = v7 % v8;
  *(v0 + 16) = v7 % v8;
  static Date.now.getter();
  v9 = type metadata accessor for Date();
  sub_10000AF74(v5, 0, 1, v9);
  swift_beginAccess();
  v7 = *(v0 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v0 + 24) = v7;
  if (isUniquelyReferenced_nonNull_native)
  {
    if ((v1 & 0x8000000000000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

LABEL_9:
  sub_100470D5C(v7);
  v7 = v11;
  *(v0 + 24) = v11;
  if ((v1 & 0x8000000000000000) != 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  if (v1 < *(v7 + 16))
  {
    sub_1003B3734(v5, v7 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v1);
    *(v0 + 24) = v7;
    swift_endAccess();
    return;
  }

LABEL_11:
  __break(1u);
}

uint64_t sub_10046F6D4()
{
  v1 = v0;
  v2 = sub_10026D814(&qword_1006A3C70, &unk_10057EA80);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2 - 8);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v38 = &v38 - v8;
  __chkstk_darwin(v7);
  v10 = &v38 - v9;
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  v18 = &v38 - v17;
  __chkstk_darwin(v16);
  v20 = &v38 - v19;
  v21 = OBJC_IVAR____TtC13callservicesdP33_0A1659627E4D14053DCC87F1CE1AA4A69CallTimes_jailTimeFinish;
  swift_beginAccess();
  sub_100270E18(v1 + v21, v10);
  if (sub_100015468(v10, 1, v11) == 1)
  {
    result = sub_1003EE32C(v10);
  }

  else
  {
    (*(v12 + 32))(v20, v10, v11);
    Date.timeIntervalSinceNow.getter();
    v24 = v23;
    (*(v12 + 8))(v20, v11);
    if (v24 >= 0.0)
    {
LABEL_21:
      sub_10046F544();
      return 0;
    }

    v25 = v38;
    sub_10000AF74(v38, 1, 1, v11);
    swift_beginAccess();
    sub_1003B3734(v25, v1 + v21);
    result = swift_endAccess();
  }

  v26 = v1[2];
  v27 = v26 + 1;
  if (__OFADD__(v26, 1))
  {
    __break(1u);
    goto LABEL_23;
  }

  result = swift_beginAccess();
  v28 = v1[3];
  v29 = *(v28 + 16);
  if (!v29)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v30 = v27 % v29;
  if (v30 < 0)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  sub_100270E18(v28 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v30, v6);
  if (sub_100015468(v6, 1, v11) == 1)
  {
    sub_1003EE32C(v6);
LABEL_13:
    sub_10046F544();
    return 1;
  }

  (*(v12 + 32))(v18, v6, v11);
  Date.timeIntervalSinceNow.getter();
  if (v31 >= 0.0 || (v32 = -v31, v33 = v1[4], result = [v33 voIPDOSTimeSeconds], v32 > result))
  {
    (*(v12 + 8))(v18, v11);
    goto LABEL_13;
  }

  v34 = v1[5];
  if (!v34)
  {
    v35 = &selRef_voIPDOSMinJailTimeSeconds;
LABEL_19:
    v1[5] = [v33 *v35];
LABEL_20:
    static Date.now.getter();
    v36 = v38;
    static Date.+ infix(_:_:)();
    v37 = *(v12 + 8);
    v37(v15, v11);
    v37(v18, v11);
    sub_10000AF74(v36, 0, 1, v11);
    swift_beginAccess();
    sub_1003B3734(v36, v1 + v21);
    swift_endAccess();
    goto LABEL_21;
  }

  if ((v34 & 0x8000000000000000) == 0)
  {
    v1[5] = 2 * v34;
    v35 = &selRef_voIPDOSMaxJailTimeSeconds;
    if ([v33 voIPDOSMaxJailTimeSeconds] >= 2 * v34)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_10046FB60()
{

  swift_unknownObjectRelease();
  sub_1003EE32C(v0 + OBJC_IVAR____TtC13callservicesdP33_0A1659627E4D14053DCC87F1CE1AA4A69CallTimes_jailTimeFinish);
  return v0;
}

uint64_t sub_10046FB98()
{
  v0 = sub_10046FB60();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for CallTimes(uint64_t a1)
{
  result = qword_1006AC890;
  if (!qword_1006AC890)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10046FC40(uint64_t a1)
{
  sub_100316450(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

id sub_10046FCF8()
{
  swift_getObjectType();
  v0 = [objc_allocWithZone(type metadata accessor for SharedConversationServerBag()) init];
  v1 = type metadata accessor for VoIPDOSCache();
  v2 = objc_allocWithZone(v1);
  v3 = OBJC_IVAR___CSDVoIPDOSCache_requestCache;
  type metadata accessor for CallTimes(0);
  *&v2[v3] = Dictionary.init(dictionaryLiteral:)();
  *&v2[OBJC_IVAR___CSDVoIPDOSCache_serverBag] = v0;
  v6.receiver = v2;
  v6.super_class = v1;
  v4 = objc_msgSendSuper2(&v6, "init");
  swift_deallocPartialClassInstance();
  return v4;
}

uint64_t sub_10046FDFC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = OBJC_IVAR___CSDVoIPDOSCache_requestCache;
  swift_beginAccess();
  v7 = *(v2 + v6);

  v8 = sub_1000513D8(a1, a2, v7);

  if (v8)
  {
    v9 = sub_10046F6D4();
  }

  else
  {
    type metadata accessor for CallTimes(0);
    swift_allocObject();
    v10 = swift_unknownObjectRetain();
    v11 = sub_10046F360(v10);
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_10037A6F4(v11, a1, a2, isUniquelyReferenced_nonNull_native, v13, v14, v15, v16, v18, *(v3 + v6));
    *(v3 + v6) = v19;
    swift_endAccess();
    v9 = 1;
  }

  return v9 & 1;
}

id sub_10046FF88()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VoIPDOSCache();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100470094()
{
  sub_1000115C0();
  if ((v3 & 1) == 0 || (sub_10000A27C(), v4 == v5))
  {
LABEL_6:
    sub_10000ABE4();
    if (v2)
    {
      v6 = sub_10026D814(&qword_1006A7C48, &qword_1005834F0);
      v7 = sub_100016140(v6);
      sub_10001747C(v7);
      sub_10000EC84(v8 / 48);
      if (v1)
      {
LABEL_8:
        v9 = sub_10000F95C();
        sub_100395D70(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    sub_10000FFF4();
    swift_arrayInitWithCopy();
    goto LABEL_11;
  }

  sub_10000E7FC();
  if (!v4)
  {
    sub_10000862C();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_100470274(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, uint64_t, void *))
{
  sub_100035C94();
  if ((v13 & 1) == 0)
  {
    v14 = v10;
    goto LABEL_7;
  }

  sub_10000A27C();
  if (v15 == v16)
  {
LABEL_7:
    v17 = *(v7 + 16);
    if (v14 <= v17)
    {
      v18 = *(v7 + 16);
    }

    else
    {
      v18 = v14;
    }

    if (v18)
    {
      sub_10026D814(v11, v12);
      v19 = sub_100008B38();
      j__malloc_size(v19);
      sub_1000103FC();
      v19[2] = v17;
      v19[3] = v20;
      if (v8)
      {
LABEL_12:
        a7(v7 + 32, v17, v19 + 4);
        *(v7 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v19 = _swiftEmptyArrayStorage;
      if (v8)
      {
        goto LABEL_12;
      }
    }

    memcpy(v19 + 4, (v7 + 32), 16 * v17);
    goto LABEL_15;
  }

  sub_10000E7FC();
  if (!v15)
  {
    sub_10000862C();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_100470348()
{
  sub_1000115C0();
  if ((v3 & 1) == 0 || (sub_10000A27C(), v4 == v5))
  {
LABEL_6:
    sub_10000ABE4();
    if (v2)
    {
      sub_10026D814(&unk_1006A41B0, &unk_10057EFF8);
      v6 = sub_100008B38();
      sub_10001747C(v6);
      sub_1000153FC(v7);
      if (v1)
      {
LABEL_8:
        v8 = sub_10000F95C();
        sub_10039C36C(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v11 = sub_10026D814(&unk_1006A2A00, &unk_10057D710);
    sub_1000183FC(v11);
    goto LABEL_11;
  }

  sub_10000E7FC();
  if (!v4)
  {
    sub_10000862C();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_100470430()
{
  sub_1000115C0();
  if ((v3 & 1) == 0 || (sub_10000A27C(), v4 == v5))
  {
LABEL_6:
    sub_10000ABE4();
    if (v2)
    {
      v6 = sub_10026D814(&unk_1006A79D0, &qword_100583348);
      v7 = sub_100016140(v6);
      sub_10001747C(v7);
      sub_10000EC84(v8 / 40);
      if (v1)
      {
LABEL_8:
        v9 = sub_10000F95C();
        sub_10039C388(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v12 = sub_10026D814(&unk_1006AB410, &unk_100583350);
    sub_1000183FC(v12);
    goto LABEL_11;
  }

  sub_10000E7FC();
  if (!v4)
  {
    sub_10000862C();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1004704F8()
{
  sub_1000115C0();
  if ((v3 & 1) == 0 || (sub_10000A27C(), v4 == v5))
  {
LABEL_6:
    sub_10000ABE4();
    if (v2)
    {
      sub_10026D814(&qword_1006ACA28, &qword_1005886F8);
      v6 = sub_100008B38();
      sub_10001747C(v6);
      sub_1000153FC(v7);
      if (v1)
      {
LABEL_8:
        v8 = sub_10000F95C();
        sub_10005C79C(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v11 = sub_10000FFF4();
    memcpy(v11, v12, v13);
    goto LABEL_11;
  }

  sub_10000E7FC();
  if (!v4)
  {
    sub_10000862C();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1004705AC()
{
  sub_1000115C0();
  if ((v3 & 1) == 0 || (sub_10000A27C(), v4 == v5))
  {
LABEL_6:
    sub_10000ABE4();
    if (v2)
    {
      sub_10026D814(&qword_1006ACA20, &qword_100583388);
      v6 = sub_100008B38();
      sub_10001747C(v6);
      sub_1000153FC(v7);
      if (v1)
      {
LABEL_8:
        v8 = sub_10000F95C();
        sub_100395D94(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    sub_10000FFF4();
    swift_arrayInitWithCopy();
    goto LABEL_11;
  }

  sub_10000E7FC();
  if (!v4)
  {
    sub_10000862C();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1004706D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void), void (*a7)(unint64_t, uint64_t, unint64_t))
{
  sub_100035C94();
  if (v13)
  {
    sub_10000A27C();
    if (v15 != v16)
    {
      sub_10000E7FC();
      if (v15)
      {
        __break(1u);
        return;
      }

      sub_10000862C();
    }
  }

  else
  {
    v14 = v11;
  }

  v17 = *(v7 + 16);
  v18 = v12(v17, v14);
  v19 = *(a6(0) - 8);
  if (v8)
  {
    v20 = (*(v19 + 80) + 32) & ~*(v19 + 80);
    a7(v7 + v20, v17, v18 + v20);
    *(v7 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1004707F0(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t a7, void (*a8)(uint64_t, uint64_t, void *))
{
  if ((a3 & 1) == 0)
  {
    v11 = a2;
    goto LABEL_7;
  }

  sub_10000A27C();
  if (v12 == v13)
  {
LABEL_7:
    v14 = *(a4 + 16);
    if (v11 <= v14)
    {
      v15 = *(a4 + 16);
    }

    else
    {
      v15 = v11;
    }

    if (v15)
    {
      sub_10026D814(a5, a6);
      v16 = swift_allocObject();
      v17 = j__malloc_size(v16);
      v16[2] = v14;
      v16[3] = 2 * ((v17 - 32) / 40);
      if (a1)
      {
LABEL_12:
        a8(a4 + 32, v14, v16 + 4);
        *(a4 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v16 = _swiftEmptyArrayStorage;
      if (a1)
      {
        goto LABEL_12;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_15;
  }

  sub_10000E7FC();
  if (!v12)
  {
    sub_10000862C();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1004708EC()
{
  sub_1000115C0();
  if ((v3 & 1) == 0 || (sub_10000A27C(), v4 == v5))
  {
LABEL_6:
    sub_10000ABE4();
    if (v2)
    {
      sub_10026D814(&unk_1006ACA00, &qword_1005886E8);
      v6 = sub_100008B38();
      sub_10001747C(v6);
      sub_1000153FC(v7);
      if (v1)
      {
LABEL_8:
        v8 = sub_10000F95C();
        sub_10039C36C(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v11 = sub_10026D814(&unk_1006AA8A0, &unk_1005866E8);
    sub_1000183FC(v11);
    goto LABEL_11;
  }

  sub_10000E7FC();
  if (!v4)
  {
    sub_10000862C();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1004709AC()
{
  sub_1000115C0();
  if ((v4 & 1) == 0 || (sub_10000A27C(), v5 == v6))
  {
LABEL_6:
    sub_10000ABE4();
    if (v3)
    {
      sub_10026D814(&qword_1006AB190, &unk_100583400);
      v7 = sub_100008B38();
      j__malloc_size(v7);
      sub_1000103FC();
      v7[2] = v2;
      v7[3] = v8;
      if (v1)
      {
LABEL_8:
        v9 = sub_10000F95C();
        sub_10039C368(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v12 = sub_10026D814(&unk_1006A7AD0, &unk_100587100);
    sub_1000183FC(v12);
    goto LABEL_11;
  }

  sub_10000E7FC();
  if (!v5)
  {
    sub_10000862C();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_100470AAC()
{
  sub_1000115C0();
  if ((v3 & 1) == 0 || (sub_10000A27C(), v4 == v5))
  {
LABEL_6:
    sub_10000ABE4();
    if (v2)
    {
      v6 = sub_10026D814(&qword_1006A7AA8, &unk_1005833E0);
      v7 = sub_100016140(v6);
      sub_10001747C(v7);
      sub_10000EC84(v8 / 40);
      if (v1)
      {
LABEL_8:
        v9 = sub_10000F95C();
        sub_10039C388(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v12 = sub_10026D814(&qword_1006A7AB0, &unk_1005870F0);
    sub_1000183FC(v12);
    goto LABEL_11;
  }

  sub_10000E7FC();
  if (!v4)
  {
    sub_10000862C();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_100470B74()
{
  sub_1000115C0();
  if ((v4 & 1) == 0 || (sub_10000A27C(), v5 == v6))
  {
LABEL_6:
    sub_10000ABE4();
    if (v3)
    {
      sub_10026D814(&qword_1006AC9E8, &qword_1005886D8);
      v7 = sub_100008B38();
      j__malloc_size(v7);
      sub_1000103FC();
      v7[2] = v2;
      v7[3] = v8;
      if (v1)
      {
LABEL_8:
        v9 = sub_10000F95C();
        sub_100060528(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v12 = sub_10026D814(&unk_1006AC9F0, &qword_1005886E0);
    sub_1000183FC(v12);
    goto LABEL_11;
  }

  sub_10000E7FC();
  if (!v5)
  {
    sub_10000862C();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_100470C38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7, void (*a8)(unint64_t, uint64_t, unint64_t))
{
  sub_100035C94();
  if (v15)
  {
    sub_10000A27C();
    if (v17 != v18)
    {
      sub_10000E7FC();
      if (v17)
      {
        __break(1u);
        return;
      }

      sub_10000862C();
    }
  }

  else
  {
    v16 = v13;
  }

  v19 = *(v8 + 16);
  v20 = v14(v19, v16);
  v21 = *(sub_10026D814(a6, a7) - 8);
  if (v9)
  {
    v22 = (*(v21 + 80) + 32) & ~*(v21 + 80);
    a8(v8 + v22, v19, v20 + v22);
    *(v8 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

id sub_100470E44(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  *&v2[OBJC_IVAR___CSDMomentsRequest_avcRequest] = a1;
  *&v2[OBJC_IVAR___CSDMomentsRequest_session] = a2;
  v7.receiver = v2;
  v7.super_class = ObjectType;
  return objc_msgSendSuper2(&v7, "init");
}

void sub_1004710FC(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "Wanted to file a simulated crash report for reason: %@", &v2, 0xCu);
}

void sub_100471174(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Simulated a crash report for reason: %@", &v2, 0xCu);
}

void sub_1004712A0()
{
  sub_100007EB8();
  v3 = v0;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "Error fetching local invite dictionary %@: %@", v2, 0x16u);
}

void sub_10047131C(id *a1, uint64_t a2, NSObject *a3)
{
  v5 = [*a1 configuration];
  sub_100007EB8();
  v7 = a2;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "Failed to start connection with configuration=%@: %@", v6, 0x16u);
}

void sub_1004713C4(int *a1, int a2, os_log_t log)
{
  v3 = *a1;
  v4[0] = 67109376;
  v4[1] = a2;
  v5 = 1024;
  v6 = v3;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Attempting to set state to %d, which precedes current state %d", v4, 0xEu);
}

void sub_1004715F4(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Attempt to retrieve application record for bundle URL %@ failed with error: %@", &v3, 0x16u);
}

void sub_100471690(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "No matching conversation found for call after handoff, not re-registering for handoff %@", &v2, 0xCu);
}

void sub_100471730()
{
  sub_100007710();
  v0 = +[NSAssertionHandler currentHandler];
  sub_100007ECC();
  [v1 handleFailureInMethod:@"callCenterObserver != nil" object:? file:? lineNumber:? description:?];
}

void sub_1004717A0()
{
  sub_100007710();
  v0 = +[NSAssertionHandler currentHandler];
  sub_100007ECC();
  [v1 handleFailureInMethod:@"interfaceOrientationObserver != nil" object:? file:? lineNumber:? description:?];
}

void sub_100471810()
{
  sub_100007710();
  v0 = +[NSAssertionHandler currentHandler];
  sub_100007ECC();
  [v1 handleFailureInMethod:@"routeController != nil" object:? file:? lineNumber:? description:?];
}

void sub_100471880()
{
  sub_100007710();
  v0 = +[NSAssertionHandler currentHandler];
  sub_100007ECC();
  [v1 handleFailureInMethod:@"proximitySensorObserver != nil" object:? file:? lineNumber:? description:?];
}

void sub_1004718F0()
{
  sub_100007710();
  v0 = +[NSAssertionHandler currentHandler];
  sub_100007ECC();
  [v1 handleFailureInMethod:@"queue != nil" object:? file:? lineNumber:? description:?];
}

void sub_100471960()
{
  sub_100007710();
  v0 = +[NSAssertionHandler currentHandler];
  sub_100007ECC();
  [v1 handleFailureInMethod:@"voiceOverObserver != nil" object:? file:? lineNumber:? description:?];
}

void sub_100471C08(id *a1)
{
  v1 = [*a1 handle];
  sub_100007ED8();
  sub_100009DDC(&_mh_execute_header, v2, v3, "Could not initiate FaceTime call - No chat returned for handle %@ with account %@", v4, v5, v6, v7);
}

void sub_100471CA8(id *a1)
{
  v1 = [*a1 handle];
  sub_100007ED8();
  sub_100009DDC(&_mh_execute_header, v2, v3, "Could not initiate FaceTime call - No IM handle returned for handle %@ with account %@", v4, v5, v6, v7);
}

void sub_100471ED4()
{
  sub_100009DFC();
  sub_100007EAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100471F10()
{
  sub_100007ED8();
  sub_100007EAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100471F80()
{
  sub_100007ED8();
  sub_10000A524();
  sub_100007F10(&_mh_execute_header, v0, v1, "setParticipantAudioVideoMode:presentationMode:forParticipant: Failed to find participant %@ on conversation %@");
}

void sub_100471FF0(void *a1, uint64_t a2, NSObject *a3)
{
  v6 = [a1 pluginName];
  v7 = 138412802;
  v8 = v6;
  v9 = 2048;
  v10 = [a1 identifier];
  v11 = 2112;
  v12 = a2;
  _os_log_fault_impl(&_mh_execute_header, a3, OS_LOG_TYPE_FAULT, "Trying to add virtual participant for plugin %@ with different identifier %llu: %@", &v7, 0x20u);
}

void sub_1004720B8()
{
  sub_100007ED8();
  sub_100007EAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100472128()
{
  sub_100009DFC();
  sub_100007EAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10047229C()
{
  sub_100009DFC();
  sub_100007EAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004722D8(void *a1)
{
  v1 = [a1 UUID];
  sub_100007ED8();
  sub_100007F00();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_100472364(void *a1)
{
  [a1 state];
  sub_100007F00();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_100472460()
{
  sub_100009DFC();
  sub_100007EAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10047249C()
{
  sub_100007ED8();
  sub_100007EAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10047250C()
{
  sub_100007ED8();
  sub_100007EAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10047257C(void *a1)
{
  [a1 avMode];
  sub_100007F00();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_100472610(uint64_t a1, uint64_t a2)
{
  LODWORD(v5) = 134218242;
  *(&v5 + 4) = a2;
  sub_10000A524();
  *v6 = v2;
  sub_100007F10(&_mh_execute_header, v3, v4, "for particiapntID: %llu, invalid csdParticipant from conversationParticipant: %@", v5, DWORD2(v5), *&v6[2]);
}

void sub_100472684()
{
  sub_100007ED8();
  sub_10000A524();
  sub_100007F10(&_mh_execute_header, v0, v1, "Couldn't find participant for didReceiveParticipantUpdateParticipantID: %@ on conversation: %@");
}

void sub_1004726F4()
{
  sub_100007ED8();
  sub_100007EAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1004727D8()
{
  sub_100009DFC();
  sub_100007EAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100472840()
{
  sub_100007ED8();
  sub_100007EAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1004728B0()
{
  sub_100009DFC();
  sub_100007EAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004728EC()
{
  sub_100009DFC();
  sub_100007EAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100472928()
{
  sub_100007ED8();
  sub_100007EAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100472998(uint64_t a1, void *a2)
{
  v2 = [a2 UUID];
  sub_10000A524();
  sub_100007F00();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_100472A40()
{
  sub_100009DFC();
  sub_100007EAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100472A7C()
{
  sub_100009DFC();
  sub_100007EAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100472AB8(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "handleReceivedDTMFUpdateMessageFromHost with !hasDtmfUpdateDigits. Message:%@", &v2, 0xCu);
}

void sub_100472B30(uint64_t a1, NSObject *a2)
{
  v2 = *(a1 + 56);
  v3 = *(a1 + 40);
  v4 = 138412546;
  v5 = v2;
  v6 = 2112;
  v7 = v3;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to prepare conference for pull message %@ and call %@", &v4, 0x16u);
}

void sub_100472BBC(void *a1)
{
  v1 = [a1 failureContext];
  [v1 failureReason];
  sub_100007ED8();
  sub_100007F30(&_mh_execute_header, v2, v3, "Setting disconnected reason to guest mode prevents calls bc failure reason is %ld", v4, v5, v6, v7);
}

void sub_100472C44(void *a1)
{
  v1 = [a1 failureContext];
  [v1 failureReason];
  sub_100007ED8();
  sub_100007F30(&_mh_execute_header, v2, v3, "Setting disconnected reason to travel mode prevents calls bc failure reason is %ld", v4, v5, v6, v7);
}

void sub_100472CCC(void *a1)
{
  v1 = [a1 failureContext];
  [v1 failureReason];
  sub_100007ED8();
  sub_100007F30(&_mh_execute_header, v2, v3, "Setting disconnected reason to blocked remote participant bc failure reason is %ld", v4, v5, v6, v7);
}

void sub_100472D54(void *a1)
{
  v1 = [a1 failureContext];
  [v1 failureReason];
  sub_100007ED8();
  sub_100007F30(&_mh_execute_header, v2, v3, "Setting disconnected reason to nearby feature version mismatch because failure reason is %ld", v4, v5, v6, v7);
}

void sub_100472DDC(void *a1)
{
  v1 = [a1 failureContext];
  [v1 failureReason];
  sub_100007ED8();
  sub_100007F30(&_mh_execute_header, v2, v3, "Setting disconnected reason to vision call establishment version mismatch because failure reason is %ld", v4, v5, v6, v7);
}

void sub_100472E64(void *a1)
{
  v1 = [a1 failureContext];
  [v1 failureReason];
  sub_100007ED8();
  sub_100007F30(&_mh_execute_header, v2, v3, "Setting disconnected reason to unknown participant added because failure reason is %ld", v4, v5, v6, v7);
}

void sub_100472EEC(void *a1)
{
  v1 = [a1 failureContext];
  [v1 failureReason];
  sub_100007ED8();
  sub_100007F30(&_mh_execute_header, v2, v3, "Setting disconnected reason to media server crashed because failure reason is %ld", v4, v5, v6, v7);
}

void sub_100472F74(void *a1)
{
  v1 = [a1 failureContext];
  [v1 failureReason];
  sub_100007ED8();
  sub_100007F30(&_mh_execute_header, v2, v3, "Setting disconnected reason to no destinations available because failure reason is %ld", v4, v5, v6, v7);
}

void sub_100472FFC(void *a1)
{
  v1 = [a1 failureContext];
  [v1 failureReason];
  sub_100007ED8();
  sub_100007F30(&_mh_execute_header, v2, v3, "Setting disconnected reason to conversation links disabled because failure reason is %ld", v4, v5, v6, v7);
}

void sub_100473084(void *a1)
{
  v1 = [a1 failureContext];
  [v1 failureReason];
  sub_100007ED8();
  sub_100007F30(&_mh_execute_header, v2, v3, "Setting disconnected reason to invalid conversation link because failure reason is %ld", v4, v5, v6, v7);
}

void sub_10047310C(void *a1)
{
  v1 = [a1 failureContext];
  [v1 failureReason];
  sub_100007ED8();
  sub_100007F30(&_mh_execute_header, v2, v3, "Setting disconnected reason to rejected because failure reason is %ld", v4, v5, v6, v7);
}

void sub_100473194(void *a1)
{
  v1 = [a1 failureContext];
  [v1 failureReason];
  sub_100007ED8();
  sub_100007F30(&_mh_execute_header, v2, v3, "Setting disconnected reason to kicked because failure reason is %ld", v4, v5, v6, v7);
}

void sub_10047321C(void *a1)
{
  v1 = [a1 failureContext];
  [v1 failureReason];
  sub_100007ED8();
  sub_100007F30(&_mh_execute_header, v2, v3, "Setting disconnected reason to other secondary device in use because failure reason is %ld", v4, v5, v6, v7);
}

void sub_1004732A4(void *a1)
{
  v1 = [a1 failureContext];
  [v1 failureReason];
  sub_100007ED8();
  sub_100007F30(&_mh_execute_header, v2, v3, "Setting disconnected reason to media start failed because failure reason is %ld", v4, v5, v6, v7);
}

void sub_10047332C(void *a1)
{
  v1 = [a1 failureContext];
  [v1 failureReason];
  sub_100007ED8();
  sub_100007F30(&_mh_execute_header, v2, v3, "Setting disconnected reason to provider crashed because failure reason is %ld", v4, v5, v6, v7);
}

void sub_1004733B4(void *a1)
{
  v1 = [a1 failureContext];
  [v1 failureReason];
  sub_100007ED8();
  sub_100007F30(&_mh_execute_header, v2, v3, "Setting disconnected reason to network unsupported because failure reason is %ld", v4, v5, v6, v7);
}

void sub_10047343C(void *a1)
{
  v1 = [a1 failureContext];
  [v1 failureReason];
  sub_100007ED8();
  sub_100007F30(&_mh_execute_header, v2, v3, "Setting disconnected reason to account unsupported because failure reason is %ld", v4, v5, v6, v7);
}

void sub_1004734C4(void *a1)
{
  v1 = [a1 failureContext];
  [v1 failureReason];
  sub_100007ED8();
  sub_100007F30(&_mh_execute_header, v2, v3, "Setting disconnected reason to call failed because failure reason is %ld", v4, v5, v6, v7);
}

void sub_10047354C(void *a1)
{
  [a1 endedReason];
  sub_100007ED8();
  sub_100007F30(&_mh_execute_header, v1, v2, "Setting disconnected reason to call failed because ended reason is %ld", v3, v4, v5, v6);
}

void sub_100473720()
{
  sub_100007ED8();
  v3 = 2112;
  v4 = v0;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "Creating sandbox extension directory '%@' failed with error %@", v2, 0x16u);
}

void sub_1004737A4(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = a1;
  sub_100007EE4(&_mh_execute_header, a2, a3, "Removing image files failed with error %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_100473810(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = a1;
  sub_100007EE4(&_mh_execute_header, a2, a3, "Could not determine whether device wants break before make; could not obtain sender identity capabilities for call %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_10047387C(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = a1;
  sub_100007EE4(&_mh_execute_header, a2, a3, "Could not determine whether device wants break before make; could not obtain local sender identity for call %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_1004738E8(char a1, uint64_t a2, os_log_t log)
{
  v3[0] = 67109378;
  v3[1] = a1 & 1;
  v4 = 2112;
  v5 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "There was an error enabling emergency mode. Enabled successfully (%d) Error: %@", v3, 0x12u);
}

void sub_100473974(uint64_t a1, NSObject *a2)
{
  v2 = *(a1 + 32);
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Encountered error while opening URL: %@", &v3, 0xCu);
}

void sub_1004739F0(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = *(a1 + 32);
  v4 = 138412546;
  v5 = v3;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Attempt to open application with bundle identifier %@ failed with error %@", &v4, 0x16u);
}

void sub_100473A7C(uint64_t a1, void *a2, NSObject *a3)
{
  v5 = [a2 telephonyClient];
  v6 = 138412546;
  v7 = a1;
  v8 = 2112;
  v9 = v5;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "Retrieving subscription information failed with error %@ for %@.", &v6, 0x16u);
}

void sub_100473B30(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Error synchronizing NPS defaults: %@", &v2, 0xCu);
}

void sub_100473BA8(uint64_t a1, NSObject *a2)
{
  v5 = 138412546;
  v6 = objc_opt_class();
  v7 = 2112;
  v8 = a1;
  v4 = v6;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Prefereces object was of unexpected class %@: %@", &v5, 0x16u);
}

void sub_100473D34(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"CSDPersistedChannelRegistry.m" lineNumber:230 description:@"identity is nil"];
}

void sub_100473E10(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"CSDPersistedChannelRegistry.m" lineNumber:251 description:@"bundleIdentifier is nil"];
}

void sub_100473E84(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"CSDPersistedChannelRegistry.m" lineNumber:280 description:@"bundleIdentifier is nil"];
}

void sub_100473F20(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Could not determine UUID for FaceTime app bundle identifier %@", &v2, 0xCu);
}

void sub_100473F98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = +[NSAssertionHandler currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"CSDIDSChat.m" lineNumber:107 description:{@"Cannot create an incoming chat with an outgoing session: %@", a3}];
}

void sub_100474018(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = +[NSAssertionHandler currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"CSDIDSChat.m" lineNumber:118 description:{@"Cannot create an outgoing chat with an incoming session: %@", a3}];
}

void sub_100474098(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 134218242;
  v4 = a2;
  v5 = 2112;
  v6 = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Setting disconnected reason to call failed because CSDAVConference ended reason is %ld for call %@", &v3, 0x16u);
}

void sub_100474178(void *a1, NSObject *a2)
{
  v3 = [a1 protoUpgradeSessionUUID];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Error while creating UUID from protoUUID: %@", &v4, 0xCu);
}

void sub_1004742D4()
{
  sub_100007ED8();
  sub_100007EAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100474344()
{
  sub_100007ED8();
  sub_100007EAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1004743B4()
{
  sub_100007ED8();
  sub_100007EAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100474424()
{
  sub_100007ED8();
  sub_100007EAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100474494(void *a1)
{
  [a1 type];
  sub_100007F00();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_10047455C(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = a1;
  sub_100007EE4(&_mh_execute_header, a2, a3, "Could not retrieve local invite dictionary for message: %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_10047470C(void *a1)
{
  v6 = [a1 groupUUID];
  sub_100007F00();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_10047479C(void *a1)
{
  v6 = [a1 groupUUID];
  sub_100007F00();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_10047482C(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Could not create notification for XPC event %@", &v2, 0xCu);
}

void sub_1004748A4()
{
  __error();
  v0 = __error();
  strerror(*v0);
  sub_100007F50();
  sub_100009E14(&_mh_execute_header, v1, v2, "failed to resolve temporary directory (%d): %s", v3, v4, v5, v6);
}

void sub_10047492C()
{
  __error();
  v0 = __error();
  strerror(*v0);
  sub_100007F50();
  sub_100009E14(&_mh_execute_header, v1, v2, "failed to initialize temporary directory (%d): %s", v3, v4, v5, v6);
}

void sub_100474A2C(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Not accepting invitation to call %@ since it is already Connected", &v2, 0xCu);
}

void sub_100474AA4(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Not holding chat %@ since it is not yet Connected", &v2, 0xCu);
}

void sub_100474C58(void *a1, uint64_t a2, NSObject *a3)
{
  v5 = [a1 handle];
  sub_100007EB8();
  v7 = a2;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "Cannot start FaceTime IDS chat using handle %@ because IDS destination was '%@'", v6, 0x16u);
}

void sub_100474CFC(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v3 = 138412546;
  *&v3[4] = *(a1 + 32);
  *&v3[12] = 2112;
  *&v3[14] = a2;
  sub_100007F10(&_mh_execute_header, a2, a3, "Requested transaction to answer already-ringing call with UUID %@ failed with error %@", *v3, *&v3[8], *&v3[16]);
}

void sub_100474D78(uint8_t *a1, void *a2, void *a3, NSObject *a4)
{
  v7 = [a2 remoteFromID];
  *a1 = 138412290;
  *a3 = v7;
  _os_log_error_impl(&_mh_execute_header, a4, OS_LOG_TYPE_ERROR, "Unable to convert to remoteIDSToken: %@", a1, 0xCu);
}

void sub_100474DF0(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Unable to find existing chat for conversation: %@", &v2, 0xCu);
}

void sub_100475100()
{
  sub_100009E54();
  v3 = v0;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "Error zipping directory at URL %@ to output URL %@", v2, 0x16u);
}

void sub_10047517C()
{
  sub_100009E54();
  v5 = v0;
  v6 = v1;
  v7 = v2;
  _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Error occurred during IMFileCopierOperation type %ld on inputURL %@ and outputURL %@", v4, 0x20u);
}

void sub_100475204(uint64_t a1, uint64_t a2)
{
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  sub_10000F434();
  sub_100007F00();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x20u);
}

void sub_100475540(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = *(a1 + 32);
  sub_100007EE4(&_mh_execute_header, a2, a3, "Encountered error while opening URL: %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_100475618(uint64_t a1, void *a2)
{
  v7 = [a2 uniqueProxyIdentifier];
  sub_100007F00();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_1004756C4(uint64_t a1)
{
  v1 = [*(a1 + 40) uniqueProxyIdentifier];
  sub_10000F434();
  sub_100007F00();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_100475760(uint64_t a1, uint64_t *a2, os_log_t log)
{
  v3 = *(a1 + 56);
  v4 = *a2;
  v5 = 138412546;
  v6 = v3;
  v7 = 2112;
  v8 = v4;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Attempt to open application with bundle identifier %@ failed with error %@", &v5, 0x16u);
}

void sub_100475818(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = *(a1 + 32);
  v4 = 138412546;
  v5 = v3;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Failed to start conference connection when pulling call %@: %@", &v4, 0x16u);
}

void sub_1004758B8(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"CSDXPCClient.m" lineNumber:48 description:@"callservicesd is attempting to create an XPC client for itself."];
}

void sub_10047591C(void *a1, uint64_t a2, NSObject *a3)
{
  v5 = [a1 processBundleIdentifier];
  v6 = 138412546;
  v7 = v5;
  v8 = 2112;
  v9 = a2;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "Failed to grab assertion for process %@, reason: %@", &v6, 0x16u);
}

void sub_1004759CC(void *a1, NSObject *a2)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v5 = 138412802;
  v6 = v2;
  v7 = 2112;
  v8 = v3;
  v9 = 2112;
  v10 = v4;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Received unsuccessful didSend for message with identifier %@ using account %@: %@", &v5, 0x20u);
}

void sub_100475A60(id *a1, uint64_t a2, NSObject *a3)
{
  v5 = [*a1 typeString];
  v6 = 138412546;
  v7 = v5;
  v8 = 2112;
  v9 = a2;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "Failed to send %@ message: %@", &v6, 0x16u);
}

void sub_100475B14(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Attempt to unarchive PTT service update push budget failed with error %@", &v2, 0xCu);
}

void sub_100475B8C(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Attempt to archive PTT service update push budget failed with error %@", &v2, 0xCu);
}

void sub_100475C9C(id *a1)
{
  v1 = [*a1 handle];
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = v1;
  sub_100007F30(&_mh_execute_header, v2, v3, "Could not initiate FaceTime call - No IDS or IMAV call returned for handle %@", v4, v5, v6, v7, v8, DWORD2(v8));
}

void sub_100475D28(id *a1)
{
  v1 = [*a1 callUUID];
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = v1;
  sub_100007F30(&_mh_execute_header, v2, v3, "No longer handling call with UUID %@, requesting end", v4, v5, v6, v7, v8, DWORD2(v8));
}

void sub_100475E84(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Attempted to prepare a new conference connection with the same identifier as an existing conference connection: %@", &v2, 0xCu);
}

void sub_100475EFC(uint64_t a1, void *a2, NSObject *a3)
{
  v5 = [a2 conferenceConnections];
  v6 = 138412546;
  v7 = a1;
  v8 = 2112;
  v9 = v5;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "Did not find conference connection to start for identifier %@. All conference connections: %@", &v6, 0x16u);
}

void sub_100475FB0(id *a1, void **a2, NSObject *a3)
{
  [*a1 prepareToStopTimeout];
  v6 = v5;
  v7 = *a2;
  v8 = [v7 conference];
  v9 = 134218498;
  v10 = v6;
  v11 = 2112;
  v12 = v7;
  v13 = 2112;
  v14 = v8;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "It's been %fs since asked to prepare to stop conference and conference connection still exists: %@. Forcefully cleaning up all conference connections for conference %@", &v9, 0x20u);
}

void sub_100476084(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 134218242;
  v4 = a2;
  v5 = 2112;
  v6 = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Relay conference ended in failure (reason: %ld): %@", &v3, 0x16u);
}

void sub_100476150(uint8_t *a1, void *a2, NSObject *a3)
{
  v6 = +[CSDThumperIDSService sharedInstance];
  *a1 = 138412290;
  *a2 = v6;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "Could not obtain caller ID from Thumper IDS service %@", a1, 0xCu);
}

void sub_1004761CC(void *a1, NSObject *a2)
{
  v3 = [a1 faceTimeProvider];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Aborting Thumper registration; could not obtain sender identities from call provider %@.", &v4, 0xCu);
}

void sub_100476264(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Received didSendWithSuccess=NO for message with identifier %@: %@", &v3, 0x16u);
}

void sub_1004762EC(uint64_t a1, id *a2, NSObject *a3)
{
  v5 = [*a2 thumperService];
  v6 = [v5 devices];
  v7 = 138412546;
  v8 = a1;
  v9 = 2112;
  v10 = v6;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "No device found for account %@. All accounts: %@", &v7, 0x16u);
}

void sub_1004763B0(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to set no handler for Default Calling with error: %@", &v2, 0xCu);
}

void sub_100476428(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = *(a1 + 32);
  v4 = 138412546;
  v5 = v3;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Failed to Default Calling app to %@ with error: %@", &v4, 0x16u);
}

void sub_1004764B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = +[NSAssertionHandler currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"CSDCall.m" lineNumber:505 description:{@"dialRequest is invalid: %@", a3}];
}

void sub_100476534(char a1, void *a2, NSObject *a3)
{
  if (a1)
  {
    v4 = @"YES";
  }

  else
  {
    v4 = @"NO";
  }

  v5 = [a2 uniqueProxyIdentifier];
  v6 = 138412546;
  v7 = v4;
  v8 = 2112;
  v9 = v5;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "Setting uplinkMuted with value %@ failed for call %@", &v6, 0x16u);
}

void sub_1004765FC(uint64_t a1, NSObject *a2)
{
  v2 = 136315394;
  v3 = "[CSDRouteManager init]_block_invoke_2";
  v4 = 2112;
  v5 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "%s: error: %@", &v2, 0x16u);
}

void sub_100476700(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Unable to fetch CarKit DND assertion: %@", &v2, 0xCu);
}

void sub_100476778()
{
  sub_100007ED8();
  sub_100007EAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1004767E8()
{
  sub_100009DFC();
  sub_100007EAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10047688C()
{
  sub_100007ED8();
  sub_100015E58();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100476964()
{
  sub_100011258(__stack_chk_guard);
  sub_100009E08();
  sub_100007EAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1004769D4()
{
  sub_100011258(__stack_chk_guard);
  sub_100009E08();
  sub_100007EAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100476A44()
{
  sub_100011258(__stack_chk_guard);
  sub_100009E08();
  sub_100007EAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100476B28()
{
  sub_100011258(__stack_chk_guard);
  sub_100009E08();
  sub_100007EAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100476B98(void *a1)
{
  v1 = [a1 handle];
  sub_100007ED8();
  sub_100007F00();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_100476C24()
{
  sub_100007ED8();
  sub_100007EAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100476C94()
{
  sub_100007ED8();
  sub_100007EAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100476D04()
{
  sub_100007ED8();
  sub_100007EAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100476D74()
{
  sub_100007ED8();
  sub_100007EAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100476DE4()
{
  sub_100007ED8();
  sub_100007EAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100476E54()
{
  sub_100015044();
  v1 = [v0 activity];
  v2 = [v1 UUID];
  sub_100007EB8();
  sub_100007F00();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_100476EFC()
{
  sub_100009DFC();
  sub_100007EAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100476F38()
{
  sub_100009DFC();
  sub_100007EAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100476F74()
{
  sub_100009DFC();
  sub_100007EAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100476FB0()
{
  sub_100009DFC();
  sub_100007EAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100476FEC()
{
  sub_100009DFC();
  sub_100007EAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100477028()
{
  sub_100009DFC();
  sub_100007EAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100477064()
{
  sub_100007ED8();
  sub_100007EAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10047713C()
{
  sub_100007710();
  [v0 type];
  v1 = [sub_10000790C() typeAsString:?];
  sub_100007ED8();
  sub_100007F00();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_100477238()
{
  sub_100007710();
  [v0 type];
  v1 = [sub_10000790C() typeAsString:?];
  sub_100007ED8();
  sub_100007F00();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_1004772CC()
{
  sub_100009DFC();
  sub_100007EAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100477308()
{
  sub_100007710();
  [v0 type];
  v1 = [sub_10000790C() typeAsString:?];
  sub_100007ED8();
  sub_100007F00();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_100477404()
{
  sub_100007ED8();
  sub_100007EAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100477474()
{
  sub_100007ED8();
  sub_100007EAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1004774E4()
{
  sub_100009DFC();
  sub_100007EAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100477520()
{
  sub_100009DFC();
  sub_100007EAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10047755C()
{
  sub_100007ED8();
  sub_100007EAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1004775CC()
{
  sub_100007ED8();
  sub_100007EAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1004776A4()
{
  sub_100009DFC();
  sub_100007EAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004776E0(void *a1)
{
  v1 = [a1 addedMembers];
  [v1 count];
  sub_100007ED8();
  sub_100007F00();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_100477770()
{
  sub_100007ED8();
  sub_100007EAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1004777E0()
{
  sub_100009E08();
  sub_100007EAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100477854()
{
  sub_100009DFC();
  sub_100007EAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100477890()
{
  sub_100011258(__stack_chk_guard);
  sub_100009E08();
  sub_100007EAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100477900()
{
  sub_100009DFC();
  sub_100007EAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10047793C()
{
  sub_100009DFC();
  sub_100007EAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100477978()
{
  sub_100009DFC();
  sub_100007EAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004779B4()
{
  sub_100007ED8();
  sub_100007EAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100477A24()
{
  sub_100007ED8();
  sub_100007EAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100477A94()
{
  sub_100007ED8();
  sub_100007EAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100477B04(void *a1)
{
  v1 = [a1 UUID];
  sub_100007ED8();
  sub_100007F00();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_100477BD0()
{
  sub_100015044();
  v1 = [*(v0 + 32) handle];
  v2 = [v1 value];
  sub_100007EB8();
  sub_100007F00();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_100477C7C()
{
  sub_100007ED8();
  sub_100007EAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100477CEC()
{
  sub_100009E08();
  sub_100007EAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100477D60()
{
  sub_100007ED8();
  sub_100007EAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100477E38()
{
  sub_100007ED8();
  sub_100007EAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100477EA8(uint64_t a1, uint64_t a2)
{
  v4 = [sub_100007B84(a1 a2)];
  *v3 = 138412290;
  *v2 = v4;
  sub_100015C58(&_mh_execute_header, v5, v6, "No image provided in update message for activity: %@");
}

void sub_100477F04()
{
  sub_100007ED8();
  sub_100007EAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100477F74()
{
  sub_100009DFC();
  sub_100007EAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100478020()
{
  sub_100009DFC();
  sub_100007EAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10047805C(uint64_t a1, uint64_t a2)
{
  v4 = [sub_100007B84(a1 a2)];
  *v3 = 138412290;
  *v2 = v4;
  sub_100015C58(&_mh_execute_header, v5, v6, "Requesting to disconnect call %@");
}

void sub_1004780B8()
{
  sub_100011258(__stack_chk_guard);
  sub_100009E08();
  sub_100007EAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100478128()
{
  sub_100007ED8();
  sub_100007EAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100478198()
{
  sub_100011258(__stack_chk_guard);
  sub_10000A530();
  sub_100007F10(&_mh_execute_header, v0, v1, "Not adding highlight identifier %@ because no conversation could be found for UUID %@");
}

void sub_100478204()
{
  sub_100009DFC();
  sub_100007EAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100478240()
{
  sub_100009DFC();
  sub_100007EAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10047827C()
{
  sub_100009DFC();
  sub_100007EAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004782B8()
{
  sub_100007ED8();
  sub_100007EAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100478328()
{
  sub_100011258(__stack_chk_guard);
  sub_10000A530();
  sub_100007F10(&_mh_execute_header, v0, v1, "Asked to add collaboration dictionary %@ to conversation with UUID %@, but no such conversation exists");
}

void sub_100478394()
{
  sub_100009E08();
  sub_100007EAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100478408()
{
  sub_100007ED8();
  sub_100007EAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100478478(void *a1)
{
  v1 = [a1 URL];
  sub_100007ED8();
  sub_100007F00();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_100478504()
{
  sub_100009DFC();
  sub_100007EAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100478540()
{
  sub_100009DFC();
  sub_100007EAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10047857C()
{
  sub_100015044();
  v1 = TULoggableStringForHandle();
  v2 = [v0 storageGuid];
  sub_10000E89C();
  sub_100016224(&_mh_execute_header, v3, v4, "service:account:incomingData:fromID:context: receiving proxied IDS message from %{mask.hash}@ with ID %{mask.hash}@", v5, v6, v7, v8);
}

void sub_10047861C()
{
  sub_100015044();
  v1 = TULoggableStringForHandle();
  v2 = [v0 storageGuid];
  sub_10000E89C();
  sub_100016224(&_mh_execute_header, v3, v4, "service:account:incomingResourceAtURL:metadata:fromID:context: receiving proxied IDS resource from %{mask.hash}@ with ID %{mask.hash}@", v5, v6, v7, v8);
}

void sub_1004786BC()
{
  sub_100009DFC();
  sub_100015E58();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004786F8()
{
  sub_100007710();
  [v0 type];
  v1 = [sub_10000790C() typeAsString:?];
  sub_100007ED8();
  sub_100007F00();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_10047878C()
{
  sub_100009DFC();
  sub_100007EAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004787C8()
{
  sub_100009DFC();
  sub_100007EAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100478804()
{
  sub_100009DFC();
  sub_100015E58();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100478880()
{
  sub_100009DFC();
  sub_100007EAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004788BC()
{
  sub_100009DFC();
  sub_100007EAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004788F8()
{
  sub_100007ED8();
  sub_100015E58();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100478968()
{
  sub_100007ED8();
  sub_100007EAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1004789D8()
{
  sub_100009DFC();
  sub_100007EAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100478A14()
{
  sub_100009DFC();
  sub_100007EAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100478A50()
{
  sub_100009DFC();
  sub_100007EAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100478A8C()
{
  sub_100009DFC();
  sub_100007EAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100478AC8()
{
  sub_100009DFC();
  sub_100007EAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100478B04()
{
  sub_100009DFC();
  sub_100007EAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100478B40()
{
  sub_100007ED8();
  sub_100007EAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100478BB0()
{
  sub_100009DFC();
  sub_100007EAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100478BEC()
{
  sub_100009DFC();
  sub_100007EAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100478C28(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to activate remote display discovery: %@", &v2, 0xCu);
}

void sub_100478CA0(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"CHRecentCall_CSD.m" lineNumber:41 description:@"This call's call history identifier is nil"];
}

void sub_100478FEC(uint64_t a1, NSObject *a2)
{
  v2 = *(a1 + 32);
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to acquire process assertion for bundle identifier %@", &v3, 0xCu);
}

void sub_100479068(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Unable to initialize CXCallDirectoryStore for reading: %@", &v2, 0xCu);
}

void sub_100479214(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Couldn't find iPhone with callerID as %@ in IDS relay device list %@", &v3, 0x16u);
}

void sub_100479324(void *a1, NSObject *a2)
{
  v3 = [a1 callProviderStore];
  v4 = [v3 dictionaryRepresentation];
  sub_100007ED8();
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Current call provider KVS %@", v5, 0xCu);
}

void sub_1004794A0()
{
  sub_10000E4C8(__stack_chk_guard);
  sub_100009E08();
  sub_100007EE4(&_mh_execute_header, v0, v1, "Encountered error while opening URL: %@", v2, v3, v4, v5);
}

void sub_100479508()
{
  sub_100009E08();
  sub_100007EAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1004795F0()
{
  sub_100009DFC();
  sub_100007EAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100479764()
{
  sub_100009DFC();
  sub_100007EAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004798D8()
{
  sub_100009DFC();
  sub_100007EAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100479914()
{
  sub_100009DFC();
  sub_100007EAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100479A88()
{
  sub_100009DFC();
  sub_100007EAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100479AC4()
{
  sub_100009DFC();
  sub_100007EAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100479B00()
{
  sub_100011258(__stack_chk_guard);
  sub_100009E08();
  sub_100007EE4(&_mh_execute_header, v0, v1, "Cannot perform recording operation, client asked to perform request on UPI that does not exist in call container %@", v2, v3, v4, v5);
}

void sub_100479B68()
{
  sub_100011258(__stack_chk_guard);
  sub_100009E08();
  sub_100007EE4(&_mh_execute_header, v0, v1, "Cannot perform translation operation, client asked to perform request on UPI that does not exist in call container %@", v2, v3, v4, v5);
}

void sub_100479CA8()
{
  sub_100011258(__stack_chk_guard);
  sub_100009E08();
  sub_100007EE4(&_mh_execute_header, v0, v1, "Cannot perform smart holding operation, client asked to perform request on UPI that does not exist in call container %@", v2, v3, v4, v5);
}

void sub_100479D80()
{
  sub_100011258(__stack_chk_guard);
  sub_100009E08();
  sub_100007EE4(&_mh_execute_header, v0, v1, "Cannot perform TUSmartHoldingRequest, client asked to perform request on UPI that does not exist in call container %@", v2, v3, v4, v5);
}

void sub_100479DE8()
{
  sub_100011258(__stack_chk_guard);
  sub_100009E08();
  sub_100007EE4(&_mh_execute_header, v0, v1, "Failed to perform TUSmartHoldingSessionRequest with error %@", v2, v3, v4, v5);
}

void sub_100479EB8()
{
  sub_100011258(__stack_chk_guard);
  sub_100009E08();
  sub_100007F10(&_mh_execute_header, v0, v1, "Attempting to answer a Walkie-Talkie call whose endpoint is not Apple Watch; aborting answer request %@ for call %@");
}

void sub_10047A01C()
{
  sub_10000E4C8(__stack_chk_guard);
  sub_100009E08();
  sub_100007EE4(&_mh_execute_header, v0, v1, "Failed to pull call for user activity %@", v2, v3, v4, v5);
}

void sub_10047A190(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Could not obtain application state from user info dictionary %@", &v2, 0xCu);
}

void sub_10047A208(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Could not obtain bundle identifier from user info dictionary %@", &v2, 0xCu);
}

void sub_10047A280(id *a1)
{
  v1 = [*a1 userInfo];
  v2 = [v1 objectForKeyedSubscript:@"bundleIDs"];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  sub_100007ED8();
  sub_100007F00();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0xCu);
}

void sub_10047A344(uint8_t *a1, uint64_t a2, void *a3, NSObject *a4)
{
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  *a1 = 138412290;
  *a3 = v8;
  _os_log_error_impl(&_mh_execute_header, a4, OS_LOG_TYPE_ERROR, "handleApplicationUninstalledNotification: bundleIdentifier type: %@", a1, 0xCu);
}

void sub_10047A490(uint64_t a1, void *a2)
{
  [a2 hasVoIPBackgroundMode];
  [a2 hasVoIPNetworkExtensionEntitlement];
  sub_100007F00();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x18u);
}

void sub_10047A548()
{
  sub_100007ED8();
  sub_100007EAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10047A5B8()
{
  sub_100007ED8();
  sub_100007EAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10047A918(uint64_t a1, void *a2)
{
  [a2 hasVoIPBackgroundMode];
  sub_100007F00();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x12u);
}

void sub_10047A9B0(void *a1, NSObject *a2)
{
  v3 = [a1 bundleIdentifier];
  sub_100007ED8();
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "Channel: falling back to LS for determing push environment %@", v4, 0xCu);
}

void sub_10047AA44(void *a1)
{
  v1 = [a1 bundleIdentifier];
  sub_100007ED8();
  sub_100007F00();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_10047AAD0(void *a1)
{
  v1 = [a1 bundleIdentifier];
  sub_100007ED8();
  sub_100007F00();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_10047AB5C()
{
  sub_100007ED8();
  sub_100007EAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10047ABCC(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Dropping notice %@ because of invalid bundleID", &v2, 0xCu);
}

void sub_10047AC44(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = 138412802;
  v6 = v3;
  v7 = 2112;
  v8 = v4;
  v9 = 2112;
  v10 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Attempt to open application with bundle identifier %@ url: %@ failed with error %@", &v5, 0x20u);
}

void sub_10047ACEC(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to load activated conversation links with error %@", &v2, 0xCu);
}

void sub_10047ADA8()
{
  sub_100007ED8();
  v3 = 2112;
  v4 = v0;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "Could not find default app call provider for bundleIdentifier %@ providers: %@", v2, 0x16u);
}

void sub_10047AE94(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = 138412802;
  v6 = v3;
  v7 = 2112;
  v8 = v4;
  v9 = 2112;
  v10 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Failed to open user activity %@ for bundle identifier %@: %@", &v5, 0x20u);
}

void sub_10047AF28()
{
  sub_100007ED8();
  v3 = 2114;
  v4 = v0;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "Could not get LSApplicationRecord for app %{public}@ to determine intent support. Using %{public}@.", v2, 0x16u);
}

void sub_10047AFB4(id *a1, NSObject *a2)
{
  v3 = [*a1 protoUpgradeSessionUUID];
  sub_100007ED8();
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Error while creating UUID from %@", v4, 0xCu);
}

void sub_10047B04C()
{
  sub_100007ED8();
  sub_100007EAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10047B0BC()
{
  sub_100007ED8();
  sub_100007EAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10047B12C()
{
  sub_100007ED8();
  sub_100007EAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10047B19C()
{
  sub_100007ED8();
  sub_100007EAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10047B20C()
{
  sub_100009DFC();
  sub_100007EAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10047B248()
{
  sub_100009DFC();
  sub_100007EAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10047B284()
{
  sub_100007ED8();
  sub_100007EAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10047B45C()
{
  sub_100007ED8();
  sub_100007EAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10047B540(void *a1, uint64_t a2, NSObject *a3)
{
  v6 = [a1 link];
  v7 = 138412802;
  v8 = a1;
  v9 = 2112;
  v10 = a2;
  v11 = 2112;
  v12 = v6;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "There's already an ongoing conversation %@ with the same groupUUID as the link %@, but the conversation does not have the same link %@", &v7, 0x20u);
}

void sub_10047B5FC()
{
  sub_100009DFC();
  sub_100007EAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10047B638()
{
  sub_100009DFC();
  sub_100007EAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10047B674()
{
  sub_100009DFC();
  sub_100007EAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10047B6B0()
{
  sub_100007ED8();
  sub_100007EAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10047B794()
{
  sub_100009DFC();
  sub_100007EAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10047B7D0()
{
  sub_100009DFC();
  sub_100007EAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10047B80C()
{
  sub_100009DFC();
  sub_100007EAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10047B848()
{
  sub_100009DFC();
  sub_100007EAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10047B884()
{
  sub_100007ED8();
  sub_100007EAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10047B8F4()
{
  sub_100009DFC();
  sub_100007EAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10047B930()
{
  sub_100007ED8();
  sub_100007EAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10047B9B4(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Unable to report outgoing call started connecting; could not find call UUID for conversation: %@", &v2, 0xCu);
}

void sub_10047BA2C(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Unable to report outgoing call connected; Leaving conversation since could not find call UUID for conversation: %@", &v2, 0xCu);
}

void sub_10047BC6C(void *a1)
{
  v1 = [a1 handle];
  sub_100007ED8();
  sub_100007F30(&_mh_execute_header, v2, v3, "senderIdentity is nil for handle = %@", v4, v5, v6, v7);
}

void sub_10047BCF0(void *a1)
{
  v1 = [a1 handle];
  sub_100007ED8();
  sub_100007F30(&_mh_execute_header, v2, v3, "Error obtaining contact for handle = %@", v4, v5, v6, v7);
}

void sub_10047BD74(id *a1)
{
  v1 = [*a1 uniqueProxyIdentifier];
  sub_100007ED8();
  sub_100007F30(&_mh_execute_header, v2, v3, "Nil call returned when dialing call. Notifying client of failed dial call for %@", v4, v5, v6, v7);
}

void sub_10047BF40()
{
  sub_100011258(__stack_chk_guard);
  sub_100009E08();
  sub_100007EE4(&_mh_execute_header, v0, v1, "Nil call returned when dialing call. Notifying client of failed join conversation request %@", v2, v3, v4, v5);
}

void sub_10047BFEC()
{
  sub_100011258(__stack_chk_guard);
  sub_100009E08();
  sub_100007EE4(&_mh_execute_header, v0, v1, "Failed to prepare conference for pushing hosted call %@", v2, v3, v4, v5);
}

void sub_10047C054()
{
  sub_100011258(__stack_chk_guard);
  sub_100009E08();
  sub_100007EE4(&_mh_execute_header, v0, v1, "Socket did not become available when pushing call. Resetting endpointOnCurrent device to YES for %@", v2, v3, v4, v5);
}

void sub_10047C0BC()
{
  sub_100011258(__stack_chk_guard);
  sub_100009E08();
  sub_100007EE4(&_mh_execute_header, v0, v1, "Conference did not start successfully when pushing call. Resetting endpointOnCurrent device to YES for %@", v2, v3, v4, v5);
}

void sub_10047C268(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "%@", &v2, 0xCu);
}

void sub_10047C2E0()
{
  v2 = 138412546;
  v3 = @"Ringtones";
  sub_10000A524();
  v4 = v0;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "Error creating '%@' sandbox extension directory: %@", &v2, 0x16u);
}

void sub_10047C4A0()
{
  sub_100007ED8();
  sub_10000A524();
  v3 = v0;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "Error removing links for filenames not in array (%@): %@", v2, 0x16u);
}

void sub_10047C5F0(uint64_t a1)
{
  objc_opt_class();
  sub_100007ED8();
  sub_10000A524();
  v2 = v1;
  sub_100009DDC(&_mh_execute_header, v3, v4, "Registered providers object was of unexpected class %@: %@", v5, v6, v7, v8);
}

void sub_10047C714()
{
  sub_100015044();
  v1 = [v0 remoteParticipantsByIdentifier];
  sub_100007FB4();
  sub_100009DDC(&_mh_execute_header, v2, v3, "Unknown participant identifier %llu current participants: %@", v4, v5, v6, v7);
}

void sub_10047C7A0()
{
  sub_100015044();
  v1 = [v0 remoteParticipantsByIdentifier];
  sub_100007FB4();
  sub_100009DDC(&_mh_execute_header, v2, v3, "Unknown participant identifier %lu current participants: %@", v4, v5, v6, v7);
}

void sub_10047C8A0()
{
  sub_100007F80();
  sub_100009E9C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10047C910()
{
  sub_100007F80();
  sub_100009E9C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10047C980(uint64_t a1, void *a2)
{
  v2 = [a2 remoteParticipantsByIdentifier];
  sub_100007FB4();
  sub_100009DDC(&_mh_execute_header, v3, v4, "removeParticipant: %@ Active remote participants: %@", v5, v6, v7, v8);
}

void sub_10047CA14()
{
  sub_100007F80();
  sub_100009E9C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10047CA84()
{
  sub_100009E80();
  sub_100009E9C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10047CAF4()
{
  sub_100009E80();
  sub_100009E9C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10047CB64()
{
  sub_100009E80();
  sub_100009E9C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10047CBD4()
{
  sub_100009E80();
  sub_100009E9C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10047CC44()
{
  sub_100009E80();
  sub_100009E9C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10047CCB4()
{
  sub_100009E80();
  sub_100009E9C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10047CF14()
{
  sub_10000E4C8(__stack_chk_guard);
  sub_100009E08();
  sub_100007EE4(&_mh_execute_header, v0, v1, "Asked to dial call %@ but the host was unavailable", v2, v3, v4, v5);
}

void sub_10047CF7C()
{
  sub_10000E4C8(__stack_chk_guard);
  sub_100009E08();
  sub_100007EE4(&_mh_execute_header, v0, v1, "Asked to dial call %@ but the session was unavailable", v2, v3, v4, v5);
}

void sub_10047CFE4()
{
  sub_10000E4C8(__stack_chk_guard);
  sub_100009E08();
  sub_100007EE4(&_mh_execute_header, v0, v1, "Transport did not become available when answering call %@", v2, v3, v4, v5);
}

void sub_10047D04C()
{
  sub_10000E4C8(__stack_chk_guard);
  sub_100009E08();
  sub_100007EE4(&_mh_execute_header, v0, v1, "Transport did not become available when pulling call. Resetting endpointOnCurrent device to NO for %@", v2, v3, v4, v5);
}

void sub_10047D11C()
{
  sub_100007ED8();
  v3 = 2112;
  v4 = v0;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "Conference connection failed for call %@: %@. Disconnecting call with relay failed", v2, 0x16u);
}

void sub_10047D22C(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Error while querying file attributes: %@", &v2, 0xCu);
}

void sub_10047D2A4(void *a1, void *a2, NSObject *a3)
{
  v6 = *a1;
  v7 = [a2 validationStatusForAlias:*a1];
  v8 = [a2 validationErrorReasonForAlias:*a1];
  v9 = [a2 vettedAliases];
  v10 = 138413314;
  v11 = v6;
  v12 = 2112;
  v13 = a2;
  v14 = 2048;
  v15 = v7;
  v16 = 2048;
  v17 = v8;
  v18 = 2112;
  v19 = v9;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "Failed to add alias %@ to account %@. Validation status: %ld, validation error reason: %ld, vetted aliases: %@", &v10, 0x34u);
}

void sub_10047D3A4(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Error while saving _callerID %@", &v2, 0xCu);
}

void sub_10047D41C(void *a1, uint64_t a2, NSObject *a3)
{
  v5 = [a1 client];
  sub_100007ED8();
  v7 = 2112;
  v8 = a2;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "Failed to get active contexts from client %@: %@", v6, 0x16u);
}

void sub_10047D4C8()
{
  sub_10000A548();
  sub_100009E9C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void sub_10047D608()
{
  sub_100007F80();
  sub_100009E9C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10047D678()
{
  sub_100007F80();
  sub_100009E9C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10047D6E8()
{
  sub_100009E68();
  sub_100009E9C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10047D75C()
{
  sub_100009E68();
  sub_100009E9C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10047D7D0()
{
  sub_10000A548();
  sub_100009E9C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void sub_10047D840()
{
  sub_100007F80();
  sub_100009E9C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10047D8B0()
{
  sub_100007F80();
  sub_100009E9C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10047D988()
{
  sub_100007F80();
  sub_100009E9C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10047D9F8()
{
  sub_10000A548();
  sub_100009E9C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void sub_10047DA68(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "JoinCallAction is not valid because there is not exactly one remote member %@", &v2, 0xCu);
}

void sub_10047DAE0(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Error capturing snapshot: %@", &v2, 0xCu);
}

void sub_10047DB6C()
{
  sub_100007EB8();
  v3 = v0;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "Not starting a new session for identifier %@ because an active session for the identifier already exists: %@", v2, 0x16u);
}

void sub_10047DBE8(void *a1)
{
  v1 = [a1 firstObject];
  sub_100007EB8();
  sub_100009DDC(&_mh_execute_header, v2, v3, "Not starting a new session for identifier %@ because an active session for the identifier already exists: %@", v4, v5, v6, v7);
}

void sub_10047DC7C(id *a1)
{
  v1 = [*a1 typeString];
  sub_100007EB8();
  sub_100009DDC(&_mh_execute_header, v2, v3, "Failed to send %@ message: %@", v4, v5, v6, v7);
}

void sub_10047E0FC(void *a1)
{
  v1 = [a1 transactionID];
  sub_100007ED8();
  sub_100007F00();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_10047E188(uint64_t a1, void *a2)
{
  v2 = [a2 remoteIDSDestinations];
  sub_10000A524();
  sub_100007F00();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_10047E298(void *a1)
{
  [a1 streamToken];
  sub_100007ED8();
  sub_100007F00();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_10047E3C0(uint64_t a1, id *a2)
{
  v2 = [*a2 sessionsByToken];
  sub_10000A524();
  sub_100007F00();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_10047E468(uint64_t a1, void *a2)
{
  v2 = [a2 remoteIDSDestinations];
  sub_10000A524();
  sub_100007F00();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_10047E834()
{
  sub_100009E08();
  sub_10000A524();
  sub_100007EAC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10047E944(void *a1, int a2, NSObject *a3)
{
  v4[0] = 67109376;
  v4[1] = a2;
  v5 = 2048;
  v6 = [a1 callID];
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "Failed to initialize a new call with device role %d. Got callID=%ld", v4, 0x12u);
}

void sub_10047EBC4(uint64_t a1)
{
  v2 = +[TUAudioSystemController sharedAudioSystemController];
  v3 = [v2 isUplinkMuted];
  v10 = @"NO";
  if (v3)
  {
    v10 = @"YES";
  }

  *v11 = 138412546;
  *&v11[4] = a1;
  *&v11[12] = 2112;
  *&v11[14] = v10;
  sub_100009DDC(&_mh_execute_header, v4, v5, "Set muted call action failed: %@ %@", v6, v7, v8, v9, *v11, *&v11[8], *&v11[16]);
}

void sub_10047EE28(uint64_t a1, void *a2)
{
  v3 = [a2 calls];
  *v10 = 138412546;
  *&v10[4] = a1;
  *&v10[12] = 2112;
  *&v10[14] = v3;
  sub_100009DDC(&_mh_execute_header, v4, v5, "Could not find call to group with for set group call action: %@. All call: %@", v6, v7, v8, v9, *v10, *&v10[8], *&v10[16]);
}

void sub_10047EF9C()
{
  sub_100007ED8();
  v3 = 1024;
  v4 = v0;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "Join call action failed: %@, faceTimeIDStatus: %d", v2, 0x12u);
}

void sub_10047F088(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = *(a1 + 32);
  sub_100007EE4(&_mh_execute_header, a2, a3, "Error performing TUCallTranslationRequest %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_10047F0F8(void *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = *a1;
  sub_100007EE4(&_mh_execute_header, a2, a3, "Could not serialize handoffActivityUserInfo into a CXHandoffContext: %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_10047F168()
{
  sub_100007ED8();
  v3 = 2112;
  v4 = v0;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "Error while determining process action for callSource: %@, action: %@", v2, 0x16u);
}

void sub_10047F1EC(id *a1, uint64_t a2, NSObject *a3)
{
  v6 = [*a1 machServiceName];
  v7 = [*a1 requiredConnectionCapability];
  v8 = 138412802;
  v9 = v6;
  v10 = 2112;
  v11 = v7;
  v12 = 2112;
  v13 = a2;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "Rejecting client for %@ because it lacks the %@ capability: %@", &v8, 0x20u);
}

void sub_10047F330(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Encountered error %d when setting up btSession", v2, 8u);
}

void sub_10047F3A8(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v3 = 138412546;
  *&v3[4] = *(a1 + 40);
  *&v3[12] = 2112;
  *&v3[14] = a2;
  sub_100007F10(&_mh_execute_header, a2, a3, "Could not report new multiway call from %@: %@", *v3, *&v3[8], *&v3[16]);
}

void sub_10047F424(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v3 = 138412546;
  *&v3[4] = a1;
  *&v3[12] = 2112;
  *&v3[14] = a2;
  sub_100007F10(&_mh_execute_header, a2, a3, "Reporting call failure for conversation with conversationUUID %@ and callUUID %@", *v3, *&v3[8], *&v3[16]);
}

Swift::String __swiftcall NSLocalizedString(_:tableName:bundle:value:comment:)(Swift::String _, Swift::String_optional tableName, NSBundle bundle, Swift::String value, Swift::String comment)
{
  v5 = NSLocalizedString(_:tableName:bundle:value:comment:)(_._countAndFlagsBits, _._object, tableName.value._countAndFlagsBits, tableName.value._object, bundle.super.isa, value._countAndFlagsBits, value._object, comment._countAndFlagsBits);
  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}

Swift::String __swiftcall URL.path(percentEncoded:)(Swift::Bool percentEncoded)
{
  v1 = URL.path(percentEncoded:)(percentEncoded);
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

Swift::String_optional __swiftcall LanguageManager.localizedString(forKey:table:bundle:languageCode:)(Swift::String forKey, Swift::String table, NSBundle bundle, Swift::String_optional languageCode)
{
  v4 = LanguageManager.localizedString(forKey:table:bundle:languageCode:)(forKey._countAndFlagsBits, forKey._object, table._countAndFlagsBits, table._object, bundle.super.isa, languageCode.value._countAndFlagsBits, languageCode.value._object);
  result.value._object = v5;
  result.value._countAndFlagsBits = v4;
  return result;
}

uint64_t + infix(_:_:)()
{
  return + infix(_:_:)();
}

{
  return + infix(_:_:)();
}

{
  return + infix(_:_:)();
}

{
  return + infix(_:_:)();
}

uint64_t RawRepresentable<>.encode(to:)()
{
  return RawRepresentable<>.encode(to:)();
}

{
  return RawRepresentable<>.encode(to:)();
}

uint64_t KeyedDecodingContainer.decodeIfPresent(_:forKey:)()
{
  return KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
}

{
  return KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
}

{
  return KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
}

{
  return KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
}

uint64_t KeyedDecodingContainer.decode(_:forKey:)()
{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

uint64_t KeyedEncodingContainer.encodeIfPresent(_:forKey:)()
{
  return KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
}

{
  return KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
}

{
  return KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
}

{
  return KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
}

uint64_t KeyedEncodingContainer.encode(_:forKey:)()
{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}