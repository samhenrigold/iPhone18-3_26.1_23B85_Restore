uint64_t sub_100252AD0(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4, void (*a5)(__n128 *__return_ptr, uint64_t, void), uint64_t a6, void (*a7)(__n128 *, void), void (*a8)(char *, uint64_t))
{
  v47 = a8;
  v13 = type metadata accessor for DispatchWorkItemFlags();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v43 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for DispatchQoS();
  v42 = *(v44 - 8);
  __chkstk_darwin(v44);
  v41 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for DispatchTime();
  v40 = *(v46 - 8);
  __chkstk_darwin(v46);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v45 = &v36 - v20;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v22 = result;
    v38 = v14;
    v39 = v13;
    v23 = COERCE_DOUBLE(a3(a1));
    v25 = v24;
    sub_100095588();
    sub_100095588();
    v26 = swift_allocObject();
    v26[2] = a5;
    v26[3] = a6;
    memcpy(v26 + 4, __src, 0x48uLL);
    v26[13] = v22;
    v26[14] = a7;
    v27 = v47;
    v26[15] = v47;
    if (v25)
    {
      if (v23 == 0.0)
      {

        goto LABEL_11;
      }

      v28 = qword_100CA2BF0;

      if (v28 != -1)
      {
        swift_once();
      }

      sub_1002416DC(v22, sub_10026AE48, v26);
    }

    else
    {
      if (v23 != 0.0)
      {
        sub_100040690();

        v37 = static OS_dispatch_queue.main.getter();
        static DispatchTime.now()();
        + infix(_:_:)();
        v47 = *(v40 + 8);
        v47(v18, v46);
        v29 = swift_allocObject();
        *(v29 + 16) = sub_10026AE48;
        *(v29 + 24) = v26;
        aBlock[4] = sub_10026BBA8;
        aBlock[5] = v29;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1000742F0;
        aBlock[3] = &unk_100C47360;
        v30 = _Block_copy(aBlock);

        v31 = v41;
        static DispatchQoS.unspecified.getter();
        aBlock[0] = _swiftEmptyArrayStorage;
        sub_10006724C(&qword_100CD81C0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
        sub_10022C350(&qword_100CB4680, &qword_100A2EC00);
        sub_100006F64(&qword_100CD81D0, &qword_100CB4680, &qword_100A2EC00, &protocol conformance descriptor for [A]);
        v32 = v43;
        v33 = v39;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v34 = v45;
        v35 = v37;
        OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
        _Block_release(v30);

        (*(v38 + 8))(v32, v33);
        (*(v42 + 8))(v31, v44);
        v47(v34, v46);
        return sub_1000180EC(v49, &qword_100CA48E0, &qword_100A5C570);
      }

      sub_10025BE00(a5, a6, v49, v22, a7, v27);
    }

LABEL_11:

    return sub_1000180EC(v49, &qword_100CA48E0, &qword_100A5C570);
  }

  return result;
}

uint64_t sub_100253158(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4, void (*a5)(uint64_t, void), uint64_t a6, void (*a7)(void, void), void (*a8)(char *, uint64_t))
{
  v47 = a8;
  v13 = type metadata accessor for DispatchWorkItemFlags();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v43 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for DispatchQoS();
  v42 = *(v44 - 8);
  __chkstk_darwin(v44);
  v41 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for DispatchTime();
  v40 = *(v46 - 8);
  __chkstk_darwin(v46);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v45 = &v36 - v20;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v22 = result;
    v38 = v14;
    v39 = v13;
    v23 = COERCE_DOUBLE(a3(a1));
    v25 = v24;
    sub_100095588();
    sub_100095588();
    v26 = swift_allocObject();
    v26[2] = a5;
    v26[3] = a6;
    memcpy(v26 + 4, __src, 0x48uLL);
    v26[13] = v22;
    v26[14] = a7;
    v27 = v47;
    v26[15] = v47;
    if (v25)
    {
      if (v23 == 0.0)
      {

        goto LABEL_11;
      }

      v28 = qword_100CA2BF0;

      if (v28 != -1)
      {
        swift_once();
      }

      sub_100241A4C(v22, sub_10026AF64, v26);
    }

    else
    {
      if (v23 != 0.0)
      {
        sub_100040690();

        v37 = static OS_dispatch_queue.main.getter();
        static DispatchTime.now()();
        + infix(_:_:)();
        v47 = *(v40 + 8);
        v47(v18, v46);
        v29 = swift_allocObject();
        *(v29 + 16) = sub_10026AF64;
        *(v29 + 24) = v26;
        aBlock[4] = sub_10026BBA8;
        aBlock[5] = v29;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1000742F0;
        aBlock[3] = &unk_100C474C8;
        v30 = _Block_copy(aBlock);

        v31 = v41;
        static DispatchQoS.unspecified.getter();
        aBlock[0] = _swiftEmptyArrayStorage;
        sub_10006724C(&qword_100CD81C0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
        sub_10022C350(&qword_100CB4680, &qword_100A2EC00);
        sub_100006F64(&qword_100CD81D0, &qword_100CB4680, &qword_100A2EC00, &protocol conformance descriptor for [A]);
        v32 = v43;
        v33 = v39;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v34 = v45;
        v35 = v37;
        OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
        _Block_release(v30);

        (*(v38 + 8))(v32, v33);
        (*(v42 + 8))(v31, v44);
        v47(v34, v46);
        return sub_1000180EC(v49, &qword_100CA48E0, &qword_100A5C570);
      }

      sub_10025C748(a5, a6, v49, v22, a7, v27);
    }

LABEL_11:

    return sub_1000180EC(v49, &qword_100CA48E0, &qword_100A5C570);
  }

  return result;
}

uint64_t sub_1002537E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4, void *(*a5)(uint64_t *__return_ptr, uint64_t, void, double), uint64_t a6, void (*a7)(uint64_t *, void), void (*a8)(char *, uint64_t))
{
  v47 = a8;
  v13 = type metadata accessor for DispatchWorkItemFlags();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v43 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for DispatchQoS();
  v42 = *(v44 - 8);
  __chkstk_darwin(v44);
  v41 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for DispatchTime();
  v40 = *(v46 - 8);
  __chkstk_darwin(v46);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v45 = &v36 - v20;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v22 = result;
    v38 = v14;
    v39 = v13;
    v23 = COERCE_DOUBLE(a3(a1));
    v25 = v24;
    sub_100095588();
    sub_100095588();
    v26 = swift_allocObject();
    v26[2] = a5;
    v26[3] = a6;
    memcpy(v26 + 4, __src, 0x48uLL);
    v26[13] = v22;
    v26[14] = a7;
    v27 = v47;
    v26[15] = v47;
    if (v25)
    {
      if (v23 == 0.0)
      {

        goto LABEL_11;
      }

      v28 = qword_100CA2BF0;

      if (v28 != -1)
      {
        swift_once();
      }

      sub_100241DC0(v22, sub_10026AFFC, v26);
    }

    else
    {
      if (v23 != 0.0)
      {
        sub_100040690();

        v37 = static OS_dispatch_queue.main.getter();
        static DispatchTime.now()();
        + infix(_:_:)();
        v47 = *(v40 + 8);
        v47(v18, v46);
        v29 = swift_allocObject();
        *(v29 + 16) = sub_10026AFFC;
        *(v29 + 24) = v26;
        aBlock[4] = sub_10026BBA8;
        aBlock[5] = v29;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1000742F0;
        aBlock[3] = &unk_100C47630;
        v30 = _Block_copy(aBlock);

        v31 = v41;
        static DispatchQoS.unspecified.getter();
        aBlock[0] = _swiftEmptyArrayStorage;
        sub_10006724C(&qword_100CD81C0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
        sub_10022C350(&qword_100CB4680, &qword_100A2EC00);
        sub_100006F64(&qword_100CD81D0, &qword_100CB4680, &qword_100A2EC00, &protocol conformance descriptor for [A]);
        v32 = v43;
        v33 = v39;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v34 = v45;
        v35 = v37;
        OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
        _Block_release(v30);

        (*(v38 + 8))(v32, v33);
        (*(v42 + 8))(v31, v44);
        v47(v34, v46);
        return sub_1000180EC(v49, &qword_100CA48E0, &qword_100A5C570);
      }

      sub_10025D0C0(a5, a6, v49, v22, a7, v27);
    }

LABEL_11:

    return sub_1000180EC(v49, &qword_100CA48E0, &qword_100A5C570);
  }

  return result;
}

uint64_t sub_100253E68(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4, void (*a5)(uint64_t, void), uint64_t a6, void (*a7)(void, void), void (*a8)(char *, uint64_t))
{
  v47 = a8;
  v13 = type metadata accessor for DispatchWorkItemFlags();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v43 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for DispatchQoS();
  v42 = *(v44 - 8);
  __chkstk_darwin(v44);
  v41 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for DispatchTime();
  v40 = *(v46 - 8);
  __chkstk_darwin(v46);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v45 = &v36 - v20;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v22 = result;
    v38 = v14;
    v39 = v13;
    v23 = COERCE_DOUBLE(a3(a1));
    v25 = v24;
    sub_100095588();
    sub_100095588();
    v26 = swift_allocObject();
    v26[2] = a5;
    v26[3] = a6;
    memcpy(v26 + 4, __src, 0x48uLL);
    v26[13] = v22;
    v26[14] = a7;
    v27 = v47;
    v26[15] = v47;
    if (v25)
    {
      if (v23 == 0.0)
      {

        goto LABEL_11;
      }

      v28 = qword_100CA2BF0;

      if (v28 != -1)
      {
        swift_once();
      }

      sub_10024212C(v22, sub_10026B068, v26);
    }

    else
    {
      if (v23 != 0.0)
      {
        sub_100040690();

        v37 = static OS_dispatch_queue.main.getter();
        static DispatchTime.now()();
        + infix(_:_:)();
        v47 = *(v40 + 8);
        v47(v18, v46);
        v29 = swift_allocObject();
        *(v29 + 16) = sub_10026B068;
        *(v29 + 24) = v26;
        aBlock[4] = sub_10026BBA8;
        aBlock[5] = v29;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1000742F0;
        aBlock[3] = &unk_100C47798;
        v30 = _Block_copy(aBlock);

        v31 = v41;
        static DispatchQoS.unspecified.getter();
        aBlock[0] = _swiftEmptyArrayStorage;
        sub_10006724C(&qword_100CD81C0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
        sub_10022C350(&qword_100CB4680, &qword_100A2EC00);
        sub_100006F64(&qword_100CD81D0, &qword_100CB4680, &qword_100A2EC00, &protocol conformance descriptor for [A]);
        v32 = v43;
        v33 = v39;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v34 = v45;
        v35 = v37;
        OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
        _Block_release(v30);

        (*(v38 + 8))(v32, v33);
        (*(v42 + 8))(v31, v44);
        v47(v34, v46);
        return sub_1000180EC(v49, &qword_100CA48E0, &qword_100A5C570);
      }

      sub_10025D6B8(a5, a6, v49, v22, a7, v27);
    }

LABEL_11:

    return sub_1000180EC(v49, &qword_100CA48E0, &qword_100A5C570);
  }

  return result;
}

uint64_t sub_1002544F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4, void *(*a5)(unsigned __int8 *__return_ptr, uint64_t, void), uint64_t a6, void *(*a7)(unsigned __int8 *__return_ptr), void (*a8)(char *, uint64_t))
{
  v46 = a8;
  v13 = type metadata accessor for DispatchWorkItemFlags();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v42 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for DispatchQoS();
  v41 = *(v43 - 8);
  __chkstk_darwin(v43);
  v40 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for DispatchTime();
  v39 = *(v45 - 8);
  __chkstk_darwin(v45);
  v18 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v44 = &v35 - v20;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v22 = result;
    v37 = v14;
    v38 = v13;
    v23 = COERCE_DOUBLE(a3(a1));
    v25 = v24;
    sub_100095588();
    sub_100095588();
    v26 = swift_allocObject();
    v26[2] = a5;
    v26[3] = a6;
    memcpy(v26 + 4, __src, 0x48uLL);
    v26[13] = v22;
    v26[14] = a7;
    v26[15] = v46;
    if (v25)
    {
      if (v23 == 0.0)
      {

        goto LABEL_11;
      }

      v27 = qword_100CA2BF0;

      if (v27 != -1)
      {
        swift_once();
      }

      sub_10024249C(v22, sub_10026B0FC, v26);
    }

    else
    {
      if (v23 != 0.0)
      {
        sub_100040690();

        v36 = static OS_dispatch_queue.main.getter();
        static DispatchTime.now()();
        + infix(_:_:)();
        v46 = *(v39 + 8);
        v46(v18, v45);
        v28 = swift_allocObject();
        *(v28 + 16) = sub_10026B0FC;
        *(v28 + 24) = v26;
        aBlock[4] = sub_10026BBA8;
        aBlock[5] = v28;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1000742F0;
        aBlock[3] = &unk_100C47900;
        v29 = _Block_copy(aBlock);

        v30 = v40;
        static DispatchQoS.unspecified.getter();
        aBlock[0] = _swiftEmptyArrayStorage;
        sub_10006724C(&qword_100CD81C0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
        sub_10022C350(&qword_100CB4680, &qword_100A2EC00);
        sub_100006F64(&qword_100CD81D0, &qword_100CB4680, &qword_100A2EC00, &protocol conformance descriptor for [A]);
        v31 = v42;
        v32 = v38;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v33 = v44;
        v34 = v36;
        OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
        _Block_release(v29);

        (*(v37 + 8))(v31, v32);
        (*(v41 + 8))(v30, v43);
        v46(v33, v45);
        return sub_1000180EC(v48, &qword_100CA48E0, &qword_100A5C570);
      }

      sub_10025E02C(a5, a6, v48, v22, a7);
    }

LABEL_11:

    return sub_1000180EC(v48, &qword_100CA48E0, &qword_100A5C570);
  }

  return result;
}

uint64_t sub_100254B78(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4, void (*a5)(uint64_t, void), uint64_t a6, void (*a7)(void, void), void (*a8)(char *, uint64_t))
{
  v47 = a8;
  v13 = type metadata accessor for DispatchWorkItemFlags();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v43 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for DispatchQoS();
  v42 = *(v44 - 8);
  __chkstk_darwin(v44);
  v41 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for DispatchTime();
  v40 = *(v46 - 8);
  __chkstk_darwin(v46);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v45 = &v36 - v20;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v22 = result;
    v38 = v14;
    v39 = v13;
    v23 = COERCE_DOUBLE(a3(a1));
    v25 = v24;
    sub_100095588();
    sub_100095588();
    v26 = swift_allocObject();
    v26[2] = a5;
    v26[3] = a6;
    memcpy(v26 + 4, __src, 0x48uLL);
    v26[13] = v22;
    v26[14] = a7;
    v27 = v47;
    v26[15] = v47;
    if (v25)
    {
      if (v23 == 0.0)
      {

        goto LABEL_11;
      }

      v28 = qword_100CA2BF0;

      if (v28 != -1)
      {
        swift_once();
      }

      sub_10024280C(v22, sub_10026B1B0, v26);
    }

    else
    {
      if (v23 != 0.0)
      {
        sub_100040690();

        v37 = static OS_dispatch_queue.main.getter();
        static DispatchTime.now()();
        + infix(_:_:)();
        v47 = *(v40 + 8);
        v47(v18, v46);
        v29 = swift_allocObject();
        *(v29 + 16) = sub_10026B1B0;
        *(v29 + 24) = v26;
        aBlock[4] = sub_10026BBA8;
        aBlock[5] = v29;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1000742F0;
        aBlock[3] = &unk_100C47A68;
        v30 = _Block_copy(aBlock);

        v31 = v41;
        static DispatchQoS.unspecified.getter();
        aBlock[0] = _swiftEmptyArrayStorage;
        sub_10006724C(&qword_100CD81C0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
        sub_10022C350(&qword_100CB4680, &qword_100A2EC00);
        sub_100006F64(&qword_100CD81D0, &qword_100CB4680, &qword_100A2EC00, &protocol conformance descriptor for [A]);
        v32 = v43;
        v33 = v39;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v34 = v45;
        v35 = v37;
        OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
        _Block_release(v30);

        (*(v38 + 8))(v32, v33);
        (*(v42 + 8))(v31, v44);
        v47(v34, v46);
        return sub_1000180EC(v49, &qword_100CA48E0, &qword_100A5C570);
      }

      sub_10025E30C(a5, a6, v49, v22, a7, v27);
    }

LABEL_11:

    return sub_1000180EC(v49, &qword_100CA48E0, &qword_100A5C570);
  }

  return result;
}

uint64_t sub_100255200(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4, void (*a5)(uint64_t, void), uint64_t a6, void (*a7)(void, void), void (*a8)(char *, uint64_t))
{
  v47 = a8;
  v13 = type metadata accessor for DispatchWorkItemFlags();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v43 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for DispatchQoS();
  v42 = *(v44 - 8);
  __chkstk_darwin(v44);
  v41 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for DispatchTime();
  v40 = *(v46 - 8);
  __chkstk_darwin(v46);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v45 = &v36 - v20;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v22 = result;
    v38 = v14;
    v39 = v13;
    v23 = COERCE_DOUBLE(a3(a1));
    v25 = v24;
    sub_100095588();
    sub_100095588();
    v26 = swift_allocObject();
    v26[2] = a5;
    v26[3] = a6;
    memcpy(v26 + 4, __src, 0x48uLL);
    v26[13] = v22;
    v26[14] = a7;
    v27 = v47;
    v26[15] = v47;
    if (v25)
    {
      if (v23 == 0.0)
      {

        goto LABEL_11;
      }

      v28 = qword_100CA2BF0;

      if (v28 != -1)
      {
        swift_once();
      }

      sub_100242B7C(v22, sub_10026B21C, v26);
    }

    else
    {
      if (v23 != 0.0)
      {
        sub_100040690();

        v37 = static OS_dispatch_queue.main.getter();
        static DispatchTime.now()();
        + infix(_:_:)();
        v47 = *(v40 + 8);
        v47(v18, v46);
        v29 = swift_allocObject();
        *(v29 + 16) = sub_10026B21C;
        *(v29 + 24) = v26;
        aBlock[4] = sub_10026BBA8;
        aBlock[5] = v29;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1000742F0;
        aBlock[3] = &unk_100C47BD0;
        v30 = _Block_copy(aBlock);

        v31 = v41;
        static DispatchQoS.unspecified.getter();
        aBlock[0] = _swiftEmptyArrayStorage;
        sub_10006724C(&qword_100CD81C0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
        sub_10022C350(&qword_100CB4680, &qword_100A2EC00);
        sub_100006F64(&qword_100CD81D0, &qword_100CB4680, &qword_100A2EC00, &protocol conformance descriptor for [A]);
        v32 = v43;
        v33 = v39;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v34 = v45;
        v35 = v37;
        OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
        _Block_release(v30);

        (*(v38 + 8))(v32, v33);
        (*(v42 + 8))(v31, v44);
        v47(v34, v46);
        return sub_1000180EC(v49, &qword_100CA48E0, &qword_100A5C570);
      }

      sub_10025EC80(a5, a6, v49, v22, a7, v27);
    }

LABEL_11:

    return sub_1000180EC(v49, &qword_100CA48E0, &qword_100A5C570);
  }

  return result;
}

uint64_t sub_100255888(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4, void (*a5)(uint64_t, void), uint64_t a6, void (*a7)(void, void), void (*a8)(char *, uint64_t))
{
  v47 = a8;
  v13 = type metadata accessor for DispatchWorkItemFlags();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v43 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for DispatchQoS();
  v42 = *(v44 - 8);
  __chkstk_darwin(v44);
  v41 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for DispatchTime();
  v40 = *(v46 - 8);
  __chkstk_darwin(v46);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v45 = &v36 - v20;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v22 = result;
    v38 = v14;
    v39 = v13;
    v23 = COERCE_DOUBLE(a3(a1));
    v25 = v24;
    sub_100095588();
    sub_100095588();
    v26 = swift_allocObject();
    v26[2] = a5;
    v26[3] = a6;
    memcpy(v26 + 4, __src, 0x48uLL);
    v26[13] = v22;
    v26[14] = a7;
    v27 = v47;
    v26[15] = v47;
    if (v25)
    {
      if (v23 == 0.0)
      {

        goto LABEL_11;
      }

      v28 = qword_100CA2BF0;

      if (v28 != -1)
      {
        swift_once();
      }

      sub_100242EEC(v22, sub_10026B288, v26);
    }

    else
    {
      if (v23 != 0.0)
      {
        sub_100040690();

        v37 = static OS_dispatch_queue.main.getter();
        static DispatchTime.now()();
        + infix(_:_:)();
        v47 = *(v40 + 8);
        v47(v18, v46);
        v29 = swift_allocObject();
        *(v29 + 16) = sub_10026B288;
        *(v29 + 24) = v26;
        aBlock[4] = sub_10026BBA8;
        aBlock[5] = v29;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1000742F0;
        aBlock[3] = &unk_100C47D38;
        v30 = _Block_copy(aBlock);

        v31 = v41;
        static DispatchQoS.unspecified.getter();
        aBlock[0] = _swiftEmptyArrayStorage;
        sub_10006724C(&qword_100CD81C0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
        sub_10022C350(&qword_100CB4680, &qword_100A2EC00);
        sub_100006F64(&qword_100CD81D0, &qword_100CB4680, &qword_100A2EC00, &protocol conformance descriptor for [A]);
        v32 = v43;
        v33 = v39;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v34 = v45;
        v35 = v37;
        OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
        _Block_release(v30);

        (*(v38 + 8))(v32, v33);
        (*(v42 + 8))(v31, v44);
        v47(v34, v46);
        return sub_1000180EC(v49, &qword_100CA48E0, &qword_100A5C570);
      }

      sub_10025F5F4(a5, a6, v49, v22, a7, v27);
    }

LABEL_11:

    return sub_1000180EC(v49, &qword_100CA48E0, &qword_100A5C570);
  }

  return result;
}

uint64_t sub_100255F10(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4, void (*a5)(uint64_t, void), uint64_t a6, void (*a7)(void, void), void (*a8)(char *, uint64_t))
{
  v47 = a8;
  v13 = type metadata accessor for DispatchWorkItemFlags();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v43 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for DispatchQoS();
  v42 = *(v44 - 8);
  __chkstk_darwin(v44);
  v41 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for DispatchTime();
  v40 = *(v46 - 8);
  __chkstk_darwin(v46);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v45 = &v36 - v20;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v22 = result;
    v38 = v14;
    v39 = v13;
    v23 = COERCE_DOUBLE(a3(a1));
    v25 = v24;
    sub_100095588();
    sub_100095588();
    v26 = swift_allocObject();
    v26[2] = a5;
    v26[3] = a6;
    memcpy(v26 + 4, __src, 0x48uLL);
    v26[13] = v22;
    v26[14] = a7;
    v27 = v47;
    v26[15] = v47;
    if (v25)
    {
      if (v23 == 0.0)
      {

        goto LABEL_11;
      }

      v28 = qword_100CA2BF0;

      if (v28 != -1)
      {
        swift_once();
      }

      sub_10024325C(v22, sub_10026B384, v26);
    }

    else
    {
      if (v23 != 0.0)
      {
        sub_100040690();

        v37 = static OS_dispatch_queue.main.getter();
        static DispatchTime.now()();
        + infix(_:_:)();
        v47 = *(v40 + 8);
        v47(v18, v46);
        v29 = swift_allocObject();
        *(v29 + 16) = sub_10026B384;
        *(v29 + 24) = v26;
        aBlock[4] = sub_10026BBA8;
        aBlock[5] = v29;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1000742F0;
        aBlock[3] = &unk_100C48440;
        v30 = _Block_copy(aBlock);

        v31 = v41;
        static DispatchQoS.unspecified.getter();
        aBlock[0] = _swiftEmptyArrayStorage;
        sub_10006724C(&qword_100CD81C0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
        sub_10022C350(&qword_100CB4680, &qword_100A2EC00);
        sub_100006F64(&qword_100CD81D0, &qword_100CB4680, &qword_100A2EC00, &protocol conformance descriptor for [A]);
        v32 = v43;
        v33 = v39;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v34 = v45;
        v35 = v37;
        OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
        _Block_release(v30);

        (*(v38 + 8))(v32, v33);
        (*(v42 + 8))(v31, v44);
        v47(v34, v46);
        return sub_1000180EC(v49, &qword_100CA48E0, &qword_100A5C570);
      }

      sub_10026124C(a5, a6, v49, v22, a7, v27);
    }

LABEL_11:

    return sub_1000180EC(v49, &qword_100CA48E0, &qword_100A5C570);
  }

  return result;
}

uint64_t sub_100256598(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4, void *(*a5)(uint64_t *__return_ptr, uint64_t, void, double), uint64_t a6, void (*a7)(uint64_t *, void), void (*a8)(char *, uint64_t))
{
  v47 = a8;
  v13 = type metadata accessor for DispatchWorkItemFlags();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v43 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for DispatchQoS();
  v42 = *(v44 - 8);
  __chkstk_darwin(v44);
  v41 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for DispatchTime();
  v40 = *(v46 - 8);
  __chkstk_darwin(v46);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v45 = &v36 - v20;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v22 = result;
    v38 = v14;
    v39 = v13;
    v23 = COERCE_DOUBLE(a3(a1));
    v25 = v24;
    sub_100095588();
    sub_100095588();
    v26 = swift_allocObject();
    v26[2] = a5;
    v26[3] = a6;
    memcpy(v26 + 4, __src, 0x48uLL);
    v26[13] = v22;
    v26[14] = a7;
    v27 = v47;
    v26[15] = v47;
    if (v25)
    {
      if (v23 == 0.0)
      {

        goto LABEL_11;
      }

      v28 = qword_100CA2BF0;

      if (v28 != -1)
      {
        swift_once();
      }

      sub_1002435D4(v22, sub_10026B49C, v26);
    }

    else
    {
      if (v23 != 0.0)
      {
        sub_100040690();

        v37 = static OS_dispatch_queue.main.getter();
        static DispatchTime.now()();
        + infix(_:_:)();
        v47 = *(v40 + 8);
        v47(v18, v46);
        v29 = swift_allocObject();
        *(v29 + 16) = sub_10026B49C;
        *(v29 + 24) = v26;
        aBlock[4] = sub_10026BBA8;
        aBlock[5] = v29;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1000742F0;
        aBlock[3] = &unk_100C485A8;
        v30 = _Block_copy(aBlock);

        v31 = v41;
        static DispatchQoS.unspecified.getter();
        aBlock[0] = _swiftEmptyArrayStorage;
        sub_10006724C(&qword_100CD81C0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
        sub_10022C350(&qword_100CB4680, &qword_100A2EC00);
        sub_100006F64(&qword_100CD81D0, &qword_100CB4680, &qword_100A2EC00, &protocol conformance descriptor for [A]);
        v32 = v43;
        v33 = v39;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v34 = v45;
        v35 = v37;
        OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
        _Block_release(v30);

        (*(v38 + 8))(v32, v33);
        (*(v42 + 8))(v31, v44);
        v47(v34, v46);
        return sub_1000180EC(v49, &qword_100CA48E0, &qword_100A5C570);
      }

      sub_100261BC4(a5, a6, v49, v22, a7, v27);
    }

LABEL_11:

    return sub_1000180EC(v49, &qword_100CA48E0, &qword_100A5C570);
  }

  return result;
}

uint64_t sub_100256C20(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4, void (*a5)(uint64_t, void), uint64_t a6, void (*a7)(uint64_t *__return_ptr, uint64_t, void), void (*a8)(char *, uint64_t))
{
  v47 = a8;
  v13 = type metadata accessor for DispatchWorkItemFlags();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v43 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for DispatchQoS();
  v42 = *(v44 - 8);
  __chkstk_darwin(v44);
  v41 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for DispatchTime();
  v40 = *(v46 - 8);
  __chkstk_darwin(v46);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v45 = &v36 - v20;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v22 = result;
    v38 = v14;
    v39 = v13;
    v23 = COERCE_DOUBLE(a3(a1));
    v25 = v24;
    sub_100095588();
    sub_100095588();
    v26 = swift_allocObject();
    v26[2] = a5;
    v26[3] = a6;
    memcpy(v26 + 4, __src, 0x48uLL);
    v26[13] = v22;
    v26[14] = a7;
    v27 = v47;
    v26[15] = v47;
    if (v25)
    {
      if (v23 == 0.0)
      {

        goto LABEL_11;
      }

      v28 = qword_100CA2BF0;

      if (v28 != -1)
      {
        swift_once();
      }

      sub_100243948(v22, sub_10026B57C, v26);
    }

    else
    {
      if (v23 != 0.0)
      {
        sub_100040690();

        v37 = static OS_dispatch_queue.main.getter();
        static DispatchTime.now()();
        + infix(_:_:)();
        v47 = *(v40 + 8);
        v47(v18, v46);
        v29 = swift_allocObject();
        *(v29 + 16) = sub_10026B57C;
        *(v29 + 24) = v26;
        aBlock[4] = sub_10026BBA8;
        aBlock[5] = v29;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1000742F0;
        aBlock[3] = &unk_100C48710;
        v30 = _Block_copy(aBlock);

        v31 = v41;
        static DispatchQoS.unspecified.getter();
        aBlock[0] = _swiftEmptyArrayStorage;
        sub_10006724C(&qword_100CD81C0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
        sub_10022C350(&qword_100CB4680, &qword_100A2EC00);
        sub_100006F64(&qword_100CD81D0, &qword_100CB4680, &qword_100A2EC00, &protocol conformance descriptor for [A]);
        v32 = v43;
        v33 = v39;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v34 = v45;
        v35 = v37;
        OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
        _Block_release(v30);

        (*(v38 + 8))(v32, v33);
        (*(v42 + 8))(v31, v44);
        v47(v34, v46);
        return sub_1000180EC(v49, &qword_100CA48E0, &qword_100A5C570);
      }

      sub_1002621C4(a5, a6, v49, v22, a7, v27);
    }

LABEL_11:

    return sub_1000180EC(v49, &qword_100CA48E0, &qword_100A5C570);
  }

  return result;
}

uint64_t sub_1002572A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4, void (*a5)(uint64_t, void), uint64_t a6, void (*a7)(char *, void), void (*a8)(char *, uint64_t))
{
  v47 = a8;
  v13 = type metadata accessor for DispatchWorkItemFlags();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v43 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for DispatchQoS();
  v42 = *(v44 - 8);
  __chkstk_darwin(v44);
  v41 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for DispatchTime();
  v40 = *(v46 - 8);
  __chkstk_darwin(v46);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v45 = &v36 - v20;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v22 = result;
    v38 = v14;
    v39 = v13;
    v23 = COERCE_DOUBLE(a3(a1));
    v25 = v24;
    sub_100095588();
    sub_100095588();
    v26 = swift_allocObject();
    v26[2] = a5;
    v26[3] = a6;
    memcpy(v26 + 4, __src, 0x48uLL);
    v26[13] = v22;
    v26[14] = a7;
    v27 = v47;
    v26[15] = v47;
    if (v25)
    {
      if (v23 == 0.0)
      {

        goto LABEL_11;
      }

      v28 = qword_100CA2BF0;

      if (v28 != -1)
      {
        swift_once();
      }

      sub_100243CB8(v22, sub_10026B63C, v26);
    }

    else
    {
      if (v23 != 0.0)
      {
        sub_100040690();

        v37 = static OS_dispatch_queue.main.getter();
        static DispatchTime.now()();
        + infix(_:_:)();
        v47 = *(v40 + 8);
        v47(v18, v46);
        v29 = swift_allocObject();
        *(v29 + 16) = sub_10026B63C;
        *(v29 + 24) = v26;
        aBlock[4] = sub_10026BBA8;
        aBlock[5] = v29;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1000742F0;
        aBlock[3] = &unk_100C489E0;
        v30 = _Block_copy(aBlock);

        v31 = v41;
        static DispatchQoS.unspecified.getter();
        aBlock[0] = _swiftEmptyArrayStorage;
        sub_10006724C(&qword_100CD81C0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
        sub_10022C350(&qword_100CB4680, &qword_100A2EC00);
        sub_100006F64(&qword_100CD81D0, &qword_100CB4680, &qword_100A2EC00, &protocol conformance descriptor for [A]);
        v32 = v43;
        v33 = v39;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v34 = v45;
        v35 = v37;
        OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
        _Block_release(v30);

        (*(v38 + 8))(v32, v33);
        (*(v42 + 8))(v31, v44);
        v47(v34, v46);
        return sub_1000180EC(v49, &qword_100CA48E0, &qword_100A5C570);
      }

      sub_100263084(a5, a6, v49, v22, a7, v27);
    }

LABEL_11:

    return sub_1000180EC(v49, &qword_100CA48E0, &qword_100A5C570);
  }

  return result;
}

uint64_t sub_100257930(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4, void (*a5)(uint64_t, void), uint64_t a6, void (*a7)(void, void), void (*a8)(char *, uint64_t))
{
  v47 = a8;
  v13 = type metadata accessor for DispatchWorkItemFlags();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v43 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for DispatchQoS();
  v42 = *(v44 - 8);
  __chkstk_darwin(v44);
  v41 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for DispatchTime();
  v40 = *(v46 - 8);
  __chkstk_darwin(v46);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v45 = &v36 - v20;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v22 = result;
    v38 = v14;
    v39 = v13;
    v23 = COERCE_DOUBLE(a3(a1));
    v25 = v24;
    sub_100095588();
    sub_100095588();
    v26 = swift_allocObject();
    v26[2] = a5;
    v26[3] = a6;
    memcpy(v26 + 4, __src, 0x48uLL);
    v26[13] = v22;
    v26[14] = a7;
    v27 = v47;
    v26[15] = v47;
    if (v25)
    {
      if (v23 == 0.0)
      {

        goto LABEL_11;
      }

      v28 = qword_100CA2BF0;

      if (v28 != -1)
      {
        swift_once();
      }

      sub_100244028(v22, sub_10026B6A8, v26);
    }

    else
    {
      if (v23 != 0.0)
      {
        sub_100040690();

        v37 = static OS_dispatch_queue.main.getter();
        static DispatchTime.now()();
        + infix(_:_:)();
        v47 = *(v40 + 8);
        v47(v18, v46);
        v29 = swift_allocObject();
        *(v29 + 16) = sub_10026B6A8;
        *(v29 + 24) = v26;
        aBlock[4] = sub_10026BBA8;
        aBlock[5] = v29;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1000742F0;
        aBlock[3] = &unk_100C48B48;
        v30 = _Block_copy(aBlock);

        v31 = v41;
        static DispatchQoS.unspecified.getter();
        aBlock[0] = _swiftEmptyArrayStorage;
        sub_10006724C(&qword_100CD81C0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
        sub_10022C350(&qword_100CB4680, &qword_100A2EC00);
        sub_100006F64(&qword_100CD81D0, &qword_100CB4680, &qword_100A2EC00, &protocol conformance descriptor for [A]);
        v32 = v43;
        v33 = v39;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v34 = v45;
        v35 = v37;
        OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
        _Block_release(v30);

        (*(v38 + 8))(v32, v33);
        (*(v42 + 8))(v31, v44);
        v47(v34, v46);
        return sub_1000180EC(v49, &qword_100CA48E0, &qword_100A5C570);
      }

      sub_100263AB8(a5, a6, v49, v22, a7, v27);
    }

LABEL_11:

    return sub_1000180EC(v49, &qword_100CA48E0, &qword_100A5C570);
  }

  return result;
}

uint64_t sub_100257FB8(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4, void (*a5)(uint64_t, void), uint64_t a6, void (*a7)(void, void), void (*a8)(char *, uint64_t))
{
  v47 = a8;
  v13 = type metadata accessor for DispatchWorkItemFlags();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v43 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for DispatchQoS();
  v42 = *(v44 - 8);
  __chkstk_darwin(v44);
  v41 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for DispatchTime();
  v40 = *(v46 - 8);
  __chkstk_darwin(v46);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v45 = &v36 - v20;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v22 = result;
    v38 = v14;
    v39 = v13;
    v23 = COERCE_DOUBLE(a3(a1));
    v25 = v24;
    sub_100095588();
    sub_100095588();
    v26 = swift_allocObject();
    v26[2] = a5;
    v26[3] = a6;
    memcpy(v26 + 4, __src, 0x48uLL);
    v26[13] = v22;
    v26[14] = a7;
    v27 = v47;
    v26[15] = v47;
    if (v25)
    {
      if (v23 == 0.0)
      {

        goto LABEL_11;
      }

      v28 = qword_100CA2BF0;

      if (v28 != -1)
      {
        swift_once();
      }

      sub_100244398(v22, sub_10026B714, v26);
    }

    else
    {
      if (v23 != 0.0)
      {
        sub_100040690();

        v37 = static OS_dispatch_queue.main.getter();
        static DispatchTime.now()();
        + infix(_:_:)();
        v47 = *(v40 + 8);
        v47(v18, v46);
        v29 = swift_allocObject();
        *(v29 + 16) = sub_10026B714;
        *(v29 + 24) = v26;
        aBlock[4] = sub_10026BBA8;
        aBlock[5] = v29;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1000742F0;
        aBlock[3] = &unk_100C48CB0;
        v30 = _Block_copy(aBlock);

        v31 = v41;
        static DispatchQoS.unspecified.getter();
        aBlock[0] = _swiftEmptyArrayStorage;
        sub_10006724C(&qword_100CD81C0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
        sub_10022C350(&qword_100CB4680, &qword_100A2EC00);
        sub_100006F64(&qword_100CD81D0, &qword_100CB4680, &qword_100A2EC00, &protocol conformance descriptor for [A]);
        v32 = v43;
        v33 = v39;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v34 = v45;
        v35 = v37;
        OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
        _Block_release(v30);

        (*(v38 + 8))(v32, v33);
        (*(v42 + 8))(v31, v44);
        v47(v34, v46);
        return sub_1000180EC(v49, &qword_100CA48E0, &qword_100A5C570);
      }

      sub_10026442C(a5, a6, v49, v22, a7, v27);
    }

LABEL_11:

    return sub_1000180EC(v49, &qword_100CA48E0, &qword_100A5C570);
  }

  return result;
}

uint64_t sub_100258640(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4, void (*a5)(id *__return_ptr, uint64_t, void), uint64_t a6, void *(*a7)(id *__return_ptr, void *, void), void (*a8)(char *, uint64_t))
{
  v46 = a8;
  v13 = type metadata accessor for DispatchWorkItemFlags();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v42 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for DispatchQoS();
  v41 = *(v43 - 8);
  __chkstk_darwin(v43);
  v40 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for DispatchTime();
  v39 = *(v45 - 8);
  __chkstk_darwin(v45);
  v18 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v44 = &v35 - v20;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v22 = result;
    v37 = v14;
    v38 = v13;
    v23 = COERCE_DOUBLE(a3(a1));
    v25 = v24;
    sub_100095588();
    sub_100095588();
    v26 = swift_allocObject();
    v26[2] = a5;
    v26[3] = a6;
    memcpy(v26 + 4, __src, 0x48uLL);
    v26[13] = v22;
    v26[14] = a7;
    v26[15] = v46;
    if (v25)
    {
      if (v23 == 0.0)
      {

        goto LABEL_11;
      }

      v27 = qword_100CA2BF0;

      if (v27 != -1)
      {
        swift_once();
      }

      sub_100244708(v22, sub_10026B7F0, v26);
    }

    else
    {
      if (v23 != 0.0)
      {
        sub_100040690();

        v36 = static OS_dispatch_queue.main.getter();
        static DispatchTime.now()();
        + infix(_:_:)();
        v46 = *(v39 + 8);
        v46(v18, v45);
        v28 = swift_allocObject();
        *(v28 + 16) = sub_10026B7F0;
        *(v28 + 24) = v26;
        aBlock[4] = sub_10026BBA8;
        aBlock[5] = v28;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1000742F0;
        aBlock[3] = &unk_100C48E18;
        v29 = _Block_copy(aBlock);

        v30 = v40;
        static DispatchQoS.unspecified.getter();
        aBlock[0] = _swiftEmptyArrayStorage;
        sub_10006724C(&qword_100CD81C0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
        sub_10022C350(&qword_100CB4680, &qword_100A2EC00);
        sub_100006F64(&qword_100CD81D0, &qword_100CB4680, &qword_100A2EC00, &protocol conformance descriptor for [A]);
        v31 = v42;
        v32 = v38;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v33 = v44;
        v34 = v36;
        OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
        _Block_release(v29);

        (*(v37 + 8))(v31, v32);
        (*(v41 + 8))(v30, v43);
        v46(v33, v45);
        return sub_1000180EC(v48, &qword_100CA48E0, &qword_100A5C570);
      }

      sub_100264DA0(a5, a6, v48, v22, a7);
    }

LABEL_11:

    return sub_1000180EC(v48, &qword_100CA48E0, &qword_100A5C570);
  }

  return result;
}

uint64_t sub_100258CC8(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4, void (*a5)(uint64_t, void), uint64_t a6, void (*a7)(uint64_t, void), void (*a8)(char *, uint64_t))
{
  v47 = a8;
  v13 = type metadata accessor for DispatchWorkItemFlags();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v43 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for DispatchQoS();
  v42 = *(v44 - 8);
  __chkstk_darwin(v44);
  v41 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for DispatchTime();
  v40 = *(v46 - 8);
  __chkstk_darwin(v46);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v45 = &v36 - v20;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v22 = result;
    v38 = v14;
    v39 = v13;
    v23 = COERCE_DOUBLE(a3(a1));
    v25 = v24;
    sub_100095588();
    sub_100095588();
    v26 = swift_allocObject();
    v26[2] = a5;
    v26[3] = a6;
    memcpy(v26 + 4, __src, 0x48uLL);
    v26[13] = v22;
    v26[14] = a7;
    v27 = v47;
    v26[15] = v47;
    if (v25)
    {
      if (v23 == 0.0)
      {

        goto LABEL_11;
      }

      v28 = qword_100CA2BF0;

      if (v28 != -1)
      {
        swift_once();
      }

      sub_100244A7C(v22, sub_10026B8E4, v26);
    }

    else
    {
      if (v23 != 0.0)
      {
        sub_100040690();

        v37 = static OS_dispatch_queue.main.getter();
        static DispatchTime.now()();
        + infix(_:_:)();
        v47 = *(v40 + 8);
        v47(v18, v46);
        v29 = swift_allocObject();
        *(v29 + 16) = sub_10026B8E4;
        *(v29 + 24) = v26;
        aBlock[4] = sub_10026BBA8;
        aBlock[5] = v29;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1000742F0;
        aBlock[3] = &unk_100C48F80;
        v30 = _Block_copy(aBlock);

        v31 = v41;
        static DispatchQoS.unspecified.getter();
        aBlock[0] = _swiftEmptyArrayStorage;
        sub_10006724C(&qword_100CD81C0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
        sub_10022C350(&qword_100CB4680, &qword_100A2EC00);
        sub_100006F64(&qword_100CD81D0, &qword_100CB4680, &qword_100A2EC00, &protocol conformance descriptor for [A]);
        v32 = v43;
        v33 = v39;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v34 = v45;
        v35 = v37;
        OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
        _Block_release(v30);

        (*(v38 + 8))(v32, v33);
        (*(v42 + 8))(v31, v44);
        v47(v34, v46);
        return sub_1000180EC(v49, &qword_100CA48E0, &qword_100A5C570);
      }

      sub_1002651CC(a5, a6, v49, v22, a7, v27);
    }

LABEL_11:

    return sub_1000180EC(v49, &qword_100CA48E0, &qword_100A5C570);
  }

  return result;
}

uint64_t sub_100259350(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4, void (*a5)(uint64_t, void), uint64_t a6, void (*a7)(void, void), void (*a8)(char *, uint64_t))
{
  v47 = a8;
  v13 = type metadata accessor for DispatchWorkItemFlags();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v43 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for DispatchQoS();
  v42 = *(v44 - 8);
  __chkstk_darwin(v44);
  v41 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for DispatchTime();
  v40 = *(v46 - 8);
  __chkstk_darwin(v46);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v45 = &v36 - v20;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v22 = result;
    v38 = v14;
    v39 = v13;
    v23 = COERCE_DOUBLE(a3(a1));
    v25 = v24;
    sub_100095588();
    sub_100095588();
    v26 = swift_allocObject();
    v26[2] = a5;
    v26[3] = a6;
    memcpy(v26 + 4, __src, 0x48uLL);
    v26[13] = v22;
    v26[14] = a7;
    v27 = v47;
    v26[15] = v47;
    if (v25)
    {
      if (v23 == 0.0)
      {

        goto LABEL_11;
      }

      v28 = qword_100CA2BF0;

      if (v28 != -1)
      {
        swift_once();
      }

      sub_100244DEC(v22, sub_10026B950, v26);
    }

    else
    {
      if (v23 != 0.0)
      {
        sub_100040690();

        v37 = static OS_dispatch_queue.main.getter();
        static DispatchTime.now()();
        + infix(_:_:)();
        v47 = *(v40 + 8);
        v47(v18, v46);
        v29 = swift_allocObject();
        *(v29 + 16) = sub_10026B950;
        *(v29 + 24) = v26;
        aBlock[4] = sub_10026BBA8;
        aBlock[5] = v29;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1000742F0;
        aBlock[3] = &unk_100C490E8;
        v30 = _Block_copy(aBlock);

        v31 = v41;
        static DispatchQoS.unspecified.getter();
        aBlock[0] = _swiftEmptyArrayStorage;
        sub_10006724C(&qword_100CD81C0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
        sub_10022C350(&qword_100CB4680, &qword_100A2EC00);
        sub_100006F64(&qword_100CD81D0, &qword_100CB4680, &qword_100A2EC00, &protocol conformance descriptor for [A]);
        v32 = v43;
        v33 = v39;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v34 = v45;
        v35 = v37;
        OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
        _Block_release(v30);

        (*(v38 + 8))(v32, v33);
        (*(v42 + 8))(v31, v44);
        v47(v34, v46);
        return sub_1000180EC(v49, &qword_100CA48E0, &qword_100A5C570);
      }

      sub_100265B84(a5, a6, v49, v22, a7, v27);
    }

LABEL_11:

    return sub_1000180EC(v49, &qword_100CA48E0, &qword_100A5C570);
  }

  return result;
}

uint64_t sub_1002599D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4, void (*a5)(uint64_t, void), uint64_t a6, void (*a7)(void *__return_ptr, uint64_t, void), void (*a8)(char *, uint64_t))
{
  v47 = a8;
  v13 = type metadata accessor for DispatchWorkItemFlags();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v43 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for DispatchQoS();
  v42 = *(v44 - 8);
  __chkstk_darwin(v44);
  v41 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for DispatchTime();
  v40 = *(v46 - 8);
  __chkstk_darwin(v46);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v45 = &v36 - v20;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v22 = result;
    v38 = v14;
    v39 = v13;
    v23 = COERCE_DOUBLE(a3(a1));
    v25 = v24;
    sub_100095588();
    sub_100095588();
    v26 = swift_allocObject();
    v26[2] = a5;
    v26[3] = a6;
    memcpy(v26 + 4, __src, 0x48uLL);
    v26[13] = v22;
    v26[14] = a7;
    v27 = v47;
    v26[15] = v47;
    if (v25)
    {
      if (v23 == 0.0)
      {

        goto LABEL_11;
      }

      v28 = qword_100CA2BF0;

      if (v28 != -1)
      {
        swift_once();
      }

      sub_10024515C(v22, sub_10026BA08, v26);
    }

    else
    {
      if (v23 != 0.0)
      {
        sub_100040690();

        v37 = static OS_dispatch_queue.main.getter();
        static DispatchTime.now()();
        + infix(_:_:)();
        v47 = *(v40 + 8);
        v47(v18, v46);
        v29 = swift_allocObject();
        *(v29 + 16) = sub_10026BA08;
        *(v29 + 24) = v26;
        aBlock[4] = sub_10026BBA8;
        aBlock[5] = v29;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1000742F0;
        aBlock[3] = &unk_100C49250;
        v30 = _Block_copy(aBlock);

        v31 = v41;
        static DispatchQoS.unspecified.getter();
        aBlock[0] = _swiftEmptyArrayStorage;
        sub_10006724C(&qword_100CD81C0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
        sub_10022C350(&qword_100CB4680, &qword_100A2EC00);
        sub_100006F64(&qword_100CD81D0, &qword_100CB4680, &qword_100A2EC00, &protocol conformance descriptor for [A]);
        v32 = v43;
        v33 = v39;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v34 = v45;
        v35 = v37;
        OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
        _Block_release(v30);

        (*(v38 + 8))(v32, v33);
        (*(v42 + 8))(v31, v44);
        v47(v34, v46);
        return sub_1000180EC(v49, &qword_100CA48E0, &qword_100A5C570);
      }

      sub_1002664F8(a5, a6, v49, v22, a7, v27);
    }

LABEL_11:

    return sub_1000180EC(v49, &qword_100CA48E0, &qword_100A5C570);
  }

  return result;
}

void *sub_10025A060(void *(*a1)(uint64_t *__return_ptr, uint64_t, void, double), uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *, void), uint64_t a6)
{
  v33 = a6;
  v34 = sub_10022C350(&qword_100CA48D8, &unk_100A2EBF0);
  __chkstk_darwin(v34);
  v10 = (&v31 - v9);
  v11 = sub_10022C350(&qword_100CA48E8, &qword_100A2EC08);
  __chkstk_darwin(v11 - 8);
  v13 = &v31 - v12;
  v14 = type metadata accessor for AirQualityDetailViewModel(0);
  __chkstk_darwin(v14);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v17);
  v20 = &v31 - v19;
  result = a1(v35, a3 + 64, 0, v18);
  v22 = v35[0];
  if (!v35[0])
  {
    return result;
  }

  v32 = v10;
  v36 = v35[0];

  v23 = sub_1002454CC();
  if (v23)
  {
    if (v22 == v23)
    {

LABEL_7:
    }

    type metadata accessor for MainState._Storage(0);
    sub_100073248();
    v25 = v24;

    if (v25)
    {
      goto LABEL_7;
    }
  }

  else
  {
  }

  a5(&v36, 0);
  if (sub_100024D10(v13, 1, v14) == 1)
  {
    sub_1000180EC(v13, &qword_100CA48E8, &qword_100A2EC08);
LABEL_14:
    sub_10022C350(&qword_100CA48F0, &qword_100A2EC10);
    *v32 = v22;

    sub_1009883E0();

    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    sub_100097AA4();
    return swift_endAccess();
  }

  sub_1000A0AC0();
  sub_1009883E0();
  v26 = sub_1006300A0(v20, v16);
  sub_1001AFB34(v16, type metadata accessor for AirQualityDetailViewModel);
  if (v26)
  {
    sub_1001AFB34(v20, type metadata accessor for AirQualityDetailViewModel);
    goto LABEL_14;
  }

  if (qword_100CA2740 != -1)
  {
    swift_once();
  }

  v27 = type metadata accessor for Logger();
  sub_10000703C(v27, qword_100D90C18);
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v35[0] = swift_slowAlloc();
    *v30 = 136446466;
    *(v30 + 4) = sub_100078694(0x746174536E69614DLL, 0xE900000000000065, v35);
    *(v30 + 12) = 2082;
    *(v30 + 14) = sub_100078694(0xD000000000000019, 0x8000000100ABBD50, v35);
    _os_log_impl(&_mh_execute_header, v28, v29, "Selector observed model difference for %{public}s, %{public}s; views will update", v30, 0x16u);
    swift_arrayDestroy();
  }

  sub_10022C350(&qword_100CA48F0, &qword_100A2EC10);
  *v32 = v22;
  sub_1001A7BF8();
  swift_storeEnumTagMultiPayload();
  swift_beginAccess();

  sub_100097AA4();
  swift_endAccess();
  sub_10022C350(&qword_100CA48C8, &unk_100A2EBE0);
  sub_100006F64(&qword_100CA48F8, &qword_100CA48C8, &unk_100A2EBE0, asc_100AA1480);
  ObservableObject<>.objectWillChange.getter();
  ObservableObjectPublisher.send()();

  sub_1001AFB34(v20, type metadata accessor for AirQualityDetailViewModel);
}

uint64_t sub_10025A658(void (*a1)(uint64_t, void), uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void, void), uint64_t a6)
{
  v52 = a6;
  v53 = a5;
  v56 = a4;
  v57 = a2;
  v58 = a1;
  v54 = sub_10022C350(&qword_100CA4920, &unk_100A9DFA0);
  __chkstk_darwin(v54);
  v55 = &v48 - v7;
  v8 = sub_10022C350(&qword_100CA4928, &qword_100A2EC40);
  __chkstk_darwin(v8 - 8);
  v51 = &v48 - v9;
  v50 = type metadata accessor for MoonDetailViewModel(0);
  __chkstk_darwin(v50);
  v48 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v49 = &v48 - v12;
  v13 = sub_10022C350(&qword_100CA4930, &qword_100A2EC48);
  __chkstk_darwin(v13);
  v15 = &v48 - v14;
  v16 = sub_10022C350(&qword_100CA4938, &qword_100A2EC50);
  __chkstk_darwin(v16 - 8);
  v18 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v48 - v20;
  __chkstk_darwin(v22);
  v24 = &v48 - v23;
  __chkstk_darwin(v25);
  v27 = &v48 - v26;
  v28 = type metadata accessor for MoonDetailInput(0);
  __chkstk_darwin(v28);
  v30 = &v48 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __chkstk_darwin(v31);
  v34 = &v48 - v33;
  (v58)(a3 + 64, 0, v32);
  if (sub_100024D10(v27, 1, v28) == 1)
  {
    return sub_1000180EC(v27, &qword_100CA4938, &qword_100A2EC50);
  }

  sub_1000A0AC0();
  v58 = v34;
  sub_1001A7BF8();
  sub_10001B350(v24, 0, 1, v28);
  sub_100245758(v21);
  v36 = *(v13 + 48);
  sub_100095588();
  sub_100095588();
  if (sub_100024D10(v15, 1, v28) != 1)
  {
    sub_100095588();
    if (sub_100024D10(&v15[v36], 1, v28) != 1)
    {
      sub_1000A0AC0();
      v42 = sub_1002B5F34(v18, v30);
      sub_1001AFB34(v30, type metadata accessor for MoonDetailInput);
      sub_1000180EC(v21, &qword_100CA4938, &qword_100A2EC50);
      sub_1000180EC(v24, &qword_100CA4938, &qword_100A2EC50);
      sub_1001AFB34(v18, type metadata accessor for MoonDetailInput);
      sub_1000180EC(v15, &qword_100CA4938, &qword_100A2EC50);
      if (v42)
      {
        goto LABEL_15;
      }

LABEL_9:
      v37 = v51;
      v38 = v58;
      v53(v58, 0);
      if (sub_100024D10(v37, 1, v50) == 1)
      {
        sub_1000180EC(v37, &qword_100CA4928, &qword_100A2EC40);
      }

      else
      {
        v39 = v49;
        sub_1000A0AC0();
        v40 = v48;
        sub_1009888D8();
        v41 = sub_100509EAC(v39, v40);
        sub_1001AFB34(v40, type metadata accessor for MoonDetailViewModel);
        if ((v41 & 1) == 0)
        {
          if (qword_100CA2740 != -1)
          {
            swift_once();
          }

          v44 = type metadata accessor for Logger();
          sub_10000703C(v44, qword_100D90C18);
          v45 = Logger.logObject.getter();
          v46 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v45, v46))
          {
            v47 = swift_slowAlloc();
            v59[0] = swift_slowAlloc();
            *v47 = 136446466;
            *(v47 + 4) = sub_100078694(0x617465446E6F6F4DLL, 0xEF7475706E496C69, v59);
            *(v47 + 12) = 2082;
            *(v47 + 14) = sub_100078694(0xD000000000000013, 0x8000000100ABBE40, v59);
            _os_log_impl(&_mh_execute_header, v45, v46, "Selector observed model difference for %{public}s, %{public}s; views will update", v47, 0x16u);
            swift_arrayDestroy();
          }

          sub_10022C350(&qword_100CA4940, &qword_100A2EC58);
          sub_1001A7BF8();
          sub_1001A7BF8();
          swift_storeEnumTagMultiPayload();
          swift_beginAccess();
          sub_100097AA4();
          swift_endAccess();
          sub_10022C350(&qword_100CA4948, &qword_100A2EC60);
          sub_100006F64(&qword_100CA4950, &qword_100CA4948, &qword_100A2EC60, asc_100AA1480);
          ObservableObject<>.objectWillChange.getter();
          ObservableObjectPublisher.send()();

          sub_1001AFB34(v39, type metadata accessor for MoonDetailViewModel);
          v43 = v38;
          return sub_1001AFB34(v43, type metadata accessor for MoonDetailInput);
        }

        sub_1001AFB34(v39, type metadata accessor for MoonDetailViewModel);
      }

      sub_10022C350(&qword_100CA4940, &qword_100A2EC58);
      sub_1001A7BF8();
      sub_1009888D8();
      sub_1001AFB34(v38, type metadata accessor for MoonDetailInput);
      swift_storeEnumTagMultiPayload();
      swift_beginAccess();
      sub_100097AA4();
      return swift_endAccess();
    }

    sub_1000180EC(v21, &qword_100CA4938, &qword_100A2EC50);
    sub_1000180EC(v24, &qword_100CA4938, &qword_100A2EC50);
    sub_1001AFB34(v18, type metadata accessor for MoonDetailInput);
LABEL_8:
    sub_1000180EC(v15, &qword_100CA4930, &qword_100A2EC48);
    goto LABEL_9;
  }

  sub_1000180EC(v21, &qword_100CA4938, &qword_100A2EC50);
  sub_1000180EC(v24, &qword_100CA4938, &qword_100A2EC50);
  if (sub_100024D10(&v15[v36], 1, v28) != 1)
  {
    goto LABEL_8;
  }

  sub_1000180EC(v15, &qword_100CA4938, &qword_100A2EC50);
LABEL_15:
  v43 = v58;
  return sub_1001AFB34(v43, type metadata accessor for MoonDetailInput);
}

void *sub_10025AFD0(void *(*a1)(uint64_t *__return_ptr, uint64_t, void), uint64_t a2, uint64_t a3, _BYTE *a4, void (*a5)(void *__return_ptr, uint64_t *, void))
{
  result = a1(__dst, a3 + 64, 0);
  v8 = __dst[0];
  if (!__dst[0])
  {
    return result;
  }

  v24 = __dst[0];

  v9 = sub_100245AB0();
  if (v9)
  {
    if (v8 == v9)
    {

LABEL_7:
    }

    type metadata accessor for MainState._Storage(0);
    sub_100073248();
    v11 = v10;

    if (v11)
    {
      goto LABEL_7;
    }
  }

  else
  {
  }

  a5(__src, &v24, 0);
  if ((~__src[0] & 0xF000000000000006) == 0)
  {
    memcpy(__dst, __src, 0x60uLL);
    v12 = __dst;
LABEL_14:
    sub_1000180EC(v12, &qword_100CA4958, &qword_100A2EC68);
    v21[0] = v8;

    sub_1009880C4();

    LOBYTE(v21[13]) = 1;
    swift_beginAccess();
    memcpy(__dst, a4 + 16, 0x69uLL);
    memcpy(a4 + 16, v21, 0x69uLL);
    return sub_1000180EC(__dst, &qword_100CA4960, &unk_100A2EC70);
  }

  memcpy(v18, __src, sizeof(v18));
  memcpy(v19, __src, sizeof(v19));
  memcpy(v25, __src, sizeof(v25));
  sub_1009880C4();
  memcpy(v26, __dst, sizeof(v26));
  v13 = sub_1003C4094(v25, v26);
  memcpy(v20, __dst, sizeof(v20));
  sub_10026AD10(v20);
  if (v13)
  {
    v12 = v18;
    goto LABEL_14;
  }

  if (qword_100CA2740 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_10000703C(v14, qword_100D90C18);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    __dst[0] = swift_slowAlloc();
    *v17 = 136446466;
    *(v17 + 4) = sub_100078694(0x746174536E69614DLL, 0xE900000000000065, __dst);
    *(v17 + 12) = 2082;
    *(v17 + 14) = sub_100078694(0xD000000000000016, 0x8000000100ABBE60, __dst);
    _os_log_impl(&_mh_execute_header, v15, v16, "Selector observed model difference for %{public}s, %{public}s; views will update", v17, 0x16u);
    swift_arrayDestroy();
  }

  swift_beginAccess();
  memcpy(__dst, a4 + 16, 0x69uLL);

  sub_100095588();
  *(a4 + 2) = v8;
  memcpy(a4 + 24, v19, 0x60uLL);
  a4[120] = 1;
  sub_1000180EC(__dst, &qword_100CA4960, &unk_100A2EC70);
  sub_10022C350(&qword_100CA4968, qword_100A31CE0);
  sub_100006F64(&qword_100CA4970, &qword_100CA4968, qword_100A31CE0, asc_100AA1480);
  ObservableObject<>.objectWillChange.getter();
  ObservableObjectPublisher.send()();

  sub_1000180EC(v18, &qword_100CA4958, &qword_100A2EC68);
}

uint64_t sub_10025B48C(void (*a1)(uint64_t, void), uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void, void), uint64_t a6)
{
  v52 = a6;
  v53 = a5;
  v56 = a4;
  v57 = a2;
  v58 = a1;
  v54 = sub_10022C350(&qword_100CA4978, &unk_100A2EC80);
  __chkstk_darwin(v54);
  v55 = &v48 - v7;
  v8 = sub_10022C350(&qword_100CA4980, &qword_100A983F0);
  __chkstk_darwin(v8 - 8);
  v51 = &v48 - v9;
  v50 = type metadata accessor for ConditionDetailViewModel(0);
  __chkstk_darwin(v50);
  v48 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v49 = &v48 - v12;
  v13 = sub_10022C350(&qword_100CA4988, &qword_100A2EC90);
  __chkstk_darwin(v13);
  v15 = &v48 - v14;
  v16 = sub_10022C350(&qword_100CA4990, &qword_100A2EC98);
  __chkstk_darwin(v16 - 8);
  v18 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v48 - v20;
  __chkstk_darwin(v22);
  v24 = &v48 - v23;
  __chkstk_darwin(v25);
  v27 = &v48 - v26;
  v28 = type metadata accessor for ConditionDetailInput(0);
  __chkstk_darwin(v28);
  v30 = &v48 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __chkstk_darwin(v31);
  v34 = &v48 - v33;
  (v58)(a3 + 64, 0, v32);
  if (sub_100024D10(v27, 1, v28) == 1)
  {
    return sub_1000180EC(v27, &qword_100CA4990, &qword_100A2EC98);
  }

  sub_1000A0AC0();
  v58 = v34;
  sub_1001A7BF8();
  sub_10001B350(v24, 0, 1, v28);
  sub_100245C7C(v21);
  v36 = *(v13 + 48);
  sub_100095588();
  sub_100095588();
  if (sub_100024D10(v15, 1, v28) != 1)
  {
    sub_100095588();
    if (sub_100024D10(&v15[v36], 1, v28) != 1)
    {
      sub_1000A0AC0();
      v42 = sub_10037BEA0();
      sub_1001AFB34(v30, type metadata accessor for ConditionDetailInput);
      sub_1000180EC(v21, &qword_100CA4990, &qword_100A2EC98);
      sub_1000180EC(v24, &qword_100CA4990, &qword_100A2EC98);
      sub_1001AFB34(v18, type metadata accessor for ConditionDetailInput);
      sub_1000180EC(v15, &qword_100CA4990, &qword_100A2EC98);
      if (v42)
      {
        goto LABEL_15;
      }

LABEL_9:
      v37 = v51;
      v38 = v58;
      v53(v58, 0);
      if (sub_100024D10(v37, 1, v50) == 1)
      {
        sub_1000180EC(v37, &qword_100CA4980, &qword_100A983F0);
      }

      else
      {
        v39 = v49;
        sub_1000A0AC0();
        v40 = v48;
        sub_100988DA0();
        v41 = sub_10090E960(v39, v40);
        sub_1001AFB34(v40, type metadata accessor for ConditionDetailViewModel);
        if ((v41 & 1) == 0)
        {
          if (qword_100CA2740 != -1)
          {
            swift_once();
          }

          v44 = type metadata accessor for Logger();
          sub_10000703C(v44, qword_100D90C18);
          v45 = Logger.logObject.getter();
          v46 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v45, v46))
          {
            v47 = swift_slowAlloc();
            v59[0] = swift_slowAlloc();
            *v47 = 136446466;
            *(v47 + 4) = sub_100078694(0xD000000000000014, 0x8000000100ABBE80, v59);
            *(v47 + 12) = 2082;
            *(v47 + 14) = sub_100078694(0xD000000000000018, 0x8000000100ABBEA0, v59);
            _os_log_impl(&_mh_execute_header, v45, v46, "Selector observed model difference for %{public}s, %{public}s; views will update", v47, 0x16u);
            swift_arrayDestroy();
          }

          sub_10022C350(&qword_100CA4998, &unk_100A2ECA0);
          sub_1001A7BF8();
          sub_1001A7BF8();
          swift_storeEnumTagMultiPayload();
          swift_beginAccess();
          sub_100097AA4();
          swift_endAccess();
          sub_10022C350(&qword_100CA49A0, &qword_100A41EE0);
          sub_100006F64(&qword_100CA49A8, &qword_100CA49A0, &qword_100A41EE0, asc_100AA1480);
          ObservableObject<>.objectWillChange.getter();
          ObservableObjectPublisher.send()();

          sub_1001AFB34(v39, type metadata accessor for ConditionDetailViewModel);
          v43 = v38;
          return sub_1001AFB34(v43, type metadata accessor for ConditionDetailInput);
        }

        sub_1001AFB34(v39, type metadata accessor for ConditionDetailViewModel);
      }

      sub_10022C350(&qword_100CA4998, &unk_100A2ECA0);
      sub_1001A7BF8();
      sub_100988DA0();
      sub_1001AFB34(v38, type metadata accessor for ConditionDetailInput);
      swift_storeEnumTagMultiPayload();
      swift_beginAccess();
      sub_100097AA4();
      return swift_endAccess();
    }

    sub_1000180EC(v21, &qword_100CA4990, &qword_100A2EC98);
    sub_1000180EC(v24, &qword_100CA4990, &qword_100A2EC98);
    sub_1001AFB34(v18, type metadata accessor for ConditionDetailInput);
LABEL_8:
    sub_1000180EC(v15, &qword_100CA4988, &qword_100A2EC90);
    goto LABEL_9;
  }

  sub_1000180EC(v21, &qword_100CA4990, &qword_100A2EC98);
  sub_1000180EC(v24, &qword_100CA4990, &qword_100A2EC98);
  if (sub_100024D10(&v15[v36], 1, v28) != 1)
  {
    goto LABEL_8;
  }

  sub_1000180EC(v15, &qword_100CA4990, &qword_100A2EC98);
LABEL_15:
  v43 = v58;
  return sub_1001AFB34(v43, type metadata accessor for ConditionDetailInput);
}

uint64_t sub_10025BE00(void (*a1)(__n128 *__return_ptr, uint64_t, void), uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(__n128 *, void), uint64_t a6)
{
  v39 = a6;
  v40 = a5;
  v41 = sub_10022C350(&qword_100CA49B0, &qword_100A2ECB0);
  __chkstk_darwin(v41);
  v42 = &v37 - v9;
  v10 = sub_10022C350(&qword_100CA49B8, &qword_100A2ECB8);
  __chkstk_darwin(v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for UnitsConfigurationViewModel(0);
  __chkstk_darwin(v13);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v16);
  v38 = &v37 - v18;
  (a1)(v59, a3 + 64, 0, v17);
  if (*&v59[0] == 1)
  {
    *v47 = v59[0];
    *&v47[16] = v59[1];
    *&v47[32] = v59[2];
    *&v47[42] = *(&v59[2] + 10);
    return sub_1000180EC(v47, &qword_100CA49C0, &qword_100A2ECC0);
  }

  v60 = v59[0];
  v61 = v59[1];
  v62[0] = v59[2];
  *(v62 + 10) = *(&v59[2] + 10);
  v54[0] = v59[0];
  v54[1] = v59[1];
  v55[0] = v59[2];
  *(v55 + 10) = *(&v59[2] + 10);
  v20 = *&v59[0];
  sub_10026AE78(v54, v47);
  v37 = a4;
  sub_100245FD4(v53);
  v56 = *v53;
  v57 = *&v53[16];
  v58[0] = *&v53[32];
  *(v58 + 10) = *&v53[42];
  if (*v53 == 1)
  {
    *v47 = *v53;
    *&v47[16] = *&v53[16];
    *&v47[32] = *&v53[32];
    *&v47[42] = *&v53[42];
    sub_100095588();
    sub_1000180EC(v47, &qword_100CA49C0, &qword_100A2ECC0);
    *v47 = v20;
    *&v47[8] = *(v59 + 8);
    *&v47[24] = *(&v59[1] + 8);
    *&v47[40] = *(&v59[2] + 8);
    *&v47[56] = WORD4(v59[3]);
    v48 = 1;
    v49 = *&v53[8];
    v50 = *&v53[24];
    v51 = *&v53[40];
    v52 = *&v53[56];
    sub_1000180EC(v47, &qword_100CA49C8, &qword_100A2ECC8);
  }

  else
  {
    *&v43[0] = v56;
    *(v43 + 8) = *&v53[8];
    *(&v43[1] + 8) = *&v53[24];
    *(&v43[2] + 8) = *&v53[40];
    WORD4(v43[3]) = *&v53[56];
    *&v47[42] = *(&v43[2] + 10);
    *&v47[16] = v43[1];
    *&v47[32] = v43[2];
    *v47 = v43[0];
    v67 = WORD4(v59[3]);
    v66 = *(&v59[2] + 8);
    v65 = *(&v59[1] + 8);
    v64 = *(v59 + 8);
    v63 = v20;
    sub_10026AE78(v54, v46);
    sub_100095588();
    v28 = sub_1007FCC80(&v63, v47);
    sub_1000180EC(v43, &qword_100CA49C0, &qword_100A2ECC0);
    sub_10026AED4(v54);
    v44[0] = *v53;
    v44[1] = *&v53[16];
    v45[0] = *&v53[32];
    *(v45 + 10) = *&v53[42];
    sub_1000180EC(v44, &qword_100CA49C0, &qword_100A2ECC0);
    *v46 = v20;
    *&v46[8] = *(v59 + 8);
    *&v46[24] = *(&v59[1] + 8);
    *&v46[40] = *(&v59[2] + 8);
    *&v46[56] = WORD4(v59[3]);
    sub_1000180EC(v46, &qword_100CA49C0, &qword_100A2ECC0);
    if (v28)
    {
      *v53 = v59[0];
      *&v53[16] = v59[1];
      *&v53[32] = v59[2];
      *&v53[42] = *(&v59[2] + 10);
      return sub_10026AED4(v53);
    }
  }

  v40(&v60, 0);
  if (sub_100024D10(v12, 1, v13) == 1)
  {
    sub_1000180EC(v12, &qword_100CA49B8, &qword_100A2ECB8);
LABEL_9:
    sub_10022C350(&qword_100CA49D0, &unk_100A2ECD0);
    *&v46[42] = *(v62 + 10);
    v24 = v60;
    v25 = v61;
    *v46 = v60;
    *&v46[16] = v61;
    v26 = v62[0];
    *&v46[32] = v62[0];
    v27 = v42;
    *(v42 + 42) = *(v62 + 10);
    *v27 = v24;
    v27[1] = v25;
    v27[2] = v26;
    sub_10026AE78(v46, v53);
    sub_100988F60();
    *v53 = v60;
    *&v53[16] = v61;
    *&v53[32] = v62[0];
    *&v53[42] = *(v62 + 10);
    sub_10026AED4(v53);
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    sub_100097AA4();
    return swift_endAccess();
  }

  v21 = v38;
  sub_1000A0AC0();
  sub_100988F60();
  sub_1006FEE18();
  v23 = v22;
  sub_1001AFB34(v15, type metadata accessor for UnitsConfigurationViewModel);
  if (v23)
  {
    sub_1001AFB34(v21, type metadata accessor for UnitsConfigurationViewModel);
    goto LABEL_9;
  }

  if (qword_100CA2740 != -1)
  {
    swift_once();
  }

  v29 = type metadata accessor for Logger();
  sub_10000703C(v29, qword_100D90C18);
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v53 = swift_slowAlloc();
    *v32 = 136446466;
    *(v32 + 4) = sub_100078694(0xD000000000000017, 0x8000000100ABBEC0, v53);
    *(v32 + 12) = 2082;
    *(v32 + 14) = sub_100078694(0xD00000000000001BLL, 0x8000000100ABBEE0, v53);
    _os_log_impl(&_mh_execute_header, v30, v31, "Selector observed model difference for %{public}s, %{public}s; views will update", v32, 0x16u);
    swift_arrayDestroy();
  }

  sub_10022C350(&qword_100CA49D0, &unk_100A2ECD0);
  *&v46[42] = *(v62 + 10);
  v33 = v60;
  v34 = v61;
  *v46 = v60;
  *&v46[16] = v61;
  v35 = v62[0];
  *&v46[32] = v62[0];
  v36 = v42;
  *(v42 + 42) = *(v62 + 10);
  *v36 = v33;
  v36[1] = v34;
  v36[2] = v35;
  sub_1001A7BF8();
  swift_storeEnumTagMultiPayload();
  swift_beginAccess();
  sub_10026AE78(v46, v53);
  sub_100097AA4();
  swift_endAccess();
  sub_10022C350(&qword_100CA49D8, &unk_100A42010);
  sub_100006F64(&qword_100CA49E0, &qword_100CA49D8, &unk_100A42010, asc_100AA1480);
  ObservableObject<>.objectWillChange.getter();
  ObservableObjectPublisher.send()();

  sub_1001AFB34(v21, type metadata accessor for UnitsConfigurationViewModel);
  *v53 = v60;
  *&v53[16] = v61;
  *&v53[32] = v62[0];
  *&v53[42] = *(v62 + 10);
  return sub_10026AED4(v53);
}

uint64_t sub_10025C748(void (*a1)(uint64_t, void), uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void, void), uint64_t a6)
{
  v52 = a6;
  v53 = a5;
  v56 = a4;
  v57 = a2;
  v58 = a1;
  v54 = sub_10022C350(&qword_100CA49E8, &qword_100A2ECE0);
  __chkstk_darwin(v54);
  v55 = &v48 - v7;
  v8 = sub_10022C350(&qword_100CA49F0, &qword_100A2ECE8);
  __chkstk_darwin(v8 - 8);
  v51 = &v48 - v9;
  v50 = type metadata accessor for DayPickerViewModel(0);
  __chkstk_darwin(v50);
  v48 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v49 = &v48 - v12;
  v13 = sub_10022C350(&qword_100CA49F8, &qword_100A2ECF0);
  __chkstk_darwin(v13);
  v15 = &v48 - v14;
  v16 = sub_10022C350(&qword_100CA4A00, &qword_100A2ECF8);
  __chkstk_darwin(v16 - 8);
  v18 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v48 - v20;
  __chkstk_darwin(v22);
  v24 = &v48 - v23;
  __chkstk_darwin(v25);
  v27 = &v48 - v26;
  v28 = type metadata accessor for DayPickerInput(0);
  __chkstk_darwin(v28);
  v30 = &v48 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __chkstk_darwin(v31);
  v34 = &v48 - v33;
  (v58)(a3 + 64, 0, v32);
  if (sub_100024D10(v27, 1, v28) == 1)
  {
    return sub_1000180EC(v27, &qword_100CA4A00, &qword_100A2ECF8);
  }

  sub_1000A0AC0();
  v58 = v34;
  sub_1001A7BF8();
  sub_10001B350(v24, 0, 1, v28);
  sub_1002462CC(v21);
  v36 = *(v13 + 48);
  sub_100095588();
  sub_100095588();
  if (sub_100024D10(v15, 1, v28) != 1)
  {
    sub_100095588();
    if (sub_100024D10(&v15[v36], 1, v28) != 1)
    {
      sub_1000A0AC0();
      v42 = sub_1004CBB9C(v18, v30);
      sub_1001AFB34(v30, type metadata accessor for DayPickerInput);
      sub_1000180EC(v21, &qword_100CA4A00, &qword_100A2ECF8);
      sub_1000180EC(v24, &qword_100CA4A00, &qword_100A2ECF8);
      sub_1001AFB34(v18, type metadata accessor for DayPickerInput);
      sub_1000180EC(v15, &qword_100CA4A00, &qword_100A2ECF8);
      if (v42)
      {
        goto LABEL_15;
      }

LABEL_9:
      v37 = v51;
      v38 = v58;
      v53(v58, 0);
      if (sub_100024D10(v37, 1, v50) == 1)
      {
        sub_1000180EC(v37, &qword_100CA49F0, &qword_100A2ECE8);
      }

      else
      {
        v39 = v49;
        sub_1000A0AC0();
        v40 = v48;
        sub_100989124();
        v41 = sub_1009CFB60(v39, v40);
        sub_1001AFB34(v40, type metadata accessor for DayPickerViewModel);
        if ((v41 & 1) == 0)
        {
          if (qword_100CA2740 != -1)
          {
            swift_once();
          }

          v44 = type metadata accessor for Logger();
          sub_10000703C(v44, qword_100D90C18);
          v45 = Logger.logObject.getter();
          v46 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v45, v46))
          {
            v47 = swift_slowAlloc();
            v59[0] = swift_slowAlloc();
            *v47 = 136446466;
            *(v47 + 4) = sub_100078694(0x656B636950796144, 0xEE007475706E4972, v59);
            *(v47 + 12) = 2082;
            *(v47 + 14) = sub_100078694(0xD000000000000012, 0x8000000100ABBF00, v59);
            _os_log_impl(&_mh_execute_header, v45, v46, "Selector observed model difference for %{public}s, %{public}s; views will update", v47, 0x16u);
            swift_arrayDestroy();
          }

          sub_10022C350(&qword_100CA4A08, &unk_100A2ED00);
          sub_1001A7BF8();
          sub_1001A7BF8();
          swift_storeEnumTagMultiPayload();
          swift_beginAccess();
          sub_100097AA4();
          swift_endAccess();
          sub_10022C350(&qword_100CA4A10, &qword_100A445E0);
          sub_100006F64(&qword_100CA4A18, &qword_100CA4A10, &qword_100A445E0, asc_100AA1480);
          ObservableObject<>.objectWillChange.getter();
          ObservableObjectPublisher.send()();

          sub_1001AFB34(v39, type metadata accessor for DayPickerViewModel);
          v43 = v38;
          return sub_1001AFB34(v43, type metadata accessor for DayPickerInput);
        }

        sub_1001AFB34(v39, type metadata accessor for DayPickerViewModel);
      }

      sub_10022C350(&qword_100CA4A08, &unk_100A2ED00);
      sub_1001A7BF8();
      sub_100989124();
      sub_1001AFB34(v38, type metadata accessor for DayPickerInput);
      swift_storeEnumTagMultiPayload();
      swift_beginAccess();
      sub_100097AA4();
      return swift_endAccess();
    }

    sub_1000180EC(v21, &qword_100CA4A00, &qword_100A2ECF8);
    sub_1000180EC(v24, &qword_100CA4A00, &qword_100A2ECF8);
    sub_1001AFB34(v18, type metadata accessor for DayPickerInput);
LABEL_8:
    sub_1000180EC(v15, &qword_100CA49F8, &qword_100A2ECF0);
    goto LABEL_9;
  }

  sub_1000180EC(v21, &qword_100CA4A00, &qword_100A2ECF8);
  sub_1000180EC(v24, &qword_100CA4A00, &qword_100A2ECF8);
  if (sub_100024D10(&v15[v36], 1, v28) != 1)
  {
    goto LABEL_8;
  }

  sub_1000180EC(v15, &qword_100CA4A00, &qword_100A2ECF8);
LABEL_15:
  v43 = v58;
  return sub_1001AFB34(v43, type metadata accessor for DayPickerInput);
}

void *sub_10025D0C0(void *(*a1)(uint64_t *__return_ptr, uint64_t, void, double), uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *, void), uint64_t a6)
{
  v33 = a6;
  v34 = sub_10022C350(&qword_100CA4A20, &qword_100A2ED10);
  __chkstk_darwin(v34);
  v10 = (&v31 - v9);
  v11 = sub_10022C350(&qword_100CA4A28, &qword_100A2ED18);
  __chkstk_darwin(v11 - 8);
  v13 = &v31 - v12;
  v14 = type metadata accessor for VFXTestViewModel(0);
  __chkstk_darwin(v14);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v17);
  v20 = &v31 - v19;
  result = a1(v35, a3 + 64, 0, v18);
  v22 = v35[0];
  if (!v35[0])
  {
    return result;
  }

  v32 = v10;
  v36 = v35[0];

  v23 = sub_100246624();
  if (v23)
  {
    if (v22 == v23)
    {

LABEL_7:
    }

    type metadata accessor for MainState._Storage(0);
    sub_100073248();
    v25 = v24;

    if (v25)
    {
      goto LABEL_7;
    }
  }

  else
  {
  }

  a5(&v36, 0);
  if (sub_100024D10(v13, 1, v14) == 1)
  {
    sub_1000180EC(v13, &qword_100CA4A28, &qword_100A2ED18);
LABEL_14:
    sub_10022C350(&qword_100CA4A30, &unk_100A2ED20);
    *v32 = v22;

    sub_100988268();

    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    sub_100097AA4();
    return swift_endAccess();
  }

  sub_1000A0AC0();
  sub_100988268();
  v26 = sub_1007488C4(v20, v16);
  sub_1001AFB34(v16, type metadata accessor for VFXTestViewModel);
  if (v26)
  {
    sub_1001AFB34(v20, type metadata accessor for VFXTestViewModel);
    goto LABEL_14;
  }

  if (qword_100CA2740 != -1)
  {
    swift_once();
  }

  v27 = type metadata accessor for Logger();
  sub_10000703C(v27, qword_100D90C18);
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v35[0] = swift_slowAlloc();
    *v30 = 136446466;
    *(v30 + 4) = sub_100078694(0x746174536E69614DLL, 0xE900000000000065, v35);
    *(v30 + 12) = 2082;
    *(v30 + 14) = sub_100078694(0xD000000000000010, 0x8000000100ABBF20, v35);
    _os_log_impl(&_mh_execute_header, v28, v29, "Selector observed model difference for %{public}s, %{public}s; views will update", v30, 0x16u);
    swift_arrayDestroy();
  }

  sub_10022C350(&qword_100CA4A30, &unk_100A2ED20);
  *v32 = v22;
  sub_1001A7BF8();
  swift_storeEnumTagMultiPayload();
  swift_beginAccess();

  sub_100097AA4();
  swift_endAccess();
  sub_10022C350(&qword_100CA4A38, &unk_100A7B8A0);
  sub_100006F64(&qword_100CA4A40, &qword_100CA4A38, &unk_100A7B8A0, asc_100AA1480);
  ObservableObject<>.objectWillChange.getter();
  ObservableObjectPublisher.send()();

  sub_1001AFB34(v20, type metadata accessor for VFXTestViewModel);
}

uint64_t sub_10025D6B8(void (*a1)(uint64_t, void), uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void, void), uint64_t a6)
{
  v52 = a6;
  v53 = a5;
  v56 = a4;
  v57 = a2;
  v58 = a1;
  v54 = sub_10022C350(&qword_100CA4A48, &qword_100A2ED30);
  __chkstk_darwin(v54);
  v55 = &v48 - v7;
  v8 = sub_10022C350(&qword_100CA4A50, &qword_100A2ED38);
  __chkstk_darwin(v8 - 8);
  v51 = &v48 - v9;
  v50 = type metadata accessor for WeatherMenuViewModel(0);
  __chkstk_darwin(v50);
  v48 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v49 = &v48 - v12;
  v13 = sub_10022C350(&qword_100CA4A58, &qword_100A2ED40);
  __chkstk_darwin(v13);
  v15 = &v48 - v14;
  v16 = sub_10022C350(&qword_100CA4A60, &qword_100A2ED48);
  __chkstk_darwin(v16 - 8);
  v18 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v48 - v20;
  __chkstk_darwin(v22);
  v24 = &v48 - v23;
  __chkstk_darwin(v25);
  v27 = &v48 - v26;
  v28 = type metadata accessor for WeatherMenuInput(0);
  __chkstk_darwin(v28);
  v30 = &v48 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __chkstk_darwin(v31);
  v34 = &v48 - v33;
  (v58)(a3 + 64, 0, v32);
  if (sub_100024D10(v27, 1, v28) == 1)
  {
    return sub_1000180EC(v27, &qword_100CA4A60, &qword_100A2ED48);
  }

  sub_1000A0AC0();
  v58 = v34;
  sub_1001A7BF8();
  sub_10001B350(v24, 0, 1, v28);
  sub_1002468B0(v21);
  v36 = *(v13 + 48);
  sub_100095588();
  sub_100095588();
  if (sub_100024D10(v15, 1, v28) != 1)
  {
    sub_100095588();
    if (sub_100024D10(&v15[v36], 1, v28) != 1)
    {
      sub_1000A0AC0();
      v42 = sub_1005CBEA8(v18, v30);
      sub_1001AFB34(v30, type metadata accessor for WeatherMenuInput);
      sub_1000180EC(v21, &qword_100CA4A60, &qword_100A2ED48);
      sub_1000180EC(v24, &qword_100CA4A60, &qword_100A2ED48);
      sub_1001AFB34(v18, type metadata accessor for WeatherMenuInput);
      sub_1000180EC(v15, &qword_100CA4A60, &qword_100A2ED48);
      if (v42)
      {
        goto LABEL_15;
      }

LABEL_9:
      v37 = v51;
      v38 = v58;
      v53(v58, 0);
      if (sub_100024D10(v37, 1, v50) == 1)
      {
        sub_1000180EC(v37, &qword_100CA4A50, &qword_100A2ED38);
      }

      else
      {
        v39 = v49;
        sub_1000A0AC0();
        v40 = v48;
        sub_10098959C();
        v41 = sub_100431374(v39, v40);
        sub_1001AFB34(v40, type metadata accessor for WeatherMenuViewModel);
        if ((v41 & 1) == 0)
        {
          if (qword_100CA2740 != -1)
          {
            swift_once();
          }

          v44 = type metadata accessor for Logger();
          sub_10000703C(v44, qword_100D90C18);
          v45 = Logger.logObject.getter();
          v46 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v45, v46))
          {
            v47 = swift_slowAlloc();
            v59[0] = swift_slowAlloc();
            *v47 = 136446466;
            *(v47 + 4) = sub_100078694(0xD000000000000010, 0x8000000100ABBF40, v59);
            *(v47 + 12) = 2082;
            *(v47 + 14) = sub_100078694(0xD000000000000014, 0x8000000100ABBF60, v59);
            _os_log_impl(&_mh_execute_header, v45, v46, "Selector observed model difference for %{public}s, %{public}s; views will update", v47, 0x16u);
            swift_arrayDestroy();
          }

          sub_10022C350(&qword_100CA4A68, &unk_100A2ED50);
          sub_1001A7BF8();
          sub_1001A7BF8();
          swift_storeEnumTagMultiPayload();
          swift_beginAccess();
          sub_100097AA4();
          swift_endAccess();
          sub_10022C350(&qword_100CA4A70, &qword_100A4E220);
          sub_100006F64(&qword_100CA4A78, &qword_100CA4A70, &qword_100A4E220, asc_100AA1480);
          ObservableObject<>.objectWillChange.getter();
          ObservableObjectPublisher.send()();

          sub_1001AFB34(v39, type metadata accessor for WeatherMenuViewModel);
          v43 = v38;
          return sub_1001AFB34(v43, type metadata accessor for WeatherMenuInput);
        }

        sub_1001AFB34(v39, type metadata accessor for WeatherMenuViewModel);
      }

      sub_10022C350(&qword_100CA4A68, &unk_100A2ED50);
      sub_1001A7BF8();
      sub_10098959C();
      sub_1001AFB34(v38, type metadata accessor for WeatherMenuInput);
      swift_storeEnumTagMultiPayload();
      swift_beginAccess();
      sub_100097AA4();
      return swift_endAccess();
    }

    sub_1000180EC(v21, &qword_100CA4A60, &qword_100A2ED48);
    sub_1000180EC(v24, &qword_100CA4A60, &qword_100A2ED48);
    sub_1001AFB34(v18, type metadata accessor for WeatherMenuInput);
LABEL_8:
    sub_1000180EC(v15, &qword_100CA4A58, &qword_100A2ED40);
    goto LABEL_9;
  }

  sub_1000180EC(v21, &qword_100CA4A60, &qword_100A2ED48);
  sub_1000180EC(v24, &qword_100CA4A60, &qword_100A2ED48);
  if (sub_100024D10(&v15[v36], 1, v28) != 1)
  {
    goto LABEL_8;
  }

  sub_1000180EC(v15, &qword_100CA4A60, &qword_100A2ED48);
LABEL_15:
  v43 = v58;
  return sub_1001AFB34(v43, type metadata accessor for WeatherMenuInput);
}

uint64_t sub_10025E02C(void *(*a1)(unsigned __int8 *__return_ptr, uint64_t, void), uint64_t a2, uint64_t a3, uint64_t a4, void *(*a5)(unsigned __int8 *__return_ptr))
{
  result = a1(v24, a3 + 64, 0);
  if ((v24[0] & 1) == 0)
  {
    result = sub_100246C08();
    if (result)
    {
      a5(v24);
      v8 = v24[0];
      if (v24[0] == 2 || (sub_10098975C() & 1) == (v8 & 1))
      {
        v18 = sub_10098975C() & 1;
        swift_beginAccess();
        v19 = *(a4 + 16);
        v20 = *(a4 + 24);
        v21 = *(a4 + 32);
        v22 = *(a4 + 40);
        *(a4 + 16) = v18;
        *(a4 + 24) = 0;
        *(a4 + 32) = 0;
        *(a4 + 40) = 0;
        v23 = *(a4 + 48);
        *(a4 + 48) = 1;
        return sub_10026B12C(v19, v20, v21, v22, v23);
      }

      else
      {
        if (qword_100CA2740 != -1)
        {
          swift_once();
        }

        v9 = type metadata accessor for Logger();
        sub_10000703C(v9, qword_100D90C18);
        v10 = Logger.logObject.getter();
        v11 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v10, v11))
        {
          v12 = swift_slowAlloc();
          *v24 = swift_slowAlloc();
          *v12 = 136446466;
          *(v12 + 4) = sub_100078694(0xD000000000000019, 0x8000000100ABBF80, v24);
          *(v12 + 12) = 2082;
          *(v12 + 14) = sub_100078694(0xD00000000000001DLL, 0x8000000100ABBFA0, v24);
          _os_log_impl(&_mh_execute_header, v10, v11, "Selector observed model difference for %{public}s, %{public}s; views will update", v12, 0x16u);
          swift_arrayDestroy();
        }

        swift_beginAccess();
        v13 = *(a4 + 16);
        v14 = *(a4 + 24);
        v15 = *(a4 + 32);
        v16 = *(a4 + 40);
        *(a4 + 16) = v8 & 1;
        *(a4 + 24) = 0;
        *(a4 + 32) = 0;
        *(a4 + 40) = 0;
        v17 = *(a4 + 48);
        *(a4 + 48) = 1;
        sub_10026B12C(v13, v14, v15, v16, v17);
        sub_10022C350(&qword_100CA4A80, &qword_100A2ED60);
        sub_100006F64(&qword_100CA4A88, &qword_100CA4A80, &qword_100A2ED60, asc_100AA1480);
        ObservableObject<>.objectWillChange.getter();
        ObservableObjectPublisher.send()();
      }
    }
  }

  return result;
}

uint64_t sub_10025E30C(void (*a1)(uint64_t, void), uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void, void), uint64_t a6)
{
  v52 = a6;
  v53 = a5;
  v56 = a4;
  v57 = a2;
  v58 = a1;
  v54 = sub_10022C350(&qword_100CA4A90, &qword_100A2ED68);
  __chkstk_darwin(v54);
  v55 = &v48 - v7;
  v8 = sub_10022C350(&qword_100CA4A98, &qword_100A2ED70);
  __chkstk_darwin(v8 - 8);
  v51 = &v48 - v9;
  v50 = type metadata accessor for LocationPreviewViewModel(0);
  __chkstk_darwin(v50);
  v48 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v49 = &v48 - v12;
  v13 = sub_10022C350(&qword_100CA4AA0, &qword_100A2ED78);
  __chkstk_darwin(v13);
  v15 = &v48 - v14;
  v16 = sub_10022C350(&qword_100CA4AA8, &unk_100A2ED80);
  __chkstk_darwin(v16 - 8);
  v18 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v48 - v20;
  __chkstk_darwin(v22);
  v24 = &v48 - v23;
  __chkstk_darwin(v25);
  v27 = &v48 - v26;
  v28 = type metadata accessor for LocationPreviewInput(0);
  __chkstk_darwin(v28);
  v30 = &v48 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __chkstk_darwin(v31);
  v34 = &v48 - v33;
  (v58)(a3 + 64, 0, v32);
  if (sub_100024D10(v27, 1, v28) == 1)
  {
    return sub_1000180EC(v27, &qword_100CA4AA8, &unk_100A2ED80);
  }

  sub_1000A0AC0();
  v58 = v34;
  sub_1001A7BF8();
  sub_10001B350(v24, 0, 1, v28);
  sub_100246CE0(v21);
  v36 = *(v13 + 48);
  sub_100095588();
  sub_100095588();
  if (sub_100024D10(v15, 1, v28) != 1)
  {
    sub_100095588();
    if (sub_100024D10(&v15[v36], 1, v28) != 1)
    {
      sub_1000A0AC0();
      v42 = sub_1003C93F4(v18, v30);
      sub_1001AFB34(v30, type metadata accessor for LocationPreviewInput);
      sub_1000180EC(v21, &qword_100CA4AA8, &unk_100A2ED80);
      sub_1000180EC(v24, &qword_100CA4AA8, &unk_100A2ED80);
      sub_1001AFB34(v18, type metadata accessor for LocationPreviewInput);
      sub_1000180EC(v15, &qword_100CA4AA8, &unk_100A2ED80);
      if (v42)
      {
        goto LABEL_15;
      }

LABEL_9:
      v37 = v51;
      v38 = v58;
      v53(v58, 0);
      if (sub_100024D10(v37, 1, v50) == 1)
      {
        sub_1000180EC(v37, &qword_100CA4A98, &qword_100A2ED70);
      }

      else
      {
        v39 = v49;
        sub_1000A0AC0();
        v40 = v48;
        sub_100988BE0();
        v41 = sub_1005CAAA0(v39, v40);
        sub_1001AFB34(v40, type metadata accessor for LocationPreviewViewModel);
        if ((v41 & 1) == 0)
        {
          if (qword_100CA2740 != -1)
          {
            swift_once();
          }

          v44 = type metadata accessor for Logger();
          sub_10000703C(v44, qword_100D90C18);
          v45 = Logger.logObject.getter();
          v46 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v45, v46))
          {
            v47 = swift_slowAlloc();
            v59[0] = swift_slowAlloc();
            *v47 = 136446466;
            *(v47 + 4) = sub_100078694(0xD000000000000014, 0x8000000100ABBFC0, v59);
            *(v47 + 12) = 2082;
            *(v47 + 14) = sub_100078694(0xD000000000000018, 0x8000000100ABBFE0, v59);
            _os_log_impl(&_mh_execute_header, v45, v46, "Selector observed model difference for %{public}s, %{public}s; views will update", v47, 0x16u);
            swift_arrayDestroy();
          }

          sub_10022C350(&qword_100CA4AB0, &unk_100A9DFB0);
          sub_1001A7BF8();
          sub_1001A7BF8();
          swift_storeEnumTagMultiPayload();
          swift_beginAccess();
          sub_100097AA4();
          swift_endAccess();
          sub_10022C350(&qword_100CA4AB8, &qword_100A2ED90);
          sub_100006F64(&qword_100CA4AC0, &qword_100CA4AB8, &qword_100A2ED90, asc_100AA1480);
          ObservableObject<>.objectWillChange.getter();
          ObservableObjectPublisher.send()();

          sub_1001AFB34(v39, type metadata accessor for LocationPreviewViewModel);
          v43 = v38;
          return sub_1001AFB34(v43, type metadata accessor for LocationPreviewInput);
        }

        sub_1001AFB34(v39, type metadata accessor for LocationPreviewViewModel);
      }

      sub_10022C350(&qword_100CA4AB0, &unk_100A9DFB0);
      sub_1001A7BF8();
      sub_100988BE0();
      sub_1001AFB34(v38, type metadata accessor for LocationPreviewInput);
      swift_storeEnumTagMultiPayload();
      swift_beginAccess();
      sub_100097AA4();
      return swift_endAccess();
    }

    sub_1000180EC(v21, &qword_100CA4AA8, &unk_100A2ED80);
    sub_1000180EC(v24, &qword_100CA4AA8, &unk_100A2ED80);
    sub_1001AFB34(v18, type metadata accessor for LocationPreviewInput);
LABEL_8:
    sub_1000180EC(v15, &qword_100CA4AA0, &qword_100A2ED78);
    goto LABEL_9;
  }

  sub_1000180EC(v21, &qword_100CA4AA8, &unk_100A2ED80);
  sub_1000180EC(v24, &qword_100CA4AA8, &unk_100A2ED80);
  if (sub_100024D10(&v15[v36], 1, v28) != 1)
  {
    goto LABEL_8;
  }

  sub_1000180EC(v15, &qword_100CA4AA8, &unk_100A2ED80);
LABEL_15:
  v43 = v58;
  return sub_1001AFB34(v43, type metadata accessor for LocationPreviewInput);
}

uint64_t sub_10025EC80(void (*a1)(uint64_t, void), uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void, void), uint64_t a6)
{
  v52 = a6;
  v53 = a5;
  v56 = a4;
  v57 = a2;
  v58 = a1;
  v54 = sub_10022C350(&qword_100CA4AC8, &qword_100A2ED98);
  __chkstk_darwin(v54);
  v55 = &v48 - v7;
  v8 = sub_10022C350(&qword_100CA4AD0, &qword_100A2EDA0);
  __chkstk_darwin(v8 - 8);
  v51 = &v48 - v9;
  v50 = type metadata accessor for InteractiveMapViewModel(0);
  __chkstk_darwin(v50);
  v48 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v49 = &v48 - v12;
  v13 = sub_10022C350(&qword_100CA4AD8, &qword_100A2EDA8);
  __chkstk_darwin(v13);
  v15 = &v48 - v14;
  v16 = sub_10022C350(&qword_100CA4AE0, &unk_100A2EDB0);
  __chkstk_darwin(v16 - 8);
  v18 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v48 - v20;
  __chkstk_darwin(v22);
  v24 = &v48 - v23;
  __chkstk_darwin(v25);
  v27 = &v48 - v26;
  v28 = type metadata accessor for InteractiveMapInput(0);
  __chkstk_darwin(v28);
  v30 = &v48 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __chkstk_darwin(v31);
  v34 = &v48 - v33;
  (v58)(a3 + 64, 0, v32);
  if (sub_100024D10(v27, 1, v28) == 1)
  {
    return sub_1000180EC(v27, &qword_100CA4AE0, &unk_100A2EDB0);
  }

  sub_1000A0AC0();
  v58 = v34;
  sub_1001A7BF8();
  sub_10001B350(v24, 0, 1, v28);
  sub_100247038(v21);
  v36 = *(v13 + 48);
  sub_100095588();
  sub_100095588();
  if (sub_100024D10(v15, 1, v28) != 1)
  {
    sub_100095588();
    if (sub_100024D10(&v15[v36], 1, v28) != 1)
    {
      sub_1000A0AC0();
      v42 = sub_1003818E4(v18, v30);
      sub_1001AFB34(v30, type metadata accessor for InteractiveMapInput);
      sub_1000180EC(v21, &qword_100CA4AE0, &unk_100A2EDB0);
      sub_1000180EC(v24, &qword_100CA4AE0, &unk_100A2EDB0);
      sub_1001AFB34(v18, type metadata accessor for InteractiveMapInput);
      sub_1000180EC(v15, &qword_100CA4AE0, &unk_100A2EDB0);
      if (v42)
      {
        goto LABEL_15;
      }

LABEL_9:
      v37 = v51;
      v38 = v58;
      v53(v58, 0);
      if (sub_100024D10(v37, 1, v50) == 1)
      {
        sub_1000180EC(v37, &qword_100CA4AD0, &qword_100A2EDA0);
      }

      else
      {
        v39 = v49;
        sub_1000A0AC0();
        v40 = v48;
        sub_1009899B8();
        v41 = sub_10044B758(v39, v40);
        sub_1001AFB34(v40, type metadata accessor for InteractiveMapViewModel);
        if (!v41)
        {
          if (qword_100CA2740 != -1)
          {
            swift_once();
          }

          v44 = type metadata accessor for Logger();
          sub_10000703C(v44, qword_100D90C18);
          v45 = Logger.logObject.getter();
          v46 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v45, v46))
          {
            v47 = swift_slowAlloc();
            v59[0] = swift_slowAlloc();
            *v47 = 136446466;
            *(v47 + 4) = sub_100078694(0xD000000000000013, 0x8000000100ABC000, v59);
            *(v47 + 12) = 2082;
            *(v47 + 14) = sub_100078694(0xD000000000000017, 0x8000000100ABC020, v59);
            _os_log_impl(&_mh_execute_header, v45, v46, "Selector observed model difference for %{public}s, %{public}s; views will update", v47, 0x16u);
            swift_arrayDestroy();
          }

          sub_10022C350(&qword_100CA4AE8, &unk_100A9DFC0);
          sub_1001A7BF8();
          sub_1001A7BF8();
          swift_storeEnumTagMultiPayload();
          swift_beginAccess();
          sub_100097AA4();
          swift_endAccess();
          sub_10022C350(&qword_100CA4AF0, &qword_100A2EDC0);
          sub_100006F64(&qword_100CA4AF8, &qword_100CA4AF0, &qword_100A2EDC0, asc_100AA1480);
          ObservableObject<>.objectWillChange.getter();
          ObservableObjectPublisher.send()();

          sub_1001AFB34(v39, type metadata accessor for InteractiveMapViewModel);
          v43 = v38;
          return sub_1001AFB34(v43, type metadata accessor for InteractiveMapInput);
        }

        sub_1001AFB34(v39, type metadata accessor for InteractiveMapViewModel);
      }

      sub_10022C350(&qword_100CA4AE8, &unk_100A9DFC0);
      sub_1001A7BF8();
      sub_1009899B8();
      sub_1001AFB34(v38, type metadata accessor for InteractiveMapInput);
      swift_storeEnumTagMultiPayload();
      swift_beginAccess();
      sub_100097AA4();
      return swift_endAccess();
    }

    sub_1000180EC(v21, &qword_100CA4AE0, &unk_100A2EDB0);
    sub_1000180EC(v24, &qword_100CA4AE0, &unk_100A2EDB0);
    sub_1001AFB34(v18, type metadata accessor for InteractiveMapInput);
LABEL_8:
    sub_1000180EC(v15, &qword_100CA4AD8, &qword_100A2EDA8);
    goto LABEL_9;
  }

  sub_1000180EC(v21, &qword_100CA4AE0, &unk_100A2EDB0);
  sub_1000180EC(v24, &qword_100CA4AE0, &unk_100A2EDB0);
  if (sub_100024D10(&v15[v36], 1, v28) != 1)
  {
    goto LABEL_8;
  }

  sub_1000180EC(v15, &qword_100CA4AE0, &unk_100A2EDB0);
LABEL_15:
  v43 = v58;
  return sub_1001AFB34(v43, type metadata accessor for InteractiveMapInput);
}

uint64_t sub_10025F5F4(void (*a1)(uint64_t, void), uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void, void), uint64_t a6)
{
  v52 = a6;
  v53 = a5;
  v56 = a4;
  v57 = a2;
  v58 = a1;
  v54 = sub_10022C350(&qword_100CA4B00, &qword_100A2EDC8);
  __chkstk_darwin(v54);
  v55 = &v48 - v7;
  v8 = sub_10022C350(&qword_100CA4B08, &qword_100A2EDD0);
  __chkstk_darwin(v8 - 8);
  v51 = &v48 - v9;
  HourPrecipitationDetailViewModel = type metadata accessor for NextHourPrecipitationDetailViewModel(0);
  __chkstk_darwin(HourPrecipitationDetailViewModel);
  v48 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v49 = &v48 - v12;
  v13 = sub_10022C350(&qword_100CA4B10, &qword_100A2EDD8);
  __chkstk_darwin(v13);
  v15 = &v48 - v14;
  v16 = sub_10022C350(&qword_100CA4B18, &unk_100A2EDE0);
  __chkstk_darwin(v16 - 8);
  v18 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v48 - v20;
  __chkstk_darwin(v22);
  v24 = &v48 - v23;
  __chkstk_darwin(v25);
  v27 = &v48 - v26;
  HourPrecipitationDetailInput = type metadata accessor for NextHourPrecipitationDetailInput(0);
  __chkstk_darwin(HourPrecipitationDetailInput);
  v30 = &v48 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __chkstk_darwin(v31);
  v34 = &v48 - v33;
  (v58)(a3 + 64, 0, v32);
  if (sub_100024D10(v27, 1, HourPrecipitationDetailInput) == 1)
  {
    return sub_1000180EC(v27, &qword_100CA4B18, &unk_100A2EDE0);
  }

  sub_1000A0AC0();
  v58 = v34;
  sub_1001A7BF8();
  sub_10001B350(v24, 0, 1, HourPrecipitationDetailInput);
  sub_100247390(v21);
  v36 = *(v13 + 48);
  sub_100095588();
  sub_100095588();
  if (sub_100024D10(v15, 1, HourPrecipitationDetailInput) != 1)
  {
    sub_100095588();
    if (sub_100024D10(&v15[v36], 1, HourPrecipitationDetailInput) != 1)
    {
      sub_1000A0AC0();
      v42 = sub_10038DF90(v18, v30);
      sub_1001AFB34(v30, type metadata accessor for NextHourPrecipitationDetailInput);
      sub_1000180EC(v21, &qword_100CA4B18, &unk_100A2EDE0);
      sub_1000180EC(v24, &qword_100CA4B18, &unk_100A2EDE0);
      sub_1001AFB34(v18, type metadata accessor for NextHourPrecipitationDetailInput);
      sub_1000180EC(v15, &qword_100CA4B18, &unk_100A2EDE0);
      if (v42)
      {
        goto LABEL_15;
      }

LABEL_9:
      v37 = v51;
      v38 = v58;
      v53(v58, 0);
      if (sub_100024D10(v37, 1, HourPrecipitationDetailViewModel) == 1)
      {
        sub_1000180EC(v37, &qword_100CA4B08, &qword_100A2EDD0);
      }

      else
      {
        v39 = v49;
        sub_1000A0AC0();
        v40 = v48;
        sub_100989D38();
        v41 = sub_1003AB970(v39, v40);
        sub_1001AFB34(v40, type metadata accessor for NextHourPrecipitationDetailViewModel);
        if (!v41)
        {
          if (qword_100CA2740 != -1)
          {
            swift_once();
          }

          v44 = type metadata accessor for Logger();
          sub_10000703C(v44, qword_100D90C18);
          v45 = Logger.logObject.getter();
          v46 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v45, v46))
          {
            v47 = swift_slowAlloc();
            v59[0] = swift_slowAlloc();
            *v47 = 136446466;
            *(v47 + 4) = sub_100078694(0xD000000000000020, 0x8000000100ABC040, v59);
            *(v47 + 12) = 2082;
            *(v47 + 14) = sub_100078694(0xD000000000000024, 0x8000000100ABC070, v59);
            _os_log_impl(&_mh_execute_header, v45, v46, "Selector observed model difference for %{public}s, %{public}s; views will update", v47, 0x16u);
            swift_arrayDestroy();
          }

          sub_10022C350(&qword_100CA4B20, &unk_100A9DFD0);
          sub_1001A7BF8();
          sub_1001A7BF8();
          swift_storeEnumTagMultiPayload();
          swift_beginAccess();
          sub_100097AA4();
          swift_endAccess();
          sub_10022C350(&qword_100CA4B28, &unk_100A2EDF0);
          sub_100006F64(&qword_100CA4B30, &qword_100CA4B28, &unk_100A2EDF0, asc_100AA1480);
          ObservableObject<>.objectWillChange.getter();
          ObservableObjectPublisher.send()();

          sub_1001AFB34(v39, type metadata accessor for NextHourPrecipitationDetailViewModel);
          v43 = v38;
          return sub_1001AFB34(v43, type metadata accessor for NextHourPrecipitationDetailInput);
        }

        sub_1001AFB34(v39, type metadata accessor for NextHourPrecipitationDetailViewModel);
      }

      sub_10022C350(&qword_100CA4B20, &unk_100A9DFD0);
      sub_1001A7BF8();
      sub_100989D38();
      sub_1001AFB34(v38, type metadata accessor for NextHourPrecipitationDetailInput);
      swift_storeEnumTagMultiPayload();
      swift_beginAccess();
      sub_100097AA4();
      return swift_endAccess();
    }

    sub_1000180EC(v21, &qword_100CA4B18, &unk_100A2EDE0);
    sub_1000180EC(v24, &qword_100CA4B18, &unk_100A2EDE0);
    sub_1001AFB34(v18, type metadata accessor for NextHourPrecipitationDetailInput);
LABEL_8:
    sub_1000180EC(v15, &qword_100CA4B10, &qword_100A2EDD8);
    goto LABEL_9;
  }

  sub_1000180EC(v21, &qword_100CA4B18, &unk_100A2EDE0);
  sub_1000180EC(v24, &qword_100CA4B18, &unk_100A2EDE0);
  if (sub_100024D10(&v15[v36], 1, HourPrecipitationDetailInput) != 1)
  {
    goto LABEL_8;
  }

  sub_1000180EC(v15, &qword_100CA4B18, &unk_100A2EDE0);
LABEL_15:
  v43 = v58;
  return sub_1001AFB34(v43, type metadata accessor for NextHourPrecipitationDetailInput);
}

uint64_t sub_10025FF68(void (*a1)(uint64_t, void), uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void, void), uint64_t a6)
{
  v60 = a6;
  v61 = a5;
  v64 = a4;
  v65 = a2;
  v66 = a1;
  v62 = sub_10022C350(&qword_100CA4B38, &qword_100A6D8F0);
  __chkstk_darwin(v62);
  v63 = &v56 - v7;
  v8 = sub_10022C350(&qword_100CA4B40, &qword_100A2EE00);
  __chkstk_darwin(v8 - 8);
  v59 = &v56 - v9;
  active = type metadata accessor for ActiveLocationModel(0);
  __chkstk_darwin(active);
  v56 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v57 = &v56 - v12;
  v13 = sub_10022C350(&qword_100CA4B48, &qword_100A2EE08);
  __chkstk_darwin(v13);
  v15 = &v56 - v14;
  v16 = sub_10022C350(&qword_100CA4B50, &unk_100A2EE10);
  __chkstk_darwin(v16 - 8);
  v18 = &v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v56 - v20;
  __chkstk_darwin(v22);
  v24 = &v56 - v23;
  __chkstk_darwin(v25);
  v27 = &v56 - v26;
  v28 = type metadata accessor for ActiveLocationInput(0);
  __chkstk_darwin(v28);
  v30 = &v56 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __chkstk_darwin(v31);
  v34 = &v56 - v33;
  (v66)(a3 + 64, 0, v32);
  if (sub_100024D10(v27, 1, v28) == 1)
  {
    return sub_1000180EC(v27, &qword_100CA4B50, &unk_100A2EE10);
  }

  sub_1000A0AC0();
  v66 = v34;
  sub_1001A7BF8();
  sub_10001B350(v24, 0, 1, v28);
  sub_1002476E8(v21);
  v36 = *(v13 + 48);
  sub_100095588();
  sub_100095588();
  if (sub_100024D10(v15, 1, v28) != 1)
  {
    sub_100095588();
    if (sub_100024D10(&v15[v36], 1, v28) != 1)
    {
      sub_1000A0AC0();
      sub_100349048();
      v50 = v49;
      sub_1001AFB34(v30, type metadata accessor for ActiveLocationInput);
      sub_1000180EC(v21, &qword_100CA4B50, &unk_100A2EE10);
      sub_1000180EC(v24, &qword_100CA4B50, &unk_100A2EE10);
      sub_1001AFB34(v18, type metadata accessor for ActiveLocationInput);
      sub_1000180EC(v15, &qword_100CA4B50, &unk_100A2EE10);
      if (v50)
      {
        goto LABEL_15;
      }

LABEL_9:
      v37 = v59;
      v38 = v66;
      v61(v66, 0);
      if (sub_100024D10(v37, 1, active) == 1)
      {
        sub_1000180EC(v37, &qword_100CA4B40, &qword_100A2EE00);
      }

      else
      {
        v39 = v57;
        sub_1000A0AC0();
        v40 = v56;
        sub_1000E7B34();
        sub_1003492B8(v39, v40, v41, v42, v43, v44, v45, v46, v56, v57, active, v59, v60, v61, v62, v63, v64, v65, v66, v67[0]);
        v48 = v47;
        sub_1001AFB34(v40, type metadata accessor for ActiveLocationModel);
        if ((v48 & 1) == 0)
        {
          if (qword_100CA2740 != -1)
          {
            swift_once();
          }

          v52 = type metadata accessor for Logger();
          sub_10000703C(v52, qword_100D90C18);
          v53 = Logger.logObject.getter();
          v54 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v53, v54))
          {
            v55 = swift_slowAlloc();
            v67[0] = swift_slowAlloc();
            *v55 = 136446466;
            *(v55 + 4) = sub_100078694(0xD000000000000013, 0x8000000100ABC0A0, v67);
            *(v55 + 12) = 2082;
            *(v55 + 14) = sub_100078694(0xD000000000000013, 0x8000000100ABC0C0, v67);
            _os_log_impl(&_mh_execute_header, v53, v54, "Selector observed model difference for %{public}s, %{public}s; views will update", v55, 0x16u);
            swift_arrayDestroy();
          }

          sub_10022C350(&qword_100CA4B58, &unk_100A9DFE0);
          sub_1001A7BF8();
          sub_1001A7BF8();
          swift_storeEnumTagMultiPayload();
          swift_beginAccess();
          sub_100097AA4();
          swift_endAccess();
          sub_10022C350(&qword_100CA4B60, &qword_100A2EE20);
          sub_100006F64(&qword_100CA4B68, &qword_100CA4B60, &qword_100A2EE20, asc_100AA1480);
          ObservableObject<>.objectWillChange.getter();
          ObservableObjectPublisher.send()();

          sub_1001AFB34(v39, type metadata accessor for ActiveLocationModel);
          v51 = v38;
          return sub_1001AFB34(v51, type metadata accessor for ActiveLocationInput);
        }

        sub_1001AFB34(v39, type metadata accessor for ActiveLocationModel);
      }

      sub_10022C350(&qword_100CA4B58, &unk_100A9DFE0);
      sub_1001A7BF8();
      sub_1000E7B34();
      sub_1001AFB34(v38, type metadata accessor for ActiveLocationInput);
      swift_storeEnumTagMultiPayload();
      swift_beginAccess();
      sub_100097AA4();
      return swift_endAccess();
    }

    sub_1000180EC(v21, &qword_100CA4B50, &unk_100A2EE10);
    sub_1000180EC(v24, &qword_100CA4B50, &unk_100A2EE10);
    sub_1001AFB34(v18, type metadata accessor for ActiveLocationInput);
LABEL_8:
    sub_1000180EC(v15, &qword_100CA4B48, &qword_100A2EE08);
    goto LABEL_9;
  }

  sub_1000180EC(v21, &qword_100CA4B50, &unk_100A2EE10);
  sub_1000180EC(v24, &qword_100CA4B50, &unk_100A2EE10);
  if (sub_100024D10(&v15[v36], 1, v28) != 1)
  {
    goto LABEL_8;
  }

  sub_1000180EC(v15, &qword_100CA4B50, &unk_100A2EE10);
LABEL_15:
  v51 = v66;
  return sub_1001AFB34(v51, type metadata accessor for ActiveLocationInput);
}

uint64_t sub_1002608D8(void (*a1)(uint64_t, void), uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void, void), uint64_t a6)
{
  v52 = a6;
  v53 = a5;
  v56 = a4;
  v57 = a2;
  v58 = a1;
  v54 = sub_10022C350(&qword_100CA4BF0, &qword_100A2EE88);
  __chkstk_darwin(v54);
  v55 = &v48 - v7;
  v8 = sub_10022C350(&qword_100CA4BF8, &qword_100A2EE90);
  __chkstk_darwin(v8 - 8);
  v51 = &v48 - v9;
  v50 = type metadata accessor for LocationViewerViewModel(0);
  __chkstk_darwin(v50);
  v48 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v49 = &v48 - v12;
  v13 = sub_10022C350(&qword_100CA4C00, &qword_100A2EE98);
  __chkstk_darwin(v13);
  v15 = &v48 - v14;
  v16 = sub_10022C350(&qword_100CA4C08, &unk_100A2EEA0);
  __chkstk_darwin(v16 - 8);
  v18 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v48 - v20;
  __chkstk_darwin(v22);
  v24 = &v48 - v23;
  __chkstk_darwin(v25);
  v27 = &v48 - v26;
  v28 = type metadata accessor for LocationViewerInput(0);
  __chkstk_darwin(v28);
  v30 = &v48 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __chkstk_darwin(v31);
  v34 = &v48 - v33;
  (v58)(a3 + 64, 0, v32);
  if (sub_100024D10(v27, 1, v28) == 1)
  {
    return sub_1000180EC(v27, &qword_100CA4C08, &unk_100A2EEA0);
  }

  sub_1000A0AC0();
  v58 = v34;
  sub_1001A7BF8();
  sub_10001B350(v24, 0, 1, v28);
  sub_100247A40(v21);
  v36 = *(v13 + 48);
  sub_100095588();
  sub_100095588();
  if (sub_100024D10(v15, 1, v28) != 1)
  {
    sub_100095588();
    if (sub_100024D10(&v15[v36], 1, v28) != 1)
    {
      sub_1000A0AC0();
      v42 = sub_100236888(v18, v30);
      sub_1001AFB34(v30, type metadata accessor for LocationViewerInput);
      sub_1000180EC(v21, &qword_100CA4C08, &unk_100A2EEA0);
      sub_1000180EC(v24, &qword_100CA4C08, &unk_100A2EEA0);
      sub_1001AFB34(v18, type metadata accessor for LocationViewerInput);
      sub_1000180EC(v15, &qword_100CA4C08, &unk_100A2EEA0);
      if (v42)
      {
        goto LABEL_15;
      }

LABEL_9:
      v37 = v51;
      v38 = v58;
      v53(v58, 0);
      if (sub_100024D10(v37, 1, v50) == 1)
      {
        sub_1000180EC(v37, &qword_100CA4BF8, &qword_100A2EE90);
      }

      else
      {
        v39 = v49;
        sub_1000A0AC0();
        v40 = v48;
        sub_100104794();
        v41 = sub_100132BC0(v39, v40);
        sub_1001AFB34(v40, type metadata accessor for LocationViewerViewModel);
        if ((v41 & 1) == 0)
        {
          if (qword_100CA2740 != -1)
          {
            swift_once();
          }

          v44 = type metadata accessor for Logger();
          sub_10000703C(v44, qword_100D90C18);
          v45 = Logger.logObject.getter();
          v46 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v45, v46))
          {
            v47 = swift_slowAlloc();
            v59[0] = swift_slowAlloc();
            *v47 = 136446466;
            *(v47 + 4) = sub_100078694(0xD000000000000013, 0x8000000100ABC150, v59);
            *(v47 + 12) = 2082;
            *(v47 + 14) = sub_100078694(0xD000000000000017, 0x8000000100ABC170, v59);
            _os_log_impl(&_mh_execute_header, v45, v46, "Selector observed model difference for %{public}s, %{public}s; views will update", v47, 0x16u);
            swift_arrayDestroy();
          }

          sub_10022C350(&qword_100CA4C10, &unk_100A9E000);
          sub_1001A7BF8();
          sub_1001A7BF8();
          swift_storeEnumTagMultiPayload();
          swift_beginAccess();
          sub_100097AA4();
          swift_endAccess();
          sub_10022C350(&qword_100CA4C18, &qword_100A2EEB0);
          sub_100006F64(&qword_100CA4C20, &qword_100CA4C18, &qword_100A2EEB0, asc_100AA1480);
          ObservableObject<>.objectWillChange.getter();
          ObservableObjectPublisher.send()();

          sub_1001AFB34(v39, type metadata accessor for LocationViewerViewModel);
          v43 = v38;
          return sub_1001AFB34(v43, type metadata accessor for LocationViewerInput);
        }

        sub_1001AFB34(v39, type metadata accessor for LocationViewerViewModel);
      }

      sub_10022C350(&qword_100CA4C10, &unk_100A9E000);
      sub_1001A7BF8();
      sub_100104794();
      sub_1001AFB34(v38, type metadata accessor for LocationViewerInput);
      swift_storeEnumTagMultiPayload();
      swift_beginAccess();
      sub_100097AA4();
      return swift_endAccess();
    }

    sub_1000180EC(v21, &qword_100CA4C08, &unk_100A2EEA0);
    sub_1000180EC(v24, &qword_100CA4C08, &unk_100A2EEA0);
    sub_1001AFB34(v18, type metadata accessor for LocationViewerInput);
LABEL_8:
    sub_1000180EC(v15, &qword_100CA4C00, &qword_100A2EE98);
    goto LABEL_9;
  }

  sub_1000180EC(v21, &qword_100CA4C08, &unk_100A2EEA0);
  sub_1000180EC(v24, &qword_100CA4C08, &unk_100A2EEA0);
  if (sub_100024D10(&v15[v36], 1, v28) != 1)
  {
    goto LABEL_8;
  }

  sub_1000180EC(v15, &qword_100CA4C08, &unk_100A2EEA0);
LABEL_15:
  v43 = v58;
  return sub_1001AFB34(v43, type metadata accessor for LocationViewerInput);
}

uint64_t sub_10026124C(void (*a1)(uint64_t, void), uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void, void), uint64_t a6)
{
  v52 = a6;
  v53 = a5;
  v56 = a4;
  v57 = a2;
  v58 = a1;
  v54 = sub_10022C350(&qword_100CA4C28, &qword_100A2EEB8);
  __chkstk_darwin(v54);
  v55 = &v48 - v7;
  v8 = sub_10022C350(&qword_100CA4C30, &qword_100A2EEC0);
  __chkstk_darwin(v8 - 8);
  v51 = &v48 - v9;
  v50 = type metadata accessor for ListViewModel(0);
  __chkstk_darwin(v50);
  v48 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v49 = &v48 - v12;
  v13 = sub_10022C350(&qword_100CA4C38, &qword_100A2EEC8);
  __chkstk_darwin(v13);
  v15 = &v48 - v14;
  v16 = sub_10022C350(&qword_100CA4C40, &unk_100A2EED0);
  __chkstk_darwin(v16 - 8);
  v18 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v48 - v20;
  __chkstk_darwin(v22);
  v24 = &v48 - v23;
  __chkstk_darwin(v25);
  v27 = &v48 - v26;
  v28 = type metadata accessor for ListInput(0);
  __chkstk_darwin(v28);
  v30 = &v48 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __chkstk_darwin(v31);
  v34 = &v48 - v33;
  (v58)(a3 + 64, 0, v32);
  if (sub_100024D10(v27, 1, v28) == 1)
  {
    return sub_1000180EC(v27, &qword_100CA4C40, &unk_100A2EED0);
  }

  sub_1000A0AC0();
  v58 = v34;
  sub_1001A7BF8();
  sub_10001B350(v24, 0, 1, v28);
  sub_100248154(v21);
  v36 = *(v13 + 48);
  sub_100095588();
  sub_100095588();
  if (sub_100024D10(v15, 1, v28) != 1)
  {
    sub_100095588();
    if (sub_100024D10(&v15[v36], 1, v28) != 1)
    {
      sub_1000A0AC0();
      v42 = sub_10047C434(v18, v30);
      sub_1001AFB34(v30, type metadata accessor for ListInput);
      sub_1000180EC(v21, &qword_100CA4C40, &unk_100A2EED0);
      sub_1000180EC(v24, &qword_100CA4C40, &unk_100A2EED0);
      sub_1001AFB34(v18, type metadata accessor for ListInput);
      sub_1000180EC(v15, &qword_100CA4C40, &unk_100A2EED0);
      if (v42)
      {
        goto LABEL_15;
      }

LABEL_9:
      v37 = v51;
      v38 = v58;
      v53(v58, 0);
      if (sub_100024D10(v37, 1, v50) == 1)
      {
        sub_1000180EC(v37, &qword_100CA4C30, &qword_100A2EEC0);
      }

      else
      {
        v39 = v49;
        sub_1000A0AC0();
        v40 = v48;
        sub_100988558();
        v41 = sub_1006AB7D8(v39, v40);
        sub_1001AFB34(v40, type metadata accessor for ListViewModel);
        if (!v41)
        {
          if (qword_100CA2740 != -1)
          {
            swift_once();
          }

          v44 = type metadata accessor for Logger();
          sub_10000703C(v44, qword_100D90C18);
          v45 = Logger.logObject.getter();
          v46 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v45, v46))
          {
            v47 = swift_slowAlloc();
            v59[0] = swift_slowAlloc();
            *v47 = 136446466;
            *(v47 + 4) = sub_100078694(0x75706E497473694CLL, 0xE900000000000074, v59);
            *(v47 + 12) = 2082;
            *(v47 + 14) = sub_100078694(0x776569567473694CLL, 0xED00006C65646F4DLL, v59);
            _os_log_impl(&_mh_execute_header, v45, v46, "Selector observed model difference for %{public}s, %{public}s; views will update", v47, 0x16u);
            swift_arrayDestroy();
          }

          sub_10022C350(&qword_100CA4C48, &unk_100A9E020);
          sub_1001A7BF8();
          sub_1001A7BF8();
          swift_storeEnumTagMultiPayload();
          swift_beginAccess();
          sub_100097AA4();
          swift_endAccess();
          sub_10022C350(&qword_100CA4C50, &qword_100A2EEE0);
          sub_100006F64(&qword_100CA4C58, &qword_100CA4C50, &qword_100A2EEE0, asc_100AA1480);
          ObservableObject<>.objectWillChange.getter();
          ObservableObjectPublisher.send()();

          sub_1001AFB34(v39, type metadata accessor for ListViewModel);
          v43 = v38;
          return sub_1001AFB34(v43, type metadata accessor for ListInput);
        }

        sub_1001AFB34(v39, type metadata accessor for ListViewModel);
      }

      sub_10022C350(&qword_100CA4C48, &unk_100A9E020);
      sub_1001A7BF8();
      sub_100988558();
      sub_1001AFB34(v38, type metadata accessor for ListInput);
      swift_storeEnumTagMultiPayload();
      swift_beginAccess();
      sub_100097AA4();
      return swift_endAccess();
    }

    sub_1000180EC(v21, &qword_100CA4C40, &unk_100A2EED0);
    sub_1000180EC(v24, &qword_100CA4C40, &unk_100A2EED0);
    sub_1001AFB34(v18, type metadata accessor for ListInput);
LABEL_8:
    sub_1000180EC(v15, &qword_100CA4C38, &qword_100A2EEC8);
    goto LABEL_9;
  }

  sub_1000180EC(v21, &qword_100CA4C40, &unk_100A2EED0);
  sub_1000180EC(v24, &qword_100CA4C40, &unk_100A2EED0);
  if (sub_100024D10(&v15[v36], 1, v28) != 1)
  {
    goto LABEL_8;
  }

  sub_1000180EC(v15, &qword_100CA4C40, &unk_100A2EED0);
LABEL_15:
  v43 = v58;
  return sub_1001AFB34(v43, type metadata accessor for ListInput);
}

void *sub_100261BC4(void *(*a1)(uint64_t *__return_ptr, uint64_t, void, double), uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *, void), uint64_t a6)
{
  v33 = a6;
  v34 = sub_10022C350(&qword_100CA4C60, &qword_100A2EEE8);
  __chkstk_darwin(v34);
  v10 = (&v31 - v9);
  v11 = sub_10022C350(&qword_100CA4C68, &unk_100A2EEF0);
  __chkstk_darwin(v11 - 8);
  v13 = &v31 - v12;
  v14 = type metadata accessor for SearchViewModel(0);
  __chkstk_darwin(v14);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v17);
  v20 = &v31 - v19;
  result = a1(v35, a3 + 64, 0, v18);
  v22 = v35[0];
  if (!v35[0])
  {
    return result;
  }

  v32 = v10;
  v36 = v35[0];

  v23 = sub_1002484AC();
  if (v23)
  {
    if (v22 == v23)
    {

LABEL_7:
    }

    type metadata accessor for MainState._Storage(0);
    sub_100073248();
    v25 = v24;

    if (v25)
    {
      goto LABEL_7;
    }
  }

  else
  {
  }

  a5(&v36, 0);
  if (sub_100024D10(v13, 1, v14) == 1)
  {
    sub_1000180EC(v13, &qword_100CA4C68, &unk_100A2EEF0);
LABEL_14:
    sub_10022C350(&qword_100CA4C70, &unk_100A9E030);
    *v32 = v22;

    sub_100989840();

    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    sub_100097AA4();
    return swift_endAccess();
  }

  sub_1000A0AC0();
  sub_100989840();
  v26 = sub_1007BBD88(v20, v16);
  sub_1001AFB34(v16, type metadata accessor for SearchViewModel);
  if (v26)
  {
    sub_1001AFB34(v20, type metadata accessor for SearchViewModel);
    goto LABEL_14;
  }

  if (qword_100CA2740 != -1)
  {
    swift_once();
  }

  v27 = type metadata accessor for Logger();
  sub_10000703C(v27, qword_100D90C18);
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v35[0] = swift_slowAlloc();
    *v30 = 136446466;
    *(v30 + 4) = sub_100078694(0x746174536E69614DLL, 0xE900000000000065, v35);
    *(v30 + 12) = 2082;
    *(v30 + 14) = sub_100078694(0x6956686372616553, 0xEF6C65646F4D7765, v35);
    _os_log_impl(&_mh_execute_header, v28, v29, "Selector observed model difference for %{public}s, %{public}s; views will update", v30, 0x16u);
    swift_arrayDestroy();
  }

  sub_10022C350(&qword_100CA4C70, &unk_100A9E030);
  *v32 = v22;
  sub_1001A7BF8();
  swift_storeEnumTagMultiPayload();
  swift_beginAccess();

  sub_100097AA4();
  swift_endAccess();
  sub_10022C350(&qword_100CA4C78, &qword_100A2EF00);
  sub_100006F64(&qword_100CA4C80, &qword_100CA4C78, &qword_100A2EF00, asc_100AA1480);
  ObservableObject<>.objectWillChange.getter();
  ObservableObjectPublisher.send()();

  sub_1001AFB34(v20, type metadata accessor for SearchViewModel);
}

uint64_t sub_1002621C4(void (*a1)(uint64_t, void), uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t, void), uint64_t a6)
{
  v57 = a6;
  v58 = a5;
  v61 = a4;
  v59 = sub_10022C350(&qword_100CA4C88, &qword_100A2EF08);
  __chkstk_darwin(v59);
  v60 = &v55 - v8;
  v9 = sub_10022C350(&qword_100CA4C90, &qword_100A2EF10);
  __chkstk_darwin(v9);
  v11 = &v55 - v10;
  v12 = sub_10022C350(&qword_100CA4C98, &qword_100A2EF18);
  __chkstk_darwin(v12 - 8);
  v56 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v55 - v15;
  __chkstk_darwin(v17);
  v19 = &v55 - v18;
  __chkstk_darwin(v20);
  v22 = &v55 - v21;
  v23 = type metadata accessor for NotificationsOptInInput(0);
  __chkstk_darwin(v23);
  v55 = &v55 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v25);
  v28 = &v55 - v27;
  (a1)(a3 + 64, 0, v26);
  if (sub_100024D10(v22, 1, v23) == 1)
  {
    return sub_1000180EC(v22, &qword_100CA4C98, &qword_100A2EF18);
  }

  sub_1000A0AC0();
  sub_1001A7BF8();
  sub_10001B350(v19, 0, 1, v23);
  sub_100248738(v16);
  v30 = *(v9 + 48);
  sub_100095588();
  sub_100095588();
  v31 = v28;
  if (sub_100024D10(v11, 1, v23) == 1)
  {
    sub_1000180EC(v16, &qword_100CA4C98, &qword_100A2EF18);
    sub_1000180EC(v19, &qword_100CA4C98, &qword_100A2EF18);
    if (sub_100024D10(&v11[v30], 1, v23) == 1)
    {
      sub_1000180EC(v11, &qword_100CA4C98, &qword_100A2EF18);
LABEL_13:
      v44 = v31;
      return sub_1001AFB34(v44, type metadata accessor for NotificationsOptInInput);
    }

    goto LABEL_8;
  }

  v32 = v56;
  sub_100095588();
  if (sub_100024D10(&v11[v30], 1, v23) == 1)
  {
    sub_1000180EC(v16, &qword_100CA4C98, &qword_100A2EF18);
    sub_1000180EC(v19, &qword_100CA4C98, &qword_100A2EF18);
    sub_1001AFB34(v32, type metadata accessor for NotificationsOptInInput);
LABEL_8:
    sub_1000180EC(v11, &qword_100CA4C90, &qword_100A2EF10);
    goto LABEL_9;
  }

  v41 = v55;
  sub_1000A0AC0();
  v42 = v32;
  v43 = sub_1006044D4(v32, v41);
  sub_1001AFB34(v41, type metadata accessor for NotificationsOptInInput);
  sub_1000180EC(v16, &qword_100CA4C98, &qword_100A2EF18);
  sub_1000180EC(v19, &qword_100CA4C98, &qword_100A2EF18);
  sub_1001AFB34(v42, type metadata accessor for NotificationsOptInInput);
  sub_1000180EC(v11, &qword_100CA4C98, &qword_100A2EF18);
  if (v43)
  {
    goto LABEL_13;
  }

LABEL_9:
  v58(v62, v31, 0);
  v33 = LODWORD(v62[0]) | ((WORD2(v62[0]) | (BYTE6(v62[0]) << 16)) << 32);
  if (v62[0] & 0xFF0000) == 0x20000 || (sub_1009892E4(), (sub_100549EA8(v33 & 0xFFFFFF000000 | ((HIWORD(v33) & 1) << 48) | (((v33 >> 16) & 1) << 16) | v33 & 0xFF00 | v33, v34 & 0x1FFFFFF01FFFFLL)))
  {
    v35 = sub_10022C350(&qword_100CA4CA0, &unk_100A2EF20);
    v36 = &v60[*(v35 + 48)];
    sub_1001A7BF8();
    sub_1009892E4();
    v38 = v37;
    v39 = v37 >> 8;
    v40 = v37 >> 24;
    sub_1001AFB34(v31, type metadata accessor for NotificationsOptInInput);
    *v36 = v38;
    v36[1] = v39;
    v36[2] = BYTE2(v38) & 1;
    *(v36 + 3) = v40;
    v36[5] = BYTE2(v40);
    v36[6] = BYTE6(v38) & 1;
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    sub_100097AA4();
    return swift_endAccess();
  }

  v45 = v33;
  v46 = BYTE1(v33);
  v47 = (v33 >> 24) & 0xFFFFFF;
  v48 = (v33 >> 16) & 1;
  v58 = (HIWORD(v33) & 1);
  if (qword_100CA2740 != -1)
  {
    swift_once();
  }

  v49 = type metadata accessor for Logger();
  sub_10000703C(v49, qword_100D90C18);
  v50 = Logger.logObject.getter();
  v51 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    v62[0] = swift_slowAlloc();
    *v52 = 136446466;
    *(v52 + 4) = sub_100078694(0xD000000000000017, 0x8000000100ABC190, v62);
    *(v52 + 12) = 2082;
    *(v52 + 14) = sub_100078694(0xD00000000000001BLL, 0x8000000100ABC1B0, v62);
    _os_log_impl(&_mh_execute_header, v50, v51, "Selector observed model difference for %{public}s, %{public}s; views will update", v52, 0x16u);
    swift_arrayDestroy();
  }

  v53 = sub_10022C350(&qword_100CA4CA0, &unk_100A2EF20);
  v54 = &v60[*(v53 + 48)];
  sub_1001A7BF8();
  *v54 = v45;
  v54[1] = v46;
  v54[2] = v48;
  v54[5] = BYTE2(v47);
  *(v54 + 3) = v47;
  v54[6] = v58;
  swift_storeEnumTagMultiPayload();
  swift_beginAccess();
  sub_100097AA4();
  swift_endAccess();
  sub_10022C350(&qword_100CA4CA8, &qword_100AA4B50);
  sub_100006F64(&qword_100CA4CB0, &qword_100CA4CA8, &qword_100AA4B50, asc_100AA1480);
  ObservableObject<>.objectWillChange.getter();
  ObservableObjectPublisher.send()();

  v44 = v31;
  return sub_1001AFB34(v44, type metadata accessor for NotificationsOptInInput);
}

void *sub_100262A84(void *(*a1)(uint64_t *__return_ptr, uint64_t, void, double), uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *, void), uint64_t a6)
{
  v40 = a6;
  v41 = sub_10022C350(&qword_100CA4CB8, &qword_100A2EF30);
  __chkstk_darwin(v41);
  v10 = (&v38 - v9);
  v11 = sub_10022C350(&qword_100CA4CC0, &qword_100A2EF38);
  __chkstk_darwin(v11 - 8);
  v13 = &v38 - v12;
  v14 = type metadata accessor for MainViewModel(0);
  __chkstk_darwin(v14);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v17);
  v20 = &v38 - v19;
  result = a1(v42, a3 + 64, 0, v18);
  v22 = v42[0];
  if (!v42[0])
  {
    return result;
  }

  v39 = v10;
  v43[0] = v42[0];

  v23 = sub_1002489E8();
  if (v23)
  {
    if (v22 == v23)
    {

LABEL_7:
    }

    type metadata accessor for MainState._Storage(0);
    sub_100073248();
    v25 = v24;

    if (v25)
    {
      goto LABEL_7;
    }
  }

  else
  {
  }

  a5(v43, 0);
  if (sub_100024D10(v13, 1, v14) == 1)
  {
    sub_1000180EC(v13, &qword_100CA4CC0, &qword_100A2EF38);
LABEL_14:
    sub_10022C350(&qword_100CA4CC8, &unk_100A2EF40);
    *v39 = v22;

    sub_100095730();

    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    sub_100097AA4();
    return swift_endAccess();
  }

  sub_1000A0AC0();
  sub_100095730();
  sub_100880BE0(v20, v16, v26, v27, v28, v29, v30, v31, v38, v39, v40, v41, v42[0], v42[1], v42[2], v43[0], v43[1], v43[2], v43[3], v43[4]);
  v33 = v32;
  sub_1001AFB34(v16, type metadata accessor for MainViewModel);
  if (v33)
  {
    sub_1001AFB34(v20, type metadata accessor for MainViewModel);
    goto LABEL_14;
  }

  if (qword_100CA2740 != -1)
  {
    swift_once();
  }

  v34 = type metadata accessor for Logger();
  sub_10000703C(v34, qword_100D90C18);
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v42[0] = swift_slowAlloc();
    *v37 = 136446466;
    *(v37 + 4) = sub_100078694(0x746174536E69614DLL, 0xE900000000000065, v42);
    *(v37 + 12) = 2082;
    *(v37 + 14) = sub_100078694(0x776569566E69614DLL, 0xED00006C65646F4DLL, v42);
    _os_log_impl(&_mh_execute_header, v35, v36, "Selector observed model difference for %{public}s, %{public}s; views will update", v37, 0x16u);
    swift_arrayDestroy();
  }

  sub_10022C350(&qword_100CA4CC8, &unk_100A2EF40);
  *v39 = v22;
  sub_1001A7BF8();
  swift_storeEnumTagMultiPayload();
  swift_beginAccess();

  sub_100097AA4();
  swift_endAccess();
  sub_10022C350(&unk_100CE0F40, &unk_100A502E0);
  sub_100006F64(&qword_100CA4CD0, &unk_100CE0F40, &unk_100A502E0, asc_100AA1480);
  ObservableObject<>.objectWillChange.getter();
  ObservableObjectPublisher.send()();

  sub_1001AFB34(v20, type metadata accessor for MainViewModel);
}

uint64_t sub_100263084(void (*a1)(uint64_t, void), uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(char *, void), uint64_t a6)
{
  v56 = a6;
  v57 = a5;
  v60 = a4;
  v61 = a2;
  v58 = sub_10022C350(&qword_100CA4CD8, &qword_100A2EF50);
  __chkstk_darwin(v58);
  v59 = &v51 - v8;
  v9 = sub_10022C350(&qword_100CA4CE0, &qword_100A2EF58);
  __chkstk_darwin(v9 - 8);
  v55 = &v51 - v10;
  v54 = type metadata accessor for AveragesDetailViewModel(0);
  __chkstk_darwin(v54);
  v51 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v52 = &v51 - v13;
  v14 = sub_10022C350(&qword_100CA4CE8, &qword_100A2EF60);
  __chkstk_darwin(v14);
  v16 = &v51 - v15;
  v17 = sub_10022C350(&qword_100CA4CF0, &qword_100A2EF68);
  __chkstk_darwin(v17 - 8);
  v53 = &v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v51 - v20;
  __chkstk_darwin(v22);
  v24 = &v51 - v23;
  __chkstk_darwin(v25);
  v27 = &v51 - v26;
  v28 = type metadata accessor for AveragesDetailInput(0);
  __chkstk_darwin(v28);
  v30 = &v51 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __chkstk_darwin(v31);
  v34 = &v51 - v33;
  (a1)(a3 + 64, 0, v32);
  if (sub_100024D10(v27, 1, v28) == 1)
  {
    return sub_1000180EC(v27, &qword_100CA4CF0, &qword_100A2EF68);
  }

  sub_1000A0AC0();
  sub_1001A7BF8();
  sub_10001B350(v24, 0, 1, v28);
  sub_100248C74(v21);
  v36 = *(v14 + 48);
  sub_100095588();
  sub_100095588();
  if (sub_100024D10(v16, 1, v28) != 1)
  {
    v38 = v53;
    sub_100095588();
    if (sub_100024D10(&v16[v36], 1, v28) != 1)
    {
      sub_1000A0AC0();
      if ((sub_100453EEC(v38, v30) & 1) != 0 && *(v38 + *(v28 + 20)) == v30[*(v28 + 20)])
      {
        v50 = static Location.== infix(_:_:)();
        sub_1001AFB34(v30, type metadata accessor for AveragesDetailInput);
        sub_1000180EC(v21, &qword_100CA4CF0, &qword_100A2EF68);
        sub_1000180EC(v24, &qword_100CA4CF0, &qword_100A2EF68);
        sub_1001AFB34(v38, type metadata accessor for AveragesDetailInput);
        sub_1000180EC(v16, &qword_100CA4CF0, &qword_100A2EF68);
        if (v50)
        {
          goto LABEL_6;
        }

LABEL_14:
        v42 = v55;
        v57(v34, 0);
        if (sub_100024D10(v42, 1, v54) == 1)
        {
          sub_1000180EC(v42, &qword_100CA4CE0, &qword_100A2EF58);
        }

        else
        {
          v43 = v52;
          sub_1000A0AC0();
          v44 = v51;
          sub_100989EF8();
          v45 = sub_100517214(v43, v44);
          sub_1001AFB34(v44, type metadata accessor for AveragesDetailViewModel);
          if ((v45 & 1) == 0)
          {
            if (qword_100CA2740 != -1)
            {
              swift_once();
            }

            v46 = type metadata accessor for Logger();
            sub_10000703C(v46, qword_100D90C18);
            v47 = Logger.logObject.getter();
            v48 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v47, v48))
            {
              v49 = swift_slowAlloc();
              v62[0] = swift_slowAlloc();
              *v49 = 136446466;
              *(v49 + 4) = sub_100078694(0xD000000000000013, 0x8000000100ABC1D0, v62);
              *(v49 + 12) = 2082;
              *(v49 + 14) = sub_100078694(0xD000000000000017, 0x8000000100ABC1F0, v62);
              _os_log_impl(&_mh_execute_header, v47, v48, "Selector observed model difference for %{public}s, %{public}s; views will update", v49, 0x16u);
              swift_arrayDestroy();
            }

            sub_10022C350(&qword_100CA4CF8, &qword_100A2EF70);
            sub_1001A7BF8();
            sub_1001A7BF8();
            swift_storeEnumTagMultiPayload();
            swift_beginAccess();
            sub_100097AA4();
            swift_endAccess();
            sub_10022C350(&qword_100CA4D00, &qword_100A2EF78);
            sub_100006F64(&qword_100CA4D08, &qword_100CA4D00, &qword_100A2EF78, asc_100AA1480);
            ObservableObject<>.objectWillChange.getter();
            ObservableObjectPublisher.send()();

            sub_1001AFB34(v43, type metadata accessor for AveragesDetailViewModel);
            v37 = v34;
            return sub_1001AFB34(v37, type metadata accessor for AveragesDetailInput);
          }

          sub_1001AFB34(v43, type metadata accessor for AveragesDetailViewModel);
        }

        sub_10022C350(&qword_100CA4CF8, &qword_100A2EF70);
        sub_1001A7BF8();
        sub_100989EF8();
        sub_1001AFB34(v34, type metadata accessor for AveragesDetailInput);
        swift_storeEnumTagMultiPayload();
        swift_beginAccess();
        sub_100097AA4();
        return swift_endAccess();
      }

      sub_1001AFB34(v30, type metadata accessor for AveragesDetailInput);
      sub_1000180EC(v21, &qword_100CA4CF0, &qword_100A2EF68);
      sub_1000180EC(v24, &qword_100CA4CF0, &qword_100A2EF68);
      sub_1001AFB34(v38, type metadata accessor for AveragesDetailInput);
      v41 = v16;
      v39 = &qword_100CA4CF0;
      v40 = &qword_100A2EF68;
LABEL_13:
      sub_1000180EC(v41, v39, v40);
      goto LABEL_14;
    }

    sub_1000180EC(v21, &qword_100CA4CF0, &qword_100A2EF68);
    sub_1000180EC(v24, &qword_100CA4CF0, &qword_100A2EF68);
    sub_1001AFB34(v38, type metadata accessor for AveragesDetailInput);
LABEL_9:
    v39 = &qword_100CA4CE8;
    v40 = &qword_100A2EF60;
    v41 = v16;
    goto LABEL_13;
  }

  sub_1000180EC(v21, &qword_100CA4CF0, &qword_100A2EF68);
  sub_1000180EC(v24, &qword_100CA4CF0, &qword_100A2EF68);
  if (sub_100024D10(&v16[v36], 1, v28) != 1)
  {
    goto LABEL_9;
  }

  sub_1000180EC(v16, &qword_100CA4CF0, &qword_100A2EF68);
LABEL_6:
  v37 = v34;
  return sub_1001AFB34(v37, type metadata accessor for AveragesDetailInput);
}

uint64_t sub_100263AB8(void (*a1)(uint64_t, void), uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void, void), uint64_t a6)
{
  v52 = a6;
  v53 = a5;
  v56 = a4;
  v57 = a2;
  v58 = a1;
  v54 = sub_10022C350(&qword_100CA4D10, &qword_100A2EF80);
  __chkstk_darwin(v54);
  v55 = &v48 - v7;
  v8 = sub_10022C350(&qword_100CA4D18, &qword_100A2EF88);
  __chkstk_darwin(v8 - 8);
  v51 = &v48 - v9;
  v50 = type metadata accessor for MoonScrubberViewModel(0);
  __chkstk_darwin(v50);
  v48 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v49 = &v48 - v12;
  v13 = sub_10022C350(&qword_100CA4D20, &qword_100A2EF90);
  __chkstk_darwin(v13);
  v15 = &v48 - v14;
  v16 = sub_10022C350(&qword_100CA4D28, &qword_100A2EF98);
  __chkstk_darwin(v16 - 8);
  v18 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v48 - v20;
  __chkstk_darwin(v22);
  v24 = &v48 - v23;
  __chkstk_darwin(v25);
  v27 = &v48 - v26;
  v28 = type metadata accessor for MoonScrubberInput(0);
  __chkstk_darwin(v28);
  v30 = &v48 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __chkstk_darwin(v31);
  v34 = &v48 - v33;
  (v58)(a3 + 64, 0, v32);
  if (sub_100024D10(v27, 1, v28) == 1)
  {
    return sub_1000180EC(v27, &qword_100CA4D28, &qword_100A2EF98);
  }

  sub_1000A0AC0();
  v58 = v34;
  sub_1001A7BF8();
  sub_10001B350(v24, 0, 1, v28);
  sub_100248FCC(v21);
  v36 = *(v13 + 48);
  sub_100095588();
  sub_100095588();
  if (sub_100024D10(v15, 1, v28) != 1)
  {
    sub_100095588();
    if (sub_100024D10(&v15[v36], 1, v28) != 1)
    {
      sub_1000A0AC0();
      v42 = sub_10042568C();
      sub_1001AFB34(v30, type metadata accessor for MoonScrubberInput);
      sub_1000180EC(v21, &qword_100CA4D28, &qword_100A2EF98);
      sub_1000180EC(v24, &qword_100CA4D28, &qword_100A2EF98);
      sub_1001AFB34(v18, type metadata accessor for MoonScrubberInput);
      sub_1000180EC(v15, &qword_100CA4D28, &qword_100A2EF98);
      if (v42)
      {
        goto LABEL_15;
      }

LABEL_9:
      v37 = v51;
      v38 = v58;
      v53(v58, 0);
      if (sub_100024D10(v37, 1, v50) == 1)
      {
        sub_1000180EC(v37, &qword_100CA4D18, &qword_100A2EF88);
      }

      else
      {
        v39 = v49;
        sub_1000A0AC0();
        v40 = v48;
        sub_100989B78();
        v41 = sub_1002AC790(v39, v40);
        sub_1001AFB34(v40, type metadata accessor for MoonScrubberViewModel);
        if ((v41 & 1) == 0)
        {
          if (qword_100CA2740 != -1)
          {
            swift_once();
          }

          v44 = type metadata accessor for Logger();
          sub_10000703C(v44, qword_100D90C18);
          v45 = Logger.logObject.getter();
          v46 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v45, v46))
          {
            v47 = swift_slowAlloc();
            v59[0] = swift_slowAlloc();
            *v47 = 136446466;
            *(v47 + 4) = sub_100078694(0xD000000000000011, 0x8000000100ABC210, v59);
            *(v47 + 12) = 2082;
            *(v47 + 14) = sub_100078694(0xD000000000000015, 0x8000000100ABC230, v59);
            _os_log_impl(&_mh_execute_header, v45, v46, "Selector observed model difference for %{public}s, %{public}s; views will update", v47, 0x16u);
            swift_arrayDestroy();
          }

          sub_10022C350(&qword_100CA4D30, &unk_100A2EFA0);
          sub_1001A7BF8();
          sub_1001A7BF8();
          swift_storeEnumTagMultiPayload();
          swift_beginAccess();
          sub_100097AA4();
          swift_endAccess();
          sub_10022C350(&qword_100CA4D38, &unk_100A7E1D0);
          sub_100006F64(&qword_100CA4D40, &qword_100CA4D38, &unk_100A7E1D0, asc_100AA1480);
          ObservableObject<>.objectWillChange.getter();
          ObservableObjectPublisher.send()();

          sub_1001AFB34(v39, type metadata accessor for MoonScrubberViewModel);
          v43 = v38;
          return sub_1001AFB34(v43, type metadata accessor for MoonScrubberInput);
        }

        sub_1001AFB34(v39, type metadata accessor for MoonScrubberViewModel);
      }

      sub_10022C350(&qword_100CA4D30, &unk_100A2EFA0);
      sub_1001A7BF8();
      sub_100989B78();
      sub_1001AFB34(v38, type metadata accessor for MoonScrubberInput);
      swift_storeEnumTagMultiPayload();
      swift_beginAccess();
      sub_100097AA4();
      return swift_endAccess();
    }

    sub_1000180EC(v21, &qword_100CA4D28, &qword_100A2EF98);
    sub_1000180EC(v24, &qword_100CA4D28, &qword_100A2EF98);
    sub_1001AFB34(v18, type metadata accessor for MoonScrubberInput);
LABEL_8:
    sub_1000180EC(v15, &qword_100CA4D20, &qword_100A2EF90);
    goto LABEL_9;
  }

  sub_1000180EC(v21, &qword_100CA4D28, &qword_100A2EF98);
  sub_1000180EC(v24, &qword_100CA4D28, &qword_100A2EF98);
  if (sub_100024D10(&v15[v36], 1, v28) != 1)
  {
    goto LABEL_8;
  }

  sub_1000180EC(v15, &qword_100CA4D28, &qword_100A2EF98);
LABEL_15:
  v43 = v58;
  return sub_1001AFB34(v43, type metadata accessor for MoonScrubberInput);
}

uint64_t sub_10026442C(void (*a1)(uint64_t, void), uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void, void), uint64_t a6)
{
  v53 = a6;
  v54 = a5;
  v57 = a4;
  v58 = a2;
  v59 = a1;
  v55 = sub_10022C350(&qword_100CA4D48, &qword_100A2EFB0);
  __chkstk_darwin(v55);
  v56 = &v49 - v7;
  v8 = sub_10022C350(&qword_100CA4D50, &qword_100A2EFB8);
  __chkstk_darwin(v8 - 8);
  v52 = &v49 - v9;
  v51 = type metadata accessor for SunriseSunsetDetailViewModel(0);
  __chkstk_darwin(v51);
  v49 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v50 = &v49 - v12;
  v13 = sub_10022C350(&qword_100CA4D58, &qword_100A2EFC0);
  __chkstk_darwin(v13);
  v15 = &v49 - v14;
  v16 = sub_10022C350(&qword_100CA4D60, &qword_100A2EFC8);
  __chkstk_darwin(v16 - 8);
  v18 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v49 - v20;
  __chkstk_darwin(v22);
  v24 = &v49 - v23;
  __chkstk_darwin(v25);
  v27 = &v49 - v26;
  v28 = type metadata accessor for SunriseSunsetDetailInput(0);
  __chkstk_darwin(v28);
  v30 = &v49 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __chkstk_darwin(v31);
  v34 = &v49 - v33;
  (v59)(a3 + 64, 0, v32);
  if (sub_100024D10(v27, 1, v28) == 1)
  {
    return sub_1000180EC(v27, &qword_100CA4D60, &qword_100A2EFC8);
  }

  sub_1000A0AC0();
  v59 = v34;
  sub_1001A7BF8();
  sub_10001B350(v24, 0, 1, v28);
  sub_100249324(v21);
  v36 = *(v13 + 48);
  sub_100095588();
  sub_100095588();
  if (sub_100024D10(v15, 1, v28) != 1)
  {
    sub_100095588();
    if (sub_100024D10(&v15[v36], 1, v28) != 1)
    {
      sub_1000A0AC0();
      v43 = sub_10048404C(v18, v30);
      sub_1001AFB34(v30, type metadata accessor for SunriseSunsetDetailInput);
      sub_1000180EC(v21, &qword_100CA4D60, &qword_100A2EFC8);
      sub_1000180EC(v24, &qword_100CA4D60, &qword_100A2EFC8);
      sub_1001AFB34(v18, type metadata accessor for SunriseSunsetDetailInput);
      sub_1000180EC(v15, &qword_100CA4D60, &qword_100A2EFC8);
      if (v43)
      {
        goto LABEL_15;
      }

LABEL_9:
      v37 = v52;
      v38 = v59;
      v54(v59, 0);
      if (sub_100024D10(v37, 1, v51) == 1)
      {
        sub_1000180EC(v37, &qword_100CA4D50, &qword_100A2EFB8);
      }

      else
      {
        v39 = v50;
        sub_1000A0AC0();
        v40 = v49;
        sub_10098A320();
        sub_10062B964();
        v42 = v41;
        sub_1001AFB34(v40, type metadata accessor for SunriseSunsetDetailViewModel);
        if ((v42 & 1) == 0)
        {
          if (qword_100CA2740 != -1)
          {
            swift_once();
          }

          v45 = type metadata accessor for Logger();
          sub_10000703C(v45, qword_100D90C18);
          v46 = Logger.logObject.getter();
          v47 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v46, v47))
          {
            v48 = swift_slowAlloc();
            v60[0] = swift_slowAlloc();
            *v48 = 136446466;
            *(v48 + 4) = sub_100078694(0xD000000000000018, 0x8000000100ABC250, v60);
            *(v48 + 12) = 2082;
            *(v48 + 14) = sub_100078694(0xD00000000000001CLL, 0x8000000100ABC270, v60);
            _os_log_impl(&_mh_execute_header, v46, v47, "Selector observed model difference for %{public}s, %{public}s; views will update", v48, 0x16u);
            swift_arrayDestroy();
          }

          sub_10022C350(&qword_100CA4D68, &unk_100A2EFD0);
          sub_1001A7BF8();
          sub_1001A7BF8();
          swift_storeEnumTagMultiPayload();
          swift_beginAccess();
          sub_100097AA4();
          swift_endAccess();
          sub_10022C350(&qword_100CA4D70, &unk_100A8C940);
          sub_100006F64(&qword_100CA4D78, &qword_100CA4D70, &unk_100A8C940, asc_100AA1480);
          ObservableObject<>.objectWillChange.getter();
          ObservableObjectPublisher.send()();

          sub_1001AFB34(v39, type metadata accessor for SunriseSunsetDetailViewModel);
          v44 = v38;
          return sub_1001AFB34(v44, type metadata accessor for SunriseSunsetDetailInput);
        }

        sub_1001AFB34(v39, type metadata accessor for SunriseSunsetDetailViewModel);
      }

      sub_10022C350(&qword_100CA4D68, &unk_100A2EFD0);
      sub_1001A7BF8();
      sub_10098A320();
      sub_1001AFB34(v38, type metadata accessor for SunriseSunsetDetailInput);
      swift_storeEnumTagMultiPayload();
      swift_beginAccess();
      sub_100097AA4();
      return swift_endAccess();
    }

    sub_1000180EC(v21, &qword_100CA4D60, &qword_100A2EFC8);
    sub_1000180EC(v24, &qword_100CA4D60, &qword_100A2EFC8);
    sub_1001AFB34(v18, type metadata accessor for SunriseSunsetDetailInput);
LABEL_8:
    sub_1000180EC(v15, &qword_100CA4D58, &qword_100A2EFC0);
    goto LABEL_9;
  }

  sub_1000180EC(v21, &qword_100CA4D60, &qword_100A2EFC8);
  sub_1000180EC(v24, &qword_100CA4D60, &qword_100A2EFC8);
  if (sub_100024D10(&v15[v36], 1, v28) != 1)
  {
    goto LABEL_8;
  }

  sub_1000180EC(v15, &qword_100CA4D60, &qword_100A2EFC8);
LABEL_15:
  v44 = v59;
  return sub_1001AFB34(v44, type metadata accessor for SunriseSunsetDetailInput);
}

void sub_100264DA0(void (*a1)(id *__return_ptr, uint64_t, void), uint64_t a2, uint64_t a3, uint64_t a4, void *(*a5)(id *__return_ptr, void *, void))
{
  a1(&v52, a3 + 64, 0);
  v7 = v52;
  if (!v52)
  {
    return;
  }

  v8 = v53;
  v9 = v54;
  v55[0] = v52;
  v55[1] = v53;
  v56 = v54 & 1;
  v51 = v52;
  v10 = sub_10024967C();
  if (v10)
  {
    v13 = v10;
    v14 = sub_1008D9088(v51, v8, v9 & 1, v10, v11, v12 & 1);

    if (v14)
    {

      return;
    }
  }

  else
  {
  }

  a5(&v52, v55, 0);
  v15 = v52;
  if (!v52)
  {
LABEL_11:
    v23 = v51;
    v24 = sub_100988A98();
    v26 = v25;
    v28 = v27;

    swift_beginAccess();
    v29 = *(a4 + 16);
    v30 = *(a4 + 24);
    v31 = *(a4 + 32);
    v32 = *(a4 + 40);
    v33 = *(a4 + 48);
    *(a4 + 16) = v7;
    *(a4 + 24) = v8;
    *(a4 + 32) = v9 & 1;
    *(a4 + 40) = v24;
    *(a4 + 48) = v26;
    v34 = *(a4 + 56);
    *(a4 + 56) = v28 & 1;
    v35 = *(a4 + 57);
    *(a4 + 57) = 1;
    sub_10026B820(v29, v30, v31, v32, v33, v34, v35);
    return;
  }

  v16 = v53;
  v17 = v54;
  v18 = sub_100988A98();
  v19 = v17 & 1;
  v22 = sub_1002804F8(v15, v16, v19, v18, v21, v20 & 1);

  if (v22)
  {

    goto LABEL_11;
  }

  if (qword_100CA2740 != -1)
  {
    swift_once();
  }

  v50 = v16;
  v36 = type metadata accessor for Logger();
  sub_10000703C(v36, qword_100D90C18);
  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.default.getter();
  v49 = v19;
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    *v39 = 136446466;
    *(v39 + 4) = sub_100078694(0x756E654D7473694CLL, 0xED00007475706E49, &v52);
    *(v39 + 12) = 2082;
    *(v39 + 14) = sub_100078694(0xD000000000000011, 0x8000000100ABC290, &v52);
    _os_log_impl(&_mh_execute_header, v37, v38, "Selector observed model difference for %{public}s, %{public}s; views will update", v39, 0x16u);
    swift_arrayDestroy();
  }

  v40 = v9 & 1;
  swift_beginAccess();
  v41 = *(a4 + 16);
  v42 = *(a4 + 24);
  v43 = *(a4 + 32);
  v44 = *(a4 + 40);
  v45 = *(a4 + 48);
  *(a4 + 16) = v7;
  *(a4 + 24) = v8;
  *(a4 + 32) = v40;
  *(a4 + 40) = v15;
  *(a4 + 48) = v50;
  v46 = *(a4 + 56);
  *(a4 + 56) = v49;
  LOBYTE(v40) = *(a4 + 57);
  *(a4 + 57) = 1;
  v47 = v51;
  v48 = v15;
  sub_10026B820(v41, v42, v43, v44, v45, v46, v40);
  sub_10022C350(&qword_100CA4D80, &qword_100A2EFE0);
  sub_100006F64(&qword_100CA4D88, &qword_100CA4D80, &qword_100A2EFE0, asc_100AA1480);
  ObservableObject<>.objectWillChange.getter();
  ObservableObjectPublisher.send()();
}

uint64_t sub_1002651CC(void (*a1)(uint64_t, void), uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, void), uint64_t a6)
{
  v52 = a6;
  v53 = a5;
  v56 = a4;
  v57 = a2;
  v58 = a1;
  v54 = sub_10022C350(&qword_100CA4D90, &qword_100A2EFE8);
  __chkstk_darwin(v54);
  v55 = &v48 - v7;
  v8 = sub_10022C350(&qword_100CA4D98, &qword_100A2EFF0);
  __chkstk_darwin(v8 - 8);
  v50 = &v48 - v9;
  v51 = type metadata accessor for MoonCalendarViewModel(0);
  __chkstk_darwin(v51);
  v48 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v49 = &v48 - v12;
  v13 = sub_10022C350(&qword_100CA4DA0, &qword_100A2EFF8);
  __chkstk_darwin(v13);
  v15 = &v48 - v14;
  v16 = sub_10022C350(&qword_100CA4DA8, &unk_100A2F000);
  __chkstk_darwin(v16 - 8);
  v18 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v48 - v20;
  __chkstk_darwin(v22);
  v24 = &v48 - v23;
  __chkstk_darwin(v25);
  v27 = &v48 - v26;
  v28 = type metadata accessor for MoonCalendarInput(0);
  __chkstk_darwin(v28);
  v30 = &v48 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __chkstk_darwin(v31);
  v34 = &v48 - v33;
  (v58)(a3 + 64, 0, v32);
  if (sub_100024D10(v27, 1, v28) == 1)
  {
    return sub_1000180EC(v27, &qword_100CA4DA8, &unk_100A2F000);
  }

  sub_1000A0AC0();
  v58 = v34;
  sub_1001A7BF8();
  sub_10001B350(v24, 0, 1, v28);
  sub_1002497C0(v21);
  v36 = *(v13 + 48);
  sub_100095588();
  sub_100095588();
  if (sub_100024D10(v15, 1, v28) != 1)
  {
    sub_100095588();
    if (sub_100024D10(&v15[v36], 1, v28) != 1)
    {
      sub_1000A0AC0();
      v42 = sub_10061B2A0(v18, v30);
      sub_1001AFB34(v30, type metadata accessor for MoonCalendarInput);
      sub_1000180EC(v21, &qword_100CA4DA8, &unk_100A2F000);
      sub_1000180EC(v24, &qword_100CA4DA8, &unk_100A2F000);
      sub_1001AFB34(v18, type metadata accessor for MoonCalendarInput);
      sub_1000180EC(v15, &qword_100CA4DA8, &unk_100A2F000);
      v37 = v58;
      if (v42)
      {
        goto LABEL_16;
      }

LABEL_9:
      v38 = v50;
      v53(v37, 0);
      if (sub_100024D10(v38, 1, v51) == 1)
      {
        sub_1000180EC(v38, &qword_100CA4D98, &qword_100A2EFF0);
LABEL_11:
        sub_10022C350(&qword_100CA4DB0, &unk_100A9E040);
        sub_1001A7BF8();
        sub_10098A4E0();
        sub_1001AFB34(v37, type metadata accessor for MoonCalendarInput);
        swift_storeEnumTagMultiPayload();
        swift_beginAccess();
        sub_100097AA4();
        return swift_endAccess();
      }

      v39 = v49;
      sub_1000A0AC0();
      v40 = v48;
      sub_10098A4E0();
      if (sub_10026BF50(v39, v40))
      {
        v41 = static OverviewTableViewModel.== infix(_:_:)();
        sub_1001AFB34(v40, type metadata accessor for MoonCalendarViewModel);
        if (v41)
        {
          sub_1001AFB34(v39, type metadata accessor for MoonCalendarViewModel);
          goto LABEL_11;
        }
      }

      else
      {
        sub_1001AFB34(v40, type metadata accessor for MoonCalendarViewModel);
      }

      if (qword_100CA2740 != -1)
      {
        swift_once();
      }

      v44 = type metadata accessor for Logger();
      sub_10000703C(v44, qword_100D90C18);
      v45 = Logger.logObject.getter();
      v46 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        v59[0] = swift_slowAlloc();
        *v47 = 136446466;
        *(v47 + 4) = sub_100078694(0xD000000000000011, 0x8000000100ABC2B0, v59);
        *(v47 + 12) = 2082;
        *(v47 + 14) = sub_100078694(0xD000000000000015, 0x8000000100ABC2D0, v59);
        _os_log_impl(&_mh_execute_header, v45, v46, "Selector observed model difference for %{public}s, %{public}s; views will update", v47, 0x16u);
        swift_arrayDestroy();
      }

      sub_10022C350(&qword_100CA4DB0, &unk_100A9E040);
      sub_1001A7BF8();
      sub_1001A7BF8();
      swift_storeEnumTagMultiPayload();
      swift_beginAccess();
      sub_100097AA4();
      swift_endAccess();
      sub_10022C350(&qword_100CA4DB8, &qword_100A2F010);
      sub_100006F64(&qword_100CA4DC0, &qword_100CA4DB8, &qword_100A2F010, asc_100AA1480);
      ObservableObject<>.objectWillChange.getter();
      ObservableObjectPublisher.send()();

      sub_1001AFB34(v39, type metadata accessor for MoonCalendarViewModel);
      v43 = v37;
      return sub_1001AFB34(v43, type metadata accessor for MoonCalendarInput);
    }

    sub_1000180EC(v21, &qword_100CA4DA8, &unk_100A2F000);
    sub_1000180EC(v24, &qword_100CA4DA8, &unk_100A2F000);
    sub_1001AFB34(v18, type metadata accessor for MoonCalendarInput);
LABEL_8:
    sub_1000180EC(v15, &qword_100CA4DA0, &qword_100A2EFF8);
    v37 = v58;
    goto LABEL_9;
  }

  sub_1000180EC(v21, &qword_100CA4DA8, &unk_100A2F000);
  sub_1000180EC(v24, &qword_100CA4DA8, &unk_100A2F000);
  if (sub_100024D10(&v15[v36], 1, v28) != 1)
  {
    goto LABEL_8;
  }

  sub_1000180EC(v15, &qword_100CA4DA8, &unk_100A2F000);
  v37 = v58;
LABEL_16:
  v43 = v37;
  return sub_1001AFB34(v43, type metadata accessor for MoonCalendarInput);
}

uint64_t sub_100265B84(void (*a1)(uint64_t, void), uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void, void), uint64_t a6)
{
  v52 = a6;
  v53 = a5;
  v56 = a4;
  v57 = a2;
  v58 = a1;
  v54 = sub_10022C350(&qword_100CA4DC8, &qword_100A2F018);
  __chkstk_darwin(v54);
  v55 = &v48 - v7;
  v8 = sub_10022C350(&qword_100CA4DD0, &qword_100A2F020);
  __chkstk_darwin(v8 - 8);
  v51 = &v48 - v9;
  v50 = type metadata accessor for HomeAndWorkRefinementViewModel(0);
  __chkstk_darwin(v50);
  v48 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v49 = &v48 - v12;
  v13 = sub_10022C350(&qword_100CA4DD8, &qword_100A2F028);
  __chkstk_darwin(v13);
  v15 = &v48 - v14;
  v16 = sub_10022C350(&qword_100CA4DE0, &unk_100A2F030);
  __chkstk_darwin(v16 - 8);
  v18 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v48 - v20;
  __chkstk_darwin(v22);
  v24 = &v48 - v23;
  __chkstk_darwin(v25);
  v27 = &v48 - v26;
  v28 = type metadata accessor for HomeAndWorkRefinementInput(0);
  __chkstk_darwin(v28);
  v30 = &v48 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __chkstk_darwin(v31);
  v34 = &v48 - v33;
  (v58)(a3 + 64, 0, v32);
  if (sub_100024D10(v27, 1, v28) == 1)
  {
    return sub_1000180EC(v27, &qword_100CA4DE0, &unk_100A2F030);
  }

  sub_1000A0AC0();
  v58 = v34;
  sub_1001A7BF8();
  sub_10001B350(v24, 0, 1, v28);
  sub_100249B18(v21);
  v36 = *(v13 + 48);
  sub_100095588();
  sub_100095588();
  if (sub_100024D10(v15, 1, v28) != 1)
  {
    sub_100095588();
    if (sub_100024D10(&v15[v36], 1, v28) != 1)
    {
      sub_1000A0AC0();
      v42 = sub_10053885C(v18, v30);
      sub_1001AFB34(v30, type metadata accessor for HomeAndWorkRefinementInput);
      sub_1000180EC(v21, &qword_100CA4DE0, &unk_100A2F030);
      sub_1000180EC(v24, &qword_100CA4DE0, &unk_100A2F030);
      sub_1001AFB34(v18, type metadata accessor for HomeAndWorkRefinementInput);
      sub_1000180EC(v15, &qword_100CA4DE0, &unk_100A2F030);
      if (v42)
      {
        goto LABEL_15;
      }

LABEL_9:
      v37 = v51;
      v38 = v58;
      v53(v58, 0);
      if (sub_100024D10(v37, 1, v50) == 1)
      {
        sub_1000180EC(v37, &qword_100CA4DD0, &qword_100A2F020);
      }

      else
      {
        v39 = v49;
        sub_1000A0AC0();
        v40 = v48;
        sub_100988718();
        v41 = sub_1009D0C5C(v39, v40);
        sub_1001AFB34(v40, type metadata accessor for HomeAndWorkRefinementViewModel);
        if ((v41 & 1) == 0)
        {
          if (qword_100CA2740 != -1)
          {
            swift_once();
          }

          v44 = type metadata accessor for Logger();
          sub_10000703C(v44, qword_100D90C18);
          v45 = Logger.logObject.getter();
          v46 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v45, v46))
          {
            v47 = swift_slowAlloc();
            v59[0] = swift_slowAlloc();
            *v47 = 136446466;
            *(v47 + 4) = sub_100078694(0xD00000000000001ALL, 0x8000000100ABC2F0, v59);
            *(v47 + 12) = 2082;
            *(v47 + 14) = sub_100078694(0xD00000000000001ELL, 0x8000000100ABC310, v59);
            _os_log_impl(&_mh_execute_header, v45, v46, "Selector observed model difference for %{public}s, %{public}s; views will update", v47, 0x16u);
            swift_arrayDestroy();
          }

          sub_10022C350(&qword_100CA4DE8, &unk_100A9E050);
          sub_1001A7BF8();
          sub_1001A7BF8();
          swift_storeEnumTagMultiPayload();
          swift_beginAccess();
          sub_100097AA4();
          swift_endAccess();
          sub_10022C350(&qword_100CA4DF0, &qword_100A2F040);
          sub_100006F64(&qword_100CA4DF8, &qword_100CA4DF0, &qword_100A2F040, asc_100AA1480);
          ObservableObject<>.objectWillChange.getter();
          ObservableObjectPublisher.send()();

          sub_1001AFB34(v39, type metadata accessor for HomeAndWorkRefinementViewModel);
          v43 = v38;
          return sub_1001AFB34(v43, type metadata accessor for HomeAndWorkRefinementInput);
        }

        sub_1001AFB34(v39, type metadata accessor for HomeAndWorkRefinementViewModel);
      }

      sub_10022C350(&qword_100CA4DE8, &unk_100A9E050);
      sub_1001A7BF8();
      sub_100988718();
      sub_1001AFB34(v38, type metadata accessor for HomeAndWorkRefinementInput);
      swift_storeEnumTagMultiPayload();
      swift_beginAccess();
      sub_100097AA4();
      return swift_endAccess();
    }

    sub_1000180EC(v21, &qword_100CA4DE0, &unk_100A2F030);
    sub_1000180EC(v24, &qword_100CA4DE0, &unk_100A2F030);
    sub_1001AFB34(v18, type metadata accessor for HomeAndWorkRefinementInput);
LABEL_8:
    sub_1000180EC(v15, &qword_100CA4DD8, &qword_100A2F028);
    goto LABEL_9;
  }

  sub_1000180EC(v21, &qword_100CA4DE0, &unk_100A2F030);
  sub_1000180EC(v24, &qword_100CA4DE0, &unk_100A2F030);
  if (sub_100024D10(&v15[v36], 1, v28) != 1)
  {
    goto LABEL_8;
  }

  sub_1000180EC(v15, &qword_100CA4DE0, &unk_100A2F030);
LABEL_15:
  v43 = v58;
  return sub_1001AFB34(v43, type metadata accessor for HomeAndWorkRefinementInput);
}

uint64_t sub_1002664F8(void (*a1)(uint64_t, void), uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *__return_ptr, uint64_t, void), uint64_t a6)
{
  v45 = a6;
  v46 = a5;
  v49 = a4;
  v50 = a2;
  v51 = a1;
  v47 = sub_10022C350(&qword_100CA4E00, &qword_100A2F048);
  __chkstk_darwin(v47);
  v48 = &v43 - v7;
  v8 = sub_10022C350(&qword_100CA4E08, &qword_100A2F050);
  __chkstk_darwin(v8);
  v10 = &v43 - v9;
  v11 = sub_10022C350(&qword_100CA4E10, &qword_100A2F058);
  __chkstk_darwin(v11 - 8);
  v44 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v43 - v14;
  __chkstk_darwin(v16);
  v18 = &v43 - v17;
  __chkstk_darwin(v19);
  v21 = &v43 - v20;
  v22 = type metadata accessor for NotificationSettingsInput(0);
  __chkstk_darwin(v22);
  v24 = (&v43 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = __chkstk_darwin(v25);
  v28 = &v43 - v27;
  (v51)(a3 + 64, 0, v26);
  if (sub_100024D10(v21, 1, v22) == 1)
  {
    return sub_1000180EC(v21, &qword_100CA4E10, &qword_100A2F058);
  }

  sub_1000A0AC0();
  v51 = v28;
  sub_1001A7BF8();
  sub_10001B350(v18, 0, 1, v22);
  sub_100249E70(v15);
  v30 = *(v8 + 48);
  sub_100095588();
  sub_100095588();
  if (sub_100024D10(v10, 1, v22) != 1)
  {
    v32 = v44;
    sub_100095588();
    if (sub_100024D10(&v10[v30], 1, v22) != 1)
    {
      sub_1000A0AC0();
      v35 = sub_100352B70(v32, v24);
      sub_1001AFB34(v24, type metadata accessor for NotificationSettingsInput);
      sub_1000180EC(v15, &qword_100CA4E10, &qword_100A2F058);
      sub_1000180EC(v18, &qword_100CA4E10, &qword_100A2F058);
      sub_1001AFB34(v32, type metadata accessor for NotificationSettingsInput);
      sub_1000180EC(v10, &qword_100CA4E10, &qword_100A2F058);
      v31 = v51;
      if (v35)
      {
        goto LABEL_15;
      }

LABEL_9:
      v46(v56, v31, 0);
      if (LOBYTE(v56[12]) <= 0xFDu)
      {
        memcpy(v54, v56, 0x61uLL);
        memcpy(v57, v56, 0x61uLL);
        sub_10098A0B8();
        memcpy(__dst, v53, 0x61uLL);
        v34 = sub_1006F4B84(v57, __dst);
        memcpy(v55, v53, 0x61uLL);
        sub_10026BA38(v55);
        if ((v34 & 1) == 0)
        {
          if (qword_100CA2740 != -1)
          {
            swift_once();
          }

          v37 = type metadata accessor for Logger();
          sub_10000703C(v37, qword_100D90C18);
          v38 = Logger.logObject.getter();
          v39 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v38, v39))
          {
            v40 = swift_slowAlloc();
            v53[0] = swift_slowAlloc();
            *v40 = 136446466;
            *(v40 + 4) = sub_100078694(0xD000000000000019, 0x8000000100ABC330, v53);
            *(v40 + 12) = 2082;
            *(v40 + 14) = sub_100078694(0xD00000000000001DLL, 0x8000000100ABC350, v53);
            _os_log_impl(&_mh_execute_header, v38, v39, "Selector observed model difference for %{public}s, %{public}s; views will update", v40, 0x16u);
            swift_arrayDestroy();
          }

          v41 = *(sub_10022C350(&qword_100CA4E20, &qword_100A9E060) + 48);
          v42 = v48;
          sub_1001A7BF8();
          memcpy(&v42[v41], v57, 0x61uLL);
          swift_storeEnumTagMultiPayload();
          swift_beginAccess();
          memcpy(v53, v54, 0x61uLL);
          sub_10026BA8C(v53, &v52);
          sub_100097AA4();
          swift_endAccess();
          sub_10022C350(&qword_100CA4E28, &unk_100A2F070);
          sub_100006F64(&qword_100CA4E30, &qword_100CA4E28, &unk_100A2F070, asc_100AA1480);
          ObservableObject<>.objectWillChange.getter();
          ObservableObjectPublisher.send()();

          sub_1000180EC(v54, &qword_100CA4E18, &unk_100A2F060);
          v36 = v31;
          return sub_1001AFB34(v36, type metadata accessor for NotificationSettingsInput);
        }

        v33 = v54;
      }

      else
      {
        memcpy(__dst, v56, 0x61uLL);
        v33 = __dst;
      }

      sub_1000180EC(v33, &qword_100CA4E18, &unk_100A2F060);
      sub_10022C350(&qword_100CA4E20, &qword_100A9E060);
      sub_1001A7BF8();
      sub_10098A0B8();
      sub_1001AFB34(v31, type metadata accessor for NotificationSettingsInput);
      swift_storeEnumTagMultiPayload();
      swift_beginAccess();
      sub_100097AA4();
      return swift_endAccess();
    }

    sub_1000180EC(v15, &qword_100CA4E10, &qword_100A2F058);
    sub_1000180EC(v18, &qword_100CA4E10, &qword_100A2F058);
    sub_1001AFB34(v32, type metadata accessor for NotificationSettingsInput);
LABEL_8:
    sub_1000180EC(v10, &qword_100CA4E08, &qword_100A2F050);
    v31 = v51;
    goto LABEL_9;
  }

  sub_1000180EC(v15, &qword_100CA4E10, &qword_100A2F058);
  sub_1000180EC(v18, &qword_100CA4E10, &qword_100A2F058);
  if (sub_100024D10(&v10[v30], 1, v22) != 1)
  {
    goto LABEL_8;
  }

  sub_1000180EC(v10, &qword_100CA4E10, &qword_100A2F058);
  v31 = v51;
LABEL_15:
  v36 = v31;
  return sub_1001AFB34(v36, type metadata accessor for NotificationSettingsInput);
}

void sub_100266DEC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    swift_beginAccess();
    v10 = *(v8 + 16);
    if (*(v10 + 16) && (v11 = sub_1000D5F5C(a2, v9), (v12 & 1) != 0))
    {
      v13 = *(*(v10 + 56) + 8 * v11);
      swift_endAccess();
      if (v13 == a3)
      {
LABEL_5:
        swift_beginAccess();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        sub_1000D52D8(0, a2, isUniquelyReferenced_nonNull_native, v15, v16, v17, v18, v19, v25, *(v8 + 16));
        *(v8 + 16) = v26;
        v20 = swift_endAccess();
        a4(v20);

        return;
      }
    }

    else
    {
      swift_endAccess();
      if (!a3)
      {
        goto LABEL_5;
      }
    }

    if (qword_100CA2740 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_10000703C(v21, qword_100D90C18);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v27[0] = swift_slowAlloc();
      *v24 = 136315906;
      *(v24 + 4) = sub_100078694(0x746174536E69614DLL, 0xE900000000000065, v27);
      *(v24 + 12) = 2080;
      *(v24 + 14) = sub_100078694(0x746174536E69614DLL, 0xE900000000000065, v27);
      *(v24 + 22) = 2080;
      *(v24 + 24) = sub_100078694(0xD000000000000019, 0x8000000100ABBD50, v27);
      *(v24 + 32) = 2048;
      *(v24 + 34) = a3;
      _os_log_impl(&_mh_execute_header, v22, v23, "Debounced state update; another update came through afterwards. Selector=<%s, %s, %s>, Count=%ld", v24, 0x2Au);
      swift_arrayDestroy();
    }
  }
}

void sub_10026708C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    swift_beginAccess();
    v10 = *(v8 + 16);
    if (*(v10 + 16) && (v11 = sub_1000D5F5C(a2, v9), (v12 & 1) != 0))
    {
      v13 = *(*(v10 + 56) + 8 * v11);
      swift_endAccess();
      if (v13 == a3)
      {
LABEL_5:
        swift_beginAccess();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        sub_1000D52D8(0, a2, isUniquelyReferenced_nonNull_native, v15, v16, v17, v18, v19, v25, *(v8 + 16));
        *(v8 + 16) = v26;
        v20 = swift_endAccess();
        a4(v20);

        return;
      }
    }

    else
    {
      swift_endAccess();
      if (!a3)
      {
        goto LABEL_5;
      }
    }

    if (qword_100CA2740 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_10000703C(v21, qword_100D90C18);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v27[0] = swift_slowAlloc();
      *v24 = 136315906;
      *(v24 + 4) = sub_100078694(0x746174536E69614DLL, 0xE900000000000065, v27);
      *(v24 + 12) = 2080;
      *(v24 + 14) = sub_100078694(0x617465446E6F6F4DLL, 0xEF7475706E496C69, v27);
      *(v24 + 22) = 2080;
      *(v24 + 24) = sub_100078694(0xD000000000000013, 0x8000000100ABBE40, v27);
      *(v24 + 32) = 2048;
      *(v24 + 34) = a3;
      _os_log_impl(&_mh_execute_header, v22, v23, "Debounced state update; another update came through afterwards. Selector=<%s, %s, %s>, Count=%ld", v24, 0x2Au);
      swift_arrayDestroy();
    }
  }
}

void sub_10026733C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    swift_beginAccess();
    v10 = *(v8 + 16);
    if (*(v10 + 16) && (v11 = sub_1000D5F5C(a2, v9), (v12 & 1) != 0))
    {
      v13 = *(*(v10 + 56) + 8 * v11);
      swift_endAccess();
      if (v13 == a3)
      {
LABEL_5:
        swift_beginAccess();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        sub_1000D52D8(0, a2, isUniquelyReferenced_nonNull_native, v15, v16, v17, v18, v19, v25, *(v8 + 16));
        *(v8 + 16) = v26;
        v20 = swift_endAccess();
        a4(v20);

        return;
      }
    }

    else
    {
      swift_endAccess();
      if (!a3)
      {
        goto LABEL_5;
      }
    }

    if (qword_100CA2740 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_10000703C(v21, qword_100D90C18);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v27[0] = swift_slowAlloc();
      *v24 = 136315906;
      *(v24 + 4) = sub_100078694(0x746174536E69614DLL, 0xE900000000000065, v27);
      *(v24 + 12) = 2080;
      *(v24 + 14) = sub_100078694(0x746174536E69614DLL, 0xE900000000000065, v27);
      *(v24 + 22) = 2080;
      *(v24 + 24) = sub_100078694(0xD000000000000016, 0x8000000100ABBE60, v27);
      *(v24 + 32) = 2048;
      *(v24 + 34) = a3;
      _os_log_impl(&_mh_execute_header, v22, v23, "Debounced state update; another update came through afterwards. Selector=<%s, %s, %s>, Count=%ld", v24, 0x2Au);
      swift_arrayDestroy();
    }
  }
}

void sub_1002675DC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    swift_beginAccess();
    v10 = *(v8 + 16);
    if (*(v10 + 16) && (v11 = sub_1000D5F5C(a2, v9), (v12 & 1) != 0))
    {
      v13 = *(*(v10 + 56) + 8 * v11);
      swift_endAccess();
      if (v13 == a3)
      {
LABEL_5:
        swift_beginAccess();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        sub_1000D52D8(0, a2, isUniquelyReferenced_nonNull_native, v15, v16, v17, v18, v19, v25, *(v8 + 16));
        *(v8 + 16) = v26;
        v20 = swift_endAccess();
        a4(v20);

        return;
      }
    }

    else
    {
      swift_endAccess();
      if (!a3)
      {
        goto LABEL_5;
      }
    }

    if (qword_100CA2740 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_10000703C(v21, qword_100D90C18);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v27[0] = swift_slowAlloc();
      *v24 = 136315906;
      *(v24 + 4) = sub_100078694(0x746174536E69614DLL, 0xE900000000000065, v27);
      *(v24 + 12) = 2080;
      *(v24 + 14) = sub_100078694(0xD000000000000014, 0x8000000100ABBE80, v27);
      *(v24 + 22) = 2080;
      *(v24 + 24) = sub_100078694(0xD000000000000018, 0x8000000100ABBEA0, v27);
      *(v24 + 32) = 2048;
      *(v24 + 34) = a3;
      _os_log_impl(&_mh_execute_header, v22, v23, "Debounced state update; another update came through afterwards. Selector=<%s, %s, %s>, Count=%ld", v24, 0x2Au);
      swift_arrayDestroy();
    }
  }
}

void sub_100267888(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    swift_beginAccess();
    v10 = *(v8 + 16);
    if (*(v10 + 16) && (v11 = sub_1000D5F5C(a2, v9), (v12 & 1) != 0))
    {
      v13 = *(*(v10 + 56) + 8 * v11);
      swift_endAccess();
      if (v13 == a3)
      {
LABEL_5:
        swift_beginAccess();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        sub_1000D52D8(0, a2, isUniquelyReferenced_nonNull_native, v15, v16, v17, v18, v19, v25, *(v8 + 16));
        *(v8 + 16) = v26;
        v20 = swift_endAccess();
        a4(v20);

        return;
      }
    }

    else
    {
      swift_endAccess();
      if (!a3)
      {
        goto LABEL_5;
      }
    }

    if (qword_100CA2740 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_10000703C(v21, qword_100D90C18);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v27[0] = swift_slowAlloc();
      *v24 = 136315906;
      *(v24 + 4) = sub_100078694(0x746174536E69614DLL, 0xE900000000000065, v27);
      *(v24 + 12) = 2080;
      *(v24 + 14) = sub_100078694(0xD000000000000017, 0x8000000100ABBEC0, v27);
      *(v24 + 22) = 2080;
      *(v24 + 24) = sub_100078694(0xD00000000000001BLL, 0x8000000100ABBEE0, v27);
      *(v24 + 32) = 2048;
      *(v24 + 34) = a3;
      _os_log_impl(&_mh_execute_header, v22, v23, "Debounced state update; another update came through afterwards. Selector=<%s, %s, %s>, Count=%ld", v24, 0x2Au);
      swift_arrayDestroy();
    }
  }
}

void sub_100267B34(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    swift_beginAccess();
    v10 = *(v8 + 16);
    if (*(v10 + 16) && (v11 = sub_1000D5F5C(a2, v9), (v12 & 1) != 0))
    {
      v13 = *(*(v10 + 56) + 8 * v11);
      swift_endAccess();
      if (v13 == a3)
      {
LABEL_5:
        swift_beginAccess();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        sub_1000D52D8(0, a2, isUniquelyReferenced_nonNull_native, v15, v16, v17, v18, v19, v25, *(v8 + 16));
        *(v8 + 16) = v26;
        v20 = swift_endAccess();
        a4(v20);

        return;
      }
    }

    else
    {
      swift_endAccess();
      if (!a3)
      {
        goto LABEL_5;
      }
    }

    if (qword_100CA2740 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_10000703C(v21, qword_100D90C18);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v27[0] = swift_slowAlloc();
      *v24 = 136315906;
      *(v24 + 4) = sub_100078694(0x746174536E69614DLL, 0xE900000000000065, v27);
      *(v24 + 12) = 2080;
      *(v24 + 14) = sub_100078694(0x656B636950796144, 0xEE007475706E4972, v27);
      *(v24 + 22) = 2080;
      *(v24 + 24) = sub_100078694(0xD000000000000012, 0x8000000100ABBF00, v27);
      *(v24 + 32) = 2048;
      *(v24 + 34) = a3;
      _os_log_impl(&_mh_execute_header, v22, v23, "Debounced state update; another update came through afterwards. Selector=<%s, %s, %s>, Count=%ld", v24, 0x2Au);
      swift_arrayDestroy();
    }
  }
}

void sub_100267DE4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    swift_beginAccess();
    v10 = *(v8 + 16);
    if (*(v10 + 16) && (v11 = sub_1000D5F5C(a2, v9), (v12 & 1) != 0))
    {
      v13 = *(*(v10 + 56) + 8 * v11);
      swift_endAccess();
      if (v13 == a3)
      {
LABEL_5:
        swift_beginAccess();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        sub_1000D52D8(0, a2, isUniquelyReferenced_nonNull_native, v15, v16, v17, v18, v19, v25, *(v8 + 16));
        *(v8 + 16) = v26;
        v20 = swift_endAccess();
        a4(v20);

        return;
      }
    }

    else
    {
      swift_endAccess();
      if (!a3)
      {
        goto LABEL_5;
      }
    }

    if (qword_100CA2740 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_10000703C(v21, qword_100D90C18);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v27[0] = swift_slowAlloc();
      *v24 = 136315906;
      *(v24 + 4) = sub_100078694(0x746174536E69614DLL, 0xE900000000000065, v27);
      *(v24 + 12) = 2080;
      *(v24 + 14) = sub_100078694(0x746174536E69614DLL, 0xE900000000000065, v27);
      *(v24 + 22) = 2080;
      *(v24 + 24) = sub_100078694(0xD000000000000010, 0x8000000100ABBF20, v27);
      *(v24 + 32) = 2048;
      *(v24 + 34) = a3;
      _os_log_impl(&_mh_execute_header, v22, v23, "Debounced state update; another update came through afterwards. Selector=<%s, %s, %s>, Count=%ld", v24, 0x2Au);
      swift_arrayDestroy();
    }
  }
}

void sub_100268084(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    swift_beginAccess();
    v10 = *(v8 + 16);
    if (*(v10 + 16) && (v11 = sub_1000D5F5C(a2, v9), (v12 & 1) != 0))
    {
      v13 = *(*(v10 + 56) + 8 * v11);
      swift_endAccess();
      if (v13 == a3)
      {
LABEL_5:
        swift_beginAccess();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        sub_1000D52D8(0, a2, isUniquelyReferenced_nonNull_native, v15, v16, v17, v18, v19, v25, *(v8 + 16));
        *(v8 + 16) = v26;
        v20 = swift_endAccess();
        a4(v20);

        return;
      }
    }

    else
    {
      swift_endAccess();
      if (!a3)
      {
        goto LABEL_5;
      }
    }

    if (qword_100CA2740 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_10000703C(v21, qword_100D90C18);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v27[0] = swift_slowAlloc();
      *v24 = 136315906;
      *(v24 + 4) = sub_100078694(0x746174536E69614DLL, 0xE900000000000065, v27);
      *(v24 + 12) = 2080;
      *(v24 + 14) = sub_100078694(0xD000000000000010, 0x8000000100ABBF40, v27);
      *(v24 + 22) = 2080;
      *(v24 + 24) = sub_100078694(0xD000000000000014, 0x8000000100ABBF60, v27);
      *(v24 + 32) = 2048;
      *(v24 + 34) = a3;
      _os_log_impl(&_mh_execute_header, v22, v23, "Debounced state update; another update came through afterwards. Selector=<%s, %s, %s>, Count=%ld", v24, 0x2Au);
      swift_arrayDestroy();
    }
  }
}

void sub_100268330(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    swift_beginAccess();
    v10 = *(v8 + 16);
    if (*(v10 + 16) && (v11 = sub_1000D5F5C(a2, v9), (v12 & 1) != 0))
    {
      v13 = *(*(v10 + 56) + 8 * v11);
      swift_endAccess();
      if (v13 == a3)
      {
LABEL_5:
        swift_beginAccess();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        sub_1000D52D8(0, a2, isUniquelyReferenced_nonNull_native, v15, v16, v17, v18, v19, v25, *(v8 + 16));
        *(v8 + 16) = v26;
        v20 = swift_endAccess();
        a4(v20);

        return;
      }
    }

    else
    {
      swift_endAccess();
      if (!a3)
      {
        goto LABEL_5;
      }
    }

    if (qword_100CA2740 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_10000703C(v21, qword_100D90C18);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v27[0] = swift_slowAlloc();
      *v24 = 136315906;
      *(v24 + 4) = sub_100078694(0x746174536E69614DLL, 0xE900000000000065, v27);
      *(v24 + 12) = 2080;
      *(v24 + 14) = sub_100078694(0xD000000000000019, 0x8000000100ABBF80, v27);
      *(v24 + 22) = 2080;
      *(v24 + 24) = sub_100078694(0xD00000000000001DLL, 0x8000000100ABBFA0, v27);
      *(v24 + 32) = 2048;
      *(v24 + 34) = a3;
      _os_log_impl(&_mh_execute_header, v22, v23, "Debounced state update; another update came through afterwards. Selector=<%s, %s, %s>, Count=%ld", v24, 0x2Au);
      swift_arrayDestroy();
    }
  }
}

void sub_1002685DC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    swift_beginAccess();
    v10 = *(v8 + 16);
    if (*(v10 + 16) && (v11 = sub_1000D5F5C(a2, v9), (v12 & 1) != 0))
    {
      v13 = *(*(v10 + 56) + 8 * v11);
      swift_endAccess();
      if (v13 == a3)
      {
LABEL_5:
        swift_beginAccess();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        sub_1000D52D8(0, a2, isUniquelyReferenced_nonNull_native, v15, v16, v17, v18, v19, v25, *(v8 + 16));
        *(v8 + 16) = v26;
        v20 = swift_endAccess();
        a4(v20);

        return;
      }
    }

    else
    {
      swift_endAccess();
      if (!a3)
      {
        goto LABEL_5;
      }
    }

    if (qword_100CA2740 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_10000703C(v21, qword_100D90C18);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v27[0] = swift_slowAlloc();
      *v24 = 136315906;
      *(v24 + 4) = sub_100078694(0x746174536E69614DLL, 0xE900000000000065, v27);
      *(v24 + 12) = 2080;
      *(v24 + 14) = sub_100078694(0xD000000000000014, 0x8000000100ABBFC0, v27);
      *(v24 + 22) = 2080;
      *(v24 + 24) = sub_100078694(0xD000000000000018, 0x8000000100ABBFE0, v27);
      *(v24 + 32) = 2048;
      *(v24 + 34) = a3;
      _os_log_impl(&_mh_execute_header, v22, v23, "Debounced state update; another update came through afterwards. Selector=<%s, %s, %s>, Count=%ld", v24, 0x2Au);
      swift_arrayDestroy();
    }
  }
}

void sub_100268888(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    swift_beginAccess();
    v10 = *(v8 + 16);
    if (*(v10 + 16) && (v11 = sub_1000D5F5C(a2, v9), (v12 & 1) != 0))
    {
      v13 = *(*(v10 + 56) + 8 * v11);
      swift_endAccess();
      if (v13 == a3)
      {
LABEL_5:
        swift_beginAccess();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        sub_1000D52D8(0, a2, isUniquelyReferenced_nonNull_native, v15, v16, v17, v18, v19, v25, *(v8 + 16));
        *(v8 + 16) = v26;
        v20 = swift_endAccess();
        a4(v20);

        return;
      }
    }

    else
    {
      swift_endAccess();
      if (!a3)
      {
        goto LABEL_5;
      }
    }

    if (qword_100CA2740 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_10000703C(v21, qword_100D90C18);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v27[0] = swift_slowAlloc();
      *v24 = 136315906;
      *(v24 + 4) = sub_100078694(0x746174536E69614DLL, 0xE900000000000065, v27);
      *(v24 + 12) = 2080;
      *(v24 + 14) = sub_100078694(0xD000000000000013, 0x8000000100ABC000, v27);
      *(v24 + 22) = 2080;
      *(v24 + 24) = sub_100078694(0xD000000000000017, 0x8000000100ABC020, v27);
      *(v24 + 32) = 2048;
      *(v24 + 34) = a3;
      _os_log_impl(&_mh_execute_header, v22, v23, "Debounced state update; another update came through afterwards. Selector=<%s, %s, %s>, Count=%ld", v24, 0x2Au);
      swift_arrayDestroy();
    }
  }
}

void sub_100268B34(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    swift_beginAccess();
    v10 = *(v8 + 16);
    if (*(v10 + 16) && (v11 = sub_1000D5F5C(a2, v9), (v12 & 1) != 0))
    {
      v13 = *(*(v10 + 56) + 8 * v11);
      swift_endAccess();
      if (v13 == a3)
      {
LABEL_5:
        swift_beginAccess();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        sub_1000D52D8(0, a2, isUniquelyReferenced_nonNull_native, v15, v16, v17, v18, v19, v25, *(v8 + 16));
        *(v8 + 16) = v26;
        v20 = swift_endAccess();
        a4(v20);

        return;
      }
    }

    else
    {
      swift_endAccess();
      if (!a3)
      {
        goto LABEL_5;
      }
    }

    if (qword_100CA2740 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_10000703C(v21, qword_100D90C18);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v27[0] = swift_slowAlloc();
      *v24 = 136315906;
      *(v24 + 4) = sub_100078694(0x746174536E69614DLL, 0xE900000000000065, v27);
      *(v24 + 12) = 2080;
      *(v24 + 14) = sub_100078694(0xD000000000000020, 0x8000000100ABC040, v27);
      *(v24 + 22) = 2080;
      *(v24 + 24) = sub_100078694(0xD000000000000024, 0x8000000100ABC070, v27);
      *(v24 + 32) = 2048;
      *(v24 + 34) = a3;
      _os_log_impl(&_mh_execute_header, v22, v23, "Debounced state update; another update came through afterwards. Selector=<%s, %s, %s>, Count=%ld", v24, 0x2Au);
      swift_arrayDestroy();
    }
  }
}

void sub_100268DE0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    swift_beginAccess();
    v10 = *(v8 + 16);
    if (*(v10 + 16) && (v11 = sub_1000D5F5C(a2, v9), (v12 & 1) != 0))
    {
      v13 = *(*(v10 + 56) + 8 * v11);
      swift_endAccess();
      if (v13 == a3)
      {
LABEL_5:
        swift_beginAccess();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        sub_1000D52D8(0, a2, isUniquelyReferenced_nonNull_native, v15, v16, v17, v18, v19, v25, *(v8 + 16));
        *(v8 + 16) = v26;
        v20 = swift_endAccess();
        a4(v20);

        return;
      }
    }

    else
    {
      swift_endAccess();
      if (!a3)
      {
        goto LABEL_5;
      }
    }

    if (qword_100CA2740 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_10000703C(v21, qword_100D90C18);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v27[0] = swift_slowAlloc();
      *v24 = 136315906;
      *(v24 + 4) = sub_100078694(0x746174536E69614DLL, 0xE900000000000065, v27);
      *(v24 + 12) = 2080;
      *(v24 + 14) = sub_100078694(0xD000000000000013, 0x8000000100ABC0A0, v27);
      *(v24 + 22) = 2080;
      *(v24 + 24) = sub_100078694(0xD000000000000013, 0x8000000100ABC0C0, v27);
      *(v24 + 32) = 2048;
      *(v24 + 34) = a3;
      _os_log_impl(&_mh_execute_header, v22, v23, "Debounced state update; another update came through afterwards. Selector=<%s, %s, %s>, Count=%ld", v24, 0x2Au);
      swift_arrayDestroy();
    }
  }
}

void sub_100269088(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    swift_beginAccess();
    v10 = *(v8 + 16);
    if (*(v10 + 16) && (v11 = sub_1000D5F5C(a2, v9), (v12 & 1) != 0))
    {
      v13 = *(*(v10 + 56) + 8 * v11);
      swift_endAccess();
      if (v13 == a3)
      {
LABEL_5:
        swift_beginAccess();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        sub_1000D52D8(0, a2, isUniquelyReferenced_nonNull_native, v15, v16, v17, v18, v19, v25, *(v8 + 16));
        *(v8 + 16) = v26;
        v20 = swift_endAccess();
        a4(v20);

        return;
      }
    }

    else
    {
      swift_endAccess();
      if (!a3)
      {
        goto LABEL_5;
      }
    }

    if (qword_100CA2740 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_10000703C(v21, qword_100D90C18);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v27[0] = swift_slowAlloc();
      *v24 = 136315906;
      *(v24 + 4) = sub_100078694(0x746174536E69614DLL, 0xE900000000000065, v27);
      *(v24 + 12) = 2080;
      *(v24 + 14) = sub_100078694(0xD000000000000013, 0x8000000100ABC150, v27);
      *(v24 + 22) = 2080;
      *(v24 + 24) = sub_100078694(0xD000000000000017, 0x8000000100ABC170, v27);
      *(v24 + 32) = 2048;
      *(v24 + 34) = a3;
      _os_log_impl(&_mh_execute_header, v22, v23, "Debounced state update; another update came through afterwards. Selector=<%s, %s, %s>, Count=%ld", v24, 0x2Au);
      swift_arrayDestroy();
    }
  }
}

void sub_100269334(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    swift_beginAccess();
    v10 = *(v8 + 16);
    if (*(v10 + 16) && (v11 = sub_1000D5F5C(a2, v9), (v12 & 1) != 0))
    {
      v13 = *(*(v10 + 56) + 8 * v11);
      swift_endAccess();
      if (v13 == a3)
      {
LABEL_5:
        swift_beginAccess();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        sub_1000D52D8(0, a2, isUniquelyReferenced_nonNull_native, v15, v16, v17, v18, v19, v25, *(v8 + 16));
        *(v8 + 16) = v26;
        v20 = swift_endAccess();
        a4(v20);

        return;
      }
    }

    else
    {
      swift_endAccess();
      if (!a3)
      {
        goto LABEL_5;
      }
    }

    if (qword_100CA2740 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_10000703C(v21, qword_100D90C18);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v27[0] = swift_slowAlloc();
      *v24 = 136315906;
      *(v24 + 4) = sub_100078694(0x746174536E69614DLL, 0xE900000000000065, v27);
      *(v24 + 12) = 2080;
      *(v24 + 14) = sub_100078694(0xD000000000000017, 0x8000000100ABC190, v27);
      *(v24 + 22) = 2080;
      *(v24 + 24) = sub_100078694(0xD00000000000001BLL, 0x8000000100ABC1B0, v27);
      *(v24 + 32) = 2048;
      *(v24 + 34) = a3;
      _os_log_impl(&_mh_execute_header, v22, v23, "Debounced state update; another update came through afterwards. Selector=<%s, %s, %s>, Count=%ld", v24, 0x2Au);
      swift_arrayDestroy();
    }
  }
}

void sub_1002695E0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), uint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, unint64_t a9)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    swift_beginAccess();
    v18 = *(v16 + 16);
    if (*(v18 + 16) && (v19 = sub_1000D5F5C(a2, v17), (v20 & 1) != 0))
    {
      v21 = *(*(v18 + 56) + 8 * v19);
      swift_endAccess();
      if (v21 == a3)
      {
LABEL_5:
        swift_beginAccess();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        sub_1000D52D8(0, a2, isUniquelyReferenced_nonNull_native, v23, v24, v25, v26, v27, v34, *(v16 + 16));
        *(v16 + 16) = v35;
        v28 = swift_endAccess();
        a4(v28);

        return;
      }
    }

    else
    {
      swift_endAccess();
      if (!a3)
      {
        goto LABEL_5;
      }
    }

    if (qword_100CA2740 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    sub_10000703C(v29, qword_100D90C18);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v36[0] = swift_slowAlloc();
      *v32 = 136315906;
      v33 = sub_100037950();
      *(v32 + 4) = sub_100078694(v33, 0xE900000000000065, v36);
      *(v32 + 12) = 2080;
      *(v32 + 14) = sub_100078694(a6, a7, v36);
      *(v32 + 22) = 2080;
      *(v32 + 24) = sub_100078694(a8, a9, v36);
      *(v32 + 32) = 2048;
      *(v32 + 34) = a3;
      _os_log_impl(&_mh_execute_header, v30, v31, "Debounced state update; another update came through afterwards. Selector=<%s, %s, %s>, Count=%ld", v32, 0x2Au);
      swift_arrayDestroy();
    }
  }
}

void sub_100269878(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    swift_beginAccess();
    v10 = *(v8 + 16);
    if (*(v10 + 16) && (v11 = sub_1000D5F5C(a2, v9), (v12 & 1) != 0))
    {
      v13 = *(*(v10 + 56) + 8 * v11);
      swift_endAccess();
      if (v13 == a3)
      {
LABEL_5:
        swift_beginAccess();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        sub_1000D52D8(0, a2, isUniquelyReferenced_nonNull_native, v15, v16, v17, v18, v19, v25, *(v8 + 16));
        *(v8 + 16) = v26;
        v20 = swift_endAccess();
        a4(v20);

        return;
      }
    }

    else
    {
      swift_endAccess();
      if (!a3)
      {
        goto LABEL_5;
      }
    }

    if (qword_100CA2740 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_10000703C(v21, qword_100D90C18);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v27[0] = swift_slowAlloc();
      *v24 = 136315906;
      *(v24 + 4) = sub_100078694(0x746174536E69614DLL, 0xE900000000000065, v27);
      *(v24 + 12) = 2080;
      *(v24 + 14) = sub_100078694(0xD000000000000013, 0x8000000100ABC1D0, v27);
      *(v24 + 22) = 2080;
      *(v24 + 24) = sub_100078694(0xD000000000000017, 0x8000000100ABC1F0, v27);
      *(v24 + 32) = 2048;
      *(v24 + 34) = a3;
      _os_log_impl(&_mh_execute_header, v22, v23, "Debounced state update; another update came through afterwards. Selector=<%s, %s, %s>, Count=%ld", v24, 0x2Au);
      swift_arrayDestroy();
    }
  }
}

void sub_100269B24(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    swift_beginAccess();
    v10 = *(v8 + 16);
    if (*(v10 + 16) && (v11 = sub_1000D5F5C(a2, v9), (v12 & 1) != 0))
    {
      v13 = *(*(v10 + 56) + 8 * v11);
      swift_endAccess();
      if (v13 == a3)
      {
LABEL_5:
        swift_beginAccess();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        sub_1000D52D8(0, a2, isUniquelyReferenced_nonNull_native, v15, v16, v17, v18, v19, v25, *(v8 + 16));
        *(v8 + 16) = v26;
        v20 = swift_endAccess();
        a4(v20);

        return;
      }
    }

    else
    {
      swift_endAccess();
      if (!a3)
      {
        goto LABEL_5;
      }
    }

    if (qword_100CA2740 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_10000703C(v21, qword_100D90C18);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v27[0] = swift_slowAlloc();
      *v24 = 136315906;
      *(v24 + 4) = sub_100078694(0x746174536E69614DLL, 0xE900000000000065, v27);
      *(v24 + 12) = 2080;
      *(v24 + 14) = sub_100078694(0xD000000000000011, 0x8000000100ABC210, v27);
      *(v24 + 22) = 2080;
      *(v24 + 24) = sub_100078694(0xD000000000000015, 0x8000000100ABC230, v27);
      *(v24 + 32) = 2048;
      *(v24 + 34) = a3;
      _os_log_impl(&_mh_execute_header, v22, v23, "Debounced state update; another update came through afterwards. Selector=<%s, %s, %s>, Count=%ld", v24, 0x2Au);
      swift_arrayDestroy();
    }
  }
}

void sub_100269DD0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    swift_beginAccess();
    v10 = *(v8 + 16);
    if (*(v10 + 16) && (v11 = sub_1000D5F5C(a2, v9), (v12 & 1) != 0))
    {
      v13 = *(*(v10 + 56) + 8 * v11);
      swift_endAccess();
      if (v13 == a3)
      {
LABEL_5:
        swift_beginAccess();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        sub_1000D52D8(0, a2, isUniquelyReferenced_nonNull_native, v15, v16, v17, v18, v19, v25, *(v8 + 16));
        *(v8 + 16) = v26;
        v20 = swift_endAccess();
        a4(v20);

        return;
      }
    }

    else
    {
      swift_endAccess();
      if (!a3)
      {
        goto LABEL_5;
      }
    }

    if (qword_100CA2740 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_10000703C(v21, qword_100D90C18);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v27[0] = swift_slowAlloc();
      *v24 = 136315906;
      *(v24 + 4) = sub_100078694(0x746174536E69614DLL, 0xE900000000000065, v27);
      *(v24 + 12) = 2080;
      *(v24 + 14) = sub_100078694(0xD000000000000018, 0x8000000100ABC250, v27);
      *(v24 + 22) = 2080;
      *(v24 + 24) = sub_100078694(0xD00000000000001CLL, 0x8000000100ABC270, v27);
      *(v24 + 32) = 2048;
      *(v24 + 34) = a3;
      _os_log_impl(&_mh_execute_header, v22, v23, "Debounced state update; another update came through afterwards. Selector=<%s, %s, %s>, Count=%ld", v24, 0x2Au);
      swift_arrayDestroy();
    }
  }
}

void sub_10026A07C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    swift_beginAccess();
    v10 = *(v8 + 16);
    if (*(v10 + 16) && (v11 = sub_1000D5F5C(a2, v9), (v12 & 1) != 0))
    {
      v13 = *(*(v10 + 56) + 8 * v11);
      swift_endAccess();
      if (v13 == a3)
      {
LABEL_5:
        swift_beginAccess();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        sub_1000D52D8(0, a2, isUniquelyReferenced_nonNull_native, v15, v16, v17, v18, v19, v25, *(v8 + 16));
        *(v8 + 16) = v26;
        v20 = swift_endAccess();
        a4(v20);

        return;
      }
    }

    else
    {
      swift_endAccess();
      if (!a3)
      {
        goto LABEL_5;
      }
    }

    if (qword_100CA2740 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_10000703C(v21, qword_100D90C18);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v27[0] = swift_slowAlloc();
      *v24 = 136315906;
      *(v24 + 4) = sub_100078694(0x746174536E69614DLL, 0xE900000000000065, v27);
      *(v24 + 12) = 2080;
      *(v24 + 14) = sub_100078694(0x756E654D7473694CLL, 0xED00007475706E49, v27);
      *(v24 + 22) = 2080;
      *(v24 + 24) = sub_100078694(0xD000000000000011, 0x8000000100ABC290, v27);
      *(v24 + 32) = 2048;
      *(v24 + 34) = a3;
      _os_log_impl(&_mh_execute_header, v22, v23, "Debounced state update; another update came through afterwards. Selector=<%s, %s, %s>, Count=%ld", v24, 0x2Au);
      swift_arrayDestroy();
    }
  }
}

void sub_10026A32C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    swift_beginAccess();
    v10 = *(v8 + 16);
    if (*(v10 + 16) && (v11 = sub_1000D5F5C(a2, v9), (v12 & 1) != 0))
    {
      v13 = *(*(v10 + 56) + 8 * v11);
      swift_endAccess();
      if (v13 == a3)
      {
LABEL_5:
        swift_beginAccess();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        sub_1000D52D8(0, a2, isUniquelyReferenced_nonNull_native, v15, v16, v17, v18, v19, v25, *(v8 + 16));
        *(v8 + 16) = v26;
        v20 = swift_endAccess();
        a4(v20);

        return;
      }
    }

    else
    {
      swift_endAccess();
      if (!a3)
      {
        goto LABEL_5;
      }
    }

    if (qword_100CA2740 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_10000703C(v21, qword_100D90C18);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v27[0] = swift_slowAlloc();
      *v24 = 136315906;
      *(v24 + 4) = sub_100078694(0x746174536E69614DLL, 0xE900000000000065, v27);
      *(v24 + 12) = 2080;
      *(v24 + 14) = sub_100078694(0xD000000000000011, 0x8000000100ABC2B0, v27);
      *(v24 + 22) = 2080;
      *(v24 + 24) = sub_100078694(0xD000000000000015, 0x8000000100ABC2D0, v27);
      *(v24 + 32) = 2048;
      *(v24 + 34) = a3;
      _os_log_impl(&_mh_execute_header, v22, v23, "Debounced state update; another update came through afterwards. Selector=<%s, %s, %s>, Count=%ld", v24, 0x2Au);
      swift_arrayDestroy();
    }
  }
}

void sub_10026A5D8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    swift_beginAccess();
    v10 = *(v8 + 16);
    if (*(v10 + 16) && (v11 = sub_1000D5F5C(a2, v9), (v12 & 1) != 0))
    {
      v13 = *(*(v10 + 56) + 8 * v11);
      swift_endAccess();
      if (v13 == a3)
      {
LABEL_5:
        swift_beginAccess();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        sub_1000D52D8(0, a2, isUniquelyReferenced_nonNull_native, v15, v16, v17, v18, v19, v25, *(v8 + 16));
        *(v8 + 16) = v26;
        v20 = swift_endAccess();
        a4(v20);

        return;
      }
    }

    else
    {
      swift_endAccess();
      if (!a3)
      {
        goto LABEL_5;
      }
    }

    if (qword_100CA2740 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_10000703C(v21, qword_100D90C18);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v27[0] = swift_slowAlloc();
      *v24 = 136315906;
      *(v24 + 4) = sub_100078694(0x746174536E69614DLL, 0xE900000000000065, v27);
      *(v24 + 12) = 2080;
      *(v24 + 14) = sub_100078694(0xD00000000000001ALL, 0x8000000100ABC2F0, v27);
      *(v24 + 22) = 2080;
      *(v24 + 24) = sub_100078694(0xD00000000000001ELL, 0x8000000100ABC310, v27);
      *(v24 + 32) = 2048;
      *(v24 + 34) = a3;
      _os_log_impl(&_mh_execute_header, v22, v23, "Debounced state update; another update came through afterwards. Selector=<%s, %s, %s>, Count=%ld", v24, 0x2Au);
      swift_arrayDestroy();
    }
  }
}

void sub_10026A884(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    swift_beginAccess();
    v10 = *(v8 + 16);
    if (*(v10 + 16) && (v11 = sub_1000D5F5C(a2, v9), (v12 & 1) != 0))
    {
      v13 = *(*(v10 + 56) + 8 * v11);
      swift_endAccess();
      if (v13 == a3)
      {
LABEL_5:
        swift_beginAccess();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        sub_1000D52D8(0, a2, isUniquelyReferenced_nonNull_native, v15, v16, v17, v18, v19, v25, *(v8 + 16));
        *(v8 + 16) = v26;
        v20 = swift_endAccess();
        a4(v20);

        return;
      }
    }

    else
    {
      swift_endAccess();
      if (!a3)
      {
        goto LABEL_5;
      }
    }

    if (qword_100CA2740 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_10000703C(v21, qword_100D90C18);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v27[0] = swift_slowAlloc();
      *v24 = 136315906;
      *(v24 + 4) = sub_100078694(0x746174536E69614DLL, 0xE900000000000065, v27);
      *(v24 + 12) = 2080;
      *(v24 + 14) = sub_100078694(0xD000000000000019, 0x8000000100ABC330, v27);
      *(v24 + 22) = 2080;
      *(v24 + 24) = sub_100078694(0xD00000000000001DLL, 0x8000000100ABC350, v27);
      *(v24 + 32) = 2048;
      *(v24 + 34) = a3;
      _os_log_impl(&_mh_execute_header, v22, v23, "Debounced state update; another update came through afterwards. Selector=<%s, %s, %s>, Count=%ld", v24, 0x2Au);
      swift_arrayDestroy();
    }
  }
}

uint64_t sub_10026AB30@<X0>(uint64_t *a1@<X8>)
{
  result = j__swift_retain();
  *a1 = result;
  return result;
}

uint64_t sub_10026AB6C@<X0>(void (*a1)(uint64_t *__return_ptr, uint64_t *, uint64_t)@<X0>, uint64_t a2@<X1>, void (**a3)(uint64_t *__return_ptr)@<X2>, uint64_t *a4@<X8>)
{
  result = sub_10024C714(a1, a2, *a3);
  *a4 = result;
  return result;
}

uint64_t sub_10026AC78@<X0>(void (*a1)(uint64_t *__return_ptr, uint64_t *, uint64_t)@<X0>, uint64_t a2@<X1>, void (**a3)(uint64_t *__return_ptr)@<X2>, uint64_t *a4@<X8>)
{
  result = sub_10024CA54(a1, a2, *a3);
  *a4 = result;
  return result;
}

uint64_t sub_10026ADEC(_OWORD *a1, void (*a2)(_OWORD *, uint64_t))
{
  v2 = a1[1];
  v4[0] = *a1;
  v4[1] = v2;
  v5[0] = a1[2];
  *(v5 + 10) = *(a1 + 42);
  return sub_10024F2CC(v4, a2);
}

uint64_t sub_10026AF94@<X0>(void (*a1)(uint64_t *__return_ptr, uint64_t *, uint64_t)@<X0>, uint64_t a2@<X1>, void (**a3)(uint64_t *__return_ptr)@<X2>, uint64_t *a4@<X8>)
{
  result = sub_10024D11C(a1, a2, *a3);
  *a4 = result;
  return result;
}

uint64_t sub_10026B0B4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10024FA08(*(v1 + 16));
  *a1 = result & 1;
  return result;
}

uint64_t sub_10026B12C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (!a5)
  {
  }

  return result;
}

uint64_t sub_10026B414@<X0>(void (*a1)(uint64_t *__return_ptr, uint64_t *, uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  result = sub_10009F4CC(a1, a2, *a3, *(a3 + 8), *(a3 + 16), *(a3 + 24), 0x6956686372616553, 0xEF6C65646F4D7765);
  *a4 = result;
  return result;
}

unint64_t sub_10026B50C@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t *__return_ptr, uint64_t, uint64_t)@<X1>, uint64_t a3@<X8>)
{
  result = sub_10025040C(a1, a2);
  *a3 = result;
  *(a3 + 2) = BYTE2(result) & 1;
  *(a3 + 3) = result >> 24;
  *(a3 + 5) = BYTE5(result);
  *(a3 + 6) = BYTE6(result) & 1;
  return result;
}

uint64_t sub_10026B744@<X0>(void (*a1)(uint64_t *__return_ptr, uint64_t *, uint64_t)@<X0>, uint64_t a2@<X1>, void (**a3)(uint64_t *__return_ptr)@<X2>, uint64_t a4@<X8>)
{
  result = sub_10024E4E0(a1, a2, *a3);
  *a4 = result;
  *(a4 + 8) = v6;
  *(a4 + 16) = v7 & 1;
  return result;
}

uint64_t sub_10026B78C@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t *__return_ptr, void *, uint64_t)@<X1>, uint64_t a3@<X8>)
{
  result = sub_100250A8C(*a1, *(a1 + 8), *(a1 + 16), a2);
  *a3 = result;
  *(a3 + 8) = v5;
  *(a3 + 16) = v6 & 1;
  return result;
}

void sub_10026B820(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a7 != 2)
  {
    if (a7 != 1)
    {
      if (!a7)
      {
      }

      return;
    }

    a1 = a4;
  }
}

uint64_t sub_10026B9A4()
{

  sub_10001755C();

  return swift_deallocObject();
}

void sub_10026BCC4(uint64_t a1)
{
  type metadata accessor for TimeZone();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Date();
    if (v2 <= 0x3F)
    {
      sub_10000BB3C(319);
      if (v3 <= 0x3F)
      {
        sub_10026BD98(319);
        if (v4 <= 0x3F)
        {
          type metadata accessor for MoonPhase.Hemisphere();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_10026BD98(uint64_t a1)
{
  if (!qword_100CA4EA0)
  {
    type metadata accessor for Date();
    type metadata accessor for CalendarMoonPhaseData(255);
    sub_1001CE57C(&qword_100CA39C8, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v1 = type metadata accessor for Dictionary();
    if (!v2)
    {
      atomic_store(v1, &qword_100CA4EA0);
    }
  }
}

void sub_10026BE8C(uint64_t a1)
{
  sub_10000BB3C(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_10026BF50(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  sub_1000037C4();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_1000037D8();
  v10 = v9 - v8;
  sub_10022C350(&unk_100CB2CF0, &unk_100A2D7F0);
  sub_100003828();
  __chkstk_darwin(v11);
  v13 = &v29 - v12;
  v14 = sub_10022C350(qword_100CA4F80, &unk_100A580C0);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v15);
  v17 = &v29 - v16;
  if ((static TimeZone.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_17;
  }

  v18 = type metadata accessor for CalendarViewModel(0);
  sub_10001136C(v18[5]);
  if ((static Date.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_17;
  }

  sub_10001136C(v18[6]);
  if ((static Date.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_17;
  }

  sub_10001136C(v18[7]);
  if ((static Date.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_17;
  }

  v19 = v18[8];
  v20 = *(v14 + 48);
  sub_1000D47CC(a1 + v19, v17);
  sub_1000D47CC(a2 + v19, &v17[v20]);
  sub_100003A40(v17);
  if (v21)
  {
    sub_100003A40(&v17[v20]);
    if (v21)
    {
      sub_1000180EC(v17, &unk_100CB2CF0, &unk_100A2D7F0);
      goto LABEL_15;
    }

LABEL_13:
    sub_1000180EC(v17, qword_100CA4F80, &unk_100A580C0);
LABEL_17:
    v27 = 0;
    return v27 & 1;
  }

  sub_1000D47CC(v17, v13);
  sub_100003A40(&v17[v20]);
  if (v21)
  {
    (*(v6 + 8))(v13, v4);
    goto LABEL_13;
  }

  (*(v6 + 32))(v10, &v17[v20], v4);
  sub_10001E620();
  sub_1001CE57C(v22, v23, &protocol conformance descriptor for Date);
  v24 = dispatch thunk of static Equatable.== infix(_:_:)();
  v25 = *(v6 + 8);
  v25(v10, v4);
  v25(v13, v4);
  sub_1000180EC(v17, &unk_100CB2CF0, &unk_100A2D7F0);
  if ((v24 & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_15:
  sub_1002DC374();
  if ((v26 & 1) == 0)
  {
    goto LABEL_17;
  }

  sub_10001136C(v18[10]);
  v27 = static MoonPhase.Hemisphere.== infix(_:_:)();
  return v27 & 1;
}

BOOL sub_10026C248(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = type metadata accessor for Date();
  sub_1000037C4();
  v33 = v5;
  __chkstk_darwin(v6);
  sub_1000037D8();
  v9 = v8 - v7;
  sub_10022C350(&unk_100CB2CF0, &unk_100A2D7F0);
  sub_100003828();
  __chkstk_darwin(v10);
  v12 = &v32 - v11;
  v13 = sub_10022C350(qword_100CA4F80, &unk_100A580C0);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v14);
  v16 = &v32 - v15;
  v17 = MoonPhase.rawValue.getter();
  v19 = v18;
  v21 = v17 == MoonPhase.rawValue.getter() && v19 == v20;
  if (v21)
  {

LABEL_8:
    v24 = *(type metadata accessor for CalendarMoonPhaseData(0) + 20);
    v25 = *(v13 + 48);
    sub_1000D47CC(&a1[v24], v16);
    sub_1000D47CC(&a2[v24], &v16[v25]);
    sub_100003A40(v16);
    if (v21)
    {
      sub_100003A40(&v16[v25]);
      if (v21)
      {
        sub_1000180EC(v16, &unk_100CB2CF0, &unk_100A2D7F0);
        return 1;
      }
    }

    else
    {
      sub_1000D47CC(v16, v12);
      sub_100003A40(&v16[v25]);
      if (!v26)
      {
        v27 = v33;
        (*(v33 + 32))(v9, &v16[v25], v4);
        sub_10001E620();
        sub_1001CE57C(v28, v29, &protocol conformance descriptor for Date);
        v30 = dispatch thunk of static Equatable.== infix(_:_:)();
        v31 = *(v27 + 8);
        v31(v9, v4);
        v31(v12, v4);
        sub_1000180EC(v16, &unk_100CB2CF0, &unk_100A2D7F0);
        return (v30 & 1) != 0;
      }

      (*(v33 + 8))(v12, v4);
    }

    sub_1000180EC(v16, qword_100CA4F80, &unk_100A580C0);
    return 0;
  }

  v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

  result = 0;
  if (v22)
  {
    goto LABEL_8;
  }

  return result;
}

void sub_10026C558(uint64_t a1)
{
  v2 = type metadata accessor for Date();
  sub_1000037C4();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_1000037D8();
  v8 = v7 - v6;
  sub_10022C350(&unk_100CB2CF0, &unk_100A2D7F0);
  sub_100003828();
  __chkstk_darwin(v9);
  v11 = &v15 - v10;
  MoonPhase.rawValue.getter();
  String.hash(into:)();

  v12 = type metadata accessor for CalendarMoonPhaseData(0);
  sub_1000D47CC(v1 + *(v12 + 20), v11);
  if (sub_100024D10(v11, 1, v2) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v4 + 32))(v8, v11, v2);
    Hasher._combine(_:)(1u);
    sub_10001E620();
    sub_1001CE57C(v13, v14, &protocol conformance descriptor for Date);
    dispatch thunk of Hashable.hash(into:)();
    (*(v4 + 8))(v8, v2);
  }
}

Swift::Int sub_10026C724()
{
  Hasher.init(_seed:)();
  sub_10026C558(v1);
  return Hasher._finalize()();
}

Swift::Int sub_10026C774(uint64_t a1)
{
  Hasher.init(_seed:)();
  sub_10026C558(v2);
  return Hasher._finalize()();
}

uint64_t sub_10026C8B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(char *, uint64_t, uint64_t, uint64_t, uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v339 = a6;
  v337 = a3;
  v296 = a7;
  v11 = sub_10022C350(&qword_100CA5008, &unk_100A2F7B0);
  __chkstk_darwin(v11 - 8);
  v278 = &v271 - v12;
  v276 = type metadata accessor for LocationComponentContainerViewModel(0);
  __chkstk_darwin(v276);
  sub_100003848();
  v305 = v13;
  sub_10000386C();
  __chkstk_darwin(v14);
  sub_100003878();
  v294 = v15;
  sub_10000386C();
  __chkstk_darwin(v16);
  v18 = &v271 - v17;
  __chkstk_darwin(v19);
  sub_100003878();
  v291 = v20;
  sub_10000386C();
  __chkstk_darwin(v21);
  sub_100003878();
  v290 = v22;
  sub_10000386C();
  __chkstk_darwin(v23);
  sub_100003878();
  v288 = v24;
  sub_10000386C();
  __chkstk_darwin(v25);
  sub_100003878();
  v301 = v26;
  sub_10000386C();
  __chkstk_darwin(v27);
  sub_100003878();
  v285 = v28;
  sub_10000386C();
  __chkstk_darwin(v29);
  sub_100003878();
  v300 = v30;
  sub_10000386C();
  __chkstk_darwin(v31);
  sub_100003878();
  v282 = v32;
  sub_10000386C();
  __chkstk_darwin(v33);
  sub_100003878();
  v297 = v34;
  sub_10000386C();
  __chkstk_darwin(v35);
  sub_100003878();
  v279 = v36;
  sub_10000386C();
  __chkstk_darwin(v37);
  sub_100003878();
  v272 = v38;
  sub_10000386C();
  __chkstk_darwin(v39);
  v41 = &v271 - v40;
  v333 = *(a5 - 8);
  __chkstk_darwin(v42);
  sub_100003848();
  v295 = v43;
  sub_10000386C();
  __chkstk_darwin(v44);
  sub_100003878();
  v315 = v45;
  sub_10000386C();
  __chkstk_darwin(v46);
  sub_100003878();
  v314 = v47;
  sub_10000386C();
  __chkstk_darwin(v48);
  sub_100003878();
  v313 = v49;
  sub_10000386C();
  __chkstk_darwin(v50);
  sub_100003878();
  v312 = v51;
  sub_10000386C();
  __chkstk_darwin(v52);
  sub_100003878();
  v311 = v53;
  sub_10000386C();
  __chkstk_darwin(v54);
  sub_100003878();
  v310 = v55;
  sub_10000386C();
  __chkstk_darwin(v56);
  sub_100003878();
  v309 = v57;
  sub_10000386C();
  __chkstk_darwin(v58);
  sub_100003878();
  v308 = v59;
  sub_10000386C();
  __chkstk_darwin(v60);
  sub_100003878();
  v307 = v61;
  sub_10000386C();
  __chkstk_darwin(v62);
  sub_100003878();
  v292 = v63;
  sub_10000386C();
  __chkstk_darwin(v64);
  sub_100003878();
  v306 = v65;
  sub_10000386C();
  __chkstk_darwin(v66);
  sub_100003878();
  v289 = v67;
  sub_10000386C();
  __chkstk_darwin(v68);
  v70 = &v271 - v69;
  __chkstk_darwin(v71);
  sub_100003878();
  v287 = v72;
  sub_10000386C();
  __chkstk_darwin(v73);
  sub_100003878();
  v331 = v74;
  sub_10000386C();
  __chkstk_darwin(v75);
  sub_100003878();
  v286 = v76;
  sub_10000386C();
  __chkstk_darwin(v77);
  sub_100003878();
  v330 = v78;
  sub_10000386C();
  __chkstk_darwin(v79);
  sub_100003878();
  v284 = v80;
  sub_10000386C();
  __chkstk_darwin(v81);
  sub_100003878();
  v329 = v82;
  sub_10000386C();
  __chkstk_darwin(v83);
  sub_100003878();
  v283 = v84;
  sub_10000386C();
  __chkstk_darwin(v85);
  sub_100003878();
  v327 = v86;
  sub_10000386C();
  __chkstk_darwin(v87);
  sub_100003878();
  v281 = v88;
  sub_10000386C();
  __chkstk_darwin(v89);
  sub_100003878();
  v326 = v90;
  sub_10000386C();
  __chkstk_darwin(v91);
  sub_100003878();
  v280 = v92;
  sub_10000386C();
  __chkstk_darwin(v93);
  sub_100003878();
  v325 = v94;
  sub_10000386C();
  __chkstk_darwin(v95);
  sub_100003878();
  v277 = v96;
  sub_10000386C();
  __chkstk_darwin(v97);
  sub_100003878();
  v324 = v98;
  sub_10000386C();
  __chkstk_darwin(v99);
  sub_100003878();
  v275 = v100;
  sub_10000386C();
  __chkstk_darwin(v101);
  sub_100003878();
  v323 = v102;
  sub_10000386C();
  __chkstk_darwin(v103);
  sub_100003878();
  v274 = v104;
  sub_10000386C();
  __chkstk_darwin(v105);
  sub_100003878();
  v322 = v106;
  sub_10000386C();
  __chkstk_darwin(v107);
  sub_100003878();
  v273 = v108;
  sub_10000386C();
  __chkstk_darwin(v109);
  sub_100003878();
  v321 = v110;
  sub_10000386C();
  __chkstk_darwin(v111);
  sub_100003878();
  v334 = v112;
  sub_10000386C();
  __chkstk_darwin(v113);
  v115 = &v271 - v114;
  v336 = type metadata accessor for Optional();
  v302 = *(v336 - 8);
  __chkstk_darwin(v336);
  sub_100003848();
  v304 = v116;
  sub_10000386C();
  __chkstk_darwin(v117);
  sub_100003878();
  v303 = v118;
  sub_10000386C();
  __chkstk_darwin(v119);
  sub_100003878();
  v320 = v120;
  sub_10000386C();
  __chkstk_darwin(v121);
  sub_100003878();
  v319 = v122;
  sub_10000386C();
  __chkstk_darwin(v123);
  v125 = &v271 - v124;
  __chkstk_darwin(v126);
  v318 = &v271 - v127;
  v338 = a2;
  sub_100566A24(a2, v358);
  v328 = v115;
  v335 = v125;
  v298 = a1;
  v299 = a4;
  v332 = v70;
  v293 = v18;
  if (v359)
  {
    v128 = 1;
    v129 = v41;
  }

  else
  {
    v317 = v358[3];
    v130 = v358[2];
    v131 = v358[1];
    v132 = a1;
    v133 = v358[0];
    v129 = v41;
    sub_1001B3B30(v132 + OBJC_IVAR____TtCV7Weather24ElevatedAqiSevereContent8_Storage_severeAlert, v41);
    v134 = v333;
    v337(v41, v133, v131, v130, v317);
    sub_1001B4354(v41);
    v135 = sub_100007EE8();
    sub_1000495EC(v135, v136);
    v137 = *(v134 + 8);
    v138 = sub_100007EE8();
    v137(v138);
    v139 = sub_100003A60();
    sub_1000833D8(v139, v140, v41);
    v141 = sub_100003A60();
    v137(v141);
    v125 = v335;
    v142 = sub_10002276C();
    v143(v142);
    v128 = 0;
  }

  v144 = 1;
  sub_10001B350(v125, v128, 1, a5);
  sub_1000140F4();
  sub_1003E7FD4(v145, v146);
  v316 = *(v302 + 8);
  v317 = v302 + 8;
  v316(v125, v336);
  sub_100566A40(v338, v360);
  if ((v361 & 1) == 0)
  {
    v147 = v360[3];
    v148 = v360[2];
    v149 = v360[1];
    v150 = v360[0];
    sub_1001B3B30(v298 + OBJC_IVAR____TtCV7Weather24ElevatedAqiSevereContent8_Storage_airQuality, v129);
    v151 = v333;
    v337(v129, v150, v149, v148, v147);
    sub_1001B4354(v129);
    v152 = v328;
    v153 = sub_100007EE8();
    sub_1000495EC(v153, v154);
    v155 = *(v151 + 8);
    v156 = sub_100007EE8();
    v155(v156);
    sub_1000833D8(v152, a5, v41);
    (v155)(v152, a5);
    v125 = v335;
    v157 = sub_10002276C();
    v158(v157);
    v144 = 0;
  }

  sub_10001B350(v125, v144, 1, a5);
  sub_1000140F4();
  sub_1003E7FD4(v159, v160);
  v316(v125, v336);
  v161 = OBJC_IVAR____TtCV7Weather24ElevatedAqiSevereContent8_Storage_map;
  v162 = v298;
  swift_beginAccess();
  v163 = v278;
  sub_10026E174(v162 + v161, v278);
  v164 = sub_100024D10(v163, 1, v276) == 1;
  v165 = v297;
  if (v164)
  {
    sub_10026E1E4(v163);
    v166 = 1;
LABEL_11:
    v169 = v335;
    goto LABEL_13;
  }

  v167 = v272;
  sub_10026E24C(v163, v272);
  sub_100566A5C(v338, v362);
  v168 = v328;
  if (v363)
  {
    sub_1001B4354(v167);
    v166 = 1;
    goto LABEL_11;
  }

  v337(v167, v362[0], v362[1], v362[2], v362[3]);
  sub_1001B4354(v167);
  v170 = sub_100007EE8();
  sub_1000495EC(v170, v171);
  v172 = *(v333 + 8);
  v173 = sub_100007EE8();
  v172(v173);
  v174 = sub_100003A60();
  sub_1000833D8(v174, v175, v162);
  v165 = v297;
  (v172)(v168, a5);
  v169 = v335;
  v176 = sub_10002276C();
  v177(v176);
  v166 = 0;
LABEL_13:
  sub_10001B350(v169, v166, 1, a5);
  sub_1000140F4();
  sub_1003E7FD4(v178, v179);
  v316(v169, v336);
  v180 = v279;
  sub_1001B3B30(*(v162 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_hourlyForecast, v279);
  sub_100566A78(v338, v364);
  if (v365)
  {
    goto LABEL_31;
  }

  v337(v180, v364[0], v364[1], v364[2], v364[3]);
  sub_1001B4354(v180);
  v181 = sub_100007EE8();
  sub_1000833D8(v181, v182, v339);
  v183 = *(v333 + 8);
  v184 = sub_100007EE8();
  v183(v184);
  sub_1001B3B30(*(v162 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_dailyForecast, v165);
  sub_100566A94(v338, v366);
  if (v367)
  {
    goto LABEL_31;
  }

  v185 = sub_1000053F4();
  v186(v185);
  sub_1001B4354(v165);
  v187 = sub_100007EE8();
  sub_1000833D8(v187, v188, v339);
  v189 = sub_100007EE8();
  v183(v189);
  v190 = v282;
  sub_1001B3B30(*(v162 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_uvIndex, v282);
  sub_100566AB0(v338, v368);
  if (v369)
  {
    goto LABEL_34;
  }

  v191 = sub_1000053F4();
  v192(v191);
  sub_1001B4354(v190);
  v193 = sub_100007EE8();
  sub_1000833D8(v193, v194, v339);
  v195 = sub_100007EE8();
  v183(v195);
  sub_1001B3B30(*(v162 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_sunriseSunset, v300);
  sub_100566ACC(v338, v370);
  if (v371)
  {
    goto LABEL_31;
  }

  v196 = v300;
  v197 = sub_1000280EC();
  v198(v197);
  sub_1001B4354(v196);
  sub_1000140F4();
  sub_1000833D8(v199, v200, v201);
  v202 = sub_100003A60();
  v183(v202);
  v203 = v285;
  sub_1001B3B30(*(v162 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_wind, v285);
  sub_100566AE8(v338, v372);
  if (v373)
  {
    goto LABEL_34;
  }

  v204 = sub_1000280EC();
  v205(v204);
  sub_1001B4354(v203);
  sub_1000140F4();
  sub_1000833D8(v206, v207, v208);
  v209 = sub_100003A60();
  v183(v209);
  sub_1001B3B30(*(v162 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_precipitationTotal, v301);
  sub_100566B04(v338, v374);
  if (v375)
  {
    goto LABEL_31;
  }

  v210 = v301;
  v211 = sub_1000280EC();
  v212(v211);
  sub_1001B4354(v210);
  sub_1000140F4();
  sub_1000833D8(v213, v214, v215);
  v216 = sub_100003A60();
  v183(v216);
  v217 = v288;
  sub_1001B3B30(*(v162 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_feelsLike, v288);
  sub_100566B20(v338, v376);
  if (v377)
  {
    goto LABEL_31;
  }

  v218 = sub_1000053F4();
  v219(v218);
  sub_1001B4354(v217);
  v220 = sub_100007EE8();
  sub_1000833D8(v220, v221, v339);
  v222 = sub_100007EE8();
  v183(v222);
  v223 = v290;
  sub_1001B3B30(*(v162 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_humidity, v290);
  sub_100566B3C(v338, v378);
  if (v379)
  {
LABEL_34:
    sub_100013470();
    goto LABEL_35;
  }

  v224 = sub_1000053F4();
  v225(v224);
  sub_1001B4354(v223);
  v226 = sub_100007EE8();
  sub_1000833D8(v226, v227, v339);
  v228 = sub_100007EE8();
  v183(v228);
  v229 = v291;
  sub_1001B3B30(*(v162 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_visibility, v291);
  sub_100566B58(v338, &v380);
  if ((v381 & 1) == 0)
  {
    v230 = sub_1000053F4();
    v231(v230);
    sub_1001B4354(v229);
    v232 = sub_100007EE8();
    sub_1000833D8(v232, v233, v339);
    v234 = sub_100007EE8();
    v183(v234);
    v235 = v293;
    sub_1001B3B30(*(v162 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_pressure, v293);
    sub_100566B74(v338, &v382);
    if ((v383 & 1) == 0)
    {
      v236 = sub_1000053F4();
      v237(v236);
      sub_1001B4354(v235);
      v238 = sub_100007EE8();
      sub_1000833D8(v238, v239, v339);
      v240 = sub_100007EE8();
      v183(v240);
      v241 = v294;
      sub_1001B3B30(*(v162 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_moon, v294);
      sub_100566B90(v338, &v384);
      if ((v385 & 1) == 0)
      {
        v242 = sub_1000280EC();
        v243(v242);
        sub_1001B4354(v241);
        sub_1000140F4();
        sub_1000833D8(v244, v245, v246);
        v247 = sub_100003A60();
        v183(v247);
        sub_1001B3B30(*(v162 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_averages, v305);
        sub_100566BAC(v338, v386);
        if ((v387 & 1) == 0)
        {
          v248 = v292;
          v249 = v305;
          v337(v305, v386[0], v386[1], v386[2], v386[3]);
          sub_1001B4354(v249);
          sub_1000495EC(v248, a5);
          (v183)(v248, a5);
          v250 = *(v302 + 16);
          v251 = v335;
          v252 = v336;
          v250(v335, v318, v336);
          v357[0] = v251;
          v253 = v303;
          v250(v303, v319, v252);
          v357[1] = v253;
          v254 = v304;
          v250(v304, v320, v252);
          v357[2] = v254;
          v255 = *(v333 + 16);
          v256 = v328;
          v255(v328, v321, a5);
          v357[3] = v256;
          v257 = v334;
          v255(v334, v322, a5);
          v357[4] = v257;
          v258 = v307;
          v255(v307, v323, a5);
          v357[5] = v258;
          v259 = v308;
          v255(v308, v324, a5);
          v357[6] = v259;
          v260 = v309;
          v255(v309, v325, a5);
          v357[7] = v260;
          v261 = v310;
          v255(v310, v326, a5);
          v357[8] = v261;
          v262 = v311;
          v255(v311, v327, a5);
          v357[9] = v262;
          v263 = v312;
          v255(v312, v329, a5);
          v357[10] = v263;
          v264 = v313;
          v255(v313, v330, a5);
          v357[11] = v264;
          v265 = v314;
          v255(v314, v331, a5);
          v357[12] = v265;
          v266 = v315;
          v255(v315, v332, a5);
          v357[13] = v266;
          v267 = v295;
          v255(v295, v306, a5);
          v357[14] = v267;
          v356[0] = v252;
          v356[1] = v252;
          v356[2] = v252;
          v356[3] = a5;
          v356[4] = a5;
          v356[5] = a5;
          v356[6] = a5;
          v356[7] = a5;
          v356[8] = a5;
          v356[9] = a5;
          v356[10] = a5;
          v356[11] = a5;
          v356[12] = a5;
          v356[13] = a5;
          v356[14] = a5;
          v340 = v249;
          WitnessTable = swift_getWitnessTable(&protocol conformance descriptor for <A> A?, v252, &v340);
          v342 = WitnessTable;
          v343 = WitnessTable;
          v344 = v249;
          v345 = v249;
          v346 = v249;
          v347 = v249;
          v348 = v249;
          v349 = v249;
          v350 = v249;
          v351 = v249;
          v352 = v249;
          v353 = v249;
          v354 = v249;
          v355 = v249;
          sub_10012E24C(v357, 15, v356);
          v268 = sub_100007EE8();
          v183(v268);
          (v183)(v332, a5);
          (v183)(v331, a5);
          (v183)(v330, a5);
          (v183)(v329, a5);
          (v183)(v327, a5);
          (v183)(v326, a5);
          (v183)(v325, a5);
          (v183)(v324, a5);
          (v183)(v323, a5);
          (v183)(v322, a5);
          (v183)(v321, a5);
          v269 = v316;
          v316(v320, v252);
          v269(v319, v252);
          v269(v318, v252);
          (v183)(v267, a5);
          (v183)(v315, a5);
          (v183)(v314, a5);
          (v183)(v313, a5);
          (v183)(v312, a5);
          (v183)(v311, a5);
          (v183)(v310, a5);
          (v183)(v309, a5);
          (v183)(v308, a5);
          (v183)(v307, a5);
          (v183)(v334, a5);
          (v183)(v328, a5);
          v269(v304, v252);
          v269(v303, v252);
          return (v269)(v335, v252);
        }
      }
    }

    goto LABEL_34;
  }

LABEL_31:
  sub_10001E640();
LABEL_35:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_10026E0C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_10026E174(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CA5008, &unk_100A2F7B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10026E1E4(uint64_t a1)
{
  v2 = sub_10022C350(&qword_100CA5008, &unk_100A2F7B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10026E24C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LocationComponentContainerViewModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for MapContentStatusBanner(uint64_t a1)
{
  result = qword_100CA5070;
  if (!qword_100CA5070)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10026E324(uint64_t a1)
{
  sub_10026E47C(319, &qword_100CA5080, type metadata accessor for ContentStatusBanner, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    sub_10026E420();
    if (v2 <= 0x3F)
    {
      sub_10026E47C(319, &qword_100CA3C78, type metadata accessor for DisplayMetrics, &type metadata accessor for Environment);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_10026E420()
{
  result = qword_100CA5088;
  if (!qword_100CA5088)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_100CA5088);
  }

  return result;
}

void sub_10026E47C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

BOOL sub_10026E4FC(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ContentStatusBanner(0);
  sub_1000037E8();
  __chkstk_darwin(v4);
  sub_1000037D8();
  v7 = (v6 - v5);
  v8 = sub_10022C350(&qword_100CA5010, &unk_100A2F250);
  sub_100003810(v8);
  sub_100003828();
  __chkstk_darwin(v9);
  v11 = &v22 - v10;
  v12 = sub_10022C350(&qword_100CA50C0, &qword_100A2F2F0);
  sub_100003810(v12);
  sub_100003828();
  __chkstk_darwin(v13);
  v15 = &v22 - v14;
  v17 = *(v16 + 56);
  sub_1000955E0(a1, &v22 - v14, &qword_100CA5010, &unk_100A2F250);
  sub_1000955E0(a2, &v15[v17], &qword_100CA5010, &unk_100A2F250);
  sub_100005404(v15);
  if (!v19)
  {
    sub_1000955E0(v15, v11, &qword_100CA5010, &unk_100A2F250);
    sub_100005404(&v15[v17]);
    if (!v19)
    {
      sub_10026EDA4(&v15[v17], v7);
      v18 = sub_100133BA0(v11, v7);
      sub_10026F088(v7, type metadata accessor for ContentStatusBanner);
      sub_10026F088(v11, type metadata accessor for ContentStatusBanner);
      sub_1000180EC(v15, &qword_100CA5010, &unk_100A2F250);
      return v18;
    }

    sub_10000F9D4();
    sub_10026F088(v11, v20);
LABEL_9:
    sub_1000180EC(v15, &qword_100CA50C0, &qword_100A2F2F0);
    return 0;
  }

  sub_100005404(&v15[v17]);
  if (!v19)
  {
    goto LABEL_9;
  }

  sub_1000180EC(v15, &qword_100CA5010, &unk_100A2F250);
  return 1;
}

uint64_t sub_10026E72C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v77 = a1;
  v78 = sub_10022C350(&qword_100CA50C8, &qword_100A2F2F8);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v3);
  v5 = &v69 - v4;
  v6 = type metadata accessor for DisplayMetrics(0);
  v7 = sub_100003810(v6);
  __chkstk_darwin(v7);
  sub_1000037D8();
  v75 = v9 - v8;
  v10 = sub_10022C350(&qword_100CA50D0, &qword_100A2F300);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v11);
  v13 = (&v69 - v12);
  v72 = sub_10022C350(&qword_100CA50D8, &qword_100A2F308);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v14);
  v74 = &v69 - v15;
  v16 = sub_10022C350(&qword_100CA50E0, &unk_100A2F310);
  sub_1000037E8();
  __chkstk_darwin(v17);
  v73 = &v69 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v76 = &v69 - v20;
  v21 = sub_10022C350(&qword_100CA5010, &unk_100A2F250);
  sub_100003810(v21);
  sub_100003828();
  __chkstk_darwin(v22);
  v24 = &v69 - v23;
  v25 = type metadata accessor for ContentStatusBanner(0);
  sub_1000037E8();
  __chkstk_darwin(v26);
  sub_1000037D8();
  v29 = v28 - v27;
  sub_1000955E0(v2, v24, &qword_100CA5010, &unk_100A2F250);
  if (sub_100024D10(v24, 1, v25) == 1)
  {
    sub_1000180EC(v24, &qword_100CA5010, &unk_100A2F250);
    v30 = static Color.clear.getter();
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v31 = v79;
    v32 = v80;
    v33 = v81;
    v34 = v82;
    *v5 = v30;
    *(v5 + 1) = v31;
    v5[16] = v32;
    *(v5 + 3) = v33;
    v5[32] = v34;
    *(v5 + 40) = v83;
    swift_storeEnumTagMultiPayload();
    sub_10022C350(&qword_100CA50E8, &qword_100A48710);
    sub_10001BAF4();
    sub_10026EE38(v35, v36, v37, v38);
    sub_10026F004();
    return _ConditionalContent<>.init(storage:)();
  }

  else
  {
    v71 = v16;
    sub_10026EDA4(v24, v29);
    v70 = type metadata accessor for MapContentStatusBanner(0);
    sub_1000161C0((v2 + *(v70 + 20)), *(v2 + *(v70 + 20) + 24));
    sub_10010A228(v29, v13);
    v40 = static Color.primary.getter();
    KeyPath = swift_getKeyPath();
    v42 = (v13 + *(v10 + 36));
    *v42 = KeyPath;
    v42[1] = v40;
    sub_10022C350(&qword_100CA4060, &qword_100A2E120);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100A2D320;
    v44 = static Edge.Set.leading.getter();
    *(inited + 32) = v44;
    v45 = static Edge.Set.trailing.getter();
    *(inited + 33) = v45;
    v46 = Edge.Set.init(rawValue:)();
    Edge.Set.init(rawValue:)();
    v47 = v13;
    if (Edge.Set.init(rawValue:)() != v44)
    {
      v46 = Edge.Set.init(rawValue:)();
    }

    Edge.Set.init(rawValue:)();
    v48 = Edge.Set.init(rawValue:)();
    v49 = v71;
    if (v48 != v45)
    {
      v46 = Edge.Set.init(rawValue:)();
    }

    v50 = v74;
    sub_10002F758(v47, v74, &qword_100CA50D0, &qword_100A2F300);
    v51 = v50 + *(v72 + 36);
    *v51 = v46;
    *(v51 + 8) = 0u;
    *(v51 + 24) = 0u;
    *(v51 + 40) = 1;
    v52 = static Edge.Set.bottom.getter();
    v53 = v75;
    sub_1000FC9C8();
    v54 = [objc_opt_self() currentDevice];
    [v54 userInterfaceIdiom];

    sub_10026F088(v53, type metadata accessor for DisplayMetrics);
    EdgeInsets.init(_all:)();
    v56 = v55;
    v58 = v57;
    v60 = v59;
    v62 = v61;
    v63 = v73;
    sub_10002F758(v50, v73, &qword_100CA50D8, &qword_100A2F308);
    v64 = v63 + *(v49 + 36);
    *v64 = v52;
    *(v64 + 8) = v56;
    *(v64 + 16) = v58;
    *(v64 + 24) = v60;
    *(v64 + 32) = v62;
    *(v64 + 40) = 0;
    v65 = v76;
    sub_10002F758(v63, v76, &qword_100CA50E0, &unk_100A2F310);
    sub_1000955E0(v65, v5, &qword_100CA50E0, &unk_100A2F310);
    swift_storeEnumTagMultiPayload();
    sub_10022C350(&qword_100CA50E8, &qword_100A48710);
    sub_10001BAF4();
    sub_10026EE38(v66, &qword_100CA50E0, &unk_100A2F310, v67);
    sub_10026F004();
    _ConditionalContent<>.init(storage:)();
    sub_1000180EC(v65, &qword_100CA50E0, &unk_100A2F310);
    sub_10000F9D4();
    return sub_10026F088(v29, v68);
  }
}

uint64_t sub_10026EDA4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContentStatusBanner(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10026EE38(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v7 = sub_10022E824(a2, a3);
    v8[0] = a4();
    v8[1] = &protocol witness table for _PaddingLayout;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v7, v8);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10026EEBC()
{
  result = qword_100CA5100;
  if (!qword_100CA5100)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CA50D0, &qword_100A2F300);
    v4[0] = sub_10026EF48();
    v4[1] = sub_10026EFA0();
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CA5100);
  }

  return result;
}

unint64_t sub_10026EF48()
{
  result = qword_100CA5108;
  if (!qword_100CA5108)
  {
    v3 = type metadata accessor for ContentStatusBannerView(255);
    result = swift_getWitnessTable(asc_100A7E038, v3, v0, v1);
    atomic_store(result, &qword_100CA5108);
  }

  return result;
}

unint64_t sub_10026EFA0()
{
  result = qword_100CE0FF0;
  if (!qword_100CE0FF0)
  {
    v3 = sub_10022E824(&qword_100CA5110, &qword_100A2F320);
    result = swift_getWitnessTable(&protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>, v3, v0, v1);
    atomic_store(result, &qword_100CE0FF0);
  }

  return result;
}

unint64_t sub_10026F004()
{
  result = qword_100CA5118;
  if (!qword_100CA5118)
  {
    v4[2] = v0;
    v4[3] = v1;
    v3 = sub_10022E824(&qword_100CA50E8, &qword_100A48710);
    v4[0] = &protocol witness table for Color;
    v4[1] = &protocol witness table for _FrameLayout;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CA5118);
  }

  return result;
}

uint64_t sub_10026F088(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_10026F0E0()
{
  result = qword_100CA5120;
  if (!qword_100CA5120)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CA5128, &unk_100A2F360);
    v4[0] = sub_10026EE38(&qword_100CA50F0, &qword_100CA50E0, &unk_100A2F310, sub_10026EE08);
    v4[1] = sub_10026F004();
    result = swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CA5120);
  }

  return result;
}

uint64_t sub_10026F1E0(uint64_t a1)
{
  sub_10026F4C0(319, &qword_100CA51A8, &type metadata accessor for DetailChartDataElement, &type metadata accessor for Array);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    v2 = sub_10000C70C(319, &qword_100CA51B0, NSUnitTemperature_ptr);
    if (v4 <= 0x3F)
    {
      v2 = type metadata accessor for TemperatureScaleConfiguration();
      if (v5 <= 0x3F)
      {
        sub_10026F418();
        v2 = v6;
        if (v7 <= 0x3F)
        {
          sub_10026F470();
          if (v9 > 0x3F)
          {
            return v8;
          }

          sub_10026F4C0(319, &qword_100CA51C8, type metadata accessor for TemperatureAveragesHeroChartViewModel.PeakMarkModel, &type metadata accessor for Optional);
          if (v10 > 0x3F)
          {
            return v8;
          }

          sub_10026F4C0(319, &unk_100CA51D0, type metadata accessor for PeakUpperMarkModel, &type metadata accessor for Optional);
          if (v11 > 0x3F)
          {
            return v8;
          }

          v8 = type metadata accessor for DetailHeroChartLollipopModel(319);
          if (v12 > 0x3F)
          {
            return v8;
          }

          v8 = type metadata accessor for Date();
          if (v13 > 0x3F)
          {
            return v8;
          }

          v8 = type metadata accessor for DetailChartGradientModel();
          if (v14 > 0x3F)
          {
            return v8;
          }

          else
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return v2;
}

void sub_10026F418()
{
  if (!qword_100CA51B8)
  {
    v0 = type metadata accessor for Range();
    if (!v1)
    {
      atomic_store(v0, &qword_100CA51B8);
    }
  }
}

void sub_10026F470()
{
  if (!qword_100CA51C0)
  {
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &qword_100CA51C0);
    }
  }
}

void sub_10026F4C0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_10026F56C(uint64_t a1, void *a2)
{
  v4 = sub_1000038D8();
  v76 = type metadata accessor for PeakUpperMarkModel(v4);
  sub_1000037E8();
  __chkstk_darwin(v5);
  sub_1000038E4();
  v72 = v6;
  sub_10022C350(&qword_100CA5138, &unk_100A50700);
  sub_100003828();
  __chkstk_darwin(v7);
  sub_1000039BC();
  v73 = v8;
  v75 = sub_10022C350(&qword_100CA52D0, &qword_100A2F408);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v9);
  sub_1000039BC();
  v77 = v10;
  v80 = type metadata accessor for TemperatureAveragesHeroChartViewModel.PeakMarkModel(0);
  sub_1000037E8();
  __chkstk_darwin(v11);
  sub_1000038E4();
  v74 = v12;
  sub_10022C350(&qword_100CA5130, &unk_100A2F370);
  sub_100003828();
  __chkstk_darwin(v13);
  sub_1000039BC();
  v78 = v14;
  v79 = sub_10022C350(&qword_100CA52D8, &qword_100A2F410);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v15);
  sub_1000039BC();
  v81 = v16;
  v82 = v2;
  v17 = *v2;
  v18 = v2[1];
  v19 = v2[2];
  v20 = v2[3];
  v22 = v2[4];
  v21 = v2[5];
  v84 = v2[7];
  v85 = v2[6];
  v23 = a2[2];
  v24 = a2[3];
  v25 = a2[4];
  v26 = a2[5];
  v27 = v17 == *a2 && v18 == a2[1];
  v83 = a2;
  v28 = a2[6];
  v29 = a2[7];
  if (!v27 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v30 = v19 == v23 && v20 == v24;
  if (!v30 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v31 = v22 == v25 && v21 == v26;
  if (!v31 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v32 = v85 == v28 && v84 == v29;
  if (!v32 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  sub_1009E9B70();
  if ((v33 & 1) == 0)
  {
    return 0;
  }

  sub_1009E9B70();
  if ((v34 & 1) == 0)
  {
    return 0;
  }

  v35 = v82[11];
  v36 = v82[12];
  v37 = *(v82 + 104);
  v38 = v83[11];
  v39 = v83[12];
  v40 = *(v83 + 104);
  sub_1009E9C0C();
  if ((v41 & 1) == 0)
  {
    return 0;
  }

  if (v35 == v38 && v36 == v39)
  {
    if (v37 != v40)
    {
      return 0;
    }
  }

  else
  {
    v43 = _stringCompareWithSmolCheck(_:_:expecting:)();
    result = 0;
    if (v43 & 1) == 0 || ((v37 ^ v40))
    {
      return result;
    }
  }

  sub_10000C70C(0, &qword_100CA52E0, NSObject_ptr);
  if ((static NSObject.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v45 = type metadata accessor for TemperatureAveragesHeroChartViewModel(0);
  if ((static TemperatureScaleConfiguration.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v46 = v45[10];
  v47 = *(v82 + v46);
  v48 = *(v82 + v46 + 8);
  v49 = (v83 + v46);
  if (v47 != *v49 || v48 != v49[1])
  {
    return 0;
  }

  if ((sub_1009E9BB8(*(v82 + v45[11]), *(v83 + v45[11])) & 1) == 0)
  {
    return 0;
  }

  v51 = v45[12];
  if (!sub_100696458(*(v82 + v51), *(v82 + v51 + 8), *(v82 + v51 + 16), *(v82 + v51 + 24), *(v83 + v51), *(v83 + v51 + 8), *(v83 + v51 + 16), *(v83 + v51 + 24)))
  {
    return 0;
  }

  v52 = *(v79 + 48);
  v53 = v81;
  sub_100035AD0(v82 + v45[13], v81, &qword_100CA5130, &unk_100A2F370);
  sub_10007463C();
  if (sub_100024D10(v81, 1, v80) == 1)
  {
    sub_100005424();
    if (!v27)
    {
      goto LABEL_48;
    }

    sub_1000180EC(v81, &qword_100CA5130, &unk_100A2F370);
    goto LABEL_51;
  }

  sub_100035AD0(v81, v78, &qword_100CA5130, &unk_100A2F370);
  sub_100005424();
  if (v27)
  {
    sub_10026FCBC(v78, type metadata accessor for TemperatureAveragesHeroChartViewModel.PeakMarkModel);
LABEL_48:
    v54 = &qword_100CA52D8;
    v55 = &qword_100A2F410;
LABEL_60:
    sub_1000180EC(v53, v54, v55);
    return 0;
  }

  sub_10026FD14(v81 + v52, v74);
  v56 = static Date.== infix(_:_:)();
  if ((v56 & 1) == 0)
  {
    sub_10001BB0C();
    sub_10026FCBC(v74, v62);
    sub_10026FCBC(v78, v80);
    v54 = &qword_100CA5130;
    v55 = &unk_100A2F370;
    goto LABEL_60;
  }

  v57 = *(v80 + 20);
  v58 = *(v78 + v57);
  v59 = *(v74 + v57);
  sub_10001BB0C();
  sub_10026FCBC(v74, v60);
  sub_10026FCBC(v78, v80);
  sub_1000180EC(v81, &qword_100CA5130, &unk_100A2F370);
  if (v58 != v59)
  {
    return 0;
  }

LABEL_51:
  v61 = *(v75 + 48);
  v53 = v77;
  sub_100035AD0(v82 + v45[14], v77, &qword_100CA5138, &unk_100A50700);
  sub_10007463C();
  if (sub_100024D10(v77, 1, v76) == 1)
  {
    sub_100005424();
    if (!v27)
    {
      goto LABEL_58;
    }

    sub_1000180EC(v77, &qword_100CA5138, &unk_100A50700);
  }

  else
  {
    sub_100035AD0(v77, v73, &qword_100CA5138, &unk_100A50700);
    sub_100005424();
    if (v27)
    {
      sub_10026FCBC(v73, type metadata accessor for PeakUpperMarkModel);
LABEL_58:
      v54 = &qword_100CA52D0;
      v55 = &qword_100A2F408;
      goto LABEL_60;
    }

    sub_10026FD14(v77 + v61, v72);
    v63 = sub_10082A328(v73, v72);
    sub_10026FCBC(v72, type metadata accessor for PeakUpperMarkModel);
    sub_10026FCBC(v73, type metadata accessor for PeakUpperMarkModel);
    sub_1000180EC(v77, &qword_100CA5138, &unk_100A50700);
    if ((v63 & 1) == 0)
    {
      return 0;
    }
  }

  v64 = sub_100007EF4(v45[15]);
  if ((sub_10048F310(v64, v65) & 1) == 0)
  {
    return 0;
  }

  sub_100007EF4(v45[16]);
  if ((static Date.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  sub_100007EF4(v45[17]);
  if ((static Date.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  sub_100007EF4(v45[18]);
  if ((static DetailChartGradientModel.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  sub_100014100(v45[19]);
  if (!v27 || v66 != v67)
  {
    return 0;
  }

  sub_100014100(v45[20]);
  v71 = v27;
  if (v69 == v70)
  {
    return v71;
  }

  else
  {
    return 0;
  }
}

BOOL sub_10026FC64(uint64_t a1, uint64_t a2)
{
  if ((static Date.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for TemperatureAveragesHeroChartViewModel.PeakMarkModel(0);
  return *(a1 + *(v4 + 20)) == *(a2 + *(v4 + 20));
}

uint64_t sub_10026FCBC(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_10026FD14(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000038D8();
  v5(v4);
  sub_1000037E8();
  (*(v6 + 32))(a2, v2);
  return a2;
}

uint64_t sub_10026FD70(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_10026FD88(void *result, int a2)
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

void sub_10026FDB8(uint64_t a5@<X8>)
{
  type metadata accessor for UVIndex();
  sub_1000037C4();
  v51 = v7;
  v52 = v6;
  __chkstk_darwin(v6);
  sub_1000037D8();
  v10 = v9 - v8;
  type metadata accessor for WeatherDescription();
  sub_1000037C4();
  v54 = v12;
  v55 = v11;
  __chkstk_darwin(v11);
  sub_1000037D8();
  v15 = v14 - v13;
  v16 = type metadata accessor for Calendar();
  sub_1000037C4();
  v18 = v17;
  __chkstk_darwin(v19);
  sub_1000037D8();
  v22 = v21 - v20;
  static Calendar.currentCalendar(with:)();
  v23 = Calendar.isDateInToday(_:)();
  v24 = *(v18 + 8);
  v24(v22, v16);
  if (v23)
  {
    v25 = [objc_opt_self() mainBundle];
    sub_100005448(0x4025202C776F4ELL, 0xE700000000000000);

    sub_10022C350(&qword_100CA40C8, &unk_100A2E170);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_100A2C3F0;
    v27 = Date.formattedTime(timeZone:)();
    v29 = v28;
    *(v26 + 56) = &type metadata for String;
    *(v26 + 64) = sub_100035744();
    *(v26 + 32) = v27;
    *(v26 + 40) = v29;
    v50 = static String.localizedStringWithFormat(_:_:)();
    v31 = v30;

    v32 = v31;

    v33 = sub_1000161C0(v53, v53[3]);
    CurrentWeather.uvIndex.getter();
    v34 = v33;
    v35 = v50;
    dispatch thunk of UVISummaryStringBuilderType.makeTodayDescription(from:timeZone:currentUVIndex:hourlyForecast:)();
    (*(v51 + 8))(v10, v52);
    type metadata accessor for ConditionDetailPlatterViewModel(0);
    sub_1000191C4();
    v37 = sub_10001BB24(v36);
    sub_10001B350(v37, v38, v39, v55);
    (*(v54 + 32))(a5 + *(v34 + 7), v15, v55);
  }

  else
  {
    static Calendar.currentCalendar(with:)();
    v40 = Calendar.isDateInYesterday(_:)();
    v24(v22, v16);
    v35 = Date.formattedMonthDayYear(timeZone:)();
    v32 = v41;
    v34 = sub_1000161C0(v53, v53[3]);
    if (v40)
    {
      dispatch thunk of UVISummaryStringBuilderType.makeYesterdayDescription(from:timeZone:extrema:)();
    }

    else
    {
      dispatch thunk of UVISummaryStringBuilderType.makeFutureDayDescription(from:timeZone:hourlyForecast:)();
    }

    type metadata accessor for ConditionDetailPlatterViewModel(0);
    sub_1000191C4();
    v43 = sub_10001BB24(v42);
    sub_10001B350(v43, v44, v45, v55);
    (*(v54 + 32))(a5 + *(v34 + 7), v15, v55);
  }

  v46 = type metadata accessor for ConditionDetailPlatterViewModel.Body(0);
  swift_storeEnumTagMultiPayload();
  v47 = sub_10001BB24(*(v34 + 8));
  sub_10001B350(v47, v48, v49, v46);
  sub_100014120();
  *(a5 + 24) = v35;
  *(a5 + 32) = v32;
  sub_100003A6C();
}

uint64_t sub_100270214@<X0>(int *a1@<X0>, uint64_t a3@<X8>)
{
  v5 = type metadata accessor for WeatherDescription();
  sub_1000037C4();
  v53 = v6;
  __chkstk_darwin(v7);
  sub_1000037D8();
  v10 = v9 - v8;
  v11 = type metadata accessor for Calendar();
  sub_1000037C4();
  v13 = v12;
  __chkstk_darwin(v14);
  sub_1000037D8();
  v17 = v16 - v15;
  static Calendar.currentCalendar(with:)();
  v18 = Calendar.isDateInToday(_:)();
  v19 = *(v13 + 8);
  v19(v17, v11);
  v52 = v5;
  if (v18)
  {
    v20 = [objc_opt_self() mainBundle];
    sub_100005448(0x25202C7961646F54, 0xE900000000000040);

    sub_10022C350(&qword_100CA40C8, &unk_100A2E170);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_100A2C3F0;
    v22 = Date.formattedTime(timeZone:)();
    v24 = v23;
    *(v21 + 56) = &type metadata for String;
    *(v21 + 64) = sub_100035744();
    *(v21 + 32) = v22;
    *(v21 + 40) = v24;
    v50 = static String.localizedStringWithFormat(_:_:)();
    v26 = v25;

    sub_1000161C0(v54, v54[3]);
    sub_100007F04();
    type metadata accessor for ConditionDetailPlatterViewModel(0);
    sub_1000191C4();
    v28 = sub_10001BB24(v27);
    sub_10001B350(v28, v29, v30, v52);
    (*(v53 + 32))(a3 + v22[7], v10, v52);
    v31 = type metadata accessor for ConditionDetailPlatterViewModel.Body(0);
    sub_10002277C(v31);
    v32 = sub_10001BB24(v22[8]);
    sub_10001B350(v32, v33, v34, v52);
    sub_100014120();
    *(a3 + 24) = v50;
    *(a3 + 32) = v26;
    sub_100003A6C();
LABEL_6:
    v37 = a3;
    v38 = 0;
    v36 = v22;
    return sub_10001B350(v37, v38, 1, v36);
  }

  static Calendar.currentCalendar(with:)();
  v35 = Calendar.isDateInYesterday(_:)();
  v19(v17, v11);
  if ((v35 & 1) == 0)
  {
    v22 = a1;
    v39 = Date.formattedMonthDayTime(timeZone:)();
    v51 = v40;
    sub_1000161C0(v54, v54[3]);
    sub_100007F04();
    type metadata accessor for ConditionDetailPlatterViewModel(0);
    sub_1000191C4();
    v42 = sub_10001BB24(v41);
    sub_10001B350(v42, v43, v44, v52);
    (*(v53 + 32))(a3 + a1[7], v10, v52);
    v45 = type metadata accessor for ConditionDetailPlatterViewModel.Body(0);
    sub_10002277C(v45);
    v46 = sub_10001BB24(a1[8]);
    sub_10001B350(v46, v47, v48, v52);
    sub_100014120();
    *(a3 + 24) = v39;
    *(a3 + 32) = v51;
    *(a3 + a1[9]) = 1;
    *(a3 + a1[10]) = 1;
    goto LABEL_6;
  }

  v36 = type metadata accessor for ConditionDetailPlatterViewModel(0);
  v37 = a3;
  v38 = 1;
  return sub_10001B350(v37, v38, 1, v36);
}

uint64_t sub_1002705E4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_100270624(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t type metadata accessor for CalendarDayMoonPhase(uint64_t a1)
{
  result = qword_100CA5340;
  if (!qword_100CA5340)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1002706F0(uint64_t a1)
{
  result = type metadata accessor for MoonPhase.Hemisphere();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100270790@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v36 = a1;
  v38 = sub_10022C350(&unk_100CE1680, &unk_100A450F0);
  sub_1000037E8();
  __chkstk_darwin(v3);
  v5 = &v34 - v4;
  v6 = sub_10022C350(&qword_100CA5380, &qword_100A2F560);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v34 - v8;
  v45 = sub_10022C350(&qword_100CA5388, &qword_100A2F568);
  sub_1000037E8();
  __chkstk_darwin(v10);
  v43 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v44 = &v34 - v13;
  v14 = *v1;
  type metadata accessor for CalendarDayMoonPhase(0);
  v42 = v14;
  MoonPhase.symbolName(for:)();
  v15 = Image.init(systemName:)();
  v16 = static Font.headline.getter();
  KeyPath = swift_getKeyPath();
  v18 = static Color.secondary.getter();
  v19 = swift_getKeyPath();
  v40 = v16;
  v41 = v15;
  v48 = v15;
  v49 = KeyPath;
  v39 = KeyPath;
  v50 = v16;
  v51 = v19;
  v37 = v18;
  v52 = v18;
  v20 = enum case for DynamicTypeSize.large(_:);
  v21 = type metadata accessor for DynamicTypeSize();
  sub_1000037E8();
  (*(v22 + 104))(v5, v20, v21);
  sub_100270F84(&qword_100CA5390, &type metadata accessor for DynamicTypeSize, &protocol conformance descriptor for DynamicTypeSize);
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if (result)
  {
    v24 = sub_10022C350(&qword_100CA5398, &unk_100A2F5D0);
    v25 = sub_100270BC8();
    v35 = v2;
    v26 = v25;
    v27 = sub_100006F64(&qword_100CA53C8, &unk_100CE1680, &unk_100A450F0, &protocol conformance descriptor for PartialRangeThrough<A>);
    v28 = v38;
    View.dynamicTypeSize<A>(_:)();
    sub_100270D38(v5);

    v46 = MoonPhase.accessibilityDescription.getter();
    v47 = v29;
    v48 = v24;
    v49 = v28;
    v50 = v26;
    v51 = v27;
    swift_getOpaqueTypeConformance2();
    sub_10002D5A4();
    v30 = v43;
    View.accessibilityValue<A>(_:)();

    (*(v7 + 8))(v9, v6);
    LODWORD(v24) = v35[1];
    v31 = v44;
    ModifiedContent<>.accessibilityHidden(_:)();
    sub_1001D5904(v30);
    if (v24)
    {
      v32 = 1.0;
    }

    else
    {
      v32 = 0.0;
    }

    v33 = v36;
    sub_1001D5964(v31, v36);
    result = sub_10022C350(&qword_100CA53D0, &unk_100A2F5F0);
    *(v33 + *(result + 36)) = v32;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_100270BC8()
{
  result = qword_100CA53A0;
  if (!qword_100CA53A0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CA5398, &unk_100A2F5D0);
    v4[0] = sub_100270C80();
    v4[1] = sub_100006F64(&qword_100CE0FF0, &qword_100CA5110, &qword_100A2F320, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CA53A0);
  }

  return result;
}

unint64_t sub_100270C80()
{
  result = qword_100CA53A8;
  if (!qword_100CA53A8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CA53B0, &qword_100A47610);
    v4[0] = &protocol witness table for Image;
    v4[1] = sub_100006F64(&qword_100CA53B8, &qword_100CA53C0, &unk_100A2F5E0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CA53A8);
  }

  return result;
}

uint64_t sub_100270D38(uint64_t a1)
{
  v2 = sub_10022C350(&unk_100CE1680, &unk_100A450F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100270DA0()
{
  result = qword_100CA53D8;
  if (!qword_100CA53D8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CA53D0, &unk_100A2F5F0);
    v4[0] = sub_100270E2C();
    v4[1] = &protocol witness table for _OpacityEffect;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CA53D8);
  }

  return result;
}

unint64_t sub_100270E2C()
{
  result = qword_100CA53E0;
  if (!qword_100CA53E0)
  {
    v4[12] = v0;
    v4[13] = v1;
    v3 = sub_10022E824(&qword_100CA5388, &qword_100A2F568);
    v4[2] = sub_10022E824(&qword_100CA5398, &unk_100A2F5D0);
    v4[3] = sub_10022E824(&unk_100CE1680, &unk_100A450F0);
    v4[4] = sub_100270BC8();
    v4[5] = sub_100006F64(&qword_100CA53C8, &unk_100CE1680, &unk_100A450F0, &protocol conformance descriptor for PartialRangeThrough<A>);
    v4[0] = swift_getOpaqueTypeConformance2();
    v4[1] = sub_100270F84(&qword_100CE1750, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CA53E0);
  }

  return result;
}

uint64_t sub_100270F84(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100270FCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  countAndFlagsBits = a1;
  v126 = a2;
  v2 = type metadata accessor for AttributedString();
  __chkstk_darwin(v2 - 8);
  sub_1000038E4();
  v111 = v3;
  sub_1000038CC();
  v113 = type metadata accessor for WeatherDescription();
  sub_1000037C4();
  v112 = v4;
  __chkstk_darwin(v5);
  sub_1000038E4();
  v110 = v6;
  sub_1000038CC();
  v7 = type metadata accessor for TemperatureScaleConfiguration.Gradient();
  __chkstk_darwin(v7 - 8);
  sub_1000038E4();
  v115 = v8;
  v9 = sub_10022C350(&unk_100CB2CF0, &unk_100A2D7F0);
  __chkstk_darwin(v9 - 8);
  v125 = &v108 - v10;
  sub_1000038CC();
  v131 = type metadata accessor for Date();
  sub_1000037C4();
  v124 = v11;
  __chkstk_darwin(v12);
  sub_100003848();
  v123 = v13;
  __chkstk_darwin(v14);
  v129 = &v108 - v15;
  sub_1000038CC();
  v130 = type metadata accessor for DateComponents();
  sub_1000037C4();
  v134 = v16;
  __chkstk_darwin(v17);
  sub_100003848();
  v122 = v18;
  __chkstk_darwin(v19);
  v21 = &v108 - v20;
  type metadata accessor for TimeZone();
  sub_1000037C4();
  v127 = v23;
  v128 = v22;
  __chkstk_darwin(v22);
  sub_1000038E4();
  v133 = v24;
  Calendar.timeZone.getter();
  v120 = sub_10022C350(&qword_100CA53E8, &unk_100A2F650);
  v25 = type metadata accessor for Calendar.Component();
  sub_1000037C4();
  v27 = v26;
  v29 = *(v28 + 72);
  v30 = (*(v26 + 80) + 32) & ~*(v26 + 80);
  v119 = v30 + 2 * v29;
  v31 = v29;
  object = v29;
  v32 = swift_allocObject();
  v118 = xmmword_100A2D320;
  *(v32 + 16) = xmmword_100A2D320;
  LODWORD(v117) = enum case for Calendar.Component.year(_:);
  v33 = *(v27 + 104);
  v33(v32 + v30);
  v34 = enum case for Calendar.Component.month(_:);
  (v33)(&v31[v32 + v30], enum case for Calendar.Component.month(_:), v25);
  sub_10004BCB0(v32);
  v114 = type metadata accessor for MonthlyAveragesChartInput(0);
  v132 = v21;
  v35 = countAndFlagsBits;
  Calendar.dateComponents(_:from:)();

  v36 = swift_allocObject();
  *(v36 + 16) = v118;
  v37 = v36 + v30;
  v38 = v130;
  (v33)(v37, v117, v25);
  v39 = &object[v37];
  v40 = v131;
  (v33)(v39, v34, v25);
  v41 = v124;
  v42 = v134;
  sub_10004BCB0(v36);
  v43 = v123;
  Date.startOfDay.getter();
  v44 = v122;
  Calendar.dateComponents(_:from:)();

  v45 = v41[1];
  v45(v43, v40);
  v46 = v125;
  Calendar.date(from:)();
  v47 = v46;
  v50 = *(v42 + 8);
  v48 = v42 + 8;
  v49 = v50;
  v50(v44, v38);
  if (sub_100024D10(v47, 1, v40) == 1)
  {
    v49(v132, v38);
    v51 = sub_10000F9EC();
    v52(v51);
    sub_10003FDF4(v47, &unk_100CB2CF0, &unk_100A2D7F0);
    type metadata accessor for ConditionDetailPlatterViewModel(0);
    sub_100003934();
    return sub_10001B350(v53, v54, v55, v56);
  }

  else
  {
    v122 = v49;
    v123 = v45;
    v58 = v129;
    (v41[4])(v129, v47, v40);
    sub_100119F7C();
    v59 = static NSDateFormatter.shortMonthNameFormatter(with:)();
    v60 = static NSDateFormatter.longMonthNameFormatter(with:)();
    v61 = static NSDateFormatter.longMonthNameFormatter(with:)();
    __chkstk_darwin(v61);
    *(&v108 - 6) = v35;
    *(&v108 - 5) = v58;
    v124 = v60;
    v125 = v59;
    *(&v108 - 4) = v59;
    *(&v108 - 3) = v60;
    v120 = v62;
    v141._object = v62;
    sub_100744690(sub_100272E84, (&v108 - 8), 1, 12, v63, v64, v65, v66, v108, v109, v110, v111, v112, v113, v114, v115, object, v117, v118, *(&v118 + 1));
    v68 = v67;
    v69 = v115;
    TemperatureScaleConfiguration.gradient.getter();
    v70 = sub_100100224(v69);
    sub_10064C8F0(1, v68, v70, &v136);
    if (v137)
    {
      v72 = v139;
      v71 = v140;
      v119 = v138;
      LODWORD(v118) = v136;
      v73 = v110;
      v117 = v137;
      sub_1002725A4(v132, v109, v110);
      v134 = v48;
      v74 = [objc_opt_self() mainBundle];
      v141._object = 0x8000000100ABCA10;
      v75._object = 0x8000000100ABC9F0;
      v141._countAndFlagsBits = 0xD00000000000006ELL;
      v75._countAndFlagsBits = 0xD000000000000010;
      v76._countAndFlagsBits = 0;
      v76._object = 0xE000000000000000;
      v77 = NSLocalizedString(_:tableName:bundle:value:comment:)(v75, 0, v74, v76, v141);
      countAndFlagsBits = v77._countAndFlagsBits;
      object = v77._object;

      v78 = type metadata accessor for ConditionDetailPlatterViewModel(0);
      v79 = v126;
      sub_100003934();
      v80 = v113;
      sub_10001B350(v81, v82, v83, v113);
      v84 = v79 + v78[7];
      static Font.body.getter();
      WeatherDescription.formatted(font:color:)();

      v85 = Text.init(_:)();
      v87 = v86;
      v89 = v88;
      v91 = v90;

      (*(v112 + 8))(v73, v80);
      v122(v132, v130);
      v92 = sub_10000F9EC();
      v93(v92);
      v135 = 0;
      *v84 = v85;
      *(v84 + 8) = v87;
      *(v84 + 16) = v89 & 1;
      *(v84 + 24) = v91;
      *(v84 + 32) = v118;
      v94 = v119;
      *(v84 + 40) = v117;
      *(v84 + 48) = v94;
      *(v84 + 56) = v72;
      *(v84 + 64) = v71;
      *(v84 + 89) = 0;
      v95 = type metadata accessor for ConditionDetailPlatterViewModel.Body(0);
      swift_storeEnumTagMultiPayload();
      sub_100003934();
      sub_10001B350(v96, v97, v98, v95);
      *v79 = xmmword_100A2F600;
      *(v79 + 16) = 2;
      v99 = object;
      *(v79 + 24) = countAndFlagsBits;
      *(v79 + 32) = v99;
      *(v79 + v78[9]) = 0;
      *(v79 + v78[10]) = 0;
      sub_10001B350(v79, 0, 1, v78);
      v100 = v129;
      v101 = v131;
    }

    else
    {

      v122(v132, v38);
      v102 = sub_10000F9EC();
      v103(v102);
      type metadata accessor for ConditionDetailPlatterViewModel(0);
      sub_100003934();
      sub_10001B350(v104, v105, v106, v107);
      v100 = v129;
      v101 = v40;
    }

    return v123(v100, v101);
  }
}

uint64_t sub_100271980@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, void *a5@<X4>, void *a6@<X5>, void *a7@<X8>)
{
  v83 = a5;
  v84 = a6;
  v82 = a4;
  v101 = a3;
  v103 = a7;
  v100 = type metadata accessor for ComparisonCapsuleViewModel.Row.Body.Temperature(0);
  __chkstk_darwin(v100);
  v99 = &v77 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10022C350(qword_100CA5418, &qword_100A2F670);
  __chkstk_darwin(v9 - 8);
  v90 = &v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v91 = &v77 - v12;
  __chkstk_darwin(v13);
  v87 = &v77 - v14;
  v92 = type metadata accessor for ComparisonCapsuleViewModel.Row.Body(0);
  __chkstk_darwin(v92);
  v93 = &v77 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10022C350(&qword_100CA53F8, &unk_100A3B3E0);
  v88 = *(v16 - 8);
  v89 = v16;
  __chkstk_darwin(v16);
  v85 = &v77 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v86 = &v77 - v19;
  __chkstk_darwin(v20);
  v97 = &v77 - v21;
  __chkstk_darwin(v22);
  v98 = &v77 - v23;
  v24 = sub_10022C350(&qword_100CA5400, &unk_100A2F660);
  __chkstk_darwin(v24 - 8);
  v94 = &v77 - v25;
  v102 = type metadata accessor for MonthTemperatureStatistics();
  v96 = *(v102 - 8);
  __chkstk_darwin(v102);
  v95 = &v77 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for Calendar.Component();
  v28 = *(v27 - 8);
  __chkstk_darwin(v27);
  v30 = &v77 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_10022C350(&unk_100CB2CF0, &unk_100A2D7F0);
  __chkstk_darwin(v31 - 8);
  v33 = &v77 - v32;
  v34 = type metadata accessor for Date();
  v35 = *(v34 - 8);
  v36 = __chkstk_darwin(v34);
  v38 = &v77 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v28 + 104))(v30, enum case for Calendar.Component.month(_:), v27, v36);
  Calendar.date(bySetting:value:of:)();
  (*(v28 + 8))(v30, v27);
  if (sub_100024D10(v33, 1, v34) == 1)
  {
    sub_10003FDF4(v33, &unk_100CB2CF0, &unk_100A2D7F0);
  }

  else
  {
    (*(v35 + 32))(v38, v33, v34);
    v39 = type metadata accessor for MonthlyAveragesChartInput(0);
    __chkstk_darwin(v39);
    *(&v77 - 2) = a2;
    *(&v77 - 1) = v38;
    v40 = v94;
    v41 = v104;
    sub_1008DB828();
    if (sub_100024D10(v40, 1, v102) != 1)
    {
      v104 = v41;
      v101 = v34;
      v81 = v35;
      (*(v96 + 32))(v95, v40, v102);
      v48 = v98;
      MonthTemperatureStatistics.averageLowTemperature.getter();
      v49 = v97;
      MonthTemperatureStatistics.averageHighTemperature.getter();
      isa = Date._bridgeToObjectiveC()().super.isa;
      v51 = [v82 stringFromDate:isa];

      v82 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v80 = v52;

      v53 = Date._bridgeToObjectiveC()().super.isa;
      v54 = [v83 stringFromDate:v53];

      v83 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v79 = v55;

      v94 = v38;
      v56 = Date._bridgeToObjectiveC()().super.isa;
      v57 = [v84 stringFromDate:v56];

      v84 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v78 = v58;

      v60 = v88;
      v59 = v89;
      v61 = *(v88 + 16);
      v62 = v86;
      v61(v86, v48, v89);
      v63 = v85;
      v61(v85, v49, v59);
      v64 = v87;
      sub_10001B350(v87, 1, 1, v59);
      Measurement<>.converted(rounded:)();
      Measurement<>.converted(rounded:)();
      v65 = v90;
      sub_100272EE8(v64, v90);
      if (sub_100024D10(v65, 1, v59) == 1)
      {
        sub_10003FDF4(v64, qword_100CA5418, &qword_100A2F670);
        v66 = *(v60 + 8);
        v66(v63, v59);
        v66(v62, v59);
        v66(v97, v59);
        v66(v98, v59);
        (*(v96 + 8))(v95, v102);
        sub_10003FDF4(v65, qword_100CA5418, &qword_100A2F670);
        v67 = 1;
        v68 = v91;
      }

      else
      {
        v68 = v91;
        Measurement<>.converted(rounded:)();
        sub_10003FDF4(v64, qword_100CA5418, &qword_100A2F670);
        v69 = *(v60 + 8);
        v69(v63, v59);
        v69(v62, v59);
        v69(v97, v59);
        v69(v98, v59);
        (*(v96 + 8))(v95, v102);
        v69(v65, v59);
        v67 = 0;
      }

      sub_10001B350(v68, v67, 1, v59);
      v70 = v99;
      sub_100272F58(v68, &v99[*(v100 + 24)]);
      v71 = v93;
      sub_100272FC8(v70, v93, type metadata accessor for ComparisonCapsuleViewModel.Row.Body.Temperature);
      swift_storeEnumTagMultiPayload();
      v72 = v103;
      v73 = v80;
      *v103 = v82;
      v72[1] = v73;
      v74 = v79;
      v72[2] = v83;
      v72[3] = v74;
      v75 = v78;
      v72[4] = v84;
      v72[5] = v75;
      v76 = type metadata accessor for ComparisonCapsuleViewModel.Row(0);
      sub_100272FC8(v71, v72 + *(v76 + 20), type metadata accessor for ComparisonCapsuleViewModel.Row.Body);
      *(v72 + *(v76 + 24)) = 1;
      sub_10001B350(v72, 0, 1, v76);
      return (*(v81 + 8))(v94, v101);
    }

    sub_10003FDF4(v40, &qword_100CA5400, &unk_100A2F660);
    (*(v35 + 8))(v38, v34);
  }

  if (qword_100CA2720 != -1)
  {
    swift_once();
  }

  v42 = type metadata accessor for Logger();
  sub_10000703C(v42, qword_100D90BB8);
  v43 = Logger.logObject.getter();
  v44 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    *v45 = 0;
    _os_log_impl(&_mh_execute_header, v43, v44, "Failed to find this month's temperature averages for the Averages L2 Chart summary.", v45, 2u);
  }

  v46 = type metadata accessor for ComparisonCapsuleViewModel.Row(0);
  return sub_10001B350(v103, 1, 1, v46);
}

BOOL sub_10027247C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = type metadata accessor for Calendar.Component();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MonthTemperatureStatistics.month.getter();
  (*(v4 + 104))(v6, enum case for Calendar.Component.month(_:), v3);
  v8 = Calendar.component(_:from:)();
  (*(v4 + 8))(v6, v3);
  return v7 == v8;
}

uint64_t sub_1002725A4@<X0>(uint64_t a1@<X1>, void *a2@<X2>, uint64_t a3@<X8>)
{
  v77 = a2;
  v80 = a3;
  v79 = type metadata accessor for WeatherFormatPlaceholder();
  v71 = *(v79 - 8);
  __chkstk_darwin(v79);
  v76 = &v55[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = type metadata accessor for NSUnitTemperature.BaseWeatherFormatStyle();
  v74 = *(v5 - 8);
  v75 = v5;
  __chkstk_darwin(v5);
  v73 = &v55[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for Calendar.Identifier();
  v69 = *(v7 - 8);
  v70 = v7;
  __chkstk_darwin(v7);
  v9 = &v55[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v12 = &v55[-v11];
  v81 = sub_10022C350(&qword_100CA53F8, &unk_100A3B3E0);
  v72 = *(v81 - 8);
  __chkstk_darwin(v81);
  v78 = &v55[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v14);
  v16 = &v55[-v15];
  v17 = sub_10022C350(&qword_100CA5400, &unk_100A2F660);
  __chkstk_darwin(v17 - 8);
  v19 = &v55[-v18];
  v20 = type metadata accessor for MonthTemperatureStatistics();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v55[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for MonthlyAveragesChartInput(0);
  v82 = a1;
  sub_1008DB828();
  if (sub_100024D10(v19, 1, v20) == 1)
  {
    sub_10003FDF4(v19, &qword_100CA5400, &unk_100A2F660);
    if (qword_100CA2700 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_10000703C(v24, qword_100D90B68);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, v25, v26, "Failed to find this month's temperature averages for the Averages L2 Chart summary.", v27, 2u);
    }

    return static WeatherDescription.string(_:)();
  }

  else
  {
    v67 = v21;
    v68 = v20;
    (*(v21 + 32))(v23, v19, v20);
    sub_1000161C0(v77, v77[3]);
    MonthTemperatureStatistics.averageLowTemperature.getter();
    MonthTemperatureStatistics.averageHighTemperature.getter();
    v29 = MonthTemperatureStatistics.month.getter();
    Calendar.identifier.getter();
    v31 = v69;
    v30 = v70;
    (*(v69 + 104))(v9, enum case for Calendar.Identifier.gregorian(_:), v70);
    v32 = static Calendar.Identifier.== infix(_:_:)();
    v33 = *(v31 + 8);
    v33(v9, v30);
    v33(v12, v30);
    v66 = v23;
    if (v32)
    {
      v34 = sub_100502D28(v29);
    }

    else
    {
      v34 = sub_100502AB8(v29);
    }

    v69 = v34;
    v65 = v35;
    sub_10022C350(&qword_100CA5408, &unk_100A533E0);
    v70 = type metadata accessor for WeatherDescription.Argument();
    v77 = *(v70 - 8);
    v62 = v77[9];
    v36 = (*(v77 + 80) + 32) & ~*(v77 + 80);
    v37 = swift_allocObject();
    v64 = v37;
    *(v37 + 16) = xmmword_100A2D320;
    v38 = (v37 + v36);
    v39 = v73;
    static WeatherFormatStyle<>.weather.getter();
    v61 = enum case for WeatherFormatPlaceholder.none(_:);
    v40 = v71;
    v60 = *(v71 + 104);
    v41 = v76;
    v42 = v79;
    v60(v76);
    v59 = type metadata accessor for UnitManager();
    static UnitManager.standard.getter();
    v58 = sub_100114168();
    v43 = v75;
    v63 = v16;
    v44 = Measurement.formatted<A>(_:placeholder:unitManager:)();
    v46 = v45;

    v71 = *(v40 + 8);
    (v71)(v41, v42);
    v74 = *(v74 + 8);
    (v74)(v39, v43);
    *v38 = v44;
    v38[1] = v46;
    v56 = enum case for WeatherDescription.Argument.measurement(_:);
    v47 = v77[13];
    v77 += 13;
    v57 = v47;
    v47(v38);
    v48 = (v38 + v62);
    static WeatherFormatStyle<>.weather.getter();
    (v60)(v41, v61, v42);
    static UnitManager.standard.getter();
    v49 = v78;
    v50 = Measurement.formatted<A>(_:placeholder:unitManager:)();
    v52 = v51;

    (v71)(v41, v79);
    (v74)(v39, v43);
    *v48 = v50;
    v48[1] = v52;
    v57(v48, v56, v70);
    WeatherDescription.init(format:_:)();
    v53 = *(v72 + 8);
    v54 = v81;
    v53(v49, v81);
    v53(v63, v54);
    return (*(v67 + 8))(v66, v68);
  }
}