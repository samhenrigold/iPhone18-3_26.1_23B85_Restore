uint64_t sub_1004E54B0(uint64_t a1)
{
  v2 = sub_1004E5540();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1004E54EC(uint64_t a1)
{
  v2 = sub_1004E5540();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_1004E5540()
{
  result = qword_1016A2558;
  if (!qword_1016A2558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A2558);
  }

  return result;
}

uint64_t sub_1004E5594(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LostModeResponse(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1004E55F8(uint64_t a1)
{
  v2 = type metadata accessor for LostModeResponse(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1004E5668()
{
  result = qword_1016A2560;
  if (!qword_1016A2560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A2560);
  }

  return result;
}

unint64_t sub_1004E56C0()
{
  result = qword_1016A2568;
  if (!qword_1016A2568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A2568);
  }

  return result;
}

unint64_t sub_1004E5718()
{
  result = qword_1016A2570;
  if (!qword_1016A2570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A2570);
  }

  return result;
}

uint64_t sub_1004E576C()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177AE58);
  sub_1000076D4(v0, qword_10177AE58);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1004E57EC()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177AE70);
  sub_1000076D4(v0, qword_10177AE70);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1004E586C()
{
  type metadata accessor for ServerInteractionControllerKeeper();
  v0 = swift_allocObject();
  result = swift_defaultActor_initialize();
  *(v0 + 112) = _swiftEmptyArrayStorage;
  qword_10177AE88 = v0;
  return result;
}

uint64_t sub_1004E58B4(uint64_t a1)
{
  sub_1004E5BD8();
  swift_beginAccess();
  v2 = *(v1 + 112);
  if (v2 >> 62)
  {
LABEL_21:
    v3 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  for (i = 0; v3 != i; ++i)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
      if (__OFADD__(i, 1))
      {
LABEL_12:
        __break(1u);
        break;
      }
    }

    else
    {
      if (i >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_21;
      }

      if (__OFADD__(i, 1))
      {
        goto LABEL_12;
      }
    }

    v5 = static UUID.== infix(_:_:)();

    if (v5)
    {
    }
  }

  if (qword_101694790 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_1000076D4(v6, qword_10177AE70);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15[0] = v10;
    *v9 = 136446210;
    type metadata accessor for UUID();
    sub_1004EBDC4(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v11 = dispatch thunk of CustomStringConvertible.description.getter();
    v13 = sub_1000136BC(v11, v12, v15);

    *(v9 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v7, v8, "Add new controller %{public}s", v9, 0xCu);
    sub_100007BAC(v10);
  }

  swift_beginAccess();

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(v1 + 112) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + 112) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  return swift_endAccess();
}

void sub_1004E5BD8()
{
  v51 = type metadata accessor for UUID();
  v54 = *(v51 - 8);
  __chkstk_darwin(v51);
  v50 = &v46 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v2 = *(v0 + 112);
  v3 = (v2 & 0xFFFFFFFFFFFFFF8);
  v4 = v2 >> 62;
  if (v2 >> 62)
  {
LABEL_80:
    v5 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v5 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = 0;
  while (v5 != v6)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v6 >= v3[2])
      {
        __break(1u);
LABEL_69:
        __break(1u);
LABEL_70:
        __break(1u);
LABEL_71:
        __break(1u);
LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
LABEL_74:
        __break(1u);
LABEL_75:
        __break(1u);
LABEL_76:
        __break(1u);
LABEL_77:
        __break(1u);
LABEL_78:
        __break(1u);
LABEL_79:
        __break(1u);
        goto LABEL_80;
      }

      v7 = *(v2 + 8 * v6 + 32);
    }

    v8 = qword_1016A2660;
    [*(v7 + qword_1016A2660) lock];
    v9 = *(v7 + qword_1016A2668);
    [*(v7 + v8) unlock];
    if (v9 == 1)
    {
      if (qword_101694790 != -1)
      {
        swift_once();
      }

      v11 = type metadata accessor for Logger();
      v12 = sub_1000076D4(v11, qword_10177AE70);

      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.default.getter();

      v15 = os_log_type_enabled(v13, v14);
      v4 = &unk_10138B000;
      v16 = &unk_10177A000;
      v49 = v12;
      if (v15)
      {
        v17 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        v55 = v53;
        *v17 = 136315138;
        v18 = v54;
        v19 = v50;
        v20 = v51;
        (v54[2])(v50, v7 + qword_10177AE90, v51);
        sub_1004EBDC4(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v21 = dispatch thunk of CustomStringConvertible.description.getter();
        LODWORD(v48) = v14;
        v23 = v22;
        v24 = v18[1];
        v4 = (v18 + 1);
        v25 = v19;
        v12 = v49;
        v24(v25, v20);
        v26 = sub_1000136BC(v21, v23, &v55);

        *(v17 + 4) = v26;
        _os_log_impl(&_mh_execute_header, v13, v48, "Removing controller with %s", v17, 0xCu);
        v16 = v53;
        sub_100007BAC(v53);
      }

      v28 = v52;
      v29 = v6 + 1;
      if (!__OFADD__(v6, 1))
      {
        v47 = (v54 + 1);
        v48 = (v54 + 2);
        *&v27 = 136315138;
        v46 = v27;
        while (1)
        {
          if (v2 >> 62)
          {
            if (v29 == _CocoaArrayWrapper.endIndex.getter())
            {
              goto LABEL_60;
            }
          }

          else if (v29 == *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_60;
          }

          v3 = (v2 & 0xC000000000000001);
          if ((v2 & 0xC000000000000001) != 0)
          {
            v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if ((v29 & 0x8000000000000000) != 0)
            {
              goto LABEL_70;
            }

            if (v29 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_71;
            }

            v30 = *(v2 + 8 * v29 + 32);
          }

          v31 = qword_1016A2660;
          [*(v30 + qword_1016A2660) lock];
          v4 = *(v30 + qword_1016A2668);
          [*(v30 + v31) unlock];
          if (v4 == 1)
          {

            v32 = Logger.logObject.getter();
            v3 = static os_log_type_t.default.getter();

            if (os_log_type_enabled(v32, v3))
            {
              v4 = swift_slowAlloc();
              v54 = swift_slowAlloc();
              v55 = v54;
              *v4 = v46;
              v33 = v50;
              v34 = v51;
              (*v48)(v50, v30 + qword_10177AE90, v51);
              sub_1004EBDC4(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
              v35 = dispatch thunk of CustomStringConvertible.description.getter();
              LODWORD(v53) = v3;
              v37 = v36;
              (*v47)(v33, v34);
              v38 = sub_1000136BC(v35, v37, &v55);

              *(v4 + 4) = v38;
              _os_log_impl(&_mh_execute_header, v32, v53, "Removing controller with %s", v4, 0xCu);
              v3 = v54;
              sub_100007BAC(v54);
              v28 = v52;
            }
          }

          else
          {

            if (v6 != v29)
            {
              if (v3)
              {
                v39 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                if ((v6 & 0x8000000000000000) != 0)
                {
                  goto LABEL_77;
                }

                v40 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
                if (v6 >= v40)
                {
                  goto LABEL_78;
                }

                if (v29 >= v40)
                {
                  goto LABEL_79;
                }

                v39 = *(v2 + 32 + 8 * v6);
                v4 = *(v2 + 32 + 8 * v29);
              }

              isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
              *(v28 + 112) = v2;
              if (!isUniquelyReferenced_nonNull_bridgeObject || (v2 & 0x8000000000000000) != 0 || (v2 & 0x4000000000000000) != 0)
              {
                v2 = sub_100607310(v2);
                *(v28 + 112) = v2;
              }

              if ((v6 & 0x8000000000000000) != 0)
              {
                goto LABEL_74;
              }

              v3 = (v2 & 0xFFFFFFFFFFFFFF8);
              if (v6 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_75;
              }

              *((v2 & 0xFFFFFFFFFFFFFF8) + 8 * v6 + 0x20) = v4;

              *(v28 + 112) = v2;
              if ((v2 & 0x8000000000000000) != 0 || (v2 & 0x4000000000000000) != 0)
              {
                v2 = sub_100607310(v2);
                *(v28 + 112) = v2;
                v3 = (v2 & 0xFFFFFFFFFFFFFF8);
                if ((v29 & 0x8000000000000000) != 0)
                {
LABEL_57:
                  __break(1u);
LABEL_58:
                  v6 = _CocoaArrayWrapper.endIndex.getter();
                  goto LABEL_59;
                }
              }

              else if ((v29 & 0x8000000000000000) != 0)
              {
                goto LABEL_57;
              }

              if (v29 >= v3[2])
              {
                goto LABEL_76;
              }

              v3[v29 + 4] = v39;

              *(v28 + 112) = v2;
            }

            v10 = __OFADD__(v6++, 1);
            if (v10)
            {
              goto LABEL_73;
            }
          }

          v10 = __OFADD__(v29++, 1);
          if (v10)
          {
            goto LABEL_72;
          }
        }
      }

      __break(1u);
LABEL_85:
      v45 = _CocoaArrayWrapper.endIndex.getter();
      goto LABEL_66;
    }

    v10 = __OFADD__(v6++, 1);
    if (v10)
    {
      goto LABEL_69;
    }
  }

  if (v4)
  {
    goto LABEL_58;
  }

  v6 = v3[2];
LABEL_59:
  v28 = v52;
LABEL_60:
  if (v2 >> 62)
  {
    v42 = _CocoaArrayWrapper.endIndex.getter();
    if (v42 >= v6)
    {
LABEL_62:
      sub_100A0D800(v6, v42);
      swift_endAccess();
      if (qword_101694790 == -1)
      {
        goto LABEL_63;
      }

      goto LABEL_83;
    }
  }

  else
  {
    v42 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v42 >= v6)
    {
      goto LABEL_62;
    }
  }

  __break(1u);
LABEL_83:
  swift_once();
LABEL_63:
  v43 = type metadata accessor for Logger();
  sub_1000076D4(v43, qword_10177AE70);

  v12 = Logger.logObject.getter();
  LOBYTE(v2) = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v2))
  {
    v16 = swift_slowAlloc();
    *v16 = 134217984;
    v44 = *(v28 + 112);
    if (v44 >> 62)
    {
      goto LABEL_85;
    }

    v45 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_66:
    *(v16 + 4) = v45;

    _os_log_impl(&_mh_execute_header, v12, v2, "Active controllers count after cleanup is %ld", v16, 0xCu);

    return;
  }
}

uint64_t sub_1004E6494(uint64_t a1)
{
  result = type metadata accessor for UUID();
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

void sub_1004E6568()
{

  sub_100007BAC((v0 + qword_1016A2650));
  swift_unownedRelease();
  v1 = qword_10177AE90;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + qword_1016A2660);
}

uint64_t sub_1004E6610()
{
  sub_10039722C();

  v0 = static OS_os_log.default.getter();
  v1 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v0, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v11 = v3;
    *v2 = 136315138;
    type metadata accessor for ServerInteractionController(0);

    v4 = String.init<A>(describing:)();
    v6 = sub_1000136BC(v4, v5, &v11);

    *(v2 + 4) = v6;
    _os_log_impl(&_mh_execute_header, v0, v1, "ServerInteractionController deinit (%s", v2, 0xCu);
    sub_100007BAC(v3);
  }

  v7 = FMNServerInteractionController.deinit();

  sub_100007BAC((v7 + qword_1016A2650));
  swift_unownedRelease();
  v8 = qword_10177AE90;
  v9 = type metadata accessor for UUID();
  (*(*(v9 - 8) + 8))(v7 + v8, v9);

  return v7;
}

uint64_t sub_1004E67D8()
{
  sub_1004E6610();

  return swift_deallocClassInstance();
}

uint64_t sub_1004E682C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = *v2;
  sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v3[6] = swift_task_alloc();

  return _swift_task_switch(sub_1004E68F4, 0, 0);
}

uint64_t sub_1004E68F4()
{
  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = *(v3 + qword_1016A2660);
  [v5 lock];
  *(v3 + qword_1016A2668) = 0;
  [v5 unlock];
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v1, 1, 1, v6);
  v7 = swift_allocObject();
  swift_weakInit();
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v7;
  sub_10025EDD4(0, 0, v1, &unk_1013AB550, v8);

  v9 = swift_task_alloc();
  v0[7] = v9;
  v9[2] = v3;
  v9[3] = v4;
  v9[4] = v2;
  v10 = swift_task_alloc();
  v0[8] = v10;
  v11 = type metadata accessor for FMNServerInteractionController.FMNResponseFields();
  *v10 = v0;
  v10[1] = sub_1004E6AEC;
  v12 = v0[2];

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v12, 0, 0, 0x71657228646E6573, 0xEE00293A74736575, sub_1004EBCF8, v9, v11);
}

uint64_t sub_1004E6AEC()
{
  v2 = *v1;
  *(v2 + 72) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1004E6C34, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1004E6C34()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1004E6CA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v57 = a4;
  v53 = a1;
  v56 = sub_1000BC4D4(&unk_1016A2780, &qword_1013AB558);
  v55 = *(v56 - 8);
  v52 = *(v55 + 64);
  __chkstk_darwin(v56);
  v54 = v50 - v6;
  v7 = type metadata accessor for String.Encoding();
  __chkstk_darwin(v7 - 8);
  v9 = v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for URLComponents();
  v51 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004EAA98(a3, v65);
  v58 = a2;
  sub_10001F280(a2 + qword_1016A2650, v64);
  if (qword_101694788 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_1000076D4(v13, qword_10177AE58);
  sub_10001F280(v64, &v62);
  sub_10001F280(v65, v60);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    *v16 = 136315394;
    v50[1] = v9;
    sub_1000035D0(&v62, v63);
    dispatch thunk of FMNRequestConfigurating.urlComponents.getter();
    sub_1004EBDC4(&qword_1016A2770, &type metadata accessor for URLComponents, &protocol conformance descriptor for URLComponents);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = v18;
    (*(v51 + 8))(v12, v10);
    sub_100007BAC(&v62);
    v20 = sub_1000136BC(v17, v19, &v59);

    *(v16 + 4) = v20;
    *(v16 + 12) = 2080;
    sub_1000035D0(v60, v61);
    dispatch thunk of FMNRequestContentRepresentable.headerDictionary.getter();
    v21 = Dictionary.description.getter();
    v23 = v22;

    sub_100007BAC(v60);
    v24 = sub_1000136BC(v21, v23, &v59);

    *(v16 + 14) = v24;
    _os_log_impl(&_mh_execute_header, v14, v15, "SendRequest: %s headerDictionary - %s", v16, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_100007BAC(&v62);
    sub_100007BAC(v60);
  }

  sub_10001F280(v64, &v62);
  sub_10001F280(v65, v60);
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    *v27 = 136315394;
    sub_1000035D0(&v62, v63);
    dispatch thunk of FMNRequestConfigurating.urlComponents.getter();
    sub_1004EBDC4(&qword_1016A2770, &type metadata accessor for URLComponents, &protocol conformance descriptor for URLComponents);
    v28 = dispatch thunk of CustomStringConvertible.description.getter();
    v30 = v29;
    (*(v51 + 8))(v12, v10);
    sub_100007BAC(&v62);
    v31 = sub_1000136BC(v28, v30, &v59);

    *(v27 + 4) = v31;
    *(v27 + 12) = 2080;
    sub_1000035D0(v60, v61);
    v32 = dispatch thunk of FMNRequestContentRepresentable.body.getter();
    v34 = v33;
    static String.Encoding.utf8.getter();
    v35 = String.init(data:encoding:)();
    v37 = v36;
    sub_100016590(v32, v34);
    if (v37)
    {
      v38 = v35;
    }

    else
    {
      v38 = 0;
    }

    if (v37)
    {
      v39 = v37;
    }

    else
    {
      v39 = 0xE000000000000000;
    }

    sub_100007BAC(v60);
    v40 = sub_1000136BC(v38, v39, &v59);

    *(v27 + 14) = v40;
    _os_log_impl(&_mh_execute_header, v25, v26, "SendRequest: %s body - %s", v27, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_100007BAC(&v62);
    sub_100007BAC(v60);
  }

  v41 = swift_allocObject();
  swift_weakInit();
  v42 = v55;
  v43 = v54;
  v44 = v56;
  (*(v55 + 16))(v54, v53, v56);
  sub_10001F280(v64, &v62);
  v45 = (*(v42 + 80) + 16) & ~*(v42 + 80);
  v46 = (v52 + v45 + 7) & 0xFFFFFFFFFFFFFFF8;
  v47 = (v46 + 47) & 0xFFFFFFFFFFFFFFF8;
  v48 = swift_allocObject();
  (*(v42 + 32))(v48 + v45, v43, v44);
  sub_10000A748(&v62, v48 + v46);
  *(v48 + v47) = v41;
  *(v48 + ((v47 + 15) & 0xFFFFFFFFFFFFFFF8)) = v57;

  dispatch thunk of FMNServerInteractionController.sendRequest(endpoint:content:source:credential:responseHandler:)();

  sub_100007BAC(v64);
  sub_100007BAC(v65);
}

uint64_t sub_1004E7480(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v118 = a3;
  v7 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  __chkstk_darwin(v7 - 8);
  v117 = &v100 - v8;
  v9 = type metadata accessor for String.Encoding();
  __chkstk_darwin(v9 - 8);
  v106 = &v100 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for URLComponents();
  v113 = *(v11 - 8);
  v114 = v11;
  __chkstk_darwin(v11);
  v112 = &v100 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for FMNServerInteractionController.FMNResponseFields();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v111 = &v100 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v109 = &v100 - v18;
  v19 = __chkstk_darwin(v17);
  v107 = &v100 - v20;
  v21 = __chkstk_darwin(v19);
  v23 = &v100 - v22;
  __chkstk_darwin(v21);
  v25 = &v100 - v24;
  v26 = sub_1000BC4D4(&qword_1016A2768, &qword_1013AB4F0);
  v27 = *(v26 - 8);
  __chkstk_darwin(v26);
  v29 = (&v100 - v28);
  (*(v27 + 16))(&v100 - v28, a1, v26);
  v30 = (*(v27 + 88))(v29, v26);
  if (v30 == enum case for LegacyResult.success<A>(_:))
  {
    v103 = a2;
    (*(v27 + 96))(v29, v26);
    (*(v14 + 32))(v25, v29, v13);
    v31 = FMNServerInteractionController.FMNResponseFields.responseHeaders.getter();
    sub_1004EB658(v31);

    v32 = v14;
    if (qword_101694788 != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    v34 = sub_1000076D4(v33, qword_10177AE58);
    sub_10001F280(v118, v120);
    v115 = *(v14 + 16);
    v116 = v14 + 16;
    v115(v23, v25, v13);
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.info.getter();
    v37 = os_log_type_enabled(v35, v36);
    v110 = v32;
    v105 = v25;
    v104 = a4;
    v102 = v34;
    if (v37)
    {
      v38 = swift_slowAlloc();
      v101 = swift_slowAlloc();
      v119 = v101;
      *v38 = 136315394;
      sub_1000035D0(v120, v121);
      v39 = v112;
      dispatch thunk of FMNRequestConfigurating.urlComponents.getter();
      sub_1004EBDC4(&qword_1016A2770, &type metadata accessor for URLComponents, &protocol conformance descriptor for URLComponents);
      v40 = v114;
      v41 = dispatch thunk of CustomStringConvertible.description.getter();
      v43 = v42;
      v44 = v39;
      v25 = v105;
      (*(v113 + 8))(v44, v40);
      sub_100007BAC(v120);
      v45 = sub_1000136BC(v41, v43, &v119);
      v46 = v110;

      *(v38 + 4) = v45;
      *(v38 + 12) = 2048;
      v47 = FMNServerInteractionController.FMNResponseFields.statusCode.getter();
      v108 = *(v46 + 8);
      v108(v23, v13);
      *(v38 + 14) = v47;
      _os_log_impl(&_mh_execute_header, v35, v36, "SendRequest %s Received Response: status - %ld", v38, 0x16u);
      sub_100007BAC(v101);
    }

    else
    {
      v108 = *(v32 + 8);
      v108(v23, v13);

      sub_100007BAC(v120);
    }

    v56 = v107;
    sub_10001F280(v118, v120);
    v115(v56, v25, v13);
    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v119 = swift_slowAlloc();
      *v59 = 136315394;
      sub_1000035D0(v120, v121);
      v60 = v112;
      dispatch thunk of FMNRequestConfigurating.urlComponents.getter();
      sub_1004EBDC4(&qword_1016A2770, &type metadata accessor for URLComponents, &protocol conformance descriptor for URLComponents);
      v61 = v114;
      v62 = dispatch thunk of CustomStringConvertible.description.getter();
      v64 = v63;
      v65 = v60;
      v25 = v105;
      (*(v113 + 8))(v65, v61);
      sub_100007BAC(v120);
      v66 = sub_1000136BC(v62, v64, &v119);

      *(v59 + 4) = v66;
      *(v59 + 12) = 2080;
      FMNServerInteractionController.FMNResponseFields.responseHeaders.getter();
      v67 = Dictionary.description.getter();
      v69 = v68;

      v108(v56, v13);
      v70 = sub_1000136BC(v67, v69, &v119);

      *(v59 + 14) = v70;
      _os_log_impl(&_mh_execute_header, v57, v58, "SendRequest %s Received Response: header - %s", v59, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      v108(v56, v13);
      sub_100007BAC(v120);
    }

    v71 = v109;
    sub_10001F280(v118, v120);
    v115(v71, v25, v13);
    v72 = Logger.logObject.getter();
    v73 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      v118 = swift_slowAlloc();
      v119 = v118;
      *v74 = 136315394;
      sub_1000035D0(v120, v121);
      v75 = v112;
      dispatch thunk of FMNRequestConfigurating.urlComponents.getter();
      sub_1004EBDC4(&qword_1016A2770, &type metadata accessor for URLComponents, &protocol conformance descriptor for URLComponents);
      v76 = v114;
      v77 = dispatch thunk of CustomStringConvertible.description.getter();
      v79 = v78;
      v80 = v75;
      v25 = v105;
      (*(v113 + 8))(v80, v76);
      sub_100007BAC(v120);
      v81 = sub_1000136BC(v77, v79, &v119);

      *(v74 + 4) = v81;
      *(v74 + 12) = 2080;
      v82 = FMNServerInteractionController.FMNResponseFields.data.getter();
      v84 = v83;
      static String.Encoding.utf8.getter();
      v85 = String.init(data:encoding:)();
      v87 = v86;
      sub_100016590(v82, v84);
      if (v87)
      {
        v88 = v85;
      }

      else
      {
        v88 = 0;
      }

      if (v87)
      {
        v89 = v87;
      }

      else
      {
        v89 = 0xE000000000000000;
      }

      v90 = v71;
      v91 = v108;
      v108(v90, v13);
      v92 = sub_1000136BC(v88, v89, &v119);

      *(v74 + 14) = v92;
      _os_log_impl(&_mh_execute_header, v72, v73, "SendRequest %s Received Response: body - %s", v74, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      v93 = v71;
      v91 = v108;
      v108(v93, v13);
      sub_100007BAC(v120);
    }

    v55 = v117;
    v115(v111, v25, v13);
    sub_1000BC4D4(&unk_1016A2780, &qword_1013AB558);
    CheckedContinuation.resume(returning:)();
    v91(v25, v13);
  }

  else
  {
    if (v30 != enum case for LegacyResult.failure<A>(_:))
    {
      result = _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
      return result;
    }

    (*(v27 + 96))(v29, v26);
    v48 = *v29;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v49 = swift_allocObject();
    *(v49 + 16) = xmmword_101385D80;
    swift_getErrorValue();
    v50 = Error.localizedDescription.getter();
    v52 = v51;
    *(v49 + 56) = &type metadata for String;
    *(v49 + 64) = sub_100008C00();
    *(v49 + 32) = v50;
    *(v49 + 40) = v52;
    sub_10039722C();
    v53 = static OS_os_log.default.getter();
    v54 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("ServerInteractionController Error calling server: %@", 52, 2, &_mh_execute_header, v53, v54, v49);

    v120[0] = v48;
    sub_1000BC4D4(&unk_1016A2780, &qword_1013AB558);
    CheckedContinuation.resume(throwing:)();
    v55 = v117;
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v95 = qword_1016A2660;
    v96 = result;
    [*(result + qword_1016A2660) lock];
    *(v96 + qword_1016A2668) = 1;
    [*(v96 + v95) unlock];
    v97 = type metadata accessor for TaskPriority();
    (*(*(v97 - 8) + 56))(v55, 1, 1, v97);
    v98 = swift_allocObject();
    swift_weakInit();
    v99 = swift_allocObject();
    v99[2] = 0;
    v99[3] = 0;
    v99[4] = v98;
    sub_10025F6E0(0, 0, v55, &unk_1013AB560, v99);
  }

  return result;
}

uint64_t sub_1004E820C(uint64_t a1, void (*a2)(void *), uint64_t a3, int a4, uint64_t a5)
{
  v38 = a5;
  v39 = a2;
  v40 = a4;
  v6 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  __chkstk_darwin(v6 - 8);
  v37 = &v36 - v7;
  v8 = type metadata accessor for FMNServerInteractionController.FMNResponseFields();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000BC4D4(&qword_1016A2778, &qword_1013AB538);
  __chkstk_darwin(v12);
  v14 = (&v36 - v13);
  v15 = sub_1000BC4D4(&qword_1016A2768, &qword_1013AB4F0);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = (&v36 - v17);
  (*(v16 + 16))(&v36 - v17, a1, v15);
  v19 = (*(v16 + 88))(v18, v15);
  if (v19 == enum case for LegacyResult.success<A>(_:))
  {
    (*(v16 + 96))(v18, v15);
    (*(v9 + 32))(v11, v18, v8);
    v20 = FMNServerInteractionController.FMNResponseFields.responseHeaders.getter();
    sub_1004EB658(v20);

    (*(v9 + 16))(v14, v11, v8);
    swift_storeEnumTagMultiPayload();
    v39(v14);
    sub_10000B3A8(v14, &qword_1016A2778, &qword_1013AB538);
    result = (*(v9 + 8))(v11, v8);
    if ((v40 & 1) == 0)
    {
      return result;
    }

    goto LABEL_6;
  }

  v22 = v39;
  if (v19 != enum case for LegacyResult.failure<A>(_:))
  {
    result = _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
    return result;
  }

  (*(v16 + 96))(v18, v15);
  v23 = *v18;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_101385D80;
  swift_getErrorValue();
  v25 = Error.localizedDescription.getter();
  v27 = v26;
  *(v24 + 56) = &type metadata for String;
  *(v24 + 64) = sub_100008C00();
  *(v24 + 32) = v25;
  *(v24 + 40) = v27;
  sub_10039722C();
  v28 = static OS_os_log.default.getter();
  v29 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("ServerInteractionController Error calling server: %@", 52, 2, &_mh_execute_header, v28, v29, v24);

  *v14 = v23;
  swift_storeEnumTagMultiPayload();
  swift_errorRetain();
  v22(v14);

  result = sub_10000B3A8(v14, &qword_1016A2778, &qword_1013AB538);
  if (v40)
  {
LABEL_6:
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      v30 = qword_1016A2660;
      v31 = result;
      [*(result + qword_1016A2660) lock];
      *(v31 + qword_1016A2668) = 1;
      [*(v31 + v30) unlock];
      v32 = type metadata accessor for TaskPriority();
      v33 = v37;
      (*(*(v32 - 8) + 56))(v37, 1, 1, v32);
      v34 = swift_allocObject();
      swift_weakInit();
      v35 = swift_allocObject();
      v35[2] = 0;
      v35[3] = 0;
      v35[4] = v34;
      sub_10025F6E0(0, 0, v33, &unk_1013AB540, v35);
    }
  }

  return result;
}

uint64_t sub_1004E878C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v109 = a2;
  v7 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  __chkstk_darwin(v7 - 8);
  v9 = &v93 - v8;
  v10 = type metadata accessor for String.Encoding();
  __chkstk_darwin(v10 - 8);
  v97 = &v93 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for URLComponents();
  v106 = *(v12 - 8);
  v107 = v12;
  __chkstk_darwin(v12);
  v105 = &v93 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for FMNServerInteractionController.FMNResponseFields();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v103 = &v93 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v102 = &v93 - v19;
  v20 = __chkstk_darwin(v18);
  v22 = &v93 - v21;
  __chkstk_darwin(v20);
  v24 = &v93 - v23;
  v25 = sub_1000BC4D4(&qword_1016A2778, &qword_1013AB538);
  __chkstk_darwin(v25);
  v27 = &v93 - v26;
  sub_1004EBBD4(a1, &v93 - v26);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_101385D80;
    swift_getErrorValue();
    v29 = Error.localizedDescription.getter();
    v31 = v30;
    *(v28 + 56) = &type metadata for String;
    *(v28 + 64) = sub_100008C00();
    *(v28 + 32) = v29;
    *(v28 + 40) = v31;
    sub_10039722C();
    v32 = static OS_os_log.default.getter();
    v33 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("ServerInteractionController Error calling server: %@", 52, 2, &_mh_execute_header, v32, v33, v28);

    Future.finish(error:)();
  }

  else
  {
    (*(v15 + 32))(v24, v27, v14);
    if (qword_101694788 != -1)
    {
      swift_once();
    }

    v34 = type metadata accessor for Logger();
    v35 = sub_1000076D4(v34, qword_10177AE58);
    v95 = a3;
    sub_10001F280(a3, v111);
    v99 = *(v15 + 16);
    v100 = v15 + 16;
    v99(v22, v24, v14);
    v36 = v15;
    v101 = v35;
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.info.getter();
    v39 = os_log_type_enabled(v37, v38);
    v98 = v24;
    v96 = v14;
    v94 = v9;
    v93 = a4;
    v104 = v36;
    if (v39)
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v110 = v41;
      *v40 = 136315394;
      sub_1000035D0(v111, v112);
      v42 = v105;
      dispatch thunk of FMNRequestConfigurating.urlComponents.getter();
      sub_1004EBDC4(&qword_1016A2770, &type metadata accessor for URLComponents, &protocol conformance descriptor for URLComponents);
      v43 = v107;
      v44 = dispatch thunk of CustomStringConvertible.description.getter();
      v46 = v45;
      v47 = v42;
      v14 = v96;
      (*(v106 + 8))(v47, v43);
      sub_100007BAC(v111);
      v48 = sub_1000136BC(v44, v46, &v110);
      v24 = v98;

      *(v40 + 4) = v48;
      *(v40 + 12) = 2048;
      v49 = FMNServerInteractionController.FMNResponseFields.statusCode.getter();
      v108 = *(v36 + 8);
      v108(v22, v14);
      *(v40 + 14) = v49;
      _os_log_impl(&_mh_execute_header, v37, v38, "SendRequest %s Received Response: status - %ld", v40, 0x16u);
      sub_100007BAC(v41);
    }

    else
    {
      v108 = *(v36 + 8);
      v108(v22, v14);

      sub_100007BAC(v111);
    }

    v50 = v95;
    sub_10001F280(v95, v111);
    v51 = v102;
    v99(v102, v24, v14);
    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v110 = swift_slowAlloc();
      *v54 = 136315394;
      sub_1000035D0(v111, v112);
      v55 = v105;
      dispatch thunk of FMNRequestConfigurating.urlComponents.getter();
      sub_1004EBDC4(&qword_1016A2770, &type metadata accessor for URLComponents, &protocol conformance descriptor for URLComponents);
      v56 = v107;
      v57 = dispatch thunk of CustomStringConvertible.description.getter();
      v59 = v58;
      v60 = v55;
      v14 = v96;
      (*(v106 + 8))(v60, v56);
      sub_100007BAC(v111);
      v61 = sub_1000136BC(v57, v59, &v110);

      *(v54 + 4) = v61;
      *(v54 + 12) = 2080;
      FMNServerInteractionController.FMNResponseFields.responseHeaders.getter();
      v62 = Dictionary.description.getter();
      v64 = v63;

      v108(v51, v14);
      v65 = v62;
      v24 = v98;
      v66 = sub_1000136BC(v65, v64, &v110);

      *(v54 + 14) = v66;
      v50 = v95;
      _os_log_impl(&_mh_execute_header, v52, v53, "SendRequest %s Received Response: header - %s", v54, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      v108(v51, v14);
      sub_100007BAC(v111);
    }

    v67 = v103;
    sub_10001F280(v50, v111);
    v99(v67, v24, v14);
    v68 = Logger.logObject.getter();
    v69 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      v110 = swift_slowAlloc();
      *v70 = 136315394;
      sub_1000035D0(v111, v112);
      v71 = v105;
      dispatch thunk of FMNRequestConfigurating.urlComponents.getter();
      sub_1004EBDC4(&qword_1016A2770, &type metadata accessor for URLComponents, &protocol conformance descriptor for URLComponents);
      v72 = v107;
      v73 = dispatch thunk of CustomStringConvertible.description.getter();
      v75 = v74;
      v76 = v71;
      v14 = v96;
      (*(v106 + 8))(v76, v72);
      sub_100007BAC(v111);
      v77 = sub_1000136BC(v73, v75, &v110);

      *(v70 + 4) = v77;
      *(v70 + 12) = 2080;
      v78 = FMNServerInteractionController.FMNResponseFields.data.getter();
      v80 = v79;
      static String.Encoding.utf8.getter();
      v81 = String.init(data:encoding:)();
      v83 = v82;
      sub_100016590(v78, v80);
      if (v83)
      {
        v84 = v81;
      }

      else
      {
        v84 = 0;
      }

      if (v83)
      {
        v85 = v83;
      }

      else
      {
        v85 = 0xE000000000000000;
      }

      v108(v67, v14);
      v86 = sub_1000136BC(v84, v85, &v110);
      v24 = v98;

      *(v70 + 14) = v86;
      _os_log_impl(&_mh_execute_header, v68, v69, "SendRequest %s Received Response: body - %s", v70, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      v108(v67, v14);
      sub_100007BAC(v111);
    }

    Future.finish(result:)();
    v108(v24, v14);
    v9 = v94;
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v88 = qword_1016A2660;
    v89 = result;
    [*(result + qword_1016A2660) lock];
    *(v89 + qword_1016A2668) = 1;
    [*(v89 + v88) unlock];
    v90 = type metadata accessor for TaskPriority();
    (*(*(v90 - 8) + 56))(v9, 1, 1, v90);
    v91 = swift_allocObject();
    swift_weakInit();
    v92 = swift_allocObject();
    v92[2] = 0;
    v92[3] = 0;
    v92[4] = v91;
    sub_10025F6E0(0, 0, v9, &unk_1013AB548, v92);
  }

  return result;
}

void sub_1004E93E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v56 = a6;
  v57 = a4;
  v58 = a5;
  v59 = a2;
  v7 = type metadata accessor for FMNServerInteractionController.FMNResponseFields();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  __chkstk_darwin(v11 - 8);
  v13 = &v55 - v12;
  v14 = sub_1000BC4D4(&qword_1016A2760, &qword_1013AB4E8);
  __chkstk_darwin(v14 - 8);
  v16 = &v55 - v15;
  v17 = sub_1000BC4D4(&qword_1016A2768, &qword_1013AB4F0);
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v55 - v19;
  (*(v18 + 16))(&v55 - v19, a1, v17);
  v21 = (*(v18 + 88))(v20, v17);
  if (v21 != enum case for LegacyResult.success<A>(_:))
  {
    if (v21 != enum case for LegacyResult.failure<A>(_:))
    {
      _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
      return;
    }

    (*(v18 + 96))(v20, v17);
    v29 = _convertErrorToNSError(_:)();
    v30 = [v29 domain];
    v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v33 = v32;

    if (v31 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v33 == v34)
    {
    }

    else
    {
      v36 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v36 & 1) == 0)
      {
LABEL_19:

        Future.finish(error:)();
        swift_beginAccess();
        Strong = swift_weakLoadStrong();
        if (!Strong)
        {

          return;
        }

        v50 = qword_1016A2660;
        v51 = Strong;
        [*(Strong + qword_1016A2660) lock];
        *(v51 + qword_1016A2668) = 1;
        [*(v51 + v50) unlock];
        v52 = type metadata accessor for TaskPriority();
        (*(*(v52 - 8) + 56))(v13, 1, 1, v52);
        v53 = swift_allocObject();
        swift_weakInit();
        v54 = swift_allocObject();
        v54[2] = 0;
        v54[3] = 0;
        v54[4] = v53;
        sub_10025F6E0(0, 0, v13, &unk_1013AB508, v54);

        goto LABEL_21;
      }
    }

    if ([v29 code] == -1001)
    {
      v43 = static os_log_type_t.error.getter();
      sub_10039722C();
      v44 = static OS_os_log.default.getter();
      os_log(_:dso:log:_:_:)(v43, &_mh_execute_header, v44, "ServerInteractionController: Timed Out Error, retrying.", 55, 2, _swiftEmptyArrayStorage);

      swift_beginAccess();
      if (!swift_weakLoadStrong())
      {

        return;
      }

      v45 = type metadata accessor for FMNRedirectHostStore();
      (*(*(v45 - 8) + 56))(v16, 1, 1, v45);
      v46 = swift_allocObject();
      swift_beginAccess();
      swift_weakLoadStrong();
      swift_weakInit();

      sub_10001F280(v57, v60);
      v47 = swift_allocObject();
      v47[2] = v59;
      sub_10000A748(v60, (v47 + 3));
      v48 = v56;
      v47[8] = v46;
      v47[9] = v48;

      dispatch thunk of FMNServerInteractionController.retryRequest(consolidatedContent:redirectedHostStore:responseHandler:retryCount:)();

      sub_10000B3A8(v16, &qword_1016A2760, &qword_1013AB4E8);
      goto LABEL_21;
    }

    goto LABEL_19;
  }

  (*(v18 + 96))(v20, v17);
  (*(v8 + 32))(v10, v20, v7);
  if ((FMNServerInteractionController.FMNResponseFields.statusCode.getter() - 600) < 0xFFFFFFFFFFFFFF9CLL)
  {
    v22 = FMNServerInteractionController.FMNResponseFields.responseHeaders.getter();
    sub_1004EB658(v22);

    Future.finish(result:)();
    swift_beginAccess();
    v23 = swift_weakLoadStrong();
    if (v23)
    {
      v24 = qword_1016A2660;
      v25 = v23;
      [*(v23 + qword_1016A2660) lock];
      *(v25 + qword_1016A2668) = 1;
      [*(v25 + v24) unlock];
      v26 = type metadata accessor for TaskPriority();
      (*(*(v26 - 8) + 56))(v13, 1, 1, v26);
      v27 = swift_allocObject();
      swift_weakInit();
      v28 = swift_allocObject();
      v28[2] = 0;
      v28[3] = 0;
      v28[4] = v27;
      sub_10025F6E0(0, 0, v13, &unk_1013AB500, v28);
    }

    goto LABEL_14;
  }

  v37 = static os_log_type_t.error.getter();
  sub_10039722C();
  v38 = static OS_os_log.default.getter();
  os_log(_:dso:log:_:_:)(v37, &_mh_execute_header, v38, "ServerInteractionController: Server success with 500 error code, retrying.", 74, 2, _swiftEmptyArrayStorage);

  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
LABEL_14:
    (*(v8 + 8))(v10, v7);
    return;
  }

  v39 = type metadata accessor for FMNRedirectHostStore();
  (*(*(v39 - 8) + 56))(v16, 1, 1, v39);
  v40 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  sub_10001F280(v57, v60);
  v41 = swift_allocObject();
  v41[2] = v59;
  sub_10000A748(v60, (v41 + 3));
  v42 = v56;
  v41[8] = v40;
  v41[9] = v42;

  dispatch thunk of FMNServerInteractionController.retryRequest(consolidatedContent:redirectedHostStore:responseHandler:retryCount:)();

  sub_10000B3A8(v16, &qword_1016A2760, &qword_1013AB4E8);
  (*(v8 + 8))(v10, v7);
LABEL_21:
}

uint64_t sub_1004E9D7C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, const char *a6, void (*a7)(char *, uint64_t), uint64_t a8, uint64_t a9)
{
  v113 = a8;
  v109 = a7;
  v118 = a4;
  v119 = a3;
  v117 = a2;
  v11 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  __chkstk_darwin(v11 - 8);
  v112 = &v101 - v12;
  v13 = type metadata accessor for String.Encoding();
  __chkstk_darwin(v13 - 8);
  v15 = &v101 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for URLComponents();
  v115 = *(v16 - 8);
  v116 = v16;
  __chkstk_darwin(v16);
  v114 = &v101 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for FMNServerInteractionController.FMNResponseFields();
  v19 = *(v18 - 8);
  v20 = __chkstk_darwin(v18);
  v110 = &v101 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v108 = &v101 - v23;
  v24 = __chkstk_darwin(v22);
  v26 = &v101 - v25;
  __chkstk_darwin(v24);
  v28 = &v101 - v27;
  v29 = sub_1000BC4D4(&qword_1016A2768, &qword_1013AB4F0);
  v30 = *(v29 - 8);
  __chkstk_darwin(v29);
  v32 = &v101 - v31;
  (*(v30 + 16))(&v101 - v31, a1, v29);
  v33 = (*(v30 + 88))(v32, v29);
  if (v33 == enum case for LegacyResult.success<A>(_:))
  {
    (*(v30 + 96))(v32, v29);
    (*(v19 + 32))(v28, v32, v18);
    v34 = FMNServerInteractionController.FMNResponseFields.responseHeaders.getter();
    sub_1004EB658(v34);

    v35 = v19;
    if (qword_101694788 != -1)
    {
      swift_once();
    }

    v36 = type metadata accessor for Logger();
    v37 = sub_1000076D4(v36, qword_10177AE58);
    sub_10001F280(v119, v121);
    v38 = *(v19 + 16);
    v107 = v19 + 16;
    v106 = v38;
    v38(v26, v28, v18);
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.info.getter();
    v41 = os_log_type_enabled(v39, v40);
    v111 = v35;
    v105 = v28;
    v103 = v15;
    v104 = v37;
    if (v41)
    {
      v42 = swift_slowAlloc();
      v102 = swift_slowAlloc();
      v120 = v102;
      *v42 = 136315394;
      sub_1000035D0(v121, v122);
      v43 = v114;
      dispatch thunk of FMNRequestConfigurating.urlComponents.getter();
      sub_1004EBDC4(&qword_1016A2770, &type metadata accessor for URLComponents, &protocol conformance descriptor for URLComponents);
      v44 = v116;
      v45 = dispatch thunk of CustomStringConvertible.description.getter();
      v47 = v46;
      v48 = v43;
      v28 = v105;
      (*(v115 + 8))(v48, v44);
      sub_100007BAC(v121);
      v49 = sub_1000136BC(v45, v47, &v120);
      v50 = v111;

      *(v42 + 4) = v49;
      *(v42 + 12) = 2048;
      v51 = FMNServerInteractionController.FMNResponseFields.statusCode.getter();
      v109 = *(v50 + 8);
      v109(v26, v18);
      *(v42 + 14) = v51;
      _os_log_impl(&_mh_execute_header, v39, v40, "SendRequest %s Received Response: status - %ld", v42, 0x16u);
      sub_100007BAC(v102);
    }

    else
    {
      v109 = *(v35 + 8);
      v109(v26, v18);

      sub_100007BAC(v121);
    }

    v58 = v108;
    sub_10001F280(v119, v121);
    v106(v58, v28, v18);
    v59 = Logger.logObject.getter();
    v60 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      v120 = swift_slowAlloc();
      *v61 = 136315394;
      sub_1000035D0(v121, v122);
      v62 = v114;
      dispatch thunk of FMNRequestConfigurating.urlComponents.getter();
      sub_1004EBDC4(&qword_1016A2770, &type metadata accessor for URLComponents, &protocol conformance descriptor for URLComponents);
      v63 = v116;
      v64 = dispatch thunk of CustomStringConvertible.description.getter();
      v66 = v65;
      v67 = v62;
      v28 = v105;
      (*(v115 + 8))(v67, v63);
      sub_100007BAC(v121);
      v68 = sub_1000136BC(v64, v66, &v120);

      *(v61 + 4) = v68;
      *(v61 + 12) = 2080;
      FMNServerInteractionController.FMNResponseFields.responseHeaders.getter();
      v69 = Dictionary.description.getter();
      v71 = v70;

      v109(v58, v18);
      v72 = sub_1000136BC(v69, v71, &v120);

      *(v61 + 14) = v72;
      _os_log_impl(&_mh_execute_header, v59, v60, "SendRequest %s Received Response: header - %s", v61, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      v109(v58, v18);
      sub_100007BAC(v121);
    }

    v73 = v110;
    sub_10001F280(v119, v121);
    v106(v73, v28, v18);
    v74 = Logger.logObject.getter();
    v75 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      v119 = swift_slowAlloc();
      v120 = v119;
      *v76 = 136315394;
      sub_1000035D0(v121, v122);
      v77 = v114;
      dispatch thunk of FMNRequestConfigurating.urlComponents.getter();
      sub_1004EBDC4(&qword_1016A2770, &type metadata accessor for URLComponents, &protocol conformance descriptor for URLComponents);
      v78 = v116;
      v79 = dispatch thunk of CustomStringConvertible.description.getter();
      v81 = v80;
      v82 = v77;
      v28 = v105;
      (*(v115 + 8))(v82, v78);
      sub_100007BAC(v121);
      v83 = sub_1000136BC(v79, v81, &v120);

      *(v76 + 4) = v83;
      *(v76 + 12) = 2080;
      v84 = FMNServerInteractionController.FMNResponseFields.data.getter();
      v86 = v85;
      static String.Encoding.utf8.getter();
      v87 = String.init(data:encoding:)();
      v89 = v88;
      sub_100016590(v84, v86);
      if (v89)
      {
        v90 = v87;
      }

      else
      {
        v90 = 0;
      }

      if (v89)
      {
        v91 = v89;
      }

      else
      {
        v91 = 0xE000000000000000;
      }

      v92 = v109;
      v109(v73, v18);
      v93 = sub_1000136BC(v90, v91, &v120);

      *(v76 + 14) = v93;
      _os_log_impl(&_mh_execute_header, v74, v75, "SendRequest %s Received Response: body - %s", v76, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      v92 = v109;
      v109(v73, v18);
      sub_100007BAC(v121);
    }

    Future.finish(result:)();
    v92(v28, v18);
  }

  else
  {
    if (v33 != enum case for LegacyResult.failure<A>(_:))
    {
      result = _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
      return result;
    }

    (*(v30 + 96))(v32, v29);
    v52 = static os_log_type_t.error.getter();
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v53 = swift_allocObject();
    *(v53 + 16) = xmmword_101385D80;
    swift_getErrorValue();
    v54 = Error.localizedDescription.getter();
    v56 = v55;
    *(v53 + 56) = &type metadata for String;
    *(v53 + 64) = sub_100008C00();
    *(v53 + 32) = v54;
    *(v53 + 40) = v56;
    sub_10039722C();
    v57 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)(v52, &_mh_execute_header, v57, a6, v109, 2, v53);

    Future.finish(error:)();
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v95 = qword_1016A2660;
    v96 = result;
    [*(result + qword_1016A2660) lock];
    *(v96 + qword_1016A2668) = 1;
    [*(v96 + v95) unlock];
    v97 = type metadata accessor for TaskPriority();
    v98 = v112;
    (*(*(v97 - 8) + 56))(v112, 1, 1, v97);
    v99 = swift_allocObject();
    swift_weakInit();
    v100 = swift_allocObject();
    v100[2] = 0;
    v100[3] = 0;
    v100[4] = v99;
    sub_10025F6E0(0, 0, v98, a9, v100);
  }

  return result;
}

uint64_t sub_1004EAA98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  OS_dispatch_queue.sync<A>(execute:)();
  v4 = sub_101073B80(v7[0]);

  if ((v4 & 1) == 0)
  {
    return sub_10001F280(a1, a2);
  }

  sub_10001F280(a1, v7);
  sub_1000035D0(v7, v8);
  dispatch thunk of FMNRequestContentRepresentable.headerDictionary.getter();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_100FFACA0(1702195828, 0xE400000000000000, 0xD000000000000018, 0x8000000101357BD0, isUniquelyReferenced_nonNull_native);
  sub_10015049C(v7, v8);
  dispatch thunk of FMNRequestContentRepresentable.headerDictionary.setter();
  sub_10001F280(v7, a2);
  return sub_100007BAC(v7);
}

uint64_t sub_1004EAC24()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {
    v2 = *(Strong + qword_1016A2658);
    v0[7] = v2;
    swift_unownedRetainStrong();

    return _swift_task_switch(sub_1004EACF4, v2, 0);
  }

  else
  {
    v3 = v0[1];

    return v3();
  }
}

uint64_t sub_1004EACF4()
{
  sub_1004E58B4(*(v0 + 48));

  return _swift_task_switch(sub_1004D4490, 0, 0);
}

uint64_t sub_1004EAD64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a1;
  *(v4 + 48) = a4;
  return _swift_task_switch(sub_1004EAD84, 0, 0);
}

uint64_t sub_1004EAD84()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {
    v2 = *(Strong + qword_1016A2658);
    *(v0 + 64) = v2;
    swift_unownedRetainStrong();

    return _swift_task_switch(sub_1004EAE6C, v2, 0);
  }

  else
  {
    **(v0 + 40) = 1;
    v3 = *(v0 + 8);

    return v3();
  }
}

uint64_t sub_1004EAE6C()
{
  sub_1004E5BD8();

  return _swift_task_switch(sub_1004A87F4, 0, 0);
}

uint64_t sub_1004EAFE0(void *a1, uint64_t a2)
{
  v4 = String._bridgeToObjectiveC()();
  [a1 set_sourceApplicationBundleIdentifier:v4];

  type metadata accessor for SearchPartyURLSessionFactory(0);
  v5 = method lookup function for FMNURLSessionFactory();
  return v5(a1, a2);
}

uint64_t sub_1004EB090()
{
  FMNURLSessionFactory.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1004EB11C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a4 - 8);
  v9 = __chkstk_darwin(a1);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v17 - v12;
  (*(v8 + 32))(&v17 - v12);
  type metadata accessor for ServerInteractionController(0);
  v14 = swift_allocObject();
  (*(v8 + 16))(v11, v13, a4);
  v15 = sub_1004EB27C(v11, a2, v14, a4, a5);
  (*(v8 + 8))(v13, a4);
  return v15;
}

uint64_t sub_1004EB27C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1000BC4D4(&qword_1016985F0, &unk_10139D780);
  __chkstk_darwin(v9 - 8);
  v11 = v29 - v10;
  v12 = type metadata accessor for SystemInfo.DeviceLockState();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = v29 - v17;
  v30[3] = a4;
  v30[4] = a5;
  v19 = sub_1000280DC(v30);
  (*(*(a4 - 8) + 32))(v19, a1, a4);
  v20 = qword_1016A2648;
  type metadata accessor for FMNAuthenticationProvider();
  swift_allocObject();
  *(a3 + v20) = FMNAuthenticationProvider.init()();
  v21 = qword_1016A2658;
  if (qword_101694798 != -1)
  {
    swift_once();
  }

  *(a3 + v21) = qword_10177AE88;
  swift_unownedRetain();
  UUID.init()();
  v22 = qword_1016A2660;
  *(a3 + v22) = [objc_allocWithZone(NSLock) init];
  *(a3 + qword_1016A2668) = 0;
  static SystemInfo.lockState.getter();
  (*(v13 + 104))(v16, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v12);
  sub_1004EBDC4(&qword_10169F330, &type metadata accessor for SystemInfo.DeviceLockState, &protocol conformance descriptor for SystemInfo.DeviceLockState);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v23 = *(v13 + 8);
  v23(v16, v12);
  v23(v18, v12);
  if (v29[2] == v29[1])
  {
    sub_10039722C();
    v24 = static OS_os_log.default.getter();
    v25 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("ServerInteractionController preventing auto-renew credentials before first unlock.", 82, 2, &_mh_execute_header, v24, v25, _swiftEmptyArrayStorage);

    dispatch thunk of FMNAuthenticationProvider.autoRenewalLimit.setter();
  }

  sub_10001F280(v30, a3 + qword_1016A2650);
  v26 = type metadata accessor for FMNMockingPreferences();
  (*(*(v26 - 8) + 56))(v11, 1, 1, v26);

  v27 = FMNServerInteractionController.init(authenticationProvider:mockingPreferences:urlSessionFactory:)();
  sub_100007BAC(v30);
  return v27;
}

void sub_1004EB658(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    goto LABEL_67;
  }

  v2 = sub_100771D58(0xD00000000000001FLL, 0x80000001013579B0);
  if ((v3 & 1) == 0)
  {
    goto LABEL_67;
  }

  v4 = (*(a1 + 56) + 16 * v2);
  v5 = *v4;
  v6 = v4[1];
  v7 = HIBYTE(v6) & 0xF;
  v8 = *v4 & 0xFFFFFFFFFFFFLL;
  if (!((v6 & 0x2000000000000000) != 0 ? HIBYTE(v6) & 0xF : *v4 & 0xFFFFFFFFFFFFLL))
  {
    goto LABEL_67;
  }

  if ((v6 & 0x1000000000000000) != 0)
  {

    v29 = sub_1010DE4C8(v5, v6, 10);
    v31 = v30;

    if (v31)
    {
      goto LABEL_67;
    }

    v13 = v29;
LABEL_70:
    sub_100945A80(v13);
    return;
  }

  if ((v6 & 0x2000000000000000) == 0)
  {
    if ((v5 & 0x1000000000000000) != 0)
    {
      v10 = (v6 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      v10 = _StringObject.sharedUTF8.getter();
    }

    v11 = *v10;
    if (v11 == 43)
    {
      if (v8 >= 1)
      {
        v19 = v8 - 1;
        if (v8 != 1)
        {
          v13 = 0;
          if (!v10)
          {
            goto LABEL_66;
          }

          v20 = (v10 + 1);
          while (1)
          {
            v21 = *v20 - 48;
            if (v21 > 9)
            {
              break;
            }

            if (!is_mul_ok(v13, 0xAuLL))
            {
              break;
            }

            v16 = __CFADD__(10 * v13, v21);
            v13 = 10 * v13 + v21;
            if (v16)
            {
              break;
            }

            ++v20;
            if (!--v19)
            {
              goto LABEL_64;
            }
          }
        }

        goto LABEL_65;
      }

      goto LABEL_74;
    }

    if (v11 == 45)
    {
      if (v8 >= 1)
      {
        v12 = v8 - 1;
        if (v8 != 1)
        {
          v13 = 0;
          if (!v10)
          {
            goto LABEL_66;
          }

          v14 = (v10 + 1);
          while (1)
          {
            v15 = *v14 - 48;
            if (v15 > 9)
            {
              break;
            }

            if (!is_mul_ok(v13, 0xAuLL))
            {
              break;
            }

            v16 = 10 * v13 >= v15;
            v13 = 10 * v13 - v15;
            if (!v16)
            {
              break;
            }

            ++v14;
            if (!--v12)
            {
              goto LABEL_64;
            }
          }
        }

        goto LABEL_65;
      }

      __break(1u);
      goto LABEL_73;
    }

    if (v8)
    {
      v13 = 0;
      if (!v10)
      {
        goto LABEL_66;
      }

      while (1)
      {
        v24 = *v10 - 48;
        if (v24 > 9)
        {
          break;
        }

        if (!is_mul_ok(v13, 0xAuLL))
        {
          break;
        }

        v16 = __CFADD__(10 * v13, v24);
        v13 = 10 * v13 + v24;
        if (v16)
        {
          break;
        }

        ++v10;
        if (!--v8)
        {
          goto LABEL_64;
        }
      }
    }

    goto LABEL_65;
  }

  v32[0] = *v4;
  v32[1] = v6 & 0xFFFFFFFFFFFFFFLL;
  if (v5 != 43)
  {
    if (v5 == 45)
    {
      if (!v7)
      {
LABEL_73:
        __break(1u);
LABEL_74:
        __break(1u);
        goto LABEL_75;
      }

      v10 = v7 - 1;
      if (v7 != 1)
      {
        v13 = 0;
        v17 = v32 + 1;
        while (1)
        {
          v18 = *v17 - 48;
          if (v18 > 9)
          {
            break;
          }

          if (!is_mul_ok(v13, 0xAuLL))
          {
            break;
          }

          v16 = 10 * v13 >= v18;
          v13 = 10 * v13 - v18;
          if (!v16)
          {
            break;
          }

          ++v17;
          if (!--v10)
          {
            goto LABEL_66;
          }
        }
      }
    }

    else if (v7)
    {
      v13 = 0;
      v25 = v32;
      while (1)
      {
        v26 = *v25 - 48;
        if (v26 > 9)
        {
          break;
        }

        if (!is_mul_ok(v13, 0xAuLL))
        {
          break;
        }

        v16 = __CFADD__(10 * v13, v26);
        v13 = 10 * v13 + v26;
        if (v16)
        {
          break;
        }

        ++v25;
        if (!--v7)
        {
LABEL_64:
          LOBYTE(v10) = 0;
          goto LABEL_66;
        }
      }
    }

LABEL_65:
    v13 = 0;
    LOBYTE(v10) = 1;
LABEL_66:
    v33 = v10;
    if (v10)
    {
LABEL_67:
      sub_10039722C();
      v27 = static OS_os_log.default.getter();
      v28 = static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)("ServerInteractionController did not find serial-number header.", 62, 2, &_mh_execute_header, v27, v28, _swiftEmptyArrayStorage);

      return;
    }

    goto LABEL_70;
  }

  if (v7)
  {
    v10 = v7 - 1;
    if (v7 != 1)
    {
      v13 = 0;
      v22 = v32 + 1;
      while (1)
      {
        v23 = *v22 - 48;
        if (v23 > 9)
        {
          break;
        }

        if (!is_mul_ok(v13, 0xAuLL))
        {
          break;
        }

        v16 = __CFADD__(10 * v13, v23);
        v13 = 10 * v13 + v23;
        if (v16)
        {
          break;
        }

        ++v22;
        if (!--v10)
        {
          goto LABEL_66;
        }
      }
    }

    goto LABEL_65;
  }

LABEL_75:
  __break(1u);
}

uint64_t sub_1004EB9D0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100014744;

  return sub_1004EAD64(a1, v4, v5, v6);
}

uint64_t sub_1004EBA84(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100014650;

  return sub_1004EAD64(a1, v4, v5, v6);
}

uint64_t sub_1004EBB38()
{

  sub_100007BAC((v0 + 24));

  return _swift_deallocObject(v0, 80);
}

uint64_t sub_1004EBBD4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_1016A2778, &qword_1013AB538);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1004EBC44(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100014744;

  return sub_1004EAC04(a1, v4, v5, v6);
}

uint64_t sub_1004EBD04(uint64_t a1)
{
  v3 = *(sub_1000BC4D4(&unk_1016A2780, &qword_1013AB558) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + ((v5 + 47) & 0xFFFFFFFFFFFFFFF8));

  return sub_1004E7480(a1, v1 + v4, (v1 + v5), v6);
}

uint64_t sub_1004EBDC4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1004EBE10(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v49 - v8;
  v56 = type metadata accessor for UUID();
  v10 = *(v56 - 8);
  v11 = __chkstk_darwin(v56);
  v13 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v55 = &v49 - v14;
  if (CKRecord.recordType.getter() == 0xD000000000000015 && 0x80000001013AB5E0 == v15)
  {
  }

  else
  {
    v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v16 & 1) == 0)
    {
      sub_1004ED400();
      swift_allocError();
      *v39 = 0;
      goto LABEL_13;
    }
  }

  v53 = v13;
  v54 = a2;
  v17 = [a1 recordID];
  v18 = [v17 recordName];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  UUID.init(uuidString:)();

  v19 = v10;
  v20 = v10[6];
  v21 = v56;
  if (v20(v9, 1, v56) == 1)
  {
    sub_1002EA198(v9);
    sub_1004ED400();
    swift_allocError();
    *v22 = 1;
LABEL_13:
    swift_willThrow();

    return;
  }

  v51 = v19;
  v23 = v9;
  v24 = v19[4];
  v24(v55, v23, v21);
  v25 = [a1 encryptedValues];
  v26 = String._bridgeToObjectiveC()();
  v52 = v25;
  v27 = [v25 objectForKeyedSubscript:v26];

  if (v27 && (v57 = v27, sub_1000BC4D4(&unk_101698140, &unk_10138ED80), (swift_dynamicCast() & 1) != 0))
  {
    UUID.init(uuidString:)();

    v28 = v56;
    if (v20(v7, 1, v56) == 1)
    {
      sub_1002EA198(v7);
      v29 = static os_log_type_t.error.getter();
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v30 = swift_allocObject();
      *(v30 + 16) = xmmword_101385D80;
      *(v30 + 56) = sub_100008BB8(0, &qword_101698150, CKRecord_ptr);
      *(v30 + 64) = sub_10013A2D8();
      *(v30 + 32) = a1;
      sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
      v31 = a1;
      v32 = static OS_os_log.default.getter();
      os_log(_:dso:log:_:_:)(v29, &_mh_execute_header, v32, "beaconIdentifier is not a valid UUID - %@", 41, 2, v30);

      sub_1004ED400();
      swift_allocError();
      *v33 = 2;
      swift_willThrow();

      swift_unknownObjectRelease();
      v51[1](v55, v28);
    }

    else
    {
      v40 = v53;
      v24(v53, v7, v28);
      v51 = objc_autoreleasePoolPush();
      v41 = [objc_allocWithZone(NSKeyedArchiver) initRequiringSecureCoding:1];
      [a1 encodeSystemFieldsWithCoder:v41];
      [v41 finishEncoding];
      v42 = [v41 encodedData];
      v43 = v28;
      v44 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v50 = v45;

      objc_autoreleasePoolPop(v51);
      swift_unknownObjectRelease();

      v46 = v54;
      v47 = v50;
      *v54 = v44;
      v46[1] = v47;
      found = type metadata accessor for NotifyWhenFoundRecord(0);
      v24(v46 + *(found + 20), v55, v43);
      v24(v46 + *(found + 24), v40, v43);
    }
  }

  else
  {
    v34 = static os_log_type_t.error.getter();
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_101385D80;
    *(v35 + 56) = sub_100008BB8(0, &qword_101698150, CKRecord_ptr);
    *(v35 + 64) = sub_10013A2D8();
    *(v35 + 32) = a1;
    sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
    v36 = a1;
    v37 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)(v34, &_mh_execute_header, v37, "Invalid subscriptionIdentifier - %@", 35, 2, v35);

    sub_1004ED400();
    swift_allocError();
    *v38 = 3;
    swift_willThrow();

    swift_unknownObjectRelease();
    v51[1](v55, v56);
  }
}

uint64_t sub_1004EC514()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100044B3C(v2, qword_10177AEC8);
  sub_1000076D4(v0, qword_10177AEC8);
  if (qword_101694C10 != -1)
  {
    swift_once();
  }

  v5 = sub_1000076D4(v0, qword_10177BA58);
  (*(v1 + 16))(v4, v5, v0);
  URL.appendingPathComponent(_:isDirectory:)();
  return (*(v1 + 8))(v4, v0);
}

unint64_t sub_1004EC670()
{
  v1 = 0x696669746E656469;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_1004EC6D8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1004ED7AC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1004EC700(uint64_t a1)
{
  v2 = sub_1004ED454();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1004EC73C(uint64_t a1)
{
  v2 = sub_1004ED454();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_1004EC778()
{
  Hasher.init(_seed:)();
  Data.hash(into:)();
  type metadata accessor for UUID();
  sub_1004ED360(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1004EC848(uint64_t a1)
{
  Data.hash(into:)();
  type metadata accessor for UUID();
  sub_1004ED360(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int sub_1004EC8FC(uint64_t a1)
{
  Hasher.init(_seed:)();
  Data.hash(into:)();
  type metadata accessor for UUID();
  sub_1004ED360(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1004EC9C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!_s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(*a1, *(a1 + 8), *a2, *(a2 + 8)) || (static UUID.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  return static UUID.== infix(_:_:)();
}

uint64_t sub_1004ECA50(id *a1)
{
  [*a1 encryptedValues];
  swift_getObjectType();
  CKRecordKeyValueSetting.subscript.getter();
  type metadata accessor for NotifyWhenFoundRecord(0);
  v1 = UUID.uuidString.getter();
  if (!v7)
  {

LABEL_9:
    UUID.uuidString.getter();
    CKRecordKeyValueSetting.subscript.setter();
    return swift_unknownObjectRelease();
  }

  if (v6 != v1 || v7 != v2)
  {
    v4 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v4)
    {
      return swift_unknownObjectRelease();
    }

    goto LABEL_9;
  }

  swift_unknownObjectRelease();
}

uint64_t sub_1004ECBB4(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_1016A27D0, &qword_1013AB628);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - v7;
  sub_1000035D0(a1, a1[3]);
  sub_1004ED454();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9 = v3[1];
  v11 = *v3;
  v12 = v9;
  v13 = 0;
  sub_100017D5C(v11, v9);
  sub_1000E3190();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  sub_100016590(v11, v12);
  if (!v2)
  {
    type metadata accessor for NotifyWhenFoundRecord(0);
    LOBYTE(v11) = 1;
    type metadata accessor for UUID();
    sub_1004ED360(&qword_101698330, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v11) = 2;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1004ECDD4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v4 = type metadata accessor for UUID();
  v30 = *(v4 - 8);
  v31 = v4;
  v5 = __chkstk_darwin(v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v25 - v8;
  v10 = sub_1000BC4D4(&qword_1016A27C0, &qword_1013AB620);
  v11 = *(v10 - 8);
  v32 = v10;
  v33 = v11;
  __chkstk_darwin(v10);
  v13 = &v25 - v12;
  found = type metadata accessor for NotifyWhenFoundRecord(0);
  __chkstk_darwin(found);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[3];
  v34 = a1;
  sub_1000035D0(a1, v17);
  sub_1004ED454();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100007BAC(v34);
  }

  v28 = v7;
  v18 = v31;
  v36 = 0;
  sub_1000E307C();
  v19 = v32;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *v16 = v35;
  LOBYTE(v35) = 1;
  sub_1004ED360(&qword_101698300, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v20 = *(found + 20);
  v21 = *(v30 + 32);
  v26 = found;
  v27 = v16;
  v25 = v21;
  v21(&v16[v20], v9, v18);
  LOBYTE(v35) = 2;
  v22 = v28;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v33 + 8))(v13, v19);
  v23 = v27;
  v25(&v27[*(v26 + 24)], v22, v18);
  sub_1004ED4A8(v23, v29);
  sub_100007BAC(v34);
  return sub_1004ED50C(v23);
}

uint64_t sub_1004ED204()
{
  if (qword_1016947A0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for URL();
  sub_1000076D4(v0, qword_10177AEC8);
  UUID.uuidString.getter();
  URL.appendingPathComponent(_:isDirectory:)();
}

uint64_t sub_1004ED2DC(uint64_t a1)
{
  *(a1 + 8) = sub_1004ED360(&qword_1016A2790, type metadata accessor for NotifyWhenFoundRecord, &unk_1013AB598);
  result = sub_1004ED360(&qword_1016A2798, type metadata accessor for NotifyWhenFoundRecord, &unk_1013AB570);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1004ED360(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1004ED3A8(uint64_t a1)
{
  result = sub_1004ED360(&unk_1016A27A0, type metadata accessor for NotifyWhenFoundRecord, &unk_1013AB5C0);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1004ED400()
{
  result = qword_1016A27B0;
  if (!qword_1016A27B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A27B0);
  }

  return result;
}

unint64_t sub_1004ED454()
{
  result = qword_1016A27C8;
  if (!qword_1016A27C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A27C8);
  }

  return result;
}

uint64_t sub_1004ED4A8(uint64_t a1, uint64_t a2)
{
  found = type metadata accessor for NotifyWhenFoundRecord(0);
  (*(*(found - 8) + 16))(a2, a1, found);
  return a2;
}

uint64_t sub_1004ED50C(uint64_t a1)
{
  found = type metadata accessor for NotifyWhenFoundRecord(0);
  (*(*(found - 8) + 8))(a1, found);
  return a1;
}

uint64_t sub_1004ED588(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1004ED650()
{
  result = qword_1016A2878;
  if (!qword_1016A2878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A2878);
  }

  return result;
}

unint64_t sub_1004ED6A8()
{
  result = qword_1016A2880;
  if (!qword_1016A2880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A2880);
  }

  return result;
}

unint64_t sub_1004ED700()
{
  result = qword_1016A2888;
  if (!qword_1016A2888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A2888);
  }

  return result;
}

unint64_t sub_1004ED758()
{
  result = qword_1016A2890;
  if (!qword_1016A2890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A2890);
  }

  return result;
}

uint64_t sub_1004ED7AC(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x8000000101347C50 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000101347590 == a2)
  {

    return 2;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1004ED8EC(uint64_t a1)
{
  v2 = sub_1004EDACC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1004ED928(uint64_t a1)
{
  v2 = sub_1004EDACC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t SharingCircleWildAdvertisementKey.encode(to:)(void *a1, uint64_t a2, unint64_t a3)
{
  v6 = sub_1000BC4D4(&qword_1016A2898, &qword_1013AB898);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v11 - v8;
  sub_1000035D0(a1, a1[3]);
  sub_1004EDACC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = a2;
  v12 = a3;
  sub_100017D5C(a2, a3);
  sub_10049CB58();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  sub_100016590(v11, v12);
  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_1004EDACC()
{
  result = qword_1016A28A0;
  if (!qword_1016A28A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A28A0);
  }

  return result;
}

void *sub_1004EDB38@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1004EDFFC(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
  }

  return result;
}

uint64_t sub_1004EDB8C()
{
  v1 = *v0;
  v2 = 0x7865646E69;
  v3 = 0x4B65746176697270;
  v4 = 0x6553646572616873;
  if (v1 != 3)
  {
    v4 = 0x64656D7265746E69;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x654B63696C627570;
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

uint64_t sub_1004EDC40@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1004EE220(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1004EDC68(uint64_t a1)
{
  v2 = sub_1004EE170();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1004EDCA4(uint64_t a1)
{
  v2 = sub_1004EE170();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t SharingCircleWildDiversifiedKey.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_1016A28A8, &qword_1013AB8A0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11[-v7 - 8];
  sub_1000035D0(a1, a1[3]);
  sub_1004EE170();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v13) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v17 = *(v3 + 8);
    v13 = *(v3 + 8);
    v12 = 1;
    sub_10012C094(&v17, v11);
    sub_10049E410();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100016590(v13, *(&v13 + 1));
    v16 = *(v3 + 24);
    v13 = *(v3 + 24);
    v12 = 2;
    sub_10012C038(&v16, v11);
    sub_10049DF20();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100016590(v13, *(&v13 + 1));
    v15 = *(v3 + 40);
    v13 = *(v3 + 40);
    v12 = 3;
    sub_10012BFDC(&v15, v11);
    sub_100313230();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100016590(v13, *(&v13 + 1));
    v13 = *(v3 + 56);
    v14 = v13;
    v12 = 4;
    sub_1004EE1C4(&v14, v11);
    sub_10049F488();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100016590(v13, *(&v13 + 1));
  }

  return (*(v6 + 8))(v8, v5);
}

__n128 SharingCircleWildDiversifiedKey.init(from:)@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1004EE3E8(a2, v6);
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

void *sub_1004EDFFC(void *a1)
{
  v3 = sub_1000BC4D4(&qword_1016A2920, &qword_1013ABEF8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - v5;
  v7 = sub_1000035D0(a1, a1[3]);
  sub_1004EDACC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_100007BAC(a1);
  }

  else
  {
    sub_1004A4634();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v6, v3);
    v7 = v9;
    sub_100007BAC(a1);
  }

  return v7;
}

unint64_t sub_1004EE170()
{
  result = qword_1016A28B0;
  if (!qword_1016A28B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A28B0);
  }

  return result;
}

uint64_t sub_1004EE220(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7865646E69 && a2 == 0xE500000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x654B63696C627570 && a2 == 0xE900000000000079 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4B65746176697270 && a2 == 0xEA00000000007965 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6553646572616873 && a2 == 0xEC00000074657263 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x64656D7265746E69 && a2 == 0xEF79654B65746169)
  {

    return 4;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1004EE3E8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1000BC4D4(&qword_1016A2918, &qword_1013ABEF0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v20 - v7;
  sub_1000035D0(a1, a1[3]);
  sub_1004EE170();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100007BAC(a1);
  }

  LOBYTE(v34) = 0;
  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v29) = 1;
  sub_10049E3BC();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v27 = v34;
  v28 = v35;
  LOBYTE(v29) = 2;
  sub_10049DECC();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v25 = v34;
  v26 = v35;
  LOBYTE(v29) = 3;
  sub_100313070();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v10 = v35;
  v24 = v34;
  v45 = 4;
  sub_10049F434();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v6 + 8))(v8, v5);
  v23 = v43;
  v22 = v44;
  v11 = v10;
  v21 = v10;
  v12 = v27;
  *&v29 = v9;
  *(&v29 + 1) = v27;
  v13 = v28;
  v14 = v25;
  *&v30 = v28;
  *(&v30 + 1) = v25;
  v15 = v26;
  v16 = v24;
  *&v31 = v26;
  *(&v31 + 1) = v24;
  *&v32 = v11;
  *(&v32 + 1) = v43;
  v33 = v44;
  sub_1004EED74(&v29, &v34);
  sub_100007BAC(a1);
  v34 = v9;
  v35 = v12;
  v36 = v13;
  v37 = v14;
  v38 = v15;
  v39 = v16;
  v40 = v21;
  v41 = v23;
  v42 = v22;
  result = sub_1004EEDAC(&v34);
  v18 = v32;
  *(a2 + 32) = v31;
  *(a2 + 48) = v18;
  *(a2 + 64) = v33;
  v19 = v30;
  *a2 = v29;
  *(a2 + 16) = v19;
  return result;
}

unint64_t sub_1004EE80C(uint64_t a1)
{
  result = sub_1004EE834();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1004EE834()
{
  result = qword_1016A28B8;
  if (!qword_1016A28B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A28B8);
  }

  return result;
}

unint64_t sub_1004EE888(void *a1)
{
  a1[1] = sub_1004EE8C8();
  a1[2] = sub_1004EE91C();
  a1[3] = sub_1004EE970();
  result = sub_1004EE9C4();
  a1[4] = result;
  return result;
}

unint64_t sub_1004EE8C8()
{
  result = qword_1016A28C0;
  if (!qword_1016A28C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A28C0);
  }

  return result;
}

unint64_t sub_1004EE91C()
{
  result = qword_1016A28C8;
  if (!qword_1016A28C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A28C8);
  }

  return result;
}

unint64_t sub_1004EE970()
{
  result = qword_1016A28D0;
  if (!qword_1016A28D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A28D0);
  }

  return result;
}

unint64_t sub_1004EE9C4()
{
  result = qword_1016A28D8;
  if (!qword_1016A28D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A28D8);
  }

  return result;
}

unint64_t sub_1004EEA1C()
{
  result = qword_1016A28E0;
  if (!qword_1016A28E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A28E0);
  }

  return result;
}

uint64_t sub_1004EEA80(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 72))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 16) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 16) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1004EEAD4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 72) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 72) = 0;
    }

    if (a2)
    {
      *(result + 8) = 0;
      *(result + 16) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

unint64_t sub_1004EEB68()
{
  result = qword_1016A28E8;
  if (!qword_1016A28E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A28E8);
  }

  return result;
}

unint64_t sub_1004EEBC0()
{
  result = qword_1016A28F0;
  if (!qword_1016A28F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A28F0);
  }

  return result;
}

unint64_t sub_1004EEC18()
{
  result = qword_1016A28F8;
  if (!qword_1016A28F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A28F8);
  }

  return result;
}

unint64_t sub_1004EEC70()
{
  result = qword_1016A2900;
  if (!qword_1016A2900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A2900);
  }

  return result;
}

unint64_t sub_1004EECC8()
{
  result = qword_1016A2908;
  if (!qword_1016A2908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A2908);
  }

  return result;
}

unint64_t sub_1004EED20()
{
  result = qword_1016A2910;
  if (!qword_1016A2910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A2910);
  }

  return result;
}

uint64_t sub_1004EEDDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = sub_1000BC4D4(&qword_1016A2928, &unk_1013EBDE0);
  __chkstk_darwin(v6 - 8);
  v8 = &v50 - v7;
  v9 = type metadata accessor for Destination();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v50 - v14;
  v52 = a1;
  Destination.destination.getter();
  _s12searchpartyd20MessagingDestinationV20stringRepresentationACSgSS_tcfC_0();
  if (v17)
  {
    v18 = v16;
    v19 = v17;
    Destination.destination.getter();
    _s12searchpartyd20MessagingDestinationV20stringRepresentationACSgSS_tcfC_0();
    if (v20)
    {

      Destination.init(stringRepresentation:)();
      if ((*(v10 + 48))(v8, 1, v9) == 1)
      {
        sub_1004F0B70(v8);
        if (qword_101695010 != -1)
        {
          swift_once();
        }

        v21 = type metadata accessor for Logger();
        sub_1000076D4(v21, qword_10177C348);

        v22 = Logger.logObject.getter();
        v23 = static os_log_type_t.fault.getter();

        if (os_log_type_enabled(v22, v23))
        {
          v24 = swift_slowAlloc();
          v25 = swift_slowAlloc();
          v53 = v25;
          *v24 = 136315138;
          v26 = sub_1000136BC(v18, v19, &v53);

          *(v24 + 4) = v26;
          _os_log_impl(&_mh_execute_header, v22, v23, "Unable to convert %s to Destination!", v24, 0xCu);
          sub_100007BAC(v25);
        }

        else
        {
        }

        return (*(v10 + 16))(a3, v52, v9);
      }

      else
      {

        return (*(v10 + 32))(a3, v8, v9);
      }
    }

    else
    {
      v51 = a3;

      if (qword_101695010 != -1)
      {
        swift_once();
      }

      v38 = type metadata accessor for Logger();
      sub_1000076D4(v38, qword_10177C348);
      v39 = *(v10 + 16);
      v39(v13, a2, v9);
      v40 = Logger.logObject.getter();
      v41 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        v50 = v39;
        v43 = v42;
        v44 = swift_slowAlloc();
        v53 = v44;
        *v43 = 136315138;
        sub_1004F0BE0(&qword_1016A2930, &type metadata accessor for Destination, &protocol conformance descriptor for Destination);
        v45 = dispatch thunk of CustomStringConvertible.description.getter();
        v47 = v46;
        (*(v10 + 8))(v13, v9);
        v48 = sub_1000136BC(v45, v47, &v53);

        *(v43 + 4) = v48;
        _os_log_impl(&_mh_execute_header, v40, v41, "Unable to convert %s to MessageDestination!", v43, 0xCu);
        sub_100007BAC(v44);

        v39 = v50;
      }

      else
      {

        (*(v10 + 8))(v13, v9);
      }

      return (v39)(v51, v52, v9);
    }
  }

  else
  {
    v51 = a3;
    if (qword_101695010 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    sub_1000076D4(v27, qword_10177C348);
    v28 = *(v10 + 16);
    v28(v15, v52, v9);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v50 = v28;
      v32 = v31;
      v33 = swift_slowAlloc();
      v53 = v33;
      *v32 = 136315138;
      sub_1004F0BE0(&qword_1016A2930, &type metadata accessor for Destination, &protocol conformance descriptor for Destination);
      v34 = dispatch thunk of CustomStringConvertible.description.getter();
      v36 = v35;
      (*(v10 + 8))(v15, v9);
      v37 = sub_1000136BC(v34, v36, &v53);

      *(v32 + 4) = v37;
      _os_log_impl(&_mh_execute_header, v29, v30, "Unable to convert %s to MessageDestination!", v32, 0xCu);
      sub_100007BAC(v33);

      v28 = v50;
    }

    else
    {

      (*(v10 + 8))(v15, v9);
    }

    return (v28)(v51, v52, v9);
  }
}

uint64_t sub_1004EF498(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  sub_1000BC4D4(&qword_1016A2928, &unk_1013EBDE0);
  v6[8] = swift_task_alloc();
  v7 = type metadata accessor for Destination();
  v6[9] = v7;
  v6[10] = *(v7 - 8);
  v6[11] = swift_task_alloc();

  return _swift_task_switch(sub_1004EF598, 0, 0);
}

uint64_t sub_1004EF598()
{
  v1 = v0[10];
  v2 = v0[5];
  v5 = *(v2 + 56);
  v4 = v2 + 56;
  v3 = v5;
  v6 = -1;
  v7 = -1 << *(v0[5] + 32);
  if (-v7 < 64)
  {
    v6 = ~(-1 << -v7);
  }

  v8 = v6 & v3;
  v9 = (63 - v7) >> 6;
  v10 = (v1 + 48);
  v33 = v0[10];
  v34 = (v1 + 32);

  v17 = 0;
  v35 = _swiftEmptyArrayStorage;
  while (1)
  {
    v18 = v17;
    if (!v8)
    {
      break;
    }

LABEL_8:
    v20 = v0[8];
    v19 = v0[9];
    v8 &= v8 - 1;

    Destination.init(stringRepresentation:)();
    if ((*v10)(v20, 1, v19) == 1)
    {
      v11 = sub_1004F0B70(v0[8]);
    }

    else
    {
      v21 = *v34;
      (*v34)(v0[11], v0[8], v0[9]);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v35 = sub_100A5C1A8(0, *(v35 + 2) + 1, 1, v35);
      }

      v23 = *(v35 + 2);
      v22 = *(v35 + 3);
      v24 = v23 + 1;
      if (v23 >= v22 >> 1)
      {
        v27 = sub_100A5C1A8((v22 > 1), v23 + 1, 1, v35);
        v24 = v23 + 1;
        v35 = v27;
      }

      v25 = v0[11];
      v26 = v0[9];
      *(v35 + 2) = v24;
      v11 = v21(&v35[((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v23], v25, v26);
    }
  }

  while (1)
  {
    v17 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      __break(1u);
      return CorrelationIdentifierMap.init(serviceName:destinations:disambiguate:)(v11, v12, v13, v14, v15, v16);
    }

    if (v17 >= v9)
    {
      break;
    }

    v8 = *(v4 + 8 * v17);
    ++v18;
    if (v8)
    {
      goto LABEL_8;
    }
  }

  v29 = v0[6];
  v28 = v0[7];

  v30 = swift_allocObject();
  *(v30 + 16) = v29;
  *(v30 + 24) = v28;

  v31 = swift_task_alloc();
  v0[12] = v31;
  *v31 = v0;
  v31[1] = sub_1004EF878;
  v12 = v0[3];
  v13 = v0[4];
  v11 = v0[2];
  v15 = sub_1004F0BD8;
  v14 = v35;
  v16 = v30;

  return CorrelationIdentifierMap.init(serviceName:destinations:disambiguate:)(v11, v12, v13, v14, v15, v16);
}

uint64_t sub_1004EF878()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_1004EFA04;
  }

  else
  {
    v2 = sub_1004EF98C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1004EF98C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1004EFA04()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1004EFA7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(char *, uint64_t, uint64_t)@<X2>, char *a4@<X8>)
{
  v66 = a3;
  v68 = a4;
  v6 = sub_1000BC4D4(&qword_1016A2928, &unk_1013EBDE0);
  __chkstk_darwin(v6 - 8);
  v8 = &v65 - v7;
  v69 = type metadata accessor for Destination();
  v9 = *(v69 - 8);
  v10 = __chkstk_darwin(v69);
  v12 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v65 - v13;
  v67 = a1;
  Destination.destination.getter();
  v15 = _s12searchpartyd20MessagingDestinationV20stringRepresentationACSgSS_tcfC_0();
  if (!v17)
  {
    if (qword_101695010 != -1)
    {
      swift_once();
    }

    v37 = type metadata accessor for Logger();
    sub_1000076D4(v37, qword_10177C348);
    v38 = *(v9 + 16);
    v39 = v67;
    v40 = v69;
    v38(v14, v67, v69);
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v66 = v38;
      v45 = v44;
      v70 = v44;
      *v43 = 136315138;
      sub_1004F0BE0(&qword_1016A2930, &type metadata accessor for Destination, &protocol conformance descriptor for Destination);
      v46 = dispatch thunk of CustomStringConvertible.description.getter();
      v48 = v47;
      (*(v9 + 8))(v14, v69);
      v49 = sub_1000136BC(v46, v48, &v70);

      *(v43 + 4) = v49;
      v40 = v69;
      _os_log_impl(&_mh_execute_header, v41, v42, "Unable to convert %s to MessageDestination!", v43, 0xCu);
      sub_100007BAC(v45);
      v38 = v66;
    }

    else
    {

      (*(v9 + 8))(v14, v40);
    }

    v63 = v68;
    v64 = v39;
    return v38(v63, v64, v40);
  }

  v18 = v15;
  v19 = v16;
  v20 = v17;
  Destination.destination.getter();
  v21 = _s12searchpartyd20MessagingDestinationV20stringRepresentationACSgSS_tcfC_0();
  if (!v23)
  {

    if (qword_101695010 != -1)
    {
      swift_once();
    }

    v50 = type metadata accessor for Logger();
    sub_1000076D4(v50, qword_10177C348);
    v38 = *(v9 + 16);
    v40 = v69;
    v38(v12, a2, v69);
    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.fault.getter();
    v53 = os_log_type_enabled(v51, v52);
    v54 = v67;
    if (v53)
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v70 = v56;
      *v55 = 136315138;
      sub_1004F0BE0(&qword_1016A2930, &type metadata accessor for Destination, &protocol conformance descriptor for Destination);
      v66 = v38;
      v57 = v54;
      v58 = dispatch thunk of CustomStringConvertible.description.getter();
      v60 = v59;
      (*(v9 + 8))(v12, v69);
      v61 = sub_1000136BC(v58, v60, &v70);
      v54 = v57;
      v38 = v66;

      *(v55 + 4) = v61;
      v40 = v69;
      _os_log_impl(&_mh_execute_header, v51, v52, "Unable to convert %s to MessageDestination!", v55, 0xCu);
      sub_100007BAC(v56);
    }

    else
    {

      (*(v9 + 8))(v12, v40);
    }

    v63 = v68;
    v64 = v54;
    return v38(v63, v64, v40);
  }

  (v66)(v18, v19, v20, v21, v22, v23);
  v25 = v24;
  v27 = v26;

  Destination.init(stringRepresentation:)();
  v28 = v69;
  if ((*(v9 + 48))(v8, 1, v69) == 1)
  {
    sub_1004F0B70(v8);
    if (qword_101695010 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    sub_1000076D4(v29, qword_10177C348);

    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.fault.getter();

    v32 = os_log_type_enabled(v30, v31);
    v33 = v67;
    if (v32)
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v70 = v35;
      *v34 = 136315138;
      v36 = sub_1000136BC(v25, v27, &v70);

      *(v34 + 4) = v36;
      _os_log_impl(&_mh_execute_header, v30, v31, "Unable to convert %s to Destination!", v34, 0xCu);
      sub_100007BAC(v35);

      v28 = v69;
    }

    else
    {
    }

    return (*(v9 + 16))(v68, v33, v28);
  }

  else
  {

    return (*(v9 + 32))(v68, v8, v28);
  }
}

void sub_1004F019C(uint64_t a1)
{
  v2 = sub_1000BC4D4(&qword_1016A2928, &unk_1013EBDE0);
  __chkstk_darwin(v2 - 8);
  v4 = &v20 - v3;
  v5 = type metadata accessor for Destination();
  __chkstk_darwin(v5);
  v25 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = 1 << *(a1 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a1 + 56);
  v11 = (v8 + 63) >> 6;
  v12 = (v6 + 48);
  v23 = v6;
  v24 = (v6 + 32);

  v13 = 0;
  v26 = _swiftEmptyArrayStorage;
  while (1)
  {
    v14 = v13;
    if (!v10)
    {
      break;
    }

LABEL_8:
    v10 &= v10 - 1;

    Destination.init(stringRepresentation:)();
    if ((*v12)(v4, 1, v5) == 1)
    {
      sub_1004F0B70(v4);
    }

    else
    {
      v22 = *v24;
      v22(v25, v4, v5);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v26 = sub_100A5C1A8(0, *(v26 + 2) + 1, 1, v26);
      }

      v16 = *(v26 + 2);
      v15 = *(v26 + 3);
      v17 = v16 + 1;
      if (v16 >= v15 >> 1)
      {
        v21 = v16 + 1;
        v19 = sub_100A5C1A8((v15 > 1), v16 + 1, 1, v26);
        v17 = v21;
        v26 = v19;
      }

      v18 = v26;
      *(v26 + 2) = v17;
      v22(&v18[((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v16], v25, v5);
    }
  }

  while (1)
  {
    v13 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v13 >= v11)
    {

      sub_10112AC34(v26);

      CorrelationIdentifierMap.map(destinations:)();

      return;
    }

    v10 = *(a1 + 56 + 8 * v13);
    ++v14;
    if (v10)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
}

void sub_1004F04AC(uint64_t a1)
{
  v2 = type metadata accessor for Destination();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = CorrelationIdentifierMap.map(correlationIdentifiers:)();
  if (!v1)
  {
    v7 = v6;
    v44 = v5;
    v39 = 0;
    v8 = v6 + 56;
    v9 = 1 << *(v6 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v6 + 56);
    v12 = (v9 + 63) >> 6;
    v41 = (v3 + 8);
    v42 = v3 + 16;

    v40 = _swiftEmptyArrayStorage;
    v43 = v13;
    v14 = 0;
    if (v11)
    {
      while (1)
      {
        while (1)
        {
          v15 = v14;
LABEL_9:
          v16 = __clz(__rbit64(v11));
          v11 &= v11 - 1;
          v17 = v3;
          v18 = v2;
          (*(v3 + 16))(v44, *(v7 + 48) + *(v3 + 72) * (v16 | (v15 << 6)), v2);
          v19 = Destination.destination.getter();
          v21 = v20;
          v22._countAndFlagsBits = 0x3A6F746C69616DLL;
          v22._object = 0xE700000000000000;
          if (!String.hasPrefix(_:)(v22))
          {
            break;
          }

          v38 = 0;
LABEL_22:
          (*v41)(v44, v18);
LABEL_23:
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v40 = sub_100A5C1F8(0, *(v40 + 2) + 1, 1, v40);
          }

          v31 = *(v40 + 2);
          v30 = *(v40 + 3);
          v32 = v31 + 1;
          if (v31 >= v30 >> 1)
          {
            v37 = v31 + 1;
            v35 = sub_100A5C1F8((v30 > 1), v31 + 1, 1, v40);
            v32 = v37;
            v40 = v35;
          }

          v33 = v40;
          *(v40 + 2) = v32;
          v34 = &v33[24 * v31];
          v34[32] = v38;
          *(v34 + 5) = v19;
          *(v34 + 6) = v21;
          v3 = v17;
          v2 = v18;
          v7 = v43;
          v14 = v15;
          if (!v11)
          {
            goto LABEL_6;
          }
        }

        v23._countAndFlagsBits = 980182388;
        v23._object = 0xE400000000000000;
        if (String.hasPrefix(_:)(v23))
        {
          break;
        }

        v24._countAndFlagsBits = 0x3A6E656B6F74;
        v24._object = 0xE600000000000000;
        if (String.hasPrefix(_:)(v24) || (v25._countAndFlagsBits = 0x6B6F742D666C6573, v25._object = 0xEB000000003A6E65, String.hasPrefix(_:)(v25)))
        {
          v29 = 2;
LABEL_21:
          v38 = v29;
          goto LABEL_22;
        }

        v26._countAndFlagsBits = 0x3A656369766564;
        v26._object = 0xE700000000000000;
        if (String.hasPrefix(_:)(v26))
        {
          v29 = 3;
          goto LABEL_21;
        }

        v27._countAndFlagsBits = 0x3A6E6F6973736573;
        v27._object = 0xE800000000000000;
        v28 = String.hasPrefix(_:)(v27);
        (*v41)(v44, v18);
        if (v28)
        {
          v38 = 4;
          goto LABEL_23;
        }

        v14 = v15;
        v3 = v17;
        v2 = v18;
        v7 = v43;
        if (!v11)
        {
          goto LABEL_6;
        }
      }

      v29 = 1;
      goto LABEL_21;
    }

LABEL_6:
    while (1)
    {
      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v15 >= v12)
      {

        sub_101129FC8(v40);

        return;
      }

      v11 = *(v8 + 8 * v15);
      ++v14;
      if (v11)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
  }
}

void *sub_1004F0890(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_1000BC4D4(&qword_1016A2928, &unk_1013EBDE0);
  __chkstk_darwin(v6 - 8);
  v8 = &v21 - v7;
  v9 = type metadata accessor for Destination();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);

  Destination.init(stringRepresentation:)();
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1004F0B70(v8);
    v13 = type metadata accessor for GenericError();
    sub_1004F0BE0(&qword_1016978C0, &type metadata accessor for GenericError, &protocol conformance descriptor for GenericError);
    swift_allocError();
    v15 = v14;
    v21 = 0;
    v22 = 0xE000000000000000;
    _StringGuts.grow(_:)(36);

    v21 = 0xD000000000000012;
    v22 = 0x8000000101357C90;
    v16._countAndFlagsBits = a2;
    v16._object = a3;
    String.append(_:)(v16);
    v17._object = 0x8000000101357CB0;
    v17._countAndFlagsBits = 0xD000000000000010;
    String.append(_:)(v17);
    v18 = v22;
    *v15 = v21;
    v15[1] = v18;
    (*(*(v13 - 8) + 104))(v15, enum case for GenericError.error(_:), v13);
    swift_willThrow();
  }

  else
  {
    (*(v10 + 32))(v12, v8, v9);
    v19 = CorrelationIdentifierMap.correlationIdentifier(for:)();
    if (!v3)
    {
      a3 = v19;
    }

    (*(v10 + 8))(v12, v9);
  }

  return a3;
}

uint64_t sub_1004F0B70(uint64_t a1)
{
  v2 = sub_1000BC4D4(&qword_1016A2928, &unk_1013EBDE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1004F0BE0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for AirPodsUnpairEndPoint(uint64_t a1)
{
  result = qword_1016A2990;
  if (!qword_1016A2990)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for BeaconSharingSessionContext(uint64_t a1)
{
  result = qword_1016A2A38;
  if (!qword_1016A2A38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1004F0CE8(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1004F0D54@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v3 = type metadata accessor for UUID();
  v29 = *(v3 - 8);
  v4 = __chkstk_darwin(v3);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v25 - v7;
  v9 = type metadata accessor for BeaconSharingSessionContext(0);
  __chkstk_darwin(v9);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000035D0(a1, a1[3]);
  v12 = v36;
  dispatch thunk of Decoder.unkeyedContainer()();
  if (!v12)
  {
    v25 = v6;
    v26 = v8;
    v36 = a1;
    v27 = v11;
    v28 = v9;
    v13 = v30;
    sub_10015049C(v34, v35);
    v14 = dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
    if (v14 == 2)
    {
      sub_10015049C(v34, v35);
      sub_1004F1C48(&qword_101698300, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v23 = v25;
      dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
      v20 = v27;
      (*(v29 + 32))(v27, v23, v3);
      v18 = v13;
      goto LABEL_15;
    }

    v17 = v29;
    if (v14 == 1)
    {
      sub_10015049C(v34, v35);
      sub_100157E1C();
      dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
      v18 = v13;
      v21 = v32;
      v22 = v33;
      v20 = v27;
      *v27 = v31;
      *(v20 + 8) = v21;
      *(v20 + 16) = v22;
      goto LABEL_15;
    }

    if (!v14)
    {
      v18 = v13;
      sub_10015049C(v34, v35);
      sub_1004F1C48(&qword_101698300, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v19 = v26;
      dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
      v20 = v27;
      (*(v17 + 32))(v27, v19, v3);
LABEL_15:
      v24 = v36;
      swift_storeEnumTagMultiPayload();
      sub_100007BAC(v34);
      sub_1004F1BE4(v20, v18);
      v15 = v24;
      return sub_100007BAC(v15);
    }

    sub_1004F1B90();
    swift_allocError();
    swift_willThrow();
    sub_100007BAC(v34);
    a1 = v36;
  }

  v15 = a1;
  return sub_100007BAC(v15);
}

uint64_t sub_1004F1130(void *a1)
{
  v2 = v1;
  v25 = type metadata accessor for UUID();
  v4 = *(v25 - 8);
  v5 = __chkstk_darwin(v25);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v24 - v8;
  v10 = type metadata accessor for BeaconSharingSessionContext(0);
  __chkstk_darwin(v10);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of Encoder.unkeyedContainer()();
  sub_1004F1B2C(v2, v12);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v18 = v12;
    v19 = v25;
    (*(v4 + 32))(v9, v18, v25);
    sub_10015049C(v29, v30);
    v20 = v31;
    dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
    if (v20)
    {
      (*(v4 + 8))(v9, v19);
      return sub_100007BAC(v29);
    }

    sub_10015049C(v29, v30);
    sub_1004F1C48(&qword_101698330, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
    v7 = v9;
LABEL_12:
    (*(v4 + 8))(v7, v19);
    return sub_100007BAC(v29);
  }

  if (EnumCaseMultiPayload != 1)
  {
    v21 = v12;
    v19 = v25;
    (*(v4 + 32))(v7, v21, v25);
    sub_10015049C(v29, v30);
    v22 = v31;
    dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
    if (!v22)
    {
      sub_10015049C(v29, v30);
      sub_1004F1C48(&qword_101698330, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
    }

    goto LABEL_12;
  }

  v14 = *v12;
  v16 = *(v12 + 1);
  v15 = *(v12 + 2);
  sub_10015049C(v29, v30);
  v17 = v31;
  dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
  if (!v17)
  {
    v26[0] = v14;
    v27 = v16;
    v28 = v15;
    sub_10015049C(v29, v30);
    sub_100157F84();
    dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
  }

  return sub_100007BAC(v29);
}

uint64_t sub_1004F14E8(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for BeaconSharingSessionContext(0);
  __chkstk_darwin(v6);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004F1B2C(v1, v8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v10 = *v8;
      Hasher._combine(_:)(1uLL);
      Hasher._combine(_:)(v10);
      String.hash(into:)();
    }

    (*(v3 + 32))(v5, v8, v2);
    v12 = 2;
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    v12 = 0;
  }

  Hasher._combine(_:)(v12);
  sub_1004F1C48(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  return (*(v3 + 8))(v5, v2);
}

Swift::Int sub_1004F1724()
{
  Hasher.init(_seed:)();
  sub_1004F14E8(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1004F1768(uint64_t a1)
{
  Hasher.init(_seed:)();
  sub_1004F14E8(v2);
  return Hasher._finalize()();
}

uint64_t sub_1004F17F0(void *a1)
{
  a1[1] = sub_1004F1C48(&qword_1016A2A78, type metadata accessor for BeaconSharingSessionContext, &unk_1013AC00C);
  a1[2] = sub_1004F1C48(&qword_1016A2A80, type metadata accessor for BeaconSharingSessionContext, &unk_1013ABFE4);
  result = sub_1004F1C48(&qword_1016A2A88, type metadata accessor for BeaconSharingSessionContext, &unk_1013ABFA4);
  a1[3] = result;
  return result;
}

unint64_t sub_1004F189C()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for BeaconSharingSessionContext(0);
  __chkstk_darwin(v6);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004F1B2C(v1, v8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    (*(v3 + 32))(v5, v8, v2);
    v17 = 0x6E696D6F636E692ELL;
    v18 = 0xEA00000000002867;
LABEL_6:
    sub_1004F1C48(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v14._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v14);

    v15._countAndFlagsBits = 41;
    v15._object = 0xE100000000000000;
    String.append(_:)(v15);
    v13 = v17;
    (*(v3 + 8))(v5, v2);
    return v13;
  }

  if (EnumCaseMultiPayload != 1)
  {
    (*(v3 + 32))(v5, v8, v2);
    v17 = 0;
    v18 = 0xE000000000000000;
    _StringGuts.grow(_:)(24);

    v17 = 0xD000000000000015;
    v18 = 0x8000000101357CD0;
    goto LABEL_6;
  }

  v10._countAndFlagsBits = *(v8 + 1);
  v11 = *(v8 + 2);
  v17 = 0x6369766544656D2ELL;
  v18 = 0xEA00000000002865;
  v10._object = v11;
  String.append(_:)(v10);

  v12._countAndFlagsBits = 41;
  v12._object = 0xE100000000000000;
  String.append(_:)(v12);
  return v17;
}

uint64_t sub_1004F1B2C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BeaconSharingSessionContext(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1004F1B90()
{
  result = qword_1016A2A90;
  if (!qword_1016A2A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A2A90);
  }

  return result;
}

uint64_t sub_1004F1BE4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BeaconSharingSessionContext(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1004F1C48(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1004F1C90(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v37 = *(v4 - 8);
  v38 = v4;
  v5 = __chkstk_darwin(v4);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v37 - v8;
  v10 = type metadata accessor for BeaconSharingSessionContext(0);
  v11 = __chkstk_darwin(v10);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v16 = &v37 - v15;
  __chkstk_darwin(v14);
  v18 = &v37 - v17;
  v19 = sub_1000BC4D4(&qword_1016A2A98, &qword_1013AC078);
  v20 = __chkstk_darwin(v19 - 8);
  v22 = &v37 - v21;
  v23 = &v37 + *(v20 + 56) - v21;
  sub_1004F1B2C(a1, &v37 - v21);
  sub_1004F1B2C(a2, v23);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_1004F1B2C(v22, v18);
    if (swift_getEnumCaseMultiPayload())
    {
      (*(v37 + 8))(v18, v38);
      goto LABEL_17;
    }

    v34 = v37;
    v33 = v38;
    (*(v37 + 32))(v9, v23, v38);
    v31 = static UUID.== infix(_:_:)();
    v35 = *(v34 + 8);
    v35(v9, v33);
    v35(v18, v33);
LABEL_20:
    sub_1004F20F0(v22);
    return v31 & 1;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_1004F1B2C(v22, v13);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      (*(v37 + 8))(v13, v38);
      goto LABEL_17;
    }

    v30 = v37;
    v29 = v38;
    (*(v37 + 32))(v7, v23, v38);
    v31 = static UUID.== infix(_:_:)();
    v32 = *(v30 + 8);
    v32(v7, v29);
    v32(v13, v29);
    goto LABEL_20;
  }

  sub_1004F1B2C(v22, v16);
  v26 = *(v16 + 1);
  v25 = *(v16 + 2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    if (*v16 == *v23)
    {
      if (v26 == *(v23 + 1) && v25 == *(v23 + 2))
      {

LABEL_25:
        sub_1004F20F0(v22);
        v31 = 1;
        return v31 & 1;
      }

      v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v28)
      {
        goto LABEL_25;
      }
    }

    else
    {
    }

    sub_1004F20F0(v22);
    goto LABEL_18;
  }

LABEL_17:
  sub_1004F2088(v22);
LABEL_18:
  v31 = 0;
  return v31 & 1;
}

uint64_t sub_1004F2088(uint64_t a1)
{
  v2 = sub_1000BC4D4(&qword_1016A2A98, &qword_1013AC078);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1004F20F0(uint64_t a1)
{
  v2 = type metadata accessor for BeaconSharingSessionContext(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1004F2160()
{
  result = qword_1016A2AA0;
  if (!qword_1016A2AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A2AA0);
  }

  return result;
}

id sub_1004F21B4()
{
  v0 = objc_opt_self();
  v1 = [v0 standardUserDefaults];
  v2 = String._bridgeToObjectiveC()();
  [v1 BOOLForKey:v2];

  v3 = [v0 standardUserDefaults];
  v4 = String._bridgeToObjectiveC()();
  v5 = [v3 objectForKey:v4];

  if (v5)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v11[0] = v9;
  v11[1] = v10;
  if (*(&v10 + 1))
  {
    sub_100008BB8(0, &qword_1016AD650, NSNumber_ptr);
    if (swift_dynamicCast())
    {
      v6 = [v8 BOOLValue];

      return v6;
    }
  }

  else
  {
    sub_10000B3A8(v11, &unk_1016A0B10, &qword_10139BF40);
  }

  OS_dispatch_queue.sync<A>(execute:)();
  if (LOBYTE(v11[0]) == 1)
  {
    type metadata accessor for Transaction();
    static Transaction.named<A>(_:with:)();
  }

  return 0;
}

void *sub_1004F23D4()
{
  v1 = v0;
  v2 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v2);
  v3 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v3 - 8);
  v4 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v0 + 16) = _swiftEmptyArrayStorage;
  v16[1] = sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
  (*(v5 + 104))(v7, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v4);
  static DispatchQoS.unspecified.getter();
  v18 = _swiftEmptyArrayStorage;
  sub_100003DB4(&qword_10169BB60, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_1000BC4D4(&unk_101695580, &qword_101385D90);
  sub_1000041A4(&qword_10169BB70, &unk_101695580, &qword_101385D90, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  *(v0 + 24) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v8 = objc_allocWithZone(type metadata accessor for CurrentLocationMonitor());
  v9 = CurrentLocationMonitor.init(mode:desiredAccuracy:)(0, 0, 1);
  *(v1 + 32) = v9;
  v10 = &v9[OBJC_IVAR____TtC12searchpartyd22CurrentLocationMonitor_delegate];
  swift_beginAccess();
  *(v10 + 1) = &off_1016242C8;
  swift_unknownObjectWeakAssign();
  v11 = qword_101694FA8;
  v12 = v9;
  if (v11 != -1)
  {
    swift_once();
  }

  v16[2] = 0x7365547265646E75;
  v16[3] = 0xE900000000000074;
  SynchronousCache.cachedValue<A>(key:computeBlock:)();
  if ((v17 & 1) == 0)
  {

    unsafeFromAsyncTask<A>(_:)();
  }

  sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
  v13 = static OS_os_log.default.getter();
  v14 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("FMIPStateManager darwin handlers set", 36, 2, &_mh_execute_header, v13, v14, _swiftEmptyArrayStorage);

  return v1;
}

uint64_t sub_1004F27D8(uint64_t a1, uint64_t a2)
{
  v2[2] = a2;
  sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v2[3] = swift_task_alloc();
  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_1004F28A4;

  return daemon.getter();
}

uint64_t sub_1004F28A4(uint64_t a1)
{
  *(*v1 + 40) = a1;

  type metadata accessor for Daemon();
  sub_100003DB4(&qword_1016969E0, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1004F29FC, v3, v2);
}

uint64_t sub_1004F29FC()
{
  *(v0 + 48) = Daemon.darwinNotificationHandler.getter();

  return _swift_task_switch(sub_1004F2A70, 0, 0);
}

uint64_t sub_1004F2A70()
{
  v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = v2;
  v0[7] = v2;
  v4 = swift_allocObject();
  v0[8] = v4;
  swift_weakInit();
  v7 = (&async function pointer to dispatch thunk of DarwinNotificationHandler.listen(name:handler:) + async function pointer to dispatch thunk of DarwinNotificationHandler.listen(name:handler:));

  v5 = swift_task_alloc();
  v0[9] = v5;
  *v5 = v0;
  v5[1] = sub_1004F2B94;

  return v7(v1, v3, &unk_1013AC1C0, v4);
}

uint64_t sub_1004F2B94(uint64_t a1)
{
  *(*v1 + 80) = a1;

  return _swift_task_switch(sub_1004F2CD4, 0, 0);
}

uint64_t sub_1004F2CD4()
{
  v1 = v0[10];
  v2 = v0[3];
  v3 = type metadata accessor for TaskPriority();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = swift_allocObject();
  v4[2] = 0;
  v4[3] = 0;
  v4[4] = v1;

  sub_100BB9ADC(0, 0, v2, &unk_1013AC1D0, v4);

  sub_10000B3A8(v2, &qword_101698C00, &qword_10138B570);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1004F2E24()
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    type metadata accessor for Transaction();
    static Transaction.named<A>(_:with:)();
  }

  v1 = *(v0 + 8);

  return v1();
}

void sub_1004F2EFC(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  v5 = objc_opt_self();

  v6 = [v5 sharedInstance];
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1004F4B98;
  *(v7 + 24) = v4;
  v9[4] = sub_1004F4BA4;
  v9[5] = v7;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_1004F46A4;
  v9[3] = &unk_101624510;
  v8 = _Block_copy(v9);

  [v6 fmipStateWithCompletion:v8];
  _Block_release(v8);
}

void sub_1004F3058(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    v9 = objc_opt_self();
    v10 = [v9 standardUserDefaults];
    v11 = String._bridgeToObjectiveC()();
    v12 = [v10 objectForKey:v11];

    if (v12)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v20 = 0u;
      v21 = 0u;
    }

    v22[0] = v20;
    v22[1] = v21;
    if (*(&v21 + 1))
    {
      sub_100008BB8(0, &qword_1016AD650, NSNumber_ptr);
      if (swift_dynamicCast())
      {
        v13 = v19;
        if ([v19 BOOLValue] == (a1 & 1))
        {

          goto LABEL_13;
        }

LABEL_12:
        sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
        v14 = static OS_os_log.default.getter();
        v15 = static os_log_type_t.default.getter();
        os_log(_:dso:log:type:_:)("FMIPStateManager: FMIP State changed", 36, 2, &_mh_execute_header, v14, v15, _swiftEmptyArrayStorage);

        v16 = [v9 standardUserDefaults];
        v17 = String._bridgeToObjectiveC()();
        [v16 setBool:a1 & 1 forKey:v17];

        LOBYTE(v16) = sub_1004F21B4();
        v18 = swift_allocObject();
        *(v18 + 16) = v16 & 1;
        sub_1004F3C6C(sub_1004F4BAC, v18);

        goto LABEL_13;
      }
    }

    else
    {
      sub_10000B3A8(v22, &unk_1016A0B10, &qword_10139BF40);
    }

    v13 = 0;
    goto LABEL_12;
  }

  v3 = static os_log_type_t.error.getter();
  sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
  v4 = static OS_os_log.default.getter();
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_101385D80;
  *&v22[0] = a1;
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  v6 = String.init<A>(describing:)();
  v8 = v7;
  *(v5 + 56) = &type metadata for String;
  *(v5 + 64) = sub_100008C00();
  *(v5 + 32) = v6;
  *(v5 + 40) = v8;
  os_log(_:dso:log:_:_:)(v3, &_mh_execute_header, v4, "FMIPStateManager error getting fmip state: %@", 45, 2, v5);

LABEL_13:
  Transaction.capture()();
}

uint64_t sub_1004F33B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1000BC4D4(&qword_101697E00, &qword_10139A1B0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = aBlock - v7;
  sub_10001F280(a1, aBlock);
  swift_allocObject();
  swift_weakInit();
  sub_1000BC4D4(&qword_1016A2BB8, &qword_1013AC198);
  Subscription.init(subscriber:unsubscribeBlock:)();
  v9 = *(v2 + 24);
  (*(v6 + 16))(v8, a2, v5);
  v10 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = v2;
  (*(v6 + 32))(v11 + v10, v8, v5);
  v12 = swift_allocObject();
  *(v12 + 16) = sub_1004F4A88;
  *(v12 + 24) = v11;
  aBlock[4] = sub_10040B9F8;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10013FE14;
  aBlock[3] = &unk_101624498;
  v13 = _Block_copy(aBlock);

  dispatch_sync(v9, v13);
  _Block_release(v13);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1004F3654(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1004F3878(a1);
  }

  return result;
}

uint64_t sub_1004F36D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_101697E00, &qword_10139A1B0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - v6;
  (*(v5 + 16))(&v13 - v6, a2, v4);
  swift_beginAccess();
  v8 = *(a1 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a1 + 16) = v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = sub_100A5D268(0, v8[2] + 1, 1, v8);
    *(a1 + 16) = v8;
  }

  v11 = v8[2];
  v10 = v8[3];
  if (v11 >= v10 >> 1)
  {
    v8 = sub_100A5D268((v10 > 1), v11 + 1, 1, v8);
  }

  v8[2] = v11 + 1;
  (*(v5 + 32))(v8 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v11, v7, v4);
  *(a1 + 16) = v8;
  return swift_endAccess();
}

uint64_t sub_1004F3878(uint64_t a1)
{
  v3 = sub_1000BC4D4(&qword_101697E00, &qword_10139A1B0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = aBlock - v5;
  v7 = *(v1 + 24);
  (*(v4 + 16))(aBlock - v5, a1, v3);
  v8 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = v1;
  (*(v4 + 32))(v9 + v8, v6, v3);
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1004F4964;
  *(v10 + 24) = v9;
  aBlock[4] = sub_1000D2FB0;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10013FE14;
  aBlock[3] = &unk_101624420;
  v11 = _Block_copy(aBlock);

  dispatch_sync(v7, v11);
  _Block_release(v11);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1004F3AB0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 16);
  v6[2] = a2;

  *(a1 + 16) = sub_10013D7B4(sub_1004F497C, v6, v4);
}

BOOL sub_1004F3B3C(uint64_t a1, uint64_t a2)
{
  sub_1000BC4D4(&qword_101697E00, &qword_10139A1B0);
  sub_1000041A4(&qword_1016A2BB0, &qword_101697E00, &qword_10139A1B0, &protocol conformance descriptor for Subscription<A>);
  return (dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0;
}

uint64_t sub_1004F3BE0(uint64_t a1, uint64_t a2)
{
  sub_1000BC4D4(&qword_101697E00, &qword_10139A1B0);
  Subscription.subscriber.getter();
  v3 = v7;
  v4 = v8;
  sub_1000035D0(v6, v7);
  (*(v4 + 8))(a2, v3, v4);
  return sub_100007BAC(v6);
}

uint64_t sub_1004F3C6C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v18 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  v9 = *(v17 - 8);
  __chkstk_darwin(v17);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v3 + 24);
  v12 = swift_allocObject();
  swift_weakInit();
  v13 = swift_allocObject();
  v13[2] = v12;
  v13[3] = a1;
  v13[4] = a2;
  aBlock[4] = sub_1004F48E4;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_101624358;
  v14 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v19 = _swiftEmptyArrayStorage;
  sub_100003DB4(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);
  (*(v18 + 8))(v8, v6);
  (*(v9 + 8))(v11, v17);
}

uint64_t sub_1004F3F84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v57 = a2;
  v58 = type metadata accessor for DispatchWorkItemFlags();
  v63 = *(v58 - 8);
  __chkstk_darwin(v58);
  v5 = v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS.QoSClass();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v62 = v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_1000BC4D4(&qword_101697E00, &qword_10139A1B0);
  v13 = *(v61 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v61);
  v60 = v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v59 = v39 - v16;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v56 = v10;
    v18 = result;
    swift_beginAccess();
    v19 = *(v18 + 16);

    v20 = v19;

    v21 = *(v19 + 16);
    if (v21)
    {
      v54 = sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
      v23 = *(v13 + 16);
      v22 = v13 + 16;
      v53 = v23;
      v52 = *(v22 + 64);
      v24 = (v52 + 32) & ~v52;
      v39[1] = v20;
      v25 = v20 + v24;
      v50 = (v11 + 104);
      v49 = (v11 + 8);
      v48 = *(v22 + 56);
      v47 = enum case for DispatchQoS.QoSClass.default(_:);
      v45 = v5;
      v44 = (v22 + 16);
      v51 = v24;
      v43 = v24 + v14;
      v42 = v66;
      v41 = (v63 + 8);
      v40 = (v7 + 8);
      v55 = v6;
      v46 = v22;
      do
      {
        v26 = v59;
        v27 = v61;
        v53(v59, v25, v61);
        v28 = v62;
        v29 = v56;
        (*v50)(v62, v47, v56);
        v63 = static OS_dispatch_queue.global(qos:)();
        (*v49)(v28, v29);
        v30 = *v44;
        v31 = v60;
        (*v44)(v60, v26, v27);
        v32 = swift_allocObject();
        *(v32 + 16) = v57;
        *(v32 + 24) = a3;
        v30((v32 + v51), v31, v27);
        v66[2] = sub_1004F48F0;
        v66[3] = v32;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        v66[0] = sub_100006684;
        v66[1] = &unk_1016243A8;
        v33 = _Block_copy(aBlock);

        static DispatchQoS.unspecified.getter();
        v64 = _swiftEmptyArrayStorage;
        sub_100003DB4(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
        sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
        sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
        v34 = v45;
        v35 = v58;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v36 = v63;
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        v37 = v33;
        v38 = v55;
        _Block_release(v37);

        (*v41)(v34, v35);
        (*v40)(v9, v38);

        v25 += v48;
        --v21;
      }

      while (v21);
    }
  }

  return result;
}

uint64_t sub_1004F4624(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  if (!a2)
  {
    return (a3)(a1 == 1);
  }

  swift_errorRetain();
  a3(a2, 1);
}

void sub_1004F46A4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_1004F471C()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1004F4788(uint64_t a1, uint64_t a2)
{
  sub_1000BC4D4(&qword_101697E00, &qword_10139A1B0);
  Subscription.subscriber.getter();
  v3 = v7;
  v4 = v8;
  sub_1000035D0(v6, v7);
  (*(v4 + 16))(a2, v3, v4);
  return sub_100007BAC(v6);
}

uint64_t sub_1004F4814()
{
  type metadata accessor for CLAuthorizationStatus(0);
  OS_dispatch_queue.sync<A>(execute:)();
  v0 = swift_allocObject();
  *(v0 + 16) = (v2 - 3) < 2;
  sub_1004F3C6C(sub_1004F48DC, v0);
}

uint64_t sub_1004F49B8()
{
  v1 = sub_1000BC4D4(&qword_101697E00, &qword_10139A1B0);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_1004F4AA0(uint64_t (*a1)(uint64_t, uint64_t))
{
  v2 = *(sub_1000BC4D4(&qword_101697E00, &qword_10139A1B0) - 8);
  v3 = *(v1 + 16);
  v4 = v1 + ((*(v2 + 80) + 24) & ~*(v2 + 80));

  return a1(v3, v4);
}

uint64_t sub_1004F4B24@<X0>(BOOL *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = *(*(v1 + 16) + 16) != 0;
  return result;
}

uint64_t sub_1004F4BB4(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100014650;

  return sub_1004F27D8(a1, v1);
}

uint64_t sub_1004F4C50(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100014744;

  return sub_1004F2E04(a1, v1);
}

uint64_t sub_1004F4CE8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100014650;

  return sub_1002ECF7C();
}

uint64_t sub_1004F4DDC@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1004F4E90(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
    a1[3] = v7;
  }

  return result;
}

unint64_t sub_1004F4E0C(uint64_t a1)
{
  *(a1 + 8) = sub_1004F4E3C();
  result = sub_100392AF0();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1004F4E3C()
{
  result = qword_1016A2BC0;
  if (!qword_1016A2BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A2BC0);
  }

  return result;
}

uint64_t sub_1004F4E90(void *a1)
{
  v2 = v1;
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryDecoding.container()();
  sub_10015049C(v21, v22);
  v4 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  if (v1)
  {
    goto LABEL_26;
  }

  v2 = v4;
  v6 = v5;
  result = static MACAddress.length.getter();
  if ((result - 0x2000000000000000) >> 62 != 3)
  {
    __break(1u);
    goto LABEL_29;
  }

  if (__OFADD__(4 * result, 80))
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (__OFADD__(4 * result + 80, 4))
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (__OFADD__(4 * result + 84, 4))
  {
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  sub_10015049C(v21, v22);
  v8 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v10 = v9;
  sub_1000E0A3C();
  v11 = DataProtocol.intValue.getter();
  result = static MACAddress.length.getter();
  if (__OFADD__(result, 20))
  {
    goto LABEL_32;
  }

  if (__OFADD__(result + 20, 1))
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v12 = result + 22;
  if (__OFADD__(result + 21, 1))
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v13 = v11 * v12;
  if ((v11 * v12) >> 64 != (v11 * v12) >> 63)
  {
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v14 = v10 >> 62;
  if ((v10 >> 62) > 1)
  {
    if (v14 == 2)
    {
      v16 = *(v8 + 16);
      v15 = *(v8 + 24);
      v17 = __OFSUB__(v15, v16);
      v18 = v15 - v16;
      if (v17)
      {
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

      if (v18 < v13)
      {
        goto LABEL_24;
      }
    }

    else if (v13 > 0)
    {
      goto LABEL_24;
    }

    goto LABEL_18;
  }

  if (!v14)
  {
    if (BYTE6(v10) < v13)
    {
      goto LABEL_24;
    }

LABEL_18:
    if ((v13 & 0x8000000000000000) == 0)
    {
      Data.subdata(in:)();
      sub_100016590(v8, v10);
      sub_100007BAC(v21);
      sub_100007BAC(a1);
      return v2;
    }

    goto LABEL_36;
  }

  if (!__OFSUB__(HIDWORD(v8), v8))
  {
    if (HIDWORD(v8) - v8 < v13)
    {
LABEL_24:
      v19 = type metadata accessor for BinaryDecodingError();
      sub_100247A38();
      swift_allocError();
      (*(*(v19 - 8) + 104))(v20, enum case for BinaryDecodingError.decodingError(_:), v19);
      swift_willThrow();
      sub_100016590(v8, v10);
      sub_100016590(v2, v6);
LABEL_26:
      sub_100007BAC(v21);
      sub_100007BAC(a1);
      return v2;
    }

    goto LABEL_18;
  }

LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_1004F5158(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_1016A2D68, &qword_1013AD1A8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11[-v7];
  sub_1000035D0(a1, a1[3]);
  sub_100501C70();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9 = v3[1];
  v12 = *v3;
  v13 = v9;
  v11[15] = 0;
  sub_100017D5C(v12, v9);
  sub_1000E3190();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  sub_100016590(v12, v13);
  if (!v2)
  {
    type metadata accessor for PencilUnpairData.DeviceUnpairData(0);
    LOBYTE(v12) = 1;
    type metadata accessor for UUID();
    sub_100501CC4(&qword_101698330, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v12) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v12) = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1004F53E8()
{
  v1 = 0x754E6C6169726573;
  v2 = 0x49746375646F7270;
  if (*v0 != 2)
  {
    v2 = 0x6449726F646E6576;
  }

  if (*v0)
  {
    v1 = 0x6449616E6D66;
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

uint64_t sub_1004F546C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1004FFAA4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1004F5494(uint64_t a1)
{
  v2 = sub_100501C70();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1004F54D0(uint64_t a1)
{
  v2 = sub_100501C70();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1004F5524(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_1016A2D38, &qword_1013AD198);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10[-v7];
  sub_1000035D0(a1, a1[3]);
  sub_100501B14();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v17 = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v2)
  {
    v16 = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v15 = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v14 = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    v13 = *(v3 + 64);
    v12 = 4;
    sub_100501B68();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v11 = *(v3 + 72);
    v10[15] = 5;
    sub_1000BC4D4(&qword_1016A2D50, &qword_1013AD1A0);
    sub_100501BBC();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1004F5798()
{
  v1 = *v0;
  v2 = 0x69634572656E776FLL;
  v3 = 1684628597;
  v4 = 0x6F4365766F6D6572;
  if (v1 != 4)
  {
    v4 = 0x73656369766564;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x69684372656E776FLL;
  if (v1 != 1)
  {
    v5 = 0xD000000000000011;
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

uint64_t sub_1004F5868@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1005000E0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1004F5890(uint64_t a1)
{
  v2 = sub_100501B14();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1004F58CC(uint64_t a1)
{
  v2 = sub_100501B14();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1004F5920()
{
  result = Data.init(base64Encoded:options:)();
  qword_10177AEE0 = result;
  qword_10177AEE8 = v1;
  return result;
}

uint64_t sub_1004F5960(uint64_t a1, uint64_t a2)
{
  v3[310] = v2;
  v3[309] = a2;
  v3[308] = a1;
  v3[311] = *v2;
  sub_1000BC4D4(&qword_1016985F0, &unk_10139D780);
  v3[312] = swift_task_alloc();
  v3[313] = type metadata accessor for AccessoryIdentityPairingLockCheckEndPoint(0);
  v3[314] = swift_task_alloc();
  v3[315] = swift_task_alloc();

  return _swift_task_switch(sub_1004F5A68, 0, 0);
}

uint64_t sub_1004F5A68(uint64_t a1)
{
  v2 = static os_log_type_t.default.getter();
  if (qword_1016950C8 != -1)
  {
    swift_once();
  }

  v3 = v1[315];
  v4 = v1[314];
  v5 = v1[313];
  v6 = v1[312];
  v7 = v1[310];
  v19 = v1[309];
  v8 = qword_10177C410;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_101385D80;
  *(v9 + 56) = &type metadata for String;
  *(v9 + 64) = sub_100008C00();
  *(v9 + 32) = 0xD000000000000028;
  *(v9 + 40) = 0x8000000101357EC0;
  os_log(_:dso:log:_:_:)(v2, &_mh_execute_header, v8, "%@", 2, 2, v9);

  v10 = enum case for FMNAccountType.w2Accessory(_:);
  v11 = type metadata accessor for FMNAccountType();
  (*(*(v11 - 8) + 104))(v3, v10, v11);
  *(v3 + *(v5 + 20)) = 0;
  type metadata accessor for SearchPartyURLSessionFactory(0);
  swift_allocObject();
  v12 = type metadata accessor for FMNMockingPreferences();
  (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
  v13 = FMNURLSessionFactory.init(mockSessionCreationBlock:preferences:)();
  type metadata accessor for ServerInteractionController(0);
  v14 = swift_allocObject();
  sub_100501080(v3, v4, type metadata accessor for AccessoryIdentityPairingLockCheckEndPoint);
  v1[316] = sub_10061E864(v4, v13, v14);
  v15 = *(v7 + 16);

  sub_1002DDD40(v19, (v1 + 2));
  v16 = swift_task_alloc();
  v1[317] = v16;
  *v16 = v1;
  v16[1] = sub_1004F5D44;
  v17 = v1[309];

  return sub_1002DCD00(v17, v15);
}

uint64_t sub_1004F5D44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v4[318] = a1;
  v4[319] = a2;
  v4[320] = a3;

  return _swift_task_switch(sub_1004F5E4C, 0, 0);
}

uint64_t sub_1004F5E4C()
{
  v79 = v0;
  v1 = v0[318];
  if (v1)
  {
    if (qword_101694E98 != -1)
    {
      swift_once();
    }

    v2 = v0[309];
    v3 = type metadata accessor for Logger();
    sub_1000076D4(v3, qword_10177C0A8);
    sub_1002DDD40(v2, (v0 + 40));
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.debug.getter();
    sub_1002DDD9C(v2);
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v78[0] = v7;
      *v6 = 136315138;
      v8 = Data.hexString.getter();
      v10 = sub_1000136BC(v8, v9, v78);

      *(v6 + 4) = v10;
      _os_log_impl(&_mh_execute_header, v4, v5, "Auth nonce: %s", v6, 0xCu);
      sub_100007BAC(v7);
    }

    v11 = v0[309];
    sub_1002DDD40(v11, (v0 + 78));
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.debug.getter();
    sub_1002DDD9C(v11);
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v78[0] = v15;
      *v14 = 136315138;
      v16 = Data.hexString.getter();
      v18 = sub_1000136BC(v16, v17, v78);

      *(v14 + 4) = v18;
      _os_log_impl(&_mh_execute_header, v12, v13, "Session nonce: %s", v14, 0xCu);
      sub_100007BAC(v15);
    }

    v19 = v0[309];
    sub_1002DDD40(v19, (v0 + 116));
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.debug.getter();
    sub_1002DDD9C(v19);
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v78[0] = v23;
      *v22 = 136315138;
      v24 = Data.hexString.getter();
      v26 = sub_1000136BC(v24, v25, v78);

      *(v22 + 4) = v26;
      _os_log_impl(&_mh_execute_header, v20, v21, "serialNumber: %s", v22, 0xCu);
      sub_100007BAC(v23);
    }

    v27 = v0[309];
    sub_1002DDD40(v27, (v0 + 154));
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.debug.getter();
    sub_1002DDD9C(v27);
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v78[0] = v31;
      *v30 = 136315138;
      v32 = Data.hexString.getter();
      v34 = sub_1000136BC(v32, v33, v78);

      *(v30 + 4) = v34;
      _os_log_impl(&_mh_execute_header, v28, v29, "altserialNumber: %s", v30, 0xCu);
      sub_100007BAC(v31);
    }

    v35 = v0[309];
    sub_1002DDD40(v35, (v0 + 192));
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.debug.getter();
    sub_1002DDD9C(v35);
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v78[0] = v39;
      *v38 = 136315138;
      v40 = Data.hexString.getter();
      v42 = sub_1000136BC(v40, v41, v78);

      *(v38 + 4) = v42;
      _os_log_impl(&_mh_execute_header, v36, v37, "SeedK1: %s", v38, 0xCu);
      sub_100007BAC(v39);
    }

    v43 = v0[309];
    sub_1002DDD40(v43, (v0 + 230));
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.debug.getter();
    sub_1002DDD9C(v43);
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v78[0] = v47;
      *v46 = 136315138;
      v48 = Data.hexString.getter();
      v50 = sub_1000136BC(v48, v49, v78);

      *(v46 + 4) = v50;
      _os_log_impl(&_mh_execute_header, v44, v45, "accessoryAttestation: %s", v46, 0xCu);
      sub_100007BAC(v47);
    }

    v51 = v0[309];
    sub_1002DDD40(v51, (v0 + 268));
    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.debug.getter();
    sub_1002DDD9C(v51);
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v78[0] = v55;
      *v54 = 136315138;
      v56 = Data.hexString.getter();
      v58 = sub_1000136BC(v56, v57, v78);

      *(v54 + 4) = v58;
      _os_log_impl(&_mh_execute_header, v52, v53, "accessorySignature: %s", v54, 0xCu);
      sub_100007BAC(v55);
    }

    v59 = v0[320];
    v60 = v0[319];
    v61 = v0[318];
    v62 = v0[316];
    v63 = v0[311];
    v64 = v0[310];
    v65 = v0[309];

    sub_100017D5C(v60, v59);
    v66 = sub_1004FDC2C(v1, v60, v59, 0, v62);
    v0[321] = v66;
    sub_100165328(v61, v60, v59);
    v67 = swift_task_alloc();
    v0[322] = v67;
    v67[2] = v66;
    v67[3] = v62;
    v67[4] = v64;
    v67[5] = v65;
    v67[6] = v63;
    v68 = swift_task_alloc();
    v0[323] = v68;
    v69 = type metadata accessor for PencilPairingLockCheckResponse(0);
    *v68 = v0;
    v68[1] = sub_1004F67CC;
    v70 = v0[308];

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v70, 0, 0, 0xD000000000000028, 0x8000000101357EC0, sub_100500E5C, v67, v69);
  }

  else
  {
    if (qword_101694E98 != -1)
    {
      swift_once();
    }

    v71 = type metadata accessor for Logger();
    sub_1000076D4(v71, qword_10177C0A8);
    v72 = Logger.logObject.getter();
    v73 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      *v74 = 0;
      _os_log_impl(&_mh_execute_header, v72, v73, " Could not create pairing lock request.", v74, 2u);
    }

    v75 = v0[315];

    type metadata accessor for SPPairingSessionError(0);
    v0[307] = 6;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_100501CC4(&unk_1016B2710, type metadata accessor for SPPairingSessionError, &unk_10138A7E4);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();

    sub_100501020(v75, type metadata accessor for AccessoryIdentityPairingLockCheckEndPoint);

    v76 = v0[1];

    return v76();
  }
}

uint64_t sub_1004F67CC()
{
  *(*v1 + 2592) = v0;

  if (v0)
  {
    v2 = sub_1004F69E4;
  }

  else
  {
    v2 = sub_1004F6900;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1004F6900()
{
  v1 = v0[320];
  v2 = v0[319];
  v3 = v0[318];
  v4 = v0[315];

  sub_100165328(v3, v2, v1);
  sub_100501020(v4, type metadata accessor for AccessoryIdentityPairingLockCheckEndPoint);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1004F69E4()
{
  v1 = v0[320];
  v2 = v0[319];
  v3 = v0[318];
  v4 = v0[315];

  sub_100165328(v3, v2, v1);
  sub_100501020(v4, type metadata accessor for AccessoryIdentityPairingLockCheckEndPoint);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1004F6AC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const void *a5, uint64_t a6)
{
  v28 = a5;
  v29 = a6;
  v26 = a1;
  v27 = a4;
  v30 = a2;
  v8 = sub_1000BC4D4(&qword_1016A2C00, &unk_1013AC440);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v22 - v11;
  v25 = *(v9 + 16);
  v25(&v22 - v11, a1, v8);
  v13 = *(v9 + 80);
  v22 = ((v13 + 24) & ~v13) + v10;
  v24 = (v13 + 24) & ~v13;
  v14 = swift_allocObject();
  *(v14 + 16) = a3;
  v23 = *(v9 + 32);
  v15 = v8;
  v23(v14 + ((v13 + 24) & ~v13), v12, v8);
  v16 = a3;

  Future.addFailure(block:)();

  v25(v12, v26, v15);
  v17 = (v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = (v17 + 15) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  *(v19 + 16) = v16;
  v23(v19 + v24, v12, v15);
  *(v19 + v17) = v27;
  v20 = v28;
  memcpy((v19 + v18), v28, 0x130uLL);
  *(v19 + ((v18 + 311) & 0xFFFFFFFFFFFFFFF8)) = v29;

  sub_1002DDD40(v20, &v31);
  Future.addSuccess(block:)();
}

uint64_t sub_1004F6D38(uint64_t a1)
{
  if (qword_101694E98 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177C0A8);
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
    _os_log_impl(&_mh_execute_header, v2, v3, " Error in verify pairing request. Error - %{public}s", v4, 0xCu);
    sub_100007BAC(v5);
  }

  type metadata accessor for SPPairingSessionError(0);
  sub_100032898(_swiftEmptyArrayStorage);
  sub_100501CC4(&unk_1016B2710, type metadata accessor for SPPairingSessionError, &unk_10138A7E4);
  _BridgedStoredNSError.init(_:userInfo:)();
  sub_1000BC4D4(&qword_1016A2C00, &unk_1013AC440);
  return CheckedContinuation.resume(throwing:)();
}

uint64_t sub_1004F6F54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const void *a5)
{
  v231 = a5;
  v232 = type metadata accessor for Date();
  v225 = *(v232 - 8);
  v7 = __chkstk_darwin(v232);
  v229 = &v223 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v228 = &v223 - v10;
  v11 = __chkstk_darwin(v9);
  v224 = &v223 - v12;
  __chkstk_darwin(v11);
  v230 = &v223 - v13;
  v14 = sub_1000BC4D4(&qword_101698640, &unk_10138FFA0);
  v15 = __chkstk_darwin(v14 - 8);
  v236 = &v223 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v234 = &v223 - v17;
  v238 = type metadata accessor for PencilPairingLockCheckResponse(0);
  v18 = __chkstk_darwin(v238);
  v226 = &v223 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v239 = &v223 - v20;
  v21 = type metadata accessor for String.Encoding();
  __chkstk_darwin(v21 - 8);
  v237 = &v223 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v240 = type metadata accessor for FMNServerInteractionController.FMNResponseFields();
  v23 = *(v240 - 8);
  v24 = __chkstk_darwin(v240);
  v26 = &v223 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v24);
  v29 = &v223 - v28;
  v30 = __chkstk_darwin(v27);
  v32 = &v223 - v31;
  __chkstk_darwin(v30);
  v34 = &v223 - v33;
  v35 = sub_1000BC4D4(&qword_101698638, &qword_1013AC450);
  v36 = __chkstk_darwin(v35 - 8);
  v233 = &v223 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __chkstk_darwin(v36);
  v235 = (&v223 - v39);
  v40 = __chkstk_darwin(v38);
  v42 = &v223 - v41;
  __chkstk_darwin(v40);
  v44 = &v223 - v43;
  v242 = a1;
  FMNServerInteractionController.FMNResponseFields.statusCode.getter();
  v45 = v44;
  ServerStatusCode.init(rawValue:)();
  v46 = type metadata accessor for ServerStatusCode();
  v47 = *(v46 - 8);
  v48 = (*(v47 + 48))(v45, 1, v46);
  v241 = v45;
  if (v48 == 1)
  {
LABEL_2:
    if (qword_101694E98 != -1)
    {
      swift_once();
    }

    v49 = type metadata accessor for Logger();
    sub_1000076D4(v49, qword_10177C0A8);
    v50 = v240;
    (*(v23 + 16))(v26, v242, v240);
    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v244[0] = v54;
      *v53 = 136446210;
      sub_100501CC4(&qword_1016A62C0, &type metadata accessor for FMNServerInteractionController.FMNResponseFields, &protocol conformance descriptor for FMNServerInteractionController.FMNResponseFields);
      v55 = dispatch thunk of CustomStringConvertible.description.getter();
      v56 = v50;
      v58 = v57;
      (*(v23 + 8))(v26, v56);
      v59 = sub_1000136BC(v55, v58, v244);

      *(v53 + 4) = v59;
      _os_log_impl(&_mh_execute_header, v51, v52, " Pairing lock failed: %{public}s", v53, 0xCu);
      sub_100007BAC(v54);
    }

    else
    {

      (*(v23 + 8))(v26, v50);
    }

    goto LABEL_12;
  }

  v227 = a3;
  sub_100500FB0(v45, v42);
  v223 = *(v47 + 88);
  v60 = v223(v42, v46);
  if (v60 == enum case for ServerStatusCode.success(_:))
  {
    if (qword_101694E98 != -1)
    {
      swift_once();
    }

    v61 = type metadata accessor for Logger();
    v62 = sub_1000076D4(v61, qword_10177C0A8);
    v63 = v240;
    (*(v23 + 16))(v34, v242, v240);
    v64 = Logger.logObject.getter();
    v65 = static os_log_type_t.default.getter();
    v66 = os_log_type_enabled(v64, v65);
    v67 = v239;
    if (v66)
    {
      v68 = swift_slowAlloc();
      v69 = v62;
      v70 = swift_slowAlloc();
      v244[0] = v70;
      *v68 = 136446210;
      sub_100501CC4(&qword_1016A62C0, &type metadata accessor for FMNServerInteractionController.FMNResponseFields, &protocol conformance descriptor for FMNServerInteractionController.FMNResponseFields);
      v71 = dispatch thunk of CustomStringConvertible.description.getter();
      v72 = v63;
      v74 = v73;
      (*(v23 + 8))(v34, v72);
      v75 = sub_1000136BC(v71, v74, v244);

      *(v68 + 4) = v75;
      _os_log_impl(&_mh_execute_header, v64, v65, "Pairing success: %{public}s", v68, 0xCu);
      sub_100007BAC(v70);
      v62 = v69;
      v67 = v239;
    }

    else
    {

      (*(v23 + 8))(v34, v63);
    }

    v89 = v238;
    v90 = FMNServerInteractionController.FMNResponseFields.data.getter();
    v92 = v91;
    static String.Encoding.utf8.getter();
    v93 = String.init(data:encoding:)();
    v95 = v94;
    sub_100016590(v90, v92);
    if (v95)
    {

      v96 = Logger.logObject.getter();
      v97 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v96, v97))
      {
        v98 = swift_slowAlloc();
        v99 = swift_slowAlloc();
        v244[0] = v99;
        *v98 = 136315138;
        v100 = sub_1000136BC(v93, v95, v244);

        *(v98 + 4) = v100;
        _os_log_impl(&_mh_execute_header, v96, v97, "Response data: %s", v98, 0xCu);
        sub_100007BAC(v99);
        v89 = v238;
      }

      else
      {
      }
    }

    type metadata accessor for JSONDecoder();
    swift_allocObject();
    v112 = JSONDecoder.init()();
    v113 = FMNServerInteractionController.FMNResponseFields.data.getter();
    v115 = v114;
    sub_100501CC4(&qword_1016A2C08, type metadata accessor for PencilPairingLockCheckResponse, &unk_1013B6BF0);
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    sub_100016590(v113, v115);
    v116 = v234;
    FMNServerInteractionController.FMNResponseFields.metadata.getter();
    v117 = type metadata accessor for FMNServerInteractionController.InternalServerMetadata();
    v118 = *(v117 - 8);
    if ((*(v118 + 48))(v116, 1, v117) == 1)
    {
      sub_10000B3A8(v116, &qword_101698640, &unk_10138FFA0);
    }

    else
    {
      v129 = FMNServerInteractionController.InternalServerMetadata.dateEpoch.getter();
      v130 = v116;
      v131 = v129;
      v133 = v132;
      (*(v118 + 8))(v130, v117);
      if ((v133 & 1) == 0)
      {
        v183 = Logger.logObject.getter();
        v184 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v183, v184))
        {
          v185 = swift_slowAlloc();
          *v185 = 134217984;
          *(v185 + 4) = v131;
          _os_log_impl(&_mh_execute_header, v183, v184, "Server epoch: %lld", v185, 0xCu);
        }

        goto LABEL_71;
      }
    }

    v134 = FMNServerInteractionController.FMNResponseFields.responseHeaders.getter();
    if (*(v134 + 16) && (v135 = sub_100771D58(1702125892, 0xE400000000000000), (v136 & 1) != 0))
    {
      v137 = (*(v134 + 56) + 16 * v135);
      v139 = *v137;
      v138 = v137[1];
      swift_bridgeObjectRetain_n();

      v140 = Logger.logObject.getter();
      v141 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v140, v141))
      {
        v142 = swift_slowAlloc();
        v143 = v62;
        v144 = swift_slowAlloc();
        v244[0] = v144;
        *v142 = 136446210;
        *(v142 + 4) = sub_1000136BC(v139, v138, v244);
        _os_log_impl(&_mh_execute_header, v140, v141, "Server date: %{public}s", v142, 0xCu);
        sub_100007BAC(v144);
        v62 = v143;
        v67 = v239;
      }

      if (qword_101694AB0 != -1)
      {
        swift_once();
      }

      v145 = qword_10177B6F0;
      v146 = String._bridgeToObjectiveC()();

      v147 = [v145 dateFromString:v146];

      if (v147)
      {
        v148 = v230;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v149 = v225;
        v150 = *(v225 + 16);
        v151 = v224;
        v152 = v232;
        v150(v224, v148, v232);
        v150(v228, v148, v152);
        v150(v229, v148, v152);
        v153 = Logger.logObject.getter();
        v154 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v153, v154))
        {
          v155 = swift_slowAlloc();
          v242 = swift_slowAlloc();
          v244[0] = v242;
          *v155 = 136446722;
          sub_100501CC4(&qword_1016969A0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
          LODWORD(v236) = v154;
          v156 = dispatch thunk of CustomStringConvertible.description.getter();
          v237 = v62;
          v158 = v157;
          v159 = v151;
          v160 = *(v149 + 8);
          v234 = ((v149 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
          v235 = v153;
          v160(v159, v232);
          v161 = sub_1000136BC(v156, v158, v244);

          *(v155 + 4) = v161;
          *(v155 + 12) = 2048;
          v162 = v228;
          v163 = Date.epoch.getter();
          v160(v162, v232);
          *(v155 + 14) = v163;
          *(v155 + 22) = 2082;
          v164 = v229;
          v243 = Date.epoch.getter();
          sub_100102194();
          v165 = FixedWidthInteger.data.getter();
          v167 = v166;
          v168 = v112;
          v169 = Data.hexString.getter();
          v171 = v170;
          v172 = v167;
          v62 = v237;
          sub_100016590(v165, v172);
          v160(v164, v232);
          v173 = v169;
          v112 = v168;
          v174 = sub_1000136BC(v173, v171, v244);

          *(v155 + 24) = v174;
          v175 = v235;
          _os_log_impl(&_mh_execute_header, v235, v236, "pairingEpoch: %{public}s [%lld/%{public}s]", v155, 0x20u);
          swift_arrayDestroy();

          v152 = v232;
        }

        else
        {
          v189 = v151;
          v160 = *(v149 + 8);
          v160(v228, v152);

          v160(v229, v152);
          v160(v189, v152);
        }

        v190 = v230;
        v131 = Date.epoch.getter();
        v160(v190, v152);
        v89 = v238;
        v67 = v239;
LABEL_71:
        *(v67 + *(v89 + 11)) = v131;
        v191 = sub_1005002F8(v231, v67);
        v242 = v192;
        v193 = Logger.logObject.getter();
        v194 = static os_log_type_t.default.getter();
        v195 = os_log_type_enabled(v193, v194);
        v240 = v112;
        if (v195)
        {
          v196 = swift_slowAlloc();
          v197 = swift_slowAlloc();
          v237 = v62;
          v198 = v197;
          v244[0] = v197;
          *v196 = 136315138;
          swift_beginAccess();
          v199 = *(v67 + 48);
          v200 = *(v67 + 56);
          sub_100017D5C(v199, v200);
          v201 = Data.hexString.getter();
          v202 = v191;
          v204 = v203;
          sub_100016590(v199, v200);
          v205 = v201;
          v67 = v239;
          v206 = sub_1000136BC(v205, v204, v244);
          v191 = v202;

          *(v196 + 4) = v206;
          _os_log_impl(&_mh_execute_header, v193, v194, "S3: %s", v196, 0xCu);
          sub_100007BAC(v198);
        }

        v207 = v242;
        sub_100017D5C(v191, v242);
        v208 = Logger.logObject.getter();
        v209 = static os_log_type_t.debug.getter();
        sub_100016590(v191, v207);
        if (os_log_type_enabled(v208, v209))
        {
          v210 = swift_slowAlloc();
          v211 = swift_slowAlloc();
          v238 = v191;
          v212 = v211;
          v244[0] = v211;
          *v210 = 136315138;
          v213 = Data.hexString.getter();
          v215 = sub_1000136BC(v213, v214, v244);

          *(v210 + 4) = v215;
          _os_log_impl(&_mh_execute_header, v208, v209, "dataForSignatureVerification: %s", v210, 0xCu);
          sub_100007BAC(v212);
          v191 = v238;
        }

        swift_beginAccess();
        v216 = *(v67 + 48);
        v217 = *(v67 + 56);
        sub_100017D5C(v216, v217);
        v218 = sub_1005008D4(v191, v242, v216, v217);
        v219 = v191;
        sub_100016590(v216, v217);
        v220 = static os_log_type_t.default.getter();
        if (qword_1016950C8 != -1)
        {
          swift_once();
        }

        v221 = qword_10177C410;
        sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
        v222 = swift_allocObject();
        *(v222 + 16) = xmmword_101385D80;
        *(v222 + 56) = &type metadata for Bool;
        *(v222 + 64) = &protocol witness table for Bool;
        *(v222 + 32) = v218 & 1;
        os_log(_:dso:log:_:_:)(v220, &_mh_execute_header, v221, "Signature S3 verified? %d", v223);

        sub_100501080(v67, v226, type metadata accessor for PencilPairingLockCheckResponse);
        sub_1000BC4D4(&qword_1016A2C00, &unk_1013AC440);
        CheckedContinuation.resume(returning:)();

        sub_100016590(v219, v242);
        goto LABEL_55;
      }

      v186 = Logger.logObject.getter();
      v187 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v186, v187))
      {
        v188 = swift_slowAlloc();
        *v188 = 0;
        _os_log_impl(&_mh_execute_header, v186, v187, "Unable to parse server Date!", v188, 2u);
      }

      type metadata accessor for SPPairingSessionError(0);
      v179 = 25;
    }

    else
    {

      v176 = Logger.logObject.getter();
      v177 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v176, v177))
      {
        v178 = swift_slowAlloc();
        *v178 = 0;
        _os_log_impl(&_mh_execute_header, v176, v177, "Server response is missing Date header!", v178, 2u);
      }

      type metadata accessor for SPPairingSessionError(0);
      v179 = 23;
    }

    v243 = v179;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_100501CC4(&unk_1016B2710, type metadata accessor for SPPairingSessionError, &unk_10138A7E4);
    _BridgedStoredNSError.init(_:userInfo:)();
    v243 = v244[0];
    sub_1000BC4D4(&qword_1016A2C00, &unk_1013AC440);
    CheckedContinuation.resume(throwing:)();

LABEL_55:
    sub_100501020(v67, type metadata accessor for PencilPairingLockCheckResponse);
    return sub_10000B3A8(v241, &qword_101698638, &qword_1013AC450);
  }

  if (v60 != enum case for ServerStatusCode.forbidden(_:))
  {
    if (v60 == enum case for ServerStatusCode.serverConflict(_:))
    {
      if (qword_101694E98 != -1)
      {
        swift_once();
      }

      v101 = type metadata accessor for Logger();
      sub_1000076D4(v101, qword_10177C0A8);
      v102 = v240;
      (*(v23 + 16))(v32, v242, v240);
      v103 = Logger.logObject.getter();
      v104 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v103, v104))
      {
        v105 = swift_slowAlloc();
        v106 = swift_slowAlloc();
        v244[0] = v106;
        *v105 = 136446210;
        sub_100501CC4(&qword_1016A62C0, &type metadata accessor for FMNServerInteractionController.FMNResponseFields, &protocol conformance descriptor for FMNServerInteractionController.FMNResponseFields);
        v107 = dispatch thunk of CustomStringConvertible.description.getter();
        v108 = v102;
        v110 = v109;
        (*(v23 + 8))(v32, v108);
        v111 = sub_1000136BC(v107, v110, v244);

        *(v105 + 4) = v111;
        _os_log_impl(&_mh_execute_header, v103, v104, "Linked to another Apple ID. %{public}s", v105, 0xCu);
        sub_100007BAC(v106);
      }

      else
      {

        (*(v23 + 8))(v32, v102);
      }

      type metadata accessor for SPPairingSessionError(0);
      v76 = 18;
      goto LABEL_13;
    }

    (*(v47 + 8))(v42, v46);
    goto LABEL_2;
  }

  if (qword_101694E98 != -1)
  {
    swift_once();
  }

  v78 = type metadata accessor for Logger();
  v79 = sub_1000076D4(v78, qword_10177C0A8);
  v80 = v240;
  (*(v23 + 16))(v29, v242, v240);
  v239 = v79;
  v81 = Logger.logObject.getter();
  v82 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v81, v82))
  {
    v83 = swift_slowAlloc();
    v237 = v83;
    v238 = swift_slowAlloc();
    v244[0] = v238;
    *v83 = 136446210;
    sub_100501CC4(&qword_1016A62C0, &type metadata accessor for FMNServerInteractionController.FMNResponseFields, &protocol conformance descriptor for FMNServerInteractionController.FMNResponseFields);
    v84 = dispatch thunk of CustomStringConvertible.description.getter();
    v86 = v85;
    (*(v23 + 8))(v29, v80);
    v87 = sub_1000136BC(v84, v86, v244);

    v88 = v237;
    *(v237 + 4) = v87;
    _os_log_impl(&_mh_execute_header, v81, v82, "Pairing not allowed! %{public}s", v88, 0xCu);
    sub_100007BAC(v238);
  }

  else
  {

    (*(v23 + 8))(v29, v80);
  }

  v119 = v236;
  FMNServerInteractionController.FMNResponseFields.metadata.getter();
  v120 = type metadata accessor for FMNServerInteractionController.InternalServerMetadata();
  v121 = *(v120 - 8);
  if ((*(v121 + 48))(v119, 1, v120) == 1)
  {
    sub_10000B3A8(v119, &qword_101698640, &unk_10138FFA0);
    v122 = v235;
    (*(v47 + 56))(v235, 1, 1, v46);
    sub_10000B3A8(v122, &qword_101698638, &qword_1013AC450);
  }

  else
  {
    v123 = v235;
    FMNServerInteractionController.InternalServerMetadata.errorCode.getter();
    (*(v121 + 8))(v119, v120);
    (*(v47 + 56))(v123, 0, 1, v46);
    v124 = v233;
    sub_1000D2AD8(v123, v233, &qword_101698638, &qword_1013AC450);
    v125 = v223(v124, v46);
    if (v125 == enum case for ServerStatusCode.preconditionFailed(_:))
    {
      v126 = Logger.logObject.getter();
      v127 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v126, v127))
      {
        v128 = swift_slowAlloc();
        *v128 = 0;
        _os_log_impl(&_mh_execute_header, v126, v127, "Pairing has been completed by another device!", v128, 2u);
      }

      type metadata accessor for SPPairingSessionError(0);
      v76 = 22;
      goto LABEL_13;
    }

    if (v125 == enum case for ServerStatusCode.locked(_:))
    {
      v180 = Logger.logObject.getter();
      v181 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v180, v181))
      {
        v182 = swift_slowAlloc();
        *v182 = 0;
        _os_log_impl(&_mh_execute_header, v180, v181, " ⍻ Pairing is pending from another device!", v182, 2u);
      }

      type metadata accessor for SPPairingSessionError(0);
      v76 = 21;
      goto LABEL_13;
    }

    (*(v47 + 8))(v124, v46);
  }

LABEL_12:
  type metadata accessor for SPPairingSessionError(0);
  v76 = 1;
LABEL_13:
  v243 = v76;
  sub_100032898(_swiftEmptyArrayStorage);
  sub_100501CC4(&unk_1016B2710, type metadata accessor for SPPairingSessionError, &unk_10138A7E4);
  _BridgedStoredNSError.init(_:userInfo:)();
  v243 = v244[0];
  sub_1000BC4D4(&qword_1016A2C00, &unk_1013AC440);
  CheckedContinuation.resume(throwing:)();
  return sub_10000B3A8(v241, &qword_101698638, &qword_1013AC450);
}

uint64_t sub_1004F8EC4(uint64_t a1, uint64_t a2)
{
  v3[35] = a2;
  v3[36] = v2;
  v3[34] = a1;
  sub_1000BC4D4(&qword_1016985F0, &unk_10139D780);
  v3[37] = swift_task_alloc();
  v4 = type metadata accessor for FMNAccountType();
  v3[38] = v4;
  v3[39] = *(v4 - 8);
  v3[40] = swift_task_alloc();
  v3[41] = type metadata accessor for AccessoryIdentityPairingLockAckEndPoint(0);
  v3[42] = swift_task_alloc();
  v3[43] = swift_task_alloc();

  return _swift_task_switch(sub_1004F8FFC, 0, 0);
}

uint64_t sub_1004F8FFC()
{
  v1 = v0[42];
  v2 = v0[43];
  v3 = v0[40];
  v4 = v0[41];
  v5 = v0[38];
  v6 = v0[37];
  v16 = v0[36];
  v17 = v0[35];
  v7 = enum case for FMNAccountType.w2Accessory(_:);
  v8 = *(v0[39] + 104);
  v8(v3, enum case for FMNAccountType.w2Accessory(_:), v5);
  type metadata accessor for AccountURLComponents();
  swift_allocObject();
  *v2 = sub_1010B32C8(v3);
  v8(v2 + *(v4 + 20), v7, v5);
  type metadata accessor for SearchPartyURLSessionFactory(0);
  swift_allocObject();
  v9 = type metadata accessor for FMNMockingPreferences();
  (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
  v10 = FMNURLSessionFactory.init(mockSessionCreationBlock:preferences:)();
  type metadata accessor for ServerInteractionController(0);
  v11 = swift_allocObject();
  sub_100501080(v2, v1, type metadata accessor for AccessoryIdentityPairingLockAckEndPoint);
  v0[44] = sub_10061EC7C(v1, v10, v11);
  v12 = *(v16 + 16);

  sub_100500C18(v17, (v0 + 2));
  v13 = swift_task_alloc();
  v0[45] = v13;
  *v13 = v0;
  v13[1] = sub_1004F9220;
  v14 = v0[35];

  return sub_100F49810(v14, v12);
}

uint64_t sub_1004F9220(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v4[46] = a1;
  v4[47] = a2;
  v4[48] = a3;

  return _swift_task_switch(sub_1004F9324, 0, 0);
}

uint64_t sub_1004F9324()
{
  v1 = v0[46];
  if (v1)
  {
    v3 = v0[47];
    v2 = v0[48];
    v4 = v0[44];

    sub_100017D5C(v3, v2);
    v5 = sub_1004FDF38(v1, v3, v2, 0, v4);
    v0[49] = v5;
    sub_100165328(v1, v3, v2);
    v6 = swift_task_alloc();
    v0[50] = v6;
    v7 = type metadata accessor for PencilPairingLockAckResponse(0);
    *v6 = v0;
    v6[1] = sub_1004F961C;
    v8 = v0[34];

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v8, 0, 0, 0xD00000000000001ALL, 0x8000000101357EA0, sub_100500C50, v5, v7);
  }

  else
  {
    if (qword_101694E98 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_1000076D4(v9, qword_10177C0A8);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, " Could not create pairing ack request", v12, 2u);
    }

    v13 = v0[43];

    type metadata accessor for SPPairingSessionError(0);
    v0[33] = 6;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_100501CC4(&unk_1016B2710, type metadata accessor for SPPairingSessionError, &unk_10138A7E4);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();

    sub_100501020(v13, type metadata accessor for AccessoryIdentityPairingLockAckEndPoint);

    v14 = v0[1];

    return v14();
  }
}

uint64_t sub_1004F961C()
{
  *(*v1 + 408) = v0;

  if (v0)
  {
    v2 = sub_1004F9814;
  }

  else
  {
    v2 = sub_1004F9730;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1004F9730()
{
  v1 = v0[48];
  v3 = v0[46];
  v2 = v0[47];
  v4 = v0[43];

  sub_100165328(v3, v2, v1);
  sub_100501020(v4, type metadata accessor for AccessoryIdentityPairingLockAckEndPoint);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1004F9814()
{
  v1 = v0[48];
  v3 = v0[46];
  v2 = v0[47];
  v4 = v0[43];

  sub_100165328(v3, v2, v1);
  sub_100501020(v4, type metadata accessor for AccessoryIdentityPairingLockAckEndPoint);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1004F98EC(uint64_t a1)
{
  v13 = a1;
  v2 = sub_1000BC4D4(&qword_1016A2BE8, &unk_1013AC418);
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

uint64_t sub_1004F9ACC(uint64_t a1)
{
  if (qword_101694E98 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177C0A8);
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
    _os_log_impl(&_mh_execute_header, v2, v3, " Ack pairing failed. %{public}s", v4, 0xCu);
    sub_100007BAC(v5);
  }

  type metadata accessor for SPPairingSessionError(0);
  sub_100032898(_swiftEmptyArrayStorage);
  sub_100501CC4(&unk_1016B2710, type metadata accessor for SPPairingSessionError, &unk_10138A7E4);
  _BridgedStoredNSError.init(_:userInfo:)();
  sub_1000BC4D4(&qword_1016A2BE8, &unk_1013AC418);
  return CheckedContinuation.resume(throwing:)();
}

uint64_t sub_1004F9CE8(void *a1, void *a2)
{
  v4 = type metadata accessor for PencilPairingLockAckResponse(0);
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
    if (qword_101694E98 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    v18 = sub_1000076D4(v17, qword_10177C0A8);
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
      sub_100501CC4(&qword_1016A62C0, &type metadata accessor for FMNServerInteractionController.FMNResponseFields, &protocol conformance descriptor for FMNServerInteractionController.FMNResponseFields);
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
      _os_log_impl(&_mh_execute_header, v19, v20, " Ack pairing success: %{public}s", v22, 0xCu);
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
    sub_100501CC4(&qword_1016A2BF0, type metadata accessor for PencilPairingLockAckResponse, &unk_1013F1580);
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    sub_100016590(v38, v40);
    sub_100501080(v9, v7, type metadata accessor for PencilPairingLockAckResponse);
    sub_1000BC4D4(&qword_1016A2BE8, &unk_1013AC418);
    CheckedContinuation.resume(returning:)();

    return sub_100501020(v9, type metadata accessor for PencilPairingLockAckResponse);
  }

  else
  {
    if (qword_101694E98 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    sub_1000076D4(v29, qword_10177C0A8);
    (*(v11 + 16))(v14, a1, v10);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v44 = v33;
      *v32 = 136446210;
      sub_100501CC4(&qword_1016A62C0, &type metadata accessor for FMNServerInteractionController.FMNResponseFields, &protocol conformance descriptor for FMNServerInteractionController.FMNResponseFields);
      v34 = dispatch thunk of CustomStringConvertible.description.getter();
      v36 = v35;
      (*(v11 + 8))(v14, v10);
      v37 = sub_1000136BC(v34, v36, &v44);

      *(v32 + 4) = v37;
      _os_log_impl(&_mh_execute_header, v30, v31, " Ack pairing failed. Response %{public}s", v32, 0xCu);
      sub_100007BAC(v33);
    }

    else
    {

      (*(v11 + 8))(v14, v10);
    }

    type metadata accessor for SPPairingSessionError(0);
    v43 = 1;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_100501CC4(&unk_1016B2710, type metadata accessor for SPPairingSessionError, &unk_10138A7E4);
    _BridgedStoredNSError.init(_:userInfo:)();
    v43 = v44;
    sub_1000BC4D4(&qword_1016A2BE8, &unk_1013AC418);
    return CheckedContinuation.resume(throwing:)();
  }
}

uint64_t sub_1004FA514(uint64_t a1)
{
  *(v2 + 112) = a1;
  *(v2 + 120) = v1;
  return _swift_task_switch(sub_1004FA534, 0, 0);
}

uint64_t sub_1004FA534()
{
  v1 = v0[14];
  v2 = *(v0[15] + 16);

  sub_100500A7C(v1, (v0 + 2));
  v3 = swift_task_alloc();
  v0[16] = v3;
  *v3 = v0;
  v3[1] = sub_1004FA600;
  v4 = v0[14];

  return sub_100B74694(v4, v2);
}

uint64_t sub_1004FA600(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v4[17] = a1;
  v4[18] = a2;
  v4[19] = a3;

  return _swift_task_switch(sub_1004FA704, 0, 0);
}

uint64_t sub_1004FA704()
{
  v1 = v0[17];
  if (v1)
  {
    v3 = v0[18];
    v2 = v0[19];
    v4 = v0[14];
    v5 = swift_task_alloc();
    v0[20] = v5;
    v5[2] = v4;
    v5[3] = v1;
    v5[4] = v3;
    v5[5] = v2;
    v6 = swift_task_alloc();
    v0[21] = v6;
    *v6 = v0;
    v6[1] = sub_1004FA988;

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v6, 0, 0, 0xD000000000000024, 0x8000000101357E70, sub_100500AB4, v5, &type metadata for () + 1);
  }

  else
  {
    if (qword_101694E98 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_1000076D4(v7, qword_10177C0A8);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "Could not create unpair command", v10, 2u);
    }

    type metadata accessor for SPPairingSessionError(0);
    v0[13] = 6;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_100501CC4(&unk_1016B2710, type metadata accessor for SPPairingSessionError, &unk_10138A7E4);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();
    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_1004FA988()
{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = sub_1004FAB0C;
  }

  else
  {

    v2 = sub_1004FAAA4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1004FAAA4()
{
  sub_100165328(v0[17], v0[18], v0[19]);
  v1 = v0[1];

  return v1();
}

uint64_t sub_1004FAB0C()
{
  sub_100165328(v0[17], v0[18], v0[19]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1004FAB7C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, char *, uint64_t), void (*a4)(char *, uint64_t, uint64_t), unint64_t a5)
{
  v64 = a3;
  v65 = a4;
  v8 = sub_1000BC4D4(&unk_1016B1770, &qword_1013AC3F0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v53 - v11;
  v13 = sub_1000BC4D4(&qword_1016985F0, &unk_10139D780);
  __chkstk_darwin(v13 - 8);
  v63 = (&v53 - v14);
  v15 = type metadata accessor for FMNAccountType();
  v60 = *(v15 - 8);
  v61 = v15;
  __chkstk_darwin(v15);
  v59 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = type metadata accessor for PencilUnpairEndPoint(0);
  v17 = __chkstk_darwin(v58);
  v62 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v20 = (&v53 - v19);
  v21 = type metadata accessor for PencilUnpairData.DeviceUnpairData(0) - 8;
  __chkstk_darwin(v21);
  v24 = &v53 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *(a2 + 72);
  if (*(v25 + 16))
  {
    v56 = a5;
    v57 = v8;
    v26 = (*(v22 + 80) + 32) & ~*(v22 + 80);
    if (qword_101694E98 != -1)
    {
      swift_once();
    }

    v66 = v10;
    v27 = type metadata accessor for Logger();
    sub_1000076D4(v27, qword_10177C0A8);
    sub_100501080(v25 + v26, v24, type metadata accessor for PencilUnpairData.DeviceUnpairData);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v68 = v31;
      *v30 = 141558275;
      *(v30 + 4) = 1752392040;
      *(v30 + 12) = 2081;
      v32 = Data.description.getter();
      v54 = a1;
      v33 = v32;
      v34 = v20;
      v35 = v12;
      v36 = v9;
      v38 = v37;
      sub_100501020(v24, type metadata accessor for PencilUnpairData.DeviceUnpairData);
      v39 = sub_1000136BC(v33, v38, &v68);
      v9 = v36;
      v12 = v35;
      v20 = v34;

      *(v30 + 14) = v39;
      a1 = v54;
      _os_log_impl(&_mh_execute_header, v28, v29, "Removing pairing lock for Serial Number - %{private,mask.hash}s", v30, 0x16u);
      sub_100007BAC(v31);
    }

    else
    {

      sub_100501020(v24, type metadata accessor for PencilUnpairData.DeviceUnpairData);
    }

    v55 = v20;
    v41 = enum case for FMNAccountType.w2Accessory(_:);
    v42 = v59;
    v43 = *(v60 + 104);
    v44 = v61;
    v43(v59, enum case for FMNAccountType.w2Accessory(_:), v61);
    type metadata accessor for AccountURLComponents();
    swift_allocObject();
    *v20 = sub_1010B32C8(v42);
    v43(v20 + *(v58 + 20), v41, v44);
    type metadata accessor for SearchPartyURLSessionFactory(0);
    swift_allocObject();
    v45 = type metadata accessor for FMNMockingPreferences();
    (*(*(v45 - 8) + 56))(v63, 1, 1, v45);
    v46 = FMNURLSessionFactory.init(mockSessionCreationBlock:preferences:)();
    type metadata accessor for ServerInteractionController(0);
    v47 = swift_allocObject();
    v48 = v62;
    sub_100501080(v20, v62, type metadata accessor for PencilUnpairEndPoint);
    v63 = sub_100622DFC(v48, v46, v47);
    sub_1004FE244(v64, v65, v56, 0, v63);
    v65 = *(v9 + 16);
    v49 = v57;
    v65(v12, a1, v57);
    v50 = (*(v9 + 80) + 16) & ~*(v9 + 80);
    v51 = swift_allocObject();
    v64 = *(v9 + 32);
    v64(v51 + v50, v12, v49);
    Future.addFailure(block:)();

    v65(v12, a1, v49);
    v52 = swift_allocObject();
    v64(v52 + v50, v12, v49);
    Future.addSuccess(block:)();

    return sub_100501020(v55, type metadata accessor for PencilUnpairEndPoint);
  }

  else
  {
    type metadata accessor for SPPairingSessionError(0);
    v67 = 6;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_100501CC4(&unk_1016B2710, type metadata accessor for SPPairingSessionError, &unk_10138A7E4);
    _BridgedStoredNSError.init(_:userInfo:)();
    v67 = v68;
    return CheckedContinuation.resume(throwing:)();
  }
}

uint64_t sub_1004FB2FC(uint64_t a1)
{
  if (qword_101694E98 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177C0A8);
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
    _os_log_impl(&_mh_execute_header, v2, v3, "Remove pairing lock command failed. Error - %{public}@", v4, 0xCu);
    sub_10000B3A8(v5, &qword_10169BB30, &unk_10138B3C0);
  }

  type metadata accessor for SPPairingSessionError(0);
  sub_100032898(_swiftEmptyArrayStorage);
  sub_100501CC4(&unk_1016B2710, type metadata accessor for SPPairingSessionError, &unk_10138A7E4);
  _BridgedStoredNSError.init(_:userInfo:)();
  sub_1000BC4D4(&unk_1016B1770, &qword_1013AC3F0);
  return CheckedContinuation.resume(throwing:)();
}

uint64_t sub_1004FB4F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FMNServerInteractionController.FMNResponseFields();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v33 - v9;
  if (qword_1016950D0 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_1000076D4(v11, qword_10177C418);
  v36 = *(v5 + 16);
  v37 = v5 + 16;
  v36(v10, a1, v4);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  v14 = os_log_type_enabled(v12, v13);
  v38 = v5;
  if (v14)
  {
    v15 = swift_slowAlloc();
    v35 = a2;
    v16 = v15;
    v33 = swift_slowAlloc();
    v40 = v33;
    *v16 = 136446210;
    sub_100501CC4(&qword_1016A62C0, &type metadata accessor for FMNServerInteractionController.FMNResponseFields, &protocol conformance descriptor for FMNServerInteractionController.FMNResponseFields);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v34 = v11;
    v18 = a1;
    v19 = v8;
    v21 = v20;
    v22 = *(v5 + 8);
    v22(v10, v4);
    v23 = sub_1000136BC(v17, v21, &v40);
    v8 = v19;
    a1 = v18;
    v11 = v34;

    *(v16 + 4) = v23;
    _os_log_impl(&_mh_execute_header, v12, v13, "Remove pairing lock response %{public}s", v16, 0xCu);
    sub_100007BAC(v33);
  }

  else
  {

    v22 = *(v5 + 8);
    v22(v10, v4);
  }

  if (FMNServerInteractionController.FMNResponseFields.statusCode.getter() == 200)
  {
    if (qword_101694E98 != -1)
    {
      swift_once();
    }

    sub_1000076D4(v11, qword_10177C0A8);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "Remove pairing lock was successful.", v26, 2u);
    }

    sub_1000BC4D4(&unk_1016B1770, &qword_1013AC3F0);
    return CheckedContinuation.resume(returning:)();
  }

  else
  {
    if (qword_101694E98 != -1)
    {
      swift_once();
    }

    sub_1000076D4(v11, qword_10177C0A8);
    v36(v8, a1, v4);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = v8;
      v31 = swift_slowAlloc();
      *v31 = 134217984;
      v32 = FMNServerInteractionController.FMNResponseFields.statusCode.getter();
      v22(v30, v4);
      *(v31 + 4) = v32;
      _os_log_impl(&_mh_execute_header, v28, v29, "Remove pairing lock failed. Status code - %ld", v31, 0xCu);
    }

    else
    {
      v22(v8, v4);
    }

    type metadata accessor for SPPairingSessionError(0);
    v39 = 1;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_100501CC4(&unk_1016B2710, type metadata accessor for SPPairingSessionError, &unk_10138A7E4);
    _BridgedStoredNSError.init(_:userInfo:)();
    v39 = v40;
    sub_1000BC4D4(&unk_1016B1770, &qword_1013AC3F0);
    return CheckedContinuation.resume(throwing:)();
  }
}

uint64_t sub_1004FBA54(void *(*a1)(void *__return_ptr, uint64_t))
{
  v2 = type metadata accessor for String.Encoding();
  v3 = __chkstk_darwin(v2 - 8);
  a1(v10, v3);
  v4 = v10[0];
  v5 = v10[1];
  static String.Encoding.utf8.getter();
  v6 = String.init(data:encoding:)();
  if (!v7)
  {
    v6 = Data.hexString.getter();
  }

  v8 = v6;
  sub_100016590(v4, v5);
  return v8;
}

uint64_t sub_1004FBB20(void (*a1)(uint64_t *__return_ptr))
{
  a1(&v3);
  type metadata accessor for MultipartAccessoryPairingInfo(0);
  sub_100101BAC();
  v1 = Dictionary.description.getter();

  return v1;
}

unint64_t sub_1004FBBA0(void (*a1)(uint64_t *__return_ptr))
{
  a1(&v3);
  v1 = v3;

  return sub_1008CDD10(v1);
}

uint64_t sub_1004FBBE8(uint64_t (*a1)(uint64_t))
{
  v2 = type metadata accessor for AccessoryProductInfo(0);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  a1(v3);
  v6 = sub_1011A0624();
  sub_100501020(v5, type metadata accessor for AccessoryProductInfo);
  return v6;
}

uint64_t sub_1004FBC9C(void (*a1)(uint64_t *__return_ptr))
{
  a1(v5);
  v1 = v5[0];
  v2 = v5[1];
  v3 = Data.description.getter();
  sub_100016590(v1, v2);
  return v3;
}

uint64_t sub_1004FBD04(void (*a1)(uint64_t *__return_ptr))
{
  a1(&v5);
  v1 = v5;
  v2 = v6;
  v3 = sub_100313D58(v5, v6);
  sub_100016590(v1, v2);
  return v3;
}

uint64_t sub_1004FBD6C(void (*a1)(uint64_t *__return_ptr))
{
  a1(&v2);

  return sub_10098E010();
}

uint64_t sub_1004FBDB4(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, void *a5)
{
  v9 = *a5;
  v10 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  __chkstk_darwin(v10 - 8);
  v12 = v23 - v11;
  v26[3] = &type metadata for AirPodsLEPairingLockCheckRequest;
  v13 = sub_1005015E0();
  v26[0] = a1;
  v26[1] = a2;
  v26[4] = v13;
  v26[2] = a3;
  v14 = *(a5 + qword_1016A2660);

  sub_100017D5C(a2, a3);
  [v14 lock];
  *(a5 + qword_1016A2668) = 0;
  [v14 unlock];
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  swift_weakInit();
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = v16;
  sub_10025EDD4(0, 0, v12, &unk_1013AC4C0, v17);

  sub_1000BC4D4(&qword_1016A2BD0, &unk_1013AC3F8);
  swift_allocObject();
  v18 = Future.init()();
  sub_1004EAA98(v26, v25);
  v19 = qword_1016A2650;
  v20 = swift_allocObject();
  swift_weakInit();
  sub_10001F280(a5 + v19, v24);
  sub_10001F280(v25, v23);
  v21 = swift_allocObject();
  v21[2] = v18;
  v21[3] = v20;
  sub_10000A748(v24, (v21 + 4));
  sub_10000A748(v23, (v21 + 9));
  v21[14] = v9;

  dispatch thunk of FMNServerInteractionController.sendRequest(endpoint:content:source:credential:responseHandler:)();

  sub_100007BAC(v25);

  sub_100007BAC(v26);
  return v18;
}

uint64_t sub_1004FC0C0(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, void *a5)
{
  v9 = *a5;
  v10 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  __chkstk_darwin(v10 - 8);
  v12 = v23 - v11;
  v26[3] = &type metadata for AirPodsLEPairingLockAckRequest;
  v13 = sub_100501634();
  v26[0] = a1;
  v26[1] = a2;
  v26[4] = v13;
  v26[2] = a3;
  v14 = *(a5 + qword_1016A2660);

  sub_100017D5C(a2, a3);
  [v14 lock];
  *(a5 + qword_1016A2668) = 0;
  [v14 unlock];
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  swift_weakInit();
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = v16;
  sub_10025EDD4(0, 0, v12, &unk_1013AC4C8, v17);

  sub_1000BC4D4(&qword_1016A2BD0, &unk_1013AC3F8);
  swift_allocObject();
  v18 = Future.init()();
  sub_1004EAA98(v26, v25);
  v19 = qword_1016A2650;
  v20 = swift_allocObject();
  swift_weakInit();
  sub_10001F280(a5 + v19, v24);
  sub_10001F280(v25, v23);
  v21 = swift_allocObject();
  v21[2] = v18;
  v21[3] = v20;
  sub_10000A748(v24, (v21 + 4));
  sub_10000A748(v23, (v21 + 9));
  v21[14] = v9;

  dispatch thunk of FMNServerInteractionController.sendRequest(endpoint:content:source:credential:responseHandler:)();

  sub_100007BAC(v25);

  sub_100007BAC(v26);
  return v18;
}

uint64_t sub_1004FC3CC(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, void *a5)
{
  v9 = *a5;
  v10 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  __chkstk_darwin(v10 - 8);
  v12 = v23 - v11;
  v26[3] = &type metadata for NFCTapRequest;
  v13 = sub_1005013E8();
  v26[0] = a1;
  v26[1] = a2;
  v26[4] = v13;
  v26[2] = a3;
  v14 = *(a5 + qword_1016A2660);

  sub_100017D5C(a2, a3);
  [v14 lock];
  *(a5 + qword_1016A2668) = 0;
  [v14 unlock];
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  swift_weakInit();
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = v16;
  sub_10025EDD4(0, 0, v12, &unk_1013AC490, v17);

  sub_1000BC4D4(&qword_1016A2BD0, &unk_1013AC3F8);
  swift_allocObject();
  v18 = Future.init()();
  sub_1004EAA98(v26, v25);
  v19 = qword_1016A2650;
  v20 = swift_allocObject();
  swift_weakInit();
  sub_10001F280(a5 + v19, v24);
  sub_10001F280(v25, v23);
  v21 = swift_allocObject();
  v21[2] = v18;
  v21[3] = v20;
  sub_10000A748(v24, (v21 + 4));
  sub_10000A748(v23, (v21 + 9));
  v21[14] = v9;

  dispatch thunk of FMNServerInteractionController.sendRequest(endpoint:content:source:credential:responseHandler:)();

  sub_100007BAC(v25);

  sub_100007BAC(v26);
  return v18;
}

uint64_t sub_1004FC6D8(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, void *a5)
{
  v9 = *a5;
  v10 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  __chkstk_darwin(v10 - 8);
  v12 = v23 - v11;
  v26[3] = &type metadata for AccessoryInfoRequest;
  v13 = sub_10050113C();
  v26[0] = a1;
  v26[1] = a2;
  v26[4] = v13;
  v26[2] = a3;
  v14 = *(a5 + qword_1016A2660);

  sub_100017D5C(a2, a3);
  [v14 lock];
  *(a5 + qword_1016A2668) = 0;
  [v14 unlock];
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  swift_weakInit();
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = v16;
  sub_10025EDD4(0, 0, v12, &unk_1013AC460, v17);

  sub_1000BC4D4(&qword_1016A2BD0, &unk_1013AC3F8);
  swift_allocObject();
  v18 = Future.init()();
  sub_1004EAA98(v26, v25);
  v19 = qword_1016A2650;
  v20 = swift_allocObject();
  swift_weakInit();
  sub_10001F280(a5 + v19, v24);
  sub_10001F280(v25, v23);
  v21 = swift_allocObject();
  v21[2] = v18;
  v21[3] = v20;
  sub_10000A748(v24, (v21 + 4));
  sub_10000A748(v23, (v21 + 9));
  v21[14] = v9;

  dispatch thunk of FMNServerInteractionController.sendRequest(endpoint:content:source:credential:responseHandler:)();

  sub_100007BAC(v25);

  sub_100007BAC(v26);
  return v18;
}

uint64_t sub_1004FC9E4(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, void *a5)
{
  v9 = *a5;
  v10 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  __chkstk_darwin(v10 - 8);
  v12 = v23 - v11;
  v26[3] = &type metadata for UnpairRequest;
  v13 = sub_100501238();
  v26[0] = a1;
  v26[1] = a2;
  v26[4] = v13;
  v26[2] = a3;
  v14 = *(a5 + qword_1016A2660);

  sub_100017D5C(a2, a3);
  [v14 lock];
  *(a5 + qword_1016A2668) = 0;
  [v14 unlock];
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  swift_weakInit();
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = v16;
  sub_10025EDD4(0, 0, v12, &unk_1013AC478, v17);

  sub_1000BC4D4(&qword_1016A2BD0, &unk_1013AC3F8);
  swift_allocObject();
  v18 = Future.init()();
  sub_1004EAA98(v26, v25);
  v19 = qword_1016A2650;
  v20 = swift_allocObject();
  swift_weakInit();
  sub_10001F280(a5 + v19, v24);
  sub_10001F280(v25, v23);
  v21 = swift_allocObject();
  v21[2] = v18;
  v21[3] = v20;
  sub_10000A748(v24, (v21 + 4));
  sub_10000A748(v23, (v21 + 9));
  v21[14] = v9;

  dispatch thunk of FMNServerInteractionController.sendRequest(endpoint:content:source:credential:responseHandler:)();

  sub_100007BAC(v25);

  sub_100007BAC(v26);
  return v18;
}

uint64_t sub_1004FCCF0(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, void *a5)
{
  v9 = *a5;
  v10 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  __chkstk_darwin(v10 - 8);
  v12 = v23 - v11;
  v26[3] = &type metadata for PairingLockCheckRequest;
  v13 = sub_10050158C();
  v26[0] = a1;
  v26[1] = a2;
  v26[4] = v13;
  v26[2] = a3;
  v14 = *(a5 + qword_1016A2660);

  sub_100017D5C(a2, a3);
  [v14 lock];
  *(a5 + qword_1016A2668) = 0;
  [v14 unlock];
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  swift_weakInit();
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = v16;
  sub_10025EDD4(0, 0, v12, &unk_1013AC4B8, v17);

  sub_1000BC4D4(&qword_1016A2BD0, &unk_1013AC3F8);
  swift_allocObject();
  v18 = Future.init()();
  sub_1004EAA98(v26, v25);
  v19 = qword_1016A2650;
  v20 = swift_allocObject();
  swift_weakInit();
  sub_10001F280(a5 + v19, v24);
  sub_10001F280(v25, v23);
  v21 = swift_allocObject();
  v21[2] = v18;
  v21[3] = v20;
  sub_10000A748(v24, (v21 + 4));
  sub_10000A748(v23, (v21 + 9));
  v21[14] = v9;

  dispatch thunk of FMNServerInteractionController.sendRequest(endpoint:content:source:credential:responseHandler:)();

  sub_100007BAC(v25);

  sub_100007BAC(v26);
  return v18;
}

uint64_t sub_1004FCFFC(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, void *a5)
{
  v9 = *a5;
  v10 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  __chkstk_darwin(v10 - 8);
  v12 = v23 - v11;
  v26[3] = &type metadata for AccessoryPairingLockCheckRequest;
  v13 = sub_100501730();
  v26[0] = a1;
  v26[1] = a2;
  v26[4] = v13;
  v26[2] = a3;
  v14 = *(a5 + qword_1016A2660);

  sub_100017D5C(a2, a3);
  [v14 lock];
  *(a5 + qword_1016A2668) = 0;
  [v14 unlock];
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  swift_weakInit();
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = v16;
  sub_10025EDD4(0, 0, v12, &unk_1013AC4E0, v17);

  sub_1000BC4D4(&qword_1016A2BD0, &unk_1013AC3F8);
  swift_allocObject();
  v18 = Future.init()();
  sub_1004EAA98(v26, v25);
  v19 = qword_1016A2650;
  v20 = swift_allocObject();
  swift_weakInit();
  sub_10001F280(a5 + v19, v24);
  sub_10001F280(v25, v23);
  v21 = swift_allocObject();
  v21[2] = v18;
  v21[3] = v20;
  sub_10000A748(v24, (v21 + 4));
  sub_10000A748(v23, (v21 + 9));
  v21[14] = v9;

  dispatch thunk of FMNServerInteractionController.sendRequest(endpoint:content:source:credential:responseHandler:)();

  sub_100007BAC(v25);

  sub_100007BAC(v26);
  return v18;
}

uint64_t sub_1004FD308(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, void *a5)
{
  v9 = *a5;
  v10 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  __chkstk_darwin(v10 - 8);
  v12 = v23 - v11;
  v26[3] = &type metadata for AccessoryUnpairRequest;
  v13 = sub_1005016DC();
  v26[0] = a1;
  v26[1] = a2;
  v26[4] = v13;
  v26[2] = a3;
  v14 = *(a5 + qword_1016A2660);

  sub_100017D5C(a2, a3);
  [v14 lock];
  *(a5 + qword_1016A2668) = 0;
  [v14 unlock];
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  swift_weakInit();
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = v16;
  sub_10025EDD4(0, 0, v12, &unk_1013AC4D8, v17);

  sub_1000BC4D4(&qword_1016A2BD0, &unk_1013AC3F8);
  swift_allocObject();
  v18 = Future.init()();
  sub_1004EAA98(v26, v25);
  v19 = qword_1016A2650;
  v20 = swift_allocObject();
  swift_weakInit();
  sub_10001F280(a5 + v19, v24);
  sub_10001F280(v25, v23);
  v21 = swift_allocObject();
  v21[2] = v18;
  v21[3] = v20;
  sub_10000A748(v24, (v21 + 4));
  sub_10000A748(v23, (v21 + 9));
  v21[14] = v9;

  dispatch thunk of FMNServerInteractionController.sendRequest(endpoint:content:source:credential:responseHandler:)();

  sub_100007BAC(v25);

  sub_100007BAC(v26);
  return v18;
}

uint64_t sub_1004FD614(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, void *a5)
{
  v9 = *a5;
  v10 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  __chkstk_darwin(v10 - 8);
  v12 = v23 - v11;
  v26[3] = &type metadata for AccessoryPairingLockAckRequest;
  v13 = sub_100501688();
  v26[0] = a1;
  v26[1] = a2;
  v26[4] = v13;
  v26[2] = a3;
  v14 = *(a5 + qword_1016A2660);

  sub_100017D5C(a2, a3);
  [v14 lock];
  *(a5 + qword_1016A2668) = 0;
  [v14 unlock];
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  swift_weakInit();
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = v16;
  sub_10025EDD4(0, 0, v12, &unk_1013AC4D0, v17);

  sub_1000BC4D4(&qword_1016A2BD0, &unk_1013AC3F8);
  swift_allocObject();
  v18 = Future.init()();
  sub_1004EAA98(v26, v25);
  v19 = qword_1016A2650;
  v20 = swift_allocObject();
  swift_weakInit();
  sub_10001F280(a5 + v19, v24);
  sub_10001F280(v25, v23);
  v21 = swift_allocObject();
  v21[2] = v18;
  v21[3] = v20;
  sub_10000A748(v24, (v21 + 4));
  sub_10000A748(v23, (v21 + 9));
  v21[14] = v9;

  dispatch thunk of FMNServerInteractionController.sendRequest(endpoint:content:source:credential:responseHandler:)();

  sub_100007BAC(v25);

  sub_100007BAC(v26);
  return v18;
}

uint64_t sub_1004FD920(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, void *a5)
{
  v9 = *a5;
  v10 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  __chkstk_darwin(v10 - 8);
  v12 = v23 - v11;
  v26[3] = &type metadata for PairingLockAckRequest;
  v13 = sub_100501394();
  v26[0] = a1;
  v26[1] = a2;
  v26[4] = v13;
  v26[2] = a3;
  v14 = *(a5 + qword_1016A2660);

  sub_100017D5C(a2, a3);
  [v14 lock];
  *(a5 + qword_1016A2668) = 0;
  [v14 unlock];
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  swift_weakInit();
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = v16;
  sub_10025EDD4(0, 0, v12, &unk_1013AC488, v17);

  sub_1000BC4D4(&qword_1016A2BD0, &unk_1013AC3F8);
  swift_allocObject();
  v18 = Future.init()();
  sub_1004EAA98(v26, v25);
  v19 = qword_1016A2650;
  v20 = swift_allocObject();
  swift_weakInit();
  sub_10001F280(a5 + v19, v24);
  sub_10001F280(v25, v23);
  v21 = swift_allocObject();
  v21[2] = v18;
  v21[3] = v20;
  sub_10000A748(v24, (v21 + 4));
  sub_10000A748(v23, (v21 + 9));
  v21[14] = v9;

  dispatch thunk of FMNServerInteractionController.sendRequest(endpoint:content:source:credential:responseHandler:)();

  sub_100007BAC(v25);

  sub_100007BAC(v26);
  return v18;
}

uint64_t sub_1004FDC2C(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, void *a5)
{
  v9 = *a5;
  v10 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  __chkstk_darwin(v10 - 8);
  v12 = v23 - v11;
  v26[3] = &type metadata for PencilPairingLockCheckRequest;
  v13 = sub_1005010E8();
  v26[0] = a1;
  v26[1] = a2;
  v26[4] = v13;
  v26[2] = a3;
  v14 = *(a5 + qword_1016A2660);

  sub_100017D5C(a2, a3);
  [v14 lock];
  *(a5 + qword_1016A2668) = 0;
  [v14 unlock];
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  swift_weakInit();
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = v16;
  sub_10025EDD4(0, 0, v12, &unk_1013AC458, v17);

  sub_1000BC4D4(&qword_1016A2BD0, &unk_1013AC3F8);
  swift_allocObject();
  v18 = Future.init()();
  sub_1004EAA98(v26, v25);
  v19 = qword_1016A2650;
  v20 = swift_allocObject();
  swift_weakInit();
  sub_10001F280(a5 + v19, v24);
  sub_10001F280(v25, v23);
  v21 = swift_allocObject();
  v21[2] = v18;
  v21[3] = v20;
  sub_10000A748(v24, (v21 + 4));
  sub_10000A748(v23, (v21 + 9));
  v21[14] = v9;

  dispatch thunk of FMNServerInteractionController.sendRequest(endpoint:content:source:credential:responseHandler:)();

  sub_100007BAC(v25);

  sub_100007BAC(v26);
  return v18;
}

uint64_t sub_1004FDF38(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, void *a5)
{
  v9 = *a5;
  v10 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  __chkstk_darwin(v10 - 8);
  v12 = v23 - v11;
  v26[3] = &type metadata for PencilPairingLockAckRequest;
  v13 = sub_100500DB8();
  v26[0] = a1;
  v26[1] = a2;
  v26[4] = v13;
  v26[2] = a3;
  v14 = *(a5 + qword_1016A2660);

  sub_100017D5C(a2, a3);
  [v14 lock];
  *(a5 + qword_1016A2668) = 0;
  [v14 unlock];
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  swift_weakInit();
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = v16;
  sub_10025EDD4(0, 0, v12, &unk_1013AC428, v17);

  sub_1000BC4D4(&qword_1016A2BD0, &unk_1013AC3F8);
  swift_allocObject();
  v18 = Future.init()();
  sub_1004EAA98(v26, v25);
  v19 = qword_1016A2650;
  v20 = swift_allocObject();
  swift_weakInit();
  sub_10001F280(a5 + v19, v24);
  sub_10001F280(v25, v23);
  v21 = swift_allocObject();
  v21[2] = v18;
  v21[3] = v20;
  sub_10000A748(v24, (v21 + 4));
  sub_10000A748(v23, (v21 + 9));
  v21[14] = v9;

  dispatch thunk of FMNServerInteractionController.sendRequest(endpoint:content:source:credential:responseHandler:)();

  sub_100007BAC(v25);

  sub_100007BAC(v26);
  return v18;
}

uint64_t sub_1004FE244(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, void *a5)
{
  v9 = *a5;
  v10 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  __chkstk_darwin(v10 - 8);
  v12 = v23 - v11;
  v26[3] = &type metadata for PencilUnpairRequest;
  v13 = sub_100500B5C();
  v26[0] = a1;
  v26[1] = a2;
  v26[4] = v13;
  v26[2] = a3;
  v14 = *(a5 + qword_1016A2660);

  sub_100017D5C(a2, a3);
  [v14 lock];
  *(a5 + qword_1016A2668) = 0;
  [v14 unlock];
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  swift_weakInit();
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = v16;
  sub_10025EDD4(0, 0, v12, &unk_1013AB550, v17);

  sub_1000BC4D4(&qword_1016A2BD0, &unk_1013AC3F8);
  swift_allocObject();
  v18 = Future.init()();
  sub_1004EAA98(v26, v25);
  v19 = qword_1016A2650;
  v20 = swift_allocObject();
  swift_weakInit();
  sub_10001F280(a5 + v19, v24);
  sub_10001F280(v25, v23);
  v21 = swift_allocObject();
  v21[2] = v18;
  v21[3] = v20;
  sub_10000A748(v24, (v21 + 4));
  sub_10000A748(v23, (v21 + 9));
  v21[14] = v9;

  dispatch thunk of FMNServerInteractionController.sendRequest(endpoint:content:source:credential:responseHandler:)();

  sub_100007BAC(v25);

  sub_100007BAC(v26);
  return v18;
}

uint64_t sub_1004FE550(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, void *a5)
{
  v9 = *a5;
  v10 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  __chkstk_darwin(v10 - 8);
  v12 = v23 - v11;
  v26[3] = &type metadata for AirPodsSWPairingLockCheckRequest;
  v13 = sub_100501490();
  v26[0] = a1;
  v26[1] = a2;
  v26[4] = v13;
  v26[2] = a3;
  v14 = *(a5 + qword_1016A2660);

  sub_100017D5C(a2, a3);
  [v14 lock];
  *(a5 + qword_1016A2668) = 0;
  [v14 unlock];
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  swift_weakInit();
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = v16;
  sub_10025EDD4(0, 0, v12, &unk_1013AC4A0, v17);

  sub_1000BC4D4(&qword_1016A2BD0, &unk_1013AC3F8);
  swift_allocObject();
  v18 = Future.init()();
  sub_1004EAA98(v26, v25);
  v19 = qword_1016A2650;
  v20 = swift_allocObject();
  swift_weakInit();
  sub_10001F280(a5 + v19, v24);
  sub_10001F280(v25, v23);
  v21 = swift_allocObject();
  v21[2] = v18;
  v21[3] = v20;
  sub_10000A748(v24, (v21 + 4));
  sub_10000A748(v23, (v21 + 9));
  v21[14] = v9;

  dispatch thunk of FMNServerInteractionController.sendRequest(endpoint:content:source:credential:responseHandler:)();

  sub_100007BAC(v25);

  sub_100007BAC(v26);
  return v18;
}

uint64_t sub_1004FE85C(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, void *a5)
{
  v9 = *a5;
  v10 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  __chkstk_darwin(v10 - 8);
  v12 = v23 - v11;
  v26[3] = &type metadata for AirPodsPairingLockCheckRequest;
  v13 = sub_100501538();
  v26[0] = a1;
  v26[1] = a2;
  v26[4] = v13;
  v26[2] = a3;
  v14 = *(a5 + qword_1016A2660);

  sub_100017D5C(a2, a3);
  [v14 lock];
  *(a5 + qword_1016A2668) = 0;
  [v14 unlock];
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  swift_weakInit();
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = v16;
  sub_10025EDD4(0, 0, v12, &unk_1013AC4B0, v17);

  sub_1000BC4D4(&qword_1016A2BD0, &unk_1013AC3F8);
  swift_allocObject();
  v18 = Future.init()();
  sub_1004EAA98(v26, v25);
  v19 = qword_1016A2650;
  v20 = swift_allocObject();
  swift_weakInit();
  sub_10001F280(a5 + v19, v24);
  sub_10001F280(v25, v23);
  v21 = swift_allocObject();
  v21[2] = v18;
  v21[3] = v20;
  sub_10000A748(v24, (v21 + 4));
  sub_10000A748(v23, (v21 + 9));
  v21[14] = v9;

  dispatch thunk of FMNServerInteractionController.sendRequest(endpoint:content:source:credential:responseHandler:)();

  sub_100007BAC(v25);

  sub_100007BAC(v26);
  return v18;
}

uint64_t sub_1004FEB68(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, void *a5)
{
  v9 = *a5;
  v10 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  __chkstk_darwin(v10 - 8);
  v12 = v23 - v11;
  v26[3] = &type metadata for AirPodsUnpairRequest;
  v13 = sub_1005011E4();
  v26[0] = a1;
  v26[1] = a2;
  v26[4] = v13;
  v26[2] = a3;
  v14 = *(a5 + qword_1016A2660);

  sub_100017D5C(a2, a3);
  [v14 lock];
  *(a5 + qword_1016A2668) = 0;
  [v14 unlock];
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  swift_weakInit();
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = v16;
  sub_10025EDD4(0, 0, v12, &unk_1013AC470, v17);

  sub_1000BC4D4(&qword_1016A2BD0, &unk_1013AC3F8);
  swift_allocObject();
  v18 = Future.init()();
  sub_1004EAA98(v26, v25);
  v19 = qword_1016A2650;
  v20 = swift_allocObject();
  swift_weakInit();
  sub_10001F280(a5 + v19, v24);
  sub_10001F280(v25, v23);
  v21 = swift_allocObject();
  v21[2] = v18;
  v21[3] = v20;
  sub_10000A748(v24, (v21 + 4));
  sub_10000A748(v23, (v21 + 9));
  v21[14] = v9;

  dispatch thunk of FMNServerInteractionController.sendRequest(endpoint:content:source:credential:responseHandler:)();

  sub_100007BAC(v25);

  sub_100007BAC(v26);
  return v18;
}

uint64_t sub_1004FEE74(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, void *a5)
{
  v9 = *a5;
  v10 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  __chkstk_darwin(v10 - 8);
  v12 = v23 - v11;
  v26[3] = &type metadata for AirPodsPairingLockAckRequest;
  v13 = sub_1005014E4();
  v26[0] = a1;
  v26[1] = a2;
  v26[4] = v13;
  v26[2] = a3;
  v14 = *(a5 + qword_1016A2660);

  sub_100017D5C(a2, a3);
  [v14 lock];
  *(a5 + qword_1016A2668) = 0;
  [v14 unlock];
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  swift_weakInit();
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = v16;
  sub_10025EDD4(0, 0, v12, &unk_1013AC4A8, v17);

  sub_1000BC4D4(&qword_1016A2BD0, &unk_1013AC3F8);
  swift_allocObject();
  v18 = Future.init()();
  sub_1004EAA98(v26, v25);
  v19 = qword_1016A2650;
  v20 = swift_allocObject();
  swift_weakInit();
  sub_10001F280(a5 + v19, v24);
  sub_10001F280(v25, v23);
  v21 = swift_allocObject();
  v21[2] = v18;
  v21[3] = v20;
  sub_10000A748(v24, (v21 + 4));
  sub_10000A748(v23, (v21 + 9));
  v21[14] = v9;

  dispatch thunk of FMNServerInteractionController.sendRequest(endpoint:content:source:credential:responseHandler:)();

  sub_100007BAC(v25);

  sub_100007BAC(v26);
  return v18;
}

uint64_t sub_1004FF180(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, void *a5)
{
  v9 = *a5;
  v10 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  __chkstk_darwin(v10 - 8);
  v12 = v23 - v11;
  v26[3] = &type metadata for AirPodsSWPairingLockAckRequest;
  v13 = sub_10050143C();
  v26[0] = a1;
  v26[1] = a2;
  v26[4] = v13;
  v26[2] = a3;
  v14 = *(a5 + qword_1016A2660);

  sub_100017D5C(a2, a3);
  [v14 lock];
  *(a5 + qword_1016A2668) = 0;
  [v14 unlock];
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  swift_weakInit();
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = v16;
  sub_10025EDD4(0, 0, v12, &unk_1013AC498, v17);

  sub_1000BC4D4(&qword_1016A2BD0, &unk_1013AC3F8);
  swift_allocObject();
  v18 = Future.init()();
  sub_1004EAA98(v26, v25);
  v19 = qword_1016A2650;
  v20 = swift_allocObject();
  swift_weakInit();
  sub_10001F280(a5 + v19, v24);
  sub_10001F280(v25, v23);
  v21 = swift_allocObject();
  v21[2] = v18;
  v21[3] = v20;
  sub_10000A748(v24, (v21 + 4));
  sub_10000A748(v23, (v21 + 9));
  v21[14] = v9;

  dispatch thunk of FMNServerInteractionController.sendRequest(endpoint:content:source:credential:responseHandler:)();

  sub_100007BAC(v25);

  sub_100007BAC(v26);
  return v18;
}

uint64_t sub_1004FF48C(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, void *a5)
{
  v9 = *a5;
  v10 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  __chkstk_darwin(v10 - 8);
  v12 = v23 - v11;
  v26[3] = &type metadata for AccountCheckRequest;
  v13 = sub_100501190();
  v26[0] = a1;
  v26[1] = a2;
  v26[4] = v13;
  v26[2] = a3;
  v14 = *(a5 + qword_1016A2660);

  sub_100017D5C(a2, a3);
  [v14 lock];
  *(a5 + qword_1016A2668) = 0;
  [v14 unlock];
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  swift_weakInit();
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = v16;
  sub_10025EDD4(0, 0, v12, &unk_1013AC468, v17);

  sub_1000BC4D4(&qword_1016A2BD0, &unk_1013AC3F8);
  swift_allocObject();
  v18 = Future.init()();
  sub_1004EAA98(v26, v25);
  v19 = qword_1016A2650;
  v20 = swift_allocObject();
  swift_weakInit();
  sub_10001F280(a5 + v19, v24);
  sub_10001F280(v25, v23);
  v21 = swift_allocObject();
  v21[2] = v18;
  v21[3] = v20;
  sub_10000A748(v24, (v21 + 4));
  sub_10000A748(v23, (v21 + 9));
  v21[14] = v9;

  dispatch thunk of FMNServerInteractionController.sendRequest(endpoint:content:source:credential:responseHandler:)();

  sub_100007BAC(v25);

  sub_100007BAC(v26);
  return v18;
}

uint64_t sub_1004FF798(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, void *a5)
{
  v9 = *a5;
  v10 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  __chkstk_darwin(v10 - 8);
  v12 = v23 - v11;
  v26[3] = &type metadata for PairingLockUpdateRequest;
  v13 = sub_10050128C();
  v26[0] = a1;
  v26[1] = a2;
  v26[4] = v13;
  v26[2] = a3;
  v14 = *(a5 + qword_1016A2660);

  sub_100017D5C(a2, a3);
  [v14 lock];
  *(a5 + qword_1016A2668) = 0;
  [v14 unlock];
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  swift_weakInit();
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = v16;
  sub_10025EDD4(0, 0, v12, &unk_1013AC480, v17);

  sub_1000BC4D4(&qword_1016A2BD0, &unk_1013AC3F8);
  swift_allocObject();
  v18 = Future.init()();
  sub_1004EAA98(v26, v25);
  v19 = qword_1016A2650;
  v20 = swift_allocObject();
  swift_weakInit();
  sub_10001F280(a5 + v19, v24);
  sub_10001F280(v25, v23);
  v21 = swift_allocObject();
  v21[2] = v18;
  v21[3] = v20;
  sub_10000A748(v24, (v21 + 4));
  sub_10000A748(v23, (v21 + 9));
  v21[14] = v9;

  dispatch thunk of FMNServerInteractionController.sendRequest(endpoint:content:source:credential:responseHandler:)();

  sub_100007BAC(v25);

  sub_100007BAC(v26);
  return v18;
}

uint64_t sub_1004FFAA4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x754E6C6169726573 && a2 == 0xEC0000007265626DLL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6449616E6D66 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x49746375646F7270 && a2 == 0xE900000000000064 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6449726F646E6576 && a2 == 0xE800000000000000)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

id sub_1004FFC10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  __chkstk_darwin(v5 - 8);
  v7 = &v68 - v6;
  v8 = type metadata accessor for PencilUnpairData.DeviceUnpairData(0);
  v9 = *(v8 - 1);
  __chkstk_darwin(v8);
  v11 = (&v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for LocalFindableAccessoryRecord(0);
  v13 = sub_100314604(*(a1 + v12[10]), *(a1 + v12[11]));
  if (v14 >> 60 == 15)
  {
    sub_100500BC4();
    swift_allocError();
    *v15 = xmmword_1013AC380;
    *(v15 + 16) = 3;
    swift_willThrow();
    return sub_100501020(a1, type metadata accessor for LocalFindableAccessoryRecord);
  }

  v17 = v13;
  v75 = a2;
  v71 = v9;
  v72 = v2;
  v18 = (a1 + v12[7]);
  v20 = *v18;
  v19 = v18[1];
  v21 = v12[9];
  v77 = v14;
  v22 = type metadata accessor for UUID();
  v23 = *(v22 - 8);
  v76 = v17;
  v24 = v23;
  v25 = *(v23 + 16);
  v70 = a1;
  v25(v7, a1 + v21, v22);
  (*(v24 + 56))(v7, 0, 1, v22);
  v26 = v76;
  v73 = v19;
  v74 = v20;
  sub_100017D5C(v20, v19);
  v27 = sub_100313B54(v26, v77);
  v29 = v28;
  v30 = Data.hexString.getter();
  v32 = v31;
  result = sub_100016590(v27, v29);
  v33 = v77 >> 62;
  if ((v77 >> 62) > 1)
  {
    v34 = v75;
    if (v33 != 2)
    {
      goto LABEL_13;
    }

    v36 = *(v26 + 16);
    v35 = *(v26 + 24);
    v37 = __OFSUB__(v35, v36);
    v38 = v35 - v36;
    if (!v37)
    {
      goto LABEL_12;
    }

    __break(1u);
  }

  else if (!v33)
  {
    v34 = v75;
    goto LABEL_13;
  }

  LODWORD(v38) = HIDWORD(v26) - v26;
  if (__OFSUB__(HIDWORD(v26), v26))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v38 = v38;
  v34 = v75;
LABEL_12:
  if (v38 < -1)
  {
    __break(1u);
    goto LABEL_17;
  }

LABEL_13:
  v39 = Data.subdata(in:)();
  v41 = v40;
  v42 = Data.hexString.getter();
  v75 = v43;
  sub_100016590(v39, v41);
  v44 = v73;
  *v11 = v74;
  v11[1] = v44;
  sub_1000D2AD8(v7, v11 + v8[5], &qword_1016980D0, &unk_10138F3B0);
  v45 = (v11 + v8[6]);
  *v45 = v30;
  v45[1] = v32;
  v46 = v8[7];
  v74 = v11;
  v47 = (v11 + v46);
  v48 = v75;
  *v47 = v42;
  v47[1] = v48;
  result = MobileGestalt_get_current_device();
  if (!result)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v49 = result;
  uniqueChipID = MobileGestalt_get_uniqueChipID();

  result = MobileGestalt_get_current_device();
  if (result)
  {
    v51 = result;
    chipID = MobileGestalt_get_chipID();

    v78 = uniqueChipID;
    v75 = dispatch thunk of CustomStringConvertible.description.getter();
    v73 = v53;
    v78 = chipID;
    v54 = dispatch thunk of CustomStringConvertible.description.getter();
    v68 = v55;
    v69 = v54;
    v56 = sub_100EF9784();
    v58 = v57;
    v59 = v70;
    v60 = UUID.uuidString.getter();
    v62 = v61;
    sub_1000BC4D4(&qword_1016A2BE0, &qword_1013AC408);
    v63 = (*(v71 + 80) + 32) & ~*(v71 + 80);
    v64 = swift_allocObject();
    *(v64 + 16) = xmmword_101385D80;
    v65 = v74;
    sub_100501080(v74, v64 + v63, type metadata accessor for PencilUnpairData.DeviceUnpairData);
    sub_100006654(v76, v77);
    sub_100501020(v59, type metadata accessor for LocalFindableAccessoryRecord);
    result = sub_100501020(v65, type metadata accessor for PencilUnpairData.DeviceUnpairData);
    v66 = v73;
    *v34 = v75;
    *(v34 + 8) = v66;
    v67 = v68;
    *(v34 + 16) = v69;
    *(v34 + 24) = v67;
    *(v34 + 32) = v56;
    *(v34 + 40) = v58;
    *(v34 + 48) = v60;
    *(v34 + 56) = v62;
    *(v34 + 64) = 0;
    *(v34 + 72) = v64;
    return result;
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_1005000E0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x69634572656E776FLL && a2 == 0xE900000000000064;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x69684372656E776FLL && a2 == 0xEB00000000644970 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x800000010134F970 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1684628597 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6F4365766F6D6572 && a2 == 0xED0000747865746ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x73656369766564 && a2 == 0xE700000000000000)
  {

    return 5;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_1005002F8(const void *a1, uint64_t a2)
{
  v75 = &type metadata for PencilPairingCheckData;
  v76 = &off_101624FD0;
  v74[0] = swift_allocObject();
  memcpy((v74[0] + 16), a1, 0x130uLL);
  v72 = type metadata accessor for PencilPairingLockCheckResponse(0);
  v73 = &off_10162FA58;
  v4 = sub_1000280DC(v71);
  sub_100501080(a2, v4, type metadata accessor for PencilPairingLockCheckResponse);
  sub_1002DDD40(a1, &v69);
  v5 = static os_log_type_t.debug.getter();
  if (qword_1016950C8 != -1)
  {
    swift_once();
  }

  v6 = qword_10177C410;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_101385D80;
  v8 = sub_1000035D0(v74, &type metadata for PencilPairingCheckData);
  v9 = v8[30];
  v10 = v8[31];
  sub_100017D5C(v9, v10);
  v11 = Data.hexString.getter();
  v13 = v12;
  sub_100016590(v9, v10);
  *(v7 + 56) = &type metadata for String;
  v14 = sub_100008C00();
  *(v7 + 64) = v14;
  *(v7 + 32) = v11;
  *(v7 + 40) = v13;
  os_log(_:dso:log:_:_:)(v5, &_mh_execute_header, v6, "nonce: %@", 9, 2, v7);

  v15 = static os_log_type_t.debug.getter();
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_101385D80;
  v17 = sub_1000035D0(v71, v72);
  v18 = *v17;
  v19 = v17[1];
  sub_100017D5C(*v17, v19);
  v20 = Data.hexString.getter();
  v22 = v21;
  sub_100016590(v18, v19);
  *(v16 + 56) = &type metadata for String;
  *(v16 + 64) = v14;
  *(v16 + 32) = v20;
  *(v16 + 40) = v22;
  os_log(_:dso:log:_:_:)(v15, &_mh_execute_header, v6, "serialNumber: %@", 16, 2, v16);

  v23 = static os_log_type_t.debug.getter();
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_101385D80;
  v25 = sub_1000035D0(v71, v72);
  v26 = v25[2];
  v27 = v25[3];
  sub_100017D5C(v26, v27);
  v28 = Data.hexString.getter();
  v30 = v29;
  sub_100016590(v26, v27);
  *(v24 + 56) = &type metadata for String;
  *(v24 + 64) = v14;
  *(v24 + 32) = v28;
  *(v24 + 40) = v30;
  os_log(_:dso:log:_:_:)(v23, &_mh_execute_header, v6, "altSerialNumber: %@", 19, 2, v24);

  v31 = static os_log_type_t.debug.getter();
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_101385D80;
  v33 = sub_1000035D0(v74, v75);
  v34 = v33[18];
  v35 = v33[19];
  sub_100017D5C(v34, v35);
  v36 = Data.hexString.getter();
  v38 = v37;
  sub_100016590(v34, v35);
  *(v32 + 56) = &type metadata for String;
  *(v32 + 64) = v14;
  *(v32 + 32) = v36;
  *(v32 + 40) = v38;
  os_log(_:dso:log:_:_:)(v31, &_mh_execute_header, v6, "SeedK1: %@", 10, 2, v32);

  v39 = static os_log_type_t.debug.getter();
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_101385D80;
  v41 = sub_1000035D0(v71, v72);
  v42 = v41[4];
  v43 = v41[5];
  sub_100017D5C(v42, v43);
  v44 = Data.hexString.getter();
  v46 = v45;
  sub_100016590(v42, v43);
  *(v40 + 56) = &type metadata for String;
  *(v40 + 64) = v14;
  *(v40 + 32) = v44;
  *(v40 + 40) = v46;
  os_log(_:dso:log:_:_:)(v39, &_mh_execute_header, v6, "SeedS: %@", 9, 2, v40);

  v47 = sub_1000035D0(v74, v75);
  v49 = v47[31];
  v69 = v47[30];
  v48 = v69;
  v70 = v49;
  v50 = sub_1000035D0(v71, v72);
  v51 = *v50;
  v52 = v50[1];
  sub_100017D5C(v48, v49);
  sub_100017D5C(v51, v52);
  Data.append(_:)();
  sub_100016590(v51, v52);
  v53 = sub_1000035D0(v71, v72);
  v54 = v53[2];
  v55 = v53[3];
  sub_100017D5C(v54, v55);
  Data.append(_:)();
  sub_100016590(v54, v55);
  v56 = sub_1000035D0(v74, v75);
  v57 = v56[18];
  v58 = v56[19];
  sub_100017D5C(v57, v58);
  Data.append(_:)();
  sub_100016590(v57, v58);
  v59 = sub_1000035D0(v71, v72);
  v60 = v59[4];
  v61 = v59[5];
  sub_100017D5C(v60, v61);
  Data.append(_:)();
  sub_100016590(v60, v61);
  v62 = static os_log_type_t.default.getter();
  v63 = swift_allocObject();
  *(v63 + 16) = xmmword_101385D80;
  v64 = v69;
  v65 = v70;
  v66 = Data.hexString.getter();
  *(v63 + 56) = &type metadata for String;
  *(v63 + 64) = v14;
  *(v63 + 32) = v66;
  *(v63 + 40) = v67;
  os_log(_:dso:log:_:_:)(v62, &_mh_execute_header, v6, " dataForSignatureVerification: %@", 33, 2, v63);

  sub_100017D5C(v64, v65);
  sub_100016590(v64, v65);
  sub_100007BAC(v74);
  sub_100007BAC(v71);
  return v64;
}

uint64_t sub_1005008D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_1016947A8 != -1)
  {
    swift_once();
  }

  v8 = qword_10177AEE8;
  if (qword_10177AEE8 >> 60 == 15)
  {
    if (qword_1016950E0 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_1000076D4(v9, qword_10177C448);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "verifyPencilSignature: Missing SignatureVerificationKey!", v12, 2u);
    }

    v13 = 0;
  }

  else
  {
    v14 = qword_10177AEE0;
    sub_100017D5C(qword_10177AEE0, qword_10177AEE8);
    v13 = sub_100A74FAC(v14, v8, a1, a2, a3, a4, kSecKeyAlgorithmECDSASignatureMessageX962SHA256);
    sub_100006654(v14, v8);
  }

  return v13 & 1;
}

uint64_t type metadata accessor for PencilUnpairData.DeviceUnpairData(uint64_t a1)
{
  result = qword_1016A2CF8;
  if (!qword_1016A2CF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_100500B5C()
{
  result = qword_1016A2BC8;
  if (!qword_1016A2BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A2BC8);
  }

  return result;
}

unint64_t sub_100500BC4()
{
  result = qword_1016A2BD8;
  if (!qword_1016A2BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A2BD8);
  }

  return result;
}

uint64_t sub_100500C80(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v6 = *(sub_1000BC4D4(a2, a3) - 8);
  v7 = v4 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a4(a1, v7);
}

uint64_t sub_100500D30(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v6 = *(sub_1000BC4D4(a2, a3) - 8);
  v7 = v4 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a4(a1, v7);
}

unint64_t sub_100500DB8()
{
  result = qword_1016A2BF8;
  if (!qword_1016A2BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A2BF8);
  }

  return result;
}

uint64_t sub_100500E0C()
{

  sub_100007BAC((v0 + 32));
  sub_100007BAC((v0 + 72));

  return _swift_deallocObject(v0, 120);
}

uint64_t sub_100500E6C(uint64_t a1)
{
  sub_1000BC4D4(&qword_1016A2C00, &unk_1013AC440);

  return sub_1004F6D38(a1);
}

uint64_t sub_100500EEC(uint64_t a1)
{
  v3 = *(sub_1000BC4D4(&qword_1016A2C00, &unk_1013AC440) - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + 16);
  v7 = *(v1 + v5);

  return sub_1004F6F54(a1, v6, v1 + v4, v7, (v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_100500FB0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_101698638, &qword_1013AC450);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100501020(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100501080(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1005010E8()
{
  result = qword_1016A2C10;
  if (!qword_1016A2C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A2C10);
  }

  return result;
}

unint64_t sub_10050113C()
{
  result = qword_1016A2C18;
  if (!qword_1016A2C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A2C18);
  }

  return result;
}

unint64_t sub_100501190()
{
  result = qword_1016A2C20;
  if (!qword_1016A2C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A2C20);
  }

  return result;
}

unint64_t sub_1005011E4()
{
  result = qword_1016A2C28;
  if (!qword_1016A2C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A2C28);
  }

  return result;
}

unint64_t sub_100501238()
{
  result = qword_1016A2C30;
  if (!qword_1016A2C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A2C30);
  }

  return result;
}

unint64_t sub_10050128C()
{
  result = qword_1016A2C38;
  if (!qword_1016A2C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A2C38);
  }

  return result;
}

uint64_t sub_1005012E0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100014650;

  return sub_1004EAC04(a1, v4, v5, v6);
}

unint64_t sub_100501394()
{
  result = qword_1016A2C40;
  if (!qword_1016A2C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A2C40);
  }

  return result;
}

unint64_t sub_1005013E8()
{
  result = qword_1016A2C48;
  if (!qword_1016A2C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A2C48);
  }

  return result;
}

unint64_t sub_10050143C()
{
  result = qword_1016A2C50;
  if (!qword_1016A2C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A2C50);
  }

  return result;
}

unint64_t sub_100501490()
{
  result = qword_1016A2C58;
  if (!qword_1016A2C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A2C58);
  }

  return result;
}

unint64_t sub_1005014E4()
{
  result = qword_1016A2C60;
  if (!qword_1016A2C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A2C60);
  }

  return result;
}

unint64_t sub_100501538()
{
  result = qword_1016A2C68;
  if (!qword_1016A2C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A2C68);
  }

  return result;
}

unint64_t sub_10050158C()
{
  result = qword_1016A2C70;
  if (!qword_1016A2C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A2C70);
  }

  return result;
}

unint64_t sub_1005015E0()
{
  result = qword_1016A2C78;
  if (!qword_1016A2C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A2C78);
  }

  return result;
}

unint64_t sub_100501634()
{
  result = qword_1016A2C80;
  if (!qword_1016A2C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A2C80);
  }

  return result;
}

unint64_t sub_100501688()
{
  result = qword_1016A2C88;
  if (!qword_1016A2C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A2C88);
  }

  return result;
}

unint64_t sub_1005016DC()
{
  result = qword_1016A2C90;
  if (!qword_1016A2C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A2C90);
  }

  return result;
}

unint64_t sub_100501730()
{
  result = qword_1016A2C98;
  if (!qword_1016A2C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A2C98);
  }

  return result;
}

uint64_t sub_10050178C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 304))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 128);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1005017D4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 296) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
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
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 304) = 1;
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
      *(result + 128) = (a2 - 1);
      return result;
    }

    *(result + 304) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_100501874(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  v7 = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  result = a2[11];
  v11 = a2[12];
  v12 = a2[14];
  *(a1 + 208) = a2[13];
  *(a1 + 224) = v12;
  *(a1 + 176) = result;
  *(a1 + 192) = v11;
  return result;
}

uint64_t sub_1005018B8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 240))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_100501914(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 232) = 0;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
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
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 240) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 240) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

void sub_1005019DC(uint64_t a1)
{
  sub_100395648(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_100501A68(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100501AB0(uint64_t result, int a2, int a3)
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
      *(result + 56) = (a2 - 1);
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