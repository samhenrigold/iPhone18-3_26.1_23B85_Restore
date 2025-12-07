void sub_10008EDD0(void *a1)
{
  v3 = sub_1000033A8(&qword_1001D41B0, &qword_100170B60);
  __chkstk_darwin(v3 - 8);
  p_name = (&v41 - v4);
  v56 = type metadata accessor for Logger();
  v54 = *(v56 - 8);
  __chkstk_darwin(v56);
  v50 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_1000033A8(&unk_1001D6410, &unk_100175370);
  v7 = *(v49 - 8);
  __chkstk_darwin(v49);
  v48 = &v41 - v8;
  v47 = sub_1000033A8(&qword_1001D7FD0, &unk_1001770A0);
  v9 = *(v47 - 8);
  __chkstk_darwin(v47);
  v46 = &v41 - v10;
  [a1 timestamp];
  v12 = v11;
  v57 = v1;
  v13 = [*(v1 + OBJC_IVAR____TtC6Tamale20ARCameraSourceReplay_session) availableSensors];
  sub_1000033A8(&qword_1001D7FD8, &qword_1001770B0);
  v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v14 >> 62)
  {
    goto LABEL_27;
  }

  v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (i = v50; v15; i = v50)
  {
    v41 = a1;
    v42 = p_name;
    v17 = 0;
    v58 = v14 & 0xFFFFFFFFFFFFFF8;
    ++v54;
    v55 = OBJC_IVAR____TtC6Tamale20ARCameraSourceReplay_cameraSource;
    v45 = (v7 + 16);
    v44 = (v7 + 8);
    v43 = (v9 + 8);
    v9 = v14 & 0xC000000000000001;
    p_name = &stru_1001CFFF8.name;
    v52 = v15;
    v53 = v14;
    v51 = v14 & 0xC000000000000001;
    while (v9)
    {
      v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      a1 = (v17 + 1);
      if (__OFADD__(v17, 1))
      {
        goto LABEL_25;
      }

LABEL_12:
      objc_opt_self();
      v18 = swift_dynamicCastObjCClass();
      if (v18 && [v18 p_name[201]])
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
        sub_10005BB68(v63, v60);
        type metadata accessor for CustomARRecordingStreamingMetadata();
        if (swift_dynamicCast())
        {
          v19 = v59;
          v20 = *&v59[OBJC_IVAR____TtC6Tamale34CustomARRecordingStreamingMetadata_wrappedMetadata];
          v21 = *&v59[OBJC_IVAR____TtC6Tamale34CustomARRecordingStreamingMetadata_wrappedMetadata + 8];
          v22 = *&v59[OBJC_IVAR____TtC6Tamale34CustomARRecordingStreamingMetadata_wrappedMetadata + 16];
          v23 = v59[OBJC_IVAR____TtC6Tamale34CustomARRecordingStreamingMetadata_wrappedMetadata + 20];
          Strong = swift_unknownObjectWeakLoadStrong();
          if (Strong)
          {
            v25 = Strong;
            v26 = swift_unknownObjectWeakLoadStrong();

            if (v26)
            {
              v27 = v48;
              v28 = v49;
              (*v45)(v48, &v26[OBJC_IVAR____TtC6Tamale26StreamingMetadataProcessor_continuation], v49);
              v60[0] = v21;
              v60[1] = v20;
              v60[2] = v21;
              v61 = v22;
              v62 = v23;

              v29 = v46;
              AsyncStream.Continuation.yield(_:)();

              swift_unknownObjectRelease();
              (*v44)(v27, v28);
              (*v43)(v29, v47);
              sub_100006B44(v63);
            }

            else
            {
              sub_100006B44(v63);

              swift_unknownObjectRelease();
            }

            i = v50;
            v9 = v51;
            v15 = v52;
            v14 = v53;
            p_name = (&stru_1001CFFF8 + 8);
          }

          else
          {

            swift_unknownObjectRelease();
            sub_100006B44(v63);
            v15 = v52;
            v14 = v53;
            v9 = v51;
          }
        }

        else
        {
          static Log.cameraSource.getter();
          v30 = Logger.logObject.getter();
          v31 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v30, v31))
          {
            v32 = swift_slowAlloc();
            *v32 = 0;
            _os_log_impl(&_mh_execute_header, v30, v31, "Unsupported custom metadata", v32, 2u);
          }

          swift_unknownObjectRelease();
          (*v54)(i, v56);
          sub_100006B44(v63);
          p_name = (&stru_1001CFFF8 + 8);
        }
      }

      else
      {
        swift_unknownObjectRelease();
      }

      ++v17;
      if (a1 == v15)
      {

        p_name = v42;
        a1 = v41;
        goto LABEL_29;
      }
    }

    if (v17 >= *(v58 + 16))
    {
      goto LABEL_26;
    }

    v7 = *(v14 + 8 * v17 + 32);
    swift_unknownObjectRetain();
    a1 = (v17 + 1);
    if (!__OFADD__(v17, 1))
    {
      goto LABEL_12;
    }

LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    v15 = _CocoaArrayWrapper.endIndex.getter();
  }

LABEL_29:
  [a1 rawHeading];
  v34 = v33;
  v35 = [a1 geoTrackingStatus];
  if (v35)
  {
    v36 = v35;
    v37 = [v35 state];

    if (v37 == 3)
    {
      [a1 heading];
      v34 = v38;
    }
  }

  v39 = type metadata accessor for TaskPriority();
  (*(*(v39 - 8) + 56))(p_name, 1, 1, v39);
  v40 = swift_allocObject();
  v40[2] = 0;
  v40[3] = 0;
  v40[4] = v34;
  sub_1000154EC(0, 0, p_name, &unk_1001770C0, v40);
}

uint64_t sub_10008F548()
{
  *(v0 + 24) = type metadata accessor for LocationsHandler();
  type metadata accessor for MainActor();
  *(v0 + 32) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10008F5E8, v2, v1);
}

uint64_t sub_10008F5E8()
{

  *(v0 + 40) = static LocationsHandler.shared.getter();

  return _swift_task_switch(sub_10008F658, 0, 0);
}

uint64_t sub_10008F658()
{
  dispatch thunk of LocationsHandler.addSimulatedHeading(_:)();

  v1 = *(v0 + 8);

  return v1();
}

void sub_10008F6C4(uint64_t a1)
{
  v1 = sub_1000033A8(&qword_1001D41B0, &qword_100170B60);
  __chkstk_darwin(v1 - 8);
  v3 = &v14 - v2;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v10 = *(Strong + OBJC_IVAR____TtC6Tamale14ARCameraSource_frameQueue);
    *v7 = v10;
    (*(v5 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v4);
    v11 = v10;
    LOBYTE(v10) = _dispatchPreconditionTest(_:)();
    (*(v5 + 8))(v7, v4);
    if (v10)
    {
      if (sub_10007A56C(v9))
      {
        v12 = type metadata accessor for TaskPriority();
        (*(*(v12 - 8) + 56))(v3, 1, 1, v12);
        v13 = swift_allocObject();
        v13[2] = 0;
        v13[3] = 0;
        v13[4] = v9;
        sub_1000154EC(0, 0, v3, &unk_1001770F0, v13);
      }

      else
      {
      }
    }

    else
    {
      __break(1u);
    }
  }
}

id sub_10008FA18(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  __chkstk_darwin(v4);
  v5 = [a1 decodeDataObject];
  if (v5)
  {
    v6 = v5;
    v7 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;

    type metadata accessor for PropertyListDecoder();
    swift_allocObject();
    v10 = PropertyListDecoder.init()();
    sub_100090F94(v10, v11, v12);
    dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();

    sub_10005BC60(v7, v9);
    v13 = v21;
    v14 = v22;
    v15 = v23;
    v16 = &v2[OBJC_IVAR____TtC6Tamale34CustomARRecordingStreamingMetadata_wrappedMetadata];
    *v16 = v20;
    *(v16 + 1) = v13;
    *(v16 + 4) = v14;
    v16[20] = v15;
    v19.receiver = v2;
    v19.super_class = type metadata accessor for CustomARRecordingStreamingMetadata();
    v17 = objc_msgSendSuper2(&v19, "init");

    return v17;
  }

  else
  {

    type metadata accessor for CustomARRecordingStreamingMetadata();
    swift_deallocPartialClassInstance();
    return 0;
  }
}

double sub_10008FD9C(void *a1)
{
  type metadata accessor for PropertyListEncoder();
  swift_allocObject();
  v2 = PropertyListEncoder.init()();
  sub_100090F40(v2, v3, v4);

  v5 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v7 = v6;

  isa = Data._bridgeToObjectiveC()().super.isa;
  [a1 encodeDataObject:isa];

  sub_10005BC60(v5, v7);

  return result;
}

id sub_10008FF6C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_100090008(uint64_t a1)
{
  sub_10009007C(319);
  if (v1 <= 0x3F)
  {
    sub_100090120(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_10009007C(uint64_t a1)
{
  if (!qword_1001D7D50)
  {
    sub_10005BBC4(255, &qword_1001D7D58, ARAnchor_ptr);
    type metadata accessor for ARCameraSource.AnchorInformation(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1001D7D50);
    }
  }
}

void sub_100090120(uint64_t a1)
{
  if (!qword_1001D7D60)
  {
    type metadata accessor for Corners();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1001D7D60);
    }
  }
}

uint64_t sub_1000901B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for RaycastAccuracy(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_1000902AC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for RaycastAccuracy(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

void sub_100090364(uint64_t a1)
{
  type metadata accessor for RaycastAccuracy(319);
  if (v1 <= 0x3F)
  {
    sub_1000903E8(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1000903E8(uint64_t a1)
{
  if (!qword_1001D7DF8)
  {
    sub_10001276C(&unk_1001D7E00, &qword_100176ED8);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_1001D7DF8);
    }
  }
}

void sub_10009044C(uint64_t a1)
{
  sub_1000904C0();
  if (v1 <= 0x3F)
  {
    sub_1000904F0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void *sub_1000904C0()
{
  result = qword_1001D7EB0;
  if (!qword_1001D7EB0)
  {
    result = &type metadata for Double;
    atomic_store(&type metadata for Double, &qword_1001D7EB0);
  }

  return result;
}

void sub_1000904F0()
{
  if (!qword_1001D7EB8)
  {
    v0 = type metadata accessor for Corners();
    if (!v1)
    {
      atomic_store(v0, &qword_1001D7EB8);
    }
  }
}

uint64_t sub_100090580(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1000905CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1001D7EF0;
  if (!qword_1001D7EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D7EF0);
  }

  return result;
}

uint64_t sub_1000906AC()
{

  return swift_deallocObject();
}

double sub_100090744(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

double sub_100090780(uint64_t a1, double a2)
{
  v3 = *(a1 + 32);

  v3(v4, a2);

  return result;
}

void (*sub_1000907D4(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_100094184;
  }

  __break(1u);
  return result;
}

void (*sub_100090854(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1000908D4;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000908DC(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_100013608(&qword_1001D8088, &qword_1001D8080, &qword_100177120, &protocol conformance descriptor for [A]);
          for (i = 0; i != v6; ++i)
          {
            sub_1000033A8(&qword_1001D8080, &qword_100177120);
            v9 = sub_100090854(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_10005BBC4(0, &qword_1001D95A0, ARImageSensor_ptr);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100090A90(void *a1, uint64_t *a2)
{
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  if (v2 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v7 & 1;
}

uint64_t sub_100090B20(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Corners();
  v37 = *(v4 - 8);
  v38 = v4;
  v5 = __chkstk_darwin(v4);
  v36 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v35 - v7;
  v9 = type metadata accessor for RaycastAccuracy(0);
  v10 = __chkstk_darwin(v9);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = &v35 - v14;
  __chkstk_darwin(v13);
  v17 = (&v35 - v16);
  v18 = sub_1000033A8(&qword_1001D7FA8, &qword_100177540);
  v19 = __chkstk_darwin(v18 - 8);
  v21 = &v35 - v20;
  v22 = *(v19 + 56);
  sub_10009237C(a1, &v35 - v20, type metadata accessor for RaycastAccuracy);
  sub_10009237C(a2, &v21[v22], type metadata accessor for RaycastAccuracy);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        sub_100092314(v21, type metadata accessor for RaycastAccuracy);
        v24 = 1;
        return v24 & 1;
      }

LABEL_15:
      sub_10001370C(v21, &qword_1001D7FA8, &qword_100177540);
      v24 = 0;
      return v24 & 1;
    }

    sub_10009237C(v21, v12, type metadata accessor for RaycastAccuracy);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v26 = v36;
      v25 = v37;
      v27 = &v21[v22];
      v28 = v38;
      (*(v37 + 32))(v36, v27, v38);
      v24 = static Corners.== infix(_:_:)();
      v29 = *(v25 + 8);
      v29(v26, v28);
      v29(v12, v28);
      goto LABEL_10;
    }

LABEL_14:
    (*(v37 + 8))(v12, v38);
    goto LABEL_15;
  }

  if (EnumCaseMultiPayload)
  {
    sub_10009237C(v21, v15, type metadata accessor for RaycastAccuracy);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v30 = v37;
      v31 = &v21[v22];
      v32 = v38;
      (*(v37 + 32))(v8, v31, v38);
      v24 = static Corners.== infix(_:_:)();
      v33 = *(v30 + 8);
      v33(v8, v32);
      v33(v15, v32);
      goto LABEL_10;
    }

    v12 = v15;
    goto LABEL_14;
  }

  sub_10009237C(v21, v17, type metadata accessor for RaycastAccuracy);
  if (swift_getEnumCaseMultiPayload())
  {
    goto LABEL_15;
  }

  v24 = *v17 == *&v21[v22];
LABEL_10:
  sub_100092314(v21, type metadata accessor for RaycastAccuracy);
  return v24 & 1;
}

unint64_t sub_100090F40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1001D7FC0;
  if (!qword_1001D7FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D7FC0);
  }

  return result;
}

unint64_t sub_100090F94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1001D7FC8;
  if (!qword_1001D7FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D7FC8);
  }

  return result;
}

uint64_t sub_100090FE8()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_100091020()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100019774;

  return sub_10008F528(v2);
}

id sub_1000910DC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  URL._bridgeToObjectiveC()(__stack_chk_guard);
  v7 = v6;
  v16 = 0;
  v8 = [v3 initWithBaseConfiguration:a1 fileURL:v6 outError:&v16];

  v9 = v16;
  if (v8)
  {
    v10 = type metadata accessor for URL();
    v11 = *(*(v10 - 8) + 8);
    v12 = v9;
    v11(a2, v10);
  }

  else
  {
    v13 = v16;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v14 = type metadata accessor for URL();
    (*(*(v14 - 8) + 8))(a2, v14);
  }

  return v8;
}

id sub_100091230(void *a1, id a2)
{
  v3 = [a2 configuration];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 videoFormat];

    if (v5)
    {
      v6 = [a1 inputs];
      sub_10005BBC4(0, &qword_1001D81F0, AVCaptureInput_ptr);
      v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v7 >> 62)
      {
        goto LABEL_26;
      }

      for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
      {
        v9 = 0;
        v10 = v7 & 0xC000000000000001;
        v29 = v7;
        v30 = v7 & 0xFFFFFFFFFFFFFF8;
        v27 = v7 & 0xC000000000000001;
        v28 = v5;
        while (1)
        {
          if (v10)
          {
            v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v9 >= *(v30 + 16))
            {
              goto LABEL_25;
            }

            v12 = *(v7 + 8 * v9 + 32);
          }

          v13 = v12;
          v14 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            break;
          }

          objc_opt_self();
          v15 = swift_dynamicCastObjCClass();
          if (v15)
          {
            v11 = [v15 device];
            v16 = [v11 position];
            if (v16 == [v5 captureDevicePosition])
            {
              v17 = i;
              v18 = [v11 deviceType];
              v19 = [v5 captureDeviceType];
              v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v22 = v21;
              if (v20 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v22 == v23)
              {

LABEL_23:

                return v11;
              }

              v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if (v25)
              {
                goto LABEL_23;
              }

              v5 = v28;
              v7 = v29;
              i = v17;
              v10 = v27;
            }

            else
            {
            }
          }

          else
          {
            v11 = v13;
          }

          ++v9;
          if (v14 == i)
          {
            goto LABEL_27;
          }
        }

        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        ;
      }

LABEL_27:
    }
  }

  return 0;
}

BOOL sub_1000914FC(_BOOL8 result)
{
  v1 = 0;
  v2 = 0;
  v3 = 1 << *(result + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(result + 64);
  v6 = (v3 + 63) >> 6;
  while (v5)
  {
    v7 = v1;
LABEL_10:
    v8 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v9 = *(*(result + 56) + ((v7 << 9) | (8 * v8)));
    v10 = __OFADD__(v2, v9);
    v2 += v9;
    if (v10)
    {
      __break(1u);
      return v2 > 0;
    }
  }

  while (1)
  {
    v7 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      break;
    }

    if (v7 >= v6)
    {
      return v2 > 0;
    }

    v5 = *(result + 64 + 8 * v7);
    ++v1;
    if (v5)
    {
      v1 = v7;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10009159C(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_17;
  }

  while (1)
  {
    sub_10005BBC4(0, &qword_1001D95A0, ARImageSensor_ptr);
    sub_10008BB9C(&unk_1001D8070, &qword_1001D95A0, ARImageSensor_ptr, &protocol conformance descriptor for NSObject);
    result = Set.init(minimumCapacity:)();
    v10 = result;
    if (v2)
    {
      break;
    }

    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      return result;
    }

LABEL_6:
    v6 = 0;
    v2 = a1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v6 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v7 = *(a1 + 8 * v6 + 32);
      }

      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      sub_1000AEDDC(&v9, v7);

      ++v6;
      if (v8 == v4)
      {
        return v10;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    _CocoaArrayWrapper.endIndex.getter();
  }

  v5 = result;
  v4 = _CocoaArrayWrapper.endIndex.getter();
  result = v5;
  if (v4)
  {
    goto LABEL_6;
  }

  return result;
}

uint64_t sub_100091708(uint64_t a1)
{
  v2 = type metadata accessor for DetectionRequest();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v16 - v7;
  v9 = *(a1 + 16);
  sub_100090580(&qword_1001D8240, &type metadata accessor for DetectionRequest, &protocol conformance descriptor for DetectionRequest);
  result = Set.init(minimumCapacity:)();
  v17 = result;
  if (v9)
  {
    v13 = *(v3 + 16);
    v11 = v3 + 16;
    v12 = v13;
    v14 = a1 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v15 = *(v11 + 56);
    do
    {
      v12(v6, v14, v2);
      sub_1000AF304(v8, v6);
      (*(v11 - 8))(v8, v2);
      v14 += v15;
      --v9;
    }

    while (v9);
    return v17;
  }

  return result;
}

void sub_1000918A4(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC6Tamale14ARCameraSource_arConfiguration);
  if (!v2)
  {
    goto LABEL_13;
  }

  v3 = v1;
  v4 = v2;
  v5 = sub_10008D288();
  if (__OFADD__(sub_10008D288(), 1))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    return;
  }

  isa = Int._bridgeToObjectiveC()().super.super.isa;
  objc_setAssociatedObject(v4, v4, isa, 1);

  if (v5 > 2)
  {
    swift_errorRetain();
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v28 = v17;
      *v16 = 134218242;
      *(v16 + 4) = v5;
      *(v16 + 12) = 2080;
      swift_getErrorValue();
      v18 = Error.localizedDescription.getter();
      v20 = sub_1000E0FE0(v18, v19, &v28);

      *(v16 + 14) = v20;
      _os_log_impl(&_mh_execute_header, v14, v15, "Retried current configuration %ld. Error state for %s", v16, 0x16u);
      sub_100006B44(v17);
    }

    v28 = 0;
    v29 = 0xE000000000000000;
    sub_1000033A8(&qword_1001D57D0, &qword_100173700);
    _print_unlocked<A, B>(_:_:)();
    v21._countAndFlagsBits = 32;
    v21._object = 0xE100000000000000;
    String.append(_:)(v21);
    swift_getErrorValue();
    v22._countAndFlagsBits = Error.localizedDescription.getter();
    String.append(_:)(v22);

    v23 = v29;
    v24 = v3 + OBJC_IVAR____TtC6Tamale14ARCameraSource_runState;
    v25 = *(v3 + OBJC_IVAR____TtC6Tamale14ARCameraSource_runState);
    v26 = *(v3 + OBJC_IVAR____TtC6Tamale14ARCameraSource_runState + 8);
    *v24 = v28;
    *(v24 + 8) = v23;
    v27 = *(v24 + 16);
    *(v24 + 16) = 2;
    sub_1000616E4(v25, v26, v27);
    sub_1000731B8();
  }

  else
  {
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 134217984;
      *(v9 + 4) = v5;
      _os_log_impl(&_mh_execute_header, v7, v8, "Retrying because current configuration has errored and retried %ld times", v9, 0xCu);
    }

    v10 = v3 + OBJC_IVAR____TtC6Tamale14ARCameraSource_runState;
    v11 = *(v3 + OBJC_IVAR____TtC6Tamale14ARCameraSource_runState);
    v12 = *(v3 + OBJC_IVAR____TtC6Tamale14ARCameraSource_runState + 8);
    *v10 = xmmword_100176B50;
    v13 = *(v10 + 16);
    *(v10 + 16) = 0;
    sub_1000616E4(v11, v12, v13);
    sub_1000731B8();

    sub_100079EC0();
  }
}

void sub_100091BD0(void *a1)
{
  swift_getObjectType();
  v3 = [a1 state];
  if (v3 == 3)
  {
    v4 = 2;
  }

  else
  {
    if (qword_1001D31A0 != -1)
    {
      v3 = swift_once();
    }

    __chkstk_darwin(v3);
    sub_1000033A8(&qword_1001D8028, &qword_100177110);
    OS_dispatch_queue.sync<A>(execute:)();
    v4 = v10 != 2 && (v10 & 1) != 0;
  }

  if (v4 != *(v1 + OBJC_IVAR____TtC6Tamale14ARCameraSource_localizationState))
  {
    v5 = v4;
    *(v1 + OBJC_IVAR____TtC6Tamale14ARCameraSource_localizationState) = v4;
    v6 = v1 + OBJC_IVAR____TtC6Tamale14ARCameraSource_runState;
    v7 = *(v1 + OBJC_IVAR____TtC6Tamale14ARCameraSource_runState);
    v8 = *(v1 + OBJC_IVAR____TtC6Tamale14ARCameraSource_runState + 8);
    *v6 = v5;
    *(v6 + 8) = 0;
    v9 = *(v6 + 16);
    *(v6 + 16) = 1;
    sub_1000616E4(v7, v8, v9);
    sub_1000731B8();
  }
}

double sub_100091D3C()
{
  v0 = type metadata accessor for DispatchWorkItemFlags();
  v31 = *(v0 - 8);
  __chkstk_darwin(v0);
  v2 = v24 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for DispatchQoS();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchTime();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v24 - v12;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = *&Strong[OBJC_IVAR____TtC6Tamale14ARCameraSource_frameQueue];
    v28 = Strong;
    v29 = v16;
    static DispatchTime.now()();
    v27 = v13;
    + infix(_:_:)();
    v17 = *(v8 + 8);
    v24[1] = v8 + 8;
    v30 = v17;
    v17(v11, v7);
    v18 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_100092194;
    aBlock[5] = v18;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000B5F04;
    aBlock[3] = &unk_1001C21B8;
    v25 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    v32 = _swiftEmptyArrayStorage;
    sub_100090580(&qword_1001D6B10, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    v26 = v7;
    v19 = v0;
    v20 = v31;
    v24[0] = v3;
    sub_1000033A8(&unk_1001D8010, &qword_1001710E0);
    v21 = v6;
    sub_100013608(&qword_1001D6B20, &unk_1001D8010, &qword_1001710E0, &protocol conformance descriptor for [A]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v22 = v27;
    v23 = v25;
    OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
    _Block_release(v23);
    (*(v20 + 8))(v2, v19);
    (*(v4 + 8))(v21, v24[0]);
    v30(v22, v26);
  }

  return result;
}

uint64_t sub_10009215C()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000921A0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100019774;

  return sub_10007A8D4(a1, v4, v5, v6);
}

uint64_t sub_100092260(uint64_t a1, unint64_t a2)
{
  if (a2 >= 5)
  {
  }

  return result;
}

double sub_100092274(uint64_t a1, unint64_t a2)
{
  if (a2 >= 5)
  {
  }

  return result;
}

uint64_t sub_100092288()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_100092314(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10009237C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000923E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_10009244C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1001D80C8;
  if (!qword_1001D80C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D80C8);
  }

  return result;
}

uint64_t sub_1000924A0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1000033A8(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

BOOL sub_100092534(uint64_t a1)
{
  v1 = *(a1 + 8);
  CameraSourceFrame.timestamp.getter();
  return v1 == v2;
}

double sub_10009257C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_1000925B0()
{
  v1 = *(v0 + 24);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 64) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

BOOL sub_100092700(uint64_t a1)
{
  v1 = *(a1 + 8);
  CameraSourceFrame.timestamp.getter();
  return v1 == v2;
}

uint64_t sub_100092748()
{

  return swift_deallocObject();
}

uint64_t sub_100092788()
{
  v1 = sub_1000033A8(&unk_1001D8190, &qword_1001771E0);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_100092858()
{
  v1 = *(sub_1000033A8(&unk_1001D8190, &qword_1001771E0) - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_10007F508(v2, v3);
}

double sub_1000928CC(uint64_t a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_10007F8D0(a1, v4, v5);
}

uint64_t sub_100092940()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

double sub_100092A04()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_10007FCD4(v2, v3);
}

uint64_t sub_100092A68()
{

  return swift_deallocObject();
}

uint64_t sub_100092AAC()
{

  return swift_deallocObject();
}

uint64_t sub_100092AFC()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_100092B34()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100019774;

  return sub_10008E4FC();
}

uint64_t sub_100092BF0@<X0>(_BYTE *a1@<X8>)
{
  result = (*(v1 + 16))();
  if (!v2)
  {
    *a1 = result & 1;
  }

  return result;
}

uint64_t sub_100092C28()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

unint64_t sub_100092C68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1001D81D0;
  if (!qword_1001D81D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D81D0);
  }

  return result;
}

uint64_t sub_100092CC4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100019774;

  return sub_10008E3E8();
}

uint64_t sub_100092D70(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000033A8(&qword_1001D8020, &qword_1001728D0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_100092DE0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

id sub_100092EBC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 systemPressureState];
  *a2 = result;
  return result;
}

uint64_t sub_100092F1C(void (*a1)(void, __n128), uint64_t a2)
{

  (a1)(*(v2 + 24));

  return swift_deallocObject();
}

uint64_t sub_100092F80()
{

  return swift_deallocObject();
}

uint64_t sub_100092FCC()
{

  return swift_deallocObject();
}

uint64_t sub_100093014()
{
  v1 = type metadata accessor for CameraControllerConfiguration(0);
  v2 = (*(*(v1 - 1) + 80) + 40) & ~*(*(v1 - 1) + 80);
  swift_unknownObjectRelease();

  v3 = v0 + v2;
  v4 = type metadata accessor for SaliencyStreamConfiguration();
  (*(*(v4 - 8) + 8))(v0 + v2, v4);
  v5 = v1[14];
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  if (!v8(v0 + v2 + v5, 1, v6))
  {
    (*(v7 + 8))(v3 + v5, v6);
  }

  v9 = v1[17];
  if (!v8(v3 + v9, 1, v6))
  {
    (*(v7 + 8))(v3 + v9, v6);
  }

  v10 = v1[21];
  if (!v8(v3 + v10, 1, v6))
  {
    (*(v7 + 8))(v3 + v10, v6);
  }

  return swift_deallocObject();
}

uint64_t sub_10009321C(uint64_t a1)
{
  v4 = *(type metadata accessor for CameraControllerConfiguration(0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100019340;

  return sub_100074344(a1, v6, v7, v8, v1 + v5, v9);
}

uint64_t sub_10009334C()
{
  v1 = type metadata accessor for CameraControllerConfiguration(0);
  v2 = (*(*(v1 - 1) + 80) + 24) & ~*(*(v1 - 1) + 80);

  v3 = v0 + v2;
  v4 = type metadata accessor for SaliencyStreamConfiguration();
  (*(*(v4 - 8) + 8))(v0 + v2, v4);
  v5 = v1[14];
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  if (!v8(v0 + v2 + v5, 1, v6))
  {
    (*(v7 + 8))(v3 + v5, v6);
  }

  v9 = v1[17];
  if (!v8(v3 + v9, 1, v6))
  {
    (*(v7 + 8))(v3 + v9, v6);
  }

  v10 = v1[21];
  if (!v8(v3 + v10, 1, v6))
  {
    (*(v7 + 8))(v3 + v10, v6);
  }

  return swift_deallocObject();
}

void sub_10009354C()
{
  v1 = *(type metadata accessor for CameraControllerConfiguration(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_1000757C4(v3, v0 + v2, v4);
}

uint64_t sub_1000935DC()
{
  v1 = type metadata accessor for CameraControllerConfiguration(0);
  v2 = (*(*(v1 - 1) + 80) + 24) & ~*(*(v1 - 1) + 80);

  v3 = v0 + v2;
  v4 = type metadata accessor for SaliencyStreamConfiguration();
  (*(*(v4 - 8) + 8))(v0 + v2, v4);
  v5 = v1[14];
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  if (!v8(v0 + v2 + v5, 1, v6))
  {
    (*(v7 + 8))(v3 + v5, v6);
  }

  v9 = v1[17];
  if (!v8(v3 + v9, 1, v6))
  {
    (*(v7 + 8))(v3 + v9, v6);
  }

  v10 = v1[21];
  if (!v8(v3 + v10, 1, v6))
  {
    (*(v7 + 8))(v3 + v10, v6);
  }

  return swift_deallocObject();
}

double sub_1000937DC(int a1, uint64_t a2)
{
  v5 = *(type metadata accessor for CameraControllerConfiguration(0) - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *(v2 + 16);

  return sub_100074F30(a1, a2, v8, v2 + v6, v7);
}

uint64_t sub_10009388C()
{
  v1 = type metadata accessor for CameraControllerConfiguration(0);
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);

  v3 = v0 + v2;
  v4 = type metadata accessor for SaliencyStreamConfiguration();
  (*(*(v4 - 8) + 8))(v0 + v2, v4);
  v5 = v1[14];
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  if (!v8(v0 + v2 + v5, 1, v6))
  {
    (*(v7 + 8))(v3 + v5, v6);
  }

  v9 = v1[17];
  if (!v8(v3 + v9, 1, v6))
  {
    (*(v7 + 8))(v3 + v9, v6);
  }

  v10 = v1[21];
  if (!v8(v3 + v10, 1, v6))
  {
    (*(v7 + 8))(v3 + v10, v6);
  }

  return swift_deallocObject();
}

void sub_100093A9C()
{
  v1 = *(type metadata accessor for CameraControllerConfiguration(0) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + 16);
  v5 = *(v0 + v3);
  v6 = *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));
  v7 = *(v0 + 24);

  sub_100075338(v4, v7, v0 + v2, v5, v6);
}

void sub_100093B64()
{
  v0 = qword_1001E6870;
  v1 = &stru_1001C2D90;
  if (v0 != -1)
  {
    dispatch_once(&qword_1001E6870, &stru_1001C2D90);
  }
}

uint64_t sub_100093BFC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100019774;

  return sub_10007B5C4(a1, v4, v5, v6);
}

__n128 sub_100093CB0(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_100093CC4(uint64_t *a1, int a2)
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

uint64_t sub_100093D0C(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for ARCameraSource.Tracker.AnchorOperationStatistics.OperationType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ARCameraSource.Tracker.AnchorOperationStatistics.OperationType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100093EB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1001D8248;
  if (!qword_1001D8248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D8248);
  }

  return result;
}

double sub_100093F04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 <= 2u)
  {
  }

  return result;
}

void sub_100093F50(id a1)
{
  v1 = NSClassFromString(@"ARImageSensor");
  if (v1)
  {
    v2 = v1;
    InstanceMethod = class_getInstanceMethod(v1, "captureOutput:willCapturePhotoForResolvedSettings:");
    v4 = objc_opt_class();
    v5 = class_getInstanceMethod(v4, "tamale_ARImageSensor_swizzled_captureOutput:willCapturePhotoForResolvedSettings:");
    if (v5)
    {
      v6 = v5;
      if (InstanceMethod)
      {
        TypeEncoding = method_getTypeEncoding(InstanceMethod);
        v8 = method_getTypeEncoding(v6);
        if (!TypeEncoding || (v9 = v8, !strcmp(TypeEncoding, v8)))
        {
          qword_1001E6878 = method_getImplementation(InstanceMethod);

          method_exchangeImplementations(InstanceMethod, v6);
        }

        else
        {
          NSLog(@"[ARImageSensor] Method signature mismatch - original: %s, swizzled: %s - aborting swizzling for safety", TypeEncoding, v9);
        }
      }

      else
      {
        method_getTypeEncoding(v5);
        Implementation = method_getImplementation(v6);
        v11 = method_getTypeEncoding(v6);
        if (!class_addMethod(v2, "captureOutput:willCapturePhotoForResolvedSettings:", Implementation, v11))
        {
          NSLog(@"[ARImageSensor] Failed to add willCapturePhotoForResolvedSettings method - swizzling failed");
        }
      }
    }

    else
    {
      NSLog(@"[ARImageSensor] Swizzled method not found in NSObject category - swizzling failed");
    }
  }

  else
  {
    NSLog(@"[ARImageSensor] Class not found - swizzling unavailable, continuing with graceful degradation");
  }
}

uint64_t VKCQuickActionType.debugDescription.getter(uint64_t a1)
{
  if (a1 <= 1)
  {
    if (!a1)
    {
      return 0x74616C736E617274;
    }

    if (a1 == 1)
    {
      return 0x747865546576696CLL;
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        return 0x6574654461746164;
      case 3:
        return 0x65536C6175736976;
      case 4:
        return 0x6C6C4179706F63;
    }
  }

  return 0x6E776F6E6B6E75;
}

uint64_t sub_1000942E8()
{
  v1 = *v0;
  if (*v0 <= 1)
  {
    if (!v1)
    {
      return 0x74616C736E617274;
    }

    if (v1 == 1)
    {
      return 0x747865546576696CLL;
    }
  }

  else
  {
    switch(v1)
    {
      case 2:
        return 0x6574654461746164;
      case 3:
        return 0x65536C6175736976;
      case 4:
        return 0x6C6C4179706F63;
    }
  }

  return 0x6E776F6E6B6E75;
}

uint64_t VKDataDetectorTypes.debugDescription.getter(Swift::UInt a1)
{
  if (!a1)
  {
    return 1701736302;
  }

  v2 = sub_100097800(&off_1001BECF0);
  sub_1000033A8(&qword_1001D82B0, &unk_1001773A0);
  result = swift_arrayDestroy();
  if (v2[2])
  {
    result = sub_100095F28(a1);
    if (v4)
    {
      v5 = *(v2[7] + 16 * result);

      return v5;
    }
  }

  v6 = 0;
  v7 = 1 << *(v2 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & v2[8];
  v10 = (v7 + 63) >> 6;
  v11 = _swiftEmptyArrayStorage;
  if (!v9)
  {
    goto LABEL_10;
  }

  do
  {
LABEL_8:
    while (1)
    {
      v12 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v13 = v12 | (v6 << 6);
      if ((*(v2[6] + 8 * v13) & ~a1) == 0)
      {
        break;
      }

      if (!v9)
      {
        goto LABEL_10;
      }
    }

    v15 = (v2[7] + 16 * v13);
    v17 = *v15;
    v16 = v15[1];

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1000952C0(0, *(v11 + 2) + 1, 1, v11);
      v11 = result;
    }

    v18 = *(v11 + 2);
    v19 = *(v11 + 3);
    v20 = v18 + 1;
    if (v18 >= v19 >> 1)
    {
      v27 = v18 + 1;
      v22 = v11;
      v23 = *(v11 + 2);
      result = sub_1000952C0((v19 > 1), v18 + 1, 1, v22);
      v18 = v23;
      v20 = v27;
      v11 = result;
    }

    *(v11 + 2) = v20;
    v21 = &v11[16 * v18];
    *(v21 + 4) = v17;
    *(v21 + 5) = v16;
  }

  while (v9);
LABEL_10:
  while (1)
  {
    v14 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (v14 >= v10)
    {

      v24 = objc_opt_self();
      isa = Array._bridgeToObjectiveC()().super.isa;

      v26 = [v24 localizedStringByJoiningStrings:isa];

      v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      return v5;
    }

    v9 = v2[v14 + 8];
    ++v6;
    if (v9)
    {
      v6 = v14;
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

Swift::Int sub_100094660()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1000946D4()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

id sub_100094858()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DataDetectorCacheEntry();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000948D8()
{
  v0 = type metadata accessor for Date();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v4 = aBlock - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v6 = aBlock - v5;
  Date.init()();
  v7 = objc_opt_self();
  (*(v1 + 16))(v4, v6, v0);
  v8 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v9 = swift_allocObject();
  (*(v1 + 32))(v9 + v8, v4, v0);
  aBlock[4] = sub_1000983F8;
  aBlock[5] = v9;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000B5F04;
  aBlock[3] = &unk_1001C2E00;
  v10 = _Block_copy(aBlock);

  [v7 preWarmIfNecessaryWithCompletion:v10];
  _Block_release(v10);
  return (*(v1 + 8))(v6, v0);
}

uint64_t sub_100094AC8(uint64_t a1)
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  Date.init()();
  Date.timeIntervalSince(_:)();
  v10 = v9;
  (*(v6 + 8))(v8, v5);
  static Log.vision.getter();
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 134217984;
    *(v13 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v11, v12, "VKCDataDetectorInfo.preWarmIfNecessary took %f seconds", v13, 0xCu);
  }

  return (*(v2 + 8))(v4, v1);
}

char *sub_100094CC8(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000033A8(&qword_1001D65F8, &qword_1001756A8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100094DE4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000033A8(&qword_1001D8328, &qword_100177500);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void *sub_100094F88(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    sub_1000033A8(a5, a6);
    v14 = swift_allocObject();
    v15 = j__malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 25;
    }

    v14[2] = v12;
    v14[3] = 2 * (v16 >> 3);
  }

  else
  {
    v14 = _swiftEmptyArrayStorage;
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 8 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    a7(0);
    swift_arrayInitWithCopy();
  }

  return v14;
}

char *sub_1000950B8(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000033A8(&qword_1001D63E8, &qword_100175350);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

char *sub_1000951BC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000033A8(&qword_1001D8358, &unk_100177530);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_1000952C0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000033A8(&qword_1001D6310, &qword_1001775B0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1000953CC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000033A8(&qword_1001D6330, &qword_1001752E8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_100095520(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000033A8(&qword_1001D8350, &qword_100177528);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1000956A4(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_1000033A8(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_100095880(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000033A8(&qword_1001D8398, &qword_100177588);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void *sub_100095984(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000033A8(&qword_1001D8330, &qword_100177508);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1000033A8(&qword_1001D8338, &qword_100177510);
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_100095AB8(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return sub_100096144(a1, v2);
}

unint64_t sub_100095B4C(uint64_t a1)
{
  type metadata accessor for UUID();
  sub_100098458(&unk_1001D9550, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return sub_1000963C8(a1, v2, &type metadata accessor for UUID, &qword_1001D80D0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
}

unint64_t sub_100095C20(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_100096248(a1, a2, v4);
}

unint64_t sub_100095C98(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_100096300(a1, v4);
}

unint64_t sub_100095CDC(uint64_t a1)
{
  type metadata accessor for CVDetection.DetectionType();
  sub_100098458(&qword_1001D8388, &type metadata accessor for CVDetection.DetectionType, &protocol conformance descriptor for CVDetection.DetectionType);
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return sub_1000963C8(a1, v2, &type metadata accessor for CVDetection.DetectionType, &qword_1001D8390, &type metadata accessor for CVDetection.DetectionType, &protocol conformance descriptor for CVDetection.DetectionType);
}

unint64_t sub_100095DB0(uint64_t a1)
{
  v2 = v1;
  v4 = NSObject._rawHashValue(seed:)(*(v2 + 40));
  return sub_100096A94(a1, v4, &qword_1001D81C0, NSNumber_ptr);
}

unint64_t sub_100095E00(uint64_t a1)
{
  Hasher.init(_seed:)();
  sub_10007DAC4(v4);
  v2 = Hasher._finalize()();

  return sub_100096568(a1, v2);
}

unint64_t sub_100095E6C(uint64_t a1)
{
  v1 = a1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  v2 = Hasher._finalize()();

  return sub_100096A24(v1, v2);
}

unint64_t sub_100095ED8(uint64_t a1)
{
  v2 = v1;
  v4 = NSObject._rawHashValue(seed:)(*(v2 + 40));
  return sub_100096A94(a1, v4, &qword_1001D7D58, ARAnchor_ptr);
}

unint64_t sub_100095F28(Swift::UInt a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  v2 = Hasher._finalize()();

  return sub_100096B60(a1, v2);
}

unint64_t sub_100095F94(uint64_t a1)
{
  Hasher.init(_seed:)();
  type metadata accessor for CFString(0);
  sub_100098458(&qword_1001D8300, type metadata accessor for CFString, &unk_100170158);
  _CFObject.hash(into:)();
  v2 = Hasher._finalize()();

  return sub_100096BCC(a1, v2);
}

unint64_t sub_100096048(uint64_t a1)
{
  v2 = static Hasher._hash(seed:_:)();

  return sub_100096B60(a1, v2);
}

unint64_t sub_10009608C(uint64_t a1)
{
  Hasher.init(_seed:)();
  Color.hash(into:)();
  v2 = Hasher._finalize()();

  return sub_100096CD8(a1, v2);
}

unint64_t sub_1000960F8(double a1)
{
  v2 = static Hasher._hash(seed:_:)();

  return sub_100096D90(v2, a1);
}

unint64_t sub_100096144(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = v7;
      if (v6 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v8 == v9)
      {
        break;
      }

      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_100096248(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_100096300(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_100097BE4(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_10005BC0C(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1000963C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v24 = a5;
  v25 = a6;
  v23 = a4;
  v21[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v21 - v10;
  v22 = v6;
  v12 = -1 << *(v6 + 32);
  v13 = a2 & ~v12;
  v21[0] = v6 + 64;
  if ((*(v6 + 64 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    v17 = *(v9 + 16);
    v16 = v9 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    do
    {
      v15(v11, *(v22 + 48) + v18 * v13, v8);
      sub_100098458(v23, v24, v25);
      v19 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v16 - 8))(v11, v8);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
    }

    while (((*(v21[0] + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0);
  }

  return v13;
}

unint64_t sub_100096568(uint64_t a1, uint64_t a2)
{
  v52 = a1;
  v49 = type metadata accessor for Corners();
  v4 = *(v49 - 8);
  v5 = __chkstk_darwin(v49);
  v42 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v41 = &v40 - v7;
  v8 = sub_1000033A8(&qword_1001D7FA8, &qword_100177540);
  __chkstk_darwin(v8);
  v10 = &v40 - v9;
  v11 = type metadata accessor for RaycastAccuracy(0);
  v12 = __chkstk_darwin(v11);
  v47 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v16 = &v40 - v15;
  v17 = __chkstk_darwin(v14);
  v46 = (&v40 - v18);
  __chkstk_darwin(v17);
  v21 = &v40 - v20;
  v22 = v2 + 64;
  v53 = v2;
  v23 = -1 << *(v2 + 32);
  v24 = a2 & ~v23;
  if ((*(v2 + 64 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24))
  {
    v25 = *(v19 + 72);
    v50 = ~v23;
    v51 = v25;
    v48 = (v4 + 8);
    v43 = (v4 + 32);
    v44 = v2 + 64;
    v45 = v8;
    v40 = v16;
    while (1)
    {
      sub_100097D90(*(v53 + 48) + v51 * v24, v21);
      v26 = *(v8 + 48);
      sub_100097D90(v21, v10);
      sub_100097D90(v52, &v10[v26]);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload > 1)
      {
        break;
      }

      if (EnumCaseMultiPayload)
      {
        sub_100097D90(v10, v16);
        v28 = v16;
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v36 = v41;
          v30 = v49;
          (*v43)(v41, &v10[v26], v49);
          v32 = static Corners.== infix(_:_:)();
          v33 = *v48;
          v37 = v36;
          v8 = v45;
          (*v48)(v37, v30);
          sub_100097DF4(v21);
          v35 = v16;
          goto LABEL_16;
        }

LABEL_3:
        sub_100097DF4(v21);
        (*v48)(v28, v49);
        goto LABEL_4;
      }

      sub_100097DF4(v21);
      sub_100097D90(v10, v46);
      if (!swift_getEnumCaseMultiPayload())
      {
        if (*v46 == *&v10[v26])
        {
          goto LABEL_19;
        }

        goto LABEL_17;
      }

LABEL_4:
      sub_100097E50(v10);
LABEL_5:
      v24 = (v24 + 1) & v50;
      if (((*(v22 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
      {
        return v24;
      }
    }

    if (EnumCaseMultiPayload != 2)
    {
      sub_100097DF4(v21);
      if (swift_getEnumCaseMultiPayload() == 3)
      {
LABEL_19:
        sub_100097DF4(v10);
        return v24;
      }

      goto LABEL_4;
    }

    v28 = v47;
    sub_100097D90(v10, v47);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v29 = v42;
      v30 = v49;
      (*v43)(v42, &v10[v26], v49);
      v31 = v47;
      v32 = static Corners.== infix(_:_:)();
      v33 = *v48;
      v34 = v29;
      v8 = v45;
      (*v48)(v34, v30);
      sub_100097DF4(v21);
      v35 = v31;
      v16 = v40;
LABEL_16:
      v38 = v30;
      v22 = v44;
      v33(v35, v38);
      if (v32)
      {
        goto LABEL_19;
      }

LABEL_17:
      sub_100097DF4(v10);
      goto LABEL_5;
    }

    goto LABEL_3;
  }

  return v24;
}

unint64_t sub_100096A24(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_100096A94(uint64_t a1, uint64_t a2, unint64_t *a3, void *a4)
{
  v5 = -1 << *(v4 + 32);
  v6 = a2 & ~v5;
  if ((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    sub_10005BBC4(0, a3, a4);
    do
    {
      v8 = *(*(v4 + 48) + 8 * v6);
      v9 = static NSObject.== infix(_:_:)();

      if (v9)
      {
        break;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

unint64_t sub_100096B60(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_100096BCC(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for CFString(0);
    sub_100098458(&qword_1001D8300, type metadata accessor for CFString, &unk_100170158);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = static _CFObject.== infix(_:_:)();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_100096CD8(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {

      v6 = static Color.== infix(_:_:)();

      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_100096D90(uint64_t a1, double a2)
{
  v3 = -1 << *(v2 + 32);
  result = a1 & ~v3;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v5 = ~v3;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a2)
      {
        break;
      }

      result = (result + 1) & v5;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_100096DF8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000033A8(&qword_1001D8318, &qword_1001774E8);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_1000138BC(v4, &v11, &qword_1001D8320, &unk_1001774F0);
      v5 = v11;
      result = sub_100095AB8(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_10005BB58(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100096F20(uint64_t a1)
{
  v2 = sub_1000033A8(&qword_1001D83A0, &qword_100177598);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_1000033A8(&qword_1001D9C40, &unk_1001775A0);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1000138BC(v9, v5, &qword_1001D83A0, &qword_100177598);
      result = sub_100095B4C(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for UUID();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7];
      v17 = type metadata accessor for CVTrackedDetection.Prediction();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v13, &v5[v8], v17);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100097140(uint64_t a1)
{
  v2 = sub_1000033A8(&qword_1001D8340, &qword_100177518);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_1000033A8(&qword_1001D8348, &qword_100177520);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1000138BC(v9, v5, &qword_1001D8340, &qword_100177518);
      result = sub_100095B4C(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for UUID();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100097328(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000033A8(&qword_1001D8380, &unk_100177570);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_1000138BC(v4, &v13, &qword_1001D8230, &qword_1001772B0);
      v5 = v13;
      v6 = v14;
      result = sub_100095C20(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_10005BB58(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100097458(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000033A8(&qword_1001D8370, &qword_100177560);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_100095DB0(v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v7;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100097550(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000033A8(&qword_1001D8368, &qword_100177558);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 8);
      v6 = *i;
      result = sub_100095E6C(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100097630(uint64_t a1)
{
  v2 = sub_1000033A8(&qword_1001D8360, &qword_100177548);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_1000033A8(&unk_1001D9C70, &qword_100177550);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1000138BC(v9, v5, &qword_1001D8360, &qword_100177548);
      result = sub_100095E00(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for RaycastAccuracy(0);
      result = sub_100097EB8(v5, v14 + *(*(v15 - 8) + 72) * v13);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

void *sub_100097800(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  sub_1000033A8(&qword_1001D83A8, &qword_1001775B8);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = sub_100095F28(v4);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v9 = v7;
  result = v6;
  v11 = (a1 + 9);
  while (1)
  {
    *(v3 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    *(v3[6] + 8 * v9) = v4;
    v12 = (v3[7] + 16 * v9);
    *v12 = v5;
    v12[1] = result;
    v13 = v3[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v3[2] = v15;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v16 = v11 + 3;
    v4 = *(v11 - 2);
    v5 = *(v11 - 1);
    v17 = *v11;

    v9 = sub_100095F28(v4);
    v11 = v16;
    result = v17;
    if (v18)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_100097980(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000033A8(&qword_1001D8308, &qword_1001774D8);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_1000138BC(v4, v13, &qword_1001D8310, &qword_1001774E0);
      result = sub_100095C98(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_10005BB58(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100097ABC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000033A8(&qword_1001D82F8, &qword_1001774C8);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_1000138BC(v4, &v11, &unk_1001D9530, &qword_1001774D0);
      v5 = v11;
      result = sub_100095F94(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_10005BB58(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

void *sub_100097C40(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  sub_1000033A8(&qword_1001D9CA0, &qword_100178A30);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = *(a1 + 60);
  v9 = sub_1000960F8(v4);
  if (v10)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v11 = v9;
  result = v5;
  v13 = (a1 + 92);
  while (1)
  {
    *(v3 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v11;
    *(v3[6] + 8 * v11) = v4;
    v14 = v3[7] + 24 * v11;
    *v14 = result;
    *(v14 + 8) = v6;
    *(v14 + 16) = v7;
    *(v14 + 20) = v8 & 1;
    v15 = v3[2];
    v16 = __OFADD__(v15, 1);
    v17 = v15 + 1;
    if (v16)
    {
      break;
    }

    v3[2] = v17;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v18 = v13 + 32;
    v4 = *(v13 - 28);
    v19 = *(v13 - 20);
    v6 = *(v13 - 12);
    v7 = *(v13 - 1);
    v8 = *v13;

    v11 = sub_1000960F8(v4);
    v13 = v18;
    result = v19;
    if (v20)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100097D90(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RaycastAccuracy(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100097DF4(uint64_t a1)
{
  v2 = type metadata accessor for RaycastAccuracy(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100097E50(uint64_t a1)
{
  v2 = sub_1000033A8(&qword_1001D7FA8, &qword_100177540);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100097EB8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RaycastAccuracy(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100097F1C()
{
  v24 = type metadata accessor for DispatchWorkItemFlags();
  v27 = *(v24 - 8);
  __chkstk_darwin(v24);
  v23 = &v21 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1 = type metadata accessor for DispatchQoS();
  v25 = *(v1 - 8);
  v26 = v1;
  __chkstk_darwin(v1);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DispatchTime();
  v22 = v4;
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v21 - v9;
  v11 = type metadata accessor for DispatchQoS.QoSClass();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005BBC4(0, &qword_1001D6B40, OS_dispatch_queue_ptr);
  (*(v12 + 104))(v14, enum case for DispatchQoS.QoSClass.default(_:), v11);
  v15 = static OS_dispatch_queue.global(qos:)();
  (*(v12 + 8))(v14, v11);
  static DispatchTime.now()();
  + infix(_:_:)();
  v16 = *(v5 + 8);
  v16(v8, v4);
  aBlock[4] = sub_1000948D8;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000B5F04;
  aBlock[3] = &unk_1001C2DB0;
  v17 = _Block_copy(aBlock);
  static DispatchQoS.unspecified.getter();
  v28 = _swiftEmptyArrayStorage;
  sub_100098458(&qword_1001D6B10, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000033A8(&unk_1001D8010, &qword_1001710E0);
  sub_1000150B8();
  v19 = v23;
  v18 = v24;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v17);

  (*(v27 + 8))(v19, v18);
  (*(v25 + 8))(v3, v26);
  return (v16)(v10, v22);
}

double sub_100098358(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_100098370()
{
  v1 = type metadata accessor for Date();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1000983F8()
{
  v1 = *(type metadata accessor for Date() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_100094AC8(v2);
}

uint64_t sub_100098458(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000984BC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1000033A8(&qword_1001D83C0, &qword_100177660);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[5]);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = sub_1000033A8(&qword_1001D83C8, &qword_100177668);
    v14 = *(v13 - 8);
    if (*(v14 + 84) == a2)
    {
      v8 = v13;
      v9 = *(v14 + 48);
      v10 = a1 + a3[6];
      goto LABEL_3;
    }

    v15 = sub_1000033A8(&qword_1001D83D0, &qword_100177670);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[7];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_100098668(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_1000033A8(&qword_1001D83C0, &qword_100177660);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[5]) = (a2 - 1);
    return result;
  }

  v13 = sub_1000033A8(&qword_1001D83C8, &qword_100177668);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[6];
    goto LABEL_3;
  }

  v15 = sub_1000033A8(&qword_1001D83D0, &qword_100177670);
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[7];

  return v16(v17, a2, a2, v15);
}

uint64_t type metadata accessor for ConfigList(uint64_t a1)
{
  result = qword_1001D8430;
  if (!qword_1001D8430)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10009884C(uint64_t a1)
{
  sub_100098954(319, &qword_1001D8440, type metadata accessor for AppConfiguration);
  if (v1 <= 0x3F)
  {
    type metadata accessor for CameraControllerConfiguration.Storage();
    if (v2 <= 0x3F)
    {
      sub_100098954(319, &qword_1001D8448, &type metadata accessor for VIUIConfiguration);
      if (v3 <= 0x3F)
      {
        sub_100098954(319, &unk_1001D8450, &type metadata accessor for FocusSelectionConfiguration);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_100098954(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Binding();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1000989C4@<X0>(char *a1@<X8>)
{
  v143 = a1;
  v178 = sub_1000033A8(&qword_1001D8488, &qword_1001776E0);
  v199 = *(v178 - 8);
  v2 = __chkstk_darwin(v178);
  v181 = v142 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v161 = v142 - v4;
  v176 = sub_1000033A8(&qword_1001D8490, &qword_1001776E8);
  v198 = *(v176 - 8);
  v5 = __chkstk_darwin(v176);
  v180 = v142 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v175 = v142 - v7;
  v172 = sub_1000033A8(&qword_1001D8498, &qword_1001776F0);
  v197 = *(v172 - 8);
  v8 = __chkstk_darwin(v172);
  v179 = v142 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v173 = v142 - v10;
  v168 = sub_1000033A8(&qword_1001D84A0, &qword_1001776F8);
  v196 = *(v168 - 8);
  v11 = __chkstk_darwin(v168);
  v177 = v142 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v170 = v142 - v13;
  v14 = sub_1000033A8(&qword_1001D84A8, &qword_100177700);
  v194 = *(v14 - 8);
  v195 = v14;
  v15 = __chkstk_darwin(v14);
  v174 = v142 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v167 = v142 - v17;
  v166 = sub_1000033A8(&qword_1001D84B0, &qword_100177708);
  v193 = *(v166 - 8);
  v18 = __chkstk_darwin(v166);
  v171 = v142 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v165 = v142 - v20;
  v164 = sub_1000033A8(&qword_1001D84B8, &qword_100177710);
  v192 = *(v164 - 8);
  v21 = __chkstk_darwin(v164);
  v169 = v142 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v163 = v142 - v23;
  v187 = sub_1000033A8(&qword_1001D57B8, &qword_1001736E0);
  Description = v187[-1].Description;
  __chkstk_darwin(v187);
  v147 = v142 - v24;
  v152 = sub_1000033A8(&qword_1001D84C0, &qword_100177718);
  __chkstk_darwin(v152);
  v148 = v142 - v25;
  v159 = sub_1000033A8(&qword_1001D84C8, &qword_100177720);
  v191 = *(v159 - 8);
  v26 = __chkstk_darwin(v159);
  v162 = v142 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v158 = v142 - v28;
  v157 = sub_1000033A8(&qword_1001D84D0, &qword_100177728);
  v190 = *(v157 - 8);
  v29 = __chkstk_darwin(v157);
  v160 = v142 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v156 = v142 - v31;
  v32 = type metadata accessor for ConfigFormLabelStyle();
  v33 = *(v32 - 8);
  __chkstk_darwin(v32);
  v35 = v142 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_1000033A8(&qword_1001D84D8, &qword_100177730);
  v206 = *(v36 - 8);
  __chkstk_darwin(v36);
  v38 = v142 - v37;
  v185 = sub_1000033A8(&qword_1001D84E0, &qword_100177738);
  __chkstk_darwin(v185);
  v40 = v142 - v39;
  v154 = sub_1000033A8(&qword_1001D84E8, &qword_100177740);
  v149 = *(v154 - 8);
  v41 = __chkstk_darwin(v154);
  v155 = v142 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v41);
  v153 = v142 - v43;
  v218 = v1;
  v188 = sub_1000033A8(&qword_1001D84F0, &qword_10017C840);
  v186 = sub_10009B670();
  Label.init(title:icon:)();
  static LabelStyle<>.configFormLabelStyle.getter();
  v150 = &protocol conformance descriptor for Label<A, B>;
  v44 = sub_100013608(&qword_1001D8500, &qword_1001D84D8, &qword_100177730, &protocol conformance descriptor for Label<A, B>);
  v45 = v40;
  v46 = v32;
  v47 = sub_10009B994(&qword_1001D8508, &type metadata accessor for ConfigFormLabelStyle, &protocol conformance descriptor for ConfigFormLabelStyle);
  v207 = v47;
  v182 = v38;
  View.labelStyle<A>(_:)();
  v201 = *(v33 + 8);
  v205 = (v33 + 8);
  v201(v35, v32);
  v48 = *(v206 + 1);
  v206 += 8;
  v202 = v36;
  v203 = v48;
  v48(v38, v36);
  sub_1000033A8(&qword_1001D8510, &qword_100177748);
  v219 = v36;
  v220 = v32;
  v221 = v44;
  v222 = v47;
  v151 = v44;
  v142[1] = &opaque type descriptor for <<opaque return type of View.labelStyle<A>(_:)>>;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v49 = type metadata accessor for AnnotationViewConfiguration();
  v50 = sub_10009B994(&qword_1001D8518, &type metadata accessor for AnnotationViewConfiguration, &protocol conformance descriptor for AnnotationViewConfiguration);
  v219 = v49;
  v220 = v50;
  v200 = &opaque type descriptor for <<opaque return type of Binding<A>.configurationForm>>;
  swift_getOpaqueTypeConformance2();
  Section<>.init(header:content:)();
  v51 = v208;
  v217 = v208;
  v52 = v182;
  Label.init(title:icon:)();
  static LabelStyle<>.configFormLabelStyle.getter();
  v183 = v45;
  v53 = v202;
  v204 = v46;
  View.labelStyle<A>(_:)();
  v54 = v46;
  v55 = v201;
  v201(v35, v54);
  v203(v52, v53);
  sub_1000033A8(&qword_1001D8520, &qword_100177750);
  v56 = type metadata accessor for CameraControllerConfiguration(255);
  v57 = sub_10009B994(&qword_1001D8528, type metadata accessor for CameraControllerConfiguration, &unk_1001731D0);
  v219 = v56;
  v220 = v57;
  swift_getOpaqueTypeConformance2();
  Section<>.init(header:content:)();
  v216 = v51;
  v58 = v147;
  Label.init(title:icon:)();
  v59 = v35;
  static LabelStyle<>.configFormLabelStyle.getter();
  v60 = sub_100013608(&qword_1001D57C0, &qword_1001D57B8, &qword_1001736E0, v150);
  v144 = v35;
  v61 = v187;
  v62 = v204;
  v63 = v207;
  View.labelStyle<A>(_:)();
  v64 = v59;
  v65 = v62;
  v55(v64, v62);
  v66 = *(Description + 1);
  Description = (Description + 8);
  v145 = v66;
  v67 = v58;
  v66(v58, v61);
  sub_1000033A8(&qword_1001D8530, &qword_100177758);
  v219 = v61;
  v220 = v62;
  v221 = v60;
  v222 = v63;
  v146 = v60;
  v150 = swift_getOpaqueTypeConformance2();
  v70 = sub_10009B778(v150, v68, v69);
  v219 = &type metadata for LoggingConfiguration;
  v220 = v70;
  swift_getOpaqueTypeConformance2();
  Section<>.init(header:content:)();
  v215 = v208;
  Label.init(title:icon:)();
  v71 = v144;
  static LabelStyle<>.configFormLabelStyle.getter();
  v72 = v187;
  v73 = v67;
  View.labelStyle<A>(_:)();
  v74 = v201;
  v201(v71, v65);
  v75 = v145;
  v76 = (v145)(v67, v72);
  sub_10009B7D4(v76, v77, v78);
  Section<>.init(header:content:)();
  v214 = v208;
  Label.init(title:icon:)();
  v79 = v144;
  static LabelStyle<>.configFormLabelStyle.getter();
  v80 = v187;
  v81 = v204;
  View.labelStyle<A>(_:)();
  v74(v79, v81);
  v75(v73, v80);
  v82 = sub_1000033A8(&qword_1001D8548, &qword_100177760);
  v85 = sub_10009B830(v82, v83, v84);
  v219 = &type metadata for MontaraConfiguration;
  v220 = v85;
  swift_getOpaqueTypeConformance2();
  Section<>.init(header:content:)();
  v213 = v208;
  v86 = v182;
  Label.init(title:icon:)();
  static LabelStyle<>.configFormLabelStyle.getter();
  v87 = v79;
  v88 = v202;
  View.labelStyle<A>(_:)();
  v201(v79, v81);
  v203(v86, v88);
  sub_1000033A8(&qword_1001D8558, &qword_100177768);
  v89 = type metadata accessor for VIUIConfiguration();
  v90 = sub_10009B994(&qword_1001D8560, &type metadata accessor for VIUIConfiguration, &protocol conformance descriptor for VIUIConfiguration);
  v219 = v89;
  v220 = v90;
  swift_getOpaqueTypeConformance2();
  Section<>.init(header:content:)();
  v91 = v208;
  v212 = v208;
  Label.init(title:icon:)();
  static LabelStyle<>.configFormLabelStyle.getter();
  v92 = v202;
  v93 = v204;
  View.labelStyle<A>(_:)();
  v201(v79, v93);
  v203(v86, v92);
  v94 = sub_1000033A8(&qword_1001D8568, &qword_100177770);
  v97 = sub_10009B894(v94, v95, v96);
  v219 = &type metadata for StickerConfiguration;
  v220 = v97;
  swift_getOpaqueTypeConformance2();
  Section<>.init(header:content:)();
  v211 = v91;
  v98 = v182;
  Label.init(title:icon:)();
  static LabelStyle<>.configFormLabelStyle.getter();
  v99 = v202;
  v100 = v204;
  View.labelStyle<A>(_:)();
  v101 = v100;
  v102 = v201;
  v201(v87, v101);
  v203(v98, v99);
  v103 = sub_1000033A8(&qword_1001D8578, &qword_100177778);
  v106 = sub_10009B930(v103, v104, v105);
  v219 = &type metadata for SystemActionsConfiguration;
  v220 = v106;
  swift_getOpaqueTypeConformance2();
  Section<>.init(header:content:)();
  v210 = v208;
  v107 = v147;
  Label.init(title:icon:)();
  static LabelStyle<>.configFormLabelStyle.getter();
  v108 = v187;
  v109 = v204;
  View.labelStyle<A>(_:)();
  v102(v87, v109);
  v145(v107, v108);
  sub_1000033A8(&qword_1001D8588, &qword_100177780);
  v110 = type metadata accessor for MapsConfiguration();
  v111 = sub_10009B994(&qword_1001D8590, &type metadata accessor for MapsConfiguration, &protocol conformance descriptor for MapsConfiguration);
  v219 = v110;
  v220 = v111;
  swift_getOpaqueTypeConformance2();
  Section<>.init(header:content:)();
  v209 = v208;
  v112 = v182;
  Label.init(title:icon:)();
  static LabelStyle<>.configFormLabelStyle.getter();
  v113 = v202;
  v114 = v204;
  View.labelStyle<A>(_:)();
  v102(v87, v114);
  v203(v112, v113);
  sub_1000033A8(&qword_1001D8598, &qword_100177788);
  v115 = type metadata accessor for FocusSelectionConfiguration();
  v116 = sub_10009B994(&qword_1001D85A0, &type metadata accessor for FocusSelectionConfiguration, &protocol conformance descriptor for FocusSelectionConfiguration);
  v219 = v115;
  v220 = v116;
  swift_getOpaqueTypeConformance2();
  Section<>.init(header:content:)();
  Description = *(v149 + 16);
  Description(v155, v153, v154);
  v117 = *(v190 + 16);
  v207 = (v190 + 16);
  v208 = v117;
  (v117)(v160, v156, v157);
  v118 = *(v191 + 16);
  v205 = (v191 + 16);
  v206 = v118;
  (v118)(v162, v158, v159);
  v204 = *(v192 + 16);
  (v204)(v169, v163, v164);
  v203 = *(v193 + 16);
  (v203)(v171, v165, v166);
  v202 = *(v194 + 16);
  (v202)(v174, v167, v195);
  v201 = *(v196 + 16);
  (v201)(v177, v170, v168);
  v200 = *(v197 + 16);
  v200(v179, v173, v172);
  v188 = *(v198 + 16);
  v188(v180, v175, v176);
  v187 = *(v199 + 16);
  (v187)(v181, v161, v178);
  v119 = v143;
  Description(v143, v155, v154);
  v120 = sub_1000033A8(&qword_1001D85A8, &qword_100177790);
  (v208)(&v119[v120[12]], v160, v157);
  (v206)(&v119[v120[16]], v162, v159);
  (v204)(&v119[v120[20]], v169, v164);
  (v203)(&v119[v120[24]], v171, v166);
  (v202)(&v119[v120[28]], v174, v195);
  v121 = v168;
  (v201)(&v119[v120[32]], v177, v168);
  v122 = v172;
  v200(&v119[v120[36]], v179, v172);
  v123 = v176;
  v188(&v119[v120[40]], v180, v176);
  v124 = &v119[v120[44]];
  v125 = v178;
  (v187)(v124, v181, v178);
  v126 = *(v199 + 8);
  v199 += 8;
  v208 = v126;
  v126(v161, v125);
  v127 = *(v198 + 8);
  v198 += 8;
  v207 = v127;
  v127(v175, v123);
  v128 = *(v197 + 8);
  v197 += 8;
  v206 = v128;
  (v128)(v173, v122);
  v129 = *(v196 + 8);
  v196 += 8;
  v205 = v129;
  v129(v170, v121);
  v130 = *(v194 + 8);
  v194 += 8;
  v204 = v130;
  v130(v167, v195);
  v131 = *(v193 + 8);
  v193 += 8;
  v203 = v131;
  v132 = v166;
  v131(v165, v166);
  v133 = *(v192 + 8);
  v192 += 8;
  v202 = v133;
  v134 = v164;
  v133(v163, v164);
  v135 = *(v191 + 8);
  v191 += 8;
  v136 = v159;
  v135(v158, v159);
  v137 = *(v190 + 8);
  v190 += 8;
  v138 = v157;
  v137(v156, v157);
  v139 = *(v149 + 8);
  v140 = v154;
  v139(v153, v154);
  v208(v181, v178);
  v207(v180, v176);
  (v206)(v179, v172);
  v205(v177, v168);
  v204(v174, v195);
  v203(v171, v132);
  v202(v169, v134);
  v135(v162, v136);
  v137(v160, v138);
  return (v139)(v155, v140);
}

uint64_t sub_10009A63C()
{
  v0 = sub_1000033A8(&qword_1001D85C8, &qword_100177888);
  __chkstk_darwin(v0);
  v2 = &v7 - v1;
  v3 = sub_1000033A8(&qword_1001D83C0, &qword_100177660);
  __chkstk_darwin(v3);
  v5 = &v7 - v4;
  Binding.projectedValue.getter();
  swift_getKeyPath();
  Binding.subscript.getter();

  sub_10001370C(v5, &qword_1001D83C0, &qword_100177660);
  sub_10009B994(&qword_1001D8518, &type metadata accessor for AnnotationViewConfiguration, &protocol conformance descriptor for AnnotationViewConfiguration);
  Binding<A>.configurationForm.getter();
  return sub_10001370C(v2, &qword_1001D85C8, &qword_100177888);
}

double sub_10009A7D4@<D0>(uint64_t a1@<X8>)
{
  result = 6.01739429e175;
  *a1 = xmmword_1001775D0;
  *(a1 + 16) = 0;
  *(a1 + 24) = _swiftEmptyArrayStorage;
  return result;
}

uint64_t sub_10009A7F4@<X0>(uint64_t *a1@<X8>)
{
  v2 = Image.init(_internalSystemName:)();
  result = static Color.indigo.getter();
  *a1 = v2;
  a1[1] = result;
  return result;
}

uint64_t sub_10009A83C()
{
  v0 = sub_1000033A8(&qword_1001D5568, &qword_100173390);
  __chkstk_darwin(v0);
  v2 = &v7 - v1;
  v3 = sub_1000033A8(&qword_1001D83C0, &qword_100177660);
  __chkstk_darwin(v3);
  v5 = &v7 - v4;
  Binding.projectedValue.getter();
  swift_getKeyPath();
  Binding.subscript.getter();

  sub_10001370C(v5, &qword_1001D83C0, &qword_100177660);
  sub_10009B994(&qword_1001D8528, type metadata accessor for CameraControllerConfiguration, &unk_1001731D0);
  Binding<A>.configurationForm.getter();
  return sub_10001370C(v2, &qword_1001D5568, &qword_100173390);
}

double sub_10009A9D4@<D0>(uint64_t a1@<X8>)
{
  *&result = 0x6172656D6143;
  *a1 = xmmword_1001775E0;
  *(a1 + 16) = 0;
  *(a1 + 24) = _swiftEmptyArrayStorage;
  return result;
}

uint64_t sub_10009A9F4@<X0>(uint64_t *a1@<X8>)
{
  v2 = Image.init(_internalSystemName:)();
  result = static Color.orange.getter();
  *a1 = v2;
  a1[1] = result;
  return result;
}

double sub_10009AA40@<D0>(uint64_t a1@<X8>)
{
  result = 1.04272728e-306;
  *a1 = xmmword_1001775F0;
  *(a1 + 16) = 0;
  *(a1 + 24) = _swiftEmptyArrayStorage;
  return result;
}

uint64_t sub_10009AA60@<X0>(uint64_t *a1@<X8>)
{
  result = Image.init(_internalSystemName:)();
  *a1 = result;
  return result;
}

uint64_t sub_10009AAA0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for AppConfiguration(0);
  __chkstk_darwin(v4 - 8);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000033A8(&qword_1001D83C0, &qword_100177660);
  __chkstk_darwin(v7);
  v9 = v14 - v8;
  Binding.projectedValue.getter();
  swift_getKeyPath();
  Binding.subscript.getter();

  sub_10001370C(v9, &qword_1001D83C0, &qword_100177660);
  v10 = v14[0];
  v11 = v14[1];
  Binding.wrappedValue.getter();
  sub_100006B90(v6);
  v12 = *(a1 + *(type metadata accessor for ConfigList(0) + 20));
  type metadata accessor for UserDefaultsUtility();

  result = UserDefaultsUtility.__allocating_init()();
  *a2 = v10;
  a2[1] = v11;
  a2[2] = v12;
  a2[3] = result;
  return result;
}

double sub_10009AC1C@<D0>(uint64_t a1@<X8>)
{
  result = 4.89094158e199;
  *a1 = xmmword_100177600;
  *(a1 + 16) = 0;
  *(a1 + 24) = _swiftEmptyArrayStorage;
  return result;
}

uint64_t sub_10009AC3C@<X0>(uint64_t *a1@<X8>)
{
  result = Image.init(_internalSystemName:)();
  *a1 = result;
  return result;
}

double sub_10009AC7C()
{
  v0 = sub_1000033A8(&qword_1001D83C0, &qword_100177660);
  __chkstk_darwin(v0);
  v2 = v7 - v1;
  Binding.projectedValue.getter();
  swift_getKeyPath();
  Binding.subscript.getter();

  sub_10001370C(v2, &qword_1001D83C0, &qword_100177660);
  v7[0] = v7[4];
  v7[1] = v7[5];
  v7[2] = v7[6];
  v7[3] = v7[7];
  v3 = sub_1000033A8(&qword_1001D85C0, &qword_10017D000);
  sub_10009B830(v3, v4, v5);
  Binding<A>.configurationForm.getter();

  return result;
}

double sub_10009ADB4@<D0>(uint64_t a1@<X8>)
{
  result = 7.76408352e-307;
  *a1 = xmmword_100177610;
  *(a1 + 16) = 0;
  *(a1 + 24) = _swiftEmptyArrayStorage;
  return result;
}

uint64_t sub_10009ADD4@<X0>(uint64_t *a1@<X8>)
{
  result = Image.init(_internalSystemName:)();
  *a1 = result;
  return result;
}

uint64_t sub_10009AE18()
{
  v0 = sub_1000033A8(&qword_1001D83C8, &qword_100177668);
  __chkstk_darwin(v0);
  v2 = &v4 - v1;
  type metadata accessor for ConfigList(0);
  Binding.projectedValue.getter();
  sub_10009B994(&qword_1001D8560, &type metadata accessor for VIUIConfiguration, &protocol conformance descriptor for VIUIConfiguration);
  Binding<A>.configurationForm.getter();
  return sub_10001370C(v2, &qword_1001D83C8, &qword_100177668);
}

double sub_10009AF28@<D0>(uint64_t a1@<X8>)
{
  *&result = 1230326102;
  *a1 = xmmword_100177620;
  *(a1 + 16) = 0;
  *(a1 + 24) = _swiftEmptyArrayStorage;
  return result;
}

uint64_t sub_10009AF48@<X0>(uint64_t *a1@<X8>)
{
  v2 = Image.init(_internalSystemName:)();
  result = static Color.green.getter();
  *a1 = v2;
  a1[1] = result;
  return result;
}

double sub_10009AF90()
{
  v0 = sub_1000033A8(&qword_1001D83C0, &qword_100177660);
  __chkstk_darwin(v0);
  v2 = v7 - v1;
  Binding.projectedValue.getter();
  swift_getKeyPath();
  Binding.subscript.getter();

  sub_10001370C(v2, &qword_1001D83C0, &qword_100177660);
  v7[0] = v9;
  v7[1] = v10;
  v8 = v11;
  v3 = sub_1000033A8(&qword_1001D4608, &qword_100171390);
  sub_10009B894(v3, v4, v5);
  Binding<A>.configurationForm.getter();

  return result;
}

double sub_10009B0C0@<D0>(uint64_t a1@<X8>)
{
  result = 1.28624546e248;
  *a1 = xmmword_100177630;
  *(a1 + 16) = 0;
  *(a1 + 24) = _swiftEmptyArrayStorage;
  return result;
}

uint64_t sub_10009B0E0@<X0>(uint64_t *a1@<X8>)
{
  v2 = Image.init(_internalSystemName:)();
  result = static Color.cyan.getter();
  *a1 = v2;
  a1[1] = result;
  return result;
}

double sub_10009B12C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  v8 = sub_1000033A8(&qword_1001D83C0, &qword_100177660);
  __chkstk_darwin(v8);
  v10 = v12 - v9;
  Binding.projectedValue.getter();
  swift_getKeyPath();
  Binding.subscript.getter();

  sub_10001370C(v10, &qword_1001D83C0, &qword_100177660);
  v12[0] = v15;
  v12[1] = v16;
  v13 = v17;
  v14 = v18;
  sub_1000033A8(a3, a4);
  a5();
  Binding<A>.configurationForm.getter();

  return result;
}

double sub_10009B274@<D0>(uint64_t a1@<X8>)
{
  result = 538290.727;
  *a1 = xmmword_100177640;
  *(a1 + 16) = 0;
  *(a1 + 24) = _swiftEmptyArrayStorage;
  return result;
}

uint64_t sub_10009B294@<X0>(uint64_t *a1@<X8>)
{
  v2 = Image.init(_internalSystemName:)();
  result = static Color.mint.getter();
  *a1 = v2;
  a1[1] = result;
  return result;
}

uint64_t sub_10009B2DC()
{
  v0 = sub_1000033A8(&qword_1001D85B0, &qword_100177798);
  __chkstk_darwin(v0);
  v2 = &v7 - v1;
  v3 = sub_1000033A8(&qword_1001D83C0, &qword_100177660);
  __chkstk_darwin(v3);
  v5 = &v7 - v4;
  Binding.projectedValue.getter();
  swift_getKeyPath();
  Binding.subscript.getter();

  sub_10001370C(v5, &qword_1001D83C0, &qword_100177660);
  sub_10009B994(&qword_1001D8590, &type metadata accessor for MapsConfiguration, &protocol conformance descriptor for MapsConfiguration);
  Binding<A>.configurationForm.getter();
  return sub_10001370C(v2, &qword_1001D85B0, &qword_100177798);
}

double sub_10009B474@<D0>(uint64_t a1@<X8>)
{
  *&result = 1936744781;
  *a1 = xmmword_100177650;
  *(a1 + 16) = 0;
  *(a1 + 24) = _swiftEmptyArrayStorage;
  return result;
}

uint64_t sub_10009B494@<X0>(uint64_t *a1@<X8>)
{
  result = Image.init(_internalSystemName:)();
  *a1 = result;
  return result;
}

uint64_t sub_10009B4DC()
{
  v0 = sub_1000033A8(&qword_1001D83D0, &qword_100177670);
  __chkstk_darwin(v0);
  v2 = &v4 - v1;
  type metadata accessor for ConfigList(0);
  Binding.projectedValue.getter();
  sub_10009B994(&qword_1001D85A0, &type metadata accessor for FocusSelectionConfiguration, &protocol conformance descriptor for FocusSelectionConfiguration);
  Binding<A>.configurationForm.getter();
  return sub_10001370C(v2, &qword_1001D83D0, &qword_100177670);
}

void sub_10009B5EC(uint64_t a1@<X8>)
{
  *a1 = 0xD000000000000013;
  *(a1 + 8) = 0x800000010016D710;
  *(a1 + 16) = 0;
  *(a1 + 24) = _swiftEmptyArrayStorage;
}

uint64_t sub_10009B61C@<X0>(uint64_t *a1@<X8>)
{
  v2 = Image.init(_internalSystemName:)();
  result = static Color.purple.getter();
  *a1 = v2;
  a1[1] = result;
  return result;
}

unint64_t sub_10009B670()
{
  result = qword_1001D84F8;
  if (!qword_1001D84F8)
  {
    sub_10001276C(&qword_1001D84F0, &qword_10017C840);
    sub_100013608(&qword_1001D3E68, &qword_1001D3E70, &qword_100177A70, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D84F8);
  }

  return result;
}

unint64_t sub_10009B778(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1001D8538;
  if (!qword_1001D8538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D8538);
  }

  return result;
}

unint64_t sub_10009B7D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1001D8540;
  if (!qword_1001D8540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D8540);
  }

  return result;
}

unint64_t sub_10009B830(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1001D8550;
  if (!qword_1001D8550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D8550);
  }

  return result;
}

unint64_t sub_10009B894(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1001D8570;
  if (!qword_1001D8570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D8570);
  }

  return result;
}

unint64_t sub_10009B930(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1001D8580;
  if (!qword_1001D8580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D8580);
  }

  return result;
}

uint64_t sub_10009B994(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10009BA20()
{
  *(v0 + 16) = [objc_allocWithZone(UIView) init];
  *(v0 + 24) = [objc_allocWithZone(type metadata accessor for SubjectLiftViewDelegate()) init];
  v1 = [objc_allocWithZone(VKCImageAnalysisInteraction) init];
  *(v0 + 32) = v1;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0u;
  [v1 setWantsAutomaticContentsRectCalculation:0];
  [*(v0 + 32) set_inhibitSubjectDimmingAndLiftView:1];
  [*(v0 + 32) setDelegate:*(v0 + 24)];
  [*(v0 + 16) addInteraction:*(v0 + 32)];
  return v0;
}

uint64_t sub_10009BAE0()
{
  sub_100005640(*(v0 + 40), *(v0 + 48));
  sub_100005640(*(v0 + 56), *(v0 + 64));

  return swift_deallocClassInstance();
}

uint64_t sub_10009BB98@<X0>(uint64_t a1@<X0>, __int16 a2@<W1>, uint64_t a3@<X8>)
{
  v3 = a2;
  v39 = a1;
  v40 = a3;
  v4 = sub_1000033A8(&qword_1001D8710, &qword_100177A28);
  __chkstk_darwin(v4);
  v6 = (&v35 - v5);
  v7 = sub_1000033A8(&qword_1001D8718, &qword_100177A30);
  __chkstk_darwin(v7);
  v9 = &v35 - v8;
  v38 = sub_1000033A8(&qword_1001D8720, &qword_100177A38);
  __chkstk_darwin(v38);
  v11 = &v35 - v10;
  v42 = sub_1000033A8(&qword_1001D8728, &qword_100177A40);
  v12 = __chkstk_darwin(v42);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v35 - v15;
  v41 = sub_1000033A8(&qword_1001D8730, &qword_100177A48);
  __chkstk_darwin(v41);
  v18 = &v35 - v17;
  if (v3)
  {
    v19 = sub_1000033A8(&qword_1001D8738, &qword_100177A50);
    (*(*(v19 - 8) + 16))(v18, v39, v19);
    swift_storeEnumTagMultiPayload();
    sub_100013608(&qword_1001D8748, &qword_1001D8738, &qword_100177A50, &protocol conformance descriptor for _ViewModifier_Content<A>);
    sub_10009C490();
    return _ConditionalContent<>.init(storage:)();
  }

  else
  {
    v21 = static Alignment.center.getter();
    v36 = v16;
    v23 = v22;
    v24 = static Edge.Set.all.getter();
    v35 = v4;
    v25 = v24;
    v37 = sub_1000033A8(&qword_1001D8738, &qword_100177A50);
    (*(*(v37 - 8) + 16))(v9, v39, v37);
    v26 = &v9[*(v7 + 36)];
    *v26 = 0x3FF0000000000000;
    v26[8] = 1;
    v26[9] = v25;
    v26[10] = 0;
    *(v26 + 2) = v21;
    *(v26 + 3) = v23;
    static Color.black.getter();
    v27 = Color.opacity(_:)();

    LOBYTE(v23) = static Edge.Set.all.getter();
    sub_10002091C(v9, v11, &qword_1001D8718, &qword_100177A30);
    v28 = &v11[*(v38 + 36)];
    *v28 = v27;
    v28[8] = v23;
    static Color.black.getter();
    v29 = Color.opacity(_:)();

    v30 = *(v35 + 36);
    v31 = enum case for BlendMode.overlay(_:);
    v32 = type metadata accessor for BlendMode();
    (*(*(v32 - 8) + 104))(v6 + v30, v31, v32);
    *v6 = v29;
    LOBYTE(v31) = static Edge.Set.all.getter();
    v33 = &v14[*(v42 + 36)];
    sub_10002091C(v6, v33, &qword_1001D8710, &qword_100177A28);
    *(v33 + *(sub_1000033A8(&qword_1001D8740, &qword_100177A58) + 36)) = v31;
    sub_10002091C(v11, v14, &qword_1001D8720, &qword_100177A38);
    v34 = v36;
    sub_10002091C(v14, v36, &qword_1001D8728, &qword_100177A40);
    sub_10009C420(v34, v18);
    swift_storeEnumTagMultiPayload();
    sub_100013608(&qword_1001D8748, &qword_1001D8738, &qword_100177A50, &protocol conformance descriptor for _ViewModifier_Content<A>);
    sub_10009C490();
    _ConditionalContent<>.init(storage:)();
    return sub_10009C6E4(v34);
  }
}

uint64_t sub_10009C0EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (v2[1])
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  return sub_10009BB98(a1, v3 | *v2, a2);
}

uint64_t sub_10009C124@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Capsule();
  __chkstk_darwin(v2 - 8);
  v4 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000033A8(&qword_1001D86E0, &qword_1001779F8);
  v6 = v5 - 8;
  __chkstk_darwin(v5);
  v8 = &v37 - v7;
  v9 = sub_1000033A8(&qword_1001D86E8, &qword_100177A00);
  v10 = v9 - 8;
  __chkstk_darwin(v9);
  v12 = &v37 - v11;
  ButtonStyleConfiguration.label.getter();
  v13 = static Color.white.getter();
  *&v12[*(sub_1000033A8(&qword_1001D86F0, &qword_100177A08) + 36)] = v13;
  LOBYTE(v13) = static Edge.Set.vertical.getter();
  EdgeInsets.init(_all:)();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v22 = &v12[*(sub_1000033A8(&qword_1001D86F8, &qword_100177A10) + 36)];
  *v22 = v13;
  *(v22 + 1) = v15;
  *(v22 + 2) = v17;
  *(v22 + 3) = v19;
  *(v22 + 4) = v21;
  v22[40] = 0;
  LOBYTE(v13) = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v23 = &v12[*(v10 + 44)];
  *v23 = v13;
  *(v23 + 1) = v24;
  *(v23 + 2) = v25;
  *(v23 + 3) = v26;
  *(v23 + 4) = v27;
  v23[40] = 0;
  v28 = enum case for RoundedCornerStyle.continuous(_:);
  v29 = type metadata accessor for RoundedCornerStyle();
  (*(*(v29 - 8) + 104))(v4, v28, v29);
  static Color.white.getter();
  ButtonStyleConfiguration.isPressed.getter();
  v30 = Color.opacity(_:)();

  sub_100064460(v4, v8);
  *&v8[*(v6 + 60)] = v30;
  *&v8[*(v6 + 64)] = 256;
  v31 = static Alignment.center.getter();
  v33 = v32;
  v34 = a1 + *(sub_1000033A8(&qword_1001D8700, &qword_100177A18) + 36);
  sub_10002091C(v8, v34, &qword_1001D86E0, &qword_1001779F8);
  v35 = (v34 + *(sub_1000033A8(&qword_1001D8708, &qword_100177A20) + 36));
  *v35 = v31;
  v35[1] = v33;
  return sub_10002091C(v12, a1, &qword_1001D86E8, &qword_100177A00);
}

uint64_t sub_10009C420(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000033A8(&qword_1001D8728, &qword_100177A40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10009C490()
{
  result = qword_1001D8750;
  if (!qword_1001D8750)
  {
    sub_10001276C(&qword_1001D8728, &qword_100177A40);
    sub_10009C548();
    sub_100013608(&qword_1001D8778, &qword_1001D8740, &qword_100177A58, &protocol conformance descriptor for _BackgroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D8750);
  }

  return result;
}

unint64_t sub_10009C548()
{
  result = qword_1001D8758;
  if (!qword_1001D8758)
  {
    sub_10001276C(&qword_1001D8720, &qword_100177A38);
    sub_10009C600();
    sub_100013608(&qword_1001D5278, &qword_1001D5280, &unk_100172970, &protocol conformance descriptor for _BackgroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D8758);
  }

  return result;
}

unint64_t sub_10009C600()
{
  result = qword_1001D8760;
  if (!qword_1001D8760)
  {
    sub_10001276C(&qword_1001D8718, &qword_100177A30);
    sub_100013608(&qword_1001D8748, &qword_1001D8738, &qword_100177A50, &protocol conformance descriptor for _ViewModifier_Content<A>);
    sub_100013608(&qword_1001D8768, &qword_1001D8770, &unk_100177A60, &protocol conformance descriptor for _BackgroundModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D8760);
  }

  return result;
}

uint64_t sub_10009C6E4(uint64_t a1)
{
  v2 = sub_1000033A8(&qword_1001D8728, &qword_100177A40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10009C750()
{
  result = qword_1001D8780;
  if (!qword_1001D8780)
  {
    sub_10001276C(&qword_1001D8700, &qword_100177A18);
    sub_10009C864(&qword_1001D8788, &qword_1001D86E8, &qword_100177A00, sub_10009C834);
    sub_100013608(&qword_1001D87A0, &qword_1001D8708, &qword_100177A20, &protocol conformance descriptor for _BackgroundModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D8780);
  }

  return result;
}

uint64_t sub_10009C864(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10001276C(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10009C8E8()
{
  result = qword_1001D8798;
  if (!qword_1001D8798)
  {
    sub_10001276C(&qword_1001D86F0, &qword_100177A08);
    sub_100023818();
    sub_100013608(&qword_1001D3E68, &qword_1001D3E70, &qword_100177A70, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D8798);
  }

  return result;
}

unint64_t sub_10009C9A4()
{
  result = qword_1001D87A8;
  if (!qword_1001D87A8)
  {
    sub_10001276C(&qword_1001D87B0, &qword_100177A78);
    sub_100013608(&qword_1001D8748, &qword_1001D8738, &qword_100177A50, &protocol conformance descriptor for _ViewModifier_Content<A>);
    sub_10009C490();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D87A8);
  }

  return result;
}

double sub_10009CA5C(uint64_t a1)
{
  v2 = _HashTable.startBucket.getter();
  if (v2 != 1 << *(a1 + 32))
  {
    sub_10009E288(v2, *(a1 + 36), 0, a1);
  }

  return result;
}

uint64_t sub_10009CADC(uint64_t *a1, uint64_t *a2, unint64_t *a3)
{
  sub_1000033A8(a1, a2);
  sub_10009E234(a3, a1, a2);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  if (v10[4] == v10[0])
  {
    return 0;
  }

  v7 = dispatch thunk of Collection.subscript.read();
  v6 = *v8;
  v7(v10, 0);
  return v6;
}

unint64_t sub_10009CBC8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = *(a1 + 32);
    v3 = v1 - 1;
    if (v1 != 1)
    {
      v4 = (a1 + 36);
      do
      {
        v5 = *v4++;
        v6 = v5;
        if (v2 < v5)
        {
          v2 = v6;
        }

        --v3;
      }

      while (v3);
    }

    v7 = LODWORD(v2);
  }

  else
  {
    v7 = 0;
  }

  return v7 | ((v1 == 0) << 32);
}

uint64_t sub_10009CC20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Angle();
  v5 = __chkstk_darwin(*(v4 - 8));
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &v22 - v9;
  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = *(v8 + 16);
    v13 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v25 = v8;
    v23 = a2;
    v24 = v12;
    v12(&v22 - v9, v13, v4);
    result = v25;
    if (v11 == 1)
    {
LABEL_3:
      v15 = v23;
      (*(result + 32))(v23, v10, v4);
      return (*(v25 + 56))(v15, 0, 1, v4);
    }

    else
    {
      v17 = (v25 + 32);
      v18 = 1;
      while (1)
      {
        v19 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          break;
        }

        v24(v7, v13 + *(result + 72) * v18, v4);
        sub_10009E988();
        v20 = dispatch thunk of static Comparable.< infix(_:_:)();
        v21 = *(v25 + 8);
        if (v20)
        {
          v21(v10, v4);
          (*v17)(v10, v7, v4);
        }

        else
        {
          v21(v7, v4);
        }

        ++v18;
        result = v25;
        if (v19 == v11)
        {
          goto LABEL_3;
        }
      }

      __break(1u);
    }
  }

  else
  {
    v16 = *(v8 + 56);

    return v16(a2, 1, 1, v4);
  }

  return result;
}

Swift::Int sub_10009CEA0(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  if (a2 <= 1)
  {
    if (!a2)
    {
      v3 = 1;
      goto LABEL_12;
    }

    if (a2 == 1)
    {
      v3 = 2;
      goto LABEL_12;
    }

LABEL_14:
    Hasher._combine(_:)(0);
    String.hash(into:)();
    return Hasher._finalize()();
  }

  if (a2 == 2)
  {
    v3 = 3;
    goto LABEL_12;
  }

  if (a2 == 3)
  {
    v3 = 4;
    goto LABEL_12;
  }

  if (a2 != 4)
  {
    goto LABEL_14;
  }

  v3 = 5;
LABEL_12:
  Hasher._combine(_:)(v3);
  return Hasher._finalize()();
}

BOOL sub_10009CF70(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8) - 1;
  if (v2 > 3)
  {
    v3 = NAN;
  }

  else
  {
    v3 = flt_100177A90[v2];
  }

  v4 = *(a2 + 8) - 1;
  if (v4 > 3)
  {
    v5 = NAN;
  }

  else
  {
    v5 = flt_100177A90[v4];
  }

  return v3 < v5;
}

BOOL sub_10009CFC4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8) - 1;
  if (v2 > 3)
  {
    v3 = NAN;
  }

  else
  {
    v3 = flt_100177A90[v2];
  }

  v4 = *(a1 + 8) - 1;
  if (v4 > 3)
  {
    v5 = NAN;
  }

  else
  {
    v5 = flt_100177A90[v4];
  }

  return v3 >= v5;
}

BOOL sub_10009D018(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8) - 1;
  if (v2 > 3)
  {
    v3 = NAN;
  }

  else
  {
    v3 = flt_100177A90[v2];
  }

  v4 = *(a2 + 8) - 1;
  if (v4 > 3)
  {
    v5 = NAN;
  }

  else
  {
    v5 = flt_100177A90[v4];
  }

  return v3 >= v5;
}

BOOL sub_10009D06C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8) - 1;
  if (v2 > 3)
  {
    v3 = NAN;
  }

  else
  {
    v3 = flt_100177A90[v2];
  }

  v4 = *(a1 + 8) - 1;
  if (v4 > 3)
  {
    v5 = NAN;
  }

  else
  {
    v5 = flt_100177A90[v4];
  }

  return v3 < v5;
}

void sub_10009D0C8(uint64_t a1)
{
  v2 = *(v1 + 8);
  if (v2 <= 1)
  {
    if (!v2)
    {
      v3 = 1;
      goto LABEL_12;
    }

    if (v2 == 1)
    {
      v3 = 2;
      goto LABEL_12;
    }
  }

  else
  {
    switch(v2)
    {
      case 2:
        v3 = 3;
        goto LABEL_12;
      case 3:
        v3 = 4;
        goto LABEL_12;
      case 4:
        v3 = 5;
LABEL_12:
        Hasher._combine(_:)(v3);
        return;
    }
  }

  Hasher._combine(_:)(0);

  String.hash(into:)();
}

Swift::Int sub_10009D188()
{
  v1 = *(v0 + 8);
  Hasher.init(_seed:)();
  if (v1 <= 1)
  {
    if (!v1)
    {
      v2 = 1;
      goto LABEL_12;
    }

    if (v1 == 1)
    {
      v2 = 2;
      goto LABEL_12;
    }

LABEL_14:
    Hasher._combine(_:)(0);
    String.hash(into:)();
    return Hasher._finalize()();
  }

  if (v1 == 2)
  {
    v2 = 3;
    goto LABEL_12;
  }

  if (v1 == 3)
  {
    v2 = 4;
    goto LABEL_12;
  }

  if (v1 != 4)
  {
    goto LABEL_14;
  }

  v2 = 5;
LABEL_12:
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

BOOL sub_10009D250(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 <= 1)
  {
    if (v2)
    {
      if (v2 == 1)
      {
        return v3 == 1;
      }

      return v3 >= 5;
    }

    if (!v3)
    {
      return 1;
    }
  }

  else
  {
    if (v2 != 2)
    {
      if (v2 == 3)
      {
        return v3 == 3;
      }

      if (v2 == 4)
      {
        return v3 == 4;
      }

      return v3 >= 5;
    }

    if (v3 == 2)
    {
      return 1;
    }
  }

  return 0;
}

void sub_10009D2D0(float a1)
{
  v2 = v1;
  *(v1 + 40) = 0;
  *(v1 + 48) = 0;
  *(v1 + 56) = 1056964608;
  v3 = roundf(a1 * 0.5);
  if ((LODWORD(v3) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v3 <= -9.2234e18)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v3 >= 9.2234e18)
  {
LABEL_10:
    __break(1u);
    return;
  }

  if (v3 <= 2)
  {
    v4 = 2;
  }

  else
  {
    v4 = v3;
  }

  v2[4] = v4;
  sub_1000033A8(&qword_1001D8900, &qword_100177BE8);
  sub_1000033A8(&qword_1001D8908, &qword_100177BF0);
  default argument 0 of CircularBuffer.init(data:index:sizeMax:)();
  default argument 1 of CircularBuffer.init(data:index:sizeMax:)();
  v2[2] = CircularBuffer.__allocating_init(data:index:sizeMax:)();
  sub_1000033A8(&qword_1001D8910, &qword_100177BF8);
  type metadata accessor for simd_quatf(0);
  default argument 0 of CircularBuffer.init(data:index:sizeMax:)();
  default argument 1 of CircularBuffer.init(data:index:sizeMax:)();
  v2[3] = CircularBuffer.__allocating_init(data:index:sizeMax:)();
}

void *sub_10009D414(int8x16_t a1, int8x16_t a2, __n128 a3, float32x4_t a4)
{
  v5 = v4;
  v92 = a4;
  v88 = a2;
  v89 = a3;
  v87 = a1;
  v6 = type metadata accessor for Angle();
  v7 = *(v6 - 8);
  v90 = v6;
  v91 = v7;
  __chkstk_darwin(v6);
  v85 = &v83 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000033A8(&qword_1001D8918, &unk_100177C00);
  __chkstk_darwin(v9 - 8);
  v11 = &v83 - v10;
  v12 = type metadata accessor for Logger();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v83 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16.n128_f64[0] = sub_10009E074(v87, v88, v89);
  v89 = v16;

  v17 = sub_10009CADC(&qword_1001D8900, &qword_100177BE8, &qword_1001D8920);
  v19 = v18;
  v21 = v20;

  v22 = v92;
  if (v21 & 1) != 0 || v92.f32[0] != *&v17 || (v38.i64[0] = v17, v38.i64[1] = v19, v39 = vmovn_s32(vceqq_f32(v38, v92)), (v39.i8[2] & 1) == 0) || (v39.i8[4] & 1) == 0 || (, v40 = sub_10009CADC(&qword_1001D8910, &qword_100177BF8, &qword_1001D8928), v42 = v41, v44 = v43, , v22 = v92, (v44) || (v45.i64[1] = v42, v45.i64[0] = v40, (vminv_u16(vmovn_s32(vceqq_f32(v89, v45))) & 1) == 0))
  {
    v22.i32[3] = 0;
    v95 = v22;

    dispatch thunk of CircularBuffer.append(_:)();

    v95 = v89;

    dispatch thunk of CircularBuffer.append(_:)();

    v23 = dispatch thunk of CircularBuffer.isFull.getter();

    if (v23 & 1) == 0 || (, v24 = dispatch thunk of CircularBuffer.isFull.getter(), , (v24 & 1) == 0) || (, v25 = sub_10009CADC(&qword_1001D8900, &qword_100177BE8, &qword_1001D8920), v27 = v26, v29 = v28, , (v29) || (, v30 = sub_10009CADC(&qword_1001D8910, &qword_100177BF8, &qword_1001D8928), v32 = v31, v34 = v33, , (v34))
    {
      v35 = v5[5];
      v36 = v5[6];
      v5[5] = 0;
      v5[6] = 0;
      sub_100092274(v35, v36);
      return 0;
    }

    v92.i64[0] = v27;
    v88.i64[0] = v30;
    v52 = v5[2];
    v95.n128_u64[0] = v52;

    sub_1000033A8(&qword_1001D8900, &qword_100177BE8);
    sub_10009E234(&qword_1001D8920, &qword_1001D8900, &qword_100177BE8);
    v53 = dispatch thunk of Collection.count.getter();
    if (v53)
    {
      v54 = v53;
      v86 = v52;
      v87.i64[0] = v32;
      v94 = _swiftEmptyArrayStorage;
      sub_100059674(0, v53 & ~(v53 >> 63), 0);
      v55 = v94;
      result = dispatch thunk of Collection.startIndex.getter();
      if (v54 < 0)
      {
        __break(1u);
        goto LABEL_33;
      }

      v56.n128_u64[0] = v25;
      v56.n128_u64[1] = v92.i64[0];
      v89 = v56;
      do
      {
        v57 = dispatch thunk of Collection.subscript.read();
        v92 = *v58;
        v57(v93, 0);
        v94 = v55;
        v60 = v55[2];
        v59 = v55[3];
        if (v60 >= v59 >> 1)
        {
          sub_100059674((v59 > 1), v60 + 1, 1);
          v55 = v94;
        }

        v61 = vsubq_f32(v92, v89);
        v62 = vmulq_f32(v61, v61);
        v63 = sqrtf(v62.f32[2] + (((v92.f32[0] - *&v25) * (v92.f32[0] - *&v25)) + v62.f32[1]));
        v55[2] = v60 + 1;
        *(v55 + v60 + 8) = v63;
        dispatch thunk of Collection.formIndex(after:)();
        --v54;
      }

      while (v54);

      v32 = v87.i64[0];
    }

    else
    {

      v55 = _swiftEmptyArrayStorage;
    }

    v64 = v5[3];
    v95.n128_u64[0] = v64;

    sub_1000033A8(&qword_1001D8910, &qword_100177BF8);
    sub_10009E234(&qword_1001D8928, &qword_1001D8910, &qword_100177BF8);
    v65 = dispatch thunk of Collection.count.getter();
    if (!v65)
    {

      v67 = _swiftEmptyArrayStorage;
LABEL_31:
      v77 = sub_10009CBC8(v55);

      sub_10009CC20(v67, v11);

      v78 = sub_10009E2D8(v77 | ((HIDWORD(v77) & 1) << 32), v11);
      v80 = v79;
      sub_10009E8B0(v11);
      v81 = v5[5];
      v82 = v5[6];
      v5[5] = v78;
      v5[6] = v80;
      sub_100092260(v78, v80);
      sub_100092274(v81, v82);
      return v78;
    }

    v66 = v65;
    v83 = v64;
    v84 = v11;
    v94 = _swiftEmptyArrayStorage;
    sub_100059630(0, v65 & ~(v65 >> 63), 0);
    v67 = v94;
    result = dispatch thunk of Collection.startIndex.getter();
    if ((v66 & 0x8000000000000000) == 0)
    {
      v68.i64[0] = v88.i64[0];
      v68.i64[1] = v32;
      v69 = vmulq_f32(v68, v68);
      *v69.i8 = vadd_f32(*v69.i8, *&vextq_s8(v69, v69, 8uLL));
      v70 = vadd_f32(*v69.i8, vdup_lane_s32(*v69.i8, 1)).u32[0];
      *v69.i8 = vrecpe_f32(v70);
      *v69.i8 = vmul_f32(*v69.i8, vrecps_f32(v70, *v69.i8));
      v71 = vmulq_n_f32(vmulq_f32(v68, xmmword_100177A80), vmul_f32(*v69.i8, vrecps_f32(v70, *v69.i8)).f32[0]);
      v88 = vdupq_lane_s32(*v71.i8, 0);
      v89 = v71;
      v87 = vdupq_laneq_s32(v71, 2);
      v86 = v91 + 32;
      v72 = v85;
      do
      {
        v73 = dispatch thunk of Collection.subscript.read();
        v92 = *v74;
        v73(v93, 0);
        log(_:)();
        static Angle.radians(_:)();
        v94 = v67;
        v76 = v67[2];
        v75 = v67[3];
        if (v76 >= v75 >> 1)
        {
          sub_100059630((v75 > 1), v76 + 1, 1);
          v72 = v85;
          v67 = v94;
        }

        v67[2] = v76 + 1;
        (*(v91 + 32))(v67 + ((*(v91 + 80) + 32) & ~*(v91 + 80)) + *(v91 + 72) * v76, v72, v90);
        dispatch thunk of Collection.formIndex(after:)();
        --v66;
      }

      while (v66);

      v11 = v84;
      goto LABEL_31;
    }

LABEL_33:
    __break(1u);
    return result;
  }

  static Log.cameraSource.getter();
  v46 = Logger.logObject.getter();
  v47 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v93[0] = v49;
    *v48 = 136315138;
    *(v48 + 4) = sub_1000E0FE0(0xD00000000000002FLL, 0x800000010016D8E0, v93);
    _os_log_impl(&_mh_execute_header, v46, v47, "%s", v48, 0xCu);
    sub_100006B44(v49);
  }

  (*(v13 + 8))(v15, v12);
  v50 = v5[5];
  v51 = v5[6];
  v5[5] = 0xD00000000000002FLL;
  v5[6] = 0x800000010016D8E0;
  sub_100092274(v50, v51);
  return 0xD00000000000002FLL;
}

double sub_10009DDBC()
{
  sub_1000033A8(&qword_1001D8900, &qword_100177BE8);
  sub_1000033A8(&qword_1001D8908, &qword_100177BF0);
  default argument 0 of CircularBuffer.init(data:index:sizeMax:)();
  default argument 1 of CircularBuffer.init(data:index:sizeMax:)();
  v0[2] = CircularBuffer.__allocating_init(data:index:sizeMax:)();

  sub_1000033A8(&qword_1001D8910, &qword_100177BF8);
  type metadata accessor for simd_quatf(0);
  default argument 0 of CircularBuffer.init(data:index:sizeMax:)();
  default argument 1 of CircularBuffer.init(data:index:sizeMax:)();
  v0[3] = CircularBuffer.__allocating_init(data:index:sizeMax:)();

  v1 = v0[5];
  v2 = v0[6];
  v0[5] = 0;
  v0[6] = 0;

  return sub_100092274(v1, v2);
}

uint64_t sub_10009DEC0()
{

  sub_100092274(*(v0 + 40), *(v0 + 48));

  return swift_deallocClassInstance();
}

uint64_t sub_10009DF2C(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_10009DF44(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFA && *(a1 + 16))
  {
    return (*a1 + 2147483643);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 4;
  if (v4 >= 6)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10009DF9C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFB)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483643;
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 4;
    }
  }

  return result;
}

void *sub_10009DFEC(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

unint64_t sub_10009E020(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1001D88F8;
  if (!qword_1001D88F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D88F8);
  }

  return result;
}

double sub_10009E074(int8x16_t a1, int8x16_t a2, __n128 a3)
{
  v3 = a3.n128_f32[2] + (*a1.i32 + *&a2.i32[1]);
  if (v3 >= 0.0)
  {
    v10 = sqrtf(v3 + 1.0);
    v11 = vrecpe_f32(COERCE_UNSIGNED_INT(v10 + v10));
    v12 = vmul_f32(v11, vrecps_f32(COERCE_UNSIGNED_INT(v10 + v10), v11));
    v22 = vmul_n_f32(vsub_f32(vzip1_s32(*&vextq_s8(a2, a2, 8uLL), a3.n128_u64[0]), vext_s8(a3.n128_u64[0], *&vextq_s8(a1, a1, 8uLL), 4uLL)), vmul_f32(v12, vrecps_f32(COERCE_UNSIGNED_INT(v10 + v10), v12)).f32[0]);
  }

  else if (*a1.i32 < *&a2.i32[1] || *a1.i32 < a3.n128_f32[2])
  {
    v5 = 1.0 - *a1.i32;
    if (*&a2.i32[1] >= a3.n128_f32[2])
    {
      v23 = sqrtf(*&a2.i32[1] + (v5 - a3.n128_f32[2]));
      *&v24 = v23 + v23;
      v25 = vrecpe_f32(v24);
      v26 = vmul_f32(v25, vrecps_f32(v24, v25));
      v27.i32[0] = vmul_f32(v26, vrecps_f32(v24, v26)).u32[0];
      v26.f32[0] = *&a1.i32[1] + *a2.i32;
      v26.i32[1] = v24;
      v27.i32[1] = 0.25;
      v22 = vmul_f32(v26, v27);
    }

    else
    {
      v6 = sqrtf(a3.n128_f32[2] + (v5 - *&a2.i32[1]));
      v7 = vrecpe_f32(COERCE_UNSIGNED_INT(v6 + v6));
      v8 = vmul_f32(v7, vrecps_f32(COERCE_UNSIGNED_INT(v6 + v6), v7));
      v22 = vmul_n_f32(vadd_f32(vzip1_s32(*&vextq_s8(a1, a1, 8uLL), *&vextq_s8(a2, a2, 8uLL)), a3.n128_u64[0]), vmul_f32(v8, vrecps_f32(COERCE_UNSIGNED_INT(v6 + v6), v8)).f32[0]);
      __asm { FMOV            V0.2S, #0.25 }
    }
  }

  else
  {
    v13 = sqrtf(*a1.i32 + ((1.0 - *&a2.i32[1]) - a3.n128_f32[2]));
    v14.f32[0] = v13 + v13;
    v15 = vrecpe_f32(v14.u32[0]);
    v16 = vmul_f32(v15, vrecps_f32(v14.u32[0], v15));
    v17 = vmul_f32(v16, vrecps_f32(v14.u32[0], v16)).u32[0];
    v14.f32[1] = *&a1.i32[1] + *a2.i32;
    __asm { FMOV            V5.2S, #0.25 }

    _D5.i32[1] = v17;
    v22 = vmul_f32(v14, _D5);
  }

  return *&v22;
}

uint64_t sub_10009E234(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10001276C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10009E288(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) != a2)
  {
LABEL_8:
    __break(1u);
  }

  return result;
}

unint64_t sub_10009E2D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000033A8(&qword_1001D8918, &unk_100177C00);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v25 - v8;
  v10 = type metadata accessor for Angle();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 0x100000000) != 0)
  {
    return 0xD000000000000022;
  }

  sub_10009E918(a2, v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_10009E8B0(v9);
    return 0xD000000000000022;
  }

  v16 = *(v11 + 32);
  v15 = v11 + 32;
  v16(v13, v9, v10);
  v17 = (v15 + 24);
  v18 = (v15 - 24);
  if (*&a1 <= 0.005)
  {
    static Angle.degrees(_:)();
    (*v17)(v7, 0, 1, v10);
    sub_10009E988();
    v19 = dispatch thunk of static Comparable.< infix(_:_:)();
    v20 = *v18;
    (*v18)(v7, v10);
    if ((v19 & 1) == 0)
    {
      goto LABEL_16;
    }

    sub_100092274(0, 1uLL);
  }

  if (*&a1 <= 0.02)
  {
    static Angle.degrees(_:)();
    (*v17)(v7, 0, 1, v10);
    sub_10009E988();
    v21 = dispatch thunk of static Comparable.< infix(_:_:)();
    v20 = *v18;
    (*v18)(v7, v10);
    if ((v21 & 1) == 0)
    {
      goto LABEL_16;
    }

    sub_100092274(0, 2uLL);
  }

  if (*&a1 <= 0.15)
  {
    static Angle.degrees(_:)();
    (*v17)(v7, 0, 1, v10);
    sub_10009E988();
    v22 = dispatch thunk of static Comparable.< infix(_:_:)();
    v20 = *v18;
    (*v18)(v7, v10);
    if ((v22 & 1) == 0)
    {
      goto LABEL_16;
    }

    sub_100092274(0, 3uLL);
  }

  static Angle.degrees(_:)();
  (*v17)(v7, 0, 1, v10);
  sub_10009E988();
  v23 = dispatch thunk of static Comparable.< infix(_:_:)();
  v20 = *v18;
  (*v18)(v7, v10);
  if (v23)
  {
    v24.n128_f64[0] = sub_100092274(0, 4uLL);
    (*v18)(v13, v10, v24);
    return 0xD000000000000028;
  }

LABEL_16:
  (v20)(v13, v10);
  return 0;
}

uint64_t sub_10009E8B0(uint64_t a1)
{
  v2 = sub_1000033A8(&qword_1001D8918, &unk_100177C00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10009E918(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000033A8(&qword_1001D8918, &unk_100177C00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10009E988()
{
  result = qword_1001D8930;
  if (!qword_1001D8930)
  {
    type metadata accessor for Angle();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D8930);
  }

  return result;
}

uint64_t sub_10009E9E4()
{
  v1 = type metadata accessor for Locale();
  __chkstk_darwin(v1 - 8);
  v2 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v2 - 8);
  v3 = [v0 contentPreviewString];
  if (v3 || (v3 = [v0 dataTypeDisplayString]) != 0)
  {
    v4 = v3;
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    return v5;
  }

  else
  {
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    return String.init(localized:table:bundle:locale:comment:)();
  }
}

uint64_t sub_10009EB68()
{
  v1 = [*v0 shortDescription];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

uint64_t sub_10009EBC0()
{
  v1 = [*v0 actionIcon];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 imageWithRenderingMode:2];
    v4 = Image.init(uiImage:)();

    return v4;
  }

  else
  {

    return Image.init(_internalSystemName:)();
  }
}

uint64_t initializeBufferWithCopyOfBuffer for ContentDimmingView(uint64_t result, __int16 *a2)
{
  v2 = *a2;
  *(result + 2) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for ContentDimmingView(unsigned __int16 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ContentDimmingView(uint64_t result, unsigned int a2, unsigned int a3)
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

void *sub_10009ED9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1;
  v14 = static HorizontalAlignment.center.getter();
  v18 = 0;
  sub_10009EFB0(v2 & 0x10101, __src);
  memcpy(__dst, __src, 0x239uLL);
  memcpy(v20, __src, 0x239uLL);
  sub_1000138BC(__dst, v15, &qword_1001D8938, &qword_100177D18);
  sub_10001370C(v20, &qword_1001D8938, &qword_100177D18);
  memcpy(&v17[7], __dst, 0x239uLL);
  v4 = v18;
  v13 = static Edge.Set.all.getter();
  v5 = static Alignment.center.getter();
  v7 = v6;
  if ((v2 & 0x10000) != 0)
  {
    v8 = 16.0;
  }

  else
  {
    v8 = 0.0;
  }

  v9 = a2 + *(sub_1000033A8(&qword_1001D8940, &qword_100177D20) + 36);
  v10 = static Edge.Set.all.getter();
  *__src = v8;
  LOBYTE(__src[1]) = 1;
  *(&__src[1] + 1) = v10;
  sub_1000033A8(&qword_1001D8948, &qword_100177D28);
  sub_1000033A8(&qword_1001D8950, &qword_100177D30);
  sub_10009FA0C();
  sub_10009FBDC();
  View.animation<A>(_:body:)();
  v11 = (v9 + *(sub_1000033A8(&qword_1001D89A8, &qword_100177D58) + 36));
  *v11 = v5;
  v11[1] = v7;
  *a2 = v14;
  *(a2 + 8) = 0;
  *(a2 + 16) = v4;
  result = memcpy((a2 + 17), v17, 0x240uLL);
  *(a2 + 593) = v13;
  *(a2 + 594) = 0;
  return result;
}

uint64_t sub_10009EFB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1;
  v31 = static Alignment.center.getter();
  v34 = v3;
  v33 = static Color.clear.getter();
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v4 = static Alignment.center.getter();
  v6 = v5;
  sub_10009F764(&v73);
  v117[0] = v73;
  v117[1] = *v74;
  *&v118 = *&v74[16];
  WORD4(v118) = v75;
  *&v119 = v4;
  *(&v119 + 1) = v6;
  v105 = v118;
  v106 = v119;
  v103 = v73;
  v104 = *v74;
  v120 = v73;
  v121 = *v74;
  v122 = *&v74[8];
  v123 = v75;
  v124 = v4;
  v125 = v6;
  sub_1000138BC(v117, &v73, &qword_1001D89B0, &unk_100177D60);
  sub_10001370C(&v120, &qword_1001D89B0, &unk_100177D60);
  v32 = v2 & 1;
  if (v2)
  {
    v7 = 1.0;
  }

  else
  {
    v7 = 0.0;
  }

  v35 = static Animation.linear(duration:)();
  v8 = static Alignment.center.getter();
  v10 = v9;
  v11 = static Color.clear.getter();
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  static Alignment.center.getter();
  v29 = HIBYTE(v2) & 1;
  if ((v2 & 0x100) != 0)
  {
    v12 = 1.0;
  }

  else
  {
    v12 = 0.0;
  }

  _FrameLayout.init(width:height:alignment:)();
  sub_1000033A8(&qword_1001D3ED8, &qword_100170A00);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_100177C60;
  static Color.black.getter();
  Color.opacity(_:)();

  *(v13 + 32) = Gradient.Stop.init(color:location:)();
  *(v13 + 40) = v14;
  static Color.black.getter();
  Color.opacity(_:)();

  *(v13 + 48) = Gradient.Stop.init(color:location:)();
  *(v13 + 56) = v15;
  static Color.black.getter();
  Color.opacity(_:)();

  *(v13 + 64) = Gradient.Stop.init(color:location:)();
  *(v13 + 72) = v16;
  static Color.black.getter();
  Color.opacity(_:)();

  *(v13 + 80) = Gradient.Stop.init(color:location:)();
  *(v13 + 88) = v17;
  static Color.clear.getter();
  *(v13 + 96) = Gradient.Stop.init(color:location:)();
  *(v13 + 104) = v18;
  Gradient.init(stops:)();
  static UnitPoint.bottom.getter();
  static UnitPoint.top.getter();
  LinearGradient.init(gradient:startPoint:endPoint:)();
  v19 = v126;
  v20 = v127;
  v21 = v128;
  v22 = v129;
  v23 = v130;
  v24 = static SafeAreaRegions.all.getter();
  LOBYTE(v13) = static Edge.Set.all.getter();
  v25 = static Alignment.center.getter();
  *&v92 = v19;
  *(&v92 + 1) = v20;
  *&v93 = v21;
  *(&v93 + 1) = v22;
  *&v94 = v23;
  BYTE8(v94) = 0;
  *&v95 = v24;
  BYTE8(v95) = v13;
  *&v96 = v25;
  *(&v96 + 1) = v26;
  v57 = v94;
  v58 = v95;
  v59 = v96;
  v55 = v92;
  v56 = v93;
  v97[0] = v19;
  v97[1] = v20;
  v97[2] = v21;
  v97[3] = v22;
  v97[4] = v23;
  v98 = 0;
  v99 = v24;
  v100 = v13;
  v101 = v25;
  v102 = v26;
  sub_1000138BC(&v92, &v73, &qword_1001D89B8, &qword_100177D70);
  sub_10001370C(v97, &qword_1001D89B8, &qword_100177D70);
  v27 = static Animation.linear(duration:)();
  *&__src[9] = v113;
  *&__src[11] = v114;
  *&__src[13] = v115;
  *&__src[15] = v116;
  *&__src[3] = v110;
  *&__src[5] = v111;
  *&__src[7] = v112;
  *&__src[17] = v107;
  *&__src[19] = v108;
  *&__src[21] = v109;
  *&__src[23] = v103;
  *&__src[25] = v104;
  *&__src[27] = v105;
  __src[0] = v31;
  __src[1] = v34;
  __src[2] = v33;
  *&__src[29] = v106;
  *&__src[31] = v7;
  __src[32] = v35;
  LOBYTE(__src[33]) = v32;
  memcpy(__dst, __src, 0x109uLL);
  *&v71[9] = v66;
  *&v71[11] = v67;
  *&v71[13] = v68;
  *&v71[15] = v69;
  *&v71[3] = v63;
  *&v71[5] = v64;
  *&v71[7] = v65;
  *&v71[17] = v60;
  *&v71[19] = v61;
  *&v71[21] = v62;
  *&v71[25] = v56;
  *&v71[27] = v57;
  *&v71[29] = v58;
  *&v71[31] = v59;
  v54[288] = 0;
  v71[0] = v8;
  v71[1] = v10;
  v71[2] = v11;
  *&v71[23] = v55;
  *&v71[33] = v12;
  v71[34] = v27;
  LOBYTE(v71[35]) = v29;
  memcpy(&v54[7], v71, 0x119uLL);
  memcpy(a2, __dst, 0x110uLL);
  *(a2 + 272) = 0;
  *(a2 + 280) = 0;
  memcpy((a2 + 281), v54, 0x120uLL);
  *&v73 = v8;
  *(&v73 + 1) = v10;
  *v74 = v11;
  v77 = v66;
  v78 = v67;
  v79 = v68;
  v80 = v69;
  *&v74[8] = v63;
  v75 = v64;
  v76 = v65;
  v83 = v62;
  v82 = v61;
  v81 = v60;
  v84 = v55;
  v88 = v59;
  v87 = v58;
  v86 = v57;
  v85 = v56;
  v89 = v12;
  v90 = v27;
  v91 = v29;
  sub_1000138BC(__src, v36, &qword_1001D89C0, &qword_100177D78);
  sub_1000138BC(v71, v36, &qword_1001D89C8, &qword_100177D80);
  sub_10001370C(&v73, &qword_1001D89C8, &qword_100177D80);
  v36[0] = v31;
  v36[1] = v34;
  v36[2] = v33;
  v40 = v113;
  v41 = v114;
  v42 = v115;
  v43 = v116;
  v37 = v110;
  v38 = v111;
  v39 = v112;
  v46 = v109;
  v45 = v108;
  v44 = v107;
  v47 = v103;
  v48 = v104;
  v49 = v105;
  v50 = v106;
  v51 = v7;
  v52 = v35;
  v53 = v32;
  return sub_10001370C(v36, &qword_1001D89C0, &qword_100177D78);
}

__n128 sub_10009F764@<Q0>(uint64_t a1@<X8>)
{
  sub_1000033A8(&qword_1001D3ED8, &qword_100170A00);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100177C60;
  static Color.black.getter();
  Color.opacity(_:)();

  *(v2 + 32) = Gradient.Stop.init(color:location:)();
  *(v2 + 40) = v3;
  static Color.black.getter();
  Color.opacity(_:)();

  *(v2 + 48) = Gradient.Stop.init(color:location:)();
  *(v2 + 56) = v4;
  static Color.black.getter();
  Color.opacity(_:)();

  *(v2 + 64) = Gradient.Stop.init(color:location:)();
  *(v2 + 72) = v5;
  static Color.black.getter();
  Color.opacity(_:)();

  *(v2 + 80) = Gradient.Stop.init(color:location:)();
  *(v2 + 88) = v6;
  static Color.clear.getter();
  *(v2 + 96) = Gradient.Stop.init(color:location:)();
  *(v2 + 104) = v7;
  Gradient.init(stops:)();
  static UnitPoint.top.getter();
  static UnitPoint.bottom.getter();
  LinearGradient.init(gradient:startPoint:endPoint:)();
  v8 = static Edge.Set.all.getter();
  *a1 = v10;
  result = v11;
  *(a1 + 24) = v12;
  *(a1 + 8) = v11;
  *(a1 + 40) = 0;
  *(a1 + 41) = v8;
  return result;
}

uint64_t sub_10009F90C@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  if ((a2 & 0x10000) != 0)
  {
    v5 = 1.0;
  }

  else
  {
    v5 = 0.0;
  }

  v6 = sub_1000033A8(&qword_1001D89A0, &qword_100177D50);
  (*(*(v6 - 8) + 16))(a3, a1, v6);
  result = sub_1000033A8(&qword_1001D8950, &qword_100177D30);
  *(a3 + *(result + 36)) = v5;
  return result;
}

void *sub_10009F9AC@<X0>(uint64_t a1@<X8>)
{
  if (v1[2])
  {
    v2 = 0x10000;
  }

  else
  {
    v2 = 0;
  }

  if (v1[1])
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  return sub_10009ED9C(v3 | *v1 | v2, a1);
}

uint64_t sub_10009F9DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (v2[18])
  {
    v3 = 0x10000;
  }

  else
  {
    v3 = 0;
  }

  if (v2[17])
  {
    v4 = 256;
  }

  else
  {
    v4 = 0;
  }

  return sub_10009F90C(a1, v4 | v2[16] | v3, a2);
}

unint64_t sub_10009FA0C()
{
  result = qword_1001D8958;
  if (!qword_1001D8958)
  {
    sub_10001276C(&qword_1001D8948, &qword_100177D28);
    sub_10009FA98();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D8958);
  }

  return result;
}

unint64_t sub_10009FA98()
{
  result = qword_1001D8960;
  if (!qword_1001D8960)
  {
    sub_10001276C(&qword_1001D8968, &qword_100177D38);
    sub_10009FB24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D8960);
  }

  return result;
}

unint64_t sub_10009FB24()
{
  result = qword_1001D8970;
  if (!qword_1001D8970)
  {
    v1 = sub_10001276C(&qword_1001D8978, &qword_100177D40);
    sub_1000135B4(v1, v2, v3);
    sub_100013608(&qword_1001D8980, &qword_1001D8988, &qword_100177D48, &protocol conformance descriptor for _BackdropEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D8970);
  }

  return result;
}

unint64_t sub_10009FBDC()
{
  result = qword_1001D8990;
  if (!qword_1001D8990)
  {
    sub_10001276C(&qword_1001D8950, &qword_100177D30);
    sub_100013608(&qword_1001D8998, &qword_1001D89A0, &qword_100177D50, &protocol conformance descriptor for PlaceholderContentView<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D8990);
  }

  return result;
}

unint64_t sub_10009FC98()
{
  result = qword_1001D89D0;
  if (!qword_1001D89D0)
  {
    sub_10001276C(&qword_1001D8940, &qword_100177D20);
    sub_10009FD50();
    sub_100013608(&qword_1001D8A08, &qword_1001D89A8, &qword_100177D58, &protocol conformance descriptor for _BackgroundModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D89D0);
  }

  return result;
}

unint64_t sub_10009FD50()
{
  result = qword_1001D89D8;
  if (!qword_1001D89D8)
  {
    sub_10001276C(&qword_1001D89E0, &qword_100177D88);
    sub_10009FDDC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D89D8);
  }

  return result;
}

unint64_t sub_10009FDDC()
{
  result = qword_1001D89E8;
  if (!qword_1001D89E8)
  {
    sub_10001276C(&qword_1001D89F0, &qword_100177D90);
    sub_100013608(&qword_1001D89F8, &qword_1001D8A00, &qword_100177D98, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D89E8);
  }

  return result;
}

void *sub_10009FE94()
{
  swift_getKeyPath();
  sub_1000A0A60(&qword_1001D8BE0, type metadata accessor for SubjectLiftViewModel, &unk_100177E28);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 32);
  v2 = v1;
  return v1;
}

id sub_10009FF3C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000A0A60(&qword_1001D8BE0, type metadata accessor for SubjectLiftViewModel, &unk_100177E28);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 32);
  *a2 = v4;

  return v4;
}

void sub_10009FFF4(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1000A0024(v1);
}

void sub_1000A0024(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 32);
  if (!v4)
  {
    if (!a1)
    {
      v8 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000A0A60(&qword_1001D8BE0, type metadata accessor for SubjectLiftViewModel, &unk_100177E28);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1000A0B60();
  v5 = v4;
  v6 = a1;
  v7 = static NSObject.== infix(_:_:)();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v2 + 32);
LABEL_8:
  *(v2 + 32) = a1;
}

void sub_1000A01A4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  *(a1 + 32) = a2;
  v3 = a2;
}

uint64_t sub_1000A01D8()
{
  swift_getKeyPath();
  sub_1000A0A60(&qword_1001D8BE0, type metadata accessor for SubjectLiftViewModel, &unk_100177E28);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 40);
}

void sub_1000A027C(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000A0A60(&qword_1001D8BE0, type metadata accessor for SubjectLiftViewModel, &unk_100177E28);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 48);
  *a2 = *(v3 + 40);
  *(a2 + 8) = v4;
}

double sub_1000A0360(uint64_t a1, char a2)
{
  if ((*(v2 + 48) & 1) == 0)
  {
    if ((a2 & 1) != 0 || *(v2 + 40) != a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    *(v2 + 40) = a1;
    *(v2 + 48) = a2 & 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_6;
  }

LABEL_7:
  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_1000A0A60(&qword_1001D8BE0, type metadata accessor for SubjectLiftViewModel, &unk_100177E28);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return result;
}

uint64_t sub_1000A0494(uint64_t result, uint64_t a2, char a3)
{
  *(result + 40) = a2;
  *(result + 48) = a3 & 1;
  return result;
}

void *sub_1000A04A4()
{
  swift_getKeyPath();
  sub_1000A0A60(&qword_1001D8BE0, type metadata accessor for SubjectLiftViewModel, &unk_100177E28);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 56);
  v2 = v1;
  return v1;
}

id sub_1000A054C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000A0A60(&qword_1001D8BE0, type metadata accessor for SubjectLiftViewModel, &unk_100177E28);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 56);
  *a2 = v4;

  return v4;
}

void sub_1000A0604(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1000A0634(v1);
}

void sub_1000A0634(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 56);
  if (!v4)
  {
    if (!a1)
    {
      v7 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000A0A60(&qword_1001D8BE0, type metadata accessor for SubjectLiftViewModel, &unk_100177E28);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  type metadata accessor for CGImage(0);
  sub_1000A0A60(&qword_1001D8BE8, type metadata accessor for CGImage, &unk_10016FB70);
  v5 = v4;
  v6 = static _CFObject.== infix(_:_:)();

  if ((v6 & 1) == 0)
  {
    goto LABEL_6;
  }

  v7 = *(v2 + 56);
LABEL_8:
  *(v2 + 56) = a1;
}

void sub_1000A07E4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 56);
  *(a1 + 56) = a2;
  v3 = a2;
}

uint64_t sub_1000A0818()
{

  v1 = OBJC_IVAR____TtC6Tamale20SubjectLiftViewModel___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SubjectLiftViewModel(uint64_t a1)
{
  result = qword_1001D8A40;
  if (!qword_1001D8A40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000A0930(uint64_t a1)
{
  result = type metadata accessor for ObservationRegistrar();
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

void sub_1000A09F8(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1000A0634(v1);
}

void sub_1000A0A28()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 56);
  *(v1 + 56) = v2;
  v4 = v2;
}

uint64_t sub_1000A0A60(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1000A0AE0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  *(v1 + 40) = *(v0 + 24);
  *(v1 + 48) = v2;
}

void sub_1000A0AF8(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1000A0024(v1);
}

void sub_1000A0B28()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 32);
  *(v1 + 32) = v2;
  v4 = v2;
}

unint64_t sub_1000A0B60()
{
  result = qword_1001D8BF0;
  if (!qword_1001D8BF0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1001D8BF0);
  }

  return result;
}

uint64_t sub_1000A0BAC()
{
  type metadata accessor for SubjectLiftAnalysisViewModel(0);
  swift_allocObject();
  *(v0 + 16) = sub_1000C5A1C();
  type metadata accessor for SubjectLiftRenderViewModel();
  swift_allocObject();
  v1 = sub_10009BA20();
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  *(v0 + 24) = v1;
  *(v0 + 48) = 1;
  *(v0 + 56) = 0;
  *(v0 + 64) = [objc_allocWithZone(VKCImageAnalyzer) init];
  ObservationRegistrar.init()();
  return v0;
}

uint64_t sub_1000A0C60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1000033A8(&qword_1001D8BF8, &unk_100177ED0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1000A0D30(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_1000033A8(&qword_1001D8BF8, &unk_100177ED0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for ModernShutterButton(uint64_t a1)
{
  result = qword_1001D8C58;
  if (!qword_1001D8C58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000A0E2C(uint64_t a1)
{
  sub_1000A0F48(319, &qword_1001D4498, type metadata accessor for CameraController, &type metadata accessor for Environment);
  if (v1 <= 0x3F)
  {
    sub_10001B610();
    if (v2 <= 0x3F)
    {
      sub_10001B55C();
      if (v3 <= 0x3F)
      {
        sub_1000A0F48(319, &unk_1001D8C68, &type metadata accessor for Date, &type metadata accessor for State);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1000A0F48(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1000A0FC8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v90 = a1;
  v68 = type metadata accessor for EnvironmentValues();
  v67 = *(v68 - 8);
  __chkstk_darwin(v68);
  v66 = &v65 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ModernShutterButton(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_1000033A8(&qword_1001D8CA8, &qword_100177F48);
  __chkstk_darwin(v73);
  v9 = &v65 - v8;
  v83 = sub_1000033A8(&qword_1001D8CB0, &qword_100177F50);
  v10 = __chkstk_darwin(v83);
  v12 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v82 = &v65 - v13;
  v81 = sub_1000033A8(&qword_1001D8CB8, &qword_100177F58);
  v80 = *(v81 - 8);
  __chkstk_darwin(v81);
  v76 = &v65 - v14;
  v75 = sub_1000033A8(&qword_1001D8CC0, &qword_100177F60);
  __chkstk_darwin(v75);
  v77 = &v65 - v15;
  v74 = sub_1000033A8(&qword_1001D8CC8, &qword_100177F68);
  __chkstk_darwin(v74);
  v79 = &v65 - v16;
  v84 = sub_1000033A8(&qword_1001D8CD0, &qword_100177F70);
  __chkstk_darwin(v84);
  v78 = &v65 - v17;
  v87 = sub_1000033A8(&qword_1001D8CD8, &qword_100177F78);
  v86 = *(v87 - 8);
  __chkstk_darwin(v87);
  v85 = &v65 - v18;
  v88 = sub_1000033A8(&qword_1001D8CE0, &qword_100177F80);
  __chkstk_darwin(v88);
  v89 = &v65 - v19;
  sub_1000A37BC(v2, v7);
  v20 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v91 = v20 + v6;
  v21 = swift_allocObject();
  v92 = v20;
  sub_1000A3824(v7, v21 + v20);
  v93 = v2;
  sub_1000033A8(&qword_1001D8CE8, &qword_100177F88);
  sub_100013608(&qword_1001D8CF0, &qword_1001D8CE8, &qword_100177F88, &protocol conformance descriptor for ZStack<A>);
  Button.init(action:label:)();
  v22 = &v9[*(sub_1000033A8(&qword_1001D8CF8, &unk_100177F90) + 36)];
  v72 = sub_1000033A8(&qword_1001D45B8, &qword_1001765E0);
  v23 = *(v72 + 28);
  v24 = enum case for ColorScheme.light(_:);
  v25 = type metadata accessor for ColorScheme();
  v26 = *(v25 - 8);
  v27 = *(v26 + 104);
  v71 = v24;
  v70 = v27;
  v69 = v26 + 104;
  v27(v22 + v23, v24, v25);
  *v22 = swift_getKeyPath();
  v28 = *(v2 + 16);
  LODWORD(v22) = static MatchedGeometryProperties.position.getter();
  static UnitPoint.center.getter();
  v30 = v29;
  v32 = v31;
  v33 = &v9[*(sub_1000033A8(&qword_1001D8D00, &qword_100177FD0) + 36)];
  *v33 = 0xD000000000000013;
  *(v33 + 1) = 0x8000000100177EC0;
  *(v33 + 2) = v28;
  *(v33 + 6) = v22;
  *(v33 + 4) = v30;
  *(v33 + 5) = v32;
  v33[48] = 1;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v34 = &v9[*(v73 + 36)];
  v35 = v98;
  *v34 = v97;
  *(v34 + 1) = v35;
  *(v34 + 2) = v99;
  sub_1000A3C68();
  View.accessibilityIdentifier(_:)();
  sub_10001370C(v9, &qword_1001D8CA8, &qword_100177F48);
  v36 = *(v2 + 48);
  LOBYTE(v94) = *(v2 + 40);
  v95 = v36;
  sub_1000033A8(&qword_1001D3E88, &unk_100171900);
  State.wrappedValue.getter();
  LocalizedStringKey.init(stringLiteral:)();
  v37 = v82;
  ModifiedContent<>.accessibilityLabel(_:)();

  sub_10001370C(v12, &qword_1001D8CB0, &qword_100177F50);
  v38 = sub_1000A3E90();
  sub_1000A3F4C(v38, v39, v40);
  v41 = v76;
  View.buttonStyle<A>(_:)();
  sub_10001370C(v37, &qword_1001D8CB0, &qword_100177F50);
  v42 = v77;
  (*(v80 + 32))(v77, v41, v81);
  *(v42 + *(v75 + 36)) = 0;
  v43 = v79;
  v44 = &v79[*(v74 + 36)];
  v70(v44 + *(v72 + 28), v71, v25);
  *v44 = swift_getKeyPath();
  sub_10002091C(v42, v43, &qword_1001D8CC0, &qword_100177F60);
  sub_1000A37BC(v2, v7);
  v45 = swift_allocObject();
  v46 = v92;
  sub_1000A3824(v7, v45 + v92);
  v47 = v78;
  sub_10002091C(v43, v78, &qword_1001D8CC8, &qword_100177F68);
  v48 = (v47 + *(v84 + 36));
  *v48 = sub_1000A3FA0;
  v48[1] = v45;
  sub_1000A37BC(v2, v7);
  v49 = swift_allocObject();
  sub_1000A3824(v7, v49 + v46);
  sub_1000A4080();
  v50 = v85;
  View.onSceneStateChange(_:)();

  sub_10001370C(v47, &qword_1001D8CD0, &qword_100177F70);
  sub_1000A37BC(v2, v7);
  v51 = swift_allocObject();
  sub_1000A3824(v7, v51 + v46);
  v52 = v89;
  (*(v86 + 32))(v89, v50, v87);
  v53 = (v52 + *(v88 + 36));
  *v53 = sub_1000A42D4;
  v53[1] = v51;
  v53[2] = 0;
  v53[3] = 0;
  v54 = *v2;
  LOBYTE(v43) = *(v2 + 8);

  if ((v43 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v55 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v56 = v66;
    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v67 + 8))(v56, v68);
    v54 = v94;
  }

  swift_getKeyPath();
  v94 = v54;
  sub_1000A5080(&qword_1001D44C0, type metadata accessor for CameraController, &unk_10017C9D0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v57 = *(v54 + OBJC_IVAR____TtC6Tamale16CameraController__runState);
  v58 = *(v54 + OBJC_IVAR____TtC6Tamale16CameraController__runState + 8);
  v59 = *(v54 + OBJC_IVAR____TtC6Tamale16CameraController__runState + 16);
  sub_100060424(v57, v58, v59);

  v94 = v57;
  v95 = v58;
  v96 = v59;
  sub_1000A37BC(v2, v7);
  v60 = swift_allocObject();
  sub_1000A3824(v7, v60 + v92);
  v61 = sub_1000A452C();
  sub_1000A45F4(v61, v62, v63);
  View.onChange<A>(of:initial:_:)();

  sub_1000616E4(v57, v58, v59);
  return sub_10001370C(v52, &qword_1001D8CE0, &qword_100177F80);
}

uint64_t sub_1000A1C50(uint64_t a1)
{
  v19 = a1;
  v2 = type metadata accessor for Logger();
  v21 = *(v2 - 8);
  v22 = v2;
  __chkstk_darwin(v2);
  v20 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v19 - v9;
  Date.init()();
  type metadata accessor for ModernShutterButton(0);
  sub_1000033A8(&qword_1001D8BF8, &unk_100177ED0);
  State.wrappedValue.getter();
  Date.timeIntervalSince(_:)();
  v12 = v11;
  v13 = *(v5 + 8);
  v13(v8, v4);
  if (v12 >= 0.35)
  {
    (*(v5 + 16))(v8, v10, v4);
    State.wrappedValue.setter();
    (*(v1 + 24))(v19);
  }

  else
  {
    v14 = v20;
    static Log.ui.getter();
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "Debounced shutter button tap", v17, 2u);
    }

    (*(v21 + 8))(v14, v22);
  }

  return (v13)(v10, v4);
}

uint64_t sub_1000A1F14@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = static Alignment.center.getter();
  a2[1] = v4;
  v5 = sub_1000033A8(&qword_1001D8D88, &qword_100178038);
  return sub_1000A1F64(a1, a2 + *(v5 + 44));
}

uint64_t sub_1000A1F64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v150 = a2;
  v3 = type metadata accessor for Material._GlassVariant.Size();
  v123 = *(v3 - 8);
  v124 = v3;
  __chkstk_darwin(v3);
  v119 = &v111 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = type metadata accessor for Material._GlassVariant();
  v120 = *(v122 - 8);
  v5 = __chkstk_darwin(v122);
  v117 = &v111 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v118 = &v111 - v7;
  v149 = sub_1000033A8(&qword_1001D8D90, &qword_100178040);
  __chkstk_darwin(v149);
  v125 = &v111 - v8;
  v147 = sub_1000033A8(&qword_1001D8D98, &unk_100178048);
  __chkstk_darwin(v147);
  v148 = &v111 - v9;
  v10 = type metadata accessor for BlurReplaceTransition.Configuration();
  v128 = *(v10 - 8);
  v129 = v10;
  v11 = __chkstk_darwin(v10);
  v126 = &v111 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v127 = &v111 - v13;
  v142 = type metadata accessor for BlurReplaceTransition();
  v133 = *(v142 - 8);
  __chkstk_darwin(v142);
  v131 = &v111 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = type metadata accessor for OpacityTransition();
  v132 = *(v135 - 8);
  __chkstk_darwin(v135);
  v130 = &v111 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = sub_1000033A8(&qword_1001D4E00, &qword_100172390);
  v141 = *(v143 - 8);
  v16 = __chkstk_darwin(v143);
  v134 = &v111 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v136 = &v111 - v18;
  v19 = type metadata accessor for DynamicTypeSize();
  v115 = *(v19 - 8);
  v116 = v19;
  __chkstk_darwin(v19);
  v114 = &v111 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1000033A8(&qword_1001D8DA0, &qword_100178058);
  v112 = *(v21 - 8);
  v113 = v21;
  __chkstk_darwin(v21);
  v23 = &v111 - v22;
  v138 = sub_1000033A8(&qword_1001D8DA8, &qword_100178060);
  __chkstk_darwin(v138);
  v121 = &v111 - v24;
  v25 = sub_1000033A8(&qword_1001D8DB0, &qword_100178068);
  v26 = __chkstk_darwin(v25 - 8);
  v146 = &v111 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v145 = &v111 - v28;
  v29 = sub_1000033A8(&qword_1001D8DB8, &qword_100178070);
  v30 = __chkstk_darwin(v29);
  v144 = &v111 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v157 = &v111 - v32;
  v33 = *(a1 + 40);
  v34 = *(a1 + 48);
  LOBYTE(v164) = v33;
  *(&v164 + 1) = v34;
  sub_1000033A8(&qword_1001D3E88, &unk_100171900);
  State.wrappedValue.getter();
  if (v158)
  {
    v153 = 0uLL;
    v154 = 0uLL;
    v139 = 0;
    v140 = 0;
    v155 = 0;
    v156 = 0;
    v151 = 0;
    v152 = 0;
    v137 = 0;
  }

  else
  {
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v139 = v174;
    v140 = v173;
    v137 = 256;
    v155 = v176;
    v156 = v175;
    *&v154 = 0x3FE3333333333333;
    *(&v154 + 1) = 0x3FF8000000000000;
    *&v153 = &off_1001BEE78;
    *(&v153 + 1) = 0x4044000000000000;
    v151 = v178;
    v152 = v177;
  }

  v35 = static Color.clear.getter();
  v36 = v157;
  v37 = v157 + *(v29 + 36);
  v38 = *(type metadata accessor for MitosisCellModifier(0) + 32);
  v39 = enum case for RoundedCornerStyle.continuous(_:);
  v40 = type metadata accessor for RoundedCornerStyle();
  v41 = (*(*(v40 - 8) + 104))(v37 + v38, v39, v40);
  sub_1000A497C(v41, v42, v43);
  v44 = AnyShape.init<A>(_:)();
  *v37 = 0;
  *(v37 + 8) = v44;
  *(v37 + 16) = 0;
  *(v37 + 24) = 1;
  *(v37 + 32) = 0;
  *(v37 + 40) = 1;
  *v36 = v35;
  *(v36 + 8) = 256;
  LOBYTE(v164) = v33;
  *(&v164 + 1) = v34;
  State.wrappedValue.getter();
  if (v158 == 1)
  {
    v45 = Image.init(_internalSystemName:)();
    v46 = static Font.title.getter();
    KeyPath = swift_getKeyPath();
    *&v164 = v45;
    *(&v164 + 1) = KeyPath;
    *&v165 = v46;
    static Font.Weight.regular.getter();
    v48 = sub_1000033A8(&qword_1001D46B8, &unk_100172820);
    v49 = sub_100022DB8();
    View.fontWeight(_:)();

    v51 = v114;
    v50 = v115;
    v52 = v116;
    (*(v115 + 104))(v114, enum case for DynamicTypeSize.large(_:), v116);
    *&v164 = v48;
    *(&v164 + 1) = v49;
    swift_getOpaqueTypeConformance2();
    v53 = v121;
    v54 = v113;
    View.dynamicTypeSize(_:)();
    (*(v50 + 8))(v51, v52);
    (*(v112 + 8))(v23, v54);
    v55 = static Color.white.getter();
    v56 = swift_getKeyPath();
    v57 = (v53 + *(sub_1000033A8(&qword_1001D8DF0, &qword_100178090) + 36));
    *v57 = v56;
    v57[1] = v55;
    v58 = v130;
    OpacityTransition.init()();
    v59 = v127;
    static BlurReplaceTransition.Configuration.downUp.getter();
    v61 = v128;
    v60 = v129;
    (*(v128 + 16))(v126, v59, v129);
    v62 = v131;
    BlurReplaceTransition.init(configuration:)();
    (*(v61 + 8))(v59, v60);
    v63 = sub_1000A5080(&qword_1001D4E70, &type metadata accessor for OpacityTransition, &protocol conformance descriptor for OpacityTransition);
    v64 = sub_1000A5080(&qword_1001D4E78, &type metadata accessor for BlurReplaceTransition, &protocol conformance descriptor for BlurReplaceTransition);
    v66 = v135;
    v65 = v136;
    v67 = v142;
    Transition.combined<A>(with:)();
    (*(v133 + 8))(v62, v67);
    (*(v132 + 8))(v58, v66);
    v68 = v141;
    v69 = v143;
    (*(v141 + 16))(v134, v65, v143);
    *&v164 = v66;
    *(&v164 + 1) = v67;
    *&v165 = v63;
    *(&v165 + 1) = v64;
    swift_getOpaqueTypeConformance2();
    v70 = AnyTransition.init<A>(_:)();
    (*(v68 + 8))(v65, v69);
    *(v53 + *(v138 + 36)) = v70;
    sub_1000138BC(v53, v148, &qword_1001D8DA8, &qword_100178060);
    swift_storeEnumTagMultiPayload();
    sub_1000A49D0();
    sub_1000A4BC0();
    v71 = v145;
    _ConditionalContent<>.init(storage:)();
    sub_10001370C(v53, &qword_1001D8DA8, &qword_100178060);
  }

  else
  {
    v72 = v117;
    static Material._GlassVariant.regular.getter();
    v74 = v123;
    v73 = v124;
    v75 = v119;
    (*(v123 + 104))(v119, enum case for Material._GlassVariant.Size.medium(_:), v124);
    v76 = v118;
    Material._GlassVariant.size(_:)();
    (*(v74 + 8))(v75, v73);
    v77 = *(v120 + 8);
    v78 = v122;
    v77(v72, v122);
    v79 = v125;
    static Material._glass(_:)();
    v77(v76, v78);
    *(v79 + *(sub_1000033A8(&qword_1001D8DC8, &qword_100178078) + 56)) = 256;
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v80 = (v79 + *(sub_1000033A8(&qword_1001D8DD0, &qword_100178080) + 36));
    v81 = v180;
    *v80 = v179;
    v80[1] = v81;
    v80[2] = v181;
    v82 = (v79 + *(sub_1000033A8(&qword_1001D8DD8, &qword_100178088) + 36));
    v83 = *(sub_1000033A8(&qword_1001D45B8, &qword_1001765E0) + 28);
    v84 = enum case for ColorScheme.light(_:);
    v85 = type metadata accessor for ColorScheme();
    (*(*(v85 - 8) + 104))(v82 + v83, v84, v85);
    *v82 = swift_getKeyPath();
    v86 = v130;
    OpacityTransition.init()();
    v87 = v127;
    static BlurReplaceTransition.Configuration.downUp.getter();
    v89 = v128;
    v88 = v129;
    (*(v128 + 16))(v126, v87, v129);
    v90 = v131;
    BlurReplaceTransition.init(configuration:)();
    (*(v89 + 8))(v87, v88);
    v91 = sub_1000A5080(&qword_1001D4E70, &type metadata accessor for OpacityTransition, &protocol conformance descriptor for OpacityTransition);
    v92 = sub_1000A5080(&qword_1001D4E78, &type metadata accessor for BlurReplaceTransition, &protocol conformance descriptor for BlurReplaceTransition);
    v94 = v135;
    v93 = v136;
    v95 = v142;
    Transition.combined<A>(with:)();
    (*(v133 + 8))(v90, v95);
    (*(v132 + 8))(v86, v94);
    v96 = v141;
    v97 = v143;
    (*(v141 + 16))(v134, v93, v143);
    *&v164 = v94;
    *(&v164 + 1) = v95;
    *&v165 = v91;
    *(&v165 + 1) = v92;
    swift_getOpaqueTypeConformance2();
    v98 = AnyTransition.init<A>(_:)();
    (*(v96 + 8))(v93, v97);
    v99 = v148;
    *(v79 + *(v149 + 36)) = v98;
    sub_1000138BC(v79, v99, &qword_1001D8D90, &qword_100178040);
    swift_storeEnumTagMultiPayload();
    sub_1000A49D0();
    sub_1000A4BC0();
    v71 = v145;
    _ConditionalContent<>.init(storage:)();
    sub_10001370C(v79, &qword_1001D8D90, &qword_100178040);
  }

  v100 = v157;
  v101 = v144;
  sub_1000138BC(v157, v144, &qword_1001D8DB8, &qword_100178070);
  v102 = v146;
  sub_1000138BC(v71, v146, &qword_1001D8DB0, &qword_100178068);
  v158 = v153;
  v159 = v154;
  v104 = v139;
  v103 = v140;
  *&v160 = v140;
  *(&v160 + 1) = v139;
  *&v161 = v156;
  *(&v161 + 1) = v155;
  *&v162 = v152;
  *(&v162 + 1) = v151;
  v105 = v137;
  v163 = v137;
  v106 = v150;
  *(v150 + 80) = v137;
  v107 = v161;
  v106[2] = v160;
  v106[3] = v107;
  v106[4] = v162;
  v108 = v159;
  *v106 = v158;
  v106[1] = v108;
  v109 = sub_1000033A8(&qword_1001D8E18, &qword_100178098);
  sub_1000138BC(v101, v106 + *(v109 + 48), &qword_1001D8DB8, &qword_100178070);
  sub_1000138BC(v102, v106 + *(v109 + 64), &qword_1001D8DB0, &qword_100178068);
  sub_1000138BC(&v158, &v164, &qword_1001D8E20, &qword_1001780A0);
  sub_10001370C(v71, &qword_1001D8DB0, &qword_100178068);
  sub_10001370C(v100, &qword_1001D8DB8, &qword_100178070);
  sub_10001370C(v102, &qword_1001D8DB0, &qword_100178068);
  sub_10001370C(v101, &qword_1001D8DB8, &qword_100178070);
  v164 = v153;
  v165 = v154;
  v166 = v103;
  v167 = v104;
  v168 = v156;
  v169 = v155;
  v170 = v152;
  v171 = v151;
  v172 = v105;
  return sub_10001370C(&v164, &qword_1001D8E20, &qword_1001780A0);
}

uint64_t sub_1000A30D4(uint64_t a1, unsigned int *a2)
{
  v3 = type metadata accessor for ActionAnalytics.ActionSource();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 104))(v6, *a2, v3);
  sub_1000A1C50(v6);
  return (*(v4 + 8))(v6, v3);
}

void sub_1000A31C4(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for SceneState();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v10[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v4 + 104))(v6, enum case for SceneState.didBecomeActive(_:), v3);
  v7 = static SceneState.== infix(_:_:)();
  (*(v4 + 8))(v6, v3);
  if (v7)
  {
    v8 = static Animation.linear(duration:)();
    __chkstk_darwin(v8);
    *&v10[-16] = a2;
    withAnimation<A>(_:_:)();
  }

  else
  {
    v9 = *(a2 + 64);
    v10[16] = *(a2 + 56);
    v11 = v9;
    v10[15] = 0;
    sub_1000033A8(&qword_1001D3E88, &unk_100171900);
    State.wrappedValue.setter();
  }
}

double sub_1000A3374(uint64_t a1, __n128 a2)
{
  static Animation.linear(duration:)();
  withAnimation<A>(_:_:)();

  return result;
}

double sub_1000A33EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for ModernShutterButton(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000033A8(&qword_1001D41B0, &qword_100170B60);
  __chkstk_darwin(v9 - 8);
  v11 = &v19 - v10;
  v12 = *a2;
  v13 = *(a2 + 8);
  LOBYTE(a2) = *(a2 + 16);
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  sub_1000A37BC(a3, v8);
  type metadata accessor for MainActor();
  sub_100060424(v12, v13, a2);
  v15 = static MainActor.shared.getter();
  v16 = (*(v6 + 80) + 49) & ~*(v6 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = v15;
  *(v17 + 24) = &protocol witness table for MainActor;
  *(v17 + 32) = v12;
  *(v17 + 40) = v13;
  *(v17 + 48) = a2;
  sub_1000A3824(v8, v17 + v16);
  sub_1000154EC(0, 0, v11, &unk_100178030, v17);

  return result;
}

uint64_t sub_1000A35D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  *(v7 + 32) = a7;
  *(v7 + 50) = a6;
  type metadata accessor for MainActor();
  *(v7 + 40) = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000A366C, v9, v8);
}

uint64_t sub_1000A366C()
{
  v1 = *(v0 + 50);

  if (v1 > 1)
  {
    if (v1 == 2)
    {
      goto LABEL_8;
    }

    v3 = 0;
    v2 = 1;
  }

  else
  {
    if (!v1)
    {
      goto LABEL_8;
    }

    v2 = 0;
    v3 = 1;
  }

  v4 = *(v0 + 32);
  *(v0 + 48) = v2;
  v5 = *(v4 + 40);
  v6 = *(v4 + 48);
  *(v0 + 16) = v5;
  *(v0 + 24) = v6;
  sub_1000033A8(&qword_1001D3E88, &unk_100171900);
  State.wrappedValue.getter();
  if (v3 == *(v0 + 49))
  {
    v7 = *(v0 + 32);
    static Animation.easeInOut(duration:)();
    v8 = swift_task_alloc();
    *(v8 + 16) = v7;
    *(v8 + 24) = v0 + 48;
    withAnimation<A>(_:_:)();
  }

LABEL_8:
  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1000A37BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ModernShutterButton(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000A3824(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ModernShutterButton(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000A389C()
{
  v0 = type metadata accessor for ButtonStyleConfiguration.Label();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v21[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_1000033A8(&qword_1001D8E28, &unk_100178460);
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v7 = &v21[-v6];
  v8 = sub_1000033A8(&qword_1001D8E30, &unk_100178170);
  __chkstk_darwin(v8);
  v10 = &v21[-v9];
  ButtonStyleConfiguration.label.getter();
  if (ButtonStyleConfiguration.isPressed.getter())
  {
    v11 = 0.85;
  }

  else
  {
    v11 = 1.0;
  }

  static UnitPoint.center.getter();
  v13 = v12;
  v15 = v14;
  (*(v1 + 32))(v7, v3, v0);
  v16 = &v7[*(v5 + 44)];
  *v16 = v11;
  v16[1] = v11;
  *(v16 + 2) = v13;
  *(v16 + 3) = v15;
  ButtonStyleConfiguration.isPressed.getter();
  v17 = static Animation.spring(response:dampingFraction:blendDuration:)();
  v18 = ButtonStyleConfiguration.isPressed.getter();
  sub_1000A4E9C(v7, v10);
  v19 = &v10[*(v8 + 36)];
  *v19 = v17;
  v19[8] = v18 & 1;
  v21[15] = ButtonStyleConfiguration.isPressed.getter() & 1;
  sub_1000A4F0C();
  View.onChange<A>(of:initial:_:)();
  return sub_10001370C(v10, &qword_1001D8E30, &unk_100178170);
}

uint64_t sub_1000A3B50@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000A5080(&qword_1001D44C0, type metadata accessor for CameraController, &unk_10017C9D0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = v3 + OBJC_IVAR____TtC6Tamale16CameraController__runState;
  v5 = *(v3 + OBJC_IVAR____TtC6Tamale16CameraController__runState);
  v6 = *(v3 + OBJC_IVAR____TtC6Tamale16CameraController__runState + 8);
  *a2 = v5;
  *(a2 + 8) = v6;
  v7 = *(v4 + 16);
  *(a2 + 16) = v7;
  return sub_100060424(v5, v6, v7);
}

double sub_1000A3C10(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  sub_100060424(*a1, v2, v3);
  return sub_10014A0F4(v1, v2, v3);
}

unint64_t sub_1000A3C68()
{
  result = qword_1001D8D08;
  if (!qword_1001D8D08)
  {
    sub_10001276C(&qword_1001D8CA8, &qword_100177F48);
    sub_1000A3CF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D8D08);
  }

  return result;
}

unint64_t sub_1000A3CF4()
{
  result = qword_1001D8D10;
  if (!qword_1001D8D10)
  {
    sub_10001276C(&qword_1001D8D00, &qword_100177FD0);
    sub_1000A3DAC();
    sub_100013608(&qword_1001D8D30, &qword_1001D8D38, &unk_100177FE0, &protocol conformance descriptor for _MatchedGeometryEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D8D10);
  }

  return result;
}

unint64_t sub_1000A3DAC()
{
  result = qword_1001D8D18;
  if (!qword_1001D8D18)
  {
    sub_10001276C(&qword_1001D8CF8, &unk_100177F90);
    sub_100013608(&qword_1001D8D20, &qword_1001D8D28, &qword_100177FD8, &protocol conformance descriptor for Button<A>);
    sub_100013608(&qword_1001D45B0, &qword_1001D45B8, &qword_1001765E0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D8D18);
  }

  return result;
}

unint64_t sub_1000A3E90()
{
  result = qword_1001D8D40;
  if (!qword_1001D8D40)
  {
    sub_10001276C(&qword_1001D8CB0, &qword_100177F50);
    sub_1000A3C68();
    sub_1000A5080(&qword_1001D3DB8, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D8D40);
  }

  return result;
}

unint64_t sub_1000A3F4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1001D8D48;
  if (!qword_1001D8D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D8D48);
  }

  return result;
}

void sub_1000A4010(uint64_t a1)
{
  v3 = *(type metadata accessor for ModernShutterButton(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  sub_1000A31C4(a1, v4);
}

unint64_t sub_1000A4080()
{
  result = qword_1001D8D50;
  if (!qword_1001D8D50)
  {
    sub_10001276C(&qword_1001D8CD0, &qword_100177F70);
    v3 = sub_1000A410C();
    sub_1000671B4(v3, v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D8D50);
  }

  return result;
}

unint64_t sub_1000A410C()
{
  result = qword_1001D8D58;
  if (!qword_1001D8D58)
  {
    sub_10001276C(&qword_1001D8CC8, &qword_100177F68);
    sub_1000A41C4();
    sub_100013608(&qword_1001D45B0, &qword_1001D45B8, &qword_1001765E0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D8D58);
  }

  return result;
}

unint64_t sub_1000A41C4()
{
  result = qword_1001D8D60;
  if (!qword_1001D8D60)
  {
    sub_10001276C(&qword_1001D8CC0, &qword_100177F60);
    sub_10001276C(&qword_1001D8CB0, &qword_100177F50);
    v3 = sub_1000A3E90();
    sub_1000A3F4C(v3, v1, v2);
    swift_getOpaqueTypeConformance2();
    sub_100013608(&qword_1001D8D68, &qword_1001D8D70, &qword_100177FF0, &protocol conformance descriptor for _ContentShapeModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D8D60);
  }

  return result;
}

double sub_1000A42D4()
{
  v1 = *(type metadata accessor for ModernShutterButton(0) - 8);
  v3 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1000A3374(v3, v2);
}

double sub_1000A4338(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  sub_100060424(*a1, v2, v3);
  return sub_10014A0F4(v1, v2, v3);
}

uint64_t sub_1000A4388()
{
  v1 = (type metadata accessor for ModernShutterButton(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v2 + v1[11];
  v4 = type metadata accessor for Date();
  (*(*(v4 - 8) + 8))(v3, v4);
  sub_1000033A8(&qword_1001D8BF8, &unk_100177ED0);

  return swift_deallocObject();
}

double sub_1000A44AC(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for ModernShutterButton(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1000A33EC(a1, a2, v6);
}

unint64_t sub_1000A452C()
{
  result = qword_1001D8D78;
  if (!qword_1001D8D78)
  {
    sub_10001276C(&qword_1001D8CE0, &qword_100177F80);
    sub_10001276C(&qword_1001D8CD0, &qword_100177F70);
    sub_1000A4080();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D8D78);
  }

  return result;
}

unint64_t sub_1000A45F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1001D8D80;
  if (!qword_1001D8D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D8D80);
  }

  return result;
}

uint64_t sub_1000A4648()
{
  v1 = (type metadata accessor for ModernShutterButton(0) - 8);
  v2 = (*(*v1 + 80) + 49) & ~*(*v1 + 80);
  swift_unknownObjectRelease();
  sub_1000616E4(*(v0 + 32), *(v0 + 40), *(v0 + 48));

  v3 = v0 + v2 + v1[11];
  v4 = type metadata accessor for Date();
  (*(*(v4 - 8) + 8))(v3, v4);
  sub_1000033A8(&qword_1001D8BF8, &unk_100177ED0);

  return swift_deallocObject();
}

uint64_t sub_1000A4780(uint64_t a1)
{
  v4 = *(type metadata accessor for ModernShutterButton(0) - 8);
  v5 = (*(v4 + 80) + 49) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  v9 = *(v1 + 40);
  v10 = *(v1 + 48);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_100019340;

  return sub_1000A35D0(a1, v6, v7, v8, v9, v10, v1 + v5);
}

unint64_t sub_1000A497C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1001D8DC0;
  if (!qword_1001D8DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D8DC0);
  }

  return result;
}

unint64_t sub_1000A49D0()
{
  result = qword_1001D8DE0;
  if (!qword_1001D8DE0)
  {
    sub_10001276C(&qword_1001D8DA8, &qword_100178060);
    sub_1000A4A88();
    sub_100013608(&qword_1001D3CD0, &qword_1001D3CC8, &qword_100176850, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D8DE0);
  }

  return result;
}

unint64_t sub_1000A4A88()
{
  result = qword_1001D8DE8;
  if (!qword_1001D8DE8)
  {
    sub_10001276C(&qword_1001D8DF0, &qword_100178090);
    sub_10001276C(&qword_1001D8DA0, &qword_100178058);
    sub_10001276C(&qword_1001D46B8, &unk_100172820);
    sub_100022DB8();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_100013608(&qword_1001D46D0, &qword_1001D46D8, &unk_10017B710, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D8DE8);
  }

  return result;
}

unint64_t sub_1000A4BC0()
{
  result = qword_1001D8DF8;
  if (!qword_1001D8DF8)
  {
    sub_10001276C(&qword_1001D8D90, &qword_100178040);
    sub_1000A4C78();
    sub_100013608(&qword_1001D3CD0, &qword_1001D3CC8, &qword_100176850, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D8DF8);
  }

  return result;
}

unint64_t sub_1000A4C78()
{
  result = qword_1001D8E00;
  if (!qword_1001D8E00)
  {
    sub_10001276C(&qword_1001D8DD8, &qword_100178088);
    sub_1000A4D30();
    sub_100013608(&qword_1001D45B0, &qword_1001D45B8, &qword_1001765E0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D8E00);
  }

  return result;
}

unint64_t sub_1000A4D30()
{
  result = qword_1001D8E08;
  if (!qword_1001D8E08)
  {
    sub_10001276C(&qword_1001D8DD0, &qword_100178080);
    sub_100013608(&qword_1001D8E10, &qword_1001D8DC8, &qword_100178078, &protocol conformance descriptor for _ShapeView<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D8E08);
  }

  return result;
}

uint64_t sub_1000A4E08()
{
  sub_10001276C(&qword_1001D8CE0, &qword_100177F80);
  v3 = sub_1000A452C();
  sub_1000A45F4(v3, v0, v1);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1000A4E9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000033A8(&qword_1001D8E28, &unk_100178460);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000A4F0C()
{
  result = qword_1001D8E38;
  if (!qword_1001D8E38)
  {
    sub_10001276C(&qword_1001D8E30, &unk_100178170);
    sub_1000A4FC4();
    sub_100013608(&qword_1001D4780, &qword_1001D4788, &unk_100178470, &protocol conformance descriptor for _AnimationModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D8E38);
  }

  return result;
}

unint64_t sub_1000A4FC4()
{
  result = qword_1001D8E40;
  if (!qword_1001D8E40)
  {
    sub_10001276C(&qword_1001D8E28, &unk_100178460);
    sub_1000A5080(&qword_1001D4770, &type metadata accessor for ButtonStyleConfiguration.Label, &protocol conformance descriptor for ButtonStyleConfiguration.Label);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D8E40);
  }

  return result;
}

uint64_t sub_1000A5080(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000A50C8()
{
  sub_10001276C(&qword_1001D8E30, &unk_100178170);
  sub_1000A4F0C();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1000A517C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000033A8(&qword_1001D8E48, &unk_100178180);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1000A5258(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1000033A8(&qword_1001D8E48, &unk_100178180);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for SalientActionButton(uint64_t a1)
{
  result = qword_1001D8EA8;
  if (!qword_1001D8EA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000A5368(uint64_t a1)
{
  sub_1000A5444(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for NewSaliencyModel();
    if (v2 <= 0x3F)
    {
      type metadata accessor for SheetTrackingAssistant();
      if (v3 <= 0x3F)
      {
        sub_1000A549C(319);
        if (v4 <= 0x3F)
        {
          sub_10001B55C();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1000A5444(uint64_t a1)
{
  if (!qword_1001D8EB8)
  {
    type metadata accessor for ContentSizeCategory();
    v1 = type metadata accessor for Environment();
    if (!v2)
    {
      atomic_store(v1, &qword_1001D8EB8);
    }
  }
}

void sub_1000A549C(uint64_t a1)
{
  if (!qword_1001D8EC0)
  {
    sub_10001276C(&qword_1001D8338, &qword_100177510);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_1001D8EC0);
    }
  }
}

uint64_t sub_1000A551C@<X0>(uint64_t *a1@<X8>)
{
  v25 = a1;
  v2 = sub_1000033A8(&qword_1001D8F08, &qword_100178200);
  __chkstk_darwin(v2 - 8);
  v4 = &v24 - v3;
  v26 = type metadata accessor for ActionPin.Pill();
  v5 = *(v26 - 8);
  __chkstk_darwin(v26);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CardLayout();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v24 - v13;
  type metadata accessor for SalientActionButton(0);
  v27 = v1;
  v15 = NewSaliencyModel.targetEntity.getter();
  v16 = NewEntityModel.preShutterActions.getter();
  v17 = v16;
  if (!(v16 >> 62))
  {
    result = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_10:

    goto LABEL_11;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_3:
  if ((v17 & 0xC000000000000001) != 0)
  {
    v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_6:

    if (v19)
    {

      NewActionModel.pill.getter();

      v20 = v26;
      if ((*(v5 + 48))(v4, 1, v26) != 1)
      {
        (*(v5 + 32))(v7, v4, v20);
        static CardLayout.expectedLayout(for:)();
        (*(v5 + 8))(v7, v20);
LABEL_13:
        (*(v9 + 32))(v14, v12, v8);
        v21 = static VerticalAlignment.center.getter();
        v22 = v25;
        *v25 = v21;
        v22[1] = 0;
        *(v22 + 16) = 1;
        v23 = sub_1000033A8(&qword_1001D8F10, &qword_100178208);
        sub_1000A58DC(v19, v27, v15, v14, (v22 + *(v23 + 44)));

        return (*(v9 + 8))(v14, v8);
      }

LABEL_12:
      sub_10001370C(v4, &qword_1001D8F08, &qword_100178200);
      (*(v9 + 104))(v12, enum case for CardLayout.basic(_:), v8);
      goto LABEL_13;
    }

LABEL_11:
    (*(v5 + 56))(v4, 1, 1, v26);
    v19 = 0;
    goto LABEL_12;
  }

  if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v19 = *(v17 + 32);

    goto LABEL_6;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000A58DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v99 = a4;
  v78 = a3;
  v100 = a5;
  v7 = type metadata accessor for SalientActionButton(0);
  v8 = *(v7 - 8);
  v79 = v7 - 8;
  v9 = *(v8 + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_1000033A8(&qword_1001D8F18, &qword_100178210);
  v82 = *(v83 - 8);
  __chkstk_darwin(v83);
  v77 = &v75 - v11;
  v12 = sub_1000033A8(&qword_1001D8F20, &qword_100178218);
  v13 = v12 - 8;
  __chkstk_darwin(v12);
  v15 = &v75 - v14;
  v81 = sub_1000033A8(&qword_1001D8F28, &qword_100178220);
  __chkstk_darwin(v81);
  v17 = &v75 - v16;
  v91 = sub_1000033A8(&qword_1001D8F30, &qword_100178228);
  v90 = *(v91 - 8);
  __chkstk_darwin(v91);
  v80 = &v75 - v18;
  v86 = sub_1000033A8(&qword_1001D8F38, &qword_100178230);
  __chkstk_darwin(v86);
  v85 = &v75 - v19;
  v98 = sub_1000033A8(&qword_1001D8F40, &qword_100178238);
  v97 = *(v98 - 8);
  __chkstk_darwin(v98);
  v92 = &v75 - v20;
  v94 = sub_1000033A8(&qword_1001D8F48, &unk_100178240) - 8;
  v21 = __chkstk_darwin(v94);
  v96 = &v75 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v93 = &v75 - v24;
  __chkstk_darwin(v23);
  v95 = &v75 - v25;
  v89 = type metadata accessor for SalientActionButton;
  v76 = a2;
  v84 = v10;
  sub_1000AA178(a2, v10, type metadata accessor for SalientActionButton);
  v26 = *(v8 + 80);
  v27 = (v26 + 24) & ~v26;
  v88 = v9 + 7;
  v28 = (v9 + 7 + v27) & 0xFFFFFFFFFFFFFFF8;
  v29 = swift_allocObject();
  *(v29 + 16) = a1;
  v87 = type metadata accessor for SalientActionButton;
  sub_1000AA110(v10, v29 + v27, type metadata accessor for SalientActionButton);
  v30 = v78;
  *(v29 + v28) = v78;
  v103 = a2;
  v104 = a1;

  sub_1000033A8(&qword_1001D8F50, &qword_100178250);
  sub_1000A8FC8();
  v31 = v77;
  Button.init(action:label:)();
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  (*(v82 + 32))(v15, v31, v83);
  v32 = &v15[*(v13 + 44)];
  v33 = v115;
  *(v32 + 4) = v114;
  *(v32 + 5) = v33;
  *(v32 + 6) = v116;
  v34 = v111;
  *v32 = v110;
  *(v32 + 1) = v34;
  v35 = a1;
  v36 = v113;
  *(v32 + 2) = v112;
  *(v32 + 3) = v36;
  LODWORD(v83) = a1 != 0;
  if (a1)
  {
    v37 = 1.0;
  }

  else
  {
    v37 = 0.0;
  }

  sub_10002091C(v15, v17, &qword_1001D8F20, &qword_100178218);
  *&v17[*(v81 + 36)] = v37;
  v38 = sub_1000A93F8();
  sub_1000A953C(v38, v39, v40);
  v41 = v80;
  View.buttonStyle<A>(_:)();
  sub_10001370C(v17, &qword_1001D8F28, &qword_100178220);
  v42 = v79;
  v43 = v76;
  v44 = v76 + *(v79 + 44);
  v45 = *v44;
  v46 = *(v44 + 8);
  LOBYTE(v105) = v45;
  v106 = v46;
  sub_1000033A8(&qword_1001D3E88, &unk_100171900);
  State.wrappedValue.getter();
  if (v109)
  {
    v47 = &unk_100178170;
  }

  else
  {
    v47 = "jectImage";
  }

  v48 = v47 | 0x8000000000000000;
  v49 = *(v43 + *(v42 + 32));
  v50 = static MatchedGeometryProperties.position.getter();
  static UnitPoint.center.getter();
  v52 = v51;
  v54 = v53;
  v55 = v85;
  (*(v90 + 32))(v85, v41, v91);
  v56 = v86;
  v57 = v55 + *(v86 + 36);
  *v57 = 0xD000000000000013;
  *(v57 + 8) = v48;
  *(v57 + 16) = v49;
  *(v57 + 24) = v50;
  *(v57 + 32) = v52;
  *(v57 + 40) = v54;
  *(v57 + 48) = 0;
  NewEntityModel.cardModel.getter();
  CardModel.shouldUseNavigationZoomTransition(for:)();

  v101 = v30;
  v102 = v43;
  sub_1000033A8(&qword_1001D8FE0, &unk_100178298);
  v58 = sub_1000A9598();
  v105 = v56;
  v106 = &type metadata for String;
  v107 = v58;
  v108 = &protocol witness table for String;
  swift_getOpaqueTypeConformance2();
  v59 = v92;
  View.ifCondition<A>(_:transform:)();
  sub_10001370C(v55, &qword_1001D8F38, &qword_100178230);
  v60 = v84;
  sub_1000AA178(v43, v84, v89);
  v61 = (v26 + 16) & ~v26;
  v62 = (v88 + v61) & 0xFFFFFFFFFFFFFFF8;
  v63 = swift_allocObject();
  sub_1000AA110(v60, v63 + v61, v87);
  *(v63 + v62) = v35;
  v64 = v93;
  v65 = &v93[*(v94 + 44)];
  v66 = sub_1000033A8(&qword_1001D8FF0, &qword_1001782B8);

  static TaskPriority.userInitiated.getter();
  v65[*(v66 + 40)] = v83;
  *v65 = &unk_1001782B0;
  *(v65 + 1) = v63;
  (*(v97 + 32))(v64, v59, v98);
  v67 = v64;
  v68 = v95;
  sub_10002091C(v67, v95, &qword_1001D8F48, &unk_100178240);
  v69 = v96;
  sub_1000138BC(v68, v96, &qword_1001D8F48, &unk_100178240);
  v70 = v100;
  *v100 = 0;
  *(v70 + 8) = 1;
  v71 = v70;
  v72 = sub_1000033A8(&qword_1001D8FF8, &qword_1001782C0);
  sub_1000138BC(v69, v71 + *(v72 + 48), &qword_1001D8F48, &unk_100178240);
  v73 = v71 + *(v72 + 64);
  *v73 = 0;
  *(v73 + 8) = 1;
  sub_10001370C(v68, &qword_1001D8F48, &unk_100178240);
  return sub_10001370C(v69, &qword_1001D8F48, &unk_100178240);
}

double sub_1000A6320(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v5 = *(a2 + *(type metadata accessor for SalientActionButton(0) + 32));
    if (v5)
    {

      v5(a3, a1);
    }
  }

  return result;
}

uint64_t sub_1000A63AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v45 = sub_1000033A8(&qword_1001D8F88, &qword_100178278);
  __chkstk_darwin(v45);
  v7 = &v43 - v6;
  v8 = sub_1000033A8(&qword_1001D8F80, &qword_100178270);
  __chkstk_darwin(v8);
  v10 = (&v43 - v9);
  v47 = sub_1000033A8(&qword_1001D9010, &qword_1001782D0);
  v46 = *(v47 - 8);
  __chkstk_darwin(v47);
  v12 = &v43 - v11;
  v48 = sub_1000033A8(&qword_1001D8F60, &qword_100178258);
  __chkstk_darwin(v48);
  v14 = &v43 - v13;
  v15 = sub_1000033A8(&qword_1001D9018, &qword_1001782D8);
  v50 = *(v15 - 8);
  __chkstk_darwin(v15);
  v49 = &v43 - v16;
  *v10 = static Alignment.center.getter();
  v10[1] = v17;
  v18 = sub_1000033A8(&qword_1001D9020, &qword_1001782E0);
  sub_1000A6A40(a1, a2, v10 + *(v18 + 44));
  v19 = enum case for DynamicTypeSize.xxxLarge(_:);
  v20 = type metadata accessor for DynamicTypeSize();
  (*(*(v20 - 8) + 104))(v7, v19, v20);
  sub_1000AA8E0(&qword_1001D9028, &type metadata accessor for DynamicTypeSize, &protocol conformance descriptor for DynamicTypeSize);
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if (result)
  {
    v44 = a3;
    sub_100013608(&qword_1001D8F90, &qword_1001D8F80, &qword_100178270, &protocol conformance descriptor for ZStack<A>);
    v43 = v15;
    sub_100013608(&qword_1001D8F98, &qword_1001D8F88, &qword_100178278, &protocol conformance descriptor for PartialRangeThrough<A>);
    View.dynamicTypeSize<A>(_:)();
    sub_10001370C(v7, &qword_1001D8F88, &qword_100178278);
    sub_10001370C(v10, &qword_1001D8F80, &qword_100178270);
    v22 = type metadata accessor for SalientActionButton(0);
    v23 = a1 + *(v22 + 40);
    v24 = a1;
    v26 = *(v23 + 8);
    LOBYTE(v54) = *v23;
    v25 = v54;
    *(&v54 + 1) = v26;
    sub_1000033A8(&qword_1001D3E88, &unk_100171900);
    State.wrappedValue.getter();
    LOBYTE(v54) = v25;
    *(&v54 + 1) = v26;
    State.wrappedValue.getter();
    static Alignment.center.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    (*(v46 + 32))(v14, v12, v47);
    v27 = &v14[*(v48 + 36)];
    v28 = v59;
    *(v27 + 4) = v58;
    *(v27 + 5) = v28;
    *(v27 + 6) = v60;
    v29 = v55;
    *v27 = v54;
    *(v27 + 1) = v29;
    v30 = v57;
    *(v27 + 2) = v56;
    *(v27 + 3) = v30;
    Solarium.init()();
    sub_1000033A8(&qword_1001D8F68, &qword_100178260);
    sub_1000033A8(&qword_1001D8F70, &qword_100178268);
    sub_1000A9128();
    sub_1000A9284();
    sub_1000A9340();
    v31 = v49;
    View.staticIf<A, B, C>(_:then:else:)();
    sub_10001370C(v14, &qword_1001D8F60, &qword_100178258);
    v32 = static Alignment.center.getter();
    v34 = v33;
    v35 = v24 + *(v22 + 44);
    v36 = *v35;
    v37 = *(v35 + 8);
    v52 = v36;
    v53 = v37;
    State.wrappedValue.getter();
    if (v51)
    {
      v38 = &off_1001BEEA0;
    }

    else
    {
      v38 = 0;
    }

    if (v51)
    {
      v39 = 0x403C000000000000;
    }

    else
    {
      v39 = 0;
    }

    if (v51)
    {
      v40 = 0x3FE3333333333333;
    }

    else
    {
      v40 = 0;
    }

    v41 = v44;
    (*(v50 + 32))(v44, v31, v43);
    result = sub_1000033A8(&qword_1001D8F50, &qword_100178250);
    v42 = v41 + *(result + 36);
    *v42 = v38;
    *(v42 + 8) = v39;
    *(v42 + 16) = v40;
    *(v42 + 24) = 0;
    *(v42 + 32) = v32;
    *(v42 + 40) = v34;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000A6A40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1000033A8(&qword_1001D9038, &qword_1001782F0);
  __chkstk_darwin(v6);
  v74 = (v62 - v7);
  v8 = type metadata accessor for BlurReplaceTransition.Configuration();
  v70 = *(v8 - 8);
  v9 = __chkstk_darwin(v8);
  v73 = v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = v62 - v11;
  v13 = type metadata accessor for BlurReplaceTransition();
  v71 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_1000033A8(&qword_1001D9040, &qword_1001782F8);
  __chkstk_darwin(v72);
  v69 = v62 - v16;
  v17 = sub_1000033A8(&qword_1001D9048, &qword_100178300);
  __chkstk_darwin(v17);
  v19 = v62 - v18;
  v20 = (a1 + *(type metadata accessor for SalientActionButton(0) + 40));
  v21 = *v20;
  v22 = *(v20 + 1);
  LOBYTE(v76) = v21;
  v77 = v22;
  sub_1000033A8(&qword_1001D3E88, &unk_100171900);
  State.wrappedValue.getter();
  if (v75 == 1)
  {
    *v19 = static VerticalAlignment.firstTextBaseline.getter();
    *(v19 + 1) = 0x4010000000000000;
    v19[16] = 0;
    v23 = sub_1000033A8(&qword_1001D90D8, &qword_100178348);
    sub_1000A7274(a2, &v19[*(v23 + 44)]);
    static Font.headline.getter();
    static Font.Weight.medium.getter();
    v24 = Font.weight(_:)();

    KeyPath = swift_getKeyPath();
    v26 = &v19[*(sub_1000033A8(&qword_1001D90B8, &qword_100178338) + 36)];
    *v26 = KeyPath;
    v26[1] = v24;
    v27 = static Color.white.getter();
    *&v19[*(sub_1000033A8(&qword_1001D90A8, &qword_100178330) + 36)] = v27;
    static Color.black.getter();
    v28 = Color.opacity(_:)();

    v29 = &v19[*(sub_1000033A8(&qword_1001D9098, &qword_100178328) + 36)];
    *v29 = v28;
    v29[1] = 0x4008000000000000;
    v29[2] = 0;
    v29[3] = 0;
    LOBYTE(v27) = static Edge.Set.vertical.getter();
    EdgeInsets.init(_all:)();
    v31 = v30;
    v33 = v32;
    v35 = v34;
    v37 = v36;
    v38 = &v19[*(sub_1000033A8(&qword_1001D9088, &qword_100178320) + 36)];
    *v38 = v27;
    *(v38 + 1) = v31;
    *(v38 + 2) = v33;
    *(v38 + 3) = v35;
    *(v38 + 4) = v37;
    v38[40] = 0;
    LOBYTE(v27) = static Edge.Set.horizontal.getter();
    EdgeInsets.init(_all:)();
    v40 = v39;
    v42 = v41;
    v44 = v43;
    v46 = v45;
    v47 = &v19[*(sub_1000033A8(&qword_1001D9078, &qword_100178318) + 36)];
    v67 = v19;
    *v47 = v27;
    *(v47 + 1) = v40;
    *(v47 + 2) = v42;
    *(v47 + 3) = v44;
    *(v47 + 4) = v46;
    v47[40] = 0;
    v48 = swift_getKeyPath();
    v49 = &v19[*(sub_1000033A8(&qword_1001D9068, &qword_100178310) + 36)];
    *v49 = v48;
    *(v49 + 1) = 1;
    v49[16] = 0;
    static BlurReplaceTransition.Configuration.downUp.getter();
    v68 = a3;
    v50 = v70;
    v66 = *(v70 + 16);
    v66(v73, v12, v8);
    BlurReplaceTransition.init(configuration:)();
    v63 = v8;
    v65 = *(v50 + 8);
    v65(v12, v8);
    static Animation.spring(response:dampingFraction:blendDuration:)();
    Animation.delay(_:)();
    v70 = v6;

    v51 = sub_1000AA8E0(&qword_1001D4E78, &type metadata accessor for BlurReplaceTransition, &protocol conformance descriptor for BlurReplaceTransition);
    Transition.animation(_:)();

    v64 = v17;
    v71 = *(v71 + 8);
    (v71)(v15, v13);
    v76 = v13;
    v77 = v51;
    v62[0] = swift_getOpaqueTypeConformance2();
    v62[1] = AnyTransition.init<A>(_:)();
    static BlurReplaceTransition.Configuration.downUp.getter();
    v52 = v63;
    v66(v73, v12, v63);
    BlurReplaceTransition.init(configuration:)();
    v65(v12, v52);
    static Animation.spring(response:dampingFraction:blendDuration:)();
    Transition.animation(_:)();

    (v71)(v15, v13);
    AnyTransition.init<A>(_:)();
    v53 = static AnyTransition.asymmetric(insertion:removal:)();

    v54 = v67;
    *&v67[*(v64 + 36)] = v53;
    sub_1000138BC(v54, v74, &qword_1001D9048, &qword_100178300);
    swift_storeEnumTagMultiPayload();
    sub_1000033A8(&qword_1001D9050, &qword_100178308);
    sub_1000AA23C();
    sub_1000AA6EC();
    _ConditionalContent<>.init(storage:)();
    return sub_10001370C(v54, &qword_1001D9048, &qword_100178300);
  }

  else
  {
    v56 = static Color.clear.getter();
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v57 = v76;
    v58 = v77;
    v59 = v78;
    v60 = v79;
    v61 = v74;
    *v74 = v56;
    v61[1] = v57;
    *(v61 + 16) = v58;
    v61[3] = v59;
    *(v61 + 32) = v60;
    *(v61 + 5) = v80;
    swift_storeEnumTagMultiPayload();
    sub_1000033A8(&qword_1001D9050, &qword_100178308);
    sub_1000AA23C();
    sub_1000AA6EC();
    return _ConditionalContent<>.init(storage:)();
  }
}

double sub_1000A7274@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v31 = a2;
  v3 = sub_1000033A8(&qword_1001D90E0, &qword_1001783B0);
  v4 = __chkstk_darwin(v3);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = &v30 - v8;
  __chkstk_darwin(v7);
  v11 = &v30 - v10;
  if (a1)
  {
    NewActionModel.systemImage.getter();
    v30 = Image.init(_internalSystemName:)();
    v12 = NewActionModel.localizedTitle.getter();
    v15 = v13;
  }

  else
  {
    v15 = 0xE000000000000000;
    v30 = Image.init(_internalSystemName:)();
    v12 = 0;
  }

  v32 = v12;
  v33 = v15;
  sub_10002EC9C(v12, v13, v14);
  v16 = Text.init<A>(_:)();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v23 = &v9[*(v3 + 36)];
  v24 = *(sub_1000033A8(&qword_1001D90E8, &qword_1001783B8) + 28);
  v25 = enum case for Text.TruncationMode.middle(_:);
  v26 = type metadata accessor for Text.TruncationMode();
  (*(*(v26 - 8) + 104))(v23 + v24, v25, v26);
  *v23 = swift_getKeyPath();
  *v9 = v16;
  *(v9 + 1) = v18;
  v9[16] = v20 & 1;
  *(v9 + 3) = v22;
  sub_10002091C(v9, v11, &qword_1001D90E0, &qword_1001783B0);
  sub_1000138BC(v11, v6, &qword_1001D90E0, &qword_1001783B0);
  v27 = v31;
  *v31 = v30;
  v28 = sub_1000033A8(&qword_1001D90F0, &unk_1001783F0);
  sub_1000138BC(v6, v27 + *(v28 + 48), &qword_1001D90E0, &qword_1001783B0);

  sub_10001370C(v11, &qword_1001D90E0, &qword_1001783B0);
  sub_10001370C(v6, &qword_1001D90E0, &qword_1001783B0);

  return result;
}

uint64_t sub_1000A74DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a1;
  v40 = a2;
  v2 = type metadata accessor for RoundedRectangle();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v35 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v34 = &v33 - v6;
  v38 = type metadata accessor for MitosisCellModifier(0);
  __chkstk_darwin(v38);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for RoundedCornerStyle();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000033A8(&qword_1001D9030, &qword_1001782E8);
  v14 = __chkstk_darwin(v13 - 8);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = (&v33 - v17);
  v19 = *(v2 + 20);
  v20 = enum case for RoundedCornerStyle.continuous(_:);
  v36 = v10;
  v21 = *(v10 + 104);
  v21(&v33 + v19 - v17, enum case for RoundedCornerStyle.continuous(_:), v9);
  __asm { FMOV            V0.2D, #28.0 }

  *v18 = _Q0;
  (*(v3 + 56))(v18, 0, 1, v2);
  v37 = v12;
  v21(v12, v20, v9);
  sub_1000138BC(v18, v16, &qword_1001D9030, &qword_1001782E8);
  if ((*(v3 + 48))(v16, 1, v2) == 1)
  {
    sub_10001370C(v18, &qword_1001D9030, &qword_1001782E8);
    v27 = 0;
  }

  else
  {
    v28 = v16;
    v29 = v34;
    sub_1000AA110(v28, v34, &type metadata accessor for RoundedRectangle);
    sub_1000AA178(v29, v35, &type metadata accessor for RoundedRectangle);
    sub_1000AA8E0(&qword_1001D71E0, &type metadata accessor for RoundedRectangle, &protocol conformance descriptor for RoundedRectangle);
    v27 = AnyShape.init<A>(_:)();
    sub_1000AA1E0(v29);
    sub_10001370C(v18, &qword_1001D9030, &qword_1001782E8);
  }

  (*(v36 + 32))(&v8[*(v38 + 32)], v37, v9);
  *v8 = 0;
  *(v8 + 1) = v27;
  *(v8 + 2) = 0;
  v8[24] = 1;
  *(v8 + 4) = 0;
  v8[40] = 1;
  v30 = v40;
  sub_1000138BC(v39, v40, &qword_1001D8F60, &qword_100178258);
  v31 = sub_1000033A8(&qword_1001D8F68, &qword_100178260);
  return sub_1000AA110(v8, v30 + *(v31 + 36), type metadata accessor for MitosisCellModifier);
}

uint64_t sub_1000A7910@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a2 + *(sub_1000033A8(&qword_1001D8F70, &qword_100178268) + 36);
  static Material.ultraThin.getter();
  v5 = sub_1000033A8(&qword_1001D3C98, &qword_100178280);
  v6 = (v4 + *(v5 + 52));
  v7 = *(type metadata accessor for RoundedRectangle() + 20);
  v8 = enum case for RoundedCornerStyle.continuous(_:);
  v9 = type metadata accessor for RoundedCornerStyle();
  (*(*(v9 - 8) + 104))(&v6[v7], v8, v9);
  __asm { FMOV            V0.2D, #28.0 }

  *v6 = _Q0;
  *(v4 + *(v5 + 56)) = 256;
  return sub_1000138BC(a1, a2, &qword_1001D8F60, &qword_100178258);
}

double sub_1000A7A14()
{
  v0 = type metadata accessor for UUID();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6[0] = 0x6974636172747865;
  v6[1] = 0xEB000000002D6E6FLL;
  NewEntityModel.id.getter();
  sub_1000AA8E0(&qword_1001D80C0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v4._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v4);

  (*(v1 + 8))(v3, v0);
  type metadata accessor for SalientActionButton(0);
  SheetTrackingAssistant.sheetTransitionNamespace.getter();
  sub_1000033A8(&qword_1001D8F38, &qword_100178230);
  sub_1000A9598();
  View.matchedTransitionSource<A>(id:in:)();

  return result;
}