uint64_t sub_10003B3F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10026D814(&qword_1006A91F8, &unk_100585300);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10003B464(uint64_t a1)
{
  v2 = sub_10026D814(&qword_1006A91F8, &unk_100585300);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_10003B4CC@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = [a1 audioInterruptionProviderType];
  if (v5 != 2)
  {
    if (v5 == 1)
    {
      sub_100009B14((v2 + 16), *(v2 + 40));
      v6 = sub_10003B7A8(a1);
      if (v6)
      {
        v8 = sub_10003B884(v6, v7);
        if (v8)
        {
          v9 = v8;
          *(a2 + 24) = type metadata accessor for AVAudioSessionAudioStateObserver();
          *(a2 + 32) = &off_1006303C8;
          swift_unknownObjectRelease();
          *a2 = v9;
          return result;
        }

        swift_unknownObjectRelease();
        goto LABEL_18;
      }

      if (qword_1006A0B30 != -1)
      {
        sub_100008720(&qword_1006A0B30);
      }

      v24 = type metadata accessor for Logger();
      sub_10000AF9C(v24, qword_1006BA610);
      v25 = a1;
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.fault.getter();

      if (!os_log_type_enabled(v15, v16))
      {
        goto LABEL_17;
      }

      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v30 = v18;
      *v17 = 136315138;
      sub_100024570();
      v26 = v25;
      v27 = String.init<A>(reflecting:)();
      v29 = sub_10002741C(v27, v28, &v30);

      *(v17 + 4) = v29;
      v23 = "Audio session not found for call: %s. Returning nil";
    }

    else
    {
      if (qword_1006A0B30 != -1)
      {
        sub_100008720(&qword_1006A0B30);
      }

      v13 = type metadata accessor for Logger();
      sub_10000AF9C(v13, qword_1006BA610);
      v14 = a1;
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.fault.getter();

      if (!os_log_type_enabled(v15, v16))
      {
        goto LABEL_17;
      }

      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v30 = v18;
      *v17 = 136315138;
      sub_100024570();
      v19 = v14;
      v20 = String.init<A>(reflecting:)();
      v22 = sub_10002741C(v20, v21, &v30);

      *(v17 + 4) = v22;
      v23 = "Call does not propertly configure audioInterruptionProviderType: %s";
    }

    _os_log_impl(&_mh_execute_header, v15, v16, v23, v17, 0xCu);
    sub_100009B7C(v18);
    sub_100005F40(v18);
    sub_100005F40(v17);
LABEL_17:

    goto LABEL_18;
  }

  v11 = sub_1003B6CA0();
  if (v11)
  {
    v12 = v11;
    *(a2 + 24) = type metadata accessor for AVAudioClientAudioStateObserver();
    *(a2 + 32) = &off_10062CE80;
    *a2 = v12;
    return result;
  }

LABEL_18:
  *(a2 + 32) = 0;
  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  return result;
}

id sub_10003B7A8(void *a1)
{
  v2 = [a1 provider];
  v3 = [v2 isSystemProvider];

  if (v3)
  {
    return [objc_opt_self() sharedInstance];
  }

  v5 = [a1 provider];
  v6 = [v5 audioSessionID];

  return [objc_allocWithZone(AVAudioSession) initProxySession:v6 autoReconnect:0];
}

void *sub_10003B884(uint64_t a1, uint64_t a2)
{
  if (qword_1006A0B30 != -1)
  {
    sub_100008720(&qword_1006A0B30);
  }

  v3 = type metadata accessor for Logger();
  sub_10000AF9C(v3, qword_1006BA610);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "Configuring AVAudioSession observer", v6, 2u);
    sub_100005F40(v6);
  }

  type metadata accessor for AVAudioSessionAudioStateObserver();
  swift_allocObject();
  v7 = swift_unknownObjectRetain();
  return sub_10003B9A0(v7, a2);
}

void *sub_10003B9A0(uint64_t a1, uint64_t a2)
{
  v2[2] = 0;
  v2[3] = 0;
  v2[8] = 0;
  v2[9] = 0;
  v2[6] = a2;
  v2[7] = 0;
  v2[4] = 1;
  v2[5] = a1;
  v3 = swift_allocObject();
  swift_weakInit();
  v4 = v2[7];
  v5 = v2[8];
  v2[7] = sub_100430804;
  v2[8] = v3;

  sub_1000051F8(v4, v5);

  return v2;
}

uint64_t sub_10003BA34()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0);
}

uint64_t sub_10003BA6C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10026D814(&qword_1006A91F8, &unk_100585300);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10003BB3C(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  return swift_unknownObjectRelease();
}

uint64_t sub_10003BB54()
{
  v1 = v0;
  if (qword_1006A0B30 != -1)
  {
    sub_100008720(&qword_1006A0B30);
  }

  v2 = type metadata accessor for Logger();
  sub_10000AF9C(v2, qword_1006BA610);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Begin observing AVAudioSession mute state change", v5, 2u);
  }

  v6 = v1[6];
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v1[7];
  if (v9)
  {
    v10 = result;
    v11 = v8;
    v12 = v1[8];
    ObjectType = swift_getObjectType();
    v14 = *(v6 + 128);

    v15 = v14(1, v10, v11, v9, v12, ObjectType, v6);
    sub_1000051F8(v9, v12);

    v1[9] = v15;

    return swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_10003BD00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = String._bridgeToObjectiveC()();
  v13[4] = a4;
  v13[5] = a5;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_1003511E8;
  v13[3] = &unk_100628E90;
  v10 = _Block_copy(v13);

  v11 = [v5 addObserverForType:a1 name:v9 block:v10];

  _Block_release(v10);

  return v11;
}

void sub_10003BE00(uint64_t a1)
{
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v1 = [*(a1 + 32) callCenterObserver];
  v2 = [v1 callContainer];
  v3 = [v2 currentAudioAndVideoCalls];

  obj = v3;
  v4 = [v3 countByEnumeratingWithState:&v61 objects:v81 count:16];
  if (!v4)
  {
    v6 = 0;
    v7 = 0;
    v56 = 0;
    v57 = 0;
    v8 = 0;
    v58 = 0;
    v9 = 0;
    goto LABEL_48;
  }

  v5 = v4;
  v6 = 0;
  v7 = 0;
  v56 = 0;
  v57 = 0;
  v8 = 0;
  v58 = 0;
  v9 = 0;
  v10 = *v62;
  do
  {
    for (i = 0; i != v5; i = i + 1)
    {
      if (*v62 != v10)
      {
        objc_enumerationMutation(obj);
      }

      v12 = *(*(&v61 + 1) + 8 * i);
      v13 = [v12 provider];
      v14 = [v13 supportsCurrentPlatform];

      if (!v14)
      {
        continue;
      }

      if ([v12 status] == 3)
      {
        if (!v9 || ([v12 callDuration], v16 = v15, objc_msgSend(v9, "callDuration"), v16 > v17))
        {
          v18 = v12;

          v9 = v18;
        }
      }

      if ([v12 status] == 1 && (objc_msgSend(v12, "isScreening") & 1) == 0)
      {
        if (!v58 || ([v12 callDuration], v20 = v19, objc_msgSend(v58, "callDuration"), v20 > v21))
        {
          v22 = v12;

          v58 = v22;
        }
      }

      if ([v12 status] == 2)
      {
        if (!v8 || ([v12 callDuration], v24 = v23, objc_msgSend(v8, "callDuration"), v24 > v25))
        {
          v26 = v12;

          v8 = v26;
        }
      }

      if ([v12 status] == 5)
      {
        if (!v6 || ([v12 callDuration], v28 = v27, objc_msgSend(v6, "callDuration"), v28 > v29))
        {
          v30 = v12;

          v6 = v30;
        }
      }

      if ([v12 status] == 4)
      {
        if (!v7 || ([v12 callDuration], v32 = v31, objc_msgSend(v7, "callDuration"), v32 > v33))
        {
          v34 = v12;

          v7 = v34;
        }
      }

      if ([v12 status] == 1 && objc_msgSend(v12, "isScreening") && objc_msgSend(v12, "screeningAnnouncementHasFinished"))
      {
        v35 = [v12 smartHoldingSession];
        if (v35)
        {
          goto LABEL_35;
        }

        if (!v56 || ([v12 callDuration], v37 = v36, objc_msgSend(v56, "callDuration"), v37 > v38))
        {
          v39 = v12;
          v35 = v56;
          v56 = v39;
LABEL_35:
        }
      }

      v40 = [*(a1 + 32) featureFlags];
      v41 = [v40 waitOnHoldEnabled];

      if (v41)
      {
        if ([v12 status] == 1)
        {
          v42 = [v12 smartHoldingSession];
          if (v42)
          {
            v43 = v42;
            if (!v57)
            {

LABEL_43:
              v48 = v12;

              v57 = v48;
              continue;
            }

            [v12 callDuration];
            v45 = v44;
            [v57 callDuration];
            v47 = v46;

            if (v45 > v47)
            {
              goto LABEL_43;
            }
          }
        }
      }
    }

    v5 = [obj countByEnumeratingWithState:&v61 objects:v81 count:16];
  }

  while (v5);
LABEL_48:

  v49 = [*(a1 + 32) callCenterObserver];
  v50 = [v49 callContainer];
  v51 = [v50 frontmostBargeCall];

  v53 = sub_100004778(v52);
  if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67110912;
    v66 = v7 != 0;
    v67 = 1024;
    v68 = v9 != 0;
    v69 = 1024;
    v70 = v58 != 0;
    v71 = 1024;
    v72 = v8 != 0;
    v73 = 1024;
    v74 = v6 != 0;
    v75 = 1024;
    v76 = v51 != 0;
    v77 = 1024;
    v78 = v56 != 0;
    v79 = 1024;
    v80 = v57 != 0;
    _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "ringingCall %d sendingCall %d activeCall %d heldCall %d disconnectingCall %d bargeCall %d screeningCall %d waitOnHoldCall %d", buf, 0x32u);
  }

  if (v56)
  {
    v54 = v56;
  }

  else
  {
    v54 = v57;
  }

  if (v51)
  {
    v54 = v51;
  }

  if (v6)
  {
    v54 = v6;
  }

  if (v8)
  {
    v54 = v8;
  }

  if (v58)
  {
    v54 = v58;
  }

  if (v9)
  {
    v54 = v9;
  }

  if (v7)
  {
    v55 = v7;
  }

  else
  {
    v55 = v54;
  }

  objc_storeStrong((*(*(a1 + 40) + 8) + 40), v55);
}

void sub_10003CE7C(void *a1@<X0>, unsigned __int8 *a2@<X8>)
{
  v3 = [a1 provider];
  v4 = [v3 isSystemProvider];

  *a2 = v4;
}

void sub_10003D068(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10003D384()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100035FE0;

  return sub_100027768();
}

uint64_t sub_10003D434(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

id sub_10003D4D0(uint64_t a1)
{
  if (qword_1006ACF20 != -1)
  {
    sub_10003D514();
  }

  v2 = qword_1006ACF18;

  return v2;
}

uint64_t sub_10003D53C(void *a1)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v34 - v8;
  v10 = [a1 uniqueProxyIdentifierUUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v11 = OBJC_IVAR___CSDRTCReporter_callUUIDToGFTCallReportingSessions;
  swift_beginAccess();
  v12 = *(v1 + v11);
  v13 = v4;
  v14 = sub_100025C58(v9, v12);
  swift_endAccess();
  v15 = *(v13 + 8);
  v15(v9, v3);
  if (!v14)
  {
    v35 = v13;
    v36 = v7;
    v16 = [a1 uniqueProxyIdentifierUUID];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v17 = OBJC_IVAR___CSDRTCReporter_callUUIDToCallReportingSessions;
    swift_beginAccess();
    v14 = sub_100025C58(v9, *(v1 + v17));
    swift_endAccess();
    v15(v9, v3);
    if (!v14)
    {
      v18 = [a1 provider];
      v19 = [v18 isTinCanProvider];

      v20 = [a1 provider];
      v21 = [v20 isFaceTimeProvider];

      if ((v21 & 1) != 0 || v19)
      {
        v22 = [objc_opt_self() sharedInstance];
        v34 = [v22 activeConversationForCall:a1 backedByGroupSession:1];

        v24 = sub_10003D4D0(v23);
        sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
        v25 = swift_allocObject();
        *(v25 + 16) = xmmword_10057D690;
        v26 = [a1 uniqueProxyIdentifierUUID];
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        (*(v35 + 16))(v36, v9, v3);
        v27 = String.init<A>(reflecting:)();
        v29 = v28;
        v15(v9, v3);
        *(v25 + 56) = &type metadata for String;
        *(v25 + 64) = sub_100009D88();
        *(v25 + 32) = v27;
        *(v25 + 40) = v29;
        v30 = v34;
        v31 = static os_log_type_t.default.getter();
        if (v30)
        {
          os_log(_:dso:log:type:_:)("Creating multiway session for call with UUID: %@", 48, 2, &_mh_execute_header, v24, v31, v25);

          v32 = [a1 uniqueProxyIdentifierUUID];
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          v14 = sub_1002BE79C(v30, v9);
          v15(v9, v3);
        }

        else
        {
          os_log(_:dso:log:type:_:)("Creating 1:1 session for call with UUID: %@", 43, 2, &_mh_execute_header, v24, v31, v25);

          return sub_1002BF3E8(a1);
        }
      }

      else
      {
        return 0;
      }
    }
  }

  return v14;
}

uint64_t sub_10003D99C(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v7 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  sub_100007BF0(v7);
  sub_100006688();
  __chkstk_darwin(v8);
  sub_100006948();
  v9 = type metadata accessor for UUID();
  sub_100007FEC();
  v11 = v10;
  __chkstk_darwin(v12);
  sub_100007FDC();
  v13 = sub_100007DAC();
  if (sub_100015468(v13, v14, v9) == 1)
  {
    sub_100009F18();
    sub_100009A04(v15, v16, v17);
    sub_10003DC5C(a2, v18, v19, v20, v21, v22, v23, v24, v35, v36);
    (*(v11 + 8))(a2, v9);
    sub_100009F18();
    return sub_100009A04(v25, v26, v27);
  }

  else
  {
    (*(v11 + 32))(v3, a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_100378914(v3, a2, isUniquelyReferenced_nonNull_native, v30, v31, v32, v33, v34, v35, *v4, v38, v39);
    *v4 = v37;
    return (*(v11 + 8))(a2, v9);
  }
}

uint64_t sub_10003DB74(uint64_t a1)
{

  return swift_once();
}

id sub_10003DB94()
{
  v2 = *(v0 - 312);

  return v2;
}

uint64_t sub_10003DBAC(uint64_t a1)
{

  return BidirectionalCollection<>.joined(separator:)();
}

uint64_t sub_10003DC5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100010094();
  sub_10000C23C();
  sub_100021E24();
  if (v12)
  {
    v13 = v11;
    swift_isUniquelyReferenced_nonNull_native();
    sub_100021F7C();
    sub_10026D814(&qword_1006A7680, &unk_1005827D0);
    sub_10000EAB8();
    sub_1000076CC();
    v14 = *(a10 + 48);
    v15 = type metadata accessor for UUID();
    sub_100007FEC();
    v17 = v16;
    v19 = *(v18 + 72) * v13;
    (*(v16 + 8))(v14 + v19, v15);
    (*(v17 + 32))(v10, *(a10 + 56) + v19, v15);
    sub_1000085E4();
    sub_100033024(v20, v21, &protocol conformance descriptor for UUID);
    sub_100007968();
    _NativeDictionary._delete(at:)();
    sub_10000F394();
  }

  else
  {
    type metadata accessor for UUID();
    sub_100008D20();
  }

  sub_100008348();

  return sub_10000AF74(v22, v23, v24, v25);
}

__n128 sub_10003DDB4(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a15, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __n128 a16)
{
  result = a16;
  a1[1] = a16;
  return result;
}

uint64_t sub_10003DDFC()
{
}

_OWORD *sub_10003DE1C(uint64_t a1)
{

  return sub_100040430();
}

void *sub_10003DE80(void *a1)
{
  v1 = [a1 callUUID];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;

  v5 = sub_10003DF24(v2, v4, 0, 0xD000000000000012, 0x8000000100565570, 0xD000000000000021, 0x8000000100565520, 0);

  return v5;
}

void *sub_10003DF24(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v79 = a7;
  v80 = a8;
  v78 = a6;
  v81 = a4;
  v82 = a5;
  v10 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  v11 = __chkstk_darwin(v10 - 8);
  v83 = &v76 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v76 - v13;
  v15 = type metadata accessor for UUID();
  *&v84 = *(v15 - 8);
  __chkstk_darwin(v15);
  v77 = &v76 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchPredicate();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = (&v76 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = *(v8 + OBJC_IVAR___CSDRTCReporter_queue);
  *v20 = v21;
  (*(v18 + 104))(v20, enum case for DispatchPredicate.onQueue(_:), v17);
  v22 = v21;
  LOBYTE(v21) = _dispatchPreconditionTest(_:)();
  result = (*(v18 + 8))(v20, v17);
  if ((v21 & 1) == 0)
  {
    __break(1u);
    goto LABEL_26;
  }

  sub_10026D814(&unk_1006A39A0, &unk_10057D700);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10057CA70;
  result = kRTCReportingSessionInfoClientType;
  if (!kRTCReportingSessionInfoClientType)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v25;
  v26 = [objc_allocWithZone(NSNumber) initWithChar:27];
  v27 = sub_100006AF0(0, &qword_1006A3480, NSNumber_ptr);
  *(inited + 72) = v27;
  *(inited + 48) = v26;
  result = kRTCReportingSessionInfoClientVersion;
  if (!kRTCReportingSessionInfoClientVersion)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 88) = v28;
  *(inited + 120) = &type metadata for String;
  *(inited + 96) = 3223088;
  *(inited + 104) = 0xE300000000000000;
  result = kRTCReportingSessionInfoSessionID;
  if (!kRTCReportingSessionInfoSessionID)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  *(inited + 128) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 136) = v29;
  v30 = [objc_allocWithZone(NSNumber) initWithInteger:String.hashValue.getter()];
  *(inited + 168) = v27;
  *(inited + 144) = v30;
  result = kRTCReportingSessionInfoBatchEvent;
  if (!kRTCReportingSessionInfoBatchEvent)
  {
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  *(inited + 176) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 184) = v31;
  v32 = [objc_allocWithZone(NSNumber) initWithBool:1];
  *(inited + 216) = v27;
  *(inited + 192) = v32;
  v33 = Dictionary.init(dictionaryLiteral:)();
  if (a3)
  {
    result = kRTCReportingSessionInfoHierarchyToken;
    v34 = v84;
    if (!kRTCReportingSessionInfoHierarchyToken)
    {
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v88 = sub_100006AF0(0, &unk_1006A39B0, NSObject_ptr);
    *&v87 = a3;
    sub_10003EBF0(&v87, v86);
    v35 = a3;
    swift_isUniquelyReferenced_nonNull_native();
    v85 = v33;
    sub_100040430();

    v33 = v85;
  }

  else
  {
    v34 = v84;
  }

  sub_10026D814(&unk_1006A61D0, &qword_100581190);
  v36 = swift_initStackObject();
  v84 = xmmword_10057D6A0;
  *(v36 + 16) = xmmword_10057D6A0;
  result = kRTCReportingUserInfoClientName;
  v38 = v82;
  v37 = v83;
  if (!kRTCReportingUserInfoClientName)
  {
    goto LABEL_30;
  }

  *(v36 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v36 + 40) = v39;
  *(v36 + 48) = v81;
  *(v36 + 56) = v38;
  result = kRTCReportingUserInfoServiceName;
  if (!kRTCReportingUserInfoServiceName)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  *(v36 + 64) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v36 + 72) = v40;
  v41 = v79;
  *(v36 + 80) = v78;
  *(v36 + 88) = v41;

  v42 = Dictionary.init(dictionaryLiteral:)();
  if (v80)
  {
    v43 = [v80 conversationID];
    if (v43)
    {
      v44 = v43;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v45 = 0;
    }

    else
    {
      v45 = 1;
    }

    v46 = v77;
    sub_10000AF74(v37, v45, 1, v15);
    sub_100286068(v37, v14);
    if (sub_100015468(v14, 1, v15) == 1)
    {
      goto LABEL_18;
    }

    (*(v34 + 32))(v46, v14, v15);
    result = kRTCReportingSessionInfoSamplingUUIID;
    if (kRTCReportingSessionInfoSamplingUUIID)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v47 = UUID.uuidString.getter();
      v88 = &type metadata for String;
      *&v87 = v47;
      *(&v87 + 1) = v48;
      sub_10003EBF0(&v87, v86);
      swift_isUniquelyReferenced_nonNull_native();
      v85 = v33;
      sub_100040430();

      v33 = v85;
      (*(v34 + 8))(v46, v15);
      goto LABEL_21;
    }

LABEL_33:
    __break(1u);
    return result;
  }

  sub_10000AF74(v14, 1, 1, v15);
LABEL_18:
  sub_1000099A4(v14, &unk_1006A3DD0, &unk_10057C9D0);
LABEL_21:
  sub_10003E7C0();
  v50 = v49;
  sub_10003F8F8();
  v52 = v51;
  v53 = objc_allocWithZone(RTCReporting);
  v54 = sub_10003FBE8(v50, v52, _swiftEmptyArrayStorage);
  v55 = v54;
  if (v54)
  {
    v56 = sub_10003D4D0(v54);
    sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
    v57 = swift_allocObject();
    *(v57 + 16) = xmmword_10057E830;
    *&v87 = v55;
    sub_100006AF0(0, &qword_1006A3968, RTCReporting_ptr);
    *&v84 = v55;
    v58 = String.init<A>(reflecting:)();
    v60 = v59;
    *(v57 + 56) = &type metadata for String;
    v61 = sub_100009D88();
    *(v57 + 64) = v61;
    *(v57 + 32) = v58;
    *(v57 + 40) = v60;
    *&v87 = v33;
    sub_10026D814(&unk_1006A2A00, &unk_10057D710);
    v62 = String.init<A>(reflecting:)();
    *(v57 + 96) = &type metadata for String;
    *(v57 + 104) = v61;
    *(v57 + 72) = v62;
    *(v57 + 80) = v63;
    *&v87 = v42;
    sub_10026D814(&qword_1006A2BE0, &unk_10057E8B0);
    v64 = String.init<A>(reflecting:)();
    *(v57 + 136) = &type metadata for String;
    *(v57 + 144) = v61;
    *(v57 + 112) = v64;
    *(v57 + 120) = v65;
    v66 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("Created reporting session %@ with sessionInfo: %@, userInfo: %@", 63, 2, &_mh_execute_header, v56, v66, v57);

    [v84 startConfigurationWithCompletionHandler:0];
  }

  else
  {
    v67 = sub_10003D4D0(0);
    sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
    v68 = swift_allocObject();
    *(v68 + 16) = v84;
    *&v87 = v33;
    sub_10026D814(&unk_1006A2A00, &unk_10057D710);
    v69 = String.init<A>(reflecting:)();
    v71 = v70;
    *(v68 + 56) = &type metadata for String;
    v72 = sub_100009D88();
    *(v68 + 64) = v72;
    *(v68 + 32) = v69;
    *(v68 + 40) = v71;
    *&v87 = v42;
    sub_10026D814(&qword_1006A2BE0, &unk_10057E8B0);
    v73 = String.init<A>(reflecting:)();
    *(v68 + 96) = &type metadata for String;
    *(v68 + 104) = v72;
    *(v68 + 72) = v73;
    *(v68 + 80) = v74;
    v75 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("Failed to create reporting session with sessionInfo: %@, userInfo: %@", 69, 2, &_mh_execute_header, v67, v75, v68);
  }

  return v55;
}

void sub_10003E7C0()
{
  sub_100027EF4();
  if (v1)
  {
    sub_10026D814(&unk_1006A7590, &qword_100582CF0);
    v3 = sub_10001AC80();
  }

  else
  {
    v3 = _swiftEmptyDictionarySingleton;
  }

  v4 = 1 << *(v0 + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(v0 + 64);
  sub_1004582A8();
  v7 = v3 + 8;

  v8 = 0;
  if (!v6)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    sub_10000B904();
    v12 = *v10;
    v11 = v10[1];
    sub_100006A94(v14 + 32 * v13, v35);
    *&v34 = v12;
    *(&v34 + 1) = v11;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_10003EBF0(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_10003EBF0(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_10003EBF0(v31, v32);
    v15 = AnyHashable._rawHashValue(seed:)(v3[5]) & ~(-1 << *(v3 + 32));
    if (((-1 << v15) & ~v7[v15 >> 6]) == 0)
    {
      sub_10000E7C0();
      while (1)
      {
        sub_100007A0C();
        if (v19)
        {
          if (v17)
          {
            goto LABEL_26;
          }
        }

        if (v16 == v18)
        {
          v16 = 0;
        }

        if (v7[v16] != -1)
        {
          sub_10000A950();
          goto LABEL_22;
        }
      }
    }

    sub_10000FE84();
LABEL_22:
    v6 &= v6 - 1;
    sub_100007DC0();
    *(v7 + v20) |= v21;
    v23 = v3[6] + 40 * v22;
    *v23 = v24;
    *(v23 + 16) = v25;
    *(v23 + 32) = v26;
    sub_10003EBF0(v32, (v3[7] + 32 * v22));
    ++v3[2];
  }

  while (v6);
LABEL_8:
  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v2)
    {

      return;
    }

    v6 = *(v0 + 64 + 8 * v9);
    ++v8;
    if (v6)
    {
      v8 = v9;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

char *sub_10003EA40(void *a1)
{
  a1[2] = 0;
  a1[3] = 0;
  a1[4] = v1;
  return a1 + v2;
}

uint64_t sub_10003EA5C()
{
  *(v1 + 4) = v0;
  *(v1 + 12) = 2080;

  return CSDConversationSpatialPersonaResolver.SpatialPersonaCounter.description.getter();
}

uint64_t sub_10003EB64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);

  return sub_10002741C(v4, v5, va);
}

id sub_10003EBA8(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

_OWORD *sub_10003EBF0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_10003EC70()
{
  v1 = sub_100008184();

  return _swift_deallocObject(v1);
}

uint64_t sub_10003ECC4(uint64_t result)
{
  v1 = (result + OBJC_IVAR___CSDRouteController_pickWhenAvailableRouteIdentifier);
  if (*(result + OBJC_IVAR___CSDRouteController_pickWhenAvailableRouteIdentifier + 8))
  {
    if (qword_1006A0AA0 != -1)
    {
      swift_once();
    }

    v2 = qword_1006BA380;
    sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_10057D690;
    v4 = *v1;
    v5 = v1[1];

    v6 = sub_10001E478(v4, v5);
    v8 = v7;

    *(v3 + 56) = &type metadata for String;
    *(v3 + 64) = sub_100009D88();
    *(v3 + 32) = v6;
    *(v3 + 40) = v8;
    v9 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("Stopping waiting for route identifier %@ to become available", 60, 2, &_mh_execute_header, v2, v9, v3);

    *v1 = 0;
    v1[1] = 0;
  }

  return result;
}

uint64_t sub_10003EE24(uint64_t a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS();
  v7 = *(v15 - 8);
  __chkstk_darwin(v15);
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14[1] = *&v1[OBJC_IVAR____TtC13callservicesd25IntelligentRoutingManager_queue];
  v10 = swift_allocObject();
  *(v10 + 16) = v1;
  *(v10 + 24) = a1;
  aBlock[4] = sub_10002DA5C;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004CEC;
  aBlock[3] = &unk_10062D720;
  v11 = _Block_copy(aBlock);
  v12 = v1;
  static DispatchQoS.unspecified.getter();
  v16 = _swiftEmptyArrayStorage;
  sub_10000AC00();
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_10001000C(&qword_1006A2CD0, &unk_1006A2960, &unk_10057D6E0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v11);
  (*(v4 + 8))(v6, v3);
  (*(v7 + 8))(v9, v15);
}

uint64_t sub_10003F0C8()
{
  v1 = sub_1000081EC();

  return _swift_deallocObject(v1);
}

uint64_t sub_10003F100(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10003F124(void (*a1)(void))
{
  a1(*(v1 + 24));
  v3 = sub_1000081EC();

  return _swift_deallocObject(v3);
}

id sub_10003F2C0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = [CSDAudioSessionProvider getAudioSessionFor:WeakRetained];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id sub_10003F374(void *a1)
{
  v2 = [a1 audioInterruptionProviderType];
  if (v2 == 1)
  {
    type metadata accessor for AVAudioSessionProvider();
    swift_initStackObject();
    result = sub_10003B7A8(a1);
    if (result)
    {
      return result;
    }

    sub_1003C53C0();
    swift_allocError();
    v5 = 1;
  }

  else
  {
    if (v2 == 2)
    {
      type metadata accessor for CSDAVAudioClient();
      return swift_allocObject();
    }

    sub_1003C53C0();
    swift_allocError();
    v5 = 0;
  }

  *v4 = v5;
  return swift_willThrow();
}

id sub_10003F668(char a1)
{
  v4 = 0;
  if ([v1 muteSessionInput:a1 & 1 error:&v4])
  {
    return v4;
  }

  v3 = v4;
  _convertNSErrorToError(_:)();

  return swift_willThrow();
}

uint64_t sub_10003F714(uint64_t a1, char a2, char a3, void *a4)
{
  *(a1 + qword_1006A4D80) = a2;
  *(a1 + qword_1006A4D78) = a3;
  v6 = qword_1006A4D70;
  v7 = *(a1 + qword_1006A4D70);
  if (v7)
  {
    if (a4)
    {
      sub_100006AF0(0, &unk_1006A4E30, off_100616638);
      v8 = v7;
      v9 = a4;
      v10 = static NSObject.== infix(_:_:)();

      if (v10)
      {
        return sub_100019E3C();
      }
    }
  }

  else if (!a4)
  {
    return sub_100019E3C();
  }

  if (qword_1006A0AA0 != -1)
  {
    swift_once();
  }

  v11 = qword_1006BA380;
  sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_10057D690;
  v13 = sub_100291244(a4);
  v15 = v14;
  *(v12 + 56) = &type metadata for String;
  *(v12 + 64) = sub_100009D88();
  *(v12 + 32) = v13;
  *(v12 + 40) = v15;
  v16 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("Updating activeRelayClientTransport to %@", 41, 2, &_mh_execute_header, v11, v16, v12);

  v17 = *(a1 + v6);
  *(a1 + v6) = a4;
  v18 = a4;

  return sub_100019E3C();
}

void sub_10003F8DC(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC13callservicesd23LocalAudioRouteProvider_lastUserPickedRoute);
  *(a1 + OBJC_IVAR____TtC13callservicesd23LocalAudioRouteProvider_lastUserPickedRoute) = 0;
}

void sub_10003F8F8()
{
  sub_100027EF4();
  if (v1)
  {
    sub_10026D814(&unk_1006A7590, &qword_100582CF0);
    v3 = sub_10001AC80();
  }

  else
  {
    v3 = _swiftEmptyDictionarySingleton;
  }

  sub_1000153A8();
  v6 = v5 & v4;
  sub_1004582A8();

  v7 = 0;
  if (!v6)
  {
    goto LABEL_5;
  }

  do
  {
LABEL_9:
    v9 = (v7 << 10) | (16 * __clz(__rbit64(v6)));
    v10 = (*(v0 + 48) + v9);
    v11 = v10[1];
    v12 = (*(v0 + 56) + v9);
    v14 = *v12;
    v13 = v12[1];
    *&v46 = *v10;
    *(&v46 + 1) = v11;

    swift_dynamicCast();
    swift_dynamicCast();
    v15 = sub_1000053D0();
    v16 = sub_10003EBF0(v15, v45);
    sub_100006C58(v16, v17, v18, v19, v20, v21, v22, v23, v14, v13, v31, v33, v34, v36, v37, v39, v40, v41, v42, v43, v44);
    sub_10003EBF0(v45, &v46);
    AnyHashable._rawHashValue(seed:)(v3[5]);
    sub_10000EAC4();
    sub_10004A064();
    if (v24)
    {
      sub_10000E7C0();
      while (1)
      {
        sub_100007A0C();
        if (v24)
        {
          if (v26)
          {
            goto LABEL_23;
          }
        }

        if (v25 == v27)
        {
          v25 = 0;
        }

        if (v3[v25 + 8] != -1)
        {
          sub_10000A950();
          goto LABEL_19;
        }
      }
    }

    sub_10000FE84();
LABEL_19:
    v6 &= v6 - 1;
    sub_100007DC0();
    sub_100008C78(v28, v29, v30, v32, v35, v38);
  }

  while (v6);
LABEL_5:
  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v8 >= v2)
    {

      return;
    }

    v6 = *(v0 + 64 + 8 * v8);
    ++v7;
    if (v6)
    {
      v7 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
}

void sub_10003FAEC(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

id sub_10003FB20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_1002CF320(a1, a2, a3, a4, 0);
}

uint64_t sub_10003FB38@<X0>(uint64_t a1@<X8>)
{
  v4 = *(v1 + a1);
  v5 = *(v1 + a1 + 8);
  v6 = (v2 + a1);
  *v6 = v4;
  v6[1] = v5;
}

id sub_10003FBE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v6.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  if (a3)
  {
    v7.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v7.super.isa = 0;
  }

  v8 = [v3 initWithSessionInfo:v5.super.isa userInfo:v6.super.isa frameworksToCheck:v7.super.isa];

  return v8;
}

void *sub_10003FCD0(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  __chkstk_darwin(v6 - 8);
  v8 = &v49 - v7;
  v9 = type metadata accessor for UUID();
  v51 = *(v9 - 8);
  v10 = __chkstk_darwin(v9);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v50 = &v49 - v13;
  v14 = type metadata accessor for DispatchPredicate();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = (&v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = *(v3 + OBJC_IVAR___CSDRTCReporter_queue);
  *v17 = v18;
  (*(v15 + 104))(v17, enum case for DispatchPredicate.onQueue(_:), v14);
  v19 = v18;
  LOBYTE(v18) = _dispatchPreconditionTest(_:)();
  result = (*(v15 + 8))(v17, v14);
  if ((v18 & 1) == 0)
  {
    __break(1u);
    goto LABEL_23;
  }

  result = kRTCReportingMessageParametersCategory;
  if (!kRTCReportingMessageParametersCategory)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v55 = &type metadata for Int;
  *&v54 = 2;
  sub_10003EBF0(&v54, v53);
  swift_isUniquelyReferenced_nonNull_native();
  v52 = _swiftEmptyDictionarySingleton;
  sub_100040430();

  result = kRTCReportingMessageParametersType;
  if (!kRTCReportingMessageParametersType)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v21 = v52;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v55 = &type metadata for Int;
  *&v54 = 1;
  sub_10003EBF0(&v54, v53);
  swift_isUniquelyReferenced_nonNull_native();
  v52 = v21;
  sub_100040430();

  v22 = v52;
  v23 = objc_allocWithZone(type metadata accessor for RTCCSDCallInfo(0));
  v24 = a2;
  v25 = a1;
  sub_100040584(v25, a2);
  v27 = v26;
  v28 = [*(v3 + OBJC_IVAR___CSDRTCReporter_appleIDUtilities) isSignedIntoiCloud];
  v27[OBJC_IVAR____TtC13callservicesd14RTCCSDCallInfo_isSignedIntoiCloud] = v28;
  v29 = [v25 callUUID];
  v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v32 = v31;

  v33 = OBJC_IVAR___CSDRTCReporter_relayDeviceRouteChangesByCallUUID;
  swift_beginAccess();
  v34 = sub_100005E74(v30, v32, *(v3 + v33));
  swift_endAccess();

  *&v27[OBJC_IVAR____TtC13callservicesd14RTCCSDCallInfo_relayDeviceRouteChanges] = v34;

  v35 = sub_100053730(&unk_1006A3990, type metadata accessor for RTCCSDCallInfo, &unk_100582400);
  if (!v35)
  {

    return v22;
  }

  v36 = v35;
  v37 = [v25 provider];
  v38 = [v37 isTelephonyProvider];

  if (v38)
  {
    v39 = 0xD000000000000021;
    v40 = 0x8000000100565520;
    goto LABEL_18;
  }

  if (![v25 isConversation])
  {
    v40 = 0x8000000100565B30;
    v39 = 0xD000000000000024;
    goto LABEL_18;
  }

  v41 = [v25 uniqueProxyIdentifierUUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  swift_beginAccess();
  sub_1002CB574();
  if (sub_100015468(v8, 1, v9) == 1)
  {
    v39 = 0x6E6F6973736573;
    sub_1000099A4(v8, &unk_1006A3DD0, &unk_10057C9D0);
    swift_endAccess();
    (*(v51 + 8))(v12, v9);
  }

  else
  {
    v43 = v50;
    v42 = v51;
    (*(v51 + 32))(v50, v8, v9);
    swift_endAccess();
    v44 = *(v42 + 8);
    v44(v12, v9);
    v45 = OBJC_IVAR___CSDRTCReporter_groupUUIDToConversationInfo;
    swift_beginAccess();
    v46 = sub_100025C58(v43, *(v3 + v45));
    if (v46)
    {
      v47 = v46;
      swift_endAccess();
      if (*(v47 + OBJC_IVAR____TtC13callservicesd22RTCCSDConversationInfo_uPlusOneModeAtStart))
      {

        v44(v43, v9);
        v40 = 0xE600000000000000;
        v39 = 0x7961776F7774;
        goto LABEL_18;
      }

      v39 = 0x6E6F6973736573;
      v44(v43, v9);
    }

    else
    {
      v39 = 0x6E6F6973736573;
      swift_endAccess();
      v44(v43, v9);
    }
  }

  v40 = 0xE700000000000000;
LABEL_18:
  result = kRTCReportingUserInfoServiceName;
  if (!kRTCReportingUserInfoServiceName)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v55 = &type metadata for String;
  *&v54 = v39;
  *(&v54 + 1) = v40;
  sub_10003EBF0(&v54, v53);
  swift_isUniquelyReferenced_nonNull_native();
  v52 = v36;
  sub_100040430();

  result = kRTCReportingMessageParametersPayload;
  if (kRTCReportingMessageParametersPayload)
  {
    v48 = v52;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v55 = sub_10026D814(&unk_1006A2A00, &unk_10057D710);
    *&v54 = v48;
    sub_10003EBF0(&v54, v53);
    swift_isUniquelyReferenced_nonNull_native();
    v52 = v22;
    sub_100040430();

    return v52;
  }

LABEL_26:
  __break(1u);
  return result;
}

_OWORD *sub_100040430()
{
  sub_10003D4BC();
  v2 = v1;
  v5 = sub_10000FE04(v3, v4);
  sub_100005208(v5, v6);
  sub_100008598();
  if (v9)
  {
    __break(1u);
LABEL_14:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v10 = v7;
  v11 = v8;
  sub_10026D814(&qword_1006A39C0, &qword_10057E8C0);
  v12 = sub_1000113D4();
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v12, v13))
  {
    v14 = sub_10003EB8C();
    sub_100005208(v14, v2);
    sub_10000C758();
    if (!v16)
    {
      goto LABEL_14;
    }

    v10 = v15;
  }

  if (v11)
  {
    sub_100009B7C((*(*v0 + 56) + 32 * v10));
    sub_100006B30();
    sub_100035CE8();

    return sub_10003EBF0(v17, v18);
  }

  else
  {
    sub_10037B364();
    sub_100049718(v21, v22, v23, v24, v25);
    sub_100035CE8();
  }
}

uint64_t type metadata accessor for RTCCSDCallInfo(uint64_t a1)
{
  result = qword_1006A6CD8;
  if (!qword_1006A6CD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100040584(void *a1, void *a2)
{
  v3 = v2;
  v245 = a2;
  ObjectType = swift_getObjectType();
  v6 = sub_10026D814(&unk_1006A52C0, &unk_10057D930);
  __chkstk_darwin(v6 - 8);
  sub_100007BAC();
  v9 = v7 - v8;
  __chkstk_darwin(v10);
  sub_100005F58();
  sub_10000A5F0();
  __chkstk_darwin(v11);
  v242 = &v213 - v12;
  v13 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  __chkstk_darwin(v13 - 8);
  sub_100007BAC();
  sub_10000A5F0();
  __chkstk_darwin(v14);
  v231 = &v213 - v15;
  v230 = type metadata accessor for UUID();
  sub_100007FEC();
  v216 = v16;
  __chkstk_darwin(v17);
  v215 = &v213 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for Date();
  sub_100007FEC();
  v21 = v20;
  __chkstk_darwin(v22);
  sub_100007BAC();
  sub_10000A5F0();
  __chkstk_darwin(v23);
  sub_100005F58();
  sub_10000A5F0();
  __chkstk_darwin(v24);
  sub_100005F58();
  sub_10000A5F0();
  __chkstk_darwin(v25);
  sub_100005F58();
  sub_10000A5F0();
  __chkstk_darwin(v26);
  sub_100005F58();
  sub_10000A5F0();
  __chkstk_darwin(v27);
  sub_100005F58();
  sub_10000A5F0();
  __chkstk_darwin(v28);
  sub_100005F58();
  sub_10000A5F0();
  __chkstk_darwin(v29);
  sub_100005F58();
  sub_10000A5F0();
  __chkstk_darwin(v30);
  sub_100005F58();
  sub_10000A5F0();
  __chkstk_darwin(v31);
  sub_100005F58();
  sub_10000A5F0();
  __chkstk_darwin(v32);
  sub_100005F58();
  sub_10000A5F0();
  __chkstk_darwin(v33);
  sub_100005F58();
  sub_10000A5F0();
  __chkstk_darwin(v34);
  v36 = &v213 - v35;
  v37 = &v3[OBJC_IVAR____TtC13callservicesd14RTCCSDCallInfo_relativeStart];
  *v37 = 0;
  v217 = v37;
  v37[8] = 1;
  v38 = &v3[OBJC_IVAR____TtC13callservicesd14RTCCSDCallInfo_relativeEnd];
  *v38 = 0;
  v218 = v38;
  v38[8] = 1;
  *&v3[OBJC_IVAR____TtC13callservicesd14RTCCSDCallInfo_relayDeviceRouteChanges] = 0;
  v39 = &v3[OBJC_IVAR____TtC13callservicesd14RTCCSDCallInfo_CID];
  *v39 = 0;
  v39[1] = 0;
  v214 = v39;
  v3[OBJC_IVAR____TtC13callservicesd14RTCCSDCallInfo_isSignedIntoiCloud] = 2;
  v40 = a1;
  v41 = [v40 callUUID];
  v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v44 = v43;

  v45 = &v3[OBJC_IVAR____TtC13callservicesd14RTCCSDCallInfo_callUUID];
  *v45 = v42;
  v45[1] = v44;
  v46 = [v40 disconnectedReason];
  *&v3[OBJC_IVAR____TtC13callservicesd14RTCCSDCallInfo_endReason] = v46;
  v47 = [v40 providerErrorCode];
  *&v3[OBJC_IVAR____TtC13callservicesd14RTCCSDCallInfo_providerErrorCode] = v47;
  v48 = [v40 providerEndedReason];
  *&v3[OBJC_IVAR____TtC13callservicesd14RTCCSDCallInfo_providerEndedReason] = v48;
  v49 = [v40 isIncoming];
  v3[OBJC_IVAR____TtC13callservicesd14RTCCSDCallInfo_incoming] = v49;
  v50 = [v40 isConnecting];
  v3[OBJC_IVAR____TtC13callservicesd14RTCCSDCallInfo_connected] = v50;
  v51 = [v40 isConferenced];
  v3[OBJC_IVAR____TtC13callservicesd14RTCCSDCallInfo_currentlyGrouped] = v51;
  v52 = [v40 isHostedOnCurrentDevice];
  v3[OBJC_IVAR____TtC13callservicesd14RTCCSDCallInfo_relay] = v52 ^ 1;
  v53 = [v40 isConversation];
  v3[OBJC_IVAR____TtC13callservicesd14RTCCSDCallInfo_isConversation] = v53;
  v54 = [v40 nearbyMode];
  sub_100008BB4(v54, OBJC_IVAR____TtC13callservicesd14RTCCSDCallInfo_nearbyMode);
  v55 = [v40 joinedFromLink];
  v3[OBJC_IVAR____TtC13callservicesd14RTCCSDCallInfo_fromLink] = v55;
  *&v3[OBJC_IVAR____TtC13callservicesd14RTCCSDCallInfo_userScore] = -1;
  v56 = [v40 liveVoicemailStatus];
  *&v3[OBJC_IVAR____TtC13callservicesd14RTCCSDCallInfo_liveVoicemailStatus] = v56;
  v57 = [v40 originatingUIType];
  *&v3[OBJC_IVAR____TtC13callservicesd14RTCCSDCallInfo_originatingUIType] = v57;
  v58 = [v40 startAsOneToOneMode];
  v3[OBJC_IVAR____TtC13callservicesd14RTCCSDCallInfo_uPlusOneModeAtStart] = v58;
  v59 = [v40 isOneToOneModeEnabled];
  v3[OBJC_IVAR____TtC13callservicesd14RTCCSDCallInfo_uPlusOneModeAtEnd] = v59;
  Date.init()();
  v237 = v21;
  v60 = *(v21 + 32);
  v225 = OBJC_IVAR____TtC13callservicesd14RTCCSDCallInfo_timebase;
  v234 = v19;
  v236 = v21 + 32;
  v244 = v60;
  v60(&v3[OBJC_IVAR____TtC13callservicesd14RTCCSDCallInfo_timebase], v36, v19);
  v248 = 0;
  v249 = 0;
  v61 = [v40 callCenter];
  v243 = ObjectType;
  v240 = v9;
  if (v61)
  {
    v62 = v61;
    v63 = [v61 queue];
    v64 = swift_allocObject();
    *(v64 + 16) = &v248;
    *(v64 + 24) = v62;
    v65 = swift_allocObject();
    *(v65 + 16) = sub_100053068;
    *(v65 + 24) = v64;
    v241 = v64;
    aBlock[4] = sub_1000200A4;
    aBlock[5] = v65;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10002007C;
    aBlock[3] = &unk_10062A3E8;
    v66 = _Block_copy(aBlock);
    v67 = v62;

    dispatch_sync(v63, v66);

    _Block_release(v66);
    LOBYTE(v67) = swift_isEscapingClosureAtFileLocation();

    if (v67)
    {
      __break(1u);
LABEL_90:
      __break(1u);
      goto LABEL_91;
    }

    v68 = v248;
    v61 = v249;
    v239 = sub_100053068;
  }

  else
  {
    v68 = 0;
    v239 = 0;
    v241 = 0;
  }

  v69 = &v3[OBJC_IVAR____TtC13callservicesd14RTCCSDCallInfo_audioRoute];
  *v69 = v68;
  v69[1] = v61;

  v70 = [v40 provider];
  v71 = [v70 isTelephonyProvider];

  if (v71)
  {
    sub_10000FA84(OBJC_IVAR____TtC13callservicesd14RTCCSDCallInfo_setupTimeMs);
    *(v72 + 8) = 1;
    sub_10000FA84(*(v73 + 3112));
    *(v74 + 8) = v75;
    sub_10000FA84(OBJC_IVAR____TtC13callservicesd14RTCCSDCallInfo_durationMs);
    *(v76 + 8) = v77;
    v3[OBJC_IVAR____TtC13callservicesd14RTCCSDCallInfo_startAsHandoff] = 0;
    v3[OBJC_IVAR____TtC13callservicesd14RTCCSDCallInfo_endDueToHandoff] = 0;
    v3[OBJC_IVAR____TtC13callservicesd14RTCCSDCallInfo_remoteDoesHandoff] = 0;
    sub_100017D94();
    v79 = v78;
    sub_100017D94();
    if (v79 > 10.0)
    {
      if (v80 <= 30.0)
      {
        sub_100015ACC();
        v86 = 30;
      }

      else
      {
        sub_100017D94();
        if (v81 <= 60.0)
        {
          sub_100015ACC();
          v86 = 60;
        }

        else
        {
          sub_100017D94();
          if (v82 <= 300.0)
          {
            sub_100015ACC();
            v86 = 300;
          }

          else
          {
            sub_100017D94();
            if (v83 <= 1800.0)
            {
              sub_100015ACC();
              v86 = 1800;
            }

            else
            {
              sub_100017D94();
              sub_100015ACC();
              if (v85 <= 3600.0)
              {
                v86 = 3600;
              }

              else
              {
                v86 = 10000;
              }
            }
          }
        }
      }

      *v84 = v86;
      *(v84 + 8) = 0;
      goto LABEL_62;
    }

    sub_100017248();
    if (!(v89 ^ v90 | v204))
    {
      goto LABEL_96;
    }

    if (v106 <= -9.22337204e18)
    {
LABEL_97:
      __break(1u);
LABEL_98:
      __break(1u);
LABEL_99:
      __break(1u);
      goto LABEL_100;
    }

    sub_100015FEC();
    if (!v89)
    {
      goto LABEL_98;
    }

    v108 = &v3[OBJC_IVAR____TtC13callservicesd14RTCCSDCallInfo_bucketedDuration];
    *v108 = v107;
    v108[8] = 0;
    goto LABEL_62;
  }

  sub_10000FA84(OBJC_IVAR____TtC13callservicesd14RTCCSDCallInfo_bucketedDuration);
  *(v87 + 8) = 1;
  sub_100017D94();
  sub_100017248();
  if (!(v89 ^ v90 | v204))
  {
    goto LABEL_90;
  }

  if (v88 <= -9.22337204e18)
  {
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
LABEL_93:
    __break(1u);
    goto LABEL_94;
  }

  sub_100015FEC();
  if (!v89)
  {
    goto LABEL_92;
  }

  v92 = &v3[OBJC_IVAR____TtC13callservicesd14RTCCSDCallInfo_durationMs];
  *v92 = v91;
  v92[8] = 0;
  v93 = [v40 startAsHandoff];
  v3[OBJC_IVAR____TtC13callservicesd14RTCCSDCallInfo_startAsHandoff] = v93;
  v94 = [v40 endDueToHandoff];
  v3[OBJC_IVAR____TtC13callservicesd14RTCCSDCallInfo_endDueToHandoff] = v94;
  v95 = [v40 remoteDoesHandoff];
  v3[OBJC_IVAR____TtC13callservicesd14RTCCSDCallInfo_remoteDoesHandoff] = v95;
  v96 = [v40 dateSentInvitation];
  if (v96)
  {
    v97 = v228;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v98 = v234;
    v99 = v244;
    v244(v229, v97, v234);
    v100 = [v40 dateCreated];
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    Date.timeIntervalSince(_:)();
    v101 = *(v237 + 8);
    v101(v36, v98);
    v102 = sub_10001AC14();
    (v101)(v102);
    sub_100017248();
    if (!(v89 ^ v90 | v204))
    {
      goto LABEL_93;
    }

    if (v103 <= -9.22337204e18)
    {
LABEL_94:
      __break(1u);
LABEL_95:
      __break(1u);
LABEL_96:
      __break(1u);
      goto LABEL_97;
    }

    sub_100015FEC();
    if (!v89)
    {
      goto LABEL_95;
    }

    v105 = v104;
  }

  else
  {
    v105 = 0;
    v98 = v234;
    v99 = v244;
  }

  v109 = &v3[OBJC_IVAR____TtC13callservicesd14RTCCSDCallInfo_setupTimeMs];
  *v109 = v105;
  v109[8] = v96 == 0;
  v110 = [v40 dateConnected];
  v111 = v237;
  v112 = v232;
  if (v110)
  {
    v113 = v110;
    v114 = v227;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v99(v112, v114, v98);
    v115 = [v40 dateStartedConnecting];
    v116 = v238;
    v117 = v233;
    if (v115)
    {
      v118 = v115;
      v119 = v223;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v120 = v224;
      v244(v224, v119, v98);
      v99 = v244;
      Date.timeIntervalSince(_:)();
      v121 = *(v111 + 8);
      v121(v120, v98);
      v122 = sub_10001AC14();
      (v121)(v122);
      sub_100017248();
      if (!(v89 ^ v90 | v204))
      {
        goto LABEL_99;
      }

      if (v123 <= -9.22337204e18)
      {
LABEL_100:
        __break(1u);
LABEL_101:
        __break(1u);
        return;
      }

      sub_100015FEC();
      v116 = v238;
      if (!v89)
      {
        goto LABEL_101;
      }

      v126 = 0;
      v127 = v125;
      goto LABEL_44;
    }

    v128 = sub_100018F90();
    v129(v128);
    v127 = 0;
    v126 = 1;
  }

  else
  {
    v127 = 0;
    v126 = 1;
    v116 = v238;
    v117 = v233;
  }

  v124 = &qword_1006A6000;
LABEL_44:
  v130 = &v3[v124[389]];
  *v130 = v127;
  v130[8] = v126;
  if (v245)
  {
    v131 = [v245 timebase];
    v132 = v226;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v99(v117, v132, v98);
    v133 = v225;
    swift_beginAccess();
    (*(v111 + 24))(&v3[v133], v117, v98);
    swift_endAccess();
    v134 = [v40 dateConnected];
    if (v134)
    {
      v135 = v134;
      v136 = v219;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v137 = v136;
      v99 = v244;
      v244(v220, v137, v98);
      Date.timeIntervalSince(_:)();
      v139 = v138;
      v140 = sub_100018F90();
      v141(v140);
      v142 = v217;
      *v217 = v139;
      *(v142 + 8) = 0;
    }

    v143 = [v40 dateEnded];
    if (v143)
    {
      v144 = v143;
      v145 = v99;
      v146 = v221;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v147 = v222;
      v145(v222, v146, v98);
      v116 = v238;
      Date.timeIntervalSince(_:)();
      v149 = v148;
      v150 = *(v111 + 8);
      v150(v147, v98);
      v150(v117, v98);
      v151 = v218;
      *v218 = v149;
      *(v151 + 8) = 0;
    }

    else
    {
      (*(v111 + 8))(v117, v98);
    }

    v152 = v231;
    v153 = v230;
    v154 = [v245 conversationID];
    if (v154)
    {
      v155 = v154;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v156 = 0;
    }

    else
    {
      v156 = 1;
    }

    sub_10000AF74(v116, v156, 1, v153);
    sub_100372140(v116, v152, &unk_1006A3DD0, &unk_10057C9D0);
    if (sub_100015468(v152, 1, v153) != 1)
    {
      v157 = v216;
      v158 = v215;
      (*(v216 + 32))(v215, v152, v153);
      v159 = UUID.uuidString.getter();
      v161 = v160;
      (*(v157 + 8))(v158, v153);
      v162 = v214;
      *v214 = v159;
      v162[1] = v161;

      goto LABEL_62;
    }
  }

  else
  {
    v152 = v231;
    sub_10000AF74(v231, 1, 1, v230);
  }

  sub_100009A04(v152, &unk_1006A3DD0, &unk_10057C9D0);
LABEL_62:
  v163 = [v40 filteredOutReason];
  v164 = &v3[OBJC_IVAR____TtC13callservicesd14RTCCSDCallInfo_filteredOutReason];
  *v164 = v163;
  v164[4] = 0;
  v165 = [v40 verificationStatus];
  sub_100008BB4(v165, OBJC_IVAR____TtC13callservicesd14RTCCSDCallInfo_verficationStatus);
  v166 = [objc_opt_self() tu_defaults];
  v167 = [v166 silenceUnknownCallersEnabled];

  v3[OBJC_IVAR____TtC13callservicesd14RTCCSDCallInfo_knownCallerStatus] = v167;
  v168 = [v40 silencingUserInfo];
  sub_1000496D4();
  static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v169 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_10000C224(v169, v170);
  sub_100006064();

  if (v168)
  {
    sub_100022D0C();
  }

  v171 = sub_100035B3C(OBJC_IVAR____TtC13callservicesd14RTCCSDCallInfo_returnedCall);
  static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v172 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_10000C224(v172, v173);
  sub_100006064();

  if (v171)
  {
    sub_100022D0C();
  }

  v174 = sub_100035B3C(OBJC_IVAR____TtC13callservicesd14RTCCSDCallInfo_isSiriSuggested);
  static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v175 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_10000C224(v175, v176);
  sub_100006064();

  if (v174)
  {
    sub_100022D0C();
  }

  v177 = sub_100035B3C(OBJC_IVAR____TtC13callservicesd14RTCCSDCallInfo_isKnownContact);
  static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v178 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_10000C224(v178, v179);
  sub_100006064();

  if (v177)
  {
    sub_100022D0C();
  }

  v180 = v240;
  v181 = sub_100035B3C(OBJC_IVAR____TtC13callservicesd14RTCCSDCallInfo_isOwnNumber);
  v182 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v183 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v185 = sub_100023E48(v183, v184, v182);

  if (v185)
  {
    v186 = [v185 BOOLValue];
  }

  else
  {
    v186 = 2;
  }

  v3[OBJC_IVAR____TtC13callservicesd14RTCCSDCallInfo_isVerifiedAppleCare] = v186;
  v187 = [v40 junkConfidence];
  sub_100008BB4(v187, OBJC_IVAR____TtC13callservicesd14RTCCSDCallInfo_junkConfidence);
  v188 = [v40 identificationCategory];
  sub_100008BB4(v188, OBJC_IVAR____TtC13callservicesd14RTCCSDCallInfo_identificationCategory);
  v189 = [v40 isKnownCaller];
  v3[OBJC_IVAR____TtC13callservicesd14RTCCSDCallInfo_isKnownCaller] = v189;
  v190 = [v40 imageURL];
  if (v190)
  {
    v191 = v190;
    v192 = v242;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v193 = type metadata accessor for URL();
    v194 = 1;
    sub_10000AF74(v192, 0, 1, v193);
    sub_100009A04(v192, &unk_1006A52C0, &unk_10057D930);
    v3[OBJC_IVAR____TtC13callservicesd14RTCCSDCallInfo_brandedCall] = 1;
    v195 = [v40 imageURL];
    if (v195)
    {
      v196 = v195;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v194 = 0;
    }

    sub_10000AF74(v180, v194, 1, v193);
    v197 = v235;
    sub_100372140(v180, v235, &unk_1006A52C0, &unk_10057D930);
    if (sub_100015468(v197, 1, v193) == 1)
    {
      sub_100009A04(v197, &unk_1006A52C0, &unk_10057D930);
      v198 = 0;
    }

    else
    {
      v201 = URL.relativePath.getter();
      v203 = v202;
      (*(*(v193 - 8) + 8))(v197, v193);
      v204 = v201 == 0x6B636F74732FLL && v203 == 0xE600000000000000;
      if (v204)
      {

        v198 = 1;
      }

      else
      {
        v198 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }
    }
  }

  else
  {
    v199 = type metadata accessor for URL();
    v200 = v242;
    sub_10000AF74(v242, 1, 1, v199);
    sub_100009A04(v200, &unk_1006A52C0, &unk_10057D930);
    v198 = 0;
    v3[OBJC_IVAR____TtC13callservicesd14RTCCSDCallInfo_brandedCall] = 0;
  }

  v205 = v241;
  v3[OBJC_IVAR____TtC13callservicesd14RTCCSDCallInfo_brandedCallWithImage] = v198 & 1;
  v206 = [v40 wasScreened];
  v207 = v243;
  if (v206)
  {
    v208 = [v40 isScreening] ^ 1;
  }

  else
  {
    LOBYTE(v208) = 0;
  }

  v3[OBJC_IVAR____TtC13callservicesd14RTCCSDCallInfo_screenedThenAnswered] = v208;
  v209 = [v40 isScreening];
  v3[OBJC_IVAR____TtC13callservicesd14RTCCSDCallInfo_screenedUnanswered] = v209;
  v210 = [v40 commTrustScore];
  *&v3[OBJC_IVAR____TtC13callservicesd14RTCCSDCallInfo_commTrustScore] = v210;
  v211 = [v40 receptionistState];
  *&v3[OBJC_IVAR____TtC13callservicesd14RTCCSDCallInfo_receptionistState] = v211;
  v212 = [v40 specialUnknown];

  v3[OBJC_IVAR____TtC13callservicesd14RTCCSDCallInfo_specialUnknown] = v212;
  v247.receiver = v3;
  v247.super_class = v207;
  objc_msgSendSuper2(&v247, "init");

  sub_1000051F8(v239, v205);
}

uint64_t sub_100041BC4()
{

  return _swift_deallocObject(v0);
}

void sub_100041FB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100041FD0(uint64_t a1)
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [*(a1 + 32) audioRouteCollections];
  v3 = [v2 allValues];

  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        if ([*(*(&v8 + 1) + 8 * i) hasInEarRouteInTipiWithCompanionWatch])
        {
          *(*(*(a1 + 40) + 8) + 24) = 1;
          goto LABEL_11;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

void *sub_100042148@<X0>(void *a1@<X0>, char a2@<W1>, void *a3@<X2>, void *a4@<X8>)
{
  v8 = sub_100042B1C(a1);
  if (v8)
  {
    v68 = a4;
    v9 = v8;
    v10 = a1;
    LOBYTE(v158[0]) = 0;
    v61 = v9;
    sub_100042D2C(v9, [v10 callSubType], a3, v135);
    v157 = v142;
    v156[0] = v139[0];
    *(v156 + 10) = *(v139 + 10);
    v155 = v138;
    v132 = v136;
    v133 = v137;
    v131 = v141;
    v130 = v140;
    v86 = v143;
    v87 = v144;
    v129 = v145;
    v128[0] = *v146;
    *(v128 + 3) = *&v146[3];
    v11 = v147;
    v85 = v148;
    v70 = v149;
    v12 = v150;
    v127[0] = *v151;
    *(v127 + 3) = *&v151[3];
    v69 = v152;
    v13 = v153;
    v14 = *&v154[5];
    *(v126 + 5) = *&v154[5];
    v126[0] = *v154;
    v15 = a3;
    swift_unknownObjectRetain();
    v16 = sub_100042BF0(v10);
    v134 = BYTE5(v16) & 1;
    v64 = sub_100042D9C(v10);
    sub_100009A04(&v155, &qword_1006A9E80, &unk_10057EFE8);
    v17 = v10;
    v72 = sub_100327704(v17);
    v84 = v18;
    v63 = v19;
    v60 = v20;
    sub_100009A04(v156, &qword_1006A9E88, &qword_100585F30);
    v83 = [v17 wantsHoldMusic];
    LOBYTE(v158[0]) = BYTE5(v16) & 1;
    v65 = v16;
    v21 = sub_100042ED4(v17, v16 & 0xFFFFFFFFFFLL | (((v16 >> 40) & 1) << 40));
    v82 = [v17 audioInterruptionOperationMode];
    if (sub_10002E930())
    {
      v80 = 0;
      v81 = 0;
    }

    else
    {
      swift_unknownObjectRetain();
      v80 = v17;
      v81 = &off_10062EEA8;
    }

    sub_100009A04(&v157, &unk_1006A61C0, &unk_100581180);
    if ([v15 sharePlayInCallsEnabled])
    {
      v79 = [v17 isSharePlayCapable];
    }

    else
    {
      v79 = 0;
    }

    v78 = [v17 mixesVoiceWithMedia];
    if ([v15 expanseBTSwitchingEnabled])
    {
      v22 = [v17 bluetoothAudioFormat];

      v77 = v22 == 1;
    }

    else
    {

      v77 = 0;
    }

    v76 = [v17 isConversation];
    v75 = [v17 mediaPlaybackOnExternalDevice];
    v74 = [v17 prefersToPlayDuringWombat];
    v23 = [v14 sessionBasedMutingEnabled];
    swift_unknownObjectRelease();
    if (v23)
    {
      v69 = [v17 isUplinkMuted];
      v13 = [v17 audioResolverShouldIgnoreUplinkMuted];
    }

    if (a2)
    {
      v24 = 1;
    }

    else
    {
      v24 = sub_10002E930() ^ 1;
    }

    v25 = [v17 screenShareAttributes];
    if (v25)
    {
      v26 = v25;
      v27 = [v25 isWindowed];

      if ((v27 & 1) == 0)
      {
        if ([v17 isSharingScreen])
        {
          v12 = 0;
        }
      }
    }

    v66 = v13;
    v28 = [v17 provider];
    v29 = [v28 isSystemProvider];

    v67 = v12;
    if (v29)
    {
      BSAuditTokenForCurrentProcess();
      v86 = v158[0];
      v87 = v158[1];
      v129 = 0;
      objc_opt_self();
      v30 = swift_dynamicCastObjCClass();
      if (v30)
      {
        v31 = v30;
        v32 = v17;
        v33 = [v31 localProvider];
        if (v33 && (v34 = v33, v35 = [v33 bundleIdentifier], v34, v35))
        {
          v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v38 = v37;

          v85 = v38;
        }

        else
        {

          v36 = 0;
          v85 = 0;
        }
      }

      else
      {
        v36 = sub_100021AEC([v17 provider]);
        v40 = v39;

        v85 = v40;
      }
    }

    else
    {
      v36 = v11;
    }

    v71 = v72 & 0xFFFFFFFF00000001;
    v41 = v21 & 1;
    v73 = v24 & 1;
    v42 = [v17 provider];
    v43 = [v42 isFaceTimeProvider];

    if ((v43 & 1) != 0 || (v44 = [v17 provider], v45 = objc_msgSend(v44, "isTelephonyProvider"), v44, v45))
    {
      v70 = 1;
    }

    v46 = [v17 provider];

    v47 = [v46 isFaceTimeProvider];
    if (v47 && ([v17 isConversation] & 1) != 0 && (v48 = objc_msgSend(objc_opt_self(), "sharedInstance"), v49 = objc_msgSend(v48, "activeConversationForCall:", v17), v48, v49))
    {
      v50 = [v49 provider];
      v51 = [v50 isDefaultProvider];

      if ((v51 & 1) == 0)
      {
        sub_1003E09D0([v49 provider], &selRef_bundleIdentifier);
        if (v52)
        {

          v53 = [v49 provider];
          v54 = [v53 bundleIdentifier];

          v55 = v69;
          if (v54)
          {
            v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v57 = v56;

            v85 = v57;
          }

          else
          {

            v36 = 0;
            v85 = 0;
          }

          goto LABEL_41;
        }
      }

      v55 = v69;
    }

    else
    {
      v55 = v69;
    }

LABEL_41:
    BYTE4(__src[0]) = BYTE4(v65);
    LODWORD(__src[0]) = v65;
    v62 = v134;
    BYTE5(__src[0]) = v134;
    *(__src + 6) = v132;
    HIWORD(__src[1]) = v133;
    __src[2] = v64;
    __src[3] = v71;
    __src[4] = v84;
    __src[5] = v63;
    LOWORD(__src[6]) = v60 & 0x101;
    BYTE2(__src[6]) = v41;
    BYTE3(__src[6]) = v73;
    BYTE4(__src[6]) = v83;
    BYTE5(__src[6]) = v75;
    BYTE6(__src[6]) = v79;
    HIBYTE(__src[6]) = v78;
    LOBYTE(__src[7]) = v76;
    BYTE1(__src[7]) = v74;
    BYTE2(__src[7]) = v77;
    *(&__src[7] + 3) = v130;
    HIBYTE(__src[7]) = v131;
    __src[8] = v82;
    __src[9] = v80;
    __src[10] = v81;
    *&__src[11] = v86;
    *&__src[13] = v87;
    v59 = v129;
    LOBYTE(__src[15]) = v129;
    *(&__src[15] + 1) = v128[0];
    HIDWORD(__src[15]) = *(v128 + 3);
    __src[16] = v36;
    __src[17] = v85;
    LOBYTE(__src[18]) = v70;
    BYTE1(__src[18]) = v67;
    *(&__src[18] + 5) = *(v127 + 3);
    *(&__src[18] + 2) = v127[0];
    BYTE1(__src[19]) = v55;
    BYTE2(__src[19]) = v66;
    __src[20] = *(v126 + 5);
    *(&__src[19] + 3) = v126[0];
    memcpy(__dst, __src, sizeof(__dst));
    ScreenSharingActivityManager.carPlayDidDisconnect()();
    v91 = BYTE4(v65);
    v90 = v65;
    v92 = v62;
    v93 = v132;
    v94 = v133;
    v95 = v64;
    v96 = v71;
    v97 = v84;
    v98 = v63;
    v99 = v60 & 0x101;
    v100 = v41;
    v101 = v73;
    v102 = v83;
    v103 = v75;
    v104 = v79;
    v105 = v78;
    v106 = v76;
    v107 = v74;
    v108 = v77;
    v110 = v131;
    v109 = v130;
    v111 = v82;
    v112 = v80;
    v113 = v81;
    v114 = v86;
    v115 = v87;
    v116 = v59;
    *&v117[3] = *(v128 + 3);
    *v117 = v128[0];
    v118 = v36;
    v119 = v85;
    v120 = v70;
    v121 = v67;
    *v122 = v127[0];
    *&v122[3] = *(v127 + 3);
    v123 = v55;
    v124 = v66;
    *v125 = v126[0];
    *&v125[5] = *(v126 + 5);
    sub_100042F60(__src, v158);
    sub_100042FC0(&v90);
    memcpy(v158, __dst, 0xA8uLL);
    a4 = v68;
    return memcpy(a4, v158, 0xA8uLL);
  }

  sub_1002BA0C4(v158);
  return memcpy(a4, v158, 0xA8uLL);
}

NSString sub_100042B1C(void *a1)
{
  if (sub_10002E930())
  {
    v2 = &AVAudioSessionCategoryRingtone;
  }

  else if ([a1 audioInterruptionProviderType] == 1 && objc_msgSend(a1, "isTTY"))
  {
    v2 = &AVAudioSessionCategoryTTYCall;
  }

  else
  {
    sub_100042BE4(a1);
    if (v5)
    {
      v3 = String._bridgeToObjectiveC()();

      return v3;
    }

    if ([a1 audioInterruptionProviderType] != 1)
    {
      return 0;
    }

    v2 = &AVAudioSessionCategoryPhoneCall;
  }

  v3 = *v2;
  v4 = *v2;
  return v3;
}

uint64_t sub_100042BF0(void *a1)
{
  if (sub_10002E930())
  {
LABEL_2:
    v2 = 0;
    v3 = &_mh_execute_header;
    return v3 | (v2 << 40);
  }

  v4 = [a1 audioInterruptionProviderType];
  if (v4 == 2)
  {
    v3 = 0;
    v2 = 1;
    return v3 | (v2 << 40);
  }

  if (v4 == 1)
  {
    v6 = [a1 provider];
    v7 = [v6 isTelephonyProvider];

    if ((v7 & 1) == 0)
    {
      v8 = [a1 provider];
      v9 = [v8 isSuperboxProvider];

      if ((v9 & 1) == 0)
      {
        v10 = [a1 provider];
        v11 = [v10 audioSessionID];

        v2 = 0;
        v3 = v11;
        return v3 | (v2 << 40);
      }
    }

    goto LABEL_2;
  }

  type metadata accessor for CSDAudioInterruptionProviderType(0);
  result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
  __break(1u);
  return result;
}

double sub_100042D2C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = 0;
  *(a4 + 4) = 0;
  *(a4 + 8) = a1;
  *(a4 + 16) = 0;
  *(a4 + 24) = 0;
  *(a4 + 32) = 0;
  *(a4 + 40) = 1;
  *(a4 + 48) = 0;
  *(a4 + 56) = 0;
  *(a4 + 57) = 1;
  result = 0.0;
  *(a4 + 64) = 0u;
  *(a4 + 80) = 0u;
  *(a4 + 96) = 0u;
  *(a4 + 112) = 0;
  *(a4 + 120) = 1;
  *(a4 + 128) = 0;
  *(a4 + 136) = 0;
  *(a4 + 144) = 256;
  *(a4 + 148) = a2;
  *(a4 + 152) = BYTE4(a2) & 1;
  *(a4 + 153) = 0;
  *(a4 + 160) = a3;
  return result;
}

id sub_100042D9C(void *a1)
{
  if (sub_10002E930())
  {
    v2 = &AVAudioSessionModeDefault;
LABEL_3:
    v3 = *v2;
    v4 = *v2;
    return v3;
  }

  if ([a1 wantsHoldMusic] && objc_msgSend(a1, "audioInterruptionProviderType") == 1)
  {
    v2 = &AVAudioSessionModeLocatePhone;
    goto LABEL_3;
  }

  sub_100042E3C(a1);
  if (!v5)
  {
    return 0;
  }

  v3 = String._bridgeToObjectiveC()();

  return v3;
}

uint64_t sub_100042E80(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 26))
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

uint64_t sub_100042ED4(void *a1, uint64_t a2)
{
  if ((a2 & 0x10100000000) != 0)
  {
    return 1;
  }

  else
  {
    return [a1 isOnHold] ^ 1;
  }
}

uint64_t sub_100043014(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t type metadata accessor for AudioInterruptionDeferredEndDescriptor(uint64_t a1)
{
  result = qword_1006AB840;
  if (!qword_1006AB840)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10004308C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();

  return sub_10000AF74(a1, a2, a2, v4);
}

uint64_t sub_1000430EC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = sub_10026D814(&unk_1006A52C0, &unk_10057D930);
    v8 = v5 + *(a4 + 20);

    return sub_10000AF74(v8, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for RingtoneDescriptor(uint64_t a1)
{
  result = qword_1006A97B0;
  if (!qword_1006A97B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000431D8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
    v8 = v5 + *(a4 + 32);

    return sub_10000AF74(v8, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for CallTranslationDisclosureDescriptor(uint64_t a1)
{
  result = qword_1006ABDB0;
  if (!qword_1006ABDB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000432B0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_100007674(a1, a2, a3, a4);
  sub_100008070();
  (*(v6 + 40))(v4, v5);
  return v4;
}

uint64_t sub_100043300@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_10026D814(&qword_1006A3DB8, &qword_10057EBF8);
  __chkstk_darwin(v7 - 8);
  v9 = v173 - v8;
  v10 = type metadata accessor for SoundDescriptorAction(0);
  sub_100008070();
  v12 = __chkstk_darwin(v11);
  v177 = v173 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v16 = v173 - v15;
  v17 = __chkstk_darwin(v14);
  v178 = v173 - v18;
  v19 = __chkstk_darwin(v17);
  v21 = v173 - v20;
  __chkstk_darwin(v19);
  v23 = v173 - v22;
  if (([a1 isEndpointOnCurrentDevice] & 1) != 0 || (a2 & 0x20) != 0)
  {
    v175 = a3;
    v176 = v10;
    v26 = [a1 provider];
    v27 = [v26 supportsCurrentPlatform];

    if (!v27)
    {
      v24 = sub_10026D814(&unk_1006A3DC0, &qword_10057EC00);
      v25 = v175;
      goto LABEL_17;
    }

    v28 = swift_allocBox();
    v30 = v29;
    v31 = sub_10026D814(&unk_1006A3DC0, &qword_10057EC00);
    v179 = v30;
    v180 = v31;
    sub_10000AF74(v30, 1, 2, v31);
    if ((a2 & 0x20) != 0 && ([a1 isEndpointOnCurrentDevice] & 1) == 0)
    {
      sub_10000E5F4();
      sub_1000082C8();
      sub_10004426C(v23, v32);
    }

    if ((a2 & 0x200) != 0 && ([a1 needsManualInCallSounds] & 1) == 0)
    {
      sub_10000E5F4();
      sub_1000082C8();
      sub_10004426C(v23, v33);
    }

    if (a2)
    {
      sub_10000E5F4();
      sub_1000082C8();
      sub_10004426C(v23, v34);
    }

    v173[2] = v28;
    v35 = sub_10000B6FC();
    v36 = swift_allocObject();
    *(v36 + 16) = a1;
    sub_100007C2C();
    v37 = swift_allocObject();
    v37[2] = sub_1002DD308;
    v37[3] = v36;
    v173[1] = v36;
    aBlock[4] = sub_10002E4B4;
    aBlock[5] = v37;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10002E470;
    aBlock[3] = &unk_1006250F0;
    v38 = _Block_copy(aBlock);
    v181 = a1;

    v39 = [v35 anyCallPassesTest:v38];
    swift_unknownObjectRelease();
    _Block_release(v38);
    LOBYTE(v36) = swift_isEscapingClosureAtFileLocation();

    if (v36)
    {
      __break(1u);
    }

    else
    {
      if (v39)
      {
        v37 = _swiftEmptyArrayStorage;
        v41 = v176;
        v38 = v177;
        goto LABEL_22;
      }

      sub_100007C2C();
      v39 = swift_allocObject();
      sub_100015F38(v39);
      sub_10004436C(0, 1, 1, _swiftEmptyArrayStorage);
      v46 = *(v43 + 16);
      v40 = *(v43 + 24);
      v47 = v43;
      v37 = (v46 + 1);
      v38 = v177;
      if (v46 < v40 >> 1)
      {
LABEL_21:
        v41 = v176;
        sub_100010244(v43, v44, v45, v47);
        *(v48 + 32) = sub_1000445D8;
        *(v48 + 40) = v39;
LABEL_22:
        v49 = v181;
        v177 = [*(v3 + 16) activeConversationForCall:v181];
        if (sub_1000444E4(v49))
        {
          sub_100007C2C();
          v50 = swift_allocObject();
          sub_100015F38(v50);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v121 = sub_10000A698();
            sub_10004436C(v121, v122, v123, v37);
            v37 = v124;
          }

          v52 = v37[2];
          v51 = v37[3];
          v174 = v37;
          if (v52 >= v51 >> 1)
          {
            v125 = sub_10000A064(v51);
            sub_10004436C(v125, v126, v127, v174);
            v174 = v128;
          }

          v53 = v174;
          v174[2] = v52 + 1;
          v54 = v53 + 16 * v52;
          *(v54 + 32) = sub_100044B48;
          *(v54 + 40) = v50;
          sub_100007C2C();
          v55 = swift_allocObject();
          *(v55 + 16) = sub_100045820;
          *(v55 + 24) = v3;
          v56 = *(v53 + 16);
          v41 = *(v53 + 24);
          v37 = (v56 + 1);

          if (v56 >= v41 >> 1)
          {
            sub_1000112DC();
            v174 = v129;
          }

          sub_10000FD6C();
          *(v57 + 32) = sub_100044B48;
          *(v57 + 40) = v55;
          if (([v181 isVideo] & 1) == 0)
          {
            sub_100007C2C();
            v58 = swift_allocObject();
            *(v58 + 16) = sub_100045A38;
            *(v58 + 24) = v3;
            v59 = *(v56 + 17);
            v41 = v37[3];
            v37 = (v59 + 1);

            if (v59 >= v41 >> 1)
            {
              sub_1000112DC();
              v174 = v167;
            }

            sub_10000FD6C();
            *(v60 + 32) = sub_100044B48;
            *(v60 + 40) = v58;
          }
        }

        if ((a2 & 0x10000) != 0)
        {
          sub_100007C2C();
          v61 = swift_allocObject();
          sub_100015F38(v61);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v130 = sub_10000A698();
            sub_10004436C(v130, v131, v132, v37);
            v37 = v133;
          }

          sub_10000F55C();
          if (v67)
          {
            v134 = sub_10000A064(v66);
            sub_10004436C(v134, v135, v136, v137);
            v65 = v62;
          }

          sub_100010244(v62, v63, v64, v65);
          *(v68 + 32) = sub_100044B48;
          *(v68 + 40) = v61;
        }

        if ((a2 & 0x40000) != 0)
        {
          sub_100007C2C();
          v69 = swift_allocObject();
          sub_100015F38(v69);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v138 = sub_10000A698();
            sub_10004436C(v138, v139, v140, v37);
            v37 = v141;
          }

          sub_10000F55C();
          if (v67)
          {
            v142 = sub_10000A064(v74);
            sub_10004436C(v142, v143, v144, v145);
            v73 = v70;
          }

          sub_100010244(v70, v71, v72, v73);
          *(v75 + 32) = sub_100044B48;
          *(v75 + 40) = v69;
        }

        if (v177 && (a2 & 0x80000) != 0)
        {
          v76 = v177;
          if (![v76 ignoreLMIRequests])
          {
            sub_100007C2C();
            v78 = swift_allocObject();
            *(v78 + 16) = sub_1002DD338;
            *(v78 + 24) = v3;
            v174 = v78;

            v79 = v37;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v168 = sub_10000A698();
              sub_10004436C(v168, v169, v170, v37);
              v79 = v171;
            }

            v81 = *(v79 + 16);
            v80 = *(v79 + 24);
            if (v81 >= v80 >> 1)
            {
              sub_10004436C(v80 > 1, v81 + 1, 1, v79);
              v79 = v172;
            }

            *(v79 + 16) = v81 + 1;
            v82 = v79 + 16 * v81;
            v83 = v174;
            *(v82 + 32) = sub_100044B48;
            *(v82 + 40) = v83;
            v37 = v79;
            v41 = v176;
            if ((a2 & 0x100000) == 0)
            {
LABEL_50:
              if ((a2 & 0x200000) == 0)
              {
                goto LABEL_51;
              }

              goto LABEL_64;
            }

LABEL_59:
            sub_100007C2C();
            v84 = swift_allocObject();
            sub_100015F38(v84);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v146 = sub_10000A698();
              sub_10004436C(v146, v147, v148, v37);
              v37 = v149;
            }

            sub_10000F55C();
            if (v67)
            {
              v150 = sub_10000A064(v89);
              sub_10004436C(v150, v151, v152, v153);
              v88 = v85;
            }

            sub_100010244(v85, v86, v87, v88);
            *(v90 + 32) = sub_100044B48;
            *(v90 + 40) = v84;
            if ((a2 & 0x200000) == 0)
            {
LABEL_51:
              if ((a2 & 0x400000) == 0)
              {
                goto LABEL_52;
              }

              goto LABEL_69;
            }

LABEL_64:
            sub_100007C2C();
            v91 = swift_allocObject();
            sub_100015F38(v91);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v154 = sub_10000A698();
              sub_10004436C(v154, v155, v156, v37);
              v37 = v157;
            }

            sub_10000F55C();
            if (v67)
            {
              v158 = sub_10000A064(v96);
              sub_10004436C(v158, v159, v160, v161);
              v95 = v92;
            }

            sub_100010244(v92, v93, v94, v95);
            *(v97 + 32) = sub_100044B48;
            *(v97 + 40) = v91;
            if ((a2 & 0x400000) == 0)
            {
LABEL_52:
              v77 = v37[2];
              if (!v77)
              {
LABEL_91:

                v115 = v179;
                swift_beginAccess();
                sub_10001810C();
                sub_100044148(v115, v175, v116);
              }

LABEL_74:
              swift_beginAccess();
              v174 = v37;
              v104 = v37 + 5;
              do
              {
                v105 = *(v104 - 1);
                v182[0] = v181;
                v183 = a2;

                v105(v182, &v183);

                if (sub_100015468(v9, 1, v41) == 1)
                {
                  sub_100044AE0(v9);
                }

                else
                {
                  sub_1000441A8(v9, v21, type metadata accessor for SoundDescriptorAction);
                  v106 = v178;
                  sub_100044148(v179, v178, type metadata accessor for SoundDescriptorAction);
                  sub_1000441A8(v106, v16, type metadata accessor for SoundDescriptorAction);
                  v107 = sub_100015468(v16, 2, v180);
                  if (v107)
                  {
                    if (v107 == 1)
                    {
                      v108 = 1;
                    }

                    else
                    {
                      v108 = 2;
                    }
                  }

                  else
                  {
                    sub_1000150E0();
                    sub_10004426C(v16, v109);
                    v108 = 3;
                  }

                  sub_10001810C();
                  sub_100044148(v21, v38, v110);
                  v111 = sub_100015468(v38, 2, v180);
                  if (v111)
                  {
                    if (v111 == 1)
                    {
                      v112 = 1;
                    }

                    else
                    {
                      v112 = 2;
                    }
                  }

                  else
                  {
                    sub_1000150E0();
                    sub_10004426C(v38, v113);
                    v112 = 3;
                  }

                  if (v108 < v112)
                  {
                    sub_100044208(v21, v179);
                  }

                  sub_1000082C8();
                  sub_10004426C(v21, v114);
                }

                v104 += 2;
                --v77;
              }

              while (v77);
              goto LABEL_91;
            }

LABEL_69:
            sub_100007C2C();
            v98 = v37;
            v99 = swift_allocObject();
            sub_100015F38(v99);
            v100 = v98;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v162 = sub_10000A698();
              sub_10004436C(v162, v163, v164, v98);
              v100 = v165;
            }

            v102 = *(v100 + 16);
            v101 = *(v100 + 24);
            v77 = v102 + 1;
            if (v102 >= v101 >> 1)
            {
              sub_10004436C(v101 > 1, v102 + 1, 1, v100);
              v100 = v166;
            }

            *(v100 + 16) = v77;
            v103 = v100 + 16 * v102;
            *(v103 + 32) = sub_100044B48;
            *(v103 + 40) = v99;
            v37 = v100;
            goto LABEL_74;
          }
        }

        if ((a2 & 0x100000) == 0)
        {
          goto LABEL_50;
        }

        goto LABEL_59;
      }
    }

    v117 = sub_10000A064(v40);
    sub_10004436C(v117, v118, v119, v120);
    v47 = v43;
    goto LABEL_21;
  }

  v24 = sub_10026D814(&unk_1006A3DC0, &qword_10057EC00);
  v25 = a3;
LABEL_17:

  return sub_10000AF74(v25, 1, 2, v24);
}

uint64_t sub_100043E94()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_100043EE8()
{

  sub_100007C2C();

  return _swift_deallocObject(v0);
}

uint64_t sub_100043F40(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for SoundDescriptorAction(0);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v18[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __chkstk_darwin(v4);
  v9 = &v18[-v8];
  __chkstk_darwin(v7);
  v11 = &v18[-v10];
  v12 = swift_projectBox();
  swift_beginAccess();
  sub_100044148(v12, v11, type metadata accessor for SoundDescriptorAction);
  sub_1000441A8(v11, v9, type metadata accessor for SoundDescriptorAction);
  v13 = sub_10026D814(&unk_1006A3DC0, &qword_10057EC00);
  v14 = sub_100015468(v9, 2, v13);
  if (v14)
  {
    if (v14 == 1)
    {
      v15 = 1;
    }

    else
    {
      v15 = 2;
    }
  }

  else
  {
    sub_10004426C(v9, type metadata accessor for SoundDescriptor);
    v15 = 3;
  }

  sub_100044148(a1, v6, type metadata accessor for SoundDescriptorAction);
  result = sub_100015468(v6, 2, v13);
  if (result)
  {
    if (result == 1)
    {
      v17 = 1;
    }

    else
    {
      v17 = 2;
    }
  }

  else
  {
    result = sub_10004426C(v6, type metadata accessor for SoundDescriptor);
    v17 = 3;
  }

  if (v15 < v17)
  {
    swift_beginAccess();
    return sub_100044208(a1, v12);
  }

  return result;
}

uint64_t sub_100044148(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_100008070();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1000441A8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_100008070();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_100044208(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SoundDescriptorAction(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_10004426C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_100008070();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1000442D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
    v9 = a1 + *(a3 + 32);

    return sub_100015468(v9, a2, v8);
  }
}

void sub_100044394(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, uint64_t, void *))
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

    sub_10026D814(&qword_1006A4AC8, &unk_10057FB40);
    swift_arrayInitWithCopy();
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

uint64_t sub_1000444CC(uint64_t a1)
{

  return String.init<A>(reflecting:)();
}

uint64_t sub_1000444E4(void *a1)
{
  if (![a1 isConversation])
  {
    return 1;
  }

  result = [*(v1 + 16) activeConversationForCall:a1];
  if (result)
  {
    v4 = result;
    if ([result isOneToOneModeEnabled])
    {
      v5 = [v4 mergedRemoteMembers];
      sub_100006AF0(0, &qword_1006A3DE0, TUConversationMember_ptr);
      sub_1002DD344();
      static Set._unconditionallyBridgeFromObjectiveC(_:)();

      v6 = sub_10001E550();

      return v6 == 1;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t sub_100044608@<X0>(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  if ([a1 status] != 6 || (a2 & 1) == 0)
  {
    goto LABEL_14;
  }

  v8 = [sub_10000B6FC() hasCurrentAudioCalls];
  swift_unknownObjectRelease();
  if (v8)
  {
    goto LABEL_14;
  }

  if (![a1 isEndpointOnCurrentDevice])
  {
    goto LABEL_14;
  }

  [a1 callDuration];
  if (v9 <= 0.0 && ([a1 isOutgoing] & 1) == 0 && objc_msgSend(a1, "disconnectedReason") != 14)
  {
    goto LABEL_14;
  }

  if (![a1 needsManualInCallSounds])
  {
    goto LABEL_14;
  }

  v10 = [a1 disconnectedReason];
  if (v10 > 0x18)
  {
    goto LABEL_23;
  }

  if (((1 << v10) & 0x1CE4020) == 0)
  {
    if (v10 == 6)
    {
      v27 = [a1 provider];
      v28 = TUCallHapticsEnabled();

      if (v28)
      {
        goto LABEL_14;
      }

LABEL_26:
      v17 = [a1 provider];
      v18 = [a1 isVideo];
      v19 = [a1 soundRegion];
      v20 = type metadata accessor for SoundDescriptor(0);
      v29 = *(v20 + 32);
      v30 = type metadata accessor for UUID();
      sub_10000AF74(a3 + v29, 1, 1, v30);
      v23 = 6;
      goto LABEL_19;
    }

    if (v10 == 15)
    {
      v17 = [a1 provider];
      v18 = [a1 isVideo];
      v19 = [a1 soundRegion];
      v20 = type metadata accessor for SoundDescriptor(0);
      v25 = *(v20 + 32);
      v26 = type metadata accessor for UUID();
      sub_10000AF74(a3 + v25, 1, 1, v26);
      v23 = 3;
      goto LABEL_19;
    }

LABEL_23:
    if (*(v3 + 24) != 1)
    {
      goto LABEL_14;
    }

    goto LABEL_26;
  }

  v11 = [a1 provider];
  v12 = TUCallHapticsEnabled();

  if (v12)
  {
LABEL_14:
    v13 = type metadata accessor for SoundDescriptorAction(0);
    v14 = a3;
    v15 = 1;
    goto LABEL_15;
  }

  v17 = [a1 provider];
  v18 = [a1 isVideo];
  v19 = [a1 soundRegion];
  v20 = type metadata accessor for SoundDescriptor(0);
  v21 = *(v20 + 32);
  v22 = type metadata accessor for UUID();
  sub_10000AF74(a3 + v21, 1, 1, v22);
  v23 = 7;
LABEL_19:
  *a3 = v23;
  *(a3 + 8) = v17;
  *(a3 + 16) = v18;
  *(a3 + 24) = v19;
  *(a3 + *(v20 + 36)) = 0;
  v24 = sub_10026D814(&unk_1006A3DC0, &qword_10057EC00);
  sub_10000AF74(a3, 0, 2, v24);
  v13 = type metadata accessor for SoundDescriptorAction(0);
  v14 = a3;
  v15 = 0;
LABEL_15:

  return sub_10000AF74(v14, v15, 1, v13);
}

uint64_t sub_1000449AC(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_10026D814(&unk_1006A3DC0, &qword_10057EC00);

  return sub_10000AF74(a1, v5, a3, v6);
}

uint64_t sub_100044A2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10026D814(&unk_1006A3DC0, &qword_10057EC00);
  v5 = sub_100015468(a1, a2, v4);
  if (v5 >= 3)
  {
    return v5 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100044AE0(uint64_t a1)
{
  v2 = sub_10026D814(&qword_1006A3DB8, &qword_10057EBF8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_100044B4C(uint64_t a1)
{
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 activeConversationForCall:a1];

  return v3;
}

uint64_t sub_100044BB4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for SoundDescriptorAction(0);
  v5 = __chkstk_darwin(v4);
  v7 = &v38[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v9 = &v38[-v8];
  v10 = type metadata accessor for SoundDescriptor(0);
  v11 = __chkstk_darwin(v10);
  v13 = &v38[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v15 = &v38[-v14];
  if ([a1 status] == 3)
  {
    if ([a1 needsManualInCallSounds])
    {
      v16 = [a1 provider];
      v41 = a2;
      v17 = v16;
      v18 = [v16 supportsRinging];

      a2 = v41;
      if (v18)
      {
        v19 = [a1 provider];
        v39 = [v19 isFaceTimeProvider];

        v40 = [a1 provider];
        v20 = [a1 isVideo];
        v21 = [a1 soundRegion];
        v22 = *(v10 + 32);
        v23 = type metadata accessor for UUID();
        if (!v39)
        {
          sub_10000AF74(&v13[v22], 1, 1, v23);
          v32 = v40;
          *v13 = 1;
          *(v13 + 1) = v32;
          v13[16] = v20;
          *(v13 + 3) = v21;
          v13[*(v10 + 36)] = 0;
          sub_1000441A8(v13, v7, type metadata accessor for SoundDescriptor);
          v33 = sub_10026D814(&unk_1006A3DC0, &qword_10057EC00);
          sub_10000AF74(v7, 0, 2, v33);
          v34 = v7;
LABEL_16:
          v35 = v41;
          sub_1000441A8(v34, v41, type metadata accessor for SoundDescriptorAction);
          v36 = v35;
          v37 = 0;
          return sub_10000AF74(v36, v37, 1, v4);
        }

        sub_10000AF74(&v15[v22], 1, 1, v23);
        v24 = v40;
        *v15 = 1;
        *(v15 + 1) = v24;
        v15[16] = v20;
        *(v15 + 3) = v21;
        v15[*(v10 + 36)] = 1;
        sub_100044148(v15, v9, type metadata accessor for SoundDescriptor);
        v25 = sub_10026D814(&unk_1006A3DC0, &qword_10057EC00);
        sub_10000AF74(v9, 0, 2, v25);
        if ([a1 hasSentInvitation])
        {
          if ([a1 isVideo])
          {
            v26 = [sub_10000B6FC() hasCurrentAudioCalls];
            swift_unknownObjectRelease();
            if ((v26 & 1) == 0)
            {
              sub_10004426C(v15, type metadata accessor for SoundDescriptor);
LABEL_21:
              v34 = v9;
              goto LABEL_16;
            }
          }

          if (([a1 isVideo] & 1) == 0)
          {
            v27 = [sub_10000B6FC() currentCallCount];
            swift_unknownObjectRelease();
            if (v27 == 1)
            {
              v28 = [sub_10000B6FC() hasCurrentVideoCalls];
              swift_unknownObjectRelease();
              sub_10004426C(v15, type metadata accessor for SoundDescriptor);
              if (v28)
              {
                v29 = type metadata accessor for SoundDescriptorAction;
                v30 = v9;
LABEL_18:
                sub_10004426C(v30, v29);
                v36 = v41;
                v37 = 1;
                return sub_10000AF74(v36, v37, 1, v4);
              }

              goto LABEL_21;
            }
          }
        }

        sub_10004426C(v9, type metadata accessor for SoundDescriptorAction);
        v29 = type metadata accessor for SoundDescriptor;
        v30 = v15;
        goto LABEL_18;
      }
    }
  }

  return sub_10000AF74(a2, 1, 1, v4);
}

uint64_t sub_10004508C@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for SoundDescriptor(0);
  __chkstk_darwin(v2);
  v64 = &v61 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [sub_10000B6FC() incomingCall];
  swift_unknownObjectRelease();
  if (v4)
  {
    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();
    if (!v5)
    {
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = [sub_10000B6FC() incomingVideoCall];
  swift_unknownObjectRelease();
  if (v6)
  {
    objc_opt_self();
    v7 = swift_dynamicCastObjCClass();
    if (!v7)
    {
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = [sub_10000B6FC() displayedCalls];
  swift_unknownObjectRelease();
  sub_100006AF0(0, &qword_1006A3AB0, TUCall_ptr);
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (sub_10000B6F4(v9))
  {
    sub_10039C390(0, (v9 & 0xC000000000000001) == 0, v9);
    if ((v9 & 0xC000000000000001) != 0)
    {
      v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v10 = *(v9 + 32);
    }

    v11 = v10;

    objc_opt_self();
    v12 = swift_dynamicCastObjCClass();
    if (!v12)
    {
    }
  }

  else
  {

    v12 = 0;
  }

  v13 = [sub_10000B6FC() activeVideoCall];
  swift_unknownObjectRelease();
  if (v13)
  {
    objc_opt_self();
    v14 = swift_dynamicCastObjCClass();
    if (!v14)
    {
    }
  }

  else
  {
    v14 = 0;
  }

  v15 = v12;
  v16 = [sub_10000B6FC() frontmostBargeCall];
  swift_unknownObjectRelease();
  v17 = v12;
  if (!v16)
  {
LABEL_23:
    if (v5)
    {
      goto LABEL_24;
    }

LABEL_27:
    if (!v7)
    {

      v33 = v17;
      v7 = v14;
      goto LABEL_51;
    }

    v63 = v2;
    v19 = v7;
    if (v14)
    {
      goto LABEL_25;
    }

    goto LABEL_29;
  }

  objc_opt_self();
  v18 = swift_dynamicCastObjCClass();
  if (v18)
  {
    v17 = v18;
    if ([v18 status] == 1)
    {

      goto LABEL_23;
    }
  }

  v17 = v12;
  if (!v5)
  {
    goto LABEL_27;
  }

LABEL_24:
  v63 = v2;
  v19 = v5;
  if (v14)
  {
LABEL_25:
    v67 = v15;
    v68 = v7;
    v66 = a1;
    v20 = v14;
    goto LABEL_31;
  }

LABEL_29:
  if (!v17)
  {

    v33 = v19;
    goto LABEL_51;
  }

  v67 = v15;
  v68 = v7;
  v66 = a1;
  v20 = v17;
  v14 = 0;
LABEL_31:
  v65 = v5;
  v21 = v14;
  v22 = [v20 uniqueProxyIdentifier];
  v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = v24;

  v26 = v19;
  v27 = [v26 uniqueProxyIdentifier];
  v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v30 = v29;

  if (v23 == v28 && v25 == v30)
  {

    goto LABEL_38;
  }

  v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v32 & 1) == 0)
  {
    v34 = &selRef_normalizedValue;
    if ((![v20 needsManualInCallSounds] || (objc_msgSend(v20, "isEndpointOnCurrentDevice") & 1) == 0) && (!objc_msgSend(v26, "needsManualInCallSounds") || (objc_msgSend(v26, "isEndpointOnCurrentDevice") & 1) == 0))
    {
      v35 = [v20 provider];
      v36 = [v35 identifier];

      v62 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v38 = v37;

      v39 = [v26 provider];
      v40 = [v39 identifier];

      v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v43 = v42;

      if (v62 == v41 && v38 == v43)
      {

        goto LABEL_60;
      }

      v45 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v34 = &selRef_normalizedValue;
      if (v45)
      {

LABEL_60:
        v46 = type metadata accessor for SoundDescriptorAction(0);
        v47 = v66;
        goto LABEL_52;
      }
    }

    if (v68 && v12)
    {
      v49 = v68;
      v50 = v67;
      if ([v49 isVideoUpgradeFromCall:v67])
      {

        v51 = [v49 v34[439]];
        v52 = [v49 isVideo];
        v62 = [v49 soundRegion];
        v53 = 5;
        v68 = v21;
        v21 = v20;
        v20 = v50;
LABEL_63:

        v54 = v63;
        v55 = *(v63 + 32);
        v56 = type metadata accessor for UUID();
        v57 = v64;
        sub_10000AF74(&v64[v55], 1, 1, v56);
        *v57 = v53;
        *(v57 + 8) = v51;
        *(v57 + 16) = v52;
        *(v57 + 24) = v62;
        *(v57 + *(v54 + 36)) = 0;
        v58 = v66;
        sub_1000441A8(v57, v66, type metadata accessor for SoundDescriptor);
        v59 = sub_10026D814(&unk_1006A3DC0, &qword_10057EC00);
        sub_10000AF74(v58, 0, 2, v59);
        v60 = type metadata accessor for SoundDescriptorAction(0);
        return sub_10000AF74(v58, 0, 1, v60);
      }
    }

    v51 = [v26 v34[439]];
    v52 = [v26 isVideo];
    v62 = [v26 soundRegion];
    v53 = 4;
    v49 = v26;
    v26 = v67;
    goto LABEL_63;
  }

LABEL_38:
  v33 = v67;

  a1 = v66;
  v7 = v68;
LABEL_51:

  v46 = type metadata accessor for SoundDescriptorAction(0);
  v47 = a1;
LABEL_52:

  return sub_10000AF74(v47, 1, 1, v46);
}

uint64_t sub_100045824@<X0>(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for SoundDescriptor(0);
  __chkstk_darwin(v6);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a2 & 4) != 0 && [a1 isConnected] && objc_msgSend(a1, "needsManualInCallSounds") && (v9 = objc_msgSend(a1, "provider"), v10 = TUCallHapticsEnabled(), v9, (v10 & 1) == 0))
  {
    v13 = [a1 provider];
    v14 = [a1 isVideo];
    v15 = [a1 soundRegion];
    v16 = *(v6 + 32);
    v17 = type metadata accessor for UUID();
    sub_10000AF74(&v8[v16], 1, 1, v17);
    *v8 = 2;
    *(v8 + 1) = v13;
    v8[16] = v14;
    *(v8 + 3) = v15;
    v8[*(v6 + 36)] = 0;
    sub_1000441A8(v8, a3, type metadata accessor for SoundDescriptor);
    v18 = sub_10026D814(&unk_1006A3DC0, &qword_10057EC00);
    sub_10000AF74(a3, 0, 2, v18);
    v19 = type metadata accessor for SoundDescriptorAction(0);
    return sub_10000AF74(a3, 0, 1, v19);
  }

  else
  {
    v11 = type metadata accessor for SoundDescriptorAction(0);

    return sub_10000AF74(a3, 1, 1, v11);
  }
}

uint64_t sub_100045A3C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SoundDescriptorAction(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100045AA0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_100008070();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_100045B00(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000080D0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_100045B54(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_100008070();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_100045BAC(void *a1, uint64_t a2)
{
  if (qword_1006A0B38 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  v5 = sub_10000AF9C(v4, qword_1006BA628);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  if (sub_10000A648(v7))
  {
    v8 = sub_100006DC4();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v5, "Asked to fetch hapticDescriptor", v8, 2u);
    sub_100005F40(v8);
  }

  v9 = [a1 provider];
  v10 = TUCallHapticsEnabled();

  if (!v10)
  {
    v25 = a1;
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v54[0] = v29;
      *v28 = 136315138;
      v30 = [v25 provider];
      v31 = [v30 identifier];

      v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v34 = v33;

      v35 = sub_10002741C(v32, v34, v54);

      *(v28 + 4) = v35;
      _os_log_impl(&_mh_execute_header, v26, v27, "Haptics is disabled for provider: %s", v28, 0xCu);
      sub_100009B7C(v29);
      sub_100005F40(v29);
LABEL_20:
      sub_100005F40(v28);
      goto LABEL_21;
    }

    goto LABEL_21;
  }

  if (![a1 isEndpointOnCurrentDevice])
  {
    v36 = v5;
    v26 = Logger.logObject.getter();
    v37 = static os_log_type_t.debug.getter();
    if (sub_10000A648(v37))
    {
      v28 = sub_100006DC4();
      *v28 = 0;
      v38 = "Haptics is disabled due to call.isEndpointOnCurrentDevice";
LABEL_19:
      _os_log_impl(&_mh_execute_header, v26, v36, v38, v28, 2u);
      goto LABEL_20;
    }

LABEL_21:

    return 0;
  }

  v11 = [a1 provider];
  v12 = [v11 supportsCurrentPlatform];

  if (!v12)
  {
    v36 = v5;
    v26 = Logger.logObject.getter();
    v39 = static os_log_type_t.debug.getter();
    if (sub_10000A648(v39))
    {
      v28 = sub_100006DC4();
      *v28 = 0;
      v38 = "Haptics is disabled due to call.provider.supportsCurrentPlatform";
      goto LABEL_19;
    }

    goto LABEL_21;
  }

  v13 = sub_10000B6FC();
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_1002DD308;
  *(v15 + 24) = v14;
  v54[4] = sub_10002E4B4;
  v54[5] = v15;
  v54[0] = _NSConcreteStackBlock;
  v54[1] = 1107296256;
  v54[2] = sub_10002E470;
  v54[3] = &unk_10062B538;
  v16 = _Block_copy(v54);
  v17 = a1;

  v18 = [v13 anyCallPassesTest:v16];
  swift_unknownObjectRelease();
  _Block_release(v16);
  LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

  if (v13)
  {
    __break(1u);
  }

  else
  {
    if (v18)
    {
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = sub_100006DC4();
        *v22 = 0;
        sub_100005FAC(&_mh_execute_header, v23, v24, "Haptics is disabled due to isVideoUpgrade");
        sub_100005F40(v22);
      }

      return 0;
    }

    if ((sub_1000461BC(v17) & 1) != 0 && (v40 = sub_100046814(v17, a2), v41))
    {
      v42 = v40;
      v43 = Logger.logObject.getter();
      v44 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v43, v44))
      {
        v45 = sub_100006DC4();
        *v45 = 0;
        sub_100005FAC(&_mh_execute_header, v46, v47, "Haptics is selected for connected");
        sub_100005F40(v45);
      }

      return v42;
    }

    else
    {
      v48 = sub_10004639C(v17, a2);
      if (v49)
      {
        v50 = v48;
        v51 = Logger.logObject.getter();
        v52 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v51, v52))
        {
          v53 = sub_100006DC4();
          *v53 = 0;
          _os_log_impl(&_mh_execute_header, v51, v52, "Haptics is selected for disconnected", v53, 2u);
          sub_100005F40(v53);
        }

        return v50;
      }

      else
      {

        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_100046174()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_1000461BC(void *a1)
{
  if ([*(v1 + 24) isCovered])
  {
    if (qword_1006A0B38 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_10000AF9C(v3, qword_1006BA628);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Proximity sensor is covered, not playing connected haptics", v6, 2u);
    }

    goto LABEL_6;
  }

  v8 = [a1 provider];
  v9 = [v8 isTelephonyProvider];

  if ((v9 & 1) != 0 || ![a1 isConversation])
  {
    return 1;
  }

  result = [*(v1 + 16) activeConversationForCall:a1];
  if (result)
  {
    v4 = result;
    if (![result isOneToOneModeEnabled])
    {
LABEL_6:

      return 0;
    }

    v10 = [v4 mergedRemoteMembers];
    sub_10039FBE8();
    sub_1002DD344();
    static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v11 = sub_10001E550();

    return v11 == 1;
  }

  return result;
}

uint64_t sub_10004639C(void *a1, uint64_t a2)
{
  if (qword_1006A0B38 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  v5 = sub_10000AF9C(v4, qword_1006BA628);
  v6 = a1;
  swift_retain_n();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  v9 = &selRef_beginMatchingExtensions;
  if (os_log_type_enabled(v7, v8))
  {
    v10 = swift_slowAlloc();
    *v10 = 67110656;
    *(v10 + 4) = [v6 status];
    *(v10 + 8) = 2048;
    *(v10 + 10) = a2;
    v26 = v5;
    *(v10 + 18) = 1024;
    v11 = [sub_10000B6FC() hasCurrentAudioCalls];

    swift_unknownObjectRelease();
    *(v10 + 20) = v11;

    *(v10 + 24) = 2048;
    [v6 callDuration];
    *(v10 + 26) = v12;
    *(v10 + 34) = 1024;
    *(v10 + 36) = [v6 isOutgoing];

    *(v10 + 40) = 1024;
    *(v10 + 42) = [v6 disconnectedReason];

    *(v10 + 46) = 1024;
    *(v10 + 48) = [v6 needsManualInCallSounds];

    _os_log_impl(&_mh_execute_header, v7, v8, "Checking for disconnected haptics with following propertyies: call.status: %d, triggers: %lu, hasCurrentAudioCalls: %{BOOL}d, callDuration: %f, isOutgoing: %{BOOL}d, disconnectedReason: %d, needsManualInCallSounds: %{BOOL}d", v10, 0x34u);
    v9 = &selRef_beginMatchingExtensions;
  }

  else
  {
  }

  v13 = [v6 status];
  result = 0;
  if (v13 == 6 && (a2 & 1) != 0)
  {
    v15 = [sub_10000B6FC() hasCurrentAudioCalls];
    swift_unknownObjectRelease();
    if ((v15 & 1) == 0)
    {
      [v6 v9[85]];
      if (v16 > 0.0 || ([v6 isOutgoing] & 1) != 0 || objc_msgSend(v6, "disconnectedReason") == 14)
      {
        if ([v6 needsManualInCallSounds])
        {
          v17 = [v6 disconnectedReason];
          if (v17 <= 0x18 && ((1 << v17) & 0x1CE4060) != 0)
          {
            v18 = v6;
            v19 = Logger.logObject.getter();
            v20 = static os_log_type_t.debug.getter();
            if (os_log_type_enabled(v19, v20))
            {
              v21 = swift_slowAlloc();
              *v21 = 67109120;
              *(v21 + 4) = [v18 disconnectedReason];

              _os_log_impl(&_mh_execute_header, v19, v20, "Disconnected Haptics is played due to %d", v21, 8u);
            }

            else
            {

              v19 = v18;
            }

            return sub_10039D36C(1, v18);
          }

          v22 = v6;
          v23 = Logger.logObject.getter();
          v24 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v23, v24))
          {
            v25 = swift_slowAlloc();
            *v25 = 67109120;
            *(v25 + 4) = [v22 disconnectedReason];

            _os_log_impl(&_mh_execute_header, v23, v24, "Disconnected Haptics is disabled due to %d", v25, 8u);
          }

          else
          {
          }
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_100046814(void *a1, char a2)
{
  if ((a2 & 4) != 0 && [a1 isConnected] && ((objc_msgSend(a1, "needsManualInCallSounds") & 1) != 0 || (v4 = objc_msgSend(a1, "provider"), v5 = objc_msgSend(v4, "isTelephonyProvider"), v4, v5) && objc_msgSend(a1, "isOutgoing")))
  {
    return sub_10039D36C(0, a1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000468D0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 168))
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

id sub_100046910(void *a1, uint64_t a2)
{
  if (*(v2 + 88) != 1 || [a1 resolvedCallStatus] != 4)
  {
    return 0;
  }

  result = [a1 shouldSuppressRingtone];
  if (result)
  {
    return *(a2 + *(type metadata accessor for AudioDescriptor(0) + 40));
  }

  return result;
}

uint64_t sub_100046988(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v32 = a3;
  v30 = a1;
  v31 = a2;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v34 = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v33 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10026D814(&unk_1006A2BF0, &unk_100585F10);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10 - 8);
  v14 = v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v17 = v28 - v16;
  v18 = sub_100010B20(v15);
  v19 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("resolutionChangedHandler closure invoked", 40, 2, &_mh_execute_header, v18, v19, _swiftEmptyArrayStorage);

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v21 = result;
    v28[1] = *(result + 16);
    v29 = v7;
    sub_100343100(v30, v17, &unk_1006A2BF0, &unk_100585F10);
    sub_100343100(v31, v14, &unk_1006A2BF0, &unk_100585F10);
    v22 = *(v11 + 80);
    v23 = (v22 + 24) & ~v22;
    v24 = (v12 + v22 + v23) & ~v22;
    v25 = swift_allocObject();
    *(v25 + 16) = v21;
    sub_10004731C(v17, v25 + v23);
    sub_10004731C(v14, v25 + v24);
    *(v25 + v24 + v12) = v32 & 1;
    aBlock[4] = sub_10004739C;
    aBlock[5] = v25;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100004CEC;
    aBlock[3] = &unk_100628310;
    v26 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    v35 = _swiftEmptyArrayStorage;
    sub_10000EE88(&qword_1006A2CC0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
    sub_100018040(&qword_1006A2CD0, &unk_1006A2960, &unk_10057D6E0);
    v27 = v34;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v26);
    (*(v5 + 8))(v27, v4);
    (*(v33 + 8))(v9, v29);
  }

  return result;
}

uint64_t sub_100046DE0()
{
  v2 = sub_10026D814(&unk_1006A2BF0, &unk_100585F10);
  sub_100005EB4(v2);
  v4 = *(v3 + 80);
  v6 = (v4 + 24) & ~v4;
  v7 = (*(v5 + 64) + v4 + v6) & ~v4;

  v8 = v0 + v6;
  v9 = type metadata accessor for AudioDescriptor(0);
  if (!sub_100015468(v8, 1, v9))
  {

    if (*(v8 + 40) != 1)
    {
    }

    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    v10 = v9[5];
    v11 = type metadata accessor for AudioInterruptionDeferredEndDescriptor(0);
    if (!sub_100015468(v8 + v10, 1, v11))
    {
      type metadata accessor for UUID();
      sub_1000080D0();
      (*(v12 + 8))(v8 + v10);
    }

    v13 = v8 + v9[6];
    if (*(v13 + 8))
    {
    }

    v14 = v8 + v9[7];
    v15 = type metadata accessor for RingtoneDescriptor(0);
    if (!sub_100015FB0(v14))
    {

      v16 = *(v15 + 20);
      v17 = type metadata accessor for URL();
      if (!sub_100007D48(v17))
      {
        sub_10000F49C();
        (*(v18 + 8))(v14 + v16, v1);
      }
    }

    v19 = v8 + v9[8];
    v20 = sub_10026D814(&unk_1006A3DC0, &qword_10057EC00);
    if (!sub_100015468(v19, 2, v20))
    {

      v1 = *(type metadata accessor for SoundDescriptor(0) + 32);
      v21 = type metadata accessor for UUID();
      if (!sub_100015FB0(v19 + v1))
      {
        sub_10000F49C();
        (*(v22 + 8))(v19 + v1, v21);
      }
    }

    v23 = v8 + v9[9];
    v24 = *(v23 + 8);
    if (v24)
    {
    }

    v25 = v8 + v9[12];
    v26 = type metadata accessor for CallTranslationDisclosureDescriptor(0);
    if (!sub_1000171FC(v26))
    {

      v27 = *(v23 + 28);
      type metadata accessor for Locale();
      sub_1000080D0();
      (*(v28 + 8))(v25 + v27);
    }
  }

  v29 = v0 + v7;
  if (!sub_100015468(v0 + v7, 1, v9))
  {

    if (*(v29 + 40) != 1)
    {
    }

    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    v30 = v9[5];
    v31 = type metadata accessor for AudioInterruptionDeferredEndDescriptor(0);
    if (!sub_100015468(v29 + v30, 1, v31))
    {
      type metadata accessor for UUID();
      sub_1000080D0();
      (*(v32 + 8))(v29 + v30);
    }

    v33 = v29 + v9[6];
    if (*(v33 + 8))
    {
    }

    v34 = v29 + v9[7];
    v35 = type metadata accessor for RingtoneDescriptor(0);
    if (!sub_100015FB0(v34))
    {

      v36 = *(v35 + 20);
      v37 = type metadata accessor for URL();
      if (!sub_100007D48(v37))
      {
        sub_10000F49C();
        (*(v38 + 8))(v34 + v36, v1);
      }
    }

    v39 = v29 + v9[8];
    v40 = sub_10026D814(&unk_1006A3DC0, &qword_10057EC00);
    if (!sub_100015468(v39, 2, v40))
    {

      v41 = *(type metadata accessor for SoundDescriptor(0) + 32);
      v42 = type metadata accessor for UUID();
      if (!sub_100015FB0(v39 + v41))
      {
        sub_10000F49C();
        (*(v43 + 8))(v39 + v41, v42);
      }
    }

    v44 = v29 + v9[9];
    v45 = *(v44 + 8);
    if (v45)
    {
    }

    v46 = v29 + v9[12];
    v47 = type metadata accessor for CallTranslationDisclosureDescriptor(0);
    if (!sub_100018204(v47))
    {

      sub_1000162C0();
      sub_1000080D0();
      (*(v48 + 8))(v46 + v29);
    }
  }

  return _swift_deallocObject(v0);
}

uint64_t sub_10004731C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10026D814(&unk_1006A2BF0, &unk_100585F10);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10004739C()
{
  v1 = sub_10026D814(&unk_1006A2BF0, &unk_100585F10);
  sub_100005EB4(v1);
  v3 = v2;
  v5 = v4;
  v6 = *(v3 + 80);
  v7 = *(v5 + 64);
  v8 = (v6 + 24) & ~v6;
  v9 = v0 + ((v7 + v6 + v8) & ~v6);
  return sub_100047434(v0 + v8, v9, *(v9 + v7));
}

uint64_t sub_100047434(uint64_t a1, uint64_t a2, int a3)
{
  v4 = v3;
  v75 = a3;
  v7 = sub_10026D814(&unk_1006A2BF0, &unk_100585F10);
  __chkstk_darwin(v7 - 8);
  v9 = &v73 - v8;
  v76 = type metadata accessor for AudioDescriptor(0);
  __chkstk_darwin(v76);
  v11 = &v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchPredicate();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = (&v73 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *(v4 + 16);
  *v15 = v16;
  (*(v13 + 104))(v15, enum case for DispatchPredicate.onQueue(_:), v12);
  v17 = v16;
  v18 = _dispatchPreconditionTest(_:)();
  v19 = (*(v13 + 8))(v15, v12);
  if ((v18 & 1) == 0)
  {
    __break(1u);
    goto LABEL_20;
  }

  v20 = sub_100010B20(v19);
  sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_10057E830;
  v74 = a1;
  v22 = sub_100047B5C(a1);
  v24 = v23;
  *(v21 + 56) = &type metadata for String;
  v25 = sub_100009D88();
  *(v21 + 64) = v25;
  *(v21 + 32) = v22;
  *(v21 + 40) = v24;
  v26 = sub_100047B5C(a2);
  *(v21 + 96) = &type metadata for String;
  *(v21 + 104) = v25;
  *(v21 + 72) = v26;
  *(v21 + 80) = v27;
  LOBYTE(v24) = v75;
  v77 = v75 & 1;
  v28 = String.init<A>(reflecting:)();
  *(v21 + 136) = &type metadata for String;
  *(v21 + 144) = v25;
  *(v21 + 112) = v28;
  *(v21 + 120) = v29;
  v30 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("oldDescriptor: %@ descriptor: %@ notifyUnconditionally: %@", 58, 2, &_mh_execute_header, v20, v30, v21);

  v31 = v24;
  if (*(v4 + 112))
  {

    v33 = sub_100010B20(v32);
    v34 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("An end interruption was deferred but we were asked to update to a new descriptor, so canceling the deferred end", 111, 2, &_mh_execute_header, v33, v34, _swiftEmptyArrayStorage);

    dispatch thunk of DispatchWorkItem.cancel()();

    *(v4 + 112) = 0;
  }

  sub_100343100(a2, v9, &unk_1006A2BF0, &unk_100585F10);
  if (sub_100015468(v9, 1, v76) == 1)
  {
    v35 = sub_100009A5C(v9, &unk_1006A2BF0, &unk_100585F10);
    v36 = sub_100010B20(v35);
    v37 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("Ending interruption immediately since there is no longer a resolved descriptor", 78, 2, &_mh_execute_header, v36, v37, _swiftEmptyArrayStorage);

    return sub_10033DEA8();
  }

  sub_10004A200();
  sub_10026D814(&unk_1006A61A8, &qword_100581168);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100581010;
  *(inited + 32) = sub_10004A2B8(v11);
  *(inited + 40) = v40;
  *(inited + 48) = v41;
  *(inited + 56) = sub_10004A6E4(v11);
  *(inited + 64) = v42;
  *(inited + 72) = v43;
  *(inited + 80) = sub_10004B838(v11);
  *(inited + 88) = v44;
  *(inited + 96) = v45;
  *(inited + 104) = sub_10004BD88(v11);
  *(inited + 112) = v46;
  *(inited + 120) = v47;
  *(inited + 128) = sub_10004C0E8(v11);
  *(inited + 136) = v48;
  *(inited + 144) = v49;
  *(inited + 152) = sub_10004C77C(v11);
  *(inited + 160) = v50;
  *(inited + 168) = v51;
  *(inited + 176) = sub_10004C2FC(v11);
  *(inited + 184) = v52;
  *(inited + 192) = v53;
  v54 = sub_10004C8E4(v11);
  v56 = v55;
  v58 = v57;
  sub_10004CB90();
  v60 = v59;
  *(v59 + 16) = 8;
  *(v59 + 200) = v54;
  *(v59 + 208) = v56;
  *(v59 + 216) = v58;

  for (i = 0; i != 192; i += 24)
  {
    v62 = v60 + i;
    v63 = *(v60 + i + 48);
    if (v63 != 255 && (v63 & 1) != 0)
    {
      v65 = *(v62 + 32);
      v64 = *(v62 + 40);
      v66 = sub_10004CC58();
      v65(v66);
      sub_10004CC68(v65, v64, v63);
    }
  }

  sub_10004FE08(v11, v74, v31 & 1);
  if (*(v60 + 16) < 8uLL)
  {
LABEL_20:
    __break(1u);
  }

  for (j = 0; j != 192; j += 24)
  {
    v68 = v60 + j;
    v69 = *(v60 + j + 48);
    if (v69 != 255 && (v69 & 1) == 0)
    {
      v71 = *(v68 + 32);
      v70 = *(v68 + 40);
      v72 = sub_10004CC58();
      v71(v72);
      sub_10004CC68(v71, v70, v69);
    }
  }

  sub_100045B00(v11, type metadata accessor for AudioDescriptor);
}

uint64_t sub_100047A18(uint64_t a1, void (*a2)(void), uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  a2(0);
  sub_100008070();
  __chkstk_darwin(v7);
  sub_100007BAC();
  __chkstk_darwin(v8);
  sub_10000BB28();
  v9 = sub_10026D814(a3, a4);
  sub_100007BF0(v9);
  sub_100006688();
  __chkstk_darwin(v10);
  v12 = &v17 - v11;
  sub_10003A1C8();
  sub_100009F5C(v12);
  if (!v13)
  {
    sub_100047D98();
    sub_10000C3E4();
    sub_100047E50();
    sub_100007968();
    String.init<A>(reflecting:)();
    v14 = sub_100006884();
    sub_100049D70(v14, v15);
  }

  return sub_100007968();
}

uint64_t sub_100047B98(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100047BBC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 42))
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

uint64_t sub_100047C10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_10026D814(&unk_1006A52C0, &unk_10057D930);
    v10 = a1 + *(a3 + 20);

    return sub_100015468(v10, a2, v9);
  }
}

uint64_t sub_100047CB0(uint64_t a1, int a2)
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

uint64_t sub_100047D04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = type metadata accessor for Locale();
    v10 = a1 + *(a3 + 28);

    return sub_100015468(v10, a2, v9);
  }
}

uint64_t sub_100047D98()
{
  sub_100007710();
  v1(0);
  sub_100008070();
  v2 = sub_100006B30();
  v3(v2);
  return v0;
}

uint64_t sub_100047DF0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_100008070();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_100047E50()
{
  sub_100007710();
  v1(0);
  sub_100008070();
  v2 = sub_100006B30();
  v3(v2);
  return v0;
}

unint64_t sub_100047EA8()
{
  type metadata accessor for SoundDescriptorAction(0);
  sub_100008070();
  __chkstk_darwin(v1);
  sub_100007FDC();
  v4 = v3 - v2;
  sub_10000A8EC();
  v47 = 0xD000000000000010;
  v48 = v5;
  v49[0] = 0;
  v49[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(27);

  sub_10000A8EC();
  v46._countAndFlagsBits = 0xD000000000000018;
  v46._object = v6;
  memcpy(v49, v0, 0xA8uLL);
  memcpy(v45, v0, sizeof(v45));
  sub_100042F60(v49, &v44);
  v7._countAndFlagsBits = String.init<A>(reflecting:)();
  String.append(_:)(v7);

  v8._countAndFlagsBits = 32;
  v8._object = 0xE100000000000000;
  String.append(_:)(v8);
  String.append(_:)(v46);

  *v45 = 0;
  *&v45[8] = 0xE000000000000000;
  _StringGuts.grow(_:)(38);

  sub_10000A8EC();
  *v45 = 0xD000000000000023;
  *&v45[8] = v9;
  v10 = type metadata accessor for AudioDescriptor(0);
  v11._countAndFlagsBits = sub_100049B94(&v0[v10[5]]);
  String.append(_:)(v11);

  v12._countAndFlagsBits = 32;
  v12._object = 0xE100000000000000;
  String.append(_:)(v12);
  String.append(_:)(*v45);

  *v45 = 0;
  *&v45[8] = 0xE000000000000000;
  _StringGuts.grow(_:)(31);

  sub_10000A8EC();
  v44._countAndFlagsBits = 0xD00000000000001CLL;
  v44._object = v13;
  v14 = &v0[v10[6]];
  v15 = *(v14 + 26);
  v16 = *(v14 + 1);
  *v45 = *v14;
  *&v45[16] = v16;
  *&v45[26] = v15;
  v17._countAndFlagsBits = sub_100049E20(v45);
  String.append(_:)(v17);

  sub_10000A9EC();
  String.append(_:)(v44);

  sub_10000EB10();
  _StringGuts.grow(_:)(23);

  sub_10000A8EC();
  v44._countAndFlagsBits = 0xD000000000000014;
  v44._object = v18;
  v19._countAndFlagsBits = sub_100049EB8(&v0[v10[7]]);
  String.append(_:)(v19);

  sub_10000A9EC();
  String.append(_:)(v44);

  sub_10000EB10();
  _StringGuts.grow(_:)(26);

  sub_10000A8EC();
  v44._countAndFlagsBits = 0xD000000000000017;
  v44._object = v20;
  sub_100049EF4(&v0[v10[8]], v4);
  v21._countAndFlagsBits = String.init<A>(reflecting:)();
  String.append(_:)(v21);

  sub_10000A9EC();
  sub_100015290();

  sub_10000EB10();
  _StringGuts.grow(_:)(21);

  sub_10000A8EC();
  v44._countAndFlagsBits = 0xD000000000000012;
  v44._object = v22;
  v23._countAndFlagsBits = sub_10004A158(*&v0[v10[9]], *&v0[v10[9] + 8], *&v0[v10[9] + 16]);
  String.append(_:)(v23);

  sub_10000A9EC();
  sub_100015290();

  sub_10000EB10();
  _StringGuts.grow(_:)(24);

  sub_10000A8EC();
  v44._countAndFlagsBits = 0xD000000000000015;
  v44._object = v24;
  if (v0[v10[10]])
  {
    v25 = 0xE300000000000000;
    v26 = 7104878;
  }

  else
  {
    v26 = String.init<A>(reflecting:)();
    v25 = v27;
  }

  v28 = v25;
  String.append(_:)(*&v26);

  sub_10000A9EC();
  sub_100015290();

  sub_10000EB10();
  _StringGuts.grow(_:)(25);

  sub_10000A8EC();
  v44._countAndFlagsBits = 0xD000000000000016;
  v44._object = v29;
  v30 = *&v0[v10[11]] | ((*&v0[v10[11] + 4] | (v0[v10[11] + 6] << 16)) << 32);
  if ((v30 & 0xFF000000000000) == 0x3000000000000)
  {
    v31 = 0xE300000000000000;
    v32 = 7104878;
  }

  else
  {
    LODWORD(v46._countAndFlagsBits) = *&v0[v10[11]];
    BYTE4(v46._countAndFlagsBits) = BYTE4(v30);
    BYTE5(v46._countAndFlagsBits) = BYTE5(v30) & 1;
    BYTE6(v46._countAndFlagsBits) = BYTE6(v30);
    v32 = String.init<A>(reflecting:)();
    v31 = v33;
  }

  v34 = v31;
  String.append(_:)(*&v32);

  sub_10000A9EC();
  sub_100015290();

  v44._countAndFlagsBits = 0;
  v44._object = 0xE000000000000000;
  _StringGuts.grow(_:)(40);

  sub_10000A8EC();
  v44._countAndFlagsBits = 0xD000000000000025;
  v44._object = v35;
  v36._countAndFlagsBits = sub_10004A1AC(&v0[v10[12]]);
  String.append(_:)(v36);

  sub_10000A9EC();
  sub_100015290();

  v44._countAndFlagsBits = 0;
  v44._object = 0xE000000000000000;
  _StringGuts.grow(_:)(28);

  sub_10000A8EC();
  v44._countAndFlagsBits = 0xD000000000000019;
  v44._object = v37;
  if (v0[v10[13]])
  {
    v38 = 0xE300000000000000;
    v39 = 7104878;
  }

  else
  {
    v39 = String.init<A>(reflecting:)();
    v38 = v40;
  }

  v41 = v38;
  String.append(_:)(*&v39);

  sub_10000A9EC();
  String.append(_:)(v44);

  v42._countAndFlagsBits = 41;
  v42._object = 0xE100000000000000;
  String.append(_:)(v42);
  return v47;
}

uint64_t sub_100048458()
{
  _StringGuts.grow(_:)(16);

  strcpy(&v191, "providerType=");
  HIWORD(v191._object) = -4864;
  v1._countAndFlagsBits = String.init<A>(reflecting:)();
  String.append(_:)(v1);

  sub_100008384();
  String.append(_:)(v191);

  v191._countAndFlagsBits = 0;
  v191._object = 0xE000000000000000;
  v2._countAndFlagsBits = 0x79726F6765746163;
  v2._object = 0xE90000000000003DLL;
  String.append(_:)(v2);
  v176 = *(v0 + 8);
  type metadata accessor for Category(0);
  sub_1000173A0(v3, v4, v3, v5, v6, v7, v8, v9, v160, v176);
  _print_unlocked<A, B>(_:_:)();
  sub_100008384();
  v10 = sub_10001056C();
  sub_10000866C(v10, v11, v12, v13, v14, v15, v16, v17, v161, v177, 0);

  v191._countAndFlagsBits = 0x3D65646F6DLL;
  v191._object = 0xE500000000000000;
  v18._countAndFlagsBits = sub_100048C34(*(v0 + 16));
  String.append(_:)(v18);

  sub_100008384();
  v19 = sub_10001056C();
  sub_10000866C(v19, v20, v21, v22, v23, v24, v25, v26, v162, v178, 109);

  v191._countAndFlagsBits = 0xD000000000000012;
  v191._object = 0x8000000100575D30;
  v27._countAndFlagsBits = sub_100048C4C(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));
  String.append(_:)(v27);

  sub_100008384();
  v28 = sub_10001056C();
  sub_10000866C(v28, v29, v30, v31, v32, v33, v34, v35, v163, v179, 18);

  v191._countAndFlagsBits = 0;
  v191._object = 0xE000000000000000;
  v36._countAndFlagsBits = 0x797469726F697270;
  v36._object = 0xE90000000000003DLL;
  String.append(_:)(v36);
  sub_1000173A0(v37, v38, &type metadata for AudioInterruptionPriority, v39, v40, v41, v42, v43, v164, *(v0 + 50));
  _print_unlocked<A, B>(_:_:)();
  sub_100008384();
  v44 = sub_10001056C();
  sub_10000866C(v44, v45, v46, v47, v48, v49, v50, v51, v165, v180, 0);

  v191._countAndFlagsBits = 0xD000000000000027;
  v191._object = 0x8000000100575D50;
  sub_100018344();
  v53 = v52 | 0x65750000u;
  if (v153)
  {
    v54 = 0x65736C6166;
  }

  else
  {
    v54 = v53;
  }

  sub_1000152CC(v54);

  sub_100008384();
  v55 = sub_10000AABC();
  sub_10000866C(v55, v56, v57, v58, v59, v60, v61, v62, v166, v181, v191._countAndFlagsBits);

  v191._countAndFlagsBits = 0x6C6F4873746E6177;
  v191._object = 0xEF3D636973754D64;
  if (*(v0 + 52))
  {
    v63 = 1702195828;
  }

  else
  {
    v63 = 0x65736C6166;
  }

  sub_1000152CC(v63);

  sub_100008384();
  v64 = sub_10000AABC();
  sub_10000866C(v64, v65, v66, v67, v68, v69, v70, v71, v167, v182, v191._countAndFlagsBits);

  v191._countAndFlagsBits = 0;
  v191._object = 0xE000000000000000;
  _StringGuts.grow(_:)(17);
  v72._countAndFlagsBits = 0x6F6974617265706FLL;
  v72._object = 0xEE003D65646F4D6ELL;
  String.append(_:)(v72);
  v183 = *(v0 + 64);
  type metadata accessor for CSDAudioInterruptionOperationMode(0);
  sub_1000173A0(v73, v74, v73, v75, v76, v77, v78, v79, v168, v183);
  _print_unlocked<A, B>(_:_:)();
  sub_100008384();
  v80 = sub_10000AABC();
  sub_10000866C(v80, v81, v82, v83, v84, v85, v86, v87, v169, v184, 0);

  strcpy(&v191, "wantsA2DP=");
  HIDWORD(v191._object) = -369098752;
  if (*(v0 + 58))
  {
    v88 = 1702195828;
  }

  else
  {
    v88 = 0x65736C6166;
  }

  sub_1000152CC(v88);

  sub_100008384();
  v89 = sub_10000AABC();
  sub_10000866C(v89, v90, v91, v92, v93, v94, v95, v96, v170, v185, v191._countAndFlagsBits);

  sub_10000F5D0();
  v191._countAndFlagsBits = v98 - 3;
  v191._object = v97;
  if (*(v0 + 56))
  {
    v99 = 1702195828;
  }

  else
  {
    v99 = 0x65736C6166;
  }

  sub_1000152CC(v99);

  sub_100008384();
  v100 = sub_10000AABC();
  sub_10000866C(v100, v101, v102, v103, v104, v105, v106, v107, v171, v186, v191._countAndFlagsBits);

  sub_10000F5D0();
  v191._countAndFlagsBits = v109;
  v191._object = v108;
  sub_100018344();
  v111 = v110 | 0x65750000u;
  if (v153)
  {
    v112 = 0x65736C6166;
  }

  else
  {
    v112 = v111;
  }

  sub_1000152CC(v112);

  sub_100008384();
  v113 = sub_10000AABC();
  sub_10000866C(v113, v114, v115, v116, v117, v118, v119, v120, v172, v187, v191._countAndFlagsBits);

  v191._countAndFlagsBits = 0xD00000000000001FLL;
  v191._object = 0x8000000100575DC0;
  sub_100018344();
  v122 = v121 | 0x65750000u;
  if (v153)
  {
    v123 = 0x65736C6166;
  }

  else
  {
    v123 = v122;
  }

  sub_1000152CC(v123);

  sub_100008384();
  v124 = sub_10000AABC();
  sub_10000866C(v124, v125, v126, v127, v128, v129, v130, v131, v173, v188, v191._countAndFlagsBits);

  sub_10000F5D0();
  v191._countAndFlagsBits = v133;
  v191._object = v132;
  if (*(v0 + 57))
  {
    v134 = 1702195828;
  }

  else
  {
    v134 = 0x65736C6166;
  }

  sub_1000152CC(v134);

  v135 = sub_10000AABC();
  sub_10000866C(v135, v136, v137, v138, v139, v140, v141, v142, v174, v189, v191._countAndFlagsBits);

  countAndFlagsBits = v191._countAndFlagsBits;
  v191._countAndFlagsBits = 0;
  v191._object = 0xE000000000000000;
  v144._countAndFlagsBits = 0x546275536C6C6163;
  v144._object = 0xEC0000003D657079;
  String.append(_:)(v144);
  v190 = *(v0 + 148);
  v145 = sub_10026D814(&qword_1006AAE18, &unk_100586A90);
  sub_1000173A0(v145, v146, v145, v147, v148, v149, v150, v151, v175, v190);
  _print_unlocked<A, B>(_:_:)();

  v152._countAndFlagsBits = 0;
  v152._object = 0xE000000000000000;
  String.append(_:)(v152);

  strcpy(&v191, "isUplinkMuted=");
  HIBYTE(v191._object) = -18;
  sub_100018344();
  v155 = v154 | 0x65750000u;
  if (v153)
  {
    v156 = 0x65736C6166;
  }

  else
  {
    v156 = v155;
  }

  if (v153)
  {
    v157 = 0xE500000000000000;
  }

  else
  {
    v157 = 0xE400000000000000;
  }

  v158 = v157;
  String.append(_:)(*&v156);

  String.append(_:)(v191);

  return countAndFlagsBits;
}

uint64_t initializeBufferWithCopyOfBuffer for AudioInterruptionDescriptor.ProviderType(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t sub_100048B6C(uint64_t a1)
{
  if (*(a1 + 5))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100048BE4(uint64_t a1)
{
  if (!a1)
  {
    return sub_1000359E0();
  }

  v2 = sub_100018620();
  v3(v2);
  v4 = v1;
  return String.init<A>(reflecting:)();
}

uint64_t sub_100048C4C(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4)
{
  if (a3 == 1)
  {
    return sub_1000359E0();
  }

  return String.init<A>(reflecting:)();
}

void *sub_100048CB4(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4)
{
  v4 = a4 & 0x100;
  if ((a4 & 1) == 0)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10001ABF4();
    isa = Int._bridgeToObjectiveC()().super.super.isa;
    *(&v29 + 1) = sub_1000496D4();
    *&v28 = isa;
    sub_10000D440(*(&v29 + 1), v8);
    swift_isUniquelyReferenced_nonNull_native();
    sub_1000181C0();
    sub_100040430();

    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;
    if (sub_10001ABF4() == 1668047476 && a3)
    {
      *(&v29 + 1) = &type metadata for String;
      *&v28 = a2;
      *(&v28 + 1) = a3;
      sub_10000D440(1668047476, v12);

      swift_isUniquelyReferenced_nonNull_native();
      sub_1000181C0();
      sub_100040430();
    }

    else
    {
      v13 = sub_100005208(v9, v11);
      if (v14)
      {
        v15 = v13;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v17 = *(v27 + 24);
        sub_10026D814(&qword_1006A39C0, &qword_10057E8C0);
        _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v17);

        sub_10003EBF0((*(v27 + 56) + 32 * v15), &v28);
        _NativeDictionary._delete(at:)();
      }

      else
      {
        v28 = 0u;
        v29 = 0u;
      }

      sub_10004975C(&v28);
    }
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_10000FA2C();
  v18 = UInt._bridgeToObjectiveC()().super.super.isa;
  v19 = sub_1000496D4();
  *(&v29 + 1) = v19;
  *&v28 = v18;
  sub_10000D440(v19, v20);
  swift_isUniquelyReferenced_nonNull_native();
  sub_1000181C0();
  sub_100040430();

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_10000FA2C();
  v21.super.super.isa = UInt._bridgeToObjectiveC()().super.super.isa;
  *(&v29 + 1) = v19;
  *&v28 = v21;
  sub_10000D440(v21.super.super.isa, v22);
  swift_isUniquelyReferenced_nonNull_native();
  sub_1000181C0();
  sub_100040430();

  if (v4)
  {
    v23 = 1701671527;
  }

  else
  {
    v23 = 1684434036;
  }

  v24 = [objc_allocWithZone(NSNumber) initWithUnsignedInt:v23];
  *(&v29 + 1) = v19;
  *&v28 = v24;
  sub_10000D440(v24, v25);
  swift_isUniquelyReferenced_nonNull_native();
  sub_100040430();
  return v27;
}

uint64_t sub_100048FF0(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4)
{
  sub_100049060(a1 & 0xFFFFFFFF00000001, a2, a3, a4 & 0x101);
  v4 = Dictionary.debugDescription.getter();

  return v4;
}

void *sub_100049060(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4)
{
  v4 = sub_100048CB4(a1 & 0xFFFFFFFF00000001, a2, a3, a4 & 0x101);
  v5 = v4 + 8;
  v6 = 1 << *(v4 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & v4[8];
  v9 = (v6 + 63) >> 6;
  v10 = 0;

  v54 = v5;
  for (i = v53; v8; v5 = v54)
  {
    v12 = v10;
LABEL_9:
    v13 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v14 = v13 | (v12 << 6);
    v15 = (*(v53 + 48) + 16 * v14);
    v17 = *v15;
    v16 = v15[1];
    sub_100006A94(*(v53 + 56) + 32 * v14, &v59);
    *&v61 = v17;
    *(&v61 + 1) = v16;
    sub_10003EBF0(&v59, &v62);

LABEL_10:
    v64 = v61;
    v65[0] = v62;
    v65[1] = v63;
    v18 = *(&v61 + 1);
    if (!*(&v61 + 1))
    {

      return i;
    }

    v19 = v64;
    sub_10003EBF0(v65, &v61);
    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    if (v19 == v20 && v21 == v18)
    {
      goto LABEL_32;
    }

    v23 = sub_10000EA0C(v20);

    if (v23)
    {
      goto LABEL_33;
    }

    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    if (v19 == v24 && v25 == v18)
    {
      goto LABEL_32;
    }

    v27 = sub_10000EA0C(v24);

    if (v27)
    {
      goto LABEL_33;
    }

    v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    if (v19 == v28 && v29 == v18)
    {
LABEL_32:
    }

    else
    {
      v31 = sub_10000EA0C(v28);

      if ((v31 & 1) == 0)
      {
        v32 = v19 == 0xD000000000000014 && 0x800000010056B800 == v18;
        if (!v32 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          sub_100006A94(&v61, &v59);
          goto LABEL_44;
        }
      }
    }

LABEL_33:
    sub_100006A94(&v61, v58);
    if (swift_dynamicCast())
    {
      v33 = v57;
      v34 = sub_1000497C4(v57);
      if (!v35)
      {
        v36 = &type metadata for Int;
LABEL_42:
        v60 = v36;
        *&v59 = v33;
        goto LABEL_43;
      }
    }

    else
    {
      if (!swift_dynamicCast())
      {
        sub_100006A94(&v61, &v59);
        goto LABEL_43;
      }

      v33 = v57;
      v34 = sub_1000497C4(v57);
      if (!v35)
      {
        v36 = &type metadata for UInt;
        goto LABEL_42;
      }
    }

    v56 = &type metadata for String;
    *&v55 = v34;
    *(&v55 + 1) = v35;
    sub_10003EBF0(&v55, &v59);
LABEL_43:
    sub_100009B7C(v58);
LABEL_44:
    sub_100006A94(&v59, v58);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v55 = i;
    v38 = sub_100005208(v19, v18);
    v40 = i[2];
    v41 = (v39 & 1) == 0;
    v42 = v40 + v41;
    if (__OFADD__(v40, v41))
    {
      goto LABEL_56;
    }

    v43 = v38;
    v44 = v39;
    sub_10026D814(&qword_1006A39C0, &qword_10057E8C0);
    if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v42))
    {
      v45 = sub_100005208(v19, v18);
      if ((v44 & 1) != (v46 & 1))
      {
        goto LABEL_58;
      }

      v43 = v45;
      if (v44)
      {
LABEL_51:

        i = v55;
        v51 = (*(v55 + 56) + 32 * v43);
        sub_100009B7C(v51);
        sub_10003EBF0(v58, v51);
        sub_100009B7C(&v61);
        goto LABEL_52;
      }
    }

    else if (v44)
    {
      goto LABEL_51;
    }

    i = v55;
    *(v55 + 8 * (v43 >> 6) + 64) |= 1 << v43;
    v47 = (i[6] + 16 * v43);
    *v47 = v19;
    v47[1] = v18;
    sub_10003EBF0(v58, (i[7] + 32 * v43));
    sub_100009B7C(&v61);
    v48 = i[2];
    v49 = __OFADD__(v48, 1);
    v50 = v48 + 1;
    if (v49)
    {
      goto LABEL_57;
    }

    i[2] = v50;
LABEL_52:
    sub_100009B7C(&v59);
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= v9)
    {
      v8 = 0;
      v63 = 0u;
      v61 = 0u;
      v62 = 0u;
      goto LABEL_10;
    }

    v8 = v5[v12];
    ++v10;
    if (v8)
    {
      v10 = v12;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1000494FC()
{
  if (v0[25])
  {
    v1 = 256;
  }

  else
  {
    v1 = 0;
  }

  return sub_100048FF0(*v0 | (*(v0 + 1) << 32), *(v0 + 1), *(v0 + 2), v1 | v0[24]);
}

uint64_t sub_100049528(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = 1668047728;
  if (!a3)
  {
    return 1668047974;
  }

  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == a2 && v6 == a3)
  {

    return 1668050283;
  }

  v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v8)
  {
    return 1668050283;
  }

  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == a2 && v9 == a3)
  {

    return 1668051824;
  }

  v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v11)
  {
    return 1668051824;
  }

  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == a2 && v12 == a3)
  {
  }

  else
  {
    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v14 & 1) == 0)
    {
      if (static String._unconditionallyBridgeFromObjectiveC(_:)() == a2 && v15 == a3)
      {

        return 1668051817;
      }

      else
      {
        v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v17)
        {
          return 1668051817;
        }

        else
        {
          return 1668047476;
        }
      }
    }
  }

  return v3;
}

unint64_t sub_1000496D4()
{
  result = qword_1006A3480;
  if (!qword_1006A3480)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1006A3480);
  }

  return result;
}

void sub_100049718(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = sub_10000A82C(a1, a2, a3, a4, a5);
  sub_10003EBF0(v8, (*(v7 + 56) + 32 * v6));
  sub_100017180();
  if (v10)
  {
    __break(1u);
  }

  else
  {
    *(a5 + 16) = v9;
  }
}

uint64_t sub_10004975C(uint64_t a1)
{
  v2 = sub_10026D814(&unk_1006A2D10, &unk_10057D940);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000497C4(unint64_t a1)
{
  v2 = type metadata accessor for String.Encoding();
  v3 = sub_100007BF0(v2);
  __chkstk_darwin(v3);
  v13 = bswap64(a1);
  v4 = sub_1000499C8(&v13, &v14);
  v5 = 0;
  v6 = v4[2];
  while (1)
  {
    if (v6 == v5)
    {

      return 0;
    }

    if (*(v4 + v5 + 32))
    {
      break;
    }

    ++v5;
  }

  sub_100049A44(v5, v6, v4);
  v9 = v8;
  v11 = v10;

  swift_unknownObjectRetain();
  sub_10026D814(&qword_1006A5A38, qword_100580800);
  sub_100049AB0();
  Data.init<A>(bytes:)();
  sub_10000FA2C();
  static String.Encoding.ascii.getter();
  v7 = String.init(data:encoding:)();
  sub_100049B14(v9, v11);
  swift_unknownObjectRelease();
  return v7;
}

void *sub_100049958(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_10026D814(&qword_1006A5748, &qword_100580558);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

void *sub_1000499C8(_BYTE *a1, _BYTE *a2)
{
  if (!a1)
  {
    return _swiftEmptyArrayStorage;
  }

  v4 = a2 - a1;
  if (a2 == a1)
  {
    return _swiftEmptyArrayStorage;
  }

  result = sub_100049958(a2 - a1, 0);
  if (a2 > a1)
  {
    if ((v4 & 0x8000000000000000) == 0)
    {
      v5 = result;
      memmove(result + 4, a1, v4);
      return v5;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_100049A44(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3 = *(a3 + 16);
  if (v3 < result || v3 < a2)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
  }

LABEL_10:
  __break(1u);
  return result;
}

unint64_t sub_100049AB0()
{
  result = qword_1006A5A40;
  if (!qword_1006A5A40)
  {
    sub_10026DCB4(&qword_1006A5A38, qword_100580800);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A5A40);
  }

  return result;
}

uint64_t sub_100049B14(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

uint64_t sub_100049BE4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();

  return sub_100015468(a1, a2, v4);
}

unint64_t sub_100049C2C()
{
  type metadata accessor for UUID();
  sub_100049D18();
  v0._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v0);

  v1._countAndFlagsBits = 32;
  v1._object = 0xE100000000000000;
  String.append(_:)(v1);
  v2._countAndFlagsBits = 0x444955556C6C6163;
  v2._object = 0xEA0000000000203ALL;
  String.append(_:)(v2);

  v3._countAndFlagsBits = 41;
  v3._object = 0xE100000000000000;
  String.append(_:)(v3);

  return 0xD000000000000027;
}

unint64_t sub_100049D18()
{
  result = qword_1006A25E0;
  if (!qword_1006A25E0)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A25E0);
  }

  return result;
}

uint64_t sub_100049D70(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_100008070();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_100049DC8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_100008070();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_100049E20(uint64_t a1)
{
  if (!*(a1 + 8))
  {
    return 7104878;
  }

  v1 = *(a1 + 32);
  v2 = *(a1 + 24);
  v3 = v1;

  return String.init<A>(reflecting:)();
}

uint64_t sub_100049EF4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SoundDescriptorAction(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100049FE0()
{
  v3 = *(*(v0 + v1) + 16);

  return sub_100461B78(v3);
}

_OWORD *sub_10004A028()
{

  return sub_10003EBF0((v0 - 168), (v0 - 128));
}

uint64_t sub_10004A040(uint64_t a1)
{

  return dispatch thunk of static Equatable.== infix(_:_:)();
}

uint64_t sub_10004A070()
{
  *(v0 + 14) = v1;
  *(v0 + 22) = 2080;
  return v2;
}

uint64_t sub_10004A090()
{

  return swift_arrayDestroy();
}

uint64_t sub_10004A0AC(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_10004A0DC()
{
  sub_10003EBF0((v0 - 112), (v0 - 144));

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t sub_10004A118(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{

  return swift_endAccess();
}

uint64_t sub_10004A13C(uint64_t a1)
{
  *(v1 + 4) = a1;
  *(v1 + 12) = 2080;
  return v2;
}

uint64_t sub_10004A158(char a1, void *a2, void *a3)
{
  if (!a2)
  {
    return sub_1000359E0();
  }

  v4 = a3;
  v5 = a2;
  return String.init<A>(reflecting:)();
}

uint64_t sub_10004A200()
{
  v2 = sub_10000EA30();
  v3(v2);
  sub_100008070();
  (*(v4 + 32))(v0, v1);
  return v0;
}

uint64_t sub_10004A258(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_100008070();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t (*sub_10004A2B8(uint64_t a1))()
{
  v17 = a1;
  v2 = sub_10026D814(&qword_1006A61F0, &unk_10057D920);
  __chkstk_darwin(v2 - 8);
  v4 = &v16 - v3;
  v5 = type metadata accessor for RingtoneDescriptor(0);
  v16 = *(v5 - 8);
  v6 = __chkstk_darwin(v5);
  __chkstk_darwin(v6);
  v7 = type metadata accessor for DispatchPredicate();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = (&v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(v1 + 16);
  *v10 = v11;
  (*(v8 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v7);
  v12 = v11;
  LOBYTE(v11) = _dispatchPreconditionTest(_:)();
  result = (*(v8 + 8))(v10, v7);
  if (v11)
  {
    v14 = type metadata accessor for AudioDescriptor(0);
    sub_100343100(v17 + *(v14 + 28), v4, &qword_1006A61F0, &unk_10057D920);
    if (sub_100015468(v4, 1, v5) == 1)
    {
      sub_100009A5C(v4, &qword_1006A61F0, &unk_10057D920);

      return sub_10004CDC4;
    }

    else
    {
      sub_10004A200();
      sub_10004A200();
      *(swift_allocObject() + 16) = v1;
      sub_10004A200();

      return sub_10034304C;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10004A5D0()
{
  v1 = type metadata accessor for RingtoneDescriptor(0);
  sub_10000A880();
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  v4 = *(v1 + 20);
  v5 = type metadata accessor for URL();
  if (!sub_100015468(v0 + v3 + v4, 1, v5))
  {
    sub_10000F49C();
    (*(v6 + 8))(v0 + v3 + v4, v5);
  }

  return _swift_deallocObject(v0);
}

uint64_t (*sub_10004A6E4(uint64_t a1))()
{
  v22 = a1;
  v2 = type metadata accessor for AudioDescriptor(0);
  v19 = *(v2 - 8);
  v3 = *(v19 + 64);
  __chkstk_darwin(v2);
  v20 = v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for SoundDescriptor(0);
  v18[1] = *(v4 - 8);
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for SoundDescriptorAction(0);
  __chkstk_darwin(v5 - 8);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = (v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = v1;
  v12 = *(v1 + 16);
  *v11 = v12;
  (*(v9 + 104))(v11, enum case for DispatchPredicate.onQueue(_:), v8);
  v13 = v12;
  LOBYTE(v12) = _dispatchPreconditionTest(_:)();
  result = (*(v9 + 8))(v11, v8);
  if (v12)
  {
    sub_10004B628();
    v15 = sub_10026D814(&unk_1006A3DC0, &qword_10057EC00);
    v16 = sub_100015468(v7, 2, v15);
    if (v16)
    {
      if (v16 == 1)
      {
        return 0;
      }

      return sub_10004CDC8;
    }

    else
    {
      sub_10004A200();
      sub_10004B628();
      *(swift_allocObject() + 16) = v21;
      sub_10004A200();
      sub_10004A200();

      return sub_100342C1C;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10004AAAC()
{
  v1 = type metadata accessor for SoundDescriptor(0);
  sub_10000A880();
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v5 = *(v4 + 64);
  v6 = type metadata accessor for AudioDescriptor(0);
  sub_10000A880();
  v8 = (v3 + v5 + *(v7 + 80)) & ~*(v7 + 80);

  v9 = v0 + v3;

  v10 = *(v1 + 32);
  v11 = type metadata accessor for UUID();
  if (!sub_10000FDEC(v9 + v10))
  {
    sub_10000F49C();
    (*(v12 + 8))(v9 + v10, v11);
  }

  v13 = v0 + v8;

  if (*(v0 + v8 + 40) != 1)
  {
  }

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  v14 = v6[5];
  v15 = type metadata accessor for AudioInterruptionDeferredEndDescriptor(0);
  if (!sub_100015468(v13 + v14, 1, v15))
  {
    sub_10000F49C();
    (*(v16 + 8))(v13 + v14, v11);
  }

  v17 = v13 + v6[6];
  if (*(v17 + 8))
  {
  }

  v18 = v13 + v6[7];
  v19 = type metadata accessor for RingtoneDescriptor(0);
  if (!sub_100015468(v18, 1, v19))
  {

    v20 = *(v19 + 20);
    v21 = type metadata accessor for URL();
    if (!sub_100015468(v18 + v20, 1, v21))
    {
      sub_10000F49C();
      (*(v22 + 8))(v18 + v20, v21);
    }
  }

  v23 = v13 + v6[8];
  v24 = sub_10026D814(&unk_1006A3DC0, &qword_10057EC00);
  if (!sub_100015468(v23, 2, v24))
  {

    v25 = *(v1 + 32);
    if (!sub_10000FDEC(v23 + v25))
    {
      sub_10000F49C();
      (*(v26 + 8))(v23 + v25, v11);
    }
  }

  v27 = v13 + v6[9];
  v28 = *(v27 + 8);
  if (v28)
  {
  }

  v29 = v13 + v6[12];
  v30 = type metadata accessor for CallTranslationDisclosureDescriptor(0);
  if (!sub_100018204(v30))
  {

    sub_1000162C0();
    sub_1000080D0();
    (*(v31 + 8))(v29 + v27);
  }

  return _swift_deallocObject(v0);
}

BOOL sub_10004AE3C(void *a1, void *a2)
{
  v3 = v2;
  v96 = type metadata accessor for UUID();
  sub_100007FEC();
  v93 = v6;
  __chkstk_darwin(v7);
  sub_100007BAC();
  v90 = v8 - v9;
  sub_100006838();
  __chkstk_darwin(v10);
  v91 = &v87 - v11;
  v12 = type metadata accessor for SharePlayAvailabilityManager.CallAndHandle(0);
  sub_100007FEC();
  v97 = v13;
  __chkstk_darwin(v14);
  sub_100007BAC();
  v17 = v15 - v16;
  __chkstk_darwin(v18);
  v20 = &v87 - v19;
  v21 = sub_10026D814(&qword_1006A81C8, &qword_100583B60);
  v22 = sub_100007BF0(v21);
  __chkstk_darwin(v22);
  sub_100007BAC();
  v25 = v23 - v24;
  __chkstk_darwin(v26);
  v28 = &v87 - v27;
  sub_10000F3C0();
  sub_100050924(a1, 0xD00000000000001DLL, v29);
  v31 = v30;
  swift_beginAccess();
  v32 = *(v3 + 160);
  v92 = a2;
  v99 = a2;
  v100 = v31;
  v98 = v31;

  sub_1002CB078(sub_1003A6060, v32, v28);

  sub_100285FC4(v28, v25, &qword_1006A81C8, &qword_100583B60);
  v33 = v12;
  v34 = sub_100015468(v25, 1, v12);
  v94 = v28;
  v95 = v3;
  if (v34 == 1)
  {
    sub_100009A04(v25, &qword_1006A81C8, &qword_100583B60);
    v35 = v12;
  }

  else
  {
    v36 = sub_100027E34();
    sub_1002DB564(v36, v37);
    sub_100008D34(v3 + 160, v101);
    v89 = v20;
    sub_1003840F8(v20);
    swift_endAccess();
    v38 = sub_100006B30();
    sub_1000051F8(v38, v39);
    if (qword_1006A0AD0 != -1)
    {
LABEL_30:
      sub_100008688(&qword_1006A0AD0);
    }

    v40 = type metadata accessor for Logger();
    sub_1000075F0(v40, qword_1006A80E0);
    v41 = v93;
    v42 = v91;
    v43 = v96;
    (*(v93 + 16))(v91, v92, v96);
    v44 = v98;
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.default.getter();

    v35 = v33;
    if (os_log_type_enabled(v45, v46))
    {
      sub_100007C08();
      v47 = sub_10000FE98();
      v87 = v47;
      v88 = sub_100005E84();
      v101[0] = v88;
      *v43 = 138412546;
      *(v43 + 4) = v44;
      *v47 = v44;
      *(v43 + 12) = 2080;
      sub_10000A298();
      sub_100050E78(v48, v49, &protocol conformance descriptor for UUID);
      v50 = v41;
      v51 = v44;
      LOBYTE(v47) = v46;
      v52 = v96;
      v53 = dispatch thunk of CustomStringConvertible.description.getter();
      v55 = v54;
      (*(v50 + 8))(v42, v52);
      sub_10002741C(v53, v55, v101);
      sub_100006064();
      *(v43 + 14) = v53;
      _os_log_impl(&_mh_execute_header, v45, v47, "[SharePlayAvailabilityManager] Unregistered callback for handle: %@, callUUID: %s", v43, 0x16u);
      sub_100009A04(v87, &unk_1006A2630, &qword_10057CB40);
      sub_100007CBC();
      sub_100009B7C(v88);
      sub_100007CBC();
      sub_100005F40(v43);
    }

    else
    {

      (*(v41 + 8))(v42, v43);
    }

    sub_1002DB508(v89);
    v3 = v95;
  }

  v56 = *(v3 + 160);
  v57 = 1 << *(v56 + 32);
  v58 = -1;
  if (v57 < 64)
  {
    v58 = ~(-1 << v57);
  }

  v59 = v58 & *(v56 + 64);
  v33 = (v57 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v60 = 0;
  v61 = 0;
  do
  {
    if (!v59)
    {
      while (1)
      {
        v62 = v61 + 1;
        if (__OFADD__(v61, 1))
        {
          break;
        }

        if (v62 >= v33)
        {
          goto LABEL_20;
        }

        v59 = *(v56 + 64 + 8 * v62);
        ++v61;
        if (v59)
        {
          v61 = v62;
          goto LABEL_17;
        }
      }

      __break(1u);
      goto LABEL_30;
    }

    v62 = v61;
LABEL_17:
    v63 = __clz(__rbit64(v59));
    v59 &= v59 - 1;
    sub_10037A8AC(*(v56 + 48) + v97[9] * (v63 | (v62 << 6)), v17);
    v64 = [*(v17 + *(v35 + 20)) isEquivalentToHandle:v98];
    sub_1002DB508(v17);
    v65 = __OFADD__(v60, v64);
    v60 += v64;
  }

  while (!v65);
  __break(1u);
LABEL_20:

  v66 = v94;
  if (sub_100015468(v94, 1, v35) != 1 && !v60)
  {
    if (qword_1006A0AD0 != -1)
    {
      sub_100008688(&qword_1006A0AD0);
    }

    v67 = type metadata accessor for Logger();
    sub_1000075F0(v67, qword_1006A80E0);
    v68 = v93;
    v69 = v90;
    v70 = v96;
    (*(v93 + 16))(v90, v92, v96);
    v71 = v98;
    v72 = Logger.logObject.getter();
    v73 = static os_log_type_t.default.getter();

    v74 = os_log_type_enabled(v72, v73);
    v75 = v95;
    if (v74)
    {
      sub_100007C08();
      v76 = sub_10000FE98();
      v92 = v76;
      v97 = sub_100005E84();
      v101[0] = v97;
      *v70 = 138412546;
      *(v70 + 4) = v71;
      *v76 = v71;
      *(v70 + 12) = 2080;
      sub_10000A298();
      sub_100050E78(v77, v78, &protocol conformance descriptor for UUID);
      v79 = v71;
      v80 = v96;
      v81 = dispatch thunk of CustomStringConvertible.description.getter();
      v83 = v82;
      (*(v68 + 8))(v69, v80);
      v84 = sub_10002741C(v81, v83, v101);
      v66 = v94;

      *(v70 + 14) = v84;
      v75 = v95;
      _os_log_impl(&_mh_execute_header, v72, v73, "[SharePlayAvailabilityManager] Clearing cache entries for handle: %@, callUUID: %s", v70, 0x16u);
      sub_100009A04(v92, &unk_1006A2630, &qword_10057CB40);
      sub_100006868();
      sub_100009B7C(v97);
      sub_100006868();
      sub_100005F40(v70);
    }

    else
    {

      (*(v68 + 8))(v69, v70);
    }

    sub_100008D34(v75 + 152, v101);
    sub_100050EC0(v71);
    swift_endAccess();
  }

  v85 = sub_100015468(v66, 1, v35) != 1;
  sub_100009A04(v66, &qword_1006A81C8, &qword_100583B60);
  return v85;
}

uint64_t sub_10004B628()
{
  v2 = sub_10000EA30();
  v3(v2);
  sub_100008070();
  (*(v4 + 16))(v0, v1);
  return v0;
}

void sub_10004B680(uint64_t a1)
{
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = [*(a1 + 32) callCenter];
  v3 = [v2 conversationManager];
  v4 = [v3 activeConversations];

  v5 = [v4 countByEnumeratingWithState:&v13 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        if ([v9 state] && !objc_msgSend(v9, "avMode"))
        {
          objc_storeStrong((*(*(a1 + 40) + 8) + 40), v9);
          goto LABEL_12;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v19 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  v11 = sub_100004778(v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [*(*(*(a1 + 40) + 8) + 40) groupUUID];
    *buf = 138412290;
    v18 = v12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "resolvedAVLessConversation groupUUID: %@", buf, 0xCu);
  }
}

uint64_t (*sub_10004B838(uint64_t a1))()
{
  v3 = type metadata accessor for AudioDescriptor(0);
  __chkstk_darwin(v3);
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v1 + 16);
  *v7 = v8;
  (*(v5 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v4);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  result = (*(v5 + 8))(v7, v4);
  if (v8)
  {
    v11 = (a1 + *(v3 + 36));
    v12 = *v11;
    v13 = v11[1];
    v14 = v11[2];
    if (v13)
    {
      sub_10004B628();
      v15 = swift_allocObject();
      *(v15 + 16) = v1;
      *(v15 + 24) = v12;
      *(v15 + 32) = v13;
      *(v15 + 40) = v14;
      sub_10004A200();

      v16 = sub_100342AE4;
    }

    else
    {

      v16 = sub_10004D268;
    }

    v17 = v16;
    sub_10004C0A8(v12, v13, v14);
    return v17;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10004BAB0()
{
  v2 = type metadata accessor for AudioDescriptor(0);
  sub_10000A880();
  v4 = (*(v3 + 80) + 48) & ~*(v3 + 80);

  v5 = v0 + v4;
  if (*(v0 + v4 + 40) != 1)
  {
  }

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  v6 = v2[5];
  v7 = type metadata accessor for AudioInterruptionDeferredEndDescriptor(0);
  if (!sub_100015468(v5 + v6, 1, v7))
  {
    type metadata accessor for UUID();
    sub_1000080D0();
    (*(v8 + 8))(v5 + v6);
  }

  v9 = v5 + v2[6];
  if (*(v9 + 8))
  {
  }

  v10 = v5 + v2[7];
  v11 = type metadata accessor for RingtoneDescriptor(0);
  if (!sub_1000171FC(v11))
  {

    v12 = *(v1 + 20);
    v13 = type metadata accessor for URL();
    if (!sub_100015FB0(v10 + v12))
    {
      sub_10000F49C();
      (*(v14 + 8))(v10 + v12, v13);
    }
  }

  v15 = v5 + v2[8];
  v16 = sub_10026D814(&unk_1006A3DC0, &qword_10057EC00);
  if (!sub_100015468(v15, 2, v16))
  {

    v17 = *(type metadata accessor for SoundDescriptor(0) + 32);
    v18 = type metadata accessor for UUID();
    if (!sub_10000FDEC(v15 + v17))
    {
      sub_10000F49C();
      (*(v19 + 8))(v15 + v17, v18);
    }
  }

  v20 = v5 + v2[9];
  v21 = *(v20 + 8);
  if (v21)
  {
  }

  v22 = v5 + v2[12];
  v23 = type metadata accessor for CallTranslationDisclosureDescriptor(0);
  if (!sub_100018204(v23))
  {

    sub_1000162C0();
    sub_1000080D0();
    (*(v24 + 8))(v22 + v20);
  }

  return _swift_deallocObject(v0);
}

uint64_t (*sub_10004BD88(uint64_t a1))()
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (&v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v1 + 16);
  *v6 = v7;
  (*(v4 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v3);
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  result = (*(v4 + 8))(v6, v3);
  if (v7)
  {
    if (*(a1 + *(type metadata accessor for AudioDescriptor(0) + 40)))
    {
      v10 = *(v1 + 72);
      *(swift_allocObject() + 16) = v10;
      v11 = v10;
      return sub_10004D4F4;
    }

    else
    {

      return sub_100342AA0;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10004BF08()
{
  sub_100006890();

  return _swift_deallocObject(v1);
}

void sub_10004C090(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10004C0A8(uint64_t a1, void *a2, void *a3)
{
  if (a2)
  {
    v3 = a3;

    v4 = a2;
  }
}

void (*sub_10004C0E8(uint64_t a1))()
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (&v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v1 + 16);
  *v6 = v7;
  (*(v4 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v3);
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  result = (*(v4 + 8))(v6, v3);
  if (v7)
  {
    v10 = type metadata accessor for AudioDescriptor(0);
    v11 = *(a1 + *(v10 + 44)) | ((*(a1 + *(v10 + 44) + 4) | (*(a1 + *(v10 + 44) + 6) << 16)) << 32);
    if ((v11 & 0xFF000000000000) == 0x3000000000000)
    {
      v12 = *(v1 + 80);
      *(swift_allocObject() + 16) = v12;
      v13 = v12;
      return sub_10004D8D4;
    }

    else
    {
      v15 = swift_allocObject();
      *(v15 + 16) = v1;
      *(v15 + 28) = BYTE4(v11);
      *(v15 + 24) = v11;
      *(v15 + 29) = BYTE5(v11) & 1;
      *(v15 + 30) = BYTE6(v11);

      return sub_100342A6C;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10004C2C0()
{

  return _swift_deallocObject(v0);
}

uint64_t (*sub_10004C2FC(uint64_t a1))()
{
  v22 = a1;
  v2 = sub_10026D814(&unk_1006A2B50, &unk_1005811A0);
  __chkstk_darwin(v2 - 8);
  v4 = &v21 - v3;
  v5 = type metadata accessor for CallTranslationDisclosureDescriptor(0);
  v21 = *(v5 - 8);
  v6 = __chkstk_darwin(v5);
  __chkstk_darwin(v6);
  v7 = type metadata accessor for DispatchPredicate();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = (&v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(v1 + 16);
  *v10 = v11;
  (*(v8 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v7);
  v12 = v11;
  LOBYTE(v11) = _dispatchPreconditionTest(_:)();
  result = (*(v8 + 8))(v10, v7);
  if (v11)
  {
    v14 = [*(v1 + 128) voiceTranslationEnabled];
    if (v14)
    {
      v15 = type metadata accessor for AudioDescriptor(0);
      sub_100343100(v22 + *(v15 + 48), v4, &unk_1006A2B50, &unk_1005811A0);
      if (sub_100015468(v4, 1, v5) == 1)
      {
        sub_100009A5C(v4, &unk_1006A2B50, &unk_1005811A0);
        v16 = *(v1 + 88);
        *(swift_allocObject() + 16) = v16;
        v17 = v16;
        return sub_10004DA60;
      }

      else
      {
        sub_10004A200();
        sub_10004A200();
        *(swift_allocObject() + 16) = v1;
        sub_10004A200();

        return sub_100342A38;
      }
    }

    else
    {
      v19 = sub_100010B20(v14);
      v20 = static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)("voiceTranslation feature flag is false, return", 46, 2, &_mh_execute_header, v19, v20, _swiftEmptyArrayStorage);

      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10004C694()
{
  v1 = (type metadata accessor for CallTranslationDisclosureDescriptor(0) - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);

  v3 = v1[9];
  type metadata accessor for Locale();
  sub_1000080D0();
  (*(v4 + 8))(v0 + v2 + v3);

  return _swift_deallocObject(v0);
}

uint64_t (*sub_10004C77C(uint64_t a1))()
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v1 + 16);
  *v6 = v7;
  (*(v4 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v3);
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  result = (*(v4 + 8))(v6, v3);
  if (v7)
  {
    if (*(a1 + *(type metadata accessor for AudioDescriptor(0) + 52)))
    {

      return sub_10004D6F4;
    }

    else
    {

      return sub_100342A64;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_10004C8E4(uint64_t a1)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (&v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v1 + 16);
  *v6 = v7;
  (*(v4 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v3);
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  result = (*(v4 + 8))(v6, v3);
  if (v7)
  {
    v10 = a1 + *(type metadata accessor for AudioDescriptor(0) + 24);
    v12 = *v10;
    v11 = *(v10 + 8);
    v13 = *(v10 + 16);
    v14 = *(v10 + 24);
    v15 = *(v10 + 32);
    v16 = *(v10 + 40);
    if (v11)
    {
      v17 = swift_allocObject();
      *(v17 + 16) = v1;
      *(v17 + 24) = v12;
      *(v17 + 32) = v11;
      *(v17 + 40) = v13;
      *(v17 + 48) = v14;
      *(v17 + 56) = v15;
      *(v17 + 64) = v16 & 1;
      *(v17 + 65) = HIBYTE(v16) & 1;

      v18 = sub_1003429B4;
    }

    else
    {
      v19 = *(v1 + 40);
      *(swift_allocObject() + 16) = v19;
      v20 = v19;
      v18 = sub_10004FC9C;
    }

    v21 = v18;
    sub_10004CB34(v12, v11, v13, v14, v15);
    return v21;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10004CADC()
{

  return _swift_deallocObject(v0);
}

void sub_10004CB34(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  if (a2)
  {
    v6 = a4;
    v7 = a5;
  }
}

void sub_10004CB90()
{
  sub_1000115C0();
  if ((v3 & 1) == 0 || (sub_10000A27C(), v4 == v5))
  {
LABEL_6:
    sub_10000ABE4();
    if (v2)
    {
      v6 = sub_10026D814(&unk_1006A61A8, &qword_100581168);
      v7 = sub_100016140(v6);
      sub_10001747C(v7);
      sub_10000EC84(v8 / 24);
      if (v1)
      {
LABEL_8:
        v9 = sub_10000F95C();
        sub_100395E08(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v12 = sub_10026D814(&unk_1006ACA60, &qword_100588708);
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

uint64_t sub_10004CC68(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_10004CC60(a1, a2);
  }

  return a1;
}

void sub_10004CC80(uint64_t a1)
{
  v2 = *(v1 + 24);
  if (v2)
  {
    v3 = *(v1 + 32);
    *(v1 + 24) = 0;
    *(v1 + 32) = 0;
    v4 = sub_100004778(a1);
    sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_10057D690;
    swift_unknownObjectRetain();
    sub_10026D814(&qword_1006A6628, &unk_1005819E0);
    v6 = String.init<A>(reflecting:)();
    v8 = v7;
    *(v5 + 56) = &type metadata for String;
    *(v5 + 64) = sub_100009D88();
    *(v5 + 32) = v6;
    *(v5 + 40) = v8;
    v9 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("Requested to end playback, stopping alert: %@", 45, 2, &_mh_execute_header, v4, v9, v5, v2, v3);

    ObjectType = swift_getObjectType();
    (*(v3 + 48))(ObjectType, v3);
    OS_dispatch_semaphore.wait()();
    swift_unknownObjectRelease();
  }

  sub_100008348();
}

uint64_t sub_10004CDCC()
{
  v1 = sub_10026D814(&qword_1006A2BE8, &unk_10057D980);
  v2 = __chkstk_darwin(v1 - 8);
  v4 = &v14[-v3];
  v5 = sub_100004778(v2);
  sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_10057D690;
  v7 = OBJC_IVAR____TtC13callservicesd13SoundProvider_activeDescriptor;
  swift_beginAccess();
  sub_10004CF98(v0 + v7, v4);
  v8 = sub_10004D008(v4);
  v10 = v9;
  sub_1000099A4(v4, &qword_1006A2BE8, &unk_10057D980);
  *(v6 + 56) = &type metadata for String;
  *(v6 + 64) = sub_100009D88();
  *(v6 + 32) = v8;
  *(v6 + 40) = v10;
  v11 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("Stopping sound playback for %@", 30, 2, &_mh_execute_header, v5, v11, v6);

  [*(v0 + OBJC_IVAR____TtC13callservicesd13SoundProvider_player) stopPlaying];
  v12 = type metadata accessor for SoundDescriptor(0);
  sub_10000AF74(v4, 1, 1, v12);
  swift_beginAccess();
  sub_10004D044(v4, v0 + v7);
  return swift_endAccess();
}

uint64_t sub_10004CF98(uint64_t a1, uint64_t a2)
{
  v4 = sub_10026D814(&qword_1006A2BE8, &unk_10057D980);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10004D044(uint64_t a1, uint64_t a2)
{
  v4 = sub_10026D814(&qword_1006A2BE8, &unk_10057D980);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_10004D0B4()
{
  v1 = v0;
  if (qword_1006A0B38 != -1)
  {
    sub_10000864C(&qword_1006A0B38);
  }

  v2 = type metadata accessor for Logger();
  sub_10000AF9C(v2, qword_1006BA628);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v20 = v6;
    *v5 = 136315138;
    v7 = *(v1 + 24);
    if (v7)
    {
      v8 = *(v1 + 32);
      v9 = *(v1 + 16);
      v10 = v8;
      v11 = v7;
      v12 = sub_10039D52C(v9, v11, v8);
      v14 = v13;
    }

    else
    {
      v14 = 0xE300000000000000;
      v12 = 7104878;
    }

    v15 = sub_10002741C(v12, v14, &v20);

    *(v5 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v3, v4, "Stopping Haptic playback for activeDescriptor: %s", v5, 0xCu);
    sub_100009B7C(v6);
  }

  *(v1 + 24) = 0;
  *(v1 + 32) = 0;
  *(v1 + 16) = 0;
  sub_100006048();

  sub_10004D4B4(v16, v17, v18);
}

void *sub_10004D26C(uint64_t a1, unint64_t a2)
{
  v3 = sub_10004D2B8(a1, a2);
  sub_10004D3D0(&off_100620020);
  return v3;
}

void *sub_10004D2B8(uint64_t a1, unint64_t a2)
{
  v4 = (HIBYTE(a2) & 0xF);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = String.UTF8View._foreignCount()())
  {
    result = sub_100049958(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = _StringGuts._foreignCopyUTF8(into:)();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = result + 4;
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
          v4 = (a1 & 0xFFFFFFFFFFFFLL);
        }

        else
        {
          result = _StringObject.sharedUTF8.getter();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = v7 + 4;
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_10004D3D0(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v7 = v4 + v2;
    }

    else
    {
      v7 = v4;
    }

    result = sub_100323838(result, v7, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void sub_10004D4B4(uint64_t a1, void *a2, void *a3)
{
  if (a2)
  {
  }
}

uint64_t sub_10004D518()
{
  sub_10004D62C();
  sub_10004D568();
  *(v0 + OBJC_IVAR____TtC13callservicesd17HoldMusicProvider_activeDescriptor) = 1;
  v1 = (v0 + OBJC_IVAR____TtC13callservicesd17HoldMusicProvider_speechSynthesizerEventHandler);
  v2 = *(v0 + OBJC_IVAR____TtC13callservicesd17HoldMusicProvider_speechSynthesizerEventHandler);
  v3 = *(v0 + OBJC_IVAR____TtC13callservicesd17HoldMusicProvider_speechSynthesizerEventHandler + 8);
  *v1 = 0;
  v1[1] = 0;

  return sub_1000051F8(v2, v3);
}

void sub_10004D568()
{
  v1 = *(v0 + OBJC_IVAR____TtC13callservicesd17HoldMusicProvider_audioPlayer);
  if (v1)
  {
    v5 = v1;
    v2 = [v5 isPlaying];
    if (v2)
    {
      v3 = sub_100010B20(v2);
      v4 = static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)("Ending hold music", 17, 2, &_mh_execute_header, v3, v4, _swiftEmptyArrayStorage);

      [v5 stop];
    }
  }
}

void sub_10004D62C()
{
  v1 = *(v0 + OBJC_IVAR____TtC13callservicesd17HoldMusicProvider_speechSynthesizer);
  if (v1)
  {
    v5 = v1;
    v2 = [v5 isSpeaking];
    if (v2)
    {
      v3 = sub_100010B20(v2);
      v4 = static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)("Ending hold message", 19, 2, &_mh_execute_header, v3, v4, _swiftEmptyArrayStorage);

      [v5 stopSpeakingAtBoundary:0];
    }
  }
}

void sub_10004D71C()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC13callservicesd18DisclosureProvider_startDisclosureAudioPlayer;
  v3 = *(v0 + OBJC_IVAR____TtC13callservicesd18DisclosureProvider_startDisclosureAudioPlayer);
  if (v3)
  {
    v4 = v3;
    v5 = [v4 isPlaying];
    if (v5)
    {
      v6 = sub_100010B20(v5);
      v7 = static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)("Ending start disclosure beep", 28, 2, &_mh_execute_header, v6, v7, _swiftEmptyArrayStorage);

      [v4 stop];
      v8 = *(v1 + OBJC_IVAR____TtC13callservicesd18DisclosureProvider_microphoneInjectionUtilities);
      v9 = v4;
      v10 = v8;
      sub_1003C4478(v3);
    }
  }

  v11 = OBJC_IVAR____TtC13callservicesd18DisclosureProvider_stopDisclosureAudioPlayer;
  v12 = *(v1 + OBJC_IVAR____TtC13callservicesd18DisclosureProvider_stopDisclosureAudioPlayer);
  if (v12)
  {
    v13 = v12;
    v14 = [v13 isPlaying];
    if (v14)
    {
      v15 = sub_100010B20(v14);
      v16 = static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)("Ending start disclosure beep", 28, 2, &_mh_execute_header, v15, v16, _swiftEmptyArrayStorage);

      [v13 stop];
      v17 = *(v1 + OBJC_IVAR____TtC13callservicesd18DisclosureProvider_microphoneInjectionUtilities);
      v18 = v13;
      v19 = v17;
      sub_1003C4478(v12);
    }
  }

  v20 = *(v1 + v11);
  *(v1 + v11) = 0;

  v21 = *(v1 + v2);
  *(v1 + v2) = 0;
}

uint64_t sub_10004D90C(const char *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100004778(a1);
  v7 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)(a1, a2, 2, &_mh_execute_header, v6, v7, _swiftEmptyArrayStorage);

  return _MRMediaRemoteSetRouteDiscoveryMode(a3);
}

uint64_t sub_10004D990()
{
  v1 = sub_10026D814(&unk_1006A2B50, &unk_1005811A0);
  __chkstk_darwin(v1 - 8);
  v3 = &v7 - v2;
  sub_10004DB28();
  sub_10004DAF4();
  sub_10004DA84();
  v4 = type metadata accessor for CallTranslationDisclosureDescriptor(0);
  sub_10000AF74(v3, 1, 1, v4);
  v5 = OBJC_IVAR____TtC13callservicesd33CallTranslationDisclosureProvider_activeDescriptor;
  swift_beginAccess();
  sub_10004DEE0(v3, v0 + v5);
  return swift_endAccess();
}

void sub_10004DA84()
{
  v1 = *(v0 + OBJC_IVAR____TtC13callservicesd33CallTranslationDisclosureProvider_localStopDisclosureAudioPlayer);
  *(v0 + OBJC_IVAR____TtC13callservicesd33CallTranslationDisclosureProvider_localStopDisclosureAudioPlayer) = 0;

  v2 = *(v0 + OBJC_IVAR____TtC13callservicesd33CallTranslationDisclosureProvider_localStartDisclosureAudioPlayer);
  *(v0 + OBJC_IVAR____TtC13callservicesd33CallTranslationDisclosureProvider_localStartDisclosureAudioPlayer) = 0;

  v3 = *(v0 + OBJC_IVAR____TtC13callservicesd33CallTranslationDisclosureProvider_remoteStartDisclosureAudioPlayer);
  *(v0 + OBJC_IVAR____TtC13callservicesd33CallTranslationDisclosureProvider_remoteStartDisclosureAudioPlayer) = 0;

  v4 = *(v0 + OBJC_IVAR____TtC13callservicesd33CallTranslationDisclosureProvider_remoteStopDisclosureAudioPlayer);
  *(v0 + OBJC_IVAR____TtC13callservicesd33CallTranslationDisclosureProvider_remoteStopDisclosureAudioPlayer) = 0;
}

void sub_10004DAF4()
{
  *(v0 + OBJC_IVAR____TtC13callservicesd33CallTranslationDisclosureProvider_didLocalStartPlayerFinishPlayback) = 0;
  *(v0 + OBJC_IVAR____TtC13callservicesd33CallTranslationDisclosureProvider_didLocalStopPlayerFinishPlayback) = 0;
  *(v0 + OBJC_IVAR____TtC13callservicesd33CallTranslationDisclosureProvider_didRemoteStartPlayerFinishPlayback) = 0;
  *(v0 + OBJC_IVAR____TtC13callservicesd33CallTranslationDisclosureProvider_didRemoteStopPlayerFinishPlayback) = 0;
}

void sub_10004DB28()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC13callservicesd33CallTranslationDisclosureProvider_localStartDisclosureAudioPlayer);
  if (v2)
  {
    v3 = v2;
    v4 = [v3 isPlaying];
    if (v4)
    {
      v5 = sub_100010B20(v4);
      v6 = static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)("Ending local start translation disclosure", 41, 2, &_mh_execute_header, v5, v6, _swiftEmptyArrayStorage);

      [v3 stop];
      v7 = v3;
      sub_1003C4830(v2, 0, 0, 1);
    }
  }

  v8 = *(v0 + OBJC_IVAR____TtC13callservicesd33CallTranslationDisclosureProvider_remoteStartDisclosureAudioPlayer);
  if (v8)
  {
    v9 = v8;
    v10 = [v9 isPlaying];
    if (v10)
    {
      v11 = sub_100010B20(v10);
      v12 = static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)("Ending remote start translation disclosure", 42, 2, &_mh_execute_header, v11, v12, _swiftEmptyArrayStorage);

      [v9 stop];
      v13 = v9;
      sub_1003C4830(v8, 0, 0, 1);
    }
  }

  v14 = OBJC_IVAR____TtC13callservicesd33CallTranslationDisclosureProvider_localStopDisclosureAudioPlayer;
  v15 = *(v0 + OBJC_IVAR____TtC13callservicesd33CallTranslationDisclosureProvider_localStopDisclosureAudioPlayer);
  if (v15)
  {
    v16 = v15;
    v17 = [v16 isPlaying];
    if (v17)
    {
      v18 = sub_100010B20(v17);
      v19 = static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)("Ending local stop translation disclosure", 40, 2, &_mh_execute_header, v18, v19, _swiftEmptyArrayStorage);

      [v16 stop];
      v20 = v16;
      sub_1003C4830(v15, 0, 0, 1);
    }
  }

  v21 = *(v0 + OBJC_IVAR____TtC13callservicesd33CallTranslationDisclosureProvider_remoteStopDisclosureAudioPlayer);
  if (v21)
  {
    v28 = v21;
    v22 = [v28 isPlaying];
    if (v22)
    {
      v23 = sub_100010B20(v22);
      v24 = static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)("Ending remote stop translation disclosure", 41, 2, &_mh_execute_header, v23, v24, _swiftEmptyArrayStorage);

      [v28 stop];
      v25 = *(v1 + v14);
      v26 = v25;
      sub_1003C4830(v25, 0, 0, 1);

      v27 = v26;
    }

    else
    {
      v27 = v28;
    }
  }
}

uint64_t sub_10004DE58(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = type metadata accessor for Locale();
    v8 = v5 + *(a4 + 28);

    return sub_10000AF74(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10004DEE0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10026D814(&unk_1006A2B50, &unk_1005811A0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10004DF50(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) && (sub_10003719C(), (v2 & 1) != 0))
  {
    sub_100015CDC();
  }

  else
  {
    sub_10001E3EC();
  }

  return sub_100006B30();
}

void sub_10004DF98()
{
  sub_100005EF4();
  v1 = type metadata accessor for DispatchWorkItemFlags();
  sub_100007FEC();
  v3 = v2;
  __chkstk_darwin(v4);
  sub_100007FDC();
  v7 = v6 - v5;
  v20 = type metadata accessor for DispatchQoS();
  sub_100007FEC();
  v9 = v8;
  __chkstk_darwin(v10);
  sub_100007FDC();
  v13 = v12 - v11;
  v14 = swift_allocObject();
  *(v14 + 16) = v0;
  v21[4] = sub_100050814;
  v21[5] = v14;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 1107296256;
  sub_10000A600();
  v21[2] = v15;
  v21[3] = &unk_10062EE30;
  v16 = _Block_copy(v21);
  v17 = v0;
  static DispatchQoS.unspecified.getter();
  sub_10000A814();
  sub_10000EE88(v18, v19, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_100018040(&qword_1006A2CD0, &unk_1006A2960, &unk_10057D6E0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);
  (*(v3 + 8))(v7, v1);
  (*(v9 + 8))(v13, v20);

  sub_100005EDC();
}

uint64_t sub_10004E200()
{

  return _swift_deallocObject(v0);
}

void sub_10004E238(void *a1, void *a2, _UNKNOWN **a3, uint64_t a4)
{
  v493 = a2;
  v495 = type metadata accessor for Date();
  sub_1000083C0();
  v492 = v7;
  __chkstk_darwin(v8);
  sub_10000A5F0();
  __chkstk_darwin(v9);
  sub_10000A5F0();
  __chkstk_darwin(v10);
  sub_10000A5F0();
  __chkstk_darwin(v11);
  v490 = &v487 - v12;
  v489 = sub_100006AF0(0, &unk_1006A39B0, NSObject_ptr);
  Dictionary.init(dictionaryLiteral:)();
  v13 = [a1 displayContext];
  sub_10004FCC0(v13);

  Int._bridgeToObjectiveC()();
  sub_10000C5D4();
  sub_10001740C();
  v14 = sub_100022E54();
  v15 = 0xD000000000000010;
  sub_10002F798(v14, v16, v17, v18, v19, v20, v21, v22, v487, v488);
  v23 = sub_1000077CC();
  v24 = sub_100021AEC(v23);
  if (v25)
  {
    v26 = v24;
  }

  else
  {
    v26 = 0;
  }

  if (v25)
  {
    v27 = v25;
  }

  else
  {
    v27 = 0xE000000000000000;
  }

  v28 = sub_100006AF0(0, &qword_1006A9E70, NSString_ptr);
  sub_100050758(v26, v27);
  sub_10002F700();
  sub_10001740C();
  v29 = sub_10000FF64();
  sub_10004FDE0(v29, v30, v31, v32, v33, v34, v35, v36, v487, v488);
  v37 = sub_1000077CC();
  v38 = [v37 identifier];

  v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v41 = v40;

  v496 = v28;
  sub_100050758(v39, v41);
  sub_10002F700();
  sub_10001740C();
  v42 = sub_10000FF64();
  sub_10004FDE0(v42, v43, v44, v45, v46, v47, v48, v49, v487, v488);
  [a1 isIncoming];
  sub_100006ED0(objc_allocWithZone(NSNumber));
  sub_10002F700();
  sub_10001740C();
  v50 = sub_10000FF64();
  sub_10004FDE0(v50, v51, v52, v53, v54, v55, v56, v57, v487, v488);
  [a1 isOnHold];
  sub_100006ED0(objc_allocWithZone(NSNumber));
  sub_10002F700();
  sub_10001740C();
  v58 = sub_10000FF64();
  sub_10004FDE0(v58, v59, 0xE700000000000000, v60, v61, v62, v63, v64, v487, v488);
  [a1 isConnected];
  sub_100006ED0(objc_allocWithZone(NSNumber));
  sub_10002F700();
  sub_10001740C();
  v65 = sub_10000FF64();
  sub_10004FDE0(v65, v66, v67, v68, v69, v70, v71, v72, v487, v488);
  [a1 status];
  sub_100006ED0(objc_allocWithZone(NSNumber));
  sub_10002F700();
  sub_10001740C();
  v73 = sub_10000FF64();
  sub_10004FDE0(v73, v74, 0xE900000000000064, v75, v76, v77, v78, v79, v487, v488);
  [a1 isConferenced];
  v80 = &selRef_tu_predicateForConversationLinkDescriptorsWithActivated_;
  sub_100006ED0(objc_allocWithZone(NSNumber));
  sub_10002F700();
  sub_10001740C();
  v81 = sub_10000FF64();
  sub_10004FDE0(v81, v82, v83, v84, v85, v86, v87, v88, v487, v488);
  [a1 callDuration];
  sub_100017248();
  if (v91 ^ v92 | v90)
  {
    v93 = 0;
  }

  else
  {
    v93 = 1;
  }

  if (v89 >= 0.0 && (v93 & 1) != 0)
  {
    __break(1u);
    goto LABEL_96;
  }

  sub_100035D70();
  if (v91 ^ v92 | v90)
  {
LABEL_96:
    __break(1u);
LABEL_97:
    __break(1u);
LABEL_98:
    sub_100007E54(&qword_1006A0C28);
    goto LABEL_30;
  }

  sub_100035C84();
  if (!v91)
  {
    goto LABEL_97;
  }

  [objc_allocWithZone(NSNumber) initWithUnsignedLongLong:v94];
  swift_isUniquelyReferenced_nonNull_native();
  sub_10045829C();
  v95 = sub_10000FF64();
  sub_10004FDE0(v95, v96, v97, v98, v99, v100, v101, v102, v487, v488);
  [objc_allocWithZone(NSNumber) initWithBool:{objc_msgSend(a1, "isJunk")}];
  swift_isUniquelyReferenced_nonNull_native();
  sub_10045829C();
  v103 = sub_10000FF64();
  sub_10004FDE0(v103, v104, v105, v106, v107, v108, v109, v110, v487, v488);
  v111 = v499;
  if (a4)
  {
    v112 = a3;
  }

  else
  {
    v112 = 1701736270;
  }

  if (a4)
  {
    v113 = a4;
  }

  else
  {
    v113 = 0xE400000000000000;
  }

  sub_100050758(v112, v113);
  swift_isUniquelyReferenced_nonNull_native();
  v499 = v111;
  v114 = sub_1000115A4();
  sub_10004FDE0(v114, v115, v116, v117, v118, v119, v120, v121, v487, v488);
  [a1 junkConfidence];
  v122 = sub_1000510B0();
  sub_100050758(v122, v123);
  sub_10000AB30();
  swift_isUniquelyReferenced_nonNull_native();
  sub_10002773C();
  v124 = sub_10000FF64();
  sub_10004FDE0(v124, v125, v126, v127, v128, v129, v130, v131, v487, v488);
  [a1 identificationCategory];
  v132 = sub_10005113C();
  sub_100050758(v132, v133);
  sub_10000AB30();
  swift_isUniquelyReferenced_nonNull_native();
  sub_10002773C();
  v134 = sub_10000FF64();
  sub_10004FDE0(v134, v135, v136, v137, v138, v139, v140, v141, v487, v488);
  sub_100006AF0(0, &qword_1006A3480, NSNumber_ptr);
  NSNumber.init(BOOLeanLiteral:)([a1 wasScreened]);
  sub_10000AB30();
  swift_isUniquelyReferenced_nonNull_native();
  sub_10002773C();
  v142 = sub_10000FF64();
  sub_10002F798(v142, v143, v144, v145, v146, v147, v148, v149, v487, v488);
  v150 = [a1 wasScreened];
  if (v150)
  {
    LOBYTE(v150) = [a1 isScreening] ^ 1;
  }

  a3 = &_s10Foundation3URLVMa_ptr_0;
  isa = NSNumber.init(BOOLeanLiteral:)(v150).super.super.isa;
  swift_isUniquelyReferenced_nonNull_native();
  sub_10002773C();
  sub_10004FDE0(isa, 0xD000000000000012, 0x8000000100578C10, v152, v153, v154, v155, v156, v487, v488);
  [objc_allocWithZone(NSNumber) initWithInteger:{objc_msgSend(a1, "liveVoicemailUnavailableReason")}];
  sub_10000C304();
  sub_10001740C();
  v157 = sub_1000115A4();
  sub_10004FDE0(v157, v158, v159, v160, v161, v162, v163, v164, v487, v488);
  v165 = [a1 recordingSession];
  if (v165)
  {
    v166 = v165;
    sub_100455C24(v165);
  }

  v167 = [a1 recordingDisabledError];
  if (v167 && (v499 = v167, sub_10026D814(&unk_1006A2610, &qword_10057D4A0), sub_100006AF0(0, &qword_1006A2B90, NSError_ptr), (swift_dynamicCast() & 1) != 0))
  {
    v168 = v501;
    [objc_allocWithZone(NSNumber) initWithBool:0];
    sub_10002F700();
    sub_10001740C();
    v169 = sub_10000FF64();
    sub_10004FDE0(v169, v170, v171, v172, v173, v174, v175, v176, v487, v488);
    [objc_allocWithZone(NSNumber) initWithInteger:{objc_msgSend(v168, "code")}];
    sub_10002F700();
    sub_10001740C();
    v177 = sub_10000FF64();
    sub_10004FDE0(v177, v178, v179, v180, v181, v182, v183, v184, v487, v488);
  }

  else
  {
    [objc_allocWithZone(NSNumber) initWithBool:1];
    sub_10000C304();
    sub_10001740C();
    v185 = sub_1000115A4();
    sub_10004FDE0(v185, v186, v187, v188, v189, v190, v191, v192, v487, v488);
  }

  if (qword_1006A0C28 != -1)
  {
    goto LABEL_98;
  }

LABEL_30:
  v193 = [a1 callUUID];
  v194 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v196 = v195;

  swift_beginAccess();
  v197 = sub_1000513D8(v194, v196, qword_1006AC010);

  if (v197)
  {
    swift_endAccess();
    [objc_allocWithZone(a3[59]) initWithBool:1];
    sub_10002F700();
    sub_10001740C();
    v198 = sub_10000FF64();
    sub_10004FDE0(v198, v199, v200, v201, v202, v203, v204, v205, v487, v488);
    [objc_allocWithZone(a3[59]) initWithInteger:sub_1003EDCD8()];
    sub_10002F700();
    sub_10001740C();
    v206 = sub_10000FF64();
    sub_10004FDE0(v206, v207, v208, v209, v210, v211, v212, v213, v487, v488);
    sub_1003EDD40();
    sub_100017248();
    if (!(v91 ^ v92 | v90))
    {
      __break(1u);
LABEL_99:
      __break(1u);
LABEL_100:
      __break(1u);
LABEL_101:
      __break(1u);
      goto LABEL_102;
    }

    sub_100035D70();
    if (v91 ^ v92 | v90)
    {
      goto LABEL_99;
    }

    sub_100035C84();
    if (!v91)
    {
      goto LABEL_100;
    }

    [objc_allocWithZone(NSNumber) initWithUnsignedLongLong:v214];
    sub_10002F700();
    sub_10001740C();
    a3 = &_s10Foundation3URLVMa_ptr_0;
    v215 = sub_10000FF64();
    sub_10002F798(v215, v216, v217, v218, v219, v220, v221, v222, v487, v488);
    v223 = [a1 callUUID];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    sub_100008D34(&qword_1006AC010, &v499);
    v224 = sub_100006C30();
    sub_100384708(v224, v225, v226, v227, v228, v229, v230, v231, v487, v488);
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    [objc_allocWithZone(a3[59]) initWithBool:0];
    sub_10000C304();
    sub_10001740C();
    v232 = sub_1000115A4();
    sub_10004FDE0(v232, v233, v234, v235, v236, v237, v238, v239, v487, v488);
  }

  v240 = sub_1000077CC();
  v241 = [v240 isSystemProvider];

  if (v241)
  {
    v242 = [a1 dateSentInvitation];
    v243 = v494;
    if (v242)
    {
      v244 = v242;
      v241 = v490;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v245 = [a1 dateCreated];
      v15 = v488;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      Date.timeIntervalSince(_:)();
      v246 = *(v492 + 8);
      v246(v15, v495);
      sub_100017248();
      if (!(v91 ^ v92 | v90))
      {
        goto LABEL_101;
      }

      if (v247 <= -9.22337204e18)
      {
LABEL_102:
        __break(1u);
        goto LABEL_103;
      }

      if (v247 >= 9.22337204e18)
      {
LABEL_103:
        __break(1u);
        goto LABEL_104;
      }

      v240 = v247;
      [objc_allocWithZone(a3[59]) initWithLongLong:v247];
      sub_10000C304();
      sub_10001740C();
      v248 = sub_1000115A4();
      sub_10004FDE0(v248, v249, v250, v251, v252, v253, v254, v255, v487, v488);
      v246(v490, v495);
      v15 = 0xD000000000000010;
    }
  }

  else
  {
    v243 = v494;
  }

  v256 = [a1 dateConnected];
  if (!v256)
  {
    goto LABEL_61;
  }

  v240 = v256;
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  v257 = [a1 dateStartedConnecting];
  if (!v257)
  {
    (*(v492 + 8))(v243, v495);
    goto LABEL_61;
  }

  v258 = v257;
  v241 = v491;
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  Date.timeIntervalSince(_:)();
  if (v259 * 1000.0 < 0.0)
  {
    [objc_allocWithZone(a3[59]) initWithInteger:0];
    sub_10000C304();
    sub_10001740C();
    v260 = sub_1000115A4();
    sub_10004FDE0(v260, v261, v262, v263, v264, v265, v266, v267, v487, v488);
    if (qword_1006A0B10 == -1)
    {
LABEL_50:
      v268 = type metadata accessor for Logger();
      sub_1000075F0(v268, qword_1006BA5B0);
      v269 = a1;
      v240 = Logger.logObject.getter();
      v241 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v240, v241))
      {
        v270 = sub_100005274();
        v271 = sub_100005E84();
        v499 = v271;
        *v270 = 136315138;
        v272 = [v269 provider];
        v273 = [v272 identifier];

        v274 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v276 = v275;

        v277 = sub_10002741C(v274, v276, &v499);

        *(v270 + 4) = v277;
        _os_log_impl(&_mh_execute_header, v240, v241, "Connection time is negative, %s is likely processing a callkit action incorrectly", v270, 0xCu);
        sub_100009B7C(v271);
        v278 = v271;
        v80 = &selRef_tu_predicateForConversationLinkDescriptorsWithActivated_;
        sub_100005F40(v278);
        sub_100005F40(v270);
      }

      v279 = sub_10000D544();
      (v240)(v279);
      v280 = v494;
      goto LABEL_60;
    }

LABEL_104:
    sub_1000085AC(&qword_1006A0B10);
    goto LABEL_50;
  }

  sub_100017248();
  if (!(v91 ^ v92 | v90))
  {
    __break(1u);
LABEL_105:
    __break(1u);
LABEL_106:
    __break(1u);
    return;
  }

  sub_100035D70();
  if (v91 ^ v92 | v90)
  {
    goto LABEL_105;
  }

  sub_100035C84();
  if (!v91)
  {
    goto LABEL_106;
  }

  v240 = v281;
  [objc_allocWithZone(a3[59]) initWithUnsignedLongLong:v281];
  sub_10000C304();
  sub_10001740C();
  v282 = sub_1000115A4();
  sub_10004FDE0(v282, v283, v284, v285, v286, v287, v288, v289, v487, v488);
  v290 = sub_10000D544();
  (v240)(v290);
  v280 = v243;
LABEL_60:
  (v240)(v280, v241);
LABEL_61:
  sub_10005142C(a1);
  sub_10000C304();
  sub_10001740C();
  v291 = sub_1000115A4();
  sub_10004FDE0(v291, v292, 0xE800000000000000, v293, v294, v295, v296, v297, v487, v488);
  [a1 disconnectedReason];
  [sub_100022004() initWithInt:v240];
  sub_10000C304();
  sub_10001740C();
  v298 = sub_1000115A4();
  sub_10004FDE0(v298, v299, 0xEA00000000006E6FLL, v300, v301, v302, v303, v304, v487, v488);
  v305 = v499;
  if (sub_100036F90(a1))
  {
    v241 = sub_1000077CC();
    v306 = [v241 isFaceTimeProvider];

    if (!v306)
    {

      v240 = sub_1000077CC();
      v241 = [v240 isTelephonyProvider];

      if (v241)
      {
        if (sub_100036F90(a1))
        {
          sub_10000C8EC();
          *&v501 = v308;
          *(&v501 + 1) = v309;
          AnyHashable.init<A>(_:)();
          sub_100006600();

          sub_100006780(&v499);
        }

        else
        {
          v501 = 0u;
          v502 = 0u;
        }

        LODWORD(v240) = sub_100457574(&v501);
        [objc_allocWithZone(NSNumber) initWithInteger:v240];
        sub_10000C304();
        sub_10001740C();
        v318 = sub_1000115A4();
        sub_10004FDE0(v318, v319, v320, v321, v322, v323, v324, v325, v487, v488);
        v305 = v499;
        sub_1000099A4(&v501, &unk_1006A2D10, &unk_10057D940);
      }

      goto LABEL_76;
    }

    v497 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v498 = v307;
    AnyHashable.init<A>(_:)();
    sub_100006600();

    sub_100006780(&v499);
    if (*(&v502 + 1))
    {
      type metadata accessor for TUCallFaceTimeTransportType(0);
      if (swift_dynamicCast())
      {
        if (v497 == 2)
        {
          v240 = 2;
        }

        else
        {
          v240 = v497 == 1;
        }

        goto LABEL_73;
      }
    }

    else
    {
      sub_1000099A4(&v501, &unk_1006A2D10, &unk_10057D940);
    }

    v240 = 0;
LABEL_73:
    [objc_allocWithZone(NSNumber) initWithInteger:v240];
    sub_10000C304();
    sub_10001740C();
    v310 = sub_1000115A4();
    sub_10004FDE0(v310, v311, v312, v313, v314, v315, v316, v317, v487, v488);
    v305 = v499;
  }

LABEL_76:
  if (v493)
  {
    v240 = "smart_hold_failure_reason";
    v326 = v493;
    sub_10000C304();
    sub_10001740C();
    v327 = sub_1000115A4();
    sub_10004FDE0(v327, v328, v329, v330, v331, v332, v333, v334, v487, v488);
  }

  else
  {
    v335 = sub_100023E48(v15 + 8, 0x8000000100578C90, v305);
    if (v335)
    {
      v240 = "smart_hold_failure_reason";
      v336 = v335;
      sub_10000C304();
      sub_10001740C();
      v337 = sub_1000115A4();
      sub_10004FDE0(v337, v338, v339, v340, v341, v342, v343, v344, v487, v488);
    }
  }

  [a1 isHostedOnCurrentDevice];
  [sub_100022004() v80[29]];
  sub_10000C304();
  sub_10001740C();
  v345 = sub_1000115A4();
  sub_10004FDE0(v345, v346, 0xE800000000000000, v347, v348, v349, v350, v351, v487, v488);
  [objc_allocWithZone(NSNumber) initWithInteger:{objc_msgSend(a1, "providerEndedReason")}];
  sub_10000C304();
  sub_10001740C();
  v352 = sub_1000115A4();
  sub_10004FDE0(v352, v353, v354, v355, v356, v357, v358, v359, v487, v488);
  [objc_allocWithZone(NSNumber) initWithInteger:sub_10005173C(a1)];
  sub_10000C304();
  sub_10001740C();
  v360 = sub_1000115A4();
  sub_10004FDE0(v360, v361, v362, v363, v364, v365, v366, v367, v487, v488);
  v368 = [a1 disconnectedReason];
  [objc_allocWithZone(NSNumber) v80[29]];
  sub_10000C304();
  sub_10001740C();
  v369 = sub_1000115A4();
  sub_10004FDE0(v369, v370, v371, v372, v373, v374, v375, v376, v487, v488);
  v377 = [a1 smartHoldingActiveSessionCount];
  [objc_allocWithZone(NSNumber) initWithUnsignedInteger:{objc_msgSend(a1, "smartHoldingActiveSessionCount")}];
  swift_isUniquelyReferenced_nonNull_native();
  sub_10045829C();
  v378 = sub_10000FF64();
  sub_10004FDE0(v378, v379, v380, v381, v382, v383, v384, v385, v487, v488);
  [objc_allocWithZone(NSNumber) v80[29]];
  swift_isUniquelyReferenced_nonNull_native();
  sub_10045829C();
  v386 = sub_1000115A4();
  sub_10004FDE0(v386, v387, v388, v389, v390, v391, v392, v393, v487, v488);
  [objc_allocWithZone(NSNumber) v80[29]];
  swift_isUniquelyReferenced_nonNull_native();
  sub_10045829C();
  v394 = sub_1000115A4();
  sub_10004FDE0(v394, v395, v396, v397, v398, v399, v400, v401, v487, v488);
  v402 = [a1 wasSmartHoldingTipPresented];
  if (v377)
  {
    v403 = v402;
  }

  else
  {
    v403 = 0;
  }

  v404 = [objc_allocWithZone(NSNumber) v80[29]];
  swift_isUniquelyReferenced_nonNull_native();
  sub_10045829C();
  sub_10004FDE0(v404, v15 + 7, 0x8000000100578D30, v405, v406, v407, v408, v409, v487, v488);
  v410 = [a1 smartHoldingError];
  v411 = v410;
  if (v410)
  {
  }

  v412 = v411 != 0;
  [objc_allocWithZone(NSNumber) initWithBool:v412];
  sub_10000C304();
  sub_10001740C();
  v413 = sub_1000115A4();
  sub_10004FDE0(v413, v414, v415, v416, v417, v418, v419, v420, v487, v488);
  v421 = [a1 smartHoldingError];
  if (v421)
  {
    v422 = v421;
    swift_getErrorValue();
    v423 = v504;
    sub_1000083C0();
    v425 = v424;
    __chkstk_darwin(v426);
    v428 = &v487 - ((v427 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v425 + 16))(v428);

    v412 = v428;
    v429 = dispatch thunk of Error._domain.getter();
    v431 = v430;
    (*(v425 + 8))(v428, v423);
    v432 = [a1 smartHoldingError];
    if (v432)
    {
      v433 = v432;
      swift_getErrorValue();
      v434 = v503;
      sub_1000083C0();
      v436 = v435;
      __chkstk_darwin(v437);
      v439 = &v487 - ((v438 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v436 + 16))(v439);

      v440 = dispatch thunk of Error._code.getter();
      (*(v436 + 8))(v439, v434);
      v499 = v429;
      v500 = v431;
      v441._countAndFlagsBits = 8250;
      v441._object = 0xE200000000000000;
      String.append(_:)(v441);
      *&v501 = v440;
      v442._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v442);

      v412 = v496;
      sub_100050758(v499, v500);
      sub_10000C5D4();
      sub_10001740C();
      v443 = sub_100022E54();
      sub_10004FDE0(v443, v444, v445, v446, v447, v448, v449, v450, v487, v488);
    }

    else
    {
    }
  }

  [a1 commTrustScore];
  [sub_100022004() initWithInt:v412];
  sub_10000C5D4();
  sub_10001740C();
  v451 = sub_100022E54();
  sub_10002F798(v451, v452, v453, v454, v455, v456, v457, v458, v487, v488);
  [a1 receptionistState];
  [sub_100022004() initWithInt:v412];
  sub_10000C5D4();
  sub_10001740C();
  v459 = sub_100022E54();
  sub_10004FDE0(v459, v460, v461, v462, v463, v464, v465, v466, v487, v488);
  [a1 specialUnknown];
  v467 = [sub_100022004() initWithBool:v412];
  swift_isUniquelyReferenced_nonNull_native();
  sub_10001740C();
  sub_10004FDE0(v467, 0x5F6C616963657073, 0xEF6E776F6E6B6E75, v468, v469, v470, v471, v472, v487, v488);
  if (qword_1006A0B10 != -1)
  {
    sub_1000085AC(&qword_1006A0B10);
  }

  v473 = type metadata accessor for Logger();
  sub_1000075F0(v473, qword_1006BA5B0);
  v474 = Logger.logObject.getter();
  v475 = static os_log_type_t.default.getter();
  if (sub_10000689C(v475))
  {
    v476 = sub_100005274();
    v477 = sub_100005E84();
    v499 = v477;
    *v476 = 136315138;

    Dictionary.description.getter();

    v478 = sub_100006C30();
    v481 = sub_10002741C(v478, v479, v480);

    *(v476 + 4) = v481;
    sub_10000A154();
    _os_log_impl(v482, v483, v484, v485, v486, 0xCu);
    sub_100009B7C(v477);
    sub_100006868();
    sub_100008AE8();
  }
}

uint64_t sub_10004FCC0(uint64_t result)
{
  if (result)
  {
    v1 = result;
    sub_10001B8C8(v1, &selRef_contactName);
    if (v2)
    {

      return 1;
    }

    else
    {
      sub_10001B8C8(v1, &selRef_mapName);
      if (v3)
      {

        return 2;
      }

      else
      {
        sub_10001B8C8(v1, &selRef_suggestedName);
        if (v4)
        {

          return 3;
        }

        else
        {
          sub_10001B8C8(v1, &selRef_callDirectoryLabel);
          if (v5)
          {

            return 4;
          }

          else
          {
            v6 = [v1 location];
            if (v6)
            {

              return 5;
            }

            else
            {

              return 0;
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_10004FE08(char *a1, uint64_t a2, int a3)
{
  v4 = v3;
  v56 = a3;
  v55 = a2;
  v57 = a1;
  v5 = type metadata accessor for DispatchWallTime();
  v53 = *(v5 - 8);
  v54 = v5;
  v6 = __chkstk_darwin(v5);
  v51 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v52 = &v47 - v8;
  v48 = type metadata accessor for DispatchWorkItemFlags();
  __chkstk_darwin(v48);
  v49 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10026D814(&unk_1006A2BF0, &unk_100585F10);
  __chkstk_darwin(v10 - 8);
  v12 = &v47 - v11;
  v13 = sub_10026D814(&unk_1006A2B60, &qword_100581170);
  __chkstk_darwin(v13 - 8);
  v15 = &v47 - v14;
  v16 = type metadata accessor for AudioInterruptionDeferredEndDescriptor(0);
  __chkstk_darwin(v16);
  v18 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DispatchPredicate();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = (&v47 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = v4[2];
  *v22 = v23;
  (*(v20 + 104))(v22, enum case for DispatchPredicate.onQueue(_:), v19);
  v50 = v23;
  LOBYTE(v23) = _dispatchPreconditionTest(_:)();
  result = (*(v20 + 8))(v22, v19);
  if (v23)
  {
    v25 = type metadata accessor for AudioDescriptor(0);
    v26 = v57;
    sub_100343100(&v57[*(v25 + 20)], v15, &unk_1006A2B60, &qword_100581170);
    if (sub_100015468(v15, 1, v16) == 1)
    {
      sub_100009A5C(v15, &unk_1006A2B60, &qword_100581170);
      memcpy(v60, v26, sizeof(v60));
      sub_100343100(v55, v12, &unk_1006A2BF0, &unk_100585F10);
      if (sub_100015468(v12, 1, v25) == 1)
      {
        sub_100009A5C(v12, &unk_1006A2BF0, &unk_100585F10);
        sub_1002BA0C4(v59);
      }

      else
      {
        memcpy(v58, v12, sizeof(v58));
        sub_100042F60(v58, v61);
        sub_100045B00(v12, type metadata accessor for AudioDescriptor);
        memcpy(v61, v58, 0xA8uLL);
        ScreenSharingActivityManager.carPlayDidDisconnect()();
        memcpy(v59, v61, sizeof(v59));
      }

      memcpy(v61, v59, 0xA8uLL);
      sub_10033E150(v60);
      return sub_100009A5C(v59, &unk_1006A41A0, &qword_10057EFE0);
    }

    else
    {
      sub_10004A200();
      swift_beginAccess();

      sub_100050618();
      v28 = v27;

      if (v28)
      {
        v30 = sub_100010B20(v29);
        sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
        v31 = swift_allocObject();
        *(v31 + 16) = xmmword_10057D690;
        v32 = UUID.uuidString.getter();
        v34 = v33;
        *(v31 + 56) = &type metadata for String;
        *(v31 + 64) = sub_100009D88();
        *(v31 + 32) = v32;
        *(v31 + 40) = v34;
        v35 = static os_log_type_t.default.getter();
        os_log(_:dso:log:type:_:)("Ending interruption immediately, since descriptor has an interruption deferred end descriptor and there is a pending expedite for UUID %@", 137, 2, &_mh_execute_header, v30, v35, v31);

        sub_1000166CC(0);
      }

      else
      {
        v61[4] = sub_100342918;
        v61[5] = v4;
        v61[0] = _NSConcreteStackBlock;
        v61[1] = 1107296256;
        v61[2] = sub_100004CEC;
        v61[3] = &unk_100628338;
        _Block_copy(v61);
        v59[0] = _swiftEmptyArrayStorage;
        sub_10000EE88(&qword_1006A2CC0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);

        sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
        sub_100018040(&qword_1006A2CD0, &unk_1006A2960, &unk_10057D6E0);
        dispatch thunk of SetAlgebra.init<A>(_:)();
        type metadata accessor for DispatchWorkItem();
        swift_allocObject();
        v36 = DispatchWorkItem.init(flags:block:)();

        v4[14] = v36;

        v37 = v4[17];

        v39 = v37(v38);

        v41 = sub_100010B20(v40);
        sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
        v42 = swift_allocObject();
        *(v42 + 16) = xmmword_10057D690;
        *(v42 + 56) = &type metadata for Double;
        *(v42 + 64) = &protocol witness table for Double;
        *(v42 + 32) = v39;
        static os_log_type_t.default.getter();
        os_log(_:dso:log:type:_:)("Deferring end interruption by %.2f sec, since descriptor has an interruption deferred end descriptor and there is no pending expedited end interruption", v47);

        v43 = v51;
        static DispatchWallTime.now()();
        v44 = v52;
        + infix(_:_:)();
        v45 = v54;
        v46 = *(v53 + 8);
        v46(v43, v54);
        OS_dispatch_queue.asyncAfter(wallDeadline:execute:)();

        v46(v44, v45);
      }

      return sub_100045B00(v18, type metadata accessor for AudioInterruptionDeferredEndDescriptor);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100050618()
{
  sub_100005EF4();
  sub_10000FC34();
  type metadata accessor for UUID();
  sub_100007FEC();
  __chkstk_darwin(v2);
  sub_100007FDC();
  sub_10000D304();
  if (*(v0 + 16))
  {
    sub_10000A450();
    sub_10000F1E0(v3, v4, &protocol conformance descriptor for UUID);
    sub_10000790C();
    dispatch thunk of Hashable._rawHashValue(seed:)();
    sub_10000C898();
    do
    {
      sub_100017E34();
      if (!v5)
      {
        break;
      }

      v6 = sub_10000C2D0();
      v7(v6);
      sub_10000A450();
      v9 = sub_10000F1E0(&qword_1006A2620, v8, &protocol conformance descriptor for UUID);
      sub_10000BC34(v9);
      v10 = sub_1000076FC();
      v11(v10);
    }

    while ((v1 & 1) == 0);
  }

  sub_100005EDC();
}

id sub_100050758(uint64_t a1, uint64_t a2)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = String._bridgeToObjectiveC()();

  v4 = [v2 initWithString:v3];

  return v4;
}

void sub_1000507E8(uint64_t a1)
{
  v1 = a1 + OBJC_IVAR____TtC13callservicesd28SiriCallAnnouncementProvider_activeDescriptor;
  v2 = *(a1 + OBJC_IVAR____TtC13callservicesd28SiriCallAnnouncementProvider_activeDescriptor);
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  *v1 = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 26) = 0u;
  sub_10005081C(v2, v3, v4, v5, v6);
}

void sub_10005081C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  if (a2)
  {
  }
}

uint64_t sub_100050898(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 17))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t type metadata accessor for SharePlayAvailabilityManager.CallAndHandle(uint64_t a1)
{
  result = qword_1006A8178;
  if (!qword_1006A8178)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100050924(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = [a1 value];
  if (!v4)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    String._bridgeToObjectiveC()();
    sub_100006064();
  }

  sub_100050CF0(a1);
  if (v5)
  {
    v6 = String._bridgeToObjectiveC()();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_opt_self() normalizedPhoneNumberHandleForValue:v4 isoCountryCode:v6];

  if (v7)
  {
    sub_100006AF0(0, &qword_1006A2640, TUHandle_ptr);
    if ((static NSObject.== infix(_:_:)() & 1) == 0)
    {
      if (qword_1006A0AD0 != -1)
      {
        sub_100008688(&qword_1006A0AD0);
      }

      v20 = type metadata accessor for Logger();
      sub_1000075F0(v20, qword_1006A80E0);
      v21 = v7;
      v22 = a1;

      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = sub_100005E84();
        v26 = swift_slowAlloc();
        v33 = sub_100005E84();
        *v25 = 138412802;
        *(v25 + 4) = v21;
        *(v25 + 12) = 2112;
        *(v25 + 14) = v22;
        *v26 = v7;
        v26[1] = v22;
        *(v25 + 22) = 2080;
        v21;
        v27 = v22;
        v28 = sub_100006884();
        *(v25 + 24) = sub_10002741C(v28, v29, v30);
        _os_log_impl(&_mh_execute_header, v23, v24, "[SharePlayAvailabilityManager] Normalized handle, normalized: %@ vs. handle: %@, for fn: %s", v25, 0x20u);
        sub_10026D814(&unk_1006A2630, &qword_10057CB40);
        swift_arrayDestroy();
        sub_100005F40(v26);
        sub_100009B7C(v33);
        sub_100005F40(v33);
        sub_100005F40(v25);
      }
    }

    sub_100006048();
  }

  else
  {
    if (qword_1006A0AD0 != -1)
    {
      sub_100008688(&qword_1006A0AD0);
    }

    v8 = type metadata accessor for Logger();
    sub_1000075F0(v8, qword_1006A80E0);
    v31 = a1;

    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = sub_100007C08();
      v12 = sub_10000777C();
      v32 = sub_100005E84();
      *v11 = 138412546;
      *(v11 + 4) = v31;
      *v12 = v31;
      *(v11 + 12) = 2080;
      v13 = v31;
      v14 = sub_100006884();
      *(v11 + 14) = sub_10002741C(v14, v15, v16);
      _os_log_impl(&_mh_execute_header, v9, v10, "[SharePlayAvailabilityManager] Cannot normalize handle: %@ as phone number, %s", v11, 0x16u);
      sub_100009A04(v12, &unk_1006A2630, &qword_10057CB40);
      sub_100005F40(v12);
      sub_100009B7C(v32);
      sub_100005F40(v32);
      sub_100005F40(v11);
    }

    sub_100006048();

    v19 = v17;
  }
}

uint64_t sub_100050D10(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_100050DCC(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_100050E78(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_100050EC0(_DWORD *a1)
{
  v2 = sub_10005104C(a1);
  if (v3)
  {
    sub_1003840D4(v2, v3);
  }

  else
  {
    if (qword_1006A0AD0 != -1)
    {
      sub_100008688(&qword_1006A0AD0);
    }

    v4 = type metadata accessor for Logger();
    sub_1000075F0(v4, qword_1006A80E0);
    v5 = a1;
    oslog = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v6))
    {
      sub_100007C08();
      v7 = sub_10000FE98();
      v8 = sub_100005E84();
      v17 = v8;
      *a1 = 136315394;
      v9 = sub_10002741C(0x6C4165766F6D6572, 0xEF293A726F66286CLL, &v17);
      sub_10001866C(v9);
      sub_10000C4A4(&_mh_execute_header, v10, v11, "[RemoteAvailabilityCache] %s Cannot normalize handle: %@", v12, v13, v14, v15, oslog);
      sub_100009A04(v7, &unk_1006A2630, &qword_10057CB40);
      sub_100006868();
      sub_100009B7C(v8);
      sub_100005F40(v8);
      sub_100005F40(a1);
    }
  }
}

uint64_t sub_10005104C(void *a1)
{
  v1 = [a1 normalizedValue];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_1000513E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v3 = sub_100005208(a1, a2);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  sub_100018F28(v3);
}

id sub_10005142C(void *a1)
{
  [a1 isVideo];
  if ([a1 isTTY])
  {
    sub_10000D39C();
    v2._countAndFlagsBits = 1498698847;
    v2._object = 0xE400000000000000;
    String.append(_:)(v2);
  }

  if ([a1 isEmergency])
  {
    sub_10000D39C();
    v3._countAndFlagsBits = 0x6E656772656D455FLL;
    v3._object = 0xEA00000000007963;
    String.append(_:)(v3);
  }

  if ([a1 isVoicemail])
  {
    sub_10000D39C();
    v4._countAndFlagsBits = 0x616D6563696F565FLL;
    v4._object = 0xEA00000000006C69;
    String.append(_:)(v4);
  }

  if ([a1 isSOS])
  {
    sub_10000D39C();
    v5._countAndFlagsBits = 1397707615;
    v5._object = 0xE400000000000000;
    String.append(_:)(v5);
  }

  if ([a1 isRTT])
  {
    sub_10000D39C();
    v6._countAndFlagsBits = 1414812255;
    v6._object = 0xE400000000000000;
    String.append(_:)(v6);
  }

  sub_100006AF0(0, &qword_1006A9E70, NSString_ptr);
  v7 = sub_100005ED0();
  return sub_100050758(v7, v8);
}