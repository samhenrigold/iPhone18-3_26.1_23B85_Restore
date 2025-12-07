uint64_t sub_10017614C()
{
  v1 = v0[177];
  v2 = v0[14];
  v3 = v0[11];
  v5 = v0[8];
  v4 = v0[9];
  v6 = v0[7];
  v7 = v0[5];
  sub_10018002C(&qword_1002D5F90, &type metadata accessor for WIS.XPC.MapsSuggestionsPredictionSimulateFlightTravelResponse, &protocol conformance descriptor for WIS.XPC.MapsSuggestionsPredictionSimulateFlightTravelResponse);
  XPCReceivedMessage.reply<A>(_:)();
  v8 = type metadata accessor for XPCReceivedMessage();
  (*(*(v8 - 8) + 8))(v7, v8);
  (*(v5 + 8))(v4, v6);
  v1(v2, v3);

  v9 = v0[1];

  return v9();
}

double sub_100176684@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for XPCReceivedMessage();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v8 = sub_100164A3C(&qword_1002D7180, &qword_10024ABF0);
  __chkstk_darwin(v8 - 8);
  v10 = &v15 - v9;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  (*(v6 + 16))(&v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v5);
  v12 = (*(v6 + 80) + 40) & ~*(v6 + 80);
  v13 = swift_allocObject();
  *(v13 + 2) = 0;
  *(v13 + 3) = 0;
  *(v13 + 4) = v2;
  (*(v6 + 32))(&v13[v12], &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);

  sub_100176B80(0, 0, v10, &unk_100249E98, v13);

  *(a2 + 32) = 0;
  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  return result;
}

uint64_t sub_100176878(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = type metadata accessor for XPCReceivedMessage();
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();

  return _swift_task_switch(sub_100176938, 0, 0);
}

uint64_t sub_100176938()
{
  v1 = v0[2];
  (*(v0[5] + 16))(v0[6], v0[3], v0[4]);
  v5 = (*(*v1 + 216) + **(*v1 + 216));
  v2 = swift_task_alloc();
  v0[7] = v2;
  *v2 = v0;
  v2[1] = sub_100176A70;
  v3 = v0[6];

  return v5(v3);
}

uint64_t sub_100176A70()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100176B80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100164A3C(&qword_1002D7180, &qword_10024ABF0);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_10017FF88(a3, v25 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1000157F0(v11, &qword_1002D7180, &qword_10024ABF0);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_1000157F0(a3, &qword_1002D7180, &qword_10024ABF0);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1000157F0(a3, &qword_1002D7180, &qword_10024ABF0);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_100176E70()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for XPCServer();
  sub_100003E50(&off_1002B5FA8, v3);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "Peer session cancelled", v6, 2u);
  }

  return (*(v1 + 8))(v3, v0);
}

void sub_100176FB8(uint64_t a1)
{
  type metadata accessor for UUID();
  sub_10018002C(&qword_1002D6088, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  Hasher._combine(_:)(*(v1 + 128));
}

uint64_t sub_10017704C()
{

  v1 = OBJC_IVAR____TtCC17wirelessinsightsd9XPCServer11PeerHandler_id;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_100164B98((v0 + OBJC_IVAR____TtCC17wirelessinsightsd9XPCServer11PeerHandler_metricSubmitter));

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

Swift::Int sub_100177104()
{
  Hasher.init(_seed:)();
  (*(*v0 + 240))(v2);
  return Hasher._finalize()();
}

Swift::Int sub_100177274(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  (*(*v2 + 240))(v4);
  return Hasher._finalize()();
}

BOOL sub_1001772D4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return (static UUID.== infix(_:_:)() & 1) != 0 && *(v2 + 128) == *(v3 + 128);
}

uint64_t sub_100177360(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 160) = a1;
}

uint64_t sub_100177430(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 168) = a1;
}

uint64_t sub_100177500(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 176) = a1;
}

void *sub_100177598()
{
  if (*(v0 + 184))
  {
    v1 = *(v0 + 184);
  }

  else
  {
    v1 = &_swiftEmptySetSingleton;
    *(v0 + 184) = &_swiftEmptySetSingleton;
  }

  return v1;
}

Swift::Int sub_1001775D8()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Int sub_100177644(uint64_t a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

uint64_t sub_100177684()
{
  *(v1 + 16) = v0;
  v4 = (*(*v0 + 272) + **(*v0 + 272));
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1001777A0;

  return v4();
}

uint64_t sub_1001777A0()
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
    v6 = *(v2 + 16);

    return _swift_task_switch(sub_1001778E4, v6, 0);
  }
}

uint64_t sub_1001778E4()
{
  v1 = *(v0 + 16);
  v2 = (*(*v1 + 304))();
  (*(*v1 + 168))(v2);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100177994(_DWORD *a1)
{
  v4 = sub_100177598();

  sub_10017B410(&v5, a1);

  *(v1 + 184) = v4;
}

uint64_t sub_100177A0C()
{
  v1[2] = v0;
  v1[3] = *v0;
  type metadata accessor for XPCListener.InitializationOptions();
  v1[4] = swift_task_alloc();

  return _swift_task_switch(sub_100177AC4, v0, 0);
}

uint64_t sub_100177AC4()
{
  v1 = v0[3];
  v2 = *(v0[2] + 136);
  v3 = swift_allocObject();
  swift_weakInit();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = v1;

  v5 = v2;

  static XPCListener.InitializationOptions.none.getter();
  type metadata accessor for XPCListener();
  swift_allocObject();
  v6 = XPCListener.init(service:targetQueue:options:incomingSessionHandler:)();

  (*(*v0[2] + 216))(v6);

  v7 = v0[1];

  return v7();
}

uint64_t sub_100177C50@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return dispatch thunk of XPCListener.IncomingSessionRequest.reject(reason:)();
  }

  v40 = a3;
  v41 = Strong;
  v36 = v10;
  v37 = v8;
  v38 = v7;
  v42 = a4;
  type metadata accessor for audit_token_t();
  XPCListener.IncomingSessionRequest.withUnsafeAuditToken<A>(_:)();
  v39 = a1;
  v12 = atoken.val[0];
  v13 = atoken.val[1];
  v14 = atoken.val[2];
  v15 = atoken.val[3];
  v17 = atoken.val[4];
  v16 = atoken.val[5];
  v18 = atoken.val[6];
  v19 = atoken.val[7];
  v20 = audit_token_to_pid(&atoken);
  v21 = v12 | (v13 << 32);
  v22 = v14 | (v15 << 32);
  v23 = sub_10017F530(v21, v22, v17 | (v16 << 32), v18 | (v19 << 32));
  v24 = sub_10017F898(v21, v22, v17 | (v16 << 32), v18 | (v19 << 32));
  v26 = v25;
  if (*(v23 + 2))
  {
    v27 = __chkstk_darwin(v24);
    *(&v35 - 12) = v20;
    *(&v35 - 5) = v23;
    *(&v35 - 4) = v27;
    v28 = v40;
    v29 = v41;
    *(&v35 - 3) = v26;
    *(&v35 - 2) = v29;
    *(&v35 - 1) = v28;
    type metadata accessor for XPCServer.PeerHandler(0);
    sub_10018002C(&qword_1002D63B8, type metadata accessor for XPCServer.PeerHandler, &unk_100249EE8);
    dispatch thunk of XPCListener.IncomingSessionRequest.accept<A>(_:)();
  }

  else
  {

    v31 = v36;
    sub_100003E50(&off_1002B5FA8, v36);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&_mh_execute_header, v32, v33, "Missing entitlement.", v34, 2u);
    }

    (*(v37 + 8))(v31, v38);
    dispatch thunk of XPCListener.IncomingSessionRequest.reject(reason:)();
  }
}

uint64_t sub_100177FC8@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t sub_100177FD4@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v31 = a4;
  v32 = a5;
  v30 = a2;
  v11 = sub_100164A3C(&qword_1002D7180, &qword_10024ABF0);
  __chkstk_darwin(v11 - 8);
  v13 = &v28 - v12;
  v14 = type metadata accessor for Logger();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003E50(&off_1002B5FA8, v17);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v29 = v13;
    *v20 = 0;
    _os_log_impl(&_mh_execute_header, v18, v19, "Received message.", v20, 2u);
    v13 = v29;
  }

  (*(v15 + 8))(v17, v14);
  v21 = *(a6 + 112);

  XPCEventPublisher.Token.rawValue.getter();
  v34 = &type metadata for PredictionMetric.CoreAnalyticsSubmitter;
  v35 = &off_1002B54A8;
  type metadata accessor for XPCServer.PeerHandler(0);
  v22 = swift_allocObject();
  swift_defaultActor_initialize();
  UUID.init()();
  *(v22 + OBJC_IVAR____TtCC17wirelessinsightsd9XPCServer11PeerHandler_subscriptions) = &_swiftEmptySetSingleton;
  *(v22 + 112) = a1;
  *(v22 + 120) = v21;
  *(v22 + 128) = v30;
  v23 = v31;
  v24 = v32;
  *(v22 + 136) = a3;
  *(v22 + 144) = v23;
  *(v22 + 152) = v24;
  sub_10001A700(&v33, v22 + OBJC_IVAR____TtCC17wirelessinsightsd9XPCServer11PeerHandler_metricSubmitter);
  v25 = type metadata accessor for TaskPriority();
  (*(*(v25 - 8) + 56))(v13, 1, 1, v25);
  v26 = swift_allocObject();
  v26[2] = 0;
  v26[3] = 0;
  v26[4] = a6;
  v26[5] = v22;

  sub_100176B80(0, 0, v13, &unk_10024A1B0, v26);

  *a7 = v22;
  return result;
}

uint64_t sub_100178304(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = *a4 + 264;
  v5[4] = *v6;
  v5[5] = v6 & 0xFFFFFFFFFFFFLL | 0x19000000000000;
  return _swift_task_switch(sub_100014384, a4, 0);
}

uint64_t sub_100178348(uint64_t a1)
{
  v2[9] = a1;
  v2[10] = v1;
  updated = type metadata accessor for WIS.XPC.UpdateType();
  v2[11] = updated;
  v2[12] = *(updated - 8);
  v2[13] = swift_task_alloc();

  return _swift_task_switch(sub_100178408, v1, 0);
}

uint64_t sub_100178408()
{
  result = sub_100177598();
  if ((result & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    type metadata accessor for XPCServer.PeerHandler(0);
    sub_10018002C(&qword_1002D6090, type metadata accessor for XPCServer.PeerHandler, &unk_100249F28);
    Set.Iterator.init(_cocoa:)();
    result = v0[2];
    v2 = v0[3];
    v3 = v0[4];
    v4 = v0[5];
    v5 = v0[6];
    v0[14] = result;
    v0[15] = v2;
    v0[16] = v3;
    v0[17] = 0;
    if (result < 0)
    {
      v17 = __CocoaSet.Iterator.next()();
      if (!v17)
      {
LABEL_19:
        sub_10017F9D4(v0[14]);

        v18 = v0[1];

        return v18();
      }

      v0[8] = v17;
      swift_dynamicCast();
      v14 = v0[7];
      v10 = v4;
      v13 = v5;
LABEL_13:
      v0[19] = v10;
      v0[20] = v13;
      v0[18] = v14;
      if (v14)
      {
        WIS.XPC.ServicePredictionUpdate.updateType.getter();
        v19 = (*(*v14 + 176) + **(*v14 + 176));
        v15 = swift_task_alloc();
        v0[21] = v15;
        *v15 = v0;
        v15[1] = sub_100178718;
        v16 = v0[13];

        return v19(v16);
      }

      goto LABEL_19;
    }

    v6 = v3 + 64;
  }

  else
  {
    v4 = 0;
    v7 = -1;
    v8 = -1 << *(result + 32);
    v2 = result + 56;
    if (-v8 < 64)
    {
      v7 = ~(-1 << -v8);
    }

    v5 = v7 & *(result + 56);
    v0[14] = result;
    v0[15] = v2;
    v6 = 63 - v8;
    v0[16] = ~v8;
    v0[17] = 0;
  }

  v9 = v5;
  v10 = v4;
  if (v5)
  {
LABEL_12:
    v13 = (v9 - 1) & v9;
    v14 = *(*(result + 48) + ((v10 << 9) | (8 * __clz(__rbit64(v9)))));

    goto LABEL_13;
  }

  v11 = v6 >> 6;
  v12 = v4;
  while (1)
  {
    v10 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v10 >= v11)
    {
      goto LABEL_19;
    }

    v9 = *(v2 + 8 * v10);
    ++v12;
    if (v9)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100178718(char a1)
{
  v2 = *(*v1 + 104);
  v3 = *(*v1 + 96);
  v4 = *(*v1 + 88);
  v5 = *(*v1 + 80);
  *(*v1 + 176) = a1;

  (*(v3 + 8))(v2, v4);

  return _swift_task_switch(sub_10017888C, v5, 0);
}

uint64_t sub_10017888C()
{
  if (*(v0 + 176))
  {
    v1 = *(v0 + 136);
    type metadata accessor for WIS.XPC.ServicePredictionUpdate();
    sub_10018002C(&qword_1002D6098, &type metadata accessor for WIS.XPC.ServicePredictionUpdate, &protocol conformance descriptor for WIS.XPC.ServicePredictionUpdate);

    dispatch thunk of XPCSession.send<A>(_:)();
    if (v1)
    {
    }

    v2 = 0;
  }

  else
  {
    v2 = *(v0 + 136);
  }

  v4 = *(v0 + 152);
  v5 = *(v0 + 160);
  *(v0 + 136) = v2;
  v6 = *(v0 + 112);
  if (v6 < 0)
  {
    v12 = __CocoaSet.Iterator.next()();
    if (!v12)
    {
LABEL_19:
      sub_10017F9D4(*(v0 + 112));

      v15 = *(v0 + 8);

      return v15();
    }

    *(v0 + 64) = v12;
    type metadata accessor for XPCServer.PeerHandler(0);
    swift_dynamicCast();
    v11 = *(v0 + 56);
    v8 = v4;
    v10 = v5;
LABEL_15:
    *(v0 + 152) = v8;
    *(v0 + 160) = v10;
    *(v0 + 144) = v11;
    if (v11)
    {
      WIS.XPC.ServicePredictionUpdate.updateType.getter();
      v16 = (*(*v11 + 176) + **(*v11 + 176));
      v13 = swift_task_alloc();
      *(v0 + 168) = v13;
      *v13 = v0;
      v13[1] = sub_100178718;
      v14 = *(v0 + 104);

      return v16(v14);
    }

    goto LABEL_19;
  }

  v7 = v5;
  v8 = v4;
  if (v5)
  {
LABEL_12:
    v10 = (v7 - 1) & v7;
    v11 = *(*(v6 + 48) + ((v8 << 9) | (8 * __clz(__rbit64(v7)))));

    goto LABEL_15;
  }

  v9 = v4;
  while (1)
  {
    v8 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v8 >= ((*(v0 + 128) + 64) >> 6))
    {
      goto LABEL_19;
    }

    v7 = *(*(v0 + 120) + 8 * v8);
    ++v9;
    if (v7)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100178B7C(uint64_t a1)
{
  v2[9] = a1;
  v2[10] = v1;
  updated = type metadata accessor for WIS.XPC.UpdateType();
  v2[11] = updated;
  v2[12] = *(updated - 8);
  v2[13] = swift_task_alloc();

  return _swift_task_switch(sub_100178C3C, v1, 0);
}

uint64_t sub_100178C3C()
{
  result = sub_100177598();
  if ((result & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    type metadata accessor for XPCServer.PeerHandler(0);
    sub_10018002C(&qword_1002D6090, type metadata accessor for XPCServer.PeerHandler, &unk_100249F28);
    Set.Iterator.init(_cocoa:)();
    result = v0[2];
    v2 = v0[3];
    v3 = v0[4];
    v4 = v0[5];
    v5 = v0[6];
    v0[14] = result;
    v0[15] = v2;
    v0[16] = v3;
    v0[17] = 0;
    if (result < 0)
    {
      v17 = __CocoaSet.Iterator.next()();
      if (!v17)
      {
LABEL_19:
        sub_10017F9D4(v0[14]);

        v18 = v0[1];

        return v18();
      }

      v0[8] = v17;
      swift_dynamicCast();
      v14 = v0[7];
      v10 = v4;
      v13 = v5;
LABEL_13:
      v0[19] = v10;
      v0[20] = v13;
      v0[18] = v14;
      if (v14)
      {
        WIS.XPC.PrivateServicePredictionUpdate.updateType.getter();
        v19 = (*(*v14 + 176) + **(*v14 + 176));
        v15 = swift_task_alloc();
        v0[21] = v15;
        *v15 = v0;
        v15[1] = sub_100178F4C;
        v16 = v0[13];

        return v19(v16);
      }

      goto LABEL_19;
    }

    v6 = v3 + 64;
  }

  else
  {
    v4 = 0;
    v7 = -1;
    v8 = -1 << *(result + 32);
    v2 = result + 56;
    if (-v8 < 64)
    {
      v7 = ~(-1 << -v8);
    }

    v5 = v7 & *(result + 56);
    v0[14] = result;
    v0[15] = v2;
    v6 = 63 - v8;
    v0[16] = ~v8;
    v0[17] = 0;
  }

  v9 = v5;
  v10 = v4;
  if (v5)
  {
LABEL_12:
    v13 = (v9 - 1) & v9;
    v14 = *(*(result + 48) + ((v10 << 9) | (8 * __clz(__rbit64(v9)))));

    goto LABEL_13;
  }

  v11 = v6 >> 6;
  v12 = v4;
  while (1)
  {
    v10 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v10 >= v11)
    {
      goto LABEL_19;
    }

    v9 = *(v2 + 8 * v10);
    ++v12;
    if (v9)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100178F4C(char a1)
{
  v2 = *(*v1 + 104);
  v3 = *(*v1 + 96);
  v4 = *(*v1 + 88);
  v5 = *(*v1 + 80);
  *(*v1 + 176) = a1;

  (*(v3 + 8))(v2, v4);

  return _swift_task_switch(sub_1001790C0, v5, 0);
}

uint64_t sub_1001790C0()
{
  if (*(v0 + 176))
  {
    v1 = *(v0 + 136);
    type metadata accessor for WIS.XPC.PrivateServicePredictionUpdate();
    sub_10018002C(&qword_1002D60A0, &type metadata accessor for WIS.XPC.PrivateServicePredictionUpdate, &protocol conformance descriptor for WIS.XPC.PrivateServicePredictionUpdate);

    dispatch thunk of XPCSession.send<A>(_:)();
    if (v1)
    {
    }

    v2 = 0;
  }

  else
  {
    v2 = *(v0 + 136);
  }

  v4 = *(v0 + 152);
  v5 = *(v0 + 160);
  *(v0 + 136) = v2;
  v6 = *(v0 + 112);
  if (v6 < 0)
  {
    v12 = __CocoaSet.Iterator.next()();
    if (!v12)
    {
LABEL_19:
      sub_10017F9D4(*(v0 + 112));

      v15 = *(v0 + 8);

      return v15();
    }

    *(v0 + 64) = v12;
    type metadata accessor for XPCServer.PeerHandler(0);
    swift_dynamicCast();
    v11 = *(v0 + 56);
    v8 = v4;
    v10 = v5;
LABEL_15:
    *(v0 + 152) = v8;
    *(v0 + 160) = v10;
    *(v0 + 144) = v11;
    if (v11)
    {
      WIS.XPC.PrivateServicePredictionUpdate.updateType.getter();
      v16 = (*(*v11 + 176) + **(*v11 + 176));
      v13 = swift_task_alloc();
      *(v0 + 168) = v13;
      *v13 = v0;
      v13[1] = sub_100178F4C;
      v14 = *(v0 + 104);

      return v16(v14);
    }

    goto LABEL_19;
  }

  v7 = v5;
  v8 = v4;
  if (v5)
  {
LABEL_12:
    v10 = (v7 - 1) & v7;
    v11 = *(*(v6 + 48) + ((v8 << 9) | (8 * __clz(__rbit64(v7)))));

    goto LABEL_15;
  }

  v9 = v4;
  while (1)
  {
    v8 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v8 >= ((*(v0 + 128) + 64) >> 6))
    {
      goto LABEL_19;
    }

    v7 = *(*(v0 + 120) + 8 * v8);
    ++v9;
    if (v7)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1001793B0()
{
  v1 = *v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for XPCDictionary();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = (*(v1 + 160))(v8);
  if (v11)
  {
    v12 = v11;
    XPCDictionary.init()();
    v13 = XPCDictionary.subscript.setter();
    result = (*(*v0 + 184))(v13);
    v15 = result;
    v16 = 0;
    v17 = result + 56;
    v18 = 1 << *(result + 32);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v20 = v19 & *(result + 56);
    for (i = (v18 + 63) >> 6; v20; result = (*(*v12 + 128))(v10, v24, v25 & 1))
    {
      v22 = v16;
LABEL_10:
      v23 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
      v24 = *(*(v15 + 48) + ((v22 << 9) | (8 * v23)));
      v25 = static xpc_event_publisher_action_t.remove.getter();
    }

    while (1)
    {
      v22 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v22 >= i)
      {
        (*(v7 + 8))(v10, v6);
      }

      v20 = *(v17 + 8 * v22);
      ++v16;
      if (v20)
      {
        v16 = v22;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
    sub_100003E50(&off_1002B5FA8, v5);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v26, v27, "Publisher is nil. Cannot send XPC event", v28, 2u);
    }

    return (*(v3 + 8))(v5, v2);
  }

  return result;
}

uint64_t sub_100179724()
{
  v1 = *v0;
  v32 = type metadata accessor for Logger();
  v2 = *(v32 - 8);
  v3 = __chkstk_darwin(v32);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v3);
  v8 = &v31 - v7;
  __chkstk_darwin(v6);
  v10 = &v31 - v9;
  type metadata accessor for XPCEventPublisher();
  v12 = v0[18];
  v11 = v0[19];
  v13 = v0[17];

  v14 = XPCEventPublisher.__allocating_init(streamName:queue:)(v12, v11, v13);
  if (v14)
  {
    v15 = swift_allocObject();
    *(v15 + 16) = v1;
    (*(*v14 + 120))(sub_10017F9DC, v15);

    v16 = swift_allocObject();
    *(v16 + 16) = v0;
    *(v16 + 24) = v1;
    v17 = *(*v14 + 112);

    v17(sub_10017F9E8, v16);

    sub_100003E50(&off_1002B5FA8, v10);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "Setup event publisher activating", v20, 2u);
    }

    v21 = *(v2 + 8);
    v22 = v32;
    v23 = v21(v10, v32);
    (*(*v14 + 104))(v23);
    sub_100003E50(&off_1002B5FA8, v8);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "Setup event publisher success. Returning...", v26, 2u);
    }

    v21(v8, v22);
  }

  else
  {
    sub_100003E50(&off_1002B5FA8, v5);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "Setup publisher failed. Returning...", v29, 2u);
    }

    (*(v2 + 8))(v5, v32);
  }

  return v14;
}

uint64_t sub_100179B60(uint64_t a1, uint64_t a2, char a3)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003E50(&off_1002B5FA8, v9);
  v10 = a3 & 1;
  sub_10017FE14(a1, a2, v10);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.error.getter();
  sub_10017FE24(a1, a2, v10);
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v20 = v6;
    v14 = v13;
    v15 = swift_slowAlloc();
    *v14 = 138412290;
    sub_10017FE34();
    swift_allocError();
    *v16 = a1;
    *(v16 + 8) = a2;
    *(v16 + 16) = v10;
    sub_10017FE14(a1, a2, v10);
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 4) = v17;
    *v15 = v17;
    _os_log_impl(&_mh_execute_header, v11, v12, "XPC Event publisher error received: %@", v14, 0xCu);
    sub_1000157F0(v15, &unk_1002D7190, &qword_10024B0F0);

    v6 = v20;
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_100179D7C(uint64_t a1, uint64_t a2)
{
  v61 = a2;
  v3 = type metadata accessor for XPCDictionary();
  v57 = *(v3 - 8);
  v4 = __chkstk_darwin(v3);
  v56 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v58 = &v54 - v6;
  v62 = type metadata accessor for XPCEventPublisher.SubscriptionAction(0);
  __chkstk_darwin(v62);
  v8 = (&v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v55 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v15 = &v54 - v14;
  v16 = __chkstk_darwin(v13);
  v60 = &v54 - v17;
  v18 = __chkstk_darwin(v16);
  v59 = &v54 - v19;
  __chkstk_darwin(v18);
  v21 = &v54 - v20;
  sub_100003E50(&off_1002B5FA8, &v54 - v20);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v54 = a1;
    *v24 = 0;
    _os_log_impl(&_mh_execute_header, v22, v23, "Handler subscription action received.", v24, 2u);
    a1 = v54;
  }

  v27 = *(v10 + 8);
  v26 = v10 + 8;
  v25 = v27;
  v27(v21, v9);
  sub_10017FD5C(a1, v8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v29 = *v8;
      sub_100003E50(&off_1002B5FA8, v15);
      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&_mh_execute_header, v30, v31, "Removing member from subscriber set", v32, 2u);
      }

      v25(v15, v9);
      v33 = (*(*v61 + 200))(v64);
      sub_10017E148(v29);
      return v33(v64, 0);
    }

    else
    {
      v49 = v55;
      sub_100003E50(&off_1002B5FA8, v55);
      v50 = Logger.logObject.getter();
      v51 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        *v52 = 0;
        _os_log_impl(&_mh_execute_header, v50, v51, "Handler subscription action of type initialBarrier received. Noop", v52, 2u);
      }

      return (v25)(v49, v9);
    }
  }

  else
  {
    v62 = v26;
    v35 = v9;
    v55 = *v8;
    v36 = sub_100164A3C(&qword_1002D5E38, &qword_100249DA0);
    v37 = v57;
    v38 = v8 + *(v36 + 48);
    v39 = v58;
    (*(v57 + 32))(v58, v38, v3);
    sub_100003E50(&off_1002B5FA8, v59);
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 134217984;
      *(v42 + 4) = v55;
      _os_log_impl(&_mh_execute_header, v40, v41, "Inserting new member to subscriber set with token: %llu", v42, 0xCu);
    }

    v25(v59, v9);
    sub_100003E50(&off_1002B5FA8, v60);
    v43 = v56;
    (*(v37 + 16))(v56, v39, v3);
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 134217984;
      v47 = XPCDictionary.count.getter();
      v48 = *(v37 + 8);
      v48(v43, v3);
      *(v46 + 4) = v47;
      _os_log_impl(&_mh_execute_header, v44, v45, "Descriptor key count=%ld", v46, 0xCu);
      v39 = v58;
    }

    else
    {
      v48 = *(v37 + 8);
      v48(v43, v3);
    }

    v25(v60, v35);
    v53 = (*(*v61 + 200))(v64);
    sub_10017B690(v63, v55);
    v53(v64, 0);
    return (v48)(v39, v3);
  }
}

uint64_t sub_10017A4E0()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_10017A540()
{
  sub_10017A4E0();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_10017A56C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  type metadata accessor for XPCServer();

  return sub_100003E50(a1, a2);
}

BOOL sub_10017A5C4(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v3 = *(a2 + 16);
  do
  {
    v4 = v2;
    if (v3 == v2)
    {
      break;
    }

    type metadata accessor for WIS.XPC.Entitlement();
    ++v2;
    sub_10018002C(&qword_1002D63D0, &type metadata accessor for WIS.XPC.Entitlement, &protocol conformance descriptor for WIS.XPC.Entitlement);
  }

  while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0);
  return v3 != v4;
}

void *sub_10017A6D0(void *result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100164A3C(&qword_1002D63B0, &qword_10024A1A0);
  v10 = *(type metadata accessor for WIS.XPC.Entitlement() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for WIS.XPC.Entitlement() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

unint64_t sub_10017A8A8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10017A974(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_1001675EC(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100164B98(v11);
  return v7;
}

unint64_t sub_10017A974(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_10017AA80(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = _StringObject.sharedUTF8.getter();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_10017AA80(uint64_t a1, unint64_t a2)
{
  v3 = sub_10017AACC(a1, a2);
  sub_10017ABFC(&off_1002B5EB8);
  return v3;
}

void *sub_10017AACC(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return _swiftEmptyArrayStorage;
  }

  v6 = sub_10017ACE8(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return _swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_10017ACE8(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_10017ABFC(uint64_t result)
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
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_10017AD5C(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_10017ACE8(uint64_t a1, uint64_t a2)
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

  sub_100164A3C(&qword_1002D6740, &qword_10024A630);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_10017AD5C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100164A3C(&qword_1002D6740, &qword_10024A630);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_10017AE50(uint64_t a1, char *a2)
{
  v3 = v2;
  updated = type metadata accessor for WIS.XPC.UpdateType();
  v7 = *(updated - 8);
  __chkstk_darwin(updated);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_10018002C(&qword_1002D63E0, &type metadata accessor for WIS.XPC.UpdateType, &protocol conformance descriptor for WIS.XPC.UpdateType);
  v33 = a2;
  v11 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, updated);
      sub_10018002C(&qword_1002D63E8, &type metadata accessor for WIS.XPC.UpdateType, &protocol conformance descriptor for WIS.XPC.UpdateType);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      v22 = *v19;
      (*v19)(v9, updated);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, updated);
    v20(v29, *(v32 + 48) + v18 * v14, updated);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, updated);
    v34 = *v3;
    sub_10017C62C(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, updated);
    return 1;
  }
}

uint64_t sub_10017B130(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = type metadata accessor for WIS.XPC.Entitlement();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_10018002C(&qword_1002D63C8, &type metadata accessor for WIS.XPC.Entitlement, &protocol conformance descriptor for WIS.XPC.Entitlement);
  v33 = a2;
  v11 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_10018002C(&qword_1002D63D0, &type metadata accessor for WIS.XPC.Entitlement, &protocol conformance descriptor for WIS.XPC.Entitlement);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_10017C8F4(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_10017B410(void *a1, _DWORD *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = __CocoaSet.member(for:)();

    if (v8)
    {

      v22[9] = v8;
      type metadata accessor for XPCServer.PeerHandler(0);
      swift_dynamicCast();
      result = 0;
      *a1 = v22[0];
      return result;
    }

    result = __CocoaSet.count.getter();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v18 = sub_10017B7C8(v7, result + 1);
    v22[0] = v18;
    v19 = *(v18 + 16);
    if (*(v18 + 24) <= v19)
    {
      sub_10017C0A0(v19 + 1);
      v18 = v22[0];
    }

    sub_10017C568(v20, v18);

    *v3 = v18;
    *a1 = a2;
  }

  else
  {
    Hasher.init(_seed:)();
    (*(*a2 + 240))(v22);
    v10 = Hasher._finalize()();
    v11 = -1 << *(v6 + 32);
    v12 = v10 & ~v11;
    if ((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
    {
      v13 = ~v11;
      do
      {
        v14 = *(*(v6 + 48) + 8 * v12);

        if (static UUID.== infix(_:_:)())
        {
          v15 = *(v14 + 128);

          if (v15 == a2[32])
          {

            *a1 = *(*(v6 + 48) + 8 * v12);

            return 0;
          }
        }

        else
        {
        }

        v12 = (v12 + 1) & v13;
      }

      while (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22[0] = *v3;

    sub_10017CBBC(v17, v12, isUniquelyReferenced_nonNull_native);
    *v3 = v22[0];
    *a1 = a2;
  }

  return 1;
}

uint64_t sub_10017B690(void *a1, uint64_t a2)
{
  v5 = *v2;
  sub_10017FDC0();
  v6 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    sub_100168738();
    while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
    a2 = *(*(v5 + 48) + 8 * v8);
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_10017CD84(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

Swift::Int sub_10017B7C8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_100164A3C(&qword_1002D63C0, &qword_10024A1B8);
    v2 = static _SetStorage.convert(_:capacity:)();
    v19 = v2;
    __CocoaSet.makeIterator()();
    v3 = __CocoaSet.Iterator.next()();
    if (v3)
    {
      v4 = v3;
      type metadata accessor for XPCServer.PeerHandler(0);
      v5 = v4;
      do
      {
        v18[0] = v5;
        swift_dynamicCast();
        v13 = *(v2 + 16);
        if (*(v2 + 24) <= v13)
        {
          sub_10017C0A0(v13 + 1);
        }

        v6 = v18[9];
        v2 = v19;
        Hasher.init(_seed:)();
        (*(*v6 + 240))(v18);
        result = Hasher._finalize()();
        v8 = v2 + 56;
        v9 = -1 << *(v2 + 32);
        v10 = result & ~v9;
        v11 = v10 >> 6;
        if (((-1 << v10) & ~*(v2 + 56 + 8 * (v10 >> 6))) != 0)
        {
          v12 = __clz(__rbit64((-1 << v10) & ~*(v2 + 56 + 8 * (v10 >> 6)))) | v10 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v14 = 0;
          v15 = (63 - v9) >> 6;
          do
          {
            if (++v11 == v15 && (v14 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v16 = v11 == v15;
            if (v11 == v15)
            {
              v11 = 0;
            }

            v14 |= v16;
            v17 = *(v8 + 8 * v11);
          }

          while (v17 == -1);
          v12 = __clz(__rbit64(~v17)) + (v11 << 6);
        }

        *(v8 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
        *(*(v2 + 48) + 8 * v12) = v6;
        ++*(v2 + 16);
        v5 = __CocoaSet.Iterator.next()();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

uint64_t sub_10017B9E8(uint64_t a1)
{
  v2 = v1;
  updated = type metadata accessor for WIS.XPC.UpdateType();
  v3 = *(updated - 8);
  __chkstk_darwin(updated);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  sub_100164A3C(&qword_1002D63F0, &qword_10024A1E8);
  result = static _SetStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v1;
    v31 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v34 = v3 + 32;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v32 = *(v3 + 72);
      v33 = v20;
      v20(v35, v19, updated);
      sub_10018002C(&qword_1002D63E0, &type metadata accessor for WIS.XPC.UpdateType, &protocol conformance descriptor for WIS.XPC.UpdateType);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = v33(*(v7 + 48) + v15 * v32, v35, updated);
      ++*(v7 + 16);
      v5 = v31;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
  return result;
}

uint64_t sub_10017BD44(uint64_t a1)
{
  v2 = v1;
  v36 = type metadata accessor for WIS.XPC.Entitlement();
  v3 = *(v36 - 8);
  __chkstk_darwin(v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  sub_100164A3C(&qword_1002D63D8, &qword_10024A1E0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v1;
    v31 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v34 = v3 + 32;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v32 = *(v3 + 72);
      v33 = v20;
      v20(v35, v19, v36);
      sub_10018002C(&qword_1002D63C8, &type metadata accessor for WIS.XPC.Entitlement, &protocol conformance descriptor for WIS.XPC.Entitlement);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = v33(*(v7 + 48) + v15 * v32, v35, v36);
      ++*(v7 + 16);
      v5 = v31;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
  return result;
}

Swift::Int sub_10017C0A0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100164A3C(&qword_1002D63C0, &qword_10024A1B8);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      Hasher.init(_seed:)();
      (*(*v17 + 240))(v26);
      result = Hasher._finalize()();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero((v3 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_10017C310(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100164A3C(&qword_1002D63A0, &unk_10024A190);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      sub_10017FDC0();
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero((v3 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_10017C568(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  (*(*a1 + 240))(v5);
  Hasher._finalize()();
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_10017C62C(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  updated = type metadata accessor for WIS.XPC.UpdateType();
  v7 = *(updated - 8);
  __chkstk_darwin(updated);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_10017B9E8(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_10017CF04(&type metadata accessor for WIS.XPC.UpdateType, &qword_1002D63F0, &qword_10024A1E8);
      goto LABEL_12;
    }

    sub_10017D3CC(v10 + 1);
  }

  v12 = *v3;
  sub_10018002C(&qword_1002D63E0, &type metadata accessor for WIS.XPC.UpdateType, &protocol conformance descriptor for WIS.XPC.UpdateType);
  v13 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, updated);
      sub_10018002C(&qword_1002D63E8, &type metadata accessor for WIS.XPC.UpdateType, &protocol conformance descriptor for WIS.XPC.UpdateType);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v18 - 8))(v9, updated);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, updated);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_10017C8F4(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = type metadata accessor for WIS.XPC.Entitlement();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_10017BD44(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_10017CF04(&type metadata accessor for WIS.XPC.Entitlement, &qword_1002D63D8, &qword_10024A1E0);
      goto LABEL_12;
    }

    sub_10017D6E8(v10 + 1);
  }

  v12 = *v3;
  sub_10018002C(&qword_1002D63C8, &type metadata accessor for WIS.XPC.Entitlement, &protocol conformance descriptor for WIS.XPC.Entitlement);
  v13 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_10018002C(&qword_1002D63D0, &type metadata accessor for WIS.XPC.Entitlement, &protocol conformance descriptor for WIS.XPC.Entitlement);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

Swift::Int sub_10017CBBC(Swift::Int result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_15;
  }

  if (a3)
  {
    sub_10017C0A0(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      result = sub_10017D13C();
      goto LABEL_15;
    }

    sub_10017DA04(v7 + 1);
  }

  v9 = *v3;
  Hasher.init(_seed:)();
  (*(*v6 + 240))(v18);
  result = Hasher._finalize()();
  v10 = -1 << *(v9 + 32);
  a2 = result & ~v10;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    type metadata accessor for XPCServer.PeerHandler(0);
    do
    {
      v12 = *(*(v9 + 48) + 8 * a2);

      if (static UUID.== infix(_:_:)())
      {
        v13 = *(v12 + 128);

        if (v13 == v6[32])
        {
          result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          break;
        }
      }

      else
      {
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_15:
  v14 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = v6;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v14 + 16) = v17;
  }

  return result;
}

uint64_t sub_10017CD84(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_10017C310(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_10017D28C();
      goto LABEL_12;
    }

    sub_10017DC54(v6 + 1);
  }

  v8 = *v3;
  sub_10017FDC0();
  result = dispatch thunk of Hashable._rawHashValue(seed:)();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    sub_100168738();
    do
    {
      result = dispatch thunk of static Equatable.== infix(_:_:)();
      if (result)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v10;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + 8 * a2) = v5;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void *sub_10017CF04(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v7 = a1(0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v26 - v9;
  sub_100164A3C(a2, a3);
  v11 = *v3;
  v12 = static _SetStorage.copy(original:)();
  v13 = v12;
  if (*(v11 + 16))
  {
    v27 = v6;
    result = (v12 + 56);
    v15 = ((1 << *(v13 + 32)) + 63) >> 6;
    if (v13 != v11 || result >= v11 + 56 + 8 * v15)
    {
      result = memmove(result, (v11 + 56), 8 * v15);
    }

    v17 = 0;
    *(v13 + 16) = *(v11 + 16);
    v18 = 1 << *(v11 + 32);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v20 = v19 & *(v11 + 56);
    v21 = (v18 + 63) >> 6;
    v28 = v8 + 32;
    for (i = v8 + 16; v20; result = (*(v8 + 32))(*(v13 + 48) + v25, v10, v7))
    {
      v22 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_17:
      v25 = *(v8 + 72) * (v22 | (v17 << 6));
      (*(v8 + 16))(v10, *(v11 + 48) + v25, v7);
    }

    v23 = v17;
    while (1)
    {
      v17 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v17 >= v21)
      {

        v6 = v27;
        goto LABEL_21;
      }

      v24 = *(v11 + 56 + 8 * v17);
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v20 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v6 = v13;
  }

  return result;
}

void *sub_10017D13C()
{
  v1 = v0;
  sub_100164A3C(&qword_1002D63C0, &qword_10024A1B8);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        *(*(v4 + 48) + 8 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 8 * (v14 | (v8 << 6)));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_10017D28C()
{
  v1 = v0;
  sub_100164A3C(&qword_1002D63A0, &unk_10024A190);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_10017D3CC(uint64_t a1)
{
  v2 = v1;
  updated = type metadata accessor for WIS.XPC.UpdateType();
  v3 = *(updated - 8);
  __chkstk_darwin(updated);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_100164A3C(&qword_1002D63F0, &qword_10024A1E8);
  v7 = static _SetStorage.resize(original:capacity:move:)();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v32 + 72);
      (*(v32 + 16))(v5, *(result + 48) + v20 * (v17 | (v9 << 6)), updated);
      sub_10018002C(&qword_1002D63E0, &type metadata accessor for WIS.XPC.UpdateType, &protocol conformance descriptor for WIS.XPC.UpdateType);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v29)(*(v7 + 48) + v16 * v20, v5, updated);
      ++*(v7 + 16);
      result = v30;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v28;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v7;
  }

  return result;
}

uint64_t sub_10017D6E8(uint64_t a1)
{
  v2 = v1;
  v33 = type metadata accessor for WIS.XPC.Entitlement();
  v3 = *(v33 - 8);
  __chkstk_darwin(v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_100164A3C(&qword_1002D63D8, &qword_10024A1E0);
  v7 = static _SetStorage.resize(original:capacity:move:)();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v32 + 72);
      (*(v32 + 16))(v5, *(result + 48) + v20 * (v17 | (v9 << 6)), v33);
      sub_10018002C(&qword_1002D63C8, &type metadata accessor for WIS.XPC.Entitlement, &protocol conformance descriptor for WIS.XPC.Entitlement);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v29)(*(v7 + 48) + v16 * v20, v5, v33);
      ++*(v7 + 16);
      result = v30;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v28;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v7;
  }

  return result;
}

Swift::Int sub_10017DA04(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100164A3C(&qword_1002D63C0, &qword_10024A1B8);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v26 = v3;
    v6 = 0;
    v7 = v3 + 56;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      Hasher.init(_seed:)();
      v18 = *(*v17 + 240);

      v18(v27);
      result = Hasher._finalize()();
      v19 = -1 << *(v5 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
      v3 = v26;
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v11)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v7 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_10017DC54(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100164A3C(&qword_1002D63A0, &unk_10024A190);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      sub_10017FDC0();
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v17 = -1 << *(v5 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_10017DE7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  updated = type metadata accessor for WIS.XPC.UpdateType();
  v6 = *(updated - 8);
  __chkstk_darwin(updated);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_10018002C(&qword_1002D63E0, &type metadata accessor for WIS.XPC.UpdateType, &protocol conformance descriptor for WIS.XPC.UpdateType);
  v31 = a1;
  v10 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v11 = v9 + 56;
  v29 = v9 + 56;
  v30 = v9;
  v12 = -1 << *(v9 + 32);
  v13 = v10 & ~v12;
  if ((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v26 = v2;
    v27 = v6;
    v28 = a2;
    v14 = ~v12;
    v17 = *(v6 + 16);
    v16 = v6 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    while (1)
    {
      v15(v8, *(v30 + 48) + v18 * v13, updated);
      sub_10018002C(&qword_1002D63E8, &type metadata accessor for WIS.XPC.UpdateType, &protocol conformance descriptor for WIS.XPC.UpdateType);
      v19 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v16 - 8))(v8, updated);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v29 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        v20 = 1;
        v6 = v27;
        a2 = v28;
        return (*(v6 + 56))(a2, v20, 1, updated);
      }
    }

    v21 = v26;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v21;
    v32 = *v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_10017CF04(&type metadata accessor for WIS.XPC.UpdateType, &qword_1002D63F0, &qword_10024A1E8);
      v23 = v32;
    }

    v6 = v27;
    a2 = v28;
    (*(v27 + 32))(v28, *(v23 + 48) + v18 * v13, updated);
    sub_10017E280(v13);
    v20 = 0;
    *v21 = v32;
  }

  else
  {
    v20 = 1;
  }

  return (*(v6 + 56))(a2, v20, 1, updated);
}

uint64_t sub_10017E148(uint64_t a1)
{
  v2 = *v1;
  sub_10017FDC0();
  v3 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v4 = -1 << *(v2 + 32);
  v5 = v3 & ~v4;
  if (((*(v2 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) == 0)
  {
    return 0;
  }

  v6 = ~v4;
  sub_100168738();
  while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    v5 = (v5 + 1) & v6;
    if (((*(v2 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v1;
  v11 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_10017D28C();
    v9 = v11;
  }

  v10 = *(*(v9 + 48) + 8 * v5);
  sub_10017E588(v5);
  result = v10;
  *v1 = v11;
  return result;
}

uint64_t sub_10017E280(int64_t a1)
{
  updated = type metadata accessor for WIS.XPC.UpdateType();
  v4 = *(updated - 8);
  result = __chkstk_darwin(updated);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v1;
  v9 = *v1 + 56;
  v10 = -1 << *(*v1 + 32);
  v11 = (a1 + 1) & ~v10;
  if (((1 << v11) & *(v9 + 8 * (v11 >> 6))) != 0)
  {
    v12 = ~v10;

    v13 = _HashTable.previousHole(before:)();
    if ((*(v9 + 8 * (v11 >> 6)) & (1 << v11)) != 0)
    {
      v14 = v12;
      v15 = (v13 + 1) & v12;
      v35 = *(v4 + 16);
      v36 = v4 + 16;
      v16 = *(v4 + 72);
      v33 = (v4 + 8);
      v34 = v9;
      v17 = v16;
      do
      {
        v18 = v17;
        v19 = v17 * v11;
        v35(v7, *(v8 + 48) + v17 * v11, updated);
        v20 = v8;
        v21 = v15;
        v22 = v14;
        v23 = v20;
        sub_10018002C(&qword_1002D63E0, &type metadata accessor for WIS.XPC.UpdateType, &protocol conformance descriptor for WIS.XPC.UpdateType);
        v24 = dispatch thunk of Hashable._rawHashValue(seed:)();
        (*v33)(v7, updated);
        v25 = v24 & v22;
        v14 = v22;
        v15 = v21;
        if (a1 >= v21)
        {
          if (v25 >= v21 && a1 >= v25)
          {
LABEL_16:
            v8 = v23;
            v28 = *(v23 + 48);
            v17 = v18;
            v29 = v18 * a1;
            if (v18 * a1 < v19 || v28 + v18 * a1 >= (v28 + v19 + v18))
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v11;
            }

            else
            {
              a1 = v11;
              if (v29 != v19)
              {
                swift_arrayInitWithTakeBackToFront();
                a1 = v11;
              }
            }

            goto LABEL_5;
          }
        }

        else if (v25 >= v21 || a1 >= v25)
        {
          goto LABEL_16;
        }

        v8 = v23;
        v17 = v18;
LABEL_5:
        v11 = (v11 + 1) & v14;
        v9 = v34;
      }

      while (((*(v34 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
    }

    *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v30 = *(v8 + 16);
  v31 = __OFSUB__(v30, 1);
  v32 = v30 - 1;
  if (v31)
  {
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v32;
    ++*(v8 + 36);
  }

  return result;
}

unint64_t sub_10017E588(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      sub_10017FDC0();
      do
      {
        v10 = dispatch thunk of Hashable._rawHashValue(seed:)() & v7;
        if (v2 >= v9)
        {
          if (v10 >= v9 && v2 >= v10)
          {
LABEL_16:
            v13 = *(v3 + 48);
            v14 = (v13 + 8 * v2);
            v15 = (v13 + 8 * v6);
            if (v2 != v6 || v14 >= v15 + 1)
            {
              *v14 = *v15;
              v2 = v6;
            }
          }
        }

        else if (v10 >= v9 || v2 >= v10)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v16 = *(v3 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v18;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_10017E740(uint64_t isStackAllocationSafe, uint64_t a2)
{
  v3 = isStackAllocationSafe;
  v16 = isStackAllocationSafe;
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v17[3] = &v16;
  v17[4] = a2;
  v6 = (1 << v4) + 63;
  v7 = v6 >> 6;
  if (v5 <= 0xD || (v12 = 8 * (v6 >> 6), isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    __chkstk_darwin(isStackAllocationSafe);
    v9 = &v15 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    v10 = sub_10017E8E0(v9, v7, v3, a2);
  }

  else
  {
    v13 = v12;
    v14 = swift_slowAlloc();
    bzero(v14, v13);
    sub_10017FFF8(v14, v7, v17);
    v10 = v17[0];
  }

  return v10;
}

uint64_t sub_10017E8E0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = a2;
  v29 = a1;
  v6 = type metadata accessor for WIS.XPC.Entitlement();
  v7 = __chkstk_darwin(v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v39 = &v26 - v11;
  v32 = *(a3 + 16);
  if (v32)
  {
    v28 = 0;
    v12 = 0;
    v37 = *(v10 + 16);
    v38 = v10 + 16;
    v31 = a3 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v13 = *(v10 + 72);
    v35 = a4 + 56;
    v36 = v13;
    v14 = (v10 + 8);
    v34 = a4;
    while (1)
    {
      v33 = v12;
      v37(v39, v31 + v36 * v12, v6);
      sub_10018002C(&qword_1002D63C8, &type metadata accessor for WIS.XPC.Entitlement, &protocol conformance descriptor for WIS.XPC.Entitlement);
      v17 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v18 = -1 << *(a4 + 32);
      v19 = v17 & ~v18;
      v20 = v19 >> 6;
      v21 = 1 << v19;
      if (((1 << v19) & *(v35 + 8 * (v19 >> 6))) == 0)
      {
        break;
      }

      v30 = v14 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v22 = ~v18;
      while (1)
      {
        v37(v9, *(v34 + 48) + v19 * v36, v6);
        sub_10018002C(&qword_1002D63D0, &type metadata accessor for WIS.XPC.Entitlement, &protocol conformance descriptor for WIS.XPC.Entitlement);
        v23 = dispatch thunk of static Equatable.== infix(_:_:)();
        v15 = *v14;
        (*v14)(v9, v6);
        if (v23)
        {
          break;
        }

        v19 = (v19 + 1) & v22;
        v20 = v19 >> 6;
        v21 = 1 << v19;
        if (((1 << v19) & *(v35 + 8 * (v19 >> 6))) == 0)
        {
          a4 = v34;
          goto LABEL_4;
        }
      }

      result = (v15)(v39, v6);
      v25 = v29[v20];
      v29[v20] = v25 | v21;
      if ((v25 & v21) != 0)
      {
        a4 = v34;
LABEL_5:
        v16 = v33;
        goto LABEL_6;
      }

      v16 = v33;
      a4 = v34;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        return result;
      }

      ++v28;
LABEL_6:
      v12 = v16 + 1;
      if (v12 == v32)
      {
        goto LABEL_17;
      }
    }

    v15 = *v14;
LABEL_4:
    v15(v39, v6);
    goto LABEL_5;
  }

  v28 = 0;
LABEL_17:

  return sub_10017EC2C(v29, v27, v28, a4);
}

uint64_t sub_10017EC2C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = type metadata accessor for WIS.XPC.Entitlement();
  v8 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return &_swiftEmptySetSingleton;
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  sub_100164A3C(&qword_1002D63D8, &qword_10024A1E0);
  result = static _SetStorage.allocate(capacity:)();
  v10 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  v30 = (v8 + 32);
  v31 = v8 + 16;
  v29 = a4;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v32 = (v12 - 1) & v12;
LABEL_16:
    v18 = *(a4 + 48);
    v33 = *(v8 + 72);
    (*(v8 + 16))(v34, v18 + v33 * (v15 | (v13 << 6)), v35);
    sub_10018002C(&qword_1002D63C8, &type metadata accessor for WIS.XPC.Entitlement, &protocol conformance descriptor for WIS.XPC.Entitlement);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v19 = -1 << *(v10 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    result = (*v30)(*(v10 + 48) + v22 * v33, v34, v35);
    ++*(v10 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v29;
    v12 = v32;
    if (!a3)
    {
LABEL_28:

      return v10;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_28;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v32 = (v17 - 1) & v17;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_10017EF54(uint64_t a1)
{
  v2 = type metadata accessor for WIS.XPC.Entitlement();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v16 - v7;
  v9 = *(a1 + 16);
  sub_10018002C(&qword_1002D63C8, &type metadata accessor for WIS.XPC.Entitlement, &protocol conformance descriptor for WIS.XPC.Entitlement);
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
      sub_10017B130(v8, v6);
      (*(v11 - 8))(v8, v2);
      v14 += v15;
      --v9;
    }

    while (v9);
    return v17;
  }

  return result;
}

BOOL sub_10017F0F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WIS.XPC.Entitlement();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_100164A3C(&qword_1002D5EE8, &qword_100249E68) == a2)
  {
    (*(v5 + 104))(v7, enum case for WIS.XPC.Entitlement.apiPredictions(_:), v4);
    v8 = sub_10017A5C4(v7, a1);
    (*(v5 + 8))(v7, v4);
    if (v8)
    {
      return 1;
    }
  }

  v11 = sub_10017EF54(v10);

  v12 = static WIS.XPC.Entitlement.spiEntitlements.getter();
  v13 = sub_10017E740(v12, v11);

  v14 = *(v13 + 16);

  return v14 != 0;
}

unint64_t sub_10017F260()
{
  result = qword_1002D5FA8;
  if (!qword_1002D5FA8)
  {
    sub_100169B50(&qword_1002D5E78, &qword_100249DF8);
    sub_10018002C(&qword_1002D5FB0, &type metadata accessor for WIS.XPC.WiFiToCellTransitionTreatDissasocAsBeaconLostResponse, &protocol conformance descriptor for WIS.XPC.WiFiToCellTransitionTreatDissasocAsBeaconLostResponse);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D5FA8);
  }

  return result;
}

uint64_t sub_10017F314(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_100169B50(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10017F35C()
{
  v2 = *(type metadata accessor for XPCReceivedMessage() - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10017F434;

  return sub_100176878(v5, v6, v7, v4, v0 + v3);
}

uint64_t sub_10017F434()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

char *sub_10017F530(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = HIDWORD(a1);
  v9 = HIDWORD(a2);
  v10 = HIDWORD(a3);
  v11 = HIDWORD(a4);
  v37 = type metadata accessor for WIS.XPC.Entitlement();
  v12 = *(v37 - 8);
  v13 = __chkstk_darwin(v37);
  v35 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v31 - v15;
  token.val[0] = v7;
  token.val[1] = v8;
  token.val[2] = v6;
  token.val[3] = v9;
  token.val[4] = v5;
  token.val[5] = v10;
  token.val[6] = v4;
  token.val[7] = v11;
  v34 = SecTaskCreateWithAuditToken(0, &token);
  if (!v34)
  {
    return _swiftEmptyArrayStorage;
  }

  *token.val = 0;
  v17 = static WIS.XPC.Entitlement.allEntitlements.getter();
  v33 = *(v17 + 16);
  if (v33)
  {
    v18 = 0;
    v36 = v12 + 16;
    v31 = (v12 + 32);
    v32 = (v12 + 8);
    v19 = _swiftEmptyArrayStorage;
    while (1)
    {
      if (v18 >= *(v17 + 16))
      {
        __break(1u);
      }

      v20 = (*(v12 + 80) + 32) & ~*(v12 + 80);
      v21 = *(v12 + 72);
      v22 = v17;
      v23 = v17 + v20 + v21 * v18;
      v24 = *(v12 + 16);
      v24(v16, v23, v37);
      WIS.XPC.Entitlement.rawValue.getter();
      v25 = String._bridgeToObjectiveC()();

      v26 = SecTaskCopyValueForEntitlement(v34, v25, &token);

      if (*token.val)
      {
        break;
      }

      if (v26)
      {
        v24(v35, v16, v37);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v19 = sub_10017A6D0(0, *(v19 + 2) + 1, 1, v19);
        }

        v28 = *(v19 + 2);
        v27 = *(v19 + 3);
        if (v28 >= v27 >> 1)
        {
          v19 = sub_10017A6D0((v27 > 1), v28 + 1, 1, v19);
        }

        swift_unknownObjectRelease();
        v29 = v37;
        (*v32)(v16, v37);
        *(v19 + 2) = v28 + 1;
        (*v31)(&v19[v20 + v28 * v21], v35, v29);
      }

      else
      {
        (*v32)(v16, v37);
      }

      ++v18;
      v17 = v22;
      if (v33 == v18)
      {
        goto LABEL_15;
      }
    }

    swift_unknownObjectRelease();

    (*v32)(v16, v37);
    return _swiftEmptyArrayStorage;
  }

  v19 = _swiftEmptyArrayStorage;
LABEL_15:

  return v19;
}

__SecTask *sub_10017F898(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *token.val = a1;
  *&token.val[2] = a2;
  *&token.val[4] = a3;
  *&token.val[6] = a4;
  result = SecTaskCreateWithAuditToken(0, &token);
  if (result)
  {
    v5 = result;
    v8 = 0;
    v6 = SecTaskCopySigningIdentifier(result, &v8);
    if (v6)
    {
      v7 = v6;
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        *token.val = 0;
        *&token.val[2] = 0;
        static String._conditionallyBridgeFromObjectiveC(_:result:)();

        if (*&token.val[2])
        {
          return *token.val;
        }
      }

      else
      {
      }
    }

    else
    {
    }

    return 0;
  }

  return result;
}

uint64_t type metadata accessor for XPCServer.PeerHandler(uint64_t a1)
{
  result = qword_1002D94D0;
  if (!qword_1002D94D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_10017FA3C()
{
  result = qword_1002D60B0;
  if (!qword_1002D60B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D60B0);
  }

  return result;
}

uint64_t sub_10017FACC(uint64_t a1)
{
  result = type metadata accessor for UUID();
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

uint64_t getEnumTagSinglePayload for XPCServer.Error(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for XPCServer.Error(_WORD *result, int a2, int a3)
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

uint64_t sub_10017FC88()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10017FCC8()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10017F434;

  return sub_1001690D0(v3, v4, v5, v2);
}

uint64_t sub_10017FD5C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for XPCEventPublisher.SubscriptionAction(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10017FDC0()
{
  result = qword_1002D6398;
  if (!qword_1002D6398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D6398);
  }

  return result;
}

uint64_t sub_10017FE14(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_10017FE24(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return result;
}

unint64_t sub_10017FE34()
{
  result = qword_1002D63A8;
  if (!qword_1002D63A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D63A8);
  }

  return result;
}

void type metadata accessor for audit_token_t()
{
  if (!qword_1002D63F8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1002D63F8);
    }
  }
}

uint64_t sub_10017FEF0()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100002A5C;

  return sub_100178304(v4, v5, v6, v2, v3);
}

uint64_t sub_10017FF88(uint64_t a1, uint64_t a2)
{
  v4 = sub_100164A3C(&qword_1002D7180, &qword_10024ABF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10017FFF8@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_10017E8E0(a1, a2, **(v3 + 16), *(v3 + 24));
  if (!v4)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_10018002C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

__n128 sub_100180074(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_100180080(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1001800A0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
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

  *(result + 32) = v3;
  return result;
}

uint64_t sub_1001800D8()
{
  _s13CAEventSenderCMa();
  result = swift_initStaticObject();
  qword_1002DBF80 = result;
  return result;
}

uint64_t *sub_100180104()
{
  if (qword_1002D94E0 != -1)
  {
    swift_once();
  }

  return &qword_1002DBF80;
}

void sub_100180160()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10018CE70();
  sub_100003E50(&off_1002B61B0, v3);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v13 = v0;
    v7 = v6;
    v14 = swift_slowAlloc();
    *v7 = 136315394;
    *(v7 + 4) = sub_10017A8A8(0xD000000000000033, 0x800000010025B8F0, &v14);
    *(v7 + 12) = 2080;
    sub_100180440();
    v8 = Dictionary.description.getter();
    v10 = sub_10017A8A8(v8, v9, &v14);

    *(v7 + 14) = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "Sending a CA event %s. %s", v7, 0x16u);
    swift_arrayDestroy();

    (*(v1 + 8))(v3, v13);
  }

  else
  {

    (*(v1 + 8))(v3, v0);
  }

  v11 = String._bridgeToObjectiveC()();
  sub_100180440();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  AnalyticsSendEvent();
}

unint64_t sub_100180440()
{
  result = qword_1002D5C60;
  if (!qword_1002D5C60)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1002D5C60);
  }

  return result;
}

unint64_t sub_1001804D8()
{
  result = qword_1002D5E50;
  if (!qword_1002D5E50)
  {
    type metadata accessor for OS_dispatch_queue.Attributes();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D5E50);
  }

  return result;
}

unint64_t sub_100180530()
{
  result = qword_1002D5E58;
  if (!qword_1002D5E58)
  {
    sub_100169B50(&unk_1002D6650, &qword_100249DD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D5E58);
  }

  return result;
}

id (*sub_100180594())(uint64_t a1, void *a2)
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 128);
  if (v1)
  {
    v3 = *(v0 + 120);
  }

  else
  {
    v3 = sub_1001820A8;
    *(v0 + 120) = sub_1001820A8;
    *(v0 + 128) = v0;
    swift_retain_n();
    sub_10002193C(0, v2);
  }

  sub_10002194C(v1, v2);
  return v3;
}

id sub_100180610(void *a1, uint64_t a2)
{
  v4 = sub_100164A3C(&qword_1002D7180, &qword_10024ABF0);
  __chkstk_darwin(v4 - 8);
  v6 = &v22 - v5;
  result = [a1 type];
  if (result == 13)
  {
    [a1 doubleValueForField:851968];
    v16 = v15;
    [a1 doubleValueForField:851969];
    v18 = v17;
    [a1 doubleValueForField:851970];
    v20 = v19;
    v21 = type metadata accessor for TaskPriority();
    (*(*(v21 - 8) + 56))(v6, 1, 1, v21);
    v13 = swift_allocObject();
    v13[2] = 0;
    v13[3] = 0;
    v13[4] = a2;
    v13[5] = v16;
    v13[6] = v18;
    v13[7] = v20;

    v14 = &unk_10024A388;
  }

  else
  {
    if (result != 12)
    {
      return result;
    }

    [a1 doubleValueForField:786443];
    v9 = v8;
    [a1 doubleValueForField:786442];
    v11 = v10;
    v12 = type metadata accessor for TaskPriority();
    (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
    v13 = swift_allocObject();
    v13[2] = 0;
    v13[3] = 0;
    v13[4] = a2;
    v13[5] = v9;
    v13[6] = v11;

    v14 = &unk_10024A398;
  }

  sub_100176B80(0, 0, v6, v14, v13);
}

uint64_t sub_100180864(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 24) = a1;
  *(v6 + 32) = a2;
  *(v6 + 16) = a6;
  return _swift_task_switch(sub_100180888, a6, 0);
}

uint64_t sub_100180888()
{
  sub_100180C8C(v0[3], v0[4], 0);
  v1 = v0[1];

  return v1();
}

uint64_t sub_1001808F0(double a1, double a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 32) = a2;
  *(v7 + 40) = a3;
  *(v7 + 24) = a1;
  *(v7 + 16) = a7;
  return _swift_task_switch(sub_100180918, a7, 0);
}

uint64_t sub_100180918()
{
  sub_100180AB4(v0[3], v0[4], v0[5], 0);
  v1 = v0[1];

  return v1();
}

uint64_t sub_1001809BC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  result = swift_beginAccess();
  *(v4 + 144) = a1;
  *(v4 + 152) = a2;
  *(v4 + 160) = a3;
  *(v4 + 168) = a4 & 1;
  return result;
}

uint64_t sub_100180A5C(uint64_t a1, uint64_t a2, char a3)
{
  result = swift_beginAccess();
  *(v3 + 176) = a1;
  *(v3 + 184) = a2;
  *(v3 + 192) = a3 & 1;
  return result;
}

uint64_t sub_100180AB4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003E50(&off_1002B6208, v13);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v18 = a1;
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "IOKitReader. Setting accelerometer value", v16, 2u);
    a1 = v18;
  }

  (*(v11 + 8))(v13, v10);
  result = swift_beginAccess();
  *(v5 + 144) = a1;
  *(v5 + 152) = a2;
  *(v5 + 160) = a3;
  *(v5 + 168) = a4 & 1;
  return result;
}

uint64_t sub_100180C8C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003E50(&off_1002B6208, v11);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "IOKitReader. Setting ALS value", v14, 2u);
  }

  (*(v9 + 8))(v11, v8);
  result = swift_beginAccess();
  *(v4 + 176) = a1;
  *(v4 + 184) = a2;
  *(v4 + 192) = a3 & 1;
  return result;
}

uint64_t sub_100180E3C()
{
  v0 = swift_allocObject();
  sub_100180E74();
  return v0;
}

uint64_t *sub_100180E74()
{
  v1 = v0;
  v16 = *v0;
  v2 = type metadata accessor for Logger();
  v17 = *(v2 - 8);
  v18 = v2;
  __chkstk_darwin(v2);
  v15 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v4 = *(v14 - 8);
  __chkstk_darwin(v14);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v7);
  v8 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v8 - 8);
  swift_defaultActor_initialize();
  sub_100164AEC(0, &qword_1002D6640, OS_dispatch_queue_ptr);
  static DispatchQoS.unspecified.getter();
  v19 = _swiftEmptyArrayStorage;
  sub_1001804D8();
  sub_100164A3C(&unk_1002D6650, &qword_100249DD0);
  sub_100180530();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v4 + 104))(v6, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v14);
  v9 = v15;
  v0[14] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v0 + 15) = 0u;
  *(v0 + 17) = 0u;
  *(v0 + 19) = 0u;
  *(v0 + 168) = 1;
  v0[22] = 0;
  v0[23] = 0;
  *(v0 + 192) = 1;
  v0[25] = 500000;
  sub_100003E50(&off_1002B6208, v9);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "IOKitReader. Finished init", v12, 2u);
  }

  (*(v17 + 8))(v9, v18);
  return v1;
}

void sub_100181208()
{
  v1 = v0;
  v2 = *v0;
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = v37 - v8;
  v10 = [objc_allocWithZone(HIDEventSystemClient) initWithType:3];
  if (v10)
  {
    v11 = v10;
    v37[0] = v1;
    v37[1] = v2;
    v39 = v9;
    v40 = v4;
    v41 = v3;
    isa = Array._bridgeToObjectiveC()().super.isa;
    v13 = String._bridgeToObjectiveC()();
    [v11 setProperty:isa forKey:v13];

    sub_100164A3C(&qword_1002D65F8, &qword_10024A3A8);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_10024A260;
    *(v14 + 32) = sub_10018235C(4);
    *(v14 + 40) = sub_10018235C(3);
    sub_100164A3C(&qword_1002D6600, &qword_10024A3B0);
    v15 = Array._bridgeToObjectiveC()().super.isa;

    [v11 setMatching:v15];

    v38 = v11;
    v16 = [v11 services];
    sub_100164AEC(0, &qword_1002D6608, HIDServiceClient_ptr);
    v17 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v17 >> 62)
    {
      v18 = _CocoaArrayWrapper.endIndex.getter();
      if (v18)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v18)
      {
LABEL_4:
        if (v18 < 1)
        {
          __break(1u);
          return;
        }

        v19 = 0;
        do
        {
          if ((v17 & 0xC000000000000001) != 0)
          {
            v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v20 = *(v17 + 8 * v19 + 32);
          }

          v21 = v20;
          ++v19;
          v22 = Int._bridgeToObjectiveC()().super.super.isa;
          v23 = String._bridgeToObjectiveC()();
          [v21 setProperty:v22 forKey:v23];

          v24 = Int._bridgeToObjectiveC()().super.super.isa;
          v25 = String._bridgeToObjectiveC()();
          [v21 setProperty:v24 forKey:v25];
        }

        while (v18 != v19);
      }
    }

    v29 = v37[0];
    aBlock[4] = sub_100180594();
    aBlock[5] = v30;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100181780;
    aBlock[3] = &unk_1002B6378;
    v31 = _Block_copy(aBlock);

    v32 = v38;
    [v38 setEventHandler:v31];
    _Block_release(v31);
    [v32 setDispatchQueue:*(v29 + 112)];
    v33 = v39;
    sub_100003E50(&off_1002B6208, v39);
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&_mh_execute_header, v34, v35, "IOKitReader. Finished client init and setup", v36, 2u);
    }

    (*(v40 + 8))(v33, v41);
    return;
  }

  sub_100003E50(&off_1002B6208, v7);
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&_mh_execute_header, v26, v27, "IOKitReader. Failed to create HIDEventSystemClient", v28, 2u);
  }

  (*(v4 + 8))(v7, v3);
}

void sub_100181780(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, v6);
}

uint64_t sub_100181804()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = &v26 - v8;
  __chkstk_darwin(v7);
  v11 = &v26 - v10;
  if (v0[17])
  {
    sub_100003E50(&off_1002B6208, &v26 - v10);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "IOKitReader. Request to start client. Client is not nil, setting to nil", v14, 2u);
    }

    v15 = (*(v3 + 8))(v11, v2);
    (*(*v1 + 272))(v15);
  }

  sub_100181208();
  v17 = v16;
  v18 = v1[17];
  v1[17] = v16;
  v19 = v16;

  if (v17)
  {
    [v19 activate];
    sub_100003E50(&off_1002B6208, v9);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "IOKitReader. Set up client and started callback", v22, 2u);
    }
  }

  else
  {
    sub_100003E50(&off_1002B6208, v6);
    v19 = Logger.logObject.getter();
    v23 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v19, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v19, v23, "IOKitReader. Request to start client. Client is NIL after setup", v24, 2u);
    }

    v9 = v6;
  }

  return (*(v3 + 8))(v9, v2);
}

uint64_t sub_100181B74()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v17 - v6;
  v8 = *(v0 + 136);
  if (v8)
  {
    v9 = v8;
    [v9 cancel];
    v10 = *(v0 + 136);
    *(v0 + 136) = 0;

    sub_100003E50(&off_1002B6208, v7);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "IOKitReader. Stopped callback", v13, 2u);
    }
  }

  else
  {
    sub_100003E50(&off_1002B6208, v5);
    v9 = Logger.logObject.getter();
    v14 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v9, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v9, v14, "IOKitReader. Requested stop callback, but client is NIL", v15, 2u);
    }

    v7 = v5;
  }

  return (*(v2 + 8))(v7, v1);
}

uint64_t sub_100181DC0()
{
  v1 = *v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 272))(v4);
  sub_100003E50(&off_1002B6208, v6);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "IOKitReader. Unregistered callback", v9, 2u);
  }

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_100181F44()
{
  sub_10002193C(*(v0 + 120), *(v0 + 128));

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_100181F8C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  _s11IOKitReaderCMa();

  return sub_100003E50(a1, a2);
}

unint64_t sub_100181FD4()
{
  _s11IOKitReaderCMa();

  return sub_10000358C();
}

__n128 _s18AccelerometerValueVwCP(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t _s18AccelerometerValueVwet(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s18AccelerometerValueVwst(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
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

  *(result + 24) = v3;
  return result;
}

uint64_t sub_1001820B4()
{
  v2 = *(v0 + 4);
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_10017F434;

  return sub_1001808F0(v3, v4, v5, v6, v7, v8, v2);
}

uint64_t sub_10018216C(uint64_t a1)
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v1, a1, 7);
}

uint64_t sub_1001821B8()
{
  v2 = *(v0 + 4);
  v3 = v0[5];
  v4 = v0[6];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100002A5C;

  return sub_100180864(v3, v4, v5, v6, v7, v2);
}

unint64_t sub_100182260(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100164A3C(&qword_1002D6638, &qword_10024A3E0);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_100164498(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

unint64_t sub_10018235C(uint64_t a1)
{
  sub_100164A3C(&qword_1002D6610, &qword_10024A3B8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1002497B0;
  *(inited + 32) = 0xD000000000000010;
  *(inited + 40) = 0x800000010025BAE0;
  sub_100164A3C(&qword_1002D6618, &qword_10024A3C0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1002497B0;
  sub_100164A3C(&qword_1002D6620, &qword_10024A3C8);
  v4 = swift_initStackObject();
  *(v4 + 16) = xmmword_10024A260;
  *(v4 + 32) = 0x7355656369766544;
  *(v4 + 40) = 0xEF65676150656761;
  *(v4 + 48) = xmmword_10024A270;
  *(v4 + 64) = 0xEB00000000656761;
  *(v4 + 72) = a1;
  v5 = sub_100182260(v4);
  swift_setDeallocating();
  sub_100164A3C(&qword_1002D6628, &qword_10024A3D0);
  swift_arrayDestroy();
  *(v3 + 32) = v5;
  *(inited + 72) = sub_100164A3C(&qword_1002D6630, &qword_10024A3D8);
  *(inited + 48) = v3;
  v6 = sub_1001667D0(inited);
  swift_setDeallocating();
  sub_1000157F0(inited + 32, &qword_1002D5CB8, &unk_100249BC0);
  return v6;
}

uint64_t sub_10018250C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_100182524()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

char *sub_100182558()
{
  ObjectType = swift_getObjectType();
  v17 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1 = *(v17 - 8);
  __chkstk_darwin(v17);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v4);
  v5 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v5 - 8);
  v6 = &v0[OBJC_IVAR____TtCV17wirelessinsightsd20WiFiToCellTransition25LocationEnvironmentReader_authorizationStatus];
  *v6 = 0;
  v6[4] = 1;
  *&v0[OBJC_IVAR____TtCV17wirelessinsightsd20WiFiToCellTransition25LocationEnvironmentReader_locationManager] = 0;
  v16 = OBJC_IVAR____TtCV17wirelessinsightsd20WiFiToCellTransition25LocationEnvironmentReader_updateQueue;
  sub_100169B04();
  static DispatchQoS.unspecified.getter();
  v20 = _swiftEmptyArrayStorage;
  sub_1001804D8();
  sub_100164A3C(&unk_1002D6650, &qword_100249DD0);
  sub_100180530();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v1 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v17);
  *&v0[v16] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v0[OBJC_IVAR____TtCV17wirelessinsightsd20WiFiToCellTransition25LocationEnvironmentReader_isLocationUpdating] = 0;
  v19.receiver = v0;
  v19.super_class = ObjectType;
  v7 = objc_msgSendSuper2(&v19, "init");
  v8 = *&v7[OBJC_IVAR____TtCV17wirelessinsightsd20WiFiToCellTransition25LocationEnvironmentReader_updateQueue];
  v9 = objc_allocWithZone(CLLocationManager);
  v10 = v7;
  v11 = v8;
  v12 = String._bridgeToObjectiveC()();
  v13 = [v9 initWithEffectiveBundlePath:v12 delegate:v10 onQueue:v11];

  v14 = *&v10[OBJC_IVAR____TtCV17wirelessinsightsd20WiFiToCellTransition25LocationEnvironmentReader_locationManager];
  *&v10[OBJC_IVAR____TtCV17wirelessinsightsd20WiFiToCellTransition25LocationEnvironmentReader_locationManager] = v13;

  return v10;
}

uint64_t sub_100182880()
{
  swift_getObjectType();
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v3);
  v8 = &v49 - v7;
  v9 = __chkstk_darwin(v6);
  v11 = &v49 - v10;
  v12 = __chkstk_darwin(v9);
  v14 = &v49 - v13;
  v15 = __chkstk_darwin(v12);
  v17 = &v49 - v16;
  __chkstk_darwin(v15);
  v19 = &v49 - v18;
  v20 = *&v0[OBJC_IVAR____TtCV17wirelessinsightsd20WiFiToCellTransition25LocationEnvironmentReader_locationManager];
  if (v20)
  {
    v21 = [v20 authorizationStatus];
    v22 = &v0[OBJC_IVAR____TtCV17wirelessinsightsd20WiFiToCellTransition25LocationEnvironmentReader_authorizationStatus];
    *v22 = v21;
    v22[4] = 0;
    if (v21 > 2)
    {
      if ((v21 - 3) >= 2)
      {
LABEL_22:
        sub_100003E50(&off_1002B63B0, v8);
        v40 = v0;
        v41 = Logger.logObject.getter();
        v42 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v41, v42))
        {
          v43 = swift_slowAlloc();
          v44 = swift_slowAlloc();
          v51 = v44;
          *v43 = 136315138;
          v45 = v22[4];
          v49 = *v22;
          v50 = v45;
          sub_100164A3C(&qword_1002D6748, &qword_10024A638);
          v46 = String.init<A>(describing:)();
          v48 = sub_10017A8A8(v46, v47, &v51);

          *(v43 + 4) = v48;
          _os_log_impl(&_mh_execute_header, v41, v42, "Location Environment Reader. Unexpected authorization status %s", v43, 0xCu);
          sub_100164B98(v44);
        }

        return (*(v2 + 8))(v8, v1);
      }

      sub_100003E50(&off_1002B63B0, v11);
      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&_mh_execute_header, v31, v32, "Location Environment Reader. Location services are authorized", v33, 2u);
      }

      return (*(v2 + 8))(v11, v1);
    }

    else if (v21)
    {
      if (v21 != 1)
      {
        if (v21 == 2)
        {
          sub_100003E50(&off_1002B63B0, v14);
          v23 = Logger.logObject.getter();
          v24 = static os_log_type_t.info.getter();
          if (os_log_type_enabled(v23, v24))
          {
            v25 = swift_slowAlloc();
            *v25 = 0;
            _os_log_impl(&_mh_execute_header, v23, v24, "Location Environment Reader. Location services denied", v25, 2u);
          }

          return (*(v2 + 8))(v14, v1);
        }

        goto LABEL_22;
      }

      sub_100003E50(&off_1002B63B0, v17);
      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        *v39 = 0;
        _os_log_impl(&_mh_execute_header, v37, v38, "Location Environment Reader. Location services are restricted", v39, 2u);
      }

      return (*(v2 + 8))(v17, v1);
    }

    else
    {
      sub_100003E50(&off_1002B63B0, v19);
      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        *v36 = 0;
        _os_log_impl(&_mh_execute_header, v34, v35, "Location Environment Reader. Location services authorization status not determined", v36, 2u);
      }

      return (*(v2 + 8))(v19, v1);
    }
  }

  else
  {
    v27 = &v0[OBJC_IVAR____TtCV17wirelessinsightsd20WiFiToCellTransition25LocationEnvironmentReader_authorizationStatus];
    *v27 = 0;
    v27[4] = 1;
    sub_100003E50(&off_1002B63B0, v5);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v28, v29, "Location Environment Reader. Location services authorization status is nil", v30, 2u);
    }

    return (*(v2 + 8))(v5, v1);
  }
}

id sub_100182E54()
{
  v1 = v0;
  swift_getObjectType();
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v18 - v7;
  v9 = OBJC_IVAR____TtCV17wirelessinsightsd20WiFiToCellTransition25LocationEnvironmentReader_isLocationUpdating;
  if (*(v0 + OBJC_IVAR____TtCV17wirelessinsightsd20WiFiToCellTransition25LocationEnvironmentReader_isLocationUpdating))
  {
    sub_100003E50(&off_1002B63B0, v6);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "Location Environment Reader. Skipping to start location updates, location updates already running...", v12, 2u);
    }

    return (*(v3 + 8))(v6, v2);
  }

  else
  {
    sub_100003E50(&off_1002B63B0, &v18 - v7);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "Location Environment Reader. Starting location updates...", v16, 2u);
    }

    (*(v3 + 8))(v8, v2);
    v17 = OBJC_IVAR____TtCV17wirelessinsightsd20WiFiToCellTransition25LocationEnvironmentReader_locationManager;
    result = *(v1 + OBJC_IVAR____TtCV17wirelessinsightsd20WiFiToCellTransition25LocationEnvironmentReader_locationManager);
    if (result)
    {
      [result setDesiredAccuracy:kCLLocationAccuracyBystander];
      result = *(v1 + v17);
      if (result)
      {
        result = [result startUpdatingLocation];
      }
    }

    *(v1 + v9) = 1;
  }

  return result;
}

id sub_1001830C4(char a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v18 - v9;
  if (a1)
  {
    sub_100003E50(&off_1002B63B0, &v18 - v9);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 67109120;
      *(v13 + 4) = 1;
      _os_log_impl(&_mh_execute_header, v11, v12, "Location Environment Reader. Stopping location updates with doForce %{BOOL}d...", v13, 8u);
    }

    (*(v5 + 8))(v10, v4);
    result = *(v2 + OBJC_IVAR____TtCV17wirelessinsightsd20WiFiToCellTransition25LocationEnvironmentReader_locationManager);
    if (result)
    {
      result = [result stopUpdatingLocation];
    }

    *(v2 + OBJC_IVAR____TtCV17wirelessinsightsd20WiFiToCellTransition25LocationEnvironmentReader_isLocationUpdating) = 0;
  }

  else
  {
    sub_100003E50(&off_1002B63B0, v8);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 67109120;
      _os_log_impl(&_mh_execute_header, v15, v16, "Location Environment Reader. Skipping to stop location updates with doForce %{BOOL}d...", v17, 8u);
    }

    return (*(v5 + 8))(v8, v4);
  }

  return result;
}

uint64_t sub_100183324(void *a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [a1 authorizationStatus];
  v9 = &v2[OBJC_IVAR____TtCV17wirelessinsightsd20WiFiToCellTransition25LocationEnvironmentReader_authorizationStatus];
  *v9 = v8;
  v9[4] = 0;
  sub_100003E50(&off_1002B63B0, v7);
  v10 = v2;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v23 = v14;
    *v13 = 136315138;
    v15 = v9[4];
    if (v15)
    {
      v16 = 0;
    }

    else
    {
      v16 = *v9;
    }

    v21 = v16;
    v22 = v15;
    sub_100164A3C(&qword_1002D6680, &qword_10024A3E8);
    v17 = String.init<A>(describing:)();
    v19 = sub_10017A8A8(v17, v18, &v23);

    *(v13 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v11, v12, "Location Environment Reader. Location services received authorization callback, authorizationStatus is %s", v13, 0xCu);
    sub_100164B98(v14);
  }

  (*(v5 + 8))(v7, v4);
  return sub_100182880();
}

void sub_100183630(uint64_t a1@<X8>)
{
  v2 = v1;
  swift_getObjectType();
  v38 = type metadata accessor for Logger();
  v4 = *(v38 - 8);
  v5 = __chkstk_darwin(v38);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v37 - v8;
  v10 = OBJC_IVAR____TtCV17wirelessinsightsd20WiFiToCellTransition25LocationEnvironmentReader_locationManager;
  v11 = *(v1 + OBJC_IVAR____TtCV17wirelessinsightsd20WiFiToCellTransition25LocationEnvironmentReader_locationManager);
  if (v11 && (v12 = [v11 location]) != 0)
  {
    v13 = v12;
    [v12 altitude];
    v15 = v14;
    [v13 horizontalAccuracy];
    v17 = v16;
    [v13 verticalAccuracy];
    v19 = v18;
    v20 = sub_10018408C([v13 signalEnvironmentType]);
    v21 = 0;
    v22 = *(v1 + v10);
    if (!v22)
    {
      goto LABEL_16;
    }
  }

  else
  {
    sub_100003E50(&off_1002B63B0, v9);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "Location Environment Reader. location is nil, horizontalAccuracy, verticalAccuracy, altitude, environmentClassification (e.g. Urban) are nil", v25, 2u);
    }

    (*(v4 + 8))(v9, v38);
    v13 = 0;
    v21 = 1;
    v19 = 0;
    v20 = 6;
    v17 = 0;
    v15 = 0;
    v22 = *(v2 + v10);
    if (!v22)
    {
      goto LABEL_16;
    }
  }

  v26 = [v22 _zAxisStatistics];
  if (v26)
  {
    v27 = v26;
    v28 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v29 = sub_100183A50(v28);

    if (v29)
    {
      if (*(v29 + 16) && (v30 = sub_100164498(0xD000000000000015, 0x800000010025BB80), (v31 & 1) != 0))
      {
        sub_1001675EC(*(v29 + 56) + 32 * v30, v40);

        if (swift_dynamicCast())
        {
          v32 = sub_10018409C(v39);
          if (v32 != 7)
          {
            v33 = v32;

            goto LABEL_20;
          }
        }
      }

      else
      {
      }
    }
  }

LABEL_16:
  sub_100003E50(&off_1002B63B0, v7);
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 0;
    _os_log_impl(&_mh_execute_header, v34, v35, "Location Environment Reader. ambientLightClassification (e.g. ArtificialLightIndoor) is nil", v36, 2u);
  }

  else
  {
  }

  (*(v4 + 8))(v7, v38);
  v33 = 7;
LABEL_20:
  *a1 = v17;
  *(a1 + 8) = v21;
  *(a1 + 16) = v19;
  *(a1 + 24) = v21;
  *(a1 + 32) = v15;
  *(a1 + 42) = v33;
  *(a1 + 40) = v21 | (v20 << 8);
}

unint64_t sub_100183A50(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100164A3C(&qword_1002D5CB0, &qword_100249BB8);
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
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v5)) | (v11 << 6);
        sub_10018453C(*(a1 + 48) + 40 * v12, v27);
        sub_1001675EC(*(a1 + 56) + 32 * v12, v28 + 8);
        v25[0] = v28[0];
        v25[1] = v28[1];
        v26 = v29;
        v24[0] = v27[0];
        v24[1] = v27[1];
        sub_10018453C(v24, v19);
        if (!swift_dynamicCast())
        {
          break;
        }

        v5 &= v5 - 1;
        sub_1001675EC(v25 + 8, v20);
        sub_1000157F0(v24, &unk_1002D6730, &unk_10024A620);
        v21 = v18;
        sub_100167E08(v20, v22);
        v13 = v21;
        sub_100167E08(v22, v23);
        sub_100167E08(v23, &v21);
        result = sub_100164498(v13, *(&v13 + 1));
        if (v14)
        {
          *(v2[6] + 16 * result) = v13;
          v9 = result;

          v10 = (v2[7] + 32 * v9);
          sub_100164B98(v10);
          result = sub_100167E08(&v21, v10);
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_23;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v2[6] + 16 * result) = v13;
          result = sub_100167E08(&v21, (v2[7] + 32 * result));
          v15 = v2[2];
          v16 = __OFADD__(v15, 1);
          v17 = v15 + 1;
          if (v16)
          {
            goto LABEL_24;
          }

          v2[2] = v17;
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v11 = v8;
      }

      sub_1000157F0(v24, &unk_1002D6730, &unk_10024A620);

      return 0;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

unint64_t sub_100183D88@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10018409C(*a1);
  *a2 = result;
  return result;
}

Swift::Int sub_100183DD4()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_100183E4C(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

unint64_t sub_100183E90@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10018408C(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100183EC8(uint64_t a1)
{
  swift_getObjectType();
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003E50(&off_1002B63B0, v4);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v5, v6, "Location Environment Reader. Callback: Location fetch failed with error: %@", v7, 0xCu);
    sub_1000157F0(v8, &unk_1002D7190, &qword_10024B0F0);
  }

  return (*(v2 + 8))(v4, v1);
}

unint64_t sub_10018408C(unint64_t result)
{
  if (result >= 6)
  {
    return 6;
  }

  return result;
}

unint64_t sub_10018409C(unint64_t result)
{
  if (result >= 7)
  {
    return 7;
  }

  return result;
}

unint64_t sub_1001840B0()
{
  result = qword_1002D6688;
  if (!qword_1002D6688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D6688);
  }

  return result;
}

unint64_t sub_100184108()
{
  result = qword_1002D6690;
  if (!qword_1002D6690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D6690);
  }

  return result;
}

__n128 sub_10018415C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 27) = *(a2 + 27);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100184170(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFA && *(a1 + 43))
  {
    return (*a1 + 250);
  }

  v3 = *(a1 + 41);
  if (v3 <= 6)
  {
    v4 = 6;
  }

  else
  {
    v4 = *(a1 + 41);
  }

  v5 = v4 - 7;
  if (v3 < 6)
  {
    v6 = -1;
  }

  else
  {
    v6 = v5;
  }

  return (v6 + 1);
}

uint64_t sub_1001841C4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF9)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 42) = 0;
    *(result + 40) = 0;
    *result = a2 - 250;
    if (a3 >= 0xFA)
    {
      *(result + 43) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFA)
    {
      *(result + 43) = 0;
    }

    if (a2)
    {
      *(result + 41) = a2 + 6;
    }
  }

  return result;
}

uint64_t _s34AmbientLightDecisionTreeOutputEnumOwet(unsigned __int8 *a1, unsigned int a2)
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

uint64_t _s34AmbientLightDecisionTreeOutputEnumOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t _s27ClientSignalEnvironmentTypeOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s27ClientSignalEnvironmentTypeOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void type metadata accessor for CLAuthorizationStatus()
{
  if (!qword_1002D6720)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1002D6720);
    }
  }
}

unint64_t sub_1001845B0@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100189F9C(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1001845DC()
{
  v1 = OBJC_IVAR____TtCV17wirelessinsightsd20WiFiToCellTransition12MotionReader_mostRecentMotionState;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_100184620(char a1)
{
  v3 = OBJC_IVAR____TtCV17wirelessinsightsd20WiFiToCellTransition12MotionReader_mostRecentMotionState;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_100184670@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtCV17wirelessinsightsd20WiFiToCellTransition12MotionReader_mostRecentPedometerState;
  swift_beginAccess();
  return sub_10001A718(v1 + v3, a1, &qword_1002D67B0, &qword_10024A640);
}

uint64_t sub_1001846D8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCV17wirelessinsightsd20WiFiToCellTransition12MotionReader_mostRecentPedometerState;
  swift_beginAccess();
  sub_10018A03C(a1, v1 + v3, &qword_1002D67B0, &qword_10024A640);
  return swift_endAccess();
}

uint64_t sub_100184748(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003E50(&off_1002B65F8, v7);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v20[0] = v11;
    *v10 = 136315138;
    v19 = a1;
    sub_100164A3C(&qword_1002D69E8, &qword_10024A7C8);
    v12 = String.init<A>(describing:)();
    v18 = v4;
    v14 = sub_10017A8A8(v12, v13, v20);

    *(v10 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v8, v9, "Motion Reader. Setting most recent motion state to %s", v10, 0xCu);
    sub_100164B98(v11);

    (*(v5 + 8))(v7, v18);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
  }

  v15 = OBJC_IVAR____TtCV17wirelessinsightsd20WiFiToCellTransition12MotionReader_mostRecentMotionState;
  result = swift_beginAccess();
  *(v2 + v15) = a1;
  return result;
}

uint64_t sub_100184984(uint64_t a1)
{
  v2 = v1;
  v27 = sub_100164A3C(&qword_1002D67B0, &qword_10024A640);
  v4 = __chkstk_darwin(v27);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v25 - v7;
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003E50(&off_1002B65F8, v12);
  sub_10001A718(a1, v8, &qword_1002D67B0, &qword_10024A640);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v26 = v9;
    v17 = v16;
    v28[0] = v16;
    *v15 = 136315138;
    v25 = v10;
    sub_10001A718(v8, v6, &qword_1002D67B0, &qword_10024A640);
    v18 = String.init<A>(describing:)();
    v27 = v2;
    v19 = a1;
    v21 = v20;
    sub_1000157F0(v8, &qword_1002D67B0, &qword_10024A640);
    v22 = sub_10017A8A8(v18, v21, v28);
    a1 = v19;
    v2 = v27;

    *(v15 + 4) = v22;
    _os_log_impl(&_mh_execute_header, v13, v14, "Motion Reader. Setting most recent pedometer state to %s", v15, 0xCu);
    sub_100164B98(v17);

    (*(v25 + 8))(v12, v26);
  }

  else
  {

    sub_1000157F0(v8, &qword_1002D67B0, &qword_10024A640);
    (*(v10 + 8))(v12, v9);
  }

  v23 = OBJC_IVAR____TtCV17wirelessinsightsd20WiFiToCellTransition12MotionReader_mostRecentPedometerState;
  swift_beginAccess();
  sub_10018A598(a1, v2 + v23);
  return swift_endAccess();
}

uint64_t (*sub_100184CBC())(void *a1)
{
  v1 = v0;
  v2 = *v0;
  v3 = (v0 + OBJC_IVAR____TtCV17wirelessinsightsd20WiFiToCellTransition12MotionReader____lazy_storage___motionActivityUpdateHandler);
  v4 = *(v0 + OBJC_IVAR____TtCV17wirelessinsightsd20WiFiToCellTransition12MotionReader____lazy_storage___motionActivityUpdateHandler);
  v5 = *(v0 + OBJC_IVAR____TtCV17wirelessinsightsd20WiFiToCellTransition12MotionReader____lazy_storage___motionActivityUpdateHandler + 8);
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v7 = v2;
    v8 = swift_allocObject();
    *(v8 + 16) = v1;
    *(v8 + 24) = v7;
    v6 = sub_10018A848;
    *v3 = sub_10018A848;
    v3[1] = v8;

    sub_10002193C(0, v5);
  }

  sub_10002194C(v4, v5);
  return v6;
}

uint64_t sub_100184D98(void *a1, uint64_t a2, uint64_t a3)
{
  v52 = a2;
  v5 = sub_100164A3C(&qword_1002D7180, &qword_10024ABF0);
  __chkstk_darwin(v5 - 8);
  v7 = &v45 - v6;
  v8 = sub_100164A3C(&unk_1002D7BD0, &unk_10024A800);
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8 - 8);
  v51 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = v11;
  __chkstk_darwin(v10);
  v13 = &v45 - v12;
  v14 = type metadata accessor for Logger();
  v50 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a3;
  sub_100003E50(&off_1002B65F8, v16);
  v18 = a1;
  v19 = a1;
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.debug.getter();

  v22 = os_log_type_enabled(v20, v21);
  v48 = v19;
  if (!v22)
  {

    (*(v50 + 8))(v16, v14);
    if (v18)
    {
      goto LABEL_3;
    }

LABEL_5:
    v32 = 1;
    goto LABEL_6;
  }

  v23 = swift_slowAlloc();
  v46 = v9;
  v24 = v23;
  v25 = swift_slowAlloc();
  v47 = v13;
  v45 = v25;
  v53 = v18;
  v54 = v25;
  *v24 = 136315138;
  v26 = v19;
  sub_100164A3C(&qword_1002D69F8, &qword_10024A7F8);
  v27 = String.init<A>(describing:)();
  v29 = v14;
  v30 = sub_10017A8A8(v27, v28, &v54);

  *(v24 + 4) = v30;
  _os_log_impl(&_mh_execute_header, v20, v21, "Motion Reader. Received activity data %s...", v24, 0xCu);
  sub_100164B98(v45);
  v13 = v47;

  v9 = v46;

  (*(v50 + 8))(v16, v29);
  if (!v18)
  {
    goto LABEL_5;
  }

LABEL_3:
  v31 = [v48 startDate];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  v32 = 0;
LABEL_6:
  v33 = type metadata accessor for Date();
  (*(*(v33 - 8) + 56))(v13, v32, 1, v33);
  v34 = v17;
  v35 = sub_10018525C(v18);
  v36 = type metadata accessor for TaskPriority();
  v37 = v7;
  (*(*(v36 - 8) + 56))(v7, 1, 1, v36);
  v38 = v51;
  sub_10001A718(v13, v51, &unk_1002D7BD0, &unk_10024A800);
  v39 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v40 = (v39 + v49 + 7) & 0xFFFFFFFFFFFFFFF8;
  v41 = (v39 + v49 + 23) & 0xFFFFFFFFFFFFFFF8;
  v42 = swift_allocObject();
  *(v42 + 16) = 0;
  *(v42 + 24) = 0;
  sub_100189FCC(v38, v42 + v39);
  v43 = v42 + v40;
  *v43 = v52;
  *(v43 + 8) = v35;
  *(v42 + v41) = v34;

  sub_100176B80(0, 0, v37, &unk_10024A7F0, v42);

  return sub_1000157F0(v13, &unk_1002D7BD0, &unk_10024A800);
}

uint64_t sub_10018525C(void *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v17 - v7;
  if (!a1)
  {
    sub_100003E50(&off_1002B65F8, &v17 - v7);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "Motion Reader. Received activity nil", v13, 2u);
    }

    (*(v3 + 8))(v8, v2);
    return 5;
  }

  v9 = a1;
  if ([v9 stationary])
  {

    return 0;
  }

  if ([v9 automotive])
  {

    return 1;
  }

  if ([v9 walking])
  {

    return 2;
  }

  if ([v9 running])
  {

    return 3;
  }

  if (![v9 cycling])
  {
    sub_100003E50(&off_1002B65F8, v6);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "Motion Reader. Received activity NOT nil, with unclear activity", v16, 2u);
    }

    (*(v3 + 8))(v6, v2);
    return 5;
  }

  return 4;
}

uint64_t sub_100185510(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  *(v7 + 48) = a5;
  *(v7 + 56) = a7;
  *(v7 + 240) = a6;
  *(v7 + 40) = a4;
  v8 = type metadata accessor for Logger();
  *(v7 + 64) = v8;
  *(v7 + 72) = *(v8 - 8);
  *(v7 + 80) = swift_task_alloc();
  *(v7 + 88) = swift_task_alloc();
  *(v7 + 96) = swift_task_alloc();
  sub_100164A3C(&unk_1002D7BD0, &unk_10024A800);
  *(v7 + 104) = swift_task_alloc();
  *(v7 + 112) = swift_task_alloc();
  v9 = type metadata accessor for Date();
  *(v7 + 120) = v9;
  *(v7 + 128) = *(v9 - 8);
  *(v7 + 136) = swift_task_alloc();
  *(v7 + 144) = swift_task_alloc();
  *(v7 + 152) = swift_task_alloc();
  *(v7 + 160) = swift_task_alloc();
  *(v7 + 168) = swift_task_alloc();

  return _swift_task_switch(sub_1001856C0, 0, 0);
}

uint64_t sub_1001856C0()
{
  v1 = v0[15];
  v2 = v0[16];
  v3 = v0[14];
  sub_10001A718(v0[5], v3, &unk_1002D7BD0, &unk_10024A800);
  v4 = *(v2 + 48);
  v0[22] = v4;
  v0[23] = (v2 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v4(v3, 1, v1) == 1)
  {
    v5 = v0[12];
    sub_1000157F0(v0[14], &unk_1002D7BD0, &unk_10024A800);
    sub_100003E50(&off_1002B65F8, v5);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "Motion Reader. Received activity update with data start date nil or all data is nil. Setting most recent state to nil...", v8, 2u);
    }

    v9 = v0[12];
    v10 = v0[8];
    v11 = v0[9];
    v12 = v0[6];

    (*(v11 + 8))(v9, v10);
    v13 = sub_100186294;
    v14 = v12;
  }

  else
  {
    v15 = v0[21];
    v16 = v0[15];
    v17 = v0[16];
    v18 = v0[14];
    v19 = v0[6];
    v20 = *(v17 + 32);
    v0[24] = v20;
    v0[25] = (v17 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v20(v15, v18, v16);
    v13 = sub_100185890;
    v14 = v19;
  }

  return _swift_task_switch(v13, v14, 0);
}

uint64_t sub_100185890()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 48);
  v3 = OBJC_IVAR____TtCV17wirelessinsightsd20WiFiToCellTransition12MotionReader_startedUpdatesAt;
  swift_beginAccess();
  sub_10001A718(v2 + v3, v1, &unk_1002D7BD0, &unk_10024A800);

  return _swift_task_switch(sub_100185938, 0, 0);
}

uint64_t sub_100185938()
{
  v68 = v0;
  v1 = *(v0 + 120);
  v2 = *(v0 + 104);
  if ((*(v0 + 176))(v2, 1, v1) == 1)
  {
    v3 = *(v0 + 168);
    v5 = *(v0 + 128);
    v4 = *(v0 + 136);
    v6 = *(v0 + 80);
    sub_1000157F0(v2, &unk_1002D7BD0, &unk_10024A800);
    sub_100003E50(&off_1002B65F8, v6);
    (*(v5 + 16))(v4, v3, v1);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.debug.getter();
    v9 = os_log_type_enabled(v7, v8);
    v11 = *(v0 + 128);
    v10 = *(v0 + 136);
    v12 = *(v0 + 120);
    v14 = *(v0 + 72);
    v13 = *(v0 + 80);
    v15 = *(v0 + 64);
    if (v9)
    {
      v65 = *(v0 + 64);
      v16 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v67 = v61;
      *v16 = 136315138;
      sub_10018A0BC();
      v17 = dispatch thunk of CustomStringConvertible.description.getter();
      v63 = v13;
      v19 = v18;
      v60 = v8;
      v22 = *(v11 + 8);
      v20 = v11 + 8;
      v21 = v22;
      v22(v10, v12);
      v23 = sub_10017A8A8(v17, v19, &v67);

      *(v16 + 4) = v23;
      _os_log_impl(&_mh_execute_header, v7, v60, "Motion Reader. Received pedometer update with data start date %s, but the local timestamp of update start is nil. Setting most recent state to nil...", v16, 0xCu);
      sub_100164B98(v61);

      (*(v14 + 8))(v63, v65);
    }

    else
    {

      v53 = *(v11 + 8);
      v20 = v11 + 8;
      v21 = v53;
      v53(v10, v12);
      (*(v14 + 8))(v13, v15);
    }

    *(v0 + 224) = v20;
    *(v0 + 232) = v21;
    v54 = *(v0 + 48);
    v55 = sub_100186134;
  }

  else
  {
    (*(v0 + 192))(*(v0 + 160), v2, v1);
    Date.distance(to:)();
    if (v24 <= 90.0)
    {
      v54 = *(v0 + 48);
      v55 = sub_100185E44;
    }

    else
    {
      v26 = *(v0 + 160);
      v25 = *(v0 + 168);
      v28 = *(v0 + 144);
      v27 = *(v0 + 152);
      v29 = *(v0 + 120);
      v30 = *(v0 + 128);
      sub_100003E50(&off_1002B65F8, *(v0 + 88));
      v31 = *(v30 + 16);
      v31(v27, v26, v29);
      v31(v28, v25, v29);
      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.debug.getter();
      v34 = os_log_type_enabled(v32, v33);
      v35 = *(v0 + 152);
      v66 = *(v0 + 144);
      v37 = *(v0 + 120);
      v36 = *(v0 + 128);
      v38 = *(v0 + 88);
      v39 = *(v0 + 64);
      v40 = *(v0 + 72);
      if (v34)
      {
        log = v32;
        v41 = swift_slowAlloc();
        v67 = swift_slowAlloc();
        *v41 = 134218498;
        *(v41 + 4) = 0x4056800000000000;
        *(v41 + 12) = 2080;
        sub_10018A0BC();
        v64 = v38;
        v62 = v39;
        v42 = dispatch thunk of CustomStringConvertible.description.getter();
        v58 = v33;
        v44 = v43;
        v47 = *(v36 + 8);
        v45 = v36 + 8;
        v46 = v47;
        v47(v35, v37);
        v48 = sub_10017A8A8(v42, v44, &v67);

        *(v41 + 14) = v48;
        *(v41 + 22) = 2080;
        v49 = dispatch thunk of CustomStringConvertible.description.getter();
        v51 = v50;
        v47(v66, v37);
        v52 = sub_10017A8A8(v49, v51, &v67);

        *(v41 + 24) = v52;
        _os_log_impl(&_mh_execute_header, log, v58, "Motion Reader. Received outdated activity data (start date more than %fs in past from %s from start date %s. Setting most recent state to nil...", v41, 0x20u);
        swift_arrayDestroy();

        (*(v40 + 8))(v64, v62);
      }

      else
      {

        v56 = *(v36 + 8);
        v45 = v36 + 8;
        v46 = v56;
        v56(v66, v37);
        v56(v35, v37);
        (*(v40 + 8))(v38, v39);
      }

      *(v0 + 208) = v45;
      *(v0 + 216) = v46;
      v54 = *(v0 + 48);
      v55 = sub_100185FBC;
    }
  }

  return _swift_task_switch(v55, v54, 0);
}

uint64_t sub_100185E44()
{
  sub_100184748(*(v0 + 240));

  return _swift_task_switch(sub_100185EB0, 0, 0);
}

uint64_t sub_100185EB0()
{
  v1 = v0[21];
  v2 = v0[15];
  v3 = *(v0[16] + 8);
  v3(v0[20], v2);
  v3(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100185FBC()
{
  sub_100184748(5);

  return _swift_task_switch(sub_100186028, 0, 0);
}

uint64_t sub_100186028()
{
  v1 = v0[27];
  v2 = v0[21];
  v3 = v0[15];
  v1(v0[20], v3);
  v1(v2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100186134()
{
  sub_100184748(5);

  return _swift_task_switch(sub_1001861A0, 0, 0);
}

uint64_t sub_1001861A0()
{
  (*(v0 + 232))(*(v0 + 168), *(v0 + 120));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100186294()
{
  sub_100184748(5);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t (*sub_10018637C())(void *a1, uint64_t a2)
{
  v1 = v0;
  v2 = *v0;
  v3 = (v0 + OBJC_IVAR____TtCV17wirelessinsightsd20WiFiToCellTransition12MotionReader____lazy_storage___pedometerUpdateHandler);
  v4 = *(v0 + OBJC_IVAR____TtCV17wirelessinsightsd20WiFiToCellTransition12MotionReader____lazy_storage___pedometerUpdateHandler);
  v5 = *(v0 + OBJC_IVAR____TtCV17wirelessinsightsd20WiFiToCellTransition12MotionReader____lazy_storage___pedometerUpdateHandler + 8);
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v7 = v2;
    v8 = swift_allocObject();
    *(v8 + 16) = v1;
    *(v8 + 24) = v7;
    v6 = sub_10018A608;
    *v3 = sub_10018A608;
    v3[1] = v8;

    sub_10002193C(0, v5);
  }

  sub_10002194C(v4, v5);
  return v6;
}

uint64_t sub_100186458(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v106 = a2;
  v107 = a3;
  v6 = sub_100164A3C(&qword_1002D7180, &qword_10024ABF0);
  __chkstk_darwin(v6 - 8);
  v104 = &v89 - v7;
  v8 = sub_100164A3C(&unk_1002D7BD0, &unk_10024A800);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &v89 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v109 = &v89 - v12;
  v13 = _s14PedometerStateVMa(0);
  v14 = *(v13 - 8);
  v100 = v13;
  v101 = v14;
  v15 = __chkstk_darwin(v13);
  v102 = v16;
  v103 = &v89 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v99 = &v89 - v17;
  v18 = type metadata accessor for Logger();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v89 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = a4;
  sub_100003E50(&off_1002B65F8, v21);
  v22 = a1;
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.debug.getter();

  v25 = os_log_type_enabled(v23, v24);
  v108 = v22;
  if (v25)
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v98 = v11;
    v28 = v27;
    v110 = a1;
    v111 = v27;
    *v26 = 136315138;
    v29 = v22;
    sub_100164A3C(&qword_1002D69F0, &qword_10024A7E0);
    v30 = String.init<A>(describing:)();
    v32 = a1;
    v33 = sub_10017A8A8(v30, v31, &v111);

    *(v26 + 4) = v33;
    a1 = v32;
    _os_log_impl(&_mh_execute_header, v23, v24, "Motion Reader. Received pedometer data %s...", v26, 0xCu);
    sub_100164B98(v28);
    v11 = v98;
  }

  (*(v19 + 8))(v21, v18);
  v34 = v109;
  if (!a1)
  {
    v44 = type metadata accessor for Date();
    v45 = *(*(v44 - 8) + 56);
    LODWORD(v108) = 1;
    v45(v34, 1, 1, v44);
    v45(v11, 1, 1, v44);
    v96 = 0;
    v97 = 0;
    v98 = 0;
    v46 = 0;
    v47 = 0;
    v48 = 0;
    v95 = 1;
    v49 = 1;
    v50 = 1;
    v51 = 1;
    v52 = 1;
    goto LABEL_27;
  }

  v35 = v108;
  v36 = [v108 startDate];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  v37 = type metadata accessor for Date();
  v38 = *(*(v37 - 8) + 56);
  v39 = 1;
  v38(v34, 0, 1, v37);
  v40 = [v35 endDate];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  v38(v11, 0, 1, v37);
  v41 = [v35 currentPace];
  if (v41)
  {
    v111 = 0;
    v112 = 1;
    v42 = v41;
    static Double._conditionallyBridgeFromObjectiveC(_:result:)();

    v43 = v111;
    v39 = v112;
  }

  else
  {
    v43 = 0;
  }

  v93 = v43;
  v53 = [v35 currentCadence];
  v94 = v39;
  if (v53)
  {
    v111 = 0;
    v112 = 1;
    v54 = v53;
    static Double._conditionallyBridgeFromObjectiveC(_:result:)();

    v55 = v111;
    v92 = v112;
  }

  else
  {
    v92 = 1;
    v55 = 0;
  }

  v91 = v55;
  v56 = [v35 floorsAscended];
  if (v56)
  {
    v111 = 0;
    v112 = 1;
    v57 = v56;
    static Double._conditionallyBridgeFromObjectiveC(_:result:)();

    v58 = v111;
    v90 = v112;
  }

  else
  {
    v90 = 1;
    v58 = 0;
  }

  v59 = [v35 floorsDescended];
  v60 = v59 == 0;
  if (!v59)
  {
    v63 = 0;
    goto LABEL_18;
  }

  v111 = 0;
  v61 = 1;
  v112 = 1;
  v62 = v59;
  static Double._conditionallyBridgeFromObjectiveC(_:result:)();

  v63 = v111;
  if ((v112 & 1) == 0)
  {
LABEL_18:
    v61 = v60;
  }

  v98 = v63;
  v64 = [v35 numberOfSteps];
  v65 = v64 == 0;
  if (!v64)
  {
    v68 = 0;
    goto LABEL_23;
  }

  v111 = 0;
  v66 = 1;
  v112 = 1;
  v67 = v64;
  static Double._conditionallyBridgeFromObjectiveC(_:result:)();

  v68 = v111;
  if ((v112 & 1) == 0)
  {
LABEL_23:
    v66 = v65;
  }

  v97 = v68;
  v49 = v61;
  v69 = [v108 averageActivePace];
  v95 = v66;
  if (v69)
  {
    v111 = 0;
    v112 = 1;
    v70 = v69;
    static Double._conditionallyBridgeFromObjectiveC(_:result:)();

    v96 = v111;
    LODWORD(v108) = v112;
    v52 = v94;
    v48 = v93;
    v51 = v92;
    v47 = v91;
    v50 = v90;
    v46 = v89;
    v34 = v109;
  }

  else
  {
    v96 = 0;
    v52 = v94;
    v48 = v93;
    v51 = v92;
    v47 = v91;
    v50 = v90;
    v46 = v89;
    v34 = v109;
    LODWORD(v108) = 1;
  }

LABEL_27:
  v71 = v34;
  v72 = v99;
  sub_100189FCC(v71, v99);
  v73 = v100;
  sub_100189FCC(v11, v72 + v100[5]);
  v74 = v72 + v73[6];
  *v74 = v48;
  *(v74 + 8) = v52;
  v75 = v72 + v73[7];
  *v75 = v47;
  *(v75 + 8) = v51;
  v76 = v72 + v73[8];
  *v76 = v46;
  *(v76 + 8) = v50;
  v77 = v72 + v73[9];
  v78 = v97;
  *v77 = v98;
  *(v77 + 8) = v49;
  v79 = v72 + v73[10];
  *v79 = v78;
  *(v79 + 8) = v95;
  v80 = v72 + v73[11];
  *v80 = v96;
  *(v80 + 8) = v108;
  v81 = type metadata accessor for TaskPriority();
  v82 = v104;
  (*(*(v81 - 8) + 56))(v104, 1, 1, v81);
  v83 = v103;
  sub_10018A610(v72, v103);
  v84 = (*(v101 + 80) + 48) & ~*(v101 + 80);
  v85 = (v102 + v84 + 7) & 0xFFFFFFFFFFFFFFF8;
  v86 = swift_allocObject();
  v86[2] = 0;
  v86[3] = 0;
  v87 = v107;
  v86[4] = v106;
  v86[5] = v87;
  sub_10018A674(v83, v86 + v84);
  *(v86 + v85) = v105;
  swift_errorRetain();

  sub_100176B80(0, 0, v82, &unk_10024A7D8, v86);

  return sub_10018A7EC(v72);
}

uint64_t sub_100186CF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[11] = a6;
  v7[12] = a7;
  v7[9] = a4;
  v7[10] = a5;
  v8 = _s14PedometerStateVMa(0);
  v7[13] = v8;
  v7[14] = *(v8 - 8);
  v7[15] = swift_task_alloc();
  v7[16] = swift_task_alloc();
  v7[17] = swift_task_alloc();
  v7[18] = swift_task_alloc();
  v7[19] = swift_task_alloc();
  v7[20] = swift_task_alloc();
  v7[21] = swift_task_alloc();
  v7[22] = swift_task_alloc();
  sub_100164A3C(&qword_1002D67B0, &qword_10024A640);
  v7[23] = swift_task_alloc();
  v9 = type metadata accessor for Logger();
  v7[24] = v9;
  v7[25] = *(v9 - 8);
  v7[26] = swift_task_alloc();
  v7[27] = swift_task_alloc();
  v7[28] = swift_task_alloc();
  v7[29] = swift_task_alloc();
  v7[30] = swift_task_alloc();
  v7[31] = sub_100164A3C(&unk_1002D7BD0, &unk_10024A800);
  v7[32] = swift_task_alloc();
  v7[33] = swift_task_alloc();
  v7[34] = swift_task_alloc();
  v10 = type metadata accessor for Date();
  v7[35] = v10;
  v7[36] = *(v10 - 8);
  v7[37] = swift_task_alloc();
  v7[38] = swift_task_alloc();
  v7[39] = swift_task_alloc();
  v7[40] = swift_task_alloc();

  return _swift_task_switch(sub_100186FA0, 0, 0);
}

uint64_t sub_100186FA0()
{
  v39 = v0;
  if (v0[9])
  {
    v1 = v0[30];
    swift_errorRetain();
    sub_100003E50(&off_1002B65F8, v1);
    swift_errorRetain();
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.debug.getter();

    v4 = os_log_type_enabled(v2, v3);
    v5 = v0[30];
    v6 = v0[24];
    v7 = v0[25];
    if (v4)
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v38 = v9;
      *v8 = 136315138;
      swift_getErrorValue();
      v10 = Error.localizedDescription.getter();
      v12 = sub_10017A8A8(v10, v11, &v38);

      *(v8 + 4) = v12;
      _os_log_impl(&_mh_execute_header, v2, v3, "Motion Reader. Received pedometer update with error. %s. Setting most recent state to nil...", v8, 0xCu);
      sub_100164B98(v9);
    }

    (*(v7 + 8))(v5, v6);
    v13 = v0[10];
    (*(v0[14] + 56))(v0[23], 1, 1, v0[13]);
    v14 = sub_100187314;
    goto LABEL_10;
  }

  v15 = v0[35];
  v16 = v0[36];
  v17 = v0[34];
  sub_10001A718(v0[11], v17, &unk_1002D7BD0, &unk_10024A800);
  v18 = *(v16 + 48);
  v0[41] = v18;
  v0[42] = (v16 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v18(v17, 1, v15) != 1)
  {
    v32 = v0[40];
    v33 = v0[35];
    v34 = v0[36];
    v35 = v0[34];
    v13 = v0[10];
    v36 = *(v34 + 32);
    v0[43] = v36;
    v0[44] = (v34 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v36(v32, v35, v33);
    v14 = sub_100187508;
LABEL_10:
    v30 = v14;
    v31 = v13;
    goto LABEL_11;
  }

  v19 = v0[29];
  sub_1000157F0(v0[34], &unk_1002D7BD0, &unk_10024A800);
  sub_100003E50(&off_1002B65F8, v19);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&_mh_execute_header, v20, v21, "Motion Reader. Received pedometer data with start date nil or all data is nil. Setting most recent state to nil...", v22, 2u);
  }

  v23 = v0[29];
  v24 = v0[24];
  v25 = v0[25];
  v26 = v0[23];
  v27 = v0[13];
  v28 = v0[14];
  v29 = v0[10];

  (*(v25 + 8))(v23, v24);
  (*(v28 + 56))(v26, 1, 1, v27);
  v30 = sub_1001885F0;
  v31 = v29;
LABEL_11:

  return _swift_task_switch(v30, v31, 0);
}

uint64_t sub_100187314()
{
  v1 = *(v0 + 184);
  sub_100184984(v1);
  sub_1000157F0(v1, &qword_1002D67B0, &qword_10024A640);

  return _swift_task_switch(sub_10018739C, 0, 0);
}

uint64_t sub_10018739C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100187508()
{
  v1 = *(v0 + 264);
  v2 = *(v0 + 80);
  v3 = OBJC_IVAR____TtCV17wirelessinsightsd20WiFiToCellTransition12MotionReader_startedUpdatesAt;
  swift_beginAccess();
  sub_10001A718(v2 + v3, v1, &unk_1002D7BD0, &unk_10024A800);

  return _swift_task_switch(sub_1001875B0, 0, 0);
}

uint64_t sub_1001875B0()
{
  v135 = v0;
  v1 = *(v0 + 280);
  v2 = *(v0 + 264);
  if ((*(v0 + 328))(v2, 1, v1) == 1)
  {
    v3 = *(v0 + 208);
    v5 = *(v0 + 120);
    v4 = *(v0 + 128);
    v6 = *(v0 + 88);
    sub_1000157F0(v2, &unk_1002D7BD0, &unk_10024A800);
    sub_100003E50(&off_1002B65F8, v3);
    sub_10018A610(v6, v4);
    sub_10018A610(v6, v5);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = *(v0 + 256);
      v127 = *(v0 + 192);
      v130 = *(v0 + 208);
      v10 = *(v0 + 128);
      log = *(v0 + 120);
      v124 = *(v0 + 200);
      v120 = *(v0 + 104);
      v11 = swift_slowAlloc();
      v134 = swift_slowAlloc();
      *v11 = 136315394;
      sub_10001A718(v10, v9, &unk_1002D7BD0, &unk_10024A800);
      v12 = String.init<A>(describing:)();
      v14 = v13;
      sub_10018A7EC(v10);
      v15 = sub_10017A8A8(v12, v14, &v134);

      *(v11 + 4) = v15;
      *(v11 + 12) = 2080;
      sub_10001A718(log + *(v120 + 20), v9, &unk_1002D7BD0, &unk_10024A800);
      v16 = String.init<A>(describing:)();
      v18 = v17;
      sub_10018A7EC(log);
      v19 = sub_10017A8A8(v16, v18, &v134);

      *(v11 + 14) = v19;
      _os_log_impl(&_mh_execute_header, v7, v8, "Motion Reader. Received pedometer data. Start date: %s, end date: %s, but the local timestamp of update start is nil. Setting most recent state to nil...", v11, 0x16u);
      swift_arrayDestroy();

      (*(v124 + 8))(v130, v127);
    }

    else
    {
      v54 = *(v0 + 200);
      v53 = *(v0 + 208);
      v55 = *(v0 + 192);
      v57 = *(v0 + 120);
      v56 = *(v0 + 128);

      sub_10018A7EC(v57);
      sub_10018A7EC(v56);
      (*(v54 + 8))(v53, v55);
    }

    v58 = *(v0 + 80);
    (*(*(v0 + 112) + 56))(*(v0 + 184), 1, 1, *(v0 + 104));
    v59 = sub_1001883EC;
  }

  else
  {
    v20 = *(v0 + 288);
    (*(v0 + 344))(*(v0 + 312), v2, v1);
    Date.distance(to:)();
    v21 = (v20 + 16);
    v22 = *(v0 + 312);
    v23 = *(v0 + 280);
    if (v24 <= 90.0)
    {
      v60 = *(v0 + 304);
      v62 = *(v0 + 168);
      v61 = *(v0 + 176);
      v132 = *(v0 + 160);
      v63 = *(v0 + 88);
      sub_100003E50(&off_1002B65F8, *(v0 + 224));
      (*v21)(v60, v22, v23);
      sub_10018A610(v63, v61);
      sub_10018A610(v63, v62);
      sub_10018A610(v63, v132);
      v64 = Logger.logObject.getter();
      v65 = static os_log_type_t.debug.getter();
      v133 = v64;
      v66 = os_log_type_enabled(v64, v65);
      v67 = *(v0 + 304);
      v69 = *(v0 + 280);
      v68 = *(v0 + 288);
      if (v66)
      {
        v70 = *(v0 + 256);
        logb = *(v0 + 200);
        v126 = *(v0 + 192);
        v129 = *(v0 + 224);
        v71 = *(v0 + 176);
        v113 = *(v0 + 168);
        v117 = *(v0 + 152);
        v119 = *(v0 + 160);
        v112 = *(v0 + 104);
        v72 = swift_slowAlloc();
        v134 = swift_slowAlloc();
        *v72 = 136315906;
        sub_10018A0BC();
        v73 = dispatch thunk of CustomStringConvertible.description.getter();
        v115 = v65;
        v75 = v74;
        v78 = *(v68 + 8);
        v76 = v68 + 8;
        v77 = v78;
        v78(v67, v69);
        v79 = sub_10017A8A8(v73, v75, &v134);

        *(v72 + 4) = v79;
        *(v72 + 12) = 2080;
        sub_10001A718(v71, v70, &unk_1002D7BD0, &unk_10024A800);
        v80 = String.init<A>(describing:)();
        v82 = v81;
        sub_10018A7EC(v71);
        v83 = sub_10017A8A8(v80, v82, &v134);

        *(v72 + 14) = v83;
        *(v72 + 22) = 2080;
        sub_10001A718(v113 + *(v112 + 20), v70, &unk_1002D7BD0, &unk_10024A800);
        v84 = String.init<A>(describing:)();
        v86 = v85;
        sub_10018A7EC(v113);
        v87 = sub_10017A8A8(v84, v86, &v134);

        *(v72 + 24) = v87;
        *(v72 + 32) = 2080;
        sub_10018A610(v119, v117);
        v88 = String.init<A>(describing:)();
        v90 = v89;
        sub_10018A7EC(v119);
        v91 = sub_10017A8A8(v88, v90, &v134);

        *(v72 + 34) = v91;
        _os_log_impl(&_mh_execute_header, v133, v115, "Motion Reader. Received pedometer data. Started updates at: %s. Data start date: %s. Data end date: %s. %s. Updating most recent state...", v72, 0x2Au);
        swift_arrayDestroy();

        (logb[1].isa)(v129, v126);
      }

      else
      {
        v100 = *(v0 + 224);
        v101 = *(v0 + 192);
        v102 = *(v0 + 200);
        v104 = *(v0 + 168);
        v103 = *(v0 + 176);
        v105 = *(v0 + 160);

        sub_10018A7EC(v105);
        sub_10018A7EC(v104);
        sub_10018A7EC(v103);
        v106 = *(v68 + 8);
        v76 = v68 + 8;
        v77 = v106;
        v106(v67, v69);
        (*(v102 + 8))(v100, v101);
      }

      *(v0 + 360) = v76;
      *(v0 + 368) = v77;
      v107 = *(v0 + 184);
      v108 = *(v0 + 104);
      v109 = *(v0 + 112);
      v110 = *(v0 + 80);
      sub_10018A610(*(v0 + 88), v107);
      (*(v109 + 56))(v107, 0, 1, v108);
      v98 = sub_100187FB4;
      v99 = v110;
      goto LABEL_16;
    }

    v25 = *(v0 + 296);
    v27 = *(v0 + 136);
    v26 = *(v0 + 144);
    v28 = *(v0 + 88);
    sub_100003E50(&off_1002B65F8, *(v0 + 216));
    (*v21)(v25, v22, v23);
    sub_10018A610(v28, v26);
    sub_10018A610(v28, v27);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.debug.getter();
    v31 = os_log_type_enabled(v29, v30);
    v32 = *(v0 + 288);
    v33 = *(v0 + 296);
    v34 = *(v0 + 280);
    if (v31)
    {
      loga = v29;
      v35 = *(v0 + 256);
      v125 = *(v0 + 200);
      v128 = *(v0 + 192);
      v131 = *(v0 + 216);
      v36 = *(v0 + 144);
      v118 = *(v0 + 136);
      v114 = *(v0 + 104);
      v37 = swift_slowAlloc();
      v134 = swift_slowAlloc();
      *v37 = 134218754;
      *(v37 + 4) = 0x4056800000000000;
      *(v37 + 12) = 2080;
      sub_10018A0BC();
      v116 = v30;
      v38 = dispatch thunk of CustomStringConvertible.description.getter();
      v40 = v39;
      v43 = *(v32 + 8);
      v41 = v32 + 8;
      v42 = v43;
      v43(v33, v34);
      v44 = sub_10017A8A8(v38, v40, &v134);

      *(v37 + 14) = v44;
      *(v37 + 22) = 2080;
      sub_10001A718(v36, v35, &unk_1002D7BD0, &unk_10024A800);
      v45 = String.init<A>(describing:)();
      v47 = v46;
      sub_10018A7EC(v36);
      v48 = sub_10017A8A8(v45, v47, &v134);

      *(v37 + 24) = v48;
      *(v37 + 32) = 2080;
      sub_10001A718(v118 + *(v114 + 20), v35, &unk_1002D7BD0, &unk_10024A800);
      v49 = String.init<A>(describing:)();
      v51 = v50;
      sub_10018A7EC(v118);
      v52 = sub_10017A8A8(v49, v51, &v134);

      *(v37 + 34) = v52;
      _os_log_impl(&_mh_execute_header, loga, v116, "Motion Reader. Received outdated pedometer data. Tolerance: %fs. Started updates at: %s. Data start date: %s. Data end date: %s. Setting most recent state to nil...", v37, 0x2Au);
      swift_arrayDestroy();

      (*(v125 + 8))(v131, v128);
    }

    else
    {
      v92 = *(v0 + 216);
      v93 = *(v0 + 192);
      v94 = *(v0 + 200);
      v96 = *(v0 + 136);
      v95 = *(v0 + 144);

      sub_10018A7EC(v96);
      sub_10018A7EC(v95);
      v97 = *(v32 + 8);
      v41 = v32 + 8;
      v42 = v97;
      v97(v33, v34);
      (*(v94 + 8))(v92, v93);
    }

    *(v0 + 376) = v41;
    *(v0 + 384) = v42;
    v58 = *(v0 + 80);
    (*(*(v0 + 112) + 56))(*(v0 + 184), 1, 1, *(v0 + 104));
    v59 = sub_1001881D0;
  }

  v98 = v59;
  v99 = v58;
LABEL_16:

  return _swift_task_switch(v98, v99, 0);
}

uint64_t sub_100187FB4()
{
  v1 = *(v0 + 184);
  sub_100184984(v1);
  sub_1000157F0(v1, &qword_1002D67B0, &qword_10024A640);

  return _swift_task_switch(sub_10018803C, 0, 0);
}

uint64_t sub_10018803C()
{
  v1 = v0[46];
  v2 = v0[40];
  v3 = v0[35];
  v1(v0[39], v3);
  v1(v2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1001881D0()
{
  v1 = *(v0 + 184);
  sub_100184984(v1);
  sub_1000157F0(v1, &qword_1002D67B0, &qword_10024A640);

  return _swift_task_switch(sub_100188258, 0, 0);
}

uint64_t sub_100188258()
{
  v1 = v0[48];
  v2 = v0[40];
  v3 = v0[35];
  v1(v0[39], v3);
  v1(v2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1001883EC()
{
  v1 = *(v0 + 184);
  sub_100184984(v1);
  sub_1000157F0(v1, &qword_1002D67B0, &qword_10024A640);

  return _swift_task_switch(sub_100188474, 0, 0);
}

uint64_t sub_100188474()
{
  (*(v0[36] + 8))(v0[40], v0[35]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1001885F0()
{
  v1 = *(v0 + 184);
  sub_100184984(v1);
  sub_1000157F0(v1, &qword_1002D67B0, &qword_10024A640);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10018877C()
{
  v0 = swift_allocObject();
  sub_1001887B4();
  return v0;
}

uint64_t sub_1001887B4()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v27 = *(v2 - 8);
  v28 = v2;
  __chkstk_darwin(v2);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_defaultActor_initialize();
  *(v0 + 112) = [objc_allocWithZone(NSOperationQueue) init];
  v5 = OBJC_IVAR____TtCV17wirelessinsightsd20WiFiToCellTransition12MotionReader_startedUpdatesAt;
  v6 = type metadata accessor for Date();
  (*(*(v6 - 8) + 56))(v0 + v5, 1, 1, v6);
  v7 = OBJC_IVAR____TtCV17wirelessinsightsd20WiFiToCellTransition12MotionReader_motionActivityManager;
  *(v0 + v7) = [objc_allocWithZone(CMMotionActivityManager) init];
  v8 = OBJC_IVAR____TtCV17wirelessinsightsd20WiFiToCellTransition12MotionReader_pedometerReader;
  *(v0 + v8) = [objc_allocWithZone(CMPedometer) init];
  *(v0 + OBJC_IVAR____TtCV17wirelessinsightsd20WiFiToCellTransition12MotionReader_mostRecentMotionState) = 5;
  v9 = OBJC_IVAR____TtCV17wirelessinsightsd20WiFiToCellTransition12MotionReader_mostRecentPedometerState;
  v10 = _s14PedometerStateVMa(0);
  (*(*(v10 - 8) + 56))(v0 + v9, 1, 1, v10);
  v11 = (v0 + OBJC_IVAR____TtCV17wirelessinsightsd20WiFiToCellTransition12MotionReader____lazy_storage___motionActivityUpdateHandler);
  *v11 = 0;
  v11[1] = 0;
  v12 = (v0 + OBJC_IVAR____TtCV17wirelessinsightsd20WiFiToCellTransition12MotionReader____lazy_storage___pedometerUpdateHandler);
  *v12 = 0;
  v12[1] = 0;
  v13 = objc_opt_self();
  v14 = [v13 isActivityAvailable];
  v15 = [v13 authorizationStatus];
  v16 = v15 == 3;
  v17 = objc_opt_self();
  v18 = [v17 isStepCountingAvailable];
  v19 = [v17 authorizationStatus];
  v20 = v19;
  if (v18)
  {
    *(v0 + OBJC_IVAR____TtCV17wirelessinsightsd20WiFiToCellTransition12MotionReader_usePedometer) = v19 == 3;
    if ((v14 & 1) == 0)
    {
LABEL_3:
      v16 = 0;
      v21 = 0;
      goto LABEL_6;
    }
  }

  else
  {
    *(v0 + OBJC_IVAR____TtCV17wirelessinsightsd20WiFiToCellTransition12MotionReader_usePedometer) = 0;
    if ((v14 & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  v21 = 1;
LABEL_6:
  *(v0 + OBJC_IVAR____TtCV17wirelessinsightsd20WiFiToCellTransition12MotionReader_useMotionActivityManager) = v16;
  sub_100003E50(&off_1002B65F8, v4);

  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = v15 == 3;
    v25 = swift_slowAlloc();
    *v25 = 67110400;
    *(v25 + 4) = v24;
    *(v25 + 8) = 1024;
    *(v25 + 10) = v21;
    *(v25 + 14) = 1024;
    *(v25 + 16) = *(v1 + OBJC_IVAR____TtCV17wirelessinsightsd20WiFiToCellTransition12MotionReader_useMotionActivityManager);
    *(v25 + 20) = 1024;
    *(v25 + 22) = v20 == 3;
    *(v25 + 26) = 1024;
    *(v25 + 28) = v18;
    *(v25 + 32) = 1024;
    *(v25 + 34) = *(v1 + OBJC_IVAR____TtCV17wirelessinsightsd20WiFiToCellTransition12MotionReader_usePedometer);

    _os_log_impl(&_mh_execute_header, v22, v23, "Motion Reader. CMMotionActivityManager authorization status %{BOOL}d, availability %{BOOL}d -> useMotionActivityManager: %{BOOL}d. CMPedometer authorization status %{BOOL}d, availability %{BOOL}d -> usePedometer: %{BOOL}d", v25, 0x26u);
  }

  else
  {
  }

  (*(v27 + 8))(v4, v28);
  return v1;
}

void sub_100188B7C()
{
  v1 = v0;
  v90 = *v0;
  v2 = sub_100164A3C(&qword_1002D67B0, &qword_10024A640);
  __chkstk_darwin(v2 - 8);
  v87 = &v80 - v3;
  v4 = type metadata accessor for Logger();
  v92 = *(v4 - 8);
  v93 = v4;
  v5 = __chkstk_darwin(v4);
  v85 = &v80 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v91 = &v80 - v8;
  __chkstk_darwin(v7);
  v81 = &v80 - v9;
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v82 = &v80 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v16 = &v80 - v15;
  __chkstk_darwin(v14);
  v18 = &v80 - v17;
  v83 = sub_100164A3C(&unk_1002D7BD0, &unk_10024A800);
  v19 = __chkstk_darwin(v83);
  v86 = &v80 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v89 = &v80 - v22;
  v23 = __chkstk_darwin(v21);
  v25 = &v80 - v24;
  __chkstk_darwin(v23);
  v27 = &v80 - v26;
  v28 = OBJC_IVAR____TtCV17wirelessinsightsd20WiFiToCellTransition12MotionReader_startedUpdatesAt;
  swift_beginAccess();
  v94 = v28;
  sub_10001A718(v1 + v28, v27, &unk_1002D7BD0, &unk_10024A800);
  v30 = (v11 + 48);
  v29 = *(v11 + 48);
  v31 = v29(v27, 1, v10);
  v88 = v11;
  if (v31)
  {
    sub_1000157F0(v27, &unk_1002D7BD0, &unk_10024A800);
LABEL_4:
    v36 = v94;
    sub_10001A718(v1 + v94, v25, &unk_1002D7BD0, &unk_10024A800);
    v85 = v30;
    v84 = v29;
    v37 = v29(v25, 1, v10);
    sub_1000157F0(v25, &unk_1002D7BD0, &unk_10024A800);
    v38 = v91;
    if (v37 != 1)
    {
      v39 = v81;
      sub_100003E50(&off_1002B65F8, v81);
      v40 = Logger.logObject.getter();
      v41 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        *v42 = 0;
        _os_log_impl(&_mh_execute_header, v40, v41, "Motion Reader. Before starting stopping with Force because previous startedUpdatesAt not NIL", v42, 2u);
      }

      (*(v92 + 8))(v39, v93);
      (*(*v1 + 320))(1);
    }

    sub_100003E50(&off_1002B65F8, v38);

    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      aBlock = swift_slowAlloc();
      *v45 = 136315394;
      v46 = v89;
      sub_10001A718(v1 + v94, v89, &unk_1002D7BD0, &unk_10024A800);
      v47 = String.init<A>(describing:)();
      v49 = sub_10017A8A8(v47, v48, &aBlock);

      *(v45 + 4) = v49;
      *(v45 + 12) = 2080;
      static Date.now.getter();
      sub_10018A0BC();
      v50 = dispatch thunk of CustomStringConvertible.description.getter();
      v52 = v51;
      v53 = v18;
      v54 = v88;
      (*(v88 + 8))(v53, v10);
      v55 = sub_10017A8A8(v50, v52, &aBlock);

      *(v45 + 14) = v55;
      _os_log_impl(&_mh_execute_header, v43, v44, "Motion Reader. Started pedometerReader, motionActivityManager updates. Changed startedUpdatesAt from %s to %s. Set states to NIL", v45, 0x16u);
      swift_arrayDestroy();
      v36 = v94;

      (*(v92 + 8))(v91, v93);
    }

    else
    {

      (*(v92 + 8))(v38, v93);
      v54 = v88;
      v46 = v89;
    }

    v56 = v84;
    static Date.now.getter();
    (*(v54 + 56))(v46, 0, 1, v10);
    swift_beginAccess();
    sub_10018A03C(v46, v1 + v36, &unk_1002D7BD0, &unk_10024A800);
    swift_endAccess();
    v57 = OBJC_IVAR____TtCV17wirelessinsightsd20WiFiToCellTransition12MotionReader_mostRecentMotionState;
    swift_beginAccess();
    *(v1 + v57) = 5;
    v58 = _s14PedometerStateVMa(0);
    v59 = v87;
    (*(*(v58 - 8) + 56))(v87, 1, 1, v58);
    v60 = OBJC_IVAR____TtCV17wirelessinsightsd20WiFiToCellTransition12MotionReader_mostRecentPedometerState;
    swift_beginAccess();
    sub_10018A03C(v59, v1 + v60, &qword_1002D67B0, &qword_10024A640);
    swift_endAccess();
    v61 = v86;
    if (*(v1 + OBJC_IVAR____TtCV17wirelessinsightsd20WiFiToCellTransition12MotionReader_usePedometer) == 1)
    {
      v62 = *(v1 + OBJC_IVAR____TtCV17wirelessinsightsd20WiFiToCellTransition12MotionReader_pedometerReader);
      sub_10001A718(v1 + v36, v86, &unk_1002D7BD0, &unk_10024A800);
      if (v56(v61, 1, v10) == 1)
      {
        v63 = v82;
        static Date.now.getter();
        if (v56(v61, 1, v10) != 1)
        {
          sub_1000157F0(v61, &unk_1002D7BD0, &unk_10024A800);
        }
      }

      else
      {
        v63 = v82;
        (*(v54 + 32))(v82, v61, v10);
      }

      isa = Date._bridgeToObjectiveC()().super.isa;
      (*(v54 + 8))(v63, v10);
      v99 = sub_10018637C();
      v100 = v65;
      aBlock = _NSConcreteStackBlock;
      v96 = 1107296256;
      v97 = sub_100189778;
      v98 = &unk_1002B65C0;
      v66 = _Block_copy(&aBlock);

      [v62 startPedometerUpdatesFromDate:isa withHandler:v66];
      _Block_release(v66);
    }

    if (*(v1 + OBJC_IVAR____TtCV17wirelessinsightsd20WiFiToCellTransition12MotionReader_useMotionActivityManager) == 1)
    {
      v67 = *(v1 + OBJC_IVAR____TtCV17wirelessinsightsd20WiFiToCellTransition12MotionReader_motionActivityManager);
      v68 = v1[14];
      v99 = sub_100184CBC();
      v100 = v69;
      aBlock = _NSConcreteStackBlock;
      v96 = 1107296256;
      v97 = sub_100189804;
      v98 = &unk_1002B6598;
      v70 = _Block_copy(&aBlock);

      [v67 startActivityUpdatesToQueue:v68 withHandler:v70];
      _Block_release(v70);
    }

    return;
  }

  v32 = v85;
  (*(v11 + 16))(v18, v27, v10);
  sub_1000157F0(v27, &unk_1002D7BD0, &unk_10024A800);
  static Date.now.getter();
  Date.distance(to:)();
  v34 = v33;
  v35 = *(v11 + 8);
  v35(v16, v10);
  v35(v18, v10);
  if (v34 > 90.0)
  {
    goto LABEL_4;
  }

  sub_100003E50(&off_1002B65F8, v32);

  v71 = Logger.logObject.getter();
  v72 = static os_log_type_t.debug.getter();

  v73 = os_log_type_enabled(v71, v72);
  v74 = v94;
  if (v73)
  {
    v75 = swift_slowAlloc();
    v76 = swift_slowAlloc();
    aBlock = v76;
    *v75 = 136315394;
    sub_10001A718(v1 + v74, v89, &unk_1002D7BD0, &unk_10024A800);
    v77 = String.init<A>(describing:)();
    v79 = sub_10017A8A8(v77, v78, &aBlock);

    *(v75 + 4) = v79;
    *(v75 + 12) = 2048;
    *(v75 + 14) = 0x4056800000000000;
    _os_log_impl(&_mh_execute_header, v71, v72, "Motion Reader. Skipped starting pedometerReader, motionActivityManager updates, previously requested start date %s is within %fs tolerance from now", v75, 0x16u);
    sub_100164B98(v76);
  }

  (*(v92 + 8))(v32, v93);
}

void sub_100189778(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

void sub_100189804(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

id sub_100189870(int a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v43 = *(v4 - 8);
  v44 = v4;
  v5 = __chkstk_darwin(v4);
  v41 = v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = v40 - v7;
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = v40 - v14;
  v16 = sub_100164A3C(&unk_1002D7BD0, &unk_10024A800);
  v17 = __chkstk_darwin(v16);
  v19 = v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v17);
  v22 = v40 - v21;
  v42 = a1;
  if (a1)
  {
    goto LABEL_5;
  }

  v40[1] = v20;
  v23 = OBJC_IVAR____TtCV17wirelessinsightsd20WiFiToCellTransition12MotionReader_startedUpdatesAt;
  swift_beginAccess();
  sub_10001A718(v2 + v23, v22, &unk_1002D7BD0, &unk_10024A800);
  if ((*(v10 + 48))(v22, 1, v9))
  {
    sub_1000157F0(v22, &unk_1002D7BD0, &unk_10024A800);
LABEL_5:
    sub_100003E50(&off_1002B65F8, v8);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 67109120;
      *(v29 + 4) = v42 & 1;
      _os_log_impl(&_mh_execute_header, v27, v28, "Motion Reader. Stopped pedometerReader, motionActivityManager updates with doForce %{BOOL}d. Setting startedUpdatesAt to nil...", v29, 8u);
    }

    (*(v43 + 8))(v8, v44);
    (*(v10 + 56))(v19, 1, 1, v9);
    v30 = OBJC_IVAR____TtCV17wirelessinsightsd20WiFiToCellTransition12MotionReader_startedUpdatesAt;
    swift_beginAccess();
    sub_10018A03C(v19, v2 + v30, &unk_1002D7BD0, &unk_10024A800);
    result = swift_endAccess();
    if (*(v2 + OBJC_IVAR____TtCV17wirelessinsightsd20WiFiToCellTransition12MotionReader_usePedometer) == 1)
    {
      result = [*(v2 + OBJC_IVAR____TtCV17wirelessinsightsd20WiFiToCellTransition12MotionReader_pedometerReader) stopPedometerUpdates];
    }

    if (*(v2 + OBJC_IVAR____TtCV17wirelessinsightsd20WiFiToCellTransition12MotionReader_useMotionActivityManager) == 1)
    {
      return [*(v2 + OBJC_IVAR____TtCV17wirelessinsightsd20WiFiToCellTransition12MotionReader_motionActivityManager) stopActivityUpdates];
    }

    return result;
  }

  v40[0] = v23;
  (*(v10 + 16))(v15, v22, v9);
  sub_1000157F0(v22, &unk_1002D7BD0, &unk_10024A800);
  static Date.now.getter();
  Date.distance(to:)();
  v25 = v24;
  v26 = *(v10 + 8);
  v26(v13, v9);
  v26(v15, v9);
  if (v25 > 90.0)
  {
    goto LABEL_5;
  }

  v32 = v41;
  sub_100003E50(&off_1002B65F8, v41);

  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v45[0] = v36;
    *v35 = 136315394;
    sub_10001A718(v2 + v40[0], v19, &unk_1002D7BD0, &unk_10024A800);
    v37 = String.init<A>(describing:)();
    v39 = sub_10017A8A8(v37, v38, v45);

    *(v35 + 4) = v39;
    *(v35 + 12) = 2048;
    *(v35 + 14) = 0x4056800000000000;
    _os_log_impl(&_mh_execute_header, v33, v34, "Motion Reader. Skipped stopping pedometerReader, motionActivityManager updates, previously requested start date %s is within %fs tolerance from now", v35, 0x16u);
    sub_100164B98(v36);
  }

  return (*(v43 + 8))(v32, v44);
}

uint64_t sub_100189E5C()
{
  sub_1000157F0(v0 + OBJC_IVAR____TtCV17wirelessinsightsd20WiFiToCellTransition12MotionReader_startedUpdatesAt, &unk_1002D7BD0, &unk_10024A800);

  sub_1000157F0(v0 + OBJC_IVAR____TtCV17wirelessinsightsd20WiFiToCellTransition12MotionReader_mostRecentPedometerState, &qword_1002D67B0, &qword_10024A640);
  sub_10002193C(*(v0 + OBJC_IVAR____TtCV17wirelessinsightsd20WiFiToCellTransition12MotionReader____lazy_storage___motionActivityUpdateHandler), *(v0 + OBJC_IVAR____TtCV17wirelessinsightsd20WiFiToCellTransition12MotionReader____lazy_storage___motionActivityUpdateHandler + 8));
  sub_10002193C(*(v0 + OBJC_IVAR____TtCV17wirelessinsightsd20WiFiToCellTransition12MotionReader____lazy_storage___pedometerUpdateHandler), *(v0 + OBJC_IVAR____TtCV17wirelessinsightsd20WiFiToCellTransition12MotionReader____lazy_storage___pedometerUpdateHandler + 8));
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_100189F1C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  _s12MotionReaderCMa(0);

  return sub_100003E50(a1, a2);
}

unint64_t sub_100189F68()
{
  _s12MotionReaderCMa(0);

  return sub_10000358C();
}

unint64_t sub_100189F9C(unint64_t result)
{
  if (result >= 5)
  {
    return 5;
  }

  return result;
}

uint64_t sub_100189FCC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100164A3C(&unk_1002D7BD0, &unk_10024A800);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10018A03C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100164A3C(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_10018A0A4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_10018A0BC()
{
  result = qword_1002D5B88;
  if (!qword_1002D5B88)
  {
    type metadata accessor for Date();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D5B88);
  }

  return result;
}

unint64_t sub_10018A118()
{
  result = qword_1002D67B8;
  if (!qword_1002D67B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D67B8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RoamingPLMNPredictionController.State(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RoamingPLMNPredictionController.State(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_10018A2E4(uint64_t a1)
{
  sub_10018A544(319, &qword_1002D7F00, &type metadata accessor for Date);
  if (v1 <= 0x3F)
  {
    sub_10018A390();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10018A390()
{
  if (!qword_1002D5C00)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1002D5C00);
    }
  }
}

void sub_10018A408(uint64_t a1)
{
  sub_10018A544(319, &qword_1002D7F00, &type metadata accessor for Date);
  if (v1 <= 0x3F)
  {
    sub_10018A544(319, &unk_1002D6880, _s14PedometerStateVMa);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_10018A544(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_10018A598(uint64_t a1, uint64_t a2)
{
  v4 = sub_100164A3C(&qword_1002D67B0, &qword_10024A640);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_10018A610(uint64_t a1, uint64_t a2)
{
  v4 = _s14PedometerStateVMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10018A674(uint64_t a1, uint64_t a2)
{
  v4 = _s14PedometerStateVMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10018A6D8()
{
  v2 = *(_s14PedometerStateVMa(0) - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_10017F434;

  return sub_100186CF0(v7, v8, v9, v4, v5, v0 + v3, v6);
}

uint64_t sub_10018A7EC(uint64_t a1)
{
  v2 = _s14PedometerStateVMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10018A850()
{
  v2 = *(sub_100164A3C(&unk_1002D7BD0, &unk_10024A800) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = v3 + *(v2 + 64);
  v5 = v0 + ((v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = *v5;
  v7 = *(v0 + ((v4 + 23) & 0xFFFFFFFFFFFFFFF8));
  v8 = *(v5 + 8);
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_100002A5C;

  return sub_100185510(v9, v10, v11, v0 + v3, v6, v8, v7);
}

uint64_t _s8SnapshotVMa(uint64_t a1)
{
  result = qword_1002D9CF0;
  if (!qword_1002D9CF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10018A9D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, int a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10, uint64_t a11, char a12, uint64_t a13, unsigned __int8 a14, uint64_t a15, uint64_t a16, uint64_t a17, unsigned __int8 a18, uint64_t a19, unsigned __int8 a20, uint64_t a21, unsigned __int8 a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, unsigned __int8 a28, uint64_t a29, unsigned __int8 a30, uint64_t a31, unsigned __int8 a32, unsigned __int8 a33, unsigned __int8 a34, unsigned __int8 a35, uint64_t a36)
{
  v125 = a8;
  v123 = a7;
  v121 = a6;
  v118 = a5;
  v116 = a4;
  v138 = a32;
  v139 = a34;
  v137 = a31;
  v136 = a30;
  v135 = a29;
  v134 = a28;
  v132 = a26;
  v133 = a27;
  v130 = a24;
  v131 = a25;
  v129 = a23;
  v128 = a22;
  v127 = a21;
  v126 = a20;
  v124 = a19;
  v122 = a18;
  v120 = a17;
  v119 = a16;
  v117 = a15;
  v115 = a14;
  v114 = a13;
  v40 = sub_100164A3C(&qword_1002D67B0, &qword_10024A640);
  v41 = __chkstk_darwin(v40 - 8);
  v144 = &v114 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __chkstk_darwin(v41);
  v143 = &v114 - v44;
  v45 = __chkstk_darwin(v43);
  v142 = &v114 - v46;
  v47 = __chkstk_darwin(v45);
  v141 = &v114 - v48;
  v49 = __chkstk_darwin(v47);
  v51 = &v114 - v50;
  __chkstk_darwin(v49);
  v53 = &v114 - v52;
  v140 = a1;
  sub_10001A718(a1, a9, &unk_1002D7BD0, &unk_10024A800);
  v54 = _s8SnapshotVMa(0);
  v55 = 0;
  v56 = a9 + v54[5];
  *v56 = a2;
  *(v56 + 8) = a3 & 1;
  v57 = a9 + v54[6];
  *v57 = v116;
  *(v57 + 8) = v118 & 1;
  v58 = a9 + v54[7];
  *v58 = v121;
  *(v58 + 8) = v123 & 1;
  v59 = a9 + v54[8];
  *v59 = v125;
  *(v59 + 8) = a10 & 1;
  v60 = a9 + v54[9];
  *v60 = a11;
  *(v60 + 8) = a12 & 1;
  v61 = a9 + v54[10];
  *v61 = v114;
  *(v61 + 8) = v115 & 1;
  v62 = (a9 + v54[11]);
  v63 = v119;
  *v62 = v117;
  v62[1] = v63;
  v64 = a9 + v54[12];
  *v64 = v120;
  *(v64 + 8) = v122 & 1;
  v65 = a9 + v54[13];
  *v65 = v124;
  *(v65 + 8) = v126 & 1;
  v66 = a9 + v54[14];
  *v66 = v127;
  *(v66 + 8) = v128 & 1;
  v67 = (a9 + v54[15]);
  v68 = v130;
  *v67 = v129;
  v67[1] = v68;
  v69 = (a9 + v54[16]);
  v70 = v132;
  *v69 = v131;
  v69[1] = v70;
  v71 = a9 + v54[17];
  *v71 = v133;
  *(v71 + 8) = v134 & 1;
  v72 = a9 + v54[18];
  *v72 = v135;
  *(v72 + 8) = v136 & 1;
  v73 = a9 + v54[19];
  *v73 = v137;
  *(v73 + 8) = v138 & 1;
  if (a33 != 6)
  {
    v55 = sub_100183DB4(a33);
  }

  v74 = a9 + v54[20];
  *v74 = v55;
  *(v74 + 8) = a33 == 6;
  v75 = v139;
  if (v139 == 7)
  {
    v76 = 0;
  }

  else
  {
    v76 = sub_1001845A8(v139);
  }

  v77 = a9 + v54[21];
  *v77 = v76;
  *(v77 + 8) = v75 == 7;
  if (a35 == 5)
  {
    v78 = 0;
  }

  else
  {
    v78 = sub_100183DB4(a35);
  }

  sub_1000157F0(v140, &unk_1002D7BD0, &unk_10024A800);
  v79 = a9 + v54[22];
  *v79 = v78;
  *(v79 + 8) = a35 == 5;
  sub_10001A718(a36, v53, &qword_1002D67B0, &qword_10024A640);
  v80 = _s14PedometerStateVMa(0);
  v81 = *(*(v80 - 1) + 48);
  if (v81(v53, 1, v80) == 1)
  {
    sub_1000157F0(v53, &qword_1002D67B0, &qword_10024A640);
    v82 = 0;
    v83 = 1;
  }

  else
  {
    v84 = &v53[v80[6]];
    v82 = *v84;
    v83 = v84[8];
    sub_100191EF4(v53, _s14PedometerStateVMa);
  }

  v85 = a9 + v54[23];
  *v85 = v82;
  *(v85 + 8) = v83;
  sub_10001A718(a36, v51, &qword_1002D67B0, &qword_10024A640);
  v86 = v81(v51, 1, v80);
  v87 = v142;
  if (v86 == 1)
  {
    sub_1000157F0(v51, &qword_1002D67B0, &qword_10024A640);
    v88 = 0;
    v89 = 1;
  }

  else
  {
    v90 = &v51[v80[7]];
    v88 = *v90;
    v89 = v90[8];
    sub_100191EF4(v51, _s14PedometerStateVMa);
  }

  v91 = a9 + v54[24];
  *v91 = v88;
  *(v91 + 8) = v89;
  v92 = v141;
  sub_10001A718(a36, v141, &qword_1002D67B0, &qword_10024A640);
  v93 = v81(v92, 1, v80);
  v94 = v143;
  if (v93 == 1)
  {
    sub_1000157F0(v92, &qword_1002D67B0, &qword_10024A640);
    v95 = 0;
    v96 = 1;
  }

  else
  {
    v97 = v92 + v80[8];
    v98 = v92;
    v95 = *v97;
    v96 = *(v97 + 8);
    sub_100191EF4(v98, _s14PedometerStateVMa);
  }

  v99 = a9 + v54[25];
  *v99 = v95;
  *(v99 + 8) = v96;
  sub_10001A718(a36, v87, &qword_1002D67B0, &qword_10024A640);
  if (v81(v87, 1, v80) == 1)
  {
    sub_1000157F0(v87, &qword_1002D67B0, &qword_10024A640);
    v100 = 0;
    v101 = 1;
  }

  else
  {
    v102 = v87 + v80[9];
    v100 = *v102;
    v101 = *(v102 + 8);
    sub_100191EF4(v87, _s14PedometerStateVMa);
  }

  v103 = a9 + v54[26];
  *v103 = v100;
  *(v103 + 8) = v101;
  sub_10001A718(a36, v94, &qword_1002D67B0, &qword_10024A640);
  if (v81(v94, 1, v80) == 1)
  {
    sub_1000157F0(v94, &qword_1002D67B0, &qword_10024A640);
    v104 = 0;
    v105 = 1;
  }

  else
  {
    v106 = v94 + v80[10];
    v104 = *v106;
    v105 = *(v106 + 8);
    sub_100191EF4(v94, _s14PedometerStateVMa);
  }

  v107 = a9 + v54[27];
  *v107 = v104;
  *(v107 + 8) = v105;
  v108 = v144;
  sub_100191E28(a36, v144, &qword_1002D67B0, &qword_10024A640);
  if (v81(v108, 1, v80) == 1)
  {
    result = sub_1000157F0(v108, &qword_1002D67B0, &qword_10024A640);
    v110 = 0;
    v111 = 1;
  }

  else
  {
    v112 = v108 + v80[11];
    v110 = *v112;
    v111 = *(v112 + 8);
    result = sub_100191EF4(v108, _s14PedometerStateVMa);
  }

  v113 = a9 + v54[28];
  *v113 = v110;
  *(v113 + 8) = v111;
  return result;
}

unint64_t sub_10018B254(char a1)
{
  result = 0x6F72656C65636361;
  switch(a1)
  {
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
    case 4:
    case 5:
      return result;
    case 6:
      result = 1769173874;
      break;
    case 7:
      result = 0x4E6B726F7774656ELL;
      break;
    case 8:
      result = 7499379;
      break;
    case 9:
      result = 6382435;
      break;
    case 10:
      result = 0x4E6C656E6E616863;
      break;
    case 11:
      result = 0x576C656E6E616863;
      break;
    case 12:
      result = 0x426C656E6E616863;
      break;
    case 13:
    case 17:
    case 24:
      v3 = 10;
      goto LABEL_14;
    case 14:
    case 22:
      result = 0xD000000000000018;
      break;
    case 15:
      result = 0xD000000000000010;
      break;
    case 16:
      v3 = 9;
LABEL_14:
      result = v3 | 0xD000000000000010;
      break;
    case 18:
    case 23:
      result = 0xD000000000000016;
      break;
    case 19:
      result = 0x6574656D6F646570;
      break;
    case 20:
      result = 0xD000000000000010;
      break;
    case 21:
      result = 0xD000000000000017;
      break;
    default:
      result = 0xD000000000000011;
      break;
  }

  return result;
}

uint64_t sub_10018B4E0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100190DA8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10018B514(uint64_t a1)
{
  v2 = sub_100191DD4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10018B550(uint64_t a1)
{
  v2 = sub_100191DD4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10018B590(void *a1)
{
  v3 = sub_100164A3C(&qword_1002D6A00, &qword_10024A810);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8 - v5;
  sub_100014E1C(a1, a1[3]);
  sub_100191DD4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9 = 0;
  type metadata accessor for Date();
  sub_100192750(&qword_1002D6A08, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (!v1)
  {
    _s8SnapshotVMa(0);
    v9 = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v9 = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v9 = 3;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v9 = 4;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v9 = 5;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v9 = 6;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v9 = 7;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v9 = 8;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v9 = 9;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v9 = 10;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v9 = 11;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v9 = 12;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v9 = 13;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v9 = 14;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v9 = 15;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v9 = 16;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v9 = 17;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v9 = 18;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v9 = 19;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v9 = 20;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v9 = 21;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v9 = 22;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v9 = 23;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v9 = 24;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v3);
}

void sub_10018BBF4(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100164A3C(&unk_1002D7BD0, &unk_10024A800);
  __chkstk_darwin(v7 - 8);
  v9 = &v67 - v8;
  sub_10001A718(v2, &v67 - v8, &unk_1002D7BD0, &unk_10024A800);
  if ((*(v4 + 48))(v9, 1, v3) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v4 + 32))(v6, v9, v3);
    Hasher._combine(_:)(1u);
    sub_100192750(&qword_1002D7160, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    dispatch thunk of Hashable.hash(into:)();
    (*(v4 + 8))(v6, v3);
  }

  v10 = _s8SnapshotVMa(0);
  v11 = v2 + v10[5];
  if (*(v11 + 8) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v12 = *v11;
    Hasher._combine(_:)(1u);
    if ((v12 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    Hasher._combine(_:)(v13);
  }

  v14 = v2 + v10[6];
  if (*(v14 + 8) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v15 = *v14;
    Hasher._combine(_:)(1u);
    if ((v15 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    Hasher._combine(_:)(v16);
  }

  v17 = v2 + v10[7];
  if (*(v17 + 8) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v18 = *v17;
    Hasher._combine(_:)(1u);
    if ((v18 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v19 = v18;
    }

    else
    {
      v19 = 0;
    }

    Hasher._combine(_:)(v19);
  }

  v20 = v2 + v10[8];
  if (*(v20 + 8) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v21 = *v20;
    Hasher._combine(_:)(1u);
    if ((v21 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v22 = v21;
    }

    else
    {
      v22 = 0;
    }

    Hasher._combine(_:)(v22);
  }

  v23 = v2 + v10[9];
  if (*(v23 + 8) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v24 = *v23;
    Hasher._combine(_:)(1u);
    if ((v24 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v25 = v24;
    }

    else
    {
      v25 = 0;
    }

    Hasher._combine(_:)(v25);
  }

  v26 = v2 + v10[10];
  if (*(v26 + 8) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v27 = *v26;
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v27);
  }

  if (*(v2 + v10[11] + 8))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v28 = v2 + v10[12];
  if (*(v28 + 8) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v29 = *v28;
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v29);
  }

  v30 = v2 + v10[13];
  if (*(v30 + 8) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v31 = *v30;
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v31);
  }

  v32 = v2 + v10[14];
  if (*(v32 + 8) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v33 = *v32;
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v33);
  }

  if (*(v2 + v10[15] + 8))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  if (*(v2 + v10[16] + 8))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v34 = v2 + v10[17];
  if (*(v34 + 8) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v35 = *v34;
    Hasher._combine(_:)(1u);
    if ((v35 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v36 = v35;
    }

    else
    {
      v36 = 0;
    }

    Hasher._combine(_:)(v36);
  }

  v37 = v2 + v10[18];
  if (*(v37 + 8) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v38 = *v37;
    Hasher._combine(_:)(1u);
    if ((v38 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v39 = v38;
    }

    else
    {
      v39 = 0;
    }

    Hasher._combine(_:)(v39);
  }

  v40 = v2 + v10[19];
  if (*(v40 + 8) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v41 = *v40;
    Hasher._combine(_:)(1u);
    if ((v41 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v42 = v41;
    }

    else
    {
      v42 = 0;
    }

    Hasher._combine(_:)(v42);
  }

  v43 = v2 + v10[20];
  if (*(v43 + 8) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v44 = *v43;
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v44);
  }

  v45 = v2 + v10[21];
  if (*(v45 + 8) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v46 = *v45;
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v46);
  }

  v47 = v2 + v10[22];
  if (*(v47 + 8) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v48 = *v47;
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v48);
  }

  v49 = v2 + v10[23];
  if (*(v49 + 8) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v50 = *v49;
    Hasher._combine(_:)(1u);
    if ((v50 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v51 = v50;
    }

    else
    {
      v51 = 0;
    }

    Hasher._combine(_:)(v51);
  }

  v52 = v2 + v10[24];
  if (*(v52 + 8) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v53 = *v52;
    Hasher._combine(_:)(1u);
    if ((v53 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v54 = v53;
    }

    else
    {
      v54 = 0;
    }

    Hasher._combine(_:)(v54);
  }

  v55 = v2 + v10[25];
  if (*(v55 + 8) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v56 = *v55;
    Hasher._combine(_:)(1u);
    if ((v56 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v57 = v56;
    }

    else
    {
      v57 = 0;
    }

    Hasher._combine(_:)(v57);
  }

  v58 = v2 + v10[26];
  if (*(v58 + 8) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v59 = *v58;
    Hasher._combine(_:)(1u);
    if ((v59 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v60 = v59;
    }

    else
    {
      v60 = 0;
    }

    Hasher._combine(_:)(v60);
  }

  v61 = v2 + v10[27];
  if (*(v61 + 8) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v62 = *v61;
    Hasher._combine(_:)(1u);
    if ((v62 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v63 = v62;
    }

    else
    {
      v63 = 0;
    }

    Hasher._combine(_:)(v63);
  }

  v64 = v2 + v10[28];
  if (*(v64 + 8) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v65 = *v64;
    Hasher._combine(_:)(1u);
    if ((v65 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v66 = v65;
    }

    else
    {
      v66 = 0;
    }

    Hasher._combine(_:)(v66);
  }
}