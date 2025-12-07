uint64_t sub_100019088()
{
  v1 = v0;
  v2 = sub_100003870(&qword_100054460, &qword_10003E7B8);
  __chkstk_darwin(v2 - 8);
  v57 = v52 - v3;
  v4 = sub_100003870(&qword_100054428, &qword_10003E778);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = v52 - v8;
  v59 = type metadata accessor for ModelManagerGameAssertionPolicy();
  v56 = *(v59 - 8);
  v10 = *(v56 + 64);
  v11 = __chkstk_darwin(v59);
  v54 = v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v11);
  v55 = v52 - v13;
  __chkstk_darwin(v12);
  v58 = v52 - v14;
  v15 = type metadata accessor for ModelManagerGameAssertionStatus.Config();
  v60 = *(v15 - 8);
  v61 = v15;
  __chkstk_darwin(v15);
  v17 = v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchPredicate();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = (v52 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = *(v1 + 24);
  *v21 = v22;
  (*(v19 + 104))(v21, enum case for DispatchPredicate.onQueue(_:), v18);
  v23 = v22;
  LOBYTE(v22) = _dispatchPreconditionTest(_:)();
  result = (*(v19 + 8))(v21, v18);
  if ((v22 & 1) == 0)
  {
    __break(1u);
    return result;
  }

  v25 = *(v1 + 16);
  [v25 lock];
  swift_beginAccess();
  v26 = *(v1 + 80);
  dispatch thunk of ModelManagerGameAssertionStatus.config.getter();

  [v25 unlock];
  v64[3] = &type metadata for GamePolicyCoordinatorFF;
  v64[4] = sub_10001B9F4();
  LOBYTE(v26) = isFeatureEnabled(_:)();
  sub_100003964(v64);
  if (v26)
  {
    ModelManagerGameAssertionStatus.Config.policy.getter();
    v27 = v56;
    v28 = *(v56 + 48);
    v29 = v59;
    if (v28(v9, 1, v59) == 1)
    {
      sub_1000096E8(v9, &qword_100054428, &qword_10003E778);
      goto LABEL_5;
    }

    v53 = v17;
    v34 = *(v27 + 32);
    v34(v58, v9, v29);
    v35 = *(v1 + 120);
    if (v35)
    {
      v52[1] = v27 + 32;

      Assertion.policy.getter();
      v36 = v59;
      ModelManagerGameAssertionPolicy.init(rawValue:)();
      if (v28(v7, 1, v36) == 1)
      {

        (*(v27 + 8))(v58, v36);
        (*(v60 + 8))(v53, v61);
        return sub_1000096E8(v7, &qword_100054428, &qword_10003E778);
      }

      v34(v55, v7, v36);
      sub_10001BF5C(&qword_100054470, &type metadata accessor for ModelManagerGameAssertionPolicy, &protocol conformance descriptor for ModelManagerGameAssertionPolicy);
      dispatch thunk of RawRepresentable.rawValue.getter();
      v37 = v58;
      dispatch thunk of RawRepresentable.rawValue.getter();
      if (v64[0] == v62 && v64[1] == v63)
      {

LABEL_16:

        v39 = *(v27 + 8);
        v40 = v59;
        v39(v55, v59);
        v39(v37, v40);
        return (*(v60 + 8))(v53, v61);
      }

      v38 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v38)
      {
        goto LABEL_16;
      }

      *(v1 + 120) = 0;

      v41 = type metadata accessor for TaskPriority();
      v42 = v57;
      (*(*(v41 - 8) + 56))(v57, 1, 1, v41);
      v43 = swift_allocObject();
      v43[2] = 0;
      v43[3] = 0;
      v43[4] = v35;

      v27 = v56;
      sub_100018680(0, 0, v42, &unk_10003E7E8, v43);

      v44 = v59;
      (*(v27 + 8))(v55, v59);
      v29 = v44;
    }

    v45 = type metadata accessor for TaskPriority();
    v46 = v57;
    (*(*(v45 - 8) + 56))(v57, 1, 1, v45);
    v47 = v54;
    (*(v27 + 16))(v54, v58, v29);
    v48 = (*(v27 + 80) + 32) & ~*(v27 + 80);
    v49 = (v10 + v48 + 7) & 0xFFFFFFFFFFFFFFF8;
    v50 = v29;
    v51 = swift_allocObject();
    *(v51 + 16) = 0;
    *(v51 + 24) = 0;
    v34((v51 + v48), v47, v50);
    *(v51 + v49) = v1;

    sub_100018680(0, 0, v46, &unk_10003E7D8, v51);

    (*(v27 + 8))(v58, v50);
    return (*(v60 + 8))(v53, v61);
  }

LABEL_5:
  v30 = *(v1 + 120);
  if (v30)
  {
    *(v1 + 120) = 0;
    v31 = type metadata accessor for TaskPriority();
    v32 = v57;
    (*(*(v31 - 8) + 56))(v57, 1, 1, v31);
    v33 = swift_allocObject();
    v33[2] = 0;
    v33[3] = 0;
    v33[4] = v30;

    sub_100018680(0, 0, v32, &unk_10003E7C8, v33);

    sub_100019C74();
  }

  return (*(v60 + 8))(v17, v61);
}

uint64_t sub_100019904@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v18 = a3;
  v5 = type metadata accessor for OSSignpostID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = dispatch thunk of SustainedExecutionStatus.enabled.getter() & 1;
  swift_beginAccess();
  v10 = *(a2 + 64);
  v11 = dispatch thunk of SustainedExecutionStatus.enabled.getter() & 1;

  v12 = *(a2 + 64);
  *(a2 + 64) = a1;
  v13 = a1;

  if (v9 != v11)
  {
    v14 = (v6 + 8);
    if (dispatch thunk of SustainedExecutionStatus.enabled.getter())
    {
      static os_signpost_type_t.begin.getter();
    }

    else
    {
      static os_signpost_type_t.end.getter();
    }

    v15 = static Logger.stateTracking.getter();
    static OSSignpostID.exclusive.getter();
    os_signpost(_:dso:log:name:signpostID:)();

    (*v14)(v8, v5);
  }

  swift_beginAccess();
  *v18 = *(a2 + 32);
}

uint64_t sub_100019ABC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v18 = a3;
  v5 = type metadata accessor for OSSignpostID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = DynamicSplitterStatus.enabled.getter() & 1;
  swift_beginAccess();
  v10 = *(a2 + 72);
  v11 = DynamicSplitterStatus.enabled.getter() & 1;

  v12 = *(a2 + 72);
  *(a2 + 72) = a1;
  v13 = a1;

  if (v9 != v11)
  {
    v14 = (v6 + 8);
    if (DynamicSplitterStatus.enabled.getter())
    {
      static os_signpost_type_t.begin.getter();
    }

    else
    {
      static os_signpost_type_t.end.getter();
    }

    v15 = static Logger.stateTracking.getter();
    static OSSignpostID.exclusive.getter();
    os_signpost(_:dso:log:name:signpostID:)();

    (*v14)(v8, v5);
  }

  swift_beginAccess();
  *v18 = *(a2 + 32);
}

uint64_t sub_100019C74()
{
  v1 = type metadata accessor for String.Encoding();
  v28 = *(v1 - 8);
  v29 = v1;
  __chkstk_darwin(v1);
  v3 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100003870(&qword_100054428, &qword_10003E778);
  __chkstk_darwin(v4 - 8);
  v6 = &v26 - v5;
  v7 = type metadata accessor for ModelManagerGameAssertionPolicy();
  v27 = *(v7 - 8);
  v8 = __chkstk_darwin(v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v26 - v11;
  v13 = type metadata accessor for DispatchPredicate();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = (&v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = *(v0 + 24);
  *v16 = v17;
  (*(v14 + 104))(v16, enum case for DispatchPredicate.onQueue(_:), v13);
  v18 = v17;
  LOBYTE(v17) = _dispatchPreconditionTest(_:)();
  result = (*(v14 + 8))(v16, v13);
  if ((v17 & 1) == 0)
  {
    __break(1u);
    goto LABEL_18;
  }

  v20 = *(v0 + 128);
  if (!v20)
  {
    return result;
  }

  if (!*(v0 + 120))
  {
    goto LABEL_6;
  }

  Assertion.policy.getter();
  ModelManagerGameAssertionPolicy.init(rawValue:)();
  v21 = v27;
  if ((*(v27 + 48))(v6, 1, v7) != 1)
  {
    (*(v21 + 32))(v12, v6, v7);
    (*(v21 + 16))(v10, v12, v7);
    v22 = (*(v21 + 88))(v10, v7);
    if (v22 == enum case for ModelManagerGameAssertionPolicy.standardGameMode(_:))
    {
      v23 = 1;
LABEL_11:
      notify_set_state(v20, v23);

      (*(v21 + 8))(v12, v7);
      goto LABEL_12;
    }

    if (v22 == enum case for ModelManagerGameAssertionPolicy.aaaGameMode(_:))
    {
      v23 = 2;
      goto LABEL_11;
    }

LABEL_18:
    result = _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
    return result;
  }

  sub_1000096E8(v6, &qword_100054428, &qword_10003E778);
LABEL_6:
  notify_set_state(v20, 0);
LABEL_12:
  v30 = 0xD00000000000003DLL;
  v31 = 0x80000001000416B0;
  static String.Encoding.utf8.getter();
  sub_100009790();
  v24 = StringProtocol.cString(using:)();
  (*(v28 + 8))(v3, v29);
  if (v24)
  {
    v25 = (v24 + 32);
  }

  else
  {
    v25 = 0;
  }

  notify_post(v25);
}

uint64_t sub_10001A0A4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10001A138;

  return Assertion.invalidate()();
}

uint64_t sub_10001A138()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10001A22C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[16] = a4;
  v5[17] = a5;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v5[18] = v6;
  v5[19] = *(v6 - 8);
  v5[20] = swift_task_alloc();
  v7 = type metadata accessor for DispatchQoS();
  v5[21] = v7;
  v5[22] = *(v7 - 8);
  v5[23] = swift_task_alloc();
  v8 = type metadata accessor for ModelManagerGameAssertionPolicy();
  v5[24] = v8;
  v9 = *(v8 - 8);
  v5[25] = v9;
  v5[26] = *(v9 + 64);
  v5[27] = swift_task_alloc();

  return _swift_task_switch(sub_10001A3AC, 0, 0);
}

uint64_t sub_10001A3AC()
{
  type metadata accessor for Assertion();
  v1 = ModelManagerGameAssertionPolicy.rawValue.getter();
  v3 = v2;
  v4 = swift_task_alloc();
  *(v0 + 224) = v4;
  *v4 = v0;
  v4[1] = sub_10001A484;

  return Assertion.__allocating_init(policy:description:)(v1, v3, 0xD000000000000015, 0x8000000100040B60);
}

uint64_t sub_10001A484(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 232) = v1;

  if (v1)
  {
    v5 = sub_10001A88C;
  }

  else
  {
    *(v4 + 240) = a1;
    v5 = sub_10001A5AC;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10001A5AC()
{
  v1 = v0[30];
  v2 = v0[27];
  v3 = v0[24];
  v4 = v0[25];
  v16 = v0[22];
  v17 = v0[21];
  v12 = v0[23];
  v13 = v0[20];
  v14 = v0[18];
  v5 = v0[16];
  v15 = v0[19];
  v6 = swift_allocObject();
  swift_weakInit();
  (*(v4 + 16))(v2, v5, v3);
  v7 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v8 + 24) = v1;
  (*(v4 + 32))(v8 + v7, v2, v3);
  v0[12] = sub_10001BEF8;
  v0[13] = v8;
  v0[8] = _NSConcreteStackBlock;
  v0[9] = 1107296256;
  v0[10] = sub_100024520;
  v0[11] = &unk_10004DD40;
  v9 = _Block_copy(v0 + 8);

  static DispatchQoS.unspecified.getter();
  v0[15] = _swiftEmptyArrayStorage;
  sub_10001BF5C(&qword_100053B08, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100003870(&unk_1000551B0, &unk_10003E7A0);
  sub_10001B9A0(&qword_100053B10, &unk_1000551B0, &unk_10003E7A0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();

  _Block_release(v9);
  (*(v15 + 8))(v13, v14);
  (*(v16 + 8))(v12, v17);

  v10 = v0[1];

  return v10();
}

uint64_t sub_10001A88C()
{
  v1 = v0[29];
  v2 = v0[23];
  v11 = v0[22];
  v12 = v0[21];
  v8 = v0[20];
  v9 = v0[18];
  v10 = v0[19];
  v3 = swift_allocObject();
  swift_weakInit();
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = v3;
  v0[6] = sub_10001BE24;
  v0[7] = v4;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_100024520;
  v0[5] = &unk_10004DCF0;
  v5 = _Block_copy(v0 + 2);
  swift_errorRetain();

  static DispatchQoS.unspecified.getter();
  v0[14] = _swiftEmptyArrayStorage;
  sub_10001BF5C(&qword_100053B08, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100003870(&unk_1000551B0, &unk_10003E7A0);
  sub_10001B9A0(&qword_100053B10, &unk_1000551B0, &unk_10003E7A0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v5);

  (*(v10 + 8))(v8, v9);
  (*(v11 + 8))(v2, v12);

  v6 = v0[1];

  return v6();
}

uint64_t sub_10001AB10(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.daemon.getter();
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138543362;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v6, v7, "Unable to create ModelManager assertion: %{public}@", v8, 0xCu);
    sub_1000096E8(v9, &unk_100053C00, &qword_10003E810);
  }

  (*(v3 + 8))(v5, v2);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100019C74();
  }

  return result;
}

uint64_t sub_10001ACF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_100003870(&qword_100054460, &qword_10003E7B8);
  __chkstk_darwin(v4 - 8);
  v6 = &v21 - v5;
  v7 = sub_100003870(&qword_100054428, &qword_10003E778);
  __chkstk_darwin(v7 - 8);
  v9 = &v21 - v8;
  v10 = type metadata accessor for ModelManagerGameAssertionPolicy();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v15 = result;
    v16 = *(result + 120);
    *(result + 120) = a2;

    sub_100019C74();
    sub_100019088();
    if (v16)
    {

      Assertion.policy.getter();
      ModelManagerGameAssertionPolicy.init(rawValue:)();
      if ((*(v11 + 48))(v9, 1, v10) == 1)
      {

        return sub_1000096E8(v9, &qword_100054428, &qword_10003E778);
      }

      else
      {
        (*(v11 + 32))(v13, v9, v10);
        sub_10001BF5C(&qword_100054478, &type metadata accessor for ModelManagerGameAssertionPolicy, &protocol conformance descriptor for ModelManagerGameAssertionPolicy);
        if (dispatch thunk of static Comparable.< infix(_:_:)())
        {
          *(v15 + 120) = v16;

          v17 = type metadata accessor for TaskPriority();
          (*(*(v17 - 8) + 56))(v6, 1, 1, v17);
          v18 = swift_allocObject();
          v18[2] = 0;
          v18[3] = 0;
          v18[4] = a2;

          sub_100018680(0, 0, v6, &unk_10003E808, v18);

          sub_100019C74();
        }

        else
        {
          v19 = type metadata accessor for TaskPriority();
          (*(*(v19 - 8) + 56))(v6, 1, 1, v19);
          v20 = swift_allocObject();
          v20[2] = 0;
          v20[3] = 0;
          v20[4] = v16;

          sub_100018680(0, 0, v6, &unk_10003E7F8, v20);
        }

        return (*(v11 + 8))(v13, v10);
      }
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_10001B180(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10001B278;

  return v6(a1);
}

uint64_t sub_10001B278()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10001B378(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100003870(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t sub_10001B3E0(unint64_t a1, uint64_t a2)
{
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_16:
    v11 = a1;
    v12 = a2;
    v13 = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v3 = v13;
    a1 = v11;
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = 0;
  v5 = a1 & 0xC000000000000001;
  while (v3 != v4)
  {
    if (v5)
    {
      v7 = a1;
      v8 = a2;
      v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      swift_unknownObjectRelease();
      a1 = v7;
      a2 = v8;
      if (v9 == v8)
      {
        return v4;
      }
    }

    else
    {
      if (v4 >= *(v2 + 16))
      {
        __break(1u);
LABEL_15:
        __break(1u);
        goto LABEL_16;
      }

      if (*(a1 + 8 * v4 + 32) == a2)
      {
        return v4;
      }
    }

    if (__OFADD__(v4++, 1))
    {
      goto LABEL_15;
    }
  }

  return 0;
}

uint64_t sub_10001B4E4(unint64_t *a1, uint64_t a2)
{
  v7 = *a1;
  v8 = sub_10001B3E0(*a1, a2);
  v10 = v8;
  if (v2)
  {
    return v10;
  }

  if (v9)
  {
    if (v7 >> 62)
    {
      return _CocoaArrayWrapper.endIndex.getter();
    }

    return *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = v8 + 1;
  if (__OFADD__(v8, 1))
  {
    __break(1u);
    goto LABEL_8;
  }

  while (1)
  {
    if (v7 >> 62)
    {
      if (v11 == _CocoaArrayWrapper.endIndex.getter())
      {
        return v10;
      }
    }

    else if (v11 == *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v10;
    }

    if ((v7 & 0xC000000000000001) == 0)
    {
      break;
    }

    v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    swift_unknownObjectRelease();
    if (v16 != a2)
    {
      if (v10 != v11)
      {
        v3 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        goto LABEL_21;
      }

LABEL_9:
      v12 = __OFADD__(v10++, 1);
      if (v12)
      {
        goto LABEL_42;
      }
    }

LABEL_10:
    v12 = __OFADD__(v11++, 1);
    if (v12)
    {
      goto LABEL_41;
    }
  }

  if ((v11 & 0x8000000000000000) == 0)
  {
    v13 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11 >= v13)
    {
      goto LABEL_40;
    }

    v14 = *(v7 + 32 + 8 * v11);
    if (v14 != a2)
    {
      if (v10 != v11)
      {
        if ((v10 & 0x8000000000000000) != 0)
        {
          goto LABEL_43;
        }

        if (v10 >= v13)
        {
          goto LABEL_44;
        }

        v3 = *(v7 + 32 + 8 * v10);

LABEL_21:
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v7 & 0x8000000000000000) != 0 || (v7 & 0x4000000000000000) != 0)
        {
          v7 = sub_100026320();
          v15 = (v7 >> 62) & 1;
        }

        else
        {
          LODWORD(v15) = 0;
        }

        v4 = v7 & 0xFFFFFFFFFFFFFF8;
        *((v7 & 0xFFFFFFFFFFFFFF8) + 8 * v10 + 0x20) = v14;

        if ((v7 & 0x8000000000000000) != 0 || v15)
        {
          v7 = sub_100026320();
          v4 = v7 & 0xFFFFFFFFFFFFFF8;
          if ((v11 & 0x8000000000000000) != 0)
          {
LABEL_37:
            __break(1u);
            return v10;
          }
        }

        else if ((v11 & 0x8000000000000000) != 0)
        {
          goto LABEL_37;
        }

        if (v11 >= *(v4 + 16))
        {
          goto LABEL_45;
        }

LABEL_8:
        *(v4 + 8 * v11 + 32) = v3;

        *a1 = v7;
      }

      goto LABEL_9;
    }

    goto LABEL_10;
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
  return _CocoaArrayWrapper.endIndex.getter();
}

void sub_10001B70C(char a1, int a2, uint64_t a3, void (**a4)(void, void, void))
{
  v18 = a2;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_allocObject();
  *(v10 + 16) = a4;
  _Block_copy(a4);
  static Logger.daemon.getter();
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 67109376;
    *(v13 + 4) = a1 & 1;
    *(v13 + 8) = 1024;
    *(v13 + 10) = v18 & 1;
    _os_log_impl(&_mh_execute_header, v11, v12, "launchGameOverlay conditional=%{BOOL}d fallbackToGamesApp=%{BOOL}d", v13, 0xEu);
  }

  (*(v7 + 8))(v9, v6);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v15 = *(Strong + 56), v16 = v15, swift_unknownObjectRelease(), v15))
  {
    sub_100033E48(a1 & 1, v18 & 1, sub_10001B964, v10);
  }

  else
  {
    a4[2](a4, 0, 0);
  }
}

uint64_t sub_10001B92C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001B988(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10001B9A0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000085E0(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10001B9F4()
{
  result = qword_100054468;
  if (!qword_100054468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100054468);
  }

  return result;
}

uint64_t sub_10001BA4C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10001A138;

  return sub_10001A0A4();
}

uint64_t sub_10001BB00()
{
  v1 = type metadata accessor for ModelManagerGameAssertionPolicy();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_10001BBD8(uint64_t a1)
{
  v4 = *(type metadata accessor for ModelManagerGameAssertionPolicy() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10001C4B0;

  return sub_10001A22C(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_10001BCF8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10001C4B0;

  return sub_1000185EC();
}

uint64_t sub_10001BDAC()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001BDE4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001BE2C()
{
  v1 = type metadata accessor for ModelManagerGameAssertionPolicy();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10001BEF8()
{
  v1 = *(type metadata accessor for ModelManagerGameAssertionPolicy() - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));

  return sub_10001ACF8(v2, v3, v4);
}

uint64_t sub_10001BF5C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10001BFA4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10001C4B0;

  return sub_1000185EC();
}

uint64_t sub_10001C058()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10001C4B0;

  return sub_1000185EC();
}

uint64_t sub_10001C10C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003870(&qword_100054460, &qword_10003E7B8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001C17C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001C1B4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10001C4B0;

  return sub_10001B180(a1, v4);
}

uint64_t sub_10001C26C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10001A138;

  return sub_10001B180(a1, v4);
}

uint64_t sub_10001C324()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10001C364()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10001C4B0;

  return sub_1000185EC();
}

unint64_t sub_10001C42C()
{
  result = qword_100054480;
  if (!qword_100054480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100054480);
  }

  return result;
}

uint64_t sub_10001C4C0()
{
  swift_weakDestroy();

  return v0;
}

uint64_t sub_10001C548()
{
  sub_10001C4C0();

  return _swift_deallocClassInstance(v0, 136, 7);
}

uint64_t sub_10001C5A0()
{
  v1 = *v0;
  [*(v1 + 24) lock];
  v2 = *(v1 + 56);
  v3 = *(v1 + 24);

  [v3 unlock];
  return v2;
}

uint64_t sub_10001C5F4()
{
  v1 = *v0;
  [*(v1 + 24) lock];
  v2 = *(v1 + 64);
  v3 = *(v1 + 24);

  [v3 unlock];
  return v2;
}

uint64_t sub_10001C648()
{
  v1 = *v0;
  [*(v1 + 24) lock];
  v2 = *(v1 + 72);
  v3 = *(v1 + 24);

  [v3 unlock];
  return v2;
}

uint64_t sub_10001C69C()
{
  v1 = *v0;
  [*(v1 + 24) lock];
  v2 = *(v1 + 80);
  v3 = *(v1 + 24);

  [v3 unlock];
  return v2;
}

uint64_t sub_10001C6F0()
{
  v1 = *v0;
  [*(v1 + 24) lock];
  v2 = *(v1 + 48);
  [*(v1 + 24) unlock];
  return v2;
}

uint64_t sub_10001C738()
{
  v1 = *v0;
  [*(v1 + 24) lock];
  v2 = *(v1 + 88);
  v3 = *(v1 + 24);

  [v3 unlock];
  return v2;
}

uint64_t sub_10001C78C()
{
  v1 = *v0;
  [*(v1 + 24) lock];
  v2 = *(v1 + 104);
  v3 = *(v1 + 24);

  [v3 unlock];
  return v2;
}

uint64_t sub_10001C7E0()
{
  v1 = *v0;
  [*(v1 + 24) lock];
  v2 = *(v1 + 112);
  v3 = *(v1 + 24);

  [v3 unlock];
  return v2;
}

uint64_t sub_10001C834()
{
  v1 = *v0;
  [*(v1 + 24) lock];
  v2 = *(v1 + 96);
  v3 = *(v1 + 24);

  [v3 unlock];
  return v2;
}

uint64_t sub_10001C888()
{
  v1 = *v0;
  [*(v1 + 24) lock];
  v2 = *(v1 + 120);
  v3 = *(v1 + 24);

  [v3 unlock];
  return v2;
}

uint64_t sub_10001C8DC()
{
  v1 = *v0;
  [*(v1 + 24) lock];
  v2 = *(v1 + 128);
  v3 = *(v1 + 24);

  [v3 unlock];
  return v2;
}

Swift::Int sub_10001C944()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_10001C9B8(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

unint64_t *sub_10001C9FC@<X0>(unint64_t *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (*result >= 3)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_10001CA20(uint64_t a1, char a2)
{
  v3 = v2;
  v53 = type metadata accessor for OSSignpostID();
  v51 = *(v53 - 8);
  __chkstk_darwin(v53);
  v52 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Logger();
  v54 = *(v7 - 8);
  v55 = v7;
  v8 = __chkstk_darwin(v7);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v50 = &v48 - v11;
  v49 = type metadata accessor for String.Encoding();
  v12 = *(v49 - 8);
  __chkstk_darwin(v49);
  v14 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchPredicate();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = (&v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = *(v3 + 16);
  *v18 = v19;
  (*(v16 + 104))(v18, enum case for DispatchPredicate.onQueue(_:), v15);
  v20 = v19;
  LOBYTE(v19) = _dispatchPreconditionTest(_:)();
  result = (*(v16 + 8))(v18, v15);
  if (v19)
  {
    if (*(v3 + 48) != (a1 & 1) || (a2 & 1) != 0)
    {
      *(v3 + 48) = a1 & 1;
      v22 = *(v3 + 24);
      swift_beginAccess();
      if (v22[12])
      {
        v48 = a1;
        if (a1)
        {
          v23 = sub_10001EA40(0xFFFFFFFFFFFFFFFELL) + 1;
          *(v3 + 56) = v23;
          swift_beginAccess();
          notify_set_state(v22[13], v23);
          v56 = 0xD000000000000029;
          v57 = 0x8000000100041330;
          static String.Encoding.utf8.getter();
          sub_100009790();
          v24 = StringProtocol.cString(using:)();
          v25 = *(v12 + 8);
          v26 = v49;
          v25(v14, v49);
          if (v24)
          {
            v27 = (v24 + 32);
          }

          else
          {
            v27 = 0;
          }

          notify_post(v27);
        }

        else
        {
          swift_beginAccess();
          notify_set_state(v22[14], *(v3 + 56));
          v56 = 0xD000000000000027;
          v57 = 0x8000000100041360;
          static String.Encoding.utf8.getter();
          sub_100009790();
          v31 = StringProtocol.cString(using:)();
          v25 = *(v12 + 8);
          v26 = v49;
          v25(v14, v49);
          if (v31)
          {
            v32 = (v31 + 32);
          }

          else
          {
            v32 = 0;
          }

          notify_post(v32);

          *(v3 + 56) = 0;
        }

        v33 = v48;
        notify_set_state(v22[12], v48 & 1);
        v56 = 0xD000000000000027;
        v57 = 0x8000000100041300;
        static String.Encoding.utf8.getter();
        sub_100009790();
        v34 = StringProtocol.cString(using:)();
        v25(v14, v26);
        if (v34)
        {
          v35 = (v34 + 32);
        }

        else
        {
          v35 = 0;
        }

        notify_post(v35);

        v36 = v50;
        static Logger.daemon.getter();
        swift_retain_n();
        v37 = Logger.logObject.getter();
        v38 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v37, v38))
        {
          v39 = swift_slowAlloc();
          v40 = swift_slowAlloc();
          v56 = v40;
          *v39 = 136446466;
          if (v33)
          {
            v41 = 0x657669746361;
          }

          else
          {
            v41 = 0x6576697463616E69;
          }

          if (v33)
          {
            v42 = 0xE600000000000000;
          }

          else
          {
            v42 = 0xE800000000000000;
          }

          v43 = sub_100034C38(v41, v42, &v56);

          *(v39 + 4) = v43;
          *(v39 + 12) = 2048;
          v44 = *(v3 + 56);

          *(v39 + 14) = v44;

          _os_log_impl(&_mh_execute_header, v37, v38, "Gaming session is now %{public}s with ID %llu.", v39, 0x16u);
          sub_100003964(v40);
        }

        else
        {
        }

        (*(v54 + 8))(v36, v55);
        v45 = (v51 + 8);
        if (v33)
        {
          static os_signpost_type_t.begin.getter();
        }

        else
        {
          static os_signpost_type_t.end.getter();
        }

        v46 = static Logger.stateTracking.getter();
        v47 = v52;
        static OSSignpostID.exclusive.getter();
        os_signpost(_:dso:log:name:signpostID:)();

        return (*v45)(v47, v53);
      }

      else
      {
        static Logger.daemon.getter();
        v28 = Logger.logObject.getter();
        v29 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v28, v29))
        {
          v30 = swift_slowAlloc();
          *v30 = 0;
          _os_log_impl(&_mh_execute_header, v28, v29, "Unable to post game session darwin notification - token is invalid!", v30, 2u);
        }

        return (*(v54 + 8))(v10, v55);
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10001D13C(uint64_t a1, char a2)
{
  v3 = v2;
  v53 = type metadata accessor for OSSignpostID();
  v51 = *(v53 - 8);
  __chkstk_darwin(v53);
  v52 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Logger();
  v54 = *(v7 - 8);
  v55 = v7;
  v8 = __chkstk_darwin(v7);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v50 = &v48 - v11;
  v49 = type metadata accessor for String.Encoding();
  v12 = *(v49 - 8);
  __chkstk_darwin(v49);
  v14 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchPredicate();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = (&v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = *(v3 + 16);
  *v18 = v19;
  (*(v16 + 104))(v18, enum case for DispatchPredicate.onQueue(_:), v15);
  v20 = v19;
  LOBYTE(v19) = _dispatchPreconditionTest(_:)();
  result = (*(v16 + 8))(v18, v15);
  if (v19)
  {
    if (*(v3 + 34) != (a1 & 1) || (a2 & 1) != 0)
    {
      *(v3 + 34) = a1 & 1;
      v22 = *(v3 + 24);
      swift_beginAccess();
      if (v22[12])
      {
        v48 = a1;
        if (a1)
        {
          v23 = sub_10001EA40(0xFFFFFFFFFFFFFFFELL) + 1;
          *(v3 + 40) = v23;
          swift_beginAccess();
          notify_set_state(v22[10], v23);
          v57 = 0xD000000000000034;
          v58 = 0x8000000100041280;
          static String.Encoding.utf8.getter();
          sub_100009790();
          v24 = StringProtocol.cString(using:)();
          v25 = *(v12 + 8);
          v26 = v49;
          v25(v14, v49);
          if (v24)
          {
            v27 = (v24 + 32);
          }

          else
          {
            v27 = 0;
          }

          notify_post(v27);
        }

        else
        {
          swift_beginAccess();
          notify_set_state(v22[11], *(v3 + 40));
          v57 = 0xD000000000000032;
          v58 = 0x80000001000412C0;
          static String.Encoding.utf8.getter();
          sub_100009790();
          v31 = StringProtocol.cString(using:)();
          v25 = *(v12 + 8);
          v26 = v49;
          v25(v14, v49);
          if (v31)
          {
            v32 = (v31 + 32);
          }

          else
          {
            v32 = 0;
          }

          notify_post(v32);

          *(v3 + 40) = 0;
        }

        swift_beginAccess();
        v33 = v48;
        notify_set_state(v22[9], v48 & 1);
        v56[0] = 0xD000000000000032;
        v56[1] = 0x8000000100041240;
        static String.Encoding.utf8.getter();
        sub_100009790();
        v34 = StringProtocol.cString(using:)();
        v25(v14, v26);
        if (v34)
        {
          v35 = (v34 + 32);
        }

        else
        {
          v35 = 0;
        }

        notify_post(v35);

        v36 = v50;
        static Logger.daemon.getter();
        swift_retain_n();
        v37 = Logger.logObject.getter();
        v38 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v37, v38))
        {
          v39 = swift_slowAlloc();
          v40 = swift_slowAlloc();
          v56[0] = v40;
          *v39 = 136446466;
          if (v33)
          {
            v41 = 0x657669746361;
          }

          else
          {
            v41 = 0x6576697463616E69;
          }

          if (v33)
          {
            v42 = 0xE600000000000000;
          }

          else
          {
            v42 = 0xE800000000000000;
          }

          v43 = sub_100034C38(v41, v42, v56);

          *(v39 + 4) = v43;
          *(v39 + 12) = 2048;
          v44 = *(v3 + 40);

          *(v39 + 14) = v44;

          _os_log_impl(&_mh_execute_header, v37, v38, "Full screen gaming session is now %{public}s with ID %llu.", v39, 0x16u);
          sub_100003964(v40);
        }

        else
        {
        }

        (*(v54 + 8))(v36, v55);
        v45 = (v51 + 8);
        if (v33)
        {
          static os_signpost_type_t.begin.getter();
        }

        else
        {
          static os_signpost_type_t.end.getter();
        }

        v46 = static Logger.stateTracking.getter();
        v47 = v52;
        static OSSignpostID.exclusive.getter();
        os_signpost(_:dso:log:name:signpostID:)();

        return (*v45)(v47, v53);
      }

      else
      {
        static Logger.daemon.getter();
        v28 = Logger.logObject.getter();
        v29 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v28, v29))
        {
          v30 = swift_slowAlloc();
          *v30 = 0;
          _os_log_impl(&_mh_execute_header, v28, v29, "Unable to post fullscreen game session darwin notification - token is invalid!", v30, 2u);
        }

        return (*(v54 + 8))(v10, v55);
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10001D870(char a1, int a2)
{
  v45 = a2;
  v42 = type metadata accessor for OSSignpostID();
  v40 = *(v42 - 8);
  __chkstk_darwin(v42);
  v41 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Logger();
  v43 = *(v5 - 8);
  v44 = v5;
  v6 = __chkstk_darwin(v5);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v39 = &v39 - v9;
  v10 = type metadata accessor for String.Encoding();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchPredicate();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = (&v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = *(v2 + 16);
  *v17 = v18;
  (*(v15 + 104))(v17, enum case for DispatchPredicate.onQueue(_:), v14);
  v19 = v18;
  LOBYTE(v18) = _dispatchPreconditionTest(_:)();
  result = (*(v15 + 8))(v17, v14);
  if (v18)
  {
    if (*(v2 + 32) != (a1 & 1) || (v45 & 1) != 0)
    {
      *(v2 + 32) = a1 & 1;
      v21 = *(v2 + 24);
      swift_beginAccess();
      v22 = *(v21 + 20);
      if (v22)
      {
        notify_set_state(v22, a1 & 1);
        v46[0] = 0xD00000000000002FLL;
        v46[1] = 0x8000000100041170;
        static String.Encoding.utf8.getter();
        sub_100009790();
        v23 = StringProtocol.cString(using:)();
        (*(v11 + 8))(v13, v10);
        if (v23)
        {
          v24 = (v23 + 32);
        }

        else
        {
          v24 = 0;
        }

        notify_post(v24);

        v25 = v39;
        static Logger.daemon.getter();
        v26 = Logger.logObject.getter();
        v27 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v26, v27))
        {
          v28 = swift_slowAlloc();
          v29 = swift_slowAlloc();
          v46[0] = v29;
          *v28 = 136446210;
          if (a1)
          {
            v30 = 0x6C62616C69617661;
          }

          else
          {
            v30 = 0x616C696176616E75;
          }

          if (a1)
          {
            v31 = 0xE900000000000065;
          }

          else
          {
            v31 = 0xEB00000000656C62;
          }

          v32 = sub_100034C38(v30, v31, v46);

          *(v28 + 4) = v32;
          _os_log_impl(&_mh_execute_header, v26, v27, "Game mode is now %{public}s.", v28, 0xCu);
          sub_100003964(v29);
        }

        (*(v43 + 8))(v25, v44);
        v33 = (v40 + 8);
        if (a1)
        {
          static os_signpost_type_t.begin.getter();
        }

        else
        {
          static os_signpost_type_t.end.getter();
        }

        v37 = static Logger.stateTracking.getter();
        v38 = v41;
        static OSSignpostID.exclusive.getter();
        os_signpost(_:dso:log:name:signpostID:)();

        return (*v33)(v38, v42);
      }

      else
      {
        static Logger.daemon.getter();
        v34 = Logger.logObject.getter();
        v35 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v34, v35))
        {
          v36 = swift_slowAlloc();
          *v36 = 0;
          _os_log_impl(&_mh_execute_header, v34, v35, "Unable to post game mode available darwin notification - token is invalid!", v36, 2u);
        }

        return (*(v43 + 8))(v8, v44);
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10001DE04(unsigned __int8 a1, char a2)
{
  v3 = v2;
  v6 = type metadata accessor for Logger();
  v38 = *(v6 - 8);
  v39 = v6;
  v7 = __chkstk_darwin(v6);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v37 = &v36 - v10;
  v11 = type metadata accessor for String.Encoding();
  v36 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchPredicate();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = (&v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = *(v3 + 16);
  *v17 = v18;
  (*(v15 + 104))(v17, enum case for DispatchPredicate.onQueue(_:), v14);
  v19 = v18;
  LOBYTE(v18) = _dispatchPreconditionTest(_:)();
  result = (*(v15 + 8))(v17, v14);
  if (v18)
  {
    if (*(v3 + 64) != a1 || (a2 & 1) != 0)
    {
      *(v3 + 64) = a1;
      v21 = *(v3 + 24);
      swift_beginAccess();
      v22 = *(v21 + 24);
      if (v22)
      {
        notify_set_state(v22, a1);
        v41[0] = 0xD000000000000029;
        v41[1] = 0x80000001000411A0;
        static String.Encoding.utf8.getter();
        sub_100009790();
        v23 = StringProtocol.cString(using:)();
        (*(v36 + 8))(v13, v11);
        if (v23)
        {
          v24 = (v23 + 32);
        }

        else
        {
          v24 = 0;
        }

        notify_post(v24);

        v25 = v37;
        static Logger.daemon.getter();

        v26 = Logger.logObject.getter();
        v27 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v26, v27))
        {
          v28 = swift_slowAlloc();
          v29 = swift_slowAlloc();
          v41[0] = v29;
          *v28 = 136446210;
          v40 = *(v3 + 64);
          v30 = String.init<A>(describing:)();
          v32 = sub_100034C38(v30, v31, v41);

          *(v28 + 4) = v32;
          _os_log_impl(&_mh_execute_header, v26, v27, "Game mode status is now %{public}s.", v28, 0xCu);
          sub_100003964(v29);
        }

        return (*(v38 + 8))(v25, v39);
      }

      else
      {
        static Logger.daemon.getter();
        v33 = Logger.logObject.getter();
        v34 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v33, v34))
        {
          v35 = swift_slowAlloc();
          *v35 = 0;
          _os_log_impl(&_mh_execute_header, v33, v34, "Unable to post game mode available darwin notification - token is invalid!", v35, 2u);
        }

        return (*(v38 + 8))(v9, v39);
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10001E284(char a1, int a2)
{
  v45 = a2;
  v42 = type metadata accessor for OSSignpostID();
  v40 = *(v42 - 8);
  __chkstk_darwin(v42);
  v41 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Logger();
  v43 = *(v5 - 8);
  v44 = v5;
  v6 = __chkstk_darwin(v5);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v39 = &v38 - v9;
  v10 = type metadata accessor for String.Encoding();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchPredicate();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = (&v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = *(v2 + 16);
  *v17 = v18;
  (*(v15 + 104))(v17, enum case for DispatchPredicate.onQueue(_:), v14);
  v19 = v18;
  LOBYTE(v18) = _dispatchPreconditionTest(_:)();
  result = (*(v15 + 8))(v17, v14);
  if (v18)
  {
    if (*(v2 + 33) != (a1 & 1) || (v45 & 1) != 0)
    {
      *(v2 + 33) = a1 & 1;
      v21 = *(v2 + 24);
      swift_beginAccess();
      if (*(v21 + 20))
      {
        swift_beginAccess();
        notify_set_state(*(v21 + 32), a1 & 1);
        v46[0] = 0xD000000000000025;
        v46[1] = 0x8000000100041210;
        static String.Encoding.utf8.getter();
        sub_100009790();
        v22 = StringProtocol.cString(using:)();
        (*(v11 + 8))(v13, v10);
        if (v22)
        {
          v23 = (v22 + 32);
        }

        else
        {
          v23 = 0;
        }

        notify_post(v23);

        v24 = v39;
        static Logger.daemon.getter();
        v25 = Logger.logObject.getter();
        v26 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v25, v26))
        {
          v27 = swift_slowAlloc();
          v28 = swift_slowAlloc();
          v46[0] = v28;
          *v27 = 136446210;
          if (a1)
          {
            v29 = 1702195828;
          }

          else
          {
            v29 = 0x65736C6166;
          }

          if (a1)
          {
            v30 = 0xE400000000000000;
          }

          else
          {
            v30 = 0xE500000000000000;
          }

          v31 = sub_100034C38(v29, v30, v46);

          *(v27 + 4) = v31;
          _os_log_impl(&_mh_execute_header, v25, v26, "Game Policy active games is now %{public}s.", v27, 0xCu);
          sub_100003964(v28);
        }

        (*(v43 + 8))(v24, v44);
        v32 = (v40 + 8);
        if (a1)
        {
          static os_signpost_type_t.begin.getter();
        }

        else
        {
          static os_signpost_type_t.end.getter();
        }

        v36 = static Logger.stateTracking.getter();
        v37 = v41;
        static OSSignpostID.exclusive.getter();
        os_signpost(_:dso:log:name:signpostID:)();

        return (*v32)(v37, v42);
      }

      else
      {
        static Logger.daemon.getter();
        v33 = Logger.logObject.getter();
        v34 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v33, v34))
        {
          v35 = swift_slowAlloc();
          *v35 = 0;
          _os_log_impl(&_mh_execute_header, v33, v34, "Unable to post active games darwin notification - token is invalid!", v35, 2u);
        }

        return (*(v43 + 8))(v8, v44);
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10001E818()
{

  return _swift_deallocClassInstance(v0, 65, 7);
}

uint64_t getEnumTagSinglePayload for GamePolicyMobileAssetRetriever.Status.State(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for GamePolicyMobileAssetRetriever.Status.State(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10001E9EC()
{
  result = qword_100054940;
  if (!qword_100054940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100054940);
  }

  return result;
}

unint64_t sub_10001EA40(unint64_t result)
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

uint64_t sub_10001EACC(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_10001EB78()
{
  v1 = *(v0 + 48);
  if (v1)
  {
    v2 = qword_100053488;

    if (v2 != -1)
    {
      swift_once();
    }

    v3 = off_1000541F8;
    v4 = *(off_1000541F8 + 2);

    [v4 lock];
    sub_1000173E8(v3, v1);
    [v4 unlock];
  }

  sub_10000B4A8(v0 + 32);

  return _swift_deallocClassInstance(v0, 56, 7);
}

void sub_10001ED1C()
{
  type metadata accessor for GamePolicyCoordinatorObserver();
  v1 = swift_allocObject();
  *(v1 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + 24) = &off_10004DF68;
  swift_unknownObjectWeakAssign();
  *(v0 + 48) = v1;

  if (qword_100053488 != -1)
  {
    swift_once();
  }

  v2 = off_1000541F8;
  v3 = *(off_1000541F8 + 2);

  [v3 lock];
  sub_1000170B8(v2, v1);
  [v3 unlock];

  sub_10001C4BC();

  v4 = [*(v0 + 16) remoteObjectProxy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_100003870(&qword_100054458, &qword_10003E7B0);
  if (swift_dynamicCast())
  {
    v5 = v10[0];
    v6 = v10[3];
    v7 = v10[1];
    v8 = v10[2];
    [v9 updateStatus:v5 :v6 :v7 :v8];

    swift_unknownObjectRelease();
    sub_10001B150(v10);
  }

  else
  {
    sub_10001B150(v10);
  }
}

uint64_t sub_10001F1E0(uint64_t a1, int a2, uint64_t a3, void *aBlock, void (*a5)(uint64_t, uint64_t, void *))
{
  v6 = _Block_copy(aBlock);
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  _Block_copy(v6);

  a5(v7, v9, v6);
  _Block_release(v6);
  _Block_release(v6);
}

id sub_10001F32C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = String._bridgeToObjectiveC()();

  v9 = 0;
  v5 = [swift_getObjCClassFromMetadata() bundleRecordWithBundleIdentifier:v4 allowPlaceholder:a3 & 1 error:&v9];

  if (v5)
  {
    v6 = v9;
  }

  else
  {
    v7 = v9;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v5;
}

uint64_t sub_10001F414(void *a1, char a2)
{
  v4 = type metadata accessor for GameModeCCUIStatusState();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v21[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v10 = &v21[-v9];
  if (qword_100053488 != -1)
  {
    swift_once();
  }

  sub_10001C4BC();

  if (a1)
  {
    v11 = a1;
  }

  else
  {
    v11 = _swiftEmptyArrayStorage;
  }

  if (a2)
  {
    v12 = GameModeStatus.allGameBundleIdentifiers.getter();
  }

  else
  {
    v12 = _swiftEmptyArrayStorage;
  }

  v22[0] = v11;
  sub_1000208EC(v12);
  v13 = sub_100021664(v22[0]);

  v14 = *(v5 + 104);
  if (v24 == 2)
  {
    v14(v10, enum case for GameModeCCUIStatusState.forcedOff(_:), v4);
    if (*(v13 + 16))
    {
      goto LABEL_15;
    }

    goto LABEL_17;
  }

  if (v24 == 1)
  {
    v14(v10, enum case for GameModeCCUIStatusState.forcedOn(_:), v4);
    if (*(v13 + 16))
    {
      goto LABEL_15;
    }

LABEL_17:
    sub_100003870(&qword_100054B30, &unk_10003EBF0);
    v15 = swift_allocObject();
    *(v15 + 1) = xmmword_10003EB40;
    v20 = objc_allocWithZone(type metadata accessor for GameModeCCUIStatusBundleInfo());
    v15[4] = GameModeCCUIStatusBundleInfo.init(executableDisplayName:bundleIdentifier:isSystemService:isAAAGame:usedRecently:state:)();
    goto LABEL_16;
  }

  v14(v10, enum case for GameModeCCUIStatusState.enabled(_:), v4);
LABEL_15:
  v15 = _swiftEmptyArrayStorage;
LABEL_16:
  sub_10001B118(v23, v22);

  v16 = sub_100020B54(v13, v23);

  sub_10001B150(v23);

  (*(v5 + 16))(v8, v10, v4);
  v22[0] = v15;
  sub_1000207FC(v16);
  v17 = objc_allocWithZone(type metadata accessor for GameModeCCUIStatusInfo());
  v18 = GameModeCCUIStatusInfo.init(state:bundles:)();
  sub_10001B150(v23);
  (*(v5 + 8))(v10, v4);
  return v18;
}

uint64_t sub_10001F97C(uint64_t a1, int a2, uint64_t a3, void *aBlock, void (*a5)(uint64_t, uint64_t, uint64_t, void *))
{
  v7 = _Block_copy(aBlock);
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  _Block_copy(v7);

  a5(v8, v10, a1, v7);
  _Block_release(v7);
  _Block_release(v7);
}

uint64_t sub_10001FA3C(uint64_t a1, int a2, uint64_t a3, uint64_t a4, void *aBlock, void (*a6)(uint64_t, uint64_t, uint64_t, uint64_t, void *))
{
  v9 = _Block_copy(aBlock);
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;
  _Block_copy(v9);

  a6(a3, v10, v12, a1, v9);
  _Block_release(v9);
  _Block_release(v9);
}

uint64_t sub_10001FC64(const void *a1)
{
  *(v1 + 16) = _Block_copy(a1);
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_10001FD0C;

  return sub_100022400();
}

uint64_t sub_10001FD0C(unsigned int a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v3[2](v3, a1 & 1, (a1 >> 8) & 1);
  _Block_release(v3);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_10001FFCC(uint64_t a1, void *aBlock)
{
  v3 = a1;
  *(v2 + 16) = _Block_copy(aBlock);
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_100020080;

  return sub_100022674(v3);
}

uint64_t sub_100020080(char a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v3[2](v3, a1 & 1);
  _Block_release(v3);
  v4 = *(v6 + 8);

  return v4();
}

void sub_1000201C0(int a1, int a2, void *aBlock, uint64_t (*a4)(uint64_t))
{
  v5 = _Block_copy(aBlock);
  if (qword_100053488 != -1)
  {
    swift_once();
  }

  v7 = a4(v6);

  v5[2](v5, v7);
  _Block_release(v5);
}

void sub_100020298(int a1, int a2, uint64_t a3, void *aBlock, void (*a5)(uint64_t, uint64_t))
{
  v7 = _Block_copy(aBlock);
  if (qword_100053488 != -1)
  {
    swift_once();
  }

  a5(v8, a3);

  v7[2](v7, 1);

  _Block_release(v7);
}

uint64_t sub_100020370(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_10001C4B0;

  return v6();
}

uint64_t sub_100020458(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_10001A138;

  return v7();
}

uint64_t sub_100020540(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100003870(&qword_100054460, &qword_10003E7B8);
  __chkstk_darwin(v9 - 8);
  v11 = v23 - v10;
  sub_10001C10C(a3, v23 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1000219F4(v11);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  TaskPriority.rawValue.getter();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = dispatch thunk of Actor.unownedExecutor.getter();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = String.utf8CString.getter() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    sub_1000219F4(a3);

    return v21;
  }

LABEL_8:
  sub_1000219F4(a3);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_1000207FC(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v1 >> 62))
  {
    v4 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = __OFADD__(v4, v3);
    result = v4 + v3;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = _CocoaArrayWrapper.endIndex.getter();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_1000256F4();
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_1000393B8(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 1)
  {
LABEL_9:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1000208EC(uint64_t result)
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
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_100023ABC(result, v10, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1000209E0(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

uint64_t sub_100020A38(uint64_t a1, uint64_t a2)
{
  sub_100021724();

  v4 = sub_10001F32C(a1, a2, 0);
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (v5 && (v6 = v5, v7 = [v5 applicationState], v8 = objc_msgSend(v7, "isValid"), v7, v8))
  {
    v9 = [v6 localizedName];
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v10 = 9666786;
  }

  return v10;
}

void *sub_100020B54(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  v3 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v3)
  {
    v33 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v6 = v2 + 56;
    result = _HashTable.startBucket.getter();
    v7 = result;
    v8 = 0;
    v31 = *(v2 + 36);
    v28 = *(a2 + 24);
    v29 = v2;
    v25 = v2 + 64;
    v26 = v3;
    v27 = v2 + 56;
    while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(v2 + 32))
    {
      v11 = v7 >> 6;
      if ((*(v6 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
      {
        goto LABEL_21;
      }

      if (v31 != *(v2 + 36))
      {
        goto LABEL_22;
      }

      v30 = v8;
      v12 = (*(v2 + 48) + 16 * v7);
      v14 = *v12;
      v13 = v12[1];

      v15 = ModelManagerGameAssertionStatus.aaaBundleIdentifiers.getter();
      v32[0] = v14;
      v32[1] = v13;
      __chkstk_darwin(v15);
      v24[2] = v32;
      sub_10001EACC(sub_1000216FC, v24, v15);

      sub_100020A38(v14, v13);
      v16 = objc_allocWithZone(type metadata accessor for GameModeCCUIStatusBundleInfo());
      GameModeCCUIStatusBundleInfo.init(executableDisplayName:bundleIdentifier:isSystemService:isAAAGame:usedRecently:state:)();
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      v2 = v29;
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      result = specialized ContiguousArray._endMutation()();
      v9 = 1 << *(v2 + 32);
      if (v7 >= v9)
      {
        goto LABEL_23;
      }

      v6 = v27;
      v17 = *(v27 + 8 * v11);
      if ((v17 & (1 << v7)) == 0)
      {
        goto LABEL_24;
      }

      if (v31 != *(v2 + 36))
      {
        goto LABEL_25;
      }

      v18 = v17 & (-2 << (v7 & 0x3F));
      if (v18)
      {
        v9 = __clz(__rbit64(v18)) | v7 & 0x7FFFFFFFFFFFFFC0;
        v10 = v26;
      }

      else
      {
        v19 = v11 << 6;
        v20 = v11 + 1;
        v21 = (v25 + 8 * v11);
        v10 = v26;
        while (v20 < (v9 + 63) >> 6)
        {
          v23 = *v21++;
          v22 = v23;
          v19 += 64;
          ++v20;
          if (v23)
          {
            result = sub_100021718(v7, v31, 0);
            v9 = __clz(__rbit64(v22)) + v19;
            goto LABEL_4;
          }
        }

        result = sub_100021718(v7, v31, 0);
      }

LABEL_4:
      v8 = v30 + 1;
      v7 = v9;
      if (v30 + 1 == v10)
      {
        return v33;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

void sub_100020FC4(char a1, char a2, void *a3)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  _Block_copy(a3);
  static Logger.tool.getter();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "requestLaunchGameOverlay", v12, 2u);
  }

  (*(v7 + 8))(v9, v6);
  if (qword_100053488 != -1)
  {
    swift_once();
  }

  v13 = off_1000541F8;
  _Block_copy(a3);

  sub_10001B70C(a1 & 1, a2 & 1, v13, a3);
  _Block_release(a3);

  _Block_release(a3);
}

void sub_100021190(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for GlobalPreferences();
  dispatch thunk of static GlobalPreferences.shared.getter();
  v6 = dispatch thunk of GlobalPreferences.semAllowList.getter();

  v13[0] = a1;
  v13[1] = a2;
  v12[2] = v13;

  v7 = sub_10001EACC(sub_100022B90, v12, v6);

  if ((v7 & 1) == 0)
  {

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_100023ABC(0, *(v6 + 16) + 1, 1, v6);
    }

    v9 = *(v6 + 16);
    v8 = *(v6 + 24);
    if (v9 >= v8 >> 1)
    {
      v6 = sub_100023ABC((v8 > 1), v9 + 1, 1, v6);
    }

    *(v6 + 16) = v9 + 1;
    v10 = v6 + 16 * v9;
    *(v10 + 32) = a1;
    *(v10 + 40) = a2;
  }

  dispatch thunk of static GlobalPreferences.shared.getter();

  dispatch thunk of GlobalPreferences.semAllowList.setter();

  isa = Array._bridgeToObjectiveC()().super.isa;
  (*(a3 + 16))(a3, isa);
}

uint64_t sub_10002130C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return 0;
  }

  v6 = 0;
  for (i = (a1 + 40); ; i += 2)
  {
    v8 = *(i - 1) == a2 && *i == a3;
    if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    if (v3 == ++v6)
    {
      return 0;
    }
  }

  return v6;
}

void sub_1000213AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for GlobalPreferences();
  dispatch thunk of static GlobalPreferences.shared.getter();
  v6 = dispatch thunk of GlobalPreferences.semAllowList.getter();

  v29[0] = a1;
  v29[1] = a2;
  v28 = v29;

  v7 = sub_10001EACC(sub_100022B90, v27, v6);

  if ((v7 & 1) == 0)
  {
LABEL_16:
    dispatch thunk of static GlobalPreferences.shared.getter();

    dispatch thunk of GlobalPreferences.semAllowList.setter();

    isa = Array._bridgeToObjectiveC()().super.isa;
    (*(a3 + 16))(a3, isa);

    return;
  }

  v8 = sub_10002130C(v6, a1, a2);
  if (v9)
  {
    v10 = *(v6 + 16);
    v11 = v10;
    goto LABEL_8;
  }

  v11 = v8;
  v12 = v8 + 1;
  if (!__OFADD__(v8, 1))
  {
    v26 = a3;
    v13 = *(v6 + 16);

    if (v12 == v13)
    {
LABEL_6:

      v10 = *(v6 + 16);
      if (v10 >= v11)
      {
        a3 = v26;
        if ((v11 & 0x8000000000000000) == 0)
        {
LABEL_8:
          if (!__OFADD__(v10, v11 - v10))
          {
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v29[0] = v6;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0 || v11 > *(v6 + 24) >> 1)
            {
              if (v10 <= v11)
              {
                v15 = v11;
              }

              else
              {
                v15 = v10;
              }

              v29[0] = sub_100023ABC(isUniquelyReferenced_nonNull_native, v15, 1, v6);
            }

            sub_10002597C(v11, v10, 0);
            goto LABEL_16;
          }

          goto LABEL_36;
        }

LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
        goto LABEL_39;
      }
    }

    else
    {
      v17 = 16 * v11;
      while (v12 < v13)
      {
        v19 = *(v6 + v17 + 48);
        v20 = *(v6 + v17 + 56);
        v21 = v19 == a1 && v20 == a2;
        if (!v21 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          if (v12 != v11)
          {
            if (v11 >= v13)
            {
              goto LABEL_37;
            }

            v22 = (v6 + 32 + 16 * v11);
            v23 = *v22;
            v24 = v22[1];

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v6 = sub_10002579C(v6);
            }

            v25 = v6 + 16 * v11;
            *(v25 + 32) = v19;
            *(v25 + 40) = v20;

            if (v12 >= *(v6 + 16))
            {
              goto LABEL_38;
            }

            v18 = v6 + v17;
            *(v18 + 48) = v23;
            *(v18 + 56) = v24;
          }

          ++v11;
        }

        ++v12;
        v13 = *(v6 + 16);
        v17 += 16;
        if (v12 == v13)
        {
          goto LABEL_6;
        }
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_35;
  }

LABEL_39:
  __break(1u);
}

uint64_t sub_100021664(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = Set.init(minimumCapacity:)();
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_100035DFC(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_100021718(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

unint64_t sub_100021724()
{
  result = qword_100054B38;
  if (!qword_100054B38)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100054B38);
  }

  return result;
}

uint64_t sub_100021770()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000217B0()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10001A138;

  return sub_10001FFCC(v2, v3);
}

uint64_t sub_100021868()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10001C4B0;

  return sub_100020370(v2, v3, v4);
}

uint64_t sub_100021928(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10001C4B0;

  return sub_100020458(a1, v4, v5, v6);
}

uint64_t sub_1000219F4(uint64_t a1)
{
  v2 = sub_100003870(&qword_100054460, &qword_10003E7B8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100021A5C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100021A94(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10001C4B0;

  return sub_10001B180(a1, v4);
}

uint64_t sub_100021B4C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10001A138;

  return sub_10001B180(a1, v4);
}

void sub_100021C04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_100003870(&qword_100055270, " Y");
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10003EB50;
  *(inited + 32) = a1;
  *(inited + 40) = a2;

  v8 = sub_10001F414(inited, 0);
  swift_setDeallocating();
  swift_arrayDestroy();
  v9 = dispatch thunk of GameModeCCUIStatusInfo.bundles.getter();

  if (v9 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v11 = 0;
    v17 = a4;
    a4 = v9 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v11 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v12 = *(v9 + 8 * v11 + 32);
      }

      v13 = v12;
      v14 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (dispatch thunk of GameModeCCUIStatusBundleInfo.bundleIdentifier.getter() == a1 && v15 == a2)
      {

        goto LABEL_15;
      }

      v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v16)
      {
        goto LABEL_15;
      }

      ++v11;
      if (v14 == i)
      {
        v13 = 0;
LABEL_15:
        a4 = v17;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v13 = 0;
LABEL_20:

  (*(a4 + 16))(a4, v13);
}

void sub_100021DE0(uint64_t a1, uint64_t a2, uint64_t a3, int a4, void (**aBlock)(void, void))
{
  if ((a1 - 1) < 2)
  {
    GameModeCCUIStatusBundleState.rawValue.getter();
    GameModeCCUIStatusBundleState.rawValue.getter();
    type metadata accessor for GlobalPreferences();
    dispatch thunk of static GlobalPreferences.shared.getter();
    sub_100003870(&qword_100055270, " Y");
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_10003EB50;
    *(v8 + 32) = a2;
    *(v8 + 40) = a3;

    dispatch thunk of GlobalPreferences.setGameModeEnabled(_:bundleIdentifiers:)();

    v9 = [objc_opt_self() defaultCenter];
    if (qword_100053480 != -1)
    {
      swift_once();
    }

    [v9 postNotificationName:qword_100056600 object:0];

    goto LABEL_7;
  }

  if (!a1 || a1 == 3)
  {
LABEL_7:
    sub_100003870(&qword_100055270, " Y");
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10003EB50;
    *(inited + 32) = a2;
    *(inited + 40) = a3;

    v11 = sub_10001F414(inited, 1);
    swift_setDeallocating();
    swift_arrayDestroy();
    (aBlock)[2](aBlock, v11);

    return;
  }

  _Block_release(aBlock);
  _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
  __break(1u);
}

void sub_100021FF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_100003870(&qword_100055270, " Y");
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10003EB50;
  *(inited + 32) = a1;
  *(inited + 40) = a2;

  v8 = sub_10001F414(inited, 0);
  swift_setDeallocating();
  swift_arrayDestroy();
  v9 = dispatch thunk of GameModeCCUIStatusInfo.bundles.getter();

  if (v9 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v11 = 0;
    while (1)
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v11 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v12 = *(v9 + 8 * v11 + 32);
      }

      v13 = v12;
      v14 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (dispatch thunk of GameModeCCUIStatusBundleInfo.bundleIdentifier.getter() == a1 && v15 == a2)
      {

LABEL_15:

        v17 = dispatch thunk of GameModeCCUIStatusBundleInfo.revlock.getter();

        goto LABEL_20;
      }

      v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v16)
      {
        goto LABEL_15;
      }

      ++v11;
      if (v14 == i)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

LABEL_19:

  v17 = 0;
LABEL_20:
  (*(a4 + 16))(a4, v17);
}

void sub_1000221E0(uint64_t a1, uint64_t a2, uint64_t a3, int a4, void (**aBlock)(void, void))
{
  if ((a1 - 1) < 2)
  {
    GameModeCCUIStatusBundleState.rawValue.getter();
    GameModeCCUIStatusBundleState.rawValue.getter();
    type metadata accessor for GlobalPreferences();
    dispatch thunk of static GlobalPreferences.shared.getter();
    sub_100003870(&qword_100055270, " Y");
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_10003EB50;
    *(v8 + 32) = a2;
    *(v8 + 40) = a3;

    dispatch thunk of GlobalPreferences.setGameModeEnabled(_:bundleIdentifiers:)();

    v9 = [objc_opt_self() defaultCenter];
    if (qword_100053480 != -1)
    {
      swift_once();
    }

    [v9 postNotificationName:qword_100056600 object:0];

    goto LABEL_7;
  }

  if (!a1 || a1 == 3)
  {
LABEL_7:
    sub_100003870(&qword_100055270, " Y");
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10003EB50;
    *(inited + 32) = a2;
    *(inited + 40) = a3;

    v11 = sub_10001F414(inited, 1);
    swift_setDeallocating();
    swift_arrayDestroy();
    v12 = dispatch thunk of GameModeCCUIStatusInfo.revlock.getter();

    (aBlock)[2](aBlock, v12);
    return;
  }

  _Block_release(aBlock);
  _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
  __break(1u);
}

uint64_t sub_100022400()
{
  v1 = type metadata accessor for Logger();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();

  return _swift_task_switch(sub_1000224BC, 0, 0);
}

uint64_t sub_1000224BC()
{
  if (qword_100053488 != -1)
  {
    swift_once();
  }

  v1 = sub_10001C48C();

  v2 = *(GameModeStatus.gameBundleIdentifiers.getter() + 16);

  v3 = GameModeStatus.enabled.getter();
  static Logger.daemon.getter();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 67109376;
    *(v6 + 4) = v2 != 0;
    *(v6 + 8) = 1024;
    *(v6 + 10) = v3 & 1;
    _os_log_impl(&_mh_execute_header, v4, v5, "requestGameMode(%{BOOL}d %{BOOL}d)", v6, 0xEu);
  }

  v8 = v0[3];
  v7 = v0[4];
  v9 = v0[2];

  (*(v8 + 8))(v7, v9);

  if (v3)
  {
    v10 = 256;
  }

  else
  {
    v10 = 0;
  }

  if (v2)
  {
    v11 = v10 + 1;
  }

  else
  {
    v11 = v10;
  }

  v12 = v0[1];

  return v12(v11);
}

uint64_t sub_100022674(char a1)
{
  *(v1 + 40) = a1;
  v2 = type metadata accessor for Logger();
  *(v1 + 16) = v2;
  *(v1 + 24) = *(v2 - 8);
  *(v1 + 32) = swift_task_alloc();

  return _swift_task_switch(sub_100022734, 0, 0);
}

uint64_t sub_100022734()
{
  v20 = v0;
  if (qword_100053488 != -1)
  {
    swift_once();
  }

  v1 = sub_10001C48C();

  GameModeStatus.gameBundleIdentifiers.getter();
  static Logger.daemon.getter();

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();

  v4 = os_log_type_enabled(v2, v3);
  v6 = *(v0 + 24);
  v5 = *(v0 + 32);
  v7 = *(v0 + 16);
  if (v4)
  {
    v17 = *(v0 + 32);
    v8 = *(v0 + 40);
    v18 = v1;
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v19 = v10;
    *v9 = 67109378;
    *(v9 + 4) = v8;
    *(v9 + 8) = 2080;
    v11 = Array.description.getter();
    v13 = sub_100034C38(v11, v12, &v19);

    *(v9 + 10) = v13;
    _os_log_impl(&_mh_execute_header, v2, v3, "gameModeEnabled:(%{BOOL}d for:%s", v9, 0x12u);
    sub_100003964(v10);

    v1 = v18;

    (*(v6 + 8))(v17, v7);
  }

  else
  {

    (*(v6 + 8))(v5, v7);
  }

  type metadata accessor for GlobalPreferences();
  dispatch thunk of static GlobalPreferences.shared.getter();
  dispatch thunk of GlobalPreferences.setGameModeEnabled(_:bundleIdentifiers:)();

  v14 = [objc_opt_self() defaultCenter];
  if (qword_100053480 != -1)
  {
    swift_once();
  }

  [v14 postNotificationName:qword_100056600 object:{0, v17}];

  v15 = *(v0 + 8);

  return v15(1);
}

uint64_t sub_1000229FC()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100022A3C()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10001C4B0;

  return sub_10001FC64(v2);
}

uint64_t sub_100022AE8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100022B28(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

uint64_t sub_100022BAC()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v40 = *(v2 - 8);
  v41 = v2;
  __chkstk_darwin(v2);
  v39 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v4 = *(v38 - 8);
  __chkstk_darwin(v38);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v7);
  v8 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v8 - 8);
  sub_1000234A0();
  static DispatchQoS.unspecified.getter();
  v44 = _swiftEmptyArrayStorage;
  sub_100023504();
  sub_100003870(&qword_100054438, &qword_10003E788);
  sub_10002355C();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v4 + 104))(v6, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v38);
  v9 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v1 + 16) = v9;
  *(v1 + 56) = 0;
  *(v1 + 64) = 2;
  v10 = type metadata accessor for GamePolicyToolCoordinator();
  v11 = objc_allocWithZone(v10);
  v12 = OBJC_IVAR____TtC11gamepolicyd25GamePolicyToolCoordinator_lock;
  v13 = objc_allocWithZone(NSLock);
  v14 = v9;
  *&v11[v12] = [v13 init];
  *&v11[OBJC_IVAR____TtC11gamepolicyd25GamePolicyToolCoordinator_toolProxies] = _swiftEmptyArrayStorage;
  *&v11[OBJC_IVAR____TtC11gamepolicyd25GamePolicyToolCoordinator_privilegedToolProxies] = _swiftEmptyArrayStorage;
  *&v11[OBJC_IVAR____TtC11gamepolicyd25GamePolicyToolCoordinator_queue] = v14;
  v43.receiver = v11;
  v43.super_class = v10;
  *(v1 + 24) = objc_msgSendSuper2(&v43, "init");
  v15 = objc_allocWithZone(NSXPCListener);
  v16 = String._bridgeToObjectiveC()();
  v17 = [v15 initWithMachServiceName:v16];

  *(v1 + 32) = v17;
  [v17 setDelegate:*(v1 + 24)];
  [*(v1 + 32) resume];
  v18 = *(v1 + 16);
  v19 = type metadata accessor for GamePolicyAppCoordinator();
  v20 = objc_allocWithZone(v19);
  v21 = OBJC_IVAR____TtC11gamepolicyd24GamePolicyAppCoordinator_lock;
  v22 = objc_allocWithZone(NSLock);
  v23 = v18;
  *&v20[v21] = [v22 init];
  *&v20[OBJC_IVAR____TtC11gamepolicyd24GamePolicyAppCoordinator_apps] = _swiftEmptyArrayStorage;
  *&v20[OBJC_IVAR____TtC11gamepolicyd24GamePolicyAppCoordinator_privilegedApps] = _swiftEmptyArrayStorage;
  *&v20[OBJC_IVAR____TtC11gamepolicyd24GamePolicyAppCoordinator_delegateQueue] = v23;
  v42.receiver = v20;
  v42.super_class = v19;
  *(v1 + 40) = objc_msgSendSuper2(&v42, "init");
  v24 = objc_allocWithZone(NSXPCListener);
  v25 = String._bridgeToObjectiveC()();
  v26 = [v24 initWithMachServiceName:v25];

  *(v1 + 48) = v26;
  [v26 setDelegate:*(v1 + 40)];
  v27 = v39;
  [*(v1 + 48) resume];
  static Logger.daemon.getter();
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&_mh_execute_header, v28, v29, "GamePolicyDaemon has initialized!", v30, 2u);
  }

  (*(v40 + 8))(v27, v41);
  if (sub_100023178() & 1) != 0 || (type metadata accessor for GlobalPreferences(), dispatch thunk of static GlobalPreferences.shared.getter(), v31 = dispatch thunk of GlobalPreferences.ignoreDeviceRestrictions.getter(), , (v31))
  {
    v32 = *(v1 + 16);
    v33 = objc_allocWithZone(type metadata accessor for EmbeddedGameProcessMonitor(0));
    v34 = sub_100026980(v32);
    v35 = *(v1 + 56);
    *(v1 + 56) = v34;

    if (qword_100053488 != -1)
    {
      swift_once();
    }

    *(off_1000541F8 + 6) = &off_10004E0D0;
    swift_unknownObjectWeakAssign();
  }

  return v1;
}

uint64_t sub_100023178()
{
  v1 = *(v0 + 64);
  if (v1 == 2)
  {
    LOBYTE(v1) = sub_100001E44();
    *(v0 + 64) = v1;
  }

  return v1 & 1;
}

void sub_1000231A4()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.daemon.getter();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "startup", v8, 2u);
  }

  (*(v3 + 8))(v5, v2);
  sub_1000234A0();
  v9 = static OS_dispatch_queue.main.getter();
  aBlock[4] = nullsub_1;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100023398;
  aBlock[3] = &unk_10004E0F0;
  v10 = _Block_copy(aBlock);
  xpc_set_event_stream_handler("com.apple.notifyd.matching", v9, v10);
  _Block_release(v10);

  v11 = *(v1 + 56);
  if (v11)
  {
    v12 = v11;
    sub_100031A3C();
  }
}

uint64_t sub_100023398(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t sub_1000233F8()
{

  return _swift_deallocClassInstance(v0, 65, 7);
}

unint64_t sub_1000234A0()
{
  result = qword_100053B00;
  if (!qword_100053B00)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100053B00);
  }

  return result;
}

uint64_t sub_1000234EC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100023504()
{
  result = qword_100054430;
  if (!qword_100054430)
  {
    type metadata accessor for OS_dispatch_queue.Attributes();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100054430);
  }

  return result;
}

unint64_t sub_10002355C()
{
  result = qword_100054440;
  if (!qword_100054440)
  {
    sub_1000085E0(&qword_100054438, &qword_10003E788);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100054440);
  }

  return result;
}

Swift::Int _s11gamepolicyd30GamePolicyMobileAssetRetrieverC14RetrievalErrorO9hashValueSivg_0(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  return Hasher._finalize()();
}

uint64_t GamePolicyMobileAssetRetriever.Status.description.getter()
{
  _StringGuts.grow(_:)(66);
  v0._object = 0x80000001000421A0;
  v0._countAndFlagsBits = 0xD00000000000002DLL;
  String.append(_:)(v0);
  _print_unlocked<A, B>(_:_:)();
  v1._countAndFlagsBits = 0x3D726F72726520;
  v1._object = 0xE700000000000000;
  String.append(_:)(v1);
  swift_errorRetain();
  sub_100003870(&qword_100054C48, &qword_10003ED00);
  v2._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v2);

  v3._countAndFlagsBits = 0x3D746C7573657220;
  v3._object = 0xE800000000000000;
  String.append(_:)(v3);

  sub_100003870(&qword_100054C50, &qword_10003ED08);
  v4._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v4);

  return 0;
}

uint64_t GamePolicyMobileAssetRetriever.Status.deinit()
{

  return v0;
}

uint64_t GamePolicyMobileAssetRetriever.Status.__deallocating_deinit()
{

  return _swift_deallocClassInstance(v0, 40, 7);
}

uint64_t GamePolicyMobileAssetRetriever.assetType.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

id GamePolicyMobileAssetRetriever.registerCompletionHandler(completion:)(void (*a1)(uint64_t), uint64_t a2)
{
  v3 = v2;
  [*(v2 + 56) lock];
  if (*(*(v2 + 40) + 16))
  {

    a1(v6);
  }

  else
  {
    v7 = swift_allocObject();
    *(v7 + 16) = a1;
    *(v7 + 24) = a2;
    swift_beginAccess();
    v8 = *(v3 + 48);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v3 + 48) = v8;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = sub_100023BC8(0, v8[2] + 1, 1, v8);
      *(v3 + 48) = v8;
    }

    v11 = v8[2];
    v10 = v8[3];
    if (v11 >= v10 >> 1)
    {
      v8 = sub_100023BC8((v10 > 1), v11 + 1, 1, v8);
    }

    v8[2] = v11 + 1;
    v12 = &v8[2 * v11];
    v12[4] = sub_100023A08;
    v12[5] = v7;
    *(v3 + 48) = v8;
    swift_endAccess();
  }

  return [*(v3 + 56) unlock];
}

uint64_t sub_1000239D0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t GamePolicyMobileAssetRetriever.deinit()
{

  return v0;
}

uint64_t GamePolicyMobileAssetRetriever.__deallocating_deinit()
{

  return _swift_deallocClassInstance(v0, 64, 7);
}

char *sub_100023ABC(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003870(&qword_100055270, " Y");
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

void *sub_100023BC8(void *result, int64_t a2, char a3, void *a4)
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
    sub_100003870(&qword_100054EB0, &qword_10003EF18);
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
    sub_100003870(&qword_100054EB8, &unk_10003EF20);
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_100023D00()
{
  result = qword_100054C58;
  if (!qword_100054C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100054C58);
  }

  return result;
}

unint64_t sub_100023D58()
{
  result = qword_100054C60;
  if (!qword_100054C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100054C60);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for GamePolicyMobileAssetRetriever.RetrievalError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for GamePolicyMobileAssetRetriever.RetrievalError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

char *sub_100023F68(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003870(&qword_100054EA8, &qword_10003EF10);
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
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

char *sub_10002406C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003870(&qword_100055290, &qword_10003F0F0);
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

void sub_1000241E4()
{
  [*(v0 + 16) auditToken];
  v1 = *(v0 + 40);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v0 + 40) = v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v1 = sub_100023F68(0, *(v1 + 2) + 1, 1, v1);
    *(v0 + 40) = v1;
  }

  v4 = *(v1 + 2);
  v3 = *(v1 + 3);
  if (v4 >= v3 >> 1)
  {
    v1 = sub_100023F68((v3 > 1), v4 + 1, 1, v1);
  }

  *(v1 + 2) = v4 + 1;
  v5 = &v1[32 * v4];
  *(v5 + 2) = v8;
  *(v5 + 3) = v9;
  *(v0 + 40) = v1;
  v6 = [objc_opt_self() defaultCenter];
  v7 = v6;
  if (qword_100053458 != -1)
  {
    swift_once();
    v6 = v7;
  }

  [v6 addObserver:v0 selector:? name:? object:?];
}

uint64_t sub_100024378()
{

  return _swift_deallocClassInstance(v0, 48, 7);
}

uint64_t sub_100024520(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_100024564(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.appCoordinator.getter();
  v8 = a1;
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
    _os_log_impl(&_mh_execute_header, v9, v10, "acceptNewAgentConnection %@", v11, 0xCu);
    sub_1000255D0(v12);
  }

  (*(v5 + 8))(v7, v4);
  v14 = *(v2 + OBJC_IVAR____TtC11gamepolicyd24GamePolicyAppCoordinator_delegateQueue);
  type metadata accessor for GamePolicyAppProxy();
  v15 = swift_allocObject();
  v15[4] = _swiftEmptyArrayStorage;
  v15[5] = _swiftEmptyArrayStorage;
  v15[2] = v8;
  v15[3] = v14;
  type metadata accessor for GamePolicyAppXPC();
  v16 = v8;
  v17 = v14;
  v18 = static GamePolicyAppXPC.GamePolicyAppClientInterface()();
  [v16 setRemoteObjectInterface:v18];

  v19 = static GamePolicyAppXPC.GamePolicyAppServerInterface()();
  [v16 setExportedInterface:v19];

  [v16 setExportedObject:v15];
  v20 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v21 = swift_allocObject();
  *(v21 + 16) = v20;
  *(v21 + 24) = v16;
  v35 = sub_100025EF4;
  v36 = v21;
  aBlock = _NSConcreteStackBlock;
  v32 = 1107296256;
  v33 = sub_100024520;
  v34 = &unk_10004E378;
  v22 = _Block_copy(&aBlock);
  v23 = v16;

  [v23 setInvalidationHandler:v22];
  _Block_release(v22);
  v24 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v25 = swift_allocObject();
  *(v25 + 16) = v24;
  *(v25 + 24) = v23;
  v35 = sub_100025F34;
  v36 = v25;
  aBlock = _NSConcreteStackBlock;
  v32 = 1107296256;
  v33 = sub_100024520;
  v34 = &unk_10004E3C8;
  v26 = _Block_copy(&aBlock);
  v27 = v23;

  [v27 setInterruptionHandler:v26];
  _Block_release(v26);
  v28 = *(v2 + OBJC_IVAR____TtC11gamepolicyd24GamePolicyAppCoordinator_lock);
  [v28 lock];
  v29 = OBJC_IVAR____TtC11gamepolicyd24GamePolicyAppCoordinator_apps;
  swift_beginAccess();

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(v2 + v29) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + v29) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  [v28 unlock];
  [v27 resume];

  return 1;
}

uint64_t sub_1000249F8(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.appCoordinator.getter();
  v8 = a1;
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
    _os_log_impl(&_mh_execute_header, v9, v10, "acceptNewPrivilegedAgentConnection %@", v11, 0xCu);
    sub_1000255D0(v12);
  }

  (*(v5 + 8))(v7, v4);
  v14 = *(v2 + OBJC_IVAR____TtC11gamepolicyd24GamePolicyAppCoordinator_delegateQueue);
  type metadata accessor for GamePolicyPrivilegedAppProxy();
  v15 = swift_allocObject();
  v16 = qword_100053450;
  v17 = v14;
  if (v16 != -1)
  {
    v32 = v17;
    swift_once();
    v17 = v32;
  }

  v15[4] = qword_1000538A0;
  v15[5] = &_swiftEmptySetSingleton;
  v15[2] = v8;
  v15[3] = v17;
  type metadata accessor for GamePolicyPrivilegedAppXPC();
  v18 = v8;

  v19 = static GamePolicyPrivilegedAppXPC.GamePolicyPrivilegedAppClientInterface()();
  [v18 setRemoteObjectInterface:v19];

  v20 = static GamePolicyPrivilegedAppXPC.GamePolicyPrivilegedAppServerInterface()();
  [v18 setExportedInterface:v20];

  [v18 setExportedObject:v15];
  v21 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v22 = swift_allocObject();
  *(v22 + 16) = v21;
  *(v22 + 24) = v18;
  v37 = sub_100025538;
  v38 = v22;
  aBlock = _NSConcreteStackBlock;
  v34 = 1107296256;
  v35 = sub_100024520;
  v36 = &unk_10004E2D8;
  v23 = _Block_copy(&aBlock);
  v24 = v18;

  [v24 setInvalidationHandler:v23];
  _Block_release(v23);
  v25 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v26 = swift_allocObject();
  *(v26 + 16) = v25;
  *(v26 + 24) = v24;
  v37 = sub_100025590;
  v38 = v26;
  aBlock = _NSConcreteStackBlock;
  v34 = 1107296256;
  v35 = sub_100024520;
  v36 = &unk_10004E328;
  v27 = _Block_copy(&aBlock);
  v28 = v24;

  [v28 setInterruptionHandler:v27];
  _Block_release(v27);
  v29 = *(v2 + OBJC_IVAR____TtC11gamepolicyd24GamePolicyAppCoordinator_lock);
  [v29 lock];
  v30 = OBJC_IVAR____TtC11gamepolicyd24GamePolicyAppCoordinator_privilegedApps;
  swift_beginAccess();

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(v2 + v30) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + v30) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  [v29 unlock];
  [v28 resume];

  return 1;
}

void sub_100024ED8(uint64_t a1, void *a2, const char *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    static Logger.appCoordinator.getter();
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, a3, v17, 2u);
    }

    (*(v10 + 8))(v12, v9);
    v18 = OBJC_IVAR____TtC11gamepolicyd24GamePolicyAppCoordinator_lock;
    [*&v14[OBJC_IVAR____TtC11gamepolicyd24GamePolicyAppCoordinator_lock] lock];
    v19 = *a4;
    swift_beginAccess();
    v20 = a2;
    v21 = sub_100025A3C(&v14[v19], v20);

    v22 = *&v14[v19];
    if (v22 >> 62)
    {
      v23 = _CocoaArrayWrapper.endIndex.getter();
      if (v23 >= v21)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v23 >= v21)
      {
LABEL_6:
        sub_10002586C(v21, v23, sub_1000256F8, a5);
        swift_endAccess();
        [*&v14[v18] unlock];

        return;
      }
    }

    __break(1u);
  }
}

void sub_100025138(uint64_t a1, void *a2, const char *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    static Logger.appCoordinator.getter();
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, a3, v17, 2u);
    }

    (*(v10 + 8))(v12, v9);
    v18 = OBJC_IVAR____TtC11gamepolicyd24GamePolicyAppCoordinator_lock;
    [*&v14[OBJC_IVAR____TtC11gamepolicyd24GamePolicyAppCoordinator_lock] lock];
    v19 = *a4;
    swift_beginAccess();
    v20 = a2;
    v21 = sub_100025A3C(&v14[v19], v20);

    v22 = *&v14[v19];
    if (v22 >> 62)
    {
      v23 = _CocoaArrayWrapper.endIndex.getter();
      if (v23 >= v21)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v23 >= v21)
      {
LABEL_6:
        sub_10002586C(v21, v23, sub_1000256F8, a5);
        swift_endAccess();
        [*&v14[v18] unlock];
        [v20 invalidate];

        return;
      }
    }

    __break(1u);
  }
}

id sub_100025438(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for GamePolicyAppCoordinator();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_1000254FC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100025578(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000255D0(uint64_t a1)
{
  v2 = sub_100003870(&unk_100053C00, &qword_10003E810);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100025638(uint64_t a1, char a2)
{
  v4 = *v2;
  isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if ((isUniquelyReferenced_nonNull_bridgeObject & 1) == 0 || (result = 0, (v4 & 0x8000000000000000) != 0) || (v4 & 0x4000000000000000) != 0 || a1 > *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    if (v4 >> 62)
    {
      _CocoaArrayWrapper.endIndex.getter();
    }

    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    *v2 = result;
  }

  return result;
}

uint64_t sub_1000256F8(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  _CocoaArrayWrapper.endIndex.getter();
LABEL_9:
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v2 = result;
  return result;
}

uint64_t sub_1000257B0(unint64_t a1)
{
  if (a1 >> 62)
  {
    _CocoaArrayWrapper.endIndex.getter();
  }

  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

uint64_t sub_10002586C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t), uint64_t (*a4)(void))
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = a4;
    v9 = a3;
    v7 = a2;
    v8 = a1;
    v10 = *v6;
    v11 = *v6 >> 62;
    if (!v11)
    {
      result = *((*v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_13:
      __break(1u);
      goto LABEL_14;
    }
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (result < v7)
  {
    goto LABEL_13;
  }

LABEL_4:
  if (__OFSUB__(v7, v8))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v13 = v8 - v7;
  if (__OFSUB__(0, v7 - v8))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v11)
  {
    v14 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v14 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v15 = __OFADD__(v14, v13);
  result = v14 + v13;
  if (!v15)
  {
    v9(result, 1);
    return sub_100025C9C(v8, v7, 0, v5);
  }

LABEL_16:
  __break(1u);
  return result;
}

unint64_t sub_10002597C(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 16 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 16 * a3;
  v13 = (v7 + 32 + 16 * a2);
  if (result != v13 || result >= v13 + 16 * v12)
  {
    result = memmove(result, v13, 16 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_100025A3C(unint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = sub_100025DA0(*a1, a2);
  v7 = v5;
  if (v2)
  {
    return v7;
  }

  if (v6)
  {
    if (v4 >> 62)
    {
      return _CocoaArrayWrapper.endIndex.getter();
    }

    return *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v8 = v5 + 1;
  if (__OFADD__(v5, 1))
  {
    __break(1u);
    goto LABEL_8;
  }

  while (1)
  {
    if (v4 >> 62)
    {
      if (v8 == _CocoaArrayWrapper.endIndex.getter())
      {
        return v7;
      }
    }

    else if (v8 == *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v7;
    }

    if ((v4 & 0xC000000000000001) != 0)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_16;
    }

    if ((v8 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v8 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_41;
    }

LABEL_16:
    sub_100025EA8();
    v10 = static NSObject.== infix(_:_:)();

    if ((v10 & 1) == 0)
    {
      if (v7 != v8)
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if ((v7 & 0x8000000000000000) != 0)
          {
            goto LABEL_45;
          }

          v13 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v7 >= v13)
          {
            goto LABEL_46;
          }

          if (v8 >= v13)
          {
            goto LABEL_47;
          }

          v11 = *(v4 + 32 + 8 * v7);
          v12 = *(v4 + 32 + 8 * v8);
        }

        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v4 & 0x8000000000000000) != 0 || (v4 & 0x4000000000000000) != 0)
        {
          v4 = sub_1000257B0(v4);
          v14 = (v4 >> 62) & 1;
        }

        else
        {
          LODWORD(v14) = 0;
        }

        v15 = v4 & 0xFFFFFFFFFFFFFF8;
        *((v4 & 0xFFFFFFFFFFFFFF8) + 8 * v7 + 0x20) = v12;

        if ((v4 & 0x8000000000000000) != 0 || v14)
        {
          v4 = sub_1000257B0(v4);
          v15 = v4 & 0xFFFFFFFFFFFFFF8;
          if ((v8 & 0x8000000000000000) != 0)
          {
LABEL_38:
            __break(1u);
            return v7;
          }
        }

        else if ((v8 & 0x8000000000000000) != 0)
        {
          goto LABEL_38;
        }

        if (v8 >= *(v15 + 16))
        {
          goto LABEL_44;
        }

        *(v15 + 8 * v8 + 32) = v11;

        *a1 = v4;
      }

LABEL_8:
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        goto LABEL_43;
      }
    }

    v9 = __OFADD__(v8++, 1);
    if (v9)
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
  return _CocoaArrayWrapper.endIndex.getter();
}

uint64_t sub_100025C9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v10 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v4 = a3;
  v7 = a2;
  v11 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v8 = v5 + 4;
  v6 = &v5[a1 + 4];
  a4(0);
  result = swift_arrayDestroy();
  v13 = __OFSUB__(v4, v10);
  v10 = v4 - v10;
  if (v13)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v10)
  {
    goto LABEL_17;
  }

  v9 = v11 >> 62;
  if (!(v11 >> 62))
  {
    result = v5[2];
    v14 = result - v7;
    if (!__OFSUB__(result, v7))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = _CocoaArrayWrapper.endIndex.getter();
  v14 = result - v7;
  if (__OFSUB__(result, v7))
  {
    goto LABEL_23;
  }

LABEL_6:
  v15 = (v6 + 8 * v4);
  v16 = &v8[v7];
  if (v15 != v16 || v15 >= &v16[8 * v14])
  {
    memmove(v15, v16, 8 * v14);
  }

  if (v9)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    result = v5[2];
  }

  if (__OFADD__(result, v10))
  {
    goto LABEL_24;
  }

  v5[2] = result + v10;
LABEL_17:
  if (v4 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

unint64_t sub_100025DA0(unint64_t a1, uint64_t a2)
{
  v3 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_17:
    v4 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  while (1)
  {
    if (v4 == v5)
    {
      return 0;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v5 >= *(v3 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }
    }

    sub_100025EA8();
    v6 = static NSObject.== infix(_:_:)();

    if (v6)
    {
      return v5;
    }

    if (__OFADD__(v5++, 1))
    {
      goto LABEL_16;
    }
  }
}

unint64_t sub_100025EA8()
{
  result = qword_100055020;
  if (!qword_100055020)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100055020);
  }

  return result;
}

uint64_t sub_100025F74(void *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v35 - v7;
  v9 = [a1 serviceName];
  if (!v9)
  {
    goto LABEL_7;
  }

  v36 = v6;
  v10 = v9;
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  if (v11 == 0xD000000000000019 && 0x80000001000423F0 == v13)
  {

    goto LABEL_16;
  }

  v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

  v6 = v36;
  if (v15)
  {
LABEL_16:
    sub_100024564(a1);
    goto LABEL_19;
  }

LABEL_7:
  v16 = [a1 serviceName];
  if (!v16)
  {
LABEL_13:
    static Logger.toolCoordinator.getter();
    v23 = a1;
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.info.getter();

    if (!os_log_type_enabled(v24, v25))
    {
      v29 = 0;
      v8 = v6;
      goto LABEL_24;
    }

    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v26 = 138412290;
    *(v26 + 4) = v23;
    *v27 = v23;
    v28 = v23;
    _os_log_impl(&_mh_execute_header, v24, v25, "GamePolicyToolCoordinator: rejecting incoming connection %@", v26, 0xCu);
    v29 = 0;
    v8 = v6;
    goto LABEL_21;
  }

  v17 = v16;
  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;

  if (v18 == 0xD000000000000024 && 0x8000000100042170 == v20)
  {
  }

  else
  {
    v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v22 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  sub_1000249F8(a1);
LABEL_19:
  static Logger.toolCoordinator.getter();
  v30 = a1;
  v24 = Logger.logObject.getter();
  v31 = static os_log_type_t.debug.getter();

  if (!os_log_type_enabled(v24, v31))
  {
    v29 = 1;
    goto LABEL_24;
  }

  v32 = swift_slowAlloc();
  v27 = swift_slowAlloc();
  *v32 = 138412290;
  *(v32 + 4) = v30;
  *v27 = v30;
  v33 = v30;
  _os_log_impl(&_mh_execute_header, v24, v31, "GamePolicyToolCoordinator: accepting incoming connection %@", v32, 0xCu);
  v29 = 1;
LABEL_21:
  sub_1000255D0(v27);

LABEL_24:

  (*(v3 + 8))(v8, v2);
  return v29;
}

uint64_t sub_100026338(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v2 = a1;
    v3 = __CocoaDictionary.lookup(_:)();

    if (v3)
    {
      type metadata accessor for EmbeddedGameProcess();
      swift_dynamicCast();
      return v6;
    }
  }

  else if (*(a2 + 16))
  {
    sub_1000351E0(a1);
    if (v5)
    {
    }
  }

  return 0;
}

uint64_t sub_1000263E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_1000264E0(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = __CocoaSet.contains(_:)();
  }

  else if (*(a2 + 16) && (sub_100009748(0, &qword_100054450, RBSProcessIdentity_ptr), v5 = NSObject._rawHashValue(seed:)(*(a2 + 40)), v6 = -1 << *(a2 + 32), v7 = v5 & ~v6, ((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0))
  {
    v8 = ~v6;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v7);
      v4 = static NSObject.== infix(_:_:)();

      if (v4)
      {
        break;
      }

      v7 = (v7 + 1) & v8;
    }

    while (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t static CLPCSustainableModeOptions.debugDescriptions.setter(_UNKNOWN **a1)
{
  swift_beginAccess();
  static CLPCSustainableModeOptions.debugDescriptions = a1;
}

uint64_t CLPCSustainableModeOptions.description.getter(uint64_t a1)
{
  swift_beginAccess();
  v2 = static CLPCSustainableModeOptions.debugDescriptions;
  v3 = static CLPCSustainableModeOptions.debugDescriptions + 4;
  v4 = static CLPCSustainableModeOptions.debugDescriptions[2];

  v6 = 0;
LABEL_2:
  v7 = &v3[3 * v6];
  while (v4 != v6)
  {
    if (v6 >= v2[2])
    {
      __break(1u);
      return result;
    }

    ++v6;
    v8 = v7 + 3;
    v9 = *v7;
    v7 += 3;
    if ((v9 & ~a1) == 0)
    {
      v11 = *(v8 - 2);
      v10 = *(v8 - 1);

      result = swift_isUniquelyReferenced_nonNull_native();
      v23 = v11;
      if ((result & 1) == 0)
      {
        result = sub_100035554(0, _swiftEmptyArrayStorage[2] + 1, 1);
      }

      v13 = _swiftEmptyArrayStorage[2];
      v12 = _swiftEmptyArrayStorage[3];
      if (v13 >= v12 >> 1)
      {
        result = sub_100035554((v12 > 1), v13 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v13 + 1;
      v14 = &_swiftEmptyArrayStorage[3 * v13];
      v14[4] = v9;
      v14[5] = v23;
      v14[6] = v10;
      goto LABEL_2;
    }
  }

  v15 = _swiftEmptyArrayStorage[2];
  if (v15)
  {
    sub_100035534(0, v15, 0);
    v16 = &_swiftEmptyArrayStorage[6];
    do
    {
      v18 = *(v16 - 1);
      v17 = *v16;
      v20 = _swiftEmptyArrayStorage[2];
      v19 = _swiftEmptyArrayStorage[3];

      if (v20 >= v19 >> 1)
      {
        sub_100035534((v19 > 1), v20 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v20 + 1;
      v21 = &_swiftEmptyArrayStorage[2 * v20];
      v21[4] = v18;
      v21[5] = v17;
      v16 += 3;
      --v15;
    }

    while (v15);
  }

  sub_100003870(&qword_100055038, &unk_10003EFD0);
  sub_10003B0A0(&qword_100055040, &qword_100055038, &unk_10003EFD0, &protocol conformance descriptor for [A]);
  v22 = BidirectionalCollection<>.joined(separator:)();

  return v22;
}

uint64_t sub_100026980(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for DynamicSplitterStatus.Config();
  v72 = *(v4 - 8);
  v73 = v4;
  __chkstk_darwin(v4);
  v71 = v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SustainedExecutionStatus.Config();
  v69 = *(v6 - 8);
  v70 = v6;
  __chkstk_darwin(v6);
  v68 = v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100003870(&qword_100054428, &qword_10003E778);
  __chkstk_darwin(v8 - 8);
  v65 = v60 - v9;
  v10 = type metadata accessor for ModelManagerGameAssertionStatus.Config();
  v66 = *(v10 - 8);
  v67 = v10;
  __chkstk_darwin(v10);
  v64 = v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100003870(&qword_1000552E0, &qword_10003E780);
  v13 = __chkstk_darwin(v12 - 8);
  v15 = v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = v60 - v16;
  v63 = type metadata accessor for GameModeStatus.Config();
  v62 = *(v63 - 8);
  __chkstk_darwin(v63);
  v61 = v60 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v1[OBJC_IVAR____TtC11gamepolicyd26EmbeddedGameProcessMonitor_ignoredProcesses] = &_swiftEmptySetSingleton;
  v19 = OBJC_IVAR____TtC11gamepolicyd26EmbeddedGameProcessMonitor_gameProcesses;
  *&v2[v19] = sub_100039A18(_swiftEmptyArrayStorage);
  *&v2[OBJC_IVAR____TtC11gamepolicyd26EmbeddedGameProcessMonitor_identifiedGameTransaction] = 0;
  v20 = &v2[OBJC_IVAR____TtC11gamepolicyd26EmbeddedGameProcessMonitor_gameModeUserPreferenceToggledNotification];
  *v20 = 0xD000000000000025;
  v20[1] = 0x8000000100042DB0;
  *&v2[OBJC_IVAR____TtC11gamepolicyd26EmbeddedGameProcessMonitor_gameModeUserPreferenceToggledNotificationToken] = 0;
  v21 = &v2[OBJC_IVAR____TtC11gamepolicyd26EmbeddedGameProcessMonitor_dashboardVisibilityDidChangeNotification];
  *v21 = 0xD000000000000032;
  v21[1] = 0x8000000100042DE0;
  *&v2[OBJC_IVAR____TtC11gamepolicyd26EmbeddedGameProcessMonitor_dashboardVisibilityDidChangeNotificationToken] = 0;
  v2[OBJC_IVAR____TtC11gamepolicyd26EmbeddedGameProcessMonitor_dashboardVisible] = 0;
  *&v2[OBJC_IVAR____TtC11gamepolicyd26EmbeddedGameProcessMonitor_observationist] = 0;
  *&v2[OBJC_IVAR____TtC11gamepolicyd26EmbeddedGameProcessMonitor_keyboardFocusTarget] = 0;
  *&v2[OBJC_IVAR____TtC11gamepolicyd26EmbeddedGameProcessMonitor_connection] = 0;
  *&v2[OBJC_IVAR____TtC11gamepolicyd26EmbeddedGameProcessMonitor_interface] = 0;
  type metadata accessor for GamePolicyNotificationTokens();
  swift_allocObject();
  v22 = sub_10000B890();
  *&v2[OBJC_IVAR____TtC11gamepolicyd26EmbeddedGameProcessMonitor_notificationTokens] = v22;
  type metadata accessor for GamePolicyStateManager();
  v23 = swift_allocObject();
  *(v23 + 32) = 0;
  *(v23 + 34) = 0;
  *(v23 + 40) = 0;
  *(v23 + 48) = 0;
  *(v23 + 56) = 0;
  *(v23 + 64) = 0;
  *(v23 + 16) = a1;
  *(v23 + 24) = v22;
  *&v2[OBJC_IVAR____TtC11gamepolicyd26EmbeddedGameProcessMonitor_stateManager] = v23;
  *&v2[OBJC_IVAR____TtC11gamepolicyd26EmbeddedGameProcessMonitor_queue] = a1;
  v24 = objc_allocWithZone(NSOperationQueue);
  v60[0] = a1;

  v25 = [v24 init];
  *&v2[OBJC_IVAR____TtC11gamepolicyd26EmbeddedGameProcessMonitor_operationQueue] = v25;
  if (sub_100001E44())
  {
    v26 = 1;
  }

  else
  {
    type metadata accessor for GlobalPreferences();
    dispatch thunk of static GlobalPreferences.shared.getter();
    v26 = dispatch thunk of GlobalPreferences.ignoreDeviceRestrictions.getter();
  }

  v2[OBJC_IVAR____TtC11gamepolicyd26EmbeddedGameProcessMonitor_deviceSupportsGameMode] = v26 & 1;
  if (sub_100001E4C())
  {
    v27 = 1;
  }

  else
  {
    type metadata accessor for GlobalPreferences();
    dispatch thunk of static GlobalPreferences.shared.getter();
    v27 = dispatch thunk of GlobalPreferences.ignoreDeviceRestrictions.getter();
  }

  v2[OBJC_IVAR____TtC11gamepolicyd26EmbeddedGameProcessMonitor_deviceSupportsModelManagerGameAssertion] = v27 & 1;
  if (sub_10000259C())
  {
    v28 = 1;
  }

  else
  {
    type metadata accessor for GlobalPreferences();
    dispatch thunk of static GlobalPreferences.shared.getter();
    v28 = dispatch thunk of GlobalPreferences.ignoreDeviceRestrictions.getter();
  }

  v60[1] = OBJC_IVAR____TtC11gamepolicyd26EmbeddedGameProcessMonitor_deviceSupportsDynamicPowerSplitter;
  v2[OBJC_IVAR____TtC11gamepolicyd26EmbeddedGameProcessMonitor_deviceSupportsDynamicPowerSplitter] = v28 & 1;
  if (sub_100002C90())
  {
    v29 = 1;
  }

  else
  {
    type metadata accessor for GlobalPreferences();
    dispatch thunk of static GlobalPreferences.shared.getter();
    v29 = dispatch thunk of GlobalPreferences.ignoreDeviceRestrictions.getter();
  }

  v2[OBJC_IVAR____TtC11gamepolicyd26EmbeddedGameProcessMonitor_deviceSupportsSustainedExecutionMode] = v29 & 1;
  if (sub_100003394())
  {
    v30 = 1;
  }

  else
  {
    type metadata accessor for GlobalPreferences();
    dispatch thunk of static GlobalPreferences.shared.getter();
    v30 = dispatch thunk of GlobalPreferences.ignoreDeviceRestrictions.getter();
  }

  v2[OBJC_IVAR____TtC11gamepolicyd26EmbeddedGameProcessMonitor_deviceSupportsSustainedExecutionModeAutomaticEnrollment] = v30 & 1;
  v31 = type metadata accessor for Date();
  v32 = *(*(v31 - 8) + 56);
  v32(v17, 1, 1, v31);
  v32(v15, 1, 1, v31);
  v33 = v61;
  GameModeStatus.Config.init(enabled:enablementDate:disablementDate:deviceSupported:jettisonCameraS2R:gameBundleIdentifiers:previousGameBundleIdentifiers:impactedBundleIdentifiers:previouslyImpactedBundleIdentifiers:allGameBundleIdentifiers:previousAllGameBundleIdentifiers:enablementStrategy:perfomanceGamingModeEnabled:)();
  (*(v62 + 32))(&v2[OBJC_IVAR____TtC11gamepolicyd26EmbeddedGameProcessMonitor_gameModeStatusConfig], v33, v63);
  v34 = type metadata accessor for ModelManagerGameAssertionPolicy();
  (*(*(v34 - 8) + 56))(v65, 1, 1, v34);
  v32(v17, 1, 1, v31);
  v32(v15, 1, 1, v31);
  v35 = v64;
  ModelManagerGameAssertionStatus.Config.init(policy:enablementDate:disablementDate:deviceSupported:aaaBundleIdentifiers:impactedBundleIdentifiers:previouslyImpactedBundleIdentifiers:policyStrategy:)();
  (*(v66 + 32))(&v2[OBJC_IVAR____TtC11gamepolicyd26EmbeddedGameProcessMonitor_modelManagerGameAssertionStatusConfig], v35, v67);
  v32(v17, 1, 1, v31);
  v32(v15, 1, 1, v31);
  v36 = v68;
  SustainedExecutionStatus.Config.init(activePolicy:enablementDate:disablementDate:deviceSupported:impactedBundleIdentifiers:previouslyImpactedBundleIdentifiers:enablementStrategy:)();
  (*(v69 + 32))(&v2[OBJC_IVAR____TtC11gamepolicyd26EmbeddedGameProcessMonitor_sustainedExecutionStatusConfig], v36, v70);
  v32(v17, 1, 1, v31);
  v32(v15, 1, 1, v31);
  v37 = v71;
  DynamicSplitterStatus.Config.init(enabled:enablementDate:disablementDate:deviceSupported:impactedBundleIdentifiers:previouslyImpactedBundleIdentifiers:enablementStrategy:)();
  (*(v72 + 32))(&v2[OBJC_IVAR____TtC11gamepolicyd26EmbeddedGameProcessMonitor_dynamicSplitterStatusConfig], v37, v73);
  v38 = [objc_allocWithZone(RBSProcessStateDescriptor) init];
  [v38 setValues:17];
  *&v2[OBJC_IVAR____TtC11gamepolicyd26EmbeddedGameProcessMonitor_assertionDescriptor] = v38;
  v79 = nullsub_1;
  v80 = 0;
  aBlock = _NSConcreteStackBlock;
  v76 = 1107296256;
  v77 = sub_10003B1C4;
  v78 = &unk_10004E930;
  v39 = _Block_copy(&aBlock);
  v40 = objc_opt_self();
  v41 = v38;
  v42 = [v40 monitorWithConfiguration:v39];
  _Block_release(v39);

  result = swift_isEscapingClosureAtFileLocation();
  if (result)
  {
    __break(1u);
  }

  else
  {
    *&v2[OBJC_IVAR____TtC11gamepolicyd26EmbeddedGameProcessMonitor_processMonitor] = v42;
    v44 = [objc_opt_self() nullDisplay];
    v45 = [objc_opt_self() keyboardFocusEnvironment];
    v46 = [objc_allocWithZone(BKSHIDEventDeliveryChainObserver) initWithDisplay:v44 environment:v45];

    v47 = type metadata accessor for EmbeddedGameProcessMonitor(0);
    v74.receiver = v2;
    v74.super_class = v47;
    v48 = objc_msgSendSuper2(&v74, "init");
    v49 = [v46 addChainObserver:v48];
    *&v48[OBJC_IVAR____TtC11gamepolicyd26EmbeddedGameProcessMonitor_observationist] = v49;
    swift_unknownObjectRelease();
    v50 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v79 = sub_10003B0E8;
    v80 = v50;
    aBlock = _NSConcreteStackBlock;
    v76 = 1107296256;
    v77 = sub_1000276C0;
    v78 = &unk_10004E958;
    v51 = _Block_copy(&aBlock);
    v52 = v60[0];

    v53 = String.utf8CString.getter();

    v54 = OBJC_IVAR____TtC11gamepolicyd26EmbeddedGameProcessMonitor_gameModeUserPreferenceToggledNotificationToken;
    swift_beginAccess();
    notify_register_dispatch((v53 + 32), &v48[v54], v52, v51);
    swift_endAccess();

    _Block_release(v51);

    sub_100009748(0, &qword_100053B00, OS_dispatch_queue_ptr);

    v55 = static OS_dispatch_queue.main.getter();
    v56 = swift_allocObject();
    swift_unknownObjectWeakInit();

    v79 = sub_10003B0F0;
    v80 = v56;
    aBlock = _NSConcreteStackBlock;
    v76 = 1107296256;
    v77 = sub_1000276C0;
    v78 = &unk_10004E980;
    v57 = _Block_copy(&aBlock);

    v58 = String.utf8CString.getter();

    v59 = OBJC_IVAR____TtC11gamepolicyd26EmbeddedGameProcessMonitor_dashboardVisibilityDidChangeNotificationToken;
    swift_beginAccess();
    notify_register_dispatch((v58 + 32), &v48[v59], v55, v57);
    swift_endAccess();

    _Block_release(v57);

    return v48;
  }

  return result;
}

void sub_10002766C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_1000315F4();
  }
}

uint64_t sub_1000276C0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

void sub_100027714(int a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    state64 = 0;
    if (!notify_get_state(a1, &state64))
    {
      v4[OBJC_IVAR____TtC11gamepolicyd26EmbeddedGameProcessMonitor_dashboardVisible] = state64 == 1;
    }
  }
}

id sub_1000277C0()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.daemon.getter();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "com.apple.GamePolicyAngel.notification.service Shutdown", v8, 2u);
  }

  (*(v3 + 8))(v5, v2);
  v9 = OBJC_IVAR____TtC11gamepolicyd26EmbeddedGameProcessMonitor_connection;
  v10 = *&v1[OBJC_IVAR____TtC11gamepolicyd26EmbeddedGameProcessMonitor_connection];
  if (v10)
  {
    [v10 invalidate];
    v11 = *&v1[v9];
  }

  else
  {
    v11 = 0;
  }

  *&v1[v9] = 0;

  v12 = type metadata accessor for EmbeddedGameProcessMonitor(0);
  v14.receiver = v1;
  v14.super_class = v12;
  return objc_msgSendSuper2(&v14, "dealloc");
}

void sub_100027B9C(void *a1)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v50[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v50[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = *(v1 + OBJC_IVAR____TtC11gamepolicyd26EmbeddedGameProcessMonitor_keyboardFocusTarget);
  *(v1 + OBJC_IVAR____TtC11gamepolicyd26EmbeddedGameProcessMonitor_keyboardFocusTarget) = a1;

  if (a1)
  {
    v53 = v8;
    v55 = v4;
    v56 = v3;
    LODWORD(v60) = [a1 pid];
    v12 = OBJC_IVAR____TtC11gamepolicyd26EmbeddedGameProcessMonitor_gameProcesses;
    swift_beginAccess();
    v13 = *(v1 + v12);
    v57 = v10;
    v58 = v6;
    v54 = v7;
    if ((v13 & 0xC000000000000001) != 0)
    {
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = __CocoaDictionary.makeIterator()() | 0x8000000000000000;
    }

    else
    {
      v18 = -1 << *(v13 + 32);
      v15 = ~v18;
      v14 = v13 + 64;
      v19 = -v18;
      if (v19 < 64)
      {
        v20 = ~(-1 << v19);
      }

      else
      {
        v20 = -1;
      }

      v16 = v20 & *(v13 + 64);
      v17 = v13;
    }

    v21 = 0;
    v59 = v15;
    v22 = (v15 + 64) >> 6;
    if ((v17 & 0x8000000000000000) != 0)
    {
      goto LABEL_15;
    }

LABEL_9:
    v23 = v21;
    v24 = v16;
    v25 = v21;
    if (v16)
    {
LABEL_13:
      v26 = (v24 - 1) & v24;
      v27 = (v25 << 9) | (8 * __clz(__rbit64(v24)));
      v28 = *(*(v17 + 56) + v27);
      v29 = *(*(v17 + 48) + v27);

      if (v29)
      {
        while (1)
        {

          v33 = EmbeddedGameProcess.processHandle.getter();
          v34 = [v33 pid];

          if (v34 == v60)
          {
            break;
          }

          v21 = v25;
          v16 = v26;
          if ((v17 & 0x8000000000000000) == 0)
          {
            goto LABEL_9;
          }

LABEL_15:
          v30 = __CocoaDictionary.Iterator.next()();
          if (v30)
          {
            v32 = v31;
            v61 = v30;
            sub_100009748(0, &qword_100054450, RBSProcessIdentity_ptr);
            swift_dynamicCast();
            v29 = v62;
            v61 = v32;
            type metadata accessor for EmbeddedGameProcess();
            swift_dynamicCast();
            v28 = v62;
            v25 = v21;
            v26 = v16;
            if (v29)
            {
              continue;
            }
          }

          goto LABEL_20;
        }

        v35 = v57;
        static Date.now.getter();
        dispatch thunk of EmbeddedGameProcess.lastFocused.setter();
        v36 = v58;
        static Logger.daemon.getter();

        v37 = Logger.logObject.getter();
        v38 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v37, v38))
        {
          v39 = swift_slowAlloc();
          v52 = v37;
          v40 = v39;
          v60 = swift_slowAlloc();
          v61 = v28;
          v62 = v60;
          *v40 = 136380931;
          type metadata accessor for EmbeddedGameProcess();
          v51 = v38;
          sub_100038D38(&qword_100055240, &type metadata accessor for EmbeddedGameProcess, &protocol conformance descriptor for EmbeddedGameProcess);
          v41 = dispatch thunk of CustomStringConvertible.description.getter();
          v43 = sub_100034C38(v41, v42, &v62);

          *(v40 + 4) = v43;
          *(v40 + 12) = 2081;
          dispatch thunk of EmbeddedGameProcess.lastFocused.getter();
          sub_100038D38(&qword_100055248, &type metadata accessor for Date, &protocol conformance descriptor for Date);
          v44 = v54;
          v45 = dispatch thunk of CustomStringConvertible.description.getter();
          v47 = v46;
          (*(v53 + 8))(v35, v44);
          v48 = sub_100034C38(v45, v47, &v62);

          *(v40 + 14) = v48;
          v49 = v52;
          _os_log_impl(&_mh_execute_header, v52, v51, "Last played for %{private}s == %{private}s", v40, 0x16u);
          swift_arrayDestroy();

          sub_10001B370(v17);

          (*(v55 + 8))(v58, v56);
        }

        else
        {

          sub_10001B370(v17);

          (*(v55 + 8))(v36, v56);
        }
      }

      else
      {
LABEL_20:
        sub_10001B370(v17);
      }
    }

    else
    {
      while (1)
      {
        v25 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
          break;
        }

        if (v25 >= v22)
        {
          goto LABEL_20;
        }

        v24 = *(v14 + 8 * v25);
        ++v23;
        if (v24)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
    }
  }
}

void sub_100028174(int a1, id a2)
{
  v2 = [a2 deferringPath];
  sub_100009748(0, &qword_1000553E8, BKSHIDEventDeferringTarget_ptr);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v3 >> 62))
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_10:

    v8 = 0;
    goto LABEL_11;
  }

  v4 = _CocoaArrayWrapper.endIndex.getter();
  if (!v4)
  {
    goto LABEL_10;
  }

LABEL_3:
  v5 = __OFSUB__(v4, 1);
  v6 = v4 - 1;
  if (v5)
  {
    __break(1u);
    goto LABEL_15;
  }

  if ((v3 & 0xC000000000000001) != 0)
  {
LABEL_15:
    v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_8;
  }

  if ((v6 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (v6 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_17:
    __break(1u);
    return;
  }

  v7 = *(v3 + 8 * v6 + 32);
LABEL_8:
  v9 = v7;

  v8 = v9;
LABEL_11:
  v10 = v8;
  sub_100027B9C(v8);
}

void sub_100028314(uint64_t a1, char *a2, unint64_t a3, unint64_t a4, unint64_t a5, int a6)
{
  v7 = v6;
  v259 = a6;
  v270 = a5;
  v272 = a4;
  v271 = a3;
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v243 = &v230 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v16 = &v230 - v15;
  __chkstk_darwin(v14);
  v18 = &v230 - v17;
  v252 = type metadata accessor for OSSignpostID();
  v256 = *(v252 - 8);
  __chkstk_darwin(v252);
  v251 = &v230 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v255 = type metadata accessor for String.Encoding();
  v254 = *(v255 - 8);
  __chkstk_darwin(v255);
  v253 = &v230 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v261 = type metadata accessor for Logger();
  v260 = *(v261 - 8);
  v21 = __chkstk_darwin(v261);
  v245 = &v230 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v249 = &v230 - v24;
  v25 = __chkstk_darwin(v23);
  v244 = &v230 - v26;
  v27 = __chkstk_darwin(v25);
  v248 = &v230 - v28;
  v29 = __chkstk_darwin(v27);
  v250 = &v230 - v30;
  __chkstk_darwin(v29);
  v257 = &v230 - v31;
  v32 = sub_100003870(&qword_1000552E0, &qword_10003E780);
  v33 = __chkstk_darwin(v32 - 8);
  v246 = &v230 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v247 = &v230 - v35;
  v36 = type metadata accessor for GameModeStatus.Config();
  v37 = *(v36 - 8);
  v38 = __chkstk_darwin(v36);
  __chkstk_darwin(v38);
  v41 = &v230 - v40;
  if (*(v7 + OBJC_IVAR____TtC11gamepolicyd26EmbeddedGameProcessMonitor_deviceSupportsGameMode) != 1)
  {
    return;
  }

  v232 = v39;
  v230 = v16;
  v235 = v18;
  v236 = v11;
  v237 = v10;
  v42 = OBJC_IVAR____TtC11gamepolicyd26EmbeddedGameProcessMonitor_gameModeStatusConfig;
  swift_beginAccess();
  v44 = v37 + 16;
  v43 = *(v37 + 16);
  v43(v41, v7 + v42, v36);
  LODWORD(v258) = GameModeStatus.Config.enabled.getter();
  v46 = *(v37 + 8);
  v45 = v37 + 8;
  v46(v41, v36);
  v43(v41, v7 + v42, v36);
  v239 = GameModeStatus.Config.jettisonCameraS2R.getter();
  v46(v41, v36);
  v266 = v43;
  v43(v41, v7 + v42, v36);
  v242 = GameModeStatus.Config.impactedBundleIdentifiers.getter();
  v263 = v41;
  v264 = v36;
  v262 = v45;
  v268 = v46;
  v46(v41, v36);
  swift_beginAccess();
  GameModeStatus.Config.enabled.setter();
  GameModeStatus.Config.jettisonCameraS2R.setter();
  swift_endAccess();
  v265 = a1;
  v47 = a2;
  v48 = v271;
  v241 = v271 >> 62;
  if (v271 >> 62)
  {
    goto LABEL_176;
  }

  v49 = *((v271 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:
  v267 = v7;
  v269 = v42;
  if (v49)
  {
    v274 = _swiftEmptyArrayStorage;
    sub_100035534(0, v49 & ~(v49 >> 63), 0);
    if (v49 < 0)
    {
      __break(1u);
LABEL_202:
      __break(1u);
LABEL_203:
      __break(1u);
      goto LABEL_204;
    }

    v50 = v274;
    if ((v48 & 0xC000000000000001) != 0)
    {
      v51 = 0;
      do
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        v52 = EmbeddedGameProcess.bundleIdentifier.getter();
        v54 = v53;
        swift_unknownObjectRelease();
        v274 = v50;
        v56 = *(v50 + 16);
        v55 = *(v50 + 24);
        v45 = v56 + 1;
        if (v56 >= v55 >> 1)
        {
          sub_100035534((v55 > 1), v56 + 1, 1);
          v50 = v274;
        }

        ++v51;
        *(v50 + 16) = v45;
        v57 = v50 + 16 * v56;
        *(v57 + 32) = v52;
        *(v57 + 40) = v54;
      }

      while (v49 != v51);
    }

    else
    {
      v45 = v48 + 32;
      do
      {

        v58 = EmbeddedGameProcess.bundleIdentifier.getter();
        v60 = v59;

        v274 = v50;
        v62 = *(v50 + 16);
        v61 = *(v50 + 24);
        if (v62 >= v61 >> 1)
        {
          sub_100035534((v61 > 1), v62 + 1, 1);
          v50 = v274;
        }

        *(v50 + 16) = v62 + 1;
        v63 = v50 + 16 * v62;
        *(v63 + 32) = v58;
        *(v63 + 40) = v60;
        v45 += 8;
        --v49;
      }

      while (v49);
    }

    v7 = v267;
    v42 = v269;
  }

  v238 = v47;
  swift_beginAccess();
  GameModeStatus.Config.impactedBundleIdentifiers.setter();
  swift_endAccess();
  if (qword_100053488 != -1)
  {
    swift_once();
  }

  sub_10001C490();

  swift_beginAccess();
  GameModeStatus.Config.enablementStrategy.setter();
  swift_endAccess();
  v64 = v263;
  v65 = v264;
  v266(v263, v7 + v42, v264);
  GameModeStatus.Config.allGameBundleIdentifiers.getter();
  v268(v64, v65);
  swift_beginAccess();
  GameModeStatus.Config.previousAllGameBundleIdentifiers.setter();
  swift_endAccess();
  v66 = v270;
  v67 = v270 >> 62;
  if (v270 >> 62)
  {
    v68 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v68 = *((v270 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v68)
  {
    v274 = _swiftEmptyArrayStorage;
    sub_100035534(0, v68 & ~(v68 >> 63), 0);
    if (v68 < 0)
    {
      goto LABEL_202;
    }

    v69 = v274;
    if ((v66 & 0xC000000000000001) != 0)
    {
      v70 = 0;
      do
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        v71 = EmbeddedGameProcess.bundleIdentifier.getter();
        v73 = v72;
        swift_unknownObjectRelease();
        v274 = v69;
        v75 = *(v69 + 16);
        v74 = *(v69 + 24);
        v45 = v75 + 1;
        if (v75 >= v74 >> 1)
        {
          sub_100035534((v74 > 1), v75 + 1, 1);
          v69 = v274;
        }

        ++v70;
        *(v69 + 16) = v45;
        v76 = v69 + 16 * v75;
        *(v76 + 32) = v71;
        *(v76 + 40) = v73;
      }

      while (v68 != v70);
    }

    else
    {
      v45 = v66 + 32;
      do
      {

        v77 = EmbeddedGameProcess.bundleIdentifier.getter();
        v79 = v78;

        v274 = v69;
        v81 = *(v69 + 16);
        v80 = *(v69 + 24);
        if (v81 >= v80 >> 1)
        {
          sub_100035534((v80 > 1), v81 + 1, 1);
          v69 = v274;
        }

        *(v69 + 16) = v81 + 1;
        v82 = v69 + 16 * v81;
        *(v82 + 32) = v77;
        *(v82 + 40) = v79;
        v45 += 8;
        --v68;
      }

      while (v68);
    }

    v7 = v267;
    v42 = v269;
  }

  swift_beginAccess();
  GameModeStatus.Config.allGameBundleIdentifiers.setter();
  swift_endAccess();
  v234 = v272 >> 62;
  if (v272 >> 62)
  {
    v83 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v83 = *((v272 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v84 = _swiftEmptyArrayStorage;
  v231 = v67;
  if (v83)
  {
    v274 = _swiftEmptyArrayStorage;
    sub_100035534(0, v83 & ~(v83 >> 63), 0);
    if (v83 < 0)
    {
      goto LABEL_203;
    }

    v84 = v274;
    if ((v272 & 0xC000000000000001) != 0)
    {
      v85 = 0;
      do
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        v86 = EmbeddedGameProcess.bundleIdentifier.getter();
        v88 = v87;
        swift_unknownObjectRelease();
        v274 = v84;
        v90 = v84[2];
        v89 = v84[3];
        if (v90 >= v89 >> 1)
        {
          sub_100035534((v89 > 1), v90 + 1, 1);
          v84 = v274;
        }

        ++v85;
        v84[2] = v90 + 1;
        v91 = &v84[2 * v90];
        v91[4] = v86;
        v91[5] = v88;
      }

      while (v83 != v85);
    }

    else
    {
      v92 = v272 + 32;
      do
      {

        v93 = EmbeddedGameProcess.bundleIdentifier.getter();
        v95 = v94;

        v274 = v84;
        v97 = v84[2];
        v96 = v84[3];
        if (v97 >= v96 >> 1)
        {
          sub_100035534((v96 > 1), v97 + 1, 1);
          v84 = v274;
        }

        v84[2] = v97 + 1;
        v98 = &v84[2 * v97];
        v98[4] = v93;
        v98[5] = v95;
        v92 += 8;
        --v83;
      }

      while (v83);
    }

    v7 = v267;
    v42 = v269;
  }

  v240 = v258 ^ v265;
  v99 = v7 + v42;
  v100 = v263;
  v101 = v264;
  v102 = v266;
  v266(v263, v99, v264);
  v103 = GameModeStatus.Config.gameBundleIdentifiers.getter();
  v104 = v268;
  v268(v100, v101);
  v105 = v7;
  v106 = sub_100034B20(v103, v84);

  v258 = v44;
  v233 = v106;
  if (v106)
  {

    v42 = v271;
    v47 = v257;
    if (v240)
    {
      v45 = v269;
      v107 = v237;
      v108 = v236;
      v109 = v105;
      if ((v265 & 1) == 0)
      {
LABEL_52:
        v110 = v232;
        v111 = v264;
        v266(v232, v109 + v45, v264);
        v112 = v246;
        GameModeStatus.Config.enablementDate.getter();
        v268(v110, v111);
        LODWORD(v111) = (*(v108 + 48))(v112, 1, v107);
        sub_1000096E8(v112, &qword_1000552E0, &qword_10003E780);
        if (v111 == 1)
        {

LABEL_63:
          v44 = v233 ^ 1u;
          goto LABEL_64;
        }

        v116 = v247;
        Date.init()();
        (*(v108 + 56))(v116, 0, 1, v107);
        swift_beginAccess();
        GameModeStatus.Config.disablementDate.setter();
        GameModeStatus.Config.previouslyImpactedBundleIdentifiers.setter();
LABEL_62:
        swift_endAccess();
        goto LABEL_63;
      }

LABEL_56:

      v114 = v247;
      Date.init()();
      v115 = *(v108 + 56);
      v115(v114, 0, 1, v107);
      swift_beginAccess();
      GameModeStatus.Config.enablementDate.setter();
      v115(v114, 1, 1, v107);
      GameModeStatus.Config.disablementDate.setter();
      goto LABEL_62;
    }

    if (v259)
    {
      v44 = 0;
      v45 = v269;
      v109 = v105;
LABEL_64:
      static Logger.daemon.getter();
      v117 = Logger.logObject.getter();
      v118 = static os_log_type_t.default.getter();
      v119 = os_log_type_enabled(v117, v118);
      v120 = v265;
      if (v119)
      {
        v121 = swift_slowAlloc();
        v122 = swift_slowAlloc();
        v274 = v122;
        *v121 = 136446210;
        if (v120)
        {
          v123 = 0x64656C62616E65;
        }

        else
        {
          v123 = 0x64656C6261736964;
        }

        if (v120)
        {
          v124 = 0xE700000000000000;
        }

        else
        {
          v124 = 0xE800000000000000;
        }

        v125 = sub_100034C38(v123, v124, &v274);
        v120 = v265;

        *(v121 + 4) = v125;
        v109 = v267;
        _os_log_impl(&_mh_execute_header, v117, v118, "Game mode %{public}s.", v121, 0xCu);
        sub_100003964(v122);
      }

      v126 = *(v260 + 8);
      v126(v47, v261);
      v47 = v250;
      v276 = &type metadata for Feature;
      v277 = sub_100039FD4();
      LOBYTE(v274) = 0;
      v127 = isFeatureEnabled(_:)();
      sub_100003964(&v274);
      if (v127)
      {
        sub_1000036FC(v120 & 1);
        v128 = *(v109 + OBJC_IVAR____TtC11gamepolicyd26EmbeddedGameProcessMonitor_notificationTokens);
        swift_beginAccess();
        v129 = *(v128 + 16);
        if (v129)
        {
          notify_set_state(v129, v120 & 1);
          v274 = 0xD000000000000025;
          v275 = 0x8000000100041140;
          v130 = v253;
          static String.Encoding.utf8.getter();
          sub_100009790();
          v131 = StringProtocol.cString(using:)();
          (*(v254 + 8))(v130, v255);
          if (v131)
          {
            v132 = (v131 + 32);
          }

          else
          {
            v132 = 0;
          }

          notify_post(v132);

          v133 = (v256 + 8);
          if (v120)
          {
            static os_signpost_type_t.begin.getter();
          }

          else
          {
            static os_signpost_type_t.end.getter();
          }

          v137 = static Logger.stateTracking.getter();
          v138 = v251;
          static OSSignpostID.exclusive.getter();
          os_signpost(_:dso:log:name:signpostID:)();

          (*v133)(v138, v252);
        }

        else
        {
          static Logger.daemon.getter();
          v134 = Logger.logObject.getter();
          v135 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v134, v135))
          {
            v136 = swift_slowAlloc();
            *v136 = 0;
            _os_log_impl(&_mh_execute_header, v134, v135, "Unable to post game mode darwin notification - token is invalid!", v136, 2u);
          }

          v126(v47, v261);
        }

        sub_10001DE04(v120 & 1, 0);
      }

      goto LABEL_87;
    }

    v44 = 0;
    v45 = v269;
  }

  else
  {
    v113 = v269;
    v102(v100, v105 + v269, v101);
    GameModeStatus.Config.gameBundleIdentifiers.getter();
    v104(v100, v101);
    swift_beginAccess();
    GameModeStatus.Config.previousGameBundleIdentifiers.setter();
    GameModeStatus.Config.gameBundleIdentifiers.setter();
    swift_endAccess();
    v45 = v113;
    v109 = v105;
    if (v240)
    {
      v107 = v237;
      v108 = v236;
      v42 = v271;
      v47 = v257;
      if ((v265 & 1) == 0)
      {
        goto LABEL_52;
      }

      goto LABEL_56;
    }

    v47 = v257;
    v44 = 1;
    if (v259)
    {
      v42 = v271;
      goto LABEL_64;
    }

    v42 = v271;
  }

LABEL_87:
  if (v241)
  {
    v139 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v139 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v48 = 0;
  v7 = v42 & 0xC000000000000001;
  while (1)
  {
    if (v139 == v48)
    {
      goto LABEL_100;
    }

    if (v7)
    {
      break;
    }

    if (v48 >= *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_176:
      v49 = _CocoaArrayWrapper.endIndex.getter();
      goto LABEL_4;
    }

    if (__OFADD__(v48, 1))
    {
      goto LABEL_99;
    }

LABEL_95:
    v140 = EmbeddedGameProcess.requiresiPhonePerformanceGamingTier.getter();

    ++v48;
    if (v140)
    {
      v141 = v265;
      goto LABEL_101;
    }
  }

  specialized _ArrayBuffer._getElementSlowPath(_:)();
  if (!__OFADD__(v48, 1))
  {
    goto LABEL_95;
  }

LABEL_99:
  __break(1u);
LABEL_100:
  v141 = 0;
LABEL_101:
  v142 = v267;
  v143 = v263;
  v144 = v264;
  v266(v263, v267 + v45, v264);
  v145 = GameModeStatus.Config.perfomanceGamingModeEnabled.getter();
  v268(v143, v144);
  v146 = v141 ^ v145;
  swift_beginAccess();
  GameModeStatus.Config.perfomanceGamingModeEnabled.setter();
  swift_endAccess();
  if ((v141 ^ v145) & 1) != 0 || (v259)
  {
    v147 = v44;
    v44 = v248;
    static Logger.daemon.getter();
    v148 = Logger.logObject.getter();
    v149 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v148, v149))
    {
      v150 = swift_slowAlloc();
      v151 = swift_slowAlloc();
      v274 = v151;
      *v150 = 136446210;
      if (v141)
      {
        v152 = 0x64656C62616E65;
      }

      else
      {
        v152 = 0x64656C6261736964;
      }

      if (v141)
      {
        v153 = 0xE700000000000000;
      }

      else
      {
        v153 = 0xE800000000000000;
      }

      v154 = sub_100034C38(v152, v153, &v274);

      *(v150 + 4) = v154;
      v144 = v264;
      v142 = v267;
      _os_log_impl(&_mh_execute_header, v148, v149, "Performance gaming mode %{public}s.", v150, 0xCu);
      sub_100003964(v151);
    }

    v155 = *(v260 + 8);
    v155(v44, v261);
    v156 = *(v142 + OBJC_IVAR____TtC11gamepolicyd26EmbeddedGameProcessMonitor_notificationTokens);
    swift_beginAccess();
    v157 = *(v156 + 64);
    LODWORD(v44) = v147;
    if (v157)
    {
      notify_set_state(v157, v141 & 1);
      v274 = 0xD000000000000030;
      v275 = 0x80000001000413D0;
      v158 = v253;
      static String.Encoding.utf8.getter();
      sub_100009790();
      v159 = StringProtocol.cString(using:)();
      (*(v254 + 8))(v158, v255);
      if (v159)
      {
        v160 = (v159 + 32);
      }

      else
      {
        v160 = 0;
      }

      notify_post(v160);

      v161 = (v256 + 8);
      v45 = v269;
      if (v146)
      {
        static os_signpost_type_t.begin.getter();
      }

      else
      {
        static os_signpost_type_t.end.getter();
      }

      v169 = static Logger.stateTracking.getter();
      v170 = v251;
      static OSSignpostID.exclusive.getter();
      os_signpost(_:dso:log:name:signpostID:)();

      (*v161)(v170, v252);
    }

    else
    {
      v162 = v144;
      v163 = v142;
      v164 = v244;
      static Logger.daemon.getter();
      v165 = Logger.logObject.getter();
      v166 = static os_log_type_t.error.getter();
      v167 = os_log_type_enabled(v165, v166);
      v45 = v269;
      if (v167)
      {
        v168 = swift_slowAlloc();
        *v168 = 0;
        _os_log_impl(&_mh_execute_header, v165, v166, "Unable to post performance gaming mode darwin notification - token is invalid!", v168, 2u);
      }

      v155(v164, v261);
      v142 = v163;
      v144 = v162;
    }
  }

  v171 = v238;
  v172 = v266;
  if ((v239 ^ v238) & 1) != 0 || (v259)
  {
    LODWORD(v271) = v44;
    v173 = v249;
    static Logger.daemon.getter();
    v174 = Logger.logObject.getter();
    v175 = static os_log_type_t.default.getter();
    v176 = v172;
    if (os_log_type_enabled(v174, v175))
    {
      v177 = swift_slowAlloc();
      v178 = swift_slowAlloc();
      v274 = v178;
      *v177 = 136446210;
      if (v265)
      {
        v179 = 0x64656C62616E65;
      }

      else
      {
        v179 = 0x64656C6261736964;
      }

      if (v265)
      {
        v180 = 0xE700000000000000;
      }

      else
      {
        v180 = 0xE800000000000000;
      }

      v181 = sub_100034C38(v179, v180, &v274);

      *(v177 + 4) = v181;
      v144 = v264;
      v142 = v267;
      _os_log_impl(&_mh_execute_header, v174, v175, "Jettison Camera S2R %{public}s.", v177, 0xCu);
      sub_100003964(v178);
    }

    v182 = *(v260 + 8);
    v182(v173, v261);
    v183 = *(v142 + OBJC_IVAR____TtC11gamepolicyd26EmbeddedGameProcessMonitor_notificationTokens);
    swift_beginAccess();
    v184 = *(v183 + 28);
    if (v184)
    {
      notify_set_state(v184, v171 & 1);
      v274 = 0xD000000000000039;
      v275 = 0x80000001000411D0;
      v185 = v253;
      static String.Encoding.utf8.getter();
      sub_100009790();
      v186 = StringProtocol.cString(using:)();
      (*(v254 + 8))(v185, v255);
      if (v186)
      {
        v187 = (v186 + 32);
      }

      else
      {
        v187 = 0;
      }

      notify_post(v187);

      v188 = (v256 + 8);
      if (v171)
      {
        static os_signpost_type_t.begin.getter();
      }

      else
      {
        static os_signpost_type_t.end.getter();
      }

      v195 = static Logger.stateTracking.getter();
      v196 = v251;
      static OSSignpostID.exclusive.getter();
      os_signpost(_:dso:log:name:signpostID:)();

      (*v188)(v196, v252);
    }

    else
    {
      v189 = v144;
      v190 = v142;
      v191 = v245;
      static Logger.daemon.getter();
      v192 = Logger.logObject.getter();
      v193 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v192, v193))
      {
        v194 = swift_slowAlloc();
        *v194 = 0;
        _os_log_impl(&_mh_execute_header, v192, v193, "Unable to post game mode camera jettison S2R darwin notification - token is invalid!", v194, 2u);
      }

      v182(v191, v261);
      v142 = v190;
      v144 = v189;
    }

    v172 = v176;
    if (v271)
    {
      goto LABEL_146;
    }

    while (1)
    {
LABEL_161:
      v208 = v142 + v45;
      v45 = v263;
      v172(v263, v208, v144);
      v209 = objc_allocWithZone(type metadata accessor for GameModeStatus());
      v210 = GameModeStatus.init(config:)();
      v211 = off_1000541F8;
      v212 = *(off_1000541F8 + 2);

      [v212 lock];
      v271 = v210;
      v261 = v211;
      sub_1000189C8(v210, v211, &v274);
      [v212 unlock];
      v213 = v274;
      if (v274 >> 62)
      {
        v214 = _CocoaArrayWrapper.endIndex.getter();
        if (!v214)
        {
LABEL_180:

          goto LABEL_181;
        }
      }

      else
      {
        v214 = *((v274 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v214)
        {
          goto LABEL_180;
        }
      }

      if (v214 >= 1)
      {
        break;
      }

LABEL_204:
      __break(1u);
LABEL_205:
      specialized _ArrayBuffer._getElementSlowPath(_:)();
      v197 = v237;
      v198 = v236;
LABEL_153:
      v199 = EmbeddedGameProcess.bundleIdentifier.getter();
      v201 = v200;

      Date.init()();
      type metadata accessor for GlobalPreferences();
      dispatch thunk of static GlobalPreferences.shared.getter();
      if (v265)
      {
        dispatch thunk of GlobalPreferences.gameModeOnBannerDefaultTime.getter();
      }

      else
      {
        dispatch thunk of GlobalPreferences.gameModeOffBannerDefaultTime.getter();
      }

      v203 = v202;

      if (v203 <= 0.0 || (dispatch thunk of static GlobalPreferences.shared.getter(), v204 = v243, dispatch thunk of GlobalPreferences.gameModeLastBannerDate(bundleIdentifier:)(), , v205 = v230, static Date.+ infix(_:_:)(), v206 = *(v198 + 8), v206(v204, v197), LOBYTE(v204) = static Date.< infix(_:_:)(), v206(v205, v197), (v204 & 1) != 0))
      {
        dispatch thunk of static GlobalPreferences.shared.getter();
        v207 = v235;
        dispatch thunk of GlobalPreferences.setGameModeLastBannerDate(_:bundleIdentifier:)();

        v142 = v267;
        sub_10003A31C(v199, v201, v265 & 1);

        (*(v198 + 8))(v207, v197);
      }

      else
      {
        v206(v235, v197);

        v142 = v267;
      }

      v144 = v264;
      v172 = v266;
    }

    for (i = 0; i != v214; ++i)
    {
      if ((v213 & 0xC000000000000001) != 0)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
      }

      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v217 = [*(Strong + 16) remoteObjectProxy];
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
        sub_100003870(&qword_100054458, &qword_10003E7B0);
        if (swift_dynamicCast())
        {
          [v273 updateStatus:v271 :0 :0 :0];
          swift_unknownObjectRelease();
        }

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }

    v142 = v267;
    v144 = v264;
    v45 = v263;
LABEL_181:

    v218 = v266;
    v266(v45, v142 + v269, v144);
    GameModeStatus.Config.enablementStrategy.getter();
    v268(v45, v144);
    v219 = ModeEnablementStrategy.rawValue.getter();
    if (v219 != ModeEnablementStrategy.rawValue.getter())
    {
      v218(v45, v142 + v269, v144);
      GameModeStatus.Config.enablementStrategy.getter();
      v268(v45, v144);
      v220 = ModeEnablementStrategy.rawValue.getter();
      if (v220 != ModeEnablementStrategy.rawValue.getter())
      {
        if (v234)
        {
          if (!_CocoaArrayWrapper.endIndex.getter())
          {
LABEL_188:
            v276 = &type metadata for Feature;
            v221 = sub_100039FD4();
            v277 = v221;
            LOBYTE(v274) = 0;
            v222 = isFeatureEnabled(_:)();
            sub_100003964(&v274);
            if (v222)
            {

              sub_10001D870(v265 & 1, 0);
            }

            v223 = v269;
            v218(v45, v142 + v269, v144);
            GameModeStatus.Config.enablementStrategy.getter();
            v224 = v268;
            v268(v45, v144);
            v225 = ModeEnablementStrategy.rawValue.getter();
            v226 = 1;
            if (v225 != ModeEnablementStrategy.rawValue.getter())
            {
              v218(v45, v267 + v223, v144);
              GameModeStatus.Config.enablementStrategy.getter();
              v224(v45, v144);
              v227 = ModeEnablementStrategy.rawValue.getter();
              if (v227 == ModeEnablementStrategy.rawValue.getter())
              {
                v226 = 1;
              }

              else
              {
                if (v231)
                {
                  v228 = _CocoaArrayWrapper.endIndex.getter();
                }

                else
                {
                  v228 = *((v270 & 0xFFFFFFFFFFFFFF8) + 0x10);
                }

                v226 = v228 != 0;
              }
            }

            v276 = &type metadata for Feature;
            v277 = v221;
            LOBYTE(v274) = 0;
            v229 = isFeatureEnabled(_:)();
            sub_100003964(&v274);
            if (v229)
            {

              sub_10001E284(v226, 0);
            }

            return;
          }
        }

        else if (!*((v272 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_188;
        }
      }
    }

    v265 = 1;
    goto LABEL_188;
  }

  if ((v44 & 1) == 0)
  {
    goto LABEL_161;
  }

LABEL_146:
  if (v234)
  {
    if (!_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_161;
    }
  }

  else if (!*((v272 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_161;
  }

  if ((v272 & 0xC000000000000001) != 0)
  {
    goto LABEL_205;
  }

  v197 = v237;
  v198 = v236;
  if (*((v272 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {

    goto LABEL_153;
  }

  __break(1u);

  [v172 unlock];
  __break(1u);
}

uint64_t sub_10002A5E4(uint64_t a1, unint64_t a2, int a3)
{
  v4 = v3;
  v141 = a2;
  v145 = a1;
  v6 = type metadata accessor for OSSignpostID();
  v133 = *(v6 - 8);
  v134 = v6;
  __chkstk_darwin(v6);
  v132 = v122 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100003870(&qword_1000552E0, &qword_10003E780);
  v9 = __chkstk_darwin(v8 - 8);
  v128 = v122 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v129 = v122 - v11;
  v12 = type metadata accessor for ModelManagerGameAssertionPolicy();
  v13 = *(v12 - 8);
  v143 = v12;
  v144 = v13;
  v14 = __chkstk_darwin(v12);
  v131 = v122 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = v122 - v16;
  v18 = sub_100003870(&qword_1000552E8, qword_10003F128);
  __chkstk_darwin(v18);
  v20 = v122 - v19;
  v21 = sub_100003870(&qword_100054428, &qword_10003E778);
  v22 = __chkstk_darwin(v21 - 8);
  v130 = v122 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v139 = v122 - v25;
  v26 = __chkstk_darwin(v24);
  v28 = v122 - v27;
  __chkstk_darwin(v26);
  v30 = v122 - v29;
  v31 = type metadata accessor for ModelManagerGameAssertionStatus.Config();
  v32 = *(v31 - 8);
  v33 = __chkstk_darwin(v31);
  v126 = v122 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __chkstk_darwin(v33);
  v142 = v122 - v36;
  result = __chkstk_darwin(v35);
  v39 = v122 - v38;
  if (*(v4 + OBJC_IVAR____TtC11gamepolicyd26EmbeddedGameProcessMonitor_deviceSupportsModelManagerGameAssertion) != 1)
  {
    return result;
  }

  LODWORD(v124) = a3;
  v40 = OBJC_IVAR____TtC11gamepolicyd26EmbeddedGameProcessMonitor_modelManagerGameAssertionStatusConfig;
  swift_beginAccess();
  v41 = *(v32 + 16);
  v140 = v40;
  v138 = v4;
  v135 = v41;
  v136 = v32 + 16;
  v41(v39, v4 + v40, v31);
  ModelManagerGameAssertionStatus.Config.policy.getter();
  v42 = *(v32 + 8);
  v137 = v31;
  v127 = v32 + 8;
  v42(v39, v31);
  v43 = v42;
  v44 = *(v18 + 48);
  sub_100039F6C(v30, v20, &qword_100054428, &qword_10003E778);
  sub_100039F6C(v145, &v20[v44], &qword_100054428, &qword_10003E778);
  v45 = v143;
  v46 = v144 + 48;
  v47 = *(v144 + 48);
  v48 = v47(v20, 1, v143);
  v123 = v47;
  if (v48 != 1)
  {
    sub_100039F6C(v20, v28, &qword_100054428, &qword_10003E778);
    if (v47(&v20[v44], 1, v45) != 1)
    {
      v59 = v144;
      (*(v144 + 32))(v17, &v20[v44], v45);
      sub_100038D38(&qword_1000552F0, &type metadata accessor for ModelManagerGameAssertionPolicy, &protocol conformance descriptor for ModelManagerGameAssertionPolicy);
      v60 = v46;
      v61 = dispatch thunk of static Equatable.== infix(_:_:)();
      v62 = *(v59 + 8);
      v63 = v17;
      v49 = v61;
      v62(v63, v45);
      sub_1000096E8(v30, &qword_100054428, &qword_10003E778);
      v62(v28, v45);
      v46 = v60;
      goto LABEL_25;
    }

    sub_1000096E8(v30, &qword_100054428, &qword_10003E778);
    (*(v144 + 8))(v28, v45);
LABEL_7:
    sub_1000096E8(v20, &qword_1000552E8, qword_10003F128);
    v125 = 0;
LABEL_8:
    v50 = v137;
    v51 = v138;
    v52 = v145;
    goto LABEL_9;
  }

  sub_1000096E8(v30, &qword_100054428, &qword_10003E778);
  v49 = 1;
  if (v47(&v20[v44], 1, v45) != 1)
  {
    goto LABEL_7;
  }

LABEL_25:
  result = sub_1000096E8(v20, &qword_100054428, &qword_10003E778);
  v125 = v49;
  if ((v49 & 1) == 0)
  {
    goto LABEL_8;
  }

  v50 = v137;
  v51 = v138;
  v52 = v145;
  if ((v124 & 1) == 0)
  {
    return result;
  }

LABEL_9:
  v122[1] = v46;
  v53 = v142;
  v135(v142, v51 + v140, v50);
  v124 = ModelManagerGameAssertionStatus.Config.impactedBundleIdentifiers.getter();
  v122[0] = v43;
  v43(v53, v50);
  sub_100039F6C(v52, v139, &qword_100054428, &qword_10003E778);
  swift_beginAccess();
  ModelManagerGameAssertionStatus.Config.policy.setter();
  swift_endAccess();
  v146 = _swiftEmptyArrayStorage;
  v54 = v141;
  if (v141 >> 62)
  {
LABEL_29:
    v55 = _CocoaArrayWrapper.endIndex.getter();
    if (v55)
    {
      goto LABEL_11;
    }

LABEL_30:
    v58 = _swiftEmptyArrayStorage;
    if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0)
    {
      goto LABEL_90;
    }

    goto LABEL_31;
  }

  v55 = *((v141 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v55)
  {
    goto LABEL_30;
  }

LABEL_11:
  v56 = 0;
  while ((v54 & 0xC000000000000001) != 0)
  {
    specialized _ArrayBuffer._getElementSlowPath(_:)();
    v57 = v56 + 1;
    if (__OFADD__(v56, 1))
    {
      goto LABEL_21;
    }

LABEL_17:
    if (EmbeddedGameProcess.requiresModelManagerAssertion.getter())
    {
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    else
    {
    }

    ++v56;
    if (v57 == v55)
    {
      goto LABEL_22;
    }
  }

  if (v56 >= *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_29;
  }

  v57 = v56 + 1;
  if (!__OFADD__(v56, 1))
  {
    goto LABEL_17;
  }

LABEL_21:
  __break(1u);
LABEL_22:
  v58 = v146;
  if ((v146 & 0x8000000000000000) != 0)
  {
    goto LABEL_90;
  }

LABEL_31:
  if ((v58 & 0x4000000000000000) != 0)
  {
    goto LABEL_90;
  }

  v64 = *(v58 + 16);
  while (2)
  {
    v65 = _swiftEmptyArrayStorage;
    if (v64)
    {
      v66 = v58 & 0xC000000000000001;
      v139 = _swiftEmptyArrayStorage;
      v67 = 0;
      if ((v58 & 0xC000000000000001) == 0)
      {
        goto LABEL_38;
      }

LABEL_48:
      specialized _ArrayBuffer._getElementSlowPath(_:)();
      for (i = v67 + 1; !__OFADD__(v67, 1); i = v67 + 1)
      {
        v69 = EmbeddedGameProcess.processHandle.getter();
        v70 = [v69 bundle];

        if (v70 && (v71 = [v70 identifier], v70, v71))
        {
          v72 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v74 = v73;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v139 = sub_100023ABC(0, *(v139 + 2) + 1, 1, v139);
          }

          v76 = *(v139 + 2);
          v75 = *(v139 + 3);
          if (v76 >= v75 >> 1)
          {
            v139 = sub_100023ABC((v75 > 1), v76 + 1, 1, v139);
          }

          v77 = v139;
          *(v139 + 2) = v76 + 1;
          v78 = &v77[16 * v76];
          *(v78 + 4) = v72;
          *(v78 + 5) = v74;
          if (i == v64)
          {
            goto LABEL_52;
          }

          v67 = i;
          if (v66)
          {
            goto LABEL_48;
          }
        }

        else
        {

          ++v67;
          if (i == v64)
          {
            goto LABEL_52;
          }

          if (v66)
          {
            goto LABEL_48;
          }
        }

LABEL_38:
        if (v67 >= *(v58 + 16))
        {
          goto LABEL_86;
        }
      }

      __break(1u);
LABEL_86:
      __break(1u);
LABEL_87:
      __break(1u);
LABEL_88:
      __break(1u);
LABEL_89:
      __break(1u);
LABEL_90:
      v64 = _CocoaArrayWrapper.endIndex.getter();
      continue;
    }

    break;
  }

  v139 = _swiftEmptyArrayStorage;
LABEL_52:

  v79 = v138;
  swift_beginAccess();
  ModelManagerGameAssertionStatus.Config.aaaBundleIdentifiers.setter();
  swift_endAccess();
  v146 = _swiftEmptyArrayStorage;
  if (!v55)
  {
    goto LABEL_65;
  }

  v58 = 0;
  v80 = v141;
  while (2)
  {
    if ((v80 & 0xC000000000000001) != 0)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
      v81 = (v58 + 1);
      if (__OFADD__(v58, 1))
      {
        break;
      }

      goto LABEL_59;
    }

    if (v58 >= *((v80 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_87;
    }

    v81 = (v58 + 1);
    if (!__OFADD__(v58, 1))
    {
LABEL_59:
      if (dispatch thunk of EmbeddedGameProcess.triggeringModelManagerAssertion.getter())
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      else
      {
      }

      ++v58;
      if (v81 == v55)
      {
        goto LABEL_64;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_64:
  v65 = v146;
LABEL_65:
  if ((v65 & 0x8000000000000000) != 0 || (v65 & 0x4000000000000000) != 0)
  {
    v82 = _CocoaArrayWrapper.endIndex.getter();
    if (!v82)
    {
      goto LABEL_92;
    }
  }

  else
  {
    v82 = *(v65 + 16);
    if (!v82)
    {
      goto LABEL_92;
    }
  }

  v55 = v65 & 0xC000000000000001;
  v58 = _swiftEmptyArrayStorage;
  v83 = 0;
  if ((v65 & 0xC000000000000001) != 0)
  {
LABEL_82:
    specialized _ArrayBuffer._getElementSlowPath(_:)();
    v84 = v83 + 1;
    if (!__OFADD__(v83, 1))
    {
      goto LABEL_74;
    }

    goto LABEL_88;
  }

  while (1)
  {
    while (1)
    {
      if (v83 >= *(v65 + 16))
      {
        goto LABEL_89;
      }

      v84 = v83 + 1;
      if (__OFADD__(v83, 1))
      {
        goto LABEL_88;
      }

LABEL_74:
      v85 = EmbeddedGameProcess.processHandle.getter();
      v86 = [v85 bundle];

      if (v86)
      {
        v87 = [v86 identifier];

        if (v87)
        {
          break;
        }
      }

      ++v83;
      if (v84 == v82)
      {
        goto LABEL_92;
      }

      if (v55)
      {
        goto LABEL_82;
      }
    }

    v88 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v90 = v89;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v58 = sub_100023ABC(0, *(v58 + 16) + 1, 1, v58);
    }

    v92 = *(v58 + 16);
    v91 = *(v58 + 24);
    if (v92 >= v91 >> 1)
    {
      v58 = sub_100023ABC((v91 > 1), v92 + 1, 1, v58);
    }

    *(v58 + 16) = v92 + 1;
    v93 = (v58 + 16 * v92);
    *(v93 + 4) = v88;
    *(v93 + 5) = v90;
    if (v84 == v82)
    {
      break;
    }

    v83 = v84;
    if (v55)
    {
      goto LABEL_82;
    }
  }

LABEL_92:

  v94 = v140;
  swift_beginAccess();
  ModelManagerGameAssertionStatus.Config.impactedBundleIdentifiers.setter();
  swift_endAccess();
  if (qword_100053488 != -1)
  {
    swift_once();
  }

  sub_10001C49C();

  swift_beginAccess();
  ModelManagerGameAssertionStatus.Config.policyStrategy.setter();
  swift_endAccess();
  v95 = v137;
  if (v125)
  {
  }

  else
  {
    v96 = v130;
    sub_100039F6C(v145, v130, &qword_100054428, &qword_10003E778);
    v97 = v143;
    if (v123(v96, 1, v143) == 1)
    {
      sub_1000096E8(v96, &qword_100054428, &qword_10003E778);
      v98 = v126;
      v135(v126, v79 + v94, v95);
      v99 = v128;
      ModelManagerGameAssertionStatus.Config.enablementDate.getter();
      (v122[0])(v98, v95);
      v100 = type metadata accessor for Date();
      v101 = *(v100 - 8);
      v102 = (*(v101 + 48))(v99, 1, v100);
      sub_1000096E8(v99, &qword_1000552E0, &qword_10003E780);
      if (v102 == 1)
      {
      }

      else
      {
        v115 = v129;
        Date.init()();
        (*(v101 + 56))(v115, 0, 1, v100);
        swift_beginAccess();
        ModelManagerGameAssertionStatus.Config.disablementDate.setter();
        ModelManagerGameAssertionStatus.Config.previouslyImpactedBundleIdentifiers.setter();
        swift_endAccess();
      }

      v117 = v133;
      v116 = v134;
      v118 = v132;
      static os_signpost_type_t.end.getter();
      v119 = static Logger.stateTracking.getter();
      static OSSignpostID.exclusive.getter();
      os_signpost(_:dso:log:name:signpostID:)();

      (*(v117 + 8))(v118, v116);
    }

    else
    {

      v103 = v144;
      (*(v144 + 32))(v131, v96, v97);
      v104 = v129;
      Date.init()();
      v105 = type metadata accessor for Date();
      v106 = *(*(v105 - 8) + 56);
      v106(v104, 0, 1, v105);
      swift_beginAccess();
      ModelManagerGameAssertionStatus.Config.enablementDate.setter();
      v106(v104, 1, 1, v105);
      ModelManagerGameAssertionStatus.Config.disablementDate.setter();
      swift_endAccess();
      v107 = static os_signpost_type_t.begin.getter();
      v108 = static Logger.stateTracking.getter();
      sub_100003870(&qword_1000552C8, &unk_10003F118);
      v109 = swift_allocObject();
      *(v109 + 16) = xmmword_10003EB50;
      v110 = v131;
      v111 = ModelManagerGameAssertionPolicy.rawValue.getter();
      v113 = v112;
      *(v109 + 56) = &type metadata for String;
      *(v109 + 64) = sub_100039F18();
      *(v109 + 32) = v111;
      *(v109 + 40) = v113;
      v114 = v132;
      static OSSignpostID.exclusive.getter();
      os_signpost(_:dso:log:name:signpostID:_:_:)(v107, &_mh_execute_header, v108, "ModelManagerGameAssertionHeld", 29, 2, v114, "Policy = %{public, name=policy}s", 32, 2, v109);

      (*(v133 + 8))(v114, v134);
      (*(v103 + 8))(v110, v143);
    }
  }

  v135(v142, v79 + v94, v95);
  v120 = objc_allocWithZone(type metadata accessor for ModelManagerGameAssertionStatus());
  v121 = ModelManagerGameAssertionStatus.init(config:)();

  sub_100018B80(v121);
}

void sub_10002B738(uint64_t a1, unint64_t a2, char a3)
{
  v4 = v3;
  v143 = type metadata accessor for String.Encoding();
  v142 = *(v143 - 8);
  __chkstk_darwin(v143);
  v141 = &v121 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  p_name = type metadata accessor for Logger();
  v10 = *(p_name - 8);
  v11 = __chkstk_darwin(p_name);
  v147 = &v121 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v139 = &v121 - v14;
  v15 = __chkstk_darwin(v13);
  v144 = &v121 - v16;
  __chkstk_darwin(v15);
  v146 = &v121 - v17;
  v18 = sub_100003870(&qword_1000552E0, &qword_10003E780);
  v19 = __chkstk_darwin(v18 - 8);
  v138 = &v121 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v140 = &v121 - v21;
  v22 = type metadata accessor for SustainedExecutionStatus.Config();
  v23 = *(v22 - 8);
  v24 = __chkstk_darwin(v22);
  v137 = &v121 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v27 = &v121 - v26;
  if (*(v3 + OBJC_IVAR____TtC11gamepolicyd26EmbeddedGameProcessMonitor_deviceSupportsSustainedExecutionMode) != 1)
  {
    return;
  }

  v28 = SEMPolicy.rawValue.getter();
  if (v28 == SEMPolicy.rawValue.getter() && !*(v4 + OBJC_IVAR____TtC11gamepolicyd26EmbeddedGameProcessMonitor_deviceSupportsSustainedExecutionModeAutomaticEnrollment))
  {
    a1 = 0;
  }

  v29 = OBJC_IVAR____TtC11gamepolicyd26EmbeddedGameProcessMonitor_sustainedExecutionStatusConfig;
  swift_beginAccess();
  v30 = *(v23 + 16);
  v145 = v29;
  v136 = v23 + 16;
  v135 = v30;
  v30(v27, v4 + v29, v22);
  SustainedExecutionStatus.Config.activePolicy.getter();
  v31 = *(v23 + 8);
  v133 = v23 + 8;
  v132 = v31;
  v31(v27, v22);
  v32 = SEMPolicy.rawValue.getter();
  v33 = SEMPolicy.rawValue.getter();
  if (v32 == v33 && (a3 & 1) == 0)
  {
    return;
  }

  v127 = v33;
  v128 = v32;
  v135(v27, v4 + v145, v22);
  v126 = SustainedExecutionStatus.Config.impactedBundleIdentifiers.getter();
  v132(v27, v22);
  swift_beginAccess();
  v134 = a1;
  SustainedExecutionStatus.Config.activePolicy.setter();
  swift_endAccess();
  v149[0] = _swiftEmptyArrayStorage;
  if (a2 >> 62)
  {
    goto LABEL_103;
  }

  for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v130 = v22;
    v125 = p_name;
    v129 = v10;
    v124 = v27;
    if (i)
    {
      v10 = 0;
      p_name = a2 & 0xC000000000000001;
      v27 = (a2 & 0xFFFFFFFFFFFFFF8);
      while (1)
      {
        if (p_name)
        {
          specialized _ArrayBuffer._getElementSlowPath(_:)();
          v35 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
            goto LABEL_20;
          }
        }

        else
        {
          if (v10 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_101;
          }

          v35 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
LABEL_20:
            __break(1u);
LABEL_21:
            a2 = v149[0];
            if ((v149[0] & 0x8000000000000000) == 0)
            {
              goto LABEL_24;
            }

            goto LABEL_104;
          }
        }

        if (dispatch thunk of EmbeddedGameProcess.triggeringGameMode.getter())
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          v22 = *(v149[0] + 2);
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        else
        {
        }

        ++v10;
        if (v35 == i)
        {
          goto LABEL_21;
        }
      }
    }

    a2 = _swiftEmptyArrayStorage;
    if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0)
    {
      goto LABEL_104;
    }

LABEL_24:
    if ((a2 & 0x4000000000000000) != 0)
    {
LABEL_104:
      v36 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v36 = *(a2 + 16);
    }

    v123 = v4;
    if (!v36)
    {
      break;
    }

    v4 = a2 & 0xC000000000000001;
    v131 = _swiftEmptyArrayStorage;
    p_name = &stru_100051FF8.name;
    v10 = 0;
    if ((a2 & 0xC000000000000001) != 0)
    {
LABEL_41:
      specialized _ArrayBuffer._getElementSlowPath(_:)();
      v27 = v10 + 1;
      if (!__OFADD__(v10, 1))
      {
        goto LABEL_33;
      }

LABEL_101:
      __break(1u);
      goto LABEL_102;
    }

    while (v10 < *(a2 + 16))
    {

      v27 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        goto LABEL_101;
      }

LABEL_33:
      v37 = EmbeddedGameProcess.processHandle.getter();
      v22 = [v37 bundle];

      if (v22 && (v38 = [v22 identifier], v22, v38))
      {
        v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v122 = v40;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v131 = sub_100023ABC(0, *(v131 + 2) + 1, 1, v131);
        }

        v22 = *(v131 + 2);
        v41 = *(v131 + 3);
        if (v22 >= v41 >> 1)
        {
          v131 = sub_100023ABC((v41 > 1), v22 + 1, 1, v131);
        }

        v42 = v131;
        *(v131 + 2) = v22 + 1;
        v43 = &v42[16 * v22];
        v44 = v122;
        *(v43 + 4) = v39;
        *(v43 + 5) = v44;
        if (v27 == v36)
        {
          goto LABEL_45;
        }

        v10 = v27;
        if (v4)
        {
          goto LABEL_41;
        }
      }

      else
      {

        ++v10;
        if (v27 == v36)
        {
          goto LABEL_45;
        }

        if (v4)
        {
          goto LABEL_41;
        }
      }
    }

LABEL_102:
    __break(1u);
LABEL_103:
    ;
  }

  v131 = _swiftEmptyArrayStorage;
LABEL_45:

  v45 = v123;
  v46 = v145;
  swift_beginAccess();
  SustainedExecutionStatus.Config.impactedBundleIdentifiers.setter();
  swift_endAccess();
  if (qword_100053488 != -1)
  {
    swift_once();
  }

  sub_10001C494();

  swift_beginAccess();
  SustainedExecutionStatus.Config.enablementStrategy.setter();
  swift_endAccess();
  v47 = v130;
  if (v128 == v127)
  {
    goto LABEL_53;
  }

  v48 = SEMPolicy.rawValue.getter();
  if (v48 == SEMPolicy.rawValue.getter() || (v49 = SEMPolicy.rawValue.getter(), v49 == SEMPolicy.rawValue.getter()))
  {

    v50 = v140;
    Date.init()();
    v51 = type metadata accessor for Date();
    v52 = *(*(v51 - 8) + 56);
    v52(v50, 0, 1, v51);
    swift_beginAccess();
    SustainedExecutionStatus.Config.enablementDate.setter();
    v52(v50, 1, 1, v51);
    SustainedExecutionStatus.Config.disablementDate.setter();
    goto LABEL_51;
  }

  v53 = v137;
  v135(v137, v45 + v46, v47);
  v54 = v138;
  SustainedExecutionStatus.Config.enablementDate.getter();
  v132(v53, v47);
  v55 = type metadata accessor for Date();
  v56 = *(v55 - 8);
  v57 = (*(v56 + 48))(v54, 1, v55);
  sub_1000096E8(v54, &qword_1000552E0, &qword_10003E780);
  if (v57 == 1)
  {
LABEL_53:
  }

  else
  {
    v120 = v140;
    Date.init()();
    (*(v56 + 56))(v120, 0, 1, v55);
    swift_beginAccess();
    SustainedExecutionStatus.Config.disablementDate.setter();
    SustainedExecutionStatus.Config.previouslyImpactedBundleIdentifiers.setter();
LABEL_51:
    swift_endAccess();
  }

  v58 = objc_opt_self();
  v149[0] = 0;
  v59 = [v58 createClient:v149];
  v60 = v146;
  if (!v59)
  {
    v76 = v149[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
    goto LABEL_62;
  }

  v61 = v59;
  v62 = v149[0];
  v63 = SEMPolicy.rawValue.getter();
  v64 = 1;
  if (v63 != SEMPolicy.rawValue.getter())
  {
    v65 = SEMPolicy.rawValue.getter();
    v64 = v65 == SEMPolicy.rawValue.getter();
  }

  v66 = SEMPolicy.rawValue.getter();
  v67 = v66 == SEMPolicy.rawValue.getter();
  v149[0] = 0;
  v68 = [v61 setSustainableMode:v64 options:v67 error:v149];
  v69 = v149[0];
  if (!v68)
  {
    v77 = v149[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
    swift_unknownObjectRelease();
LABEL_62:
    v75 = 0;
    v73 = v147;
LABEL_63:
    static Logger.daemon.getter();
    swift_errorRetain();
    v78 = Logger.logObject.getter();
    v79 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v78, v79))
    {
      v80 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      *v80 = 138543362;
      swift_errorRetain();
      v82 = _swift_stdlib_bridgeErrorToNSError();
      *(v80 + 4) = v82;
      *v81 = v82;
      _os_log_impl(&_mh_execute_header, v78, v79, "(CLPC) Unable to set sustained execution mode: %{public}@", v80, 0xCu);
      sub_1000096E8(v81, &unk_100053C00, &qword_10003E810);
    }

    else
    {
    }

    v83 = v125;
    (*(v129 + 1))(v73, v125);
    goto LABEL_67;
  }

  v149[0] = 0;
  v70 = v69;
  v71 = [v61 isInSustainableMode:v149];
  v72 = v149[0];
  v73 = v147;
  if (v149[0])
  {
    swift_willThrow();
    v74 = v72;
    swift_unknownObjectRelease();
    v75 = 0;
    goto LABEL_63;
  }

  if (v128 == v127)
  {
    swift_unknownObjectRelease();
    v75 = 0;
    v83 = v125;
  }

  else
  {
    v112 = v71;
    static Logger.daemon.getter();
    v113 = Logger.logObject.getter();
    v114 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v113, v114))
    {
      v115 = swift_slowAlloc();
      v116 = swift_slowAlloc();
      v149[0] = v116;
      *v115 = 134349314;
      *(v115 + 4) = v112;
      *(v115 + 12) = 2082;
      v117 = CLPCSustainableModeOptions.description.getter(v67);
      v119 = sub_100034C38(v117, v118, v149);

      *(v115 + 14) = v119;
      _os_log_impl(&_mh_execute_header, v113, v114, "(CLPC) Set sustained execution mode to %{public}lu with options %{public}s", v115, 0x16u);
      sub_100003964(v116);

      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }

    v83 = v125;
    (*(v129 + 1))(v60, v125);
    v75 = 0;
  }

LABEL_67:
  v84 = OBJC_IVAR____TtC11gamepolicyd26EmbeddedGameProcessMonitor_notificationTokens;
  v85 = *(v45 + OBJC_IVAR____TtC11gamepolicyd26EmbeddedGameProcessMonitor_notificationTokens);
  swift_beginAccess();
  if (*(v85 + 60))
  {
    v86 = SEMPolicy.rawValue.getter();
    if (v86 == SEMPolicy.rawValue.getter())
    {
      v87 = 1;
    }

    else
    {
      v92 = SEMPolicy.rawValue.getter();
      v87 = 2 * (v92 == SEMPolicy.rawValue.getter());
    }

    v93 = *(v45 + v84);
    swift_beginAccess();
    notify_set_state(*(v93 + 60), v87);
    v149[0] = 0xD000000000000031;
    v149[1] = 0x8000000100041390;
    v94 = v141;
    static String.Encoding.utf8.getter();
    sub_100009790();
    v95 = StringProtocol.cString(using:)();
    (*(v142 + 8))(v94, v143);
    if (v95)
    {
      v96 = (v95 + 32);
    }

    else
    {
      v96 = 0;
    }

    notify_post(v96);

    v88 = v144;
    static Logger.daemon.getter();
    v89 = Logger.logObject.getter();
    v97 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v89, v97))
    {
      v98 = swift_slowAlloc();
      v99 = swift_slowAlloc();
      v149[0] = v99;
      *v98 = 136446210;
      v100 = SEMPolicy.description.getter();
      v147 = 0;
      v102 = sub_100034C38(v100, v101, v149);

      *(v98 + 4) = v102;
      _os_log_impl(&_mh_execute_header, v89, v97, "Sustained execution mode set to %{public}s.", v98, 0xCu);
      sub_100003964(v99);

      v75 = v147;
      (*(v129 + 1))(v88, v83);
      goto LABEL_79;
    }
  }

  else
  {
    v88 = v139;
    static Logger.daemon.getter();
    v89 = Logger.logObject.getter();
    v90 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v89, v90))
    {
      v91 = swift_slowAlloc();
      *v91 = 0;
      _os_log_impl(&_mh_execute_header, v89, v90, "Unable to post game mode darwin notification - token is invalid!", v91, 2u);
    }
  }

  (*(v129 + 1))(v88, v83);
LABEL_79:
  v135(v124, v45 + v145, v130);
  v103 = objc_allocWithZone(type metadata accessor for SustainedExecutionStatus());
  v104 = SustainedExecutionStatus.init(config:)();
  v105 = off_1000541F8;
  v106 = *(off_1000541F8 + 2);

  [v106 lock];
  v146 = v105;
  v147 = v104;
  sub_100019904(v104, v105, v149);
  if (v75)
  {

    [v106 unlock];
    __break(1u);
  }

  else
  {
    [v106 unlock];
    v107 = v149[0];
    if (v149[0] >> 62)
    {
      v108 = _CocoaArrayWrapper.endIndex.getter();
      if (v108)
      {
LABEL_82:
        if (v108 < 1)
        {
          __break(1u);
        }

        for (j = 0; j != v108; ++j)
        {
          if ((v107 & 0xC000000000000001) != 0)
          {
            specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
          }

          Strong = swift_unknownObjectWeakLoadStrong();
          if (Strong)
          {
            v111 = [*(Strong + 16) remoteObjectProxy];
            _bridgeAnyObjectToAny(_:)();
            swift_unknownObjectRelease();
            sub_100003870(&qword_100054458, &qword_10003E7B0);
            if (swift_dynamicCast())
            {
              [v148[0] updateStatus:0 :0 :v147 :0];
              swift_unknownObjectRelease();
            }

            swift_unknownObjectRelease();
          }

          else
          {
          }
        }
      }
    }

    else
    {
      v108 = *((v149[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v108)
      {
        goto LABEL_82;
      }
    }
  }
}

uint64_t sub_10002CA74(int a1, unint64_t a2, int a3)
{
  v4 = v3;
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v96 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v96 - v13;
  v15 = sub_100003870(&qword_1000552E0, &qword_10003E780);
  v16 = __chkstk_darwin(v15 - 8);
  v113 = &v96 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v114 = &v96 - v18;
  v19 = type metadata accessor for DynamicSplitterStatus.Config();
  v20 = __chkstk_darwin(v19);
  result = __chkstk_darwin(v20);
  v25 = &v96 - v24;
  if (v4[OBJC_IVAR____TtC11gamepolicyd26EmbeddedGameProcessMonitor_deviceSupportsDynamicPowerSplitter] != 1)
  {
    return result;
  }

  v100 = v23;
  v102 = a3;
  v98 = v14;
  v103 = v12;
  v104 = v9;
  v105 = v8;
  p_name = OBJC_IVAR____TtC11gamepolicyd26EmbeddedGameProcessMonitor_dynamicSplitterStatusConfig;
  v27 = v22;
  swift_beginAccess();
  v28 = *(v27 + 16);
  v28(v25, &v4[p_name], v19);
  v108 = DynamicSplitterStatus.Config.enabled.getter();
  v29 = *(v27 + 8);
  v29(v25, v19);
  v110 = v28;
  v111 = v27 + 16;
  v28(v25, &v4[p_name], v19);
  v107 = DynamicSplitterStatus.Config.impactedBundleIdentifiers.getter();
  v106 = v25;
  v101 = v27 + 8;
  v99 = v29;
  v29(v25, v19);
  swift_beginAccess();
  LODWORD(v117) = a1;
  DynamicSplitterStatus.Config.enabled.setter();
  swift_endAccess();
  v120[0] = _swiftEmptyArrayStorage;
  if (a2 >> 62)
  {
    goto LABEL_41;
  }

  for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v116 = p_name;
    v118 = a2;
    v109 = v4;
    v112 = v19;
    if (i)
    {
      v31 = 0;
      p_name = a2 & 0xC000000000000001;
      v32 = a2 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (p_name)
        {
          specialized _ArrayBuffer._getElementSlowPath(_:)();
          v33 = v31 + 1;
          if (__OFADD__(v31, 1))
          {
            goto LABEL_15;
          }
        }

        else
        {
          if (v31 >= *(v32 + 16))
          {
            __break(1u);
            goto LABEL_39;
          }

          v33 = v31 + 1;
          if (__OFADD__(v31, 1))
          {
LABEL_15:
            __break(1u);
LABEL_16:
            v19 = v120[0];
            if ((v120[0] & 0x8000000000000000) == 0)
            {
              goto LABEL_19;
            }

            goto LABEL_42;
          }
        }

        if (dispatch thunk of EmbeddedGameProcess.triggeringGameMode.getter())
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        else
        {
        }

        ++v31;
        a2 = v118;
        if (v33 == i)
        {
          goto LABEL_16;
        }
      }
    }

    v19 = _swiftEmptyArrayStorage;
    if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0)
    {
      break;
    }

LABEL_19:

    v34 = *(v19 + 16);
    if (!v34)
    {
      goto LABEL_43;
    }

LABEL_21:
    v35 = v19 & 0xC000000000000001;
    v115 = _swiftEmptyArrayStorage;
    p_name = &stru_100051FF8.name;
    v36 = 0;
    if ((v19 & 0xC000000000000001) != 0)
    {
LABEL_35:
      specialized _ArrayBuffer._getElementSlowPath(_:)();
      v37 = v36 + 1;
      if (!__OFADD__(v36, 1))
      {
        goto LABEL_27;
      }

LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    while (v36 < *(v19 + 16))
    {

      v37 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        goto LABEL_39;
      }

LABEL_27:
      v4 = EmbeddedGameProcess.processHandle.getter();
      a2 = [v4 bundle];

      if (a2 && (v4 = [a2 identifier], a2, v4))
      {
        v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v97 = v39;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v115 = sub_100023ABC(0, *(v115 + 2) + 1, 1, v115);
        }

        a2 = *(v115 + 2);
        v40 = *(v115 + 3);
        if (a2 >= v40 >> 1)
        {
          v115 = sub_100023ABC((v40 > 1), a2 + 1, 1, v115);
        }

        v41 = v115;
        *(v115 + 2) = a2 + 1;
        v42 = &v41[16 * a2];
        v43 = v97;
        *(v42 + 4) = v38;
        *(v42 + 5) = v43;
        if (v37 == v34)
        {
          goto LABEL_44;
        }

        v36 = v37;
        if (v35)
        {
          goto LABEL_35;
        }
      }

      else
      {

        ++v36;
        if (v37 == v34)
        {
          goto LABEL_44;
        }

        if (v35)
        {
          goto LABEL_35;
        }
      }
    }

LABEL_40:
    __break(1u);
LABEL_41:
    ;
  }

LABEL_42:
  v34 = _CocoaArrayWrapper.endIndex.getter();
  if (v34)
  {
    goto LABEL_21;
  }

LABEL_43:
  v115 = _swiftEmptyArrayStorage;
LABEL_44:

  LODWORD(v44) = v108 ^ v117;
  v45 = v109;
  v46 = v116;
  swift_beginAccess();
  DynamicSplitterStatus.Config.impactedBundleIdentifiers.setter();
  swift_endAccess();
  if (qword_100053488 != -1)
  {
    goto LABEL_96;
  }

LABEL_45:

  sub_10001C498();

  swift_beginAccess();
  DynamicSplitterStatus.Config.enablementStrategy.setter();
  swift_endAccess();
  if ((v44 & 1) == 0)
  {
    goto LABEL_49;
  }

  if (v117)
  {

    v47 = v114;
    Date.init()();
    v48 = type metadata accessor for Date();
    v49 = *(*(v48 - 8) + 56);
    v49(v47, 0, 1, v48);
    swift_beginAccess();
    DynamicSplitterStatus.Config.enablementDate.setter();
    v49(v47, 1, 1, v48);
    DynamicSplitterStatus.Config.disablementDate.setter();
    goto LABEL_51;
  }

  v50 = v100;
  v51 = v112;
  v110(v100, &v45[v46], v112);
  v52 = v113;
  DynamicSplitterStatus.Config.enablementDate.getter();
  v99(v50, v51);
  v53 = type metadata accessor for Date();
  v54 = *(v53 - 8);
  v55 = (*(v54 + 48))(v52, 1, v53);
  sub_1000096E8(v52, &qword_1000552E0, &qword_10003E780);
  if (v55 != 1)
  {
    v56 = v114;
    Date.init()();
    (*(v54 + 56))(v56, 0, 1, v53);
    swift_beginAccess();
    DynamicSplitterStatus.Config.disablementDate.setter();
    DynamicSplitterStatus.Config.previouslyImpactedBundleIdentifiers.setter();
LABEL_51:
    swift_endAccess();
  }

  else
  {
LABEL_49:
  }

  v57 = objc_opt_self();
  v120[0] = 0;
  v58 = [v57 createClient:v120];
  v59 = v120[0];
  if (!v58)
  {
    v68 = v120[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
    goto LABEL_72;
  }

  v60 = v58;
  if (((v44 | v102) & 1) == 0)
  {
    v69 = v120[0];
    if (!i)
    {
      goto LABEL_79;
    }

LABEL_59:
    v70 = 0;
    v71 = v118 & 0xC000000000000001;
    v46 = v118 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v71)
      {
        v73 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v44 = v70 + 1;
        if (__OFADD__(v70, 1))
        {
          goto LABEL_94;
        }
      }

      else
      {
        if (v70 >= *(v46 + 16))
        {
          goto LABEL_95;
        }

        v73 = *(v118 + 8 * v70 + 32);

        v44 = v70 + 1;
        if (__OFADD__(v70, 1))
        {
LABEL_94:
          __break(1u);
LABEL_95:
          __break(1u);
LABEL_96:
          swift_once();
          goto LABEL_45;
        }
      }

      if (v117)
      {
        v72 = dispatch thunk of EmbeddedGameProcess.triggeringGameMode.getter();
      }

      else
      {
        v72 = 0;
      }

      sub_10002D8D0(v72 & 1, v73, v60);

      ++v70;
      if (v44 == i)
      {
        goto LABEL_79;
      }
    }
  }

  v120[0] = 0;
  v61 = v59;
  v62 = [v60 setGameMode:v117 & 1 options:0 error:v120];
  v63 = v120[0];
  if (v62)
  {
    v120[0] = 0;
    v64 = v63;
    v65 = [v60 isInGameMode:v120];
    v66 = v120[0];
    if (v120[0])
    {
      swift_willThrow();
      v67 = v66;
      goto LABEL_71;
    }

    v83 = v65;
    static Logger.daemon.getter();
    v84 = Logger.logObject.getter();
    v85 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v84, v85))
    {
      v86 = swift_slowAlloc();
      LODWORD(v44) = v86;
      *v86 = 134349056;
      *(v86 + 4) = v83;
      _os_log_impl(&_mh_execute_header, v84, v85, "Set DPS to %{public}lu", v86, 0xCu);
    }

    (*(v104 + 8))(v98, v105);
    if (!i)
    {
LABEL_79:
      swift_unknownObjectRelease();
      v79 = v106;
      goto LABEL_80;
    }

    goto LABEL_59;
  }

  v74 = v120[0];
  _convertNSErrorToError(_:)();

  swift_willThrow();
LABEL_71:
  swift_unknownObjectRelease();
LABEL_72:
  v75 = v103;
  static Logger.daemon.getter();
  swift_errorRetain();
  v76 = Logger.logObject.getter();
  v77 = static os_log_type_t.error.getter();

  v78 = os_log_type_enabled(v76, v77);
  v79 = v106;
  if (v78)
  {
    v80 = swift_slowAlloc();
    v81 = swift_slowAlloc();
    *v80 = 138543362;
    swift_errorRetain();
    v82 = _swift_stdlib_bridgeErrorToNSError();
    *(v80 + 4) = v82;
    *v81 = v82;
    _os_log_impl(&_mh_execute_header, v76, v77, "Unable to set DPS: %{public}@", v80, 0xCu);
    sub_1000096E8(v81, &unk_100053C00, &qword_10003E810);
  }

  else
  {
  }

  (*(v104 + 8))(v75, v105);
LABEL_80:
  v110(v79, &v45[v116], v112);
  v87 = objc_allocWithZone(type metadata accessor for DynamicSplitterStatus());
  v88 = DynamicSplitterStatus.init(config:)();
  v89 = off_1000541F8;
  v90 = *(off_1000541F8 + 2);

  [v90 lock];
  v118 = v88;
  sub_100019ABC(v88, v89, v120);
  [v90 unlock];
  v91 = v120[0];
  if (v120[0] >> 62)
  {
    v92 = _CocoaArrayWrapper.endIndex.getter();
    if (v92)
    {
LABEL_82:
      if (v92 < 1)
      {
        __break(1u);
      }

      v117 = v89;
      for (j = 0; j != v92; ++j)
      {
        if ((v91 & 0xC000000000000001) != 0)
        {
          specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
        }

        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v95 = [*(Strong + 16) remoteObjectProxy];
          _bridgeAnyObjectToAny(_:)();
          swift_unknownObjectRelease();
          sub_100003870(&qword_100054458, &qword_10003E7B0);
          if (swift_dynamicCast())
          {
            [v119[0] updateStatus:0 :0 :0 :v118];
            swift_unknownObjectRelease();
          }

          swift_unknownObjectRelease();
        }

        else
        {
        }
      }
    }
  }

  else
  {
    v92 = *((v120[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v92)
    {
      goto LABEL_82;
    }
  }
}

void sub_10002D8D0(char a1, uint64_t a2, void *a3)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = v35 - v11;
  if (*(v3 + OBJC_IVAR____TtC11gamepolicyd26EmbeddedGameProcessMonitor_deviceSupportsDynamicPowerSplitter) == 1 && (EmbeddedGameProcess.supportsDynamicPowerSplitter.getter() & 1) != 0)
  {
    v13 = EmbeddedGameProcess.processHandle.getter();
    v14 = [v13 pid];

    if (v14 != -1)
    {
      v15 = EmbeddedGameProcess.processHandle.getter();
      v16 = [v15 name];

      if (v16 || (v35[0] = 1701667175, v19 = EmbeddedGameProcess.processHandle.getter(), v20 = [v19 bundle], v19, v20) && (v16 = objc_msgSend(v20, "identifier"), v20, v16))
      {
        v35[0] = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v18 = v17;
      }

      else
      {
        v18 = 0xE400000000000000;
      }

      v36 = 0;
      if ([a3 setGameModeOnProcess:a1 & 1 targetProcess:v14 options:0 error:&v36])
      {
        v21 = v36;
        static Logger.daemon.getter();

        v22 = Logger.logObject.getter();
        v23 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v22, v23))
        {
          v24 = swift_slowAlloc();
          v36 = swift_slowAlloc();
          *v24 = 136446466;
          if (a1)
          {
            v25 = 0x64656C62616E45;
          }

          else
          {
            v25 = 0x64656C6261736944;
          }

          if (a1)
          {
            v26 = 0xE700000000000000;
          }

          else
          {
            v26 = 0xE800000000000000;
          }

          v27 = sub_100034C38(v25, v26, &v36);

          *(v24 + 4) = v27;
          *(v24 + 12) = 2082;
          v28 = sub_100034C38(v35[0], v18, &v36);

          *(v24 + 14) = v28;
          _os_log_impl(&_mh_execute_header, v22, v23, "%{public}s DPS for %{public}s", v24, 0x16u);
          swift_arrayDestroy();
        }

        else
        {
        }

        (*(v7 + 8))(v12, v6);
      }

      else
      {
        v29 = v36;

        _convertNSErrorToError(_:)();

        swift_willThrow();
        static Logger.daemon.getter();
        swift_errorRetain();
        v30 = Logger.logObject.getter();
        v31 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v30, v31))
        {
          v32 = swift_slowAlloc();
          v33 = swift_slowAlloc();
          *v32 = 138543362;
          swift_errorRetain();
          v34 = _swift_stdlib_bridgeErrorToNSError();
          *(v32 + 4) = v34;
          *v33 = v34;
          _os_log_impl(&_mh_execute_header, v30, v31, "Unable to set DPS for game: %{public}@", v32, 0xCu);
          sub_1000096E8(v33, &unk_100053C00, &qword_10003E810);
        }

        else
        {
        }

        (*(v7 + 8))(v10, v6);
      }
    }
  }
}

void sub_10002DD98(uint64_t a1, void *a2)
{
  v78 = a1;
  v4 = type metadata accessor for OSSignpostID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v65[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v65[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = *(v2 + OBJC_IVAR____TtC11gamepolicyd26EmbeddedGameProcessMonitor_queue);
  *v11 = v12;
  (*(v9 + 104))(v11, enum case for DispatchPredicate.onQueue(_:), v8);
  v13 = v12;
  LOBYTE(v12) = _dispatchPreconditionTest(_:)();
  (*(v9 + 8))(v11, v8);
  if ((v12 & 1) == 0)
  {
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
    return;
  }

  v14 = [a2 state];
  if (!v14)
  {
    return;
  }

  v15 = v14;
  v16 = [v14 assertions];
  if (!v16)
  {
    goto LABEL_38;
  }

  v17 = v16;
  v69 = v7;
  v73 = v5;
  v74 = v4;
  v75 = v2;
  v18 = sub_100009748(0, &qword_1000552B8, RBSProcessAssertionInfo_ptr);
  sub_100039EB0();
  v19 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v72 = [v15 taskState];
  v70 = v15;
  v77 = v18;
  if ((v19 & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    Set.Iterator.init(_cocoa:)();
    v19 = v83;
    v20 = v84;
    v21 = v85;
    v22 = v86;
    v23 = v87;
  }

  else
  {
    v22 = 0;
    v24 = -1 << *(v19 + 32);
    v20 = v19 + 56;
    v21 = ~v24;
    v25 = -v24;
    if (v25 < 64)
    {
      v26 = ~(-1 << v25);
    }

    else
    {
      v26 = -1;
    }

    v23 = v26 & *(v19 + 56);
  }

  v76 = 0;
  v71 = v21;
  v27 = (v21 + 64) >> 6;
  v68 = 0x8000000100042BF0;
  while (v19 < 0)
  {
    v31 = __CocoaSet.Iterator.next()();
    if (!v31)
    {
      goto LABEL_28;
    }

    v79 = v31;
    swift_dynamicCast();
    v30 = v81;
    if (!v81)
    {
      goto LABEL_28;
    }

LABEL_21:
    v32 = [v30 domain];
    if (v32)
    {
      v33 = v32;
      v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v36 = v35;

      v37._countAndFlagsBits = 0xD000000000000014;
      v37._object = 0x8000000100042BD0;
      if (String.hasPrefix(_:)(v37))
      {
        v81 = v34;
        v82 = v36;
        v79 = 0x6C61636F4649552DLL;
        v80 = 0xE800000000000000;
        v67 = sub_100009790();
        if (StringProtocol.contains<A>(_:)())
        {
          v66 = 1;
        }

        else
        {
          v81 = v34;
          v82 = v36;
          v79 = 0x6C61636F462DLL;
          v80 = 0xE600000000000000;
          v66 = StringProtocol.contains<A>(_:)();
        }

        v81 = v34;
        v82 = v36;
        v79 = 0xD000000000000010;
        v80 = v68;
        v38 = StringProtocol.contains<A>(_:)();

        v76 |= v66 | v38;
      }

      else
      {
      }
    }

    else
    {
    }
  }

  v28 = v22;
  v29 = v23;
  if (!v23)
  {
    while (1)
    {
      v22 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v22 >= v27)
      {
        goto LABEL_28;
      }

      v29 = *(v20 + 8 * v22);
      ++v28;
      if (v29)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
    goto LABEL_41;
  }

LABEL_17:
  v23 = (v29 - 1) & v29;
  v30 = *(*(v19 + 48) + ((v22 << 9) | (8 * __clz(__rbit64(v29)))));
  if (v30)
  {
    goto LABEL_21;
  }

LABEL_28:
  sub_10001B370(v19);
  v39 = dispatch thunk of EmbeddedGameProcess.isRunningForeground.getter();
  if (v72 == 4)
  {
    dispatch thunk of EmbeddedGameProcess.isTerminated.getter();
  }

  v40 = v74;
  v41 = v73;
  dispatch thunk of EmbeddedGameProcess.isRunning.setter();
  dispatch thunk of EmbeddedGameProcess.isRunning.getter();
  dispatch thunk of EmbeddedGameProcess.isRunningForeground.setter();
  if ((v39 & 1) != (dispatch thunk of EmbeddedGameProcess.isRunningForeground.getter() & 1))
  {
    if (dispatch thunk of EmbeddedGameProcess.isRunningForeground.getter())
    {
      v76 = static os_signpost_type_t.begin.getter();
      v77 = static Logger.stateTracking.getter();
      v42 = EmbeddedGameProcess.processHandle.getter();
      v43 = [v42 pid];

      if ((v43 & 0x80000000) != 0)
      {
        goto LABEL_42;
      }

      v44 = v69;
      OSSignpostID.init(_:)();
      sub_100003870(&qword_1000552C8, &unk_10003F118);
      v45 = swift_allocObject();
      *(v45 + 16) = xmmword_10003EFC0;
      v46 = EmbeddedGameProcess.bundleIdentifier.getter();
      v48 = v47;
      *(v45 + 56) = &type metadata for String;
      v49 = sub_100039F18();
      *(v45 + 64) = v49;
      *(v45 + 32) = v46;
      *(v45 + 40) = v48;
      v50 = EmbeddedGameProcess.genreIdentifier.getter();
      *(v45 + 96) = &type metadata for UInt64;
      *(v45 + 104) = &protocol witness table for UInt64;
      *(v45 + 72) = v50;
      v51 = EmbeddedGameProcess.hasGameGenreId.getter();
      *(v45 + 136) = &type metadata for Bool;
      *(v45 + 144) = &protocol witness table for Bool;
      *(v45 + 112) = v51 & 1;
      v52 = EmbeddedGameProcess.supportsGameMode.getter();
      *(v45 + 176) = &type metadata for Bool;
      *(v45 + 184) = &protocol witness table for Bool;
      *(v45 + 152) = v52 & 1;
      v53 = EmbeddedGameProcess.requiresiPhonePerformanceGamingTier.getter();
      *(v45 + 216) = &type metadata for Bool;
      *(v45 + 224) = &protocol witness table for Bool;
      *(v45 + 192) = v53 & 1;
      v54 = EmbeddedGameProcess.requiresIncreasedMemoryLimit.getter();
      *(v45 + 256) = &type metadata for Bool;
      *(v45 + 264) = &protocol witness table for Bool;
      *(v45 + 232) = v54 & 1;
      v55 = EmbeddedGameProcess.requiresIncreasedDebugMemoryLimit.getter();
      *(v45 + 296) = &type metadata for Bool;
      *(v45 + 304) = &protocol witness table for Bool;
      *(v45 + 272) = v55 & 1;
      EmbeddedGameProcess.semPreference.getter();
      v56 = SEMPolicy.description.getter();
      *(v45 + 336) = &type metadata for String;
      *(v45 + 344) = v49;
      *(v45 + 312) = v56;
      *(v45 + 320) = v57;
      v58 = EmbeddedGameProcess.supportsModelManagerAssertion.getter();
      *(v45 + 376) = &type metadata for Bool;
      *(v45 + 384) = &protocol witness table for Bool;
      *(v45 + 352) = v58 & 1;
      v59 = EmbeddedGameProcess.requiresModelManagerAssertion.getter();
      *(v45 + 416) = &type metadata for Bool;
      *(v45 + 424) = &protocol witness table for Bool;
      *(v45 + 392) = v59 & 1;
      v60 = dispatch thunk of EmbeddedGameProcess.supportsCameraJettisonS2R.getter();
      *(v45 + 456) = &type metadata for Bool;
      *(v45 + 464) = &protocol witness table for Bool;
      *(v45 + 432) = v60 & 1;
      v61 = v77;
      os_signpost(_:dso:log:name:signpostID:_:_:)(v76, &_mh_execute_header, v77, "TrackedProcessForeground", 24, 2, v44, "Signpost ID is process ID\nBundle ID = %{public, name=bundleIdentifier}s\nGenre ID = %{public, name=genreIdentifier}lld\nHas Game Genre ID = %{public, name=hasGameGenre}d\nSupports Game mode = %{public, name=supportsGameMode}d\nRequires Performance Gaming Tier = %{public, name=requiresPerformanceGamingTier}d\nRequires Increased Memory Limit = %{public, name=requiresIncreasedMemoryLimit}d\nRequires Increased Debug Memory Limit = %{public, name=requiresIncreasedDebugMemoryLimit}d\nSEM Preference = %{public, name=semPreference}d\nSupports Model Manager Assertion = %{public, name=supportsModelManagerAssertion}d\nRequires Model Manager Assertion = %{public, name=requiresModelManagerAssertion}d\nSupports Camera Jettison S2R = %{public, name=supportsCameraJettisonS2R}d", 761, 2, v45);
    }

    else
    {
      static os_signpost_type_t.end.getter();
      v62 = static Logger.stateTracking.getter();
      v63 = EmbeddedGameProcess.processHandle.getter();
      v64 = [v63 pid];

      if ((v64 & 0x80000000) != 0)
      {
        goto LABEL_43;
      }

      v44 = v69;
      OSSignpostID.init(_:)();
      os_signpost(_:dso:log:name:signpostID:)();
    }

    (*(v41 + 8))(v44, v40);
  }

  sub_10002E554();
  v15 = v70;
LABEL_38:
}

uint64_t sub_10002E554()
{
  v1 = sub_100003870(&qword_1000552B0, &qword_10003F110);
  __chkstk_darwin(v1);
  v3 = &v56 - v2;
  v4 = sub_100003870(&qword_100054428, &qword_10003E778);
  __chkstk_darwin(v4 - 8);
  v65 = &v56 - v5;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v56 = &v56 - v11;
  v12 = type metadata accessor for DispatchPredicate();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = (&v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *&v0[OBJC_IVAR____TtC11gamepolicyd26EmbeddedGameProcessMonitor_queue];
  *v15 = v16;
  (*(v13 + 104))(v15, enum case for DispatchPredicate.onQueue(_:), v12);
  v17 = v16;
  LOBYTE(v16) = _dispatchPreconditionTest(_:)();
  (*(v13 + 8))(v15, v12);
  if ((v16 & 1) == 0)
  {
LABEL_33:
    __break(1u);
LABEL_34:
    swift_once();
    goto LABEL_29;
  }

  v57 = v10;
  v63 = v3;
  v18 = OBJC_IVAR____TtC11gamepolicyd26EmbeddedGameProcessMonitor_gameProcesses;
  swift_beginAccess();
  v61 = v18;
  v62 = v0;
  v12 = *&v0[v18];
  v64 = v1;
  v58 = v7;
  v59 = v6;
  if ((v12 & 0xC000000000000001) != 0)
  {
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v3 = __CocoaDictionary.makeIterator()() | 0x8000000000000000;
  }

  else
  {
    v22 = -1 << *(v12 + 32);
    v20 = ~v22;
    v19 = v12 + 64;
    v23 = -v22;
    if (v23 < 64)
    {
      v24 = ~(-1 << v23);
    }

    else
    {
      v24 = -1;
    }

    v21 = v24 & *(v12 + 64);
    v3 = v12;
  }

  v25 = 0;
  v60 = v20;
  v26 = (v20 + 64) >> 6;
  while (1)
  {
    v1 = v21;
    if ((v3 & 0x8000000000000000) == 0)
    {
      break;
    }

    v30 = __CocoaDictionary.Iterator.next()();
    if (!v30)
    {
      goto LABEL_23;
    }

    v32 = v31;
    v68 = v30;
    sub_100009748(0, &qword_100054450, RBSProcessIdentity_ptr);
    swift_dynamicCast();
    v29 = v72;
    v68 = v32;
    type metadata accessor for EmbeddedGameProcess();
    swift_dynamicCast();
    if (!v29)
    {
      goto LABEL_23;
    }

LABEL_18:

    v12 = dispatch thunk of EmbeddedGameProcess.isRunningForeground.getter();

    if (v12)
    {
      sub_10001B370(v3);
      v33 = OBJC_IVAR____TtC11gamepolicyd26EmbeddedGameProcessMonitor_identifiedGameTransaction;
      v1 = v62;
      if (*&v62[OBJC_IVAR____TtC11gamepolicyd26EmbeddedGameProcessMonitor_identifiedGameTransaction])
      {
        goto LABEL_28;
      }

      v34 = v56;
      static Logger.daemon.getter();
      v35 = Logger.logObject.getter();
      v36 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        *v37 = 0;
        _os_log_impl(&_mh_execute_header, v35, v36, "Foreground games identified - holding transaction", v37, 2u);
      }

      (*(v58 + 8))(v34, v59);
      *&v1[v33] = os_transaction_create();
      goto LABEL_27;
    }
  }

  v27 = v25;
  v28 = v21;
  if (!v21)
  {
    while (1)
    {
      v25 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      if (v25 >= v26)
      {
        goto LABEL_23;
      }

      v28 = *(v19 + 8 * v25);
      ++v27;
      if (v28)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
    goto LABEL_33;
  }

LABEL_14:
  v21 = (v28 - 1) & v28;
  v29 = *(*(v3 + 48) + ((v25 << 9) | (8 * __clz(__rbit64(v28)))));

  if (v29)
  {
    goto LABEL_18;
  }

LABEL_23:
  sub_10001B370(v3);
  v38 = OBJC_IVAR____TtC11gamepolicyd26EmbeddedGameProcessMonitor_identifiedGameTransaction;
  v1 = v62;
  if (!*&v62[OBJC_IVAR____TtC11gamepolicyd26EmbeddedGameProcessMonitor_identifiedGameTransaction])
  {
    goto LABEL_28;
  }

  v39 = v57;
  static Logger.daemon.getter();
  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    *v42 = 0;
    _os_log_impl(&_mh_execute_header, v40, v41, "Foreground games no longer identified - releasing transaction", v42, 2u);
  }

  (*(v58 + 8))(v39, v59);
  *&v1[v38] = 0;
LABEL_27:
  swift_unknownObjectRelease();
LABEL_28:
  type metadata accessor for GlobalPreferences();
  dispatch thunk of static GlobalPreferences.shared.getter();
  v12 = dispatch thunk of GlobalPreferences.gameModeEnabledList.getter();

  v72 = 0;
  v71 = 0;
  v70 = 0;
  v69 = 0;
  v67 = _swiftEmptyArrayStorage;
  v68 = _swiftEmptyArrayStorage;
  v66 = _swiftEmptyArrayStorage;

  v3 = sub_100035D4C(v43);

  if (qword_100053488 != -1)
  {
    goto LABEL_34;
  }

LABEL_29:
  v44 = v1;

  v46 = v63;
  sub_100015D04(v45, v44, &v66, &v72, &v70, &v67, v12, &v68, v63, &v71, &v71 + 1, &v69);

  v47 = *v46;
  v48 = *(v46 + 1);
  v49 = v46[16];
  v50 = v46[*(v64 + 24)];
  sub_1000391EC(&v46[*(v64 + 20)], v65);
  v51 = v67;
  if (v67 >> 62)
  {
    v52 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v52 = *((v67 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v53 = v52 > 0;

  sub_10001CA20(v53, 0);

  sub_10001D13C(v53, 0);

  sub_100028314(v47, v50, v68, v51, v66, 0);
  v54 = v65;
  sub_10002A5E4(v65, v3, 0);
  sub_10002B738(v48, v3, 0);
  sub_10002CA74(v49, v3, 0);

  sub_1000096E8(v54, &qword_100054428, &qword_10003E778);
}