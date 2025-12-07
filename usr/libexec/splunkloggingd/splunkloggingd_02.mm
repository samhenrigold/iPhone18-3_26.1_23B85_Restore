uint64_t sub_10002FD00(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001FDC(&unk_100056B40, &unk_100045890);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for TestingMock(uint64_t a1)
{
  result = qword_10005A670;
  if (!qword_10005A670)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10002FDE8(uint64_t a1)
{
  sub_10002FE94(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10002FE94(uint64_t a1)
{
  if (!qword_100057388)
  {
    type metadata accessor for URL();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_100057388);
    }
  }
}

uint64_t sub_10002FF34(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100030014(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10003002C(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_100002024(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

double sub_100030074(uint64_t *a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *a1 == v4 && a1[1] == v3;
  if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {

    if (qword_10005A540 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100006C6C(v7, qword_10005A548);

    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v12 = v11;
      *v10 = 136446210;
      *(v10 + 4) = sub_10000604C(v4, v3, &v12);
      _os_log_impl(&_mh_execute_header, v8, v9, "Updating hostname to %{public}s", v10, 0xCu);
      sub_100006D94(v11);
    }

    *a1 = v4;
    a1[1] = v3;
  }

  return result;
}

void sub_10003020C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_100030258()
{
  sub_100001FDC(&qword_100057C30, qword_100047680);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = 0;
  qword_10005B150 = result;
  return result;
}

uint64_t *sub_10003029C()
{
  if (qword_10005AA00 != -1)
  {
    swift_once();
  }

  return &qword_10005B150;
}

uint64_t sub_1000302EC()
{
  if (qword_10005AA00 != -1)
  {
    swift_once();
  }
}

uint64_t sub_100030358()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  sub_100007F28(v1, *(v0 + 40));
  return v1;
}

uint64_t sub_1000303A8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 32);
  v6 = *(v2 + 40);
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return sub_10000803C(v5, v6);
}

uint64_t sub_100030484(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 48) = a1;
  return swift_unknownObjectRelease();
}

uint64_t sub_100030558(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 64) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1000305B8(uint64_t *a1))(uint64_t a1, char a2)
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
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 64);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_10003064C;
}

void sub_10003064C(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 64) = *(*a1 + 32);
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

uint64_t sub_1000306D0(uint64_t a1, double a2)
{
  v4 = swift_allocObject();
  sub_100030720(a1, a2);
  return v4;
}

void *sub_100030720(uint64_t a1, double a2)
{
  v3 = v2;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v45 = *(v5 - 8);
  v46 = v5;
  __chkstk_darwin(v5);
  v44 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v42 = *(v7 - 8);
  v43 = v7;
  __chkstk_darwin(v7);
  v41 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchTimeInterval();
  v39 = *(v9 - 8);
  v40 = v9;
  __chkstk_darwin(v9);
  v38 = (&v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v37 = type metadata accessor for DispatchTime();
  v36 = *(v37 - 8);
  v11 = __chkstk_darwin(v37);
  v35 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v34 = &v33 - v13;
  v14 = type metadata accessor for OS_dispatch_source.TimerFlags();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2[8] = 0;
  swift_unknownObjectWeakInit();
  if (qword_10005AA00 != -1)
  {
    swift_once();
  }

  v18 = qword_10005B150;
  os_unfair_lock_lock((qword_10005B150 + 24));
  sub_100030D90((v18 + 16), aBlock);
  os_unfair_lock_unlock((v18 + 24));
  v2[2] = aBlock[0];
  v2[3] = a1;
  v2[4] = sub_100031850(a1);
  v2[5] = v19;
  sub_1000075EC(0, &unk_100056C50, OS_dispatch_source_ptr);
  v33 = v2;
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100031C80(&qword_100056B28, &type metadata accessor for OS_dispatch_source.TimerFlags, &protocol conformance descriptor for OS_dispatch_source.TimerFlags);
  sub_100001FDC(&qword_100056B30, &unk_100045BF0);
  sub_100007C28(&qword_100056B38, &qword_100056B30, &unk_100045BF0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v20 = static OS_dispatch_source.makeTimerSource(flags:queue:)();
  (*(v15 + 8))(v17, v14);
  v3[6] = v20;
  swift_getObjectType();
  swift_unknownObjectRetain();
  v21 = v35;
  static DispatchTime.now()();
  v22 = v34;
  + infix(_:_:)();
  v23 = *(v36 + 8);
  v24 = v37;
  v23(v21, v37);
  v26 = v38;
  v25 = v39;
  *v38 = 0;
  v27 = v40;
  (*(v25 + 104))(v26, enum case for DispatchTimeInterval.nanoseconds(_:), v40);
  OS_dispatch_source_timer.schedule(deadline:repeating:leeway:)();
  swift_unknownObjectRelease();
  (*(v25 + 8))(v26, v27);
  v23(v22, v24);
  swift_beginAccess();
  swift_getObjectType();
  v28 = v33;
  aBlock[4] = sub_1000318F4;
  aBlock[5] = v33;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000040C8;
  aBlock[3] = &unk_100052A80;
  v29 = _Block_copy(aBlock);
  swift_unknownObjectRetain();

  v30 = v41;
  static DispatchQoS.unspecified.getter();
  v31 = v44;
  sub_10000410C();
  OS_dispatch_source.setEventHandler(qos:flags:handler:)();
  _Block_release(v29);
  swift_unknownObjectRelease();
  (*(v45 + 8))(v31, v46);
  (*(v42 + 8))(v30, v43);

  swift_getObjectType();
  swift_unknownObjectRetain();
  OS_dispatch_source.activate()();
  swift_unknownObjectRelease();
  return v28;
}

uint64_t sub_100030D90@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v13 = a2;
  v3 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v7);
  v8 = type metadata accessor for DispatchQoS();
  result = __chkstk_darwin(v8 - 8);
  v10 = *a1 + 1;
  if (__OFADD__(*a1, 1))
  {
    __break(1u);
  }

  else
  {
    *a1 = v10;
    v12[3] = sub_1000075EC(0, &qword_100056860, OS_dispatch_queue_ptr);
    v15 = 0;
    v16 = 0xE000000000000000;
    _StringGuts.grow(_:)(34);

    v15 = 0xD000000000000020;
    v16 = 0x8000000100044610;
    v14 = v10;
    v11._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v11);

    v12[1] = v16;
    v12[2] = v15;
    static DispatchQoS.unspecified.getter();
    v15 = _swiftEmptyArrayStorage;
    sub_100031C80(&qword_100056868, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
    sub_100001FDC(&qword_100056870, &qword_100045590);
    sub_100007C28(&qword_100056878, &qword_100056870, &qword_100045590);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    (*(v4 + 104))(v6, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v3);
    result = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    *v13 = result;
  }

  return result;
}

uint64_t sub_100031094()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &aBlock[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &aBlock[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  swift_getObjectType();
  aBlock[4] = nullsub_1;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000040C8;
  aBlock[3] = &unk_100052AA8;
  v9 = _Block_copy(aBlock);
  swift_unknownObjectRetain();
  static DispatchQoS.unspecified.getter();
  sub_10000410C();
  OS_dispatch_source.setEventHandler(qos:flags:handler:)();
  _Block_release(v9);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v4, v1);
  (*(v6 + 8))(v8, v5);
  swift_getObjectType();
  swift_unknownObjectRetain();
  OS_dispatch_source.cancel()();
  swift_unknownObjectRelease();

  sub_10000803C(*(v0 + 32), *(v0 + 40));
  swift_unknownObjectRelease();
  sub_100006DE0(v0 + 56);
  return v0;
}

uint64_t sub_100031310()
{
  sub_100031094();

  return _swift_deallocClassInstance(v0, 72, 7);
}

unint64_t sub_10003136C(unint64_t result, unint64_t a2)
{
  v4 = result;
  if ((a2 & 0x3000000000000000) == 0)
  {
    v5 = a2 >> 62;
    if ((a2 >> 62) > 1)
    {
      if (v5 != 2)
      {
        v6 = 0;
        goto LABEL_12;
      }

      v8 = *(result + 16);
      v7 = *(result + 24);
      v9 = __OFSUB__(v7, v8);
      v6 = v7 - v8;
      if (!v9)
      {
LABEL_12:
        v10 = v2[3];
        if (v10 < v6)
        {
          goto LABEL_13;
        }

        if (v5 > 1)
        {
          if (v5 != 2)
          {
            v14 = 0;
            goto LABEL_27;
          }

          v16 = *(result + 16);
          v15 = *(result + 24);
          v14 = v15 - v16;
          if (!__OFSUB__(v15, v16))
          {
LABEL_27:
            v17 = *(*v2 + 120);
            v18 = v2;
            result = v17();
            v20 = v19 >> 62;
            if ((v19 >> 62) > 1)
            {
              if (v20 != 2)
              {
                result = sub_10000803C(result, v19);
                v22 = 0;
                goto LABEL_37;
              }

              v24 = *(result + 16);
              v23 = *(result + 24);
              result = sub_10000803C(result, v19);
              v22 = v23 - v24;
              if (!__OFSUB__(v23, v24))
              {
                goto LABEL_37;
              }

              __break(1u);
            }

            else if (!v20)
            {
              v21 = BYTE6(v19);
              result = sub_10000803C(result, v19);
              v22 = v21;
LABEL_37:
              v27 = v18;
LABEL_38:
              v9 = __OFADD__(v14, v22);
              v28 = v14 + v22;
              if (!v9)
              {
                if (v10 < v28)
                {
                  if ((*(*v27 + 168))(result))
                  {
                    v30 = v29;
                    swift_getObjectType();
                    v31 = v17();
                    v33 = v32;
                    (*(v30 + 16))();
                    swift_unknownObjectRelease();
                    sub_10000803C(v31, v33);
                  }

                  v34 = v18[2];
                  v35 = swift_allocObject();
                  *(v35 + 16) = sub_100031BAC;
                  *(v35 + 24) = v18;
                  v46 = sub_100031CD8;
                  v47 = v35;
                  v42 = _NSConcreteStackBlock;
                  v43 = 1107296256;
                  v44 = sub_100031344;
                  v45 = &unk_100052B70;
                  v36 = _Block_copy(&v42);

                  dispatch_sync(v34, v36);
                  _Block_release(v36);
                  LOBYTE(v34) = swift_isEscapingClosureAtFileLocation();

                  if ((v34 & 1) == 0)
                  {
                    return 0;
                  }

                  goto LABEL_48;
                }

                v37 = v27[2];
                v38 = swift_allocObject();
                v38[2] = v27;
                v38[3] = v4;
                v38[4] = a2;
                v39 = swift_allocObject();
                *(v39 + 16) = sub_100031ACC;
                *(v39 + 24) = v38;
                v46 = sub_100031B60;
                v47 = v39;
                v42 = _NSConcreteStackBlock;
                v43 = 1107296256;
                v44 = sub_100031344;
                v45 = &unk_100052B20;
                v40 = _Block_copy(&v42);

                sub_100031B88(v4, a2);

                dispatch_sync(v37, v40);
                _Block_release(v40);
                isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

                result = 1;
                if ((isEscapingClosureAtFileLocation & 1) == 0)
                {
                  return result;
                }

                __break(1u);
              }

              __break(1u);
LABEL_47:
              __break(1u);
LABEL_48:
              __break(1u);
              goto LABEL_49;
            }

            v25 = HIDWORD(result);
            v26 = result;
            result = sub_10000803C(result, v19);
            LODWORD(v22) = v25 - v26;
            if (__OFSUB__(v25, v26))
            {
LABEL_50:
              __break(1u);
              return result;
            }

            v27 = v18;
            v22 = v22;
            goto LABEL_38;
          }

          __break(1u);
        }

        else if (!v5)
        {
          v14 = BYTE6(a2);
          goto LABEL_27;
        }

        if (__OFSUB__(HIDWORD(result), result))
        {
LABEL_49:
          __break(1u);
          goto LABEL_50;
        }

        v14 = HIDWORD(result) - result;
        goto LABEL_27;
      }

      __break(1u);
    }

    else if (!v5)
    {
      v6 = BYTE6(a2);
      goto LABEL_12;
    }

    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
      goto LABEL_47;
    }

    v6 = v6;
    goto LABEL_12;
  }

LABEL_13:
  if ((*(*v2 + 168))())
  {
    v12 = v11;
    ObjectType = swift_getObjectType();
    (*(v12 + 24))(v4, a2, ObjectType, v12);
    swift_unknownObjectRelease();
  }

  return 1;
}

uint64_t sub_100031850(uint64_t result)
{
  if (result)
  {
    if (result < 15)
    {
      return 0;
    }

    else
    {
      v1 = result;
      type metadata accessor for __DataStorage();
      swift_allocObject();
      __DataStorage.init(capacity:)();
      if (v1 >= 0x7FFFFFFF)
      {
        type metadata accessor for Data.RangeReference();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = 0;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1000318F4()
{
  if ((*(*v0 + 168))())
  {
    v2 = v1;
    swift_getObjectType();
    v3 = (*(*v0 + 120))();
    v5 = v4;
    (*(v2 + 8))();
    swift_unknownObjectRelease();
    sub_10000803C(v3, v5);
  }

  v6 = (*(*v0 + 136))(v13);
  v8 = *v7;
  v9 = v7[1] >> 62;
  if (v9 > 1)
  {
    if (v9 != 2)
    {
      goto LABEL_11;
    }

    v10 = *(v8 + 16);
    v11 = *(v8 + 24);
  }

  else
  {
    if (!v9)
    {
      goto LABEL_11;
    }

    v10 = v8;
    v11 = v8 >> 32;
  }

  if (v11 < v10)
  {
    __break(1u);
  }

LABEL_11:
  Data._Representation.replaceSubrange(_:with:count:)();
  return v6(v13, 0);
}

uint64_t sub_100031A74(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100031A8C()
{

  sub_10000803C(*(v0 + 24), *(v0 + 32));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100031ACC()
{
  v1 = (*(**(v0 + 16) + 136))(v3);
  Data.append(_:)();
  return v1(v3, 0);
}

uint64_t sub_100031B88(uint64_t a1, unint64_t a2)
{
  v2 = a2 & 0xCFFFFFFFFFFFFFFFLL;
  if (((a2 >> 60) & 3) == 0)
  {
    v2 = a2;
  }

  if (((a2 >> 60) & 3) <= 1)
  {
    v3 = v2;
  }

  else
  {
    v3 = a2 & 0xCFFFFFFFFFFFFFFFLL;
  }

  return sub_100007F28(a1, v3);
}

uint64_t sub_100031BAC()
{
  v1 = (*(*v0 + 136))(v8);
  v3 = *v2;
  v4 = v2[1] >> 62;
  if (v4 > 1)
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = *(v3 + 16);
    v6 = *(v3 + 24);
  }

  else
  {
    if (!v4)
    {
      goto LABEL_9;
    }

    v5 = v3;
    v6 = v3 >> 32;
  }

  if (v6 < v5)
  {
    __break(1u);
  }

LABEL_9:
  Data._Representation.replaceSubrange(_:with:count:)();
  return v1(v8, 0);
}

uint64_t sub_100031C80(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100031CE8()
{
  v7 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v0 = *(v7 - 8);
  __chkstk_darwin(v7);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v3);
  v4 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v4 - 8);
  v6[1] = sub_1000075EC(0, &qword_100056860, OS_dispatch_queue_ptr);
  static DispatchQoS.unspecified.getter();
  v8 = _swiftEmptyArrayStorage;
  sub_100032D18(&qword_100056868, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_100001FDC(&qword_100056870, &qword_100045590);
  sub_100007C28(&qword_100056878, &qword_100056870, &qword_100045590);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v0 + 104))(v2, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v7);
  return OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
}

uint64_t sub_100031F50(uint64_t a1)
{
  v24 = a1;
  v26 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1 = *(v26 - 8);
  __chkstk_darwin(v26);
  v3 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v4);
  v5 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v5 - 8);
  v25 = sub_1000075EC(0, &qword_100056860, OS_dispatch_queue_ptr);
  static DispatchQoS.unspecified.getter();
  v27 = _swiftEmptyArrayStorage;
  sub_100032D18(&qword_100056868, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_100001FDC(&qword_100056870, &qword_100045590);
  sub_100007C28(&qword_100056878, &qword_100056870, &qword_100045590);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v1 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v26);
  v6 = v24;
  v26 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v7 = sub_100032AF4(_swiftEmptyArrayStorage);
  v25 = *(v6 + 16);
  if (!v25)
  {
LABEL_16:

    return v26;
  }

  sub_1000075EC(0, &unk_100056C50, OS_dispatch_source_ptr);
  v8 = 0;
  while (v8 < *(v6 + 16))
  {
    v9 = *(v6 + 32 + 4 * v8);
    v10 = static OS_dispatch_source.makeSignalSource(signal:queue:)();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v7;
    v12 = sub_100032670(v9);
    v14 = v7[2];
    v15 = (v13 & 1) == 0;
    v16 = __OFADD__(v14, v15);
    v17 = v14 + v15;
    if (v16)
    {
      goto LABEL_18;
    }

    v18 = v13;
    if (v7[3] < v17)
    {
      sub_100032724(v17, isUniquelyReferenced_nonNull_native);
      v12 = sub_100032670(v9);
      if ((v18 & 1) != (v19 & 1))
      {
        goto LABEL_20;
      }

LABEL_11:
      v7 = v27;
      if (v18)
      {
        goto LABEL_3;
      }

      goto LABEL_12;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_11;
    }

    v22 = v12;
    sub_100032998();
    v12 = v22;
    v7 = v27;
    if (v18)
    {
LABEL_3:
      *(v7[7] + 8 * v12) = v10;
      swift_unknownObjectRelease();
      goto LABEL_4;
    }

LABEL_12:
    v7[(v12 >> 6) + 8] |= 1 << v12;
    *(v7[6] + 4 * v12) = v9;
    *(v7[7] + 8 * v12) = v10;
    v20 = v7[2];
    v16 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (v16)
    {
      goto LABEL_19;
    }

    v7[2] = v21;
LABEL_4:
    if (v25 == ++v8)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void sub_100032340(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a1;
  v30 = a2;
  v28 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v28 - 8);
  __chkstk_darwin(v28);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v27);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a4 + 64;
  v12 = 1 << *(a4 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(a4 + 64);
  v15 = (v12 + 63) >> 6;
  v25 = (v5 + 8);
  v26 = v33;
  v24 = (v8 + 8);
  v31 = a4;

  v16 = 0;
  while (v14)
  {
    v17 = v16;
LABEL_9:
    v18 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
    v19 = *(*(v31 + 48) + 4 * (v18 | (v17 << 6)));
    swift_unknownObjectRetain();
    v20 = SIG_IGN.getter();
    signal(v19, v20);
    swift_getObjectType();
    v21 = swift_allocObject();
    v22 = v30;
    *(v21 + 16) = v29;
    *(v21 + 24) = v22;
    *(v21 + 32) = v19;
    v33[2] = sub_100032C3C;
    v33[3] = v21;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    v33[0] = sub_1000040C8;
    v33[1] = &unk_100052BD0;
    v23 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    sub_10000410C();
    OS_dispatch_source.setEventHandler(qos:flags:handler:)();
    _Block_release(v23);
    (*v25)(v7, v28);
    (*v24)(v10, v27);

    OS_dispatch_source.resume()();
    swift_unknownObjectRelease();
  }

  while (1)
  {
    v17 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v17 >= v15)
    {

      return;
    }

    v14 = *(v11 + 8 * v17);
    ++v16;
    if (v14)
    {
      v16 = v17;
      goto LABEL_9;
    }
  }

  __break(1u);
}

unint64_t sub_100032670(uint64_t a1)
{
  v1 = a1;
  v2 = static Hasher._hash(seed:bytes:count:)();

  return sub_1000326B8(v1, v2);
}

unint64_t sub_1000326B8(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 4 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t sub_100032724(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100001FDC(&unk_100057CA0, &qword_100047718);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 4 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v4 & 1) == 0)
      {
        swift_unknownObjectRetain();
      }

      result = static Hasher._hash(seed:bytes:count:)();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 4 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if ((v4 & 1) == 0)
    {

      v3 = v30;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v30;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

void *sub_100032998()
{
  v1 = v0;
  sub_100001FDC(&unk_100057CA0, &qword_100047718);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 4 * v17) = *(*(v2 + 48) + 4 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
        result = swift_unknownObjectRetain();
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_100032AF4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  sub_100001FDC(&unk_100057CA0, &qword_100047718);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  LODWORD(v4) = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = sub_100032670(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    swift_unknownObjectRetain();
    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = (a1 + 56);
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + 4 * v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 2);
    v15 = *v10;
    swift_unknownObjectRetain();
    v8 = sub_100032670(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100032C04()
{

  return _swift_deallocObject(v0, 36, 7);
}

uint64_t sub_100032C6C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100032C84(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_100032CCC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100032D18(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100032D60()
{
  v0 = type metadata accessor for Logger();
  sub_1000074E8(v0, qword_10005AA10);
  sub_100006C6C(v0, qword_10005AA10);
  sub_100029948();

  return Logger.init(subsystem:category:)();
}

id sub_100032DE8()
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

void sub_100032E2C(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
}

id sub_100032E74()
{
  swift_beginAccess();
  v1 = *(v0 + 24);

  return v1;
}

void sub_100032EB8(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 24);
  *(v1 + 24) = a1;
}

uint64_t sub_100032F84(char a1)
{
  result = swift_beginAccess();
  *(v1 + 32) = a1;
  return result;
}

uint64_t sub_100032FC4()
{
  sub_100028E80();
}

uint64_t sub_100032FF8(uint64_t a1)
{
  v1 = a1;
  v2 = swift_allocObject();
  sub_100033048(v1);
  return v2;
}

uint64_t sub_100033048(unsigned __int8 a1)
{
  v2 = v1;
  *(v1 + 32) = 0;
  *(v1 + 40) = *sub_100028E80();
  v4 = objc_opt_self();

  v5 = [v4 liveLocalStore];
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  v7 = (v6 + 16);
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  v9 = swift_allocObject();
  *(v9 + 16) = v6;
  *(v9 + 24) = v8;
  v38 = sub_1000335E4;
  v39 = v9;
  aBlock = _NSConcreteStackBlock;
  v35 = 1107296256;
  v36 = sub_100033674;
  v37 = &unk_100052D18;
  v10 = _Block_copy(&aBlock);

  [v5 prepareWithCompletionHandler:v10];
  _Block_release(v10);
  swift_beginAccess();
  if (*(v8 + 16))
  {
    swift_willThrow();
    swift_errorRetain();

    type metadata accessor for LogMonitor();
    swift_deallocPartialClassInstance();
    return v2;
  }

  result = swift_beginAccess();
  v12 = *v7;
  if (*v7)
  {
    *(v2 + 16) = v12;
    *(v2 + 24) = [objc_allocWithZone(OSLogEventLiveStream) initWithLiveSource:v12];
    v13 = (v2 + 24);
    if (qword_10005AA08 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_100006C6C(v14, qword_10005AA10);

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      aBlock = v32;
      *v31 = 136446210;
      swift_beginAccess();
      v33 = v5;
      v17 = *v13;
      v18 = [v17 description];
      v30 = v15;
      v19 = a1;
      v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v29 = v16;
      v22 = v21;

      v23 = sub_10000604C(v20, v22, &aBlock);

      *(v31 + 4) = v23;
      v5 = v33;
      _os_log_impl(&_mh_execute_header, v30, v29, "init stream %{public}s", v31, 0xCu);
      sub_100006D94(v32);

      v24 = v19;
      if (v19)
      {
        goto LABEL_8;
      }
    }

    else
    {

      v24 = a1;
      if (a1)
      {
LABEL_8:
        if (v24 == 1)
        {
          v25 = 1;
        }

        else
        {
          v25 = 3;
        }

        goto LABEL_13;
      }
    }

    v25 = 0;
LABEL_13:
    swift_beginAccess();
    [*v13 setFlags:v25];
    swift_beginAccess();
    v26 = *v13;
    v38 = nullsub_1;
    v39 = 0;
    aBlock = _NSConcreteStackBlock;
    v35 = 1107296256;
    v36 = sub_100033DFC;
    v37 = &unk_100052D40;
    v27 = _Block_copy(&aBlock);
    v28 = v26;
    [v28 setEventHandler:v27];
    _Block_release(v27);

    return v2;
  }

  __break(1u);
  return result;
}

uint64_t sub_100033534()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10003356C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000335A4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000335E4(void *a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  swift_beginAccess();
  v7 = *(v5 + 16);
  *(v5 + 16) = a1;
  v8 = a1;

  swift_beginAccess();
  *(v6 + 16) = a2;
  swift_errorRetain();
}

void sub_100033674(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_100033700(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10003371C()
{
  v1 = v0;
  if (qword_10005AA08 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100006C6C(v2, qword_10005AA10);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "deinit called", v5, 2u);
  }

  swift_beginAccess();
  [*(v1 + 24) invalidate];
  swift_beginAccess();
  *(v1 + 32) = 0;

  return v1;
}

uint64_t sub_100033858()
{
  sub_10003371C();

  return _swift_deallocClassInstance(v0, 48, 7);
}

uint64_t sub_10003388C(uint64_t (*a1)(), uint64_t a2)
{
  v5 = *(*v2 + 136);
  v6 = v5();
  v16 = a1;
  v17 = a2;
  v12 = _NSConcreteStackBlock;
  v13 = 1107296256;
  v14 = sub_100033DFC;
  v15 = &unk_100052D68;
  v7 = _Block_copy(&v12);

  [v6 setEventHandler:v7];
  _Block_release(v7);

  v8 = v5();
  v16 = sub_100033D6C;
  v17 = v2;
  v12 = _NSConcreteStackBlock;
  v13 = 1107296256;
  v14 = sub_100033DFC;
  v15 = &unk_100052D90;
  v9 = _Block_copy(&v12);

  [v8 setDroppedEventHandler:v9];
  _Block_release(v9);

  v10 = v5();
  [v10 activate];

  return (*(*v2 + 168))(1);
}

void sub_100033A70(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_100033AD8()
{
  v1 = v0;
  if (qword_10005AA08 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100006C6C(v2, qword_10005AA10);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v5 = 136315394;
    *(v5 + 4) = sub_10000604C(0x6164696C61766E69, 0xEC00000029286574, &v15);
    *(v5 + 12) = 2082;
    v6 = (*(*v0 + 136))();
    v7 = [v6 description];
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    v11 = sub_10000604C(v8, v10, &v15);

    *(v5 + 14) = v11;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s Invalidating stream %{public}s", v5, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v12 = (*(*v1 + 136))();
  [v12 invalidate];

  v13 = *(*v1 + 168);

  return v13(0);
}

uint64_t sub_100033D6C()
{
  sub_100001FDC(&qword_100057710, &unk_1000471C0);

  sub_1000287B8(v0, 1uLL);
}

uint64_t sub_100033E00()
{
  v0 = type metadata accessor for Logger();
  sub_1000074E8(v0, qword_10005AA38);
  sub_100006C6C(v0, qword_10005AA38);
  sub_100029948();

  return Logger.init(subsystem:category:)();
}

uint64_t sub_100033E80@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v5 = sub_100001FDC(&unk_100056B40, &unk_100045890);
  __chkstk_darwin(v5 - 8);
  v7 = &v19 - v6;
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_10002E6E4();
  if (!v2)
  {
    if (result)
    {
      sub_10002E07C(v7);
      v21 = 0;
      v13 = *(v9 + 48);
      if (v13(v7, 1, v8) == 1)
      {
        sub_100007E2C(v7, &unk_100056B40, &unk_100045890);
        sub_1000223BC();
        swift_allocError();
        *v14 = 0xD000000000000030;
        *(v14 + 8) = 0x8000000100044860;
        *(v14 + 16) = 1;
        return swift_willThrow();
      }

      else
      {
        v20 = *(v9 + 32);
        v20(v11, v7, v8);
        if (v13(a1, 1, v8) != 1)
        {
          if (qword_10005AA30 != -1)
          {
            swift_once();
          }

          v15 = type metadata accessor for Logger();
          sub_100006C6C(v15, qword_10005AA38);
          v16 = Logger.logObject.getter();
          v17 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v16, v17))
          {
            v18 = swift_slowAlloc();
            *v18 = 0;
            _os_log_impl(&_mh_execute_header, v16, v17, "Manually passed audit table found, but configured to use SecureConfig. Ignoring passed table", v18, 2u);
          }
        }

        v20(a2, v11, v8);
        return (*(v9 + 56))(a2, 0, 1, v8);
      }
    }

    else
    {
      return sub_10001102C(a1, a2, &unk_100056B40, &unk_100045890);
    }
  }

  return result;
}

void sub_1000341A4()
{
  if (sub_10002B6E0())
  {
    v0 = swift_allocObject();
    *(v0 + 16) = 0;
    *(v0 + 24) = 0;
    static os_log_type_t.default.getter();
    aBlock[4] = sub_10003B230;
    aBlock[5] = v0;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100034620;
    aBlock[3] = &unk_100052E38;
    v1 = _Block_copy(aBlock);

    v2 = os_log_set_hook();
    _Block_release(v1);
    if (v2)
    {
      v3 = swift_allocObject();
      *(v3 + 16) = v2;
      v2 = sub_10003B288;
    }

    else
    {
      v3 = 0;
    }

    swift_beginAccess();
    v7 = *(v0 + 16);
    v8 = *(v0 + 24);
    *(v0 + 16) = v2;
    *(v0 + 24) = v3;
    sub_10002FA64(v7, v8);
  }

  else
  {
    if (qword_10005AA30 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_100006C6C(v4, qword_10005AA38);
    oslog = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v5, "Logging to stdout is disabled, not setting log hook", v6, 2u);
    }
  }
}

uint64_t sub_1000343E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for CharacterSet();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2 || !*(a2 + 128))
  {
    goto LABEL_12;
  }

  v10 = String.init(cString:)();
  v12 = v11;
  v13 = sub_100029948();
  if (v10 == *v13 && v12 == v13[1])
  {
  }

  else
  {
    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v15 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  v16 = os_log_copy_decorated_message();
  if (v16)
  {
    v17 = v16;
    v27[1] = String.init(cString:)();
    v27[2] = v18;
    static CharacterSet.whitespacesAndNewlines.getter();
    sub_10001A48C();
    v19 = StringProtocol.trimmingCharacters(in:)();
    v21 = v20;
    (*(v7 + 8))(v9, v6);

    sub_100001FDC(&qword_100057F90, &unk_100047A20);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_100045B50;
    *(v22 + 56) = &type metadata for String;
    *(v22 + 32) = v19;
    *(v22 + 40) = v21;
    print(_:separator:terminator:)();

    free(v17);
    v23 = stdout.getter();
    fflush(v23);
  }

LABEL_12:
  result = swift_beginAccess();
  v25 = *(a3 + 16);
  if (v25)
  {
    v26 = *(a3 + 24);

    v25(a1, a2);
    return sub_10002FA64(v25, v26);
  }

  return result;
}

uint64_t sub_100034620(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  v5(a2, a3);
}

uint64_t sub_100034680@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC14splunkloggingd6Daemon_config;
  swift_beginAccess();
  return sub_100020D08(v1 + v3, a1);
}

uint64_t sub_1000346D8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14splunkloggingd6Daemon_config;
  swift_beginAccess();
  sub_10003B2A4(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_1000347A8@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC14splunkloggingd6Daemon_configURL;
  swift_beginAccess();
  v4 = type metadata accessor for URL();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_100034830(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14splunkloggingd6Daemon_configURL;
  swift_beginAccess();
  v4 = type metadata accessor for URL();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t sub_100034A00(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14splunkloggingd6Daemon_rotatingBuffer;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_100034B14(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  *(v2 + v4) = a1;
}

void *sub_100034BE8()
{
  v1 = OBJC_IVAR____TtC14splunkloggingd6Daemon_filterPredicate;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_100034C34(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14splunkloggingd6Daemon_filterPredicate;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_100034D0C()
{
  v1 = (*(**(v0 + 16) + 272))();
  if (v1)
  {
    (*(*v1 + 200))(v1);
  }

  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_100019CD8;

  return sub_100018384();
}

uint64_t sub_100034E10()
{
  v1[2] = v0;
  v1[3] = type metadata accessor for Configuration(0);
  v1[4] = swift_task_alloc();
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();

  return _swift_task_switch(sub_100034EBC, v0, 0);
}

uint64_t sub_100034EBC()
{
  v1 = *(v0[2] + OBJC_IVAR____TtC14splunkloggingd6Daemon_configMonitor);
  v0[7] = v1;
  v5 = (*(*v1 + 144) + **(*v1 + 144));
  v2 = swift_task_alloc();
  v0[8] = v2;
  *v2 = v0;
  v2[1] = sub_100034FF0;
  v3 = v0[2];

  return v5(v3, &off_100052EB0);
}

uint64_t sub_100034FF0()
{
  v1 = *(*v0 + 16);

  return _swift_task_switch(sub_100035100, v1, 0);
}

uint64_t sub_100035100()
{
  v1 = *(v0[2] + OBJC_IVAR____TtC14splunkloggingd6Daemon_panicMonitor);
  v0[9] = v1;
  v5 = (*(*v1 + 176) + **(*v1 + 176));
  v2 = swift_task_alloc();
  v0[10] = v2;
  *v2 = v0;
  v2[1] = sub_100035234;
  v3 = v0[2];

  return v5(v3, &off_100052E88);
}

uint64_t sub_100035234()
{
  v1 = *(*v0 + 16);

  return _swift_task_switch(sub_100035344, v1, 0);
}

uint64_t sub_100035344()
{
  v1 = v0[7];
  v2 = *(v0[2] + OBJC_IVAR____TtC14splunkloggingd6Daemon_crashMonitor);
  v0[11] = v2;
  v3 = *((swift_isaMask & *v2) + 0x68);
  v4 = swift_unknownObjectRetain();
  v3(v4, &off_100052E98);
  v7 = (*(*v1 + 128) + **(*v1 + 128));
  v5 = swift_task_alloc();
  v0[12] = v5;
  *v5 = v0;
  v5[1] = sub_1000354C0;

  return v7();
}

uint64_t sub_1000354C0()
{
  v1 = *v0;
  v2 = *(*v0 + 72);
  v6 = *v0;

  v5 = (*(*v2 + 168) + **(*v2 + 168));
  v3 = swift_task_alloc();
  *(v1 + 104) = v3;
  *v3 = v6;
  v3[1] = sub_10003568C;

  return v5();
}

uint64_t sub_10003568C()
{
  v1 = *(*v0 + 16);

  return _swift_task_switch(sub_10003579C, v1, 0);
}

uint64_t sub_10003579C()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  v5 = *(v0 + 16);
  (*((swift_isaMask & **(v0 + 88)) + 0x90))();
  sub_10002AC8C();

  type metadata accessor for SplunkEventRotatingBuffer();
  v6 = *(*v5 + 176);
  v6();
  v7 = *(v1 + v4[10]);
  v8 = sub_100020C58(v1);
  (v6)(v8);
  v9 = *(v2 + v4[9]);
  v10 = sub_100020C58(v2);
  (v6)(v10);
  v11 = *(v3 + v4[8]);
  sub_100020C58(v3);
  v12 = sub_100015B64(v7, v9, v11);
  v13 = (*(*v5 + 256))(v12);
  v14 = (*(*v5 + 248))(v13);
  (*(*v5 + 224))();
  (*(*v14 + 152))();

  sub_100035A70();
  if (*(v5 + OBJC_IVAR____TtC14splunkloggingd6Daemon_interactive) == 1)
  {
    v15 = *(v0 + 16);
    v16 = sub_100031F50(&off_100052DB8);
    v18 = v17;

    sub_100032340(sub_10003B308, v15, v16, v18);
  }

  v19 = *(v0 + 8);

  return v19();
}

void sub_100035A70()
{
  v1 = v0;
  v2 = type metadata accessor for Configuration(0);
  v3 = __chkstk_darwin(v2);
  v5 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (*(*v0 + 272))(v3);
  if (v6)
  {
    (*(*v6 + 200))(v6);
  }

  v7 = (*v0 + 280);
  v8 = *v7;
  v9 = (*v7)(0);
  v10 = (*(*v0 + 296))(v9);
  if (v10)
  {
    v11 = v10;
    type metadata accessor for LogMonitor();
    (*(*v0 + 176))();
    v12 = v5[*(v2 + 44)];
    sub_100020C58(v5);
    v17 = sub_100032FF8(v12);
    v18 = *(*v17 + 136);

    v19 = v18();

    v46[0] = 0;
    v20 = [v19 assignFilterPredicate:v11 error:v46];

    if (v20)
    {
      v21 = v46[0];
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      sub_100006D94(v46);
      v22 = *(*v17 + 192);

      v22(sub_10003B860, v1);

      if (qword_10005AA30 != -1)
      {
        swift_once();
      }

      v23 = type metadata accessor for Logger();
      sub_100006C6C(v23, qword_10005AA38);
      v24 = v11;
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        *v27 = 138543362;
        *(v27 + 4) = v24;
        *v28 = v11;
        v29 = v24;
        _os_log_impl(&_mh_execute_header, v25, v26, "Activated stream with predicate: %{public}@", v27, 0xCu);
        sub_100007E2C(v28, &qword_100056C40, &unk_100045BE0);
      }

      v8(v30);
    }

    else
    {
      v31 = v46[0];
      _convertNSErrorToError(_:)();

      swift_willThrow();
      if (qword_10005AA30 != -1)
      {
        swift_once();
      }

      v32 = type metadata accessor for Logger();
      sub_100006C6C(v32, qword_10005AA38);
      v33 = v11;
      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        *v36 = 138543362;
        *(v36 + 4) = v33;
        *v37 = v11;
        v38 = v33;
        _os_log_impl(&_mh_execute_header, v34, v35, "Unable to assign predicate to log monitor: %{public}@", v36, 0xCu);
        sub_100007E2C(v37, &qword_100056C40, &unk_100045BE0);
      }

      swift_errorRetain();
      v39 = Logger.logObject.getter();
      v40 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        *v41 = 138543362;
        swift_errorRetain();
        v43 = _swift_stdlib_bridgeErrorToNSError();
        *(v41 + 4) = v43;
        *v42 = v43;
        _os_log_impl(&_mh_execute_header, v39, v40, "Log monitor assignment error: %{public}@", v41, 0xCu);
        sub_100007E2C(v42, &qword_100056C40, &unk_100045BE0);
      }

      else
      {
      }
    }
  }

  else
  {
    if (qword_10005AA30 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_100006C6C(v13, qword_10005AA38);
    v45 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v45, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v45, v14, "No predicate, so not activating log monitor", v15, 2u);
    }

    v16 = v45;
  }
}

uint64_t sub_1000362DC()
{
  *(v1 + 80) = v0;
  v4 = (*(*v0 + 328) + **(*v0 + 328));
  v2 = swift_task_alloc();
  *(v1 + 88) = v2;
  *v2 = v1;
  v2[1] = sub_1000363F8;

  return v4();
}

uint64_t sub_1000363F8()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 8);

    return v3();
  }

  else
  {
    sub_10003B818(&qword_100057DC0, type metadata accessor for Daemon, &unk_100047800);
    swift_getObjectType();
    v6 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_10003657C, v6, v5);
  }
}

uint64_t sub_10003657C()
{
  *(v0 + 16) = v0;
  *(v0 + 24) = sub_100036608;
  swift_continuation_init();

  return _swift_continuation_await(v0 + 16);
}

uint64_t sub_100036608()
{
  v1 = *(*v0 + 8);

  return v1();
}

void sub_1000366E4()
{
  v1 = v0;
  v2 = sub_100001FDC(&unk_100057530, &unk_100046FC0);
  __chkstk_darwin(v2 - 8);
  v51 = v43 - v3;
  v4 = sub_100001FDC(&unk_100056B40, &unk_100045890);
  __chkstk_darwin(v4 - 8);
  v6 = v43 - v5;
  v7 = type metadata accessor for Configuration(0);
  v8 = __chkstk_darwin(v7);
  v49 = v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v48 = v43 - v11;
  __chkstk_darwin(v10);
  v13 = v43 - v12;
  v14 = type metadata accessor for URL();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v46 = v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v47 = v43 - v19;
  v20 = __chkstk_darwin(v18);
  v22 = v43 - v21;
  v23 = *(*v0 + 176);
  v23(v20);
  v50 = v7;
  sub_10001102C(&v13[*(v7 + 20)], v6, &unk_100056B40, &unk_100045890);
  v24 = v13;
  v25 = v14;
  sub_100020C58(v24);
  if ((*(v15 + 48))(v6, 1, v14) == 1)
  {
    sub_100007E2C(v6, &unk_100056B40, &unk_100045890);
    if (qword_10005AA30 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_100006C6C(v26, qword_10005AA38);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "Failed to update SplunkEventOffloader: server not present", v29, 2u);
    }
  }

  else
  {
    (*(v15 + 32))(v22, v6, v14);
    v43[2] = type metadata accessor for SplunkEventOffloader(0);
    v45 = v15;
    v30 = v47;
    v43[0] = *(v15 + 16);
    v43[1] = v15 + 16;
    v31 = (v43[0])(v47, v22, v25);
    v32 = v48;
    v23(v31);
    v33 = v50;
    v34 = (v32 + *(v50 + 24));
    v44 = v25;
    v35 = *v34;
    v36 = v34[1];

    v37 = sub_100020C58(v32);
    v38 = v49;
    v23(v37);
    v39 = v51;
    sub_10001102C(v38 + *(v33 + 28), v51, &unk_100057530, &unk_100046FC0);
    sub_100020C58(v38);
    v40 = sub_100026A1C(v30, v35, v36, v39);
    v41 = (*(*v1 + 232))(v40);
    v42 = (*(*v1 + 248))(v41);
    (*(*v1 + 224))();
    (*(*v42 + 152))();

    (*(v45 + 8))(v22, v44);
  }
}

uint64_t sub_100036FD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  swift_allocObject();
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1000370A0;

  return sub_1000371A0(a1, v7, a3, a4);
}

uint64_t sub_1000370A0(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_1000371A0(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 128) = a4;
  *(v5 + 136) = v4;
  *(v5 + 320) = a2;
  *(v5 + 112) = a1;
  *(v5 + 120) = a3;
  sub_100001FDC(&unk_100057530, &unk_100046FC0);
  *(v5 + 144) = swift_task_alloc();
  sub_100001FDC(&unk_100056B40, &unk_100045890);
  *(v5 + 152) = swift_task_alloc();
  *(v5 + 160) = swift_task_alloc();
  v6 = type metadata accessor for URL();
  *(v5 + 168) = v6;
  *(v5 + 176) = *(v6 - 8);
  *(v5 + 184) = swift_task_alloc();
  *(v5 + 192) = swift_task_alloc();
  *(v5 + 200) = swift_task_alloc();
  *(v5 + 208) = swift_task_alloc();
  *(v5 + 216) = swift_task_alloc();

  return _swift_task_switch(sub_100037314, 0, 0);
}

uint64_t sub_100037314()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 176);
  v3 = *(v0 + 160);
  v4 = *(v0 + 128);
  v5 = *(v0 + 136);
  v6 = *(v0 + 320);
  v8 = *(v0 + 112);
  v7 = *(v0 + 120);
  swift_defaultActor_initialize();
  v9 = OBJC_IVAR____TtC14splunkloggingd6Daemon_offloader;
  *(v0 + 224) = OBJC_IVAR____TtC14splunkloggingd6Daemon_offloader;
  *(v5 + v9) = 0;
  v10 = OBJC_IVAR____TtC14splunkloggingd6Daemon_logMonitor;
  *(v5 + OBJC_IVAR____TtC14splunkloggingd6Daemon_logMonitor) = 0;
  *(v5 + OBJC_IVAR____TtC14splunkloggingd6Daemon_filterPredicate) = 0;
  sub_1000341A4();
  v11 = OBJC_IVAR____TtC14splunkloggingd6Daemon_config;
  *(v0 + 232) = OBJC_IVAR____TtC14splunkloggingd6Daemon_config;
  sub_100020D08(v8, v5 + v11);
  *(v5 + OBJC_IVAR____TtC14splunkloggingd6Daemon_interactive) = v6;
  v12 = OBJC_IVAR____TtC14splunkloggingd6Daemon_configURL;
  v13 = *(v2 + 16);
  *(v0 + 240) = v13;
  *(v0 + 248) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v13(v5 + v12, v7, v1);
  swift_beginAccess();
  *(v5 + v10) = 0;

  sub_100033E80(v4, v3);
  v15 = *(v0 + 168);
  v14 = *(v0 + 176);
  v16 = *(v0 + 160);
  v17 = *(v14 + 48);
  *(v0 + 256) = v17;
  *(v0 + 264) = (v14 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v17(v16, 1, v15) == 1)
  {
    v18 = *(v0 + 136);
    sub_100007E2C(v16, &unk_100056B40, &unk_100045890);
    *(v18 + OBJC_IVAR____TtC14splunkloggingd6Daemon_systemAuditTable) = 0;
    if (qword_10005AA30 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_100006C6C(v19, qword_10005AA38);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "Not using audit table, as none required and none passed", v22, 2u);
    }
  }

  else
  {
    v24 = *(v0 + 208);
    v23 = *(v0 + 216);
    (*(v14 + 32))(v23, v16, v15);
    type metadata accessor for AuditTable();
    v13(v24, v23, v15);
    v25 = sub_1000127D8(v24);
    v26 = *(v0 + 136);
    (*(*(v0 + 176) + 8))(*(v0 + 216), *(v0 + 168));
    *(v26 + OBJC_IVAR____TtC14splunkloggingd6Daemon_systemAuditTable) = v25;
  }

  *(v0 + 272) = 0;
  v27 = *(v0 + 200);
  v28 = *(v0 + 168);
  v29 = *(v0 + 120);
  type metadata accessor for ConfigurationMonitor();
  v13(v27, v29, v28);
  v30 = swift_task_alloc();
  *(v0 + 280) = v30;
  *v30 = v0;
  v30[1] = sub_100037958;
  v31 = *(v0 + 200);

  return sub_10001F368(v31);
}

uint64_t sub_100037958(uint64_t a1)
{
  *(*v1 + 288) = a1;

  return _swift_task_switch(sub_100037A58, 0, 0);
}

uint64_t sub_100037A58()
{
  v1 = v0[25];
  v2 = v0[17];
  v3 = v2 + v0[29];
  *(v2 + OBJC_IVAR____TtC14splunkloggingd6Daemon_configMonitor) = v0[36];
  type metadata accessor for SplunkEventRotatingBuffer();
  swift_beginAccess();
  v4 = type metadata accessor for Configuration(0);
  v0[37] = v4;
  *(v2 + OBJC_IVAR____TtC14splunkloggingd6Daemon_rotatingBuffer) = sub_100015B64(*(v3 + v4[10]), *(v3 + v4[9]), *(v3 + v4[8]));
  type metadata accessor for PanicMonitor(0);
  sub_100016400(v1);
  v5 = swift_task_alloc();
  v0[38] = v5;
  *v5 = v0;
  v5[1] = sub_100037B84;
  v6 = v0[25];

  return sub_1000167A4(v6);
}

uint64_t sub_100037B84(uint64_t a1)
{
  *(*v1 + 312) = a1;

  return _swift_task_switch(sub_100037C84, 0, 0);
}

uint64_t sub_100037C84()
{
  v1 = *(v0 + 136);
  *(v1 + OBJC_IVAR____TtC14splunkloggingd6Daemon_panicMonitor) = *(v0 + 312);
  type metadata accessor for CrashMonitor();
  v2 = sub_100009FD0();
  *(v1 + OBJC_IVAR____TtC14splunkloggingd6Daemon_crashMonitor) = sub_10000C804(v2);

  return _swift_task_switch(sub_100037D18, v1, 0);
}

uint64_t sub_100037D18()
{
  v1 = v0[32];
  v2 = v0[21];
  v3 = v0[19];
  sub_10001102C(v0[17] + v0[29] + *(v0[37] + 20), v3, &unk_100056B40, &unk_100045890);
  if (v1(v3, 1, v2) == 1)
  {
    v4 = v0[21];
    v5 = v0[22];
    v6 = v0[19];
    v7 = v0[15];
    v8 = v0[14];
    sub_100007E2C(v0[16], &unk_100056B40, &unk_100045890);
    (*(v5 + 8))(v7, v4);
    sub_100020C58(v8);
    sub_100007E2C(v6, &unk_100056B40, &unk_100045890);
LABEL_12:

    v47 = v0[1];
    v48 = v0[17];

    return v47(v48);
  }

  v9 = v0[37];
  v49 = v0[34];
  v10 = v0[30];
  v11 = v0[23];
  v12 = v0[24];
  v13 = v0[21];
  v14 = v0[18];
  v15 = v0[17] + v0[29];
  (*(v0[22] + 32))(v12, v0[19], v13);
  type metadata accessor for SplunkEventOffloader(0);
  v10(v11, v12, v13);
  v16 = (v15 + *(v9 + 24));
  v17 = *v16;
  v18 = v16[1];
  sub_10001102C(v15 + *(v9 + 28), v14, &unk_100057530, &unk_100046FC0);

  v19 = sub_100026A1C(v11, v17, v18, v14);
  if (!v49)
  {
    v36 = v0[28];
    v50 = v0[24];
    v37 = v0[21];
    v38 = v0[22];
    v40 = v0[16];
    v39 = v0[17];
    v41 = v0[14];
    v42 = v0[15];
    v43 = v19;
    swift_beginAccess();
    *(v39 + v36) = v43;

    v44 = OBJC_IVAR____TtC14splunkloggingd6Daemon_rotatingBuffer;
    swift_beginAccess();
    v45 = *(**(v39 + v44) + 152);

    v45(v43, &off_100052750);

    sub_100007E2C(v40, &unk_100056B40, &unk_100045890);
    v46 = *(v38 + 8);
    v46(v42, v37);
    sub_100020C58(v41);
    v46(v50, v37);
    goto LABEL_12;
  }

  if (qword_10005AA30 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  sub_100006C6C(v20, qword_10005AA38);
  swift_errorRetain();
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v23 = 138543362;
    swift_errorRetain();
    v25 = _swift_stdlib_bridgeErrorToNSError();
    *(v23 + 4) = v25;
    *v24 = v25;
    _os_log_impl(&_mh_execute_header, v21, v22, "Daemon init error while creating offloader: %{public}@", v23, 0xCu);
    sub_100007E2C(v24, &qword_100056C40, &unk_100045BE0);
  }

  v26 = v0[24];
  v27 = v21;
  v29 = v0[21];
  v28 = v0[22];
  v30 = v0[16];
  v32 = v0[14];
  v31 = v0[15];

  swift_willThrow();
  v33 = *(v28 + 8);
  v33(v26, v29);
  sub_100007E2C(v30, &unk_100056B40, &unk_100045890);
  v33(v31, v29);
  sub_100020C58(v32);

  v34 = v0[1];

  return v34();
}

uint64_t sub_100038268()
{
  sub_100020C58(v0 + OBJC_IVAR____TtC14splunkloggingd6Daemon_config);
  v1 = OBJC_IVAR____TtC14splunkloggingd6Daemon_configURL;
  v2 = type metadata accessor for URL();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_100038360()
{
  sub_100038268();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_10003838C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = type metadata accessor for Configuration(0);
  v3[6] = swift_task_alloc();
  v3[7] = swift_task_alloc();

  return _swift_task_switch(sub_100038430, v2, 0);
}

uint64_t sub_100038430()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 40);
  v3 = *(**(v0 + 32) + 176);
  v3();
  v4 = *(v1 + *(v2 + 60));
  v5 = sub_100020C58(v1);
  if (v4)
  {
    v7 = *(v0 + 48);
    v6 = *(v0 + 56);
    v8 = *(v0 + 40);
    v9 = *(v0 + 16);
    v33 = *(v0 + 24);
    (v3)(v5);
    v10 = (v6 + *(v8 + 24));
    v11 = *v10;
    v12 = v10[1];

    v13 = sub_100020C58(v6);
    (v3)(v13);
    v14 = *(v7 + *(v8 + 52));

    sub_100020C58(v7);
    v15 = sub_10002D6BC(v9, v33, 0, v11, v12, v14);
    v17 = v16;
    LOBYTE(v6) = v18;

    if (v6)
    {
      sub_100008014(*(v0 + 16), *(v0 + 24), sub_100007F28);
      v15 = *(v0 + 16);
      v17 = *(v0 + 24);
    }

    *(v0 + 64) = v15;
    *(v0 + 72) = v17;
    v19 = *(v0 + 32);
    sub_100001FDC(&qword_100057710, &unk_1000471C0);
    sub_100028E80();

    sub_1000287B8(v20, 1uLL);

    (*(*v19 + 248))(v21);
    v22 = sub_100015ED8(v15, v17);

    if ((v22 & 1) == 0)
    {

      sub_1000287B8(v23, 1uLL);
    }

    sub_1000287B8(v24, 1uLL);

    v25 = swift_task_alloc();
    *(v0 + 80) = v25;
    *v25 = v0;
    v25[1] = sub_100038840;

    return sub_100018384();
  }

  else
  {
    if (qword_10005AA30 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    sub_100006C6C(v27, qword_10005AA38);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v28, v29, "Panic forwarding disabled, dropping panic", v30, 2u);
    }

    sub_100001FDC(&qword_100057710, &unk_1000471C0);
    sub_100028E80();

    sub_1000287B8(v31, 1uLL);

    v32 = *(v0 + 8);

    return v32();
  }
}

uint64_t sub_100038840()
{
  v1 = *(*v0 + 32);

  return _swift_task_switch(sub_100038950, v1, 0);
}

uint64_t sub_100038950()
{
  sub_100008014(v0[8], v0[9], sub_10000803C);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1000389D4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000073F4;

  return sub_10003838C(a1, a2);
}

uint64_t sub_100038A78(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for Configuration(0);
  v7 = __chkstk_darwin(v6);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v41 - v11;
  v13 = *(*v2 + 176);
  v13(v10);
  v14 = v12[v6[14]];
  v15 = sub_100020C58(v12);
  if (v14)
  {
    v13(v15);
    v16 = &v12[v6[6]];
    v17 = v16[1];
    v41 = *v16;

    v18 = sub_100020C58(v12);
    v13(v18);
    v19 = a2;
    v20 = *&v9[v6[13]];

    sub_100020C58(v9);
    v21 = sub_10002D6BC(a1, a2, 0, v41, v17, v20);
    v23 = v22;
    v25 = v24;

    if (v25)
    {
      sub_100008014(a1, v19, sub_100007F28);
    }

    else
    {
      a1 = v21;
      v19 = v23;
    }

    sub_100001FDC(&qword_100057710, &unk_1000471C0);
    sub_100028E80();

    sub_1000287B8(v36, 1uLL);

    (*(*v3 + 248))(v37);
    v38 = sub_100015ED8(a1, v19);

    if (v38)
    {
      return sub_100008014(a1, v19, sub_10000803C);
    }

    sub_1000287B8(v40, 1uLL);
    sub_100008014(a1, v19, sub_10000803C);
  }

  else
  {
    if (qword_10005AA30 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_100006C6C(v26, qword_10005AA38);
    sub_100008014(a1, a2, sub_100007F28);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();
    sub_100008014(a1, a2, sub_10000803C);
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v43 = a2;
      v44 = v30;
      *v29 = 136446210;
      v42 = a1;
      sub_100008014(a1, a2, sub_100007F28);
      sub_1000280D0();
      v31 = dispatch thunk of CustomStringConvertible.description.getter();
      v33 = v32;
      sub_100008014(v42, v43, sub_10000803C);
      v34 = sub_10000604C(v31, v33, &v44);

      *(v29 + 4) = v34;
      _os_log_impl(&_mh_execute_header, v27, v28, "Crash forwarding disabled, dropping event of type %{public}s", v29, 0xCu);
      sub_100006D94(v30);
    }

    sub_100001FDC(&qword_100057710, &unk_1000471C0);
    sub_100028E80();

    sub_1000287B8(v35, 1uLL);
  }
}

uint64_t sub_100038F34(uint64_t a1, unint64_t a2)
{
  sub_100038A78(a1, a2);
  sub_100001FDC(&qword_100057710, &unk_1000471C0);
  sub_100028E80();

  sub_1000287B8(v2, 1uLL);
}

uint64_t sub_100038FA8(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return _swift_task_switch(sub_100038FCC, v2, 0);
}

uint64_t sub_100038FCC()
{
  sub_100038A78(v0[2], v0[3]);
  sub_100001FDC(&qword_100057710, &unk_1000471C0);
  sub_100028E80();

  sub_1000287B8(v1, 1uLL);

  v2 = v0[1];

  return v2();
}

uint64_t sub_100039078(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return _swift_task_switch(sub_10003909C, v2, 0);
}

uint64_t sub_10003909C()
{
  sub_100038A78(v0[2], v0[3]);
  sub_100001FDC(&qword_100057710, &unk_1000471C0);
  sub_100028E80();

  sub_1000287B8(v1, 1uLL);

  v2 = v0[1];

  return v2();
}

uint64_t sub_100039148(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for UUID();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = sub_100001FDC(&qword_100057500, &qword_100046F40);
  v2[8] = swift_task_alloc();
  sub_100001FDC(&unk_100057530, &unk_100046FC0);
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v4 = type metadata accessor for URL();
  v2[11] = v4;
  v2[12] = *(v4 - 8);
  v2[13] = swift_task_alloc();
  v2[14] = sub_100001FDC(&qword_100057508, qword_100046F48);
  v2[15] = swift_task_alloc();
  sub_100001FDC(&unk_100056B40, &unk_100045890);
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v2[18] = type metadata accessor for Configuration(0);
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();

  return _swift_task_switch(sub_1000393D0, v1, 0);
}

uint64_t sub_1000393D0()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 136);
  v3 = *(v0 + 144);
  v5 = *(v0 + 112);
  v4 = *(v0 + 120);
  v6 = *(v0 + 96);
  v111 = *(v0 + 88);
  v8 = *(v0 + 16);
  v7 = *(v0 + 24);
  v9 = *(*v7 + 176);
  v10 = (*v7 + 176) & 0xFFFFFFFFFFFFLL | 0xF7A000000000000;
  *(v0 + 200) = v9;
  *(v0 + 208) = v10;
  v113 = v9;
  v9();
  sub_10001102C(v1 + *(v3 + 20), v2, &unk_100056B40, &unk_100045890);
  sub_100020C58(v1);
  v11 = *(v3 + 20);
  v12 = *(v5 + 48);
  sub_10001102C(v2, v4, &unk_100056B40, &unk_100045890);
  sub_10001102C(v8 + v11, v4 + v12, &unk_100056B40, &unk_100045890);
  v13 = *(v6 + 48);
  if (v13(v4, 1, v111) == 1)
  {
    v14 = *(v0 + 88);
    sub_100007E2C(*(v0 + 136), &unk_100056B40, &unk_100045890);
    v15 = v113;
    if (v13(v4 + v12, 1, v14) == 1)
    {
      v16 = sub_100007E2C(*(v0 + 120), &unk_100056B40, &unk_100045890);
      goto LABEL_8;
    }

LABEL_6:
    v23 = *(v0 + 120);
    v24 = &qword_100057508;
    v25 = qword_100046F48;
LABEL_18:
    v16 = sub_100007E2C(v23, v24, v25);
    goto LABEL_19;
  }

  v17 = *(v0 + 88);
  sub_10001102C(*(v0 + 120), *(v0 + 128), &unk_100056B40, &unk_100045890);
  v18 = v13(v4 + v12, 1, v17);
  v19 = *(v0 + 128);
  v20 = *(v0 + 136);
  if (v18 == 1)
  {
    v22 = *(v0 + 88);
    v21 = *(v0 + 96);
    sub_100007E2C(*(v0 + 136), &unk_100056B40, &unk_100045890);
    (*(v21 + 8))(v19, v22);
    v15 = v113;
    goto LABEL_6;
  }

  v26 = *(v0 + 120);
  v28 = *(v0 + 96);
  v27 = *(v0 + 104);
  v29 = *(v0 + 88);
  (*(v28 + 32))(v27, v4 + v12, v29);
  sub_10003B818(&qword_100057518, &type metadata accessor for URL, &protocol conformance descriptor for URL);
  v30 = dispatch thunk of static Equatable.== infix(_:_:)();
  v31 = *(v28 + 8);
  v31(v27, v29);
  sub_100007E2C(v20, &unk_100056B40, &unk_100045890);
  v31(v19, v29);
  v16 = sub_100007E2C(v26, &unk_100056B40, &unk_100045890);
  v15 = v113;
  if ((v30 & 1) == 0)
  {
    goto LABEL_19;
  }

LABEL_8:
  v32 = *(v0 + 184);
  v33 = *(v0 + 144);
  v34 = *(v0 + 16);
  (v15)(v16);
  v35 = (v32 + *(v33 + 24));
  v36 = *v35;
  v37 = v35[1];

  sub_100020C58(v32);
  v38 = (v34 + *(v33 + 24));
  if (v36 == *v38 && v37 == v38[1])
  {

    goto LABEL_12;
  }

  v39 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v39 & 1) == 0)
  {
LABEL_19:
    v52 = 1;
    goto LABEL_20;
  }

LABEL_12:
  v40 = *(v0 + 176);
  v41 = *(v0 + 144);
  v42 = *(v0 + 80);
  v44 = *(v0 + 56);
  v43 = *(v0 + 64);
  v45 = v15;
  v46 = *(v0 + 40);
  v112 = *(v0 + 32);
  v47 = *(v0 + 16);
  (v45)(v16);
  sub_10001102C(v40 + *(v41 + 28), v42, &unk_100057530, &unk_100046FC0);
  sub_100020C58(v40);
  v48 = *(v41 + 28);
  v49 = *(v44 + 48);
  sub_10001102C(v42, v43, &unk_100057530, &unk_100046FC0);
  sub_10001102C(v47 + v48, v43 + v49, &unk_100057530, &unk_100046FC0);
  v50 = *(v46 + 48);
  if (v50(v43, 1, v112) != 1)
  {
    v53 = *(v0 + 32);
    sub_10001102C(*(v0 + 64), *(v0 + 72), &unk_100057530, &unk_100046FC0);
    v54 = v50(v43 + v49, 1, v53);
    v55 = *(v0 + 72);
    v56 = *(v0 + 80);
    if (v54 != 1)
    {
      v105 = *(v0 + 64);
      v107 = *(v0 + 40);
      v106 = *(v0 + 48);
      v108 = *(v0 + 32);
      (*(v107 + 32))(v106, v43 + v49, v108);
      sub_10003B818(&qword_100057510, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v109 = dispatch thunk of static Equatable.== infix(_:_:)();
      v110 = *(v107 + 8);
      v110(v106, v108);
      sub_100007E2C(v56, &unk_100057530, &unk_100046FC0);
      v110(v55, v108);
      v16 = sub_100007E2C(v105, &unk_100057530, &unk_100046FC0);
      v15 = v113;
      if (v109)
      {
        v52 = 0;
        goto LABEL_20;
      }

      goto LABEL_19;
    }

    v58 = *(v0 + 32);
    v57 = *(v0 + 40);
    sub_100007E2C(*(v0 + 80), &unk_100057530, &unk_100046FC0);
    (*(v57 + 8))(v55, v58);
    v15 = v113;
    goto LABEL_17;
  }

  v51 = *(v0 + 32);
  sub_100007E2C(*(v0 + 80), &unk_100057530, &unk_100046FC0);
  v15 = v113;
  if (v50(v43 + v49, 1, v51) != 1)
  {
LABEL_17:
    v23 = *(v0 + 64);
    v24 = &qword_100057500;
    v25 = &qword_100046F40;
    goto LABEL_18;
  }

  v16 = sub_100007E2C(*(v0 + 64), &unk_100057530, &unk_100046FC0);
  v52 = 0;
LABEL_20:
  *(v0 + 242) = v52;
  v59 = *(v0 + 168);
  v60 = *(v0 + 144);
  v61 = *(v0 + 16);
  (v15)(v16);
  v62 = *(v59 + *(v60 + 32));
  v63 = sub_100020C58(v59);
  v72 = 1;
  if (v62 == *(v61 + *(v60 + 32)))
  {
    v64 = *(v0 + 168);
    v65 = *(v0 + 144);
    v66 = *(v0 + 16);
    (v15)(v63);
    v67 = *(v64 + *(v65 + 36));
    v63 = sub_100020C58(v64);
    if (v67 == *(v66 + *(v65 + 36)))
    {
      v68 = *(v0 + 168);
      v69 = *(v0 + 144);
      v70 = *(v0 + 16);
      (v15)(v63);
      v71 = *(v68 + *(v69 + 40));
      v63 = sub_100020C58(v68);
      if (v71 == *(v70 + *(v69 + 40)))
      {
        v72 = 0;
      }
    }
  }

  *(v0 + 243) = v72;
  v73 = *(v0 + 168);
  v74 = *(v0 + 144);
  v75 = *(v0 + 16);
  (v15)(v63);
  v76 = *(v73 + *(v74 + 44));
  sub_100020C58(v73);
  *(v0 + 240) = v76;
  *(v0 + 241) = *(v75 + *(v74 + 44));
  sub_10002192C();
  v77 = dispatch thunk of static Equatable.== infix(_:_:)();
  v15();
  v78 = *(v73 + *(v74 + 48));

  sub_100020C58(v73);
  v79 = *(v75 + *(v74 + 48));
  LOBYTE(v73) = sub_10001E5C4(v78, v79);

  if (v73)
  {
    v81 = v77 ^ 1;
  }

  else
  {
    v80 = sub_10003A5D8(v79);
    v81 = 1;
  }

  *(v0 + 244) = v81 & 1;
  v82 = *(v0 + 168);
  v83 = *(v0 + 144);
  v84 = *(v0 + 16);
  (v15)(v80);
  v85 = *(v82 + *(v83 + 60));
  sub_100020C58(v82);
  v86 = *(v84 + *(v83 + 60));
  *(v0 + 245) = v86;
  if (v85 == v86)
  {
    v89 = *(v0 + 242);
    v90 = *(v0 + 168);
    v91 = *(v0 + 24);
    sub_100020D08(*(v0 + 16), v90);
    (*(*v91 + 184))(v90);
    if (v89 == 1)
    {
      sub_1000366E4();
    }

    if (*(v0 + 243) == 1)
    {
      v92 = *(v0 + 200);
      v94 = *(v0 + 160);
      v93 = *(v0 + 168);
      v96 = *(v0 + 144);
      v95 = *(v0 + 152);
      v97 = *(v0 + 24);
      type metadata accessor for SplunkEventRotatingBuffer();
      v92();
      v98 = *(v93 + v96[10]);
      v99 = sub_100020C58(v93);
      (v92)(v99);
      v100 = *(v94 + v96[9]);
      v101 = sub_100020C58(v94);
      (v92)(v101);
      v102 = *(v95 + v96[8]);
      sub_100020C58(v95);
      v103 = sub_100015B64(v98, v100, v102);
      (*(*v97 + 256))(v103);
    }

    if (*(v0 + 244) == 1)
    {
      sub_100035A70();
    }

    v104 = *(v0 + 8);

    return v104();
  }

  else
  {
    *(v0 + 216) = *(*(v0 + 24) + OBJC_IVAR____TtC14splunkloggingd6Daemon_panicMonitor);
    v87 = swift_task_alloc();
    *(v0 + 224) = v87;
    *v87 = v0;
    v87[1] = sub_100039E30;

    return sub_100018384();
  }
}

uint64_t sub_100039E30()
{
  v1 = *(*v0 + 24);

  return _swift_task_switch(sub_100039F40, v1, 0);
}

uint64_t sub_100039F40()
{
  if (*(v0 + 245) == 1)
  {
    v19 = (*(**(v0 + 216) + 168) + **(**(v0 + 216) + 168));
    v1 = swift_task_alloc();
    *(v0 + 232) = v1;
    *v1 = v0;
    v1[1] = sub_10003A28C;

    return v19();
  }

  else
  {
    v3 = *(v0 + 242);
    v4 = *(v0 + 168);
    v5 = *(v0 + 24);
    sub_100020D08(*(v0 + 16), v4);
    (*(*v5 + 184))(v4);
    if (v3 == 1)
    {
      sub_1000366E4();
    }

    if (*(v0 + 243) == 1)
    {
      v6 = *(v0 + 200);
      v8 = *(v0 + 160);
      v7 = *(v0 + 168);
      v10 = *(v0 + 144);
      v9 = *(v0 + 152);
      v11 = *(v0 + 24);
      type metadata accessor for SplunkEventRotatingBuffer();
      v6();
      v12 = *(v7 + v10[10]);
      v13 = sub_100020C58(v7);
      (v6)(v13);
      v14 = *(v8 + v10[9]);
      v15 = sub_100020C58(v8);
      (v6)(v15);
      v16 = *(v9 + v10[8]);
      sub_100020C58(v9);
      v17 = sub_100015B64(v12, v14, v16);
      (*(*v11 + 256))(v17);
    }

    if (*(v0 + 244) == 1)
    {
      sub_100035A70();
    }

    v18 = *(v0 + 8);

    return v18();
  }
}

uint64_t sub_10003A28C()
{
  v1 = *(*v0 + 24);

  return _swift_task_switch(sub_10003A39C, v1, 0);
}

uint64_t sub_10003A39C()
{
  v1 = *(v0 + 242);
  v2 = *(v0 + 168);
  v3 = *(v0 + 24);
  sub_100020D08(*(v0 + 16), v2);
  (*(*v3 + 184))(v2);
  if (v1 == 1)
  {
    sub_1000366E4();
  }

  if (*(v0 + 243) == 1)
  {
    v4 = *(v0 + 200);
    v6 = *(v0 + 160);
    v5 = *(v0 + 168);
    v8 = *(v0 + 144);
    v7 = *(v0 + 152);
    v9 = *(v0 + 24);
    type metadata accessor for SplunkEventRotatingBuffer();
    v4();
    v10 = *(v5 + v8[10]);
    v11 = sub_100020C58(v5);
    (v4)(v11);
    v12 = *(v6 + v8[9]);
    v13 = sub_100020C58(v6);
    (v4)(v13);
    v14 = *(v7 + v8[8]);
    sub_100020C58(v7);
    v15 = sub_100015B64(v10, v12, v14);
    (*(*v9 + 256))(v15);
  }

  if (*(v0 + 244) == 1)
  {
    sub_100035A70();
  }

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_10003A5D8(uint64_t a1)
{
  v41 = type metadata accessor for Configuration(0);
  __chkstk_darwin(v41);
  v40 = &v37 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for CharacterSet();
  __chkstk_darwin(v45);
  v44 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = _swiftEmptyArrayStorage;
  v6 = *(a1 + 16);
  if (v6)
  {
    v43 = (v3 + 8);
    v38 = _swiftEmptyArrayStorage;
    v7 = (a1 + 40);
    *&v4 = 136446467;
    v39 = v4;
    while (1)
    {
      v47 = v6;
      v13 = *(v7 - 1);
      v14 = *v7;
      v49[0] = v13;
      v49[1] = v14;

      v15 = v44;
      static CharacterSet.whitespacesAndNewlines.getter();
      sub_10001A48C();
      StringProtocol.trimmingCharacters(in:)();
      (*v43)(v15, v45);
      v16 = objc_allocWithZone(NSPredicate);
      v17 = String._bridgeToObjectiveC()();

      v49[0] = 0;
      v18 = [v16 initWithFormat:v17 error:v49];

      v19 = v49[0];
      if (!v18)
      {
        break;
      }

      v46 = v13;
      type metadata accessor for LogMonitor();
      v20 = *(*v42 + 176);
      v21 = v19;
      v22 = v40;
      v20(v21);
      v23 = *(v22 + *(v41 + 44));
      sub_100020C58(v22);
      v24 = sub_100032FF8(v23);
      v29 = (*(*v24 + 136))();
      v49[0] = 0;
      v30 = [v29 assignFilterPredicate:v18 error:v49];

      v31 = v49[0];
      if (!v30)
      {
        v33 = v31;
        _convertNSErrorToError(_:)();

        swift_willThrow();

        v13 = v46;
        goto LABEL_8;
      }

      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      sub_100006D94(v49);
      v32 = v18;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v48 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v48 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v38 = v48;
LABEL_4:
      v7 += 2;
      v6 = v47 - 1;
      if (v47 == 1)
      {
        goto LABEL_18;
      }
    }

    v25 = v49[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
LABEL_8:
    if (qword_10005AA30 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_100006C6C(v26, qword_10005AA38);

    swift_errorRetain();
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v27, v28))
    {
      v8 = swift_slowAlloc();
      v49[0] = swift_slowAlloc();
      *v8 = v39;
      v9 = sub_10000604C(v13, v14, v49);

      *(v8 + 4) = v9;
      *(v8 + 12) = 2081;
      swift_getErrorValue();
      v10 = Error.localizedDescription.getter();
      v12 = sub_10000604C(v10, v11, v49);

      *(v8 + 14) = v12;
      _os_log_impl(&_mh_execute_header, v27, v28, "Bad predicate in plist: %{public}s: %{private}s", v8, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    goto LABEL_4;
  }

  v38 = _swiftEmptyArrayStorage;
LABEL_18:
  if (v38 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter() >= 1)
    {
      goto LABEL_20;
    }

LABEL_22:

    v35 = 0;
    return (*(*v42 + 304))(v35);
  }

  if (*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10) < 1)
  {
    goto LABEL_22;
  }

LABEL_20:
  sub_1000075EC(0, &qword_100057DC8, NSPredicate_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v35 = [objc_opt_self() orPredicateWithSubpredicates:isa];

  return (*(*v42 + 304))(v35);
}

uint64_t sub_10003AC54(void *a1, uint64_t a2)
{
  v4 = sub_100001FDC(&qword_100056880, &qword_100046FE0);
  __chkstk_darwin(v4 - 8);
  v6 = &v20[-1] - v5;
  v7 = *(a2 + OBJC_IVAR____TtC14splunkloggingd6Daemon_systemAuditTable);
  if (v7)
  {
    v20[3] = sub_1000075EC(0, &qword_100057280, OSLogEventProxy_ptr);
    v20[4] = &off_1000521B8;
    v20[0] = a1;

    v8 = a1;
    v9 = sub_100012BD4(v20);
    sub_100006D94(v20);
    if ((v9 & 1) == 0)
    {
      sub_100001FDC(&qword_100057710, &unk_1000471C0);
      sub_100028E80();

      sub_1000287B8(v17, 1uLL);
    }
  }

  v10 = sub_10001A7B0(v7);
  v12 = v11;
  v14 = v13;
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v6, 1, 1, v15);
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  *(v16 + 24) = 0;
  *(v16 + 32) = a2;
  *(v16 + 40) = v10;
  *(v16 + 48) = v12;
  *(v16 + 56) = v14 & 1;

  sub_1000200E8(0, 0, v6, &unk_100047A38, v16);
}

uint64_t sub_10003AE4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  *(v7 + 40) = a7;
  *(v7 + 24) = a5;
  *(v7 + 32) = a6;
  *(v7 + 16) = a4;
  return _swift_task_switch(sub_10003AE74, a4, 0);
}

uint64_t sub_10003AE74()
{
  sub_10003AEE0(*(v0 + 24), *(v0 + 32), *(v0 + 40) & 1);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10003AEE0(uint64_t a1, unint64_t a2, int a3)
{
  v4 = v3;
  v31 = a3;
  v32 = a2;
  v6 = type metadata accessor for Configuration(0);
  v7 = v6 - 8;
  v8 = __chkstk_darwin(v6);
  v10 = &v30[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = __chkstk_darwin(v8);
  v13 = &v30[-v12];
  v14 = *(*v3 + 176);
  v14(v11);
  v15 = &v13[*(v7 + 32)];
  v16 = *v15;
  v17 = v15[1];

  v18 = sub_100020C58(v13);
  v14(v18);
  v19 = *(v10 + *(v7 + 60));

  sub_100020C58(v10);
  v20 = sub_10002D6BC(a1, v32, v31 & 1, v16, v17, v19);
  v22 = v21;
  LOBYTE(v10) = v23;

  sub_100001FDC(&qword_100057710, &unk_1000471C0);
  sub_100028E80();
  if (v10)
  {

    sub_1000287B8(v24, 1uLL);
  }

  else
  {

    sub_1000287B8(v25, 1uLL);

    (*(*v4 + 248))(v26);
    v27 = sub_100015ED8(v20, v22);

    if (v27)
    {
      return sub_10001A35C(v20, v22, 0);
    }

    sub_1000287B8(v29, 1uLL);
    sub_10001A35C(v20, v22, 0);
  }
}

uint64_t sub_10003B15C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100007EAC;

  return sub_100039148(a1);
}

uint64_t sub_10003B1F0()
{
  if (*(v0 + 16))
  {
  }

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10003B238(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10003B250()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10003B2A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Configuration(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_10003B308(int a1)
{
  sub_100001FDC(&qword_100057F90, &unk_100047A20);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100045B50;
  v4 = *sub_100028E80();
  *(v3 + 56) = type metadata accessor for Statistics(0);
  *(v3 + 32) = v4;

  print(_:separator:terminator:)();

  if (a1 == 29)
  {
    v6 = (*(*v1 + 272))(v5);
    if (v6)
    {
      v7 = (*(*v6 + 136))(v6);

      v8 = [v7 filterPredicate];

      if (v8)
      {
        v9 = swift_allocObject();
        *(v9 + 16) = xmmword_100045B50;
        *(v9 + 56) = sub_1000075EC(0, &qword_100057DC8, NSPredicate_ptr);
        *(v9 + 32) = v8;
        v10 = v8;
        print(_:separator:terminator:)();
      }
    }
  }

  else
  {
    if (!__OFSUB__(0, a1))
    {
      exit(-a1);
    }

    __break(1u);
  }
}

uint64_t type metadata accessor for Daemon(uint64_t a1)
{
  result = qword_10005AB50;
  if (!qword_10005AB50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10003B540(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_10003B588(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
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

uint64_t sub_10003B5E4(uint64_t a1)
{
  result = type metadata accessor for Configuration(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for URL();
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

__n128 sub_10003B6F0(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  result = a2[8];
  v9 = a2[9];
  v10 = a2[10];
  *(a1 + 176) = *(a2 + 22);
  *(a1 + 144) = v9;
  *(a1 + 160) = v10;
  *(a1 + 128) = result;
  return result;
}

uint64_t sub_10003B72C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 184))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 149);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_10003B780(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 184) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 184) = 0;
    }

    if (a2)
    {
      *(result + 149) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_10003B818(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10003B868()
{
  swift_unknownObjectRelease();

  if ((*(v0 + 56) & 1) == 0)
  {
    sub_100008014(*(v0 + 40), *(v0 + 48), sub_10000803C);
  }

  return _swift_deallocObject(v0, 57, 7);
}

uint64_t sub_10003B8CC()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1000073F4;

  return sub_10003AE4C(v6, v7, v8, v2, v3, v4, v5);
}

uint64_t sub_10003B97C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10003B9B4(unsigned __int8 *a1, int a2)
{
  if (a2)
  {
    if ((a2 + 255) >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 255) >> 8 < 0xFF)
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
        return (*a1 | (v4 << 8)) - 255;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (*(a1 + 1))
      {
        return (*a1 | (v4 << 8)) - 255;
      }
    }

    else
    {
      v4 = a1[1];
      if (a1[1])
      {
        return (*a1 | (v4 << 8)) - 255;
      }
    }
  }

  return 0;
}

uint64_t sub_10003BA20(uint64_t result, int a2, int a3)
{
  if ((a3 + 255) >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 255) >> 8 < 0xFF)
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
    v5 = ((a2 - 1) >> 8) + 1;
    *result = a2 - 1;
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
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *(result + 1) = 0;
    }

    else
    {
      *(result + 1) = 0;
    }
  }

  else if (v4)
  {
    *(result + 1) = 0;
  }

  return result;
}

uint64_t sub_10003BAD8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10003BAF8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

uint64_t sub_10003BB70@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_100001FDC(&unk_100056B40, &unk_100045890);
  __chkstk_darwin(v6 - 8);
  v8 = v14 - v7;
  URL.init(string:)();
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_10003BD4C(v8);
    v14[0] = 0;
    v14[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(17);

    strcpy(v14, "Invalid URL: '");
    HIBYTE(v14[1]) = -18;
    v11._countAndFlagsBits = a1;
    v11._object = a2;
    String.append(_:)(v11);

    v12._countAndFlagsBits = 39;
    v12._object = 0xE100000000000000;
    String.append(_:)(v12);
    type metadata accessor for ValidationError();
    sub_10003BDB4();
    swift_allocError();
    ValidationError.init(_:)();
    return swift_willThrow();
  }

  else
  {

    return (*(v10 + 32))(a3, v8, v9);
  }
}

uint64_t sub_10003BD4C(uint64_t a1)
{
  v2 = sub_100001FDC(&unk_100056B40, &unk_100045890);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10003BDB4()
{
  result = qword_100057FB8;
  if (!qword_100057FB8)
  {
    type metadata accessor for ValidationError();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100057FB8);
  }

  return result;
}

uint64_t sub_10003BE0C()
{
  v0 = sub_100001FDC(&unk_100058140, &qword_100047D98);
  __chkstk_darwin(v0 - 8);
  v2 = &v6 - v1;
  v3 = type metadata accessor for CommandConfiguration();
  sub_1000074E8(v3, qword_10005B1B0);
  sub_100006C6C(v3, qword_10005B1B0);
  v4 = type metadata accessor for NameSpecification();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  return CommandConfiguration.init(commandName:abstract:usage:discussion:version:shouldDisplay:subcommands:defaultSubcommand:helpNames:)();
}

uint64_t sub_10003BF64()
{
  if (qword_10005AB60 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for CommandConfiguration();

  return sub_100006C6C(v0, qword_10005B1B0);
}

uint64_t sub_10003BFC8@<X0>(uint64_t a1@<X8>)
{
  if (qword_10005AB60 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for CommandConfiguration();
  v3 = sub_100006C6C(v2, qword_10005B1B0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_10003C070()
{
  sub_100001FDC(&qword_100057FC0, &qword_100047B00);
  Option.wrappedValue.getter();
  return v1;
}

uint64_t (*sub_10003C0F8(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  sub_100001FDC(&qword_100057FC0, &qword_100047B00);
  *(v3 + 32) = Option.wrappedValue.modify();
  return sub_100041B10;
}

uint64_t sub_10003C184()
{
  v0 = type metadata accessor for SingleValueParsingStrategy();
  __chkstk_darwin(v0 - 8);
  v1 = sub_100001FDC(&qword_100057FC8, &qword_100047B08);
  __chkstk_darwin(v1 - 8);
  v3 = &v11 - v2;
  v4 = sub_100001FDC(&qword_100057FD0, &qword_100047B10);
  __chkstk_darwin(v4 - 8);
  v6 = &v11 - v5;
  v7 = type metadata accessor for NameSpecification();
  __chkstk_darwin(v7 - 8);
  sub_100001FDC(&qword_100057FD8, &qword_100047B18);
  type metadata accessor for NameSpecification.Element();
  *(swift_allocObject() + 16) = xmmword_100045B60;
  static NameSpecification.Element.customShort(_:allowingJoined:)();
  static NameSpecification.Element.long.getter();
  NameSpecification.init(arrayLiteral:)();
  ArgumentHelp.init(stringLiteral:)();
  v8 = type metadata accessor for ArgumentHelp();
  (*(*(v8 - 8) + 56))(v6, 0, 1, v8);
  v9 = type metadata accessor for CompletionKind();
  (*(*(v9 - 8) + 56))(v3, 1, 1, v9);
  static SingleValueParsingStrategy.next.getter();
  return Option.init<A>(name:parsing:help:completion:)();
}

uint64_t sub_10003C468()
{
  type metadata accessor for Splunkloggingd(0);
  sub_100001FDC(&qword_100057FE0, &qword_100047B20);
  Option.wrappedValue.getter();
  return v1;
}

uint64_t type metadata accessor for Splunkloggingd(uint64_t a1)
{
  result = qword_10005AD70;
  if (!qword_10005AD70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10003C508(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Splunkloggingd(0);
  sub_100001FDC(&qword_100057FE0, &qword_100047B20);
  return Option.wrappedValue.setter();
}

uint64_t (*sub_10003C560(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for Splunkloggingd(0);
  sub_100001FDC(&qword_100057FE0, &qword_100047B20);
  *(v3 + 32) = Option.wrappedValue.modify();
  return sub_100041B10;
}

uint64_t sub_10003C5FC()
{
  v0 = type metadata accessor for SingleValueParsingStrategy();
  __chkstk_darwin(v0 - 8);
  v1 = sub_100001FDC(&qword_100057FC8, &qword_100047B08);
  __chkstk_darwin(v1 - 8);
  v3 = &v11 - v2;
  v4 = sub_100001FDC(&qword_100057FD0, &qword_100047B10);
  __chkstk_darwin(v4 - 8);
  v6 = &v11 - v5;
  v7 = type metadata accessor for NameSpecification();
  __chkstk_darwin(v7 - 8);
  static NameSpecification.shortAndLong.getter();
  ArgumentHelp.init(stringLiteral:)();
  v8 = type metadata accessor for ArgumentHelp();
  (*(*(v8 - 8) + 56))(v6, 0, 1, v8);
  v9 = type metadata accessor for CompletionKind();
  (*(*(v9 - 8) + 56))(v3, 1, 1, v9);
  static SingleValueParsingStrategy.next.getter();
  return Option.init<A>(name:parsing:help:completion:)();
}

void *sub_10003C82C()
{
  type metadata accessor for Splunkloggingd(0);
  sub_100001FDC(&qword_100057FE8, &qword_100047B28);
  return Option.wrappedValue.getter();
}

uint64_t sub_10003C880(uint64_t a1)
{
  v2 = sub_100001FDC(&unk_100056B40, &unk_100045890);
  __chkstk_darwin(v2 - 8);
  sub_10003C93C(a1, &v5 - v3);
  type metadata accessor for Splunkloggingd(0);
  sub_100001FDC(&qword_100057FE8, &qword_100047B28);
  Option.wrappedValue.setter();
  return sub_10003BD4C(a1);
}

uint64_t sub_10003C93C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001FDC(&unk_100056B40, &unk_100045890);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t (*sub_10003C9AC(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for Splunkloggingd(0);
  sub_100001FDC(&qword_100057FE8, &qword_100047B28);
  *(v3 + 32) = Option.wrappedValue.modify();
  return sub_100041B10;
}

uint64_t sub_10003CA48()
{
  v0 = type metadata accessor for SingleValueParsingStrategy();
  __chkstk_darwin(v0 - 8);
  v1 = sub_100001FDC(&qword_100057FC8, &qword_100047B08);
  __chkstk_darwin(v1 - 8);
  v3 = &v11 - v2;
  v4 = sub_100001FDC(&qword_100057FD0, &qword_100047B10);
  __chkstk_darwin(v4 - 8);
  v6 = &v11 - v5;
  v7 = type metadata accessor for NameSpecification();
  __chkstk_darwin(v7 - 8);
  static NameSpecification.shortAndLong.getter();
  ArgumentHelp.init(stringLiteral:)();
  v8 = type metadata accessor for ArgumentHelp();
  (*(*(v8 - 8) + 56))(v6, 0, 1, v8);
  v9 = type metadata accessor for CompletionKind();
  (*(*(v9 - 8) + 56))(v3, 1, 1, v9);
  static SingleValueParsingStrategy.next.getter();
  type metadata accessor for URL();
  return Option.init<A>(name:parsing:help:completion:transform:)();
}

uint64_t sub_10003CCD0()
{
  type metadata accessor for Splunkloggingd(0);
  sub_100001FDC(&qword_100057FC0, &qword_100047B00);
  Option.wrappedValue.getter();
  return v1;
}

uint64_t sub_10003CD28(uint64_t a1, char a2)
{
  type metadata accessor for Splunkloggingd(0);
  sub_100001FDC(&qword_100057FC0, &qword_100047B00);
  return Option.wrappedValue.setter();
}

uint64_t (*sub_10003CD88(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for Splunkloggingd(0);
  sub_100001FDC(&qword_100057FC0, &qword_100047B00);
  *(v3 + 32) = Option.wrappedValue.modify();
  return sub_10003CE24;
}

uint64_t sub_10003CE28()
{
  v0 = type metadata accessor for SingleValueParsingStrategy();
  __chkstk_darwin(v0 - 8);
  v1 = sub_100001FDC(&qword_100057FC8, &qword_100047B08);
  __chkstk_darwin(v1 - 8);
  v3 = &v11 - v2;
  v4 = sub_100001FDC(&qword_100057FD0, &qword_100047B10);
  __chkstk_darwin(v4 - 8);
  v6 = &v11 - v5;
  v7 = type metadata accessor for NameSpecification();
  __chkstk_darwin(v7 - 8);
  static NameSpecification.shortAndLong.getter();
  ArgumentHelp.init(stringLiteral:)();
  v8 = type metadata accessor for ArgumentHelp();
  (*(*(v8 - 8) + 56))(v6, 0, 1, v8);
  v9 = type metadata accessor for CompletionKind();
  (*(*(v9 - 8) + 56))(v3, 1, 1, v9);
  static SingleValueParsingStrategy.next.getter();
  return Option.init<A>(name:parsing:help:completion:)();
}

uint64_t sub_10003D054()
{
  type metadata accessor for Splunkloggingd(0);
  sub_100001FDC(&qword_100057FF0, &qword_100047B30);
  Option.wrappedValue.getter();
  return v1;
}

uint64_t sub_10003D0AC(uint64_t a1, char a2)
{
  type metadata accessor for Splunkloggingd(0);
  sub_100001FDC(&qword_100057FF0, &qword_100047B30);
  return Option.wrappedValue.setter();
}

uint64_t (*sub_10003D10C(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for Splunkloggingd(0);
  sub_100001FDC(&qword_100057FF0, &qword_100047B30);
  *(v3 + 32) = Option.wrappedValue.modify();
  return sub_100041B10;
}

uint64_t sub_10003D1A8()
{
  v0 = type metadata accessor for SingleValueParsingStrategy();
  __chkstk_darwin(v0 - 8);
  v1 = sub_100001FDC(&qword_100057FC8, &qword_100047B08);
  __chkstk_darwin(v1 - 8);
  v3 = &v11 - v2;
  v4 = sub_100001FDC(&qword_100057FD0, &qword_100047B10);
  __chkstk_darwin(v4 - 8);
  v6 = &v11 - v5;
  v7 = type metadata accessor for NameSpecification();
  __chkstk_darwin(v7 - 8);
  static NameSpecification.shortAndLong.getter();
  ArgumentHelp.init(stringLiteral:)();
  v8 = type metadata accessor for ArgumentHelp();
  (*(*(v8 - 8) + 56))(v6, 0, 1, v8);
  v9 = type metadata accessor for CompletionKind();
  (*(*(v9 - 8) + 56))(v3, 1, 1, v9);
  static SingleValueParsingStrategy.next.getter();
  return Option.init<A>(name:parsing:help:completion:)();
}

uint64_t sub_10003D3D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SingleValueParsingStrategy();
  __chkstk_darwin(v4 - 8);
  v5 = sub_100001FDC(&qword_100057FC8, &qword_100047B08);
  __chkstk_darwin(v5 - 8);
  v7 = v15 - v6;
  v8 = sub_100001FDC(&qword_100057FD0, &qword_100047B10);
  __chkstk_darwin(v8 - 8);
  v10 = v15 - v9;
  v11 = type metadata accessor for NameSpecification();
  __chkstk_darwin(v11 - 8);
  v15[0] = a1;
  v15[1] = a2;
  sub_100001FDC(&qword_100057FD8, &qword_100047B18);
  type metadata accessor for NameSpecification.Element();
  *(swift_allocObject() + 16) = xmmword_100045B60;
  static NameSpecification.Element.customShort(_:allowingJoined:)();
  static NameSpecification.Element.long.getter();
  NameSpecification.init(arrayLiteral:)();
  ArgumentHelp.init(stringLiteral:)();
  v12 = type metadata accessor for ArgumentHelp();
  (*(*(v12 - 8) + 56))(v10, 0, 1, v12);
  v13 = type metadata accessor for CompletionKind();
  (*(*(v13 - 8) + 56))(v7, 1, 1, v13);
  static SingleValueParsingStrategy.next.getter();
  return Option<A>.init(wrappedValue:name:parsing:help:completion:)();
}

uint64_t sub_10003D6CC()
{
  type metadata accessor for Splunkloggingd(0);
  sub_100001FDC(&qword_100057FF8, &qword_100047B38);
  Option.wrappedValue.getter();
  return v1;
}

uint64_t sub_10003D720(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Splunkloggingd(0);
  sub_100001FDC(&qword_100057FF8, &qword_100047B38);
  return Option.wrappedValue.setter();
}

uint64_t (*sub_10003D778(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for Splunkloggingd(0);
  sub_100001FDC(&qword_100057FF8, &qword_100047B38);
  *(v3 + 32) = Option.wrappedValue.modify();
  return sub_100041B10;
}

uint64_t sub_10003D830(uint64_t a1)
{
  v1 = sub_100001FDC(&qword_100057FD0, &qword_100047B10);
  __chkstk_darwin(v1 - 8);
  v3 = &v7 - v2;
  v4 = type metadata accessor for NameSpecification();
  __chkstk_darwin(v4 - 8);
  static NameSpecification.shortAndLong.getter();
  ArgumentHelp.init(stringLiteral:)();
  v5 = type metadata accessor for ArgumentHelp();
  (*(*(v5 - 8) + 56))(v3, 0, 1, v5);
  return Flag<A>.init(wrappedValue:name:help:)();
}

uint64_t sub_10003D96C()
{
  type metadata accessor for Splunkloggingd(0);
  sub_100001FDC(&qword_100058000, &qword_100047B40);
  Flag.wrappedValue.getter();
  return v1;
}

uint64_t sub_10003D9C0(char a1)
{
  type metadata accessor for Splunkloggingd(0);
  sub_100001FDC(&qword_100058000, &qword_100047B40);
  return Flag.wrappedValue.setter();
}

uint64_t (*sub_10003DA18(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for Splunkloggingd(0);
  sub_100001FDC(&qword_100058000, &qword_100047B40);
  *(v3 + 32) = Flag.wrappedValue.modify();
  return sub_100041B10;
}

uint64_t sub_10003DAB4()
{
  type metadata accessor for Splunkloggingd(0);
  sub_100001FDC(&qword_100057FE0, &qword_100047B20);
  Option.wrappedValue.getter();
  return v1;
}

uint64_t sub_10003DB08(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Splunkloggingd(0);
  sub_100001FDC(&qword_100057FE0, &qword_100047B20);
  return Option.wrappedValue.setter();
}

uint64_t (*sub_10003DB60(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for Splunkloggingd(0);
  sub_100001FDC(&qword_100057FE0, &qword_100047B20);
  *(v3 + 32) = Option.wrappedValue.modify();
  return sub_100041B10;
}

void sub_10003DBFC(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t sub_10003DC48()
{
  v0 = type metadata accessor for SingleValueParsingStrategy();
  __chkstk_darwin(v0 - 8);
  v1 = sub_100001FDC(&qword_100057FC8, &qword_100047B08);
  __chkstk_darwin(v1 - 8);
  v3 = &v11 - v2;
  v4 = sub_100001FDC(&qword_100057FD0, &qword_100047B10);
  __chkstk_darwin(v4 - 8);
  v6 = &v11 - v5;
  v7 = type metadata accessor for NameSpecification();
  __chkstk_darwin(v7 - 8);
  static NameSpecification.shortAndLong.getter();
  ArgumentHelp.init(stringLiteral:)();
  v8 = type metadata accessor for ArgumentHelp();
  (*(*(v8 - 8) + 56))(v6, 0, 1, v8);
  v9 = type metadata accessor for CompletionKind();
  (*(*(v9 - 8) + 56))(v3, 1, 1, v9);
  static SingleValueParsingStrategy.next.getter();
  return Option.init<A>(name:parsing:help:completion:)();
}

uint64_t sub_10003DE74@<X0>(uint64_t a1@<X8>)
{
  v36 = a1;
  v1 = type metadata accessor for SingleValueParsingStrategy();
  __chkstk_darwin(v1 - 8);
  v3 = v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100001FDC(&qword_100057FC8, &qword_100047B08);
  __chkstk_darwin(v4 - 8);
  v6 = v29 - v5;
  v7 = sub_100001FDC(&qword_100057FD0, &qword_100047B10);
  __chkstk_darwin(v7 - 8);
  v9 = v29 - v8;
  v10 = type metadata accessor for NameSpecification();
  __chkstk_darwin(v10 - 8);
  v12 = v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100001FDC(&qword_100057FD8, &qword_100047B18);
  type metadata accessor for NameSpecification.Element();
  *(swift_allocObject() + 16) = xmmword_100045B60;
  static NameSpecification.Element.customShort(_:allowingJoined:)();
  static NameSpecification.Element.long.getter();
  NameSpecification.init(arrayLiteral:)();
  ArgumentHelp.init(stringLiteral:)();
  v13 = type metadata accessor for ArgumentHelp();
  v14 = *(v13 - 8);
  v15 = *(v14 + 56);
  v37 = v14 + 56;
  v31 = v13;
  v15(v9, 0, 1, v13);
  v33 = v15;
  v16 = type metadata accessor for CompletionKind();
  v17 = *(v16 - 8);
  v18 = *(v17 + 56);
  v38 = v16;
  v39 = v17 + 56;
  v18(v6, 1, 1, v16);
  static SingleValueParsingStrategy.next.getter();
  Option.init<A>(name:parsing:help:completion:)();
  v19 = type metadata accessor for Splunkloggingd(0);
  v30 = *(v19 + 20);
  v20 = v19;
  v34 = v19;
  static NameSpecification.shortAndLong.getter();
  ArgumentHelp.init(stringLiteral:)();
  v15(v9, 0, 1, v13);
  v18(v6, 1, 1, v16);
  v21 = v18;
  v35 = v18;
  static SingleValueParsingStrategy.next.getter();
  v29[1] = v3;
  Option.init<A>(name:parsing:help:completion:)();
  v30 = *(v20 + 24);
  static NameSpecification.shortAndLong.getter();
  ArgumentHelp.init(stringLiteral:)();
  v22 = v31;
  v23 = v33;
  v33(v9, 0, 1, v31);
  v24 = v38;
  v21(v6, 1, 1, v38);
  static SingleValueParsingStrategy.next.getter();
  type metadata accessor for URL();
  v29[0] = v12;
  Option.init<A>(name:parsing:help:completion:transform:)();
  v25 = v34;
  v30 = *(v34 + 28);
  static NameSpecification.shortAndLong.getter();
  ArgumentHelp.init(stringLiteral:)();
  v23(v9, 0, 1, v22);
  v26 = v35;
  v35(v6, 1, 1, v24);
  static SingleValueParsingStrategy.next.getter();
  Option.init<A>(name:parsing:help:completion:)();
  v30 = *(v25 + 32);
  static NameSpecification.shortAndLong.getter();
  ArgumentHelp.init(stringLiteral:)();
  v27 = v33;
  v33(v9, 0, 1, v22);
  v32 = v6;
  v26(v6, 1, 1, v38);
  static SingleValueParsingStrategy.next.getter();
  Option.init<A>(name:parsing:help:completion:)();
  sub_10003D3D4(0xD000000000000038, 0x8000000100044970);
  static NameSpecification.shortAndLong.getter();
  ArgumentHelp.init(stringLiteral:)();
  v27(v9, 0, 1, v22);
  Flag<A>.init(wrappedValue:name:help:)();
  static NameSpecification.shortAndLong.getter();
  ArgumentHelp.init(stringLiteral:)();
  v27(v9, 0, 1, v22);
  v35(v32, 1, 1, v38);
  static SingleValueParsingStrategy.next.getter();
  return Option.init<A>(name:parsing:help:completion:)();
}

uint64_t sub_10003E5B0()
{
  v1[14] = v0;
  v1[15] = type metadata accessor for Configuration(0);
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v2 = type metadata accessor for URL.DirectoryHint();
  v1[18] = v2;
  v1[19] = *(v2 - 8);
  v1[20] = swift_task_alloc();
  sub_100001FDC(&unk_100056B40, &unk_100045890);
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v3 = type metadata accessor for URL();
  v1[26] = v3;
  v1[27] = *(v3 - 8);
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();

  return _swift_task_switch(sub_10003E788, 0, 0);
}

uint64_t sub_10003E788()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 216);
  v3 = *(v0 + 200);
  v40 = *(v0 + 192);
  v4 = *(v0 + 152);
  v5 = *(v0 + 160);
  type metadata accessor for Splunkloggingd(0);
  sub_100001FDC(&qword_100057FF8, &qword_100047B38);
  Option.wrappedValue.getter();
  v6 = *(v2 + 56);
  v6(v3, 1, 1, v1);
  v38 = enum case for URL.DirectoryHint.inferFromPath(_:);
  v39 = *(v4 + 104);
  v39(v5);
  v41 = v6;
  URL.init(filePath:directoryHint:relativeTo:)();
  v6(v40, 1, 1, v1);
  sub_100001FDC(&qword_100057FE0, &qword_100047B20);
  Option.wrappedValue.getter();
  if (*(v0 + 40))
  {
    v8 = *(v0 + 200);
    v7 = *(v0 + 208);
    v9 = *(v0 + 192);
    v10 = *(v0 + 160);
    v11 = *(v0 + 144);
    v41(*(v0 + 184), 1, 1, v7);
    (v39)(v10, v38, v11);
    URL.init(filePath:directoryHint:relativeTo:)();
    sub_10003BD4C(v9);
    v41(v8, 0, 1, v7);
    sub_10002FA74(v8, v9);
  }

  sub_10001DA94(*(v0 + 136));
  sub_100001FDC(&qword_100057FC0, &qword_100047B00);
  Option.wrappedValue.getter();
  if ((*(v0 + 72) & 1) == 0)
  {
    *(*(v0 + 136) + *(*(v0 + 120) + 40)) = *(v0 + 64);
  }

  Option.wrappedValue.getter();
  v12 = *(v0 + 56);
  if (v12)
  {
    v13 = *(v0 + 48);
    v14 = (*(v0 + 136) + *(*(v0 + 120) + 24));

    *v14 = v13;
    v14[1] = v12;
  }

  v15 = *(v0 + 208);
  v16 = *(v0 + 216);
  v17 = *(v0 + 176);
  sub_100001FDC(&qword_100057FE8, &qword_100047B28);
  Option.wrappedValue.getter();
  if ((*(v16 + 48))(v17, 1, v15) == 1)
  {
    sub_10003BD4C(*(v0 + 176));
  }

  else
  {
    v18 = *(v0 + 232);
    v19 = *(v0 + 208);
    v20 = *(v0 + 136);
    v21 = *(v0 + 120);
    v22 = *(*(v0 + 216) + 32);
    v22(v18, *(v0 + 176), v19);
    v23 = *(v21 + 20);
    sub_10003BD4C(v20 + v23);
    v22(v20 + v23, v18, v19);
    v41(v20 + v23, 0, 1, v19);
  }

  Option.wrappedValue.getter();
  if ((*(v0 + 88) & 1) == 0)
  {
    *(*(v0 + 136) + *(*(v0 + 120) + 36)) = *(v0 + 80);
  }

  sub_100001FDC(&qword_100057FF0, &qword_100047B30);
  Option.wrappedValue.getter();
  if ((*(v0 + 104) & 1) == 0)
  {
    *(*(v0 + 136) + *(*(v0 + 120) + 32)) = *(v0 + 96);
  }

  v24 = *(v0 + 240);
  v26 = *(v0 + 216);
  v25 = *(v0 + 224);
  v27 = *(v0 + 208);
  v28 = *(v0 + 192);
  v29 = *(v0 + 168);
  v31 = *(v0 + 128);
  v30 = *(v0 + 136);
  type metadata accessor for Daemon(0);
  sub_1000409F4(v30, v31, type metadata accessor for Configuration);
  sub_100001FDC(&qword_100058000, &qword_100047B40);
  Flag.wrappedValue.getter();
  v32 = *(v0 + 73);
  (*(v26 + 16))(v25, v24, v27);
  sub_10003C93C(v28, v29);
  v33 = swift_task_alloc();
  *(v0 + 248) = v33;
  *v33 = v0;
  v33[1] = sub_10003EC7C;
  v34 = *(v0 + 224);
  v35 = *(v0 + 168);
  v36 = *(v0 + 128);

  return sub_100036FD0(v36, v32, v34, v35);
}

uint64_t sub_10003EC7C(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  v4[32] = a1;
  v4[33] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_10003F0E4, 0, 0);
  }

  else
  {
    v8 = (*(*a1 + 336) + **(*a1 + 336));
    v6 = swift_task_alloc();
    v4[34] = v6;
    *v6 = v5;
    v6[1] = sub_10003EE94;

    return v8();
  }
}

uint64_t sub_10003EE94()
{
  *(*v1 + 280) = v0;

  if (v0)
  {
    v2 = sub_10003F220;
  }

  else
  {
    v2 = sub_10003EFA8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10003EFA8()
{
  v1 = v0[30];
  v2 = v0[27];
  v3 = v0[26];
  v4 = v0[24];
  v5 = v0[17];

  sub_10003BD4C(v4);
  (*(v2 + 8))(v1, v3);
  sub_100040994(v5, type metadata accessor for Configuration);

  v6 = v0[1];

  return v6();
}

uint64_t sub_10003F0E4()
{
  v1 = v0[30];
  v2 = v0[27];
  v3 = v0[26];
  v4 = v0[17];
  sub_10003BD4C(v0[24]);
  (*(v2 + 8))(v1, v3);
  sub_100040994(v4, type metadata accessor for Configuration);

  v5 = v0[1];

  return v5();
}

uint64_t sub_10003F220()
{

  v1 = v0[30];
  v2 = v0[27];
  v3 = v0[26];
  v4 = v0[17];
  sub_10003BD4C(v0[24]);
  (*(v2 + 8))(v1, v3);
  sub_100040994(v4, type metadata accessor for Configuration);

  v5 = v0[1];

  return v5();
}

uint64_t sub_10003F364()
{
  v0[2] = type metadata accessor for MainActor();
  v0[3] = static MainActor.shared.getter();
  v1 = type metadata accessor for Splunkloggingd(0);
  v2 = swift_task_alloc();
  v0[4] = v2;
  v3 = sub_100040E94(&qword_100058008, &unk_100047B70);
  *v2 = v0;
  v2[1] = sub_10003F444;

  return static AsyncParsableCommand.main()(v1, v3);
}

uint64_t sub_10003F444()
{

  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10003F580, v1, v0);
}

uint64_t sub_10003F580()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10003F5E0()
{
  v1 = *v0;
  v2 = 0x6F43726566667562;
  v3 = 0x7463617265746E69;
  if (v1 != 6)
  {
    v3 = 0x6261547469647561;
  }

  v4 = 0x74756F656D6974;
  if (v1 != 4)
  {
    v4 = 0x6C506769666E6F63;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x726576726573;
  if (v1 != 2)
  {
    v5 = 0x6953726566667562;
  }

  if (*v0)
  {
    v2 = 0x7865646E69;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10003F6F4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100041864(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10003F728(uint64_t a1)
{
  v2 = sub_100040940();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10003F764(uint64_t a1)
{
  v2 = sub_100040940();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10003F7A0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v114 = a1;
  v78 = a2;
  v85 = sub_100001FDC(&qword_100058000, &qword_100047B40);
  v81 = *(v85 - 8);
  __chkstk_darwin(v85);
  v84 = &v78 - v2;
  v89 = sub_100001FDC(&qword_100057FF8, &qword_100047B38);
  v83 = *(v89 - 8);
  __chkstk_darwin(v89);
  v88 = &v78 - v3;
  v92 = sub_100001FDC(&qword_100057FF0, &qword_100047B30);
  v87 = *(v92 - 8);
  __chkstk_darwin(v92);
  v91 = &v78 - v4;
  v97 = sub_100001FDC(&qword_100057FE8, &qword_100047B28);
  v94 = *(v97 - 8);
  __chkstk_darwin(v97);
  v96 = &v78 - v5;
  v98 = sub_100001FDC(&qword_100057FE0, &qword_100047B20);
  v100 = *(v98 - 8);
  v6 = __chkstk_darwin(v98);
  v80 = &v78 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v99 = &v78 - v8;
  v9 = sub_100001FDC(&qword_100057FC0, &qword_100047B00);
  v10 = *(v9 - 8);
  v102 = v9;
  v103 = v10;
  v11 = __chkstk_darwin(v9);
  v93 = &v78 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v104 = &v78 - v13;
  v105 = sub_100001FDC(&qword_100058010, &qword_100047B58);
  v101 = *(v105 - 8);
  __chkstk_darwin(v105);
  v109 = &v78 - v14;
  v15 = type metadata accessor for SingleValueParsingStrategy();
  __chkstk_darwin(v15 - 8);
  v17 = &v78 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_100001FDC(&qword_100057FC8, &qword_100047B08);
  __chkstk_darwin(v18 - 8);
  v20 = &v78 - v19;
  v21 = sub_100001FDC(&qword_100057FD0, &qword_100047B10);
  __chkstk_darwin(v21 - 8);
  v23 = &v78 - v22;
  v24 = type metadata accessor for NameSpecification();
  __chkstk_darwin(v24 - 8);
  v26 = &v78 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = type metadata accessor for Splunkloggingd(0) - 8;
  __chkstk_darwin(v113);
  v119 = &v78 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100001FDC(&qword_100057FD8, &qword_100047B18);
  type metadata accessor for NameSpecification.Element();
  *(swift_allocObject() + 16) = xmmword_100045B60;
  static NameSpecification.Element.customShort(_:allowingJoined:)();
  static NameSpecification.Element.long.getter();
  NameSpecification.init(arrayLiteral:)();
  ArgumentHelp.init(stringLiteral:)();
  v28 = type metadata accessor for ArgumentHelp();
  v29 = *(v28 - 8);
  v30 = *(v29 + 56);
  v117 = (v29 + 56);
  v30(v23, 0, 1, v28);
  v111 = v30;
  v118 = type metadata accessor for CompletionKind();
  v31 = *(v118 - 1);
  v120 = *(v31 + 56);
  v116 = v31 + 56;
  (v120)(v20, 1, 1, v118);
  v115 = v17;
  static SingleValueParsingStrategy.next.getter();
  v110 = v26;
  Option.init<A>(name:parsing:help:completion:)();
  v32 = v113;
  v33 = *(v113 + 28);
  static NameSpecification.shortAndLong.getter();
  v34 = v23;
  ArgumentHelp.init(stringLiteral:)();
  v112 = v28;
  v30(v23, 0, 1, v28);
  v35 = v20;
  v36 = v20;
  v37 = v118;
  (v120)(v36, 1, 1, v118);
  static SingleValueParsingStrategy.next.getter();
  v95 = v33;
  Option.init<A>(name:parsing:help:completion:)();
  v108 = *(v32 + 32);
  static NameSpecification.shortAndLong.getter();
  ArgumentHelp.init(stringLiteral:)();
  v38 = v111;
  v111(v34, 0, 1, v28);
  (v120)(v35, 1, 1, v37);
  static SingleValueParsingStrategy.next.getter();
  type metadata accessor for URL();
  v39 = v34;
  Option.init<A>(name:parsing:help:completion:transform:)();
  v40 = v113;
  v41 = *(v113 + 36);
  static NameSpecification.shortAndLong.getter();
  ArgumentHelp.init(stringLiteral:)();
  v42 = v39;
  v43 = v39;
  v44 = v112;
  v38(v42, 0, 1, v112);
  (v120)(v35, 1, 1, v118);
  static SingleValueParsingStrategy.next.getter();
  v90 = v41;
  Option.init<A>(name:parsing:help:completion:)();
  v45 = v40[10];
  static NameSpecification.shortAndLong.getter();
  ArgumentHelp.init(stringLiteral:)();
  v46 = v111;
  v111(v43, 0, 1, v44);
  v106 = v35;
  (v120)(v35, 1, 1, v118);
  static SingleValueParsingStrategy.next.getter();
  v86 = v45;
  Option.init<A>(name:parsing:help:completion:)();
  v82 = v40[11];
  sub_10003D3D4(0xD000000000000038, 0x8000000100044970);
  v47 = v40[12];
  static NameSpecification.shortAndLong.getter();
  ArgumentHelp.init(stringLiteral:)();
  v48 = v112;
  v46(v43, 0, 1, v112);
  v79 = v47;
  Flag<A>.init(wrappedValue:name:help:)();
  v49 = v40[13];
  static NameSpecification.shortAndLong.getter();
  ArgumentHelp.init(stringLiteral:)();
  v50 = v114;
  v46(v43, 0, 1, v48);
  (v120)(v106, 1, 1, v118);
  static SingleValueParsingStrategy.next.getter();
  Option.init<A>(name:parsing:help:completion:)();
  sub_100010C68(v50, v50[3]);
  sub_100040940();
  v51 = v107;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v51)
  {
    sub_100006D94(v114);
    v77 = v119;
  }

  else
  {
    v120 = v49;
    v52 = v99;
    v53 = v103;
    v54 = v100;
    v128 = 0;
    sub_10003002C(&qword_100058018, &qword_100057FC0, &qword_100047B00, &protocol conformance descriptor for Option<A>);
    v55 = v102;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v56 = *(v53 + 40);
    v56(v119, v104, v55);
    v127 = 1;
    v57 = sub_10003002C(&qword_100058020, &qword_100057FE0, &qword_100047B20, &protocol conformance descriptor for Option<A>);
    v58 = v98;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v118 = v56;
    v103 = v53 + 40;
    v59 = *(v54 + 40);
    v59(v119 + v95, v52, v58);
    v126 = 2;
    sub_10003002C(&qword_100058028, &qword_100057FE8, &qword_100047B28, &protocol conformance descriptor for Option<A>);
    v60 = v96;
    v61 = v97;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v117 = v59;
    (*(v94 + 40))(v119 + v108, v60, v61);
    v125 = 3;
    v62 = v93;
    v63 = v102;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v116 = v57;
    v65 = v119;
    (v118)(v119 + v90, v62, v63);
    v124 = 4;
    sub_10003002C(&qword_100058030, &qword_100057FF0, &qword_100047B30, &protocol conformance descriptor for Option<A>);
    v66 = v91;
    v67 = v92;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v87 + 40))(&v65[v86], v66, v67);
    v123 = 5;
    sub_10003002C(&qword_100058038, &qword_100057FF8, &qword_100047B38, &protocol conformance descriptor for Option<A>);
    v68 = v88;
    v69 = v89;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v83 + 40))(&v65[v82], v68, v69);
    v122 = 6;
    sub_10003002C(&qword_100058040, &qword_100058000, &qword_100047B40, &protocol conformance descriptor for Flag<A>);
    v70 = v84;
    v71 = v85;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v81 + 40))(&v65[v79], v70, v71);
    v121 = 7;
    v72 = v80;
    v73 = v98;
    v74 = v105;
    v75 = v109;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v101 + 8))(v75, v74);
    v76 = v119;
    v117(&v120[v119], v72, v73);
    sub_1000409F4(v76, v78, type metadata accessor for Splunkloggingd);
    sub_100006D94(v114);
    v77 = v76;
  }

  return sub_100040994(v77, type metadata accessor for Splunkloggingd);
}

unint64_t sub_100040940()
{
  result = qword_10005AB68[0];
  if (!qword_10005AB68[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_10005AB68);
  }

  return result;
}

uint64_t sub_100040994(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000409F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100040A5C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000073F4;

  return sub_10003E5B0();
}

int main(int argc, const char **argv, const char **envp)
{
  swift_task_create();
  swift_task_getMainExecutor();
  swift_job_run();
  result = swift_task_asyncMainDrainQueue();
  __break(1u);
  return result;
}

uint64_t sub_100040BA4()
{
  v0[2] = type metadata accessor for MainActor();
  v0[3] = static MainActor.shared.getter();
  v1 = type metadata accessor for Splunkloggingd(0);
  v2 = swift_task_alloc();
  v0[4] = v2;
  v3 = sub_100040E94(&qword_100058008, &unk_100047B70);
  *v2 = v0;
  v2[1] = sub_100040C84;

  return static AsyncParsableCommand.main()(v1, v3);
}

uint64_t sub_100040C84()
{

  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100040DC0, v1, v0);
}

uint64_t sub_100040E94(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Splunkloggingd(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100040EEC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_100001FDC(&qword_100057FC0, &qword_100047B00);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_12:

    return v9(v10, a2, v8);
  }

  v11 = sub_100001FDC(&qword_100057FE0, &qword_100047B20);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_11:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_12;
  }

  v14 = sub_100001FDC(&qword_100057FE8, &qword_100047B28);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_11;
  }

  v15 = sub_100001FDC(&qword_100057FF0, &qword_100047B30);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[8];
    goto LABEL_11;
  }

  v16 = sub_100001FDC(&qword_100057FF8, &qword_100047B38);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[9];
    goto LABEL_11;
  }

  v18 = sub_100001FDC(&qword_100058000, &qword_100047B40);
  v19 = *(*(v18 - 8) + 48);
  v20 = a1 + a3[10];

  return v19(v20, a2, v18);
}

uint64_t sub_100041160(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_100001FDC(&qword_100057FC0, &qword_100047B00);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_12:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_100001FDC(&qword_100057FE0, &qword_100047B20);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_11:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_12;
  }

  v16 = sub_100001FDC(&qword_100057FE8, &qword_100047B28);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_11;
  }

  v17 = sub_100001FDC(&qword_100057FF0, &qword_100047B30);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[8];
    goto LABEL_11;
  }

  v18 = sub_100001FDC(&qword_100057FF8, &qword_100047B38);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[9];
    goto LABEL_11;
  }

  v20 = sub_100001FDC(&qword_100058000, &qword_100047B40);
  v21 = *(*(v20 - 8) + 56);
  v22 = a1 + a4[10];

  return v21(v22, a2, a2, v20);
}

void sub_1000413CC(uint64_t a1)
{
  sub_100041568(319, &qword_1000580B8, &qword_1000580C0, "4\v");
  if (v1 <= 0x3F)
  {
    sub_100041568(319, &qword_1000580C8, &qword_1000580D0, &qword_100047C70);
    if (v2 <= 0x3F)
    {
      sub_100041568(319, &qword_1000580D8, &unk_100056B40, &unk_100045890);
      if (v3 <= 0x3F)
      {
        sub_100041568(319, &qword_1000580E0, &qword_1000580E8, &qword_100047C78);
        if (v4 <= 0x3F)
        {
          sub_1000415BC(319, &qword_1000580F0, &type metadata for String, &type metadata accessor for Option);
          if (v5 <= 0x3F)
          {
            sub_1000415BC(319, &unk_1000580F8, &type metadata for Bool, &type metadata accessor for Flag);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_100041568(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_100002024(a3, a4);
    v5 = type metadata accessor for Option();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1000415BC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for Splunkloggingd.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for Splunkloggingd.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_100041760()
{
  result = qword_10005AE80[0];
  if (!qword_10005AE80[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_10005AE80);
  }

  return result;
}

unint64_t sub_1000417B8()
{
  result = qword_10005AF90;
  if (!qword_10005AF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005AF90);
  }

  return result;
}

unint64_t sub_100041810()
{
  result = qword_10005AF98[0];
  if (!qword_10005AF98[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_10005AF98);
  }

  return result;
}

uint64_t sub_100041864(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F43726566667562 && a2 == 0xEB00000000746E75;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7865646E69 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x726576726573 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6953726566667562 && a2 == 0xEA0000000000657ALL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x74756F656D6974 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6C506769666E6F63 && a2 == 0xEB00000000747369 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x7463617265746E69 && a2 == 0xEB00000000657669 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6261547469647561 && a2 == 0xEF7473696C50656CLL)
  {

    return 7;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

Swift::String __swiftcall URL.path(percentEncoded:)(Swift::Bool percentEncoded)
{
  v1 = URL.path(percentEncoded:)(percentEncoded);
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

uint64_t KeyedDecodingContainer.decodeIfPresent(_:forKey:)()
{
  return KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
}

{
  return KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
}

{
  return KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
}

{
  return KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
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