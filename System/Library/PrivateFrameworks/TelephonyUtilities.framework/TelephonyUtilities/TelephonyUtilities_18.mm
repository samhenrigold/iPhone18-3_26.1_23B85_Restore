uint64_t sub_10033BC20(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for SoundDescriptor(0);
  v6 = sub_100007BF0(v5);
  __chkstk_darwin(v6);
  sub_10000A1BC();
  __chkstk_darwin(v7);
  v9 = &v22 - v8;
  v10 = sub_10026D814(qword_1006A60D8, &qword_100581008);
  v11 = sub_100007BF0(v10);
  v12 = __chkstk_darwin(v11);
  v14 = &v22 - v13;
  v15 = *(v12 + 56);
  sub_100049EF4(a1, &v22 - v13);
  sub_100049EF4(a2, &v14[v15]);
  v16 = sub_10026D814(&unk_1006A3DC0, &qword_10057EC00);
  v17 = sub_100015468(&v14[v15], 2, v16);
  v18 = sub_100015468(v14, 2, v16);
  if (!v17)
  {
    if (!v18)
    {
      sub_10033BF60(v14, v9);
      sub_10033BF60(&v14[v15], v2);
      v20 = sub_10039FCF8(v9, v2);
      sub_10033BF00(v2, type metadata accessor for SoundDescriptor);
      sub_10033BF00(v9, type metadata accessor for SoundDescriptor);
      return v20 & 1;
    }

    sub_1000084E0();
    sub_10033BF00(&v14[v15], v19);
    goto LABEL_9;
  }

  if (v17 == 1)
  {
    if (v18 != 1)
    {
      goto LABEL_9;
    }
  }

  else if (v18 != 2)
  {
LABEL_9:
    sub_10033BF00(v14, type metadata accessor for SoundDescriptorAction);
    v20 = 0;
    return v20 & 1;
  }

  v20 = 1;
  return v20 & 1;
}

BOOL sub_10033BE00(uint64_t a1, uint64_t a2)
{
  v6 = type metadata accessor for SoundDescriptorAction(0);
  v7 = sub_100007BF0(v6);
  __chkstk_darwin(v7);
  sub_10000A1BC();
  v9 = __chkstk_darwin(v8);
  sub_100010344(v9, v10, v11, v12, v13, v14, v15, v16, v27);
  v17 = sub_10026D814(&unk_1006A3DC0, &qword_10057EC00);
  if (sub_1000171DC(v17))
  {
    sub_10000A870();
    if (v20)
    {
      v21 = v18;
    }

    else
    {
      v21 = v19;
    }
  }

  else
  {
    sub_1000084E0();
    sub_10033BF00(v3, v22);
    v21 = 3;
  }

  sub_100049EF4(a2, v2);
  if (sub_100015468(v2, 2, a1))
  {
    sub_10000A870();
    if (!v20)
    {
      v23 = v24;
    }
  }

  else
  {
    sub_1000084E0();
    sub_10033BF00(v2, v25);
    v23 = 3;
  }

  return v21 < v23;
}

uint64_t sub_10033BF00(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10033BF60(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SoundDescriptor(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_10033BFC4(uint64_t a1)
{
  result = sub_100004778(a1);
  qword_1006BA380 = result;
  return result;
}

void *sub_10033C090(uint64_t a1)
{
  v1[2] = a1;
  v2 = swift_allocObject();
  swift_weakInit();
  v1[3] = sub_1003427E8;
  v1[4] = v2;
  v3 = swift_allocObject();
  swift_weakInit();
  v1[5] = sub_100342818;
  v1[6] = v3;
  v4 = swift_allocObject();
  swift_weakInit();
  v1[7] = sub_100342848;
  v1[8] = v4;
  v5 = swift_allocObject();
  swift_weakInit();
  v1[9] = sub_100342878;
  v1[10] = v5;
  return v1;
}

void *sub_10033C198(uint64_t a1)
{
  v1[2] = a1;
  v2 = swift_allocObject();
  swift_weakInit();
  v1[3] = sub_100342880;
  v1[4] = v2;
  v3 = swift_allocObject();
  swift_weakInit();
  v1[5] = sub_1003428B0;
  v1[6] = v3;
  v4 = swift_allocObject();
  swift_weakInit();
  v1[7] = sub_1003428E0;
  v1[8] = v4;
  v5 = swift_allocObject();
  swift_weakInit();
  v1[9] = sub_100342910;
  v1[10] = v5;
  return v1;
}

uint64_t sub_10033C2A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100010368(a1, a2, a3);
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = sub_1000113B8();
    v3(v5);
  }

  return result;
}

uint64_t sub_10033C2F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100010368(a1, a2, a3);
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = sub_1000113B8();
    v3(v5);
  }

  return result;
}

uint64_t sub_10033C340(uint64_t a1, void (*a2)(void))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    a2();
  }

  return result;
}

void *sub_10033C3A0@<X0>(void *a2@<X8>)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    memcpy(__dst, (Strong + 40), sizeof(__dst));
    sub_100343100(__dst, __src, &unk_1006A41A0, &qword_10057EFE0);

    memcpy(__src, __dst, sizeof(__src));
  }

  else
  {
    sub_1002BA0C4(__src);
  }

  return memcpy(a2, __src, 0xA8uLL);
}

void *sub_10033C458@<X0>(void *a2@<X8>)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    memcpy(__dst, (Strong + 80), sizeof(__dst));
    sub_100343100(__dst, __src, &unk_1006A41A0, &qword_10057EFE0);

    memcpy(__src, __dst, sizeof(__src));
  }

  else
  {
    sub_1002BA0C4(__src);
  }

  return memcpy(a2, __src, 0xA8uLL);
}

Swift::Int sub_10033C510(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = String.count.getter();
  v7 = Substring.distance(from:to:)();
  v8 = __OFADD__(v6, v7);
  result = v6 + v7;
  if (v8)
  {
    __break(1u);
  }

  else
  {
    String.reserveCapacity(_:)(result);
    sub_100343160();
    String.append<A>(contentsOf:)();
    String.append<A>(contentsOf:)();
    return 0;
  }

  return result;
}

void *sub_10033C5F4(uint64_t a1, uint64_t a2)
{
  v3 = sub_10000B6F4(a2);
  v4 = *(a1 + 16);
  v5 = __OFADD__(v3, v4);
  result = (v3 + v4);
  if (v5)
  {
    __break(1u);
  }

  else
  {
    sub_100420420(result, 0);

    sub_100414080(v7);

    sub_100414054(v8);
    return _swiftEmptyArrayStorage;
  }

  return result;
}

uint64_t sub_10033C67C(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for DispatchQoS();
  v11 = *(v20 - 8);
  __chkstk_darwin(v20);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *&v3[OBJC_IVAR____TtC13callservicesd28SiriCallAnnouncementProvider_queue];
  v14 = swift_allocObject();
  v15 = a1[1];
  *(v14 + 24) = *a1;
  *(v14 + 16) = v3;
  *(v14 + 40) = v15;
  *(v14 + 50) = *(a1 + 26);
  *(v14 + 72) = a2;
  *(v14 + 80) = a3;
  aBlock[4] = sub_1003429C0;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004CEC;
  aBlock[3] = &unk_100628400;
  v16 = _Block_copy(aBlock);
  v17 = v3;
  sub_1003429D0(a1, &v21);
  sub_1000115CC(a2, a3);
  static DispatchQoS.unspecified.getter();
  v21 = _swiftEmptyArrayStorage;
  sub_10000EE88(&qword_1006A2CC0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_100018040(&qword_1006A2CD0, &unk_1006A2960, &unk_10057D6E0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);
  (*(v8 + 8))(v10, v7);
  (*(v11 + 8))(v13, v20);
}

void sub_10033C978(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v55 = a3;
  v56 = a4;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v59 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v58 = *(v9 - 8);
  __chkstk_darwin(v9);
  v57 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchTimeInterval();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = (&v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = type metadata accessor for DispatchTime();
  v16 = __chkstk_darwin(v15);
  v18 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v16);
  v22 = &v49 - v21;
  if (*(a1 + OBJC_IVAR____TtC13callservicesd28SiriCallAnnouncementProvider_isAvailable) == 1)
  {
    v52 = v20;
    v53 = v19;
    v54 = v9;
    v23 = sub_10033D018();
    v24 = v23;
    v60 = sub_100004778(v23);
    if ((v24 & 1) == 0)
    {
      sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
      v28 = swift_allocObject();
      *(v28 + 16) = xmmword_10057D690;
      v29 = a2[1];
      aBlock = *a2;
      *v62 = v29;
      *&v62[10] = *(a2 + 26);
      sub_1003429D0(a2, &v63);
      v30 = String.init<A>(reflecting:)();
      v50 = v6;
      v31 = v30;
      v51 = v7;
      v33 = v32;
      *(v28 + 56) = &type metadata for String;
      *(v28 + 64) = sub_100009D88();
      *(v28 + 32) = v31;
      *(v28 + 40) = v33;
      v34 = static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)("Requesting call announcement for descriptor %@.", 47, 2, &_mh_execute_header, v60, v34, v28);

      sub_1003FF818();
      v36 = v35;
      v38 = v37;
      static DispatchTime.now()();
      ObjectType = swift_getObjectType();
      *v14 = (*(v38 + 8))(ObjectType, v38);
      (*(v12 + 104))(v14, enum case for DispatchTimeInterval.milliseconds(_:), v11);
      + infix(_:_:)();
      (*(v12 + 8))(v14, v11);
      v60 = *(v52 + 8);
      v40 = v18;
      v41 = v53;
      (v60)(v40, v53);
      v52 = *(a1 + OBJC_IVAR____TtC13callservicesd28SiriCallAnnouncementProvider_queue);
      v42 = swift_allocObject();
      v42[2] = v36;
      v42[3] = v38;
      v44 = v55;
      v43 = v56;
      v42[4] = v55;
      v42[5] = v43;
      *&v62[16] = sub_100342A2C;
      *&v62[24] = v42;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      *v62 = sub_100004CEC;
      *&v62[8] = &unk_100628450;
      v45 = _Block_copy(&aBlock);
      swift_unknownObjectRetain();
      sub_1000115CC(v44, v43);
      v46 = v57;
      static DispatchQoS.unspecified.getter();
      v63 = _swiftEmptyArrayStorage;
      sub_10000EE88(&qword_1006A2CC0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
      sub_100018040(&qword_1006A2CD0, &unk_1006A2960, &unk_10057D6E0);
      v47 = v59;
      v48 = v50;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
      _Block_release(v45);
      swift_unknownObjectRelease();
      (*(v51 + 8))(v47, v48);
      (*(v58 + 8))(v46, v54);
      (v60)(v22, v41);

      return;
    }

    v25 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("Asked to begin playback of call announcement but an active descriptor already exists so doing nothing", 101, 2, &_mh_execute_header, v60, v25, _swiftEmptyArrayStorage);
  }

  else
  {
    v60 = sub_100004778(v19);
    v26 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("Asked to begin playback of call announcement but provider is not available", 74, 2, &_mh_execute_header, v60, v26, _swiftEmptyArrayStorage);
  }

  v27 = v60;
}

uint64_t sub_10033D018()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = (&v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *(v0 + OBJC_IVAR____TtC13callservicesd28SiriCallAnnouncementProvider_queue);
  *v4 = v5;
  (*(v2 + 104))(v4, enum case for DispatchPredicate.onQueue(_:), v1);
  v6 = v5;
  LOBYTE(v5) = _dispatchPreconditionTest(_:)();
  result = (*(v2 + 8))(v4, v1);
  if (v5)
  {
    return *(v0 + OBJC_IVAR____TtC13callservicesd28SiriCallAnnouncementProvider_activeDescriptor + 8) != 0;
  }

  __break(1u);
  return result;
}

uint64_t sub_10033D148()
{
  v7 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v0 = *(v7 - 8);
  __chkstk_darwin(v7);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v3);
  v4 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v4 - 8);
  v6[1] = sub_100006AF0(0, &qword_1006A31A0, OS_dispatch_queue_ptr);
  static DispatchQoS.userInitiated.getter();
  v8 = _swiftEmptyArrayStorage;
  sub_10000EE88(&qword_1006A0CB0, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_10026D814(&qword_1006A31B0, &unk_10057E920);
  sub_100018040(&qword_1006A0CC0, &qword_1006A31B0, &unk_10057E920);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v0 + 104))(v2, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v7);
  return OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
}

uint64_t sub_10033D3A0(uint64_t a1)
{
  v21 = a1;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v23 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for DispatchQoS();
  v5 = *(v22 - 8);
  __chkstk_darwin(v22);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Notification();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100010B20(v10);
  sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_10057D690;
  (*(v9 + 16))(v12, v21, v8);
  v15 = String.init<A>(reflecting:)();
  v17 = v16;
  *(v14 + 56) = &type metadata for String;
  *(v14 + 64) = sub_100009D88();
  *(v14 + 32) = v15;
  *(v14 + 40) = v17;
  v18 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("notification: %@", 16, 2, &_mh_execute_header, v13, v18, v14);

  aBlock[4] = sub_1003427E0;
  v26 = v1;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004CEC;
  aBlock[3] = &unk_100628270;
  v19 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v24 = _swiftEmptyArrayStorage;
  sub_10000EE88(&qword_1006A2CC0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_100018040(&qword_1006A2CD0, &unk_1006A2960, &unk_10057D6E0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v19);
  (*(v23 + 8))(v4, v2);
  (*(v5 + 8))(v7, v22);
}

uint64_t sub_10033D77C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100010368(a1, a2, a3);
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = sub_1000113B8();
    v3(v5);
  }

  return result;
}

uint64_t sub_10033D7CC(uint64_t a1)
{
  v24 = a1;
  v29 = type metadata accessor for DispatchWorkItemFlags();
  v31 = *(v29 - 8);
  __chkstk_darwin(v29);
  v27 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for DispatchQoS();
  v28 = *(v30 - 8);
  __chkstk_darwin(v30);
  v26 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Notification();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v8 = sub_100010B20(v7);
  sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_10057D690;
  v10 = *(v5 + 16);
  v10(&v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  v11 = String.init<A>(reflecting:)();
  v13 = v12;
  *(v9 + 56) = &type metadata for String;
  *(v9 + 64) = sub_100009D88();
  *(v9 + 32) = v11;
  *(v9 + 40) = v13;
  v14 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("notification: %@", 16, 2, &_mh_execute_header, v8, v14, v9);

  v15 = v25;
  v10(&v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v24, v4);
  v16 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v17 = swift_allocObject();
  (*(v5 + 32))(v17 + v16, &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  *(v17 + ((v6 + v16 + 7) & 0xFFFFFFFFFFFFFFF8)) = v15;
  aBlock[4] = sub_1003427B4;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004CEC;
  aBlock[3] = &unk_100628248;
  v18 = _Block_copy(aBlock);

  v19 = v26;
  static DispatchQoS.unspecified.getter();
  v32 = _swiftEmptyArrayStorage;
  sub_10000EE88(&qword_1006A2CC0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_100018040(&qword_1006A2CD0, &unk_1006A2960, &unk_10057D6E0);
  v20 = v27;
  v21 = v29;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);
  (*(v31 + 8))(v20, v21);
  (*(v28 + 8))(v19, v30);
}

uint64_t sub_10033DC34()
{
  swift_beginAccess();
  v1 = sub_100343100(v0 + 152, v28, &unk_1006A2D10, &unk_10057D940);
  sub_100015DA0(v1, v2, v3, v4, v5, v6, v7, v8, v18, v20, v22, *(&v22 + 1), v23, v24, v25[0], v25[1], v25[2]);
  if (v27)
  {
    sub_10003EBF0(&v26, &v22);
    sub_10033DDF8(&v22, v0);
    sub_100009B7C(&v22);
  }

  sub_100009A5C(v28, &unk_1006A2D10, &unk_10057D940);
  swift_beginAccess();
  v9 = sub_100343100(v0 + 184, v28, &unk_1006A2D10, &unk_10057D940);
  sub_100015DA0(v9, v10, v11, v12, v13, v14, v15, v16, v19, v21, v22, *(&v22 + 1), v23, v24, v25[0], v25[1], v25[2]);
  if (v27)
  {
    sub_10003EBF0(&v26, &v22);
    sub_10033DDF8(&v22, v0);
    sub_100009B7C(&v22);
  }

  sub_100009A5C(v28, &unk_1006A2D10, &unk_10057D940);

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  sub_100009A5C(v0 + 152, &unk_1006A2D10, &unk_10057D940);
  sub_100009A5C(v0 + 184, &unk_1006A2D10, &unk_10057D940);
  return v0;
}

uint64_t sub_10033DDF8(void *a1, uint64_t a2)
{
  v2 = *(a2 + 104);
  sub_100009B14(a1, a1[3]);
  [v2 removeObserver:_bridgeAnythingToObjectiveC<A>(_:)()];
  return swift_unknownObjectRelease();
}

uint64_t sub_10033DE5C()
{
  sub_10033DC34();

  return _swift_deallocClassInstance(v0, 216, 7);
}

uint64_t sub_10033DEA8()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v1 + 16);
  *v5 = v6;
  (*(v3 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v2);
  v7 = v6;
  LOBYTE(v6) = _dispatchPreconditionTest(_:)();
  result = (*(v3 + 8))(v5, v2);
  if (v6)
  {
    sub_10004CC80(result);
    sub_100340B34(1);
    sub_10004DF98();
    sub_10004CDCC();
    sub_10004D0B4();
    sub_10004D518();
    sub_10004D6F8();
    sub_10004D990();
    sub_10004D8F8();
    swift_beginAccess();
    *(v1 + 120) = &_swiftEmptySetSingleton;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10033E02C(uint64_t a1)
{
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(a1 + 16);
  *v5 = v6;
  (*(v3 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v2);
  v7 = v6;
  LOBYTE(v6) = _dispatchPreconditionTest(_:)();
  result = (*(v3 + 8))(v5, v2);
  if (v6)
  {
    *(a1 + 112) = 0;

    return sub_1000166CC(0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10033E150(uint64_t a1)
{
  v2 = __chkstk_darwin(a1);
  v3 = v1;
  v5 = v4;
  v7 = v6;
  v8 = v2;
  v142 = *v6;
  v9 = v6[2];
  memcpy(__dst, v6 + 3, sizeof(__dst));
  memcpy(__src, v8, sizeof(__src));
  v10 = sub_100341E84(v8);
  v11 = &unk_10057D000;
  if (!v10)
  {
    goto LABEL_10;
  }

  v12 = v10;
  memcpy(v127, __src, sizeof(v127));
  ScreenSharingActivityManager.carPlayDidDisconnect()();
  memcpy(v126, v127, 0xA8uLL);
  memcpy(&v126[10] + 8, v7, 0xA8uLL);
  memcpy(v128, v127, sizeof(v128));
  v115 = v12;
  if (sub_100043014(v128) != 1)
  {
    memcpy(v137, &v126[10] + 8, sizeof(v137));
    if (sub_100043014(v137) != 1)
    {
      memcpy(v135, &v126[10] + 8, sizeof(v135));
      memcpy(v125, &v126[10] + 8, 0xA8uLL);
      memcpy(v140, v126, sizeof(v140));
      sub_100042F60(v8, v136);
      sub_100343100(v7, v136, &unk_1006A41A0, &qword_10057EFE0);
      v14 = sub_100400614(v140, v125);
      sub_100009A5C(v135, &unk_1006A41A0, &qword_10057EFE0);
      memcpy(v136, v126, sizeof(v136));
      v13 = sub_100009A5C(v136, &unk_1006A41A0, &qword_10057EFE0);
      if ((v14 & 1) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_8;
    }

LABEL_6:
    memcpy(v125, v126, sizeof(v125));
    sub_100042F60(v8, v140);
    sub_100343100(v7, v140, &unk_1006A41A0, &qword_10057EFE0);
    v13 = sub_100009A5C(v125, &qword_1006A61B8, &qword_100581178);
    goto LABEL_11;
  }

  memcpy(v125, &v126[10] + 8, 0xA8uLL);
  if (sub_100043014(v125) != 1)
  {
    goto LABEL_6;
  }

  memcpy(v140, v126, sizeof(v140));
  sub_100042F60(v8, v137);
  sub_100343100(v7, v137, &unk_1006A41A0, &qword_10057EFE0);
  v13 = sub_100009A5C(v140, &unk_1006A41A0, &qword_10057EFE0);
LABEL_8:
  if ((v5 & 1) == 0)
  {

LABEL_10:
    v15 = sub_100010B20(v10);
    sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_10057D690;
    memcpy(v126, v8, 0xA8uLL);
    sub_100042F60(v8, v137);
    v17 = String.init<A>(reflecting:)();
    v19 = v18;
    *(v16 + 56) = &type metadata for String;
    *(v16 + 64) = sub_100009D88();
    *(v16 + 32) = v17;
    *(v16 + 40) = v19;
    v20 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("No provider returned for descriptor %@", 38, 2, &_mh_execute_header, v15, v20, v16);

    return;
  }

LABEL_11:
  if (*(v8 + 144))
  {
    v21 = sub_100010B20(v13);
    sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_10057D690;
    v23 = *(v8 + 136);
    v24 = sub_10001E478(*(v8 + 128), v23);
    v26 = v25;
    *(v22 + 56) = &type metadata for String;
    *(v22 + 64) = sub_100009D88();
    *(v22 + 32) = v24;
    *(v22 + 40) = v26;
    v27 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("updating mic attribution to bundle %@", 37, 2, &_mh_execute_header, v21, v27, v22);

    if (v23)
    {
      v28 = String._bridgeToObjectiveC()();
    }

    else
    {
      v28 = 0;
    }

    [objc_opt_self() setCurrentAttributionKey:0 andApp:v28];

    v12 = v115;
    v11 = &unk_10057D000;
  }

  memcpy(v136, v7, sizeof(v136));
  v116 = v9;
  if (sub_100043014(v136) == 1 || (memcpy(v137, v136, sizeof(v137)), v126[0] = v142, *&v126[1] = v9, memcpy(&v126[1] + 8, __dst, 0x90uLL), sub_100042F60(v126, v135), v29 = sub_100341E84(v137), sub_100009A5C(v7, &unk_1006A41A0, &qword_10057EFE0), !v29))
  {
    sub_1002BA0C4(v124);
    v32 = 0;
  }

  else
  {
    v30 = *(v29 + 9);
    v31 = swift_retain_n();
    v30(v135, v31);
    v32 = v29;

    memcpy(v124, v135, sizeof(v124));
  }

  memcpy(v126, v124, 0xA8uLL);
  (*(v12 + 24))(v8);
  memcpy(v123, v124, sizeof(v123));
  v33 = sub_100043014(v123);
  if (v33 != 1)
  {
    v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v36 = v35;
    if (v34 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v36 == v37)
    {

      v12 = v115;
    }

    else
    {
      v39 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v12 = v115;
      if ((v39 & 1) == 0)
      {
        goto LABEL_36;
      }
    }

    (*(v12 + 72))(v129, v33);
    memcpy(v135, v129, sizeof(v135));
    v33 = sub_100043014(v135);
    if (v33 != 1)
    {
      if ((v135[0] & 0x10000000000) != 0 && (v135[6] & 0x100000000000000) != 0)
      {
        v40 = [*(v3 + 32) conversationManager];
        v41 = [v40 activeConversations];

        sub_100006AF0(0, &unk_1006A0C80, TUConversation_ptr);
        sub_10000CE3C(&unk_1006A3BB8, &unk_1006A0C80, TUConversation_ptr);
        v42 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

        v43 = sub_1002E8D04(v42);

        if (v43)
        {
          v12 = v115;
          if ([v43 state] == 3)
          {
            v110 = v43;
            v111 = v32;
            v44 = [v43 activitySessions];
            sub_100006AF0(0, &unk_1006A4820, TUConversationActivitySession_ptr);
            sub_10000CE3C(&unk_1006A2600, &unk_1006A4820, TUConversationActivitySession_ptr);
            v45 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

            if ((v45 & 0xC000000000000001) != 0)
            {
              swift_unknownObjectRetain();
              __CocoaSet.makeIterator()();
              Set.Iterator.init(_cocoa:)();
              v46 = v129[21];
              v47 = v129[22];
              v48 = v129[23];
              v49 = v129[24];
              v50 = v129[25];
            }

            else
            {
              v98 = -1 << *(v45 + 32);
              v47 = v45 + 56;
              v48 = ~v98;
              v99 = -v98;
              if (v99 < 64)
              {
                v100 = ~(-1 << v99);
              }

              else
              {
                v100 = -1;
              }

              v50 = v100 & *(v45 + 56);

              v49 = 0;
              v46 = v45;
            }

            v101 = (v48 + 64) >> 6;
            v114 = v46;
            if (v46 < 0)
            {
              goto LABEL_109;
            }

LABEL_104:
            v102 = v49;
            v103 = v50;
            v104 = v49;
            if (!v50)
            {
              while (1)
              {
                v104 = v102 + 1;
                if (__OFADD__(v102, 1))
                {
                  break;
                }

                if (v104 >= v101)
                {
                  goto LABEL_119;
                }

                v103 = *(v47 + 8 * v104);
                ++v102;
                if (v103)
                {
                  goto LABEL_108;
                }
              }

              __break(1u);
LABEL_121:
              __break(1u);
              return;
            }

LABEL_108:
            v105 = (v103 - 1) & v103;
            v106 = *(*(v46 + 48) + ((v104 << 9) | (8 * __clz(__rbit64(v103)))));
            while (v106)
            {
              v108 = [v106 clientAudioSessionID];
              if (v108)
              {
                v109 = v108;
                if ([v106 state] == 1)
                {
                  [*(v3 + 24) triggerEndInterruptionForAudioSessionID:v109];
                }
              }

              else
              {
                v109 = v106;
              }

              v49 = v104;
              v50 = v105;
              v46 = v114;
              if ((v114 & 0x8000000000000000) == 0)
              {
                goto LABEL_104;
              }

LABEL_109:
              v107 = __CocoaSet.Iterator.next()();
              if (!v107)
              {
                break;
              }

              v133[0] = v107;
              swift_dynamicCast();
              v106 = v134[0];
              v104 = v49;
              v105 = v50;
            }

LABEL_119:
            sub_100022DDC(v114);

            sub_100009A5C(v129, &unk_1006A41A0, &qword_10057EFE0);

            v12 = v115;
            v32 = v111;
            v11 = &unk_10057D000;
          }

          else
          {
            sub_100009A5C(v129, &unk_1006A41A0, &qword_10057EFE0);
          }
        }

        else
        {
          v33 = sub_100009A5C(v129, &unk_1006A41A0, &qword_10057EFE0);
          v12 = v115;
        }
      }

      else
      {
        v33 = sub_100009A5C(v129, &unk_1006A41A0, &qword_10057EFE0);
      }
    }
  }

LABEL_36:
  (*(v12 + 72))(v130, v33);

  v51 = sub_100341F00(v126, v32, v130, v12);

  sub_100009A5C(v130, &unk_1006A41A0, &qword_10057EFE0);

  if (*(v8 + 50) != 1)
  {
    if (v51 && ((*(v12 + 72))(v133, v52), memcpy(v134, v133, sizeof(v134)), sub_100043014(v134) != 1) && (*v132 = *&v134[9], sub_100343100(v132, v131, &unk_1006A61C0, &unk_100581180), sub_100009A5C(v133, &unk_1006A41A0, &qword_10057EFE0), *v132))
    {
      v55 = *&v132[8];
      ObjectType = swift_getObjectType();
      sub_10040038C(0, ObjectType, v55);

      sub_100009A5C(v124, &unk_1006A41A0, &qword_10057EFE0);
      v57 = &unk_1006A61C0;
      v58 = &unk_100581180;
      v59 = v132;
    }

    else
    {

      v57 = &unk_1006A41A0;
      v58 = &qword_10057EFE0;
      v59 = v124;
    }

    sub_100009A5C(v59, v57, v58);

    return;
  }

  if (v51)
  {
    (*(v12 + 72))(v131, v52);
    memcpy(v134, v131, sizeof(v134));
    if (sub_100043014(v134) != 1)
    {
      v138 = *&v134[9];
      sub_100343100(&v138, v133, &unk_1006A61C0, &unk_100581180);
      sub_100009A5C(v131, &unk_1006A41A0, &qword_10057EFE0);
      if (v138)
      {
        v53 = *(&v138 + 1);
        v54 = swift_getObjectType();
        sub_10040038C(1, v54, v53);
        sub_100009A5C(&v138, &unk_1006A61C0, &unk_100581180);
      }
    }

    goto LABEL_48;
  }

  memcpy(v134, v7, sizeof(v134));
  if (sub_100043014(v134) != 1)
  {
    *&v138 = v134[1];
    v131[0] = *(v8 + 8);
    v85 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v87 = v86;
    if (v85 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v87 == v88)
    {
      sub_10004B628();
      sub_10004B628();

      sub_100045B00(v131, type metadata accessor for Category);
      sub_100045B00(&v138, type metadata accessor for Category);
    }

    else
    {
      v90 = _stringCompareWithSmolCheck(_:_:expecting:)();
      sub_10004B628();
      sub_10004B628();

      sub_100045B00(v131, type metadata accessor for Category);
      sub_100045B00(&v138, type metadata accessor for Category);
      if ((v90 & 1) == 0)
      {
        goto LABEL_48;
      }
    }

    v91 = *(v8 + 16);
    if (v116)
    {
      if (v91)
      {
        v92 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v94 = v93;
        if (v92 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v94 == v95)
        {

          goto LABEL_49;
        }

        v97 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v97)
        {
          goto LABEL_49;
        }
      }
    }

    else if (!v91)
    {
      goto LABEL_49;
    }
  }

LABEL_48:
  sub_1003420A0(v12);
LABEL_49:
  swift_beginAccess();
  v60 = *(v3 + 48);
  sub_10026D814(&qword_1006A2EA0, &qword_10057CB60);
  v61 = swift_allocObject();
  *(v61 + 16) = xmmword_10057CA80;
  *(v61 + 32) = *(v3 + 40);

  v62 = sub_10033C5F4(v60, v61);

  swift_setDeallocating();
  sub_1002F5CC8();
  v63 = sub_100274238(v62);
  v64 = sub_10000B6F4(v63);
  if (v64)
  {
    v65 = v64;
    if (v64 >= 1)
    {
      v66 = 0;
      v117 = v63 & 0xC000000000000001;
      v113 = v11[105];
      v67 = &unk_1006A41A0;
      v68 = &qword_10057EFE0;
      v112 = v63;
      while (1)
      {
        if (v117)
        {
          v69 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v69 = *(v63 + 8 * v66 + 32);
        }

        if (*(v12 + 16) == v69)
        {
LABEL_73:

          goto LABEL_75;
        }

        v70 = v65;
        v71 = v68;
        v72 = v67;
        sub_100342920(v69, *v69, &protocol descriptor for AudioInterruptionPriorityProvider);

        v74 = sub_100010B20(v73);
        sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
        v75 = swift_allocObject();
        *(v75 + 16) = v113;
        v120[0] = v69;
        type metadata accessor for AVAudioSessionInterruptionProvider();

        v76 = String.init<A>(reflecting:)();
        v78 = v77;
        *(v75 + 56) = &type metadata for String;
        *(v75 + 64) = sub_100009D88();
        *(v75 + 32) = v76;
        *(v75 + 40) = v78;
        v79 = static os_log_type_t.default.getter();
        os_log(_:dso:log:type:_:)("Decreasing priority of other AVAudioSession interruption provider %@ to Default", 79, 2, &_mh_execute_header, v74, v79, v75);

        sub_1002F04D8(0);
        memmove(v121, v69 + 10, 0xA8uLL);
        if (sub_100043014(v121) == 1)
        {
          v80 = 0;
          v12 = v115;
          v67 = v72;
        }

        else
        {
          v80 = v122;
          v67 = v72;
          if (v122)
          {
            swift_unknownObjectRetain();
          }

          v12 = v115;
        }

        v68 = v71;
        (*(v12 + 72))(v132);
        memcpy(v133, v132, sizeof(v133));
        v65 = v70;
        if (sub_100043014(v133) == 1)
        {
          break;
        }

        v139 = *&v133[9];
        sub_100343100(&v139, v120, &unk_1006A61C0, &unk_100581180);
        sub_100009A5C(v132, v67, v68);
        v81 = v139;
        v63 = v112;
        if (!v80)
        {
          if (!v139)
          {
LABEL_74:

            goto LABEL_75;
          }

          goto LABEL_69;
        }

        if (!v139)
        {
          goto LABEL_69;
        }

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        if (v80 == v81)
        {
          goto LABEL_74;
        }

LABEL_70:
        memcpy(v119, v69 + 10, sizeof(v119));
        sub_100343100(v119, v118, v67, v68);

        memcpy(v120, v119, sizeof(v120));
        if (sub_100043014(v120) == 1)
        {
          goto LABEL_73;
        }

        v82 = v120[9];
        v83 = v120[10];
        swift_unknownObjectRetain();
        sub_100009A5C(v119, v67, v68);
        if (!v82)
        {
          goto LABEL_73;
        }

        v84 = swift_getObjectType();
        sub_10040038C(0, v84, v83);

        swift_unknownObjectRelease();
LABEL_75:
        if (v65 == ++v66)
        {

          goto LABEL_78;
        }
      }

      v63 = v112;
      if (!v80)
      {
        goto LABEL_74;
      }

LABEL_69:
      swift_unknownObjectRelease();
      goto LABEL_70;
    }

    goto LABEL_121;
  }

LABEL_78:

  sub_100009A5C(v124, &unk_1006A41A0, &qword_10057EFE0);
}

void sub_10033F394(uint64_t a1)
{
  v1 = a1;
  v3 = sub_100010B20(a1);
  v2 = static os_log_type_t.default.getter();
  if (v1)
  {
    os_log(_:dso:log:type:_:)("Call announcement was played", 28, 2, &_mh_execute_header, v3, v2, _swiftEmptyArrayStorage);
  }

  else
  {
    os_log(_:dso:log:type:_:)("Call announcement was not played", 32, 2, &_mh_execute_header, v3, v2, _swiftEmptyArrayStorage);
  }
}

uint64_t sub_10033F45C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AudioDescriptor(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  sub_10004B628();
  v7 = (v6 + ((*(v5 + 80) + 16) & ~*(v5 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = swift_allocObject();
  sub_10004A200();
  *(v8 + v7) = a1;

  sub_10042FC64(a2, sub_100342FB8, v8);
}

uint64_t sub_10033F5B8(uint64_t a1, uint64_t a2)
{
  v3 = sub_10026D814(&unk_1006A2B60, &qword_100581170);
  __chkstk_darwin(v3 - 8);
  v5 = &v18 - v4;
  v6 = type metadata accessor for AudioInterruptionDeferredEndDescriptor(0);
  __chkstk_darwin(v6);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AudioDescriptor(0);
  sub_100343100(a2 + *(v9 + 20), v5, &unk_1006A2B60, &qword_100581170);
  if (sub_100015468(v5, 1, v6) == 1)
  {
    return sub_100009A5C(v5, &unk_1006A2B60, &qword_100581170);
  }

  v11 = sub_10004A200();
  v12 = sub_100010B20(v11);
  sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_10057D690;
  v14 = UUID.uuidString.getter();
  v16 = v15;
  *(v13 + 56) = &type metadata for String;
  *(v13 + 64) = sub_100009D88();
  *(v13 + 32) = v14;
  *(v13 + 40) = v16;
  v17 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("Sound playback completed and we had a deferred end descriptor, so expediting end interruption for call with UUID %@", 115, 2, &_mh_execute_header, v12, v17, v13);

  sub_10033F7D4(v8);
  return sub_100045B00(v8, type metadata accessor for AudioInterruptionDeferredEndDescriptor);
}

uint64_t sub_10033F7D4(uint64_t a1)
{
  v25 = type metadata accessor for DispatchWorkItemFlags();
  v27 = *(v25 - 8);
  __chkstk_darwin(v25);
  v23 = v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for DispatchQoS();
  v24 = *(v26 - 8);
  __chkstk_darwin(v26);
  v4 = v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v9 = sub_100010B20(v8);
  sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_10057D690;
  v11 = UUID.uuidString.getter();
  v13 = v12;
  *(v10 + 56) = &type metadata for String;
  *(v10 + 64) = sub_100009D88();
  *(v10 + 32) = v11;
  *(v10 + 40) = v13;
  v14 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("callUUID: %@", 12, 2, &_mh_execute_header, v9, v14, v10);

  v15 = v22[1];
  (*(v6 + 16))(v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v5);
  v16 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = v15;
  (*(v6 + 32))(v17 + v16, v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  aBlock[4] = sub_1003416DC;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004CEC;
  aBlock[3] = &unk_100628180;
  v18 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v28 = _swiftEmptyArrayStorage;
  sub_10000EE88(&qword_1006A2CC0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_100018040(&qword_1006A2CD0, &unk_1006A2960, &unk_10057D6E0);
  v19 = v23;
  v20 = v25;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);
  (*(v27 + 8))(v19, v20);
  (*(v24 + 8))(v4, v26);
}

uint64_t sub_10033FC0C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = a2;
  v8 = type metadata accessor for AudioDescriptor(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8 - 8);
  sub_10004B628();
  v11 = (v10 + ((*(v9 + 80) + 16) & ~*(v9 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = swift_allocObject();
  sub_10004A200();
  *(v12 + v11) = a1;

  sub_10039E228(v6, a3, a4);
}

uint64_t sub_10033FD80(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v36 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v32 - v8;
  v10 = sub_10026D814(&unk_1006A2B60, &qword_100581170);
  __chkstk_darwin(v10 - 8);
  v12 = &v32 - v11;
  v13 = type metadata accessor for AudioInterruptionDeferredEndDescriptor(0);
  __chkstk_darwin(v13);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for AudioDescriptor(0);
  sub_100343100(a1 + *(v16 + 20), v12, &unk_1006A2B60, &qword_100581170);
  if (sub_100015468(v12, 1, v13) == 1)
  {
    return sub_100009A5C(v12, &unk_1006A2B60, &qword_100581170);
  }

  v35 = a2;
  sub_10004A200();
  v18 = *(v5 + 16);
  v34 = v15;
  v18(v9, v15, v4);
  if (qword_1006A0B38 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  sub_10000AF9C(v19, qword_1006BA628);
  v20 = v36;
  v18(v36, v9, v4);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v32 = v9;
    v33 = v4;
    v24 = v23;
    v25 = swift_slowAlloc();
    v37 = v25;
    *v24 = 136315138;
    v26 = UUID.uuidString.getter();
    v28 = v27;
    v29 = *(v5 + 8);
    v29(v20, v33);
    v30 = sub_10002741C(v26, v28, &v37);

    *(v24 + 4) = v30;
    _os_log_impl(&_mh_execute_header, v21, v22, "Haptic playback completed and we had a deferred end descriptor, so expediting end interruption for call with UUID %s", v24, 0xCu);
    sub_100009B7C(v25);

    v9 = v32;
    v4 = v33;
  }

  else
  {

    v29 = *(v5 + 8);
    v29(v20, v4);
  }

  v31 = v34;
  sub_10033F7D4(v9);
  v29(v9, v4);
  return sub_100045B00(v31, type metadata accessor for AudioInterruptionDeferredEndDescriptor);
}

uint64_t sub_10034015C()
{
  v0 = swift_allocObject();
  swift_weakInit();

  sub_1003A0748(sub_100342AA8, v0);
}

uint64_t sub_1003401DC(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v23 = *(v9 - 8);
  v10 = __chkstk_darwin(v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100010B20(v10);
  v14 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("speechSynthesizerEventHandler invoked", 37, 2, &_mh_execute_header, v13, v14, _swiftEmptyArrayStorage);

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v16 = result;
    v22 = *(result + 16);
    v17 = swift_allocObject();
    v17[2] = a1;
    v17[3] = a2;
    v17[4] = v16;
    aBlock[4] = sub_100342AB0;
    aBlock[5] = v17;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100004CEC;
    aBlock[3] = &unk_100628568;
    v18 = _Block_copy(aBlock);
    v21 = v9;
    v19 = v18;
    sub_100342ABC(a1);

    static DispatchQoS.unspecified.getter();
    v24 = _swiftEmptyArrayStorage;
    sub_10000EE88(&qword_1006A2CC0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
    sub_100018040(&qword_1006A2CD0, &unk_1006A2960, &unk_10057D6E0);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v19);
    (*(v6 + 8))(v8, v5);
    (*(v23 + 8))(v12, v21);
  }

  return result;
}

void sub_100340524(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  if (a1 >= 2)
  {
    if (*(*(a3 + 72) + OBJC_IVAR____TtC13callservicesd17HoldMusicProvider_activeDescriptor))
    {

      v9 = sub_100010B20(v4);
      v5 = static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)("Hold music provider speech synthesizer finished utterance, but hold music provider is no longer active, so not invoking playback continuation", 141, 2, &_mh_execute_header, v9, v5, _swiftEmptyArrayStorage);
      sub_100342AD0(a1);
    }

    else
    {

      v7 = sub_100010B20(v6);
      v8 = static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)("Hold music provider speech synthesizer finished utterance, and hold music provider is still active, so invoking playback continuation", 133, 2, &_mh_execute_header, v7, v8, _swiftEmptyArrayStorage);

      a1();

      sub_100342AD0(a1);
    }
  }
}

uint64_t sub_1003406FC()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = (&v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *(v0 + 16);
  *v4 = v5;
  (*(v2 + 104))(v4, enum case for DispatchPredicate.onQueue(_:), v1);
  v6 = v5;
  LOBYTE(v5) = _dispatchPreconditionTest(_:)();
  result = (*(v2 + 8))(v4, v1);
  if (v5)
  {
    return sub_10034080C();
  }

  __break(1u);
  return result;
}

uint64_t sub_10034080C()
{
  v0 = sub_10034183C();
  result = sub_10000B6F4(v0);
  if (result)
  {
    v2 = result;
    if (result < 1)
    {
      __break(1u);
      return result;
    }

    for (i = 0; i != v2; ++i)
    {
      if ((v0 & 0xC000000000000001) != 0)
      {
        v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v4 = *(v0 + 8 * i + 32);
      }

      (*(v4 + 56))();
    }
  }
}

uint64_t sub_1003408BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v22 - v10;
  if (*(a1 + 112))
  {

    v13 = sub_100010B20(v12);
    v14 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("Expediting deferred end interruption work item", 46, 2, &_mh_execute_header, v13, v14, _swiftEmptyArrayStorage);

    dispatch thunk of DispatchWorkItem.perform()();
    dispatch thunk of DispatchWorkItem.cancel()();
  }

  else
  {
    v16 = sub_100010B20(v9);
    sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_10057D690;
    v18 = UUID.uuidString.getter();
    v20 = v19;
    *(v17 + 56) = &type metadata for String;
    *(v17 + 64) = sub_100009D88();
    *(v17 + 32) = v18;
    *(v17 + 40) = v20;
    v21 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("Attempted to expedite deferred end interruption block prematurely, so pending the UUID %@", 89, 2, &_mh_execute_header, v16, v21, v17);

    (*(v5 + 16))(v8, a2, v4);
    swift_beginAccess();
    sub_10039653C();
    swift_endAccess();
    return (*(v5 + 8))(v11, v4);
  }
}

uint64_t sub_100340B34(uint64_t a1)
{
  v2 = sub_10034183C();
  result = sub_10000B6F4(v2);
  if (!result)
  {

LABEL_16:
    swift_beginAccess();
    sub_10026D814(&qword_1006A61F8, &unk_1005811B0);
    Dictionary._Variant.removeAll(keepingCapacity:)(0);
    return swift_endAccess();
  }

  v4 = result;
  if (result >= 1)
  {
    for (i = 0; i != v4; ++i)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v6 = *(v2 + 8 * i + 32);
      }

      (*(v6 + 72))(__src);
      memcpy(__dst, __src, 0xA8uLL);
      if (sub_100043014(__dst) == 1)
      {
        v7 = 0;
        v8 = 0;
      }

      else
      {
        v7 = __dst[9];
        v8 = __dst[10];
        swift_unknownObjectRetain();
        sub_100009A5C(__src, &unk_1006A41A0, &qword_10057EFE0);
      }

      (*(v6 + 40))(a1);
      if (v7)
      {
        ObjectType = swift_getObjectType();
        swift_unknownObjectRetain();
        sub_10040038C(0, ObjectType, v8);

        swift_unknownObjectRelease_n();
      }

      else
      {
      }
    }

    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_100340D24(uint64_t a1)
{
  if (!Notification.userInfo.getter())
  {
    v5 = 0u;
    v6 = 0u;
    return sub_100009A5C(&v5, &unk_1006A2D10, &unk_10057D940);
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  AnyHashable.init<A>(_:)();
  sub_100006600();

  sub_100006780(v4);
  if (!*(&v6 + 1))
  {
    return sub_100009A5C(&v5, &unk_1006A2D10, &unk_10057D940);
  }

  result = swift_dynamicCast();
  if (result)
  {
    if (!v4[0])
    {
      v2 = sub_100010B20(result);
      v3 = static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)("Other interruption ended so re-interrupting if necessary", 56, 2, &_mh_execute_header, v2, v3, _swiftEmptyArrayStorage);

      return sub_1000166CC(1);
    }
  }

  return result;
}

id sub_100340E58(void *a1)
{
  type metadata accessor for SiriCallAnnouncementProvider();
  v49 = a1;
  sub_1003FED74();
  v3 = v2;
  v4 = [objc_allocWithZone(type metadata accessor for DisclosureProvider()) init];
  v5 = [objc_allocWithZone(type metadata accessor for CallTranslationDisclosureProvider(0)) init];
  type metadata accessor for AudioResolver(0);
  v52 = sub_1003DFEB8();
  type metadata accessor for AudioInterruptionProviderFactory();
  v6 = swift_allocObject();
  v7 = [objc_opt_self() sharedAudioSystemController];
  v8 = [objc_opt_self() sharedInstance];
  sub_10026D814(&qword_1006A6198, &qword_100581158);
  swift_allocObject();
  v50 = sub_100341708(v6, v7, v8);
  type metadata accessor for RingtoneProvider();
  swift_allocObject();
  v9 = v3;
  v10 = sub_10034F0E0();
  type metadata accessor for SoundProvider(0);
  swift_allocObject();
  v51 = sub_10042FBFC();
  type metadata accessor for HapticProvider();
  swift_allocObject();
  sub_10039E218();
  v12 = v11;
  v38 = [objc_allocWithZone(type metadata accessor for HoldMusicProvider()) init];
  type metadata accessor for DiscoveryModeProvider();
  v37 = swift_allocObject();
  v13 = objc_opt_self();
  v46 = v4;
  v43 = v5;
  v36 = [v13 defaultCenter];
  v33 = sub_10033D148();
  v41 = [objc_allocWithZone(TUFeatureFlags) init];
  sub_10026D814(&qword_1006A61A0, &qword_100581160);
  v14 = swift_allocObject();
  *(v14 + 112) = 0;
  *(v14 + 120) = &_swiftEmptySetSingleton;
  *(v14 + 144) = 0u;
  *(v14 + 160) = 0u;
  *(v14 + 176) = 0u;
  *(v14 + 192) = 0u;
  *(v14 + 208) = 0;
  *(v14 + 16) = v33;
  *(v14 + 24) = v52;
  *(v14 + 128) = v41;
  *(v14 + 136) = sub_100050890;
  *(v14 + 32) = v50;
  *(v14 + 40) = v9;
  *(v14 + 48) = v10;
  *(v14 + 56) = v51;
  *(v14 + 64) = v12;
  *(v14 + 72) = v38;
  *(v14 + 80) = v46;
  *(v14 + 88) = v43;
  *(v14 + 96) = v37;
  *(v14 + 104) = v36;
  sub_100006890();
  v15 = swift_allocObject();
  swift_weakInit();
  v16 = &v52[OBJC_IVAR____TtC13callservicesd13AudioResolver_resolutionChangedHandler];
  v34 = *&v52[OBJC_IVAR____TtC13callservicesd13AudioResolver_resolutionChangedHandler + 8];
  v35 = *&v52[OBJC_IVAR____TtC13callservicesd13AudioResolver_resolutionChangedHandler];
  *v16 = sub_100047314;
  v16[1] = v15;
  v40 = v9;
  v45 = v46;
  v44 = v43;
  v47 = v33;

  v42 = v41;

  v39 = v38;

  v17 = v36;

  sub_1000051F8(v35, v34);
  v18 = objc_opt_self();
  v19 = [v18 mainQueue];
  sub_100006890();
  v20 = swift_allocObject();
  swift_weakInit();
  v58 = sub_1003426E4;
  v59 = v20;
  aBlock = _NSConcreteStackBlock;
  v55 = 1107296256;
  v56 = sub_1000165EC;
  ObjectType = &unk_1006281D0;
  v21 = _Block_copy(&aBlock);

  v22 = sub_100035B14();
  v24 = [v22 v23];
  _Block_release(v21);

  ObjectType = swift_getObjectType();
  aBlock = v24;
  swift_beginAccess();
  sub_100342714(&aBlock, v14 + 152);
  swift_endAccess();
  v25 = [v18 mainQueue];
  sub_100006890();
  v26 = swift_allocObject();
  swift_weakInit();

  v58 = sub_100342784;
  v59 = v26;
  aBlock = _NSConcreteStackBlock;
  v55 = 1107296256;
  v56 = sub_1000165EC;
  ObjectType = &unk_1006281F8;
  v27 = _Block_copy(&aBlock);

  v28 = sub_100035B14();
  v30 = [v28 v29];
  _Block_release(v27);

  ObjectType = swift_getObjectType();

  aBlock = v30;

  swift_beginAccess();
  sub_100342714(&aBlock, v14 + 184);
  swift_endAccess();
  *&v48[OBJC_IVAR___CSDAudioController_audioController] = v14;
  v53.receiver = v48;
  v53.super_class = type metadata accessor for CSDAudioController();
  v31 = objc_msgSendSuper2(&v53, "init");

  return v31;
}

id sub_100341674(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for CSDAudioController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void *sub_100341708(uint64_t a1, void *a2, void *a3)
{
  v4 = v3;
  v4[6] = _swiftEmptyDictionarySingleton;
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = a3;

  v7 = a2;
  v8 = a3;
  v9 = sub_1002B9F2C();

  v4[5] = v9;
  v10 = objc_allocWithZone(TUFeatureFlags);

  v11 = [v10 init];
  type metadata accessor for AVAudioClientInterruptionProvider();
  v12 = swift_allocObject();
  sub_1002BA0C4(__src);
  memcpy(v12 + 5, __src, 0xA8uLL);
  v12[2] = v11;
  v13 = swift_allocObject();
  *(v13 + 16) = v11;
  v12[3] = sub_1003430F8;
  v12[4] = v13;
  swift_unknownObjectRetain();

  v4[7] = v12;
  return v4;
}

void *sub_10034183C()
{
  v1 = v0;
  type metadata accessor for AnyAudioInterruptionProvider();
  swift_allocObject();

  sub_10033C198(v2);
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
LABEL_29:
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_beginAccess();
  v3 = *(*(v1 + 48) + 16);
  if (v3)
  {
    v25 = *(v1 + 48);

    specialized ContiguousArray.reserveCapacity(_:)();
    v4 = sub_1000057CC();
    v6 = v25;
    v7 = v4;
    v9 = v8;
    v1 = 0;
    v10 = v25 + 64;
    if ((v4 & 0x8000000000000000) == 0)
    {
      while (v7 < 1 << *(v6 + 32))
      {
        v11 = v7 >> 6;
        if ((*(v10 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
        {
          __break(1u);
LABEL_25:
          __break(1u);
LABEL_26:
          __break(1u);
LABEL_27:
          __break(1u);
LABEL_28:
          __break(1u);
          goto LABEL_29;
        }

        if (*(v6 + 36) != v9)
        {
          goto LABEL_25;
        }

        v24 = v5;
        swift_allocObject();

        sub_10033C198(v12);
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v6 = v25;
        v13 = 1 << *(v25 + 32);
        if (v7 >= v13)
        {
          goto LABEL_26;
        }

        v14 = *(v10 + 8 * v11);
        if ((v14 & (1 << v7)) == 0)
        {
          goto LABEL_27;
        }

        if (*(v25 + 36) != v9)
        {
          goto LABEL_28;
        }

        v15 = v14 & (-2 << (v7 & 0x3F));
        if (v15)
        {
          v13 = __clz(__rbit64(v15)) | v7 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v16 = v11 << 6;
          v17 = v11 + 1;
          v18 = (v25 + 72 + 8 * v11);
          while (v17 < (v13 + 63) >> 6)
          {
            v20 = *v18++;
            v19 = v20;
            v16 += 64;
            ++v17;
            if (v20)
            {
              sub_100010000(v7, v9, v24 & 1);
              v6 = v25;
              v13 = __clz(__rbit64(v19)) + v16;
              goto LABEL_17;
            }
          }

          sub_100010000(v7, v9, v24 & 1);
          v6 = v25;
        }

LABEL_17:
        if (++v1 == v3)
        {
          goto LABEL_20;
        }

        v5 = 0;
        v9 = *(v6 + 36);
        v7 = v13;
        if (v13 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_20:
  }

  v21 = sub_10027420C(_swiftEmptyArrayStorage);
  sub_100413F68(v21);
  swift_allocObject();

  sub_10033C090(v22);
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  return _swiftEmptyArrayStorage;
}

unsigned int *sub_100341BA8(unsigned int *result)
{
  if ((*(result + 5) & 1) == 0)
  {
    v2 = v1;
    if (result[1])
    {
      v3 = *(v1 + 40);
    }

    else
    {
      v4 = *result;
      swift_beginAccess();
      v5 = *(v1 + 48);
      if (!*(v5 + 16) || (v6 = sub_100007558(v4), (v7 & 1) == 0))
      {
        swift_endAccess();
        sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
        v8 = swift_allocObject();
        *(&v20 + 1) = 2;
        *(v8 + 16) = xmmword_10057D690;
        *(v8 + 56) = &type metadata for UInt32;
        *(v8 + 64) = &protocol witness table for UInt32;
        *(v8 + 32) = v4;
        sub_100006AF0(0, &qword_1006A8B60, OS_os_log_ptr);
        v9 = static OS_os_log.default.getter();
        static os_log_type_t.default.getter();
        os_log(_:dso:log:type:_:)("No existing proxy AVAudioSession interruption provider for ID %u, creating a new one", 1);

        v10 = sub_1002B9FF0(v4);
        if (v10)
        {
          v3 = v10;

          v12 = sub_100010B20(v11);
          v13 = swift_allocObject();
          *(v13 + 16) = v20;
          sub_10026D814(&unk_1006A61E0, &qword_100581198);
          v14 = Optional.debugDescription.getter();
          v16 = v15;
          *(v13 + 56) = &type metadata for String;
          *(v13 + 64) = sub_100009D88();
          *(v13 + 32) = v14;
          *(v13 + 40) = v16;
          v17 = static os_log_type_t.default.getter();
          os_log(_:dso:log:type:_:)("Created AVAudioSession interruption provider %@", 47, 2, &_mh_execute_header, v12, v17, v13);

          swift_beginAccess();
          swift_isUniquelyReferenced_nonNull_native();
          v21 = *(v2 + 48);
          sub_100379850();
          *(v2 + 48) = v21;
          swift_endAccess();
        }

        else
        {
          v18 = sub_100010B20(0);
          static os_log_type_t.error.getter();
          v19 = swift_allocObject();
          *(v19 + 16) = v20;
          *(v19 + 56) = &type metadata for UInt32;
          *(v19 + 64) = &protocol witness table for UInt32;
          *(v19 + 32) = v4;
          os_log(_:dso:log:type:_:)("Error retrieving AVAudioSession provider with ID %u", v20);

          return 0;
        }

        return v3;
      }

      v3 = *(*(v5 + 56) + 8 * v6);
      swift_endAccess();
    }

    return v3;
  }

  __break(1u);
  return result;
}

unsigned int *sub_100341E84(uint64_t a1)
{
  if (*(a1 + 5))
  {
    type metadata accessor for AnyAudioInterruptionProvider();
    swift_allocObject();

    return sub_10033C090(v1);
  }

  else
  {
    result = sub_100341BA8(a1);
    if (result)
    {
      v3 = result;
      type metadata accessor for AnyAudioInterruptionProvider();
      swift_allocObject();
      return sub_10033C198(v3);
    }
  }

  return result;
}

BOOL sub_100341F00(void *__src, uint64_t a2, const void *a3, uint64_t a4)
{
  memcpy(__dst, __src, sizeof(__dst));
  v8 = sub_100043014(__dst);
  v9 = __dst[50];
  memcpy(v23, a3, sizeof(v23));
  v10 = sub_100043014(v23);
  v11 = v10 == 1;
  if (v10 == 1)
  {
    if (v8 != 1)
    {
      v11 = 0;
    }
  }

  else if (v8 != 1)
  {
    v11 = ((v9 ^ v23[50]) & 1) == 0;
  }

  memcpy(v22, __src, sizeof(v22));
  v12 = sub_100043014(v22);
  v13 = v22[9];
  memcpy(v21, a3, sizeof(v21));
  v14 = sub_100043014(v21);
  v15 = v21[9];
  if (v14 == 1)
  {
    v15 = 0;
  }

  if (v12 == 1 || !v13)
  {
    v16 = v15 == 0;
  }

  else if (v15)
  {
    v16 = v13 == v15;
  }

  else
  {
    v16 = 0;
  }

  v17 = v16;
  if (a2)
  {
    v18 = *(a2 + 16);
    swift_unknownObjectRetain();
    if (!a4)
    {
      if (!v18)
      {
        return (v11 & v17 & 1) == 0;
      }

      goto LABEL_31;
    }
  }

  else
  {
    if (!a4)
    {
      return (v11 & v17 & 1) == 0;
    }

    v18 = 0;
  }

  v19 = *(a4 + 16);
  swift_unknownObjectRetain();
  if (!v18)
  {
    if (!v19)
    {
      return (v11 & v17 & 1) == 0;
    }

    goto LABEL_31;
  }

  if (!v19)
  {
LABEL_31:
    swift_unknownObjectRelease();
    return 1;
  }

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  result = v18 != v19;
  if ((v11 & v17 & 1) == 0)
  {
    return 1;
  }

  return result;
}

uint64_t sub_1003420A0(uint64_t a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a1 + 72))(v24, v8);
  memcpy(v25, v24, 0xA8uLL);
  result = sub_100043014(v25);
  if (result != 1)
  {
    if (v25[9])
    {
      v21 = v6;
      v12 = v25[10];
      ObjectType = swift_getObjectType();
      v19 = v3;
      v20 = v7;
      v14 = ObjectType;
      v15 = *(v12 + 8);
      swift_unknownObjectRetain();
      v16 = v15(v14, v12);
      swift_unknownObjectRelease();
      v23[4] = sub_100342968;
      v23[5] = a1;
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 1107296256;
      v23[2] = sub_100004CEC;
      v23[3] = &unk_100628360;
      v17 = _Block_copy(v23);

      static DispatchQoS.unspecified.getter();
      v22 = _swiftEmptyArrayStorage;
      sub_10000EE88(&qword_1006A2CC0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
      sub_100018040(&qword_1006A2CD0, &unk_1006A2960, &unk_10057D6E0);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v17);

      sub_100009A5C(v24, &unk_1006A41A0, &qword_10057EFE0);
      (*(v19 + 8))(v5, v2);
      (*(v20 + 8))(v10, v21);
    }

    else
    {
      return sub_100009A5C(v24, &unk_1006A41A0, &qword_10057EFE0);
    }
  }

  return result;
}

void sub_1003423FC(uint64_t a1)
{
  v1 = *(a1 + 16);
  swift_unknownObjectRetain();
  ObjectType = swift_getObjectType();
  v3 = sub_100342970(v1, ObjectType, &protocol descriptor for AudioInterruptionProvider);
  if (v3 && (v4 = sub_100342670(v3), v5))
  {
    v6 = v4;
    v7 = v5;
    sub_10026D814(&unk_1006A61D0, &qword_100581190);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10057D690;
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 40) = v9;
    *(inited + 48) = v6;
    *(inited + 56) = v7;
    isa = Dictionary.init(dictionaryLiteral:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = swift_unknownObjectRelease();
    isa = 0;
  }

  v12 = sub_100010B20(v11);
  sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_10057D6A0;
  type metadata accessor for Name(0);
  v14 = @"CSDCallAudioInterruptionPropertiesChangedNotification";
  v15 = String.init<A>(reflecting:)();
  v17 = v16;
  *(v13 + 56) = &type metadata for String;
  v18 = sub_100009D88();
  *(v13 + 64) = v18;
  *(v13 + 32) = v15;
  *(v13 + 40) = v17;
  v19 = sub_100291468(isa);
  v21 = v20;

  *(v13 + 96) = &type metadata for String;
  *(v13 + 104) = v18;
  *(v13 + 72) = v19;
  *(v13 + 80) = v21;
  v22 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("postAudioInterruptionPropertiesNotification %@ userInfo: %@", 59, 2, &_mh_execute_header, v12, v22, v13);

  v23 = [objc_opt_self() defaultCenter];
  if (isa)
  {
    sub_10003F8F8();

    isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  [v23 postNotificationName:v14 object:0 userInfo:isa];
}

uint64_t sub_100342670(void *a1)
{
  Class = object_getClass(a1);
  v3 = Class != _TtC13callservicesd33AVAudioClientInterruptionProvider || a1 == 0;
  if (v3 && (Class == _TtC13callservicesd34AVAudioSessionInterruptionProvider ? (v4 = a1 == 0) : (v4 = 1), v4))
  {
    return 0;
  }

  else
  {
    return static String._unconditionallyBridgeFromObjectiveC(_:)();
  }
}

uint64_t sub_100342714(uint64_t a1, uint64_t a2)
{
  v4 = sub_10026D814(&unk_1006A2D10, &unk_10057D940);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100342920(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_conformsToProtocol2();
  if (result)
  {
    return a1;
  }

  __break(1u);
  return result;
}

uint64_t sub_100342970(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (swift_conformsToProtocol2())
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_100342ABC(unint64_t result)
{
  if (result >= 2)
  {
  }

  return result;
}

unint64_t sub_100342AD0(unint64_t result)
{
  if (result >= 2)
  {
  }

  return result;
}

uint64_t sub_100342AE4()
{
  type metadata accessor for AudioDescriptor(0);
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 24);

  return sub_10033FC0C(v1, v4, v2, v3);
}

uint64_t sub_100342B7C(uint64_t (*a1)(void), uint64_t (*a2)(unint64_t, uint64_t))
{
  v3 = a1(0);
  sub_100005EB4(v3);
  v5 = v4;
  v7 = v6;
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = *(v2 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a2(v2 + v8, v9);
}

uint64_t sub_100342C1C()
{
  v1 = type metadata accessor for SoundDescriptor(0);
  sub_100005EB4(v1);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  type metadata accessor for AudioDescriptor(0);
  v4 = *(v0 + 16);

  return sub_10033F45C(v4, v0 + v3);
}

uint64_t sub_100342CE4()
{
  v2 = type metadata accessor for AudioDescriptor(0);
  sub_10000A880();
  v4 = v0 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  if (*(v4 + 40) != 1)
  {
  }

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  v5 = v2[5];
  v6 = type metadata accessor for AudioInterruptionDeferredEndDescriptor(0);
  if (!sub_100015468(v4 + v5, 1, v6))
  {
    type metadata accessor for UUID();
    sub_1000080D0();
    (*(v7 + 8))(v4 + v5);
  }

  v8 = v4 + v2[6];
  if (*(v8 + 8))
  {
  }

  v9 = v4 + v2[7];
  v10 = type metadata accessor for RingtoneDescriptor(0);
  if (!sub_1000171FC(v10))
  {

    v11 = *(v1 + 20);
    v12 = type metadata accessor for URL();
    if (!sub_100015FB0(v9 + v11))
    {
      sub_10000F49C();
      (*(v13 + 8))(v9 + v11, v12);
    }
  }

  v14 = v4 + v2[8];
  v15 = sub_10026D814(&unk_1006A3DC0, &qword_10057EC00);
  if (!sub_100015468(v14, 2, v15))
  {

    v16 = *(type metadata accessor for SoundDescriptor(0) + 32);
    v17 = type metadata accessor for UUID();
    if (!sub_10000FDEC(v14 + v16))
    {
      sub_10000F49C();
      (*(v18 + 8))(v14 + v16, v17);
    }
  }

  v19 = v4 + v2[9];
  v20 = *(v19 + 8);
  if (v20)
  {
  }

  v21 = v4 + v2[12];
  v22 = type metadata accessor for CallTranslationDisclosureDescriptor(0);
  if (!sub_100018204(v22))
  {

    sub_1000162C0();
    sub_1000080D0();
    (*(v23 + 8))(v21 + v19);
  }

  return _swift_deallocObject(v0);
}

uint64_t sub_100342FB8(uint64_t a1)
{
  v3 = type metadata accessor for AudioDescriptor(0);
  sub_100005EB4(v3);
  v5 = v1 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return sub_10033F5B8(a1, v5);
}

uint64_t sub_100343078(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t, uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = *(v2 + 16);
  v5 = v2 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return a2(v4, v5);
}

uint64_t sub_100343100(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_10026D814(a3, a4);
  sub_100008070();
  (*(v6 + 16))(a2, a1);
  return a2;
}

unint64_t sub_100343160()
{
  result = qword_1006A6200[0];
  if (!qword_1006A6200[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1006A6200);
  }

  return result;
}

uint64_t sub_1003431B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 sub_1003431F0(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_100343204(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

uint64_t sub_1003432B0(uint64_t a1, void *a2)
{
  v3 = sub_100009B14((a1 + 32), *(a1 + 56));
  if (a2)
  {
    v4 = a2;

    return sub_10046A8DC();
  }

  else
  {
    v6 = *v3;

    return j__swift_continuation_throwingResume(v6);
  }
}

uint64_t sub_100343320()
{
  v0 = type metadata accessor for Logger();
  sub_1002861B8(v0, qword_1006A6290);
  v1 = sub_10000AF9C(v0, qword_1006A6290);
  if (qword_1006A0B78 != -1)
  {
    swift_once();
  }

  v2 = sub_10000AF9C(v0, qword_1006BA6E8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1003433E8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  switch(a2)
  {
    case 0:
      return !a4;
    case 1:
      return a4 == 1;
    case 2:
      return a4 == 2;
    case 3:
      return a4 == 3;
    default:
      if (a4 < 4)
      {
        return 0;
      }

      if (a1 == a3 && a2 == a4)
      {
        return 1;
      }

      else
      {
        return _stringCompareWithSmolCheck(_:_:expecting:)();
      }
  }
}

unint64_t sub_100343480(char a1)
{
  result = 0xD000000000000017;
  switch(a1)
  {
    case 1:
      result = 0xD00000000000001BLL;
      break;
    case 2:
      result = 0xD00000000000001CLL;
      break;
    case 3:
      result = 0xD000000000000011;
      break;
    case 4:
      result = 0xD000000000000015;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100343520(uint64_t a1)
{
  _StringGuts.grow(_:)(136);
  sub_10000C13C();
  String.append(_:)(v2);
  v3._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v3);

  sub_10000C13C();
  String.append(_:)(v4);
  if ((a1 & &_mh_execute_header) != 0)
  {
    v5 = 1702195828;
  }

  else
  {
    v5 = 0x65736C6166;
  }

  if ((a1 & &_mh_execute_header) != 0)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  v7 = v6;
  String.append(_:)(*&v5);

  sub_10000C13C();
  String.append(_:)(v8);
  if ((a1 & 0x10000000000) != 0)
  {
    v9 = 1702195828;
  }

  else
  {
    v9 = 0x65736C6166;
  }

  if ((a1 & 0x10000000000) != 0)
  {
    v10 = 0xE400000000000000;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  v11 = v10;
  String.append(_:)(*&v9);

  sub_10000C13C();
  String.append(_:)(v12);
  if ((a1 & 0x1000000000000) != 0)
  {
    v13 = 1702195828;
  }

  else
  {
    v13 = 0x65736C6166;
  }

  if ((a1 & 0x1000000000000) != 0)
  {
    v14 = 0xE400000000000000;
  }

  else
  {
    v14 = 0xE500000000000000;
  }

  v15 = v14;
  String.append(_:)(*&v13);

  sub_10000C13C();
  v16._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v16);
  if ((a1 & 0x100000000000000) != 0)
  {
    v17 = 1702195828;
  }

  else
  {
    v17 = 0x65736C6166;
  }

  if ((a1 & 0x100000000000000) != 0)
  {
    v18 = 0xE400000000000000;
  }

  else
  {
    v18 = 0xE500000000000000;
  }

  v19 = v18;
  String.append(_:)(*&v17);

  v20._countAndFlagsBits = 10506;
  v20._object = 0xE200000000000000;
  String.append(_:)(v20);
  return 0;
}

unint64_t sub_1003436E4(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = a1[4];
  v4 = a1[5];
  v5 = a1[6];
  v6 = *a2;
  v7 = a2[4];
  v8 = a2[5];
  v9 = a2[6];
  v10 = a2[7];
  v11 = 0x100000000000000;
  if (a1[7])
  {
    v12 = 0x100000000000000;
  }

  else
  {
    v12 = 0;
  }

  v13 = v5 == 0;
  v14 = 0x1000000000000;
  if (v13)
  {
    v15 = 0;
  }

  else
  {
    v15 = 0x1000000000000;
  }

  v13 = v4 == 0;
  v16 = 0x10000000000;
  if (v13)
  {
    v17 = 0;
  }

  else
  {
    v17 = 0x10000000000;
  }

  v13 = v3 == 0;
  v18 = &_mh_execute_header;
  if (v13)
  {
    v19 = 0;
  }

  else
  {
    v19 = &_mh_execute_header;
  }

  v20 = v19 | v2 | v17 | v15;
  if (!v10)
  {
    v11 = 0;
  }

  if (!v9)
  {
    v14 = 0;
  }

  if (!v8)
  {
    v16 = 0;
  }

  if (!v7)
  {
    v18 = 0;
  }

  return sub_100049F58(v20 | v12, v18 | v6 | v16 | v14 | v11);
}

uint64_t sub_100343780()
{
  v1 = 0x100000000000000;
  if (!v0[7])
  {
    v1 = 0;
  }

  v2 = 0x1000000000000;
  if (!v0[6])
  {
    v2 = 0;
  }

  v3 = 0x10000000000;
  if (!v0[5])
  {
    v3 = 0;
  }

  v4 = &_mh_execute_header;
  if (!v0[4])
  {
    v4 = 0;
  }

  return sub_100343520(v4 | *v0 | v3 | v2 | v1);
}

uint64_t sub_100343804()
{
  sub_100006810();
  v1[35] = v0;
  type metadata accessor for ConversationCallCoordinationManager();
  sub_10000A894();
  sub_10003D434(v2, v3, v4, &protocol conformance descriptor for ConversationCallCoordinationManager);
  sub_10034B558();
  dispatch thunk of Actor.unownedExecutor.getter();
  sub_10003D4B0();
  v1[36] = v5;
  v1[37] = v6;
  v7 = sub_100286804();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_100343898(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_100007648();
  v13 = v12[35];
  v14 = *(v13 + 104);
  v12[38] = v14;
  if (v14)
  {
    sub_100009EF4();
    v30 = v15;
    v17 = v16;

    return v30(v17);
  }

  else
  {
    v19 = [objc_opt_self() telephonyWithSharePlayProvider];
    v12[39] = v19;
    v20 = *(v13 + 56);
    v12[40] = v20;
    v21 = [v19 identifier];
    if (!v21)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v21 = String._bridgeToObjectiveC()();
    }

    v12[41] = v21;
    v12[2] = v12;
    v12[7] = v12 + 34;
    v12[3] = sub_100343A6C;
    v22 = swift_continuation_init();
    v12[33] = sub_10026D814(&qword_1006A6320, &qword_1005814D0);
    v12[26] = _NSConcreteStackBlock;
    v12[27] = 1107296256;
    v12[28] = sub_100344674;
    v12[29] = &unk_1006288B0;
    v12[30] = v22;
    [v20 conversationProviderForIdentifier:v21 completionHandler:v12 + 26];

    return _swift_continuation_await(v12 + 2, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12);
  }
}

uint64_t sub_100343A6C()
{
  sub_100006810();
  sub_100005F18();
  sub_100007BC8();
  *v1 = v0;
  v3 = *(v2 + 296);
  v4 = *(v2 + 288);

  return _swift_task_switch(sub_100343B68, v4, v3);
}

uint64_t sub_100343B68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_10003DDE0();
  a21 = v26;
  a22 = v27;
  sub_10001E404();
  a20 = v22;
  v28 = *(v22 + 272);

  if (v28)
  {
    if (qword_1006A0AA8 != -1)
    {
      sub_10000A1D8(&qword_1006A0AA8);
    }

    v29 = *(v22 + 312);
    v30 = type metadata accessor for Logger();
    sub_1000075F0(v30, qword_1006A6290);
    v31 = v29;
    v32 = Logger.logObject.getter();
    static os_log_type_t.default.getter();

    v33 = sub_10000F96C();
    v34 = *(v22 + 312);
    if (v33)
    {
      sub_100005274();
      v35 = sub_10000681C();
      a11 = v35;
      *v23 = 136315138;
      v36 = [v34 identifier];
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      sub_10000C130();

      v37 = sub_10002741C(v24, v25, &a11);

      *(v23 + 4) = v37;
      sub_10000E4D4(&_mh_execute_header, v38, v39, "[CSDConversationCallCoordinationManager] Found existing TUConversationProvider with service-name: %s");
      sub_100009B7C(v35);
      sub_100005F64();
      sub_100006868();
    }

    else
    {
    }

    v65 = *(v22 + 280);
    v66 = *(v65 + 104);
    *(v65 + 104) = v28;
    v67 = v28;

    v80 = sub_100009EF4();
    v81 = v68;
    v70 = v69;
    sub_100015AB0();

    return v72(v71, v72, v73, v74, v75, v76, v77, v78, v80, v81, a11, a12, a13, a14);
  }

  else
  {
    if (qword_1006A0AA8 != -1)
    {
      sub_10000A1D8(&qword_1006A0AA8);
    }

    v40 = *(v22 + 312);
    v41 = type metadata accessor for Logger();
    *(v22 + 336) = sub_1000075F0(v41, qword_1006A6290);
    v42 = v40;
    v43 = Logger.logObject.getter();
    LOBYTE(v40) = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v43, v40))
    {
      v44 = *(v22 + 312);
      v45 = sub_100005274();
      v46 = swift_slowAlloc();
      a11 = v46;
      *v45 = 136315138;
      v47 = [v44 identifier];
      v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v50 = v49;

      v51 = sub_10002741C(v48, v50, &a11);

      *(v45 + 4) = v51;
      sub_10000B940(&_mh_execute_header, v52, v53, "[CSDConversationCallCoordinationManager] Attempting to register TUConversationProvider with service-name: %s");
      sub_100009B7C(v46);
      sub_100006868();
      sub_100005F40(v45);
    }

    v54 = *(v22 + 320);
    v55 = [*(v22 + 312) providerConfiguration];
    *(v22 + 344) = v55;
    *(v22 + 80) = v22;
    *(v22 + 120) = v22 + 272;
    *(v22 + 88) = sub_100343F0C;
    v56 = swift_continuation_init();
    *(v22 + 264) = sub_10026D814(&qword_1006A6328, &unk_1005814D8);
    *(v22 + 208) = _NSConcreteStackBlock;
    *(v22 + 216) = 1107296256;
    *(v22 + 224) = sub_100331818;
    *(v22 + 232) = &unk_1006288D8;
    *(v22 + 240) = v56;
    [v54 registerConversationProviderForConfiguration:v55 completionHandler:v22 + 208];
    sub_100015AB0();

    return _swift_continuation_await(v57, v58, v59, v60, v61, v62, v63, v64, a9, a10, a11, a12);
  }
}

uint64_t sub_100343F0C()
{
  sub_100006810();
  sub_100005F18();
  sub_100007BC8();
  *v2 = v1;
  *v2 = *v0;
  v4 = v3[14];
  *(v1 + 352) = v4;
  v5 = v3[37];
  v6 = v3[36];
  if (v4)
  {
    v7 = sub_100344418;
  }

  else
  {
    v7 = sub_100344030;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_100344030(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_1000066BC();
  v13 = v12[39];
  v12[45] = v12[34];
  v14 = [v13 identifier];
  if (!v14)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    String._bridgeToObjectiveC()();
    sub_10000667C();
  }

  v12[46] = v14;
  v15 = v12[40];
  v12[18] = v12;
  v12[19] = sub_100344188;
  v16 = swift_continuation_init();
  v12[33] = sub_10026D814(&unk_1006A6330, &unk_10057D160);
  v12[26] = _NSConcreteStackBlock;
  v12[27] = 1107296256;
  v12[28] = sub_1003432B0;
  v12[29] = &unk_100628900;
  v12[30] = v16;
  [v15 registerForCallbacksForProvider:v14 completionHandler:v12 + 26];

  return _swift_continuation_await(v12 + 18, v17, v18, v19, v20, v21, v22, v23, a9, a10, a11, a12);
}

uint64_t sub_100344188()
{
  sub_100006810();
  sub_100005F18();
  sub_100007BC8();
  *v2 = v1;
  *v2 = *v0;
  v4 = v3[22];
  *(v1 + 376) = v4;
  v5 = v3[37];
  v6 = v3[36];
  if (v4)
  {
    v7 = sub_100344540;
  }

  else
  {
    v7 = sub_1003442AC;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_1003442AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_10003DDE0();
  a21 = v26;
  a22 = v27;
  sub_10001E404();
  a20 = v22;
  v28 = *(v22 + 312);

  v29 = v28;
  v30 = Logger.logObject.getter();
  static os_log_type_t.default.getter();

  v31 = sub_10000F96C();
  v32 = *(v22 + 344);
  v33 = *(v22 + 312);
  if (v31)
  {
    sub_100005274();
    v34 = sub_10000681C();
    a11 = v34;
    *v23 = 136315138;
    v35 = [v33 identifier];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10000C130();

    v36 = sub_10002741C(v24, v25, &a11);

    *(v23 + 4) = v36;
    sub_10000E4D4(&_mh_execute_header, v37, v38, "[CSDConversationCallCoordinationManager] Successfully registered TUConversationProvider with service-name: %s");
    sub_100009B7C(v34);
    sub_100005F64();
    sub_100006868();
  }

  else
  {
  }

  v39 = *(v22 + 360);
  v40 = *(v22 + 280);
  v41 = *(v40 + 104);
  *(v40 + 104) = v39;
  v42 = v39;

  v55 = sub_100009EF4();
  v56 = v43;
  v45 = v44;
  sub_100015AB0();

  return v47(v46, v47, v48, v49, v50, v51, v52, v53, v55, v56, a11, a12, a13, a14);
}

uint64_t sub_100344418()
{
  sub_1000066BC();
  swift_willThrow();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  static os_log_type_t.error.getter();

  if (sub_10000F96C())
  {
    v2 = sub_100005274();
    v3 = swift_slowAlloc();
    *v2 = 138412290;
    swift_errorRetain();
    v4 = _swift_stdlib_bridgeErrorToNSError();
    *(v2 + 4) = v4;
    *v3 = v4;
    sub_10000E4D4(&_mh_execute_header, v5, v6, "[CSDConversationCallCoordinationManager] Failed to register TUConversationProvider due to error: %@");
    sub_1000099A4(v3, &unk_1006A2630, &qword_10057CB40);
    sub_100005F64();
    sub_100006868();
  }

  v7 = *(v0 + 344);
  v8 = *(v0 + 312);

  swift_willThrow();
  sub_100009EF4();

  return v9();
}

uint64_t sub_100344540()
{
  sub_1000066BC();
  v1 = v0[46];
  v2 = v0[45];
  swift_willThrow();

  swift_errorRetain();
  v3 = Logger.logObject.getter();
  static os_log_type_t.error.getter();

  if (sub_10000F96C())
  {
    v4 = sub_100005274();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    sub_10000E4D4(&_mh_execute_header, v7, v8, "[CSDConversationCallCoordinationManager] Failed to register TUConversationProvider due to error: %@");
    sub_1000099A4(v5, &unk_1006A2630, &qword_10057CB40);
    sub_100005F64();
    sub_100006868();
  }

  v9 = v0[43];
  v10 = v0[39];

  swift_willThrow();
  sub_100009EF4();

  return v11();
}

uint64_t sub_100344674(uint64_t a1, void *a2)
{
  v3 = *sub_100009B14((a1 + 32), *(a1 + 56));
  v4 = a2;

  return sub_10046A8C4(v3, a2);
}

void sub_1003446C0()
{
  sub_100005298(v0 + 112, v1);
  v1[3] = *(v0 + 112);
  v1[4] = sub_100344774;
  v1[5] = 0;
  v1[6] = sub_100344818;
  v1[7] = 0;
  v1[8] = sub_10034B1CC;
  v2 = v0;
  v3 = sub_1003497CC;
  v4 = 0;
  v5 = sub_1003497D4;
  v6 = 0;

  sub_1002F25F0();
}

BOOL sub_100344774(uint64_t a1)
{
  v2 = (a1 + *(sub_10026D814(&qword_1006A47F0, &qword_10057F840) + 48));
  v3 = *v2;
  v4 = &_mh_execute_header;
  if (!*(v2 + 4))
  {
    LODWORD(v4) = 0;
  }

  return sub_100344768(a1, v4 | v3);
}

uint64_t sub_100344818@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v3 = sub_10026D814(&qword_1006A47F0, &qword_10057F840);
  v4 = v3 - 8;
  v5 = __chkstk_darwin(v3);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v19 - v8;
  sub_10034B1D4(a1, &v19 - v8);
  v10 = *(v4 + 56);
  LODWORD(v4) = *&v9[v10];
  v11 = v9[v10 + 4];
  v12 = v9[v10 + 5];
  v13 = v9[v10 + 6];
  v14 = v9[v10 + 7];
  v15 = &v7[v10];
  v16 = type metadata accessor for UUID();
  v17 = *(v16 - 8);
  (*(v17 + 32))(v7, v9, v16);
  *v15 = v4;
  v15[4] = v11;
  v15[5] = v12;
  v15[6] = v13;
  v15[7] = v14;
  (*(v17 + 16))(v20, v7, v16);
  return sub_1000099A4(v7, &qword_1006A47F0, &qword_10057F840);
}

uint64_t sub_1003449A0@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  result = swift_beginAccess();
  v5 = *(a1 + 136);
  if (!*(v5 + 16))
  {
    goto LABEL_5;
  }

  sub_100021E24();
  if ((v7 & 1) == 0)
  {

LABEL_5:
    v9 = 0;
    goto LABEL_6;
  }

  v8 = *(*(v5 + 56) + 8 * v6);

  v9 = *(v8 + OBJC_IVAR___CSDConversationCallCoordinator_placeholderContainer);

LABEL_6:
  *a2 = v9;
  return result;
}

uint64_t sub_100344A58()
{
  sub_100006810();
  *(v1 + 16) = v0;
  type metadata accessor for ConversationCallCoordinationManager();
  sub_10000A894();
  sub_10003D434(v2, v3, v4, &protocol conformance descriptor for ConversationCallCoordinationManager);
  sub_10034B558();
  dispatch thunk of Actor.unownedExecutor.getter();
  sub_100006B5C();
  v5 = sub_10000FC24();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_100344AE8()
{
  sub_100006810();
  sub_1003446C0();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100344BC4(const void *a1, uint64_t a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);

  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_100344C6C;

  return sub_100344A58();
}

uint64_t sub_100344C6C()
{
  sub_1000066BC();
  sub_100005F18();
  v2 = *(v1 + 24);
  v3 = *v0;
  sub_100008060();
  *v4 = v3;

  sub_100006AF0(0, &unk_1006A6310, TUConversationActivitySessionContainer_ptr);
  sub_1002F93D0(&qword_1006A4800, &unk_1006A6310, TUConversationActivitySessionContainer_ptr, &protocol conformance descriptor for NSObject);
  sub_10000BB1C();
  isa = Set._bridgeToObjectiveC()().super.isa;

  (v2)[2](v2, isa);

  _Block_release(v2);
  v6 = *(v3 + 8);

  return v6();
}

uint64_t sub_100344E1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v8 = a4;
  type metadata accessor for ConversationCallCoordinationManager();
  v12 = swift_allocObject();
  v13 = a6;
  v14 = v12;
  sub_100345000(a1, a2, a3, v8, v13, a5, sub_100344ED4, 0);
  sub_10000667C();
  swift_getObjectType();
  sub_10034B558();
  swift_deallocPartialClassInstance();
  return v14;
}

uint64_t sub_100344ED4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for SharePlayAvailabilityHelper();
  v5 = a1;
  v10 = v4;
  v11 = &protocol witness table for SharePlayAvailabilityHelper;
  *&v9 = SharePlayAvailabilityHelper.__allocating_init()();
  v6 = type metadata accessor for SharePlayTelephonyIdentityProvider();
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  result = sub_10002F0C8(&v9, v7 + 24);
  a2[3] = v6;
  a2[4] = &off_10062D498;
  *a2 = v7;
  return result;
}

id sub_100345000(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  sub_1000083C0();
  v37 = v14;
  v38 = v13;
  __chkstk_darwin(v13);
  sub_100007FDC();
  v36 = v16 - v15;
  v17 = type metadata accessor for OS_dispatch_queue_serial.Attributes();
  __chkstk_darwin(v17);
  sub_100007FDC();
  v18 = type metadata accessor for DispatchQoS();
  v19 = sub_100007BF0(v18);
  __chkstk_darwin(v19);
  sub_100007FDC();
  *(v8 + 16) = 2;
  type metadata accessor for OperationManager();
  swift_allocObject();
  *(v8 + 24) = OperationManager.init()();
  swift_unknownObjectWeakInit();
  *(v8 + 104) = 0;
  type metadata accessor for UUID();
  sub_1000084F8();
  sub_10003D434(v20, 255, v21, &protocol conformance descriptor for UUID);
  sub_10000BB1C();
  *(v8 + 112) = Dictionary.init(dictionaryLiteral:)();
  sub_10000BB1C();
  *(v8 + 120) = Dictionary.init(dictionaryLiteral:)();
  *(v8 + 128) = &_swiftEmptySetSingleton;
  type metadata accessor for ConversationCallCoordinator(0);
  sub_10000BB1C();
  v22 = a5;
  *(v8 + 136) = Dictionary.init(dictionaryLiteral:)();
  *(v8 + 40) = a1;
  *(v8 + 48) = a2;
  *(v8 + 80) = a4;
  objc_opt_self();
  sub_10000D35C();
  v23 = swift_dynamicCastObjCClass();
  if (v23)
  {
    v24 = v23;
    swift_unknownObjectRetain();

    v25 = a5;
  }

  else
  {
    sub_100006AF0(0, &unk_1006A6340, OS_dispatch_queue_serial_ptr);
    swift_unknownObjectRetain();

    static DispatchQoS.unspecified.getter();
    v44 = _swiftEmptyArrayStorage;
    sub_10003D434(&unk_1006AB110, 255, &type metadata accessor for OS_dispatch_queue_serial.Attributes, &protocol conformance descriptor for OS_dispatch_queue_serial.Attributes);
    sub_10026D814(&qword_1006A6350, &qword_100586EE0);
    sub_10034B2F8();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    (*(v37 + 104))(v36, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v38);
    v22 = a5;
    v24 = OS_dispatch_queue_serial.init(label:qos:attributes:autoreleaseFrequency:target:)();
  }

  *(v8 + 32) = v24;
  *(v8 + 88) = a6;
  *(v8 + 64) = a7;
  *(v8 + 72) = a8;
  swift_unknownObjectWeakAssign();
  v26 = objc_allocWithZone(TUConversationProviderManager);
  v27 = v24;
  swift_unknownObjectRetain();

  v9[7] = [v26 init];
  v43.receiver = v9;
  v43.super_class = type metadata accessor for ConversationCallCoordinationManager();
  v28 = objc_msgSendSuper2(&v43, "init");
  v29 = qword_1006A0AA8;
  v30 = v28;
  if (v29 != -1)
  {
    sub_10000A1D8(&qword_1006A0AA8);
  }

  v31 = type metadata accessor for Logger();
  sub_1000075F0(v31, qword_1006A6290);
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&_mh_execute_header, v32, v33, "[CSDConversationCallCoordinationManager] Initialized Conversation Call Coordinator Manager", v34, 2u);
    sub_100006868();
  }

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return v30;
}

uint64_t sub_1003454B8()
{
  sub_100006810();
  sub_1003A1B00(2);
  v1 = swift_task_alloc();
  *(v0 + 344) = v1;
  *v1 = v0;
  sub_100015FC8(v1);

  return sub_100347960();
}

uint64_t sub_10034554C()
{
  sub_100006810();
  sub_10000D68C();
  v2 = *v1;
  sub_100008060();
  *v3 = v2;

  sub_100008DAC();
  v5 = *(v4 + 328);
  v6 = *(v0 + 320);

  return _swift_task_switch(sub_100053178, v6, v5);
}

uint64_t sub_100345658()
{
  sub_100006810();
  sub_10000D68C();
  v2 = *v1;
  sub_100008060();
  *v3 = v2;

  sub_100008DAC();
  v5 = *(v4 + 328);
  v6 = *(v0 + 320);

  return _swift_task_switch(sub_100053178, v6, v5);
}

uint64_t sub_100345764()
{
  sub_100006810();
  sub_10027F624();
  v1 = *(v0 + 320);
  v2 = *(v0 + 328);

  return _swift_task_switch(sub_1003457C4, v1, v2);
}

uint64_t sub_1003457C4()
{
  sub_1000066BC();

  v0 = sub_100010078();
  v1(v0);
  sub_100035E24();

  sub_100009EF4();

  return v2();
}

uint64_t sub_100345870()
{
  sub_100006810();
  sub_1003A1B00(1);
  v1 = swift_task_alloc();
  *(v0 + 384) = v1;
  *v1 = v0;
  sub_100015FC8(v1);

  return sub_1003465E4();
}

uint64_t sub_100345900()
{
  sub_100006810();
  sub_10000D68C();
  v2 = *v1;
  sub_100008060();
  *v3 = v2;

  sub_100008DAC();
  v5 = *(v4 + 328);
  v6 = *(v0 + 320);

  return _swift_task_switch(sub_100345A0C, v6, v5);
}

uint64_t sub_100345A0C()
{
  sub_1000066BC();
  v0 = sub_100010078();
  v1(v0);
  sub_100035E24();

  sub_100009EF4();

  return v2();
}

uint64_t sub_100345AB0()
{
  sub_100006810();
  sub_10000D68C();
  v2 = *v1;
  sub_100008060();
  *v3 = v2;

  sub_100008DAC();
  v5 = *(v4 + 328);
  v6 = *(v0 + 320);

  return _swift_task_switch(sub_100053178, v6, v5);
}

uint64_t sub_100345BBC()
{
  sub_100006810();
  sub_10000D68C();
  v2 = *v1;
  sub_100008060();
  *v3 = v2;

  sub_100008DAC();
  v5 = *(v4 + 328);
  v6 = *(v0 + 320);

  return _swift_task_switch(sub_100053178, v6, v5);
}

uint64_t sub_100345CC8()
{
  sub_100006810();
  sub_10027F194();
  v1 = *(v0 + 320);
  v2 = *(v0 + 328);

  return _swift_task_switch(sub_100345D28, v1, v2);
}

uint64_t sub_100345D28()
{
  sub_1000066BC();

  v0 = sub_100010078();
  v1(v0);
  sub_100035E24();

  sub_100009EF4();

  return v2();
}

uint64_t sub_100345DD4()
{
  sub_100006810();
  v1[6] = v2;
  v1[7] = v0;
  v1[5] = v3;
  v4 = type metadata accessor for DispatchPredicate();
  v1[8] = v4;
  sub_100005EB4(v4);
  v1[9] = v5;
  v1[10] = sub_100005E9C();
  type metadata accessor for ConversationCallCoordinationManager();
  sub_10000A894();
  sub_10003D434(v6, v7, v8, &protocol conformance descriptor for ConversationCallCoordinationManager);
  sub_10034B558();
  dispatch thunk of Actor.unownedExecutor.getter();
  sub_10003D4B0();
  v1[11] = v9;
  v1[12] = v10;
  v11 = sub_100286804();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_100345EB8()
{
  sub_10000C698();
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  v4 = *(v0[7] + 32);
  *v1 = v4;
  (*(v2 + 104))(v1, enum case for DispatchPredicate.onQueue(_:), v3);
  v5 = v4;
  LOBYTE(v4) = _dispatchPreconditionTest(_:)();
  v6 = sub_100005ED0();
  result = v7(v6);
  if (v4)
  {
    sub_100005298(v0[7] + 136, (v0 + 2));
    sub_10034B57C();
    v9 = sub_100005ED0();
    v11 = sub_10004A1E8(v9, v10);
    v0[13] = v11;

    if (v11)
    {
      v12 = swift_task_alloc();
      v0[14] = v12;
      *v12 = v0;
      v12[1] = sub_10034602C;
      sub_10000795C(v0[5]);

      return sub_10027C1B4();
    }

    else
    {
      type metadata accessor for ActivitySessionCreationRequestResult(0);
      sub_1002F16C4();

      v13 = sub_10028686C();

      return v14(v13);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10034602C()
{
  sub_10000C698();
  v3 = v2;
  sub_100005F18();
  v5 = v4;
  sub_100007BC8();
  *v6 = v5;
  v7 = *v1;
  sub_100008060();
  *v8 = v7;
  v5[15] = v0;

  if (v0)
  {
    v9 = v5[11];
    v10 = v5[12];
    v11 = sub_1003461A4;
  }

  else
  {
    v5[16] = v3;
    v9 = v5[11];
    v10 = v5[12];
    v11 = sub_100346140;
  }

  return _swift_task_switch(v11, v9, v10);
}

uint64_t sub_100346140()
{
  sub_100006810();

  v0 = sub_10028686C();

  return v1(v0);
}

uint64_t sub_1003461A4()
{
  sub_100006810();

  sub_100009EF4();

  return v0();
}

uint64_t sub_1003462A8(void *a1, uint64_t a2, const void *a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v7 = type metadata accessor for UUID();
  v4[4] = v7;
  v4[5] = *(v7 - 8);
  v4[6] = swift_task_alloc();
  v4[7] = _Block_copy(a3);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = a1;

  v9 = swift_task_alloc();
  v4[8] = v9;
  *v9 = v4;
  v9[1] = sub_1003463EC;

  return sub_100345DD4();
}

uint64_t sub_1003463EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10000F984();
  sub_100007648();
  v12 = v10;
  v14 = v13;
  v15 = *v11;
  v16 = *v11;
  sub_100008060();
  *v17 = v16;
  *v17 = *v11;

  v18 = v15[7];
  v19 = v15[2];
  (*(v15[5] + 8))(v15[6], v15[4]);

  if (v12)
  {
    v20 = _convertErrorToNSError(_:)();

    (v18)[2](v18, 0, v20);

    _Block_release(v18);
  }

  else
  {
    (v18)[2](v18, v14, 0);
    _Block_release(v18);
  }

  sub_10001AB70();

  return v22(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10);
}

uint64_t sub_1003465E4()
{
  sub_100006810();
  v1[23] = v2;
  v1[24] = v0;
  v3 = sub_10026D814(&qword_1006A3C70, &unk_10057EA80);
  sub_100007BF0(v3);
  v1[25] = sub_100005E9C();
  v4 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  sub_100007BF0(v4);
  v1[26] = sub_100015418();
  v1[27] = swift_task_alloc();
  v5 = type metadata accessor for UUID();
  v1[28] = v5;
  sub_100005EB4(v5);
  v1[29] = v6;
  v1[30] = *(v7 + 64);
  v1[31] = sub_100015418();
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  type metadata accessor for ConversationCallCoordinationManager();
  sub_10000A894();
  sub_10003D434(v8, v9, v10, &protocol conformance descriptor for ConversationCallCoordinationManager);
  sub_10034B558();
  dispatch thunk of Actor.unownedExecutor.getter();
  sub_10003D4B0();
  v1[36] = v11;
  v1[37] = v12;
  v13 = sub_100286804();

  return _swift_task_switch(v13, v14, v15);
}

uint64_t sub_100346760(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_10003DDE0();
  a21 = v23;
  a22 = v24;
  sub_10001E404();
  a20 = v22;
  [*(v22 + 184) callUUID];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_10034B594();
  sub_1000276D0();

  v25 = sub_10000EA40();
  if (v28)
  {
    __break(1u);
    return _swift_task_switch(v25, v26, v27);
  }

  v29 = *(v22 + 280);
  v30 = *(v22 + 224);
  v31 = *(v22 + 232);
  v32 = *(v22 + 216);
  v33 = *(v22 + 192);
  v34 = *(v31 + 32);
  *(v22 + 304) = v34;
  *(v22 + 312) = (v31 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v34(v29, v32, v30);
  sub_100005298(v33 + 136, v22 + 136);
  sub_10034B57C();
  v35 = sub_100005ED0();
  sub_10004A1E8(v35, v36);
  sub_10000667C();

  if (!v29)
  {
    v54 = sub_1003D0EC4();
    *(v22 + 320) = v54;
    if (v54)
    {
      v55 = v54;
      v56 = [*(v22 + 184) handle];
      *(v22 + 328) = v56;
      if (v56)
      {
        *(v22 + 336) = *(*(v22 + 192) + 48);
        sub_100015AB0();

        return _swift_task_switch(v25, v26, v27);
      }
    }

    if (qword_1006A0AA8 != -1)
    {
      sub_10000A1D8(&qword_1006A0AA8);
    }

    v67 = type metadata accessor for Logger();
    sub_10000AF9C(v67, qword_1006A6290);
    v68 = sub_10000F6DC();
    v69(v68);
    v70 = Logger.logObject.getter();
    static os_log_type_t.error.getter();
    sub_10003DBD0();
    v72 = os_log_type_enabled(v70, v71);
    v73 = *(v22 + 280);
    v74 = *(v22 + 248);
    v76 = *(v22 + 224);
    v75 = *(v22 + 232);
    if (v72)
    {
      sub_100005274();
      a10 = v73;
      a9 = sub_100021F34();
      a11 = a9;
      *v73 = 136315138;
      sub_1000084F8();
      sub_10003D434(v77, 255, v78, &protocol conformance descriptor for UUID);
      sub_100051630();
      sub_10002F75C();
      v79 = *(v75 + 8);
      v80 = sub_10000BA34();
      v81 = v79(v80);
      sub_10003EB64(v81, v82, v83, v84);
      sub_10000771C();

      *(v73 + 4) = v74;
      sub_10000FA74();
      _os_log_impl(v85, v86, v87, v88, v89, 0xCu);
      sub_10000E764();
      sub_1000079DC();

      (v79)(v73, v76);
    }

    else
    {

      v90 = *(v75 + 8);
      v91 = sub_10000BA34();
      v90(v91);
      (v90)(v73, v76);
    }

    goto LABEL_13;
  }

  if (qword_1006A0AA8 != -1)
  {
    sub_10000A1D8(&qword_1006A0AA8);
  }

  v37 = *(v22 + 184);
  v38 = type metadata accessor for Logger();
  sub_1000075F0(v38, qword_1006A6290);
  v39 = v37;
  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.error.getter();

  v42 = os_log_type_enabled(v40, v41);
  v43 = *(v22 + 280);
  v45 = *(v22 + 224);
  v44 = *(v22 + 232);
  if (v42)
  {
    v46 = *(v22 + 184);
    a10 = *(v22 + 280);
    v47 = sub_100007C08();
    a11 = sub_100007630();
    *v47 = 136315394;
    *(v47 + 4) = sub_10002741C(0xD000000000000030, 0x800000010056D2F0, &a11);
    *(v47 + 12) = 2080;
    v48 = [v46 callUUID];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10002F75C();

    v53 = sub_10003EB64(v49, v50, v51, v52);

    *(v47 + 14) = v53;
    _os_log_impl(&_mh_execute_header, v40, v41, "[CSDConversationCallCoordinationManager] Bad API usage – %s called for existing call with callUUID: %s", v47, 0x16u);
    swift_arrayDestroy();
    sub_1000079DC();
    sub_100005F64();

    (*(v44 + 8))(a10, v45);
  }

  else
  {

    (*(v44 + 8))(v43, v45);
  }

LABEL_13:
  sub_10000D470();

  sub_100009EF4();
  sub_100015AB0();

  return v59(v58, v59, v60, v61, v62, v63, v64, v65, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_100346BD8()
{
  sub_100006810();
  sub_1003A1CFC(*(v0 + 328), *(v0 + 320));
  v1 = *(v0 + 288);
  v2 = *(v0 + 296);

  return _swift_task_switch(sub_100346C3C, v1, v2);
}

uint64_t sub_100346C3C()
{
  sub_100006810();
  (*(v0[24] + 64))(v0[23]);
  sub_100009B14(v0 + 2, v0[5]);
  v1 = swift_task_alloc();
  v0[43] = v1;
  *v1 = v0;
  v1[1] = sub_100346CE8;

  return sub_1003D10BC();
}

uint64_t sub_100346CE8()
{
  sub_100006810();
  sub_10000D68C();
  sub_100007BC8();
  *v3 = v2;
  v4 = *v1;
  sub_100007BC8();
  *v5 = v4;
  *(v7 + 408) = v6;

  sub_100008DAC();
  v9 = *(v8 + 296);
  v10 = *(v0 + 288);

  return _swift_task_switch(sub_100346DFC, v10, v9);
}

uint64_t sub_100346DFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_10003DDE0();
  a21 = v24;
  a22 = v25;
  sub_10001E404();
  a20 = v22;
  if (*(v22 + 408) == 1)
  {
    v26 = swift_task_alloc();
    *(v22 + 352) = v26;
    *v26 = v22;
    v26[1] = sub_1003470D0;
    sub_100015AB0();

    return sub_100343804();
  }

  else
  {
    if (qword_1006A0AA8 != -1)
    {
      sub_10000A1D8(&qword_1006A0AA8);
    }

    v29 = *(v22 + 224);
    v30 = type metadata accessor for Logger();
    sub_10000AF9C(v30, qword_1006A6290);
    v31 = sub_10000F6DC();
    v32(v31);
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.default.getter();
    v35 = sub_10000BA5C(v34);
    v36 = *(v22 + 232);
    if (v35)
    {
      sub_100005274();
      a10 = sub_10000681C();
      a11 = a10;
      *v23 = 136315138;
      sub_1000084F8();
      sub_10003D434(v37, 255, v38, &protocol conformance descriptor for UUID);
      sub_10000D35C();
      v39 = dispatch thunk of CustomStringConvertible.description.getter();
      HIDWORD(a9) = v29;
      v41 = v40;
      v42 = *(v36 + 8);
      v43 = sub_100006B3C();
      v42(v43);
      v44 = sub_10002741C(v39, v41, &a11);

      *(v23 + 4) = v44;
      _os_log_impl(&_mh_execute_header, v33, BYTE4(a9), "[CSDConversationCallCoordinationManager] Not adding CallCoordinator because the callee(s) has no SharePlay capable endpoint, callUUID: %s", v23, 0xCu);
      sub_10000E764();
      sub_100006868();
    }

    else
    {

      v42 = *(v36 + 8);
      v45 = sub_100006B3C();
      v42(v45);
    }

    v47 = *(v22 + 320);
    v46 = *(v22 + 328);
    v48 = *(v22 + 192);
    sub_100008D34(v48 + 120, v22 + 160);
    swift_isUniquelyReferenced_nonNull_native();
    a11 = *(v48 + 120);
    sub_100379BB4();
    *(v48 + 120) = a11;
    swift_endAccess();

    v49 = sub_100007624();
    v42(v49);
    sub_100009B7C((v22 + 16));
    sub_10000D470();

    sub_100009EF4();
    sub_100015AB0();

    return v51(v50, v51, v52, v53, v54, v55, v56, v57, a9, a10, a11, a12, a13, a14);
  }
}

uint64_t sub_1003470D0()
{
  sub_10000C698();
  sub_100005F18();
  v3 = v2;
  sub_100007BC8();
  *v4 = v3;
  *v4 = *v1;
  v3[45] = v5;

  if (v0)
  {

    v6 = v3[36];
    v7 = v3[37];
    v8 = sub_1003477B4;
  }

  else
  {
    v6 = v3[36];
    v7 = v3[37];
    v8 = sub_1003471EC;
  }

  return _swift_task_switch(v8, v6, v7);
}

uint64_t sub_1003471EC()
{
  v25 = *(v0 + 304);
  v2 = *(v0 + 272);
  v1 = *(v0 + 280);
  v22 = v2;
  v23 = v1;
  v4 = *(v0 + 232);
  v3 = *(v0 + 240);
  v5 = *(v0 + 224);
  v26 = *(v0 + 208);
  v27 = *(v0 + 360);
  v24 = *(v0 + 184);
  v6 = swift_allocObject();
  *(v0 + 368) = v6;
  swift_weakInit();
  v7 = *(v4 + 16);
  v7(v2, v1, v5);
  sub_100009AB0(v0 + 16, v0 + 56);
  v8 = sub_10000BA34();
  (v7)(v8);
  sub_100009AB0(v0 + 56, v0 + 96);
  v9 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v10 = (v3 + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 15) & 0xFFFFFFFFFFFFFFF8;
  v12 = swift_allocObject();
  *(v0 + 376) = v12;
  *(v12 + 16) = v6;
  v25(v12 + v9, v22, v5);
  *(v12 + v10) = v24;
  sub_10002F0C8((v0 + 56), v12 + v11);
  *(v12 + ((v11 + 47) & 0xFFFFFFFFFFFFFFF8)) = v27;
  v7(v26, v23, v5);
  v13 = 1;
  sub_10000AF74(v26, 0, 1, v5);
  v14 = v24;

  v15 = v27;
  v16 = [v14 dateConnected];
  if (v16)
  {
    v17 = v16;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v13 = 0;
  }

  v18 = *(v0 + 336);
  v19 = *(v0 + 200);
  v20 = type metadata accessor for Date();
  sub_10000AF74(v19, v13, 1, v20);

  return _swift_task_switch(sub_10034742C, v18, 0);
}

uint64_t sub_10034742C()
{
  sub_10000C698();
  v2 = *(v0 + 200);
  v1 = *(v0 + 208);
  sub_1003A39E4(*(v0 + 328), v1, v2, &unk_1005814A0, *(v0 + 376));

  sub_1000099A4(v2, &qword_1006A3C70, &unk_10057EA80);
  sub_1000099A4(v1, &unk_1006A3DD0, &unk_10057C9D0);
  v3 = *sub_100009B14((v0 + 96), *(v0 + 120));
  v4 = swift_task_alloc();
  *(v0 + 384) = v4;
  *v4 = v0;
  v4[1] = sub_100347550;
  v5 = sub_10000795C(*(v0 + 280));

  return sub_10034A134(v5, v6, v7, v8, v9, v3, v10);
}

uint64_t sub_100347550()
{
  sub_10000F984();
  sub_100007648();
  sub_10000D68C();
  sub_100008060();
  *v2 = v0;
  v3 = v0[33];
  v4 = v0[29];
  v5 = v0[28];
  *v2 = *v1;

  v6 = *(v4 + 8);
  v0[49] = v6;
  v0[50] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v3, v5);
  sub_100009B7C(v0 + 12);
  sub_100008DAC();
  sub_10001AB70();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_1003476E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10000F984();
  sub_100007648();
  v11 = *(v10 + 392);
  v12 = *(v10 + 360);
  v13 = *(v10 + 320);

  v14 = sub_100007624();
  v11(v14);
  sub_100009B7C((v10 + 16));
  sub_10000D470();

  sub_100009EF4();
  sub_10001AB70();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10);
}

uint64_t sub_1003477B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10000F984();
  sub_100007648();
  v11 = *(v10 + 320);

  v12 = sub_100005ED0();
  v13(v12);
  sub_100009B7C((v10 + 16));
  sub_10000D470();

  sub_100009EF4();
  sub_10001AB70();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10);
}

uint64_t sub_100347878(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7)
{
  v12 = a2;
  v14 = *sub_100009B14(a6, a6[3]);
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_100035FE4;

  return sub_10034A134(a1, v12 & 0x1FF, a3, a4, a5, v14, a7);
}

uint64_t sub_100347960()
{
  sub_100006810();
  *(v1 + 345) = v2;
  *(v1 + 88) = v3;
  *(v1 + 96) = v0;
  v4 = sub_10026D814(&qword_1006A5310, &qword_10057D580);
  sub_100007BF0(v4);
  *(v1 + 104) = sub_100005E9C();
  v5 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  sub_100007BF0(v5);
  *(v1 + 112) = sub_100005E9C();
  v6 = type metadata accessor for UUID();
  *(v1 + 120) = v6;
  sub_100005EB4(v6);
  *(v1 + 128) = v7;
  *(v1 + 136) = *(v8 + 64);
  *(v1 + 144) = sub_100015418();
  *(v1 + 152) = swift_task_alloc();
  *(v1 + 160) = swift_task_alloc();
  *(v1 + 168) = swift_task_alloc();
  *(v1 + 176) = swift_task_alloc();
  *(v1 + 184) = swift_task_alloc();
  *(v1 + 192) = swift_task_alloc();
  *(v1 + 200) = swift_task_alloc();
  *(v1 + 208) = swift_task_alloc();
  *(v1 + 216) = swift_task_alloc();
  type metadata accessor for ConversationCallCoordinationManager();
  sub_10000A894();
  *(v1 + 224) = sub_10003D434(v9, v10, v11, &protocol conformance descriptor for ConversationCallCoordinationManager);
  dispatch thunk of Actor.unownedExecutor.getter();
  sub_10003D4B0();
  *(v1 + 232) = v12;
  *(v1 + 240) = v13;
  v14 = sub_100286804();

  return _swift_task_switch(v14, v15, v16);
}

uint64_t sub_100347B18()
{
  v137 = v0;
  v2 = [*(v0 + 88) callUUID];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_10034B594();
  sub_1000276D0();

  v3 = sub_10000EA40();
  if (v6)
  {
    __break(1u);
    return _swift_task_switch(v3, v4, v5);
  }

  else
  {
    v131 = *(*(v0 + 128) + 32);
    v131(*(v0 + 216), *(v0 + 112), *(v0 + 120));
    if (qword_1006A0AA8 != -1)
    {
      sub_10000A1D8(&qword_1006A0AA8);
    }

    v8 = *(v0 + 208);
    v7 = *(v0 + 216);
    v10 = *(v0 + 120);
    v9 = *(v0 + 128);
    v11 = type metadata accessor for Logger();
    v12 = sub_10000AF9C(v11, qword_1006A6290);
    *(v0 + 248) = v12;
    v13 = *(v9 + 16);
    *(v0 + 256) = v13;
    *(v0 + 264) = (v9 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v13(v8, v7, v10);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    v16 = os_log_type_enabled(v14, v15);
    v17 = *(v0 + 208);
    v18 = *(v0 + 128);
    if (v16)
    {
      v132 = v15;
      v19 = *(v0 + 345);
      v1 = sub_100007C08();
      v136 = sub_100007630();
      *v1 = 136315394;
      *(v0 + 344) = v19;
      v20 = String.init<A>(reflecting:)();
      v133 = v13;
      v22 = sub_10002741C(v20, v21, &v136);

      *(v1 + 4) = v22;
      *(v1 + 12) = 2080;
      sub_1000084F8();
      sub_10003D434(v23, 255, v24, &protocol conformance descriptor for UUID);
      v25 = v12;
      v26 = dispatch thunk of CustomStringConvertible.description.getter();
      v28 = v27;
      v29 = *(v18 + 8);
      v30 = sub_10034B570();
      v29(v30);
      v31 = v26;
      v12 = v25;
      sub_10002741C(v31, v28, &v136);
      sub_10000771C();
      v13 = v133;

      *(v1 + 14) = v17;
      _os_log_impl(&_mh_execute_header, v14, v132, "[CSDConversationCallCoordinationManager] removeCallCoordinator(), reason: %s, callUUID: %s", v1, 0x16u);
      swift_arrayDestroy();
      sub_100007CBC();
      sub_100005F64();
    }

    else
    {

      v29 = *(v18 + 8);
      v32 = sub_10034B570();
      v29(v32);
    }

    *(v0 + 272) = v29;
    sub_100005298(*(v0 + 96) + 136, v0 + 16);

    v33 = sub_10000BA34();
    v35 = sub_10004A1E8(v33, v34);

    if (v35)
    {
      v36 = *(v0 + 96);
      sub_100005298(v36 + 128, v0 + 40);

      sub_10000BA34();
      sub_100050618();
      v38 = v37;

      v39 = *(v0 + 216);
      v40 = *(v0 + 120);
      if (v38)
      {
        v13(*(v0 + 200), v39, v40);
        v41 = Logger.logObject.getter();
        static os_log_type_t.default.getter();
        sub_10003DBD0();
        v43 = os_log_type_enabled(v41, v42);
        v44 = *(v0 + 200);
        v29 = *(v0 + 120);
        if (v43)
        {
          sub_100005274();
          v45 = sub_100021F34();
          sub_10034B564(v45);
          *v12 = 136315138;
          sub_1000084F8();
          sub_10003D434(v46, 255, v47, &protocol conformance descriptor for UUID);
          v48 = v13;
          v49 = dispatch thunk of CustomStringConvertible.description.getter();
          v51 = v50;
          v52 = sub_10001C9D0();
          v29(v52);
          v53 = v49;
          v13 = v48;
          sub_10002741C(v53, v51, &v136);
          sub_10000667C();

          *(v12 + 4) = v44;
          _os_log_impl(&_mh_execute_header, v41, v1, "[CSDConversationCallCoordinationManager] CallCoordinator already removing, callUUID: %s", v12, 0xCu);
          sub_10000E764();
          sub_100005F40(v12);
        }

        else
        {

          v66 = sub_10001C9D0();
          v29(v66);
        }
      }

      else
      {
        v130 = v35;
        v134 = v13;
        v13(*(v0 + 192), v39, v40);
        v54 = Logger.logObject.getter();
        static os_log_type_t.default.getter();
        sub_10003DBD0();
        v56 = os_log_type_enabled(v54, v55);
        v57 = *(v0 + 192);
        v129 = v36;
        if (v56)
        {
          sub_100005274();
          v58 = sub_100021F34();
          v136 = v58;
          *v12 = 136315138;
          sub_1000084F8();
          sub_10003D434(v59, 255, v60, &protocol conformance descriptor for UUID);
          v61 = dispatch thunk of CustomStringConvertible.description.getter();
          v63 = v62;
          v64 = sub_10000C444();
          v65(v64);
          sub_10002741C(v61, v63, &v136);
          sub_10000771C();

          *(v12 + 4) = v57;
          _os_log_impl(&_mh_execute_header, v54, v1, "[CSDConversationCallCoordinationManager] Scheduling CallCoordinator tear down for callUUID: %s", v12, 0xCu);
          sub_100009B7C(v58);
          sub_100005F40(v58);
          sub_1000079DC();
        }

        else
        {

          v67 = sub_10000C444();
          v68(v67);
        }

        v69 = *(v0 + 216);
        v70 = *(v0 + 184);
        v124 = *(v0 + 128);
        v125 = *(v0 + 136);
        v71 = *(v0 + 120);
        v73 = *(v0 + 96);
        v72 = *(v0 + 104);
        v126 = *(v0 + 345);
        v127 = *(v0 + 88);
        v128 = *(v0 + 224);
        v13 = v134;
        v134(*(v0 + 176), v69, v71);
        sub_100008D34(v129 + 128, v0 + 64);
        sub_10039653C();
        (v29)(v70, v71);
        swift_endAccess();
        v74 = type metadata accessor for TaskPriority();
        sub_10000AF74(v72, 1, 1, v74);
        v134(v70, v69, v71);
        v75 = (*(v124 + 80) + 56) & ~*(v124 + 80);
        v76 = swift_allocObject();
        *(v76 + 16) = v73;
        *(v76 + 24) = v128;
        *(v76 + 32) = v130;
        *(v76 + 40) = v126;
        *(v76 + 48) = v73;
        v131(v76 + v75, v70, v71);
        *(v76 + ((v125 + v75 + 7) & 0xFFFFFFFFFFFFFFF8)) = v127;
        swift_retain_n();
        v77 = v127;
        sub_1002762F0();
      }
    }

    switch(*(v0 + 345))
    {
      case 1:
        v103 = sub_1003D0EC4();
        *(v0 + 296) = v103;
        if (v103)
        {
          v104 = v103;
          v105 = [*(v0 + 88) handle];
          *(v0 + 304) = v105;
          if (v105)
          {
            v4 = *(*(v0 + 96) + 48);
            *(v0 + 312) = v4;
            v101 = sub_100348850;
            goto LABEL_30;
          }
        }

        v13(*(v0 + 160), *(v0 + 216), *(v0 + 120));
        v78 = Logger.logObject.getter();
        static os_log_type_t.error.getter();
        sub_10003DBD0();
        v110 = os_log_type_enabled(v78, v109);
        v81 = *(v0 + 216);
        v108 = *(v0 + 160);
        v83 = *(v0 + 120);
        if (!v110)
        {
          goto LABEL_36;
        }

        goto LABEL_35;
      case 2:
      case 4:
        v13(*(v0 + 144), *(v0 + 216), *(v0 + 120));
        v78 = Logger.logObject.getter();
        static os_log_type_t.info.getter();
        sub_10003DBD0();
        v80 = os_log_type_enabled(v78, v79);
        v81 = *(v0 + 216);
        v82 = *(v0 + 144);
        v83 = *(v0 + 120);
        if (!v80)
        {
          goto LABEL_36;
        }

        v84 = v29;
        v85 = *(v0 + 345);
        v135 = *(v0 + 216);
        v86 = sub_100007C08();
        v87 = sub_100007630();
        sub_10034B564(v87);
        *v86 = 136315394;
        v88 = sub_100343480(v85);
        v90 = sub_10002741C(v88, v89, &v136);

        *(v86 + 4) = v90;
        *(v86 + 12) = 2080;
        sub_1000084F8();
        sub_10003D434(v91, 255, v92, &protocol conformance descriptor for UUID);
        v93 = sub_100051630();
        v94 = sub_100008B94();
        v84(v94);
        sub_10002741C(v93, v90, &v136);
        sub_10000771C();

        *(v86 + 14) = v82;
        sub_10000FA74();
        _os_log_impl(v95, v96, v97, v98, v99, 0x16u);
        swift_arrayDestroy();
        sub_100007CBC();
        sub_1000079DC();

        (v84)(v135, v83);
        goto LABEL_37;
      case 3:
        v100 = [*(v0 + 88) handle];
        *(v0 + 280) = v100;
        if (v100)
        {
          v4 = *(*(v0 + 96) + 48);
          *(v0 + 288) = v4;
          v101 = sub_10034870C;
          goto LABEL_30;
        }

        v13(*(v0 + 168), *(v0 + 216), *(v0 + 120));
        v78 = Logger.logObject.getter();
        static os_log_type_t.error.getter();
        sub_10003DBD0();
        v107 = os_log_type_enabled(v78, v106);
        v81 = *(v0 + 216);
        v108 = *(v0 + 168);
        v83 = *(v0 + 120);
        if (v107)
        {
LABEL_35:
          sub_100005274();
          v111 = sub_100021F34();
          sub_10034B564(v111);
          *v81 = 136315138;
          sub_1000084F8();
          sub_10003D434(v112, 255, v113, &protocol conformance descriptor for UUID);
          v114 = sub_100051630();
          v115 = sub_100008B94();
          v29(v115);
          sub_10002741C(v114, v13, &v136);
          sub_10000771C();

          *(v81 + 4) = v108;
          sub_10000FA74();
          _os_log_impl(v116, v117, v118, v119, v120, 0xCu);
          sub_10000E764();
          sub_1000079DC();

          (v29)(v81, v83);
        }

        else
        {
LABEL_36:

          v121 = sub_10000BA34();
          v29(v121);
          (v29)(v81, v83);
        }

        goto LABEL_37;
      default:
        if ([*(v0 + 88) isHostedOnCurrentDevice])
        {
          v102 = *(v0 + 96);
          if ((*(v102 + 80) & 1) == 0)
          {
            v4 = *(v102 + 48);
            *(v0 + 320) = v4;
            v101 = sub_10034899C;
LABEL_30:
            v3 = v101;
            v5 = 0;

            return _swift_task_switch(v3, v4, v5);
          }
        }

        (v29)(*(v0 + 216), *(v0 + 120));
LABEL_37:
        sub_100010394();

        sub_100009EF4();

        result = v122();
        break;
    }
  }

  return result;
}

uint64_t sub_10034870C()
{
  sub_100006810();
  sub_10004AE3C(*(v0 + 280), *(v0 + 216));
  v1 = *(v0 + 232);
  v2 = *(v0 + 240);

  return _swift_task_switch(sub_100348770, v1, v2);
}

uint64_t sub_100348770(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_10003DDE0();
  sub_10001E404();
  v15 = *(v14 + 272);

  v16 = sub_100005ED0();
  v15(v16);
  sub_100010394();
  v28 = v18;
  v29 = v17;

  sub_100009EF4();
  sub_100015AB0();

  return v20(v19, v20, v21, v22, v23, v24, v25, v26, a9, v28, v29, a12, a13, a14);
}

uint64_t sub_100348850()
{
  sub_100006810();
  sub_1003A1CFC(*(v0 + 304), *(v0 + 296));
  v1 = *(v0 + 232);
  v2 = *(v0 + 240);

  return _swift_task_switch(sub_1003488B4, v1, v2);
}

uint64_t sub_1003488B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_10003DDE0();
  sub_10001E404();
  v15 = *(v14 + 296);
  v16 = *(v14 + 272);

  v17 = sub_100005ED0();
  v16(v17);
  sub_100010394();
  v29 = v19;
  v30 = v18;

  sub_100009EF4();
  sub_100015AB0();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, v29, v30, a12, a13, a14);
}

uint64_t sub_10034899C()
{
  sub_100006810();
  sub_1003A1B00(0);
  v1 = *(v0 + 232);
  v2 = *(v0 + 240);

  return _swift_task_switch(sub_100348A00, v1, v2);
}

uint64_t sub_100348A00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_10003DDE0();
  sub_10001E404();
  v15 = sub_1003D0EC4();
  *(v14 + 328) = v15;
  if (v15)
  {
    v16 = v15;
    v17 = [*(v14 + 88) handle];
    *(v14 + 336) = v17;
    if (v17)
    {
      sub_100015AB0();

      return _swift_task_switch(v18, v19, v20);
    }
  }

  (*(v14 + 256))(*(v14 + 152), *(v14 + 216), *(v14 + 120));
  v22 = Logger.logObject.getter();
  static os_log_type_t.error.getter();
  sub_10003DBD0();
  v24 = os_log_type_enabled(v22, v23);
  v25 = *(v14 + 272);
  v26 = *(v14 + 216);
  v27 = *(v14 + 152);
  v28 = *(v14 + 120);
  if (v24)
  {
    sub_100005274();
    a11 = sub_100021F34();
    *v25 = 136315138;
    sub_1000084F8();
    sub_10003D434(v29, 255, v30, &protocol conformance descriptor for UUID);
    sub_100051630();
    v31 = sub_100008B94();
    v32 = (v25)(v31);
    sub_10003EB64(v32, v33, v34, v35);
    sub_10000771C();

    *(v25 + 4) = v27;
    sub_10000FA74();
    _os_log_impl(v36, v37, v38, v39, v40, 0xCu);
    sub_100009B7C(a11);
    sub_100005F40(a11);
    sub_1000079DC();
  }

  else
  {

    v41 = sub_10000BA34();
    (v25)(v41);
  }

  (v25)(v26, v28);
  sub_100010394();
  v53 = v43;
  v54 = v42;

  sub_100009EF4();
  sub_100015AB0();

  return v45(v44, v45, v46, v47, v48, v49, v50, v51, v53, v54, a11, a12, a13, a14);
}

uint64_t sub_100348C64()
{
  sub_100006810();
  sub_1003A1CFC(*(v0 + 336), *(v0 + 328));
  v1 = *(v0 + 232);
  v2 = *(v0 + 240);

  return _swift_task_switch(sub_100348CC8, v1, v2);
}

uint64_t sub_100348CC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_10003DDE0();
  sub_10001E404();
  v15 = *(v14 + 328);
  v16 = *(v14 + 272);

  v17 = sub_100005ED0();
  v16(v17);
  sub_100010394();
  v29 = v19;
  v30 = v18;

  sub_100009EF4();
  sub_100015AB0();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, v29, v30, a12, a13, a14);
}

uint64_t sub_100348DB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a7;
  v8[10] = a8;
  v8[8] = a6;
  sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  v8[11] = swift_task_alloc();
  v9 = type metadata accessor for UUID();
  v8[12] = v9;
  v8[13] = *(v9 - 8);
  v8[14] = swift_task_alloc();
  v10 = swift_task_alloc();
  v8[15] = v10;
  *v10 = v8;
  v10[1] = sub_100348EE4;

  return sub_10027FF94();
}

uint64_t sub_100348EE4()
{
  sub_100006810();
  sub_100005F18();
  v1 = *v0;
  sub_100008060();
  *v2 = v1;

  type metadata accessor for ConversationCallCoordinationManager();
  sub_10000A894();
  sub_10003D434(v3, v4, v5, &protocol conformance descriptor for ConversationCallCoordinationManager);
  sub_10034B558();
  dispatch thunk of Actor.unownedExecutor.getter();
  sub_100006B5C();
  v6 = sub_10000FC24();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_100349014()
{
  v26 = v0;
  sub_100008D34(v0[8] + 136, (v0 + 2));
  sub_1003841E4();
  swift_endAccess();

  if (qword_1006A0AA8 != -1)
  {
    sub_10000A1D8(&qword_1006A0AA8);
  }

  v4 = v0[13];
  v3 = v0[14];
  v5 = v0[12];
  v6 = v0[9];
  v7 = type metadata accessor for Logger();
  v8 = sub_10000AF9C(v7, qword_1006A6290);
  (*(v4 + 16))(v3, v6, v5);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  v11 = sub_10000BA5C(v10);
  v12 = v0[14];
  if (v11)
  {
    sub_100005274();
    v13 = sub_10000681C();
    v25 = v13;
    *v8 = 136315138;
    sub_1000084F8();
    sub_10003D434(v14, 255, v15, &protocol conformance descriptor for UUID);
    sub_10000D35C();
    dispatch thunk of CustomStringConvertible.description.getter();
    sub_10000C130();
    v16 = sub_100006B3C();
    v17(v16);
    sub_10002741C(v1, v2, &v25);
    sub_10000C3CC();
    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v9, v6, "[CSDConversationCallCoordinationManager] Removed CallCoordinator for callUUID: %s", v8, 0xCu);
    sub_100009B7C(v13);
    sub_100005F64();
    sub_100006868();
  }

  else
  {

    v18 = sub_100006B3C();
    v19(v18);
  }

  v21 = v0[10];
  v20 = v0[11];
  sub_100008D34(v0[8] + 128, (v0 + 5));
  sub_100429380();
  sub_1000099A4(v20, &unk_1006A3DD0, &unk_10057C9D0);
  swift_endAccess();
  [v21 setConversationCoordinator:0];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong activitySessionContainersChangedOnChildProvider:v0[8]];
    swift_unknownObjectRelease();
  }

  sub_100009EF4();

  return v23();
}

id *ConversationCallCoordinationManager.deinit()
{

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  sub_100060500((v0 + 12));

  return v0;
}

uint64_t ConversationCallCoordinationManager.__deallocating_deinit()
{
  ConversationCallCoordinationManager.deinit();

  return _swift_deallocClassInstance(v0, 144, 7);
}

uint64_t sub_100349390(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1003493A8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFC && *(a1 + 16))
  {
    return (*a1 + 2147483644);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 3;
  if (v4 >= 5)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1003493FC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFB)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483644;
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 3;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ConversationCallCoordinationManager.TrackedCallState(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 8))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 4);
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
      if (!v4)
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

uint64_t storeEnumTagSinglePayload for ConversationCallCoordinationManager.TrackedCallState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *(result + 4) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_100349504(uint64_t a1)
{
  v3 = v2;
  v5 = type metadata accessor for UUID();
  sub_100005EB4(v5);
  v7 = (*(v6 + 80) + 56) & ~*(v6 + 80);
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  v11 = *(v1 + 32);
  v12 = *(v1 + 48);
  v13 = *(v1 + ((*(v8 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));
  v14 = *(v1 + 40);
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_100035FE0;

  return sub_100348DB0(a1, v9, v10, v11, v14, v12, v1 + v7, v13);
}

uint64_t sub_100349648()
{
  sub_100007648();
  v2 = v1;
  v4 = v3;
  v5 = type metadata accessor for UUID();
  sub_100005EB4(v5);
  v7 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v9 = (*(v8 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v0 + 16);
  v12 = *(v0 + v9);
  v13 = *(v0 + ((v10 + 47) & 0xFFFFFFFFFFFFFFF8));
  v14 = swift_task_alloc();
  v15 = sub_100008A48(v14);
  *v15 = v16;
  v15[1] = sub_100035FE4;

  return sub_100347878(v4, v2 & 0x1FF, v11, v0 + v7, v12, (v0 + v10), v13);
}

uint64_t sub_100349788(uint64_t result, void *a2)
{
  if (result)
  {
    swift_unknownObjectRetain();
    v3 = a2;
    return sub_100005ED0();
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1003497C0(id result)
{
  if (result)
  {
    return result;
  }

  __break(1u);
  return result;
}

id sub_1003497D4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = sub_1003497C0(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100349800(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[27] = a3;
  v4[28] = a4;
  v4[26] = a1;
  sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  v4[29] = swift_task_alloc();
  v6 = type metadata accessor for UUID();
  v4[30] = v6;
  v4[31] = *(v6 - 8);
  v4[32] = swift_task_alloc();
  v4[33] = swift_task_alloc();
  v7 = type metadata accessor for SharePlayTelephonyIdentityProvider();
  v4[34] = v7;
  v4[5] = v7;
  v4[6] = &off_10062D498;
  v4[2] = a2;
  type metadata accessor for ConversationCallCoordinationManager();
  sub_10003D434(&unk_1006A62D0, v8, type metadata accessor for ConversationCallCoordinationManager, &protocol conformance descriptor for ConversationCallCoordinationManager);

  v10 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100349990, v10, v9);
}

uint64_t sub_100349990()
{
  v90 = v0;
  v3 = [*(v0 + 208) callUUID];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_10034B594();
  sub_1000276D0();

  result = sub_10000EA40();
  if (v5)
  {
    __break(1u);
  }

  else
  {
    v6 = *(v0 + 264);
    v7 = *(v0 + 224);
    (*(*(v0 + 248) + 32))(v6, *(v0 + 232), *(v0 + 240));
    sub_100005298(v7 + 136, v0 + 136);

    v8 = sub_100005ED0();
    sub_10004A1E8(v8, v9);
    sub_10000667C();

    if (v6)
    {

      if (qword_1006A0AA8 != -1)
      {
        sub_10000A1D8(&qword_1006A0AA8);
      }

      v10 = *(v0 + 208);
      v11 = type metadata accessor for Logger();
      sub_1000075F0(v11, qword_1006A6290);
      v12 = v10;
      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.default.getter();

      v15 = os_log_type_enabled(v13, v14);
      v16 = *(v0 + 264);
      v18 = *(v0 + 240);
      v17 = *(v0 + 248);
      if (v15)
      {
        v19 = *(v0 + 208);
        v87 = *(v0 + 264);
        v20 = sub_100005274();
        v21 = swift_slowAlloc();
        v89 = v21;
        *v20 = 136315138;
        v22 = [v19 callUUID];
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        sub_10002F75C();

        v23 = sub_10002741C(&selRef_beginMatchingExtensions, v2, &v89);

        *(v20 + 4) = v23;
        _os_log_impl(&_mh_execute_header, v13, v14, "[CSDConversationCallCoordinationManager] addCallCoordinator: Coordinator already exists for existing call with callUUID: %s", v20, 0xCu);
        sub_100009B7C(v21);
        sub_1000079DC();
        sub_100005F64();

        (*(v17 + 8))(v87, v18);
      }

      else
      {

        (*(v17 + 8))(v16, v18);
      }
    }

    else
    {
      v24 = *(v0 + 264);
      v25 = *(v0 + 224);
      sub_100005298(v25 + 112, v0 + 160);
      v26 = *(v25 + 112);

      v27 = sub_1000357C8(v24, v26);

      if ((v27 & 0xFF00000000) == 0x200000000)
      {
        if (qword_1006A0AA8 != -1)
        {
          sub_10000A1D8(&qword_1006A0AA8);
        }

        v28 = type metadata accessor for Logger();
        sub_10000AF9C(v28, qword_1006A6290);
        v29 = sub_10000F6DC();
        v30(v29);
        v31 = Logger.logObject.getter();
        static os_log_type_t.default.getter();
        sub_10003DBD0();
        v33 = os_log_type_enabled(v31, v32);
        v34 = *(v0 + 256);
        v35 = *(v0 + 264);
        v37 = *(v0 + 240);
        v36 = *(v0 + 248);
        if (v33)
        {
          sub_100005274();
          v89 = sub_100021F34();
          *v35 = 136315138;
          sub_1000084F8();
          sub_10003D434(v38, 255, v39, &protocol conformance descriptor for UUID);
          sub_100051630();
          sub_10002F75C();
          v40 = *(v36 + 8);
          v41 = sub_10000BA34();
          v40(v41);
          sub_10002741C(&selRef_beginMatchingExtensions, v2, &v89);
          sub_10000771C();

          *(v35 + 4) = v34;
          sub_10000FA74();
          _os_log_impl(v42, v43, v44, v45, v46, 0xCu);
          sub_10000E764();
          sub_1000079DC();

          (v40)(v35, v37);
        }

        else
        {

          v81 = *(v36 + 8);
          v82 = sub_10000BA34();
          v81(v82);
          (v81)(v35, v37);
        }
      }

      else if ((v27 & 0x100000000) == 0 || v27 == 6)
      {
        if (qword_1006A0AA8 != -1)
        {
          sub_10000A1D8(&qword_1006A0AA8);
        }

        v70 = type metadata accessor for Logger();
        sub_1000075F0(v70, qword_1006A6290);
        v71 = Logger.logObject.getter();
        static os_log_type_t.default.getter();
        sub_10003DBD0();
        v73 = os_log_type_enabled(v71, v72);
        v74 = *(v0 + 264);
        v75 = *(v0 + 240);
        v76 = *(v0 + 248);
        if (v73)
        {
          sub_100005274();
          v77 = sub_100021F34();
          v89 = v77;
          *v1 = 136315138;
          v78 = sub_100343520(v27 & 0x1010101FFFFFFFFLL);
          v80 = sub_10002741C(v78, v79, &v89);

          *(v1 + 4) = v80;
          _os_log_impl(&_mh_execute_header, v71, v7, "[CSDConversationCallCoordinationManager] addCallCoordinator: Ignoring since call changed state: %s", v1, 0xCu);
          sub_100009B7C(v77);
          sub_100005F40(v77);
          sub_1000079DC();
        }

        (*(v76 + 8))(v74, v75);
      }

      else
      {
        v48 = *(v0 + 272);
        v88 = *(v0 + 224);
        v86 = *(v0 + 216);
        v84 = *(v0 + 208);
        v49 = *(v88 + 32);
        v50 = *(v88 + 40);
        sub_100009AB0(v0 + 16, v0 + 56);
        v85 = *(v88 + 80);
        v51 = objc_allocWithZone(type metadata accessor for SharedConversationServerBag());
        v83 = v49;
        swift_unknownObjectRetain();
        v52 = [v51 init];
        v53 = *(v0 + 80);
        v54 = sub_10001BDB8(v0 + 56, v53);
        sub_1000083C0();
        v56 = v55;
        v57 = sub_100005E9C();
        (*(v56 + 16))(v57, v54, v53);
        v58 = *v57;
        *(v0 + 120) = v48;
        *(v0 + 128) = &off_10062D498;
        *(v0 + 96) = v58;
        type metadata accessor for ConversationCallCoordinator(0);
        v59 = swift_allocObject();
        v60 = sub_10001BDB8(v0 + 96, v48);
        sub_1000083C0();
        v62 = v61;
        v63 = sub_100005E9C();
        (*(v62 + 16))(v63, v60, v48);
        v64 = *v63;
        v65 = v84;
        v66 = sub_10034AB38(v83, v65, v50, v64, v86, v85, v52, v59);
        sub_100009B7C((v0 + 96));

        sub_100009B7C((v0 + 56));

        sub_100008D34(v7 + 136, v0 + 184);

        swift_isUniquelyReferenced_nonNull_native();
        v89 = *(v7 + 136);
        sub_100379A84();
        *(v7 + 136) = v89;
        swift_endAccess();
        [v65 setConversationCoordinator:v66];
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          [Strong activitySessionContainersChangedOnChildProvider:*(v0 + 224)];
          swift_unknownObjectRelease();
        }

        v68 = sub_100005ED0();
        v69(v68);
      }
    }

    sub_100009B7C((v0 + 16));

    sub_100009EF4();

    return v47();
  }

  return result;
}

uint64_t sub_10034A134(uint64_t a1, __int16 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 128) = a5;
  *(v7 + 136) = a7;
  *(v7 + 112) = a3;
  *(v7 + 120) = a4;
  *(v7 + 216) = a2;
  *(v7 + 104) = a1;
  v9 = type metadata accessor for UUID();
  *(v7 + 144) = v9;
  *(v7 + 152) = *(v9 - 8);
  *(v7 + 160) = swift_task_alloc();
  *(v7 + 40) = type metadata accessor for SharePlayTelephonyIdentityProvider();
  *(v7 + 48) = &off_10062D498;
  *(v7 + 16) = a6;

  return _swift_task_switch(sub_10034A228, 0, 0);
}

uint64_t sub_10034A228(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_10003DDE0();
  a21 = v23;
  a22 = v24;
  sub_10001E404();
  a20 = v22;
  sub_100005298(*(v22 + 112) + 16, v22 + 56);
  Strong = swift_weakLoadStrong();
  *(v22 + 168) = Strong;
  if (!Strong)
  {
    goto LABEL_8;
  }

  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {

LABEL_8:
    sub_10000BBA4();
    sub_100009EF4();
    sub_100015AB0();

    return v48(v47, v48, v49, v50, v51, v52, v53, v54, a9, a10, a11, a12, a13, a14);
  }

  if (qword_1006A0AA8 != -1)
  {
    sub_10000A1D8(&qword_1006A0AA8);
  }

  v26 = type metadata accessor for Logger();
  v27 = sub_10000AF9C(v26, qword_1006A6290);
  v28 = sub_10000BA34();
  v29(v28);
  v30 = Logger.logObject.getter();
  static os_log_type_t.default.getter();
  sub_10003DBD0();
  v32 = os_log_type_enabled(v30, v31);
  v33 = *(v22 + 160);
  if (v32)
  {
    v34 = *(v22 + 216);
    v35 = sub_100007C08();
    a11 = sub_100007630();
    *v35 = 136315394;
    v36 = sub_1003A4C0C(v34 & 0x1FF);
    v38 = sub_10002741C(v36, v37, &a11);

    *(v35 + 4) = v38;
    *(v35 + 12) = 2080;
    sub_1000084F8();
    sub_10003D434(v39, 255, v40, &protocol conformance descriptor for UUID);
    dispatch thunk of CustomStringConvertible.description.getter();
    sub_10002F75C();
    v41 = sub_10034B570();
    v43 = v42(v41);
    sub_10003EB64(v43, v44, v45, v46);
    sub_10000771C();

    *(v35 + 14) = v33;
    _os_log_impl(&_mh_execute_header, v30, v27, "[CSDConversationCallCoordinationManager] Availability response: '%s', callUUID: %s", v35, 0x16u);
    swift_arrayDestroy();
    sub_100007CBC();
    sub_100006868();
  }

  else
  {

    v56 = sub_10034B570();
    v57(v56);
  }

  if (*(v22 + 216))
  {
    if (*(v22 + 216) == 1)
    {
      sub_100009B14((v22 + 16), *(v22 + 40));
      v58 = swift_task_alloc();
      *(v22 + 176) = v58;
      *v58 = v22;
      v58[1] = sub_10034A5AC;
      sub_10000795C(*(v22 + 128));
      sub_100015AB0();

      return sub_100349800(v59, v60, v61, v62);
    }

    v65 = swift_task_alloc();
    *(v22 + 200) = v65;
    *v65 = v22;
    v65[1] = sub_10034A914;
    sub_10000795C(*(v22 + 128));
  }

  else
  {
    v64 = swift_task_alloc();
    *(v22 + 208) = v64;
    *v64 = v22;
    v64[1] = sub_10034AA54;
    sub_10000795C(*(v22 + 128));
  }

  sub_100015AB0();

  return sub_100347960();
}

uint64_t sub_10034A5AC()
{
  sub_100006810();
  sub_100005F18();
  v1 = *v0;
  sub_100008060();
  *v2 = v1;

  type metadata accessor for ConversationCallCoordinationManager();
  sub_10000A894();
  sub_10003D434(v3, v4, v5, &protocol conformance descriptor for ConversationCallCoordinationManager);
  sub_10034B558();
  dispatch thunk of Actor.unownedExecutor.getter();
  sub_100006B5C();
  v6 = sub_10000FC24();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_10034A6DC()
{
  sub_100006810();
  v1 = *(v0 + 168);
  sub_100005298(v1 + 136, v0 + 80);
  *(v0 + 184) = *(v1 + 136);

  return _swift_task_switch(sub_10034A758, 0, 0);
}

uint64_t sub_10034A758()
{
  sub_100006810();
  v1 = sub_10004A1E8(v0[15], v0[23]);
  v0[24] = v1;

  if (v1)
  {
    type metadata accessor for ConversationCallCoordinator(0);
    sub_100018224();
    sub_10003D434(v2, 255, v3, &protocol conformance descriptor for ConversationCallCoordinator);
    sub_10034B558();
    dispatch thunk of Actor.unownedExecutor.getter();
    sub_100006B5C();
    v4 = sub_10000FC24();

    return _swift_task_switch(v4, v5, v6);
  }

  else
  {

    sub_10000BBA4();
    sub_100009EF4();

    return v7();
  }
}

uint64_t sub_10034A848()
{
  sub_100006810();
  sub_10027FAB4(HIBYTE(*(v0 + 216)) & 1);
  v1 = sub_10003A5A4();

  return _swift_task_switch(v1, v2, v3);
}

uint64_t sub_10034A8AC()
{
  sub_100006810();

  sub_10000BBA4();
  sub_100009EF4();

  return v0();
}

uint64_t sub_10034A914()
{
  sub_100006810();
  sub_100005F18();
  v1 = *v0;
  sub_100008060();
  *v2 = v1;

  v3 = sub_10003A5A4();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_10034A9F8()
{
  sub_100006810();

  sub_10000BBA4();
  sub_100009EF4();

  return v0();
}

uint64_t sub_10034AA54()
{
  sub_100006810();
  sub_100005F18();
  v1 = *v0;
  sub_100008060();
  *v2 = v1;

  v3 = sub_10003A5A4();

  return _swift_task_switch(v3, v4, v5);
}

char *sub_10034AB38(void *a1, void *a2, uint64_t a3, uint64_t a4, void *a5, int a6, void *a7, void *a8)
{
  v49 = a5;
  v50 = a7;
  LODWORD(v48) = a6;
  v52 = a3;
  v53 = a2;
  v11 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  __chkstk_darwin(v11 - 8);
  v13 = &v47 - v12;
  v14 = type metadata accessor for UUID();
  v51 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57[3] = type metadata accessor for SharePlayTelephonyIdentityProvider();
  v57[4] = &off_10062D498;
  v57[0] = a4;
  *(a8 + OBJC_IVAR___CSDConversationCallCoordinator__tuConversation) = 0;
  *(a8 + OBJC_IVAR___CSDConversationCallCoordinator_trackingConversation) = 0;
  *(a8 + OBJC_IVAR___CSDConversationCallCoordinator_translationSessionInProgress) = 0;
  *(a8 + OBJC_IVAR___CSDConversationCallCoordinator_canRejoinConversation) = 0;
  v17 = OBJC_IVAR___CSDConversationCallCoordinator__conversationStream;
  sub_10026D814(&unk_1006A62E0, &unk_10057A3F0);
  sub_100006AF0(0, &unk_1006A0C80, TUConversation_ptr);
  sub_1002F93D0(&qword_1006A62F0, &unk_1006A0C80, TUConversation_ptr, &protocol conformance descriptor for NSObject);
  *(a8 + v17) = AsyncBroadcastStream.__allocating_init<>(_:)();
  v18 = OBJC_IVAR___CSDConversationCallCoordinator__conversationStateStream;
  sub_10026D814(&unk_1006A0C90, &unk_1005814C0);
  type metadata accessor for TUConversationState(0);
  sub_10003D434(&unk_1006A6300, 255, type metadata accessor for TUConversationState, &unk_10057B164);
  *(a8 + v18) = AsyncBroadcastStream.__allocating_init<>(_:)();
  v19 = OBJC_IVAR___CSDConversationCallCoordinator_tearDownContinuation;
  v20 = sub_10026D814(&unk_1006A0CA0, &unk_10057A400);
  sub_10000AF74(a8 + v19, 1, 1, v20);
  *(a8 + OBJC_IVAR___CSDConversationCallCoordinator_tearDownFailsafeTask) = 0;
  *(a8 + OBJC_IVAR___CSDConversationCallCoordinator_queue) = a1;
  v21 = v53;
  a8[2] = v53;
  v22 = a1;
  v23 = v21;
  v24 = [v23 callUUID];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  UUID.init(uuidString:)();

  v53 = v14;
  result = sub_100015468(v13, 1, v14);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v26 = v51;
    v27 = v53;
    (*(v51 + 32))(v16, v13, v53);
    (*(v26 + 16))(a8 + OBJC_IVAR___CSDConversationCallCoordinator_callUUID, v16, v27);
    *(a8 + OBJC_IVAR___CSDConversationCallCoordinator_conversationManager) = v52;
    sub_100009AB0(v57, a8 + OBJC_IVAR___CSDConversationCallCoordinator_identityProvider);
    v29 = v49;
    v28 = v50;
    *(a8 + OBJC_IVAR___CSDConversationCallCoordinator_conversationProvider) = v49;
    *(a8 + OBJC_IVAR___CSDConversationCallCoordinator_relaySupportEnabled) = v48 & 1;
    *(a8 + OBJC_IVAR___CSDConversationCallCoordinator_serverBag) = v28;
    sub_100006AF0(0, &unk_1006A6310, TUConversationActivitySessionContainer_ptr);
    swift_unknownObjectRetain();
    v49 = v29;
    v30 = v28;
    *(a8 + OBJC_IVAR___CSDConversationCallCoordinator_placeholderContainer) = sub_1002FFA88(v16, 10);
    v31 = type metadata accessor for ConversationCallCoordinator(0);
    v56.receiver = a8;
    v56.super_class = v31;
    v32 = objc_msgSendSuper2(&v56, "init");
    v33 = *&v32[OBJC_IVAR___CSDConversationCallCoordinator_conversationManager];
    v34 = v32;
    v50 = v22;
    [v33 addDelegate:v34 queue:v22];
    v35 = [objc_allocWithZone(CXCallUpdate) init];
    [v35 setIsSharePlayCapable:1];
    [v23 updateWithOverrideCallProperties:v35];
    if (qword_1006A0770 != -1)
    {
      swift_once();
    }

    v36 = type metadata accessor for Logger();
    sub_10000AF9C(v36, qword_1006A24E0);
    v37 = v23;
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v54 = v37;
      v55 = v41;
      *v40 = 136315138;
      sub_100006AF0(0, &qword_1006A34B0, off_1006165E0);
      v47 = v30;
      v48 = v16;
      v42 = v26;
      v43 = v37;
      v44 = String.init<A>(reflecting:)();
      v46 = sub_10002741C(v44, v45, &v55);

      *(v40 + 4) = v46;
      _os_log_impl(&_mh_execute_header, v38, v39, "[CSDConversationCallCoordinator] Initialized for call: %s", v40, 0xCu);
      sub_100009B7C(v41);

      swift_unknownObjectRelease();
      (*(v42 + 8))(v48, v53);
    }

    else
    {

      swift_unknownObjectRelease();
      (*(v26 + 8))(v16, v53);
    }

    sub_100009B7C(v57);
    return v34;
  }

  return result;
}

uint64_t sub_10034B1A8(uint64_t a1, unint64_t a2)
{
  if (a2 != 4)
  {
    return sub_10034B1B8(a1, a2);
  }

  return a1;
}

uint64_t sub_10034B1B8(uint64_t a1, unint64_t a2)
{
  if (a2 >= 4)
  {
  }

  return result;
}

uint64_t sub_10034B1D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10026D814(&qword_1006A47F0, &qword_10057F840);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10034B244()
{
  sub_1000066BC();
  v0 = swift_task_alloc();
  v1 = sub_100008A48(v0);
  *v1 = v2;
  v1[1] = sub_100035FE0;
  v3 = sub_100007624();

  return v4(v3);
}

unint64_t sub_10034B2F8()
{
  result = qword_1006AB120;
  if (!qword_1006AB120)
  {
    sub_10026DCB4(&qword_1006A6350, &qword_100586EE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006AB120);
  }

  return result;
}

uint64_t sub_10034B35C()
{
  sub_10000C698();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_100008A48(v3);
  *v4 = v5;
  v4[1] = sub_100035FE0;

  return sub_100344BC4(v1, v2);
}

_BYTE *storeEnumTagSinglePayload for ConversationCallCoordinationManager.CoordinatorRemovedReason(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_10034B4E0()
{
  result = qword_1006A6358;
  if (!qword_1006A6358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A6358);
  }

  return result;
}

uint64_t sub_10034B564(uint64_t result)
{
  *(v1 - 96) = result;
  *(v1 - 80) = result;
  return result;
}

uint64_t sub_10034B57C()
{
}

void sub_10034B594()
{
}

uint64_t sub_10034B5B4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 88))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_10034B5F4(uint64_t result, int a2, int a3)
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

uint64_t sub_10034B658(uint64_t a1)
{
  if ((*(v1 + 64) & 1) != 0 || (v4 = *(v1 + 56), v34[0] = *(v1 + 40), (v5 = *(&v34[0] + 1)) == 0))
  {
    v2 = static os_log_type_t.error.getter();
    v3 = sub_10003D4D0(v2);
LABEL_11:
    os_log(_:dso:log:_:_:)();

    return 0;
  }

  v6 = *(v1 + 32);
  if (!v6)
  {
LABEL_10:
    v27 = static os_log_type_t.error.getter();
    v3 = sub_10003D4D0(v27);
    goto LABEL_11;
  }

  v7 = *&v34[0];
  v8 = v6;
  sub_10034BA04(v34, v33);
  v9 = TUCopyIDSFromIDForHandle();
  if (!v9)
  {
    sub_10034BA74(v34);

    goto LABEL_10;
  }

  v10 = v9;
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  v14 = String._bridgeToObjectiveC()();
  v15 = TUHandleForIDSCanonicalAddress();

  v16 = TUCopyIDSFromIDForHandle();
  if (!v16)
  {
    sub_10034BA74(v34);

    v29 = static os_log_type_t.error.getter();
    v30 = sub_10003D4D0(v29);
    os_log(_:dso:log:_:_:)();

    return 0;
  }

  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v31 = v18;
  v32 = v17;

  sub_10026D814(&qword_1006A4458, &unk_100588070);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1005800F0;
  v33[0] = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v33[1] = v20;
  sub_100008510();
  *(inited + 96) = &type metadata for Double;
  *(inited + 72) = v4;
  v33[0] = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v33[1] = v21;
  sub_100008510();
  *(inited + 168) = &type metadata for String;
  *(inited + 144) = v7;
  *(inited + 152) = v5;
  v33[0] = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v33[1] = v22;
  sub_100008510();
  *(inited + 240) = &type metadata for String;
  *(inited + 216) = v11;
  *(inited + 224) = v13;
  v33[0] = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v33[1] = v23;
  sub_100008510();
  *(inited + 312) = &type metadata for String;
  *(inited + 288) = v32;
  *(inited + 296) = v31;
  v33[0] = 0xD000000000000012;
  v33[1] = 0x800000010056D530;
  sub_100008510();
  *(inited + 384) = &type metadata for Int;
  *(inited + 360) = 1;
  strcpy(v33, "message-type");
  BYTE5(v33[1]) = 0;
  HIWORD(v33[1]) = -5120;
  sub_100008510();
  v25 = *(v1 + 72);
  v24 = *(v1 + 80);
  *(inited + 456) = &type metadata for String;
  *(inited + 432) = v25;
  *(inited + 440) = v24;

  v26 = Dictionary.init(dictionaryLiteral:)();

  return v26;
}

uint64_t sub_10034BA04(uint64_t a1, uint64_t a2)
{
  v4 = sub_10026D814(&qword_1006ABFF0, &qword_100588080);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10034BA74(uint64_t a1)
{
  v2 = sub_10026D814(&qword_1006ABFF0, &qword_100588080);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10034BADC(unint64_t result)
{
  if (result >= 0xA)
  {
    return 4;
  }

  else
  {
    return result;
  }
}

void sub_10034BAEC(void *a1)
{
  v2 = type metadata accessor for Handle.Kind();
  sub_100007FEC();
  v4 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v7);
  v8 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = __chkstk_darwin([a1 type]);
  v10 = &enum case for Handle.Kind.generic(_:);
  if (v9 == 2)
  {
    v10 = &enum case for Handle.Kind.phoneNumber(_:);
  }

  if (v9 == 3)
  {
    v10 = &enum case for Handle.Kind.emailAddress(_:);
  }

  (*(v4 + 104))(&v13 - v8, *v10, v2);
  (*(v4 + 32))(&v13 - v8, &v13 - v8, v2);
  v11 = [a1 value];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v12 = [a1 value];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  Handle.init(type:value:displayName:)();
}

id sub_10034BCA0()
{
  v0 = [objc_opt_self() tu_defaults];
  v1 = [v0 maxJunkLevel];

  return v1;
}

unint64_t sub_10034BCF8(void *a1, void *a2)
{
  v3 = v2;
  v6 = [a1 remoteMember];
  if (!v6 || (v7 = v6, v8 = [v6 handle], v7, !v8))
  {
    v36 = sub_10022B1C8(v6);
    sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_10057D690;
    v120 = a1;
    sub_10034CAD0();
    v38 = a1;
    v39 = String.init<A>(reflecting:)();
    v41 = v40;
    *(v37 + 56) = &type metadata for String;
    *(v37 + 64) = sub_100009D88();
    *(v37 + 32) = v39;
    *(v37 + 40) = v41;
    v42 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("Update %@ does not contain remoteMember. Returning trust score of unknown", 73, 2, &_mh_execute_header, v36, v42, v37);

LABEL_11:

    return 4;
  }

  if ([a1 isBlocked])
  {
    v9 = [v8 value];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v10 = String.count.getter();

    if (v10 < 1)
    {
      v94 = sub_10022B1C8(v11);
      sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
      v95 = swift_allocObject();
      *(v95 + 16) = xmmword_10057D690;
      v120 = a1;
      sub_10034CAD0();
      v96 = a1;
      v97 = String.init<A>(reflecting:)();
      v99 = v98;
      *(v95 + 56) = &type metadata for String;
      *(v95 + 64) = sub_100009D88();
      *(v95 + 32) = v97;
      *(v95 + 40) = v99;
      v100 = static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)("Update %@ does not contain proper caller ID. Returning trust score of unknown", 77, 2, &_mh_execute_header, v94, v100, v95);

      goto LABEL_11;
    }
  }

  v12 = type metadata accessor for Handle();
  v113 = &v101;
  sub_100007FEC();
  v116 = v13;
  __chkstk_darwin(v14);
  v117 = v15;
  v16 = &v101 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = v8;
  v115 = v16;
  v111 = v17;
  sub_10034BAEC(v17);
  v18 = type metadata accessor for CommunicationTrustScoreOptions();
  v112 = &v101;
  sub_100007FEC();
  v119 = v19;
  __chkstk_darwin(v20);
  sub_10000A8AC();
  v22 = v21 & 0xFFFFFFFFFFFFFFF0;
  v24 = v23 - (v21 & 0xFFFFFFFFFFFFFFF0);
  v120 = _swiftEmptyArrayStorage;
  sub_10034CB14();
  sub_10026D814(&qword_1006A6398, &unk_100581650);
  sub_10034CB60();
  v118 = v24;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v25 = sub_10034BCA0();
  v26 = [a1 junkConfidence];
  v114 = v12;
  if (v25 < v26)
  {
    v110 = &v101;
    v27 = __chkstk_darwin(v26);
    v28 = &v101 - v22;
    __chkstk_darwin(v27);
    v29 = v18;
    v30 = &v101 - v22;
    static CommunicationTrustScoreOptions.junkSignal.getter();
    sub_10000A1F8();
    sub_100388BB4();
    v31 = *(v119 + 8);
    v32 = v30;
    v18 = v29;
    v31(v32, v29);
    v31(v28, v29);
    v12 = v114;
  }

  v33 = v117;
  if (a2)
  {
    v34 = a2;
    v35 = [v34 isSystemProvider];
    if (v35)
    {
    }

    else
    {
      v110 = &v101;
      __chkstk_darwin(v35);
      sub_10000A8AC();
      __chkstk_darwin(v44);
      v45 = v3;
      v46 = v18;
      v48 = &v101 - v47;
      static CommunicationTrustScoreOptions.ignoreCallDirectory.getter();
      sub_10000A1F8();
      sub_100388BB4();

      v49 = *(v119 + 8);
      v50 = v48;
      v18 = v46;
      v3 = v45;
      v49(v50, v18);
      v51 = sub_10000A1F8();
      (v49)(v51);
      v33 = v117;
    }
  }

  v108 = a1;
  v110 = v3;
  v52 = [*(v3 + OBJC_IVAR___CSDCommunicationTrustScoreDataProvider_configurationProvider) isSpamFilterEnabledForFaceTime];
  if ((v52 & 1) == 0)
  {
    __chkstk_darwin(v52);
    sub_10000A8AC();
    v55 = v54 - (v53 & 0xFFFFFFFFFFFFFFF0);
    __chkstk_darwin(v56);
    static CommunicationTrustScoreOptions.ignoreServerTrust.getter();
    sub_100388BB4();
    v57 = *(v119 + 8);
    v58 = sub_10000A1F8();
    v57(v58);
    v52 = (v57)(v55, v18);
    v33 = v117;
  }

  v102 = sub_10022B1C8(v52);
  v104 = sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
  v59 = swift_allocObject();
  v103 = xmmword_10057D6A0;
  *(v59 + 16) = xmmword_10057D6A0;
  __chkstk_darwin(v59);
  v60 = v18;
  v105 = (v33 + 15) & 0xFFFFFFFFFFFFFFF0;
  v106 = *(v116 + 16);
  v107 = v116 + 16;
  v106(&v101 - v105, v115, v12);
  v61 = String.init<A>(reflecting:)();
  v63 = v62;
  *(v59 + 56) = &type metadata for String;
  v64 = sub_100009D88();
  *(v59 + 64) = v64;
  *(v59 + 32) = v61;
  *(v59 + 40) = v63;
  __chkstk_darwin(v64);
  sub_10000A8AC();
  v66 = v118;
  v67 = *(v119 + 16);
  v67(v68 - (v65 & 0xFFFFFFFFFFFFFFF0), v118, v60);
  v69 = String.init<A>(reflecting:)();
  *(v59 + 96) = &type metadata for String;
  *(v59 + 104) = v64;
  v109 = v64;
  *(v59 + 72) = v69;
  *(v59 + 80) = v70;
  v71 = static os_log_type_t.default.getter();
  v72 = v102;
  os_log(_:dso:log:type:_:)("Querying commtrustd for trust score of handle: %@ with options %@", 65, 2, &_mh_execute_header, v102, v71, v59);

  sub_10034CBC4(v108);
  v73 = sub_10026D814(&qword_1006A27C0, &qword_10057D360);
  v108 = &v101;
  __chkstk_darwin(v73 - 8);
  v75 = &v101 - v74;
  v67(&v101 - v74, v66, v60);
  v110 = v60;
  sub_10000AF74(v75, 0, 1, v60);
  v76 = sub_10026D814(&qword_1006A27C8, qword_100581660);
  __chkstk_darwin(v76 - 8);
  v78 = &v101 - v77;
  v79 = enum case for Service.FaceTime(_:);
  v80 = type metadata accessor for Service();
  (*(*(v80 - 8) + 104))(v78, v79, v80);
  v81 = v80;
  v82 = v115;
  sub_10000AF74(v78, 0, 1, v81);
  v83 = CommunicationTrustManager.trustScoreSync(for:countryCode:options:service:)();

  sub_1000099A4(v78, &qword_1006A27C8, qword_100581660);
  v84 = sub_1000099A4(v75, &qword_1006A27C0, &qword_10057D360);
  v85 = sub_10022B1C8(v84);
  v86 = swift_allocObject();
  *(v86 + 16) = v103;
  v120 = v83;
  v87 = String.init<A>(reflecting:)();
  v88 = v109;
  *(v86 + 56) = &type metadata for String;
  *(v86 + 64) = v88;
  *(v86 + 32) = v87;
  *(v86 + 40) = v89;
  __chkstk_darwin(v87);
  v90 = v114;
  v106(&v101 - v105, v82, v114);
  v91 = String.init<A>(reflecting:)();
  *(v86 + 96) = &type metadata for String;
  *(v86 + 104) = v88;
  *(v86 + 72) = v91;
  *(v86 + 80) = v92;
  v93 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("Successfully fetched trust score %@ for handle: %@", 50, 2, &_mh_execute_header, v85, v93, v86);

  (*(v119 + 8))(v118, v110);
  (*(v116 + 8))(v82, v90);
  return sub_10034BADC(v83);
}

id sub_10034C9B0()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = OBJC_IVAR___CSDCommunicationTrustScoreDataProvider_communicationTrustManager;
  type metadata accessor for CommunicationTrustManager();
  *&v0[v3] = static CommunicationTrustManager.shared.getter();
  v4 = OBJC_IVAR___CSDCommunicationTrustScoreDataProvider_configurationProvider;
  *&v1[v4] = [objc_allocWithZone(TUConfigurationProvider) init];
  v6.receiver = v1;
  v6.super_class = ObjectType;
  return objc_msgSendSuper2(&v6, "init");
}

unint64_t sub_10034CAD0()
{
  result = qword_1006AB5C0;
  if (!qword_1006AB5C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1006AB5C0);
  }

  return result;
}

unint64_t sub_10034CB14()
{
  result = qword_1006A7BB0;
  if (!qword_1006A7BB0)
  {
    type metadata accessor for CommunicationTrustScoreOptions();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A7BB0);
  }

  return result;
}

unint64_t sub_10034CB60()
{
  result = qword_1006A63A0;
  if (!qword_1006A63A0)
  {
    sub_10026DCB4(&qword_1006A6398, &unk_100581650);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A63A0);
  }

  return result;
}

uint64_t sub_10034CBC4(void *a1)
{
  v1 = [a1 ISOCountryCode];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

id sub_10034CC28(uint64_t a1, void *a2, uint64_t a3)
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v3[OBJC_IVAR___CSDConversationLocalParticipantBlobTracker_deferredUpdateRequest] = 2;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();
  *&v3[OBJC_IVAR___CSDConversationLocalParticipantBlobTracker_queue] = a3;
  v8.receiver = v3;
  v8.super_class = type metadata accessor for ConversationLocalParticipantBlobTracker();
  v6 = objc_msgSendSuper2(&v8, "init");
  swift_unknownObjectRelease();

  return v6;
}

void sub_10034CD4C()
{
  v1 = type metadata accessor for DispatchPredicate();
  sub_100007FEC();
  v3 = v2;
  __chkstk_darwin(v4);
  sub_100007FDC();
  v7 = v6 - v5;
  v8 = *&v0[OBJC_IVAR___CSDConversationLocalParticipantBlobTracker_queue];
  *(v6 - v5) = v8;
  (*(v3 + 104))(v6 - v5, enum case for DispatchPredicate.onQueue(_:), v1);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v7, v1);
  if (v8)
  {
    if (qword_1006A0AF8 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  sub_10000852C();
  swift_once();
LABEL_3:
  v10 = type metadata accessor for Logger();
  sub_10000AF9C(v10, qword_1006BA568);
  v11 = v0;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v14 = 136315394;
    type metadata accessor for ConversationLocalParticipantBlobTracker();
    v15 = v11;
    v16 = String.init<A>(reflecting:)();
    v18 = sub_10002741C(v16, v17, &v28);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2080;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      [Strong state];
      sub_10000EA74();
      swift_unknownObjectRelease();
      type metadata accessor for TUConversationState(0);
      v20 = String.init<A>(reflecting:)();
      v22 = v21;
    }

    else
    {
      v22 = 0xE300000000000000;
      v20 = 7104878;
    }

    sub_10002741C(v20, v22, &v28);
    sub_10000EA74();

    *(v14 + 14) = v15;
    sub_1000113C8();
    _os_log_impl(v23, v24, v25, v26, v27, 0x16u);
    swift_arrayDestroy();
    sub_10000EA64();

    sub_100009ED0();
  }

  sub_10034D4FC();
}

void sub_10034D040(char a1)
{
  v3 = type metadata accessor for DispatchPredicate();
  sub_100007FEC();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_100007FDC();
  v9 = v8 - v7;
  v10 = *&v1[OBJC_IVAR___CSDConversationLocalParticipantBlobTracker_queue];
  *(v8 - v7) = v10;
  (*(v5 + 104))(v8 - v7, enum case for DispatchPredicate.onQueue(_:), v3);
  v11 = v10;
  LOBYTE(v10) = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v9, v3);
  if (v10)
  {
    if (qword_1006A0AF8 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  sub_10000852C();
  swift_once();
LABEL_3:
  v12 = type metadata accessor for Logger();
  sub_10000AF9C(v12, qword_1006BA568);
  v13 = v1;
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    sub_100015070();
    v17 = swift_slowAlloc();
    v22 = v17;
    *v16 = 136315394;
    type metadata accessor for ConversationLocalParticipantBlobTracker();
    v18 = v13;
    v19 = String.init<A>(reflecting:)();
    v21 = sub_10002741C(v19, v20, &v22);

    *(v16 + 4) = v21;
    *(v16 + 12) = 1024;
    *(v16 + 14) = a1 & 1;
    _os_log_impl(&_mh_execute_header, v14, v15, "%s received request to update localParticiapntBlob, deliverOverPush: %{BOOL}d", v16, 0x12u);
    sub_100009B7C(v17);
    sub_100009ED0();

    sub_100009ED0();
  }

  sub_10034DE44(a1 & 1);
}

void sub_10034D4FC()
{
  v53[13] = type metadata accessor for DispatchWorkItemFlags();
  sub_100007FEC();
  v2 = v1;
  __chkstk_darwin(v3);
  sub_100007FDC();
  v6 = v5 - v4;
  v7 = type metadata accessor for DispatchQoS();
  sub_100007FEC();
  v9 = v8;
  __chkstk_darwin(v10);
  sub_100007FDC();
  v53[11] = v12 - v11;
  type metadata accessor for DispatchTimeInterval();
  sub_100007FEC();
  v53[7] = v14;
  v53[8] = v13;
  __chkstk_darwin(v13);
  sub_100007FDC();
  v53[6] = v16 - v15;
  v53[12] = type metadata accessor for DispatchTime();
  sub_100007FEC();
  v53[10] = v17;
  v19 = __chkstk_darwin(v18);
  v53[5] = v53 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v53[9] = v53 - v21;
  v22 = type metadata accessor for DispatchPredicate();
  sub_100007FEC();
  v24 = v23;
  __chkstk_darwin(v25);
  sub_100007FDC();
  v28 = v27 - v26;
  v54 = v0;
  v53[4] = OBJC_IVAR___CSDConversationLocalParticipantBlobTracker_queue;
  v29 = *&v0[OBJC_IVAR___CSDConversationLocalParticipantBlobTracker_queue];
  *(v27 - v26) = v29;
  (*(v24 + 104))(v27 - v26, enum case for DispatchPredicate.onQueue(_:), v22);
  v30 = v29;
  v31 = _dispatchPreconditionTest(_:)();
  (*(v24 + 8))(v28, v22);
  if (v31)
  {
    v53[1] = v9;
    v53[2] = v6;
    v53[3] = v7;
    if (qword_1006A0AF8 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  sub_10000852C();
  swift_once();
LABEL_3:
  v32 = type metadata accessor for Logger();
  sub_10000AF9C(v32, qword_1006BA568);
  v33 = v54;
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v34, v35))
  {
    v53[0] = v2;
    v36 = swift_slowAlloc();
    aBlock = swift_slowAlloc();
    *v36 = 136315394;
    v56 = v33;
    type metadata accessor for ConversationLocalParticipantBlobTracker();
    v37 = v33;
    v38 = String.init<A>(reflecting:)();
    v40 = sub_10002741C(v38, v39, &aBlock);

    *(v36 + 4) = v40;
    *(v36 + 12) = 2080;
    v41 = v37[OBJC_IVAR___CSDConversationLocalParticipantBlobTracker_deferredUpdateRequest];
    if (v41 == 2)
    {
      v42 = 0xE300000000000000;
      v43 = 7104878;
    }

    else
    {
      LOBYTE(v56) = v41 & 1;
      v43 = String.init<A>(reflecting:)();
      v42 = v44;
    }

    v45 = sub_10002741C(v43, v42, &aBlock);

    *(v36 + 14) = v45;
    sub_1000113C8();
    _os_log_impl(v46, v47, v48, v49, v50, 0x16u);
    swift_arrayDestroy();
    sub_100009ED0();

    sub_100009ED0();
  }

  else
  {
  }

  v51 = OBJC_IVAR___CSDConversationLocalParticipantBlobTracker_deferredUpdateRequest;
  v52 = v33[OBJC_IVAR___CSDConversationLocalParticipantBlobTracker_deferredUpdateRequest];
  if (v52 != 2)
  {
    sub_10034DE44(v52 & 1);
    v33[v51] = 2;
  }
}

void sub_10034DDF0(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_10034D4FC();
  }
}

void sub_10034DE44(char a1)
{
  v3 = type metadata accessor for DispatchPredicate();
  sub_100007FEC();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_100007FDC();
  v9 = v8 - v7;
  v10 = *&v1[OBJC_IVAR___CSDConversationLocalParticipantBlobTracker_queue];
  *(v8 - v7) = v10;
  (*(v5 + 104))(v8 - v7, enum case for DispatchPredicate.onQueue(_:), v3);
  v11 = v10;
  LOBYTE(v10) = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v9, v3);
  if ((v10 & 1) == 0)
  {
    __break(1u);
LABEL_28:
    sub_10000852C();
    swift_once();
    goto LABEL_13;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    if ([Strong state] == 3)
    {
      v14 = [v13 localCSDParticipant];
      if (v14)
      {
        v15 = v14;
        if (qword_1006A0AF8 != -1)
        {
          sub_10000852C();
          swift_once();
        }

        v16 = type metadata accessor for Logger();
        sub_10000AF9C(v16, qword_1006BA568);
        v17 = v1;
        v18 = Logger.logObject.getter();
        v19 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v18, v19))
        {
          sub_100007BFC();
          v71 = a1;
          v20 = swift_slowAlloc();
          sub_100015070();
          v70 = swift_slowAlloc();
          v72 = v70;
          *v20 = 136315138;
          type metadata accessor for ConversationLocalParticipantBlobTracker();
          v21 = v17;
          v22 = String.init<A>(reflecting:)();
          v24 = sub_10002741C(v22, v23, &v72);

          *(v20 + 4) = v24;
          _os_log_impl(&_mh_execute_header, v18, v19, "%s Local participant blob will be updated", v20, 0xCu);
          sub_100009B7C(v70);
          sub_10000EA64();

          a1 = v71;
          sub_100009ED0();
        }

        v25 = swift_unknownObjectWeakLoadStrong();
        v26 = v25;
        v27 = &selRef_sendLocalParticipant_;
        if ((a1 & 1) == 0)
        {
          v27 = &selRef_updateLocalParticipantInfo_;
        }

        [v25 *v27];

        swift_unknownObjectRelease();
        return;
      }

      if (qword_1006A0AF8 != -1)
      {
        sub_10000852C();
        swift_once();
      }

      v57 = type metadata accessor for Logger();
      sub_10000AF9C(v57, qword_1006BA568);
      v58 = v1;
      v59 = Logger.logObject.getter();
      v60 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v59, v60))
      {
        sub_100007BFC();
        v61 = swift_slowAlloc();
        sub_100015070();
        v62 = swift_slowAlloc();
        v72 = v62;
        *v61 = 136315138;
        type metadata accessor for ConversationLocalParticipantBlobTracker();
        v63 = v58;
        v64 = String.init<A>(reflecting:)();
        v66 = sub_10002741C(v64, v65, &v72);

        *(v61 + 4) = v66;
        sub_100005FCC(&_mh_execute_header, v67, v68, "%s Conversation state is joined but has no localParticipant.");
        sub_100009B7C(v62);
        sub_100009ED0();

        sub_10000EA64();
      }

      sub_10034E7D4();
      swift_allocError();
      *v69 = 1;
    }

    else
    {
      if (qword_1006A0AF8 != -1)
      {
        sub_10000852C();
        swift_once();
      }

      v44 = type metadata accessor for Logger();
      sub_10000AF9C(v44, qword_1006BA568);
      v45 = v1;
      v46 = Logger.logObject.getter();
      v47 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v46, v47))
      {
        sub_100007BFC();
        v48 = swift_slowAlloc();
        sub_100015070();
        v49 = swift_slowAlloc();
        v72 = v49;
        *v48 = 136315138;
        type metadata accessor for ConversationLocalParticipantBlobTracker();
        v50 = v45;
        v51 = String.init<A>(reflecting:)();
        v53 = sub_10002741C(v51, v52, &v72);

        *(v48 + 4) = v53;
        sub_100005FCC(&_mh_execute_header, v54, v55, "%s Conversation state is not joined, not executing deferred requests.");
        sub_100009B7C(v49);
        sub_100009ED0();

        sub_10000EA64();
      }

      sub_10034E7D4();
      swift_allocError();
      *v56 = 0;
    }

    swift_willThrow();
    swift_unknownObjectRelease();
    return;
  }

  if (qword_1006A0AF8 != -1)
  {
    goto LABEL_28;
  }

LABEL_13:
  v28 = type metadata accessor for Logger();
  sub_10000AF9C(v28, qword_1006BA568);
  v29 = v1;
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v30, v31))
  {
    sub_100007BFC();
    v32 = swift_slowAlloc();
    sub_100015070();
    v33 = swift_slowAlloc();
    v72 = v33;
    *v32 = 136315138;
    type metadata accessor for ConversationLocalParticipantBlobTracker();
    v34 = v29;
    v35 = String.init<A>(reflecting:)();
    v37 = sub_10002741C(v35, v36, &v72);

    *(v32 + 4) = v37;
    sub_10001823C();
    _os_log_impl(v38, v39, v40, v41, v42, v43);
    sub_100009B7C(v33);
    sub_100009ED0();

    sub_100009ED0();
  }

  sub_10034E780();
  swift_allocError();
  swift_willThrow();
}

id sub_10034E4E0(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ConversationLocalParticipantBlobTracker();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_10034E5D8(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 1 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 1) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_10034E670(_BYTE *result, unsigned int a2, unsigned int a3)
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

id sub_10034E748()
{
  v1 = [v0 localConversationParticipantWithData];

  return v1;
}

unint64_t sub_10034E780()
{
  result = qword_1006A63F0;
  if (!qword_1006A63F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A63F0);
  }

  return result;
}

unint64_t sub_10034E7D4()
{
  result = qword_1006A63F8;
  if (!qword_1006A63F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A63F8);
  }

  return result;
}

_BYTE *sub_10034E830(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_10034E908(_BYTE *result, int a2, int a3)
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

unint64_t sub_10034E9B4()
{
  result = qword_1006A6400;
  if (!qword_1006A6400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A6400);
  }

  return result;
}

unint64_t sub_10034EA0C()
{
  result = qword_1006A6408[0];
  if (!qword_1006A6408[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1006A6408);
  }

  return result;
}

uint64_t sub_10034EA60(uint64_t a1)
{
  result = swift_checkMetadataState();
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

uint64_t sub_10034EB1C()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 112));
  sub_100008540();

  sub_100008540();
  sub_100008540();
  swift_unknownObjectRelease();
  sub_100008540();

  sub_100008540();
  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_10034EC04()
{
  sub_10034EB1C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

id sub_10034EC74()
{
  ObjectType = swift_getObjectType();
  v2 = &v0[OBJC_IVAR____TtC13callservicesd37RingtoneProviderAlertPlaybackObserver_didBeginPlaying];
  *v2 = 0;
  *(v2 + 1) = 0;
  v4.receiver = v0;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, "init");
}

void sub_10034ECF4()
{
  v1 = *(v0 + OBJC_IVAR____TtC13callservicesd37RingtoneProviderAlertPlaybackObserver_didBeginPlaying);
  if (v1)
  {
    v2 = *(v0 + OBJC_IVAR____TtC13callservicesd37RingtoneProviderAlertPlaybackObserver_didBeginPlaying + 8);

    v1(v3);

    sub_1000051F8(v1, v2);
  }
}

id sub_10034EDC0()
{
  v1 = [v0 configuration];

  return v1;
}

uint64_t sub_10034EDFC(uint64_t a1)
{
  [v1 setPlaybackObserver:a1];

  return swift_unknownObjectRelease();
}

void sub_10034EE44(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    a2 = 0;
  }

  sub_10034EE50(a1, a2);
}

void sub_10034EE50(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v4[4] = a1;
    v4[5] = a2;
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 1107296256;
    v4[2] = sub_10034EF10;
    v4[3] = &unk_100628DD8;
    v3 = _Block_copy(v4);
  }

  else
  {
    v3 = 0;
  }

  [v2 playWithCompletionHandler:v3];
  _Block_release(v3);
}

void sub_10034EF10(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

id sub_10034F004()
{
  v0 = objc_allocWithZone(type metadata accessor for RingtoneProviderAlertPlaybackObserver());

  return [v0 init];
}

id *sub_10034F038()
{
  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_10034F088()
{
  sub_10034F038();

  return _swift_deallocClassInstance(v0, 96, 7);
}

void *sub_10034F0E0()
{
  v1 = [objc_allocWithZone(CNContactStore) init];
  v0[3] = 0;
  v0[4] = 0;
  v0[2] = v1;
  v0[5] = dispatch_semaphore_create(0);
  v0[6] = dispatch_semaphore_create(0);
  v0[7] = [objc_allocWithZone(TUFeatureFlags) init];
  v0[8] = sub_10034EFB0;
  v0[9] = 0;
  v0[10] = sub_10034F004;
  v0[11] = 0;
  return v0;
}

void sub_10034F178(uint64_t *a1)
{
  v2 = v1;
  v3 = sub_10034F418(a1);
  if (*(v1 + 24) && (v4 = *(v1 + 32), ObjectType = swift_getObjectType(), v6 = *(v4 + 8), swift_unknownObjectRetain(), v7 = v6(ObjectType, v4), swift_unknownObjectRelease(), sub_100006AF0(0, &unk_1006A6610, TLAlertConfiguration_ptr), v28 = v3, v8 = static NSObject.== infix(_:_:)(), v7, v28, (v8 & 1) != 0))
  {
    v10 = sub_100004778(v9);
    v11 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("Requested to begin or update playback, but alert configuration is unchanged so doing nothing", 92, 2, &_mh_execute_header, v10, v11, _swiftEmptyArrayStorage);

    sub_100008348();
  }

  else
  {
    v14 = *(v2 + 64);

    v15 = v14(v3);
    v17 = v16;

    if (v15)
    {
      v19 = *(v2 + 80);

      v21 = v19(v20);

      sub_10034FF8C(v21, v15, v17, v2);

      sub_100008348();

      swift_unknownObjectRelease();
    }

    else
    {
      v23 = sub_100004778(v18);
      v24 = static os_log_type_t.error.getter();
      sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_10057D690;
      *(v25 + 56) = sub_100006AF0(0, &unk_1006A6610, TLAlertConfiguration_ptr);
      *(v25 + 64) = sub_100290B1C(&qword_1006A6620, &unk_1006A6610, TLAlertConfiguration_ptr);
      *(v25 + 32) = v3;
      v26 = v3;
      os_log(_:dso:log:type:_:)("Alert configuration has changed, but unable to create TLAlert using configuration %@", 84, 2, &_mh_execute_header, v23, v24, v25);

      sub_100008348();
    }
  }
}

id sub_10034F418(uint64_t *a1)
{
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v110 = &v105 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v105 - v7;
  v9 = sub_10026D814(&unk_1006A52C0, &unk_10057D930);
  v10 = __chkstk_darwin(v9 - 8);
  v12 = &v105 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = &v105 - v14;
  __chkstk_darwin(v13);
  v17 = &v105 - v16;
  v18 = a1[1];
  v117 = &v105 - v16;
  v118 = v3;
  v114 = v4;
  if (v18)
  {
    v19 = sub_100350514(*a1, v18);
    if (v19)
    {
      v20 = v19;
      v106 = v8;
      v111 = v1;
      v112 = a1;
      v108 = v12;
      v21 = sub_10001B8C8(v19, &selRef_sound);
      v23 = v22;
      v24 = sub_10001B8C8(v20, &selRef_vibration);
      v116 = v25;
      v26 = [v20 ignoreMute];
      v27 = v26;
      v107 = sub_100004778(v26);
      sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
      v28 = swift_allocObject();
      *(v28 + 16) = xmmword_10057CA70;
      *(v28 + 56) = sub_100006AF0(0, &qword_1006A6640, CNActivityAlert_ptr);
      *(v28 + 64) = sub_100290B1C(&unk_1006A6648, &qword_1006A6640, CNActivityAlert_ptr);
      *(v28 + 32) = v20;
      v29 = v20;
      v109 = v21;
      v30 = v23;
      v31 = sub_10001E478(v21, v23);
      v33 = v32;
      *(v28 + 96) = &type metadata for String;
      v34 = sub_100009D88();
      *(v28 + 104) = v34;
      *(v28 + 72) = v31;
      *(v28 + 80) = v33;
      v35 = v116;
      v113 = v24;
      v36 = sub_10001E478(v24, v116);
      *(v28 + 136) = &type metadata for String;
      *(v28 + 144) = v34;
      *(v28 + 112) = v36;
      *(v28 + 120) = v37;
      v115 = v27;
      LOBYTE(v119) = v27;
      v38 = String.init<A>(reflecting:)();
      *(v28 + 176) = &type metadata for String;
      *(v28 + 184) = v34;
      *(v28 + 152) = v38;
      *(v28 + 160) = v39;
      v40 = static os_log_type_t.default.getter();
      v41 = v107;
      os_log(_:dso:log:type:_:)("From activity alert %@, using tone %@, vibration %@, bypass ringer %@", 69, 2, &_mh_execute_header, v107, v40, v28);

      if (v30)
      {

        v42 = 0;
        v43 = 1;
        v1 = v111;
        a1 = v112;
        v17 = v117;
        v3 = v118;
        v12 = v108;
        goto LABEL_12;
      }

      v1 = v111;
      a1 = v112;
      v17 = v117;
      v3 = v118;
      v4 = v114;
      v12 = v108;
      v8 = v106;
    }

    else
    {
      v116 = 0;
      v113 = 0;
      v109 = 0;
      v115 = 0;
      v3 = v118;
    }
  }

  else
  {
    v116 = 0;
    v113 = 0;
    v109 = 0;
    v115 = 0;
  }

  v44 = type metadata accessor for RingtoneDescriptor(0);
  sub_1003507C4(a1 + *(v44 + 20), v15);
  if (sub_100015468(v15, 1, v3) == 1)
  {
    sub_1002E1320(v15);
    v30 = 0;
    v43 = 1;
  }

  else
  {
    v111 = v1;
    v112 = a1;
    v45 = *(v4 + 32);
    v46 = v45(v8, v15, v3);
    v47 = sub_100004778(v46);
    sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
    v48 = swift_allocObject();
    *(v48 + 16) = xmmword_10057D690;
    URL._bridgeToObjectiveC()(&unk_10057D000);
    v50 = v49;
    *(v48 + 56) = sub_100006AF0(0, &qword_1006A6630, NSURL_ptr);
    v17 = v117;
    *(v48 + 64) = sub_100290B1C(&qword_1006A6638, &qword_1006A6630, NSURL_ptr);
    *(v48 + 32) = v50;
    v3 = v118;
    v51 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("From provider, using externalToneFileURL %@", 43, 2, &_mh_execute_header, v47, v51, v48);

    v45(v17, v8, v3);
    v1 = v111;
    a1 = v112;
    v43 = 0;
    v30 = 0;
  }

  v42 = 1;
  v35 = v116;
LABEL_12:
  sub_10000AF74(v17, v43, 1, v3);
  v116 = *(v1 + 56);
  v52 = [v116 dualSIMRingtoneEnabled];
  v53 = 0;
  v54 = 0;
  if (v42 && v52)
  {
    v55 = (a1 + *(type metadata accessor for RingtoneDescriptor(0) + 24));
    v54 = v55[1];
    if (v54)
    {
      v53 = *v55;
      v56 = swift_bridgeObjectRetain_n();
      v57 = v30;
      v58 = sub_100004778(v56);
      sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
      v59 = swift_allocObject();
      *(v59 + 16) = xmmword_10057D690;
      *(v59 + 56) = &type metadata for String;
      *(v59 + 64) = sub_100009D88();
      *(v59 + 32) = v53;
      *(v59 + 40) = v54;
      v60 = static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)("From descriptor, using SIM ID for subscriptionIdentifier: %@", 60, 2, &_mh_execute_header, v58, v60, v59);

      v30 = v57;
      v17 = v117;
    }

    else
    {
      v53 = 0;
    }
  }

  v112 = v53;
  v61 = [objc_allocWithZone(TLAlertConfiguration) initWithType:1];
  [v61 setShouldRepeat:1];
  if ((v42 & 1) == 0)
  {
    v62 = v109;
    v63 = v30;
    v64 = String._bridgeToObjectiveC()();
    [v61 setToneIdentifier:v64];

    v66 = sub_100004778(v65);
    sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
    v67 = swift_allocObject();
    *(v67 + 16) = xmmword_10057D690;
    *(v67 + 56) = &type metadata for String;
    *(v67 + 64) = sub_100009D88();
    *(v67 + 32) = v62;
    *(v67 + 40) = v63;
    v68 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("Setting toneIdentifier: %@", 26, 2, &_mh_execute_header, v66, v68, v67);

    v17 = v117;
  }

  if (v35)
  {
    v69 = v113;
    v70 = String._bridgeToObjectiveC()();
    [v61 setVibrationIdentifier:v70];

    v72 = sub_100004778(v71);
    sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
    v73 = swift_allocObject();
    *(v73 + 16) = xmmword_10057D690;
    *(v73 + 56) = &type metadata for String;
    *(v73 + 64) = sub_100009D88();
    *(v73 + 32) = v69;
    *(v73 + 40) = v35;
    v74 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("Setting vibrationIdentifier: %@", 31, 2, &_mh_execute_header, v72, v74, v73);

    v3 = v118;
  }

  sub_1003507C4(v17, v12);
  if (sub_100015468(v12, 1, v3) == 1)
  {
    sub_1002E1320(v12);
  }

  else
  {
    v75 = v12;
    v76 = v114;
    v77 = v110;
    (*(v114 + 32))(v110, v75, v3);
    URL._bridgeToObjectiveC()(v78);
    v80 = v79;
    [v61 setExternalToneFileURL:v79];

    v82 = sub_100004778(v81);
    sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
    v83 = swift_allocObject();
    *(v83 + 16) = xmmword_10057D690;
    URL._bridgeToObjectiveC()(&unk_10057D000);
    v85 = v84;
    *(v83 + 56) = sub_100006AF0(0, &qword_1006A6630, NSURL_ptr);
    *(v83 + 64) = sub_100290B1C(&qword_1006A6638, &qword_1006A6630, NSURL_ptr);
    *(v83 + 32) = v85;
    v86 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("Setting externalToneFileURL: %@", 31, 2, &_mh_execute_header, v82, v86, v83);

    v17 = v117;

    (*(v76 + 8))(v77, v118);
  }

  if ([v116 dualSIMRingtoneEnabled])
  {
    if (!v54)
    {
      goto LABEL_28;
    }

    v119 = 0xD000000000000018;
    v120 = 0x800000010056DC60;
    v87 = v112;
    v88._countAndFlagsBits = v112;
    v88._object = v54;
    String.append(_:)(v88);
    v89 = String._bridgeToObjectiveC()();

    [v61 setTopic:v89];

    v91 = sub_100004778(v90);
    sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
    v92 = swift_allocObject();
    *(v92 + 16) = xmmword_10057D690;
    *(v92 + 56) = &type metadata for String;
    *(v92 + 64) = sub_100009D88();
    *(v92 + 32) = v87;
    *(v92 + 40) = v54;
    v93 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("Setting subscriptionIdentifier: %@", 34, 2, &_mh_execute_header, v91, v93, v92);
  }

LABEL_28:
  v94 = v115;
  v95 = sub_100004778([v61 setShouldIgnoreRingerSwitch:v115]);
  sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
  v96 = swift_allocObject();
  *(v96 + 16) = xmmword_10057D690;
  LOBYTE(v119) = v94;
  v97 = String.init<A>(reflecting:)();
  v99 = v98;
  *(v96 + 56) = &type metadata for String;
  *(v96 + 64) = sub_100009D88();
  *(v96 + 32) = v97;
  *(v96 + 40) = v99;
  v100 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("Setting shouldIgnoreRingerSwitch: %@", 36, 2, &_mh_execute_header, v95, v100, v96);

  v101 = type metadata accessor for RingtoneDescriptor(0);
  if (*(a1 + *(v101 + 28)) == 1)
  {
    v102 = sub_100004778(v101);
    v103 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("Clearing toneIdentifier and externalToneFileURL due to shouldSuppressAudio", 74, 2, &_mh_execute_header, v102, v103, _swiftEmptyArrayStorage);

    [v61 setToneIdentifier:TLToneIdentifierNone];
    [v61 setExternalToneFileURL:0];
  }

  sub_1002E1320(v17);
  return v61;
}

uint64_t sub_10034FF8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 2) = a2;
  *(v8 + 3) = a3;
  *(v8 + 4) = a4;
  v9 = (a1 + OBJC_IVAR____TtC13callservicesd37RingtoneProviderAlertPlaybackObserver_didBeginPlaying);
  v10 = *(a1 + OBJC_IVAR____TtC13callservicesd37RingtoneProviderAlertPlaybackObserver_didBeginPlaying);
  v11 = *(a1 + OBJC_IVAR____TtC13callservicesd37RingtoneProviderAlertPlaybackObserver_didBeginPlaying + 8);
  *v9 = sub_1003502D4;
  v9[1] = v8;
  swift_unknownObjectRetain();

  sub_1000051F8(v10, v11);
  ObjectType = swift_getObjectType();
  v13 = *(a3 + 24);
  v14 = swift_unknownObjectRetain();
  v15 = v13(v14, ObjectType, a3);
  v16 = sub_100004778(v15);
  sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_10057D690;
  swift_unknownObjectRetain();
  sub_10026D814(&qword_1006A6628, &unk_1005819E0);
  v18 = String.init<A>(reflecting:)();
  v20 = v19;
  *(v17 + 56) = &type metadata for String;
  *(v17 + 64) = sub_100009D88();
  *(v17 + 32) = v18;
  *(v17 + 40) = v20;
  v21 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("Alert configuration has changed, playing alert %@", 49, 2, &_mh_execute_header, v16, v21, v17, a2, a3);

  v22 = swift_allocObject();
  v22[2] = a4;
  v22[3] = a2;
  v22[4] = a3;
  v23 = *(a3 + 40);
  swift_unknownObjectRetain();

  v23(sub_100350508, v22, ObjectType, a3);

  OS_dispatch_semaphore.wait()();
  *(a4 + 24) = a2;
  *(a4 + 32) = a3;
  swift_unknownObjectRelease();
  return swift_unknownObjectRetain();
}

Swift::Int sub_1003501C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004778(a1);
  sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_10057D690;
  v11 = a1;
  v12 = a2;
  swift_unknownObjectRetain();
  sub_10026D814(&qword_1006A6628, &unk_1005819E0);
  v6 = String.init<A>(reflecting:)();
  v8 = v7;
  *(v5 + 56) = &type metadata for String;
  *(v5 + 64) = sub_100009D88();
  *(v5 + 32) = v6;
  *(v5 + 40) = v8;
  v9 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("Started playing alert: %@", 25, 2, &_mh_execute_header, v4, v9, v5, v11, v12);

  return OS_dispatch_semaphore.signal()();
}

id sub_1003502E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OS_dispatch_semaphore.signal()();
  v9 = OS_dispatch_semaphore.signal()();
  v10 = sub_100004778(v9);
  if (a1 == 5)
  {
    v11 = static os_log_type_t.error.getter();
    sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_10057D6A0;
    v29 = a4;
    v30 = a5;
    swift_unknownObjectRetain();
    sub_10026D814(&qword_1006A6628, &unk_1005819E0);
    v13 = String.init<A>(reflecting:)();
    v15 = v14;
    *(v12 + 56) = &type metadata for String;
    v16 = sub_100009D88();
    *(v12 + 64) = v16;
    *(v12 + 32) = v13;
    *(v12 + 40) = v15;
    v17 = sub_1002910C8(a2);
    *(v12 + 96) = &type metadata for String;
    *(v12 + 104) = v16;
    *(v12 + 72) = v17;
    *(v12 + 80) = v18;
    os_log(_:dso:log:type:_:)("Playback failed for alert %@: %@", 32, 2, &_mh_execute_header, v10, v11, v12, v29, v30);
  }

  sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_10057D6A0;
  result = NSStringFromTLAlertPlaybackCompletionType();
  if (result)
  {
    v21 = result;
    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;

    *(v19 + 56) = &type metadata for String;
    v25 = sub_100009D88();
    *(v19 + 64) = v25;
    *(v19 + 32) = v22;
    *(v19 + 40) = v24;
    swift_unknownObjectRetain();
    sub_10026D814(&qword_1006A6628, &unk_1005819E0);
    v26 = String.init<A>(reflecting:)();
    *(v19 + 96) = &type metadata for String;
    *(v19 + 104) = v25;
    *(v19 + 72) = v26;
    *(v19 + 80) = v27;
    v28 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("Playback finished with completion type %@ for alert %@", 54, 2, &_mh_execute_header, v10, v28, v19, a4, a5);
  }

  __break(1u);
  return result;
}

id sub_100350514(uint64_t a1, unint64_t a2)
{
  v3 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v3 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v3)
  {
    return 0;
  }

  v6 = *(v2 + 16);
  v7 = String._bridgeToObjectiveC()();
  sub_10026D814(&qword_1006A2EA0, &qword_10057CB60);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_10057CA80;
  v9 = CNContactCallAlertKey;
  *(v8 + 32) = CNContactCallAlertKey;
  v10 = v9;
  sub_10026D814(&unk_1006A7AF0, &unk_1005819F0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v24 = 0;
  v12 = [v6 unifiedContactWithIdentifier:v7 keysToFetch:isa error:&v24];

  if (!v12)
  {
    v15 = v24;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v16 = _convertErrorToNSError(_:)();
    v17 = [v16 code];

    if (v17 == 200)
    {
    }

    else
    {
      v19 = sub_100004778(v18);
      v20 = static os_log_type_t.error.getter();
      sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_10057D6A0;
      *(v21 + 56) = &type metadata for String;
      *(v21 + 64) = sub_100009D88();
      *(v21 + 32) = a1;
      *(v21 + 40) = a2;

      v22 = _convertErrorToNSError(_:)();
      *(v21 + 96) = sub_100006AF0(0, &qword_1006A2B90, NSError_ptr);
      *(v21 + 104) = sub_100290B1C(&qword_1006A6658, &qword_1006A2B90, NSError_ptr);
      *(v21 + 72) = v22;
      os_log(_:dso:log:type:_:)("Contact retrieval failed for contact identifier %{sensitive}@: %@", 65, 2, &_mh_execute_header, v19, v20, v21);
    }

    return 0;
  }

  v13 = v24;
  v14 = [v12 callAlert];

  return v14;
}

uint64_t sub_1003507C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10026D814(&unk_1006A52C0, &unk_10057D930);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_100350868(uint64_t a1, void *a2, void (**a3)(void, void))
{
  sub_1003512DC();
  v5 = NSDictionary.init(dictionaryLiteral:)();
  sub_10026D814(&qword_1006A6660, &qword_10057E270);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v9 = v5;
  [a2 setAudioIOProperties:isa propertyErrors:&v9];

  v7 = v9;
  v9 = 0;
  static Dictionary._conditionallyBridgeFromObjectiveC(_:result:)();

  if (!v9)
  {
    Dictionary.init(dictionaryLiteral:)();
  }

  v8 = Dictionary._bridgeToObjectiveC()().super.isa;
  (a3)[2](a3, v8);

  _Block_release(a3);
}

id sub_100350AF8()
{
  v1 = [v0 category];

  return v1;
}

id sub_100350B34()
{
  v1 = [v0 mode];

  return v1;
}

id sub_100350BF4()
{
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v5 = 0;
  v2 = [v0 setActivationContext:isa error:&v5];

  if (v2)
  {
    return v5;
  }

  v4 = v5;
  _convertNSErrorToError(_:)();

  return swift_willThrow();
}

id sub_100350CE4()
{
  isa = Array._bridgeToObjectiveC()().super.isa;
  v5 = 0;
  v2 = [v0 setHostProcessAttribution:isa error:&v5];

  if (v2)
  {
    return v5;
  }

  v4 = v5;
  _convertNSErrorToError(_:)();

  return swift_willThrow();
}

id sub_100350DC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = String._bridgeToObjectiveC()();
  v8 = 0;
  LODWORD(a3) = [v3 setMXSessionProperty:v5 value:a3 error:&v8];

  if (a3)
  {
    return v8;
  }

  v7 = v8;
  _convertNSErrorToError(_:)();

  return swift_willThrow();
}

id sub_100350EA4(char a1, SEL *a2)
{
  v5 = 0;
  if ([v2 *a2])
  {
    return v5;
  }

  v4 = v5;
  _convertNSErrorToError(_:)();

  return swift_willThrow();
}

id sub_100350F64(char a1, uint64_t a2)
{
  v5 = 0;
  if ([v2 setActive:a1 & 1 withOptions:a2 error:&v5])
  {
    return v5;
  }

  v4 = v5;
  _convertNSErrorToError(_:)();

  return swift_willThrow();
}

id sub_10035102C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = 0;
  if ([v3 setCategory:a1 mode:a2 options:a3 error:&v6])
  {
    return v6;
  }

  v5 = v6;
  _convertNSErrorToError(_:)();

  return swift_willThrow();
}

id sub_100351140(uint64_t a1, SEL *a2)
{
  v5 = 0;
  if ([v2 *a2])
  {
    return v5;
  }

  v4 = v5;
  _convertNSErrorToError(_:)();

  return swift_willThrow();
}

uint64_t sub_1003511E8(uint64_t a1, uint64_t a2)
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

unint64_t sub_1003512DC()
{
  result = qword_1006A6668;
  if (!qword_1006A6668)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1006A6668);
  }

  return result;
}

unint64_t sub_100351320(unint64_t result)
{
  if (result > 0xF)
  {
    return 0;
  }

  return result;
}

uint64_t sub_100351354(uint64_t a1, uint64_t a2)
{
  v4 = sub_10036BD58();

  return _BridgedNSError.hash(into:)(a1, a2, v4);
}

unint64_t sub_1003513A8@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_100351320(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1003513DC(uint64_t a1)
{
  v2 = sub_10036BD58();

  return _BridgedNSError._domain.getter(a1, v2);
}

uint64_t sub_100351418(uint64_t a1)
{
  v2 = sub_10036BD58();

  return _BridgedNSError._code.getter(a1, v2);
}

uint64_t sub_100351474(uint64_t a1, uint64_t a2)
{
  v4 = sub_10036BD58();

  return _BridgedNSError.init(_bridgedNSError:)(a1, a2, v4);
}

id sub_1003514C8()
{
  swift_getObjectType();
  v0 = [objc_allocWithZone(TUConversationLinkDescriptorXPCClientDataSource) init];
  if (qword_1006A0820 != -1)
  {
    swift_once();
  }

  v1 = qword_1006A41D0;
  v2 = objc_allocWithZone(type metadata accessor for SharedConversationServerBag());
  sub_100369AB8(v0, v1, [v2 init]);
  sub_100010264();
  swift_deallocPartialClassInstance();
  return v0;
}

void *sub_100351684()
{
  sub_10000E564();
  sub_100006AF0(0, &qword_1006A30E0, NSCompoundPredicate_ptr);
  sub_10026D814(&qword_1006A2EA0, &qword_10057CB60);
  sub_100008BA8();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_10057DEC0;
  v1 = objc_opt_self();
  *(v0 + 32) = [v1 tu_predicateForConversationLinkDescriptorsWithActivated:1];
  *(v0 + 40) = [v1 tu_predicateForConversationLinkDescriptorsIsDeleted:0];
  v2 = sub_10000C350();
  if (qword_1006A0B20 != -1)
  {
    sub_10000854C();
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000AF9C(v3, qword_1006BA5E0);
  v4 = v2;
  v5 = Logger.logObject.getter();
  static os_log_type_t.default.getter();

  v6 = sub_10003EB80();
  if (os_log_type_enabled(v6, v7))
  {
    sub_100007BFC();
    v8 = swift_slowAlloc();
    sub_100015DC0();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    *(v8 + 4) = v4;
    *v9 = v4;
    v10 = v4;
    sub_10000C654(&_mh_execute_header, v11, v12, "Fetching activated links with predicate %@");
    sub_100009A04(v9, &unk_1006A2630, &qword_10057CB40);
    sub_100018250();

    sub_100009ED0();
  }

  v13 = sub_100351AC4();
  return v13;
}

void *sub_100351874()
{
  sub_10000E564();
  v0 = [objc_opt_self() tu_predicateForConversationLinkDescriptorsIsDeleted:1];
  if (qword_1006A0B20 != -1)
  {
    sub_10000854C();
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000AF9C(v1, qword_1006BA5E0);
  v2 = v0;
  v3 = Logger.logObject.getter();
  static os_log_type_t.default.getter();

  v4 = sub_10003EB80();
  if (os_log_type_enabled(v4, v5))
  {
    sub_100007BFC();
    v6 = swift_slowAlloc();
    sub_100015DC0();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    *(v6 + 4) = v2;
    *v7 = v2;
    v8 = v2;
    sub_10000C654(&_mh_execute_header, v9, v10, "Fetching deleted links with predicate %@");
    sub_100009A04(v7, &unk_1006A2630, &qword_10057CB40);
    sub_100018250();

    sub_100009ED0();
  }

  v11 = sub_100351AC4();
  return v11;
}

id sub_1003519EC(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v5 = a1;
  a4();

  sub_100006AF0(0, &unk_1006A2C00, TUConversationLink_ptr);
  sub_100007694();
  Array._bridgeToObjectiveC()();
  sub_100010264();

  return 0;
}

void *sub_100351AC4()
{
  sub_10000E564();
  v2 = v1;
  if (qword_1006A0B20 != -1)
  {
    sub_10000854C();
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000AF9C(v3, qword_1006BA5E0);
  v4 = v2;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    sub_100007BFC();
    v7 = swift_slowAlloc();
    sub_100015DC0();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v4;
    *v8 = v4;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v5, v6, "Fetching links with predicate %@", v7, 0xCu);
    sub_100009A04(v8, &unk_1006A2630, &qword_10057CB40);
    sub_100009ED0();

    sub_100018250();
  }

  sub_10000C740();
  v12 = [v10 v11];
  if (v12)
  {
    v13 = v12;
    sub_100006AF0(0, &qword_1006A2E90, TUConversationLinkDescriptor_ptr);
    v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = 0;

    v16 = sub_10000B6F4(v14);
    if (v16)
    {
      v17 = v16;
      specialized ContiguousArray.reserveCapacity(_:)();
      if (v17 < 0)
      {
        __break(1u);
      }

      v18 = 0;
      do
      {
        if ((v14 & 0xC000000000000001) != 0)
        {
          v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v19 = *(v14 + 8 * v18 + 32);
        }

        v20 = v19;
        ++v18;
        [objc_allocWithZone(TUConversationLink) initWithDescriptor:v19];

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      while (v17 != v18);
    }

    return _swiftEmptyArrayStorage;
  }

  else
  {
    v22 = 0;
    sub_10000C58C();
    _convertNSErrorToError(_:)();

    swift_willThrow();
    swift_errorRetain();
    v23 = Logger.logObject.getter();
    static os_log_type_t.error.getter();

    v24 = sub_10003A5B4();
    if (os_log_type_enabled(v24, v25))
    {
      sub_100007BFC();
      swift_slowAlloc();
      sub_100015FDC();
      v26 = swift_slowAlloc();
      MEMORY[0] = 138412290;
      swift_errorRetain();
      MEMORY[4] = _swift_stdlib_bridgeErrorToNSError();
      *v26 = MEMORY[4];
      sub_1000079AC();
      _os_log_impl(v27, v28, v29, v30, v31, 0xCu);
      sub_100009A04(v26, &unk_1006A2630, &qword_10057CB40);
      sub_100009ED0();

      sub_10000EA64();
    }

    return swift_willThrow();
  }
}

void sub_100351E4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t (*a13)(uint64_t a1, uint64_t a2), uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_100016EEC();
  a21 = v24;
  a22 = v25;
  sub_100010060();
  sub_100006AF0(0, &qword_1006A30E0, NSCompoundPredicate_ptr);
  sub_10026D814(&qword_1006A2EA0, &qword_10057CB60);
  sub_100008BA8();
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_10057DEC0;
  v27 = objc_opt_self();
  *(v26 + 32) = [v27 tu_predicateForConversationLinkDescriptorsWithActivated:1];
  *(v26 + 40) = [v27 tu_predicateForConversationLinkDescriptorsIsDeleted:0];
  v28 = sub_10000C350();
  sub_100007C2C();
  v29 = swift_allocObject();
  *(v29 + 16) = v23;
  *(v29 + 24) = v22;
  a13 = sub_10036A9C4;
  a14 = v29;
  sub_10000A204();
  a10 = 1107296256;
  sub_10000A8B8();
  a11 = v30;
  a12 = &unk_100629AE8;
  v31 = _Block_copy(&a9);
  v32 = v28;
  sub_10000667C();

  sub_10000D494();
  [v33 v34];
  _Block_release(v31);

  sub_10000B980();
}

uint64_t sub_100351FC0(uint64_t a1, uint64_t a2, void (*a3)(void *, uint64_t))
{
  if (!a1)
  {
    v6 = 0;
    goto LABEL_13;
  }

  v6 = _swiftEmptyArrayStorage;
  result = sub_10000B6F4(a1);
  if (!result)
  {
LABEL_13:
    a3(v6, a2);
    goto LABEL_14;
  }

  v8 = result;
  if (result < 1)
  {
    __break(1u);
    return result;
  }

  v9 = 0;
  do
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v10 = *(a1 + 8 * v9 + 32);
    }

    v11 = v10;
    v12 = [objc_allocWithZone(TUConversationLink) initWithDescriptor:v10];
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    ++v9;
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  while (v8 != v9);
  a3(_swiftEmptyArrayStorage, a2);
LABEL_14:
}

void sub_1003521B8(objc_class *a1, uint64_t a2, uint64_t a3)
{
  isa = a1;
  if (a1)
  {
    sub_100006AF0(0, &unk_1006A2C00, TUConversationLink_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  if (a2)
  {
    v6 = _convertErrorToNSError(_:)();
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  (*(a3 + 16))(a3, isa);
}

void sub_100352264()
{
  sub_100005EF4();
  v60 = v2;
  v61 = v0;
  v58 = v4;
  v59 = v3;
  v62 = v6;
  v63 = v5;
  v8 = v7;
  v9 = type metadata accessor for UUID();
  sub_100007FEC();
  v11 = v10;
  v13 = *(v12 + 64);
  v15 = __chkstk_darwin(v14);
  v57 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  sub_10000BB28();
  if (qword_1006A0B20 != -1)
  {
    sub_10000854C();
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_1000075F0(v16, qword_1006BA5E0);
  v17 = *(v11 + 16);
  v17(v1, v63, v9);

  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();

  v20 = os_log_type_enabled(v18, v19);
  v55 = v11;
  v56 = v8;
  if (v20)
  {
    v21 = sub_100007C08();
    v54 = v17;
    v22 = v21;
    v53 = swift_slowAlloc();
    v64 = v53;
    *v22 = 136315394;
    sub_100017230();
    sub_100369F50(v23, v24);
    HIDWORD(v52) = v19;
    v25 = dispatch thunk of CustomStringConvertible.description.getter();
    v27 = v26;
    v28 = *(v11 + 8);
    v29 = v9;
    v28(v1, v9);
    v30 = sub_10002741C(v25, v27, &v64);

    *(v22 + 4) = v30;
    *(v22 + 12) = 2080;
    v31 = sub_10029147C(v8);
    sub_10002741C(v31, v32, &v64);
    sub_100010264();

    *(v22 + 14) = v1;
    _os_log_impl(&_mh_execute_header, v18, BYTE4(v52), "Link manager asked to generate link for groupUUID %s with invitedHandles: %s", v22, 0x16u);
    swift_arrayDestroy();
    sub_100009ED0();

    v17 = v54;
    sub_100009ED0();
  }

  else
  {

    (*(v11 + 8))(v1, v9);
    v29 = v9;
  }

  v33 = v57;
  v17(v57, v63, v29);
  v34 = v55;
  v35 = (*(v55 + 80) + 16) & ~*(v55 + 80);
  v36 = (v13 + v35 + 7) & 0xFFFFFFFFFFFFFFF8;
  v37 = (v36 + 23) & 0xFFFFFFFFFFFFFFF8;
  v38 = (v37 + 15) & 0xFFFFFFFFFFFFFFF8;
  v39 = (v38 + 15) & 0xFFFFFFFFFFFFFFF8;
  v40 = swift_allocObject();
  (*(v34 + 4))(v40 + v35, v33, v29);
  v41 = (v40 + v36);
  v43 = v60;
  v42 = v61;
  *v41 = v58;
  v41[1] = v43;
  *(v40 + v37) = v42;
  v44 = v62;
  *(v40 + v38) = v62;
  *(v40 + v39) = v56;
  *(v40 + ((v39 + 15) & 0xFFFFFFFFFFFFFFF8)) = v59;

  v42;
  v45 = v44;
  sub_10035E798(v63, sub_10036A900, v40, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64);

  sub_100005EDC();
}

void sub_100352614(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), uint64_t a5, uint64_t a6, _DWORD *a7, uint64_t a8, uint64_t a9)
{
  v51 = a2;
  v15 = type metadata accessor for UUID();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v20 = &v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v49 = a1;
    v50 = a4;
    v21 = qword_1006A0B20;
    v22 = a1;
    if (v21 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_10000AF9C(v23, qword_1006BA5E0);
    (*(v16 + 16))(v20, a3, v15);
    v24 = v22;
    v25 = v51;
    swift_errorRetain();
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v26, v27))
    {
      v46 = v27;
      v47 = v26;
      v48 = a5;
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v52 = v30;
      *v28 = 136315650;
      sub_100369F50(&qword_1006A25E0, &type metadata accessor for UUID);
      v31 = dispatch thunk of CustomStringConvertible.description.getter();
      v33 = v32;
      (*(v16 + 8))(v20, v15);
      v34 = sub_10002741C(v31, v33, &v52);

      *(v28 + 4) = v34;
      *(v28 + 12) = 2112;
      *(v28 + 14) = v24;
      *v29 = v49;
      *(v28 + 22) = 2112;
      v35 = v24;
      if (v25)
      {
        swift_errorRetain();
        v36 = _swift_stdlib_bridgeErrorToNSError();
        v37 = v36;
      }

      else
      {
        v36 = 0;
        v37 = 0;
      }

      v39 = v50;
      v40 = v47;
      v41 = v46;
      *(v28 + 24) = v36;
      v29[1] = v37;
      _os_log_impl(&_mh_execute_header, v40, v41, "Refusing generation of a link descriptor for groupUUID %s as one already exists %@ (error: %@", v28, 0x20u);
      sub_10026D814(&unk_1006A2630, &qword_10057CB40);
      swift_arrayDestroy();

      sub_100009B7C(v30);
    }

    else
    {

      (*(v16 + 8))(v20, v15);
      v39 = v50;
    }

    v42 = [objc_allocWithZone(TUConversationLink) initWithDescriptor:v24];
    v43 = objc_allocWithZone(NSError);
    v44 = sub_100323698(0xD00000000000001ALL, 0x800000010056DE80, 5, 0);
    (v39)(v42, v44);
  }

  else
  {
    v38 = sub_100366E70(v17, v18);
    sub_100360184(a3, a7, a8, 1, a9, a4, a5, v38);
  }
}

void sub_100352BE0(uint64_t a1, void *a2, uint64_t a3, char *a4, void *a5)
{
  v34 = a3;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  _Block_copy(a5);
  if (qword_1006A0B20 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_10000AF9C(v13, qword_1006BA5E0);

  v14 = a2;
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();

  v17 = a1;
  if (os_log_type_enabled(v15, v16))
  {
    v18 = swift_slowAlloc();
    v31 = v10;
    v19 = v18;
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v35 = v30;
    *v19 = 136315394;
    v33 = a4;
    sub_100006AF0(0, &qword_1006A2640, TUHandle_ptr);
    v32 = v9;
    v17 = a1;
    sub_10000CE3C(&qword_1006A3C50, &qword_1006A2640, TUHandle_ptr);
    v20 = Set.description.getter();
    v22 = sub_10002741C(v20, v21, &v35);
    a4 = v33;

    *(v19 + 4) = v22;
    v9 = v32;
    *(v19 + 12) = 2112;
    *(v19 + 14) = v14;
    v23 = v29;
    *v29 = v14;
    v24 = v14;
    _os_log_impl(&_mh_execute_header, v15, v16, "Link manager asked to generate link with invitedHandles: %s, originatorHandle: %@", v19, 0x16u);
    sub_100009A04(v23, &unk_1006A2630, &qword_10057CB40);

    sub_100009B7C(v30);

    v10 = v31;
  }

  v25 = UUID.init()();
  v27 = sub_100366E70(v25, v26);
  _Block_copy(a5);
  sub_10035EB60(v12, v14, v17, 1, v34, a4, a5, v27);
  (*(v10 + 8))(v12, v9);
  _Block_release(a5);
  _Block_release(a5);
}

void sub_100352FFC(void *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  if (qword_1006A0B20 != -1)
  {
    sub_10000854C();
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_10000AF9C(v11, qword_1006BA5E0);
  v12 = a1;
  v13 = Logger.logObject.getter();
  static os_log_type_t.default.getter();

  if (sub_100033378())
  {
    sub_100007BFC();
    v14 = swift_slowAlloc();
    sub_100015DC0();
    v15 = swift_slowAlloc();
    *v14 = 138412290;
    *(v14 + 4) = v12;
    *v15 = v12;
    v16 = v12;
    sub_100008968(&_mh_execute_header, v17, v18, "Link manager asked to generate TUConversationLinkDescriptor for received TUConversationLink %@ (not locally owned)");
    sub_100009A04(v15, &unk_1006A2630, &qword_10057CB40);
    sub_100009ED0();

    sub_100018250();
  }

  v19 = [v12 pseudonym];
  if (!v19)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = String._bridgeToObjectiveC()();
  }

  v20 = [objc_opt_self() tu_predicateForConversationLinkDescriptorsWithPseudonym:v19];

  v21 = *&v6[OBJC_IVAR___CSDConversationLinkManager_dataSource];
  sub_100015D0C();
  v22 = swift_allocObject();
  *(v22 + 16) = v12;
  *(v22 + 24) = a4;
  *(v22 + 32) = a5;
  *(v22 + 40) = a3 & 1;
  *(v22 + 48) = v6;
  v28[4] = sub_10036A8E0;
  v28[5] = v22;
  sub_10000A204();
  v28[1] = 1107296256;
  sub_10000A8B8();
  v28[2] = v23;
  v28[3] = &unk_1006299D0;
  v24 = _Block_copy(v28);
  v25 = v12;
  v26 = v20;

  v27 = v6;

  [v21 conversationLinkDescriptorsWithPredicate:v26 limit:1 offset:0 completion:v24];
  _Block_release(v24);
}

uint64_t sub_100353254(uint64_t a1, uint64_t a2, void *a3, void (*a4)(void, uint64_t), void *a5, int a6, uint64_t a7)
{
  v101 = a7;
  v100 = a6;
  v103 = a4;
  v104 = a5;
  v9 = type metadata accessor for Date();
  v102 = *(v9 - 8);
  v10 = __chkstk_darwin(v9);
  v12 = &v93 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v93 - v13;
  v15 = type metadata accessor for UUID();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v19 = &v93 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v93 - v20;
  v22 = [a3 originatorHandle];
  if (!v22)
  {
    goto LABEL_15;
  }

  v23 = v22;
  v99 = v9;
  v24 = [a3 groupUUID];
  if (!v24)
  {
    goto LABEL_14;
  }

  v25 = v24;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v26 = [a3 creationDate];
  if (!v26)
  {
    (*(v16 + 8))(v21, v15);
LABEL_14:

LABEL_15:
    if (qword_1006A0B20 != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    sub_10000AF9C(v35, qword_1006BA5E0);
    v36 = a3;
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      *v39 = 138412290;
      *(v39 + 4) = v36;
      *v40 = v36;
      v41 = v36;
      _os_log_impl(&_mh_execute_header, v37, v38, "Received link %@ missing required field", v39, 0xCu);
      sub_100009A04(v40, &unk_1006A2630, &qword_10057CB40);
    }

    sub_100369E94();
    v42 = swift_allocError();
    *v43 = 13;
    v103(0, v42);
  }

  v27 = v26;
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  v28 = [a3 expirationDate];
  if (!v28)
  {

    (*(v102 + 8))(v14, v99);
    (*(v16 + 8))(v21, v15);
    goto LABEL_15;
  }

  v29 = v28;
  v98 = v16;
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  v30 = sub_100369594(a3);
  if (!v30)
  {

    v64 = *(v102 + 8);
    v65 = v99;
    v64(v12, v99);
    v64(v14, v65);
    (*(v98 + 8))(v21, v15);
    goto LABEL_15;
  }

  v96 = v30;
  v97 = swift_allocObject();
  v95 = v15;
  if (!a1 || !sub_10000B6F4(a1) || ((sub_10039C390(0, (a1 & 0xC000000000000001) == 0, a1), (a1 & 0xC000000000000001) != 0) ? (v31 = specialized _ArrayBuffer._getElementSlowPath(_:)()) : (v31 = *(a1 + 32)), v32 = v31, [v31 mutableCopy], v32, _bridgeAnyObjectToAny(_:)(), swift_unknownObjectRelease(), sub_100006AF0(0, &qword_1006A6738, TUMutableConversationLinkDescriptor_ptr), (swift_dynamicCast() & 1) == 0))
  {
    sub_100006AF0(0, &unk_1006A6780, TUConversationLinkOriginator_ptr);
    v45 = sub_100353E3C(v23);
    (*(v98 + 16))(v19, v21, v15);
    v94 = v45;
    v46 = [a3 pseudonym];
    v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v93 = v48;

    v49 = [a3 publicKey];
    v50 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v52 = v51;

    v53 = objc_allocWithZone(TUMutableConversationLinkDescriptor);
    v54 = v19;
    v55 = v94;
    v56 = sub_1003F7684(v54, v94, v47, v93, v50, v52);
    v34 = v97;
    *(v97 + 16) = v56;
    [v56 setActivated:1];
    v57 = *(v34 + 16);
    isa = Date._bridgeToObjectiveC()().super.isa;
    [v57 setCreationDate:isa];

    v33 = *(v34 + 16);
    goto LABEL_22;
  }

  v33 = v111;
  if (v100)
  {
    v34 = v97;
    *(v97 + 16) = v111;
LABEL_22:
    v59 = v33;
    v60 = Date._bridgeToObjectiveC()().super.isa;
    [v59 setExpirationDate:v60];

    sub_10036962C(v96, *(v34 + 16));
    v61 = *(v34 + 16);
    sub_1003698E0(a3, &selRef_linkName);
    if (v62)
    {
      v63 = String._bridgeToObjectiveC()();
    }

    else
    {
      v63 = 0;
    }

    v66 = v104;
    v67 = v101;
    [v61 setName:v63];

    v68 = swift_allocObject();
    v68[2] = v103;
    v68[3] = v66;
    v68[4] = v34;
    if (v100)
    {
      swift_beginAccess();
      v69 = *(v34 + 16);

      v70 = v69;
      sub_1003540EC();

      v104 = *(v67 + OBJC_IVAR___CSDConversationLinkManager_dataSource);
      sub_10026D814(&qword_1006A2EA0, &qword_10057CB60);
      v71 = swift_allocObject();
      *(v71 + 16) = xmmword_10057CA80;
      v72 = *(v34 + 16);
      *(v71 + 32) = v72;
      sub_100006AF0(0, &qword_1006A2E90, TUConversationLinkDescriptor_ptr);
      v73 = v72;
      v74.super.isa = Array._bridgeToObjectiveC()().super.isa;

      v109 = sub_10036A8F4;
      v110 = v68;
      aBlock = _NSConcreteStackBlock;
      v106 = 1107296256;
      v107 = sub_1003541FC;
      v108 = &unk_100629A70;
      v75 = _Block_copy(&aBlock);

      [v104 addOrUpdateConversationLinkDescriptors:v74.super.isa completion:v75];
    }

    else
    {
      v104 = *(v67 + OBJC_IVAR___CSDConversationLinkManager_dataSource);
      sub_10026D814(&qword_1006A2EA0, &qword_10057CB60);
      v76 = swift_allocObject();
      *(v76 + 16) = xmmword_10057CA80;
      swift_beginAccess();
      v77 = *(v34 + 16);
      *(v76 + 32) = v77;
      sub_100006AF0(0, &qword_1006A2E90, TUConversationLinkDescriptor_ptr);

      v78 = v77;
      v74.super.isa = Array._bridgeToObjectiveC()().super.isa;

      v109 = sub_10036A8F4;
      v110 = v68;
      aBlock = _NSConcreteStackBlock;
      v106 = 1107296256;
      v107 = sub_1003541FC;
      v108 = &unk_100629A48;
      v75 = _Block_copy(&aBlock);

      [v104 addConversationLinkDescriptors:v74.super.isa completion:v75];
    }

    _Block_release(v75);

    sub_1003EFBF8(0, 2);

    v79 = *(v102 + 8);
    v80 = v99;
    v79(v12, v99);
    v79(v14, v80);
    (*(v98 + 8))(v21, v95);
  }

  v81 = v99;
  if (qword_1006A0B20 != -1)
  {
    swift_once();
  }

  v82 = type metadata accessor for Logger();
  sub_10000AF9C(v82, qword_1006BA5E0);
  v83 = v33;
  v84 = Logger.logObject.getter();
  v85 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v84, v85))
  {
    v86 = swift_slowAlloc();
    v87 = v15;
    v88 = swift_slowAlloc();
    *v86 = 138412290;
    *(v86 + 4) = v83;
    *v88 = v83;
    v89 = v83;
    _os_log_impl(&_mh_execute_header, v84, v85, "%@ already existed and isUpdate: NO, ignoring", v86, 0xCu);
    sub_100009A04(v88, &unk_1006A2630, &qword_10057CB40);
    v15 = v87;
    v81 = v99;
  }

  sub_100369E94();
  v90 = swift_allocError();
  *v91 = 5;
  v103(0, v90);

  v92 = *(v102 + 8);
  v92(v12, v81);
  v92(v14, v81);
  (*(v98 + 8))(v21, v15);
  return swift_deallocUninitializedObject();
}

id sub_100353E3C(void *a1)
{
  if (qword_1006A0C10 != -1)
  {
    swift_once();
  }

  sub_1004330F4();
  v2 = sub_1004333C0();
  v3 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v4 = String._bridgeToObjectiveC()();

  v5 = [v3 initWithIdentifier:v4 revision:v2 handle:a1];

  return v5;
}

void sub_100353F10(char a1, uint64_t a2, void (*a3)(id, uint64_t), uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    swift_beginAccess();
    v8 = [objc_allocWithZone(TUConversationLink) initWithDescriptor:*(a5 + 16)];
    a3(v8, a2);
  }

  else
  {
    if (qword_1006A0B20 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_10000AF9C(v9, qword_1006BA5E0);

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138412290;
      swift_beginAccess();
      v14 = *(a5 + 16);
      *(v12 + 4) = v14;
      *v13 = v14;
      v15 = v14;
      _os_log_impl(&_mh_execute_header, v10, v11, "Failed to persist link %@", v12, 0xCu);
      sub_100009A04(v13, &unk_1006A2630, &qword_10057CB40);
    }

    a3(0, a2);
  }
}

void sub_1003540EC()
{
  v1 = v0;
  if (qword_1006A0C10 != -1)
  {
    swift_once();
  }

  v2 = sub_1004330F4();
  v4 = v3;
  v5 = sub_1004333C0();
  v6 = [v1 originator];
  v7 = [v6 handle];

  v8 = objc_allocWithZone(TUConversationLinkOriginator);
  v9 = sub_1003F7774(v2, v4, v5, v7);
  [v1 setOriginator:v9];
}

void sub_1003541FC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

void sub_100354334(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t (*a13)(uint64_t a1, uint64_t a2), void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_100035794();
  a23 = v25;
  a24 = v26;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v35 = objc_opt_self();
  v36 = String._bridgeToObjectiveC()();
  v37 = [v35 tu_predicateForConversationLinkDescriptorsWithPseudonym:v36];

  sub_100015D0C();
  v38 = swift_allocObject();
  v38[2] = v24;
  v38[3] = v30;
  v38[4] = v28;
  v38[5] = v34;
  v38[6] = v32;
  a13 = sub_10036A880;
  a14 = v38;
  sub_10000A204();
  a10 = 1107296256;
  sub_10000A8B8();
  a11 = v39;
  a12 = &unk_1006298E0;
  v40 = _Block_copy(&a9);
  v41 = v37;
  v42 = v24;
  sub_1000115CC(v30, v28);

  sub_10000C740();
  [v43 v44];
  _Block_release(v40);

  sub_10036BED4();
}

void sub_100354474(unint64_t a1, uint64_t a2, char *a3, void (*a4)(void, void), uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for Date();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    goto LABEL_9;
  }

  if (a1 >> 62)
  {
    if (!_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_9;
    }
  }

  else if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_9;
  }

  sub_10039C390(0, (a1 & 0xC000000000000001) == 0, a1);
  if ((a1 & 0xC000000000000001) != 0)
  {
    v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    v17 = *(a1 + 32);
  }

  v18 = v17;
  [v17 mutableCopy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_100006AF0(0, &qword_1006A6738, TUMutableConversationLinkDescriptor_ptr);
  if (swift_dynamicCast())
  {
    v19 = v33;
    [v33 setActivated:1];
    Date.init()();
    v20.super.isa = Date._bridgeToObjectiveC()().super.isa;
    v30 = a6;
    isa = v20.super.isa;
    (*(v14 + 8))(v16, v13);
    [v19 setCreationDate:isa];

    [v19 setDeletionDate:0];
    sub_1003540EC();
    v31 = *&a3[OBJC_IVAR___CSDConversationLinkManager_dataSource];
    sub_10026D814(&qword_1006A2EA0, &qword_10057CB60);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_10057CA80;
    *(v22 + 32) = v19;
    sub_100006AF0(0, &qword_1006A2E90, TUConversationLinkDescriptor_ptr);
    v23 = v19;
    v24 = Array._bridgeToObjectiveC()().super.isa;

    v25 = swift_allocObject();
    v25[2] = a4;
    v25[3] = a5;
    v26 = v30;
    v25[4] = a3;
    v25[5] = v26;
    v25[6] = a7;
    aBlock[4] = sub_10036A8B0;
    aBlock[5] = v25;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1003541FC;
    aBlock[3] = &unk_100629930;
    v27 = _Block_copy(aBlock);
    sub_1000115CC(a4, a5);
    v28 = a3;

    [v31 addOrUpdateConversationLinkDescriptors:v24 completion:v27];
    _Block_release(v27);

    return;
  }

LABEL_9:
  if (a4)
  {
    a4(0, 0);
  }
}