uint64_t sub_100BE7ED4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  v7 = sub_1000BC4D4(&unk_1016B7C30, &qword_1013DBFD0);
  v6[8] = v7;
  v6[9] = *(v7 - 8);
  v6[10] = swift_task_alloc();
  v8 = type metadata accessor for Device();
  v6[11] = v8;
  v6[12] = *(v8 - 8);
  v6[13] = swift_task_alloc();
  v9 = type metadata accessor for UUID();
  v6[14] = v9;
  v6[15] = *(v9 - 8);
  v6[16] = swift_task_alloc();
  v10 = sub_1000BC4D4(&qword_1016B7CC0, &qword_1013DD818);
  v6[17] = v10;
  v6[18] = *(v10 - 8);
  v6[19] = swift_task_alloc();

  return _swift_task_switch(sub_100BE80C4, 0, 0);
}

uint64_t sub_100BE80C4()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[20] = Strong;
  if (Strong)
  {
    v2 = v0[6];
    v3 = *(v2 + 16);
    if (v3)
    {
      v4 = v0[15];
      v5 = v0[12];
      v6 = v0[9];
      sub_101123D4C(0, v3, 0);
      v7 = *(v5 + 16);
      v5 += 16;
      v8 = v2 + ((*(v5 + 64) + 32) & ~*(v5 + 64));
      v22 = *(v5 + 56);
      v23 = v7;
      v24 = v4;
      v21 = (v5 - 8);
      do
      {
        v9 = v0[13];
        v11 = v0[10];
        v10 = v0[11];
        v12 = v0[8];
        v23(v9, v8, v10);
        Device.id.getter();
        Identifier.id.getter();
        (*(v6 + 8))(v11, v12);
        (*v21)(v9, v10);
        v14 = _swiftEmptyArrayStorage[2];
        v13 = _swiftEmptyArrayStorage[3];
        if (v14 >= v13 >> 1)
        {
          sub_101123D4C((v13 > 1), v14 + 1, 1);
        }

        v15 = v0[16];
        v16 = v0[14];
        _swiftEmptyArrayStorage[2] = v14 + 1;
        (*(v24 + 32))(_swiftEmptyArrayStorage + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v14, v15, v16);
        v8 += v22;
        --v3;
      }

      while (v3);
    }

    v0[21] = _swiftEmptyArrayStorage;
    ObservationStreams.analyticsStream.getter();
    v17 = swift_task_alloc();
    v0[22] = v17;
    *v17 = v0;
    v17[1] = sub_100BE83A0;
    v18 = v0[19];

    return sub_100BE8788(_swiftEmptyArrayStorage, v18);
  }

  else
  {

    v20 = v0[1];

    return v20();
  }
}

uint64_t sub_100BE83A0()
{
  v2 = *(*v1 + 152);
  v3 = *(*v1 + 144);
  v4 = *(*v1 + 136);
  v5 = *v1;
  *(*v1 + 184) = v0;

  (*(v3 + 8))(v2, v4);

  if (v0)
  {

    return _swift_task_switch(sub_100BE85B8, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_100BE85B8()
{
  if (qword_101694D50 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_1016B7860);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138543362;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failure in pairing analytic events listener: %{public}@", v4, 0xCu);
    sub_10000B3A8(v5, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_100BE8788(uint64_t a1, uint64_t a2)
{
  v3[7] = a2;
  v3[8] = v2;
  v3[6] = a1;
  sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();
  v4 = type metadata accessor for AnalyticsEvent();
  v3[11] = v4;
  v5 = *(v4 - 8);
  v3[12] = v5;
  v3[13] = *(v5 + 64);
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  sub_1000BC4D4(&qword_1016B7CC8, &qword_1013DD828);
  v3[17] = swift_task_alloc();
  v6 = sub_1000BC4D4(&qword_1016B7CD0, &qword_1013DD830);
  v3[18] = v6;
  v3[19] = *(v6 - 8);
  v3[20] = swift_task_alloc();
  v7 = type metadata accessor for UUID();
  v3[21] = v7;
  v3[22] = *(v7 - 8);
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();

  return _swift_task_switch(sub_100BE89B8, v2, 0);
}

uint64_t sub_100BE89B8()
{
  v36 = v0;
  type metadata accessor for WorkItemQueue();
  if (static WorkItemQueue.called(on:)())
  {
    sub_100BEF73C();
    swift_allocError();
    *v1 = 1;
    swift_willThrow();

    v2 = v0[1];

    return v2();
  }

  else
  {
    v4 = v0[8];
    v5 = v0[6];
    type metadata accessor for SPAnalyticsItemPairEvent(0);
    swift_allocObject();
    *(v4 + 400) = sub_101164980(1);

    v6 = *(v5 + 16);
    v0[25] = v6;
    if (v6 == 1)
    {
      v7 = v0[22];
      v8 = v0[6];
      v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      if (qword_101694D50 != -1)
      {
        swift_once();
        v7 = v0[22];
      }

      v10 = v0[24];
      v11 = v0[21];
      v12 = type metadata accessor for Logger();
      sub_1000076D4(v12, qword_1016B7860);
      (*(v7 + 16))(v10, v8 + v9, v11);
      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.debug.getter();
      v15 = os_log_type_enabled(v13, v14);
      v16 = v0[24];
      v17 = v0[21];
      v18 = v0[22];
      if (v15)
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v35 = v20;
        *v19 = 141558275;
        *(v19 + 4) = 1752392040;
        *(v19 + 12) = 2081;
        sub_100BCA23C(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v21 = dispatch thunk of CustomStringConvertible.description.getter();
        v23 = v22;
        (*(v18 + 8))(v16, v17);
        v24 = sub_1000136BC(v21, v23, &v35);

        *(v19 + 14) = v24;
        _os_log_impl(&_mh_execute_header, v13, v14, "DiscoveryService: Start pairing analytics observation for %{private,mask.hash}s", v19, 0x16u);
        sub_100007BAC(v20);
      }

      else
      {

        (*(v18 + 8))(v16, v17);
      }
    }

    else
    {
      if (qword_101694D50 != -1)
      {
        swift_once();
      }

      v25 = type metadata accessor for Logger();
      sub_1000076D4(v25, qword_1016B7860);

      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 134217984;
        *(v28 + 4) = v6;

        _os_log_impl(&_mh_execute_header, v26, v27, "DiscoveryService: Start multi-pairing analytics observation for %ld accessories.", v28, 0xCu);
      }

      else
      {
      }
    }

    sub_1000BC4D4(&qword_1016B7CC0, &qword_1013DD818);
    AsyncStream.makeAsyncIterator()();
    v30 = sub_100BCA23C(&qword_1016B7BE0, v29, type metadata accessor for DiscoveryService, &unk_1013DD690);
    v0[26] = v30;
    v31 = v0[8];
    v32 = swift_task_alloc();
    v0[27] = v32;
    *v32 = v0;
    v32[1] = sub_100BE8EE8;
    v33 = v0[17];
    v34 = v0[18];

    return AsyncStream.Iterator.next(isolation:)(v33, v31, v30, v34);
  }
}

uint64_t sub_100BE8EE8()
{
  v1 = *(*v0 + 64);

  return _swift_task_switch(sub_100BE8FF8, v1, 0);
}

uint64_t sub_100BE8FF8()
{
  v81 = v0;
  v1 = v0[17];
  v2 = sub_1000BC4D4(&qword_1016B7CD8, &qword_1013DD838);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    v3 = v0[25];
    v4 = v0[8];
    (*(v0[19] + 8))(v0[20], v0[18]);
    *(v4 + 400) = 0;

    if (v3 == 1)
    {
      v5 = v0[22];
      v6 = v0[6];
      v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
      if (qword_101694D50 != -1)
      {
        swift_once();
        v5 = v0[22];
      }

      v8 = v0[23];
      v9 = v0[21];
      v10 = type metadata accessor for Logger();
      sub_1000076D4(v10, qword_1016B7860);
      (*(v5 + 16))(v8, v6 + v7, v9);
      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.debug.getter();
      v13 = os_log_type_enabled(v11, v12);
      v15 = v0[22];
      v14 = v0[23];
      v16 = v0[21];
      if (v13)
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v80 = v18;
        *v17 = 141558275;
        *(v17 + 4) = 1752392040;
        *(v17 + 12) = 2081;
        sub_100BCA23C(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v19 = dispatch thunk of CustomStringConvertible.description.getter();
        v21 = v20;
        (*(v15 + 8))(v14, v16);
        v22 = sub_1000136BC(v19, v21, &v80);

        *(v17 + 14) = v22;
        _os_log_impl(&_mh_execute_header, v11, v12, "DiscoveryService: Finished pairing analytics observation for %{private,mask.hash}s", v17, 0x16u);
        sub_100007BAC(v18);
      }

      else
      {

        (*(v15 + 8))(v14, v16);
      }
    }

    else
    {
      if (qword_101694D50 != -1)
      {
        swift_once();
      }

      v47 = type metadata accessor for Logger();
      sub_1000076D4(v47, qword_1016B7860);

      v48 = Logger.logObject.getter();
      v49 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v48, v49))
      {
        v50 = v0[25];
        v51 = swift_slowAlloc();
        *v51 = 134217984;
        *(v51 + 4) = v50;

        _os_log_impl(&_mh_execute_header, v48, v49, "DiscoveryService: Finished multi-pairing analytics observation for %ld accessories.", v51, 0xCu);
      }

      else
      {
      }
    }

    v68 = v0[1];

    return v68();
  }

  else
  {
    v23 = v0[16];
    v24 = v0[11];
    v25 = v0[12];
    v26 = v0[8];

    v27 = *(v25 + 32);
    v27(v23, v1 + *(v2 + 48), v24);
    v28 = *(v26 + 400);
    if (v28)
    {
      v77 = v27;
      v29 = qword_101694D50;

      if (v29 != -1)
      {
        swift_once();
      }

      v31 = v0[15];
      v30 = v0[16];
      v32 = v0[11];
      v33 = v0[12];
      v34 = type metadata accessor for Logger();
      sub_1000076D4(v34, qword_1016B7860);
      v76 = *(v33 + 16);
      v76(v31, v30, v32);
      v35 = Logger.logObject.getter();
      v36 = static os_log_type_t.debug.getter();
      v37 = os_log_type_enabled(v35, v36);
      v38 = v0[15];
      v40 = v0[11];
      v39 = v0[12];
      v79 = v28;
      if (v37)
      {
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        v80 = v42;
        *v41 = 136446210;
        sub_100BCA23C(&qword_1016B7CE0, 255, &type metadata accessor for AnalyticsEvent, &protocol conformance descriptor for AnalyticsEvent);
        v43 = dispatch thunk of CustomStringConvertible.description.getter();
        v45 = v44;
        v78 = *(v39 + 8);
        v78(v38, v40);
        v46 = sub_1000136BC(v43, v45, &v80);

        *(v41 + 4) = v46;
        _os_log_impl(&_mh_execute_header, v35, v36, "DiscoveryService: analytics event %{public}s.", v41, 0xCu);
        sub_100007BAC(v42);
      }

      else
      {

        v78 = *(v39 + 8);
        v78(v38, v40);
      }

      v52 = v0[16];
      v54 = v0[13];
      v53 = v0[14];
      v56 = v0[11];
      v55 = v0[12];
      v57 = v0[9];
      v58 = v0[10];
      v59 = type metadata accessor for TaskPriority();
      v60 = *(v59 - 8);
      (*(v60 + 56))(v58, 1, 1, v59);
      v76(v53, v52, v56);
      v61 = (*(v55 + 80) + 32) & ~*(v55 + 80);
      v62 = swift_allocObject();
      *(v62 + 16) = 0;
      *(v62 + 24) = 0;
      v77(v62 + v61, v53, v56);
      *(v62 + ((v54 + v61 + 7) & 0xFFFFFFFFFFFFFFF8)) = v79;
      sub_1000D2A70(v58, v57, &qword_101698C00, &qword_10138B570);
      LODWORD(v58) = (*(v60 + 48))(v57, 1, v59);

      v63 = v0[9];
      if (v58 == 1)
      {
        sub_10000B3A8(v0[9], &qword_101698C00, &qword_10138B570);
      }

      else
      {
        TaskPriority.rawValue.getter();
        (*(v60 + 8))(v63, v59);
      }

      v64 = *(v62 + 16);
      swift_unknownObjectRetain();

      if (v64)
      {
        swift_getObjectType();
        v65 = dispatch thunk of Actor.unownedExecutor.getter();
        v67 = v66;
        swift_unknownObjectRelease();
      }

      else
      {
        v65 = 0;
        v67 = 0;
      }

      sub_10000B3A8(v0[10], &qword_101698C00, &qword_10138B570);
      v70 = swift_allocObject();
      *(v70 + 16) = &unk_1013DD848;
      *(v70 + 24) = v62;
      if (v67 | v65)
      {
        v0[2] = 0;
        v0[3] = 0;
        v0[4] = v65;
        v0[5] = v67;
      }

      swift_task_create();

      v78(v0[16], v0[11]);
    }

    else
    {
      (*(v0[12] + 8))(v0[16], v0[11]);
    }

    v71 = v0[26];
    v72 = v0[8];
    v73 = swift_task_alloc();
    v0[27] = v73;
    *v73 = v0;
    v73[1] = sub_100BE8EE8;
    v74 = v0[17];
    v75 = v0[18];

    return AsyncStream.Iterator.next(isolation:)(v74, v72, v71, v75);
  }
}

uint64_t sub_100BE9968(uint64_t a1)
{
  v1[11] = a1;
  v1[12] = type metadata accessor for DiscoveryState(0);
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v2 = type metadata accessor for UserSessionState();
  v1[15] = v2;
  v1[16] = *(v2 - 8);
  v1[17] = swift_task_alloc();

  return _swift_task_switch(sub_100BE9A64, 0, 0);
}

uint64_t sub_100BE9A64()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[18] = Strong;
  if (Strong)
  {
    v2 = *(Strong + 128);
    v0[19] = v2;

    return _swift_task_switch(sub_100BE9B40, v2, 0);
  }

  else
  {

    v3 = v0[1];

    return v3();
  }
}

uint64_t sub_100BE9B40()
{
  v1 = v0[19];
  v3 = v0[16];
  v2 = v0[17];
  v4 = v0[15];
  swift_beginAccess();
  *(v1 + 136) = _swiftEmptyArrayStorage;

  (*(v3 + 104))(v2, enum case for UserSessionState.idle(_:), v4);
  v5 = swift_task_alloc();
  v0[20] = v5;
  *v5 = v0;
  v5[1] = sub_100BE9C50;
  v6 = v0[17];

  return sub_1011EAA64(v6);
}

uint64_t sub_100BE9C50()
{
  v1 = *(*v0 + 136);
  v2 = *(*v0 + 128);
  v3 = *(*v0 + 120);

  (*(v2 + 8))(v1, v3);

  return _swift_task_switch(sub_100BE9DA8, 0, 0);
}

uint64_t sub_100BE9DA8()
{
  v1 = *(v0 + 144);
  swift_storeEnumTagMultiPayload();

  return _swift_task_switch(sub_100BE9E1C, v1, 0);
}

uint64_t sub_100BE9E1C()
{
  type metadata accessor for WorkItemQueue();
  if (static WorkItemQueue.called(on:)())
  {
    v1 = *(v0[18] + 152);
    v0[21] = v1;
    v2 = sub_100BE9F0C;
  }

  else
  {
    v3 = v0[14];
    sub_100BEF73C();
    v0[22] = swift_allocError();
    *v4 = 0;
    swift_willThrow();
    sub_1000163C4(v3, type metadata accessor for DiscoveryState);
    v2 = sub_100BEA0FC;
    v1 = 0;
  }

  return _swift_task_switch(v2, v1, 0);
}

uint64_t sub_100BE9F0C()
{
  v1 = v0[21];
  v2 = v0[18];
  v3 = v0[13];
  v4 = OBJC_IVAR____TtC12searchpartyd28DiscoveryServiceStateManager_state;
  swift_beginAccess();
  sub_100BF39E0(v1 + v4, v3, type metadata accessor for DiscoveryState);

  return _swift_task_switch(sub_100BE9FC0, v2, 0);
}

uint64_t sub_100BE9FC0()
{
  v1 = v0[13];
  v2 = sub_100649DB4(v1, v0[14]);
  sub_1000163C4(v1, type metadata accessor for DiscoveryState);
  if (v2)
  {
    sub_1000163C4(v0[14], type metadata accessor for DiscoveryState);

    return _swift_task_switch(sub_100BEA400, 0, 0);
  }

  else
  {
    v3 = swift_task_alloc();
    v0[23] = v3;
    *v3 = v0;
    v3[1] = sub_100BEA2D4;
    v4 = v0[14];

    return sub_10064A314(v4);
  }
}

uint64_t sub_100BEA0FC()
{
  if (qword_101694D50 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_1016B7860);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138543362;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Error in setting state: %{public}@", v4, 0xCu);
    sub_10000B3A8(v5, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_100BEA2D4()
{
  v1 = *v0;

  sub_1000163C4(*(v1 + 112), type metadata accessor for DiscoveryState);

  return _swift_task_switch(sub_100BEA400, 0, 0);
}

uint64_t sub_100BEA400()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100BEA4A0()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {

    return _swift_task_switch(sub_100BEA55C, Strong, 0);
  }

  else
  {
    v2 = *(v0 + 8);

    return v2();
  }
}

uint64_t sub_100BEA55C()
{
  v0[8] = *(v0[7] + 232);
  v0[9] = type metadata accessor for TimeTracker();
  v0[10] = sub_100BCA23C(&qword_1016B7C18, 255, &type metadata accessor for TimeTracker, &protocol conformance descriptor for TimeTracker);

  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100BEA63C, v2, v1);
}

uint64_t sub_100BEA63C()
{
  *(v0 + 88) = dispatch thunk of TimeTracker.allDurations()();

  return _swift_task_switch(sub_100BEA6B0, 0, 0);
}

uint64_t sub_100BEA6B0()
{
  v1 = v0[11];
  v2 = *(v1 + 16);
  if (v2)
  {
    sub_101123BB8(0, v2, 0);
    v3 = (v1 + 72);
    do
    {
      v4 = *(v3 - 3);
      v5 = *(v3 - 2);
      v6 = *(v3 - 1);
      v7 = *v3;
      v20 = *(v3 - 5);
      v21 = *(v3 - 4);
      swift_bridgeObjectRetain_n();

      v8._countAndFlagsBits = 15917;
      v8._object = 0xE200000000000000;
      String.append(_:)(v8);
      v9._countAndFlagsBits = v4;
      v9._object = v5;
      String.append(_:)(v9);
      v10._countAndFlagsBits = 8250;
      v10._object = 0xE200000000000000;
      String.append(_:)(v10);
      v11._countAndFlagsBits = v6;
      v11._object = v7;
      String.append(_:)(v11);

      v13 = _swiftEmptyArrayStorage[2];
      v12 = _swiftEmptyArrayStorage[3];
      if (v13 >= v12 >> 1)
      {
        sub_101123BB8((v12 > 1), v13 + 1, 1);
      }

      v3 += 6;
      _swiftEmptyArrayStorage[2] = v13 + 1;
      v14 = &_swiftEmptyArrayStorage[2 * v13];
      v14[4] = v20;
      v14[5] = v21;
      --v2;
    }

    while (v2);
  }

  v15 = v0[7];
  v0[5] = _swiftEmptyArrayStorage;
  sub_1000BC4D4(&qword_1016B0470, &qword_10138EB80);
  sub_1000041A4(&qword_1016B7CB0, &qword_1016B0470, &qword_10138EB80, &protocol conformance descriptor for [A]);
  v16 = BidirectionalCollection<>.joined(separator:)();
  v18 = v17;

  v0[12] = v16;
  v0[13] = v18;

  return _swift_task_switch(sub_100BEA8D4, v15, 0);
}

uint64_t sub_100BEA8D4()
{
  *(v0 + 112) = *(*(v0 + 56) + 232);

  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100BEA968, v2, v1);
}

uint64_t sub_100BEA968()
{
  v1 = dispatch thunk of TimeTracker.duration(from:to:)();
  v3 = v2;

  *(v0 + 120) = v1;
  *(v0 + 128) = v3;

  return _swift_task_switch(sub_100BEAA20, 0, 0);
}

uint64_t sub_100BEAA20()
{
  v15 = v0;
  if (qword_101694D48 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177BCE8);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[16];
  if (v4)
  {
    v6 = v0[15];
    v8 = v0[12];
    v7 = v0[13];
    v9 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v9 = 136315394;
    v10 = sub_1000136BC(v8, v7, &v14);

    *(v9 + 4) = v10;
    *(v9 + 12) = 2080;
    v11 = sub_1000136BC(v6, v5, &v14);

    *(v9 + 14) = v11;
    _os_log_impl(&_mh_execute_header, v2, v3, "Discovery Service Statistics: \n%s\n\n\nScanner run time: %s.", v9, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v12 = v0[7];

  return _swift_task_switch(sub_100BEAC30, v12, 0);
}

uint64_t sub_100BEAC30()
{
  *(v0 + 136) = *(*(v0 + 56) + 232);

  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100BEACC4, v2, v1);
}

uint64_t sub_100BEACC4()
{
  dispatch thunk of TimeTracker.reset()();

  return _swift_task_switch(sub_100BF4444, 0, 0);
}

uint64_t sub_100BEAD34(uint64_t a1)
{
  v1[11] = a1;
  v1[12] = type metadata accessor for DiscoveryState(0);
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v2 = type metadata accessor for UserSessionState();
  v1[15] = v2;
  v1[16] = *(v2 - 8);
  v1[17] = swift_task_alloc();

  return _swift_task_switch(sub_100BEAE30, 0, 0);
}

uint64_t sub_100BEAE30()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[18] = Strong;
  if (Strong)
  {
    v2 = *(Strong + 128);
    v0[19] = v2;

    return _swift_task_switch(sub_100BEAF0C, v2, 0);
  }

  else
  {

    v3 = v0[1];

    return v3();
  }
}

uint64_t sub_100BEAF0C()
{
  v1 = v0[19];
  v3 = v0[16];
  v2 = v0[17];
  v4 = v0[15];
  swift_beginAccess();
  *(v1 + 136) = _swiftEmptyArrayStorage;

  (*(v3 + 104))(v2, enum case for UserSessionState.idle(_:), v4);
  v5 = swift_task_alloc();
  v0[20] = v5;
  *v5 = v0;
  v5[1] = sub_100BEB01C;
  v6 = v0[17];

  return sub_1011EAA64(v6);
}

uint64_t sub_100BEB01C()
{
  v1 = *(*v0 + 136);
  v2 = *(*v0 + 128);
  v3 = *(*v0 + 120);

  (*(v2 + 8))(v1, v3);

  return _swift_task_switch(sub_100BEB174, 0, 0);
}

uint64_t sub_100BEB174()
{
  v1 = *(v0 + 144);
  swift_storeEnumTagMultiPayload();

  return _swift_task_switch(sub_100BEB1E8, v1, 0);
}

uint64_t sub_100BEB1E8()
{
  type metadata accessor for WorkItemQueue();
  if (static WorkItemQueue.called(on:)())
  {
    v1 = *(v0[18] + 152);
    v0[21] = v1;
    v2 = sub_100BEB2D8;
  }

  else
  {
    v3 = v0[14];
    sub_100BEF73C();
    v0[22] = swift_allocError();
    *v4 = 0;
    swift_willThrow();
    sub_1000163C4(v3, type metadata accessor for DiscoveryState);
    v2 = sub_100BF4428;
    v1 = 0;
  }

  return _swift_task_switch(v2, v1, 0);
}

uint64_t sub_100BEB2D8()
{
  v1 = v0[21];
  v2 = v0[18];
  v3 = v0[13];
  v4 = OBJC_IVAR____TtC12searchpartyd28DiscoveryServiceStateManager_state;
  swift_beginAccess();
  sub_100BF39E0(v1 + v4, v3, type metadata accessor for DiscoveryState);

  return _swift_task_switch(sub_100BEB38C, v2, 0);
}

uint64_t sub_100BEB38C()
{
  v1 = v0[13];
  v2 = sub_100649DB4(v1, v0[14]);
  sub_1000163C4(v1, type metadata accessor for DiscoveryState);
  if (v2)
  {
    sub_1000163C4(v0[14], type metadata accessor for DiscoveryState);

    return _swift_task_switch(sub_100BF442C, 0, 0);
  }

  else
  {
    v3 = swift_task_alloc();
    v0[23] = v3;
    *v3 = v0;
    v3[1] = sub_100BEB4C8;
    v4 = v0[14];

    return sub_10064A314(v4);
  }
}

uint64_t sub_100BEB4C8()
{
  v1 = *v0;

  sub_1000163C4(*(v1 + 112), type metadata accessor for DiscoveryState);

  return _swift_task_switch(sub_100BF442C, 0, 0);
}

uint64_t sub_100BEB5F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[42] = a4;
  v5[43] = a5;
  v6 = type metadata accessor for PairingLatencyReport();
  v5[44] = v6;
  v5[45] = *(v6 - 8);
  v5[46] = swift_task_alloc();
  v7 = type metadata accessor for UUID();
  v5[47] = v7;
  v8 = *(v7 - 8);
  v5[48] = v8;
  v5[49] = *(v8 + 64);
  v5[50] = swift_task_alloc();
  v5[51] = swift_task_alloc();
  v9 = type metadata accessor for DispatchTime();
  v5[52] = v9;
  v5[53] = *(v9 - 8);
  v5[54] = swift_task_alloc();
  v5[55] = swift_task_alloc();
  v10 = type metadata accessor for AccessoryDetails();
  v5[56] = v10;
  v5[57] = *(v10 - 8);
  v5[58] = swift_task_alloc();
  sub_1000BC4D4(&qword_1016B7CE8, &qword_1013DD858);
  v5[59] = swift_task_alloc();
  v5[60] = swift_task_alloc();
  v11 = type metadata accessor for AnalyticsEvent();
  v5[61] = v11;
  v5[62] = *(v11 - 8);
  v5[63] = swift_task_alloc();

  return _swift_task_switch(sub_100BEB888, 0, 0);
}

uint64_t sub_100BEB888()
{
  v2 = *(v0 + 496);
  v1 = *(v0 + 504);
  v3 = *(v0 + 488);
  (*(v2 + 16))(v1, *(v0 + 336), v3);
  v4 = (*(v2 + 88))(v1, v3);
  if (v4 == enum case for AnalyticsEvent.initiatePairingFinished(_:))
  {
    v5 = *(v0 + 504);
    v6 = *(v0 + 480);
    v7 = *(v0 + 472);
    v8 = *(v0 + 448);
    v9 = *(v0 + 456);
    (*(*(v0 + 496) + 96))(v5, *(v0 + 488));
    sub_1000D2AD8(v5, v6, &qword_1016B7CE8, &qword_1013DD858);
    sub_1000D2A70(v6, v7, &qword_1016B7CE8, &qword_1013DD858);
    if ((*(v9 + 48))(v7, 1, v8) == 1)
    {
      sub_10000B3A8(*(v0 + 480), &qword_1016B7CE8, &qword_1013DD858);
      v10 = *(v0 + 504);
      v11 = *(v0 + 376);
      v12 = *(v0 + 384);
      sub_10000B3A8(*(v0 + 472), &qword_1016B7CE8, &qword_1013DD858);
      v13 = sub_1000BC4D4(&qword_1016B7D28, &qword_1013DD8B8);
      (*(v12 + 8))(v10 + *(v13 + 48), v11);
LABEL_4:

      v14 = *(v0 + 8);

      return v14();
    }

    v18 = *(v0 + 344);
    (*(*(v0 + 456) + 32))(*(v0 + 464), *(v0 + 472), *(v0 + 448));
    *(v0 + 512) = AccessoryDetails.serialNumber.getter();
    *(v0 + 520) = v19;
    *(v0 + 528) = AccessoryDetails.systemVersion.getter();
    *(v0 + 536) = v20;
    *(v0 + 544) = AccessoryDetails.productID.getter();
    *(v0 + 552) = v21;
    v22 = sub_100BEBFD4;
    goto LABEL_10;
  }

  if (v4 == enum case for AnalyticsEvent.pairingLockStart(_:))
  {
    v16 = *(v0 + 344);
    (*(*(v0 + 496) + 96))(*(v0 + 504), *(v0 + 488));
    v17 = sub_100BEC204;
    goto LABEL_17;
  }

  if (v4 == enum case for AnalyticsEvent.pairingLockFinish(_:))
  {
    v16 = *(v0 + 344);
    (*(*(v0 + 496) + 96))(*(v0 + 504), *(v0 + 488));
    v17 = sub_100BEC314;
    goto LABEL_17;
  }

  if (v4 == enum case for AnalyticsEvent.finalizePairingStart(_:))
  {
    v16 = *(v0 + 344);
    (*(*(v0 + 496) + 96))(*(v0 + 504), *(v0 + 488));
    v17 = sub_100BEC37C;
    goto LABEL_17;
  }

  if (v4 == enum case for AnalyticsEvent.finalizePairingFinish(_:))
  {
    v16 = *(v0 + 344);
    (*(*(v0 + 496) + 96))(*(v0 + 504), *(v0 + 488));
    v17 = sub_100BEC3E4;
    goto LABEL_17;
  }

  if (v4 != enum case for AnalyticsEvent.beaconRecordCreated(_:))
  {
    if (v4 == enum case for AnalyticsEvent.pairingAckStart(_:))
    {
      v16 = *(v0 + 344);
      (*(*(v0 + 496) + 96))(*(v0 + 504), *(v0 + 488));
      v17 = sub_100BED010;
    }

    else
    {
      if (v4 != enum case for AnalyticsEvent.pairingAckFinish(_:))
      {
        if (v4 == enum case for AnalyticsEvent.successfullyPaired(_:))
        {
          v31 = *(v0 + 504);
          v33 = *(v0 + 360);
          v32 = *(v0 + 368);
          v18 = *(v0 + 344);
          v34 = *(v0 + 352);
          (*(*(v0 + 496) + 96))(v31, *(v0 + 488));
          v35 = sub_1000BC4D4(&qword_1016B7D00, &qword_1013DD880);
          (*(v33 + 32))(v32, v31 + *(v35 + 48), v34);
          sub_1000BC4D4(&qword_1016B7D08, &qword_1013DD888);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_10138C0D0;
          *(inited + 32) = 0xD000000000000015;
          *(inited + 40) = 0x800000010136EF10;
          *(inited + 48) = PairingLatencyReport.overallPairing.getter();
          *(inited + 56) = v37;
          *(inited + 64) = 0xD000000000000018;
          *(inited + 72) = 0x800000010136EF30;
          *(inited + 80) = PairingLatencyReport.initializePairing.getter();
          *(inited + 88) = v38;
          *(inited + 96) = 0xD000000000000012;
          *(inited + 104) = 0x800000010136EF50;
          *(inited + 112) = PairingLatencyReport.pairingLock.getter();
          *(inited + 120) = v39;
          *(inited + 128) = 0xD000000000000016;
          *(inited + 136) = 0x800000010136EF70;
          *(inited + 144) = PairingLatencyReport.finalizePairing.getter();
          *(inited + 152) = v40;
          *(inited + 160) = 0xD000000000000015;
          *(inited + 168) = 0x800000010136EF90;
          *(inited + 176) = PairingLatencyReport.beaconCreation.getter();
          *(inited + 184) = v41;
          *(v0 + 640) = sub_10090907C(inited);
          swift_setDeallocating();
          sub_1000BC4D4(&qword_1016B7D10, &qword_1013DD890);
          swift_arrayDestroy();
          v22 = sub_100BED21C;
        }

        else
        {
          if (v4 != enum case for AnalyticsEvent.failed(_:))
          {
            if (v4 != enum case for AnalyticsEvent.interrupted(_:))
            {
              (*(*(v0 + 496) + 8))(*(v0 + 504), *(v0 + 488));
              goto LABEL_4;
            }

            v16 = *(v0 + 344);
            *(v0 + 664) = sub_10090907C(_swiftEmptyArrayStorage);
            v17 = sub_100BED5FC;
            goto LABEL_17;
          }

          v42 = *(v0 + 504);
          v18 = *(v0 + 344);
          (*(*(v0 + 496) + 96))(v42, *(v0 + 488));
          *(v0 + 648) = *v42;
          *(v0 + 672) = *(sub_1000BC4D4(&unk_1016B7CF0, &qword_1013DD868) + 48);
          swift_errorRetain();
          *(v0 + 656) = sub_10090907C(_swiftEmptyArrayStorage);
          v22 = sub_100BED408;
        }

LABEL_10:
        v23 = v22;
        v24 = v18;
LABEL_18:

        return _swift_task_switch(v23, v24, 0);
      }

      v16 = *(v0 + 344);
      (*(*(v0 + 496) + 96))(*(v0 + 504), *(v0 + 488));
      v17 = sub_100BED078;
    }

LABEL_17:
    v23 = v17;
    v24 = v16;
    goto LABEL_18;
  }

  v25 = *(v0 + 504);
  v26 = *(v0 + 408);
  v27 = *(v0 + 376);
  v28 = *(v0 + 384);
  (*(*(v0 + 496) + 96))(v25, *(v0 + 488));
  v29 = *(v28 + 32);
  *(v0 + 560) = v29;
  *(v0 + 568) = (v28 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v29(v26, v25, v27);
  v30 = swift_task_alloc();
  *(v0 + 576) = v30;
  *v30 = v0;
  v30[1] = sub_100BEC530;

  return daemon.getter();
}

uint64_t sub_100BEBFD4()
{
  v6 = *(v0 + 528);
  v7 = *(v0 + 544);
  v1 = *(v0 + 520);
  v2 = *(v0 + 512);
  v3 = *(v0 + 344);
  type metadata accessor for Transaction();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = v6;
  *(v4 + 40) = v7;
  *(v4 + 56) = v2;
  *(v4 + 64) = v1;

  static Transaction.asyncTask(name:block:)();

  return _swift_task_switch(sub_100BEC0D0, 0, 0);
}

uint64_t sub_100BEC0D0()
{
  (*(v0[57] + 8))(v0[58], v0[56]);
  v1 = v0[63];
  v2 = v0[47];
  v3 = v0[48];
  sub_10000B3A8(v0[60], &qword_1016B7CE8, &qword_1013DD858);
  v4 = sub_1000BC4D4(&qword_1016B7D28, &qword_1013DD8B8);
  (*(v3 + 8))(v1 + *(v4 + 48), v2);

  v5 = v0[1];

  return v5();
}

uint64_t sub_100BEC204(uint64_t a1)
{
  v2 = v1[55];
  v3 = v1[52];
  v4 = v1[53];
  v5 = v1[43];
  static DispatchTime.now()();
  v6 = OBJC_IVAR____TtC12searchpartyd24SPAnalyticsItemPairEvent_beginVerifyPairing;
  swift_beginAccess();
  (*(v4 + 40))(v5 + v6, v2, v3);
  swift_endAccess();
  type metadata accessor for Transaction();

  static Transaction.asyncTask(name:block:)();

  return _swift_task_switch(sub_100BF4424, 0, 0);
}

uint64_t sub_100BEC314()
{
  sub_101165CFC();

  return _swift_task_switch(sub_100BF4424, 0, 0);
}

uint64_t sub_100BEC37C()
{
  sub_101165DF8();

  return _swift_task_switch(sub_100BF4424, 0, 0);
}

uint64_t sub_100BEC3E4()
{
  sub_101165EF4();

  return _swift_task_switch(sub_100BEC44C, 0, 0);
}

uint64_t sub_100BEC44C()
{
  (*(v0[48] + 8))(v0[63], v0[47]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100BEC530(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 584) = a1;

  v3 = swift_task_alloc();
  *(v2 + 592) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for BeaconStoreActor();
  v6 = sub_100BCA23C(&qword_1016AA400, 255, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100BCA23C(&qword_101698D20, 255, type metadata accessor for BeaconStoreActor, &unk_1013EB1B8);
  *v3 = v9;
  v3[1] = sub_100BEC714;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100BEC714(uint64_t a1)
{
  *(*v2 + 600) = a1;

  if (v1)
  {

    v4 = sub_100BED7AC;
    v5 = 0;
  }

  else
  {

    v4 = sub_100BEC858;
    v5 = a1;
  }

  return _swift_task_switch(v4, v5, 0);
}

uint64_t sub_100BEC858()
{
  v1 = v0[75];
  v2 = v0[70];
  v3 = v0[50];
  v4 = v0[48];
  v5 = v0[47];
  (*(v4 + 16))(v3, v0[51], v5);
  v6 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v7 = swift_allocObject();
  v0[76] = v7;
  *(v7 + 16) = v1;
  v2(v7 + v6, v3, v5);

  v8 = swift_task_alloc();
  v0[77] = v8;
  v9 = sub_1000BC4D4(&qword_101696920, &unk_10138B200);
  *v8 = v0;
  v8[1] = sub_100BEC9C8;

  return unsafeBlocking<A>(context:_:)(v0 + 31, 0xD000000000000010, 0x800000010134A8C0, sub_1000D2650, v7, v9);
}

uint64_t sub_100BEC9C8()
{

  return _swift_task_switch(sub_100BECAE0, 0, 0);
}

uint64_t sub_100BECAE0()
{
  if (*(v0 + 272))
  {
    sub_10000A748((v0 + 248), v0 + 208);
    v2 = *(v0 + 232);
    v1 = *(v0 + 240);
    v3 = sub_1000035D0((v0 + 208), v2);
    v4 = swift_task_alloc();
    *(v0 + 624) = v4;
    *v4 = v0;
    v4[1] = sub_100BECCE0;
    v5 = *(v0 + 600);

    return sub_100E76290(v3, v5, v2, v1);
  }

  else
  {
    v7 = *(*(v0 + 384) + 8);
    v7(*(v0 + 408), *(v0 + 376));

    sub_10000B3A8(v0 + 248, &qword_101696920, &unk_10138B200);
    v8 = *(v0 + 504);
    v9 = *(v0 + 376);
    v10 = sub_1000BC4D4(&unk_1016B7D18, &qword_1013DD8A8);
    v7(v8 + *(v10 + 48), v9);

    v11 = *(v0 + 8);

    return v11();
  }
}

uint64_t sub_100BECCE0(uint64_t a1)
{
  v2 = *(*v1 + 344);
  *(*v1 + 632) = a1;

  return _swift_task_switch(sub_100BECDF8, v2, 0);
}

uint64_t sub_100BECDF8()
{
  v1 = *(v0 + 632);
  v2 = *(v0 + 344);
  type metadata accessor for Transaction();
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;

  v4 = v1;
  static Transaction.asyncTask(name:block:)();

  return _swift_task_switch(sub_100BECED4, 0, 0);
}

uint64_t sub_100BECED4()
{
  v1 = *(v0 + 408);
  v2 = *(v0 + 376);
  v3 = *(v0 + 384);

  v4 = *(v3 + 8);
  v4(v1, v2);
  sub_100007BAC((v0 + 208));
  v5 = *(v0 + 504);
  v6 = *(v0 + 376);
  v7 = sub_1000BC4D4(&unk_1016B7D18, &qword_1013DD8A8);
  v4(v5 + *(v7 + 48), v6);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_100BED010()
{
  sub_101165FF0();

  return _swift_task_switch(sub_100BF4424, 0, 0);
}

uint64_t sub_100BED078(uint64_t a1)
{
  v2 = v1[54];
  v3 = v1[52];
  v4 = v1[53];
  v5 = v1[43];
  static DispatchTime.now()();
  v6 = DispatchTime.uptimeNanoseconds.getter();
  v7 = OBJC_IVAR____TtC12searchpartyd24SPAnalyticsItemPairEvent_beginAck;
  swift_beginAccess();
  (*(v4 + 16))(v2, v5 + v7, v3);
  v8 = DispatchTime.uptimeNanoseconds.getter();
  v9 = *(v4 + 8);
  v10 = v9(v2, v3);
  v13 = v6 - v8;
  if (v6 < v8)
  {
    __break(1u);
  }

  else
  {
    v14 = v1[55];
    v15 = v1[52];
    v16 = v1[43];
    v17 = v13 / 1000000000.0;
    type metadata accessor for Transaction();
    v18 = swift_allocObject();
    *(v18 + 16) = v16;
    *(v18 + 24) = v17;

    static Transaction.asyncTask(name:block:)();

    v9(v14, v15);
    v10 = sub_100BF4424;
    v11 = 0;
    v12 = 0;
  }

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_100BED21C()
{
  v1 = *(v0 + 640);
  v2 = *(v0 + 344);
  type metadata accessor for Transaction();
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  *(v3 + 40) = 0;
  *(v3 + 48) = 0;
  *(v3 + 32) = 0;
  *(v3 + 56) = 1;

  static Transaction.asyncTask(name:block:)();

  return _swift_task_switch(sub_100BED304, 0, 0);
}

uint64_t sub_100BED304()
{
  v1 = v0[63];
  v2 = v0[47];
  v3 = v0[48];
  (*(v0[45] + 8))(v0[46], v0[44]);
  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100BED408()
{
  v1 = v0[82];
  v2 = v0[81];
  v3 = v0[43];
  type metadata accessor for Transaction();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = v1;
  *(v4 + 40) = 0;
  *(v4 + 48) = 0;
  *(v4 + 32) = v2;
  *(v4 + 56) = 0;

  swift_errorRetain();
  static Transaction.asyncTask(name:block:)();

  return _swift_task_switch(sub_100BED508, 0, 0);
}

uint64_t sub_100BED508()
{
  v1 = *(v0 + 672);
  v2 = *(v0 + 504);

  sub_10000B3A8(v2 + v1, &qword_1016980D0, &unk_10138F3B0);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100BED5FC()
{
  v1 = *(v0 + 664);
  v2 = *(v0 + 344);
  type metadata accessor for Transaction();
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  *(v3 + 40) = 0;
  *(v3 + 48) = 0;
  *(v3 + 32) = 0;
  *(v3 + 56) = 0;

  static Transaction.asyncTask(name:block:)();

  return _swift_task_switch(sub_100BED6E0, 0, 0);
}

uint64_t sub_100BED6E0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100BED7AC()
{
  v1 = *(v0[48] + 8);
  v1(v0[51], v0[47]);
  v2 = v0[63];
  v3 = v0[47];
  v4 = sub_1000BC4D4(&unk_1016B7D18, &qword_1013DD8A8);
  v1(v2 + *(v4 + 48), v3);

  v5 = v0[1];

  return v5();
}

uint64_t sub_100BED8C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[2] = a1;
  v6[3] = a4;
  v7 = type metadata accessor for UUID();
  v6[6] = v7;
  v8 = *(v7 - 8);
  v6[7] = v8;
  v6[8] = *(v8 + 64);
  v6[9] = swift_task_alloc();

  return _swift_task_switch(sub_100BED990, 0, 0);
}

uint64_t sub_100BED990()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[6];
  v4 = v0[7];
  v5 = v0[4];
  v6 = v0[5];
  v13 = v0[2];
  v7 = swift_allocObject();
  swift_weakInit();
  (*(v4 + 16))(v1, v5, v3);
  v8 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  (*(v4 + 32))(v9 + v8, v1, v3);
  *(v9 + ((v2 + v8 + 7) & 0xFFFFFFFFFFFFFFF8)) = v6;

  v10 = dispatch thunk of WorkItemQueue.enqueue(_:)();

  *v13 = v10;

  v11 = v0[1];

  return v11();
}

uint64_t sub_100BEDB00(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return _swift_task_switch(sub_100BEDB20, 0, 0);
}

uint64_t sub_100BEDB20()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {

    return _swift_task_switch(sub_100BEDBDC, Strong, 0);
  }

  else
  {
    v2 = *(v0 + 8);

    return v2();
  }
}

uint64_t sub_100BEDBDC()
{
  sub_100BEDE48(v0[6]);
  v0[8] = 0;

  v1 = v0[1];

  return v1();
}

uint64_t sub_100BEDC98()
{

  if (qword_101694D50 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_1016B7860);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138543362;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Error in prox card reseting: %{public}@", v4, 0xCu);
    sub_10000B3A8(v5, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_100BEDE48(uint64_t a1)
{
  v2 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  __chkstk_darwin(v2 - 8);
  v4 = &v21 - v3;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for WorkItemQueue();
  if (static WorkItemQueue.called(on:)())
  {
    if (qword_101694D50 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_1000076D4(v9, qword_1016B7860);
    (*(v6 + 16))(v8, a1, v5);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v22 = v11;
      v13 = v12;
      v23 = swift_slowAlloc();
      v24[0] = v23;
      *v13 = 136315394;
      *(v13 + 4) = sub_1000136BC(0xD000000000000014, 0x800000010136F070, v24);
      *(v13 + 12) = 2082;
      sub_100BCA23C(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v21 = v10;
      v14 = dispatch thunk of CustomStringConvertible.description.getter();
      v25 = v4;
      v16 = v15;
      (*(v6 + 8))(v8, v5);
      v17 = sub_1000136BC(v14, v16, v24);
      v4 = v25;

      *(v13 + 14) = v17;
      v18 = v21;
      _os_log_impl(&_mh_execute_header, v21, v22, "%s for %{public}s", v13, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v6 + 8))(v8, v5);
    }

    swift_beginAccess();
    sub_1010F6584(a1, v4);
    sub_10000B3A8(v4, &qword_1016980D0, &unk_10138F3B0);
    return swift_endAccess();
  }

  else
  {
    sub_100BEF73C();
    swift_allocError();
    *v19 = 0;
    return swift_willThrow();
  }
}

uint64_t sub_100BEE208(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return _swift_task_switch(sub_100BEE228, 0, 0);
}

uint64_t sub_100BEE228()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {

    return _swift_task_switch(sub_100BEE2E4, Strong, 0);
  }

  else
  {
    v2 = *(v0 + 8);

    return v2();
  }
}

uint64_t sub_100BEE2E4()
{
  sub_100BD8D08(v0[6]);
  v0[8] = 0;

  v1 = v0[1];

  return v1();
}

uint64_t sub_100BEE3A0()
{

  if (qword_101694D50 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_1016B7860);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138543362;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Error in prox card storing: %{public}@", v4, 0xCu);
    sub_10000B3A8(v5, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_100BEE578()
{
  v2 = *(type metadata accessor for DiscoveryState.Mode(0) - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100014744;

  return sub_100BCD23C(v4, v0 + v3);
}

uint64_t sub_100BEE6A8()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_1016B7860);
  v1 = sub_1000076D4(v0, qword_1016B7860);
  if (qword_101694D40 != -1)
  {
    swift_once();
  }

  v2 = sub_1000076D4(v0, qword_10177BCD0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100BEE800(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v9 = sub_1000BC4D4(a3, a4);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v20 - v11;
  v13 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  __chkstk_darwin(v13 - 8);
  v15 = &v20 - v14;
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  (*(v10 + 16))(v12, a1, v9);
  v17 = (*(v10 + 80) + 40) & ~*(v10 + 80);
  v18 = swift_allocObject();
  *(v18 + 2) = 0;
  *(v18 + 3) = 0;
  *(v18 + 4) = a2;
  (*(v10 + 32))(&v18[v17], v12, v9);

  sub_10025EDD4(0, 0, v15, a6, v18);
}

uint64_t sub_100BEE9E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  v6 = sub_1000BC4D4(&qword_1016B7D68, &qword_1013DD910);
  v5[5] = v6;
  v7 = *(v6 - 8);
  v5[6] = v7;
  v5[7] = *(v7 + 64);
  v5[8] = swift_task_alloc();

  return _swift_task_switch(sub_100BEEAB8, 0, 0);
}

uint64_t sub_100BEEAB8()
{
  v1 = v0[8];
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[3];
  (*(v3 + 16))(v1, v0[4], v2);
  v5 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v6 = swift_allocObject();
  v0[9] = v6;
  *(v6 + 16) = v4;
  (*(v3 + 32))(v6 + v5, v1, v2);

  v7 = swift_task_alloc();
  v0[10] = v7;
  *v7 = v0;
  v7[1] = sub_100BF4430;
  v8 = v0[2];

  return unsafeBlocking<A>(_:)(v8, sub_100BF2310, v6, &type metadata for () + 1);
}

uint64_t sub_100BEEC00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  v6 = sub_1000BC4D4(&qword_1016B7E30, &qword_1013DDC30);
  v5[5] = v6;
  v7 = *(v6 - 8);
  v5[6] = v7;
  v5[7] = *(v7 + 64);
  v5[8] = swift_task_alloc();

  return _swift_task_switch(sub_100BEECD8, 0, 0);
}

uint64_t sub_100BEECD8()
{
  v1 = v0[8];
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[3];
  (*(v3 + 16))(v1, v0[4], v2);
  v5 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v6 = swift_allocObject();
  v0[9] = v6;
  *(v6 + 16) = v4;
  (*(v3 + 32))(v6 + v5, v1, v2);

  v7 = swift_task_alloc();
  v0[10] = v7;
  *v7 = v0;
  v7[1] = sub_100BF4430;
  v8 = v0[2];

  return unsafeBlocking<A>(_:)(v8, sub_100BF3E74, v6, &type metadata for () + 1);
}

uint64_t sub_100BEEE20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  v6 = sub_1000BC4D4(&qword_1016B7DC0, &qword_1013DDA28);
  v5[5] = v6;
  v7 = *(v6 - 8);
  v5[6] = v7;
  v5[7] = *(v7 + 64);
  v5[8] = swift_task_alloc();

  return _swift_task_switch(sub_100BEEEF8, 0, 0);
}

uint64_t sub_100BEEEF8()
{
  v1 = v0[8];
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[3];
  (*(v3 + 16))(v1, v0[4], v2);
  v5 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v6 = swift_allocObject();
  v0[9] = v6;
  *(v6 + 16) = v4;
  (*(v3 + 32))(v6 + v5, v1, v2);

  v7 = swift_task_alloc();
  v0[10] = v7;
  *v7 = v0;
  v7[1] = sub_100ABD09C;
  v8 = v0[2];

  return unsafeBlocking<A>(_:)(v8, sub_100BF2FE8, v6, &type metadata for () + 1);
}

uint64_t sub_100BEF040(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_1016B7D68, &qword_1013DD910);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = aBlock - v6;
  v8 = *(a1 + 16);
  (*(v5 + 16))(aBlock - v6, a2, v4);
  v9 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  (*(v5 + 32))(v10 + v9, v7, v4);
  v11 = swift_allocObject();
  *(v11 + 16) = sub_100BF2338;
  *(v11 + 24) = v10;
  aBlock[4] = sub_1000D2FB0;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10013FE14;
  aBlock[3] = &unk_10164C560;
  v12 = _Block_copy(aBlock);

  dispatch_sync(v8, v12);
  _Block_release(v12);
  LOBYTE(a1) = swift_isEscapingClosureAtFileLocation();

  if (a1)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100BEF26C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_1016B7E30, &qword_1013DDC30);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = aBlock - v6;
  v8 = *(a1 + 16);
  (*(v5 + 16))(aBlock - v6, a2, v4);
  v9 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  (*(v5 + 32))(v10 + v9, v7, v4);
  v11 = swift_allocObject();
  *(v11 + 16) = sub_100BF3F5C;
  *(v11 + 24) = v10;
  aBlock[4] = sub_10040B9F8;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10013FE14;
  aBlock[3] = &unk_10164CB28;
  v12 = _Block_copy(aBlock);

  dispatch_sync(v8, v12);
  _Block_release(v12);
  LOBYTE(a1) = swift_isEscapingClosureAtFileLocation();

  if (a1)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100BEF498(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_1016B7DC0, &qword_1013DDA28);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = aBlock - v6;
  v8 = *(a1 + 16);
  (*(v5 + 16))(aBlock - v6, a2, v4);
  v9 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  (*(v5 + 32))(v10 + v9, v7, v4);
  v11 = swift_allocObject();
  *(v11 + 16) = sub_100BF3094;
  *(v11 + 24) = v10;
  aBlock[4] = sub_10040B9F8;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10013FE14;
  aBlock[3] = &unk_10164C7E0;
  v12 = _Block_copy(aBlock);

  dispatch_sync(v8, v12);
  _Block_release(v12);
  LOBYTE(a1) = swift_isEscapingClosureAtFileLocation();

  if (a1)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100BEF6C4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  swift_beginAccess();

  sub_1000BC4D4(a3, a4);
  return CheckedContinuation.resume(returning:)();
}

unint64_t sub_100BEF73C()
{
  result = qword_1016B7C10;
  if (!qword_1016B7C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B7C10);
  }

  return result;
}

Swift::Int sub_100BEF790(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        type metadata accessor for Device();
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v6[2] = v5;
      }

      v7 = *(type metadata accessor for Device() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_100BEFCA0(v8, v9, a1, v4);
      v6[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_100BEF8BC(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_100BEF8BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v59 = type metadata accessor for RSSIValue();
  v8 = *(v59 - 8);
  v9 = __chkstk_darwin(v59);
  v58 = &v39[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v57 = &v39[-v11];
  v12 = type metadata accessor for Device();
  v13 = __chkstk_darwin(v12);
  v49 = &v39[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = __chkstk_darwin(v13);
  v56 = &v39[-v16];
  result = __chkstk_darwin(v15);
  v55 = &v39[-v19];
  v41 = a2;
  if (a3 != a2)
  {
    v21 = *(v18 + 16);
    v20 = v18 + 16;
    v22 = *a4;
    v23 = *(v20 + 56);
    v51 = (v8 + 8);
    v52 = v21;
    v50 = (v20 - 8);
    v53 = v12;
    v54 = v20;
    v24 = v22 + v23 * (a3 - 1);
    v46 = -v23;
    v47 = (v20 + 16);
    v25 = a1 - a3;
    v48 = v22;
    v40 = v23;
    v26 = v22 + v23 * a3;
LABEL_5:
    v44 = v24;
    v45 = a3;
    v42 = v26;
    v43 = v25;
    v60 = v25;
    while (1)
    {
      v27 = v55;
      v28 = v52;
      v52(v55, v26, v12);
      v29 = v56;
      v28(v56, v24, v12);
      v30 = v57;
      Device.rssi.getter();
      v31 = v58;
      Device.rssi.getter();
      sub_100BCA23C(&qword_1016B7DA8, 255, &type metadata accessor for RSSIValue, &protocol conformance descriptor for RSSIValue);
      v32 = v59;
      v61 = dispatch thunk of static Comparable.< infix(_:_:)();
      v33 = *v51;
      v34 = v31;
      v12 = v53;
      (*v51)(v34, v32);
      v33(v30, v32);
      v35 = *v50;
      (*v50)(v29, v12);
      result = v35(v27, v12);
      if ((v61 & 1) == 0)
      {
LABEL_4:
        a3 = v45 + 1;
        v24 = v44 + v40;
        v25 = v43 - 1;
        v26 = v42 + v40;
        if (v45 + 1 == v41)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v48)
      {
        break;
      }

      v36 = *v47;
      v37 = v49;
      (*v47)(v49, v26, v12);
      swift_arrayInitWithTakeFrontToBack();
      result = v36(v24, v37, v12);
      v24 += v46;
      v26 += v46;
      if (__CFADD__(v60++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100BEFCA0(unint64_t *a1, uint64_t a2, void (**a3)(void), unint64_t a4)
{
  v5 = v4;
  v130 = a1;
  v154 = type metadata accessor for RSSIValue();
  v8 = *(v154 - 8);
  v9 = __chkstk_darwin(v154);
  v153 = &v127 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v152 = &v127 - v11;
  v12 = type metadata accessor for Device();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v134 = &v127 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v144 = &v127 - v17;
  v18 = __chkstk_darwin(v16);
  v151 = &v127 - v19;
  result = __chkstk_darwin(v18);
  v155 = &v127 - v21;
  v22 = a3[1];
  if (v22 < 1)
  {
    v25 = a3;
    v24 = _swiftEmptyArrayStorage;
LABEL_95:
    a4 = *v130;
    if (!*v130)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_127:
      result = sub_100B31E68(v24);
      v24 = result;
    }

    v158 = v24;
    v122 = *(v24 + 16);
    if (v122 >= 2)
    {
      while (*v25)
      {
        v123 = v24;
        v24 = *(v24 + 16 * v122);
        v124 = v123;
        v125 = *&v123[16 * v122 + 24];
        sub_100BF0920(*v25 + *(v13 + 72) * v24, *v25 + *(v13 + 72) * *&v123[16 * v122 + 16], *v25 + *(v13 + 72) * v125, a4);
        if (v5)
        {
        }

        if (v125 < v24)
        {
          goto LABEL_120;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v124 = sub_100B31E68(v124);
        }

        if (v122 - 2 >= *(v124 + 2))
        {
          goto LABEL_121;
        }

        v126 = &v124[16 * v122];
        *v126 = v24;
        v126[1] = v125;
        v158 = v124;
        result = sub_100B31DDC(v122 - 1);
        v24 = v158;
        v122 = *(v158 + 16);
        if (v122 <= 1)
        {
        }
      }

      goto LABEL_131;
    }
  }

  v128 = a4;
  v23 = 0;
  v149 = (v8 + 8);
  v150 = v13 + 16;
  v148 = (v13 + 8);
  v146 = (v13 + 32);
  v24 = _swiftEmptyArrayStorage;
  v25 = a3;
  v132 = a3;
  v147 = v12;
  v139 = v13;
  while (1)
  {
    if (v23 + 1 >= v22)
    {
      v43 = v23 + 1;
    }

    else
    {
      v141 = v22;
      v129 = v24;
      v26 = *v25;
      v27 = *(v13 + 72);
      v28 = v23;
      v131 = v23;
      v29 = v26 + v27 * (v23 + 1);
      v30 = v27;
      v156 = v27;
      v157 = v26;
      v31 = v26;
      v32 = *(v13 + 16);
      v32();
      v33 = v31 + v30 * v28;
      v34 = v151;
      v143 = v32;
      (v32)(v151, v33, v12);
      v35 = v152;
      Device.rssi.getter();
      v36 = v153;
      Device.rssi.getter();
      v37 = sub_100BCA23C(&qword_1016B7DA8, 255, &type metadata accessor for RSSIValue, &protocol conformance descriptor for RSSIValue);
      v38 = v154;
      v142 = v37;
      LODWORD(v145) = dispatch thunk of static Comparable.< infix(_:_:)();
      v39 = *v149;
      (*v149)(v36, v38);
      v138 = v39;
      (v39)(v35, v38);
      v40 = *(v139 + 8);
      a4 = v148;
      v40(v34, v12);
      v137 = v40;
      result = (v40)(v155, v12);
      v41 = v131 + 2;
      v42 = v157 + v156 * (v131 + 2);
      while (1)
      {
        v43 = v141;
        if (v141 == v41)
        {
          break;
        }

        v44 = v155;
        v45 = v143;
        (v143)(v155, v42, v12);
        v46 = v151;
        (v45)(v151, v29, v12);
        v47 = v152;
        Device.rssi.getter();
        v48 = v153;
        Device.rssi.getter();
        v49 = v154;
        v50 = dispatch thunk of static Comparable.< infix(_:_:)();
        v140 = v5;
        LODWORD(v157) = v50 & 1;
        v51 = v138;
        (v138)(v48, v49);
        v52 = v47;
        v12 = v147;
        v51(v52, v49);
        a4 = v148;
        v53 = v137;
        (v137)(v46, v12);
        result = v53(v44, v12);
        ++v41;
        v42 += v156;
        v29 += v156;
        v5 = v140;
        if ((v145 & 1) != v157)
        {
          v43 = v41 - 1;
          break;
        }
      }

      v25 = v132;
      v13 = v139;
      v24 = v129;
      v23 = v131;
      if (v145)
      {
        if (v43 < v131)
        {
          goto LABEL_124;
        }

        if (v131 < v43)
        {
          a4 = v156 * (v43 - 1);
          v54 = v43;
          v55 = v43 * v156;
          v141 = v43;
          v56 = v131 * v156;
          do
          {
            if (v23 != --v54)
            {
              v57 = *v25;
              if (!v57)
              {
                goto LABEL_130;
              }

              v157 = *v146;
              (v157)(v134, v57 + v56, v12);
              if (v56 < a4 || v57 + v56 >= v57 + v55)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v56 != a4)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = (v157)(v57 + a4, v134, v12);
              v25 = v132;
            }

            ++v23;
            a4 -= v156;
            v55 -= v156;
            v56 += v156;
          }

          while (v23 < v54);
          v13 = v139;
          v24 = v129;
          v23 = v131;
          v43 = v141;
        }
      }
    }

    v58 = v25[1];
    if (v43 < v58)
    {
      if (__OFSUB__(v43, v23))
      {
        goto LABEL_123;
      }

      if (v43 - v23 < v128)
      {
        if (__OFADD__(v23, v128))
        {
          goto LABEL_125;
        }

        if (v23 + v128 >= v58)
        {
          a4 = v25[1];
        }

        else
        {
          a4 = v23 + v128;
        }

        if (a4 < v23)
        {
LABEL_126:
          __break(1u);
          goto LABEL_127;
        }

        if (v43 != a4)
        {
          break;
        }
      }
    }

    a4 = v43;
    if (v43 < v23)
    {
      goto LABEL_122;
    }

LABEL_33:
    result = swift_isUniquelyReferenced_nonNull_native();
    v135 = a4;
    if ((result & 1) == 0)
    {
      result = sub_100A5B430(0, *(v24 + 16) + 1, 1, v24);
      v24 = result;
    }

    a4 = *(v24 + 16);
    v59 = *(v24 + 24);
    v60 = a4 + 1;
    if (a4 >= v59 >> 1)
    {
      result = sub_100A5B430((v59 > 1), a4 + 1, 1, v24);
      v24 = result;
    }

    *(v24 + 16) = v60;
    v61 = v24 + 16 * a4;
    v62 = v135;
    *(v61 + 32) = v23;
    *(v61 + 40) = v62;
    if (!*v130)
    {
      goto LABEL_132;
    }

    if (a4)
    {
      v13 = *v130;
      while (1)
      {
        v63 = v60 - 1;
        if (v60 >= 4)
        {
          break;
        }

        if (v60 == 3)
        {
          v64 = *(v24 + 32);
          v65 = *(v24 + 40);
          v74 = __OFSUB__(v65, v64);
          v66 = v65 - v64;
          v67 = v74;
LABEL_53:
          if (v67)
          {
            goto LABEL_111;
          }

          v80 = (v24 + 16 * v60);
          v82 = *v80;
          v81 = v80[1];
          v83 = __OFSUB__(v81, v82);
          v84 = v81 - v82;
          v85 = v83;
          if (v83)
          {
            goto LABEL_114;
          }

          v86 = (v24 + 32 + 16 * v63);
          v88 = *v86;
          v87 = v86[1];
          v74 = __OFSUB__(v87, v88);
          v89 = v87 - v88;
          if (v74)
          {
            goto LABEL_117;
          }

          if (__OFADD__(v84, v89))
          {
            goto LABEL_118;
          }

          if (v84 + v89 >= v66)
          {
            if (v66 < v89)
            {
              v63 = v60 - 2;
            }

            goto LABEL_74;
          }

          goto LABEL_67;
        }

        v90 = (v24 + 16 * v60);
        v92 = *v90;
        v91 = v90[1];
        v74 = __OFSUB__(v91, v92);
        v84 = v91 - v92;
        v85 = v74;
LABEL_67:
        if (v85)
        {
          goto LABEL_113;
        }

        v93 = v24 + 16 * v63;
        v95 = *(v93 + 32);
        v94 = *(v93 + 40);
        v74 = __OFSUB__(v94, v95);
        v96 = v94 - v95;
        if (v74)
        {
          goto LABEL_116;
        }

        if (v96 < v84)
        {
          goto LABEL_3;
        }

LABEL_74:
        a4 = v63 - 1;
        if (v63 - 1 >= v60)
        {
          __break(1u);
LABEL_107:
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
          goto LABEL_126;
        }

        if (!*v25)
        {
          goto LABEL_129;
        }

        v101 = *(v24 + 32 + 16 * a4);
        v102 = *(v24 + 32 + 16 * v63 + 8);
        sub_100BF0920(*v25 + *(v139 + 72) * v101, *v25 + *(v139 + 72) * *(v24 + 32 + 16 * v63), *v25 + *(v139 + 72) * v102, v13);
        if (v5)
        {
        }

        if (v102 < v101)
        {
          goto LABEL_107;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v24 = sub_100B31E68(v24);
        }

        if (a4 >= *(v24 + 16))
        {
          goto LABEL_108;
        }

        v103 = v24 + 16 * a4;
        *(v103 + 32) = v101;
        *(v103 + 40) = v102;
        v158 = v24;
        result = sub_100B31DDC(v63);
        v24 = v158;
        v60 = *(v158 + 16);
        if (v60 <= 1)
        {
          goto LABEL_3;
        }
      }

      v68 = v24 + 32 + 16 * v60;
      v69 = *(v68 - 64);
      v70 = *(v68 - 56);
      v74 = __OFSUB__(v70, v69);
      v71 = v70 - v69;
      if (v74)
      {
        goto LABEL_109;
      }

      v73 = *(v68 - 48);
      v72 = *(v68 - 40);
      v74 = __OFSUB__(v72, v73);
      v66 = v72 - v73;
      v67 = v74;
      if (v74)
      {
        goto LABEL_110;
      }

      v75 = (v24 + 16 * v60);
      v77 = *v75;
      v76 = v75[1];
      v74 = __OFSUB__(v76, v77);
      v78 = v76 - v77;
      if (v74)
      {
        goto LABEL_112;
      }

      v74 = __OFADD__(v66, v78);
      v79 = v66 + v78;
      if (v74)
      {
        goto LABEL_115;
      }

      if (v79 >= v71)
      {
        v97 = (v24 + 32 + 16 * v63);
        v99 = *v97;
        v98 = v97[1];
        v74 = __OFSUB__(v98, v99);
        v100 = v98 - v99;
        if (v74)
        {
          goto LABEL_119;
        }

        if (v66 < v100)
        {
          v63 = v60 - 2;
        }

        goto LABEL_74;
      }

      goto LABEL_53;
    }

LABEL_3:
    v22 = v25[1];
    v23 = v135;
    v13 = v139;
    if (v135 >= v22)
    {
      goto LABEL_95;
    }
  }

  v129 = v24;
  v140 = v5;
  v104 = *v25;
  v105 = *(v13 + 72);
  v145 = *(v13 + 16);
  v106 = v104 + v105 * (v43 - 1);
  v142 = -v105;
  v131 = v23;
  v107 = (v23 - v43);
  v143 = v104;
  v133 = v105;
  v108 = v104 + v43 * v105;
  v135 = a4;
LABEL_86:
  v141 = v43;
  v136 = v108;
  v137 = v107;
  v138 = v106;
  v109 = v107;
  while (1)
  {
    v156 = v109;
    v110 = v155;
    v111 = v145;
    v145(v155, v108, v12);
    v112 = v151;
    v111(v151, v106, v12);
    v113 = v152;
    Device.rssi.getter();
    v114 = v153;
    Device.rssi.getter();
    sub_100BCA23C(&qword_1016B7DA8, 255, &type metadata accessor for RSSIValue, &protocol conformance descriptor for RSSIValue);
    v115 = v154;
    LODWORD(v157) = dispatch thunk of static Comparable.< infix(_:_:)();
    v13 = v149;
    v116 = *v149;
    v117 = v114;
    v12 = v147;
    (*v149)(v117, v115);
    v116(v113, v115);
    v118 = *v148;
    (*v148)(v112, v12);
    result = v118(v110, v12);
    if ((v157 & 1) == 0)
    {
LABEL_85:
      v43 = v141 + 1;
      v106 = &v138[v133];
      v107 = v137 - 1;
      v108 = &v136[v133];
      a4 = v135;
      if (v141 + 1 != v135)
      {
        goto LABEL_86;
      }

      v5 = v140;
      v25 = v132;
      v24 = v129;
      v23 = v131;
      if (v135 < v131)
      {
        goto LABEL_122;
      }

      goto LABEL_33;
    }

    v119 = v156;
    if (!v143)
    {
      break;
    }

    v120 = *v146;
    v13 = v144;
    (*v146)(v144, v108, v12);
    swift_arrayInitWithTakeFrontToBack();
    (v120)(v106, v13, v12);
    v106 += v142;
    v108 += v142;
    v121 = __CFADD__(v119, 1);
    v109 = (v119 + 1);
    if (v121)
    {
      goto LABEL_85;
    }
  }

  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
  return result;
}

uint64_t sub_100BF0920(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v70 = a3;
  v64 = type metadata accessor for RSSIValue();
  v7 = *(v64 - 8);
  v8 = __chkstk_darwin(v64);
  v65 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v63 = &v51 - v10;
  v68 = type metadata accessor for Device();
  v11 = *(v68 - 8);
  v12 = __chkstk_darwin(v68);
  v62 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v12);
  v69 = &v51 - v15;
  v17 = *(v16 + 72);
  if (!v17)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_61;
  }

  v18 = v70 - a2;
  if (v70 - a2 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_62;
  }

  v19 = (a2 - a1) / v17;
  v73 = a1;
  v72 = a4;
  if (v19 >= v18 / v17)
  {
    v21 = v18 / v17 * v17;
    if (a4 < a2 || a2 + v21 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v35 = a4 + v21;
    if (v21 >= 1)
    {
      v36 = -v17;
      v56 = (v7 + 8);
      v57 = (v11 + 16);
      v54 = (v11 + 8);
      v55 = a4;
      v37 = v35;
      v67 = a1;
      v58 = v36;
      do
      {
        v52 = v35;
        v38 = a2;
        v39 = v36 + a2;
        v59 = v38;
        v60 = v39;
        while (1)
        {
          v40 = v70;
          if (v38 <= a1)
          {
            v73 = v38;
            v71 = v52;
            goto LABEL_59;
          }

          v53 = v35;
          v70 += v36;
          v41 = v36 + v37;
          v42 = *v57;
          v43 = v68;
          v66 = v40;
          v42();
          v44 = v62;
          (v42)(v62, v39, v43);
          v45 = v63;
          Device.rssi.getter();
          v46 = v65;
          Device.rssi.getter();
          sub_100BCA23C(&qword_1016B7DA8, 255, &type metadata accessor for RSSIValue, &protocol conformance descriptor for RSSIValue);
          v47 = v64;
          LODWORD(v61) = dispatch thunk of static Comparable.< infix(_:_:)();
          v48 = *v56;
          (*v56)(v46, v47);
          v48(v45, v47);
          v49 = *v54;
          (*v54)(v44, v43);
          v49(v69, v43);
          if (v61)
          {
            break;
          }

          v35 = v41;
          v50 = v41;
          if (v66 < v37 || v70 >= v37)
          {
            swift_arrayInitWithTakeFrontToBack();
            a1 = v67;
            v36 = v58;
          }

          else
          {
            a1 = v67;
            v36 = v58;
            if (v66 != v37)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v37 = v35;
          v38 = v59;
          v39 = v60;
          if (v50 <= v55)
          {
            a2 = v59;
            goto LABEL_58;
          }
        }

        if (v66 < v59 || v70 >= v59)
        {
          a2 = v60;
          swift_arrayInitWithTakeFrontToBack();
          a1 = v67;
          v35 = v53;
          v36 = v58;
        }

        else
        {
          a2 = v60;
          a1 = v67;
          v35 = v53;
          v36 = v58;
          if (v66 != v59)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v37 > v55);
    }

LABEL_58:
    v73 = a2;
    v71 = v35;
  }

  else
  {
    v20 = v19 * v17;
    if (a4 < a1 || a1 + v20 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v61 = a4 + v20;
    v71 = a4 + v20;
    if (v20 >= 1 && a2 < v70)
    {
      v23 = *(v11 + 16);
      v57 = (v7 + 8);
      v58 = v23;
      v59 = v17;
      v60 = v11 + 16;
      v56 = (v11 + 8);
      do
      {
        v67 = a1;
        v24 = v68;
        v25 = v58;
        v58();
        v26 = v62;
        (v25)(v62, a4, v24);
        v27 = v63;
        Device.rssi.getter();
        v28 = v65;
        Device.rssi.getter();
        sub_100BCA23C(&qword_1016B7DA8, 255, &type metadata accessor for RSSIValue, &protocol conformance descriptor for RSSIValue);
        v29 = v64;
        LODWORD(v66) = dispatch thunk of static Comparable.< infix(_:_:)();
        v30 = *v57;
        (*v57)(v28, v29);
        (v30)(v27, v29);
        v31 = *v56;
        (*v56)(v26, v24);
        v31(v69, v24);
        if (v66)
        {
          v32 = v59;
          v33 = v67;
          if (v67 < a2 || v67 >= a2 + v59)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v67 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v32;
        }

        else
        {
          v32 = v59;
          v34 = a4 + v59;
          v33 = v67;
          if (v67 < a4 || v67 >= v34)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v67 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v72 = v34;
          a4 += v32;
        }

        a1 = v33 + v32;
        v73 = a1;
      }

      while (a4 < v61 && a2 < v70);
    }
  }

LABEL_59:
  sub_10060AC18(&v73, &v72, &v71);
  return 1;
}

uint64_t sub_100BF1088()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100014744;

  return sub_100BDB0EC(v2, v3);
}

uint64_t sub_100BF1130(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100014744;

  return sub_100BDBB80(a1, v1);
}

uint64_t sub_100BF11C8(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1000BC4D4(&qword_1016B7C40, &unk_1013DD720) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_100014744;

  return sub_100BD4DCC(a1, v7, v8, v9, v1 + v6);
}

uint64_t sub_100BF1308(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100014744;

  return sub_100BD5168(a1, v5, v4);
}

uint64_t sub_100BF13B4()
{
  v2 = *(sub_1000BC4D4(&unk_1016B7C30, &qword_1013DBFD0) - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100014744;

  return sub_100BDBE98(v4, v0 + v3);
}

void sub_100BF14C8(uint64_t a1)
{
  v2 = sub_1000BC4D4(&unk_1016B7C30, &qword_1013DBFD0);
  v25 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v22[-v3];
  v5 = type metadata accessor for UUID();
  v26 = *(v5 - 8);
  v27 = v5;
  __chkstk_darwin(v5);
  v7 = &v22[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for Device();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v22[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_101694D50 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_1000076D4(v12, qword_1016B7860);
  (*(v9 + 16))(v11, a1, v8);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v23 = v14;
    v16 = v15;
    v24 = swift_slowAlloc();
    v28 = v24;
    *v16 = 136315651;
    *(v16 + 4) = sub_1000136BC(0xD00000000000001ELL, 0x800000010136EED0, &v28);
    *(v16 + 12) = 2160;
    *(v16 + 14) = 1752392040;
    *(v16 + 22) = 2081;
    Device.id.getter();
    Identifier.id.getter();
    (*(v25 + 8))(v4, v2);
    sub_100BCA23C(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v17 = v27;
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    v20 = v19;
    (*(v26 + 8))(v7, v17);
    (*(v9 + 8))(v11, v8);
    v21 = sub_1000136BC(v18, v20, &v28);

    *(v16 + 24) = v21;
    _os_log_impl(&_mh_execute_header, v13, v23, "%s Discovered device %{private,mask.hash}s", v16, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v9 + 8))(v11, v8);
  }
}

uint64_t sub_100BF18E8()
{

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_100BF1928()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100014744;

  return sub_100BE5540(v2, v3, v4);
}

uint64_t sub_100BF19D0()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_100014744;

  return sub_100BEA480(v0);
}

uint64_t sub_100BF1A60()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100014744;

  return sub_100BE9968(v2);
}

uint64_t sub_100BF1AF8(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for ObservationStreams() - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1[5];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_100014744;

  return sub_100BE611C(a1, v7, v8, v9, v10, v1 + v6);
}

uint64_t sub_100BF1C30()
{
  v1 = type metadata accessor for ObservationStreams();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v4 + 8);
}

uint64_t sub_100BF1D10(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for ObservationStreams() - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1[5];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_100014744;

  return sub_100BE7ED4(a1, v7, v8, v9, v10, v1 + v6);
}

uint64_t sub_100BF1E48(uint64_t a1)
{
  v4 = *(type metadata accessor for AnalyticsEvent() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100014744;

  return sub_100BEB5F4(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_100BF1F68()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100014744;

  return sub_10116632C(v2, v3);
}

uint64_t sub_100BF200C()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_100014744;

  return sub_1011656A4(v0);
}

uint64_t sub_100BF209C()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100014744;

  return sub_100BEAD34(v2);
}

uint64_t sub_100BF2134()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_100014744;

  return sub_100BC1E34(v0);
}

uint64_t sub_100BF220C(uint64_t a1)
{
  v4 = *(sub_1000BC4D4(&qword_1016B7D68, &qword_1013DD910) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100014744;

  return sub_100BEE9E0(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_100BF234C()
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100014744;

  return sub_100BC28D8(v4, v0 + v3);
}

uint64_t sub_100BF2424(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100014744;

  return sub_100BC2DA0(a1, v4);
}

uint64_t sub_100BF24C0()
{
  v2 = *(sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0) - 8);
  v3 = (*(v2 + 80) + 65) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100014744;

  return sub_100BC35CC(v4, v0 + 24, v0 + v3);
}

uint64_t sub_100BF25D8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100014744;

  return sub_100BC4FB8(a1, v5, v4);
}

uint64_t sub_100BF2680(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100014744;

  return sub_100BC4B48(a1, v4);
}

uint64_t sub_100BF271C(uint64_t a1)
{
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100014744;

  return sub_100BED8C4(a1, v6, v7, v8, v1 + v5, v9);
}

uint64_t sub_100BF284C()
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100014744;

  return sub_100BEDB00(v4, v0 + v3);
}

uint64_t sub_100BF2954(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100014744;

  return sub_100BC535C(a1, v4, v5, v6);
}

uint64_t sub_100BF2A14()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100014744;

  return sub_100BD6B18(v2, v3);
}

uint64_t sub_100BF2AC0(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1001BA6C8;

  return sub_100BD897C(a1, v1);
}

uint64_t sub_100BF2B58(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100014744;

  return sub_100BC7B08(a1, v4);
}

uint64_t sub_100BF2C04()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v4 + 8);
}

uint64_t sub_100BF2CD4()
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100014744;

  return sub_100BEE208(v4, v0 + v3);
}

uint64_t sub_100BF2DDC()
{
  v2 = *(type metadata accessor for DiscoveryState.Mode(0) - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100014650;

  return sub_100BCD23C(v4, v0 + v3);
}

uint64_t sub_100BF2EE4(uint64_t a1)
{
  v4 = *(sub_1000BC4D4(&qword_1016B7DC0, &qword_1013DDA28) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100014744;

  return sub_100BEEE20(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_100BF3010(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v4 = *(sub_1000BC4D4(a1, a2) - 8);
  v5 = *(v3 + 16);
  v6 = v3 + ((*(v4 + 80) + 24) & ~*(v4 + 80));

  return a3(v5, v6);
}

uint64_t sub_100BF311C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100014744;

  return sub_100BBB9A0(a1, v1);
}

uint64_t sub_100BF31B8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100014744;

  return sub_100BBD65C();
}

uint64_t sub_100BF3254()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100014744;

  return sub_100BBEE60();
}

uint64_t sub_100BF32F0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100014744;

  return sub_100BBF5C4();
}

uint64_t sub_100BF338C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100014744;

  return sub_100BC1190(a1, v1);
}

uint64_t sub_100BF3428(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100014744;

  return sub_100BC12C0(a1, v1);
}

uint64_t sub_100BF34C4()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100014744;

  return sub_100BCB6C8(v2, v3);
}

uint64_t sub_100BF355C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100014744;

  return sub_100BCB93C(a1, v4);
}

uint64_t sub_100BF3604(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100014744;

  return sub_100BCC404(a1, v4, v5, v6);
}

uint64_t sub_100BF36C4()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100014744;

  return sub_100BD92B8(v2);
}

uint64_t sub_100BF375C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100014744;

  return sub_100BC18D0(v2, v3);
}

uint64_t sub_100BF37F4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100014744;

  return sub_100BC1AE0(a1, v4);
}

uint64_t sub_100BF389C()
{
  v1 = sub_1000BC4D4(&unk_1016B7C30, &qword_1013DBFD0);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v4 + 8);
}

uint64_t sub_100BF3978(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100BF39E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100BF3A48(uint64_t a1)
{
  v4 = *(type metadata accessor for Device() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100014744;

  return sub_100BDCC94(a1, v6, v1 + v5);
}

uint64_t sub_100BF3B2C(void (*a1)(void), uint64_t a2)
{
  swift_unknownObjectRelease();
  a1(*(v2 + 32));

  return _swift_deallocObject(v2, a2);
}

uint64_t sub_100BF3B88(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100014744;

  return sub_100BDEEE0(a1, v4, v5, v6);
}

uint64_t sub_100BF3C3C()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100014744;

  return sub_100BDF434(v2);
}

uint64_t sub_100BF3CD4(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100014744;

  return sub_100BDCAB4(a1, v1);
}

uint64_t sub_100BF3D70(uint64_t a1)
{
  v4 = *(sub_1000BC4D4(&qword_1016B7E30, &qword_1013DDC30) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100014744;

  return sub_100BEEC00(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_100BF3E9C(uint64_t *a1, uint64_t *a2)
{
  v3 = sub_1000BC4D4(a1, a2);
  v4 = *(v3 - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v4 + 64);

  (*(v4 + 8))(v2 + v5, v3);

  return _swift_deallocObject(v2, v5 + v6);
}

uint64_t sub_100BF3F70()
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100014744;

  return sub_100BCAE24(v4, v0 + v3, v5);
}

unint64_t sub_100BF4078()
{
  result = qword_1016A6DC0;
  if (!qword_1016A6DC0)
  {
    sub_100008BB8(255, &qword_1016B7E40, SPAccessoryPairingConfiguration_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A6DC0);
  }

  return result;
}

uint64_t sub_100BF40E0(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v3 + 64);

  (*(v3 + 8))(v1 + v4, v2);

  return _swift_deallocObject(v1, v4 + v5);
}

uint64_t sub_100BF41AC()
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100014744;

  return sub_100BCA648(v4, v0 + v3);
}

uint64_t sub_100BF4284()
{
  v1 = *(type metadata accessor for DiscoveryState.Mode(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v1 + 64);

  v4 = sub_1000BC4D4(&unk_1016B7BF0, &qword_1013B4AF0);
  if (!(*(*(v4 - 8) + 48))(v0 + v2, 4, v4))
  {
    v5 = type metadata accessor for UUID();
    (*(*(v5 - 8) + 8))(v0 + v2, v5);
  }

  return _swift_deallocObject(v0, ((v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
}

unint64_t sub_100BF43C4()
{
  result = qword_1016B7E50;
  if (!qword_1016B7E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B7E50);
  }

  return result;
}

uint64_t sub_100BF4448(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v3 = swift_task_alloc();
  v2[8] = v3;
  *v3 = v2;
  v3[1] = sub_100BF44DC;

  return daemon.getter();
}

uint64_t sub_100BF44DC(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 72) = a1;

  v3 = swift_task_alloc();
  *(v2 + 80) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for BeaconStoreActor();
  v6 = sub_100BFADB4(&qword_1016AA400, 255, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100BFADB4(&qword_101698D20, 255, type metadata accessor for BeaconStoreActor, &unk_1013EB1B8);
  *v3 = v9;
  v3[1] = sub_100BF46C0;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100BF46C0(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 56);
  *(v3 + 88) = a1;
  *(v3 + 96) = v1;

  if (v1)
  {
    v5 = sub_100BFAEC8;
  }

  else
  {

    v5 = sub_100BF4800;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100BF4800()
{
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  *(v0 + 104) = qword_10177B348;

  return _swift_task_switch(sub_100BF489C, 0, 0);
}

uint64_t sub_100BF489C()
{

  v1 = swift_task_alloc();
  *(v0 + 112) = v1;
  *v1 = v0;
  v1[1] = sub_100BF4960;
  v2 = *(v0 + 104);

  return unsafeBlocking<A>(_:)(v0 + 16, sub_1000D2BE0, v2, &type metadata for Configuration);
}

uint64_t sub_100BF4960()
{

  return _swift_task_switch(sub_100BF4A78, 0, 0);
}

uint64_t sub_100BF4A78()
{
  v1 = v0[7];
  v0[15] = v0[2];
  return _swift_task_switch(sub_100BF4A9C, v1, 0);
}

uint64_t sub_100BF4A9C()
{
  v1 = v0[11];
  v0[16] = sub_10107355C(v0[15]);

  return _swift_task_switch(sub_100BF4B18, v1, 0);
}

uint64_t sub_100BF4B18()
{

  v1 = swift_task_alloc();
  *(v0 + 136) = v1;
  *v1 = v0;
  v1[1] = sub_100BF4BF4;
  v2 = *(v0 + 88);

  return unsafeBlocking<A>(context:_:)(v0 + 24, 0xD000000000000010, 0x800000010134A8C0, sub_100111B08, v2, &type metadata for Int);
}

uint64_t sub_100BF4BF4()
{
  v1 = *(*v0 + 88);

  return _swift_task_switch(sub_100BF4D0C, v1, 0);
}

uint64_t sub_100BF4D0C()
{
  v1 = v0[7];
  v0[18] = v0[3];
  return _swift_task_switch(sub_100BFAEC4, v1, 0);
}

uint64_t sub_100BF4D30(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v3 = swift_task_alloc();
  v2[8] = v3;
  *v3 = v2;
  v3[1] = sub_100BF4DC4;

  return daemon.getter();
}

uint64_t sub_100BF4DC4(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 72) = a1;

  v3 = swift_task_alloc();
  *(v2 + 80) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for BeaconStoreActor();
  v6 = sub_100BFADB4(&qword_1016AA400, 255, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100BFADB4(&qword_101698D20, 255, type metadata accessor for BeaconStoreActor, &unk_1013EB1B8);
  *v3 = v9;
  v3[1] = sub_100BF4FA8;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100BF4FA8(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 56);
  *(v3 + 88) = a1;
  *(v3 + 96) = v1;

  if (v1)
  {
    v5 = sub_100BF581C;
  }

  else
  {

    v5 = sub_100BF50E8;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100BF50E8()
{
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  *(v0 + 104) = qword_10177B348;

  return _swift_task_switch(sub_100BF5184, 0, 0);
}

uint64_t sub_100BF5184()
{

  v1 = swift_task_alloc();
  *(v0 + 112) = v1;
  *v1 = v0;
  v1[1] = sub_100BF5248;
  v2 = *(v0 + 104);

  return unsafeBlocking<A>(_:)(v0 + 16, sub_1000DFF78, v2, &type metadata for Configuration);
}

uint64_t sub_100BF5248()
{

  return _swift_task_switch(sub_100BF5360, 0, 0);
}

uint64_t sub_100BF5360()
{
  v1 = v0[7];
  v0[15] = v0[2];
  return _swift_task_switch(sub_100BF5384, v1, 0);
}

uint64_t sub_100BF5384()
{
  v1 = v0[11];
  v0[16] = sub_10107355C(v0[15]);

  return _swift_task_switch(sub_100BF5400, v1, 0);
}

uint64_t sub_100BF5400()
{

  v1 = swift_task_alloc();
  *(v0 + 136) = v1;
  *v1 = v0;
  v1[1] = sub_100BF54DC;
  v2 = *(v0 + 88);

  return unsafeBlocking<A>(context:_:)(v0 + 24, 0xD000000000000010, 0x800000010134A8C0, sub_100BFAECC, v2, &type metadata for Int);
}

uint64_t sub_100BF54DC()
{
  v1 = *(*v0 + 88);

  return _swift_task_switch(sub_100BF55F4, v1, 0);
}

uint64_t sub_100BF55F4()
{
  v1 = v0[7];
  v0[18] = v0[3];
  return _swift_task_switch(sub_100BF5618, v1, 0);
}

uint64_t sub_100BF5618()
{
  v1 = v0[18];
  v2 = v0[6];
  v3 = __OFADD__(v1, v2);
  v4 = v1 + v2;
  if (v3)
  {
    __break(1u);
LABEL_12:
    swift_once();
    goto LABEL_4;
  }

  if (v0[16] >= v4)
  {

    v11 = v0[1];
    goto LABEL_8;
  }

  if (qword_1016950D0 != -1)
  {
    goto LABEL_12;
  }

LABEL_4:
  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_10177C418);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[18];
    v9 = v0[16];
    v10 = swift_slowAlloc();
    *v10 = 134218240;
    *(v10 + 4) = v9;
    *(v10 + 12) = 2048;
    *(v10 + 14) = v8;
    _os_log_impl(&_mh_execute_header, v6, v7, "Pairing limit reached: %ld. Current count: %ld.", v10, 0x16u);
  }

  type metadata accessor for SPPairingSessionError(0);
  v0[5] = 17;
  sub_100032898(_swiftEmptyArrayStorage);
  sub_100BFADB4(&unk_1016B2710, 255, type metadata accessor for SPPairingSessionError, &unk_10138A7E4);
  _BridgedStoredNSError.init(_:userInfo:)();
  swift_willThrow();

  v11 = v0[1];
LABEL_8:

  return v11();
}

uint64_t sub_100BF581C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100BF5880(uint64_t a1, uint64_t a2)
{
  v3[150] = v2;
  v3[149] = a2;
  v3[148] = a1;
  v4 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v3[151] = v4;
  v3[152] = *(v4 - 8);
  v3[153] = swift_task_alloc();
  v3[154] = type metadata accessor for OS_dispatch_queue.Attributes();
  v3[155] = swift_task_alloc();
  type metadata accessor for DispatchQoS();
  v3[156] = swift_task_alloc();
  sub_1000BC4D4(&qword_1016985F0, &unk_10139D780);
  v3[157] = swift_task_alloc();
  v5 = type metadata accessor for FMNAccountType();
  v3[158] = v5;
  v3[159] = *(v5 - 8);
  v3[160] = swift_task_alloc();
  v3[161] = type metadata accessor for AirPodsLEPairingLockAckEndPoint(0);
  v3[162] = swift_task_alloc();
  v3[163] = swift_task_alloc();

  return _swift_task_switch(sub_100BF5A74, v2, 0);
}

uint64_t sub_100BF5A74()
{
  sub_10001F280(v0[149], (v0 + 138));
  sub_1000BC4D4(&qword_101698620, &unk_10138FF80);
  if (!swift_dynamicCast())
  {
    v21 = type metadata accessor for PairingValidatorError();
    sub_100BFADB4(&qword_101698628, 255, &type metadata accessor for PairingValidatorError, &protocol conformance descriptor for PairingValidatorError);
    swift_allocError();
    (*(*(v21 - 8) + 104))(v22, enum case for PairingValidatorError.invalidAckRequestType(_:), v21);
    swift_willThrow();
LABEL_9:

    v23 = v0[1];

    return v23();
  }

  v1 = v0[163];
  v2 = v0[162];
  v3 = v0[161];
  v4 = v0[160];
  v5 = v0[159];
  v6 = v0[158];
  v7 = v0[157];
  memcpy(v0 + 2, v0 + 36, 0x110uLL);
  v8 = enum case for FMNAccountType.w2Accessory(_:);
  v9 = *(v5 + 104);
  v9(v4, enum case for FMNAccountType.w2Accessory(_:), v6);
  type metadata accessor for AccountURLComponents();
  swift_allocObject();
  *v1 = sub_1010B32C8(v4);
  v9(v1 + *(v3 + 20), v8, v6);
  type metadata accessor for SearchPartyURLSessionFactory(0);
  swift_allocObject();
  v10 = type metadata accessor for FMNMockingPreferences();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = FMNURLSessionFactory.init(mockSessionCreationBlock:preferences:)();
  type metadata accessor for ServerInteractionController(0);
  v12 = swift_allocObject();
  sub_100BFADFC(v1, v2, type metadata accessor for AirPodsLEPairingLockAckEndPoint);
  v0[164] = sub_10061FCDC(v2, v11, v12);
  sub_100164F7C((v0 + 2), (v0 + 70));
  v13 = sub_100BFA5FC((v0 + 2));
  v15 = v14;
  v0[165] = v13;
  v0[166] = v14;
  sub_100165224((v0 + 2));
  if (v15 >> 60 == 15)
  {
    if (qword_1016950E0 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_1000076D4(v16, qword_10177C448);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "Unable to generate BAA payload", v19, 2u);
    }

    v20 = v0[163];

    type metadata accessor for SPPairingSessionError(0);
    v0[144] = 1;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_100BFADB4(&unk_1016B2710, 255, type metadata accessor for SPPairingSessionError, &unk_10138A7E4);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();

    sub_100165224((v0 + 2));
    sub_100BFAE64(v20, type metadata accessor for AirPodsLEPairingLockAckEndPoint);
    goto LABEL_9;
  }

  v25 = v0[153];
  v26 = v0[152];
  v31 = v0[151];
  sub_1000BC488();
  static DispatchQoS.unspecified.getter();
  v0[145] = _swiftEmptyArrayStorage;
  sub_100BFADB4(&qword_10169BB60, 255, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_1000BC4D4(&unk_101695580, &qword_101385D90);
  sub_1000BC51C();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v26 + 104))(v25, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v31);
  v0[167] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  type metadata accessor for DeviceIdentityUtility(0);
  v27 = swift_allocObject();
  sub_100164F7C((v0 + 2), (v0 + 104));
  sub_10002E98C(v13, v15);
  swift_defaultActor_initialize();
  v28 = OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_certExpiryDate;
  v29 = type metadata accessor for Date();
  (*(*(v29 - 8) + 56))(v27 + v28, 1, 1, v29);
  *(v27 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_refKey) = 0;
  *(v27 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_certs) = _swiftEmptyArrayStorage;
  *(v27 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_signingType) = 9;
  v30 = swift_task_alloc();
  v0[168] = v30;
  *v30 = v0;
  v30[1] = sub_100BF616C;

  return sub_10028733C((v0 + 2), v13, v15, v27);
}

uint64_t sub_100BF616C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v5 = *(*v3 + 1200);
  v4[169] = a1;
  v4[170] = a2;
  v4[171] = a3;

  return _swift_task_switch(sub_100BF628C, v5, 0);
}

uint64_t sub_100BF628C()
{
  v1 = v0[169];
  if (v1)
  {
    v2 = v0[171];
    v3 = v0[170];
    v4 = v0[164];
    v5 = v0[150];
    v6 = v0[148];

    sub_100017D5C(v3, v2);
    v7 = sub_1004FC0C0(v1, v3, v2, 0, v4);
    v0[172] = v7;
    sub_100165328(v1, v3, v2);
    v9 = sub_100BFADB4(&qword_1016B7F20, v8, type metadata accessor for ProximityPairingValidator, &unk_1013DDE38);
    v10 = type metadata accessor for AirPodsLEPairingLockAckResponse(0);
    v6[3] = v10;
    v6[4] = sub_100BFADB4(&qword_1016985D8, 255, type metadata accessor for AirPodsLEPairingLockAckResponse, &unk_10138FEF8);
    v11 = sub_1000280DC(v6);
    v12 = swift_task_alloc();
    v0[173] = v12;
    *v12 = v0;
    v12[1] = sub_100BF6674;

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v11, v5, v9, 0x293A5F286B6361, 0xE700000000000000, sub_100BFAC4C, v7, v10);
  }

  else
  {
    if (qword_1016950E0 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_1000076D4(v13, qword_10177C448);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "Could not create pairing ack request", v16, 2u);
    }

    v17 = v0[167];
    v18 = v0[166];
    v19 = v0[165];
    v20 = v0[163];

    type metadata accessor for SPPairingSessionError(0);
    v0[147] = 6;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_100BFADB4(&unk_1016B2710, 255, type metadata accessor for SPPairingSessionError, &unk_10138A7E4);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();

    sub_100006654(v19, v18);
    sub_100165224((v0 + 2));
    sub_100BFAE64(v20, type metadata accessor for AirPodsLEPairingLockAckEndPoint);

    v21 = v0[1];

    return v21();
  }
}

uint64_t sub_100BF6674()
{
  v2 = *v1;
  *(*v1 + 1392) = v0;

  v3 = *(v2 + 1200);
  if (v0)
  {
    v4 = sub_100BF68EC;
  }

  else
  {
    v4 = sub_100BF67A0;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100BF67A0()
{
  v1 = v0[171];
  v2 = v0[170];
  v3 = v0[169];
  v4 = v0[167];
  v5 = v0[166];
  v6 = v0[165];
  v7 = v0[163];

  sub_100006654(v6, v5);
  sub_100165328(v3, v2, v1);
  sub_100165224((v0 + 2));
  sub_100BFAE64(v7, type metadata accessor for AirPodsLEPairingLockAckEndPoint);

  v8 = v0[1];

  return v8();
}

uint64_t sub_100BF68EC()
{
  v1 = v0[171];
  v2 = v0[170];
  v3 = v0[169];
  v4 = v0[167];
  v5 = v0[166];
  v6 = v0[165];
  v7 = v0[163];
  v8 = v0[148];

  sub_100006654(v6, v5);
  sub_100165328(v3, v2, v1);
  sub_100165224((v0 + 2));
  sub_100BFAE64(v7, type metadata accessor for AirPodsLEPairingLockAckEndPoint);
  sub_100101758(v8);

  v9 = v0[1];

  return v9();
}

uint64_t sub_100BF6A38(uint64_t a1)
{
  v13 = a1;
  v2 = sub_1000BC4D4(&qword_1016985F8, &unk_10138FF70);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v10 - v4;
  v12 = *(v3 + 16);
  v12(&v10 - v4, a1, v2);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  v11 = *(v3 + 32);
  v11(v7 + v6, v5, v2);
  Future.addFailure(block:)();

  v12(v5, v13, v2);
  v8 = swift_allocObject();
  v11(v8 + v6, v5, v2);
  Future.addSuccess(block:)();
}

uint64_t sub_100BF6C18(uint64_t a1)
{
  if (qword_1016950E0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177C448);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v10 = v5;
    *v4 = 136446210;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v6 = String.init<A>(describing:)();
    v8 = sub_1000136BC(v6, v7, &v10);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "Ack pairing failed. %{public}s", v4, 0xCu);
    sub_100007BAC(v5);
  }

  type metadata accessor for SPPairingSessionError(0);
  sub_100032898(_swiftEmptyArrayStorage);
  sub_100BFADB4(&unk_1016B2710, 255, type metadata accessor for SPPairingSessionError, &unk_10138A7E4);
  _BridgedStoredNSError.init(_:userInfo:)();
  sub_1000BC4D4(&qword_1016985F8, &unk_10138FF70);
  return CheckedContinuation.resume(throwing:)();
}

uint64_t sub_100BF6E38(void *a1, void *a2)
{
  v4 = type metadata accessor for AirPodsLEPairingLockAckResponse(0);
  v5 = __chkstk_darwin(v4);
  v7 = v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = v42 - v8;
  v10 = type metadata accessor for FMNServerInteractionController.FMNResponseFields();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = v42 - v15;
  if (FMNServerInteractionController.FMNResponseFields.statusCode.getter() == 200)
  {
    v42[4] = a2;
    if (qword_1016950E0 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    v18 = sub_1000076D4(v17, qword_10177C448);
    (*(v11 + 16))(v16, a1, v10);
    v42[3] = v18;
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v42[2] = a1;
      v22 = v21;
      v42[0] = swift_slowAlloc();
      v44 = v42[0];
      *v22 = 136446210;
      sub_100BFADB4(&qword_1016A62C0, 255, &type metadata accessor for FMNServerInteractionController.FMNResponseFields, &protocol conformance descriptor for FMNServerInteractionController.FMNResponseFields);
      v23 = dispatch thunk of CustomStringConvertible.description.getter();
      v42[1] = v4;
      v24 = v7;
      v25 = v9;
      v27 = v26;
      (*(v11 + 8))(v16, v10);
      v28 = sub_1000136BC(v23, v27, &v44);
      v9 = v25;
      v7 = v24;

      *(v22 + 4) = v28;
      _os_log_impl(&_mh_execute_header, v19, v20, "Ack pairing success: %{public}s", v22, 0xCu);
      sub_100007BAC(v42[0]);
    }

    else
    {

      (*(v11 + 8))(v16, v10);
    }

    type metadata accessor for JSONDecoder();
    swift_allocObject();
    JSONDecoder.init()();
    v38 = FMNServerInteractionController.FMNResponseFields.data.getter();
    v40 = v39;
    sub_100BFADB4(&qword_101698600, 255, type metadata accessor for AirPodsLEPairingLockAckResponse, &unk_10139F6F0);
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    sub_100016590(v38, v40);
    sub_100BFADFC(v9, v7, type metadata accessor for AirPodsLEPairingLockAckResponse);
    sub_1000BC4D4(&qword_1016985F8, &unk_10138FF70);
    CheckedContinuation.resume(returning:)();

    return sub_100BFAE64(v9, type metadata accessor for AirPodsLEPairingLockAckResponse);
  }

  else
  {
    if (qword_1016950E0 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    sub_1000076D4(v29, qword_10177C448);
    (*(v11 + 16))(v14, a1, v10);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v44 = v33;
      *v32 = 136446210;
      sub_100BFADB4(&qword_1016A62C0, 255, &type metadata accessor for FMNServerInteractionController.FMNResponseFields, &protocol conformance descriptor for FMNServerInteractionController.FMNResponseFields);
      v34 = dispatch thunk of CustomStringConvertible.description.getter();
      v36 = v35;
      (*(v11 + 8))(v14, v10);
      v37 = sub_1000136BC(v34, v36, &v44);

      *(v32 + 4) = v37;
      _os_log_impl(&_mh_execute_header, v30, v31, "Ack pairing failed. Response %{public}s", v32, 0xCu);
      sub_100007BAC(v33);
    }

    else
    {

      (*(v11 + 8))(v14, v10);
    }

    type metadata accessor for SPPairingSessionError(0);
    v43 = 1;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_100BFADB4(&unk_1016B2710, 255, type metadata accessor for SPPairingSessionError, &unk_10138A7E4);
    _BridgedStoredNSError.init(_:userInfo:)();
    v43 = v44;
    sub_1000BC4D4(&qword_1016985F8, &unk_10138FF70);
    return CheckedContinuation.resume(throwing:)();
  }
}

uint64_t sub_100BF766C(uint64_t a1, uint64_t a2)
{
  v3[97] = v2;
  v3[96] = a2;
  v3[95] = a1;
  return _swift_task_switch(sub_100BF7694, v2, 0);
}

uint64_t sub_100BF7694()
{
  sub_10001F280(v0[96], (v0 + 90));
  sub_1000BC4D4(&qword_101698650, &qword_10138FFB0);
  if (swift_dynamicCast())
  {
    v1 = v0[95];
    memcpy(v0 + 2, v0 + 46, 0x160uLL);
    v1[3] = type metadata accessor for AirPodsLEPairingLockCheckResponse(0);
    v1[4] = sub_100BFADB4(&qword_1016985E8, 255, type metadata accessor for AirPodsLEPairingLockCheckResponse, &unk_10138FF30);
    v2 = sub_1000280DC(v1);
    v3 = swift_task_alloc();
    v0[98] = v3;
    *v3 = v0;
    v3[1] = sub_10015E378;

    return sub_100BF78B8(v2, (v0 + 2));
  }

  else
  {
    v5 = type metadata accessor for PairingValidatorError();
    sub_100BFADB4(&qword_101698628, 255, &type metadata accessor for PairingValidatorError, &protocol conformance descriptor for PairingValidatorError);
    swift_allocError();
    (*(*(v5 - 8) + 104))(v6, enum case for PairingValidatorError.invalidRequestType(_:), v5);
    swift_willThrow();
    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_100BF78B8(uint64_t a1, uint64_t a2)
{
  v3[274] = v2;
  v3[273] = a2;
  v3[272] = a1;
  sub_1000BC4D4(&qword_1016985F0, &unk_10139D780);
  v3[275] = swift_task_alloc();
  v3[276] = type metadata accessor for AirPodsLEPairingLockCheckEndPoint(0);
  v3[277] = swift_task_alloc();
  v3[278] = swift_task_alloc();

  return _swift_task_switch(sub_100BF7998, v2, 0);
}

id sub_100BF7998(uint64_t a1)
{
  v2 = static os_log_type_t.default.getter();
  if (qword_1016950C8 != -1)
  {
    swift_once();
  }

  v3 = v1[278];
  v4 = v1[277];
  v5 = v1[276];
  v6 = v1[275];
  v7 = qword_10177C410;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_101385D80;
  *(v8 + 56) = &type metadata for String;
  *(v8 + 64) = sub_100008C00();
  *(v8 + 32) = 0xD000000000000013;
  *(v8 + 40) = 0x800000010136F240;
  os_log(_:dso:log:_:_:)(v2, &_mh_execute_header, v7, "%@", 2, 2, v8);

  v9 = enum case for FMNAccountType.w2Accessory(_:);
  v10 = type metadata accessor for FMNAccountType();
  (*(*(v10 - 8) + 104))(v3, v9, v10);
  *(v3 + *(v5 + 20)) = 0;
  type metadata accessor for SearchPartyURLSessionFactory(0);
  swift_allocObject();
  v11 = type metadata accessor for FMNMockingPreferences();
  (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
  v12 = FMNURLSessionFactory.init(mockSessionCreationBlock:preferences:)();
  type metadata accessor for ServerInteractionController(0);
  v13 = swift_allocObject();
  sub_100BFADFC(v3, v4, type metadata accessor for AirPodsLEPairingLockCheckEndPoint);
  v1[279] = sub_10061F8C4(v4, v12, v13);
  result = [objc_opt_self() defaultStore];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v15 = result;
  v16 = sub_100513CD8();

  if (!v16 || (v17 = sub_100513FCC(), v19 = v18, v16, !v19))
  {
    if (qword_101694DB8 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    sub_1000076D4(v27, qword_10177BE78);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v28, v29, "Unable to retrieve masked identifier", v30, 2u);
    }

    v26 = v1[278];

    type metadata accessor for SPPairingSessionError(0);
    v1[267] = 27;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_100BFADB4(&unk_1016B2710, 255, type metadata accessor for SPPairingSessionError, &unk_10138A7E4);
    goto LABEL_17;
  }

  v20 = sub_100BF9F54(v1[273]);
  v1[280] = v20;
  v1[281] = v21;
  if (v21 >> 60 == 15)
  {

    if (qword_101694DB8 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_1000076D4(v22, qword_10177BE78);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "Unable to generate BAA payload", v25, 2u);
    }

    v26 = v1[278];

    type metadata accessor for SPPairingSessionError(0);
    v1[269] = 26;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_100BFADB4(&unk_1016B2710, 255, type metadata accessor for SPPairingSessionError, &unk_10138A7E4);
LABEL_17:
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();

    sub_100BFAE64(v26, type metadata accessor for AirPodsLEPairingLockCheckEndPoint);

    v31 = v1[1];

    return v31();
  }

  v32 = v20;
  v33 = v21;
  v34 = v1[273];
  type metadata accessor for DeviceIdentityUtility(0);
  v35 = swift_allocObject();
  sub_100165278(v34, (v1 + 2));
  sub_10002E98C(v32, v33);
  swift_defaultActor_initialize();
  v36 = OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_certExpiryDate;
  v37 = type metadata accessor for Date();
  (*(*(v37 - 8) + 56))(v35 + v36, 1, 1, v37);
  *(v35 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_refKey) = 0;
  *(v35 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_certs) = _swiftEmptyArrayStorage;
  *(v35 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_signingType) = 9;
  v38 = swift_task_alloc();
  v1[282] = v38;
  *v38 = v1;
  v38[1] = sub_100BF807C;
  v39 = v1[273];

  return sub_100B60CB4(v39, v17, v19, v32, v33, v35);
}

uint64_t sub_100BF807C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v5 = *(*v3 + 2192);
  v4[283] = a1;
  v4[284] = a2;
  v4[285] = a3;

  return _swift_task_switch(sub_100BF819C, v5, 0);
}

uint64_t sub_100BF819C()
{
  v64 = v0;
  v1 = v0[283];
  if (v1)
  {
    if (qword_101694DB8 != -1)
    {
      swift_once();
    }

    v2 = v0[273];
    v3 = type metadata accessor for Logger();
    sub_1000076D4(v3, qword_10177BE78);
    sub_100165278(v2, (v0 + 46));
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    sub_1001652D4(v2);
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v63[0] = v7;
      *v6 = 136315138;
      v8 = Data.description.getter();
      v10 = sub_1000136BC(v8, v9, v63);

      *(v6 + 4) = v10;
      _os_log_impl(&_mh_execute_header, v4, v5, "serialNumber: %s", v6, 0xCu);
      sub_100007BAC(v7);
    }

    v11 = v0[273];
    sub_100165278(v11, (v0 + 90));
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    sub_1001652D4(v11);
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v63[0] = v15;
      *v14 = 136315138;
      v16 = Data.hexString.getter();
      v18 = sub_1000136BC(v16, v17, v63);

      *(v14 + 4) = v18;
      _os_log_impl(&_mh_execute_header, v12, v13, "ECID: %s", v14, 0xCu);
      sub_100007BAC(v15);
    }

    v19 = v0[273];
    sub_100165278(v19, (v0 + 134));
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();
    sub_1001652D4(v19);
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v63[0] = v23;
      *v22 = 136315138;
      v24 = Data.hexString.getter();
      v26 = sub_1000136BC(v24, v25, v63);

      *(v22 + 4) = v26;
      _os_log_impl(&_mh_execute_header, v20, v21, "ChipId: %s", v22, 0xCu);
      sub_100007BAC(v23);
    }

    v27 = v0[273];
    sub_100165278(v27, (v0 + 178));
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();
    sub_1001652D4(v27);
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v63[0] = v31;
      *v30 = 136315138;
      v32 = Data.hexString.getter();
      v34 = sub_1000136BC(v32, v33, v63);

      *(v30 + 4) = v34;
      _os_log_impl(&_mh_execute_header, v28, v29, "H1 (hashed C2): %s", v30, 0xCu);
      sub_100007BAC(v31);
    }

    v35 = v0[273];
    sub_100165278(v35, (v0 + 222));
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.default.getter();
    sub_1001652D4(v35);
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v63[0] = v39;
      *v38 = 136315138;
      v40 = sub_100927660();
      v42 = sub_1000136BC(v40, v41, v63);

      *(v38 + 4) = v42;
      _os_log_impl(&_mh_execute_header, v36, v37, "PairingLock Check data: %s", v38, 0xCu);
      sub_100007BAC(v39);
    }

    v43 = v0[285];
    v44 = v0[284];
    v45 = v0[283];
    v46 = v0[279];
    v47 = v0[274];

    sub_100017D5C(v44, v43);
    v48 = sub_1004FBDB4(v1, v44, v43, 0, v46);
    v0[286] = v48;
    sub_100165328(v45, v44, v43);
    v50 = sub_100BFADB4(&qword_1016B7F20, v49, type metadata accessor for ProximityPairingValidator, &unk_1013DDE38);
    v51 = swift_task_alloc();
    v0[287] = v51;
    v52 = type metadata accessor for AirPodsLEPairingLockCheckResponse(0);
    *v51 = v0;
    v51[1] = sub_100BF898C;
    v53 = v0[272];

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v53, v47, v50, 0xD000000000000013, 0x800000010136F240, sub_100BFA5A4, v48, v52);
  }

  else
  {
    if (qword_101694DB8 != -1)
    {
      swift_once();
    }

    v54 = type metadata accessor for Logger();
    sub_1000076D4(v54, qword_10177BE78);
    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      *v57 = 0;
      _os_log_impl(&_mh_execute_header, v55, v56, "Could not create pairing lock request", v57, 2u);
    }

    v58 = v0[281];
    v59 = v0[280];
    v60 = v0[278];

    type metadata accessor for SPPairingSessionError(0);
    v0[271] = 1;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_100BFADB4(&unk_1016B2710, 255, type metadata accessor for SPPairingSessionError, &unk_10138A7E4);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();

    sub_100006654(v59, v58);
    sub_100BFAE64(v60, type metadata accessor for AirPodsLEPairingLockCheckEndPoint);

    v61 = v0[1];

    return v61();
  }
}

uint64_t sub_100BF898C()
{
  v2 = *v1;
  *(*v1 + 2304) = v0;

  v3 = *(v2 + 2192);
  if (v0)
  {
    v4 = sub_100BF8BB8;
  }

  else
  {
    v4 = sub_100BF8AB8;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100BF8AB8()
{
  v1 = v0[285];
  v2 = v0[284];
  v3 = v0[283];
  v4 = v0[281];
  v5 = v0[280];
  v6 = v0[278];

  sub_100165328(v3, v2, v1);
  sub_100006654(v5, v4);
  sub_100BFAE64(v6, type metadata accessor for AirPodsLEPairingLockCheckEndPoint);

  v7 = v0[1];

  return v7();
}

uint64_t sub_100BF8BB8()
{
  v1 = v0[285];
  v2 = v0[284];
  v3 = v0[283];
  v4 = v0[281];
  v5 = v0[280];
  v6 = v0[278];

  sub_100165328(v3, v2, v1);
  sub_100006654(v5, v4);
  sub_100BFAE64(v6, type metadata accessor for AirPodsLEPairingLockCheckEndPoint);

  v7 = v0[1];

  return v7();
}

uint64_t sub_100BF8CB0(uint64_t a1)
{
  v13 = a1;
  v2 = sub_1000BC4D4(&qword_101698630, &unk_10138FF90);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v10 - v4;
  v12 = *(v3 + 16);
  v12(&v10 - v4, a1, v2);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  v11 = *(v3 + 32);
  v11(v7 + v6, v5, v2);
  Future.addFailure(block:)();

  v12(v5, v13, v2);
  v8 = swift_allocObject();
  v11(v8 + v6, v5, v2);
  Future.addSuccess(block:)();
}

uint64_t sub_100BF8E90(uint64_t a1)
{
  if (qword_101694DB8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177BE78);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138543362;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Error in verify pairing request. Error - %{public}@", v4, 0xCu);
    sub_100288C6C(v5);
  }

  type metadata accessor for SPPairingSessionError(0);
  sub_100032898(_swiftEmptyArrayStorage);
  sub_100BFADB4(&unk_1016B2710, 255, type metadata accessor for SPPairingSessionError, &unk_10138A7E4);
  _BridgedStoredNSError.init(_:userInfo:)();
  sub_1000BC4D4(&qword_101698630, &unk_10138FF90);
  return CheckedContinuation.resume(throwing:)();
}

uint64_t sub_100BF9078(uint64_t a1)
{
  v75 = type metadata accessor for AirPodsLEPairingLockCheckResponse(0);
  v2 = __chkstk_darwin(v75);
  v74 = &v69 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v5 = &v69 - v4;
  v6 = type metadata accessor for String.Encoding();
  __chkstk_darwin(v6 - 8);
  v7 = type metadata accessor for FMNServerInteractionController.FMNResponseFields();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v69 - v13;
  __chkstk_darwin(v12);
  v16 = &v69 - v15;
  v17 = FMNServerInteractionController.FMNResponseFields.statusCode.getter();
  if (v17 == 409)
  {
    if (qword_101694DB8 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    sub_1000076D4(v27, qword_10177BE78);
    (*(v8 + 16))(v14, a1, v7);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v76 = v31;
      *v30 = 136446210;
      sub_100BFADB4(&qword_1016A62C0, 255, &type metadata accessor for FMNServerInteractionController.FMNResponseFields, &protocol conformance descriptor for FMNServerInteractionController.FMNResponseFields);
      v32 = dispatch thunk of CustomStringConvertible.description.getter();
      v34 = v33;
      (*(v8 + 8))(v14, v7);
      v35 = sub_1000136BC(v32, v34, &v76);

      *(v30 + 4) = v35;
      _os_log_impl(&_mh_execute_header, v28, v29, "Pairing lock failed: %{public}s", v30, 0xCu);
      sub_100007BAC(v31);
    }

    else
    {

      (*(v8 + 8))(v14, v7);
    }

    v57 = type metadata accessor for PairingValidatorError();
    sub_100BFADB4(&qword_101698628, 255, &type metadata accessor for PairingValidatorError, &protocol conformance descriptor for PairingValidatorError);
    v58 = swift_allocError();
    (*(*(v57 - 8) + 104))(v59, enum case for PairingValidatorError.pairedToAnotherAccount(_:), v57);
    v76 = v58;
    goto LABEL_23;
  }

  if (v17 != 200)
  {
    if (qword_101694DB8 != -1)
    {
      swift_once();
    }

    v36 = type metadata accessor for Logger();
    sub_1000076D4(v36, qword_10177BE78);
    v37 = *(v8 + 16);
    v73 = a1;
    v37(v11, a1, v7);
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v76 = v41;
      *v40 = 136446210;
      sub_100BFADB4(&qword_1016A62C0, 255, &type metadata accessor for FMNServerInteractionController.FMNResponseFields, &protocol conformance descriptor for FMNServerInteractionController.FMNResponseFields);
      v42 = dispatch thunk of CustomStringConvertible.description.getter();
      v44 = v43;
      (*(v8 + 8))(v11, v7);
      v45 = sub_1000136BC(v42, v44, &v76);

      *(v40 + 4) = v45;
      _os_log_impl(&_mh_execute_header, v38, v39, "Pairing lock failed: %{public}s", v40, 0xCu);
      sub_100007BAC(v41);
    }

    else
    {

      (*(v8 + 8))(v11, v7);
    }

    v60 = type metadata accessor for PairingValidatorError();
    sub_100BFADB4(&qword_101698628, 255, &type metadata accessor for PairingValidatorError, &protocol conformance descriptor for PairingValidatorError);
    v61 = swift_allocError();
    v63 = v62;
    *v62 = FMNServerInteractionController.FMNResponseFields.statusCode.getter();
    (*(*(v60 - 8) + 104))(v63, enum case for PairingValidatorError.pairingLockFailure(_:), v60);
    v76 = v61;
LABEL_23:
    sub_1000BC4D4(&qword_101698630, &unk_10138FF90);
    return CheckedContinuation.resume(throwing:)();
  }

  v72 = v5;
  if (qword_101694DB8 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  v19 = sub_1000076D4(v18, qword_10177BE78);
  (*(v8 + 16))(v16, a1, v7);
  v71 = v19;
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    v76 = v70;
    *v22 = 136446210;
    sub_100BFADB4(&qword_1016A62C0, 255, &type metadata accessor for FMNServerInteractionController.FMNResponseFields, &protocol conformance descriptor for FMNServerInteractionController.FMNResponseFields);
    v23 = dispatch thunk of CustomStringConvertible.description.getter();
    v73 = a1;
    v25 = v24;
    (*(v8 + 8))(v16, v7);
    v26 = sub_1000136BC(v23, v25, &v76);

    *(v22 + 4) = v26;
    _os_log_impl(&_mh_execute_header, v20, v21, "Pairing success: %{public}s", v22, 0xCu);
    sub_100007BAC(v70);
  }

  else
  {

    (*(v8 + 8))(v16, v7);
  }

  v46 = FMNServerInteractionController.FMNResponseFields.data.getter();
  v48 = v47;
  static String.Encoding.utf8.getter();
  v49 = String.init(data:encoding:)();
  v51 = v50;
  sub_100016590(v46, v48);
  if (v51)
  {

    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v76 = v55;
      *v54 = 136315138;
      v56 = sub_1000136BC(v49, v51, &v76);

      *(v54 + 4) = v56;
      _os_log_impl(&_mh_execute_header, v52, v53, "response data: %s", v54, 0xCu);
      sub_100007BAC(v55);
    }

    else
    {
    }
  }

  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  v65 = FMNServerInteractionController.FMNResponseFields.data.getter();
  v67 = v66;
  sub_100BFADB4(&qword_101698648, 255, type metadata accessor for AirPodsLEPairingLockCheckResponse, &unk_1013F4AB4);
  v68 = v72;
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  sub_100016590(v65, v67);
  sub_100BFADFC(v68, v74, type metadata accessor for AirPodsLEPairingLockCheckResponse);
  sub_1000BC4D4(&qword_101698630, &unk_10138FF90);
  CheckedContinuation.resume(returning:)();

  return sub_100BFAE64(v68, type metadata accessor for AirPodsLEPairingLockCheckResponse);
}

uint64_t sub_100BF9CC0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100014744;

  return sub_100BF766C(a1, a2);
}

uint64_t sub_100BF9D68(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100014744;

  return sub_100BF5880(a1, a2);
}

uint64_t sub_100BF9E10(uint64_t *a1)
{
  v2 = *a1;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100014650;

  return sub_100BF4448(v2);
}

uint64_t sub_100BF9F54(uint64_t a1)
{
  v2 = type metadata accessor for String.Encoding();
  __chkstk_darwin(v2 - 8);
  type metadata accessor for PropertyListEncoder();
  swift_allocObject();
  PropertyListEncoder.init()();
  dispatch thunk of PropertyListEncoder.outputFormat.setter();
  v3 = Data.trimmed.getter();
  v5 = v4;
  *&v55 = v3;
  *(&v55 + 1) = v4;
  static String.Encoding.utf8.getter();
  sub_100165078();
  v6 = String.init<A>(bytes:encoding:)();
  v41 = v5;
  v40 = v3;
  if (!v7)
  {
    v6 = Data.hexString.getter();
  }

  v8 = v6;
  v9 = v7;
  v42 = *(a1 + 120);
  sub_1000E0A3C();
  v10 = DataProtocol.intValue.getter();
  v48 = *(a1 + 104);
  v11 = DataProtocol.intValue.getter();
  v13 = *(a1 + 320);
  v12 = *(a1 + 328);
  *&v49 = 0;
  *(&v49 + 1) = v10;
  v14 = *(a1 + 336);
  v15 = *(a1 + 344);
  *&v50 = v11;
  *(&v50 + 1) = &off_101609080;
  *&v51 = v8;
  *(&v51 + 1) = v9;
  v52 = xmmword_10138FDA0;
  *&v53 = v13;
  *(&v53 + 1) = v12;
  *&v54 = v14;
  *(&v54 + 1) = v15;
  v55 = v49;
  v56 = v50;
  v59 = v53;
  v60 = v54;
  v57 = v51;
  v58 = xmmword_10138FDA0;
  sub_100017D5C(v13, v12);
  sub_100017D5C(v14, v15);
  if (qword_1016950D0 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_1000076D4(v16, qword_10177C418);
  sub_1001650CC(&v49, &v42);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.debug.getter();
  sub_100165128(&v49);
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *&v48 = v20;
    *v19 = 136315138;
    sub_1001650CC(&v49, &v42);
    sub_10107D964();
    v22 = v21;
    v24 = v23;
    sub_100165128(&v49);
    v25 = sub_1000136BC(v22, v24, &v48);

    *(v19 + 4) = v25;
    _os_log_impl(&_mh_execute_header, v17, v18, "BAARKProperties %s", v19, 0xCu);
    sub_100007BAC(v20);
  }

  v44 = v57;
  v45 = v58;
  v46 = v59;
  v47 = v60;
  v42 = v55;
  v43 = v56;
  sub_10016517C();
  v26 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v28 = v27;
  v29 = *(a1 + 216);
  v30 = *(a1 + 208);
  sub_100017D5C(v30, v29);
  sub_100017D5C(v30, v29);
  sub_100017D5C(v26, v28);
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.debug.getter();
  sub_100016590(v30, v29);
  sub_100016590(v26, v28);
  if (os_log_type_enabled(v31, v32))
  {
    v39 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    *&v48 = v38;
    *v39 = 136315138;
    *&v42 = v30;
    *(&v42 + 1) = v29;
    *&v43 = v26;
    *(&v43 + 1) = v28;
    sub_100017D5C(v30, v29);
    sub_100017D5C(v26, v28);
    v33 = String.init<A>(describing:)();
    v35 = sub_1000136BC(v33, v34, &v48);

    *(v39 + 4) = v35;
    _os_log_impl(&_mh_execute_header, v31, v32, "BAARequestPayload %s", v39, 0xCu);
    sub_100007BAC(v38);
  }

  *&v42 = v30;
  *(&v42 + 1) = v29;
  *&v43 = v26;
  *(&v43 + 1) = v28;
  sub_1001651D0();
  v36 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  sub_100016590(v40, v41);

  sub_100165128(&v49);
  sub_100016590(v30, v29);
  sub_100016590(v26, v28);
  return v36;
}

uint64_t sub_100BFA5FC(uint64_t a1)
{
  v2 = type metadata accessor for String.Encoding();
  __chkstk_darwin(v2 - 8);
  type metadata accessor for PropertyListEncoder();
  swift_allocObject();
  PropertyListEncoder.init()();
  dispatch thunk of PropertyListEncoder.outputFormat.setter();
  v3 = Data.trimmed.getter();
  v5 = v4;
  *&v55 = v3;
  *(&v55 + 1) = v4;
  static String.Encoding.utf8.getter();
  sub_100165078();
  v6 = String.init<A>(bytes:encoding:)();
  v41 = v5;
  v40 = v3;
  if (!v7)
  {
    v6 = Data.hexString.getter();
  }

  v8 = v6;
  v9 = v7;
  v42 = *(a1 + 96);
  sub_1000E0A3C();
  v10 = DataProtocol.intValue.getter();
  v48 = *(a1 + 80);
  v11 = DataProtocol.intValue.getter();
  v13 = *(a1 + 208);
  v12 = *(a1 + 216);
  *&v49 = 0;
  *(&v49 + 1) = v10;
  v14 = *(a1 + 224);
  v15 = *(a1 + 232);
  *&v50 = v11;
  *(&v50 + 1) = &off_1016090B0;
  *&v51 = v8;
  *(&v51 + 1) = v9;
  v52 = xmmword_10138FDA0;
  *&v53 = v13;
  *(&v53 + 1) = v12;
  *&v54 = v14;
  *(&v54 + 1) = v15;
  v55 = v49;
  v56 = v50;
  v59 = v53;
  v60 = v54;
  v57 = v51;
  v58 = xmmword_10138FDA0;
  sub_100017D5C(v13, v12);
  sub_100017D5C(v14, v15);
  if (qword_1016950D0 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_1000076D4(v16, qword_10177C418);
  sub_1001650CC(&v49, &v42);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.debug.getter();
  sub_100165128(&v49);
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *&v48 = v20;
    *v19 = 136315138;
    sub_1001650CC(&v49, &v42);
    sub_10107D964();
    v22 = v21;
    v24 = v23;
    sub_100165128(&v49);
    v25 = sub_1000136BC(v22, v24, &v48);

    *(v19 + 4) = v25;
    _os_log_impl(&_mh_execute_header, v17, v18, "BAARKProperties %s", v19, 0xCu);
    sub_100007BAC(v20);
  }

  v44 = v57;
  v45 = v58;
  v46 = v59;
  v47 = v60;
  v42 = v55;
  v43 = v56;
  sub_10016517C();
  v26 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v28 = v27;
  v29 = *(a1 + 152);
  v30 = *(a1 + 144);
  sub_100017D5C(v30, v29);
  sub_100017D5C(v30, v29);
  sub_100017D5C(v26, v28);
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.debug.getter();
  sub_100016590(v30, v29);
  sub_100016590(v26, v28);
  if (os_log_type_enabled(v31, v32))
  {
    v39 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    *&v48 = v38;
    *v39 = 136315138;
    *&v42 = v30;
    *(&v42 + 1) = v29;
    *&v43 = v26;
    *(&v43 + 1) = v28;
    sub_100017D5C(v30, v29);
    sub_100017D5C(v26, v28);
    v33 = String.init<A>(describing:)();
    v35 = sub_1000136BC(v33, v34, &v48);

    *(v39 + 4) = v35;
    _os_log_impl(&_mh_execute_header, v31, v32, "BAARequestPayload %s", v39, 0xCu);
    sub_100007BAC(v38);
  }

  *&v42 = v30;
  *(&v42 + 1) = v29;
  *&v43 = v26;
  *(&v43 + 1) = v28;
  sub_1001651D0();
  v36 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  sub_100016590(v40, v41);

  sub_100165128(&v49);
  sub_100016590(v30, v29);
  sub_100016590(v26, v28);
  return v36;
}

uint64_t sub_100BFAC7C(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v6 = *(sub_1000BC4D4(a2, a3) - 8);
  v7 = v4 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a4(a1, v7);
}

uint64_t sub_100BFAD2C(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v6 = *(sub_1000BC4D4(a2, a3) - 8);
  v7 = v4 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a4(a1, v7);
}

uint64_t sub_100BFADB4(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_100BFADFC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100BFAE64(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void *sub_100BFAF24()
{
  v1 = type metadata accessor for OwnedBeaconGroup(0);
  v2 = sub_1003CDA20(*(v0 + *(v1 + 40)));
  v3 = v2[2];
  if (v3)
  {
    sub_1011244D8(0, v3, 0);
    v4 = v2 + 5;
    do
    {
      v5 = *(v4 - 1);
      v6 = *v4;
      sub_100017D5C(v5, *v4);
      v8 = _swiftEmptyArrayStorage[2];
      v7 = _swiftEmptyArrayStorage[3];
      if (v8 >= v7 >> 1)
      {
        sub_1011244D8((v7 > 1), v8 + 1, 1);
      }

      v4 += 2;
      _swiftEmptyArrayStorage[2] = v8 + 1;
      v9 = &_swiftEmptyArrayStorage[2 * v8];
      v9[4] = v5;
      v9[5] = v6;
      --v3;
    }

    while (v3);
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_100BFB030()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177BD00);
  sub_1000076D4(v0, qword_10177BD00);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100BFB0B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[17] = a3;
  v4[18] = v3;
  v4[15] = a1;
  v4[16] = a2;
  type metadata accessor for StableIdentifier(0);
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  sub_1000BC4D4(&qword_1016B7F68, &qword_1013DDFD0);
  v4[21] = swift_task_alloc();
  v5 = type metadata accessor for PairingConfig(0);
  v4[22] = v5;
  v4[23] = *(v5 - 8);
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  v4[27] = swift_task_alloc();
  v6 = type metadata accessor for OwnedBeaconRecord(0);
  v4[28] = v6;
  v7 = *(v6 - 8);
  v4[29] = v7;
  v4[30] = *(v7 + 64);
  v4[31] = swift_task_alloc();
  v4[32] = swift_task_alloc();
  v4[33] = swift_task_alloc();
  v4[34] = swift_task_alloc();
  v4[35] = swift_task_alloc();
  v4[36] = swift_task_alloc();
  v4[37] = swift_task_alloc();

  return _swift_task_switch(sub_100BFB2E0, v3, 0);
}

uint64_t sub_100BFB2E0()
{
  v1 = swift_task_alloc();
  *(v0 + 304) = v1;
  *v1 = v0;
  v1[1] = sub_100BFB374;

  return sub_100A9A4DC();
}

uint64_t sub_100BFB374(char a1)
{
  v2 = *(*v1 + 144);
  *(*v1 + 412) = a1;

  return _swift_task_switch(sub_100BFB48C, v2, 0);
}

uint64_t sub_100BFB48C()
{
  v46 = v0;
  if (*(v0 + 412) != 1)
  {
    type metadata accessor for SPPairingSessionError(0);
    *(v0 + 104) = 20;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_100C01198(&unk_1016B2710, type metadata accessor for SPPairingSessionError, &unk_10138A7E4);
    _BridgedStoredNSError.init(_:userInfo:)();
LABEL_10:
    swift_willThrow();
    goto LABEL_11;
  }

  v1 = *(v0 + 232);
  sub_10001F280(*(v0 + 128), v0 + 16);
  sub_1000BC4D4(&qword_1016B7F70, &qword_1013E02D0);
  v2 = swift_dynamicCast();
  v3 = *(v1 + 56);
  if (!v2)
  {
    v32 = *(v0 + 216);
    v3(v32, 1, 1, *(v0 + 224));
    sub_10000B3A8(v32, &unk_1016A9A20, &qword_10138B280);
    v33 = type metadata accessor for PairingBeaconStoreError();
    sub_100C01198(&qword_1016B7F40, &type metadata accessor for PairingBeaconStoreError, &protocol conformance descriptor for PairingBeaconStoreError);
    swift_allocError();
    (*(*(v33 - 8) + 104))(v34, enum case for PairingBeaconStoreError.invalidBeaconRecordType(_:), v33);
    goto LABEL_10;
  }

  v4 = *(v0 + 296);
  v5 = *(v0 + 216);
  v6 = *(v0 + 184);
  v7 = *(v0 + 136);
  v3(v5, 0, 1, *(v0 + 224));
  sub_100C00F28(v5, v4, type metadata accessor for OwnedBeaconRecord);
  sub_10001F280(v7, v0 + 56);
  sub_1000BC4D4(&qword_1016B7F78, &qword_1013DDFD8);
  v8 = swift_dynamicCast();
  v9 = *(v6 + 56);
  if (v8)
  {
    v10 = *(v0 + 208);
    v11 = *(v0 + 168);
    v9(v11, 0, 1, *(v0 + 176));
    sub_100C00F28(v11, v10, type metadata accessor for PairingConfig);
    if (qword_101694D58 != -1)
    {
      swift_once();
    }

    v12 = *(v0 + 288);
    v13 = *(v0 + 296);
    v15 = *(v0 + 200);
    v14 = *(v0 + 208);
    v16 = type metadata accessor for Logger();
    *(v0 + 312) = sub_1000076D4(v16, qword_10177BD00);
    sub_100C00F90(v13, v12, type metadata accessor for OwnedBeaconRecord);
    sub_100C00F90(v14, v15, type metadata accessor for PairingConfig);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    v19 = os_log_type_enabled(v17, v18);
    v20 = *(v0 + 288);
    if (v19)
    {
      v22 = *(v0 + 192);
      v21 = *(v0 + 200);
      v23 = swift_slowAlloc();
      v45[0] = swift_slowAlloc();
      *v23 = 141558531;
      *(v23 + 4) = 1752392040;
      *(v23 + 12) = 2081;
      type metadata accessor for UUID();
      sub_100C01198(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v24 = dispatch thunk of CustomStringConvertible.description.getter();
      v26 = v25;
      sub_100C01018(v20, type metadata accessor for OwnedBeaconRecord);
      v27 = sub_1000136BC(v24, v26, v45);

      *(v23 + 14) = v27;
      *(v23 + 22) = 2080;
      sub_100C00F90(v21, v22, type metadata accessor for PairingConfig);
      v28 = String.init<A>(describing:)();
      v30 = v29;
      sub_100C01018(v21, type metadata accessor for PairingConfig);
      v31 = sub_1000136BC(v28, v30, v45);

      *(v23 + 24) = v31;
      _os_log_impl(&_mh_execute_header, v17, v18, "Saving beacon record: %{private,mask.hash}s with config %s", v23, 0x20u);
      swift_arrayDestroy();
    }

    else
    {
      v41 = *(v0 + 200);

      sub_100C01018(v41, type metadata accessor for PairingConfig);
      sub_100C01018(v20, type metadata accessor for OwnedBeaconRecord);
    }

    sub_100C00F90(*(v0 + 296) + *(*(v0 + 224) + 24), *(v0 + 160), type metadata accessor for StableIdentifier);

    v42 = swift_task_alloc();
    *(v0 + 320) = v42;
    v43 = sub_1000BC4D4(&qword_101698C80, &unk_1013A23F0);
    *v42 = v0;
    v42[1] = sub_100BFBCC0;
    v44 = *(v0 + 144);

    return unsafeBlocking<A>(context:_:)(v0 + 112, 0xD000000000000010, 0x800000010134A8C0, sub_10012B078, v44, v43);
  }

  v37 = *(v0 + 296);
  v38 = *(v0 + 168);
  v9(v38, 1, 1, *(v0 + 176));
  sub_10000B3A8(v38, &qword_1016B7F68, &qword_1013DDFD0);
  v39 = type metadata accessor for PairingBeaconStoreError();
  sub_100C01198(&qword_1016B7F40, &type metadata accessor for PairingBeaconStoreError, &protocol conformance descriptor for PairingBeaconStoreError);
  swift_allocError();
  (*(*(v39 - 8) + 104))(v40, enum case for PairingBeaconStoreError.invalidPairingConfigurationType(_:), v39);
  swift_willThrow();
  sub_100C01018(v37, type metadata accessor for OwnedBeaconRecord);
LABEL_11:

  v35 = *(v0 + 8);

  return v35();
}

uint64_t sub_100BFBCC0()
{
  v1 = *(*v0 + 144);

  return _swift_task_switch(sub_100BFBDD8, v1, 0);
}

uint64_t sub_100BFBDD8()
{
  v48 = v0;
  v1 = *(v0 + 160);
  v2 = *(v0 + 112);
  v3 = swift_task_alloc();
  *(v3 + 16) = v1;
  v4 = sub_10013D1C8(sub_100C00FF8, v3, v2);
  *(v0 + 328) = v4;

  v5 = v4[2];
  *(v0 + 336) = v5;
  if (v5)
  {
    v6 = *(v0 + 232);
    v7 = *(v6 + 80);
    *(v0 + 408) = v7;
    *(v0 + 344) = *(v6 + 72);
    *(v0 + 352) = 0;
    v9 = *(v0 + 272);
    v8 = *(v0 + 280);
    v11 = *(v0 + 152);
    v10 = *(v0 + 160);
    sub_100C00F90(*(v0 + 328) + ((v7 + 32) & ~v7), v8, type metadata accessor for OwnedBeaconRecord);
    sub_100C00F90(v8, v9, type metadata accessor for OwnedBeaconRecord);
    sub_100C00F90(v10, v11, type metadata accessor for StableIdentifier);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = *(v0 + 272);
      v15 = *(v0 + 152);
      v16 = swift_slowAlloc();
      v47[0] = swift_slowAlloc();
      *v16 = 141558531;
      *(v16 + 4) = 1752392040;
      *(v16 + 12) = 2081;
      type metadata accessor for UUID();
      sub_100C01198(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v17 = dispatch thunk of CustomStringConvertible.description.getter();
      v19 = v18;
      sub_100C01018(v14, type metadata accessor for OwnedBeaconRecord);
      v20 = sub_1000136BC(v17, v19, v47);

      *(v16 + 14) = v20;
      *(v16 + 22) = 2080;
      v21 = sub_1010DA578();
      v23 = v22;
      sub_100C01018(v15, type metadata accessor for StableIdentifier);
      v24 = sub_1000136BC(v21, v23, v47);

      *(v16 + 24) = v24;
      _os_log_impl(&_mh_execute_header, v12, v13, "Removing %{private,mask.hash}s matching the same stable identifier: %s", v16, 0x20u);
      swift_arrayDestroy();
    }

    else
    {
      v33 = *(v0 + 272);
      v34 = *(v0 + 152);

      sub_100C01018(v34, type metadata accessor for StableIdentifier);
      sub_100C01018(v33, type metadata accessor for OwnedBeaconRecord);
    }

    v35 = *(v0 + 408);
    v36 = *(v0 + 280);
    v37 = *(v0 + 264);
    v45 = *(v0 + 256);
    v46 = *(v0 + 144);
    v38 = (v35 + 24) & ~v35;
    v39 = (*(v0 + 240) + v38 + 7) & 0xFFFFFFFFFFFFFFF8;
    sub_100C00F90(v36, v37, type metadata accessor for OwnedBeaconRecord);
    v40 = swift_allocObject();
    *(v0 + 360) = v40;
    sub_100C00F28(v37, v40 + ((v35 + 16) & ~v35), type metadata accessor for OwnedBeaconRecord);
    sub_100C00F90(v36, v45, type metadata accessor for OwnedBeaconRecord);
    v41 = swift_allocObject();
    *(v0 + 368) = v41;
    *(v41 + 16) = v46;
    sub_100C00F28(v45, v41 + v38, type metadata accessor for OwnedBeaconRecord);
    v42 = (v41 + v39);
    *v42 = sub_100C01078;
    v42[1] = v40;

    v43 = swift_task_alloc();
    *(v0 + 376) = v43;
    *v43 = v0;
    v43[1] = sub_100BFC3D4;

    return unsafeBlocking<A>(context:_:)(v43, 0xD000000000000010, 0x800000010134A8C0, sub_100C010E8, v41, &type metadata for () + 1);
  }

  else
  {

    v25 = *(v0 + 296);
    v26 = *(v0 + 208);
    v27 = *(v0 + 144);
    v28 = sub_100C01198(&qword_1016B7F28, type metadata accessor for BeaconStoreActor, &unk_1013EB218);
    v29 = swift_task_alloc();
    *(v0 + 384) = v29;
    v29[2] = v27;
    v29[3] = v25;
    v29[4] = v26;
    v30 = swift_task_alloc();
    *(v0 + 392) = v30;
    *v30 = v0;
    v30[1] = sub_100BFCAD4;
    v31 = *(v0 + 248);
    v32 = *(v0 + 224);

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v31, v27, v28, 0xD000000000000029, 0x800000010136F260, sub_100C0118C, v29, v32);
  }
}

uint64_t sub_100BFC3D4()
{
  v1 = *(*v0 + 144);

  return _swift_task_switch(sub_100BFC500, v1, 0);
}

uint64_t sub_100BFC500()
{
  v46 = v0;
  v1 = *(v0 + 352);
  v2 = *(v0 + 336);
  v3 = *(v0 + 280);

  sub_100C01018(v3, type metadata accessor for OwnedBeaconRecord);
  if (v1 + 1 == v2)
  {

    v4 = *(v0 + 296);
    v5 = *(v0 + 208);
    v6 = *(v0 + 144);
    v7 = sub_100C01198(&qword_1016B7F28, type metadata accessor for BeaconStoreActor, &unk_1013EB218);
    v8 = swift_task_alloc();
    *(v0 + 384) = v8;
    v8[2] = v6;
    v8[3] = v4;
    v8[4] = v5;
    v9 = swift_task_alloc();
    *(v0 + 392) = v9;
    *v9 = v0;
    v9[1] = sub_100BFCAD4;
    v10 = *(v0 + 248);
    v11 = *(v0 + 224);

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v10, v6, v7, 0xD000000000000029, 0x800000010136F260, sub_100C0118C, v8, v11);
  }

  else
  {
    v12 = *(v0 + 344);
    v13 = *(v0 + 352) + 1;
    *(v0 + 352) = v13;
    v15 = *(v0 + 272);
    v14 = *(v0 + 280);
    v17 = *(v0 + 152);
    v16 = *(v0 + 160);
    sub_100C00F90(*(v0 + 328) + ((*(v0 + 408) + 32) & ~*(v0 + 408)) + v12 * v13, v14, type metadata accessor for OwnedBeaconRecord);
    sub_100C00F90(v14, v15, type metadata accessor for OwnedBeaconRecord);
    sub_100C00F90(v16, v17, type metadata accessor for StableIdentifier);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    v20 = os_log_type_enabled(v18, v19);
    v21 = *(v0 + 272);
    if (v20)
    {
      v22 = *(v0 + 152);
      v23 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      *v23 = 141558531;
      *(v23 + 4) = 1752392040;
      *(v23 + 12) = 2081;
      type metadata accessor for UUID();
      sub_100C01198(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v24 = dispatch thunk of CustomStringConvertible.description.getter();
      v26 = v25;
      sub_100C01018(v21, type metadata accessor for OwnedBeaconRecord);
      v27 = sub_1000136BC(v24, v26, &v45);

      *(v23 + 14) = v27;
      *(v23 + 22) = 2080;
      v28 = sub_1010DA578();
      v30 = v29;
      sub_100C01018(v22, type metadata accessor for StableIdentifier);
      v31 = sub_1000136BC(v28, v30, &v45);

      *(v23 + 24) = v31;
      _os_log_impl(&_mh_execute_header, v18, v19, "Removing %{private,mask.hash}s matching the same stable identifier: %s", v23, 0x20u);
      swift_arrayDestroy();
    }

    else
    {
      v32 = *(v0 + 152);

      sub_100C01018(v32, type metadata accessor for StableIdentifier);
      sub_100C01018(v21, type metadata accessor for OwnedBeaconRecord);
    }

    v33 = *(v0 + 408);
    v34 = *(v0 + 280);
    v35 = *(v0 + 264);
    v43 = *(v0 + 256);
    v44 = *(v0 + 144);
    v36 = (v33 + 24) & ~v33;
    v37 = (*(v0 + 240) + v36 + 7) & 0xFFFFFFFFFFFFFFF8;
    sub_100C00F90(v34, v35, type metadata accessor for OwnedBeaconRecord);
    v38 = swift_allocObject();
    *(v0 + 360) = v38;
    sub_100C00F28(v35, v38 + ((v33 + 16) & ~v33), type metadata accessor for OwnedBeaconRecord);
    sub_100C00F90(v34, v43, type metadata accessor for OwnedBeaconRecord);
    v39 = swift_allocObject();
    *(v0 + 368) = v39;
    *(v39 + 16) = v44;
    sub_100C00F28(v43, v39 + v36, type metadata accessor for OwnedBeaconRecord);
    v40 = (v39 + v37);
    *v40 = sub_100C01078;
    v40[1] = v38;

    v41 = swift_task_alloc();
    *(v0 + 376) = v41;
    *v41 = v0;
    v41[1] = sub_100BFC3D4;

    return unsafeBlocking<A>(context:_:)(v41, 0xD000000000000010, 0x800000010134A8C0, sub_100C010E8, v39, &type metadata for () + 1);
  }
}

uint64_t sub_100BFCAD4()
{
  v2 = *v1;
  *(*v1 + 400) = v0;

  v3 = *(v2 + 144);

  if (v0)
  {
    v4 = sub_100BFCDF4;
  }

  else
  {
    v4 = sub_100BFCC1C;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100BFCC1C()
{
  v1 = v0[37];
  v2 = v0[31];
  v3 = v0[26];
  v4 = v0[20];
  v5 = v0[15];
  v5[3] = v0[28];
  v5[4] = sub_100C01198(&qword_1016B7F60, type metadata accessor for OwnedBeaconRecord, &unk_1013DDF44);
  v6 = sub_1000280DC(v5);
  sub_100C00F28(v2, v6, type metadata accessor for OwnedBeaconRecord);
  sub_100C01018(v4, type metadata accessor for StableIdentifier);
  sub_100C01018(v3, type metadata accessor for PairingConfig);
  sub_100C01018(v1, type metadata accessor for OwnedBeaconRecord);

  v7 = v0[1];

  return v7();
}

uint64_t sub_100BFCDF4()
{
  v1 = v0[37];
  v2 = v0[26];
  sub_100C01018(v0[20], type metadata accessor for StableIdentifier);
  sub_100C01018(v2, type metadata accessor for PairingConfig);
  sub_100C01018(v1, type metadata accessor for OwnedBeaconRecord);

  v3 = v0[1];

  return v3();
}

void sub_100BFCF68(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OwnedBeaconRecord(0);
  v5 = __chkstk_darwin(v4);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v31 - v8;
  if (a1)
  {
    swift_errorRetain();
    if (qword_101694D58 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_1000076D4(v10, qword_10177BD00);
    sub_100C00F90(a2, v9, type metadata accessor for OwnedBeaconRecord);
    swift_errorRetain();
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v32 = v15;
      *v13 = 141558531;
      *(v13 + 4) = 1752392040;
      *(v13 + 12) = 2081;
      type metadata accessor for UUID();
      sub_100C01198(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v16 = dispatch thunk of CustomStringConvertible.description.getter();
      v18 = v17;
      sub_100C01018(v9, type metadata accessor for OwnedBeaconRecord);
      v19 = sub_1000136BC(v16, v18, &v32);

      *(v13 + 14) = v19;
      *(v13 + 22) = 2114;
      swift_errorRetain();
      v20 = _swift_stdlib_bridgeErrorToNSError();
      *(v13 + 24) = v20;
      *v14 = v20;
      _os_log_impl(&_mh_execute_header, v11, v12, "Failed to remove %{private,mask.hash}s due to %{public}@", v13, 0x20u);
      sub_10000B3A8(v14, &qword_10169BB30, &unk_10138B3C0);

      sub_100007BAC(v15);

      return;
    }

    v30 = v9;
  }

  else
  {
    if (qword_101694D58 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_1000076D4(v21, qword_10177BD00);
    sub_100C00F90(a2, v7, type metadata accessor for OwnedBeaconRecord);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v32 = v25;
      *v24 = 141558275;
      *(v24 + 4) = 1752392040;
      *(v24 + 12) = 2081;
      type metadata accessor for UUID();
      sub_100C01198(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v26 = dispatch thunk of CustomStringConvertible.description.getter();
      v28 = v27;
      sub_100C01018(v7, type metadata accessor for OwnedBeaconRecord);
      v29 = sub_1000136BC(v26, v28, &v32);

      *(v24 + 14) = v29;
      _os_log_impl(&_mh_execute_header, v22, v23, "Successfully removed %{private,mask.hash}s", v24, 0x16u);
      sub_100007BAC(v25);

      return;
    }

    v30 = v7;
  }

  sub_100C01018(v30, type metadata accessor for OwnedBeaconRecord);
}

uint64_t sub_100BFD45C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a3;
  v32 = a4;
  v33 = a2;
  v5 = sub_1000BC4D4(&qword_1016B7F80, &qword_1013DDFE0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v28 - v7;
  v28 = &v28 - v7;
  v9 = type metadata accessor for PairingConfig(0);
  v30 = *(v9 - 8);
  v10 = *(v30 + 64);
  __chkstk_darwin(v9 - 8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for OwnedBeaconRecord(0);
  v29 = *(v12 - 8);
  v13 = *(v29 + 64);
  __chkstk_darwin(v12 - 8);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  __chkstk_darwin(v15 - 8);
  v17 = &v28 - v16;
  v18 = type metadata accessor for TaskPriority();
  (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
  sub_100C00F90(v31, v14, type metadata accessor for OwnedBeaconRecord);
  sub_100C00F90(v32, v11, type metadata accessor for PairingConfig);
  v19 = a1;
  v20 = v5;
  (*(v6 + 16))(v8, v19, v5);
  v21 = sub_100C01198(&qword_1016B7F28, type metadata accessor for BeaconStoreActor, &unk_1013EB218);
  v22 = (*(v29 + 80) + 40) & ~*(v29 + 80);
  v23 = (v13 + *(v30 + 80) + v22) & ~*(v30 + 80);
  v24 = (v10 + *(v6 + 80) + v23) & ~*(v6 + 80);
  v25 = swift_allocObject();
  v26 = v33;
  *(v25 + 2) = v33;
  *(v25 + 3) = v21;
  *(v25 + 4) = v26;
  sub_100C00F28(v14, &v25[v22], type metadata accessor for OwnedBeaconRecord);
  sub_100C00F28(v11, &v25[v23], type metadata accessor for PairingConfig);
  (*(v6 + 32))(&v25[v24], v28, v20);
  swift_retain_n();
  sub_10025EDD4(0, 0, v17, &unk_1013DDFF0, v25);
}

uint64_t sub_100BFD834(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v9 = *(type metadata accessor for PairingConfig(0) - 8);
  v7[6] = v9;
  v7[7] = *(v9 + 64);
  v7[8] = swift_task_alloc();
  v10 = *(type metadata accessor for OwnedBeaconRecord(0) - 8);
  v7[9] = v10;
  v7[10] = *(v10 + 64);
  v7[11] = swift_task_alloc();
  v11 = sub_1000BC4D4(&qword_1016B7F80, &qword_1013DDFE0);
  v7[12] = v11;
  v12 = *(v11 - 8);
  v7[13] = v12;
  v7[14] = *(v12 + 64);
  v7[15] = swift_task_alloc();

  return _swift_task_switch(sub_100BFD9D0, a4, 0);
}

uint64_t sub_100BFD9D0()
{
  v1 = v0[15];
  v3 = v0[12];
  v2 = v0[13];
  v4 = v0[11];
  v5 = v0[8];
  v18 = v0[10];
  v19 = v0[7];
  v16 = v0[9];
  v17 = v0[6];
  v6 = v0[4];
  v7 = v0[3];
  v20 = v0[2];
  (*(v2 + 16))(v1, v0[5], v3);
  v8 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v9 = swift_allocObject();
  v0[16] = v9;
  (*(v2 + 32))(v9 + v8, v1, v3);
  sub_100C00F90(v7, v4, type metadata accessor for OwnedBeaconRecord);
  sub_100C00F90(v6, v5, type metadata accessor for PairingConfig);
  v10 = (*(v16 + 80) + 24) & ~*(v16 + 80);
  v11 = (v18 + *(v17 + 80) + v10) & ~*(v17 + 80);
  v12 = swift_allocObject();
  v0[17] = v12;
  *(v12 + 16) = v20;
  sub_100C00F28(v4, v12 + v10, type metadata accessor for OwnedBeaconRecord);
  sub_100C00F28(v5, v12 + v11, type metadata accessor for PairingConfig);
  v13 = (v12 + ((v19 + v11 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v13 = sub_100C013A8;
  v13[1] = v9;

  v14 = swift_task_alloc();
  v0[18] = v14;
  *v14 = v0;
  v14[1] = sub_100BFDC4C;

  return unsafeBlocking<A>(context:_:)(v14, 0xD000000000000010, 0x800000010134A8C0, sub_100C01434, v12, &type metadata for () + 1);
}

uint64_t sub_100BFDC4C()
{
  v1 = *(*v0 + 16);

  return _swift_task_switch(sub_100BFDD78, v1, 0);
}

uint64_t sub_100BFDD78()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100BFDE00(uint64_t a1)
{
  v2 = type metadata accessor for OwnedBeaconRecord(0);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = v18 - v6;
  v8 = sub_1000BC4D4(&unk_1016B15A0, &qword_1013A0900);
  __chkstk_darwin(v8);
  v10 = v18 - v9;
  sub_1000D2A70(a1, v18 - v9, &unk_1016B15A0, &qword_1013A0900);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    if (qword_101694D58 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_1000076D4(v11, qword_10177BD00);
    swift_errorRetain();
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138543362;
      swift_errorRetain();
      v16 = _swift_stdlib_bridgeErrorToNSError();
      *(v14 + 4) = v16;
      *v15 = v16;
      _os_log_impl(&_mh_execute_header, v12, v13, "Failure saving record: %{public}@", v14, 0xCu);
      sub_10000B3A8(v15, &qword_10169BB30, &unk_10138B3C0);
    }

    type metadata accessor for SPPairingSessionError(0);
    v18[0] = 11;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_100C01198(&unk_1016B2710, type metadata accessor for SPPairingSessionError, &unk_10138A7E4);
    _BridgedStoredNSError.init(_:userInfo:)();
    v18[0] = v18[1];
    sub_1000BC4D4(&qword_1016B7F80, &qword_1013DDFE0);
    CheckedContinuation.resume(throwing:)();
  }

  else
  {
    sub_100C00F28(v10, v7, type metadata accessor for OwnedBeaconRecord);
    sub_100C00F90(v7, v5, type metadata accessor for OwnedBeaconRecord);
    sub_1000BC4D4(&qword_1016B7F80, &qword_1013DDFE0);
    CheckedContinuation.resume(returning:)();
    return sub_100C01018(v7, type metadata accessor for OwnedBeaconRecord);
  }
}

uint64_t sub_100BFE168(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[50] = a3;
  v4[51] = v3;
  v4[48] = a1;
  v4[49] = a2;
  v5 = *(sub_1000BC4D4(&qword_101697268, &qword_101394FE0) - 8);
  v4[52] = v5;
  v4[53] = *(v5 + 64);
  v4[54] = swift_task_alloc();
  v4[55] = swift_task_alloc();
  v4[56] = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  v4[57] = swift_task_alloc();

  return _swift_task_switch(sub_100BFE284, v3, 0);
}

uint64_t sub_100BFE284()
{
  v1 = swift_task_alloc();
  *(v0 + 464) = v1;
  *v1 = v0;
  v1[1] = sub_100BFE318;

  return sub_100A9A4DC();
}

uint64_t sub_100BFE318(char a1)
{
  v2 = *(*v1 + 408);
  *(*v1 + 496) = a1;

  return _swift_task_switch(sub_100BFE430, v2, 0);
}

uint64_t sub_100BFE430()
{
  if (*(v0 + 496) != 1)
  {
    type metadata accessor for SPPairingSessionError(0);
    *(v0 + 368) = 20;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_100C01198(&unk_1016B2710, type metadata accessor for SPPairingSessionError, &unk_10138A7E4);
    _BridgedStoredNSError.init(_:userInfo:)();
LABEL_9:
    swift_willThrow();
    goto LABEL_10;
  }

  sub_10001F280(*(v0 + 392), v0 + 256);
  sub_1000BC4D4(&qword_1016B7F38, &qword_1013DDFA8);
  if (!swift_dynamicCast())
  {
    v17 = type metadata accessor for PairingBeaconStoreError();
    sub_100C01198(&qword_1016B7F40, &type metadata accessor for PairingBeaconStoreError, &protocol conformance descriptor for PairingBeaconStoreError);
    swift_allocError();
    (*(*(v17 - 8) + 104))(v18, enum case for PairingBeaconStoreError.invalidPairingKeysType(_:), v17);
    goto LABEL_9;
  }

  v1 = *(v0 + 400);
  v2 = *(v0 + 144);
  *(v0 + 48) = *(v0 + 128);
  *(v0 + 64) = v2;
  *(v0 + 80) = *(v0 + 160);
  v3 = *(v0 + 112);
  *(v0 + 16) = *(v0 + 96);
  *(v0 + 32) = v3;
  sub_10001F280(v1, v0 + 296);
  sub_1000BC4D4(&qword_1016B7F48, &qword_1013DDFB0);
  type metadata accessor for AccessoryPairingInfo(0);
  if (swift_dynamicCast())
  {
    v5 = *(v0 + 432);
    v4 = *(v0 + 440);
    v6 = *(v0 + 416);
    v7 = *(v0 + 408);
    v8 = *(v0 + 376);
    *(v0 + 472) = v8;
    v9 = OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_productInfo;
    swift_beginAccess();
    sub_1000D2A70(v8 + v9, v4, &qword_101697268, &qword_101394FE0);
    sub_1000D2A70(v4, v5, &qword_101697268, &qword_101394FE0);
    v10 = (*(v6 + 80) + 112) & ~*(v6 + 80);
    v11 = swift_allocObject();
    *(v0 + 480) = v11;
    *(v11 + 16) = v7;
    v12 = *(v0 + 16);
    *(v11 + 40) = *(v0 + 32);
    v13 = *(v0 + 64);
    *(v11 + 56) = *(v0 + 48);
    *(v11 + 72) = v13;
    *(v11 + 88) = *(v0 + 80);
    *(v11 + 24) = v12;
    *(v11 + 104) = v8;
    sub_100A7027C(v5, v11 + v10);

    sub_100102538(v0 + 16, v0 + 176);

    v14 = swift_task_alloc();
    *(v0 + 488) = v14;
    *v14 = v0;
    v14[1] = sub_100BFE8C4;
    v16 = *(v0 + 448);
    v15 = *(v0 + 456);

    return unsafeBlocking<A>(context:_:)(v15, 0xD000000000000010, 0x800000010134A8C0, sub_100C0153C, v11, v16);
  }

  v20 = type metadata accessor for PairingBeaconStoreError();
  sub_100C01198(&qword_1016B7F40, &type metadata accessor for PairingBeaconStoreError, &protocol conformance descriptor for PairingBeaconStoreError);
  swift_allocError();
  (*(*(v20 - 8) + 104))(v21, enum case for PairingBeaconStoreError.invalidAccessoryInfoType(_:), v20);
  swift_willThrow();
  sub_1001DA760(v0 + 16);
LABEL_10:

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_100BFE8C4()
{
  v1 = *(*v0 + 440);
  v2 = *(*v0 + 408);

  sub_10000B3A8(v1, &qword_101697268, &qword_101394FE0);

  return _swift_task_switch(sub_100BFEA24, v2, 0);
}

uint64_t sub_100BFEA24()
{
  v1 = v0[57];
  v2 = type metadata accessor for OwnedBeaconRecord(0);
  v3 = (*(*(v2 - 8) + 48))(v1, 1, v2);
  v4 = v0[48];
  if (v3 == 1)
  {
    sub_1001DA760((v0 + 2));

    sub_10000B3A8(v1, &unk_1016A9A20, &qword_10138B280);
    *v4 = 0u;
    *(v4 + 16) = 0u;
    *(v4 + 32) = 0;
  }

  else
  {
    *(v4 + 24) = v2;
    *(v4 + 32) = sub_100C01198(&qword_1016B7F60, type metadata accessor for OwnedBeaconRecord, &unk_1013DDF44);
    v5 = sub_1000280DC(v4);
    sub_100C00F28(v1, v5, type metadata accessor for OwnedBeaconRecord);
    sub_1001DA760((v0 + 2));
  }

  v6 = v0[1];

  return v6();
}

uint64_t sub_100BFEBA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[53] = a3;
  v4[54] = v3;
  v4[51] = a1;
  v4[52] = a2;
  v4[55] = sub_1000BC4D4(&qword_1016B7F58, &qword_1013DDFC0);
  v4[56] = swift_task_alloc();
  v4[57] = swift_task_alloc();
  sub_1000BC4D4(&qword_1016A40D0, &unk_10138BE70);
  v4[58] = swift_task_alloc();
  v5 = type metadata accessor for MACAddress();
  v4[59] = v5;
  v6 = *(v5 - 8);
  v4[60] = v6;
  v4[61] = *(v6 + 64);
  v4[62] = swift_task_alloc();
  v4[63] = swift_task_alloc();
  sub_1000BC4D4(&qword_101697268, &qword_101394FE0);
  v4[64] = swift_task_alloc();

  return _swift_task_switch(sub_100BFED34, v3, 0);
}

uint64_t sub_100BFED34()
{
  v1 = swift_task_alloc();
  *(v0 + 520) = v1;
  *v1 = v0;
  v1[1] = sub_100BFEDC8;

  return sub_100A9A4DC();
}

uint64_t sub_100BFEDC8(char a1)
{
  v2 = *(*v1 + 432);
  *(*v1 + 552) = a1;

  return _swift_task_switch(sub_100BFEEE0, v2, 0);
}

uint64_t sub_100BFEEE0()
{
  if (*(v0 + 552) != 1)
  {
    type metadata accessor for SPPairingSessionError(0);
    *(v0 + 392) = 20;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_100C01198(&unk_1016B2710, type metadata accessor for SPPairingSessionError, &unk_10138A7E4);
    _BridgedStoredNSError.init(_:userInfo:)();
LABEL_8:
    swift_willThrow();
LABEL_9:

    v12 = *(v0 + 8);

    return v12();
  }

  sub_10001F280(*(v0 + 416), v0 + 256);
  sub_1000BC4D4(&qword_1016B7F38, &qword_1013DDFA8);
  if (!swift_dynamicCast())
  {
    v10 = type metadata accessor for PairingBeaconStoreError();
    sub_100C01198(&qword_1016B7F40, &type metadata accessor for PairingBeaconStoreError, &protocol conformance descriptor for PairingBeaconStoreError);
    swift_allocError();
    (*(*(v10 - 8) + 104))(v11, enum case for PairingBeaconStoreError.invalidPairingKeysType(_:), v10);
    goto LABEL_8;
  }

  v1 = *(v0 + 424);
  v2 = *(v0 + 144);
  *(v0 + 48) = *(v0 + 128);
  *(v0 + 64) = v2;
  *(v0 + 80) = *(v0 + 160);
  v3 = *(v0 + 112);
  *(v0 + 16) = *(v0 + 96);
  *(v0 + 32) = v3;
  sub_10001F280(v1, v0 + 296);
  sub_1000BC4D4(&qword_1016B7F48, &qword_1013DDFB0);
  type metadata accessor for AccessoryPairingInfo(0);
  if (!swift_dynamicCast())
  {
    v14 = type metadata accessor for PairingBeaconStoreError();
    sub_100C01198(&qword_1016B7F40, &type metadata accessor for PairingBeaconStoreError, &protocol conformance descriptor for PairingBeaconStoreError);
    swift_allocError();
    (*(*(v14 - 8) + 104))(v15, enum case for PairingBeaconStoreError.invalidAccessoryInfoType(_:), v14);
    swift_willThrow();
    goto LABEL_13;
  }

  v4 = *(v0 + 512);
  v5 = *(v0 + 400);
  *(v0 + 528) = v5;
  v6 = OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_productInfo;
  swift_beginAccess();
  sub_1000D2A70(v5 + v6, v4, &qword_101697268, &qword_101394FE0);
  v7 = type metadata accessor for AccessoryProductInfo(0);
  LODWORD(v6) = (*(*(v7 - 8) + 48))(v4, 1, v7);
  sub_10000B3A8(v4, &qword_101697268, &qword_101394FE0);
  if (v6 == 1)
  {
    v8 = type metadata accessor for PairingBeaconStoreError();
    sub_100C01198(&qword_1016B7F40, &type metadata accessor for PairingBeaconStoreError, &protocol conformance descriptor for PairingBeaconStoreError);
    swift_allocError();
    (*(*(v8 - 8) + 104))(v9, enum case for PairingBeaconStoreError.invalidProductInfo(_:), v8);
    swift_willThrow();

LABEL_13:
    sub_1001DA760(v0 + 16);
    goto LABEL_9;
  }

  v16 = *(v0 + 472);
  v17 = *(v0 + 480);
  v18 = *(v0 + 464);
  v19 = OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_classicMacAddress;
  swift_beginAccess();
  sub_1000D2A70(v5 + v19, v18, &qword_1016A40D0, &unk_10138BE70);
  if ((*(v17 + 48))(v18, 1, v16) == 1)
  {
    sub_10000B3A8(*(v0 + 464), &qword_1016A40D0, &unk_10138BE70);
    v20 = type metadata accessor for PairingBeaconStoreError();
    sub_100C01198(&qword_1016B7F40, &type metadata accessor for PairingBeaconStoreError, &protocol conformance descriptor for PairingBeaconStoreError);
    swift_allocError();
    (*(*(v20 - 8) + 104))(v21, enum case for PairingBeaconStoreError.invalidClassicMacAddress(_:), v20);
    swift_willThrow();
    sub_1001DA760(v0 + 16);

    goto LABEL_9;
  }

  v23 = *(v0 + 496);
  v22 = *(v0 + 504);
  v25 = *(v0 + 480);
  v24 = *(v0 + 488);
  v26 = *(v0 + 472);
  v36 = *(v0 + 432);
  v37 = *(v25 + 32);
  v37(v22, *(v0 + 464), v26);
  v27 = *(v5 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_allSerialNumbersAndPartIds);
  v28 = *(v25 + 16);

  v28(v23, v22, v26);
  v29 = (*(v25 + 80) + 112) & ~*(v25 + 80);
  v30 = swift_allocObject();
  *(v0 + 536) = v30;
  *(v30 + 16) = v36;
  v31 = *(v0 + 16);
  *(v30 + 40) = *(v0 + 32);
  v32 = *(v0 + 64);
  *(v30 + 56) = *(v0 + 48);
  *(v30 + 72) = v32;
  *(v30 + 88) = *(v0 + 80);
  *(v30 + 24) = v31;
  *(v30 + 104) = v5;
  v37(v30 + v29, v23, v26);
  *(v30 + ((v24 + v29 + 7) & 0xFFFFFFFFFFFFFFF8)) = v27;

  sub_100102538(v0 + 16, v0 + 176);

  v33 = swift_task_alloc();
  *(v0 + 544) = v33;
  *v33 = v0;
  v33[1] = sub_100BFF638;
  v34 = *(v0 + 456);
  v35 = *(v0 + 440);

  return unsafeBlocking<A>(context:_:)(v34, 0xD000000000000010, 0x800000010134A8C0, sub_100C00E80, v30, v35);
}

uint64_t sub_100BFF638()
{
  v1 = *(*v0 + 432);

  return _swift_task_switch(sub_100BFF764, v1, 0);
}

uint64_t sub_100BFF764()
{
  v1 = v0[56];
  sub_1000D2A70(v0[57], v1, &qword_1016B7F58, &qword_1013DDFC0);
  v2 = sub_1000BC4D4(&qword_1016973B8, &qword_1013EAD60);
  v3 = (*(*(v2 - 8) + 48))(v1, 1, v2);
  v4 = v0[63];
  v5 = v0[59];
  v6 = v0[60];
  v8 = v0[56];
  v7 = v0[57];
  v9 = v0[51];
  if (v3 == 1)
  {

    sub_1001DA760((v0 + 2));
    sub_10000B3A8(v7, &qword_1016B7F58, &qword_1013DDFC0);
    (*(v6 + 8))(v4, v5);
    sub_10000B3A8(v8, &qword_1016B7F58, &qword_1013DDFC0);
    *v9 = 0u;
    *(v9 + 16) = 0u;
    *(v9 + 32) = 0u;
    *(v9 + 48) = 0u;
    *(v9 + 64) = 0u;
  }

  else
  {
    v10 = *(v2 + 48);
    *(v9 + 24) = type metadata accessor for OwnedBeaconRecord(0);
    *(v9 + 32) = sub_100C01198(&qword_1016B7F60, type metadata accessor for OwnedBeaconRecord, &unk_1013DDF44);
    v11 = sub_1000280DC(v9);
    sub_100C00F28(v8, v11, type metadata accessor for OwnedBeaconRecord);
    *(v9 + 64) = type metadata accessor for OwnedBeaconGroup(0);
    *(v9 + 72) = sub_100C01198(&qword_1016B7F30, type metadata accessor for OwnedBeaconGroup, &unk_1013DDEF8);
    v12 = sub_1000280DC((v9 + 40));
    sub_100C00F28(v8 + v10, v12, type metadata accessor for OwnedBeaconGroup);

    sub_1001DA760((v0 + 2));
    sub_10000B3A8(v7, &qword_1016B7F58, &qword_1013DDFC0);
    (*(v6 + 8))(v4, v5);
  }

  v13 = v0[1];

  return v13();
}

uint64_t sub_100BFFA20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[44] = a3;
  v4[45] = v3;
  v4[42] = a1;
  v4[43] = a2;
  sub_1000BC4D4(&qword_1016A40D0, &unk_10138BE70);
  v4[46] = swift_task_alloc();
  v4[47] = swift_task_alloc();
  v5 = type metadata accessor for MACAddress();
  v4[48] = v5;
  v4[49] = *(v5 - 8);
  v4[50] = swift_task_alloc();
  v4[51] = swift_task_alloc();
  sub_1000BC4D4(&qword_101697268, &qword_101394FE0);
  v4[52] = swift_task_alloc();

  return _swift_task_switch(sub_100BFFB6C, v3, 0);
}

uint64_t sub_100BFFB6C()
{
  sub_10001F280(*(v0 + 344), v0 + 176);
  sub_1000BC4D4(&qword_1016B7F38, &qword_1013DDFA8);
  if (!swift_dynamicCast())
  {
    v10 = type metadata accessor for PairingBeaconStoreError();
    sub_100C01198(&qword_1016B7F40, &type metadata accessor for PairingBeaconStoreError, &protocol conformance descriptor for PairingBeaconStoreError);
    swift_allocError();
    (*(*(v10 - 8) + 104))(v11, enum case for PairingBeaconStoreError.invalidPairingKeysType(_:), v10);
    swift_willThrow();
LABEL_8:

    v14 = *(v0 + 8);

    return v14();
  }

  v1 = *(v0 + 352);
  v2 = *(v0 + 144);
  *(v0 + 48) = *(v0 + 128);
  *(v0 + 64) = v2;
  *(v0 + 80) = *(v0 + 160);
  v3 = *(v0 + 112);
  *(v0 + 16) = *(v0 + 96);
  *(v0 + 32) = v3;
  sub_10001F280(v1, v0 + 216);
  sub_1000BC4D4(&qword_1016B7F48, &qword_1013DDFB0);
  type metadata accessor for AccessoryPairingInfo(0);
  if (!swift_dynamicCast())
  {
    v12 = type metadata accessor for PairingBeaconStoreError();
    sub_100C01198(&qword_1016B7F40, &type metadata accessor for PairingBeaconStoreError, &protocol conformance descriptor for PairingBeaconStoreError);
    swift_allocError();
    (*(*(v12 - 8) + 104))(v13, enum case for PairingBeaconStoreError.invalidAccessoryInfoType(_:), v12);
    swift_willThrow();
    goto LABEL_7;
  }

  v4 = *(v0 + 416);
  v5 = *(v0 + 328);
  *(v0 + 424) = v5;
  v6 = OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_productInfo;
  swift_beginAccess();
  sub_1000D2A70(v5 + v6, v4, &qword_101697268, &qword_101394FE0);
  v7 = type metadata accessor for AccessoryProductInfo(0);
  LODWORD(v6) = (*(*(v7 - 8) + 48))(v4, 1, v7);
  sub_10000B3A8(v4, &qword_101697268, &qword_101394FE0);
  if (v6 == 1)
  {
    v8 = type metadata accessor for PairingBeaconStoreError();
    sub_100C01198(&qword_1016B7F40, &type metadata accessor for PairingBeaconStoreError, &protocol conformance descriptor for PairingBeaconStoreError);
    swift_allocError();
    (*(*(v8 - 8) + 104))(v9, enum case for PairingBeaconStoreError.invalidProductInfo(_:), v8);
    swift_willThrow();

LABEL_7:
    sub_1001DA760(v0 + 16);
    goto LABEL_8;
  }

  v16 = *(v0 + 384);
  v17 = *(v0 + 392);
  v18 = *(v0 + 376);
  v19 = OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_classicMacAddress;
  swift_beginAccess();
  sub_1000D2A70(v5 + v19, v18, &qword_1016A40D0, &unk_10138BE70);
  v20 = *(v17 + 48);
  if (v20(v18, 1, v16) == 1)
  {
    sub_10000B3A8(*(v0 + 376), &qword_1016A40D0, &unk_10138BE70);
    v21 = type metadata accessor for PairingBeaconStoreError();
    sub_100C01198(&qword_1016B7F40, &type metadata accessor for PairingBeaconStoreError, &protocol conformance descriptor for PairingBeaconStoreError);
    swift_allocError();
    (*(*(v21 - 8) + 104))(v22, enum case for PairingBeaconStoreError.invalidClassicMacAddress(_:), v21);
    swift_willThrow();
    sub_1001DA760(v0 + 16);

    goto LABEL_8;
  }

  v23 = *(v0 + 384);
  v24 = *(v0 + 368);
  v25 = *(*(v0 + 392) + 32);
  v25(*(v0 + 408), *(v0 + 376), v23);
  v26 = OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_macAddress;
  swift_beginAccess();
  sub_1000D2A70(v5 + v26, v24, &qword_1016A40D0, &unk_10138BE70);
  v27 = v20(v24, 1, v23);
  v28 = *(v0 + 384);
  if (v27 == 1)
  {
    v29 = *(v0 + 408);
    v30 = *(v0 + 392);
    sub_10000B3A8(*(v0 + 368), &qword_1016A40D0, &unk_10138BE70);
    v31 = type metadata accessor for PairingBeaconStoreError();
    sub_100C01198(&qword_1016B7F40, &type metadata accessor for PairingBeaconStoreError, &protocol conformance descriptor for PairingBeaconStoreError);
    swift_allocError();
    (*(*(v31 - 8) + 104))(v32, enum case for PairingBeaconStoreError.invalidMacAddress(_:), v31);
    swift_willThrow();
    sub_1001DA760(v0 + 16);

    (*(v30 + 8))(v29, v28);
    goto LABEL_8;
  }

  v33 = *(v0 + 336);
  v25(*(v0 + 400), *(v0 + 368), *(v0 + 384));
  type metadata accessor for __DataStorage();
  swift_allocObject();
  v34 = __DataStorage.init(length:)();
  *(v0 + 432) = v34;
  v33[3] = type metadata accessor for StandaloneBeacon(0);
  v33[4] = sub_100C01198(&qword_1016B7F50, type metadata accessor for StandaloneBeacon, &unk_1013DDF6C);
  v35 = sub_1000280DC(v33);
  v36 = swift_task_alloc();
  *(v0 + 440) = v36;
  *v36 = v0;
  v36[1] = sub_100C00310;
  v37 = *(v0 + 400);
  v38 = *(v0 + 408);

  return sub_100B90BDC(v35, v0 + 16, v5, v37, v38, 0x6000000000, v34 | 0x4000000000000000);
}

uint64_t sub_100C00310()
{
  v2 = *v1;
  *(*v1 + 448) = v0;

  v3 = *(v2 + 360);
  if (v0)
  {
    v4 = sub_100C00538;
  }

  else
  {
    v4 = sub_100C0043C;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100C0043C()
{
  v1 = v0[51];
  v3 = v0[49];
  v2 = v0[50];
  v4 = v0[48];
  sub_1001DA760((v0 + 2));

  v5 = *(v3 + 8);
  v5(v2, v4);
  v5(v1, v4);

  v6 = v0[1];

  return v6();
}

uint64_t sub_100C00538()
{
  v2 = v0[50];
  v1 = v0[51];
  v3 = v0[48];
  v4 = v0[49];
  v5 = v0[42];
  sub_1001DA760((v0 + 2));

  v6 = *(v4 + 8);
  v6(v2, v3);
  v6(v1, v3);
  sub_100101758(v5);

  v7 = v0[1];

  return v7();
}

uint64_t sub_100C00638(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for MACAddress();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v3[7] = *(v5 + 64);
  v3[8] = swift_task_alloc();
  v3[9] = sub_1000BC4D4(&unk_1016AF8B0, &unk_1013A0700);
  v3[10] = swift_task_alloc();

  return _swift_task_switch(sub_100C00740, v2, 0);
}

uint64_t sub_100C00740()
{
  v1 = v0[8];
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[4];
  (*(v3 + 16))(v1, v0[3], v2);
  v5 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v6 = swift_allocObject();
  v0[11] = v6;
  *(v6 + 16) = v4;
  (*(v3 + 32))(v6 + v5, v1, v2);

  v7 = swift_task_alloc();
  v0[12] = v7;
  *v7 = v0;
  v7[1] = sub_100C0089C;
  v9 = v0[9];
  v8 = v0[10];

  return unsafeBlocking<A>(context:_:)(v8, 0xD000000000000010, 0x800000010134A8C0, sub_100102120, v6, v9);
}

uint64_t sub_100C0089C()
{
  v1 = *(*v0 + 32);

  return _swift_task_switch(sub_100C009C8, v1, 0);
}

uint64_t sub_100C009C8()
{
  v1 = v0[10];
  v2 = type metadata accessor for OwnedBeaconGroup(0);
  v3 = (*(*(v2 - 8) + 48))(v1, 1, v2);
  v4 = v0[2];
  if (v3 == 1)
  {
    sub_10000B3A8(v1, &unk_1016AF8B0, &unk_1013A0700);
    *v4 = 0u;
    *(v4 + 16) = 0u;
    *(v4 + 32) = 0;
  }

  else
  {
    *(v4 + 24) = v2;
    *(v4 + 32) = sub_100C01198(&qword_1016B7F30, type metadata accessor for OwnedBeaconGroup, &unk_1013DDEF8);
    v5 = sub_1000280DC(v4);
    sub_100C00F28(v1, v5, type metadata accessor for OwnedBeaconGroup);
  }

  v6 = v0[1];

  return v6();
}

uint64_t sub_100C00B18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100014744;

  return sub_100BFE168(a1, a2, a3);
}

uint64_t sub_100C00BC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100014744;

  return sub_100BFB0B0(a1, a2, a3);
}

uint64_t sub_100C00C78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100014744;

  return sub_100BFEBA4(a1, a2, a3);
}

uint64_t sub_100C00D28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100014650;

  return sub_100BFFA20(a1, a2, a3);
}

uint64_t sub_100C00DD8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100014650;

  return sub_100C00638(a1, a2);
}

uint64_t sub_100C00E80@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MACAddress() - 8);
  v4 = (*(v3 + 80) + 112) & ~*(v3 + 80);
  v5 = *(v1 + 104);
  v6 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_100E6D6EC((v1 + 24), v5, v1 + v4, v6, a1);
}

uint64_t sub_100C00F28(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100C00F90(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100C01018(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_100C01078(uint64_t a1)
{
  v3 = *(type metadata accessor for OwnedBeaconRecord(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  sub_100BFCF68(a1, v4);
}

void sub_100C010E8()
{
  v1 = *(type metadata accessor for OwnedBeaconRecord(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = *v4;
  v6 = v4[1];

  sub_100E75AC0(v3, v0 + v2, v5, v6);
}

uint64_t sub_100C01198(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100C011E0(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for OwnedBeaconRecord(0) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for PairingConfig(0) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(sub_1000BC4D4(&qword_1016B7F80, &qword_1013DDFE0) - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = v1[2];
  v14 = v1[3];
  v15 = v1[4];
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = sub_100014650;

  return sub_100BFD834(a1, v13, v14, v15, v1 + v6, v1 + v9, v1 + v12);
}

uint64_t sub_100C013A8(uint64_t a1)
{
  sub_1000BC4D4(&qword_1016B7F80, &qword_1013DDFE0);

  return sub_100BFDE00(a1);
}

uint64_t sub_100C01434()
{
  v1 = *(type metadata accessor for OwnedBeaconRecord(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for PairingConfig(0) - 8);
  v5 = (v2 + v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = *(v0 + 16);
  v7 = (v0 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];

  return sub_100E6D368(v6, (v0 + v2), (v0 + v5), v8, v9);
}

uint64_t sub_100C0153C@<X0>(char *a1@<X8>)
{
  v3 = *(sub_1000BC4D4(&qword_101697268, &qword_101394FE0) - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 104);
  v6 = v1 + ((*(v3 + 80) + 112) & ~*(v3 + 80));

  return sub_100E6D39C(v4, (v1 + 24), v5, v6, a1);
}

void *sub_100C015C4(void *a1, uint64_t a2)
{
  v3 = v2;
  v15 = a1;
  v5 = type metadata accessor for UUID();
  __chkstk_darwin(v5 - 8);
  v6 = sub_1000BC4D4(&qword_101698E38, &unk_101395BA0);
  __chkstk_darwin(v6 - 8);
  v8 = &v14 - v7;
  swift_defaultActor_initialize();
  v2[14] = 0;
  type metadata accessor for PairingCoordinatorStateManager();
  v2[22] = PairingCoordinatorStateManager.__allocating_init()();
  v2[29] = 0;
  type metadata accessor for WorkItemQueue();
  v9 = type metadata accessor for WorkItemQueue.WarningOptions();
  v10 = *(*(v9 - 8) + 56);
  v10(v8, 1, 1, v9);
  UUID.init()();
  v2[30] = WorkItemQueue.__allocating_init(name:identifier:warningOptions:)();
  v10(v8, 1, 1, v9);
  UUID.init()();
  v2[31] = WorkItemQueue.__allocating_init(name:identifier:warningOptions:)();
  sub_1000BC4D4(&qword_1016B8100, &qword_1013DE218);
  swift_allocObject();
  v2[20] = AsyncStreamProvider.init()();
  sub_1000BC4D4(&qword_1016B8108, &unk_1013DE220);
  swift_allocObject();
  v2[21] = AsyncStreamProvider.init()();
  v11 = v15;
  sub_10001F280(v15, (v2 + 15));
  sub_100C023E4(a2, (v2 + 23));
  type metadata accessor for Transaction();
  v12 = static Transaction.current.getter();
  sub_100C02454(a2);
  sub_100007BAC(v11);
  v3[28] = v12;
  return v3;
}

uint64_t sub_100C0183C(uint64_t a1)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = v1;
  return _swift_task_switch(sub_100C0185C, v1, 0);
}

uint64_t sub_100C0185C()
{
  sub_100C023E4(v0[8] + 184, (v0 + 2));
  v1 = v0[5];
  if (v1)
  {
    sub_1000035D0(v0 + 2, v1);
    v2 = swift_task_alloc();
    v0[9] = v2;
    *v2 = v0;
    v2[1] = sub_100C01958;

    return sub_100F87B58();
  }

  else
  {
    sub_100C02454((v0 + 2));
    v4 = v0[7];
    *v4 = 0u;
    *(v4 + 16) = 0u;
    *(v4 + 32) = 0;
    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_100C01958(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 80) = a1;
  *(v4 + 88) = v1;

  v5 = *(v3 + 64);
  if (v1)
  {
    v6 = sub_100C01B64;
  }

  else
  {
    v6 = sub_100C01A8C;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100C01A8C()
{
  v1 = v0[10];
  if (v1)
  {
    v2 = v0[7];
    v2[3] = sub_100650E24();
    v2[4] = sub_100C024BC(&qword_1016B80F8, 255, sub_100650E24, &protocol conformance descriptor for CLLocation);
    *v2 = v1;
    sub_100007BAC(v0 + 2);
  }

  else
  {
    sub_100007BAC(v0 + 2);
    v3 = v0[7];
    *(v3 + 32) = 0;
    *v3 = 0u;
    *(v3 + 16) = 0u;
  }

  v4 = v0[1];

  return v4();
}

uint64_t sub_100C01B64()
{
  sub_100007BAC((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100C01BC8()
{

  sub_100007BAC((v0 + 120));

  sub_100C02454(v0 + 184);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_100C01C38()
{
  sub_100C01BC8();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_100C01D30(__int128 *a1)
{
  swift_beginAccess();
  sub_100007BAC((v1 + 120));
  sub_10000A748(a1, v1 + 120);
  return swift_endAccess();
}

uint64_t sub_100C01E28(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 112) = a1;
}

uint64_t sub_100C01EA8(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 232) = a1;
}

uint64_t sub_100C01F40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  v7 = type metadata accessor for UniversalPairingCoordinator();
  *v6 = v3;
  v6[1] = sub_100014744;

  return PairingCoordinator.stream()(a1, v7, a3);
}

uint64_t sub_100C01FF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  v7 = type metadata accessor for UniversalPairingCoordinator();
  *v6 = v3;
  v6[1] = sub_100014650;

  return PairingCoordinator.analyticsStream()(a1, v7, a3);
}

uint64_t sub_100C020A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  v7 = type metadata accessor for UniversalPairingCoordinator();
  *v6 = v3;
  v6[1] = sub_100014744;

  return PairingCoordinator.setState(_:)(a1, v7, a3);
}

void sub_100C0215C()
{
  type metadata accessor for UniversalPairingCoordinator();

  PairingCoordinator.setup()();
}

uint64_t sub_100C02194(uint64_t a1)
{
  v2 = type metadata accessor for PairingOperation();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, a1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == enum case for PairingOperation.overallPairing(_:))
  {
    return 0x8155A43676E00000;
  }

  if (v6 == enum case for PairingOperation.peripheralRetrieval(_:) || v6 == enum case for PairingOperation.metadataRead(_:) || v6 == enum case for PairingOperation.productInfoFetch(_:) || v6 == enum case for PairingOperation.pairingStart(_:))
  {
    return 0x40AAD21B3B700000;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_100C02300(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100014744;

  return sub_100C0183C(a1);
}

uint64_t sub_100C02398(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for UniversalPairingCoordinator();

  return PairingCoordinator.updateDependencies(_:)(a1, v5, a3);
}

uint64_t sub_100C023E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_1016B80F0, &unk_1013DE208);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100C02454(uint64_t a1)
{
  v2 = sub_1000BC4D4(&qword_1016B80F0, &unk_1013DE208);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100C024BC(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

unint64_t sub_100C02518()
{
  result = qword_1016B8110;
  if (!qword_1016B8110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B8110);
  }

  return result;
}

unint64_t sub_100C0256C@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1[11];
  v86[10] = v1[10];
  v86[11] = v3;
  v86[12] = v1[12];
  v87 = *(v1 + 26);
  v4 = v1[7];
  v86[6] = v1[6];
  v86[7] = v4;
  v5 = v1[9];
  v86[8] = v1[8];
  v86[9] = v5;
  v6 = v1[3];
  v86[2] = v1[2];
  v86[3] = v6;
  v7 = v1[5];
  v86[4] = v1[4];
  v86[5] = v7;
  v8 = v1[1];
  v86[0] = *v1;
  v86[1] = v8;
  v9 = sub_1001DA684(v86);
  if (v9 <= 3)
  {
    if (v9 > 1)
    {
      if (v9 == 2)
      {
        v37 = sub_10004CA28(v86);
        a1[3] = &type metadata for AirPodsLESendPairingDataCommandPayload;
        a1[4] = sub_1009A00A4();
        v38 = swift_allocObject();
        *a1 = v38;
        memmove((v38 + 16), v37, 0xD8uLL);
        v39 = v1[11];
        v82 = v1[10];
        v83 = v39;
        v84 = v1[12];
        v85 = *(v1 + 26);
        v40 = v1[7];
        v78 = v1[6];
        v79 = v40;
        v41 = v1[9];
        v80 = v1[8];
        v81 = v41;
        v42 = v1[3];
        v74 = v1[2];
        v75 = v42;
        v43 = v1[5];
        v76 = v1[4];
        v77 = v43;
        v44 = v1[1];
        v72 = *v1;
        v73 = v44;
        v34 = sub_10004CA28(&v72);
        v35 = &unk_1016B0720;
        v36 = &unk_1013CDFD0;
      }

      else
      {
        v63 = sub_10004CA28(v86);
        a1[3] = &type metadata for AirPodsMCFinalizePairingCommandPayload;
        a1[4] = sub_1009A1FAC();
        v64 = swift_allocObject();
        *a1 = v64;
        memmove((v64 + 16), v63, 0xC0uLL);
        v65 = v1[11];
        v82 = v1[10];
        v83 = v65;
        v84 = v1[12];
        v85 = *(v1 + 26);
        v66 = v1[7];
        v78 = v1[6];
        v79 = v66;
        v67 = v1[9];
        v80 = v1[8];
        v81 = v67;
        v68 = v1[3];
        v74 = v1[2];
        v75 = v68;
        v69 = v1[5];
        v76 = v1[4];
        v77 = v69;
        v70 = v1[1];
        v72 = *v1;
        v73 = v70;
        v34 = sub_10004CA28(&v72);
        v35 = &unk_1016B82A8;
        v36 = &unk_1013E7AE0;
      }
    }

    else
    {
      if (!v9)
      {
        v10 = sub_10004CA28(v86);
        a1[3] = &type metadata for AirPodsSendBeaconGroupDataCommandPayload;
        a1[4] = sub_100391B94();
        v11 = swift_allocObject();
        *a1 = v11;
        v12 = v10[1];
        *(v11 + 16) = *v10;
        *(v11 + 32) = v12;
        v13 = v1[1];
        v72 = *v1;
        v73 = v13;
        v14 = v1[5];
        v76 = v1[4];
        v77 = v14;
        v15 = v1[3];
        v74 = v1[2];
        v75 = v15;
        v16 = v1[9];
        v80 = v1[8];
        v81 = v16;
        v17 = v1[7];
        v78 = v1[6];
        v79 = v17;
        v85 = *(v1 + 26);
        v18 = v1[12];
        v83 = v1[11];
        v84 = v18;
        v82 = v1[10];
        v19 = sub_10004CA28(&v72);
        v20 = v19[2];
        v21 = v19[3];
        sub_100017D5C(*v19, v19[1]);
        return sub_100017D5C(v20, v21);
      }

      v45 = sub_10004CA28(v86);
      a1[3] = &type metadata for AirPodsLEInitiatePairingCommandPayload;
      a1[4] = sub_100391B40();
      v46 = swift_allocObject();
      *a1 = v46;
      memmove((v46 + 16), v45, 0x50uLL);
      v47 = v1[11];
      v82 = v1[10];
      v83 = v47;
      v84 = v1[12];
      v85 = *(v1 + 26);
      v48 = v1[7];
      v78 = v1[6];
      v79 = v48;
      v49 = v1[9];
      v80 = v1[8];
      v81 = v49;
      v50 = v1[3];
      v74 = v1[2];
      v75 = v50;
      v51 = v1[5];
      v76 = v1[4];
      v77 = v51;
      v52 = v1[1];
      v72 = *v1;
      v73 = v52;
      v34 = sub_10004CA28(&v72);
      v35 = &unk_10169EAC0;
      v36 = &unk_10139E338;
    }

    return sub_1000D2A70(v34, v71, v35, v36);
  }

  if (v9 <= 5)
  {
    if (v9 != 4)
    {
      v53 = sub_10004CA28(v86);
      v54 = *v53;
      v55 = v53[1];
      a1[3] = &type metadata for AirPodsSWPairingCompleteCommandPayload;
      a1[4] = sub_100391A98();
      *a1 = v54;
      a1[1] = v55;
      v56 = v1[11];
      v82 = v1[10];
      v83 = v56;
      v84 = v1[12];
      v85 = *(v1 + 26);
      v57 = v1[7];
      v78 = v1[6];
      v79 = v57;
      v58 = v1[9];
      v80 = v1[8];
      v81 = v58;
      v59 = v1[3];
      v74 = v1[2];
      v75 = v59;
      v60 = v1[5];
      v76 = v1[4];
      v77 = v60;
      v61 = v1[1];
      v72 = *v1;
      v73 = v61;
      v62 = sub_10004CA28(&v72);
      return sub_100017D5C(*v62, *(v62 + 8));
    }

    v23 = sub_10004CA28(v86);
    a1[3] = &type metadata for AirPodsMCSendPairingStatusCommandPayload;
    a1[4] = sub_1009A1F58();
    v24 = swift_allocObject();
    *a1 = v24;
    v25 = v23[3];
    v27 = *v23;
    v26 = v23[1];
    v24[3] = v23[2];
    v24[4] = v25;
    v24[1] = v27;
    v24[2] = v26;
    v28 = v1[11];
    v82 = v1[10];
    v83 = v28;
    v84 = v1[12];
    v85 = *(v1 + 26);
    v29 = v1[7];
    v78 = v1[6];
    v79 = v29;
    v30 = v1[9];
    v80 = v1[8];
    v81 = v30;
    v31 = v1[3];
    v74 = v1[2];
    v75 = v31;
    v32 = v1[5];
    v76 = v1[4];
    v77 = v32;
    v33 = v1[1];
    v72 = *v1;
    v73 = v33;
    v34 = sub_10004CA28(&v72);
    v35 = &unk_1016B82A0;
    v36 = &unk_1013DE2D0;
    return sub_1000D2A70(v34, v71, v35, v36);
  }

  if (v9 == 6)
  {
    a1[3] = &type metadata for AccessoryGenericPayload;
    result = sub_10030FF74();
  }

  else
  {
    a1[3] = &type metadata for UnpairCommandPayload;
    result = sub_10027EE90();
  }

  a1[4] = result;
  return result;
}

double sub_100C02A90@<D0>(uint64_t a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>, unint64_t a5@<X3>)
{
  sub_100C02E28(a2, a3, a4, a5, v14);
  if (!v5)
  {
    v8 = v14[11];
    *(a1 + 160) = v14[10];
    *(a1 + 176) = v8;
    *(a1 + 192) = v14[12];
    *(a1 + 208) = v15;
    v9 = v14[7];
    *(a1 + 96) = v14[6];
    *(a1 + 112) = v9;
    v10 = v14[9];
    *(a1 + 128) = v14[8];
    *(a1 + 144) = v10;
    v11 = v14[3];
    *(a1 + 32) = v14[2];
    *(a1 + 48) = v11;
    v12 = v14[5];
    *(a1 + 64) = v14[4];
    *(a1 + 80) = v12;
    result = *v14;
    v13 = v14[1];
    *a1 = v14[0];
    *(a1 + 16) = v13;
  }

  return result;
}

double sub_100C02B34@<D0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v14 = a1;
  sub_100101824();
  FixedWidthInteger.data.getter();
  sub_1003CD9CC();
  BinaryDecodable.init(data:)();
  if (!v2)
  {
    v11[0] = v13;
    sub_1009A1D78(v11);
    v5 = v11[11];
    *(a2 + 160) = v11[10];
    *(a2 + 176) = v5;
    *(a2 + 192) = v11[12];
    *(a2 + 208) = v12;
    v6 = v11[7];
    *(a2 + 96) = v11[6];
    *(a2 + 112) = v6;
    v7 = v11[9];
    *(a2 + 128) = v11[8];
    *(a2 + 144) = v7;
    v8 = v11[3];
    *(a2 + 32) = v11[2];
    *(a2 + 48) = v8;
    v9 = v11[5];
    *(a2 + 64) = v11[4];
    *(a2 + 80) = v9;
    result = *v11;
    v10 = v11[1];
    *a2 = v11[0];
    *(a2 + 16) = v10;
  }

  return result;
}

uint64_t sub_100C02C18(uint64_t *a1, void *a2, uint64_t a3, unint64_t a4)
{
  result = sub_100A743A8(a3, a4);
  if (!v4)
  {
    v10 = result;
    v11 = v8;
    v12 = v9;
    sub_100017D5C(result, v8);
    sub_100496024(v10, v11, v15);
    v13 = v15[0];
    v14 = v15[1];
    a1[3] = &type metadata for CollaborativeKeyGen.v2.C2;
    a1[4] = sub_1001023F4();
    *a1 = v13;
    a1[1] = v14;
    a2[3] = type metadata accessor for CollaborativeKeyGen.v2.OwnerContext();
    a2[4] = &off_101645BC0;
    result = sub_100016590(v10, v11);
    *a2 = v12;
  }

  return result;
}

__n128 sub_100C02CF8@<Q0>(uint64_t a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, unint64_t a4@<X2>)
{
  sub_100C04520(a2, a3, a4, v8);
  if (!v4)
  {
    v7 = v8[3];
    *(a1 + 32) = v8[2];
    *(a1 + 48) = v7;
    *(a1 + 64) = v8[4];
    result = v8[1];
    *a1 = v8[0];
    *(a1 + 16) = result;
  }

  return result;
}

unint64_t sub_100C02D50(uint64_t a1)
{
  *(a1 + 8) = sub_100C02D80();
  result = sub_100C02DD4();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_100C02D80()
{
  result = qword_1016B8290;
  if (!qword_1016B8290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B8290);
  }

  return result;
}

unint64_t sub_100C02DD4()
{
  result = qword_1016B8298;
  if (!qword_1016B8298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B8298);
  }

  return result;
}

uint64_t sub_100C02E28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v127 = a4;
  v128 = a3;
  v9 = type metadata accessor for String.Encoding();
  v130 = *(v9 - 8);
  v131 = v9;
  __chkstk_darwin(v9);
  v129 = &v120 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000BC4D4(&qword_1016B0728, &qword_1013CDFE0);
  __chkstk_darwin(v11 - 8);
  v13 = &v120 - v12;
  v14 = type metadata accessor for AirPodsLEPairingLockCheckResponse(0);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v120 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = a2;
  sub_10001F280(a2, &v134);
  v132 = sub_1000BC4D4(&qword_1016B0730, &unk_1013DE2E0);
  v18 = swift_dynamicCast();
  v19 = *(v15 + 56);
  if (v18)
  {
    v19(v13, 0, 1, v14);
    sub_1009A1C54(v13, v17);
    sub_10099E5C0(v17, a1);
    if (v5)
    {
      return sub_1009A1CB8(v17);
    }

    v31 = OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_collaborativeKeyC2;
    swift_beginAccess();
    sub_1000D2A70(a1 + v31, &v134, &qword_101697378, &unk_101391940);
    v32 = *(&v135 + 1);
    if (!*(&v135 + 1))
    {
      sub_10000B3A8(&v134, &qword_101697378, &unk_101391940);
      sub_100413200();
      swift_allocError();
      *v55 = 8;
      swift_willThrow();
      return sub_1009A1CB8(v17);
    }

    v120 = a5;
    v126 = v17;
    v33 = v136;
    v34 = sub_1000035D0(&v134, *(&v135 + 1));
    v35 = *(v32 - 8);
    __chkstk_darwin(v34);
    v37 = &v120 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v35 + 16))(v37);
    sub_10000B3A8(&v134, &qword_101697378, &unk_101391940);
    v38 = (*(*(*(v33 + 8) + 8) + 40))(v32);
    v40 = v39;
    (*(v35 + 8))(v37, v32);
    if (qword_1016946B0 != -1)
    {
      swift_once();
    }

    v41 = type metadata accessor for Logger();
    v42 = sub_1000076D4(v41, qword_10177ACB0);
    sub_100017D5C(v38, v40);
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.default.getter();
    sub_100016590(v38, v40);
    v45 = os_log_type_enabled(v43, v44);
    v46 = v38;
    v125 = v40;
    if (v45)
    {
      v47 = swift_slowAlloc();
      v122 = swift_slowAlloc();
      *&v134 = v122;
      *v47 = 136446210;
      v48 = Data.hexString.getter();
      v50 = sub_1000136BC(v48, v49, &v134);
      LODWORD(v121) = v44;
      v51 = v50;

      *(v47 + 4) = v51;
      v46 = v38;
      _os_log_impl(&_mh_execute_header, v43, v121, "sharedCommitment: %{public}s", v47, 0xCu);
      sub_100007BAC(v122);
    }

    if (*(a1 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_standalonePairing) == 1)
    {
      v129 = a1;
      type metadata accessor for __DataStorage();
      swift_allocObject();
      v52 = __DataStorage.init(length:)();
      *&v134 = 0x3C00000000;
      *(&v134 + 1) = v52;
      sub_1007765FC(&v134, 0);
      v53 = v134;
      v54 = *(&v134 + 1) | 0x4000000000000000;
LABEL_24:
      sub_100017D5C(v53, v54);
      v62 = Logger.logObject.getter();
      v63 = static os_log_type_t.default.getter();
      sub_100016590(v53, v54);
      v64 = os_log_type_enabled(v62, v63);
      v123 = v42;
      v124 = v46;
      v130 = v54;
      v131 = v53;
      if (v64)
      {
        v65 = swift_slowAlloc();
        v66 = swift_slowAlloc();
        *&v134 = v66;
        *v65 = 136446210;
        sub_100017D5C(v53, v54);
        v67 = Data.description.getter();
        v68 = v53;
        v69 = v67;
        v71 = v70;
        sub_100016590(v68, v54);
        v72 = sub_1000136BC(v69, v71, &v134);

        *(v65 + 4) = v72;
        _os_log_impl(&_mh_execute_header, v62, v63, "maskedIdentifier: %{public}s", v65, 0xCu);
        sub_100007BAC(v66);
      }

      v73 = v129;
      *&v134 = *(v129 + 32);
      sub_100102194();
      v74 = FixedWidthInteger.data.getter();
      v76 = v75;
      sub_100017D5C(v74, v75);
      v77 = Logger.logObject.getter();
      v78 = static os_log_type_t.default.getter();
      sub_100016590(v74, v76);
      v79 = os_log_type_enabled(v77, v78);
      v121 = v76;
      v122 = v74;
      if (v79)
      {
        v80 = swift_slowAlloc();
        v81 = swift_slowAlloc();
        *&v134 = v81;
        *v80 = 136446210;
        v82 = Data.hexString.getter();
        v84 = v73;
        v85 = sub_1000136BC(v82, v83, &v134);

        *(v80 + 4) = v85;
        v73 = v84;
        _os_log_impl(&_mh_execute_header, v77, v78, "response.pairingEpoch: %{public}s", v80, 0xCu);
        sub_100007BAC(v81);
      }

      v86 = *(v73 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_serverSeed + 8);
      if (v86 >> 60 == 15 || (v87 = *(v73 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_serverSignatureS3 + 8), v87 >> 60 == 15) || (v88 = *(v73 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_baaAccLeafCert + 8), v88 >> 60 == 15) || (v89 = (v73 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_baaAccIntCA1), v90 = *(v73 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_baaAccIntCA1 + 8), v90 >> 60 == 15))
      {
        sub_10001F280(v133, &v134);
        v91 = Logger.logObject.getter();
        v92 = static os_log_type_t.error.getter();
        v93 = os_log_type_enabled(v91, v92);
        v94 = v122;
        if (v93)
        {
          v95 = swift_slowAlloc();
          v96 = swift_slowAlloc();
          v151 = v96;
          *v95 = 136446210;
          sub_10001F280(&v134, v149);
          v97 = String.init<A>(describing:)();
          v99 = v98;
          sub_100007BAC(&v134);
          v100 = sub_1000136BC(v97, v99, &v151);

          *(v95 + 4) = v100;
          _os_log_impl(&_mh_execute_header, v91, v92, "Invalid pairing lock data %{public}s", v95, 0xCu);
          sub_100007BAC(v96);
        }

        else
        {

          sub_100007BAC(&v134);
        }

        v102 = v125;
        v101 = v126;
        v103 = v124;
        sub_100413200();
        swift_allocError();
        *v104 = 2;
        swift_willThrow();
        sub_100016590(v94, v121);
        sub_100016590(v131, v130);
        sub_100016590(v103, v102);
        return sub_1009A1CB8(v101);
      }

      else
      {
        v105 = *(v73 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_serverSeed);
        v132 = *(v73 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_serverSignatureS3);
        v106 = v132;
        v133 = v105;
        v129 = *(v73 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_baaAccLeafCert);
        v107 = v129;
        v108 = *v89;
        sub_10002E98C(v105, v86);
        sub_10002E98C(v106, v87);
        sub_10002E98C(v107, v88);
        sub_10002E98C(v108, v90);
        v110 = v127;
        v109 = v128;
        sub_100017D5C(v128, v127);
        *&v119 = v109;
        *(&v119 + 1) = v110;
        *(&v118 + 1) = v121;
        *&v118 = v122;
        sub_1008BB678(v124, v125, v133, v86, v131, v130, v132, v87, v150, v129, v88, v108, v90, v118, v119);
        sub_1009A1CB8(v126);
        v142 = v150[8];
        v143 = v150[9];
        v144 = v150[10];
        v145 = v150[11];
        v138 = v150[4];
        v139 = v150[5];
        v140 = v150[6];
        v141 = v150[7];
        v134 = v150[0];
        v135 = v150[1];
        v136 = v150[2];
        v137 = v150[3];
        result = sub_1001DA318(&v134);
        v111 = v145;
        v112 = v120;
        *(v120 + 160) = v144;
        *(v112 + 176) = v111;
        *(v112 + 192) = v146;
        *(v112 + 208) = v147;
        v113 = v141;
        *(v112 + 96) = v140;
        *(v112 + 112) = v113;
        v114 = v143;
        *(v112 + 128) = v142;
        *(v112 + 144) = v114;
        v115 = v137;
        *(v112 + 32) = v136;
        *(v112 + 48) = v115;
        v116 = v139;
        *(v112 + 64) = v138;
        *(v112 + 80) = v116;
        v117 = v135;
        *v112 = v134;
        *(v112 + 16) = v117;
      }

      return result;
    }

    if (*(a1 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_maskedAppleId + 8))
    {

      v56 = v129;
      static String.Encoding.utf8.getter();
      v53 = String.data(using:allowLossyConversion:)();
      v54 = v57;

      (*(v130 + 8))(v56, v131);
      if (v54 >> 60 != 15)
      {
        v129 = a1;
        goto LABEL_24;
      }
    }

    v58 = Logger.logObject.getter();
    v59 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      *v60 = 0;
      _os_log_impl(&_mh_execute_header, v58, v59, "Unable to decode masked apple ID", v60, 2u);
    }

    sub_100413200();
    swift_allocError();
    *v61 = 7;
    swift_willThrow();
    sub_100016590(v46, v125);
    return sub_1009A1CB8(v126);
  }

  else
  {
    v19(v13, 1, 1, v14);
    sub_10000B3A8(v13, &qword_1016B0728, &qword_1013CDFE0);
    if (qword_1016946B0 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_1000076D4(v21, qword_10177ACB0);
    sub_10001F280(v133, &v134);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v148[0] = v25;
      *v24 = 136446210;
      sub_10001F280(&v134, v149);
      v26 = String.init<A>(describing:)();
      v28 = v27;
      sub_100007BAC(&v134);
      v29 = sub_1000136BC(v26, v28, v148);

      *(v24 + 4) = v29;
      _os_log_impl(&_mh_execute_header, v22, v23, "Invalid pairing lock response %{public}s", v24, 0xCu);
      sub_100007BAC(v25);
    }

    else
    {

      sub_100007BAC(&v134);
    }

    sub_100413200();
    swift_allocError();
    *v30 = 2;
    return swift_willThrow();
  }
}

void *sub_100C03C24(uint64_t a1, uint64_t a2)
{
  sub_10001F280(a1, v85);
  sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
  if (swift_dynamicCast())
  {
    v80 = v84[0];
    v81 = v84[1];
    v82 = v84[2];
    v83 = v84[3];
    if (qword_1016946B0 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_1000076D4(v5, qword_10177ACB0);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "Received pairing status.", v8, 2u);
    }

    v9 = v81;
    sub_100017D5C(v81, *(&v81 + 1));
    v10 = sub_1008CDF88(v81, *(&v81 + 1));
    if (v10)
    {
      v11 = v10;
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v76 = v15;
        *v14 = 136446210;
        v16 = sub_1008CDD10(v11);
        v18 = sub_1000136BC(v16, v17, &v76);

        *(v14 + 4) = v18;
        _os_log_impl(&_mh_execute_header, v12, v13, "Pairing failed with status %{public}s", v14, 0xCu);
        sub_100007BAC(v15);
      }

      sub_100413200();
      swift_allocError();
      v20 = 4;
LABEL_20:
      *v19 = v20;
      swift_willThrow();
      return sub_1009A2054(&v80);
    }

    sub_100017D5C(v80, *(&v80 + 1));
    sub_10049636C(v80, *(&v80 + 1), &v76);
    if (v2)
    {

      sub_100C046EC(&v80, &v76);
      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.error.getter();
      sub_1009A2054(&v80);
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v76 = v35;
        *v34 = 136315138;
        v36 = Data.hexString.getter();
        v38 = sub_1000136BC(v36, v37, &v76);

        *(v34 + 4) = v38;
        _os_log_impl(&_mh_execute_header, v32, v33, "Invalid C3: %s", v34, 0xCu);
        sub_100007BAC(v35);
      }

      sub_100413200();
      swift_allocError();
      v20 = 9;
      goto LABEL_20;
    }

    v75 = v76;
    v74 = v77;
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.default.getter();
    v41 = os_log_type_enabled(v39, v40);
    v86 = a2;
    if (v41)
    {
      v42 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      v76 = v72;
      *v42 = 136446210;
      v43 = sub_1008CDD10(0);
      v45 = sub_1000136BC(v43, v44, &v76);

      *(v42 + 4) = v45;
      _os_log_impl(&_mh_execute_header, v39, v40, "status: %{public}s", v42, 0xCu);
      sub_100007BAC(v72);
    }

    sub_100C046EC(&v80, &v76);
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v46, v47))
    {
      sub_1009A2054(&v80);
LABEL_36:

      sub_100C046EC(&v80, &v76);
      v58 = Logger.logObject.getter();
      v59 = static os_log_type_t.default.getter();
      sub_1009A2054(&v80);
      if (os_log_type_enabled(v58, v59))
      {
        v60 = swift_slowAlloc();
        v61 = swift_slowAlloc();
        v76 = v61;
        *v60 = 136315138;
        v62 = Data.hexString.getter();
        v64 = sub_1000136BC(v62, v63, &v76);

        *(v60 + 4) = v64;
        _os_log_impl(&_mh_execute_header, v58, v59, "C3: %s", v60, 0xCu);
        sub_100007BAC(v61);
      }

      v78 = &type metadata for CollaborativeKeyGen.v2.C3;
      v79 = sub_10010194C();
      v76 = v75;
      v77 = v74;
      v65 = OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_collaborativeKeyC3;
      v66 = v86;
      swift_beginAccess();
      sub_100C04748(&v76, v66 + v65);
      swift_endAccess();
      v67 = *(v66 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_status);
      v68 = *(v66 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_status + 8);
      *(v66 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_status) = v9;
      sub_100017D5C(v9, *(&v9 + 1));
      sub_100006654(v67, v68);
      v69 = v82;
      sub_100017D5C(v82, *(&v82 + 1));
      sub_1009A2054(&v80);
      v70 = *(v66 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_payloadSignatureS4);
      v71 = *(v66 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_payloadSignatureS4 + 8);
      *(v66 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_payloadSignatureS4) = v69;
      return sub_100006654(v70, v71);
    }

    v48 = swift_slowAlloc();
    result = swift_slowAlloc();
    v73 = result;
    v76 = result;
    *v48 = 134218242;
    v49 = v82;
    v50 = *(&v82 + 1) >> 62;
    if ((*(&v82 + 1) >> 62) > 1)
    {
      if (v50 != 2)
      {
        v51 = 0;
        goto LABEL_35;
      }

      v53 = *(v82 + 16);
      v52 = *(v82 + 24);
      v54 = __OFSUB__(v52, v53);
      v51 = v52 - v53;
      if (!v54)
      {
        goto LABEL_35;
      }

      __break(1u);
    }

    else if (!v50)
    {
      v51 = BYTE14(v82);
LABEL_35:
      *(v48 + 4) = v51;
      sub_1009A2054(&v80);
      *(v48 + 12) = 2080;
      v55 = Data.hexString.getter();
      v57 = sub_1000136BC(v55, v56, &v76);

      *(v48 + 14) = v57;
      _os_log_impl(&_mh_execute_header, v46, v47, "S4 count %ld: %s", v48, 0x16u);
      sub_100007BAC(v73);

      goto LABEL_36;
    }

    LODWORD(v51) = HIDWORD(v49) - v49;
    if (__OFSUB__(HIDWORD(v49), v49))
    {
      __break(1u);
      return result;
    }

    v51 = v51;
    goto LABEL_35;
  }

  if (qword_1016946B0 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  sub_1000076D4(v21, qword_10177ACB0);
  sub_10001F280(a1, v84);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v76 = v25;
    *v24 = 136446210;
    sub_10001F280(v84, &v80);
    v26 = String.init<A>(describing:)();
    v28 = v27;
    sub_100007BAC(v84);
    v29 = sub_1000136BC(v26, v28, &v76);

    *(v24 + 4) = v29;
    _os_log_impl(&_mh_execute_header, v22, v23, "Invalid sendPairingStatus payload %{public}s", v24, 0xCu);
    sub_100007BAC(v25);
  }

  else
  {

    sub_100007BAC(v84);
  }

  sub_100413200();
  swift_allocError();
  *v30 = 0;
  return swift_willThrow();
}

uint64_t sub_100C04520@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  if (a3 >> 60 == 15)
  {
    sub_100413200();
    swift_allocError();
    *v5 = 9;
    return swift_willThrow();
  }

  v9 = v4;
  sub_10001F280(a1, v18);
  sub_100017D5C(a2, a3);
  sub_1000BC4D4(&qword_1016973C0, &unk_10138BF40);
  type metadata accessor for CollaborativeKeyGen.v2.OwnerContext();
  if (!swift_dynamicCast())
  {
    sub_100413200();
    swift_allocError();
    *v14 = 5;
    swift_willThrow();
    return sub_100006654(a2, a3);
  }

  v11 = v19;
  CCCKG2ParamsP224Sha256Version2();
  OpeningSize = CCCKG2GetOpeningSize();

  sub_1001003F4(a2, a3, v11, OpeningSize, v17);
  if (v9)
  {

    sub_100413200();
    swift_allocError();
    *v13 = 10;
    swift_willThrow();

    return sub_100006654(a2, a3);
  }

  sub_100006654(a2, a3);

  v15 = v17[3];
  a4[2] = v17[2];
  a4[3] = v15;
  a4[4] = v17[4];
  v16 = v17[1];
  *a4 = v17[0];
  a4[1] = v16;
  return result;
}

uint64_t sub_100C04748(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_101697320, &qword_10138BE90);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100C047B8(uint64_t a1)
{
  v1 = (*(a1 + 208) >> 59) & 6;
  if (v1 == 6)
  {
    return (*a1 + 6);
  }

  else
  {
    return v1 | (*(a1 + 192) >> 63);
  }
}

uint64_t sub_100C047E4(uint64_t result, unsigned int a2)
{
  if (a2 < 6)
  {
    v2 = *(result + 24) & 0xCFFFFFFFFFFFFFFFLL;
    v3 = *(result + 40) & 0xCFFFFFFFFFFFFFFFLL;
    v4 = *(result + 56) & 0xCFFFFFFFFFFFFFFFLL;
    v5 = *(result + 72) & 0xCFFFFFFFFFFFFFFFLL;
    v6 = *(result + 88) & 0xCFFFFFFFFFFFFFFFLL;
    v7 = *(result + 104) & 0xCFFFFFFFFFFFFFFFLL;
    v8 = *(result + 120) & 0xCFFFFFFFFFFFFFFFLL;
    v9 = *(result + 136) & 0xCFFFFFFFFFFFFFFFLL;
    v10 = *(result + 152) & 0xCFFFFFFFFFFFFFFFLL;
    v11 = *(result + 168) & 0xCFFFFFFFFFFFFFFFLL;
    v12 = a2 >> 1;
    v13 = *(result + 192) | (a2 << 63);
    v14 = *(result + 208) & 0xCFFFFFFFFFFFFFFFLL | ((v12 & 3) << 60);
    *(result + 8) &= 0xCFFFFFFFFFFFFFFFLL;
    *(result + 24) = v2;
    *(result + 40) = v3;
    *(result + 56) = v4;
    *(result + 72) = v5;
    *(result + 88) = v6;
    *(result + 104) = v7;
    *(result + 120) = v8;
    *(result + 136) = v9;
    *(result + 152) = v10;
    *(result + 168) = v11;
    *(result + 192) = v13;
    *(result + 208) = v14;
  }

  else
  {
    *result = a2 - 6;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    *(result + 56) = 0u;
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 104) = 0u;
    *(result + 120) = 0u;
    *(result + 136) = 0u;
    *(result + 152) = 0u;
    *(result + 168) = 0u;
    *(result + 184) = 0u;
    *(result + 200) = 0;
    *(result + 208) = 0x3000000000000000;
  }

  return result;
}

uint64_t sub_100C04A0C(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_100C04A90()
{
  v1 = *(v0 + 16);
  *(v1 + 24) = &type metadata for AirTagProductInfo;
  *(v1 + 32) = sub_100656218();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100C04B04(uint64_t a1, uint64_t a2)
{
  v39 = a1;
  v38 = sub_1000BC4D4(&qword_1016998C8, &qword_1013AAC70);
  v35 = *(v38 - 8);
  v2 = *(v35 + 64);
  __chkstk_darwin(v38);
  v4 = &v27 - v3;
  v5 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  __chkstk_darwin(v5 - 8);
  v7 = &v27 - v6;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  __chkstk_darwin(v11);
  v13 = &v27 - v12;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v15 = result;
    v36 = v13;
    UUID.init()();
    v30 = v4;
    v31 = *(v9 + 16);
    v27 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    v31(v27, v13, v8);
    v16 = *(v9 + 80);
    v34 = v9;
    v37 = v7;
    v32 = v16 | 7;
    v17 = swift_allocObject();
    v18 = v35;
    v28 = v8;
    v29 = v2;
    *(v17 + 16) = v15;
    v33 = *(v9 + 32);
    v19 = v27;
    v33(v17 + ((v16 + 24) & ~v16), v27, v8);

    v20 = v38;
    AsyncStream.Continuation.onTermination.setter();
    v21 = type metadata accessor for TaskPriority();
    (*(*(v21 - 8) + 56))(v37, 1, 1, v21);
    v22 = v30;
    (*(v18 + 16))(v30, v39, v20);
    v23 = v28;
    v31(v19, v36, v28);
    v24 = (*(v18 + 80) + 40) & ~*(v18 + 80);
    v25 = (v29 + v16 + v24) & ~v16;
    v26 = swift_allocObject();
    *(v26 + 2) = 0;
    *(v26 + 3) = 0;
    *(v26 + 4) = v15;
    (*(v18 + 32))(&v26[v24], v22, v38);
    v33(&v26[v25], v19, v23);

    sub_10025EDD4(0, 0, v37, &unk_1013DF6C0, v26);

    return (*(v34 + 8))(v36, v23);
  }

  return result;
}

uint64_t sub_100C04F08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v8 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  __chkstk_darwin(v8 - 8);
  v10 = &v15 - v9;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  (*(v6 + 16))(&v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v5);
  v12 = (*(v6 + 80) + 40) & ~*(v6 + 80);
  v13 = swift_allocObject();
  *(v13 + 2) = 0;
  *(v13 + 3) = 0;
  *(v13 + 4) = a2;
  (*(v6 + 32))(&v13[v12], &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);

  sub_10025EDD4(0, 0, v10, &unk_1013DF6E0, v13);
}

uint64_t sub_100C050E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return _swift_task_switch(sub_100C05108, a4, 0);
}

uint64_t sub_100C05108()
{
  sub_100C05168(*(v0 + 24));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100C05168(uint64_t a1)
{
  v3 = sub_1000BC4D4(&qword_1016998C0, &qword_1013DF6D0);
  __chkstk_darwin(v3 - 8);
  v5 = &v26 - v4;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v30 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v26 - v10;
  if (qword_101694758 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_1000076D4(v12, qword_10177ADD8);
  v29 = *(v7 + 16);
  v29(v11, a1, v6);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v27 = a1;
    v16 = v15;
    v17 = swift_slowAlloc();
    v28 = v1;
    v26 = v17;
    v31[0] = v17;
    *v16 = 136446210;
    sub_100C0A0A8(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = v5;
    v21 = v20;
    (*(v7 + 8))(v11, v6);
    v22 = sub_1000136BC(v18, v21, v31);
    v5 = v19;

    *(v16 + 4) = v22;
    _os_log_impl(&_mh_execute_header, v13, v14, "Removing lockStateContinuation for %{public}s", v16, 0xCu);
    sub_100007BAC(v26);

    a1 = v27;
  }

  else
  {

    (*(v7 + 8))(v11, v6);
  }

  v23 = v30;
  v29(v30, a1, v6);
  v24 = sub_1000BC4D4(&qword_1016998C8, &qword_1013AAC70);
  (*(*(v24 - 8) + 56))(v5, 1, 1, v24);
  swift_beginAccess();
  sub_1001DEBE4(v5, v23);
  return swift_endAccess();
}

uint64_t sub_100C054FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v8 = sub_1000BC4D4(&qword_1016A23A8, &qword_1013AAC68);
  v6[5] = v8;
  v6[6] = *(v8 - 8);
  v6[7] = swift_task_alloc();

  return _swift_task_switch(sub_100C055D0, a4, 0);
}

uint64_t sub_100C055D0()
{
  v1 = *(v0 + 16);
  sub_100C05708(*(v0 + 24), *(v0 + 32));
  *(v0 + 65) = *(v1 + 176);

  return _swift_task_switch(sub_100C05644, 0, 0);
}

uint64_t sub_100C05644()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = *(v0 + 40);
  *(v0 + 64) = *(v0 + 65);
  sub_1000BC4D4(&qword_1016998C8, &qword_1013AAC70);
  AsyncStream.Continuation.yield(_:)();
  (*(v2 + 8))(v1, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100C05708(uint64_t a1, uint64_t a2)
{
  v31 = a1;
  v3 = sub_1000BC4D4(&qword_1016998C0, &qword_1013DF6D0);
  __chkstk_darwin(v3 - 8);
  v5 = &v25 - v4;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v30 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v25 - v10;
  if (qword_101694758 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_1000076D4(v12, qword_10177ADD8);
  v29 = *(v7 + 16);
  v29(v11, a2, v6);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v28 = v5;
    v16 = v15;
    v26 = swift_slowAlloc();
    v32[0] = v26;
    *v16 = 136446210;
    sub_100C0A0A8(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v27 = a2;
    v19 = v18;
    (*(v7 + 8))(v11, v6);
    v20 = sub_1000136BC(v17, v19, v32);
    a2 = v27;

    *(v16 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v13, v14, "Storing lockStateContinuation for %{public}s", v16, 0xCu);
    sub_100007BAC(v26);

    v5 = v28;
  }

  else
  {

    (*(v7 + 8))(v11, v6);
  }

  v21 = v30;
  v29(v30, a2, v6);
  v22 = sub_1000BC4D4(&qword_1016998C8, &qword_1013AAC70);
  v23 = *(v22 - 8);
  (*(v23 + 16))(v5, v31, v22);
  (*(v23 + 56))(v5, 0, 1, v22);
  swift_beginAccess();
  sub_1001DEBE4(v5, v21);
  return swift_endAccess();
}

uint64_t sub_100C05AD4()
{
  v1[2] = v0;
  v1[3] = *v0;
  sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v1[4] = swift_task_alloc();

  return _swift_task_switch(sub_100C05B98, 0, 0);
}

uint64_t sub_100C05B98()
{
  v1 = *(v0 + 16);
  swift_defaultActor_initialize();
  v2 = OBJC_IVAR____TtC12searchpartyd16PairingUIManager_state;
  v3 = enum case for PairingUIState.idle(_:);
  v4 = type metadata accessor for PairingUIState();
  (*(*(v4 - 8) + 104))(v1 + v2, v3, v4);
  v5 = OBJC_IVAR____TtC12searchpartyd16PairingUIManager_sharingClient;
  *(v1 + v5) = [objc_allocWithZone(SFClient) init];
  *(v1 + OBJC_IVAR____TtC12searchpartyd16PairingUIManager_remoteUILauncher) = 0;
  *(v1 + OBJC_IVAR____TtC12searchpartyd16PairingUIManager_streamObserverTask) = 0;
  sub_1000BC4D4(&qword_1016B8528, &qword_1013DF688);
  swift_allocObject();
  *(v1 + OBJC_IVAR____TtC12searchpartyd16PairingUIManager_pairingUIStreamProvider) = AsyncStreamProvider.init()();
  v6 = swift_task_alloc();
  *(v0 + 40) = v6;
  *v6 = v0;
  v6[1] = sub_100C05CFC;

  return daemon.getter();
}

uint64_t sub_100C05CFC(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 48) = a1;

  v3 = swift_task_alloc();
  *(v2 + 56) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for SystemMonitorService();
  v6 = sub_100C0A0A8(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100C0A0A8(&qword_1016B1110, type metadata accessor for SystemMonitorService, &unk_1013AAB78);
  *v3 = v9;
  v3[1] = sub_100C05ED8;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100C05ED8(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {

    v5 = sub_100C0628C;
  }

  else
  {

    *(v4 + 64) = a1;
    v5 = sub_100C0602C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100C0602C()
{
  v1 = *(v0 + 16);
  *(v1 + OBJC_IVAR____TtC12searchpartyd16PairingUIManager_systemMonitorService) = *(v0 + 64);
  return _swift_task_switch(sub_100C06058, v1, 0);
}

uint64_t sub_100C06058()
{
  v1 = v0[2];
  v2 = *(v1 + OBJC_IVAR____TtC12searchpartyd16PairingUIManager_systemMonitorService);
  if (v2)
  {
    v4 = v0[3];
    v3 = v0[4];
    v5 = type metadata accessor for TaskPriority();
    (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
    v6 = sub_100C0A0A8(&qword_1016B84F8, type metadata accessor for PairingUIManager, &unk_1013DF620);
    v7 = swift_allocObject();
    v7[2] = v1;
    v7[3] = v6;
    v7[4] = v2;
    v7[5] = v1;
    v7[6] = v4;
    swift_retain_n();

    *(v1 + OBJC_IVAR____TtC12searchpartyd16PairingUIManager_streamObserverTask) = sub_10025EDD4(0, 0, v3, &unk_1013DF698, v7);
  }

  else
  {
    if (qword_101694D60 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_1000076D4(v8, qword_1016B8368);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "No SystemMonitorService available!", v11, 2u);
    }
  }

  v12 = v0[1];
  v13 = v0[2];

  return v12(v13);
}

uint64_t sub_100C0628C()
{
  v1 = *(v0 + 16);
  *(v1 + OBJC_IVAR____TtC12searchpartyd16PairingUIManager_systemMonitorService) = 0;
  return _swift_task_switch(sub_100C06058, v1, 0);
}

uint64_t sub_100C062B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v7 = sub_1000BC4D4(&qword_1016B8530, &qword_1013DF6A0);
  v5[5] = v7;
  v5[6] = *(v7 - 8);
  v5[7] = swift_task_alloc();
  v8 = sub_1000BC4D4(&qword_1016B8538, &qword_1013DF6A8);
  v5[8] = v8;
  v5[9] = *(v8 - 8);
  v5[10] = swift_task_alloc();
  v9 = sub_1000BC4D4(&qword_1016B8540, &qword_1013DF6B0);
  v5[11] = v9;
  v5[12] = *(v9 - 8);
  v5[13] = swift_task_alloc();

  return _swift_task_switch(sub_100C06454, a5, 0);
}

uint64_t sub_100C06454()
{
  if (qword_101694D60 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 112) = sub_1000076D4(v1, qword_1016B8368);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Start listening to lock state changes.", v4, 2u);
  }

  v5 = *(v0 + 24);

  return _swift_task_switch(sub_100C06578, v5, 0);
}

uint64_t sub_100C06578()
{
  v2 = v0[6];
  v1 = v0[7];
  v4 = v0[4];
  v3 = v0[5];
  swift_allocObject();
  swift_weakInit();
  (*(v2 + 104))(v1, enum case for AsyncStream.Continuation.BufferingPolicy.unbounded<A>(_:), v3);
  AsyncStream.init(_:bufferingPolicy:_:)();

  return _swift_task_switch(sub_100C06680, v4, 0);
}

uint64_t sub_100C06680()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  AsyncStream.makeAsyncIterator()();
  (*(v2 + 8))(v1, v3);
  v4 = sub_100C0A0A8(&qword_1016B84F8, type metadata accessor for PairingUIManager, &unk_1013DF620);
  v0[15] = v4;
  v0[16] = 0;
  v5 = v0[4];
  v6 = swift_task_alloc();
  v0[17] = v6;
  *v6 = v0;
  v6[1] = sub_100C0679C;
  v7 = v0[11];

  return AsyncStream.Iterator.next(isolation:)(v0 + 20, v5, v4, v7);
}

uint64_t sub_100C0679C()
{
  v1 = *(*v0 + 32);

  return _swift_task_switch(sub_100C068AC, v1, 0);
}

uint64_t sub_100C068AC(uint64_t a1)
{
  v2 = *(v1 + 160);
  if (v2 == 5)
  {
    (*(*(v1 + 96) + 8))(*(v1 + 104), *(v1 + 88));
    goto LABEL_24;
  }

  v3 = *(v1 + 128);
  static Task<>.checkCancellation()();
  *(v1 + 144) = v3;
  if (v3)
  {
    (*(*(v1 + 96) + 8))(*(v1 + 104), *(v1 + 88));
    swift_errorRetain();
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      *v6 = 138543362;
      swift_errorRetain();
      v8 = _swift_stdlib_bridgeErrorToNSError();
      *(v6 + 4) = v8;
      *v7 = v8;
      _os_log_impl(&_mh_execute_header, v4, v5, "Error in listening to lock state changes: %{public}@", v6, 0xCu);
      sub_10000B3A8(v7, &qword_10169BB30, &unk_10138B3C0);
    }

    else
    {
    }

LABEL_24:

    v24 = *(v1 + 8);

    return v24();
  }

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *(v1 + 16) = v12;
    v13 = 0xE700000000000000;
    v14 = 0x6E776F6E6B6E55;
    *v11 = 136446210;
    v15 = 0xE700000000000000;
    v16 = 0x676E696B636F4CLL;
    v17 = 0xE600000000000000;
    v18 = 0x64656B636F4CLL;
    if (v2 != 3)
    {
      v18 = 0x64656B636F6C6E55;
      v17 = 0xE800000000000000;
    }

    if (v2 != 2)
    {
      v16 = v18;
      v15 = v17;
    }

    if (v2)
    {
      v14 = 0x64656C6261736944;
      v13 = 0xE800000000000000;
    }

    if (v2 <= 1)
    {
      v19 = v14;
    }

    else
    {
      v19 = v16;
    }

    if (v2 <= 1)
    {
      v20 = v13;
    }

    else
    {
      v20 = v15;
    }

    v21 = sub_1000136BC(v19, v20, (v1 + 16));

    *(v11 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v9, v10, "Received lock state change event %{public}s.", v11, 0xCu);
    sub_100007BAC(v12);
  }

  v22 = swift_task_alloc();
  *(v1 + 152) = v22;
  *v22 = v1;
  v22[1] = sub_100C06C40;

  return sub_100C06DF0(v2);
}

uint64_t sub_100C06C40()
{
  v1 = *v0;
  v2 = *v0;

  v1[16] = v1[18];
  v3 = v1[15];
  v4 = v1[4];
  v5 = swift_task_alloc();
  v1[17] = v5;
  *v5 = v2;
  v5[1] = sub_100C0679C;
  v6 = v1[11];

  return AsyncStream.Iterator.next(isolation:)(v1 + 20, v4, v3, v6);
}

uint64_t sub_100C06DF0(char a1)
{
  *(v2 + 40) = v1;
  *(v2 + 80) = a1;
  v3 = type metadata accessor for PairingUIState();
  *(v2 + 48) = v3;
  *(v2 + 56) = *(v3 - 8);
  *(v2 + 64) = swift_task_alloc();

  return _swift_task_switch(sub_100C06EB4, v1, 0);
}

uint64_t sub_100C06EB4()
{
  if ((*(v0 + 80) & 0xFE) == 2)
  {
    v2 = *(v0 + 56);
    v1 = *(v0 + 64);
    v4 = *(v0 + 40);
    v3 = *(v0 + 48);
    v5 = OBJC_IVAR____TtC12searchpartyd16PairingUIManager_state;
    swift_beginAccess();
    (*(v2 + 16))(v1, v4 + v5, v3);
    LOBYTE(v4) = PairingUIState.interruptible.getter();
    (*(v2 + 8))(v1, v3);
    if (v4)
    {
      if (qword_101694D60 != -1)
      {
        swift_once();
      }

      v6 = type metadata accessor for Logger();
      sub_1000076D4(v6, qword_1016B8368);
      v7 = Logger.logObject.getter();
      v8 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 0;
        _os_log_impl(&_mh_execute_header, v7, v8, "Screen is locked and UI is displayed! Interrupting the flow...", v9, 2u);
      }

      v10 = *(v0 + 40);

      v11 = *(v10 + OBJC_IVAR____TtC12searchpartyd16PairingUIManager_remoteUILauncher);
      *(v0 + 72) = v11;
      if (v11)
      {

        return _swift_task_switch(sub_100C070BC, v11, 0);
      }

      sub_100C087A4();
    }
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_100C070BC()
{
  v1 = *(v0 + 40);
  v2 = *(*(v0 + 72) + OBJC_IVAR____TtC12searchpartyd18FMRemoteUILauncher_alertHandle);
  [v2 invalidate];

  return _swift_task_switch(sub_100C07158, v1, 0);
}

uint64_t sub_100C07158()
{
  sub_100C087A4();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100C071C0(uint64_t a1)
{
  v2[26] = a1;
  v2[27] = v1;
  v2[28] = type metadata accessor for FMRemoteUILauncher.AlertType(0);
  v2[29] = swift_task_alloc();
  v3 = type metadata accessor for PairingUIState();
  v2[30] = v3;
  v2[31] = *(v3 - 8);
  v2[32] = swift_task_alloc();
  v2[33] = swift_task_alloc();

  return _swift_task_switch(sub_100C072BC, v1, 0);
}

uint64_t sub_100C072BC()
{
  v1 = v0[32];
  v2 = v0[33];
  v3 = v0[30];
  v4 = v0[31];
  v5 = v0[27];
  v6 = OBJC_IVAR____TtC12searchpartyd16PairingUIManager_state;
  swift_beginAccess();
  v26 = v4[2];
  v27 = v5;
  v26(v2, v5 + v6, v3);
  v25 = v4[13];
  v25(v1, enum case for PairingUIState.idle(_:), v3);
  LOBYTE(v5) = static PairingUIState.== infix(_:_:)();
  v7 = v4[1];
  v7(v1, v3);
  v7(v2, v3);
  if (v5)
  {
    v9 = v0[32];
    v8 = v0[33];
    v11 = v0[30];
    v10 = v0[31];
    v25(v8, enum case for PairingUIState.alertPreparation(_:), v11);
    swift_beginAccess();
    (*(v10 + 24))(v27 + v6, v8, v11);
    swift_endAccess();
    v26(v9, v27 + v6, v11);
    AsyncStreamProvider.yield(value:transaction:)();
    v7(v9, v11);
    v7(v8, v11);
    if (qword_101694D60 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    v0[34] = v12;
    v0[35] = sub_1000076D4(v12, qword_1016B8368);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "Show detection view.", v15, 2u);
    }

    v16 = v0[27];

    v17 = *(v16 + OBJC_IVAR____TtC12searchpartyd16PairingUIManager_sharingClient);
    v0[2] = v0;
    v0[7] = v0 + 40;
    v0[3] = sub_100C07754;
    v18 = swift_continuation_init();
    v0[17] = sub_1000BC4D4(&qword_1016B8518, &qword_1013DF670);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_100C07E2C;
    v0[13] = &unk_10164D018;
    v0[14] = v18;
    [v17 startProxCardTransactionWithOptions:16 completion:v0 + 10];

    return _swift_continuation_await(v0 + 2);
  }

  else
  {
    if (qword_101694D60 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_1000076D4(v19, qword_1016B8368);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "Detection view already displayed. Skipping.", v22, 2u);
    }

    v23 = v0[1];

    return v23();
  }
}

uint64_t sub_100C07754()
{
  v1 = *(*v0 + 216);

  return _swift_task_switch(sub_100C07848, v1, 0);
}

uint64_t sub_100C07848(uint64_t a1)
{
  v2 = *(v1 + 320);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = v2;
    _os_log_impl(&_mh_execute_header, v3, v4, "startProxCardTransaction proceed = %{BOOL}d", v5, 8u);
  }

  if (v2)
  {
    v6 = *(v1 + 216);
    v7 = OBJC_IVAR____TtC12searchpartyd16PairingUIManager_remoteUILauncher;
    *(v1 + 288) = OBJC_IVAR____TtC12searchpartyd16PairingUIManager_remoteUILauncher;
    v8 = *(v6 + v7);
    if (v8)
    {
      *(v1 + 312) = v8;

      v9 = sub_100C07DA4;
      v10 = v8;
    }

    else
    {
      sub_10001F280(*(v1 + 208), *(v1 + 232));
      swift_storeEnumTagMultiPayload();
      *(v1 + 296) = sub_100C0A0A8(&qword_1016B8520, type metadata accessor for PairingUIManager, &unk_1013DF598);
      type metadata accessor for FMRemoteUILauncher(0);
      *(v1 + 304) = swift_allocObject();

      v9 = sub_100C07ABC;
      v10 = 0;
    }

    return _swift_task_switch(v9, v10, 0);
  }

  else
  {
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "Can't proceed with proxCard displaying.", v13, 2u);
    }

    sub_100C087A4();

    v14 = *(v1 + 8);

    return v14();
  }
}

uint64_t sub_100C07ABC()
{
  receiver = v0[19].receiver;
  swift_defaultActor_initialize();
  *&receiver[OBJC_IVAR____TtC12searchpartyd18FMRemoteUILauncher_alertHandle] = 0;
  v2 = OBJC_IVAR____TtC12searchpartyd18FMRemoteUILauncher_logger;
  if (qword_101694FA0 != -1)
  {
    swift_once();
  }

  super_class = v0[18].super_class;
  v3 = v0[19].receiver;
  v5 = v0[17].receiver;
  v6 = v0[14].super_class;
  v7 = sub_1000076D4(v5, qword_10177C288);
  (*(*(v5 - 8) + 16))(&receiver[v2], v7, v5);
  sub_100C09D38(v6, &v3[OBJC_IVAR____TtC12searchpartyd18FMRemoteUILauncher_alertType]);
  v8 = type metadata accessor for RemoteHandleObserverDelegateTrampoline();
  v9 = objc_allocWithZone(v8);
  *&v9[OBJC_IVAR____TtC12searchpartydP33_B6591815384A8DEB8885452F1FDF33D538RemoteHandleObserverDelegateTrampoline_delegate + 8] = 0;
  *(swift_unknownObjectWeakInit() + 8) = super_class;
  swift_unknownObjectWeakAssign();
  v0[12].receiver = v9;
  v0[12].super_class = v8;
  *&v3[OBJC_IVAR____TtC12searchpartyd18FMRemoteUILauncher_alertHandleDelegateTrampoline] = objc_msgSendSuper2(v0 + 12, "init");

  return _swift_task_switch(sub_100C07C4C, v3, 0);
}

uint64_t sub_100C07C4C()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 216);

  sub_100C09D9C(v1);

  return _swift_task_switch(sub_100C07CC4, v2, 0);
}

uint64_t sub_100C07CC4()
{
  v1 = v0[36];
  v2 = v0[27];
  *(v2 + v1) = v0[38];

  v3 = *(v2 + v1);
  if (v3)
  {
    v0[39] = v3;

    return _swift_task_switch(sub_100C07DA4, v3, 0);
  }

  else
  {

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_100C07DA4()
{
  sub_100EF6F7C();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100C07E2C(uint64_t a1, char a2)
{
  v3 = *sub_1000035D0((a1 + 32), *(a1 + 56));
  **(*(v3 + 64) + 40) = a2;

  return _swift_continuation_resume(v3);
}

uint64_t sub_100C07E88(int a1)
{
  v55 = a1;
  v2 = sub_1000BC4D4(&qword_1016B8508, &qword_1013DF660);
  __chkstk_darwin(v2);
  v4 = &v46 - v3;
  v5 = type metadata accessor for PairingUIState();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v53 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v54 = &v46 - v10;
  __chkstk_darwin(v9);
  v12 = &v46 - v11;
  v13 = sub_1000BC4D4(&qword_1016B8510, &qword_1013DF668);
  v14 = __chkstk_darwin(v13 - 8);
  v16 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v46 - v17;
  v19 = OBJC_IVAR____TtC12searchpartyd16PairingUIManager_state;
  swift_beginAccess();
  v52 = *(v6 + 16);
  v52(v12, v1 + v19, v5);
  v20 = (*(v6 + 88))(v12, v5);
  if (v20 != enum case for PairingUIState.displayed(_:))
  {
    return (*(v6 + 8))(v12, v5);
  }

  v47 = v16;
  v50 = v1;
  v49 = v20;
  (*(v6 + 96))(v12, v5);
  sub_100C09C58(v12, v18);
  v21 = *(v2 + 48);
  v22 = v18;
  v23 = v55;
  *v4 = v55 & 1;
  v51 = v22;
  sub_100C09CC8(v22, &v4[v21]);
  v24 = type metadata accessor for PairingUIState.Displayed();
  v25 = *(v24 - 8);
  v26 = *(v25 + 48);
  v48 = v21;
  v27 = v26(&v4[v21], 1, v24);
  if ((v23 & 1) == 0)
  {
    if (v27 != 1)
    {
      v37 = v47;
      v38 = v48;
      sub_100C09CC8(&v4[v48], v47);
      v39 = (*(v25 + 88))(v37, v24);
      v40 = v51;
      if (v39 == enum case for PairingUIState.Displayed.frozen(_:))
      {
        v41 = v54;
        (*(v25 + 56))(v54, 1, 1, v24);
        (*(v6 + 104))(v41, v49, v5);
        v42 = v50;
        swift_beginAccess();
        (*(v6 + 24))(v42 + v19, v41, v5);
        swift_endAccess();
        v43 = v42 + v19;
        v44 = v53;
        v52(v53, v43, v5);
        AsyncStreamProvider.yield(value:transaction:)();
        v45 = *(v6 + 8);
        v45(v44, v5);
        v45(v41, v5);
        sub_10000B3A8(v51, &qword_1016B8510, &qword_1013DF668);
        v35 = &v4[v38];
      }

      else
      {
        if (v39 != enum case for PairingUIState.Displayed.delayedFinish(_:))
        {
          sub_10000B3A8(v51, &qword_1016B8510, &qword_1013DF668);
          (*(v25 + 8))(v37, v24);
          goto LABEL_9;
        }

        sub_100C087A4();
        sub_10000B3A8(v40, &qword_1016B8510, &qword_1013DF668);
        v35 = &v4[v48];
      }

      v33 = &qword_1016B8510;
      v34 = &qword_1013DF668;
      return sub_10000B3A8(v35, v33, v34);
    }

LABEL_8:
    sub_10000B3A8(v51, &qword_1016B8510, &qword_1013DF668);
LABEL_9:
    v33 = &qword_1016B8508;
    v34 = &qword_1013DF660;
    v35 = v4;
    return sub_10000B3A8(v35, v33, v34);
  }

  if (v27 != 1)
  {
    goto LABEL_8;
  }

  v28 = v54;
  (*(v25 + 104))(v54, enum case for PairingUIState.Displayed.frozen(_:), v24);
  (*(v25 + 56))(v28, 0, 1, v24);
  (*(v6 + 104))(v28, v49, v5);
  v29 = v50;
  swift_beginAccess();
  (*(v6 + 24))(v29 + v19, v28, v5);
  swift_endAccess();
  v30 = v29 + v19;
  v31 = v53;
  v52(v53, v30, v5);
  AsyncStreamProvider.yield(value:transaction:)();
  v32 = *(v6 + 8);
  v32(v31, v5);
  v32(v28, v5);
  v33 = &qword_1016B8510;
  v34 = &qword_1013DF668;
  v35 = v51;
  return sub_10000B3A8(v35, v33, v34);
}