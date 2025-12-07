uint64_t sub_1000772A8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1000772F0()
{
  result = qword_1002192D0;
  if (!qword_1002192D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002192D0);
  }

  return result;
}

uint64_t sub_100077360()
{
  sub_10000DDA0();
  _StringGuts.grow(_:)(22);

  v0._countAndFlagsBits = sub_100003898();
  String.append(_:)(v0);
  v1._countAndFlagsBits = 0x3A6369706F74202CLL;
  v1._object = 0xE900000000000020;
  String.append(_:)(v1);
  v2._countAndFlagsBits = sub_100005854();
  String.append(_:)(v2);
  return 0x3A6C656E6E616863;
}

uint64_t sub_10007740C(void *a1)
{
  v2 = sub_1000A4700(a1);
  if (v3)
  {
    v4 = v2;
    sub_1000A470C(a1);
    if (!v5)
    {

      return 0;
    }
  }

  else
  {

    return 0;
  }

  return v4;
}

uint64_t sub_100077488(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = a1 == a5 && a2 == a6;
  if (v12 || (v13 = _stringCompareWithSmolCheck(_:_:expecting:)(), result = 0, (v13 & 1) != 0))
  {
    if (a3 == a7 && a4 == a8)
    {
      return 1;
    }

    else
    {

      return _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  return result;
}

uint64_t sub_100077528(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  String.hash(into:)();

  return String.hash(into:)();
}

Swift::Int sub_100077578(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_100077600(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

void sub_10007768C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = *(v4 + OBJC_IVAR____TtC7parsecd34CloudNotificationChannelConnection_apsConnection);
  if (v5)
  {
    v10 = objc_allocWithZone(PKPublicChannel);
    v11 = v5;

    v12 = sub_100078C68(a1, a2);
    sub_100078CCC(v12, a3, a4, v11);
    if (qword_100214128 != -1)
    {
      sub_100005E24();
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_10000964C(v13, qword_100232B98);
    v14 = v12;

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v21 = v11;
      v18 = swift_slowAlloc();
      sub_1000083D0();
      v19 = swift_slowAlloc();
      v22 = v19;
      *v17 = 138412546;
      *(v17 + 4) = v14;
      *v18 = v12;
      *(v17 + 12) = 2080;
      v20 = v14;
      *(v17 + 14) = sub_100009684(a3, a4, &v22);
      _os_log_impl(&_mh_execute_header, v15, v16, "Subscribed to channel %@ for topic %s", v17, 0x16u);
      sub_10000F94C(v18, &unk_100214C70, &qword_10019B4D0);
      sub_1000037A4();

      sub_100007378(v19);
      sub_1000037A4();

      sub_1000037A4();
    }

    else
    {
    }
  }

  else
  {
    sub_100078E14();
    swift_allocError();
    swift_willThrow();
  }
}

void sub_1000778DC(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 >> 60 == 15)
  {
    if (qword_100214128 != -1)
    {
      sub_100005E24();
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_100006674(v3, qword_100232B98);
    oslog = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v4))
    {
      v5 = sub_100006640();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v4, "Received null public token on token callback.", v5, 2u);
      sub_1000037A4();
    }

    goto LABEL_10;
  }

  sub_100014924(a2, a3);
  if (qword_100214128 != -1)
  {
    sub_100005E24();
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100006674(v6, qword_100232B98);
  v7 = sub_100005854();
  sub_100014924(v7, v8);
  oslog = Logger.logObject.getter();
  v9 = static os_log_type_t.info.getter();
  v10 = sub_100005854();
  sub_100014A2C(v10, v11);
  if (os_log_type_enabled(oslog, v9))
  {
    v12 = sub_100007800();
    sub_1000083D0();
    v13 = swift_slowAlloc();
    v21 = v13;
    *v12 = 136642819;
    v14 = Data.base64EncodedString(options:)(0);
    v15 = sub_100009684(v14._countAndFlagsBits, v14._object, &v21);

    *(v12 + 4) = v15;
    _os_log_impl(&_mh_execute_header, oslog, v9, "Received cloud channels connection token %{sensitive}s", v12, 0xCu);
    sub_100007378(v13);
    sub_1000037A4();

    sub_1000037A4();

    v16 = sub_100005854();
    sub_100014A2C(v16, v17);
LABEL_10:

    return;
  }

  v18 = sub_100005854();

  sub_100014A2C(v18, v19);
}

void sub_100077BC8(uint64_t a1, void *a2)
{
  if (!a2)
  {
    if (qword_100214128 != -1)
    {
      sub_100005E24();
      swift_once();
    }

    v34 = type metadata accessor for Logger();
    sub_100006674(v34, qword_100232B98);
    v38 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v38, v35))
    {
      v36 = sub_100006640();
      *v36 = 0;
      _os_log_impl(&_mh_execute_header, v38, v35, "Received null APNs message.", v36, 2u);
      sub_1000037A4();
    }

    goto LABEL_23;
  }

  v3 = v2;
  v38 = a2;
  v4 = sub_100078D34(v38);
  if (v4 && (v5 = sub_100078FB0(v4), , v5))
  {
    if (qword_100214128 != -1)
    {
      sub_100005E24();
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_10000964C(v6, qword_100232B98);

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = sub_100007800();
      sub_1000083D0();
      v10 = swift_slowAlloc();
      v39[0] = v10;
      *v9 = 136642819;
      v11 = Dictionary.description.getter();
      v13 = sub_100009684(v11, v12, v39);

      *(v9 + 4) = v13;
      _os_log_impl(&_mh_execute_header, v7, v8, "Received APNS message: %{sensitive}s", v9, 0xCu);
      sub_100007378(v10);
      sub_1000037A4();

      sub_1000037A4();
    }

    v38 = v38;
    sub_10007740C(v38);
    if (v14)
    {
      v15 = v3 + OBJC_IVAR____TtC7parsecd34CloudNotificationChannelConnection_latestMessage;
      os_unfair_lock_lock((v3 + OBJC_IVAR____TtC7parsecd34CloudNotificationChannelConnection_latestMessage));
      v16 = v38;
      swift_isUniquelyReferenced_nonNull_native();
      v39[0] = *(v15 + 8);
      v37 = v16;
      sub_1000BD944();
      *(v15 + 8) = v39[0];
      os_unfair_lock_unlock(v15);

      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = sub_100007800();
        sub_1000083D0();
        v20 = swift_slowAlloc();
        v39[0] = v20;
        *v19 = 136315138;

        v21 = sub_100077360();
        v23 = v22;

        v24 = sub_100009684(v21, v23, v39);

        *(v19 + 4) = v24;
        _os_log_impl(&_mh_execute_header, v17, v18, "Sending xpc event for message for %s", v19, 0xCu);
        sub_100007378(v20);
        sub_1000037A4();

        sub_1000037A4();
      }

      sub_1000092B4(v3 + OBJC_IVAR____TtC7parsecd34CloudNotificationChannelConnection_xpcEventsManager, v39);
      sub_100007534(v39, v39[3]);
      v25 = sub_1000A4700(v37);
      if (v26)
      {
        v27 = v25;
        v28 = v26;

        sub_1001117E0(v27, v28);

        sub_100007378(v39);
      }

      else
      {
        __break(1u);
      }

      return;
    }

    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v30, v31))
    {
      goto LABEL_18;
    }

    v32 = sub_100006640();
    *v32 = 0;
    v33 = "Failed to build channel identifier from APNs message.";
  }

  else
  {
    if (qword_100214128 != -1)
    {
      sub_100005E24();
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    sub_100006674(v29, qword_100232B98);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v30, v31))
    {
      goto LABEL_18;
    }

    v32 = sub_100006640();
    *v32 = 0;
    v33 = "Received invalid APNS message.";
  }

  _os_log_impl(&_mh_execute_header, v30, v31, v33, v32, 2u);
  sub_1000037A4();

LABEL_18:

LABEL_23:
}

void sub_100078294(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + OBJC_IVAR____TtC7parsecd34CloudNotificationChannelConnection_apsConnection);
  if (v5)
  {
    v10 = qword_100214128;
    v11 = v5;
    if (v10 != -1)
    {
      sub_100005E24();
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_10000964C(v12, qword_100232B98);

    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v15 = 136315394;
      *(v15 + 4) = sub_100009684(a1, a2, &v21);
      *(v15 + 12) = 2080;
      v16 = sub_100003898();
      *(v15 + 14) = sub_100009684(v16, v17, v18);
      _os_log_impl(&_mh_execute_header, v13, v14, "Unsubscribing from %s on %s", v15, 0x16u);
      swift_arrayDestroy();
      sub_1000037A4();

      sub_1000037A4();
    }

    v19 = objc_allocWithZone(PKPublicChannel);

    v20 = sub_100078C68(a1, a2);
    sub_100078DAC(v20, a3, a4, v11);
  }

  else
  {
    sub_100078E14();
    swift_allocError();
    swift_willThrow();
  }
}

void *sub_1000784B0()
{
  v3 = v1;
  sub_10000DDA0();
  if (qword_100214128 != -1)
  {
    sub_100005E24();
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100006674(v4, qword_100232B98);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    swift_slowAlloc();
    *v7 = 136315394;
    v8 = sub_100003898();
    *(v7 + 4) = sub_100009684(v8, v9, v10);
    *(v7 + 12) = 2080;
    v11 = sub_100005854();
    *(v7 + 14) = sub_100009684(v11, v12, v13);
    _os_log_impl(&_mh_execute_header, v5, v6, "fetching latest push message from %s for %s", v7, 0x16u);
    swift_arrayDestroy();
    sub_1000037A4();

    sub_1000037A4();
  }

  v14 = v3 + OBJC_IVAR____TtC7parsecd34CloudNotificationChannelConnection_latestMessage;
  os_unfair_lock_lock(v14);
  v15 = *(v14 + 8);
  if (*(v15 + 16) && (v16 = sub_100003898(), v18 = sub_1000BB890(v16, v17, v2, v0), (v19 & 1) != 0))
  {
    v20 = *(*(v15 + 56) + 8 * v18);
    v21 = v20;
  }

  else
  {
    v20 = 0;
  }

  os_unfair_lock_unlock(v14);
  return v20;
}

void sub_100078678(__n128 a1, uint64_t a2, unint64_t a3)
{
  if (!a3)
  {
LABEL_31:
    __break(1u);
    return;
  }

  v3 = a3;
  if (a3 >> 62)
  {
    v4 = _CocoaArrayWrapper.endIndex.getter();
    if (v4)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
LABEL_4:
      if (v4 >= 1)
      {
        v5 = 0;
        v97 = 0x80000001001ACE70;
        v102 = v3 & 0xC000000000000001;
        a1.n128_u64[0] = 136315651;
        v73 = a1;
        v87 = v4;
        v92 = v3;
        while (1)
        {
          if (v102)
          {
            v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v6 = *(v3 + 8 * v5 + 32);
          }

          v7 = v6;
          v8 = sub_100027DE8(v6, &selRef_channelID);
          if (v9)
          {
            v10 = v8;
          }

          else
          {
            v10 = 4999502;
          }

          v112 = v10;
          v11 = sub_100027DE8(v7, &selRef_pushTopic);
          if (v12)
          {
            v13 = v11;
          }

          else
          {
            v13 = 4999502;
          }

          v107 = v13;
          [v7 failureReason];
          if ([v7 failureReason] == 1)
          {
            if (qword_100214128 != -1)
            {
              sub_100005E24();
              swift_once();
            }

            v14 = type metadata accessor for Logger();
            sub_100006674(v14, qword_100232B98);

            v15 = Logger.logObject.getter();
            v16 = static os_log_type_t.debug.getter();

            if (!os_log_type_enabled(v15, v16))
            {
              goto LABEL_25;
            }

            sub_1000083D0();
            v17 = swift_slowAlloc();
            v18 = swift_slowAlloc();
            sub_100004108(v18, v19, v20, v21, v22, v23, v24, v25, v73.n128_i32[0], v73.n128_i64[1], v82, v87, v92, v97, v102, v107, v112, v117);

            sub_100011908(v26, v27, v28, v29, v30, v31, v32, v33, v74, v78, v83, v88, v93, v98, v103, v108, v113);

            v42 = sub_10000F4A4(v34, v35, v36, v37, v38, v39, v40, v41, v75, v79, v84, v89, v94, v99, v104, v109, v114);

            *(v17 + 24) = v42;
            v43 = v16;
            v44 = v15;
            v45 = "Failed to resubscribe, %s [pushTopic: %{sensitive}s, channelID: %{sensitive}s]";
          }

          else
          {
            if (qword_100214128 != -1)
            {
              sub_100005E24();
              swift_once();
            }

            v46 = type metadata accessor for Logger();
            sub_100006674(v46, qword_100232B98);

            v15 = Logger.logObject.getter();
            v47 = static os_log_type_t.error.getter();

            if (!os_log_type_enabled(v15, v47))
            {
LABEL_25:

              goto LABEL_26;
            }

            sub_1000083D0();
            v17 = swift_slowAlloc();
            v48 = swift_slowAlloc();
            sub_100004108(v48, v49, v50, v51, v52, v53, v54, v55, v73.n128_i32[0], v73.n128_i64[1], v82, v87, v92, v97, v102, v107, v112, v117);

            sub_100011908(v56, v57, v58, v59, v60, v61, v62, v63, v76, v80, v85, v90, v95, v100, v105, v110, v115);

            v72 = sub_10000F4A4(v64, v65, v66, v67, v68, v69, v70, v71, v77, v81, v86, v91, v96, v101, v106, v111, v116);

            *(v17 + 24) = v72;
            v43 = v47;
            v44 = v15;
            v45 = "Failed to subscribe, %s [pushTopic: %{sensitive}s, channelID: %{sensitive}s]";
          }

          _os_log_impl(&_mh_execute_header, v44, v43, v45, v17, 0x20u);
          swift_arrayDestroy();
          v3 = v92;
          sub_1000037A4();

          v4 = v87;
          sub_1000037A4();

LABEL_26:

          if (v4 == ++v5)
          {
            return;
          }
        }
      }

      __break(1u);
      goto LABEL_31;
    }
  }
}

id sub_100078B44()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CloudNotificationChannelConnection();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_100078C14()
{
  result = qword_100216658;
  if (!qword_100216658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100216658);
  }

  return result;
}

id sub_100078C68(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = String._bridgeToObjectiveC()();
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 initWithChannelID:v3];

  return v4;
}

void sub_100078CCC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = String._bridgeToObjectiveC()();
  [a4 subscribeToChannel:a1 forTopic:v6];
}

uint64_t sub_100078D34(void *a1)
{
  v2 = [a1 userInfo];

  if (!v2)
  {
    return 0;
  }

  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

void sub_100078DAC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = String._bridgeToObjectiveC()();
  [a4 unsubscribeFromChannel:a1 forTopic:v6];
}

unint64_t sub_100078E14()
{
  result = qword_100216660;
  if (!qword_100216660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100216660);
  }

  return result;
}

unint64_t sub_100078E68()
{
  result = qword_100216670;
  if (!qword_100216670)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100216670);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CloudNotificationChannelError(_BYTE *result, int a2, int a3)
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

unint64_t sub_100078F5C()
{
  result = qword_100216680;
  if (!qword_100216680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100216680);
  }

  return result;
}

unint64_t sub_100078FB0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100046184(&qword_100216690, &qword_1001A0410);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  while (1)
  {
    if (!v5)
    {
      while (1)
      {
        v9 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          break;
        }

        if (v9 >= v6)
        {

          return v2;
        }

        v5 = *(a1 + 64 + 8 * v9);
        ++v8;
        if (v5)
        {
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
      return result;
    }

    v9 = v8;
LABEL_12:
    v10 = __clz(__rbit64(v5)) | (v9 << 6);
    sub_1000342B0(*(a1 + 48) + 40 * v10, __src);
    sub_100009848(*(a1 + 56) + 32 * v10, &__src[40]);
    memcpy(__dst, __src, sizeof(__dst));
    sub_1000342B0(__dst, v19);
    if (!swift_dynamicCast())
    {
      break;
    }

    v5 &= v5 - 1;
    sub_100009848(&__dst[40], v20);
    sub_10000F94C(__dst, &qword_100216698, &qword_10019AA88);
    v21 = v18;
    sub_100028734(v20, v22);
    v11 = v21;
    sub_100028734(v22, v23);
    sub_100028734(v23, &v21);
    result = sub_100005B74(v11, *(&v11 + 1));
    v12 = result;
    if (v13)
    {
      *(v2[6] + 16 * result) = v11;

      v14 = (v2[7] + 32 * v12);
      sub_100007378(v14);
      result = sub_100028734(&v21, v14);
      v8 = v9;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_22;
      }

      *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v2[6] + 16 * result) = v11;
      result = sub_100028734(&v21, (v2[7] + 32 * result));
      v15 = v2[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_23;
      }

      v2[2] = v17;
      v8 = v9;
    }
  }

  sub_10000F94C(__dst, &qword_100216698, &qword_10019AA88);

  return 0;
}

char *sub_100079268()
{
  v1 = v0;
  v245 = type metadata accessor for String.Encoding();
  v244 = *(v245 - 8);
  __chkstk_darwin(v245);
  v243 = &v243 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100046184(&unk_100219B70, &qword_10019DFE0);
  __chkstk_darwin(v3 - 8);
  sub_100003838();
  sub_100004144();
  __chkstk_darwin(v4);
  v252 = &v243 - v5;
  v6 = sub_100046184(&qword_100217050, &qword_100199180);
  __chkstk_darwin(v6 - 8);
  sub_100003838();
  sub_100004144();
  __chkstk_darwin(v7);
  sub_100005924();
  v257 = v8;
  sub_100007F80();
  __chkstk_darwin(v9);
  v11 = &v243 - v10;
  __chkstk_darwin(v12);
  sub_100005924();
  sub_100004144();
  __chkstk_darwin(v13);
  v15 = &v243 - v14;
  __chkstk_darwin(v16);
  sub_100005924();
  sub_100004144();
  __chkstk_darwin(v17);
  sub_100005924();
  v266 = v18;
  sub_100007F80();
  __chkstk_darwin(v19);
  sub_100005924();
  sub_100004144();
  __chkstk_darwin(v20);
  sub_100005924();
  sub_100004144();
  __chkstk_darwin(v21);
  sub_100005924();
  v263 = v22;
  sub_100007F80();
  __chkstk_darwin(v23);
  sub_100005924();
  sub_100004144();
  __chkstk_darwin(v24);
  sub_100005924();
  sub_100004144();
  __chkstk_darwin(v25);
  sub_100005924();
  v265 = v26;
  sub_100007F80();
  __chkstk_darwin(v27);
  sub_100005924();
  v262 = v28;
  sub_100007F80();
  __chkstk_darwin(v29);
  sub_100005924();
  v264 = v30;
  sub_100007F80();
  __chkstk_darwin(v31);
  sub_100005924();
  v261 = v32;
  sub_100007F80();
  __chkstk_darwin(v33);
  sub_100005924();
  v259 = v34;
  sub_100007F80();
  __chkstk_darwin(v35);
  sub_100005924();
  v260 = v36;
  sub_100007F80();
  __chkstk_darwin(v37);
  sub_100005924();
  v258 = v38;
  sub_100007F80();
  __chkstk_darwin(v39);
  v41 = &v243 - v40;
  __chkstk_darwin(v42);
  v44 = &v243 - v43;
  __chkstk_darwin(v45);
  v47 = &v243 - v46;
  __chkstk_darwin(v48);
  v50 = &v243 - v49;
  v52 = __chkstk_darwin(v51);
  v54 = &v243 - v53;
  v55 = [v1 requestStartDate];
  if (v55)
  {
    v56 = v55;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v57 = type metadata accessor for Date();
    v58 = 0;
  }

  else
  {
    v57 = type metadata accessor for Date();
    v58 = 1;
  }

  v255 = v15;
  v256 = v11;
  sub_10000BE68(v50, v58);
  sub_10007B070(v50, v54, &qword_100217050, &qword_100199180);
  type metadata accessor for Date();
  v59 = sub_100008D0C(v54, 1, v57);
  v251 = "ificationChannelConnection";
  if (v59 == 1)
  {
    sub_10000F94C(v54, &qword_100217050, &qword_100199180);
    v60 = sub_100005B74(0xD00000000000002CLL, 0x80000001001ACEC0);
    if (v61)
    {
      v62 = v60;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v268 = _swiftEmptyDictionarySingleton;
      v64 = _swiftEmptyDictionarySingleton[3];
      sub_100046184(&qword_1002166A0, &unk_10019D8D0);
      sub_1000066B4();
      _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v64);
      v65 = v268;

      sub_100028734((v65[7] + 32 * v62), &v269);
      _NativeDictionary._delete(at:)();
    }

    else
    {
      sub_10000551C();
      v65 = _swiftEmptyDictionarySingleton;
    }

    v69 = v1;
    v70 = v265;
    sub_10000F94C(&v269, &qword_1002181D0, &qword_100198E00);
  }

  else
  {
    Date.timeIntervalSinceReferenceDate.getter();
    v270 = &type metadata for Double;
    sub_100005E38(v66);
    v67 = sub_10000AE18();
    v68(v67);
    sub_100007F50();
    sub_1000083DC();
    sub_1000BD4F0();
    v65 = v267;
    v69 = v1;
    v70 = v265;
  }

  v71 = v258;
  v72 = [v69 requestStartDate];
  if (v72)
  {
    v73 = v72;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v74 = 0;
  }

  else
  {
    v74 = 1;
  }

  sub_10000BE68(v44, v74);
  sub_10007B070(v44, v47, &qword_100217050, &qword_100199180);
  sub_1000038A4(v47);
  if (v75)
  {
    sub_10000F94C(v47, &qword_100217050, &qword_100199180);
    v76 = sub_100005B74(0xD00000000000001BLL, 0x80000001001ACEF0);
    if (v77)
    {
      v78 = v76;
      v79 = swift_isUniquelyReferenced_nonNull_native();
      v268 = v65;
      v80 = v65[3];
      sub_100046184(&qword_1002166A0, &unk_10019D8D0);
      sub_1000066B4();
      v81 = v80;
      v70 = v265;
      _NativeDictionary.ensureUnique(isUnique:capacity:)(v79, v81);
      v65 = v268;

      sub_100028734((v65[7] + 32 * v78), &v269);
      _NativeDictionary._delete(at:)();
    }

    else
    {
      sub_10000551C();
    }

    sub_10000F94C(&v269, &qword_1002181D0, &qword_100198E00);
  }

  else
  {
    Date.timeIntervalSinceReferenceDate.getter();
    v270 = &type metadata for Double;
    sub_100005E38(v82);
    (*(v83 + 8))(v47, v57);
    sub_10000B030();
    sub_10000DDB4();
    sub_1000BD4F0();
    v65 = v267;
  }

  v84 = [v69 requestStartDate];
  if (v84)
  {
    v85 = v84;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v86 = 0;
  }

  else
  {
    v86 = 1;
  }

  sub_10000BE68(v71, v86);
  sub_10007B070(v71, v41, &qword_100217050, &qword_100199180);
  sub_1000038A4(v41);
  if (v75)
  {
    sub_10000F94C(v41, &qword_100217050, &qword_100199180);
    sub_100005B74(0xD00000000000001DLL, 0x80000001001ACF10);
    if (v87)
    {
      sub_10001900C();
      sub_10000E0DC();
      sub_100046184(&qword_1002166A0, &unk_10019D8D0);
      v88 = sub_100004134();
      _NativeDictionary.ensureUnique(isUnique:capacity:)(v88, "_kCFNTimingDataRequestStart");
      sub_10000EB4C();
      sub_10000DB78();
      sub_10000C984();
      _NativeDictionary._delete(at:)();
    }

    else
    {
      sub_10000551C();
    }

    v92 = v259;
    v91 = v260;
    sub_10000F94C(&v269, &qword_1002181D0, &qword_100198E00);
  }

  else
  {
    Date.timeIntervalSinceReferenceDate.getter();
    v270 = &type metadata for Double;
    sub_100005E38(v89);
    (*(v90 + 8))(v41, v57);
    sub_10000B030();
    sub_10000DDB4();
    sub_1000BD4F0();
    v65 = v267;
    v92 = v259;
    v91 = v260;
  }

  v93 = [v69 requestEndDate];
  if (v93)
  {
    v94 = v93;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v95 = 0;
  }

  else
  {
    v95 = 1;
  }

  sub_10000BE68(v92, v95);
  sub_10007B070(v92, v91, &qword_100217050, &qword_100199180);
  sub_1000038A4(v91);
  if (v75)
  {
    sub_10000F94C(v91, &qword_100217050, &qword_100199180);
    v96 = sub_100007854();
    sub_100005B74(v96, v97);
    if (v98)
    {
      sub_10001900C();
      sub_10000E0DC();
      sub_100046184(&qword_1002166A0, &unk_10019D8D0);
      v99 = sub_100004134();
      _NativeDictionary.ensureUnique(isUnique:capacity:)(v99, v92);
      sub_10000EB4C();
      sub_10000DB78();
      sub_10000C984();
      _NativeDictionary._delete(at:)();
    }

    else
    {
      sub_10000551C();
    }

    v103 = v261;
    sub_10000F94C(&v269, &qword_1002181D0, &qword_100198E00);
  }

  else
  {
    Date.timeIntervalSinceReferenceDate.getter();
    v270 = &type metadata for Double;
    sub_100005E38(v100);
    v101 = sub_10000AE18();
    v102(v101);
    sub_10000B030();
    sub_10000DDB4();
    sub_100006F40();
    sub_1000BD4F0();
    v65 = v267;
    v103 = v261;
  }

  v104 = [v69 responseStartDate];
  if (v104)
  {
    v105 = v104;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v106 = 0;
  }

  else
  {
    v106 = 1;
  }

  v107 = sub_10000F1A4(v104, v106);
  sub_10001BE00(v107, v108, &qword_100217050, &qword_100199180);
  sub_1000038A4(v103);
  if (v75)
  {
    sub_10000F94C(v103, &qword_100217050, &qword_100199180);
    sub_100005B74(0xD00000000000001CLL, 0x80000001001ACF50);
    if (v109)
    {
      sub_10001900C();
      sub_10000E0DC();
      sub_100046184(&qword_1002166A0, &unk_10019D8D0);
      v110 = sub_100004134();
      _NativeDictionary.ensureUnique(isUnique:capacity:)(v110, v92);
      sub_10000EB4C();
      sub_10000DB78();
      sub_10000C984();
      _NativeDictionary._delete(at:)();
    }

    else
    {
      sub_10000551C();
    }

    v114 = v262;
    sub_10000F94C(&v269, &qword_1002181D0, &qword_100198E00);
  }

  else
  {
    Date.timeIntervalSinceReferenceDate.getter();
    v270 = &type metadata for Double;
    sub_100005E38(v111);
    v112 = sub_10000AE18();
    v113(v112);
    sub_10000B030();
    sub_10000DDB4();
    sub_100006F40();
    sub_1000BD4F0();
    v65 = v267;
    v114 = v262;
  }

  v115 = [v69 responseEndDate];
  if (v115)
  {
    v116 = v115;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v117 = 0;
  }

  else
  {
    v117 = 1;
  }

  sub_10000BE68(v70, v117);
  sub_10007B070(v70, v114, &qword_100217050, &qword_100199180);
  sub_1000038A4(v114);
  if (v75)
  {
    sub_10000F94C(v114, &qword_100217050, &qword_100199180);
    sub_100005B74(0xD00000000000001ALL, 0x80000001001ACF70);
    if (v118)
    {
      sub_10001900C();
      sub_10000E0DC();
      sub_100046184(&qword_1002166A0, &unk_10019D8D0);
      v119 = sub_100004134();
      _NativeDictionary.ensureUnique(isUnique:capacity:)(v119, v92);
      sub_10000EB4C();
      sub_10000DB78();
      sub_10000C984();
      _NativeDictionary._delete(at:)();
    }

    else
    {
      sub_10000551C();
    }

    sub_10000F94C(&v269, &qword_1002181D0, &qword_100198E00);
  }

  else
  {
    Date.timeIntervalSinceReferenceDate.getter();
    v270 = &type metadata for Double;
    sub_100005E38(v120);
    v121 = sub_10000AE18();
    v122(v121);
    sub_10000B030();
    sub_10000DDB4();
    sub_100006F40();
    sub_1000BD4F0();
    v65 = v267;
  }

  v123 = [v69 isReusedConnection];
  v270 = &type metadata for Bool;
  LOBYTE(v269) = v123;
  sub_10000B030();
  sub_10000DDB4();
  sub_100006F40();
  sub_1000BD4F0();
  v124 = [v69 countOfRequestHeaderBytesSent];
  v270 = &type metadata for Int64;
  *&v269 = v124;
  sub_100007B98();
  v125 = sub_1000069B4();
  sub_10001ABF4(v125, 0xD000000000000020);
  v126 = [v69 countOfResponseHeaderBytesReceived];
  v270 = &type metadata for Int64;
  *&v269 = v126;
  sub_100007B98();
  v127 = sub_1000069B4();
  sub_10001ABF4(v127, 0xD000000000000021);
  v128 = [v69 countOfResponseBodyBytesReceived];
  v270 = &type metadata for Int64;
  *&v269 = v128;
  sub_100007B98();
  v129 = sub_1000069B4();
  sub_10001ABF4(v129, 0xD000000000000028);
  v130 = [v69 countOfResponseBodyBytesAfterDecoding];
  v270 = &type metadata for Int64;
  *&v269 = v130;
  sub_100007B98();
  v131 = sub_1000069B4();
  sub_10001ABF4(v131, 0xD000000000000027);
  v132 = [v69 countOfRequestBodyBytesSent];
  result = [v69 countOfRequestHeaderBytesSent];
  if (__OFADD__(v132, result))
  {
    __break(1u);
    goto LABEL_144;
  }

  v270 = &type metadata for Int64;
  *&v269 = &result[v132];
  sub_100007B98();
  v134 = sub_1000069B4();
  sub_10001ABF4(v134, 0xD00000000000001DLL);
  v135 = [v69 countOfResponseBodyBytesReceived];
  result = [v69 countOfResponseHeaderBytesReceived];
  if (__OFADD__(v135, result))
  {
LABEL_144:
    __break(1u);
    return result;
  }

  v270 = &type metadata for Int64;
  *&v269 = &result[v135];
  sub_100007B98();
  v136 = sub_1000069B4();
  sub_10001ABF4(v136, 0xD000000000000021);
  v137 = v267;
  v138 = sub_100027DE8(v69, &selRef__interfaceName);
  if (v139)
  {
    v270 = &type metadata for String;
    *&v269 = v138;
    *(&v269 + 1) = v139;
    sub_100007B98();
    sub_1000069B4();
    sub_1000BD4F0();
    v137 = v267;
    sub_10000C818();
  }

  else
  {
    sub_100005B74(0xD00000000000002CLL, v251 | 0x8000000000000000);
    sub_10000C818();
    if (v141)
    {
      v142 = v140;
      v143 = swift_isUniquelyReferenced_nonNull_native();
      v268 = v137;
      v137 = *(v137 + 24);
      sub_100046184(&qword_1002166A0, &unk_10019D8D0);
      sub_1000066B4();
      _NativeDictionary.ensureUnique(isUnique:capacity:)(v143, v137);
      sub_100023ED4();
      sub_100028734((*(v137 + 56) + 32 * v142), &v269);
      _NativeDictionary._delete(at:)();
    }

    else
    {
      sub_10000551C();
    }

    sub_10000F94C(&v269, &qword_1002181D0, &qword_100198E00);
  }

  v144 = [v69 _connectionIdentifier];
  if (v144)
  {
    v145 = v144;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v146 = 0;
  }

  else
  {
    v146 = 1;
  }

  v147 = type metadata accessor for UUID();
  sub_1000051C0(&UploadStateFileStore.ivar_base_size, v146, 1, v147);
  sub_10007B070(&UploadStateFileStore.ivar_base_size, &UploadStateFileStore.ivar_base_size, &unk_100219B70, &qword_10019DFE0);
  if (sub_100008D0C(&UploadStateFileStore.ivar_base_size, 1, v147) == 1)
  {
    sub_10000F94C(&UploadStateFileStore.ivar_base_size, &unk_100219B70, &qword_10019DFE0);
    v148 = sub_100005B74(0xD00000000000001DLL, 0x80000001001AD0C0);
    if (v149)
    {
      v150 = v148;
      v151 = swift_isUniquelyReferenced_nonNull_native();
      v268 = v137;
      v152 = *(v137 + 24);
      sub_100046184(&qword_1002166A0, &unk_10019D8D0);
      sub_1000066B4();
      _NativeDictionary.ensureUnique(isUnique:capacity:)(v151, v152);
      sub_100023ED4();
      sub_100028734((*(v152 + 56) + 32 * v150), &v269);
      _NativeDictionary._delete(at:)();
    }

    else
    {
      sub_10000551C();
    }

    v155 = v263;
    sub_10000F94C(&v269, &qword_1002181D0, &qword_100198E00);
  }

  else
  {
    v153 = UUID.uuidString.getter();
    v270 = &type metadata for String;
    *&v269 = v153;
    *(&v269 + 1) = v154;
    (*(*(v147 - 8) + 8))(&UploadStateFileStore.ivar_base_size, v147);
    sub_100007B98();
    sub_1000069B4();
    sub_1000BD4F0();
    v155 = v263;
  }

  v156 = [v69 _redirected];
  v270 = &type metadata for UInt32;
  LODWORD(v269) = v156;
  sub_100007B98();
  v157 = sub_1000069B4();
  sub_10001ABF4(v157, 0xD00000000000001CLL);
  v158 = v267;
  v159 = [v69 connectStartDate];
  if (v159)
  {
    v160 = v159;
    v161 = v253;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v162 = 0;
    v163 = v254;
  }

  else
  {
    v162 = 1;
    v163 = v254;
    v161 = v253;
  }

  sub_10000BE68(v161, v162);
  sub_10007B070(v161, v163, &qword_100217050, &qword_100199180);
  sub_1000038A4(v163);
  if (v75)
  {
    sub_10000F94C(v163, &qword_100217050, &qword_100199180);
    sub_100015B30(0xD00000000000001BLL);
    if (v164)
    {
      sub_1000125EC();
      sub_10000F4C8();
      sub_100046184(&qword_1002166A0, &unk_10019D8D0);
      v165 = sub_100004134();
      v166 = v155;
      v155 = v263;
      _NativeDictionary.ensureUnique(isUnique:capacity:)(v165, v166);
      sub_10000A9F4();
      sub_1000098FC();
      sub_10000C984();
      _NativeDictionary._delete(at:)();
    }

    else
    {
      sub_10000551C();
    }

    v170 = v246;
    sub_10000F94C(&v269, &qword_1002181D0, &qword_100198E00);
  }

  else
  {
    Date.timeIntervalSinceReferenceDate.getter();
    v270 = &type metadata for Double;
    sub_100005E38(v167);
    v168 = sub_10000AE18();
    v169(v168);
    sub_100007F50();
    sub_1000083DC();
    sub_100006F40();
    sub_1000BD4F0();
    v158 = v267;
    v170 = v246;
  }

  v171 = [v69 connectEndDate];
  if (v171)
  {
    v172 = v171;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v173 = 0;
  }

  else
  {
    v173 = 1;
  }

  sub_10000BE68(v170, v173);
  sub_10007B070(v170, v155, &qword_100217050, &qword_100199180);
  sub_1000038A4(v155);
  if (v75)
  {
    sub_10000F94C(v155, &qword_100217050, &qword_100199180);
    v174 = sub_100007854();
    sub_100005B74(v174, v175);
    if (v176)
    {
      sub_1000125EC();
      sub_10000F4C8();
      sub_100046184(&qword_1002166A0, &unk_10019D8D0);
      v177 = sub_100004134();
      _NativeDictionary.ensureUnique(isUnique:capacity:)(v177, v155);
      sub_10000A9F4();
      sub_1000098FC();
      sub_10000C984();
      _NativeDictionary._delete(at:)();
    }

    else
    {
      sub_10000551C();
    }

    v180 = v247;
    sub_10000F94C(&v269, &qword_1002181D0, &qword_100198E00);
  }

  else
  {
    Date.timeIntervalSinceReferenceDate.getter();
    v270 = &type metadata for Double;
    sub_100005E38(v178);
    (*(v179 + 8))(v155, v57);
    sub_100007F50();
    sub_1000083DC();
    sub_100006F40();
    sub_1000BD4F0();
    v158 = v267;
    v180 = v247;
  }

  v181 = [v69 domainLookupStartDate];
  if (v181)
  {
    v182 = v181;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v183 = 0;
  }

  else
  {
    v183 = 1;
  }

  v184 = sub_10000F1A4(v181, v183);
  sub_10001BE00(v184, v185, &qword_100217050, &qword_100199180);
  sub_1000038A4(v180);
  if (v75)
  {
    sub_10000F94C(v180, &qword_100217050, &qword_100199180);
    sub_100015B30(0xD000000000000020);
    if (v186)
    {
      sub_1000125EC();
      sub_10000F4C8();
      sub_100046184(&qword_1002166A0, &unk_10019D8D0);
      v187 = sub_100004134();
      _NativeDictionary.ensureUnique(isUnique:capacity:)(v187, v155);
      sub_10000A9F4();
      sub_1000098FC();
      sub_10000C984();
      _NativeDictionary._delete(at:)();
    }

    else
    {
      sub_10000551C();
    }

    v191 = v248;
    sub_10000F94C(&v269, &qword_1002181D0, &qword_100198E00);
  }

  else
  {
    Date.timeIntervalSinceReferenceDate.getter();
    v270 = &type metadata for Double;
    sub_100005E38(v188);
    v189 = sub_10000AE18();
    v190(v189);
    sub_100007F50();
    sub_1000083DC();
    sub_100006F40();
    sub_1000BD4F0();
    v158 = v267;
    v191 = v248;
  }

  v192 = [v69 domainLookupEndDate];
  if (v192)
  {
    v193 = v192;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v194 = 0;
  }

  else
  {
    v194 = 1;
  }

  v195 = sub_10000F1A4(v192, v194);
  sub_10001BE00(v195, v196, &qword_100217050, &qword_100199180);
  sub_1000038A4(v191);
  if (v75)
  {
    sub_10000F94C(v191, &qword_100217050, &qword_100199180);
    sub_100015B30(0xD00000000000001ELL);
    if (v197)
    {
      sub_1000125EC();
      sub_10000F4C8();
      sub_100046184(&qword_1002166A0, &unk_10019D8D0);
      v198 = sub_100004134();
      _NativeDictionary.ensureUnique(isUnique:capacity:)(v198, v155);
      sub_10000A9F4();
      sub_1000098FC();
      sub_10000C984();
      _NativeDictionary._delete(at:)();
    }

    else
    {
      sub_10000551C();
    }

    v202 = v249;
    sub_10000F94C(&v269, &qword_1002181D0, &qword_100198E00);
  }

  else
  {
    Date.timeIntervalSinceReferenceDate.getter();
    v270 = &type metadata for Double;
    sub_100005E38(v199);
    v200 = sub_10000AE18();
    v201(v200);
    sub_100007F50();
    sub_1000083DC();
    sub_100006F40();
    sub_1000BD4F0();
    v158 = v267;
    v202 = v249;
  }

  v203 = [v69 fetchStartDate];
  if (v203)
  {
    v204 = v203;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v205 = 0;
  }

  else
  {
    v205 = 1;
  }

  v206 = sub_10000F1A4(v203, v205);
  sub_10001BE00(v206, v207, &qword_100217050, &qword_100199180);
  sub_1000038A4(v202);
  if (v75)
  {
    sub_10000F94C(v202, &qword_100217050, &qword_100199180);
    v208 = sub_100007854();
    sub_100005B74(v208, v209);
    if (v210)
    {
      sub_1000125EC();
      sub_10000F4C8();
      sub_100046184(&qword_1002166A0, &unk_10019D8D0);
      v211 = sub_100004134();
      _NativeDictionary.ensureUnique(isUnique:capacity:)(v211, v155);
      sub_10000A9F4();
      sub_1000098FC();
      sub_10000C984();
      _NativeDictionary._delete(at:)();
    }

    else
    {
      sub_10000551C();
    }

    v215 = v250;
    sub_10000F94C(&v269, &qword_1002181D0, &qword_100198E00);
  }

  else
  {
    Date.timeIntervalSinceReferenceDate.getter();
    v270 = &type metadata for Double;
    sub_100005E38(v212);
    v213 = sub_10000AE18();
    v214(v213);
    sub_100007F50();
    sub_1000083DC();
    sub_100006F40();
    sub_1000BD4F0();
    v158 = v267;
    v215 = v250;
  }

  v216 = [v69 secureConnectionStartDate];
  if (v216)
  {
    v217 = v216;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v218 = 0;
  }

  else
  {
    v218 = 1;
  }

  sub_10000BE68(v215, v218);
  sub_10007B070(v215, v65, &qword_100217050, &qword_100199180);
  sub_1000038A4(v65);
  if (v75)
  {
    sub_10000F94C(v65, &qword_100217050, &qword_100199180);
    sub_100015B30(0xD000000000000024);
    if (v219)
    {
      sub_1000125EC();
      sub_10000F4C8();
      sub_100046184(&qword_1002166A0, &unk_10019D8D0);
      v220 = sub_100004134();
      _NativeDictionary.ensureUnique(isUnique:capacity:)(v220, v155);
      sub_10000A9F4();
      sub_1000098FC();
      sub_10000C984();
      _NativeDictionary._delete(at:)();
    }

    else
    {
      sub_10000551C();
    }

    sub_10000F94C(&v269, &qword_1002181D0, &qword_100198E00);
  }

  else
  {
    Date.timeIntervalSinceReferenceDate.getter();
    v270 = &type metadata for Double;
    sub_100005E38(v221);
    (*(v222 + 8))(v65, v57);
    sub_100007F50();
    sub_1000083DC();
    sub_100006F40();
    sub_1000BD4F0();
    v158 = v267;
  }

  v223 = sub_100027DE8(v69, &selRef_networkProtocolName);
  if (v224)
  {
    v270 = &type metadata for String;
    *&v269 = v223;
    *(&v269 + 1) = v224;
    sub_100007F50();
    sub_1000083DC();
    sub_100006F40();
    sub_1000BD4F0();
    v158 = v267;
  }

  else
  {
    sub_100015B30(0xD000000000000022);
    if (v225)
    {
      sub_1000125EC();
      sub_10000F4C8();
      sub_100046184(&qword_1002166A0, &unk_10019D8D0);
      v226 = sub_100004134();
      _NativeDictionary.ensureUnique(isUnique:capacity:)(v226, v155);
      sub_10000A9F4();
      sub_1000098FC();
      sub_10000C984();
      _NativeDictionary._delete(at:)();
    }

    else
    {
      sub_10000551C();
    }

    sub_10000F94C(&v269, &qword_1002181D0, &qword_100198E00);
  }

  v227 = sub_100027DE8(v69, &selRef_remoteAddress);
  if (v228)
  {
    v229 = v227;
    v230 = v228;
    v231 = NSURLSessionTaskTransactionMetrics.remotePort.getter();
    if (v232)
    {
      v233 = 0;
      v234 = 0xE000000000000000;
    }

    else
    {
      *&v269 = 58;
      *(&v269 + 1) = 0xE100000000000000;
      v268 = v231;
      v235._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v235);

      v234 = *(&v269 + 1);
      v233 = v269;
    }

    *&v269 = v229;
    *(&v269 + 1) = v230;
    v236 = v234;
    String.append(_:)(*&v233);

    v237 = v243;
    static String.Encoding.utf8.getter();
    v238 = String.data(using:allowLossyConversion:)();
    v240 = v239;

    (*(v244 + 8))(v237, v245);
    v270 = &type metadata for Data;
    if (v240 >> 60 == 15)
    {
      v241 = 0;
    }

    else
    {
      v241 = v238;
    }

    v242 = 0xC000000000000000;
    if (v240 >> 60 != 15)
    {
      v242 = v240;
    }

    *&v269 = v241;
    *(&v269 + 1) = v242;
    sub_100007F50();
    sub_1000083DC();
    sub_100006F40();
    sub_1000BD4F0();
    return v267;
  }

  return v158;
}

char *sub_10007AF80()
{
  v1 = sub_10007B004(v0);
  if (v1)
  {
    v2 = sub_100078FB0(v1);

    if (v2)
    {
      return v2;
    }
  }

  v4 = [v0 _incompleteCurrentTaskTransactionMetrics];
  v5 = sub_100079268();

  return v5;
}

uint64_t sub_10007B004(void *a1)
{
  v1 = [a1 _timingData];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_10007B070(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100046184(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t sub_10007B19C(unsigned __int8 a1)
{
  if (((1 << a1) & 0xB0) != 0)
  {
    v1 = 0xD000000000000017;
  }

  else
  {
    v1 = 0;
  }

  if (a1 <= 7u)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_10007B224(_BYTE *result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for SearchSessionTableColumn(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF9)
  {
    if (a2 + 7 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 7) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 8;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v5 = v6 - 8;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_10007B354(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_10007B42C(uint64_t a1)
{
  result = sub_1000772F0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10007B458()
{
  result = qword_1002166A8;
  if (!qword_1002166A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002166A8);
  }

  return result;
}

unint64_t sub_10007B514()
{
  result = qword_1002166B0;
  if (!qword_1002166B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002166B0);
  }

  return result;
}

unint64_t sub_10007B568(uint64_t a1)
{
  result = sub_10007B590();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10007B590()
{
  result = qword_1002166B8;
  if (!qword_1002166B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002166B8);
  }

  return result;
}

uint64_t sub_10007B5E4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v108 = a4;
  v110 = a2;
  v9 = sub_100046184(&unk_100219B80, &qword_1001995A0);
  v10 = sub_1000038C4(v9);
  v107 = v11;
  v13 = *(v12 + 64);
  __chkstk_darwin(v10);
  v101 = &v94 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v97 = &v94 - v15;
  __chkstk_darwin(v16);
  v106 = &v94 - v17;
  *(v5 + 16) = _swiftEmptyDictionarySingleton;
  v100 = (v5 + 16);
  v95 = v5;
  sub_1000306C0(a3, v5 + OBJC_IVAR____TtC7parsecd21NotificationsListener_logger);
  v18 = 0;
  v109 = sub_100018F1C(a1);
  sub_100004154();
  v22 = v21 & v20;
  v24 = (v23 + 63) >> 6;
  v25 = v13 + 7;
  v26 = a3;
  v104 = v115;
  v105 = v25;
  *&v27 = 136315394;
  v96 = v27;
  v99 = a5;
  v111 = a3;
  v102 = v19;
  v103 = v24;
  if (v22)
  {
    while (1)
    {
      v28 = a5;
LABEL_7:
      v30 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
      v31 = (*(v109 + 48) + ((v18 << 10) | (16 * v30)));
      v33 = *v31;
      v32 = v31[1];
      out_token = -1;
      v34 = v106;
      sub_1000306C0(v26, v106);
      v35 = (*(v107 + 80) + 16) & ~*(v107 + 80);
      v36 = (v105 + v35) & 0xFFFFFFFFFFFFFFF8;
      v37 = swift_allocObject();
      sub_10007C388(v34, v37 + v35);
      v38 = (v37 + v36);
      *v38 = v33;
      v38[1] = v32;
      v39 = (v37 + ((v36 + 23) & 0xFFFFFFFFFFFFFFF8));
      *v39 = v108;
      v39[1] = v28;
      a5 = v28;
      v115[2] = sub_10003040C;
      v115[3] = v37;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      v115[0] = sub_1000303B8;
      v115[1] = &unk_1001F8F38;
      v40 = _Block_copy(aBlock);
      swift_bridgeObjectRetain_n();
      v41 = v110;

      sub_100004170();
      v42 = String.utf8CString.getter();
      swift_beginAccess();
      v43 = notify_register_dispatch((v42 + 32), &out_token, v41, v40);
      swift_endAccess();

      _Block_release(v40);

      if (v43)
      {
        v26 = v111;
        v44 = v101;
        sub_1000306C0(v111, v101);
        v45 = type metadata accessor for Logger();
        if (sub_100008D0C(v44, 1, v45) != 1)
        {

          v64 = Logger.logObject.getter();
          v65 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v64, v65))
          {
            v66 = swift_slowAlloc();
            v98 = v65;
            v67 = v66;
            v68 = v64;
            v69 = swift_slowAlloc();
            aBlock[0] = v69;
            *v67 = v96;
            v70 = sub_100004170();
            v73 = sub_100009684(v70, v71, v72);

            *(v67 + 4) = v73;
            v26 = v111;
            *(v67 + 12) = 1024;
            *(v67 + 14) = v43;
            v74 = v68;
            _os_log_impl(&_mh_execute_header, v68, v98, "Failed to subscribe to notifications for %s - Result: %u", v67, 0x12u);
            sub_100007378(v69);
            sub_1000036D4(v69);
            a5 = v99;
            sub_1000036D4(v67);
          }

          else
          {
          }

          sub_10000690C();
          (*(v91 + 8))(v101, v45);
          goto LABEL_30;
        }

        v46 = v44;
      }

      else
      {
        v98 = out_token;
        v47 = v100;
        swift_beginAccess();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v112 = *v47;
        v49 = v112;
        *v47 = 0x8000000000000000;
        v50 = sub_100004170();
        v52 = sub_100005B74(v50, v51);
        v54 = *(v49 + 16);
        v55 = (v53 & 1) == 0;
        v56 = v54 + v55;
        if (__OFADD__(v54, v55))
        {
          goto LABEL_34;
        }

        v57 = v52;
        v58 = v53;
        sub_100046184(&unk_1002167A0, &unk_10019AD50);
        if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v56))
        {
          v59 = sub_100004170();
          v61 = sub_100005B74(v59, v60);
          a5 = v99;
          v26 = v111;
          v63 = v97;
          if ((v58 & 1) != (v62 & 1))
          {
            result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
            __break(1u);
            return result;
          }

          v57 = v61;
        }

        else
        {
          a5 = v99;
          v26 = v111;
          v63 = v97;
        }

        v75 = v112;
        if (v58)
        {
          sub_100011930();
        }

        else
        {
          *(v112 + 8 * (v57 >> 6) + 64) |= 1 << v57;
          v76 = (*(v75 + 48) + 16 * v57);
          *v76 = v33;
          v76[1] = v32;
          sub_100011930();
          v77 = *(v75 + 16);
          v78 = __OFADD__(v77, 1);
          v79 = v77 + 1;
          if (v78)
          {
            goto LABEL_35;
          }

          *(v75 + 16) = v79;
        }

        *v100 = v75;
        swift_endAccess();
        sub_1000306C0(v26, v63);
        v80 = type metadata accessor for Logger();
        if (sub_100008D0C(v63, 1, v80) != 1)
        {

          v81 = Logger.logObject.getter();
          v82 = static os_log_type_t.debug.getter();

          if (os_log_type_enabled(v81, v82))
          {
            v83 = swift_slowAlloc();
            v84 = swift_slowAlloc();
            aBlock[0] = v84;
            *v83 = v96;
            v85 = sub_100004170();
            v88 = v81;
            v89 = sub_100009684(v85, v86, v87);

            *(v83 + 4) = v89;
            *(v83 + 12) = 1024;
            *(v83 + 14) = out_token;
            _os_log_impl(&_mh_execute_header, v88, v82, "Successfully subscribed to notifications for %s [token %d]", v83, 0x12u);
            sub_100007378(v84);
            v90 = v84;
            v63 = v97;
            a5 = v99;
            sub_1000036D4(v90);
            sub_1000036D4(v83);
          }

          else
          {
          }

          sub_10000690C();
          (*(v92 + 8))(v63, v80);
          v26 = v111;
          goto LABEL_30;
        }

        v46 = v63;
      }

      sub_10007C320(v46);
LABEL_30:
      v19 = v102;
      v24 = v103;
      if (!v22)
      {
        goto LABEL_3;
      }
    }
  }

  while (1)
  {
LABEL_3:
    v29 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
    }

    if (v29 >= v24)
    {
      break;
    }

    v22 = *(v19 + 8 * v29);
    ++v18;
    if (v22)
    {
      v28 = a5;
      v18 = v29;
      goto LABEL_7;
    }
  }

  sub_10007C320(v26);

  return v95;
}

uint64_t sub_10007BE00(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100046184(&unk_100219B80, &qword_1001995A0);
  __chkstk_darwin(v10 - 8);
  v12 = &v15 - v11;
  sub_1000306C0(a3, &v15 - v11);
  type metadata accessor for NotificationsListener(0);
  v13 = swift_allocObject();
  sub_10007B5E4(a1, a2, v12, a4, a5);
  sub_10007C320(a3);
  return v13;
}

void sub_10007BEE4()
{
  v1 = sub_100046184(&unk_100219B80, &qword_1001995A0);
  __chkstk_darwin(v1 - 8);
  v3 = &v29 - v2;
  swift_beginAccess();
  v36 = v0;
  v4 = *(v0 + 16);
  v5 = v4 + 64;
  sub_100004154();
  v8 = v7 & v6;
  v34 = OBJC_IVAR____TtC7parsecd21NotificationsListener_logger;
  v10 = (v9 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v11 = 0;
  *&v12 = 136315650;
  v29 = v12;
  v30 = v3;
  v31 = v4;
  if (v8)
  {
    goto LABEL_6;
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= v10)
    {

      v28 = v36;

      sub_10007C320(v28 + OBJC_IVAR____TtC7parsecd21NotificationsListener_logger);
      return;
    }

    v8 = *(v5 + 8 * v13);
    ++v11;
    if (v8)
    {
      v11 = v13;
      do
      {
LABEL_6:
        v14 = __clz(__rbit64(v8)) | (v11 << 6);
        v15 = (*(v4 + 48) + 16 * v14);
        v16 = *v15;
        v17 = v15[1];
        v18 = *(*(v4 + 56) + 4 * v14);

        v35 = notify_cancel(v18);
        sub_1000306C0(v36 + v34, v3);
        v19 = type metadata accessor for Logger();
        if (sub_100008D0C(v3, 1, v19) == 1)
        {
          sub_10007C320(v3);
        }

        else
        {
          v32 = v16;

          v20 = Logger.logObject.getter();
          v21 = static os_log_type_t.debug.getter();

          v33 = v20;
          if (os_log_type_enabled(v20, v21))
          {
            v22 = swift_slowAlloc();
            v23 = swift_slowAlloc();
            v37 = v23;
            *v22 = v29;
            *(v22 + 4) = sub_100009684(v32, v17, &v37);
            *(v22 + 12) = 1024;
            *(v22 + 14) = v18;
            *(v22 + 18) = 1024;
            *(v22 + 20) = v35;
            v24 = v21;
            v25 = v33;
            _os_log_impl(&_mh_execute_header, v33, v24, "Canceled notifications for %s [token: %d] - Result: %u", v22, 0x18u);
            sub_100007378(v23);
            v26 = v23;
            v3 = v30;
            sub_1000036D4(v26);
            sub_1000036D4(v22);
          }

          else
          {
          }

          sub_10000690C();
          (*(v27 + 8))(v3, v19);
          v4 = v31;
        }

        v8 &= v8 - 1;
      }

      while (v8);
    }
  }

  __break(1u);
}

uint64_t sub_10007C1D4()
{
  sub_10007BEE4();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for NotificationsListener(uint64_t a1)
{
  result = qword_1002166F0;
  if (!qword_1002166F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10007C280(uint64_t a1)
{
  sub_100055EE4(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_10007C320(uint64_t a1)
{
  v2 = sub_100046184(&unk_100219B80, &qword_1001995A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10007C388(uint64_t a1, uint64_t a2)
{
  v4 = sub_100046184(&unk_100219B80, &qword_1001995A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10007C3F8(uint64_t a1)
{

  sub_100087D10();
}

uint64_t sub_10007C440()
{
  v0 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v4);
  v5 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v5 - 8);
  sub_100005180(0, &qword_1002147C0, OS_dispatch_queue_ptr);
  static DispatchQoS.userInitiated.getter();
  v7[1] = 0;
  sub_1000152E8(&qword_100216910, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  dispatch thunk of OptionSet.init(rawValue:)();
  (*(v1 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v0);
  result = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  qword_100232BC8 = result;
  return result;
}

uint64_t sub_10007C650()
{
  sub_10007CE68();

  sub_10000B218(v0 + 24);
  swift_unknownObjectRelease();
  sub_100016250(*(v0 + 56));
  return v0;
}

uint64_t sub_10007C68C()
{
  sub_10007C650();

  return _swift_deallocClassInstance(v0, 64, 7);
}

void sub_10007C6E4()
{
  sub_100005478();
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  sub_100003650();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_100003664();
  v8 = v7 - v6;
  type metadata accessor for DispatchQoS();
  sub_100003650();
  v31 = v10;
  v32 = v9;
  __chkstk_darwin(v9);
  sub_100003664();
  v13 = v12 - v11;
  if (qword_1002140E8 != -1)
  {
    sub_100005E54(&qword_1002140E8);
  }

  v14 = type metadata accessor for Logger();
  sub_10000964C(v14, qword_100232B28);

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();

  p_cb = &OBJC_PROTOCOL___NSXPCConnectionDelegate.cb;
  if (os_log_type_enabled(v15, v16))
  {
    v30 = v4;
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v33[0] = v19;
    *v18 = 136315394;
    v20 = sub_100030B98(*(v1 + 40));
    v22 = sub_100009684(v20, v21, v33);

    *(v18 + 4) = v22;
    *(v18 + 12) = 2080;
    if (qword_100214138 != -1)
    {
      sub_1000038D4(&qword_100214138);
    }

    v23 = OS_dispatch_queue.label.getter();
    v25 = sub_100009684(v23, v24, v33);

    *(v18 + 14) = v25;
    _os_log_impl(&_mh_execute_header, v15, v16, "%s Queueing call to performUpdateExperiments on queue %s", v18, 0x16u);
    swift_arrayDestroy();
    sub_1000036D4(v19);
    sub_10000AA14();

    v4 = v30;
    p_cb = (&OBJC_PROTOCOL___NSXPCConnectionDelegate + 64);
  }

  else
  {
  }

  if (*(p_cb + 39) != -1)
  {
    sub_1000038D4(&qword_100214138);
  }

  v33[4] = sub_10007D30C;
  v33[5] = v1;
  sub_100003784();
  sub_1000040A8(COERCE_DOUBLE(1107296256));
  v33[2] = v26;
  v33[3] = &unk_1001F9068;
  v27 = _Block_copy(v33);

  static DispatchQoS.unspecified.getter();
  sub_10000F4D8();
  sub_1000152E8(v28, v29, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100046184(&unk_100217030, &unk_1001989C0);
  sub_10000CB0C();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v27);
  (*(v4 + 8))(v8, v2);
  (*(v31 + 8))(v13, v32);

  sub_100005460();
}

void sub_10007CA88()
{
  sub_100005478();
  v1 = *v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  sub_100003650();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_100003664();
  v8 = v7 - v6;
  v9 = type metadata accessor for DispatchQoS();
  sub_100003650();
  v11 = v10;
  __chkstk_darwin(v12);
  sub_100003664();
  v15 = v14 - v13;
  if (qword_100214138 != -1)
  {
    sub_1000038D4(&qword_100214138);
  }

  v16 = swift_allocObject();
  *(v16 + 16) = v0;
  *(v16 + 24) = v1;
  v21[4] = sub_10007D2FC;
  v21[5] = v16;
  sub_100003784();
  sub_1000040A8(COERCE_DOUBLE(1107296256));
  v21[2] = v17;
  v21[3] = &unk_1001F9018;
  v18 = _Block_copy(v21);

  static DispatchQoS.unspecified.getter();
  sub_10000F4D8();
  sub_1000152E8(v19, v20, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100046184(&unk_100217030, &unk_1001989C0);
  sub_10000CB0C();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);
  (*(v4 + 8))(v8, v2);
  (*(v11 + 8))(v15, v9);

  sub_100005460();
}

uint64_t sub_10007CD00(uint64_t a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(a1 + 40);
    if (qword_100214138 != -1)
    {
      swift_once();
    }

    v4 = qword_100232BC8;
    v5 = swift_allocObject();
    swift_weakInit();

    v6 = sub_1000BF014(v3, v4, sub_10007D304, v5);

    swift_unknownObjectRelease();
    *(a1 + 48) = v6;

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10007CE10(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100030790();
  }

  return result;
}

uint64_t sub_10007CE68()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    if (*(v0 + 48))
    {
      v2 = swift_unknownObjectRetain();
      sub_1000BF120(v2);
      swift_unknownObjectRelease();
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10007CEE4(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_10007CF08(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10007CF5C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *sub_10007CFB8(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t sub_10007CFE8(void *a1)
{
  v2 = type metadata accessor for Trialpb_TrialExperiment();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = __chkstk_darwin(v4);
  v7 = &v14 - v6;
  v8 = [a1 namespaces];
  sub_100005180(0, &qword_100216908, TRIVersionedNamespace_ptr);
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (sub_10000D57C(v9))
  {
    sub_100106BF8();
    if ((v9 & 0xC000000000000001) != 0)
    {
      v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v10 = *(v9 + 32);
    }

    v11 = v10;

    v12 = v11;
    sub_10007D1CC(v12, a1);
    sub_100093548();

    return (*(v3 + 8))(v7, v2);
  }

  else
  {
  }
}

void sub_10007D1CC(void *a1, void *a2)
{
  Trialpb_TrialExperiment.init()();
  v3 = [a1 name];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  Trialpb_TrialExperiment.experimentNamespace.setter();
  v4 = [a2 experimentId];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  Trialpb_TrialExperiment.experimentID.setter();
  v5 = [a2 treatmentId];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  Trialpb_TrialExperiment.treatmentID.setter();
  [a2 deploymentId];
  Trialpb_TrialExperiment.deploymentID.setter();
  [a1 compatibilityVersion];
  Trialpb_TrialExperiment.compatibilityVersion.setter();
}

uint64_t sub_10007D318(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_beginAccess();
  v7 = 0;
  v8 = *(v3 + 40);
  v9 = *(v8 + 16);
  v10 = (v8 + 40);
  while (v9 != v7)
  {
    v11 = *(v10 - 1) == a2 && *v10 == a3;
    if (v11 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
    {
      swift_beginAccess();
      sub_10010F894(v7);
      swift_endAccess();
    }

    ++v7;
    v10 += 3;
  }

  return result;
}

uint64_t sub_10007D3E4()
{
  swift_beginAccess();
  *(v0 + 40) = _swiftEmptyArrayStorage;
}

unint64_t sub_10007D428(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1001092C8();
  v7 = result + 1024;
  if (result >= 0xFFFFFFFFFFFFFC00)
  {
    __break(1u);
  }

  else
  {
    swift_beginAccess();

    sub_10010681C();
    v8 = *(*(v3 + 40) + 16);
    sub_10011072C(v8);
    v9 = *(v3 + 40);
    *(v9 + 16) = v8 + 1;
    v10 = (v9 + 24 * v8);
    v10[4] = a2;
    v10[5] = a3;
    v10[6] = v7;
    *(v3 + 40) = v9;
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_10007D4DC(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = result;
    result = swift_beginAccess();
    while (1)
    {
      v3 = *(v1 + 40);
      if (!v3[2] || v2 < 1)
      {
        break;
      }

      v5 = v3[5];
      v6 = v3[6];
      v7 = v3[4];

      sub_1000E4248(v7, v5);

      v2 -= v6;
      if (v6 < 0)
      {
        __break(1u);
        return result;
      }
    }
  }

  return result;
}

void *sub_10007D574()
{
  result = v0;
  v0[4] = 0;
  v0[5] = _swiftEmptyArrayStorage;
  v0[2] = 0;
  v0[3] = 0;
  return result;
}

uint64_t sub_10007D594()
{

  return v0;
}

uint64_t sub_10007D5BC()
{
  sub_10007D594();

  return _swift_deallocClassInstance(v0, 48, 7);
}

uint64_t sub_10007D614(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_10007D90C(&selRef_compressedDataUsingAlgorithm_error_);
  sub_1000E432C(v5, a2, a3);
}

uint64_t sub_10007D7B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v7 = sub_10007D90C(&selRef_decompressedDataUsingAlgorithm_error_);
  LOBYTE(a4) = a4(a1, a2, v7);

  return a4 & 1;
}

void *sub_10007D90C(SEL *a1)
{
  v3 = v1;
  v4 = type metadata accessor for CachedResultSet.Result(0);
  __chkstk_darwin(v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v23 - v8;
  v10 = v3 + OBJC_IVAR____TtC7parsecd15CachedResultSet_result;
  sub_10007DBFC(v10, &v23 - v8);
  v11 = (v10 + *(v4 + 40));
  v12 = *v11;
  v13 = v11[1];
  sub_100014924(*v11, v13);
  isa = Data._bridgeToObjectiveC()().super.isa;
  sub_100014A40(v12, v13);
  v23 = 0;
  v15 = [isa *a1];

  if (v15)
  {
    v16 = v23;
    v17 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    v20 = &v9[*(v4 + 40)];
    sub_100014A40(*v20, *(v20 + 1));
    *v20 = v17;
    *(v20 + 1) = v19;
    sub_10007DBFC(v9, v6);
    v21 = swift_allocObject();
    v21[2] = 0;
    sub_10007DCBC(v6, v21 + OBJC_IVAR____TtC7parsecd15CachedResultSet_result);
  }

  else
  {
    v21 = v23;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  sub_10007DC60(v9);
  return v21;
}

uint64_t sub_10007DB64(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_10007DBA4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10007DBFC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CachedResultSet.Result(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10007DC60(uint64_t a1)
{
  v2 = type metadata accessor for CachedResultSet.Result(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10007DCBC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CachedResultSet.Result(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10007DD84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  v9 = v6;
  v54 = a4;
  v55 = a6;
  v52 = a5;
  v53 = a3;
  v56 = a2;
  v11 = sub_100046184(&unk_100214C80, &qword_10019AFC0);
  __chkstk_darwin(v11 - 8);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v15 = sub_100007BC8();
  sub_100003650();
  v17 = v16;
  __chkstk_darwin(v18);
  sub_10000417C();
  sub_10000A974();
  *(v6 + 64) = _swiftEmptyArrayStorage;
  *(v6 + 72) = 0;
  *(v6 + 88) = 0;
  sub_100005180(0, &qword_100214810, OS_os_log_ptr);
  v19 = sub_1000068E4(0x80000001001AA3A0);
  sub_100003680(v19, v20, v21, v22, v23, v24, &type metadata for String);
  *(v6 + 96) = OS_os_log.init(subsystem:category:)();
  sub_1000036C8();
  v26 = *(v25 + 136);
  v27 = type metadata accessor for OSSignpostID();
  sub_100005E74(v9 + v26, 1);
  v29 = *(v28 + 152);
  type metadata accessor for Locker();
  swift_allocObject();
  v30 = sub_100005860();
  *(v26 + 16) = v30;
  *v30 = 0;
  *(v9 + v29) = v26;
  Date.init()();
  sub_1000036C8();
  v32 = v8;
  v33 = v56;
  (*(v17 + 32))(v9 + *(v31 + 144), v32, v15);
  swift_weakAssign();
  *(v9 + 80) = v33;
  v34 = *(v9 + 96);

  sub_1000066C0();
  sub_100005E74(v7, 0);
  v36 = *(v35 + 136);
  sub_10000587C(v9 + v36);
  sub_10000520C(v7, v9 + v36);
  swift_endAccess();
  v57 = v9;

  v37 = String.init<A>(describing:)();
  v39 = v38;
  v40 = *(*(a1 + 32) + 16);
  os_unfair_lock_lock(v40);
  sub_1000052F4(a1, v37, v39, v9, &off_1001FD218);

  os_unfair_lock_unlock(v40);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v41 = *(a1 + 24);
    ObjectType = swift_getObjectType();
    (*(v41 + 8))(v9, &off_1001FD218, ObjectType, v41);

    swift_unknownObjectRelease();
  }

  else
  {
  }

  sub_100008C9C(v9 + v36, v13);
  result = sub_10000F1C0(v13);
  if (v44)
  {
    __break(1u);
  }

  else
  {
    v45 = *(v9 + 96);
    v46 = static os_signpost_type_t.begin.getter();
    v47 = sub_100008D34(v33);
    LOBYTE(v50) = v52;
    sub_1000070D0(v46, v45, v47, v48, 2, v13, v53, v54, v50, v55);

    sub_10000898C();
    (*(v49 + 8))(v13, v27);
    return v9;
  }

  return result;
}

uint64_t sub_10007E180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  sub_10000C990(a1, a2, a3, a4, a5, a6);
  v56 = v10;
  v12 = v11;
  v13 = sub_100046184(&unk_100214C80, &qword_10019AFC0);
  __chkstk_darwin(v13 - 8);
  sub_100007F00(v14, v52);
  __chkstk_darwin(v15);
  v55 = sub_100007BC8();
  sub_100003650();
  v17 = v16;
  __chkstk_darwin(v18);
  sub_10000417C();
  sub_10000A974();
  *(v7 + 64) = _swiftEmptyArrayStorage;
  *(v7 + 72) = 0;
  *(v7 + 81) = 0;
  sub_100005180(0, &qword_100214810, OS_os_log_ptr);
  v19 = sub_1000068E4(off_100219C28);
  sub_100003680(v19, v20, v21, v22, v23, v24, &type metadata for String);
  v25 = aQuerycache_2[1];

  *(v6 + 88) = sub_100005528();
  sub_1000036C8();
  v27 = *(v26 + 136);
  v28 = type metadata accessor for OSSignpostID();
  sub_100005E74(v6 + v27, 1);
  type metadata accessor for Locker();
  swift_allocObject();
  v29 = sub_100005860();
  sub_10000E0EC(v29);
  sub_1000036C8();
  (*(v17 + 32))(v6 + *(v30 + 144), v9, v55);
  swift_weakAssign();
  *(v6 + 80) = v56;
  v31 = *(v6 + 88);

  sub_1000066C0();
  sub_100005E74(v8, 0);
  v33 = *(v32 + 136);
  sub_10000587C(v6 + v33);
  sub_10000520C(v8, v6 + v33);
  swift_endAccess();

  String.init<A>(describing:)();
  sub_10000B060();
  sub_10000EB6C(v34, v35, v36, v37, &off_1001FD218);

  os_unfair_lock_unlock(v25);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v38 = *(v12 + 24);
    ObjectType = swift_getObjectType();
    (*(v38 + 8))(v6, &off_1001FD218, ObjectType, v38);

    swift_unknownObjectRelease();
  }

  else
  {
  }

  sub_100008C9C(v6 + v33, v57);
  result = sub_10000F1C0(v57);
  if (v41)
  {
    __break(1u);
  }

  else
  {
    v42 = *(v6 + 88);
    v43 = static os_signpost_type_t.begin.getter();
    v49 = "lifetime";
    v50 = 8;
    switch(v56)
    {
      case 1:
        v49 = "cacheAccess";
        v50 = 11;
        break;
      case 2:
        v49 = "cacheWrite";
        v50 = 10;
        break;
      case 3:
        v49 = "resultLifetime";
        v50 = 14;
        break;
      default:
        break;
    }

    sub_10000DDC4(v43, v44, v49, v50, v45, v46, v47, v48, v53, v54);

    sub_10000898C();
    (*(v51 + 8))(v57, v28);
    return v6;
  }

  return result;
}

uint64_t sub_10007E534(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  sub_10000C990(a1, a2, a3, a4, a5, a6);
  v56 = v10;
  v12 = v11;
  v13 = sub_100046184(&unk_100214C80, &qword_10019AFC0);
  __chkstk_darwin(v13 - 8);
  sub_100007F00(v14, v52);
  __chkstk_darwin(v15);
  v55 = sub_100007BC8();
  sub_100003650();
  v17 = v16;
  __chkstk_darwin(v18);
  sub_10000417C();
  sub_10000A974();
  *(v7 + 64) = _swiftEmptyArrayStorage;
  *(v7 + 72) = 0;
  *(v7 + 81) = 0;
  sub_100005180(0, &qword_100214810, OS_os_log_ptr);
  v19 = sub_1000068E4(off_100219F50);
  sub_100003680(v19, v20, v21, v22, v23, v24, &type metadata for String);
  v25 = aContextmanager_5[1];

  *(v6 + 88) = sub_100005528();
  sub_1000036C8();
  v27 = *(v26 + 136);
  v28 = type metadata accessor for OSSignpostID();
  sub_100005E74(v6 + v27, 1);
  type metadata accessor for Locker();
  swift_allocObject();
  v29 = sub_100005860();
  sub_10000E0EC(v29);
  sub_1000036C8();
  (*(v17 + 32))(v6 + *(v30 + 144), v9, v55);
  swift_weakAssign();
  *(v6 + 80) = v56;
  v31 = *(v6 + 88);

  sub_1000066C0();
  sub_100005E74(v8, 0);
  v33 = *(v32 + 136);
  sub_10000587C(v6 + v33);
  sub_10000520C(v8, v6 + v33);
  swift_endAccess();

  String.init<A>(describing:)();
  sub_10000B060();
  sub_10000EB6C(v34, v35, v36, v37, &off_1001FD218);

  os_unfair_lock_unlock(v25);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v38 = *(v12 + 24);
    ObjectType = swift_getObjectType();
    (*(v38 + 8))(v6, &off_1001FD218, ObjectType, v38);

    swift_unknownObjectRelease();
  }

  else
  {
  }

  sub_100008C9C(v6 + v33, v57);
  result = sub_10000F1C0(v57);
  if (v41)
  {
    __break(1u);
  }

  else
  {
    v42 = *(v6 + 88);
    v43 = static os_signpost_type_t.begin.getter();
    if (v56)
    {
      if (v56 == 1)
      {
        v49 = "contextUpdate";
        v50 = 13;
      }

      else
      {
        v49 = "notBagFetchable";
        v50 = 15;
      }
    }

    else
    {
      v49 = "lifetime";
      v50 = 8;
    }

    sub_10000DDC4(v43, v44, v49, v50, v45, v46, v47, v48, v53, v54);

    sub_10000898C();
    (*(v51 + 8))(v57, v28);
    return v6;
  }

  return result;
}

uint64_t sub_10007E8CC()
{

  v1 = qword_100232BE0;
  type metadata accessor for Client();
  sub_10000374C();
  v3 = *(v2 + 8);

  return v3(v0 + v1);
}

uint64_t sub_10007E938(uint64_t a1)
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

uint64_t sub_10007E9F0()
{
  static os_log_type_t.error.getter();
  sub_1000083EC();
  os_log(_:dso:log:type:_:)(v1);
  sub_1001120A8();
  static os_log_type_t.error.getter();
  sub_100046184(&unk_100217040, &qword_1001989F0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100197F20;
  v3 = String.init<A>(describing:)();
  v5 = v4;
  *(v2 + 56) = &type metadata for String;
  v6 = sub_10000512C();
  *(v2 + 64) = v6;
  *(v2 + 32) = v3;
  *(v2 + 40) = v5;
  sub_1000083EC();
  os_log(_:dso:log:type:_:)(v7);

  static os_log_type_t.error.getter();
  v8 = sub_10000AE24();
  *(v8 + 16) = xmmword_100197F20;
  sub_100046184(&qword_100216EF8, &unk_10019AFD0);
  v9 = String.init<A>(describing:)();
  *(v8 + 56) = &type metadata for String;
  *(v8 + 64) = v6;
  *(v8 + 32) = v9;
  *(v8 + 40) = v10;
  sub_1000083EC();
  os_log(_:dso:log:type:_:)(v11);

  static os_log_type_t.error.getter();
  v12 = sub_10000AE24();
  v13 = *(v0 + qword_100232BD0);
  *(v12 + 16) = xmmword_100197F20;
  v14 = v13 == 0;
  v15 = 7562617;
  if (v14)
  {
    v15 = 28526;
  }

  v16 = 0xE300000000000000;
  *(v12 + 56) = &type metadata for String;
  *(v12 + 64) = v6;
  if (v14)
  {
    v16 = 0xE200000000000000;
  }

  *(v12 + 32) = v15;
  *(v12 + 40) = v16;
  sub_1000083EC();
  os_log(_:dso:log:type:_:)(v17);

  static os_log_type_t.error.getter();
  sub_1000083EC();
  return os_log(_:dso:log:type:_:)(v18);
}

unint64_t sub_10007EC1C(uint64_t a1)
{
  *(a1 + 8) = sub_10007EC4C();
  result = sub_10007ECA0();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_10007EC4C()
{
  result = qword_100216ED8;
  if (!qword_100216ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100216ED8);
  }

  return result;
}

unint64_t sub_10007ECA0()
{
  result = qword_100216EE0;
  if (!qword_100216EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100216EE0);
  }

  return result;
}

uint64_t sub_10007ED30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a2 & 0x1000000000000000) == 0 && ((a2 & 0x2000000000000000) != 0 || (a1 & 0x1000000000000000) != 0))
  {
    *(a3 + 72) = os_transaction_create();

    return swift_unknownObjectRelease();
  }

  else
  {
    _StringGuts._slowWithCString<A>(_:)();
  }
}

uint64_t sub_10007EE08(uint64_t a1, uint64_t a2)
{
  v4 = sub_100046184(&unk_100216F00, &unk_10019B3D0);
  __chkstk_darwin(v4 - 8);
  v68 = &v62 - v5;
  type metadata accessor for URLQueryItem();
  sub_100003650();
  v75 = v7;
  v76 = v6;
  __chkstk_darwin(v6);
  v71 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v62 - v10;
  v12 = sub_100046184(&unk_100219320, &unk_1001A06F0);
  __chkstk_darwin(v12 - 8);
  v14 = &v62 - v13;
  v15 = type metadata accessor for URLComponents();
  sub_100003650();
  v70 = v16;
  __chkstk_darwin(v17);
  v69 = &v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100046184(&qword_100218230, &unk_100199A00);
  __chkstk_darwin(v19 - 8);
  v21 = &v62 - v20;
  v22 = type metadata accessor for URL();
  sub_100003650();
  v24 = v23;
  __chkstk_darwin(v25);
  v27 = &v62 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  URLRequest.url.getter();
  if (sub_100008D0C(v21, 1, v22) != 1)
  {
    (*(v24 + 32))(v27, v21, v22);
    URLComponents.init(url:resolvingAgainstBaseURL:)();
    v31 = sub_100008D0C(v14, 1, v15);
    v32 = v15;
    v33 = v24;
    if (v31 == 1)
    {
      (*(v24 + 8))(v27, v22, v32);
      v28 = &unk_100219320;
      v29 = &unk_1001A06F0;
      v30 = v14;
      goto LABEL_5;
    }

    v62 = v27;
    v63 = v22;
    v36 = *(v70 + 32);
    v64 = v32;
    v36(v69, v14);
    result = URLComponents.queryItems.getter();
    v37 = v76;
    if (!result)
    {
LABEL_28:
      v58 = sub_1000038F4();
      v59(v58);
      (*(v33 + 8))(v62, v63);
      return 0;
    }

    v38 = result;
    v39 = 0;
    v40 = *(result + 16);
    v73 = v75 + 16;
    v74 = v40;
    v72 = (v75 + 8);
    v66 = (v75 + 32);
    v67 = _swiftEmptyArrayStorage;
    while (1)
    {
      if (v74 == v39)
      {

        if (!v67)
        {
          goto LABEL_28;
        }

        v55 = v68;
        sub_1000C065C(v67, v68);

        if (sub_100008D0C(v55, 1, v37) == 1)
        {
          v56 = sub_1000038F4();
          v57(v56);
          (*(v33 + 8))(v62, v63);
          v28 = &unk_100216F00;
          v29 = &unk_10019B3D0;
          v30 = v55;
          goto LABEL_5;
        }

        v34 = URLQueryItem.value.getter();
        v60 = sub_1000038F4();
        v61(v60);
        (*(v33 + 8))(v62, v63);
        (*v72)(v55, v37);
        return v34;
      }

      if (v39 >= *(v38 + 16))
      {
        __break(1u);
        return result;
      }

      v41 = v33;
      v42 = (*(v75 + 80) + 32) & ~*(v75 + 80);
      v43 = *(v75 + 72);
      (*(v75 + 16))(v11, v38 + v42 + v43 * v39, v37);
      if (URLQueryItem.name.getter() == a1 && v44 == a2)
      {
        v46 = a1;
        v47 = a2;
      }

      else
      {
        v46 = a1;
        v47 = a2;
        v48 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v48 & 1) == 0)
        {
          v37 = v76;
          result = (*v72)(v11, v76);
          ++v39;
          goto LABEL_18;
        }
      }

      v37 = v76;
      v65 = *v66;
      v65(v71, v11, v76);
      v49 = v67;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v51 = v49;
      v77 = v49;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1000ECA04(0, v49[2] + 1, 1);
        v37 = v76;
        v51 = v77;
      }

      v53 = v51[2];
      v52 = v51[3];
      v54 = (v53 + 1);
      if (v53 >= v52 >> 1)
      {
        v67 = (v53 + 1);
        sub_1000ECA04(v52 > 1, v53 + 1, 1);
        v54 = v67;
        v37 = v76;
        v51 = v77;
      }

      ++v39;
      v51[2] = v54;
      v67 = v51;
      result = (v65)(v51 + v42 + v53 * v43, v71, v37);
LABEL_18:
      a2 = v47;
      a1 = v46;
      v33 = v41;
    }
  }

  v28 = &qword_100218230;
  v29 = &unk_100199A00;
  v30 = v21;
LABEL_5:
  sub_10000F94C(v30, v28, v29);
  return 0;
}

uint64_t sub_10007F474(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 32 * v1);

  return v2;
}

char *sub_10007F4D8(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }

LABEL_3:
    v3 = result - 1;
    if (__OFSUB__(result, 1))
    {
      __break(1u);
    }

    else
    {
      sub_100106BF8();
      if ((a1 & 0xC000000000000001) == 0)
      {
        return *(a1 + 8 * v3 + 32);
      }
    }

    return specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (result)
  {
    goto LABEL_3;
  }

  return result;
}

uint64_t sub_10007F570(uint64_t a1)
{
  [v1 setDelegate:a1];

  return swift_unknownObjectRelease();
}

uint64_t sub_10007F5CC()
{

  v0 = sub_1000865CC();

  return v0;
}

uint64_t sub_10007F610(uint64_t a1)
{
  v1 = a1;

  sub_100087D58(v1);
}

uint64_t sub_10007F660()
{
  if (!swift_unknownObjectWeakLoadStrong())
  {
    return 0;
  }

  sub_1000158AC();
  swift_unknownObjectRelease();
  sub_100015914(0, 0);
  v0 = sub_100016D34();
  swift_unknownObjectRelease();
  if (!v0)
  {
    return 0;
  }

  return sub_100082D10(v0);
}

uint64_t sub_10007F6F8(char a1)
{
  result = 7565415;
  switch(a1)
  {
    case 1:
      result = 1819043171;
      break;
    case 2:
      result = 1768319351;
      break;
    case 3:
      result = 0x6E776F6E6B6E75;
      break;
    case 4:
      result = 0x6F6E676162;
      break;
    case 5:
      result = 0x6F6E2E72657375;
      break;
    case 6:
      result = 2003790963;
      break;
    case 7:
      result = 0x6E692E726F727265;
      break;
    case 8:
      result = sub_10001BBB8();
      break;
    case 9:
      result = 0x6E752E726F727265;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_10007F7FC@<X0>(uint64_t a1@<X8>)
{

  sub_10008660C(a1);
}

uint64_t sub_10007F84C(uint64_t a1)
{
  v3 = type metadata accessor for Date();
  sub_100003650();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_1000041A8();
  v7 = sub_100003674();
  v8(v7);

  sub_100087DA4(v1);

  return (*(v5 + 8))(a1, v3);
}

uint64_t sub_10007F934()
{
  type metadata accessor for DispatchPredicate();
  sub_100003650();
  __chkstk_darwin(v2);
  sub_100003664();
  sub_100006EBC();
  v3 = *(v0 + OBJC_IVAR____TtC7parsecd15LocationManager_updateQueue);
  *v1 = v3;
  v4 = sub_10001BE18();
  v5(v4);
  v6 = v3;
  _dispatchPreconditionTest(_:)();
  v7 = sub_100012ED0();
  result = v8(v7);
  if (v3)
  {
    return sub_10007FA24();
  }

  __break(1u);
  return result;
}

BOOL sub_10007FA24()
{
  v1 = type metadata accessor for Date();
  sub_100003650();
  v3 = v2;
  __chkstk_darwin(v4);
  sub_100003664();
  sub_100006EBC();
  if (sub_10007F5CC() - 3 > 1)
  {
    return 0;
  }

  sub_10007F7FC(v0);
  Date.timeIntervalSinceNow.getter();
  v6 = v5;
  (*(v3 + 8))(v0, v1);
  return fabs(v6) >= 60.0;
}

id sub_10007FB30()
{
  v1 = *&v0[OBJC_IVAR____TtC7parsecd15LocationManager_updateQueue];
  sub_1000068B4();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_100082E00;
  *(v3 + 24) = v2;
  aBlock[4] = sub_100028274;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000282A4;
  aBlock[3] = &unk_1001F9368;
  v4 = _Block_copy(aBlock);
  v5 = v1;
  v6 = v0;

  dispatch_sync(v5, v4);

  _Block_release(v4);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  else
  {

    v8.receiver = v6;
    v8.super_class = type metadata accessor for LocationManager(0);
    return objc_msgSendSuper2(&v8, "dealloc");
  }

  return result;
}

uint64_t type metadata accessor for LocationManager(uint64_t a1)
{
  result = qword_100216FA0;
  if (!qword_100216FA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10007FE44()
{
  v3 = type metadata accessor for DispatchPredicate();
  sub_100003650();
  __chkstk_darwin(v4);
  sub_1000041A8();
  v5 = *&v0[OBJC_IVAR____TtC7parsecd15LocationManager_updateQueue];
  *v1 = v5;
  v6 = sub_100006F4C();
  v7(v6);
  v8 = v5;
  _dispatchPreconditionTest(_:)();
  sub_10000F1E0();
  v9(v1, v3);
  if ((v2 & 1) == 0)
  {
    __break(1u);
LABEL_11:
    sub_100005E54(&qword_1002140E8);
    goto LABEL_6;
  }

  v10 = &v0[OBJC_IVAR____TtC7parsecd15LocationManager_locationService];
  if (*&v0[OBJC_IVAR____TtC7parsecd15LocationManager_locationService])
  {
    return;
  }

  v3 = objc_allocWithZone(CLLocationManager);
  v11 = v8;
  v12 = v0;
  v13 = sub_100082B94(0xD000000000000034, 0x80000001001ADF70, v0, v8);
  if (v13)
  {
    v14 = v13;
    [v13 setDynamicAccuracyReductionEnabled:1];
    [v14 setDesiredAccuracy:kCLLocationAccuracyKilometer];
    *v10 = v14;
    *(v10 + 1) = &off_1001F91B0;
    swift_unknownObjectRelease();
    return;
  }

  if (qword_1002140E8 != -1)
  {
    goto LABEL_11;
  }

LABEL_6:
  v15 = type metadata accessor for Logger();
  sub_100006674(v15, qword_100232B28);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.error.getter();
  if (sub_100007BE8(v17))
  {
    v18 = sub_100006640();
    sub_10000594C(v18);
    sub_10000554C(&_mh_execute_header, v19, v20, "Exception initializing CLLocationManager");
    sub_1000036D4(v3);
  }
}

uint64_t sub_100080040()
{
  type metadata accessor for DispatchPredicate();
  sub_100003650();
  __chkstk_darwin(v2);
  sub_100003664();
  sub_100006EBC();
  v3 = *(v0 + OBJC_IVAR____TtC7parsecd15LocationManager_updateQueue);
  *v1 = v3;
  v4 = sub_10001BE18();
  v5(v4);
  v6 = v3;
  _dispatchPreconditionTest(_:)();
  v7 = sub_100012ED0();
  result = v8(v7);
  if (v3)
  {
    v10 = (v0 + OBJC_IVAR____TtC7parsecd15LocationManager_locationService);
    if (*(v0 + OBJC_IVAR____TtC7parsecd15LocationManager_locationService))
    {
      v11 = v10[1];
      ObjectType = swift_getObjectType();
      v13 = *(v11 + 16);
      swift_unknownObjectRetain();
      v13(0, ObjectType, v11);
      swift_unknownObjectRelease();
    }

    *v10 = 0;
    v10[1] = 0;
    return swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100080190()
{
  sub_100005478();
  type metadata accessor for DispatchWorkItemFlags();
  sub_100003650();
  __chkstk_darwin(v1);
  sub_1000041A8();
  v2 = type metadata accessor for DispatchQoS();
  sub_100003650();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_100003664();
  sub_10000FEE8();
  v6 = Notification.userInfo.getter();
  if (!v6)
  {
    v14 = 0u;
    v15 = 0u;
    goto LABEL_5;
  }

  v7 = v6;
  v13[6] = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13[7] = v8;
  AnyHashable.init<A>(_:)();
  sub_100034150(v7, &v14);

  sub_10003430C(v13);
  if (!*(&v15 + 1))
  {
LABEL_5:
    sub_10000B240(&v14, &qword_1002181D0, &qword_100198E00);
    goto LABEL_6;
  }

  sub_10000B240(&v14, &qword_1002181D0, &qword_100198E00);
  sub_1000068B4();
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13[4] = sub_100082DF8;
  v13[5] = v9;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_10000D50C;
  v13[3] = &unk_1001F92F0;
  v10 = _Block_copy(v13);

  static DispatchQoS.unspecified.getter();
  *&v14 = _swiftEmptyArrayStorage;
  sub_100024990();
  sub_100046184(&unk_100217030, &unk_1001989C0);
  sub_10000CB0C();
  sub_100007864();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v10);
  v11 = sub_100003674();
  v12(v11);
  (*(v4 + 8))(v0, v2);

LABEL_6:
  sub_100005460();
}

void sub_100080470(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = sub_10007F660();
    if (!v3)
    {
LABEL_7:

      return;
    }

    v4 = *(v3 + 16);

    if (v4)
    {
      v5 = *&v2[OBJC_IVAR____TtC7parsecd15LocationManager_lastGeoLocationUpdate];
      if (v5)
      {
        v6 = v5;
        sub_100080730(v6);
      }

      sub_10007FE44();
      sub_100080A24();
      goto LABEL_7;
    }

    sub_100080040();
    sub_100046184(&unk_100217040, &qword_1001989F0);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_100198F10;
    *(v7 + 56) = &type metadata for String;
    v8 = sub_10000512C();
    *(v7 + 32) = 0x6F6E676162;
    *(v7 + 40) = 0xE500000000000000;
    *(v7 + 96) = &type metadata for String;
    *(v7 + 104) = v8;
    *(v7 + 64) = v8;
    *(v7 + 72) = 7105633;
    *(v7 + 80) = 0xE300000000000000;
    v9 = String.init(format:_:)();
    sub_1000805A8(v9, v10);
  }
}

uint64_t sub_1000805A8(uint64_t a1, uint64_t a2)
{
  v6 = type metadata accessor for DispatchPredicate();
  sub_100003650();
  v8 = v7;
  __chkstk_darwin(v9);
  sub_100003664();
  sub_10000FEE8();
  v10 = *(v2 + OBJC_IVAR____TtC7parsecd15LocationManager_updateQueue);
  *v3 = v10;
  (*(v8 + 104))(v3, enum case for DispatchPredicate.onQueue(_:), v6);
  v11 = v10;
  LOBYTE(v10) = _dispatchPreconditionTest(_:)();
  result = (*(v8 + 8))(v3, v6);
  if (v10)
  {
    v13 = *(v2 + OBJC_IVAR____TtC7parsecd15LocationManager_geoLocation);
    *(v2 + OBJC_IVAR____TtC7parsecd15LocationManager_geoLocation) = 0;

    v14 = *(v2 + OBJC_IVAR____TtC7parsecd15LocationManager_geoPlacemark);
    *(v2 + OBJC_IVAR____TtC7parsecd15LocationManager_geoPlacemark) = 0;

    v15 = (v2 + OBJC_IVAR____TtC7parsecd15LocationManager_lookupGeoLocationLatLng);
    *v15 = 0;
    v15[1] = 0xE000000000000000;

    v16 = (v2 + OBJC_IVAR____TtC7parsecd15LocationManager_geoLocationLatLng);
    *v16 = 0;
    v16[1] = 0xE000000000000000;

    v17 = (v2 + OBJC_IVAR____TtC7parsecd15LocationManager_geoLocationSource);
    *v17 = a1;
    v17[1] = a2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100080730(void *a1)
{
  v3 = v1;
  v5 = type metadata accessor for DispatchPredicate();
  sub_100003650();
  p_ivar_base_size = v6;
  __chkstk_darwin(v8);
  sub_100003664();
  sub_100006EBC();
  v9 = *(v3 + OBJC_IVAR____TtC7parsecd15LocationManager_updateQueue);
  *v2 = v9;
  v10 = sub_10001BE18();
  v11(v10);
  v12 = v9;
  _dispatchPreconditionTest(_:)();
  sub_10000F1E0();
  v13(v2, v5);
  if ((v9 & 1) == 0)
  {
    __break(1u);
LABEL_13:
    sub_100005E54(&qword_1002140E8);
    goto LABEL_9;
  }

  p_ivar_base_size = &UploadStateFileStore.ivar_base_size;
  v14 = [a1 type] - 1;
  if (v14 > 0xC)
  {
    v15 = 3;
  }

  else
  {
    v15 = byte_10019B4F8[v14];
  }

  v16 = sub_10007F660();
  if (v16)
  {
    v17 = v16;
    v31[0] = sub_10007F6F8(v15);
    v31[1] = v18;
    __chkstk_darwin(v31[0]);
    v30[2] = v31;
    v19 = sub_100093434(sub_10003377C, v30, v17);

    if (v19)
    {
      return sub_100081918(a1);
    }
  }

  if (qword_1002140E8 != -1)
  {
    goto LABEL_13;
  }

LABEL_9:
  v21 = type metadata accessor for Logger();
  sub_100006674(v21, qword_100232B28);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.debug.getter();
  if (sub_100007670(v23))
  {
    v24 = sub_100006640();
    *v24 = 0;
    _os_log_impl(&_mh_execute_header, v22, v23, "LocationManager discarded update from a disallowed source.", v24, 2u);
    sub_1000036D4(v24);
  }

  v25 = sub_100046184(&unk_100217040, &qword_1001989F0);
  v26 = sub_10000DB94(v25);
  *(v26 + 16) = xmmword_100198F10;
  *(v26 + 56) = &type metadata for String;
  *(v26 + 64) = sub_10000512C();
  *(v26 + 32) = 0x6F6E676162;
  *(v26 + 40) = 0xE500000000000000;
  v27 = [a1 *(p_ivar_base_size + 223)];
  *(v26 + 96) = &type metadata for UInt32;
  *(v26 + 104) = &protocol witness table for UInt32;
  *(v26 + 72) = v27;
  v28 = String.init(format:_:)();
  sub_1000805A8(v28, v29);
}

void sub_100080A24()
{
  sub_100005478();
  v3 = v2;
  type metadata accessor for DispatchWorkItemFlags();
  sub_100003650();
  __chkstk_darwin(v4);
  sub_1000041A8();
  v5 = type metadata accessor for DispatchQoS();
  sub_100003650();
  v7 = v6;
  __chkstk_darwin(v8);
  sub_100003664();
  sub_10000FEE8();
  v9 = swift_allocObject();
  *(v9 + 16) = v0;
  *(v9 + 24) = v3;
  sub_1000069C4(v9);
  sub_1000040A8(COERCE_DOUBLE(1107296256));
  v15[2] = v10;
  v15[3] = &unk_1001F9250;
  v11 = _Block_copy(v15);
  v12 = v0;
  static DispatchQoS.unspecified.getter();
  sub_100024990();
  sub_100046184(&unk_100217030, &unk_1001989C0);
  sub_10000CB0C();
  sub_100007864();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v11);
  v13 = sub_100003674();
  v14(v13);
  (*(v7 + 8))(v1, v5);

  sub_100005460();
}

void sub_100080D04()
{
  sub_100005478();
  type metadata accessor for DispatchQoS();
  sub_100003650();
  __chkstk_darwin(v2);
  sub_1000041A8();
  v3 = type metadata accessor for DispatchWorkItemFlags();
  sub_100003650();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_100003664();
  sub_10000FEE8();
  static DispatchWorkItemFlags.barrier.getter();
  sub_1000068B4();
  v7 = swift_allocObject();
  *(v7 + 16) = v0;
  sub_1000069C4(v7);
  sub_1000040A8(COERCE_DOUBLE(1107296256));
  v13[2] = v8;
  v13[3] = &unk_1001F92A0;
  v9 = _Block_copy(v13);
  v10 = v0;
  static DispatchQoS.unspecified.getter();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v9);
  v11 = sub_100003674();
  v12(v11);
  (*(v5 + 8))(v1, v3);

  sub_100005460();
}

void *sub_100080EB4(uint64_t a1)
{
  result = *(a1 + OBJC_IVAR____TtC7parsecd15LocationManager_geoLocation);
  if (result)
  {
    [result coordinate];
    v4 = v3;
    v6 = v5;
    sub_100046184(&unk_100217040, &qword_1001989F0);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_100198F10;
    *(v7 + 56) = &type metadata for Double;
    *(v7 + 64) = &protocol witness table for Double;
    *(v7 + 32) = v4;
    *(v7 + 96) = &type metadata for Double;
    *(v7 + 104) = &protocol witness table for Double;
    *(v7 + 72) = v6;
    v8 = String.init(format:_:)();
    v9 = (a1 + OBJC_IVAR____TtC7parsecd15LocationManager_lookupGeoLocationLatLng);
    *v9 = v8;
    v9[1] = v10;
  }

  return result;
}

uint64_t sub_100081098()
{
  v0 = type metadata accessor for URL();
  sub_100003650();
  v2 = v1;
  __chkstk_darwin(v3);
  v5 = &v26[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v8 = &v26[-v7];
  __chkstk_darwin(v9);
  v11 = &v26[-v10];
  v12 = objc_allocWithZone(LSApplicationRecord);
  v13 = sub_100082C20(0x6C7070612E6D6F63, 0xEE007377656E2E65, 0);
  v14 = [v13 URL];

  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  (*(v2 + 32))(v11, v8, v0);
  sub_100005180(0, &qword_100217060, NSBundle_ptr);
  (*(v2 + 16))(v5, v11, v0);
  v15 = sub_100081354(v5);
  if (v15)
  {
    v16 = v15;
    v17 = [objc_opt_self() authorizationStatusForBundle:v15];
  }

  else
  {
    if (qword_1002140E8 != -1)
    {
      sub_100005E54(&qword_1002140E8);
    }

    v18 = type metadata accessor for Logger();
    sub_100006674(v18, qword_100232B28);
    v16 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v16, v19))
    {

      v24 = sub_100003674();
      v25(v24);
      return 2;
    }

    v17 = 2;
    v20 = sub_100006640();
    *v20 = 0;
    _os_log_impl(&_mh_execute_header, v16, v19, "excption initializing news bundle", v20, 2u);
    sub_1000041C0();
  }

  v21 = sub_100003674();
  v22(v21);
  return v17;
}

id sub_100081354(uint64_t a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  URL._bridgeToObjectiveC()(v3);
  v5 = v4;
  v6 = [v2 initWithURL:v4];

  v7 = type metadata accessor for URL();
  (*(*(v7 - 8) + 8))(a1, v7);
  return v6;
}

void sub_1000813F0(uint64_t a1, char a2)
{
  if (sub_10007F934())
  {
    if (qword_1002140E8 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_10000964C(v4, qword_100232B28);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v16 = v8;
      *v7 = 136315138;
      v9 = 0xEB00000000646567;
      v10 = 0x6E61686320676162;
      switch(a2)
      {
        case 1:
          v9 = 0x80000001001ADF10;
          v10 = 0xD000000000000015;
          break;
        case 2:
          break;
        case 3:
          v9 = 0xE700000000000000;
          v10 = 0x676E6974736574;
          break;
        default:
          v10 = 0xD000000000000010;
          v9 = 0x80000001001ADF30;
          break;
      }

      v11 = sub_100009684(v10, v9, &v16);

      *(v7 + 4) = v11;
      _os_log_impl(&_mh_execute_header, v5, v6, "Requesting new Location, reason: %s", v7, 0xCu);
      sub_100007378(v8);
    }

    if (!*(a1 + OBJC_IVAR____TtC7parsecd15LocationManager_geoLocation))
    {
      v12 = *(a1 + OBJC_IVAR____TtC7parsecd15LocationManager_geoLocationSource) == 0x6E692E726F727265 && *(a1 + OBJC_IVAR____TtC7parsecd15LocationManager_geoLocationSource + 8) == 0xEA00000000007469;
      if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        sub_1000805A8(2003790963, 0xE400000000000000);
      }
    }

    if (*(a1 + OBJC_IVAR____TtC7parsecd15LocationManager_locationService))
    {
      v13 = *(a1 + OBJC_IVAR____TtC7parsecd15LocationManager_locationService + 8);
      ObjectType = swift_getObjectType();
      v15 = *(v13 + 32);
      swift_unknownObjectRetain();
      v15(ObjectType, v13);

      swift_unknownObjectRelease();
    }
  }
}

void sub_1000816BC()
{
  sub_100005478();
  v3 = v2;
  v4 = sub_100046184(&qword_100217050, &qword_100199180);
  sub_100005490(v4);
  sub_100003760();
  __chkstk_darwin(v5);
  sub_100006EBC();
  v6 = *(v0 + OBJC_IVAR____TtC7parsecd15LocationManager_geoLocation);
  v7 = OBJC_IVAR____TtC7parsecd15LocationManager_geoLocationAge;
  swift_beginAccess();
  sub_10002DF94(v0 + v7, v1);
  v8 = *(v0 + OBJC_IVAR____TtC7parsecd15LocationManager_geoPlacemark);
  v9 = *(v0 + OBJC_IVAR____TtC7parsecd15LocationManager_geoLocationLatLng + 8);
  v10 = *(v0 + OBJC_IVAR____TtC7parsecd15LocationManager_geoLocationSource + 8);
  v25 = *(v0 + OBJC_IVAR____TtC7parsecd15LocationManager_geoLocationSource);
  v26 = *(v0 + OBJC_IVAR____TtC7parsecd15LocationManager_geoLocationLatLng);
  v11 = *(v0 + OBJC_IVAR____TtC7parsecd15LocationManager_lookupGeoLocationLatLng + 8);
  v24 = *(v0 + OBJC_IVAR____TtC7parsecd15LocationManager_lookupGeoLocationLatLng);
  v12 = v8;

  v13 = v6;
  sub_10007F5CC();
  v23 = sub_100081858();
  v15 = v14;
  v16 = sub_10007F660();
  if (v16)
  {
    v17 = v16;
  }

  else
  {
    v17 = _swiftEmptyArrayStorage;
  }

  *v3 = v6;
  v18 = type metadata accessor for LocationContext(0);
  sub_100082D80(v1, v3 + v18[5]);
  *(v3 + v18[6]) = v8;
  v19 = (v3 + v18[7]);
  *v19 = v26;
  v19[1] = v9;
  v20 = (v3 + v18[8]);
  *v20 = v25;
  v20[1] = v10;
  v21 = (v3 + v18[9]);
  *v21 = v24;
  v21[1] = v11;
  v22 = (v3 + v18[10]);
  *v22 = v23;
  v22[1] = v15;
  *(v3 + v18[11]) = v17;
  sub_100005460();
}

uint64_t sub_100081918(void *a1)
{
  v3 = v1;
  v5 = type metadata accessor for Date();
  sub_1000036B8();
  __chkstk_darwin(v6);
  sub_100003664();
  v9 = v8 - v7;
  v10 = sub_100046184(&qword_100217050, &qword_100199180);
  sub_100005490(v10);
  sub_100003760();
  __chkstk_darwin(v11);
  v13 = &v97 - v12;
  v14 = type metadata accessor for DispatchPredicate();
  sub_100003650();
  v16 = v15;
  __chkstk_darwin(v17);
  sub_1000041A8();
  v18 = *(v3 + OBJC_IVAR____TtC7parsecd15LocationManager_updateQueue);
  *v2 = v18;
  (*(v16 + 104))(v2, enum case for DispatchPredicate.onQueue(_:), v14);
  v19 = v18;
  v20 = _dispatchPreconditionTest(_:)();
  (*(v16 + 8))(v2, v14);
  if (v20)
  {
    v98 = v5;
    *&v99 = v9;
    if (qword_1002140E8 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  sub_100005E54(&qword_1002140E8);
LABEL_3:
  v21 = type metadata accessor for Logger();
  sub_100006674(v21, qword_100232B28);
  v22 = a1;
  v97 = v14;
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = COERCE_DOUBLE(swift_slowAlloc());
    v100 = a1;
    v101 = v26;
    *v25 = 136642819;
    sub_100046184(&qword_100217058, qword_10019B4D8);
    v27 = Optional.debugDescription.getter();
    v29 = sub_100009684(v27, v28, &v101);

    *(v25 + 4) = v29;
    _os_log_impl(&_mh_execute_header, v23, v24, "Setting new location %{sensitive}s", v25, 0xCu);
    sub_100007378(*&v26);
    sub_1000041C0();
    sub_1000036D4(v25);
  }

  v30 = OBJC_IVAR____TtC7parsecd15LocationManager_geoLocation;
  v31 = *(v3 + OBJC_IVAR____TtC7parsecd15LocationManager_geoLocation);
  *(v3 + OBJC_IVAR____TtC7parsecd15LocationManager_geoLocation) = a1;

  if (!a1)
  {
    __break(1u);
  }

  v32 = v22;
  v33 = [v32 timestamp];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  sub_1000051C0(v13, 0, 1, v98);
  v34 = OBJC_IVAR____TtC7parsecd15LocationManager_geoLocationAge;
  swift_beginAccess();
  sub_10002405C(v13, v3 + v34);
  swift_endAccess();
  v35 = v99;
  Date.init()();
  sub_10007F84C(v35);
  v36 = *(v3 + v30);
  v37 = "mutex_t";
  if (v36)
  {
    [v36 coordinate];
    v39 = v38;
    v41 = v40;
    v42 = sub_100046184(&unk_100217040, &qword_1001989F0);
    v43 = sub_10000DB94(v42);
    v99 = xmmword_100198F10;
    *(v43 + 16) = xmmword_100198F10;
    v44 = [v32 type] - 1;
    if (v44 > 0xC)
    {
      v45 = 3;
    }

    else
    {
      v45 = byte_10019B4F8[v44];
    }

    v46 = sub_10007F6F8(v45);
    v48 = v47;
    *(v43 + 56) = &type metadata for String;
    *(v43 + 64) = sub_10000512C();
    *(v43 + 32) = v46;
    *(v43 + 40) = v48;
    [v32 horizontalAccuracy];
    *(v43 + 96) = &type metadata for Double;
    *(v43 + 104) = &protocol witness table for Double;
    *(v43 + 72) = v49;
    sub_10000F4F0(16421);
    v50 = String.init(format:_:)();
    sub_100023EF4(v50, v51, OBJC_IVAR____TtC7parsecd15LocationManager_geoLocationSource);

    if (![objc_opt_self() isLocationShiftRequiredForCoordinate:{v39, v41}])
    {
      v71 = Logger.logObject.getter();
      v72 = static os_log_type_t.debug.getter();
      if (sub_100005930(v72))
      {
        v73 = sub_100006640();
        *v73 = 0;
        sub_100015B48();
        _os_log_impl(v74, v75, v76, v77, v73, 2u);
        sub_1000041C0();
      }

      v78 = sub_10000DB94(v42);
      sub_10000C830(v78);
      v79[4] = v39;
      *(v79 + 12) = &type metadata for Double;
      *(v79 + 13) = &protocol witness table for Double;
      v79[9] = v41;
      sub_10000F4F0(26149);
      v80 = String.init(format:_:)();
      sub_100023EF4(v80, v81, OBJC_IVAR____TtC7parsecd15LocationManager_geoLocationLatLng);
      goto LABEL_18;
    }

    v52 = [objc_allocWithZone(GEOLocationShifter) init];
    v101 = 0.0;
    v102 = 0.0;
    v100 = 0;
    v53 = [v52 shiftCoordinate:&v101 accuracy:&v100 shiftedCoordinate:v39 shiftedAccuracy:{v41, 0.0}];
    v54 = Logger.logObject.getter();
    if (v53)
    {
      v55 = static os_log_type_t.debug.getter();
      if (sub_100005930(v55))
      {
        v56 = sub_100006640();
        *v56 = 0;
        sub_100015B48();
        _os_log_impl(v57, v58, v59, v60, v56, 2u);
        v61 = v56;
        v37 = "_opaque_pthread_mutex_t" + 16;
        sub_1000036D4(v61);
      }

      v62 = [objc_allocWithZone(CLLocation) initWithLatitude:v101 longitude:v102];
      v63 = *(v3 + v30);
      *(v3 + v30) = v62;

      v64 = sub_10000DB94(v42);
      sub_10000C830(v64);
      v65 = v102;
      v66[4] = v101;
      *(v66 + 12) = &type metadata for Double;
      *(v66 + 13) = &protocol witness table for Double;
      v66[9] = v65;
      sub_10000F4F0(26149);
      v67 = String.init(format:_:)();
      v69 = v68;

      sub_100009918(OBJC_IVAR____TtC7parsecd15LocationManager_geoLocationLatLng);
      *v70 = v67;
      v70[1] = v69;
LABEL_18:

      goto LABEL_22;
    }

    v82 = static os_log_type_t.error.getter();
    if (sub_100005930(v82))
    {
      v83 = sub_100006640();
      *v83 = 0;
      sub_100015B48();
      _os_log_impl(v84, v85, v86, v87, v83, 2u);
      sub_1000036D4(v83);
    }
  }

LABEL_22:
  v88 = (v3 + OBJC_IVAR____TtC7parsecd15LocationManager_lookupGeoLocationLatLng);

  v89 = String.count.getter();

  if (!v89)
  {
    [v32 coordinate];
    v93 = CLLocationCoordinate2DMake(trunc(v91), trunc(v92));
    v94 = sub_100046184(&unk_100217040, &qword_1001989F0);
    v95 = sub_10000DB94(v94);
    *(v95 + 16) = *(v37 + 241);
    *(v95 + 56) = &type metadata for Double;
    *(v95 + 64) = &protocol witness table for Double;
    *(v95 + 32) = v93.latitude;
    *(v95 + 96) = &type metadata for Double;
    *(v95 + 104) = &protocol witness table for Double;
    *(v95 + 72) = v93.longitude;
    sub_10000F4F0(26149);
    *v88 = String.init(format:_:)();
    v88[1] = v96;
  }

  return result;
}

void sub_100082020()
{
  sub_100005478();
  v2 = v0;
  v4 = v3;
  v5 = type metadata accessor for DispatchPredicate();
  sub_100003650();
  __chkstk_darwin(v6);
  sub_1000041A8();
  v7 = *(v2 + OBJC_IVAR____TtC7parsecd15LocationManager_updateQueue);
  *v1 = v7;
  v8 = sub_100006F4C();
  v9(v8);
  v10 = v7;
  _dispatchPreconditionTest(_:)();
  sub_10000F1E0();
  v11(v1, v5);
  if (v7)
  {
    if (qword_1002140E8 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  sub_100005E54(&qword_1002140E8);
LABEL_3:
  v12 = type metadata accessor for Logger();
  sub_10000964C(v12, qword_100232B28);

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();
  if (sub_100005930(v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 134217984;
    *(v15 + 4) = sub_10000D57C(v4);

    sub_100015B48();
    _os_log_impl(v16, v17, v18, v19, v15, 0xCu);
    sub_1000036D4(v15);
  }

  else
  {
  }

  v20 = sub_10007F4D8(v4);
  if (v20)
  {
    v21 = v20;
    [v20 horizontalAccuracy];
    if (v22 >= 0.0 && swift_unknownObjectWeakLoadStrong())
    {
      v23 = *(v2 + OBJC_IVAR____TtC7parsecd15LocationManager_lastGeoLocationUpdate);
      *(v2 + OBJC_IVAR____TtC7parsecd15LocationManager_lastGeoLocationUpdate) = v21;
      v24 = v21;

      sub_100080730(v24);
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.debug.getter();
      if (sub_100007670(v26))
      {
        v27 = sub_100006640();
        *v27 = 0;
        _os_log_impl(&_mh_execute_header, v25, v26, "Posting PARContextUpdate for locationState", v27, 2u);
        sub_1000041C0();
      }

      v21 = [objc_opt_self() defaultCenter];
      sub_100046184(&unk_100217020, &unk_10019B4C0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100197F20;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      AnyHashable.init<A>(_:)();
      *(inited + 96) = type metadata accessor for ContextUpdate(0);
      sub_1000205C4((inited + 72));
      sub_1000816BC();
      swift_storeEnumTagMultiPayload();
      v29 = Dictionary.init(dictionaryLiteral:)();
      sub_100033AC0(@"com.apple.parsecd.contextUpdate", 0, v29, v21);

      swift_unknownObjectRelease();
    }
  }

  sub_100005460();
}

void sub_1000823DC(uint64_t a1)
{
  sub_1000504A0(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10008254C(uint64_t a1, uint64_t a2)
{
  type metadata accessor for DispatchPredicate();
  sub_100003650();
  __chkstk_darwin(v5);
  sub_1000041A8();
  v6 = *(v2 + OBJC_IVAR____TtC7parsecd15LocationManager_updateQueue);
  *v3 = v6;
  v7 = sub_100006F4C();
  v8(v7);
  v9 = v6;
  _dispatchPreconditionTest(_:)();
  sub_10000F1E0();
  v10 = sub_100003674();
  v11(v10);
  if (v6)
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      v12 = [objc_opt_self() locationServicesEnabled];
      sub_10007F610(a2);
      if (v12 && (a2 - 3) < 2)
      {
        sub_100080A24();
      }

      else
      {
        sub_1000805A8(0x6F6E2E72657375, 0xE700000000000000);
      }

      v13 = [objc_opt_self() defaultCenter];
      sub_100046184(&unk_100217020, &unk_10019B4C0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100197F20;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      AnyHashable.init<A>(_:)();
      *(inited + 96) = type metadata accessor for ContextUpdate(0);
      sub_1000205C4((inited + 72));
      sub_1000816BC();
      swift_storeEnumTagMultiPayload();
      v15 = Dictionary.init(dictionaryLiteral:)();
      sub_100033AC0(@"com.apple.parsecd.contextUpdate", 0, v15, v13);
      swift_unknownObjectRelease();
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_10008281C(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v5 = type metadata accessor for DispatchPredicate();
  sub_100003650();
  __chkstk_darwin(v6);
  sub_100003664();
  sub_100006EBC();
  v7 = *(v4 + OBJC_IVAR____TtC7parsecd15LocationManager_updateQueue);
  *v3 = v7;
  v8 = sub_10001BE18();
  v9(v8);
  v10 = v7;
  _dispatchPreconditionTest(_:)();
  sub_10000F1E0();
  v11(v3, v5);
  if ((v7 & 1) == 0)
  {
    __break(1u);
LABEL_9:
    sub_100005E54(&qword_1002140E8);
    goto LABEL_4;
  }

  if (!swift_unknownObjectWeakLoadStrong())
  {
    return;
  }

  if (qword_1002140E8 != -1)
  {
    goto LABEL_9;
  }

LABEL_4:
  v12 = type metadata accessor for Logger();
  sub_100006674(v12, qword_100232B28);
  swift_errorRetain();
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v15 = 138412290;
    v17 = _convertErrorToNSError(_:)();
    *(v15 + 4) = v17;
    *v16 = v17;
    _os_log_impl(&_mh_execute_header, v13, v14, "Location determination failed with error %@", v15, 0xCu);
    sub_10000B240(v16, &unk_100214C70, &qword_10019B4D0);
    sub_1000036D4(v16);
    sub_1000041C0();
  }

  v18 = sub_10001BBB8();
  sub_1000805A8(v18, v19);
  v20 = [objc_opt_self() defaultCenter];
  sub_100046184(&unk_100217020, &unk_10019B4C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100197F20;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  AnyHashable.init<A>(_:)();
  *(inited + 96) = type metadata accessor for ContextUpdate(0);
  sub_1000205C4((inited + 72));
  sub_1000816BC();
  swift_storeEnumTagMultiPayload();
  v22 = Dictionary.init(dictionaryLiteral:)();
  sub_10001AD80(v22);
  swift_unknownObjectRelease();
}

id sub_100082B94(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  if (a2)
  {
    v8 = String._bridgeToObjectiveC()();
  }

  else
  {
    v8 = 0;
  }

  v9 = [v5 initWithEffectiveBundlePath:v8 delegate:a3 onQueue:a4];

  swift_unknownObjectRelease();
  return v9;
}

id sub_100082C20(uint64_t a1, uint64_t a2, char a3)
{
  v5 = String._bridgeToObjectiveC()();

  v10 = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:&v10];

  if (v6)
  {
    v7 = v10;
  }

  else
  {
    v8 = v10;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v6;
}

uint64_t sub_100082CFC(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_100082D10(void *a1)
{
  v2 = [a1 supportedGeoLocationSources];

  if (!v2)
  {
    return 0;
  }

  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_100082D80(uint64_t a1, uint64_t a2)
{
  v4 = sub_100046184(&qword_100217050, &qword_100199180);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

_BYTE *storeEnumTagSinglePayload for CountryCodeSourceDevice(_BYTE *result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for CountryCodeSource(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_100082FF0@<X0>(unsigned int *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10003A9A4(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_10008301C@<X0>(_DWORD *a1@<X8>)
{
  result = sub_100082FC4(*v1);
  *a1 = result;
  return result;
}

unint64_t sub_10008304C()
{
  result = qword_100217068;
  if (!qword_100217068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100217068);
  }

  return result;
}

BOOL sub_1000830B0@<W0>(int *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100082FCC(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_1000830F0()
{
  result = qword_100217070;
  if (!qword_100217070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100217070);
  }

  return result;
}

uint64_t sub_100083144()
{
  v1 = v0;
  v2 = type metadata accessor for Apple_Parsec_Search_V2_Entity.Category();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = (&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v3 + 16))(v6, v1, v2, v4);
  LODWORD(result) = (*(v3 + 88))(v6, v2);
  if (result == enum case for Apple_Parsec_Search_V2_Entity.Category.UNRECOGNIZED(_:))
  {
    v8 = *(v3 + 96);
    v3 += 96;
    v8(v6, v2);
    result = *v6;
    if ((*v6 & 0x8000000000000000) == 0)
    {
      return result;
    }

    __break(1u);
  }

  if (result == enum case for Apple_Parsec_Search_V2_Entity.Category.namedEntityCategoryUnknown(_:))
  {
    return 0;
  }

  if (result == enum case for Apple_Parsec_Search_V2_Entity.Category.namedEntityCategoryPerson(_:))
  {
    return 1;
  }

  if (result == enum case for Apple_Parsec_Search_V2_Entity.Category.namedEntityCategoryOrganization(_:))
  {
    return 2;
  }

  if (result == enum case for Apple_Parsec_Search_V2_Entity.Category.namedEntityCategoryLocation(_:))
  {
    return 3;
  }

  if (result == enum case for Apple_Parsec_Search_V2_Entity.Category.namedEntityCategoryRestaurant(_:))
  {
    return 4;
  }

  if (result == enum case for Apple_Parsec_Search_V2_Entity.Category.namedEntityCategoryActivityLocation(_:))
  {
    return 5;
  }

  if (result == enum case for Apple_Parsec_Search_V2_Entity.Category.namedEntityCategoryMedia(_:))
  {
    return 6;
  }

  if (result == enum case for Apple_Parsec_Search_V2_Entity.Category.namedEntityCategoryArtist(_:))
  {
    return 7;
  }

  if (result == enum case for Apple_Parsec_Search_V2_Entity.Category.namedEntityCategoryStreetAddress(_:))
  {
    return 8;
  }

  if (result == enum case for Apple_Parsec_Search_V2_Entity.Category.namedEntityCategoryCity(_:))
  {
    return 9;
  }

  if (result == enum case for Apple_Parsec_Search_V2_Entity.Category.namedEntityCategoryState(_:))
  {
    return 10;
  }

  if (result == enum case for Apple_Parsec_Search_V2_Entity.Category.namedEntityCategoryCountry(_:))
  {
    return 11;
  }

  if (result == enum case for Apple_Parsec_Search_V2_Entity.Category.namedEntityCategoryFullAddress(_:))
  {
    return 12;
  }

  if (result != enum case for Apple_Parsec_Search_V2_Entity.Category.namedEntityCategoryTouristAttraction(_:))
  {
    (*(v3 + 8))(v6, v2);
    return 0;
  }

  return 13;
}

uint64_t sub_1000833FC()
{
  v1 = v0;
  v2 = type metadata accessor for OSSignpostID();
  sub_100003650();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_100003664();
  v8 = v7 - v6;
  static os_signpost_type_t.begin.getter();
  if (qword_1002140F8 != -1)
  {
    sub_1000069E8(&qword_1002140F8);
  }

  static OSSignpostID.exclusive.getter();
  sub_10000AE44();
  v9 = *(v4 + 8);
  v9(v8, v2);

  v11 = sub_10008C5F0(v10, v1);

  static os_signpost_type_t.end.getter();
  static OSSignpostID.exclusive.getter();
  sub_10000AE44();
  v9(v8, v2);
  return v11;
}

uint64_t sub_100083588(uint64_t a1, uint64_t a2, char a3)
{
  v7 = swift_slowAlloc();
  *v7 = 0;
  *(v3 + 16) = v7;
  *(v3 + 24) = a1;
  *(v3 + 32) = a2;
  *(v3 + 40) = a3 & 1;
  return v3;
}

id sub_1000835DC(uint64_t a1)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock(v3);
  swift_beginAccess();
  v4 = sub_100083FF0(a1);
  swift_endAccess();
  os_unfair_lock_unlock(v3);
  return v4;
}

uint64_t sub_100083650@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v20 = a1;
  sub_10008BF80(v2, v18, &qword_100217448, &qword_10019BA68);
  if (v19)
  {
    return sub_100008C84(v18, a2);
  }

  sub_10000B240(v2, &qword_100217448, &qword_10019BA68);
  v6 = *&v18[0];
  if (qword_100214038 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_10000964C(v7, qword_100215518);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v10 = 136446466;
    type metadata accessor for Assembly();
    sub_100046184(&qword_100217348, &qword_10019B978);
    v11 = String.init<A>(describing:)();
    v13 = sub_100009684(v11, v12, &v17);

    *(v10 + 4) = v13;
    *(v10 + 12) = 2082;
    sub_100046184(&qword_100217450, &qword_10019BA70);
    sub_100046184(&qword_100217458, &qword_10019BA78);
    v14 = String.init<A>(describing:)();
    v16 = sub_100009684(v14, v15, &v17);

    *(v10 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v8, v9, "AtomicValue<%{public}s, %{public}s>.init", v10, 0x16u);
    swift_arrayDestroy();
  }

  v6(&v20);

  result = sub_1000092B4(a2, v3);
  *(v3 + 40) = 1;
  return result;
}

uint64_t sub_1000838B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v20 = a1;
  sub_10008BF80(v2, v18, &qword_100217430, &qword_10019BA50);
  if (v19)
  {
    return sub_100008C84(v18, a2);
  }

  sub_10000B240(v2, &qword_100217430, &qword_10019BA50);
  v6 = *&v18[0];
  if (qword_100214038 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_10000964C(v7, qword_100215518);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v10 = 136446466;
    type metadata accessor for Assembly();
    sub_100046184(&qword_100217348, &qword_10019B978);
    v11 = String.init<A>(describing:)();
    v13 = sub_100009684(v11, v12, &v17);

    *(v10 + 4) = v13;
    *(v10 + 12) = 2082;
    sub_100046184(&qword_100217438, &qword_10019BA58);
    sub_100046184(&qword_100217440, &qword_10019BA60);
    v14 = String.init<A>(describing:)();
    v16 = sub_100009684(v14, v15, &v17);

    *(v10 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v8, v9, "AtomicValue<%{public}s, %{public}s>.init", v10, 0x16u);
    swift_arrayDestroy();
  }

  v6(&v20);

  result = sub_1000092B4(a2, v3);
  *(v3 + 40) = 1;
  return result;
}

uint64_t sub_100083B20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v20 = a1;
  sub_10008BF80(v2, v18, &qword_1002173E0, &qword_10019BA08);
  if (v19)
  {
    return sub_100008C84(v18, a2);
  }

  sub_10000B240(v2, &qword_1002173E0, &qword_10019BA08);
  v6 = *&v18[0];
  if (qword_100214038 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_10000964C(v7, qword_100215518);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v10 = 136446466;
    type metadata accessor for Assembly();
    sub_100046184(&qword_100217348, &qword_10019B978);
    v11 = String.init<A>(describing:)();
    v13 = sub_100009684(v11, v12, &v17);

    *(v10 + 4) = v13;
    *(v10 + 12) = 2082;
    sub_100046184(&qword_1002173E8, &qword_10019BA10);
    sub_100046184(&qword_1002173F0, &qword_10019BA18);
    v14 = String.init<A>(describing:)();
    v16 = sub_100009684(v14, v15, &v17);

    *(v10 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v8, v9, "AtomicValue<%{public}s, %{public}s>.init", v10, 0x16u);
    swift_arrayDestroy();
  }

  v6(&v20);

  result = sub_1000092B4(a2, v3);
  *(v3 + 40) = 1;
  return result;
}

uint64_t sub_100083D88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v20 = a1;
  sub_10008BF80(v2, v18, &qword_100217380, &qword_10019B9B0);
  if (v19)
  {
    return sub_100008C84(v18, a2);
  }

  sub_10000B240(v2, &qword_100217380, &qword_10019B9B0);
  v6 = *&v18[0];
  if (qword_100214038 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_10000964C(v7, qword_100215518);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v10 = 136446466;
    type metadata accessor for Assembly();
    sub_100046184(&qword_100217348, &qword_10019B978);
    v11 = String.init<A>(describing:)();
    v13 = sub_100009684(v11, v12, &v17);

    *(v10 + 4) = v13;
    *(v10 + 12) = 2082;
    sub_100046184(&qword_100217388, &qword_10019B9B8);
    sub_100046184(&qword_100217390, &qword_10019B9C0);
    v14 = String.init<A>(describing:)();
    v16 = sub_100009684(v14, v15, &v17);

    *(v10 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v8, v9, "AtomicValue<%{public}s, %{public}s>.init", v10, 0x16u);
    swift_arrayDestroy();
  }

  v6(&v20);

  result = sub_1000092B4(a2, v3);
  *(v3 + 40) = 1;
  return result;
}

id sub_100083FF0(uint64_t a1)
{
  v17 = a1;
  v2 = *v1;
  if ((*(v1 + 16) & 1) == 0)
  {
    v3 = v1;
    v16 = *v1;
    v4 = *(v1 + 8);
    if (qword_100214038 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_10000964C(v5, qword_100215518);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v8 = 136446466;
      type metadata accessor for Assembly();
      sub_100046184(&qword_100217348, &qword_10019B978);
      v9 = String.init<A>(describing:)();
      v11 = sub_100009684(v9, v10, &v18);

      *(v8 + 4) = v11;
      *(v8 + 12) = 2082;
      sub_100005180(0, &qword_1002173B0, NSURLSession_ptr);
      sub_100046184(&qword_1002173B8, &qword_10019B9E0);
      v12 = String.init<A>(describing:)();
      v14 = sub_100009684(v12, v13, &v18);

      *(v8 + 14) = v14;
      _os_log_impl(&_mh_execute_header, v6, v7, "AtomicValue<%{public}s, %{public}s>.init", v8, 0x16u);
      swift_arrayDestroy();
    }

    v16(&v18, &v17);
    sub_100089304(v16, v4, 0);
    v2 = v18;
    *v3 = v18;
    *(v3 + 8) = 0;
    *(v3 + 16) = 1;
  }

  return v2;
}

uint64_t sub_10008422C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v20 = a1;
  sub_10008BF80(v2, v18, &qword_100217398, &qword_10019B9C8);
  if (v19)
  {
    return sub_100008C84(v18, a2);
  }

  sub_10000B240(v2, &qword_100217398, &qword_10019B9C8);
  v6 = *&v18[0];
  if (qword_100214038 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_10000964C(v7, qword_100215518);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v10 = 136446466;
    type metadata accessor for Assembly();
    sub_100046184(&qword_100217348, &qword_10019B978);
    v11 = String.init<A>(describing:)();
    v13 = sub_100009684(v11, v12, &v17);

    *(v10 + 4) = v13;
    *(v10 + 12) = 2082;
    sub_100046184(&qword_1002173A0, &qword_10019B9D0);
    sub_100046184(&qword_1002173A8, &qword_10019B9D8);
    v14 = String.init<A>(describing:)();
    v16 = sub_100009684(v14, v15, &v17);

    *(v10 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v8, v9, "AtomicValue<%{public}s, %{public}s>.init", v10, 0x16u);
    swift_arrayDestroy();
  }

  v6(&v20);

  result = sub_1000092B4(a2, v3);
  *(v3 + 40) = 1;
  return result;
}

uint64_t sub_100084494()
{

  sub_10000DDF8();
}

uint64_t sub_1000844F0()
{
  v0 = *(sub_100007608() + 32);
  os_unfair_lock_lock(v0 + 6);
  sub_10010DA04();
  os_unfair_lock_unlock(v0 + 6);
  swift_unknownObjectRelease();
  if (v2)
  {
    swift_unknownObjectRetain();
  }

  else
  {

    sub_10000EF80();
  }

  return sub_1000041F8();
}

uint64_t sub_1000845B4()
{

  sub_100007F8C();
  sub_10000EF80();
  sub_100007C04();

  return sub_10000BE80();
}

void sub_10008461C(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() standardUserDefaults];
  v3 = String._bridgeToObjectiveC()();
  v4 = [v2 BOOLForKey:v3];

  if (v4)
  {
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  else
  {

    sub_1000846E8(a1);
  }
}

uint64_t sub_1000846E8@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  sub_10008BF80(v1 + 128, &v8, &qword_100219370, &qword_10019BA90);
  if (v9)
  {
    return sub_100008C84(&v8, a1);
  }

  sub_10000B240(&v8, &qword_100219370, &qword_10019BA90);
  v4 = [objc_opt_self() defaultCenter];
  sub_100004950();
  sub_10000899C();
  v5 = type metadata accessor for TopicCacheController();
  swift_allocObject();
  v6 = sub_1000A55F0(v4, v1);
  a1[3] = v5;
  a1[4] = &off_1001FA300;
  *a1 = v6;
  sub_1000092B4(a1, &v8);
  sub_1000041DC(v1 + 128, v7);
  sub_10008BBA8(&v8, v1 + 128);
  return swift_endAccess();
}

uint64_t sub_100084814()
{
  if (!*(v0 + 176))
  {
    type metadata accessor for TrialAllocationStatusProvider();
    *(v0 + 176) = swift_allocObject();
    *(v0 + 184) = &off_1001FAF78;
  }

  swift_unknownObjectRetain();
  return sub_100005854();
}

uint64_t sub_10008487C()
{

  sub_100003904();
  sub_100007F8C();
  sub_10001E090();
  sub_10000835C();

  return v0;
}

uint64_t sub_1000848E0()
{

  sub_10000DDF8();
}

uint64_t sub_10008493C()
{

  sub_10000DDF8();
}

id sub_100084998()
{
  sub_1000158AC();
  v0 = sub_10000899C();
  sub_100015914(v0, 0);
  v1 = sub_100016D34();
  swift_unknownObjectRelease();
  if (!v1)
  {
    return 0;
  }

  v2 = [v1 eagerFeedbackSamplingPercentage];

  if (!v2)
  {
    return 0;
  }

  v3 = [v2 integerValue];

  return v3;
}

void *sub_100084A20()
{
  v1 = v0;
  type metadata accessor for OSSignpostID();
  sub_100003650();
  v86 = v3;
  v87 = v2;
  __chkstk_darwin(v2);
  sub_100003664();
  v85 = v5 - v4;
  type metadata accessor for DispatchWorkItemFlags();
  sub_100003650();
  v83 = v6;
  v84 = v7;
  __chkstk_darwin(v6);
  sub_100003664();
  v82 = v9 - v8;
  v78 = type metadata accessor for PegasusContext(0) - 8;
  __chkstk_darwin(v78);
  v79 = v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v77 = (v74 - v12);
  v92 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  sub_100003650();
  v14 = v13;
  __chkstk_darwin(v15);
  sub_100003664();
  v18 = v17 - v16;
  v19 = type metadata accessor for OS_dispatch_queue.Attributes();
  sub_1000036B8();
  __chkstk_darwin(v20);
  sub_100003664();
  type metadata accessor for DispatchQoS();
  sub_100003650();
  v80 = v22;
  v81 = v21;
  __chkstk_darwin(v21);
  sub_100003664();
  v25 = v24 - v23;
  v0[2] = 0;
  v26 = sub_100046184(&qword_1002174A0, &qword_10019BA98);
  sub_10000EB8C(v26);
  v0[3] = sub_10000AA30();
  v0[4] = 0;
  v27 = sub_100046184(&qword_1002174A8, &qword_10019BAA0);
  sub_10000EB8C(v27);
  v0[5] = sub_10000AA30();
  v28 = sub_100046184(&qword_1002174B0, &qword_10019BAA8);
  sub_10000EB8C(v28);
  v0[6] = sub_10000AA30();
  aBlock = sub_100088380;
  v95 = 0;
  LOBYTE(v99) = 0;
  v29 = sub_100046184(&qword_1002174B8, &qword_10019BAB0);
  sub_100012EE4(v29);
  v0[7] = sub_100023F08();
  v30 = sub_100046184(&qword_1002174C0, &qword_10019BAB8);
  sub_10000EB8C(v30);
  v0[8] = sub_10000AA30();
  v31 = sub_100046184(&qword_1002174C8, &qword_10019BAC0);
  sub_10000EB8C(v31);
  v0[9] = sub_10000AA30();
  v32 = sub_100046184(&qword_1002174D0, &qword_10019BAC8);
  sub_10000EB8C(v32);
  v0[10] = sub_10000AA30();
  v33 = sub_100046184(&qword_1002174D8, &qword_10019BAD0);
  sub_10000EB8C(v33);
  v0[11] = sub_10000AA30();
  v34 = sub_100046184(&qword_1002174E0, &qword_10019BAD8);
  sub_10000EB8C(v34);
  v0[12] = sub_10000AA30();
  type metadata accessor for Locker();
  v0[13] = 0;
  v0[14] = 0;
  sub_1000068B4();
  v35 = swift_allocObject();
  v36 = swift_slowAlloc();
  *(v35 + 16) = v36;
  *v36 = 0;
  v1[15] = v35;
  *(v1 + 8) = 0u;
  *(v1 + 9) = 0u;
  v1[20] = 0;
  aBlock = sub_100088D14;
  v95 = 0;
  LOBYTE(v99) = 0;
  v37 = sub_100046184(&qword_1002174E8, &qword_10019BAE0);
  sub_100012EE4(v37);
  v38 = sub_100023F08();
  v1[22] = 0;
  v1[23] = 0;
  v1[21] = v38;
  v39 = sub_100046184(&qword_1002174F0, &qword_10019BAE8);
  sub_10000EB8C(v39);
  v1[24] = sub_10000AA30();
  sub_10000EB8C(v39);
  v1[25] = sub_10000AA30();
  sub_10000EB8C(v39);
  v1[26] = sub_10000AA30();
  v1[27] = [objc_allocWithZone(type metadata accessor for DeviceManagedAppContextProvider()) init];
  v1[28] = &off_1001F75C0;
  aBlock = sub_100088F6C;
  v95 = 0;
  LOBYTE(v99) = 0;
  v40 = sub_100046184(&qword_1002174F8, &qword_10019BAF0);
  sub_100012EE4(v40);
  v1[29] = sub_100023F08();
  v41 = type metadata accessor for XPCEventsManager();
  sub_100019024();
  swift_allocObject();
  v1[30] = sub_10011085C();
  v76 = v1 + 30;
  v1[33] = v41;
  v1[34] = &off_1001FE6D0;
  aBlock = sub_10008915C;
  v95 = 0;
  LOBYTE(v99) = 0;
  v42 = sub_100046184(&qword_100217500, &qword_10019BAF8);
  sub_100012EE4(v42);
  v1[35] = sub_100023F08();
  *(v1 + 288) = 1;
  type metadata accessor for DeviceSetupStatus();
  swift_allocObject();
  v1[37] = sub_10006EAC4();
  v90 = sub_100005180(0, &qword_1002147C0, OS_dispatch_queue_ptr);
  static DispatchQoS.utility.getter();
  aBlock = 0;
  v43 = sub_10008BF30(&qword_100216910, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  v89 = v19;
  v74[1] = v43;
  dispatch thunk of OptionSet.init(rawValue:)();
  v44 = enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:);
  v45 = *(v14 + 104);
  v88 = v14 + 104;
  v75 = v45;
  v46 = v18;
  v47 = v18;
  v91 = enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:);
  v48 = v92;
  v45(v47, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v92);
  v1[38] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v74[0] = "com.apple.parsecd.persistence";
  static DispatchQoS.background.getter();
  sub_10001AC0C();
  dispatch thunk of OptionSet.init(rawValue:)();
  v49 = v44;
  v50 = v75;
  v75(v46, v49, v48);
  v1[39] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v74[0] = "com.apple.parsecd.background";
  static DispatchQoS.userInitiated.getter();
  sub_10001AC0C();
  dispatch thunk of OptionSet.init(rawValue:)();
  v50(v46, v91, v48);
  v1[40] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  static DispatchQoS.userInteractive.getter();
  sub_10001AC0C();
  dispatch thunk of OptionSet.init(rawValue:)();
  v50(v46, v91, v92);
  v51 = v25;
  v1[41] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v1[42] = 135;
  v52 = sub_100046184(&qword_100217508, &qword_10019BB00);
  sub_10000EB8C(v52);
  v1[43] = sub_10000AA30();
  sub_10000EB8C(v52);
  v1[44] = sub_10000AA30();
  sub_10000EB8C(v52);
  v1[45] = sub_10000AA30();
  v53 = sub_100046184(&qword_100217510, &qword_10019BB08);
  v54 = sub_10000EB8C(v53);
  v1[46] = sub_10000AA30();
  v55 = v77;
  sub_100066504(v77);
  static DeviceContextUtil.deviceCountryCode()();
  sub_100007C04();
  v56 = (v55 + *(v78 + 84));

  *v56 = v54;
  v56[1] = v52;
  static DeviceContextUtil.effectiveSystemLanguage()();
  sub_100007C04();

  v55[9] = v54;
  v55[10] = v52;
  static DeviceContextUtil.localeIdentifier()();
  sub_100007C04();

  *v55 = v54;
  v55[1] = v52;
  v57 = static DeviceContextUtil.topPreferredLanguages()();

  v55[11] = v57;
  static DeviceContextUtil.region.getter();
  sub_100007C04();

  v55[16] = v57;
  v55[17] = v52;
  v58 = v79;
  sub_10001BFC4(v55, v79);
  sub_100046184(&qword_100217518, &qword_10019BB10);
  swift_allocObject();
  v59 = sub_10010C200(v58);
  sub_10001E5F4(v55, type metadata accessor for PegasusContext);
  v1[47] = v59;
  type metadata accessor for ActivityMonitor();
  sub_100019024();
  swift_allocObject();
  sub_10000899C();
  sub_1000BCFE8();
  sub_100046184(&qword_100217520, &qword_10019BB18);
  swift_allocObject();
  v60 = sub_10000C844();
  v1[48] = sub_10010CFAC(v60);
  aBlock = sub_10008676C;
  v95 = 0;
  LOBYTE(v99) = 0;
  v61 = sub_100046184(&unk_100217528, &unk_10019BB20);
  sub_100012EE4(v61);
  v1[49] = sub_100023F08();
  v62 = type metadata accessor for Assembly.Clock();
  v63 = swift_allocObject();
  v1[53] = v62;
  v1[54] = &off_1001F94B0;
  v1[50] = v63;
  sub_100007534(v76, v1[33]);
  sub_100110ACC();
  sub_1000112A4();
  swift_unknownObjectRelease();
  sub_1000848E0();
  sub_100007378(&aBlock);
  sub_10001E0F8();

  sub_10008487C();

  sub_10001E408();

  sub_1000158AC();
  swift_unknownObjectRelease();
  sub_100037BF4();
  swift_unknownObjectRelease();
  sub_10008493C();
  sub_100007378(&aBlock);
  sub_10001F928();
  swift_unknownObjectRelease();
  sub_100007608();
  swift_unknownObjectRelease();
  sub_100021A30();
  swift_unknownObjectRelease();
  sub_1000845B4();
  swift_unknownObjectRelease();
  sub_1000068B4();
  v64 = swift_allocObject();
  swift_weakInit();
  v98 = sub_10008BC18;
  v99 = v64;
  aBlock = _NSConcreteStackBlock;
  v95 = 1107296256;
  v96 = sub_10000D50C;
  v97 = &unk_1001F9768;
  v65 = _Block_copy(&aBlock);

  static DispatchQoS.unspecified.getter();
  v93 = _swiftEmptyArrayStorage;
  sub_10008BF30(&qword_1002147D0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100046184(&unk_100217030, &unk_1001989C0);
  sub_100038314(&qword_1002147E0, &unk_100217030, &unk_1001989C0);
  v67 = v82;
  v66 = v83;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v65);
  (*(v84 + 8))(v67, v66);
  (*(v80 + 8))(v51, v81);

  sub_10000EF80();

  swift_unknownObjectRelease();
  static os_signpost_type_t.begin.getter();
  if (qword_1002140F8 != -1)
  {
    sub_1000069E8(&qword_1002140F8);
  }

  v68 = v85;
  static OSSignpostID.exclusive.getter();
  sub_10000E10C();
  v69 = v87;
  v70 = *(v86 + 8);
  v70(v68, v87);
  v71 = [objc_opt_self() defaultManager];
  sub_10000899C();
  type metadata accessor for ExperimentalFeedbackDatabase();
  sub_1000068B4();
  swift_allocObject();
  v72 = sub_10000C844();
  v1[2] = sub_10006F074(v72);

  static os_signpost_type_t.end.getter();
  static OSSignpostID.exclusive.getter();
  sub_10000E10C();
  v70(v68, v69);
  return v1;
}

uint64_t sub_1000858AC(uint64_t a1)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1000833FC();

    swift_unknownObjectRelease();
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v2 = *(result + 216);
    swift_unknownObjectRetain();

    sub_10008B6A0(v3, v2);
    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10008596C()
{

  v1 = sub_100007F8C();
  sub_1000835DC(v1);
  sub_10000835C();

  return v0;
}

void sub_1000859A8(void *a1@<X8>)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_opt_self() ephemeralSessionConfiguration];
  [v6 set_expiredDNSBehavior:1];
  [v6 set_allowsTCPFastOpen:1];
  [v6 set_allowsTLSSessionTickets:1];
  [v6 set_timingDataOptions:135];
  if (qword_100214168 != -1)
  {
    swift_once();
  }

  if ((byte_100232C58 & 1) == 0)
  {
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_100089408(v7, v8, v6, &selRef_set_tlsTrustPinningPolicyName_);
  }

  [v6 set_usesNWLoader:1];
  [v6 set_disableAPWakeOnIdleConnections:1];
  [v6 set_allowsHTTP3:1];
  [v6 set_allowsTLSSessionResumption:1];
  sub_1000158AC();
  v9 = sub_100016D34();
  swift_unknownObjectRelease();
  if (v9)
  {
    v10 = [v9 enablesL4S];
  }

  else
  {
    v10 = 0;
  }

  [v6 set_enablesL4S:v10];
  v11 = [objc_opt_self() sessionWithConfiguration:v6];
  v22 = 0;
  v23 = 0xE000000000000000;
  _StringGuts.grow(_:)(40);

  v22 = 0xD000000000000020;
  v23 = 0x80000001001AE690;
  v12 = [v6 _enablesL4S];
  v13 = v12 == 0;
  if (v12)
  {
    v14 = 1702195828;
  }

  else
  {
    v14 = 0x65736C6166;
  }

  if (v13)
  {
    v15 = 0xE500000000000000;
  }

  else
  {
    v15 = 0xE400000000000000;
  }

  v16 = v15;
  String.append(_:)(*&v14);

  v17._countAndFlagsBits = 539828265;
  v17._object = 0xE400000000000000;
  String.append(_:)(v17);
  UUID.init()();
  v18 = UUID.uuidString.getter();
  v20 = v19;
  (*(v3 + 8))(v5, v2);
  v21._countAndFlagsBits = v18;
  v21._object = v20;
  String.append(_:)(v21);

  sub_100089408(v22, v23, v11, &selRef_setSessionDescription_);

  *a1 = v11;
}

uint64_t sub_100085CFC()
{

  v1 = sub_100007F8C();
  sub_1000835DC(v1);
  sub_10000835C();

  return v0;
}

void sub_100085D38(void *a1@<X8>)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_opt_self() ephemeralSessionConfiguration];
  [v6 set_timingDataOptions:135];
  [v6 setWaitsForConnectivity:1];
  if (qword_100214168 != -1)
  {
    swift_once();
  }

  if ((byte_100232C58 & 1) == 0)
  {
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_100089408(v7, v8, v6, &selRef_set_tlsTrustPinningPolicyName_);
  }

  [v6 set_usesNWLoader:1];
  [v6 set_disableAPWakeOnIdleConnections:1];
  v9 = [objc_opt_self() sessionWithConfiguration:v6];
  v14 = 0;
  v15 = 0xE000000000000000;
  _StringGuts.grow(_:)(28);

  v14 = 0xD00000000000001ALL;
  v15 = 0x80000001001AE670;
  UUID.init()();
  v10 = UUID.uuidString.getter();
  v12 = v11;
  (*(v3 + 8))(v5, v2);
  v13._countAndFlagsBits = v10;
  v13._object = v12;
  String.append(_:)(v13);

  sub_100089408(v14, v15, v9, &selRef_setSessionDescription_);

  *a1 = v9;
}

uint64_t sub_100085F88()
{

  v1 = sub_100007F8C();
  sub_1000835DC(v1);
  sub_10000835C();

  return v0;
}

void sub_100085FC4(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = objc_opt_self();
  v7 = String._bridgeToObjectiveC()();
  v8 = [v6 backgroundSessionConfigurationWithIdentifier:v7];

  [v8 setHTTPCookieStorage:0];
  [v8 setURLCache:0];
  [v8 setDiscretionary:1];
  [v8 set_sessionSendsLaunchOnDemandEvents:1];
  [v8 set_allowsExpensiveAccess:0];
  [v8 setNetworkServiceType:3];
  if (qword_100214168 != -1)
  {
    swift_once();
  }

  if ((byte_100232C58 & 1) == 0)
  {
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_100089408(v9, v10, v8, &selRef_set_tlsTrustPinningPolicyName_);
  }

  [v8 set_usesNWLoader:1];
  [v8 set_disableAPWakeOnIdleConnections:1];
  sub_100005180(0, &qword_1002173B0, NSURLSession_ptr);
  v11 = v8;
  v12 = sub_10001F928();
  v13 = sub_1000862BC(v11, v12, 0);
  v18 = 0;
  v19 = 0xE000000000000000;
  _StringGuts.grow(_:)(33);

  v18 = 0xD00000000000001FLL;
  v19 = 0x80000001001AE650;
  UUID.init()();
  v14 = UUID.uuidString.getter();
  v16 = v15;
  (*(v3 + 8))(v5, v2);
  v17._countAndFlagsBits = v14;
  v17._object = v16;
  String.append(_:)(v17);

  sub_100089408(v18, v19, v13, &selRef_setSessionDescription_);

  *a1 = v13;
}

id sub_1000862BC(void *a1, uint64_t a2, void *a3)
{
  v5 = [swift_getObjCClassFromMetadata() sessionWithConfiguration:a1 delegate:a2 delegateQueue:a3];

  swift_unknownObjectRelease();
  return v5;
}

uint64_t sub_10008632C@<X0>(char **a2@<X8>)
{
  v3 = type metadata accessor for OSSignpostID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static os_signpost_type_t.begin.getter();
  if (qword_1002140F8 != -1)
  {
    swift_once();
  }

  static OSSignpostID.exclusive.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  v7 = *(v4 + 8);
  v7(v6, v3);
  type metadata accessor for ContextManager(0);
  v8 = swift_allocObject();

  *a2 = sub_100089A20(v9, 60, 900, v8);
  a2[1] = &off_1001FCC80;
  static os_signpost_type_t.end.getter();
  static OSSignpostID.exclusive.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  return (v7)(v6, v3);
}

uint64_t sub_100086500()
{
  v2 = sub_10000556C();
  os_unfair_lock_lock(v2);
  sub_10000F500(v3);
  v4 = *(v1 + 16);
  os_unfair_lock_unlock(v0);
  return v4;
}

void *sub_100086540()
{
  v2 = sub_10000556C();
  os_unfair_lock_lock(v2);
  sub_10000F500(v3);
  v4 = *(v1 + 16);
  v5 = v4;
  os_unfair_lock_unlock(v0);
  return v4;
}

double sub_100086584()
{
  v2 = sub_10000556C();
  os_unfair_lock_lock(v2);
  sub_10000F500(v3);
  v4 = *(v1 + 16);
  os_unfair_lock_unlock(v0);
  return v4;
}

uint64_t sub_1000865CC()
{
  v2 = sub_10000556C();
  os_unfair_lock_lock(v2);
  sub_10000F500(v3);
  v4 = *(v1 + 16);
  os_unfair_lock_unlock(v0);
  return v4;
}

void sub_10008660C(uint64_t a1@<X8>)
{
  sub_1000037B0();
  v4 = *(v1 + *(v3 + 96));
  os_unfair_lock_lock(v4);
  sub_1000037B0();
  v6 = *(v5 + 88);
  swift_beginAccess();
  type metadata accessor for Date();
  sub_1000036B8();
  (*(v7 + 16))(a1, v1 + v6);
  os_unfair_lock_unlock(v4);
}

uint64_t sub_1000866B8()
{
  v1 = *(v0 + 32);
  os_unfair_lock_lock(v1);
  sub_10000F500(v2);
  v3 = *(v0 + 16);

  os_unfair_lock_unlock(v1);
  return v3;
}

uint64_t sub_100086710()
{

  sub_10000DDF8();
}

void sub_10008676C(uint64_t *a1@<X8>)
{
  v2 = [objc_opt_self() defaultManager];
  v3 = type metadata accessor for PegasusConfigURLProvider(0);
  a1[3] = v3;
  a1[4] = &protocol witness table for PegasusConfigURLProvider;
  v4 = sub_1000205C4(a1);
  *v4 = v2;
  v5 = *(v3 + 20);
  v6 = v2;
  static PegasusConfigURLProvider.getPegasusConfigCacheDirectoryURL(fileManager:)(v6, v4 + v5);
}

uint64_t sub_100086810(void *a1)
{
  if (qword_1002141D0 != -1)
  {
    swift_once();
  }

  v3 = qword_100232D40;
  type metadata accessor for StorefrontIdentifierProvider();
  v4 = swift_allocObject();
  v5 = v3;

  v6 = a1;

  return sub_10008B560(v1, v6, v5, v4);
}

uint64_t sub_1000868BC(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t (*a4)(uint64_t))
{
  if (qword_1002140E8 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_10000964C(v8, qword_100232B28);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v14 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_100009684(a2, a3, &v14);
    _os_log_impl(&_mh_execute_header, v9, v10, "Received %s notification", v11, 0xCu);
    sub_100007378(v12);
  }

  return a4(a1);
}

void sub_100086A30()
{
  sub_10000899C();
  type metadata accessor for UserAgent();
  sub_100003650();
  __chkstk_darwin(v1);
  sub_100003664();
  v2 = objc_allocWithZone(_CPErrorFeedback);
  v3 = v0;
  v8 = sub_1000892A0(v0);
  v4 = [objc_allocWithZone(_CPFeedbackPayload) initWithCodable:v8];
  [v4 setQueryId:0];
  if (v4)
  {
    sub_1000844F0();
    v5 = v4;
    parsecdUserAgent.getter();
    sub_100014D74();

    swift_unknownObjectRelease();
    v6 = sub_100005854();
    v7(v6);
  }

  else
  {
  }
}

void sub_100086BA4(uint64_t a1)
{
  sub_100005180(0, &unk_100217460, SFErrorFeedback_ptr);
  swift_errorRetain();
  v2 = sub_1000FEFDC(a1);
  sub_100005180(0, &qword_100218220, _CPFeedbackPayload_ptr);
  v3 = v2;
  v4 = sub_1000E4D94(v3, 0);
  sub_100046184(&unk_100217470, &qword_10019BA80);
  OS_dispatch_queue.sync<A>(execute:)();
}

void sub_100086C94(void *a2@<X1>, BOOL *a3@<X8>)
{
  v5 = sub_100046184(&qword_100215388, &unk_10019E8F0);
  __chkstk_darwin(v5 - 8);
  v7 = &v17 - v6;
  v8 = type metadata accessor for UserAgent();
  __chkstk_darwin(v8 - 8);
  v9 = type metadata accessor for SessionType();
  v10 = __chkstk_darwin(v9);
  (*(v12 + 104))(&v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for SessionType.parsecd(_:), v10);
  parsecdUserAgent.getter();
  v13 = type metadata accessor for SessionTokens(0);
  sub_1000051C0(v7, 1, 1, v13);
  type metadata accessor for ClientSession(0);
  swift_allocObject();
  v14 = a2;

  sub_10001E818();
  v16 = v15;
  if (v15)
  {
    sub_10005475C();
  }

  *a3 = v16 == 0;
}

uint64_t sub_100086E8C()
{

  sub_10000EF80();

  sub_1000E5F2C(0, 0);
  swift_unknownObjectRelease();
  sub_100007608();
  sub_10010DC90();

  return swift_unknownObjectRelease();
}

id sub_100086F30@<X0>(void *a1@<X8>)
{
  sub_100005180(0, &qword_100217408, NSXPCConnection_ptr);
  sub_10000CC24(0xD000000000000014, 0x80000001001AE470, 0);
  sub_10000899C();
  v2 = type metadata accessor for FlusherClient();
  v3 = objc_allocWithZone(v2);
  v4 = sub_10000C844();
  result = FlusherClient.init(connection:)(v4);
  a1[3] = v2;
  a1[4] = &off_1001FD028;
  *a1 = result;
  return result;
}

uint64_t sub_100086FBC(uint64_t a1)
{

  v2 = sub_10000EF80();
  v4 = v3;

  sub_10008705C(a1, v2, v4);
  swift_unknownObjectRelease();
  return sub_1000041F8();
}

uint64_t sub_10008705C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100046184(&qword_100217480, &unk_100198F70);
  __chkstk_darwin(v6 - 8);
  v8 = v25 - v7;
  v9 = type metadata accessor for SessionLookupKey(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = v25 - v14;
  sub_10001BFC4(a1, v25 - v14);
  sub_10001BFC4(v15, v12);
  v16 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v17 = swift_allocObject();
  sub_10008BC38(v15, v17 + v16);
  parsecdUserAgent.getter();
  v18 = type metadata accessor for UserAgent();
  sub_1000051C0(v8, 0, 1, v18);
  LOBYTE(v15) = sub_100087520(a2, a3, v8, v12);
  sub_10000B240(v8, &qword_100217480, &unk_100198F70);
  sub_10001E5F4(v12, type metadata accessor for SessionLookupKey);
  if (v15)
  {

    swift_unknownObjectRetain();
  }

  else
  {
    v19 = sub_100007608();
    __chkstk_darwin(v19);
    v25[-2] = sub_10008BAFC;
    v25[-1] = v17;
    v21 = *(v20 + 32);
    __chkstk_darwin(v20);
    v25[-2] = sub_10008BB84;
    v25[-1] = v22;
    os_unfair_lock_lock(v21 + 6);
    sub_10008BB8C(&v21[4]);
    os_unfair_lock_unlock(v21 + 6);
    v23 = v25[3];

    swift_unknownObjectRelease();
    if (v23)
    {
      a2 = *(v23 + 64);
      swift_unknownObjectRetain();
    }

    else
    {
      return 0;
    }
  }

  return a2;
}

uint64_t sub_10008735C()
{

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  sub_10000B240(v0 + 128, &qword_100219370, &qword_10019BA90);

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  sub_100007378((v0 + 240));

  sub_100007378((v0 + 400));
  return v0;
}

uint64_t sub_1000874A4()
{
  sub_10008735C();

  return _swift_deallocClassInstance(v0, 440, 7);
}

uint64_t sub_100087520(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v52 = a4;
  v50 = a3;
  v48 = a1;
  v49 = sub_100046184(&qword_100217488, &qword_10019BA88);
  __chkstk_darwin(v49);
  v51 = &v44 - v4;
  v5 = sub_100046184(&qword_100217480, &unk_100198F70);
  __chkstk_darwin(v5 - 8);
  v46 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v44 - v8;
  v53 = type metadata accessor for UserAgent();
  v47 = *(v53 - 8);
  __chkstk_darwin(v53);
  v45 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v44 - v12;
  v14 = type metadata accessor for SessionTokens(0);
  __chkstk_darwin(v14);
  v16 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for UUID();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v44 - v22;
  v24 = type metadata accessor for SessionLookupKey(0);
  __chkstk_darwin(v24);
  v26 = &v44 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001BFC4(v52, v26);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v18 + 32))(v23, v26, v17);
    sub_100030008(v16);
    (*(v18 + 16))(v20, &v16[*(v14 + 20)], v17);
    sub_10001E5F4(v16, type metadata accessor for SessionTokens);
    v34 = static UUID.== infix(_:_:)();
    v35 = *(v18 + 8);
    v35(v20, v17);
    v35(v23, v17);
    return v34 & 1;
  }

  v27 = v47;
  v28 = *(v47 + 32);
  v29 = v26;
  v30 = v53;
  v28(v13, v29, v53);
  (*(v27 + 16))(v9, v13, v30);
  sub_1000051C0(v9, 0, 1, v30);
  v31 = *(v49 + 48);
  v32 = v51;
  sub_10008BF80(v50, v51, &qword_100217480, &unk_100198F70);
  sub_10008BF80(v9, v32 + v31, &qword_100217480, &unk_100198F70);
  if (sub_100008D0C(v32, 1, v30) != 1)
  {
    v52 = v13;
    v36 = v46;
    sub_10008BF80(v32, v46, &qword_100217480, &unk_100198F70);
    if (sub_100008D0C(v32 + v31, 1, v53) != 1)
    {
      v39 = (v32 + v31);
      v40 = v45;
      v41 = v53;
      v28(v45, v39, v53);
      sub_10008BF30(&unk_100217490, &type metadata accessor for UserAgent, &protocol conformance descriptor for UserAgent);
      v34 = dispatch thunk of static Equatable.== infix(_:_:)();
      v42 = *(v27 + 8);
      v42(v40, v41);
      sub_10000B240(v9, &qword_100217480, &unk_100198F70);
      v42(v52, v41);
      v42(v36, v41);
      sub_10000B240(v32, &qword_100217480, &unk_100198F70);
      return v34 & 1;
    }

    sub_10000B240(v9, &qword_100217480, &unk_100198F70);
    v37 = *(v27 + 8);
    v38 = v53;
    v37(v52, v53);
    v37(v36, v38);
    goto LABEL_8;
  }

  sub_10000B240(v9, &qword_100217480, &unk_100198F70);
  v33 = v53;
  (*(v27 + 8))(v13, v53);
  if (sub_100008D0C(v32 + v31, 1, v33) != 1)
  {
LABEL_8:
    sub_10000B240(v32, &qword_100217488, &qword_10019BA88);
    v34 = 0;
    return v34 & 1;
  }

  sub_10000B240(v32, &qword_100217480, &unk_100198F70);
  v34 = 1;
  return v34 & 1;
}

uint64_t sub_100087B8C(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, char *))
{
  v4 = sub_100046184(&qword_100217480, &unk_100198F70);
  __chkstk_darwin(v4 - 8);
  v6 = &v11 - v5;
  v7 = *(a1 + 64);
  v8 = *(a1 + 72);
  swift_unknownObjectRetain();
  sub_10001184C();
  v9 = a2(v7, v8, v6);
  swift_unknownObjectRelease();
  sub_10000B240(v6, &qword_100217480, &unk_100198F70);
  return v9 & 1;
}

void sub_100087C70(uint64_t a1, uint64_t a2)
{
  v5 = v2[4];
  os_unfair_lock_lock(v5);
  sub_100011944(v6);
  v2[2] = a1;
  v2[3] = a2;

  os_unfair_lock_unlock(v5);
}

void sub_100087CC8(double a1)
{
  v4 = sub_10000556C();
  os_unfair_lock_lock(v4);
  sub_100011944(v5);
  *(v2 + 16) = a1;
  os_unfair_lock_unlock(v1);
}

void sub_100087D10()
{
  sub_10000BE8C();
  sub_100011944(v3);
  *(v1 + 16) = v0;

  os_unfair_lock_unlock(v2);
}

void sub_100087D58(int a1)
{
  v3 = *(v1 + 24);
  os_unfair_lock_lock(v3);
  sub_100011944(v4);
  *(v1 + 16) = a1;
  os_unfair_lock_unlock(v3);
}

uint64_t sub_100087DA4(uint64_t a1)
{
  sub_1000037B0();
  v4 = *(v1 + *(v3 + 96));
  os_unfair_lock_lock(v4);
  sub_1000037B0();
  v6 = *(v5 + 88);
  sub_1000041DC(v1 + v6, v7);
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  (*(v9 + 24))(v1 + v6, a1, v8);
  swift_endAccess();
  os_unfair_lock_unlock(v4);
  return (*(v9 + 8))(a1, v8);
}

void sub_100087E8C()
{
  sub_10000BE8C();
  sub_100011944(v3);
  *(v1 + 16) = v0;
  os_unfair_lock_unlock(v2);
}

id sub_100087ECC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (!a2)
  {
    v8 = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v9 = 0;
    goto LABEL_6;
  }

  v8 = String._bridgeToObjectiveC()();

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v9 = String._bridgeToObjectiveC()();

LABEL_6:
  v10 = [v5 initWithEnvironmentName:v8 namedDelegatePort:v9 queue:a5];

  return v10;
}

uint64_t sub_100087F78@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for BiomeDatabaseManager();
  memset(v6, 0, sizeof(v6));
  v7 = 0;
  v3 = swift_allocObject();

  result = sub_10008A3F4(v4, v6, v3);
  *a2 = result;
  return result;
}

uint64_t sub_100087FE8@<X0>(char **a2@<X8>)
{
  v3 = type metadata accessor for OSSignpostID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static os_signpost_type_t.begin.getter();
  if (qword_1002140F8 != -1)
  {
    swift_once();
  }

  static OSSignpostID.exclusive.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  v7 = *(v4 + 8);
  v7(v6, v3);
  v8 = objc_allocWithZone(type metadata accessor for LocationManager(0));

  *a2 = sub_10008A5A4(v9, 0, 0, v8);
  a2[1] = &off_1001F91E8;
  static os_signpost_type_t.end.getter();
  static OSSignpostID.exclusive.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  return (v7)(v6, v3);
}

uint64_t sub_1000881B4@<X0>(uint64_t *a2@<X8>)
{
  v3 = type metadata accessor for OSSignpostID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static os_signpost_type_t.begin.getter();
  if (qword_1002140F8 != -1)
  {
    swift_once();
  }

  static OSSignpostID.exclusive.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  v7 = *(v4 + 8);
  v7(v6, v3);
  type metadata accessor for ConfigurationController();
  v8 = swift_allocObject();

  *a2 = sub_10008BCEC(v9, v8);
  a2[1] = &off_1001FD2F8;
  static os_signpost_type_t.end.getter();
  static OSSignpostID.exclusive.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  return (v7)(v6, v3);
}

uint64_t sub_100088380@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for ParsecKeys();
  swift_allocObject();
  result = ParsecKeys.init()();
  a1[3] = v2;
  a1[4] = &protocol witness table for ParsecKeys;
  *a1 = result;
  return result;
}

uint64_t sub_1000883D8@<X0>(id *a2@<X8>)
{
  v3 = type metadata accessor for OSSignpostID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static os_signpost_type_t.begin.getter();
  if (qword_1002140F8 != -1)
  {
    swift_once();
  }

  static OSSignpostID.exclusive.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  v7 = *(v4 + 8);
  v7(v6, v3);
  v8 = objc_allocWithZone(type metadata accessor for DownloadManager());

  *a2 = sub_10008ACA4(v9, v8);
  a2[1] = &off_1001FA368;
  static os_signpost_type_t.end.getter();
  static OSSignpostID.exclusive.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  return (v7)(v6, v3);
}

uint64_t sub_10008859C@<X0>(uint64_t *a2@<X8>)
{
  v3 = type metadata accessor for OSSignpostID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static os_signpost_type_t.begin.getter();
  if (qword_1002140F8 != -1)
  {
    swift_once();
  }

  static OSSignpostID.exclusive.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  v7 = *(v4 + 8);
  v7(v6, v3);
  type metadata accessor for ClientStateManager();
  v8 = swift_allocObject();

  *a2 = sub_10008B000(v9, v8);
  a2[1] = &off_1001FE330;
  static os_signpost_type_t.end.getter();
  static OSSignpostID.exclusive.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  return (v7)(v6, v3);
}

uint64_t sub_100088768@<X0>(uint64_t *a2@<X8>)
{
  v3 = type metadata accessor for OSSignpostID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static os_signpost_type_t.begin.getter();
  if (qword_1002140F8 != -1)
  {
    swift_once();
  }

  static OSSignpostID.exclusive.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  v7 = *(v4 + 8);
  v7(v6, v3);
  type metadata accessor for ClientSessionManager();
  memset(v10, 0, sizeof(v10));
  v11 = 0;
  swift_allocObject();

  sub_1000DFCA0();
  *a2 = v8;
  a2[1] = &off_1001FC490;
  static os_signpost_type_t.end.getter();
  static OSSignpostID.exclusive.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  return (v7)(v6, v3);
}

uint64_t sub_10008895C@<X0>(uint64_t *a2@<X8>)
{
  v3 = type metadata accessor for OSSignpostID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static os_signpost_type_t.begin.getter();
  if (qword_1002140F8 != -1)
  {
    swift_once();
  }

  static OSSignpostID.exclusive.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  v7 = *(v4 + 8);
  v7(v6, v3);
  type metadata accessor for ParsecPersistentStorage();
  v8 = swift_allocObject();
  *(v8 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v8 + 40) = 1;
  *(v8 + 24) = &off_1001F94C0;
  *(v8 + 32) = 0;
  swift_unknownObjectWeakAssign();
  *a2 = v8;
  a2[1] = &off_1001FE0A0;
  static os_signpost_type_t.end.getter();
  static OSSignpostID.exclusive.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  return (v7)(v6, v3);
}

uint64_t sub_100088B48@<X0>(uint64_t *a2@<X8>)
{
  v3 = type metadata accessor for OSSignpostID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static os_signpost_type_t.begin.getter();
  if (qword_1002140F8 != -1)
  {
    swift_once();
  }

  static OSSignpostID.exclusive.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  v7 = *(v4 + 8);
  v7(v6, v3);
  type metadata accessor for VisibilityManager();
  v8 = swift_allocObject();

  *a2 = sub_10008B0F4(v9, v8);
  a2[1] = &off_1001F83D8;
  static os_signpost_type_t.end.getter();
  static OSSignpostID.exclusive.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  return (v7)(v6, v3);
}

uint64_t sub_100088D14@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_100004950();
  v3 = [objc_opt_self() defaultManager];
  v4 = type metadata accessor for DevicePersistentDataManager(0);
  swift_allocObject();
  result = sub_1000B4F24(v2, v3);
  a1[3] = v4;
  a1[4] = &off_1001FA930;
  *a1 = result;
  return result;
}

uint64_t sub_100088DE4@<X0>(uint64_t a2@<X3>, uint64_t *a3@<X8>)
{
  v3 = a2;
  v4 = type metadata accessor for OSSignpostID();
  sub_100003650();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_100003664();
  v10 = v9 - v8;
  v11 = static os_signpost_type_t.begin.getter();
  if (qword_1002140F8 != -1)
  {
    sub_1000069E8(&qword_1002140F8);
  }

  static OSSignpostID.exclusive.getter();
  sub_100012604(v11, &_mh_execute_header);
  v12 = *(v6 + 8);
  v12(v10, v4);
  type metadata accessor for TrialExperimentsProvider();
  v13 = swift_allocObject();

  *a3 = sub_10008B24C(v14, v3, v13);
  v15 = static os_signpost_type_t.end.getter();
  static OSSignpostID.exclusive.getter();
  sub_100012604(v15, &_mh_execute_header);
  return (v12)(v10, v4);
}

uint64_t sub_100088F6C@<X0>(uint64_t *a2@<X8>)
{
  v3 = type metadata accessor for OSSignpostID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static os_signpost_type_t.begin.getter();
  if (qword_1002140F8 != -1)
  {
    swift_once();
  }

  static OSSignpostID.exclusive.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  v7 = *(v4 + 8);
  v7(v6, v3);
  v8 = type metadata accessor for AMSBaselineTreatmentProvider();
  v9 = swift_allocObject();

  v11 = sub_10008B30C(v10, 0x65735F6563696F76, 0xEC00000068637261, v9);
  a2[3] = v8;
  a2[4] = &off_1001FA7D0;
  *a2 = v11;
  static os_signpost_type_t.end.getter();
  static OSSignpostID.exclusive.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  return (v7)(v6, v3);
}

char *sub_10008915C@<X0>(uint64_t *a1@<X0>, char **a2@<X8>)
{
  v3 = *a1;
  v4 = [objc_opt_self() standardUserDefaults];
  sub_1000092B4(v3 + 240, v14);
  v5 = *(v3 + 312);
  v6 = sub_100026EEC(v14, v14[3]);
  v7 = __chkstk_darwin(v6);
  v9 = (&v14[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v10 + 16))(v9, v7);
  v11 = sub_10008B3A4(v4, *v9, v5);
  sub_100007378(v14);
  result = type metadata accessor for CloudNotificationChannelConnection();
  a2[3] = result;
  a2[4] = &off_1001F8CC0;
  *a2 = v11;
  return result;
}

id sub_1000892A0(uint64_t a1)
{
  if (a1)
  {
    v2 = _convertErrorToNSError(_:)();
  }

  else
  {
    v2 = 0;
  }

  v3 = [v1 initWithError:v2];

  return v3;
}

void sub_100089304(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

void sub_100089314(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  isa = Array._bridgeToObjectiveC()().super.isa;

  v7 = Array._bridgeToObjectiveC()().super.isa;

  v8 = Array._bridgeToObjectiveC()().super.isa;

  v9 = Array._bridgeToObjectiveC()().super.isa;

  [a5 setEnabledTopics:isa ignoredTopics:v7 opportunisticTopics:v8 nonWakingTopics:v9];
}

void sub_100089408(uint64_t a1, uint64_t a2, void *a3, SEL *a4)
{
  v6 = String._bridgeToObjectiveC()();

  [a3 *a4];
}

char *sub_100089474(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, void *a6, char *a7)
{
  v43[3] = type metadata accessor for XPCEventsManager();
  v43[4] = &off_1001FE6D0;
  v43[0] = a5;
  v14 = &a7[OBJC_IVAR____TtC7parsecd34CloudNotificationChannelConnection_latestMessage];
  sub_100005180(0, &qword_100217568, APSIncomingMessage_ptr);
  sub_10008BC90();
  v15 = Dictionary.init(dictionaryLiteral:)();
  *v14 = 0;
  *(v14 + 1) = v15;
  if (qword_100214128 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_10000964C(v16, qword_100232B98);

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    *v19 = 136315394;
    *(v19 + 4) = sub_100009684(a1, a2, &v41);
    *(v19 + 12) = 2080;
    *(v19 + 14) = sub_100009684(a3, a4, &v41);
    _os_log_impl(&_mh_execute_header, v17, v18, "Creating cloud connection for environment: %s, port: %s", v19, 0x16u);
    swift_arrayDestroy();
  }

  v20 = objc_allocWithZone(APSConnection);
  v21 = a6;
  v22 = sub_100087ECC(a1, a2, a3, a4, a6);
  if (v22)
  {
    v23 = v22;
    sub_100089314(&off_1001F6118, _swiftEmptyArrayStorage, _swiftEmptyArrayStorage, _swiftEmptyArrayStorage, v22);
    v24 = v23;
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v41 = v28;
      *v27 = 136315138;
      v29 = [v24 debugDescription];
      v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v32 = v31;

      v33 = sub_100009684(v30, v32, &v41);

      *(v27 + 4) = v33;
      _os_log_impl(&_mh_execute_header, v25, v26, "Creating cloud connection:  %s", v27, 0xCu);
      sub_100007378(v28);
    }
  }

  else
  {
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&_mh_execute_header, v34, v35, "Failed to inititialize APSConnection.", v36, 2u);
    }

    v23 = 0;
  }

  *&a7[OBJC_IVAR____TtC7parsecd34CloudNotificationChannelConnection_apsConnection] = v23;
  sub_1000092B4(v43, &a7[OBJC_IVAR____TtC7parsecd34CloudNotificationChannelConnection_xpcEventsManager]);
  v37 = type metadata accessor for CloudNotificationChannelConnection();
  v42.receiver = a7;
  v42.super_class = v37;
  v38 = objc_msgSendSuper2(&v42, "init");
  v39 = *&v38[OBJC_IVAR____TtC7parsecd34CloudNotificationChannelConnection_apsConnection];
  if (v39)
  {
    [v39 setDelegate:v38];

    sub_100007378(v43);
  }

  else
  {
    sub_100007378(v43);
  }

  return v38;
}

char *sub_1000898DC(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, void *a6)
{
  v22 = type metadata accessor for XPCEventsManager();
  v23 = &off_1001FE6D0;
  v21[0] = a5;
  v12 = objc_allocWithZone(type metadata accessor for CloudNotificationChannelConnection());
  v13 = sub_100026EEC(v21, v22);
  v14 = __chkstk_darwin(v13);
  v16 = (&v21[-1] - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v17 + 16))(v16, v14);
  v18 = sub_100089474(a1, a2, a3, a4, *v16, a6, v12);
  sub_100007378(v21);
  return v18;
}

char *sub_100089A20(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v51 = a2;
  v52 = a3;
  v55 = a1;
  v5 = type metadata accessor for PegasusContext(0);
  __chkstk_darwin(v5 - 8);
  v53 = v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = type metadata accessor for OSSignpostID();
  v54 = *(v56 - 8);
  __chkstk_darwin(v56);
  v45 = v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v49 = v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v48);
  v47 = v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v46 = v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v15 - 8);
  *(a4 + 3) = 0;
  *(a4 + 5) = 0;
  swift_unknownObjectWeakInit();
  type metadata accessor for Locker();
  v16 = swift_allocObject();
  v17 = swift_slowAlloc();
  *(v16 + 16) = v17;
  *v17 = 0;
  *(a4 + 6) = v16;
  v18 = OBJC_IVAR____TtC7parsecd14ContextManager_locker;
  v19 = swift_allocObject();
  v20 = swift_slowAlloc();
  *(v19 + 16) = v20;
  *&a4[v18] = v19;
  *v20 = 0;
  v21 = OBJC_IVAR____TtC7parsecd14ContextManager_logger;
  if (qword_1002140E8 != -1)
  {
    swift_once();
  }

  v22 = sub_10000964C(v8, qword_100232B28);
  v50 = v9;
  v44 = *(v9 + 16);
  v44(&a4[v21], v22, v8);
  v43 = OBJC_IVAR____TtC7parsecd14ContextManager_contextAccessQueue;
  v23 = sub_100005180(0, &qword_1002147C0, OS_dispatch_queue_ptr);
  v42[1] = "setupContextManager";
  v42[2] = v23;
  static DispatchQoS.userInteractive.getter();
  (*(v13 + 104))(v46, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v12);
  v57 = _swiftEmptyArrayStorage;
  sub_10008BF30(&qword_1002157A0, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_100046184(&unk_100217550, &unk_1001999F0);
  sub_100038314(&qword_1002157A8, &unk_100217550, &unk_1001999F0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  *&a4[v43] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *&a4[OBJC_IVAR____TtC7parsecd14ContextManager__parsecSubscriptionManager] = 0;
  *&a4[OBJC_IVAR____TtC7parsecd14ContextManager__contextProviderInterface] = 0;
  *&a4[OBJC_IVAR____TtC7parsecd14ContextManager_notBagFetchableSpan] = 0;
  v24 = v49;
  v44(v49, &a4[v21], v8);
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&_mh_execute_header, v25, v26, "ContextManager is created", v27, 2u);
  }

  (*(v50 + 8))(v24, v8);
  *(a4 + 2) = sub_100004950();
  static os_signpost_type_t.begin.getter();
  v28 = v45;
  if (qword_100214100 != -1)
  {
    swift_once();
  }

  static OSSignpostID.exclusive.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  v29 = *(v54 + 8);
  v30 = v56;
  v29(v28, v56);
  sub_100046184(&qword_100217560, &unk_10019EF30);
  swift_allocObject();

  *(a4 + 3) = sub_10007E534(v31, 0, "enableTelemetry=YES", 19, 2, _swiftEmptyArrayStorage);

  static os_signpost_type_t.end.getter();
  static OSSignpostID.exclusive.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  v29(v28, v30);
  static os_signpost_type_t.begin.getter();
  static OSSignpostID.exclusive.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  v29(v28, v30);
  v32 = &a4[OBJC_IVAR____TtC7parsecd14ContextManager_configuration];
  v33 = v52;
  *v32 = v51;
  *(v32 + 1) = v33;
  static os_signpost_type_t.end.getter();
  static OSSignpostID.exclusive.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  v29(v28, v30);
  *(a4 + 5) = &off_1001F94C0;
  swift_unknownObjectWeakAssign();
  v34 = v53;
  sub_100017190(v53);
  sub_10008BC38(v34, &a4[OBJC_IVAR____TtC7parsecd14ContextManager_context]);
  sub_1000158AC();
  LOBYTE(v34) = sub_100015F9C();
  swift_unknownObjectRelease();

  if ((v34 & 1) == 0)
  {
    swift_allocObject();

    *&a4[OBJC_IVAR____TtC7parsecd14ContextManager_notBagFetchableSpan] = sub_10007E534(v35, 2, "enableTelemetry=YES", 19, 2, _swiftEmptyArrayStorage);
  }

  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    *v38 = 0;
    _os_log_impl(&_mh_execute_header, v36, v37, "Setting up listener for context updates", v38, 2u);
  }

  v39 = [objc_opt_self() defaultCenter];
  [v39 addObserver:a4 selector:"updateContext:" name:@"com.apple.parsecd.contextUpdate" object:0];

  static os_signpost_type_t.begin.getter();
  static OSSignpostID.exclusive.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  v40 = v56;
  v29(v28, v56);
  sub_10001130C();
  static os_signpost_type_t.end.getter();
  static OSSignpostID.exclusive.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  v29(v28, v40);
  return a4;
}

uint64_t sub_10008A3F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a3 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(a3 + 24) = &off_1001F94C0;
  swift_unknownObjectWeakAssign();
  sub_10008BF80(a2, &v11, &qword_100215360, &unk_1001995B0);
  if (v12)
  {
    sub_10000B240(a2, &qword_100215360, &unk_1001995B0);

    sub_100008C84(&v11, &v13);
  }

  else
  {
    v5 = type metadata accessor for WritableSessionDatabase();
    v6 = [objc_opt_self() defaultManager];
    v7 = type metadata accessor for BiomeStreamsLedger();
    v8 = swift_allocObject();
    *(v8 + 24) = 0;
    swift_unknownObjectWeakInit();
    *(v8 + 24) = &off_1001F94C0;
    swift_unknownObjectWeakAssign();

    v14 = v7;
    v15 = &off_1001FAEB8;
    *&v13 = v8;
    v9 = WritableSessionDatabase.__allocating_init(fileManager:ledger:)(v6, &v13);
    v14 = v5;
    v15 = &protocol witness table for WritableSessionDatabase;
    *&v13 = v9;
    sub_10000B240(a2, &qword_100215360, &unk_1001995B0);
    if (v12)
    {
      sub_10000B240(&v11, &qword_100215360, &unk_1001995B0);
    }
  }

  sub_100008C84(&v13, a3 + 32);
  return a3;
}

char *sub_10008A5A4(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v48 = a3;
  v55 = a2;
  v51 = type metadata accessor for DispatchWorkItemFlags();
  v54 = *(v51 - 8);
  __chkstk_darwin(v51);
  v50 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v52 = *(v7 - 8);
  v53 = v7;
  __chkstk_darwin(v7);
  v49 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v47 - v14;
  v16 = &a4[OBJC_IVAR____TtC7parsecd15LocationManager_assembly];
  *&a4[OBJC_IVAR____TtC7parsecd15LocationManager_assembly + 8] = 0;
  swift_unknownObjectWeakInit();
  v17 = &a4[OBJC_IVAR____TtC7parsecd15LocationManager_locationService];
  *v17 = 0;
  *(v17 + 1) = 0;
  v18 = OBJC_IVAR____TtC7parsecd15LocationManager_geoCoder;
  *&a4[v18] = [objc_allocWithZone(CLGeocoder) init];
  *&a4[OBJC_IVAR____TtC7parsecd15LocationManager_geoLocation] = 0;
  *&a4[OBJC_IVAR____TtC7parsecd15LocationManager_lastGeoLocationUpdate] = 0;
  *&a4[OBJC_IVAR____TtC7parsecd15LocationManager_geoPlacemark] = 0;
  v19 = &a4[OBJC_IVAR____TtC7parsecd15LocationManager_geoLocationLatLng];
  *v19 = 0;
  *(v19 + 1) = 0xE000000000000000;
  sub_1000051C0(&a4[OBJC_IVAR____TtC7parsecd15LocationManager_geoLocationAge], 1, 1, v9);
  v20 = &a4[OBJC_IVAR____TtC7parsecd15LocationManager_geoLocationSource];
  *v20 = 0;
  *(v20 + 1) = 0xE000000000000000;
  v21 = &a4[OBJC_IVAR____TtC7parsecd15LocationManager_geoClientMetadata];
  *v21 = 0;
  *(v21 + 1) = 0xE000000000000000;
  v22 = &a4[OBJC_IVAR____TtC7parsecd15LocationManager_lookupGeoLocationLatLng];
  *v22 = 0;
  *(v22 + 1) = 0xE000000000000000;
  v23 = OBJC_IVAR____TtC7parsecd15LocationManager__locationAuthorizationStatus;
  sub_100046184(&qword_1002175B8, &qword_10019BB70);
  swift_allocObject();
  *&a4[v23] = sub_10010C238(2);
  v24 = OBJC_IVAR____TtC7parsecd15LocationManager__lastLocationUpdateDate;
  static Date.distantPast.getter();
  (*(v10 + 16))(v12, v15, v9);
  sub_100046184(&unk_1002175C0, &qword_10019BB78);
  swift_allocObject();
  v25 = sub_10010C258(v12);
  (*(v10 + 8))(v15, v9);
  *&a4[v24] = v25;
  *(v16 + 1) = &off_1001F94C0;
  swift_unknownObjectWeakAssign();
  v26 = *(a1 + 320);

  *&a4[OBJC_IVAR____TtC7parsecd15LocationManager_updateQueue] = v26;
  v27 = type metadata accessor for LocationManager(0);
  v58.receiver = a4;
  v58.super_class = v27;
  v28 = objc_msgSendSuper2(&v58, "init");
  v29 = &v28[OBJC_IVAR____TtC7parsecd15LocationManager_geoLocationSource];
  *v29 = 0x6E692E726F727265;
  *(v29 + 1) = 0xEA00000000007469;
  v30 = v28;

  v31 = &v30[OBJC_IVAR____TtC7parsecd15LocationManager_locationService];
  v32 = v48;
  *v31 = v55;
  v31[1] = v32;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v33 = objc_opt_self();
  v34 = [v33 defaultCenter];
  [v34 addObserver:v30 selector:"bagChangeNotification:" name:@"PARBagChangeNotification" object:0];

  v35 = [v33 defaultCenter];
  [v35 addObserver:v30 selector:"updateMapsClientMetadata:" name:GEOMapServiceSerializedClientMetadataForParsecDidInvalidateNotificationName object:0];

  v36 = [v33 defaultCenter];
  [v36 addObserver:v30 selector:"updateCountryCode:" name:GEOCountryConfigurationCountryCodeDidChangeNotification object:0];

  v37 = [v33 defaultCenter];
  [v37 addObserver:v30 selector:"performedSearchNotification:" name:@"com.apple.parsecd.performedSearch" object:0];

  v38 = *&v30[OBJC_IVAR____TtC7parsecd15LocationManager_updateQueue];
  v39 = swift_allocObject();
  *(v39 + 16) = v30;
  aBlock[4] = sub_10008BF78;
  aBlock[5] = v39;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000D50C;
  aBlock[3] = &unk_1001F9830;
  v40 = _Block_copy(aBlock);
  v41 = v30;
  v42 = v38;
  v43 = v49;
  static DispatchQoS.unspecified.getter();
  v56 = _swiftEmptyArrayStorage;
  sub_10008BF30(&qword_1002147D0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100046184(&unk_100217030, &unk_1001989C0);
  sub_100038314(&qword_1002147E0, &unk_100217030, &unk_1001989C0);
  v45 = v50;
  v44 = v51;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v40);
  swift_unknownObjectRelease();

  (*(v54 + 8))(v45, v44);
  (*(v52 + 8))(v43, v53);

  return v41;
}

id sub_10008ACA4(uint64_t a1, char *a2)
{
  ObjectType = swift_getObjectType();
  v17 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v3 = *(v17 - 8);
  __chkstk_darwin(v17);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v6);
  v7 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v7 - 8);
  v8 = &a2[OBJC_IVAR____TtC7parsecd15DownloadManager_assembly];
  *&a2[OBJC_IVAR____TtC7parsecd15DownloadManager_assembly + 8] = 0;
  swift_unknownObjectWeakInit();
  v9 = OBJC_IVAR____TtC7parsecd15DownloadManager_hasStarted;
  sub_100046184(&qword_100218170, &qword_10019BB58);
  v10 = swift_allocObject();
  *(v10 + 16) = sub_10000B19C(0);
  *&a2[v9] = v10;
  *&a2[OBJC_IVAR____TtC7parsecd15DownloadManager_resources] = _swiftEmptyDictionarySingleton;
  *&a2[OBJC_IVAR____TtC7parsecd15DownloadManager_spans] = _swiftEmptyDictionarySingleton;
  *(v8 + 1) = &off_1001F94C0;
  swift_unknownObjectWeakAssign();

  sub_100005180(0, &qword_1002147C0, OS_dispatch_queue_ptr);
  static DispatchQoS.background.getter();
  v20 = 0;
  sub_10008BF30(&qword_100216910, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  dispatch thunk of OptionSet.init(rawValue:)();
  (*(v3 + 104))(v5, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v17);
  *&a2[OBJC_IVAR____TtC7parsecd15DownloadManager_queue] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v19.receiver = a2;
  v19.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v19, "init");
  v12 = objc_opt_self();
  v13 = v11;
  v14 = [v12 defaultCenter];
  [v14 addObserver:v13 selector:"bagChangeNotificationWithNotification:" name:@"PARBagChangeNotification" object:0];

  return v13;
}

uint64_t sub_10008B000(uint64_t a1, uint64_t a2)
{
  *(a2 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(a2 + 24) = &off_1001F94C0;
  swift_unknownObjectWeakAssign();

  type metadata accessor for SessionType();
  type metadata accessor for ClientState(0);
  sub_10008BF30(&qword_100217588, &type metadata accessor for SessionType, &protocol conformance descriptor for SessionType);
  v3 = Dictionary.init(dictionaryLiteral:)();
  sub_100046184(&unk_100217590, &qword_10019BB50);
  v4 = swift_allocObject();
  *(v4 + 24) = 0;
  *(v4 + 16) = v3;
  *(a2 + 32) = v4;
  return a2;
}

void *sub_10008B0F4(uint64_t a1, void *a2)
{
  a2[3] = 0;
  swift_unknownObjectWeakInit();
  a2[4] = 0xD000000000000074;
  a2[5] = 0x80000001001AE7D0;
  a2[3] = &off_1001F94C0;
  swift_unknownObjectWeakAssign();
  v3 = [objc_opt_self() defaultCenter];
  [v3 addObserver:a2 selector:"bagChangeNotification:" name:@"PARBagChangeNotification" object:0];
  sub_1000158AC();
  v4 = swift_allocObject();
  swift_weakInit();

  sub_1000FF76C(1, sub_10008BCE4, v4, sub_100064E88, 0);

  swift_unknownObjectRelease();

  return a2;
}

uint64_t sub_10008B24C(uint64_t a1, int a2, uint64_t a3)
{
  sub_100046184(&qword_100217580, &qword_10019BB48);
  swift_allocObject();
  *(a3 + 16) = sub_10010CFAC(0);
  *(a3 + 32) = 0;
  swift_unknownObjectWeakInit();
  *(a3 + 48) = 0;
  *(a3 + 56) = 0;
  sub_100084814();
  v6 = v5;

  *(a3 + 32) = v6;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  *(a3 + 40) = a2;
  sub_10007CA88();
  sub_10007C6E4();
  return a3;
}

void *sub_10008B30C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  sub_100046184(&qword_100217578, &qword_10019BB40);
  swift_allocObject();
  v8 = sub_10010C33C(0, 0);
  a4[3] = a3;
  a4[4] = a1;
  a4[5] = &off_1001F94C0;
  a4[6] = v8;
  a4[2] = a2;
  sub_1000B315C(1, 0, 0);
  return a4;
}

char *sub_10008B3A4(void *a1, uint64_t a2, void *a3)
{
  v18[3] = type metadata accessor for XPCEventsManager();
  v18[4] = &off_1001FE6D0;
  v18[0] = a2;
  v6 = String._bridgeToObjectiveC()();
  [a1 BOOLForKey:v6];

  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  sub_1000092B4(v18, v17);
  v10 = sub_100026EEC(v17, v17[3]);
  v11 = __chkstk_darwin(v10);
  v13 = (v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v14 + 16))(v13, v11);
  v15 = sub_1000898DC(v7, v9, 0xD000000000000015, 0x80000001001AE6E0, *v13, a3);

  sub_100007378(v18);
  sub_100007378(v17);
  return v15;
}

uint64_t sub_10008B560(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  *(a4 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(a4 + 56) = 0;
  *(a4 + 32) = 0;
  *(a4 + 40) = 0;
  swift_unknownObjectWeakInit();
  *(a4 + 72) = 0;
  *(a4 + 80) = 1;
  *(a4 + 56) = &off_1001F94C0;
  swift_unknownObjectWeakAssign();
  *(a4 + 64) = a2;
  *(a4 + 88) = a3;
  v7 = swift_allocObject();
  swift_weakInit();
  v8 = a2;
  v9 = a3;

  v10 = sub_100103EF4(sub_10008B670, v7);

  *(a4 + 72) = v10;
  *(a4 + 80) = 0;
  return a4;
}

uint64_t sub_10008B6A0(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for DispatchQoS.QoSClass();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for OSSignpostID();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static os_signpost_type_t.begin.getter();
  if (qword_1002140F8 != -1)
  {
    swift_once();
  }

  v18[1] = qword_100232B48;
  static OSSignpostID.exclusive.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  v18[0] = *(v8 + 8);
  (v18[0])(v10, v7);
  *(a2 + OBJC_IVAR____TtC7parsecd31DeviceManagedAppContextProvider_assembly + 8) = &off_1001F94C0;
  swift_unknownObjectWeakAssign();
  v11 = [objc_opt_self() defaultCenter];
  v12 = static AppDistributor.AppDistributorsOrTrustedDevelopersChangedNotification.getter();
  [v11 addObserver:a2 selector:"onAppDistUpdateWithNotification:" name:v12 object:0];

  sub_100005180(0, &qword_1002147C0, OS_dispatch_queue_ptr);
  out_token = 0;
  (*(v4 + 104))(v6, enum case for DispatchQoS.QoSClass.background(_:), v3);
  v13 = static OS_dispatch_queue.global(qos:)();
  (*(v4 + 8))(v6, v3);
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_10008BC20;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000303B8;
  aBlock[3] = &unk_1001F97B8;
  v15 = _Block_copy(aBlock);

  v16 = String.utf8CString.getter();
  notify_register_dispatch((v16 + 32), &out_token, v13, v15);

  _Block_release(v15);

  sub_10004FEBC();
  static os_signpost_type_t.end.getter();
  static OSSignpostID.exclusive.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  return (v18[0])(v10, v7);
}

uint64_t type metadata accessor for SessionLookupKey(uint64_t a1)
{
  result = qword_100217640;
  if (!qword_100217640)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10008BAFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(type metadata accessor for SessionLookupKey(0) - 8);
  v8 = (v3 + ((*(v7 + 80) + 16) & ~*(v7 + 80)));

  return sub_100087520(a1, a2, a3, v8);
}

uint64_t sub_10008BBA8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100046184(&qword_100219370, &qword_10019BA90);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10008BC28(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return swift_unknownObjectRelease();
  }

  else
  {
  }
}

uint64_t sub_10008BC38(uint64_t a1, uint64_t a2)
{
  v3 = sub_10000899C();
  v4(v3);
  sub_1000036B8();
  v5 = sub_1000041F8();
  v6(v5);
  return a2;
}

unint64_t sub_10008BC90()
{
  result = qword_100217570;
  if (!qword_100217570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100217570);
  }

  return result;
}

uint64_t sub_10008BCEC(uint64_t a1, uint64_t a2)
{
  *(a2 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(a2 + 32) = xmmword_10019B690;
  sub_100046184(&qword_1002175A0, &qword_10019BB60);
  swift_allocObject();
  *(a2 + 48) = sub_1000993B0(0);
  sub_100046184(&qword_1002175A8, &qword_10019BB68);
  swift_allocObject();
  *(a2 + 56) = sub_1000A5270();
  *(a2 + 24) = &off_1001F94C0;
  swift_unknownObjectWeakAssign();
  v3 = [objc_opt_self() standardUserDefaults];
  [objc_allocWithZone(type metadata accessor for PARBagConfigFactory()) init];
  sub_100085CFC();
  sub_100005180(0, &qword_1002173B0, NSURLSession_ptr);
  sub_100084494();
  sub_10008BF30(&qword_1002175B0, type metadata accessor for ConfigurationController, &unk_10019F3A4);
  type metadata accessor for ConfigurationManager();
  swift_allocObject();

  *(a2 + 32) = ConfigurationManager.init(defaults:context:configFactory:urlDataSource:authTokenProvider:delegate:)();

  v4 = [objc_opt_self() defaultCenter];
  [v4 addObserver:a2 selector:"handleRefreshNotificationWithNotification:" name:@"PARBagRefreshRequired" object:0];

  return a2;
}

uint64_t sub_10008BF30(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10008BF80(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_100046184(a3, a4);
  sub_1000036B8();
  v5 = sub_1000041F8();
  v6(v5);
  return a2;
}

uint64_t sub_10008BFDC(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for UserAgent();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_10008C06C(uint64_t a1, unint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    v10 = _CocoaArrayWrapper.subscript.getter();

    return v10;
  }

  v4 = sub_10000D57C(a2);
  v5 = sub_10008C560(0, a1, v4);
  if (v6)
  {
    v7 = v4;
  }

  else
  {
    v7 = v5;
  }

  if (v7 < 0)
  {
    goto LABEL_16;
  }

  sub_10008C4AC(0, a2);
  sub_10008C4AC(v7, a2);
  if ((a2 & 0xC000000000000001) != 0 && v7)
  {
    sub_10008C5AC();

    v8 = 0;
    do
    {
      v9 = v8 + 1;
      _ArrayBuffer._typeCheckSlowPath(_:)(v8);
      v8 = v9;
    }

    while (v7 != v9);
  }

  else
  {
  }

  if (a2 >> 62)
  {
    goto LABEL_17;
  }

  return a2 & 0xFFFFFFFFFFFFFF8;
}

id sub_10008C1A4()
{
  result = kCFLocaleTemperatureUnitPreferencesChangedNotification;
  if (kCFLocaleTemperatureUnitPreferencesChangedNotification)
  {
    qword_100232BF0 = kCFLocaleTemperatureUnitPreferencesChangedNotification;
    return kCFLocaleTemperatureUnitPreferencesChangedNotification;
  }

  else
  {
    __break(1u);
  }

  return result;
}

NSString sub_10008C1C4()
{
  result = String._bridgeToObjectiveC()();
  qword_100232BF8 = result;
  return result;
}

uint64_t sub_10008C1FC()
{
  v1 = *(v0 + 80);
  if (v1 != -1)
  {
    notify_cancel(v1);
  }

  sub_10000B218(v0 + 16);

  return v0;
}

uint64_t sub_10008C244()
{
  sub_10008C1FC();

  return _swift_deallocClassInstance(v0, 84, 7);
}

void *sub_10008C290(uint64_t a1)
{
  v2 = *(a1 + 16);
  v11 = _swiftEmptyArrayStorage;
  sub_1000EC984();
  v3 = _swiftEmptyArrayStorage;
  v4 = a1 + 32;
  if (v2)
  {
    while (1)
    {
      sub_100009848(v4, v10);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v11 = v3;
      v5 = v3[2];
      if (v5 >= v3[3] >> 1)
      {
        sub_1000EC984();
        v3 = v11;
      }

      v3[2] = v5 + 1;
      v6 = &v3[2 * v5];
      v6[4] = v8;
      v6[5] = v9;
      v4 += 32;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

uint64_t sub_10008C3BC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v6 = sub_100046184(&qword_100215AA8, &unk_100199CA0);
  __chkstk_darwin(v6 - 8);
  v8 = &v13 - v7;
  if (a3)
  {
    static Notification._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = type metadata accessor for Notification();
    v10 = 0;
  }

  else
  {
    v9 = type metadata accessor for Notification();
    v10 = 1;
  }

  sub_1000051C0(v8, v10, 1, v9);

  a4(v11);

  return sub_10000F94C(v8, &qword_100215AA8, &unk_100199CA0);
}

uint64_t sub_10008C4AC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (result < a1)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (a1 < 0)
  {
LABEL_8:
    __break(1u);
  }

  return result;
}

uint64_t sub_10008C504(void *a1)
{
  v1 = [a1 systemLanguages];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_10008C560(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a3 - result;
  if (__OFSUB__(a3, result))
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if (a2 < 1)
  {
    if (v3 <= 0 && v3 > a2)
    {
      return 0;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && v3 < a2)
  {
    return 0;
  }

  v5 = __OFADD__(result, a2);
  result += a2;
  if (v5)
  {
    goto LABEL_14;
  }

  return result;
}

unint64_t sub_10008C5AC()
{
  result = qword_100217810;
  if (!qword_100217810)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100217810);
  }

  return result;
}

uint64_t sub_10008C5F0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  os_unfair_lock_lock(v3);
  v4 = *(a2 + 104);
  if (!v4)
  {
    *(a2 + 104) = sub_10008C6D4(a2);
    *(a2 + 112) = v5;
    swift_unknownObjectRelease();
    v4 = *(a2 + 104);
  }

  swift_unknownObjectRetain();
  os_unfair_lock_unlock(v3);

  return v4;
}

void sub_10008C66C(void (*a1)(void))
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock(v3);
  a1();

  os_unfair_lock_unlock(v3);
}

uint64_t sub_10008C6D4(uint64_t a1)
{
  type metadata accessor for EngagedCompletionSQLCache(0);

  return sub_1000590BC();
}

uint64_t sub_10008C86C(uint64_t a1)
{
  v2 = sub_100046184(&unk_100214C70, &qword_10019B4D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10008C8D8()
{
  sub_100050134(v2);
  if (v3)
  {
    v0 = *sub_100007534(v2, v3);

    sub_100007378(v2);
  }

  else
  {
    sub_10000B240(v2, &qword_100217B88, &unk_10019BE50);
    return Dictionary.init(dictionaryLiteral:)();
  }

  return v0;
}

void sub_10008C96C()
{
  sub_100005478();
  v2 = v1;
  v3 = type metadata accessor for Trialpb_TrialExperiment();
  sub_100003650();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_10000407C();
  v9 = v7 - v8;
  __chkstk_darwin(v10);
  v12 = v23 - v11;
  __chkstk_darwin(v13);
  sub_100096040();
  v14 = 0;
  v24 = v2;
  v15 = v2 + 56;
  sub_100004154();
  v18 = v17 & v16;
  v20 = (v19 + 63) >> 6;
  v23[1] = v5 + 32;
  v23[2] = v5 + 16;
  v23[0] = v5 + 8;
  if ((v17 & v16) != 0)
  {
    do
    {
      v21 = v14;
LABEL_7:
      v22 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
      (*(v5 + 16))(v0, *(v24 + 48) + *(v5 + 72) * (v22 | (v21 << 6)), v3);
      (*(v5 + 32))(v9, v0, v3);
      sub_100008380();
      sub_100093548();
      (*(v5 + 8))(v12, v3);
    }

    while (v18);
  }

  while (1)
  {
    v21 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v21 >= v20)
    {

      sub_100005460();
      return;
    }

    v18 = *(v15 + 8 * v21);
    ++v14;
    if (v18)
    {
      v14 = v21;
      goto LABEL_7;
    }
  }

  __break(1u);
}

Swift::Int Endianness.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1 & 1);
  return Hasher._finalize()();
}

void sub_10008CB88()
{
  sub_100006A3C();
  v28 = v2;
  v29 = v0;
  v25 = v3;
  v26 = v4;
  v6 = v5;
  v8 = v7;
  v27 = v9;
  v10 = type metadata accessor for URL();
  sub_100003650();
  v30 = v11;
  __chkstk_darwin(v12);
  sub_10000407C();
  sub_10000C9A4();
  __chkstk_darwin(v13);
  v15 = &v22 - v14;
  v17 = *(v8 + 16);
  v16 = *(v8 + 24);
  sub_100017D30(v17, v16, v6, &v22 - v14);
  if (!v1)
  {
    v22 = v16;
    v23 = v17;
    v24 = v8;
    v18 = v27;
    type metadata accessor for ParsecURLRequestBuilder(0);
    (*(v30 + 16))(v0, v15, v10);
    v19 = sub_100018084(v0);

    sub_100018560();

    sub_10008CE88();
    sub_100005180(0, &qword_100216EF0, NSNumber_ptr);
    Dictionary.init(dictionaryLiteral:)();
    sub_1000960D4();
    sub_1000185A8();

    sub_1000192B0();
    v20 = v24;
    sub_100019AEC(v19, *(v24 + 48), *(v24 + 56));
    sub_10001A134(v19, *(v20 + 32), *(v20 + 40));
    sub_100096098();
    sub_10001A184(v19, v23, v22);
    sub_10008D514();
    v21 = UserAgent.fullString.getter();
    sub_10008D584(v19, v21);

    sub_10001A220(v18);
    URLRequest.cachePolicy.setter();

    (*(v30 + 8))(v15, v10);
  }

  sub_100007FD4();
}

uint64_t sub_10008CE88()
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_100084494();
    sub_100007534(v7, v7[3]);
    dispatch thunk of NetworkAuthTokenProviding.encryptedToken.getter();
    v0 = sub_10000DE18();
    sub_100019B38(v0, v1, v2, v3);

    swift_unknownObjectRelease();
    return sub_100007378(v7);
  }

  else
  {
    v5 = sub_100095CCC();
    sub_100004248(&type metadata for PARNetworkRequestFactory.NetworkRequestError, v5);
    *v6 = 0;
    return swift_willThrow();
  }
}

void sub_10008CF5C()
{
  sub_100005478();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = type metadata accessor for String.Encoding();
  v11 = sub_100005490(v10);
  __chkstk_darwin(v11);
  sub_100003664();
  if (v9)
  {
    v12 = v9;
  }

  else
  {
    v12 = _swiftEmptyArrayStorage;
  }

  if (!v1)
  {
    goto LABEL_19;
  }

  v13 = HIBYTE(v1) & 0xF;
  if ((v1 & 0x2000000000000000) == 0)
  {
    v13 = v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v13)
  {
LABEL_19:

    goto LABEL_49;
  }

  v70 = v3;
  v71 = v1;
  sub_10000527C();

  if ((StringProtocol.contains<A>(_:)() & 1) == 0 || (v70 = v3, v71 = v1, (StringProtocol.contains<A>(_:)() & 1) == 0))
  {
    if (v5)
    {
      v70 = v3;
      v71 = v1;

      v14._countAndFlagsBits = 45;
      v14._object = 0xE100000000000000;
      String.append(_:)(v14);
      v15._countAndFlagsBits = v7;
      v15._object = v5;
      String.append(_:)(v15);
    }
  }

  v16 = v12[2];
  v17 = v12 + 5;
  if (v16)
  {
    while (1)
    {
      v19 = *(v17 - 1);
      v18 = *v17;
      v70 = v19;
      v71 = v18;

      if (StringProtocol.contains<A>(_:)())
      {
        break;
      }

      v17 += 2;
      if (!--v16)
      {
        goto LABEL_15;
      }
    }

    v25 = 0;
    v26 = v12[2];
    v27 = v12 + 5;
    v28 = _swiftEmptyArrayStorage;
LABEL_21:
    v29 = &v27[2 * v25];
    while (v26 != v25)
    {
      if (v25 >= v12[2])
      {
        __break(1u);
        sub_100004228(&qword_1002140B8);
        v55 = type metadata accessor for Logger();
        sub_10000964C(v55, qword_100232A98);
        v56 = Logger.logObject.getter();
        v57 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v56, v57))
        {
          v58 = swift_slowAlloc();
          *v58 = 0;
          sub_10000554C(&_mh_execute_header, v59, v60, "Error encoding preferred languages");
          sub_1000036D4(v58);
        }

        goto LABEL_58;
      }

      v30 = *(v29 - 1);
      v31 = *v29;
      v32 = v30 == v19 && v31 == v18;
      if (!v32 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {

        v70 = v28;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1000EC984();
          v28 = v70;
        }

        v27 = v12 + 5;
        v34 = v28[2];
        v33 = v28[3];
        v35 = v34 + 1;
        if (v34 >= v33 >> 1)
        {
          sub_1000066A8(v33);
          v38 = v37;
          v69 = v39;
          sub_1000EC984();
          v35 = v38;
          v34 = v69;
          v27 = v12 + 5;
          v28 = v70;
        }

        ++v25;
        v28[2] = v35;
        v36 = &v28[2 * v34];
        v36[4] = v30;
        v36[5] = v31;
        goto LABEL_21;
      }

      v29 += 2;
      ++v25;
    }

    v40 = v28[2];
    if (!swift_isUniquelyReferenced_nonNull_native() || v40 >= v28[3] >> 1)
    {
      sub_10001B77C();
      v28 = v41;
    }

    v42 = sub_100096080();
    sub_100095110(v42, v43, v44, v19, v18);
    v12 = v28;
  }

  else
  {
LABEL_15:
    v20 = v12[2];

    if (!swift_isUniquelyReferenced_nonNull_native() || v20 >= v12[3] >> 1)
    {
      sub_10001B77C();
      v12 = v21;
    }

    v22 = sub_100096080();
    sub_100095110(v22, v23, v24, v3, v1);
  }

  if (v12[2] < 4uLL)
  {
    goto LABEL_48;
  }

  v45 = sub_1000F0800(0, 3, v12);
  v47 = v46;
  v49 = v48;
  v51 = v50;

  if ((v51 & 1) == 0)
  {
LABEL_41:
    sub_1000ED09C(v45, v47, v49, v51);
    v12 = v52;

    swift_unknownObjectRelease();
    goto LABEL_49;
  }

  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain_n();
  v53 = swift_dynamicCastClass();
  if (!v53)
  {
    swift_unknownObjectRelease();
    v53 = _swiftEmptyArrayStorage;
  }

  v54 = v53[2];

  if (__OFSUB__(v51 >> 1, v49))
  {
    __break(1u);
    goto LABEL_61;
  }

  if (v54 != (v51 >> 1) - v49)
  {
LABEL_61:
    swift_unknownObjectRelease_n();
    goto LABEL_41;
  }

  v12 = swift_dynamicCastClass();
  swift_unknownObjectRelease_n();
  if (!v12)
  {
    swift_unknownObjectRelease();
    v12 = _swiftEmptyArrayStorage;
  }

LABEL_48:

LABEL_49:
  if (v12[2])
  {
    v72 = sub_100046184(&unk_100219130, &qword_100199320);
    v70 = v12;
    static JSONSerializationUtil.data(withJSONObject:options:)(&v70, 0);
    sub_100007378(&v70);
    static String.Encoding.utf8.getter();
    sub_100008380();
    v61 = String.init(data:encoding:)();
    if (v62)
    {
      v63 = v61;
      v64 = v62;
      v65 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      sub_10011567C(v65, v66, v63, v64);
    }

    v67 = sub_100008380();
    sub_100014A40(v67, v68);
  }

  else
  {
  }

LABEL_58:
  sub_100005460();
}

uint64_t sub_10008D514()
{
  if (qword_100214168 != -1)
  {
    result = swift_once();
  }

  if (byte_100232C58 == 1)
  {
    return sub_100019B38(v0[8], v0[9], v0[36], v0[37]);
  }

  return result;
}

void sub_10008D584(uint64_t a1, uint64_t a2)
{
  if (a2 || (sub_100012628(), !v2))
  {
    if ((sub_100006A18() & 1) == 0)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      sub_10000E138();
      sub_10011567C(v3, v4, v5, v6);
    }
  }
}

void sub_10008D608(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_100006A3C();
  a19 = v22;
  a20 = v23;
  v25 = v24;
  v26 = sub_100046184(&qword_100218230, &unk_100199A00);
  sub_100005490(v26);
  sub_100003760();
  __chkstk_darwin(v27);
  v29 = &a9 - v28;
  v30 = type metadata accessor for URL();
  sub_100003650();
  v32 = v31;
  __chkstk_darwin(v33);
  sub_10000407C();
  sub_1000250FC();
  __chkstk_darwin(v34);
  sub_100096040();
  sub_100013354(v25, &selRef_replaySearchURL);
  if (v35)
  {
    URL.init(string:)();

    if (sub_100008D0C(v29, 1, v30) != 1)
    {
      v39 = sub_100005994();
      v40(v39);
      (*(v32 + 16))(v21, v20, v30);
      URLRequest.init(url:cachePolicy:timeoutInterval:)();
      sub_100095A58(v25);
      URLRequest.allHTTPHeaderFields.setter();
      (*(v32 + 8))(v20, v30);
      goto LABEL_6;
    }

    sub_10000B240(v29, &qword_100218230, &unk_100199A00);
  }

  v36 = sub_100095D20();
  v37 = sub_100004248(&type metadata for ParsecURLRequestBuilder.URLError, v36);
  sub_100095FA8(v37, v38);
LABEL_6:
  sub_100007FD4();
}

void sub_10008D7F0()
{
  sub_100006A3C();
  v172 = v3;
  v173 = v1;
  v166 = v4;
  v169 = v5;
  v171 = v6;
  v8 = v7;
  v176 = v9;
  v11 = v10;
  v167 = type metadata accessor for PegasusContext(0);
  sub_1000036B8();
  __chkstk_darwin(v12);
  sub_100003664();
  v168 = v14 - v13;
  v15 = sub_100046184(&qword_100218230, &unk_100199A00);
  v16 = sub_100005490(v15);
  __chkstk_darwin(v16);
  sub_10000407C();
  v19 = v17 - v18;
  __chkstk_darwin(v20);
  sub_10000BA2C();
  __chkstk_darwin(v21);
  v23 = v163 - v22;
  v24 = type metadata accessor for URL();
  sub_100003650();
  v175 = v25;
  __chkstk_darwin(v26);
  sub_10000407C();
  v29 = v27 - v28;
  __chkstk_darwin(v30);
  v32 = v163 - v31;
  v177 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v170 = v32;
    v174 = v24;
    v34 = Strong;
    v165 = v11;
    v35 = v8;
    sub_100013354(v8, &selRef_clientName);
    if (v36)
    {
      sub_100095FD0();
      v41 = v39 == v40 && v37 == v38;
      if (v41)
      {
      }

      else
      {
        sub_100019030();
        v42 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v42 & 1) == 0)
        {
          goto LABEL_14;
        }
      }

      if ([v176 triggerEvent] - 24 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v45 = v35;
        v46 = [v35 uncommittedSearchURL];
        if (v46)
        {
          v47 = v46;
          static URL._unconditionallyBridgeFromObjectiveC(_:)();

          v48 = 0;
        }

        else
        {
          v48 = 1;
        }

        v52 = v34;
        v54 = v0;
        v53 = v174;
        sub_1000051C0(v2, v48, 1, v174);
LABEL_20:
        v55 = sub_100003674();
        sub_100095E04(v55, v56);
        if (sub_100008D0C(v23, 1, v53) == 1)
        {
          sub_10000B240(v23, &qword_100218230, &unk_100199A00);
          v57 = sub_100095CCC();
          sub_100004248(&type metadata for PARNetworkRequestFactory.NetworkRequestError, v57);
          *v58 = 1;
          swift_willThrow();
LABEL_43:
          swift_unknownObjectRelease();
          goto LABEL_44;
        }

        v59 = v175;
        v60 = v170;
        v61 = sub_100096024();
        v62(v61);
        sub_10008E4C4();
        type metadata accessor for ParsecURLRequestBuilder(0);
        (*(v59 + 16))(v29, v60, v53);
        v63 = v173;
        v64 = sub_100018084(v29);
        if (v63)
        {
          (*(v59 + 8))(v60, v53);
          goto LABEL_43;
        }

        v65 = v64;
        v164 = v45;
        v173 = v52;
        v66 = v54[18];
        v67 = v54[19];
        v68 = v176;
        v69 = [v176 queryString];
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        sub_10000CEBC();

        v163[1] = v66;
        v163[2] = v67;
        sub_100115440(v66, v67, v59, v60);

        if ([v68 type] == 1)
        {
          v70 = v54;
          v71 = v54[82];
          v72 = v70[83];
        }

        else
        {
          v71 = 0;
          v72 = 0;
        }

        v73 = v164;
        v74 = [v68 triggerEvent];
        if ((v74 - 22) < 2)
        {
          v78 = 29;
          v79 = 28;
        }

        else if (v74 == 8 || v74 == 10)
        {
          v78 = 27;
          v79 = 26;
        }

        else
        {
          if (v74 != 24)
          {
            if (v74 == 21)
            {
              v76 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              sub_100019B38(v76, v77, v177[80], v177[81]);
            }

            if (!v72)
            {
LABEL_42:
              v82 = v176;
              v83 = sub_1000F39B4(v176);
              sub_1000184C0(v83);

              sub_1000192B0();
              sub_10008CE88();
              sub_100013354(v73, &selRef_clientName);
              if (v84)
              {
                v85 = v84;
              }

              else
              {
                v85 = 0xE000000000000000;
              }

              sub_10008E564();

              sub_100095BFC(v82, &selRef_topics);
              v86 = sub_1000041F8();
              sub_10008E598(v86, v87);

              sub_10008E6C0(v65, v172);
              v164 = type metadata accessor for SessionTokens(0);
              sub_100007FC8();
              sub_10008E750();
              sub_1000CFAD8(v82);
              if (v88)
              {
                sub_1000385B8();
                sub_100019B38(v177[102], v177[103], v89, v85);
              }

              sub_100013354(v73, &selRef_clientName);
              sub_10009610C();
              if (v166)
              {
                sub_100095BFC(v166, &selRef_overrideFeatureFlags);
              }

              sub_1000041F8();
              sub_1000185A8();

              sub_100013354(v73, &selRef_clientName);
              sub_100005578();
              sub_100095FC4();
              sub_10008EA00();

              sub_100096100();
              sub_10008EAA8();
              sub_100013354(v73, &selRef_clientName);
              sub_100005578();
              sub_100095FC4();
              sub_10008EB7C();

              v90 = v172;
              v91 = sub_100096100();
              sub_10001A184(v91, v92, v93);
              v94 = v168;
              sub_100017250(v90, v168);
              sub_100013354(v73, &selRef_clientName);
              sub_10000C938();
              sub_10008ECD8();

              sub_1000174A8(v94);
              v95 = sub_100096100();
              sub_100019AEC(v95, v96, v97);
              v98 = sub_100096100();
              sub_10001A134(v98, v99, v100);
              sub_100096098();
              v101 = v176;
              sub_1000CFAE4(v176);
              sub_100005578();
              sub_100095FC4();
              sub_10008F108();

              v102 = sub_100007FC8();
              sub_10008F150(v102, v103);
              v104 = sub_100007FC8();
              sub_10008F1AC(v104, v105);
              v106 = sub_100007FC8();
              sub_10008F208(v106, v107);
              v108 = sub_100007FC8();
              sub_10008F260(v108, v109);
              sub_100013354(v101, &selRef_l2version);
              sub_10009610C();
              if (v41)
              {
                v111 = 0xE000000000000000;
              }

              else
              {
                v111 = v110;
              }

              sub_100013354(v101, &selRef_l3version);
              v112 = sub_1000041F8();
              sub_10008F2A0(v112, v113, v111, v114);

              sub_10008F338();
              sub_100007FC8();
              sub_10008F61C();
              v115 = sub_100013354(v73, &selRef_clientName);
              if (!v116)
              {
                v115 = 0;
                v116 = 0xE000000000000000;
              }

              switch(PegasusClientName.init(rawValue:)(*&v115).value)
              {
                case parsecd_PegasusClientName_Spotlight:
                  sub_10008F730();
                  goto LABEL_61;
                case parsecd_PegasusClientName_Siri:
                  sub_10008F7C8();
                  break;
                case parsecd_PegasusClientName_Messages:
                  break;
                case parsecd_PegasusClientName_News:
                  sub_100037BF4();
                  v117 = sub_100081098();
                  v111 = sub_100081908(v117);
                  swift_unknownObjectRelease();
                  if (v111)
                  {
                    goto LABEL_61;
                  }

                  sub_10008F96C();
                  break;
                default:
LABEL_61:
                  v111 = v172;
                  sub_10008F824();
                  sub_10000C938();
                  sub_10008F888();
                  sub_10000C938();
                  sub_10008F8EC();
                  break;
              }

              sub_10008F9A0();
              v118 = sub_100007FC8();
              sub_10008F9F4(v118, v119);
              v120 = sub_100007FC8();
              sub_10008FA4C(v120, v121);
              sub_10008FAD8();
              sub_10008FB4C();
              sub_100013354(v73, &selRef_userAgent);
              sub_100005578();
              v122 = sub_100095FC4();
              sub_10008D584(v122, v123);

              v124 = sub_100007FC8();
              sub_10008FBE0(v124, v125, v73);
              [v101 scale];
              *&v126 = v126;
              sub_10008FD14(*&v126);
              sub_10008D514();
              sub_100013354(v73, &selRef_clientName);
              sub_1000385B8();
              v127 = sub_100007FC8();
              sub_10008FDA4(v127, v128, v129, v111);

              [v101 exp];
              sub_10008FE88(v65, v73);
              v130 = [v101 queryCommand];
              v131 = v174;
              if (!v130)
              {
                goto LABEL_77;
              }

              v132 = v130;
              objc_opt_self();
              v133 = swift_dynamicCastObjCClass();
              if (v133)
              {
                v134 = v133;
                v135 = v132;
                v136 = sub_1000CFAFC(v134);
                sub_10000FDF8(v136, v137);

                v138 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v140 = v139;
                v141 = [v134 entityType];
                v142 = 304;
                if (v141 == 3)
                {
                  v142 = 288;
                }

                v143 = 312;
                if (v141 == 3)
                {
                  v143 = 296;
                }

                v144 = *(v142 - 0x2000000000000000);
                v145 = *(v143 - 0x2000000000000000);

                sub_100115440(v138, v140, v144, v145);

                v131 = v174;

                v146 = sub_10000C938();
                sub_10008FF18(v146, v147);
              }

              else
              {
                objc_opt_self();
                v148 = swift_dynamicCastObjCClass();
                if (!v148)
                {
LABEL_76:

LABEL_77:
                  sub_10001A220(v165);
                  [v73 timeoutIntervalForRequest];
                  URLRequest.timeoutInterval.setter();
                  [v73 assumesHTTP3Capable];
                  URLRequest.assumesHTTP3Capable.setter();
                  swift_unknownObjectRelease();

                  v161 = sub_100096030();
                  v162(v161, v131);
                  goto LABEL_44;
                }

                v149 = v148;
                v150 = v132;
                v151 = sub_1000CFAF0(v149);
                sub_10000FDF8(v151, v152);

                v153 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v155 = v154;
                v156 = [v149 querySource];
                v157 = 304;
                if (v156 == 2)
                {
                  v157 = 288;
                }

                v158 = 312;
                if (v156 == 2)
                {
                  v158 = 296;
                }

                v159 = *(v157 - 0x2000000000000000);
                v160 = *(v158 - 0x2000000000000000);

                sub_100115440(v153, v155, v159, v160);
              }

              goto LABEL_76;
            }

LABEL_41:
            v80 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            sub_100115440(v80, v81, v71, v72);

            goto LABEL_42;
          }

          v78 = 83;
          v79 = 82;
        }

        v71 = v177[v79];
        v72 = v177[v78];

        goto LABEL_41;
      }
    }

LABEL_14:
    v45 = v35;
    v49 = [v35 searchURL];
    if (v49)
    {
      v50 = v49;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v51 = 0;
    }

    else
    {
      v51 = 1;
    }

    v52 = v34;
    v53 = v174;
    sub_1000051C0(v19, v51, 1, v174);
    v54 = v0;
    goto LABEL_20;
  }

  v43 = sub_100095CCC();
  sub_100004248(&type metadata for PARNetworkRequestFactory.NetworkRequestError, v43);
  *v44 = 0;
  swift_willThrow();
LABEL_44:
  sub_100007FD4();
}