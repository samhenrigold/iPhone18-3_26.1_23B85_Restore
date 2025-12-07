uint64_t sub_1000431B4()
{
  v1[3] = v0;
  v1[4] = *v0;
  v1[5] = *v0;
  return _swift_task_switch(sub_100043224, v0, 0);
}

uint64_t sub_100043224()
{
  v11 = (*(*(v0[5] + 88) + 8))();
  v1 = *(v11 + 16);
  if (v1)
  {
    v2 = type metadata accessor for XPCEventDispatcher();
    v3 = (v11 + 56);
    do
    {
      v4 = v0[4];
      v5 = *(v3 - 3);
      v6 = *(v3 - 2);
      v7 = *(v3 - 1);
      v8 = *v3;
      v0[2] = v0[3];

      sub_10004A75C(v5, v6, v7, v8, (v0 + 2), v2, v4, &off_10018C6F0);

      v3 += 4;
      --v1;
    }

    while (v1);
  }

  sub_100003A00();

  return v9();
}

uint64_t sub_100043354()
{
  sub_1000036A0();
  v1[22] = v2;
  v1[23] = v0;
  v3 = *v0;
  v1[24] = *v0;
  v1[25] = *(v3 + 80);
  sub_10000518C();
  v1[26] = v4;
  v1[27] = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  v1[28] = v5;
  v1[29] = *(v5 - 8);
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();

  return _swift_task_switch(sub_1000434C0, v0, 0);
}

uint64_t sub_1000434C0()
{
  v57 = v0;
  v0[15] = v0[25];
  v1 = v0 + 15;
  sub_10002EB80(&qword_10019A250, &qword_10014DF40);
  String.init<A>(describing:)();
  result = LNLogSubsystem;
  if (!LNLogSubsystem)
  {
    __break(1u);
    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    return result;
  }

  v3 = v0 + 2;
  v4 = v0 + 7;
  v5 = v0[22];
  String.init(cString:)();
  Logger.init(subsystem:category:)();
  sub_100013334(v5, (v0 + 2));
  sub_100013334(v5, (v0 + 7));
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[33];
  v10 = v0[29];
  v53 = v0[28];
  if (v8)
  {
    v11 = swift_slowAlloc();
    v51 = v9;
    v12 = swift_slowAlloc();
    v55 = v12;
    *v11 = 136315394;
    v13 = sub_1000034B4(v3, v0[5]);
    v14 = v13[3];
    v15 = v13[4];

    sub_1000034F8(v3);
    v16 = sub_100004C50(v14, v15, &v55);

    *(v11 + 4) = v16;
    *(v11 + 12) = 2080;
    v17 = sub_1000034B4(v4, v0[10]);
    v18 = v17[1];
    v19 = v17[2];

    sub_1000034F8(v4);
    v20 = sub_100004C50(v18, v19, &v55);

    *(v11 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v6, v7, "Received incoming XPC event %s from stream %s", v11, 0x16u);
    swift_arrayDestroy();
    sub_1000036AC(v12);
    v21 = v11;
    v1 = v0 + 15;
    sub_1000036AC(v21);

    v22 = *(v10 + 8);
    v22(v51, v53);
  }

  else
  {

    v22 = *(v10 + 8);
    v22(v9, v53);
    sub_1000034F8(v0 + 2);
    sub_1000034F8(v0 + 7);
  }

  v23 = v0[27];
  v24 = v0[25];
  v25 = v0[22];
  v55 = 0;
  v56 = 0xE000000000000000;
  _StringGuts.grow(_:)(21);

  v55 = 0xD000000000000010;
  v56 = 0x8000000100154B90;
  v0[16] = v24;
  swift_getMetatypeMetadata();
  v26._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v26);

  v27._countAndFlagsBits = 46;
  v27._object = 0xE100000000000000;
  String.append(_:)(v27);
  v28 = sub_1000034B4(v25, v25[3]);
  v29 = v28[3];
  v30 = v28[4];

  v31._countAndFlagsBits = v29;
  v31._object = v30;
  String.append(_:)(v31);

  String.utf8CString.getter();

  v32 = os_transaction_create();

  sub_100002794(v23);
  v1[5] = v0[25];
  String.init<A>(describing:)();
  result = LNLogSubsystem;
  if (!LNLogSubsystem)
  {
    goto LABEL_15;
  }

  v52 = v32;
  v54 = v22;
  String.init(cString:)();
  Logger.init(subsystem:category:)();
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 0;
    _os_log_impl(&_mh_execute_header, v33, v34, "[XPCEventService] Deferring to service handler", v35, 2u);
    sub_1000036AC(v35);
  }

  v36 = v0[32];
  v37 = v0[28];
  v39 = v0[24];
  v38 = v0[25];
  v40 = v0[22];

  v54(v36, v37);
  (*(*(v39 + 88) + 16))(v40, v52, v38);
  v0[21] = v38;
  String.init<A>(describing:)();
  result = LNLogSubsystem;
  if (!LNLogSubsystem)
  {
    goto LABEL_16;
  }

  String.init(cString:)();
  Logger.init(subsystem:category:)();
  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.info.getter();
  v43 = os_log_type_enabled(v41, v42);
  v45 = v0[26];
  v44 = v0[27];
  v46 = v0[25];
  if (v43)
  {
    v47 = swift_slowAlloc();
    *v47 = 0;
    _os_log_impl(&_mh_execute_header, v41, v42, "[XPCEventService] Event serviced", v47, 2u);
    sub_1000036AC(v47);
  }

  swift_unknownObjectRelease();

  v48 = sub_100006404();
  v49(v48);
  (*(v45 + 8))(v44, v46);

  sub_100003A00();

  return v50();
}

uint64_t sub_100043CA4()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_100043CCC()
{
  sub_100043CA4();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_100043D2C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000BEC4;

  return sub_100043354();
}

uint64_t sub_100043DC4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000BFAC;

  return sub_1000431B4();
}

uint64_t sub_100043E54()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000BFAC;

  return sub_100043C80();
}

void *sub_100043EE0()
{
  type metadata accessor for XPCEventDispatcher();
  swift_allocObject();
  result = sub_100043F20();
  qword_100199110 = result;
  return result;
}

void *sub_100043F20()
{
  v7[0] = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1 = *(v7[0] - 8);
  __chkstk_darwin(v7[0]);
  v3 = v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v4);
  v5 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v5 - 8);
  v0[2] = &_swiftEmptySetSingleton;
  sub_10002EB80(&qword_100199290, &qword_10014DF78);
  v0[3] = Dictionary.init(dictionaryLiteral:)();
  sub_100003D44(0, &qword_10019BAF0, OS_dispatch_queue_ptr);
  static DispatchQoS.unspecified.getter();
  v7[1] = _swiftEmptyArrayStorage;
  sub_10004AFA8(&qword_1001992C0, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_10002EB80(&qword_1001992C8, &unk_10014DFF0);
  sub_10004AE28();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v1 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v7[0]);
  v0[4] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  return v0;
}

uint64_t sub_1000441AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_100044364(a2, a3);
  sub_10002EB80(&qword_100199270, &qword_10014DF58);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10014CE90;
  *(inited + 32) = a2;
  *(inited + 40) = a3;
  sub_10002EB80(&qword_100199278, &qword_10014DF60);
  v13 = swift_initStackObject();
  *(v13 + 16) = xmmword_10014CE90;
  *(v13 + 32) = a4;
  *(v13 + 40) = a5;
  sub_10002EB80(&qword_100199280, &qword_10014DF68);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_10014CE90;
  sub_100013334(a6, v14 + 32);
  *(v13 + 48) = v14;

  sub_10002EB80(&qword_100199288, &qword_10014DF70);
  *(inited + 48) = Dictionary.init(dictionaryLiteral:)();
  sub_10002EB80(&qword_100199290, &qword_10014DF78);
  v15 = Dictionary.init(dictionaryLiteral:)();
  swift_beginAccess();
  sub_100047C14(v15, sub_10004AACC, 0, (a1 + 24));
  return swift_endAccess();
}

uint64_t sub_100044364(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = (&v25[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(v2 + 32);
  *v9 = v10;
  (*(v6 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v5, v7);
  v11 = v10;
  v12 = _dispatchPreconditionTest(_:)();
  result = (*(v6 + 8))(v9, v5);
  if (v12)
  {
    swift_beginAccess();
    v14 = *(v2 + 16);

    v15 = sub_1000445F8(a1, a2, v14);

    if (!v15)
    {
      v16 = swift_allocObject();
      v16[2] = v2;
      v16[3] = a1;
      v16[4] = a2;
      v30 = sub_10004AB70;
      v31 = v16;
      aBlock = _NSConcreteStackBlock;
      v27 = 1107296256;
      v28 = sub_1000449B0;
      v29 = &unk_10018C7A0;
      v17 = _Block_copy(&aBlock);

      v18 = String.utf8CString.getter();
      xpc_set_event_stream_handler((v18 + 32), v11, v17);

      _Block_release(v17);
      swift_beginAccess();

      sub_100027678(v25, a1, a2, v19, v20, v21, v22, v23, v24, v25[0], v25[1], aBlock, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, vars0, vars8);
      swift_endAccess();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

BOOL sub_1000445F8(uint64_t a1, uint64_t a2, void *a3)
{
  if (!a3[2])
  {
    return 0;
  }

  v6 = Hasher.init(_seed:)();
  sub_10001E078(v6);
  Hasher._finalize()();
  sub_10000884C();
  v9 = ~v8;
  do
  {
    v10 = v7 & v9;
    v11 = (1 << (v7 & v9)) & *(a3 + (((v7 & v9) >> 3) & 0xFFFFFFFFFFFFFF8) + 56);
    v12 = v11 != 0;
    if (!v11)
    {
      break;
    }

    v13 = (a3[6] + 16 * v10);
    if (*v13 == a1 && v13[1] == a2)
    {
      break;
    }

    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v7 = v10 + 1;
  }

  while ((v15 & 1) == 0);
  return v12;
}

const char *sub_1000446D4(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_10002EB80(&qword_100198C20, &qword_10014D090);
  __chkstk_darwin(v7 - 8);
  v9 = &v24 - v8;
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = (&v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *(v3 + 32);
  *v14 = v15;
  (*(v11 + 104))(v14, enum case for DispatchPredicate.onQueue(_:), v10, v12);
  v16 = v15;
  LOBYTE(v15) = _dispatchPreconditionTest(_:)();
  result = (*(v11 + 8))(v14, v10);
  if (v15)
  {
    result = xpc_dictionary_get_string(a1, _xpc_event_key_name);
    if (result)
    {
      v18 = String.init(cString:)();
      v20 = v19;
      swift_beginAccess();

      swift_unknownObjectRetain();
      if (sub_1000B6334())
      {
        swift_endAccess();

        v21 = sub_1000B6334();

        if (v21)
        {
          v22 = type metadata accessor for TaskPriority();
          sub_1000075C4(v9, 1, 1, v22);
          v23 = swift_allocObject();
          v23[2] = 0;
          v23[3] = 0;
          v23[4] = v21;
          v23[5] = a1;
          v23[6] = a2;
          v23[7] = a3;
          v23[8] = v18;
          v23[9] = v20;

          swift_unknownObjectRetain();

          sub_10003A6C0(0, 0, v9, &unk_10014DFB8, v23);

          swift_unknownObjectRelease();
        }
      }

      else
      {
        swift_endAccess();
      }

      return swift_unknownObjectRelease();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000449B0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t sub_100044A10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  return _swift_task_switch(sub_100044A34, 0, 0);
}

uint64_t sub_100044A34()
{
  sub_1000036A0();
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *(v1 + 16) = *(v0 + 24);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *v2 = v0;
  v2[1] = sub_100044B1C;
  v3 = *(v0 + 16);

  return withTaskGroup<A, B>(of:returning:isolation:body:)(v3, &type metadata for () + 1, &type metadata for () + 1, 0, 0, &unk_10014DFC8, v1, &type metadata for () + 1);
}

uint64_t sub_100044B1C()
{
  sub_1000036A0();
  sub_1000036D0();
  v1 = *v0;
  sub_10000298C();
  *v2 = v1;

  sub_100003A00();

  return v3();
}

uint64_t sub_100044C18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[27] = a3;
  v4[28] = a4;
  v4[26] = a2;
  sub_10002EB80(&qword_100198C20, &qword_10014D090);
  v4[29] = swift_task_alloc();
  v4[30] = swift_task_alloc();

  return _swift_task_switch(sub_100044CC4, 0, 0);
}

uint64_t sub_100044CC4()
{
  v1 = *(v0 + 216);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 224);
    v22 = **(v0 + 208);
    *(v0 + 112) = *(v3 + 8);
    *(v0 + 128) = *(v3 + 24);
    v4 = v1 + 32;
    v5 = type metadata accessor for TaskPriority();
    do
    {
      v7 = *(v0 + 232);
      v6 = *(v0 + 240);
      v8 = *(v0 + 224);
      sub_1000075C4(v6, 1, 1, v5);
      sub_100013334(v4, v0 + 16);
      v9 = swift_allocObject();
      *(v9 + 16) = 0;
      *(v9 + 24) = 0;
      sub_10001A798((v0 + 16), v9 + 32);
      v10 = *(v8 + 32);
      v11 = *(v8 + 16);
      *(v9 + 72) = *v8;
      *(v9 + 88) = v11;
      *(v9 + 104) = v10;
      sub_10003CC10(v6, v7);
      LODWORD(v7) = sub_1000032C4(v7, 1, v5);
      swift_unknownObjectRetain();
      v12 = *(v0 + 232);
      v13 = v0 + 112;
      if (v7 == 1)
      {
        sub_10004AD94(v13, v0 + 144);
        sub_10004ADCC(v0 + 128, v0 + 160);
        sub_100003E9C(v12, &qword_100198C20, &qword_10014D090);
      }

      else
      {
        sub_10004AD94(v13, v0 + 176);
        sub_10004ADCC(v0 + 128, v0 + 192);
        TaskPriority.rawValue.getter();
        (*(*(v5 - 8) + 8))(v12, v5);
      }

      if (*(v9 + 16))
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        v14 = dispatch thunk of Actor.unownedExecutor.getter();
        v16 = v15;
        swift_unknownObjectRelease();
      }

      else
      {
        v14 = 0;
        v16 = 0;
      }

      v17 = swift_allocObject();
      *(v17 + 16) = &unk_10014DFE0;
      *(v17 + 24) = v9;

      if (v16 | v14)
      {
        v18 = v0 + 56;
        *(v0 + 56) = 0;
        *(v0 + 64) = 0;
        *(v0 + 72) = v14;
        *(v0 + 80) = v16;
      }

      else
      {
        v18 = 0;
      }

      v19 = *(v0 + 240);
      *(v0 + 88) = 1;
      *(v0 + 96) = v18;
      *(v0 + 104) = v22;
      swift_task_create();

      sub_100003E9C(v19, &qword_100198C20, &qword_10014D090);
      v4 += 40;
      --v2;
    }

    while (v2);
  }

  sub_100003A00();

  return v20();
}

uint64_t sub_100044FD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 120) = a4;
  *(v5 + 128) = a5;
  return _swift_task_switch(sub_100044FF8, 0, 0);
}

uint64_t sub_100044FF8()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 128);
  v3 = v1[3];
  v4 = v1[4];
  sub_1000034B4(v1, v3);
  *(v0 + 56) = *(v2 + 8);
  *(v0 + 72) = *(v2 + 24);
  *(v0 + 40) = &type metadata for ConcreteXPCEvent;
  *(v0 + 48) = &off_10018C970;
  v5 = swift_allocObject();
  *(v0 + 16) = v5;
  v6 = *(v2 + 32);
  v7 = *(v2 + 16);
  *(v5 + 16) = *v2;
  *(v5 + 32) = v7;
  *(v5 + 48) = v6;
  v8 = *(v4 + 8);
  swift_unknownObjectRetain();
  sub_10004AD94(v0 + 56, v0 + 88);
  sub_10004ADCC(v0 + 72, v0 + 104);
  v11 = (v8 + *v8);
  v9 = swift_task_alloc();
  *(v0 + 136) = v9;
  *v9 = v0;
  v9[1] = sub_1000451A8;

  return v11(v0 + 16, v3, v4);
}

uint64_t sub_1000451A8()
{
  sub_1000036A0();
  sub_1000036D0();
  v2 = v1;
  v3 = *v0;
  sub_10000298C();
  *v4 = v3;

  sub_1000034F8((v2 + 16));
  sub_100003A00();

  return v5();
}

uint64_t sub_100045290()
{

  return v0;
}

uint64_t sub_1000452C0()
{
  v0 = sub_100045290();

  return _swift_deallocClassInstance(v0);
}

uint64_t sub_100045314(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

void sub_1000453A0(uint64_t a1, uint64_t a2)
{
  sub_10004B2C8();
  v4 = *(v2 + 16);
  if (v4 == *(v3 + 16) && v4 && v2 != v3)
  {
    v5 = (v2 + 64);
    v6 = (v3 + 64);
    do
    {
      v7 = *(v5 - 2);
      v8 = *(v5 - 1);
      v9 = *v5;
      v11 = *(v6 - 2);
      v10 = *(v6 - 1);
      v17 = *v6;
      v12 = *(v5 - 4) == *(v6 - 4) && *(v5 - 3) == *(v6 - 3);
      if (!v12 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v13 = v7 == v11 && v8 == v10;
      if (!v13 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      sub_100003D44(0, &qword_100199300, NSObject_ptr);

      v14 = v9;

      v15 = v17;
      v16 = static NSObject.== infix(_:_:)();

      if ((v16 & 1) == 0)
      {
        break;
      }

      v5 += 5;
      v6 += 5;
      --v4;
    }

    while (v4);
  }

  sub_10001CE84();
}

uint64_t sub_100045504@<X0>(char *__s1@<X0>, uint64_t a3@<X2>, unint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  switch(a4 >> 62)
  {
    case 1uLL:
      v10 = a3 >> 32;
      if (a3 >> 32 < a3)
      {
        __break(1u);
      }

      v9 = a3;
      goto LABEL_9;
    case 2uLL:
      v9 = *(a3 + 16);
      v10 = *(a3 + 24);
LABEL_9:
      result = sub_100045670(v9, v10, a4 & 0x3FFFFFFFFFFFFFFFLL, __s1);
      if (!v5)
      {
        goto LABEL_10;
      }

      goto LABEL_14;
    case 3uLL:
      if (__s1)
      {
        result = 1;
LABEL_10:
        *a5 = result & 1;
      }

      else
      {
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:

        __break(1u);
      }

      return result;
    default:
      __s2 = a3;
      v12 = a4;
      v13 = BYTE2(a4);
      v14 = BYTE3(a4);
      v15 = BYTE4(a4);
      v16 = BYTE5(a4);
      if (!__s1)
      {
        goto LABEL_13;
      }

      result = memcmp(__s1, &__s2, BYTE6(a4)) == 0;
      goto LABEL_10;
  }
}

char *sub_100045670(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  result = __DataStorage._bytes.getter();
  v8 = result;
  if (result)
  {
    result = __DataStorage._offset.getter();
    if (__OFSUB__(a1, result))
    {
LABEL_14:
      __break(1u);
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    v8 += a1 - result;
  }

  v9 = __OFSUB__(a2, a1);
  v10 = a2 - a1;
  if (v9)
  {
    __break(1u);
    goto LABEL_14;
  }

  result = __DataStorage._length.getter();
  if (result >= v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = result;
  }

  if (!a4)
  {
    goto LABEL_15;
  }

  if (!v8)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  if (v8 == a4)
  {
    return 1;
  }

  else
  {
    return (memcmp(a4, v8, v11) == 0);
  }
}

uint64_t sub_100045728()
{
  sub_1000070C8();
  v1 = v0;
  v7 = (v2 + *v2);
  v3 = swift_task_alloc();
  v4 = sub_100004DC8(v3);
  *v4 = v5;
  v4[1] = sub_10000BEC8;

  return v7(v1);
}

unint64_t sub_100045814(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  if (a2)
  {
    Hasher._combine(_:)(1u);
    sub_10001E078(v4);
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v5 = Hasher._finalize()();

  return sub_100045D60(a1, a2, v5);
}

void sub_10004589C(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  Hasher._finalize()();

  sub_100046878();
}

unint64_t sub_10004592C()
{
  sub_10000779C();
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  Hasher._finalize()();
  v0 = sub_1000099A8();
  return sub_100045E2C(v0, v1, v2, v3, v4);
}

unint64_t sub_1000459A8()
{
  sub_10000779C();
  Hasher.init(_seed:)();
  v0 = String.hash(into:)();
  sub_10001E078(v0);
  Hasher._finalize()();
  v1 = sub_1000099A8();

  return sub_100045F14(v1, v2, v3, v4, v5);
}

void sub_100045A18()
{
  sub_10001D580();
  type metadata accessor for UUID();
  sub_10004AFA8(&qword_100199BD0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable._rawHashValue(seed:)();
  sub_100004820();
  sub_1000466FC();
}

void sub_100045B08()
{
  sub_10001D580();
  type metadata accessor for URL();
  sub_10004AFA8(&qword_100199340, &type metadata accessor for URL, &protocol conformance descriptor for URL);
  dispatch thunk of Hashable._rawHashValue(seed:)();
  sub_100004820();
  sub_1000466FC();
}

void sub_100045BCC()
{
  v0 = sub_1000186F0();
  NSObject._rawHashValue(seed:)(v0);
  sub_100004820();
  sub_10004695C();
}

void sub_100045C10()
{
  v0 = sub_1000186F0();
  NSObject._rawHashValue(seed:)(v0);
  sub_100004820();
  sub_10004695C();
}

unint64_t sub_100045C54()
{
  sub_10000779C();
  Hasher.init(_seed:)();
  String.hash(into:)();
  if (v0)
  {
    Hasher._combine(_:)(1u);
    sub_10001E078(v1);
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  Hasher._finalize()();
  v2 = sub_1000099A8();

  return sub_100046A18(v2, v3, v4, v5, v6);
}

void sub_100045CE0()
{
  v0 = sub_1000186F0();
  NSObject._rawHashValue(seed:)(v0);
  sub_100004820();
  sub_10004695C();
}

unint64_t sub_100045D24()
{
  v1 = sub_1000186F0();
  v2 = AnyHashable._rawHashValue(seed:)(v1);

  return sub_100046B24(v0, v2);
}

unint64_t sub_100045D60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3 + 64;
  v5 = -1 << *(v3 + 32);
  v6 = a3 & ~v5;
  if ((*(v3 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v9 = ~v5;
    v10 = *(v3 + 48);
    do
    {
      v11 = (v10 + 16 * v6);
      v12 = v11[1];
      if (v12)
      {
        if (a2)
        {
          v13 = *v11 == a1 && v12 == a2;
          if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            return v6;
          }
        }
      }

      else if (!a2)
      {
        return v6;
      }

      v6 = (v6 + 1) & v9;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

unint64_t sub_100045E2C(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = ~(-1 << *(v5 + 32));
  v9 = a5 & v8;
  v10 = a1 >> 16;
  v11 = a2 >> 16;
  while (((1 << v9) & *(v5 + 64 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0)
  {
    v12 = (*(v5 + 48) + 32 * v9);
    v13 = v12[2] == a3 && v12[3] == a4;
    v14 = v13 && *v12 >> 16 == v10;
    v15 = v14 && v12[1] >> 16 == v11;
    if (v15 || (_stringCompareInternal(_:_:_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v8;
  }

  return v9;
}

unint64_t sub_100045F14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5 + 64;
  v7 = -1 << *(v5 + 32);
  v8 = a5 & ~v7;
  if ((*(v5 + 64 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v13 = ~v7;
    v14 = *(v5 + 48);
    do
    {
      v15 = (v14 + 32 * v8);
      v16 = v15[2];
      v17 = v15[3];
      v18 = *v15 == a1 && v15[1] == a2;
      if (v18 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v19 = v16 == a3 && v17 == a4;
        if (v19 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          break;
        }
      }

      v8 = (v8 + 1) & v13;
    }

    while (((*(v6 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
  }

  return v8;
}

unint64_t sub_100046010(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3 + 64;
  v5 = -1 << *(v3 + 32);
  v6 = a3 & ~v5;
  if ((*(v3 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = v3;
    v10 = ~v5;
    v11 = a2 >> 62;
    if (a1)
    {
      v12 = 0;
    }

    else
    {
      v12 = a2 == 0xC000000000000000;
    }

    v13 = !v12;
    v65 = v13;
    v56 = HIDWORD(a1);
    v14 = HIDWORD(a1) == a1;
    v15 = __OFSUB__(HIDWORD(a1), a1);
    v61 = v15;
    v60 = HIDWORD(a1) - a1;
    v16 = BYTE6(a2);
    v57 = a1;
    v58 = v3 + 64;
    v55 = a1 >> 32;
    v54 = (a1 >> 32) - a1;
    v62 = ~v5;
    v63 = BYTE6(a2);
    v64 = a2 >> 62;
    while (1)
    {
      v17 = (*(v7 + 48) + 16 * v6);
      v19 = *v17;
      v18 = v17[1];
      v20 = v18 >> 62;
      if (v14)
      {
        if (v19)
        {
          v21 = 0;
          v14 = 0;
        }

        else
        {
          v21 = v18 >= 0xC000000000000000;
          v14 = v18 == 0xC000000000000000;
        }

        v22 = !v21;
        if (((v22 | v65) & 1) == 0)
        {
          return v6;
        }

        v23 = 0;
      }

      else
      {
        v23 = 0;
        switch(v20)
        {
          case 0uLL:
            v23 = BYTE6(v18);
            break;
          case 1uLL:
            LODWORD(v23) = HIDWORD(v19) - v19;
            v14 = HIDWORD(v19) == v19;
            if (__OFSUB__(HIDWORD(v19), v19))
            {
              goto LABEL_89;
            }

            v23 = v23;
            break;
          case 2uLL:
            v25 = *(v19 + 16);
            v24 = *(v19 + 24);
            v26 = __OFSUB__(v24, v25);
            v23 = v24 - v25;
            v14 = v23 == 0;
            if (!v26)
            {
              break;
            }

            goto LABEL_88;
          case 3uLL:
            break;
          default:
            goto LABEL_105;
        }
      }

      v27 = v16;
      switch(v11)
      {
        case 0uLL:
          goto LABEL_31;
        case 1uLL:
          v27 = v60;
          if (!v61)
          {
            goto LABEL_31;
          }

          __break(1u);
          goto LABEL_87;
        case 2uLL:
          v29 = *(a1 + 16);
          v28 = *(a1 + 24);
          v26 = __OFSUB__(v28, v29);
          v27 = v28 - v29;
          if (v26)
          {
LABEL_87:
            __break(1u);
LABEL_88:
            __break(1u);
LABEL_89:
            __break(1u);
LABEL_90:
            __break(1u);
LABEL_91:
            __break(1u);
LABEL_92:
            __break(1u);
LABEL_93:
            __break(1u);
LABEL_94:
            __break(1u);
LABEL_95:
            __break(1u);
LABEL_96:
            __break(1u);
LABEL_97:
            __break(1u);
LABEL_98:
            __break(1u);
LABEL_99:
            __break(1u);
LABEL_100:
            __break(1u);
LABEL_101:
            __break(1u);
          }

LABEL_31:
          v14 = v23 == v27;
          if (v23 != v27)
          {
            goto LABEL_85;
          }

          if (v23 < 1)
          {
            return v6;
          }

          break;
        case 3uLL:
          if (!v23)
          {
            return v6;
          }

          goto LABEL_85;
        default:
          goto LABEL_105;
      }

      switch(v20)
      {
        case 1:
          if (v19 >> 32 < v19)
          {
            goto LABEL_90;
          }

          sub_1000098F0(a1, a2);
          sub_1000098F0(a1, a2);
          sub_1000098F0(a1, a2);
          sub_1000098F0(v19, v18);
          v35 = __DataStorage._bytes.getter();
          if (!v35)
          {
            goto LABEL_65;
          }

          v40 = __DataStorage._offset.getter();
          if (__OFSUB__(v19, v40))
          {
            goto LABEL_93;
          }

          v35 += v19 - v40;
LABEL_65:
          __DataStorage._length.getter();
          sub_100045504(v35, a1, a2, __s1);
          sub_100009B18(a1, a2);
          sub_100009B18(v19, v18);
          sub_100009B18(a1, a2);
          v41 = __s1[0];
          sub_100009B18(a1, a2);
          v4 = v58;
          v7 = v59;
          v10 = v62;
          v16 = v63;
          v11 = v64;
          if (v41)
          {
            return v6;
          }

          goto LABEL_85;
        case 2:
          v33 = *(v19 + 16);
          v34 = *(v19 + 24);
          sub_1000098F0(a1, a2);
          sub_1000098F0(a1, a2);
          sub_1000098F0(a1, a2);
          sub_1000098F0(v19, v18);
          v35 = __DataStorage._bytes.getter();
          if (!v35)
          {
            goto LABEL_47;
          }

          v36 = __DataStorage._offset.getter();
          if (__OFSUB__(v33, v36))
          {
            goto LABEL_92;
          }

          v35 += v33 - v36;
LABEL_47:
          if (!__OFSUB__(v34, v33))
          {
            goto LABEL_65;
          }

          goto LABEL_91;
        case 3:
          memset(__s1, 0, 14);
          if (v11 == 2)
          {
            v43 = *(a1 + 16);
            v44 = *(a1 + 24);
            sub_1000098F0(a1, a2);
            sub_1000098F0(v19, v18);
            v45 = __DataStorage._bytes.getter();
            if (v45)
            {
              v46 = __DataStorage._offset.getter();
              if (__OFSUB__(v43, v46))
              {
                goto LABEL_98;
              }

              v45 += v43 - v46;
            }

            v26 = __OFSUB__(v44, v43);
            v47 = v44 - v43;
            if (v26)
            {
              goto LABEL_96;
            }

            v48 = __DataStorage._length.getter();
            v7 = v59;
            if (!v45)
            {
              __break(1u);
LABEL_102:
              __break(1u);
LABEL_103:
              __break(1u);
LABEL_104:
              __break(1u);
              sub_100009B18(a1, a2);
              sub_100009B18(a1, a2);

              __break(1u);
LABEL_105:
              JUMPOUT(0);
            }

LABEL_80:
            if (v48 >= v47)
            {
              v52 = v47;
            }

            else
            {
              v52 = v48;
            }

            v39 = memcmp(__s1, v45, v52);
            sub_100009B18(v19, v18);
            sub_100009B18(a1, a2);
            v4 = v58;
LABEL_84:
            v10 = v62;
            v16 = v63;
            v11 = v64;
            if (!v39)
            {
              return v6;
            }

            goto LABEL_85;
          }

          if (v11 == 1)
          {
            if (v55 < v57)
            {
              goto LABEL_95;
            }

            sub_1000098F0(a1, a2);
            sub_1000098F0(v19, v18);
            v30 = __DataStorage._bytes.getter();
            if (v30)
            {
              v37 = __DataStorage._offset.getter();
              if (__OFSUB__(v57, v37))
              {
                goto LABEL_100;
              }

              v30 += v57 - v37;
            }

            v32 = __DataStorage._length.getter();
            if (!v30)
            {
              goto LABEL_103;
            }

LABEL_57:
            if (v32 >= v54)
            {
              v38 = v54;
            }

            else
            {
              v38 = v32;
            }

            v39 = memcmp(__s1, v30, v38);
            sub_100009B18(v19, v18);
            sub_100009B18(a1, a2);
            goto LABEL_84;
          }

LABEL_67:
          __s2 = a1;
          v67 = BYTE2(a1);
          v68 = BYTE3(a1);
          v69 = v56;
          v70 = BYTE5(a1);
          v71 = BYTE6(a1);
          v72 = HIBYTE(a1);
          v73 = a2;
          v74 = BYTE2(a2);
          v75 = BYTE3(a2);
          v76 = BYTE4(a2);
          v77 = BYTE5(a2);
          v42 = memcmp(__s1, &__s2, v16);
          v16 = v63;
          v11 = v64;
          if (!v42)
          {
            return v6;
          }

LABEL_85:
          v6 = (v6 + 1) & v10;
          if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
          {
            return v6;
          }

          break;
        default:
          __s1[0] = v19;
          LOWORD(__s1[1]) = v18;
          BYTE2(__s1[1]) = BYTE2(v18);
          BYTE3(__s1[1]) = BYTE3(v18);
          BYTE4(__s1[1]) = BYTE4(v18);
          BYTE5(__s1[1]) = BYTE5(v18);
          if (!v11)
          {
            goto LABEL_67;
          }

          if (v11 == 1)
          {
            if (v55 < v57)
            {
              goto LABEL_94;
            }

            sub_1000098F0(a1, a2);
            sub_1000098F0(v19, v18);
            v30 = __DataStorage._bytes.getter();
            if (v30)
            {
              v31 = __DataStorage._offset.getter();
              if (__OFSUB__(v57, v31))
              {
                goto LABEL_101;
              }

              v30 += v57 - v31;
            }

            v32 = __DataStorage._length.getter();
            if (!v30)
            {
              goto LABEL_102;
            }

            goto LABEL_57;
          }

          v49 = *(a1 + 16);
          v50 = *(a1 + 24);
          sub_1000098F0(a1, a2);
          sub_1000098F0(v19, v18);
          v45 = __DataStorage._bytes.getter();
          if (v45)
          {
            v51 = __DataStorage._offset.getter();
            if (__OFSUB__(v49, v51))
            {
              goto LABEL_99;
            }

            v45 += v49 - v51;
          }

          v26 = __OFSUB__(v50, v49);
          v47 = v50 - v49;
          if (v26)
          {
            goto LABEL_97;
          }

          v48 = __DataStorage._length.getter();
          v7 = v59;
          if (!v45)
          {
            goto LABEL_104;
          }

          goto LABEL_80;
      }
    }
  }

  return v6;
}

void sub_1000466FC()
{
  sub_100006A04();
  v21 = v1;
  v22 = v2;
  v20 = v3;
  v5 = v4;
  v18 = v6;
  v8 = v7(0);
  sub_10000518C();
  v10 = v9;
  __chkstk_darwin(v11);
  v13 = &v18 - v12;
  v23 = v0 + 64;
  v19 = v0;
  sub_10000884C();
  v15 = ~v14;
  for (i = v5 & ~v14; ((1 << i) & *(v23 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v15)
  {
    (*(v10 + 16))(v13, *(v19 + 48) + *(v10 + 72) * i, v8);
    sub_10004AFA8(v20, v21, v22);
    v17 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*(v10 + 8))(v13, v8);
    if (v17)
    {
      break;
    }
  }

  sub_1000069EC();
}

void sub_100046878()
{
  sub_100006A04();
  sub_10000884C();
  v2 = ~v1;
  for (i = v3 & ~v1; ((1 << i) & *(v0 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v2)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
    if (v5 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v7 == v8)
    {

      break;
    }

    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v10)
    {
      break;
    }
  }

  sub_1000069EC();
}

void sub_10004695C()
{
  sub_100006A04();
  v2 = v1;
  v4 = v3;
  v5 = v0;
  v6 = v0 + 64;
  sub_10000884C();
  v8 = ~v7;
  for (i = v9 & ~v7; ((1 << i) & *(v6 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v8)
  {
    sub_100003D44(0, v4, v2);
    v11 = *(*(v5 + 48) + 8 * i);
    v12 = static NSObject.== infix(_:_:)();

    if (v12)
    {
      break;
    }
  }

  sub_1000069EC();
}

unint64_t sub_100046A18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5 + 64;
  v7 = -1 << *(v5 + 32);
  v8 = a5 & ~v7;
  if ((*(v5 + 64 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v13 = ~v7;
    v14 = *(v5 + 48);
    do
    {
      v15 = (v14 + 32 * v8);
      v17 = v15[2];
      v16 = v15[3];
      v18 = *v15 == a1 && v15[1] == a2;
      if (v18 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        if (v16)
        {
          if (a4)
          {
            v19 = v17 == a3 && v16 == a4;
            if (v19 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              return v8;
            }
          }
        }

        else if (!a4)
        {
          return v8;
        }
      }

      v8 = (v8 + 1) & v13;
    }

    while (((*(v6 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
  }

  return v8;
}

unint64_t sub_100046B24(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
  for (i = a2 & v3; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v3)
  {
    sub_10004AFF0(*(v2 + 48) + 40 * i, v7);
    v5 = static AnyHashable.== infix(_:_:)();
    sub_10004B04C(v7);
    if (v5)
    {
      break;
    }
  }

  return i;
}

void sub_100046BE8(uint64_t a1, uint64_t a2)
{
  sub_100003A78();
  sub_10002EB80(&qword_1001990F0, &unk_10014E050);
  sub_1000183B0();
  static _DictionaryStorage.resize(original:capacity:move:)();
  sub_10000EE38();
  if (!v7)
  {
LABEL_30:

    *v2 = a2;
    return;
  }

  v8 = 0;
  v9 = v3 + 8;
  sub_1000029E8();
  sub_100002678();
  if (!v5)
  {
LABEL_4:
    v11 = v8;
    while (1)
    {
      v8 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v8 >= v4)
      {
        break;
      }

      ++v11;
      if (v9[v8])
      {
        sub_10000372C();
        v5 = v13 & v12;
        goto LABEL_9;
      }
    }

    if (a2)
    {
      sub_100004E14();
      if (v22 != v23)
      {
        sub_10000884C();
        *v9 = v24;
      }

      else
      {
        v25 = sub_10001109C();
        sub_100047518(v25, v26, (v3 + 8));
      }

      v3[2] = 0;
    }

    goto LABEL_30;
  }

  while (1)
  {
    sub_100012A14();
LABEL_9:
    v14 = v10 | (v8 << 6);
    v15 = *(v3[7] + 8 * v14);
    v27 = *(v3[6] + 16 * v14);
    v16 = *(v3[6] + 16 * v14 + 8);
    if ((a2 & 1) == 0)
    {
      v17 = v15;
    }

    Hasher.init(_seed:)();
    if (v16)
    {
      Hasher._combine(_:)(1u);
      String.hash(into:)();
    }

    else
    {
      Hasher._combine(_:)(0);
    }

    Hasher._finalize()();
    sub_100005174();
    sub_100024830();
    if (v18)
    {
      break;
    }

    sub_1000066F0();
LABEL_22:
    sub_100007E38();
    sub_100013C38();
    *(v21 + 16 * v20) = v27;
    *(*(a2 + 56) + 8 * v20) = v15;
    sub_1000117A8();
    if (!v5)
    {
      goto LABEL_4;
    }
  }

  sub_100007AAC();
  while (1)
  {
    sub_100019CDC();
    if (v18)
    {
      if (v19)
      {
        break;
      }
    }

    sub_1000119BC();
    if (!v18)
    {
      sub_1000070E0();
      goto LABEL_22;
    }
  }

LABEL_32:
  __break(1u);
}

void sub_100046E48(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  sub_100003A78();
  sub_10002EB80(v6, v7);
  sub_1000183B0();
  static _DictionaryStorage.resize(original:capacity:move:)();
  sub_10000EE38();
  if (!v8)
  {
LABEL_29:

LABEL_30:
    *v4 = a2;
    return;
  }

  v38 = v3;
  v9 = 0;
  v10 = v3 + 8;
  sub_1000029E8();
  v13 = v12 & v11;
  v15 = (v14 + 63) >> 6;
  if ((v12 & v11) == 0)
  {
LABEL_4:
    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v9 >= v15)
      {
        break;
      }

      ++v17;
      if (v10[v9])
      {
        sub_10000372C();
        v13 = v19 & v18;
        goto LABEL_9;
      }
    }

    if ((a2 & 1) == 0)
    {

      v4 = v2;
      goto LABEL_30;
    }

    sub_100004E14();
    v4 = v2;
    if (v33 != v34)
    {
      sub_10000884C();
      *v10 = v35;
    }

    else
    {
      v36 = sub_10001109C();
      sub_100047518(v36, v37, v10);
    }

    v3[2] = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v16 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_9:
    v20 = v16 | (v9 << 6);
    v21 = (v3[6] + 16 * v20);
    v22 = *v21;
    v23 = v21[1];
    v24 = *(v3[7] + 8 * v20);
    if ((a2 & 1) == 0)
    {

      v25 = v24;
    }

    Hasher.init(_seed:)();
    String.hash(into:)();
    Hasher._finalize()();
    sub_100005174();
    sub_100024830();
    if (v26)
    {
      break;
    }

    sub_1000066F0();
LABEL_21:
    sub_100007E38();
    sub_1000188AC();
    v32 = (v31 + 16 * v30);
    *v32 = v22;
    v32[1] = v23;
    *(*(a2 + 56) + 8 * v30) = v24;
    sub_1000117A8();
    v3 = v38;
    if (!v13)
    {
      goto LABEL_4;
    }
  }

  sub_100007AAC();
  while (1)
  {
    sub_100019CDC();
    if (v26)
    {
      if (v28)
      {
        break;
      }
    }

    if (v27 == v29)
    {
      v27 = 0;
    }

    if (*(a2 + 64 + 8 * v27) != -1)
    {
      sub_1000070E0();
      goto LABEL_21;
    }
  }

LABEL_32:
  __break(1u);
}

void sub_10004704C(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  sub_10002EB80(a3, a4);
  v38 = a2;
  v8 = static _DictionaryStorage.resize(original:capacity:move:)();
  if (!*(v7 + 16))
  {
LABEL_29:

LABEL_30:
    *v5 = v8;
    return;
  }

  v37 = v7;
  v9 = 0;
  v10 = (v7 + 64);
  sub_1000029E8();
  v13 = v12 & v11;
  v15 = (v14 + 63) >> 6;
  v16 = v8 + 64;
  if ((v12 & v11) == 0)
  {
LABEL_4:
    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v9 >= v15)
      {
        break;
      }

      ++v18;
      if (v10[v9])
      {
        sub_10000372C();
        v13 = v20 & v19;
        goto LABEL_9;
      }
    }

    if ((v38 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_30;
    }

    v5 = v4;
    if (1 << *(v7 + 32) >= 64)
    {
      v35 = sub_10001109C();
      sub_100047518(v35, v36, v10);
    }

    else
    {
      sub_10000884C();
      *v10 = v34;
    }

    *(v7 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v17 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_9:
    v21 = v17 | (v9 << 6);
    v22 = (*(v7 + 48) + 16 * v21);
    v23 = *v22;
    v24 = v22[1];
    v25 = *(*(v7 + 56) + 8 * v21);
    if ((v38 & 1) == 0)
    {
    }

    Hasher.init(_seed:)();
    String.hash(into:)();
    Hasher._finalize()();
    sub_100005174();
    sub_100024830();
    if (v26)
    {
      break;
    }

    sub_1000066F0();
LABEL_21:
    sub_100007E38();
    *(v16 + v30) |= v31;
    v33 = (*(v8 + 48) + 16 * v32);
    *v33 = v23;
    v33[1] = v24;
    *(*(v8 + 56) + 8 * v32) = v25;
    sub_1000117A8();
    v7 = v37;
    if (!v13)
    {
      goto LABEL_4;
    }
  }

  sub_100007AAC();
  while (1)
  {
    sub_100019CDC();
    if (v26)
    {
      if (v28)
      {
        break;
      }
    }

    if (v27 == v29)
    {
      v27 = 0;
    }

    if (*(v16 + 8 * v27) != -1)
    {
      sub_1000070E0();
      goto LABEL_21;
    }
  }

LABEL_32:
  __break(1u);
}

void sub_100047270()
{
  sub_100006A04();
  v1 = v0;
  v3 = v2;
  v4 = type metadata accessor for LNBundleRecord(0);
  v42 = *(v4 - 8);
  __chkstk_darwin(v4 - 8);
  v44 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  sub_10002EB80(&qword_1001992E8, &unk_100151000);
  sub_1000183B0();
  v43 = v3;
  v7 = static _DictionaryStorage.resize(original:capacity:move:)();
  if (!v6[2])
  {
LABEL_30:

LABEL_31:
    *v1 = v7;
    sub_1000069EC();
    return;
  }

  v40 = v0;
  v41 = v6;
  v8 = 0;
  v9 = v6 + 8;
  sub_1000029E8();
  v12 = v11 & v10;
  v14 = (v13 + 63) >> 6;
  v15 = v7 + 8;
  if ((v11 & v10) == 0)
  {
LABEL_4:
    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v14)
      {
        break;
      }

      ++v17;
      if (v9[v8])
      {
        sub_10000372C();
        v12 = v19 & v18;
        goto LABEL_9;
      }
    }

    if ((v43 & 1) == 0)
    {

      v1 = v40;
      goto LABEL_31;
    }

    sub_100004E14();
    v1 = v40;
    if (v35 != v36)
    {
      sub_10000884C();
      *v9 = v37;
    }

    else
    {
      v38 = sub_10001109C();
      sub_100047518(v38, v39, v9);
    }

    v6[2] = 0;
    goto LABEL_30;
  }

  while (1)
  {
    sub_100006A34();
LABEL_9:
    v20 = v16 | (v8 << 6);
    v21 = v6[7];
    v22 = (v6[6] + 16 * v20);
    v23 = *v22;
    v24 = v22[1];
    v25 = *(v42 + 72);
    v26 = v21 + v25 * v20;
    if (v43)
    {
      sub_10004AEF0(v26, v44);
    }

    else
    {
      sub_10004AE8C(v26, v44);
    }

    Hasher.init(_seed:)();
    String.hash(into:)();
    Hasher._finalize()();
    sub_100024830();
    if (v27)
    {
      break;
    }

    sub_1000066F0();
LABEL_22:
    sub_100007E38();
    *(v15 + v31) |= v32;
    v34 = (v7[6] + 16 * v33);
    *v34 = v23;
    v34[1] = v24;
    sub_10004AEF0(v44, v7[7] + v25 * v33);
    ++v7[2];
    v6 = v41;
    if (!v12)
    {
      goto LABEL_4;
    }
  }

  sub_100007AAC();
  while (1)
  {
    sub_100019CDC();
    if (v27)
    {
      if (v29)
      {
        break;
      }
    }

    if (v28 == v30)
    {
      v28 = 0;
    }

    if (v15[v28] != -1)
    {
      sub_1000070E0();
      goto LABEL_22;
    }
  }

LABEL_33:
  __break(1u);
}

uint64_t sub_100047518(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_10014DDE0;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_10004757C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v46 = a5;
  sub_10004AAE8(a1, a2, a3, v45);
  v6 = v45[1];
  v7 = v45[3];
  v8 = v45[4];
  v37 = v45[5];
  v39 = v45[0];
  v9 = (v45[2] + 64) >> 6;

  v36 = v6;
  if (v8)
  {
    while (1)
    {
      v40 = a4;
      v10 = v7;
LABEL_8:
      v12 = __clz(__rbit64(v8)) | (v10 << 6);
      v13 = (*(v39 + 48) + 16 * v12);
      v14 = v13[1];
      v15 = *(*(v39 + 56) + 8 * v12);
      v44[0] = *v13;
      v44[1] = v14;
      v44[2] = v15;

      v37(&v41, v44);

      v17 = v41;
      v16 = v42;
      v18 = v43;
      v19 = *v46;
      v21 = sub_10000C20C(v41, v42, &String.hash(into:), sub_10000C2CC);
      v22 = v19[2];
      v23 = (v20 & 1) == 0;
      v24 = v22 + v23;
      if (__OFADD__(v22, v23))
      {
        break;
      }

      v25 = v20;
      if (v19[3] >= v24)
      {
        if ((v40 & 1) == 0)
        {
          sub_10002EB80(&qword_100199298, &qword_10014DF80);
          _NativeDictionary.copy()();
        }
      }

      else
      {
        sub_10004704C(v24, v40 & 1, &qword_1001992A0, &qword_10014DF88);
        v26 = sub_10000C20C(v17, v16, &String.hash(into:), sub_10000C2CC);
        if ((v25 & 1) != (v27 & 1))
        {
          goto LABEL_25;
        }

        v21 = v26;
      }

      v8 &= v8 - 1;
      v28 = *v46;
      if (v25)
      {
        v29 = *(v28[7] + 8 * v21);

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v44[0] = v29;
        sub_1000478E4(v18, sub_10004AACC, 0, isUniquelyReferenced_nonNull_native, v44);
        if (v38)
        {
          goto LABEL_26;
        }

        *(v28[7] + 8 * v21) = v44[0];
      }

      else
      {
        v28[(v21 >> 6) + 8] |= 1 << v21;
        v31 = (v28[6] + 16 * v21);
        *v31 = v17;
        v31[1] = v16;
        *(v28[7] + 8 * v21) = v18;
        v32 = v28[2];
        v33 = __OFADD__(v32, 1);
        v34 = v32 + 1;
        if (v33)
        {
          goto LABEL_24;
        }

        v28[2] = v34;
      }

      a4 = 1;
      v7 = v10;
      v6 = v36;
      if (!v8)
      {
        goto LABEL_3;
      }
    }
  }

  else
  {
LABEL_3:
    v11 = v7;
    while (1)
    {
      v10 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v10 >= v9)
      {
        sub_100014464(v39);
      }

      v8 = *(v6 + 8 * v10);
      ++v11;
      if (v8)
      {
        v40 = a4;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
LABEL_26:

  __break(1u);
  return result;
}

uint64_t sub_1000478E4(uint64_t a1, uint64_t a2, uint64_t a3, int a4, void *a5)
{
  sub_10004AAE8(a1, a2, a3, v42);
  v6 = v42[1];
  v7 = v42[3];
  v8 = v42[4];
  v34 = v42[5];
  v36 = v42[0];
  v9 = (v42[2] + 64) >> 6;

  v33 = v6;
  if (v8)
  {
    while (1)
    {
      v43 = a4;
      v10 = v7;
LABEL_8:
      v12 = __clz(__rbit64(v8)) | (v10 << 6);
      v13 = (*(v36 + 48) + 16 * v12);
      v14 = v13[1];
      v15 = *(*(v36 + 56) + 8 * v12);
      v41[0] = *v13;
      v41[1] = v14;
      v41[2] = v15;

      v34(&v38, v41);

      v16 = v38;
      v17 = v39;
      v37 = v40;
      v18 = *a5;
      v20 = sub_10000C20C(v38, v39, &String.hash(into:), sub_10000C2CC);
      v21 = v18[2];
      v22 = (v19 & 1) == 0;
      v23 = v21 + v22;
      if (__OFADD__(v21, v22))
      {
        break;
      }

      v24 = v19;
      if (v18[3] >= v23)
      {
        if ((v43 & 1) == 0)
        {
          sub_10002EB80(&qword_1001992A8, &qword_10014DF90);
          _NativeDictionary.copy()();
        }
      }

      else
      {
        sub_10004704C(v23, v43 & 1, &unk_1001992B0, &qword_10014DF98);
        v25 = sub_10000C20C(v16, v17, &String.hash(into:), sub_10000C2CC);
        if ((v24 & 1) != (v26 & 1))
        {
          goto LABEL_24;
        }

        v20 = v25;
      }

      v8 &= v8 - 1;
      v27 = *a5;
      if (v24)
      {
        v41[0] = *(v27[7] + 8 * v20);

        sub_10006E388(v37);

        *(v27[7] + 8 * v20) = v41[0];
      }

      else
      {
        v27[(v20 >> 6) + 8] |= 1 << v20;
        v28 = (v27[6] + 16 * v20);
        *v28 = v16;
        v28[1] = v17;
        *(v27[7] + 8 * v20) = v37;
        v29 = v27[2];
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          goto LABEL_23;
        }

        v27[2] = v31;
      }

      a4 = 1;
      v7 = v10;
      v6 = v33;
      if (!v8)
      {
        goto LABEL_3;
      }
    }
  }

  else
  {
LABEL_3:
    v11 = v7;
    while (1)
    {
      v10 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v10 >= v9)
      {
        sub_100014464(v36);
      }

      v8 = *(v6 + 8 * v10);
      ++v11;
      if (v8)
      {
        v43 = a4;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100047C14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *a4;
  result = sub_10004757C(a1, a2, a3, isUniquelyReferenced_nonNull_native, &v10);
  *a4 = v10;
  return result;
}

void sub_100047CAC()
{
  sub_100006A04();
  v2 = v1;
  __dst = v3;
  v22 = v0;
  v4 = *v0;
  Hasher.init(_seed:)();
  v5 = *v2;
  v6 = v2[1];
  String.hash(into:)();
  v7 = v2[2];
  v8 = v2[3];
  String.hash(into:)();
  NSObject.hash(into:)();
  v30 = v2[6];
  v31 = v2[5];
  String.hash(into:)();
  v28 = v2[8];
  v29 = v2[7];
  String.hash(into:)();
  v26 = v2[10];
  v27 = v2[9];
  String.hash(into:)();
  NSObject.hash(into:)();
  v23 = v2;
  v25 = v2[12];
  sub_10004A69C(v34, v25);
  Hasher._finalize()();
  sub_10000884C();
  v11 = v10 & ~v9;
  if (((*(v4 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
  {
LABEL_34:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v33[0] = *v22;
    sub_100037C7C(v23, v34);
    sub_100049124(v23, v11, isUniquelyReferenced_nonNull_native);
    *v22 = v33[0];
    memcpy(__dst, v23, 0x68uLL);
    goto LABEL_35;
  }

  v12 = ~v9;
  while (1)
  {
    memcpy(v34, (*(v4 + 48) + 104 * v11), 0x68uLL);
    v13 = v34[0] == v5 && v34[1] == v6;
    if (!v13 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_33;
    }

    v14 = v34[2] == v7 && v34[3] == v8;
    if (!v14 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_33;
    }

    sub_100003D44(0, &qword_100199300, NSObject_ptr);
    sub_100037C7C(v34, v33);
    if ((static NSObject.== infix(_:_:)() & 1) == 0 || (v34[5] == v31 ? (v15 = v34[6] == v30) : (v15 = 0), !v15 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (v34[7] == v29 ? (v16 = v34[8] == v28) : (v16 = 0), !v16 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (v34[9] == v27 ? (v17 = v34[10] == v26) : (v17 = 0), !v17 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (static NSObject.== infix(_:_:)() & 1) == 0))))
    {
      sub_10004AF54(v34);
      goto LABEL_33;
    }

    sub_1000453A0(v34[12], v25);
    v19 = v18;
    sub_10004AF54(v34);
    if (v19)
    {
      break;
    }

LABEL_33:
    v11 = (v11 + 1) & v12;
    if (((*(v4 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
    {
      goto LABEL_34;
    }
  }

  sub_10004AF54(v23);
  v21 = (*(v4 + 48) + 104 * v11);
  memcpy(v33, v21, sizeof(v33));
  memcpy(__dst, v21, 0x68uLL);
  sub_100037C7C(v33, v32);
LABEL_35:
  sub_1000069EC();
}

void sub_100047FD8()
{
  sub_100006A04();
  v2 = v1;
  v26 = v3;
  v4 = type metadata accessor for UUID();
  sub_10000518C();
  v6 = v5;
  __chkstk_darwin(v7);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = v0;
  v10 = *v0;
  sub_100011598();
  sub_10004AFA8(v11, v12, &protocol conformance descriptor for UUID);
  v31 = v2;
  dispatch thunk of Hashable._rawHashValue(seed:)();
  v28 = v10;
  v29 = v10 + 56;
  sub_10000884C();
  v15 = ~v14;
  v30 = v6 + 16;
  v27 = v6 + 8;
  while (1)
  {
    v16 = v13 & v15;
    if (((1 << (v13 & v15)) & *(v29 + (((v13 & v15) >> 3) & 0xFFFFFFFFFFFFFF8))) == 0)
    {
      v22 = v25;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v24 = v31;
      (*(v6 + 16))(v9, v31, v4);
      v32 = *v22;
      sub_10004958C(v9, v16, isUniquelyReferenced_nonNull_native);
      *v22 = v32;
      (*(v6 + 32))(v26, v24, v4);
      goto LABEL_7;
    }

    v17 = *(v6 + 72) * v16;
    v18 = *(v6 + 16);
    v18(v9, *(v28 + 48) + v17, v4);
    sub_100011598();
    sub_10004AFA8(&qword_1001992E0, v19, &protocol conformance descriptor for UUID);
    v20 = dispatch thunk of static Equatable.== infix(_:_:)();
    v21 = *(v6 + 8);
    v21(v9, v4);
    if (v20)
    {
      break;
    }

    v13 = v16 + 1;
  }

  v21(v31, v4);
  v18(v26, *(v28 + 48) + v17, v4);
LABEL_7:
  sub_1000069EC();
}

uint64_t sub_100048288(uint64_t *a1, void *a2, unint64_t *a3, void *a4, uint64_t *a5, uint64_t *a6)
{
  v11 = v6;
  v14 = *v6;
  if ((*v6 & 0xC000000000000001) != 0)
  {
    if (v14 < 0)
    {
      v15 = *v6;
    }

    else
    {
      v15 = v14 & 0xFFFFFFFFFFFFFF8;
    }

    v16 = a2;

    v17 = __CocoaSet.member(for:)();

    if (v17)
    {

      sub_100003D44(0, a3, a4);
      swift_dynamicCast();
      result = 0;
      *a1 = v32;
    }

    else
    {
      result = __CocoaSet.count.getter();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v25 = sub_100048504(v15, result + 1, a5, a6, a3, a4);
        if (v25[3] <= v25[2])
        {
          sub_100048F24();
        }

        v26 = v16;
        sub_1000490A4(v26, v25);

        *v11 = v25;
        *a1 = v26;
        return 1;
      }
    }
  }

  else
  {
    sub_100003D44(0, a3, a4);
    NSObject._rawHashValue(seed:)(*(v14 + 40));
    sub_10000884C();
    v21 = ~v20;
    while (1)
    {
      v22 = v19 & v21;
      if (((*(v14 + 56 + (((v19 & v21) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v19 & v21)) & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v33 = *v11;
        v28 = a2;
        sub_100049434(v28, v22, isUniquelyReferenced_nonNull_native);
        *v11 = v33;
        *a1 = v28;
        return 1;
      }

      v23 = *(*(v14 + 48) + 8 * v22);
      v24 = static NSObject.== infix(_:_:)();

      if (v24)
      {
        break;
      }

      v19 = v22 + 1;
    }

    v29 = *(*(v14 + 48) + 8 * v22);
    *a1 = v29;
    v30 = v29;
    return 0;
  }

  return result;
}

Swift::Int sub_100048504(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, unint64_t *a5, void *a6)
{
  if (a2)
  {
    sub_10002EB80(a3, a4);
    v8 = static _SetStorage.convert(_:capacity:)();
    v20 = v8;
    __CocoaSet.makeIterator()();
    while (1)
    {
      if (!__CocoaSet.Iterator.next()())
      {

        return v8;
      }

      sub_100003D44(0, a5, a6);
      swift_dynamicCast();
      if (*(v8 + 24) <= *(v8 + 16))
      {
        sub_100048F24();
      }

      v8 = v20;
      result = NSObject._rawHashValue(seed:)(*(v20 + 40));
      v10 = v20 + 56;
      v11 = -1 << *(v20 + 32);
      v12 = result & ~v11;
      v13 = v12 >> 6;
      if (((-1 << v12) & ~*(v20 + 56 + 8 * (v12 >> 6))) == 0)
      {
        break;
      }

      v14 = __clz(__rbit64((-1 << v12) & ~*(v20 + 56 + 8 * (v12 >> 6)))) | v12 & 0x7FFFFFFFFFFFFFC0;
LABEL_15:
      *(v10 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v20 + 48) + 8 * v14) = v19;
      ++*(v20 + 16);
    }

    v15 = 0;
    v16 = (63 - v11) >> 6;
    while (++v13 != v16 || (v15 & 1) == 0)
    {
      v17 = v13 == v16;
      if (v13 == v16)
      {
        v13 = 0;
      }

      v15 |= v17;
      v18 = *(v10 + 8 * v13);
      if (v18 != -1)
      {
        v14 = __clz(__rbit64(~v18)) + (v13 << 6);
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return result;
}

void sub_1000486E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  sub_100004B54();
  sub_100003A78();
  sub_10002EB80(&unk_10019BB30, &unk_10014DFA0);
  sub_1000183B0();
  static _SetStorage.resize(original:capacity:move:)();
  sub_10000EE38();
  if (!v35)
  {
LABEL_23:

    *v30 = v32;
    sub_10000D320();
    return;
  }

  v36 = 0;
  v37 = v31 + 7;
  sub_1000029E8();
  sub_100002678();
  if (!v34)
  {
LABEL_4:
    v39 = v36;
    while (1)
    {
      v36 = v39 + 1;
      if (__OFADD__(v39, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v36 >= v33)
      {
        break;
      }

      ++v39;
      if (v37[v36])
      {
        sub_10000372C();
        v34 = v41 & v40;
        goto LABEL_9;
      }
    }

    sub_100004E14();
    if (v50 != v51)
    {
      sub_10000884C();
      *v37 = v52;
    }

    else
    {
      v53 = sub_10001109C();
      sub_100047518(v53, v54, (v31 + 7));
    }

    v31[2] = 0;
    goto LABEL_23;
  }

  while (1)
  {
    sub_100012A14();
LABEL_9:
    v42 = (v31[6] + 16 * (v38 | (v36 << 6)));
    v43 = *v42;
    v44 = v42[1];
    Hasher.init(_seed:)();
    String.hash(into:)();
    Hasher._finalize()();
    sub_100005174();
    sub_100024830();
    if (v45)
    {
      break;
    }

    sub_1000066F0();
LABEL_17:
    sub_100007E38();
    sub_100013C38();
    v49 = (v48 + 16 * v47);
    *v49 = v43;
    v49[1] = v44;
    sub_1000117A8();
    if (!v34)
    {
      goto LABEL_4;
    }
  }

  sub_100007AAC();
  while (1)
  {
    sub_100019CDC();
    if (v45)
    {
      if (v46)
      {
        break;
      }
    }

    sub_1000119BC();
    if (!v45)
    {
      sub_1000070E0();
      goto LABEL_17;
    }
  }

LABEL_25:
  __break(1u);
}

uint64_t sub_100048864()
{
  v1 = v0;
  v2 = *v0;
  sub_10002EB80(&qword_100199308, &unk_10014E010);
  result = static _SetStorage.resize(original:capacity:move:)();
  if (*(v2 + 16))
  {
    v4 = 0;
    v32 = (v2 + 56);
    v5 = 1 << *(v2 + 32);
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    else
    {
      v6 = -1;
    }

    v7 = v6 & *(v2 + 56);
    v30 = v0;
    v31 = (v5 + 63) >> 6;
    v33 = result + 56;
    v34 = result;
    v35 = v2;
    if (v7)
    {
      do
      {
        v8 = __clz(__rbit64(v7));
        v40 = (v7 - 1) & v7;
LABEL_12:
        v11 = (*(v2 + 48) + 104 * (v8 | (v4 << 6)));
        v13 = *v11;
        v12 = v11[1];
        v14 = v11[2];
        v15 = v11[3];
        v16 = v11[4];
        v17 = v11[5];
        v18 = v11[6];
        v43 = v11[8];
        v41 = v11[7];
        v42 = v11[9];
        v19 = v11[10];
        v36 = v11[11];
        v20 = v11[12];
        Hasher.init(_seed:)();
        String.hash(into:)();
        v39 = v14;
        String.hash(into:)();
        v38 = v16;
        NSObject.hash(into:)();
        v37 = v17;
        String.hash(into:)();
        String.hash(into:)();
        String.hash(into:)();
        NSObject.hash(into:)();
        Hasher._combine(_:)(*(v20 + 16));
        v21 = *(v20 + 16);
        if (v21)
        {
          v22 = (v20 + 64);
          do
          {
            v23 = *v22;
            v22 += 5;

            v24 = v23;
            String.hash(into:)();
            String.hash(into:)();
            NSObject.hash(into:)();

            --v21;
          }

          while (v21);
        }

        Hasher._finalize()();
        v25 = _HashTable.nextHole(atOrAfter:)();
        *(v33 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
        v26 = (*(v34 + 48) + 104 * v25);
        result = v34;
        *v26 = v13;
        v26[1] = v12;
        v26[2] = v39;
        v26[3] = v15;
        v26[4] = v38;
        v26[5] = v37;
        v26[6] = v18;
        v26[7] = v41;
        v26[8] = v43;
        v26[9] = v42;
        v26[10] = v19;
        v26[11] = v36;
        v26[12] = v20;
        ++*(v34 + 16);
        v2 = v35;
        v7 = v40;
      }

      while (v40);
    }

    v9 = v4;
    while (1)
    {
      v4 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
        return result;
      }

      if (v4 >= v31)
      {
        break;
      }

      v10 = v32[v4];
      ++v9;
      if (v10)
      {
        v8 = __clz(__rbit64(v10));
        v40 = (v10 - 1) & v10;
        goto LABEL_12;
      }
    }

    v27 = 1 << *(v2 + 32);
    if (v27 >= 64)
    {
      v28 = result;
      sub_100047518(0, (v27 + 63) >> 6, v32);
      result = v28;
    }

    else
    {
      *v32 = -1 << v27;
    }

    *(v2 + 16) = 0;
    v1 = v30;
  }

  v29 = result;

  *v1 = v29;
  return result;
}

uint64_t sub_100048BCC()
{
  v1 = v0;
  v35 = type metadata accessor for UUID();
  v2 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  sub_10002EB80(&unk_100199328, &qword_10014E030);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (!*(v4 + 16))
  {
LABEL_27:

    *v1 = v6;
    return result;
  }

  v29 = v0;
  v30 = v4;
  v7 = 0;
  v8 = (v4 + 56);
  v9 = 1 << *(v4 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v4 + 56);
  v12 = (v9 + 63) >> 6;
  v33 = v2 + 32;
  v13 = result + 56;
  if (!v11)
  {
LABEL_7:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v7 >= v12)
      {
        break;
      }

      v16 = v8[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_12;
      }
    }

    v27 = 1 << *(v4 + 32);
    if (v27 >= 64)
    {
      sub_100047518(0, (v27 + 63) >> 6, v8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v1 = v29;
    *(v4 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_12:
    v17 = *(v4 + 48) + *(v2 + 72) * (v14 | (v7 << 6));
    v18 = *(v2 + 32);
    v31 = *(v2 + 72);
    v32 = v18;
    v18(v34, v17, v35);
    sub_10004AFA8(&qword_100199BD0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v19 = -1 << *(v6 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v13 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    result = v32(*(v6 + 48) + v22 * v31, v34, v35);
    ++*(v6 + 16);
    v4 = v30;
    if (!v11)
    {
      goto LABEL_7;
    }
  }

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
    v26 = *(v13 + 8 * v21);
    if (v26 != -1)
    {
      v22 = __clz(__rbit64(~v26)) + (v21 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

void sub_100048F24()
{
  sub_100006A04();
  v3 = v0;
  sub_100003A78();
  sub_10002EB80(v4, v5);
  sub_1000183B0();
  static _SetStorage.resize(original:capacity:move:)();
  sub_10000EE38();
  if (!v6)
  {
LABEL_28:

    *v3 = v2;
    sub_1000069EC();
    return;
  }

  v7 = 0;
  v8 = (v1 + 56);
  v9 = 1 << *(v1 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v1 + 56);
  v12 = (v9 + 63) >> 6;
  v13 = v2 + 56;
  if (!v11)
  {
LABEL_7:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v7 >= v12)
      {
        break;
      }

      ++v15;
      if (v8[v7])
      {
        sub_10000372C();
        v11 = v17 & v16;
        goto LABEL_12;
      }
    }

    sub_100004E14();
    if (v26 != v27)
    {
      sub_10000884C();
      *v8 = v28;
    }

    else
    {
      v29 = sub_10001109C();
      sub_100047518(v29, v30, v1 + 56);
    }

    *(v1 + 16) = 0;
    goto LABEL_28;
  }

  while (1)
  {
    sub_100006A34();
LABEL_12:
    v18 = *(*(v1 + 48) + 8 * (v14 | (v7 << 6)));
    v19 = NSObject._rawHashValue(seed:)(*(v2 + 40)) & ~(-1 << *(v2 + 32));
    if (((-1 << v19) & ~*(v13 + 8 * (v19 >> 6))) == 0)
    {
      break;
    }

    sub_1000066F0();
LABEL_22:
    sub_100007E38();
    sub_1000188AC();
    *(v25 + 8 * v24) = v18;
    sub_1000117A8();
    if (!v11)
    {
      goto LABEL_7;
    }
  }

  sub_100007AAC();
  while (1)
  {
    sub_100019CDC();
    if (v23)
    {
      if (v21)
      {
        break;
      }
    }

    if (v20 == v22)
    {
      v20 = 0;
    }

    if (*(v13 + 8 * v20) != -1)
    {
      sub_1000070E0();
      goto LABEL_22;
    }
  }

LABEL_30:
  __break(1u);
}

unint64_t sub_1000490A4(uint64_t a1, void *a2)
{
  NSObject._rawHashValue(seed:)(a2[5]);
  sub_10000884C();
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 56) |= 1 << result;
  *(a2[6] + 8 * result) = a1;
  ++a2[2];
  return result;
}

void *sub_100049124(uint64_t *a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_100048864();
    }

    else
    {
      if (v7 > v6)
      {
        sub_100049908();
        goto LABEL_41;
      }

      sub_100049F20();
    }

    v8 = *v3;
    Hasher.init(_seed:)();
    v9 = *a1;
    v10 = a1[1];
    String.hash(into:)();
    v11 = a1[2];
    v12 = a1[3];
    String.hash(into:)();
    NSObject.hash(into:)();
    v35 = a1[6];
    v36 = a1[5];
    String.hash(into:)();
    v33 = a1[8];
    v34 = a1[7];
    String.hash(into:)();
    v31 = a1[10];
    v32 = a1[9];
    String.hash(into:)();
    NSObject.hash(into:)();
    v28 = a1[12];
    sub_10004A69C(__dst, v28);
    v13 = Hasher._finalize()();
    v14 = -1 << *(v8 + 32);
    a2 = v13 & ~v14;
    if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v15 = ~v14;
      do
      {
        memcpy(__dst, (*(v8 + 48) + 104 * a2), 0x68uLL);
        v16 = __dst[0] == v9 && __dst[1] == v10;
        if (v16 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          v17 = __dst[2] == v11 && __dst[3] == v12;
          if (v17 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            sub_100003D44(0, &qword_100199300, NSObject_ptr);
            sub_100037C7C(__dst, v37);
            if (static NSObject.== infix(_:_:)() & 1) != 0 && (__dst[5] == v36 ? (v18 = __dst[6] == v35) : (v18 = 0), (v18 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (__dst[7] == v34 ? (v19 = __dst[8] == v33) : (v19 = 0), (v19 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (__dst[9] == v32 ? (v20 = __dst[10] == v31) : (v20 = 0), (v20 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (static NSObject.== infix(_:_:)()))))
            {
              sub_1000453A0(__dst[12], v28);
              v22 = v21;
              sub_10004AF54(__dst);
              if (v22)
              {
                goto LABEL_44;
              }
            }

            else
            {
              sub_10004AF54(__dst);
            }
          }
        }

        a2 = (a2 + 1) & v15;
      }

      while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

LABEL_41:
  v23 = *v29;
  *(*v29 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = memcpy((*(v23 + 48) + 104 * a2), a1, 0x68uLL);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (v26)
  {
    __break(1u);
LABEL_44:
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v23 + 16) = v27;
  }

  return result;
}

void sub_100049434(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10004B2C8();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = *(*v3 + 16);
  v16 = *(*v3 + 24);
  if (v16 <= v15 || (v4 & 1) == 0)
  {
    if (v4)
    {
      sub_100048F24();
      goto LABEL_8;
    }

    if (v16 <= v15)
    {
      sub_10004A508(v15 + 1, v5, v6);
LABEL_8:
      v17 = *v3;
      NSObject._rawHashValue(seed:)(*(*v3 + 40));
      sub_10000884C();
      v20 = ~v19;
      while (1)
      {
        v12 = v18 & v20;
        if (((*(v17 + 56 + (((v18 & v20) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v18 & v20)) & 1) == 0)
        {
          goto LABEL_12;
        }

        sub_100003D44(0, v10, v8);
        v21 = *(*(v17 + 48) + 8 * v12);
        v22 = static NSObject.== infix(_:_:)();

        if (v22)
        {
          goto LABEL_15;
        }

        v18 = v12 + 1;
      }
    }

    sub_100049CD8(v5, v6);
  }

LABEL_12:
  v23 = *v3;
  *(*v3 + 8 * (v12 >> 6) + 56) |= 1 << v12;
  *(*(v23 + 48) + 8 * v12) = v14;
  v24 = *(v23 + 16);
  v25 = __OFADD__(v24, 1);
  v26 = v24 + 1;
  if (v25)
  {
    __break(1u);
LABEL_15:
    ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v23 + 16) = v26;
    sub_10001CE84();
  }
}

uint64_t sub_10004958C(uint64_t a1, unint64_t a2, char a3)
{
  v23 = a1;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8.n128_f64[0] = __chkstk_darwin(v6);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  if (v12 <= v11 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_100048BCC();
      goto LABEL_8;
    }

    if (v12 <= v11)
    {
      sub_10004A1F0();
LABEL_8:
      v22 = v3;
      v13 = *v3;
      sub_10004AFA8(&qword_100199BD0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v14 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v15 = ~(-1 << *(v13 + 32));
      while (1)
      {
        a2 = v14 & v15;
        if (((*(v13 + 56 + (((v14 & v15) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v14 & v15)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v10, *(v13 + 48) + *(v7 + 72) * a2, v6);
        sub_10004AFA8(&qword_1001992E0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v16 = dispatch thunk of static Equatable.== infix(_:_:)();
        (*(v7 + 8))(v10, v6);
        if (v16)
        {
          goto LABEL_16;
        }

        v14 = a2 + 1;
      }

      v3 = v22;
      goto LABEL_13;
    }

    sub_100049AA4();
  }

LABEL_13:
  v17 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v7 + 32))(*(v17 + 48) + *(v7 + 72) * a2, v23, v6, v8);
  v19 = *(v17 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (v20)
  {
    __break(1u);
LABEL_16:
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v17 + 16) = v21;
  }

  return result;
}

void sub_100049818()
{
  v5 = v0;
  sub_10002EB80(&unk_10019BB30, &unk_10014DFA0);
  v6 = *v0;
  v7 = static _SetStorage.copy(original:)();
  if (*(v6 + 16))
  {
    v8 = sub_1000074D8();
    if (v11)
    {
      v12 = v8 >= v10;
    }

    else
    {
      v12 = 1;
    }

    if (v12)
    {
      memmove(v8, v1, 8 * v9);
    }

    sub_100011FD8();
    while (v4)
    {
      sub_100006A34();
LABEL_15:
      v17 = v13 | (v2 << 6);
      v18 = (*(v6 + 48) + 16 * v17);
      v19 = v18[1];
      v20 = (*(v7 + 48) + 16 * v17);
      *v20 = *v18;
      v20[1] = v19;
    }

    v14 = v2;
    while (1)
    {
      v2 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v2 >= v3)
      {
        goto LABEL_17;
      }

      ++v14;
      if (*(v1 + v2))
      {
        sub_10000372C();
        v4 = v16 & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v5 = v7;
  }
}

void *sub_100049908()
{
  v1 = v0;
  sub_10002EB80(&qword_100199308, &unk_10014E010);
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
    for (i = (v9 + 63) >> 6; v11; result = sub_100037C7C(__dst, v18))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v16 = *(v2 + 48);
      v17 = 104 * (v13 | (v8 << 6));
      memcpy(__dst, (v16 + v17), 0x68uLL);
      memmove((*(v4 + 48) + v17), (v16 + v17), 0x68uLL);
    }

    v14 = v8;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v15 = *(v2 + 56 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
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

void *sub_100049AA4()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002EB80(&unk_100199328, &qword_10014E030);
  v6 = *v0;
  v7 = static _SetStorage.copy(original:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
    result = (v7 + 56);
    v10 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v6 + 56 + 8 * v10)
    {
      result = memmove(result, (v6 + 56), 8 * v10);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v6 + 56);
    v16 = (v13 + 63) >> 6;
    v23 = v3 + 32;
    for (i = v3 + 16; v15; result = (*(v3 + 32))(*(v8 + 48) + v20, v5, v2))
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v20 = *(v3 + 72) * (v17 | (v12 << 6));
      (*(v3 + 16))(v5, *(v6 + 48) + v20, v2);
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v1 = v22;
        goto LABEL_21;
      }

      v19 = *(v6 + 56 + 8 * v12);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v8;
  }

  return result;
}

void sub_100049CD8(uint64_t *a1, uint64_t *a2)
{
  v7 = v2;
  sub_10002EB80(a1, a2);
  v8 = *v2;
  v9 = static _SetStorage.copy(original:)();
  if (*(v8 + 16))
  {
    v10 = sub_1000074D8();
    if (v13)
    {
      v14 = v10 >= v12;
    }

    else
    {
      v14 = 1;
    }

    if (v14)
    {
      memmove(v10, v3, 8 * v11);
    }

    sub_100011FD8();
    for (; v6; v21 = v20)
    {
      sub_100006A34();
LABEL_15:
      v19 = v15 | (v4 << 6);
      v20 = *(*(v8 + 48) + 8 * v19);
      *(*(v9 + 48) + 8 * v19) = v20;
    }

    v16 = v4;
    while (1)
    {
      v4 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v4 >= v5)
      {
        goto LABEL_17;
      }

      ++v16;
      if (*(v3 + v4))
      {
        sub_10000372C();
        v6 = v18 & v17;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v7 = v9;
  }
}

void sub_100049DB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  sub_100004B54();
  sub_100003A78();
  sub_10002EB80(&unk_10019BB30, &unk_10014DFA0);
  sub_1000183B0();
  static _SetStorage.resize(original:capacity:move:)();
  sub_10000EE38();
  if (v35)
  {
    v36 = 0;
    sub_1000029E8();
    sub_100002678();
    if (v34)
    {
      while (1)
      {
        sub_100012A14();
LABEL_9:
        v41 = (*(v31 + 48) + 16 * (v37 | (v36 << 6)));
        v42 = *v41;
        v43 = v41[1];
        Hasher.init(_seed:)();

        String.hash(into:)();
        Hasher._finalize()();
        sub_100005174();
        sub_100024830();
        if (v44)
        {
          break;
        }

        sub_1000066F0();
LABEL_17:
        sub_100007E38();
        sub_100013C38();
        v48 = (v47 + 16 * v46);
        *v48 = v42;
        v48[1] = v43;
        sub_1000117A8();
        if (!v34)
        {
          goto LABEL_4;
        }
      }

      sub_100007AAC();
      while (1)
      {
        sub_100019CDC();
        if (v44)
        {
          if (v45)
          {
            break;
          }
        }

        sub_1000119BC();
        if (!v44)
        {
          sub_1000070E0();
          goto LABEL_17;
        }
      }
    }

    else
    {
LABEL_4:
      v38 = v36;
      while (1)
      {
        v36 = v38 + 1;
        if (__OFADD__(v38, 1))
        {
          break;
        }

        if (v36 >= v33)
        {
          goto LABEL_19;
        }

        ++v38;
        if (*(v31 + 56 + 8 * v36))
        {
          sub_10000372C();
          v34 = v40 & v39;
          goto LABEL_9;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v30 = v32;
    sub_10000D320();
  }
}

char *sub_100049F20()
{
  v1 = v0;
  v2 = *v0;
  sub_10002EB80(&qword_100199308, &unk_10014E010);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 2))
  {
    v20 = v1;
    v5 = 0;
    v6 = v2 + 56;
    v7 = 1 << v2[32];
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 7);
    v10 = (v7 + 63) >> 6;
    v21 = result + 56;
    v22 = result;
    v23 = v2;
    if (v9)
    {
      do
      {
        v11 = __clz(__rbit64(v9));
        v24 = (v9 - 1) & v9;
LABEL_12:
        memcpy(__dst, (*(v2 + 6) + 104 * (v11 | (v5 << 6))), 0x68uLL);
        Hasher.init(_seed:)();
        sub_100037C7C(__dst, v25);
        String.hash(into:)();
        String.hash(into:)();
        NSObject.hash(into:)();
        String.hash(into:)();
        String.hash(into:)();
        String.hash(into:)();
        NSObject.hash(into:)();
        v14 = __dst[12];
        Hasher._combine(_:)(*(__dst[12] + 16));
        v15 = *(v14 + 16);
        if (v15)
        {
          v16 = (v14 + 64);
          do
          {
            v17 = *v16;
            v16 += 5;

            v18 = v17;
            String.hash(into:)();
            String.hash(into:)();
            NSObject.hash(into:)();

            --v15;
          }

          while (v15);
        }

        Hasher._finalize()();
        v4 = v22;
        v19 = _HashTable.nextHole(atOrAfter:)();
        *&v21[(v19 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v19;
        result = memcpy((*(v22 + 6) + 104 * v19), __dst, 0x68uLL);
        ++*(v22 + 2);
        v2 = v23;
        v9 = v24;
      }

      while (v24);
    }

    v12 = v5;
    while (1)
    {
      v5 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v5 >= v10)
      {

        v1 = v20;
        goto LABEL_19;
      }

      v13 = *&v6[8 * v5];
      ++v12;
      if (v13)
      {
        v11 = __clz(__rbit64(v13));
        v24 = (v13 - 1) & v13;
        goto LABEL_12;
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

uint64_t sub_10004A1F0()
{
  v1 = v0;
  v32 = type metadata accessor for UUID();
  v2 = *(v32 - 8);
  __chkstk_darwin(v32);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  sub_10002EB80(&unk_100199328, &qword_10014E030);
  v6 = static _SetStorage.resize(original:capacity:move:)();
  result = v5;
  if (*(v5 + 16))
  {
    v27 = v0;
    v8 = 0;
    v9 = v5 + 56;
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
    v30 = v2 + 16;
    v31 = v2;
    v14 = v6 + 56;
    v28 = (v2 + 32);
    v29 = result;
    if (v12)
    {
      while (1)
      {
        v15 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_12:
        v18 = *(v31 + 72);
        (*(v31 + 16))(v4, *(result + 48) + v18 * (v15 | (v8 << 6)), v32);
        sub_10004AFA8(&qword_100199BD0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        result = dispatch thunk of Hashable._rawHashValue(seed:)();
        v19 = -1 << *(v6 + 32);
        v20 = result & ~v19;
        v21 = v20 >> 6;
        if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
        {
          break;
        }

        v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
        (*v28)(*(v6 + 48) + v22 * v18, v4, v32);
        ++*(v6 + 16);
        result = v29;
        if (!v12)
        {
          goto LABEL_7;
        }
      }

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
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v16 = v8;
      while (1)
      {
        v8 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          break;
        }

        if (v8 >= v13)
        {

          v1 = v27;
          goto LABEL_25;
        }

        v17 = *(v9 + 8 * v8);
        ++v16;
        if (v17)
        {
          v15 = __clz(__rbit64(v17));
          v12 = (v17 - 1) & v17;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v1 = v6;
  }

  return result;
}

void sub_10004A508(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10004B2C8();
  v6 = v3;
  sub_100003A78();
  sub_10002EB80(v7, v8);
  sub_1000183B0();
  static _SetStorage.resize(original:capacity:move:)();
  sub_10000EE38();
  if (v9)
  {
    v30 = v3;
    v10 = 0;
    v11 = 1 << *(v4 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v4 + 56);
    v14 = (v11 + 63) >> 6;
    v15 = v5 + 56;
    if (v13)
    {
      while (1)
      {
        v16 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_12:
        v20 = *(v5 + 40);
        v21 = *(*(v4 + 48) + 8 * (v16 | (v10 << 6)));
        v22 = NSObject._rawHashValue(seed:)(v20) & ~(-1 << *(v5 + 32));
        if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
        {
          break;
        }

        sub_1000066F0();
LABEL_22:
        sub_100007E38();
        *(v15 + v27) |= v28;
        *(*(v5 + 48) + 8 * v29) = v21;
        sub_1000117A8();
        if (!v13)
        {
          goto LABEL_7;
        }
      }

      sub_100007AAC();
      while (1)
      {
        sub_100019CDC();
        if (v26)
        {
          if (v24)
          {
            break;
          }
        }

        if (v23 == v25)
        {
          v23 = 0;
        }

        if (*(v15 + 8 * v23) != -1)
        {
          sub_1000070E0();
          goto LABEL_22;
        }
      }
    }

    else
    {
LABEL_7:
      v17 = v10;
      while (1)
      {
        v10 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          break;
        }

        if (v10 >= v14)
        {

          v6 = v30;
          goto LABEL_26;
        }

        ++v17;
        if (*(v4 + 56 + 8 * v10))
        {
          sub_10000372C();
          v13 = v19 & v18;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_26:
    *v6 = v5;
    sub_10001CE84();
  }
}

void sub_10004A69C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  Hasher._combine(_:)(v3);
  if (v3)
  {
    v4 = (a2 + 64);
    do
    {
      v5 = *v4;
      v4 += 5;

      v6 = v5;
      String.hash(into:)();
      String.hash(into:)();
      NSObject.hash(into:)();

      --v3;
    }

    while (v3);
  }
}

uint64_t sub_10004A75C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = *(a7 - 8);
  v15 = __chkstk_darwin(a1);
  v17 = &v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v17, v18, v19, v15);
  if (qword_1001980C0 != -1)
  {
    swift_once();
  }

  sub_10004A8A8(a1, a2, a3, a4, v17, qword_100199110, a7, a8);
  return (*(v14 + 8))(v17, a7);
}

uint64_t sub_10004A8A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v23[3] = a7;
  v23[4] = a8;
  v15 = sub_100013234(v23);
  (*(*(a7 - 8) + 16))(v15, a5, a7);
  v16 = *(a6 + 32);
  sub_100013334(v23, v22);
  v17 = swift_allocObject();
  v17[2] = a6;
  v17[3] = a1;
  v17[4] = a2;
  v17[5] = a3;
  v17[6] = a4;
  sub_10001A798(v22, (v17 + 7));
  v18 = swift_allocObject();
  *(v18 + 16) = sub_10004AA90;
  *(v18 + 24) = v17;
  v21[4] = sub_10004AAA4;
  v21[5] = v18;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 1107296256;
  v21[2] = sub_1000445D0;
  v21[3] = &unk_10018C750;
  v19 = _Block_copy(v21);

  dispatch_sync(v16, v19);
  _Block_release(v19);
  LOBYTE(a4) = swift_isEscapingClosureAtFileLocation();

  if ((a4 & 1) == 0)
  {
    return sub_1000034F8(v23);
  }

  __break(1u);
  return result;
}

uint64_t sub_10004AAE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v4 = -1 << *(a1 + 32);
  *a4 = a1;
  v7 = *(a1 + 64);
  result = a1 + 64;
  v6 = v7;
  v8 = ~v4;
  v9 = -v4;
  a4[1] = result;
  a4[2] = v8;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  a4[3] = 0;
  a4[4] = v10 & v6;
  a4[5] = a2;
  a4[6] = a3;
  return result;
}

uint64_t sub_10004AB24@<X0>(void *a1@<X0>, uint64_t (*a2)(uint64_t *, void, void, void)@<X1>, uint64_t *a3@<X8>)
{
  result = a2(&v7, *a1, a1[1], a1[2]);
  v5 = v7;
  *a3 = result;
  a3[1] = v6;
  a3[2] = v5;
  return result;
}

uint64_t sub_10004AB9C()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  v4 = sub_100004DC8(v3);
  *v4 = v5;
  v4[1] = sub_10000BFAC;
  v6 = sub_1000125EC();

  return sub_100044A10(v6, v7, v1, v2, v8);
}

uint64_t sub_10004AC4C()
{
  sub_1000070C8();
  v2 = v1;
  v4 = v3;
  v6 = *(v0 + 16);
  v5 = *(v0 + 24);
  v7 = swift_task_alloc();
  v8 = sub_100004DC8(v7);
  *v8 = v9;
  v8[1] = sub_10000BEC4;

  return sub_100044C18(v4, v2, v6, v5);
}

uint64_t sub_10004ACF4()
{
  sub_1000070C8();
  v1 = *(v0 + 24);
  v2 = swift_task_alloc();
  v3 = sub_100004DC8(v2);
  *v3 = v4;
  v3[1] = sub_10000BEC4;
  v5 = sub_1000125EC();

  return sub_100044FD8(v5, v6, v1, v7, v8);
}

unint64_t sub_10004AE28()
{
  result = qword_1001992D0;
  if (!qword_1001992D0)
  {
    sub_10002EC70(&qword_1001992C8, &unk_10014DFF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001992D0);
  }

  return result;
}

uint64_t sub_10004AE8C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LNBundleRecord(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10004AEF0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LNBundleRecord(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10004AFA8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

__n128 sub_10004B0A0(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10004B0B4(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_10004B0F4(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_10004B14C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_10004B18C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_10004B1E8()
{
  result = qword_1001993F0;
  if (!qword_1001993F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001993F0);
  }

  return result;
}

unint64_t sub_10004B24C()
{
  result = qword_1001993F8;
  if (!qword_1001993F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001993F8);
  }

  return result;
}

uint64_t sub_10004B2E4(uint64_t a1, unint64_t a2)
{
  v13 = 46;
  v12[2] = &v13;

  v6 = sub_10004B8A4(0x7FFFFFFFFFFFFFFFLL, 1, sub_10004BC6C, v12, a1, a2);
  if (v6[2] != 2)
  {

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = objc_allocWithZone(NSError);
    sub_100007E4C();
    swift_willThrow();
    return v3;
  }

  type metadata accessor for AppIntentDomains();
  result = static AppIntentDomains.load()();
  if (v2)
  {

    return v3;
  }

  if (v6[2])
  {

    v3 = static String._fromSubstring(_:)();

    if (v6[2] >= 2uLL)
    {

      static String._fromSubstring(_:)();

      dispatch thunk of AppIntentDomains.getSchemaID(from:domain:)();
      v10 = v9;

      if (!v10)
      {

        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v11 = objc_allocWithZone(NSError);
        sub_100007E4C();
        swift_willThrow();
      }

      return v3;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10004B514@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v38 = a4;
  v37 = a3;
  v35 = a2;
  v34 = a1;
  v39 = a9;
  v36 = *(a10 - 8);
  __chkstk_darwin(a1);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v34 - v14;

  Table.init(jsonEach:key:)();
  v43 = &type metadata for Table;
  v44 = &protocol witness table for Table;
  v40 = swift_allocObject();
  memcpy((v40 + 16), __src, 0xB0uLL);
  QueryType.join(_:_:on:)();
  sub_1000034F8(&v40);
  sub_100002A04();
  static Expression.jsonExtract(key:source:)();
  v40 = v34;
  v41 = v35;
  v16 = == infix<A>(_:_:)();
  v18 = v17;
  v20 = v19;

  QueryType.filter(_:)(v16, v18, v20, a10, a11, v21, v22, v23, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], __src[9], __src[10], __src[11], __src[12], __src[13], __src[14], __src[15], __src[16], __src[17], __src[18], __src[19], __src[20], __src[21], v46, v47, v48, v49, v50);

  v24 = *(v36 + 8);
  v24(v12, a10);
  sub_100002A04();
  static Expression.jsonExtract(key:source:)();
  v40 = v37;
  v41 = v38;
  v25 = == infix<A>(_:_:)();
  v27 = v26;
  v29 = v28;

  QueryType.filter(_:)(v25, v27, v29, a10, a11, v30, v31, v32, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], __src[9], __src[10], __src[11], __src[12], __src[13], __src[14], __src[15], __src[16], __src[17], __src[18], __src[19], __src[20], __src[21], v46, v47, v48, v49, v50);

  return (v24)(v15, a10);
}

uint64_t sub_10004B860(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

void *sub_10004B8A4(uint64_t a1, char a2, uint64_t (*a3)(void *), uint64_t a4, uint64_t a5, unint64_t a6)
{
  v49 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_41;
  }

  v10 = a5;
  v13 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v14 = HIBYTE(a6) & 0xF) : (v14 = a5 & 0xFFFFFFFFFFFFLL), !v14))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v13 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v13 && (a2 & 1) != 0)
    {

      return _swiftEmptyArrayStorage;
    }

    v6 = String.subscript.getter();
    v10 = v29;
    v11 = v30;
    v12 = v31;

    sub_10001C504();
    v15 = v32;
    v8 = *(v32 + 16);
    v33 = *(v32 + 24);
LABEL_37:
    v9 = v8 + 1;
    if (v8 < v33 >> 1)
    {
LABEL_38:
      *(v15 + 16) = v9;
      v37 = (v15 + 32 * v8);
      v37[4] = v6;
      v37[5] = v10;
      v37[6] = v11;
      v37[7] = v12;
      return v15;
    }

LABEL_41:
    sub_10001C504();
    v15 = v38;
    goto LABEL_38;
  }

  v6 = a4;
  v15 = 4 * v14;
  v47 = _swiftEmptyArrayStorage;
  v16 = 15;
  while (1)
  {
    v45 = v16;
    while (1)
    {
      v12 = v16 >> 14;
      if (v16 >> 14 == v15)
      {
        v16 = v45;
        goto LABEL_30;
      }

      v17 = String.subscript.getter();
      v11 = v18;
      v48[0] = v17;
      v48[1] = v18;
      v19 = v49(v48);
      if (v7)
      {

        return v15;
      }

      v20 = v19;

      if (v20)
      {
        break;
      }

      v16 = String.index(after:)();
    }

    v22 = (v45 >> 14 == v12) & a2;
    if (v22)
    {
      goto LABEL_20;
    }

    if (v12 < v45 >> 14)
    {
      break;
    }

    v46 = String.subscript.getter();
    v41 = v24;
    v42 = v23;
    v40 = v25;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_10001C504();
      v47 = v27;
    }

    v12 = v47[2];
    v11 = v12 + 1;
    if (v12 >= v47[3] >> 1)
    {
      sub_10001C504();
      v47 = v28;
    }

    v47[2] = v11;
    v26 = &v47[4 * v12];
    v26[4] = v46;
    v26[5] = v42;
    v26[6] = v41;
    v26[7] = v40;
LABEL_20:
    v16 = String.index(after:)();
    if ((v22 & 1) == 0 && v47[2] == a1)
    {
LABEL_30:
      if (v16 >> 14 == v15 && (a2 & 1) != 0)
      {

        return v47;
      }

      if (v15 < v16 >> 14)
      {
        __break(1u);
      }

      else
      {
        v6 = String.subscript.getter();
        v10 = v34;
        v11 = v35;
        v12 = v36;

        v15 = v47;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
LABEL_36:
          v8 = *(v15 + 16);
          v33 = *(v15 + 24);
          goto LABEL_37;
        }
      }

      sub_10001C504();
      v15 = v39;
      goto LABEL_36;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10004BCF4()
{
  v0 = sub_10002EB80(&unk_10019AAC0, &unk_10014BE40);
  v1 = sub_100013F04(&qword_100198780, &unk_10019AAC0, &unk_10014BE40);
  return ExpressionType.init(_:)(0x617461646174656DLL, 0xE800000000000000, v0, v1);
}

uint64_t sub_10004BDDC()
{
  v0 = sub_10002EB80(&unk_10019AAC0, &unk_10014BE40);
  v1 = sub_100013F04(&qword_100198780, &unk_10019AAC0, &unk_10014BE40);
  return ExpressionType.init(_:)(0xD000000000000010, 0x8000000100154580, v0, v1);
}

uint64_t sub_10004BE6C()
{
  v0 = sub_10002EB80(&unk_10019AAC0, &unk_10014BE40);
  v1 = sub_100013F04(&qword_100198780, &unk_10019AAC0, &unk_10014BE40);
  return ExpressionType.init(_:)(0xD000000000000010, 0x8000000100154C20, v0, v1);
}

uint64_t sub_10004BEF4()
{
  v0 = sub_10002EB80(&unk_10019AAD0, &unk_100150890);
  v1 = sub_100013F04(&qword_100199500, &unk_10019AAD0, &unk_100150890);
  return ExpressionType.init(_:)(0x446465646F636E65, 0xEB00000000617461, v0, v1);
}

void sub_10004BF80()
{
  sub_100004DF0();
  v36 = v1;
  v3 = v2;
  v5 = v4;

  v6 = sub_10004C33C();
  v8 = v7;
  if (qword_1001980E0 != -1)
  {
    sub_100002A28(&qword_1001980E0);
  }

  sub_1000183C0(v42);
  sub_1000183C0(__src);
  sub_1000196B0(v42, v38);
  if (qword_1001980F8 != -1)
  {
    sub_100007AC0(&qword_1001980F8);
  }

  v9 = qword_1001994E0;
  v10 = *algn_1001994E8;
  v11 = qword_1001994F0;
  v40 = sub_10002EB80(&unk_10019AAD0, &unk_100150890);
  v41 = &protocol witness table for Expression<A>;
  v35 = v9;
  v39[0] = v9;
  v39[1] = v10;
  v39[2] = v11;

  SchemaType.select(_:_:)(v39, _swiftEmptyArrayStorage, &type metadata for Table, &protocol witness table for Table);
  memcpy(__dst, __src, sizeof(__dst));
  sub_10001970C(__dst);
  sub_1000034F8(v39);
  memcpy(v44, v38, 0xB0uLL);
  if (qword_1001980E8 != -1)
  {
    sub_100007E74(&qword_1001980E8);
  }

  sub_100003A8C(&qword_1001994B0);
  __src[0] = v5;
  __src[1] = v3;
  v12 = == infix<A>(_:_:)();
  v14 = v13;
  v16 = v15;
  if (qword_1001980F0 != -1)
  {
    sub_100006704(&qword_1001980F0);
  }

  sub_100003A8C(&unk_1001994C8);
  __src[0] = v6;
  __src[1] = v8;
  v17 = == infix<A>(_:_:)();
  v19 = v18;
  v21 = v20;

  v22 = && infix(_:_:)(v12, v14, v16, v17, v19, v21);
  v24 = v23;
  v26 = v25;

  v40 = &type metadata for Table;
  v41 = &protocol witness table for Table;
  sub_100003A98();
  v39[0] = swift_allocObject();
  memcpy(__src, v44, sizeof(__src));
  QueryType.filter(_:)(v22, v24, v26, &type metadata for Table, &protocol witness table for Table, v27, v28, v29, v35, v36, __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], __src[9], __src[10], __src[11], __src[12], __src[13], __src[14], __src[15], __src[16], __src[17], __src[18], __src[19], __src[20], __src[21], v38[0], v38[1], v38[2], v38[3], v38[4], v38[5], v38[6], v38[7], v38[8], v38[9], v38[10], v38[11], v38[12], v38[13]);

  sub_10001970C(v44);
  v30 = Connection.pluck(_:)(v39);
  sub_1000034F8(v39);
  if (!v0 && v30)
  {
    Row.get<A>(_:)();

    v31 = sub_10000373C();
    sub_10004C448(v31, v32);
    v33 = sub_10000373C();
    sub_100009B18(v33, v34);
  }

  sub_100004674();
}

uint64_t sub_10004C33C()
{
  v0 = objc_opt_self();
  v1 = String._bridgeToObjectiveC()();

  v2 = [v0 componentsFromLocaleIdentifier:v1];

  static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v4 = [v0 localeIdentifierFromComponents:isa];

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v5;
}

uint64_t sub_10004C448(uint64_t a1, uint64_t a2)
{
  sub_100003D44(0, &qword_100199D10, NSKeyedUnarchiver_ptr);
  sub_10002EB80(&qword_100199508, &unk_10014E210);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_10014BC40;
  *(v3 + 32) = sub_100003D44(0, &qword_100199510, NSArray_ptr);
  *(v3 + 40) = sub_100003D44(0, &unk_10019B290, LNAutoShortcut_ptr);
  static NSKeyedUnarchiver.unarchivedObject(ofClasses:from:)();

  if (!v2)
  {
    if (v5[3])
    {
      sub_10002EB80(&unk_10019BBB0, &unk_10014E220);
      if (swift_dynamicCast())
      {
        return v5[5];
      }

      else
      {
        return 0;
      }
    }

    else
    {
      sub_100003E9C(v5, &qword_1001992F0, &qword_10014E000);
      return 0;
    }
  }

  return result;
}

void sub_10004C5A8()
{
  sub_100004DF0();
  v125 = v1;

  v113 = sub_10004C33C();
  v119 = v2;
  if (qword_1001983E0 != -1)
  {
    swift_once();
  }

  memcpy(__dst, &unk_10019E430, sizeof(__dst));
  if (qword_1001980E0 != -1)
  {
    sub_100002A28(&qword_1001980E0);
  }

  memcpy(__src, &unk_100199400, sizeof(__src));
  v3 = sub_10002EB80(&qword_100199518, &unk_10014ED10);
  v4 = sub_100013F04(&qword_100199520, &qword_100199518, &unk_10014ED10);
  ExpressionType.init(_:)(0xD000000000000010, 0x8000000100154C20, v3, v4);
  memcpy(v176, __src, sizeof(v176));
  sub_10002EB80(&unk_100199100, &qword_10014E230);
  v5 = sub_10000373C();
  QueryType.namespace<A>(_:)(v5, v6, v175[2], &type metadata for Table, v7, &protocol witness table for Table, v8, v9, v79, v83, v88, v93, v97, v102, isUnique, v113, v119, v125, v0, v136, v141, v146, v151, v155, v159, v163, v169, v170, v171, v172, v173, v174[0], v174[1], v174[2], v174[3], v174[4], v174[5], v174[6], v174[7], v174[8], v174[9], v174[10], v174[11], v174[12], v174[13], v174[14]);
  v98 = v10;
  v103 = v11;
  isUniqued = v12;

  memcpy(v179, &unk_100199400, sizeof(v179));
  v13 = sub_10002EB80(&qword_100199528, &qword_10014E238);
  v14 = sub_100013F04(&qword_100199530, &qword_100199528, &qword_10014E238);
  ExpressionType.init(_:)(0x446465646F636E65, 0xEB00000000617461, v13, v14);
  memcpy(v176, v179, sizeof(v176));
  v15 = sub_10002EB80(&qword_100199538, &unk_10014E240);
  QueryType.namespace<A>(_:)(v175[0], v175[1], v175[2], &type metadata for Table, v15, &protocol witness table for Table, v16, v17, v80, v84, v89, v94, v98, v103, isUniqued, v114, v120, v126, v131, v137, v142, v147, v152, v156, v160, v164, v169, v170, v171, v172, v173, v174[0], v174[1], v174[2], v174[3], v174[4], v174[5], v174[6], v174[7], v174[8], v174[9], v174[10], v174[11], v174[12], v174[13], v174[14]);
  v19 = v18;
  v21 = v20;
  v23 = v22;

  memcpy(v180, &unk_10019E430, sizeof(v180));
  if (qword_1001983E8 != -1)
  {
    swift_once();
  }

  memcpy(v176, v180, sizeof(v176));
  QueryType.namespace<A>(_:)(qword_10019E4E0, *algn_10019E4E8, qword_10019E4F0, &type metadata for Table, &type metadata for String, &protocol witness table for Table, v24, v25, v81, v85, v90, v95, v99, v104, isUniquea, v115, v121, v127, v132, v138, v143, v148, qword_10019E4F0, *algn_10019E4E8, qword_10019E4E0, v165, v169, v170, v171, v172, v173, v174[0], v174[1], v174[2], v174[3], v174[4], v174[5], v174[6], v174[7], v174[8], v174[9], v174[10], v174[11], v174[12], v174[13], v174[14]);
  v27 = v26;
  v29 = v28;
  v31 = v30;
  memcpy(v176, __dst, sizeof(v176));
  v174[3] = sub_10002EB80(&unk_10019AAC0, &unk_10014BE40);
  v174[4] = &protocol witness table for Expression<A>;
  v91 = v27;
  v174[0] = v27;
  v174[1] = v29;
  v174[2] = v31;
  sub_10002EB80(&qword_1001987A0, &qword_10014BE50);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_10014CE90;
  *(v32 + 56) = v13;
  *(v32 + 64) = &protocol witness table for Expression<A>;
  *(v32 + 32) = v19;
  *(v32 + 40) = v21;
  *(v32 + 48) = v23;

  v166 = v21;

  SchemaType.select(_:_:)(v174, v32, &type metadata for Table, &protocol witness table for Table);
  swift_setDeallocating();
  sub_100018898();
  sub_1000034F8(v174);
  memcpy(v174, v175, sizeof(v174));
  sub_1000183C0(v181);
  v172 = &type metadata for Table;
  v173 = &protocol witness table for Table;
  sub_100003A98();
  v169 = swift_allocObject();
  sub_1000183C0((v169 + 16));
  sub_1000183C0(v182);
  sub_1000196B0(v181, v176);
  if (qword_1001980E8 != -1)
  {
    sub_100007E74(&qword_1001980E8);
  }

  v33 = qword_1001994B0;
  v34 = *algn_1001994B8;
  memcpy(v176, v182, sizeof(v176));
  QueryType.namespace<A>(_:)(qword_1001994B0, *algn_1001994B8, qword_1001994C0, &type metadata for Table, &type metadata for String, &protocol witness table for Table, v35, v36, v82, v86, v91, v29, v100, v105, isUniqueb, v116, v122, v128, v133, v139, v144, v19, v153, v157, v161, v166, v169, v170, v171, v172, v173, v174[0], v174[1], v174[2], v174[3], v174[4], v174[5], v174[6], v174[7], v174[8], v174[9], v174[10], v174[11], v174[12], v174[13], v174[14]);
  sub_1000115B0();
  v37 = == infix<A>(_:_:)();
  v39 = v38;
  v41 = v40;

  v176[0] = v117;
  v176[1] = v123;
  v42 = == infix<A>(_:_:)();
  sub_1000115B0();

  v43 = && infix(_:_:)(v37, v39, v41, v42, v33, v34);
  v45 = v44;
  v47 = v46;

  QueryType.join(_:_:on:)(2, &v169, v43, v45, v47, &type metadata for Table, &protocol witness table for Table, v48, &protocol witness table for String, v87, v92, v96, v101, v106, isUniquee, v117, v123, v129, v134, v140, v145, v149, v154, v158, v162, v167, v169, v170, v171, v172, v173, v174[0], v174[1], v174[2], v174[3], v174[4], v174[5], v174[6], v174[7], v174[8], v174[9], v174[10], v174[11], v174[12], v174[13], v174[14]);

  memcpy(v183, v174, sizeof(v183));
  sub_10001970C(v183);
  sub_1000034F8(&v169);
  memcpy(v184, v176, sizeof(v184));
  v176[3] = &type metadata for Table;
  v176[4] = &protocol witness table for Table;
  sub_100003A98();
  v176[0] = swift_allocObject();
  memcpy((v176[0] + 16), v184, 0xB0uLL);
  Connection.prepareRowIterator(_:)(v176);
  if (v135)
  {

    sub_1000034F8(v176);
LABEL_34:
    sub_100004674();
    return;
  }

  v50 = v49;
  sub_1000034F8(v176);
  v51 = _swiftEmptyDictionarySingleton;
  v52 = v168;
  for (i = v50; ; v50 = i)
  {
    v53 = Statement.failableNext()();
    if (v54)
    {

      goto LABEL_34;
    }

    v55 = v53;
    if (!v53)
    {

      goto LABEL_34;
    }

    Row.get<A>(_:)();
    v56 = v176[0];
    v57 = v176[1];
    Row.get<A>(_:)(v150, v52, v50, v55, &type metadata for Data, &protocol witness table for Data, v176);

    v58 = v176[1];
    if (v176[1] >> 60 == 15)
    {

      goto LABEL_34;
    }

    v59 = v176[0];
    sub_100003D44(0, &qword_100199D10, NSKeyedUnarchiver_ptr);
    sub_10002EB80(&qword_100199508, &unk_10014E210);
    v60 = swift_allocObject();
    *(v60 + 16) = xmmword_10014BC40;
    *(v60 + 32) = sub_100003D44(0, &qword_100199510, NSArray_ptr);
    *(v60 + 40) = sub_100003D44(0, &unk_10019B290, LNAutoShortcut_ptr);
    static NSKeyedUnarchiver.unarchivedObject(ofClasses:from:)();

    if (!v176[3])
    {
      sub_100003E9C(v176, &qword_1001992F0, &qword_10014E000);
LABEL_22:
      sub_10000C2A0(v56, v57);
      v72 = v71;

      if (v72)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v176[0] = v51;
        v74 = v51[3];
        sub_10002EB80(&qword_100199540, &qword_10014E250);
        _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v74);
        v51 = v176[0];

        sub_10002EB80(&unk_10019BBB0, &unk_10014E220);
        _NativeDictionary._delete(at:)();
      }

LABEL_24:
      sub_10000D4DC(v59, v58);
      goto LABEL_25;
    }

    sub_10002EB80(&unk_10019BBB0, &unk_10014E220);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_22;
    }

    v124 = v175[0];
    isUniquec = swift_isUniquelyReferenced_nonNull_native();
    v176[0] = v51;
    v61 = sub_10000C2A0(v56, v57);
    v62 = v51[2];
    v118 = v63;
    v64 = (v63 & 1) == 0;
    v65 = v62 + v64;
    if (__OFADD__(v62, v64))
    {
      break;
    }

    v66 = v61;
    sub_10002EB80(&qword_100199540, &qword_10014E250);
    if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquec, v65))
    {
      v67 = sub_10000C2A0(v56, v57);
      v69 = v118;
      if ((v118 & 1) != (v68 & 1))
      {
        goto LABEL_37;
      }

      v70 = v67;
    }

    else
    {
      v70 = v66;
      v69 = v118;
    }

    if (v69)
    {

      v51 = v176[0];
      *(*(v176[0] + 56) + 8 * v70) = v124;

      goto LABEL_24;
    }

    v51 = v176[0];
    *(v176[0] + 8 * (v70 >> 6) + 64) |= 1 << v70;
    v75 = (v51[6] + 16 * v70);
    *v75 = v56;
    v75[1] = v57;
    *(v51[7] + 8 * v70) = v124;
    sub_10000D4DC(v59, v58);
    v76 = v51[2];
    v77 = __OFADD__(v76, 1);
    v78 = v76 + 1;
    if (v77)
    {
      goto LABEL_36;
    }

    v51[2] = v78;
LABEL_25:
    v52 = v168;
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void sub_10004D158()
{
  sub_100004DF0();
  v2 = v1;
  v4 = v3;

  v5 = sub_10004C33C();
  v7 = v6;
  if (qword_1001980E0 != -1)
  {
    sub_100002A28(&qword_1001980E0);
  }

  memcpy(v15, &unk_100199400, sizeof(v15));
  sub_10002EB80(&unk_10019AAE0, &unk_10014BE30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10014E1F0;
  if (qword_1001980E8 != -1)
  {
    sub_100007E74(&qword_1001980E8);
  }

  sub_100003A8C(&qword_1001994B0);
  v14[0] = v4;
  v14[1] = v2;
  <- infix<A>(_:_:)();
  if (qword_1001980F0 != -1)
  {
    sub_100006704(&qword_1001980F0);
  }

  sub_100003A8C(&unk_1001994C8);
  v14[0] = v5;
  v14[1] = v7;
  <- infix<A>(_:_:)();

  if (qword_1001980F8 != -1)
  {
    sub_100007AC0(&qword_1001980F8);
  }

  v9 = qword_1001994E0;
  v10 = *algn_1001994E8;
  v11 = sub_10004D3DC();
  if (v0)
  {
    sub_10002EBC8(inited + 112);
    sub_10002EBC8(inited + 32);
    *(inited + 16) = 0;
    swift_setDeallocating();
    sub_1000B3030();
  }

  else
  {
    v14[0] = v11;
    v14[1] = v12;
    <- infix<A>(_:_:)();
    sub_100009B18(v14[0], v14[1]);
    memcpy(v14, v15, sizeof(v14));
    v13 = QueryType.insert(or:_:)(AppIntents_SQLite_OnConflict_replace, inited);
    sub_1000115B0();
    swift_setDeallocating();
    sub_1000B3030();
    v16.template._countAndFlagsBits = v13;
    v16.template._object = v9;
    v16.bindings._rawValue = v10;
    Connection.run(_:)(v16);
  }

  sub_100004674();
}

void *sub_10004D3DC()
{
  v0 = objc_opt_self();
  sub_100003D44(0, &unk_10019B290, LNAutoShortcut_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v6 = 0;
  v2 = [v0 archivedDataWithRootObject:isa requiringSecureCoding:1 error:&v6];

  v3 = v6;
  if (v2)
  {
    v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v4 = v3;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v4;
}

void sub_10004D4FC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v5 = a2 + 64;
  v6 = 1 << *(a2 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a2 + 64);
  v9 = (v6 + 63) >> 6;

  v10 = 0;
  while (v8)
  {
    v11 = v10;
LABEL_9:
    v12 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v13 = v12 | (v11 << 6);
    v14 = (*(a2 + 48) + 16 * v13);
    v15 = *v14;
    v16 = v14[1];
    v17 = *(*(a2 + 56) + 8 * v13);

    v18 = sub_1000978C4(0xFuLL, v15, v16);
    v30 = v19;
    v31 = v18;
    v29 = v20;
    v22 = v21;

    v23 = sub_10004DA14(v17, a3, a4, a5);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_100068CD8(v23, v31, v30, v29, v22, isUniquelyReferenced_nonNull_native);
  }

  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v9)
    {

      return;
    }

    v8 = *(v5 + 8 * v11);
    ++v10;
    if (v8)
    {
      v10 = v11;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_10004D698(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  result = sub_1000232F4(a3);
  v7 = 0;
  v35 = a3 & 0xC000000000000001;
  v36 = result;
  v34 = a3 & 0xFFFFFFFFFFFFFF8;
  v8 = _swiftEmptyArrayStorage;
  v32 = a3 + 32;
  while (1)
  {
    if (v7 == v36)
    {
      return v8;
    }

    if (v35)
    {
      result = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v7 >= *(v34 + 16))
      {
        goto LABEL_42;
      }

      result = *(v32 + 8 * v7);
    }

    v9 = result;
    v10 = __OFADD__(v7, 1);
    v11 = v7 + 1;
    if (v10)
    {
      break;
    }

    v41 = result;
    v12 = v4;
    a1(&v40, &v41);
    if (v4)
    {

      return v8;
    }

    v13 = v40;
    if (v40 >> 62)
    {
      v14 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v14 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v15 = v8 >> 62;
    if (v8 >> 62)
    {
      result = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      result = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v16 = result + v14;
    if (__OFADD__(result, v14))
    {
      goto LABEL_43;
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v38 = v14;
    if (result)
    {
      if (!v15)
      {
        v17 = v8 & 0xFFFFFFFFFFFFFF8;
        if (v16 <= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_20;
        }

        goto LABEL_19;
      }

LABEL_18:
      _CocoaArrayWrapper.endIndex.getter();
      goto LABEL_19;
    }

    if (v15)
    {
      goto LABEL_18;
    }

LABEL_19:
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v8 = result;
    v17 = result & 0xFFFFFFFFFFFFFF8;
LABEL_20:
    v37 = v11;
    v18 = *(v17 + 16);
    v19 = (*(v17 + 24) >> 1) - v18;
    v20 = v17 + 8 * v18;
    if (v13 >> 62)
    {
      v22 = _CocoaArrayWrapper.endIndex.getter();
      if (v22)
      {
        v23 = v22;
        result = _CocoaArrayWrapper.endIndex.getter();
        v31 = result;
        if (v19 < result)
        {
          goto LABEL_46;
        }

        if (v23 < 1)
        {
          goto LABEL_48;
        }

        v30 = v8;
        sub_100013EBC(&qword_100199660, &qword_100199658, &qword_10014E358, &protocol conformance descriptor for [A]);
        for (i = 0; i != v23; ++i)
        {
          sub_10002EB80(&qword_100199658, &qword_10014E358);
          v25 = sub_100037B20(v39, i, v13);
          v27 = *v26;
          v25(v39, 0);
          *(v20 + 32 + 8 * i) = v27;
        }

        v8 = v30;
        v4 = v12;
        v21 = v31;
        goto LABEL_30;
      }
    }

    else
    {
      v21 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v21)
      {
        if (v19 < v21)
        {
          goto LABEL_47;
        }

        sub_100003D44(0, &qword_100198B98, LNAutoShortcutLocalizedPhrase_ptr);
        swift_arrayInitWithCopy();
LABEL_30:

        if (v21 < v38)
        {
          goto LABEL_44;
        }

        if (v21 > 0)
        {
          v28 = *(v17 + 16);
          v10 = __OFADD__(v28, v21);
          v29 = v28 + v21;
          if (v10)
          {
            goto LABEL_45;
          }

          *(v17 + 16) = v29;
        }

        goto LABEL_35;
      }
    }

    if (v38 > 0)
    {
      goto LABEL_44;
    }

LABEL_35:
    v7 = v37;
  }

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
LABEL_48:
  __break(1u);
  return result;
}

void *sub_10004DA14(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v69 = a3;
  v70 = a4;
  v6 = sub_10002EB80(&qword_100199650, &qword_10014E350);
  v73 = *(v6 - 8);
  v74 = v6;
  __chkstk_darwin(v6);
  v8 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v72 = (&v66 - v10);
  __chkstk_darwin(v11);
  v71 = &v66 - v12;
  v13 = 0;
  v14 = *(a1 + 16);
  v75 = a1;
  v76 = v14;
  v15 = _swiftEmptyArrayStorage;
  v67 = a2;
  v68 = v8;
  while (1)
  {
    if (v76 == v13)
    {

      return v15;
    }

    v79 = v15;
    v16 = type metadata accessor for LNAppShortcutParameterRecord(0);
    v17 = v75 + ((*(*(v16 - 8) + 80) + 32) & ~*(*(v16 - 8) + 80));
    v18 = *(*(v16 - 8) + 72);
    v80 = v13;
    v19 = v17 + v18 * v13;
    v20 = (v19 + *(v16 + 32));
    v22 = *v20;
    v21 = v20[1];
    v23 = *a2;
    v24 = *(*a2 + 16);
    v78 = v19;
    if (v24)
    {
      v25 = sub_10000C2A0(v22, v21);
      if (v26)
      {
        v27 = (*(v23 + 56) + 16 * v25);
        v29 = *v27;
        v28 = v27[1];

        goto LABEL_15;
      }
    }

    v77 = v16;
    v30 = *(v19 + *(v16 + 28));
    v31 = String._bridgeToObjectiveC()();
    v32 = [v30 localizedStringForLocaleIdentifier:v31];

    v33 = v22;
    v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v34 = v21;
    v28 = v35;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v81 = *a2;
    v37 = v81;
    v38 = v33;
    v39 = v33;
    v40 = v34;
    v41 = sub_10000C2A0(v39, v34);
    v43 = v37[2];
    v44 = (v42 & 1) == 0;
    v45 = v43 + v44;
    if (__OFADD__(v43, v44))
    {
      break;
    }

    v46 = v41;
    v47 = v42;
    sub_10002EB80(&qword_100199670, &unk_10014E370);
    if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v45))
    {
      v48 = sub_10000C2A0(v38, v40);
      if ((v47 & 1) != (v49 & 1))
      {
        goto LABEL_23;
      }

      v46 = v48;
    }

    v50 = v81;
    if (v47)
    {
      v51 = (v81[7] + 16 * v46);
      *v51 = v29;
      v51[1] = v28;
    }

    else
    {
      v81[(v46 >> 6) + 8] |= 1 << v46;
      v52 = (v50[6] + 16 * v46);
      *v52 = v38;
      v52[1] = v40;
      v53 = (v50[7] + 16 * v46);
      *v53 = v29;
      v53[1] = v28;
      v54 = v50[2];
      v55 = __OFADD__(v54, 1);
      v56 = v54 + 1;
      if (v55)
      {
        goto LABEL_22;
      }

      v50[2] = v56;
    }

    a2 = v67;
    v8 = v68;
    *v67 = v50;
    v16 = v77;
LABEL_15:
    v57 = *(v74 + 48);
    v58 = v72;
    *v72 = v29;
    *(v58 + 8) = v28;
    sub_1000554A8(v78, v58 + v57);
    sub_1000075C4(v58 + v57, 0, 1, v16);
    v59 = v71;
    sub_10005644C(v58, v71, &qword_100199650, &qword_10014E350);
    sub_10005644C(v59, v8, &qword_100199650, &qword_10014E350);
    v15 = v79;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1000704D0(0, v15[2] + 1, 1, v15);
      v15 = v63;
    }

    v60 = v80;
    v62 = v15[2];
    v61 = v15[3];
    if (v62 >= v61 >> 1)
    {
      sub_1000704D0(v61 > 1, v62 + 1, 1, v15);
      v15 = v64;
    }

    v15[2] = v62 + 1;
    sub_10005644C(v8, v15 + ((*(v73 + 80) + 32) & ~*(v73 + 80)) + *(v73 + 72) * v62, &qword_100199650, &qword_10014E350);
    v13 = v60 + 1;
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

Swift::Int sub_10004DEF0()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Int sub_10004DF44(uint64_t a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

uint64_t sub_10004DFA4()
{
  v0 = type metadata accessor for Logger();
  sub_100037CD8(v0, qword_10019D928);
  sub_10000347C(v0, qword_10019D928);
  result = LNLogSubsystem;
  if (LNLogSubsystem)
  {
    String.init(cString:)();
    return Logger.init(subsystem:category:)();
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_10004E028(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = objc_allocWithZone(LSApplicationRecord);
  swift_bridgeObjectRetain_n();
  v10 = sub_1000906C0(a1, a2, 0);
  if (v4)
  {
  }

  else
  {
    v11 = v10;
    v21 = sub_100003D44(0, &qword_100198C08, LSApplicationRecord_ptr);
    v22 = &off_10018C118;
    *&v19 = v11;
    sub_10001A798(&v19, v23);
    sub_10004E760(v23, a3, a4, v12, v13, v14, v15, v16, v19, *(&v19 + 1), v20, v21, v22, v23[0], v23[1], v23[2], v23[3], v23[4], a1, a2);
    v9 = v17;
    sub_10005660C(v23);
  }

  return v9;
}

uint64_t sub_10004E130(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100013334(a1, v14);
  sub_10004E1B8(v14, v15);
  if (!v4)
  {
    sub_10004E760(v15, a2, a3, v7, v8, v9, v10, v11, v14[0], v14[1], v14[2], v14[3], v14[4], v15[0], v15[1], v15[2], v15[3], v15[4], v15[5], v15[6]);
    v3 = v12;
    sub_10005660C(v15);
  }

  return v3;
}

uint64_t sub_10004E1B8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[3];
  v5 = a1[4];
  sub_1000034B4(a1, v4);
  v6 = (*(v5 + 8))(v4, v5);
  if (v7)
  {
    v8 = v6;
    v9 = v7;
    sub_100013334(a1, v16);
    *(&v17 + 1) = v8;
    v18 = v9;
    *(a2 + 48) = v9;
    v10 = v16[1];
    *a2 = v16[0];
    *(a2 + 16) = v10;
    *(a2 + 32) = v17;
  }

  else
  {
    if (qword_100198100 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_10000347C(v11, qword_10019D928);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "No bundle identifier found in app record", v14, 2u);
      sub_100004D8C();
    }

    sub_10005663C();
    swift_allocError();
    swift_willThrow();
  }

  return sub_1000034F8(a1);
}

void *sub_10004E338(uint64_t a1, uint64_t a2)
{
  sub_1000034B4((v2 + 112), *(v2 + 136));
  result = sub_1000212D8(0, 0);
  if (!v3)
  {
    v8 = result;
    v14 = a1;
    v9 = 0;
    v16 = _swiftEmptyDictionarySingleton;
    v10 = result[2];
    for (i = (result + 6); ; i += 3)
    {
      if (v10 == v9)
      {

        return v16;
      }

      if (v9 >= v8[2])
      {
        break;
      }

      v13 = *(i - 1);
      v12 = *i;
      v15[0] = *(i - 2);
      v15[1] = v13;
      v15[2] = v12;

      v4 = v12;
      sub_10004E47C(&v16, v15, v2, v14, a2);

      ++v9;
    }

    __break(1u);

    __break(1u);
  }

  return result;
}

void sub_10004E47C(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *a2;
  v10 = a2[1];
  v11 = a2[2];
  v12 = objc_allocWithZone(LSApplicationRecord);
  swift_bridgeObjectRetain_n();
  v13 = sub_1000906C0(v9, v10, 0);
  if (v5)
  {

    if (qword_100198100 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_10000347C(v20, qword_10019D928);

    v21 = v11;
    swift_errorRetain();
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v39[0] = swift_slowAlloc();
      *v24 = 136315394;
      *(v24 + 4) = sub_100004C50(v9, v10, v39);
      *(v24 + 12) = 2080;
      swift_getErrorValue();
      v25 = Error.localizedDescription.getter();
      v27 = sub_100004C50(v25, v26, v39);

      *(v24 + 14) = v27;
      _os_log_impl(&_mh_execute_header, v22, v23, "Failed to fetch AppShortcut records for %s: %s", v24, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }
  }

  else
  {
    v14 = v13;
    v37 = sub_100003D44(0, &qword_100198C08, LSApplicationRecord_ptr);
    v38 = &off_10018C118;
    *&v35 = v14;
    sub_10001A798(&v35, v39);
    v39[5] = v9;
    v39[6] = v10;
    sub_10004E760(v39, a4, a5, v15, v16, v17, v18, v19, v31, v32, v33, v34, v35, *(&v35 + 1), v36, v37, v38, v39[0], v39[1], v39[2]);
    v29 = v28;
    sub_10005660C(v39);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v39[0] = *a1;
    sub_100068A7C(v29, v9, v10, isUniquelyReferenced_nonNull_native);
    *a1 = v39[0];
  }
}

void sub_10004E760(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_100004DF0();
  a19 = v21;
  a20 = v22;
  v23 = v20;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v30 = type metadata accessor for OSSignpostID();
  sub_100002944();
  v32 = v31;
  __chkstk_darwin(v33);
  v35 = &a9 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  static OSSignpostID.exclusive.getter();
  sub_1000C4144();
  sub_10004E8A8(v29, v23, v27, v25, &a10);
  sub_1000F1430();

  (*(v32 + 8))(v35, v30);
  sub_100004674();
}

void sub_10004E8A8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v77 = a4;
  v78 = a3;
  v76 = a5;
  v7 = type metadata accessor for AppShortcutInterpolator.Builder(0);
  __chkstk_darwin(v7);
  v9 = v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for OSSignpostID();
  v75 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a1 + 40);
  v13 = *(a1 + 48);
  sub_1000034B4((a2 + 112), *(a2 + 136));
  v15 = v89;
  sub_100012BBC(v14, v13, &v80);
  if (!v15)
  {
    v70 = a1;
    v71 = v7;
    v74 = a2;
    v72 = v9;
    v89 = v14;
    if (v81)
    {
      v73 = v81;
      v16 = v80;
      v17 = v83;
      v84 = v82;
      v18 = v74;
      sub_1000034B4((v74 + 112), *(v74 + 136));
      v19 = v77;
      sub_10004BF80();
      v68 = v17;
      v69 = v16;
      if (v20)
      {
        v74 = v20;
        v75 = 0;
        v86[0] = v69;
        v86[1] = v73;
        sub_10001D368(v86);
        v87 = v82;
        sub_100003EFC(&v87, &unk_100199100, &qword_10014E230);
        if (qword_100198100 != -1)
        {
          swift_once();
        }

        v27 = type metadata accessor for Logger();
        sub_10000347C(v27, qword_10019D928);
        v28 = v13;

        v29 = v19;

        v30 = Logger.logObject.getter();
        v31 = static os_log_type_t.info.getter();

        v32 = os_log_type_enabled(v30, v31);
        v33 = v76;
        if (v32)
        {
          v34 = swift_slowAlloc();
          v79[0] = swift_slowAlloc();
          *v34 = 136315394;
          *(v34 + 4) = sub_100004C50(v89, v28, v79);
          *(v34 + 12) = 2080;
          *(v34 + 14) = sub_100004C50(v78, v29, v79);
          _os_log_impl(&_mh_execute_header, v30, v31, "Successful AppShortcut cache hit for %s:%s", v34, 0x16u);
          swift_arrayDestroy();
        }

        *v33 = v74;
      }

      else
      {
        static OSSignpostID.exclusive.getter();
        sub_1000C4144();
        v67[1] = v35;
        (*(v75 + 8))(v12, v10);
        sub_1000034B4((v18 + 112), *(v18 + 136));
        v36 = v13;

        v37 = v89;
        v67[0] = sub_1000212D8(v89, v36);
        sub_1000034B4((v18 + 112), *(v18 + 136));
        v38 = sub_100078CB8(v37, v36);
        v75 = 0;
        v39 = v38;
        v40 = v68;

        v41 = v71;
        v42 = v72;
        sub_1000555BC(v70, &v72[v71[5]]);
        sub_100013334(v18 + 112, &v42[v41[9]]);
        v85 = v84;
        v43 = v19;

        sub_100009E90(&v85, v79, &unk_100199100, &qword_10014E230);
        if (qword_100198300 != -1)
        {
          swift_once();
        }

        v44 = type metadata accessor for Logger();
        v45 = sub_10000347C(v44, qword_10019E038);
        (*(*(v44 - 8) + 16))(v42, v45, v44);
        v46 = &v42[v41[6]];
        *v46 = v78;
        *(v46 + 1) = v43;
        *&v42[v41[7]] = v67[0];
        *&v42[v41[8]] = v39;
        *&v42[v41[10]] = v40;
        *&v42[v41[11]] = v85;
        v88[0] = v69;
        v88[1] = v73;
        sub_10001D368(v88);
        sub_100003EFC(&v85, &unk_100199100, &qword_10014E230);
        if (qword_100198100 != -1)
        {
          swift_once();
        }

        v47 = sub_10000347C(v44, qword_10019D928);

        v48 = Logger.logObject.getter();
        v49 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v48, v49))
        {
          v50 = v43;
          v51 = v47;
          v52 = swift_slowAlloc();
          v79[0] = swift_slowAlloc();
          *v52 = 136446466;
          *(v52 + 4) = sub_100004C50(v89, v36, v79);
          *(v52 + 12) = 2082;
          *(v52 + 14) = sub_100004C50(v78, v50, v79);
          _os_log_impl(&_mh_execute_header, v48, v49, "Interpolating AppShortcuts for %{public}s:%{public}s", v52, 0x16u);
          swift_arrayDestroy();

          v47 = v51;
        }

        v53 = v75;
        sub_10004F550();
        if (v53)
        {
          sub_1000555F4();
        }

        else
        {
          v73 = v54;
          v75 = 0;

          v55 = v77;

          v56 = Logger.logObject.getter();
          v57 = static os_log_type_t.debug.getter();

          if (os_log_type_enabled(v56, v57))
          {
            v58 = swift_slowAlloc();
            v71 = v47;
            v59 = v58;
            v79[0] = swift_slowAlloc();
            *v59 = 136446466;
            *(v59 + 4) = sub_100004C50(v89, v36, v79);
            *(v59 + 12) = 2082;
            *(v59 + 14) = sub_100004C50(v78, v55, v79);
            _os_log_impl(&_mh_execute_header, v56, v57, "Caching AppShortcuts for %{public}s:%{public}s", v59, 0x16u);
            swift_arrayDestroy();
          }

          sub_1000034B4((v74 + 112), *(v74 + 136));
          v60 = v73;
          v61 = v75;
          sub_10004D158();
          if (v61)
          {
            swift_errorRetain();
            v62 = Logger.logObject.getter();
            v63 = static os_log_type_t.error.getter();

            if (os_log_type_enabled(v62, v63))
            {
              v64 = swift_slowAlloc();
              v65 = swift_slowAlloc();
              *v64 = 138412290;
              swift_errorRetain();
              v66 = _swift_stdlib_bridgeErrorToNSError();
              *(v64 + 4) = v66;
              *v65 = v66;
              _os_log_impl(&_mh_execute_header, v62, v63, "Failed to update cached AppShortcuts: %@", v64, 0xCu);
              sub_100003EFC(v65, &unk_10019A260, &unk_10014D030);
            }
          }

          sub_1000555F4();
          *v76 = v60;
        }

        sub_1000F1430();
      }
    }

    else
    {
      if (qword_100198100 != -1)
      {
        swift_once();
      }

      v21 = type metadata accessor for Logger();
      sub_10000347C(v21, qword_10019D928);
      v22 = v13;

      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v79[0] = v26;
        *v25 = 136315138;
        *(v25 + 4) = sub_100004C50(v89, v22, v79);
        _os_log_impl(&_mh_execute_header, v23, v24, "%s does not have AppShortcuts", v25, 0xCu);
        sub_1000034F8(v26);
      }

      *v76 = _swiftEmptyArrayStorage;
    }
  }
}

void sub_10004F550()
{
  sub_100050C90();
  v3 = v1;
  if (v1)
  {
    return;
  }

  v157 = v2;
  v165 = _swiftEmptyArrayStorage;
  v185 = _swiftEmptyArrayStorage;
  v4 = type metadata accessor for AppShortcutInterpolator.Builder(0);
  v5 = 0;
  v6 = *(v0 + v4[7]);
  v177 = v6 + 32;
  v178 = *(v6 + 16);
  v171 = 136315138;
  *&v7 = 136315394;
  v155 = v7;
  v179 = v4;
  v180 = v0;
  v176 = v6;
  while (1)
  {
    if (v5 == v178)
    {

      return;
    }

    if (v5 >= *(v6 + 16))
    {
      break;
    }

    v8 = (v177 + 24 * v5);
    v9 = *v8;
    v10 = v8[2];
    v182 = v5 + 1;
    v183 = v8[1];

    v11 = v10;
    v12 = [v11 actionIdentifier];
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v3;
    v16 = v15;

    sub_1000034B4((v0 + v4[9]), *(v0 + v4[9] + 24));
    v17 = v0 + v4[5];
    v18 = *(v17 + 40);
    v19 = *(v17 + 48);
    v181 = v13;
    v20 = v13;
    v21 = v16;
    v22 = v14;
    v23 = sub_100078C8C(v18, v19, v20, v16);
    v3 = v14;
    if (v14)
    {

      if (qword_1001982F0 != -1)
      {
        sub_100002A48();
        swift_once();
      }

      v24 = type metadata accessor for Logger();
      sub_10000347C(v24, qword_10019E008);
      sub_1000099C0();

      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.info.getter();

      if (sub_10001A9A4())
      {
        sub_100007764();
        v27 = sub_100003748();
        v35 = sub_100007AE0(v27, v28, v29, v30, v31, v32, v33, v34, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, *(&v155 + 1), v156, v157, v158, v159, v160, v161, v162, v163, v164, v165, v167, v168, v169, v170, v171);
        v37 = sub_100004C50(v35, v21, v36);

        *(v14 + 4) = v37;
        sub_10001AAB0(&_mh_execute_header, v25, v26, "%s does not have any metadata, skipping");
        sub_1000034F8(v5);
        sub_100004D8C();
        sub_100013468();
      }

      else
      {
      }

      v3 = 0;
      ++v5;
      goto LABEL_33;
    }

    v38 = v23;
    v169 = v18;
    v170 = v5;
    v172 = v9;
    v174 = v11;
    if (sub_10006A0A0(v11))
    {
      v39 = sub_10000519C();
      sub_100003D44(v39, &qword_100199638, LNAvailabilityChecker_ptr);
      v18 = sub_1000236F0(v18);
      v40 = [v18 availableForCurrentPlatformVersion];

      if ((v40 & 1) == 0)
      {
        if (qword_1001982F0 != -1)
        {
          sub_100002A48();
          swift_once();
        }

        v62 = type metadata accessor for Logger();
        sub_10000347C(v62, qword_10019E008);
        sub_1000099C0();

        v63 = Logger.logObject.getter();
        v64 = static os_log_type_t.info.getter();

        if (sub_10001A9A4())
        {
          sub_100007764();
          v65 = sub_100003748();
          v73 = sub_100007AE0(v65, v66, v67, v68, v69, v70, v71, v72, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, *(&v155 + 1), v156, v157, v158, v159, v160, v161, v162, v163, v164, v165, v167, v168, v169, v5, v171);
          sub_100004C50(v73, v21, v74);
          sub_100013C4C();
          *(v38 + 4) = 0;
          v3 = v21;
          sub_10001AAB0(&_mh_execute_header, v63, v64, "%s AppShortcut is marked as unavailable on current platform, skipping");
          sub_1000034F8(v5);
          sub_100004D8C();
          sub_100013468();
        }

        else
        {
        }

        ++v5;
        goto LABEL_33;
      }
    }

    v173 = v38;
    v41 = sub_10006A0A0(v38);
    v42 = v183;
    if (v41 && (v43 = sub_10000519C(), sub_100003D44(v43, &qword_100199638, LNAvailabilityChecker_ptr), v44 = sub_1000236F0(v18), v45 = [v44 availableForCurrentPlatformVersion], v44, (v45 & 1) == 0))
    {
      if (qword_1001982F0 != -1)
      {
        sub_100002A48();
        swift_once();
      }

      v84 = type metadata accessor for Logger();
      sub_10000347C(v84, qword_10019E008);
      sub_1000099C0();

      v85 = Logger.logObject.getter();
      v86 = static os_log_type_t.info.getter();

      if (!sub_10001A9A4())
      {

        goto LABEL_54;
      }

      sub_100007764();
      v87 = sub_100003748();
      v95 = sub_100007AE0(v87, v88, v89, v90, v91, v92, v93, v94, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, *(&v155 + 1), v156, v157, v158, v159, v160, v161, v162, v163, v164, v165, v167, v168, v169, v5, v171);
      sub_100004C50(v95, v21, v96);
      sub_100013C4C();
      *(v183 + 4) = 0;
      v3 = v21;
      sub_10001AAB0(&_mh_execute_header, v85, v86, "%s is marked as unavailable on current platform, skipping");
      sub_1000034F8(v5);
      sub_100004D8C();
      sub_100013468();

LABEL_55:
      v5 = v182;
LABEL_33:
      v4 = v179;
LABEL_34:
      v0 = v180;
      v6 = v176;
    }

    else if ([v173 visibleForUse:0])
    {
      v46 = sub_10005628C(v173, &selRef_requiredCapabilities, &qword_1001996F8, LNRequiredCapabilityMetadata_ptr);
      v50 = v19;
      v167 = v21;
      if (v46)
      {
        v51 = v46;
        v164 = v19;
        v168 = 0;
        v52 = sub_1000232F4(v46);
        if (v52)
        {
          v53 = v52;
          v54 = 0;
          v55 = (v51 & 0xC000000000000001);
          while (v53 != v54)
          {
            if (v55)
            {
              v56 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v54 >= *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_73;
              }

              v56 = *(v51 + 8 * v54 + 32);
            }

            v57 = v56;
            if (__OFADD__(v54, 1))
            {
              goto LABEL_72;
            }

            if ([v56 isFeatureFlagCapability])
            {
              v58 = [v57 key];
              if (!v58)
              {
                static String._unconditionallyBridgeFromObjectiveC(_:)();
                v58 = String._bridgeToObjectiveC()();
              }

              v59 = [objc_opt_self() featureEnabledWithDomainFeaturePair:v58];

              v60 = [v57 value];
              v61 = v59 == v60;
              v42 = v183;
              if (!v61)
              {

                if (qword_1001982F0 != -1)
                {
                  sub_100002A48();
                  swift_once();
                }

                v130 = type metadata accessor for Logger();
                sub_10000347C(v130, qword_10019E008);
                v131 = v167;

                v132 = Logger.logObject.getter();
                v133 = static os_log_type_t.info.getter();

                if (sub_10001A9A4())
                {
                  sub_100007764();
                  v134 = sub_100003748();
                  v142 = sub_100007AE0(v134, v135, v136, v137, v138, v139, v140, v141, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, *(&v155 + 1), v156, v157, v158, v159, v160, v161, v162, v163, v164, v165, v167, v22, v169, v170, v171);
                  v144 = sub_100004C50(v142, v131, v143);

                  *(v183 + 4) = v144;
                  sub_10001AAB0(&_mh_execute_header, v132, v133, "%s requires at least one missing feature flag, skipping");
                  sub_1000034F8(v55);
                  sub_100004D8C();
                  sub_100013468();
                }

                else
                {
                }

                v5 = v182;
                v3 = v168;
                v4 = v179;
                goto LABEL_34;
              }
            }

            else
            {
            }

            ++v54;
          }
        }

        v50 = v164;
      }

      sub_1000510D4(v172, v42, v174, *(v180 + v179[8]), v157, v47, v48, v49, v145, v146, SWORD2(v146), SBYTE6(v146), SHIBYTE(v146), v147, v148, v149, v150, v151, v152, v153, v154, v155, *(&v155 + 1));
      v98 = v97;
      v99 = [v174 shortTitle];
      if (v99)
      {
        v100 = v99;
        v101 = String._bridgeToObjectiveC()();
        v102 = [v100 localizedStringForLocaleIdentifier:v101];

        v103 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v164 = v104;
        v166 = v103;
      }

      else
      {
        v164 = 0;
        v166 = 0;
      }

      v105 = [v174 autoShortcutDescription];
      v168 = 0;
      v161 = v98;
      if (v105)
      {
        v106 = v105;
        v107 = v180;
        v108 = String._bridgeToObjectiveC()();
        v109 = [v106 localizedStringForLocaleIdentifier:v108];

        v110 = v179;
        v111 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v162 = v112;
        v163 = v111;
      }

      else
      {
        v162 = 0;
        v163 = 0;
        v110 = v179;
        v107 = v180;
      }

      v113 = sub_100056300(v173, &selRef_attributionBundleIdentifier);
      v159 = v114;
      v160 = v113;
      v115 = (v107 + v110[6]);
      v116 = v107;
      v117 = *v115;
      v118 = v115[1];

      v119 = [v174 systemImageName];
      v158 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v121 = v120;

      v122 = v110[11];
      v123 = *(v116 + v110[10]);
      sub_100051980(v170, *(v116 + v122), *(v116 + v122 + 8), v117, v118, v172, v183, v174);
      v125 = v124;
      v126 = [v174 phraseTemplates];
      sub_100003D44(0, &qword_10019AD00, LNStaticDeferredLocalizedString_ptr);
      v127 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v128 = objc_allocWithZone(LNAutoShortcut);
      sub_100054C34(v169, v50, v117, v118, v181, v167, v161, v166, v164, v163, v162, v158, v121, v123, v125, v160, v159, v127);
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      v129 = *((v185 & 0xFFFFFFFFFFFFFF8) + 0x18);
      if (*((v185 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v129 >> 1)
      {
        sub_100005150(v129);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v165 = v185;

      v5 = v182;
      v4 = v179;
      v0 = v180;
      v6 = v176;
      v3 = 0;
    }

    else
    {
      if (qword_1001982F0 != -1)
      {
        sub_100002A48();
        swift_once();
      }

      v75 = type metadata accessor for Logger();
      sub_10000347C(v75, qword_10019E008);

      v76 = v11;

      v77 = Logger.logObject.getter();
      v78 = static os_log_type_t.info.getter();

      if (!os_log_type_enabled(v77, v78))
      {

LABEL_54:

        goto LABEL_55;
      }

      v175 = v76;
      v79 = swift_slowAlloc();
      v168 = 0;
      v80 = swift_slowAlloc();
      v184[0] = v80;
      *v79 = v155;
      v81 = sub_100004C50(v181, v21, v184);

      *(v79 + 4) = v81;
      *(v79 + 12) = 2080;

      v82 = sub_100004C50(v9, v183, v184);

      *(v79 + 14) = v82;
      _os_log_impl(&_mh_execute_header, v77, v78, "%s is marked as undiscoverable in bundle %s, skipping", v79, 0x16u);
      swift_arrayDestroy();
      v83 = v80;
      v3 = 0;
      sub_1000036AC(v83);
      sub_100004D8C();

      v6 = v176;
      v5 = v182;
      v4 = v179;
      v0 = v180;
    }
  }

  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
}

uint64_t sub_100050198()
{
  v0 = sub_10002EB80(&qword_100199680, &unk_10014E380);
  sub_100037CD8(v0, qword_10019D940);
  sub_10000347C(v0, qword_10019D940);
  sub_10002EB80(&qword_100199688, &unk_1001501B0);
  sub_100013EBC(&qword_100199698, &qword_100199680, &unk_10014E380, &protocol conformance descriptor for Regex<A>);
  return Regex.init<A>(_:)();
}

uint64_t sub_100050270@<X0>(uint64_t a1@<X8>)
{
  v41 = a1;
  v1 = sub_10002EB80(&unk_10019B1E0, &unk_10014E3A0);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v38 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v28 - v5;
  v7 = sub_10002EB80(&qword_100199680, &unk_10014E380);
  v39 = *(v7 - 8);
  v40 = v7;
  __chkstk_darwin(v7);
  v9 = &v28 - v8;
  v43 = type metadata accessor for _RegexFactory();
  v10 = *(v43 - 8);
  __chkstk_darwin(v43);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_10002EB80(&qword_1001996C0, &unk_1001501D0);
  v44 = *(v42 - 8);
  __chkstk_darwin(v42);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v31 = &v28 - v16;
  v47 = 31524;
  v48 = 0xE200000000000000;
  v33 = sub_100056540();
  static RegexComponentBuilder.buildExpression<A>(_:)();
  makeFactory()();
  sub_1000507A4(v6);
  sub_10002EB80(&qword_100199688, &unk_1001501B0);
  sub_100013EBC(&qword_1001996D0, &unk_10019B1E0, &unk_10014E3A0, &protocol conformance descriptor for Regex<A>);
  v29 = v9;
  v30 = v1;
  _RegexFactory.capture<A, B>(_:)();
  v36 = *(v2 + 8);
  v37 = v2 + 8;
  v36(v6, v1);
  v17 = *(v10 + 8);
  v34 = v10 + 8;
  v35 = v17;
  v17(v12, v43);
  Capture.init(_:)();
  sub_100013EBC(&qword_1001996D8, &qword_1001996C0, &unk_1001501D0, &protocol conformance descriptor for Capture<A>);
  v18 = v31;
  v19 = v42;
  static RegexComponentBuilder.buildExpression<A>(_:)();
  v20 = *(v44 + 8);
  v44 += 8;
  v32 = v20;
  v20(v14, v19);
  v45 = 125;
  v46 = 0xE100000000000000;
  static RegexComponentBuilder.buildExpression<A>(_:)();
  v45 = v49;
  v46 = v50;
  static RegexComponentBuilder.buildPartialBlock<A>(first:)();

  makeFactory()();
  v21 = v38;
  v22 = v30;
  _RegexFactory.ignoreCapturesInTypedOutput<A>(_:)();
  v23 = v29;
  v24 = v18;
  v25 = v42;
  _RegexFactory.accumulate<A, B, C>(_:_:)();
  v26 = v36;
  v36(v21, v22);
  v35(v12, v43);
  sub_1000976AC();

  (*(v39 + 8))(v23, v40);
  v26(v6, v22);
  return v32(v24, v25);
}

uint64_t sub_1000507A4@<X0>(uint64_t a1@<X8>)
{
  v37 = a1;
  v38 = type metadata accessor for RegexRepetitionBehavior();
  v36 = *(v38 - 8);
  __chkstk_darwin(v38);
  v35 = &v29 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for _RegexFactory();
  v33 = *(v2 - 8);
  v34 = v2;
  __chkstk_darwin(v2);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10002EB80(&qword_1001996E0, &unk_10014E3B0);
  __chkstk_darwin(v5 - 8);
  v7 = &v29 - v6;
  v8 = type metadata accessor for CharacterClass();
  v32 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10002EB80(&qword_1001996E8, &unk_1001501E0);
  v12 = *(v11 - 8);
  v30 = v11;
  v31 = v12;
  __chkstk_darwin(v11);
  v14 = &v29 - v13;
  v15 = sub_10002EB80(&unk_10019B1E0, &unk_10014E3A0);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v29 - v20;
  __chkstk_darwin(v22);
  v24 = &v29 - v23;
  static RegexComponent<>.word.getter();
  sub_1000075C4(v7, 1, 1, v38);
  makeFactory()();
  sub_100056594();
  _RegexFactory.oneOrMore<A, B>(_:_:)();
  (*(v33 + 8))(v4, v34);
  sub_100003EFC(v7, &qword_1001996E0, &unk_10014E3B0);
  (*(v32 + 8))(v10, v8);
  OneOrMore.init(_:)();
  v25 = v30;
  OneOrMore.regex.getter();
  (*(v31 + 8))(v14, v25);
  v26 = v35;
  static RegexRepetitionBehavior.reluctant.getter();
  Regex.repetitionBehavior(_:)();
  (*(v36 + 8))(v26, v38);
  v27 = *(v16 + 8);
  v27(v18, v15);
  sub_100013EBC(&qword_1001996D0, &unk_10019B1E0, &unk_10014E3A0, &protocol conformance descriptor for Regex<A>);
  static RegexComponentBuilder.buildExpression<A>(_:)();
  v27(v21, v15);
  static RegexComponentBuilder.buildPartialBlock<A>(first:)();
  return (v27)(v24, v15);
}

void sub_100050C90()
{
  v1 = type metadata accessor for AppShortcutInterpolator.Builder(0);
  v2 = (v0 + *(v1 + 20));
  v3 = v2[3];
  v4 = v2[4];
  sub_1000034B4(v2, v3);
  sub_10002EB80(&unk_100198B60, &qword_10014E3C0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_10014CE90;
  v6 = (v0 + *(v1 + 24));
  v7 = *v6;
  v8 = v6[1];
  *(v5 + 32) = *v6;
  *(v5 + 40) = v8;
  v9 = *(v4 + 24);

  v55 = v9(v5, v3, v4);
  v11 = v10;

  v12 = v2[3];
  v13 = v2[4];
  sub_1000034B4(v2, v12);
  v14 = (*(v13 + 32))(v7, v8, v12, v13);
  v15 = *(v14 + 16);
  v16 = (v14 + 48);
  v17 = v15 + 1;
  do
  {
    if (!--v17)
    {
      v36 = swift_allocObject();
      *(v36 + 16) = xmmword_10014CE90;
      *(v36 + 32) = v55;
      *(v36 + 40) = v11;
      if (v15)
      {
        sub_100011438(0, v15, 0);
        v37 = (v14 + 40);
        do
        {
          v39 = *(v37 - 1);
          v38 = *v37;
          v40 = _swiftEmptyArrayStorage[2];
          v41 = _swiftEmptyArrayStorage[3];

          if (v40 >= v41 >> 1)
          {
            sub_100011438(v41 > 1, v40 + 1, 1);
          }

          _swiftEmptyArrayStorage[2] = v40 + 1;
          v42 = &_swiftEmptyArrayStorage[2 * v40];
          v42[4] = v39;
          v42[5] = v38;
          v37 += 3;
          --v15;
        }

        while (v15);
      }

      goto LABEL_33;
    }

    v18 = v16 + 24;
    v19 = *v16;
    v16 += 24;
  }

  while (v19 != 1);
  v52 = v11;
  v21 = *(v18 - 5);
  v20 = *(v18 - 4);

  v22 = 0;
  v53 = _swiftEmptyArrayStorage;
LABEL_5:
  v23 = 24 * v22;
  while (v15 != v22)
  {
    if (v22 >= *(v14 + 16))
    {
      __break(1u);
      return;
    }

    v24 = *(v14 + v23 + 32);
    v25 = *(v14 + v23 + 40);
    if (v24 != v21 || v25 != v20)
    {
      v27 = *(v14 + v23 + 48);
      if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {

        v28 = v53;
        v56 = v53;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1000B34CC(0, v53[2] + 1, 1);
          v28 = v53;
        }

        v30 = v28[2];
        v29 = v28[3];
        v31 = v30 + 1;
        if (v30 >= v29 >> 1)
        {
          v33 = sub_100005150(v29);
          v54 = v34;
          v51 = v35;
          sub_1000B34CC(v33, v34, 1);
          v31 = v54;
          v30 = v51;
          v28 = v56;
        }

        ++v22;
        v28[2] = v31;
        v53 = v28;
        v32 = &v28[3 * v30];
        v32[4] = v24;
        v32[5] = v25;
        *(v32 + 48) = v27;
        goto LABEL_5;
      }
    }

    v23 += 24;
    ++v22;
  }

  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_10014BC40;
  *(v43 + 32) = v21;
  *(v43 + 40) = v20;
  *(v43 + 48) = v55;
  *(v43 + 56) = v52;
  v44 = v53[2];
  if (v44)
  {
    sub_100011438(0, v44, 0);
    v45 = v53 + 5;
    do
    {
      v47 = *(v45 - 1);
      v46 = *v45;
      v49 = _swiftEmptyArrayStorage[2];
      v48 = _swiftEmptyArrayStorage[3];

      if (v49 >= v48 >> 1)
      {
        sub_100011438(v48 > 1, v49 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v49 + 1;
      v50 = &_swiftEmptyArrayStorage[2 * v49];
      v50[4] = v47;
      v50[5] = v46;
      v45 += 3;
      --v44;
    }

    while (v44);
  }

LABEL_33:
  sub_10006E3AC(_swiftEmptyArrayStorage);
}

void sub_1000510D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, BOOL a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_100004DF0();
  a22 = v25;
  a23 = v26;
  v27 = v24;
  v102 = v28;
  v103 = v23;
  v100 = v29;
  v31 = v30;
  v32 = type metadata accessor for URL();
  sub_100002944();
  v34 = v33;
  __chkstk_darwin(v35);
  v37 = (&v98 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  v38 = sub_10002EB80(&qword_1001990C0, &unk_10014E200);
  __chkstk_darwin(v38 - 8);
  sub_100006724();
  v41 = v39 - v40;
  __chkstk_darwin(v42);
  v109 = &v98 - v43;
  sub_100056CAC();
  __chkstk_darwin(v44);
  v104 = &v98 - v45;
  a13 = 1;
  if ([objc_opt_self() isAppShortcutsOmittingAppNameEnabled])
  {
    v46 = (v103 + *(type metadata accessor for AppShortcutInterpolator.Builder(0) + 20));
    v47 = v46[3];
    v48 = v46[4];
    sub_1000034B4(v46, v47);
    v27 = v24;
    a13 = ((*(v48 + 16))(v47, v48) & 1) == 0;
  }

  v115 = &_swiftEmptySetSingleton;
  v114 = _swiftEmptyDictionarySingleton;
  v101 = v31;
  v49 = [v31 phraseTemplates];
  v50 = sub_100003D44(0, &qword_10019AD00, LNStaticDeferredLocalizedString_ptr);
  v51 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!sub_1000232F4(v51))
  {

    goto LABEL_9;
  }

  v108 = v50;
  sub_10003818C(0, (v51 & 0xC000000000000001) == 0, v51);
  if ((v51 & 0xC000000000000001) != 0)
  {
    goto LABEL_38;
  }

  for (i = *(v51 + 32); ; i = specialized _ArrayBuffer._getElementSlowPath(_:)())
  {
    v53 = i;

    v54 = [v53 bundleURL];
    if (v54)
    {
      v55 = v54;
      v56 = v41;
      v57 = v109;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v58 = 0;
    }

    else
    {
      v56 = v41;
      v58 = 1;
      v57 = v109;
    }

    sub_1000075C4(v57, v58, 1, v32);
    v59 = v57;
    v60 = v104;
    sub_10005644C(v59, v104, &qword_1001990C0, &unk_10014E200);
    sub_100009E90(v60, v56, &qword_1001990C0, &unk_10014E200);
    if (sub_1000032C4(v56, 1, v32) == 1)
    {
      sub_100003EFC(v56, &qword_1001990C0, &unk_10014E200);
LABEL_28:
      v71 = v103;
LABEL_29:
      v90 = [v101 phraseTemplates];
      v91 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      __chkstk_darwin(v92);
      *(&v98 - 2) = v71;
      sub_1000C3140(sub_10005635C, (&v98 - 4), v91);
      v34 = v93;
      v72 = v27;

      goto LABEL_30;
    }

    (v34[4])(v37, v56, v32);
    v61 = objc_opt_self();
    URL._bridgeToObjectiveC()(v62);
    v63 = v37;
    v65 = v64;
    v66 = [v61 ln_uniqueBundleWithURL:v64];

    if (!v66)
    {
      (v34[1])(v63, v32);
      goto LABEL_28;
    }

    v67 = type metadata accessor for AppShortcutInterpolator.Builder(0);
    v68 = v103;
    sub_1000BB650(0x74726F6853707041, 0xEC00000073747563, *(v103 + *(v67 + 24)), *(v103 + *(v67 + 24) + 8));

    (v34[1])(v63, v32);
    v69 = [v53 key];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v70 = sub_1000B6334();
    v71 = v68;

    if (!v70)
    {
      goto LABEL_29;
    }

    v111 = v70;

    sub_10009D950();
    v72 = v27;
    if (v27)
    {

      __break(1u);
      return;
    }

    v73 = v111;
    v41 = *(v111 + 16);
    if (!v41)
    {
      break;
    }

    v99 = 0;
    v113 = _swiftEmptyArrayStorage;
    sub_1000B3558(0, v41, 0);
    v27 = 0;
    v34 = v113;
    v74 = *(v73 + 16);
    v107 = v53;
    v108 = v74;
    v37 = (v73 + 40);
    v105 = v41;
    v106 = v73;
    while (v108 != v27)
    {
      if (v27 >= *(v73 + 16))
      {
        goto LABEL_37;
      }

      v75 = *v37;
      v109 = *(v37 - 1);
      if (v27)
      {
        v110 = v27;
        v111 = 91;
        v112 = 0xE100000000000000;

        v76._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v76);

        v77._countAndFlagsBits = 93;
        v77._object = 0xE100000000000000;
        String.append(_:)(v77);
        v78 = v111;
        v79 = v112;
      }

      else
      {

        v78 = 0;
        v79 = 0xE000000000000000;
      }

      v80 = [v53 key];
      v81 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v83 = v82;

      v111 = v81;
      v112 = v83;

      v84._countAndFlagsBits = v78;
      v84._object = v79;
      String.append(_:)(v84);

      v85 = v111;
      v86 = v112;
      v113 = v34;
      v32 = v34[2];
      v87 = v34[3];
      if (v32 >= v87 >> 1)
      {
        v89 = sub_100005150(v87);
        sub_1000B3558(v89, v32 + 1, 1);
        v34 = v113;
      }

      v34[2] = v32 + 1;
      v88 = &v34[4 * v32];
      v88[4] = v85;
      v88[5] = v86;
      v88[6] = v109;
      v88[7] = v75;
      ++v27;
      v37 += 2;
      v41 = v105;
      v73 = v106;
      v53 = v107;
      if (v105 == v27)
      {

        v71 = v103;
        v72 = v99;
        goto LABEL_35;
      }
    }

    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    ;
  }

  v34 = _swiftEmptyArrayStorage;
LABEL_35:

LABEL_30:
  sub_100052360();
  if (v72)
  {

    swift_bridgeObjectRelease_n();
    sub_100003EFC(v104, &qword_1001990C0, &unk_10014E200);

    goto LABEL_33;
  }

  v95 = v94;

  v111 = &_swiftEmptySetSingleton;
  __chkstk_darwin(v96);
  *(&v98 - 8) = &v115;
  *(&v98 - 7) = v95;
  v97 = v104;
  *(&v98 - 6) = v71;
  *(&v98 - 5) = v97;
  *(&v98 - 4) = v100;
  *(&v98 - 3) = &a13;
  *(&v98 - 2) = &v114;
  *(&v98 - 1) = &v111;
  sub_10006D7E0(_swiftEmptyArrayStorage, sub_10005637C, (&v98 - 10), v34);

  sub_100003EFC(v97, &qword_1001990C0, &unk_10014E200);
LABEL_9:

LABEL_33:
  sub_100004674();
}

void sub_100051980(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v73 = a1;
  v74 = a2;
  v13 = sub_10002EB80(&qword_1001990C0, &unk_10014E200);
  v14 = __chkstk_darwin(v13 - 8);
  v16 = &v68 - v15;
  v17 = [a8 parameterPresentation];
  if (!v17)
  {
    return;
  }

  v81 = a7;
  v82 = a3;
  v18 = v17;
  v19 = [v17 parameterIdentifier];
  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v71 = v21;
  v72 = v20;

  v22 = [v18 specificTitle];
  v23 = [v22 formatString];
  v76 = a4;
  v24 = v23;

  v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v27 = v26;

  v28 = sub_100056300(v18, &selRef_localizationTable);
  v30 = v29;
  sub_1000546E0(a8, v16);
  v31 = objc_allocWithZone(LNStaticDeferredLocalizedString);
  v32 = sub_100055194(v25, v27, v28, v30, v16);
  v33 = String._bridgeToObjectiveC()();
  v34 = [v32 localizedStringForLocaleIdentifier:v33];

  v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v37 = v36;

  v75 = v18;
  v38 = sub_10005628C(v18, &selRef_optionsCollection, &qword_100199648, LNAppShortcutOptionsCollectionMetadata_ptr);
  if (!v38)
  {
    v66 = 0;
LABEL_20:
    v67 = objc_allocWithZone(LNAppShortcutParameterPresentation);
    sub_1000553D8(v72, v71, v35, v37, v66);

    return;
  }

  v39 = v38;
  v68 = v37;
  v69 = v35;
  v70 = _swiftEmptyArrayStorage;
  v83 = _swiftEmptyArrayStorage;
  v40 = sub_1000232F4(v38);
  v41 = 0;
  v78 = v39 & 0xC000000000000001;
  v79 = v40;
  v77 = v39 & 0xFFFFFFFFFFFFFF8;
  v42 = v82;
  while (1)
  {
    if (v79 == v41)
    {

      v37 = v68;
      v35 = v69;
      v66 = v70;
      goto LABEL_20;
    }

    if (v78)
    {
      v43 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v41 >= *(v77 + 16))
      {
        goto LABEL_22;
      }

      v43 = *(v39 + 8 * v41 + 32);
    }

    v44 = v43;
    if (__OFADD__(v41, 1))
    {
      break;
    }

    if (v42)
    {

      v45 = [v44 title];
      v46 = String._bridgeToObjectiveC()();
      v47 = [v45 localizedStringForLocaleIdentifier:v46];

      v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v80 = v49;
      v81 = v48;

      v50 = sub_100056300(v44, &selRef_systemImageName);
      v51 = a5;
      v53 = v52;
      v54 = [v75 parameterIdentifier];
      v55 = v39;
      v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v58 = v57;

      v59 = objc_allocWithZone(LNAppShortcutDynamicOptionsProviderReference);
      v60 = v56;
      v39 = v55;
      v61 = sub_100055298(v74, v82, v60, v58, v73, v41);
      v62 = objc_allocWithZone(LNAppShortcutOptionsCollection);
      v63 = v50;
      v42 = v82;
      v64 = v53;
      a5 = v51;
      v65 = sub_100055338(v81, v80, v63, v64, v61);

      if (!v65)
      {
        goto LABEL_15;
      }

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v83 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v83 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v70 = v83;
      ++v41;
    }

    else
    {

LABEL_15:
      ++v41;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
}

uint64_t sub_100051DFC(void *a1, uint64_t a2)
{
  v76 = sub_10002EB80(&qword_100199678, &unk_1001501A0);
  sub_100002944();
  v72 = v4;
  __chkstk_darwin(v5);
  sub_100006724();
  v74 = v6 - v7;
  sub_100056CAC();
  __chkstk_darwin(v8);
  v75 = v65 - v9;
  v77 = a1;
  v78 = a2;
  if (qword_100198108 != -1)
  {
LABEL_24:
    swift_once();
  }

  v10 = sub_1000077D8();
  v12 = sub_10002EB80(v10, v11);
  sub_10000347C(v12, qword_10019D940);
  sub_10002EB80(&qword_100199688, &unk_1001501B0);
  sub_100056498();
  sub_100013EBC(&qword_100199698, &qword_100199680, &unk_10014E380, &protocol conformance descriptor for Regex<A>);
  v17 = BidirectionalCollection<>.matches<A, B>(of:)();
  v18 = *(v17 + 16);
  v19 = _swiftEmptyArrayStorage;
  v71 = v17;
  if (v18)
  {
    v85 = _swiftEmptyArrayStorage;
    sub_1000B3578(0, v18, 0, v13, v14, v15, v16);
    v19 = v85;
    v20 = *(v72 + 16);
    v21 = v17 + ((*(v72 + 80) + 32) & ~*(v72 + 80));
    v69 = *(v72 + 72);
    v70 = v20;
    v73 = v72 + 16;
    v68 = (v72 + 8);
    do
    {
      v22 = v74;
      v23 = v76;
      v70(v74, v21, v76);
      Regex.Match.output.getter();
      (*v68)(v22, v23);
      v24 = v77;
      v25 = v78;
      v27 = v79;
      v26 = v80;

      v85 = v19;
      v29 = v19[2];
      v28 = v19[3];
      if (v29 >= v28 >> 1)
      {
        v31 = sub_100005150(v28);
        sub_1000B3578(v31, v29 + 1, 1, v32, v33, v34, v35);
        v19 = v85;
      }

      v19[2] = v29 + 1;
      v30 = &v19[4 * v29];
      v30[4] = v24;
      v30[5] = v25;
      v30[6] = v27;
      v30[7] = v26;
      v21 += v69;
      --v18;
    }

    while (v18);
    v17 = v71;
  }

  v77 = v19;

  sub_10009D99C();

  sub_10002EB80(&qword_1001996A0, &unk_10014E390);
  sub_100013EBC(&qword_1001996A8, &qword_1001996A0, &unk_10014E390, &protocol conformance descriptor for [A]);
  sub_1000564EC();
  v66 = Sequence<>.joined(separator:)();
  v65[1] = v36;

  v70 = *(v17 + 16);
  if (!v70)
  {
LABEL_20:

    return v66;
  }

  v37 = 0;
  sub_100003AA4();
  v69 = v17 + v38;
  v68 = (v39 + 16);
  v40 = _swiftEmptyDictionarySingleton;
  v67 = v39 + 8;
  while (1)
  {
    if (v37 >= *(v17 + 16))
    {
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    (*(v72 + 16))(v75, v69 + *(v72 + 72) * v37, v76);
    Regex.Match.output.getter();

    v42 = v81;
    v41 = v82;
    v43 = v83;
    v44 = v84;
    v73 = Regex.Match.range.getter();
    v74 = v45;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v77 = v40;
    sub_1000115BC();
    v47 = sub_10004592C();
    v49 = v40[2];
    v50 = (v48 & 1) == 0;
    v51 = v49 + v50;
    if (__OFADD__(v49, v50))
    {
      goto LABEL_22;
    }

    v52 = v47;
    v53 = v48;
    sub_10002EB80(&qword_1001996B8, &unk_1001501C0);
    if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v51))
    {
      break;
    }

LABEL_15:
    if (v53)
    {

      v40 = v77;
      v56 = sub_1000077B8();
      v57(v56);
    }

    else
    {
      v40 = v77;
      v77[(v52 >> 6) + 8] |= 1 << v52;
      v58 = (v40[6] + 32 * v52);
      *v58 = v42;
      v58[1] = v41;
      v58[2] = v43;
      v58[3] = v44;
      v59 = sub_1000077B8();
      v60(v59);
      v61 = v40[2];
      v62 = __OFADD__(v61, 1);
      v63 = v61 + 1;
      if (v62)
      {
        goto LABEL_23;
      }

      v40[2] = v63;
    }

    ++v37;
    v17 = v71;
    if (v70 == v37)
    {
      goto LABEL_20;
    }
  }

  sub_1000115BC();
  v54 = sub_10004592C();
  if ((v53 & 1) == (v55 & 1))
  {
    v52 = v54;
    goto LABEL_15;
  }

  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);

  __break(1u);
  return result;
}

void sub_100052360()
{
  sub_100004DF0();
  v2 = v1;
  v112 = v0;
  v4 = v3;
  v116 = v5;
  v102 = v6;
  v7 = type metadata accessor for LNAppShortcutParameterRecord(0);
  sub_100002944();
  v118 = v8;
  __chkstk_darwin(v9);
  sub_100006724();
  v101 = v10 - v11;
  sub_100056CAC();
  __chkstk_darwin(v12);
  v119 = &v95 - v13;
  sub_100056CAC();
  __chkstk_darwin(v14);
  v16 = &v95 - v15;
  v17 = 0;
  v122[0] = _swiftEmptyDictionarySingleton;
  v18 = *(v4 + 16);
  while (v18 != v17)
  {
    v19 = v17 + 1;
    sub_1000529C8(v122, v4 + ((*(v118 + 80) + 32) & ~*(v118 + 80)) + *(v118 + 72) * v17);
    v17 = v19;
    if (v1)
    {

      goto LABEL_44;
    }
  }

  v20 = 0;
  v21 = v122[0];
  v22 = v122[0] + 64;
  v23 = 1 << *(v122[0] + 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & *(v122[0] + 64);
  v26 = (v23 + 63) >> 6;
  v27 = v102;
  v107 = v102 + 32;
  v28 = _swiftEmptyArrayStorage;
LABEL_8:
  while (2)
  {
    if (v25)
    {
      v29 = v25;
LABEL_14:
      v25 = (v29 - 1) & v29;
      v31 = *(v27 + 16);
      if (!v31)
      {
        continue;
      }

      v96 = (v29 - 1) & v29;
      v97 = v26;
      v99 = v22;
      v98 = v20;
      v32 = __clz(__rbit64(v29)) | (v20 << 6);
      v100 = v21;
      v33 = *(v21 + 56);
      v34 = (*(v21 + 48) + 32 * v32);
      v35 = v34[1];
      v104 = *v34;
      v36 = *(v33 + 8 * v32);
      v106 = v35;

      v103 = v36;

      v37 = 0;
      v105 = v31;
      v111 = v16;
      while (1)
      {
        v109 = v37;
        v38 = (v107 + 32 * v37);
        v39 = v38[1];
        v115 = *v38;
        v40 = v38[3];
        v122[0] = v38[2];
        v122[1] = v40;
        v120 = 31524;
        v121 = 0xE200000000000000;
        v117 = v39;

        v108 = v40;

        v41._countAndFlagsBits = v104;
        v41._object = v106;
        String.append(_:)(v41);
        v42._countAndFlagsBits = 125;
        v42._object = 0xE100000000000000;
        String.append(_:)(v42);
        sub_10000BE0C();
        v43 = StringProtocol.contains<A>(_:)();

        v110 = v2;
        if (v43)
        {
          v44 = *(v103 + 16);
          if (v44)
          {
            break;
          }
        }

LABEL_33:
        v37 = v109 + 1;

        v2 = v110;
        if (v37 == v105)
        {

          v27 = v102;
          v21 = v100;
          v22 = v99;
          v20 = v98;
          v26 = v97;
          v25 = v96;
          goto LABEL_8;
        }
      }

      sub_100003AA4();
      v47 = v46 + v45;
      v49 = *(v48 + 72);
      v113 = v49;
      v114 = v45;
      while (1)
      {
        v123 = v28;
        sub_1000554A8(v47, v16);
        v50 = [v116 parameterPresentation];
        if (!v50)
        {
          goto LABEL_27;
        }

        v51 = v50;
        v52 = [v50 specificTitle];
        v53 = [v52 formatString];

        v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v56 = v55;

        v57 = &v16[v7[6]];
        if (v54 == *v57 && v56 == *(v57 + 1))
        {
          break;
        }

        v59 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v59)
        {
          goto LABEL_27;
        }

        v28 = v123;
LABEL_32:
        sub_100007E94();
        sub_1000555F4();
        v47 += v49;
        if (!--v44)
        {
          goto LABEL_33;
        }
      }

LABEL_27:
      type metadata accessor for UUID();
      sub_10000482C();
      v61 = v119;
      (*(v60 + 16))(v119, v16);
      v62 = v112 + *(type metadata accessor for AppShortcutInterpolator.Builder(0) + 20);
      v63 = *(v62 + 40);
      v64 = *(v62 + 48);
      v65 = *&v16[v7[7]];
      v66 = &v16[v7[8]];
      v67 = *&v16[v7[9]];
      v68 = *&v16[v7[10]];
      v69 = *v66;
      v70 = *(v66 + 1);
      v71 = &v16[v7[11]];
      v73 = *v71;
      v72 = *(v71 + 1);
      v74 = (v61 + v7[5]);
      *v74 = v63;
      v74[1] = v64;
      v75 = (v61 + v7[6]);
      v76 = v117;
      *v75 = v115;
      v75[1] = v76;
      *(v61 + v7[7]) = v65;
      v77 = (v61 + v7[8]);
      *v77 = v69;
      v77[1] = v70;
      *(v61 + v7[9]) = v67;
      *(v61 + v7[10]) = v68;
      v78 = (v61 + v7[11]);
      *v78 = v73;
      v78[1] = v72;

      v79 = v65;

      v80 = v67;
      v81 = v68;
      v28 = v123;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v84 = sub_100004E28();
        sub_100070490(v84, v85, v86, v123);
        v28 = v87;
      }

      v83 = v28[2];
      v82 = v28[3];
      v16 = v111;
      v49 = v113;
      if (v83 >= v82 >> 1)
      {
        v88 = sub_100005150(v82);
        sub_100070490(v88, v83 + 1, 1, v28);
        v28 = v89;
      }

      v28[2] = v83 + 1;
      sub_10005550C(v119, v28 + v114 + v83 * v49);
      goto LABEL_32;
    }

    break;
  }

  while (1)
  {
    v30 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v30 >= v26)
    {

      v90 = 0;
      v122[0] = _swiftEmptyDictionarySingleton;
      v91 = v28[2];
      v92 = v101;
      while (v91 != v90)
      {
        if (v90 >= v28[2])
        {
          goto LABEL_42;
        }

        sub_100003AA4();
        sub_1000554A8(v28 + v93 + *(v94 + 72) * v90, v92);
        sub_100052D1C(v122, v92);
        if (v2)
        {
          goto LABEL_43;
        }

        ++v90;
        sub_100007E94();
        sub_1000555F4();
      }

      sub_100004674();
      return;
    }

    v29 = *(v22 + 8 * v30);
    ++v20;
    if (v29)
    {
      v20 = v30;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:

  sub_100007E94();
  sub_1000555F4();
LABEL_44:

  __break(1u);
}

uint64_t sub_1000529C8(uint64_t *a1, uint64_t a2)
{
  v4 = type metadata accessor for LNAppShortcutParameterRecord(0);
  v5 = v4 - 8;
  v25 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a2 + *(v5 + 44));
  v10 = [v9 identifier];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v26 = *(a2 + *(v5 + 32));
  v27 = a1;
  v11 = *a1;
  if (*(*a1 + 16))
  {

    v12 = sub_1000459A8();
    v14 = v13;

    if (v14)
    {
      v16 = *(*(v11 + 56) + 8 * v12);

      goto LABEL_6;
    }
  }

  else
  {
  }

  v16 = _swiftEmptyArrayStorage;
LABEL_6:
  __chkstk_darwin(v15);
  *(&v24 - 2) = a2;
  if (sub_100057550(sub_1000565EC, (&v24 - 4), v16))
  {
  }

  sub_1000554A8(a2, v8);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_100070490(0, v16[2] + 1, 1, v16);
    v16 = v22;
  }

  v19 = v16[2];
  v18 = v16[3];
  if (v19 >= v18 >> 1)
  {
    sub_100070490(v18 > 1, v19 + 1, 1, v16);
    v16 = v23;
  }

  v16[2] = v19 + 1;
  sub_10005550C(v8, v16 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v19);
  v20 = [v9 identifier];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v21 = v27;
  swift_isUniquelyReferenced_nonNull_native();
  v28 = *v21;
  sub_100068A90();

  *v21 = v28;
  return result;
}

uint64_t sub_100052CAC(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for LNAppShortcutParameterRecord(0) + 32);
  v5 = *(a1 + v4);
  v6 = *(a1 + v4 + 8);
  v7 = (a2 + v4);
  if (v5 == *v7 && v6 == v7[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

uint64_t sub_100052D1C(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for LNAppShortcutParameterRecord(0);
  v32 = *(v4 - 8);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = (a2 + *(v8 + 32));
  v10 = *v9;
  v11 = v9[1];
  v12 = [*(a2 + *(v8 + 44)) identifier];
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  v16 = *a1;
  if (*(*a1 + 16) && (v17 = sub_10000C2A0(v10, v11), (v18 & 1) != 0))
  {
    v19 = *(*(v16 + 56) + 8 * v17);
  }

  else
  {
    v19 = _swiftEmptyDictionarySingleton;
  }

  v20 = v19[2];
  v33 = v10;
  if (v20 && (v21 = sub_10000C2A0(v13, v15), (v22 & 1) != 0))
  {
    v23 = *(v19[7] + 8 * v21);
  }

  else
  {
    v23 = _swiftEmptyArrayStorage;
  }

  sub_1000554A8(a2, v7);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_100070490(0, v23[2] + 1, 1, v23);
    v23 = v29;
  }

  v25 = v23[2];
  v24 = v23[3];
  if (v25 >= v24 >> 1)
  {
    sub_100070490(v24 > 1, v25 + 1, 1, v23);
    v23 = v30;
  }

  v23[2] = v25 + 1;
  sub_10005550C(v7, v23 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v25);
  swift_isUniquelyReferenced_nonNull_native();
  v34 = v19;
  sub_100068CC4();

  v26 = v34;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v34 = *a1;
  sub_100068BB4(v26, v33, v11, isUniquelyReferenced_nonNull_native);

  *a1 = v34;
  return result;
}

void sub_100052F88(void **a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  type metadata accessor for AppShortcutInterpolator.Builder(0);
  v4 = String._bridgeToObjectiveC()();
  v5 = [v3 localizedStringForLocaleIdentifier:v4];

  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  v9 = [v3 key];
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  *a2 = v10;
  a2[1] = v12;
  a2[2] = v6;
  a2[3] = v8;
}

id sub_100053058(void *a1, uint64_t *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, _BYTE *a8, uint64_t a9, uint64_t *a10)
{
  v12 = a2[1];
  v73 = *a2;
  v13 = a2[2];
  v14 = a2[3];
  v15 = sub_100051DFC(v13, v14);
  v17 = v16;
  v75 = v18;
  v19 = *a3;

  v20 = sub_1000445F8(v15, v17, v19);

  if (!v20)
  {

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v83 = *a3;
    sub_10005605C(v15, v17, isUniquelyReferenced_nonNull_native);
    *a3 = v83;
  }

  v22 = sub_1000B6334();
  if (v22)
  {
    v23 = v22;
  }

  else
  {
    v23 = _swiftEmptyDictionarySingleton;
  }

  v24 = type metadata accessor for AppShortcutInterpolator.Builder(0);
  LOBYTE(v63) = *a8;
  LOBYTE(v57) = !v20;
  sub_100053418(v73, v12, v13, v14, v75, *(a5 + *(v24 + 20) + 40), *(a5 + *(v24 + 20) + 48), a6, *(a5 + *(v24 + 24)), *(a5 + *(v24 + 24) + 8), a7, v23, v57, v59, v61, v63, a9, v66, a4, a9, a8, v73, v75, a1, a7, a6, v83, v84, v85);
  if (v87)
  {
  }

  else
  {
    v27 = v25;
    v74 = 0;

    v82 = sub_1000232F4(v27);
    if (v82)
    {
      v28 = 0;
      v87 = a10;
      v80 = v27 & 0xC000000000000001;
      v76 = v27 + 32;
      while (1)
      {
        sub_10003818C(v28, v80 == 0, v27);
        result = v80 ? specialized _ArrayBuffer._getElementSlowPath(_:)() : *(v76 + 8 * v28);
        v29 = result;
        if (__OFADD__(v28++, 1))
        {
          break;
        }

        v31 = v27;
        v32 = *v87;

        v33 = [v29 localizedPhrase];
        v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v36 = v35;

        if (*(v32 + 16))
        {
          Hasher.init(_seed:)();
          String.hash(into:)();
          v37 = Hasher._finalize()();
          v38 = ~(-1 << *(v32 + 32));
          while (1)
          {
            v39 = v37 & v38;
            if (((*(v32 + 56 + (((v37 & v38) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v37 & v38)) & 1) == 0)
            {
              break;
            }

            v40 = (*(v32 + 48) + 16 * v39);
            if (*v40 != v34 || v40[1] != v36)
            {
              v42 = _stringCompareWithSmolCheck(_:_:expecting:)();
              v37 = v39 + 1;
              if ((v42 & 1) == 0)
              {
                continue;
              }
            }

            goto LABEL_24;
          }
        }

        v43 = v29;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        sub_1000FCDF4();
        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v44 = [v43 localizedPhrase];
        v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v47 = v46;

        sub_100027678(&v83, v45, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v58, v60, v62, v64, v65, v67, v69, v70, v72, v74, v76, v78, v80, v82, v83, v84, v85, v86);
LABEL_24:

        v27 = v31;
        if (v28 == v82)
        {
        }
      }

      __break(1u);
    }

    else
    {
    }
  }

  return result;
}

void sub_100053418(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, unsigned __int8 a25, uint64_t a26, uint64_t a27, char a28, void *a29)
{
  sub_100004DF0();
  a19 = v30;
  a20 = v31;
  v32 = v29;
  v147 = v34;
  v148 = v33;
  v149 = v36;
  v150 = v35;
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v45 = a28;
  v46 = sub_10002EB80(&qword_100199C90, &qword_10014D060);
  __chkstk_darwin(v46 - 8);
  v145 = &v132 - v47;
  v146 = sub_10002EB80(&qword_100199650, &qword_10014E350);
  sub_100002944();
  v144 = v48;
  __chkstk_darwin(v49);
  sub_100006724();
  v52 = (v50 - v51);
  __chkstk_darwin(v53);
  v151 = &v132 - v54;
  v55 = String.subscript.getter();
  v59 = v57;
  v60 = *(v38 + 16);
  if (v45)
  {
    if (!v60)
    {

      if (qword_1001982F0 != -1)
      {
        sub_100002A48();
        swift_once();
      }

      v124 = type metadata accessor for Logger();
      sub_10000347C(v124, qword_10019E008);

      v67 = Logger.logObject.getter();
      v68 = static os_log_type_t.error.getter();

      if (!os_log_type_enabled(v67, v68))
      {
        goto LABEL_37;
      }

      v69 = sub_100007764();
      v70 = swift_slowAlloc();
      a10 = v70;
      *(v69 + 4) = sub_100012A28(4.8149e-34);
LABEL_35:
      _os_log_impl(&_mh_execute_header, v67, v68, v71, v69, 0xCu);
      sub_1000034F8(v70);
      sub_1000036AC(v70);
      v75 = v69;
LABEL_36:
      sub_1000036AC(v75);
LABEL_37:

LABEL_38:
      sub_100004674();
      return;
    }

    v143 = v52;
    v141 = v40;
    v61 = v55;
    v62 = v57;
    v63 = v56;
    v64 = v58;
    sub_1000A0D08(v55, v56, v57, v58, v38);
    v56 = v63;
    v59 = v62;
    v55 = v61;
    v32 = v29;
    v40 = v141;
    v52 = v143;
    v58 = v64;
    if (v65)
    {

      if (qword_1001982F0 != -1)
      {
        sub_100002A48();
        swift_once();
      }

      v66 = type metadata accessor for Logger();
      sub_10000347C(v66, qword_10019E008);

      v67 = Logger.logObject.getter();
      v68 = static os_log_type_t.error.getter();

      if (!os_log_type_enabled(v67, v68))
      {
        goto LABEL_37;
      }

      v69 = sub_100007764();
      v70 = swift_slowAlloc();
      a10 = v70;
      *(v69 + 4) = sub_100012A28(4.8149e-34);
      goto LABEL_35;
    }
  }

  if (v60 > 2)
  {

    if (qword_1001982F0 != -1)
    {
LABEL_46:
      sub_100002A48();
      swift_once();
    }

    v72 = type metadata accessor for Logger();
    sub_10000347C(v72, qword_10019E008);
    sub_1000099C0();

    v67 = Logger.logObject.getter();
    v73 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v67, v73))
    {
      goto LABEL_37;
    }

    sub_100007764();
    v74 = sub_100003748();
    a10 = v74;
    *v60 = 136315138;
    *(v60 + 4) = sub_100004C50(v150, v44, &a10);
    sub_10001AAB0(&_mh_execute_header, v67, v73, "Skipping phrase template with too many tokens: %s");
    sub_1000034F8(v74);
    sub_1000036AC(v74);
    v75 = v60;
    goto LABEL_36;
  }

  v134 = v56;
  v135 = v55;
  v139 = v42;
  v140 = v58;
  v138 = v38;
  v76 = a29;
  v137 = a25;
  v77 = a23;
  v78 = a24;
  v80 = a21;
  v79 = a22;

  v142 = v80;
  v143 = v79;
  sub_10004D4FC(_swiftEmptyDictionarySingleton, v78, v76, v80, v79);
  v133 = v81;
  v136 = v32;
  v82 = 0;
  v83 = *(v77 + 16);
  v84 = v77 + 40;
  v85 = _swiftEmptyArrayStorage;
  v86 = v83 + 1;
LABEL_13:
  v87 = (v84 + 16 * v82);
  while (v86 != ++v82)
  {
    v88 = *(v87 - 1);
    v89 = *v87;
    v87 += 2;
    v90 = HIBYTE(v89) & 0xF;
    if ((v89 & 0x2000000000000000) == 0)
    {
      v90 = v88 & 0xFFFFFFFFFFFFLL;
    }

    if (v90)
    {
      v141 = v40;
      v91 = *(v146 + 48);
      *v52 = v88;
      v52[1] = v89;
      v92 = type metadata accessor for LNAppShortcutParameterRecord(0);
      sub_1000075C4(v52 + v91, 1, 1, v92);
      sub_10005644C(v52, v151, &qword_100199650, &qword_10014E350);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v97 = sub_100004E28();
        sub_1000704D0(v97, v98, v99, v85);
        v85 = v100;
      }

      v94 = v85[2];
      v93 = v85[3];
      if (v94 >= v93 >> 1)
      {
        v101 = sub_100005150(v93);
        sub_1000704D0(v101, v94 + 1, 1, v85);
        v85 = v102;
      }

      v85[2] = v94 + 1;
      sub_100003AA4();
      sub_10005644C(v151, v85 + v95 + *(v96 + 72) * v94, &qword_100199650, &qword_10014E350);
      v40 = v141;
      goto LABEL_13;
    }
  }

  v103 = v133;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  a10 = v103;
  sub_100068CD8(v85, v135, v134, v59, v140, isUniquelyReferenced_nonNull_native);
  v146 = a10;
  a10 = _swiftEmptyArrayStorage;
  v105 = type metadata accessor for UUID();
  v106 = v145;
  sub_1000075C4(v145, 1, 1, v105);
  v107 = objc_allocWithZone(LNAutoShortcutLocalizedPhrase);
  sub_1000099C0();
  swift_bridgeObjectRetain_n();

  v108 = v149;

  v131 = v44;
  v130 = v150;
  v60 = v137;
  v109 = sub_100054E60(v139, v40, v148, v108, v150, v44, v106, v137 & 1);
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  v110 = *((a10 & 0xFFFFFFFFFFFFFF8) + 0x18);
  if (*((a10 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v110 >> 1)
  {
    sub_100005150(v110);
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  v144 = v44;
  v139 = v109;
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v111 = a10;
  v152[0] = sub_10006B6A4(v138);
  v112 = v136;
  sub_100055648(v152);
  v151 = v112;
  if (!v112)
  {

    v113 = 0;
    v114 = v152[0];
    v44 = (v152[0] + 72);
    v145 = *(v152[0] + 16);
    LODWORD(v141) = v60 & 1;
    while (1)
    {
      if (v145 == v113)
      {

        goto LABEL_38;
      }

      if (v113 >= *(v114 + 16))
      {
        __break(1u);
        goto LABEL_46;
      }

      v116 = *(v44 - 1);
      v115 = *v44;

      v60 = sub_1000B6318();

      if (!v60)
      {
        break;
      }

      ++v113;
      __chkstk_darwin(v117);
      *(&v132 - 12) = v60;
      *(&v132 - 11) = v116;
      v118 = v150;
      v119 = v151;
      *(&v132 - 10) = v115;
      *(&v132 - 9) = v118;
      v121 = v148;
      v120 = v149;
      *(&v132 - 8) = v144;
      *(&v132 - 7) = v121;
      *(&v132 - 6) = v120;
      v122 = v143;
      *(&v132 - 5) = v142;
      *(&v132 - 4) = v122;
      *(&v132 - 3) = v147;
      LOBYTE(v130) = v141;
      v123 = sub_10004D698(sub_1000563B0, (&v132 - 14), v111);
      v151 = v119;

      v44 += 6;
      v111 = v123;
    }

    if (qword_1001982F0 != -1)
    {
      sub_100002A48();
      swift_once();
    }

    v125 = type metadata accessor for Logger();
    sub_10000347C(v125, qword_10019E008);
    v126 = v144;

    v127 = Logger.logObject.getter();
    v128 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v127, v128))
    {
      sub_100007764();
      v129 = sub_100003748();
      v152[0] = v129;
      MEMORY[0] = 136315138;
      MEMORY[4] = sub_100004C50(v150, v126, v152);
      sub_10001AAB0(&_mh_execute_header, v127, v128, "Skipping phrase template with an unrecognized token: %s");
      sub_1000034F8(v129);
      sub_1000036AC(v129);
      sub_100013468();
    }

    else
    {
    }

    goto LABEL_38;
  }

  __break(1u);
}

uint64_t sub_100053D74@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, NSString **a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  v101 = a7;
  v102 = a8;
  v104 = a5;
  v105 = a6;
  v99 = a3;
  v100 = a4;
  v17 = sub_10002EB80(&qword_1001990C0, &unk_10014E200);
  __chkstk_darwin(v17 - 8);
  v88 = &v82 - v18;
  v19 = sub_10002EB80(&qword_10019B410, &unk_10014E360);
  __chkstk_darwin(v19 - 8);
  v21 = &v82 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v98 = &v82 - v23;
  __chkstk_darwin(v24);
  v97 = &v82 - v25;
  v26 = type metadata accessor for LNAppShortcutParameterRecord(0);
  __chkstk_darwin(v26);
  v90 = &v82 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_10002EB80(&qword_100199C90, &qword_10014D060);
  __chkstk_darwin(v28 - 8);
  v113 = &v82 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v89 = &v82 - v31;
  __chkstk_darwin(v32);
  v112 = &v82 - v33;
  v96 = sub_10002EB80(&qword_100199650, &qword_10014E350);
  v34 = *(v96 - 8);
  __chkstk_darwin(v96);
  v36 = (&v82 - v35);
  result = *(a2 + 16);
  urlString = _swiftEmptyArrayStorage;
  if (result)
  {
    v95 = v21;
    v83 = a9;
    v84 = v13;
    v87 = a12;
    v86 = a11;
    v85 = a10;
    v39 = *a1;
    v119._urlString = _swiftEmptyArrayStorage;
    v111 = result;
    specialized ContiguousArray.reserveCapacity(_:)();
    result = a2 + ((*(v34 + 80) + 32) & ~*(v34 + 80));
    v93 = *(v34 + 72);
    v91 = a13 & 1;
    v103 = v26;
    v94 = v39;
    v92 = v36;
    while (1)
    {
      v110 = result;
      sub_100009E90(result, v36, &qword_100199650, &qword_10014E350);
      v40 = *v36;
      v41 = v36[1];
      v42 = *(v96 + 48);
      v43 = [v39 localizedPhrase];
      v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v46 = v45;

      v117 = v44;
      v118 = v46;
      v115 = v40;
      v116 = v41;
      sub_1000563F8();
      String.replaceSubrange<A>(_:with:)();
      v114 = v42;
      v47 = v97;
      sub_100009E90(v36 + v42, v97, &qword_10019B410, &unk_10014E360);
      if (sub_1000032C4(v47, 1, v26) == 1)
      {
        sub_100003EFC(v47, &qword_10019B410, &unk_10014E360);
        v48 = [v39 signature];
        v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v108 = v50;
        v109 = v49;

        v51 = [v39 parameterIdentifier];
        v52 = v95;
        if (v51)
        {
          v53 = v51;
          v54 = v89;
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          v55 = 0;
          v56 = v98;
        }

        else
        {
          v55 = 1;
          v56 = v98;
          v54 = v89;
        }

        v36 = v92;
        v61 = type metadata accessor for UUID();
        sub_1000075C4(v54, v55, 1, v61);
        v62 = v54;
        v60 = v112;
        sub_10005644C(v62, v112, &qword_100199C90, &qword_10014D060);
      }

      else
      {
        v57 = v90;
        sub_10005550C(v47, v90);
        v115 = v104;
        v116 = v105;

        v58._countAndFlagsBits = v40;
        v58._object = v41;
        String.append(_:)(v58);
        v108 = v116;
        v109 = v115;
        v59 = type metadata accessor for UUID();
        v60 = v112;
        (*(*(v59 - 8) + 16))(v112, v57, v59);
        sub_1000555F4();
        sub_1000075C4(v60, 0, 1, v59);
        v52 = v95;
        v56 = v98;
        v36 = v92;
      }

      v106 = v118;
      v107 = v117;
      sub_100009E90(v60, v113, &qword_100199C90, &qword_10014D060);
      sub_100009E90(v36 + v114, v56, &qword_10019B410, &unk_10014E360);
      if (sub_1000032C4(v56, 1, v26) == 1)
      {
        sub_100003EFC(v56, &qword_10019B410, &unk_10014E360);
      }

      else
      {
        v63 = *(v56 + *(v26 + 40));
        v64 = v63;
        sub_1000555F4();
        if (v63)
        {
          v65 = String._bridgeToObjectiveC()();
          v66 = v88;
          sub_100009E90(v87, v88, &qword_1001990C0, &unk_10014E200);
          v67 = type metadata accessor for URL();
          v68 = sub_1000032C4(v66, 1, v67);
          v69 = 0;
          if (v68 != 1)
          {
            v70 = v88;
            URL._bridgeToObjectiveC()(&v119);
            v69 = v71;
            (*(*(v67 - 8) + 8))(v70, v67);
          }

          v72 = [v64 localizedStringForLocaleIdentifier:v65 bundleURL:v69];

          v73 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v75 = v74;

          v26 = v103;
          goto LABEL_16;
        }
      }

      v73 = 0;
      v75 = 0;
LABEL_16:
      sub_100009E90(v36 + v114, v52, &qword_10019B410, &unk_10014E360);
      if (sub_1000032C4(v52, 1, v26) == 1)
      {
        sub_100003EFC(v52, &qword_10019B410, &unk_10014E360);
        v76 = 0;
        v77 = 0;
      }

      else
      {
        v78 = (v52 + *(v26 + 44));
        v76 = *v78;
        v77 = v78[1];

        sub_1000555F4();
      }

      objc_allocWithZone(LNAutoShortcutLocalizedPhrase);
      v79 = v105;

      v80 = v102;

      sub_100054FC4(v107, v106, v101, v80, v104, v79, v113, v73, v75, v76, v77, v91);
      sub_100003EFC(v112, &qword_100199C90, &qword_10014D060);
      sub_100003EFC(v36, &qword_100199650, &qword_10014E350);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      result = v110 + v93;
      v81 = v111-- == 1;
      v26 = v103;
      v39 = v94;
      if (v81)
      {
        urlString = v119._urlString;
        a9 = v83;
        break;
      }
    }
  }

  *a9 = urlString;
  return result;
}

uint64_t sub_1000546A8()
{
  sub_1000034F8((v0 + 112));
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_1000546E0@<X0>(void *a1@<X2>, uint64_t a2@<X8>)
{
  v4 = sub_10002EB80(&qword_1001990C0, &unk_10014E200);
  __chkstk_darwin(v4 - 8);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v30 - v8;
  v11 = __chkstk_darwin(v10);
  v13 = &v30 - v12;
  v14 = [a1 shortTitle];
  if (v14)
  {
    v15 = v14;
    v16 = [v14 bundleURL];

    if (v16)
    {
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v17 = type metadata accessor for URL();
      v18 = 0;
    }

    else
    {
      v17 = type metadata accessor for URL();
      v18 = 1;
    }

    sub_1000075C4(v9, v18, 1, v17);
    sub_10005644C(v9, v13, &qword_1001990C0, &unk_10014E200);
    type metadata accessor for URL();
    if (sub_1000032C4(v13, 1, v17) != 1)
    {
      (*(*(v17 - 8) + 32))(a2, v13, v17);
      return sub_1000075C4(a2, 0, 1, v17);
    }
  }

  else
  {
    v19 = type metadata accessor for URL();
    sub_1000075C4(v13, 1, 1, v19);
  }

  v20 = [a1 phraseTemplates];
  sub_100003D44(0, &qword_10019AD00, LNStaticDeferredLocalizedString_ptr);
  v21 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (sub_1000232F4(v21))
  {
    sub_10003818C(0, (v21 & 0xC000000000000001) == 0, v21);
    if ((v21 & 0xC000000000000001) != 0)
    {
      v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v22 = *(v21 + 32);
    }

    v23 = v22;

    v24 = [v23 bundleURL];

    if (v24)
    {
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v25 = 0;
    }

    else
    {
      v25 = 1;
    }

    v28 = type metadata accessor for URL();
    sub_1000075C4(v6, v25, 1, v28);
    sub_10005644C(v6, a2, &qword_1001990C0, &unk_10014E200);
  }

  else
  {

    v27 = type metadata accessor for URL();
    sub_1000075C4(a2, 1, 1, v27);
  }

  v29 = type metadata accessor for URL();
  result = sub_1000032C4(v13, 1, v29);
  if (result != 1)
  {
    return sub_100003EFC(v13, &qword_1001990C0, &unk_10014E200);
  }

  return result;
}

uint64_t sub_100054A3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = a1 == a5 && a2 == a6;
  if (v12 || (v13 = _stringCompareWithSmolCheck(_:_:expecting:)(), result = 0, (v13 & 1) != 0))
  {
    if (a3 == a7 && a4 == a8)
    {
      return 1;
    }

    else
    {

      return _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  return result;
}

uint64_t sub_100054ADC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  String.hash(into:)();

  return String.hash(into:)();
}

Swift::Int sub_100054B2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_100054BB4(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

id sub_100054C34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v28 = String._bridgeToObjectiveC()();

  v27 = String._bridgeToObjectiveC()();

  v26 = String._bridgeToObjectiveC()();

  sub_100003D44(0, &qword_100198B98, LNAutoShortcutLocalizedPhrase_ptr);
  v25.super.isa = Array._bridgeToObjectiveC()().super.isa;

  if (a9)
  {
    v24 = String._bridgeToObjectiveC()();
  }

  else
  {
    v24 = 0;
  }

  if (a11)
  {
    v23 = String._bridgeToObjectiveC()();
  }

  else
  {
    v23 = 0;
  }

  v18 = String._bridgeToObjectiveC()();

  if (a17)
  {
    v19 = String._bridgeToObjectiveC()();
  }

  else
  {
    v19 = 0;
  }

  if (a18)
  {
    sub_100003D44(0, &qword_10019AD00, LNStaticDeferredLocalizedString_ptr);
    v20.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v20.super.isa = 0;
  }

  v21 = [v29 initWithBundleIdentifier:v28 localeIdentifier:v27 actionIdentifier:v26 orderedPhrases:v25.super.isa localizedShortTitle:v24 localizedAutoShortcutDescription:v23 systemImageName:v18 shortcutTileColor:a14 parameterPresentation:a15 attributionBundleIdentifier:v19 basePhraseTemplates:v20.super.isa];

  return v21;
}

id sub_100054E60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  v10 = String._bridgeToObjectiveC()();

  v11 = String._bridgeToObjectiveC()();

  v12 = String._bridgeToObjectiveC()();

  v13 = type metadata accessor for UUID();
  isa = 0;
  if (sub_1000032C4(a7, 1, v13) != 1)
  {
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(*(v13 - 8) + 8))(a7, v13);
  }

  v15 = String._bridgeToObjectiveC()();

  v16 = [v18 initWithLocalizedPhrase:v10 bundleIdentifier:v11 basePhraseTemplate:v12 parameterIdentifier:isa primary:a8 & 1 signature:v15];

  return v16;
}

id sub_100054FC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  v13 = String._bridgeToObjectiveC()();

  v14 = String._bridgeToObjectiveC()();

  v15 = String._bridgeToObjectiveC()();

  v16 = type metadata accessor for UUID();
  isa = 0;
  if (sub_1000032C4(a7, 1, v16) != 1)
  {
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(*(v16 - 8) + 8))(a7, v16);
  }

  if (a9)
  {
    v18 = String._bridgeToObjectiveC()();
  }

  else
  {
    v18 = 0;
  }

  if (a11)
  {
    v19 = String._bridgeToObjectiveC()();
  }

  else
  {
    v19 = 0;
  }

  v20 = String._bridgeToObjectiveC()();

  LOBYTE(v23) = a12 & 1;
  v21 = [v24 initWithLocalizedPhrase:v13 bundleIdentifier:v14 basePhraseTemplate:v15 parameterIdentifier:isa optionsCollectionTitle:v18 optionsCollectionSystemImageName:v19 primary:v23 signature:v20];

  return v21;
}

id sub_100055194(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v9 = String._bridgeToObjectiveC()();

  if (a4)
  {
    v10 = String._bridgeToObjectiveC()();
  }

  else
  {
    v10 = 0;
  }

  v11 = type metadata accessor for URL();
  v13 = 0;
  if (sub_1000032C4(a5, 1, v11) != 1)
  {
    URL._bridgeToObjectiveC()(v12);
    v13 = v14;
    (*(*(v11 - 8) + 8))(a5, v11);
  }

  v15 = [v6 initWithKey:v9 table:v10 bundleURL:v13];

  return v15;
}

id sub_100055298(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = String._bridgeToObjectiveC()();

  v10 = String._bridgeToObjectiveC()();

  v11 = [v6 initWithAppShortcutsProviderMangledTypeName:v9 parameterIdentifier:v10 appShortcutIndex:a5 optionsProviderIndex:a6];

  return v11;
}

id sub_100055338(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = String._bridgeToObjectiveC()();

  if (a4)
  {
    v9 = String._bridgeToObjectiveC()();
  }

  else
  {
    v9 = 0;
  }

  v10 = [v5 initWithLocalizedTitle:v8 systemImageName:v9 optionsProviderReference:a5];

  return v10;
}

id sub_1000553D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = String._bridgeToObjectiveC()();

  v8 = String._bridgeToObjectiveC()();

  if (a5)
  {
    sub_100003D44(0, &qword_100199640, LNAppShortcutOptionsCollection_ptr);
    v9.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v9.super.isa = 0;
  }

  v10 = [v5 initWithParameterIdentifier:v7 localizedSpecificTitle:v8 optionsCollections:v9.super.isa];

  return v10;
}

uint64_t sub_1000554A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LNAppShortcutParameterRecord(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10005550C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LNAppShortcutParameterRecord(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for AppShortcutInterpolator.Builder(uint64_t a1)
{
  result = qword_100199760;
  if (!qword_100199760)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000555F4()
{
  v1 = sub_10000519C();
  v2(v1);
  sub_10000482C();
  (*(v3 + 8))(v0);
  return v0;
}

Swift::Int sub_100055648(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1000BD92C(v2);
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_1000556B4(v6);
  *a1 = v2;
  return result;
}

Swift::Int sub_1000556B4(uint64_t *a1)
{
  v2 = a1[1];
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
        sub_10002EB80(&unk_10019B3A0, &qword_1001505B0);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v6[2] = v5;
      }

      v7[0] = (v6 + 4);
      v7[1] = v5;
      sub_100055844(v7, v8, a1, v4);
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
    return sub_1000557B8(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1000557B8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 48 * a3;
    v6 = result - a3;
    while (2)
    {
      v7 = *(v4 + 48 * a3 + 32);
      v8 = v6;
      v9 = v5;
      do
      {
        if (v7 >> 14 <= *(v9 - 16) >> 14)
        {
          break;
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        v10 = *(v9 + 16);
        result = *(v9 + 24);
        v11 = *(v9 + 40);
        v12 = *v9;
        v13 = *(v9 - 32);
        *v9 = *(v9 - 48);
        *(v9 + 16) = v13;
        *(v9 + 32) = *(v9 - 16);
        *(v9 - 32) = v10;
        *(v9 - 24) = result;
        *(v9 - 16) = v7;
        *(v9 - 8) = v11;
        *(v9 - 48) = v12;
        v9 -= 48;
      }

      while (!__CFADD__(v8++, 1));
      ++a3;
      v5 += 48;
      --v6;
      if (a3 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_100055844(char **result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v94 = _swiftEmptyArrayStorage;
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = _swiftEmptyArrayStorage;
    v89 = a4;
    while (1)
    {
      v9 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v10 = *(*a3 + 48 * v9 + 32);
        v11 = *a3 + 48 * v7;
        v12 = 48 * v7;
        v13 = *(v11 + 32) >> 14;
        v14 = v10 >> 14;
        v15 = (v11 + 128);
        v16 = v7 + 2;
        while (1)
        {
          v17 = v16;
          if (++v9 >= v6)
          {
            break;
          }

          v18 = *v15;
          v15 += 6;
          v19 = (v13 < v14) ^ (v10 >> 14 >= v18 >> 14);
          ++v16;
          v10 = v18;
          if ((v19 & 1) == 0)
          {
            goto LABEL_9;
          }
        }

        v9 = v6;
LABEL_9:
        if (v13 < v14)
        {
          if (v9 < v7)
          {
            goto LABEL_108;
          }

          if (v7 < v9)
          {
            if (v6 >= v17)
            {
              v6 = v17;
            }

            v20 = 48 * v6 - 48;
            v21 = v9;
            v22 = v7;
            do
            {
              if (v22 != --v21)
              {
                v23 = *a3;
                if (!*a3)
                {
                  goto LABEL_113;
                }

                v24 = (v23 + v12);
                v25 = (v23 + v20);
                v26 = *(v24 + 2);
                v27 = *(v24 + 3);
                v28 = *v24;
                v29 = v24[2];
                v31 = v25[1];
                v30 = v25[2];
                *v24 = *v25;
                v24[1] = v31;
                v24[2] = v30;
                *v25 = v28;
                *(v25 + 2) = v26;
                *(v25 + 3) = v27;
                v25[2] = v29;
              }

              ++v22;
              v20 -= 48;
              v12 += 48;
            }

            while (v22 < v21);
            v6 = a3[1];
          }
        }
      }

      if (v9 < v6)
      {
        if (__OFSUB__(v9, v7))
        {
          goto LABEL_107;
        }

        if (v9 - v7 < a4)
        {
          if (__OFADD__(v7, a4))
          {
            goto LABEL_109;
          }

          if (v7 + a4 < v6)
          {
            v6 = v7 + a4;
          }

          if (v6 < v7)
          {
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
            return;
          }

          if (v9 != v6)
          {
            v32 = *a3;
            v33 = *a3 + 48 * v9;
            v34 = v7 - v9;
            do
            {
              v35 = *(v32 + 48 * v9 + 32);
              v36 = v34;
              v37 = v33;
              do
              {
                if (v35 >> 14 <= *(v37 - 16) >> 14)
                {
                  break;
                }

                if (!v32)
                {
                  goto LABEL_111;
                }

                v38 = *(v37 + 16);
                v39 = *(v37 + 24);
                v40 = *(v37 + 40);
                v41 = *v37;
                v42 = *(v37 - 32);
                *v37 = *(v37 - 48);
                *(v37 + 16) = v42;
                *(v37 + 32) = *(v37 - 16);
                *(v37 - 32) = v38;
                *(v37 - 24) = v39;
                *(v37 - 16) = v35;
                *(v37 - 8) = v40;
                *(v37 - 48) = v41;
                v37 -= 48;
              }

              while (!__CFADD__(v36++, 1));
              ++v9;
              v33 += 48;
              --v34;
            }

            while (v9 != v6);
            v9 = v6;
          }
        }
      }

      if (v9 < v7)
      {
        goto LABEL_106;
      }

      v91 = v9;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1000702DC();
        v8 = v87;
      }

      v44 = v8[2];
      v45 = v44 + 1;
      if (v44 >= v8[3] >> 1)
      {
        sub_1000702DC();
        v8 = v88;
      }

      v8[2] = v45;
      v46 = v8 + 4;
      v47 = &v8[2 * v44 + 4];
      *v47 = v7;
      v47[1] = v91;
      v92 = *result;
      if (!*result)
      {
        goto LABEL_114;
      }

      if (v44)
      {
        while (1)
        {
          v48 = v45 - 1;
          v49 = &v46[2 * v45 - 2];
          v50 = &v8[2 * v45];
          if (v45 >= 4)
          {
            break;
          }

          if (v45 == 3)
          {
            v51 = v8[4];
            v52 = v8[5];
            v61 = __OFSUB__(v52, v51);
            v53 = v52 - v51;
            v54 = v61;
LABEL_56:
            if (v54)
            {
              goto LABEL_96;
            }

            v66 = *v50;
            v65 = v50[1];
            v67 = __OFSUB__(v65, v66);
            v68 = v65 - v66;
            v69 = v67;
            if (v67)
            {
              goto LABEL_99;
            }

            v70 = v49[1];
            v71 = v70 - *v49;
            if (__OFSUB__(v70, *v49))
            {
              goto LABEL_102;
            }

            if (__OFADD__(v68, v71))
            {
              goto LABEL_104;
            }

            if (v68 + v71 >= v53)
            {
              if (v53 < v71)
              {
                v48 = v45 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          if (v45 < 2)
          {
            goto LABEL_98;
          }

          v73 = *v50;
          v72 = v50[1];
          v61 = __OFSUB__(v72, v73);
          v68 = v72 - v73;
          v69 = v61;
LABEL_71:
          if (v69)
          {
            goto LABEL_101;
          }

          v75 = *v49;
          v74 = v49[1];
          v61 = __OFSUB__(v74, v75);
          v76 = v74 - v75;
          if (v61)
          {
            goto LABEL_103;
          }

          if (v76 < v68)
          {
            goto LABEL_85;
          }

LABEL_78:
          if (v48 - 1 >= v45)
          {
            __break(1u);
LABEL_91:
            __break(1u);
LABEL_92:
            __break(1u);
LABEL_93:
            __break(1u);
LABEL_94:
            __break(1u);
LABEL_95:
            __break(1u);
LABEL_96:
            __break(1u);
LABEL_97:
            __break(1u);
LABEL_98:
            __break(1u);
LABEL_99:
            __break(1u);
LABEL_100:
            __break(1u);
LABEL_101:
            __break(1u);
LABEL_102:
            __break(1u);
LABEL_103:
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
            goto LABEL_110;
          }

          if (!*a3)
          {
            goto LABEL_112;
          }

          v80 = &v46[2 * v48 - 2];
          v81 = *v80;
          v82 = &v46[2 * v48];
          v83 = v82[1];
          sub_100055EAC((*a3 + 48 * *v80), (*a3 + 48 * *v82), (*a3 + 48 * v83), v92);
          if (v5)
          {
            goto LABEL_89;
          }

          if (v83 < v81)
          {
            goto LABEL_91;
          }

          v84 = v8;
          v85 = v8[2];
          if (v48 > v85)
          {
            goto LABEL_92;
          }

          *v80 = v81;
          v80[1] = v83;
          if (v48 >= v85)
          {
            goto LABEL_93;
          }

          v45 = v85 - 1;
          memmove(&v46[2 * v48], v82 + 2, 16 * (v85 - 1 - v48));
          v84[2] = v85 - 1;
          v86 = v85 > 2;
          v8 = v84;
          v5 = 0;
          if (!v86)
          {
            goto LABEL_85;
          }
        }

        v55 = &v46[2 * v45];
        v56 = *(v55 - 8);
        v57 = *(v55 - 7);
        v61 = __OFSUB__(v57, v56);
        v58 = v57 - v56;
        if (v61)
        {
          goto LABEL_94;
        }

        v60 = *(v55 - 6);
        v59 = *(v55 - 5);
        v61 = __OFSUB__(v59, v60);
        v53 = v59 - v60;
        v54 = v61;
        if (v61)
        {
          goto LABEL_95;
        }

        v62 = v50[1];
        v63 = v62 - *v50;
        if (__OFSUB__(v62, *v50))
        {
          goto LABEL_97;
        }

        v61 = __OFADD__(v53, v63);
        v64 = v53 + v63;
        if (v61)
        {
          goto LABEL_100;
        }

        if (v64 >= v58)
        {
          v78 = *v49;
          v77 = v49[1];
          v61 = __OFSUB__(v77, v78);
          v79 = v77 - v78;
          if (v61)
          {
            goto LABEL_105;
          }

          if (v53 < v79)
          {
            v48 = v45 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_56;
      }

LABEL_85:
      v6 = a3[1];
      v7 = v91;
      a4 = v89;
      if (v91 >= v6)
      {
        v94 = v8;
        break;
      }
    }
  }

  if (!*result)
  {
    goto LABEL_115;
  }

  sub_100055D74(&v94, *result, a3);
LABEL_89:
}