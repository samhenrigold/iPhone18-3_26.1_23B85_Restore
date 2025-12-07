uint64_t sub_100051630()
{

  return dispatch thunk of CustomStringConvertible.description.getter();
}

uint64_t sub_10005166C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{

  return specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
}

uint64_t sub_10005173C(void *a1)
{
  v1 = [a1 initialLinkType];
  if (v1 >= 6)
  {
    return 5;
  }

  else
  {
    return (0x60403020100uLL >> (8 * v1));
  }
}

void sub_1000517AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = String._bridgeToObjectiveC()();
  v5 = swift_allocObject();
  *(v5 + 16) = a3;
  v7[4] = sub_100051990;
  v7[5] = v5;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_1000518F8;
  v7[3] = &unk_100631090;
  v6 = _Block_copy(v7);

  AnalyticsSendEventLazy();
  _Block_release(v6);
}

uint64_t sub_10005188C()
{

  return _swift_deallocObject(v0);
}

id sub_1000518F8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v4 = v1(v3);

  if (v4)
  {
    sub_100006AF0(0, &unk_1006A39B0, NSObject_ptr);
    Dictionary._bridgeToObjectiveC()();
    sub_10000667C();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void sub_100051B88(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v5 = sub_10000B6F4(a3);
  v6 = 0;
  while (1)
  {
    v7 = v6;
    if (v5 == v6)
    {
LABEL_11:
      sub_100015C08();
      return;
    }

    if ((a3 & 0xC000000000000001) != 0)
    {
      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v8 = *(a3 + 8 * v6 + 32);
    }

    v9 = v8;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    v12 = v8;
    v10 = a1(&v12);

    if (!v3)
    {
      v6 = v7 + 1;
      if ((v10 & 1) == 0)
      {
        continue;
      }
    }

    goto LABEL_11;
  }

  __break(1u);
LABEL_13:
  __break(1u);
}

unint64_t sub_100051C70()
{
  result = qword_1006A7570;
  if (!qword_1006A7570)
  {
    sub_100006AF0(255, &qword_1006A34B0, off_1006165E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A7570);
  }

  return result;
}

void sub_100051D0C()
{
  sub_100005EF4();
  v1 = v0;
  v59 = v2;
  v4 = v3;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  sub_100007FEC();
  v7 = v6;
  __chkstk_darwin(v8);
  sub_100007FDC();
  v11 = v10 - v9;
  v12 = type metadata accessor for DispatchQoS();
  sub_100007FEC();
  v60 = v13;
  __chkstk_darwin(v14);
  sub_100007FDC();
  v17 = v16 - v15;
  v18 = type metadata accessor for DispatchQoS.QoSClass();
  sub_100007FEC();
  __chkstk_darwin(v19);
  sub_100007FDC();
  v23 = v22 - v21;
  v24 = v4[2].n128_u64[0];
  if (v24 - 1 > 1)
  {
    if (qword_1006A0B28 != -1)
    {
      sub_1000080B0(&qword_1006A0B28);
    }

    v32 = type metadata accessor for Logger();
    sub_10000AF9C(v32, qword_1006BA5F8);
    v27 = Logger.logObject.getter();
    v33 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v27, v33))
    {
      goto LABEL_14;
    }

    v34 = swift_slowAlloc();
    v63.n128_u64[0] = swift_slowAlloc();
    *v34 = 136315138;
    *&v67[0] = v24;
    type metadata accessor for TUTranscriptionAvailability(0);
    v35 = String.init<A>(reflecting:)();
    v37 = sub_10002741C(v35, v36, &v63);

    *(v34 + 4) = v37;
    _os_log_impl(&_mh_execute_header, v27, v33, "Invalid transcription availability passed in: %s", v34, 0xCu);
    sub_1000101A8();
    v31 = v34;
    goto LABEL_12;
  }

  v55 = v20;
  v56 = v11;
  v25 = v4[1].n128_u64[1];
  v57 = v12;
  v58 = v4[1].n128_i64[0];

  if (sub_1000524B0(v4) & 1) != 0 || (sub_10029A8D0(v4))
  {
    if (qword_1006A0B28 != -1)
    {
      sub_1000080B0(&qword_1006A0B28);
    }

    v26 = type metadata accessor for Logger();
    sub_10000AF9C(v26, qword_1006BA5F8);

    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();

    if (!os_log_type_enabled(v27, v28))
    {

      goto LABEL_14;
    }

    v29 = swift_slowAlloc();
    v63.n128_u64[0] = swift_slowAlloc();
    *v29 = 136315138;
    v30 = sub_10002741C(v58, v25, &v63);

    *(v29 + 4) = v30;
    _os_log_impl(&_mh_execute_header, v27, v28, "we already have the speech assets (or are fetching them): for %s, not downloading again", v29, 0xCu);
    sub_1000101A8();
    v31 = v29;
LABEL_12:
    sub_100005F40(v31);
LABEL_14:

    goto LABEL_15;
  }

  if (qword_1006A0B28 != -1)
  {
    sub_1000080B0(&qword_1006A0B28);
  }

  v52 = v5;
  v38 = type metadata accessor for Logger();
  sub_10000AF9C(v38, qword_1006BA5F8);
  v67[0] = *v4;

  sub_100052980(v67, &v63);
  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.default.getter();
  sub_1000529DC(v67);

  v53 = v39;
  v51 = v7;
  if (os_log_type_enabled(v39, v40))
  {
    v50 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    *v50 = 136315138;
    v41 = v4[1];
    v63 = *v4;
    v64 = v41;
    v65 = v4[2].n128_u64[0];

    sub_100052980(v67, v62);
    v42 = String.init<A>(reflecting:)();
    v44 = sub_10002741C(v42, v43, &v61);

    *(v50 + 4) = v44;
    _os_log_impl(&_mh_execute_header, v53, v40, "downloadSpeechAssets for %s (it is necessary)", v50, 0xCu);
    sub_1000101A8();
    sub_100005F40(v50);
  }

  else
  {
  }

  v45 = OBJC_IVAR___CSDSpeechAssetManager_fetchingSpeechAssets;
  swift_beginAccess();
  swift_isUniquelyReferenced_nonNull_native();
  v62[0] = *&v1[v45];
  sub_10037831C(1, v4);
  *&v1[v45] = v62[0];
  swift_endAccess();
  sub_100006AF0(0, &qword_1006A31A0, OS_dispatch_queue_ptr);
  (*(v55 + 104))(v23, enum case for DispatchQoS.QoSClass.default(_:), v18);
  v54 = static OS_dispatch_queue.global(qos:)();
  (*(v55 + 8))(v23, v18);
  v46 = swift_allocObject();
  v47 = v4[1];
  *(v46 + 24) = *v4;
  *(v46 + 16) = v1;
  *(v46 + 40) = v47;
  *(v46 + 56) = v4[2].n128_u64[0];
  *(v46 + 64) = v24;
  *(v46 + 72) = v58;
  *(v46 + 80) = v25;
  *(v46 + 88) = v59 & 1;
  v65 = sub_10029C6F0;
  v66 = v46;
  v63.n128_u64[0] = _NSConcreteStackBlock;
  v63.n128_u64[1] = 1107296256;
  v64.n128_u64[0] = sub_100004CEC;
  v64.n128_u64[1] = &unk_100622928;
  v48 = _Block_copy(&v63);

  sub_100052980(v67, v62);
  v49 = v1;
  static DispatchQoS.unspecified.getter();
  v62[0] = _swiftEmptyArrayStorage;
  sub_10000AC00();
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_1000057D0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v48);

  (*(v51 + 8))(v56, v52);
  (*(v60 + 8))(v17, v57);

LABEL_15:
  sub_100005EDC();
}

uint64_t sub_100052460()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_1000524B0(__n128 *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR___CSDSpeechAssetManager_hasSpeechAssets;
  swift_beginAccess();
  v5 = *&v1[v4];

  v6 = sub_1000527B0(a1, v5);

  if (qword_1006A0B28 != -1)
  {
    sub_1000080B0(&qword_1006A0B28);
  }

  v7 = type metadata accessor for Logger();
  v8 = sub_10000AF9C(v7, qword_1006BA5F8);
  sub_1000359F0(*a1, a1[1], v8, v9, v10, v11, v12, v13, v14, v15, v16, v32[0], v32[1], v33.n128_i64[0], v33.n128_i64[1], v34.n128_i64[0], v34.n128_i64[1], v35, v36, v37[0], v37[1], v37[2], v37[3], v17);
  sub_100052980(v38, &v33);
  v18 = v2;
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  sub_1000529DC(v39);
  sub_1000529DC(v38);

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v37[0] = v22;
    *v21 = 136315650;
    v23 = a1[1];
    v33 = *a1;
    v34 = v23;
    v35 = a1[2].n128_i64[0];
    sub_100052980(v39, v32);
    sub_100052980(v38, v32);
    v24 = String.init<A>(reflecting:)();
    v26 = sub_10002741C(v24, v25, v37);

    *(v21 + 4) = v26;
    *(v21 + 12) = 1024;
    *(v21 + 14) = v6 & 1;
    *(v21 + 18) = 2080;
    sub_100052B8C();

    v27 = Dictionary.description.getter();
    v29 = v28;

    v30 = sub_10002741C(v27, v29, v37);

    *(v21 + 20) = v30;
    _os_log_impl(&_mh_execute_header, v19, v20, "asset: %s, hasSpeechAsset: %{BOOL}d %s", v21, 0x1Cu);
    swift_arrayDestroy();
    sub_100005F40(v22);
    sub_100005F40(v21);
  }

  return v6 & 1;
}

unint64_t sub_100052710(void *a1)
{
  v1 = a1[4];
  Hasher.init(_seed:)();
  sub_10000D310();
  String.hash(into:)();
  String.hash(into:)();
  Hasher._combine(_:)(v1);
  Hasher._finalize()();
  v2 = sub_10004A0C4();

  return sub_1000527FC(v2, v3);
}

uint64_t sub_1000527B0(void *a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 2;
  }

  v3 = sub_100052710(a1);
  if (v4)
  {
    return *(*(a2 + 56) + v3);
  }

  else
  {
    return 2;
  }
}

unint64_t sub_1000527FC(uint64_t *a1, uint64_t a2)
{
  for (i = a2 & ~(-1 << *(v2 + 32)); ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v10)
  {
    v5 = *(*(v11 + 48) + 40 * i + 32);
    Hasher.init(_seed:)();

    String.hash(into:)();
    String.hash(into:)();
    Hasher._combine(_:)(v5);
    v6 = Hasher._finalize()();
    v7 = a1[4];
    Hasher.init(_seed:)();
    String.hash(into:)();
    String.hash(into:)();
    Hasher._combine(_:)(v7);
    v8 = Hasher._finalize()();

    if (v6 == v8)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_100052A30()
{
  _StringGuts.grow(_:)(58);
  sub_10000E540("(localeIdentifier=");

  v0._countAndFlagsBits = String.init<A>(reflecting:)();
  String.append(_:)(v0);

  sub_10000E540(", assetIdentifier=");

  v1._countAndFlagsBits = String.init<A>(reflecting:)();
  String.append(_:)(v1);

  v2._countAndFlagsBits = 0x616C69617661202CLL;
  v2._object = 0xEF3D7974696C6962;
  String.append(_:)(v2);
  type metadata accessor for TUTranscriptionAvailability(0);
  v3._countAndFlagsBits = String.init<A>(reflecting:)();
  String.append(_:)(v3);

  v4._countAndFlagsBits = 41;
  v4._object = 0xE100000000000000;
  String.append(_:)(v4);
  return 0;
}

__n128 sub_100052B64(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

unint64_t sub_100052B8C()
{
  result = qword_1006A2CE8;
  if (!qword_1006A2CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A2CE8);
  }

  return result;
}

uint64_t sub_100052BE0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_100052C20(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

void sub_100052C68()
{
  v1 = *(v0 + 72);
  if (v1)
  {
    v2 = v0;
    v3 = qword_1006A0B30;
    swift_unknownObjectRetain();
    if (v3 != -1)
    {
      sub_100008720(&qword_1006A0B30);
    }

    v4 = type metadata accessor for Logger();
    sub_10000AF9C(v4, qword_1006BA610);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Removing observer for AVAudioSession mute state change", v7, 2u);
    }

    v8 = *(v2 + 48);
    ObjectType = swift_getObjectType();
    v12[3] = swift_getObjectType();
    v12[0] = v1;
    v10 = AVAudioSessionInputMuteChangeNotification;
    v11 = *(v8 + 136);
    swift_unknownObjectRetain();
    v11(2, v12, v10, ObjectType, v8);
    swift_unknownObjectRelease();
    sub_100009B7C(v12);
    *(v2 + 72) = 0;
    swift_unknownObjectRelease();
  }
}

uint64_t sub_100052DF8(uint64_t a1, void *a2, uint64_t a3)
{
  sub_100009B14(a2, a2[3]);
  [v3 removeObserverForType:a1 observer:_bridgeAnythingToObjectiveC<A>(_:)() name:a3];

  return swift_unknownObjectRelease();
}

void *sub_100052E74()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  sub_1000051F8(*(v0 + 56), *(v0 + 64));
  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_100052EAC()
{
  sub_100052E74();

  return _swift_deallocClassInstance(v0, 80, 7);
}

void sub_100052EE0(__int128 *a1, void *a2)
{
  *a1 = xmmword_1005821C0;

  v4 = [a2 routeController];
  v5 = [v4 pickedRoute];

  if (!v5)
  {
    return;
  }

  *a1 = xmmword_1005821D0;

  if ([v5 isBluetooth])
  {
    v6 = xmmword_1005821E0;
LABEL_8:
    v9 = v6;
    goto LABEL_9;
  }

  if ([v5 isSpeaker])
  {
    v6 = xmmword_1005821F0;
    goto LABEL_8;
  }

  if ([v5 isReceiver])
  {
    v6 = xmmword_100582200;
    goto LABEL_8;
  }

  v9 = xmmword_100582210;
  if (([v5 isWiredHeadset] & 1) == 0 && (objc_msgSend(v5, "isWiredHeadphones") & 1) == 0)
  {
    v8 = [v5 isAuxiliary];

    if ((v8 & 1) == 0)
    {
      return;
    }

    v7 = xmmword_100582220;
    goto LABEL_10;
  }

LABEL_9:

  v7 = v9;
LABEL_10:
  *a1 = v7;
}

uint64_t sub_100053070()
{
  sub_100006810();
  sub_1003A1B00(1);
  v1 = swift_task_alloc();
  *(v0 + 360) = v1;
  *v1 = v0;
  sub_100015FC8(v1);

  return sub_1003465E4();
}

void sub_100053100(uint64_t a1)
{
  v6 = [*(a1 + 32) callCenter];
  v2 = [v6 conversationManager];
  v3 = [v2 handoffEligibleConversation];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_10005317C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_100004778(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v5 UUID];
    v9 = [v5 activitySessions];
    v31 = 138412546;
    v32 = v8;
    v33 = 2048;
    v34 = [v9 count];
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "conversation: %@ activitySessions.count: %lu", &v31, 0x16u);
  }

  if (v5)
  {
    v10 = [*(a1 + 32) featureFlags];
    if ([v10 sharePlayInCallsEnabled])
    {
      v11 = [v6 isSharePlayCapable];
    }

    else
    {
      v11 = 0;
    }

    v12 = [v5 provider];
    v13 = [v12 isDefaultProvider];

    if (v13 & 1) != 0 || (v11)
    {
      if ([v5 isContinuitySession])
      {
        v14 = [v5 resolvedAudioVideoMode];
      }

      else
      {
        v14 = [v5 avMode];
      }

      if (v14 <= 2)
      {
        *(*(*(a1 + 48) + 8) + 24) = qword_10057A1D8[v14];
      }

      v15 = [v5 activitySessions];
      if ([v15 count])
      {
        v16 = ([v5 state] != 0) | v11;

        if ((v16 & 1) == 0)
        {
          goto LABEL_32;
        }

        *(*(*(a1 + 48) + 8) + 24) = 2;
        v17 = [v5 activitySessions];
        v15 = [v17 anyObject];

        if (v15 && ([v15 state] == 1) | v11 & 1)
        {
          v18 = [v15 activity];
          v19 = [v18 metadata];
          v20 = [v19 context];

          if (v20)
          {
            v21 = [v20 typedIdentifier];
            v22 = [v21 isEqualToString:TUConversationActivityContextIdentifierScreenSharing];

            if (v22)
            {
              v23 = [v15 isLocallyInitiated];
              v24 = 3;
              if (!v23)
              {
                v24 = 4;
              }

              *(*(*(a1 + 56) + 8) + 24) = v24;
            }

            else
            {
              v25 = [v20 typedIdentifier];
              v26 = [v25 isEqualToString:TUConversationActivityContextIdentifierWatchTogether];

              if (v26)
              {
                v27 = *(*(a1 + 56) + 8);
                v28 = 2;
              }

              else
              {
                v29 = [v20 typedIdentifier];
                v30 = [v29 isEqualToString:TUConversationActivityContextIdentifierListenTogether];

                v27 = *(*(a1 + 56) + 8);
                if (v30)
                {
                  v28 = 1;
                }

                else
                {
                  v28 = 5;
                }
              }

              *(v27 + 24) = v28;
            }
          }
        }
      }

      goto LABEL_32;
    }

    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

LABEL_32:
}

uint64_t sub_100053590()
{
  v0 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = sub_1000535D8(v0, v1, 0);

  return v2 & 1;
}

uint64_t sub_1000535D8(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  v5 = String._bridgeToObjectiveC()();
  v6 = [v3 objectForKey:v5];

  if (v6)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_10003EBF0(&v9, v10);
    sub_10004975C(v10);
    v7 = String._bridgeToObjectiveC()();
    a3 = [v3 BOOLForKey:v7];
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    sub_10004975C(v10);
  }

  return a3 & 1;
}

uint64_t sub_100053730(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  swift_getObjectType();
  v6 = type metadata accessor for JSONEncoder.OutputFormatting();
  __chkstk_darwin(v6 - 8);
  sub_100007FDC();
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  static JSONEncoder.OutputFormatting.sortedKeys.getter();
  dispatch thunk of JSONEncoder.outputFormatting.setter();
  sub_10000ED20(a1, a2, a3);
  dispatch thunk of JSONEncoder.encode<A>(_:)();
  v8 = objc_opt_self();
  sub_100007764();
  isa = Data._bridgeToObjectiveC()().super.isa;
  *&v20 = 0;
  v10 = [v8 JSONObjectWithData:isa options:4 error:&v20];

  v11 = v20;
  if (v10)
  {
    _bridgeAnyObjectToAny(_:)();
    v12 = sub_100007764();
    sub_100049B14(v12, v13);
    swift_unknownObjectRelease();
  }

  else
  {
    v14 = v11;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v15 = sub_100007764();
    sub_100049B14(v15, v16);

    v20 = 0u;
    v21 = 0u;
  }

  v18[0] = v20;
  v18[1] = v21;
  if (!*(&v21 + 1))
  {
    return 0;
  }

  sub_10003EBF0(v18, &v17);
  sub_10026D814(&unk_1006A2A00, &unk_10057D710);
  if (swift_dynamicCast())
  {
    return v19;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100053974(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Date();
  sub_100007FEC();
  v29 = v5;
  __chkstk_darwin(v6);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10026D814(&qword_1006A6CE8, &qword_100582448);
  sub_100007FEC();
  v11 = v10;
  __chkstk_darwin(v12);
  v14 = &v28 - v13;
  sub_100009B14(a1, a1[3]);
  sub_1000544C4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v33) = 0;
  v31 = v9;
  v15 = v30;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v15)
  {
    v16 = *(v11 + 8);
    v17 = v14;
    return v16(v17, v31);
  }

  v18 = v8;
  v19 = v29;
  v30 = v4;
  sub_100018260(OBJC_IVAR____TtC13callservicesd14RTCCSDCallInfo_durationMs);
  LOBYTE(v33) = 1;
  sub_10000F708();
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  sub_100018260(OBJC_IVAR____TtC13callservicesd14RTCCSDCallInfo_relativeStart);
  sub_1000103B0(2);
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  sub_100018260(OBJC_IVAR____TtC13callservicesd14RTCCSDCallInfo_relativeEnd);
  sub_1000103B0(3);
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  sub_100018260(OBJC_IVAR____TtC13callservicesd14RTCCSDCallInfo_bucketedDuration);
  sub_1000103B0(4);
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  LODWORD(v33) = *(v2 + OBJC_IVAR____TtC13callservicesd14RTCCSDCallInfo_endReason);
  v21 = sub_10000C74C(5);
  type metadata accessor for TUCallDisconnectedReason(v21);
  sub_100054AF0(&qword_1006A6CF8, type metadata accessor for TUCallDisconnectedReason, &protocol conformance descriptor for TUCallDisconnectedReason);
  sub_10000EA80();
  sub_10000F708();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  sub_1000162EC(6);
  sub_10000F708();
  KeyedEncodingContainer.encode(_:forKey:)();
  sub_1000162EC(7);
  sub_10000F708();
  KeyedEncodingContainer.encode(_:forKey:)();
  sub_100018260(OBJC_IVAR____TtC13callservicesd14RTCCSDCallInfo_setupTimeMs);
  sub_1000103B0(8);
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  sub_100018260(OBJC_IVAR____TtC13callservicesd14RTCCSDCallInfo_connectionTimeMs);
  sub_1000103B0(9);
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  sub_1000162EC(10);
  sub_10000F708();
  KeyedEncodingContainer.encode(_:forKey:)();
  sub_10000A230(11);
  KeyedEncodingContainer.encode(_:forKey:)();
  sub_10000A230(12);
  KeyedEncodingContainer.encode(_:forKey:)();
  sub_10000A230(13);
  KeyedEncodingContainer.encode(_:forKey:)();
  v33 = *(v2 + OBJC_IVAR____TtC13callservicesd14RTCCSDCallInfo_relayDeviceRouteChanges);
  LOBYTE(v34) = 14;
  sub_10026D814(&qword_1006A6D00, &qword_100582450);
  sub_100054D5C();
  sub_10000EA80();
  sub_10000F6F4();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  v22 = *(v2 + OBJC_IVAR____TtC13callservicesd14RTCCSDCallInfo_filteredOutReason + 4);
  LODWORD(v33) = *(v2 + OBJC_IVAR____TtC13callservicesd14RTCCSDCallInfo_filteredOutReason);
  BYTE4(v33) = v22;
  v23 = sub_10000C74C(15);
  type metadata accessor for TUCallFilteredOutReason(v23);
  sub_100054AF0(&qword_1006A6D18, type metadata accessor for TUCallFilteredOutReason, &protocol conformance descriptor for TUCallFilteredOutReason);
  sub_10000EA80();
  sub_10000F6F4();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  sub_10000D4A4(OBJC_IVAR____TtC13callservicesd14RTCCSDCallInfo_verficationStatus);
  v24 = sub_10000C74C(16);
  type metadata accessor for TUCallVerificationStatus(v24);
  sub_100054AF0(&qword_1006A6D20, type metadata accessor for TUCallVerificationStatus, &protocol conformance descriptor for TUCallVerificationStatus);
  sub_10000EA80();
  sub_10000F6F4();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  sub_10000A230(17);
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  sub_10000A230(18);
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  sub_10000A230(19);
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  sub_10000D4A4(OBJC_IVAR____TtC13callservicesd14RTCCSDCallInfo_nearbyMode);
  v25 = sub_10000C74C(20);
  type metadata accessor for TUCallNearbyMode(v25);
  sub_100054AF0(&qword_1006A6D28, type metadata accessor for TUCallNearbyMode, &protocol conformance descriptor for TUCallNearbyMode);
  sub_10000EA80();
  sub_10000F6F4();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  v26 = *(v2 + OBJC_IVAR____TtC13callservicesd14RTCCSDCallInfo_CID);
  LOBYTE(v33) = 21;

  sub_100015238();
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v26)
  {

    sub_10000A230(22);
    KeyedEncodingContainer.encode(_:forKey:)();
    sub_10000A230(23);
    KeyedEncodingContainer.encode(_:forKey:)();
    sub_10000A230(24);
    KeyedEncodingContainer.encode(_:forKey:)();
    sub_10000A230(25);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v27 = OBJC_IVAR____TtC13callservicesd14RTCCSDCallInfo_timebase;
    swift_beginAccess();
    (*(v19 + 16))(v18, v2 + v27, v30);
    LOBYTE(v34) = 26;
    sub_100054AF0(&qword_1006A6D30, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    sub_10000F6F4();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v19 + 8))(v18, v30);
    sub_100008580(27);
    KeyedEncodingContainer.encode(_:forKey:)();
    sub_100008580(28);
    KeyedEncodingContainer.encode(_:forKey:)();
    sub_100008580(29);
    KeyedEncodingContainer.encode(_:forKey:)();
    sub_100008580(30);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    sub_100008580(31);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    sub_100008580(32);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    sub_100008580(33);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v34) = 34;
    sub_100015238();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v34) = 35;
    sub_100015238();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    sub_100008580(36);
    KeyedEncodingContainer.encode(_:forKey:)();
    sub_100008580(37);
    KeyedEncodingContainer.encode(_:forKey:)();
    sub_100008580(38);
    KeyedEncodingContainer.encode(_:forKey:)();
    sub_100008580(39);
    KeyedEncodingContainer.encode(_:forKey:)();
    sub_100008580(40);
    KeyedEncodingContainer.encode(_:forKey:)();
    sub_100008580(41);
    KeyedEncodingContainer.encode(_:forKey:)();
    v34 = *(v2 + OBJC_IVAR____TtC13callservicesd14RTCCSDCallInfo_liveVoicemailStatus);
    v32 = 42;
    type metadata accessor for CSDLiveVoicemailStatus(0);
    sub_100054AF0(&qword_1006A6D38, type metadata accessor for CSDLiveVoicemailStatus, &protocol conformance descriptor for CSDLiveVoicemailStatus);
    sub_10000F6F4();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LODWORD(v34) = *(v2 + OBJC_IVAR____TtC13callservicesd14RTCCSDCallInfo_originatingUIType);
    v32 = 43;
    type metadata accessor for TUCallOriginatingUIType(0);
    sub_100054AF0(&qword_1006A6D40, type metadata accessor for TUCallOriginatingUIType, &protocol conformance descriptor for TUCallOriginatingUIType);
    sub_10000F6F4();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v34) = 44;
    sub_100015238();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    sub_100008580(45);
    KeyedEncodingContainer.encode(_:forKey:)();
    sub_100008580(46);
    KeyedEncodingContainer.encode(_:forKey:)();
    sub_100008580(47);
    KeyedEncodingContainer.encode(_:forKey:)();
    v16 = *(v11 + 8);
    v17 = v14;
    return v16(v17, v31);
  }

  (*(v11 + 8))(v14, v31);
}

unint64_t sub_1000544C4()
{
  result = qword_1006A6CF0;
  if (!qword_1006A6CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A6CF0);
  }

  return result;
}

unint64_t sub_100054520(char a1)
{
  result = 0x444955556C6C6163;
  switch(a1)
  {
    case 1:
      result = 0x6E6F697461727564;
      break;
    case 2:
    case 3:
      result = 0x65766974616C6572;
      break;
    case 4:
    case 9:
    case 13:
      result = 0xD000000000000010;
      break;
    case 5:
      result = 0x6F73616552646E65;
      break;
    case 6:
      result = 0xD000000000000011;
      break;
    case 7:
    case 23:
    case 32:
    case 42:
      result = 0xD000000000000013;
      break;
    case 8:
      result = 0x6D69547075746573;
      break;
    case 10:
      result = 0x79616C6572;
      break;
    case 11:
      result = 0x676E696D6F636E69;
      break;
    case 12:
      result = 0x657463656E6E6F63;
      break;
    case 14:
      result = 0xD000000000000017;
      break;
    case 15:
      result = 0xD000000000000011;
      break;
    case 16:
      result = 0xD000000000000011;
      break;
    case 17:
      result = 0xD000000000000011;
      break;
    case 18:
      result = 0x6D754E6E774F7369;
      break;
    case 19:
      result = 0x7265766E6F437369;
      break;
    case 20:
      result = 0x6F4D79627261656ELL;
      break;
    case 21:
      result = 4475203;
      break;
    case 22:
      result = 0x6B6E694C6D6F7266;
      break;
    case 24:
      result = 0xD000000000000011;
      break;
    case 25:
      result = 0x64656E7275746572;
      break;
    case 26:
      result = 0x65736162656D6974;
      break;
    case 27:
      result = 0x4873417472617473;
      break;
    case 28:
      result = 0x6F54657544646E65;
      break;
    case 29:
      result = 0xD000000000000011;
      break;
    case 30:
      result = 0x7553697269537369;
      break;
    case 31:
    case 36:
      result = 0x436E776F6E4B7369;
      break;
    case 33:
    case 41:
      result = 0xD000000000000012;
      break;
    case 34:
      result = 0x666E6F436B6E756ALL;
      break;
    case 35:
      result = 0xD000000000000016;
      break;
    case 37:
      result = 0x726F635372657375;
      break;
    case 38:
      result = 0x436465646E617262;
      break;
    case 39:
    case 40:
      result = 0xD000000000000014;
      break;
    case 43:
      result = 0xD000000000000011;
      break;
    case 44:
      result = 0x756F526F69647561;
      break;
    case 45:
      result = 0x737572546D6D6F63;
      break;
    case 46:
      result = 0xD000000000000011;
      break;
    case 47:
      result = 0x556C616963657073;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100054AF0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

_BYTE *storeEnumTagSinglePayload for RTCCSDCallInfo.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 47 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 47) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xD1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xD0)
  {
    v6 = ((a2 - 209) >> 8) + 1;
    *result = a2 + 47;
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
        JUMPOUT(0x100054C04);
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
          *result = a2 + 47;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RTCCSDCallInfo.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xD1)
  {
    if (a2 + 47 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 47) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 48;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x30;
  v5 = v6 - 48;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

void sub_100054D34()
{
  sub_100010128();
  ScreenSharingActivityManager.carPlayDidDisconnect()();
  *v0 = v1;
}

unint64_t sub_100054D5C()
{
  result = qword_1006A6D08;
  if (!qword_1006A6D08)
  {
    sub_10026DCB4(&qword_1006A6D00, &qword_100582450);
    sub_100054AF0(&qword_1006A6D10, type metadata accessor for RTCCSDRelayDeviceRoute, &unk_100584340);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A6D08);
  }

  return result;
}

void sub_100054FF8()
{
  sub_100009EAC();
  ScreenSharingActivityManager.carPlayDidDisconnect()();
  *v0 = v1;
}

id sub_100055190(void *a1, uint64_t a2)
{
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = (&v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v2 + OBJC_IVAR___CSDRTCReporter_queue);
  *v8 = v9;
  (*(v6 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v5);
  v10 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  v11 = (*(v6 + 8))(v8, v5);
  if ((v9 & 1) == 0)
  {
    __break(1u);
  }

  v12 = sub_10003D4D0(v11);
  sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_10057D6A0;
  *(v13 + 56) = sub_100006AF0(0, &qword_1006A3968, RTCReporting_ptr);
  *(v13 + 64) = sub_100055530();
  *(v13 + 32) = a1;
  *(v13 + 96) = sub_10026D814(&unk_1006A2A00, &unk_10057D710);
  *(v13 + 104) = sub_10001000C(&qword_1006A3980, &unk_1006A2A00, &unk_10057D710, &protocol conformance descriptor for [A : B]);
  *(v13 + 72) = a2;
  v14 = a1;

  v15 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("Reporting message with session %@ userInfo %@", 45, 2, &_mh_execute_header, v12, v15, v13);

  sub_10003E7C0();
  v30 = 0;
  v17 = sub_100055598(v16, &v30, v14);
  v18 = v30;
  if (v17)
  {

    return v18;
  }

  else
  {
    v29 = v30;
    v20 = v30;
    v21 = _convertNSErrorToError(_:)();

    v22 = swift_willThrow();
    v23 = sub_10003D4D0(v22);
    v24 = static os_log_type_t.error.getter();
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_10057D690;
    v30 = v21;
    swift_errorRetain();
    sub_10026D814(&unk_1006A2610, &qword_10057D4A0);
    v26 = String.init<A>(reflecting:)();
    v28 = v27;
    *(v25 + 56) = &type metadata for String;
    *(v25 + 64) = sub_100009D88();
    *(v25 + 32) = v26;
    *(v25 + 40) = v28;
    os_log(_:dso:log:type:_:)("Error while sending message with error: %@", 42, 2, &_mh_execute_header, v23, v24, v25);
  }
}

unint64_t sub_100055530()
{
  result = qword_1006A3970;
  if (!qword_1006A3970)
  {
    sub_100006AF0(255, &qword_1006A3968, RTCReporting_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A3970);
  }

  return result;
}

id sub_100055598(uint64_t a1, uint64_t a2, void *a3)
{
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v6 = [a3 sendMessageWithDictionary:isa error:a2];

  return v6;
}

uint64_t sub_10005561C()
{
  sub_100007934();

  return _swift_deallocObject(v1);
}

void sub_100055660(void *a1)
{
  v2 = [objc_opt_self() sharedInstance];
  if (!v2)
  {
    __break(1u);
    return;
  }

  v3 = v2;
  v4 = [v2 isGreenTea];

  if (v4)
  {
    if ([a1 isIncoming])
    {
      if ([a1 status] == 6)
      {
        v5 = [a1 provider];
        v6 = [v5 isFaceTimeProvider];

        if (v6)
        {
          v7 = sub_100320800(a1);
          if (v7)
          {
            v8 = *(v7 + 16);

            if (v8)
            {
              v39 = sub_10003D4D0(v9);
              v10 = static os_log_type_t.default.getter();
              os_log(_:dso:log:type:_:)("FTUR: Call is from contact, not interested", 42, 2, &_mh_execute_header, v39, v10, _swiftEmptyArrayStorage, v39);
LABEL_9:

              return;
            }
          }

          v11 = [a1 handle];
          if (v11)
          {
            v12 = v11;
            v13 = [v11 value];

            v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v16 = v15;

            v17 = [a1 handle];
            if (v17)
            {
              v18 = sub_1004450C8(v17);
              if (v19)
              {
                v20 = v18;
                v21 = v19;
                if (sub_1002A7838(v18, v19))
                {
                  v22 = sub_1002A7BC4(v14, v16, v20, v21);

                  v41 = sub_10003D4D0(v23);
                  if (v22)
                  {
                    sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
                    v24 = swift_allocObject();
                    *(v24 + 16) = xmmword_10057D690;
                    sub_100006AF0(0, &qword_1006A34B0, off_1006165E0);
                    v25 = a1;
                    v26 = String.init<A>(reflecting:)();
                    v28 = v27;
                    *(v24 + 56) = &type metadata for String;
                    *(v24 + 64) = sub_100009D88();
                    *(v24 + 32) = v26;
                    *(v24 + 40) = v28;
                    v29 = static os_log_type_t.default.getter();
                    os_log(_:dso:log:type:_:)("FTUR: reporting call: %@", 24, 2, &_mh_execute_header, v41, v29, v24);

                    sub_1002A7418(v25);
                    return;
                  }

                  v38 = static os_log_type_t.default.getter();
                  os_log(_:dso:log:type:_:)("FTUR: Call is from someone we called, not interested", 52, 2, &_mh_execute_header, v41, v38, _swiftEmptyArrayStorage, v41);
                }

                else
                {

                  v42 = sub_10003D4D0(v36);
                  v37 = static os_log_type_t.default.getter();
                  os_log(_:dso:log:type:_:)("FTUR: Did not pass the prefix check, not interested", 51, 2, &_mh_execute_header, v42, v37, _swiftEmptyArrayStorage, v42);
                }

                goto LABEL_9;
              }
            }
          }

          v30 = sub_10003D4D0(v11);
          sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
          v31 = swift_allocObject();
          *(v31 + 16) = xmmword_10057D690;
          v32 = sub_1002A7750();
          v34 = v33;
          *(v31 + 56) = &type metadata for String;
          *(v31 + 64) = sub_100009D88();
          *(v31 + 32) = v32;
          *(v31 + 40) = v34;
          v35 = static os_log_type_t.default.getter();
          os_log(_:dso:log:type:_:)("FTUR: Don't have handle and normalized handle, skipping", 55, 2, &_mh_execute_header, v30, v35, v31);
        }
      }
    }
  }
}

uint64_t sub_100055A88(uint64_t a1, void *a2)
{
  sub_100055B68();
  if (sub_100055E38(a2))
  {
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10031F348(v3, v4, 0);
  }

  if (sub_100055E9C(a2))
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10031F348(v5, v6, 0);

    sub_10031EE74();
  }

  result = sub_100055F8C(a2);
  if (result)
  {
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10031F348(v8, v9, 0);
  }

  return result;
}

uint64_t sub_100055B68()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[0] = type metadata accessor for DispatchQoS();
  v5 = *(v15[0] - 8);
  __chkstk_darwin(v15[0]);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_opt_self() sharedInstance];
  v9 = [v8 queue];
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  *(v10 + 24) = v0;
  aBlock[4] = sub_100056348;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004CEC;
  aBlock[3] = &unk_100626DD0;
  v11 = _Block_copy(aBlock);
  v12 = v8;
  v13 = v0;
  static DispatchQoS.unspecified.getter();
  v15[1] = _swiftEmptyArrayStorage;
  sub_10000AC00();
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_1000057D0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v11);

  (*(v2 + 8))(v4, v1);
  (*(v5 + 8))(v7, v15[0]);
}

uint64_t sub_100055E9C(void *a1)
{
  if ([a1 status] != 6)
  {
    return 0;
  }

  result = [a1 isIncoming];
  if (!result)
  {
    return result;
  }

  v3 = [a1 provider];
  v4 = [v3 isTelephonyProvider];

  if (v4 && ([a1 isKnownCaller] & 1) == 0 && (sub_1003174D8(objc_msgSend(a1, "disconnectedReason"), &off_100620988) || !objc_msgSend(a1, "disconnectedReason") && (objc_msgSend(a1, "callDuration"), v5 < 10.0)))
  {
    return 1;
  }

  else
  {
    return 0;
  }
}

BOOL sub_100055F8C(void *a1)
{
  result = 0;
  if ([a1 liveVoicemailStatus] == 1)
  {
    v2 = [a1 provider];
    v3 = [v2 isTelephonyProvider];

    if (v3)
    {
      return 1;
    }
  }

  return result;
}

void sub_100056000(void *a1)
{
  v22 = sub_10031ED10;
  v23 = 0;
  v18 = _NSConcreteStackBlock;
  v19 = 1107296256;
  v20 = sub_10002E470;
  v21 = &unk_100626DF8;
  v2 = _Block_copy(&v18);

  v3 = [a1 callsPassingTest:v2];
  _Block_release(v2);
  if (swift_isEscapingClosureAtFileLocation())
  {
    __break(1u);
    goto LABEL_14;
  }

  sub_100006AF0(0, &qword_1006A3AB0, TUCall_ptr);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (sub_10000B6F4(v4))
  {
    sub_10039C390(0, (v4 & 0xC000000000000001) == 0, v4);
    if ((v4 & 0xC000000000000001) == 0)
    {
      v5 = *(v4 + 32);
LABEL_5:
      v6 = v5;

      v7 = v6;
      sub_10031F50C(v7);
      v9 = v8;

      goto LABEL_7;
    }

LABEL_14:
    v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  v9 = 0;
  v6 = 0;
LABEL_7:
  v10 = [objc_opt_self() userContext];
  if (v10)
  {
    v11 = v10;
    if (v9)
    {
      v12.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
    }

    else
    {
      v12.super.isa = 0;
    }

    v13 = [objc_opt_self() keyPathForActiveCall];
    v14 = swift_allocObject();
    v14[2] = a1;
    v14[3] = v9;
    v14[4] = v6;
    v22 = sub_100056688;
    v23 = v14;
    v18 = _NSConcreteStackBlock;
    v19 = 1107296256;
    v20 = sub_100056350;
    v21 = &unk_100626E48;
    v15 = _Block_copy(&v18);
    v16 = v6;
    v17 = a1;

    [v11 setObject:v12.super.isa forContextualKeyPath:v13 responseQueue:0 withCompletion:v15];

    _Block_release(v15);
    swift_unknownObjectRelease();
  }

  else
  {
  }
}

uint64_t sub_100056300()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_100056350(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t sub_1000563A4(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);

  v15 = [a2 queue];
  v16 = swift_allocObject();
  *(v16 + 16) = a3;
  *(v16 + 24) = a4;
  aBlock[4] = sub_1000567C0;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004CEC;
  aBlock[3] = &unk_100626E98;
  v17 = _Block_copy(aBlock);
  v18 = a4;
  static DispatchQoS.unspecified.getter();
  v20[1] = _swiftEmptyArrayStorage;
  sub_10000AC00();
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_1000057D0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v17);

  (*(v8 + 8))(v10, v7);
  (*(v12 + 8))(v14, v11);
}

uint64_t sub_10005663C()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_1000566C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004778(a1);
  sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_10057D6A0;
  v6 = sub_1000567C8(a1);
  v8 = v7;
  *(v5 + 56) = &type metadata for String;
  v9 = sub_100009D88();
  *(v5 + 64) = v9;
  *(v5 + 32) = v6;
  *(v5 + 40) = v8;
  v10 = sub_100056834(a2);
  *(v5 + 96) = &type metadata for String;
  *(v5 + 104) = v9;
  *(v5 + 72) = v10;
  *(v5 + 80) = v11;
  v12 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("donated call context data=%@ for call=%@", 40, 2, &_mh_execute_header, v4, v12, v5);
}

uint64_t sub_1000567DC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  if (!a1)
  {
    return sub_1000359E0();
  }

  sub_10026D814(a2, a3);
  return String.init<A>(reflecting:)();
}

uint64_t sub_100057044(uint64_t a1)
{
  result = *v1 & a1;
  if (result)
  {
    *v1 &= ~a1;
  }

  return result;
}

uint64_t sub_100057068(uint64_t a1)
{
  v2 = *v1;
  *v1 |= a1;
  return v2 & a1;
}

NSString sub_100057174@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = sub_10026FE30(a2);
  *a1 = result;
  return result;
}

uint64_t sub_1000571B4(uint64_t a1)
{
  v2 = sub_100007FCC(a1);
  result = sub_100057034(v2, v3);
  *v1 = result;
  return result;
}

uint64_t sub_1000571DC(uint64_t a1)
{
  v2 = sub_100007FCC(a1);
  result = sub_10005703C(v2, v3);
  *v1 = result;
  return result;
}

uint64_t sub_100057264(uint64_t a1)
{
  v2 = sub_100007FCC(a1);
  result = sub_100057090(v2, v3);
  *v1 = result;
  return result;
}

uint64_t sub_100057310@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1000570E4(*a1);
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

_DWORD *sub_100057344@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_100057378@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = sub_10026D758(a2);
  *a1 = result;
  return result;
}

void *sub_1000573A0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1000573DC(_DWORD *a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return sub_10000E8D0(a1);
  }

  else
  {
    return _s13callservicesd31PodcastRecordingActivityManagerC08acceptedbcD033_E2355C229D2CBB4525EFAE2B0DCFFBF0LLSbvpfi_0();
  }
}

uint64_t sub_1000573F0(_DWORD *a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return sub_10000E8D0(a1);
  }

  else
  {
    return _s13callservicesd31PodcastRecordingActivityManagerC08acceptedbcD033_E2355C229D2CBB4525EFAE2B0DCFFBF0LLSbvpfi_0();
  }
}

uint64_t sub_100057404(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

uint64_t sub_10005742C(_DWORD *a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return sub_10000E8D0(a1);
  }

  else
  {
    return _s13callservicesd31PodcastRecordingActivityManagerC08acceptedbcD033_E2355C229D2CBB4525EFAE2B0DCFFBF0LLSbvpfi_0();
  }
}

char *sub_1000574C0()
{
  if (&swift_runtimeSupportsNoncopyableTypes)
  {
    return sub_10026D814(&qword_1006ABBE0, &qword_100587880);
  }

  else
  {
    return (&type metadata for () + 1);
  }
}

uint64_t sub_1000574F0()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0);
}

uint64_t sub_1000575D8()
{
  type metadata accessor for UUID();
  sub_100007FEC();
  swift_unknownObjectRelease();

  v1 = sub_100007728();
  v2(v1);

  return _swift_deallocObject(v0);
}

uint64_t sub_100057694()
{
  type metadata accessor for UUID();
  sub_100007FEC();
  v3 = (((*(v1 + 80) + 40) & ~*(v1 + 80)) + *(v2 + 64)) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  v4 = sub_100007728();
  v5(v4);

  return _swift_deallocObject(v0);
}

uint64_t sub_100057760()
{
  type metadata accessor for UUID();
  sub_100007FEC();
  v3 = (*(v2 + 64) + ((*(v1 + 80) + 40) & ~*(v1 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  v4 = sub_100007728();
  v5(v4);

  return _swift_deallocObject(v0);
}

uint64_t sub_10005782C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0);
}

uint64_t sub_100057874()
{

  sub_100007C2C();

  return _swift_deallocObject(v0);
}

uint64_t sub_1000578A8()
{
  v1 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  sub_100005EB4(v1);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  v4 = type metadata accessor for UUID();
  if (!sub_100015468(v0 + v3, 1, v4))
  {
    sub_10000F49C();
    (*(v5 + 8))(v0 + v3, v4);
  }

  return _swift_deallocObject(v0);
}

uint64_t sub_100057A10()
{
  sub_10026D814(&qword_1006A28C0, &unk_10057D4B0);
  sub_1000080D0();
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v2);

  return _swift_deallocObject(v0);
}

uint64_t sub_100057AAC()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_100057B08()
{

  sub_100007C2C();

  return _swift_deallocObject(v0);
}

uint64_t sub_100057B44()
{
  v1 = sub_10026D814(&qword_1006A28C0, &unk_10057D4B0);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0);
}

uint64_t sub_100057C28()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0);
}

uint64_t sub_100057C70()
{

  sub_100007934();

  return _swift_deallocObject(v0);
}

uint64_t sub_100057CA4()
{

  sub_100007C2C();

  return _swift_deallocObject(v0);
}

uint64_t sub_100057D2C()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_100057D6C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0);
}

uint64_t sub_100057DA4()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_100057DDC()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_100057E80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 28);
  v6 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);

  return sub_100015468(a1 + v5, a2, v6);
}

uint64_t sub_100057EE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 28);
  v7 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);

  return sub_10000AF74(a1 + v6, a2, a2, v7);
}

uint64_t sub_100057F44()
{
  type metadata accessor for UUID();
  sub_100008070();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return _swift_deallocObject(v0);
}

uint64_t sub_100057FCC()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_10005801C()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_100058054()
{
  sub_100006890();

  return _swift_deallocObject(v1);
}

uint64_t sub_100058088()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_1000580D0()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_100058120()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_100058170()
{
  swift_unknownObjectWeakDestroy();
  sub_100006890();

  return _swift_deallocObject(v0);
}

uint64_t sub_1000582A0()
{
  swift_unknownObjectWeakDestroy();
  v0 = sub_100008184();

  return _swift_deallocObject(v0);
}

uint64_t sub_1000582D0()
{
  _Block_release(*(v0 + 16));
  v1 = sub_100008184();

  return _swift_deallocObject(v1);
}

uint64_t sub_100058300()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0);
}

uint64_t sub_100058338()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0);
}

uint64_t sub_1000583A8()
{
  sub_100006890();

  return _swift_deallocObject(v1);
}

uint64_t sub_1000583DC()
{
  _Block_release(*(v0 + 16));
  sub_100006890();

  return _swift_deallocObject(v1);
}

uint64_t sub_100058410()
{

  v0 = sub_1000081EC();

  return _swift_deallocObject(v0);
}

uint64_t sub_100058454()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_1000584A8()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_1000584F0()
{

  v0 = sub_1000081EC();

  return _swift_deallocObject(v0);
}

uint64_t sub_100058550()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_100058588()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0);
}

uint64_t sub_100058634()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0);
}

uint64_t sub_10005866C()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_10005874C()
{
  v1 = type metadata accessor for UUID();
  sub_100007FEC();
  v3 = v2;
  v4 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v3 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0);
}

uint64_t sub_10005881C()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_1000588C8()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_100058910()
{
  v1 = type metadata accessor for UUID();
  sub_100007FEC();
  v3 = v2;
  v4 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v6 = *(v5 + 64);
  v7 = type metadata accessor for Notification();
  sub_100007FEC();
  v9 = v8;
  v10 = (v4 + v6 + *(v8 + 80)) & ~*(v8 + 80);

  (*(v3 + 8))(v0 + v4, v1);
  (*(v9 + 8))(v0 + v10, v7);

  return _swift_deallocObject(v0);
}

uint64_t sub_100058A48()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0);
}

uint64_t sub_100058A9C()
{
  sub_100009B7C((v0 + 16));

  return _swift_deallocObject(v0);
}

uint64_t sub_100058B10()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_100058B48()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_100058B90()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0);
}

uint64_t sub_100058BC8()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_100058C10()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_100058C54()
{
  sub_100007934();

  return _swift_deallocObject(v1);
}

uint64_t sub_100058CC4()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_100058D2C()
{
  v1 = *(v0 + 24);
  if (v1)
  {

    if (*(v0 + 56) != 1)
    {
    }

    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
  }

  return _swift_deallocObject(v0);
}

uint64_t sub_100058D98()
{
  if (*(v0 + 56) != 1)
  {
  }

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0);
}

uint64_t sub_100058E10()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0);
}

uint64_t sub_100058E48()
{
  sub_100009B7C((v0 + 16));
  sub_100015D0C();

  return _swift_deallocObject(v1);
}

uint64_t sub_100058E7C()
{

  sub_100009B7C((v0 + 40));

  return _swift_deallocObject(v0);
}

uint64_t sub_100058EC4()
{
  sub_100009B7C((v0 + 16));

  return _swift_deallocObject(v0);
}

double sub_100058F04@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 16))
  {
    sub_100009AB0(a1 + 32, a2);
  }

  else
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t sub_100058F64()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_100058F9C()
{

  return _swift_deallocObject(v0);
}

char *sub_100058FE4()
{
  if (&swift_runtimeSupportsNoncopyableTypes)
  {
    return sub_10026D814(&qword_1006A4570, &qword_10057F2D0);
  }

  else
  {
    return (&type metadata for () + 1);
  }
}

uint64_t sub_100059024()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0);
}

uint64_t sub_10005906C()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_1000590B0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = j__swift_bridgeObjectRetain(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1000590E0()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_100059174()
{
  swift_unknownObjectWeakDestroy();
  v0 = sub_100008184();

  return _swift_deallocObject(v0);
}

uint64_t sub_1000591A4()
{

  v1 = sub_1000081EC();

  return _swift_deallocObject(v1);
}

uint64_t sub_1000591DC()
{
  _Block_release(*(v0 + 16));
  v1 = sub_100008184();

  return _swift_deallocObject(v1);
}

uint64_t sub_10005921C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0);
}

uint64_t sub_10005925C()
{
  _Block_release(*(v0 + 32));

  return _swift_deallocObject(v0);
}

uint64_t sub_1000592B4()
{
  if (*(v0 + 16))
  {
  }

  return _swift_deallocObject(v0);
}

uint64_t sub_1000592F4()
{
  sub_100007C2C();

  return _swift_deallocObject(v1);
}

uint64_t sub_10005934C()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_100059384()
{
  v1 = type metadata accessor for UUID();
  sub_100007FEC();
  v3 = v2;
  v4 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  v6 = (*(v5 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v3 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0);
}

uint64_t sub_100059474()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_1000594AC()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0);
}

void sub_100059534(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = a1;
  sub_100307230();
}

uint64_t sub_1000595AC()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_1000595EC()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_10005963C()
{

  return _swift_deallocObject(v0);
}

BOOL sub_100059674(int a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (v6 != a1);
  return v4 != 0;
}

uint64_t sub_1000596BC()
{
  type metadata accessor for Utterance();
  sub_100007FEC();

  v1 = sub_100007728();
  v2(v1);

  return _swift_deallocObject(v0);
}

uint64_t sub_10005976C()
{
  sub_100007934();

  return _swift_deallocObject(v1);
}

uint64_t sub_1000597A8()
{
  sub_100007C2C();

  return _swift_deallocObject(v1);
}

uint64_t sub_1000597DC()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_100059814()
{

  sub_100007934();

  return _swift_deallocObject(v1);
}

uint64_t sub_100059850()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_100059898()
{
  sub_100007C2C();

  return _swift_deallocObject(v1);
}

uint64_t sub_1000598D4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0);
}

uint64_t sub_10005992C()
{
  type metadata accessor for URL();
  sub_100007FEC();
  v3 = (*(v2 + 64) + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;

  v4 = sub_100007728();
  v5(v4);

  return _swift_deallocObject(v0);
}

uint64_t sub_1000599F8()
{
  type metadata accessor for URL();
  sub_100007FEC();
  swift_unknownObjectRelease();

  v1 = sub_100007728();
  v2(v1);

  return _swift_deallocObject(v0);
}

uint64_t sub_100059AC0()
{

  sub_100007934();

  return _swift_deallocObject(v1);
}

uint64_t sub_100059AFC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0);
}

uint64_t sub_100059B34()
{

  sub_100009B7C((v0 + 24));

  return _swift_deallocObject(v0);
}

uint64_t sub_100059B84()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0);
}

uint64_t sub_100059BBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10000691C();
  if (*(*(type metadata accessor for UUID() - 8) + 84) == a2)
  {
    v6 = sub_10000790C();
LABEL_8:

    return sub_100015468(v6, a2, v7);
  }

  if (a2 != 0x7FFFFFFF)
  {
    v7 = type metadata accessor for Date();
    v6 = v3 + *(a3 + 28);
    goto LABEL_8;
  }

  v8 = *(v3 + *(a3 + 24));
  if (v8 >= 0xFFFFFFFF)
  {
    LODWORD(v8) = -1;
  }

  return (v8 + 1);
}

uint64_t sub_100059C84(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_10000691C();
  result = type metadata accessor for UUID();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = v4;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(v4 + *(a4 + 24)) = (a2 - 1);
      return result;
    }

    v9 = type metadata accessor for Date();
    v10 = v4 + *(a4 + 28);
  }

  return sub_10000AF74(v10, a2, a2, v9);
}

uint64_t sub_100059D9C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0);
}

uint64_t sub_100059DE4()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_100059E24()
{

  return _swift_deallocObject(v0);
}

id sub_100059E5C@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 allowContactsOnly];
  *a2 = result;
  return result;
}

uint64_t sub_100059EA4()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_100059EF4()
{
  _Block_release(*(v0 + 32));

  return _swift_deallocObject(v0);
}

uint64_t sub_100059F44()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_100059F7C()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_100059FD0()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_10005A010()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0);
}

uint64_t sub_10005A048()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0);
}

uint64_t sub_10005A080()
{

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0);
}

uint64_t sub_10005A0E8()
{

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0);
}

uint64_t sub_10005A134()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0);
}

uint64_t sub_10005A16C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0);
}

uint64_t sub_10005A1A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_100015468(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_10005A254(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_10000AF74(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_10005A300@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100328BA4();
  *a1 = result;
  return result;
}

uint64_t sub_10005A330()
{
  type metadata accessor for UUID();
  sub_100007FEC();
  sub_100035AC4();

  v2 = sub_100007728();
  v3(v2);

  v4 = sub_100015D74();

  return _swift_deallocObject(v4);
}

uint64_t sub_10005A3EC()
{
  swift_unknownObjectWeakDestroy();
  sub_100006890();

  return _swift_deallocObject(v0);
}

uint64_t sub_10005A420()
{
  type metadata accessor for UUID();
  sub_100007FEC();

  v0 = sub_100007728();
  v1(v0);
  v2 = sub_100015D74();

  return _swift_deallocObject(v2);
}

uint64_t sub_10005A4CC()
{
  type metadata accessor for UUID();
  sub_100007FEC();

  v1 = sub_100007728();
  v2(v1);
  v3 = sub_100015D74();

  return _swift_deallocObject(v3);
}

uint64_t sub_10005A594()
{
  type metadata accessor for UUID();
  sub_100007FEC();
  sub_100035AC4();

  v2 = sub_100007728();
  v3(v2);

  v4 = sub_100015D74();

  return _swift_deallocObject(v4);
}

uint64_t sub_10005A664()
{
  sub_100006890();

  return _swift_deallocObject(v1);
}

uint64_t sub_10005A754()
{
  if (&swift_runtimeSupportsNoncopyableTypes)
  {
    return sub_10026D814(&qword_1006A5D10, &qword_100580A38);
  }

  else
  {
    return sub_10000BA54(&type metadata for ());
  }
}

uint64_t sub_10005A780()
{
  if (&swift_runtimeSupportsNoncopyableTypes)
  {
    return sub_10026D814(&qword_1006A5D18, &qword_100580A40);
  }

  else
  {
    return sub_10000BA54(&type metadata for ());
  }
}

uint64_t sub_10005A7AC()
{
  if (&swift_runtimeSupportsNoncopyableTypes)
  {
    return sub_10026D814(&qword_1006A5DC0, &qword_100580A60);
  }

  else
  {
    return sub_10000BA54(&type metadata for ());
  }
}

uint64_t sub_10005A7D8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0);
}

uint64_t sub_10005A818()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0);
}

uint64_t sub_10005A858()
{
  _Block_release(*(v0 + 40));

  return _swift_deallocObject(v0);
}

uint64_t sub_10005A8A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = sub_100015468(a1, a2, v4);
  if (v5 >= 5)
  {
    return v5 - 4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10005A8F0(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 4);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for UUID();

  return sub_10000AF74(a1, v5, a3, v6);
}

uint64_t sub_10005A950()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0);
}

uint64_t sub_10005A9B4()
{

  v1 = sub_1000081EC();

  return _swift_deallocObject(v1);
}

uint64_t sub_10005A9EC()
{

  v0 = sub_1000081EC();

  return _swift_deallocObject(v0);
}

uint64_t sub_10005AA78()
{
  v1 = type metadata accessor for UUID();
  sub_100007FEC();
  v3 = v2;
  v4 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v3 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0);
}

uint64_t sub_10005AB30()
{
  type metadata accessor for Notification();
  sub_1000080D0();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return _swift_deallocObject(v0);
}

uint64_t sub_10005ABC0()
{
  swift_weakDestroy();
  sub_100006890();

  return _swift_deallocObject(v0);
}

uint64_t sub_10005ABF4()
{

  if (*(v0 + 72))
  {
  }

  return _swift_deallocObject(v0);
}

uint64_t sub_10005AC5C()
{
  swift_unknownObjectRelease();
  if (*(v0 + 32))
  {
  }

  return _swift_deallocObject(v0);
}

uint64_t sub_10005ACA4()
{
  if (*(v0 + 16) >= 2uLL)
  {
  }

  return _swift_deallocObject(v0);
}

uint64_t sub_10005ACF4()
{
  swift_unknownObjectRelease();
  sub_100006890();

  return _swift_deallocObject(v0);
}

uint64_t sub_10005AD6C()
{
  v1 = type metadata accessor for UUID();
  sub_1000083C0();
  v3 = v2;
  v4 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  v6 = (*(v5 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v3 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0);
}

uint64_t sub_10005AE4C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0);
}

uint64_t sub_10005AE84()
{
  v1 = type metadata accessor for UUID();
  sub_1000083C0();
  v3 = v2;
  v4 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v6 = (*(v5 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v3 + 8))(v0 + v4, v1);

  sub_100009B7C((v0 + v7));

  return _swift_deallocObject(v0);
}

uint64_t sub_10005AF7C()
{
  _Block_release(*(v0 + 32));

  return _swift_deallocObject(v0);
}

uint64_t sub_10005AFCC()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0);
}

uint64_t sub_10005B05C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0);
}

uint64_t sub_10005B0E4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0);
}

uint64_t sub_10005B124()
{

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0);
}

uint64_t sub_10005B17C()
{
  v1 = sub_100018F80();

  return _swift_deallocObject(v1);
}

uint64_t sub_10005B1BC()
{

  v1 = sub_100018F80();

  return _swift_deallocObject(v1);
}

uint64_t sub_10005B1F4()
{
  type metadata accessor for Date();
  sub_100007FEC();

  v1 = sub_100007728();
  v2(v1);

  return _swift_deallocObject(v0);
}

uint64_t sub_10005B2B0()
{
  type metadata accessor for Date();
  sub_100007FEC();

  if (*(v0 + 40))
  {
  }

  v1 = sub_10036BE98();
  v2(v1);
  v3 = sub_100006E24();

  return _swift_deallocObject(v3);
}

uint64_t sub_10005B378()
{
  if (*(v0 + 16))
  {
  }

  v1 = sub_10003DBDC();

  return _swift_deallocObject(v1);
}

uint64_t sub_10005B3CC()
{
  type metadata accessor for Date();
  sub_100007FEC();

  if (*(v0 + 24))
  {
  }

  v1 = sub_10036BE98();
  v2(v1);
  v3 = sub_100006E24();

  return _swift_deallocObject(v3);
}

uint64_t sub_10005B494()
{
  sub_10026D814(&qword_1006A6778, &unk_100581B38);
  sub_100007FEC();
  v3 = (*(v2 + 64) + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;

  v4 = sub_100007728();
  v5(v4);

  return _swift_deallocObject(v0);
}

uint64_t sub_10005B564()
{
  sub_100005EF4();
  sub_10026D814(&qword_1006A6778, &unk_100581B38);
  sub_100007FEC();
  v2 = *(v1 + 80);
  v4 = *(v3 + 64);
  v5 = type metadata accessor for Date();
  sub_100007FEC();
  v7 = v6;
  v8 = (((v2 + 16) & ~v2) + v4 + *(v6 + 80)) & ~*(v6 + 80);
  v9 = sub_10036BE98();
  v10(v9);
  (*(v7 + 8))(v0 + v8, v5);
  sub_100005EDC();

  return _swift_deallocObject(v11);
}

uint64_t sub_10005B6A4()
{
  if (*(v0 + 24))
  {
  }

  sub_100022D00();

  return _swift_deallocObject(v1);
}

uint64_t sub_10005B6F8()
{
  if (*(v0 + 24))
  {
  }

  return _swift_deallocObject(v0);
}

uint64_t sub_10005B760()
{
  sub_100007C2C();

  return _swift_deallocObject(v1);
}

uint64_t sub_10005B79C()
{
  type metadata accessor for Date();
  sub_100007FEC();

  if (*(v0 + 32))
  {
  }

  v1 = sub_10036BE98();
  v2(v1);
  v3 = sub_100006E24();

  return _swift_deallocObject(v3);
}

uint64_t sub_10005B85C()
{
  if (*(v0 + 16))
  {
  }

  sub_100007C2C();

  return _swift_deallocObject(v1);
}

uint64_t sub_10005B8A8()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_10005B8E0()
{
  type metadata accessor for Date();
  sub_100008070();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return _swift_deallocObject(v0);
}

uint64_t sub_10005B960()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_10005B9B4()
{
  v1 = sub_100018F80();

  return _swift_deallocObject(v1);
}

uint64_t sub_10005B9F0()
{
  if (*(v0 + 24))
  {
  }

  v1 = sub_10003DBDC();

  return _swift_deallocObject(v1);
}

uint64_t sub_10005BA38()
{
  if (*(v0 + 16))
  {
  }

  v1 = sub_10003DBDC();

  return _swift_deallocObject(v1);
}

uint64_t sub_10005BA80()
{

  v1 = sub_10003DBDC();

  return _swift_deallocObject(v1);
}

uint64_t sub_10005BAC0()
{

  v0 = sub_100018F80();

  return _swift_deallocObject(v0);
}

uint64_t sub_10005BAF8()
{
  type metadata accessor for UUID();
  sub_100008070();
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v2);

  return _swift_deallocObject(v0);
}

uint64_t sub_10005BBD8()
{
  _Block_release(*(v0 + 24));

  v1 = sub_100018F80();

  return _swift_deallocObject(v1);
}

uint64_t sub_10005BC9C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0);
}

uint64_t sub_10005BCD8()
{
  v1 = sub_1000081EC();

  return _swift_deallocObject(v1);
}

uint64_t sub_10005BD14()
{

  v0 = sub_1000081EC();

  return _swift_deallocObject(v0);
}

uint64_t sub_10005BD44()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_10005BD84()
{
  sub_100049B14(*(v0 + 16), *(v0 + 24));

  return _swift_deallocObject(v0);
}

uint64_t sub_10005BDD4()
{

  v1 = *(v0 + 32);
  if (v1 >> 60 != 15)
  {
    sub_100049B14(*(v0 + 24), v1);
  }

  return _swift_deallocObject(v0);
}

uint64_t sub_10005BE3C()
{
  swift_unknownObjectWeakDestroy();
  sub_100006890();

  return _swift_deallocObject(v0);
}

uint64_t sub_10005BE70()
{

  v1 = sub_1000081EC();

  return _swift_deallocObject(v1);
}

uint64_t sub_10005BEA8()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_10005BEF8()
{
  type metadata accessor for UUID();
  sub_100008070();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return _swift_deallocObject(v0);
}

uint64_t sub_10005BF78()
{
  v1 = type metadata accessor for UUID();
  sub_100007FEC();
  v3 = v2;
  v4 = (*(v2 + 80) + 48) & ~*(v2 + 80);

  (*(v3 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0);
}

uint64_t sub_10005C048()
{
  sub_100006890();

  return _swift_deallocObject(v1);
}

uint64_t sub_10005C080()
{

  v0 = sub_1000081EC();

  return _swift_deallocObject(v0);
}

uint64_t sub_10005C0E8()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_10005C168(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchTimeInterval();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_100015468(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 2)
    {
      return ((v8 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_10005C224(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for DispatchTimeInterval();
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_10000AF74(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_10005C308()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_10005C348(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_100015468(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 2)
    {
      return ((v8 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_10005C404(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_10000AF74(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_10005C4D4()
{
  v1 = sub_10026D814(&qword_1006A77C8, &qword_100583118);
  sub_100007FEC();
  v3 = v2;
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  (*(v3 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0);
}

uint64_t sub_10005C598(uint64_t a1, uint64_t a2)
{
  v4 = sub_10026D814(&qword_1006A28B8, &qword_10057D498);

  return sub_100015468(a1, a2, v4);
}

uint64_t sub_10005C5EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10026D814(&qword_1006A28B8, &qword_10057D498);

  return sub_10000AF74(a1, a2, a2, v4);
}

uint64_t sub_10005C644()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_10005C67C()
{

  return _swift_deallocObject(v0);
}

BOOL sub_10005C6D8(void *a1, uint64_t a2)
{
  v3 = *v2 & a2;
  if (v3 != a2)
  {
    *v2 |= a2;
  }

  *a1 = a2;
  return v3 != a2;
}

uint64_t sub_10005C758()
{
  sub_100395FFC((v0 + 16));

  return _swift_deallocObject(v0);
}

char *sub_10005C79C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[8 * a2] <= a3)
  {
    return sub_1000085FC(a3, result);
  }

  return result;
}

uint64_t sub_10005C7BC()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_10005C7F4()
{
  v1 = type metadata accessor for Notification();
  sub_100007FEC();
  v3 = v2;
  v4 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v3 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0);
}

uint64_t sub_10005C8B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for P256.KeyAgreement.PrivateKey();

  return sub_100015468(a1, a2, v4);
}

uint64_t sub_10005C8F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for P256.KeyAgreement.PrivateKey();

  return sub_10000AF74(a1, a2, a2, v4);
}

uint64_t sub_10005C97C()
{
  if (*(v0 + 16))
  {
  }

  return _swift_deallocObject(v0);
}

uint64_t sub_10005C9BC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0);
}

uint64_t sub_10005CA44()
{

  sub_100007C2C();

  return _swift_deallocObject(v0);
}

uint64_t sub_10005CA78()
{
  _Block_release(*(v0 + 40));

  return _swift_deallocObject(v0);
}

uint64_t sub_10005CAC8()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0);
}

uint64_t sub_10005CBD0()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_10005CC20()
{
  type metadata accessor for Notification();
  sub_1000080D0();
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v2);

  return _swift_deallocObject(v0);
}

uint64_t sub_10005CCB0()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_10005CCF0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0);
}

uint64_t sub_10005CDF4()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_10005CEA0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0);
}

uint64_t sub_10005CF18()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_10005CF58()
{
  _Block_release(*(v0 + 16));
  v1 = sub_100008184();

  return _swift_deallocObject(v1);
}

uint64_t sub_10005CF88()
{

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0);
}

uint64_t sub_10005CFC8()
{
  swift_unknownObjectWeakDestroy();
  v0 = sub_100008184();

  return _swift_deallocObject(v0);
}

uint64_t sub_10005CFF8()
{

  v0 = sub_1000081EC();

  return _swift_deallocObject(v0);
}

uint64_t sub_10005D09C()
{
  sub_100006890();

  return _swift_deallocObject(v1);
}

uint64_t sub_10005D0D0()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_10005D108()
{
  swift_unknownObjectWeakDestroy();
  sub_100006890();

  return _swift_deallocObject(v0);
}

void sub_10005D17C(uint64_t a1, uint64_t a2, void (**a3)(void, void))
{
  a3[2](a3, 0);

  _Block_release(a3);
}

uint64_t sub_10005D1C4()
{

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0);
}

uint64_t sub_10005D208()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0);
}

uint64_t sub_10005D26C()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_10005D2AC()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0);
}

uint64_t sub_10005D2E4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0);
}

uint64_t sub_10005D31C()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_10005D354()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0);
}

uint64_t sub_10005D3B4()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_10005D3F4()
{
  v1 = sub_100008184();

  return _swift_deallocObject(v1);
}

uint64_t sub_10005D424()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_10005D464()
{
  _Block_release(*(v0 + 16));
  v1 = sub_100008184();

  return _swift_deallocObject(v1);
}

uint64_t sub_10005D494()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_10005D4E4()
{
  swift_unknownObjectWeakDestroy();
  v0 = sub_100008184();

  return _swift_deallocObject(v0);
}

uint64_t sub_10005D514()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_10005D580()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0);
}

uint64_t sub_10005D5B8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0);
}

uint64_t sub_10005D608()
{

  v1 = sub_1000081EC();

  return _swift_deallocObject(v1);
}

uint64_t sub_10005D640()
{
  v1 = sub_1000081EC();

  return _swift_deallocObject(v1);
}

uint64_t sub_10005D678()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_10005D6B0()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_10005D6F8()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_10005D748()
{

  sub_100007C2C();

  return _swift_deallocObject(v0);
}

uint64_t sub_10005D7A0()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_10005D7F8()
{

  sub_100007C2C();

  return _swift_deallocObject(v1);
}

uint64_t sub_10005D84C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0);
}

uint64_t sub_10005D884()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0);
}

uint64_t sub_10005D8BC()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_10005D914()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_10005D9AC()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0);
}

uint64_t sub_10005DA8C()
{
  v1 = type metadata accessor for UUID();
  sub_100007FEC();
  v3 = v2;
  v4 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v3 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0);
}

uint64_t sub_10005DB44()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_10005DB84()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0);
}

uint64_t sub_10005DBD0()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0);
}

uint64_t sub_10005DC10()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_10005DC9C()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_10005DCEC()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_10005DD24()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_10005DD6C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0);
}

uint64_t sub_10005DDA4()
{

  if (*(v0 + 24) != 1)
  {
  }

  return _swift_deallocObject(v0);
}

uint64_t sub_10005DDF4()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_10005DE38()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0);
}

uint64_t sub_10005DE70()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_10005DEBC()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_10005DF1C()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_10005DF74()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_10005DFC4()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_10005E02C()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_10005E064()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_10005E0A0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0);
}

uint64_t sub_10005E0D8()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0);
}

uint64_t sub_10005E120()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0);
}

uint64_t sub_10005E1F4()
{
  sub_100006890();

  return _swift_deallocObject(v1);
}

uint64_t sub_10005E228()
{
  type metadata accessor for UUID();
  sub_100008070();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return _swift_deallocObject(v0);
}

uint64_t sub_10005E2A8()
{
  type metadata accessor for UUID();
  sub_100008070();
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v2);

  return _swift_deallocObject(v0);
}

uint64_t sub_10005E33C()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_10005E3CC()
{
  _Block_release(*(v0 + 16));
  v1 = sub_100008184();

  return _swift_deallocObject(v1);
}

uint64_t sub_10005E3FC()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_10005E444()
{
  v1 = sub_100008184();

  return _swift_deallocObject(v1);
}

uint64_t sub_10005E474()
{
  swift_unknownObjectWeakDestroy();
  v0 = sub_100008184();

  return _swift_deallocObject(v0);
}

uint64_t sub_10005E4A4()
{

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0);
}

uint64_t sub_10005E4F0()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_10005E540()
{
  sub_100009B7C((v0 + 16));

  sub_100022D00();

  return _swift_deallocObject(v1);
}

uint64_t sub_10005E57C()
{
  type metadata accessor for UUID();
  sub_100008070();
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v2);

  return _swift_deallocObject(v0);
}

uint64_t sub_10005E610()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_10005E650()
{
  v1 = type metadata accessor for Date();
  sub_100007FEC();
  v3 = v2;
  v4 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v3 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0);
}

uint64_t sub_10005E724()
{
  swift_unknownObjectWeakDestroy();
  sub_100006890();

  return _swift_deallocObject(v0);
}

uint64_t sub_10005E758()
{
  v1 = type metadata accessor for UUID();
  sub_100007FEC();
  v3 = v2;
  v4 = (*(v2 + 80) + 48) & ~*(v2 + 80);

  (*(v3 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0);
}

uint64_t sub_10005E818()
{
  _Block_release(*(v0 + 16));
  sub_100006890();

  return _swift_deallocObject(v1);
}

uint64_t sub_10005E84C()
{

  sub_100007C2C();

  return _swift_deallocObject(v0);
}

char *sub_10005E88C()
{
  if (&swift_runtimeSupportsNoncopyableTypes)
  {
    return sub_10026D814(&qword_1006AB618, &qword_100587208);
  }

  else
  {
    return (&type metadata for () + 1);
  }
}

uint64_t sub_10005E8BC()
{
  v1 = type metadata accessor for _ConversationRecordingContext();
  sub_100007FEC();
  v3 = v2;
  v4 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v3 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0);
}

uint64_t sub_10005E984()
{
  v1 = type metadata accessor for _ConversationRecordingContext();
  sub_100007FEC();
  v3 = v2;
  v4 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v3 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0);
}

uint64_t sub_10005EAE4()
{
  if (&swift_runtimeSupportsNoncopyableTypes)
  {
    return sub_10026D814(&qword_1006ABBE0, &qword_100587880);
  }

  else
  {
    return sub_10000BA54(&type metadata for ());
  }
}

uint64_t sub_10005EB10()
{
  if (&swift_runtimeSupportsNoncopyableTypes)
  {
    return sub_10026D814(&qword_1006ABBE8, &qword_100587888);
  }

  else
  {
    return sub_10000BA54(&type metadata for ());
  }
}

uint64_t sub_10005EB3C()
{
  if (&swift_runtimeSupportsNoncopyableTypes)
  {
    return sub_10026D814(&qword_1006ABBF0, &qword_100587890);
  }

  else
  {
    return sub_10000BA54(&type metadata for ());
  }
}

uint64_t sub_10005EB68()
{
  if (&swift_runtimeSupportsNoncopyableTypes)
  {
    return sub_10026D814(&qword_1006ABBF8, &qword_100587898);
  }

  else
  {
    return sub_10000BA54(&type metadata for ());
  }
}

uint64_t sub_10005EBBC()
{
  sub_100006890();

  return _swift_deallocObject(v1);
}

uint64_t sub_10005EBF0()
{
  type metadata accessor for URL();
  sub_100008070();
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (((v2 + *(v1 + 64) + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v2);

  return _swift_deallocObject(v0);
}

uint64_t sub_10005ECB4()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_10005ECEC()
{
  type metadata accessor for URL();
  sub_100007FEC();
  swift_unknownObjectRelease();

  v1 = sub_100007728();
  v2(v1);
  swift_unknownObjectRelease();
  v3 = sub_100015D74();

  return _swift_deallocObject(v3);
}

uint64_t sub_10005EDBC()
{
  type metadata accessor for URL();
  sub_100007FEC();

  swift_unknownObjectRelease();
  v1 = sub_100007728();
  v2(v1);
  v3 = sub_100015D74();

  return _swift_deallocObject(v3);
}

uint64_t sub_10005EE80()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_10005EECC()
{
  v1 = sub_10026D814(&unk_1006A52C0, &unk_10057D930);
  sub_100005EB4(v1);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  v4 = type metadata accessor for URL();
  if (!sub_100015468(v0 + v3, 1, v4))
  {
    sub_10000F49C();
    (*(v5 + 8))(v0 + v3, v4);
  }

  return _swift_deallocObject(v0);
}

uint64_t sub_10005EFC0()
{
  sub_100005EF4();
  v1 = type metadata accessor for UUID();
  sub_100007FEC();
  v3 = v2;
  v4 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v6 = *(v5 + 64);
  v7 = type metadata accessor for URL();
  sub_100007FEC();
  v9 = v8;
  v10 = (v4 + v6 + *(v8 + 80)) & ~*(v8 + 80);

  (*(v3 + 8))(v0 + v4, v1);
  (*(v9 + 8))(v0 + v10, v7);
  sub_100005EDC();

  return _swift_deallocObject(v11);
}

uint64_t sub_10005F0E8()
{
  v1 = sub_10026D814(&unk_1006A52C0, &unk_10057D930);
  sub_100005EB4(v1);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v19 = *(v4 + 64);
  v5 = type metadata accessor for UUID();
  sub_100007FEC();
  v7 = v6;
  v8 = *(v6 + 80);
  v10 = *(v9 + 64);
  v11 = type metadata accessor for URL();
  sub_100007FEC();
  v13 = v12;
  v14 = *(v12 + 80);
  if (!sub_100015468(v0 + v3, 1, v11))
  {
    (*(v13 + 8))(v0 + v3, v11);
  }

  v15 = (v3 + v19 + v8) & ~v8;
  v16 = (v10 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v7 + 8))(v0 + v15, v5);

  (*(v13 + 8))(v0 + ((v16 + v14 + 8) & ~v14), v11);
  v17 = sub_100015D74();

  return _swift_deallocObject(v17);
}

uint64_t sub_10005F2D0()
{
  type metadata accessor for UUID();
  sub_100007FEC();
  v3 = (*(v2 + 64) + ((*(v1 + 80) + 24) & ~*(v1 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;

  v4 = sub_100007728();
  v5(v4);

  v6 = sub_100015D74();

  return _swift_deallocObject(v6);
}

uint64_t sub_10005F3B0()
{
  swift_unknownObjectWeakDestroy();
  sub_100006890();

  return _swift_deallocObject(v0);
}

uint64_t sub_10005F50C()
{
  _Block_release(*(v0 + 32));

  sub_100008BA8();

  return _swift_deallocObject(v1);
}

uint64_t sub_10005F554()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_10005F5CC()
{
  sub_100009B7C((v0 + 16));

  return _swift_deallocObject(v0);
}

uint64_t sub_10005F60C()
{
  type metadata accessor for Notification();
  sub_1000080D0();
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v2);

  return _swift_deallocObject(v0);
}

uint64_t sub_10005F69C()
{
  sub_10026D814(&qword_1006A28C0, &unk_10057D4B0);
  sub_1000080D0();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return _swift_deallocObject(v0);
}

uint64_t sub_10005F724()
{
  sub_100006890();

  return _swift_deallocObject(v1);
}

uint64_t sub_10005F758()
{
  v1 = type metadata accessor for Notification();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return _swift_deallocObject(v0);
}

uint64_t sub_10005F7F4()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_10005F83C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

uint64_t sub_10005F880()
{
  sub_100006890();

  return _swift_deallocObject(v1);
}

uint64_t sub_10005F8B4()
{

  sub_100008BA8();

  return _swift_deallocObject(v1);
}

uint64_t sub_10005F8F8()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_10005F950()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_10005F9B0()
{
  sub_100005EF4();
  v1 = type metadata accessor for URL();
  sub_100007FEC();
  v3 = v2;
  v4 = *(v2 + 80);
  v6 = (v4 + 32) & ~v4;
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  v9 = *(v3 + 8);
  v9(v0 + v6, v1);

  if (*(v0 + v8))
  {
  }

  v9(v0 + ((v4 + ((((v8 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v4), v1);
  sub_100005EDC();

  return _swift_deallocObject(v10);
}

uint64_t sub_10005FAE8()
{
  type metadata accessor for URL();
  sub_100008070();
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v2);
  if (*(v0 + v3))
  {
  }

  return _swift_deallocObject(v0);
}

uint64_t sub_10005FB88()
{
  type metadata accessor for URL();
  sub_100008070();
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v2);

  if (*(v0 + v3))
  {
  }

  return _swift_deallocObject(v0);
}

uint64_t sub_10005FC3C()
{
  v1 = sub_10026D814(&qword_1006A5360, &qword_10057CB80);
  sub_100005EB4(v1);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v5 = *(v4 + 64);
  v6 = type metadata accessor for URL();
  sub_100007FEC();
  v8 = v7;
  v9 = *(v7 + 80);
  v11 = (v5 + v9 + v3 + 2) & ~v9;
  v12 = *(v10 + 64) + 7;
  v13 = (v9 + ((((v12 + v11) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v9;
  v17 = (v12 + v13) & 0xFFFFFFFFFFFFFFF8;

  v14 = type metadata accessor for Locale();
  if (!sub_100015468(v0 + v3, 1, v14))
  {
    (*(*(v14 - 8) + 8))(v0 + v3, v14);
  }

  v15 = *(v8 + 8);
  v15(v0 + v11, v6);

  swift_unknownObjectRelease();
  v15(v0 + v13, v6);

  if (*(v0 + ((v17 + 15) & 0xFFFFFFFFFFFFFFF8)))
  {
  }

  return _swift_deallocObject(v0);
}

uint64_t sub_10005FE4C()
{
  v1 = type metadata accessor for URL();
  sub_100007FEC();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 64) & ~v4;
  v7 = *(v6 + 64);
  v8 = (v4 + ((v7 + v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v4;
  v9 = sub_10026D814(&qword_1006A5360, &qword_10057CB80);
  sub_100005EB4(v9);
  v12 = (v7 + *(v10 + 80) + v8 + 2) & ~*(v10 + 80);
  v16 = (*(v11 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  v13 = *(v3 + 8);
  v13(v0 + v5, v1);

  v13(v0 + v8, v1);
  v14 = type metadata accessor for Locale();
  if (!sub_100015468(v0 + v12, 1, v14))
  {
    (*(*(v14 - 8) + 8))(v0 + v12, v14);
  }

  if (*(v0 + ((v16 + 15) & 0xFFFFFFFFFFFFFFF8)))
  {
  }

  return _swift_deallocObject(v0);
}

uint64_t sub_100060058()
{
  type metadata accessor for URL();
  sub_100007FEC();
  v2 = *(v1 + 80);
  if (*(v0 + 16))
  {
  }

  v3 = sub_10046A990(v2 + 33);
  v4(v3);

  return _swift_deallocObject(v0);
}

uint64_t sub_10006010C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0);
}

uint64_t sub_100060158(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Locale();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1 + *(a3 + 20);

    return sub_100015468(v8, a2, v7);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_10006020C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Locale();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1 + *(a4 + 20);

    return sub_10000AF74(v10, a2, a2, v9);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1000602FC()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_10006033C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0);
}

uint64_t sub_100060374()
{
  v1 = (type metadata accessor for DisclosureRequest(0) - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);

  v3 = v1[7];
  type metadata accessor for Locale();
  sub_100008070();
  (*(v4 + 8))(v0 + v2 + v3);

  sub_100009B7C((v0 + v2 + v1[11]));

  return _swift_deallocObject(v0);
}

char *sub_100060528(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return sub_1000085FC(a3, result);
  }

  return result;
}

uint64_t sub_1000609B0(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v32 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v32 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v32 & 0x7F) << v5;
        if ((v32 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        v28 = PBReaderReadString();
        v29 = *(a1 + 16);
        *(a1 + 16) = v28;
      }

      else if (v13 == 2)
      {
        v21 = 0;
        v22 = 0;
        v23 = 0;
        *(a1 + 28) |= 1u;
        while (1)
        {
          v34 = 0;
          v24 = [a2 position] + 1;
          if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
          {
            v26 = [a2 data];
            [v26 getBytes:&v34 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v23 |= (v34 & 0x7F) << v21;
          if ((v34 & 0x80) == 0)
          {
            break;
          }

          v21 += 7;
          v11 = v22++ >= 9;
          if (v11)
          {
            v27 = 0;
            goto LABEL_44;
          }
        }

        v27 = [a2 hasError] ? 0 : v23;
LABEL_44:
        *(a1 + 8) = v27;
      }

      else if (v13 == 1)
      {
        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 28) |= 2u;
        while (1)
        {
          v33 = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:&v33 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v33 & 0x7F) << v14;
          if ((v33 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_48;
          }
        }

        v20 = [a2 hasError] ? 0 : v16;
LABEL_48:
        *(a1 + 24) = v20;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v31 = [a2 position];
    }

    while (v31 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_100061460(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v23 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v23 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v23 & 0x7F) << v5;
        if ((v23 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v20 = PBReaderReadString();
        if (v20)
        {
          [a1 addPseudonym:v20];
        }
      }

      else if ((v12 >> 3) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 20) |= 1u;
        while (1)
        {
          v24 = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v24 & 0x7F) << v13;
          if ((v24 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_36;
          }
        }

        v19 = [a2 hasError] ? 0 : v15;
LABEL_36:
        *(a1 + 16) = v19;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v22 = [a2 position];
    }

    while (v22 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_100061E8C(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v19 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v19 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v19 & 0x7F) << v5;
        if ((v19 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 1)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v13 = &OBJC_IVAR___CSDMessagingEncryptedConversationMessage__conversationMessageBytes;
LABEL_21:
        v14 = PBReaderReadData();
        v15 = *v13;
        v16 = *(a1 + v15);
        *(a1 + v15) = v14;

        goto LABEL_23;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_23:
      v17 = [a2 position];
      if (v17 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v13 = &OBJC_IVAR___CSDMessagingEncryptedConversationMessage__publicKey;
    goto LABEL_21;
  }

  return [a2 hasError] ^ 1;
}

id sub_100063F24(CSDMessagingConversationLink *self, SEL a2)
{
  v7.receiver = self;
  v7.super_class = CSDMessagingConversationLink;
  v3 = [(CSDMessagingConversationLink *)&v7 description];
  v4 = [(CSDMessagingConversationLink *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

uint64_t sub_100064394(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v42) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v42 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v42 & 0x7F) << v5;
        if ((v42 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 6)
      {
        if (v13 > 9)
        {
          switch(v13)
          {
            case 0xA:
              v30 = objc_alloc_init(CSDMessagingConversationLinkGeneratorDescriptor);
              objc_storeStrong((a1 + 24), v30);
              v42 = 0;
              v43 = 0;
              if (!PBReaderPlaceMark() || !sub_1001B2458(v30, a2))
              {
LABEL_85:

                return 0;
              }

              goto LABEL_60;
            case 0xB:
              v14 = PBReaderReadString();
              v15 = 56;
              goto LABEL_69;
            case 0xC:
              v23 = 0;
              v24 = 0;
              v25 = 0;
              *(a1 + 100) |= 4u;
              while (1)
              {
                LOBYTE(v42) = 0;
                v26 = [a2 position] + 1;
                if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
                {
                  v28 = [a2 data];
                  [v28 getBytes:&v42 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v25 |= (v42 & 0x7F) << v23;
                if ((v42 & 0x80) == 0)
                {
                  break;
                }

                v23 += 7;
                v11 = v24++ >= 9;
                if (v11)
                {
                  v29 = 0;
                  goto LABEL_77;
                }
              }

              if ([a2 hasError])
              {
                v29 = 0;
              }

              else
              {
                v29 = v25;
              }

LABEL_77:
              *(a1 + 48) = v29;
              goto LABEL_83;
          }
        }

        else
        {
          switch(v13)
          {
            case 7:
              v30 = objc_alloc_init(CSDMessagingHandle);
              objc_storeStrong((a1 + 64), v30);
LABEL_55:
              v42 = 0;
              v43 = 0;
              if (!PBReaderPlaceMark() || !sub_1000D1450(v30, a2))
              {
                goto LABEL_85;
              }

LABEL_60:
              PBReaderRecallMark();

              goto LABEL_83;
            case 8:
              *(a1 + 100) |= 2u;
              v42 = 0;
              v31 = [a2 position] + 8;
              if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 8, v32 <= objc_msgSend(a2, "length")))
              {
                v36 = [a2 data];
                [v36 getBytes:&v42 range:{objc_msgSend(a2, "position"), 8}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
              }

              else
              {
                [a2 _setError];
              }

              v37 = v42;
              v38 = 16;
              goto LABEL_82;
            case 9:
              v16 = 0;
              v17 = 0;
              v18 = 0;
              *(a1 + 100) |= 8u;
              while (1)
              {
                LOBYTE(v42) = 0;
                v19 = [a2 position] + 1;
                if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
                {
                  v21 = [a2 data];
                  [v21 getBytes:&v42 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v18 |= (v42 & 0x7F) << v16;
                if ((v42 & 0x80) == 0)
                {
                  break;
                }

                v16 += 7;
                v11 = v17++ >= 9;
                if (v11)
                {
                  LOBYTE(v22) = 0;
                  goto LABEL_73;
                }
              }

              v22 = (v18 != 0) & ~[a2 hasError];
LABEL_73:
              *(a1 + 96) = v22;
              goto LABEL_83;
          }
        }
      }

      else if (v13 > 3)
      {
        switch(v13)
        {
          case 4:
            v30 = objc_alloc_init(CSDMessagingHandle);
            [a1 addInvitedHandles:v30];
            goto LABEL_55;
          case 5:
            *(a1 + 100) |= 1u;
            v42 = 0;
            v33 = [a2 position] + 8;
            if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 8, v34 <= objc_msgSend(a2, "length")))
            {
              v39 = [a2 data];
              [v39 getBytes:&v42 range:{objc_msgSend(a2, "position"), 8}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
            }

            else
            {
              [a2 _setError];
            }

            v37 = v42;
            v38 = 8;
LABEL_82:
            *(a1 + v38) = v37;
            goto LABEL_83;
          case 6:
            v14 = PBReaderReadString();
            v15 = 32;
            goto LABEL_69;
        }
      }

      else
      {
        switch(v13)
        {
          case 1:
            v14 = PBReaderReadString();
            v15 = 80;
            goto LABEL_69;
          case 2:
            v14 = PBReaderReadData();
            v15 = 88;
            goto LABEL_69;
          case 3:
            v14 = PBReaderReadData();
            v15 = 72;
LABEL_69:
            v35 = *(a1 + v15);
            *(a1 + v15) = v14;

            goto LABEL_83;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_83:
      v40 = [a2 position];
    }

    while (v40 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_1000665FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10006661C(uint64_t a1, void *a2)
{
  activity = a2;
  state = xpc_activity_get_state(activity);
  if (state == 2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained sendDualSIMRingtoneMetrics];
  }

  else
  {
    if (state)
    {
      goto LABEL_6;
    }

    WeakRetained = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(WeakRetained, XPC_ACTIVITY_PRIORITY, XPC_ACTIVITY_PRIORITY_MAINTENANCE);
    xpc_dictionary_set_BOOL(WeakRetained, XPC_ACTIVITY_REPEATING, 1);
    xpc_dictionary_set_int64(WeakRetained, XPC_ACTIVITY_DELAY, XPC_ACTIVITY_INTERVAL_1_DAY);
    xpc_dictionary_set_int64(WeakRetained, XPC_ACTIVITY_GRACE_PERIOD, XPC_ACTIVITY_INTERVAL_1_DAY);
    xpc_activity_set_criteria(activity, WeakRetained);
  }

LABEL_6:
}

id sub_100066714(uint64_t a1, void *a2)
{
  v3 = sub_100004778(a1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Received _TLTonePreferencesDidChangeNotification", v5, 2u);
  }

  return [a2 handleTLTonePreferencesDidChangeNotification];
}

void sub_100067600(uint64_t a1)
{
  v1 = sub_100004778(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v24 = "[CSDDualSIMRingtoneHelper sendDualSIMRingtoneMetrics]_block_invoke";
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "%s: Logging dual SIM metric event", buf, 0xCu);
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v2 = [*(a1 + 32) subscriptionsInUse];
  v3 = [v2 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v20;
    v7 = &stru_100631E68;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v20 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v9 = *(*(&v19 + 1) + 8 * i);
        if (([v9 isSimHidden] & 1) == 0 && (objc_msgSend(v9, "isSimDataOnly") & 1) == 0)
        {
          v10 = [v9 labelID];
          v11 = [@"TLAlertTopicIncomingCall" stringByAppendingString:v10];
          v12 = +[TLToneManager sharedToneManager];
          v13 = [v12 currentToneIdentifierForAlertType:*(*(a1 + 32) + 48) topic:v11];

          if ([(__CFString *)v7 length])
          {
            v5 |= [(__CFString *)v7 isEqualToString:v13];
          }

          else
          {
            v14 = v13;

            v7 = v14;
          }
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v4);
  }

  else
  {
    LOBYTE(v5) = 0;
    v7 = &stru_100631E68;
  }

  v16 = sub_100004778(v15);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = [NSNumber numberWithBool:v5 & 1];
    *buf = 136315394;
    v24 = "[CSDDualSIMRingtoneHelper sendDualSIMRingtoneMetrics]_block_invoke";
    v25 = 2112;
    v26 = v17;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%s: Logging dual SIM metric event hasDifferentRingtones:%@", buf, 0x16u);
  }

  [CSDAnalyticsReporter sendDualSIMRingtoneStateEvent:v5 & 1];
}

void sub_100067A5C(uint64_t a1)
{
  v1 = [objc_alloc(*(a1 + 40)) initWithQueue:*(a1 + 32)];
  v2 = qword_1006ACAB0;
  qword_1006ACAB0 = v1;
}

void sub_1000682A0(uint64_t a1)
{
  v4 = [*(a1 + 32) object];
  v2 = [v4 state];
  v3 = *(a1 + 40);
  if (v2 == 5)
  {
    [v3 endTransactionIfNecessaryForObject:v4];
  }

  else
  {
    [v3 beginTransactionIfNecessaryForObject:v4 withReason:@"handleSessionStateChanged"];
  }
}

CSDAVConferenceProvider *__cdecl sub_100068F14(id a1, NSUUID *a2, OS_dispatch_queue *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = [[CSDAVConferenceProvider alloc] initWithClientUUID:v5 serialQueue:v4];

  return v6;
}

void sub_100069120(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  v3 = sub_100004778(a1);
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2 != 1)
  {
    if (v4)
    {
      v45 = *(*(a1 + 32) + 16);
      *buf = 67109120;
      LODWORD(v49) = v45;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[WARN] Attempted to prepare conference which has already started preparing (state=%d)", buf, 8u);
    }

    goto LABEL_14;
  }

  if (v4)
  {
    v5 = *(a1 + 40);
    *buf = 138412290;
    v49 = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Preparing conference with configuration: %@", buf, 0xCu);
  }

  [*(a1 + 32) setState:2];
  [*(a1 + 32) setConfiguration:*(a1 + 40)];
  v6 = [*(a1 + 32) conferenceProviderCreationBlock];
  v7 = [*(a1 + 32) configuration];
  v8 = [v7 clientUUID];
  v9 = [*(a1 + 32) queue];
  v10 = (v6)[2](v6, v8, v9);
  [*(a1 + 32) setConferenceProvider:v10];

  v11 = [*(a1 + 32) conferenceProvider];

  if (!v11)
  {
    v46 = sub_100004778(v12);
    if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      sub_100471260();
    }

    goto LABEL_19;
  }

  v13 = *(a1 + 32);
  v14 = [v13 conferenceProvider];
  [v14 setDelegate:v13];

  v15 = [*(a1 + 40) deviceRole];
  v16 = sub_100004778(v15);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    LODWORD(v49) = v15;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Initializing new callID with device role %d", buf, 8u);
  }

  v17 = [*(a1 + 32) conferenceProvider];
  v18 = [*(a1 + 40) reportingHierarchyToken];
  v19 = [v17 initializeNewCallWithDeviceRole:v15 reportingHierarchyToken:v18];

  if (!v19)
  {
    v46 = sub_100004778(v20);
    if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      sub_1004711EC();
    }

LABEL_19:

    [*(a1 + 32) _setEndedWithReason:1 error:0];
    return;
  }

  v21 = objc_alloc_init(TUMediaTokens);
  [*(a1 + 32) setMediaTokens:v21];

  v22 = [*(a1 + 32) mediaTokens];
  [v22 setCombinedAudioStreamToken:v19];

  v23 = [*(a1 + 32) conferenceProvider];
  v24 = [v23 audioUplinkToken];
  v25 = [*(a1 + 32) mediaTokens];
  [v25 setUplinkStreamToken:v24];

  v26 = [*(a1 + 32) conferenceProvider];
  v27 = [v26 audioDownlinkToken];
  v28 = [*(a1 + 32) mediaTokens];
  [v28 setDownlinkStreamToken:v27];

  v29 = [*(a1 + 40) requiresInviteDictionary];
  v30 = *(a1 + 32);
  if (v29)
  {
    v31 = [v30 conferenceProvider];
    [*(a1 + 40) localPortraitAspectRatio];
    v33 = v32;
    v35 = v34;
    [*(a1 + 40) localLandscapeAspectRatio];
    [v31 setLocalPortraitAspectRatio:v33 localLandscapeAspectRatio:{v35, v36, v37}];

    v47[0] = _NSConcreteStackBlock;
    v47[1] = 3221225472;
    v47[2] = sub_100069644;
    v47[3] = &unk_100619E30;
    v47[4] = *(a1 + 32);
    v3 = objc_retainBlock(v47);
    v38 = sub_100004778(v3);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      v39 = [*(a1 + 40) remoteInviteDictionary];
      *buf = 138412290;
      v49 = v39;
      _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "Fetching local invite dictionary using remote invite dictionary %@", buf, 0xCu);
    }

    v40 = [*(a1 + 32) conferenceProvider];
    v41 = [*(a1 + 32) conferenceProvider];
    v42 = [v41 callID];
    v43 = [*(a1 + 40) remoteInviteDictionary];
    v44 = [*(a1 + 32) queue];
    [v40 inviteDictionaryForCallID:v42 remoteInviteDictionary:v43 nonCellularCandidateTimeout:v3 block:v44 queue:0.0];

LABEL_14:
    return;
  }

  [v30 setState:3];
  [*(a1 + 32) _sendDelegateFinishedPreparing];
}

void sub_100069644(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_100004778(v6);
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1004712A0();
    }

    [*(a1 + 32) _setEndedWithReason:4 error:v6];
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = v5;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Fetched local invite dictionary: %@", &v9, 0xCu);
    }

    [*(a1 + 32) setLocalInviteDictionary:v5];
    [*(a1 + 32) setState:3];
    [*(a1 + 32) _sendDelegateFinishedPreparing];
  }
}

void sub_1000698B8(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) conferenceProvider];

  if (!v3)
  {
    v15 = sub_100004778(v4);
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_20;
    }

    *buf = 0;
    v16 = "[WARN] Conference does not exist";
    v17 = v15;
    v18 = 2;
LABEL_11:
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, v16, buf, v18);
    goto LABEL_20;
  }

  v5 = *v2;
  if (*(*v2 + 4) != 3)
  {
    v15 = sub_100004778(v5);
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_20;
    }

    v19 = *(*v2 + 4);
    *buf = 67109120;
    LODWORD(v34) = v19;
    v16 = "[WARN] Attempted to start conference which has not been prepared (state=%d)";
    v17 = v15;
    v18 = 8;
    goto LABEL_11;
  }

  [v5 setState:4];
  v6 = [*(a1 + 40) type];
  if (v6 == 1)
  {
    v20 = [*(a1 + 32) conferenceProvider];
    v21 = [*(a1 + 32) configuration];
    v22 = [v21 isCaller];
    v23 = [*(a1 + 32) configuration];
    v24 = [v23 capabilities];
    v25 = [*(a1 + 40) socket];
    v32 = 0;
    LODWORD(v22) = [v20 startConnectionAsCaller:v22 capabilities:v24 socket:v25 error:&v32];
    v15 = v32;

    if (v22)
    {
      goto LABEL_13;
    }

LABEL_17:
    v30 = sub_100004778(v6);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      sub_10047131C(v2, v15, v30);
    }

    [*v2 _setEndedWithReason:1 error:v15];
    goto LABEL_20;
  }

  if (v6 != 2)
  {
    v15 = 0;
    goto LABEL_17;
  }

  v7 = [*(a1 + 32) conferenceProvider];
  v8 = [*(a1 + 32) configuration];
  v9 = [v8 isCaller];
  v10 = [*(a1 + 32) configuration];
  v11 = [v10 remoteInviteDictionary];
  v12 = [*(a1 + 32) configuration];
  v13 = [v12 capabilities];
  v14 = [*(a1 + 40) destination];
  v31 = 0;
  LOBYTE(v9) = [v7 startConnectionAsCaller:v9 remoteInviteDictionary:v11 capabilities:v13 destination:v14 error:&v31];
  v15 = v31;

  if ((v9 & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_13:
  v26 = sub_100004778(v6);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    v27 = [*v2 configuration];
    v28 = +[NSDate date];
    [v28 timeIntervalSince1970];
    *buf = 138412546;
    v34 = v27;
    v35 = 2048;
    v36 = v29;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Successfully started connection with configuration=%@ (timestamp: %f)", buf, 0x16u);
  }

  [*v2 _setUpDidStartTimeout];
LABEL_20:
}

id sub_100069F00(uint64_t a1)
{
  v2 = sub_100004778(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) conferenceProvider];
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Calling stop on conference %@", &v6, 0xCu);
  }

  v4 = [*(a1 + 32) conferenceProvider];
  [v4 stop];

  return [*(a1 + 32) setCapturingLocalVideo:0];
}

void sub_10006A06C(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[4] > 3)
  {
    v5 = sub_100004778(v2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      v7 = 138412290;
      v8 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[WARN] Attempted to cancel a conference that has already started connecting: %@", &v7, 0xCu);
    }
  }

  else
  {
    v3 = sub_100004778([v2 setState:6]);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [*(a1 + 32) conferenceProvider];
      v7 = 138412290;
      v8 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Calling cancel on conference %@", &v7, 0xCu);
    }

    v5 = [*(a1 + 32) conferenceProvider];
    [v5 cancel];
  }
}

void sub_10006A264(uint64_t a1)
{
  v2 = [*(a1 + 32) conferenceProvider];
  [v2 sendData:*(a1 + 40)];
}

void sub_10006A390(uint64_t a1)
{
  v2 = [*(a1 + 32) conferenceProvider];
  [v2 setPeerReportingIdentifier:*(a1 + 40) sessionIdentifier:*(a1 + 48)];
}

void sub_10006A5D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10006A708(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10006A720(uint64_t a1)
{
  v5 = [*(a1 + 32) configuration];
  v2 = [v5 remoteInviteDictionary];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_10006A83C(uint64_t a1)
{
  v2 = sub_100004778(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) configuration];
    v4 = [v3 remoteInviteDictionary];
    v5 = *(a1 + 40);
    v8 = 138412546;
    v9 = v4;
    v10 = 2112;
    v11 = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Setting remote invite dictionary from %@ to %@", &v8, 0x16u);
  }

  v6 = *(a1 + 40);
  v7 = [*(a1 + 32) configuration];
  [v7 setRemoteInviteDictionary:v6];
}

void sub_10006A9F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10006AA10(uint64_t a1)
{
  v2 = [*(a1 + 32) conferenceProvider];
  *(*(*(a1 + 40) + 8) + 24) = [v2 callID];
}

void sub_10006AB2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10006AB44(uint64_t a1)
{
  v2 = [*(a1 + 32) configuration];
  *(*(*(a1 + 40) + 8) + 24) = [v2 isCaller];
}

void sub_10006AC38(uint64_t a1)
{
  v2 = sub_100004778(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) configuration];
    v4 = [v3 isCaller];
    v5 = *(a1 + 40);
    v8[0] = 67109376;
    v8[1] = v4;
    v9 = 1024;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Setting caller from %d to %d", v8, 0xEu);
  }

  v6 = *(a1 + 40);
  v7 = [*(a1 + 32) configuration];
  [v7 setCaller:v6];
}

void sub_10006AE30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10006AFE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10006B198(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10006B30C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10006B58C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10006B678(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10006B690(uint64_t a1)
{
  result = [*(a1 + 32) _isMuted];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

id sub_10006B7F0(uint64_t a1)
{
  if ([*(a1 + 32) isAudioInjectionAllowed] && (objc_msgSend(*(a1 + 32), "featureFlags"), v2 = objc_claimAutoreleasedReturnValue(), v3 = objc_msgSend(v2, "relayCallRecordingEnabled"), v2, v3))
  {
    v5 = sub_100004778(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 40);
      v11 = 67109120;
      v12 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Setting expected uplink muted to %d instead of muting conference because injection is allowed", &v11, 8u);
    }

    return [*(a1 + 32) setExpectedUplinkMuted:*(a1 + 40)];
  }

  else
  {
    result = [*(a1 + 32) _isMuted];
    if (*(a1 + 40) != result)
    {
      v8 = sub_100004778(result);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = *(a1 + 40);
        v10 = [*(a1 + 32) conferenceProvider];
        v11 = 67109378;
        v12 = v9;
        v13 = 2112;
        v14 = v10;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Setting microphoneMuted to %d for %@", &v11, 0x12u);
      }

      [*(a1 + 32) _setMuted:*(a1 + 40)];
      return [*(a1 + 32) _sendDelegateMutedChanged];
    }
  }

  return result;
}

void sub_10006BA84(uint64_t a1)
{
  v2 = [*(a1 + 32) featureFlags];
  v3 = [v2 relayCallRecordingEnabled];

  if (v3)
  {
    v4 = [*(a1 + 32) isAudioInjectionAllowed];
    if (*(a1 + 40) != v4)
    {
      v5 = sub_100004778(v4);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = *(a1 + 40);
        v10 = 67109120;
        v11 = v6;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Setting audio injection allowed to %d", &v10, 8u);
      }

      if (*(a1 + 40) == 1)
      {
        [*(a1 + 32) setExpectedUplinkMuted:{objc_msgSend(*(a1 + 32), "_isMuted")}];
        [*(a1 + 32) _setMuted:0];
        *(*(a1 + 32) + 8) = *(a1 + 40);
      }

      else
      {
        v8 = sub_100004778(v7);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v9 = [*(a1 + 32) expectedUplinkMuted];
          v10 = 67109120;
          v11 = v9;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Resetting uplink mute to exected uplink muted %d", &v10, 8u);
        }

        *(*(a1 + 32) + 8) = *(a1 + 40);
        [*(a1 + 32) setMuted:{objc_msgSend(*(a1 + 32), "expectedUplinkMuted")}];
      }
    }
  }
}

void sub_10006BCDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10006BCF4(uint64_t a1)
{
  result = [*(a1 + 32) _isSendingAudio];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_10006BE1C(uint64_t a1)
{
  v2 = [*(a1 + 32) conferenceProvider];
  if (v2)
  {
    v3 = v2;
    v4 = [*(a1 + 32) _isSendingAudio];
    v5 = *(a1 + 40);

    if (v5 != v4)
    {
      v7 = sub_100004778(v6);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = *(a1 + 40);
        v11[0] = 67109120;
        v11[1] = v8;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Setting sendingAudio to %d", v11, 8u);
      }

      v9 = *(a1 + 40);
      v10 = [*(a1 + 32) conferenceProvider];
      [v10 setAudioPaused:(v9 & 1) == 0];
    }
  }
}

void sub_10006BFE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10006BFF8(uint64_t a1)
{
  result = [*(a1 + 32) _isSendingAudio];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_10006C120(uint64_t a1)
{
  v2 = [*(a1 + 32) conferenceProvider];
  if (v2)
  {
    v3 = v2;
    v4 = [*(a1 + 32) _isSendingAudioData];
    v5 = *(a1 + 40);

    if (v5 != v4)
    {
      v7 = sub_100004778(v6);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = *(a1 + 40);
        v11[0] = 67109120;
        v11[1] = v8;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Setting sendingAudioData to %d", v11, 8u);
      }

      v9 = *(a1 + 40);
      v10 = [*(a1 + 32) conferenceProvider];
      [v10 setSendingAudio:v9];
    }
  }
}

void sub_10006C2E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10006C3CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10006C3E4(uint64_t a1)
{
  result = [*(a1 + 32) _isSendingVideo];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_10006C554(uint64_t a1)
{
  v2 = [*(a1 + 32) _isSendingVideo];
  v3 = *(a1 + 32);
  if (*(a1 + 40) != v2)
  {
    v18 = [v3 conferenceProvider];
    if (v18)
    {
      v19 = v18;
      v20 = [*(a1 + 32) _isSendingVideoExpected];

      if (!v20)
      {
        v21 = sub_100004778(v18);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          v22 = *(a1 + 40) ^ 1;
          v27 = 67109120;
          v28 = v22;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Setting conferenceProvider videoPaused to %d", &v27, 8u);
        }

        v23 = *(a1 + 40);
        v24 = [*(a1 + 32) conferenceProvider];
        [v24 setVideoPaused:(v23 & 1) == 0];
      }
    }

    v25 = sub_100004778(v18);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v26 = *(a1 + 40);
      v27 = 67109120;
      v28 = v26;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Setting sendingVideo to %d", &v27, 8u);
    }

    v17 = [NSNumber numberWithBool:*(a1 + 40)];
    [*(a1 + 32) setSendingVideoExpected:v17];
    goto LABEL_15;
  }

  if (v3[4] <= 3)
  {
    v4 = [v3 configuration];
    v5 = [v4 capabilities];
    v6 = [v5 isVideoPausedToStart];
    v7 = *(a1 + 40);

    if (v7 == v6)
    {
      v9 = sub_100004778(v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = *(a1 + 32);
        v11 = v10[4];
        v12 = [v10 configuration];
        v13 = [v12 capabilities];
        v14 = [v13 isVideoPausedToStart];
        v15 = *(a1 + 40) ^ 1;
        v27 = 67109632;
        v28 = v11;
        v29 = 1024;
        v30 = v14;
        v31 = 1024;
        v32 = v15;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "State is %d, updating isVideoPausedToStart from %d to %d", &v27, 0x14u);
      }

      v16 = [*(a1 + 32) configuration];
      v17 = [v16 capabilities];

      [v17 setIsVideoPausedToStart:(*(a1 + 40) & 1) == 0];
      [*(a1 + 32) updateCapabilities:v17];
LABEL_15:
    }
  }
}

void sub_10006C918(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10006C930(uint64_t a1)
{
  v2 = [*(a1 + 32) _isSendingVideoExpected];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_10006CAFC(uint64_t a1)
{
  v2 = sub_100004778(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) configuration];
    v4 = [v3 capabilities];
    v5 = *(a1 + 40);
    v10 = 138412546;
    v11 = v4;
    v12 = 2112;
    v13 = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Updating capabilities from: %@ to %@", &v10, 0x16u);
  }

  v6 = *(a1 + 40);
  v7 = [*(a1 + 32) configuration];
  [v7 setCapabilities:v6];

  v8 = [*(a1 + 32) conferenceProvider];

  if (v8)
  {
    v9 = [*(a1 + 32) conferenceProvider];
    [v9 updateCapabilities:*(a1 + 40)];
  }
}

void sub_10006CCEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10006CDFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__n128 sub_10006CE14(uint64_t a1)
{
  result = *(*(a1 + 32) + 152);
  *(*(*(a1 + 40) + 8) + 32) = result;
  return result;
}

void sub_10006CEC4(uint64_t a1)
{
  v2 = [*(a1 + 32) conferenceProvider];
  if (v2)
  {
    v3 = v2;
    v4 = NSEqualSizes(*(*(a1 + 32) + 152), *(a1 + 40));

    if (!v4)
    {
      v6 = sub_100004778(v5);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = NSStringFromSize(*(*(a1 + 32) + 152));
        v8 = NSStringFromSize(*(a1 + 40));
        v10 = 138412546;
        v11 = v7;
        v12 = 2112;
        v13 = v8;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Setting remoteVideoPresentationSize from %@ to %@", &v10, 0x16u);
      }

      *(*(a1 + 32) + 152) = *(a1 + 40);
      v9 = [*(a1 + 32) conferenceProvider];
      [v9 setRemoteVideoPresentationSize:{*(a1 + 40), *(a1 + 48)}];
    }
  }
}

void sub_10006D0D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10006D194(uint64_t a1)
{
  v2 = [*(a1 + 32) conferenceProvider];
  if (v2)
  {
    v3 = *(*(a1 + 32) + 20);
    v4 = *(a1 + 40);

    if (v3 != v4)
    {
      v6 = sub_100004778(v5);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = *(*(a1 + 32) + 20);
        v8 = *(a1 + 40);
        v10[0] = 67109376;
        v10[1] = v7;
        v11 = 1024;
        v12 = v8;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Setting remoteVideoPresentationState from %d to %d", v10, 0xEu);
      }

      *(*(a1 + 32) + 20) = *(a1 + 40);
      v9 = [*(a1 + 32) conferenceProvider];
      [v9 setRemoteVideoPresentationState:*(a1 + 40)];
    }
  }
}

void *sub_10006D364(void *result)
{
  if (*(result[4] + 16) <= 4)
  {
    v1 = result;
    v2 = sub_100004778(result);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_100471450();
    }

    v3 = [v1[4] conferenceProvider];
    [v3 stop];

    return [v1[4] _setEndedWithReason:3 error:0];
  }

  return result;
}

void sub_10006D4A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10006D4C0(uint64_t a1)
{
  v3 = [*(a1 + 32) configuration];
  v2 = [v3 capabilities];
  *(*(*(a1 + 40) + 8) + 24) = [v2 deviceRole];
}

void sub_10006D5C4(uint64_t a1)
{
  v2 = [*(a1 + 32) configuration];
  v3 = [v2 capabilities];
  v4 = [v3 deviceRole];
  v5 = *(a1 + 40);

  if (v4 != v5)
  {
    v7 = sub_100004778(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [*(a1 + 32) configuration];
      v9 = [v8 capabilities];
      v10 = [v9 deviceRole];
      v11 = *(a1 + 40);
      v18[0] = 67109376;
      v18[1] = v10;
      v19 = 1024;
      v20 = v11;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Updating device role from %d to %d", v18, 0xEu);
    }

    v12 = *(a1 + 40);
    v13 = [*(a1 + 32) configuration];
    v14 = [v13 capabilities];
    [v14 setDeviceRole:v12];

    v15 = [*(a1 + 32) conferenceProvider];
    v16 = [*(a1 + 32) configuration];
    v17 = [v16 capabilities];
    [v15 updateCapabilities:v17];
  }
}

void sub_10006D9D0(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  if (objc_opt_respondsToSelector())
  {
    [v2 conferenceFinishedPreparing:*(a1 + 32)];
  }
}

void sub_10006DAA4(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  if (objc_opt_respondsToSelector())
  {
    [v2 conferenceStarted:*(a1 + 32)];
  }
}

void sub_10006DBA8(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  if (objc_opt_respondsToSelector())
  {
    [v2 conference:*(a1 + 32) endedWithReason:*(a1 + 48) error:*(a1 + 40)];
  }
}

void sub_10006DC80(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  if (objc_opt_respondsToSelector())
  {
    [v2 connectionClosedForConference:*(a1 + 32)];
  }
}

void sub_10006DD54(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  if (objc_opt_respondsToSelector())
  {
    [v2 mutedChangedForConference:*(a1 + 32)];
  }
}

void sub_10006DE28(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  if (objc_opt_respondsToSelector())
  {
    [v2 sendingAudioChangedForConference:*(a1 + 32)];
  }
}

void sub_10006DEFC(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  if (objc_opt_respondsToSelector())
  {
    [v2 receivedFirstRemoteFrameForConference:*(a1 + 32)];
  }
}

void sub_10006DFD0(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  if (objc_opt_respondsToSelector())
  {
    [v2 remoteVideoPausedForConference:*(a1 + 32)];
  }
}

void sub_10006E0A8(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  if (objc_opt_respondsToSelector())
  {
    [v2 conference:*(a1 + 32) remoteMediaStalled:*(a1 + 40)];
  }
}

void sub_10006E1A8(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  if (objc_opt_respondsToSelector())
  {
    [v2 conference:*(a1 + 32) inputFrequencyLevelChangedTo:*(a1 + 40)];
  }
}

void sub_10006E2A4(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  if (objc_opt_respondsToSelector())
  {
    [v2 conference:*(a1 + 32) outputFrequencyLevelChangedTo:*(a1 + 40)];
  }
}

void sub_10006E37C(uint64_t a1)
{
  v3 = [*(a1 + 32) delegate];
  if (objc_opt_respondsToSelector())
  {
    LODWORD(v2) = *(a1 + 40);
    [v3 conference:*(a1 + 32) inputLevelChangedTo:v2];
  }
}

void sub_10006E458(uint64_t a1)
{
  v3 = [*(a1 + 32) delegate];
  if (objc_opt_respondsToSelector())
  {
    LODWORD(v2) = *(a1 + 40);
    [v3 conference:*(a1 + 32) outputLevelChangedTo:v2];
  }
}

void sub_10006E530(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  if (objc_opt_respondsToSelector())
  {
    [v2 conference:*(a1 + 32) changedBytesOfDataUsed:*(a1 + 40)];
  }
}

void sub_10006E634(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  if (objc_opt_respondsToSelector())
  {
    [v2 conference:*(a1 + 32) didReceiveData:*(a1 + 40) forCallID:*(a1 + 48)];
  }
}

void sub_10006E7E0(uint64_t a1)
{
  v2 = sub_100004778(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 48);
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v16 = 138412802;
    v17 = v4;
    v18 = 1024;
    v19 = v3;
    v20 = 2112;
    v21 = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "conference=%@ didStartSession=%d error=%@", &v16, 0x1Cu);
  }

  if (*(a1 + 48) == 1 && !*(a1 + 40))
  {
    v8 = *(*(a1 + 32) + 16);
    v9 = sub_100004778(v6);
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    if (v8 > 4)
    {
      if (v10)
      {
        LOWORD(v16) = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[WARN] Session is already past Connected state, not sending delegate started", &v16, 2u);
      }
    }

    else
    {
      if (v10)
      {
        LOWORD(v16) = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Successfully started session", &v16, 2u);
      }

      [*(a1 + 32) setState:5];
      v11 = [*(a1 + 32) _isSendingVideoExpected];
      v9 = v11;
      if (v11)
      {
        v12 = sub_100004778(v11);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v13 = [v9 BOOLValue];
          v16 = 67109120;
          LODWORD(v17) = v13 ^ 1;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Session is connected, setting videoPaused to expected value: %d", &v16, 8u);
        }

        v14 = [v9 BOOLValue];
        v15 = [*(a1 + 32) conferenceProvider];
        [v15 setVideoPaused:v14 ^ 1];
      }

      [*(a1 + 32) _sendDelegateStarted];
    }
  }

  else
  {
    v7 = sub_100004778(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100471490();
    }

    [*(a1 + 32) _setEndedWithReason:5 error:*(a1 + 40)];
  }
}

void sub_10006EB08(uint64_t a1)
{
  v2 = sub_100004778(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    *buf = 138412546;
    v20 = v3;
    v21 = 2112;
    v22 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "didStopError=%@ callMetadata=%@", buf, 0x16u);
  }

  v5 = *(a1 + 48);
  v6 = *(a1 + 32);
  v18 = 0;
  v7 = [v5 _endedReasonForDidStopError:v6 error:&v18];
  v8 = v18;
  v9 = v8;
  if (v8)
  {
    v10 = sub_100004778(v8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_100471508();
    }
  }

  v11 = *(a1 + 40);
  if (v11)
  {
    v12 = [v11 objectForKeyedSubscript:AVConferenceSessionSentBytes];
    v13 = [*(a1 + 40) objectForKeyedSubscript:AVConferenceSessionReceivedBytes];
    v14 = [v12 integerValue];
    v15 = [v13 integerValue];
    v16 = &v14[v15];
    v17 = sub_100004778(v15);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v20 = v16;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Sending delegate bytesOfDataUsageChanged: %ld", buf, 0xCu);
    }

    [*(a1 + 48) _sendDelegateBytesOfDataUsageChanged:v16];
  }

  [*(a1 + 48) _stop];
  [*(a1 + 48) _setEndedWithReason:v7 error:v9];
}

id sub_10006ED84(uint64_t a1)
{
  v2 = sub_100004778(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "", v4, 2u);
  }

  return [*(a1 + 32) _sendDelegateConnectionClosed];
}

id sub_10006F18C(uint64_t a1)
{
  v2 = sub_100004778(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 48);
    v4 = *(a1 + 32);
    v6[0] = 67109378;
    v6[1] = v3;
    v7 = 2112;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "didPauseAudio=%d error=%@", v6, 0x12u);
  }

  return [*(a1 + 40) _sendDelegateSendingAudioChanged];
}

void sub_10006F308(uint64_t a1)
{
  v2 = sub_100004778(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 48);
    v4 = *(a1 + 32);
    v14 = 67109378;
    v15 = v3;
    v16 = 2112;
    v17 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "didPauseVideo=%d error=%@", &v14, 0x12u);
  }

  v5 = *(a1 + 40);
  if (v5[4] > 4)
  {
    v8 = [v5 _isSendingVideoExpected];
    v6 = v8;
    if (!*(a1 + 32) && v8 && (v9 = [v8 BOOLValue], *(a1 + 48) == v9))
    {
      v10 = sub_100004778(v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = *(a1 + 48);
        v14 = 67109378;
        v15 = v11;
        v16 = 2112;
        v17 = v6;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Video was set to didPauseVideo: %d sendingVideoExpected: %@. Setting sendingVideo to sendingVideoExpected", &v14, 0x12u);
      }

      v12 = [v6 BOOLValue];
      v13 = [*(a1 + 40) conferenceProvider];
      [v13 setVideoPaused:v12 ^ 1];
    }

    else
    {
      [*(a1 + 40) setSendingVideoExpected:0];
    }
  }

  else
  {
    v6 = sub_100004778(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(*(a1 + 40) + 16);
      v14 = 67109120;
      v15 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Not setting sendingVideoExpected to nil since our state is %d", &v14, 8u);
    }
  }
}

id sub_10006F580(uint64_t a1)
{
  v2 = sub_100004778(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "", v4, 2u);
  }

  [*(a1 + 32) setHasReceivedFirstRemoteFrame:1];
  return [*(a1 + 32) _sendDelegateReceivedFirstRemoteFrame];
}

id sub_10006F698(uint64_t a1)
{
  v2 = sub_100004778(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    v5[0] = 67109120;
    v5[1] = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "remoteVideoPaused=%d", v5, 8u);
  }

  [*(a1 + 32) setRemoteVideoPaused:*(a1 + 40)];
  return [*(a1 + 32) _sendDelegateRemoteVideoPaused];
}

id sub_10006F7EC(uint64_t a1)
{
  v2 = sub_100004778(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    v5[0] = 67109120;
    v5[1] = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "remoteMediaStalled=%d", v5, 8u);
  }

  return [*(a1 + 32) _sendDelegateRemoteMediaStalled:*(a1 + 40)];
}

id sub_10006F954(uint64_t a1)
{
  v2 = sub_100004778(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_10047157C();
  }

  return [*(a1 + 40) _setEndedWithReason:6 error:0];
}

void sub_100070270(uint64_t a1)
{
  v4 = [*(a1 + 32) delegate];
  v2 = *(a1 + 32);
  v3 = [v2 providerByIdentifier];
  [v4 channelProviderManagerDataSource:v2 didChangeProviderByIdentifier:v3];
}

void sub_100070878(id a1)
{
  v1 = objc_alloc_init(CSDFocusStateManager);
  v2 = qword_1006ACAD0;
  qword_1006ACAD0 = v1;
}

id sub_100071CF4(CSDMessagingConversationParticipant *self, SEL a2)
{
  v7.receiver = self;
  v7.super_class = CSDMessagingConversationParticipant;
  v3 = [(CSDMessagingConversationParticipant *)&v7 description];
  v4 = [(CSDMessagingConversationParticipant *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

uint64_t sub_100072604(uint64_t a1, void *a2)
{
  v4 = a2;
  while (2)
  {
    v5 = [v4 position];
    if (v5 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      return [a2 hasError] ^ 1;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      LOBYTE(v186) = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v186 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v186 & 0x7F) << v6;
      if ((v186 & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      v12 = v7++ >= 9;
      if (v12)
      {
        v13 = 0;
        goto LABEL_16;
      }
    }

    v13 = [a2 hasError] ? 0 : v8;
LABEL_16:
    if (([a2 hasError] & 1) != 0 || (v13 & 7) == 4)
    {
      return [a2 hasError] ^ 1;
    }

    switch((v13 >> 3))
    {
      case 1u:
        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 128) |= 0x80u;
        while (1)
        {
          LOBYTE(v186) = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:&v186 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v186 & 0x7F) << v14;
          if ((v186 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v12 = v15++ >= 9;
          if (v12)
          {
            v20 = 0;
LABEL_310:
            v183 = 96;
            goto LABEL_345;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v16;
        }

        goto LABEL_310;
      case 2u:
        v91 = 0;
        v92 = 0;
        v93 = 0;
        *(a1 + 128) |= 1u;
        while (1)
        {
          LOBYTE(v186) = 0;
          v94 = [a2 position] + 1;
          if (v94 >= [a2 position] && (v95 = objc_msgSend(a2, "position") + 1, v95 <= objc_msgSend(a2, "length")))
          {
            v96 = [a2 data];
            [v96 getBytes:&v186 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v93 |= (v186 & 0x7F) << v91;
          if ((v186 & 0x80) == 0)
          {
            break;
          }

          v91 += 7;
          v12 = v92++ >= 9;
          if (v12)
          {
            v97 = 0;
            goto LABEL_314;
          }
        }

        if ([a2 hasError])
        {
          v97 = 0;
        }

        else
        {
          v97 = v93;
        }

LABEL_314:
        *(a1 + 8) = v97;
        goto LABEL_353;
      case 3u:
        v76 = objc_alloc_init(CSDMessagingHandle);
        objc_storeStrong((a1 + 48), v76);
        v186 = 0;
        v187 = 0;
        if (!PBReaderPlaceMark() || !sub_1000D1450(v76, a2))
        {
          goto LABEL_355;
        }

        goto LABEL_265;
      case 4u:
        v83 = PBReaderReadData();
        v84 = 32;
        goto LABEL_262;
      case 5u:
        v46 = 0;
        v47 = 0;
        v48 = 0;
        *(a1 + 128) |= 0x4000u;
        while (1)
        {
          LOBYTE(v186) = 0;
          v49 = [a2 position] + 1;
          if (v49 >= [a2 position] && (v50 = objc_msgSend(a2, "position") + 1, v50 <= objc_msgSend(a2, "length")))
          {
            v51 = [a2 data];
            [v51 getBytes:&v186 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v48 |= (v186 & 0x7F) << v46;
          if ((v186 & 0x80) == 0)
          {
            break;
          }

          v46 += 7;
          v12 = v47++ >= 9;
          if (v12)
          {
            LOBYTE(v33) = 0;
            goto LABEL_288;
          }
        }

        v33 = (v48 != 0) & ~[a2 hasError];
LABEL_288:
        v184 = 112;
        goto LABEL_352;
      case 6u:
        v116 = 0;
        v117 = 0;
        v118 = 0;
        *(a1 + 128) |= 0x40000u;
        while (1)
        {
          LOBYTE(v186) = 0;
          v119 = [a2 position] + 1;
          if (v119 >= [a2 position] && (v120 = objc_msgSend(a2, "position") + 1, v120 <= objc_msgSend(a2, "length")))
          {
            v121 = [a2 data];
            [v121 getBytes:&v186 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v118 |= (v186 & 0x7F) << v116;
          if ((v186 & 0x80) == 0)
          {
            break;
          }

          v116 += 7;
          v12 = v117++ >= 9;
          if (v12)
          {
            LOBYTE(v33) = 0;
            goto LABEL_322;
          }
        }

        v33 = (v118 != 0) & ~[a2 hasError];
LABEL_322:
        v184 = 116;
        goto LABEL_352;
      case 7u:
        v128 = 0;
        v129 = 0;
        v130 = 0;
        *(a1 + 128) |= 0x1000u;
        while (1)
        {
          LOBYTE(v186) = 0;
          v131 = [a2 position] + 1;
          if (v131 >= [a2 position] && (v132 = objc_msgSend(a2, "position") + 1, v132 <= objc_msgSend(a2, "length")))
          {
            v133 = [a2 data];
            [v133 getBytes:&v186 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v130 |= (v186 & 0x7F) << v128;
          if ((v186 & 0x80) == 0)
          {
            break;
          }

          v128 += 7;
          v12 = v129++ >= 9;
          if (v12)
          {
            LOBYTE(v33) = 0;
            goto LABEL_328;
          }
        }

        v33 = (v130 != 0) & ~[a2 hasError];
LABEL_328:
        v184 = 110;
        goto LABEL_352;
      case 8u:
        v85 = 0;
        v86 = 0;
        v87 = 0;
        *(a1 + 128) |= 0x10000u;
        while (1)
        {
          LOBYTE(v186) = 0;
          v88 = [a2 position] + 1;
          if (v88 >= [a2 position] && (v89 = objc_msgSend(a2, "position") + 1, v89 <= objc_msgSend(a2, "length")))
          {
            v90 = [a2 data];
            [v90 getBytes:&v186 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v87 |= (v186 & 0x7F) << v85;
          if ((v186 & 0x80) == 0)
          {
            break;
          }

          v85 += 7;
          v12 = v86++ >= 9;
          if (v12)
          {
            LOBYTE(v33) = 0;
            goto LABEL_306;
          }
        }

        v33 = (v87 != 0) & ~[a2 hasError];
LABEL_306:
        v184 = 114;
        goto LABEL_352;
      case 9u:
        v140 = 0;
        v141 = 0;
        v142 = 0;
        *(a1 + 128) |= 0x2000u;
        while (1)
        {
          LOBYTE(v186) = 0;
          v143 = [a2 position] + 1;
          if (v143 >= [a2 position] && (v144 = objc_msgSend(a2, "position") + 1, v144 <= objc_msgSend(a2, "length")))
          {
            v145 = [a2 data];
            [v145 getBytes:&v186 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v142 |= (v186 & 0x7F) << v140;
          if ((v186 & 0x80) == 0)
          {
            break;
          }

          v140 += 7;
          v12 = v141++ >= 9;
          if (v12)
          {
            LOBYTE(v33) = 0;
            goto LABEL_334;
          }
        }

        v33 = (v142 != 0) & ~[a2 hasError];
LABEL_334:
        v184 = 111;
        goto LABEL_352;
      case 0xAu:
        v58 = 0;
        v59 = 0;
        v60 = 0;
        *(a1 + 128) |= 0x20u;
        while (1)
        {
          LOBYTE(v186) = 0;
          v61 = [a2 position] + 1;
          if (v61 >= [a2 position] && (v62 = objc_msgSend(a2, "position") + 1, v62 <= objc_msgSend(a2, "length")))
          {
            v63 = [a2 data];
            [v63 getBytes:&v186 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v60 |= (v186 & 0x7F) << v58;
          if ((v186 & 0x80) == 0)
          {
            break;
          }

          v58 += 7;
          v12 = v59++ >= 9;
          if (v12)
          {
            v20 = 0;
            goto LABEL_294;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v60;
        }

LABEL_294:
        v183 = 76;
        goto LABEL_345;
      case 0xBu:
        v134 = 0;
        v135 = 0;
        v136 = 0;
        *(a1 + 128) |= 8u;
        while (1)
        {
          LOBYTE(v186) = 0;
          v137 = [a2 position] + 1;
          if (v137 >= [a2 position] && (v138 = objc_msgSend(a2, "position") + 1, v138 <= objc_msgSend(a2, "length")))
          {
            v139 = [a2 data];
            [v139 getBytes:&v186 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v136 |= (v186 & 0x7F) << v134;
          if ((v186 & 0x80) == 0)
          {
            break;
          }

          v134 += 7;
          v12 = v135++ >= 9;
          if (v12)
          {
            v20 = 0;
            goto LABEL_332;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v136;
        }

LABEL_332:
        v183 = 60;
        goto LABEL_345;
      case 0xCu:
        v40 = 0;
        v41 = 0;
        v42 = 0;
        *(a1 + 128) |= 0x800u;
        while (1)
        {
          LOBYTE(v186) = 0;
          v43 = [a2 position] + 1;
          if (v43 >= [a2 position] && (v44 = objc_msgSend(a2, "position") + 1, v44 <= objc_msgSend(a2, "length")))
          {
            v45 = [a2 data];
            [v45 getBytes:&v186 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v42 |= (v186 & 0x7F) << v40;
          if ((v186 & 0x80) == 0)
          {
            break;
          }

          v40 += 7;
          v12 = v41++ >= 9;
          if (v12)
          {
            LOBYTE(v33) = 0;
            goto LABEL_286;
          }
        }

        v33 = (v42 != 0) & ~[a2 hasError];
LABEL_286:
        v184 = 109;
        goto LABEL_352;
      case 0xDu:
        v52 = 0;
        v53 = 0;
        v54 = 0;
        *(a1 + 128) |= 0x400u;
        while (1)
        {
          LOBYTE(v186) = 0;
          v55 = [a2 position] + 1;
          if (v55 >= [a2 position] && (v56 = objc_msgSend(a2, "position") + 1, v56 <= objc_msgSend(a2, "length")))
          {
            v57 = [a2 data];
            [v57 getBytes:&v186 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v54 |= (v186 & 0x7F) << v52;
          if ((v186 & 0x80) == 0)
          {
            break;
          }

          v52 += 7;
          v12 = v53++ >= 9;
          if (v12)
          {
            LOBYTE(v33) = 0;
            goto LABEL_290;
          }
        }

        v33 = (v54 != 0) & ~[a2 hasError];
LABEL_290:
        v184 = 108;
        goto LABEL_352;
      case 0xEu:
        v76 = objc_alloc_init(CSDMessagingConversationParticipantAssociation);
        objc_storeStrong((a1 + 16), v76);
        v186 = 0;
        v187 = 0;
        if (!PBReaderPlaceMark() || !sub_1000609B0(v76, a2))
        {
          goto LABEL_355;
        }

        goto LABEL_265;
      case 0xFu:
        v34 = 0;
        v35 = 0;
        v36 = 0;
        *(a1 + 128) |= 0x200000u;
        while (1)
        {
          LOBYTE(v186) = 0;
          v37 = [a2 position] + 1;
          if (v37 >= [a2 position] && (v38 = objc_msgSend(a2, "position") + 1, v38 <= objc_msgSend(a2, "length")))
          {
            v39 = [a2 data];
            [v39 getBytes:&v186 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v36 |= (v186 & 0x7F) << v34;
          if ((v186 & 0x80) == 0)
          {
            break;
          }

          v34 += 7;
          v12 = v35++ >= 9;
          if (v12)
          {
            LOBYTE(v33) = 0;
            goto LABEL_284;
          }
        }

        v33 = (v36 != 0) & ~[a2 hasError];
LABEL_284:
        v184 = 119;
        goto LABEL_352;
      case 0x10u:
        v77 = 0;
        v78 = 0;
        v79 = 0;
        *(a1 + 128) |= 2u;
        while (1)
        {
          LOBYTE(v186) = 0;
          v80 = [a2 position] + 1;
          if (v80 >= [a2 position] && (v81 = objc_msgSend(a2, "position") + 1, v81 <= objc_msgSend(a2, "length")))
          {
            v82 = [a2 data];
            [v82 getBytes:&v186 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v79 |= (v186 & 0x7F) << v77;
          if ((v186 & 0x80) == 0)
          {
            break;
          }

          v77 += 7;
          v12 = v78++ >= 9;
          if (v12)
          {
            v20 = 0;
            goto LABEL_304;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v79;
        }

LABEL_304:
        v183 = 24;
        goto LABEL_345;
      case 0x11u:
        v27 = 0;
        v28 = 0;
        v29 = 0;
        *(a1 + 128) |= 0x2000000u;
        while (1)
        {
          LOBYTE(v186) = 0;
          v30 = [a2 position] + 1;
          if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 1, v31 <= objc_msgSend(a2, "length")))
          {
            v32 = [a2 data];
            [v32 getBytes:&v186 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v29 |= (v186 & 0x7F) << v27;
          if ((v186 & 0x80) == 0)
          {
            break;
          }

          v27 += 7;
          v12 = v28++ >= 9;
          if (v12)
          {
            LOBYTE(v33) = 0;
            goto LABEL_282;
          }
        }

        v33 = (v29 != 0) & ~[a2 hasError];
LABEL_282:
        v184 = 123;
        goto LABEL_352;
      case 0x12u:
        v104 = 0;
        v105 = 0;
        v106 = 0;
        *(a1 + 128) |= 0x800000u;
        while (1)
        {
          LOBYTE(v186) = 0;
          v107 = [a2 position] + 1;
          if (v107 >= [a2 position] && (v108 = objc_msgSend(a2, "position") + 1, v108 <= objc_msgSend(a2, "length")))
          {
            v109 = [a2 data];
            [v109 getBytes:&v186 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v106 |= (v186 & 0x7F) << v104;
          if ((v186 & 0x80) == 0)
          {
            break;
          }

          v104 += 7;
          v12 = v105++ >= 9;
          if (v12)
          {
            LOBYTE(v33) = 0;
            goto LABEL_318;
          }
        }

        v33 = (v106 != 0) & ~[a2 hasError];
LABEL_318:
        v184 = 121;
        goto LABEL_352;
      case 0x13u:
        v83 = PBReaderReadData();
        v84 = 64;
        goto LABEL_262;
      case 0x14u:
        v164 = 0;
        v165 = 0;
        v166 = 0;
        *(a1 + 128) |= 0x80000u;
        while (1)
        {
          LOBYTE(v186) = 0;
          v167 = [a2 position] + 1;
          if (v167 >= [a2 position] && (v168 = objc_msgSend(a2, "position") + 1, v168 <= objc_msgSend(a2, "length")))
          {
            v169 = [a2 data];
            [v169 getBytes:&v186 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v166 |= (v186 & 0x7F) << v164;
          if ((v186 & 0x80) == 0)
          {
            break;
          }

          v164 += 7;
          v12 = v165++ >= 9;
          if (v12)
          {
            LOBYTE(v33) = 0;
            goto LABEL_347;
          }
        }

        v33 = (v166 != 0) & ~[a2 hasError];
LABEL_347:
        v184 = 117;
        goto LABEL_352;
      case 0x15u:
        v110 = 0;
        v111 = 0;
        v112 = 0;
        *(a1 + 128) |= 0x400000u;
        while (1)
        {
          LOBYTE(v186) = 0;
          v113 = [a2 position] + 1;
          if (v113 >= [a2 position] && (v114 = objc_msgSend(a2, "position") + 1, v114 <= objc_msgSend(a2, "length")))
          {
            v115 = [a2 data];
            [v115 getBytes:&v186 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v112 |= (v186 & 0x7F) << v110;
          if ((v186 & 0x80) == 0)
          {
            break;
          }

          v110 += 7;
          v12 = v111++ >= 9;
          if (v12)
          {
            LOBYTE(v33) = 0;
            goto LABEL_320;
          }
        }

        v33 = (v112 != 0) & ~[a2 hasError];
LABEL_320:
        v184 = 120;
        goto LABEL_352;
      case 0x16u:
        v122 = 0;
        v123 = 0;
        v124 = 0;
        *(a1 + 128) |= 0x200u;
        while (1)
        {
          LOBYTE(v186) = 0;
          v125 = [a2 position] + 1;
          if (v125 >= [a2 position] && (v126 = objc_msgSend(a2, "position") + 1, v126 <= objc_msgSend(a2, "length")))
          {
            v127 = [a2 data];
            [v127 getBytes:&v186 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v124 |= (v186 & 0x7F) << v122;
          if ((v186 & 0x80) == 0)
          {
            break;
          }

          v122 += 7;
          v12 = v123++ >= 9;
          if (v12)
          {
            v20 = 0;
            goto LABEL_326;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v124;
        }

LABEL_326:
        v183 = 104;
        goto LABEL_345;
      case 0x17u:
        v158 = 0;
        v159 = 0;
        v160 = 0;
        *(a1 + 128) |= 0x100u;
        while (1)
        {
          LOBYTE(v186) = 0;
          v161 = [a2 position] + 1;
          if (v161 >= [a2 position] && (v162 = objc_msgSend(a2, "position") + 1, v162 <= objc_msgSend(a2, "length")))
          {
            v163 = [a2 data];
            [v163 getBytes:&v186 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v160 |= (v186 & 0x7F) << v158;
          if ((v186 & 0x80) == 0)
          {
            break;
          }

          v158 += 7;
          v12 = v159++ >= 9;
          if (v12)
          {
            v20 = 0;
            goto LABEL_344;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v160;
        }

LABEL_344:
        v183 = 100;
        goto LABEL_345;
      case 0x18u:
        v170 = 0;
        v171 = 0;
        v172 = 0;
        *(a1 + 128) |= 0x1000000u;
        while (1)
        {
          LOBYTE(v186) = 0;
          v173 = [a2 position] + 1;
          if (v173 >= [a2 position] && (v174 = objc_msgSend(a2, "position") + 1, v174 <= objc_msgSend(a2, "length")))
          {
            v175 = [a2 data];
            [v175 getBytes:&v186 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v172 |= (v186 & 0x7F) << v170;
          if ((v186 & 0x80) == 0)
          {
            break;
          }

          v170 += 7;
          v12 = v171++ >= 9;
          if (v12)
          {
            LOBYTE(v33) = 0;
            goto LABEL_349;
          }
        }

        v33 = (v172 != 0) & ~[a2 hasError];
LABEL_349:
        v184 = 122;
        goto LABEL_352;
      case 0x19u:
        v70 = 0;
        v71 = 0;
        v72 = 0;
        *(a1 + 128) |= 0x4000000u;
        while (1)
        {
          LOBYTE(v186) = 0;
          v73 = [a2 position] + 1;
          if (v73 >= [a2 position] && (v74 = objc_msgSend(a2, "position") + 1, v74 <= objc_msgSend(a2, "length")))
          {
            v75 = [a2 data];
            [v75 getBytes:&v186 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v72 |= (v186 & 0x7F) << v70;
          if ((v186 & 0x80) == 0)
          {
            break;
          }

          v70 += 7;
          v12 = v71++ >= 9;
          if (v12)
          {
            LOBYTE(v33) = 0;
            goto LABEL_300;
          }
        }

        v33 = (v72 != 0) & ~[a2 hasError];
LABEL_300:
        v184 = 124;
        goto LABEL_352;
      case 0x1Au:
        v64 = 0;
        v65 = 0;
        v66 = 0;
        *(a1 + 128) |= 0x40u;
        while (1)
        {
          LOBYTE(v186) = 0;
          v67 = [a2 position] + 1;
          if (v67 >= [a2 position] && (v68 = objc_msgSend(a2, "position") + 1, v68 <= objc_msgSend(a2, "length")))
          {
            v69 = [a2 data];
            [v69 getBytes:&v186 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v66 |= (v186 & 0x7F) << v64;
          if ((v186 & 0x80) == 0)
          {
            break;
          }

          v64 += 7;
          v12 = v65++ >= 9;
          if (v12)
          {
            v20 = 0;
            goto LABEL_298;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v66;
        }

LABEL_298:
        v183 = 80;
        goto LABEL_345;
      case 0x1Bu:
        v177 = 0;
        v178 = 0;
        v179 = 0;
        *(a1 + 128) |= 0x20000u;
        while (1)
        {
          LOBYTE(v186) = 0;
          v180 = [a2 position] + 1;
          if (v180 >= [a2 position] && (v181 = objc_msgSend(a2, "position") + 1, v181 <= objc_msgSend(a2, "length")))
          {
            v182 = [a2 data];
            [v182 getBytes:&v186 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v179 |= (v186 & 0x7F) << v177;
          if ((v186 & 0x80) == 0)
          {
            break;
          }

          v177 += 7;
          v12 = v178++ >= 9;
          if (v12)
          {
            LOBYTE(v33) = 0;
            goto LABEL_351;
          }
        }

        v33 = (v179 != 0) & ~[a2 hasError];
LABEL_351:
        v184 = 115;
        goto LABEL_352;
      case 0x1Cu:
        v21 = 0;
        v22 = 0;
        v23 = 0;
        *(a1 + 128) |= 0x10u;
        while (1)
        {
          LOBYTE(v186) = 0;
          v24 = [a2 position] + 1;
          if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
          {
            v26 = [a2 data];
            [v26 getBytes:&v186 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v23 |= (v186 & 0x7F) << v21;
          if ((v186 & 0x80) == 0)
          {
            break;
          }

          v21 += 7;
          v12 = v22++ >= 9;
          if (v12)
          {
            v20 = 0;
            goto LABEL_280;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v23;
        }

LABEL_280:
        v183 = 72;
        goto LABEL_345;
      case 0x1Du:
        v83 = PBReaderReadString();
        v84 = 88;
LABEL_262:
        v176 = *(a1 + v84);
        *(a1 + v84) = v83;

        goto LABEL_353;
      case 0x1Eu:
        v76 = objc_alloc_init(CSDMessagingConversationParticipantCluster);
        objc_storeStrong((a1 + 40), v76);
        v186 = 0;
        v187 = 0;
        if (PBReaderPlaceMark() && sub_10022A638(v76, a2))
        {
LABEL_265:
          PBReaderRecallMark();

LABEL_353:
          v4 = a2;
          continue;
        }

LABEL_355:

        return 0;
      case 0x1Fu:
        v146 = 0;
        v147 = 0;
        v148 = 0;
        *(a1 + 128) |= 0x100000u;
        while (1)
        {
          LOBYTE(v186) = 0;
          v149 = [a2 position] + 1;
          if (v149 >= [a2 position] && (v150 = objc_msgSend(a2, "position") + 1, v150 <= objc_msgSend(a2, "length")))
          {
            v151 = [a2 data];
            [v151 getBytes:&v186 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v148 |= (v186 & 0x7F) << v146;
          if ((v186 & 0x80) == 0)
          {
            break;
          }

          v146 += 7;
          v12 = v147++ >= 9;
          if (v12)
          {
            LOBYTE(v33) = 0;
            goto LABEL_336;
          }
        }

        v33 = (v148 != 0) & ~[a2 hasError];
LABEL_336:
        v184 = 118;
        goto LABEL_352;
      case 0x20u:
        v98 = 0;
        v99 = 0;
        v100 = 0;
        *(a1 + 128) |= 0x8000u;
        while (1)
        {
          LOBYTE(v186) = 0;
          v101 = [a2 position] + 1;
          if (v101 >= [a2 position] && (v102 = objc_msgSend(a2, "position") + 1, v102 <= objc_msgSend(a2, "length")))
          {
            v103 = [a2 data];
            [v103 getBytes:&v186 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v100 |= (v186 & 0x7F) << v98;
          if ((v186 & 0x80) == 0)
          {
            break;
          }

          v98 += 7;
          v12 = v99++ >= 9;
          if (v12)
          {
            LOBYTE(v33) = 0;
            goto LABEL_316;
          }
        }

        v33 = (v100 != 0) & ~[a2 hasError];
LABEL_316:
        v184 = 113;
LABEL_352:
        *(a1 + v184) = v33;
        goto LABEL_353;
      case 0x21u:
        v152 = 0;
        v153 = 0;
        v154 = 0;
        *(a1 + 128) |= 4u;
        while (1)
        {
          LOBYTE(v186) = 0;
          v155 = [a2 position] + 1;
          if (v155 >= [a2 position] && (v156 = objc_msgSend(a2, "position") + 1, v156 <= objc_msgSend(a2, "length")))
          {
            v157 = [a2 data];
            [v157 getBytes:&v186 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v154 |= (v186 & 0x7F) << v152;
          if ((v186 & 0x80) == 0)
          {
            break;
          }

          v152 += 7;
          v12 = v153++ >= 9;
          if (v12)
          {
            v20 = 0;
            goto LABEL_340;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v154;
        }

LABEL_340:
        v183 = 56;
LABEL_345:
        *(a1 + v183) = v20;
        goto LABEL_353;
      default:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_353;
    }
  }
}

void sub_100076A40(uint64_t a1)
{
  v2 = [CSDUserActivityManager alloc];
  v3 = *(a1 + 32);
  v8 = objc_alloc_init(CSDUserActivityCommunicator);
  v4 = +[TUCallCenter sharedInstance];
  v5 = objc_alloc_init(TUFeatureFlags);
  v6 = [(CSDUserActivityManager *)v2 initWithQueue:v3 activityCommunicator:v8 callCenter:v4 featureFlags:v5];
  v7 = qword_1006ACAE0;
  qword_1006ACAE0 = v6;
}

id sub_10007799C(uint64_t a1, void *a2)
{
  v3 = [a2 callGroupUUID];
  v4 = [*(a1 + 32) groupUUID];
  v5 = [v3 isEqual:v4];

  return v5;
}

void sub_1000797B8(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2 == 5)
  {
    v25 = [*(a1 + 40) featureFlags];
    v26 = [v25 conversationHandoffEnabled];

    if (v26)
    {
      v27 = *(a1 + 32);
      if (v27)
      {
        v24 = [v27 tu_handoffEligibility];
        v28 = [v24 setOriginatingDeviceType:*(a1 + 48)];
        if (v24)
        {
          v29 = +[NSNotificationCenter defaultCenter];
          [v29 postNotificationName:@"CSDUserActivityConversationHandoffRecommendationChangedNotification" object:v24 userInfo:0];
        }

        else
        {
          v30 = sub_100004778(v28);
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
          {
            v31 = *(a1 + 32);
            *buf = 138412290;
            *v39 = v31;
            _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "[WARN] User activity manager could not parse eligibility from dynamicIdentifier %@", buf, 0xCu);
          }
        }
      }

      else
      {
        v24 = sub_100004778(0);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "[WARN] Cannot process received broadcast for conversation handoff activity type because it did not have a dynamic identifier set.", buf, 2u);
        }
      }

      goto LABEL_18;
    }
  }

  else if (v2 == 3)
  {
    v32 = [*(a1 + 32) componentsSeparatedByString:@"."];
    v3 = [v32 lastObject];
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v4 = [*(a1 + 40) callCenter];
    v5 = [v4 audioAndVideoCallsWithStatus:4];

    v6 = [v5 countByEnumeratingWithState:&v34 objects:v42 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v35;
      v33 = v3;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v35 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v34 + 1) + 8 * i);
          v11 = [v10 handle];
          v12 = [v11 value];
          v13 = [v12 isEqualToString:v3];

          v15 = sub_100004778(v14);
          v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
          if (v13)
          {
            if (v16)
            {
              v17 = *(a1 + 56);
              *buf = 67109634;
              *v39 = v17;
              *&v39[4] = 2112;
              *&v39[6] = v3;
              v40 = 2112;
              v41 = v10;
              _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Received broadcast for activity type %d and destination ID %@. Suppressing ringtone due to remote suppression for call %@", buf, 0x1Cu);
            }

            [v10 suppressRingtoneDueToRemoteSuppression];
          }

          else
          {
            if (v16)
            {
              v18 = v7;
              v19 = v8;
              v20 = v5;
              v21 = *(a1 + 56);
              v22 = [v10 handle];
              v23 = [v22 value];
              *buf = 67109634;
              *v39 = v21;
              v5 = v20;
              v8 = v19;
              v7 = v18;
              v3 = v33;
              *&v39[4] = 2112;
              *&v39[6] = v33;
              v40 = 2112;
              v41 = v23;
              _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Received broadcast for activity type %d but ignoring it because its destination ID (%@) does not match this ringing call's desination ID (%@)", buf, 0x1Cu);
            }
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v34 objects:v42 count:16];
      }

      while (v7);
    }

    [*(a1 + 40) checkForSmartHoldingCallForSuppressRingtone:v3];
    v24 = v32;
LABEL_18:
  }
}

void sub_100079C10(uint64_t a1)
{
  if (*(a1 + 40) == 5)
  {
    v1 = [*(a1 + 32) featureFlags];
    v2 = [v1 conversationHandoffEnabled];

    if (v2)
    {
      v3 = +[NSNotificationCenter defaultCenter];
      [v3 postNotificationName:@"CSDUserActivityConversationHandoffRecommendationChangedNotification" object:0];
    }
  }
}

void sub_10007AE24(id a1, NSString *a2, double a3)
{
  v4 = a2;
  v5 = sub_100004778(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412546;
    v7 = v4;
    v8 = 2048;
    v9 = a3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Calling ADClientSetValueForDistributionKey() with key %@ and value %f", &v6, 0x16u);
  }

  if (qword_1006ACAF8 != -1)
  {
    sub_100471708();
  }

  off_1006ACAF0(v4, a3);
}

void sub_10007B5F0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v4 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v5 - 128));
  _Unwind_Resume(a1);
}

void sub_10007B62C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100004778(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v12 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v7 = [WeakRetained queue];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10007B77C;
    v8[3] = &unk_100619D88;
    v9 = v3;
    v10 = v6;
    dispatch_async(v7, v8);
  }
}

id sub_10007B77C(uint64_t a1)
{
  v2 = [*(a1 + 32) orientation] < 3;
  v3 = *(a1 + 40);

  return [v3 setInterfaceOrientationPortrait:v2];
}

id sub_10007B7CC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained voiceOverObserver];
  v3 = [v2 isEnabled];

  return v3;
}

id sub_10007B81C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained voiceOverObserver];
  v3 = [v2 shouldRouteToSpeakerWithProximity];

  return v3;
}

id sub_10007B86C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained voiceOverObserver];
  v3 = [v2 isBrailleScreenInputEnabled];

  return v3;
}

void sub_10007B8BC(id a1, int a2)
{
  v3 = sub_100004778(a1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4[0] = 67109120;
    v4[1] = a2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Asking BackBoard to set the proximity detection mode to (%u).", v4, 8u);
  }

  BKSHIDServicesRequestProximityDetectionMode();
}

BOOL sub_10007BC28(id a1, TUCall *a2)
{
  v2 = a2;
  v3 = ([(TUCall *)v2 isScreening]& 1) == 0 && ([(TUCall *)v2 isVideo]& 1) == 0 && ([(TUCall *)v2 status]== 1 || [(TUCall *)v2 status]== 2 || [(TUCall *)v2 status]== 5 || [(TUCall *)v2 status]== 3);

  return v3;
}

id sub_10007BE98(uint64_t a1)
{
  v2 = sub_100004778(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Updating proximity sensor state; audio routes changed.", v4, 2u);
  }

  return [*(a1 + 32) updateProximitySensorState];
}

id sub_10007BFE0(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = [v1 conferenceID];
    if ([v3 hasPrefix:@"ConferenceID:"])
    {
      v4 = [v3 substringFromIndex:{objc_msgSend(@"ConferenceID:", "length")}];

      v3 = v4;
    }

    if ([v3 length])
    {
      v5 = v3;
    }

    else
    {
      v6 = sub_100004778(0);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = [v2 conferenceID];
        v8 = [v2 GUID];
        v11 = 138412802;
        v12 = v2;
        v13 = 2112;
        v14 = v7;
        v15 = 2112;
        v16 = v8;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[WARN] Tried to get the call history identifier for this call (%@) but no conference ID was available (%@), we'll fall back to another method (GUID = %@). This call may now not sync properly between devices.", &v11, 0x20u);
      }

      v5 = [v2 GUID];

      if (![v5 length])
      {
        v9 = sub_100004778(0);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          sub_1004719D0(v9);
        }
      }
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

char *sub_10007C19C(void *a1)
{
  v1 = a1;
  v2 = [v1 dataUploaded];
  v3 = [v2 integerValue];
  v4 = [v1 dataDownloaded];

  v5 = [v4 integerValue];
  return &v3[v5];
}

void sub_10007C458(id a1)
{
  v1 = CUTWeakLinkSymbol();
  if (v1)
  {
    v2 = *v1;
  }

  else
  {
    v2 = 0;
  }

  objc_storeStrong(&qword_1006ACB00, v2);
}

void sub_10007D0A8(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [CXMember alloc];
  v7 = [v3 handle];

  v5 = [CXHandle handleWithTUHandle:v7];
  v6 = [v4 initWithHandle:v5];
  [v2 addObject:v6];
}

void sub_10007D15C(id a1)
{
  v1 = CUTWeakLinkSymbol();
  if (v1)
  {
    v2 = *v1;
  }

  else
  {
    v2 = 0;
  }

  objc_storeStrong(&qword_1006ACB10, v2);
}

void sub_10007D6F8(id a1)
{
  v1 = CUTWeakLinkSymbol();
  if (v1)
  {
    v2 = *v1;
  }

  else
  {
    v2 = 0;
  }

  objc_storeStrong(&qword_1006ACB20, v2);
}

void sub_10007D748(id a1)
{
  v1 = CUTWeakLinkSymbol();
  if (v1)
  {
    v2 = *v1;
  }

  else
  {
    v2 = 0;
  }

  objc_storeStrong(&qword_1006ACB30, v2);
}

uint64_t sub_10007DB00(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v29 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v29 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v29 & 0x7F) << v5;
        if ((v29 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 2)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 24) |= 2u;
        while (1)
        {
          v31 = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v31 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v31 & 0x7F) << v13;
          if ((v31 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v19 = v14++ > 8;
          if (v19)
          {
            v20 = 0;
            v21 = &OBJC_IVAR___CSDMessagingParticipantProminenceEntry__participantIdentifier;
            goto LABEL_44;
          }
        }

        v21 = &OBJC_IVAR___CSDMessagingParticipantProminenceEntry__participantIdentifier;
LABEL_41:
        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v15;
        }

LABEL_44:
        *(a1 + *v21) = v20;
        goto LABEL_45;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_45:
      v27 = [a2 position];
      if (v27 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v22 = 0;
    v23 = 0;
    v15 = 0;
    *(a1 + 24) |= 1u;
    while (1)
    {
      v30 = 0;
      v24 = [a2 position] + 1;
      if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
      {
        v26 = [a2 data];
        [v26 getBytes:&v30 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v15 |= (v30 & 0x7F) << v22;
      if ((v30 & 0x80) == 0)
      {
        break;
      }

      v22 += 7;
      v19 = v23++ > 8;
      if (v19)
      {
        v20 = 0;
        v21 = &OBJC_IVAR___CSDMessagingParticipantProminenceEntry__audioPriority;
        goto LABEL_44;
      }
    }

    v21 = &OBJC_IVAR___CSDMessagingParticipantProminenceEntry__audioPriority;
    goto LABEL_41;
  }

  return [a2 hasError] ^ 1;
}

IMAccount *__cdecl sub_10007E2AC(id a1, CXStartCallAction *a2)
{
  if ([(CXStartCallAction *)a2 isVideo])
  {
    +[IMService facetimeService];
  }

  else
  {
    +[IMService callService];
  }
  v2 = ;
  if (qword_1006ACB48 != -1)
  {
    sub_100471A78();
  }

  v3 = off_1006ACB40(v2);

  return v3;
}

void sub_10007EBA4(id a1)
{
  v1 = CUTWeakLinkSymbol();
  if (v1)
  {
    v2 = *v1;
  }

  else
  {
    v2 = 0;
  }

  objc_storeStrong(&qword_1006ACB50, v2);
}

void sub_10007EBF4(id a1)
{
  v1 = CUTWeakLinkSymbol();
  if (v1)
  {
    v2 = *v1;
  }

  else
  {
    v2 = 0;
  }

  objc_storeStrong(&qword_1006ACB60, v2);
}

void sub_10007EC44(id a1)
{
  v1 = CUTWeakLinkSymbol();
  if (v1)
  {
    v2 = *v1;
  }

  else
  {
    v2 = 0;
  }

  objc_storeStrong(&qword_1006ACB70, v2);
}

void sub_10007EC94(id a1)
{
  v1 = CUTWeakLinkSymbol();
  if (v1)
  {
    v2 = *v1;
  }

  else
  {
    v2 = 0;
  }

  objc_storeStrong(&qword_1006ACB80, v2);
}

void sub_10007ECE4(id a1)
{
  v1 = CUTWeakLinkSymbol();
  if (v1)
  {
    v2 = *v1;
  }

  else
  {
    v2 = 0;
  }

  objc_storeStrong(&qword_1006ACB90, v2);
}

void sub_10007ED34(id a1)
{
  v1 = CUTWeakLinkSymbol();
  if (v1)
  {
    v2 = *v1;
  }

  else
  {
    v2 = 0;
  }

  objc_storeStrong(&qword_1006ACBA0, v2);
}

void sub_10007ED84(id a1)
{
  v1 = CUTWeakLinkSymbol();
  if (v1)
  {
    v2 = *v1;
  }

  else
  {
    v2 = 0;
  }

  objc_storeStrong(&qword_1006ACBB0, v2);
}