uint64_t sub_1000444AC()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  v5 = *(v0 + 32);
  if (!(v5 >> 62))
  {
    result = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      return result;
    }

    goto LABEL_3;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (!result)
  {
LABEL_3:
    v7 = sub_100044EAC();
    v8 = OBJC_IVAR____TtCC8SOSBuddy37MessageSimulationEngineImplementation7OnState_emergencyConversationTranscript;
    swift_beginAccess();
    *(v0 + v8) = v7;

    UUID.init()();
    sub_10004013C(v4, 0, 0xE000000000000000, 1);
    return (*(v2 + 8))(v4, v1);
  }

  return result;
}

void sub_100044600()
{
  v1 = v0;
  swift_beginAccess();
  v2 = v0[4];
  if (v2 >> 62)
  {
    v3 = _CocoaArrayWrapper.endIndex.getter();
    if (!v3)
    {
LABEL_12:
      v7 = v1[3];
      if (v7 >> 62)
      {
        type metadata accessor for TryOutTranscriptItem(0);

        v8 = _bridgeCocoaArray<A>(_:)();
      }

      else
      {
        swift_bridgeObjectRetain_n();
        dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
        type metadata accessor for TryOutTranscriptItem(0);
        v8 = v7;
      }

      v9 = v1[4];
      if (v9 >> 62)
      {
        type metadata accessor for TryOutTranscriptItem(0);

        v10 = _bridgeCocoaArray<A>(_:)();
      }

      else
      {
        swift_bridgeObjectRetain_n();
        dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
        type metadata accessor for TryOutTranscriptItem(0);
        v10 = v9;
      }

      sub_1000EC760(v10);
      v11 = v8;
      v12 = v1[5];
      if (v12 >> 62)
      {
        type metadata accessor for TryOutTranscriptItem(0);

        v13 = _bridgeCocoaArray<A>(_:)();
      }

      else
      {
        swift_bridgeObjectRetain_n();
        dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
        type metadata accessor for TryOutTranscriptItem(0);
        v13 = v12;
      }

      sub_1000EC760(v13);
      v1[6] = v11;

      return;
    }
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      goto LABEL_12;
    }
  }

  if (v3 >= 1)
  {

    v4 = 0;
    v5 = 0;
    while ((v2 & 0xC000000000000001) == 0)
    {
      v6 = *(v2 + 8 * v5 + 32);

      if (v4)
      {
        goto LABEL_10;
      }

LABEL_5:
      ++v5;
      *(v6 + OBJC_IVAR____TtC8SOSBuddy27TryOutTranscriptMessageItem_lastConsecutiveMessage) = 1;
      v4 = v6;
      if (v3 == v5)
      {

        goto LABEL_12;
      }
    }

    v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    if (!v4)
    {
      goto LABEL_5;
    }

LABEL_10:
    *(v4 + OBJC_IVAR____TtC8SOSBuddy27TryOutTranscriptMessageItem_lastConsecutiveMessage) = (*(v4 + OBJC_IVAR____TtC8SOSBuddy27TryOutTranscriptMessageItem_sender) ^ *(v6 + OBJC_IVAR____TtC8SOSBuddy27TryOutTranscriptMessageItem_sender)) & 1;

    goto LABEL_5;
  }

  __break(1u);
}

void sub_100044900(uint64_t a1)
{
  sub_10000EBF8(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1000449F0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v11 = type metadata accessor for DispatchTime();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_100044B2C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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
    v11 = type metadata accessor for DispatchTime();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_100044C74(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100044CAC(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for DispatchTime();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_100044D70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100357170;
  if (!qword_100357170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100357170);
  }

  return result;
}

id sub_100044DC4(uint64_t a1)
{
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v7 = 0;
  v3 = [v1 initWithDictionary:isa error:&v7];

  if (v3)
  {
    v4 = v7;
  }

  else
  {
    v5 = v7;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v3;
}

uint64_t sub_100044EAC()
{
  sub_1000040A8(&qword_100357178, &unk_10027A890);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_10027A620;
  v1 = objc_opt_self();
  v2 = [v1 mainBundle];
  v35._object = 0x8000000100297B50;
  v3._countAndFlagsBits = 0x1000000000000108;
  v3._object = 0x8000000100297A40;
  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  v35._countAndFlagsBits = 0xD000000000000036;
  v5 = NSLocalizedString(_:tableName:bundle:value:comment:)(v3, 0, v2, v4, v35);

  v6 = [v1 mainBundle];
  v7._countAndFlagsBits = 0xD000000000000016;
  v36._object = 0x8000000100297BB0;
  v7._object = 0x8000000100297B90;
  v36._countAndFlagsBits = 0xD00000000000004FLL;
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  v9 = NSLocalizedString(_:tableName:bundle:value:comment:)(v7, 0, v6, v8, v36);

  *(v0 + 32) = v5;
  *(v0 + 48) = v9;
  v10 = [v1 mainBundle];
  v37._object = 0x8000000100297CB0;
  v11._countAndFlagsBits = 0x10000000000000A5;
  v11._object = 0x8000000100297C00;
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  v37._countAndFlagsBits = 0xD000000000000036;
  v13 = NSLocalizedString(_:tableName:bundle:value:comment:)(v11, 0, v10, v12, v37);

  v14 = [v1 mainBundle];
  v38._object = 0x8000000100297D20;
  v15._object = 0x8000000100297CF0;
  v38._countAndFlagsBits = 0xD00000000000004FLL;
  v15._countAndFlagsBits = 0xD000000000000027;
  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  v17 = NSLocalizedString(_:tableName:bundle:value:comment:)(v15, 0, v14, v16, v38);

  *(v0 + 64) = v13;
  *(v0 + 80) = v17;
  v18 = [v1 mainBundle];
  v39._object = 0x8000000100297DF0;
  v19._object = 0x8000000100297D70;
  v19._countAndFlagsBits = 0x1000000000000075;
  v20._countAndFlagsBits = 0;
  v20._object = 0xE000000000000000;
  v39._countAndFlagsBits = 0xD000000000000036;
  v21 = NSLocalizedString(_:tableName:bundle:value:comment:)(v19, 0, v18, v20, v39);

  v22 = [v1 mainBundle];
  v40._object = 0x8000000100297E60;
  v23._object = 0x8000000100297E30;
  v40._countAndFlagsBits = 0xD00000000000004FLL;
  v23._countAndFlagsBits = 0xD000000000000027;
  v24._countAndFlagsBits = 0;
  v24._object = 0xE000000000000000;
  v25 = NSLocalizedString(_:tableName:bundle:value:comment:)(v23, 0, v22, v24, v40);

  *(v0 + 96) = v21;
  *(v0 + 112) = v25;
  v26 = [v1 mainBundle];
  v41._object = 0x8000000100297FC0;
  v27._countAndFlagsBits = 0x100000000000010BLL;
  v27._object = 0x8000000100297EB0;
  v28._countAndFlagsBits = 0;
  v28._object = 0xE000000000000000;
  v41._countAndFlagsBits = 0xD000000000000036;
  v29 = NSLocalizedString(_:tableName:bundle:value:comment:)(v27, 0, v26, v28, v41);

  v30 = [v1 mainBundle];
  v42._object = 0x8000000100298060;
  v31._countAndFlagsBits = 0xD000000000000054;
  v31._object = 0x8000000100298000;
  v42._countAndFlagsBits = 0xD00000000000004FLL;
  v32._countAndFlagsBits = 0;
  v32._object = 0xE000000000000000;
  v33 = NSLocalizedString(_:tableName:bundle:value:comment:)(v31, 0, v30, v32, v42);

  *(v0 + 128) = v29;
  *(v0 + 144) = v33;
  return v0;
}

void sub_1000452CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }
}

uint64_t sub_100045310(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MessageSimulationEngineImplementation.MessageProgress(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100045374(uint64_t a1)
{
  v2 = type metadata accessor for MessageSimulationEngineImplementation.MessageProgress(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100045414(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MessageSimulationEngineImplementation.MessageProgress(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100045478()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000454B0()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100045584()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0 + ((*(v1 + 80) + 56) & ~*(v1 + 80));

  return sub_100043658(v2, v3, v4, v5, v6, v7);
}

uint64_t sub_1000455F0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100045608(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000040A8(&qword_100357180, &unk_10027A8A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100045680()
{

  return _swift_deallocObject(v0, 32, 7);
}

_OWORD *sub_1000456C8(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_100045708(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t ConnectionAssistantArrowRenderer.init(device:buffers:renderPipelines:)(void *a1, uint64_t a2, uint64_t a3)
{
  if (![a1 newBufferWithLength:96 options:1])
  {
    sub_100022AD4(0, v4, v5);
    swift_allocError();
    swift_willThrow();
  }

  swift_unknownObjectRelease();
  return a2;
}

uint64_t ConnectionAssistantArrowRenderer.render(arrow:earthCenter:camera:destination:renderCommandEncoder:)(uint64_t a1, float32x4_t *a2, void *a3, void *a4, uint64_t a5, uint64_t a6, void *a7, float32x4_t a8)
{
  result = ConnectionAssistantArrow.project(center:camera:)(a2, a8);
  if ((v14 & 0x100000000) == 0)
  {
    v15 = result;
    v16 = *&v14;
    v17 = a2->i64[0];
    v18 = *a2[1].i64;
    v19 = a2->i64[1];
    v20 = ConnectionAssistantCamera.Viewport.normalizedPointSize.getter(v17, v19, v18);
    v21 = *(a1 + 40);
    v38 = *(a1 + 48);
    v22 = *(a1 + 64);
    v23 = [swift_unknownObjectRetain() contents];
    v24 = a7;
    *v23 = v20;
    *(v23 + 4) = *a1;
    *(v23 + 2) = v15;
    *(v23 + 6) = v16;
    *(v23 + 28) = *(a1 + 16);
    *(v23 + 44) = *(a1 + 32);
    *(v23 + 13) = v21;
    *(v23 + 4) = v38;
    *(v23 + 20) = v22;
    result = sub_100254A80(6);
    if (result)
    {
      v25 = result;
      v26 = String._bridgeToObjectiveC()();
      [a4 setLabel:v26];

      [a4 setRenderPipelineState:v25];
      v27 = ConnectionAssistantArrow.boundingBox(pointSize:projection:)(v20, v15, v16);
      v29 = v28;
      v30 = [a3 width];
      v31 = [a3 height];
      v32 = 1.0;
      v33.i32[0] = 1.0;
      if (v17)
      {
        v33.i32[0] = 1.0;
        if (v19)
        {
          v34 = v17 / v19;
          v32 = fminf(v34, 1.0);
          v33.f32[0] = fmaxf(v34, 1.0);
        }
      }

      v33.f32[1] = 1.0 / v32;
      v40[0] = sub_1000FFA74(v30, v31, v27, v29, v33);
      v40[1] = v35;
      v40[2] = v36;
      v40[3] = v37;
      [a4 setScissorRect:v40];
      [a4 setVertexBuffer:*(a5 + 24) offset:0 atIndex:0];
      [a4 setVertexBuffer:*(a5 + 32) offset:0 atIndex:1];
      [a4 setFragmentBuffer:a7 offset:0 atIndex:0];
      [a4 drawPrimitives:4 vertexStart:0 vertexCount:4];
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_100045AEC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100045B34(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_100045B84(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v29 = a2;
  v22 = a1;
  v5 = sub_1000040A8(&unk_10035CF50, &unk_10027C800);
  __chkstk_darwin(v5 - 8);
  v7 = &v21 - v6;
  v26 = sub_1000040A8(&qword_1003560A0, &unk_10027A950);
  v30 = *(v26 - 8);
  __chkstk_darwin(v26);
  v9 = &v21 - v8;
  v31 = *(a1 + 24);
  sub_10000F574();

  v10 = static OS_dispatch_queue.main.getter();
  v32 = v10;
  v11 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v12 = *(v11 - 8);
  v27 = *(v12 + 56);
  v28 = v12 + 56;
  v27(v7, 1, 1, v11);
  v25 = sub_1000040A8(&unk_100365610, &unk_100279630);
  v24 = sub_100009274(&qword_10035CF60, &unk_100365610, &unk_100279630, &protocol conformance descriptor for PassthroughSubject<A, B>);
  v23 = sub_10002683C();
  Publisher.receive<A>(on:options:)();
  sub_100026894(v7);

  v13 = swift_allocObject();
  swift_weakInit();
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  *(v14 + 24) = v3;
  v22 = sub_100009274(&qword_10035CF70, &qword_1003560A0, &unk_10027A950, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);

  v15 = v26;
  Publisher<>.sink(receiveValue:)();

  v16 = *(v30 + 8);
  v30 += 8;
  v21 = v16;
  v16(v9, v15);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v31 = *(v29 + 24);

  v17 = static OS_dispatch_queue.main.getter();
  v32 = v17;
  v27(v7, 1, 1, v11);
  Publisher.receive<A>(on:options:)();
  sub_100026894(v7);

  v18 = swift_allocObject();
  swift_weakInit();
  v19 = swift_allocObject();
  *(v19 + 16) = v18;
  *(v19 + 24) = v3;

  Publisher<>.sink(receiveValue:)();

  v21(v9, v15);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();
}

uint64_t sub_100045FF0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100046280(result);
  }

  return result;
}

uint64_t sub_100046048(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1000460A4(result);
  }

  return result;
}

uint64_t sub_1000460A4(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    v4 = *(v2 + 16);
    v3 = *(v2 + 24);
  }

  else
  {
    v4 = 0;
    v3 = 0xE000000000000000;
  }

  if (String.count.getter() >= 1)
  {
    v5 = *(v1 + 32);
    if (!v5 || (*(v1 + 24) != v4 || v5 != v3) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      v6 = UIAccessibilityAnnouncementNotification;

      v7 = String._bridgeToObjectiveC()();

      UIAccessibilityPostNotification(v6, v7);

      *(v1 + 24) = v4;
      *(v1 + 32) = v3;
    }
  }
}

uint64_t sub_100046190()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1000461F4()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100046238()
{

  return _swift_deallocObject(v0, 32, 7);
}

void sub_100046280(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC8SOSBuddy13GuidanceModel___cachedInSilencePeriodNow);
  if (v1 == 2 || (v1 & 1) == 0)
  {
    v2 = *(a1 + 58);
    if (v2 == 2 || (v2 & 1) == 0)
    {
      v3 = (a1 + OBJC_IVAR____TtC8SOSBuddy13GuidanceModel__correctedTargetRelativeBearing);
      if ((*(a1 + OBJC_IVAR____TtC8SOSBuddy13GuidanceModel__correctedTargetRelativeBearing + 24) & 1) == 0)
      {
        v4 = *v3;
        if (*v3 < 0.0)
        {
          v5 = -*v3;
        }

        else
        {
          v5 = *v3;
        }

        sub_1000040A8(&unk_100357278, &qword_10027A960);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_100279170;
        *(inited + 32) = 7955819;
        v7 = 0xD000000000000016;
        if (v5 <= 0.785398163)
        {
          v8 = "cachedAnnouncedMessage";
        }

        else
        {
          v7 = 0xD00000000000001ALL;
          v8 = "STEWIE_TARGET_IN_RANGE";
        }

        *(inited + 40) = 0xE300000000000000;
        *(inited + 48) = v7;
        *(inited + 56) = v8 | 0x8000000000000000;
        *(inited + 72) = &type metadata for String;
        *(inited + 80) = 0x676E6964616568;
        *(inited + 88) = 0xE700000000000000;
        *(inited + 120) = &type metadata for Double;
        *(inited + 96) = v4 * 57.2957795;
        sub_1002559FC(inited);
        swift_setDeallocating();
        sub_1000040A8(&unk_10036A000, &unk_100286AB0);
        swift_arrayDestroy();
        v9 = UIAccessibilityAnnouncementNotification;
        isa = Dictionary._bridgeToObjectiveC()().super.isa;

        UIAccessibilityPostNotification(v9, isa);
      }
    }
  }
}

uint64_t sub_10004644C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v8 + 272) = a8;
  *(v8 + 280) = v13;
  *(v8 + 464) = a7;
  *(v8 + 256) = a5;
  *(v8 + 264) = a6;
  *(v8 + 248) = a4;
  sub_1000040A8(&qword_100357468, &qword_100284930);
  *(v8 + 288) = swift_task_alloc();
  *(v8 + 296) = swift_task_alloc();
  *(v8 + 304) = swift_task_alloc();
  v9 = type metadata accessor for URL();
  *(v8 + 312) = v9;
  *(v8 + 320) = *(v9 - 8);
  *(v8 + 328) = swift_task_alloc();
  *(v8 + 336) = swift_task_alloc();
  v10 = type metadata accessor for DispatchTime();
  *(v8 + 344) = v10;
  *(v8 + 352) = *(v10 - 8);
  *(v8 + 360) = swift_task_alloc();
  *(v8 + 368) = swift_task_alloc();
  *(v8 + 376) = swift_task_alloc();

  return (_swift_task_switch)(sub_1000465F0, 0, 0);
}

uint64_t sub_1000465F0()
{
  v50 = v0;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 384) = Strong;
  if (!Strong)
  {
LABEL_14:

    v36 = *(v0 + 8);

    return v36();
  }

  v2 = Strong;
  static DispatchTime.now()();
  type metadata accessor for ConnectionAssistantEarthTexturedRenderer.Textures();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  *(v0 + 392) = v4;
  v5 = String._bridgeToObjectiveC()();
  v6 = String._bridgeToObjectiveC()();
  v7 = [v4 URLForResource:v5 withExtension:v6];

  v48 = v4;
  if (v7)
  {
    v9 = *(v0 + 320);
    v8 = *(v0 + 328);
    v11 = *(v0 + 304);
    v10 = *(v0 + 312);
    v12 = *(v0 + 296);
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v13 = v9[4];
    v13(v12, v8, v10);
    v14 = v9[7];
    v14(v12, 0, 1, v10);
    v13(v11, v12, v10);
    v14(v11, 0, 1, v10);
    v15 = v9[6];
  }

  else
  {
    v16 = *(*(v0 + 320) + 56);
    v17 = 1;
    v16(*(v0 + 296), 1, 1, *(v0 + 312));
    v18 = String._bridgeToObjectiveC()();
    v19 = String._bridgeToObjectiveC()();
    v20 = [v4 URLForResource:v18 withExtension:v19];

    if (v20)
    {
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v17 = 0;
    }

    v22 = *(v0 + 312);
    v21 = *(v0 + 320);
    v24 = *(v0 + 296);
    v23 = *(v0 + 304);
    v25 = *(v0 + 288);
    v16(v25, v17, 1, v22);
    sub_100048EA8(v25, v23);
    v15 = *(v21 + 48);
    if (v15(v24, 1, v22) != 1)
    {
      sub_100008FA0(*(v0 + 296), &qword_100357468, &qword_100284930);
    }
  }

  v26 = *(v0 + 304);
  v27 = *(v0 + 312);
  if (v15(v26, 1, v27) == 1)
  {
    sub_100008FA0(v26, &qword_100357468, &qword_100284930);
    if (qword_100353AD8 != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    sub_10000F53C(v28, qword_100381ED8);

    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v29, v30))
    {
      v32 = *(v0 + 256);
      v31 = *(v0 + 264);
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v49 = v34;
      *v33 = 136315138;
      *(v33 + 4) = sub_10017C9E8(v32, v31, &v49);
      _os_log_impl(&_mh_execute_header, v29, v30, "Resource '%s' does not exist", v33, 0xCu);
      sub_100008964(v34);
    }

    v35 = *(v0 + 352);
    sub_1000474F4(*(v0 + 256), *(v0 + 264), *(v0 + 376));

    (*(v35 + 8))(*(v0 + 376), *(v0 + 344));
    goto LABEL_14;
  }

  v38 = *(v0 + 464);
  (*(*(v0 + 320) + 32))(*(v0 + 336), v26, v27);
  v39 = [objc_allocWithZone(MTKTextureLoader) initWithDevice:*(v2 + 16)];
  *(v0 + 400) = v39;
  URL._bridgeToObjectiveC()(v40);
  v42 = v41;
  *(v0 + 408) = v41;
  sub_1000040A8(&qword_100357470, &unk_10027AA80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100279160;
  v44 = MTKTextureLoaderOptionSRGB;
  *(inited + 32) = MTKTextureLoaderOptionSRGB;
  *(inited + 64) = &type metadata for Bool;
  *(inited + 40) = v38;
  v45 = v44;
  sub_100256068(inited);
  swift_setDeallocating();
  sub_100008FA0(inited + 32, &unk_100357478, &unk_100293390);
  type metadata accessor for Option(0);
  sub_100048F18();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  *(v0 + 416) = isa;

  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 240;
  *(v0 + 24) = sub_100046CC4;
  v47 = swift_continuation_init();
  *(v0 + 208) = sub_1000040A8(&qword_100357488, &unk_10027AA90);
  *(v0 + 152) = _NSConcreteStackBlock;
  *(v0 + 160) = 1107296256;
  *(v0 + 168) = sub_1000477F0;
  *(v0 + 176) = &unk_1003281B8;
  *(v0 + 184) = v47;
  [v39 newTextureWithContentsOfURL:v42 options:isa completionHandler:v0 + 152];

  return _swift_continuation_await(v0 + 16);
}

uint64_t sub_100046CC4()
{
  v1 = *(*v0 + 48);
  *(*v0 + 424) = v1;
  if (v1)
  {
    v2 = sub_100047284;
  }

  else
  {
    v2 = sub_100046DD4;
  }

  return (_swift_task_switch)(v2, 0, 0);
}

uint64_t sub_100046DD4()
{
  v39 = v0;
  v1 = v0[51];
  v2 = v0[52];
  v3 = v0[50];
  v0[54] = v0[30];

  if (qword_100353AD8 != -1)
  {
    swift_once();
  }

  v4 = v0[46];
  v5 = v0[47];
  v6 = v0[43];
  v7 = v0[44];
  v8 = type metadata accessor for Logger();
  sub_10000F53C(v8, qword_100381ED8);
  (*(v7 + 16))(v4, v5, v6);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v12 = v0[32];
    v11 = v0[33];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v38 = v14;
    *v13 = 136315394;
    *(v13 + 4) = sub_10017C9E8(v12, v11, &v38);
    *(v13 + 12) = 2048;
    static DispatchTime.now()();
    v15 = DispatchTime.uptimeNanoseconds.getter();
    if (DispatchTime.uptimeNanoseconds.getter() >= v15)
    {
      v29 = v0[44];
      v30 = *(v29 + 8);
      v21 = v29 + 8;
      v20 = v30;
      v30(v0[45], v0[43]);
      v26 = 0;
    }

    else
    {
      v16 = v0[45];
      v17 = v0[44];
      v36 = v14;
      v37 = v0[43];
      v18 = DispatchTime.uptimeNanoseconds.getter();
      v19 = DispatchTime.uptimeNanoseconds.getter();
      v22 = *(v17 + 8);
      v21 = v17 + 8;
      v20 = v22;
      v23 = (v22)(v16, v37);
      v26 = v18 - v19;
      if (v18 < v19)
      {
        __break(1u);
        return (_swift_task_switch)(v23, v24, v25);
      }

      v14 = v36;
    }

    v31 = v26;
    v20(v0[46], v0[43]);
    *(v13 + 14) = v31 / 0xF4240;
    _os_log_impl(&_mh_execute_header, v9, v10, "Loaded '%s' texture asynchronously in %llu ms", v13, 0x16u);
    sub_100008964(v14);
  }

  else
  {
    v27 = v0[44];
    v28 = *(v27 + 8);
    v21 = v27 + 8;
    v20 = v28;
    v28(v0[46], v0[43]);
  }

  v0[55] = v21;
  v0[56] = v20;
  type metadata accessor for MainActor();
  v0[57] = static MainActor.shared.getter();
  v32 = dispatch thunk of Actor.unownedExecutor.getter();
  v34 = v33;
  v23 = sub_1000470D4;
  v24 = v32;
  v25 = v34;

  return (_swift_task_switch)(v23, v24, v25);
}

uint64_t sub_1000470D4()
{
  v1 = *(v0 + 432);
  v2 = *(v0 + 272);

  v2(v1);

  return (_swift_task_switch)(sub_100047158, 0, 0);
}

uint64_t sub_100047158()
{
  v1 = *(v0 + 376);
  v2 = *(v0 + 336);
  v3 = *(v0 + 312);
  v4 = *(v0 + 320);
  v6 = *(v0 + 256);
  v5 = *(v0 + 264);

  swift_unknownObjectRelease();
  (*(v4 + 8))(v2, v3);
  sub_1000474F4(v6, v5, v1);

  (*(v0 + 448))(*(v0 + 376), *(v0 + 344));

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_100047284()
{
  v21 = v0;
  v1 = v0[52];
  v3 = v0[50];
  v2 = v0[51];
  swift_willThrow();

  if (qword_100353AD8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000F53C(v4, qword_100381ED8);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[49];
  v9 = v0[42];
  v10 = v0[39];
  v11 = v0[40];
  if (v7)
  {
    v19 = v0[42];
    v13 = v0[32];
    v12 = v0[33];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v20 = v15;
    *v14 = 136315138;
    *(v14 + 4) = sub_10017C9E8(v13, v12, &v20);
    _os_log_impl(&_mh_execute_header, v5, v6, "Failed to load texture '%s'", v14, 0xCu);
    sub_100008964(v15);

    (*(v11 + 8))(v19, v10);
  }

  else
  {

    (*(v11 + 8))(v9, v10);
  }

  v16 = v0[44];
  sub_1000474F4(v0[32], v0[33], v0[47]);

  (*(v16 + 8))(v0[47], v0[43]);

  v17 = v0[1];

  return v17();
}

void sub_1000474F4(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchTime();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v24 - v11;
  if (qword_100353AD8 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_10000F53C(v13, qword_100381ED8);
  (*(v7 + 16))(v12, a3, v6);

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = a1;
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v25 = v18;
    *v17 = 136315394;
    *(v17 + 4) = sub_10017C9E8(v16, a2, &v25);
    *(v17 + 12) = 2048;
    static DispatchTime.now()();
    v19 = DispatchTime.uptimeNanoseconds.getter();
    if (DispatchTime.uptimeNanoseconds.getter() >= v19)
    {
      v21 = *(v7 + 8);
      v21(v9, v6);
      v22 = 0;
    }

    else
    {
      v24 = DispatchTime.uptimeNanoseconds.getter();
      v20 = DispatchTime.uptimeNanoseconds.getter();
      v21 = *(v7 + 8);
      v21(v9, v6);
      v22 = v24 - v20;
      if (v24 < v20)
      {
        __break(1u);
        return;
      }
    }

    v23 = v22;
    v21(v12, v6);
    *(v17 + 14) = v23 / 0xF4240;
    _os_log_impl(&_mh_execute_header, v14, v15, "Done handling '%s' texture asynchronously in %llu ms", v17, 0x16u);
    sub_100008964(v18);
  }

  else
  {
    (*(v7 + 8))(v12, v6);
  }
}

uint64_t sub_1000477F0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_1000088DC((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    sub_1000040A8(&qword_100355DA0, &unk_10027DCE0);
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return _swift_continuation_throwingResumeWithError(v6, v7);
  }

  else
  {
    if (a2)
    {
      **(v6[8] + 40) = a2;
      swift_unknownObjectRetain();
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return _swift_continuation_throwingResume(v5);
  }
}

uint64_t sub_1000478CC()
{
  v1 = sub_1000040A8(&qword_100357460, &qword_10027AA60);
  __chkstk_darwin(v1 - 8);
  v3 = &v11 - v2;
  v4 = *(v0 + 24);
  if (v4 == 1 && (*(v0 + 24) = 0, v5 = swift_allocObject(), swift_weakInit(), , static TaskPriority.userInitiated.getter(), v6 = type metadata accessor for TaskPriority(), (*(*(v6 - 8) + 56))(v3, 0, 1, v6), v7 = swift_allocObject(), swift_weakInit(), v8 = swift_allocObject(), *(v8 + 16) = 0, *(v8 + 24) = 0, *(v8 + 32) = v7, *(v8 + 40) = 0xD00000000000001BLL, *(v8 + 48) = 0x8000000100298360, *(v8 + 56) = 1, *(v8 + 64) = sub_1000491D8, *(v8 + 72) = v5, , sub_10020AA80(0, 0, v3, &unk_10027AAB0, v8), , , sub_100008FA0(v3, &qword_100357460, &qword_10027AA60), , v4 = *(v0 + 24), v4 == 1))
  {
    v9 = 0;
  }

  else
  {
    swift_unknownObjectRetain();
    v9 = v4;
  }

  sub_100048E88(v4);
  sub_100048E98(v4);
  return v9;
}

uint64_t sub_100047AE8(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000040A8(&qword_100357460, &qword_10027AA60);
  __chkstk_darwin(v3 - 8);
  v5 = &v13 - v4;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v7 = *(Strong + 24);
    *(Strong + 24) = a1;
    swift_unknownObjectRetain();
    sub_100048E98(v7);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v9 = swift_allocObject();
    swift_beginAccess();
    swift_weakLoadStrong();
    swift_weakInit();

    static TaskPriority.userInitiated.getter();
    v10 = type metadata accessor for TaskPriority();
    (*(*(v10 - 8) + 56))(v5, 0, 1, v10);
    v11 = swift_allocObject();
    swift_weakInit();
    v12 = swift_allocObject();
    *(v12 + 16) = 0;
    *(v12 + 24) = 0;
    *(v12 + 32) = v11;
    *(v12 + 40) = 0xD000000000000015;
    *(v12 + 48) = 0x8000000100298380;
    *(v12 + 56) = 1;
    *(v12 + 64) = sub_1000491E0;
    *(v12 + 72) = v9;

    sub_10020AA80(0, 0, v5, &unk_10027AAB8, v12);

    sub_100008FA0(v5, &qword_100357460, &qword_10027AA60);
  }

  return result;
}

uint64_t sub_100047D64(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = *(result + 24);
    *(result + 24) = a1;
    swift_unknownObjectRetain();
    sub_100048E98(v4);
  }

  return result;
}

uint64_t sub_100047DDC()
{
  v1 = sub_1000040A8(&qword_100357460, &qword_10027AA60);
  __chkstk_darwin(v1 - 8);
  v3 = &v11 - v2;
  v4 = *(v0 + 32);
  if (v4 == 1 && (*(v0 + 32) = 0, v5 = swift_allocObject(), swift_weakInit(), , static TaskPriority.userInitiated.getter(), v6 = type metadata accessor for TaskPriority(), (*(*(v6 - 8) + 56))(v3, 0, 1, v6), v7 = swift_allocObject(), swift_weakInit(), v8 = swift_allocObject(), *(v8 + 16) = 0, *(v8 + 24) = 0, *(v8 + 32) = v7, *(v8 + 40) = 0xD000000000000015, *(v8 + 48) = 0x8000000100298340, *(v8 + 56) = 0, *(v8 + 64) = sub_1000491D0, *(v8 + 72) = v5, , sub_10020AA80(0, 0, v3, &unk_10027AAA8, v8), , , sub_100008FA0(v3, &qword_100357460, &qword_10027AA60), , v4 = *(v0 + 32), v4 == 1))
  {
    v9 = 0;
  }

  else
  {
    swift_unknownObjectRetain();
    v9 = v4;
  }

  sub_100048E88(v4);
  sub_100048E98(v4);
  return v9;
}

uint64_t sub_100047FEC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = *(result + 32);
    *(result + 32) = a1;
    swift_unknownObjectRetain();
    sub_100048E98(v4);
  }

  return result;
}

uint64_t sub_100048064()
{
  v1 = sub_1000040A8(&qword_100357460, &qword_10027AA60);
  __chkstk_darwin(v1 - 8);
  v3 = &v11 - v2;
  v4 = *(v0 + 40);
  if (v4 == 1 && (*(v0 + 40) = 0, v5 = swift_allocObject(), swift_weakInit(), , static TaskPriority.userInitiated.getter(), v6 = type metadata accessor for TaskPriority(), (*(*(v6 - 8) + 56))(v3, 0, 1, v6), v7 = swift_allocObject(), swift_weakInit(), v8 = swift_allocObject(), *(v8 + 16) = 0, *(v8 + 24) = 0, *(v8 + 32) = v7, *(v8 + 40) = 0xD00000000000001DLL, *(v8 + 48) = 0x80000001002982D0, *(v8 + 56) = 0, *(v8 + 64) = sub_100048D8C, *(v8 + 72) = v5, , sub_10020AA80(0, 0, v3, &unk_10027AA70, v8), , , sub_100008FA0(v3, &qword_100357460, &qword_10027AA60), , v4 = *(v0 + 40), v4 == 1))
  {
    v9 = 0;
  }

  else
  {
    swift_unknownObjectRetain();
    v9 = v4;
  }

  sub_100048E88(v4);
  sub_100048E98(v4);
  return v9;
}

uint64_t sub_100048274(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000040A8(&qword_100357460, &qword_10027AA60);
  __chkstk_darwin(v3 - 8);
  v5 = &v13 - v4;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v7 = *(Strong + 40);
    *(Strong + 40) = a1;
    swift_unknownObjectRetain();
    sub_100048E98(v7);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v9 = swift_allocObject();
    swift_beginAccess();
    swift_weakLoadStrong();
    swift_weakInit();

    static TaskPriority.userInitiated.getter();
    v10 = type metadata accessor for TaskPriority();
    (*(*(v10 - 8) + 56))(v5, 0, 1, v10);
    v11 = swift_allocObject();
    swift_weakInit();
    v12 = swift_allocObject();
    *(v12 + 16) = 0;
    *(v12 + 24) = 0;
    *(v12 + 32) = v11;
    *(v12 + 40) = 0xD000000000000017;
    *(v12 + 48) = 0x8000000100298320;
    *(v12 + 56) = 0;
    *(v12 + 64) = sub_100048FE4;
    *(v12 + 72) = v9;

    sub_10020AA80(0, 0, v5, &unk_10027AAA0, v12);

    sub_100008FA0(v5, &qword_100357460, &qword_10027AA60);
  }

  return result;
}

uint64_t sub_1000484E4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = *(result + 40);
    *(result + 40) = a1;
    swift_unknownObjectRetain();
    sub_100048E98(v4);
  }

  return result;
}

uint64_t sub_10004855C()
{
  swift_unknownObjectRelease();
  sub_100048E98(v0[3]);
  sub_100048E98(v0[4]);
  sub_100048E98(v0[5]);

  return swift_deallocClassInstance();
}

uint64_t ConnectionAssistantEarthTexturedRenderer.__allocating_init(device:buffers:renderPipelines:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  ConnectionAssistantEarthTexturedRenderer.init(device:buffers:renderPipelines:)(a1, a2, a3);
  return v6;
}

void *ConnectionAssistantEarthTexturedRenderer.init(device:buffers:renderPipelines:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a2;
  v3[4] = a3;
  type metadata accessor for ConnectionAssistantEarthTexturedRenderer.Textures();
  v5 = swift_allocObject();
  *(v5 + 24) = vdupq_n_s64(1uLL);
  *(v5 + 40) = 1;
  *(v5 + 16) = a1;
  v3[3] = v5;

  v6 = [swift_unknownObjectRetain() newBufferWithLength:288 options:1];
  if (v6)
  {
    v9 = v6;
    swift_unknownObjectRelease();

    v3[5] = v9;
  }

  else
  {
    sub_100022AD4(0, v7, v8);
    swift_allocError();
    swift_willThrow();

    swift_unknownObjectRelease();

    type metadata accessor for ConnectionAssistantEarthTexturedRenderer();
    swift_deallocPartialClassInstance();
  }

  return v3;
}

void *ConnectionAssistantEarthTexturedRenderer.deinit()
{

  swift_unknownObjectRelease();
  return v0;
}

uint64_t ConnectionAssistantEarthTexturedRenderer.__deallocating_deinit()
{

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void sub_100048820(uint64_t a1, uint64_t a2, void *a3, double a4, double a5)
{
  v6 = v5;
  ConnectionAssistantEarth.project(camera:)(a2, v57, a5);
  if (v61)
  {
    return;
  }

  v55 = v57[1];
  v56 = v57[0];
  v53 = v57[3];
  v54 = v57[2];
  v10 = v58;
  v11 = v59;
  v12 = v60;
  v13 = sub_1000478CC();
  v14 = sub_100047DDC();
  v15 = sub_100048064();
  if (!v13 || !v14 || !v15)
  {
    goto LABEL_11;
  }

  v16 = v15;
  v17 = *(a2 + 24);
  if (*(a2 + 28) < v17)
  {
    v17 = *(a2 + 28);
  }

  v18 = v17 * 0.5;
  v44 = *(a1 + 68);
  *v19.i64 = ConnectionAssistantEarth.model.getter();
  v20 = *(a2 + 192);
  v21 = *(a2 + 208);
  v22 = *(a2 + 224);
  v23 = *(a2 + 240);
  v49 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v20, v24.f32[0]), v21, *v24.f32, 1), v22, v24, 2), v23, v24, 3);
  v51 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v20, v19.f32[0]), v21, *v19.f32, 1), v22, v19, 2), v23, v19, 3);
  v47 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v20, v25.f32[0]), v21, *v25.f32, 1), v22, v25, 2), v23, v25, 3);
  v45 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v20, v26.f32[0]), v21, *v26.f32, 1), v22, v26, 2), v23, v26, 3);
  v43 = sinf(v18);
  v63.columns[3] = v45;
  v63.columns[1] = v49;
  v63.columns[0] = v51;
  v63.columns[2] = v47;
  v64 = __invert_f4(v63);
  v27 = v64.columns[0];
  v64.columns[0] = v51;
  v64.columns[0].i32[3] = 0;
  v52 = v64.columns[0];
  v64.columns[0] = v49;
  v64.columns[0].i32[3] = 0;
  v50 = v64.columns[0];
  v64.columns[0] = v47;
  v64.columns[0].i32[3] = 0;
  v48 = v64.columns[0];
  v64.columns[0] = v45;
  v64.columns[0].i32[3] = 0;
  v46 = v64.columns[0];
  v27.i32[3] = 0;
  v64.columns[1].i32[3] = 0;
  v41 = v64.columns[1];
  v42 = v27;
  v64.columns[2].i32[3] = 0;
  v64.columns[3].i32[3] = 0;
  v39 = v64.columns[3];
  v40 = v64.columns[2];
  v28 = *(a2 + 16);
  v29 = ConnectionAssistantCamera.Viewport.normalizedPointSize.getter(*a2, *(a2 + 8), v28);
  v30 = *(a2 + 32);
  v31 = *(a1 + 76);
  v32 = *(v5 + 40);
  v33 = [swift_unknownObjectRetain() contents];
  v34 = v32;
  *v33 = v55;
  *(v33 + 1) = v54;
  *(v33 + 2) = v53;
  *(v33 + 3) = v52;
  *(v33 + 4) = v50;
  *(v33 + 5) = v48;
  *(v33 + 6) = v46;
  *(v33 + 7) = v42;
  *(v33 + 8) = v41;
  *(v33 + 9) = v40;
  *(v33 + 10) = v39;
  *(v33 + 44) = v29;
  *&v28 = v28;
  *(v33 + 45) = LODWORD(v28);
  *(v33 + 46) = v30;
  *(v33 + 47) = v31;
  *(v33 + 48) = v43;
  *(v33 + 196) = 0x40E71C72C0A00000;
  *(v33 + 51) = 1074790400;
  *(v33 + 26) = vmul_f32(vmul_n_f32(0x42DA000046B73E00, v44), 0x3BA0902E39D1B717);
  *(v33 + 54) = 0;
  *(v33 + 14) = v56;
  *(v33 + 60) = v44;
  *(v33 + 61) = v44 * v44;
  *(v33 + 31) = v10;
  *(v33 + 32) = v11;
  *(v33 + 66) = v12;
  *(v33 + 67) = 0;
  *(v33 + 34) = vmul_n_f32(0x3F7851EC3F000000, v44);
  *(v33 + 70) = v44 * 1.2;
  v35 = sub_100254A80(2);
  if (!v35)
  {
    swift_unknownObjectRelease();
LABEL_11:
    swift_unknownObjectRelease();
    goto LABEL_12;
  }

  v36 = v35;
  v37 = String._bridgeToObjectiveC()();
  [a3 setLabel:v37];

  [a3 setRenderPipelineState:v36];
  v38 = *(v6 + 16);
  [a3 setVertexBuffer:*(v38 + 24) offset:0 atIndex:0];
  [a3 setVertexBuffer:*(v38 + 32) offset:0 atIndex:1];
  [a3 setFragmentBuffer:v32 offset:0 atIndex:0];
  [a3 setFragmentTexture:v13 atIndex:0];
  [a3 setFragmentTexture:v14 atIndex:1];
  [a3 setFragmentTexture:v16 atIndex:2];
  [a3 drawPrimitives:4 vertexStart:0 vertexCount:4];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
LABEL_12:

  swift_unknownObjectRelease();
}

uint64_t sub_100048C98(uint64_t *a1, unsigned int a2)
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

uint64_t sub_100048CF4(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_100048D54()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100048D98(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = *(v1 + 64);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_100049248;

  return sub_10004644C(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_100048E88(uint64_t result)
{
  if (result != 1)
  {
    return swift_unknownObjectRetain();
  }

  return result;
}

uint64_t sub_100048E98(uint64_t result)
{
  if (result != 1)
  {
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100048EA8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000040A8(&qword_100357468, &qword_100284930);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_100048F18()
{
  result = qword_1003549B0;
  if (!qword_1003549B0)
  {
    type metadata accessor for Option(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003549B0);
  }

  return result;
}

uint64_t sub_100048F80(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100048FEC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = *(v1 + 64);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1000490DC;

  return sub_10004644C(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1000490DC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1000491E8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_100049278@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ConnectionModel(0);
  sub_10004936C(&qword_100354F88, type metadata accessor for ConnectionModel);
  v2 = EnvironmentObject.init()();
  v4 = v3;
  type metadata accessor for ConnectivityModel();
  sub_10004936C(&qword_100354F78, type metadata accessor for ConnectivityModel);
  v5 = EnvironmentObject.init()();
  v7 = v6;
  type metadata accessor for UIMetrics();
  sub_10004936C(&qword_100354D40, type metadata accessor for UIMetrics);
  result = EnvironmentObject.init()();
  *a1 = v2;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v7;
  a1[4] = result;
  a1[5] = v9;
  return result;
}

uint64_t sub_10004936C(unint64_t *a1, uint64_t (*a2)(uint64_t))
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

unint64_t sub_1000493C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100357490;
  if (!qword_100357490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100357490);
  }

  return result;
}

uint64_t IDSOffGridMode.debugDescription.getter(uint64_t a1)
{
  switch(a1)
  {
    case 0:
      return 0x6E776F6E6B6E752ELL;
    case 2:
      return 0x64656C62616E652ELL;
    case 1:
      return 0x656C62617369642ELL;
  }

  v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v2);

  return 0x756C61567761722ELL;
}

uint64_t IDSOffGridModePublishStatus.debugDescription.getter(uint64_t a1)
{
  if (a1 > 1)
  {
    if (a1 != 2)
    {
      if (a1 == 3)
      {
        return 0x737365636375732ELL;
      }

      goto LABEL_8;
    }

    return 0x64656C6961662ELL;
  }

  else
  {
    if (a1)
    {
      if (a1 == 1)
      {
        return 0x737365636375732ELL;
      }

LABEL_8:
      v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v2);

      return 0x756C61567761722ELL;
    }

    return 0x676E69646E65702ELL;
  }
}

unint64_t sub_1000495F8()
{
  v1 = 0xD000000000000010;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000014;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x726566666F2ELL;
  }
}

void sub_100049654(unsigned __int8 *a1)
{
  v3 = type metadata accessor for ExplorerGuidanceState(0);
  __chkstk_darwin(v3 - 8);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC8SOSBuddy43ConnectionAssistantConnectionViewController_state;
  swift_beginAccess();
  sub_10004AC8C(&v1[v6], v5);
  LOBYTE(a1) = sub_100088108(v5, a1);
  sub_10004ACF0(v5);
  if ((a1 & 1) == 0)
  {
    sub_10004A5BC();
    v7 = *&v1[OBJC_IVAR____TtC8SOSBuddy43ConnectionAssistantConnectionViewController_guidanceTitleLabel];
    v8 = String._bridgeToObjectiveC()();
    [v7 setText:v8];

    v9 = *&v1[OBJC_IVAR____TtC8SOSBuddy43ConnectionAssistantConnectionViewController_guidanceSubtitleLabel];
    v10 = String._bridgeToObjectiveC()();

    [v9 setText:v10];

    v11 = [v1 view];
    if (v11)
    {
      v12 = v11;
      [v11 setNeedsLayout];

      v13 = [v1 view];
      if (v13)
      {
        v14 = v13;
        [v13 layoutIfNeeded];

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

void sub_100049824(uint64_t a1, uint64_t a2)
{
  v3 = &v2[OBJC_IVAR____TtC8SOSBuddy43ConnectionAssistantConnectionViewController__connectivityStatusText];
  v4 = *&v2[OBJC_IVAR____TtC8SOSBuddy43ConnectionAssistantConnectionViewController__connectivityStatusText];
  v5 = *&v2[OBJC_IVAR____TtC8SOSBuddy43ConnectionAssistantConnectionViewController__connectivityStatusText + 8];
  *v3 = a1;
  *(v3 + 1) = a2;
  v6 = v4 == a1 && v5 == a2;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
  }

  else
  {
    v7 = [v2 view];
    if (v7)
    {

      [v7 setNeedsLayout];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1000498EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *&v4[OBJC_IVAR____TtC8SOSBuddy43ConnectionAssistantConnectionViewController__connectionGuidance];
  v7 = *&v4[OBJC_IVAR____TtC8SOSBuddy43ConnectionAssistantConnectionViewController__connectionGuidance + 8];
  v9 = *&v4[OBJC_IVAR____TtC8SOSBuddy43ConnectionAssistantConnectionViewController__connectionGuidance + 16];
  v10 = *&v4[OBJC_IVAR____TtC8SOSBuddy43ConnectionAssistantConnectionViewController__connectionGuidance + 24];
  if (!v7)
  {
    if (!a2)
    {
      return;
    }

    goto LABEL_17;
  }

  if (!a2)
  {
LABEL_17:
    v19 = a3;
    v20 = a4;
    sub_10004AD4C(a1, a2, a3, a4);
    sub_10004AD4C(v8, v7, v9, v10);
    sub_1000452CC(v8, v7, v9, v10);
    v21 = a1;
    v22 = a2;
    v23 = v19;
    v24 = v20;
LABEL_18:
    sub_1000452CC(v21, v22, v23, v24);
LABEL_19:
    v25 = [v4 view];
    if (v25)
    {
      v28 = v25;
      [v25 setNeedsLayout];
    }

    else
    {
      __break(1u);
    }

    return;
  }

  if (v8 != a1 || v7 != a2)
  {
    v12 = a3;
    v13 = a4;
    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
    a3 = v12;
    a4 = v13;
    if ((v14 & 1) == 0)
    {
      sub_10004AD4C(a1, a2, v12, v13);
      sub_10004AD4C(v8, v7, v9, v10);

      v21 = v8;
      v22 = v7;
      v23 = v9;
      v24 = v10;
      goto LABEL_18;
    }
  }

  if (!v10)
  {
    if (!a4)
    {
      return;
    }

    sub_10004AD4C(a1, a2, a3, a4);
    sub_10004AD4C(v8, v7, v9, 0);

    v21 = v8;
    v22 = v7;
    v23 = v9;
    v24 = 0;
    goto LABEL_18;
  }

  if (!a4)
  {
    goto LABEL_19;
  }

  if (v9 != a3 || v10 != a4)
  {
    v16 = a3;
    v17 = a4;
    v18 = _stringCompareWithSmolCheck(_:_:expecting:)();
    sub_10004AD4C(a1, a2, v16, v17);
    sub_10004AD4C(v8, v7, v9, v10);

    sub_1000452CC(v8, v7, v9, v10);
    if (v18)
    {
      return;
    }

    goto LABEL_19;
  }

  v26 = a3;
  v27 = a4;
  sub_10004AD4C(a1, a2, a3, a4);
  sub_10004AD4C(v8, v7, v26, v27);

  sub_1000452CC(v8, v7, v26, v27);
}

void sub_100049BD4(uint64_t a1, char a2)
{
  v3 = &v2[OBJC_IVAR____TtC8SOSBuddy43ConnectionAssistantConnectionViewController_target];
  v4 = *&v2[OBJC_IVAR____TtC8SOSBuddy43ConnectionAssistantConnectionViewController_target];
  v5 = v2[OBJC_IVAR____TtC8SOSBuddy43ConnectionAssistantConnectionViewController_target + 8];
  *v3 = *&a1;
  *(v3 + 8) = a2;
  if (a2 == 4)
  {
    if (v5 == 4)
    {
      return;
    }

LABEL_11:
    sub_10004A5BC();
    v8 = *&v2[OBJC_IVAR____TtC8SOSBuddy43ConnectionAssistantConnectionViewController_guidanceTitleLabel];
    v9 = String._bridgeToObjectiveC()();
    [v8 setText:v9];

    v10 = *&v2[OBJC_IVAR____TtC8SOSBuddy43ConnectionAssistantConnectionViewController_guidanceSubtitleLabel];
    v11 = String._bridgeToObjectiveC()();

    [v10 setText:v11];

    v12 = [v2 view];
    if (v12)
    {
      v13 = v12;
      [v12 setNeedsLayout];

      v14 = [v2 view];
      if (v14)
      {
        v15 = v14;
        [v14 layoutIfNeeded];

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return;
  }

  if (v5 == 4 || v4 != *&a1 || v5 != a2)
  {
    goto LABEL_11;
  }
}

void sub_100049D60(uint64_t a1)
{
  v2 = v1[OBJC_IVAR____TtC8SOSBuddy43ConnectionAssistantConnectionViewController_hasSettledLocation];
  v1[OBJC_IVAR____TtC8SOSBuddy43ConnectionAssistantConnectionViewController_hasSettledLocation] = a1;
  if (v2 == (a1 & 1))
  {
    return;
  }

  sub_10004A5BC();
  v3 = *&v1[OBJC_IVAR____TtC8SOSBuddy43ConnectionAssistantConnectionViewController_guidanceTitleLabel];
  v4 = String._bridgeToObjectiveC()();
  [v3 setText:v4];

  v5 = *&v1[OBJC_IVAR____TtC8SOSBuddy43ConnectionAssistantConnectionViewController_guidanceSubtitleLabel];
  v6 = String._bridgeToObjectiveC()();

  [v5 setText:v6];

  v7 = [v1 view];
  if (!v7)
  {
    __break(1u);
    goto LABEL_9;
  }

  v8 = v7;
  [v7 setNeedsLayout];

  v9 = [v1 view];
  if (!v9)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v10 = v9;
  [v9 layoutIfNeeded];
}

void sub_100049EC4(void *a1)
{
  v2 = v1;
  v4 = *&v1[OBJC_IVAR____TtC8SOSBuddy43ConnectionAssistantConnectionViewController_exclusionPath];
  *&v1[OBJC_IVAR____TtC8SOSBuddy43ConnectionAssistantConnectionViewController_exclusionPath] = a1;
  if (!a1)
  {
    if (!v4)
    {
      return;
    }

    goto LABEL_8;
  }

  if (!v4)
  {
    v8 = a1;
    goto LABEL_8;
  }

  sub_10004AD90();
  v5 = a1;
  v11 = v4;
  v6 = static NSObject.== infix(_:_:)();

  if ((v6 & 1) == 0)
  {
LABEL_8:
    v9 = [v2 view];
    if (!v9)
    {
      __break(1u);
      return;
    }

    v10 = v9;
    [v9 setNeedsLayout];

    v7 = a1;
    goto LABEL_10;
  }

  v7 = v11;
LABEL_10:
}

id sub_100049FC8(SEL *a1)
{
  v2 = [objc_allocWithZone(UITextView) init];
  [v2 setBackgroundColor:0];
  [v2 setEditable:0];
  [v2 setSelectable:0];
  v3 = v2;
  [v3 setScrollEnabled:0];
  [v3 setContentInsetAdjustmentBehavior:2];
  v4 = [v3 textContainer];
  [v4 setLineBreakMode:0];

  v5 = [objc_opt_self() *a1];
  [v3 setTextColor:v5];

  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  [v3 setContentInset:{UIEdgeInsetsZero.top, left, bottom, right}];

  [v3 setTextContainerInset:{UIEdgeInsetsZero.top, left, bottom, right}];
  v9 = [v3 textContainer];
  [v9 setLineFragmentPadding:0.0];

  return v3;
}

id sub_10004A16C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v11 = OBJC_IVAR____TtC8SOSBuddy43ConnectionAssistantConnectionViewController_state;
  if (qword_100353990 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for ExplorerGuidanceState(0);
  v13 = sub_10000F53C(v12, qword_100381C30);
  sub_10004AC8C(v13, &v5[v11]);
  *&v5[OBJC_IVAR____TtC8SOSBuddy43ConnectionAssistantConnectionViewController__connectivity] = 512;
  v14 = &v5[OBJC_IVAR____TtC8SOSBuddy43ConnectionAssistantConnectionViewController__connectivityStatusText];
  *v14 = 0;
  v14[1] = 0xE000000000000000;
  v15 = &v5[OBJC_IVAR____TtC8SOSBuddy43ConnectionAssistantConnectionViewController__connectionGuidance];
  *v15 = 0u;
  v15[1] = 0u;
  *&v5[OBJC_IVAR____TtC8SOSBuddy43ConnectionAssistantConnectionViewController_coveredProgress] = 0;
  v16 = &v5[OBJC_IVAR____TtC8SOSBuddy43ConnectionAssistantConnectionViewController_centerLocation];
  *v16 = 0;
  v16[1] = 0;
  v17 = &v5[OBJC_IVAR____TtC8SOSBuddy43ConnectionAssistantConnectionViewController_target];
  *v17 = 0;
  v17[8] = 4;
  v5[OBJC_IVAR____TtC8SOSBuddy43ConnectionAssistantConnectionViewController_hasSettledLocation] = 0;
  *&v5[OBJC_IVAR____TtC8SOSBuddy43ConnectionAssistantConnectionViewController_exclusionPath] = 0;
  v18 = OBJC_IVAR____TtC8SOSBuddy43ConnectionAssistantConnectionViewController_guidanceTitleLabel;
  *&v5[v18] = sub_100049FC8(&selRef_labelColor);
  v19 = OBJC_IVAR____TtC8SOSBuddy43ConnectionAssistantConnectionViewController_guidanceSubtitleLabel;
  *&v5[v19] = sub_100049FC8(&selRef_secondaryLabelColor);
  *&v5[OBJC_IVAR____TtC8SOSBuddy43ConnectionAssistantConnectionViewController_uiMetrics] = a1;
  v20 = &v5[OBJC_IVAR____TtC8SOSBuddy43ConnectionAssistantConnectionViewController_guidanceBottomLayoutGuide];
  *v20 = a2;
  *(v20 + 1) = a3;
  *(v20 + 2) = a4;
  v20[24] = a5 & 1;
  v22.receiver = v5;
  v22.super_class = type metadata accessor for ConnectionAssistantConnectionViewController(0);
  return objc_msgSendSuper2(&v22, "initWithNibName:bundle:", 0, 0);
}

void sub_10004A338()
{
  v15.receiver = v0;
  v15.super_class = type metadata accessor for ConnectionAssistantConnectionViewController(0);
  objc_msgSendSuper2(&v15, "viewDidLoad");
  v1 = [v0 view];
  if (!v1)
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = v1;
  v3 = *&v0[OBJC_IVAR____TtC8SOSBuddy43ConnectionAssistantConnectionViewController_guidanceTitleLabel];
  [v1 addSubview:v3];

  v4 = [v0 view];
  if (!v4)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v5 = v4;
  v6 = *&v0[OBJC_IVAR____TtC8SOSBuddy43ConnectionAssistantConnectionViewController_guidanceSubtitleLabel];
  [v4 addSubview:v6];

  v7 = [v0 view];
  if (!v7)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v8 = v7;
  v9 = [v7 layer];

  [v9 setAllowsGroupBlending:0];
  v10 = [v0 view];
  if (v10)
  {
    v11 = v10;
    v12 = [v10 layer];

    [v12 setAllowsGroupOpacity:0];
    sub_10004A5BC();
    v13 = String._bridgeToObjectiveC()();
    [v3 setText:v13];

    v14 = String._bridgeToObjectiveC()();

    [v6 setText:v14];

    return;
  }

LABEL_9:
  __break(1u);
}

id sub_10004A5BC()
{
  v1 = &v0[OBJC_IVAR____TtC8SOSBuddy43ConnectionAssistantConnectionViewController_state];
  swift_beginAccess();
  v2 = v1[16];
  if (v2 == 9)
  {
    v3 = v0[OBJC_IVAR____TtC8SOSBuddy43ConnectionAssistantConnectionViewController__connectivity + 1] << 8;
    *&v0[OBJC_IVAR____TtC8SOSBuddy43ConnectionAssistantConnectionViewController__connectivity] = 512;
    if (v3 == 512)
    {
      goto LABEL_8;
    }

    result = [v0 view];
    if (result)
    {
LABEL_7:
      v7 = result;
      [result setNeedsLayout];

LABEL_8:
      if (*(v1 + 4))
      {
        v8 = *(v1 + 3);
        v9 = *(v1 + 4);
      }

      else
      {
        v8 = 0;
        v9 = 0xE000000000000000;
      }

      sub_100049824(v8, v9);
      v10 = *(v1 + 6);
      if (v10)
      {
        v11 = *(v1 + 5);
        v13 = *(v1 + 7);
        v12 = *(v1 + 8);
        v14 = &v0[OBJC_IVAR____TtC8SOSBuddy43ConnectionAssistantConnectionViewController__connectionGuidance];
        v15 = *&v0[OBJC_IVAR____TtC8SOSBuddy43ConnectionAssistantConnectionViewController__connectionGuidance];
        v16 = *&v0[OBJC_IVAR____TtC8SOSBuddy43ConnectionAssistantConnectionViewController__connectionGuidance + 8];
        v17 = *&v0[OBJC_IVAR____TtC8SOSBuddy43ConnectionAssistantConnectionViewController__connectionGuidance + 16];
        v18 = *&v0[OBJC_IVAR____TtC8SOSBuddy43ConnectionAssistantConnectionViewController__connectionGuidance + 24];
        *v14 = v11;
        *(v14 + 1) = v10;
        *(v14 + 2) = v13;
        *(v14 + 3) = v12;

        sub_1000498EC(v15, v16, v17, v18);
        v19 = v15;
        v20 = v16;
        v21 = v17;
        v22 = v18;
      }

      else
      {
        v23 = &v0[OBJC_IVAR____TtC8SOSBuddy43ConnectionAssistantConnectionViewController__connectionGuidance];
        v24 = *&v0[OBJC_IVAR____TtC8SOSBuddy43ConnectionAssistantConnectionViewController__connectionGuidance];
        v25 = *&v0[OBJC_IVAR____TtC8SOSBuddy43ConnectionAssistantConnectionViewController__connectionGuidance + 8];
        v26 = *&v0[OBJC_IVAR____TtC8SOSBuddy43ConnectionAssistantConnectionViewController__connectionGuidance + 16];
        v27 = *&v0[OBJC_IVAR____TtC8SOSBuddy43ConnectionAssistantConnectionViewController__connectionGuidance + 24];
        *v23 = 0u;
        *(v23 + 1) = 0u;
        sub_1000498EC(v24, v25, v26, v27);
        v19 = v24;
        v20 = v25;
        v21 = v26;
        v22 = v27;
      }

      sub_1000452CC(v19, v20, v21, v22);
      v28 = &v0[OBJC_IVAR____TtC8SOSBuddy43ConnectionAssistantConnectionViewController__connectionGuidance];
      v29 = *&v0[OBJC_IVAR____TtC8SOSBuddy43ConnectionAssistantConnectionViewController__connectionGuidance + 8];
      if (v29)
      {
        v31 = v28[2];
        v30 = v28[3];
        v32 = *v28;
        sub_10004AD4C(*v28, *&v0[OBJC_IVAR____TtC8SOSBuddy43ConnectionAssistantConnectionViewController__connectionGuidance + 8], v31, v30);

        sub_1000452CC(v32, v29, v31, v30);
        v33 = v28[1];
        if (!v33)
        {
          return v32;
        }

        v34 = v28[2];
        v35 = v28[3];
        v36 = *v28;
        sub_10004AD4C(v36, v33, v34, v35);

        sub_1000452CC(v36, v33, v34, v35);
        if (v35)
        {
          return v32;
        }
      }

      else
      {
        v32 = *&v0[OBJC_IVAR____TtC8SOSBuddy43ConnectionAssistantConnectionViewController__connectivityStatusText];
      }

      return v32;
    }

    __break(1u);
  }

  v5 = v1[18];
  v6 = *&v0[OBJC_IVAR____TtC8SOSBuddy43ConnectionAssistantConnectionViewController__connectivity];
  *&v0[OBJC_IVAR____TtC8SOSBuddy43ConnectionAssistantConnectionViewController__connectivity] = v2 & 0xFEFF | ((v5 & 1) << 8);
  if (v6 & 0xFF00) != 0x200 && v2 == v6 && ((((v6 & 0x100) == 0) ^ v5))
  {
    goto LABEL_8;
  }

  result = [v0 view];
  if (result)
  {
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

id sub_10004A8C4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ConnectionAssistantConnectionViewController(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ConnectionAssistantConnectionViewController(uint64_t a1)
{
  result = qword_1003574C0;
  if (!qword_1003574C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10004AA14(uint64_t a1)
{
  result = type metadata accessor for ExplorerGuidanceState(319);
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TryOutModel.OfferedState(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
    if (v4)
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

LABEL_17:
  v6 = *(a1 + 1);
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TryOutModel.OfferedState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 2) = v5;
      }

      else
      {
        *(result + 2) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 2) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 2) = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *(result + 1) = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_10004AC8C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ExplorerGuidanceState(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10004ACF0(uint64_t a1)
{
  v2 = type metadata accessor for ExplorerGuidanceState(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_10004AD4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }
}

unint64_t sub_10004AD90()
{
  result = qword_1003574D0;
  if (!qword_1003574D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1003574D0);
  }

  return result;
}

void sub_10004ADDC()
{
  v1 = OBJC_IVAR____TtC8SOSBuddy43ConnectionAssistantConnectionViewController_state;
  if (qword_100353990 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for ExplorerGuidanceState(0);
  v3 = sub_10000F53C(v2, qword_100381C30);
  sub_10004AC8C(v3, v0 + v1);
  *(v0 + OBJC_IVAR____TtC8SOSBuddy43ConnectionAssistantConnectionViewController__connectivity) = 512;
  v4 = (v0 + OBJC_IVAR____TtC8SOSBuddy43ConnectionAssistantConnectionViewController__connectivityStatusText);
  *v4 = 0;
  v4[1] = 0xE000000000000000;
  v5 = (v0 + OBJC_IVAR____TtC8SOSBuddy43ConnectionAssistantConnectionViewController__connectionGuidance);
  *v5 = 0u;
  v5[1] = 0u;
  *(v0 + OBJC_IVAR____TtC8SOSBuddy43ConnectionAssistantConnectionViewController_coveredProgress) = 0;
  v6 = (v0 + OBJC_IVAR____TtC8SOSBuddy43ConnectionAssistantConnectionViewController_centerLocation);
  *v6 = 0;
  v6[1] = 0;
  v7 = v0 + OBJC_IVAR____TtC8SOSBuddy43ConnectionAssistantConnectionViewController_target;
  *v7 = 0;
  *(v7 + 8) = 4;
  *(v0 + OBJC_IVAR____TtC8SOSBuddy43ConnectionAssistantConnectionViewController_hasSettledLocation) = 0;
  *(v0 + OBJC_IVAR____TtC8SOSBuddy43ConnectionAssistantConnectionViewController_exclusionPath) = 0;
  v8 = OBJC_IVAR____TtC8SOSBuddy43ConnectionAssistantConnectionViewController_guidanceTitleLabel;
  *(v0 + v8) = sub_100049FC8(&selRef_labelColor);
  v9 = OBJC_IVAR____TtC8SOSBuddy43ConnectionAssistantConnectionViewController_guidanceSubtitleLabel;
  *(v0 + v9) = sub_100049FC8(&selRef_secondaryLabelColor);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

Swift::Int ConnectionAssistantRenderer.Buffers.Error.hashValue.getter()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Int sub_10004AFBC(uint64_t a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

_BYTE *sub_10004B00C(char a1, void *a2)
{
  v4 = v2;
  v7 = type metadata accessor for Date();
  __chkstk_darwin(v7 - 8);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = OBJC_IVAR____TtC8SOSBuddy38ConnectionAssistantEarthViewController__kPixelFormat;
  *&v4[OBJC_IVAR____TtC8SOSBuddy38ConnectionAssistantEarthViewController__kPixelFormat] = 80;
  v10 = OBJC_IVAR____TtC8SOSBuddy38ConnectionAssistantEarthViewController__metalView;
  type metadata accessor for MetalView();
  *&v4[v10] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v11 = OBJC_IVAR____TtC8SOSBuddy38ConnectionAssistantEarthViewController__displayLink;
  *&v4[OBJC_IVAR____TtC8SOSBuddy38ConnectionAssistantEarthViewController__displayLink] = 0;
  v12 = OBJC_IVAR____TtC8SOSBuddy38ConnectionAssistantEarthViewController_earth;
  static Date.now.getter();
  sub_1000E4208(v9, v42);
  memcpy(&v4[v12], v42, 0x203uLL);
  v13 = OBJC_IVAR____TtC8SOSBuddy38ConnectionAssistantEarthViewController_camera;
  sub_10004BF84(v43);
  memcpy(&v4[v13], v43, 0x181uLL);
  v14 = a1 & 1;
  v4[OBJC_IVAR____TtC8SOSBuddy38ConnectionAssistantEarthViewController__style] = v14;
  *&v4[OBJC_IVAR____TtC8SOSBuddy38ConnectionAssistantEarthViewController__device] = a2;
  v15 = [swift_unknownObjectRetain() newCommandQueue];
  if (v15)
  {
    v38 = v11;
    v39 = v3;
    *&v4[OBJC_IVAR____TtC8SOSBuddy38ConnectionAssistantEarthViewController__commandQueue] = v15;
    v18 = *&v4[v10];
    swift_unknownObjectRetain();
    [v18 setOpaque:0];
    v19 = [*&v4[v10] layer];
    objc_opt_self();
    v20 = swift_dynamicCastObjCClass();
    if (v20)
    {
      [v20 setDevice:a2];
    }

    v21 = [*&v4[v10] layer];
    objc_opt_self();
    v22 = swift_dynamicCastObjCClass();
    if (v22)
    {
      [v22 setOpaque:0];
    }

    v23 = [*&v4[v10] layer];
    objc_opt_self();
    v24 = swift_dynamicCastObjCClass();
    if (v24)
    {
      [v24 setPixelFormat:*&v4[v44]];
    }

    v25 = [*&v4[v10] layer];
    objc_opt_self();
    v26 = swift_dynamicCastObjCClass();
    if (v26)
    {
      [v26 setFramebufferOnly:0];
    }

    v27 = *&v4[v44];
    type metadata accessor for ConnectionAssistantRenderer();
    swift_allocObject();
    swift_unknownObjectRetain();
    v28 = v39;
    v29 = ConnectionAssistantRenderer.init(style:device:pixelFormat:)(v14, a2, v27);
    if (!v28)
    {
      *&v4[OBJC_IVAR____TtC8SOSBuddy38ConnectionAssistantEarthViewController__renderer] = v29;
      v30 = type metadata accessor for ConnectionAssistantEarthViewController();
      v41.receiver = v4;
      v41.super_class = v30;
      v31 = objc_msgSendSuper2(&v41, "initWithNibName:bundle:", 0, 0);
      v32 = type metadata accessor for WeakCADisplayLinkTarget();
      v33 = objc_allocWithZone(v32);
      *&v33[OBJC_IVAR____TtC8SOSBuddy23WeakCADisplayLinkTarget__target + 8] = 0;
      *(swift_unknownObjectWeakInit() + 8) = &off_100328320;
      swift_unknownObjectWeakAssign();
      v40.receiver = v33;
      v40.super_class = v32;
      v4 = v31;
      v34 = objc_msgSendSuper2(&v40, "init");
      v35 = [objc_opt_self() displayLinkWithTarget:v34 selector:"updateFrom:"];

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v36 = *&v4[OBJC_IVAR____TtC8SOSBuddy38ConnectionAssistantEarthViewController__displayLink];
      *&v4[OBJC_IVAR____TtC8SOSBuddy38ConnectionAssistantEarthViewController__displayLink] = v35;

      return v4;
    }

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v11 = v38;
  }

  else
  {
    sub_10004BFC4(0, v16, v17);
    swift_allocError();
    swift_willThrow();
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRelease();

  type metadata accessor for ConnectionAssistantEarthViewController();
  swift_deallocPartialClassInstance();
  return v4;
}

void sub_10004B4C8()
{
  v6.receiver = v0;
  v6.super_class = type metadata accessor for ConnectionAssistantEarthViewController();
  objc_msgSendSuper2(&v6, "viewDidLoad");
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    v3 = [objc_opt_self() systemBackgroundColor];
    [v2 setBackgroundColor:v3];

    v4 = [v0 view];
    if (v4)
    {
      v5 = v4;
      [v4 addSubview:*&v0[OBJC_IVAR____TtC8SOSBuddy38ConnectionAssistantEarthViewController__metalView]];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_10004B61C(void *a1, uint64_t a2, uint64_t a3, const char **a4, SEL *a5)
{
  v14.receiver = a1;
  v14.super_class = type metadata accessor for ConnectionAssistantEarthViewController();
  v8 = *a4;
  v9 = v14.receiver;
  objc_msgSendSuper2(&v14, v8, a3);
  v10 = *&v9[OBJC_IVAR____TtC8SOSBuddy38ConnectionAssistantEarthViewController__displayLink];
  if (v10)
  {
    v11 = objc_opt_self();
    v12 = v10;
    v13 = [v11 mainRunLoop];
    [v12 *a5];
  }

  else
  {
    __break(1u);
  }
}

void sub_10004B7D4(char *a1)
{
  v3 = OBJC_IVAR____TtC8SOSBuddy38ConnectionAssistantEarthViewController__displayLink;
  v4 = *&v1[OBJC_IVAR____TtC8SOSBuddy38ConnectionAssistantEarthViewController__displayLink];
  if (!v4)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v5 = [v4 isPaused];
  v6 = *a1;
  if (v5 != v6)
  {
    return;
  }

  v7 = *&v1[v3];
  if (!v7)
  {
    goto LABEL_14;
  }

  [v7 setPaused:v6 ^ 1u];
  if (qword_100353AD8 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_10000F53C(v8, qword_100381ED8);
  v9 = v1;
  a1 = v1;
  oslog = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (!os_log_type_enabled(oslog, v10))
  {

    v13 = a1;
    goto LABEL_10;
  }

  v11 = swift_slowAlloc();
  *v11 = 67109120;
  v12 = *&v9[v3];
  if (!v12)
  {
LABEL_15:

    __break(1u);
    return;
  }

  *(v11 + 4) = [v12 isPaused];

  _os_log_impl(&_mh_execute_header, oslog, v10, "Earth rendering is paused: %{BOOL}d", v11, 8u);

  v13 = oslog;
LABEL_10:
}

id sub_10004B9A8(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for ConnectionAssistantEarthViewController();
  return objc_msgSendSuper2(&v4, "dealloc");
}

void sub_10004BA7C(double a1)
{
  v16 = [*(v1 + OBJC_IVAR____TtC8SOSBuddy38ConnectionAssistantEarthViewController__metalView) layer];
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (v3)
  {
    v4 = [v3 nextDrawable];

    if (v4)
    {
      memcpy(__dst, (v1 + OBJC_IVAR____TtC8SOSBuddy38ConnectionAssistantEarthViewController_camera), 0x181uLL);
      if (sub_10004BE1C(__dst) != 1)
      {
        memcpy(v19, __dst, sizeof(v19));
        v5 = [*(v1 + OBJC_IVAR____TtC8SOSBuddy38ConnectionAssistantEarthViewController__commandQueue) commandBuffer];
        if (v5)
        {
          v6 = v5;
          v7 = [objc_allocWithZone(MTLRenderPassDescriptor) init];
          v8 = [v7 colorAttachments];
          v9 = [v8 objectAtIndexedSubscript:0];

          if (v9)
          {
            [v9 setLoadAction:2];

            v10 = [v7 colorAttachments];
            v11 = [v10 objectAtIndexedSubscript:0];

            if (v11)
            {
              [v11 setClearColor:{0.0, 0.0, 0.0, 0.0}];

              v12 = [v7 colorAttachments];
              v13 = [v12 objectAtIndexedSubscript:0];

              if (v13)
              {
                [v13 setStoreAction:1];

                v14 = [v7 colorAttachments];
                v15 = [v14 objectAtIndexedSubscript:0];

                if (v15)
                {
                  [v15 setTexture:{objc_msgSend(v4, "texture")}];

                  swift_unknownObjectRelease();
                  memcpy(v18, (v1 + OBJC_IVAR____TtC8SOSBuddy38ConnectionAssistantEarthViewController_earth), 0x203uLL);
                  ConnectionAssistantRenderer.render(dt:earth:camera:commandBuffer:renderPassDescriptor:)(v18, v19, v6, v7, a1);
                  [v6 presentDrawable:v4];
                  [v6 commit];
                  swift_unknownObjectRelease();
                  swift_unknownObjectRelease();

                  return;
                }

                goto LABEL_18;
              }

LABEL_17:
              __break(1u);
LABEL_18:
              __break(1u);
              return;
            }
          }

          else
          {
            __break(1u);
          }

          __break(1u);
          goto LABEL_17;
        }
      }

      swift_unknownObjectRelease();
    }
  }

  else
  {
  }
}

void sub_10004BDEC(void *a1)
{
  [a1 duration];

  sub_10004BA7C(v1);
}

uint64_t sub_10004BE1C(uint64_t a1)
{
  if (*(a1 + 384))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

void sub_10004BE38()
{
  v1 = type metadata accessor for Date();
  __chkstk_darwin(v1 - 8);
  v3 = &v7[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *(v0 + OBJC_IVAR____TtC8SOSBuddy38ConnectionAssistantEarthViewController__kPixelFormat) = 80;
  v4 = OBJC_IVAR____TtC8SOSBuddy38ConnectionAssistantEarthViewController__metalView;
  type metadata accessor for MetalView();
  *(v0 + v4) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(v0 + OBJC_IVAR____TtC8SOSBuddy38ConnectionAssistantEarthViewController__displayLink) = 0;
  v5 = OBJC_IVAR____TtC8SOSBuddy38ConnectionAssistantEarthViewController_earth;
  static Date.now.getter();
  sub_1000E4208(v3, v7);
  memcpy((v0 + v5), v7, 0x203uLL);
  v6 = OBJC_IVAR____TtC8SOSBuddy38ConnectionAssistantEarthViewController_camera;
  sub_10004BF84(v8);
  memcpy((v0 + v6), v8, 0x181uLL);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

double sub_10004BF84(uint64_t a1)
{
  result = 0.0;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 384) = 1;
  return result;
}

unint64_t sub_10004BFC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100357550;
  if (!qword_100357550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100357550);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ConnectionAssistantEarthViewController.Error(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for ConnectionAssistantEarthViewController.Error(_WORD *result, int a2, int a3)
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

unint64_t sub_10004C0FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100357558;
  if (!qword_100357558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100357558);
  }

  return result;
}

uint64_t sub_10004C17C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000040A8(&qword_100354D60, &qword_100277B30);
  __chkstk_darwin(v3);
  v5 = &v76 - v4;
  v6 = type metadata accessor for KeyboardShortcut();
  v92 = *(v6 - 8);
  v93 = v6;
  __chkstk_darwin(v6);
  v91 = &v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000040A8(&qword_100357560, &unk_10027AEC0);
  __chkstk_darwin(v8 - 8);
  v10 = &v76 - v9;
  v94 = sub_1000040A8(&qword_100357568, &unk_10027D930);
  v90 = *(v94 - 8);
  __chkstk_darwin(v94);
  v12 = &v76 - v11;
  v13 = sub_1000040A8(&qword_100357570, &qword_10027AED0);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v76 - v15;
  v17 = sub_1000040A8(&qword_100357578, &qword_10027AED8);
  v21 = __chkstk_darwin(v17);
  v22 = *(v1 + 2);
  if (!v22)
  {
LABEL_13:
    type metadata accessor for StewieModel(0);
    sub_10004CEE0(&qword_1003561B8, type metadata accessor for StewieModel, "\ts\n");
    result = EnvironmentObject.error()();
    __break(1u);
    return result;
  }

  if (*(v22 + 64) && *(v22 + 56) == 5)
  {
    v88 = v16;
    v89 = v14;
    v82 = v13;
    v83 = &v76 - v20;
    v84 = v19;
    v85 = v18;
    v86 = v3;
    v87 = a1;
    v23 = sub_100071A54();
    v24 = [objc_opt_self() mainBundle];
    if (v23)
    {
      v25._countAndFlagsBits = 0xD000000000000011;
      v102._object = 0x8000000100298900;
      v25._object = 0x80000001002988E0;
      v102._countAndFlagsBits = 0xD000000000000025;
      v26._countAndFlagsBits = 0;
      v26._object = 0xE000000000000000;
      v27 = NSLocalizedString(_:tableName:bundle:value:comment:)(v25, 0, v24, v26, v102);
      countAndFlagsBits = v27._countAndFlagsBits;
      object = v27._object;

      v28 = objc_opt_self();
      v29 = [v28 mainBundle];
      v103._object = 0x8000000100298860;
      v30._object = 0x80000001002987F0;
      v103._countAndFlagsBits = 0xD000000000000038;
      v30._countAndFlagsBits = 0x100000000000006ALL;
      v31._countAndFlagsBits = 0;
      v31._object = 0xE000000000000000;
      v32 = NSLocalizedString(_:tableName:bundle:value:comment:)(v30, 0, v29, v31, v103);
      v33 = v32._countAndFlagsBits;
      v79 = v32._object;

      v34 = [v28 mainBundle];
      v75 = 0x80000001002988A0;
      v35 = 0x7373655320646E45;
      v36 = 0xEB000000006E6F69;
      v37 = 0xD000000000000039;
    }

    else
    {
      v40._countAndFlagsBits = 0xD000000000000018;
      v104._object = 0x8000000100298740;
      v40._object = 0x8000000100298720;
      v41._countAndFlagsBits = 0;
      v41._object = 0xE000000000000000;
      v104._countAndFlagsBits = 0xD000000000000024;
      v42 = NSLocalizedString(_:tableName:bundle:value:comment:)(v40, 0, v24, v41, v104);
      countAndFlagsBits = v42._countAndFlagsBits;
      object = v42._object;

      v43 = objc_opt_self();
      v44 = [v43 mainBundle];
      v105._object = 0x8000000100298740;
      v45._countAndFlagsBits = 0xD00000000000003ELL;
      v45._object = 0x8000000100298770;
      v46._countAndFlagsBits = 0;
      v46._object = 0xE000000000000000;
      v105._countAndFlagsBits = 0xD000000000000024;
      v47 = NSLocalizedString(_:tableName:bundle:value:comment:)(v45, 0, v44, v46, v105);
      v33 = v47._countAndFlagsBits;
      v79 = v47._object;

      v34 = [v43 mainBundle];
      v75 = 0x80000001002987B0;
      v35 = 0x6E6E6F4320646E45;
      v36 = 0xEE006E6F69746365;
      v37 = 0xD000000000000038;
    }

    v48._countAndFlagsBits = 0;
    v48._object = 0xE000000000000000;
    v49 = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v35, 0, v34, v48, *&v37);
    v78 = v49._countAndFlagsBits;
    v77 = v49._object;

    static ButtonRole.destructive.getter();
    v50 = type metadata accessor for ButtonRole();
    (*(*(v50 - 8) + 56))(v10, 0, 1, v50);
    v51 = *v1;
    v99 = v1[2];
    v100 = v51;
    v52 = swift_allocObject();
    v53 = v1[1];
    v52[1] = *v1;
    v52[2] = v53;
    v52[3] = v1[2];

    sub_100006C20(&v100, &v95, &qword_100357580, &unk_10027AEE0);
    sub_100006C20(&v99, &v95, &qword_100354AA8, &qword_10027D640);
    Button.init(role:action:label:)();
    v54 = v91;
    static KeyboardShortcut.defaultAction.getter();
    v55 = sub_100009274(&qword_100357588, &qword_100357568, &unk_10027D930, &protocol conformance descriptor for Button<A>);
    v56 = v88;
    v57 = v94;
    View.keyboardShortcut(_:)();
    (*(v92 + 8))(v54, v93);
    (*(v90 + 8))(v12, v57);
    v58 = enum case for DynamicTypeSize.xxLarge(_:);
    v59 = type metadata accessor for DynamicTypeSize();
    (*(*(v59 - 8) + 104))(v5, v58, v59);
    sub_10004CEE0(&qword_100354D68, &type metadata accessor for DynamicTypeSize, &protocol conformance descriptor for DynamicTypeSize);
    v60 = dispatch thunk of static Equatable.== infix(_:_:)();
    v61 = v89;
    if (v60)
    {
      v95 = v57;
      v96 = v55;
      swift_getOpaqueTypeConformance2();
      sub_100009274(&qword_100354D78, &qword_100354D60, &qword_100277B30, &protocol conformance descriptor for PartialRangeThrough<A>);
      v62 = v83;
      v63 = v82;
      View.dynamicTypeSize<A>(_:)();
      sub_10004CE78(v5);
      (*(v61 + 8))(v56, v63);
      v98 = v99;
      sub_1000040A8(&qword_100354AA8, &qword_10027D640);
      State.projectedValue.getter();
      v64 = v95;
      v65 = v96;
      v66 = v97;
      type metadata accessor for AppEvents();
      sub_10004CEE0(&qword_100354D48, type metadata accessor for AppEvents, "ɼ\t");
      v67 = EnvironmentObject.init()();
      v68 = v85;
      v69 = v62 + *(v85 + 36);
      *v69 = v67;
      *(v69 + 8) = v70;
      *(v69 + 16) = v64;
      *(v69 + 24) = v65;
      *(v69 + 32) = v66;
      *(v69 + 33) = v95;
      *(v69 + 36) = *(&v95 + 3);
      v71 = object;
      *(v69 + 40) = countAndFlagsBits;
      *(v69 + 48) = v71;
      v72 = v79;
      *(v69 + 56) = v33;
      *(v69 + 64) = v72;
      v73 = v77;
      *(v69 + 72) = v78;
      *(v69 + 80) = v73;
      v74 = v87;
      sub_10004CF28(v62, v87);
      return (*(v84 + 56))(v74, 0, 1, v68);
    }

    __break(1u);
    goto LABEL_13;
  }

  v38 = *(v19 + 56);

  return v38(a1, 1, 1, v21);
}

uint64_t sub_10004CC04(void *a1)
{
  if (*a1)
  {

    PassthroughSubject.send(_:)();

    sub_1000040A8(&qword_100354AA8, &qword_10027D640);
    return State.wrappedValue.setter();
  }

  else
  {
    type metadata accessor for AppEvents();
    sub_10004CEE0(&qword_100354D48, type metadata accessor for AppEvents, "ɼ\t");
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_10004CCE4@<X0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() mainBundle];
  v21._object = 0x8000000100298930;
  v3._countAndFlagsBits = 6581829;
  v3._object = 0xE300000000000000;
  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  v21._countAndFlagsBits = 0xD000000000000082;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v3, 0, v2, v4, v21);

  sub_100031770(v5, v6, v7);
  v8 = Text.init<A>(_:)();
  v10 = v9;
  v12 = v11;
  static Color.white.getter();
  v13 = Text.foregroundColor(_:)();
  v15 = v14;
  v17 = v16;
  v19 = v18;

  sub_1000317C4(v8, v10, v12 & 1);

  *a1 = v13;
  *(a1 + 8) = v15;
  *(a1 + 16) = v17 & 1;
  *(a1 + 24) = v19;
  return result;
}

uint64_t sub_10004CE28()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10004CE78(uint64_t a1)
{
  v2 = sub_1000040A8(&qword_100354D60, &qword_100277B30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10004CEE0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10004CF28(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000040A8(&qword_100357578, &qword_10027AED8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10004CF98(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_10004CFE0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10004D048()
{
  result = qword_100357590;
  if (!qword_100357590)
  {
    sub_100008CF0(&qword_100357598, &qword_10027AF68);
    sub_10004D0CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100357590);
  }

  return result;
}

unint64_t sub_10004D0CC()
{
  result = qword_1003575A0;
  if (!qword_1003575A0)
  {
    sub_100008CF0(&qword_100357578, &qword_10027AED8);
    sub_100008CF0(&qword_100357570, &qword_10027AED0);
    sub_100008CF0(&qword_100354D60, &qword_100277B30);
    sub_100008CF0(&qword_100357568, &unk_10027D930);
    sub_100009274(&qword_100357588, &qword_100357568, &unk_10027D930, &protocol conformance descriptor for Button<A>);
    swift_getOpaqueTypeConformance2();
    sub_100009274(&qword_100354D78, &qword_100354D60, &qword_100277B30, &protocol conformance descriptor for PartialRangeThrough<A>);
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    sub_10004D264(OpaqueTypeConformance2, v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003575A0);
  }

  return result;
}

unint64_t sub_10004D264(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1003575A8;
  if (!qword_1003575A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003575A8);
  }

  return result;
}

uint64_t sub_10004D2D4()
{
  v5 = *(v0 + 40);

  sub_1000040A8(&qword_1003575B0, &qword_10027AFC0);
  Binding.projectedValue.getter();
  sub_1000040A8(&qword_1003575B8, &qword_10027AFC8);
  sub_1000040A8(&qword_100357568, &unk_10027D930);
  v1 = sub_100009274(&qword_1003575C0, &qword_1003575B8, &qword_10027AFC8, &protocol conformance descriptor for _ViewModifier_Content<A>);
  sub_100031770(v1, v2, v3);
  sub_100009274(&qword_100357588, &qword_100357568, &unk_10027D930, &protocol conformance descriptor for Button<A>);
  View.confirmationDialog<A, B, C>(_:isPresented:titleVisibility:actions:message:)();

  return sub_100032674(&v5);
}

uint64_t sub_10004D4A8(uint64_t a1)
{
  v2 = sub_1000040A8(&qword_100357560, &unk_10027AEC0);
  __chkstk_darwin(v2 - 8);
  v4 = &v15[-v3 - 8];
  v5 = *(a1 + 80);
  v16 = *(a1 + 72);
  v17 = v5;

  static ButtonRole.destructive.getter();
  v6 = type metadata accessor for ButtonRole();
  (*(*(v6 - 8) + 56))(v4, 0, 1, v6);
  v7 = swift_allocObject();
  v8 = *(a1 + 48);
  *(v7 + 48) = *(a1 + 32);
  *(v7 + 64) = v8;
  *(v7 + 80) = *(a1 + 64);
  *(v7 + 96) = *(a1 + 80);
  v9 = *(a1 + 16);
  *(v7 + 16) = *a1;
  *(v7 + 32) = v9;
  v10 = sub_10004D848(a1, v15);
  sub_100031770(v10, v11, v12);
  return Button<>.init<A>(_:role:action:)();
}

uint64_t sub_10004D5F8(void *a1)
{
  if (*a1)
  {

    sub_1000040A8(&unk_100365610, &unk_100279630);
    sub_100009274(&qword_10035CF00, &unk_100365610, &unk_100279630, &protocol conformance descriptor for PassthroughSubject<A, B>);
    Subject<>.send()();
  }

  else
  {
    type metadata accessor for AppEvents();
    sub_10004CEE0(&qword_100354D48, type metadata accessor for AppEvents, "ɼ\t");
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_10004D6F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_100031770(a1, a2, a3);

  result = Text.init<A>(_:)();
  *a4 = result;
  *(a4 + 8) = v6;
  *(a4 + 16) = v7 & 1;
  *(a4 + 24) = v8;
  return result;
}

uint64_t sub_10004D7E0()
{

  return _swift_deallocObject(v0, 104, 7);
}

uint64_t sub_10004D880()
{
  sub_100008CF0(&qword_1003575B8, &qword_10027AFC8);
  sub_100008CF0(&qword_100357568, &unk_10027D930);
  v3 = sub_100009274(&qword_1003575C0, &qword_1003575B8, &qword_10027AFC8, &protocol conformance descriptor for _ViewModifier_Content<A>);
  sub_100031770(v3, v0, v1);
  sub_100009274(&qword_100357588, &qword_100357568, &unk_10027D930, &protocol conformance descriptor for Button<A>);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10004D998()
{

  return swift_deallocClassInstance();
}

__n128 sub_10004DA20@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __n128 *a4@<X8>)
{
  if (*(a1 + 32) > 2u)
  {
    v10 = sub_10004DC74(a1, a2, a3);
    sub_10004DCC8(v10, v11, v12);
  }

  else
  {
    type metadata accessor for AppEvents();
    sub_100050D20(&qword_100354D48, type metadata accessor for AppEvents, "ɼ\t");

    EnvironmentObject.init()();
    type metadata accessor for UIMetrics();
    sub_100050D20(&qword_100354D40, type metadata accessor for UIMetrics, "\ts\n");
    EnvironmentObject.init()();
    type metadata accessor for QuestionnaireState();
    sub_100050D20(&qword_100354D50, type metadata accessor for QuestionnaireState, "\ts\n");
    v14 = EnvironmentObject.init()();
    v7 = sub_10004DC74(v14, v5, v6);
    sub_10004DCC8(v7, v8, v9);
  }

  _ConditionalContent<>.init(storage:)();
  result = v18;
  a4[4] = v19;
  a4[5] = v20;
  a4[6].n128_u8[0] = v21;
  *a4 = v15;
  a4[1] = v16;
  a4[2] = v17;
  a4[3] = v18;
  return result;
}

unint64_t sub_10004DC74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100357670;
  if (!qword_100357670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100357670);
  }

  return result;
}

unint64_t sub_10004DCC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100357678;
  if (!qword_100357678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100357678);
  }

  return result;
}

uint64_t sub_10004DD1C()
{
  type metadata accessor for KeyboardObserver(0);
  swift_allocObject();
  return sub_10000934C();
}

__n128 sub_10004DD60(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_10004DD7C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 72);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10004DDC4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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
      *(result + 72) = (a2 - 1);
      return result;
    }

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10004DE30()
{
  result = qword_100357680;
  if (!qword_100357680)
  {
    v1 = sub_100008CF0(&qword_100357688, ">");
    v6 = sub_10004DC74(v1, v2, v3);
    sub_10004DCC8(v6, v4, v5);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100357680);
  }

  return result;
}

uint64_t sub_10004DED8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v132 = a2;
  v124 = sub_1000040A8(&qword_100357698, &qword_10027B1F0);
  __chkstk_darwin(v124);
  v125 = &v115 - v5;
  v120 = sub_1000040A8(&qword_1003576A0, &qword_10027B1F8);
  __chkstk_darwin(v120);
  v121 = &v115 - v6;
  v122 = sub_1000040A8(&qword_1003576A8, &qword_10027B200);
  __chkstk_darwin(v122);
  v127 = &v115 - v7;
  v123 = sub_1000040A8(&qword_1003576B0, &qword_10027B208);
  __chkstk_darwin(v123);
  v128 = &v115 - v8;
  v9 = sub_1000040A8(&qword_1003576B8, &qword_10027B210);
  __chkstk_darwin(v9 - 8);
  v11 = &v115 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v142 = &v115 - v13;
  v14 = type metadata accessor for KeyboardShortcut();
  v140 = *(v14 - 8);
  v141 = v14;
  __chkstk_darwin(v14);
  v139 = &v115 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = type metadata accessor for Color.RGBColorSpace();
  v136 = *(v137 - 8);
  __chkstk_darwin(v137);
  v138 = &v115 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = type metadata accessor for GlassProminentButtonStyle();
  v134 = *(v135 - 8);
  __chkstk_darwin(v135);
  v133 = &v115 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1000040A8(&qword_1003576C0, &qword_10027B218);
  __chkstk_darwin(v18);
  v20 = &v115 - v19;
  v21 = sub_1000040A8(&qword_1003576C8, &qword_10027B220);
  __chkstk_darwin(v21);
  v23 = &v115 - v22;
  v119 = sub_1000040A8(&qword_1003576D0, &qword_10027B228);
  v118 = *(v119 - 8);
  __chkstk_darwin(v119);
  v131 = &v115 - v24;
  v25 = sub_1000040A8(&qword_1003576D8, &qword_10027B230);
  v26 = *(v25 - 8);
  __chkstk_darwin(v25);
  v28 = &v115 - v27;
  v29 = sub_1000040A8(&qword_1003576E0, &qword_10027B238);
  __chkstk_darwin(v29 - 8);
  v126 = &v115 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __chkstk_darwin(v31);
  v143 = &v115 - v33;
  v130 = *(a1 + 72);
  v34 = *(v130 + 32) - 1 >= 2;
  v129 = a3;
  if (v34 && *(v130 + 64) != 6)
  {
    (*(v26 + 56))(v143, 1, 1, v25, v32);
    v53 = v142;
    v54 = v127;
  }

  else
  {
    v115 = v26;
    v116 = v25;
    v117 = v11;
    v35 = swift_allocObject();
    v36 = *(a1 + 48);
    v35[3] = *(a1 + 32);
    v35[4] = v36;
    v37 = *(a1 + 80);
    v35[5] = *(a1 + 64);
    v35[6] = v37;
    v38 = *(a1 + 16);
    v35[1] = *a1;
    v35[2] = v38;
    __chkstk_darwin(v35);
    *(&v115 - 2) = v132;
    sub_100050308(a1, v144);
    sub_1000040A8(&qword_100357788, &qword_10027B318);
    sub_100050988();
    Button.init(action:label:)();
    v39 = &v20[*(v18 + 36)];
    v40 = *(sub_1000040A8(&qword_1003550A0, &qword_100277F40) + 28);
    v41 = enum case for ControlSize.large(_:);
    v42 = type metadata accessor for ControlSize();
    (*(*(v42 - 8) + 104))(v39 + v40, v41, v42);
    *v39 = swift_getKeyPath();
    v43 = v133;
    GlassProminentButtonStyle.init()();
    sub_100050A40();
    sub_100050D20(&qword_100357730, &type metadata accessor for GlassProminentButtonStyle, &protocol conformance descriptor for GlassProminentButtonStyle);
    v44 = v135;
    View.buttonStyle<A>(_:)();
    (*(v134 + 8))(v43, v44);
    v45 = &v23[*(sub_1000040A8(&qword_1003577C0, &qword_10027B330) + 36)];
    sub_1000040A8(&qword_100357740, &qword_10027B2A0);
    static ButtonBorderShape.capsule.getter();
    sub_100008FA0(v20, &qword_1003576C0, &qword_10027B218);
    *v45 = swift_getKeyPath();
    (*(v136 + 104))(v138, enum case for Color.RGBColorSpace.sRGB(_:), v137);
    v46 = Color.init(_:red:green:blue:opacity:)();
    KeyPath = swift_getKeyPath();
    v144[0] = v46;
    v48 = AnyShapeStyle.init<A>(_:)();
    v49 = &v23[*(v21 + 36)];
    *v49 = KeyPath;
    v49[1] = v48;
    v50 = v139;
    static KeyboardShortcut.defaultAction.getter();
    sub_100050B24();
    View.keyboardShortcut(_:)();
    (*(v140 + 8))(v50, v141);
    sub_100008FA0(v23, &qword_1003576C8, &qword_10027B220);
    type metadata accessor for KeyboardObserver(0);
    sub_100050D20(&qword_1003577D8, type metadata accessor for KeyboardObserver, &unk_100277B94);
    StateObject.wrappedValue.getter();
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (v144[0])
    {
      v51 = 8.0;
      v52 = 0xC03E000000000000;
      a3 = v129;
      v11 = v117;
      v53 = v142;
      v54 = v127;
    }

    else
    {
      v53 = v142;
      v54 = v127;
      if (qword_100353988 != -1)
      {
        swift_once();
      }

      v52 = 0;
      v51 = 38.0 - *&qword_100381C20;
      a3 = v129;
      v11 = v117;
    }

    v55 = v116;
    v56 = v115;
    v57 = static Edge.Set.all.getter();
    (*(v118 + 32))(v28, v131, v119);
    v58 = &v28[*(v55 + 36)];
    *v58 = v57;
    *(v58 + 1) = 0x4038000000000000;
    *(v58 + 2) = v52;
    *(v58 + 3) = v51;
    *(v58 + 4) = v52;
    v58[40] = 0;
    v59 = v143;
    sub_100050D70(v28, v143);
    (*(v56 + 56))(v59, 0, 1, v55);
  }

  v60 = v130;
  v61 = sub_10008B8D4();
  v62 = v128;
  if (v61)
  {
    v63 = swift_allocObject();
    v64 = *(a1 + 48);
    v63[3] = *(a1 + 32);
    v63[4] = v64;
    v65 = *(a1 + 80);
    v63[5] = *(a1 + 64);
    v63[6] = v65;
    v66 = *(a1 + 16);
    v63[1] = *a1;
    v63[2] = v66;
    __chkstk_darwin(v63);
    *(&v115 - 2) = v132;
    sub_100050308(a1, v144);
    sub_1000040A8(&qword_1003576F8, &qword_10027B250);
    sub_100050340();
    v67 = v121;
    Button.init(action:label:)();
    v68 = (v67 + *(v120 + 36));
    v69 = *(sub_1000040A8(&qword_1003550A0, &qword_100277F40) + 28);
    v70 = enum case for ControlSize.large(_:);
    v71 = type metadata accessor for ControlSize();
    (*(*(v71 - 8) + 104))(v68 + v69, v70, v71);
    *v68 = swift_getKeyPath();
    v72 = v133;
    GlassProminentButtonStyle.init()();
    sub_100050484();
    sub_100050D20(&qword_100357730, &type metadata accessor for GlassProminentButtonStyle, &protocol conformance descriptor for GlassProminentButtonStyle);
    v73 = v135;
    View.buttonStyle<A>(_:)();
    (*(v134 + 8))(v72, v73);
    v74 = (v54 + *(sub_1000040A8(&qword_100357738, &qword_10027B298) + 36));
    sub_1000040A8(&qword_100357740, &qword_10027B2A0);
    static ButtonBorderShape.capsule.getter();
    sub_100008FA0(v67, &qword_1003576A0, &qword_10027B1F8);
    *v74 = swift_getKeyPath();
    (*(v136 + 104))(v138, enum case for Color.RGBColorSpace.sRGB(_:), v137);
    v75 = Color.init(_:red:green:blue:opacity:)();
    v76 = swift_getKeyPath();
    v144[0] = v75;
    v77 = AnyShapeStyle.init<A>(_:)();
    v78 = (v54 + *(sub_1000040A8(&qword_100357748, &qword_100292210) + 36));
    *v78 = v76;
    v78[1] = v77;
    if (qword_100353988 != -1)
    {
      swift_once();
    }

    v79 = 38.0 - *&qword_100381C20;
    v80 = static Edge.Set.all.getter();
    v81 = v54 + *(v122 + 36);
    *v81 = v80;
    *(v81 + 8) = 0;
    *(v81 + 16) = 0;
    *(v81 + 24) = v79;
    *(v81 + 32) = 0;
    *(v81 + 40) = 0;
    v82 = v139;
    static KeyboardShortcut.defaultAction.getter();
    sub_100050578();
    View.keyboardShortcut(_:)();
    (*(v140 + 8))(v82, v141);
    sub_100008FA0(v54, &qword_1003576A8, &qword_10027B200);
    v83 = static Edge.Set.top.getter();
    v84 = v62 + *(v123 + 36);
    *v84 = v83;
    *(v84 + 8) = 0u;
    *(v84 + 24) = 0u;
    *(v84 + 40) = 1;
    sub_100006C20(v62, v125, &qword_1003576B0, &qword_10027B208);
    swift_storeEnumTagMultiPayload();
    sub_100050800();
    v53 = v142;
    _ConditionalContent<>.init(storage:)();
  }

  else
  {
    v85 = *(v60 + 152);
    if (!v85)
    {
      v109 = 1;
      goto LABEL_20;
    }

    v86 = swift_allocObject();
    v87 = *(a1 + 48);
    *(v86 + 48) = *(a1 + 32);
    *(v86 + 64) = v87;
    v88 = *(a1 + 80);
    *(v86 + 80) = *(a1 + 64);
    *(v86 + 96) = v88;
    v89 = *(a1 + 16);
    *(v86 + 16) = *a1;
    *(v86 + 32) = v89;
    *(v86 + 112) = v85;
    __chkstk_darwin(v86);
    v90 = v132;
    *(&v115 - 2) = v85;
    *(&v115 - 1) = v90;

    sub_100050308(a1, v144);

    sub_1000040A8(&qword_1003576F8, &qword_10027B250);
    sub_100050340();
    v91 = v121;
    Button.init(action:label:)();
    v92 = (v91 + *(v120 + 36));
    v93 = *(sub_1000040A8(&qword_1003550A0, &qword_100277F40) + 28);
    v94 = enum case for ControlSize.large(_:);
    v95 = type metadata accessor for ControlSize();
    (*(*(v95 - 8) + 104))(v92 + v93, v94, v95);
    *v92 = swift_getKeyPath();
    v96 = v133;
    GlassProminentButtonStyle.init()();
    sub_100050484();
    sub_100050D20(&qword_100357730, &type metadata accessor for GlassProminentButtonStyle, &protocol conformance descriptor for GlassProminentButtonStyle);
    v97 = v135;
    View.buttonStyle<A>(_:)();
    (*(v134 + 8))(v96, v97);
    v98 = (v54 + *(sub_1000040A8(&qword_100357738, &qword_10027B298) + 36));
    sub_1000040A8(&qword_100357740, &qword_10027B2A0);
    static ButtonBorderShape.capsule.getter();
    sub_100008FA0(v91, &qword_1003576A0, &qword_10027B1F8);
    *v98 = swift_getKeyPath();
    (*(v136 + 104))(v138, enum case for Color.RGBColorSpace.sRGB(_:), v137);
    v99 = Color.init(_:red:green:blue:opacity:)();
    v100 = swift_getKeyPath();
    v144[0] = v99;
    v101 = AnyShapeStyle.init<A>(_:)();
    v102 = (v54 + *(sub_1000040A8(&qword_100357748, &qword_100292210) + 36));
    *v102 = v100;
    v102[1] = v101;
    if (qword_100353988 != -1)
    {
      swift_once();
    }

    v103 = 38.0 - *&qword_100381C20;
    v104 = static Edge.Set.all.getter();
    v105 = v54 + *(v122 + 36);
    *v105 = v104;
    *(v105 + 8) = 0;
    *(v105 + 16) = 0;
    *(v105 + 24) = v103;
    *(v105 + 32) = 0;
    *(v105 + 40) = 0;
    v106 = v139;
    static KeyboardShortcut.defaultAction.getter();
    sub_100050578();
    View.keyboardShortcut(_:)();
    (*(v140 + 8))(v106, v141);
    sub_100008FA0(v54, &qword_1003576A8, &qword_10027B200);
    v107 = static Edge.Set.top.getter();
    v108 = v62 + *(v123 + 36);
    *v108 = v107;
    *(v108 + 8) = 0u;
    *(v108 + 24) = 0u;
    *(v108 + 40) = 1;
    sub_100006C20(v62, v125, &qword_1003576B0, &qword_10027B208);
    swift_storeEnumTagMultiPayload();
    sub_100050800();
    v53 = v142;
    _ConditionalContent<>.init(storage:)();

    a3 = v129;
  }

  sub_100008FA0(v62, &qword_1003576B0, &qword_10027B208);
  v109 = 0;
LABEL_20:
  v110 = sub_1000040A8(&qword_1003576E8, &qword_10027B240);
  (*(*(v110 - 8) + 56))(v53, v109, 1, v110);
  v111 = v143;
  v112 = v126;
  sub_100006C20(v143, v126, &qword_1003576E0, &qword_10027B238);
  sub_100006C20(v53, v11, &qword_1003576B8, &qword_10027B210);
  sub_100006C20(v112, a3, &qword_1003576E0, &qword_10027B238);
  v113 = sub_1000040A8(&qword_1003576F0, &qword_10027B248);
  sub_100006C20(v11, a3 + *(v113 + 48), &qword_1003576B8, &qword_10027B210);
  sub_100008FA0(v53, &qword_1003576B8, &qword_10027B210);
  sub_100008FA0(v111, &qword_1003576E0, &qword_10027B238);
  sub_100008FA0(v11, &qword_1003576B8, &qword_10027B210);
  return sub_100008FA0(v112, &qword_1003576E0, &qword_10027B238);
}

void sub_10004F440()
{
  v1 = *(v0 + 72);
  if (*(v1 + 32) > 1u)
  {
    if (*(v1 + 32) == 2)
    {
      if (sub_10004FEB8())
      {
LABEL_16:
        (*(v0 + 80))();
        return;
      }

      goto LABEL_7;
    }

    if (!*(v0 + 32))
    {
      goto LABEL_17;
    }

    v2 = sub_1000BB344(v1, 0, 4u);
    goto LABEL_15;
  }

  if (*(v1 + 32))
  {
    if (!*(v0 + 32))
    {
      goto LABEL_17;
    }

    v2 = sub_1000BCE78(v1);
LABEL_15:
    v11 = v2;

    if (v11)
    {
      goto LABEL_16;
    }
  }

LABEL_7:
  if (qword_100353AA8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000F53C(v3, qword_100381E48);
  sub_100050308(v0, v12);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();
  sub_100050DE0(v0);
  if (!os_log_type_enabled(v4, v5))
  {
    goto LABEL_12;
  }

  v6 = swift_slowAlloc();
  v12[0] = swift_slowAlloc();
  *v6 = 136446467;
  if (*(v0 + 32))
  {

    v7 = sub_1000B9A7C();
    v9 = v8;

    v10 = sub_10017C9E8(v7, v9, v12);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2081;
    *(v6 + 14) = sub_10017C9E8(*(v1 + 16), *(v1 + 24), v12);
    _os_log_impl(&_mh_execute_header, v4, v5, "[%{public}s] QuestionnaireBodyView: failed to record answer for %{private}s", v6, 0x16u);
    swift_arrayDestroy();

LABEL_12:

    return;
  }

LABEL_17:
  type metadata accessor for QuestionnaireState();
  sub_100050D20(&qword_100354D50, type metadata accessor for QuestionnaireState, "\ts\n");
  EnvironmentObject.error()();
  __break(1u);
}

__n128 sub_10004F6C8@<Q0>(uint64_t a1@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  v2 = Text.init(_:tableName:bundle:comment:)();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v9 = static Color.primary.getter();
  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v8;
  *(a1 + 96) = v15;
  *(a1 + 112) = v16;
  *(a1 + 128) = v17;
  *(a1 + 32) = v11;
  *(a1 + 48) = v12;
  result = v14;
  *(a1 + 64) = v13;
  *(a1 + 80) = v14;
  *(a1 + 144) = v9;
  return result;
}

void sub_10004F7D4()
{
  if (*(v0 + 32))
  {
    v1 = *(v0 + 72);

    if (sub_1000BB344(v1, 0, 3u))
    {

      (*(v0 + 80))(v2);
    }

    else
    {
      if (qword_100353AA8 != -1)
      {
        swift_once();
      }

      v3 = type metadata accessor for Logger();
      sub_10000F53C(v3, qword_100381E48);
      sub_100050308(v0, v11);
      v4 = Logger.logObject.getter();
      v5 = static os_log_type_t.error.getter();
      sub_100050DE0(v0);
      if (os_log_type_enabled(v4, v5))
      {
        v6 = swift_slowAlloc();
        v11[0] = swift_slowAlloc();
        *v6 = 136446467;
        v7 = sub_1000B9A7C();
        v9 = v8;

        v10 = sub_10017C9E8(v7, v9, v11);

        *(v6 + 4) = v10;
        *(v6 + 12) = 2081;
        *(v6 + 14) = sub_10017C9E8(*(v1 + 16), *(v1 + 24), v11);
        _os_log_impl(&_mh_execute_header, v4, v5, "[%{public}s] QuestionnaireBodyView: failed to record skip for %{private}s", v6, 0x16u);
        swift_arrayDestroy();
      }

      else
      {
      }
    }
  }

  else
  {
    type metadata accessor for QuestionnaireState();
    sub_100050D20(&qword_100354D50, type metadata accessor for QuestionnaireState, "\ts\n");
    EnvironmentObject.error()();
    __break(1u);
  }
}

__n128 sub_10004FA20@<Q0>(uint64_t a1@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  v2 = Text.init(_:tableName:bundle:comment:)();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v9 = v6 & 1;
  v10 = static Color.white.getter();
  KeyPath = swift_getKeyPath();
  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v9;
  *(a1 + 24) = v8;
  *(a1 + 96) = v17;
  *(a1 + 112) = v18;
  *(a1 + 128) = v19;
  *(a1 + 32) = v13;
  *(a1 + 48) = v14;
  result = v16;
  *(a1 + 64) = v15;
  *(a1 + 80) = v16;
  *(a1 + 144) = KeyPath;
  *(a1 + 152) = v10;
  return result;
}

uint64_t sub_10004FB34(uint64_t a1)
{
  v2 = v1;
  if (*(v1 + 32))
  {
    v4 = *(v1 + 72);

    if ((sub_1000BB344(v4, a1, 0) & 1) == 0)
    {
      if (qword_100353AA8 != -1)
      {
        swift_once();
      }

      v5 = type metadata accessor for Logger();
      sub_10000F53C(v5, qword_100381E48);
      sub_100050308(v1, v15);

      v6 = Logger.logObject.getter();
      v7 = static os_log_type_t.error.getter();

      sub_100050DE0(v1);
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        v15[0] = swift_slowAlloc();
        *v8 = 136446723;
        v9 = sub_1000B9A7C();
        v11 = v10;

        v12 = sub_10017C9E8(v9, v11, v15);

        *(v8 + 4) = v12;
        *(v8 + 12) = 2081;
        *(v8 + 14) = sub_10017C9E8(*(a1 + 16), *(a1 + 24), v15);
        *(v8 + 22) = 2081;
        *(v8 + 24) = sub_10017C9E8(*(v4 + 16), *(v4 + 24), v15);
        _os_log_impl(&_mh_execute_header, v6, v7, "[%{public}s] QuestionnaireBodyView: failed to record %{private}s answer for %{private}s", v8, 0x20u);
        swift_arrayDestroy();

        return (*(v2 + 80))(v13);
      }
    }

    return (*(v2 + 80))(v13);
  }

  type metadata accessor for QuestionnaireState();
  sub_100050D20(&qword_100354D50, type metadata accessor for QuestionnaireState, "\ts\n");
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

__n128 sub_10004FDA4@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v16 = *(*(a1 + 32) + 16);
  sub_100031770(a1, a2, a3);

  v5 = Text.init<A>(_:)();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v12 = v9 & 1;
  v13 = static Color.white.getter();
  KeyPath = swift_getKeyPath();
  *a4 = v5;
  *(a4 + 8) = v7;
  *(a4 + 16) = v12;
  *(a4 + 24) = v11;
  *(a4 + 96) = v20;
  *(a4 + 112) = v21;
  *(a4 + 128) = v22;
  *(a4 + 32) = v16;
  *(a4 + 48) = v17;
  result = v19;
  *(a4 + 64) = v18;
  *(a4 + 80) = v19;
  *(a4 + 144) = KeyPath;
  *(a4 + 152) = v13;
  return result;
}

uint64_t sub_10004FEB8()
{
  v1 = *(v0 + 72);
  if (*(v1 + 32) != 2)
  {
    v3 = 0;
    return v3 & 1;
  }

  v2 = v0;
  if (*(*(v1 + 56) + 16))
  {
    if (*(v0 + 32))
    {

      v3 = sub_1000BCB4C(v1);
LABEL_34:

      return v3 & 1;
    }

    goto LABEL_36;
  }

  v4 = *(v1 + 144);
  if (v4 >> 62)
  {
    goto LABEL_30;
  }

  v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5)
  {
LABEL_8:
    v6 = 0;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v8 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
LABEL_27:
          __break(1u);
LABEL_28:
          v19 = sub_1000BCB4C(v1);
          goto LABEL_33;
        }
      }

      else
      {
        if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_30:
          v5 = _CocoaArrayWrapper.endIndex.getter();
          if (!v5)
          {
            break;
          }

          goto LABEL_8;
        }

        v7 = *(v4 + 8 * v6 + 32);

        v8 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          goto LABEL_27;
        }
      }

      v9 = *(v2 + 32);
      if (!v9)
      {
        goto LABEL_36;
      }

      if (*(v7 + 40))
      {
        swift_beginAccess();
        v10 = *(v9 + 72);
        v11 = *(v10 + 16);

        if (v11)
        {

          v12 = sub_1001921F0();
          if (v13)
          {
            v14 = (*(v10 + 56) + 16 * v12);
            v16 = *v14;
            v15 = v14[1];

            v17 = v16 & 0xFFFFFFFFFFFFLL;
            goto LABEL_20;
          }
        }
      }

      else
      {
      }

      v17 = 0;
      v15 = 0xE000000000000000;
LABEL_20:

      v18 = HIBYTE(v15) & 0xF;
      if ((v15 & 0x2000000000000000) == 0)
      {
        v18 = v17;
      }

      if (v18)
      {
        goto LABEL_28;
      }

      ++v6;
      if (v8 == v5)
      {
        goto LABEL_32;
      }
    }
  }

  if (*(v2 + 32))
  {
LABEL_32:

    v19 = sub_1000BB344(v1, 0, 3u);
LABEL_33:
    v3 = v19;
    goto LABEL_34;
  }

LABEL_36:
  type metadata accessor for QuestionnaireState();
  sub_100050D20(&qword_100354D50, type metadata accessor for QuestionnaireState, "\ts\n");
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t sub_100050144@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[3];
  v11[2] = v1[2];
  v11[3] = v3;
  v4 = v1[5];
  v11[4] = v1[4];
  v11[5] = v4;
  v5 = v1[1];
  v11[0] = *v1;
  v11[1] = v5;
  if (v5)
  {
    v6 = *(v5 + 72);
    v7 = *(v5 + 80);
    sub_1000088DC((v5 + 48), v6);
    (*(v7 + 24))(v10, v6, v7);
    *a1 = static HorizontalAlignment.center.getter();
    *(a1 + 8) = 0;
    *(a1 + 16) = 1;
    v8 = sub_1000040A8(&qword_100357690, &qword_10027B1E8);
    sub_10004DED8(v11, v10, a1 + *(v8 + 44));
    return sub_100008964(v10);
  }

  else
  {
    type metadata accessor for UIMetrics();
    sub_100050D20(&qword_100354D40, type metadata accessor for UIMetrics, "\ts\n");
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_100050264()
{

  sub_1000502D0(*(v0 + 64), *(v0 + 72));

  return _swift_deallocObject(v0, 120, 7);
}

unint64_t sub_100050340()
{
  result = qword_100357700;
  if (!qword_100357700)
  {
    sub_100008CF0(&qword_1003576F8, &qword_10027B250);
    sub_1000503F8();
    sub_100009274(&qword_100355068, &qword_100355070, &qword_100279CE0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100357700);
  }

  return result;
}

unint64_t sub_1000503F8()
{
  result = qword_100357708;
  if (!qword_100357708)
  {
    sub_100008CF0(&qword_100357710, &qword_10027B258);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100357708);
  }

  return result;
}

unint64_t sub_100050484()
{
  result = qword_100357718;
  if (!qword_100357718)
  {
    sub_100008CF0(&qword_1003576A0, &qword_10027B1F8);
    sub_100009274(&qword_100357720, &qword_100357728, &qword_10027B290, &protocol conformance descriptor for Button<A>);
    sub_100009274(&qword_100355098, &qword_1003550A0, &qword_100277F40, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100357718);
  }

  return result;
}

unint64_t sub_100050578()
{
  result = qword_100357750;
  if (!qword_100357750)
  {
    sub_100008CF0(&qword_1003576A8, &qword_10027B200);
    sub_100050604();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100357750);
  }

  return result;
}

unint64_t sub_100050604()
{
  result = qword_100357758;
  if (!qword_100357758)
  {
    sub_100008CF0(&qword_100357748, &qword_100292210);
    sub_1000506BC();
    sub_100009274(&qword_100357770, &qword_100357778, &qword_10027B310, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100357758);
  }

  return result;
}

unint64_t sub_1000506BC()
{
  result = qword_100357760;
  if (!qword_100357760)
  {
    sub_100008CF0(&qword_100357738, &qword_10027B298);
    sub_100008CF0(&qword_1003576A0, &qword_10027B1F8);
    type metadata accessor for GlassProminentButtonStyle();
    sub_100050484();
    sub_100050D20(&qword_100357730, &type metadata accessor for GlassProminentButtonStyle, &protocol conformance descriptor for GlassProminentButtonStyle);
    swift_getOpaqueTypeConformance2();
    sub_100009274(&qword_100357768, &qword_100357740, &qword_10027B2A0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100357760);
  }

  return result;
}

unint64_t sub_100050800()
{
  result = qword_100357780;
  if (!qword_100357780)
  {
    sub_100008CF0(&qword_1003576B0, &qword_10027B208);
    sub_100008CF0(&qword_1003576A8, &qword_10027B200);
    sub_100050578();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100357780);
  }

  return result;
}

uint64_t sub_1000508F8()
{

  sub_1000502D0(*(v0 + 64), *(v0 + 72));

  return _swift_deallocObject(v0, 112, 7);
}

unint64_t sub_100050988()
{
  result = qword_100357790;
  if (!qword_100357790)
  {
    sub_100008CF0(&qword_100357788, &qword_10027B318);
    sub_1000503F8();
    sub_100009274(&qword_100357798, &qword_1003577A0, &qword_10027B320, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100357790);
  }

  return result;
}

unint64_t sub_100050A40()
{
  result = qword_1003577A8;
  if (!qword_1003577A8)
  {
    sub_100008CF0(&qword_1003576C0, &qword_10027B218);
    sub_100009274(&qword_1003577B0, &qword_1003577B8, &qword_10027B328, &protocol conformance descriptor for Button<A>);
    sub_100009274(&qword_100355098, &qword_1003550A0, &qword_100277F40, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003577A8);
  }

  return result;
}

unint64_t sub_100050B24()
{
  result = qword_1003577C8;
  if (!qword_1003577C8)
  {
    sub_100008CF0(&qword_1003576C8, &qword_10027B220);
    sub_100050BDC();
    sub_100009274(&qword_100357770, &qword_100357778, &qword_10027B310, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003577C8);
  }

  return result;
}

unint64_t sub_100050BDC()
{
  result = qword_1003577D0;
  if (!qword_1003577D0)
  {
    sub_100008CF0(&qword_1003577C0, &qword_10027B330);
    sub_100008CF0(&qword_1003576C0, &qword_10027B218);
    type metadata accessor for GlassProminentButtonStyle();
    sub_100050A40();
    sub_100050D20(&qword_100357730, &type metadata accessor for GlassProminentButtonStyle, &protocol conformance descriptor for GlassProminentButtonStyle);
    swift_getOpaqueTypeConformance2();
    sub_100009274(&qword_100357768, &qword_100357740, &qword_10027B2A0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003577D0);
  }

  return result;
}

uint64_t sub_100050D20(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100050D70(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000040A8(&qword_1003576D8, &qword_10027B230);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

__n128 sub_100050E60(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_100050E7C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100050EC4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100050F44@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = *(v1 + 16);
  if (v4)
  {
    v5 = v4[9];
    v6 = v4[10];
    sub_1000088DC(v4 + 6, v5);
    (*(v6 + 24))(v34, v5, v6);
    v7 = static HorizontalAlignment.center.getter();
    v24 = 0;
    sub_100051120(v2, &v15);
    v29 = v19;
    v30 = v20;
    v31 = v21;
    v32 = v22;
    v25 = v15;
    v26 = v16;
    v27 = v17;
    v28 = v18;
    v33[0] = v15;
    v33[1] = v16;
    v33[2] = v17;
    v33[3] = v18;
    v33[4] = v19;
    v33[5] = v20;
    v33[6] = v21;
    v33[7] = v22;
    sub_100006C20(&v25, &v14, &qword_1003577F0, &unk_10027B480);
    sub_100008FA0(v33, &qword_1003577F0, &unk_10027B480);
    *&v23[71] = v29;
    *&v23[87] = v30;
    *&v23[103] = v31;
    *&v23[119] = v32;
    *&v23[7] = v25;
    *&v23[23] = v26;
    *&v23[39] = v27;
    *&v23[55] = v28;
    result = sub_100008964(v34);
    v9 = *&v23[64];
    *(a1 + 97) = *&v23[80];
    v10 = *&v23[112];
    *(a1 + 113) = *&v23[96];
    *(a1 + 129) = v10;
    v11 = *v23;
    *(a1 + 33) = *&v23[16];
    v12 = *&v23[48];
    *(a1 + 49) = *&v23[32];
    *(a1 + 65) = v12;
    *(a1 + 81) = v9;
    v13 = v24;
    *a1 = v7;
    *(a1 + 8) = 0x402C000000000000;
    *(a1 + 16) = v13;
    *(a1 + 144) = *&v23[127];
    *(a1 + 17) = v11;
  }

  else
  {
    type metadata accessor for UIMetrics();
    sub_1000518A8(&qword_100354D40, type metadata accessor for UIMetrics, "\ts\n");
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_100051120@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = objc_opt_self();
  v5 = [v4 mainBundle];
  v43._object = 0x8000000100298AB0;
  v6._countAndFlagsBits = 0xD000000000000013;
  v6._object = 0x80000001002973D0;
  v7.value._object = 0x80000001002962C0;
  v43._countAndFlagsBits = 0xD00000000000004ALL;
  v7.value._countAndFlagsBits = 0xD000000000000012;
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  v9 = NSLocalizedString(_:tableName:bundle:value:comment:)(v6, v7, v5, v8, v43);

  v10 = swift_allocObject();
  v11 = a1[3];
  v10[3] = a1[2];
  v10[4] = v11;
  v10[5] = a1[4];
  v12 = a1[1];
  v10[1] = *a1;
  v10[2] = v12;
  sub_1000383E4(a1, v30);
  type metadata accessor for UIMetrics();
  sub_1000518A8(&qword_100354D40, type metadata accessor for UIMetrics, "\ts\n");
  v29 = EnvironmentObject.init()();
  v14 = v13;
  v15 = [v4 mainBundle];
  v44._object = 0x8000000100298B00;
  v16._countAndFlagsBits = 0x636E656772656D45;
  v17.value._object = 0x80000001002962C0;
  v44._countAndFlagsBits = 0xD000000000000044;
  v16._object = 0xE900000000000079;
  v17.value._countAndFlagsBits = 0xD000000000000012;
  v18._countAndFlagsBits = 0;
  v18._object = 0xE000000000000000;
  v19 = NSLocalizedString(_:tableName:bundle:value:comment:)(v16, v17, v15, v18, v44);

  type metadata accessor for OptionPresentation();
  v20 = swift_allocObject();
  v20[1] = v19;
  v20[3]._countAndFlagsBits = 0;
  v20[3]._object = 0;
  v20[4]._countAndFlagsBits = static Color.clear.getter();
  v20[2]._countAndFlagsBits = 0;
  v20[2]._object = 0;
  v21 = swift_allocObject();
  v22 = a1[3];
  v21[3] = a1[2];
  v21[4] = v22;
  v21[5] = a1[4];
  v23 = a1[1];
  v21[1] = *a1;
  v21[2] = v23;
  sub_1000383E4(a1, v30);
  v24 = EnvironmentObject.init()();
  *&v39[0] = v29;
  *(&v39[0] + 1) = v14;
  v39[1] = v9;
  *&v40 = 0;
  *(&v40 + 1) = 0xE000000000000000;
  LOBYTE(v41) = 0;
  *(&v41 + 1) = *v38;
  DWORD1(v41) = *&v38[3];
  *(&v41 + 1) = sub_1000517CC;
  v42 = v10;
  v25 = v39[0];
  v26 = v41;
  *(a2 + 32) = v40;
  *(a2 + 48) = v26;
  *a2 = v25;
  *(a2 + 16) = v9;
  *(a2 + 64) = v10;
  *(a2 + 72) = v24;
  *(a2 + 80) = v27;
  *(a2 + 88) = v20;
  *(a2 + 96) = 0;
  *(a2 + 104) = 0;
  *(a2 + 112) = sub_1000517F0;
  *(a2 + 120) = v21;
  sub_1000517F8(v39, v30);
  v30[0] = v29;
  v30[1] = v14;
  v31 = v9;
  v32 = 0;
  v33 = 0xE000000000000000;
  v34 = 0;
  *v35 = *v38;
  *&v35[3] = *&v38[3];
  v36 = sub_1000517CC;
  v37 = v10;
  return sub_100051854(v30);
}

uint64_t sub_100051430()
{
  if (*v0)
  {
    *&v5[0] = *(v0 + 32);

    PassthroughSubject.send(_:)();

    v7 = *(v0 + 64);
    v5[0] = *(v0 + 64);
    v8 = *(&v7 + 1);
    sub_100006C20(&v8, v6, &qword_100354AB0, &unk_1002779B0);
    sub_1000040A8(&qword_100354AA8, &qword_10027D640);
    State.wrappedValue.getter();
    if (v6[0])
    {

      return sub_100008FA0(&v7, &qword_100354AA8, &qword_10027D640);
    }

    else
    {
      v5[0] = v7;
      LOBYTE(v6[0]) = 1;
      State.wrappedValue.setter();
      sub_100008FA0(&v7, &qword_100354AA8, &qword_10027D640);

      v2 = swift_allocObject();
      v3 = *(v0 + 48);
      v2[3] = *(v0 + 32);
      v2[4] = v3;
      v2[5] = *(v0 + 64);
      v4 = *(v0 + 16);
      v2[1] = *v0;
      v2[2] = v4;
      v6[0] = sub_100051950;
      v6[1] = v2;
      sub_1000383E4(v0, v5);
      PassthroughSubject.send(_:)();
    }
  }

  else
  {
    type metadata accessor for AppEvents();
    sub_1000518A8(&qword_100354D48, type metadata accessor for AppEvents, "ɼ\t");
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

void *sub_100051638(uint64_t a1)
{
  v5 = *(a1 + 64);
  sub_1000040A8(&qword_100354AA8, &qword_10027D640);
  result = State.wrappedValue.getter();
  if ((v7 & 1) == 0)
  {
    v3 = *(a1 + 40);
    v6 = &type metadata for RecordedForkAnswer;
    LOWORD(v5) = 0;
    sub_1000C0AF0(v3, &v5);
    v4 = sub_100008FA0(&v5, &qword_1003577F8, &unk_10027B490);
    return (*(a1 + 48))(v4);
  }

  return result;
}

uint64_t sub_1000516D0(unsigned __int8 *a1, uint64_t a2)
{
  v3 = *a1;
  v6 = *(a2 + 64);
  v8 = 0;
  sub_1000040A8(&qword_100354AA8, &qword_10027D640);
  State.wrappedValue.setter();
  v4 = *(a2 + 40);
  v7 = &type metadata for RecordedForkAnswer;
  LOBYTE(v6) = 1;
  BYTE1(v6) = v3;
  sub_1000C0AF0(v4, &v6);
  result = sub_100008FA0(&v6, &qword_1003577F8, &unk_10027B490);
  if (v3 == 1)
  {
    return (*(a2 + 48))(result);
  }

  return result;
}

uint64_t sub_1000518A8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000518F0()
{

  return _swift_deallocObject(v0, 96, 7);
}

unint64_t sub_10005195C()
{
  result = qword_100357800;
  if (!qword_100357800)
  {
    sub_100008CF0(&qword_100357808, &unk_10027B4A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100357800);
  }

  return result;
}

uint64_t sub_1000519C8(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
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

uint64_t sub_100051A24(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_100051AA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v87 = a2;
  v88 = a4;
  v78 = a1;
  v90 = a5;
  v6 = sub_1000040A8(&qword_100357810, &qword_10027B558);
  __chkstk_darwin(v6 - 8);
  v91 = &v78 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v89 = (&v78 - v9);
  v93 = type metadata accessor for OpacityTransition();
  v85 = *(v93 - 8);
  __chkstk_darwin(v93);
  v82 = &v78 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_1000040A8(&qword_100357818, &qword_10027B560);
  v86 = *(v92 - 8);
  __chkstk_darwin(v92);
  v83 = &v78 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v84 = &v78 - v13;
  v14 = type metadata accessor for Font.Leading();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v78 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {
    type metadata accessor for UIMetrics();
    sub_10005498C(&qword_100354D40, type metadata accessor for UIMetrics, "\ts\n");
LABEL_25:
    result = EnvironmentObject.error()();
    __break(1u);
    return result;
  }

  v18 = *(a3 + 72);
  v19 = *(a3 + 80);
  sub_1000088DC((a3 + 48), v18);
  v20 = *(v19 + 32);
  swift_retain_n();
  v20(v156, v18, v19);
  v21 = v78;
  if (!v78)
  {
    type metadata accessor for GuidanceMessagesModel();
    sub_10005498C(&qword_100357820, type metadata accessor for GuidanceMessagesModel, "\ts\n");
    goto LABEL_25;
  }

  if (*(v78 + 96) == 1)
  {
    v22 = [objc_opt_self() mainBundle];
    v164._object = 0x8000000100298B90;
    v81 = 0xE000000000000000;
    v23._object = 0x8000000100298B50;
    v164._countAndFlagsBits = 0xD00000000000005CLL;
    v23._countAndFlagsBits = 0xD00000000000003FLL;
    v24._countAndFlagsBits = 0;
    v24._object = 0xE000000000000000;
    v25 = NSLocalizedString(_:tableName:bundle:value:comment:)(v23, 0, v22, v24, v164);
    countAndFlagsBits = v25._countAndFlagsBits;
    object = v25._object;

    v80 = 0;
    v95 = 4;
  }

  else
  {
    v31 = *(v78 + 48);
    if (v31)
    {
      v32 = *(v31 + 16);
      object = *(v31 + 24);
    }

    else
    {
      v32 = 0;
      object = 0xE000000000000000;
    }

    sub_1001DE260();
    v34 = v33;
    v36 = v35;

    v37 = 0xE000000000000000;
    v95 = 3;
    if (v36)
    {
      v38 = v34;
    }

    else
    {
      v38 = 0;
    }

    if (v36)
    {
      v37 = v36;
    }

    v80 = v38;
    v81 = v37;
    countAndFlagsBits = v32;
  }

  v79._countAndFlagsBits = countAndFlagsBits;
  v112[0] = countAndFlagsBits;
  v112[1] = object;
  sub_100031770(v28, v29, v30);
  v79._object = object;

  v39 = Text.init<A>(_:)();
  v108 = v40;
  v109 = v39;
  v42 = v41;
  v110 = v43;
  v44 = sub_1000088DC(v156, v156[3]);
  v45 = *v44;
  v46 = *(*v44 + 184);
  v106 = *(*v44 + 192);
  v107 = v46;
  v47 = *(v45 + 200);
  v104 = *(v45 + 208);
  v105 = v47;
  v48 = static Edge.Set.all.getter();
  v102 = v42 & 1;
  v103 = v48;
  LOBYTE(v112[0]) = v42 & 1;
  LOBYTE(v111[0]) = 0;
  static Font.title.getter();
  static Font.Weight.semibold.getter();
  Font.weight(_:)();

  (*(v15 + 104))(v17, enum case for Font.Leading.tight(_:), v14);
  *(&v101 + 1) = Font.leading(_:)();

  (*(v15 + 8))(v17, v14);
  *&v101 = swift_getKeyPath();
  v49 = [objc_opt_self() labelColor];
  *(&v100 + 1) = Color.init(uiColor:)();
  *&v100 = swift_getKeyPath();
  v50 = *(a3 + 112);

  v51 = static UIContentSizeCategory.>= infix(_:_:)();

  KeyPath = swift_getKeyPath();
  v98 = v51 & 1;
  v151 = v51 & 1;
  v52 = *(a3 + 112);

  v53 = static UIContentSizeCategory.>= infix(_:_:)();

  v97 = swift_getKeyPath();
  v54 = *(a3 + 112);

  static Alignment.center.getter();
  if (static UIContentSizeCategory.>= infix(_:_:)())
  {
    static Alignment.center.getter();
    if (static Alignment.== infix(_:_:)())
    {
      static Alignment.leading.getter();
    }
  }

  v96 = (v53 & 1) == 0;
  v55 = v95;
  if (v51)
  {
    v55 = 0;
  }

  v95 = v55;
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  *&v153[55] = v160;
  *&v153[71] = v161;
  *&v153[87] = v162;
  *&v153[103] = v163;
  *&v153[7] = v157;
  *&v153[23] = v158;
  *&v153[39] = v159;
  v56 = *(a3 + 112);

  v57 = static UIContentSizeCategory.>= infix(_:_:)();

  if (v57)
  {
    v58 = 1.0;
  }

  else
  {
    v58 = 0.5;
  }

  v94 = swift_getKeyPath();
  v59 = v82;
  OpacityTransition.init()();
  static Animation.easeInOut.getter();
  v60 = sub_10005498C(&qword_100356B88, &type metadata accessor for OpacityTransition, &protocol conformance descriptor for OpacityTransition);
  v61 = v84;
  v62 = v93;
  Transition.animation(_:)();

  (*(v85 + 8))(v59, v62);
  v63 = v86;
  v64 = v92;
  (*(v86 + 16))(v83, v61, v92);
  v112[0] = v62;
  v112[1] = v60;
  swift_getOpaqueTypeConformance2();
  v93 = AnyTransition.init<A>(_:)();
  (*(v63 + 8))(v61, v64);
  strcpy(v112, "GuidanceText-");
  HIWORD(v112[1]) = -4864;
  String.append(_:)(v79);

  v65 = v112[0];
  v86 = v112[0];
  v92 = v112[1];
  v66 = swift_allocObject();
  v68 = v87;
  v67 = v88;
  v66[2] = v21;
  v66[3] = v68;
  v66[4] = a3;
  v66[5] = v67;
  v69 = swift_allocObject();
  v69[2] = v21;
  v69[3] = v68;
  v69[4] = a3;
  v69[5] = v67;
  swift_retain_n();
  swift_retain_n();
  v70 = static Alignment.top.getter();
  v71 = v89;
  *v89 = v70;
  *(v71 + 8) = v72;
  v73 = sub_1000040A8(&qword_100357828, &qword_10027B658);
  sub_100052D04(v21, v68, a3, v67, v156, v80, v81, v71 + *(v73 + 44));

  v74 = v91;
  sub_100006C20(v71, v91, &qword_100357810, &qword_10027B558);
  *(&v111[12] + 1) = *&v153[48];
  *(&v111[11] + 1) = *&v153[32];
  *(&v111[10] + 1) = *&v153[16];
  *(&v111[9] + 1) = *v153;
  *&v111[16] = *&v153[111];
  *(&v111[15] + 1) = *&v153[96];
  *(&v111[14] + 1) = *&v153[80];
  *&v111[0] = v109;
  *(&v111[0] + 1) = v108;
  LOBYTE(v111[1]) = v102;
  *(&v111[1] + 1) = *v155;
  DWORD1(v111[1]) = *&v155[3];
  *(&v111[1] + 1) = v110;
  LOBYTE(v111[2]) = v103;
  *(&v111[2] + 1) = *v154;
  DWORD1(v111[2]) = *&v154[3];
  *(&v111[2] + 1) = v107;
  *&v111[3] = v106;
  *(&v111[3] + 1) = v105;
  *&v111[4] = v104;
  BYTE8(v111[4]) = 0;
  *(&v111[4] + 9) = *v150;
  HIDWORD(v111[4]) = *&v150[3];
  v111[5] = v101;
  v111[6] = v100;
  *&v111[7] = KeyPath;
  *(&v111[7] + 1) = v95;
  LOBYTE(v111[8]) = v98;
  *(&v111[8] + 1) = *v152;
  DWORD1(v111[8]) = *&v152[3];
  *(&v111[8] + 1) = v97;
  LOBYTE(v111[9]) = v96;
  *(&v111[13] + 1) = *&v153[64];
  *(&v111[16] + 1) = v94;
  *&v111[17] = v58;
  *(&v111[17] + 1) = v93;
  *&v111[18] = v65;
  *(&v111[18] + 1) = v92;
  *&v111[19] = sub_100054104;
  *(&v111[19] + 1) = v66;
  memset(&v111[20], 0, 32);
  *&v111[22] = sub_100054148;
  *(&v111[22] + 1) = v69;
  v75 = v90;
  memcpy(v90, v111, 0x170uLL);
  v76 = sub_1000040A8(&qword_100357830, &qword_10027B660);
  sub_100006C20(v74, v75 + *(v76 + 48), &qword_100357810, &qword_10027B558);
  sub_100006C20(v111, v112, &qword_100357838, &qword_10027B668);
  sub_100008FA0(v71, &qword_100357810, &qword_10027B558);
  sub_100008FA0(v74, &qword_100357810, &qword_10027B558);
  *&v138[15] = *&v153[111];
  v135 = *&v153[48];
  v134 = *&v153[32];
  v133 = *&v153[16];
  v132 = *v153;
  *v138 = *&v153[96];
  v137 = *&v153[80];
  v112[0] = v109;
  v112[1] = v108;
  v113 = v102;
  *v114 = *v155;
  *&v114[3] = *&v155[3];
  v115 = v110;
  v116 = v103;
  *v117 = *v154;
  *&v117[3] = *&v154[3];
  v118 = v107;
  v119 = v106;
  v120 = v105;
  v121 = v104;
  v122 = 0;
  *v123 = *v150;
  *&v123[3] = *&v150[3];
  v124 = v101;
  v125 = v100;
  v126 = KeyPath;
  v127 = v95;
  v128 = v98;
  *v129 = *v152;
  *&v129[3] = *&v152[3];
  v130 = v97;
  v131 = v96;
  v136 = *&v153[64];
  v139 = v94;
  v140 = v58;
  v141 = v93;
  v142 = v86;
  v143 = v92;
  v144 = sub_100054104;
  v145 = v66;
  v147 = 0u;
  v146 = 0u;
  v148 = sub_100054148;
  v149 = v69;
  sub_100008FA0(v112, &qword_100357838, &qword_10027B668);
  return sub_100008964(v156);
}

uint64_t sub_1000527D4(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (!a1)
  {
    goto LABEL_9;
  }

  sub_10000F574();

  *v6 = static OS_dispatch_queue.main.getter();
  (*(v4 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v3);
  v7 = _dispatchPreconditionTest(_:)();
  (*(v4 + 8))(v6, v3);
  if ((v7 & 1) == 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  v8 = *(a1 + 104);
  v9 = v8 + 1;
  if (v8 == -1)
  {
LABEL_8:
    __break(1u);
LABEL_9:
    type metadata accessor for GuidanceMessagesModel();
    sub_10005498C(&qword_100357820, type metadata accessor for GuidanceMessagesModel, "\ts\n");
    result = EnvironmentObject.error()();
    __break(1u);
    return result;
  }

  *(a1 + 104) = v9;
  if (v9 != v8)
  {
    sub_1001F4988();
  }
}

uint64_t sub_100052978(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v22 = a6;
  v23 = a7;
  v11 = type metadata accessor for DispatchWorkItemFlags();
  v26 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for DispatchQoS();
  v14 = *(v25 - 8);
  __chkstk_darwin(v25);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000F574();
  v24 = static OS_dispatch_queue.main.getter();
  v17 = swift_allocObject();
  v17[2] = a1;
  v17[3] = a2;
  v17[4] = a3;
  v17[5] = a4;
  aBlock[4] = v22;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001D2438;
  aBlock[3] = v23;
  v18 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10005498C(&qword_10035BB40, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000040A8(&unk_100355D70, &qword_100279D60);
  sub_100009274(&qword_10035BB50, &unk_100355D70, &qword_100279D60, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v19 = v24;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);

  (*(v26 + 8))(v13, v11);
  return (*(v14 + 8))(v16, v25);
}

uint64_t sub_100052C6C(uint64_t a1, uint64_t a2)
{
  if (a1)
  {

    sub_1001DE340();
  }

  else
  {
    type metadata accessor for GuidanceMessagesModel();
    sub_10005498C(&qword_100357820, type metadata accessor for GuidanceMessagesModel, "\ts\n");
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_100052D04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X5>, void *a7@<X6>, uint64_t a8@<X8>)
{
  v120._countAndFlagsBits = a6;
  v120._object = a7;
  v115 = a5;
  v111 = a4;
  v122 = a3;
  v113 = a2;
  v119 = a8;
  v106 = type metadata accessor for OpacityTransition();
  v103 = *(v106 - 8);
  __chkstk_darwin(v106);
  v100 = &v91[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_1000040A8(&qword_100357818, &qword_10027B560);
  v104 = *(v10 - 8);
  v105 = v10;
  __chkstk_darwin(v10);
  v101 = &v91[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v12);
  v102 = &v91[-v13];
  v114 = type metadata accessor for Font.Leading();
  v14 = *(v114 - 8);
  __chkstk_darwin(v114);
  v16 = &v91[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = sub_1000040A8(&qword_100357840, &qword_10027B670);
  v116 = *(v17 - 8);
  v117 = v17;
  __chkstk_darwin(v17);
  v112 = &v91[-v18];
  v19 = sub_1000040A8(&qword_100357848, &qword_10027B678);
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v91[-v21];
  v23 = sub_1000040A8(&qword_100357850, &qword_10027B680);
  __chkstk_darwin(v23 - 8);
  v118 = &v91[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v26 = __chkstk_darwin(v25);
  v121 = &v91[-v27];
  if (!a1)
  {
    type metadata accessor for GuidanceMessagesModel();
    sub_10005498C(&qword_100357820, type metadata accessor for GuidanceMessagesModel, "\ts\n");
LABEL_27:
    result = EnvironmentObject.error()();
    __break(1u);
    return result;
  }

  v28 = *(a1 + 48);
  if (!v28)
  {
    goto LABEL_8;
  }

  if (!*(v28 + 72))
  {

    v29 = sub_10020327C();

    if (v29)
    {
      goto LABEL_6;
    }

LABEL_8:
    v37 = (*(v20 + 56))(v121, 1, 1, v19, v26);
    goto LABEL_11;
  }

  v29 = *(v28 + 72);
LABEL_6:
  if (*(v29 + 16) < 2uLL)
  {

    (*(v116 + 56))(v22, 1, 1, v117);
  }

  else
  {
    v123[0] = v29;
    KeyPath = swift_getKeyPath();
    sub_1000089B0(v115, &v124);
    v30 = swift_allocObject();
    sub_100008A18(&v124._countAndFlagsBits, (v30 + 2));
    object = v120._object;
    v30[7] = v120._countAndFlagsBits;
    v30[8] = object;
    v32 = v113;
    v30[9] = a1;
    v30[10] = v32;
    v33 = v111;
    v30[11] = v122;
    v30[12] = v33;

    v113 = sub_1000040A8(&qword_100355E30, &unk_10027A120);
    sub_1000040A8(&qword_100357868, &qword_10027B6C0);
    sub_100009274(&qword_100357870, &qword_100355E30, &unk_10027A120, &protocol conformance descriptor for [A]);
    sub_100054260();
    v34 = v112;
    ForEach<>.init(_:id:content:)();
    v36 = v116;
    v35 = v117;
    (*(v116 + 32))(v22, v34, v117);
    (*(v36 + 56))(v22, 0, 1, v35);
  }

  v40 = v121;
  sub_10005418C(v22, v121);
  v37 = (*(v20 + 56))(v40, 0, 1, v19, v41);
LABEL_11:
  v42 = v120;
  v124 = v120;
  sub_100031770(v37, v38, v39);

  v43 = Text.init<A>(_:)();
  v93 = v44;
  v94 = v43;
  v46 = v45;
  v99 = v47;
  v48 = v115;
  v49 = sub_1000088DC(v115, v115[3]);
  v50 = *v49;
  v51 = *(*v49 + 184);
  v97 = *(*v49 + 192);
  v98 = v51;
  v52 = *(v50 + 200);
  v95 = *(v50 + 208);
  v96 = v52;
  LODWORD(v117) = static Edge.Set.all.getter();
  LODWORD(v116) = v46 & 1;
  v169 = v46 & 1;
  v168 = 0;
  v92 = static Edge.Set.top.getter();
  v53 = (v42._object >> 56) & 0xF;
  if ((v42._object & 0x2000000000000000) == 0)
  {
    v53 = v42._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (v53)
  {
    sub_1000088DC(v48, v48[3]);
  }

  EdgeInsets.init(_all:)();
  v55 = v54;
  v57 = v56;
  v59 = v58;
  v61 = v60;
  v170 = 0;
  static Font.body.getter();
  static Font.Weight.semibold.getter();
  Font.weight(_:)();

  v62 = v114;
  (*(v14 + 104))(v16, enum case for Font.Leading.tight(_:), v114);
  v115 = Font.leading(_:)();

  (*(v14 + 8))(v16, v62);
  v114 = swift_getKeyPath();
  v63 = [objc_opt_self() labelColor];
  v113 = Color.init(uiColor:)();
  v112 = swift_getKeyPath();
  if (!v122)
  {
    type metadata accessor for UIMetrics();
    sub_10005498C(&qword_100354D40, type metadata accessor for UIMetrics, "\ts\n");
    goto LABEL_27;
  }

  v64 = *(v122 + 112);

  v65 = v64;
  v66 = static UIContentSizeCategory.>= infix(_:_:)();

  v67 = v122;
  v111 = swift_getKeyPath();
  LODWORD(KeyPath) = v66 & 1;
  v172 = v66 & 1;
  v68 = *(v67 + 112);
  v69 = static UIContentSizeCategory.>= infix(_:_:)();

  v109 = swift_getKeyPath();
  v70 = *(v67 + 112);
  static Alignment.center.getter();
  if (static UIContentSizeCategory.>= infix(_:_:)())
  {
    static Alignment.center.getter();
    if (static Alignment.== infix(_:_:)())
    {
      static Alignment.leading.getter();
    }
  }

  v108 = (v69 & 1) == 0;
  v71 = 3;
  if (v66)
  {
    v71 = 0;
  }

  v107 = v71;
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  *&v174[55] = v177[3];
  *&v174[71] = v177[4];
  *&v174[87] = v177[5];
  *&v174[103] = v177[6];
  *&v174[7] = v177[0];
  *&v174[23] = v177[1];
  *&v174[39] = v177[2];
  v72 = *(v67 + 112);

  v73 = static UIContentSizeCategory.>= infix(_:_:)();

  if (v73)
  {
    v74 = 1.0;
  }

  else
  {
    v74 = 0.5;
  }

  v122 = swift_getKeyPath();
  v75 = v100;
  OpacityTransition.init()();
  static Animation.easeInOut.getter();
  v76 = sub_10005498C(&qword_100356B88, &type metadata accessor for OpacityTransition, &protocol conformance descriptor for OpacityTransition);
  v77 = v102;
  v78 = v106;
  Transition.animation(_:)();

  (*(v103 + 8))(v75, v78);
  v80 = v104;
  v79 = v105;
  (*(v104 + 16))(v101, v77, v105);
  v124._countAndFlagsBits = v78;
  v124._object = v76;
  swift_getOpaqueTypeConformance2();
  v106 = AnyTransition.init<A>(_:)();
  (*(v80 + 8))(v77, v79);
  v124._countAndFlagsBits = 0xD000000000000010;
  v124._object = 0x8000000100298BF0;
  String.append(_:)(v120);
  v120._countAndFlagsBits = v124._object;
  v120._object = v124._countAndFlagsBits;
  v81 = v118;
  sub_100006C20(v121, v118, &qword_100357850, &qword_10027B680);
  sub_100006C20(v81, v119, &qword_100357850, &qword_10027B680);
  v82 = *(sub_1000040A8(&qword_100357858, &qword_10027B688) + 48);
  *(&v123[34] + 1) = *&v174[80];
  *(&v123[36] + 1) = *&v174[96];
  *(&v123[32] + 1) = *&v174[64];
  *(&v123[30] + 1) = *&v174[48];
  *(&v123[28] + 1) = *&v174[32];
  *(&v123[26] + 1) = *&v174[16];
  v84 = v93;
  v83 = v94;
  v123[0] = v94;
  v123[1] = v93;
  LOBYTE(v123[2]) = v116;
  *(&v123[2] + 1) = *v176;
  HIDWORD(v123[2]) = *&v176[3];
  v85 = v98;
  v86 = v99;
  v123[3] = v99;
  LOBYTE(v123[4]) = v117;
  *(&v123[4] + 1) = *v175;
  HIDWORD(v123[4]) = *&v175[3];
  v87 = v96;
  v88 = v97;
  v123[5] = v98;
  v123[6] = v97;
  v89 = v95;
  v123[7] = v96;
  v123[8] = v95;
  LOBYTE(v123[9]) = 0;
  HIDWORD(v123[9]) = *&v167[3];
  *(&v123[9] + 1) = *v167;
  LOBYTE(v78) = v92;
  LOBYTE(v123[10]) = v92;
  HIDWORD(v123[10]) = *&v166[3];
  *(&v123[10] + 1) = *v166;
  v123[11] = v55;
  v123[12] = v57;
  v123[13] = v59;
  v123[14] = v61;
  LOBYTE(v123[15]) = 0;
  *(&v123[15] + 1) = *v171;
  HIDWORD(v123[15]) = *&v171[3];
  v123[16] = v114;
  v123[17] = v115;
  v123[18] = v112;
  v123[19] = v113;
  v123[20] = v111;
  v123[21] = v107;
  LOBYTE(v123[22]) = KeyPath;
  *(&v123[22] + 1) = *v173;
  HIDWORD(v123[22]) = *&v173[3];
  v123[23] = v109;
  LOBYTE(v123[24]) = v108;
  *(&v123[24] + 1) = *v174;
  v123[38] = *&v174[111];
  v123[39] = v122;
  *&v123[40] = v74;
  v123[41] = v106;
  v123[42] = v120._object;
  v123[43] = v120._countAndFlagsBits;
  memcpy((v119 + v82), v123, 0x160uLL);
  sub_100006C20(v123, &v124, &qword_100357860, &unk_10027B690);
  sub_100008FA0(v121, &qword_100357850, &qword_10027B680);
  v124._countAndFlagsBits = v83;
  v124._object = v84;
  v125 = v116;
  *v126 = *v176;
  *&v126[3] = *&v176[3];
  v127 = v86;
  v128 = v117;
  *v129 = *v175;
  *&v129[3] = *&v175[3];
  v130 = v85;
  v131 = v88;
  v132 = v87;
  v133 = v89;
  v134 = 0;
  *&v135[3] = *&v167[3];
  *v135 = *v167;
  v136 = v78;
  *&v137[3] = *&v166[3];
  *v137 = *v166;
  v138 = v55;
  v139 = v57;
  v140 = v59;
  v141 = v61;
  v142 = 0;
  *v143 = *v171;
  *&v143[3] = *&v171[3];
  v144 = v114;
  v145 = v115;
  v146 = v112;
  v147 = v113;
  v148 = v111;
  v149 = v107;
  v150 = KeyPath;
  *v151 = *v173;
  *&v151[3] = *&v173[3];
  v152 = v109;
  v153 = v108;
  v159 = *&v174[80];
  *v160 = *&v174[96];
  v158 = *&v174[64];
  v157 = *&v174[48];
  v156 = *&v174[32];
  v155 = *&v174[16];
  v154 = *v174;
  *&v160[15] = *&v174[111];
  v161 = v122;
  v162 = v74;
  v163 = v106;
  v164 = v120._object;
  countAndFlagsBits = v120._countAndFlagsBits;
  sub_100008FA0(&v124, &qword_100357860, &unk_10027B690);
  return sub_100008FA0(v118, &qword_100357850, &qword_10027B680);
}

uint64_t sub_100053B58@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>)
{
  v52 = a6;
  v65 = a7;
  v12 = type metadata accessor for Font.Leading();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a1;
  v17 = a1[1];
  v67[0] = v16;
  v67[1] = v17;
  sub_100031770(v18, v19, v20);

  v21 = Text.init<A>(_:)();
  v63 = v22;
  v64 = v21;
  LOBYTE(v17) = v23;
  v62 = v24;
  v25 = sub_1000088DC(a2, a2[3]);
  v26 = *(*v25 + 184);
  v60 = *(*v25 + 200);
  v61 = v26;
  v27 = static Edge.Set.all.getter();
  v58 = v17 & 1;
  v59 = v27;
  v69 = v17 & 1;
  v68 = 0;
  v57 = static Edge.Set.top.getter();
  v28 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v28 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (v28)
  {
    sub_1000088DC(a2, a2[3]);
  }

  EdgeInsets.init(_all:)();
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v70 = 0;
  static Font.body.getter();
  static Font.Weight.semibold.getter();
  Font.weight(_:)();

  (*(v13 + 104))(v15, enum case for Font.Leading.tight(_:), v12);
  v56 = Font.leading(_:)();

  (*(v13 + 8))(v15, v12);
  KeyPath = swift_getKeyPath();
  v37 = [objc_opt_self() labelColor];
  v54 = Color.init(uiColor:)();
  v53 = swift_getKeyPath();
  if (a5)
  {
    v38 = *(a5 + 112);

    v39 = v38;
    v40 = static UIContentSizeCategory.>= infix(_:_:)();

    v52 = swift_getKeyPath();
    v41 = v40 & 1;
    v71 = v40 & 1;
    v42 = *(a5 + 112);
    v43 = static UIContentSizeCategory.>= infix(_:_:)();

    v51 = swift_getKeyPath();
    v44 = *(a5 + 112);
    static Alignment.center.getter();
    if (static UIContentSizeCategory.>= infix(_:_:)())
    {
      static Alignment.center.getter();
      if (static Alignment.== infix(_:_:)())
      {
        static Alignment.leading.getter();
      }
    }

    if (v40)
    {
      v45 = 0;
    }

    else
    {
      v45 = 3;
    }

    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    *(&v72[3] + 7) = *(&v72[10] + 8);
    *(&v72[4] + 7) = *(&v72[11] + 8);
    *(&v72[5] + 7) = *(&v72[12] + 8);
    *(&v72[6] + 7) = *(&v72[13] + 8);
    *(v72 + 7) = *(&v72[7] + 8);
    *(&v72[1] + 7) = *(&v72[8] + 8);
    *(&v72[2] + 7) = *(&v72[9] + 8);
    v46 = *(a5 + 112);

    v47 = static UIContentSizeCategory.>= infix(_:_:)();

    if (v47)
    {
      v48 = 1.0;
    }

    else
    {
      v48 = 0.5;
    }

    v49 = swift_getKeyPath();
    v66[0] = v64;
    v66[1] = v63;
    LOBYTE(v66[2]) = v58;
    v66[3] = v62;
    LOBYTE(v66[4]) = v59;
    *&v66[7] = v60;
    *&v66[5] = v61;
    LOBYTE(v66[9]) = 0;
    LOBYTE(v66[10]) = v57;
    v66[11] = v30;
    v66[12] = v32;
    v66[13] = v34;
    v66[14] = v36;
    LOBYTE(v66[15]) = 0;
    v66[16] = KeyPath;
    v66[17] = v56;
    v66[18] = v53;
    v66[19] = v54;
    v66[20] = v52;
    v66[21] = v45;
    LOBYTE(v66[22]) = v41;
    v66[23] = v51;
    LOBYTE(v66[24]) = (v43 & 1) == 0;
    *(&v66[32] + 1) = v72[4];
    *(&v66[34] + 1) = v72[5];
    *(&v66[36] + 1) = v72[6];
    *(&v66[24] + 1) = v72[0];
    *(&v66[26] + 1) = v72[1];
    *(&v66[28] + 1) = v72[2];
    *(&v66[30] + 1) = v72[3];
    v66[38] = *(&v72[6] + 15);
    v66[39] = v49;
    *&v66[40] = v48;
    v66[41] = 0;
    LOBYTE(v66[42]) = 0;
    sub_1000040A8(&qword_100357888, &qword_10027B6C8);
    sub_10005431C();
    View.accessibilityHidden(_:)();
    memcpy(v67, v66, 0x151uLL);
    return sub_100008FA0(v67, &qword_100357888, &qword_10027B6C8);
  }

  else
  {
    type metadata accessor for UIMetrics();
    sub_10005498C(&qword_100354D40, type metadata accessor for UIMetrics, "\ts\n");
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_10005418C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000040A8(&qword_100357848, &qword_10027B678);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000541FC()
{
  sub_100008964((v0 + 16));

  return _swift_deallocObject(v0, 104, 7);
}

unint64_t sub_100054260()
{
  result = qword_100357878;
  if (!qword_100357878)
  {
    sub_100008CF0(&qword_100357868, &qword_10027B6C0);
    sub_10005431C();
    sub_10005498C(&qword_100355078, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100357878);
  }

  return result;
}

unint64_t sub_10005431C()
{
  result = qword_100357880;
  if (!qword_100357880)
  {
    sub_100008CF0(&qword_100357888, &qword_10027B6C8);
    sub_1000543A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100357880);
  }

  return result;
}

unint64_t sub_1000543A8()
{
  result = qword_100357890;
  if (!qword_100357890)
  {
    sub_100008CF0(&qword_100357898, &unk_10027B6D0);
    sub_100054434();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100357890);
  }

  return result;
}

unint64_t sub_100054434()
{
  result = qword_1003578A0;
  if (!qword_1003578A0)
  {
    sub_100008CF0(&qword_1003578A8, &unk_1002911E0);
    sub_1000544EC();
    sub_100009274(&qword_100356C58, &qword_100356C60, &unk_100281850, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003578A0);
  }

  return result;
}

unint64_t sub_1000544EC()
{
  result = qword_1003578B0;
  if (!qword_1003578B0)
  {
    sub_100008CF0(&qword_1003578B8, &unk_10027B6E0);
    sub_100054578();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003578B0);
  }

  return result;
}

unint64_t sub_100054578()
{
  result = qword_1003578C0;
  if (!qword_1003578C0)
  {
    sub_100008CF0(&qword_1003578C8, &unk_1002911F0);
    sub_100054630();
    sub_100009274(&qword_100356750, &qword_100356758, &unk_100279CD0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003578C0);
  }

  return result;
}

unint64_t sub_100054630()
{
  result = qword_1003578D0;
  if (!qword_1003578D0)
  {
    sub_100008CF0(&qword_1003578D8, &unk_10027B6F0);
    sub_1000546E8();
    sub_100009274(&qword_100356828, &qword_100356830, &qword_100289190, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003578D0);
  }

  return result;
}

unint64_t sub_1000546E8()
{
  result = qword_1003578E0;
  if (!qword_1003578E0)
  {
    sub_100008CF0(&qword_1003578E8, &unk_100291200);
    sub_1000547A0();
    sub_100009274(&qword_100355068, &qword_100355070, &qword_100279CE0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003578E0);
  }

  return result;
}

unint64_t sub_1000547A0()
{
  result = qword_1003578F0;
  if (!qword_1003578F0)
  {
    sub_100008CF0(&qword_1003578F8, &unk_10027B700);
    sub_100054858();
    sub_100009274(&qword_100355058, &qword_100355060, &unk_100277F30, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003578F0);
  }

  return result;
}

unint64_t sub_100054858()
{
  result = qword_100357900;
  if (!qword_100357900)
  {
    sub_100008CF0(&qword_100357908, &qword_100291210);
    sub_1000548E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100357900);
  }

  return result;
}

unint64_t sub_1000548E4()
{
  result = qword_100357910;
  if (!qword_100357910)
  {
    sub_100008CF0(&qword_100357918, &qword_10027B710);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100357910);
  }

  return result;
}

uint64_t sub_100054974(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10005498C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000549D4()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100054A78(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_100054A90(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_100054AAC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100054AF4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100054B6C@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for CircularProgressViewStyle();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v22[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000040A8(&qword_100354FA0, &unk_1002851D0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v22[-1] - v9;
  v11 = *v1;
  if (*v1)
  {
    v12 = v11[9];
    v13 = v11[10];
    sub_1000088DC(v11 + 6, v12);
    (*(v13 + 24))(v22, v12, v13);
    *a1 = static HorizontalAlignment.center.getter();
    *(a1 + 8) = 0;
    *(a1 + 16) = 1;
    v14 = a1 + *(sub_1000040A8(&qword_100357930, &qword_10027B800) + 44);
    ProgressView<>.init<>()();
    CircularProgressViewStyle.init()();
    sub_100009274(&qword_100355088, &qword_100354FA0, &unk_1002851D0, &protocol conformance descriptor for ProgressView<A, B>);
    sub_100054F0C(&qword_100355090, &type metadata accessor for CircularProgressViewStyle, &protocol conformance descriptor for CircularProgressViewStyle);
    View.progressViewStyle<A>(_:)();
    (*(v4 + 8))(v6, v3);
    (*(v8 + 8))(v10, v7);
    v15 = (v14 + *(sub_1000040A8(&qword_100354FA8, &qword_100277EC0) + 36));
    v16 = *(sub_1000040A8(&qword_1003550A0, &qword_100277F40) + 28);
    v17 = enum case for ControlSize.regular(_:);
    v18 = type metadata accessor for ControlSize();
    (*(*(v18 - 8) + 104))(v15 + v16, v17, v18);
    *v15 = swift_getKeyPath();
    LOBYTE(v17) = static Edge.Set.all.getter();
    sub_100008964(v22);
    result = sub_1000040A8(&qword_100357938, &qword_10027B838);
    v20 = a1 + *(result + 36);
    *v20 = v17;
    *(v20 + 8) = xmmword_100277A70;
    *(v20 + 24) = xmmword_100277A70;
    *(v20 + 40) = 0;
  }

  else
  {
    type metadata accessor for UIMetrics();
    sub_100054F0C(&qword_100354D40, type metadata accessor for UIMetrics, "\ts\n");
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_100054F0C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100054F60()
{
  result = qword_100357940;
  if (!qword_100357940)
  {
    sub_100008CF0(&qword_100357938, &qword_10027B838);
    sub_100009274(&qword_100357948, &qword_100357950, &unk_10027B840, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100357940);
  }

  return result;
}

__n128 sub_100055018(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_10005502C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100055074(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000550C8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
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

uint64_t sub_100055110(uint64_t result, int a2, int a3)
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

uint64_t sub_10005518C(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v12 = type metadata accessor for DispatchWorkItemFlags();
  v23 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for DispatchQoS();
  v15 = *(v22 - 8);
  __chkstk_darwin(v22);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000F574();
  v18 = static OS_dispatch_queue.main.getter();
  v19 = swift_allocObject();
  *(v19 + 16) = a1;
  *(v19 + 24) = a2;
  *(v19 + 32) = a3;
  *(v19 + 40) = a4;
  *(v19 + 48) = a5;
  *(v19 + 56) = a6;
  aBlock[4] = sub_100056AF0;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001D2438;
  aBlock[3] = &unk_100328B88;
  v20 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100056F00(&qword_10035BB40, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000040A8(&unk_100355D70, &qword_100279D60);
  sub_100009274(&qword_10035BB50, &unk_100355D70, &qword_100279D60, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v20);

  (*(v23 + 8))(v14, v12);
  return (*(v15 + 8))(v17, v22);
}

uint64_t sub_1000554A0@<X0>(uint64_t a1@<X8>)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v6 = *(v1 + 32);
  v5 = *(v1 + 40);
  if (*(v1 + 56))
  {
    v7 = 56.0;
  }

  else
  {
    v7 = *(v1 + 48);
  }

  type metadata accessor for UIMetrics();
  sub_100056F00(&qword_100354D40, type metadata accessor for UIMetrics, "\ts\n");

  result = EnvironmentObject.init()();
  *a1 = result;
  *(a1 + 8) = v9;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v6;
  *(a1 + 40) = v5;
  *(a1 + 48) = v7;
  return result;
}

uint64_t sub_10005558C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000040A8(&qword_100354D60, &qword_100277B30);
  __chkstk_darwin(v3);
  v5 = v27 - v4;
  v6 = static VerticalAlignment.center.getter();
  v34 = 0;
  sub_100055C88(v1, v32);
  v57 = v32[12];
  v58 = v32[13];
  v53 = v32[8];
  v54 = v32[9];
  v55 = v32[10];
  v56 = v32[11];
  v49 = v32[4];
  v50 = v32[5];
  v51 = v32[6];
  v52 = v32[7];
  v45 = v32[0];
  v46 = v32[1];
  v47 = v32[2];
  v48 = v32[3];
  v60[12] = v32[12];
  v60[13] = v32[13];
  v60[8] = v32[8];
  v60[9] = v32[9];
  v60[10] = v32[10];
  v60[11] = v32[11];
  v60[4] = v32[4];
  v60[5] = v32[5];
  v60[6] = v32[6];
  v60[7] = v32[7];
  v60[0] = v32[0];
  v60[1] = v32[1];
  v59 = v32[14];
  v61 = v32[14];
  v60[2] = v32[2];
  v60[3] = v32[3];
  sub_100006C20(&v45, v31, &qword_1003579D0, &qword_10027BAD0);
  sub_100008FA0(v60, &qword_1003579D0, &qword_10027BAD0);
  *&v33[183] = v56;
  *&v33[199] = v57;
  *&v33[215] = v58;
  *&v33[119] = v52;
  *&v33[135] = v53;
  *&v33[151] = v54;
  *&v33[167] = v55;
  *&v33[55] = v48;
  *&v33[71] = v49;
  *&v33[87] = v50;
  *&v33[103] = v51;
  *&v33[7] = v45;
  *&v33[23] = v46;
  v33[231] = v59;
  *&v33[39] = v47;
  v7 = v34;
  v28 = static Edge.Set.top.getter();
  v8 = *v1;
  if (*v1)
  {
    v27[2] = a1;
    v9 = qword_100353988;

    if (v9 != -1)
    {
      swift_once();
    }

    v29 = v7;
    v30 = v6;
    v27[1] = v3;
    EdgeInsets.init(_all:)();
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v35 = 0;
    static Alignment.center.getter();
    while (1)
    {
      _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
      *&v36[55] = v41;
      *&v36[71] = v42;
      *&v36[87] = v43;
      *&v36[103] = v44;
      *&v36[7] = v38;
      *&v36[23] = v39;
      *&v36[39] = v40;
      v18 = static Edge.Set.horizontal.getter();

      v37 = 1;
      v20 = v8[9];
      v19 = v8[10];
      sub_1000088DC(v8 + 6, v20);
      v21 = (*(v19 + 312))(v20, v19);
      v22 = static Edge.Set.all.getter();
      *(&v31[24] + 1) = *&v33[176];
      *(&v31[26] + 1) = *&v33[192];
      *(&v31[28] + 1) = *&v33[208];
      *(&v31[16] + 1) = *&v33[112];
      *(&v31[18] + 1) = *&v33[128];
      *(&v31[20] + 1) = *&v33[144];
      *(&v31[22] + 1) = *&v33[160];
      *(&v31[8] + 1) = *&v33[48];
      *(&v31[10] + 1) = *&v33[64];
      *(&v31[12] + 1) = *&v33[80];
      *(&v31[14] + 1) = *&v33[96];
      *(&v31[2] + 1) = *v33;
      *(&v31[4] + 1) = *&v33[16];
      v31[0] = v30;
      v31[1] = 0;
      LOBYTE(v31[2]) = v29;
      *(&v31[30] + 1) = *&v33[224];
      *(&v31[6] + 1) = *&v33[32];
      LOBYTE(v31[32]) = v28;
      v31[33] = v11;
      v31[34] = v13;
      v31[35] = v15;
      v31[36] = v17;
      LOBYTE(v31[37]) = 0;
      *(&v31[45] + 1) = *&v36[64];
      *(&v31[47] + 1) = *&v36[80];
      *(&v31[49] + 1) = *&v36[96];
      *(&v31[37] + 1) = *v36;
      *(&v31[39] + 1) = *&v36[16];
      *(&v31[41] + 1) = *&v36[32];
      *(&v31[43] + 1) = *&v36[48];
      v31[51] = *&v36[111];
      LOBYTE(v31[52]) = v18;
      memset(&v31[53], 0, 32);
      LOBYTE(v31[57]) = 1;
      v31[58] = v21;
      LOBYTE(v31[59]) = v22;
      v23 = enum case for DynamicTypeSize.xLarge(_:);
      v24 = type metadata accessor for DynamicTypeSize();
      (*(*(v24 - 8) + 104))(v5, v23, v24);
      sub_100056F00(&qword_100354D68, &type metadata accessor for DynamicTypeSize, &protocol conformance descriptor for DynamicTypeSize);
      if (dispatch thunk of static Equatable.== infix(_:_:)())
      {
        break;
      }

      __break(1u);
      static os_log_type_t.fault.getter();
      v26 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();
    }

    sub_1000040A8(&qword_1003579D8, &qword_10027BAD8);
    sub_100056F48();
    sub_100009274(&qword_100354D78, &qword_100354D60, &qword_100277B30, &protocol conformance descriptor for PartialRangeThrough<A>);
    View.dynamicTypeSize<A>(_:)();
    sub_100008FA0(v5, &qword_100354D60, &qword_100277B30);
    memcpy(v32, v31, 0x1D9uLL);
    return sub_100008FA0(v32, &qword_1003579D8, &qword_10027BAD8);
  }

  else
  {
    type metadata accessor for UIMetrics();
    sub_100056F00(&qword_100354D40, type metadata accessor for UIMetrics, "\ts\n");
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_100055C88@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = static HorizontalAlignment.leading.getter();
  LOBYTE(v40[0]) = 0;
  sub_100055F68(a1, v5, v6, &v45);
  v36 = v51;
  v37[0] = *v52;
  *(v37 + 10) = *&v52[10];
  v32 = v47;
  v33 = v48;
  v34 = v49;
  v35 = v50;
  v30 = v45;
  v31 = v46;
  v38[6] = v51;
  v39[0] = *v52;
  *(v39 + 10) = *&v52[10];
  v38[2] = v47;
  v38[3] = v48;
  v38[4] = v49;
  v38[5] = v50;
  v38[0] = v45;
  v38[1] = v46;
  sub_100006C20(&v30, v58, &qword_100357A38, &qword_10027BB08);
  sub_100008FA0(v38, &qword_100357A38, &qword_10027BB08);
  *&v29[87] = v35;
  *&v29[103] = v36;
  *&v29[119] = v37[0];
  *&v29[129] = *(v37 + 10);
  *&v29[23] = v31;
  *&v29[39] = v32;
  *&v29[55] = v33;
  *&v29[71] = v34;
  *&v29[7] = v30;
  v7 = v40[0];
  LOBYTE(a1) = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v40[0] = v4;
  v40[1] = 0;
  v41[0] = v7;
  *&v41[97] = *&v29[96];
  v8 = *&v29[96];
  v9 = *&v29[112];
  *&v41[113] = *&v29[112];
  v10 = *&v29[128];
  *&v41[129] = *&v29[128];
  v41[145] = v29[144];
  *&v41[33] = *&v29[32];
  v11 = *&v29[32];
  v12 = *&v29[48];
  *&v41[49] = *&v29[48];
  *&v41[65] = *&v29[64];
  v13 = *&v29[64];
  v14 = *&v29[80];
  *&v41[81] = *&v29[80];
  *&v41[1] = *v29;
  v16 = *v29;
  v15 = *&v29[16];
  *&v41[17] = *&v29[16];
  v41[152] = a1;
  *&v42 = v17;
  *(&v42 + 1) = v18;
  *&v43 = v19;
  *(&v43 + 1) = v20;
  v51 = *&v41[80];
  *v52 = *&v41[96];
  *&v52[16] = *&v41[112];
  v53 = *&v41[128];
  v47 = *&v41[16];
  v48 = *&v41[32];
  v49 = *&v41[48];
  v50 = *&v41[64];
  v45 = v4;
  v46 = *v41;
  v21 = v42;
  v54 = *&v41[144];
  v55 = v42;
  v56 = v43;
  *(a2 + 160) = *&v41[144];
  *(a2 + 176) = v21;
  *(a2 + 192) = v56;
  v22 = *v52;
  *(a2 + 96) = v51;
  *(a2 + 112) = v22;
  v23 = v53;
  *(a2 + 128) = *&v52[16];
  *(a2 + 144) = v23;
  v24 = v48;
  *(a2 + 32) = v47;
  *(a2 + 48) = v24;
  v25 = v50;
  *(a2 + 64) = v49;
  *(a2 + 80) = v25;
  v26 = v46;
  *a2 = v45;
  *(a2 + 16) = v26;
  v66 = v8;
  v67 = v9;
  v68 = v10;
  v62 = v11;
  v63 = v12;
  v64 = v13;
  v65 = v14;
  v60 = v16;
  v44 = 0;
  LOBYTE(v57) = 0;
  v28[216] = 1;
  *(a2 + 208) = v57;
  *(a2 + 216) = 0;
  *(a2 + 224) = 1;
  v58[0] = v4;
  v58[1] = 0;
  v59 = v7;
  v69 = v29[144];
  v61 = v15;
  v70 = a1;
  v71 = v17;
  v72 = v18;
  v73 = v19;
  v74 = v20;
  v75 = 0;
  sub_100006C20(v40, v28, &qword_100357A40, &qword_10027BB10);
  return sub_100008FA0(v58, &qword_100357A40, &qword_10027BB10);
}

uint64_t sub_100055F68@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v6 = a1[3];
  v73 = a1[2];
  v74 = v6;
  sub_100031770(a1, a2, a3);

  v7 = Text.init<A>(_:)();
  v9 = v8;
  v11 = v10;
  static Font.headline.getter();
  v12 = Text.font(_:)();
  v48 = v13;
  v49 = v12;
  v15 = v14;
  v50 = v16;

  sub_1000317C4(v7, v9, v11 & 1);

  KeyPath = swift_getKeyPath();
  v17 = *a1;
  if (*a1)
  {
    v18 = *(v17 + 112);

    v19 = v18;
    v20 = static UIContentSizeCategory.>= infix(_:_:)();

    v21 = 0.5;
    if (v20)
    {
      v22 = 1.0;
    }

    else
    {
      v22 = 0.5;
    }

    v51 = swift_getKeyPath();
    v23 = v15 & 1;
    v89 = v15 & 1;
    v46 = v15 & 1;
    v24 = a1[5];
    v73 = a1[4];
    v74 = v24;

    v25 = Text.init<A>(_:)();
    v27 = v26;
    v29 = v28;
    static Font.caption.getter();
    v30 = Text.font(_:)();
    v43 = v31;
    v44 = v30;
    v33 = v32;
    v45 = v34;

    sub_1000317C4(v25, v27, v29 & 1);

    v35 = swift_getKeyPath();
    v36 = *(v17 + 112);

    v37 = static UIContentSizeCategory.>= infix(_:_:)();

    if (v37)
    {
      v21 = 1.0;
    }

    v38 = swift_getKeyPath();
    v86 = v33 & 1;
    *&v53 = v49;
    *(&v53 + 1) = v48;
    LOBYTE(v54) = v23;
    *(&v54 + 1) = *v88;
    DWORD1(v54) = *&v88[3];
    *(&v54 + 1) = v50;
    *&v55 = KeyPath;
    BYTE8(v55) = 0;
    *(&v55 + 9) = *v87;
    HIDWORD(v55) = *&v87[3];
    *&v56 = v51;
    *(&v56 + 1) = v22;
    v57 = 256;
    *v52 = 256;
    *&v58 = v44;
    *(&v58 + 1) = v43;
    LOBYTE(v59) = v33 & 1;
    DWORD1(v59) = *&v85[3];
    *(&v59 + 1) = *v85;
    *(&v59 + 1) = v45;
    *&v60 = v35;
    BYTE8(v60) = 0;
    HIDWORD(v60) = *&v84[3];
    *(&v60 + 9) = *v84;
    *&v61 = v38;
    *(&v61 + 1) = v21;
    v62 = 256;
    *&v52[8] = v58;
    *&v52[72] = 256;
    *&v52[56] = v61;
    *&v52[40] = v60;
    *&v52[24] = v59;
    v39 = v53;
    v40 = v54;
    v41 = v56;
    a4[2] = v55;
    a4[3] = v41;
    *a4 = v39;
    a4[1] = v40;
    *(a4 + 122) = *&v52[58];
    a4[6] = *&v52[32];
    a4[7] = *&v52[48];
    a4[4] = *v52;
    a4[5] = *&v52[16];
    v63[0] = v44;
    v63[1] = v43;
    v64 = v33 & 1;
    *v65 = *v85;
    *&v65[3] = *&v85[3];
    v66 = v45;
    v67 = v35;
    v68 = 0;
    *v69 = *v84;
    *&v69[3] = *&v84[3];
    v70 = v38;
    v71 = v21;
    v72 = 256;
    sub_100006C20(&v53, &v73, &qword_100357A48, &qword_10027BB78);
    sub_100006C20(&v58, &v73, &qword_100357A48, &qword_10027BB78);
    sub_100008FA0(v63, &qword_100357A48, &qword_10027BB78);
    v73 = v49;
    v74 = v48;
    v75 = v46;
    *v76 = *v88;
    *&v76[3] = *&v88[3];
    v77 = v50;
    v78 = KeyPath;
    v79 = 0;
    *v80 = *v87;
    *&v80[3] = *&v87[3];
    v81 = v51;
    v82 = v22;
    v83 = 256;
    return sub_100008FA0(&v73, &qword_100357A48, &qword_10027BB78);
  }

  else
  {
    type metadata accessor for UIMetrics();
    sub_100056F00(&qword_100354D40, type metadata accessor for UIMetrics, "\ts\n");
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_100056410()
{
  v0 = type metadata accessor for ToolbarItemPlacement();
  __chkstk_darwin(v0 - 8);
  v1 = sub_1000040A8(&qword_100357960, &qword_10027B998);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v9 - v3;
  v5 = static ToolbarItemPlacement.topBarTrailing.getter();
  sub_100056B48(v5, v6, v7);
  ToolbarItem<>.init(placement:content:)();
  sub_100009274(&qword_100357968, &qword_100357960, &qword_10027B998, &protocol conformance descriptor for ToolbarItem<A, B>);
  static ToolbarContentBuilder.buildBlock<A>(_:)();
  return (*(v2 + 8))(v4, v1);
}

void *sub_1000565A8@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for AppEvents();
  sub_100056F00(&qword_100354D48, type metadata accessor for AppEvents, "ɼ\t");
  v2 = EnvironmentObject.init()();
  v4 = v3;
  type metadata accessor for TryOutModel(0);
  sub_100056F00(&qword_100357990, type metadata accessor for TryOutModel, "\ts\n");
  v5 = EnvironmentObject.init()();
  v7 = v6;
  type metadata accessor for UIMetrics();
  sub_100056F00(&qword_100354D40, type metadata accessor for UIMetrics, "\ts\n");
  v8 = EnvironmentObject.init()();
  v10 = v9;
  result = State.init(wrappedValue:)();
  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  *(a1 + 40) = v10;
  *(a1 + 48) = v12;
  *(a1 + 56) = v13;
  return result;
}

uint64_t sub_10005670C@<X0>(uint64_t a2@<X8>)
{
  v5 = *v2;
  v4 = v2[1];
  v6 = v2[2];
  v7 = *(v2 + 24);
  static Color.clear.getter();
  sub_1000040A8(&qword_100357958, &qword_10027B990);
  sub_100008CF0(&qword_100357960, &qword_10027B998);
  sub_100009274(&qword_100357968, &qword_100357960, &qword_10027B998, &protocol conformance descriptor for ToolbarItem<A, B>);
  swift_getOpaqueTypeConformance2();
  View.toolbar<A>(content:)();

  v8 = swift_allocObject();
  *(v8 + 16) = v5;
  *(v8 + 24) = v4;
  *(v8 + 32) = v6;
  *(v8 + 40) = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_100056970;
  *(v9 + 24) = v8;

  v10 = static Alignment.center.getter();
  v12 = v11;
  v13 = (a2 + *(sub_1000040A8(&qword_100357970, &qword_10027B9A0) + 36));
  *v13 = sub_10003496C;
  v13[1] = 0;
  v13[2] = v10;
  v13[3] = v12;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_1000569D8;
  *(v14 + 24) = v9;
  result = sub_1000040A8(&qword_100357978, &unk_10027B9A8);
  v16 = (a2 + *(result + 36));
  *v16 = sub_100056AA4;
  v16[1] = v14;
  return result;
}

uint64_t sub_100056930()
{

  return _swift_deallocObject(v0, 41, 7);
}

double sub_1000569E0@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

BOOL sub_1000569EC(CGFloat *a1, void (*a2)(CGRect *__return_ptr))
{
  a2(&v8);
  x = v8.origin.x;
  y = v8.origin.y;
  width = v8.size.width;
  height = v8.size.height;
  v9.origin.x = 0.0;
  v9.origin.y = 0.0;
  v9.size.width = 0.0;
  v9.size.height = 0.0;
  result = CGRectEqualToRect(v8, v9);
  if (!result)
  {
    *a1 = x;
    a1[1] = y;
    a1[2] = width;
    a1[3] = height;
  }

  return result;
}

uint64_t sub_100056A6C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100056AB8()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100056AF0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 48);
  v4[0] = *(v0 + 32);
  v4[1] = v2;
  return v1(v4);
}

uint64_t sub_100056B30(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100056B48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100357988;
  if (!qword_100357988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100357988);
  }

  return result;
}

uint64_t sub_100056BAC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_100056BF4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100056C54()
{
  result = qword_100357998;
  if (!qword_100357998)
  {
    sub_100008CF0(&qword_100357978, &unk_10027B9A8);
    sub_100056D0C();
    sub_100009274(&qword_1003579B8, &qword_1003579C0, &qword_10027BA28, &protocol conformance descriptor for _PreferenceActionModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100357998);
  }

  return result;
}

unint64_t sub_100056D0C()
{
  result = qword_1003579A0;
  if (!qword_1003579A0)
  {
    sub_100008CF0(&qword_100357970, &qword_10027B9A0);
    sub_100008CF0(&qword_100357958, &qword_10027B990);
    sub_100008CF0(&qword_100357960, &qword_10027B998);
    sub_100009274(&qword_100357968, &qword_100357960, &qword_10027B998, &protocol conformance descriptor for ToolbarItem<A, B>);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_100009274(&qword_1003579A8, &qword_1003579B0, &qword_10027BA20, &protocol conformance descriptor for _BackgroundModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003579A0);
  }

  return result;
}

unint64_t sub_100056E90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1003579C8;
  if (!qword_1003579C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003579C8);
  }

  return result;
}

uint64_t sub_100056F00(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100056F48()
{
  result = qword_1003579E0;
  if (!qword_1003579E0)
  {
    sub_100008CF0(&qword_1003579D8, &qword_10027BAD8);
    sub_100057000();
    sub_100009274(&qword_100357A28, &qword_100357A30, &qword_10027BB00, &protocol conformance descriptor for _BackgroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003579E0);
  }

  return result;
}

unint64_t sub_100057000()
{
  result = qword_1003579E8;
  if (!qword_1003579E8)
  {
    sub_100008CF0(&qword_1003579F0, &qword_10027BAE0);
    sub_10005708C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003579E8);
  }

  return result;
}

unint64_t sub_10005708C()
{
  result = qword_1003579F8;
  if (!qword_1003579F8)
  {
    sub_100008CF0(&qword_100357A00, &qword_10027BAE8);
    sub_100057118();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003579F8);
  }

  return result;
}

unint64_t sub_100057118()
{
  result = qword_100357A08;
  if (!qword_100357A08)
  {
    sub_100008CF0(&qword_100357A10, &qword_10027BAF0);
    sub_100009274(&qword_100357A18, &qword_100357A20, &qword_10027BAF8, &protocol conformance descriptor for HStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100357A08);
  }

  return result;
}

uint64_t sub_1000571E0()
{
  sub_100008CF0(&qword_1003579D8, &qword_10027BAD8);
  sub_100008CF0(&qword_100354D60, &qword_100277B30);
  sub_100056F48();
  sub_100009274(&qword_100354D78, &qword_100354D60, &qword_100277B30, &protocol conformance descriptor for PartialRangeThrough<A>);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1000572F0(__n128 a1, double a2, double a3, uint64_t a4, uint64_t *a5)
{
  v6 = type metadata accessor for Color.RGBColorSpace();
  v7 = __chkstk_darwin(v6);
  (*(v9 + 104))(&v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for Color.RGBColorSpace.sRGB(_:), v7);
  result = Color.init(_:red:green:blue:opacity:)();
  *a5 = result;
  return result;
}

uint64_t sub_1000573E4()
{
  v0 = [objc_opt_self() secondaryLabelColor];
  result = Color.init(_:)();
  qword_100381BF0 = result;
  return result;
}

__n128 sub_100057450@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(a1 + 64);
  if (v8 <= 4)
  {
    v70 = a4;
    if (*(a1 + 64) > 2u)
    {
      if (v8 == 3)
      {
        type metadata accessor for StewieModel(0);
        sub_100058788(&qword_1003561B8, type metadata accessor for StewieModel, "\ts\n");
        v46 = EnvironmentObject.init()();
        v49 = sub_100058414(v46, v47, v48);
        sub_100058468(v49, v50, v51);

        _ConditionalContent<>.init(storage:)();
        v79 = 0;
        sub_1000040A8(&qword_100357A78, &qword_10027BC60);
        sub_1000040A8(&qword_100357A98, &qword_10027BC68);
        sub_100058388();
        sub_1000584BC();
        _ConditionalContent<>.init(storage:)();
        v93 = v86;
        v94 = v87;
        v95 = v88;
        v96 = v89;
        v92 = 0;
        sub_1000040A8(&qword_100357A58, &qword_10027BC50);
        sub_1000040A8(&qword_100357A60, &qword_10027BC58);
        sub_1000582FC();
        sub_10005859C();
        _ConditionalContent<>.init(storage:)();

        v15 = v83;
        v97 = v84;
        *v98 = *v85;
        *&v98[10] = *&v85[10];
        v16 = v80;
        v17 = v81;
        v18 = v82;
        goto LABEL_14;
      }
    }

    else if (v8 - 1 >= 2)
    {
      type metadata accessor for UIMetrics();
      sub_100058788(&qword_100354D40, type metadata accessor for UIMetrics, "\ts\n");

      EnvironmentObject.init()();
      type metadata accessor for QuestionnaireState();
      sub_100058788(&qword_100354D50, type metadata accessor for QuestionnaireState, "\ts\n");
      v9 = EnvironmentObject.init()();
      v12 = sub_100058414(v9, v10, v11);
      sub_100058468(v12, v13, v14);

      _ConditionalContent<>.init(storage:)();
      v79 = 0;
      sub_1000040A8(&qword_100357A78, &qword_10027BC60);
      sub_1000040A8(&qword_100357A98, &qword_10027BC68);
      sub_100058388();
      sub_1000584BC();
      _ConditionalContent<>.init(storage:)();
      v93 = v86;
      v94 = v87;
      v95 = v88;
      v96 = v89;
      v92 = 0;
      sub_1000040A8(&qword_100357A58, &qword_10027BC50);
      sub_1000040A8(&qword_100357A60, &qword_10027BC58);
      sub_1000582FC();
      sub_10005859C();
      _ConditionalContent<>.init(storage:)();

      v15 = v83;
      v97 = v84;
      *v98 = *v85;
      *&v98[10] = *&v85[10];
      v16 = v80;
      v17 = v81;
      v18 = v82;
LABEL_14:
      v93 = v16;
      v94 = v17;
      v95 = v18;
      v96 = v15;
      a4 = v70;
      goto LABEL_15;
    }

    goto LABEL_12;
  }

  if (*(a1 + 64) <= 6u)
  {
    v70 = a4;
    if (v8 == 5)
    {
      type metadata accessor for RoadsideAssistanceModel();
      sub_100058788(&qword_100356B48, type metadata accessor for RoadsideAssistanceModel, "\ts\n");

      v19 = EnvironmentObject.init()();
      v21 = v20;
      type metadata accessor for UIMetrics();
      sub_100058788(&qword_100354D40, type metadata accessor for UIMetrics, "\ts\n");
      v22 = EnvironmentObject.init()();
      v24 = v23;
      type metadata accessor for QuestionnaireState();
      sub_100058788(&qword_100354D50, type metadata accessor for QuestionnaireState, "\ts\n");
      *&v72 = v19;
      *(&v72 + 1) = v21;
      *&v73 = v22;
      *(&v73 + 1) = v24;
      *&v74 = EnvironmentObject.init()();
      *(&v74 + 1) = v25;
      v75.n128_u64[0] = a1;
      v75.n128_u64[1] = a2;
      *&v76 = a3;
      v95 = v74;
      v96 = v75;
      *&v97 = a3;
      v93 = v72;
      v94 = v73;
      v98[16] = 1;
      v26 = sub_1000586D8(&v72, &v80);
      v29 = sub_10004DC74(v26, v27, v28);
      sub_100058548(v29, v30, v31);
      _ConditionalContent<>.init(storage:)();
      v97 = v84;
      *v98 = *v85;
      v93 = v80;
      v94 = v81;
      v98[16] = v85[16];
      v95 = v82;
      v96 = v83;
      v79 = 1;
      v98[17] = 1;
      sub_1000040A8(&qword_100357A78, &qword_10027BC60);
      sub_1000040A8(&qword_100357A98, &qword_10027BC68);
      sub_100058388();
      sub_1000584BC();
      _ConditionalContent<>.init(storage:)();
      v97 = v90;
      *v98 = *v91;
      *&v98[16] = *&v91[16];
      v93 = v86;
      v94 = v87;
      v95 = v88;
      v96 = v89;
      v92 = 0;
      v98[25] = 0;
      sub_1000040A8(&qword_100357A58, &qword_10027BC50);
      sub_1000040A8(&qword_100357A60, &qword_10027BC58);
      sub_1000582FC();
      sub_10005859C();
      _ConditionalContent<>.init(storage:)();
      sub_100058734(&v72);
LABEL_13:
      v15 = v83;
      v97 = v84;
      *v98 = *v85;
      *&v98[10] = *&v85[10];
      v16 = v80;
      v17 = v81;
      v18 = v82;
      goto LABEL_14;
    }

LABEL_12:
    type metadata accessor for AppEvents();
    sub_100058788(&qword_100354D48, type metadata accessor for AppEvents, "ɼ\t");

    v52 = EnvironmentObject.init()();
    v54 = v53;
    type metadata accessor for UIMetrics();
    sub_100058788(&qword_100354D40, type metadata accessor for UIMetrics, "\ts\n");
    v55 = EnvironmentObject.init()();
    v57 = v56;
    type metadata accessor for QuestionnaireState();
    sub_100058788(&qword_100354D50, type metadata accessor for QuestionnaireState, "\ts\n");
    *&v72 = v52;
    *(&v72 + 1) = v54;
    *&v73 = v55;
    *(&v73 + 1) = v57;
    *&v74 = EnvironmentObject.init()();
    *(&v74 + 1) = v58;
    v75.n128_u64[0] = sub_10004DD1C;
    v75.n128_u64[1] = 0;
    LOBYTE(v76) = 0;
    *(&v76 + 1) = a1;
    *&v77 = a2;
    *(&v77 + 1) = a3;
    v95 = v74;
    v96 = sub_10004DD1C;
    v97 = v76;
    *v98 = v77;
    v93 = v72;
    v94 = v73;
    v98[16] = 0;
    v59 = sub_100050308(&v72, &v80);
    v62 = sub_10004DC74(v59, v60, v61);
    sub_100058548(v62, v63, v64);
    _ConditionalContent<>.init(storage:)();
    v97 = v84;
    *v98 = *v85;
    v93 = v80;
    v94 = v81;
    v98[16] = v85[16];
    v95 = v82;
    v96 = v83;
    v79 = 1;
    v98[17] = 1;
    sub_1000040A8(&qword_100357A78, &qword_10027BC60);
    sub_1000040A8(&qword_100357A98, &qword_10027BC68);
    sub_100058388();
    sub_1000584BC();
    _ConditionalContent<>.init(storage:)();
    v97 = v90;
    *v98 = *v91;
    *&v98[16] = *&v91[16];
    v93 = v86;
    v94 = v87;
    v95 = v88;
    v96 = v89;
    v92 = 0;
    v98[25] = 0;
    sub_1000040A8(&qword_100357A58, &qword_10027BC50);
    sub_1000040A8(&qword_100357A60, &qword_10027BC58);
    sub_1000582FC();
    sub_10005859C();
    _ConditionalContent<>.init(storage:)();
    sub_100050DE0(&v72);
    goto LABEL_13;
  }

  if (v8 == 7)
  {
    type metadata accessor for AppEvents();
    v71 = a4;
    sub_100058788(&qword_100354D48, type metadata accessor for AppEvents, "ɼ\t");

    v32 = EnvironmentObject.init()();
    v68 = v33;
    v69 = v32;
    type metadata accessor for RoadsideAssistanceModel();
    sub_100058788(&qword_100356B48, type metadata accessor for RoadsideAssistanceModel, "\ts\n");
    v34 = EnvironmentObject.init()();
    v36 = v35;
    type metadata accessor for UIMetrics();
    sub_100058788(&qword_100354D40, type metadata accessor for UIMetrics, "\ts\n");
    v37 = EnvironmentObject.init()();
    v39 = v38;
    type metadata accessor for QuestionnaireState();
    sub_100058788(&qword_100354D50, type metadata accessor for QuestionnaireState, "\ts\n");
    v40 = EnvironmentObject.init()();
    v42 = v41;
    LOBYTE(v80) = 0;
    State.init(wrappedValue:)();
    *&v72 = v69;
    *(&v72 + 1) = v68;
    *&v73 = v34;
    *(&v73 + 1) = v36;
    *&v74 = v37;
    *(&v74 + 1) = v39;
    a4 = v71;
    v75.n128_u64[0] = v40;
    v75.n128_u64[1] = v42;
    LOBYTE(v76) = v93;
    *(&v76 + 1) = *(&v93 + 1);
    *&v77 = a1;
    *(&v77 + 1) = a2;
    v78 = a3;
    v97 = v76;
    *v98 = v77;
    *&v98[16] = a3;
    v93 = v72;
    v94 = v73;
    v95 = v74;
    v96 = v75;
    v79 = 0;
    v98[24] = 0;
    v43 = sub_100058628(&v72, &v80);
    sub_1000582A8(v43, v44, v45);
    _ConditionalContent<>.init(storage:)();
    v97 = v90;
    *v98 = *v91;
    *&v98[9] = *&v91[9];
    v93 = v86;
    v94 = v87;
    v95 = v88;
    v96 = v89;
    v92 = 1;
    v98[25] = 1;
    sub_1000040A8(&qword_100357A58, &qword_10027BC50);
    sub_1000040A8(&qword_100357A60, &qword_10027BC58);
    sub_1000582FC();
    sub_10005859C();
    _ConditionalContent<>.init(storage:)();
    sub_100058684(&v72);
    v97 = v84;
    *v98 = *v85;
    *&v98[10] = *&v85[10];
    v93 = v80;
    v94 = v81;
    v95 = v82;
    v96 = v83;
  }

  else
  {
    v92 = 1;
    v98[24] = 1;
    sub_1000582A8(a1, a2, a3);
    _ConditionalContent<>.init(storage:)();
    v83 = v89;
    v84 = v90;
    *v85 = *v91;
    *&v85[9] = *&v91[9];
    v80 = v86;
    v81 = v87;
    v82 = v88;
    LOBYTE(v72) = 1;
    v85[25] = 1;
    sub_1000040A8(&qword_100357A58, &qword_10027BC50);
    sub_1000040A8(&qword_100357A60, &qword_10027BC58);
    sub_1000582FC();
    sub_10005859C();
    _ConditionalContent<>.init(storage:)();
  }

LABEL_15:
  v65 = *v98;
  *(a4 + 64) = v97;
  *(a4 + 80) = v65;
  *(a4 + 90) = *&v98[10];
  v66 = v94;
  *a4 = v93;
  *(a4 + 16) = v66;
  result = v96;
  *(a4 + 32) = v95;
  *(a4 + 48) = result;
  return result;
}

unint64_t sub_1000582A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100357A50;
  if (!qword_100357A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100357A50);
  }

  return result;
}

unint64_t sub_1000582FC()
{
  result = qword_100357A68;
  if (!qword_100357A68)
  {
    sub_100008CF0(&qword_100357A58, &qword_10027BC50);
    sub_100058388();
    sub_1000584BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100357A68);
  }

  return result;
}

unint64_t sub_100058388()
{
  result = qword_100357A70;
  if (!qword_100357A70)
  {
    v1 = sub_100008CF0(&qword_100357A78, &qword_10027BC60);
    v6 = sub_100058414(v1, v2, v3);
    sub_100058468(v6, v4, v5);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100357A70);
  }

  return result;
}

unint64_t sub_100058414(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100357A80;
  if (!qword_100357A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100357A80);
  }

  return result;
}

unint64_t sub_100058468(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100357A88;
  if (!qword_100357A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100357A88);
  }

  return result;
}

unint64_t sub_1000584BC()
{
  result = qword_100357A90;
  if (!qword_100357A90)
  {
    v1 = sub_100008CF0(&qword_100357A98, &qword_10027BC68);
    v6 = sub_10004DC74(v1, v2, v3);
    sub_100058548(v6, v4, v5);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100357A90);
  }

  return result;
}

unint64_t sub_100058548(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100357AA0;
  if (!qword_100357AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100357AA0);
  }

  return result;
}

unint64_t sub_10005859C()
{
  result = qword_100357AA8;
  if (!qword_100357AA8)
  {
    v1 = sub_100008CF0(&qword_100357A60, &qword_10027BC58);
    sub_1000582A8(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100357AA8);
  }

  return result;
}

uint64_t sub_100058788(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1000587D4()
{
  result = qword_100357AB0;
  if (!qword_100357AB0)
  {
    sub_100008CF0(&qword_100357AB8, &unk_10027BC70);
    sub_1000582FC();
    sub_10005859C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100357AB0);
  }

  return result;
}

__n128 sub_100058860(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100058874(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 64))
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

uint64_t sub_1000588D0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_100058960@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1000089B0(a2, v24);
  v6 = swift_allocObject();
  v7 = a1[1];
  v6[1] = *a1;
  v6[2] = v7;
  v8 = a1[3];
  v6[3] = a1[2];
  v6[4] = v8;
  sub_100008A18(v24, (v6 + 5));
  sub_1000089B0(a2, v28);
  v9 = swift_allocObject();
  v10 = a1[1];
  v9[1] = *a1;
  v9[2] = v10;
  v11 = a1[3];
  v9[3] = a1[2];
  v9[4] = v11;
  sub_100008A18(v28, (v9 + 5));
  sub_10005BE90(a1, v26);
  sub_10005BE90(a1, v26);
  sub_10013A3F0();
  v12 = *(a1 + 4);
  if (v12)
  {
    if (*(v12 + 88))
    {
      v42 = *(v12 + 88);
      v43 = 1;
      v45 = 0;
      v46 = 0;
      v44 = 0;

      sub_1000E47E8(&v42, v28);
    }

    else
    {
      v29 = 0;
      memset(v28, 0, sizeof(v28));
    }

    sub_100006C20(v28, v23, &qword_100357AC0, &qword_10027BD40);
    v13 = v37;
    v24[8] = v38;
    v24[9] = v39;
    v14 = v39;
    v24[10] = v40;
    v15 = v34;
    v16 = v33;
    v24[4] = v34;
    v24[5] = v35;
    v17 = v35;
    v18 = v36;
    v24[6] = v36;
    v24[7] = v37;
    v24[0] = v30;
    v24[1] = v31;
    v20 = v30;
    v19 = v31;
    v21 = v32;
    v24[2] = v32;
    v24[3] = v33;
    *(a3 + 128) = v38;
    *(a3 + 144) = v14;
    *(a3 + 160) = v40;
    *(a3 + 64) = v15;
    *(a3 + 80) = v17;
    *(a3 + 96) = v18;
    *(a3 + 112) = v13;
    *a3 = v20;
    *(a3 + 16) = v19;
    v25 = v41;
    *(a3 + 176) = v41;
    *(a3 + 32) = v21;
    *(a3 + 48) = v16;
    sub_100006C20(v23, a3 + 184, &qword_100357AC0, &qword_10027BD40);
    sub_100006C20(v24, v26, &qword_100357AC8, &qword_10027BD48);
    sub_100008FA0(v28, &qword_100357AC0, &qword_10027BD40);
    sub_100008FA0(v23, &qword_100357AC0, &qword_10027BD40);
    v26[8] = v38;
    v26[9] = v39;
    v26[10] = v40;
    v27 = v41;
    v26[4] = v34;
    v26[5] = v35;
    v26[6] = v36;
    v26[7] = v37;
    v26[0] = v30;
    v26[1] = v31;
    v26[2] = v32;
    v26[3] = v33;
    return sub_100008FA0(v26, &qword_100357AC8, &qword_10027BD48);
  }

  else
  {
    type metadata accessor for EmergencyModel();
    sub_10005D728(&qword_100356B60, type metadata accessor for EmergencyModel, "\ts\n");
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

double sub_100058C70@<D0>(char *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = static HorizontalAlignment.center.getter();
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v6 = sub_1000040A8(&qword_100357B78, &unk_10027BEC0);
  sub_100058D10(a1, a2, a3 + *(v6 + 44));
  LOBYTE(a2) = static Edge.Set.all.getter();
  v7 = a3 + *(sub_1000040A8(&qword_100357B80, &unk_1002896B0) + 36);
  *v7 = a2;
  result = 0.0;
  *(v7 + 8) = xmmword_100277A70;
  *(v7 + 24) = xmmword_100277A70;
  *(v7 + 40) = 0;
  return result;
}

uint64_t sub_100058D10@<X0>(char *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v129 = a2;
  v5 = sub_1000040A8(&qword_100357B88, &unk_10027BED0);
  __chkstk_darwin(v5 - 8);
  v118 = &v113 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v116 = (&v113 - v8);
  v9 = sub_1000040A8(&qword_100357B90, &unk_1002896C0);
  __chkstk_darwin(v9 - 8);
  v119 = &v113 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v131 = (&v113 - v12);
  v13 = type metadata accessor for AccessibilityTraits();
  v126 = *(v13 - 8);
  v127 = v13;
  __chkstk_darwin(v13);
  v125 = &v113 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Font.Leading();
  v122 = *(v15 - 8);
  v123 = v15;
  __chkstk_darwin(v15);
  v121 = &v113 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1000040A8(&qword_100357B98, &qword_10027BEE0);
  __chkstk_darwin(v17 - 8);
  v117 = &v113 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v133 = &v113 - v20;
  v21 = type metadata accessor for Image.ResizingMode();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = &v113 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1000040A8(&qword_100357BA0, &qword_10027BEE8);
  __chkstk_darwin(v25 - 8);
  v115 = &v113 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v132 = &v113 - v28;
  v128 = a1;
  v29 = *(a1 + 6);
  if (v29)
  {
    v30 = v29[14];
    v130 = v29;
    swift_retain_n();
    v31 = v30;
    v124 = UIContentSizeCategoryAccessibilityExtraLarge;
    v32 = static UIContentSizeCategory.>= infix(_:_:)();

    v120 = a3;
    if (v32)
    {
      v33 = sub_1000040A8(&qword_100357BD8, qword_1002896D0);
      (*(*(v33 - 8) + 56))(v132, 1, 1, v33);
    }

    else
    {
      v34 = v130[9];
      v35 = v130[10];
      sub_1000088DC(v130 + 6, v34);
      (*(v35 + 24))(&v139, v34, v35);
      sub_100008964(&v139);
      Image.init(_:bundle:)();
      (*(v22 + 104))(v24, enum case for Image.ResizingMode.stretch(_:), v21);
      v36 = Image.resizable(capInsets:resizingMode:)();

      (*(v22 + 8))(v24, v21);
      static Alignment.center.getter();
      _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
      *&v154[27] = *&v154[83];
      *&v154[35] = *&v154[91];
      *&v154[43] = *&v154[99];
      *&v154[51] = *&v154[107];
      *&v154[3] = *&v154[59];
      *&v154[11] = *&v154[67];
      LOBYTE(v134) = 1;
      *&v154[19] = *&v154[75];
      v37 = sub_1000088DC(v129, v129[3]);
      v38 = *(*v37 + 32);
      v113 = *(*v37 + 48);
      v114 = v38;
      v39 = static Edge.Set.all.getter();
      LOBYTE(v155[0]) = 0;
      v135 = v36;
      LOWORD(v136[0]) = 1;
      *(&v136[4] + 2) = *&v154[32];
      *(&v136[5] + 2) = *&v154[40];
      *(&v136[6] + 2) = *&v154[48];
      *&v136[7] = *&v154[55];
      *(v136 + 2) = *v154;
      *(&v136[1] + 2) = *&v154[8];
      *(&v136[2] + 2) = *&v154[16];
      *(&v136[3] + 2) = *&v154[24];
      BYTE8(v136[7]) = v39;
      v136[8] = v114;
      v137 = v113;
      LOBYTE(v138[0]) = 0;
      sub_1000040A8(&qword_100357BA8, &qword_10027BEF0);
      sub_10005D0EC();
      v40 = v132;
      View.accessibility(hidden:)();
      v147 = v136[7];
      v148 = v136[8];
      v149 = v137;
      LOBYTE(v150[0]) = v138[0];
      v143 = v136[3];
      v144 = v136[4];
      v145 = v136[5];
      v146 = v136[6];
      v139 = v135;
      v140 = v136[0];
      v141 = v136[1];
      v142 = v136[2];
      sub_100008FA0(&v139, &qword_100357BA8, &qword_10027BEF0);
      v41 = sub_1000040A8(&qword_100357BD8, qword_1002896D0);
      (*(*(v41 - 8) + 56))(v40, 0, 1, v41);
    }

    LocalizedStringKey.init(stringLiteral:)();
    v42 = Text.init(_:tableName:bundle:comment:)();
    v44 = v43;
    v46 = v45;
    static Font.largeTitle.getter();
    static Font.Weight.bold.getter();
    Font.weight(_:)();

    v48 = v121;
    v47 = v122;
    v49 = v123;
    (*(v122 + 104))(v121, enum case for Font.Leading.tight(_:), v123);
    Font.leading(_:)();

    (*(v47 + 8))(v48, v49);
    v50 = Text.font(_:)();
    v52 = v51;
    LOBYTE(v48) = v53;

    sub_1000317C4(v42, v44, v46 & 1);

    static Color.white.getter();
    v54 = Text.foregroundColor(_:)();
    v122 = v55;
    v123 = v54;
    v57 = v56;
    v121 = v58;

    sub_1000317C4(v50, v52, v48 & 1);

    v59 = v130;
    v60 = v130[9];
    v61 = v130[10];
    sub_1000088DC(v130 + 6, v60);
    (*(v61 + 24))(&v139, v60, v61);
    sub_100008964(&v139);
    v62 = v59[14];
    static UIContentSizeCategory.>= infix(_:_:)();

    KeyPath = swift_getKeyPath();
    static Alignment.center.getter();
    v64 = v59[9];
    v65 = v59[10];
    sub_1000088DC(v59 + 6, v64);
    (*(v65 + 24))(&v139, v64, v65);
    static Alignment.leading.getter();
    sub_100008964(&v139);
    v66 = v59[14];
    if (static UIContentSizeCategory.>= infix(_:_:)())
    {
      static Alignment.center.getter();
      if (static Alignment.== infix(_:_:)())
      {
        static Alignment.leading.getter();
      }
    }

    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    *&v151[55] = v155[3];
    *&v151[71] = v155[4];
    *&v151[87] = v155[5];
    *&v151[103] = v155[6];
    *&v151[7] = v155[0];
    *&v151[23] = v155[1];
    v152 = v57 & 1;
    *&v151[39] = v155[2];
    v67 = static Edge.Set.all.getter();
    *(&v136[5] + 9) = *&v151[64];
    *(&v136[6] + 9) = *&v151[80];
    *(&v136[7] + 9) = *&v151[96];
    *(&v136[1] + 9) = *v151;
    *(&v136[2] + 9) = *&v151[16];
    *(&v136[3] + 9) = *&v151[32];
    v153 = 0;
    *&v135 = v123;
    *(&v135 + 1) = v122;
    LOBYTE(v136[0]) = v57 & 1;
    *(&v136[0] + 1) = v121;
    *&v136[1] = KeyPath;
    BYTE8(v136[1]) = 0;
    *(&v136[8] + 1) = *&v151[111];
    *(&v136[4] + 9) = *&v151[48];
    LOBYTE(v137) = v67;
    *(&v137 + 1) = 0;
    *&v138[0] = 0;
    *(v138 + 8) = xmmword_10027BC80;
    BYTE8(v138[1]) = 0;
    v68 = v125;
    static AccessibilityTraits.isHeader.getter();
    sub_1000040A8(&qword_100357BE0, &unk_10027BF10);
    sub_10005D288();
    View.accessibility(addTraits:)();
    (*(v126 + 8))(v68, v127);
    v148 = v136[8];
    v149 = v137;
    v150[0] = v138[0];
    *(v150 + 9) = *(v138 + 9);
    v145 = v136[5];
    v146 = v136[6];
    v147 = v136[7];
    v141 = v136[1];
    v142 = v136[2];
    v143 = v136[3];
    v144 = v136[4];
    v139 = v135;
    v140 = v136[0];
    sub_100008FA0(&v139, &qword_100357BE0, &unk_10027BF10);
    sub_1000040A8(&qword_100357BF0, &unk_10027BF30);
    v69 = swift_allocObject();
    v70 = objc_opt_self();
    v71 = [v70 mainBundle];
    v72._countAndFlagsBits = 0xD00000000000001FLL;
    v156._object = 0x8000000100298DD0;
    v72._object = 0x8000000100298DB0;
    v73._countAndFlagsBits = 0;
    v73._object = 0xE000000000000000;
    v156._countAndFlagsBits = 0xD000000000000058;
    v74 = NSLocalizedString(_:tableName:bundle:value:comment:)(v72, 0, v71, v73, v156);

    v69[2] = v74;
    v75 = [v70 mainBundle];
    v76._countAndFlagsBits = 0xD000000000000022;
    v157._object = 0x8000000100298DD0;
    v76._object = 0x8000000100298E30;
    v77._countAndFlagsBits = 0;
    v77._object = 0xE000000000000000;
    v157._countAndFlagsBits = 0xD000000000000058;
    v78 = NSLocalizedString(_:tableName:bundle:value:comment:)(v76, 0, v75, v77, v157);

    v69[3] = v78;
    v79 = [v70 mainBundle];
    v80._countAndFlagsBits = 0xD00000000000002FLL;
    v158._object = 0x8000000100298DD0;
    v80._object = 0x8000000100296DC0;
    v81._countAndFlagsBits = 0;
    v81._object = 0xE000000000000000;
    v158._countAndFlagsBits = 0xD000000000000058;
    v82 = NSLocalizedString(_:tableName:bundle:value:comment:)(v80, 0, v79, v81, v158);

    v69[4] = v82;
    if (!*(v128 + 2))
    {
      type metadata accessor for BluetoothModel();
      v111 = &qword_100357BF8;
      v112 = type metadata accessor for BluetoothModel;
      goto LABEL_26;
    }

    v83 = 0;
    v69[5]._countAndFlagsBits = 0;
    v69[5]._object = 0;
    v84 = _swiftEmptyArrayStorage;
LABEL_10:
    if (v83 <= 4)
    {
      v85 = 4;
    }

    else
    {
      v85 = v83;
    }

    v86 = v85 + 1;
    v87 = 16 * v83 + 40;
    while (1)
    {
      if (v83 == 4)
      {
        swift_setDeallocating();
        sub_1000040A8(&qword_1003566A0, &qword_100279AF0);
        swift_arrayDestroy();
        swift_deallocClassInstance();
        v94 = static VerticalAlignment.top.getter();
        v95 = v131;
        *v131 = v94;
        v95[1] = 0;
        *(v95 + 16) = 1;
        v130 = (v95 + *(sub_1000040A8(&qword_100357C00, &qword_10027BF40) + 44));
        v96 = static HorizontalAlignment.leading.getter();
        v97 = v116;
        *v116 = v96;
        *(v97 + 8) = 0;
        *(v97 + 16) = 0;
        v127 = *(sub_1000040A8(&qword_100357C08, &unk_10027BF48) + 44);
        v128 = v84;
        v134 = v84;
        swift_getKeyPath();
        sub_1000089B0(v129, &v135);
        v98 = swift_allocObject();
        sub_100008A18(&v135, v98 + 16);
        *(v98 + 56) = 10649826;
        *(v98 + 64) = 0xA300000000000000;

        sub_1000040A8(&qword_100355E30, &unk_10027A120);
        sub_1000040A8(&qword_100357C10, &qword_10027BF78);
        sub_100009274(&qword_100357870, &qword_100355E30, &unk_10027A120, &protocol conformance descriptor for [A]);
        sub_100009274(&qword_100357C18, &qword_100357C10, &qword_10027BF78, &protocol conformance descriptor for TupleView<A>);
        ForEach<>.init(_:id:content:)();
        v99 = v118;
        sub_100006C20(v97, v118, &qword_100357B88, &unk_10027BED0);
        v100 = v130;
        sub_100006C20(v99, v130, &qword_100357B88, &unk_10027BED0);
        v101 = v100 + *(sub_1000040A8(&qword_100357C20, &qword_10027BF80) + 48);
        *v101 = 0;
        v101[8] = 0;
        sub_100008FA0(v97, &qword_100357B88, &unk_10027BED0);
        sub_100008FA0(v99, &qword_100357B88, &unk_10027BED0);

        v102 = v132;
        v103 = v115;
        sub_100006C20(v132, v115, &qword_100357BA0, &qword_10027BEE8);
        v104 = v133;
        v105 = v117;
        sub_100006C20(v133, v117, &qword_100357B98, &qword_10027BEE0);
        v106 = v131;
        v107 = v119;
        sub_100006C20(v131, v119, &qword_100357B90, &unk_1002896C0);
        v108 = v120;
        sub_100006C20(v103, v120, &qword_100357BA0, &qword_10027BEE8);
        v109 = sub_1000040A8(&qword_100357C28, &qword_10027BF88);
        sub_100006C20(v105, v108 + *(v109 + 48), &qword_100357B98, &qword_10027BEE0);
        sub_100006C20(v107, v108 + *(v109 + 64), &qword_100357B90, &unk_1002896C0);
        sub_100008FA0(v106, &qword_100357B90, &unk_1002896C0);
        sub_100008FA0(v104, &qword_100357B98, &qword_10027BEE0);
        sub_100008FA0(v102, &qword_100357BA0, &qword_10027BEE8);
        sub_100008FA0(v107, &qword_100357B90, &unk_1002896C0);
        sub_100008FA0(v105, &qword_100357B98, &qword_10027BEE0);
        return sub_100008FA0(v103, &qword_100357BA0, &qword_10027BEE8);
      }

      if (v86 == ++v83)
      {
        break;
      }

      v88 = v87 + 16;
      v89 = *(&v69->_countAndFlagsBits + v87);
      v87 += 16;
      if (v89)
      {
        v90 = *(&v69[-1] + v88 - 8);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v84 = sub_10017B338(0, *(v84 + 2) + 1, 1, v84);
        }

        v92 = *(v84 + 2);
        v91 = *(v84 + 3);
        if (v92 >= v91 >> 1)
        {
          v84 = sub_10017B338((v91 > 1), v92 + 1, 1, v84);
        }

        *(v84 + 2) = v92 + 1;
        v93 = &v84[16 * v92];
        *(v93 + 4) = v90;
        *(v93 + 5) = v89;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  type metadata accessor for UIMetrics();
  v111 = &qword_100354D40;
  v112 = type metadata accessor for UIMetrics;
LABEL_26:
  sub_10005D728(v111, v112, "\ts\n");
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t sub_100059F20@<X0>(uint64_t *a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = sub_1000040A8(&qword_100357C30, &qword_10027BF90);
  __chkstk_darwin(v9 - 8);
  v11 = &v24[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  __chkstk_darwin(v12);
  v14 = &v24[-v13 - 8];
  v16 = *a1;
  v15 = a1[1];
  *v14 = static VerticalAlignment.firstTextLineCenter.getter();
  *(v14 + 1) = 0x4024000000000000;
  v14[16] = 0;
  v17 = sub_1000040A8(&qword_100357C38, &qword_10027BF98);
  sub_10005A198(a3, a4, v16, v15, &v14[*(v17 + 44)]);
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  *&v24[55] = v29;
  *&v24[71] = v30;
  *&v24[87] = v31;
  *&v24[103] = v32;
  *&v24[7] = v26;
  *&v24[23] = v27;
  v25 = 1;
  *&v24[39] = v28;
  sub_100006C20(v14, v11, &qword_100357C30, &qword_10027BF90);
  sub_100006C20(v11, a5, &qword_100357C30, &qword_10027BF90);
  v18 = a5 + *(sub_1000040A8(&qword_100357C40, &unk_10027BFA0) + 48);
  v19 = *&v24[80];
  *(v18 + 73) = *&v24[64];
  *(v18 + 89) = v19;
  *(v18 + 105) = *&v24[96];
  v20 = *&v24[16];
  *(v18 + 9) = *v24;
  *(v18 + 25) = v20;
  v21 = *&v24[48];
  *(v18 + 41) = *&v24[32];
  *v18 = 0;
  *(v18 + 8) = 1;
  *(v18 + 120) = *&v24[111];
  *(v18 + 57) = v21;
  sub_100008FA0(v14, &qword_100357C30, &qword_10027BF90);
  return sub_100008FA0(v11, &qword_100357C30, &qword_10027BF90);
}

uint64_t sub_10005A198@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v52 = a3;
  v53 = a4;
  v54 = a5;
  v7 = sub_1000040A8(&qword_100357C48, &qword_10028EF90);
  __chkstk_darwin(v7 - 8);
  v56 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v55 = &v52 - v10;
  v60 = a1;
  v61 = a2;
  sub_100031770(v11, v12, v13);

  v14 = Text.init<A>(_:)();
  v16 = v15;
  v18 = v17;
  static Font.title2.getter();
  v19 = Text.font(_:)();
  v21 = v20;
  v23 = v22;

  sub_1000317C4(v14, v16, v18 & 1);

  static Color.gray.getter();
  v24 = Text.foregroundColor(_:)();
  v26 = v25;
  LOBYTE(v14) = v27;
  v29 = v28;

  sub_1000317C4(v19, v21, v23 & 1);

  v60 = v24;
  v61 = v26;
  v62 = v14 & 1;
  v64 = v29;
  View.accessibility(hidden:)();
  sub_1000317C4(v24, v26, v14 & 1);

  v60 = v52;
  v61 = v53;

  v30 = Text.init<A>(_:)();
  v32 = v31;
  LOBYTE(v24) = v33;
  static Font.title2.getter();
  v34 = Text.font(_:)();
  v36 = v35;
  LOBYTE(v29) = v37;

  sub_1000317C4(v30, v32, v24 & 1);

  static Color.gray.getter();
  v38 = Text.foregroundColor(_:)();
  v40 = v39;
  LOBYTE(v21) = v41;
  v53 = v42;

  sub_1000317C4(v34, v36, v29 & 1);

  KeyPath = swift_getKeyPath();
  LOBYTE(v60) = v21 & 1;
  v44 = v55;
  v45 = v56;
  sub_100006C20(v55, v56, &qword_100357C48, &qword_10028EF90);
  v46 = v45;
  v47 = v54;
  sub_100006C20(v46, v54, &qword_100357C48, &qword_10028EF90);
  v48 = (v47 + *(sub_1000040A8(&qword_100357C50, &qword_10027BFB0) + 48));
  *&v58 = v38;
  *(&v58 + 1) = v40;
  v59[0] = v21 & 1;
  *&v59[1] = v57[0];
  *&v59[4] = *(v57 + 3);
  v49 = v53;
  *&v59[8] = v53;
  *&v59[16] = KeyPath;
  *&v59[24] = 0;
  v59[26] = 1;
  *(v48 + 27) = *&v59[11];
  v50 = *v59;
  *v48 = v58;
  v48[1] = v50;
  sub_100006C20(&v58, &v60, &qword_100357C58, &qword_10027BFB8);
  sub_100008FA0(v44, &qword_100357C48, &qword_10028EF90);
  v60 = v38;
  v61 = v40;
  v62 = v21 & 1;
  *v63 = v57[0];
  *&v63[3] = *(v57 + 3);
  v64 = v49;
  v65 = KeyPath;
  v66 = 0;
  v67 = 1;
  sub_100008FA0(&v60, &qword_100357C58, &qword_10027BFB8);
  return sub_100008FA0(v56, &qword_100357C48, &qword_10028EF90);
}

double sub_10005A578@<D0>(void *a1@<X0>, uint64_t a3@<X8>)
{
  *a3 = static HorizontalAlignment.center.getter();
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v5 = sub_1000040A8(&qword_100357AD0, &qword_10027BD50);
  sub_10005A618(a1, (a3 + *(v5 + 44)));
  v6 = static Edge.Set.all.getter();
  v7 = a3 + *(sub_1000040A8(&qword_100357AD8, &qword_10027BD58) + 36);
  *v7 = v6;
  result = 0.0;
  *(v7 + 8) = xmmword_100277A70;
  *(v7 + 24) = xmmword_100277A70;
  *(v7 + 40) = 0;
  return result;
}

uint64_t sub_10005A618@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v182 = a2;
  v4 = type metadata accessor for KeyboardShortcut();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v147 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for GlassProminentButtonStyle();
  v152 = *(v8 - 8);
  v153 = v8;
  __chkstk_darwin(v8);
  v151 = &v147 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v174 = sub_1000040A8(&qword_100357AE0, &qword_10027BD60);
  __chkstk_darwin(v174);
  v154 = &v147 - v10;
  v163 = sub_1000040A8(&qword_100357AE8, &qword_10027BD68);
  __chkstk_darwin(v163);
  v168 = &v147 - v11;
  v12 = type metadata accessor for BorderedProminentButtonStyle();
  v148 = *(v12 - 8);
  v149 = v12;
  __chkstk_darwin(v12);
  v147 = &v147 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v161 = sub_1000040A8(&qword_100357AF0, &qword_10027BD70);
  __chkstk_darwin(v161);
  v150 = &v147 - v14;
  v158 = sub_1000040A8(&qword_100357AF8, &qword_10027BD78);
  __chkstk_darwin(v158);
  v183 = &v147 - v15;
  v167 = sub_1000040A8(&qword_100357B00, &qword_10027BD80);
  __chkstk_darwin(v167);
  v162 = &v147 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v165 = &v147 - v18;
  v172 = sub_1000040A8(&qword_100357B08, &qword_10027BD88);
  v170 = *(v172 - 8);
  __chkstk_darwin(v172);
  v166 = &v147 - v19;
  v164 = sub_1000040A8(&qword_100357B10, &qword_10027BD90);
  __chkstk_darwin(v164);
  v171 = &v147 - v20;
  v169 = sub_1000040A8(&qword_100357B18, &qword_10027BD98);
  __chkstk_darwin(v169);
  v176 = &v147 - v21;
  v175 = sub_1000040A8(&qword_100357B20, &qword_10027BDA0);
  __chkstk_darwin(v175);
  v23 = &v147 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v173 = &v147 - v25;
  __chkstk_darwin(v26);
  v28 = &v147 - v27;
  v29 = type metadata accessor for Font.Leading();
  v30 = *(v29 - 8);
  __chkstk_darwin(v29);
  v32 = &v147 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v159 = a1;
  v33 = a1[4];
  if (!v33)
  {
    type metadata accessor for EmergencyModel();
    v144 = &qword_100356B60;
    v145 = type metadata accessor for EmergencyModel;
LABEL_18:
    sub_10005D728(v144, v145, "\ts\n");
    result = EnvironmentObject.error()();
    __break(1u);
    return result;
  }

  v177 = v7;
  v178 = v28;
  v179 = v5;
  v180 = v4;
  v181 = v23;
  v34 = *(v33 + 152);
  v186 = v33;
  if (v34 == 1 || *(v33 + 144) >> 60 == 15)
  {
    v35 = objc_opt_self();
    swift_retain_n();
    v36 = [v35 mainBundle];
    v146 = 0x8000000100298C40;
    v37 = 0x8000000100298C20;
    v38 = 0xD000000000000069;
    v39 = 0xD00000000000001DLL;
  }

  else
  {
    v40 = objc_opt_self();
    swift_retain_n();
    v36 = [v40 mainBundle];
    v146 = 0x8000000100298CE0;
    v39 = 0xD00000000000002BLL;
    v37 = 0x8000000100298CB0;
    v38 = 0xD00000000000006ALL;
  }

  v41._countAndFlagsBits = 0;
  v41._object = 0xE000000000000000;
  v42 = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v39, 0, v36, v41, *&v38);

  v195 = v42;
  sub_100031770(v43, v44, v45);
  v46 = Text.init<A>(_:)();
  v48 = v47;
  v50 = v49;
  static Font.footnote.getter();
  (*(v30 + 104))(v32, enum case for Font.Leading.tight(_:), v29);
  Font.leading(_:)();

  (*(v30 + 8))(v32, v29);
  v51 = Text.font(_:)();
  v53 = v52;
  v55 = v54;

  sub_1000317C4(v46, v48, v50 & 1);

  static Color.gray.getter();
  v56 = Text.foregroundColor(_:)();
  v187 = v57;
  v188 = v56;
  v59 = v58;
  v61 = v60;

  sub_1000317C4(v51, v53, v55 & 1);

  v62 = v159;
  v63 = v159[6];
  if (!v63)
  {
    type metadata accessor for UIMetrics();
    v144 = &qword_100354D40;
    v145 = type metadata accessor for UIMetrics;
    goto LABEL_18;
  }

  v64 = *(v63 + 112);

  v65 = v64;
  v155 = static UIContentSizeCategory.>= infix(_:_:)();

  KeyPath = swift_getKeyPath();
  v66 = *(v63 + 112);

  static Alignment.center.getter();
  v67 = static UIContentSizeCategory.>= infix(_:_:)();
  v68 = v177;
  if (v67)
  {
    static Alignment.center.getter();
    if (static Alignment.== infix(_:_:)())
    {
      static Alignment.leading.getter();
    }
  }

  v160 = v61;
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  *&v221[55] = v232;
  *&v221[71] = v233;
  *&v221[87] = v234;
  *&v221[103] = v235;
  *&v221[7] = v229;
  *&v221[23] = v230;
  v184 = v59 & 1;
  v223 = v59 & 1;
  *&v221[39] = v231;
  v156 = static Edge.Set.top.getter();
  v224 = 1;
  v157 = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v70 = v69;
  v72 = v71;
  v74 = v73;
  v76 = v75;
  v226 = 0;
  v77 = swift_allocObject();
  v78 = v62[1];
  v77[1] = *v62;
  v77[2] = v78;
  v79 = v62[3];
  v77[3] = v62[2];
  v77[4] = v79;
  v80 = sub_10005BE90(v62, &v195);
  sub_10005CB9C(v80, v81, v82);
  v83 = v183;
  Button.init(action:label:)();
  v84 = (v83 + *(v158 + 36));
  v85 = *(sub_1000040A8(&qword_1003550A0, &qword_100277F40) + 28);
  v86 = enum case for ControlSize.large(_:);
  v87 = type metadata accessor for ControlSize();
  (*(*(v87 - 8) + 104))(v84 + v85, v86, v87);
  *v84 = swift_getKeyPath();
  LODWORD(v86) = *(v186 + 130);

  if (v86 == 1)
  {
    v88 = v147;
    BorderedProminentButtonStyle.init()();
    sub_10005CBF8();
    sub_10005D728(&qword_100357B50, &type metadata accessor for BorderedProminentButtonStyle, &protocol conformance descriptor for BorderedProminentButtonStyle);
    v89 = v149;
    v90 = v150;
    View.buttonStyle<A>(_:)();
    (*(v148 + 8))(v88, v89);
    v91 = (v90 + *(v161 + 36));
    sub_1000040A8(&qword_100357740, &qword_10027B2A0);
    static ButtonBorderShape.capsule.getter();
    *v91 = swift_getKeyPath();
    v92 = &qword_100357AF0;
    v93 = &qword_10027BD70;
    sub_100006C20(v90, v168, &qword_100357AF0, &qword_10027BD70);
    swift_storeEnumTagMultiPayload();
    sub_10005CCE4();
    sub_10005CE28();
    v94 = v162;
    _ConditionalContent<>.init(storage:)();
    v95 = v90;
  }

  else
  {
    v96 = v151;
    GlassProminentButtonStyle.init()();
    sub_10005CBF8();
    sub_10005D728(&qword_100357730, &type metadata accessor for GlassProminentButtonStyle, &protocol conformance descriptor for GlassProminentButtonStyle);
    v97 = v153;
    v98 = v154;
    View.buttonStyle<A>(_:)();
    (*(v152 + 8))(v96, v97);
    v99 = (v98 + *(v174 + 36));
    sub_1000040A8(&qword_100357740, &qword_10027B2A0);
    static ButtonBorderShape.capsule.getter();
    *v99 = swift_getKeyPath();
    v92 = &qword_100357AE0;
    v93 = &qword_10027BD60;
    sub_100006C20(v98, v168, &qword_100357AE0, &qword_10027BD60);
    swift_storeEnumTagMultiPayload();
    sub_10005CCE4();
    sub_10005CE28();
    v94 = v162;
    v83 = v183;
    _ConditionalContent<>.init(storage:)();
    v95 = v98;
  }

  sub_100008FA0(v95, v92, v93);
  sub_100008FA0(v83, &qword_100357AF8, &qword_10027BD78);
  v100 = v165;
  sub_10000CF4C(v94, v165, &qword_100357B00, &qword_10027BD80);
  static KeyboardShortcut.defaultAction.getter();
  sub_10005CF6C();
  v101 = v166;
  View.keyboardShortcut(_:)();
  (*(v179 + 8))(v68, v180);
  sub_100008FA0(v100, &qword_100357B00, &qword_10027BD80);
  v102 = static Color.green.getter();
  v103 = swift_getKeyPath();
  v195._countAndFlagsBits = v102;
  v104 = AnyShapeStyle.init<A>(_:)();
  v105 = v171;
  (*(v170 + 32))(v171, v101, v172);
  v106 = (v105 + *(v164 + 36));
  *v106 = v103;
  v106[1] = v104;
  v107 = *(v186 + 130);

  v108 = swift_getKeyPath();
  v109 = swift_allocObject();
  *(v109 + 16) = v107;
  v110 = v176;
  sub_10000CF4C(v105, v176, &qword_100357B10, &qword_10027BD90);
  v111 = (v110 + *(v169 + 36));
  *v111 = v108;
  v111[1] = sub_10005D0D4;
  v111[2] = v109;
  v112 = static Edge.Set.bottom.getter();
  if (qword_100353988 != -1)
  {
    swift_once();
  }

  v113 = (v155 & 1) == 0;
  LODWORD(v186) = v113;
  EdgeInsets.init(_all:)();
  v115 = v114;
  v117 = v116;
  v119 = v118;
  v121 = v120;
  v122 = v173;
  sub_10000CF4C(v110, v173, &qword_100357B18, &qword_10027BD98);
  v123 = v122 + *(v175 + 36);
  *v123 = v112;
  *(v123 + 8) = v115;
  *(v123 + 16) = v117;
  *(v123 + 24) = v119;
  *(v123 + 32) = v121;
  *(v123 + 40) = 0;
  v124 = v178;
  sub_10000CF4C(v122, v178, &qword_100357B20, &qword_10027BDA0);
  v125 = v181;
  sub_100006C20(v124, v181, &qword_100357B20, &qword_10027BDA0);
  *&v189 = v188;
  *(&v189 + 1) = v187;
  LOBYTE(v190) = v184;
  *(&v190 + 1) = *v222;
  DWORD1(v190) = *&v222[3];
  v126 = v160;
  *(&v190 + 1) = v160;
  *&v191[0] = KeyPath;
  BYTE8(v191[0]) = v113;
  *(&v191[4] + 9) = *&v221[64];
  *(&v191[5] + 9) = *&v221[80];
  *(&v191[6] + 9) = *&v221[96];
  *(&v191[7] + 1) = *&v221[111];
  *(v191 + 9) = *v221;
  *(&v191[1] + 9) = *&v221[16];
  *(&v191[2] + 9) = *&v221[32];
  *(&v191[3] + 9) = *&v221[48];
  v127 = v156;
  LOBYTE(v192[0]) = v156;
  *(v192 + 1) = *v225;
  DWORD1(v192[0]) = *&v225[3];
  *(&v192[1] + 8) = 0u;
  *(v192 + 8) = 0u;
  BYTE8(v192[2]) = 1;
  *(&v192[2] + 9) = *v228;
  HIDWORD(v192[2]) = *&v228[3];
  v128 = v157;
  LOBYTE(v193) = v157;
  *(&v193 + 1) = *v227;
  DWORD1(v193) = *&v227[3];
  *(&v193 + 1) = v70;
  *&v194[0] = v72;
  *(&v194[0] + 1) = v74;
  *&v194[1] = v76;
  BYTE8(v194[1]) = 0;
  v129 = v189;
  v130 = v190;
  v131 = v191[1];
  v132 = v182;
  v182[2] = v191[0];
  v132[3] = v131;
  *v132 = v129;
  v132[1] = v130;
  v133 = v191[2];
  v134 = v191[3];
  v135 = v191[5];
  v132[6] = v191[4];
  v132[7] = v135;
  v132[4] = v133;
  v132[5] = v134;
  v136 = v191[6];
  v137 = v191[7];
  v138 = v192[1];
  v132[10] = v192[0];
  v132[11] = v138;
  v132[8] = v136;
  v132[9] = v137;
  v139 = v192[2];
  v140 = v193;
  v141 = v194[0];
  *(v132 + 233) = *(v194 + 9);
  v132[13] = v140;
  v132[14] = v141;
  v132[12] = v139;
  v142 = sub_1000040A8(&qword_100357B68, &unk_10027BEB0);
  sub_100006C20(v125, v132 + *(v142 + 48), &qword_100357B20, &qword_10027BDA0);
  sub_100006C20(&v189, &v195, &qword_100357B70, &unk_1002896A0);
  sub_100008FA0(v124, &qword_100357B20, &qword_10027BDA0);
  sub_100008FA0(v125, &qword_100357B20, &qword_10027BDA0);
  v205 = *&v221[64];
  v206 = *&v221[80];
  *v207 = *&v221[96];
  v201 = *v221;
  v202 = *&v221[16];
  v203 = *&v221[32];
  v195._countAndFlagsBits = v188;
  v195._object = v187;
  v196 = v184;
  *v197 = *v222;
  *&v197[3] = *&v222[3];
  v198 = v126;
  v199 = KeyPath;
  v200 = v186;
  *&v207[15] = *&v221[111];
  v204 = *&v221[48];
  v208 = v127;
  *v209 = *v225;
  *&v209[3] = *&v225[3];
  v210 = 0u;
  v211 = 0u;
  v212 = 1;
  *v213 = *v228;
  *&v213[3] = *&v228[3];
  v214 = v128;
  *&v215[3] = *&v227[3];
  *v215 = *v227;
  v216 = v70;
  v217 = v72;
  v218 = v74;
  v219 = v76;
  v220 = 0;
  return sub_100008FA0(&v195, &qword_100357B70, &unk_1002896A0);
}

uint64_t *sub_10005B998(uint64_t *result)
{
  v1 = result[4];
  if (!v1)
  {
    type metadata accessor for EmergencyModel();
    sub_10005D728(&qword_100356B60, type metadata accessor for EmergencyModel, "\ts\n");
    EnvironmentObject.error()();
    __break(1u);
    goto LABEL_7;
  }

  if (!*(v1 + 88))
  {
    return result;
  }

  if (!*result)
  {
LABEL_7:
    type metadata accessor for AppEvents();
    sub_10005D728(&qword_100354D48, type metadata accessor for AppEvents, "ɼ\t");

    result = EnvironmentObject.error()();
    __break(1u);
    return result;
  }

  PassthroughSubject.send(_:)();

  sub_1000BAC9C();

  PassthroughSubject.send(_:)();
}

uint64_t sub_10005BB1C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for EmergencyModel();
  sub_10005D728(&qword_100356B60, type metadata accessor for EmergencyModel, "\ts\n");
  v2 = EnvironmentObject.init()();
  v4 = v3;
  type metadata accessor for UIMetrics();
  sub_10005D728(&qword_100354D40, type metadata accessor for UIMetrics, "\ts\n");
  result = EnvironmentObject.init()();
  *a1 = v2;
  a1[1] = v4;
  a1[2] = result;
  a1[3] = v6;
  return result;
}

void *sub_10005BBE8(void *result)
{
  v1 = result[4];
  if (!v1)
  {
    type metadata accessor for EmergencyModel();
    sub_10005D728(&qword_100356B60, type metadata accessor for EmergencyModel, "\ts\n");
    EnvironmentObject.error()();
    __break(1u);
    goto LABEL_7;
  }

  if (!*(v1 + 88))
  {
    return result;
  }

  if (!*result)
  {
LABEL_7:
    type metadata accessor for AppEvents();
    sub_10005D728(&qword_100354D48, type metadata accessor for AppEvents, "ɼ\t");

    result = EnvironmentObject.error()();
    __break(1u);
    return result;
  }

  PassthroughSubject.send(_:)();
}

uint64_t sub_10005BD34@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[1];
  v13 = *v1;
  v14 = v3;
  v4 = v1[3];
  v15 = v1[2];
  v16 = v4;
  if (v4)
  {
    v5 = *(v4 + 72);
    v6 = *(v4 + 80);
    sub_1000088DC((v4 + 48), v5);
    (*(v6 + 24))(v12, v5, v6);
    *a1 = static HorizontalAlignment.center.getter();
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    sub_100058960(&v13, v12, a1 + 24);
    v7 = swift_allocObject();
    v8 = v14;
    v7[1] = v13;
    v7[2] = v8;
    v9 = v16;
    v7[3] = v15;
    v7[4] = v9;
    *(a1 + 344) = sub_10005BE88;
    *(a1 + 352) = v7;
    *(a1 + 360) = 0;
    *(a1 + 368) = 0;
    sub_10005BE90(&v13, v11);
    return sub_100008964(v12);
  }

  else
  {
    type metadata accessor for UIMetrics();
    sub_10005D728(&qword_100354D40, type metadata accessor for UIMetrics, "\ts\n");
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_10005BED8()
{

  sub_100008964((v0 + 80));

  return _swift_deallocObject(v0, 120, 7);
}

uint64_t sub_10005BF3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v66 = a2;
  v82 = a1;
  v72 = type metadata accessor for CircularProgressViewStyle();
  v71 = *(v72 - 8);
  __chkstk_darwin(v72);
  v70 = &v66 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_1000040A8(&qword_100354FA0, &unk_1002851D0);
  v68 = *(v69 - 8);
  __chkstk_darwin(v69);
  v67 = &v66 - v5;
  v86 = sub_1000040A8(&qword_100357C88, &unk_10027C080);
  v85 = *(v86 - 8);
  __chkstk_darwin(v86);
  v73 = &v66 - v6;
  v7 = sub_1000040A8(&qword_100357C90, &unk_1002897B0);
  __chkstk_darwin(v7 - 8);
  v88 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v87 = &v66 - v10;
  v75 = sub_1000040A8(&qword_100354D60, &qword_100277B30);
  __chkstk_darwin(v75);
  v12 = &v66 - v11;
  v76 = sub_1000040A8(&qword_100357C98, &unk_10027D5C0);
  __chkstk_darwin(v76);
  v14 = &v66 - v13;
  v77 = sub_1000040A8(&qword_100357CA0, &unk_10027C090);
  __chkstk_darwin(v77);
  v79 = &v66 - v15;
  v78 = sub_1000040A8(&qword_100357CA8, &unk_10027D5B0);
  __chkstk_darwin(v78);
  v80 = &v66 - v16;
  v81 = sub_1000040A8(&qword_100357CB0, &unk_10027C0A0);
  __chkstk_darwin(v81);
  v18 = &v66 - v17;
  v19 = sub_1000040A8(&qword_100357CB8, &unk_1002897C0);
  __chkstk_darwin(v19 - 8);
  v84 = &v66 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v83 = &v66 - v22;
  LocalizedStringKey.init(stringLiteral:)();
  v23 = Text.init(_:tableName:bundle:comment:)();
  v25 = v24;
  *&v90 = v23;
  *(&v90 + 1) = v24;
  v27 = v26 & 1;
  LOBYTE(v91) = v26 & 1;
  *(&v91 + 1) = v28;
  v29 = enum case for DynamicTypeSize.accessibility2(_:);
  v30 = type metadata accessor for DynamicTypeSize();
  (*(*(v30 - 8) + 104))(v12, v29, v30);
  sub_10005D728(&qword_100354D68, &type metadata accessor for DynamicTypeSize, &protocol conformance descriptor for DynamicTypeSize);
  if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v74 = a3;
  sub_100009274(&qword_100354D78, &qword_100354D60, &qword_100277B30, &protocol conformance descriptor for PartialRangeThrough<A>);
  View.dynamicTypeSize<A>(_:)();
  sub_100008FA0(v12, &qword_100354D60, &qword_100277B30);
  sub_1000317C4(v23, v25, v27);

  KeyPath = swift_getKeyPath();
  v32 = &v14[*(v76 + 36)];
  *v32 = KeyPath;
  v32[8] = 1;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v33 = v79;
  sub_10000CF4C(v14, v79, &qword_100357C98, &unk_10027D5C0);
  v34 = (v33 + *(v77 + 36));
  v35 = v95;
  v34[4] = v94;
  v34[5] = v35;
  v34[6] = v96;
  v36 = v91;
  *v34 = v90;
  v34[1] = v36;
  v37 = v93;
  v34[2] = v92;
  v34[3] = v37;
  v38 = v33;
  v39 = v80;
  sub_10000CF4C(v38, v80, &qword_100357CA0, &unk_10027C090);
  *(v39 + *(v78 + 36)) = 256;
  v40 = v82;
  if (!v82)
  {
LABEL_11:
    type metadata accessor for EmergencyModel();
    sub_10005D728(&qword_100356B60, type metadata accessor for EmergencyModel, "\ts\n");
    result = EnvironmentObject.error()();
    __break(1u);
    return result;
  }

  if (*(v82 + 130))
  {
    v41 = 0.0;
  }

  else
  {
    v41 = 1.0;
  }

  sub_10000CF4C(v39, v18, &qword_100357CA8, &unk_10027D5B0);
  *&v18[*(v81 + 36)] = v41;
  sub_10005D448();

  v42 = v83;
  View.accessibilityHidden(_:)();
  sub_100008FA0(v18, &qword_100357CB0, &unk_10027C0A0);
  v43 = *(v40 + 130);

  v44 = v87;
  if (v43)
  {
    v45 = v67;
    ProgressView<>.init<>()();
    v46 = v70;
    CircularProgressViewStyle.init()();
    sub_100009274(&qword_100355088, &qword_100354FA0, &unk_1002851D0, &protocol conformance descriptor for ProgressView<A, B>);
    sub_10005D728(&qword_100355090, &type metadata accessor for CircularProgressViewStyle, &protocol conformance descriptor for CircularProgressViewStyle);
    v47 = v73;
    v48 = v69;
    v49 = v72;
    View.progressViewStyle<A>(_:)();
    (*(v71 + 8))(v46, v49);
    (*(v68 + 8))(v45, v48);
    v50 = (v47 + *(sub_1000040A8(&qword_100354FA8, &qword_100277EC0) + 36));
    v51 = *(sub_1000040A8(&qword_1003550A0, &qword_100277F40) + 28);
    v52 = enum case for ControlSize.small(_:);
    v53 = type metadata accessor for ControlSize();
    (*(*(v53 - 8) + 104))(v50 + v51, v52, v53);
    *v50 = swift_getKeyPath();
    v54 = [objc_opt_self() labelColor];
    v55 = Color.init(uiColor:)();
    v56 = swift_getKeyPath();
    v89 = v55;
    v57 = AnyShapeStyle.init<A>(_:)();
    v58 = v86;
    v59 = (v47 + *(v86 + 36));
    *v59 = v56;
    v59[1] = v57;
    sub_10000CF4C(v47, v44, &qword_100357C88, &unk_10027C080);
    v60 = 0;
    v61 = v74;
  }

  else
  {
    v60 = 1;
    v61 = v74;
    v58 = v86;
  }

  (*(v85 + 56))(v44, v60, 1, v58);
  v62 = v84;
  sub_100006C20(v42, v84, &qword_100357CB8, &unk_1002897C0);
  v63 = v88;
  sub_100006C20(v44, v88, &qword_100357C90, &unk_1002897B0);
  sub_100006C20(v62, v61, &qword_100357CB8, &unk_1002897C0);
  v64 = sub_1000040A8(&qword_100357CE0, &unk_10027C0B0);
  sub_100006C20(v63, v61 + *(v64 + 48), &qword_100357C90, &unk_1002897B0);
  sub_100008FA0(v44, &qword_100357C90, &unk_1002897B0);
  sub_100008FA0(v42, &qword_100357CB8, &unk_1002897C0);
  sub_100008FA0(v63, &qword_100357C90, &unk_1002897B0);
  return sub_100008FA0(v62, &qword_100357CB8, &unk_1002897C0);
}

uint64_t sub_10005CACC@<X0>(uint64_t *a2@<X8>)
{
  v4 = *v2;
  v5 = v2[1];
  *a2 = static Alignment.center.getter();
  a2[1] = v6;
  v7 = sub_1000040A8(&qword_100357C80, &unk_10027C070);
  return sub_10005BF3C(v4, v5, a2 + *(v7 + 44));
}

uint64_t sub_10005CB44()
{

  return _swift_deallocObject(v0, 80, 7);
}

unint64_t sub_10005CB9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100357B28;
  if (!qword_100357B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100357B28);
  }

  return result;
}

unint64_t sub_10005CBF8()
{
  result = qword_100357B30;
  if (!qword_100357B30)
  {
    sub_100008CF0(&qword_100357AF8, &qword_10027BD78);
    sub_100009274(&qword_100357B38, &qword_100357B40, &unk_10027BE10, &protocol conformance descriptor for Button<A>);
    sub_100009274(&qword_100355098, &qword_1003550A0, &qword_100277F40, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100357B30);
  }

  return result;
}

unint64_t sub_10005CCE4()
{
  result = qword_100357B48;
  if (!qword_100357B48)
  {
    sub_100008CF0(&qword_100357AF0, &qword_10027BD70);
    sub_100008CF0(&qword_100357AF8, &qword_10027BD78);
    type metadata accessor for BorderedProminentButtonStyle();
    sub_10005CBF8();
    sub_10005D728(&qword_100357B50, &type metadata accessor for BorderedProminentButtonStyle, &protocol conformance descriptor for BorderedProminentButtonStyle);
    swift_getOpaqueTypeConformance2();
    sub_100009274(&qword_100357768, &qword_100357740, &qword_10027B2A0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100357B48);
  }

  return result;
}

unint64_t sub_10005CE28()
{
  result = qword_100357B58;
  if (!qword_100357B58)
  {
    sub_100008CF0(&qword_100357AE0, &qword_10027BD60);
    sub_100008CF0(&qword_100357AF8, &qword_10027BD78);
    type metadata accessor for GlassProminentButtonStyle();
    sub_10005CBF8();
    sub_10005D728(&qword_100357730, &type metadata accessor for GlassProminentButtonStyle, &protocol conformance descriptor for GlassProminentButtonStyle);
    swift_getOpaqueTypeConformance2();
    sub_100009274(&qword_100357768, &qword_100357740, &qword_10027B2A0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100357B58);
  }

  return result;
}

unint64_t sub_10005CF6C()
{
  result = qword_100357B60;
  if (!qword_100357B60)
  {
    sub_100008CF0(&qword_100357B00, &qword_10027BD80);
    sub_10005CCE4();
    sub_10005CE28();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100357B60);
  }

  return result;
}

uint64_t sub_10005D000@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.isEnabled.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_10005D030@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.isEnabled.getter();
  *a1 = result & 1;
  return result;
}