uint64_t sub_1002D75B8(uint64_t a1)
{
  v4 = *(type metadata accessor for SFAirDrop.NearbySharingInteraction.FailureType() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100005C00;

  return sub_1002C06B0(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_1002D76B0(uint64_t a1)
{
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 40) & ~v5;
  v7 = (*(v4 + 64) + v5 + v6) & ~v5;
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1[4];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_100005C00;

  return sub_1002C0E94(a1, v8, v9, v10, v1 + v6, v1 + v7);
}

uint64_t sub_1002D77DC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100005C00;

  return sub_1002D65C0(a1, v4);
}

uint64_t sub_1002D7894(uint64_t a1, uint64_t a2)
{
  v4 = sub_10028088C(&unk_100975F60, &unk_1007F91B0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002D791C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100005C00;

  return sub_1002CB674(a1, v4, v5, v6);
}

uint64_t sub_1002D79E8(uint64_t (*a1)(uint64_t, uint64_t))
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = *(v1 + 16);
  v4 = v1 + ((*(v2 + 80) + 24) & ~*(v2 + 80));

  return a1(v3, v4);
}

uint64_t sub_1002D7A60()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_1002D7B24()
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100005C00;

  return sub_1002CBCF8(v4, v0 + v3);
}

uint64_t sub_1002D7BFC()
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100005C00;

  return sub_1002CA7B8(v4, v0 + v3);
}

uint64_t sub_1002D7CD4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100005C00;

  return sub_1004AB0E8(a1, v4);
}

uint64_t sub_1002D7D8C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100005C00;

  return sub_100005798(a1, v4);
}

uint64_t sub_1002D7E44(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100005C00;

  return sub_1002CA248(a1, v4, v5, v6);
}

uint64_t sub_1002D7EF8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100005C00;

  return sub_1002D65C0(a1, v4);
}

unint64_t sub_1002D7FB0()
{
  result = qword_100975090;
  if (!qword_100975090)
  {
    sub_1000276B4(255, &qword_100975088, CNContact_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100975090);
  }

  return result;
}

uint64_t sub_1002D8018(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100005C00;

  return sub_100026B14(a1, v4);
}

void sub_1002D80D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
  }
}

uint64_t sub_1002D8128(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100005C00;

  return sub_1002C1D28(a1, v4, v5, v6);
}

uint64_t sub_1002D81DC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100005C00;

  return sub_1002C1B40(a1, v4, v5, v6);
}

uint64_t sub_1002D8290(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100005C00;

  return sub_1002C9AEC(a1, v4, v5, v7, v6);
}

uint64_t sub_1002D8350(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100005C04;

  return sub_1002C901C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1002D8418(uint64_t a1, void *a2)
{
  v4 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  __chkstk_darwin(v4 - 8);
  v6 = &v14 - v5;
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = qword_1009735E0;
  swift_unknownObjectRetain();
  v9 = a2;
  if (v8 != -1)
  {
    swift_once();
  }

  v10 = static AirDropActor.shared;
  v11 = sub_100005358(&qword_100977C00, type metadata accessor for AirDropActor, &protocol conformance descriptor for AirDropActor);
  v12 = swift_allocObject();
  v12[2] = v10;
  v12[3] = v11;
  v12[4] = a1;
  v12[5] = v9;

  sub_1002B2DEC(0, 0, v6, &unk_1007F9670, v12, &type metadata for () + 8);
}

uint64_t sub_1002D85C0()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_1002D8608(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100005C04;

  return sub_1002C7E24(a1, v4, v5, v7, v6);
}

uint64_t sub_1002D86C8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_1002D8708(void (*a1)(void), uint64_t a2)
{
  swift_unknownObjectRelease();
  a1(*(v2 + 32));

  return _swift_deallocObject(v2, a2);
}

uint64_t sub_1002D8774(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100005C00;

  return sub_1002C6FC8(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1002D8848(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100005C00;

  return sub_1002C21B0(a1, v4, v5, v6);
}

uint64_t sub_1002D88FC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100005C00;

  return sub_1002C1FD8(a1, v4, v5, v6);
}

uint64_t sub_1002D89B0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100005C00;

  return sub_1002C1884(a1, v4, v5, v6);
}

uint64_t sub_1002D8A64(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100005C00;

  return sub_1002C1668(a1, v4, v5, v6);
}

uint64_t sub_1002D8B18()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_1002D8BA8()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_100976480);
  v1 = sub_10000C4AC(v0, qword_100976480);
  if (qword_1009736D0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A08B8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1002D8D00()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = swift_allocObject();
  *(v9 + 16) = v0;
  aBlock[4] = sub_1002DC8D8;
  aBlock[5] = v9;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100011678;
  aBlock[3] = &unk_1008DA450;
  v10 = _Block_copy(aBlock);
  v11 = v0;
  static DispatchQoS.unspecified.getter();
  v13[1] = _swiftEmptyArrayStorage;
  sub_100014254(&qword_100976140, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
  sub_100013EB8();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v10);
  (*(v2 + 8))(v4, v1);
  (*(v6 + 8))(v8, v5);
}

uint64_t sub_1002D8FA0(uint64_t a1)
{
  v44 = type metadata accessor for SDAirDropReceiveClassroomHandler.Continuation(0);
  v42 = *(v44 - 8);
  __chkstk_darwin(v44);
  v46 = &v38 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10028088C(&qword_1009765B0, &qword_1007F97B8);
  v4 = __chkstk_darwin(v3 - 8);
  v45 = (&v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v4);
  v7 = &v38 - v6;
  v8 = OBJC_IVAR____TtC16DaemoniOSLibrary32SDAirDropReceiveClassroomHandler_continuations;
  swift_beginAccess();
  v38 = v8;
  v39 = a1;
  v9 = *(a1 + v8);
  v10 = v7;
  v11 = *(v9 + 64);
  v40 = v9 + 64;
  v12 = 1 << *(v9 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & v11;
  v15 = (v12 + 63) >> 6;
  v43 = v9;

  v17 = 0;
  v41 = v7;
  v18 = &unk_1007F97C0;
  if (v14)
  {
    while (1)
    {
      v19 = v17;
LABEL_12:
      v22 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
      v23 = v22 | (v19 << 6);
      v24 = (*(v43 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = v46;
      sub_1002DC8E0(*(v43 + 56) + *(v42 + 72) * v23, v46);
      v28 = sub_10028088C(&qword_1009765B8, v18);
      v29 = *(v28 + 48);
      v30 = v45;
      *v45 = v25;
      v30[1] = v26;
      sub_1002DC944(v27, v30 + v29);
      (*(*(v28 - 8) + 56))(v30, 0, 1, v28);

      v21 = v19;
      v31 = v18;
      v32 = v30;
      v10 = v41;
LABEL_13:
      sub_1002DC9A8(v32, v10);
      v33 = sub_10028088C(&qword_1009765B8, v31);
      if ((*(*(v33 - 8) + 48))(v10, 1, v33) == 1)
      {
        break;
      }

      v34 = v46;
      sub_1002DC944(v10 + *(v33 + 48), v46);
      sub_10028088C(&qword_1009764E8, &qword_1007F9790);
      SFProgressContinuation.cancel(_:)();
      Task.cancel()();
      result = sub_1002DCA18(v34);
      v17 = v21;
      v18 = v31;
      if (!v14)
      {
        goto LABEL_5;
      }
    }

    v37 = sub_100280464(_swiftEmptyArrayStorage);
    *(v39 + v38) = v37;
  }

  else
  {
LABEL_5:
    if (v15 <= v17 + 1)
    {
      v20 = v17 + 1;
    }

    else
    {
      v20 = v15;
    }

    v21 = v20 - 1;
    while (1)
    {
      v19 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v19 >= v15)
      {
        v31 = v18;
        v35 = sub_10028088C(&qword_1009765B8, v18);
        v36 = v45;
        (*(*(v35 - 8) + 56))(v45, 1, 1, v35);
        v32 = v36;
        v14 = 0;
        goto LABEL_13;
      }

      v14 = *(v40 + 8 * v19);
      ++v17;
      if (v14)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1002D93A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = a4;
  v36 = a2;
  v37 = a3;
  v40 = type metadata accessor for DispatchWorkItemFlags();
  v42 = *(v40 - 8);
  __chkstk_darwin(v40);
  v38 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for DispatchQoS();
  v39 = *(v41 - 8);
  __chkstk_darwin(v41);
  v35 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for URL();
  v31 = v8;
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for SFAirDropReceive.AskResponse();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = *(v4 + OBJC_IVAR____TtC16DaemoniOSLibrary32SDAirDropReceiveClassroomHandler_queue);
  (*(v13 + 16))(v15, a1, v12);
  (*(v9 + 16))(v11, v33, v8);
  v16 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v17 = (v14 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = (v17 + 15) & 0xFFFFFFFFFFFFFFF8;
  v19 = (*(v9 + 80) + v18 + 16) & ~*(v9 + 80);
  v20 = swift_allocObject();
  (*(v13 + 32))(v20 + v16, v15, v12);
  v21 = v31;
  v22 = v32;
  *(v20 + v17) = v32;
  v23 = (v20 + v18);
  v24 = v37;
  *v23 = v36;
  v23[1] = v24;
  (*(v9 + 32))(v20 + v19, v11, v21);
  aBlock[4] = sub_1002DD054;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100011678;
  aBlock[3] = &unk_1008DA608;
  v25 = _Block_copy(aBlock);
  v26 = v22;

  v27 = v35;
  static DispatchQoS.unspecified.getter();
  v43 = _swiftEmptyArrayStorage;
  sub_100014254(&qword_100976140, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
  sub_100013EB8();
  v28 = v38;
  v29 = v40;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v25);
  (*(v42 + 8))(v28, v29);
  (*(v39 + 8))(v27, v41);
}

void *sub_1002D982C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28[1] = a4;
  v6 = type metadata accessor for SFAirDropReceive.AcceptContext();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SFAirDropReceive.AskResponse();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v13, a1, v10);
  v14 = (*(v11 + 88))(v13, v10);
  if (v14 == enum case for SFAirDropReceive.AskResponse.accept(_:))
  {
    (*(v11 + 96))(v13, v10);
    v15 = sub_10028088C(&qword_1009765E8, &qword_100808D60);
    (*(v7 + 32))(v9, &v13[*(v15 + 48)], v6);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v17 = Strong;
      v18 = String._bridgeToObjectiveC()();
      URL._bridgeToObjectiveC()(v19);
      v21 = v20;
      [v17 alertManager:a2 acceptingTransferWithRecordID:v18 withDestinationURL:v20 shouldExtractMediaFromPhotosBundlesForRecordID:SFAirDropReceive.AcceptContext.shouldExtractMedia.getter() & 1];
      swift_unknownObjectRelease();
    }

    (*(v7 + 8))(v9, v6);
    v22 = type metadata accessor for SFAirDropReceive.ItemDestination();
    return (*(*(v22 - 8) + 8))(v13, v22);
  }

  if (v14 == enum case for SFAirDropReceive.AskResponse.decline(_:))
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (!result)
    {
      return result;
    }

    v24 = result;
    v25 = String._bridgeToObjectiveC()();
    [v24 alertManager:a2 cancelingTransferWithRecordID:v25 withFailureReason:0];
    goto LABEL_14;
  }

  if (v14 == enum case for SFAirDropReceive.AskResponse.error(_:))
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (!result)
    {
      return result;
    }

    v26 = result;
    v25 = String._bridgeToObjectiveC()();
    [v26 alertManager:a2 cancelingTransferWithRecordID:v25 withFailureReason:1];
    goto LABEL_14;
  }

  if (v14 != enum case for SFAirDropReceive.AskResponse.mixedTypes(_:))
  {
    result = _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
    return result;
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v27 = result;
    v25 = String._bridgeToObjectiveC()();
    [v27 alertManager:a2 cancelingTransferWithRecordID:v25 withFailureReason:2];
LABEL_14:

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1002D9BF8@<X0>(uint64_t result@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (!a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (!a3)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v4 = result;

  v7.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  SFAirDropReceive.AskRequest.init(recordID:initialInfo:)(v4, a2, v7.super.isa, a4);
  v8 = type metadata accessor for SFAirDropReceive.AskRequest();
  v9 = *(*(v8 - 8) + 56);

  return v9(a4, 0, 1, v8);
}

uint64_t sub_1002D9EAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19[0] = *&v3[OBJC_IVAR____TtC16DaemoniOSLibrary32SDAirDropReceiveClassroomHandler_queue];
  v15 = swift_allocObject();
  v15[2] = a1;
  v15[3] = a2;
  v15[4] = v3;
  v15[5] = a3;
  aBlock[4] = sub_1002DCF0C;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100011678;
  aBlock[3] = &unk_1008DA590;
  v16 = _Block_copy(aBlock);

  v17 = v3;
  static DispatchQoS.unspecified.getter();
  v19[1] = _swiftEmptyArrayStorage;
  sub_100014254(&qword_100976140, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
  sub_100013EB8();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);
  (*(v8 + 8))(v10, v7);
  (*(v12 + 8))(v14, v11);
}

Class sub_1002DA170(uint64_t a1, void *a2, char *a3, objc_class *a4)
{
  v107 = a4;
  v105 = type metadata accessor for SDAirDropReceiveClassroomHandler.Continuation(0);
  v103 = *(v105 - 8);
  __chkstk_darwin(v105);
  v95 = &v85 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  __chkstk_darwin(v8 - 8);
  v96 = &v85 - v9;
  v92 = type metadata accessor for SFAirDrop.Progress();
  v90 = *(v92 - 8);
  __chkstk_darwin(v92);
  v91 = &v85 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = sub_10028088C(&qword_1009764E8, &qword_1007F9790);
  v94 = *(v97 - 8);
  __chkstk_darwin(v97);
  v100 = &v85 - v11;
  v12 = sub_10028088C(&unk_100976430, &unk_1007F9640);
  v13 = __chkstk_darwin(v12 - 8);
  v93 = &v85 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v102 = &v85 - v15;
  v16 = sub_10028088C(&unk_1009765D0, &qword_1007F97D0);
  __chkstk_darwin(v16 - 8);
  v18 = &v85 - v17;
  v19 = type metadata accessor for SFAirDropReceive.AskRequest();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = __chkstk_darwin(v19);
  v99 = &v85 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v22);
  v89 = &v85 - v24;
  __chkstk_darwin(v23);
  v26 = &v85 - v25;
  if (qword_100973568 != -1)
  {
    swift_once();
  }

  v27 = type metadata accessor for Logger();
  v28 = sub_10000C4AC(v27, qword_100976480);

  v101 = v28;
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.default.getter();

  v31 = os_log_type_enabled(v29, v30);
  v106 = a3;
  if (v31)
  {
    v32 = swift_slowAlloc();
    v98 = v26;
    v88 = v20;
    v104 = v19;
    v33 = v32;
    v34 = swift_slowAlloc();
    v108[0] = v34;
    *v33 = 136315138;
    v35 = a1;
    if (a2)
    {
      v36 = a2;
    }

    else
    {
      a1 = 0xD000000000000015;
      v36 = 0x8000000100789F30;
    }

    v37 = sub_10000C4E4(a1, v36, v108);

    *(v33 + 4) = v37;
    a1 = v35;
    _os_log_impl(&_mh_execute_header, v29, v30, "Incoming transfer %s from senderNode", v33, 0xCu);
    sub_10000C60C(v34);

    v19 = v104;
    v20 = v88;
    v26 = v98;
  }

  sub_1002D9BF8(a1, a2, v107, v18);
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    return sub_100005508(v18, &unk_1009765D0, &qword_1007F97D0);
  }

  v88 = a1;
  v39 = *(v20 + 32);
  result = v39(v26, v18, v19);
  if (!a2)
  {
    __break(1u);
    goto LABEL_23;
  }

  v40 = OBJC_IVAR____TtC16DaemoniOSLibrary32SDAirDropReceiveClassroomHandler_continuations;
  v41 = v106;
  swift_beginAccess();
  v42 = *&v41[v40];
  v43 = *(v42 + 16);
  v44 = v102;
  v87 = a2;
  v86 = v39;
  if (v43 && (v45 = sub_100012854(v88, a2), (v46 & 1) != 0))
  {
    v47 = *(v42 + 56);
    v48 = v103;
    sub_1002DC8E0(v47 + *(v103 + 72) * v45, v44);
    v49 = 0;
  }

  else
  {
    v49 = 1;
    v48 = v103;
  }

  v50 = v105;
  v103 = *(v48 + 56);
  (v103)(v44, v49, 1, v105);
  swift_endAccess();
  LODWORD(v50) = (*(v48 + 48))(v44, 1, v50);
  sub_100005508(v44, &unk_100976430, &unk_1007F9640);
  if (v50 == 1)
  {
    result = v107;
    if (v107)
    {
      v104 = v19;
      result = Dictionary._bridgeToObjectiveC()().super.isa;
      if (kSFOperationReceiverClassroomDestination)
      {
        v51 = result;
        sub_1000276B4(0, &unk_100974E30, NSURL_ptr);
        NSDictionary.sf_value<A>(_:as:file:line:)();
        v102 = v108[0];
        (*(v90 + 104))(v91, enum case for SFAirDrop.Progress.notStarted(_:), v92);
        sub_10028088C(&qword_100975610, &qword_1007F89B0);
        SFProgressContinuation.init(_:initialProgress:file:line:)();
        v65 = type metadata accessor for TaskPriority();
        (*(*(v65 - 8) + 56))(v96, 1, 1, v65);
        v66 = *(v20 + 16);
        v107 = v51;
        v67 = v89;
        v68 = v26;
        v98 = v26;
        v69 = v104;
        v66(v89, v68, v104);
        v70 = (*(v20 + 80) + 24) & ~*(v20 + 80);
        v71 = (v21 + v70 + 7) & 0xFFFFFFFFFFFFFFF8;
        v72 = swift_allocObject();
        v73 = v106;
        *(v72 + 16) = v106;
        v101 = v40;
        v74 = v73;
        v86(v72 + v70, v67, v69);
        v75 = (v72 + v71);
        v76 = v87;
        *v75 = v88;
        v75[1] = v76;
        v77 = v102;
        *(v72 + ((v71 + 23) & 0xFFFFFFFFFFFFFFF8)) = v102;

        v78 = v74;
        v102 = v77;
        v79 = v96;
        v80 = static Task<>.noThrow(priority:operation:)();

        sub_100005508(v79, &qword_100976160, &qword_1007F8770);
        v82 = v94;
        v81 = v95;
        (*(v94 + 16))(v95, v100, v97);
        v83 = v105;
        *(v81 + *(v105 + 20)) = v80;
        v84 = v93;
        sub_1002DC8E0(v81, v93);
        (v103)(v84, 0, 1, v83);
        swift_beginAccess();

        sub_1002B014C(v84, v88, v76);
        swift_endAccess();

        sub_1002DCA18(v81);
        (*(v82 + 8))(v100, v97);
        return (*(v20 + 8))(v98, v104);
      }

      goto LABEL_24;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    return result;
  }

  v52 = v99;
  (*(v20 + 16))(v99, v26, v19);
  v53 = v19;
  v54 = Logger.logObject.getter();
  v55 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v54, v55))
  {
    v56 = v20;
    v57 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v108[0] = v58;
    *v57 = 136315138;
    sub_100014254(&qword_1009765E0, &type metadata accessor for SFAirDropReceive.AskRequest, &protocol conformance descriptor for SFAirDropReceive.AskRequest);
    v59 = dispatch thunk of CustomStringConvertible.description.getter();
    v61 = v60;
    v62 = *(v56 + 8);
    v62(v52, v53);
    v63 = sub_10000C4E4(v59, v61, v108);

    *(v57 + 4) = v63;
    _os_log_impl(&_mh_execute_header, v54, v55, "Repeated ask requests for the same transfer. Dropping {askInfo: %s}", v57, 0xCu);
    sub_10000C60C(v58);

    return (v62)(v26, v53);
  }

  else
  {

    v64 = *(v20 + 8);
    v64(v52, v53);
    return (v64)(v26, v53);
  }
}

uint64_t sub_1002DADA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a5;
  v6[6] = a6;
  v6[3] = a3;
  v6[4] = a4;
  v6[2] = a2;
  v7 = type metadata accessor for URL();
  v6[7] = v7;
  v6[8] = *(v7 - 8);
  v6[9] = swift_task_alloc();
  v8 = type metadata accessor for SFAirDropReceive.AskResponse();
  v6[10] = v8;
  v6[11] = *(v8 - 8);
  v6[12] = swift_task_alloc();

  return _swift_task_switch(sub_1002DAECC, 0, 0);
}

void sub_1002DAECC()
{
  v1 = v0[5];
  if (v1)
  {
    v2 = swift_task_alloc();
    v0[13] = v2;
    *v2 = v0;
    v2[1] = sub_1002DAF88;
    v3 = v0[12];
    v4 = v0[3];
    v5 = v0[4];
    v6 = v0[2];

    sub_10053714C(v3, v6, v4, v5, v1);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1002DAF88()
{

  return _swift_task_switch(sub_1002DB084, 0, 0);
}

uint64_t sub_1002DB084()
{
  v2 = v0[11];
  v1 = v0[12];
  v4 = v0[9];
  v3 = v0[10];
  v5 = v0[7];
  v6 = v0[8];
  v7 = v0[5];
  v8 = v0[4];
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1002D93A8(v1, v8, v7, v4);
  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);

  v9 = v0[1];

  return v9();
}

void sub_1002DB18C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SDAirDropReceiveClassroomHandler.Continuation(0);
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v21 - v11;
  if (a3)
  {
    v13 = OBJC_IVAR____TtC16DaemoniOSLibrary32SDAirDropReceiveClassroomHandler_continuations;
    swift_beginAccess();
    v14 = *(a1 + v13);
    if (*(v14 + 16) && (v15 = sub_100012854(a2, a3), (v16 & 1) != 0))
    {
      sub_1002DC8E0(*(v14 + 56) + *(v7 + 72) * v15, v10);
      sub_1002DC944(v10, v12);
      swift_endAccess();
      sub_10028088C(&qword_1009764E8, &qword_1007F9790);
      SFProgressContinuation.cancel(_:)();
      Task.cancel()();
      sub_1002DCA18(v12);
    }

    else
    {
      swift_endAccess();
      if (qword_100973568 != -1)
      {
        swift_once();
      }

      v17 = type metadata accessor for Logger();
      sub_10000C4AC(v17, qword_100976480);
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&_mh_execute_header, v18, v19, "Received progress event after continuation had been cleared. Dropping.", v20, 2u);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1002DB418(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SDAirDropReceiveClassroomHandler.Continuation(0);
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v23 - v11;
  if (a3)
  {
    v13 = OBJC_IVAR____TtC16DaemoniOSLibrary32SDAirDropReceiveClassroomHandler_continuations;
    swift_beginAccess();
    v14 = *(a1 + v13);
    if (*(v14 + 16) && (v15 = sub_100012854(a2, a3), (v16 & 1) != 0))
    {
      sub_1002DC8E0(*(v14 + 56) + *(v7 + 72) * v15, v10);
      sub_1002DC944(v10, v12);
      swift_endAccess();
      v17 = type metadata accessor for SFAirDropReceive.Failure();
      sub_100014254(&unk_10097A660, &type metadata accessor for SFAirDropReceive.Failure, &protocol conformance descriptor for SFAirDropReceive.Failure);
      swift_allocError();
      (*(*(v17 - 8) + 104))(v18, enum case for SFAirDropReceive.Failure.senderCancelled(_:), v17);
      sub_10028088C(&qword_1009764E8, &qword_1007F9790);
      SFProgressContinuation.fail(with:)();

      Task.cancel()();
      sub_1002DCA18(v12);
    }

    else
    {
      swift_endAccess();
      if (qword_100973568 != -1)
      {
        swift_once();
      }

      v19 = type metadata accessor for Logger();
      sub_10000C4AC(v19, qword_100976480);
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&_mh_execute_header, v20, v21, "Receive error event after continuation has been cleared. Dropping.", v22, 2u);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1002DB740(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  if (a3)
  {
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;
    if (!a4)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v14 = 0;
  v16 = 0;
  if (a4)
  {
LABEL_3:
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

LABEL_4:
  v17 = a1;
  sub_1002DCA80(v14, v16, a5, a6, a7, a8);
}

uint64_t sub_1002DB820(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  v38 = a3;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v39 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100973568 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_10000C4AC(v14, qword_100976480);

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v34 = v4;
    v18 = v17;
    v19 = swift_slowAlloc();
    v37 = a1;
    v20 = v19;
    aBlock[0] = v19;
    *v18 = 136315138;
    v35 = v12;
    v36 = v10;
    if (a2)
    {
      v21 = v37;
    }

    else
    {
      v21 = 0xD000000000000015;
    }

    v22 = v11;
    v23 = v7;
    v24 = v8;
    if (a2)
    {
      v25 = a2;
    }

    else
    {
      v25 = 0x8000000100789F30;
    }

    v26 = sub_10000C4E4(v21, v25, aBlock);
    v8 = v24;
    v7 = v23;
    v11 = v22;
    v10 = v36;

    *(v18 + 4) = v26;
    v12 = v35;
    _os_log_impl(&_mh_execute_header, v15, v16, "finishedEvent {recordID: %s}", v18, 0xCu);
    sub_10000C60C(v20);
    a1 = v37;

    v4 = v34;
  }

  v27 = swift_allocObject();
  v27[2] = v4;
  v27[3] = a1;
  v28 = v38;
  v27[4] = a2;
  v27[5] = v28;
  aBlock[4] = sub_1002DCA74;
  aBlock[5] = v27;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100011678;
  aBlock[3] = &unk_1008DA4A0;
  v29 = _Block_copy(aBlock);

  v30 = v4;
  v31 = v39;
  static DispatchQoS.unspecified.getter();
  v40 = _swiftEmptyArrayStorage;
  sub_100014254(&qword_100976140, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
  sub_100013EB8();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v29);
  (*(v8 + 8))(v10, v7);
  (*(v12 + 8))(v31, v11);
}

void sub_1002DBC6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v40 = &v39 - v13;
  v46 = type metadata accessor for NSFastEnumerationIterator();
  v41 = *(v46 - 8);
  __chkstk_darwin(v46);
  v47 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for SDAirDropReceiveClassroomHandler.Continuation(0);
  v15 = *(v43 - 8);
  v16 = __chkstk_darwin(v43);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v45 = &v39 - v19;
  if (!a3)
  {
    goto LABEL_27;
  }

  v20 = OBJC_IVAR____TtC16DaemoniOSLibrary32SDAirDropReceiveClassroomHandler_continuations;
  swift_beginAccess();
  v21 = *(a1 + v20);
  if (*(v21 + 16) && (v22 = sub_100012854(a2, a3), (v23 & 1) != 0))
  {
    sub_1002DC8E0(*(v21 + 56) + *(v15 + 72) * v22, v18);
    sub_1002DC944(v18, v45);
    swift_endAccess();
    if (!a4)
    {
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    v24.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
    if (!kSFOperationItemsKey)
    {
LABEL_29:
      __break(1u);
      return;
    }

    isa = v24.super.isa;
    sub_1000276B4(0, &qword_1009765C0, NSArray_ptr);
    NSDictionary.sf_value<A>(_:as:file:line:)();

    v30 = v50;
    v31 = [v50 count];
    v52 = _swiftEmptyArrayStorage;
    sub_10028FAB4(0, v31 & ~(v31 >> 63), 0);
    v32 = v52;
    v39 = v30;
    NSArray.makeIterator()();
    if (v31 < 0)
    {
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    if (v31)
    {
      v42 = v9 + 32;
      v44 = sub_100014254(&qword_1009765C8, &type metadata accessor for NSFastEnumerationIterator, &protocol conformance descriptor for NSFastEnumerationIterator);
      do
      {
        dispatch thunk of IteratorProtocol.next()();
        if (!v51)
        {
          goto LABEL_26;
        }

        tryCast<A>(_:as:description:file:line:)();
        sub_10000C60C(&v50);
        v52 = v32;
        v34 = v32[2];
        v33 = v32[3];
        if (v34 >= v33 >> 1)
        {
          sub_10028FAB4((v33 > 1), v34 + 1, 1);
          v32 = v52;
        }

        v32[2] = v34 + 1;
        (*(v9 + 32))(v32 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v34, v12, v8);
      }

      while (--v31);
    }

    sub_100014254(&qword_1009765C8, &type metadata accessor for NSFastEnumerationIterator, &protocol conformance descriptor for NSFastEnumerationIterator);
    dispatch thunk of IteratorProtocol.next()();
    if (v49)
    {
      v44 = v9 + 32;
      v35 = v40;
      do
      {
        sub_1000106E0(&v48, &v50);
        tryCast<A>(_:as:description:file:line:)();
        sub_10000C60C(&v50);
        v52 = v32;
        v37 = v32[2];
        v36 = v32[3];
        if (v37 >= v36 >> 1)
        {
          sub_10028FAB4((v36 > 1), v37 + 1, 1);
          v32 = v52;
        }

        v32[2] = v37 + 1;
        (*(v9 + 32))(v32 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v37, v35, v8);
        dispatch thunk of IteratorProtocol.next()();
      }

      while (v49);
    }

    (*(v41 + 8))(v47, v46);
    sub_100005508(&v48, &unk_1009746F0, &qword_1007F90B0);
    *&v50 = v32;
    sub_10028088C(&qword_1009764E8, &qword_1007F9790);
    v38 = v45;
    SFProgressContinuation.finish(with:)();

    sub_1002DCA18(v38);
  }

  else
  {
    swift_endAccess();
    if (qword_100973568 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_10000C4AC(v26, qword_100976480);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "Received finish after continuation had been cleared. Dropping.", v29, 2u);
    }
  }
}

uint64_t sub_1002DC574(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  v6 = a4;
  if (a3)
  {
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;
    if (!v6)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = 0;
  v10 = 0;
  if (a4)
  {
LABEL_3:
    v6 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

LABEL_4:
  v11 = a1;
  a5(v8, v10, v6);
}

uint64_t type metadata accessor for SDAirDropReceiveClassroomHandler.Continuation(uint64_t a1)
{
  result = qword_100976548;
  if (!qword_100976548)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1002DC77C(uint64_t a1)
{
  sub_1002DC800(319);
  if (v1 <= 0x3F)
  {
    sub_1002DC874();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1002DC800(uint64_t a1)
{
  if (!qword_100976558)
  {
    type metadata accessor for SFAirDrop.Progress();
    sub_100280938(&qword_100975610, &qword_1007F89B0);
    v1 = type metadata accessor for SFProgressContinuation();
    if (!v2)
    {
      atomic_store(v1, &qword_100976558);
    }
  }
}

void sub_1002DC874()
{
  if (!qword_100976568)
  {
    v0 = type metadata accessor for Task();
    if (!v1)
    {
      atomic_store(v0, &qword_100976568);
    }
  }
}

uint64_t sub_1002DC8E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SDAirDropReceiveClassroomHandler.Continuation(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002DC944(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SDAirDropReceiveClassroomHandler.Continuation(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002DC9A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10028088C(&qword_1009765B0, &qword_1007F97B8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002DCA18(uint64_t a1)
{
  v2 = type metadata accessor for SDAirDropReceiveClassroomHandler.Continuation(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1002DCA80(uint64_t a1, unint64_t a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v43 = a1;
  v44 = a5;
  v41 = a4;
  v9 = v6;
  v11 = type metadata accessor for DispatchWorkItemFlags();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = type metadata accessor for DispatchQoS();
  v15 = *(v42 - 8);
  __chkstk_darwin(v42);
  v45 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100973568 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_10000C4AC(v17, qword_100976480);

  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v37 = a6;
    v21 = v20;
    v22 = swift_slowAlloc();
    v38 = v9;
    v23 = v22;
    aBlock[0] = v22;
    *v21 = 136315138;
    v39 = v15;
    v40 = v14;
    v36 = a3;
    v24 = v43;
    if (a2)
    {
      v25 = v43;
    }

    else
    {
      v25 = 0xD000000000000015;
    }

    v26 = v11;
    v27 = v12;
    if (a2)
    {
      v28 = a2;
    }

    else
    {
      v28 = 0x8000000100789F30;
    }

    v29 = sub_10000C4E4(v25, v28, aBlock);
    v12 = v27;
    v11 = v26;
    v14 = v40;

    *(v21 + 4) = v29;
    v15 = v39;
    _os_log_impl(&_mh_execute_header, v18, v19, v36, v21, 0xCu);
    sub_10000C60C(v23);
    v9 = v38;

    a6 = v37;
  }

  else
  {

    v24 = v43;
  }

  v30 = swift_allocObject();
  v30[2] = v9;
  v30[3] = v24;
  v30[4] = a2;
  aBlock[4] = v44;
  aBlock[5] = v30;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100011678;
  aBlock[3] = a6;
  v31 = _Block_copy(aBlock);

  v32 = v9;
  v33 = v45;
  static DispatchQoS.unspecified.getter();
  v46 = _swiftEmptyArrayStorage;
  sub_100014254(&qword_100976140, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
  sub_100013EB8();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v31);
  (*(v12 + 8))(v14, v11);
  (*(v15 + 8))(v33, v42);
}

uint64_t sub_1002DCEC0()
{

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_1002DCF18(uint64_t a1)
{
  v4 = *(type metadata accessor for SFAirDropReceive.AskRequest() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v1 + 16);
  v9 = (v1 + v6);
  v10 = *v9;
  v11 = v9[1];
  v12 = *(v1 + v7);
  v13 = swift_task_alloc();
  *(v2 + 16) = v13;
  *v13 = v2;
  v13[1] = sub_100005C04;

  return sub_1002DADA8(a1, v8, v1 + v5, v10, v11, v12);
}

void *sub_1002DD054()
{
  v1 = *(type metadata accessor for SFAirDropReceive.AskResponse() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  type metadata accessor for URL();
  v5 = *(v0 + v3);
  v6 = *(v0 + v4);
  v7 = *(v0 + v4 + 8);

  return sub_1002D982C(v0 + v2, v5, v6, v7);
}

uint64_t sub_1002DD168()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1002DDC10();
  v9 = static OS_dispatch_queue.main.getter();
  aBlock[4] = sub_1002DDCC0;
  v13 = v0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100011678;
  aBlock[3] = &unk_1008DA6C0;
  v10 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1002DDC68();
  sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
  sub_100013EB8();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v10);

  (*(v2 + 8))(v4, v1);
  return (*(v6 + 8))(v8, v5);
}

void sub_1002DD3D8()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1002DDC10();
  *v5 = static OS_dispatch_queue.main.getter();
  (*(v3 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v2);
  v6 = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v5, v2);
  if ((v6 & 1) == 0)
  {
    __break(1u);
    return;
  }

  if (v1[2])
  {
    if (v1[3])
    {
      goto LABEL_4;
    }
  }

  else
  {
    v7 = [objc_allocWithZone(UINotificationFeedbackGenerator) init];
    v8 = v1[2];
    v1[2] = v7;

    if (v1[3])
    {
LABEL_4:
      if (v1[4])
      {
        return;
      }

LABEL_8:
      v11 = [objc_allocWithZone(UISelectionFeedbackGenerator) init];
      v12 = v1[4];
      v1[4] = v11;

      return;
    }
  }

  v9 = [objc_allocWithZone(UIImpactFeedbackGenerator) init];
  v10 = v1[3];
  v1[3] = v9;

  if (!v1[4])
  {
    goto LABEL_8;
  }
}

uint64_t sub_1002DD584(char a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1002DDC10();
  v10 = static OS_dispatch_queue.main.getter();
  v11 = swift_allocObject();
  swift_weakInit();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *(v12 + 24) = a1;
  aBlock[4] = sub_1002DDC5C;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100011678;
  aBlock[3] = &unk_1008DA698;
  v13 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1002DDC68();
  sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
  sub_100013EB8();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v13);

  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

void sub_1002DD82C(uint64_t a1, unsigned __int8 a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (qword_1009736C8 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_10000C4AC(v5, qword_1009A08A0);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v21 = v9;
      *v8 = 136315138;
      v10 = String.init<A>(describing:)();
      v12 = sub_10000C4E4(v10, v11, &v21);

      *(v8 + 4) = v12;
      _os_log_impl(&_mh_execute_header, v6, v7, "Firing haptics for %s", v8, 0xCu);
      sub_10000C60C(v9);
    }

    sub_1002DD3D8();
    v13 = *(v4 + 16);
    if (v13 && *(v4 + 24) && *(v4 + 32))
    {
      if (a2 > 2u)
      {
        if (a2 == 3)
        {
          [objc_opt_self() playAlertForType:12];
        }

        else if (a2 == 4)
        {
          [v13 notificationOccurred:2];
        }

        else
        {
          [v13 notificationOccurred:1];
        }
      }

      else if (a2)
      {
        if (a2 == 1)
        {
          [*(v4 + 24) impactOccurred];
        }

        else
        {
          [v13 notificationOccurred:0];
        }
      }

      else
      {
        [*(v4 + 32) selectionChanged];
      }
    }

    else
    {
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&_mh_execute_header, v14, v15, "SDAirDropiOSHapticsManager's FeedbackGenerators are nil when trying to fire haptics", v16, 2u);
      }
    }
  }

  else
  {
    if (qword_1009736C8 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_10000C4AC(v17, qword_1009A08A0);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "SDAirDropiOSHapticsManager is nil when trying to fire haptics", v20, 2u);
    }
  }
}

uint64_t sub_1002DDBA0()
{

  return swift_deallocClassInstance();
}

unint64_t sub_1002DDC10()
{
  result = qword_10097A620;
  if (!qword_10097A620)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10097A620);
  }

  return result;
}

unint64_t sub_1002DDC68()
{
  result = qword_100976140;
  if (!qword_100976140)
  {
    type metadata accessor for DispatchWorkItemFlags();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100976140);
  }

  return result;
}

uint64_t sub_1002DDCCC(uint64_t a1)
{
  v2[10] = a1;
  v2[11] = v1;
  v3 = type metadata accessor for SFAirDropReceive.ItemDestination();
  v2[12] = v3;
  v2[13] = *(v3 - 8);
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v4 = type metadata accessor for SFAirDropReceive.Transfer.State();
  v2[16] = v4;
  v2[17] = *(v4 - 8);
  v2[18] = swift_task_alloc();
  sub_10028088C(&qword_100976928, &qword_1007F98A8);
  v2[19] = swift_task_alloc();
  v5 = type metadata accessor for SFAirDropReceive.Transfer();
  v2[20] = v5;
  v2[21] = *(v5 - 8);
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  sub_10028088C(&qword_100976908, &unk_100801D60);
  v2[24] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v6 = static AirDropActor.shared;
  v2[25] = static AirDropActor.shared;

  return _swift_task_switch(sub_1002DDF08, v6, 0);
}

uint64_t sub_1002DDF08()
{
  v1 = v0[19];
  v2 = v0[11];
  v3 = OBJC_IVAR____TtCC16DaemoniOSLibrary28SDAirDropReceiveStateMachine10BaseRunner_contentHandler;
  swift_beginAccess();
  sub_1002A9938(v2 + v3, (v0 + 2));
  v4 = v0[5];
  v5 = v0[6];
  sub_10002CDC0(v0 + 2, v4);
  CurrentValueSubject.value.getter();
  v6 = sub_10028088C(&qword_1009764E8, &qword_1007F9790);
  (*(*(v6 - 8) + 56))(v1, 1, 1, v6);
  v7 = swift_task_alloc();
  v0[26] = v7;
  *v7 = v0;
  v7[1] = sub_1002DE06C;
  v9 = v0[23];
  v8 = v0[24];
  v10 = v0[19];

  return sub_100586750(v8, v9, v10, v4, v5);
}

uint64_t sub_1002DE06C()
{
  v2 = *v1;
  v2[27] = v0;

  v3 = v2[25];
  v4 = v2[23];
  v5 = v2[21];
  v6 = v2[20];
  sub_100005508(v2[19], &qword_100976928, &qword_1007F98A8);
  v9 = *(v5 + 8);
  v8 = v5 + 8;
  v7 = v9;
  if (v0)
  {
    v7(v4, v6);
    v10 = sub_1002DEB40;
  }

  else
  {
    v2[28] = v7;
    v2[29] = v8 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v7(v4, v6);
    v10 = sub_1002DE248;
  }

  return _swift_task_switch(v10, v3, 0);
}

uint64_t sub_1002DE248()
{
  v1 = v0[28];
  v2 = v0[24];
  v3 = v0[22];
  v4 = v0[20];
  v6 = v0[17];
  v5 = v0[18];
  v7 = v0[16];
  sub_10000C60C(v0 + 2);
  v8 = sub_10028088C(&qword_100974E70, &qword_1007FE3F0);
  (*(*(v8 - 8) + 16))(v5, v2, v8);
  (*(v6 + 104))(v5, enum case for SFAirDropReceive.Transfer.State.waitingForAskResponse(_:), v7);
  sub_100687AF8(v5, v3);
  (*(v6 + 8))(v5, v7);
  v1(v3, v4);

  return _swift_task_switch(sub_1002DE38C, 0, 0);
}

uint64_t sub_1002DE38C()
{
  v1 = v0[24];
  v2 = swift_task_alloc();
  v0[30] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[31] = v3;
  *(v3 + 16) = v1;
  v4 = swift_task_alloc();
  v0[32] = v4;
  *v4 = v0;
  v4[1] = sub_1002DE494;
  v5 = v0[15];
  v6 = v0[12];

  return withTaskCancellationHandler<A>(operation:onCancel:isolation:)(v5, &unk_1007F98B0, v2, sub_1002E3960, v3, 0, 0, v6);
}

uint64_t sub_1002DE494()
{
  v2 = *v1;
  *(*v1 + 264) = v0;

  if (v0)
  {
    v3 = sub_1002DE91C;
    v4 = 0;
  }

  else
  {
    v5 = *(v2 + 200);

    v3 = sub_1002DE5C4;
    v4 = v5;
  }

  return _swift_task_switch(v3, v4, 0);
}

uint64_t sub_1002DE5C4()
{
  v1 = v0[14];
  v2 = v0[12];
  v3 = v0[13];
  (*(v3 + 104))(v1, enum case for SFAirDropReceive.ItemDestination.noItem(_:), v2);
  sub_1002E3918(&qword_100976930, &type metadata accessor for SFAirDropReceive.ItemDestination, &protocol conformance descriptor for SFAirDropReceive.ItemDestination);
  v4 = dispatch thunk of static Equatable.== infix(_:_:)();
  v5 = *(v3 + 8);
  v5(v1, v2);
  v6 = v0[24];
  v7 = v0[15];
  if (v4)
  {
    v8 = v0[12];
    type metadata accessor for CancellationError();
    sub_1002E3918(&unk_10097A6B0, &type metadata accessor for CancellationError, &protocol conformance descriptor for CancellationError);
    swift_allocError();
    CancellationError.init()();
    swift_willThrow();
    v5(v7, v8);
    sub_100005508(v6, &qword_100976908, &unk_100801D60);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Classroom AskRequest declined", v11, 2u);
    }

    v12 = &enum case for SFAirDropReceive.AskResponse.decline(_:);
  }

  else
  {
    v13 = v0[12];
    v14 = v0[13];
    v15 = v0[10];
    sub_10028088C(&qword_1009765E8, &qword_100808D60);
    (*(v14 + 16))(v15, v7, v13);
    SFAirDropReceive.AcceptContext.init(shouldExtractMedia:customPayload:)();
    v5(v7, v13);
    sub_100005508(v6, &qword_100976908, &unk_100801D60);
    v12 = &enum case for SFAirDropReceive.AskResponse.accept(_:);
  }

  v16 = v0[10];
  v17 = *v12;
  v18 = type metadata accessor for SFAirDropReceive.AskResponse();
  (*(*(v18 - 8) + 104))(v16, v17, v18);

  v19 = v0[1];

  return v19();
}

uint64_t sub_1002DE91C()
{
  v1 = *(v0 + 200);

  return _swift_task_switch(sub_1002DE990, v1, 0);
}

uint64_t sub_1002DE990()
{
  sub_100005508(v0[24], &qword_100976908, &unk_100801D60);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Classroom AskRequest declined", v3, 2u);
  }

  v4 = v0[10];
  v5 = enum case for SFAirDropReceive.AskResponse.decline(_:);
  v6 = type metadata accessor for SFAirDropReceive.AskResponse();
  (*(*(v6 - 8) + 104))(v4, v5, v6);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1002DEB40()
{
  sub_10000C60C(v0 + 2);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Classroom AskRequest declined", v3, 2u);
  }

  v4 = v0[10];
  v5 = enum case for SFAirDropReceive.AskResponse.decline(_:);
  v6 = type metadata accessor for SFAirDropReceive.AskResponse();
  (*(*(v6 - 8) + 104))(v4, v5, v6);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1002DECE0(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 336) = a5;
  *(v6 + 344) = v5;
  *(v6 + 320) = a3;
  *(v6 + 328) = a4;
  *(v6 + 721) = a2;
  *(v6 + 312) = a1;
  v7 = type metadata accessor for SFAirDropReceive.Failure();
  *(v6 + 352) = v7;
  *(v6 + 360) = *(v7 - 8);
  *(v6 + 368) = swift_task_alloc();
  v8 = sub_10028088C(&qword_100976900, &unk_1007FD250);
  *(v6 + 376) = v8;
  *(v6 + 384) = *(v8 - 8);
  *(v6 + 392) = swift_task_alloc();
  v9 = type metadata accessor for SFAirDropReceive.Transfer.State();
  *(v6 + 400) = v9;
  *(v6 + 408) = *(v9 - 8);
  *(v6 + 416) = swift_task_alloc();
  *(v6 + 424) = swift_task_alloc();
  sub_10028088C(&qword_100976908, &unk_100801D60);
  *(v6 + 432) = swift_task_alloc();
  v10 = type metadata accessor for SFAirDropReceive.ItemDestination();
  *(v6 + 440) = v10;
  *(v6 + 448) = *(v10 - 8);
  *(v6 + 456) = swift_task_alloc();
  *(v6 + 464) = swift_task_alloc();
  *(v6 + 472) = swift_task_alloc();
  *(v6 + 480) = swift_task_alloc();
  *(v6 + 488) = swift_task_alloc();
  *(v6 + 496) = swift_task_alloc();
  *(v6 + 504) = swift_task_alloc();
  v11 = type metadata accessor for SFAirDrop.TransferType();
  *(v6 + 512) = v11;
  *(v6 + 520) = *(v11 - 8);
  *(v6 + 528) = swift_task_alloc();
  *(v6 + 536) = swift_task_alloc();
  v12 = type metadata accessor for SFAirDropReceive.AskRequest();
  *(v6 + 544) = v12;
  *(v6 + 552) = *(v12 - 8);
  *(v6 + 560) = swift_task_alloc();
  *(v6 + 568) = swift_task_alloc();
  v13 = type metadata accessor for SFAirDropReceive.Transfer();
  *(v6 + 576) = v13;
  *(v6 + 584) = *(v13 - 8);
  *(v6 + 592) = swift_task_alloc();
  *(v6 + 600) = swift_task_alloc();
  *(v6 + 608) = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v14 = static AirDropActor.shared;
  *(v6 + 616) = static AirDropActor.shared;

  return _swift_task_switch(sub_1002DF0D8, v14, 0);
}

uint64_t sub_1002DF0D8()
{
  v154 = v0;
  v1 = *(v0 + 608);
  v2 = *(v0 + 584);
  v3 = *(v0 + 576);
  v4 = *(v0 + 568);
  v5 = *(v0 + 552);
  v6 = *(v0 + 544);
  v7 = *(v0 + 536);
  v8 = *(v0 + 520);
  v147 = *(v0 + 512);
  CurrentValueSubject.value.getter();
  SFAirDropReceive.Transfer.askRequest.getter();
  v9 = *(v2 + 8);
  *(v0 + 624) = v9;
  *(v0 + 632) = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v143 = v9;
  v9(v1, v3);
  SFAirDropReceive.AskRequest.type.getter();
  v10 = *(v5 + 8);
  v10(v4, v6);
  v11 = SFAirDrop.TransferType.isLinks.getter();
  v12 = *(v8 + 8);
  v12(v7, v147);
  if ((v11 & 1) == 0)
  {
    v148 = v10;
    v13 = *(v0 + 600);
    v14 = *(v0 + 576);
    v15 = *(v0 + 560);
    v16 = *(v0 + 544);
    v17 = *(v0 + 528);
    v138 = *(v0 + 512);
    CurrentValueSubject.value.getter();
    SFAirDropReceive.Transfer.askRequest.getter();
    v143(v13, v14);
    SFAirDropReceive.AskRequest.type.getter();
    v18 = v16;
    v19 = v12;
    v148(v15, v18);
    v20 = SFAirDrop.TransferType.isFiles.getter();
    v12(v17, v138);
    if ((v20 & 1) == 0)
    {

      v52 = Logger.logObject.getter();
      v53 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v52, v53))
      {
        v54 = *(v0 + 600);
        v55 = *(v0 + 560);
        v126 = *(v0 + 576);
        v129 = *(v0 + 544);
        v56 = *(v0 + 528);
        v57 = *(v0 + 512);
        v58 = swift_slowAlloc();
        v132 = v19;
        v59 = swift_slowAlloc();
        v153[0] = v59;
        *v58 = 136315138;
        CurrentValueSubject.value.getter();
        SFAirDropReceive.Transfer.askRequest.getter();
        v143(v54, v126);
        SFAirDropReceive.AskRequest.type.getter();
        v148(v55, v129);
        sub_1002E3918(&unk_100989320, &type metadata accessor for SFAirDrop.TransferType, &protocol conformance descriptor for SFAirDrop.TransferType);
        v60 = dispatch thunk of CustomStringConvertible.description.getter();
        v62 = v61;
        v132(v56, v57);
        v63 = sub_10000C4E4(v60, v62, v153);

        *(v58 + 4) = v63;
        _os_log_impl(&_mh_execute_header, v52, v53, "Classroom Ask open/move SKIP. {type: %s}", v58, 0xCu);
        sub_10000C60C(v59);
      }

      goto LABEL_12;
    }
  }

  v21 = *(v0 + 344);
  v22 = OBJC_IVAR____TtCC16DaemoniOSLibrary28SDAirDropReceiveStateMachine10BaseRunner_contentHandler;
  swift_beginAccess();
  sub_1002A9938(v21 + v22, v0 + 56);
  sub_10028088C(&qword_1009892F0, &qword_1007F9888);
  sub_10028088C(&qword_100976910, &unk_100808E80);
  if (!swift_dynamicCast())
  {
    *(v0 + 96) = 0u;
    *(v0 + 112) = 0u;
    *(v0 + 128) = 0;
    sub_100005508(v0 + 96, &qword_100976918, &qword_1007F9890);

    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v153[0] = v46;
      *v45 = 136315138;
      sub_1002A9938(v21 + v22, v0 + 136);
      sub_10002CDC0((v0 + 136), *(v0 + 160));
      DynamicType = swift_getDynamicType();
      v48 = *(v0 + 168);
      sub_10000C60C((v0 + 136));
      *(v0 + 288) = DynamicType;
      *(v0 + 296) = v48;
      sub_10028088C(&qword_100976920, &qword_100808E90);
      v49 = String.init<A>(describing:)();
      v51 = sub_10000C4E4(v49, v50, v153);

      *(v45 + 4) = v51;
      _os_log_impl(&_mh_execute_header, v43, v44, "Classroom Ask open/move SKIP. {handler: %s}", v45, 0xCu);
      sub_10000C60C(v46);
    }

LABEL_12:
    (*(*(v0 + 448) + 16))(*(v0 + 312), *(v0 + 336), *(v0 + 440));

    v150 = 0;
    v144 = *(v0 + 328);
LABEL_13:

    v64 = *(v0 + 8);

    return v64(v150, v144);
  }

  v23 = *(v0 + 504);
  v25 = *(v0 + 440);
  v24 = *(v0 + 448);
  v26 = *(v0 + 336);
  sub_1000121F8((v0 + 96), v0 + 16);
  *(v0 + 640) = OBJC_IVAR____TtCC16DaemoniOSLibrary28SDAirDropReceiveStateMachine10BaseRunner_log;
  v27 = *(v24 + 16);
  *(v0 + 648) = v27;
  *(v0 + 656) = (v24 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v27(v23, v26, v25);
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.default.getter();
  v30 = os_log_type_enabled(v28, v29);
  v31 = *(v0 + 504);
  v149 = v27;
  if (v30)
  {
    v32 = *(v0 + 496);
    v135 = v21;
    v34 = *(v0 + 440);
    v33 = *(v0 + 448);
    v35 = swift_slowAlloc();
    v128 = swift_slowAlloc();
    v153[0] = v128;
    *v35 = 136315138;
    v149(v32, v31, v34);
    v36 = String.init<A>(describing:)();
    v131 = v22;
    v38 = v37;
    v39 = *(v33 + 8);
    v40 = v34;
    v21 = v135;
    v39(v31, v40);
    v41 = v36;
    v27 = v149;
    v42 = sub_10000C4E4(v41, v38, v153);
    v22 = v131;

    *(v35 + 4) = v42;
    _os_log_impl(&_mh_execute_header, v28, v29, "Classroom Ask open/move START. {destination: %s}", v35, 0xCu);
    sub_10000C60C(v128);
  }

  else
  {
    v66 = *(v0 + 440);
    v67 = *(v0 + 448);

    v39 = *(v67 + 8);
    v39(v31, v66);
  }

  *(v0 + 664) = v39;
  v68 = *(v0 + 721);
  v27(*(v0 + 488), *(v0 + 336), *(v0 + 440));
  if (v68)
  {
    v69 = Logger.logObject.getter();
    v70 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v69, v70))
    {
      v71 = *(v0 + 648);
      v73 = *(v0 + 488);
      v72 = *(v0 + 496);
      v74 = *(v0 + 472);
      v75 = *(v0 + 440);
      v145 = *(v0 + 664);
      v76 = swift_slowAlloc();
      v151 = swift_slowAlloc();
      v153[0] = v151;
      *v76 = 136315138;
      swift_beginAccess();
      v71(v72, v73, v75);
      v71(v74, v72, v75);
      v77 = String.init<A>(describing:)();
      v79 = v78;
      v145(v72, v75);
      v80 = sub_10000C4E4(v77, v79, v153);

      *(v76 + 4) = v80;
      _os_log_impl(&_mh_execute_header, v69, v70, "Classroom Ask open/move END - accepted {destination: %s}", v76, 0xCu);
      sub_10000C60C(v151);
    }

    v81 = *(v0 + 648);
    v140 = *(v0 + 624);
    v133 = *(v0 + 600);
    v136 = *(v0 + 576);
    v82 = *(v0 + 488);
    v139 = *(v0 + 464);
    v83 = *(v0 + 440);
    v146 = *(v0 + 456);
    v152 = *(v0 + 448);
    v84 = *(v0 + 408);
    v85 = *(v0 + 416);
    v86 = *(v0 + 320);
    v124 = *(v0 + 328);
    v125 = *(v0 + 400);
    v87 = sub_10028088C(&unk_100974E60, &qword_100808EC0);
    v88 = *(v87 + 48);
    v89 = *(v87 + 64);
    swift_beginAccess();
    v81(v85, v82, v83);
    *(v85 + v88) = v86;
    *(v85 + v89) = v124;
    (*(v84 + 104))(v85, enum case for SFAirDropReceive.Transfer.State.opening(_:), v125);

    sub_100687AF8(v85, v133);
    (*(v84 + 8))(v85, v125);
    v140(v133, v136);
    v81(v139, v82, v83);
    v81(v146, v139, v83);
    v90 = (*(v152 + 88))(v146, v83);
    if (v90 == enum case for SFAirDropReceive.ItemDestination.customApp(_:))
    {
      v91 = *(v0 + 456);
      (*(*(v0 + 448) + 96))(v91, *(v0 + 440));
      v92 = *v91;
      v93 = v91[1];
      v94 = *(v0 + 664);
      v95 = *(v0 + 464);
      v96 = *(v0 + 440);
      if (v92 == 0xD000000000000034 && 0x800000010078AA10 == v93)
      {

        v94(v95, v96);
LABEL_31:
        v115 = *(v0 + 664);
        v116 = *(v0 + 488);
        v117 = *(v0 + 440);
        (*(v0 + 648))(*(v0 + 312), v116, v117);

        v115(v116, v117);
        sub_10000C60C((v0 + 16));
        v144 = *(v0 + 328);
        v150 = 1;
        goto LABEL_13;
      }

      v114 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v94(v95, v96);
      if (v114)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v103 = v90;
      v104 = enum case for SFAirDropReceive.ItemDestination.noItem(_:);
      (*(v0 + 664))(*(v0 + 464), *(v0 + 440));
      if (v103 == v104)
      {
        goto LABEL_31;
      }

      (*(v0 + 664))(*(v0 + 456), *(v0 + 440));
    }

    v118 = *(v0 + 488);
    v119 = *(v0 + 328);
    v120 = *(v0 + 40);
    v121 = *(v0 + 48);
    sub_10002CDC0((v0 + 16), v120);
    (*(v121 + 8))(v119, v118, v120, v121);
    v122 = swift_task_alloc();
    *(v0 + 704) = v122;
    *v122 = v0;
    v122[1] = sub_1002E11A0;
    v123 = *(v0 + 376);

    return SFProgressTask.finalValue.getter(v0 + 720, v123);
  }

  else
  {
    v97 = *(v0 + 592);
    v98 = *(v0 + 432);
    v99 = *(v0 + 328);
    v141 = *(v0 + 336);
    sub_1002A9938(v21 + v22, v0 + 176);
    v100 = *(v0 + 200);
    v101 = *(v0 + 208);
    sub_10002CDC0((v0 + 176), v100);
    CurrentValueSubject.value.getter();
    sub_100588474(v97, v99, 0, v141, v100, v101, v98);
    v102 = *(v0 + 440);
    v105 = *(v0 + 424);
    v106 = *(v0 + 408);
    v134 = *(v0 + 400);
    v137 = *(v0 + 576);
    v107 = *(v0 + 336);
    v142 = *(v0 + 600);
    v108 = *(v0 + 320);
    v127 = *(v0 + 328);
    v130 = *(v0 + 432);
    (v143)(*(v0 + 592));
    sub_10000C60C((v0 + 176));
    v109 = sub_10028088C(&unk_10097C670, &qword_100805110);
    v110 = v109[12];
    v111 = v109[16];
    v112 = v109[20];
    v149(v105, v107, v102);
    *(v105 + v110) = v108;
    *(v105 + v111) = v127;
    v113 = sub_10028088C(&qword_100974E70, &qword_1007FE3F0);
    (*(*(v113 - 8) + 16))(v105 + v112, v130, v113);
    (*(v106 + 104))(v105, enum case for SFAirDropReceive.Transfer.State.waitingForOpenResponse(_:), v134);

    sub_100687AF8(v105, v142);
    v143(v142, v137);

    return _swift_task_switch(sub_1002E0398, 0, 0);
  }
}

uint64_t sub_1002E0398()
{
  v1 = v0[54];
  v2 = swift_task_alloc();
  v0[84] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[85] = v3;
  *(v3 + 16) = v1;
  v4 = swift_task_alloc();
  v0[86] = v4;
  *v4 = v0;
  v4[1] = sub_1002E04A0;
  v5 = v0[60];
  v6 = v0[55];

  return withTaskCancellationHandler<A>(operation:onCancel:isolation:)(v5, &unk_1007F9898, v2, sub_1002E3870, v3, 0, 0, v6);
}

uint64_t sub_1002E04A0()
{
  v2 = *v1;
  *(*v1 + 696) = v0;

  if (v0)
  {
    v3 = sub_1002E0C78;
    v4 = 0;
  }

  else
  {
    v5 = *(v2 + 616);

    v3 = sub_1002E05D4;
    v4 = v5;
  }

  return _swift_task_switch(v3, v4, 0);
}

uint64_t sub_1002E05D4()
{
  v60 = v0;
  v1 = v0[60];
  v2 = v0[61];
  v3 = v0[55];
  v4 = v0[56];
  v5 = v0[54];
  (*(v0[51] + 8))(v0[53], v0[50]);
  sub_100005508(v5, &qword_100976908, &unk_100801D60);
  (*(v4 + 40))(v2, v1, v3);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[81];
    v10 = v0[61];
    v9 = v0[62];
    v11 = v0[59];
    v12 = v0[55];
    v54 = v0[83];
    v13 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    v59 = v56;
    *v13 = 136315138;
    swift_beginAccess();
    v8(v9, v10, v12);
    v8(v11, v9, v12);
    v14 = String.init<A>(describing:)();
    v16 = v15;
    v54(v9, v12);
    v17 = sub_10000C4E4(v14, v16, &v59);

    *(v13 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v6, v7, "Classroom Ask open/move END - accepted {destination: %s}", v13, 0xCu);
    sub_10000C60C(v56);
  }

  v18 = v0[81];
  v53 = v0[78];
  v50 = v0[75];
  v51 = v0[72];
  v19 = v0[61];
  v52 = v0[58];
  v20 = v0[55];
  v55 = v0[57];
  v57 = v0[56];
  v21 = v0[51];
  v22 = v0[52];
  v23 = v0[40];
  v48 = v0[41];
  v49 = v0[50];
  v24 = sub_10028088C(&unk_100974E60, &qword_100808EC0);
  v25 = *(v24 + 48);
  v26 = *(v24 + 64);
  swift_beginAccess();
  v18(v22, v19, v20);
  *(v22 + v25) = v23;
  *(v22 + v26) = v48;
  (*(v21 + 104))(v22, enum case for SFAirDropReceive.Transfer.State.opening(_:), v49);

  sub_100687AF8(v22, v50);
  (*(v21 + 8))(v22, v49);
  v53(v50, v51);
  v18(v52, v19, v20);
  v18(v55, v52, v20);
  v27 = (*(v57 + 88))(v55, v20);
  if (v27 == enum case for SFAirDropReceive.ItemDestination.customApp(_:))
  {
    v28 = v0[57];
    (*(v0[56] + 96))(v28, v0[55]);
    v29 = *v28;
    v30 = v28[1];
    v31 = v0[83];
    v32 = v0[58];
    v33 = v0[55];
    if (v29 == 0xD000000000000034 && 0x800000010078AA10 == v30)
    {

      v31(v32, v33);
LABEL_10:
      v37 = v0[83];
      v38 = v0[61];
      v39 = v0[55];
      (v0[81])(v0[39], v38, v39);

      v37(v38, v39);
      sub_10000C60C(v0 + 2);
      v58 = v0[41];

      v40 = v0[1];

      return v40(1, v58);
    }

    v36 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v31(v32, v33);
    if (v36)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v34 = v27;
    v35 = enum case for SFAirDropReceive.ItemDestination.noItem(_:);
    (v0[83])(v0[58], v0[55]);
    if (v34 == v35)
    {
      goto LABEL_10;
    }

    (v0[83])(v0[57], v0[55]);
  }

  v42 = v0[61];
  v43 = v0[41];
  v44 = v0[5];
  v45 = v0[6];
  sub_10002CDC0(v0 + 2, v44);
  (*(v45 + 8))(v43, v42, v44, v45);
  v46 = swift_task_alloc();
  v0[88] = v46;
  *v46 = v0;
  v46[1] = sub_1002E11A0;
  v47 = v0[47];

  return SFProgressTask.finalValue.getter(v0 + 90, v47);
}

uint64_t sub_1002E0C78()
{
  v1 = *(v0 + 616);

  return _swift_task_switch(sub_1002E0CF0, v1, 0);
}

uint64_t sub_1002E0CF0()
{
  v1 = v0[83];
  v2 = v0[61];
  v3 = v0[55];
  v4 = v0[54];
  (*(v0[51] + 8))(v0[53], v0[50]);
  sub_100005508(v4, &qword_100976908, &unk_100801D60);
  v1(v2, v3);
  v0[38] = v0[87];
  swift_errorRetain();
  sub_10028088C(&unk_10097A930, &unk_1007F9050);
  if (swift_dynamicCast())
  {
    v5 = (*(v0[45] + 88))(v0[46], v0[44]);
    if (v5 == enum case for SFAirDropReceive.Failure.declined(_:))
    {

      v6 = Logger.logObject.getter();
      v7 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        *v8 = 0;
        v9 = "Classroom Ask open/move END - Declined. Not opening or moving";
LABEL_8:
        _os_log_impl(&_mh_execute_header, v6, v7, v9, v8, 2u);

        goto LABEL_9;
      }

      goto LABEL_9;
    }

    if (v5 == enum case for SFAirDropReceive.Failure.askNotHandled(_:))
    {

      v6 = Logger.logObject.getter();
      v7 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        *v8 = 0;
        v9 = "Classroom Ask open/move END - Not handled. Not opening or moving";
        goto LABEL_8;
      }

LABEL_9:
      v10 = v0[81];
      v11 = v0[55];
      v12 = v0[42];
      v13 = v0[39];

      v10(v13, v12, v11);

      sub_10000C60C(v0 + 2);

      v14 = v0[1];

      return v14(0, _swiftEmptyArrayStorage);
    }

    (*(v0[45] + 8))(v0[46], v0[44]);
  }

  sub_10000C60C(v0 + 2);

  v16 = v0[1];

  return v16(0);
}

uint64_t sub_1002E11A0()
{
  v2 = *v1;
  *(*v1 + 712) = v0;

  v3 = v2[77];
  (*(v2[48] + 8))(v2[49], v2[47]);
  if (v0)
  {
    v4 = sub_1002E14E4;
  }

  else
  {
    v4 = sub_1002E131C;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1002E131C()
{
  v1 = *(v0 + 664);
  v2 = *(v0 + 488);
  v3 = *(v0 + 440);
  v7 = *(v0 + 720);
  (*(v0 + 648))(*(v0 + 312), v2, v3);

  v1(v2, v3);
  sub_10000C60C((v0 + 16));
  v6 = *(v0 + 328);

  v4 = *(v0 + 8);

  return v4(v7, v6);
}

uint64_t sub_1002E14E4()
{
  (*(v0 + 664))(*(v0 + 488), *(v0 + 440));
  *(v0 + 304) = *(v0 + 712);
  swift_errorRetain();
  sub_10028088C(&unk_10097A930, &unk_1007F9050);
  if (swift_dynamicCast())
  {
    v1 = (*(*(v0 + 360) + 88))(*(v0 + 368), *(v0 + 352));
    if (v1 == enum case for SFAirDropReceive.Failure.declined(_:))
    {

      v2 = Logger.logObject.getter();
      v3 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v2, v3))
      {
        v4 = swift_slowAlloc();
        *v4 = 0;
        v5 = "Classroom Ask open/move END - Declined. Not opening or moving";
LABEL_8:
        _os_log_impl(&_mh_execute_header, v2, v3, v5, v4, 2u);

        goto LABEL_9;
      }

      goto LABEL_9;
    }

    if (v1 == enum case for SFAirDropReceive.Failure.askNotHandled(_:))
    {

      v2 = Logger.logObject.getter();
      v3 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v2, v3))
      {
        v4 = swift_slowAlloc();
        *v4 = 0;
        v5 = "Classroom Ask open/move END - Not handled. Not opening or moving";
        goto LABEL_8;
      }

LABEL_9:
      v6 = *(v0 + 648);
      v7 = *(v0 + 440);
      v8 = *(v0 + 336);
      v9 = *(v0 + 312);

      v6(v9, v8, v7);

      sub_10000C60C((v0 + 16));

      v10 = *(v0 + 8);

      return v10(0, _swiftEmptyArrayStorage);
    }

    (*(*(v0 + 360) + 8))(*(v0 + 368), *(v0 + 352));
  }

  sub_10000C60C((v0 + 16));

  v12 = *(v0 + 8);

  return v12(0);
}

uint64_t sub_1002E195C()
{
}

uint64_t sub_1002E19A0()
{
  v0 = *(sub_100687998() + OBJC_IVAR____TtCC16DaemoniOSLibrary28SDAirDropReceiveStateMachine15ClassroomRunner_classroomHandler);

  return swift_deallocClassInstance();
}

uint64_t _s15ClassroomRunnerCMa(uint64_t a1)
{
  result = qword_1009766C8;
  if (!qword_1009766C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1002E1ADC(uint64_t a1, uint64_t a2)
{
  v3[28] = a2;
  v3[29] = v2;
  v3[27] = a1;
  v4 = type metadata accessor for SFAirDropReceive.Failure();
  v3[30] = v4;
  v3[31] = *(v4 - 8);
  v3[32] = swift_task_alloc();
  sub_10028088C(&unk_1009892C0, &qword_10080F030);
  v3[33] = swift_task_alloc();
  sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
  v3[34] = swift_task_alloc();
  sub_10028088C(&unk_1009892D0, &qword_1007F9870);
  v3[35] = swift_task_alloc();
  v5 = type metadata accessor for SFAirDropReceive.ItemDestination();
  v3[36] = v5;
  v3[37] = *(v5 - 8);
  v3[38] = swift_task_alloc();
  v3[39] = sub_10028088C(&unk_100989310, &qword_1007F9878);
  v3[40] = swift_task_alloc();
  v3[41] = swift_task_alloc();
  v3[42] = sub_10028088C(&qword_1009768F0, &unk_100808F60);
  v3[43] = swift_task_alloc();
  v6 = type metadata accessor for SFAirDropReceive.Transfer.State();
  v3[44] = v6;
  v3[45] = *(v6 - 8);
  v3[46] = swift_task_alloc();
  v7 = type metadata accessor for Date();
  v3[47] = v7;
  v3[48] = *(v7 - 8);
  v3[49] = swift_task_alloc();
  v3[50] = swift_task_alloc();
  v8 = type metadata accessor for SFAirDrop.DeclineAction();
  v3[51] = v8;
  v3[52] = *(v8 - 8);
  v3[53] = swift_task_alloc();
  v9 = type metadata accessor for SFAirDropReceive.AskRequest();
  v3[54] = v9;
  v3[55] = *(v9 - 8);
  v3[56] = swift_task_alloc();
  v10 = type metadata accessor for SFAirDropReceive.Transfer();
  v3[57] = v10;
  v3[58] = *(v10 - 8);
  v3[59] = swift_task_alloc();
  v11 = sub_10028088C(&qword_1009768F8, &unk_1008092B0);
  v3[60] = v11;
  v3[61] = *(v11 - 8);
  v3[62] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v12 = static AirDropActor.shared;
  v3[63] = static AirDropActor.shared;

  return _swift_task_switch(sub_1002E1FA4, v12, 0);
}

uint64_t sub_1002E1FA4()
{
  v30 = *(v0 + 496);
  v1 = *(v0 + 472);
  v42 = *(v0 + 464);
  v2 = *(v0 + 448);
  v40 = *(v0 + 456);
  v27 = *(v0 + 440);
  v28 = *(v0 + 432);
  v31 = *(v0 + 424);
  v36 = *(v0 + 416);
  v37 = *(v0 + 408);
  v33 = *(v0 + 368);
  v38 = *(v0 + 360);
  v39 = *(v0 + 352);
  v32 = *(v0 + 296);
  v3 = *(v0 + 232);
  v34 = *(v0 + 224);
  v35 = *(v0 + 288);
  sub_10028088C(&qword_1009764E8, &qword_1007F9790);
  SFProgressContinuation.task.getter();
  v4 = OBJC_IVAR____TtCC16DaemoniOSLibrary28SDAirDropReceiveStateMachine10BaseRunner_contentHandler;
  *(v0 + 512) = OBJC_IVAR____TtCC16DaemoniOSLibrary28SDAirDropReceiveStateMachine10BaseRunner_contentHandler;
  swift_beginAccess();
  sub_1002A9938(v3 + v4, v0 + 16);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  sub_10002CDC0((v0 + 16), v5);
  CurrentValueSubject.value.getter();
  SFAirDropReceive.Transfer.askRequest.getter();
  v41 = *(v42 + 8);
  *(v0 + 520) = v41;
  *(v0 + 528) = (v42 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v41(v1, v40);
  v29 = (*(v6 + 56))(v2, 1, v5, v6);
  v8 = v7;
  *(v0 + 536) = v29;
  *(v0 + 544) = v7;
  (*(v27 + 8))(v2, v28);
  sub_10000C60C((v0 + 16));
  sub_1002A9938(v3 + v4, v0 + 56);
  v9 = *(v0 + 80);
  v10 = *(v0 + 88);
  sub_10002CDC0((v0 + 56), v9);
  CurrentValueSubject.value.getter();
  v11 = type metadata accessor for SFAirDrop.Progress();
  *(v0 + 552) = v11;
  v12 = sub_10028088C(&qword_100975610, &qword_1007F89B0);
  sub_100587FBC(v1, 0x726566736E617274, 0xEC000000676E6972, v30, v9, v11, v12, v10, v31);
  v41(v1, v40);
  sub_10000C60C((v0 + 56));
  static Date.now.getter();
  v13 = sub_10028088C(&qword_10097C680, &unk_100808F80);
  *(v0 + 560) = v13;
  v14 = v13[12];
  v15 = (v33 + v13[16]);
  v16 = v13[20];
  v17 = *(v32 + 16);
  *(v0 + 568) = v17;
  *(v0 + 576) = (v32 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v17(v33, v34, v35);
  v18 = enum case for SFAirDrop.Progress.transferringIndeterminate(_:);
  v19 = *(v11 - 8);
  v20 = *(v19 + 104);
  *(v0 + 584) = v20;
  *(v0 + 592) = (v19 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v20(v33 + v14, v18, v11);
  *v15 = v29;
  v15[1] = v8;
  v21 = *(v36 + 16);
  *(v0 + 600) = v21;
  *(v0 + 608) = (v36 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v21(v33 + v16, v31, v37);
  *(v0 + 760) = enum case for SFAirDropReceive.Transfer.State.transferring(_:);
  v22 = *(v38 + 104);
  *(v0 + 616) = v22;
  *(v0 + 624) = (v38 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v22(v33);

  sub_100687AF8(v33, v1);
  v23 = *(v38 + 8);
  *(v0 + 632) = v23;
  *(v0 + 640) = (v38 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v23(v33, v39);
  v41(v1, v40);
  v24 = swift_task_alloc();
  *(v0 + 648) = v24;
  *v24 = v0;
  v24[1] = sub_1002E2404;
  v25 = *(v0 + 480);

  return SFProgressTask.finalValue.getter(v0 + 208, v25);
}

uint64_t sub_1002E2404()
{
  v2 = *v1;
  *(*v1 + 656) = v0;

  if (v0)
  {
    v3 = *(v2 + 504);

    v4 = sub_1002E3398;
    v5 = v3;
  }

  else
  {
    v5 = *(v2 + 504);
    v4 = sub_1002E252C;
  }

  return _swift_task_switch(v4, v5, 0);
}

uint64_t sub_1002E252C()
{
  v36 = *(v0 + 632);
  v32 = *(v0 + 616);
  v31 = *(v0 + 760);
  v30 = *(v0 + 600);
  v29 = *(v0 + 584);
  v1 = *(v0 + 568);
  v2 = *(v0 + 560);
  v3 = *(v0 + 552);
  v28 = *(v0 + 544);
  v27 = *(v0 + 536);
  v35 = *(v0 + 520);
  v4 = *(v0 + 472);
  v34 = *(v0 + 456);
  v5 = *(v0 + 424);
  v26 = *(v0 + 408);
  v6 = *(v0 + 368);
  v7 = *(v0 + 352);
  v8 = *(v0 + 288);
  v9 = *(v0 + 208);
  *(v0 + 664) = v9;
  v10 = v2[12];
  v11 = (v6 + v2[16]);
  v12 = v2[20];
  v1(v6, *(v0 + 224), v8);
  *(v6 + v10) = v9;
  v29(v6 + v10, enum case for SFAirDrop.Progress.completed(_:), v3);
  *v11 = v27;
  v11[1] = v28;
  v30(v6 + v12, v5, v26);
  v32(v6, v31, v7);
  v33 = v9;

  sub_100687AF8(v6, v4);
  v36(v6, v7);
  v35(v4, v34);
  static Date.now.getter();
  sub_1002E3918(&qword_10097E910, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if (result)
  {
    v14 = *(v0 + 392);
    v15 = *(v0 + 376);
    v16 = *(v0 + 384);
    v17 = *(v0 + 344);
    v38 = *(v0 + 336);
    v19 = *(v0 + 320);
    v18 = *(v0 + 328);
    v20 = *(v0 + 312);
    (*(v16 + 16))(v18, *(v0 + 400), v15);
    v21 = *(v16 + 32);
    v21(v18 + *(v20 + 48), v14, v15);
    sub_1002E36F0(v18, v19);
    v37 = *(v20 + 48);
    v21(v17, v19, v15);
    v22 = *(v16 + 8);
    *(v0 + 672) = v22;
    *(v0 + 680) = (v16 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v22(v19 + v37, v15);
    sub_1002E3760(v18, v19);
    v21(v17 + *(v38 + 36), v19 + *(v20 + 48), v15);
    v22(v19, v15);
    ClosedRange<>.interval.getter();
    *(v0 + 688) = v23;
    sub_100005508(v17, &qword_1009768F0, &unk_100808F60);
    v24 = swift_task_alloc();
    *(v0 + 696) = v24;
    *v24 = v0;
    v24[1] = sub_1002E28A4;
    v25 = *(v0 + 224);

    return sub_100688640(v33, v25);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1002E28A4(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  v4[88] = a1;
  v4[89] = v1;

  if (v1)
  {
    v6 = v4[63];

    return _swift_task_switch(sub_1002E34B8, v6, 0);
  }

  else
  {
    v7 = swift_task_alloc();
    v4[90] = v7;
    *v7 = v5;
    v7[1] = sub_1002E2A60;
    v8 = v4[83];
    v9 = v4[38];
    v10 = v4[28];

    return sub_1002DECE0(v9, 1, v8, a1, v10);
  }
}

uint64_t sub_1002E2A60(uint64_t a1, uint64_t a2)
{
  v5 = *v3;
  *(*v3 + 728) = v2;

  if (v2)
  {
    v6 = *(v5 + 504);

    v7 = sub_1002E35D4;
    v8 = v6;
  }

  else
  {
    v8 = *(v5 + 504);
    *(v5 + 736) = a2;
    v7 = sub_1002E2BAC;
  }

  return _swift_task_switch(v7, v8, 0);
}

uint64_t sub_1002E2BAC()
{
  v31 = v0[92];
  v29 = v0[88];
  v43 = v0[84];
  v27 = v0[83];
  v34 = v0[79];
  v30 = v0[77];
  v25 = v0[71];
  v36 = v0[65];
  v32 = v0[64];
  v44 = v0[62];
  v41 = v0[61];
  v42 = v0[60];
  v26 = v0[59];
  v35 = v0[57];
  v39 = v0[51];
  v40 = v0[53];
  v37 = v0[50];
  v38 = v0[52];
  v1 = v0[47];
  v2 = v0[48];
  v3 = v0[46];
  v24 = v0[44];
  v23 = v0[38];
  v33 = v0[37];
  v4 = enum case for SFAirDropReceive.Transfer.Metrics.TransferResult.success(_:);
  v5 = v0[35];
  v22 = v0[36];
  v6 = v0[34];
  v28 = v0[33];
  v7 = v0[29];
  v8 = type metadata accessor for SFAirDropReceive.Transfer.Metrics.TransferResult();
  v9 = *(v8 - 8);
  (*(v9 + 104))(v5, v4, v8);
  (*(v9 + 56))(v5, 0, 1, v8);
  v10 = OBJC_IVAR____TtCC16DaemoniOSLibrary28SDAirDropReceiveStateMachine10BaseRunner_metrics;
  swift_beginAccess();
  SFAirDropReceive.Transfer.Metrics.result.setter();
  swift_endAccess();
  static Date.now.getter();
  (*(v2 + 56))(v6, 0, 1, v1);
  swift_beginAccess();
  SFAirDropReceive.Transfer.Metrics.endDate.setter();
  swift_endAccess();
  v11 = sub_10028088C(&unk_10097E9B0, &unk_100808D90);
  v12 = v11[12];
  v13 = (v3 + v11[16]);
  v20 = v11[24];
  v21 = v11[20];
  v14 = v11[28];
  v15 = type metadata accessor for SFAirDropReceive.Transfer.Metrics();
  (*(*(v15 - 8) + 16))(v3, v7 + v10, v15);
  v25(v3 + v12, v23, v22);
  *v13 = 0;
  v13[1] = 0;
  *(v3 + v21) = v27;
  *(v3 + v20) = v29;
  *(v3 + v14) = v31;
  v30(v3, enum case for SFAirDropReceive.Transfer.State.completedSuccessfully(_:), v24);
  sub_100687AF8(v3, v26);
  v34(v3, v24);
  sub_1002A9938(v7 + v32, (v0 + 12));
  v16 = v0[15];
  v17 = v0[16];
  sub_10002CDC0(v0 + 12, v16);
  v25(v28, v23, v22);
  (*(v33 + 56))(v28, 0, 1, v22);
  (*(v17 + 96))(v26, 1, v28, v16, v17);
  sub_100005508(v28, &unk_1009892C0, &qword_10080F030);
  v36(v26, v35);
  sub_10000C60C(v0 + 12);
  (*(v33 + 8))(v23, v22);
  v43(v37, v1);
  (*(v38 + 8))(v40, v39);
  (*(v41 + 8))(v44, v42);

  v18 = v0[1];

  return v18();
}

uint64_t sub_1002E3094()
{
  v1 = *(*v0 + 520);
  v2 = *(*v0 + 504);
  v3 = *(*v0 + 472);
  v4 = *(*v0 + 456);
  v5 = *(*v0 + 256);
  v6 = *(*v0 + 248);
  v7 = *(*v0 + 240);

  (*(v6 + 8))(v5, v7);
  v1(v3, v4);

  return _swift_task_switch(sub_1002E326C, v2, 0);
}

uint64_t sub_1002E326C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002E3398()
{
  v2 = v0[61];
  v1 = v0[62];
  v3 = v0[60];
  v5 = v0[52];
  v4 = v0[53];
  v6 = v0[51];
  (*(v0[48] + 8))(v0[50], v0[47]);
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);
  v0[93] = v0[82];
  swift_errorRetain();
  SFAirDropReceive.Failure.init(_:)();
  v7 = swift_task_alloc();
  v0[94] = v7;
  *v7 = v0;
  v7[1] = sub_1002E3094;
  v8 = v0[59];
  v9 = v0[32];

  return sub_10068E200(v8, v9);
}

uint64_t sub_1002E34B8()
{
  v2 = *(v0 + 488);
  v1 = *(v0 + 496);
  v3 = *(v0 + 480);
  v5 = *(v0 + 416);
  v4 = *(v0 + 424);
  v6 = *(v0 + 408);
  (*(v0 + 672))(*(v0 + 400), *(v0 + 376));
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);
  *(v0 + 744) = *(v0 + 712);
  swift_errorRetain();
  SFAirDropReceive.Failure.init(_:)();
  v7 = swift_task_alloc();
  *(v0 + 752) = v7;
  *v7 = v0;
  v7[1] = sub_1002E3094;
  v8 = *(v0 + 472);
  v9 = *(v0 + 256);

  return sub_10068E200(v8, v9);
}

uint64_t sub_1002E35D4()
{
  v2 = *(v0 + 488);
  v1 = *(v0 + 496);
  v3 = *(v0 + 480);
  v5 = *(v0 + 416);
  v4 = *(v0 + 424);
  v6 = *(v0 + 408);
  (*(v0 + 672))(*(v0 + 400), *(v0 + 376));
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);
  *(v0 + 744) = *(v0 + 728);
  swift_errorRetain();
  SFAirDropReceive.Failure.init(_:)();
  v7 = swift_task_alloc();
  *(v0 + 752) = v7;
  *v7 = v0;
  v7[1] = sub_1002E3094;
  v8 = *(v0 + 472);
  v9 = *(v0 + 256);

  return sub_10068E200(v8, v9);
}

uint64_t sub_1002E36F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10028088C(&unk_100989310, &qword_1007F9878);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002E3760(uint64_t a1, uint64_t a2)
{
  v4 = sub_10028088C(&unk_100989310, &qword_1007F9878);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002E37D0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100005C00;

  return sub_10052F744(a1, v4);
}

uint64_t sub_1002E3878(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100005C04;

  return sub_10052F744(a1, v4);
}

uint64_t sub_1002E3918(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1002E3964()
{

  sub_10000C60C((v0 + 144));
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_1002E39D0()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_100976A18);
  v1 = sub_10000C4AC(v0, qword_100976A18);
  if (qword_100973758 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A0A50);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_1002E3A98()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = (&v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *&v0[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationSession_queue];
  *v4 = v5;
  (*(v2 + 104))(v4, enum case for DispatchPredicate.onQueue(_:), v1);
  v6 = v5;
  LOBYTE(v5) = _dispatchPreconditionTest(_:)();
  (*(v2 + 8))(v4, v1);
  if (v5)
  {
    if (qword_100973570 == -1)
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
  v7 = type metadata accessor for Logger();
  sub_10000C4AC(v7, qword_100976A18);
  v8 = v0;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    *(v11 + 4) = v8;
    *v12 = v8;
    v13 = v8;
    _os_log_impl(&_mh_execute_header, v9, v10, "SDAuthenticationAuthSession: Invalidating %@", v11, 0xCu);
    sub_10028924C(v12);
  }

  if (*&v8[OBJC_IVAR____TtC16DaemoniOSLibrary27SDAuthenticationAuthSession_rangingSession])
  {

    sub_100431124();
  }

  v14 = *&v8[OBJC_IVAR____TtC16DaemoniOSLibrary27SDAuthenticationAuthSession_wifiRequest];
  if (v14)
  {
    v15 = objc_opt_self();
    v16 = v14;
    v17 = [v15 sharedManager];
    [v17 cancelWiFiRequest:v16];
  }
}

uint64_t sub_1002E3D2C()
{

  v1 = *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAuthenticationAuthSession_AWDLInfo);
  v2 = *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary27SDAuthenticationAuthSession_AWDLInfo + 8);

  return sub_100026AC0(v1, v2);
}

id sub_1002E3D80()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SDAuthenticationAuthSession(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for SDAuthenticationAuthSession(uint64_t a1)
{
  result = qword_100976A58;
  if (!qword_100976A58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1002E3EBC()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_100976A68);
  v1 = sub_10000C4AC(v0, qword_100976A68);
  if (qword_100973700 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A0948);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_1002E3F84(void *a1)
{
  if (a1)
  {
    v2 = objc_opt_self();
    v21 = 0;
    v3 = a1;
    v4 = [v2 archivedDataWithRootObject:v3 requiringSecureCoding:1 error:&v21];
    v5 = v21;
    if (v4)
    {
      v6 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = v7;

      v9 = [objc_opt_self() standardUserDefaults];
      isa = Data._bridgeToObjectiveC()().super.isa;
      v11 = String._bridgeToObjectiveC()();
      [v9 setObject:isa forKey:v11];

      sub_100026AC0(v6, v8);
    }

    else
    {
      v13 = v5;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      if (qword_100973578 != -1)
      {
        swift_once();
      }

      v14 = type metadata accessor for Logger();
      sub_10000C4AC(v14, qword_100976A68);
      swift_errorRetain();
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        *v17 = 138412290;
        swift_errorRetain();
        v19 = _swift_stdlib_bridgeErrorToNSError();
        *(v17 + 4) = v19;
        *v18 = v19;
        _os_log_impl(&_mh_execute_header, v15, v16, "Failed to persist current pseudonym with error: %@", v17, 0xCu);
        sub_100005508(v18, &qword_100975400, &qword_1007F65D0);
      }

      else
      {
      }
    }
  }

  else
  {
    v12 = [objc_opt_self() standardUserDefaults];
    v20 = String._bridgeToObjectiveC()();
    [v12 removeObjectForKey:?];
  }
}

uint64_t sub_1002E42DC(uint64_t a1)
{
  v2 = sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
  __chkstk_darwin(v2 - 8);
  v4 = &v15 - v3;
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1002E4E88(a1, v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_100005508(v4, &qword_10097A7F0, &unk_1007FB600);
    v9 = [objc_opt_self() standardUserDefaults];
    v10 = String._bridgeToObjectiveC()();
    [v9 removeObjectForKey:v10];

    return sub_100005508(a1, &qword_10097A7F0, &unk_1007FB600);
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    v12 = [objc_opt_self() standardUserDefaults];
    isa = Date._bridgeToObjectiveC()().super.isa;
    v14 = String._bridgeToObjectiveC()();
    [v12 setObject:isa forKey:v14];

    sub_100005508(a1, &qword_10097A7F0, &unk_1007FB600);
    return (*(v6 + 8))(v8, v5);
  }
}

void sub_1002E4564(void *a1)
{
  v1 = a1;
  if (a1[2])
  {
    v2 = sub_100280660(_swiftEmptyArrayStorage);
    v3 = v1 + 8;
    v4 = 1 << *(v1 + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & v1[8];
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    v48 = v1;
    while (v6)
    {
      v11 = v8;
LABEL_12:
      v12 = *(v1[7] + 8 * (__clz(__rbit64(v6)) | (v11 << 6)));

      v13 = v12;
      v14 = String._bridgeToObjectiveC()();
      if ((v2 & 0xC000000000000001) != 0)
      {
        if (v2 >= 0)
        {
          v2 &= 0xFFFFFFFFFFFFFF8uLL;
        }

        v15 = v13;
        v16 = __CocoaDictionary.count.getter();
        if (__OFADD__(v16, 1))
        {
          goto LABEL_38;
        }

        v2 = sub_1002E4C2C(v2, v16 + 1);
      }

      else
      {
        v17 = v13;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v50 = v2;
      v19 = sub_100570804(v14);
      v21 = *(v2 + 16);
      v22 = (v20 & 1) == 0;
      v23 = __OFADD__(v21, v22);
      v24 = v21 + v22;
      if (v23)
      {
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        swift_once();
        goto LABEL_33;
      }

      v25 = v20;
      if (*(v2 + 24) >= v24)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v29 = v19;
          sub_1002CEAFC();
          v19 = v29;
        }
      }

      else
      {
        sub_100572B88(v24, isUniquelyReferenced_nonNull_native);
        v19 = sub_100570804(v14);
        if ((v25 & 1) != (v26 & 1))
        {
          sub_1000276B4(0, &qword_100974E28, NSString_ptr);
          KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          return;
        }
      }

      v6 &= v6 - 1;
      v2 = v50;
      if (v25)
      {
        v9 = v50[7];
        v10 = *(v9 + 8 * v19);
        *(v9 + 8 * v19) = v13;
      }

      else
      {
        v50[(v19 >> 6) + 8] |= 1 << v19;
        *(*(v2 + 48) + 8 * v19) = v14;
        *(*(v2 + 56) + 8 * v19) = v13;

        v27 = *(v2 + 16);
        v23 = __OFADD__(v27, 1);
        v28 = v27 + 1;
        if (v23)
        {
          goto LABEL_39;
        }

        *(v2 + 16) = v28;
      }

      v8 = v11;
      v1 = v48;
    }

    while (1)
    {
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v11 >= v7)
      {
        break;
      }

      v6 = v3[v11];
      ++v8;
      if (v6)
      {
        goto LABEL_12;
      }
    }

    v30 = objc_opt_self();
    sub_1000276B4(0, &qword_100974E28, NSString_ptr);
    sub_1000276B4(0, &qword_100976A88, IDSPseudonym_ptr);
    sub_1002A5510();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v50 = 0;
    v32 = [v30 archivedDataWithRootObject:isa requiringSecureCoding:1 error:&v50];

    v33 = v50;
    if (v32)
    {
      v34 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v36 = v35;

      v37 = [objc_opt_self() standardUserDefaults];
      v38 = Data._bridgeToObjectiveC()().super.isa;
      v39 = String._bridgeToObjectiveC()();
      [v37 setObject:v38 forKey:v39];

      sub_100026AC0(v34, v36);
      return;
    }

    v41 = v33;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_100973578 != -1)
    {
      goto LABEL_40;
    }

LABEL_33:
    v42 = type metadata accessor for Logger();
    sub_10000C4AC(v42, qword_100976A68);
    swift_errorRetain();
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      *v45 = 138412290;
      swift_errorRetain();
      v47 = _swift_stdlib_bridgeErrorToNSError();
      *(v45 + 4) = v47;
      *v46 = v47;
      _os_log_impl(&_mh_execute_header, v43, v44, "Failed to persist pseudonyms to revoke error: %@", v45, 0xCu);
      sub_100005508(v46, &qword_100975400, &qword_1007F65D0);
    }

    else
    {
    }
  }

  else
  {

    v40 = [objc_opt_self() standardUserDefaults];
    v49 = String._bridgeToObjectiveC()();
    [v40 removeObjectForKey:?];
  }
}

uint64_t (*sub_1002E4B8C(void *a1))()
{
  a1[1] = v1;
  *a1 = sub_10002E624();
  return sub_1002E4BD4;
}

void sub_1002E4BD4(void **a1, char a2)
{
  if (a2)
  {

    sub_1002E4564(v2);
  }

  else
  {
    sub_1002E4564(*a1);
  }
}

Swift::Int sub_1002E4C2C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_10028088C(&qword_100974970, &unk_1007F9750);
    v2 = static _DictionaryStorage.convert(_:capacity:)();
    v19 = v2;
    __CocoaDictionary.makeIterator()();
    v3 = __CocoaDictionary.Iterator.next()();
    if (v3)
    {
      v4 = v3;
      sub_1000276B4(0, &qword_100974E28, NSString_ptr);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        sub_1000276B4(0, &qword_100976A88, IDSPseudonym_ptr);
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_100572B88(v12 + 1, 1);
        }

        v2 = v19;
        result = NSObject._rawHashValue(seed:)(*(v19 + 40));
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = __CocoaDictionary.Iterator.next()();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptyDictionarySingleton;
  }

  return v2;
}

uint64_t sub_1002E4E88(uint64_t a1, uint64_t a2)
{
  v4 = sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002E4EF8()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_1009A06B8);
  sub_10000C4AC(v0, qword_1009A06B8);
  return Logger.init(subsystem:category:)();
}

uint64_t HeadphoneProxFeatureClient.delegate.setter(uint64_t a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*HeadphoneProxFeatureClient.delegate.modify(uint64_t *a1))(void **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC16DaemoniOSLibrary26HeadphoneProxFeatureClient_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1002E5170;
}

void sub_1002E5170(void **a1, char a2)
{
  v3 = *a1;
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

char *sub_1002E51F0()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC16DaemoniOSLibrary26HeadphoneProxFeatureClient_manager;
  type metadata accessor for HeadphoneProxFeatureManager();
  *&v0[v2] = static HeadphoneProxFeatureManager.shared.getter();
  swift_unknownObjectWeakInit();
  v6.receiver = v0;
  v6.super_class = ObjectType;
  v3 = objc_msgSendSuper2(&v6, "init");
  sub_1002E57E0();
  v4 = v3;

  dispatch thunk of HeadphoneProxFeatureManager.delegate.setter();

  return v4;
}

void *HeadphoneProxFeatureClient.readyToShow(device:features:)(void *a1, uint64_t a2)
{
  if (qword_100973580 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000C4AC(v3, qword_1009A06B8);
  v4 = a1;

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v20[0] = swift_slowAlloc();
    *v7 = 136315394;
    v8 = [v4 bluetoothAddress];
    if (v8)
    {
      v9 = v8;
      v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = v11;
    }

    else
    {
      v12 = 0x8000000100789F30;
      v10 = 0xD000000000000015;
    }

    v13 = sub_10000C4E4(v10, v12, v20);

    *(v7 + 4) = v13;
    *(v7 + 12) = 2080;
    v14 = Array.description.getter();
    v16 = sub_10000C4E4(v14, v15, v20);

    *(v7 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v5, v6, "HeadphoneProxFeatureService: [Sharing] Features Ready To Show: Device: %s, Features: %s", v7, 0x16u);
    swift_arrayDestroy();
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v18 = result;
    isa = Array._bridgeToObjectiveC()().super.isa;
    [v18 readyToShowWithDevice:v4 features:isa];

    return swift_unknownObjectRelease();
  }

  return result;
}

Swift::Bool __swiftcall HeadphoneProxFeatureClient.shouldShowWhatsNewCard(deviceAddress:)(Swift::String deviceAddress)
{
  object = deviceAddress._object;
  countAndFlagsBits = deviceAddress._countAndFlagsBits;
  v3 = dispatch thunk of HeadphoneProxFeatureManager.shouldShowWhatsNewCard(deviceAddress:)();
  if (qword_100973580 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000C4AC(v4, qword_1009A06B8);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v7 = 136315394;
    *(v7 + 4) = sub_10000C4E4(countAndFlagsBits, object, &v12);
    *(v7 + 12) = 2080;
    if (v3)
    {
      v8 = 5457241;
    }

    else
    {
      v8 = 20302;
    }

    if (v3)
    {
      v9 = 0xE300000000000000;
    }

    else
    {
      v9 = 0xE200000000000000;
    }

    v10 = sub_10000C4E4(v8, v9, &v12);

    *(v7 + 14) = v10;
    _os_log_impl(&_mh_execute_header, v5, v6, "HeadphoneProxFeatureService: [Sharing] Should Show Whats New Card for Device: %s -> %s", v7, 0x16u);
    swift_arrayDestroy();
  }

  return v3 & 1;
}

unint64_t sub_1002E57E0()
{
  result = qword_100976AD0;
  if (!qword_100976AD0)
  {
    type metadata accessor for HeadphoneProxFeatureClient();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100976AD0);
  }

  return result;
}

uint64_t sub_1002E5834()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_100976AD8);
  v1 = sub_10000C4AC(v0, qword_100976AD8);
  if (qword_100973758 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A0A50);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1002E58FC(void *a1)
{
  v2 = v1;
  swift_defaultActor_initialize();
  *(v2 + 120) = -1;
  *(v2 + 124) = 0;
  *(v2 + 112) = a1;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = String.utf8CString.getter();
  v5 = a1;

  swift_beginAccess();
  v6 = notify_register_check((v4 + 32), (v2 + 120));
  swift_endAccess();

  if (v6)
  {
    if (qword_100973588 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_10000C4AC(v7, qword_100976AD8);

    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v18[0] = swift_slowAlloc();
      *v10 = 136315650;
      _s19EnabledStateMonitorCMa();

      v11 = String.init<A>(describing:)();
      v13 = sub_10000C4E4(v11, v12, v18);

      *(v10 + 4) = v13;
      *(v10 + 12) = 2080;
      v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v16 = sub_10000C4E4(v14, v15, v18);

      *(v10 + 14) = v16;
      *(v10 + 22) = 1024;
      *(v10 + 24) = v6;
      _os_log_impl(&_mh_execute_header, v8, v9, "%s: notify_register_check(%s) failed with error %u", v10, 0x1Cu);
      swift_arrayDestroy();
    }
  }

  return v2;
}

uint64_t sub_1002E5B4C()
{
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

__n128 sub_1002E5BB4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_1002E5BC8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 25))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 24);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1002E5C10(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

id sub_1002E5C74()
{
  if (qword_100973588 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000C4AC(v0, qword_100976AD8);

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v9 = v4;
    *v3 = 136315138;
    _s19EnabledStateMonitorCMa();

    v5 = String.init<A>(describing:)();
    v7 = sub_10000C4E4(v5, v6, &v9);

    *(v3 + 4) = v7;
    _os_log_impl(&_mh_execute_header, v1, v2, "%s: start", v3, 0xCu);
    sub_10000C60C(v4);
  }

  return sub_1002E5DEC();
}

id sub_1002E5DEC()
{
  v1 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  __chkstk_darwin(v1 - 8);
  v3 = aBlock - v2;
  result = [objc_opt_self() sharedMonitor];
  if (result)
  {
    v5 = result;
    v6 = [result deviceKeyBagUnlocked];

    if (v6)
    {
      goto LABEL_6;
    }

    result = [objc_opt_self() sharedManager];
    if (result)
    {
      v7 = result;
      v8 = [result localAttestedLTK];

      if (!v8)
      {
        if (qword_1009737D0 != -1)
        {
LABEL_23:
          swift_once();
        }

        v15 = 0;
        v16 = *(qword_1009A0B08 + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication10LTKManager_localLTKByKeyClass);
        v17 = 1 << *(v16 + 32);
        v18 = -1;
        if (v17 < 64)
        {
          v18 = ~(-1 << v17);
        }

        v19 = v18 & *(v16 + 64);
        v20 = (v17 + 63) >> 6;
        do
        {
          if (!v19)
          {
            while (1)
            {
              v21 = v15 + 1;
              if (__OFADD__(v15, 1))
              {
                break;
              }

              if (v21 >= v20)
              {
                goto LABEL_6;
              }

              v19 = *(v16 + 64 + 8 * v21);
              ++v15;
              if (v19)
              {
                v15 = v21;
                goto LABEL_18;
              }
            }

            __break(1u);
            goto LABEL_23;
          }

          v21 = v15;
LABEL_18:
          v22 = __clz(__rbit64(v19));
          v19 &= v19 - 1;
        }

        while ((*(*(*(v16 + 56) + ((v21 << 9) | (8 * v22))) + OBJC_IVAR____TtCV16DaemoniOSLibrary16SDAuthentication13LTKCollection_ltksLoaded) & 1) != 0);
        v23 = [objc_opt_self() defaultCenter];
        if (qword_100973678 != -1)
        {
          swift_once();
        }

        v24 = qword_1009A07C8;
        v25 = [objc_opt_self() mainQueue];
        aBlock[4] = sub_1002E70DC;
        aBlock[5] = v0;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1002E679C;
        aBlock[3] = &unk_1008DA800;
        v26 = _Block_copy(aBlock);

        v27 = [v23 addObserverForName:v24 object:0 queue:v25 usingBlock:v26];
        _Block_release(v26);
        swift_unknownObjectRelease();

        return sub_1002E6890();
      }

      v9 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v11 = v10;

      sub_100026AC0(v9, v11);
LABEL_6:
      v12 = type metadata accessor for TaskPriority();
      (*(*(v12 - 8) + 56))(v3, 1, 1, v12);
      v13 = sub_1002E70E4();
      v14 = swift_allocObject();
      v14[2] = v0;
      v14[3] = v13;
      v14[4] = v0;
      swift_retain_n();
      sub_1002B3098(0, 0, v3, &unk_1007F9D18, v14);

      return sub_1002E6890();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1002E61E0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100005C04;

  return sub_1002E6270();
}

uint64_t sub_1002E6290()
{
  v13 = v0;
  if (qword_100973588 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000C4AC(v1, qword_100976AD8);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[3];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136315138;
    v0[2] = v4;
    _s19EnabledStateMonitorCMa();

    v7 = String.init<A>(describing:)();
    v9 = sub_10000C4E4(v7, v8, &v12);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v2, v3, "%s: handleFirstUnlock", v5, 0xCu);
    sub_10000C60C(v6);
  }

  v10 = swift_task_alloc();
  v0[4] = v10;
  *v10 = v0;
  v10[1] = sub_1002E6474;

  return sub_1002E71EC();
}

uint64_t sub_1002E6474()
{
  v1 = *(*v0 + 24);

  return _swift_task_switch(sub_1002E6584, v1, 0);
}

uint64_t sub_1002E65A4(uint64_t a1, uint64_t a2)
{
  v3 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  __chkstk_darwin(v3 - 8);
  v5 = &v9 - v4;
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = a2;

  sub_1002B3098(0, 0, v5, &unk_1007F9D58, v7);
}

uint64_t sub_1002E66D0()
{
  if (*(v0[2] + 124))
  {
    v1 = v0[1];

    return v1();
  }

  else
  {
    v3 = swift_task_alloc();
    v0[3] = v3;
    *v3 = v0;
    v3[1] = sub_1002963B0;

    return sub_1002E6270();
  }
}

uint64_t sub_1002E679C(uint64_t a1, uint64_t a2)
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

uint64_t sub_1002E6890()
{
  v1 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  __chkstk_darwin(v1 - 8);
  v3 = &v23 - v2;
  v4 = sub_10028088C(&qword_100976BE0, &qword_1007F9D30);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v8 = __chkstk_darwin(v7);
  v10 = &v23 - v9;
  result = __chkstk_darwin(v8);
  v13 = &v23 - v12;
  if (qword_100973C50 != -1)
  {
    result = swift_once();
  }

  if (qword_1009A10A8)
  {
    v23 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    v24 = v3;
    v26 = v0;
    v14 = *(v5 + 16);
    v14(v10, qword_1009A10A8 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationManager_enabledDevicesChangedStream, v4);
    v15 = *(v5 + 32);
    v25 = v13;
    v15(v13, v10, v4);
    v16 = type metadata accessor for TaskPriority();
    (*(*(v16 - 8) + 56))(v3, 1, 1, v16);
    v17 = v23;
    v14(v23, v13, v4);
    v18 = sub_1002E70E4();
    v19 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v20 = (v6 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
    v21 = swift_allocObject();
    v22 = v26;
    *(v21 + 16) = v26;
    *(v21 + 24) = v18;
    v15((v21 + v19), v17, v4);
    *(v21 + v20) = v22;
    swift_retain_n();
    sub_1002B3098(0, 0, v24, &unk_1007F9D40, v21);

    return (*(v5 + 8))(v25, v4);
  }

  return result;
}

uint64_t sub_1002E6B84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v7 = sub_10028088C(&qword_100976BE8, &qword_1007F9D48);
  v5[8] = v7;
  v5[9] = *(v7 - 8);
  v5[10] = swift_task_alloc();

  return _swift_task_switch(sub_1002E6C54, a5, 0);
}

uint64_t sub_1002E6C54()
{
  sub_10028088C(&qword_100976BE0, &qword_1007F9D30);
  AsyncStream.makeAsyncIterator()();
  v1 = sub_1002E70E4();
  v0[11] = v1;
  v2 = v0[7];
  v3 = swift_task_alloc();
  v0[12] = v3;
  *v3 = v0;
  v3[1] = sub_1002E6D38;
  v4 = v0[8];

  return AsyncStream.Iterator.next(isolation:)(v0 + 2, v2, v1, v4);
}

uint64_t sub_1002E6D38()
{
  v1 = *(*v0 + 56);

  return _swift_task_switch(sub_1002E6E48, v1, 0);
}

uint64_t sub_1002E6E48()
{
  v1 = *(v0 + 40);
  if (v1 == 255)
  {
    (*(*(v0 + 72) + 8))(*(v0 + 80), *(v0 + 64));

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    sub_1002E86B0(*(v0 + 16), *(v0 + 24), *(v0 + 32), v1);
    v2 = swift_task_alloc();
    *(v0 + 104) = v2;
    *v2 = v0;
    v2[1] = sub_1002E6F44;

    return sub_1002E71EC();
  }
}

uint64_t sub_1002E6F44()
{
  v1 = *v0;
  v2 = *v0;

  v3 = v1[11];
  v4 = v1[7];
  v5 = swift_task_alloc();
  v1[12] = v5;
  *v5 = v2;
  v5[1] = sub_1002E6D38;
  v6 = v1[8];

  return AsyncStream.Iterator.next(isolation:)(v1 + 2, v4, v3, v6);
}

unint64_t sub_1002E70E4()
{
  result = qword_100976BD8;
  if (!qword_100976BD8)
  {
    _s19EnabledStateMonitorCMa();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100976BD8);
  }

  return result;
}

uint64_t sub_1002E7138()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100005C00;

  return sub_1002E61E0();
}

uint64_t sub_1002E720C()
{
  v47 = v0;
  v1 = v0[11];
  swift_beginAccess();
  if (*(v1 + 120) == -1)
  {
    if (qword_100973588 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_10000C4AC(v2, qword_100976AD8);

    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = v0[11];
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v46 = v7;
      *v6 = 136315138;
      v0[10] = v5;
      _s19EnabledStateMonitorCMa();

      v8 = String.init<A>(describing:)();
      v10 = sub_10000C4E4(v8, v9, &v46);

      *(v6 + 4) = v10;
      _os_log_impl(&_mh_execute_header, v3, v4, "%s: notify token is invalid, notify_set_state will likely not work correctly", v6, 0xCu);
      sub_10000C60C(v7);
    }
  }

  if (qword_100973C50 != -1)
  {
    swift_once();
  }

  v11 = qword_1009A10A8;
  v0[12] = qword_1009A10A8;
  if (v11)
  {
    v11;
    v12 = swift_task_alloc();
    v0[13] = v12;
    *v12 = v0;
    v12[1] = sub_1002E78C8;

    return sub_100693878();
  }

  else
  {
    if (qword_100973588 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_10000C4AC(v14, qword_100976AD8);

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = v0[11];
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v46 = v19;
      *v18 = 136315138;
      v0[7] = v17;
      _s19EnabledStateMonitorCMa();

      v20 = String.init<A>(describing:)();
      v22 = sub_10000C4E4(v20, v21, &v46);

      *(v18 + 4) = v22;
      _os_log_impl(&_mh_execute_header, v15, v16, "%s: Not enabled, updated state to 0", v18, 0xCu);
      sub_10000C60C(v19);
    }

    v23 = notify_set_state(*(v0[11] + 120), 0);
    if (v23)
    {
      v24 = v23;

      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = v0[11];
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v46 = v29;
        *v28 = 136315650;
        v0[6] = v27;
        _s19EnabledStateMonitorCMa();

        v30 = String.init<A>(describing:)();
        v32 = sub_10000C4E4(v30, v31, &v46);

        *(v28 + 4) = v32;
        *(v28 + 12) = 2048;
        *(v28 + 14) = 0;
        *(v28 + 22) = 1024;
        *(v28 + 24) = v24;
        _os_log_impl(&_mh_execute_header, v25, v26, "%s: notify_set_state(%ld) failed with error %u", v28, 0x1Cu);
        sub_10000C60C(v29);
      }
    }

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v33 = String.utf8CString.getter();

    v34 = notify_post((v33 + 32));

    if (v34)
    {
      if (qword_100973588 != -1)
      {
        swift_once();
      }

      sub_10000C4AC(v14, qword_100976AD8);

      v35 = Logger.logObject.getter();
      v36 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v35, v36))
      {
        v37 = v0[11];
        v38 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        *v38 = 136315650;
        v0[5] = v37;
        _s19EnabledStateMonitorCMa();

        v39 = String.init<A>(describing:)();
        v41 = sub_10000C4E4(v39, v40, &v46);

        *(v38 + 4) = v41;
        *(v38 + 12) = 2080;
        v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v44 = sub_10000C4E4(v42, v43, &v46);

        *(v38 + 14) = v44;
        *(v38 + 22) = 1024;
        *(v38 + 24) = v34;
        _os_log_impl(&_mh_execute_header, v35, v36, "%s: notify_post(%s) failed with error %u", v38, 0x1Cu);
        swift_arrayDestroy();
      }
    }

    v45 = v0[1];

    return v45();
  }
}

uint64_t sub_1002E78C8(uint64_t a1)
{
  v5 = *v2;
  v4 = *v2;

  v6 = *(v4 + 88);
  if (v1)
  {

    v7 = sub_1002E80E4;
  }

  else
  {
    *(v5 + 112) = a1;
    v7 = sub_1002E7A0C;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_1002E7A0C()
{
  v53 = v0;
  v1 = v0[14];
  v2 = v0[12];
  v3 = [v1 count];

  if (v3 < 1)
  {
    if (qword_100973588 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_10000C4AC(v23, qword_100976AD8);

    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = v0[11];
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v52 = v28;
      *v27 = 136315138;
      v0[7] = v26;
      _s19EnabledStateMonitorCMa();

      v29 = String.init<A>(describing:)();
      v31 = sub_10000C4E4(v29, v30, &v52);

      *(v27 + 4) = v31;
      _os_log_impl(&_mh_execute_header, v24, v25, "%s: Not enabled, updated state to 0", v27, 0xCu);
      sub_10000C60C(v28);
    }

    v32 = notify_set_state(*(v0[11] + 120), 0);
    if (v32)
    {
      v14 = v32;

      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v15, v16))
      {
        v33 = v0[11];
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v52 = v19;
        *v18 = 136315650;
        v0[6] = v33;
        _s19EnabledStateMonitorCMa();

        v34 = String.init<A>(describing:)();
        v36 = sub_10000C4E4(v34, v35, &v52);

        *(v18 + 4) = v36;
        *(v18 + 12) = 2048;
        *(v18 + 14) = 0;
        goto LABEL_16;
      }

LABEL_17:
    }
  }

  else
  {
    if (qword_100973588 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_10000C4AC(v4, qword_100976AD8);

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = v0[11];
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v52 = v9;
      *v8 = 136315394;
      v0[9] = v7;
      _s19EnabledStateMonitorCMa();

      v10 = String.init<A>(describing:)();
      v12 = sub_10000C4E4(v10, v11, &v52);

      *(v8 + 4) = v12;
      *(v8 + 12) = 2048;
      *(v8 + 14) = 1;
      _os_log_impl(&_mh_execute_header, v5, v6, "%s: updated state to %ld", v8, 0x16u);
      sub_10000C60C(v9);
    }

    v13 = notify_set_state(*(v0[11] + 120), 1uLL);
    if (v13)
    {
      v14 = v13;

      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v15, v16))
      {
        v17 = v0[11];
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v52 = v19;
        *v18 = 136315650;
        v0[8] = v17;
        _s19EnabledStateMonitorCMa();

        v20 = String.init<A>(describing:)();
        v22 = sub_10000C4E4(v20, v21, &v52);

        *(v18 + 4) = v22;
        *(v18 + 12) = 2048;
        *(v18 + 14) = 1;
LABEL_16:
        *(v18 + 22) = 1024;
        *(v18 + 24) = v14;
        _os_log_impl(&_mh_execute_header, v15, v16, "%s: notify_set_state(%ld) failed with error %u", v18, 0x1Cu);
        sub_10000C60C(v19);

        goto LABEL_17;
      }

      goto LABEL_17;
    }
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v37 = String.utf8CString.getter();

  v38 = notify_post((v37 + 32));

  if (v38)
  {
    if (qword_100973588 != -1)
    {
      swift_once();
    }

    v39 = type metadata accessor for Logger();
    sub_10000C4AC(v39, qword_100976AD8);

    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = v0[11];
      v43 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      *v43 = 136315650;
      v0[5] = v42;
      _s19EnabledStateMonitorCMa();

      v44 = String.init<A>(describing:)();
      v46 = sub_10000C4E4(v44, v45, &v52);

      *(v43 + 4) = v46;
      *(v43 + 12) = 2080;
      v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v49 = sub_10000C4E4(v47, v48, &v52);

      *(v43 + 14) = v49;
      *(v43 + 22) = 1024;
      *(v43 + 24) = v38;
      _os_log_impl(&_mh_execute_header, v40, v41, "%s: notify_post(%s) failed with error %u", v43, 0x1Cu);
      swift_arrayDestroy();
    }
  }

  v50 = v0[1];

  return v50();
}

uint64_t sub_1002E80E4()
{
  v35 = v0;

  if (qword_100973588 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000C4AC(v1, qword_100976AD8);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 88);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v34 = v6;
    *v5 = 136315138;
    *(v0 + 56) = v4;
    _s19EnabledStateMonitorCMa();

    v7 = String.init<A>(describing:)();
    v9 = sub_10000C4E4(v7, v8, &v34);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v2, v3, "%s: Not enabled, updated state to 0", v5, 0xCu);
    sub_10000C60C(v6);
  }

  v10 = notify_set_state(*(*(v0 + 88) + 120), 0);
  if (v10)
  {
    v11 = v10;

    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = *(v0 + 88);
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v34 = v16;
      *v15 = 136315650;
      *(v0 + 48) = v14;
      _s19EnabledStateMonitorCMa();

      v17 = String.init<A>(describing:)();
      v19 = sub_10000C4E4(v17, v18, &v34);

      *(v15 + 4) = v19;
      *(v15 + 12) = 2048;
      *(v15 + 14) = 0;
      *(v15 + 22) = 1024;
      *(v15 + 24) = v11;
      _os_log_impl(&_mh_execute_header, v12, v13, "%s: notify_set_state(%ld) failed with error %u", v15, 0x1Cu);
      sub_10000C60C(v16);
    }
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = String.utf8CString.getter();

  v21 = notify_post((v20 + 32));

  if (v21)
  {
    if (qword_100973588 != -1)
    {
      swift_once();
    }

    sub_10000C4AC(v1, qword_100976AD8);

    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = *(v0 + 88);
      v25 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      *v25 = 136315650;
      *(v0 + 40) = v24;
      _s19EnabledStateMonitorCMa();

      v26 = String.init<A>(describing:)();
      v28 = sub_10000C4E4(v26, v27, &v34);

      *(v25 + 4) = v28;
      *(v25 + 12) = 2080;
      v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v31 = sub_10000C4E4(v29, v30, &v34);

      *(v25 + 14) = v31;
      *(v25 + 22) = 1024;
      *(v25 + 24) = v21;
      _os_log_impl(&_mh_execute_header, v22, v23, "%s: notify_post(%s) failed with error %u", v25, 0x1Cu);
      swift_arrayDestroy();
    }
  }

  v32 = *(v0 + 8);

  return v32();
}

uint64_t sub_1002E8584(uint64_t a1)
{
  v4 = *(sub_10028088C(&qword_100976BE0, &qword_1007F9D30) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100005C04;

  return sub_1002E6B84(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_1002E86B0(uint64_t result, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 != -1)
  {
    return sub_1002E86C8(result, a2, a3);
  }

  return result;
}

uint64_t sub_1002E86D0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100005C00;

  return sub_1002E66B0(a1, v4, v5, v6);
}

unint64_t *sub_1002E8784(uint64_t a1, unint64_t a2)
{
  v3 = a2 >> 62;
  v25 = HIDWORD(a1);
  if ((a2 >> 62) <= 1)
  {
    if (!v3)
    {
      v4 = BYTE6(a2);
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (v3 != 2)
  {
    return _swiftEmptyArrayStorage;
  }

  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  v4 = v5 - v6;
  if (__OFSUB__(v5, v6))
  {
    __break(1u);
LABEL_8:
    if (__OFSUB__(HIDWORD(a1), a1))
    {
      goto LABEL_62;
    }

    v4 = HIDWORD(a1) - a1;
  }

LABEL_10:
  v7 = _swiftEmptyArrayStorage;
  if (v4)
  {
    v40 = _swiftEmptyArrayStorage;
    v26 = a2 >> 62;
    sub_10028FC3C(0, v4 & ~(v4 >> 63), 0);
    v9 = v26;
    v8 = a1;
    if (v26)
    {
      if (v26 == 2)
      {
        v10 = *(a1 + 16);
      }

      else
      {
        v10 = a1;
      }
    }

    else
    {
      v10 = 0;
    }

    if (v4 < 0)
    {
      goto LABEL_61;
    }

    v11 = 0;
    v7 = v40;
    do
    {
      if (v9 == 2)
      {
        if (v10 < *(v8 + 16))
        {
          goto LABEL_53;
        }

        v12 = *(v8 + 24);
      }

      else if (v9 == 1)
      {
        v12 = a1 >> 32;
        if (v10 < a1)
        {
          goto LABEL_52;
        }
      }

      else
      {
        v12 = BYTE6(a2);
        if (v10 < 0)
        {
          goto LABEL_54;
        }
      }

      if (v10 >= v12)
      {
        __break(1u);
LABEL_51:
        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
      }

      if (v9 == 2)
      {
        if (v10 < *(v8 + 16))
        {
          goto LABEL_55;
        }

        if (v10 >= *(v8 + 24))
        {
          goto LABEL_58;
        }

        v17 = __DataStorage._bytes.getter();
        if (!v17)
        {
          goto LABEL_64;
        }

        v14 = v17;
        v18 = __DataStorage._offset.getter();
        v16 = v10 - v18;
        if (__OFSUB__(v10, v18))
        {
          goto LABEL_60;
        }
      }

      else
      {
        if (v9 != 1)
        {
          if (v10 >= BYTE6(a2))
          {
            goto LABEL_56;
          }

          v28 = v8;
          v29 = BYTE2(v8);
          v30 = BYTE3(v8);
          v31 = v25;
          v32 = BYTE5(v8);
          v33 = BYTE6(v8);
          v34 = HIBYTE(v8);
          v35 = a2;
          v36 = BYTE2(a2);
          v37 = BYTE3(a2);
          v38 = BYTE4(a2);
          v39 = BYTE5(a2);
          v19 = *(&v28 + v10);
          goto LABEL_42;
        }

        if (v10 < a1 || v10 >= a1 >> 32)
        {
          goto LABEL_57;
        }

        v13 = __DataStorage._bytes.getter();
        if (!v13)
        {
          goto LABEL_63;
        }

        v14 = v13;
        v15 = __DataStorage._offset.getter();
        v16 = v10 - v15;
        if (__OFSUB__(v10, v15))
        {
          goto LABEL_59;
        }
      }

      v19 = *(v14 + v16);
      v9 = v26;
      v8 = a1;
LABEL_42:
      if (v11 == &_mh_execute_header)
      {
        goto LABEL_51;
      }

      v20 = v19 << (v11 & 0x18);
      if (v11 <= 0x1F)
      {
        v21 = v20;
      }

      else
      {
        v21 = 0;
      }

      v40 = v7;
      v23 = v7[2];
      v22 = v7[3];
      if (v23 >= v22 >> 1)
      {
        sub_10028FC3C((v22 > 1), v23 + 1, 1);
        v9 = v26;
        v8 = a1;
        v7 = v40;
      }

      v7[2] = v23 + 1;
      *(v7 + v23 + 8) = v21;
      ++v10;
      v11 = (v11 + 8);
      --v4;
    }

    while (v4);
  }

  return v7;
}

uint64_t sub_1002E8AD4(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a8;
  v38 = a1;
  v39 = a2;
  v10 = *(a5 - 8);
  __chkstk_darwin(a1);
  v40 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  v12 = __chkstk_darwin(AssociatedTypeWitness);
  v14 = &v27 - v13;
  __chkstk_darwin(v12);
  v36 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_getAssociatedTypeWitness();
  v30 = *(v16 - 8);
  v31 = v16;
  __chkstk_darwin(v16);
  v18 = &v27 - v17;
  v19 = dispatch thunk of Collection.count.getter();
  if (!v19)
  {
    return static Array._allocateUninitialized(_:)();
  }

  v41 = v19;
  v45 = ContiguousArray.init()();
  v32 = type metadata accessor for ContiguousArray();
  ContiguousArray.reserveCapacity(_:)(v41);
  result = dispatch thunk of Collection.startIndex.getter();
  if ((v41 & 0x8000000000000000) == 0)
  {
    v27 = v10;
    v28 = a5;
    v21 = 0;
    v33 = (v42 + 16);
    v34 = (v42 + 8);
    v35 = v8;
    while (!__OFADD__(v21, 1))
    {
      v42 = v21 + 1;
      v22 = dispatch thunk of Collection.subscript.read();
      v23 = v14;
      v24 = v14;
      v25 = AssociatedTypeWitness;
      (*v33)(v23);
      v22(v44, 0);
      v26 = v43;
      v38(v24, v40);
      if (v26)
      {
        (*v34)(v24, v25);
        (*(v30 + 8))(v18, v31);

        return (*(v27 + 32))(v29, v40, v28);
      }

      v43 = 0;
      (*v34)(v24, v25);
      ContiguousArray.append(_:)();
      result = dispatch thunk of Collection.formIndex(after:)();
      ++v21;
      v14 = v24;
      if (v42 == v41)
      {
        (*(v30 + 8))(v18, v31);
        return v45;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void URL.realPathURL()(NSURL *a1@<X8>)
{
  URL._bridgeToObjectiveC()(a1);
  v3 = v2;
  v4 = CFURLCopyFileSystemPath(v2, kCFURLPOSIXPathStyle);

  if (v4)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = String.utf8CString.getter();

    v6 = realpath_DARWIN_EXTSN((v5 + 32), 0);

    if (!v6)
    {
      goto LABEL_9;
    }

    String.init(cString:)();
    free(v6);
    v7 = String.utf8CString.getter();
    v8 = strlen((v7 + 32));

    v9 = URL.isDirectory()();
    if (v10)
    {

      return;
    }

    v12 = v9;
    v13 = String.utf8CString.getter();

    v14 = CFURLCreateFromFileSystemRepresentation(0, (v13 + 32), v8, v12);

    if (v14)
    {
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v15 = type metadata accessor for URL();
      (*(*(v15 - 8) + 56))(a1, 0, 1, v15);
    }

    else
    {
LABEL_9:
      v16 = type metadata accessor for URL();
      (*(*(v16 - 8) + 56))(a1, 1, 1, v16);
    }
  }

  else
  {
    v11 = type metadata accessor for URL();
    (*(*(v11 - 8) + 56))(a1, 1, 1, v11);
  }
}

uint64_t SDRunState.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0x7472617453746F6ELL;
  v2 = 0x6574656C706D6F63;
  v3 = 0x64656C696166;
  if (a1 != 3)
  {
    v3 = 1885956979;
  }

  if (a1 != 2)
  {
    v2 = v3;
  }

  if (a1)
  {
    v1 = 0x6572676F72506E69;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

Swift::Int sub_1002E9200()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1002E92E0(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_1002E93AC(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1002E9488@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s16DaemoniOSLibrary10SDRunStateO8rawValueACSgSS_tcfC_0(*a1);
  *a2 = result;
  return result;
}

void sub_1002E94B8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0x7472617453746F6ELL;
  v4 = 0xE900000000000064;
  v5 = 0x6574656C706D6F63;
  v6 = 0xE600000000000000;
  v7 = 0x64656C696166;
  if (v2 != 3)
  {
    v7 = 1885956979;
    v6 = 0xE400000000000000;
  }

  if (v2 != 2)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = 0xEA00000000007373;
  if (*v1)
  {
    v3 = 0x6572676F72506E69;
  }

  else
  {
    v8 = 0xEA00000000006465;
  }

  if (*v1 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v5;
  }

  if (*v1 <= 1u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v4;
  }

  *a1 = v9;
  a1[1] = v10;
}

uint64_t Optional<A>.description.getter(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(a1);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8, v10);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    v15 = 0;
    v16 = 0xE000000000000000;
    _StringGuts.grow(_:)(17);

    v15 = 0x6C616E6F6974704FLL;
    v16 = 0xE90000000000003CLL;
    v11._countAndFlagsBits = _typeName(_:qualified:)();
    String.append(_:)(v11);

    v12._countAndFlagsBits = 0x656E6F6E2E3ELL;
    v12._object = 0xE600000000000000;
    String.append(_:)(v12);
    return v15;
  }

  else
  {
    (*(v3 + 32))(v6, v8, v2);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    (*(v3 + 8))(v6, v2);
    return v14;
  }
}

uint64_t sub_1002E977C()
{

  return swift_deallocClassInstance();
}

Swift::Int sub_1002E97B4()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Int sub_1002E97F8(uint64_t a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

uint64_t sub_1002E9838@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X7>, uint64_t a7@<X8>)
{
  v49 = a7;
  v50 = *(a3 - 8);
  __chkstk_darwin(a1);
  v48 = v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = v14;
  v46 = *(*(*(v14 + 8) + 24) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  __chkstk_darwin(AssociatedTypeWitness);
  v43 = v38 - v15;
  v52 = a6;
  v16 = *(*(a6 + 8) + 8);
  v17 = type metadata accessor for EnumeratedSequence();
  v40 = *(v17 - 8);
  v41 = v17;
  __chkstk_darwin(v17);
  v19 = v38 - v18;
  v42 = a1;
  v47 = a4;
  v20 = dispatch thunk of Collection.count.getter();
  v21 = a2;
  v22 = a5;
  result = dispatch thunk of static FixedWidthInteger.bitWidth.getter();
  v24 = v20 * result;
  if ((v20 * result) >> 64 == (v20 * result) >> 63)
  {
    v25 = v51;
    if (v24 == dispatch thunk of static FixedWidthInteger.bitWidth.getter())
    {
      v26 = v47;
      v27 = Sequence.enumerated()();
      v38[1] = v38;
      __chkstk_darwin(v27);
      v39 = v21;
      v38[-6] = v21;
      v38[-5] = a3;
      v38[-4] = v26;
      v38[-3] = v22;
      v28 = v22;
      v29 = v52;
      v38[-2] = v25;
      v38[-1] = v29;
      v53[5] = v16;
      v30 = v41;
      WitnessTable = swift_getWitnessTable();
      v32 = v45;
      v34 = sub_1002E8AD4(sub_1002F52E0, &v38[-8], v30, a3, &type metadata for Never, WitnessTable, &protocol witness table for Never, v33);
      v45 = v34;
      v42 = v32;
      (*(v40 + 8))(v19, v30);
      v53[0] = v34;
      swift_getAssociatedConformanceWitness();
      dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
      v35 = v48;
      v36 = dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
      __chkstk_darwin(v36);
      v38[-6] = v39;
      v38[-5] = a3;
      v38[-4] = v26;
      v38[-3] = v28;
      v37 = v52;
      v38[-2] = v25;
      v38[-1] = v37;
      type metadata accessor for Array();
      swift_getWitnessTable();
      Sequence.reduce<A>(_:_:)();
      (*(v50 + 8))(v35, a3);
    }

    else
    {
      v53[0] = v21;
      v53[1] = a3;
      v53[2] = v22;
      v53[3] = v25;
      type metadata accessor for IntegerPacker.PackError(0, v53);
      swift_getWitnessTable();
      swift_allocError();
      return swift_willThrow();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1002E9CE8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, char *a5@<X5>, uint64_t a6@<X8>)
{
  v36 = a6;
  v38 = a2;
  v39 = a5;
  v43 = a4;
  v40 = a1;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = __chkstk_darwin(TupleTypeMetadata2);
  v11 = v34 - v10;
  v12 = *(a3 - 8);
  v13 = __chkstk_darwin(v9);
  v41 = v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v42 = v34 - v16;
  v17 = __chkstk_darwin(v15);
  v19 = v34 - v18;
  v20 = __chkstk_darwin(v17);
  v22 = v34 - v21;
  __chkstk_darwin(v20);
  v37 = v34 - v23;
  (*(v24 + 16))(v11, a1, TupleTypeMetadata2);
  dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
  v44 = 0;
  v25 = sub_1002F5340();
  dispatch thunk of BinaryInteger.init<A>(_:)();
  dispatch thunk of static BinaryInteger.~ prefix(_:)();
  v26 = *(v12 + 8);
  v26(v19, a3);
  v44 = dispatch thunk of static FixedWidthInteger.bitWidth.getter();
  v39 = v22;
  v34[1] = v25;
  dispatch thunk of static BinaryInteger.<< infix<A>(_:_:)();
  v27 = v41;
  v35 = v19;
  v28 = v37;
  dispatch thunk of static BinaryInteger.~ prefix(_:)();
  dispatch thunk of static BinaryInteger.& infix(_:_:)();
  v29 = v27;
  v26(v27, a3);
  v30 = *v40;
  result = dispatch thunk of static FixedWidthInteger.bitWidth.getter();
  if ((v30 * result) >> 64 == (v30 * result) >> 63)
  {
    v44 = v30 * result;
    v32 = v29;
    dispatch thunk of BinaryInteger.init<A>(_:)();
    v33 = v42;
    dispatch thunk of static BinaryInteger.<< infix<A>(_:_:)();
    v26(v32, a3);
    v26(v33, a3);
    v26(v35, a3);
    v26(v39, a3);
    return (v26)(v28, a3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1002EA0E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v66 = a3;
  v84 = a2;
  v85 = a8;
  v13 = *(*(a8 + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v92 = *(TupleTypeMetadata2 - 8);
  v15 = __chkstk_darwin(TupleTypeMetadata2);
  v80 = &v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v79 = &v62 - v17;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v78 = type metadata accessor for Range();
  v87 = *(v78 - 8);
  __chkstk_darwin(v78);
  v77 = &v62 - v18;
  v86 = swift_getAssociatedTypeWitness();
  v67 = *(v86 - 8);
  v19 = __chkstk_darwin(v86);
  v76 = &v62 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v75 = &v62 - v22;
  v93 = AssociatedTypeWitness;
  v71 = *(AssociatedTypeWitness - 8);
  v23 = __chkstk_darwin(v21);
  v82 = &v62 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v26 = &v62 - v25;
  v88 = a1;
  v89 = a5;
  v27 = v66;
  v83 = v13;
  v28 = dispatch thunk of Collection.count.getter();
  v65 = a6;
  result = dispatch thunk of static FixedWidthInteger.bitWidth.getter();
  v30 = v28 * result;
  if ((v28 * result) >> 64 != (v28 * result) >> 63)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  result = dispatch thunk of static FixedWidthInteger.bitWidth.getter();
  if (!result)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    return result;
  }

  if (v30 == 0x8000000000000000 && result == -1)
  {
    goto LABEL_20;
  }

  if (v30 % result)
  {
    v95[0] = v27;
    v95[1] = a4;
    v95[2] = v65;
    v95[3] = a7;
    type metadata accessor for IntegerPacker.PackError(0, v95);
    swift_getWitnessTable();
    swift_allocError();
    swift_willThrow();
  }

  else
  {
    v62 = a7;
    v63 = a4;
    v95[0] = static Array._allocateUninitialized(_:)();
    v32 = v89;
    dispatch thunk of Collection.startIndex.getter();
    v33 = v71 + 1;
    v73 = v71 + 2;
    v72 = (v92 + 16);
    v71 += 4;
    v70 = (v92 + 32);
    v69 = (v87 + 8);
    v68 = (v67 + 2);
    ++v67;
    v34 = v82;
    v74 = v26;
    v91 = v33;
    while (1)
    {
      dispatch thunk of Collection.endIndex.getter();
      v35 = v93;
      v36 = dispatch thunk of static Comparable.< infix(_:_:)();
      v37 = *v33;
      v38 = (*v33)(v34, v35);
      v92 = v37;
      if ((v36 & 1) == 0)
      {
        break;
      }

      dispatch thunk of RandomAccessCollection.index(_:offsetBy:)();
      result = dispatch thunk of static Comparable.<= infix(_:_:)();
      if ((result & 1) == 0)
      {
        __break(1u);
        goto LABEL_18;
      }

      v39 = *v73;
      v40 = v79;
      v41 = v93;
      (*v73)(v79, v26, v93);
      v42 = TupleTypeMetadata2;
      v39(&v40[*(TupleTypeMetadata2 + 48)], v34, v41);
      v43 = v80;
      (*v72)(v80, v40, v42);
      v44 = *(v42 + 48);
      v45 = *v71;
      v46 = v77;
      (*v71)(v77, v43, v41);
      v87 = v45;
      v47 = &v43[v44];
      v48 = v92;
      (v92)(v47, v41);
      (*v70)(v43, v40, v42);
      v49 = v78;
      (v45)(&v46[*(v78 + 36)], &v43[*(v42 + 48)], v41);
      v50 = v74;
      v48(v43, v41);
      v51 = v75;
      dispatch thunk of Collection.subscript.getter();
      (*v69)(v46, v49);
      v52 = v86;
      (*v68)(v76, v51, v86);
      type metadata accessor for Array();
      v34 = v82;
      Array.append(_:)();
      v33 = v91;
      (*v67)(v51, v52);
      (v92)(v50, v41);
      v26 = v50;
      (v87)(v50, v34, v41);
      v32 = v89;
    }

    v95[6] = v95[0];
    __chkstk_darwin(v38);
    v30 = (&v62 - 10);
    v53 = v63;
    *(&v62 - 8) = v66;
    *(&v62 - 7) = v53;
    v54 = v65;
    *(&v62 - 6) = v32;
    *(&v62 - 5) = v54;
    v55 = v84;
    v56 = v85;
    *(&v62 - 4) = v62;
    *(&v62 - 3) = v56;
    *(&v62 - 2) = v55;
    v57 = type metadata accessor for Array();
    v58 = sub_10028088C(&unk_10097A930, &unk_1007F9050);
    WitnessTable = swift_getWitnessTable();
    v60 = v64;
    v61 = sub_1002E8AD4(sub_1002F54A0, (&v62 - 10), v57, v53, v58, WitnessTable, &protocol self-conformance witness table for Error, &v94);
    if (!v60)
    {
      v30 = v61;
    }

    (v92)(v26, v93);
  }

  return v30;
}

uint64_t sub_1002EA9CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a5@<X5>, uint64_t a7@<X8>, void *a8)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  result = sub_1002E9838(a1, a2, a3, AssociatedTypeWitness, a5, AssociatedConformanceWitness, a7);
  if (v16)
  {
    *a8 = v16;
  }

  return result;
}

uint64_t PushableTimer.__allocating_init(fireAt:noLaterThan:queue:handler:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  swift_allocObject();
  v10 = sub_1002F1D34(a1, a2, a3, a4, a5);

  return v10;
}

uint64_t PushableTimer.init(fireAt:noLaterThan:queue:handler:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = sub_1002F1D34(a1, a2, a3, a4, a5);

  return v6;
}

uint64_t sub_1002EAB84@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for DispatchTimeInterval.never(_:);
  v3 = type metadata accessor for DispatchTimeInterval();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_1002EABF8@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  v2 = enum case for DispatchTimeInterval.nanoseconds(_:);
  v3 = type metadata accessor for DispatchTimeInterval();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t PushableTimer.reschedule(deadline:)(uint64_t a1)
{
  v33 = type metadata accessor for DispatchTimeInterval();
  v30 = *(v33 - 8);
  v3 = __chkstk_darwin(v33);
  v32 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v31 = &v28 - v5;
  v6 = sub_10028088C(&qword_100976C00, &unk_1007F9D70);
  __chkstk_darwin(v6 - 8);
  v8 = &v28 - v7;
  v9 = type metadata accessor for DispatchTime();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v28 - v14;
  sub_1002F17FC(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary13PushableTimer_noLaterThan, v8);
  v16 = *(v10 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    static DispatchTime.distantFuture.getter();
    v17 = v16(v8, 1, v9);
    v18 = v10;
    if (v17 != 1)
    {
      sub_100005508(v8, &qword_100976C00, &unk_1007F9D70);
    }
  }

  else
  {
    (*(v10 + 32))(v13, v8, v9);
    v18 = v10;
  }

  sub_1002F30F0(&qword_100976C08, &type metadata accessor for DispatchTime, &protocol conformance descriptor for DispatchTime);
  v19 = dispatch thunk of static Comparable.< infix(_:_:)();
  v29 = v15;
  if (v19)
  {
    (*(v18 + 32))(v15, v13, v9);
  }

  else
  {
    (*(v18 + 8))(v13, v9);
    (*(v18 + 16))(v15, a1, v9);
  }

  swift_getObjectType();
  v21 = v30;
  v20 = v31;
  v22 = *(v30 + 104);
  v23 = v33;
  v22(v31, enum case for DispatchTimeInterval.never(_:), v33);
  v24 = v32;
  *v32 = 0;
  v22(v24, enum case for DispatchTimeInterval.nanoseconds(_:), v23);
  v25 = v29;
  OS_dispatch_source_timer.schedule(deadline:repeating:leeway:)();
  v26 = *(v21 + 8);
  v26(v24, v23);
  v26(v20, v23);
  return (*(v18 + 8))(v25, v9);
}

uint64_t PushableTimer.deinit()
{
  swift_getObjectType();
  OS_dispatch_source.cancel()();
  sub_100005508(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary13PushableTimer_noLaterThan, &qword_100976C00, &unk_1007F9D70);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t PushableTimer.__deallocating_deinit()
{
  swift_getObjectType();
  OS_dispatch_source.cancel()();
  sub_100005508(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary13PushableTimer_noLaterThan, &qword_100976C00, &unk_1007F9D70);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t SDB389BubbleMonitor.allDevices.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1;
}

void *SDB389BubbleMonitor.queue.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

void SDB389BubbleMonitor.queue.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 24);
  *(v1 + 24) = a1;
}

uint64_t SDB389BubbleMonitor.updateHandler.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  sub_1000387D0(v1, *(v0 + 40));
  return v1;
}

uint64_t SDB389BubbleMonitor.updateHandler.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 32);
  v6 = *(v2 + 40);
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return sub_100015D04(v5, v6);
}

uint64_t SDB389BubbleMonitor.lostHandler.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 48);
  sub_1000387D0(v1, *(v0 + 56));
  return v1;
}

uint64_t SDB389BubbleMonitor.lostHandler.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 48);
  v6 = *(v2 + 56);
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return sub_100015D04(v5, v6);
}

unint64_t SDB389BubbleMonitor.closestB389sInBubble.getter()
{
  swift_beginAccess();
  v2 = *(v0 + 80);
  v3 = *(v2 + 16);
  if (!v3)
  {
    goto LABEL_4;
  }

  v4 = sub_10029434C(v1);
  v5 = sub_100291BEC(&v9, v4 + 4, v3, v2);
  v6 = v9;
  swift_bridgeObjectRetain_n();
  sub_100027D64(v6);
  if (v5 != v3)
  {
    __break(1u);
LABEL_4:

    v4 = _swiftEmptyArrayStorage;
  }

  v9 = v4;
  sub_1002EFF80(&v9);
  v7 = sub_1002EB6C4(v9);

  return v7;
}

unint64_t sub_1002EB6C4(uint64_t a1)
{
  if (!(a1 >> 62))
  {
    v1 = a1 & 0xFFFFFFFFFFFFFF8;
    goto LABEL_3;
  }

  while (1)
  {
    v18 = a1;
    v19 = _CocoaArrayWrapper.endIndex.getter();
    if (v19)
    {
      v21 = v19;
      v1 = sub_10029434C(v20);
      sub_1004060E0(v1 + 32, v21, v18);
      v23 = v22;

      if (v23 != v21)
      {
        __break(1u);
        goto LABEL_38;
      }

      goto LABEL_3;
    }

    while (1)
    {

      v1 = _swiftEmptyArrayStorage;
LABEL_3:
      if ((v1 & 0x8000000000000000) == 0 && (v1 & 0x4000000000000000) == 0)
      {
        v2 = *(v1 + 16);
        v3 = v2 >> 1;
        goto LABEL_6;
      }

LABEL_38:
      a1 = _CocoaArrayWrapper.endIndex.getter();
      if (a1 >= -1)
      {
        break;
      }

      __break(1u);
    }

    v2 = a1;
    v3 = a1 / 2;
LABEL_6:
    if (v2 + 1 < 3)
    {
      return v1;
    }

    v5 = -v3;
    v6 = 4;
    while (1)
    {
      v7 = v2 - (v6 - 3);
      if (__OFSUB__(v2, v6 - 3))
      {
        break;
      }

      a1 = v6 - 4;
      if (v6 - 4 != v7)
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (a1 < 0)
          {
            goto LABEL_31;
          }

          v8 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (a1 >= v8)
          {
            goto LABEL_32;
          }

          if (v7 >= v8)
          {
            goto LABEL_33;
          }

          v9 = *(v1 + 8 * v7 + 32);
          v10 = *(v1 + 8 * v6);
          v11 = v9;
        }

        v12 = v11;
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v1 & 0x8000000000000000) != 0 || (v1 & 0x4000000000000000) != 0)
        {
          v1 = sub_1002D8B8C();
          v13 = (v1 >> 62) & 1;
        }

        else
        {
          LODWORD(v13) = 0;
        }

        v14 = v1 & 0xFFFFFFFFFFFFFF8;
        v15 = *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v6);
        *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v6) = v12;

        if ((v1 & 0x8000000000000000) != 0 || v13)
        {
          a1 = sub_1002D8B8C();
          v1 = a1;
          v14 = a1 & 0xFFFFFFFFFFFFFF8;
          if ((v7 & 0x8000000000000000) != 0)
          {
LABEL_29:
            __break(1u);
            break;
          }
        }

        else if ((v7 & 0x8000000000000000) != 0)
        {
          goto LABEL_29;
        }

        if (v7 >= *(v14 + 16))
        {
          goto LABEL_34;
        }

        v16 = v14 + 8 * v7;
        v17 = *(v16 + 32);
        *(v16 + 32) = v10;
      }

      ++v6;
      if (v5 + v6 == 4)
      {
        return v1;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
  }
}

uint64_t sub_1002EB8D4(uint64_t a1)
{
  *(v1 + 16) = sub_100280868(_swiftEmptyArrayStorage);
  *(v1 + 24) = CUMainQueue();
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0u;
  *(v1 + 64) = [objc_allocWithZone(SFDeviceDiscovery) init];
  v3 = sub_100280868(_swiftEmptyArrayStorage);
  *(v1 + 72) = a1;
  *(v1 + 80) = v3;
  return v1;
}

void sub_1002EB954(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v3 + 64);
  [v6 setChangeFlags:13];
  [v6 setDiscoveryFlags:2];
  swift_beginAccess();
  if (*(v3 + 24))
  {
    [v6 setDispatchQueue:?];
    v7 = String._bridgeToObjectiveC()();
    [v6 setPurpose:v7];

    v17 = sub_1002F544C;
    v18 = v3;
    aBlock = _NSConcreteStackBlock;
    v14 = 1107296256;
    v15 = sub_100035F94;
    v16 = &unk_1008DAA10;
    v8 = _Block_copy(&aBlock);

    [v6 setDeviceFoundHandler:v8];
    _Block_release(v8);
    v17 = sub_1002F5454;
    v18 = v3;
    aBlock = _NSConcreteStackBlock;
    v14 = 1107296256;
    v15 = sub_1005F11E0;
    v16 = &unk_1008DAA38;
    v9 = _Block_copy(&aBlock);

    [v6 setDeviceChangedHandler:v9];
    _Block_release(v9);
    v17 = sub_1002F545C;
    v18 = v3;
    aBlock = _NSConcreteStackBlock;
    v14 = 1107296256;
    v15 = sub_100035F94;
    v16 = &unk_1008DAA60;
    v10 = _Block_copy(&aBlock);

    [v6 setDeviceLostHandler:v10];
    _Block_release(v10);
    v11 = swift_allocObject();
    *(v11 + 16) = a1;
    *(v11 + 24) = a2;
    v17 = sub_1002F5464;
    v18 = v11;
    aBlock = _NSConcreteStackBlock;
    v14 = 1107296256;
    v15 = sub_1005CC610;
    v16 = &unk_1008DAAB0;
    v12 = _Block_copy(&aBlock);

    [v6 activateWithCompletion:v12];
    _Block_release(v12);
  }

  else
  {
    __break(1u);
  }
}

id sub_1002EBC70(void *a1, void *a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v33 - v10;
  __chkstk_darwin(v9);
  v13 = &v33 - v12;
  result = [a1 identifier];
  if (!result)
  {
    return result;
  }

  v15 = result;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  (*(v5 + 32))(v13, v11, v4);
  v16 = [a1 bleDevice];
  if (!v16)
  {
    goto LABEL_15;
  }

  v17 = v16;
  v18 = [v16 advertisementFields];
  if (!v18)
  {
    goto LABEL_14;
  }

  v19 = v18;
  v20 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v34 = 0x65707954627573;
  v35 = 0xE700000000000000;
  AnyHashable.init<A>(_:)();
  if (!*(v20 + 16) || (v21 = sub_100570754(v36), (v22 & 1) == 0))
  {

    sub_100285E74(v36);
LABEL_14:

    goto LABEL_15;
  }

  sub_10000C5B0(*(v20 + 56) + 32 * v21, v37);
  sub_100285E74(v36);

  if ((swift_dynamicCast() & 1) == 0 || v34 != 9 && v34 != 5)
  {
    goto LABEL_14;
  }

  swift_beginAccess();
  v23 = a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v37[0] = a2[2];
  a2[2] = 0x8000000000000000;
  sub_100579DA0(v23, v13, isUniquelyReferenced_nonNull_native);
  a2[2] = v37[0];
  swift_endAccess();
  v25 = a2[9];
  if ((v25 & 0x8000000000000000) == 0)
  {
    goto LABEL_14;
  }

  v26 = [v17 rssi];

  if ((v26 & 0x8000000000000000) == 0)
  {
LABEL_15:
    (*(v5 + 16))(v8, v13, v4);
    goto LABEL_16;
  }

  v27 = sub_1002F548C(v26, v25);
  (*(v5 + 16))(v8, v13, v4);
  if (v27 < 0)
  {
LABEL_16:
    swift_beginAccess();
    sub_1002B0908(0, v8);
    goto LABEL_17;
  }

  swift_beginAccess();
  sub_1002B0908(0, v8);
  v28 = v23;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v37[0] = a2[10];
  a2[10] = 0x8000000000000000;
  sub_100579DA0(v28, v13, v29);
  a2[10] = v37[0];
LABEL_17:
  swift_endAccess();
  swift_beginAccess();
  v30 = a2[4];
  if (v30)
  {
    v31 = a2[5];

    v30(v32);
    sub_100015D04(v30, v31);
  }

  return (*(v5 + 8))(v13, v4);
}

void sub_1002EC088(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [*(a3 + 64) deviceFoundHandler];
  if (v4)
  {
    v5 = v4;
    (*(v4 + 2))(v4, a1);

    _Block_release(v5);
  }
}

id sub_1002EC0F8(void *a1, void *a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v22[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __chkstk_darwin(v6);
  v11 = &v22[-v10];
  __chkstk_darwin(v9);
  v13 = &v22[-v12];
  result = [a1 identifier];
  if (result)
  {
    v15 = result;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v5 + 32))(v13, v11, v4);
    v16 = *(v5 + 16);
    v16(v8, v13, v4);
    swift_beginAccess();
    sub_1002B0908(0, v8);
    swift_endAccess();
    v16(v8, v13, v4);
    swift_beginAccess();
    sub_1002B0908(0, v8);
    swift_endAccess();
    swift_beginAccess();
    v17 = a2[4];
    if (v17)
    {
      v18 = a2[5];

      v17(v19);
      sub_100015D04(v17, v18);
    }

    swift_beginAccess();
    v20 = a2[6];
    if (v20)
    {
      v21 = a2[7];

      v20(v13);
      sub_100015D04(v20, v21);
    }

    return (*(v5 + 8))(v13, v4);
  }

  return result;
}

void sub_1002EC364()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v16 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v14 = *(v5 - 8);
  v15 = v5;
  __chkstk_darwin(v5);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v8 = *(v0 + 24);
  if (v8)
  {
    aBlock[4] = sub_1002F543C;
    aBlock[5] = v1;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100011678;
    aBlock[3] = &unk_1008DA9E8;
    v9 = _Block_copy(aBlock);
    v10 = v8;

    static DispatchQoS.unspecified.getter();
    v17 = _swiftEmptyArrayStorage;
    sub_1002F30F0(&qword_100976140, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
    sub_100011630(&qword_100976150, &unk_1009765A0, &qword_1007F97B0, &protocol conformance descriptor for [A]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v9);

    (*(v16 + 8))(v4, v2);
    (*(v14 + 8))(v7, v15);

    swift_beginAccess();
    v11 = *(v1 + 32);
    v12 = *(v1 + 40);
    *(v1 + 32) = 0;
    *(v1 + 40) = 0;
    sub_100015D04(v11, v12);
  }

  else
  {
    __break(1u);
  }
}

uint64_t SDB389BubbleMonitor.deinit()
{

  sub_100015D04(*(v0 + 32), *(v0 + 40));
  sub_100015D04(*(v0 + 48), *(v0 + 56));

  return v0;
}

uint64_t SDB389BubbleMonitor.__deallocating_deinit()
{

  sub_100015D04(*(v0 + 32), *(v0 + 40));
  sub_100015D04(*(v0 + 48), *(v0 + 56));

  return swift_deallocClassInstance();
}

uint64_t b389VersionString(from:)(void *a1, unint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100973738 != -1)
  {
    swift_once();
  }

  v8 = sub_10000C4AC(v4, qword_1009A09F0);
  (*(v5 + 16))(v7, v8, v4);
  sub_100294008(a1, a2);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v35 = v5;
    v36 = v4;
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v37[0] = v12;
    *v11 = 136315138;
    isa = Data._bridgeToObjectiveC()().super.isa;
    v14 = SFHexStringForData();

    if (!v14)
    {
      result = sub_100026AC0(a1, a2);
      __break(1u);
      return result;
    }

    sub_100026AC0(a1, a2);
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;

    v18 = sub_10000C4E4(v15, v17, v37);

    *(v11 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v9, v10, "b389VersionString from %s", v11, 0xCu);
    sub_10000C60C(v12);

    v5 = v35;
    v4 = v36;
  }

  else
  {

    sub_100026AC0(a1, a2);
  }

  v19 = sub_1002F186C(a1, a2);
  v20 = (v19 >> 20) & 0xF;
  v21 = HIWORD(v19) & 0xF;
  v22 = v19 >> 4;
  sub_10028088C(&qword_1009750C0, &qword_1007F90F0);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1007F8830;
  LOBYTE(v37[0]) = v20;
  *(v23 + 32) = dispatch thunk of CustomStringConvertible.description.getter();
  *(v23 + 40) = v24;
  LOBYTE(v37[0]) = v21;
  *(v23 + 48) = dispatch thunk of CustomStringConvertible.description.getter();
  *(v23 + 56) = v25;
  LOWORD(v37[0]) = v22;
  *(v23 + 64) = dispatch thunk of CustomStringConvertible.description.getter();
  *(v23 + 72) = v26;
  v37[0] = v23;
  sub_10028088C(&unk_100976C20, &unk_1007F9D80);
  sub_100011630(&qword_10097F070, &unk_100976C20, &unk_1007F9D80, &protocol conformance descriptor for [A]);
  v27 = BidirectionalCollection<>.joined(separator:)();
  v29 = v28;

  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v37[0] = v33;
    *v32 = 136315138;
    *(v32 + 4) = sub_10000C4E4(v27, v29, v37);
    _os_log_impl(&_mh_execute_header, v30, v31, "Result version: %s", v32, 0xCu);
    sub_10000C60C(v33);
  }

  (*(v5 + 8))(v7, v4);
  return v27;
}

uint64_t sub_1002ECCA0()
{
  _StringGuts.grow(_:)(194);
  v1._countAndFlagsBits = 0xD00000000000001DLL;
  v1._object = 0x800000010078AE80;
  String.append(_:)(v1);
  v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v2);

  v3._countAndFlagsBits = 0x3A6C65646F6D202CLL;
  v3._object = 0xE900000000000020;
  String.append(_:)(v3);
  String.append(_:)(*(v0 + 8));
  v4._countAndFlagsBits = 0x203A65646F6D20;
  v4._object = 0xE700000000000000;
  String.append(_:)(v4);
  v5 = type metadata accessor for B389PresentationConfig(0);
  type metadata accessor for B389PresentationConfig.Mode(0);
  _print_unlocked<A, B>(_:_:)();
  v6._countAndFlagsBits = 0x43726F6C6F63202CLL;
  v6._object = 0xED0000203A65646FLL;
  String.append(_:)(v6);
  v7._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v7);

  v8._countAndFlagsBits = 0x7375655A7369202CLL;
  v8._object = 0xEA0000000000203ALL;
  String.append(_:)(v8);
  if (*(v0 + v5[8]))
  {
    v9 = 1702195828;
  }

  else
  {
    v9 = 0x65736C6166;
  }

  if (*(v0 + v5[8]))
  {
    v10 = 0xE400000000000000;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  v11 = v10;
  String.append(_:)(*&v9);

  v12._countAndFlagsBits = 0xD000000000000012;
  v12._object = 0x800000010078AEA0;
  String.append(_:)(v12);
  v13._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v13);

  v14._object = 0x800000010078AEC0;
  v14._countAndFlagsBits = 0xD000000000000011;
  String.append(_:)(v14);
  if (*(v0 + v5[10]))
  {
    v15 = 1702195828;
  }

  else
  {
    v15 = 0x65736C6166;
  }

  if (*(v0 + v5[10]))
  {
    v16 = 0xE400000000000000;
  }

  else
  {
    v16 = 0xE500000000000000;
  }

  v17 = v16;
  String.append(_:)(*&v15);

  v18._object = 0x800000010078AEE0;
  v18._countAndFlagsBits = 0xD000000000000011;
  String.append(_:)(v18);
  v19._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v19);

  v20._countAndFlagsBits = 0xD000000000000015;
  v20._object = 0x800000010078AF00;
  String.append(_:)(v20);
  DefaultStringInterpolation.appendInterpolation<A>(nilPrint:)();
  v21._countAndFlagsBits = 0x4E6E65766967202CLL;
  v21._object = 0xED0000203A656D61;
  String.append(_:)(v21);
  DefaultStringInterpolation.appendInterpolation<A>(nilPrint:)();
  v22._object = 0x800000010078AF20;
  v22._countAndFlagsBits = 0xD000000000000011;
  String.append(_:)(v22);
  v23 = (v0 + v5[14]);
  v26 = *v23;
  v27 = v23[1];
  sub_1002A9924(*v23, v27);
  sub_1002F4C88();
  DefaultStringInterpolation.appendInterpolation<A>(nilPrint:)();
  sub_10028BCC0(v26, v27);
  v24._countAndFlagsBits = 62;
  v24._object = 0xE100000000000000;
  String.append(_:)(v24);
  return 0;
}

unint64_t sub_1002ED098(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 6580592;
    v7 = 1701080941;
    v8 = 0x646F43726F6C6F63;
    if (a1 != 3)
    {
      v8 = 0x7375655A7369;
    }

    if (a1 != 2)
    {
      v7 = v8;
    }

    if (a1)
    {
      v6 = 0x6C65646F6DLL;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v1 = 0xD000000000000011;
    v2 = 0x6D614E6E65766967;
    if (a1 != 9)
    {
      v2 = 0x6E69766172676E65;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0x5079726574746162;
    v4 = 0x5479726574746162;
    if (a1 != 6)
    {
      v4 = 0x6572685469737372;
    }

    if (a1 != 5)
    {
      v3 = v4;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1002ED218(void *a1)
{
  v3 = v1;
  v5 = sub_10028088C(&qword_1009772F8, &qword_1007FA198);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13[-v7];
  sub_10002CDC0(a1, a1[3]);
  sub_1002F4BCC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v14) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    LOBYTE(v14) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v9 = type metadata accessor for B389PresentationConfig(0);
    LOBYTE(v14) = 2;
    type metadata accessor for B389PresentationConfig.Mode(0);
    sub_1002F30F0(&qword_100977300, type metadata accessor for B389PresentationConfig.Mode, &unk_1007FA100);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v14) = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v14) = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v14) = 5;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v14) = 6;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v14) = 7;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v14) = 8;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v14) = 9;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v10 = (v3 + *(v9 + 56));
    v11 = v10[1];
    v14 = *v10;
    v15 = v11;
    v13[15] = 10;
    sub_1002A9924(v14, v11);
    sub_1002F3198();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_10028BCC0(v14, v15);
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1002ED578@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for B389PresentationConfig.Mode(0);
  __chkstk_darwin(v5);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_10028088C(&qword_1009772E0, &qword_1007FA190);
  v8 = *(v32 - 8);
  __chkstk_darwin(v32);
  v10 = &v29 - v9;
  v11 = type metadata accessor for B389PresentationConfig(0);
  v33 = __chkstk_darwin(v11);
  v34 = (&v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = (v34 + v33[14]);
  v35 = a1;
  v36 = v13;
  *v13 = xmmword_1007F8A80;
  sub_10002CDC0(a1, a1[3]);
  sub_1002F4BCC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    sub_10000C60C(v35);

    return sub_10028BCC0(*v36, *(v36 + 1));
  }

  else
  {
    v30 = a2;
    v31 = v8;
    LOBYTE(v37) = 0;
    v14 = KeyedDecodingContainer.decode(_:forKey:)();
    v15 = v34;
    *v34 = v14;
    LOBYTE(v37) = 1;
    *(v15 + 1) = KeyedDecodingContainer.decode(_:forKey:)();
    *(v15 + 2) = v16;
    LOBYTE(v37) = 2;
    sub_1002F30F0(&qword_1009772F0, type metadata accessor for B389PresentationConfig.Mode, &unk_1007FA128);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v17 = v33;
    sub_1002F5394(v7, v15 + v33[6], type metadata accessor for B389PresentationConfig.Mode);
    LOBYTE(v37) = 3;
    *(v15 + v17[7]) = KeyedDecodingContainer.decode(_:forKey:)();
    LOBYTE(v37) = 4;
    *(v15 + v17[8]) = KeyedDecodingContainer.decode(_:forKey:)() & 1;
    LOBYTE(v37) = 5;
    *(v15 + v17[9]) = KeyedDecodingContainer.decode(_:forKey:)();
    LOBYTE(v37) = 6;
    *(v15 + v17[10]) = KeyedDecodingContainer.decode(_:forKey:)() & 1;
    LOBYTE(v37) = 7;
    *(v15 + v17[11]) = KeyedDecodingContainer.decode(_:forKey:)();
    LOBYTE(v37) = 8;
    v18 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v19 = v34 + v33[12];
    *v19 = v18;
    v19[8] = v20 & 1;
    LOBYTE(v37) = 9;
    v21 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v22 = (v34 + v33[13]);
    *v22 = v21;
    v22[1] = v23;
    v39 = 10;
    sub_1002F309C();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v31 + 8))(v10, v32);
    v24 = v37;
    v25 = v38;
    v26 = v36;
    sub_10028BCC0(*v36, *(v36 + 1));
    *v26 = v24;
    v26[1] = v25;
    v27 = v34;
    sub_1002F4C20(v34, v30, type metadata accessor for B389PresentationConfig);
    sub_10000C60C(v35);
    return sub_1002F3138(v27, type metadata accessor for B389PresentationConfig);
  }
}

uint64_t sub_1002EDB3C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1002F2BDC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1002EDB70(uint64_t a1)
{
  v2 = sub_1002F4BCC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1002EDBAC(uint64_t a1)
{
  v2 = sub_1002F4BCC();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_1002EDC2C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1002EDCFC(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_1002EDDB8(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1002EDE84@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1002F2F84(*a1);
  *a2 = result;
  return result;
}

void sub_1002EDEB4(uint64_t *a1@<X8>)
{
  v2 = 0xEE00726569666974;
  v3 = 0x6E65644965736163;
  v4 = 0xE900000000000067;
  v5 = 0x69666E6F4363666ELL;
  if (*v1 != 2)
  {
    v5 = 0x69746C754D7369;
    v4 = 0xE700000000000000;
  }

  if (*v1)
  {
    v3 = 0x444955557462;
    v2 = 0xE600000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_1002EDF40()
{
  v1 = 0x6E65644965736163;
  v2 = 0x69666E6F4363666ELL;
  if (*v0 != 2)
  {
    v2 = 0x69746C754D7369;
  }

  if (*v0)
  {
    v1 = 0x444955557462;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1002EDFC8@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_1002F2F84(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1002EDFF0(uint64_t a1)
{
  v2 = sub_1002F2FF4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1002EE02C(uint64_t a1)
{
  v2 = sub_1002F2FF4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1002EE068@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v3 = type metadata accessor for UUID();
  v34 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10028088C(&qword_100977260, &qword_1007FA158);
  v35 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v33 - v7;
  v9 = type metadata accessor for B389PresentationConfig.Mode(0);
  __chkstk_darwin(v9);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1[3];
  v38 = a1;
  sub_10002CDC0(a1, v12);
  sub_1002F2FF4();
  v13 = v37;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v13)
  {
    return sub_10000C60C(v38);
  }

  v14 = v5;
  v15 = v3;
  v37 = v11;
  v17 = v35;
  v16 = v36;
  LOBYTE(v39) = 0;
  v18 = KeyedDecodingContainer.decode(_:forKey:)();
  v19 = v8;
  switch(v18)
  {
    case 0:
      LOBYTE(v39) = 3;
      v26 = KeyedDecodingContainer.decode(_:forKey:)();
      (*(v17 + 8))(v8, v6);
      v30 = v37;
      *v37 = v26 & 1;
      v21 = v16;
      goto LABEL_13;
    case 1:
      v33 = v9;
      LOBYTE(v39) = 1;
      sub_1002F30F0(&qword_100977288, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      LOBYTE(v39) = 3;
      v28 = KeyedDecodingContainer.decode(_:forKey:)();
      (*(v17 + 8))(v8, v6);
      v29 = *(sub_10028088C(&unk_100977290, &unk_1007FA160) + 48);
      v30 = v37;
      (*(v34 + 32))(v37, v14, v15);
      *(v30 + v29) = v28 & 1;
      v21 = v16;
LABEL_13:
      swift_storeEnumTagMultiPayload();
      sub_1002F5394(v30, v21, type metadata accessor for B389PresentationConfig.Mode);
      return sub_10000C60C(v38);
    case 2:
      v41 = 2;
      sub_1002F309C();
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v21 = v16;
      v22 = v6;
      v24 = v39;
      v23 = v40;
      sub_1000276B4(0, &qword_100977280, NSKeyedUnarchiver_ptr);
      sub_1000276B4(0, &unk_100977150, SFB389NFCPromptConfiguration_ptr);
      v25 = static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)();
      if (!v25)
      {
        sub_1002F3048();
        swift_allocError();
        *v32 = 0;
        swift_willThrow();
        sub_100026AC0(v24, v23);
        (*(v17 + 8))(v19, v22);
        return sub_10000C60C(v38);
      }

      v31 = v25;
      (*(v17 + 8))(v19, v22);
      sub_100026AC0(v24, v23);
      v30 = v37;
      *v37 = v31;
      goto LABEL_13;
  }

  sub_1002F3048();
  swift_allocError();
  *v27 = 1;
  swift_willThrow();
  (*(v17 + 8))(v8, v6);
  return sub_10000C60C(v38);
}

uint64_t sub_1002EE5D8(void *a1)
{
  v2 = v1;
  v4 = sub_10028088C(&unk_100976120, &qword_1007F9260);
  __chkstk_darwin(v4 - 8);
  v56 = &v54 - v5;
  v6 = type metadata accessor for B389PresentationConfig.Mode(0);
  v7 = __chkstk_darwin(v6);
  v54 = (&v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __chkstk_darwin(v7);
  v58 = &v54 - v10;
  v11 = __chkstk_darwin(v9);
  v55 = &v54 - v12;
  v13 = __chkstk_darwin(v11);
  v57 = &v54 - v14;
  v15 = __chkstk_darwin(v13);
  v17 = &v54 - v16;
  __chkstk_darwin(v15);
  v19 = &v54 - v18;
  v20 = sub_10028088C(&qword_1009772A0, &qword_1007FA170);
  v60 = *(v20 - 8);
  __chkstk_darwin(v20);
  v22 = &v54 - v21;
  sub_10002CDC0(a1, a1[3]);
  sub_1002F2FF4();
  v61 = v22;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_1002F4C20(v2, v19, type metadata accessor for B389PresentationConfig.Mode);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v24 = type metadata accessor for UUID();
      (*(*(v24 - 8) + 8))(v19, v24);
    }

    else
    {
      sub_1002F3138(v19, type metadata accessor for B389PresentationConfig.Mode);
    }
  }

  v25 = v20;
  v26 = v59;
  LOBYTE(v63[0]) = 0;
  v27 = v61;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v26)
  {
    return (*(v60 + 8))(v27, v20);
  }

  sub_1002F4C20(v2, v17, type metadata accessor for B389PresentationConfig.Mode);
  v29 = swift_getEnumCaseMultiPayload();
  v30 = v58;
  if (v29)
  {
    if (v29 == 1)
    {
      v31 = type metadata accessor for UUID();
      (*(*(v31 - 8) + 8))(v17, v31);
    }

    else
    {
      sub_1002F3138(v17, type metadata accessor for B389PresentationConfig.Mode);
    }

    v32 = v57;
    sub_1002F4C20(v2, v57, type metadata accessor for B389PresentationConfig.Mode);
    v33 = swift_getEnumCaseMultiPayload();
    if (!v33)
    {
      v37 = v60;
      goto LABEL_23;
    }

    if (v33 != 1)
    {
      sub_1002F3138(v32, type metadata accessor for B389PresentationConfig.Mode);
      v37 = v60;
      goto LABEL_23;
    }

    v34 = type metadata accessor for UUID();
    (*(*(v34 - 8) + 8))(v32, v34);
  }

  v35 = v55;
  sub_1002F4C20(v2, v55, type metadata accessor for B389PresentationConfig.Mode);
  v36 = swift_getEnumCaseMultiPayload();
  if (v36)
  {
    v37 = v60;
    if (v36 == 1)
    {
      sub_10028088C(&unk_100977290, &unk_1007FA160);
      v38 = type metadata accessor for UUID();
      (*(*(v38 - 8) + 8))(v35, v38);
    }

    else
    {
      sub_1002F3138(v35, type metadata accessor for B389PresentationConfig.Mode);
    }
  }

  else
  {
    v37 = v60;
  }

  LOBYTE(v63[0]) = 3;
  KeyedEncodingContainer.encode(_:forKey:)();
LABEL_23:
  sub_1002F4C20(v2, v30, type metadata accessor for B389PresentationConfig.Mode);
  v39 = swift_getEnumCaseMultiPayload();
  v40 = type metadata accessor for UUID();
  v41 = *(v40 - 8);
  v42 = v41;
  if (v39 == 1)
  {
    v43 = v56;
    (*(v41 + 32))(v56, v30, v40);
    (*(v42 + 56))(v43, 0, 1, v40);
  }

  else
  {
    v43 = v56;
    (*(v41 + 56))(v56, 1, 1, v40);
    sub_1002F3138(v30, type metadata accessor for B389PresentationConfig.Mode);
  }

  LOBYTE(v63[0]) = 1;
  sub_1002F30F0(&qword_1009772A8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  sub_100005508(v43, &unk_100976120, &qword_1007F9260);
  v44 = v54;
  sub_1002F4C20(v2, v54, type metadata accessor for B389PresentationConfig.Mode);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v45 = *v44;
    v46 = objc_opt_self();
    v63[0] = 0;
    v47 = [v46 archivedDataWithRootObject:v45 requiringSecureCoding:1 error:v63];
    v48 = v63[0];
    if (v47)
    {
      v49 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v51 = v50;

      v63[0] = v49;
      v63[1] = v51;
      v62 = 2;
      sub_1002F3198();
      v52 = v61;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v37 + 8))(v52, v25);

      return sub_100026AC0(v49, v51);
    }

    v53 = v48;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  else
  {
    sub_1002F3138(v44, type metadata accessor for B389PresentationConfig.Mode);
  }

  return (*(v37 + 8))(v61, v25);
}

void *sub_1002EEE6C()
{
  result = sub_1002811D0(_swiftEmptyArrayStorage);
  off_100976BF0 = result;
  return result;
}

uint64_t sub_1002EEE94()
{
  sub_10028088C(&qword_1009806F0, &unk_1007FD5C0);
  result = swift_allocObject();
  *(result + 16) = 0;
  qword_100976BF8 = result;
  return result;
}

uint64_t sub_1002EEED4(uint64_t a1)
{
  if (qword_100973598 != -1)
  {
    a1 = swift_once();
  }

  v2 = qword_100976BF8;
  __chkstk_darwin(a1);

  os_unfair_lock_lock(v2 + 4);
  sub_1002F5418(v3);
  os_unfair_lock_unlock(v2 + 4);

  return v1;
}

void *sub_1002EEFB4(uint64_t a1)
{
  if (qword_100973590 != -1)
  {
    swift_once();
  }

  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  swift_beginAccess();
  if (*(off_100976BF0 + 2))
  {
    sub_100012854(v2, v3);
  }

  swift_endAccess();
  sub_10028088C(&unk_100977350, &unk_1007FA1D0);
  result = Optional.unwrap(_:file:line:)();
  v5 = v7 - 1;
  if (v7 == 1)
  {
    swift_beginAccess();

    sub_1002B0930(0, 1, v2, v3);
  }

  else
  {
    if (!v7)
    {
      __break(1u);
      return result;
    }

    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = off_100976BF0;
    off_100976BF0 = 0x8000000000000000;
    sub_100579DC8(v5, v2, v3, isUniquelyReferenced_nonNull_native);
    off_100976BF0 = v8;
  }

  return swift_endAccess();
}

unint64_t sub_1002EF184(Swift::String *a1)
{
  _StringGuts.grow(_:)(23);

  String.append(_:)(a1[1]);
  return 0xD000000000000015;
}

uint64_t sub_1002EF1F4(uint64_t a1)
{
  sub_1002EEED4(a1);

  return swift_deallocClassInstance();
}

uint64_t URL.fileUTType()()
{
  v1 = type metadata accessor for URLResourceValues();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10028088C(&qword_100976C30, &qword_1007F8818);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007F5670;
  *(inited + 32) = NSURLContentTypeKey;
  v6 = NSURLContentTypeKey;
  sub_1002F13BC(inited);
  swift_setDeallocating();
  sub_1002F3138(inited + 32, type metadata accessor for URLResourceKey);
  URL.resourceValues(forKeys:)();

  if (!v0)
  {
    URLResourceValues.contentType.getter();
    return (*(v2 + 8))(v4, v1);
  }

  return result;
}

Swift::String_optional __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> URL.fileTypeIdentifier()()
{
  v2 = type metadata accessor for URLResourceValues();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10028088C(&qword_100976C30, &qword_1007F8818);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007F5670;
  *(inited + 32) = NSURLTypeIdentifierKey;
  v7 = NSURLTypeIdentifierKey;
  sub_1002F13BC(inited);
  swift_setDeallocating();
  sub_1002F3138(inited + 32, type metadata accessor for URLResourceKey);
  URL.resourceValues(forKeys:)();

  if (!v1)
  {
    v0 = URLResourceValues.typeIdentifier.getter();
    inited = v8;
    (*(v3 + 8))(v5, v2);
  }

  v9 = v0;
  v10 = inited;
  result.value._object = v10;
  result.value._countAndFlagsBits = v9;
  return result;
}

Swift::Int_optional __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> URL.fileSize()()
{
  v0 = sub_1002EF714(&NSURLFileSizeKey, &URLResourceValues.fileSize.getter);
  result.value = v0;
  result.is_nil = v1;
  return result;
}

Swift::Bool __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> URL.isDirectory()()
{
  v2 = type metadata accessor for URLResourceValues();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10028088C(&qword_100976C30, &qword_1007F8818);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007F5670;
  *(inited + 32) = NSURLIsDirectoryKey;
  v7 = NSURLIsDirectoryKey;
  sub_1002F13BC(inited);
  swift_setDeallocating();
  sub_1002F3138(inited + 32, type metadata accessor for URLResourceKey);
  URL.resourceValues(forKeys:)();

  if (!v1)
  {
    v0 = URLResourceValues.isDirectory.getter();
    (*(v3 + 8))(v5, v2);
  }

  return v0 & 1;
}

Swift::Int_optional __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> URL.availableStorage()()
{
  v0 = sub_1002EF714(&NSURLVolumeAvailableCapacityKey, &URLResourceValues.volumeAvailableCapacity.getter);
  result.value = v0;
  result.is_nil = v1;
  return result;
}

uint64_t (*sub_1002EF714(void **a1, uint64_t (*a2)(uint64_t)))(uint64_t)
{
  v5 = type metadata accessor for URLResourceValues();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10028088C(&qword_100976C30, &qword_1007F8818);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007F5670;
  v10 = *a1;
  *(inited + 32) = *a1;
  v11 = v10;
  sub_1002F13BC(inited);
  swift_setDeallocating();
  sub_1002F3138(inited + 32, type metadata accessor for URLResourceKey);
  URL.resourceValues(forKeys:)();

  if (!v2)
  {
    a2 = a2(v12);
    (*(v6 + 8))(v8, v5);
  }

  return a2;
}

uint64_t Sequence.batch(size:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v24 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v6 = &v22 - v5;
  v7 = type metadata accessor for Optional();
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v22 - v9;
  v11 = *(a2 - 8);
  __chkstk_darwin(v8);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_getAssociatedTypeWitness();
  v22 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = &v22 - v15;
  type metadata accessor for Array();
  v29 = Array.init()();
  v28 = Array.init()();
  (*(v11 + 16))(v13, v25, a2);
  dispatch thunk of Sequence.makeIterator()();
  v17 = v24;
  swift_getAssociatedConformanceWitness();
  dispatch thunk of IteratorProtocol.next()();
  v25 = v17[6];
  if (v25(v10, 1, AssociatedTypeWitness) != 1)
  {
    v19 = v17[4];
    v23 = v10;
    v24 = v19;
    (v19)(v6, v10, AssociatedTypeWitness);
    while (1)
    {
      Array.append(_:)();
      v20 = v28;
      if (Array.count.getter() > v26)
      {
        v27 = v20;
        type metadata accessor for Array();

        v10 = v23;
        Array.append(_:)();
        Array.removeAll(keepingCapacity:)(0);
      }

      dispatch thunk of IteratorProtocol.next()();
      if (v25(v10, 1, AssociatedTypeWitness) == 1)
      {
        break;
      }

      (v24)(v6, v10, AssociatedTypeWitness);
    }
  }

  (*(v22 + 8))(v16, v14);
  v18 = v28;
  v27 = v28;
  swift_getWitnessTable();
  if (Collection.isEmpty.getter())
  {
  }

  else
  {
    v27 = v18;
    type metadata accessor for Array();
    Array.append(_:)();
  }

  return v29;
}

uint64_t SDAsyncSemaphore.deinit()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t SDAsyncSemaphore.__deallocating_deinit()
{

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_1002EFD6C@<X0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() defaultManager];
  v3 = String._bridgeToObjectiveC()();
  v4 = [v2 containerURLForSecurityApplicationGroupIdentifier:v3];

  if (v4)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = type metadata accessor for URL();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, 1, v6);
}

uint64_t sub_1002EFF80(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1004978CC(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_1002EFFFC(v6);
  return specialized ContiguousArray._endMutation()();
}

void sub_1002EFFFC(uint64_t *a1)
{
  v2 = a1[1];
  v3 = _minimumMergeRunLength(_:)(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_1000276B4(0, &unk_100977380, SFDevice_ptr);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_1002F0254(v8, v9, a1, v4);
      *(v7 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1002F0110(0, v2, 1, a1);
  }
}

void sub_1002F0110(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v22 = *a4;
    v4 = *a4 + 8 * a3 - 8;
    v5 = a1 - a3;
LABEL_5:
    v20 = v4;
    v21 = a3;
    v6 = *(v22 + 8 * a3);
    v19 = v5;
    while (1)
    {
      v7 = *v4;
      v8 = v6;
      v9 = v7;
      v10 = [v8 bleDevice];
      if (!v10)
      {
        break;
      }

      v11 = v10;
      v12 = [v10 rssiFloor];

      v13 = [v9 bleDevice];
      if (!v13)
      {
        goto LABEL_14;
      }

      v14 = v13;
      v15 = [v13 rssiFloor];

      if (v12 < v15)
      {
        if (!v22)
        {
          goto LABEL_15;
        }

        v16 = *v4;
        v6 = *(v4 + 8);
        *v4 = v6;
        *(v4 + 8) = v16;
        v4 -= 8;
        if (!__CFADD__(v5++, 1))
        {
          continue;
        }
      }

      a3 = v21 + 1;
      v4 = v20 + 8;
      v5 = v19 - 1;
      if (v21 + 1 == a2)
      {
        return;
      }

      goto LABEL_5;
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
  }
}

void sub_1002F0254(id **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = v5;
  v7 = a3;
  v8 = a3[1];
  if (v8 >= 1)
  {
    v9 = 0;
    v10 = _swiftEmptyArrayStorage;
    v11 = &selRef_awdlInfoForPeerWithServiceName_;
    v12 = &selRef_retryRequestForError_;
    while (1)
    {
      v13 = v9;
      v14 = v9 + 1;
      v113 = v9;
      if (v9 + 1 < v8)
      {
        v108 = v10;
        v110 = v6;
        v15 = *v7;
        v16 = *(*v7 + 8 * v9);
        v17 = *(*v7 + 8 * v14);
        v18 = v16;
        v19 = [v17 v11[59]];
        if (!v19)
        {
          goto LABEL_138;
        }

        v20 = v19;
        v118 = [v19 v12[14]];

        v21 = [v18 v11[59]];
        if (!v21)
        {
LABEL_139:
          __break(1u);
          goto LABEL_140;
        }

        v22 = v21;
        v116 = [v21 v12[14]];

        v4 = v113 + 2;
        v23 = &v15[8 * v113 + 16];
        while (v8 != v4)
        {
          v24 = *(v23 - 1);
          v25 = *v23;
          v26 = v24;
          v27 = [v25 bleDevice];
          if (!v27)
          {
            goto LABEL_133;
          }

          v28 = v27;
          v29 = [v27 rssiFloor];

          v30 = [v26 bleDevice];
          if (!v30)
          {
            goto LABEL_132;
          }

          v31 = v30;
          v14 = v118 < v116;
          v32 = [v30 rssiFloor];

          ++v4;
          ++v23;
          if (v118 < v116 == v29 >= v32)
          {
            v8 = v4 - 1;
            break;
          }
        }

        v10 = v108;
        v6 = v110;
        v7 = a3;
        v11 = &selRef_awdlInfoForPeerWithServiceName_;
        v13 = v113;
        v33 = 8 * v113;
        if (v118 >= v116)
        {
          goto LABEL_21;
        }

        if (v8 < v113)
        {
          goto LABEL_125;
        }

        if (v113 >= v8)
        {
LABEL_21:
          v14 = v8;
          v12 = &selRef_retryRequestForError_;
        }

        else
        {
          v34 = 8 * v8 - 8;
          v35 = v8;
          v36 = v113;
          v12 = &selRef_retryRequestForError_;
          do
          {
            if (v36 != --v35)
            {
              v37 = *a3;
              if (!*a3)
              {
                goto LABEL_135;
              }

              v38 = *(v37 + v33);
              *(v37 + v33) = *(v37 + v34);
              *(v37 + v34) = v38;
            }

            ++v36;
            v34 -= 8;
            v33 += 8;
          }

          while (v36 < v35);
          v14 = v8;
        }
      }

      v39 = v7[1];
      if (v14 < v39)
      {
        if (__OFSUB__(v14, v13))
        {
          goto LABEL_124;
        }

        if (v14 - v13 < a4)
        {
          v40 = (v13 + a4);
          if (__OFADD__(v13, a4))
          {
            goto LABEL_126;
          }

          if (v40 >= v39)
          {
            v40 = v7[1];
          }

          if (v40 < v13)
          {
LABEL_127:
            __break(1u);
            goto LABEL_128;
          }

          if (v14 != v40)
          {
            v109 = v10;
            v111 = v6;
            v41 = *v7;
            v42 = *v7 + 8 * v14 - 8;
            v4 = v13 - v14;
            v114 = v40;
            do
            {
              v117 = v42;
              v119 = v14;
              v43 = *(v41 + 8 * v14);
              v115 = v4;
              while (1)
              {
                v44 = *v42;
                v45 = v43;
                v46 = v44;
                v47 = [v45 bleDevice];
                if (!v47)
                {
                  goto LABEL_130;
                }

                v48 = v47;
                v49 = [v47 v12[14]];

                v50 = [v46 bleDevice];
                if (!v50)
                {
                  __break(1u);
LABEL_130:
                  __break(1u);
LABEL_131:
                  __break(1u);
LABEL_132:
                  __break(1u);
LABEL_133:
                  __break(1u);
LABEL_134:
                  __break(1u);
LABEL_135:
                  __break(1u);
LABEL_136:
                  __break(1u);
LABEL_137:
                  __break(1u);
LABEL_138:
                  __break(1u);
                  goto LABEL_139;
                }

                v51 = v50;
                v52 = [v50 v12[14]];

                if (v49 >= v52)
                {
                  break;
                }

                if (!v41)
                {
                  goto LABEL_131;
                }

                v53 = *v42;
                v43 = *(v42 + 8);
                *v42 = v43;
                *(v42 + 8) = v53;
                v42 -= 8;
                v54 = __CFADD__(v4++, 1);
                v12 = &selRef_retryRequestForError_;
                if (v54)
                {
                  goto LABEL_33;
                }
              }

              v12 = &selRef_retryRequestForError_;
LABEL_33:
              v14 = v119 + 1;
              v42 = v117 + 8;
              v4 = v115 - 1;
            }

            while ((v119 + 1) != v114);
            v14 = v114;
            v10 = v109;
            v6 = v111;
            v7 = a3;
            v11 = &selRef_awdlInfoForPeerWithServiceName_;
            v13 = v113;
          }
        }
      }

      if (v14 < v13)
      {
        goto LABEL_123;
      }

      v55 = v10;
      v120 = v14;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v10 = v55;
      }

      else
      {
        v10 = sub_10028E6A8(0, *(v55 + 2) + 1, 1, v55);
      }

      v4 = *(v10 + 2);
      v56 = *(v10 + 3);
      v57 = v4 + 1;
      if (v4 >= v56 >> 1)
      {
        v10 = sub_10028E6A8((v56 > 1), v4 + 1, 1, v10);
      }

      *(v10 + 2) = v57;
      v58 = &v10[16 * v4];
      *(v58 + 4) = v113;
      *(v58 + 5) = v14;
      v14 = *a1;
      if (!*a1)
      {
        goto LABEL_137;
      }

      if (v4)
      {
        while (1)
        {
          v59 = v57 - 1;
          if (v57 >= 4)
          {
            break;
          }

          if (v57 == 3)
          {
            v60 = *(v10 + 4);
            v61 = *(v10 + 5);
            v70 = __OFSUB__(v61, v60);
            v62 = v61 - v60;
            v63 = v70;
LABEL_63:
            if (v63)
            {
              goto LABEL_112;
            }

            v76 = &v10[16 * v57];
            v78 = *v76;
            v77 = *(v76 + 1);
            v79 = __OFSUB__(v77, v78);
            v80 = v77 - v78;
            v81 = v79;
            if (v79)
            {
              goto LABEL_115;
            }

            v82 = &v10[16 * v59 + 32];
            v84 = *v82;
            v83 = *(v82 + 1);
            v70 = __OFSUB__(v83, v84);
            v85 = v83 - v84;
            if (v70)
            {
              goto LABEL_118;
            }

            if (__OFADD__(v80, v85))
            {
              goto LABEL_119;
            }

            if (v80 + v85 >= v62)
            {
              if (v62 < v85)
              {
                v59 = v57 - 2;
              }

              goto LABEL_84;
            }

            goto LABEL_77;
          }

          v86 = &v10[16 * v57];
          v88 = *v86;
          v87 = *(v86 + 1);
          v70 = __OFSUB__(v87, v88);
          v80 = v87 - v88;
          v81 = v70;
LABEL_77:
          if (v81)
          {
            goto LABEL_114;
          }

          v89 = &v10[16 * v59];
          v91 = *(v89 + 4);
          v90 = *(v89 + 5);
          v70 = __OFSUB__(v90, v91);
          v92 = v90 - v91;
          if (v70)
          {
            goto LABEL_117;
          }

          if (v92 < v80)
          {
            goto LABEL_3;
          }

LABEL_84:
          v4 = v59 - 1;
          if (v59 - 1 >= v57)
          {
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
LABEL_116:
            __break(1u);
LABEL_117:
            __break(1u);
LABEL_118:
            __break(1u);
LABEL_119:
            __break(1u);
LABEL_120:
            __break(1u);
LABEL_121:
            __break(1u);
LABEL_122:
            __break(1u);
LABEL_123:
            __break(1u);
LABEL_124:
            __break(1u);
LABEL_125:
            __break(1u);
LABEL_126:
            __break(1u);
            goto LABEL_127;
          }

          if (!*v7)
          {
            goto LABEL_134;
          }

          v97 = v10;
          v98 = *&v10[16 * v4 + 32];
          v99 = *&v10[16 * v59 + 40];
          sub_1002F09BC((*v7 + 8 * v98), (*v7 + 8 * *&v10[16 * v59 + 32]), (*v7 + 8 * v99), v14);
          if (v6)
          {
            goto LABEL_106;
          }

          if (v99 < v98)
          {
            goto LABEL_108;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v97 = sub_1004973B4(v97);
          }

          if (v4 >= *(v97 + 2))
          {
            goto LABEL_109;
          }

          v100 = &v97[16 * v4];
          *(v100 + 4) = v98;
          *(v100 + 5) = v99;
          sub_100497328(v59);
          v10 = v97;
          v57 = *(v97 + 2);
          v11 = &selRef_awdlInfoForPeerWithServiceName_;
          if (v57 <= 1)
          {
            goto LABEL_3;
          }
        }

        v64 = &v10[16 * v57 + 32];
        v65 = *(v64 - 64);
        v66 = *(v64 - 56);
        v70 = __OFSUB__(v66, v65);
        v67 = v66 - v65;
        if (v70)
        {
          goto LABEL_110;
        }

        v69 = *(v64 - 48);
        v68 = *(v64 - 40);
        v70 = __OFSUB__(v68, v69);
        v62 = v68 - v69;
        v63 = v70;
        if (v70)
        {
          goto LABEL_111;
        }

        v71 = &v10[16 * v57];
        v73 = *v71;
        v72 = *(v71 + 1);
        v70 = __OFSUB__(v72, v73);
        v74 = v72 - v73;
        if (v70)
        {
          goto LABEL_113;
        }

        v70 = __OFADD__(v62, v74);
        v75 = v62 + v74;
        if (v70)
        {
          goto LABEL_116;
        }

        if (v75 >= v67)
        {
          v93 = &v10[16 * v59 + 32];
          v95 = *v93;
          v94 = *(v93 + 1);
          v70 = __OFSUB__(v94, v95);
          v96 = v94 - v95;
          if (v70)
          {
            goto LABEL_120;
          }

          if (v62 < v96)
          {
            v59 = v57 - 2;
          }

          goto LABEL_84;
        }

        goto LABEL_63;
      }

LABEL_3:
      v8 = v7[1];
      v9 = v120;
      if (v120 >= v8)
      {
        goto LABEL_95;
      }
    }
  }

  v10 = _swiftEmptyArrayStorage;
LABEL_95:
  v14 = v7;
  v7 = *a1;
  if (*a1)
  {
    v4 = v10;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v101 = v4;
    }

    else
    {
LABEL_128:
      v101 = sub_1004973B4(v4);
    }

    v4 = *(v101 + 2);
    if (v4 >= 2)
    {
      while (*v14)
      {
        v102 = *&v101[16 * v4];
        v103 = v101;
        v104 = *&v101[16 * v4 + 24];
        sub_1002F09BC((*v14 + 8 * v102), (*v14 + 8 * *&v101[16 * v4 + 16]), (*v14 + 8 * v104), v7);
        if (v6)
        {
          goto LABEL_106;
        }

        if (v104 < v102)
        {
          goto LABEL_121;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v103 = sub_1004973B4(v103);
        }

        if (v4 - 2 >= *(v103 + 2))
        {
          goto LABEL_122;
        }

        v105 = &v103[16 * v4];
        *v105 = v102;
        *(v105 + 1) = v104;
        sub_100497328(v4 - 1);
        v101 = v103;
        v4 = *(v103 + 2);
        if (v4 <= 1)
        {
          goto LABEL_106;
        }
      }

      goto LABEL_136;
    }

LABEL_106:
  }

  else
  {
LABEL_140:
    __break(1u);
  }
}

uint64_t sub_1002F09BC(id *__src, id *__dst, id *a3, id *a4)
{
  v4 = a3;
  v5 = __dst;
  v6 = __dst - __src;
  v7 = __dst - __src + 7;
  if (__dst - __src >= 0)
  {
    v7 = __dst - __src;
  }

  v8 = v7 >> 3;
  v9 = a3 - __dst;
  v10 = a3 - __dst + 7;
  if (a3 - __dst >= 0)
  {
    v10 = a3 - __dst;
  }

  v11 = v10 >> 3;
  if (v8 >= v10 >> 3)
  {
    if (a4 != __dst || &__dst[v11] <= a4)
    {
      v31 = a4;
      memmove(a4, __dst, 8 * v11);
      v5 = __dst;
      a4 = v31;
    }

    v48 = a4;
    v15 = &a4[v11];
    if (v9 < 8)
    {
      v12 = a4;
    }

    else
    {
      v12 = a4;
      if (v5 > __src)
      {
        while (1)
        {
          v44 = v5;
          v33 = v5 - 1;
          --v4;
          v34 = v15;
          v47 = v33;
          while (1)
          {
            v50 = v15;
            v35 = *--v34;
            v36 = *v33;
            v37 = v35;
            v38 = v36;
            result = [v37 bleDevice];
            if (!result)
            {
              goto LABEL_49;
            }

            v39 = result;
            v40 = [result rssiFloor];

            result = [v38 bleDevice];
            if (!result)
            {
              goto LABEL_48;
            }

            v41 = result;
            v42 = [result rssiFloor];

            v43 = v4 + 1;
            if (v40 < v42)
            {
              break;
            }

            v33 = v47;
            if (v43 != v50)
            {
              *v4 = *v34;
            }

            --v4;
            v15 = v34;
            if (v34 <= v48)
            {
              v15 = v34;
              v12 = v48;
              v30 = v44;
              goto LABEL_42;
            }
          }

          v15 = v50;
          v30 = v47;
          if (v43 != v44)
          {
            *v4 = *v47;
          }

          v12 = v48;
          if (v50 > v48)
          {
            v5 = v47;
            if (v47 > __src)
            {
              continue;
            }
          }

          goto LABEL_42;
        }
      }
    }

    v30 = v5;
LABEL_42:
    if (v30 != v12 || v30 >= (v12 + ((v15 - v12 + (v15 - v12 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
    {
      memmove(v30, v12, 8 * (v15 - v12));
    }

    return 1;
  }

  v12 = a4;
  v13 = __src;
  if (a4 != __src || &__src[v8] <= a4)
  {
    memmove(a4, __src, 8 * v8);
    v5 = __dst;
  }

  v15 = &v12[v8];
  if (v6 < 8 || v5 >= v4)
  {
LABEL_21:
    v30 = v13;
    goto LABEL_42;
  }

  v16 = &selRef_retryRequestForError_;
  v46 = v4;
  v49 = &v12[v8];
  while (1)
  {
    v17 = v13;
    v18 = v5;
    v19 = v12;
    v20 = *v12;
    v21 = *v5;
    v22 = v20;
    result = [v21 bleDevice];
    if (!result)
    {
      break;
    }

    v24 = result;
    v25 = [result v16[14]];

    result = [v22 bleDevice];
    if (!result)
    {
      goto LABEL_47;
    }

    v26 = result;
    v27 = [result v16[14]];

    if (v25 >= v27)
    {
      v28 = v19;
      v12 = v19 + 1;
      v29 = v17;
      v5 = v18;
      if (v17 == v19)
      {
        goto LABEL_19;
      }

LABEL_18:
      *v29 = *v28;
      goto LABEL_19;
    }

    v28 = v18;
    v5 = v18 + 1;
    v29 = v17;
    v12 = v19;
    if (v17 != v18)
    {
      goto LABEL_18;
    }

LABEL_19:
    v13 = v29 + 1;
    v15 = v49;
    v16 = &selRef_retryRequestForError_;
    if (v12 >= v49 || v5 >= v46)
    {
      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
  return result;
}

uint64_t sub_1002F0D64(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v34 = *(v4 - 8);
  v35 = v4;
  __chkstk_darwin(v4);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for B389PresentationConfig.Mode(0);
  v8 = __chkstk_darwin(v7);
  v10 = (&v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = __chkstk_darwin(v8);
  v13 = &v34 - v12;
  __chkstk_darwin(v11);
  v15 = &v34 - v14;
  v16 = sub_10028088C(&qword_1009772D0, &qword_1007FA188);
  v17 = __chkstk_darwin(v16 - 8);
  v19 = &v34 - v18;
  v20 = &v34 + *(v17 + 56) - v18;
  sub_1002F4C20(a1, &v34 - v18, type metadata accessor for B389PresentationConfig.Mode);
  sub_1002F4C20(a2, v20, type metadata accessor for B389PresentationConfig.Mode);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_1002F4C20(v19, v15, type metadata accessor for B389PresentationConfig.Mode);
    if (!swift_getEnumCaseMultiPayload())
    {
      v29 = *v15 ^ *v20;
      goto LABEL_8;
    }

    goto LABEL_13;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_1002F4C20(v19, v10, type metadata accessor for B389PresentationConfig.Mode);
    v31 = *v10;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v32 = *v20;
      sub_1000276B4(0, &qword_1009772D8, NSObject_ptr);
      v30 = static NSObject.== infix(_:_:)();

      sub_1002F3138(v19, type metadata accessor for B389PresentationConfig.Mode);
      return v30 & 1;
    }

    goto LABEL_13;
  }

  sub_1002F4C20(v19, v13, type metadata accessor for B389PresentationConfig.Mode);
  v22 = *(sub_10028088C(&unk_100977290, &unk_1007FA160) + 48);
  v23 = v13[v22];
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v34 + 8))(v13, v35);
LABEL_13:
    sub_100005508(v19, &qword_1009772D0, &qword_1007FA188);
LABEL_14:
    v30 = 0;
    return v30 & 1;
  }

  v24 = v20[v22];
  v26 = v34;
  v25 = v35;
  (*(v34 + 32))(v6, v20, v35);
  v27 = static UUID.== infix(_:_:)();
  v28 = *(v26 + 8);
  v28(v6, v25);
  v28(v13, v25);
  if ((v27 & 1) == 0)
  {
    sub_1002F3138(v19, type metadata accessor for B389PresentationConfig.Mode);
    goto LABEL_14;
  }

  v29 = v23 ^ v24;
LABEL_8:
  sub_1002F3138(v19, type metadata accessor for B389PresentationConfig.Mode);
  v30 = v29 ^ 1;
  return v30 & 1;
}

BOOL sub_1002F1160(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16);
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v5 = type metadata accessor for B389PresentationConfig(0);
  if ((sub_1002F0D64(a1 + v5[6], a2 + v5[6]) & 1) == 0 || *(a1 + v5[7]) != *(a2 + v5[7]) || *(a1 + v5[8]) != *(a2 + v5[8]) || *(a1 + v5[9]) != *(a2 + v5[9]) || *(a1 + v5[10]) != *(a2 + v5[10]) || *(a1 + v5[11]) != *(a2 + v5[11]))
  {
    return 0;
  }

  v6 = v5[12];
  v7 = (a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  v10 = *(a2 + v6 + 8);
  if (v8)
  {
    if (!v10)
    {
      return 0;
    }
  }

  else
  {
    if (*v7 != *v9)
    {
      LOBYTE(v10) = 1;
    }

    if (v10)
    {
      return 0;
    }
  }

  v12 = v5[13];
  v13 = (a1 + v12);
  v14 = *(a1 + v12 + 8);
  v15 = (a2 + v12);
  v16 = v15[1];
  if (v14)
  {
    if (!v16 || (*v13 != *v15 || v14 != v16) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v16)
  {
    return 0;
  }

  v17 = v5[14];
  v19 = *(a1 + v17);
  v18 = *(a1 + v17 + 8);
  v20 = (a2 + v17);
  v22 = *v20;
  v21 = v20[1];
  if (v18 >> 60 != 15)
  {
    if (v21 >> 60 == 15)
    {
      goto LABEL_31;
    }

    sub_1002A9924(v19, v18);
    sub_1002A9924(v22, v21);
    v23 = sub_100331508(v19, v18, v22, v21);
    sub_10028BCC0(v22, v21);
    sub_10028BCC0(v19, v18);
    return v23;
  }

  if (v21 >> 60 != 15)
  {
LABEL_31:
    sub_1002A9924(v19, v18);
    sub_1002A9924(v22, v21);
    sub_10028BCC0(v19, v18);
    sub_10028BCC0(v22, v21);
    return 0;
  }

  sub_1002A9924(v19, v18);
  sub_1002A9924(v22, v21);
  sub_10028BCC0(v19, v18);
  return 1;
}

void *sub_1002F13BC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10028088C(&qword_100977368, &qword_1007FA1E8);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v25 = v1;
    v26 = a1 + 32;
    v6 = v1;
    while (1)
    {
      v7 = *(v26 + 8 * v4);
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      v27 = v7;
      String.hash(into:)();
      v8 = Hasher._finalize()();

      v10 = -1 << *(v3 + 32);
      v11 = v8 & ~v10;
      v12 = v11 >> 6;
      v13 = *(v5 + 8 * (v11 >> 6));
      v14 = 1 << v11;
      if (((1 << v11) & v13) == 0)
      {
        goto LABEL_15;
      }

      v15 = ~v10;
      do
      {
        v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v18 = v17;
        if (v16 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v18 == v19)
        {

LABEL_4:
          v6 = v25;
          goto LABEL_5;
        }

        v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v21)
        {

          goto LABEL_4;
        }

        v11 = (v11 + 1) & v15;
        v12 = v11 >> 6;
        v13 = *(v5 + 8 * (v11 >> 6));
        v14 = 1 << v11;
      }

      while (((1 << v11) & v13) != 0);
      v6 = v25;
LABEL_15:
      *(v5 + 8 * v12) = v14 | v13;
      *(*(v3 + 48) + 8 * v11) = v27;
      v22 = *(v3 + 16);
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v24;
LABEL_5:
      if (++v4 == v6)
      {
        return v3;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

void *sub_1002F15B0(void *result, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
      goto LABEL_15;
    }

    v5 = result[2];
    v4 = result[3];
    v6 = __OFSUB__(v4, v5);
    v3 = v4 - v5;
    if (!v6)
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  else if (!v2)
  {
    v3 = BYTE6(a2);
    goto LABEL_10;
  }

  LODWORD(v3) = HIDWORD(result) - result;
  if (__OFSUB__(HIDWORD(result), result))
  {
    goto LABEL_31;
  }

  v3 = v3;
LABEL_10:
  if ((v3 - 0x1000000000000000) >> 61 == 7)
  {
    if ((v3 & 0x1FFFFFFFFFFFFFFFLL) == 2)
    {
      v7 = sub_100549DA4(result, a2);
      v8 = v7[1].u64[0];
      if (v8)
      {
        if (v8 < 4)
        {
          v9 = 0;
          LODWORD(v10) = 0;
LABEL_26:
          v21 = v8 - v9;
          v22 = &v7[2] + v9;
          do
          {
            v23 = *v22++;
            v10 = (v23 | v10);
            --v21;
          }

          while (v21);
LABEL_28:

          return v10;
        }

        if (v8 >= 0x10)
        {
          v9 = v8 & 0x7FFFFFFFFFFFFFF0;
          v11 = v7 + 3;
          v12 = 0uLL;
          v13 = v8 & 0x7FFFFFFFFFFFFFF0;
          v14 = 0uLL;
          do
          {
            v12 = vorrq_s8(v11[-1], v12);
            v14 = vorrq_s8(*v11, v14);
            v11 += 2;
            v13 -= 16;
          }

          while (v13);
          v15 = vorrq_s8(v14, v12);
          *v15.i8 = vorr_s8(*v15.i8, *&vextq_s8(v15, v15, 8uLL));
          v10 = (v15.i32[0] | v15.i32[1] | ((v15.i64[0] | HIDWORD(v15.i64[0])) >> 16));
          if (v8 == v9)
          {
            goto LABEL_28;
          }

          if ((v8 & 0xC) == 0)
          {
            goto LABEL_26;
          }
        }

        else
        {
          LOWORD(v10) = 0;
          v9 = 0;
        }

        v16 = v9;
        v9 = v8 & 0x7FFFFFFFFFFFFFFCLL;
        v17 = v10;
        v18 = (&v7[2] + 2 * v16);
        v19 = v16 - (v8 & 0x7FFFFFFFFFFFFFFCLL);
        do
        {
          v20 = *v18++;
          v17 = vorr_s8(v20, v17);
          v19 += 4;
        }

        while (v19);
        v10 = (v17.i32[0] | v17.i32[1] | ((*&v17 | HIDWORD(*&v17)) >> 16));
        if (v8 == v9)
        {
          goto LABEL_28;
        }

        goto LABEL_26;
      }

      return 0;
    }

LABEL_15:
    v10 = &unk_1007FA1B0;
    sub_10028088C(&unk_1009832C0, &unk_1007FA1B0);
    sub_100011630(&unk_100977330, &unk_1009832C0, &unk_1007FA1B0, &unk_1007FA4F8);
    swift_allocError();
    swift_willThrow();
    return v10;
  }

  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

unint64_t _s16DaemoniOSLibrary10SDRunStateO8rawValueACSgSS_tcfC_0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1008D75F8, v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1002F17FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10028088C(&qword_100976C00, &unk_1007F9D70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *sub_1002F186C(void *result, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
      goto LABEL_15;
    }

    v5 = result[2];
    v4 = result[3];
    v6 = __OFSUB__(v4, v5);
    v3 = v4 - v5;
    if (!v6)
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  else if (!v2)
  {
    v3 = BYTE6(a2);
    goto LABEL_10;
  }

  LODWORD(v3) = HIDWORD(result) - result;
  if (__OFSUB__(HIDWORD(result), result))
  {
    goto LABEL_25;
  }

  v3 = v3;
LABEL_10:
  if ((v3 - 0x1000000000000000) >> 61 == 7)
  {
    if ((v3 & 0x1FFFFFFFFFFFFFFFLL) == 4)
    {
      v7 = sub_1002E8784(result, a2);
      v8 = v7[2];
      if (v8)
      {
        if (v8 > 7)
        {
          v9 = v8 & 0x7FFFFFFFFFFFFFF8;
          v11 = (v7 + 6);
          v12 = 0uLL;
          v13 = v8 & 0x7FFFFFFFFFFFFFF8;
          v14 = 0uLL;
          do
          {
            v12 = vorrq_s8(v11[-1], v12);
            v14 = vorrq_s8(*v11, v14);
            v11 += 2;
            v13 -= 8;
          }

          while (v13);
          v15 = vorrq_s8(v14, v12);
          v16 = vorr_s8(*v15.i8, *&vextq_s8(v15, v15, 8uLL));
          v10 = (v16.i32[0] | v16.i32[1]);
          if (v8 == v9)
          {
            goto LABEL_22;
          }
        }

        else
        {
          v9 = 0;
          LODWORD(v10) = 0;
        }

        v17 = v8 - v9;
        v18 = v7 + v9 + 8;
        do
        {
          v19 = *v18++;
          v10 = v19 | v10;
          --v17;
        }

        while (v17);
LABEL_22:

        return v10;
      }

      return 0;
    }

LABEL_15:
    v10 = &unk_1007FA1F0;
    sub_10028088C(&qword_100977370, &unk_1007FA1F0);
    sub_100011630(&qword_100977378, &qword_100977370, &unk_1007FA1F0, &unk_1007FA4F8);
    swift_allocError();
    swift_willThrow();
    return v10;
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

void *sub_1002F1A08@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X8>)
{
  v8 = a3 >> 1;
  v9 = (a3 >> 1) - a2;
  if (__OFSUB__(a3 >> 1, a2))
  {
    goto LABEL_40;
  }

  a4 = (v9 - 0x1000000000000000) >> 61;
  if (a4 != 7)
  {
    goto LABEL_41;
  }

  if ((v9 & 0x1FFFFFFFFFFFFFFFLL) != 2)
  {
    v14 = &unk_1007FA1B0;
    sub_10028088C(&unk_1009832C0, &unk_1007FA1B0);
    sub_100011630(&unk_100977330, &unk_1009832C0, &unk_1007FA1B0, &unk_1007FA4F8);
    swift_allocError();
    swift_willThrow();
    return v14;
  }

  v4 = a2;
  v5 = a1;
  v30 = _swiftEmptyArrayStorage;
  sub_10028FEB0(0, (a3 >> 1) - a2, 0);
  if (v4 <= v8)
  {
    a4 = v8;
  }

  else
  {
    a4 = v4;
  }

  if (v8 <= v4)
  {
    goto LABEL_38;
  }

  v8 = a4 - v4;
  v10 = _swiftEmptyArrayStorage;
  v6 = v5 + v4;
  v7 = *(v5 + v4);
  v5 = _swiftEmptyArrayStorage[2];
  a4 = _swiftEmptyArrayStorage[3];
  v4 = v5 + 1;
  if (v5 >= a4 >> 1)
  {
    goto LABEL_42;
  }

  while (1)
  {
    v10[1].i64[0] = v4;
    a4 = v10 + 2 * v5;
    *(a4 + 32) = v7;
    if (v8 != 1)
    {
      break;
    }

LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    sub_10028FEB0((a4 > 1), v4, 1);
    v10 = v30;
  }

  LOWORD(v6) = *(v6 + 1) << 8;
  v30 = v10;
  v11 = v10[1].u64[1];
  v12 = v5 + 2;
  if (v4 >= v11 >> 1)
  {
    sub_10028FEB0((v11 > 1), v12, 1);
    v10 = v30;
  }

  v10[1].i64[0] = v12;
  v10[2].i16[v4] = v6;
  if (v9 != 2)
  {
    v5 = 8190;
    while (1)
    {
      a4 = v8 + v5;
      if (v8 + v5 == 0x2000)
      {
        goto LABEL_38;
      }

      if (!v5)
      {
        goto LABEL_39;
      }

      v30 = v10;
      v6 = v10[1].u64[0];
      v15 = v10[1].u64[1];
      v4 = v6 + 1;
      if (v6 >= v15 >> 1)
      {
        sub_10028FEB0((v15 > 1), v6 + 1, 1);
        v10 = v30;
      }

      v10[1].i64[0] = v4;
      v10[2].i16[v6] = 0;
      --v5;
      if (v9 + v5 == 0x2000)
      {
        goto LABEL_14;
      }
    }
  }

  v4 = v10[1].u64[0];
  if (v4)
  {
LABEL_14:
    if (v4 < 4)
    {
      v13 = 0;
      LODWORD(v14) = 0;
      goto LABEL_33;
    }

    if (v4 >= 0x10)
    {
      v13 = v4 & 0xFFFFFFFFFFFFFFF0;
      v16 = v10 + 3;
      v17 = 0uLL;
      v18 = v4 & 0xFFFFFFFFFFFFFFF0;
      v19 = 0uLL;
      do
      {
        v17 = vorrq_s8(v16[-1], v17);
        v19 = vorrq_s8(*v16, v19);
        v16 += 2;
        v18 -= 16;
      }

      while (v18);
      v20 = vorrq_s8(v19, v17);
      *v20.i8 = vorr_s8(*v20.i8, *&vextq_s8(v20, v20, 8uLL));
      v14 = (v20.i32[0] | v20.i32[1] | ((v20.i64[0] | HIDWORD(v20.i64[0])) >> 16));
      if (v4 != v13)
      {
        if ((v4 & 0xC) == 0)
        {
          goto LABEL_33;
        }

        goto LABEL_30;
      }
    }

    else
    {
      LOWORD(v14) = 0;
      v13 = 0;
LABEL_30:
      v21 = v13;
      v13 = v4 & 0xFFFFFFFFFFFFFFFCLL;
      v22 = v14;
      v23 = (&v10[2] + 2 * v21);
      v24 = v21 - (v4 & 0xFFFFFFFFFFFFFFFCLL);
      do
      {
        v25 = *v23++;
        v22 = vorr_s8(v25, v22);
        v24 += 4;
      }

      while (v24);
      v14 = (v22.i32[0] | v22.i32[1] | ((*&v22 | HIDWORD(*&v22)) >> 16));
      if (v4 != v13)
      {
LABEL_33:
        v26 = v4 - v13;
        v27 = &v10[2] + v13;
        do
        {
          v28 = *v27++;
          v14 = (v28 | v14);
          --v26;
        }

        while (v26);
      }
    }
  }

  else
  {

    return 0;
  }

  return v14;
}