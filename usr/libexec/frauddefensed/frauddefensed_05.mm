uint64_t sub_100074FF4()
{
  sub_100003400(&qword_1000B6CC0, &qword_100091740);
  v1 = type metadata accessor for CheckedContinuation();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 64) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1000750F0(uint64_t a1)
{
  v3 = v2;
  v5 = v1[4];
  sub_100003400(&qword_1000B6CC0, &qword_100091740);
  v6 = *(type metadata accessor for CheckedContinuation() - 8);
  v7 = (*(v6 + 80) + 64) & ~*(v6 + 80);
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1[5];
  v11 = v1[6];
  v12 = v1[7];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_100002A54;

  return sub_100073FB0(a1, v8, v9, v10, v11, v12, v1 + v7, v5);
}

uint64_t sub_100075234()
{
  sub_100003400(&qword_1000B6CC0, &qword_100091740);
  v1 = type metadata accessor for CheckedContinuation();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 72) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100075330(uint64_t a1)
{
  v3 = v2;
  sub_100003400(&qword_1000B6CC0, &qword_100091740);
  v4 = *(type metadata accessor for CheckedContinuation() - 8);
  v5 = (*(v4 + 80) + 72) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[5];
  v9 = v1[6];
  v10 = v1[7];
  v11 = v1[8];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_100011E6C;

  return sub_100074840(a1, v6, v7, v8, v9, v10, v11, v1 + v5);
}

uint64_t sub_10007547C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = type metadata accessor for ContinuousClock.Instant();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return _swift_task_switch(sub_10007557C, 0, 0);
}

uint64_t sub_10007557C()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = type metadata accessor for ContinuousClock();
  v5 = sub_100075934(&qword_1000B79F0, &type metadata accessor for ContinuousClock, &protocol conformance descriptor for ContinuousClock);
  dispatch thunk of Clock.now.getter();
  sub_100075934(&qword_1000B8D50, &type metadata accessor for ContinuousClock.Instant, &protocol conformance descriptor for ContinuousClock.Instant);
  dispatch thunk of InstantProtocol.advanced(by:)();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_10007570C;
  v8 = v0[11];

  return dispatch thunk of Clock.sleep(until:tolerance:)(v8, v0 + 2, v4, v5);
}

uint64_t sub_10007570C()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (v0)
  {

    return _swift_task_switch(sub_1000758C8, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_1000758C8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100075934(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10007597C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000759B4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100011E6C;

  return sub_10002CA20(a1, v4);
}

uint64_t getEnumTagSinglePayload for SpamDecisioningManager.SpamDecisioningInput.MessageType(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for SpamDecisioningManager.SpamDecisioningInput.MessageType(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_100075B58()
{
  result = qword_1000B8D58;
  if (!qword_1000B8D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B8D58);
  }

  return result;
}

uint64_t sub_100075BB0(uint64_t a1)
{
  v2[28] = a1;
  v2[29] = v1;
  v2[30] = type metadata accessor for SenderLookUpDecisioningComponent.SenderLookUpInput(0);
  v2[31] = swift_task_alloc();

  return _swift_task_switch(sub_100075C44, 0, 0);
}

uint64_t sub_100075C44(uint64_t a1)
{
  v2 = v1[28];
  v3 = v2 + *(v1[30] + 20);
  v4 = *(v3 + 32);
  v5 = *(v3 + 40);
  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (v6)
  {
    if (sub_10007693C(v1[28]))
    {
      v7 = objc_allocWithZone(CMLClientConfig);
      v8 = String._bridgeToObjectiveC()();
      v9 = String._bridgeToObjectiveC()();
      v10 = [v7 initWithUseCase:v8 sourceApplicationBundleIdentifier:v9];
      v1[32] = v10;

      v11 = [objc_allocWithZone(CMLKeywordPIRClient) initWithClientConfig:v10];
      v1[33] = v11;
      v12 = String._bridgeToObjectiveC()();
      v1[34] = v12;
      v1[2] = v1;
      v1[7] = v1 + 24;
      v1[3] = sub_100076048;
      v13 = swift_continuation_init();
      v1[17] = sub_100002074(&qword_1000B8E50, &unk_100093070);
      v1[10] = _NSConcreteStackBlock;
      v1[11] = 1107296256;
      v1[12] = sub_10007654C;
      v1[13] = &unk_1000B1288;
      v1[14] = v13;
      [v11 requestDataByStringKeyword:v12 completionHandler:v1 + 10];

      return _swift_continuation_await(v1 + 2);
    }

    v59 = static os_log_type_t.default.getter();
    v57 = 0x800000010009A010;
    v58 = 0xD00000000000002CLL;
    sub_10005E11C(v59, 0xD00000000000002CLL, 0x800000010009A010, 0xD000000000000065, 0x800000010009A040, 50);
  }

  else
  {
    v14 = v1[31];
    v15 = static os_log_type_t.error.getter();
    _StringGuts.grow(_:)(21);
    0xE000000000000000, v16, v17, v18, v19, v20, v21, v22;
    sub_1000771E8(v2, v14);
    v23._countAndFlagsBits = String.init<A>(describing:)();
    object = v23._object;
    String.append(_:)(v23);
    object, v25, v26, v27, v28, v29, v30, v31;
    v32._countAndFlagsBits = 32032;
    v32._object = 0xE200000000000000;
    String.append(_:)(v32);
    sub_10005E11C(v15, 0xD000000000000011, 0x800000010009A100, 0xD000000000000065, 0x800000010009A040, 45);
    0x800000010009A100, v33, v34, v35, v36, v37, v38, v39;
    _StringGuts.grow(_:)(21);
    0xE000000000000000, v40, v41, v42, v43, v44, v45, v46;
    sub_1000771E8(v2, v14);
    v47._countAndFlagsBits = String.init<A>(describing:)();
    v48 = v47._object;
    String.append(_:)(v47);
    v48, v49, v50, v51, v52, v53, v54, v55;
    v56._countAndFlagsBits = 32032;
    v56._object = 0xE200000000000000;
    String.append(_:)(v56);
    v58 = 0xD000000000000011;
    v57 = 0x800000010009A100;
  }

  sub_10000B6B0();
  swift_allocError();
  *v60 = v58;
  *(v60 + 8) = v57;
  *(v60 + 16) = 0;
  swift_willThrow();

  v61 = v1[1];

  return v61(0);
}

uint64_t sub_100076048()
{
  v1 = *(*v0 + 48);
  *(*v0 + 280) = v1;
  if (v1)
  {
    v2 = sub_10007631C;
  }

  else
  {
    v2 = sub_100076158;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100076158()
{
  v2 = *(v0 + 192);
  v1 = *(v0 + 200);

  v3 = v1 >> 62;
  if ((v1 >> 62) > 1)
  {
    if (v3 != 2 || *(v2 + 16) == *(v2 + 24))
    {
      goto LABEL_13;
    }

    goto LABEL_7;
  }

  if (v3)
  {
    if (v2 == v2 >> 32)
    {
LABEL_13:

      goto LABEL_14;
    }

LABEL_7:
    if (v3 == 2)
    {
      v5 = *(v2 + 16);
      v6 = __DataStorage._bytes.getter();
      if (!v6)
      {
LABEL_27:
        __DataStorage._length.getter();
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

      v7 = v6;
      v8 = __DataStorage._offset.getter();
      if (!__OFSUB__(v5, v8))
      {
        v9 = (v5 - v8 + v7);
        __DataStorage._length.getter();
        if (!v9)
        {
          goto LABEL_28;
        }

LABEL_19:
        v16 = *(v0 + 264);
        v4 = *v9;

        goto LABEL_20;
      }
    }

    else
    {
      if (v2 <= v2 >> 32)
      {
        v12 = __DataStorage._bytes.getter();
        if (!v12)
        {
LABEL_29:
          result = __DataStorage._length.getter();
          __break(1u);
          goto LABEL_30;
        }

        v13 = v12;
        v14 = __DataStorage._offset.getter();
        if (!__OFSUB__(v2, v14))
        {
          v9 = (v2 - v14 + v13);
          result = __DataStorage._length.getter();
          if (!v9)
          {
LABEL_30:
            __break(1u);
            return result;
          }

          goto LABEL_19;
        }

        goto LABEL_26;
      }

      __break(1u);
    }

    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if ((v1 & 0xFF000000000000) != 0)
  {

    v4 = v2;
LABEL_20:
    sub_100005A28(v2, v1);
    v11 = v4 != 0;
    goto LABEL_21;
  }

LABEL_14:
  v10 = *(v0 + 256);
  sub_100005A28(v2, v1);

  v11 = 0;
LABEL_21:

  v17 = *(v0 + 8);

  return v17(v11);
}

uint64_t sub_10007631C(uint64_t a1)
{
  v3 = v1[34];
  v2 = v1[35];
  swift_willThrow();

  v4 = static os_log_type_t.default.getter();
  _StringGuts.grow(_:)(45);
  0xE000000000000000, v5, v6, v7, v8, v9, v10, v11;
  swift_getErrorValue();
  v12._countAndFlagsBits = Error.localizedDescription.getter();
  object = v12._object;
  String.append(_:)(v12);
  object, v14, v15, v16, v17, v18, v19, v20;
  v21._countAndFlagsBits = 32032;
  v21._object = 0xE200000000000000;
  String.append(_:)(v21);
  sub_10005E11C(v4, 0xD000000000000029, 0x800000010009A0D0, 0xD000000000000065, 0x800000010009A040, 62);
  0x800000010009A0D0, v22, v23, v24, v25, v26, v27, v28;
  v29 = sub_100076DE4(v2);
  if (v31 == -1)
  {
    v36 = v1[32];
    v35 = v1[33];
    _StringGuts.grow(_:)(45);
    0xE000000000000000, v37, v38, v39, v40, v41, v42, v43;
    swift_getErrorValue();
    v44._countAndFlagsBits = Error.localizedDescription.getter();
    v45 = v44._object;
    String.append(_:)(v44);
    v45, v46, v47, v48, v49, v50, v51, v52;
    v53._countAndFlagsBits = 32032;
    v53._object = 0xE200000000000000;
    String.append(_:)(v53);
    v32 = 0xD000000000000029;
    v33 = 0x800000010009A0D0;
    v34 = 13;
  }

  else
  {
    v32 = v29;
    v33 = v30;
    v34 = v31;
    v36 = v1[32];
    v35 = v1[33];
  }

  sub_10000B6B0();
  swift_allocError();
  *v54 = v32;
  *(v54 + 8) = v33;
  *(v54 + 16) = v34;
  swift_willThrow();

  v55 = v1[1];

  return v55(0);
}

uint64_t sub_10007654C(uint64_t a1, void *a2, void *a3)
{
  v5 = *sub_1000111EC((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_100002074(&qword_1000B6CC0, &qword_100091740);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  else
  {
    v9 = a2;
    v10 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    v13 = *(*(v5 + 64) + 40);
    *v13 = v10;
    v13[1] = v12;

    return _swift_continuation_throwingResume(v5);
  }
}

uint64_t sub_100076634(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if ((a1 != 5456722 || a2 != 0xE300000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    if (a1 == 0x6567617373654D69 && a2 == 0xE800000000000000)
    {
      a8 = a7;
    }

    else
    {
      a8 = a7;
      if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        if (a1 == 5459283 && a2 == 0xE300000000000000)
        {
          a8 = a6;
        }

        else
        {
          v17 = 0;
          a8 = a6;
          if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            goto LABEL_13;
          }
        }
      }
    }
  }

  v17 = sub_100021018(a3, a4, a8);
LABEL_13:
  v18 = *(a9 + *(type metadata accessor for SenderLookUpDecisioningComponent.SenderLookUpInput(0) + 20) + 105);
  if (v18 > 1)
  {
    if (v18 == 2)
    {
      a5 = (a5 >> 8) & 1;
    }

    else
    {
      a5 = 0;
    }
  }

  else if (v18)
  {
    a5 = HIWORD(a5) & 1;
  }

  return v17 & a5 & 1;
}

uint64_t sub_1000767B0()
{

  v1 = OBJC_IVAR____TtC13frauddefensed32SenderLookUpDecisioningComponent_logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_10007687C(uint64_t a1)
{
  result = type metadata accessor for Logger();
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

uint64_t sub_10007693C(uint64_t a1)
{
  v2 = type metadata accessor for SenderLookUpDecisioningComponent.SenderLookUpInput(0);
  v3 = __chkstk_darwin(v2);
  v46 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v51 = &v45 - v5;
  v6 = type metadata accessor for Locale();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100002074(&qword_1000B6A68, &qword_10008F6F0);
  __chkstk_darwin(v10 - 8);
  v12 = &v45 - v11;
  v13 = *(a1 + *(type metadata accessor for SpamDecisioningAsset(0) + 32));
  v14 = *(v13 + 320);
  v48 = *(v13 + 321);
  v49 = *(v13 + 322);
  v50 = v14;
  v15 = *(v13 + 328);
  v16 = *(v13 + 336);
  v17 = *(v13 + 344);
  static Locale.current.getter();
  Locale.region.getter();
  (*(v7 + 8))(v9, v6);
  v18 = type metadata accessor for Locale.Region();
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(v12, 1, v18) == 1)
  {
    sub_100077298(v12);
    v20 = 0xE700000000000000;
    v47 = 0x6E776F6E6B6E75;
  }

  else
  {
    v47 = Locale.Region.identifier.getter();
    v20 = v21;
    (*(v19 + 8))(v12, v18);
  }

  v22 = v51;
  sub_1000771E8(a1, v51);
  v23 = v46;
  sub_1000771E8(a1, v46);
  v24 = v22 + *(v2 + 20);
  v26 = *(v24 + 16);
  v25 = *(v24 + 24);
  v54 = v26;
  v55 = v25;
  v52 = 5456722;
  v53 = 0xE300000000000000;
  sub_10001C1B8();
  if (StringProtocol.contains<A>(_:)() & 1) != 0 && (!v48 ? (v27 = 0) : (v27 = 256), (v28 = v27 | v50, !v49) ? (v29 = 0) : (v29 = 0x10000), (sub_100076634(5456722, 0xE300000000000000, v47, v20, v28 | v29, v15, v16, v17, v23)) || (v54 = v26, v55 = v25, v52 = 0x6567617373654D69, v53 = 0xE800000000000000, (StringProtocol.contains<A>(_:)()) && (!v48 ? (v37 = 0) : (v37 = 256), (v38 = v37 | v50, !v49) ? (v39 = 0) : (v39 = 0x10000), (sub_100076634(0x6567617373654D69, 0xE800000000000000, v47, v20, v38 | v39, v15, v16, v17, v23)))
  {
    v40 = 1;
  }

  else
  {
    v54 = v26;
    v55 = v25;
    v52 = 5459283;
    v53 = 0xE300000000000000;
    if (StringProtocol.contains<A>(_:)())
    {
      if (v48)
      {
        v41 = 256;
      }

      else
      {
        v41 = 0;
      }

      v42 = v41 | v50;
      if (v49)
      {
        v43 = 0x10000;
      }

      else
      {
        v43 = 0;
      }

      v40 = sub_100076634(5459283, 0xE300000000000000, v47, v20, v42 | v43, v15, v16, v17, v23);
    }

    else
    {
      v40 = 0;
    }
  }

  v20, v30, v31, v32, v33, v34, v35, v36;
  sub_100077300(v23);
  sub_100077300(v51);
  return v40 & 1;
}

unint64_t sub_100076DE4(uint64_t a1)
{
  v1 = _convertErrorToNSError(_:)();
  v2 = [v1 userInfo];
  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v5;
  if (!*v3->endpoint)
  {
    v3, v5, v6, v7, v8, v9, v10, v11;
    v49 = v12;
LABEL_13:
    v49, v22, v23, v24, v25, v26, v27, v28;
    goto LABEL_14;
  }

  v13 = sub_100057F68(v4, v5);
  v15 = v14;
  v12, v14, v16, v17, v18, v19, v20, v21;
  if ((v15 & 1) == 0)
  {
    v49 = v3;
    goto LABEL_13;
  }

  sub_100005BBC(*v3[1].endpoint + 32 * v13, v62);
  v3, v29, v30, v31, v32, v33, v34, v35;
  sub_10007724C();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_14:

    return 0;
  }

  v36 = [v61 domain];
  v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v39 = v38;

  v46 = 0x800000010009A120;
  if ((v37 != 0xD000000000000010 || 0x800000010009A120 != v39) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    v50 = 0x800000010009A140;
    if (v37 == 0xD000000000000016 && 0x800000010009A140 == v39 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v39, v50, v40, v41, v42, v43, v44, v45;
      v51 = [v61 code];

      if (v51 == 29)
      {
        return 0xD000000000000042;
      }

      if (v51 == 8)
      {
        return 0xD000000000000033;
      }

      if (v51 == 7)
      {
        return 0xD00000000000003BLL;
      }

      return 0xD00000000000002CLL;
    }

    if (v37 == 0xD000000000000012 && 0x800000010009A160 == v39)
    {
      v39, 0x800000010009A160, v40, v41, v42, v43, v44, v45;
      goto LABEL_37;
    }

    v52 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v39, v53, v54, v55, v56, v57, v58, v59;
    if (v52)
    {
LABEL_37:
      v60 = [v61 code];

      if (v60 == 4097)
      {
        return 0xD00000000000003DLL;
      }

      else
      {
        return 0xD00000000000003ALL;
      }
    }

    return 0;
  }

  v39, v46, v40, v41, v42, v43, v44, v45;
  v47 = [v61 code];

  if (v47 > -1004)
  {
    if (v47 != -1003)
    {
      if (v47 == -1001)
      {
        return 0xD00000000000003ALL;
      }

      return 0xD000000000000031;
    }

    return 0xD00000000000003CLL;
  }

  else
  {
    if (v47 != -1009)
    {
      if (v47 == -1004)
      {
        return 0xD000000000000038;
      }

      return 0xD000000000000031;
    }

    return 0xD00000000000003BLL;
  }
}

uint64_t sub_1000771E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SenderLookUpDecisioningComponent.SenderLookUpInput(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10007724C()
{
  result = qword_1000B8E58;
  if (!qword_1000B8E58)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000B8E58);
  }

  return result;
}

uint64_t sub_100077298(uint64_t a1)
{
  v2 = sub_100002074(&qword_1000B6A68, &qword_10008F6F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100077300(uint64_t a1)
{
  v2 = type metadata accessor for SenderLookUpDecisioningComponent.SenderLookUpInput(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100077380(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SpamDecisioningAsset(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_100077454(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for SpamDecisioningAsset(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_100077510(uint64_t a1)
{
  result = type metadata accessor for SpamDecisioningAsset(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

double sub_100077584@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_100057F68(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(a3 + 56) + 32 * v6;

    sub_100005BBC(v8, a4);
  }

  else
  {
    result = 0.0;
    *a4 = 0u;
    a4[1] = 0u;
  }

  return result;
}

double sub_1000775E8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_100057F68(a1, a2), (v7 & 1) != 0))
  {
    sub_100011DFC(*(a3 + 56) + 40 * v6, a4, &qword_1000B6A00, &qword_10008F6B0);
  }

  else
  {
    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
    *&result = 1;
    *(a4 + 24) = xmmword_10008F650;
  }

  return result;
}

_TtC13frauddefensed22TrustKitUIServerClient *sub_100077658(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v8 = a1;
  v9 = *(a1 + 16);
  if (!v9)
  {
    goto LABEL_4;
  }

  v10 = sub_100049DCC(*(a1 + 16), 0);
  v8 = sub_100087D9C(&v12, v10->$__lazy_storage_$_interface, v9, v8);
  sub_10000BAD4(v12);
  if (v8 != v9)
  {
    __break(1u);
LABEL_4:
    v8, a2, a3, a4, a5, a6, a7, a8;
    return &_swiftEmptyArrayStorage;
  }

  return v10;
}

_TtC13frauddefensed22TrustKitUIServerClient *sub_1000776E8(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v8 = a1;
  v9 = *(a1 + 16);
  if (!v9)
  {
    goto LABEL_4;
  }

  v10 = sub_100049E50(*(a1 + 16), 0);
  v11 = *(type metadata accessor for NemesisError() - 8);
  v8 = sub_100087EF4(&v13, &v10->_TtCs12_SwiftObject_opaque[(*(v11 + 80) + 32) & ~*(v11 + 80)], v9, v8);
  sub_10000BAD4(v13);
  if (v8 != v9)
  {
    __break(1u);
LABEL_4:
    v8, a2, a3, a4, a5, a6, a7, a8;
    return &_swiftEmptyArrayStorage;
  }

  return v10;
}

uint64_t sub_1000777B0()
{
  v1[14] = v0;
  v2 = type metadata accessor for SpamDecisioningAsset(0);
  v1[15] = v2;
  v1[16] = *(v2 - 8);
  v1[17] = swift_task_alloc();
  sub_100002074(&qword_1000B6CB8, &unk_10008F9F0);
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  sub_100002074(&qword_1000B9058, &qword_100093140);
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v3 = type metadata accessor for UAFAssetManager.AssetInfo(0);
  v1[25] = v3;
  v1[26] = *(v3 - 8);
  v1[27] = swift_task_alloc();

  return _swift_task_switch(sub_100077978, 0, 0);
}

uint64_t sub_100077978(uint64_t a1)
{
  v1[28] = OBJC_IVAR____TtC13frauddefensed22SpamDecisioningManager_logger;
  v2 = static os_log_type_t.default.getter();
  sub_10005E11C(v2, 0xD000000000000031, 0x80000001000956C0, 0xD00000000000005BLL, 0x8000000100095700, 543);
  sub_100082B5C();
  v3 = sub_10005163C();

  if (v3)
  {
    v4 = static os_log_type_t.debug.getter();
    sub_10005E11C(v4, 0xD000000000000040, 0x800000010009ACE0, 0xD00000000000005BLL, 0x8000000100095700, 44);

    v5 = v1[1];

    return v5();
  }

  else
  {
    v7 = v1[14];
    v8 = static os_log_type_t.default.getter();
    sub_10005E11C(v8, 0xD000000000000054, 0x8000000100095760, 0xD00000000000005BLL, 0x8000000100095700, 547);
    v9 = OBJC_IVAR____TtC13frauddefensed22SpamDecisioningManager____lazy_storage___uafAssetManager;
    v1[29] = OBJC_IVAR____TtC13frauddefensed22SpamDecisioningManager____lazy_storage___uafAssetManager;
    v1[30] = *(v7 + v9);

    v10 = swift_task_alloc();
    v1[31] = v10;
    *v10 = v1;
    v10[1] = sub_100077BAC;

    return sub_100051B58();
  }
}

uint64_t sub_100077BAC()
{
  *(*v1 + 256) = v0;

  if (v0)
  {
    v2 = sub_100078BEC;
  }

  else
  {

    v2 = sub_100077CC8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100077CC8()
{
  sub_100054AB0();
  if (v1)
  {
    v1, v1, v2, v3, v4, v5, v6, v7;
LABEL_3:
    v8 = v0[25];
    v9 = v0[26];
    v10 = v0[19];
    v11 = static os_log_type_t.default.getter();
    sub_10005E11C(v11, 0xD000000000000045, 0x800000010009A980, 0xD00000000000005BLL, 0x8000000100095700, 64);
    (*(v9 + 56))(v10, 1, 1, v8);
    v12 = swift_task_alloc();
    v0[38] = v12;
    *v12 = v0;
    v12[1] = sub_1000785A0;
    v13 = v0[23];
    v14 = v0[19];

    return sub_1000122EC(v13, v14);
  }

  if (qword_1000B6658 != -1)
  {
    swift_once();
  }

  if (qword_1000B7C78)
  {
    v16 = qword_1000B7C78;
    v17 = String._bridgeToObjectiveC()();
    v18 = [v16 BOOLForKey:v17];

    if (v18)
    {
      goto LABEL_3;
    }
  }

  v0[33] = *(v0[14] + v0[29]);

  v19 = swift_task_alloc();
  v0[34] = v19;
  *v19 = v0;
  v19[1] = sub_100077F34;
  v20 = v0[27];

  return sub_1000505B8(v20);
}

uint64_t sub_100077F34()
{
  *(*v1 + 280) = v0;

  if (v0)
  {
    v2 = sub_10007911C;
  }

  else
  {

    v2 = sub_100078050;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100078050()
{
  v1 = v0[26];
  v2 = v0[25];
  v3 = v0[20];
  sub_100088834(v0[27], v3, type metadata accessor for UAFAssetManager.AssetInfo);
  (*(v1 + 56))(v3, 0, 1, v2);
  v4 = swift_task_alloc();
  v0[36] = v4;
  *v4 = v0;
  v4[1] = sub_100078138;
  v5 = v0[24];
  v6 = v0[20];

  return sub_1000122EC(v5, v6);
}

uint64_t sub_100078138()
{
  *(*v1 + 296) = v0;

  if (v0)
  {
    v2 = sub_100079248;
  }

  else
  {
    v2 = sub_10007824C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10007824C()
{
  v1 = v0[24];
  v2 = v0[15];
  v3 = v0[16];
  v4 = v0[14];
  sub_10008956C(v0[27], type metadata accessor for UAFAssetManager.AssetInfo);
  (*(v3 + 56))(v1, 0, 1, v2);
  v5 = OBJC_IVAR____TtC13frauddefensed22SpamDecisioningManager_spamAsset;
  swift_beginAccess();
  sub_100087CF4(v1, v4 + v5);
  swift_endAccess();
  v6 = v0[22];
  v7 = v0[15];
  v8 = v0[16];
  v9 = v0[14];
  v10 = OBJC_IVAR____TtC13frauddefensed22SpamDecisioningManager_spamAsset;
  swift_beginAccess();
  sub_100011DFC(v9 + v10, v6, &qword_1000B9058, &qword_100093140);
  v11 = (*(v8 + 48))(v6, 1, v7);
  v12 = v0[14];
  if (v11 == 1)
  {
    sub_10000BC10(v0[22], &qword_1000B9058, &qword_100093140);
    v13 = static os_log_type_t.error.getter();
    sub_10005E11C(v13, 0xD000000000000029, 0x800000010009ACB0, 0xD00000000000005BLL, 0x8000000100095700, 69);
    sub_10000B6B0();
    swift_allocError();
    *v14 = 0xD000000000000029;
    *(v14 + 8) = 0x800000010009ACB0;
    *(v14 + 16) = 2;
    swift_willThrow();

    v15 = v0[1];

    return v15();
  }

  else
  {
    v17 = v0[17];
    sub_1000887CC(v0[22], v17, type metadata accessor for SpamDecisioningAsset);
    v18 = sub_100088414();
    v19 = swift_task_alloc();
    v0[40] = v19;
    *(v19 + 16) = v18 & 1;
    *(v19 + 17) = BYTE1(v18) & 1;
    *(v19 + 18) = BYTE2(v18) & 1;
    *(v19 + 24) = v12;
    *(v19 + 32) = v17;
    v20 = swift_task_alloc();
    v0[41] = v20;
    *v20 = v0;
    v20[1] = sub_1000789E8;

    return withThrowingTaskGroup<A, B>(of:returning:isolation:body:)(v20, &type metadata for () + 8, &type metadata for () + 8, 0, 0, &unk_1000931D8, v19, &type metadata for () + 8);
  }
}

uint64_t sub_1000785A0()
{
  *(*v1 + 312) = v0;

  if (v0)
  {
    v2 = sub_100079464;
  }

  else
  {
    v2 = sub_1000786B4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000786B4()
{
  v1 = v0[23];
  v2 = v0[14];
  (*(v0[16] + 56))(v1, 0, 1, v0[15]);
  v3 = OBJC_IVAR____TtC13frauddefensed22SpamDecisioningManager_spamAsset;
  swift_beginAccess();
  sub_100087CF4(v1, v2 + v3);
  swift_endAccess();
  v4 = v0[22];
  v5 = v0[15];
  v6 = v0[16];
  v7 = v0[14];
  v8 = OBJC_IVAR____TtC13frauddefensed22SpamDecisioningManager_spamAsset;
  swift_beginAccess();
  sub_100011DFC(v7 + v8, v4, &qword_1000B9058, &qword_100093140);
  v9 = (*(v6 + 48))(v4, 1, v5);
  v10 = v0[14];
  if (v9 == 1)
  {
    sub_10000BC10(v0[22], &qword_1000B9058, &qword_100093140);
    v11 = static os_log_type_t.error.getter();
    sub_10005E11C(v11, 0xD000000000000029, 0x800000010009ACB0, 0xD00000000000005BLL, 0x8000000100095700, 69);
    sub_10000B6B0();
    swift_allocError();
    *v12 = 0xD000000000000029;
    *(v12 + 8) = 0x800000010009ACB0;
    *(v12 + 16) = 2;
    swift_willThrow();

    v13 = v0[1];

    return v13();
  }

  else
  {
    v15 = v0[17];
    sub_1000887CC(v0[22], v15, type metadata accessor for SpamDecisioningAsset);
    v16 = sub_100088414();
    v17 = swift_task_alloc();
    v0[40] = v17;
    *(v17 + 16) = v16 & 1;
    *(v17 + 17) = BYTE1(v16) & 1;
    *(v17 + 18) = BYTE2(v16) & 1;
    *(v17 + 24) = v10;
    *(v17 + 32) = v15;
    v18 = swift_task_alloc();
    v0[41] = v18;
    *v18 = v0;
    v18[1] = sub_1000789E8;

    return withThrowingTaskGroup<A, B>(of:returning:isolation:body:)(v18, &type metadata for () + 8, &type metadata for () + 8, 0, 0, &unk_1000931D8, v17, &type metadata for () + 8);
  }
}

uint64_t sub_1000789E8()
{
  *(*v1 + 336) = v0;

  if (v0)
  {
    v2 = sub_100079538;
  }

  else
  {

    v2 = sub_100078B04;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100078B04()
{
  sub_10008956C(*(v0 + 136), type metadata accessor for SpamDecisioningAsset);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100078BEC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100078CC8()
{
  *(*v1 + 360) = v0;

  if (v0)
  {
    v2 = sub_100079388;
  }

  else
  {
    v2 = sub_100078DDC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100078DDC()
{
  v1 = v0[21];
  v2 = v0[15];
  v3 = v0[16];
  v4 = v0[14];

  (*(v3 + 56))(v1, 0, 1, v2);
  v5 = OBJC_IVAR____TtC13frauddefensed22SpamDecisioningManager_spamAsset;
  swift_beginAccess();
  sub_100087CF4(v1, v4 + v5);
  swift_endAccess();
  v6 = v0[22];
  v7 = v0[15];
  v8 = v0[16];
  v9 = v0[14];
  v10 = OBJC_IVAR____TtC13frauddefensed22SpamDecisioningManager_spamAsset;
  swift_beginAccess();
  sub_100011DFC(v9 + v10, v6, &qword_1000B9058, &qword_100093140);
  v11 = (*(v8 + 48))(v6, 1, v7);
  v12 = v0[14];
  if (v11 == 1)
  {
    sub_10000BC10(v0[22], &qword_1000B9058, &qword_100093140);
    v13 = static os_log_type_t.error.getter();
    sub_10005E11C(v13, 0xD000000000000029, 0x800000010009ACB0, 0xD00000000000005BLL, 0x8000000100095700, 69);
    sub_10000B6B0();
    swift_allocError();
    *v14 = 0xD000000000000029;
    *(v14 + 8) = 0x800000010009ACB0;
    *(v14 + 16) = 2;
    swift_willThrow();

    v15 = v0[1];

    return v15();
  }

  else
  {
    v17 = v0[17];
    sub_1000887CC(v0[22], v17, type metadata accessor for SpamDecisioningAsset);
    v18 = sub_100088414();
    v19 = swift_task_alloc();
    v0[40] = v19;
    *(v19 + 16) = v18 & 1;
    *(v19 + 17) = BYTE1(v18) & 1;
    *(v19 + 18) = BYTE2(v18) & 1;
    *(v19 + 24) = v12;
    *(v19 + 32) = v17;
    v20 = swift_task_alloc();
    v0[41] = v20;
    *v20 = v0;
    v20[1] = sub_1000789E8;

    return withThrowingTaskGroup<A, B>(of:returning:isolation:body:)(v20, &type metadata for () + 8, &type metadata for () + 8, 0, 0, &unk_1000931D8, v19, &type metadata for () + 8);
  }
}

uint64_t sub_10007911C()
{

  v0[43] = v0[35];
  v1 = v0[25];
  v2 = v0[26];
  v3 = v0[18];
  v4 = static os_log_type_t.debug.getter();
  sub_10005E11C(v4, 0xD00000000000002ELL, 0x80000001000987C0, 0xD00000000000005BLL, 0x8000000100095700, 58);
  (*(v2 + 56))(v3, 1, 1, v1);
  v5 = swift_task_alloc();
  v0[44] = v5;
  *v5 = v0;
  v5[1] = sub_100078CC8;
  v6 = v0[21];
  v7 = v0[18];

  return sub_1000122EC(v6, v7);
}

uint64_t sub_100079248()
{
  sub_10008956C(v0[27], type metadata accessor for UAFAssetManager.AssetInfo);
  v0[43] = v0[37];
  v1 = v0[25];
  v2 = v0[26];
  v3 = v0[18];
  v4 = static os_log_type_t.debug.getter();
  sub_10005E11C(v4, 0xD00000000000002ELL, 0x80000001000987C0, 0xD00000000000005BLL, 0x8000000100095700, 58);
  (*(v2 + 56))(v3, 1, 1, v1);
  v5 = swift_task_alloc();
  v0[44] = v5;
  *v5 = v0;
  v5[1] = sub_100078CC8;
  v6 = v0[21];
  v7 = v0[18];

  return sub_1000122EC(v6, v7);
}

uint64_t sub_100079388()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100079464()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100079538()
{
  v1 = *(v0 + 136);

  sub_10008956C(v1, type metadata accessor for SpamDecisioningAsset);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100079634(uint64_t a1)
{
  v2[283] = v1;
  v2[282] = a1;
  sub_100002074(&qword_1000B9060, &qword_100093150);
  v2[284] = swift_task_alloc();
  v2[285] = swift_task_alloc();
  v3 = type metadata accessor for Locale();
  v2[286] = v3;
  v2[287] = *(v3 - 8);
  v2[288] = swift_task_alloc();
  v2[289] = swift_task_alloc();
  sub_100002074(&qword_1000B6A68, &qword_10008F6F0);
  v2[290] = swift_task_alloc();
  v2[291] = swift_task_alloc();
  v4 = type metadata accessor for NemesisError();
  v2[292] = v4;
  v2[293] = *(v4 - 8);
  v2[294] = swift_task_alloc();
  v2[295] = swift_task_alloc();
  v2[296] = swift_task_alloc();
  v5 = type metadata accessor for UUID();
  v2[297] = v5;
  v2[298] = *(v5 - 8);
  v2[299] = swift_task_alloc();
  v2[300] = type metadata accessor for LogicGraphDecisioningComponent.LogicGraphInput(0);
  v2[301] = swift_task_alloc();
  v2[302] = swift_task_alloc();
  v6 = type metadata accessor for SpamDecisioningAsset(0);
  v2[303] = v6;
  v2[304] = *(v6 - 8);
  v2[305] = swift_task_alloc();
  sub_100002074(&qword_1000B6CB8, &unk_10008F9F0);
  v2[306] = swift_task_alloc();
  v2[307] = swift_task_alloc();
  v2[308] = swift_task_alloc();
  v2[309] = swift_task_alloc();
  v2[310] = swift_task_alloc();
  v2[311] = swift_task_alloc();
  v2[312] = swift_task_alloc();
  v2[313] = swift_task_alloc();
  v2[314] = swift_task_alloc();
  v2[315] = swift_task_alloc();
  v2[316] = swift_task_alloc();
  sub_100002074(&qword_1000B9058, &qword_100093140);
  v2[317] = swift_task_alloc();
  v2[318] = swift_task_alloc();
  v2[319] = swift_task_alloc();
  v2[320] = swift_task_alloc();
  v7 = type metadata accessor for UAFAssetManager.AssetInfo(0);
  v2[321] = v7;
  v2[322] = *(v7 - 8);
  v2[323] = swift_task_alloc();
  v2[324] = swift_task_alloc();

  return _swift_task_switch(sub_100079A68, 0, 0);
}

uint64_t sub_100079A68(uint64_t a1)
{
  v1[325] = OBJC_IVAR____TtC13frauddefensed22SpamDecisioningManager_logger;
  v2 = static os_log_type_t.default.getter();
  sub_10005E11C(v2, 0xD000000000000031, 0x80000001000956C0, 0xD00000000000005BLL, 0x8000000100095700, 543);
  sub_100082B5C();
  v3 = sub_10005163C();

  if ((v3 & 1) == 0)
  {
    v6 = static os_log_type_t.default.getter();
    sub_10005E11C(v6, 0xD000000000000054, 0x8000000100095760, 0xD00000000000005BLL, 0x8000000100095700, 547);
    v7 = static os_log_type_t.error.getter();
    v8 = 0x800000010009A520;
    v9 = 0xD00000000000002ALL;
    sub_10005E11C(v7, 0xD00000000000002ALL, 0x800000010009A520, 0xD00000000000005BLL, 0x8000000100095700, 110);
    v10 = 14;
LABEL_22:
    sub_10000B6B0();
    swift_allocError();
    *v64 = v9;
    *(v64 + 8) = v8;
    *(v64 + 16) = v10;
    swift_willThrow();

    v65 = v1[1];

    return v65();
  }

  v4 = v1[282];
  v5 = *(v4 + 56);
  if ((v5 & 0x2000000000000000) != 0)
  {
    if ((v5 & 0xF00000000000000) == 0)
    {
      goto LABEL_21;
    }
  }

  else if ((*(v4 + 48) & 0xFFFFFFFFFFFFLL) == 0)
  {
    goto LABEL_21;
  }

  v11 = *(v4 + 40);
  if ((v11 & 0x2000000000000000) != 0)
  {
    if ((v11 & 0xF00000000000000) == 0)
    {
      goto LABEL_21;
    }
  }

  else if ((*(v4 + 32) & 0xFFFFFFFFFFFFLL) == 0)
  {
    goto LABEL_21;
  }

  v12 = *(v4 + 24);
  if ((v12 & 0x2000000000000000) != 0)
  {
    if ((v12 & 0xF00000000000000) != 0)
    {
      goto LABEL_15;
    }

LABEL_21:
    v46 = static os_log_type_t.error.getter();
    v47._countAndFlagsBits = sub_100086FE0();
    object = v47._object;
    String.append(_:)(v47);
    object, v49, v50, v51, v52, v53, v54, v55;
    v56._countAndFlagsBits = 32032;
    v56._object = 0xE200000000000000;
    String.append(_:)(v56);
    sub_10005E11C(v46, 0xD00000000000002ELL, 0x800000010009A550, 0xD00000000000005BLL, 0x8000000100095700, 118);
    0x800000010009A550, v57, v58, v59, v60, v61, v62, v63;
    v10 = 0;
    v8 = 0x800000010009A580;
    v9 = 0xD00000000000002BLL;
    goto LABEL_22;
  }

  if ((*(v4 + 16) & 0xFFFFFFFFFFFFLL) == 0)
  {
    goto LABEL_21;
  }

LABEL_15:
  if (*(v4 + 105) == 3)
  {
    goto LABEL_21;
  }

  v13 = static os_log_type_t.default.getter();
  v14._countAndFlagsBits = sub_100086FE0();
  v15 = v14._object;
  String.append(_:)(v14);
  v15, v16, v17, v18, v19, v20, v21, v22;
  v23._countAndFlagsBits = 32032;
  v23._object = 0xE200000000000000;
  String.append(_:)(v23);
  sub_10005E11C(v13, 0xD000000000000018, 0x800000010009A5B0, 0xD00000000000005BLL, 0x8000000100095700, 122);
  0x800000010009A5B0, v24, v25, v26, v27, v28, v29, v30;
  sub_100054AB0();
  if (v31)
  {
    v31, v31, v32, v33, v34, v35, v36, v37;
LABEL_18:
    v38 = v1[322];
    v39 = v1[321];
    v40 = v1[315];
    v41 = static os_log_type_t.default.getter();
    sub_10005E11C(v41, 0xD000000000000045, 0x800000010009A980, 0xD00000000000005BLL, 0x8000000100095700, 138);
    (*(v38 + 56))(v40, 1, 1, v39);
    v42 = swift_task_alloc();
    v1[331] = v42;
    *v42 = v1;
    v42[1] = sub_10007ACE0;
    v43 = v1[319];
    v44 = v1[315];

    return sub_1000122EC(v43, v44);
  }

  if (qword_1000B6658 != -1)
  {
    swift_once();
  }

  if (qword_1000B7C78)
  {
    v66 = qword_1000B7C78;
    v67 = String._bridgeToObjectiveC()();
    v68 = [v66 BOOLForKey:v67];

    if (v68)
    {
      goto LABEL_18;
    }
  }

  v1[326] = *(v1[283] + OBJC_IVAR____TtC13frauddefensed22SpamDecisioningManager____lazy_storage___uafAssetManager);

  v69 = swift_task_alloc();
  v1[327] = v69;
  *v69 = v1;
  v69[1] = sub_10007A118;
  v70 = v1[324];

  return sub_1000505B8(v70);
}

uint64_t sub_10007A118()
{
  *(*v1 + 2624) = v0;

  if (v0)
  {
    v2 = sub_100080674;
  }

  else
  {

    v2 = sub_10007A234;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10007A234()
{
  v1 = v0[322];
  v2 = v0[321];
  v3 = v0[316];
  sub_100088834(v0[324], v3, type metadata accessor for UAFAssetManager.AssetInfo);
  (*(v1 + 56))(v3, 0, 1, v2);
  v4 = swift_task_alloc();
  v0[329] = v4;
  *v4 = v0;
  v4[1] = sub_10007A320;
  v5 = v0[320];
  v6 = v0[316];

  return sub_1000122EC(v5, v6);
}

uint64_t sub_10007A320()
{
  *(*v1 + 2640) = v0;

  if (v0)
  {
    v2 = sub_1000807A4;
  }

  else
  {
    v2 = sub_10007A434;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10007A434()
{
  v72 = v0;
  v1 = *(v0 + 2560);
  v2 = *(v0 + 2432);
  v3 = *(v0 + 2424);
  v4 = *(v0 + 2264);
  sub_10008956C(*(v0 + 2592), type metadata accessor for UAFAssetManager.AssetInfo);
  (*(v2 + 56))(v1, 0, 1, v3);
  v5 = OBJC_IVAR____TtC13frauddefensed22SpamDecisioningManager_spamAsset;
  swift_beginAccess();
  sub_100087CF4(v1, v4 + v5);
  swift_endAccess();
  v6 = *(v0 + 2544);
  v7 = *(v0 + 2432);
  v8 = *(v0 + 2424);
  v9 = *(v0 + 2264);
  v10 = OBJC_IVAR____TtC13frauddefensed22SpamDecisioningManager_spamAsset;
  swift_beginAccess();
  sub_100011DFC(v9 + v10, v6, &qword_1000B9058, &qword_100093140);
  if ((*(v7 + 48))(v6, 1, v8) == 1)
  {
    sub_10000BC10(*(v0 + 2544), &qword_1000B9058, &qword_100093140);
    v11 = static os_log_type_t.error.getter();
    sub_10005E11C(v11, 0xD000000000000049, 0x800000010009A5D0, 0xD00000000000005BLL, 0x8000000100095700, 144);
    sub_10000B6B0();
    swift_allocError();
    *v12 = 0xD000000000000049;
    *(v12 + 8) = 0x800000010009A5D0;
    *(v12 + 16) = 14;
    swift_willThrow();
LABEL_7:

    v41 = *(v0 + 8);

    return v41();
  }

  v13 = *(v0 + 2256);
  sub_1000887CC(*(v0 + 2544), *(v0 + 2440), type metadata accessor for SpamDecisioningAsset);
  if ((sub_100084050(v13) & 1) == 0)
  {
    v20 = *(v0 + 2440);
    v21 = static os_log_type_t.default.getter();
    v69 = 0;
    v70 = 0xE000000000000000;
    _StringGuts.grow(_:)(52);
    v22._countAndFlagsBits = 0xD000000000000030;
    v22._object = 0x800000010009A620;
    String.append(_:)(v22);
    v23._countAndFlagsBits = sub_100086FE0();
    object = v23._object;
    String.append(_:)(v23);
    object, v25, v26, v27, v28, v29, v30, v31;
    v32._countAndFlagsBits = 32032;
    v32._object = 0xE200000000000000;
    String.append(_:)(v32);
    sub_10005E11C(v21, 0, 0xE000000000000000, 0xD00000000000005BLL, 0x8000000100095700, 149);
    0xE000000000000000, v33, v34, v35, v36, v37, v38, v39;
    sub_10000B6B0();
    swift_allocError();
    *v40 = 0xD00000000000002DLL;
    *(v40 + 8) = 0x800000010009A660;
    *(v40 + 16) = 16;
    swift_willThrow();
    sub_10008956C(v20, type metadata accessor for SpamDecisioningAsset);
    goto LABEL_7;
  }

  v14 = *(v0 + 2576);
  v15 = *(v0 + 2568);
  v16 = *(v0 + 2512);
  v17 = *(v0 + 2440);
  v18 = swift_allocObject();
  *(v0 + 2664) = v18;
  *(v18 + 16) = &_swiftEmptyDictionarySingleton;
  sub_100011DFC(v17, v16, &qword_1000B6CB8, &unk_10008F9F0);
  v19 = *(v14 + 48);
  *(v0 + 2672) = v19;
  *(v0 + 2680) = (v14 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v19(v16, 1, v15) == 1)
  {
    sub_10000BC10(*(v0 + 2512), &qword_1000B6CB8, &unk_10008F9F0);
    v71 = &type metadata for String;
    v69 = 0;
    v70 = 0xE000000000000000;
    sub_100056920(&v69, 0x666E497465737361, 0xE90000000000006FLL);
  }

  else
  {
    v43 = *(v0 + 2584);
    sub_1000887CC(*(v0 + 2512), v43, type metadata accessor for UAFAssetManager.AssetInfo);
    v71 = &type metadata for String;
    v69 = sub_100053230();
    v70 = v44;
    sub_100056920(&v69, 0x666E497465737361, 0xE90000000000006FLL);
    sub_10008956C(v43, type metadata accessor for UAFAssetManager.AssetInfo);
  }

  v45 = sub_100088414();
  *(v0 + 122) = v45 & 1;
  *(v0 + 123) = BYTE1(v45) & 1;
  *(v0 + 124) = BYTE2(v45) & 1;
  if ((~v45 & 0x10100) != 0 || (v45 & 1) == 0)
  {
    *(v0 + 2736) = &_swiftEmptySetSingleton;
    *(v0 + 2728) = &_swiftEmptyArrayStorage;
    v62 = *(v0 + 2664);
    v63 = *(v0 + 2440);
    v64 = *(v0 + 2264);
    v65 = *(v0 + 2256);
    v66 = swift_allocObject();
    *(v0 + 2744) = v66;
    *(v66 + 16) = 2;
    *(v66 + 24) = 0u;
    *(v66 + 40) = 0u;
    *(v66 + 56) = 1;
    *(v66 + 64) = 0u;
    *(v66 + 80) = 0u;
    *(v66 + 96) = 0u;
    *(v66 + 112) = 0u;
    *(v66 + 128) = 0;
    v67 = swift_task_alloc();
    *(v0 + 2752) = v67;
    v67[2] = v0 + 122;
    v67[3] = v64;
    v67[4] = v63;
    v67[5] = v65;
    v67[6] = v62;
    v67[7] = v66;
    v68 = swift_task_alloc();
    *(v0 + 2760) = v68;
    *v68 = v0;
    v68[1] = sub_10007D14C;
    v74 = &type metadata for () + 8;

    return withThrowingTaskGroup<A, B>(of:returning:isolation:body:)(v68, &type metadata for () + 8, &type metadata for () + 8, 0, 0, &unk_100093160, v67, &type metadata for () + 8);
  }

  else
  {
    v46 = *(v0 + 2416);
    v47 = *(v0 + 2400);
    v48 = *(v0 + 2392);
    v49 = *(v0 + 2384);
    v50 = *(v0 + 2376);
    v51 = *(v0 + 2264);
    v52 = *(v0 + 2256);
    sub_100088834(*(v0 + 2440), v46, type metadata accessor for SpamDecisioningAsset);
    sub_1000886EC(v52, v0 + 128);
    v53 = sub_100011724(&_swiftEmptyArrayStorage);
    v54 = (v46 + v47[5]);
    v55 = *(v52 + 90);
    v57 = v52[4];
    v56 = v52[5];
    v54[3] = v52[3];
    v54[4] = v57;
    v54[5] = v56;
    *(v54 + 90) = v55;
    v59 = v52[1];
    v58 = v52[2];
    *v54 = *v52;
    v54[1] = v59;
    v54[2] = v58;
    *(v46 + v47[6]) = v53;
    *(v46 + v47[7]) = 0;
    UUID.init()();
    *(v0 + 2688) = UUID.uuidString.getter();
    *(v0 + 2696) = v60;
    (*(v49 + 8))(v48, v50);
    v61 = *(v51 + OBJC_IVAR____TtC13frauddefensed22SpamDecisioningManager_signpostsManager);
    *(v0 + 2704) = v61;

    return _swift_task_switch(sub_10007B680, v61, 0);
  }
}

uint64_t sub_10007ACE0()
{
  *(*v1 + 2656) = v0;

  if (v0)
  {
    v2 = sub_100080B00;
  }

  else
  {
    v2 = sub_10007ADF4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10007ADF4()
{
  v70 = v0;
  v1 = *(v0 + 2552);
  v2 = *(v0 + 2264);
  (*(*(v0 + 2432) + 56))(v1, 0, 1, *(v0 + 2424));
  v3 = OBJC_IVAR____TtC13frauddefensed22SpamDecisioningManager_spamAsset;
  swift_beginAccess();
  sub_100087CF4(v1, v2 + v3);
  swift_endAccess();
  v4 = *(v0 + 2544);
  v5 = *(v0 + 2432);
  v6 = *(v0 + 2424);
  v7 = *(v0 + 2264);
  v8 = OBJC_IVAR____TtC13frauddefensed22SpamDecisioningManager_spamAsset;
  swift_beginAccess();
  sub_100011DFC(v7 + v8, v4, &qword_1000B9058, &qword_100093140);
  if ((*(v5 + 48))(v4, 1, v6) == 1)
  {
    sub_10000BC10(*(v0 + 2544), &qword_1000B9058, &qword_100093140);
    v9 = static os_log_type_t.error.getter();
    sub_10005E11C(v9, 0xD000000000000049, 0x800000010009A5D0, 0xD00000000000005BLL, 0x8000000100095700, 144);
    sub_10000B6B0();
    swift_allocError();
    *v10 = 0xD000000000000049;
    *(v10 + 8) = 0x800000010009A5D0;
    *(v10 + 16) = 14;
    swift_willThrow();
LABEL_7:

    v39 = *(v0 + 8);

    return v39();
  }

  v11 = *(v0 + 2256);
  sub_1000887CC(*(v0 + 2544), *(v0 + 2440), type metadata accessor for SpamDecisioningAsset);
  if ((sub_100084050(v11) & 1) == 0)
  {
    v18 = *(v0 + 2440);
    v19 = static os_log_type_t.default.getter();
    v67 = 0;
    v68 = 0xE000000000000000;
    _StringGuts.grow(_:)(52);
    v20._countAndFlagsBits = 0xD000000000000030;
    v20._object = 0x800000010009A620;
    String.append(_:)(v20);
    v21._countAndFlagsBits = sub_100086FE0();
    object = v21._object;
    String.append(_:)(v21);
    object, v23, v24, v25, v26, v27, v28, v29;
    v30._countAndFlagsBits = 32032;
    v30._object = 0xE200000000000000;
    String.append(_:)(v30);
    sub_10005E11C(v19, 0, 0xE000000000000000, 0xD00000000000005BLL, 0x8000000100095700, 149);
    0xE000000000000000, v31, v32, v33, v34, v35, v36, v37;
    sub_10000B6B0();
    swift_allocError();
    *v38 = 0xD00000000000002DLL;
    *(v38 + 8) = 0x800000010009A660;
    *(v38 + 16) = 16;
    swift_willThrow();
    sub_10008956C(v18, type metadata accessor for SpamDecisioningAsset);
    goto LABEL_7;
  }

  v12 = *(v0 + 2576);
  v13 = *(v0 + 2568);
  v14 = *(v0 + 2512);
  v15 = *(v0 + 2440);
  v16 = swift_allocObject();
  *(v0 + 2664) = v16;
  *(v16 + 16) = &_swiftEmptyDictionarySingleton;
  sub_100011DFC(v15, v14, &qword_1000B6CB8, &unk_10008F9F0);
  v17 = *(v12 + 48);
  *(v0 + 2672) = v17;
  *(v0 + 2680) = (v12 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v17(v14, 1, v13) == 1)
  {
    sub_10000BC10(*(v0 + 2512), &qword_1000B6CB8, &unk_10008F9F0);
    v69 = &type metadata for String;
    v67 = 0;
    v68 = 0xE000000000000000;
    sub_100056920(&v67, 0x666E497465737361, 0xE90000000000006FLL);
  }

  else
  {
    v41 = *(v0 + 2584);
    sub_1000887CC(*(v0 + 2512), v41, type metadata accessor for UAFAssetManager.AssetInfo);
    v69 = &type metadata for String;
    v67 = sub_100053230();
    v68 = v42;
    sub_100056920(&v67, 0x666E497465737361, 0xE90000000000006FLL);
    sub_10008956C(v41, type metadata accessor for UAFAssetManager.AssetInfo);
  }

  v43 = sub_100088414();
  *(v0 + 122) = v43 & 1;
  *(v0 + 123) = BYTE1(v43) & 1;
  *(v0 + 124) = BYTE2(v43) & 1;
  if ((~v43 & 0x10100) != 0 || (v43 & 1) == 0)
  {
    *(v0 + 2736) = &_swiftEmptySetSingleton;
    *(v0 + 2728) = &_swiftEmptyArrayStorage;
    v60 = *(v0 + 2664);
    v61 = *(v0 + 2440);
    v62 = *(v0 + 2264);
    v63 = *(v0 + 2256);
    v64 = swift_allocObject();
    *(v0 + 2744) = v64;
    *(v64 + 16) = 2;
    *(v64 + 24) = 0u;
    *(v64 + 40) = 0u;
    *(v64 + 56) = 1;
    *(v64 + 64) = 0u;
    *(v64 + 80) = 0u;
    *(v64 + 96) = 0u;
    *(v64 + 112) = 0u;
    *(v64 + 128) = 0;
    v65 = swift_task_alloc();
    *(v0 + 2752) = v65;
    v65[2] = v0 + 122;
    v65[3] = v62;
    v65[4] = v61;
    v65[5] = v63;
    v65[6] = v60;
    v65[7] = v64;
    v66 = swift_task_alloc();
    *(v0 + 2760) = v66;
    *v66 = v0;
    v66[1] = sub_10007D14C;
    v72 = &type metadata for () + 8;

    return withThrowingTaskGroup<A, B>(of:returning:isolation:body:)(v66, &type metadata for () + 8, &type metadata for () + 8, 0, 0, &unk_100093160, v65, &type metadata for () + 8);
  }

  else
  {
    v44 = *(v0 + 2416);
    v45 = *(v0 + 2400);
    v46 = *(v0 + 2392);
    v47 = *(v0 + 2384);
    v48 = *(v0 + 2376);
    v49 = *(v0 + 2264);
    v50 = *(v0 + 2256);
    sub_100088834(*(v0 + 2440), v44, type metadata accessor for SpamDecisioningAsset);
    sub_1000886EC(v50, v0 + 128);
    v51 = sub_100011724(&_swiftEmptyArrayStorage);
    v52 = (v44 + v45[5]);
    v53 = *(v50 + 90);
    v55 = v50[4];
    v54 = v50[5];
    v52[3] = v50[3];
    v52[4] = v55;
    v52[5] = v54;
    *(v52 + 90) = v53;
    v57 = v50[1];
    v56 = v50[2];
    *v52 = *v50;
    v52[1] = v57;
    v52[2] = v56;
    *(v44 + v45[6]) = v51;
    *(v44 + v45[7]) = 0;
    UUID.init()();
    *(v0 + 2688) = UUID.uuidString.getter();
    *(v0 + 2696) = v58;
    (*(v47 + 8))(v46, v48);
    v59 = *(v49 + OBJC_IVAR____TtC13frauddefensed22SpamDecisioningManager_signpostsManager);
    *(v0 + 2704) = v59;

    return _swift_task_switch(sub_10007B680, v59, 0);
  }
}

uint64_t sub_10007B680()
{
  sub_10006C4A8("filteringLogicGraph", 19, 2, *(v0 + 2688), *(v0 + 2696), 0);

  return _swift_task_switch(sub_10007B704, 0, 0);
}

uint64_t sub_10007B704()
{
  v1 = swift_task_alloc();
  *(v0 + 2712) = v1;
  *v1 = v0;
  v1[1] = sub_10007B7AC;
  v2 = *(v0 + 2416);

  return sub_100006178(v0 + 1528, v2);
}

uint64_t sub_10007B7AC()
{
  v2 = *v1;
  *(*v1 + 2720) = v0;

  if (v0)
  {
    *(v2 + 2696), v3, v4, v5, v6, v7, v8, v9;
    v10 = sub_100080D10;
    v11 = 0;
  }

  else
  {
    v11 = *(v2 + 2704);
    v10 = sub_10007B8D0;
  }

  return _swift_task_switch(v10, v11, 0);
}

uint64_t sub_10007B8D0()
{
  v1 = *(v0 + 2696);
  sub_10006C4A8("filteringLogicGraph", 19, 2, *(v0 + 2688), v1, 1);
  v1, v2, v3, v4, v5, v6, v7, v8;

  return _swift_task_switch(sub_10007B960, 0, 0);
}

uint64_t sub_10007B960()
{
  v405 = v0;
  v1 = v0;
  v2 = v0 + 1048;
  v3 = *(v0 + 1552);
  sub_1000775E8(0x6572656767697274, 0xEE0073656C755264, v3, v0 + 1128);
  if (*(v0 + 1152) == 1)
  {
    v4 = &qword_1000B6A28;
    v5 = &qword_10008F6D8;
    v6 = v0 + 1128;
LABEL_7:
    sub_10000BC10(v6, v4, v5);
    goto LABEL_8;
  }

  *(v0 + 1360) = *(v0 + 1160);
  v7 = *(v0 + 1144);
  *(v0 + 1328) = *(v0 + 1128);
  *(v0 + 1344) = v7;
  if (!*(v0 + 1352))
  {
    v4 = &qword_1000B6A00;
    v5 = &qword_10008F6B0;
    v6 = v0 + 1328;
    goto LABEL_7;
  }

  sub_100002074(&qword_1000B6A48, &unk_100093170);
  if (swift_dynamicCast())
  {
    v8 = *(v0 + 2232);
    goto LABEL_9;
  }

LABEL_8:
  v8 = &_swiftEmptySetSingleton;
LABEL_9:
  sub_1000775E8(0x45736973656D656ELL, 0xED000073726F7272, *(v1 + 1544), v2);
  v391 = v8;
  if (*(v1 + 1072) == 1)
  {
    v9 = &qword_1000B6A28;
    v10 = &qword_10008F6D8;
    v11 = v2;
LABEL_15:
    sub_10000BC10(v11, v9, v10);
    goto LABEL_16;
  }

  *(v1 + 1120) = *(v2 + 32);
  v12 = *(v2 + 16);
  *(v1 + 1088) = *v2;
  *(v1 + 1104) = v12;
  if (!*(v1 + 1112))
  {
    v9 = &qword_1000B6A00;
    v10 = &qword_10008F6B0;
    v11 = v1 + 1088;
    goto LABEL_15;
  }

  sub_100002074(&qword_1000B6A40, &unk_10008F6E0);
  if (swift_dynamicCast())
  {
    v20 = *(v1 + 2224);
    goto LABEL_17;
  }

LABEL_16:
  v20 = &_swiftEmptySetSingleton;
LABEL_17:
  v21 = sub_1000776E8(v20, v13, v14, v15, v16, v17, v18, v19);
  v29 = v21;
  v30 = *v21->endpoint;
  if (v30)
  {
    v389 = v3;
    v31 = *(v1 + 2344);
    v401 = &_swiftEmptyArrayStorage;
    sub_100049F4C(0, v30, 0);
    v32 = &_swiftEmptyArrayStorage;
    v33 = *(v31 + 16);
    v31 += 16;
    v394 = v33;
    v387 = v29;
    v34 = &v29->_TtCs12_SwiftObject_opaque[(*(v31 + 64) + 32) & ~*(v31 + 64)];
    v392 = *(v31 + 56);
    v35 = (v31 - 8);
    do
    {
      v36 = *(v1 + 2368);
      v37 = v1;
      v38 = *(v1 + 2336);
      v394(v36, v34, v38);
      v39 = NemesisError.metric.getter();
      v41 = v40;
      (*v35)(v36, v38);
      v401 = v32;
      v50 = *v32->endpoint;
      v49 = *v32->connection;
      if (v50 >= v49 >> 1)
      {
        sub_100049F4C((v49 > 1), v50 + 1, 1);
        v32 = v401;
      }

      *v32->endpoint = v50 + 1;
      v51 = v32 + 16 * v50;
      *(v51 + 4) = v39;
      *(v51 + 5) = v41;
      v34 += v392;
      --v30;
      v1 = v37;
    }

    while (v30);
    v398 = v32;
    v387, v42, v43, v44, v45, v46, v47, v48;
    v3 = v389;
  }

  else
  {
    v21, v22, v23, v24, v25, v26, v27, v28;
    v398 = &_swiftEmptyArrayStorage;
  }

  *(v1 + 2240) = *(v1 + 1528);
  v52 = sub_100002074(&qword_1000B6A20, &qword_10008F6D0);
  v403 = v52;
  v401 = v3;

  sub_100011DFC(v1 + 2240, v1 + 2168, &qword_1000B6A20, &qword_10008F6D0);
  sub_100056920(&v401, 0xD000000000000019, 0x800000010009A900);
  v53 = *(v1 + 2240);
  v403 = v52;
  v401 = v53;
  sub_100056920(&v401, 0xD000000000000010, 0x800000010009A6C0);
  sub_100088724(v1 + 1528);
  if (*(v1 + 1536) > 1u)
  {
    if (*(v1 + 1536) != 2)
    {
      v253 = v1;
      v254 = *(v1 + 2672);
      v255 = *(v253 + 2568);
      v256 = *(v253 + 2488);
      v257 = *(v253 + 2440);
      v258 = *(v253 + 1560);
      v259 = *(v253 + 1561);
      v260 = *(v253 + 1562);
      *(v253 + 122) = v258;
      v397 = v259;
      *(v253 + 123) = v259;
      *(v253 + 124) = v260;
      sub_100002074(&qword_1000B6CC8, &unk_10008F950);
      v261 = swift_allocObject();
      *(v261 + 16) = xmmword_10008F850;
      *(v261 + 32) = 1701869940;
      *(v261 + 40) = 0xE400000000000000;
      *(v261 + 48) = String._bridgeToObjectiveC()();
      *(v261 + 56) = 0xD000000000000010;
      *(v261 + 64) = 0x800000010009A7D0;
      sub_100011DFC(v257, v256, &qword_1000B6CB8, &unk_10008F9F0);
      v262 = v254(v256, 1, v255);
      v154 = v253;
      LOBYTE(v255) = v262 != 1;
      *(v253 + 126) = v258;
      sub_100011CC4();
      sub_10000BC10(v256, &qword_1000B6CB8, &unk_10008F9F0);
      *(v261 + 72) = NSNumber.init(BOOLeanLiteral:)(v255);
      v263 = sub_100011A78(v261);
      swift_setDeallocating();
      sub_100002074(&qword_1000B6CD0, &qword_100092B90);
      swift_arrayDestroy();
      swift_deallocClassInstance();
      if ((*(v253 + 126) & 1) == 0)
      {
        isa = NSNumber.init(BOOLeanLiteral:)(1).super.super.isa;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v401 = v263;
        sub_10005B524(isa, 0xD000000000000013, 0x800000010009A920, isUniquelyReferenced_nonNull_native);
        v263 = v401;
      }

      if ((v397 & 1) == 0)
      {
        v266 = NSNumber.init(BOOLeanLiteral:)(1).super.super.isa;
        v267 = swift_isUniquelyReferenced_nonNull_native();
        v401 = v263;
        sub_10005B524(v266, 0xD000000000000016, 0x800000010009A940, v267);
        v263 = v401;
      }

      v268 = v391;
      v269 = *(v253 + 2416);
      v270 = sub_100056EF0(2u, v263, 0, 0);
      v263, v271, v272, v273, v274, v275, v276, v277;
      v270, v278, v279, v280, v281, v282, v283, v284;
      sub_10008956C(v269, type metadata accessor for LogicGraphDecisioningComponent.LogicGraphInput);
      goto LABEL_55;
    }

    v390 = 2;
    v61 = 0xE400000000000000;
    v388 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v77 = 0xE400000000000000;
  }

  else
  {
    v390 = *(v1 + 1536);
    if (!*(v1 + 1536))
    {
      v61 = 0xE400000000000000;
      0xE400000000000000, v54, v55, v56, v57, v58, v59, v60;
      v388 = 1;
      v69 = 1;
      goto LABEL_31;
    }

    v61 = 0xE700000000000000;
    v388 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v77 = 0xE700000000000000;
  }

  v77, v70, v71, v72, v73, v74, v75, v76;
  v69 = _stringCompareWithSmolCheck(_:_:expecting:)();
LABEL_31:
  v384 = v52;
  v78 = *(v1 + 2664);
  v79 = *(v1 + 2328);
  v80 = *(v1 + 2312);
  v81 = *(v1 + 2296);
  v82 = *(v1 + 2288);
  v61, v62, v63, v64, v65, v66, v67, v68;
  v403 = &type metadata for Bool;
  LOBYTE(v401) = v69 & 1;
  sub_100056920(&v401, 0xD00000000000001BLL, 0x800000010009A960);
  v395 = *(v78 + 16);

  static Locale.current.getter();
  Locale.region.getter();
  (*(v81 + 8))(v80, v82);
  v83 = type metadata accessor for Locale.Region();
  v84 = *(v83 - 8);
  v85 = (*(v84 + 48))(v79, 1, v83);
  v86 = *(v1 + 2328);
  if (v85 == 1)
  {
    sub_10000BC10(*(v1 + 2328), &qword_1000B6A68, &qword_10008F6F0);
    v87 = 0xE700000000000000;
    v88 = 0x6E776F6E6B6E75;
  }

  else
  {
    v88 = Locale.Region.identifier.getter();
    v87 = v89;
    (*(v84 + 8))(v86, v83);
  }

  v90 = *(v1 + 2440);
  v91 = *(v90 + *(*(v1 + 2424) + 36));
  v393 = v87;
  if (v91)
  {
    v91 = sub_100072918(v88, v87);
    v93 = v92;
    v90 = *(v1 + 2440);
  }

  else
  {
    v93 = 0;
  }

  v94 = v1 + 560;
  v95 = *(v1 + 2672);
  v96 = *(v1 + 2568);
  v97 = v1;
  v98 = *(v1 + 2504);
  sub_100011DFC(v90, v98, &qword_1000B6CB8, &unk_10008F9F0);
  if (v95(v98, 1, v96) == 1)
  {
    sub_10000BC10(*(v97 + 2504), &qword_1000B6CB8, &unk_10008F9F0);
    v99 = 0;
    v100 = 0;
  }

  else
  {
    v101 = *(v97 + 2504);
    v102 = (v101 + *(*(v97 + 2568) + 24));
    v99 = *v102;
    v100 = v102[1];

    sub_10008956C(v101, type metadata accessor for UAFAssetManager.AssetInfo);
  }

  v103 = *(v97 + 2720);

  v112 = sub_100077658(v104, v105, v106, v107, v108, v109, v110, v111);
  *v94 = 0;
  *(v94 + 8) = 0;
  *(v97 + 576) = v99;
  *(v97 + 584) = v100;
  *(v97 + 592) = v91;
  *(v97 + 600) = v93;
  *(v97 + 608) = &_swiftEmptyArrayStorage;
  *(v97 + 616) = &_swiftEmptyArrayStorage;
  *(v97 + 624) = v112;
  *(v97 + 632) = v398;
  *(v97 + 640) = v88;
  *(v97 + 648) = v393;
  v113 = *(v94 + 80);
  *(v97 + 528) = *(v94 + 64);
  *(v97 + 544) = v113;
  v114 = *(v94 + 48);
  *(v97 + 496) = *(v94 + 32);
  *(v97 + 512) = v114;
  v115 = *(v94 + 16);
  *(v97 + 464) = *v94;
  *(v97 + 480) = v115;

  sub_100057550(v97 + 464);
  if (v103)
  {
    sub_10008956C(*(v97 + 2416), type metadata accessor for LogicGraphDecisioningComponent.LogicGraphInput);
    sub_100088778(v94);
    v395, v123, v124, v125, v126, v127, v128, v129;
    v386 = *(v97 + 2672);
    v130 = *(v97 + 2456);
    v382 = *(v97 + 2440);
    v385 = *(v97 + 2568);
    v396 = *(v97 + 2344);
    v131 = static os_log_type_t.error.getter();
    v401 = 0;
    v402 = 0xE000000000000000;
    _StringGuts.grow(_:)(53);
    v132._countAndFlagsBits = 0xD000000000000031;
    v132._object = 0x800000010009A8C0;
    String.append(_:)(v132);
    swift_getErrorValue();
    v133._countAndFlagsBits = Error.localizedDescription.getter();
    object = v133._object;
    String.append(_:)(v133);
    object, v135, v136, v137, v138, v139, v140, v141;
    v142._countAndFlagsBits = 32032;
    v142._object = 0xE200000000000000;
    String.append(_:)(v142);
    v143 = v402;
    sub_10005E11C(v131, v401, v402, 0xD00000000000005BLL, 0x8000000100095700, 255);
    v143, v144, v145, v146, v147, v148, v149, v150;
    sub_100002074(&qword_1000B6CC8, &unk_10008F950);
    v151 = swift_allocObject();
    *(v151 + 16) = xmmword_10008F850;
    *(v151 + 32) = 1701869940;
    *(v151 + 40) = 0xE400000000000000;
    *(v151 + 48) = String._bridgeToObjectiveC()();
    *(v151 + 56) = 0xD000000000000010;
    *(v151 + 64) = 0x800000010009A7D0;
    sub_100011DFC(v382, v130, &qword_1000B6CB8, &unk_10008F9F0);
    v152 = v386(v130, 1, v385) != 1;
    sub_100011CC4();
    sub_10000BC10(v130, &qword_1000B6CB8, &unk_10008F9F0);
    *(v151 + 72) = NSNumber.init(BOOLeanLiteral:)(v152);
    v153 = sub_100011A78(v151);
    swift_setDeallocating();
    sub_100002074(&qword_1000B6CD0, &qword_100092B90);
    swift_arrayDestroy();
    v154 = v97;
    swift_deallocClassInstance();
    *(v97 + 2136) = v103;
    swift_errorRetain();
    sub_100002074(&qword_1000B6CC0, &qword_100091740);
    v155 = swift_dynamicCast();
    v156 = *(v396 + 56);
    if (v155)
    {
      v157 = *(v97 + 2360);
      v158 = *(v97 + 2344);
      v159 = *(v97 + 2336);
      v160 = *(v97 + 2280);
      v156(v160, 0, 1, v159);
      (*(v158 + 32))(v157, v160, v159);
      v161 = NemesisError.metric.getter();
      v163 = v162;
      v164 = sub_100056EF0(2u, v153, v161, v162);
      v163, v165, v166, v167, v168, v169, v170, v171;
      v153, v172, v173, v174, v175, v176, v177, v178;
      v164, v179, v180, v181, v182, v183, v184, v185;

      (*(v158 + 8))(v157, v159);
    }

    else
    {
      v285 = *(v97 + 2280);
      v156(v285, 1, 1, *(v97 + 2336));
      sub_10000BC10(v285, &qword_1000B9060, &qword_100093150);
      v401 = 0;
      v402 = 0xE000000000000000;
      _StringGuts.grow(_:)(53);
      v286._countAndFlagsBits = 0xD000000000000031;
      v286._object = 0x800000010009A8C0;
      String.append(_:)(v286);
      swift_getErrorValue();
      v287._countAndFlagsBits = Error.localizedDescription.getter();
      v288 = v287._object;
      String.append(_:)(v287);
      v288, v289, v290, v291, v292, v293, v294, v295;
      v296._countAndFlagsBits = 32032;
      v296._object = 0xE200000000000000;
      String.append(_:)(v296);
      v402, v297, v298, v299, v300, v301, v302, v303;
      v304 = sub_100056EF0(2u, v153, 0x6F6974617265706FLL, 0xEF64656C6961466ELL);

      v153, v305, v306, v307, v308, v309, v310, v311;
      v304, v312, v313, v314, v315, v316, v317, v318;
    }

    v268 = v391;
LABEL_55:
    v154[342] = v268;
    v154[341] = v398;
    v319 = v154[333];
    v320 = v154[305];
    v321 = v154[283];
    v322 = v154[282];
    v323 = swift_allocObject();
    v154[343] = v323;
    *(v323 + 16) = 2;
    *(v323 + 24) = 0u;
    *(v323 + 40) = 0u;
    *(v323 + 56) = 1;
    *(v323 + 64) = 0u;
    *(v323 + 80) = 0u;
    *(v323 + 96) = 0u;
    *(v323 + 112) = 0u;
    *(v323 + 128) = 0;
    v324 = swift_task_alloc();
    v154[344] = v324;
    v324[2] = v154 + 122;
    v324[3] = v321;
    v324[4] = v320;
    v324[5] = v322;
    v324[6] = v319;
    v324[7] = v323;
    v325 = swift_task_alloc();
    v154[345] = v325;
    *v325 = v154;
    v325[1] = sub_10007D14C;
    v407 = &type metadata for () + 8;

    return withThrowingTaskGroup<A, B>(of:returning:isolation:body:)(v325, &type metadata for () + 8, &type metadata for () + 8, 0, 0, &unk_100093160, v324, &type metadata for () + 8);
  }

  v381 = *(v97 + 2672);
  v186 = *(v97 + 2568);
  v187 = *(v97 + 2496);
  v188 = *(v97 + 2440);
  v383 = *(v97 + 2256);
  v398, v116, v117, v118, v119, v120, v121, v122;
  v391, v189, v190, v191, v192, v193, v194, v195;
  sub_100088778(v94);
  sub_100002074(&qword_1000B6CC8, &unk_10008F950);
  v196 = swift_allocObject();
  *(v196 + 16) = xmmword_100091120;
  *(v196 + 32) = 1701869940;
  *(v196 + 40) = 0xE400000000000000;
  *(v196 + 48) = String._bridgeToObjectiveC()();
  *(v196 + 56) = 1835102323;
  *(v196 + 64) = 0xE400000000000000;
  sub_100011CC4();
  *(v196 + 72) = NSNumber.init(BOOLeanLiteral:)(v388 & 1);
  *(v196 + 80) = 0xD000000000000010;
  *(v196 + 88) = 0x800000010009A7D0;
  sub_100011DFC(v188, v187, &qword_1000B6CB8, &unk_10008F9F0);
  LOBYTE(v186) = v381(v187, 1, v186) != 1;
  sub_10000BC10(v187, &qword_1000B6CB8, &unk_10008F9F0);
  *(v196 + 96) = NSNumber.init(BOOLeanLiteral:)(v186);
  v197 = sub_100011A78(v196);
  swift_setDeallocating();
  sub_100002074(&qword_1000B6CD0, &qword_100092B90);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v198 = sub_100056EF0(2u, v197, 0, 0);
  v197, v199, v200, v201, v202, v203, v204, v205;
  v198, v206, v207, v208, v209, v210, v211, v212;
  v213 = v383[1];
  if (v213 && (*v383 == 0xD000000000000014 && v213 == 0x80000001000947E0 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {
    v214 = v97;
    v399 = *(v97 + 2416);
    v215 = static os_log_type_t.default.getter();
    v401 = 0;
    v402 = 0xE000000000000000;
    _StringGuts.grow(_:)(54);
    v216._countAndFlagsBits = 0xD000000000000021;
    v216._object = 0x800000010009A6E0;
    String.append(_:)(v216);

    v217 = sub_1000878A8(v390, v395);
    v219 = v218;
    v395, v218, v220, v221, v222, v223, v224, v225;
    v226._countAndFlagsBits = v217;
    v226._object = v219;
    String.append(_:)(v226);
    v219, v227, v228, v229, v230, v231, v232, v233;
    v234._countAndFlagsBits = 0x75706E69202C7D20;
    v234._object = 0xED0000207B203D74;
    String.append(_:)(v234);
    v235._countAndFlagsBits = sub_100086FE0();
    v236 = v235._object;
    String.append(_:)(v235);
    v236, v237, v238, v239, v240, v241, v242, v243;
    v244._countAndFlagsBits = 2099281184;
    v244._object = 0xE400000000000000;
    String.append(_:)(v244);
    v245 = v402;
    sub_10005E11C(v215, v401, v402, 0xD00000000000005BLL, 0x8000000100095700, 219);
    v245, v246, v247, v248, v249, v250, v251, v252;
    sub_10008956C(v399, type metadata accessor for LogicGraphDecisioningComponent.LogicGraphInput);
  }

  else
  {

    v214 = v97;
    sub_100077584(0xD000000000000010, 0x800000010009A6C0, v395, (v97 + 1664));
    if (*(v97 + 1688))
    {
      v326 = v395;
      if (swift_dynamicCast())
      {
        v404 = *(v97 + 2184);
        sub_100056080(0x6567617373656DLL, 0xE700000000000000, v97 + 1008);
        sub_10000BC10(v97 + 1008, &qword_1000B6A28, &qword_10008F6D8);
        sub_100056080(0x6465746365746564, 0xED0000696A6F6D45, v97 + 968);
        sub_10000BC10(v97 + 968, &qword_1000B6A28, &qword_10008F6D8);
        sub_100056080(0x6465746365746564, 0xEC000000736C7255, v97 + 928);
        sub_10000BC10(v97 + 928, &qword_1000B6A28, &qword_10008F6D8);
        sub_100056080(0xD000000000000013, 0x8000000100094310, v97 + 888);
        sub_10000BC10(v97 + 888, &qword_1000B6A28, &qword_10008F6D8);
        v327 = v404;
        *(v97 + 1656) = v384;
        *(v97 + 1632) = v327;
        sub_100011DEC((v97 + 1632), (v97 + 1600));
        v328 = swift_isUniquelyReferenced_nonNull_native();
        v401 = v395;
        sub_10005B69C((v97 + 1600), 0xD000000000000010, 0x800000010009A6C0, v328);
        v326 = v401;
      }
    }

    else
    {
      sub_10000BC10(v97 + 1664, &qword_1000B7748, &unk_1000912F8);
      v326 = v395;
    }

    v400 = static os_log_type_t.default.getter();
    v401 = 0;
    v402 = 0xE000000000000000;
    _StringGuts.grow(_:)(76);
    v329._countAndFlagsBits = 0xD000000000000021;
    v329._object = 0x800000010009A6E0;
    String.append(_:)(v329);
    v330 = 0xE700000000000000;
    v331 = 0x6D617053746F6ELL;
    if (v390 != 1)
    {
      v331 = 1852989815;
      v330 = 0xE400000000000000;
    }

    if (v390)
    {
      v332 = v331;
    }

    else
    {
      v332 = 1835102323;
    }

    if (v390)
    {
      v333 = v330;
    }

    else
    {
      v333 = 0xE400000000000000;
    }

    v334 = *(v97 + 2416);
    v335 = v333;
    String.append(_:)(*&v332);
    v333, v336, v337, v338, v339, v340, v341, v342;
    v343._countAndFlagsBits = 0x75706E69202C7D20;
    v343._object = 0xED0000207B203D74;
    String.append(_:)(v343);
    v344._countAndFlagsBits = sub_100086FE0();
    v345 = v344._object;
    String.append(_:)(v344);
    v345, v346, v347, v348, v349, v350, v351, v352;
    v353._countAndFlagsBits = 0xD000000000000014;
    v353._object = 0x800000010009A710;
    String.append(_:)(v353);
    v354._countAndFlagsBits = Dictionary.description.getter();
    v355 = v354._object;
    String.append(_:)(v354);
    v355, v356, v357, v358, v359, v360, v361, v362;
    v363._countAndFlagsBits = 2099281184;
    v363._object = 0xE400000000000000;
    String.append(_:)(v363);
    v364 = v402;
    sub_10005E11C(v400, v401, v402, 0xD00000000000005BLL, 0x8000000100095700, 231);
    v364, v365, v366, v367, v368, v369, v370, v371;
    sub_10008956C(v334, type metadata accessor for LogicGraphDecisioningComponent.LogicGraphInput);
    v326, v372, v373, v374, v375, v376, v377, v378;
  }

  sub_10008956C(*(v214 + 2440), type metadata accessor for SpamDecisioningAsset);

  v379 = *(v214 + 8);

  return v379(v390, v395);
}

uint64_t sub_10007D14C()
{
  v2 = *v1;
  *(*v1 + 2768) = v0;

  if (v0)
  {
    v10 = *(v2 + 2736);
    *(v2 + 2728), v3, v4, v5, v6, v7, v8, v9;
    v10, v11, v12, v13, v14, v15, v16, v17;

    v18 = sub_1000812FC;
  }

  else
  {

    v18 = sub_10007D2A0;
  }

  return _swift_task_switch(v18, 0, 0);
}

uint64_t sub_10007D2A0(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v139 = v8;
  if (*(v8 + 124) == 1)
  {
    v9 = *(v8 + 2744);
    swift_beginAccess();
    v10 = v9[7];
    if (v10 >= 2 && (*(*(v8 + 2744) + 24) & 1) != 0)
    {
      v11 = v9[9];
      if (v11)
      {
        *(v8 + 2104) = v9[8];
        *(v8 + 2112) = v11;
      }

      else
      {
        *(v8 + 2088) = v9[6];
        *(v8 + 2096) = v10;
      }
    }

    else
    {
      *(v8 + 2072) = 0;
      *(v8 + 2080) = 0xE000000000000000;
    }

    AnyHashable.init<A>(_:)();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v138 = &_swiftEmptyDictionarySingleton;
    sub_10005B20C(v137, 0xD000000000000019, 0x800000010009A730, isUniquelyReferenced_nonNull_native);
    v29 = v138;
    v30 = *(*(v8 + 2744) + 16);
    if (v30 == 2)
    {
      *(v8 + 127) = 0;
    }

    else
    {
      *(v8 + 125) = v30 & 1;
    }

    AnyHashable.init<A>(_:)();
    v31 = swift_isUniquelyReferenced_nonNull_native();
    v138 = v29;
    sub_10005B20C(v137, 0xD000000000000014, 0x800000010009A750, v31);
    v32 = v138;
    *(v8 + 2776) = v138;
    v33 = *(v8 + 2440);
    v34 = *(v8 + 2408);
    v35 = *(v8 + 2400);
    v36 = *(v8 + 2392);
    v37 = *(v8 + 2384);
    v38 = *(v8 + 2376);
    v39 = *(v8 + 2264);
    v40 = *(v8 + 2256);

    sub_100088834(v33, v34, type metadata accessor for SpamDecisioningAsset);
    v41 = (v34 + v35[5]);
    v42 = *(v40 + 90);
    v44 = v40[4];
    v43 = v40[5];
    v41[3] = v40[3];
    v41[4] = v44;
    v41[5] = v43;
    *(v41 + 90) = v42;
    v46 = v40[1];
    v45 = v40[2];
    *v41 = *v40;
    v41[1] = v46;
    v41[2] = v45;
    *(v34 + v35[6]) = v32;
    *(v34 + v35[7]) = 1;
    sub_1000886EC(v40, v8 + 16);
    UUID.init()();
    *(v8 + 2784) = UUID.uuidString.getter();
    *(v8 + 2792) = v47;
    (*(v37 + 8))(v36, v38);
    v48 = *(v39 + OBJC_IVAR____TtC13frauddefensed22SpamDecisioningManager_signpostsManager);
    *(v8 + 2800) = v48;

    return _swift_task_switch(sub_10007DF50, v48, 0);
  }

  v12 = *(v8 + 2736);
  *(v8 + 2728), a2, a3, a4, a5, a6, a7, a8;
  v12, v13, v14, v15, v16, v17, v18, v19;
  v20 = *(v8 + 2744);
  swift_beginAccess();
  v21 = *(v20 + 16);
  if (v21 == 2)
  {
    v22 = *(v8 + 2744);
    if (*(v22 + 56) < 2uLL)
    {
      v23 = *(v8 + 2440);
      v24 = static os_log_type_t.error.getter();
      sub_10005E11C(v24, 0xD000000000000027, 0x800000010009A690, 0xD00000000000005BLL, 0x8000000100095700, 512);
      sub_10000B6B0();
      swift_allocError();
      *v25 = 0xD000000000000027;
      *(v25 + 8) = 0x800000010009A690;
      *(v25 + 16) = 2;
      swift_willThrow();

      sub_10008956C(v23, type metadata accessor for SpamDecisioningAsset);

      v26 = *(v8 + 8);

      return v26();
    }

    v21 = *(v22 + 24);
  }

  v49 = *(v8 + 2664);
  v50 = *(v8 + 2256);
  swift_beginAccess();
  v51 = *(v49 + 16);
  v52 = v50[1];
  v136 = v51;
  v135 = v21;
  if (v52 && (*v50 == 0xD000000000000014 && v52 == 0x80000001000947E0 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {

    v53 = static os_log_type_t.default.getter();
    *&v137[0] = 0;
    *(&v137[0] + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(54);
    v54._countAndFlagsBits = 0xD000000000000021;
    v54._object = 0x800000010009A6E0;
    String.append(_:)(v54);

    v55 = sub_1000878A8((v21 & 1) == 0, v51);
    v57 = v56;
    v51, v56, v58, v59, v60, v61, v62, v63;
    v64._countAndFlagsBits = v55;
    v64._object = v57;
    String.append(_:)(v64);
    v57, v65, v66, v67, v68, v69, v70, v71;
    v72._countAndFlagsBits = 0x75706E69202C7D20;
    v72._object = 0xED0000207B203D74;
    String.append(_:)(v72);
    v73._countAndFlagsBits = sub_100086FE0();
    object = v73._object;
    String.append(_:)(v73);
    object, v75, v76, v77, v78, v79, v80, v81;
    v82._countAndFlagsBits = 2099281184;
    v82._object = 0xE400000000000000;
    String.append(_:)(v82);
    v83 = 0xE000000000000000;
    sub_10005E11C(v53, 0, 0xE000000000000000, 0xD00000000000005BLL, 0x8000000100095700, 521);
  }

  else
  {
    swift_bridgeObjectRetain_n();
    sub_100077584(0xD000000000000010, 0x800000010009A6C0, v51, (v8 + 1696));
    if (*(v8 + 1720))
    {
      v91 = sub_100002074(&qword_1000B6A20, &qword_10008F6D0);
      v83 = v51;
      if (swift_dynamicCast())
      {
        v138 = *(v8 + 2152);
        sub_100056080(0x6567617373656DLL, 0xE700000000000000, v8 + 1168);
        sub_10000BC10(v8 + 1168, &qword_1000B6A28, &qword_10008F6D8);
        sub_100056080(0x6465746365746564, 0xED0000696A6F6D45, v8 + 1208);
        sub_10000BC10(v8 + 1208, &qword_1000B6A28, &qword_10008F6D8);
        sub_100056080(0x6465746365746564, 0xEC000000736C7255, v8 + 1248);
        sub_10000BC10(v8 + 1248, &qword_1000B6A28, &qword_10008F6D8);
        sub_100056080(0xD000000000000013, 0x8000000100094310, v8 + 1288);
        sub_10000BC10(v8 + 1288, &qword_1000B6A28, &qword_10008F6D8);
        v92 = v138;
        *(v8 + 1752) = v91;
        *(v8 + 1728) = v92;
        sub_100011DEC((v8 + 1728), (v8 + 1568));
        v93 = swift_isUniquelyReferenced_nonNull_native();
        *&v137[0] = v51;
        sub_10005B69C((v8 + 1568), 0xD000000000000010, 0x800000010009A6C0, v93);
        v83 = v51;
      }
    }

    else
    {
      sub_10000BC10(v8 + 1696, &qword_1000B7748, &unk_1000912F8);
      v83 = v51;
    }

    v94 = static os_log_type_t.default.getter();
    *&v137[0] = 0;
    *(&v137[0] + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(76);
    v95._countAndFlagsBits = 0xD000000000000021;
    v95._object = 0x800000010009A6E0;
    String.append(_:)(v95);
    if (v21)
    {
      v96 = 1835102323;
    }

    else
    {
      v96 = 0x6D617053746F6ELL;
    }

    if (v21)
    {
      v97 = 0xE400000000000000;
    }

    else
    {
      v97 = 0xE700000000000000;
    }

    v98 = v97;
    String.append(_:)(*&v96);
    v97, v99, v100, v101, v102, v103, v104, v105;
    v106._countAndFlagsBits = 0x75706E69202C7D20;
    v106._object = 0xED0000207B203D74;
    String.append(_:)(v106);
    v107._countAndFlagsBits = sub_100086FE0();
    v108 = v107._object;
    String.append(_:)(v107);
    v108, v109, v110, v111, v112, v113, v114, v115;
    v116._object = 0x800000010009A710;
    v116._countAndFlagsBits = 0xD000000000000014;
    String.append(_:)(v116);
    v117._countAndFlagsBits = Dictionary.description.getter();
    v118 = v117._object;
    String.append(_:)(v117);
    v118, v119, v120, v121, v122, v123, v124, v125;
    v126._countAndFlagsBits = 2099281184;
    v126._object = 0xE400000000000000;
    String.append(_:)(v126);
    sub_10005E11C(v94, *&v137[0], *(&v137[0] + 1), 0xD00000000000005BLL, 0x8000000100095700, 533);
    *(&v137[0] + 1), v127, v128, v129, v130, v131, v132, v133;
  }

  v83, v84, v85, v86, v87, v88, v89, v90;

  sub_10008956C(*(v8 + 2440), type metadata accessor for SpamDecisioningAsset);

  v134 = *(v8 + 8);

  return v134((v135 & 1) == 0, v136);
}

uint64_t sub_10007DF50()
{
  sub_10006C4A8("decisioningLogicGraph", 21, 2, *(v0 + 2784), *(v0 + 2792), 0);

  return _swift_task_switch(sub_10007DFD4, 0, 0);
}

uint64_t sub_10007DFD4()
{
  v1 = swift_task_alloc();
  *(v0 + 2808) = v1;
  *v1 = v0;
  v1[1] = sub_10007E07C;
  v2 = *(v0 + 2408);

  return sub_100006178(v0 + 1488, v2);
}

uint64_t sub_10007E07C()
{
  v2 = *v1;
  *(*v1 + 2816) = v0;

  if (v0)
  {
    v10 = v2[349];
    v11 = v2[347];
    v12 = v2[342];
    v13 = v2[341];
    v11, v3, v4, v5, v6, v7, v8, v9;
    v13, v14, v15, v16, v17, v18, v19, v20;
    v12, v21, v22, v23, v24, v25, v26, v27;
    v10, v28, v29, v30, v31, v32, v33, v34;
    v35 = sub_100081540;
    v36 = 0;
  }

  else
  {
    v36 = v2[350];
    v35 = sub_10007E1CC;
  }

  return _swift_task_switch(v35, v36, 0);
}

uint64_t sub_10007E1CC()
{
  v1 = *(v0 + 2792);
  sub_10006C4A8("decisioningLogicGraph", 21, 2, *(v0 + 2784), v1, 1);
  v1, v2, v3, v4, v5, v6, v7, v8;

  return _swift_task_switch(sub_10007E25C, 0, 0);
}

uint64_t sub_10007E25C(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v443 = v8;
  v9 = v8;
  v438 = v8;
  if (*(v8 + 1496) <= 1u)
  {
    if (!*(v8 + 1496))
    {
      v10 = 1;
      v11 = 0xE400000000000000;
      goto LABEL_8;
    }

    v11 = 0xE700000000000000;
LABEL_7:
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
LABEL_8:
    v12 = *(v8 + 2744);
    v11, a2, a3, a4, a5, a6, a7, a8;
    *(v8 + 2248) = *(v8 + 1488);
    v13 = *(v8 + 1512);
    v442 = &type metadata for Bool;
    v432 = v10;
    LOBYTE(v440) = v10 & 1;
    swift_beginAccess();
    sub_100011DFC(v8 + 2248, v8 + 2120, &qword_1000B6A20, &qword_10008F6D0);

    sub_100056920(&v440, 0xD000000000000012, 0x800000010009A830);
    v14 = sub_100002074(&qword_1000B6A20, &qword_10008F6D0);
    v15 = *(v8 + 2248);
    v442 = v14;
    v440 = v15;
    sub_100056920(&v440, 0xD000000000000010, 0x800000010009A6C0);
    v442 = v14;
    v440 = v13;

    sub_100056920(&v440, 0xD00000000000001BLL, 0x800000010009A850);
    swift_endAccess();
    v16 = *(v12 + 24);
    v17 = *(v12 + 56);
    *(v8 + 368) = *(v12 + 40);
    *(v8 + 384) = v17;
    *(v8 + 352) = v16;
    v18 = *(v12 + 72);
    v19 = *(v12 + 88);
    v20 = *(v12 + 104);
    *(v8 + 441) = *(v12 + 113);
    *(v8 + 416) = v19;
    *(v8 + 432) = v20;
    *(v8 + 400) = v18;
    if (*(v8 + 384) == 1)
    {
      v21 = *(v8 + 2776);
      v22 = *(v8 + 2736);
      v51 = *(v8 + 2728);
      sub_10008956C(*(v8 + 2408), type metadata accessor for LogicGraphDecisioningComponent.LogicGraphInput);
      v51, v23, v24, v25, v26, v27, v28, v29;
      sub_100088724(v8 + 1488);
      v13, v30, v31, v32, v33, v34, v35, v36;
      v22, v37, v38, v39, v40, v41, v42, v43;
      v21, v44, v45, v46, v47, v48, v49, v50;
      LOBYTE(v51) = v432;
      goto LABEL_60;
    }

    v52 = v8 + 352;
    v426 = *(v8 + 384);
    v53 = (v8 + 1368);
    v54 = (v8 + 1448);
    v55 = *(v8 + 352);
    v56 = *(v9 + 376);
    v417 = *(v9 + 368);
    v418 = *(v9 + 360);
    v57 = *(v9 + 400);
    v430 = *(v9 + 392);
    sub_100011DFC(v9 + 352, v9 + 240, &qword_1000B9068, &qword_100093168);
    sub_1000775E8(0x6572656767697274, 0xEE0073656C755264, v13, v9 + 1448);
    v13, v58, v59, v60, v61, v62, v63, v64;
    v419 = v56;
    if (*(v9 + 1472) == 1)
    {
      v65 = &qword_1000B6A28;
      v66 = &qword_10008F6D8;
      v67 = v9 + 1448;
    }

    else
    {
      *(v9 + 880) = *(v9 + 1480);
      v144 = *(v9 + 1464);
      *(v9 + 848) = *v54;
      *(v9 + 864) = v144;
      if (*(v9 + 872))
      {
        sub_100002074(&qword_1000B6A48, &unk_100093170);
        if (swift_dynamicCast())
        {
          v145 = *(v9 + 2176);
          goto LABEL_28;
        }

LABEL_27:
        v145 = &_swiftEmptySetSingleton;
LABEL_28:
        sub_1000775E8(0x45736973656D656ELL, 0xED000073726F7272, *(v9 + 1504), v9 + 1368);
        sub_100088724(v9 + 1488);
        if (*(v9 + 1392) == 1)
        {
          v187 = &qword_1000B6A28;
          v188 = &qword_10008F6D8;
          v189 = v9 + 1368;
        }

        else
        {
          *(v9 + 1440) = *(v9 + 1400);
          v190 = *(v9 + 1384);
          *(v9 + 1408) = *v53;
          *(v9 + 1424) = v190;
          if (*(v9 + 1432))
          {
            sub_100002074(&qword_1000B6A40, &unk_10008F6E0);
            if (swift_dynamicCast())
            {
              v198 = *(v9 + 2192);
              goto LABEL_36;
            }

LABEL_35:
            v198 = &_swiftEmptySetSingleton;
LABEL_36:
            v199 = sub_1000776E8(v198, v191, v192, v193, v194, v195, v196, v197);
            v207 = v199;
            v208 = *v199->endpoint;
            if (v208)
            {
              v421 = v9 + 352;
              v422 = v145;
              v424 = v57;
              v209 = *(v9 + 2344);
              v440 = &_swiftEmptyArrayStorage;
              sub_100049F4C(0, v208, 0);
              v210 = v440;
              v211 = *(v209 + 16);
              v209 += 16;
              v437 = v211;
              v420 = v207;
              v212 = &v207->_TtCs12_SwiftObject_opaque[(*(v209 + 64) + 32) & ~*(v209 + 64)];
              v434 = *(v209 + 56);
              v213 = (v209 - 8);
              do
              {
                v214 = *(v9 + 2368);
                v215 = *(v9 + 2336);
                v437(v214, v212, v215);
                v216 = NemesisError.metric.getter();
                v218 = v217;
                (*v213)(v214, v215);
                v440 = v210;
                v227 = *v210->endpoint;
                v226 = *v210->connection;
                if (v227 >= v226 >> 1)
                {
                  sub_100049F4C((v226 > 1), v227 + 1, 1);
                  v210 = v440;
                }

                *v210->endpoint = v227 + 1;
                v228 = v210 + 16 * v227;
                *(v228 + 4) = v216;
                *(v228 + 5) = v218;
                v212 += v434;
                --v208;
                v9 = v438;
              }

              while (v208);
              v229 = *(v438 + 2776);
              v420, v219, v220, v221, v222, v223, v224, v225;
              v229, v230, v231, v232, v233, v234, v235, v236;
              v145 = v422;
              v57 = v424;
              v52 = v421;
              v237 = v426;
              if (!v426)
              {
                goto LABEL_47;
              }
            }

            else
            {
              v238 = *(v9 + 2776);
              v199, v200, v201, v202, v203, v204, v205, v206;
              v238, v239, v240, v241, v242, v243, v244, v245;
              v210 = &_swiftEmptyArrayStorage;
              v237 = v426;
              if (!v426)
              {
                goto LABEL_47;
              }
            }

            if (v55)
            {

              sub_10000BC10(v52, &qword_1000B9068, &qword_100093168);
              if (!v57)
              {

                sub_10004D630(v55, v418, v417, v419, v237, v430, 0, v416);
                v430 = v419;
                v57 = v237;
              }

              goto LABEL_48;
            }

LABEL_47:
            sub_10000BC10(v52, &qword_1000B9068, &qword_100093168);
            v430 = 0;
            v57 = 0;
LABEL_48:
            v246 = *(v9 + 2320);
            v247 = *(v9 + 2304);
            v248 = *(v9 + 2296);
            v249 = *(v9 + 2288);
            static Locale.current.getter();
            Locale.region.getter();
            (*(v248 + 8))(v247, v249);
            v250 = type metadata accessor for Locale.Region();
            v251 = *(v250 - 8);
            v252 = (*(v251 + 48))(v246, 1, v250);
            v253 = *(v9 + 2320);
            if (v252 == 1)
            {
              sub_10000BC10(*(v9 + 2320), &qword_1000B6A68, &qword_10008F6F0);
              v254 = 0xE700000000000000;
              v255 = 0x6E776F6E6B6E75;
            }

            else
            {
              v255 = Locale.Region.identifier.getter();
              v254 = v256;
              (*(v251 + 8))(v253, v250);
            }

            v257 = *(v9 + 2440);
            v435 = v255;
            if (*(v257 + *(*(v9 + 2424) + 36)))
            {
              v258 = sub_100072918(v255, v254);
              v425 = v259;
              v428 = v258;
              v257 = *(v9 + 2440);
            }

            else
            {
              v425 = 0;
              v428 = 0;
            }

            v260 = *(v9 + 2672);
            v261 = *(v9 + 2568);
            v262 = *(v9 + 2480);
            sub_100011DFC(v257, v262, &qword_1000B6CB8, &unk_10008F9F0);
            v263 = v57;
            if (v260(v262, 1, v261) == 1)
            {
              sub_10000BC10(*(v9 + 2480), &qword_1000B6CB8, &unk_10008F9F0);
              v271 = 0;
              v272 = 0;
            }

            else
            {
              v273 = *(v9 + 2480);
              v274 = (v273 + *(*(v9 + 2568) + 24));
              v271 = *v274;
              v272 = v274[1];

              sub_10008956C(v273, type metadata accessor for UAFAssetManager.AssetInfo);
            }

            v275 = *(v9 + 2816);
            v276 = *(v9 + 2736);
            v277 = *(v9 + 2728);
            v278 = sub_100077658(v145, v264, v265, v266, v267, v268, v269, v270);
            v286 = sub_100077658(v276, v279, v280, v281, v282, v283, v284, v285);
            *(v438 + 752) = v430;
            *(v438 + 760) = v263;
            *(v438 + 768) = v271;
            *(v438 + 776) = v272;
            *(v438 + 784) = v428;
            *(v438 + 792) = v425;
            *(v438 + 800) = v278;
            *(v438 + 808) = v210;
            *(v438 + 816) = v286;
            *(v438 + 824) = v277;
            *(v438 + 832) = v435;
            *(v438 + 840) = v254;
            v287 = *(v438 + 816);
            *(v438 + 736) = *(v438 + 832);
            *(v438 + 720) = v287;
            v288 = *(v438 + 784);
            *(v438 + 704) = *(v438 + 800);
            *(v438 + 688) = v288;
            v289 = *(v438 + 768);
            *(v438 + 656) = *(v438 + 752);
            *(v438 + 672) = v289;
            sub_100057550(v438 + 656);
            sub_100088778(v438 + 752);
            if (v275)
            {
              v290 = static os_log_type_t.error.getter();
              v440 = 0xD00000000000002BLL;
              v441 = 0x800000010009A870;
              swift_getErrorValue();
              v291._countAndFlagsBits = Error.localizedDescription.getter();
              object = v291._object;
              String.append(_:)(v291);
              object, v293, v294, v295, v296, v297, v298, v299;
              v300._countAndFlagsBits = 32032;
              v300._object = 0xE200000000000000;
              String.append(_:)(v300);
              v301 = v441;
              sub_10005E11C(v290, v440, v441, 0xD00000000000005BLL, 0x8000000100095700, 471);
              v301, v302, v303, v304, v305, v306, v307, v308;
            }

            v429 = *(v438 + 2672);
            v309 = *(v438 + 2568);
            v310 = *(v438 + 2472);
            v311 = *(v438 + 2440);
            v436 = *(v438 + 2408);
            sub_100002074(&qword_1000B6CC8, &unk_10008F950);
            v312 = swift_allocObject();
            *(v312 + 16) = xmmword_100091120;
            *(v312 + 32) = 1701869940;
            *(v312 + 40) = 0xE400000000000000;
            *(v312 + 48) = String._bridgeToObjectiveC()();
            *(v312 + 56) = 1835102323;
            *(v312 + 64) = 0xE400000000000000;
            sub_100011CC4();
            LOBYTE(v51) = v432;
            *(v312 + 72) = NSNumber.init(BOOLeanLiteral:)(v432 & 1);
            *(v312 + 80) = 0xD000000000000010;
            *(v312 + 88) = 0x800000010009A7D0;
            sub_100011DFC(v311, v310, &qword_1000B6CB8, &unk_10008F9F0);
            LOBYTE(v309) = v429(v310, 1, v309) != 1;
            v9 = v438;
            sub_10000BC10(v310, &qword_1000B6CB8, &unk_10008F9F0);
            *(v312 + 96) = NSNumber.init(BOOLeanLiteral:)(v309);
            v313 = sub_100011A78(v312);
            swift_setDeallocating();
            sub_100002074(&qword_1000B6CD0, &qword_100092B90);
            swift_arrayDestroy();
            swift_deallocClassInstance();
            v314 = sub_100056EF0(2u, v313, 0, 0);
            v313, v315, v316, v317, v318, v319, v320, v321;
            v314, v322, v323, v324, v325, v326, v327, v328;
            sub_10008956C(v436, type metadata accessor for LogicGraphDecisioningComponent.LogicGraphInput);
            goto LABEL_60;
          }

          v187 = &qword_1000B6A00;
          v188 = &qword_10008F6B0;
          v189 = v9 + 1408;
        }

        sub_10000BC10(v189, v187, v188);
        goto LABEL_35;
      }

      v65 = &qword_1000B6A00;
      v66 = &qword_10008F6B0;
      v67 = v9 + 848;
    }

    sub_10000BC10(v67, v65, v66);
    goto LABEL_27;
  }

  if (*(v8 + 1496) == 2)
  {
    v11 = 0xE400000000000000;
    goto LABEL_7;
  }

  v68 = *(v8 + 2736);
  v69 = *(v8 + 2728);
  *(v8 + 2776), a2, a3, a4, a5, a6, a7, a8;
  v68, v70, v71, v72, v73, v74, v75, v76;
  v69, v77, v78, v79, v80, v81, v82, v83;
  sub_100088724(v8 + 1488);
  v84 = Logger.logObject.getter();
  v85 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v84, v85))
  {
    v86 = swift_slowAlloc();
    *v86 = 0;
    _os_log_impl(&_mh_execute_header, v84, v85, "Logic graph failed to generate a spam classification decision.", v86, 2u);
  }

  sub_10000B6B0();
  v87 = swift_allocError();
  *v88 = 0xD00000000000003ELL;
  *(v88 + 8) = 0x800000010009A7F0;
  *(v88 + 16) = 5;
  swift_willThrow();
  v431 = *(v8 + 2672);
  v89 = *(v8 + 2448);
  v423 = *(v8 + 2440);
  v427 = *(v8 + 2568);
  v90 = *(v8 + 2344);
  sub_10008956C(*(v8 + 2408), type metadata accessor for LogicGraphDecisioningComponent.LogicGraphInput);
  v91 = static os_log_type_t.error.getter();
  v440 = 0;
  v441 = 0xE000000000000000;
  _StringGuts.grow(_:)(65);
  v92._countAndFlagsBits = 0xD00000000000003DLL;
  v92._object = 0x800000010009A790;
  String.append(_:)(v92);
  swift_getErrorValue();
  v93._countAndFlagsBits = Error.localizedDescription.getter();
  v94 = v93._object;
  String.append(_:)(v93);
  v94, v95, v96, v97, v98, v99, v100, v101;
  v102._countAndFlagsBits = 32032;
  v102._object = 0xE200000000000000;
  String.append(_:)(v102);
  sub_10005E11C(v91, 0, 0xE000000000000000, 0xD00000000000005BLL, 0x8000000100095700, 484);
  0xE000000000000000, v103, v104, v105, v106, v107, v108, v109;
  sub_100002074(&qword_1000B6CC8, &unk_10008F950);
  v110 = swift_allocObject();
  *(v110 + 16) = xmmword_10008F850;
  *(v110 + 32) = 1701869940;
  *(v110 + 40) = 0xE400000000000000;
  *(v110 + 48) = String._bridgeToObjectiveC()();
  *(v110 + 56) = 0xD000000000000010;
  *(v110 + 64) = 0x800000010009A7D0;
  sub_100011DFC(v423, v89, &qword_1000B6CB8, &unk_10008F9F0);
  v111 = v431(v89, 1, v427) != 1;
  sub_100011CC4();
  sub_10000BC10(v89, &qword_1000B6CB8, &unk_10008F9F0);
  *(v110 + 72) = NSNumber.init(BOOLeanLiteral:)(v111);
  v112 = sub_100011A78(v110);
  swift_setDeallocating();
  sub_100002074(&qword_1000B6CD0, &qword_100092B90);
  swift_arrayDestroy();
  v9 = v8;
  swift_deallocClassInstance();
  *(v8 + 2216) = v87;
  swift_errorRetain();
  sub_100002074(&qword_1000B6CC0, &qword_100091740);
  v113 = swift_dynamicCast();
  v114 = *(v90 + 56);
  if (v113)
  {
    v115 = *(v8 + 2352);
    v116 = *(v8 + 2344);
    v117 = *(v8 + 2336);
    v118 = *(v8 + 2272);
    v114(v118, 0, 1, v117);
    (*(v116 + 32))(v115, v118, v117);
    v119 = NemesisError.metric.getter();
    v121 = v120;
    v122 = sub_100056EF0(2u, v112, v119, v120);
    v121, v123, v124, v125, v126, v127, v128, v129;
    v112, v130, v131, v132, v133, v134, v135, v136;
    v122, v137, v138, v139, v140, v141, v142, v143;

    (*(v116 + 8))(v115, v117);
  }

  else
  {
    v146 = *(v8 + 2272);
    v114(v146, 1, 1, *(v8 + 2336));
    sub_10000BC10(v146, &qword_1000B9060, &qword_100093150);
    v440 = 0;
    v441 = 0xE000000000000000;
    _StringGuts.grow(_:)(65);
    v147._countAndFlagsBits = 0xD00000000000003DLL;
    v147._object = 0x800000010009A790;
    String.append(_:)(v147);
    swift_getErrorValue();
    v148._countAndFlagsBits = Error.localizedDescription.getter();
    v149 = v148._object;
    String.append(_:)(v148);
    v149, v150, v151, v152, v153, v154, v155, v156;
    v157._countAndFlagsBits = 32032;
    v157._object = 0xE200000000000000;
    String.append(_:)(v157);
    0xE000000000000000, v158, v159, v160, v161, v162, v163, v164;
    v165 = sub_100056EF0(2u, v112, 0x6F6974617265706FLL, 0xEF64656C6961466ELL);

    v112, v166, v167, v168, v169, v170, v171, v172;
    v165, v173, v174, v175, v176, v177, v178, v179;
  }

  v180 = *(v8 + 2744);
  swift_beginAccess();
  LODWORD(v51) = *(v180 + 16);
  if (v51 != 2)
  {
    goto LABEL_60;
  }

  v181 = *(v8 + 2744);
  if (*(v181 + 56) >= 2uLL)
  {
    LODWORD(v51) = *(v181 + 24);
LABEL_60:
    v329 = *(v9 + 2664);
    v330 = *(v9 + 2256);
    swift_beginAccess();
    v331 = *(v329 + 16);
    v332 = v330[1];
    v433 = v51;
    if (v332 && (*v330 == 0xD000000000000014 && v332 == 0x80000001000947E0 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
    {

      v333 = static os_log_type_t.default.getter();
      v440 = 0;
      v441 = 0xE000000000000000;
      _StringGuts.grow(_:)(54);
      v334._countAndFlagsBits = 0xD000000000000021;
      v334._object = 0x800000010009A6E0;
      String.append(_:)(v334);

      v335 = sub_1000878A8((v51 & 1) == 0, v331);
      v336 = v9;
      v338 = v337;
      v331, v337, v339, v340, v341, v342, v343, v344;
      v345._countAndFlagsBits = v335;
      v345._object = v338;
      String.append(_:)(v345);
      v338, v346, v347, v348, v349, v350, v351, v352;
      v353._countAndFlagsBits = 0x75706E69202C7D20;
      v353._object = 0xED0000207B203D74;
      String.append(_:)(v353);
      v354._countAndFlagsBits = sub_100086FE0();
      v355 = v354._object;
      String.append(_:)(v354);
      v355, v356, v357, v358, v359, v360, v361, v362;
      v363._countAndFlagsBits = 2099281184;
      v363._object = 0xE400000000000000;
      String.append(_:)(v363);
      v364 = v441;
      sub_10005E11C(v333, v440, v441, 0xD00000000000005BLL, 0x8000000100095700, 521);
    }

    else
    {
      swift_bridgeObjectRetain_n();
      sub_100077584(0xD000000000000010, 0x800000010009A6C0, v331, (v9 + 1696));
      if (*(v9 + 1720))
      {
        v372 = sub_100002074(&qword_1000B6A20, &qword_10008F6D0);
        v364 = v331;
        if (swift_dynamicCast())
        {
          v439 = *(v9 + 2152);
          sub_100056080(0x6567617373656DLL, 0xE700000000000000, v9 + 1168);
          sub_10000BC10(v9 + 1168, &qword_1000B6A28, &qword_10008F6D8);
          sub_100056080(0x6465746365746564, 0xED0000696A6F6D45, v9 + 1208);
          sub_10000BC10(v9 + 1208, &qword_1000B6A28, &qword_10008F6D8);
          sub_100056080(0x6465746365746564, 0xEC000000736C7255, v9 + 1248);
          sub_10000BC10(v9 + 1248, &qword_1000B6A28, &qword_10008F6D8);
          sub_100056080(0xD000000000000013, 0x8000000100094310, v9 + 1288);
          sub_10000BC10(v9 + 1288, &qword_1000B6A28, &qword_10008F6D8);
          *(v9 + 1752) = v372;
          *(v9 + 1728) = v439;
          sub_100011DEC((v9 + 1728), (v9 + 1568));
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v440 = v331;
          sub_10005B69C((v9 + 1568), 0xD000000000000010, 0x800000010009A6C0, isUniquelyReferenced_nonNull_native);
          v364 = v440;
        }
      }

      else
      {
        sub_10000BC10(v9 + 1696, &qword_1000B7748, &unk_1000912F8);
        v364 = v331;
      }

      v336 = v9;
      v374 = static os_log_type_t.default.getter();
      v440 = 0;
      v441 = 0xE000000000000000;
      _StringGuts.grow(_:)(76);
      v375._countAndFlagsBits = 0xD000000000000021;
      v375._object = 0x800000010009A6E0;
      String.append(_:)(v375);
      if (v51)
      {
        v376 = 1835102323;
      }

      else
      {
        v376 = 0x6D617053746F6ELL;
      }

      if (v51)
      {
        v377 = 0xE400000000000000;
      }

      else
      {
        v377 = 0xE700000000000000;
      }

      v378 = v377;
      String.append(_:)(*&v376);
      v377, v379, v380, v381, v382, v383, v384, v385;
      v386._countAndFlagsBits = 0x75706E69202C7D20;
      v386._object = 0xED0000207B203D74;
      String.append(_:)(v386);
      v387._countAndFlagsBits = sub_100086FE0();
      v388 = v387._object;
      String.append(_:)(v387);
      v388, v389, v390, v391, v392, v393, v394, v395;
      v396._countAndFlagsBits = 0xD000000000000014;
      v396._object = 0x800000010009A710;
      String.append(_:)(v396);
      v397._countAndFlagsBits = Dictionary.description.getter();
      v398 = v397._object;
      String.append(_:)(v397);
      v398, v399, v400, v401, v402, v403, v404, v405;
      v406._countAndFlagsBits = 2099281184;
      v406._object = 0xE400000000000000;
      String.append(_:)(v406);
      v407 = v441;
      sub_10005E11C(v374, v440, v441, 0xD00000000000005BLL, 0x8000000100095700, 533);
      v407, v408, v409, v410, v411, v412, v413, v414;
    }

    v364, v365, v366, v367, v368, v369, v370, v371;

    sub_10008956C(*(v336 + 2440), type metadata accessor for SpamDecisioningAsset);

    v415 = *(v336 + 8);

    return v415((v433 & 1) == 0, v331);
  }

  v182 = *(v8 + 2440);
  v183 = static os_log_type_t.error.getter();
  sub_10005E11C(v183, 0xD000000000000027, 0x800000010009A690, 0xD00000000000005BLL, 0x8000000100095700, 512);
  swift_allocError();
  *v184 = 0xD000000000000027;
  *(v184 + 8) = 0x800000010009A690;
  *(v184 + 16) = 2;
  swift_willThrow();

  sub_10008956C(v182, type metadata accessor for SpamDecisioningAsset);

  v185 = *(v8 + 8);

  return v185();
}

uint64_t sub_10007FCC8()
{
  *(*v1 + 2840) = v0;

  if (v0)
  {
    v2 = sub_1000808E8;
  }

  else
  {
    v2 = sub_10007FDDC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10007FDDC()
{
  v72 = v0;
  v1 = *(v0 + 2536);
  v2 = *(v0 + 2432);
  v3 = *(v0 + 2424);
  v4 = *(v0 + 2264);

  (*(v2 + 56))(v1, 0, 1, v3);
  v5 = OBJC_IVAR____TtC13frauddefensed22SpamDecisioningManager_spamAsset;
  swift_beginAccess();
  sub_100087CF4(v1, v4 + v5);
  swift_endAccess();
  v6 = *(v0 + 2544);
  v7 = *(v0 + 2432);
  v8 = *(v0 + 2424);
  v9 = *(v0 + 2264);
  v10 = OBJC_IVAR____TtC13frauddefensed22SpamDecisioningManager_spamAsset;
  swift_beginAccess();
  sub_100011DFC(v9 + v10, v6, &qword_1000B9058, &qword_100093140);
  if ((*(v7 + 48))(v6, 1, v8) == 1)
  {
    sub_10000BC10(*(v0 + 2544), &qword_1000B9058, &qword_100093140);
    v11 = static os_log_type_t.error.getter();
    sub_10005E11C(v11, 0xD000000000000049, 0x800000010009A5D0, 0xD00000000000005BLL, 0x8000000100095700, 144);
    sub_10000B6B0();
    swift_allocError();
    *v12 = 0xD000000000000049;
    *(v12 + 8) = 0x800000010009A5D0;
    *(v12 + 16) = 14;
    swift_willThrow();
LABEL_7:

    v41 = *(v0 + 8);

    return v41();
  }

  v13 = *(v0 + 2256);
  sub_1000887CC(*(v0 + 2544), *(v0 + 2440), type metadata accessor for SpamDecisioningAsset);
  if ((sub_100084050(v13) & 1) == 0)
  {
    v20 = *(v0 + 2440);
    v21 = static os_log_type_t.default.getter();
    v69 = 0;
    v70 = 0xE000000000000000;
    _StringGuts.grow(_:)(52);
    v22._countAndFlagsBits = 0xD000000000000030;
    v22._object = 0x800000010009A620;
    String.append(_:)(v22);
    v23._countAndFlagsBits = sub_100086FE0();
    object = v23._object;
    String.append(_:)(v23);
    object, v25, v26, v27, v28, v29, v30, v31;
    v32._countAndFlagsBits = 32032;
    v32._object = 0xE200000000000000;
    String.append(_:)(v32);
    sub_10005E11C(v21, 0, 0xE000000000000000, 0xD00000000000005BLL, 0x8000000100095700, 149);
    0xE000000000000000, v33, v34, v35, v36, v37, v38, v39;
    sub_10000B6B0();
    swift_allocError();
    *v40 = 0xD00000000000002DLL;
    *(v40 + 8) = 0x800000010009A660;
    *(v40 + 16) = 16;
    swift_willThrow();
    sub_10008956C(v20, type metadata accessor for SpamDecisioningAsset);
    goto LABEL_7;
  }

  v14 = *(v0 + 2576);
  v15 = *(v0 + 2568);
  v16 = *(v0 + 2512);
  v17 = *(v0 + 2440);
  v18 = swift_allocObject();
  *(v0 + 2664) = v18;
  *(v18 + 16) = &_swiftEmptyDictionarySingleton;
  sub_100011DFC(v17, v16, &qword_1000B6CB8, &unk_10008F9F0);
  v19 = *(v14 + 48);
  *(v0 + 2672) = v19;
  *(v0 + 2680) = (v14 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v19(v16, 1, v15) == 1)
  {
    sub_10000BC10(*(v0 + 2512), &qword_1000B6CB8, &unk_10008F9F0);
    v71 = &type metadata for String;
    v69 = 0;
    v70 = 0xE000000000000000;
    sub_100056920(&v69, 0x666E497465737361, 0xE90000000000006FLL);
  }

  else
  {
    v43 = *(v0 + 2584);
    sub_1000887CC(*(v0 + 2512), v43, type metadata accessor for UAFAssetManager.AssetInfo);
    v71 = &type metadata for String;
    v69 = sub_100053230();
    v70 = v44;
    sub_100056920(&v69, 0x666E497465737361, 0xE90000000000006FLL);
    sub_10008956C(v43, type metadata accessor for UAFAssetManager.AssetInfo);
  }

  v45 = sub_100088414();
  *(v0 + 122) = v45 & 1;
  *(v0 + 123) = BYTE1(v45) & 1;
  *(v0 + 124) = BYTE2(v45) & 1;
  if ((~v45 & 0x10100) != 0 || (v45 & 1) == 0)
  {
    *(v0 + 2736) = &_swiftEmptySetSingleton;
    *(v0 + 2728) = &_swiftEmptyArrayStorage;
    v62 = *(v0 + 2664);
    v63 = *(v0 + 2440);
    v64 = *(v0 + 2264);
    v65 = *(v0 + 2256);
    v66 = swift_allocObject();
    *(v0 + 2744) = v66;
    *(v66 + 16) = 2;
    *(v66 + 24) = 0u;
    *(v66 + 40) = 0u;
    *(v66 + 56) = 1;
    *(v66 + 64) = 0u;
    *(v66 + 80) = 0u;
    *(v66 + 96) = 0u;
    *(v66 + 112) = 0u;
    *(v66 + 128) = 0;
    v67 = swift_task_alloc();
    *(v0 + 2752) = v67;
    v67[2] = v0 + 122;
    v67[3] = v64;
    v67[4] = v63;
    v67[5] = v65;
    v67[6] = v62;
    v67[7] = v66;
    v68 = swift_task_alloc();
    *(v0 + 2760) = v68;
    *v68 = v0;
    v68[1] = sub_10007D14C;
    v74 = &type metadata for () + 8;

    return withThrowingTaskGroup<A, B>(of:returning:isolation:body:)(v68, &type metadata for () + 8, &type metadata for () + 8, 0, 0, &unk_100093160, v67, &type metadata for () + 8);
  }

  else
  {
    v46 = *(v0 + 2416);
    v47 = *(v0 + 2400);
    v48 = *(v0 + 2392);
    v49 = *(v0 + 2384);
    v50 = *(v0 + 2376);
    v51 = *(v0 + 2264);
    v52 = *(v0 + 2256);
    sub_100088834(*(v0 + 2440), v46, type metadata accessor for SpamDecisioningAsset);
    sub_1000886EC(v52, v0 + 128);
    v53 = sub_100011724(&_swiftEmptyArrayStorage);
    v54 = (v46 + v47[5]);
    v55 = *(v52 + 90);
    v57 = v52[4];
    v56 = v52[5];
    v54[3] = v52[3];
    v54[4] = v57;
    v54[5] = v56;
    *(v54 + 90) = v55;
    v59 = v52[1];
    v58 = v52[2];
    *v54 = *v52;
    v54[1] = v59;
    v54[2] = v58;
    *(v46 + v47[6]) = v53;
    *(v46 + v47[7]) = 0;
    UUID.init()();
    *(v0 + 2688) = UUID.uuidString.getter();
    *(v0 + 2696) = v60;
    (*(v49 + 8))(v48, v50);
    v61 = *(v51 + OBJC_IVAR____TtC13frauddefensed22SpamDecisioningManager_signpostsManager);
    *(v0 + 2704) = v61;

    return _swift_task_switch(sub_10007B680, v61, 0);
  }
}

uint64_t sub_100080674()
{

  v0[353] = v0[328];
  v1 = v0[322];
  v2 = v0[321];
  v3 = v0[308];
  v4 = static os_log_type_t.debug.getter();
  sub_10005E11C(v4, 0xD00000000000002ELL, 0x80000001000987C0, 0xD00000000000005BLL, 0x8000000100095700, 132);
  (*(v1 + 56))(v3, 1, 1, v2);
  v5 = swift_task_alloc();
  v0[354] = v5;
  *v5 = v0;
  v5[1] = sub_10007FCC8;
  v6 = v0[317];
  v7 = v0[308];

  return sub_1000122EC(v6, v7);
}

uint64_t sub_1000807A4()
{
  sub_10008956C(v0[324], type metadata accessor for UAFAssetManager.AssetInfo);
  v0[353] = v0[330];
  v1 = v0[322];
  v2 = v0[321];
  v3 = v0[308];
  v4 = static os_log_type_t.debug.getter();
  sub_10005E11C(v4, 0xD00000000000002ELL, 0x80000001000987C0, 0xD00000000000005BLL, 0x8000000100095700, 132);
  (*(v1 + 56))(v3, 1, 1, v2);
  v5 = swift_task_alloc();
  v0[354] = v5;
  *v5 = v0;
  v5[1] = sub_10007FCC8;
  v6 = v0[317];
  v7 = v0[308];

  return sub_1000122EC(v6, v7);
}

uint64_t sub_1000808E8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100080B00()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100080D10()
{
  sub_10008956C(v0[302], type metadata accessor for LogicGraphDecisioningComponent.LogicGraphInput);
  v101 = v0[334];
  v99 = v0[340];
  v100 = v0[321];
  v1 = v0[307];
  v98 = v0[305];
  v2 = v0[293];
  v3 = static os_log_type_t.error.getter();
  _StringGuts.grow(_:)(53);
  v4._object = 0x800000010009A8C0;
  v4._countAndFlagsBits = 0xD000000000000031;
  String.append(_:)(v4);
  swift_getErrorValue();
  v5._countAndFlagsBits = Error.localizedDescription.getter();
  object = v5._object;
  String.append(_:)(v5);
  object, v7, v8, v9, v10, v11, v12, v13;
  v14._countAndFlagsBits = 32032;
  v14._object = 0xE200000000000000;
  String.append(_:)(v14);
  sub_10005E11C(v3, 0, 0xE000000000000000, 0xD00000000000005BLL, 0x8000000100095700, 255);
  0xE000000000000000, v15, v16, v17, v18, v19, v20, v21;
  sub_100002074(&qword_1000B6CC8, &unk_10008F950);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_10008F850;
  *(v22 + 32) = 1701869940;
  *(v22 + 40) = 0xE400000000000000;
  *(v22 + 48) = String._bridgeToObjectiveC()();
  *(v22 + 56) = 0xD000000000000010;
  *(v22 + 64) = 0x800000010009A7D0;
  sub_100011DFC(v98, v1, &qword_1000B6CB8, &unk_10008F9F0);
  v23 = v101(v1, 1, v100) != 1;
  sub_100011CC4();
  sub_10000BC10(v1, &qword_1000B6CB8, &unk_10008F9F0);
  *(v22 + 72) = NSNumber.init(BOOLeanLiteral:)(v23);
  v24 = sub_100011A78(v22);
  swift_setDeallocating();
  sub_100002074(&qword_1000B6CD0, &qword_100092B90);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v0[267] = v99;
  swift_errorRetain();
  sub_100002074(&qword_1000B6CC0, &qword_100091740);
  v25 = swift_dynamicCast();
  v26 = *(v2 + 56);
  if (v25)
  {
    v27 = v0[295];
    v28 = v0[293];
    v29 = v0[292];
    v30 = v0[285];
    v26(v30, 0, 1, v29);
    (*(v28 + 32))(v27, v30, v29);
    v31 = NemesisError.metric.getter();
    v33 = v32;
    v34 = sub_100056EF0(2u, v24, v31, v32);
    v33, v35, v36, v37, v38, v39, v40, v41;
    v24, v42, v43, v44, v45, v46, v47, v48;
    v34, v49, v50, v51, v52, v53, v54, v55;

    (*(v28 + 8))(v27, v29);
  }

  else
  {
    v56 = v0[285];
    v26(v56, 1, 1, v0[292]);
    sub_10000BC10(v56, &qword_1000B9060, &qword_100093150);
    _StringGuts.grow(_:)(53);
    v57._object = 0x800000010009A8C0;
    v57._countAndFlagsBits = 0xD000000000000031;
    String.append(_:)(v57);
    swift_getErrorValue();
    v58._countAndFlagsBits = Error.localizedDescription.getter();
    v59 = v58._object;
    String.append(_:)(v58);
    v59, v60, v61, v62, v63, v64, v65, v66;
    v67._countAndFlagsBits = 32032;
    v67._object = 0xE200000000000000;
    String.append(_:)(v67);
    0xE000000000000000, v68, v69, v70, v71, v72, v73, v74;
    v75 = sub_100056EF0(2u, v24, 0x6F6974617265706FLL, 0xEF64656C6961466ELL);

    v24, v76, v77, v78, v79, v80, v81, v82;
    v75, v83, v84, v85, v86, v87, v88, v89;
  }

  v0[342] = &_swiftEmptySetSingleton;
  v0[341] = &_swiftEmptyArrayStorage;
  v90 = v0[333];
  v91 = v0[305];
  v92 = v0[283];
  v93 = v0[282];
  v94 = swift_allocObject();
  v0[343] = v94;
  *(v94 + 16) = 2;
  *(v94 + 24) = 0u;
  *(v94 + 40) = 0u;
  *(v94 + 56) = 1;
  *(v94 + 64) = 0u;
  *(v94 + 80) = 0u;
  *(v94 + 96) = 0u;
  *(v94 + 112) = 0u;
  *(v94 + 128) = 0;
  v95 = swift_task_alloc();
  v0[344] = v95;
  v95[2] = v0 + 122;
  v95[3] = v92;
  v95[4] = v91;
  v95[5] = v93;
  v95[6] = v90;
  v95[7] = v94;
  v96 = swift_task_alloc();
  v0[345] = v96;
  *v96 = v0;
  v96[1] = sub_10007D14C;

  return withThrowingTaskGroup<A, B>(of:returning:isolation:body:)(v96, &type metadata for () + 8, &type metadata for () + 8, 0, 0, &unk_100093160, v95, &type metadata for () + 8);
}

uint64_t sub_1000812FC()
{
  v1 = *(v0 + 2440);

  sub_10008956C(v1, type metadata accessor for SpamDecisioningAsset);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100081540()
{
  v1 = *(v0 + 2816);
  v185 = *(v0 + 2672);
  v184 = *(v0 + 2568);
  v2 = *(v0 + 2448);
  v3 = *(v0 + 2440);
  v186 = *(v0 + 2344);
  sub_10008956C(*(v0 + 2408), type metadata accessor for LogicGraphDecisioningComponent.LogicGraphInput);
  v4 = static os_log_type_t.error.getter();
  _StringGuts.grow(_:)(65);
  v5._countAndFlagsBits = 0xD00000000000003DLL;
  v5._object = 0x800000010009A790;
  String.append(_:)(v5);
  swift_getErrorValue();
  v6._countAndFlagsBits = Error.localizedDescription.getter();
  object = v6._object;
  String.append(_:)(v6);
  object, v8, v9, v10, v11, v12, v13, v14;
  v15._countAndFlagsBits = 32032;
  v15._object = 0xE200000000000000;
  String.append(_:)(v15);
  sub_10005E11C(v4, 0, 0xE000000000000000, 0xD00000000000005BLL, 0x8000000100095700, 484);
  0xE000000000000000, v16, v17, v18, v19, v20, v21, v22;
  sub_100002074(&qword_1000B6CC8, &unk_10008F950);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_10008F850;
  *(v23 + 32) = 1701869940;
  *(v23 + 40) = 0xE400000000000000;
  *(v23 + 48) = String._bridgeToObjectiveC()();
  *(v23 + 56) = 0xD000000000000010;
  *(v23 + 64) = 0x800000010009A7D0;
  sub_100011DFC(v3, v2, &qword_1000B6CB8, &unk_10008F9F0);
  v24 = v185(v2, 1, v184) != 1;
  sub_100011CC4();
  sub_10000BC10(v2, &qword_1000B6CB8, &unk_10008F9F0);
  *(v23 + 72) = NSNumber.init(BOOLeanLiteral:)(v24);
  v25 = sub_100011A78(v23);
  swift_setDeallocating();
  sub_100002074(&qword_1000B6CD0, &qword_100092B90);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  *(v0 + 2216) = v1;
  swift_errorRetain();
  sub_100002074(&qword_1000B6CC0, &qword_100091740);
  v26 = swift_dynamicCast();
  v27 = *(v186 + 56);
  if (v26)
  {
    v28 = *(v0 + 2352);
    v29 = *(v0 + 2344);
    v30 = *(v0 + 2336);
    v31 = *(v0 + 2272);
    v27(v31, 0, 1, v30);
    (*(v29 + 32))(v28, v31, v30);
    v32 = NemesisError.metric.getter();
    v34 = v33;
    v35 = sub_100056EF0(2u, v25, v32, v33);
    v34, v36, v37, v38, v39, v40, v41, v42;
    v25, v43, v44, v45, v46, v47, v48, v49;
    v35, v50, v51, v52, v53, v54, v55, v56;

    (*(v29 + 8))(v28, v30);
  }

  else
  {
    v57 = *(v0 + 2272);
    v27(v57, 1, 1, *(v0 + 2336));
    sub_10000BC10(v57, &qword_1000B9060, &qword_100093150);
    _StringGuts.grow(_:)(65);
    v58._countAndFlagsBits = 0xD00000000000003DLL;
    v58._object = 0x800000010009A790;
    String.append(_:)(v58);
    swift_getErrorValue();
    v59._countAndFlagsBits = Error.localizedDescription.getter();
    v60 = v59._object;
    String.append(_:)(v59);
    v60, v61, v62, v63, v64, v65, v66, v67;
    v68._countAndFlagsBits = 32032;
    v68._object = 0xE200000000000000;
    String.append(_:)(v68);
    0xE000000000000000, v69, v70, v71, v72, v73, v74, v75;
    v76 = sub_100056EF0(2u, v25, 0x6F6974617265706FLL, 0xEF64656C6961466ELL);

    v25, v77, v78, v79, v80, v81, v82, v83;
    v76, v84, v85, v86, v87, v88, v89, v90;
  }

  v91 = *(v0 + 2744);
  swift_beginAccess();
  v92 = *(v91 + 16);
  if (v92 == 2)
  {
    v93 = *(v0 + 2744);
    if (*(v93 + 56) < 2uLL)
    {
      v94 = *(v0 + 2440);
      v95 = static os_log_type_t.error.getter();
      sub_10005E11C(v95, 0xD000000000000027, 0x800000010009A690, 0xD00000000000005BLL, 0x8000000100095700, 512);
      sub_10000B6B0();
      swift_allocError();
      *v96 = 0xD000000000000027;
      *(v96 + 8) = 0x800000010009A690;
      *(v96 + 16) = 2;
      swift_willThrow();

      sub_10008956C(v94, type metadata accessor for SpamDecisioningAsset);

      v97 = *(v0 + 8);

      return v97();
    }

    v92 = *(v93 + 24);
  }

  v99 = *(v0 + 2664);
  v100 = *(v0 + 2256);
  swift_beginAccess();
  v101 = *(v99 + 16);
  v102 = v100[1];
  v187 = v101;
  if (v102 && (*v100 == 0xD000000000000014 && v102 == 0x80000001000947E0 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {

    v103 = static os_log_type_t.default.getter();
    _StringGuts.grow(_:)(54);
    v104._countAndFlagsBits = 0xD000000000000021;
    v104._object = 0x800000010009A6E0;
    String.append(_:)(v104);

    v105 = sub_1000878A8((v92 & 1) == 0, v101);
    v107 = v106;
    v101, v106, v108, v109, v110, v111, v112, v113;
    v114._countAndFlagsBits = v105;
    v114._object = v107;
    String.append(_:)(v114);
    v107, v115, v116, v117, v118, v119, v120, v121;
    v122._countAndFlagsBits = 0x75706E69202C7D20;
    v122._object = 0xED0000207B203D74;
    String.append(_:)(v122);
    v123._countAndFlagsBits = sub_100086FE0();
    v124 = v123._object;
    String.append(_:)(v123);
    v124, v125, v126, v127, v128, v129, v130, v131;
    v132._countAndFlagsBits = 2099281184;
    v132._object = 0xE400000000000000;
    String.append(_:)(v132);
    v133 = 0xE000000000000000;
    sub_10005E11C(v103, 0, 0xE000000000000000, 0xD00000000000005BLL, 0x8000000100095700, 521);
  }

  else
  {
    swift_bridgeObjectRetain_n();
    sub_100077584(0xD000000000000010, 0x800000010009A6C0, v101, (v0 + 1696));
    if (*(v0 + 1720))
    {
      v141 = sub_100002074(&qword_1000B6A20, &qword_10008F6D0);
      v133 = v101;
      if (swift_dynamicCast())
      {
        v188 = *(v0 + 2152);
        sub_100056080(0x6567617373656DLL, 0xE700000000000000, v0 + 1168);
        sub_10000BC10(v0 + 1168, &qword_1000B6A28, &qword_10008F6D8);
        sub_100056080(0x6465746365746564, 0xED0000696A6F6D45, v0 + 1208);
        sub_10000BC10(v0 + 1208, &qword_1000B6A28, &qword_10008F6D8);
        sub_100056080(0x6465746365746564, 0xEC000000736C7255, v0 + 1248);
        sub_10000BC10(v0 + 1248, &qword_1000B6A28, &qword_10008F6D8);
        sub_100056080(0xD000000000000013, 0x8000000100094310, v0 + 1288);
        sub_10000BC10(v0 + 1288, &qword_1000B6A28, &qword_10008F6D8);
        *(v0 + 1752) = v141;
        *(v0 + 1728) = v188;
        sub_100011DEC((v0 + 1728), (v0 + 1568));
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        sub_10005B69C((v0 + 1568), 0xD000000000000010, 0x800000010009A6C0, isUniquelyReferenced_nonNull_native);
        v133 = v101;
      }
    }

    else
    {
      sub_10000BC10(v0 + 1696, &qword_1000B7748, &unk_1000912F8);
      v133 = v101;
    }

    v143 = static os_log_type_t.default.getter();
    _StringGuts.grow(_:)(76);
    v144._countAndFlagsBits = 0xD000000000000021;
    v144._object = 0x800000010009A6E0;
    String.append(_:)(v144);
    if (v92)
    {
      v145 = 1835102323;
    }

    else
    {
      v145 = 0x6D617053746F6ELL;
    }

    if (v92)
    {
      v146 = 0xE400000000000000;
    }

    else
    {
      v146 = 0xE700000000000000;
    }

    v147 = v146;
    String.append(_:)(*&v145);
    v146, v148, v149, v150, v151, v152, v153, v154;
    v155._countAndFlagsBits = 0x75706E69202C7D20;
    v155._object = 0xED0000207B203D74;
    String.append(_:)(v155);
    v156._countAndFlagsBits = sub_100086FE0();
    v157 = v156._object;
    String.append(_:)(v156);
    v157, v158, v159, v160, v161, v162, v163, v164;
    v165._countAndFlagsBits = 0xD000000000000014;
    v165._object = 0x800000010009A710;
    String.append(_:)(v165);
    v166._countAndFlagsBits = Dictionary.description.getter();
    v167 = v166._object;
    String.append(_:)(v166);
    v167, v168, v169, v170, v171, v172, v173, v174;
    v175._countAndFlagsBits = 2099281184;
    v175._object = 0xE400000000000000;
    String.append(_:)(v175);
    sub_10005E11C(v143, 0, 0xE000000000000000, 0xD00000000000005BLL, 0x8000000100095700, 533);
    0xE000000000000000, v176, v177, v178, v179, v180, v181, v182;
  }

  v133, v134, v135, v136, v137, v138, v139, v140;

  sub_10008956C(*(v0 + 2440), type metadata accessor for SpamDecisioningAsset);

  v183 = *(v0 + 8);

  return v183((v92 & 1) == 0, v187);
}

uint64_t sub_100082358(uint64_t a1)
{
  v52 = a1;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v51 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC13frauddefensed22SpamDecisioningManager_spamAsset;
  v6 = type metadata accessor for SpamDecisioningAsset(0);
  (*(*(v6 - 8) + 56))(v1 + v5, 1, 1, v6);
  v53 = v1;
  *(v1 + OBJC_IVAR____TtC13frauddefensed22SpamDecisioningManager____lazy_storage___uafAssetManager) = 0;
  v7 = OBJC_IVAR____TtC13frauddefensed22SpamDecisioningManager_senderLookUpDecisioningComponent;
  type metadata accessor for SenderLookUpDecisioningComponent(0);
  v8 = swift_allocObject();
  sub_100002074(&qword_1000B9078, &qword_1000931B8);
  v9 = swift_allocObject();
  type metadata accessor for LookUpOperation(0);
  v10 = swift_allocObject();
  *(v10 + 16) = 1;
  v11 = OBJC_IVAR____TtC13frauddefensed15LookUpOperation_logger;
  if (qword_1000B66A0 != -1)
  {
    swift_once();
  }

  v12 = sub_100003448(v2, qword_1000B93B8);
  v13 = *(v3 + 16);
  v13(v10 + v11, v12, v2);
  v9[2] = v10;
  v13(v9 + *(*v9 + 104), v12, v2);
  *(v8 + 16) = v9;
  v14 = OBJC_IVAR____TtC13frauddefensed32SenderLookUpDecisioningComponent_logger;
  if (qword_1000B66B0 != -1)
  {
    swift_once();
  }

  v15 = sub_100003448(v2, qword_1000B93E8);
  v13(v8 + v14, v15, v2);
  v16 = v53;
  *(v53 + v7) = v8;
  v17 = OBJC_IVAR____TtC13frauddefensed22SpamDecisioningManager_logicGraphDecisioningComponent;
  type metadata accessor for LogicGraphDecisioningComponent(0);
  v18 = swift_allocObject();
  v13(v18 + OBJC_IVAR____TtC13frauddefensed30LogicGraphDecisioningComponent_logger, v15, v2);
  *(v16 + v17) = v18;
  v19 = OBJC_IVAR____TtC13frauddefensed22SpamDecisioningManager_analyticsManager;
  type metadata accessor for DaemonAnalyticsManager(0);
  v20 = swift_allocObject();
  v21 = OBJC_IVAR____TtC13frauddefensed22DaemonAnalyticsManager_logger;
  if (qword_1000B66A8 != -1)
  {
    swift_once();
  }

  v22 = sub_100003448(v2, qword_1000B93D0);
  v13(v20 + v21, v22, v2);
  v23 = OBJC_IVAR____TtC13frauddefensed22DaemonAnalyticsManager_eligibilityManager;
  type metadata accessor for EligibilityManager(0);
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  v25 = OBJC_IVAR____TtC13frauddefensed18EligibilityManager_logger;
  if (qword_1000B6690 != -1)
  {
    swift_once();
  }

  v26 = sub_100003448(v2, qword_1000B9388);
  v13(v24 + v25, v26, v2);
  *(v20 + v23) = v24;
  v27 = v53;
  *(v53 + v19) = v20;
  v28 = OBJC_IVAR____TtC13frauddefensed22SpamDecisioningManager_signpostsManager;
  type metadata accessor for SignpostsManager(0);
  v29 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v29 + 112) = &_swiftEmptyDictionarySingleton;
  if (qword_1000B66C8 != -1)
  {
    swift_once();
  }

  v30 = sub_100003448(v2, qword_1000B9430);
  v13(v51, v30, v2);
  OSSignposter.init(logger:)();
  v13(v29 + OBJC_IVAR____TtC13frauddefensed16SignpostsManager_logger, v22, v2);
  *(v27 + v28) = v29;
  v13(v27 + OBJC_IVAR____TtC13frauddefensed22SpamDecisioningManager_logger, v15, v2);
  v31 = v52;
  sub_100011DFC(v52, &v57, &qword_1000B9080, &qword_1000931C0);
  if (v58)
  {
    sub_100011DD4(&v57, v59);
    sub_100043EA4(v59, &v57);
    v32 = sub_100010F28(&v57, v58);
    __chkstk_darwin(v32);
    v34 = (&v50 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v35 + 16))(v34);
    v55 = &type metadata for SignatureAnalysisDecisioningComponentProvider;
    v56 = &off_1000B0938;
    v54 = *v34;
    type metadata accessor for SignatureAnalysisDecisioningComponent(0);
    v36 = swift_allocObject();
    v37 = sub_100010F28(&v54, &type metadata for SignatureAnalysisDecisioningComponentProvider);
    __chkstk_darwin(v37);
    v39 = (&v50 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v40 + 16))(v39);
    v41 = sub_100010FC8(*v39, v39[1], v36);
    sub_10000BC10(v31, &qword_1000B9080, &qword_1000931C0);
    sub_100003558(v59);
    sub_100003558(&v54);
    sub_100003558(&v57);
  }

  else
  {
    sub_10000BC10(&v57, &qword_1000B9080, &qword_1000931C0);
    v42 = sub_100010D3C(0);
    type metadata accessor for SignaturesSQLiteManager(0);
    swift_allocObject();
    v43 = sub_10006D3FC(0, 0);
    v59[3] = &type metadata for SignatureAnalysisDecisioningComponentProvider;
    v59[4] = &off_1000B0938;
    v59[0] = v42;
    v59[1] = v43;
    type metadata accessor for SignatureAnalysisDecisioningComponent(0);
    v44 = swift_allocObject();
    v45 = sub_100010F28(v59, &type metadata for SignatureAnalysisDecisioningComponentProvider);
    __chkstk_darwin(v45);
    v47 = (&v50 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v48 + 16))(v47);
    v41 = sub_100010FC8(*v47, v47[1], v44);
    sub_10000BC10(v31, &qword_1000B9080, &qword_1000931C0);
    sub_100003558(v59);
  }

  *(v27 + 16) = v41;
  return v27;
}

char *sub_100082B5C()
{
  v1 = OBJC_IVAR____TtC13frauddefensed22SpamDecisioningManager____lazy_storage___uafAssetManager;
  if (*(v0 + OBJC_IVAR____TtC13frauddefensed22SpamDecisioningManager____lazy_storage___uafAssetManager))
  {
    v2 = *(v0 + OBJC_IVAR____TtC13frauddefensed22SpamDecisioningManager____lazy_storage___uafAssetManager);
  }

  else
  {
    type metadata accessor for UAFAssetManager(0);
    v2 = swift_allocObject();
    v3 = OBJC_IVAR____TtC13frauddefensed15UAFAssetManager_logger;
    if (qword_1000B66B8 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    v5 = sub_100003448(v4, qword_1000B9400);
    (*(*(v4 - 8) + 16))(&v2[v3], v5, v4);
    *(v2 + 2) = 0xD000000000000019;
    *(v2 + 3) = 0x8000000100094840;
    *(v2 + 4) = 0xD000000000000022;
    *(v2 + 5) = 0x8000000100094860;
    *(v2 + 6) = 0xD000000000000023;
    *(v2 + 7) = 0x8000000100094890;
    *(v2 + 8) = 0x6D6170732E6B74;
    *(v2 + 9) = 0xE700000000000000;
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_100082CC8(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 24) = a4;
  *(v5 + 32) = a5;
  *(v5 + 112) = a3;
  *(v5 + 16) = a2;
  v6 = *(type metadata accessor for SpamDecisioningAsset(0) - 8);
  *(v5 + 40) = v6;
  *(v5 + 48) = *(v6 + 64);
  *(v5 + 56) = swift_task_alloc();
  sub_100002074(&qword_1000B7580, &qword_10008EEC0);
  *(v5 + 64) = swift_task_alloc();

  return _swift_task_switch(sub_100082DCC, 0, 0);
}

uint64_t sub_100082DCC()
{
  v1 = *(v0 + 112);
  if (v1)
  {
    v7 = *(v0 + 64);
    v8 = *(v0 + 24);
    v9 = type metadata accessor for TaskPriority();
    (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
    v10 = *(v8 + OBJC_IVAR____TtC13frauddefensed22SpamDecisioningManager_senderLookUpDecisioningComponent);
    v11 = swift_allocObject();
    v11[2] = 0;
    v11[3] = 0;
    v11[4] = v10;

    sub_100048A98(v7, &unk_100093208, v11);
    sub_10000BC10(v7, &qword_1000B7580, &qword_10008EEC0);
    v1 = *(v0 + 112);
    if ((v1 & 0x100) == 0)
    {
LABEL_3:
      if ((v1 & 0x10000) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((v1 & 0x100) == 0)
  {
    goto LABEL_3;
  }

  v13 = *(v0 + 56);
  v12 = *(v0 + 64);
  v15 = *(v0 + 40);
  v14 = *(v0 + 48);
  v17 = *(v0 + 24);
  v16 = *(v0 + 32);
  v18 = type metadata accessor for TaskPriority();
  (*(*(v18 - 8) + 56))(v12, 1, 1, v18);
  v19 = *(v17 + 16);
  sub_100088834(v16, v13, type metadata accessor for SpamDecisioningAsset);
  v20 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  *(v21 + 24) = 0;
  sub_1000887CC(v13, v21 + v20, type metadata accessor for SpamDecisioningAsset);
  *(v21 + ((v14 + v20 + 7) & 0xFFFFFFFFFFFFFFF8)) = v19;

  sub_100048A98(v12, &unk_1000931F8, v21);
  sub_10000BC10(v12, &qword_1000B7580, &qword_10008EEC0);
  if ((*(v0 + 112) & 0x10000) != 0)
  {
LABEL_4:
    v2 = *(v0 + 64);
    v3 = *(v0 + 24);
    v4 = type metadata accessor for TaskPriority();
    (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
    v5 = *(v3 + OBJC_IVAR____TtC13frauddefensed22SpamDecisioningManager_logicGraphDecisioningComponent);
    v6 = swift_allocObject();
    v6[2] = 0;
    v6[3] = 0;
    v6[4] = v5;

    sub_100048A98(v2, &unk_1000931E8, v6);
    sub_10000BC10(v2, &qword_1000B7580, &qword_10008EEC0);
  }

LABEL_5:

  return _swift_task_switch(sub_1000830D0, 0, 0);
}

uint64_t sub_1000830D0()
{
  *(v0 + 72) = **(v0 + 16);
  *(v0 + 80) = sub_100002074(&qword_1000B6CC0, &qword_100091740);
  if (ThrowingTaskGroup.isEmpty.getter())
  {

    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    *(v0 + 88) = 0;
    v3 = swift_task_alloc();
    *(v0 + 96) = v3;
    v4 = sub_100002074(&qword_1000B7A50, &qword_1000931B0);
    *v3 = v0;
    v3[1] = sub_10008321C;

    return ThrowingTaskGroup.next(isolation:)(v0 + 116, 0, 0, v4);
  }
}

uint64_t sub_10008321C()
{
  v2 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = sub_10008348C;
  }

  else
  {
    *(v2 + 117) = *(v2 + 116);
    v3 = sub_100083338;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100083338()
{
  if (*(v0 + 117))
  {
    v1 = *(v0 + 88);
    if (ThrowingTaskGroup.isEmpty.getter())
    {
      if (v1)
      {
        swift_willThrow();
      }

      v2 = *(v0 + 8);

      return v2();
    }

    *(v0 + 88) = v1;
  }

  v4 = swift_task_alloc();
  *(v0 + 96) = v4;
  v5 = sub_100002074(&qword_1000B7A50, &qword_1000931B0);
  *v4 = v0;
  v4[1] = sub_10008321C;

  return ThrowingTaskGroup.next(isolation:)(v0 + 116, 0, 0, v5);
}

uint64_t sub_10008348C()
{
  v1 = v0[13];
  if (v0[11])
  {

    v1 = v0[11];
  }

  if (ThrowingTaskGroup.isEmpty.getter())
  {
    if (v1)
    {
      swift_willThrow();
    }

    v2 = v0[1];

    return v2();
  }

  else
  {
    v0[11] = v1;
    v4 = swift_task_alloc();
    v0[12] = v4;
    v5 = sub_100002074(&qword_1000B7A50, &qword_1000931B0);
    *v4 = v0;
    v4[1] = sub_10008321C;

    return ThrowingTaskGroup.next(isolation:)(v0 + 116, 0, 0, v5);
  }
}

uint64_t sub_10008360C(uint64_t a1)
{
  v2 = static os_log_type_t.default.getter();
  sub_10005E11C(v2, 0xD00000000000002ALL, 0x800000010009AD30, 0xD000000000000065, 0x800000010009A040, 33);
  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_1000836B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v5[4] = type metadata accessor for SignatureAnalysisDecisioningComponent.SignatureAnalysisSetupInput(0);
  v5[5] = swift_task_alloc();

  return _swift_task_switch(sub_10008374C, 0, 0);
}

uint64_t sub_10008374C()
{
  v1 = v0[4];
  v2 = v0[5];
  sub_100088834(v0[2], v2, type metadata accessor for SpamDecisioningAsset);
  *(v2 + *(v1 + 20)) = 1;
  v3 = swift_task_alloc();
  v0[6] = v3;
  *v3 = v0;
  v3[1] = sub_100083814;
  v4 = v0[5];

  return sub_100033DE4(v4);
}

uint64_t sub_100083814()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_1000839AC;
  }

  else
  {
    v2 = sub_100083928;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100083928()
{
  sub_10008956C(*(v0 + 40), type metadata accessor for SignatureAnalysisDecisioningComponent.SignatureAnalysisSetupInput);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000839AC()
{
  sub_10008956C(*(v0 + 40), type metadata accessor for SignatureAnalysisDecisioningComponent.SignatureAnalysisSetupInput);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100083A50(uint64_t a1)
{
  v2 = static os_log_type_t.default.getter();
  sub_10005E11C(v2, 0xD00000000000001CLL, 0x800000010009AD60, 0xD000000000000063, 0x8000000100094070, 30);
  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_100083AFC(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  if (a1)
  {
    swift_getObjectType();
    v4 = dispatch thunk of Actor.unownedExecutor.getter();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v3[5] = v4;
  v3[6] = v6;

  return _swift_task_switch(sub_100083B90, v4, v6);
}

uint64_t sub_100083B90()
{
  *(v0 + 56) = **(v0 + 32);
  *(v0 + 64) = sub_100002074(&qword_1000B6CC0, &qword_100091740);
  if (ThrowingTaskGroup.isEmpty.getter())
  {
    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    *(v0 + 72) = 0;
    v3 = swift_task_alloc();
    *(v0 + 80) = v3;
    v4 = sub_100002074(&qword_1000B7A50, &qword_1000931B0);
    *v3 = v0;
    v3[1] = sub_100083CC8;
    v5 = *(v0 + 24);
    v6 = *(v0 + 16);

    return ThrowingTaskGroup.next(isolation:)(v0 + 96, v6, v5, v4);
  }
}

uint64_t sub_100083CC8()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = *(v2 + 40);
    v4 = *(v2 + 48);
    v5 = sub_100083F14;
  }

  else
  {
    *(v2 + 97) = *(v2 + 96);
    v3 = *(v2 + 40);
    v4 = *(v2 + 48);
    v5 = sub_100083DE4;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_100083DE4()
{
  if (*(v0 + 97))
  {
    v1 = *(v0 + 72);
    if (ThrowingTaskGroup.isEmpty.getter())
    {
      if (v1)
      {
        swift_willThrow();
      }

      v2 = *(v0 + 8);

      return v2();
    }

    *(v0 + 72) = v1;
  }

  v4 = swift_task_alloc();
  *(v0 + 80) = v4;
  v5 = sub_100002074(&qword_1000B7A50, &qword_1000931B0);
  *v4 = v0;
  v4[1] = sub_100083CC8;
  v6 = *(v0 + 24);
  v7 = *(v0 + 16);

  return ThrowingTaskGroup.next(isolation:)(v0 + 96, v7, v6, v5);
}

uint64_t sub_100083F14()
{
  v1 = v0[11];
  if (v0[9])
  {

    v1 = v0[9];
  }

  if (ThrowingTaskGroup.isEmpty.getter())
  {
    if (v1)
    {
      swift_willThrow();
    }

    v2 = v0[1];

    return v2();
  }

  else
  {
    v0[9] = v1;
    v4 = swift_task_alloc();
    v0[10] = v4;
    v5 = sub_100002074(&qword_1000B7A50, &qword_1000931B0);
    *v4 = v0;
    v4[1] = sub_100083CC8;
    v6 = v0[3];
    v7 = v0[2];

    return ThrowingTaskGroup.next(isolation:)(v0 + 12, v7, v6, v5);
  }
}

uint64_t sub_100084050(uint64_t a1)
{
  v158 = a1;
  v2 = type metadata accessor for Locale();
  v156 = *(v2 - 8);
  v157 = v2;
  __chkstk_darwin(v2);
  v4 = &v152[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_100002074(&qword_1000B6A68, &qword_10008F6F0);
  __chkstk_darwin(v5 - 8);
  v7 = &v152[-v6];
  v8 = sub_100002074(&qword_1000B9058, &qword_100093140);
  __chkstk_darwin(v8 - 8);
  v10 = &v152[-v9];
  v11 = type metadata accessor for SpamDecisioningAsset(0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v152[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = OBJC_IVAR____TtC13frauddefensed22SpamDecisioningManager_spamAsset;
  swift_beginAccess();
  sub_100011DFC(v1 + v15, v10, &qword_1000B9058, &qword_100093140);
  if ((*(v12 + 48))(v10, 1, v11) != 1)
  {
    sub_1000887CC(v10, v14, type metadata accessor for SpamDecisioningAsset);
    v17 = *&v14[*(v11 + 32)];
    v18 = *(v17 + 352);
    v153 = *(v17 + 353);
    v154 = *(v17 + 354);
    v155 = v18;
    v19 = *(v17 + 360);
    v20 = *(v17 + 368);
    v21 = *(v17 + 376);

    static Locale.current.getter();
    Locale.region.getter();
    (*(v156 + 8))(v4, v157);
    v22 = type metadata accessor for Locale.Region();
    v23 = *(v22 - 8);
    if ((*(v23 + 48))(v7, 1, v22) == 1)
    {
      sub_10000BC10(v7, &qword_1000B6A68, &qword_10008F6F0);
      v24 = 0xE700000000000000;
      v25 = 0x6E776F6E6B6E75;
    }

    else
    {
      v25 = Locale.Region.identifier.getter();
      v24 = v26;
      (*(v23 + 8))(v7, v22);
    }

    v27 = v158;
    v162 = *(v158 + 16);
    v161 = *(v158 + 16);
    v159 = 5456722;
    v160 = 0xE300000000000000;
    sub_10001C1B8();
    swift_bridgeObjectRetain_n();
    if (StringProtocol.contains<A>(_:)() & 1) != 0 && (!v153 ? (v28 = 0) : (v28 = 256), (v29 = v28 | v155, !v154) ? (v30 = 0) : (v30 = 0x10000), (sub_100086A30(5456722, 0xE300000000000000, v25, v24, v29 | v30, v19, v20, v21, v27)))
    {
      v21, v31, v32, v33, v34, v35, v36, v37;
      v20, v38, v39, v40, v41, v42, v43, v44;
      v19, v45, v46, v47, v48, v49, v50, v51;
      v24, v52, v53, v54, v55, v56, v57, v58;
      sub_100026E0C(&v162);
    }

    else
    {
      v161 = v162;
      v159 = 0x6567617373654D69;
      v160 = 0xE800000000000000;
      v59 = StringProtocol.contains<A>(_:)();
      sub_100026E0C(&v162);
      if ((v59 & 1) == 0 || (!v153 ? (v60 = 0) : (v60 = 256), (v61 = v60 | v155, !v154) ? (v62 = 0) : (v62 = 0x10000), (sub_100086A30(0x6567617373654D69, 0xE800000000000000, v25, v24, v61 | v62, v19, v20, v21, v158) & 1) == 0))
      {
        v161 = v162;
        v159 = 5459283;
        v160 = 0xE300000000000000;
        v91 = StringProtocol.contains<A>(_:)();
        sub_100026E0C(&v162);
        if (v91)
        {
          if (v153)
          {
            v99 = 256;
          }

          else
          {
            v99 = 0;
          }

          v100 = v99 | v155;
          if (v154)
          {
            v101 = 0x10000;
          }

          else
          {
            v101 = 0;
          }

          v16 = sub_100086A30(5459283, 0xE300000000000000, v25, v24, v100 | v101, v19, v20, v21, v158);
          v21, v102, v103, v104, v105, v106, v107, v108;
          v20, v109, v110, v111, v112, v113, v114, v115;
          v19, v116, v117, v118, v119, v120, v121, v122;
          v24, v123, v124, v125, v126, v127, v128, v129;
        }

        else
        {
          v21, v92, v93, v94, v95, v96, v97, v98;
          v20, v130, v131, v132, v133, v134, v135, v136;
          v19, v137, v138, v139, v140, v141, v142, v143;
          v24, v144, v145, v146, v147, v148, v149, v150;
          v16 = 0;
        }

        goto LABEL_34;
      }

      v21, v63, v64, v65, v66, v67, v68, v69;
      v20, v70, v71, v72, v73, v74, v75, v76;
      v19, v77, v78, v79, v80, v81, v82, v83;
      v24, v84, v85, v86, v87, v88, v89, v90;
    }

    sub_100026E0C(&v162);
    v16 = 1;
LABEL_34:
    sub_10008956C(v14, type metadata accessor for SpamDecisioningAsset);
    return v16 & 1;
  }

  sub_10000BC10(v10, &qword_1000B9058, &qword_100093140);
  v16 = 0;
  return v16 & 1;
}

uint64_t sub_100084690(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[35] = a7;
  v8[36] = a8;
  v8[33] = a5;
  v8[34] = a6;
  v8[31] = a3;
  v8[32] = a4;
  v8[30] = a2;
  v9 = *(type metadata accessor for SpamDecisioningAsset(0) - 8);
  v8[37] = v9;
  v8[38] = *(v9 + 64);
  v8[39] = swift_task_alloc();
  v10 = type metadata accessor for Logger();
  v8[40] = v10;
  v11 = *(v10 - 8);
  v8[41] = v11;
  v8[42] = *(v11 + 64);
  v8[43] = swift_task_alloc();
  sub_100002074(&qword_1000B7580, &qword_10008EEC0);
  v8[44] = swift_task_alloc();

  return _swift_task_switch(sub_1000847FC, 0, 0);
}

uint64_t sub_1000847FC()
{
  v1 = v0[31];
  if (*v1 == 1)
  {
    v2 = v0[43];
    v3 = v0[44];
    v72 = v3;
    v4 = v0[41];
    v6 = v0[39];
    v5 = v0[40];
    v48 = v5;
    v50 = v2;
    v46 = v6;
    v54 = v0[38];
    v58 = v0[42];
    v52 = v0[37];
    v68 = v0[35];
    v70 = v0[36];
    v7 = v0[33];
    v8 = v0[34];
    v9 = v0[32];
    v10 = type metadata accessor for TaskPriority();
    (*(*(v10 - 8) + 56))(v3, 1, 1, v10);
    v64 = *(v9 + OBJC_IVAR____TtC13frauddefensed22SpamDecisioningManager_senderLookUpDecisioningComponent);
    v66 = *(v9 + OBJC_IVAR____TtC13frauddefensed22SpamDecisioningManager_analyticsManager);
    v62 = *(v9 + OBJC_IVAR____TtC13frauddefensed22SpamDecisioningManager_signpostsManager);
    (*(v4 + 16))(v2, v9 + OBJC_IVAR____TtC13frauddefensed22SpamDecisioningManager_logger, v5);
    sub_100088834(v7, v6, type metadata accessor for SpamDecisioningAsset);
    v11 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v12 = (v58 + *(v52 + 80) + v11) & ~*(v52 + 80);
    v13 = (v54 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
    v59 = (v13 + 113) & 0xFFFFFFFFFFFFFFF8;
    v55 = (v59 + 15) & 0xFFFFFFFFFFFFFFF8;
    v14 = (v55 + 15) & 0xFFFFFFFFFFFFFFF8;
    v15 = (v14 + 15) & 0xFFFFFFFFFFFFFFF8;
    v16 = swift_allocObject();
    *(v16 + 16) = 0;
    *(v16 + 24) = 0;
    (*(v4 + 32))(v16 + v11, v50, v48);
    sub_1000887CC(v46, v16 + v12, type metadata accessor for SpamDecisioningAsset);
    v17 = (v16 + v13);
    v19 = v8[1];
    v18 = v8[2];
    *v17 = *v8;
    v17[1] = v19;
    v17[2] = v18;
    v21 = v8[4];
    v20 = v8[5];
    v22 = v8[3];
    *(v17 + 90) = *(v8 + 90);
    v17[4] = v21;
    v17[5] = v20;
    v17[3] = v22;
    *(v16 + v59) = v62;
    *(v16 + v55) = v64;
    *(v16 + v14) = v68;
    *(v16 + v15) = v70;
    *(v16 + ((v15 + 15) & 0xFFFFFFFFFFFFFFF8)) = v66;

    sub_1000886EC(v8, (v0 + 16));

    sub_100048A98(v72, &unk_1000931A0, v16);
    sub_10000BC10(v72, &qword_1000B7580, &qword_10008EEC0);
    v1 = v0[31];
  }

  if (v1[1] == 1)
  {
    v23 = v0[43];
    v24 = v0[44];
    v73 = v24;
    v25 = v0[41];
    v26 = v0[39];
    v27 = v0[40];
    v49 = v27;
    v51 = v23;
    v47 = v26;
    v56 = v0[38];
    v60 = v0[42];
    v53 = v0[37];
    v69 = v0[35];
    v71 = v0[36];
    v28 = v0[33];
    v29 = v0[34];
    v30 = v0[32];
    v31 = type metadata accessor for TaskPriority();
    (*(*(v31 - 8) + 56))(v24, 1, 1, v31);
    v65 = *(v30 + 16);
    v67 = *(v30 + OBJC_IVAR____TtC13frauddefensed22SpamDecisioningManager_analyticsManager);
    v63 = *(v30 + OBJC_IVAR____TtC13frauddefensed22SpamDecisioningManager_signpostsManager);
    (*(v25 + 16))(v23, v30 + OBJC_IVAR____TtC13frauddefensed22SpamDecisioningManager_logger, v27);
    sub_100088834(v28, v26, type metadata accessor for SpamDecisioningAsset);
    v32 = (*(v25 + 80) + 32) & ~*(v25 + 80);
    v33 = (v60 + *(v53 + 80) + v32) & ~*(v53 + 80);
    v34 = (v56 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
    v61 = (v34 + 113) & 0xFFFFFFFFFFFFFFF8;
    v57 = (v61 + 15) & 0xFFFFFFFFFFFFFFF8;
    v35 = (v57 + 15) & 0xFFFFFFFFFFFFFFF8;
    v36 = (v35 + 15) & 0xFFFFFFFFFFFFFFF8;
    v37 = swift_allocObject();
    *(v37 + 16) = 0;
    *(v37 + 24) = 0;
    (*(v25 + 32))(v37 + v32, v51, v49);
    sub_1000887CC(v47, v37 + v33, type metadata accessor for SpamDecisioningAsset);
    v38 = (v37 + v34);
    v40 = v29[1];
    v39 = v29[2];
    *v38 = *v29;
    v38[1] = v40;
    v38[2] = v39;
    v42 = v29[4];
    v41 = v29[5];
    v43 = v29[3];
    *(v38 + 90) = *(v29 + 90);
    v38[4] = v42;
    v38[5] = v41;
    v38[3] = v43;
    *(v37 + v61) = v63;
    *(v37 + v57) = v65;
    *(v37 + v35) = v69;
    *(v37 + v36) = v71;
    *(v37 + ((v36 + 15) & 0xFFFFFFFFFFFFFFF8)) = v67;
    sub_1000886EC(v29, (v0 + 2));

    sub_100048A98(v73, &unk_100093190, v37);
    sub_10000BC10(v73, &qword_1000B7580, &qword_10008EEC0);
  }

  v44 = swift_task_alloc();
  v0[45] = v44;
  *v44 = v0;
  v44[1] = sub_100084DA4;

  return sub_100083AFC(0, 0);
}

uint64_t sub_100084DA4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100084EF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 384) = v13;
  *(v8 + 368) = v12;
  *(v8 + 352) = a7;
  *(v8 + 360) = a8;
  *(v8 + 336) = a5;
  *(v8 + 344) = a6;
  *(v8 + 328) = a4;
  v9 = type metadata accessor for UUID();
  *(v8 + 392) = v9;
  *(v8 + 400) = *(v9 - 8);
  *(v8 + 408) = swift_task_alloc();
  *(v8 + 416) = type metadata accessor for SenderLookUpDecisioningComponent.SenderLookUpInput(0);
  *(v8 + 424) = swift_task_alloc();

  return _swift_task_switch(sub_100085000, 0, 0);
}

uint64_t sub_100085000(uint64_t a1)
{
  v3 = v1[52];
  v2 = v1[53];
  v5 = v1[50];
  v4 = v1[51];
  v6 = v1[49];
  v8 = v1[43];
  v7 = v1[44];
  v9 = v1[42];
  v10 = static os_log_type_t.debug.getter();
  sub_10005E11C(v10, 0xD00000000000002ELL, 0x800000010009A9D0, 0xD00000000000005BLL, 0x8000000100095700, 283);
  sub_100088834(v9, v2, type metadata accessor for SpamDecisioningAsset);
  v11 = (v2 + *(v3 + 20));
  v13 = v8[1];
  v12 = v8[2];
  *v11 = *v8;
  v11[1] = v13;
  v11[2] = v12;
  v14 = v8[3];
  v15 = v8[4];
  v16 = v8[5];
  *(v11 + 90) = *(v8 + 90);
  v11[4] = v15;
  v11[5] = v16;
  v11[3] = v14;
  sub_1000886EC(v8, (v1 + 2));
  UUID.init()();
  v1[54] = UUID.uuidString.getter();
  v1[55] = v17;
  (*(v5 + 8))(v4, v6);

  return _swift_task_switch(sub_10008515C, v7, 0);
}

uint64_t sub_10008515C()
{
  sub_10006C4A8("senderLookUp", 12, 2, *(v0 + 432), *(v0 + 440), 0);
  v1 = swift_task_alloc();
  *(v0 + 448) = v1;
  *v1 = v0;
  v1[1] = sub_100085214;
  v2 = *(v0 + 424);

  return sub_100075BB0(v2);
}

uint64_t sub_100085214(char a1)
{
  v4 = *v2;
  *(*v2 + 456) = v1;

  if (v1)
  {
    v5 = sub_1000856C4;
    v6 = 0;
  }

  else
  {
    v6 = *(v4 + 352);
    *(v4 + 122) = a1 & 1;
    v5 = sub_10008534C;
  }

  return _swift_task_switch(v5, v6, 0);
}

uint64_t sub_10008534C()
{
  v1 = *(v0 + 440);
  sub_10006C4A8("senderLookUp", 12, 2, *(v0 + 432), v1, 1);
  v1, v2, v3, v4, v5, v6, v7, v8;

  return _swift_task_switch(sub_1000853D8, 0, 0);
}

uint64_t sub_1000853D8(uint64_t a1)
{
  v47 = v1;
  v2 = *(v1 + 122);
  v3 = *(v1 + 376);
  v4 = static os_log_type_t.default.getter();
  v44 = 0;
  v45 = 0xE000000000000000;
  _StringGuts.grow(_:)(72);
  v5._countAndFlagsBits = 0xD000000000000044;
  v5._object = 0x800000010009AA80;
  String.append(_:)(v5);
  if (v2)
  {
    v6 = 1702195828;
  }

  else
  {
    v6 = 0x65736C6166;
  }

  if (v2)
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  v8 = v7;
  String.append(_:)(*&v6);
  v7, v9, v10, v11, v12, v13, v14, v15;
  v16._countAndFlagsBits = 32032;
  v16._object = 0xE200000000000000;
  String.append(_:)(v16);
  sub_10005E11C(v4, v44, v45, 0xD00000000000005BLL, 0x8000000100095700, 296);
  v45, v17, v18, v19, v20, v21, v22, v23;
  v46 = &type metadata for Bool;
  LOBYTE(v44) = v2;
  swift_beginAccess();
  sub_100056920(&v44, 0xD000000000000014, 0x800000010009A750);
  swift_endAccess();
  swift_beginAccess();
  *(v3 + 16) = v2;
  sub_100002074(&qword_1000B6CC8, &unk_10008F950);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10008F580;
  *(inited + 32) = 0x6B6F6F6C5F646964;
  *(inited + 40) = 0xEB0000000070755FLL;
  sub_100011CC4();
  *(inited + 48) = NSNumber.init(BOOLeanLiteral:)(v2);
  v25 = sub_100011A78(inited);
  swift_setDeallocating();
  sub_10000BC10(inited + 32, &qword_1000B6CD0, &qword_100092B90);
  v26 = sub_100056EF0(0, v25, 0, 0);
  v25, v27, v28, v29, v30, v31, v32, v33;
  v26, v34, v35, v36, v37, v38, v39, v40;
  sub_10008956C(*(v1 + 424), type metadata accessor for SenderLookUpDecisioningComponent.SenderLookUpInput);
  v41 = static os_log_type_t.debug.getter();
  sub_10005E11C(v41, 0xD00000000000002ELL, 0x800000010009AA50, 0xD00000000000005BLL, 0x8000000100095700, 285);

  v42 = *(v1 + 8);

  return v42();
}

uint64_t sub_1000856C4(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(v8 + 456);
  *(v8 + 440), a2, a3, a4, a5, a6, a7, a8;
  v10 = static os_log_type_t.error.getter();
  _StringGuts.grow(_:)(67);
  v11._object = 0x800000010009AA10;
  v11._countAndFlagsBits = 0xD00000000000003FLL;
  String.append(_:)(v11);
  swift_getErrorValue();
  v12._countAndFlagsBits = Error.localizedDescription.getter();
  object = v12._object;
  String.append(_:)(v12);
  object, v14, v15, v16, v17, v18, v19, v20;
  v21._countAndFlagsBits = 32032;
  v21._object = 0xE200000000000000;
  String.append(_:)(v21);
  sub_10005E11C(v10, 0, 0xE000000000000000, 0xD00000000000005BLL, 0x8000000100095700, 308);
  0xE000000000000000, v22, v23, v24, v25, v26, v27, v28;
  *(v8 + 312) = v9;
  swift_errorRetain();
  sub_100002074(&qword_1000B6CC0, &qword_100091740);
  if (swift_dynamicCast())
  {
    v29 = *(v8 + 280);
    v30 = *(v8 + 288);
    v31 = *(v8 + 296);
    v32 = sub_10004F2E4(v29, v30, *(v8 + 296));
    v34 = v33;
    sub_100011CAC(v29, v30, v31, v35, v36, v37, v38, v39);
    v40 = sub_100056EF0(0, 0, v32, v34);
    v34, v41, v42, v43, v44, v45, v46, v47;
    v55 = v40;
  }

  else
  {
    _StringGuts.grow(_:)(67);
    v56._object = 0x800000010009AA10;
    v56._countAndFlagsBits = 0xD00000000000003FLL;
    String.append(_:)(v56);
    swift_getErrorValue();
    v57._countAndFlagsBits = Error.localizedDescription.getter();
    v58 = v57._object;
    String.append(_:)(v57);
    v58, v59, v60, v61, v62, v63, v64, v65;
    v66._countAndFlagsBits = 32032;
    v66._object = 0xE200000000000000;
    String.append(_:)(v66);
    0xE000000000000000, v67, v68, v69, v70, v71, v72, v73;
    v55 = sub_100056EF0(0, 0, 0xD000000000000013, 0x8000000100097030);
  }

  v55, v48, v49, v50, v51, v52, v53, v54;

  sub_10008956C(*(v8 + 424), type metadata accessor for SenderLookUpDecisioningComponent.SenderLookUpInput);
  v74 = static os_log_type_t.debug.getter();
  sub_10005E11C(v74, 0xD00000000000002ELL, 0x800000010009AA50, 0xD00000000000005BLL, 0x8000000100095700, 285);

  v75 = *(v8 + 8);

  return v75();
}

uint64_t sub_1000859BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 1288) = v13;
  *(v8 + 1272) = v12;
  *(v8 + 1264) = a8;
  *(v8 + 1256) = a7;
  *(v8 + 1248) = a6;
  *(v8 + 1240) = a5;
  *(v8 + 1232) = a4;
  v9 = type metadata accessor for UUID();
  *(v8 + 1296) = v9;
  *(v8 + 1304) = *(v9 - 8);
  *(v8 + 1312) = swift_task_alloc();
  *(v8 + 1320) = type metadata accessor for SignatureAnalysisDecisioningComponent.SignatureAnalysisInput(0);
  *(v8 + 1328) = swift_task_alloc();

  return _swift_task_switch(sub_100085AD4, 0, 0);
}

uint64_t sub_100085AD4(uint64_t a1)
{
  v2 = v1[166];
  v3 = v1[165];
  v4 = v1[164];
  v5 = v1[163];
  v6 = v1[162];
  v7 = v1[157];
  v8 = v1[156];
  v9 = v1[155];
  v10 = static os_log_type_t.debug.getter();
  sub_10005E11C(v10, 0xD000000000000033, 0x800000010009AAD0, 0xD00000000000005BLL, 0x8000000100095700, 323);
  sub_100088834(v9, v2, type metadata accessor for SpamDecisioningAsset);
  v11 = (v2 + *(v3 + 20));
  v12 = *(v8 + 90);
  v14 = v8[4];
  v13 = v8[5];
  v11[3] = v8[3];
  v11[4] = v14;
  v11[5] = v13;
  *(v11 + 90) = v12;
  v16 = v8[1];
  v15 = v8[2];
  *v11 = *v8;
  v11[1] = v16;
  v11[2] = v15;
  *(v2 + *(v3 + 24)) = 1;
  sub_1000886EC(v8, (v1 + 2));
  UUID.init()();
  v1[167] = UUID.uuidString.getter();
  v1[168] = v17;
  (*(v5 + 8))(v4, v6);

  return _swift_task_switch(sub_100085C50, v7, 0);
}

uint64_t sub_100085C50()
{
  sub_10006C4A8("signatureAnalysis", 17, 2, *(v0 + 1336), *(v0 + 1344), 0);
  v1 = swift_task_alloc();
  *(v0 + 1352) = v1;
  *v1 = v0;
  v1[1] = sub_100085D10;
  v2 = *(v0 + 1328);

  return sub_100036B44(v0 + 128, v2);
}

uint64_t sub_100085D10()
{
  v2 = *v1;
  *(*v1 + 1360) = v0;

  if (v0)
  {
    *(v2 + 1344), v3, v4, v5, v6, v7, v8, v9;
    v10 = sub_100086668;
    v11 = 0;
  }

  else
  {
    v11 = *(v2 + 1256);
    v12 = *(v2 + 208);
    *(v2 + 304) = *(v2 + 192);
    *(v2 + 320) = v12;
    *(v2 + 329) = *(v2 + 217);
    v13 = *(v2 + 144);
    *(v2 + 240) = *(v2 + 128);
    *(v2 + 256) = v13;
    v14 = *(v2 + 176);
    *(v2 + 272) = *(v2 + 160);
    *(v2 + 288) = v14;
    v10 = sub_100085E58;
  }

  return _swift_task_switch(v10, v11, 0);
}

uint64_t sub_100085E58()
{
  v1 = *(v0 + 1344);
  sub_10006C4A8("signatureAnalysis", 17, 2, *(v0 + 1336), v1, 1);
  v1, v2, v3, v4, v5, v6, v7, v8;

  return _swift_task_switch(sub_100085EE8, 0, 0);
}

uint64_t sub_100085EE8(uint64_t a1)
{
  v127 = v1;
  v2 = v1 + 968;
  v3 = static os_log_type_t.default.getter();
  v124 = 0;
  v125 = 0xE000000000000000;
  _StringGuts.grow(_:)(82);
  v4._countAndFlagsBits = 0xD00000000000004ELL;
  v4._object = 0x800000010009ABC0;
  String.append(_:)(v4);
  v5 = *(v1 + 208);
  *(v1 + 416) = *(v1 + 192);
  *(v1 + 432) = v5;
  *(v1 + 441) = *(v1 + 217);
  v6 = *(v1 + 144);
  *(v1 + 352) = *(v1 + 128);
  *(v1 + 368) = v6;
  v7 = *(v1 + 176);
  *(v1 + 384) = *(v1 + 160);
  *(v1 + 400) = v7;
  sub_10004D5D0(v1 + 128, v1 + 464);
  v8._countAndFlagsBits = String.init<A>(describing:)();
  object = v8._object;
  String.append(_:)(v8);
  object, v10, v11, v12, v13, v14, v15, v16;
  v17._countAndFlagsBits = 32032;
  v17._object = 0xE200000000000000;
  String.append(_:)(v17);
  sub_10005E11C(v3, v124, v125, 0xD00000000000005BLL, 0x8000000100095700, 336);
  v125, v18, v19, v20, v21, v22, v23, v24;
  v25 = *(v1 + 128);
  v26 = *(v1 + 160);
  if (v26)
  {
    v28 = *(v1 + 168);
    v27 = *(v1 + 176);
    v30 = *(v1 + 144);
    v29 = *(v1 + 152);
    v31 = *(v1 + 136);
    *(v1 + 800) = v25 & 1;
    *(v1 + 804) = HIDWORD(v25);
    *(v1 + 808) = v31 & 1;
    *(v1 + 812) = HIDWORD(v31);
    *(v1 + 816) = v30 & 1;
    *(v1 + 824) = v29;
    *(v1 + 832) = v26;
    *(v1 + 840) = v28;
    *(v1 + 848) = v27;
    v123 = v27;
    *(v1 + 856) = v25;
    *(v1 + 864) = v31;
    *(v1 + 872) = v30;
    *(v1 + 880) = v29;
    *(v1 + 888) = v26;
    *(v1 + 896) = v28;
    *(v1 + 904) = v27;
    sub_10005DFD8(v1 + 856, v1 + 912);
    v32 = sub_10005C37C();
    v33 = v25;
    v25 = v34;
    v35 = v28;
    v2 = v1 + 968;
    sub_10004D630(v33, v31, v30, v29, v26, v35, v123, v36);
    v126 = &type metadata for String;
    v124 = v32;
    v125 = v25;
    LOBYTE(v25) = v33;
    swift_beginAccess();
    sub_100056920(&v124, 0xD000000000000019, 0x800000010009A730);
    swift_endAccess();
  }

  v37 = *(v1 + 1280);
  swift_beginAccess();
  v38 = *(v37 + 24);
  v39 = *(v37 + 56);
  *(v1 + 592) = *(v37 + 40);
  *(v1 + 608) = v39;
  *(v1 + 576) = v38;
  v40 = *(v37 + 72);
  v41 = *(v37 + 88);
  v42 = *(v37 + 104);
  *(v1 + 665) = *(v37 + 113);
  *(v1 + 640) = v41;
  *(v1 + 656) = v42;
  *(v1 + 624) = v40;
  v44 = *(v1 + 304);
  v43 = *(v1 + 320);
  v45 = *(v1 + 329);
  *(v37 + 72) = *(v1 + 288);
  *(v37 + 113) = v45;
  *(v37 + 104) = v43;
  *(v37 + 88) = v44;
  v46 = *(v1 + 240);
  v47 = *(v1 + 256);
  *(v37 + 56) = *(v1 + 272);
  *(v37 + 40) = v47;
  *(v37 + 24) = v46;
  sub_10004D5D0(v1 + 128, v1 + 688);
  sub_10000BC10(v1 + 576, &qword_1000B9068, &qword_100093168);
  sub_100002074(&qword_1000B6CC8, &unk_10008F950);
  v48 = swift_allocObject();
  *(v48 + 16) = xmmword_10008F850;
  *(v48 + 32) = 0x79745F6863746566;
  *(v48 + 40) = 0xEA00000000006570;
  *(v48 + 48) = String._bridgeToObjectiveC()();
  *(v48 + 56) = 0x6374616D5F646964;
  *(v48 + 64) = 0xE900000000000068;
  sub_100011CC4();
  *(v48 + 72) = NSNumber.init(BOOLeanLiteral:)((v26 != 0) & v25);
  v49 = sub_100011A78(v48);
  swift_setDeallocating();
  sub_100002074(&qword_1000B6CD0, &qword_100092B90);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  *(v2 + 32) = *(v1 + 216);
  v50 = *(v1 + 200);
  *v2 = *(v1 + 184);
  *(v2 + 16) = v50;
  v51 = *(v1 + 1000);
  if (v51 >> 8 < 0xFF)
  {
    v52 = *(v1 + 976);
    if ((v51 & 0x100) != 0)
    {
      sub_10004F2E4(*(v1 + 968), v52, *(v1 + 984));
      v82 = v81;
      sub_100011DFC(v2, v1 + 1008, &qword_1000B9070, &qword_1000931A8);
      v83 = String._bridgeToObjectiveC()();
      v82, v84, v85, v86, v87, v88, v89, v90;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v124 = v49;
      sub_10005B524(v83, 0x726F727265, 0xE500000000000000, isUniquelyReferenced_nonNull_native);
    }

    else
    {
      *(v1 + 1368) = v51;
      v53 = sub_10005BC54(v52);
      sub_100056BB0(v53);
      v55 = v54;
      sub_100011DFC(v2, v1 + 1048, &qword_1000B9070, &qword_1000931A8);
      v56 = String._bridgeToObjectiveC()();
      v55, v57, v58, v59, v60, v61, v62, v63;
      v64 = swift_isUniquelyReferenced_nonNull_native();
      v124 = v49;
      sub_10005B524(v56, 0x5F64656863746566, 0xED0000746E756F63, v64);
      v65 = v124;
      v66 = sub_10005BD48();
      sub_100056D70(v66);
      v68 = v67;
      v69 = String._bridgeToObjectiveC()();
      v68, v70, v71, v72, v73, v74, v75, v76;
      v77 = swift_isUniquelyReferenced_nonNull_native();
      v124 = v65;
      sub_10005B524(v69, 0xD000000000000010, 0x80000001000946B0, v77);
      v78 = v124;
      isa = NSNumber.init(BOOLeanLiteral:)(*(v1 + 1368)).super.super.isa;
      v80 = swift_isUniquelyReferenced_nonNull_native();
      v124 = v78;
      sub_10005B524(isa, 0xD00000000000001BLL, 0x80000001000946D0, v80);
    }

    sub_10000BC10(v2, &qword_1000B9070, &qword_1000931A8);
    sub_10004D588(v1 + 128);
    v49 = v124;
    if (*(v1 + 232))
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  sub_10004D588(v1 + 128);
  if ((*(v1 + 232) & 1) == 0)
  {
LABEL_10:
    v92 = sub_10005BC54(*(v1 + 224));
    sub_100056BB0(v92);
    v94 = v93;
    v95 = String._bridgeToObjectiveC()();
    v94, v96, v97, v98, v99, v100, v101, v102;
    v103 = swift_isUniquelyReferenced_nonNull_native();
    v124 = v49;
    sub_10005B524(v95, 0xD000000000000013, 0x8000000100094690, v103);
    v49 = v124;
  }

LABEL_11:
  v104 = *(v1 + 1328);
  v105 = sub_100056EF0(1u, v49, 0, 0);
  v49, v106, v107, v108, v109, v110, v111, v112;
  v105, v113, v114, v115, v116, v117, v118, v119;
  sub_10008956C(v104, type metadata accessor for SignatureAnalysisDecisioningComponent.SignatureAnalysisInput);
  v120 = static os_log_type_t.debug.getter();
  sub_10005E11C(v120, 0xD000000000000033, 0x800000010009AB80, 0xD00000000000005BLL, 0x8000000100095700, 325);

  v121 = *(v1 + 8);

  return v121();
}

uint64_t sub_100086668()
{
  v1 = *(v0 + 1360);
  sub_10008956C(*(v0 + 1328), type metadata accessor for SignatureAnalysisDecisioningComponent.SignatureAnalysisInput);
  v2 = static os_log_type_t.error.getter();
  _StringGuts.grow(_:)(72);
  v3._object = 0x800000010009AB30;
  v3._countAndFlagsBits = 0xD000000000000044;
  String.append(_:)(v3);
  swift_getErrorValue();
  v4._countAndFlagsBits = Error.localizedDescription.getter();
  object = v4._object;
  String.append(_:)(v4);
  object, v6, v7, v8, v9, v10, v11, v12;
  v13._countAndFlagsBits = 32032;
  v13._object = 0xE200000000000000;
  String.append(_:)(v13);
  sub_10005E11C(v2, 0, 0xE000000000000000, 0xD00000000000005BLL, 0x8000000100095700, 367);
  0xE000000000000000, v14, v15, v16, v17, v18, v19, v20;
  sub_100002074(&qword_1000B6CC8, &unk_10008F950);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_10008F580;
  *(v21 + 32) = 0x79745F6863746566;
  *(v21 + 40) = 0xEA00000000006570;
  *(v21 + 48) = String._bridgeToObjectiveC()();
  v22 = sub_100011A78(v21);
  swift_setDeallocating();
  sub_10000BC10(v21 + 32, &qword_1000B6CD0, &qword_100092B90);
  swift_deallocClassInstance();
  *(v0 + 1216) = v1;
  swift_errorRetain();
  sub_100002074(&qword_1000B6CC0, &qword_100091740);
  if (swift_dynamicCast())
  {
    v23 = *(v0 + 1184);
    v24 = *(v0 + 1192);
    v25 = *(v0 + 1200);
    v26 = sub_10004F2E4(v23, v24, *(v0 + 1200));
    v28 = v27;
    sub_100011CAC(v23, v24, v25, v29, v30, v31, v32, v33);
    v34 = sub_100056EF0(1u, v22, v26, v28);

    v28, v35, v36, v37, v38, v39, v40, v41;
  }

  else
  {
    _StringGuts.grow(_:)(72);
    v49._object = 0x800000010009AB30;
    v49._countAndFlagsBits = 0xD000000000000044;
    String.append(_:)(v49);
    swift_getErrorValue();
    v50._countAndFlagsBits = Error.localizedDescription.getter();
    v51 = v50._object;
    String.append(_:)(v50);
    v51, v52, v53, v54, v55, v56, v57, v58;
    v59._countAndFlagsBits = 32032;
    v59._object = 0xE200000000000000;
    String.append(_:)(v59);
    0xE000000000000000, v60, v61, v62, v63, v64, v65, v66;
    v34 = sub_100056EF0(1u, v22, 0xD000000000000018, 0x8000000100097050);
  }

  v22, v42, v43, v44, v45, v46, v47, v48;
  v34, v67, v68, v69, v70, v71, v72, v73;
  v74 = static os_log_type_t.debug.getter();
  sub_10005E11C(v74, 0xD000000000000033, 0x800000010009AB80, 0xD00000000000005BLL, 0x8000000100095700, 325);

  v75 = *(v0 + 8);

  return v75();
}

uint64_t sub_100086A30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if ((a1 != 5456722 || a2 != 0xE300000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    if (a1 == 0x6567617373654D69 && a2 == 0xE800000000000000)
    {
      a8 = a7;
    }

    else
    {
      a8 = a7;
      if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        if (a1 == 5459283 && a2 == 0xE300000000000000)
        {
          a8 = a6;
        }

        else
        {
          v17 = _stringCompareWithSmolCheck(_:_:expecting:)();
          v18 = 0;
          a8 = a6;
          if ((v17 & 1) == 0)
          {
            goto LABEL_13;
          }
        }
      }
    }
  }

  v18 = sub_100021018(a3, a4, a8);
LABEL_13:
  if (*(a9 + 105) > 1u)
  {
    if (*(a9 + 105) == 2)
    {
      a5 = (a5 >> 8) & 1;
    }

    else
    {
      a5 = 0;
    }
  }

  else if (*(a9 + 105))
  {
    a5 = HIWORD(a5) & 1;
  }

  return v18 & a5 & 1;
}

Swift::Int sub_100086B9C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_100086BF8()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

void sub_100086C40(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3._countAndFlagsBits = *a1;
  v4 = a1[1];
  v3._object = v4;
  v5 = _findStringSwitchCase(cases:string:)(&off_1000AE4B8, v3);
  v4, v6, v7, v8, v9, v10, v11, v12;
  *a2 = v5 != 0;
}

uint64_t sub_100086CA8(_BYTE *a1, const char *a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v8 = *a1;
  v9 = 0xE400000000000000;
  v10 = 1684104562;
  if (v8 != 1)
  {
    v10 = 0x646579616C6564;
    v9 = 0xE700000000000000;
  }

  if (*a1)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0x6C617669727261;
  }

  if (v8)
  {
    v12 = v9;
  }

  else
  {
    v12 = 0xE700000000000000;
  }

  v13 = 0xE400000000000000;
  v14 = 1684104562;
  if (*a2 != 1)
  {
    v14 = 0x646579616C6564;
    v13 = 0xE700000000000000;
  }

  if (*a2)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0x6C617669727261;
  }

  if (*a2)
  {
    v16 = v13;
  }

  else
  {
    v16 = 0xE700000000000000;
  }

  if (v11 == v15 && v12 == v16)
  {
    v17 = 1;
  }

  else
  {
    v17 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v12, a2, v15, a4, a5, a6, a7, a8;
  v16, v18, v19, v20, v21, v22, v23, v24;
  return v17 & 1;
}

Swift::Int sub_100086D9C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  v2 = 0xE400000000000000;
  if (v1 != 1)
  {
    v2 = 0xE700000000000000;
  }

  if (v1)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0xE700000000000000;
  }

  String.hash(into:)();
  v3, v4, v5, v6, v7, v8, v9, v10;
  return Hasher._finalize()();
}

void sub_100086E38(uint64_t a1)
{
  v2 = 0xE400000000000000;
  if (*v1 != 1)
  {
    v2 = 0xE700000000000000;
  }

  if (*v1)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0xE700000000000000;
  }

  String.hash(into:)();

  v3, v4, v5, v6, v7, v8, v9, v10;
}

Swift::Int sub_100086EC0()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  v2 = 0xE400000000000000;
  if (v1 != 1)
  {
    v2 = 0xE700000000000000;
  }

  if (v1)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0xE700000000000000;
  }

  String.hash(into:)();
  v3, v4, v5, v6, v7, v8, v9, v10;
  return Hasher._finalize()();
}

unint64_t sub_100086F58@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100088F88(*a1);
  *a2 = result;
  return result;
}

void sub_100086F88(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE400000000000000;
  v5 = 1684104562;
  if (v2 != 1)
  {
    v5 = 0x646579616C6564;
    v4 = 0xE700000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6C617669727261;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_100086FE0()
{
  v1 = 7104878;
  _StringGuts.grow(_:)(119);
  v2._countAndFlagsBits = 0x3D6E696769726FLL;
  v2._object = 0xE700000000000000;
  String.append(_:)(v2);
  String.append(_:)(*(v0 + 16));
  v3._countAndFlagsBits = 0x7265646E6573202CLL;
  v3._object = 0xE90000000000003DLL;
  String.append(_:)(v3);
  String.append(_:)(*(v0 + 32));
  v4._countAndFlagsBits = 0xD000000000000019;
  v4._object = 0x800000010009AC50;
  String.append(_:)(v4);
  if (*(v0 + 72))
  {
    v5 = *(v0 + 64);
    v6 = *(v0 + 72);
  }

  else
  {
    v6 = 0xE300000000000000;
    v5 = 7104878;
  }

  v7._countAndFlagsBits = v5;
  v7._object = v6;
  String.append(_:)(v7);
  v6, v8, v9, v10, v11, v12, v13, v14;
  v15._object = 0x800000010009AC70;
  v15._countAndFlagsBits = 0xD000000000000011;
  String.append(_:)(v15);
  v16._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  object = v16._object;
  String.append(_:)(v16);
  object, v18, v19, v20, v21, v22, v23, v24;
  v25._object = 0x800000010009AC90;
  v25._countAndFlagsBits = 0xD000000000000011;
  String.append(_:)(v25);
  if (*(v0 + 96))
  {
    v26 = *(v0 + 88);
    v27 = *(v0 + 96);
  }

  else
  {
    v27 = 0xE300000000000000;
    v26 = 7104878;
  }

  v28._countAndFlagsBits = v26;
  v28._object = v27;
  String.append(_:)(v28);
  v27, v29, v30, v31, v32, v33, v34, v35;
  v36._countAndFlagsBits = 0x67617373656D202CLL;
  v36._object = 0xEE003D6570795465;
  String.append(_:)(v36);
  if (*(v0 + 104))
  {
    v37 = 7104878;
  }

  else
  {
    v37 = 7369839;
  }

  v38 = 0xE300000000000000;
  String.append(_:)(*&v37);
  0xE300000000000000, v39, v40, v41, v42, v43, v44, v45;
  v46._countAndFlagsBits = 0xD000000000000010;
  v46._object = 0x80000001000960F0;
  String.append(_:)(v46);
  if (*(v0 + 105) > 1u)
  {
    if (*(v0 + 105) == 2)
    {
      v47 = 0xE700000000000000;
      v1 = 0x646579616C6564;
    }

    else
    {
      v47 = 0xE300000000000000;
    }
  }

  else if (*(v0 + 105))
  {
    v47 = 0xE400000000000000;
    v1 = 1684104562;
  }

  else
  {
    v47 = 0xE700000000000000;
    v1 = 0x6C617669727261;
  }

  v48._countAndFlagsBits = v1;
  v48._object = v47;
  String.append(_:)(v48);
  v47, v49, v50, v51, v52, v53, v54, v55;
  return 0;
}

void sub_10008728C(uint64_t a1)
{
  if (*(v1 + 8))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  String.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  if (*(v1 + 72))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
    v2 = *(v1 + 80);
    if (v2)
    {
      goto LABEL_6;
    }

LABEL_13:
    Hasher._combine(_:)(0);
    if (*(v1 + 96))
    {
      goto LABEL_10;
    }

LABEL_14:
    Hasher._combine(_:)(0);
    if (*(v1 + 104))
    {
      goto LABEL_11;
    }

    goto LABEL_15;
  }

  Hasher._combine(_:)(0);
  v2 = *(v1 + 80);
  if (!v2)
  {
    goto LABEL_13;
  }

LABEL_6:
  Hasher._combine(_:)(1u);
  v3 = *(v2 + 16);
  Hasher._combine(_:)(v3);
  if (v3)
  {
    v4 = (v2 + 40);
    do
    {
      v5 = *v4;

      String.hash(into:)();
      v5, v6, v7, v8, v9, v10, v11, v12;
      v4 += 2;
      --v3;
    }

    while (v3);
  }

  if (!*(v1 + 96))
  {
    goto LABEL_14;
  }

LABEL_10:
  Hasher._combine(_:)(1u);
  String.hash(into:)();
  if (*(v1 + 104))
  {
LABEL_11:
    Hasher._combine(_:)(0);
    goto LABEL_16;
  }

LABEL_15:
  Hasher._combine(_:)(1u);
  String.hash(into:)();
LABEL_16:
  v13 = *(v1 + 105);
  if (v13 == 3)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    if (v13)
    {
      if (v13 == 1)
      {
        v14 = 0xE400000000000000;
      }

      else
      {
        v14 = 0xE700000000000000;
      }
    }

    else
    {
      v14 = 0xE700000000000000;
    }

    String.hash(into:)();

    v14, v15, v16, v17, v18, v19, v20, v21;
  }
}

Swift::Int sub_1000874A8()
{
  Hasher.init(_seed:)();
  sub_10008728C(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1000874EC()
{
  Hasher.init(_seed:)();
  sub_10008728C(v1);
  return Hasher._finalize()();
}

BOOL sub_10008752C(_OWORD *a1, _OWORD *a2, uint64_t a3, uint64_t a4, void *a5, void *a6, void *a7, void *a8)
{
  v8 = a1[5];
  v16[4] = a1[4];
  v17[0] = v8;
  *(v17 + 10) = *(a1 + 90);
  v9 = a1[1];
  v16[0] = *a1;
  v16[1] = v9;
  v10 = a1[3];
  v16[2] = a1[2];
  v16[3] = v10;
  v11 = a2[1];
  v18[0] = *a2;
  v18[1] = v11;
  v12 = a2[2];
  v13 = a2[3];
  *&v19[10] = *(a2 + 90);
  v14 = a2[5];
  v18[4] = a2[4];
  *v19 = v14;
  v18[2] = v12;
  v18[3] = v13;
  return sub_100088198(v16, v18, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_100087598(_BYTE *a1, const char *a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v8 = *a1;
  v9 = 0xE700000000000000;
  v10 = 0x6D617053746F6ELL;
  if (v8 != 1)
  {
    v10 = 1852989815;
    v9 = 0xE400000000000000;
  }

  if (*a1)
  {
    v11 = v10;
  }

  else
  {
    v11 = 1835102323;
  }

  if (v8)
  {
    v12 = v9;
  }

  else
  {
    v12 = 0xE400000000000000;
  }

  v13 = 0xE700000000000000;
  v14 = 0x6D617053746F6ELL;
  if (*a2 != 1)
  {
    v14 = 1852989815;
    v13 = 0xE400000000000000;
  }

  if (*a2)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1835102323;
  }

  if (*a2)
  {
    v16 = v13;
  }

  else
  {
    v16 = 0xE400000000000000;
  }

  if (v11 == v15 && v12 == v16)
  {
    v17 = 1;
  }

  else
  {
    v17 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v12, a2, v15, a4, a5, a6, a7, a8;
  v16, v18, v19, v20, v21, v22, v23, v24;
  return v17 & 1;
}

Swift::Int sub_100087684()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  v2 = 0xE700000000000000;
  if (v1 != 1)
  {
    v2 = 0xE400000000000000;
  }

  if (v1)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0xE400000000000000;
  }

  String.hash(into:)();
  v3, v4, v5, v6, v7, v8, v9, v10;
  return Hasher._finalize()();
}

void sub_100087718(uint64_t a1)
{
  v2 = 0xE700000000000000;
  if (*v1 != 1)
  {
    v2 = 0xE400000000000000;
  }

  if (*v1)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0xE400000000000000;
  }

  String.hash(into:)();

  v3, v4, v5, v6, v7, v8, v9, v10;
}

Swift::Int sub_100087798()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  v2 = 0xE700000000000000;
  if (v1 != 1)
  {
    v2 = 0xE400000000000000;
  }

  if (v1)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0xE400000000000000;
  }

  String.hash(into:)();
  v3, v4, v5, v6, v7, v8, v9, v10;
  return Hasher._finalize()();
}

unint64_t sub_100087828@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100089984(*a1);
  *a2 = result;
  return result;
}

void sub_100087858(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x6D617053746F6ELL;
  if (v2 != 1)
  {
    v5 = 1852989815;
    v4 = 0xE400000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1835102323;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1000878A8(char a1, uint64_t a2)
{
  _StringGuts.grow(_:)(28);
  0xE000000000000000, v3, v4, v5, v6, v7, v8, v9;
  if (a1)
  {
    if (a1 == 1)
    {
      v10 = 0x6D617053746F6ELL;
    }

    else
    {
      v10 = 1852989815;
    }

    if (a1 == 1)
    {
      v11 = 0xE700000000000000;
    }

    else
    {
      v11 = 0xE400000000000000;
    }
  }

  else
  {
    v11 = 0xE400000000000000;
    v10 = 1835102323;
  }

  v12 = v11;
  String.append(_:)(*&v10);
  v11, v13, v14, v15, v16, v17, v18, v19;
  v20._countAndFlagsBits = 0x697369636564202CLL;
  v20._object = 0xEF3D6F666E496E6FLL;
  String.append(_:)(v20);
  v21._countAndFlagsBits = Dictionary.description.getter();
  object = v21._object;
  String.append(_:)(v21);
  object, v23, v24, v25, v26, v27, v28, v29;
  return 0x6E6F697369636564;
}

uint64_t sub_100087A14()
{

  sub_10000BC10(v0 + OBJC_IVAR____TtC13frauddefensed22SpamDecisioningManager_spamAsset, &qword_1000B9058, &qword_100093140);

  v1 = OBJC_IVAR____TtC13frauddefensed22SpamDecisioningManager_logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_100087AEC()
{
  sub_100087A14();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SpamDecisioningManager(uint64_t a1)
{
  result = qword_1000B8F50;
  if (!qword_1000B8F50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100087B98(uint64_t a1)
{
  sub_100087C84(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Logger();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_100087C84(uint64_t a1)
{
  if (!qword_1000B8F60)
  {
    type metadata accessor for SpamDecisioningAsset(255);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_1000B8F60);
    }
  }
}

uint64_t sub_100087CF4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002074(&qword_1000B9058, &qword_100093140);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100087D64(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 16), a2, a3, a4, a5, a6, a7, a8;

  return _swift_deallocObject(v8, 24, 7);
}

void *sub_100087D9C(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_100087EF4(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v40 = type metadata accessor for NemesisError();
  v42 = *(v40 - 8);
  v8 = __chkstk_darwin(v40);
  v41 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v8);
  v39 = &v33 - v11;
  v12 = a4 + 56;
  v13 = -1 << *(a4 + 32);
  if (-v13 < 64)
  {
    v14 = ~(-1 << -v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(a4 + 56);
  if (!a2)
  {
LABEL_19:
    v31 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v12;
    *(a1 + 16) = ~v13;
    *(a1 + 24) = v31;
    *(a1 + 32) = v15;
    return a3;
  }

  if (!a3)
  {
    v31 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v33 = -1 << *(a4 + 32);
    v34 = a1;
    result = 0;
    v16 = 0;
    v17 = (63 - v13) >> 6;
    v35 = v42 + 32;
    v36 = v42 + 16;
    a1 = 1;
    v37 = a4 + 56;
    v38 = a3;
    v18 = v39;
    while (v15)
    {
      v44 = a2;
LABEL_15:
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v43 = v16;
      v22 = a4;
      v23 = *(a4 + 48);
      v24 = v41;
      v25 = v42;
      v26 = *(v42 + 72);
      v27 = v40;
      (*(v42 + 16))(v41, v23 + v26 * (v21 | (v16 << 6)), v40);
      v28 = *(v25 + 32);
      v28(v18, v24, v27);
      v29 = v44;
      v28(v44, v18, v27);
      a3 = v38;
      if (a1 == v38)
      {
        v13 = v33;
        a1 = v34;
        a4 = v22;
        v31 = v43;
        v12 = v37;
        goto LABEL_25;
      }

      a2 = &v29[v26];
      result = a1;
      v30 = __OFADD__(a1++, 1);
      a4 = v22;
      v16 = v43;
      v12 = v37;
      if (v30)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v19 = v16;
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v20 >= v17)
      {
        break;
      }

      v15 = *(v12 + 8 * v20);
      ++v19;
      if (v15)
      {
        v44 = a2;
        v16 = v20;
        goto LABEL_15;
      }
    }

    v15 = 0;
    if (v17 <= v16 + 1)
    {
      v32 = v16 + 1;
    }

    else
    {
      v32 = v17;
    }

    v31 = v32 - 1;
    a3 = result;
    v13 = v33;
    a1 = v34;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

BOOL sub_100088198(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, void *a7, void *a8)
{
  v10 = a1[1];
  v11 = *(a2 + 8);
  if (v10)
  {
    if (!v11)
    {
      return 0;
    }

    v12 = *a1 == *a2 && v10 == v11;
    if (!v12 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v11)
  {
    return 0;
  }

  v13 = a1[2] == *(a2 + 16) && a1[3] == *(a2 + 24);
  if (!v13 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (a1[4] != *(a2 + 32) || a1[5] != *(a2 + 40)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (a1[6] != *(a2 + 48) || a1[7] != *(a2 + 56)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v14 = a1[9];
  v15 = *(a2 + 72);
  if (v14)
  {
    if (!v15 || (a1[8] != *(a2 + 64) || v14 != v15) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v15)
  {
    return 0;
  }

  v16 = a1[10];
  v17 = *(a2 + 80);
  if (v16)
  {
    if (!v17 || (sub_10002FBE4(v16, v17) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v17)
  {
    return 0;
  }

  v18 = a1[12];
  v19 = *(a2 + 96);
  if (v18)
  {
    if (!v19 || (a1[11] != *(a2 + 88) || v18 != v19) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v19)
  {
    return 0;
  }

  if (a1[13])
  {
    if ((*(a2 + 104) & 1) == 0)
    {
      return 0;
    }
  }

  else if (*(a2 + 104))
  {
    return 0;
  }

  v20 = *(a1 + 105);
  v21 = *(a2 + 105);
  if (v20 == 3)
  {
    return v21 == 3;
  }

  if (v21 == 3)
  {
    return 0;
  }

  v23 = 0x6C617669727261;
  if (*(a1 + 105))
  {
    if (v20 == 1)
    {
      v24 = 0xE400000000000000;
      v25 = 1684104562;
    }

    else
    {
      v24 = 0xE700000000000000;
      v25 = 0x646579616C6564;
    }
  }

  else
  {
    v24 = 0xE700000000000000;
    v25 = 0x6C617669727261;
  }

  if (v21)
  {
    if (v21 == 1)
    {
      v26 = 0xE400000000000000;
      v23 = 1684104562;
    }

    else
    {
      v26 = 0xE700000000000000;
      v23 = 0x646579616C6564;
    }
  }

  else
  {
    v26 = 0xE700000000000000;
  }

  if (v25 == v23 && v24 == v26)
  {
    v24, v18, v23, v19, a5, a6, a7, a8;
    v26, v27, v28, v29, v30, v31, v32, v33;
  }

  else
  {
    v34 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v24, v35, v36, v37, v38, v39, v40, v41;
    v26, v42, v43, v44, v45, v46, v47, v48;
    if ((v34 & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_100088414()
{
  if (qword_1000B6658 != -1)
  {
    swift_once();
  }

  if (!qword_1000B7C78)
  {
    goto LABEL_10;
  }

  v0 = qword_1000B7C78;
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 BOOLForKey:v1];

  if (v2)
  {
    v3 = 0;
    v4 = 0;
LABEL_11:
    v8 = 1;
    return v3 | v4 | v8;
  }

  v5 = v0;
  v6 = String._bridgeToObjectiveC()();
  v7 = [v5 BOOLForKey:v6];

  if ((v7 & 1) == 0)
  {
    v9 = v5;
    v10 = String._bridgeToObjectiveC()();
    v11 = [v9 BOOLForKey:v10];

    if (v11)
    {
      v8 = 0;
      v3 = 0;
      v4 = 0x10000;
      return v3 | v4 | v8;
    }

LABEL_10:
    v4 = 0x10000;
    v3 = 256;
    goto LABEL_11;
  }

  v8 = 0;
  v4 = 0;
  v3 = 256;
  return v3 | v4 | v8;
}

uint64_t sub_1000885A4(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(v8 + 56);
  if (v9)
  {
    if (v9 == 1)
    {
      goto LABEL_6;
    }

    v9, a2, a3, a4, a5, a6, a7, a8;
    *(v8 + 72), v10, v11, v12, v13, v14, v15, v16;
  }

  v17 = *(v8 + 112);
  if (v17 >> 8 <= 0xFE)
  {
    sub_10004D68C(*(v8 + 80), *(v8 + 88), *(v8 + 96), *(v8 + 104), v17, ((v17 >> 8) & 1), a7, a8);
  }

LABEL_6:

  return _swift_deallocObject(v8, 129, 7);
}

uint64_t sub_100088610(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v11 = v2[6];
  v10 = v2[7];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_100011E6C;

  return sub_100084690(a1, a2, v6, v7, v8, v9, v11, v10);
}

uint64_t sub_1000887CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100088834(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000888A0(uint64_t a1)
{
  v3 = *(type metadata accessor for Logger() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for SpamDecisioningAsset(0) - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 113) & 0xFFFFFFFFFFFFFFF8;
  v14 = *(v1 + 24);
  v15 = *(v1 + 16);
  v10 = *(v1 + v9);
  v11 = *(v1 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_100011E6C;

  return sub_1000859BC(a1, v15, v14, v1 + v4, v1 + v7, v1 + v8, v10, v11);
}

uint64_t sub_100088A7C()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = type metadata accessor for SpamDecisioningAsset(0);
  v7 = *(*(v6 - 1) + 80);
  v8 = (v4 + v5 + v7) & ~v7;
  v9 = *(*(v6 - 1) + 64);
  swift_unknownObjectRelease();
  v83 = *(v2 + 8);
  v84 = v1;
  v83(v0 + v4, v1);
  v10 = v0 + v8;
  v11 = type metadata accessor for UAFAssetManager.AssetInfo(0);
  if (!(*(*(v11 - 8) + 48))(v0 + v8, 1, v11))
  {
    *(v10 + 8), v12, v13, v14, v15, v16, v17, v18;
    v19 = *(v11 + 20);
    v20 = type metadata accessor for URL();
    (*(*(v20 - 8) + 8))(v10 + v19, v20);
    *(v10 + *(v11 + 24) + 8), v21, v22, v23, v24, v25, v26, v27;
  }

  v28 = (v9 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v82 = v3 | v7;
  v29 = v6[5];
  v30 = type metadata accessor for LogicGraphAsset();
  v31 = *(*(v30 - 8) + 8);
  v31(v10 + v29, v30);
  v31(v10 + v6[6], v30);

  v83(v10 + v6[10], v84);
  *(v0 + v28 + 8), v32, v33, v34, v35, v36, v37, v38;
  *(v0 + v28 + 24), v39, v40, v41, v42, v43, v44, v45;
  *(v0 + v28 + 40), v46, v47, v48, v49, v50, v51, v52;
  *(v0 + v28 + 56), v53, v54, v55, v56, v57, v58, v59;
  *(v0 + v28 + 72), v60, v61, v62, v63, v64, v65, v66;
  *(v0 + v28 + 80), v67, v68, v69, v70, v71, v72, v73;
  *(v0 + v28 + 96), v74, v75, v76, v77, v78, v79, v80;

  return _swift_deallocObject(v0, ((((((((((v28 + 113) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v82 | 7);
}

uint64_t sub_100088DAC(uint64_t a1)
{
  v3 = *(type metadata accessor for Logger() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for SpamDecisioningAsset(0) - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 113) & 0xFFFFFFFFFFFFFFF8;
  v14 = *(v1 + 24);
  v15 = *(v1 + 16);
  v10 = *(v1 + v9);
  v11 = *(v1 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_100011E6C;

  return sub_100084EF4(a1, v15, v14, v1 + v4, v1 + v7, v1 + v8, v10, v11);
}

unint64_t sub_100088F88(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1000AE2A8, v2);
  object, v4, v5, v6, v7, v8, v9, v10;
  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100088FD4(uint64_t a1, uint64_t a2)
{
  if (*(v2 + 18))
  {
    v6 = 0x10000;
  }

  else
  {
    v6 = 0;
  }

  if (*(v2 + 17))
  {
    v7 = 256;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7 | *(v2 + 16);
  v10 = *(v2 + 24);
  v9 = *(v2 + 32);
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_100002A54;

  return sub_100082CC8(a1, a2, v8 | v6, v10, v9);
}

uint64_t sub_1000890C0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100011E6C;

  return sub_100083A30(a1, v4, v5, v6);
}

uint64_t sub_100089174()
{
  v1 = type metadata accessor for SpamDecisioningAsset(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  swift_unknownObjectRelease();
  v5 = v0 + v3;
  v6 = type metadata accessor for UAFAssetManager.AssetInfo(0);
  if (!(*(*(v6 - 8) + 48))(v0 + v3, 1, v6))
  {
    *(v5 + 8), v7, v8, v9, v10, v11, v12, v13;
    v14 = *(v6 + 20);
    v15 = type metadata accessor for URL();
    (*(*(v15 - 8) + 8))(v5 + v14, v15);
    *(v5 + *(v6 + 24) + 8), v16, v17, v18, v19, v20, v21, v22;
  }

  v23 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = v1[5];
  v25 = type metadata accessor for LogicGraphAsset();
  v26 = *(*(v25 - 8) + 8);
  v26(v5 + v24, v25);
  v26(v5 + v1[6], v25);

  v27 = v1[10];
  v28 = type metadata accessor for Logger();
  (*(*(v28 - 8) + 8))(v5 + v27, v28);

  return _swift_deallocObject(v0, v23 + 8, v2 | 7);
}

uint64_t sub_100089398(uint64_t a1)
{
  v4 = *(type metadata accessor for SpamDecisioningAsset(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100011E6C;

  return sub_1000836B8(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_1000894B8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100011E6C;

  return sub_1000835EC(a1, v4, v5, v6);
}

uint64_t sub_10008956C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

__n128 sub_1000895DC(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 90) = *(a2 + 90);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_100089608(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 106))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100089650(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 104) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 106) = 1;
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

    *(result + 106) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1000896C0()
{
  result = qword_1000B9088;
  if (!qword_1000B9088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B9088);
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for SpamDecisioningManager.SpamDecisioningComponents(uint64_t result, __int16 *a2)
{
  v2 = *a2;
  *(result + 2) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for SpamDecisioningManager.SpamDecisioningComponents(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF)
  {
    if ((a2 + 33554177) >> 24)
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776961;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776961;
      }
    }
  }

  v4 = *a1;
  v5 = v4 >= 2;
  v6 = (v4 + 2147483646) & 0x7FFFFFFF;
  if (!v5)
  {
    v6 = -1;
  }

  return (v6 + 1);
}

uint64_t storeEnumTagSinglePayload for SpamDecisioningManager.SpamDecisioningComponents(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33554177) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0xFE)
  {
    v3 = 0;
  }

  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 2) = (a2 - 255) >> 16;
    if (v3)
    {
      v4 = ((a2 - 255) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      *(result + 3) = 0;
LABEL_10:
      if (!a2)
      {
        return result;
      }

LABEL_16:
      *result = a2 + 1;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_16;
    }
  }

  return result;
}

unint64_t sub_100089880()
{
  result = qword_1000B9090;
  if (!qword_1000B9090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B9090);
  }

  return result;
}

unint64_t sub_1000898D8()
{
  result = qword_1000B9098;
  if (!qword_1000B9098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B9098);
  }

  return result;
}

unint64_t sub_100089930()
{
  result = qword_1000B90A0;
  if (!qword_1000B90A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B90A0);
  }

  return result;
}

unint64_t sub_100089984(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1000AE4F0, v2);
  object, v4, v5, v6, v7, v8, v9, v10;
  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1000899E0(uint64_t a1)
{
  *(v2 + 328) = a1;
  *(v2 + 336) = v1;

  return _swift_task_switch(sub_100089A70, v1, 0);
}

uint64_t sub_100089A70()
{
  v1 = *(v0 + 328);
  v2 = objc_opt_self();
  *(v0 + 344) = v2;
  v3 = [v2 sharedScheduler];
  v4 = v1[3];
  v5 = v1[4];
  sub_1000111EC(v1, v4);
  (*(v5 + 8))(v4, v5);
  v7 = v6;
  v8 = String._bridgeToObjectiveC()();
  v7, v9, v10, v11, v12, v13, v14, v15;
  v16 = [v3 taskRequestForIdentifier:v8];

  if (v16)
  {
    v17 = *(v0 + 328);

    v18 = static os_log_type_t.debug.getter();
    _StringGuts.grow(_:)(46);
    0xE000000000000000, v19, v20, v21, v22, v23, v24, v25;
    v27 = v1[3];
    v26 = v1[4];
    sub_1000111EC(v17, v27);
    v28._countAndFlagsBits = (*(v26 + 8))(v27, v26);
    object = v28._object;
    String.append(_:)(v28);
    object, v30, v31, v32, v33, v34, v35, v36;
    v37._countAndFlagsBits = 32032;
    v37._object = 0xE200000000000000;
    String.append(_:)(v37);
    sub_10005E11C(v18, 0xD00000000000002ALL, 0x800000010009AFE0, 0xD00000000000005ELL, 0x800000010009AE30, 71);
    0x800000010009AFE0, v38, v39, v40, v41, v42, v43, v44;
    v45 = *(v0 + 8);
LABEL_3:

    return v45();
  }

  sub_100043EA4(*(v0 + 328), v0 + 56);
  sub_100002074(&qword_1000B9178, &qword_100093718);
  sub_100002074(&qword_1000B9180, &qword_100093720);
  if (swift_dynamicCast())
  {
    sub_100011DD4((v0 + 96), v0 + 16);
    v47 = *(v0 + 40);
    v48 = *(v0 + 48);
    sub_1000111EC((v0 + 16), v47);
    (*(*(v48 + 8) + 8))(v47);
    v50 = v49;
    v51 = objc_allocWithZone(BGRepeatingSystemTaskRequest);
    v52 = String._bridgeToObjectiveC()();
    v50, v53, v54, v55, v56, v57, v58, v59;
    v60 = [v51 initWithIdentifier:v52];
    *(v0 + 352) = v60;

    v61 = v60;
    [v61 setPriority:2];
    [v61 setRequiresNetworkConnectivity:1];
    [v61 setRequiresExternalPower:1];
    sub_1000111EC((v0 + 16), *(v0 + 40));
    v62 = swift_task_alloc();
    *(v0 + 360) = v62;
    *v62 = v0;
    v62[1] = sub_10008A16C;

    return sub_10000C474();
  }

  else
  {
    v63 = *(v0 + 328);
    *(v0 + 96) = 0u;
    *(v0 + 112) = 0u;
    *(v0 + 128) = 0;
    sub_10000BC10(v0 + 96, &qword_1000B9188, &qword_100093728);
    sub_100043EA4(v63, v0 + 176);
    sub_100002074(&qword_1000B9190, &qword_100093730);
    if ((swift_dynamicCast() & 1) == 0)
    {
      *(v0 + 216) = 0u;
      *(v0 + 232) = 0u;
      *(v0 + 248) = 0;
      sub_10000BC10(v0 + 216, &qword_1000B9198, &qword_100093738);
      v84 = static os_log_type_t.error.getter();
      sub_10005E11C(v84, 0xD000000000000036, 0x800000010009AF50, 0xD00000000000005ELL, 0x800000010009AE30, 98);
      sub_10000B6B0();
      swift_allocError();
      *v85 = 0xD000000000000036;
      *(v85 + 8) = 0x800000010009AF50;
      *(v85 + 16) = 2;
      swift_willThrow();
      v45 = *(v0 + 8);
      goto LABEL_3;
    }

    v64 = *(v0 + 328);
    sub_100011DD4((v0 + 216), v0 + 136);
    v66 = v1[3];
    v65 = v1[4];
    sub_1000111EC(v64, v66);
    (*(v65 + 8))(v66, v65);
    v68 = v67;
    v69 = objc_allocWithZone(BGNonRepeatingSystemTaskRequest);
    v70 = String._bridgeToObjectiveC()();
    v68, v71, v72, v73, v74, v75, v76, v77;
    v78 = [v69 initWithIdentifier:v70];
    *(v0 + 392) = v78;

    v79 = v78;
    [v79 setPriority:2];
    [v79 setRequiresNetworkConnectivity:1];
    [v79 setRequiresExternalPower:1];
    v80 = *(v0 + 160);
    v81 = *(v0 + 168);
    sub_1000111EC((v0 + 136), v80);
    v82 = *(v81 + 8);
    v86 = (*(v82 + 16) + **(v82 + 16));
    v83 = swift_task_alloc();
    *(v0 + 400) = v83;
    *v83 = v0;
    v83[1] = sub_10008A914;

    return v86(v80, v82);
  }
}

uint64_t sub_10008A16C(double a1)
{
  v2 = *(*v1 + 336);
  *(*v1 + 368) = a1;

  return _swift_task_switch(sub_10008A2AC, v2, 0);
}

uint64_t sub_10008A2AC()
{
  v1 = *(v0 + 328);
  [*(v0 + 352) setInterval:*(v0 + 368)];
  v2 = v1[3];
  v3 = v1[4];
  sub_1000111EC(v1, v2);
  v6 = (*(v3 + 16) + **(v3 + 16));
  v4 = swift_task_alloc();
  *(v0 + 376) = v4;
  *v4 = v0;
  v4[1] = sub_10008A410;

  return v6(v2, v3);
}

uint64_t sub_10008A410(double a1)
{
  v2 = *(*v1 + 336);
  *(*v1 + 384) = a1;

  return _swift_task_switch(sub_10008A550, v2, 0);
}

uint64_t sub_10008A550()
{
  v1 = *(v0 + 352);
  [v1 setRandomInitialDelay:*(v0 + 384)];
  [v1 setMinDurationBetweenInstances:3600.0];

  v2 = v1;
  sub_100003558((v0 + 16));
  v3 = *(v0 + 352);
  v4 = [*(v0 + 344) sharedScheduler];
  *(v0 + 304) = 0;
  v5 = [v4 submitTaskRequest:v3 error:v0 + 304];

  v6 = *(v0 + 304);
  if (v5)
  {
    v7 = v6;
    v8 = static os_log_type_t.debug.getter();
    _StringGuts.grow(_:)(42);
    0xE000000000000000, v9, v10, v11, v12, v13, v14, v15;
    v16 = [v3 description];
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    v20._countAndFlagsBits = v17;
    v20._object = v19;
    String.append(_:)(v20);
    v19, v21, v22, v23, v24, v25, v26, v27;
    v28._countAndFlagsBits = 32032;
    v28._object = 0xE200000000000000;
    String.append(_:)(v28);
    sub_10005E11C(v8, 0xD000000000000026, 0x800000010009AFB0, 0xD00000000000005ELL, 0x800000010009AE30, 104);

    0x800000010009AFB0, v29, v30, v31, v32, v33, v34, v35;
  }

  else
  {
    v37 = v6;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    LOBYTE(v37) = static os_log_type_t.error.getter();
    _StringGuts.grow(_:)(35);
    0xE000000000000000, v38, v39, v40, v41, v42, v43, v44;
    swift_getErrorValue();
    v45._countAndFlagsBits = Error.localizedDescription.getter();
    object = v45._object;
    String.append(_:)(v45);
    object, v47, v48, v49, v50, v51, v52, v53;
    v54._countAndFlagsBits = 32032;
    v54._object = 0xE200000000000000;
    String.append(_:)(v54);
    sub_10005E11C(v37, 0xD00000000000001FLL, 0x800000010009AF90, 0xD00000000000005ELL, 0x800000010009AE30, 106);
    0x800000010009AF90, v55, v56, v57, v58, v59, v60, v61;
    _StringGuts.grow(_:)(35);
    0xE000000000000000, v62, v63, v64, v65, v66, v67, v68;
    swift_getErrorValue();
    v69._countAndFlagsBits = Error.localizedDescription.getter();
    v70 = v69._object;
    String.append(_:)(v69);
    v70, v71, v72, v73, v74, v75, v76, v77;
    v78._countAndFlagsBits = 32032;
    v78._object = 0xE200000000000000;
    String.append(_:)(v78);
    sub_10000B6B0();
    swift_allocError();
    *v79 = 0xD00000000000001FLL;
    *(v79 + 8) = 0x800000010009AF90;
    *(v79 + 16) = 2;
    swift_willThrow();
  }

  v36 = *(v0 + 8);

  return v36();
}

uint64_t sub_10008A914(double a1)
{
  v2 = *(*v1 + 336);
  *(*v1 + 408) = a1;

  return _swift_task_switch(sub_10008AA54, v2, 0);
}

uint64_t sub_10008AA54()
{
  v1 = *(v0 + 408);
  if (v1 < 0.0)
  {
    __break(1u);
LABEL_7:
    __break(1u);
  }

  if ((*&v1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_7;
  }

  *(v0 + 416) = sub_10008C9CC(0x20000000000001uLL);
  sub_1000111EC((v0 + 136), *(v0 + 160));
  v2 = swift_task_alloc();
  *(v0 + 424) = v2;
  *v2 = v0;
  v2[1] = sub_10008AB54;

  return sub_1000664B0();
}

uint64_t sub_10008AB54(double a1)
{
  v2 = *(*v1 + 336);
  *(*v1 + 432) = a1;

  return _swift_task_switch(sub_10008AC94, v2, 0);
}

uint64_t sub_10008AC94()
{
  v1 = *(v0 + 416);
  v2 = *(v0 + 408);
  v3 = *(v0 + 392);
  v4 = v2 * vcvtd_n_f64_u64(v1, 0x35uLL) + 0.0;
  if (v1 != 0x20000000000000)
  {
    v2 = v4;
  }

  [*(v0 + 392) setScheduleAfter:*(v0 + 432) + v2];

  v5 = v3;
  sub_100003558((v0 + 136));
  v6 = *(v0 + 392);
  v7 = [*(v0 + 344) sharedScheduler];
  *(v0 + 304) = 0;
  v8 = [v7 submitTaskRequest:v6 error:v0 + 304];

  v9 = *(v0 + 304);
  if (v8)
  {
    v10 = v9;
    v11 = static os_log_type_t.debug.getter();
    _StringGuts.grow(_:)(42);
    0xE000000000000000, v12, v13, v14, v15, v16, v17, v18;
    v19 = [v6 description];
    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v21;

    v23._countAndFlagsBits = v20;
    v23._object = v22;
    String.append(_:)(v23);
    v22, v24, v25, v26, v27, v28, v29, v30;
    v31._countAndFlagsBits = 32032;
    v31._object = 0xE200000000000000;
    String.append(_:)(v31);
    sub_10005E11C(v11, 0xD000000000000026, 0x800000010009AFB0, 0xD00000000000005ELL, 0x800000010009AE30, 104);

    0x800000010009AFB0, v32, v33, v34, v35, v36, v37, v38;
  }

  else
  {
    v40 = v9;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    LOBYTE(v40) = static os_log_type_t.error.getter();
    _StringGuts.grow(_:)(35);
    0xE000000000000000, v41, v42, v43, v44, v45, v46, v47;
    swift_getErrorValue();
    v48._countAndFlagsBits = Error.localizedDescription.getter();
    object = v48._object;
    String.append(_:)(v48);
    object, v50, v51, v52, v53, v54, v55, v56;
    v57._countAndFlagsBits = 32032;
    v57._object = 0xE200000000000000;
    String.append(_:)(v57);
    sub_10005E11C(v40, 0xD00000000000001FLL, 0x800000010009AF90, 0xD00000000000005ELL, 0x800000010009AE30, 106);
    0x800000010009AF90, v58, v59, v60, v61, v62, v63, v64;
    _StringGuts.grow(_:)(35);
    0xE000000000000000, v65, v66, v67, v68, v69, v70, v71;
    swift_getErrorValue();
    v72._countAndFlagsBits = Error.localizedDescription.getter();
    v73 = v72._object;
    String.append(_:)(v72);
    v73, v74, v75, v76, v77, v78, v79, v80;
    v81._countAndFlagsBits = 32032;
    v81._object = 0xE200000000000000;
    String.append(_:)(v81);
    sub_10000B6B0();
    swift_allocError();
    *v82 = 0xD00000000000001FLL;
    *(v82 + 8) = 0x800000010009AF90;
    *(v82 + 16) = 2;
    swift_willThrow();
  }

  v39 = *(v0 + 8);

  return v39();
}

uint64_t sub_10008B068(uint64_t a1)
{
  *(v2 + 104) = a1;
  *(v2 + 112) = v1;
  return _swift_task_switch(sub_10008B088, v1, 0);
}

uint64_t sub_10008B088()
{
  v1 = *(v0 + 104);
  v2 = v1[3];
  v3 = v1[4];
  sub_1000111EC(v1, v2);
  v6 = (*(v3 + 24) + **(v3 + 24));
  v4 = swift_task_alloc();
  *(v0 + 120) = v4;
  *v4 = v0;
  v4[1] = sub_10008B1AC;

  return v6(v2, v3);
}

uint64_t sub_10008B1AC()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {
    v6 = *(v2 + 112);

    return _swift_task_switch(sub_10008B2F0, v6, 0);
  }
}

uint64_t sub_10008B2F0()
{
  v1 = *(v0 + 104);
  v2 = [objc_opt_self() sharedScheduler];
  v3 = v1[3];
  v4 = v1[4];
  sub_1000111EC(v1, v3);
  (*(v4 + 8))(v3, v4);
  v6 = v5;
  v7 = String._bridgeToObjectiveC()();
  v6, v8, v9, v10, v11, v12, v13, v14;
  v15 = swift_allocObject();
  swift_weakInit();
  sub_100043EA4(v1, v0 + 64);
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  sub_100011DD4((v0 + 64), v16 + 24);
  *(v0 + 48) = sub_10008C840;
  *(v0 + 56) = v16;
  *(v0 + 16) = _NSConcreteStackBlock;
  *(v0 + 24) = 1107296256;
  *(v0 + 32) = sub_10002DE84;
  *(v0 + 40) = &unk_1000B17A0;
  v17 = _Block_copy((v0 + 16));

  v18 = [v2 registerForTaskWithIdentifier:v7 usingQueue:0 launchHandler:v17];
  _Block_release(v17);

  v19 = static os_log_type_t.default.getter();
  _StringGuts.grow(_:)(83);
  v20._countAndFlagsBits = 0xD00000000000003CLL;
  v20._object = 0x800000010009ADD0;
  String.append(_:)(v20);
  if (v18)
  {
    v21 = 1702195828;
  }

  else
  {
    v21 = 0x65736C6166;
  }

  if (v18)
  {
    v22 = 0xE400000000000000;
  }

  else
  {
    v22 = 0xE500000000000000;
  }

  v23 = v22;
  String.append(_:)(*&v21);
  v22, v24, v25, v26, v27, v28, v29, v30;
  v31._object = 0x800000010009AE10;
  v31._countAndFlagsBits = 0xD000000000000011;
  String.append(_:)(v31);
  v32 = v1[3];
  v33 = v1[4];
  sub_1000111EC(v1, v32);
  v34._countAndFlagsBits = (*(v33 + 8))(v32, v33);
  object = v34._object;
  String.append(_:)(v34);
  object, v36, v37, v38, v39, v40, v41, v42;
  v43._countAndFlagsBits = 32032;
  v43._object = 0xE200000000000000;
  String.append(_:)(v43);
  sub_10005E11C(v19, 0, 0xE000000000000000, 0xD00000000000005ELL, 0x800000010009AE30, 135);
  0xE000000000000000, v44, v45, v46, v47, v48, v49, v50;
  v51 = *(v0 + 8);

  return v51();
}

uint64_t sub_10008B600(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100002074(&qword_1000B7580, &qword_10008EEC0);
  __chkstk_darwin(v6 - 8);
  v8 = &v47 - v7;
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v14 = *(v10 + 16);
    v48 = a3;
    v14(v12, Strong + OBJC_IVAR____TtC13frauddefensed25BackgroundActivityManager_logger, v9);

    v15 = static os_log_type_t.default.getter();
    *&aBlock = 0;
    *(&aBlock + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(57);
    v16._object = 0x800000010009AE90;
    v16._countAndFlagsBits = 0xD000000000000035;
    String.append(_:)(v16);
    v17 = [a1 identifier];
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;

    v21._countAndFlagsBits = v18;
    v21._object = v20;
    String.append(_:)(v21);
    v20, v22, v23, v24, v25, v26, v27, v28;
    v29._countAndFlagsBits = 32032;
    v29._object = 0xE200000000000000;
    String.append(_:)(v29);
    v30 = *(&aBlock + 1);
    sub_10005E11C(v15, aBlock, *(&aBlock + 1), 0xD00000000000005ELL, 0x800000010009AE30, 120);
    a3 = v48;
    v30, v31, v32, v33, v34, v35, v36, v37;
    (*(v10 + 8))(v12, v9);
  }

  v38 = type metadata accessor for TaskPriority();
  (*(*(v38 - 8) + 56))(v8, 1, 1, v38);
  sub_100043EA4(a3, &aBlock);
  v39 = swift_allocObject();
  v39[2] = 0;
  v39[3] = 0;
  v39[4] = a2;
  v39[5] = a1;
  sub_100011DD4(&aBlock, (v39 + 6));

  v40 = a1;
  v41 = sub_1000024AC(0, 0, v8, &unk_100093700, v39);
  swift_beginAccess();
  v42 = swift_weakLoadStrong();
  v43 = swift_allocObject();
  v43[2] = v42;
  v43[3] = v40;
  v43[4] = v41;
  v52 = sub_10008C9C0;
  v53 = v43;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  v50 = sub_100002874;
  v51 = &unk_1000B1818;
  v44 = _Block_copy(&aBlock);
  v45 = v40;

  [v45 setExpirationHandler:v44];
  _Block_release(v44);
}

uint64_t sub_10008B9E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[13] = a5;
  v6[14] = a6;
  v6[11] = a1;
  v6[12] = a4;
  return _swift_task_switch(sub_10008BA0C, 0, 0);
}

uint64_t sub_10008BA0C()
{
  if (qword_1000B66F8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 112);
  v2 = qword_1000B9488;
  *(v0 + 120) = qword_1000B9488;
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  sub_100043EA4(v1, v0 + 16);

  return _swift_task_switch(sub_10008BAF8, v2, 0);
}

uint64_t sub_10008BAF8()
{
  v1 = v0[15];
  v2 = *(v1 + 120);
  if (v2 < 1)
  {
    *(v1 + 120) = v2 + 1;
    v4 = swift_task_alloc();
    v0[17] = v4;
    *v4 = v0;
    v4[1] = sub_10008BE28;
    v5 = v0[13];
    v6 = v0[11];

    return sub_10008C09C(v6, (v0 + 10), v5, (v0 + 2));
  }

  else
  {
    sub_10002CDB8();
    v3 = swift_task_alloc();
    v0[16] = v3;
    *v3 = v0;
    v3[1] = sub_10008BC60;

    return withCheckedContinuation<A>(isolation:function:_:)();
  }
}

uint64_t sub_10008BC60()
{
  v1 = *(*v0 + 120);

  return _swift_task_switch(sub_10008BD70, v1, 0);
}

void sub_10008BD70()
{
  v2 = v0[15];
  v3 = *(v2 + 120);
  v4 = __OFADD__(v3, 1);
  v5 = v3 + 1;
  if (v4)
  {
    __break(1u);
  }

  else
  {
    *(v2 + 120) = v5;
    v6 = swift_task_alloc();
    v0[17] = v6;
    *v6 = v0;
    v6[1] = sub_10008BE28;
    v7 = v0[13];
    v8 = v0[11];

    sub_10008C09C(v8, (v0 + 10), v7, (v0 + 2));
  }
}

uint64_t sub_10008BE28()
{
  v2 = *v1;
  *(*v1 + 144) = v0;

  v3 = *(v2 + 120);
  if (v0)
  {
    v4 = sub_10008BFC8;
  }

  else
  {
    v4 = sub_10008BF54;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10008BF54()
{
  sub_10006ACA8(v0[15]);
  sub_100003558(v0 + 2);
  swift_weakDestroy();
  v1 = v0[1];

  return v1();
}

uint64_t sub_10008BFC8()
{
  sub_10006ACA8(*(v0 + 120));

  return _swift_task_switch(sub_10008C030, 0, 0);
}

uint64_t sub_10008C030()
{
  sub_100003558((v0 + 16));
  swift_weakDestroy();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10008C09C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a3;
  v4[7] = a4;
  v4[5] = a2;
  v5 = type metadata accessor for Logger();
  v4[8] = v5;
  v4[9] = *(v5 - 8);
  v4[10] = swift_task_alloc();

  return _swift_task_switch(sub_10008C160, 0, 0);
}

uint64_t sub_10008C160()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = v0[9];
    v2 = v0[10];
    v4 = v0[8];
    v5 = v0[6];
    (*(v3 + 16))(v2, Strong + OBJC_IVAR____TtC13frauddefensed25BackgroundActivityManager_logger, v4);

    v6 = static os_log_type_t.default.getter();
    _StringGuts.grow(_:)(75);
    v7._object = 0x800000010009AF00;
    v7._countAndFlagsBits = 0xD000000000000047;
    String.append(_:)(v7);
    v8 = [v5 identifier];
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    v12._countAndFlagsBits = v9;
    v12._object = v11;
    String.append(_:)(v12);
    v11, v13, v14, v15, v16, v17, v18, v19;
    v20._countAndFlagsBits = 32032;
    v20._object = 0xE200000000000000;
    String.append(_:)(v20);
    sub_10005E11C(v6, 0, 0xE000000000000000, 0xD00000000000005ELL, 0x800000010009AE30, 124);
    0xE000000000000000, v21, v22, v23, v24, v25, v26, v27;
    (*(v3 + 8))(v2, v4);
  }

  v28 = v0[7];
  v29 = v28[3];
  v30 = v28[4];
  sub_1000111EC(v28, v29);
  v34 = (*(v30 + 32) + **(v30 + 32));
  v31 = swift_task_alloc();
  v0[11] = v31;
  *v31 = v0;
  v31[1] = sub_10008C3F4;
  v32 = v0[6];

  return v34(v32, v29, v30);
}

uint64_t sub_10008C3F4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void sub_10008C504(uint64_t a1, void *a2)
{
  if (a1)
  {
    v3 = static os_log_type_t.default.getter();
    _StringGuts.grow(_:)(46);
    0xE000000000000000, v4, v5, v6, v7, v8, v9, v10;
    v11 = [a2 identifier];
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    v15._countAndFlagsBits = v12;
    v15._object = v14;
    String.append(_:)(v15);
    v14, v16, v17, v18, v19, v20, v21, v22;
    v23._countAndFlagsBits = 32032;
    v23._object = 0xE200000000000000;
    String.append(_:)(v23);
    sub_10005E11C(v3, 0xD00000000000002ALL, 0x800000010009AED0, 0xD00000000000005ELL, 0x800000010009AE30, 130);
    0x800000010009AED0, v24, v25, v26, v27, v28, v29, v30;
  }

  sub_100002074(&qword_1000B6CC0, &qword_100091740);

  Task.cancel()();
}

uint64_t sub_10008C660()
{
  v1 = OBJC_IVAR____TtC13frauddefensed25BackgroundActivityManager_logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t type metadata accessor for BackgroundActivityManager(uint64_t a1)
{
  result = qword_1000B90D8;
  if (!qword_1000B90D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10008C72C(uint64_t a1)
{
  result = type metadata accessor for Logger();
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

uint64_t sub_10008C7C8()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10008C800()
{

  sub_100003558((v0 + 24));

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10008C84C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10008C864()
{
  swift_unknownObjectRelease();

  sub_100003558((v0 + 48));

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_10008C8B4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100002A54;

  return sub_10008B9E8(a1, v4, v5, v6, v7, (v1 + 6));
}

uint64_t sub_10008C978()
{

  return _swift_deallocObject(v0, 40, 7);
}

unint64_t sub_10008C9CC(unint64_t result)
{
  if (result)
  {
    v1 = result;
    swift_stdlib_random();
    result = (0 * v1) >> 64;
    if (-v1 % v1)
    {
      while (1)
      {
        swift_stdlib_random();
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10008CA64()
{
  sub_10008CBF8(*(v0 + 16));
  v1 = OBJC_IVAR____TtC13frauddefensed15LookUpOperation_logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for LookUpOperation(uint64_t a1)
{
  result = qword_1000B91D0;
  if (!qword_1000B91D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10008CB5C(uint64_t a1)
{
  result = type metadata accessor for Logger();
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

uint64_t sub_10008CBF8(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_10008CC08()
{
  v1 = OBJC_IVAR____TtC13frauddefensed12KeyOperation_logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for KeyOperation(uint64_t a1)
{
  result = qword_1000B9290;
  if (!qword_1000B9290)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

Swift::String __swiftcall URL.path(percentEncoded:)(Swift::Bool percentEncoded)
{
  v1 = URL.path(percentEncoded:)(percentEncoded);
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

Swift::String __swiftcall Data.base64EncodedString(options:)(NSDataBase64EncodingOptions options)
{
  v1 = Data.base64EncodedString(options:)(options);
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

Swift::String __swiftcall String.lowercased()()
{
  v0 = String.lowercased()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

uint64_t String.init(cString:)()
{
  return String.init(cString:)();
}

{
  return String.init(cString:)();
}

Swift::String_optional __swiftcall String.Iterator.next()()
{
  v0 = String.Iterator.next()();
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}

uint64_t KeyedDecodingContainer.decodeIfPresent(_:forKey:)()
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