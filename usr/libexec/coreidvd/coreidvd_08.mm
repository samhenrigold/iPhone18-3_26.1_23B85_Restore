uint64_t sub_1000C703C()
{

  return _swift_task_switch(sub_1000C7188, 0, 0);
}

uint64_t sub_1000C7188()
{
  v22 = v0;
  memcpy(v0 + 5428, v0 + 5489, 0x1E8uLL);
  if (sub_1000A257C((v0 + 5428)) == 1)
  {
    goto LABEL_6;
  }

  memcpy(v0 + 5367, v0 + 5428, 0x1E8uLL);
  if (!v0[5424])
  {
    sub_10000BE18((v0 + 5489), &qword_100839998, &qword_1006DCAA0);
LABEL_6:
    v7 = v0[5579];
    (*(v0[5607] + 104))(v0[5608], enum case for DIPError.Code.missingAttributeConfig(_:), v0[5606]);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1000F09F8(&qword_100834130, 255, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    memcpy(v0 + 1075, (v7 + 32), 0x2181uLL);
    sub_10000BE18((v0 + 1075), &qword_100839990, &unk_1006C19E0);

    swift_unknownObjectRelease();

    type metadata accessor for LegacySynthesizedWorkflows();
    swift_deallocPartialClassInstance();

    v8 = v0[1];

    return v8();
  }

  v1 = v0[5597];
  sub_10000BBC4(v0[5577] + OBJC_IVAR____TtC8coreidvd21LegacyWorkflowPackage_persoWorkflow, v1, &unk_100839970, &qword_1006C19C0);
  v2 = sub_100007224(&qword_1008399A0, &qword_1006D48E0);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 48))(v1, 1, v2);
  v5 = v0[5597];
  v6 = v0[5579];
  if (v4 == 1)
  {
    sub_10000BE18((v0 + 5489), &qword_100839998, &qword_1006DCAA0);
    sub_10000BE18(v5, &unk_100839970, &qword_1006C19C0);
    *(v6 + 8648) = _swiftEmptyArrayStorage;
LABEL_14:
    v17 = swift_task_alloc();
    v0[5616] = v17;
    *v17 = v0;
    v17[1] = sub_1000C7764;

    return sub_1000CA7DC();
  }

  JWSSignedJSON.payload.getter();
  v10 = v0[5574];
  (*(v3 + 8))(v5, v2);
  *(v6 + 8648) = v10;
  v11 = *(v10 + 16);
  v18 = v10;

  if (!v11)
  {
LABEL_13:
    sub_10000BE18((v0 + 5489), &qword_100839998, &qword_1006DCAA0);

    goto LABEL_14;
  }

  v12 = 0;
  v13 = (v10 + 64);
  while (v12 < *(v18 + 16))
  {
    v14 = v0[5579];
    ++v12;
    v15 = *v13;
    v16 = *(v13 - 3);
    v19[0] = *(v13 - 4);
    v19[1] = v16;
    v20 = *(v13 - 1);
    v21 = v15;

    sub_1000C8480(v19, v14, (v0 + 5367));

    v13 += 5;
    if (v11 == v12)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000C7764(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 44936) = v1;

  if (v1)
  {
    v5 = sub_1000C80E4;
  }

  else
  {
    *(v4 + 44944) = a1;
    v5 = sub_1000C7898;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1000C7898()
{
  v1 = v0[5617];
  v2 = v0[5579];
  *(v2 + 8680) = v0[5618];

  swift_beginAccess();

  sub_1000E5888(v3, (v2 + 8744));
  if (v1)
  {
    swift_endAccess();

    v4 = v0[1];

    return v4();
  }

  else
  {
    v6 = v0[5579];
    swift_endAccess();

    if (*(v6 + 24))
    {
      v7 = v0[5579];
      swift_beginAccess();

      sub_1000E5888(v8, (v7 + 8752));
      swift_endAccess();
    }

    v9 = v0[5596];
    v10 = v0[5595];
    v11 = v0[5594];
    v43 = v0[5591];
    v41 = v0[5590];
    v34 = v0[5592];
    v35 = v0[5589];
    v12 = v0[5587];
    v37 = v0[5586];
    v33 = v0[5579];
    sub_10001F8D4(0, &qword_1008399A8, OS_dispatch_source_ptr);
    v0[5573] = _swiftEmptyArrayStorage;
    sub_1000F09F8(&qword_1008399B0, 255, &type metadata accessor for OS_dispatch_source.TimerFlags, &protocol conformance descriptor for OS_dispatch_source.TimerFlags);
    sub_100007224(&qword_1008399B8, &qword_1006D48E8);
    sub_1000BA30C(&unk_1008399C0, &qword_1008399B8, &qword_1006D48E8, &protocol conformance descriptor for [A]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    sub_10001F8D4(0, &qword_100845BD0, OS_dispatch_queue_ptr);
    v13 = static OS_dispatch_queue.main.getter();
    v14 = static OS_dispatch_source.makeTimerSource(flags:queue:)();

    (*(v10 + 8))(v9, v11);
    swift_beginAccess();
    *(v33 + 8688) = v14;
    swift_unknownObjectRelease();
    static DispatchTime.now()();
    *v35 = 600;
    (*(v12 + 104))(v35, enum case for DispatchTimeInterval.seconds(_:), v37);
    + infix(_:_:)();
    v15 = *(v12 + 8);
    v15(v35, v37);
    v16 = v41;
    v42 = *(v43 + 8);
    v42(v34, v16);
    if (*(v33 + 8688))
    {
      v17 = v0[5589];
      v18 = v0[5588];
      v36 = v0[5586];
      v38 = v0[5579];
      swift_getObjectType();
      v19 = enum case for DispatchTimeInterval.never(_:);
      v20 = type metadata accessor for DispatchTimeInterval();
      v21 = *(*(v20 - 8) + 104);
      v21(v17, v19, v20);
      *v18 = 0;
      v21(v18, enum case for DispatchTimeInterval.nanoseconds(_:), v20);
      swift_unknownObjectRetain();
      OS_dispatch_source_timer.schedule(deadline:repeating:leeway:)();
      swift_unknownObjectRelease();
      v15(v18, v36);
      v15(v17, v36);
      if (*(v38 + 8688))
      {
        v22 = v0[5585];
        v23 = v0[5584];
        v24 = v0[5582];
        v25 = v0[5581];
        v39 = v0[5580];
        v40 = v0[5583];
        swift_getObjectType();
        v26 = swift_allocObject();
        swift_weakInit();
        v0[5554] = sub_1000F7138;
        v0[5555] = v26;
        v0[5550] = _NSConcreteStackBlock;
        v0[5551] = 1107296256;
        v0[5552] = sub_100503A7C;
        v0[5553] = &unk_100806DF8;
        v27 = _Block_copy(v0 + 5550);
        swift_unknownObjectRetain();

        static DispatchQoS.unspecified.getter();
        sub_1000C8600();
        OS_dispatch_source.setEventHandler(qos:flags:handler:)();
        _Block_release(v27);
        swift_unknownObjectRelease();
        (*(v25 + 8))(v24, v39);
        (*(v23 + 8))(v22, v40);
      }
    }

    v28 = v0[5579];
    swift_beginAccess();
    v29 = v0[5593];
    v30 = v0[5590];
    if (*(v28 + 8688))
    {
      swift_endAccess();
      swift_getObjectType();
      swift_unknownObjectRetain();
      OS_dispatch_source.resume()();
      swift_unknownObjectRelease();

      v42(v29, v30);
    }

    else
    {
      v42(v0[5593], v0[5590]);
      swift_endAccess();
    }

    v31 = v0[1];
    v32 = v0[5579];

    return v31(v32);
  }
}

uint64_t sub_1000C80E4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000C8244(void *a1, uint64_t a2)
{
  v2 = a1;
  if (!a2)
  {
LABEL_30:

    return v2;
  }

  v4 = a1[2];

  if (!v4)
  {
    return a2;
  }

  v6 = sub_1006973D4(v5);
  v25 = v2;

  v8 = *(a2 + 16);
  if (!v8)
  {
    v2 = _swiftEmptyArrayStorage;
    goto LABEL_28;
  }

  v9 = 0;
  v10 = a2 + 32;
  v11 = v6 + 56;
  v2 = _swiftEmptyArrayStorage;
  v26 = a2 + 32;
  do
  {
    v12 = v9;
    while (1)
    {
      if (v12 >= v8)
      {
        __break(1u);
LABEL_33:
        __break(1u);
        return result;
      }

      v9 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_33;
      }

      if (*(v6 + 16))
      {
        break;
      }

LABEL_7:
      v12 = v9;
      if (v9 == v8)
      {
        goto LABEL_28;
      }
    }

    v13 = (v10 + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    Hasher.init(_seed:)();

    String.hash(into:)();
    v16 = Hasher._finalize()();
    v17 = -1 << *(v6 + 32);
    v18 = v16 & ~v17;
    if (((*(v11 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
    {
LABEL_6:

      goto LABEL_7;
    }

    v19 = ~v17;
    while (1)
    {
      v20 = (*(v6 + 48) + 16 * v18);
      v21 = *v20 == v15 && v20[1] == v14;
      if (v21 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v18 = (v18 + 1) & v19;
      if (((*(v11 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        goto LABEL_6;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_100172D4C(0, _swiftEmptyArrayStorage[2] + 1, 1);
    }

    v23 = _swiftEmptyArrayStorage[2];
    v22 = _swiftEmptyArrayStorage[3];
    if (v23 >= v22 >> 1)
    {
      result = sub_100172D4C((v22 > 1), v23 + 1, 1);
    }

    _swiftEmptyArrayStorage[2] = v23 + 1;
    v24 = &_swiftEmptyArrayStorage[2 * v23];
    v24[4] = v15;
    v24[5] = v14;
    v10 = v26;
  }

  while (v9 != v8);
LABEL_28:

  if (!_swiftEmptyArrayStorage[2])
  {

    v2 = v25;
    goto LABEL_30;
  }

  return v2;
}

uint64_t sub_1000C8480(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v5 = a1[1];
  v8 = a1[2];
  v7 = a1[3];
  v9 = a1[4];
  if (v8 && v8[2])
  {
    v10 = v8[4];
    v11 = v8[5];
    swift_beginAccess();
  }

  else
  {
    if (!v9 || (v15 = *(a3 + 464)) == 0 || !*(v15 + 16) || (v16 = sub_10003ADCC(v7, v9), (v17 & 1) == 0))
    {
      swift_beginAccess();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v20 = *(a2 + 8728);
      *(a2 + 8728) = 0x8000000000000000;
      v13 = 0;
      v14 = 0xE000000000000000;
      goto LABEL_11;
    }

    v18 = (*(v15 + 56) + 16 * v16);
    v10 = *v18;
    v11 = v18[1];
    swift_beginAccess();
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *(a2 + 8728);
  *(a2 + 8728) = 0x8000000000000000;
  v13 = v10;
  v14 = v11;
LABEL_11:
  sub_10016D3BC(v13, v14, 0, 0xE000000000000000, v6, v5, isUniquelyReferenced_nonNull_native);

  *(a2 + 8728) = v20;
  return swift_endAccess();
}

uint64_t sub_1000C8600()
{
  type metadata accessor for DispatchWorkItemFlags();
  sub_1000F09F8(&unk_1008341E0, 255, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100007224(&qword_100848A40, &unk_1006BF8C0);
  sub_1000BA30C(&qword_1008341F0, &qword_100848A40, &unk_1006BF8C0, &protocol conformance descriptor for [A]);
  return dispatch thunk of SetAlgebra.init<A>(_:)();
}

uint64_t sub_1000C86F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[2303] = v3;
  v4[2302] = a3;
  v4[2301] = a2;
  v4[2300] = a1;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v4[2304] = v5;
  v4[2305] = *(v5 - 8);
  v4[2306] = swift_task_alloc();
  v6 = type metadata accessor for DispatchQoS();
  v4[2307] = v6;
  v4[2308] = *(v6 - 8);
  v4[2309] = swift_task_alloc();
  v7 = type metadata accessor for DispatchTimeInterval();
  v4[2310] = v7;
  v4[2311] = *(v7 - 8);
  v4[2312] = swift_task_alloc();
  v4[2313] = swift_task_alloc();
  v8 = type metadata accessor for DispatchTime();
  v4[2314] = v8;
  v4[2315] = *(v8 - 8);
  v4[2316] = swift_task_alloc();
  v4[2317] = swift_task_alloc();
  v9 = type metadata accessor for OS_dispatch_source.TimerFlags();
  v4[2318] = v9;
  v4[2319] = *(v9 - 8);
  v4[2320] = swift_task_alloc();
  sub_100007224(&unk_100839970, &qword_1006C19C0);
  v4[2321] = swift_task_alloc();
  v10 = type metadata accessor for DIPError.Code();
  v4[2322] = v10;
  v4[2323] = *(v10 - 8);
  v4[2324] = swift_task_alloc();
  sub_100007224(&qword_100835540, &qword_1006C19D0);
  v4[2325] = swift_task_alloc();
  v11 = sub_100007224(&unk_100839980, &qword_1006C0A08);
  v4[2326] = v11;
  v4[2327] = *(v11 - 8);
  v4[2328] = swift_task_alloc();

  return _swift_task_switch(sub_1000C8A78, 0, 0);
}

uint64_t sub_1000C8A78()
{
  v1 = *(v0 + 18616);
  v2 = *(v0 + 18608);
  v3 = *(v0 + 18600);
  v4 = *(v0 + 18424);
  v5 = *(v0 + 18408);
  sub_1000F09E4((v0 + 16));
  memcpy((v4 + 32), (v0 + 16), 0x2181uLL);
  *(v4 + 8680) = 0u;
  *(v4 + 8696) = 0u;
  *(v4 + 8705) = 0u;
  *(v4 + 8728) = sub_10003E3EC(_swiftEmptyArrayStorage);
  *(v4 + 8736) = _swiftEmptyArrayStorage;
  *(v4 + 8744) = sub_10003E400(_swiftEmptyArrayStorage);
  *(v4 + 8752) = sub_10003E400(_swiftEmptyArrayStorage);
  *(v4 + 8720) = 1;
  sub_10000BBC4(v5 + OBJC_IVAR____TtC8coreidvd21LegacyWorkflowPackage_inoWorkflow, v3, &qword_100835540, &qword_1006C19D0);
  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    v6 = *(v0 + 18600);
    v7 = *(v0 + 18592);
    v8 = *(v0 + 18584);
    v9 = *(v0 + 18576);

    sub_10000BE18(v6, &qword_100835540, &qword_1006C19D0);
    (*(v8 + 104))(v7, enum case for DIPError.Code.serverResponseInconsistent(_:), v9);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1000F09F8(&qword_100834130, 255, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    memcpy((v0 + 8600), (v4 + 32), 0x2181uLL);
    sub_10000BE18(v0 + 8600, &qword_100839990, &unk_1006C19E0);

    swift_unknownObjectRelease();

    type metadata accessor for LegacySynthesizedWorkflows();
    swift_deallocPartialClassInstance();

    v10 = *(v0 + 8);

    return v10();
  }

  else
  {
    v12 = *(v0 + 18624);
    v13 = *(v0 + 18616);
    v14 = *(v0 + 18608);
    v15 = *(v0 + 18424);
    v16 = *(v0 + 18416);
    v17 = *(v0 + 18408);
    v18 = *(v0 + 18400);
    (*(v13 + 32))(v12, *(v0 + 18600), v14);
    JWSSignedJSON.payload.getter();
    (*(v13 + 8))(v12, v14);
    v19 = *(v0 + 18376);
    *(v15 + 8672) = 0;
    *(v15 + 16) = v19;
    if (*(v17 + OBJC_IVAR____TtC8coreidvd21LegacyWorkflowPackage_nonces))
    {
      v20 = *(v17 + OBJC_IVAR____TtC8coreidvd21LegacyWorkflowPackage_nonces);
    }

    else
    {
      v20 = _swiftEmptyArrayStorage;
    }

    *(v15 + 8640) = v20;
    *(v15 + 8696) = 0;
    *(v15 + 8712) = 0;
    *(v15 + 24) = v18[3];
    v21 = v18[1078];
    *(v15 + 8616) = v18[1077];
    *(v15 + 8624) = v21;
    *(v15 + 8632) = v18[1079];
    v22 = v18[1083];
    *(v15 + 8656) = v18[1082];
    *(v15 + 8664) = v22;
    *(v15 + 8704) = v18[1088];
    v23 = *(v19 + 176);

    v24 = sub_1000C8244(v23, v16);
    *(v0 + 18632) = v24;

    if (qword_100832CF8 != -1)
    {
      swift_once();
    }

    v25 = swift_task_alloc();
    *(v0 + 18640) = v25;
    *v25 = v0;
    v25[1] = sub_1000C8FF4;

    return sub_1005B0A4C(v0 + 17672, 0, 0, v24, 1, 0);
  }
}

uint64_t sub_1000C8FF4()
{

  return _swift_task_switch(sub_1000C910C, 0, 0);
}

unint64_t sub_1000C910C()
{
  memcpy(v0 + 2148, v0 + 2209, 0x1E8uLL);
  if (sub_1000A257C((v0 + 2148)) != 1)
  {
    if (v0[2205])
    {
      v1 = v0[2206];
      v2 = v0[2321];
      sub_10000BBC4(v0[2301] + OBJC_IVAR____TtC8coreidvd21LegacyWorkflowPackage_persoWorkflow, v2, &unk_100839970, &qword_1006C19C0);
      v3 = sub_100007224(&qword_1008399A0, &qword_1006D48E0);
      v4 = *(v3 - 8);
      v5 = (*(v4 + 48))(v2, 1, v3);
      v6 = v0[2321];
      v7 = v0[2303];
      if (v5 == 1)
      {
        v8 = v0[2300];
        sub_10000BE18((v0 + 2209), &qword_100839998, &qword_1006DCAA0);
        sub_10000BE18(v6, &unk_100839970, &qword_1006C19C0);
        *(v7 + 8648) = *(v8 + 8648);

LABEL_48:
        v58 = swift_task_alloc();
        v0[2331] = v58;
        *v58 = v0;
        v58[1] = sub_1000C9A58;

        return sub_1000CA7DC();
      }

      JWSSignedJSON.payload.getter();
      v12 = v0[2299];
      (*(v4 + 8))(v6, v3);
      *(v7 + 8648) = v12;
      v13 = *(v12 + 16);

      if (!v13)
      {
LABEL_47:
        sub_10000BE18((v0 + 2209), &qword_100839998, &qword_1006DCAA0);

        goto LABEL_48;
      }

      v14 = 0;
      v15 = (v12 + 64);
      v61 = v1;
      v62 = v12;
      v60 = v13;
      while (1)
      {
        if (v14 >= *(v12 + 16))
        {
          __break(1u);
LABEL_55:
          __break(1u);
LABEL_56:
          __break(1u);
LABEL_57:
          __break(1u);
LABEL_58:
          __break(1u);
          return result;
        }

        v17 = *(v15 - 3);
        v65 = *(v15 - 4);
        v19 = *(v15 - 2);
        v18 = *(v15 - 1);
        v20 = *v15;
        if (!v19 || !v19[2])
        {
          if (v20)
          {
            v32 = v1 == 0;
          }

          else
          {
            v32 = 1;
          }

          if (v32 || !*(v1 + 16))
          {
            goto LABEL_13;
          }

          swift_bridgeObjectRetain_n();
          v33 = sub_10003ADCC(v18, v20);
          v64 = v17;
          v35 = v34;

          if (v35)
          {
            v36 = v0[2303];
            v37 = (*(v1 + 56) + 16 * v33);
            v38 = v37[1];
            v59 = *v37;
            swift_beginAccess();
            v39 = v38;

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v41 = *(v36 + 8728);
            *(v36 + 8728) = 0x8000000000000000;
            v43 = sub_10003ADCC(v65, v64);
            v44 = v41[2];
            v45 = (v42 & 1) == 0;
            result = v44 + v45;
            if (__OFADD__(v44, v45))
            {
              goto LABEL_57;
            }

            v46 = v42;
            if (v41[3] >= result)
            {
              if (isUniquelyReferenced_nonNull_native)
              {
                v1 = v61;
                if ((v42 & 1) == 0)
                {
                  goto LABEL_43;
                }
              }

              else
              {
                result = sub_100170590();
                v1 = v61;
                if ((v46 & 1) == 0)
                {
                  goto LABEL_43;
                }
              }
            }

            else
            {
              sub_100167CE0(result, isUniquelyReferenced_nonNull_native);
              result = sub_10003ADCC(v65, v64);
              if ((v46 & 1) != (v47 & 1))
              {
LABEL_51:

                return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
              }

              v43 = result;
              v1 = v61;
              if ((v46 & 1) == 0)
              {
LABEL_43:
                v41[(v43 >> 6) + 8] |= 1 << v43;
                v54 = (v41[6] + 16 * v43);
                *v54 = v65;
                v54[1] = v64;
                v55 = (v41[7] + 32 * v43);
                *v55 = v59;
                v55[1] = v39;
                v55[2] = 0;
                v55[3] = 0xE000000000000000;
                v56 = v41[2];
                v28 = __OFADD__(v56, 1);
                v57 = v56 + 1;
                if (v28)
                {
                  goto LABEL_58;
                }

                v41[2] = v57;
LABEL_45:
                v12 = v62;
                v13 = v60;
                *(v0[2303] + 8728) = v41;
                swift_endAccess();

LABEL_46:

                goto LABEL_13;
              }
            }

            v52 = (v41[7] + 32 * v43);
            *v52 = v59;
            v52[1] = v39;
            v52[2] = 0;
            v52[3] = 0xE000000000000000;

            goto LABEL_45;
          }

          goto LABEL_46;
        }

        v21 = v0[2303];
        v22 = v19[5];
        v63 = v19[4];
        swift_beginAccess();

        v23 = swift_isUniquelyReferenced_nonNull_native();
        v24 = *(v21 + 8728);
        *(v21 + 8728) = 0x8000000000000000;
        result = sub_10003ADCC(v65, v17);
        v26 = v24[2];
        v27 = (v25 & 1) == 0;
        v28 = __OFADD__(v26, v27);
        v29 = v26 + v27;
        if (v28)
        {
          goto LABEL_55;
        }

        v30 = v25;
        if (v24[3] < v29)
        {
          break;
        }

        if (v23)
        {
          goto LABEL_33;
        }

        v53 = result;
        sub_100170590();
        result = v53;
        v12 = v62;
        if ((v30 & 1) == 0)
        {
LABEL_34:
          v24[(result >> 6) + 8] |= 1 << result;
          v48 = (v24[6] + 16 * result);
          *v48 = v65;
          v48[1] = v17;
          v49 = (v24[7] + 32 * result);
          *v49 = v63;
          v49[1] = v22;
          v49[2] = 0;
          v49[3] = 0xE000000000000000;
          v50 = v24[2];
          v28 = __OFADD__(v50, 1);
          v51 = v50 + 1;
          if (v28)
          {
            goto LABEL_56;
          }

          v24[2] = v51;
          goto LABEL_12;
        }

LABEL_11:
        v16 = (v24[7] + 32 * result);
        *v16 = v63;
        v16[1] = v22;
        v16[2] = 0;
        v16[3] = 0xE000000000000000;

LABEL_12:
        *(v0[2303] + 8728) = v24;
        swift_endAccess();

        v13 = v60;
        v1 = v61;
LABEL_13:
        ++v14;
        v15 += 5;
        if (v13 == v14)
        {
          goto LABEL_47;
        }
      }

      sub_100167CE0(v29, v23);
      result = sub_10003ADCC(v65, v17);
      if ((v30 & 1) != (v31 & 1))
      {
        goto LABEL_51;
      }

LABEL_33:
      v12 = v62;
      if ((v30 & 1) == 0)
      {
        goto LABEL_34;
      }

      goto LABEL_11;
    }

    sub_10000BE18((v0 + 2209), &qword_100839998, &qword_1006DCAA0);
  }

  v9 = v0[2303];
  (*(v0[2323] + 104))(v0[2324], enum case for DIPError.Code.missingAttributeConfig(_:), v0[2322]);
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1000F09F8(&qword_100834130, 255, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  memcpy(v0 + 1075, (v9 + 32), 0x2181uLL);
  sub_10000BE18((v0 + 1075), &qword_100839990, &unk_1006C19E0);

  swift_unknownObjectRelease();

  type metadata accessor for LegacySynthesizedWorkflows();
  swift_deallocPartialClassInstance();

  v10 = v0[1];

  return v10();
}

uint64_t sub_1000C9A58(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 18656) = v1;

  if (v1)
  {
    v5 = sub_1000CA344;
  }

  else
  {
    *(v4 + 18664) = a1;
    v5 = sub_1000C9B80;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1000C9B80()
{
  v1 = v0[2332];
  v2 = v0[2303];
  *(v2 + 8680) = v0[2333];

  swift_beginAccess();

  sub_1000E5888(v3, (v2 + 8744));
  if (v1)
  {
    swift_endAccess();

    v4 = v0[1];

    return v4();
  }

  else
  {
    v33 = v0[2320];
    v34 = v0[2319];
    v6 = v0[2318];
    v42 = v0[2315];
    v40 = v0[2314];
    v7 = v0[2313];
    v8 = v0[2311];
    v35 = v0[2316];
    v36 = v0[2310];
    v9 = v0[2303];
    v10 = v0[2300];
    swift_endAccess();

    swift_beginAccess();
    v11 = *(v10 + 8752);
    swift_beginAccess();
    *(v9 + 8752) = v11;

    sub_10001F8D4(0, &qword_1008399A8, OS_dispatch_source_ptr);
    v0[2298] = _swiftEmptyArrayStorage;
    sub_1000F09F8(&qword_1008399B0, 255, &type metadata accessor for OS_dispatch_source.TimerFlags, &protocol conformance descriptor for OS_dispatch_source.TimerFlags);
    sub_100007224(&qword_1008399B8, &qword_1006D48E8);
    sub_1000BA30C(&unk_1008399C0, &qword_1008399B8, &qword_1006D48E8, &protocol conformance descriptor for [A]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    sub_10001F8D4(0, &qword_100845BD0, OS_dispatch_queue_ptr);
    v12 = static OS_dispatch_queue.main.getter();
    v13 = static OS_dispatch_source.makeTimerSource(flags:queue:)();

    (*(v34 + 8))(v33, v6);
    swift_beginAccess();
    *(v9 + 8688) = v13;
    swift_unknownObjectRelease();
    static DispatchTime.now()();
    *v7 = 600;
    (*(v8 + 104))(v7, enum case for DispatchTimeInterval.seconds(_:), v36);
    + infix(_:_:)();
    v14 = *(v8 + 8);
    v14(v7, v36);
    v15 = v40;
    v41 = *(v42 + 8);
    v41(v35, v15);
    if (*(v9 + 8688))
    {
      v16 = v0[2313];
      v17 = v0[2312];
      v18 = v0[2310];
      v37 = v0[2303];
      swift_getObjectType();
      v19 = enum case for DispatchTimeInterval.never(_:);
      v20 = type metadata accessor for DispatchTimeInterval();
      v21 = *(*(v20 - 8) + 104);
      v21(v16, v19, v20);
      *v17 = 0;
      v21(v17, enum case for DispatchTimeInterval.nanoseconds(_:), v20);
      swift_unknownObjectRetain();
      OS_dispatch_source_timer.schedule(deadline:repeating:leeway:)();
      swift_unknownObjectRelease();
      v14(v17, v18);
      v14(v16, v18);
      if (*(v37 + 8688))
      {
        v22 = v0[2309];
        v23 = v0[2308];
        v24 = v0[2306];
        v25 = v0[2305];
        v38 = v0[2304];
        v39 = v0[2307];
        swift_getObjectType();
        v26 = swift_allocObject();
        swift_weakInit();
        v0[2274] = sub_1000F7138;
        v0[2275] = v26;
        v0[2270] = _NSConcreteStackBlock;
        v0[2271] = 1107296256;
        v0[2272] = sub_100503A7C;
        v0[2273] = &unk_100806DD0;
        v27 = _Block_copy(v0 + 2270);
        swift_unknownObjectRetain();

        static DispatchQoS.unspecified.getter();
        sub_1000C8600();
        OS_dispatch_source.setEventHandler(qos:flags:handler:)();
        _Block_release(v27);
        swift_unknownObjectRelease();
        (*(v25 + 8))(v24, v38);
        (*(v23 + 8))(v22, v39);
      }
    }

    v28 = v0[2303];
    swift_beginAccess();
    v29 = v0[2317];
    v30 = v0[2314];
    if (*(v28 + 8688))
    {
      swift_endAccess();
      swift_getObjectType();
      swift_unknownObjectRetain();
      OS_dispatch_source.resume()();
      swift_unknownObjectRelease();

      v41(v29, v30);
    }

    else
    {
      v41(v0[2317], v0[2314]);
      swift_endAccess();
    }

    v31 = v0[1];
    v32 = v0[2303];

    return v31(v32);
  }
}

uint64_t sub_1000CA344()
{

  v1 = *(v0 + 8);

  return v1();
}

void *sub_1000CA468(uint64_t a1)
{
  __chkstk_darwin(a1);
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v13[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (*(v1 + 8688))
  {
    swift_getObjectType();
    v12 = v2;
    v13[4] = nullsub_7;
    v13[5] = 0;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 1107296256;
    v13[2] = sub_100503A7C;
    v13[3] = &unk_100806E48;
    v10 = _Block_copy(v13);
    swift_unknownObjectRetain();
    static DispatchQoS.unspecified.getter();
    sub_1000C8600();
    OS_dispatch_source.setEventHandler(qos:flags:handler:)();
    _Block_release(v10);
    swift_unknownObjectRelease();
    (*(v3 + 8))(v5, v12);
    (*(v7 + 8))(v9, v6);
    if (*(v1 + 8688))
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      OS_dispatch_source.cancel()();
      swift_unknownObjectRelease();
    }
  }

  memcpy(v13, (v1 + 32), 0x2181uLL);
  sub_10000BE18(v13, &qword_100839990, &unk_1006C19E0);

  swift_unknownObjectRelease();

  return v1;
}

uint64_t sub_1000CA784(uint64_t a1)
{
  sub_1000CA468(a1);

  return swift_deallocClassInstance();
}

uint64_t sub_1000CA7DC()
{
  v1[8] = v0;
  v2 = type metadata accessor for DIPError.Code();
  v1[9] = v2;
  v1[10] = *(v2 - 8);
  v1[11] = swift_task_alloc();

  return _swift_task_switch(sub_1000CA89C, 0, 0);
}

uint64_t sub_1000CA89C()
{
  v1 = v0[8];
  if (*(v1 + 8720) != 1)
  {
    v11 = *(v1 + 24);
    if (v11)
    {
      v4 = *(v11 + OBJC_IVAR____TtC8coreidvd14LegacyWorkflow_userInputFields);
      v3 = *(v11 + OBJC_IVAR____TtC8coreidvd16LegacySPWorkflow_pagination);
    }

    else
    {
      v3 = _swiftEmptyArrayStorage;
      v4 = _swiftEmptyArrayStorage;
    }

    v0[20] = v3;
    v0[21] = v4;
    v14 = *(v1 + 16);
    v5 = v14[20];
    v6 = v14[21];
    v0[22] = v6;
    v7 = v14[22];
    v0[23] = v7;
    swift_beginAccess();
    v8 = *(v1 + 8728);
    v0[24] = v8;
    v0[25] = *(v1 + 8736);

    v9 = swift_task_alloc();
    v0[26] = v9;
    *v9 = v0;
    v10 = sub_1000CAEC8;
    goto LABEL_11;
  }

  v2 = *(v1 + 16);
  v3 = *(v2 + OBJC_IVAR____TtC8coreidvd17LegacyINOWorkflow_pagination);
  v0[12] = v3;
  if (v3)
  {
    v4 = *(v2 + OBJC_IVAR____TtC8coreidvd14LegacyWorkflow_userInputFields);
    v0[13] = v4;
    v5 = v2[20];
    v6 = v2[21];
    v0[14] = v6;
    v7 = v2[22];
    v0[15] = v7;
    swift_beginAccess();
    v8 = *(v1 + 8728);
    v0[16] = v8;
    v0[17] = *(v1 + 8736);

    v9 = swift_task_alloc();
    v0[18] = v9;
    *v9 = v0;
    v10 = sub_1000CAC70;
LABEL_11:
    v9[1] = v10;

    return sub_1000E4DA4(v4, v3, v5, v6, v7, v8);
  }

  (*(v0[10] + 104))(v0[11], enum case for DIPError.Code.internalError(_:), v0[9]);
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1000F09F8(&qword_100834130, 255, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v12 = v0[1];

  return v12();
}

uint64_t sub_1000CAC70(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 152) = v1;

  if (v1)
  {

    return _swift_task_switch(sub_1000CAE1C, 0, 0);
  }

  else
  {

    v5 = *(v4 + 8);

    return v5(a1);
  }
}

uint64_t sub_1000CAE1C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000CAEC8(uint64_t a1)
{
  v3 = *v2;

  if (v1)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    v6 = *(v3 + 8);

    return v6(a1);
  }
}

uint64_t sub_1000CB118()
{
  v7 = *(*(v0 + 16) + 16);

  v1._countAndFlagsBits = 45;
  v1._object = 0xE100000000000000;
  String.append(_:)(v1);
  v2 = *(v0 + 24);
  if (v2)
  {
    v4 = *(v2 + 16);
    v3 = *(v2 + 24);
  }

  else
  {
    v3 = 0xEB00000000454C42;
    v4 = 0x414C494156414E55;
  }

  v5._countAndFlagsBits = v4;
  v5._object = v3;
  String.append(_:)(v5);

  return v7;
}

uint64_t sub_1000CB1B8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for DIPError.Code();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*(v3 + 16) + OBJC_IVAR____TtC8coreidvd17LegacyINOWorkflow_recipientCertificates);
  if (v11 && *(v11 + 16))
  {

    v12 = sub_10003ADCC(a1, a2);
    if (v13)
    {
      v14 = v12;
      v15 = *(v11 + 56);
      v16 = type metadata accessor for RecipientEncryptionCertificate();
      (*(*(v16 - 8) + 16))(a3, v15 + *(*(v16 - 8) + 72) * v14, v16);
    }
  }

  v19 = 0;
  v20 = 0xE000000000000000;
  _StringGuts.grow(_:)(47);

  v19 = 0xD00000000000002DLL;
  v20 = 0x80000001006FEFD0;
  v18._countAndFlagsBits = a1;
  v18._object = a2;
  String.append(_:)(v18);
  (*(v8 + 104))(v10, enum case for DIPError.Code.serverResponseInconsistent(_:), v7);
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1000F09F8(&qword_100834130, 255, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  return swift_willThrow();
}

uint64_t sub_1000CB45C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for DIPError.Code();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v3 + 24);
  if (v11)
  {
    v12 = *(v11 + OBJC_IVAR____TtC8coreidvd16LegacySPWorkflow_recipientCertificates);
    if (v12)
    {
      if (*(v12 + 16))
      {

        v13 = sub_10003ADCC(a1, a2);
        if (v14)
        {
          v15 = v13;
          v16 = *(v12 + 56);
          v17 = type metadata accessor for RecipientEncryptionCertificate();
          (*(*(v17 - 8) + 16))(a3, v16 + *(*(v17 - 8) + 72) * v15, v17);
        }
      }
    }
  }

  v20 = 0;
  v21 = 0xE000000000000000;
  _StringGuts.grow(_:)(46);

  v20 = 0xD00000000000002CLL;
  v21 = 0x80000001006FEF70;
  v19._countAndFlagsBits = a1;
  v19._object = a2;
  String.append(_:)(v19);
  (*(v8 + 104))(v10, enum case for DIPError.Code.serverResponseInconsistent(_:), v7);
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1000F09F8(&qword_100834130, 255, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  return swift_willThrow();
}

uint64_t sub_1000CB704()
{
  v1 = *(v0 + 24);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  v2 = *(v1 + OBJC_IVAR____TtC8coreidvd14LegacyWorkflow_userInputFields);
  v3 = *(v2 + 16);
  if (!v3)
  {
    return _swiftEmptyArrayStorage;
  }

  v5 = 0;
  v6 = _swiftEmptyArrayStorage;
  do
  {
    v7 = *(v2 + 16);
    v8 = 152 * v5 + 32;
    v9 = v5;
    while (1)
    {
      if (v9 >= v7)
      {
        __break(1u);
        return result;
      }

      v10 = *(v2 + v8 + 16);
      v36 = *(v2 + v8);
      v37 = v10;
      v11 = *(v2 + v8 + 32);
      v12 = *(v2 + v8 + 48);
      v13 = *(v2 + v8 + 80);
      v40 = *(v2 + v8 + 64);
      v41 = v13;
      v38 = v11;
      v39 = v12;
      v14 = *(v2 + v8 + 96);
      v15 = *(v2 + v8 + 112);
      v16 = *(v2 + v8 + 128);
      v45 = *(v2 + v8 + 144);
      v43 = v15;
      v44 = v16;
      v42 = v14;
      if (BYTE8(v39) != 2 && (BYTE8(v39) & 1) != 0)
      {
        break;
      }

      ++v9;
      v8 += 152;
      if (v3 == v9)
      {
        goto LABEL_14;
      }
    }

    sub_1000F059C(&v36, v35);
    result = swift_isUniquelyReferenced_nonNull_native();
    v46 = v6;
    if ((result & 1) == 0)
    {
      result = sub_100172D6C(0, v6[2] + 1, 1);
      v6 = v46;
    }

    v18 = v6[2];
    v17 = v6[3];
    if (v18 >= v17 >> 1)
    {
      result = sub_100172D6C((v17 > 1), v18 + 1, 1);
      v6 = v46;
    }

    v5 = v9 + 1;
    v6[2] = v18 + 1;
    v19 = &v6[19 * v18];
    v20 = v37;
    *(v19 + 2) = v36;
    *(v19 + 3) = v20;
    v21 = v38;
    v22 = v39;
    v23 = v41;
    *(v19 + 6) = v40;
    *(v19 + 7) = v23;
    *(v19 + 4) = v21;
    *(v19 + 5) = v22;
    v24 = v42;
    v25 = v43;
    v26 = v44;
    v19[22] = v45;
    *(v19 + 9) = v25;
    *(v19 + 10) = v26;
    *(v19 + 8) = v24;
  }

  while (v3 - 1 != v9);
LABEL_14:

  v27 = v6[2];
  if (!v27)
  {

    return _swiftEmptyArrayStorage;
  }

  *&v36 = _swiftEmptyArrayStorage;
  sub_100172D4C(0, v27, 0);
  v28 = v36;
  v29 = v6 + 5;
  do
  {
    v31 = *(v29 - 1);
    v30 = *v29;
    *&v36 = v28;
    v32 = *(v28 + 16);
    v33 = *(v28 + 24);

    if (v32 >= v33 >> 1)
    {
      sub_100172D4C((v33 > 1), v32 + 1, 1);
      v28 = v36;
    }

    *(v28 + 16) = v32 + 1;
    v34 = v28 + 16 * v32;
    *(v34 + 32) = v31;
    *(v34 + 40) = v30;
    v29 += 19;
    --v27;
  }

  while (v27);

  return v28;
}

void *sub_1000CB970()
{
  v1 = sub_100007224(&qword_1008353E0, &qword_1006C0F18);
  __chkstk_darwin(v1 - 8);
  v3 = &v13 - v2;
  v4 = type metadata accessor for HardwareAttestationType();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v0 + 16);
  if (*(v8 + OBJC_IVAR____TtC8coreidvd14LegacyWorkflow_hardwareAttestationTypes))
  {
    v9 = *(v8 + OBJC_IVAR____TtC8coreidvd14LegacyWorkflow_hardwareAttestationTypes);
  }

  else
  {
    sub_10000BBC4(v8 + OBJC_IVAR____TtC8coreidvd14LegacyWorkflow_hardwareAttestationType, v3, &qword_1008353E0, &qword_1006C0F18);
    if ((*(v5 + 48))(v3, 1, v4) == 1)
    {
      sub_10000BE18(v3, &qword_1008353E0, &qword_1006C0F18);
      v9 = _swiftEmptyArrayStorage;
    }

    else
    {
      v10 = *(v5 + 32);
      v10(v7, v3, v4);
      sub_100007224(&qword_100839BC0, &qword_1006D49B0);
      v11 = (*(v5 + 80) + 32) & ~*(v5 + 80);
      v9 = swift_allocObject();
      *(v9 + 1) = xmmword_1006BF520;
      v10(v9 + v11, v7, v4);
    }
  }

  return v9;
}

void *sub_1000CBB78()
{
  v1 = sub_100007224(&qword_1008353E0, &qword_1006C0F18);
  __chkstk_darwin(v1 - 8);
  v3 = &v13 - v2;
  v4 = type metadata accessor for HardwareAttestationType();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v0 + 24);
  if (!v8)
  {
    (*(v5 + 56))(v3, 1, 1, v4);
LABEL_6:
    sub_10000BE18(v3, &qword_1008353E0, &qword_1006C0F18);
    return _swiftEmptyArrayStorage;
  }

  v9 = *(v8 + OBJC_IVAR____TtC8coreidvd14LegacyWorkflow_hardwareAttestationTypes);
  if (!v9)
  {
    sub_10000BBC4(v8 + OBJC_IVAR____TtC8coreidvd14LegacyWorkflow_hardwareAttestationType, v3, &qword_1008353E0, &qword_1006C0F18);
    if ((*(v5 + 48))(v3, 1, v4) != 1)
    {
      v11 = *(v5 + 32);
      v11(v7, v3, v4);
      sub_100007224(&qword_100839BC0, &qword_1006D49B0);
      v12 = (*(v5 + 80) + 32) & ~*(v5 + 80);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_1006BF520;
      v11((v9 + v12), v7, v4);
      return v9;
    }

    goto LABEL_6;
  }

  return v9;
}

void *sub_1000CBD9C()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC8coreidvd14LegacyWorkflow_userInputFields);
  v2 = *(v1 + 16);
  if (v2)
  {

    sub_100172D4C(0, v2, 0);
    v3 = (v1 + 40);
    do
    {
      v5 = *(v3 - 1);
      v4 = *v3;
      v6 = _swiftEmptyArrayStorage[2];
      v7 = _swiftEmptyArrayStorage[3];

      if (v6 >= v7 >> 1)
      {
        sub_100172D4C((v7 > 1), v6 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v6 + 1;
      v8 = &_swiftEmptyArrayStorage[2 * v6];
      v8[4] = v5;
      v8[5] = v4;
      v3 += 19;
      --v2;
    }

    while (v2);
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_1000CBE90()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_opt_self() standardUserDefaults];
  v7._countAndFlagsBits = static DaemonInternalDefaultsKeys.forceAccountAssessmentServerData.getter();
  v8 = NSUserDefaults.internalBool(forKey:)(v7);

  if (v8)
  {
    defaultLogger()();
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "INTERNAL SETTING switched to FORCE AssessmentServer Data", v11, 2u);
    }

    (*(v3 + 8))(v5, v2);
    LOBYTE(v12) = 1;
  }

  else
  {
    v12 = *(v1 + 24);
    if (v12)
    {
      LOBYTE(v12) = *(v12 + OBJC_IVAR____TtC8coreidvd16LegacySPWorkflow_accountAssessmentDeviceData);
    }
  }

  return v12 & 1;
}

uint64_t sub_1000CC038(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = [objc_opt_self() standardUserDefaults];
  v7._countAndFlagsBits = static DaemonInternalDefaultsKeys.disableACLChecking.getter();
  v8 = NSUserDefaults.internalBool(forKey:)(v7);

  if (v8)
  {
    v10 = 1;
  }

  else
  {
    v11 = *(*(v3 + 16) + OBJC_IVAR____TtC8coreidvd17LegacyINOWorkflow_applicationACL);
    v14[0] = a1;
    v14[1] = a2;
    __chkstk_darwin(v9);
    v13[2] = v14;

    v10 = sub_10035C8E4(sub_1000F713C, v13, v11);
  }

  return v10 & 1;
}

uint64_t sub_1000CC144(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = [objc_opt_self() standardUserDefaults];
  v7._countAndFlagsBits = static DaemonInternalDefaultsKeys.disableACLChecking.getter();
  v8 = NSUserDefaults.internalBool(forKey:)(v7);

  if (v8)
  {
    v10 = 1;
  }

  else
  {
    v11 = *(v3 + 24);
    if (v11 && (v12 = *(v11 + OBJC_IVAR____TtC8coreidvd16LegacySPWorkflow_applicationACL)) != 0)
    {
      v15[0] = a1;
      v15[1] = a2;
      __chkstk_darwin(v9);
      v14[2] = v15;

      v10 = sub_10035C8E4(sub_1000307C0, v14, v12);
    }

    else
    {
      v10 = 0;
    }
  }

  return v10 & 1;
}

uint64_t sub_1000CC260()
{
  v1 = v0;
  v2 = [objc_opt_self() standardUserDefaults];
  v3._countAndFlagsBits = static DaemonInternalDefaultsKeys.assessBeforeProof.getter();
  v4 = NSUserDefaults.internalBool(forKey:)(v3);

  if (v4)
  {
LABEL_30:
    LOBYTE(v6) = 1;
    return v6 & 1;
  }

  v5 = *(v1 + 24);
  if (!v5 || (v6 = *(v5 + OBJC_IVAR____TtC8coreidvd16LegacySPWorkflow_assessBeforeProof), v6 == 2))
  {
    v7 = *(*(v1 + 16) + OBJC_IVAR____TtC8coreidvd17LegacyINOWorkflow_verifiedClaimFields);
    if (v7)
    {
      v8 = v7 & 0xFFFFFFFFFFFFFF8;
      if (v7 >> 62)
      {
        goto LABEL_36;
      }

      for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
      {
        if ((v7 & 0xC000000000000001) != 0)
        {

          v8 = 0;
          while (1)
          {
            v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            v11 = v8 + 1;
            if (__OFADD__(v8, 1))
            {
              break;
            }

            v12 = *(v10 + 24);
            if (v12)
            {
              if (*(v10 + 16) == 0x746E656D75636F64 && v12 == 0xE800000000000000)
              {

                swift_unknownObjectRelease();
                goto LABEL_33;
              }

              v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
              swift_unknownObjectRelease();
              if (v14)
              {

                LOBYTE(v6) = 0;
                return v6 & 1;
              }
            }

            else
            {
              swift_unknownObjectRelease();
            }

            ++v8;
            if (v11 == i)
            {

              goto LABEL_30;
            }
          }

          __break(1u);
        }

        else
        {
          v7 += 32;
          v8 = *(v8 + 16);
          while (v8)
          {
            v15 = *(*v7 + 24);
            if (v15)
            {
              v16 = *(*v7 + 16) == 0x746E656D75636F64 && v15 == 0xE800000000000000;
              if (v16 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {
LABEL_33:
                LOBYTE(v6) = 0;
                return v6 & 1;
              }
            }

            --v8;
            v7 += 8;
            LOBYTE(v6) = 1;
            if (!--i)
            {
              return v6 & 1;
            }
          }
        }

        __break(1u);
LABEL_36:
        ;
      }
    }

    goto LABEL_30;
  }

  return v6 & 1;
}

uint64_t sub_1000CC460()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  result = __chkstk_darwin(v3);
  v6 = &v13 - v5;
  if (*(v0 + 8672))
  {
    return sub_1005A0FE8(0x14uLL);
  }

  v7 = *(v0 + 8696);
  v8 = *(v0 + 8640);
  if (v7 >= *(v8 + 16))
  {
    defaultLogger()();
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "no more fresh nonces to use", v12, 2u);
    }

    (*(v2 + 8))(v6, v1);
    return 0;
  }

  else if (v7 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = *(v8 + 16 * v7 + 32);
    *(v0 + 8696) = v7 + 1;

    return v9;
  }

  return result;
}

uint64_t sub_1000CC728(uint64_t a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v29 = *(v3 - 8);
  v30 = v3;
  __chkstk_darwin(v3);
  v27 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for DispatchQoS();
  v26 = *(v28 - 8);
  __chkstk_darwin(v28);
  v25 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchTimeInterval();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = (&v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v8);
  v12 = (&v25 - v11);
  v32 = type metadata accessor for DispatchTime();
  v34 = *(v32 - 8);
  v13 = __chkstk_darwin(v32);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v33 = &v25 - v16;
  v1[1080] = a1;

  v1[1087] = 0;
  swift_beginAccess();
  if (v1[1086])
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    OS_dispatch_source.suspend()();
    swift_unknownObjectRelease();
  }

  static DispatchTime.now()();
  *v12 = 600;
  v17 = *(v7 + 104);
  v17(v12, enum case for DispatchTimeInterval.seconds(_:), v6);
  + infix(_:_:)();
  v18 = *(v7 + 8);
  v18(v12, v6);
  v19 = *(v34 + 8);
  v34 += 8;
  v31 = v19;
  v19(v15, v32);
  if (v1[1086])
  {
    swift_getObjectType();
    v17(v12, enum case for DispatchTimeInterval.never(_:), v6);
    *v10 = 0;
    v17(v10, enum case for DispatchTimeInterval.nanoseconds(_:), v6);
    swift_unknownObjectRetain();
    OS_dispatch_source_timer.schedule(deadline:repeating:leeway:)();
    swift_unknownObjectRelease();
    v18(v10, v6);
    v18(v12, v6);
    if (v1[1086])
    {
      swift_getObjectType();
      v20 = swift_allocObject();
      swift_weakInit();
      aBlock[4] = sub_1000F25F0;
      aBlock[5] = v20;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100503A7C;
      aBlock[3] = &unk_100806E20;
      v21 = _Block_copy(aBlock);
      swift_unknownObjectRetain();

      v22 = v25;
      static DispatchQoS.unspecified.getter();
      v23 = v27;
      sub_1000C8600();
      OS_dispatch_source.setEventHandler(qos:flags:handler:)();
      _Block_release(v21);
      swift_unknownObjectRelease();
      (*(v29 + 8))(v23, v30);
      (*(v26 + 8))(v22, v28);

      if (v1[1086])
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        OS_dispatch_source.resume()();
        swift_unknownObjectRelease();
      }
    }
  }

  return v31(v33, v32);
}

uint64_t sub_1000CCCA4(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    *(result + 8640) = _swiftEmptyArrayStorage;
  }

  return result;
}

void sub_1000CCD08(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8632);
  if (v2 && (v3 = *(v1 + 8704), v3 < *(v2 + 16)))
  {
    if (v3 < 0)
    {
      __break(1u);
    }

    else
    {

      v5 = String.init<A>(_:)();
      *(a1 + 24) = &type metadata for String;
      *(a1 + 32) = &off_1007FDA60;
      *a1 = v5;
      *(a1 + 8) = v6;
      v7 = *(v1 + 8704);
      v8 = __OFADD__(v7, 1);
      v9 = v7 + 1;
      if (!v8)
      {
        *(v1 + 8704) = v9;
        return;
      }
    }

    __break(1u);
  }

  else
  {
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }
}

id sub_1000CCDC0()
{
  v1 = *(v0 + 8712);
  v2 = sub_1000C6148();
  if (v2 >> 62)
  {
    v3 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v1 >= v3)
  {
    return 0;
  }

  v5 = *(v0 + 8712);
  v6 = *(v0 + 8680);
  if ((v6 & 0xC000000000000001) != 0)
  {

    v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();

    result = v8;
    v9 = *(v0 + 8712);
    v7 = v9 + 1;
    if (!__OFADD__(v9, 1))
    {
      goto LABEL_8;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if ((v5 & 0x8000000000000000) != 0)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v5 < *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    result = *(v6 + 8 * v5 + 32);
    v7 = v5 + 1;
    if (!__OFADD__(v5, 1))
    {
LABEL_8:
      *(v0 + 8712) = v7;
      return result;
    }

    goto LABEL_13;
  }

LABEL_15:
  __break(1u);
  return result;
}

unint64_t sub_1000CCEAC(char a1)
{
  result = 0x7265566C65646F6DLL;
  switch(a1)
  {
    case 1:
      result = 0x616353746E6F7266;
      break;
    case 2:
      result = 0x6E6163536B636162;
      break;
    case 3:
    case 4:
    case 15:
    case 17:
      result = 0x746E656D75636F64;
      break;
    case 5:
      result = 0x6569666C6573;
      break;
    case 6:
      result = 0x7373656E6576696CLL;
      break;
    case 7:
      result = 0x65766973736170;
      break;
    case 8:
      result = 0xD000000000000015;
      break;
    case 9:
      result = 0x7461726F6C707865;
      break;
    case 10:
      result = 0x6953726566667562;
      break;
    case 11:
      result = 0x6957656C62617473;
      break;
    case 12:
      result = 0x72466E6163536469;
      break;
    case 13:
      result = 0x6172466F65646976;
      break;
    case 14:
      result = 0x547463655278616DLL;
      break;
    case 16:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1000CD104(uint64_t a1)
{
  v3 = v1;
  v4 = __chkstk_darwin(a1);
  v5 = sub_100007224(&qword_100839960, &qword_1006D48C8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13[-v7 - 8];
  sub_10000BA08(v4, v4[3]);
  sub_1000F08B0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v28[0] = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (v2)
  {
    return (*(v6 + 8))(v8, v5);
  }

  v37 = v6;
  memcpy(v36, (v3 + 16), 0x41BuLL);
  memcpy(v28, (v3 + 16), sizeof(v28));
  v27[1055] = 1;
  sub_10000BBC4(v36, v27, &qword_100839950, &qword_1006D48C0);
  sub_1000F0990();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  memcpy(v27, v28, 0x41BuLL);
  sub_10000BE18(v27, &qword_100839950, &qword_1006D48C0);
  memcpy(v35, (v3 + 1072), 0x41BuLL);
  memcpy(v26, (v3 + 1072), sizeof(v26));
  v25[1055] = 2;
  sub_10000BBC4(v35, v25, &qword_100839950, &qword_1006D48C0);
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  memcpy(v25, v26, 0x41BuLL);
  sub_10000BE18(v25, &qword_100839950, &qword_1006D48C0);
  memcpy(v34, (v3 + 2128), 0x41BuLL);
  memcpy(v24, (v3 + 2128), sizeof(v24));
  v23[1055] = 3;
  sub_10000BBC4(v34, v23, &qword_100839950, &qword_1006D48C0);
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  memcpy(v23, v24, 0x41BuLL);
  sub_10000BE18(v23, &qword_100839950, &qword_1006D48C0);
  memcpy(v33, (v3 + 3184), 0x41BuLL);
  memcpy(v22, (v3 + 3184), sizeof(v22));
  v21[1055] = 4;
  sub_10000BBC4(v33, v21, &qword_100839950, &qword_1006D48C0);
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  memcpy(v21, v22, 0x41BuLL);
  sub_10000BE18(v21, &qword_100839950, &qword_1006D48C0);
  memcpy(v32, (v3 + 4240), 0x41BuLL);
  memcpy(v20, (v3 + 4240), sizeof(v20));
  v19[1055] = 5;
  sub_10000BBC4(v32, v19, &qword_100839950, &qword_1006D48C0);
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  memcpy(v19, v20, 0x41BuLL);
  sub_10000BE18(v19, &qword_100839950, &qword_1006D48C0);
  memcpy(v31, (v3 + 5296), 0x41BuLL);
  memcpy(v18, (v3 + 5296), sizeof(v18));
  v17[1055] = 6;
  sub_10000BBC4(v31, v17, &qword_100839950, &qword_1006D48C0);
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  memcpy(v17, v18, 0x41BuLL);
  sub_10000BE18(v17, &qword_100839950, &qword_1006D48C0);
  memcpy(v30, (v3 + 6352), 0x41BuLL);
  memcpy(v16, (v3 + 6352), sizeof(v16));
  v15[1055] = 7;
  sub_10000BBC4(v30, v15, &qword_100839950, &qword_1006D48C0);
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  memcpy(v15, v16, 0x41BuLL);
  sub_10000BE18(v15, &qword_100839950, &qword_1006D48C0);
  v14[0] = *(v3 + 7408);
  v13[0] = 8;
  sub_100007224(&qword_100834EA0, &qword_1006C06B0);
  sub_10009E8DC();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  v10 = *(v3 + 7420);
  LOBYTE(v14[0]) = 9;
  v13[0] = v10;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  LOBYTE(v14[0]) = 10;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  LOBYTE(v14[0]) = 11;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  LOBYTE(v14[0]) = 12;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  LOBYTE(v14[0]) = 13;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v11 = *(v3 + 7488);
  LOBYTE(v14[0]) = 14;
  v13[0] = v11;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  memcpy(v29, (v3 + 7496), 0x41BuLL);
  memcpy(v14, (v3 + 7496), 0x41BuLL);
  v13[1055] = 15;
  sub_10000BBC4(v29, v13, &qword_100839950, &qword_1006D48C0);
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  memcpy(v13, v14, 0x41BuLL);
  sub_10000BE18(v13, &qword_100839950, &qword_1006D48C0);
  HIBYTE(v12) = 16;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  HIBYTE(v12) = 17;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  return (*(v37 + 8))(v8, v5);
}

uint64_t sub_1000CDBC8(char a1)
{
  result = 0x656E697272756C62;
  switch(a1)
  {
    case 1:
      result = 0x426563616C70616CLL;
      break;
    case 2:
      result = 0x657275736F707865;
      break;
    case 3:
      result = 0x7473694464726163;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    case 5:
    case 12:
    case 36:
      result = 0xD000000000000011;
      break;
    case 6:
      result = 0x6374695064616568;
      break;
    case 7:
      result = 0x6C6C6F5264616568;
      break;
    case 8:
      result = 0x77615964616568;
      break;
    case 9:
      result = 0x73656361466D756ELL;
      break;
    case 10:
      result = 0x65676E615278756CLL;
      break;
    case 11:
    case 14:
    case 15:
      result = 0xD000000000000012;
      break;
    case 13:
    case 16:
    case 41:
      result = 0xD000000000000014;
      break;
    case 17:
      result = 0x666E6F4365636166;
      break;
    case 18:
      result = 0x75516569666C6573;
      break;
    case 19:
    case 21:
      result = 0x746E656D75636F64;
      break;
    case 20:
      result = 0xD000000000000010;
      break;
    case 22:
      v3 = 1952867692;
      goto LABEL_32;
    case 23:
      result = 0x6972447468676972;
      break;
    case 24:
      result = 0x74666972447075;
      break;
    case 25:
      v3 = 1853321060;
LABEL_32:
      result = v3 | 0x6669724400000000;
      break;
    case 26:
      result = 0x6544373134666470;
      break;
    case 27:
      result = 0xD000000000000010;
      break;
    case 28:
      result = 0x6572616C67;
      break;
    case 29:
      result = 0x61436F7475417369;
      break;
    case 30:
      result = 0x5465727574706163;
      break;
    case 31:
      result = 0xD000000000000010;
      break;
    case 32:
      result = 0x6556746567726174;
      break;
    case 33:
      result = 0x74614D797A7A7566;
      break;
    case 34:
      result = 0x7373656E6576696CLL;
      break;
    case 35:
      result = 0x456873616C467369;
      break;
    case 37:
      result = 0x686374614D72636FLL;
      break;
    case 38:
      result = 0x5378656C706D6F63;
      break;
    case 39:
      result = 0x6165706552626F64;
      break;
    case 40:
      result = 0x6165706552656F64;
      break;
    case 42:
      result = 0xD000000000000017;
      break;
    case 43:
      result = 0x526E6163537A726DLL;
      break;
    case 44:
      result = 0x636F44664F656761;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1000CE150(void *a1)
{
  v3 = v1;
  v5 = sub_100007224(&qword_100839F70, &qword_1006D5FE0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12[-v7];
  sub_10000BA08(a1, a1[3]);
  sub_1000F47D0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  *v12 = *v3;
  *&v12[9] = *(v3 + 9);
  v17 = 0;
  sub_1000F4B9C();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (!v2)
  {
    *v12 = *(v3 + 32);
    *&v12[9] = *(v3 + 41);
    v17 = 1;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    *v12 = *(v3 + 64);
    *&v12[9] = *(v3 + 73);
    v17 = 2;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    *v12 = *(v3 + 96);
    *&v12[9] = *(v3 + 105);
    v17 = 3;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    *v12 = *(v3 + 128);
    *&v12[9] = *(v3 + 137);
    v17 = 4;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    *v12 = *(v3 + 160);
    *&v12[9] = *(v3 + 169);
    v17 = 5;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    *v12 = *(v3 + 192);
    *&v12[9] = *(v3 + 201);
    v17 = 6;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    *v12 = *(v3 + 224);
    *&v12[9] = *(v3 + 233);
    v17 = 7;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    *v12 = *(v3 + 256);
    *&v12[9] = *(v3 + 265);
    v17 = 8;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    *v12 = *(v3 + 288);
    *&v12[9] = *(v3 + 297);
    v17 = 9;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    *v12 = *(v3 + 320);
    *&v12[9] = *(v3 + 329);
    v17 = 10;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    *v12 = *(v3 + 352);
    *&v12[9] = *(v3 + 361);
    v17 = 11;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    *v12 = *(v3 + 384);
    *&v12[9] = *(v3 + 393);
    v17 = 12;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    *v12 = *(v3 + 416);
    *&v12[9] = *(v3 + 425);
    v17 = 13;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    *v12 = *(v3 + 448);
    *&v12[9] = *(v3 + 457);
    v17 = 14;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    *v12 = *(v3 + 480);
    *&v12[9] = *(v3 + 489);
    v17 = 15;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    *v12 = *(v3 + 512);
    *&v12[9] = *(v3 + 521);
    v17 = 16;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    *v12 = *(v3 + 544);
    *&v12[9] = *(v3 + 553);
    v17 = 17;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    *v12 = *(v3 + 576);
    *&v12[9] = *(v3 + 585);
    v17 = 18;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    *v12 = *(v3 + 608);
    *&v12[9] = *(v3 + 617);
    v17 = 19;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    *v12 = *(v3 + 640);
    *&v12[9] = *(v3 + 649);
    v17 = 20;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    *v12 = *(v3 + 672);
    *&v12[9] = *(v3 + 681);
    v17 = 21;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    *v12 = *(v3 + 704);
    *&v12[9] = *(v3 + 713);
    v17 = 22;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    *v12 = *(v3 + 736);
    *&v12[9] = *(v3 + 745);
    v17 = 23;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    *v12 = *(v3 + 768);
    *&v12[9] = *(v3 + 777);
    v17 = 24;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    *v12 = *(v3 + 800);
    *&v12[9] = *(v3 + 809);
    v17 = 25;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    *v12 = *(v3 + 832);
    v12[16] = *(v3 + 848);
    v17 = 26;
    sub_1000F4BF0();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    *v12 = *(v3 + 856);
    v12[16] = *(v3 + 872);
    v17 = 27;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v10 = *(v3 + 928);
    v13 = *(v3 + 912);
    v14 = v10;
    v15 = *(v3 + 944);
    v16 = *(v3 + 960);
    v11 = *(v3 + 896);
    *v12 = *(v3 + 880);
    *&v12[16] = v11;
    v17 = 28;
    sub_1000F4C44();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v12[0] = 29;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v12[0] = 30;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v12[0] = 31;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v12[0] = 32;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v12[0] = 33;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v12[0] = 34;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v12[0] = 35;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v12[0] = 36;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    *v12 = *(v3 + 976);
    v17 = 37;
    sub_100007224(&qword_100839F38, &qword_1006D5FD0);
    sub_1000F4C98();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    *v12 = *(v3 + 984);
    v17 = 38;
    sub_100007224(&qword_100839F50, &qword_1006D5FD8);
    sub_1000F4D70();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    *v12 = *(v3 + 992);
    v12[8] = *(v3 + 1000);
    v17 = 39;
    sub_1000F4E48();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    *v12 = *(v3 + 1008);
    v12[8] = *(v3 + 1016);
    v17 = 40;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    *v12 = *(v3 + 1024);
    v12[8] = *(v3 + 1032);
    v17 = 41;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    *v12 = *(v3 + 1040);
    v12[8] = *(v3 + 1048);
    v17 = 42;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v12[0] = 43;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v12[0] = 44;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1000CED94(void *a1, uint64_t a2, int a3, uint64_t a4, int a5)
{
  v13[1] = a5;
  v13[2] = a3;
  v8 = sub_100007224(&qword_10083A168, &qword_1006D6D68);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v13 - v10;
  sub_10000BA08(a1, a1[3]);
  sub_1000F5EDC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v17 = a2;
  v16 = 0;
  sub_100007224(&unk_10083A0F0, &unk_1006C96E0);
  sub_1000AF4BC();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (v5)
  {
    return (*(v9 + 8))(v11, v8);
  }

  v15 = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  v14 = 2;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_1000CEF74(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v12 = a4;
  v6 = sub_100007224(&qword_10083A178, &qword_1006D6D70);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v11 - v8;
  sub_10000BA08(a1, a1[3]);
  sub_1000F5F30();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (v4)
  {
    return (*(v7 + 8))(v9, v6);
  }

  v14 = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  v13 = 2;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1000CF128(void *a1)
{
  v3 = sub_100007224(&qword_10083A188, &qword_1006D6D80);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_10000BA08(a1, a1[3]);
  sub_1000F5FD8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v8[13] = 2;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v8[12] = 3;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v8[11] = 4;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1000CF310(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = a5;
  v15 = a4;
  v7 = sub_100007224(&qword_10083A190, &qword_1006D6D88);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v13 - v9;
  sub_10000BA08(a1, a1[3]);
  sub_1000F6094();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v19 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v5)
  {
    v12 = v14;
    v18 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v16 = v12;
    v17 = 2;
    sub_100007224(&qword_10083A140, &qword_1006D6D58);
    sub_1000F6214();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1000CF514(void *a1)
{
  v3 = sub_100007224(&qword_10083A2C8, &qword_1006D7988);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_10000BA08(a1, a1[3]);
  sub_1000F6FA4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  v8[13] = 2;
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1000CF6B4(void *a1)
{
  v3 = v1;
  v5 = sub_100007224(&qword_10083A180, &qword_1006D6D78);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11[-v7];
  sub_10000BA08(a1, a1[3]);
  sub_1000F5F84();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9 = *(v3 + 4);
  v11[15] = 0;
  v11[12] = v9;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (v2)
  {
    return (*(v6 + 8))(v8, v5);
  }

  v11[11] = 1;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v11[10] = 2;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v11[9] = 3;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v11[8] = 4;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v11[7] = 5;
  KeyedEncodingContainer.encode(_:forKey:)();
  v11[6] = 6;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1000CF8F8(void *a1, uint64_t a2, char a3)
{
  v5 = sub_100007224(&qword_10083A1A8, &qword_1006D6D90);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10 - v7;
  sub_10000BA08(a1, a1[3]);
  sub_1000F61C0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v12 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v3)
  {
    v11 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1000CFA80(void *a1)
{
  v3 = v1;
  v5 = sub_100007224(&qword_10083A0D0, &qword_1006D6D18);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10[-v7];
  sub_10000BA08(a1, a1[3]);
  sub_1000F5E34();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v13 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v12 = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v11 = *(v3 + 48);
    v10[15] = 3;
    sub_100007224(&qword_100834EA0, &qword_1006C06B0);
    sub_10009E8DC();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v10[14] = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    v10[13] = 5;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1000CFCD4(void *a1)
{
  v3 = v1;
  v5 = sub_100007224(&qword_100839EE0, &qword_1006D5FB0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13[-v7];
  sub_10000BA08(a1, a1[3]);
  sub_1000F4424();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v18) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v9 = *(v3 + 32);
    v10 = *(v3 + 64);
    v24 = *(v3 + 48);
    v25 = v10;
    v11 = *(v3 + 32);
    v23[0] = *(v3 + 16);
    v23[1] = v11;
    v19 = v9;
    v20 = v24;
    v21 = *(v3 + 64);
    v26 = *(v3 + 80);
    v22 = *(v3 + 80);
    v18 = v23[0];
    v17 = 1;
    sub_1000F4674(v23, v15);
    sub_1000F46AC();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v15[2] = v20;
    v15[3] = v21;
    v16 = v22;
    v15[1] = v19;
    v15[0] = v18;
    sub_1000F44CC(v15);
    v14 = *(v3 + 88);
    v13[7] = 2;
    sub_100007224(&qword_100834EA0, &qword_1006C06B0);
    sub_10009E8DC();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1000CFF78@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1000E5A54(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1000CFFAC(uint64_t a1)
{
  v2 = sub_1000F08B0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000CFFE8(uint64_t a1)
{
  v2 = sub_1000F08B0();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_1000D0024(uint64_t a1)
{
  v2 = __chkstk_darwin(a1);
  v4 = v3;
  result = sub_1000E6014(v2);
  if (!v1)
  {
    return memcpy(v4, __src, 0x2181uLL);
  }

  return result;
}

uint64_t sub_1000D00AC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1000E7230(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1000D00E0(uint64_t a1)
{
  v2 = sub_1000F47D0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000D011C(uint64_t a1)
{
  v2 = sub_1000F47D0();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_1000D0158@<X0>(void *a1@<X8>, void *a2@<X0>)
{
  result = sub_1000E8048(a2, v5);
  if (!v2)
  {
    return memcpy(a1, v5, 0x41BuLL);
  }

  return result;
}

uint64_t sub_1000D01BC()
{
  v1 = 0x636974796C616E61;
  if (*v0 != 1)
  {
    v1 = 0x797469726F697270;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x65676E6172;
  }
}

uint64_t sub_1000D0218@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1000EAF3C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1000D0240(uint64_t a1)
{
  v2 = sub_1000F5EDC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000D027C(uint64_t a1)
{
  v2 = sub_1000F5EDC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000D02B8@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_1000EB058(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5 & 1;
    *(a1 + 16) = v6;
    *(a1 + 24) = v7 & 1;
  }

  return result;
}

uint64_t sub_1000D0320()
{
  v1 = 0x636974796C616E61;
  if (*v0 != 1)
  {
    v1 = 0x797469726F697270;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x65756C6176;
  }
}

uint64_t sub_1000D037C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1000EB290(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1000D03A4(uint64_t a1)
{
  v2 = sub_1000F5F30();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000D03E0(uint64_t a1)
{
  v2 = sub_1000F5F30();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000D041C@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_1000EB3AC(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 1) = BYTE1(result) & 1;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6 & 1;
  }

  return result;
}

uint64_t sub_1000D045C(void *a1)
{
  if (v1[1])
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return sub_1000CEF74(a1, v2 | *v1, *(v1 + 1), v1[16]);
}

uint64_t sub_1000D049C()
{
  v1 = *v0;
  v2 = 0x64726F7779656BLL;
  v3 = 0x797469726F697270;
  v4 = 0x696669746E656469;
  if (v1 != 3)
  {
    v4 = 0x636974796C616E61;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x636E6172656C6F74;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1000D0548@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1000EB590(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1000D0570(uint64_t a1)
{
  v2 = sub_1000F5FD8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000D05AC(uint64_t a1)
{
  v2 = sub_1000F5FD8();

  return CodingKey.debugDescription.getter(a1, v2);
}

__n128 sub_1000D05E8@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1000EB754(a2, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a1 + 32) = v6[2];
    *(a1 + 48) = v5;
    *(a1 + 64) = v7;
    result = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = result;
  }

  return result;
}

uint64_t sub_1000D0654()
{
  v1 = 0x797469726F697270;
  if (*v0 != 1)
  {
    v1 = 0x736C616E676973;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x696669746E656469;
  }
}

uint64_t sub_1000D06B4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1000EBA98(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1000D06DC(uint64_t a1)
{
  v2 = sub_1000F6094();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000D0718(uint64_t a1)
{
  v2 = sub_1000F6094();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000D0754@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1000EBBB8(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
    a1[3] = v7;
  }

  return result;
}

uint64_t sub_1000D07A4()
{
  v1 = 0x74617261706D6F63;
  if (*v0 != 1)
  {
    v1 = 0x6C6F687365726874;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t sub_1000D0800@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1000EBDF0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1000D0828(uint64_t a1)
{
  v2 = sub_1000F6FA4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000D0864(uint64_t a1)
{
  v2 = sub_1000F6FA4();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_1000D08A0@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1000EBF18(a2, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    *(a1 + 32) = v7;
  }

  return result;
}

uint64_t sub_1000D0900()
{
  v1 = *v0;
  v2 = 0x6E6F6C69737065;
  v3 = 0x636974796C616E61;
  if (v1 != 5)
  {
    v3 = 0x797469726F697270;
  }

  v4 = 0x5372657473756C63;
  if (v1 != 3)
  {
    v4 = 0x6C6163736E776F64;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x746E696F506E696DLL;
  if (v1 != 1)
  {
    v5 = 0x6E65746E496E696DLL;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1000D0A00@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1000EC16C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1000D0A28(uint64_t a1)
{
  v2 = sub_1000F5F84();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000D0A64(uint64_t a1)
{
  v2 = sub_1000F5F84();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_1000D0AA0@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1000EC3D4(a2, v7);
  if (!v2)
  {
    v5 = v7[3];
    *(a1 + 32) = v7[2];
    *(a1 + 48) = v5;
    *(a1 + 64) = v7[4];
    *(a1 + 80) = v8;
    result = *v7;
    v6 = v7[1];
    *a1 = v7[0];
    *(a1 + 16) = v6;
  }

  return result;
}

uint64_t sub_1000D0B14()
{
  if (*v0)
  {
    return 0x636974796C616E61;
  }

  else
  {
    return 0x65756C6176;
  }
}

uint64_t sub_1000D0B50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x65756C6176 && a2 == 0xE500000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x636974796C616E61 && a2 == 0xE900000000000073)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1000D0C30(uint64_t a1)
{
  v2 = sub_1000F61C0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000D0C6C(uint64_t a1)
{
  v2 = sub_1000F61C0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000D0CA8@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_1000EC6C4(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5 & 1;
  }

  return result;
}

unint64_t sub_1000D0CFC()
{
  v1 = *v0;
  v2 = 0x6F697461526975;
  v3 = 0x676E69646F636E65;
  v4 = 0xD000000000000014;
  if (v1 == 4)
  {
    v4 = 0xD000000000000017;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  if (v1 == 1)
  {
    v2 = 0xD000000000000013;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000011;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1000D0DC4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1000EC86C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1000D0DEC(uint64_t a1)
{
  v2 = sub_1000F5E34();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000D0E28(uint64_t a1)
{
  v2 = sub_1000F5E34();

  return CodingKey.debugDescription.getter(a1, v2);
}

__n128 sub_1000D0E64@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1000ECA70(a2, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a1 + 32) = v6[2];
    *(a1 + 48) = v5;
    *(a1 + 64) = v7;
    result = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = result;
  }

  return result;
}

unint64_t sub_1000D0ED0()
{
  v1 = 0x726F466567616D69;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000015;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t sub_1000D0F30@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1000ECE74(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1000D0F58(uint64_t a1)
{
  v2 = sub_1000F4424();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000D0F94(uint64_t a1)
{
  v2 = sub_1000F4424();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_1000D0FD0@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_1000ECF98(a2, v8);
  if (!v2)
  {
    v5 = v8[3];
    a1[2] = v8[2];
    a1[3] = v5;
    v6 = v8[5];
    a1[4] = v8[4];
    a1[5] = v6;
    result = *v8;
    v7 = v8[1];
    *a1 = v8[0];
    a1[1] = v7;
  }

  return result;
}

uint64_t sub_1000D1034(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x676E6972616873;
  }

  else
  {
    v3 = 0x676E69666F6F7270;
  }

  if (v2)
  {
    v4 = 0xE800000000000000;
  }

  else
  {
    v4 = 0xE700000000000000;
  }

  if (*a2)
  {
    v5 = 0x676E6972616873;
  }

  else
  {
    v5 = 0x676E69666F6F7270;
  }

  if (*a2)
  {
    v6 = 0xE700000000000000;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_1000D10DC()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1000D1160(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_1000D11D0(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void sub_1000D125C(uint64_t *a1@<X8>)
{
  v2 = 0x676E69666F6F7270;
  if (*v1)
  {
    v2 = 0x676E6972616873;
  }

  v3 = 0xE800000000000000;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1000D134C()
{
  if (*v0)
  {
    return 0xD000000000000013;
  }

  else
  {
    return 0x65756C6176;
  }
}

uint64_t sub_1000D1388@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x65756C6176 && a2 == 0xE500000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001006FEAD0 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1000D1468(uint64_t a1)
{
  v2 = sub_1000DE094();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000D14A4(uint64_t a1)
{
  v2 = sub_1000DE094();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000D14E0()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1000D153C(void *a1)
{
  v3 = sub_100007224(&unk_100839BB0, &unk_1006D49A0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_10000BA08(a1, a1[3]);
  sub_1000DE094();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v1)
  {
    v8[14] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1000D16BC(void *a1)
{
  v4 = sub_100007224(&qword_1008397E0, &qword_1006D4830);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - v6;
  sub_10000BA08(a1, a1[3]);
  sub_1000DE094();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    type metadata accessor for ServerEndPoint();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v13 = 0;
    *(v1 + 16) = KeyedDecodingContainer.decode(_:forKey:)();
    *(v1 + 24) = v8;
    v12 = 1;
    v10 = KeyedDecodingContainer.decode(_:forKey:)();
    (*(v5 + 8))(v7, v4);
    *(v1 + 32) = v10 & 1;
  }

  sub_10000BB78(a1);
  return v1;
}

unint64_t sub_1000D1904()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0xD000000000000013;
  v4 = 0xD000000000000013;
  if (v1 != 3)
  {
    v4 = 0xD000000000000015;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x65756C6176;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1000D1998@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1000ED2B4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1000D19C0(uint64_t a1)
{
  v2 = sub_1000DE0E8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000D19FC(uint64_t a1)
{
  v2 = sub_1000DE0E8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000D1A38()
{

  v1 = OBJC_IVAR____TtC8coreidvd22UserInputValidationURL_encryptionAlgorithm;
  v2 = type metadata accessor for EncryptionParamsAlgorithmIdentifier();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1000D1B20(uint64_t a1)
{
  result = type metadata accessor for EncryptionParamsAlgorithmIdentifier();
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

uint64_t sub_1000D1BD0(void *a1)
{
  v3 = sub_100007224(&unk_100839BA0, &qword_1006D4998);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_10000BA08(a1, a1[3]);
  sub_1000DE0E8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v1)
  {
    v8[14] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v8[13] = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v8[12] = 3;
    type metadata accessor for EncryptionParamsAlgorithmIdentifier();
    sub_1000F09F8(&qword_1008378A8, 255, &type metadata accessor for EncryptionParamsAlgorithmIdentifier, &protocol conformance descriptor for EncryptionParamsAlgorithmIdentifier);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v8[11] = 4;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1000D1E38(void *a1)
{
  v3 = type metadata accessor for EncryptionParamsAlgorithmIdentifier();
  v22 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100007224(&qword_1008397F0, &qword_1006D4838);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v21 - v8;
  v10 = a1[3];
  v24 = a1;
  sub_10000BA08(a1, v10);
  sub_1000DE0E8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    v11 = v23;
    type metadata accessor for UserInputValidationURL(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v12 = v7;
    v29 = 0;
    v13 = KeyedDecodingContainer.decode(_:forKey:)();
    v11 = v23;
    *(v23 + 16) = v13;
    *(v11 + 24) = v14;
    v28 = 1;
    *(v11 + 32) = KeyedDecodingContainer.decode(_:forKey:)();
    *(v11 + 40) = v15;
    v27 = 2;
    *(v11 + 48) = KeyedDecodingContainer.decode(_:forKey:)() & 1;
    v26 = 3;
    sub_1000F09F8(&qword_100839800, 255, &type metadata accessor for EncryptionParamsAlgorithmIdentifier, &protocol conformance descriptor for EncryptionParamsAlgorithmIdentifier);
    v21 = v5;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v22 + 32))(v11 + OBJC_IVAR____TtC8coreidvd22UserInputValidationURL_encryptionAlgorithm, v21, v3);
    v25 = 4;
    v17 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v19 = v18;
    (*(v12 + 8))(v9, v6);
    v20 = (v11 + OBJC_IVAR____TtC8coreidvd22UserInputValidationURL_encryptionCertificate);
    *v20 = v17;
    v20[1] = v19;
  }

  sub_10000BB78(v24);
  return v11;
}

uint64_t sub_1000D2270(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12[0] = a4;
  v12[1] = a5;
  v7 = sub_100007224(&qword_1008398B0, &qword_1006D4890);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v12 - v9;
  sub_10000BA08(a1, a1[3]);
  sub_1000F02F0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v5)
  {
    v13 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1000D2404@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for UserInputValidationURL(0);
  v5 = swift_allocObject();
  result = sub_1000D1E38(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

Swift::Int sub_1000D2490()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1000D2540(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_1000D25DC(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1000D2688@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000ED464(*a1);
  *a2 = result;
  return result;
}

void sub_1000D26B8(uint64_t *a1@<X8>)
{
  v2 = 0xE400000000000000;
  v3 = 1701736302;
  v4 = 0xE800000000000000;
  v5 = 0x65646F6373736170;
  if (*v1 != 2)
  {
    v5 = 7958113;
    v4 = 0xE300000000000000;
  }

  if (*v1)
  {
    v3 = 0x64496F6962;
    v2 = 0xE500000000000000;
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

uint64_t sub_1000D27D4()
{
  if (*v0)
  {
    return 0x6954746567726174;
  }

  else
  {
    return 0x72656469766F7270;
  }
}

uint64_t sub_1000D2814@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x72656469766F7270 && a2 == 0xEA00000000006449;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6954746567726174 && a2 == 0xEA00000000007265)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1000D28F4(uint64_t a1)
{
  v2 = sub_1000F02F0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000D2930(uint64_t a1)
{
  v2 = sub_1000F02F0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000D296C@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1000ED4B0(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
    a1[3] = v7;
  }

  return result;
}

uint64_t sub_1000D29BC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x7475626972747461;
  v4 = 0xEB00000000644965;
  if (v2 != 1)
  {
    v3 = 25705;
    v4 = 0xE200000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x74615070756F7267;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE900000000000068;
  }

  v7 = 0x7475626972747461;
  v8 = 0xEB00000000644965;
  if (*a2 != 1)
  {
    v7 = 25705;
    v8 = 0xE200000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x74615070756F7267;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE900000000000068;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int sub_1000D2AB8()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1000D2B5C(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_1000D2BEC(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1000D2C8C@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000ED694(*a1);
  *a2 = result;
  return result;
}

void sub_1000D2CBC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000068;
  v4 = 0xEB00000000644965;
  v5 = 0x7475626972747461;
  if (v2 != 1)
  {
    v5 = 25705;
    v4 = 0xE200000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x74615070756F7267;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1000D2D1C()
{
  v1 = 0x7475626972747461;
  if (*v0 != 1)
  {
    v1 = 25705;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x74615070756F7267;
  }
}

unint64_t sub_1000D2D78@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_1000ED694(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1000D2DA0(uint64_t a1)
{
  v2 = sub_1000DE13C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000D2DDC(uint64_t a1)
{
  v2 = sub_1000DE13C();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_1000D2E18(void *a1)
{
  v4 = sub_100007224(&qword_100839808, &qword_1006D4840);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - v6;
  sub_10000BA08(a1, a1[3]);
  sub_1000DE13C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    type metadata accessor for VerifiedClaimField();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v17 = 0;
    v1[2] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v1[3] = v8;
    v16 = 1;
    v1[4] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v1[5] = v9;
    v15 = 2;
    v11 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v13 = v12;
    (*(v5 + 8))(v7, v4);
    v1[6] = v11;
    v1[7] = v13;
  }

  sub_10000BB78(a1);
  return v1;
}

uint64_t sub_1000D3044()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1000D30B0(void *a1)
{
  v3 = sub_100007224(&qword_100839B98, &qword_1006D4990);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_10000BA08(a1, a1[3]);
  sub_1000DE13C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v8[13] = 2;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1000D3250(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_100007224(&qword_10083A0D8, &qword_1006D6D20);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10 - v7;
  sub_10000BA08(a1, a1[3]);
  sub_1000F5E88();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v12 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v3)
  {
    v11 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_1000D33D8(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v5 = 0x6F697463656C6573;
    v6 = 0x676E69646F636E65;
    v7 = 0xD000000000000014;
    if (a1 != 3)
    {
      v7 = 0xD000000000000011;
    }

    if (a1 != 2)
    {
      v6 = v7;
    }

    if (!a1)
    {
      v5 = 0xD000000000000014;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x74756F656D6974;
    v2 = 0x6B6174655278616DLL;
    if (a1 != 9)
    {
      v2 = 0x656C616373;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000017;
    if (a1 != 6)
    {
      v3 = 0x656E696C6576696CLL;
    }

    if (a1 == 5)
    {
      v3 = 0xD000000000000010;
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

uint64_t sub_1000D3554(void *a1)
{
  v3 = v1;
  v5 = sub_100007224(&qword_100839EF0, &qword_1006D5FB8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10 - v7;
  sub_10000BA08(a1, a1[3]);
  sub_1000F44FC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v10) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    *&v10 = *(v3 + 16);
    v11 = 1;
    sub_100007224(&qword_100839EB8, &qword_1006D5FA0);
    sub_1000F4700();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v10) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v10 = *(v3 + 32);
    v11 = 3;
    sub_1000F477C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v10 = *(v3 + 48);
    v11 = 4;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v10) = 5;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v10) = 6;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v10) = 7;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v10) = 8;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v10) = 9;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v10) = 10;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1000D3890(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v6 = sub_100007224(&qword_100839F08, &qword_1006D5FC0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v11 - v8;
  sub_10000BA08(a1, a1[3]);
  sub_1000F4620();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v13 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v4)
  {
    v12 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_1000D3A24(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0xD000000000000013;
    v7 = 0x736567616D69;
    if (a1 != 10)
    {
      v7 = 0x65646F4E61746164;
    }

    if (a1 != 9)
    {
      v6 = v7;
    }

    v8 = 0x72456E4F65646F63;
    v9 = 0xD000000000000015;
    if (a1 != 7)
    {
      v9 = 0xD00000000000001DLL;
    }

    if (a1 != 6)
    {
      v8 = v9;
    }

    if (a1 <= 8u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 25705;
    v2 = 0xD000000000000015;
    v3 = 0xD000000000000014;
    if (a1 != 4)
    {
      v3 = 0x6E65646469487369;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0x6465726975716572;
    if (a1 != 1)
    {
      v4 = 0xD000000000000015;
    }

    if (a1)
    {
      v1 = v4;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1000D3BB8(void *a1)
{
  v3 = v1;
  v5 = sub_100007224(&qword_100839900, &qword_1006D48B0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10 - v7;
  sub_10000BA08(a1, a1[3]);
  sub_1000F0344();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v10) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    LOBYTE(v10) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v10) = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v10) = 3;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v10) = 4;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v10) = 5;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v10) = 6;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v10) = 7;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v10) = 8;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    *&v10 = *(v3 + 112);
    v12 = 9;
    sub_100007224(&qword_1008398C8, &qword_1006D48A0);
    sub_1000F0604();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    *&v10 = *(v3 + 120);
    v12 = 10;
    sub_100007224(&qword_1008398E0, &qword_1006D48A8);
    sub_1000F06DC();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v10 = *(v3 + 128);
    v11 = *(v3 + 144);
    v12 = 11;
    sub_1000F07B4();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1000D3F08(void *a1)
{
  v3 = sub_100007224(&qword_100839840, &qword_1006D4860);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_10000BA08(a1, a1[3]);
  sub_1000F0030();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v8[13] = 2;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1000D40A8(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 1701273968;
    v6 = 0x656C746954627573;
    if (a1 != 2)
    {
      v6 = 0x73646C656966;
    }

    if (a1)
    {
      v5 = 0x656C746974;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x6570795465676170;
    v2 = 0x6E6F6974706163;
    if (a1 != 7)
    {
      v2 = 0x7373416567616D69;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x736C6562616CLL;
    if (a1 != 4)
    {
      v3 = 0x6C6562616CLL;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1000D41B4(void *a1)
{
  v3 = v1;
  v5 = sub_100007224(&unk_100839880, &qword_1006D4880);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10 - v7;
  sub_10000BA08(a1, a1[3]);
  sub_1000F0084();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v11) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    LOBYTE(v11) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v11) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v11 = v3[5];
    HIBYTE(v10) = 3;
    sub_100007224(&qword_100834EA0, &qword_1006C06B0);
    sub_10009E8DC();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v11 = v3[6];
    HIBYTE(v10) = 4;
    sub_100007224(&qword_100839868, &qword_1006D4878);
    sub_1000F0218();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v11) = 5;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v11) = 6;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v11) = 7;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v11 = v3[13];
    HIBYTE(v10) = 8;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1000D44F4@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X3>, uint64_t (*a4)(uint64_t)@<X5>, uint64_t *a5@<X8>)
{
  a2();
  v9 = swift_allocObject();
  result = a4(a1);
  if (!v5)
  {
    *a5 = v9;
  }

  return result;
}

uint64_t sub_1000D4588()
{
  if (*v0)
  {
    return 0x6874646977;
  }

  else
  {
    return 0x746867696568;
  }
}

uint64_t sub_1000D45BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x746867696568 && a2 == 0xE600000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6874646977 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1000D4690(uint64_t a1)
{
  v2 = sub_1000F5E88();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000D46CC(uint64_t a1)
{
  v2 = sub_1000F5E88();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000D4708@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1000ED6E0(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
  }

  return result;
}

uint64_t sub_1000D4758@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1000ED888(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1000D4780(uint64_t a1)
{
  v2 = sub_1000F44FC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000D47BC(uint64_t a1)
{
  v2 = sub_1000F44FC();

  return CodingKey.debugDescription.getter(a1, v2);
}

__n128 sub_1000D47F8@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1000EDC1C(a2, v8);
  if (!v2)
  {
    v5 = v9[0];
    *(a1 + 96) = v8[6];
    *(a1 + 112) = v5;
    *(a1 + 121) = *(v9 + 9);
    v6 = v8[3];
    *(a1 + 32) = v8[2];
    *(a1 + 48) = v6;
    v7 = v8[5];
    *(a1 + 64) = v8[4];
    *(a1 + 80) = v7;
    result = v8[1];
    *a1 = v8[0];
    *(a1 + 16) = result;
  }

  return result;
}

uint64_t sub_1000D486C()
{
  if (*v0)
  {
    return 0x74615070756F7267;
  }

  else
  {
    return 0x6564756C636E69;
  }
}

uint64_t sub_1000D48AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6564756C636E69 && a2 == 0xE700000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x74615070756F7267 && a2 == 0xE900000000000068)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1000D4990(uint64_t a1)
{
  v2 = sub_1000F4620();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000D49CC(uint64_t a1)
{
  v2 = sub_1000F4620();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000D4A08@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_1000EE1D0(a2);
  if (!v2)
  {
    *a1 = result & 1;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6;
  }

  return result;
}

uint64_t sub_1000D4A64@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1000EE37C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1000D4A8C(uint64_t a1)
{
  v2 = sub_1000F0344();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000D4AC8(uint64_t a1)
{
  v2 = sub_1000F0344();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_1000D4B04@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1000EE744(a2, v9);
  if (!v2)
  {
    v5 = v9[7];
    *(a1 + 96) = v9[6];
    *(a1 + 112) = v5;
    *(a1 + 128) = v9[8];
    *(a1 + 144) = v10;
    v6 = v9[3];
    *(a1 + 32) = v9[2];
    *(a1 + 48) = v6;
    v7 = v9[5];
    *(a1 + 64) = v9[4];
    *(a1 + 80) = v7;
    result = *v9;
    v8 = v9[1];
    *a1 = v9[0];
    *(a1 + 16) = v8;
  }

  return result;
}

uint64_t sub_1000D4B90()
{
  v1 = 0x7475626972747461;
  if (*v0 != 1)
  {
    v1 = 0x656D737365737361;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x74615070756F7267;
  }
}

uint64_t sub_1000D4BFC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1000EEE08(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1000D4C24(uint64_t a1)
{
  v2 = sub_1000F0030();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000D4C60(uint64_t a1)
{
  v2 = sub_1000F0030();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_1000D4C9C@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1000EEF34(a2, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    *(a1 + 32) = v7;
  }

  return result;
}

uint64_t sub_1000D4D04@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1000EF180(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1000D4D2C(uint64_t a1)
{
  v2 = sub_1000F0084();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000D4D68(uint64_t a1)
{
  v2 = sub_1000F0084();

  return CodingKey.debugDescription.getter(a1, v2);
}

__n128 sub_1000D4DA4@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1000EF454(a2, v7);
  if (!v2)
  {
    v5 = v7[5];
    *(a1 + 64) = v7[4];
    *(a1 + 80) = v5;
    *(a1 + 96) = v7[6];
    v6 = v7[1];
    *a1 = v7[0];
    *(a1 + 16) = v6;
    result = v7[3];
    *(a1 + 32) = v7[2];
    *(a1 + 48) = result;
  }

  return result;
}

uint64_t sub_1000D4E10()
{
  _StringGuts.grow(_:)(87);
  v1._countAndFlagsBits = 0x203A65676170;
  v1._object = 0xE600000000000000;
  String.append(_:)(v1);
  v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v2);

  v3._countAndFlagsBits = 0x20656C7469740ALL;
  v3._object = 0xE700000000000000;
  String.append(_:)(v3);
  String.append(_:)(*(v0 + 8));
  v4._countAndFlagsBits = 0x6C7469746275730ALL;
  v4._object = 0xEA00000000002065;
  String.append(_:)(v4);
  String.append(_:)(*(v0 + 24));
  v5._countAndFlagsBits = 0x2073646C6569660ALL;
  v5._object = 0xE800000000000000;
  String.append(_:)(v5);
  v6._countAndFlagsBits = Array.description.getter();
  String.append(_:)(v6);

  v7._countAndFlagsBits = 0x20736C6562616C0ALL;
  v7._object = 0xE800000000000000;
  String.append(_:)(v7);

  v8 = Array.description.getter();
  v10 = v9;

  v11._countAndFlagsBits = v8;
  v11._object = v10;
  String.append(_:)(v11);

  v12._countAndFlagsBits = 0x707954656761700ALL;
  v12._object = 0xEA00000000002065;
  String.append(_:)(v12);
  v13 = *(v0 + 80);
  if (v13)
  {
    v14 = *(v0 + 72);
  }

  else
  {
    v14 = 0;
  }

  if (v13)
  {
    v15 = *(v0 + 80);
  }

  else
  {
    v15 = 0xE000000000000000;
  }

  v16._countAndFlagsBits = v14;
  v16._object = v15;
  String.append(_:)(v16);

  v17._countAndFlagsBits = 0x6E6F69747061630ALL;
  v17._object = 0xE900000000000020;
  String.append(_:)(v17);
  v18 = *(v0 + 96);
  if (v18)
  {
    v19 = *(v0 + 88);
  }

  else
  {
    v19 = 0;
  }

  if (v18)
  {
    v20 = *(v0 + 96);
  }

  else
  {
    v20 = 0xE000000000000000;
  }

  v21._countAndFlagsBits = v19;
  v21._object = v20;
  String.append(_:)(v21);

  v22._countAndFlagsBits = 0x73416567616D690ALL;
  v22._object = 0xED00002073746573;
  String.append(_:)(v22);

  v23 = Array.description.getter();
  v25 = v24;

  v26._countAndFlagsBits = v23;
  v26._object = v25;
  String.append(_:)(v26);

  return 0;
}

uint64_t sub_1000D50C4(void *a1, uint64_t a2, double a3, double a4, double a5)
{
  v7 = sub_100007224(&qword_100839828, &qword_1006D4850);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v12 - v9;
  sub_10000BA08(a1, a1[3]);
  sub_1000EFFDC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v16 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v5)
  {
    v15 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v14 = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v13 = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1000D529C(void *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void), uint64_t a5)
{
  v7 = sub_100007224(a2, a3);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v13 - v9;
  sub_10000BA08(a1, a1[3]);
  a4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v16 = 0;
  v11 = v13[1];
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v11)
  {
    return (*(v8 + 8))(v10, v7);
  }

  v15 = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  v14 = 2;
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1000D5444(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v7 = sub_100007224(&qword_10083A0A8, &qword_1006D6D00);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v12 - v9;
  sub_10000BA08(a1, a1[3]);
  sub_1000F5DE0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = a2 & 1;
  v14 = 0;
  sub_1000F42F8();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v4)
  {
    v13 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1000D55F0(void *a1)
{
  v3 = v1;
  v5 = sub_100007224(&qword_100839E60, &qword_1006D5F88);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12 - v7;
  sub_10000BA08(a1, a1[3]);
  sub_1000F4028();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v14) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    LOBYTE(v14) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v14) = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v9 = *(v3 + 64);
    v14 = *(v3 + 48);
    v15 = v9;
    v16 = *(v3 + 80);
    v13 = 3;
    sub_1000F4250();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v10 = *(v3 + 112);
    v14 = *(v3 + 96);
    v15 = v10;
    v16 = *(v3 + 128);
    v13 = 4;
    sub_1000F42A4();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v14) = *(v3 + 144);
    v13 = 5;
    sub_1000F42F8();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    *&v14 = *(v3 + 152);
    v13 = 6;
    sub_100007224(&qword_100839E48, &qword_1006D5F80);
    sub_1000F434C();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1000D58D4(void *a1)
{
  v3 = sub_100007224(&qword_100839FB8, &qword_1006D5FE8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_10000BA08(a1, a1[3]);
  sub_1000F3FD4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v1)
  {
    v8[14] = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    type metadata accessor for EncryptionCertificateInStringFormat(0);
    v8[13] = 2;
    type metadata accessor for EncryptedMessageEntity();
    sub_1000F09F8(&qword_100839FC0, 255, &type metadata accessor for EncryptedMessageEntity, &protocol conformance descriptor for EncryptedMessageEntity);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1000D5AF4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v4 = sub_100007224(&qword_100834D98, &unk_1006C03B0);
  __chkstk_darwin(v4 - 8);
  v6 = v18 - v5;
  v7 = sub_100007224(&qword_100839E08, &qword_1006D5F70);
  v21 = *(v7 - 8);
  v22 = v7;
  __chkstk_darwin(v7);
  v9 = v18 - v8;
  v10 = type metadata accessor for EncryptionCertificateInStringFormat(0);
  __chkstk_darwin(v10);
  v12 = (v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10000BA08(a1, a1[3]);
  sub_1000F3FD4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000BB78(a1);
  }

  v19 = v10;
  v13 = v21;
  v14 = v22;
  v25 = 0;
  *v12 = KeyedDecodingContainer.decode(_:forKey:)();
  v12[1] = v15;
  v18[1] = v15;
  v24 = 1;
  v12[2] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v12[3] = v16;
  type metadata accessor for EncryptedMessageEntity();
  v23 = 2;
  sub_1000F09F8(&qword_100839E18, 255, &type metadata accessor for EncryptedMessageEntity, &protocol conformance descriptor for EncryptedMessageEntity);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v13 + 8))(v9, v14);
  sub_1000B1FC8(v6, v12 + *(v19 + 24), &qword_100834D98, &unk_1006C03B0);
  sub_1000F1F64(v12, v20);
  sub_10000BB78(a1);
  return sub_1000F1FC8(v12);
}

uint64_t sub_1000D5E44(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x6E6F6973726576;
      break;
    case 2:
      result = 0x4E79616C70736964;
      break;
    case 3:
      result = 0x72656469766F7270;
      break;
    case 4:
      result = 0x617A696E6167726FLL;
      break;
    case 5:
      result = 0x7972747375646E69;
      break;
    case 6:
      result = 1701869940;
      break;
    case 7:
      v3 = 0x68636E75616CLL;
      goto LABEL_20;
    case 8:
      v3 = 0x746567726174;
LABEL_20:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6954000000000000;
      break;
    case 9:
      result = 0xD000000000000010;
      break;
    case 10:
      result = 0x6574726F70707573;
      break;
    case 11:
      result = 0xD000000000000012;
      break;
    case 12:
      result = 0x4C746C7561666564;
      break;
    case 13:
      result = 0x736E6F4372657375;
      break;
    case 14:
      result = 0xD000000000000017;
      break;
    case 15:
      result = 0xD000000000000018;
      break;
    case 16:
      result = 0x75706E4972657375;
      break;
    case 17:
      result = 0xD00000000000001CLL;
      break;
    case 18:
      result = 0x4155656C62616E65;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1000D60D4()
{
  v1 = 0x656C746954627573;
  if (*v0 != 1)
  {
    v1 = 2036625250;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656C746974;
  }
}

uint64_t sub_1000D6124@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1000EFB5C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1000D614C(uint64_t a1)
{
  v2 = sub_1000F5CE4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000D6188(uint64_t a1)
{
  v2 = sub_1000F5CE4();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_1000D624C()
{
  v1 = 0x664F7265626D756ELL;
  if (*v0 != 2)
  {
    v1 = 0xD000000000000016;
  }

  v2 = 0xD00000000000001ALL;
  if (*v0)
  {
    v2 = 0xD000000000000014;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1000D62E0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1000EFC70(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1000D6308(uint64_t a1)
{
  v2 = sub_1000EFFDC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000D6344(uint64_t a1)
{
  v2 = sub_1000EFFDC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000D6380@<X0>(void *a1@<X8>, void *a2@<X0>)
{
  result = sub_1000EFDE4(a2);
  if (!v2)
  {
    *a1 = v5;
    a1[1] = v6;
    a1[2] = result;
    a1[3] = v7;
  }

  return result;
}

uint64_t sub_1000D63D8()
{
  v1 = 0x696669746E656469;
  if (*v0 != 1)
  {
    v1 = 0x614E746E65746E69;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x69546E6F74747562;
  }
}

uint64_t sub_1000D6448@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1000F0A90(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1000D6470(uint64_t a1)
{
  v2 = sub_1000F5D38();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000D64AC(uint64_t a1)
{
  v2 = sub_1000F5D38();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_1000D652C@<D0>(void *a1@<X0>, uint64_t *a2@<X3>, uint64_t *a3@<X4>, uint64_t (*a4)(void)@<X5>, _OWORD *a6@<X8>)
{
  sub_1000F0BB8(a1, a2, a3, a4, v10);
  if (!v6)
  {
    v9 = v10[1];
    *a6 = v10[0];
    a6[1] = v9;
    result = *&v11;
    a6[2] = v11;
  }

  return result;
}

uint64_t sub_1000D65C4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x4D49536C617564;
  }

  else
  {
    v3 = 0x4953656C676E6973;
  }

  if (v2)
  {
    v4 = 0xE90000000000004DLL;
  }

  else
  {
    v4 = 0xE700000000000000;
  }

  if (*a2)
  {
    v5 = 0x4D49536C617564;
  }

  else
  {
    v5 = 0x4953656C676E6973;
  }

  if (*a2)
  {
    v6 = 0xE700000000000000;
  }

  else
  {
    v6 = 0xE90000000000004DLL;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_1000D6670()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1000D66F8(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_1000D676C(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void sub_1000D67FC(uint64_t *a1@<X8>)
{
  v2 = 0x4953656C676E6973;
  if (*v1)
  {
    v2 = 0x4D49536C617564;
  }

  v3 = 0xE90000000000004DLL;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1000D68F0()
{
  if (*v0)
  {
    return 0x746E65746E6F63;
  }

  else
  {
    return 0x6F697469646E6F63;
  }
}

uint64_t sub_1000D6930@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6F697469646E6F63 && a2 == 0xE90000000000006ELL;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x746E65746E6F63 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1000D6A14(uint64_t a1)
{
  v2 = sub_1000F5DE0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000D6A50(uint64_t a1)
{
  v2 = sub_1000F5DE0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000D6A8C@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_1000F0E0C(a2);
  if (!v2)
  {
    *a1 = result & 1;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6;
  }

  return result;
}

uint64_t sub_1000D6AE0()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x6F697469646E6F63;
  if (v1 != 5)
  {
    v3 = 7629921;
  }

  v4 = 0x6C6961746564;
  if (v1 != 3)
  {
    v4 = 0x7373656E69737562;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x746E65746E6F63;
  if (v1 != 1)
  {
    v5 = 0x69546E6F74747562;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1000D6BB8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1000F0FD0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1000D6BE0(uint64_t a1)
{
  v2 = sub_1000F4028();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000D6C1C(uint64_t a1)
{
  v2 = sub_1000F4028();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_1000D6C58@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_1000F121C(a2, v10);
  if (!v2)
  {
    v5 = v10[7];
    a1[6] = v10[6];
    a1[7] = v5;
    v6 = v10[9];
    a1[8] = v10[8];
    a1[9] = v6;
    v7 = v10[3];
    a1[2] = v10[2];
    a1[3] = v7;
    v8 = v10[5];
    a1[4] = v10[4];
    a1[5] = v8;
    result = *v10;
    v9 = v10[1];
    *a1 = v10[0];
    a1[1] = v9;
  }

  return result;
}

uint64_t sub_1000D6CCC()
{
  v1 = 0x676E696E676973;
  if (*v0 != 1)
  {
    v1 = 0x6E65697069636572;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656572674179656BLL;
  }
}

uint64_t sub_1000D6D34@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1000F1770(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1000D6D5C(uint64_t a1)
{
  v2 = sub_1000F3FD4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000D6D98(uint64_t a1)
{
  v2 = sub_1000F3FD4();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_1000D6E64@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000F1894(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1000D6E94@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000D5E44(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1000D6EDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000F1894(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000D6F10(uint64_t a1)
{
  v2 = sub_1000F2024();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000D6F4C(uint64_t a1)
{
  v2 = sub_1000F2024();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000D6FB4(void *a1)
{
  v3 = v1;
  v5 = sub_100007224(&qword_1008353E0, &qword_1006C0F18);
  __chkstk_darwin(v5 - 8);
  v7 = &v32 - v6;
  v8 = sub_100007224(&qword_100839AD0, &qword_1006D4958);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v32 - v10;
  v12 = a1[3];
  v33 = a1;
  sub_10000BA08(a1, v12);
  sub_1000F2024();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    v13 = v33;
    type metadata accessor for LegacyWorkflow(0);
    swift_deallocPartialClassInstance();
    v21 = v13;
  }

  else
  {
    LOBYTE(v34) = 0;
    *(v3 + 16) = KeyedDecodingContainer.decode(_:forKey:)();
    *(v3 + 24) = v14;
    LOBYTE(v34) = 1;
    *(v3 + 32) = KeyedDecodingContainer.decode(_:forKey:)();
    *(v3 + 40) = v15;
    LOBYTE(v34) = 2;
    *(v3 + 48) = KeyedDecodingContainer.decode(_:forKey:)();
    *(v3 + 56) = v16;
    LOBYTE(v34) = 3;
    v17 = KeyedDecodingContainer.decode(_:forKey:)();
    v32 = 0;
    *(v3 + 64) = v17;
    *(v3 + 72) = v18;
    LOBYTE(v34) = 4;
    *(v3 + 80) = KeyedDecodingContainer.decode(_:forKey:)();
    *(v3 + 88) = v19;
    LOBYTE(v34) = 5;
    *(v3 + 96) = KeyedDecodingContainer.decode(_:forKey:)();
    *(v3 + 104) = v20;
    v35 = 6;
    sub_1000F2078();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *(v3 + 112) = v34;
    LOBYTE(v34) = 7;
    *(v3 + 120) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    *(v3 + 128) = v23;
    LOBYTE(v34) = 8;
    *(v3 + 136) = KeyedDecodingContainer.decode(_:forKey:)();
    *(v3 + 144) = v24;
    sub_100007224(&qword_100834EA0, &qword_1006C06B0);
    v35 = 9;
    sub_10007FD2C();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *(v3 + 152) = v34;
    LOBYTE(v34) = 10;
    *(v3 + 160) = KeyedDecodingContainer.decode(_:forKey:)();
    *(v3 + 168) = v25;
    v35 = 11;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *(v3 + 176) = v34;
    LOBYTE(v34) = 12;
    *(v3 + 184) = KeyedDecodingContainer.decode(_:forKey:)();
    *(v3 + 192) = v26;
    v35 = 13;
    sub_1000F20CC();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *(v3 + 200) = v34;
    type metadata accessor for HardwareAttestationType();
    LOBYTE(v34) = 14;
    sub_1000F09F8(&qword_100839AF0, 255, &type metadata accessor for HardwareAttestationType, &protocol conformance descriptor for HardwareAttestationType);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    sub_1000B1FC8(v7, v3 + OBJC_IVAR____TtC8coreidvd14LegacyWorkflow_hardwareAttestationType, &qword_1008353E0, &qword_1006C0F18);
    sub_100007224(&qword_100839AF8, &qword_1006D4960);
    v35 = 15;
    sub_1000F2120();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    *(v3 + OBJC_IVAR____TtC8coreidvd14LegacyWorkflow_hardwareAttestationTypes) = v34;
    sub_100007224(&qword_100839B08, &qword_1006D4968);
    v35 = 16;
    sub_1000F21D8();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v27 = v34;
    if (!v34)
    {
      v27 = _swiftEmptyArrayStorage;
    }

    *(v3 + OBJC_IVAR____TtC8coreidvd14LegacyWorkflow_userInputFields) = v27;
    LOBYTE(v34) = 17;
    v28 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v29 = (v3 + OBJC_IVAR____TtC8coreidvd14LegacyWorkflow_defaultEncryptionCertificate);
    *v29 = v28;
    v29[1] = v30;
    LOBYTE(v34) = 18;
    v31 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    (*(v9 + 8))(v11, v8);
    *(v3 + OBJC_IVAR____TtC8coreidvd14LegacyWorkflow_enableUAM) = v31;
    v21 = v33;
  }

  sub_10000BB78(v21);
  return v3;
}

void *sub_1000D7BB4()
{

  sub_10000BE18(v0 + OBJC_IVAR____TtC8coreidvd14LegacyWorkflow_hardwareAttestationType, &qword_1008353E0, &qword_1006C0F18);

  return v0;
}

void sub_1000D7CC0(uint64_t a1)
{
  sub_1000F2FD4(319, &qword_100835458, &type metadata accessor for HardwareAttestationType);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1000D7DD0(void *a1)
{
  v3 = v1;
  v5 = sub_100007224(&qword_100839B60, &qword_1006D4988);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10 - v7;
  sub_10000BA08(a1, a1[3]);
  sub_1000F2024();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v10) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    LOBYTE(v10) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v10) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v10) = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v10) = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v10) = 5;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v10) = *(v3 + 112);
    v11 = 6;
    sub_1000F23B8();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v10) = 7;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v10) = 8;
    KeyedEncodingContainer.encode(_:forKey:)();
    v10 = *(v3 + 152);
    v11 = 9;
    sub_100007224(&qword_100834EA0, &qword_1006C06B0);
    sub_10009E8DC();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v10) = 10;
    KeyedEncodingContainer.encode(_:forKey:)();
    v10 = *(v3 + 176);
    v11 = 11;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v10) = 12;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v10) = *(v3 + 200);
    v11 = 13;
    sub_1000F240C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v10) = 14;
    type metadata accessor for HardwareAttestationType();
    sub_1000F09F8(&qword_100836DC8, 255, &type metadata accessor for HardwareAttestationType, &protocol conformance descriptor for HardwareAttestationType);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v10 = *(v3 + OBJC_IVAR____TtC8coreidvd14LegacyWorkflow_hardwareAttestationTypes);
    v11 = 15;
    sub_100007224(&qword_100839AF8, &qword_1006D4960);
    sub_1000F2460();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v10 = *(v3 + OBJC_IVAR____TtC8coreidvd14LegacyWorkflow_userInputFields);
    v11 = 16;
    sub_100007224(&qword_100839B08, &qword_1006D4968);
    sub_1000F2518();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v10) = 17;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v10) = 18;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_1000D8308(char a1)
{
  result = 0x746163696C707061;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000016;
      break;
    case 2:
      result = 0xD000000000000013;
      break;
    case 3:
      result = 0xD000000000000014;
      break;
    case 4:
      result = 7107700;
      break;
    case 5:
      result = 0xD000000000000021;
      break;
    case 6:
      result = 0xD000000000000012;
      break;
    case 7:
      result = 0xD000000000000016;
      break;
    case 8:
      result = 0xD00000000000001FLL;
      break;
    case 9:
      result = 0x6974616E69676170;
      break;
    case 10:
      result = 0x65726564726F6E75;
      break;
    case 11:
      result = 0x74696B64756F6C63;
      break;
    case 12:
    case 15:
      result = 0xD00000000000001BLL;
      break;
    case 13:
      result = 0xD00000000000001ELL;
      break;
    case 14:
      result = 0xD000000000000023;
      break;
    case 16:
      result = 0xD000000000000011;
      break;
    case 17:
      result = 0xD000000000000016;
      break;
    case 18:
      result = 0xD00000000000001DLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1000D85A0@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 248))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1000D8618(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v6 = *a2;
  v7 = a5(*a1);
  v9 = v8;
  if (v7 == a5(v6) && v9 == v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v12 & 1;
}

Swift::Int sub_1000D86C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = *v3;
  Hasher.init(_seed:)();
  a3(v5);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1000D8748(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  (a4)(*v4, a2, a3);
  String.hash(into:)();
}

Swift::Int sub_1000D87B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v6 = *v4;
  Hasher.init(_seed:)();
  a4(v6);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1000D8820@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000F4E9C(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_1000D8850@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1000D8308(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1000D8898@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000F4E9C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000D88C0(uint64_t a1)
{
  v2 = sub_1000F22B0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000D88FC(uint64_t a1)
{
  v2 = sub_1000F22B0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000D8964(void *a1)
{
  v2 = type metadata accessor for DIPError.Code();
  v88 = *(v2 - 1);
  v89 = v2;
  __chkstk_darwin(v2);
  v93 = &v73 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = type metadata accessor for EncryptedMessageEntity();
  v85 = *(v87 - 8);
  __chkstk_darwin(v87);
  v86 = &v73 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for RecipientEncryptionCertificate();
  v91 = *(v5 - 8);
  v92 = v5;
  __chkstk_darwin(v5);
  v90 = &v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DIPCertUsage();
  v83 = *(v7 - 8);
  v84 = v7;
  v8 = __chkstk_darwin(v7);
  v10 = &v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v73 - v11;
  v13 = type metadata accessor for DIPOIDVerifier();
  v94 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = &v73 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100007224(&qword_100839B20, &qword_1006D4970);
  v95 = *(v16 - 8);
  __chkstk_darwin(v16);
  v18 = &v73 - v17;
  v19 = a1[3];
  v97 = a1;
  sub_10000BA08(a1, v19);
  sub_1000F22B0();
  v20 = v96;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v20)
  {
    v24 = v98;
    sub_10000BB78(v97);
    type metadata accessor for LegacyINOWorkflow(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v80 = v12;
    v81 = v10;
    v82 = v15;
    v96 = v13;
    v21 = v95;
    v22 = sub_100007224(&qword_100834EA0, &qword_1006C06B0);
    v100 = 0;
    v23 = sub_10007FD2C();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v79 = v23;
    v26 = v98;
    *(v98 + OBJC_IVAR____TtC8coreidvd17LegacyINOWorkflow_applicationACL) = v99[0];
    sub_100007224(&qword_100839A58, &qword_1006D4920);
    v100 = 1;
    sub_1000F1C80();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    *(v26 + OBJC_IVAR____TtC8coreidvd17LegacyINOWorkflow_acceptedVerifiedClaims) = v99[0];
    sub_100007224(&qword_100839B30, &qword_1006D4978);
    v100 = 2;
    sub_1000F2304();
    v78 = 0;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    rawValue = v99[0]._rawValue;
    if (!v99[0]._rawValue)
    {
      rawValue = _swiftEmptyArrayStorage;
    }

    *(v26 + OBJC_IVAR____TtC8coreidvd17LegacyINOWorkflow_verifiedClaimFields) = rawValue;
    LOBYTE(v99[0]._rawValue) = 3;
    *(v26 + OBJC_IVAR____TtC8coreidvd17LegacyINOWorkflow_claimDataConsistency) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    LOBYTE(v99[0]._rawValue) = 5;
    v28 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v30 = v29;
    v76 = v28;
    v77 = v22;
    LOBYTE(v99[0]._rawValue) = 6;
    v31 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v33 = v32;
    v75 = v31;
    sub_100007224(&qword_100839A88, &qword_1006D4930);
    v100 = 7;
    sub_1000F1DDC();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v74 = v30;
    v34 = v99[0]._rawValue;
    sub_100007224(&unk_100839A40, &qword_1006C1B50);
    v100 = 9;
    sub_10009F8C4();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v73 = v34;
    *(v26 + OBJC_IVAR____TtC8coreidvd17LegacyINOWorkflow_pagination) = v99[0];
    sub_100007224(&qword_100835478, &qword_1006D4980);
    v100 = 10;
    sub_10009F55C();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    *(v26 + OBJC_IVAR____TtC8coreidvd17LegacyINOWorkflow_unorderedUI) = v99[0];
    LOBYTE(v99[0]._rawValue) = 11;
    v35 = v16;
    v36 = v18;
    v37 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v38 = v98 + OBJC_IVAR____TtC8coreidvd17LegacyINOWorkflow_cloudkitRetry;
    *v38 = v37;
    *(v38 + 8) = v39 & 1;
    LOBYTE(v99[0]._rawValue) = 12;
    v40 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v41 = v98 + OBJC_IVAR____TtC8coreidvd17LegacyINOWorkflow_connectToWifiReminderInDays;
    *v41 = v40;
    *(v41 + 8) = v42 & 1;
    LOBYTE(v99[0]._rawValue) = 13;
    v43 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v44 = v98 + OBJC_IVAR____TtC8coreidvd17LegacyINOWorkflow_provisioningRetryTimeoutInDays;
    *v44 = v43;
    *(v44 + 8) = v45 & 1;
    LOBYTE(v99[0]._rawValue) = 14;
    v46 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v47 = v98 + OBJC_IVAR____TtC8coreidvd17LegacyINOWorkflow_deleteIncompleteCredentialAfterDays;
    *v47 = v46;
    *(v47 + 8) = v48 & 1;
    LOBYTE(v99[0]._rawValue) = 15;
    v49 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v50 = v98 + OBJC_IVAR____TtC8coreidvd17LegacyINOWorkflow_deleteInactiveKeysAfterDays;
    *v50 = v49;
    *(v50 + 8) = v51 & 1;
    LOBYTE(v99[0]._rawValue) = 16;
    v52 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    *(v98 + OBJC_IVAR____TtC8coreidvd17LegacyINOWorkflow_base64EncodeImage) = (v52 == 2) | v52 & 1;
    LOBYTE(v99[0]._rawValue) = 17;
    *(v98 + OBJC_IVAR____TtC8coreidvd17LegacyINOWorkflow_isBiomeFedStatsEnabled) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    LOBYTE(v99[0]._rawValue) = 18;
    *(v98 + OBJC_IVAR____TtC8coreidvd17LegacyINOWorkflow_isLivenessConsentOptinEnabled) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    LOBYTE(v99[0]._rawValue) = 4;
    v53 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    if (v54)
    {
      v55 = sub_1000FAB98(v53, v54);
    }

    else
    {
      v55 = 0;
      v56 = 1;
    }

    v57 = v98 + OBJC_IVAR____TtC8coreidvd17LegacyINOWorkflow_claimTTL;
    *v57 = v55;
    *(v57 + 8) = v56 & 1;
    v99[3]._rawValue = type metadata accessor for DateProvider();
    v99[4]._rawValue = &protocol witness table for DateProvider;
    sub_100032DBC(v99);
    DateProvider.init()();
    DIPOIDVerifier.init(dateProvider:)();
    v100 = 8;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    if (v99[0]._rawValue)
    {
      DIPOIDVerifier.setIntermediates(fromBase64DER:)(v99[0]);
    }

    if (v74 && v33)
    {

      v58 = *(v83 + 104);
      v58(v80, enum case for DIPCertUsage.inoEncryption(_:), v84);
      v79 = DIPOIDVerifier.verifyLeaf(fromBase64DER:forUsage:)();
      v59 = v84;
      v60 = *(v83 + 8);
      v61 = v80;
      v83 += 8;
      v80 = v60;
      v60(v61, v84);

      v58(v81, enum case for DIPCertUsage.inoSigning(_:), v59);
      v62 = DIPOIDVerifier.verifyLeaf(fromBase64DER:forUsage:)();
      v80(v81, v84);

      (*(v85 + 104))(v86, enum case for EncryptedMessageEntity.ino(_:), v87);
      v93 = v79;
      v89 = v62;
      RecipientEncryptionCertificate.init(keyAgreement:signing:recipient:)();
      sub_100007224(&unk_100839AB0, &qword_1006D4938);
      v63 = (sub_100007224(&qword_100834798, &qword_1006D4940) - 8);
      v64 = (*(*v63 + 80) + 32) & ~*(*v63 + 80);
      v65 = swift_allocObject();
      *(v65 + 16) = xmmword_1006BF520;
      v66 = (v65 + v64);
      v67 = v63[14];
      *v66 = 0x746C7561666564;
      *(v66 + 1) = 0xE700000000000000;
      v68 = v91;
      v69 = v92;
      (*(v91 + 16))(&v66[v67], v90, v92);
      v70 = sub_10003E654(v65);
      swift_setDeallocating();
      sub_10000BE18(v66, &qword_100834798, &qword_1006D4940);
      swift_deallocClassInstance();

      (*(v68 + 8))(v90, v69);
    }

    else
    {

      if (v73)
      {
        v70 = sub_1000C5F68(&_swiftEmptyDictionarySingleton, v73, v82, sub_1000D9BB0);
      }

      else
      {
        v70 = 0;
      }
    }

    v71 = v97;
    *(v98 + OBJC_IVAR____TtC8coreidvd17LegacyINOWorkflow_recipientCertificates) = v70;
    sub_100020260(v71, v99);
    sub_1000D6FB4(v99);
    (*(v21 + 8))(v36, v35);
    v72 = *(v94 + 8);
    v24 = v98;

    v72(v82, v96);
    sub_10000BB78(v97);
  }

  return v24;
}

uint64_t sub_1000D9BB0(uint64_t a1, Swift::String *a2, uint64_t a3)
{
  v116 = a3;
  v124 = a2;
  v102 = a1;
  v3 = type metadata accessor for DIPError.Code();
  v107 = *(v3 - 8);
  v108 = v3;
  __chkstk_darwin(v3);
  v109 = &v95 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for EncryptedMessageEntity();
  v114 = *(v5 - 8);
  v115 = v5;
  __chkstk_darwin(v5);
  v100 = &v95 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100007224(&qword_1008399F0, &unk_1006DA210);
  __chkstk_darwin(v7 - 8);
  v101 = &v95 - v8;
  v112 = type metadata accessor for DIPOIDVerifier();
  v120 = *(v112 - 8);
  v9 = __chkstk_darwin(v112);
  v103 = &v95 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v110 = &v95 - v11;
  v12 = sub_100007224(&qword_100834D98, &unk_1006C03B0);
  v13 = __chkstk_darwin(v12 - 8);
  v99 = &v95 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v17 = &v95 - v16;
  __chkstk_darwin(v15);
  v19 = &v95 - v18;
  v20 = sub_100007224(&unk_100839AC0, &unk_1006D4948);
  v21 = __chkstk_darwin(v20);
  v98 = &v95 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v106 = (&v95 - v24);
  v25 = __chkstk_darwin(v23);
  v104 = &v95 - v26;
  v27 = __chkstk_darwin(v25);
  v29 = &v95 - v28;
  __chkstk_darwin(v27);
  v31 = &v95 - v30;
  v32 = type metadata accessor for DIPCertUsage();
  v33 = *(v32 - 8);
  v34 = __chkstk_darwin(v32);
  v36 = &v95 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v38 = &v95 - v37;
  sub_10000BBC4(v124, v31, &unk_100839AC0, &unk_1006D4948);

  v113 = v20;
  v39 = &v31[*(v20 + 48)];
  v40 = v115;
  v96 = type metadata accessor for EncryptionCertificateInStringFormat(0);
  sub_10000BBC4(&v39[*(v96 + 24)], v19, &qword_100834D98, &unk_1006C03B0);
  v41 = v39;
  v42 = v114;
  sub_1000F1FC8(v41);
  v43 = *(v42 + 48);
  v97 = v42 + 48;
  v105 = v43;
  v44 = v43(v19, 1, v40);
  v117 = v33;
  v118 = v32;
  v121 = v38;
  v119 = v36;
  if (v44 == 1)
  {
    goto LABEL_2;
  }

  sub_10000BBC4(v19, v17, &qword_100834D98, &unk_1006C03B0);
  v46 = (*(v42 + 88))(v17, v40);
  if (v46 == enum case for EncryptedMessageEntity.idvServer(_:))
  {
    v47 = v118;
    v48 = *(v117 + 104);
    v48(v121, enum case for DIPCertUsage.inoEncryption(_:), v118);
    v48(v119, enum case for DIPCertUsage.inoSigning(_:), v47);
    goto LABEL_5;
  }

  v72 = v42;
  v73 = v117;
  v32 = v118;
  v50 = v120;
  v74 = v124;
  if (v46 == enum case for EncryptedMessageEntity.ino(_:))
  {
    goto LABEL_13;
  }

  if (v46 != enum case for EncryptedMessageEntity.athena(_:) && v46 != enum case for EncryptedMessageEntity.assessor(_:))
  {
    if (v46 == enum case for EncryptedMessageEntity.issuer(_:))
    {
      v75 = &enum case for DIPCertUsage.identityEncryptionExternal(_:);
      goto LABEL_14;
    }

    if (v46 != enum case for EncryptedMessageEntity.livenessReview(_:))
    {
      v38 = v121;
      (*(v72 + 8))(v17, v40);
      v33 = v73;
      v36 = v119;
LABEL_2:
      v45 = *(v33 + 104);
      v45(v38, enum case for DIPCertUsage.inoEncryption(_:), v32);
      v45(v36, enum case for DIPCertUsage.inoSigning(_:), v32);
LABEL_5:
      sub_10000BE18(v19, &qword_100834D98, &unk_1006C03B0);
      v49 = v124;
      v50 = v120;
      goto LABEL_6;
    }

LABEL_13:
    v75 = &enum case for DIPCertUsage.inoEncryption(_:);
LABEL_14:
    v76 = *(v117 + 104);
    v76(v121, *v75, v118);
    v76(v119, enum case for DIPCertUsage.inoSigning(_:), v32);
    sub_10000BE18(v19, &qword_100834D98, &unk_1006C03B0);
    v49 = v74;
    goto LABEL_6;
  }

  v93 = v121;
  sub_10000BE18(v19, &qword_100834D98, &unk_1006C03B0);
  v94 = *(v73 + 104);
  v94(v93, enum case for DIPCertUsage.accountAssessmentServerEncryption(_:), v32);
  v94(v119, enum case for DIPCertUsage.accountAssessmentServerSigning(_:), v32);
  v49 = v74;
LABEL_6:
  v51 = *(v50 + 16);
  v52 = v110;
  v53 = v112;
  v51(v110, v116, v112);
  sub_10000BBC4(v49, v29, &unk_100839AC0, &unk_1006D4948);

  v54 = v113;
  v55 = &v29[*(v113 + 48)];
  v56 = v49;

  sub_1000F1FC8(v55);
  v57 = v111;
  v58 = DIPOIDVerifier.verifyLeaf(fromBase64DER:forUsage:)();
  if (v57)
  {
    (*(v50 + 8))(v52, v53);

    v59 = v118;
    v60 = v119;
LABEL_8:
    v122 = 0;
    v123 = 0xE000000000000000;
    _StringGuts.grow(_:)(54);
    v61._countAndFlagsBits = 0xD000000000000034;
    v61._object = 0x80000001006FEF30;
    String.append(_:)(v61);
    String.append(_:)(*v124);
    (*(v107 + 104))(v109, enum case for DIPError.Code.internalError(_:), v108);
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1000F09F8(&qword_100834130, 255, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v62 = *(v117 + 8);
    v62(v60, v59);
    return (v62)(v121, v59);
  }

  v95 = v58;
  v111 = 0;
  v64 = *(v50 + 8);
  v120 = v50 + 8;
  v64(v52, v53);

  v65 = v104;
  sub_10000BBC4(v56, v104, &unk_100839AC0, &unk_1006D4948);

  v66 = v65 + *(v54 + 48);
  v67 = *(v66 + 24);

  sub_1000F1FC8(v66);
  if (v67)
  {
    v68 = v103;
    v51(v103, v116, v53);
    v60 = v119;
    v69 = v111;
    v70 = DIPOIDVerifier.verifyLeaf(fromBase64DER:forUsage:)();
    v71 = v105;
    if (v69)
    {
      v64(v68, v53);

      v59 = v118;
      goto LABEL_8;
    }

    v77 = v70;
    v111 = 0;
    v64(v68, v53);

    v78 = v118;
  }

  else
  {
    v77 = 0;
    v78 = v118;
    v71 = v105;
  }

  v79 = v124;
  v80 = v106;
  sub_10000BBC4(v124, v106, &unk_100839AC0, &unk_1006D4948);
  v81 = v80[1];
  v120 = *v80;
  v118 = v81;
  v82 = v98;
  sub_10000BBC4(v79, v98, &unk_100839AC0, &unk_1006D4948);

  v83 = v113;
  v84 = v82 + *(v113 + 48);
  v85 = v99;
  sub_10000BBC4(v84 + *(v96 + 24), v99, &qword_100834D98, &unk_1006C03B0);
  sub_1000F1FC8(v84);
  v86 = v115;
  if (v71(v85, 1, v115) == 1)
  {
    (*(v114 + 104))(v100, enum case for EncryptedMessageEntity.ino(_:), v86);
    if (v71(v85, 1, v86) != 1)
    {
      sub_10000BE18(v85, &qword_100834D98, &unk_1006C03B0);
    }
  }

  else
  {
    (*(v114 + 32))(v100, v85, v86);
  }

  v87 = *(v83 + 48);
  v88 = v77;
  v89 = v95;
  v90 = v101;
  RecipientEncryptionCertificate.init(keyAgreement:signing:recipient:)();
  v91 = type metadata accessor for RecipientEncryptionCertificate();
  (*(*(v91 - 8) + 56))(v90, 0, 1, v91);
  sub_10014C0FC(v90, v120, v118);

  v92 = *(v117 + 8);
  v92(v119, v78);
  v92(v121, v78);
  return sub_1000F1FC8(v106 + v87);
}

uint64_t sub_1000DA8DC()
{
}

uint64_t sub_1000DA95C()
{
  sub_1000D7BB4();

  return swift_deallocClassInstance();
}

unint64_t sub_1000DAAE0(char a1)
{
  result = 0x4C525565636E6F6ELL;
  switch(a1)
  {
    case 1:
      result = 0x55676E6972616873;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0xD00000000000001CLL;
      break;
    case 4:
      result = 0xD000000000000013;
      break;
    case 5:
      result = 0x6974616E69676170;
      break;
    case 6:
    case 8:
    case 19:
      result = 0xD000000000000016;
      break;
    case 7:
      result = 0x746163696C707061;
      break;
    case 9:
      result = 0xD000000000000012;
      break;
    case 10:
      result = 0x62616D75736E6F63;
      break;
    case 11:
    case 23:
      result = 0xD000000000000014;
      break;
    case 12:
      result = 0x466564756C636E69;
      break;
    case 13:
      result = 0xD000000000000028;
      break;
    case 14:
      result = 0xD000000000000023;
      break;
    case 15:
    case 22:
      v3 = 9;
      goto LABEL_22;
    case 16:
      result = 0x697463656E6E6F63;
      break;
    case 17:
      result = 0xD000000000000021;
      break;
    case 18:
      result = 0xD000000000000012;
      break;
    case 20:
      result = 0x46676E6972616873;
      break;
    case 21:
      v3 = 13;
LABEL_22:
      result = v3 | 0xD000000000000012;
      break;
    case 24:
      result = 0xD000000000000012;
      break;
    case 25:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1000DAE38(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_1000DAAE0(*a1);
  v5 = v4;
  if (v3 == sub_1000DAAE0(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_1000DAEC0()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_1000DAAE0(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1000DAF24(uint64_t a1)
{
  sub_1000DAAE0(*v1);
  String.hash(into:)();
}

Swift::Int sub_1000DAF78(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  sub_1000DAAE0(v2);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1000DAFD8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000F4EF0(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_1000DB008@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1000DAAE0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1000DB03C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000F4EF0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000DB070(uint64_t a1)
{
  v2 = sub_1000F1A9C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000DB0AC(uint64_t a1)
{
  v2 = sub_1000F1A9C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000DB114(uint64_t a1, void (*a2)(uint64_t))
{
  v4 = swift_allocObject();
  a2(a1);
  return v4;
}

uint64_t sub_1000DB16C(void *a1)
{
  v2 = type metadata accessor for DIPError.Code();
  v124 = *(v2 - 8);
  v125 = v2;
  __chkstk_darwin(v2);
  v126 = &v100 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100007224(&qword_1008399F0, &unk_1006DA210);
  __chkstk_darwin(v4 - 8);
  v123 = &v100 - v5;
  v6 = type metadata accessor for EncryptedMessageEntity();
  v119 = *(v6 - 8);
  v120 = v6;
  __chkstk_darwin(v6);
  v118 = &v100 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for RecipientEncryptionCertificate();
  v121 = *(v8 - 8);
  v122 = v8;
  __chkstk_darwin(v8);
  v113 = &v100 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DIPCertUsage();
  v116 = *(v10 - 8);
  v117 = v10;
  v11 = __chkstk_darwin(v10);
  v115 = &v100 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v114 = &v100 - v14;
  v15 = __chkstk_darwin(v13);
  v17 = &v100 - v16;
  __chkstk_darwin(v15);
  v19 = &v100 - v18;
  v20 = type metadata accessor for DIPOIDVerifier();
  v127 = *(v20 - 8);
  __chkstk_darwin(v20);
  v22 = &v100 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_100007224(&qword_1008399F8, &qword_1006D4900);
  v128 = *(v23 - 8);
  __chkstk_darwin(v23);
  v25 = &v100 - v24;
  v26 = a1[3];
  v130 = a1;
  sub_10000BA08(a1, v26);
  sub_1000F1A9C();
  v27 = v129;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v27)
  {
    sub_10000BB78(v130);
    v29 = v131;
    goto LABEL_4;
  }

  v110 = v19;
  v111 = v17;
  v112 = v22;
  v129 = v20;
  type metadata accessor for ServerEndPoint();
  v135 = 0;
  sub_1000F09F8(&qword_100839A08, v28, type metadata accessor for ServerEndPoint, &unk_1006D4808);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v31 = v131;
  *(v131 + OBJC_IVAR____TtC8coreidvd16LegacySPWorkflow_nonceURL) = v132;
  v135 = 1;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  *(v31 + OBJC_IVAR____TtC8coreidvd16LegacySPWorkflow_sharingURL) = v132;
  LOBYTE(v132) = 2;
  v108 = 0;
  *(v31 + OBJC_IVAR____TtC8coreidvd16LegacySPWorkflow_allowUrlOverride) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  sub_100007224(&qword_100839A10, &qword_1006D4908);
  v135 = 3;
  sub_1000F1AF0();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *(v31 + OBJC_IVAR____TtC8coreidvd16LegacySPWorkflow_userInputFieldValidationURLs) = v132;
  sub_100007224(&qword_100839A28, &unk_1006D4910);
  v135 = 4;
  sub_1000F1BA8();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *(v31 + OBJC_IVAR____TtC8coreidvd16LegacySPWorkflow_shareableAttributes) = v132;
  sub_100007224(&unk_100839A40, &qword_1006C1B50);
  v135 = 5;
  sub_10009F8C4();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *(v31 + OBJC_IVAR____TtC8coreidvd16LegacySPWorkflow_pagination) = v132;
  sub_100007224(&qword_100839A58, &qword_1006D4920);
  v135 = 6;
  sub_1000F1C80();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *(v31 + OBJC_IVAR____TtC8coreidvd16LegacySPWorkflow_acceptedVerifiedClaims) = v132;
  sub_100007224(&qword_100834EA0, &qword_1006C06B0);
  v135 = 7;
  sub_10007FD2C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *(v31 + OBJC_IVAR____TtC8coreidvd16LegacySPWorkflow_applicationACL) = v132;
  LOBYTE(v132) = 8;
  v32 = KeyedDecodingContainer.decode(_:forKey:)();
  v109 = 0;
  *(v31 + OBJC_IVAR____TtC8coreidvd16LegacySPWorkflow_shareAccountAssessment) = v32 & 1;
  LOBYTE(v132) = 9;
  v107 = v23;
  v33 = v25;
  v34 = v109;
  v35 = KeyedDecodingContainer.decode(_:forKey:)();
  v109 = v34;
  if (v34 || (*(v131 + OBJC_IVAR____TtC8coreidvd16LegacySPWorkflow_shareINOAssessment) = v35 & 1, sub_100007224(&qword_100839A70, &qword_1006D4928), v135 = 10, sub_1000F1D58(), v36 = v109, KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)(), (v109 = v36) != 0))
  {
    (*(v128 + 8))(v25, v107);
    LODWORD(v129) = 0;
    LODWORD(v128) = 0;
    v37 = 0;
    LODWORD(v127) = 0;
LABEL_20:
    v38 = v108;
    v29 = v131;
    sub_10000BB78(v130);

    if (!v38)
    {
    }

    if (v129)
    {
      sub_10000BE18(v29 + OBJC_IVAR____TtC8coreidvd16LegacySPWorkflow_accountAssessmentCertificate, &qword_1008399F0, &unk_1006DA210);
      if (v128)
      {
LABEL_10:

        if ((v37 & 1) == 0)
        {
          goto LABEL_11;
        }

        goto LABEL_15;
      }
    }

    else if (v128)
    {
      goto LABEL_10;
    }

    if (!v37)
    {
LABEL_11:
      if (v127)
      {
        goto LABEL_16;
      }

      goto LABEL_4;
    }

LABEL_15:

    if (v127)
    {
LABEL_16:
    }

LABEL_4:
    type metadata accessor for LegacySPWorkflow(0);
    swift_deallocPartialClassInstance();
    return v29;
  }

  *(v131 + OBJC_IVAR____TtC8coreidvd16LegacySPWorkflow_consumableDSD) = v132;
  LOBYTE(v132) = 13;
  v39 = v109;
  v105 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v106 = v40;
  v109 = v39;
  if (v39)
  {
    (*(v128 + 8))(v25, v107);
LABEL_25:
    LODWORD(v129) = 0;
    LODWORD(v128) = 0;
    LODWORD(v127) = 0;
    v37 = 1;
    goto LABEL_20;
  }

  LOBYTE(v132) = 14;
  v103 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v104 = v41;
  v109 = 0;
  LOBYTE(v132) = 17;
  v102 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v109 = 0;
  v43 = v42;
  LOBYTE(v132) = 18;
  KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v109 = 0;
  v45 = v44;
  sub_100007224(&qword_100839A88, &qword_1006D4930);
  v135 = 19;
  sub_1000F1DDC();
  v46 = v109;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v109 = v46;
  if (v46)
  {
    (*(v128 + 8))(v25, v107);

LABEL_24:

    goto LABEL_25;
  }

  v47 = v132;
  LOBYTE(v132) = 11;
  v48 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v109 = 0;
  *(v131 + OBJC_IVAR____TtC8coreidvd16LegacySPWorkflow_includeEncryptedTSID) = v48;
  LOBYTE(v132) = 12;
  v49 = v109;
  v50 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v109 = v49;
  if (v49 || (*(v131 + OBJC_IVAR____TtC8coreidvd16LegacySPWorkflow_includeFGuid) = v50, LOBYTE(v132) = 15, v51 = v109, v52 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)(), (v109 = v51) != 0) || (*(v131 + OBJC_IVAR____TtC8coreidvd16LegacySPWorkflow_accountAssessmentDeviceData) = v52, v135 = 16, sub_1000F1EBC(), v53 = v109, KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)(), (v109 = v53) != 0) || (v54 = v134, v55 = v131 + OBJC_IVAR____TtC8coreidvd16LegacySPWorkflow_connectivity, v56 = v133, *v55 = v132, *(v55 + 16) = v56, *(v55 + 32) = v54, v135 = 20, sub_1000F1F10(), v57 = v109, KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)(), (v109 = v57) != 0) || (*(v131 + OBJC_IVAR____TtC8coreidvd16LegacySPWorkflow_sharingFormat) = v132, LOBYTE(v132) = 22, v58 = v109, v59 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)(), (v109 = v58) != 0))
  {
    (*(v128 + 8))(v25, v107);

    goto LABEL_24;
  }

  v61 = (v131 + OBJC_IVAR____TtC8coreidvd16LegacySPWorkflow_userAuthorizationBundleName);
  *v61 = v59;
  v61[1] = v60;
  LOBYTE(v132) = 23;
  v62 = v109;
  v63 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v109 = v62;
  if (v62 || (v65 = v131 + OBJC_IVAR____TtC8coreidvd16LegacySPWorkflow_dsdValidityInSeconds, *v65 = v63, *(v65 + 8) = v64 & 1, LOBYTE(v132) = 24, v66 = v109, v67 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)(), (v109 = v66) != 0) || (*(v131 + OBJC_IVAR____TtC8coreidvd16LegacySPWorkflow_useExternalGSToken) = v67, LOBYTE(v132) = 25, v68 = v109, v69 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)(), (v109 = v68) != 0))
  {
    (*(v128 + 8))(v25, v107);

LABEL_38:
    LODWORD(v129) = 0;
    LODWORD(v128) = 0;
    v37 = 1;
LABEL_39:
    LODWORD(v127) = 1;
    goto LABEL_20;
  }

  *(v131 + OBJC_IVAR____TtC8coreidvd16LegacySPWorkflow_assessBeforeProof) = v69;
  *(&v133 + 1) = type metadata accessor for DateProvider();
  v134 = &protocol witness table for DateProvider;
  sub_100032DBC(&v132);
  DateProvider.init()();
  DIPOIDVerifier.init(dateProvider:)();
  v135 = 21;
  v70 = v109;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v109 = v70;
  if (v70)
  {
    (*(v128 + 8))(v25, v107);

LABEL_42:

LABEL_43:
    (*(v127 + 8))(v112, v129);
    goto LABEL_38;
  }

  if (v132)
  {
    DIPOIDVerifier.setIntermediates(fromBase64DER:)(v132);
  }

  if (v43 && v45)
  {

    v101 = *(v116 + 104);
    v101(v110, enum case for DIPCertUsage.spEncryption(_:), v117);
    v71 = v109;
    v102 = DIPOIDVerifier.verifyLeaf(fromBase64DER:forUsage:)();
    if (v71)
    {
      (*(v116 + 8))(v110, v117);

      (*(v124 + 104))(v126, enum case for DIPError.Code.internalError(_:), v125);
      swift_errorRetain();
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_1000F09F8(&qword_100834130, 255, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      v79 = swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      v109 = v79;
      swift_willThrow();

      (*(v128 + 8))(v25, v107);
      goto LABEL_43;
    }

    v75 = v117;
    v76 = *(v116 + 8);
    v77 = v110;
    v110 = (v116 + 8);
    v100 = v76;
    v76(v77, v117);

    v101(v111, enum case for DIPCertUsage.spSigning(_:), v75);
    v78 = DIPOIDVerifier.verifyLeaf(fromBase64DER:forUsage:)();
    v109 = 0;
    v80 = v78;
    v100(v111, v117);

    (*(v119 + 104))(v118, enum case for EncryptedMessageEntity.sp(_:), v120);
    v81 = v102;
    v111 = v80;
    v82 = v113;
    RecipientEncryptionCertificate.init(keyAgreement:signing:recipient:)();
    sub_100007224(&unk_100839AB0, &qword_1006D4938);
    v83 = (sub_100007224(&qword_100834798, &qword_1006D4940) - 8);
    v84 = (*(*v83 + 80) + 32) & ~*(*v83 + 80);
    v85 = swift_allocObject();
    *(v85 + 16) = xmmword_1006BF520;
    v86 = (v85 + v84);
    v87 = v83[14];
    *v86 = 0x746C7561666564;
    *(v86 + 1) = 0xE700000000000000;
    v89 = v121;
    v88 = v122;
    (*(v121 + 16))(&v86[v87], v82, v122);
    v74 = sub_10003E654(v85);
    swift_setDeallocating();
    sub_10000BE18(v86, &qword_100834798, &qword_1006D4940);
    swift_deallocClassInstance();

    (*(v89 + 8))(v82, v88);
  }

  else
  {

    if (v47)
    {
      v72 = v109;
      v73 = sub_1000C5F68(&_swiftEmptyDictionarySingleton, v47, v112, sub_1000DCFD0);
      v109 = v72;
      if (v72)
      {
        (*(v128 + 8))(v25, v107);

        goto LABEL_42;
      }

      v74 = v73;
    }

    else
    {
      v74 = 0;
    }
  }

  *(v131 + OBJC_IVAR____TtC8coreidvd16LegacySPWorkflow_recipientCertificates) = v74;
  if (v106 && v104)
  {
    v90 = *(v116 + 104);
    v90(v114, enum case for DIPCertUsage.accountAssessmentServerEncryption(_:), v117);
    v91 = v109;
    v113 = DIPOIDVerifier.verifyLeaf(fromBase64DER:forUsage:)();
    if (v91)
    {
      (*(v116 + 8))(v114, v117);

      (*(v124 + 104))(v126, enum case for DIPError.Code.internalError(_:), v125);
      swift_errorRetain();
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_1000F09F8(&qword_100834130, 255, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      v97 = swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      v109 = v97;
      swift_willThrow();

      (*(v128 + 8))(v33, v107);
      (*(v127 + 8))(v112, v129);
      LODWORD(v129) = 0;
LABEL_66:
      LODWORD(v128) = 1;
      v37 = 1;
      goto LABEL_39;
    }

    v95 = v117;
    v96 = *(v116 + 8);
    v96(v114, v117);

    v90(v115, enum case for DIPCertUsage.accountAssessmentServerSigning(_:), v95);
    DIPOIDVerifier.verifyLeaf(fromBase64DER:forUsage:)();
    v109 = 0;
    v96(v115, v117);

    (*(v119 + 104))(v118, enum case for EncryptedMessageEntity.athena(_:), v120);
    v99 = v123;
    RecipientEncryptionCertificate.init(keyAgreement:signing:recipient:)();
    (*(v121 + 56))(v99, 0, 1, v122);
    sub_1000B1FC8(v99, v131 + OBJC_IVAR____TtC8coreidvd16LegacySPWorkflow_accountAssessmentCertificate, &qword_1008399F0, &unk_1006DA210);
  }

  else
  {

    (*(v121 + 56))(v131 + OBJC_IVAR____TtC8coreidvd16LegacySPWorkflow_accountAssessmentCertificate, 1, 1, v122);
  }

  v93 = v109;
  sub_1000C5AA0(v92, v112);
  v109 = v93;
  if (v93)
  {
    (*(v128 + 8))(v33, v107);

    (*(v127 + 8))(v112, v129);
    LODWORD(v129) = 1;
    goto LABEL_66;
  }

  sub_100020260(v130, &v132);
  v94 = v109;
  sub_1000D6FB4(&v132);
  (*(v128 + 8))(v33, v107);
  if (v94)
  {
    (*(v127 + 8))(v112, v129);
    sub_10000BB78(v130);
    return v131;
  }

  else
  {
    v98 = *(v127 + 8);
    v29 = v131;

    v98(v112, v129);
    sub_10000BB78(v130);
  }

  return v29;
}

uint64_t sub_1000DCFD0(uint64_t a1, Swift::String *a2, void *a3)
{
  v83 = a3;
  v86 = a2;
  v71 = a1;
  v3 = type metadata accessor for DIPError.Code();
  v78 = *(v3 - 8);
  v79 = v3;
  __chkstk_darwin(v3);
  v80 = v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100007224(&qword_100834D98, &unk_1006C03B0);
  __chkstk_darwin(v5 - 8);
  v68 = v63 - v6;
  v67 = type metadata accessor for EncryptedMessageEntity();
  v66 = *(v67 - 8);
  __chkstk_darwin(v67);
  v69 = v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100007224(&qword_1008399F0, &unk_1006DA210);
  __chkstk_darwin(v8 - 8);
  v70 = v63 - v9;
  v89 = type metadata accessor for DIPCertUsage();
  v10 = *(v89 - 8);
  v11 = __chkstk_darwin(v89);
  v74 = v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = v63 - v13;
  v15 = sub_100007224(&unk_100839AC0, &unk_1006D4948);
  v16 = __chkstk_darwin(v15);
  v76 = v63 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v77 = (v63 - v19);
  v20 = __chkstk_darwin(v18);
  v75 = v63 - v21;
  __chkstk_darwin(v20);
  v23 = v63 - v22;
  v24 = type metadata accessor for DIPOIDVerifier();
  v25 = *(v24 - 8);
  v26 = __chkstk_darwin(v24);
  v72 = v63 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v29 = v63 - v28;
  v84 = v25;
  v85 = v30;
  v32 = *(v25 + 16);
  v31 = v25 + 16;
  v73 = v32;
  (v32)(v63 - v28, v83);
  sub_10000BBC4(v86, v23, &unk_100839AC0, &unk_1006D4948);

  v81 = v15;
  v33 = &v23[*(v15 + 48)];

  sub_1000F1FC8(v33);
  v34 = *(v10 + 104);
  v34(v14, enum case for DIPCertUsage.spEncryption(_:), v89);
  v35 = v82;
  v36 = DIPOIDVerifier.verifyLeaf(fromBase64DER:forUsage:)();
  if (v35)
  {

    (*(v10 + 8))(v14, v89);
    (*(v84 + 8))(v29, v85);
    v37 = v86;
    v87 = 0;
    v88 = 0xE000000000000000;
    _StringGuts.grow(_:)(53);
    v38._countAndFlagsBits = 0xD000000000000033;
    v38._object = 0x80000001006FEE70;
    String.append(_:)(v38);
    String.append(_:)(*v37);
    (*(v78 + 104))(v80, enum case for DIPError.Code.internalError(_:), v79);
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1000F09F8(&qword_100834130, 255, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }

  else
  {
    v63[1] = v31;
    v64 = v34;
    v82 = v36;

    v65 = *(v10 + 8);
    v65(v14, v89);
    v40 = v84 + 8;
    v41 = *(v84 + 8);
    v41(v29, v85);
    v42 = v75;
    sub_10000BBC4(v86, v75, &unk_100839AC0, &unk_1006D4948);

    v43 = v42 + *(v81 + 48);
    v44 = *(v43 + 24);

    sub_1000F1FC8(v43);
    if (v44)
    {
      v84 = v40;
      v45 = v72;
      v73(v72, v83, v85);
      v46 = v74;
      v64(v74, enum case for DIPCertUsage.spSigning(_:), v89);
      v83 = DIPOIDVerifier.verifyLeaf(fromBase64DER:forUsage:)();
      v48 = v76;
      v47 = v77;

      v65(v46, v89);
      v41(v45, v85);
      v49 = v86;
    }

    else
    {
      v83 = 0;
      v49 = v86;
      v48 = v76;
      v47 = v77;
    }

    sub_10000BBC4(v49, v47, &unk_100839AC0, &unk_1006D4948);
    v50 = v47[1];
    v89 = *v47;
    v86 = v50;
    sub_10000BBC4(v49, v48, &unk_100839AC0, &unk_1006D4948);

    v51 = v48 + *(v81 + 48);
    v52 = type metadata accessor for EncryptionCertificateInStringFormat(0);
    v53 = v68;
    sub_10000BBC4(v51 + *(v52 + 24), v68, &qword_100834D98, &unk_1006C03B0);
    sub_1000F1FC8(v51);
    v54 = v66;
    v55 = *(v66 + 48);
    v56 = v67;
    v57 = v55(v53, 1, v67);
    v58 = v70;
    if (v57 == 1)
    {
      (*(v54 + 104))(v69, enum case for EncryptedMessageEntity.sp(_:), v56);
      if (v55(v53, 1, v56) != 1)
      {
        sub_10000BE18(v53, &qword_100834D98, &unk_1006C03B0);
      }
    }

    else
    {
      (*(v54 + 32))(v69, v53, v56);
    }

    v59 = *(v81 + 48);
    v60 = v83;
    v61 = v82;
    RecipientEncryptionCertificate.init(keyAgreement:signing:recipient:)();
    v62 = type metadata accessor for RecipientEncryptionCertificate();
    (*(*(v62 - 8) + 56))(v58, 0, 1, v62);
    sub_10014C0FC(v58, v89, v86);

    return sub_1000F1FC8(v77 + v59);
  }
}

uint64_t sub_1000DD98C()
{

  sub_10000BE18(v0 + OBJC_IVAR____TtC8coreidvd16LegacySPWorkflow_accountAssessmentCertificate, &qword_1008399F0, &unk_1006DA210);
}

uint64_t sub_1000DDA70()
{
  sub_1000D7BB4();

  sub_10000BE18(v0 + OBJC_IVAR____TtC8coreidvd16LegacySPWorkflow_accountAssessmentCertificate, &qword_1008399F0, &unk_1006DA210);

  return v0;
}

uint64_t sub_1000DDB68(void (*a1)(void))
{
  a1();

  return swift_deallocClassInstance();
}

void sub_1000DDBEC(uint64_t a1)
{
  sub_1000F2FD4(319, &unk_1008395E8, &type metadata accessor for RecipientEncryptionCertificate);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

__n128 sub_1000DDD1C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1000DDD30(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_1000DDD78(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000DDDCC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
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

uint64_t sub_1000DDE14(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000DDE90(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 152))
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

uint64_t sub_1000DDED8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 152) = 1;
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

    *(result + 152) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1000DDF90()
{
  result = qword_1008397C8;
  if (!qword_1008397C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008397C8);
  }

  return result;
}

unint64_t sub_1000DDFE8()
{
  result = qword_1008397D0;
  if (!qword_1008397D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008397D0);
  }

  return result;
}

unint64_t sub_1000DE040()
{
  result = qword_1008397D8;
  if (!qword_1008397D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008397D8);
  }

  return result;
}

unint64_t sub_1000DE094()
{
  result = qword_1008397E8;
  if (!qword_1008397E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008397E8);
  }

  return result;
}

unint64_t sub_1000DE0E8()
{
  result = qword_1008397F8;
  if (!qword_1008397F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008397F8);
  }

  return result;
}

unint64_t sub_1000DE13C()
{
  result = qword_100839810;
  if (!qword_100839810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100839810);
  }

  return result;
}

uint64_t sub_1000DE190(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a2 = a1;

  if (*a2 && *(*a2 + 16))
  {
    defaultLogger()();
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "got PhoneNumber", v11, 2u);
    }

    return (*(v5 + 8))(v7, v4);
  }

  return result;
}

uint64_t sub_1000DE2F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 1208) = v14;
  *(v8 + 1200) = a8;
  *(v8 + 1192) = a7;
  *(v8 + 1184) = a6;
  *(v8 + 1176) = a5;
  *(v8 + 1168) = a4;
  *(v8 + 1160) = a3;
  *(v8 + 1152) = a1;
  v10 = type metadata accessor for DIPError.Code();
  *(v8 + 1216) = v10;
  *(v8 + 1224) = *(v10 - 8);
  *(v8 + 1232) = swift_task_alloc();
  *(v8 + 1240) = *a2;
  v11 = *(a2 + 24);
  *(v8 + 1256) = *(a2 + 16);
  *(v8 + 1264) = v11;
  *(v8 + 1272) = *(a2 + 32);
  *(v8 + 1288) = *(a2 + 48);

  return _swift_task_switch(sub_1000DE404, 0, 0);
}

uint64_t sub_1000DE404()
{
  v1 = v0;
  v2 = v0[160];
  v0[143] = _swiftEmptyArrayStorage;
  result = sub_10003E868(_swiftEmptyArrayStorage);
  v4 = *(v2 + 16);
  v0[162] = v4;
  v111 = v0;
  if (!v4)
  {
    v27 = v0[161];
    if (v27)
    {
      v28 = v0[151];
      v29 = v1[150];
      sub_1000F26FC(v29, (v1 + 2));
      sub_1000E4B24(v27, v29, v28, v1 + 143);
      sub_1000F2758(v29);
    }

    v42 = v1[149];
    v43 = sub_10003D21C(_swiftEmptyArrayStorage);
    v44 = v42 + 64;
    v45 = -1;
    v46 = -1 << *(v42 + 32);
    if (-v46 < 64)
    {
      v45 = ~(-1 << -v46);
    }

    v47 = v45 & *(v42 + 64);
    v48 = (63 - v46) >> 6;
    v110 = v42;

    v49 = 0;
    v108 = v48;
    for (i = v42 + 64; ; v44 = i)
    {
      if (!v47)
      {
        while (1)
        {
          v51 = v49 + 1;
          if (__OFADD__(v49, 1))
          {
            break;
          }

          if (v51 >= v48)
          {
            v71 = v43;
            v72 = v1[150];

            v73 = *(v72 + 464);
            if (v73)
            {
              v74 = v1 + 157;
              if (*(v73 + 16))
              {
                v75 = sub_10003ADCC(v1[156], v1[157]);
                if (v76)
                {
                  v77 = (*(v73 + 56) + 16 * v75);
                  v74 = v77 + 1;
                  goto LABEL_36;
                }
              }
            }

            else
            {
              v74 = v1 + 157;
            }

            v77 = v1 + 156;
LABEL_36:
            v78 = *v77;
            v79 = *v74;

            sub_1000E0BF8(v78, v79, v71);

            if (v73)
            {
              v80 = v1 + 159;
              if (*(v73 + 16))
              {
                v81 = sub_10003ADCC(v1[158], v1[159]);
                if (v82)
                {
                  v83 = (*(v73 + 56) + 16 * v81);
                  v80 = v83 + 1;
LABEL_58:
                  v98 = *v83;
                  v99 = *v80;

                  sub_1000E0BF8(v98, v99, v71);
                  v101 = v1[155];
                  v112 = v1[144];

                  v102 = [objc_allocWithZone(DIPage) init];
                  sub_10001F8D4(0, &unk_1008399D0, DIAttribute_ptr);
                  v103 = v102;
                  isa = Array._bridgeToObjectiveC()().super.isa;
                  [v103 setAttributes:isa];

                  v105 = String._bridgeToObjectiveC()();

                  [v103 setTitle:v105];

                  v106 = String._bridgeToObjectiveC()();

                  [v103 setSubTitle:v106];

                  [v103 setPage:v101];
                  sub_100007224(&qword_100834EA0, &qword_1006C06B0);
                  v107 = Dictionary._bridgeToObjectiveC()().super.isa;
                  [v103 setServerValidationGroup:v107];

                  *v112 = v103;

                  v100 = v1[1];
                  goto LABEL_59;
                }
              }
            }

            else
            {
              v80 = v1 + 159;
            }

            v83 = v1 + 158;
            goto LABEL_58;
          }

          v47 = *(v44 + 8 * v51);
          ++v49;
          if (v47)
          {
            goto LABEL_21;
          }
        }

        __break(1u);
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
        goto LABEL_68;
      }

      v51 = v49;
LABEL_21:
      v52 = __clz(__rbit64(v47)) | (v51 << 6);
      v53 = (*(v110 + 48) + 16 * v52);
      v55 = *v53;
      v54 = v53[1];
      v56 = (*(v110 + 56) + 32 * v52);
      v57 = v56[1];
      v113 = *v56;
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v60 = sub_10003ADCC(v55, v54);
      v61 = v43[2];
      v62 = (v59 & 1) == 0;
      result = v61 + v62;
      if (__OFADD__(v61, v62))
      {
        goto LABEL_66;
      }

      v63 = v59;
      if (v43[3] >= result)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_10016F53C();
        }
      }

      else
      {
        sub_100165FC0(result, isUniquelyReferenced_nonNull_native);
        v64 = sub_10003ADCC(v55, v54);
        if ((v63 & 1) != (v65 & 1))
        {

          return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        }

        v60 = v64;
      }

      v47 &= v47 - 1;
      if (v63)
      {

        v50 = (v43[7] + 16 * v60);
        *v50 = v113;
        v50[1] = v57;
      }

      else
      {
        v43[(v60 >> 6) + 8] |= 1 << v60;
        v66 = (v43[6] + 16 * v60);
        *v66 = v55;
        v66[1] = v54;
        v67 = (v43[7] + 16 * v60);
        *v67 = v113;
        v67[1] = v57;

        v68 = v43[2];
        v69 = __OFADD__(v68, 1);
        v70 = v68 + 1;
        if (v69)
        {
          goto LABEL_67;
        }

        v43[2] = v70;
      }

      v49 = v51;
      v1 = v111;
      v48 = v108;
    }
  }

  v5 = v0[160];
  v6 = v0[145];
  v0[163] = result;
  v0[164] = 0;
  if (!v5[2])
  {
LABEL_68:
    __break(1u);
    return result;
  }

  v8 = v5[4];
  v7 = v5[5];
  v9 = *(v6 + 16);

  if (v9)
  {
    v10 = sub_10003ADCC(v8, v7);
    if (v11)
    {
      v12 = v1[149];
      v13 = *(v1[145] + 56) + 152 * v10;
      v14 = *(v13 + 16);
      *(v1 + 63) = *v13;
      *(v1 + 65) = v14;
      v15 = *(v13 + 80);
      v17 = *(v13 + 32);
      v16 = *(v13 + 48);
      *(v1 + 71) = *(v13 + 64);
      *(v1 + 73) = v15;
      *(v1 + 67) = v17;
      *(v1 + 69) = v16;
      v19 = *(v13 + 112);
      v18 = *(v13 + 128);
      v20 = *(v13 + 96);
      v1[81] = *(v13 + 144);
      *(v1 + 77) = v19;
      *(v1 + 79) = v18;
      *(v1 + 75) = v20;
      if (*(v12 + 16))
      {
        sub_1000F059C((v1 + 63), (v1 + 82));
        v21 = sub_10003ADCC(v8, v7);
        v22 = v1[149];
        if (v23)
        {
          v24 = (*(v22 + 56) + 32 * v21);
          v26 = *v24;
          v25 = v24[1];
        }

        else
        {
          v26 = 0;
          v25 = 0;
        }
      }

      else
      {
        sub_1000F059C((v1 + 63), (v1 + 120));
        v26 = 0;
        v25 = 0;
        v22 = v1[149];
      }

      v1[165] = v25;
      if (*(v22 + 16))
      {
        v84 = sub_10003ADCC(v8, v7);
        v86 = v85;

        if (v86)
        {
          v87 = *(v1[149] + 56) + 32 * v84;
          v89 = *(v87 + 16);
          v88 = *(v87 + 24);

          goto LABEL_47;
        }
      }

      else
      {
      }

      v89 = 0;
      v88 = 0;
LABEL_47:
      v1[166] = v88;
      *(v1 + 139) = *(v1 + 63);
      v90 = v1[139];
      v91 = v1[140];
      v1[167] = v91;
      if (v90 == 0xD000000000000010 && 0x80000001006F93E0 == v91 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        sub_10001F8D4(0, &qword_100839BE0, DIAttributeDocument_ptr);
        sub_1000F059C((v1 + 63), (v1 + 101));

        v92 = swift_task_alloc();
        v1[168] = v92;
        *v92 = v1;
        v92[1] = sub_1000DEFDC;
        v93 = v1[148];
        v94 = v1[147];
        v95 = v1[146];

        return sub_1000E1450((v1 + 63), v95, v94, v93);
      }

      else
      {
        v96 = swift_task_alloc();
        v1[169] = v96;
        *v96 = v1;
        v96[1] = sub_1000DF110;
        v97 = v1[148];

        return sub_1000E1AD8((v1 + 63), v26, v25, v89, v88, v97);
      }
    }
  }

  v30 = v1[154];
  v31 = v1[153];
  v32 = v1[152];
  _StringGuts.grow(_:)(43);

  v33._countAndFlagsBits = v8;
  v33._object = v7;
  String.append(_:)(v33);
  v34._countAndFlagsBits = 0xD000000000000013;
  v34._object = 0x80000001006FF0E0;
  String.append(_:)(v34);
  (*(v31 + 104))(v30, enum case for DIPError.Code.unknownAttribute(_:), v32);
  sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
  v35 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
  v36 = (*(*v35 + 80) + 32) & ~*(*v35 + 80);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_1006BF520;
  v38 = v37 + v36;
  v39 = (v38 + v35[14]);
  v40 = enum case for DIPError.PropertyKey.attributeID(_:);
  v41 = type metadata accessor for DIPError.PropertyKey();
  (*(*(v41 - 8) + 104))(v38, v40, v41);
  v39[3] = &type metadata for String;
  v39[4] = &protocol witness table for String;
  *v39 = v8;
  v39[1] = v7;
  sub_10003C9C0(v37);
  swift_setDeallocating();
  sub_10000BE18(v38, &qword_1008341D0, &unk_1006BF8D0);
  swift_deallocClassInstance();
  type metadata accessor for DIPError();
  sub_1000F09F8(&qword_100834130, 255, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v100 = v111[1];
LABEL_59:

  return v100();
}

uint64_t sub_1000DEFDC(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {
    v4[172] = v1;
    sub_1000F05D4((v4 + 63));
    v5 = sub_1000E0048;
  }

  else
  {
    v4[170] = 0;
    v4[171] = a1;
    v5 = sub_1000DF268;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1000DF110(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {
    v4[172] = v1;
    sub_1000F05D4((v4 + 63));
    v5 = sub_1000E0048;
  }

  else
  {
    v4[170] = 0;
    v4[171] = a1;
    v5 = sub_1000DF268;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1000DF268()
{
  v3 = v0;
  v4 = *(v0 + 1368);
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(v0 + 1144) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 1144) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
LABEL_84:
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  isUniquelyReferenced_nonNull_native = v3 + 504;
  v6 = v3 + 1112;
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v7 = *(v3 + 552);
  v129 = v3;
  if (!v7)
  {
    v21 = *(v3 + 1312);
    v22 = *(v3 + 1296);

    sub_1000F05D4(v3 + 504);
    if (v21 + 1 != v22)
    {
      v20 = *(v3 + 1312) + 1;
      goto LABEL_17;
    }

LABEL_13:
    v23 = *(v3 + 1360);
    v24 = *(v3 + 1288);
    if (v24)
    {
      v25 = *(v3 + 1208);
      v26 = *(v3 + 1200);
      sub_1000F26FC(v26, v3 + 16);
      sub_1000E4B24(v24, v26, v25, (v3 + 1144));
      v125 = v23;
      sub_1000F2758(v26);
    }

    else
    {
      v125 = *(v3 + 1360);
    }

    v62 = *(v3 + 1192);
    v63 = sub_10003D21C(_swiftEmptyArrayStorage);
    v64 = v62 + 64;
    v65 = -1;
    v66 = -1 << *(v62 + 32);
    if (-v66 < 64)
    {
      v65 = ~(-1 << -v66);
    }

    v67 = v65 & *(v62 + 64);
    v1 = (63 - v66) >> 6;
    v128 = v62;

    v68 = 0;
    v126 = v1;
    for (i = v62 + 64; ; v64 = i)
    {
      if (!v67)
      {
        while (1)
        {
          v6 = v68 + 1;
          if (__OFADD__(v68, 1))
          {
            break;
          }

          if (v6 >= v1)
          {
            v86 = v63;
            v87 = *(v3 + 1200);

            v88 = *(v87 + 464);
            if (v88)
            {
              v89 = (v3 + 1256);
              v90 = v125;
              if (*(v88 + 16) && (v91 = sub_10003ADCC(*(v3 + 1248), *(v3 + 1256)), (v92 & 1) != 0))
              {
                v93 = (*(v88 + 56) + 16 * v91);
                v89 = v93 + 1;
              }

              else
              {
                v93 = (v3 + 1248);
              }
            }

            else
            {
              v89 = (v3 + 1256);
              v93 = (v3 + 1248);
              v90 = v125;
            }

            v94 = *v93;
            v95 = *v89;

            sub_1000E0BF8(v94, v95, v86);
            if (v90)
            {

              goto LABEL_59;
            }

            if (v88)
            {
              v96 = (v3 + 1272);
              if (*(v88 + 16))
              {
                v97 = sub_10003ADCC(*(v3 + 1264), *(v3 + 1272));
                if (v98)
                {
                  v99 = (*(v88 + 56) + 16 * v97);
                  v96 = v99 + 1;
LABEL_58:
                  v100 = *v99;
                  v101 = *v96;

                  sub_1000E0BF8(v100, v101, v86);
                  v103 = *(v3 + 1240);
                  v130 = *(v3 + 1152);

                  v104 = [objc_allocWithZone(DIPage) init];
                  sub_10001F8D4(0, &unk_1008399D0, DIAttribute_ptr);
                  v105 = v104;
                  isa = Array._bridgeToObjectiveC()().super.isa;
                  [v105 setAttributes:isa];

                  v107 = String._bridgeToObjectiveC()();

                  [v105 setTitle:v107];

                  v108 = String._bridgeToObjectiveC()();

                  [v105 setSubTitle:v108];

                  [v105 setPage:v103];
                  sub_100007224(&qword_100834EA0, &qword_1006C06B0);
                  v109 = Dictionary._bridgeToObjectiveC()().super.isa;
                  [v105 setServerValidationGroup:v109];

                  *v130 = v105;

                  v110 = *(v3 + 8);
                  goto LABEL_60;
                }
              }
            }

            else
            {
              v96 = (v3 + 1272);
            }

            v99 = (v3 + 1264);
            goto LABEL_58;
          }

          v67 = *(v64 + 8 * v6);
          ++v68;
          if (v67)
          {
            goto LABEL_35;
          }
        }

        __break(1u);
LABEL_83:
        __break(1u);
        goto LABEL_84;
      }

      v6 = v68;
LABEL_35:
      v70 = __clz(__rbit64(v67)) | (v6 << 6);
      v71 = (*(v128 + 48) + 16 * v70);
      v3 = *v71;
      v72 = v71[1];
      v73 = (*(v128 + 56) + 32 * v70);
      v74 = v73[1];
      v131 = *v73;
      v2 = v73[3];
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v7 = sub_10003ADCC(v3, v72);
      v76 = v63[2];
      v77 = (v75 & 1) == 0;
      v78 = v76 + v77;
      if (__OFADD__(v76, v77))
      {
        goto LABEL_83;
      }

      v1 = v75;
      if (v63[3] >= v78)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_10016F53C();
        }
      }

      else
      {
        sub_100165FC0(v78, isUniquelyReferenced_nonNull_native);
        v79 = sub_10003ADCC(v3, v72);
        if ((v1 & 1) != (v80 & 1))
        {

          return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        }

        v7 = v79;
      }

      v67 &= v67 - 1;
      if (v1)
      {

        v69 = (v63[7] + 16 * v7);
        *v69 = v131;
        v69[1] = v74;
      }

      else
      {
        v63[(v7 >> 6) + 8] |= 1 << v7;
        v81 = (v63[6] + 16 * v7);
        *v81 = v3;
        v81[1] = v72;
        v82 = (v63[7] + 16 * v7);
        *v82 = v131;
        v82[1] = v74;

        v83 = v63[2];
        v84 = __OFADD__(v83, 1);
        v85 = v83 + 1;
        if (v84)
        {
          __break(1u);
          goto LABEL_86;
        }

        v63[2] = v85;
      }

      v68 = v6;
      v3 = v129;
      v1 = v126;
    }
  }

  v1 = *(v3 + 544);
  v8 = *(v3 + 1304);
  v9 = *(v8 + 16);

  if (!v9 || (v10 = sub_10003ADCC(v1, v7), v8 = *(v3 + 1304), (v11 & 1) == 0))
  {
    v17 = *(v3 + 1368);
    sub_100007224(&qword_100833B78, &unk_1006D9F00);
    v2 = swift_allocObject();
    v18 = *v6;
    *(v2 + 16) = xmmword_1006BF520;
    *(v2 + 32) = v18;

    sub_1000F05D4(v3 + 504);
    v19 = swift_isUniquelyReferenced_nonNull_native();
    v132 = v8;
    sub_10016D5CC(v2, v1, v7, v19);

    goto LABEL_10;
  }

  v2 = *(*(v8 + 56) + 8 * v10);
  sub_10004D7A0(v3 + 1112, v3 + 1128);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_87;
  }

  while (1)
  {
    v13 = *(v2 + 16);
    v12 = *(v2 + 24);
    if (v13 >= v12 >> 1)
    {
      v2 = sub_1003C5110((v12 > 1), v13 + 1, 1, v2);
    }

    v14 = *(v3 + 1368);
    v15 = *(v3 + 1304);
    *(v2 + 16) = v13 + 1;
    *(v2 + 16 * v13 + 32) = *v6;
    sub_1000F05D4(isUniquelyReferenced_nonNull_native);
    v16 = swift_isUniquelyReferenced_nonNull_native();
    v132 = v15;
    sub_10016D5CC(v2, v1, v7, v16);

LABEL_10:
    v20 = *(v3 + 1312) + 1;
    if (v20 == *(v3 + 1296))
    {
      goto LABEL_13;
    }

    *(v3 + 1304) = v132;
LABEL_17:
    *(v3 + 1312) = v20;
    v27 = *(v3 + 1280);
    if (v20 < *(v27 + 16))
    {
      break;
    }

LABEL_86:
    __break(1u);
LABEL_87:
    v2 = sub_1003C5110(0, *(v2 + 16) + 1, 1, v2);
  }

  v28 = v27 + 16 * v20;
  v30 = *(v28 + 32);
  v29 = *(v28 + 40);
  v31 = *(*(v3 + 1160) + 16);

  if (v31)
  {
    v32 = sub_10003ADCC(v30, v29);
    if (v33)
    {
      v34 = *(v3 + 1192);
      v35 = *(*(v3 + 1160) + 56) + 152 * v32;
      v36 = *(v35 + 16);
      *isUniquelyReferenced_nonNull_native = *v35;
      *(isUniquelyReferenced_nonNull_native + 16) = v36;
      v37 = *(v35 + 80);
      v39 = *(v35 + 32);
      v38 = *(v35 + 48);
      *(isUniquelyReferenced_nonNull_native + 64) = *(v35 + 64);
      *(isUniquelyReferenced_nonNull_native + 80) = v37;
      *(isUniquelyReferenced_nonNull_native + 32) = v39;
      *(isUniquelyReferenced_nonNull_native + 48) = v38;
      v41 = *(v35 + 112);
      v40 = *(v35 + 128);
      v42 = *(v35 + 96);
      *(isUniquelyReferenced_nonNull_native + 144) = *(v35 + 144);
      *(isUniquelyReferenced_nonNull_native + 112) = v41;
      *(isUniquelyReferenced_nonNull_native + 128) = v40;
      *(isUniquelyReferenced_nonNull_native + 96) = v42;
      if (*(v34 + 16))
      {
        sub_1000F059C(isUniquelyReferenced_nonNull_native, v3 + 656);
        v43 = sub_10003ADCC(v30, v29);
        v44 = *(v3 + 1192);
        if (v45)
        {
          v46 = (*(v44 + 56) + 32 * v43);
          v48 = *v46;
          v47 = v46[1];
        }

        else
        {
          v48 = 0;
          v47 = 0;
        }
      }

      else
      {
        sub_1000F059C(isUniquelyReferenced_nonNull_native, v3 + 960);
        v48 = 0;
        v47 = 0;
        v44 = *(v3 + 1192);
      }

      *(v3 + 1320) = v47;
      if (*(v44 + 16))
      {
        v111 = sub_10003ADCC(v30, v29);
        v113 = v112;

        if (v113)
        {
          v114 = *(*(v3 + 1192) + 56) + 32 * v111;
          v116 = *(v114 + 16);
          v115 = *(v114 + 24);

          goto LABEL_70;
        }
      }

      else
      {
      }

      v116 = 0;
      v115 = 0;
LABEL_70:
      *(v3 + 1328) = v115;
      *v6 = *isUniquelyReferenced_nonNull_native;
      v117 = *(v3 + 1112);
      v118 = *(v3 + 1120);
      *(v3 + 1336) = v118;
      if (v117 == 0xD000000000000010 && 0x80000001006F93E0 == v118 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        sub_10001F8D4(0, &qword_100839BE0, DIAttributeDocument_ptr);
        sub_1000F059C(isUniquelyReferenced_nonNull_native, v3 + 808);

        v119 = swift_task_alloc();
        *(v3 + 1344) = v119;
        *v119 = v3;
        v119[1] = sub_1000DEFDC;
        v120 = *(v3 + 1184);
        v121 = *(v3 + 1176);
        v122 = *(v3 + 1168);

        return sub_1000E1450(isUniquelyReferenced_nonNull_native, v122, v121, v120);
      }

      else
      {
        v123 = swift_task_alloc();
        *(v3 + 1352) = v123;
        *v123 = v3;
        v123[1] = sub_1000DF110;
        v124 = *(v3 + 1184);

        return sub_1000E1AD8(isUniquelyReferenced_nonNull_native, v48, v47, v116, v115, v124);
      }
    }
  }

  v49 = *(v3 + 1232);
  v50 = *(v3 + 1224);
  v51 = *(v3 + 1216);
  _StringGuts.grow(_:)(43);

  v52._countAndFlagsBits = v30;
  v52._object = v29;
  String.append(_:)(v52);
  v53._countAndFlagsBits = 0xD000000000000013;
  v53._object = 0x80000001006FF0E0;
  String.append(_:)(v53);
  (*(v50 + 104))(v49, enum case for DIPError.Code.unknownAttribute(_:), v51);
  sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
  v54 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
  v55 = (*(*v54 + 80) + 32) & ~*(*v54 + 80);
  v56 = swift_allocObject();
  *(v56 + 16) = xmmword_1006BF520;
  v57 = v56 + v55;
  v58 = (v57 + v54[14]);
  v59 = enum case for DIPError.PropertyKey.attributeID(_:);
  v60 = type metadata accessor for DIPError.PropertyKey();
  (*(*(v60 - 8) + 104))(v57, v59, v60);
  v58[3] = &type metadata for String;
  v58[4] = &protocol witness table for String;
  *v58 = v30;
  v58[1] = v29;
  sub_10003C9C0(v56);
  swift_setDeallocating();
  v61 = v57;
  v3 = v129;
  sub_10000BE18(v61, &qword_1008341D0, &unk_1006BF8D0);
  swift_deallocClassInstance();
  type metadata accessor for DIPError();
  sub_1000F09F8(&qword_100834130, 255, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();
LABEL_59:

  v110 = *(v3 + 8);
LABEL_60:

  return v110();
}

uint64_t sub_1000E0048()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1000E00C0(void *a1, uint64_t a2, void *a3, void *a4)
{
  v121 = a4;
  v98 = type metadata accessor for Logger();
  v97 = *(v98 - 8);
  v8 = __chkstk_darwin(v98);
  v10 = &v94 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v96 = &v94 - v11;
  v13 = a1[2];
  v12 = a1[3];
  v14 = a1[4];
  v16 = a1[6];
  v15 = a1[7];
  v112 = a1[5];
  v113 = v15;
  v18 = a1[8];
  v17 = a1[9];
  v101 = v14;
  v102 = v18;
  v110 = v17;
  v20 = a1[10];
  v19 = a1[11];
  v107 = v16;
  v108 = v19;
  v21 = a1[13];
  v109 = a1[12];
  v114 = v21;
  v23 = a1[14];
  v22 = a1[15];
  v103 = v20;
  v104 = v23;
  v111 = v22;
  v24 = a1[17];
  v105 = a1[16];
  v106 = v24;
  v99 = a1[19];
  v25 = [objc_allocWithZone(DIAttributeLabel) init];
  v26 = String._bridgeToObjectiveC()();
  [v25 setIdentifier:v26];

  v27 = *(a2 + 464);
  if (v27 && *(v27 + 16))
  {
    sub_10003ADCC(v13, v12);
  }

  v28 = String._bridgeToObjectiveC()();

  [v25 setDefaultValue:v28];

  v29 = [v25 defaultValue];
  if (!v29)
  {
    goto LABEL_21;
  }

  v100 = v4;
  v30 = v29;
  v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v33 = v32;

  v119 = v31;
  v120 = v33;
  v117 = 0xD000000000000012;
  v118 = 0x80000001006FF100;
  sub_10001F298();
  if ((StringProtocol.contains<A>(_:)() & 1) == 0)
  {

LABEL_21:
    v47 = v121;
    v49 = v113;
    v48 = v114;
    v50 = v112;
    if (v112)
    {
      if (v27)
      {
        v51 = *(v27 + 16);

        if (v51)
        {
          sub_10003ADCC(v101, v50);
          if (v52)
          {
          }
        }
      }

      else
      {
      }

      v53 = String._bridgeToObjectiveC()();

      [v25 setButtonTitle:v53];
    }

    if (v49)
    {
      if (v27)
      {
        if (*(v27 + 16))
        {
          v54 = sub_10003ADCC(v107, v49);
          if (v55)
          {
            v107 = *(*(v27 + 56) + 16 * v54);
          }
        }
      }

      v56 = String._bridgeToObjectiveC()();

      [v25 setDetailTitle:v56];

      if (v27)
      {
        if (*(v27 + 16))
        {
          v57 = sub_10003ADCC(v102, v110);
          if (v58)
          {
            v110 = *(*(v27 + 56) + 16 * v57 + 8);
          }
        }

        v59 = String._bridgeToObjectiveC()();

        [v25 setDetailSubtitle:v59];

        if (*(v27 + 16))
        {
          v60 = sub_10003ADCC(v103, v108);
          if (v61)
          {
            v108 = *(*(v27 + 56) + 16 * v60 + 8);
          }
        }
      }

      else
      {

        v62 = String._bridgeToObjectiveC()();

        [v25 setDetailSubtitle:v62];
      }

      v63 = String._bridgeToObjectiveC()();

      [v25 setDetailBody:v63];
    }

    if (v48)
    {
      if (v27)
      {
        if (*(v27 + 16))
        {
          v64 = sub_10003ADCC(v109, v48);
          if (v65)
          {
            v109 = *(*(v27 + 56) + 16 * v64);
          }
        }
      }

      v66 = String._bridgeToObjectiveC()();

      [v25 setBusinessChatButtonTitle:v66];

      if (v27)
      {
        if (*(v27 + 16))
        {
          v67 = sub_10003ADCC(v104, v111);
          if (v68)
          {
            v111 = *(*(v27 + 56) + 16 * v67 + 8);
          }
        }

        v69 = String._bridgeToObjectiveC()();

        [v25 setBusinessChatIdentifier:v69];

        if (*(v27 + 16))
        {
          sub_10003ADCC(v105, v106);
        }
      }

      else
      {

        v70 = String._bridgeToObjectiveC()();

        [v25 setBusinessChatIdentifier:v70];
      }

      v71 = String._bridgeToObjectiveC()();

      [v25 setBusinessChatIntentName:v71];
    }

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    goto LABEL_58;
  }

  v34 = *a3;
  if (!v34 || (v35 = v34[2]) == 0)
  {

LABEL_58:
    return;
  }

  v36 = v99;
  if (v35 == 1 || !v99 || !v99[2])
  {
    v119 = v31;
    v120 = v33;
    v117 = 0xD000000000000012;
    v118 = 0x80000001006FF100;
    v42 = v34[5];
    v115 = v34[4];
    v116 = v42;
    StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

    v43 = String._bridgeToObjectiveC()();

    [v25 setDefaultValue:v43];

    defaultLogger()();
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&_mh_execute_header, v44, v45, "replaced 1 phone numbers", v46, 2u);
    }

    (*(v97 + 8))(v10, v98);
    goto LABEL_21;
  }

  if (!v36[2])
  {
    __break(1u);
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  v38 = v36[5];
  v37 = v36[6];
  if (v27)
  {
    v39 = *(v27 + 16);

    if (v39)
    {

      sub_10003ADCC(v38, v37);
      v41 = v40;

      if (v41)
      {
      }
    }
  }

  else
  {
  }

  v72 = String._bridgeToObjectiveC()();

  [v25 setDefaultValue:v72];

  v73 = v34[2];
  if (!v73)
  {
    goto LABEL_69;
  }

  if (v73 != 1)
  {
    v75 = v34[4];
    v74 = v34[5];
    v77 = v34[6];
    v76 = v34[7];

    v78 = [v25 defaultValue];
    if (v78)
    {
      v79 = v78;
      v80 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v99 = v76;
      v81 = v80;
      v95 = v77;
      v83 = v82;

      v119 = v81;
      v120 = v83;
      v117 = 0xD000000000000012;
      v118 = 0x80000001006FF100;
      v115 = v75;
      v116 = v74;
      v84 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
      v86 = v85;

      v119 = v84;
      v120 = v86;
      v117 = 0xD000000000000014;
      v118 = 0x80000001006FF120;
      v115 = v95;
      v116 = v99;
      StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

      v87 = String._bridgeToObjectiveC()();
    }

    else
    {

      v87 = 0;
    }

    v88 = v98;
    v89 = v97;

    [v25 setDefaultValue:v87];

    v90 = v96;
    defaultLogger()();
    v91 = Logger.logObject.getter();
    v92 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v91, v92))
    {
      v93 = swift_slowAlloc();
      *v93 = 0;
      _os_log_impl(&_mh_execute_header, v91, v92, "replaced 2 phone numbers", v93, 2u);
    }

    (*(v89 + 8))(v90, v88);
    goto LABEL_21;
  }

LABEL_70:
  __break(1u);
}

uint64_t sub_1000E0BF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v56 = a3;
  v46 = type metadata accessor for DIPError.Code();
  v45 = *(v46 - 8);
  __chkstk_darwin(v46);
  v47 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_100007224(&qword_100839BE8, &qword_1006D49E8);
  v6 = *(v70 - 8);
  __chkstk_darwin(v70);
  v59 = &v45 - v7;
  v8 = sub_100007224(&qword_100839BF0, &qword_1006D49F0);
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v45 - v13;
  sub_100007224(&qword_100839BF8, &qword_1006D49F8);
  Regex.init(_regexString:version:)();
  Regex.ignoresCase(_:)();
  v15 = *(v9 + 8);
  v50 = v9 + 8;
  v48 = v15;
  v15(v12, v8);
  v58 = a1;
  *&v67 = a1;
  *(&v67 + 1) = a2;
  sub_1000348A0();
  sub_1000BA30C(&qword_100839C08, &qword_100839BF0, &qword_1006D49F0, &protocol conformance descriptor for Regex<A>);
  v16 = a2;

  v49 = v14;
  v51 = v8;
  result = BidirectionalCollection<>.matches<A, B>(of:)();
  v18 = result;
  v53 = *(result + 16);
  if (v53)
  {
    v19 = 0;
    v54 = v6 + 16;
    v55 = (v6 + 8);
    v20 = v6;
    v52 = v6;
    while (v19 < *(v18 + 16))
    {
      (*(v20 + 16))(v59, v18 + ((*(v20 + 80) + 32) & ~*(v20 + 80)) + *(v20 + 72) * v19, v70);
      swift_getKeyPath();
      Regex.Match.subscript.getter();

      v21 = static String._fromSubstring(_:)();
      v23 = v22;

      v24 = v56;
      if (!*(v56 + 16) || (v25 = sub_10003ADCC(v21, v23), (v26 & 1) == 0))
      {

        *&v67 = 0;
        *(&v67 + 1) = 0xE000000000000000;
        _StringGuts.grow(_:)(38);

        *&v67 = 0xD000000000000015;
        *(&v67 + 1) = 0x80000001006FF160;
        v36._countAndFlagsBits = v21;
        v36._object = v23;
        String.append(_:)(v36);
        v37._countAndFlagsBits = 0x656874206E692029;
        v37._object = 0xEF676E6972747320;
        String.append(_:)(v37);
        v57 = *(&v67 + 1);
        v58 = v67;
        (*(v45 + 104))(v47, enum case for DIPError.Code.unknownAttribute(_:), v46);
        sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
        v38 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
        v39 = (*(*v38 + 80) + 32) & ~*(*v38 + 80);
        v40 = swift_allocObject();
        *(v40 + 16) = xmmword_1006BF520;
        v41 = v40 + v39;
        v42 = (v41 + v38[14]);
        v43 = enum case for DIPError.PropertyKey.attributeID(_:);
        v44 = type metadata accessor for DIPError.PropertyKey();
        (*(*(v44 - 8) + 104))(v41, v43, v44);
        v42[3] = &type metadata for String;
        v42[4] = &protocol witness table for String;
        *v42 = v21;
        v42[1] = v23;
        sub_10003C9C0(v40);
        swift_setDeallocating();
        sub_10000BE18(v41, &qword_1008341D0, &unk_1006BF8D0);
        swift_deallocClassInstance();
        type metadata accessor for DIPError();
        sub_1000F09F8(&qword_100834130, 255, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
        swift_allocError();
        DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
        swift_willThrow();
        (*v55)(v59, v70);
        return v48(v49, v51);
      }

      v27 = v25;
      ++v19;

      v28 = (*(v24 + 56) + 16 * v27);
      v30 = *v28;
      v29 = v28[1];
      v65 = v58;
      v66 = v16;
      v57 = v16;
      swift_getKeyPath();

      v31 = v70;
      v32 = v59;
      Regex.Match.subscript.getter();

      v62 = v67;
      v63 = v68;
      v64 = v69;
      v60 = v30;
      v61 = v29;
      sub_10001F298();
      sub_1000F2814();
      v58 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
      v34 = v33;

      v35 = v31;
      v20 = v52;
      (*v55)(v32, v35);

      v16 = v34;
      if (v53 == v19)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_9:

    v48(v49, v51);
    return v58;
  }

  return result;
}

uint64_t sub_1000E1450(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[185] = v4;
  v5[184] = a4;
  v5[183] = a3;
  v5[182] = a2;
  v5[181] = a1;
  return _swift_task_switch(sub_1000E1480, 0, 0);
}

uint64_t sub_1000E1480()
{
  v0[177] = _swiftEmptyArrayStorage;
  v0[178] = 0;
  if (qword_100832CF8 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  v0[186] = v1;
  *v1 = v0;
  v1[1] = sub_1000E1570;
  v2 = v0[184];

  return sub_1005B0A4C((v0 + 2), 0, 0, v2, 1, 0);
}

uint64_t sub_1000E1570()
{

  return _swift_task_switch(sub_1000E1688, 0, 0);
}

uint64_t sub_1000E1688()
{
  v37 = v0;
  v1 = (v0 + 1416);
  v2 = *(*(v0 + 1448) + 112);
  *(v0 + 1408) = v2;
  if (v2)
  {
    v3 = *(v2 + 16);
    sub_10000BBC4(v0 + 16, v0 + 504, &qword_100839998, &qword_1006DCAA0);

    sub_10000BBC4(v0 + 1408, v0 + 1440, &unk_100839C20, &unk_1006D4A40);
    if (v3)
    {
      v4 = (v2 + 32);
      do
      {
        v5 = *(v0 + 1464);
        v6 = *(v0 + 1456);
        v7 = v4[1];
        *(v0 + 992) = *v4;
        *(v0 + 1008) = v7;
        v8 = v4[5];
        v10 = v4[2];
        v9 = v4[3];
        *(v0 + 1056) = v4[4];
        *(v0 + 1072) = v8;
        *(v0 + 1024) = v10;
        *(v0 + 1040) = v9;
        v11 = v4[3];
        v33 = v4[2];
        v34 = v11;
        v12 = v4[5];
        v35 = v4[4];
        v36 = v12;
        v13 = v4[1];
        v31 = *v4;
        v32 = v13;
        sub_1000F2868(v0 + 992, v0 + 1088);
        sub_1000E34D0(&v31, (v0 + 16), (v0 + 1424), (v0 + 1416), v6, v5);
        v14 = v34;
        *(v0 + 1312) = v33;
        *(v0 + 1328) = v14;
        v15 = v36;
        *(v0 + 1344) = v35;
        *(v0 + 1360) = v15;
        v16 = v32;
        *(v0 + 1280) = v31;
        *(v0 + 1296) = v16;
        sub_1000F28A0(v0 + 1280);
        v4 += 6;
        --v3;
      }

      while (v3);
      v17 = *v1;
    }

    else
    {
      v17 = _swiftEmptyArrayStorage;
    }

    sub_10000BE18(v0 + 16, &qword_100839998, &qword_1006DCAA0);
    sub_10000BE18(v0 + 16, &qword_100839998, &qword_1006DCAA0);

    sub_10000BE18(v0 + 1408, &unk_100839C20, &unk_1006D4A40);
  }

  else
  {
    sub_10000BE18(v0 + 16, &qword_100839998, &qword_1006DCAA0);

    v17 = _swiftEmptyArrayStorage;
  }

  if (!(v17 >> 62))
  {
    if (!*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_17;
    }

LABEL_11:
    if ((v17 & 0xC000000000000001) != 0)
    {
      v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_24:
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
LABEL_16:
        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        goto LABEL_17;
      }

      v18 = v17[4];
    }

    v19 = v18;
    v20 = (v0 + 1432);
    [v18 mutableCopy];

    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_10001F8D4(0, &qword_10084A2B0, DIAttributeDocumentScanRequirements_ptr);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_17;
    }

    v21 = *v20;
    [*v20 setType:DIAttributeIdentityDocumentTypeUnknown];
    v17 = v21;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_16;
    }

    goto LABEL_24;
  }

  if (_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_11;
  }

LABEL_17:
  v22 = *(v0 + 1448);
  v23 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_10001F8D4(0, &qword_10084A2B0, DIAttributeDocumentScanRequirements_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v25 = [v23 initWithAcceptableDocs:isa];

  v26 = *(v0 + 1424);
  v27 = v25;
  [v27 setAcceptableDocTypes:v26];
  v28 = String._bridgeToObjectiveC()();
  sub_1000F05D4(v22);
  [v27 setSubmissionKey:v28];

  v29 = *(v0 + 8);

  return v29(v27);
}

uint64_t sub_1000E1AD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[201] = a6;
  v6[200] = a5;
  v6[199] = a4;
  v6[198] = a3;
  v6[197] = a2;
  v6[196] = a1;
  v7 = type metadata accessor for DIPError.Code();
  v6[202] = v7;
  v6[203] = *(v7 - 8);
  v6[204] = swift_task_alloc();
  v8 = type metadata accessor for Date();
  v6[205] = v8;
  v6[206] = *(v8 - 8);
  v6[207] = swift_task_alloc();

  return _swift_task_switch(sub_1000E1C08, 0, 0);
}

uint64_t sub_1000E1C08()
{
  if (qword_100832CF8 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 1664) = v1;
  *v1 = v0;
  v1[1] = sub_1000E1CE8;
  v2 = *(v0 + 1608);

  return sub_1005B0A4C(v0 + 504, 0, 0, v2, 1, 0);
}

uint64_t sub_1000E1CE8()
{

  return _swift_task_switch(sub_1000E1DE4, 0, 0);
}

id sub_1000E1DE4()
{
  v135 = v0;
  memcpy(v0 + 2, v0 + 63, 0x1E8uLL);
  if (sub_1000A257C((v0 + 2)) == 1)
  {
    (*(v0[203] + 104))(v0[204], enum case for DIPError.Code.unexpectedDaemonState(_:), v0[202]);
    sub_1000402AC(_swiftEmptyArrayStorage);
LABEL_16:
    type metadata accessor for DIPError();
    sub_1000F09F8(&qword_100834130, 255, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v52 = v0[1];

    return v52();
  }

  v1 = v0[59];
  v125 = v0;
  if (!v1 || !*(v1 + 16))
  {
    sub_10000BE18((v0 + 63), &qword_100839998, &qword_1006DCAA0);
LABEL_15:
    v36 = v0[204];
    v37 = v0[203];
    v38 = v0[202];
    v39 = v0[196];
    *&v127 = 0;
    *(&v127 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(57);
    v40._countAndFlagsBits = 0xD000000000000025;
    v40._object = 0x80000001006FF1D0;
    String.append(_:)(v40);
    v41 = *v39;
    v42 = v39[1];

    v43._countAndFlagsBits = v41;
    v43._object = v42;
    String.append(_:)(v43);
    v44._object = 0x80000001006FF200;
    v44._countAndFlagsBits = 0xD000000000000012;
    String.append(_:)(v44);
    (*(v37 + 104))(v36, enum case for DIPError.Code.unexpectedDaemonState(_:), v38);
    sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
    v45 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
    v46 = (*(*v45 + 80) + 32) & ~*(*v45 + 80);
    v47 = swift_allocObject();
    *(v47 + 16) = xmmword_1006BF520;
    v48 = v47 + v46;
    v49 = (v48 + v45[14]);
    v50 = enum case for DIPError.PropertyKey.attributeID(_:);
    v51 = type metadata accessor for DIPError.PropertyKey();
    (*(*(v51 - 8) + 104))(v48, v50, v51);
    v49[3] = &type metadata for String;
    v49[4] = &protocol witness table for String;
    *v49 = v41;
    v49[1] = v42;
    sub_10003C9C0(v47);
    swift_setDeallocating();
    sub_10000BE18(v48, &qword_1008341D0, &unk_1006BF8D0);
    swift_deallocClassInstance();
    goto LABEL_16;
  }

  v2 = v0[60];
  v3 = v0[196];
  v4 = *v3;
  v5 = v3[1];

  v6 = sub_10003ADCC(v4, v5);
  if ((v7 & 1) == 0)
  {
    sub_10000BE18((v0 + 63), &qword_100839998, &qword_1006DCAA0);

    goto LABEL_15;
  }

  v8 = (*(v1 + 56) + 152 * v6);
  v9 = *v8;
  v10 = *(v8 + 6);
  v11 = *(v8 + 10);
  v108 = *(v8 + 11);
  v109 = *(v8 + 12);
  v110 = v8[104];
  v111 = v8[105];
  v12 = v8[106];
  v123 = v8[107];
  v121 = v8[108];
  v118 = v8[109];
  v13 = *(v8 + 14);
  v114 = v8[120];
  v115 = v8[121];
  v107 = *(v8 + 16);
  v14 = objc_allocWithZone(DIAttribute);

  v116 = v10;

  v117 = v11;

  v15 = [v14 init];
  if (v9 > 2)
  {
    v16 = v12;
    v112 = v15;
    v17 = v125;
    if ((v9 - 3) < 2)
    {
      v18 = v125[196];

      sub_10000BE18((v125 + 63), &qword_100839998, &qword_1006DCAA0);
      v19 = *(v18 + 120);
      if (v19)
      {
        v126 = _swiftEmptyArrayStorage;
        v20 = *(v19 + 16);
        if (v20)
        {
          v21 = (v19 + 32);
          do
          {
            *(v125 + 62) = *v21;
            v22 = v21[1];
            v23 = v21[2];
            v24 = v21[4];
            *(v125 + 65) = v21[3];
            *(v125 + 66) = v24;
            *(v125 + 63) = v22;
            *(v125 + 64) = v23;
            v25 = v21[5];
            v26 = v21[6];
            v27 = v21[7];
            *(v125 + 1113) = *(v21 + 121);
            *(v125 + 68) = v26;
            *(v125 + 69) = v27;
            *(v125 + 67) = v25;
            v28 = v21[7];
            v133 = v21[6];
            v134[0] = v28;
            *(v134 + 9) = *(v21 + 121);
            v29 = v21[3];
            v129 = v21[2];
            v130 = v29;
            v30 = v21[5];
            v131 = v21[4];
            v132 = v30;
            v31 = v21[1];
            v127 = *v21;
            v128 = v31;
            sub_1000F28D0((v125 + 124), (v125 + 142));
            sub_1000E3124(&v126, &v127, v2);
            v32 = v134[0];
            *(v125 + 95) = v133;
            *(v125 + 96) = v32;
            *(v125 + 1545) = *(v134 + 9);
            v33 = v130;
            *(v125 + 91) = v129;
            *(v125 + 92) = v33;
            v34 = v132;
            *(v125 + 93) = v131;
            *(v125 + 94) = v34;
            v35 = v128;
            *(v125 + 89) = v127;
            *(v125 + 90) = v35;
            sub_1000F2908((v125 + 178));
            v21 += 9;
            --v20;
          }

          while (v20);
        }
      }

      else
      {
      }

      v54 = [objc_allocWithZone(DIAttributeCamera) init];
      sub_10001F8D4(0, &unk_100845F30, DIAttributeImageCaptureRequirements_ptr);
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v54 setScanRequirements:isa];

      goto LABEL_71;
    }

    if (v9 == 5)
    {

      sub_10000BE18((v125 + 63), &qword_100839998, &qword_1006DCAA0);

      v66 = DIAttributeSMSOTP_ptr;
      goto LABEL_43;
    }

    sub_10000BE18((v125 + 63), &qword_100839998, &qword_1006DCAA0);
    v54 = v112;
LABEL_72:
    if (v17[200])
    {
      v95 = String._bridgeToObjectiveC()();
    }

    else
    {
      v95 = 0;
    }

    v96 = v17[196];
    [v54 setGroup:v95];

    v97 = String._bridgeToObjectiveC()();
    [v54 setIdentifier:v97];

    [v54 setIsSensitive:v114];
    [v54 setNotForVerification:v115];
    [v54 setHoldLocally:*(v96 + 57) & 1];
    if (v116)
    {
      v98 = String._bridgeToObjectiveC()();
    }

    else
    {
      v98 = 0;
    }

    [v54 setDisplayFormat:v98];

    v99 = String._bridgeToObjectiveC()();

    [v54 setLocalizedDisplayName:v99];

    v100 = String._bridgeToObjectiveC()();

    [v54 setLocalizedPlaceholder:v100];

    if (v117)
    {
    }

    v101 = String._bridgeToObjectiveC()();

    [v54 setSubmissionKey:v101];

    if ([v54 holdLocally])
    {
      [v54 setCurrentValue:{objc_msgSend(v54, "defaultValue")}];
      swift_unknownObjectRelease();
    }

    v102 = v17[196];
    [v54 setOptional:(*(v102 + 16) & 1) == 0];
    if (*(v102 + 72))
    {
      v103 = String._bridgeToObjectiveC()();
    }

    else
    {
      v103 = 0;
    }

    v104 = v17[196];
    [v54 setCodeOnError:v103];

    v105 = *(v104 + 144);
    if (v105)
    {
      [v54 setDataNodeProof:*(v17[196] + 128) & 1];
      v105 = String._bridgeToObjectiveC()();
    }

    else
    {
      [v54 setDataNodeProof:0];
    }

    [v54 setDataNodeProofGroup:v105];

    v106 = v17[1];

    return v106(v54);
  }

  if (!v9)
  {
    v16 = v12;
    v112 = v15;

    v17 = v125;
    sub_10000BE18((v125 + 63), &qword_100839998, &qword_1006DCAA0);
    v67 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v66 = DIAttributeText_ptr;
    if (v67)
    {
      v66 = DIAttributeSMSOTP_ptr;
    }

LABEL_43:
    v68 = v17[196];
    v69 = [objc_allocWithZone(*v66) init];
    [v69 setMinLength:v108];
    [v69 setMaxLength:v109];
    [v69 setIsSecureText:v110];
    [v69 setIsSecureVisibleText:v111];
    [v69 setIsNumeric:v16];
    v54 = v69;
    v70 = String._bridgeToObjectiveC()();

    [v54 setSubmissionFormat:v70];

    if (*(v68 + 32))
    {
      v71 = String._bridgeToObjectiveC()();
    }

    else
    {
      v71 = 0;
    }

    v85 = v17[196];
    [v54 setClientValidationRegex:v71];

    if (*(v85 + 48))
    {
      v86 = String._bridgeToObjectiveC()();
    }

    else
    {
      v86 = 0;
    }

    v87 = v17[198];
    [v54 setServerValidationURL:v86];

    if (v87)
    {
      v88 = String._bridgeToObjectiveC()();
    }

    else
    {
      v88 = 0;
    }

    [v54 setDefaultValue:v88];

    if (v9 <= 2)
    {
      v92 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v92 & 1) == 0)
      {

LABEL_71:

        goto LABEL_72;
      }
    }

    else
    {
    }

    v93 = String._bridgeToObjectiveC()();

    [v54 setSupportingData:v93];

    objc_opt_self();
    v94 = swift_dynamicCastObjCClass();
    if (v94)
    {
      [v94 setValidityInSeconds:v107];
    }

    goto LABEL_71;
  }

  if (v9 != 1)
  {
    v72 = v15;
    v17 = v125;
    v73 = v125[198];

    sub_10000BE18((v125 + 63), &qword_100839998, &qword_1006DCAA0);
    v74 = [objc_allocWithZone(DIAttributeDate) init];
    [v74 setRequireDay:v123];
    [v74 setRequireMonth:v121];
    [v74 setRequireYear:v118];
    v54 = v74;
    v75 = String._bridgeToObjectiveC()();

    [v54 setSubmissionFormat:v75];

    if (v73)
    {
      v76 = [objc_allocWithZone(NSDateFormatter) init];
      v77 = v54;
      v78 = [v54 submissionFormat];
      if (!v78)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v78 = String._bridgeToObjectiveC()();
      }

      v79 = v72;
      [v76 setDateFormat:v78];

      v80 = String._bridgeToObjectiveC()();
      v81 = [v76 dateFromString:v80];

      if (v81)
      {
        v82 = v125[207];
        v83 = v125[206];
        v84 = v125[205];
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v81 = Date._bridgeToObjectiveC()().super.isa;
        (*(v83 + 8))(v82, v84);
      }

      v54 = v77;
      [v77 setDefaultValue:v81];

      v17 = v125;
    }

    else
    {
    }

    goto LABEL_72;
  }

  v113 = v15;
  v17 = v125;
  sub_10000BE18((v125 + 63), &qword_100839998, &qword_1006DCAA0);
  result = [objc_allocWithZone(DIAttributePicker) init];
  v54 = result;
  *&v127 = _swiftEmptyArrayStorage;
  v122 = *(v13 + 16);
  if (!v122)
  {
LABEL_64:

    sub_10001F8D4(0, &qword_100839C30, DIAttributePickerItem_ptr);
    v90 = Array._bridgeToObjectiveC()().super.isa;

    [v54 setPickerItems:v90];

    v91 = String._bridgeToObjectiveC()();

    [v113 setSubmissionFormat:v91];

    goto LABEL_72;
  }

  v55 = 0;
  v119 = v125[198];
  v56 = (v13 + 56);
  v124 = result;
  v120 = v13;
  while (v55 < *(v13 + 16))
  {
    v57 = *(v56 - 3);
    v58 = *(v56 - 2);
    v59 = *(v56 - 1);
    v60 = *v56;
    v61 = objc_allocWithZone(DIAttributePickerItem);

    v62 = String._bridgeToObjectiveC()();
    v63 = String._bridgeToObjectiveC()();
    v64 = [v61 initWithName:v62 value:v63];

    if (v64)
    {
      v65 = v64;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v127 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v127 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      if (v119 && (v57 == v125[197] && v125[198] == v58 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v59 == v125[197] && v125[198] == v60 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
      {
        [v124 setDefaultValue:v65];
      }
    }

    ++v55;

    v56 += 4;
    v54 = v124;
    v13 = v120;
    v17 = v125;
    if (v122 == v55)
    {
      goto LABEL_64;
    }
  }

  __break(1u);
  return result;
}