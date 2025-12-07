uint64_t sub_10001FB8C()
{
  v49 = v0;
  v1 = *(v0 + 520);
  swift_beginAccess();
  v2 = *(v1 + 112);
  if (*(v2 + 16))
  {

    v3 = sub_100057800(0xD000000000000010, 0x8000000100068780);
    if (v4)
    {
      sub_100026C30(*(v2 + 56) + 40 * v3, v0 + 16);

      sub_100026C30(v0 + 16, v0 + 176);
      sub_100003B30(&qword_100083910, &unk_1000636C0);
      sub_100003B30(&qword_100083908, &unk_100061880);
      if (swift_dynamicCast())
      {
        v5 = *(v0 + 384);
        *(v0 + 552) = v5;

        v6 = swift_task_alloc();
        *(v0 + 560) = v6;
        *v6 = v0;
        v6[1] = sub_100020568;
        v7 = &type metadata for () + 8;
        v8 = v5;
        goto LABEL_24;
      }

      sub_100004B28((v0 + 16));
    }

    else
    {
    }
  }

  v9 = *(v0 + 528);
  v11 = *(v0 + 448);
  v10 = *(v0 + 456);
  v13 = *(v0 + 432);
  v12 = *(v0 + 440);
  v14 = *(v0 + 424);
  swift_beginAccess();
  sub_100057B90(0xD000000000000010, 0x8000000100068780, v0 + 56);
  sub_100008B68(v0 + 56, &qword_100083900, &qword_100062C00);
  swift_endAccess();
  (*(v11 + 16))(v13, v10, v12);
  v46 = *(v11 + 56);
  v46(v13, 0, 1, v12);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_100061860;
  v15[5] = v9;
  sub_100026A64(v13, v14);
  v47 = *(v11 + 48);
  v16 = v47(v14, 1, v12);

  if (v16 == 1)
  {
    sub_100008B68(*(v0 + 424), &qword_1000838E0, &qword_100061C70);
  }

  else
  {
    v18 = *(v0 + 440);
    v17 = *(v0 + 448);
    v19 = *(v0 + 424);
    TaskPriority.rawValue.getter();
    (*(v17 + 8))(v19, v18);
  }

  v20 = v15[2];
  swift_unknownObjectRetain();

  if (v20)
  {
    swift_getObjectType();
    v21 = dispatch thunk of Actor.unownedExecutor.getter();
    v23 = v22;
    swift_unknownObjectRelease();
  }

  else
  {
    v21 = 0;
    v23 = 0;
  }

  sub_100008B68(*(v0 + 432), &qword_1000838E0, &qword_100061C70);
  v24 = swift_allocObject();
  *(v24 + 16) = &unk_100061870;
  *(v24 + 24) = v15;
  if (v23 | v21)
  {
    *(v0 + 216) = 0;
    *(v0 + 224) = 0;
    *(v0 + 232) = v21;
    *(v0 + 240) = v23;
  }

  v45 = *(v0 + 440);
  v25 = *(v0 + 408);
  v26 = *(v0 + 416);
  v27 = swift_task_create();
  *(v0 + 536) = v27;
  *(v0 + 120) = sub_100003B30(&qword_100083908, &unk_100061880);
  *(v0 + 128) = &off_10007BC78;
  *(v0 + 96) = v27;
  swift_beginAccess();
  sub_100026B0C((v0 + 96), v0 + 136);
  swift_retain_n();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v48 = *(v1 + 112);
  *(v1 + 112) = 0x8000000000000000;
  v29 = v1;
  v30 = *(v0 + 160);
  v31 = sub_100026B24(v0 + 136, v30);
  v32 = *(v30 - 8);
  v33 = swift_task_alloc();
  (*(v32 + 16))(v33, v31, v30);
  sub_1000257C8(*v33, 0xD000000000000010, 0x8000000100068780, isUniquelyReferenced_nonNull_native, &v48);
  sub_100004B28((v0 + 136));

  *(v29 + 112) = v48;
  swift_endAccess();
  v46(v26, 1, 1, v45);
  v34 = swift_allocObject();
  swift_weakInit();
  v35 = swift_allocObject();
  v35[2] = 0;
  v35[3] = 0;
  v35[4] = v27;
  v35[5] = v34;
  v35[6] = 0xD000000000000010;
  v35[7] = 0x8000000100068780;
  sub_100026A64(v26, v25);
  LODWORD(v29) = v47(v25, 1, v45);

  if (v29 == 1)
  {
    sub_100008B68(*(v0 + 408), &qword_1000838E0, &qword_100061C70);
  }

  else
  {
    v36 = *(v0 + 440);
    v37 = *(v0 + 448);
    v38 = *(v0 + 408);
    TaskPriority.rawValue.getter();
    (*(v37 + 8))(v38, v36);
  }

  v39 = v35[2];
  swift_unknownObjectRetain();

  if (v39)
  {
    swift_getObjectType();
    v40 = dispatch thunk of Actor.unownedExecutor.getter();
    v42 = v41;
    swift_unknownObjectRelease();
  }

  else
  {
    v40 = 0;
    v42 = 0;
  }

  sub_100008B68(*(v0 + 416), &qword_1000838E0, &qword_100061C70);
  v43 = swift_allocObject();
  *(v43 + 16) = &unk_100062BF0;
  *(v43 + 24) = v35;
  if (v42 | v40)
  {
    *(v0 + 248) = 0;
    *(v0 + 256) = 0;
    *(v0 + 264) = v40;
    *(v0 + 272) = v42;
  }

  swift_task_create();

  v6 = swift_task_alloc();
  *(v0 + 544) = v6;
  *v6 = v0;
  v6[1] = sub_1000202EC;
  v7 = &type metadata for () + 8;
  v8 = v27;
LABEL_24:

  return Task<>.value.getter(v6, v8, v7);
}

uint64_t sub_1000202EC()
{
  v1 = *(*v0 + 520);

  return _swift_task_switch(sub_1000203FC, v1, 0);
}

uint64_t sub_1000203FC()
{
  v2 = v0[56];
  v1 = v0[57];
  v3 = v0[55];

  (*(v2 + 8))(v1, v3);

  return _swift_task_switch(sub_10002049C, 0, 0);
}

uint64_t sub_10002049C()
{
  v1 = v0[58];

  sub_100008B68(v1, &qword_1000838E8, &qword_100061848);
  v2 = sub_1000268AC();
  v3 = swift_task_alloc();
  v0[62] = v3;
  *v3 = v0;
  v3[1] = sub_10001F6F0;
  v4 = v0[58];
  v5 = v0[59];

  return dispatch thunk of AsyncIteratorProtocol.next()(v4, v5, v2);
}

uint64_t sub_100020568()
{
  v1 = *(*v0 + 520);

  return _swift_task_switch(sub_100020694, v1, 0);
}

uint64_t sub_100020694()
{
  v2 = v0[56];
  v1 = v0[57];
  v3 = v0[55];

  sub_100004B28(v0 + 2);
  (*(v2 + 8))(v1, v3);

  return _swift_task_switch(sub_10002049C, 0, 0);
}

uint64_t sub_100020738(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[12] = a4;
  sub_100003B30(&qword_1000838E8, &qword_100061848);
  v4[13] = swift_task_alloc();
  v5 = type metadata accessor for NSNotificationCenter.Notifications.Iterator();
  v4[14] = v5;
  v4[15] = *(v5 - 8);
  v4[16] = swift_task_alloc();

  return _swift_task_switch(sub_100020830, 0, 0);
}

uint64_t sub_100020830()
{
  v1 = [objc_opt_self() defaultCenter];
  NSNotificationCenter.notifications(named:object:)();

  NSNotificationCenter.Notifications.makeAsyncIterator()();
  swift_beginAccess();
  v2 = sub_1000268AC();
  v3 = swift_task_alloc();
  v0[17] = v3;
  *v3 = v0;
  v3[1] = sub_100020948;
  v4 = v0[13];
  v5 = v0[14];

  return dispatch thunk of AsyncIteratorProtocol.next()(v4, v5, v2);
}

uint64_t sub_100020948()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_100020E3C;
  }

  else
  {
    v2 = sub_100020A5C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100020A78()
{
  v1 = v0[13];
  v2 = type metadata accessor for Notification();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    (*(v0[15] + 8))(v0[16], v0[14]);
LABEL_8:

    v5 = v0[1];

    return v5();
  }

  Strong = swift_weakLoadStrong();
  v0[19] = Strong;
  if (!Strong)
  {
    (*(v0[15] + 8))(v0[16], v0[14]);
    goto LABEL_7;
  }

  v4 = Strong;
  if (static Task<>.isCancelled.getter())
  {
    (*(v0[15] + 8))(v0[16], v0[14]);

LABEL_7:
    sub_100008B68(v0[13], &qword_1000838E8, &qword_100061848);
    goto LABEL_8;
  }

  if (qword_1000831F0 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_1000080BC(v7, qword_100086758);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v0[11] = v11;
    *v10 = 136315138;
    if (*(v4 + 24))
    {
      if (*(v4 + 24) == 1)
      {
        v12 = 0xE600000000000000;
        v13 = 0x7070412D6E49;
      }

      else
      {
        v12 = 0xE800000000000000;
        v13 = 0x73676E6974746553;
      }
    }

    else
    {
      v12 = 0xE200000000000000;
      v13 = 17219;
    }

    v14 = sub_10005305C(v13, v12, v0 + 11);

    *(v10 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v8, v9, "[%s] .AVInputContextCanSetInputGainDidChange received", v10, 0xCu);
    sub_100004B28(v11);
  }

  sub_100004BCC((v4 + 144), *(v4 + 168));
  v15 = swift_task_alloc();
  v0[20] = v15;
  *v15 = v0;
  v15[1] = sub_100020EC8;

  return (sub_1000090F0)(v0 + 2, &type metadata for MXAVInputContextFactory, &off_100079F00);
}

uint64_t sub_100020E3C()
{
  *(v0 + 80) = *(v0 + 144);
  sub_100003B30(&qword_1000838F8, &qword_100061850);
  v1 = swift_dynamicCast();

  return _swift_willThrowTypedImpl(v1, &type metadata for Never, &protocol witness table for Never);
}

uint64_t sub_100020EC8()
{

  return _swift_task_switch(sub_100020FC4, 0, 0);
}

uint64_t sub_100020FC4()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  sub_100004BCC((v0 + 16), v1);
  *(v0 + 192) = (*(v2 + 48))(v1, v2) & 1;
  sub_100004B28((v0 + 16));
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 168) = Strong;
  if (Strong)
  {
    *(v0 + 176) = type metadata accessor for MainActor();
    swift_unknownObjectRetain();
    *(v0 + 184) = static MainActor.shared.getter();
    v5 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_100021168, v5, v4);
  }

  else
  {

    sub_100008B68(*(v0 + 104), &qword_1000838E8, &qword_100061848);
    v6 = sub_1000268AC();
    v7 = swift_task_alloc();
    *(v0 + 136) = v7;
    *v7 = v0;
    v7[1] = sub_100020948;
    v8 = *(v0 + 104);
    v9 = *(v0 + 112);

    return dispatch thunk of AsyncIteratorProtocol.next()(v8, v9, v6);
  }
}

uint64_t sub_100021168()
{

  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v1 = *(v0 + 192);
  v2 = *(v0 + 152);
  type metadata accessor for MicrophoneManager(0);
  sub_100043004(v2, v1);

  swift_unknownObjectRelease();

  return _swift_task_switch(sub_100021288, 0, 0);
}

uint64_t sub_100021288()
{
  swift_unknownObjectRelease();

  sub_100008B68(v0[13], &qword_1000838E8, &qword_100061848);
  v1 = sub_1000268AC();
  v2 = swift_task_alloc();
  v0[17] = v2;
  *v2 = v0;
  v2[1] = sub_100020948;
  v3 = v0[13];
  v4 = v0[14];

  return dispatch thunk of AsyncIteratorProtocol.next()(v3, v4, v1);
}

uint64_t sub_10002135C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[12] = a4;
  v5 = sub_100003B30(&qword_100083918, &qword_1000618B8);
  v4[13] = v5;
  v4[14] = *(v5 - 8);
  v4[15] = swift_task_alloc();
  v6 = sub_100003B30(&qword_100083920, &qword_1000618C0);
  v4[16] = v6;
  v4[17] = *(v6 - 8);
  v4[18] = swift_task_alloc();
  sub_100003B30(&qword_1000838E8, &qword_100061848);
  v4[19] = swift_task_alloc();
  v7 = type metadata accessor for NSNotificationCenter.Notifications.Iterator();
  v4[20] = v7;
  v4[21] = *(v7 - 8);
  v4[22] = swift_task_alloc();

  return _swift_task_switch(sub_100021524, 0, 0);
}

uint64_t sub_100021524()
{
  v1 = [objc_opt_self() defaultCenter];
  NSNotificationCenter.notifications(named:object:)();

  NSNotificationCenter.Notifications.makeAsyncIterator()();
  swift_beginAccess();
  v2 = sub_1000268AC();
  v3 = swift_task_alloc();
  v0[23] = v3;
  *v3 = v0;
  v3[1] = sub_10002163C;
  v4 = v0[19];
  v5 = v0[20];

  return dispatch thunk of AsyncIteratorProtocol.next()(v4, v5, v2);
}

uint64_t sub_10002163C()
{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = sub_100021B44;
  }

  else
  {
    v2 = sub_100021750;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10002176C()
{
  v1 = v0[19];
  v2 = type metadata accessor for Notification();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    (*(v0[21] + 8))(v0[22], v0[20]);
LABEL_8:

    v5 = v0[1];

    return v5();
  }

  Strong = swift_weakLoadStrong();
  v0[25] = Strong;
  if (!Strong)
  {
    (*(v0[21] + 8))(v0[22], v0[20]);
    goto LABEL_7;
  }

  v4 = Strong;
  if (static Task<>.isCancelled.getter())
  {
    (*(v0[21] + 8))(v0[22], v0[20]);

LABEL_7:
    sub_100008B68(v0[19], &qword_1000838E8, &qword_100061848);
    goto LABEL_8;
  }

  if (qword_1000831F0 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_1000080BC(v7, qword_100086758);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v0[11] = v11;
    *v10 = 136315138;
    if (*(v4 + 24))
    {
      if (*(v4 + 24) == 1)
      {
        v12 = 0xE600000000000000;
        v13 = 0x7070412D6E49;
      }

      else
      {
        v12 = 0xE800000000000000;
        v13 = 0x73676E6974746553;
      }
    }

    else
    {
      v12 = 0xE200000000000000;
      v13 = 17219;
    }

    v14 = sub_10005305C(v13, v12, v0 + 11);

    *(v10 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v8, v9, "[%s] .AVInputContextInputGainDidChange received", v10, 0xCu);
    sub_100004B28(v11);
  }

  sub_100004BCC((v4 + 144), *(v4 + 168));
  v15 = swift_task_alloc();
  v0[26] = v15;
  *v15 = v0;
  v15[1] = sub_100021BD0;

  return (sub_1000090F0)(v0 + 2, &type metadata for MXAVInputContextFactory, &off_100079F00);
}

uint64_t sub_100021B44()
{
  *(v0 + 80) = *(v0 + 192);
  sub_100003B30(&qword_1000838F8, &qword_100061850);
  v1 = swift_dynamicCast();

  return _swift_willThrowTypedImpl(v1, &type metadata for Never, &protocol witness table for Never);
}

uint64_t sub_100021BD0()
{

  return _swift_task_switch(sub_100021CCC, 0, 0);
}

uint64_t sub_100021CCC()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  sub_100004BCC((v0 + 16), v1);
  *(v0 + 244) = (*(v2 + 56))(v1, v2);
  sub_100004B28((v0 + 16));
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 216) = Strong;
  if (Strong)
  {
    *(v0 + 224) = type metadata accessor for MainActor();
    swift_unknownObjectRetain();
    *(v0 + 232) = static MainActor.shared.getter();
    v5 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_100021E6C, v5, v4);
  }

  else
  {

    sub_100008B68(*(v0 + 152), &qword_1000838E8, &qword_100061848);
    v6 = sub_1000268AC();
    v7 = swift_task_alloc();
    *(v0 + 184) = v7;
    *v7 = v0;
    v7[1] = sub_10002163C;
    v8 = *(v0 + 152);
    v9 = *(v0 + 160);

    return dispatch thunk of AsyncIteratorProtocol.next()(v8, v9, v6);
  }
}

uint64_t sub_100021E6C()
{

  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v1 = *(v0 + 244);
  v3 = *(v0 + 136);
  v2 = *(v0 + 144);
  v4 = *(v0 + 120);
  v5 = *(v0 + 128);
  v6 = *(v0 + 104);
  v7 = *(v0 + 112);
  (*(v7 + 16))(v4, *(v0 + 216) + OBJC_IVAR____TtC19AVKitRoutingService17MicrophoneManager_inputGainContinuation, v6);
  *(v0 + 240) = v1;
  AsyncStream.Continuation.yield(_:)();
  swift_unknownObjectRelease();
  (*(v7 + 8))(v4, v6);
  (*(v3 + 8))(v2, v5);

  return _swift_task_switch(sub_100021FD4, 0, 0);
}

uint64_t sub_100021FD4()
{
  swift_unknownObjectRelease();

  sub_100008B68(v0[19], &qword_1000838E8, &qword_100061848);
  v1 = sub_1000268AC();
  v2 = swift_task_alloc();
  v0[23] = v2;
  *v2 = v0;
  v2[1] = sub_10002163C;
  v3 = v0[19];
  v4 = v0[20];

  return dispatch thunk of AsyncIteratorProtocol.next()(v3, v4, v1);
}

uint64_t sub_1000220A8(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 736) = a3;
  *(v3 + 320) = a2;
  v4 = sub_100003B30(&qword_100083898, &qword_1000616E8);
  *(v3 + 328) = v4;
  *(v3 + 336) = *(v4 - 8);
  *(v3 + 344) = swift_task_alloc();
  v5 = sub_100003B30(&qword_1000838A0, &qword_1000616F0);
  *(v3 + 352) = v5;
  *(v3 + 360) = *(v5 - 8);
  *(v3 + 368) = swift_task_alloc();
  v6 = type metadata accessor for TaskPriority();
  *(v3 + 376) = v6;
  *(v3 + 384) = *(v6 - 8);
  *(v3 + 392) = swift_task_alloc();

  return _swift_task_switch(sub_10002223C, 0, 0);
}

uint64_t sub_10002223C()
{
  v14 = v0;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[50] = Strong;
  if (Strong)
  {
    v2 = Strong;
    if (qword_1000831F0 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    v0[51] = sub_1000080BC(v3, qword_100086758);

    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v6 = 136315394;
      if (*(v2 + 24))
      {
        if (*(v2 + 24) == 1)
        {
          v7 = 0xE600000000000000;
          v8 = 0x7070412D6E49;
        }

        else
        {
          v7 = 0xE800000000000000;
          v8 = 0x73676E6974746553;
        }
      }

      else
      {
        v7 = 0xE200000000000000;
        v8 = 17219;
      }

      v11 = sub_10005305C(v8, v7, &v13);

      *(v6 + 4) = v11;
      *(v6 + 12) = 2080;
      *(v6 + 14) = sub_10005305C(0xD000000000000027, 0x8000000100068640, &v13);
      _os_log_impl(&_mh_execute_header, v4, v5, "[%s] %s", v6, 0x16u);
      swift_arrayDestroy();
    }

    sub_100004BCC((v2 + 144), *(v2 + 168));
    v12 = swift_task_alloc();
    v0[52] = v12;
    *v12 = v0;
    v12[1] = sub_1000225A0;

    return (sub_1000090F0)(v0 + 32, &type metadata for MXAVInputContextFactory, &off_100079F00);
  }

  else
  {

    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_1000225A0()
{

  return _swift_task_switch(sub_10002269C, 0, 0);
}

uint64_t sub_10002269C()
{
  v1 = v0[35];
  v2 = v0[36];
  sub_100004BCC(v0 + 32, v1);
  v5 = (*(v2 + 8) + **(v2 + 8));
  v3 = swift_task_alloc();
  v0[53] = v3;
  *v3 = v0;
  v3[1] = sub_1000227C0;

  return v5(v1, v2);
}

uint64_t sub_1000227C0(uint64_t a1)
{
  *(*v1 + 432) = a1;

  return _swift_task_switch(sub_1000228C0, 0, 0);
}

uint64_t sub_1000228C0()
{
  v1 = *(v0 + 432);
  if (v1)
  {
    sub_100004B28((v0 + 256));
    sub_100039078(v1, (v0 + 160));
    v9 = *(v0 + 176);
    v10 = *(v0 + 160);
    v2 = *(v0 + 192);
    v3 = *(v0 + 200);

    *(v0 + 664) = v3;
    *(v0 + 656) = v2;
    *(v0 + 624) = v10;
    *(v0 + 640) = v9;
    v4 = *(*(v0 + 400) + 104);
    *(v0 + 672) = v4;

    return _swift_task_switch(sub_100023120, v4, 0);
  }

  else
  {
    v5 = *(v0 + 400);
    sub_100004B28((v0 + 256));
    if (*(v5 + 24) == 2)
    {
      v6 = swift_task_alloc();
      *(v0 + 440) = v6;
      *v6 = v0;
      v6[1] = sub_100022A6C;

      return sub_1000172A0(v0 + 112);
    }

    else
    {
      v7 = swift_task_alloc();
      *(v0 + 496) = v7;
      *v7 = v0;
      v7[1] = sub_100022BD4;

      return sub_100011D94(v0 + 64);
    }
  }
}

uint64_t sub_100022A6C()
{
  v1 = *v0;

  v2 = v1[8];
  v1[28] = v1[7];
  v1[29] = v2;
  v1[30] = v1[9];

  return _swift_task_switch(sub_100022B78, 0, 0);
}

uint64_t sub_100022B78()
{
  v1 = *(v0 + 456);
  if (v1)
  {
    v2 = *(v0 + 448);
    v3 = *(v0 + 480);
    *(v0 + 640) = *(v0 + 464);
    *(v0 + 656) = v3;
    *(v0 + 632) = v1;
    *(v0 + 624) = v2;
    v4 = *(*(v0 + 400) + 104);
    *(v0 + 672) = v4;
    v5 = sub_100023120;
  }

  else
  {
    v4 = *(*(v0 + 400) + 104);
    *(v0 + 552) = v4;
    v5 = sub_100022D50;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100022BD4()
{
  v1 = *v0;

  v2 = v1[5];
  *(v1 + 504) = v1[4];
  *(v1 + 520) = v2;
  *(v1 + 536) = v1[6];

  return _swift_task_switch(sub_100022CF0, 0, 0);
}

uint64_t sub_100022CF0()
{
  v1 = *(v0 + 512);
  if (v1)
  {
    v2 = *(v0 + 504);
    v3 = *(v0 + 536);
    *(v0 + 640) = *(v0 + 520);
    *(v0 + 656) = v3;
    *(v0 + 632) = v1;
    *(v0 + 624) = v2;
    v4 = *(*(v0 + 400) + 104);
    *(v0 + 672) = v4;
    v5 = sub_100023120;
  }

  else
  {
    v4 = *(*(v0 + 400) + 104);
    *(v0 + 552) = v4;
    v5 = sub_100022D50;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100022D50()
{
  v1 = v0[69];
  v2 = v1[14];
  v0[70] = v2;
  v3 = v1[15];
  v0[71] = v3;
  v4 = v1[16];
  v0[72] = v4;
  v5 = v1[17];
  v0[73] = v5;
  v6 = v1[18];
  v0[74] = v6;
  v7 = v1[19];
  v0[75] = v7;
  sub_100025418(v2, v3, v4, v5, v6, v7);

  return _swift_task_switch(sub_100022DE8, 0, 0);
}

uint64_t sub_100022DE8()
{
  v1 = *(v0 + 568);
  if (v1)
  {
    v2 = *(v0 + 560);
    v3 = *(v0 + 592);
    *(v0 + 640) = *(v0 + 576);
    *(v0 + 656) = v3;
    *(v0 + 632) = v1;
    *(v0 + 624) = v2;
    v4 = *(*(v0 + 400) + 104);
    *(v0 + 672) = v4;

    return _swift_task_switch(sub_100023120, v4, 0);
  }

  else
  {
    v5 = swift_allocObject();
    *(v0 + 608) = v5;
    swift_weakInit();
    static TaskPriority.userInitiated.getter();
    v6 = swift_task_alloc();
    *(v0 + 616) = v6;
    *v6 = v0;
    v6[1] = sub_100022F74;
    v7 = *(v0 + 392);

    return sub_10004464C(v0 + 16, 0x6B6361626C6C6166, 0xEF29286574756F52, v7, &unk_100061708, v5);
  }
}

uint64_t sub_100022F74()
{
  v1 = *(*v0 + 392);
  v2 = *(*v0 + 384);
  v3 = *(*v0 + 376);

  (*(v2 + 8))(v1, v3);

  return _swift_task_switch(sub_1000230E8, 0, 0);
}

uint64_t sub_1000230E8()
{
  v1 = *(v0 + 48);
  v3 = *(v0 + 16);
  v2 = *(v0 + 32);
  *(v0 + 664) = *(v0 + 56);
  *(v0 + 656) = v1;
  *(v0 + 624) = v3;
  *(v0 + 640) = v2;
  v4 = *(*(v0 + 400) + 104);
  *(v0 + 672) = v4;
  return _swift_task_switch(sub_100023120, v4, 0);
}

uint64_t sub_100023120()
{
  v1 = v0[84];
  v2 = v1[33];
  v0[85] = v2;
  v3 = v1[34];
  v0[86] = v3;
  v4 = v1[35];
  v5 = v1[36];
  v0[87] = v5;
  v6 = v1[37];
  v7 = v1[38];
  v0[88] = v7;
  sub_100025418(v2, v3, v4, v5, v6, v7);

  return _swift_task_switch(sub_1000231A8, 0, 0);
}

uint64_t sub_1000231A8()
{
  v1 = *(v0 + 688);
  if (v1)
  {
    if (*(v0 + 680) == *(v0 + 624) && v1 == *(v0 + 632))
    {

      goto LABEL_14;
    }

    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v3)
    {
      goto LABEL_14;
    }
  }

  else if (!*(v0 + 632))
  {
LABEL_14:
    sub_1000253A0(*(v0 + 624), *(v0 + 632), *(v0 + 640), *(v0 + 648), *(v0 + 656), *(v0 + 664));

    v5 = *(v0 + 8);

    return v5();
  }

  if (*(v0 + 736))
  {
    goto LABEL_14;
  }

  v4 = *(*(v0 + 400) + 104);
  *(v0 + 712) = v4;

  return _swift_task_switch(sub_100023324, v4, 0);
}

uint64_t sub_100023324()
{
  v1 = *(v0 + 712);
  v2 = *(v0 + 664);
  v3 = *(v0 + 624);
  v4 = v1[33];
  v5 = v1[34];
  v6 = v1[35];
  v7 = v1[36];
  v8 = v1[37];
  v9 = v1[38];
  v10 = *(v0 + 648);
  *(v1 + 17) = *(v0 + 632);
  *(v1 + 18) = v10;
  v1[33] = v3;
  v1[38] = v2;

  sub_1000253A0(v4, v5, v6, v7, v8, v9);

  return _swift_task_switch(sub_100023410, 0, 0);
}

uint64_t sub_100023410()
{
  v22 = v0;

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[50];
    v4 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v4 = 136315394;
    v18 = v2;
    if (*(v3 + 24))
    {
      if (*(v3 + 24) == 1)
      {
        v5 = 0xE600000000000000;
        v6 = 0x7070412D6E49;
      }

      else
      {
        v5 = 0xE800000000000000;
        v6 = 0x73676E6974746553;
      }
    }

    else
    {
      v5 = 0xE200000000000000;
      v6 = 17219;
    }

    v7 = v0[81];
    v8 = v0[80];
    v9 = v0[79];
    v10 = v0[78];
    v11 = sub_10005305C(v6, v5, &v19);

    *(v4 + 4) = v11;
    *(v4 + 12) = 2080;
    v20 = v10;
    v21 = v9;
    swift_bridgeObjectRetain_n();

    v12._countAndFlagsBits = 45;
    v12._object = 0xE100000000000000;
    String.append(_:)(v12);
    v13._countAndFlagsBits = v8;
    v13._object = v7;
    String.append(_:)(v13);

    v14 = sub_10005305C(v20, v21, &v19);

    *(v4 + 14) = v14;
    _os_log_impl(&_mh_execute_header, v1, v18, "[%s] attempting to render new picked device: %s", v4, 0x16u);
    swift_arrayDestroy();
  }

  v0[90] = type metadata accessor for MainActor();
  v0[91] = static MainActor.shared.getter();
  v16 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000236CC, v16, v15);
}

uint64_t sub_1000236CC()
{

  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  v2 = *(v0 + 664);
  if (Strong)
  {
    v3 = *(v0 + 656);
    v10 = *(v0 + 624);
    v11 = *(v0 + 640);
    v5 = *(v0 + 360);
    v4 = *(v0 + 368);
    v6 = *(v0 + 344);
    v12 = *(v0 + 352);
    v8 = *(v0 + 328);
    v7 = *(v0 + 336);
    (*(v7 + 16))(v6, Strong + OBJC_IVAR____TtC19AVKitRoutingService17MicrophoneManager_selectedMicrophoneContinuation, v8);
    *(v0 + 208) = v10;
    *(v0 + 224) = v11;
    *(v0 + 240) = v3;
    *(v0 + 248) = v2;
    AsyncStream.Continuation.yield(_:)();
    swift_unknownObjectRelease();
    (*(v7 + 8))(v6, v8);
    (*(v5 + 8))(v4, v12);
  }

  else
  {
  }

  return _swift_task_switch(sub_100023890, 0, 0);
}

uint64_t sub_100023890()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100023910(uint64_t a1, uint64_t a2)
{
  v2[6] = a2;
  v3 = sub_100003B30(&qword_1000838A8, &unk_100062B90);
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();
  v4 = sub_100003B30(&qword_1000838B0, &qword_100061760);
  v2[10] = v4;
  v2[11] = *(v4 - 8);
  v2[12] = swift_task_alloc();

  return _swift_task_switch(sub_100023A44, 0, 0);
}

uint64_t sub_100023A44()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[13] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[14] = v2;
    *v2 = v0;
    v2[1] = sub_100023B40;

    return sub_100024528();
  }

  else
  {

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_100023B40(uint64_t a1)
{
  *(*v1 + 120) = a1;

  return _swift_task_switch(sub_100023C40, 0, 0);
}

uint64_t sub_100023C40()
{
  v1 = *(*(v0 + 104) + 104);
  *(v0 + 128) = v1;
  return _swift_task_switch(sub_100023C64, v1, 0);
}

uint64_t sub_100023C64()
{
  *(v0 + 136) = *(*(v0 + 128) + 256);

  return _swift_task_switch(sub_100023CD8, 0, 0);
}

uint64_t sub_100023CD8()
{
  v16 = v0;
  if (v0[17] && (v1 = sub_100034344(v0[17], v0[15]), , (v1 & 1) != 0) || !*(v0[15] + 16))
  {

    if (qword_1000831F0 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_1000080BC(v3, qword_100086758);

    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();

    v6 = os_log_type_enabled(v4, v5);
    v7 = v0[13];
    if (v6)
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v15 = v9;
      *v8 = 136315138;
      if (*(v7 + 24))
      {
        if (*(v7 + 24) == 1)
        {
          v10 = 0xE600000000000000;
          v11 = 0x7070412D6E49;
        }

        else
        {
          v10 = 0xE800000000000000;
          v11 = 0x73676E6974746553;
        }
      }

      else
      {
        v10 = 0xE200000000000000;
        v11 = 17219;
      }

      v12 = sub_10005305C(v11, v10, &v15);

      *(v8 + 4) = v12;
      _os_log_impl(&_mh_execute_header, v4, v5, "[%s] availableInputDevices is empty", v8, 0xCu);
      sub_100004B28(v9);
    }

    else
    {
    }

    v13 = v0[1];

    return v13();
  }

  else
  {
    v2 = *(v0[13] + 104);
    v0[18] = v2;

    return _swift_task_switch(sub_100023F5C, v2, 0);
  }
}

uint64_t sub_100023F5C()
{
  sub_1000099C4();

  return _swift_task_switch(sub_100023FC4, 0, 0);
}

uint64_t sub_100023FC4()
{
  v1 = *(*(v0 + 104) + 104);
  *(v0 + 152) = v1;

  return _swift_task_switch(sub_10002403C, v1, 0);
}

uint64_t sub_10002403C()
{
  *(*(v0 + 152) + 256) = *(v0 + 120);

  return _swift_task_switch(sub_1000240C0, 0, 0);
}

uint64_t sub_1000240C0()
{
  v16 = v0;
  if (qword_1000831F0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000080BC(v1, qword_100086758);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[13];
    v5 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v5 = 136315394;
    if (*(v4 + 24))
    {
      if (*(v4 + 24) == 1)
      {
        v6 = 0xE600000000000000;
        v7 = 0x7070412D6E49;
      }

      else
      {
        v6 = 0xE800000000000000;
        v7 = 0x73676E6974746553;
      }
    }

    else
    {
      v6 = 0xE200000000000000;
      v7 = 17219;
    }

    v8 = sub_10005305C(v7, v6, &v15);

    *(v5 + 4) = v8;
    *(v5 + 12) = 2080;
    v9 = Array.description.getter();
    v11 = sub_10005305C(v9, v10, &v15);

    *(v5 + 14) = v11;
    _os_log_impl(&_mh_execute_header, v2, v3, "[%s] discoverySession or fakeDiscoverySession new routes: %s", v5, 0x16u);
    swift_arrayDestroy();
  }

  v0[20] = type metadata accessor for MainActor();
  v0[21] = static MainActor.shared.getter();
  v13 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10002432C, v13, v12);
}

uint64_t sub_10002432C()
{

  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  v2 = v0[15];
  if (Strong)
  {
    v4 = v0[11];
    v3 = v0[12];
    v6 = v0[9];
    v5 = v0[10];
    v7 = v0[7];
    v8 = v0[8];
    (*(v8 + 16))(v6, Strong + OBJC_IVAR____TtC19AVKitRoutingService17MicrophoneManager_availableMicrophonesContinuation, v7);
    v0[5] = v2;
    AsyncStream.Continuation.yield(_:)();
    swift_unknownObjectRelease();
    (*(v8 + 8))(v6, v7);
    (*(v4 + 8))(v3, v5);
  }

  else
  {
  }

  return _swift_task_switch(sub_1000244B4, 0, 0);
}

uint64_t sub_1000244B4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100024548()
{
  v1 = *(v0[14] + 128);
  v0[15] = v1;
  v2 = *(v1 + 16);

  v3 = swift_task_alloc();
  v0[16] = v3;
  v4 = sub_100008398(0, &qword_100083888, AVInputDeviceDiscoverySession_ptr);
  v0[17] = v4;
  *v3 = v0;
  v3[1] = sub_10002461C;

  return Task<>.value.getter(v0 + 10, v2, v4);
}

uint64_t sub_10002461C()
{

  return _swift_task_switch(sub_100024718, 0, 0);
}

uint64_t sub_100024718()
{
  v59 = v0;
  v1 = v0;

  v2 = v0[10];
  v3 = [v2 availableInputDevices];

  v1[18] = sub_100008398(0, &qword_1000838B8, AVInputDevice_ptr);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v4 >> 62)
  {
    v5 = _CocoaArrayWrapper.endIndex.getter();
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
LABEL_3:
      v58 = _swiftEmptyArrayStorage;
      sub_100025688(0, v5 & ~(v5 >> 63), 0);
      if (v5 < 0)
      {
        __break(1u);
        goto LABEL_47;
      }

      v6 = 0;
      v7 = v58;
      v53 = v1;
      v54 = v4 & 0xC000000000000001;
      v55 = v5;
      v56 = v4;
      while (1)
      {
        if (v54)
        {
          v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v8 = *(v4 + 8 * v6 + 32);
        }

        v9 = v8;
        v10 = [v8 deviceID];
        if (v10)
        {
          v11 = v10;
          v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v14 = v13;

          v1[8] = v12;
          v1[9] = v14;
          v15 = String.init<A>(_:)();
        }

        else
        {
          v1[11] = v9;
          v15 = String.init<A>(describing:)();
        }

        v57 = v15;
        v17 = v16;
        v18 = [v9 deviceName];
        if (v18)
        {
          v19 = v18;
          v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v22 = v21;

          v1[6] = v20;
          v1[7] = v22;
          v23 = String.init<A>(_:)();
          v25 = v24;
        }

        else
        {
          v23 = 0;
          v25 = 0xE000000000000000;
        }

        v26 = sub_100037744(v9);
        if ((v26 & 0x100000000) != 0)
        {
          goto LABEL_19;
        }

        v27 = v26;
        if (!sub_1000261B4(v26))
        {
          goto LABEL_19;
        }

        v28 = [objc_opt_self() productInfoWithProductID:v27];
        v29 = [v28 sfSymbolNameMain];
        if (!v29)
        {
          break;
        }

        v30 = v29;
        v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v33 = v32;

        v1 = v53;
LABEL_26:
        v58 = v7;
        v36 = v7[2];
        v35 = v7[3];
        if (v36 >= v35 >> 1)
        {
          sub_100025688((v35 > 1), v36 + 1, 1);
          v7 = v58;
        }

        ++v6;
        v7[2] = v36 + 1;
        v37 = &v7[6 * v36];
        v37[4] = v57;
        v37[5] = v17;
        v37[6] = v23;
        v37[7] = v25;
        v37[8] = v31;
        v37[9] = v33;
        v4 = v56;
        if (v55 == v6)
        {

          if (v7[2])
          {
            goto LABEL_30;
          }

LABEL_35:

          if (qword_1000831F0 == -1)
          {
LABEL_36:
            v40 = type metadata accessor for Logger();
            sub_1000080BC(v40, qword_100086758);

            v41 = Logger.logObject.getter();
            v42 = static os_log_type_t.default.getter();

            if (os_log_type_enabled(v41, v42))
            {
              v43 = v1[14];
              v44 = swift_slowAlloc();
              v45 = swift_slowAlloc();
              v58 = v45;
              *v44 = 136315138;
              if (*(v43 + 24))
              {
                if (*(v43 + 24) == 1)
                {
                  v46 = 0xE600000000000000;
                  v47 = 0x7070412D6E49;
                }

                else
                {
                  v46 = 0xE800000000000000;
                  v47 = 0x73676E6974746553;
                }
              }

              else
              {
                v46 = 0xE200000000000000;
                v47 = 17219;
              }

              v48 = sub_10005305C(v47, v46, &v58);

              *(v44 + 4) = v48;
              _os_log_impl(&_mh_execute_header, v41, v42, "[%s] looking in to fakeSession routes", v44, 0xCu);
              sub_100004B28(v45);
            }

            v49 = *(v1[14] + 136);
            v1[19] = v49;
            v50 = *(v49 + 16);

            v51 = swift_task_alloc();
            v1[20] = v51;
            *v51 = v1;
            v51[1] = sub_100024D14;
            v52 = v1[17];

            return Task<>.value.getter(v1 + 12, v50, v52);
          }

LABEL_47:
          swift_once();
          goto LABEL_36;
        }
      }

      v1 = v53;
LABEL_19:
      v34 = [v9 deviceType];

      if (v34)
      {
        if (v34 == 3)
        {
          v31 = 0x6F632E656C626163;
          v33 = 0xED00006C61697861;
        }

        else if (v34 == 1)
        {
          v33 = 0xE700000000000000;
          v31 = 0x6E692E656E696CLL;
        }

        else
        {
          v31 = 0x6F68706F7263696DLL;
          v33 = 0xEF6C6C69662E656ELL;
        }
      }

      else
      {
        v33 = 0xE700000000000000;
        v31 = 0x73647562726165;
      }

      goto LABEL_26;
    }
  }

  v7 = _swiftEmptyArrayStorage;
  if (!_swiftEmptyArrayStorage[2])
  {
    goto LABEL_35;
  }

LABEL_30:
  v38 = v1[1];

  return v38(v7);
}

uint64_t sub_100024D14()
{

  return _swift_task_switch(sub_100024E10, 0, 0);
}

char *sub_100024E10()
{

  v1 = v0[12];
  v2 = [v1 availableInputDevices];

  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  if (v3 >> 62)
  {
    v4 = _CocoaArrayWrapper.endIndex.getter();
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_31:

    v36 = v0[1];

    return v36(_swiftEmptyArrayStorage);
  }

  v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
    goto LABEL_31;
  }

LABEL_3:
  result = sub_100025688(0, v4 & ~(v4 >> 63), 0);
  if ((v4 & 0x8000000000000000) == 0)
  {
    v6 = 0;
    v37 = v3;
    v38 = v3 & 0xC000000000000001;
    v39 = v4;
    while (1)
    {
      if (v38)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v7 = *(v3 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = [v7 deviceID];
      if (v9)
      {
        v10 = v9;
        v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v13 = v12;

        v0[4] = v11;
        v0[5] = v13;
        v14 = String.init<A>(_:)();
      }

      else
      {
        v0[13] = v8;
        v14 = String.init<A>(describing:)();
      }

      v40 = v15;
      v41 = v14;
      v16 = [v8 deviceName];
      if (v16)
      {
        v17 = v16;
        v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v20 = v19;

        v0[2] = v18;
        v0[3] = v20;
        v21 = String.init<A>(_:)();
        v23 = v22;
      }

      else
      {
        v21 = 0;
        v23 = 0xE000000000000000;
      }

      v24 = sub_100037744(v8);
      if ((v24 & 0x100000000) != 0)
      {
        goto LABEL_19;
      }

      v25 = v24;
      if (!sub_1000261B4(v24))
      {
        goto LABEL_19;
      }

      v26 = [objc_opt_self() productInfoWithProductID:v25];
      v27 = [v26 sfSymbolNameMain];
      if (!v27)
      {
        break;
      }

      v28 = v27;
      v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v31 = v30;

      v3 = v37;
LABEL_26:
      v34 = _swiftEmptyArrayStorage[2];
      v33 = _swiftEmptyArrayStorage[3];
      if (v34 >= v33 >> 1)
      {
        sub_100025688((v33 > 1), v34 + 1, 1);
      }

      ++v6;
      _swiftEmptyArrayStorage[2] = v34 + 1;
      v35 = &_swiftEmptyArrayStorage[6 * v34];
      v35[4] = v41;
      v35[5] = v40;
      v35[6] = v21;
      v35[7] = v23;
      v35[8] = v29;
      v35[9] = v31;
      if (v39 == v6)
      {
        goto LABEL_31;
      }
    }

    v3 = v37;
LABEL_19:
    v32 = [v8 deviceType];

    if (v32)
    {
      if (v32 == 3)
      {
        v29 = 0x6F632E656C626163;
        v31 = 0xED00006C61697861;
      }

      else if (v32 == 1)
      {
        v31 = 0xE700000000000000;
        v29 = 0x6E692E656E696CLL;
      }

      else
      {
        v29 = 0x6F68706F7263696DLL;
        v31 = 0xEF6C6C69662E656ELL;
      }
    }

    else
    {
      v31 = 0xE700000000000000;
      v29 = 0x73647562726165;
    }

    goto LABEL_26;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000251D4()
{
  v1 = v0;
  if (qword_1000831F0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000080BC(v2, qword_100086758);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "[deinit] AVRoutingInputController deinit", v5, 2u);
  }

  sub_1000253F0(v1 + 32);

  sub_100004B28((v1 + 144));
  return v1;
}

uint64_t sub_100025324()
{
  sub_1000251D4();

  return _swift_deallocClassInstance(v0, 184, 7);
}

void sub_1000253A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
  }
}

void sub_100025418(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
  }
}

uint64_t sub_100025468()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000254A0(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100027414;

  return sub_100016F2C(a1, v1);
}

uint64_t sub_10002553C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100027414;

  return sub_1000220A8(a1, v4, v5);
}

uint64_t sub_1000255EC(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100027414;

  return sub_10001530C(a1, v1);
}

char *sub_100025688(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000256A8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000256A8(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003B30(&qword_1000838C0, &qword_100061770);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1000257C8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v10 = sub_100003B30(&qword_100083908, &unk_100061880);
  v30 = v10;
  v31 = &off_10007BC78;
  *&v29 = a1;
  v11 = *a5;
  v13 = sub_100057800(a2, a3);
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = v11[3];
  if (v18 >= v16 && (a4 & 1) != 0)
  {
LABEL_7:
    v19 = *a5;
    if (v17)
    {
LABEL_8:
      v20 = (v19[7] + 40 * v13);
      sub_100004B28(v20);
      return sub_100026B0C(&v29, v20);
    }

    goto LABEL_11;
  }

  if (v18 >= v16 && (a4 & 1) == 0)
  {
    sub_1000580BC();
    goto LABEL_7;
  }

  sub_100057C3C(v16, a4 & 1);
  v22 = sub_100057800(a2, a3);
  if ((v17 & 1) != (v23 & 1))
  {
LABEL_14:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v13 = v22;
  v19 = *a5;
  if (v17)
  {
    goto LABEL_8;
  }

LABEL_11:
  v24 = sub_100026B24(&v29, v10);
  __chkstk_darwin(v24);
  v26 = (&v28 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v27 + 16))(v26);
  sub_1000259CC(v13, a2, a3, *v26, v19);

  return sub_100004B28(&v29);
}

uint64_t sub_1000259CC(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v16 = sub_100003B30(&qword_100083908, &unk_100061880);
  v17 = &off_10007BC78;
  *&v15 = a4;
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v10 = (a5[6] + 16 * a1);
  *v10 = a2;
  v10[1] = a3;
  result = sub_100026B0C(&v15, a5[7] + 40 * a1);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

uint64_t sub_100025A88(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  return _swift_task_switch(sub_100025AAC, 0, 0);
}

uint64_t sub_100025AAC()
{
  v1 = *(v0[6] + 128);
  v0[7] = v1;
  v2 = *(v1 + 16);

  v3 = swift_task_alloc();
  v0[8] = v3;
  v4 = sub_100008398(0, &qword_100083888, AVInputDeviceDiscoverySession_ptr);
  v0[9] = v4;
  *v3 = v0;
  v3[1] = sub_100025B80;

  return Task<>.value.getter(v0 + 2, v2, v4);
}

uint64_t sub_100025B80()
{

  return _swift_task_switch(sub_100025C7C, 0, 0);
}

uint64_t sub_100025C7C()
{
  v2 = v0[4];
  v1 = v0[5];

  v3 = v0[2];
  v0[10] = v3;
  v4 = sub_1000388F8(v3, v2, v1);
  if (v4)
  {
    v5 = v4;

    v6 = v0[1];

    return v6(v5);
  }

  else
  {
    v8 = *(v0[6] + 136);
    v0[11] = v8;
    v9 = *(v8 + 16);

    v10 = swift_task_alloc();
    v0[12] = v10;
    *v10 = v0;
    v10[1] = sub_100025DA4;
    v11 = v0[9];

    return Task<>.value.getter(v0 + 3, v9, v11);
  }
}

uint64_t sub_100025DA4()
{

  return _swift_task_switch(sub_100025EA0, 0, 0);
}

uint64_t sub_100025EA0()
{
  v1 = v0[10];
  v2 = v0[4];
  v3 = v0[5];

  v4 = v0[3];
  v5 = sub_1000388F8(v4, v2, v3);

  v6 = v0[1];

  return v6(v5);
}

uint64_t sub_100025F30(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100027414;

  return sub_1000175A8(a1, v1);
}

uint64_t sub_10002607C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100027414;

  return sub_100016508(a1, v1);
}

uint64_t sub_100026118(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100027414;

  return sub_100023910(a1, v1);
}

uint64_t sub_1000261E0(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100027414;

  return sub_10001475C(a1, v1);
}

uint64_t sub_10002627C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100014310;

  return sub_10001475C(a1, v1);
}

uint64_t sub_100026318(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100027414;

  return sub_10001AE68(a1, v4, v5, v6);
}

uint64_t sub_1000263D0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100027414;

  return sub_10001B0A0(a1, v4, v5, v7, v6);
}

uint64_t sub_100026490()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000264D8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100027414;

  return sub_10001C79C(a1, v4, v5, v7, v6);
}

uint64_t sub_10002659C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100027414;

  return sub_10001DF24(a1, v4, v5, v6);
}

uint64_t sub_100026650(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100027414;

  return sub_100020738(a1, v4, v5, v6);
}

uint64_t sub_100026704(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100027414;

  return sub_10002135C(a1, v4, v5, v6);
}

uint64_t sub_1000267B8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000267F8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100027414;

  return sub_10001F428(a1, v4, v5, v6);
}

unint64_t sub_1000268AC()
{
  result = qword_1000838F0;
  if (!qword_1000838F0)
  {
    type metadata accessor for NSNotificationCenter.Notifications.Iterator();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000838F0);
  }

  return result;
}

uint64_t sub_100026904(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100027414;

  return sub_10000C0A0(a1, v1);
}

uint64_t sub_1000269A4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100027414;

  return sub_100046688(a1, v4, v5, v6);
}

uint64_t sub_100026A64(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003B30(&qword_1000838E0, &qword_100061C70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100026AD4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100026B0C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_100026B24(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t sub_100026B78(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100014310;

  return sub_100057084(a1, v4);
}

uint64_t sub_100026C30(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100026C94()
{

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_100026CCC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100027414;

  return sub_100057084(a1, v4);
}

uint64_t sub_100026D84(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100027414;

  return sub_100046780(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_100026E58()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100026E98()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100026EE8()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_100027414;

  return sub_10001839C(v0);
}

uint64_t sub_100026F78()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_100027414;

  return sub_100018F30(v0);
}

uint64_t sub_100027008(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100027414;

  return sub_100014228(a1, v4);
}

uint64_t sub_1000270C0()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000270F8()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100027414;

  return sub_10001979C(v2);
}

uint64_t sub_100027190()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100027414;

  return sub_100012908(v2, v3);
}

uint64_t sub_100027228()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100027268()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100027414;

  return sub_100013848(v2, v3);
}

uint64_t sub_100027300()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100027414;

  return sub_100014404(v2);
}

uint64_t sub_10002742C(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_100027450(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 8))
  {
    return (*a1 + 2147483645);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000274AC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

void *sub_100027500(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t sub_100027530()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = String._bridgeToObjectiveC()();
  v2 = sub_10005D95C(v0);

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v3;
}

BOOL sub_10002769C(uint64_t a1, unint64_t a2)
{
  switch(a1)
  {
    case 0:
      return !a2;
    case 1:
      return a2 == 1;
    case 2:
      return a2 == 2;
  }

  if (a2 < 3)
  {
    return 0;
  }

  v3 = *(a1 + 16);
  v4 = *(a2 + 16);
  sub_100003B78(v4);
  LOBYTE(v3) = sub_10002769C(v3, v4);
  sub_100003C9C(v4);
  return v3 & 1;
}

Swift::Int sub_100027734()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1)
  {
    if (v1 == 1)
    {
      v2 = 1;
    }

    else
    {
      if (v1 != 2)
      {
        v3 = *(v1 + 16);
        Hasher._combine(_:)(3uLL);
        sub_100003B78(v3);
        sub_10002796C(v3);
        sub_100003C9C(v3);
        return Hasher._finalize()();
      }

      v2 = 2;
    }
  }

  else
  {
    v2 = 0;
  }

  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

void sub_1000277D8()
{
  v1 = *v0;
  if (!*v0)
  {
    v2 = 0;
    goto LABEL_7;
  }

  if (v1 == 1)
  {
    v2 = 1;
    goto LABEL_7;
  }

  if (v1 == 2)
  {
    v2 = 2;
LABEL_7:
    Hasher._combine(_:)(v2);
    return;
  }

  v3 = *(v1 + 16);
  Hasher._combine(_:)(3uLL);
  sub_100003B78(v3);
  sub_10002796C(v3);

  sub_100003C9C(v3);
}

Swift::Int sub_100027868(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  if (v2)
  {
    if (v2 == 1)
    {
      v3 = 1;
    }

    else
    {
      if (v2 != 2)
      {
        v4 = *(v2 + 16);
        Hasher._combine(_:)(3uLL);
        sub_100003B78(v4);
        sub_10002796C(v4);
        sub_100003C9C(v4);
        return Hasher._finalize()();
      }

      v3 = 2;
    }
  }

  else
  {
    v3 = 0;
  }

  Hasher._combine(_:)(v3);
  return Hasher._finalize()();
}

unint64_t sub_100027918()
{
  result = qword_100083938;
  if (!qword_100083938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100083938);
  }

  return result;
}

void sub_10002796C(Swift::UInt a1)
{
  if (a1 > 2)
  {
    v1 = *(a1 + 16);
    Hasher._combine(_:)(3uLL);
    sub_100003B78(v1);
    sub_10002796C(v1);

    sub_100003C9C(v1);
  }

  else
  {

    Hasher._combine(_:)(a1);
  }
}

Swift::Int sub_1000279F0()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Int sub_100027A5C(uint64_t a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

uint64_t sub_100027AC4()
{
  swift_getKeyPath();
  sub_100035598(&qword_100083B20, type metadata accessor for RoutingControllerInputPickerViewModel.State, &unk_100061C28);
  ObservationRegistrar.access<A, B>(_:keyPath:)();
}

uint64_t sub_100027B68@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100035598(&qword_100083B20, type metadata accessor for RoutingControllerInputPickerViewModel.State, &unk_100061C28);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 16);
}

uint64_t sub_100027C14(uint64_t a1)
{
  if (sub_100034344(*(v1 + 16), a1))
  {
    *(v1 + 16) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100035598(&qword_100083B20, type metadata accessor for RoutingControllerInputPickerViewModel.State, &unk_100061C28);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_100027D58()
{
  swift_getKeyPath();
  sub_100035598(&qword_100083B20, type metadata accessor for RoutingControllerInputPickerViewModel.State, &unk_100061C28);
  ObservationRegistrar.access<A, B>(_:keyPath:)();
}

uint64_t sub_100027DFC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100035598(&qword_100083B20, type metadata accessor for RoutingControllerInputPickerViewModel.State, &unk_100061C28);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 24);
}

uint64_t sub_100027ED4(uint64_t a1)
{
  if (sub_1000343D4(*(v1 + 24), a1))
  {
    *(v1 + 24) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100035598(&qword_100083B20, type metadata accessor for RoutingControllerInputPickerViewModel.State, &unk_100061C28);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_100028018@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v11 = v1;
  sub_100035598(&qword_100083B20, type metadata accessor for RoutingControllerInputPickerViewModel.State, &unk_100061C28);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = *(v1 + 32);
  v4 = *(v11 + 40);
  v5 = *(v11 + 48);
  v6 = *(v11 + 56);
  v7 = *(v11 + 64);
  v8 = *(v11 + 72);
  v9 = *(v11 + 80);
  result = sub_100034A3C(v3, v4, v5, v6, v7, v8, v9);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
  *(a1 + 48) = v9;
  return result;
}

uint64_t sub_100028108@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100035598(&qword_100083B20, type metadata accessor for RoutingControllerInputPickerViewModel.State, &unk_100061C28);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 32);
  v5 = *(v3 + 40);
  v6 = *(v3 + 48);
  v7 = *(v3 + 56);
  v8 = *(v3 + 64);
  v9 = *(v3 + 72);
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  *(a2 + 32) = v8;
  *(a2 + 40) = v9;
  v10 = *(v3 + 80);
  *(a2 + 48) = v10;
  return sub_100034A3C(v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1000281CC(uint64_t a1)
{
  v3 = *(v1 + 48);
  v16[0] = *(v1 + 32);
  v16[1] = v3;
  v16[2] = *(v1 + 64);
  v17 = *(v1 + 80);
  sub_100008AF8(v16, v15, &qword_100083B50, &qword_100061D60);
  v4 = sub_100034D6C(v16, a1);
  sub_100008B68(v16, &qword_100083B50, &qword_100061D60);
  if (v4)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v15[0] = v1;
    sub_100035598(&qword_100083B20, type metadata accessor for RoutingControllerInputPickerViewModel.State, &unk_100061C28);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    sub_100008B68(a1, &qword_100083B50, &qword_100061D60);
  }

  else
  {
    v7 = *(v1 + 32);
    v8 = *(v1 + 40);
    v9 = *(v1 + 48);
    v10 = *(v1 + 56);
    v11 = *(v1 + 64);
    v12 = *(v1 + 72);
    v13 = *(a1 + 16);
    *(v1 + 32) = *a1;
    *(v1 + 48) = v13;
    *(v1 + 64) = *(a1 + 32);
    v14 = *(v1 + 80);
    *(v1 + 80) = *(a1 + 48);
    return sub_10003421C(v7, v8, v9, v10, v11, v12, v14);
  }
}

uint64_t sub_10002836C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);
  v7 = *(a1 + 72);
  v8 = *(a2 + 16);
  *(a1 + 32) = *a2;
  *(a1 + 48) = v8;
  *(a1 + 64) = *(a2 + 32);
  v9 = *(a1 + 80);
  *(a1 + 80) = *(a2 + 48);
  sub_100008AF8(a2, v11, &qword_100083B50, &qword_100061D60);
  return sub_10003421C(v2, v3, v4, v5, v6, v7, v9);
}

uint64_t sub_100028418()
{
  swift_getKeyPath();
  sub_100035598(&qword_100083B20, type metadata accessor for RoutingControllerInputPickerViewModel.State, &unk_100061C28);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 81);
}

uint64_t sub_1000284B8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100035598(&qword_100083B20, type metadata accessor for RoutingControllerInputPickerViewModel.State, &unk_100061C28);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 81);
  return result;
}

uint64_t sub_100028588(uint64_t result)
{
  if (*(v1 + 81) == (result & 1))
  {
    *(v1 + 81) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100035598(&qword_100083B20, type metadata accessor for RoutingControllerInputPickerViewModel.State, &unk_100061C28);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

double sub_100028698()
{
  swift_getKeyPath();
  sub_100035598(&qword_100083B20, type metadata accessor for RoutingControllerInputPickerViewModel.State, &unk_100061C28);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 88);
}

double sub_100028738@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100035598(&qword_100083B20, type metadata accessor for RoutingControllerInputPickerViewModel.State, &unk_100061C28);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = *(v3 + 88);
  *a2 = result;
  return result;
}

void sub_100028808(double a1)
{
  if (*(v1 + 88) == a1)
  {
    *(v1 + 88) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100035598(&qword_100083B20, type metadata accessor for RoutingControllerInputPickerViewModel.State, &unk_100061C28);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_100028920()
{

  sub_10003421C(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80));
  v1 = OBJC_IVAR____TtCC19AVKitRoutingService37RoutingControllerInputPickerViewModel5State___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v3, v4);
}

uint64_t sub_1000289E0()
{
  v1 = v0;
  if (*(v0 + 104) != 1)
  {
    return sub_100007218();
  }

  v2 = *(v0 + 64);
  swift_getKeyPath();
  sub_100035598(&qword_100083B20, type metadata accessor for RoutingControllerInputPickerViewModel.State, &unk_100061C28);

  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = *(v2 + 24);

  v4 = *(v3 + 16);

  v5 = 1;
  if (!*(v1 + 72))
  {
    v5 = 2;
  }

  if (v4 > v5)
  {
    return sub_100006AA8();
  }

  else
  {
    return sub_100007218();
  }
}

uint64_t sub_100028AEC(char a1)
{
  v2 = v1;
  if ((a1 & 1) == 0)
  {
    return sub_100007218();
  }

  v3 = *(v1 + 64);
  swift_getKeyPath();
  sub_100035598(&qword_100083B20, type metadata accessor for RoutingControllerInputPickerViewModel.State, &unk_100061C28);

  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 24);

  v5 = *(v4 + 16);

  v6 = 1;
  if (!*(v2 + 72))
  {
    v6 = 2;
  }

  if (v5 > v6)
  {
    return sub_100006AA8();
  }

  else
  {
    return sub_100007218();
  }
}

uint64_t sub_100028BF0()
{
  v1 = v0;
  v2 = sub_100003B30(&qword_1000838E0, &qword_100061C70);
  __chkstk_darwin(v2 - 8);
  v4 = &v21 - v3;
  if (*(v0 + 105) == 1)
  {
    v5 = sub_100004BCC((v0 + 112), *(v0 + 136));
    v6 = *v5;
    v7 = OBJC_IVAR____TtC19AVKitRoutingService17MicrophoneManager_isDiscovering;
    if ((*(*v5 + OBJC_IVAR____TtC19AVKitRoutingService17MicrophoneManager_isDiscovering) & 1) == 0)
    {
      v8 = type metadata accessor for TaskPriority();
      (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
      type metadata accessor for MainActor();

      v9 = static MainActor.shared.getter();
      v10 = swift_allocObject();
      v10[2] = v9;
      v10[3] = &protocol witness table for MainActor;
      v10[4] = v6;
      sub_100054078(0, 0, v4, &unk_100061EE0, v10);

      *(v6 + v7) = 1;
    }

    v11 = type metadata accessor for TaskPriority();
    (*(*(v11 - 8) + 56))(v4, 1, 1, v11);
    v12 = swift_allocObject();
    swift_weakInit();
    type metadata accessor for MainActor();

    v13 = static MainActor.shared.getter();
    v14 = swift_allocObject();
    v14[2] = v13;
    v14[3] = &protocol witness table for MainActor;
    v14[4] = v12;

    v15 = &unk_100061EF0;
    v16 = v4;
    v17 = v14;
  }

  else
  {
    sub_100007218();
    v18 = type metadata accessor for TaskPriority();
    (*(*(v18 - 8) + 56))(v4, 1, 1, v18);
    type metadata accessor for MainActor();

    v19 = static MainActor.shared.getter();
    v17 = swift_allocObject();
    v17[2] = v19;
    v17[3] = &protocol witness table for MainActor;
    v17[4] = v1;
    v15 = &unk_100061ED8;
    v16 = v4;
  }

  sub_100054078(0, 0, v16, v15, v17);
}

uint64_t sub_100028EDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  type metadata accessor for MainActor();
  v4[6] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[7] = v6;
  v4[8] = v5;

  return _swift_task_switch(sub_100028F74, v6, v5);
}

uint64_t sub_100028F74()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[9] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[10] = v2;
    *v2 = v0;
    v2[1] = sub_100029068;

    return sub_100029334(0);
  }

  else
  {

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_100029068()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 88) = v3;
  *v3 = v2;
  v3[1] = sub_1000291A8;

  return sub_10002A38C();
}

uint64_t sub_1000291A8()
{
  v1 = *v0;

  v2 = *(v1 + 64);
  v3 = *(v1 + 56);

  return _swift_task_switch(sub_1000292C8, v3, v2);
}

uint64_t sub_1000292C8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100029334(char a1)
{
  *(v2 + 96) = v1;
  *(v2 + 65) = a1;
  *(v2 + 104) = type metadata accessor for MainActor();
  *(v2 + 112) = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v2 + 120) = v4;
  *(v2 + 128) = v3;

  return _swift_task_switch(sub_1000293D4, v4, v3);
}

uint64_t sub_1000293D4()
{
  v0[17] = *sub_100004BCC((v0[12] + 112), *(v0[12] + 136));
  v0[18] = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[19] = v2;
  v0[20] = v1;

  return _swift_task_switch(sub_100029474, v2, v1);
}

uint64_t sub_100029474()
{
  v1 = swift_task_alloc();
  *(v0 + 168) = v1;
  *v1 = v0;
  v1[1] = sub_100029508;

  return sub_100015EF4();
}

uint64_t sub_100029508(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 176) = a1;

  v3 = *(v2 + 160);
  v4 = *(v2 + 152);

  return _swift_task_switch(sub_100029630, v4, v3);
}

uint64_t sub_100029630()
{

  v1 = swift_task_alloc();
  *(v0 + 184) = v1;
  *v1 = v0;
  v1[1] = sub_1000296D4;
  v2 = *(v0 + 176);
  v3 = *(v0 + 65);

  return sub_10003156C(v2, v3);
}

uint64_t sub_1000296D4(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 192) = a1;

  v3 = *(v2 + 128);
  v4 = *(v2 + 120);

  return _swift_task_switch(sub_1000297FC, v4, v3);
}

uint64_t sub_1000297FC()
{
  v58 = v0;
  v1 = *(v0 + 192);
  v2 = *(v0 + 96);
  v3 = *(v2 + 64);
  swift_getKeyPath();
  *(v0 + 72) = v3;
  v4 = v0 + 72;
  *(v0 + 200) = sub_100035598(&qword_100083B20, type metadata accessor for RoutingControllerInputPickerViewModel.State, &unk_100061C28);

  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = *(v3 + 24);

  LOBYTE(v1) = sub_1000343D4(v1, v5);

  if (v1)
  {

LABEL_30:
    v53 = *(v0 + 8);

    return v53();
  }

  if (qword_1000831F0 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  *(v0 + 208) = sub_1000080BC(v6, qword_100086758);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = *(v0 + 96);
    v10 = swift_slowAlloc();
    v57[0] = swift_slowAlloc();
    *v10 = 136315394;
    if (*(v9 + 72))
    {
      if (*(v9 + 72) == 1)
      {
        v11 = 0xE600000000000000;
        v12 = 0x7070412D6E49;
      }

      else
      {
        v11 = 0xE800000000000000;
        v12 = 0x73676E6974746553;
      }
    }

    else
    {
      v11 = 0xE200000000000000;
      v12 = 17219;
    }

    v13 = sub_10005305C(v12, v11, v57);

    *(v10 + 4) = v13;
    *(v10 + 12) = 2080;
    v14 = Array.description.getter();
    v16 = sub_10005305C(v14, v15, v57);

    *(v10 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v7, v8, "[ui][%s] got rendering new inputs:%s", v10, 0x16u);
    swift_arrayDestroy();

    v4 = v0 + 72;
  }

  else
  {
  }

  v17 = *(v0 + 192);
  v18 = *(v0 + 176);

  sub_100027C14(v18);

  sub_100027ED4(v17);

  v19 = *(v2 + 64);
  swift_getKeyPath();
  *(v0 + 80) = v19;

  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v20 = *(v19 + 32);
  v21 = *(v19 + 40);
  v22 = *(v19 + 48);
  v23 = *(v19 + 56);
  v24 = v4;
  v25 = *(v19 + 64);
  v26 = *(v19 + 72);
  v27 = *(v19 + 80);
  sub_100034A3C(v20, v21, v22, v23, v25, v26, *(v19 + 80));

  v28 = *(v0 + 192);
  if (v27 == 255)
  {

LABEL_17:
    v31 = *(v0 + 96);
    sub_100028AEC(*(v31 + 104));
    v32 = *(v31 + 16);
    if (v32)
    {
      v33 = *(v31 + 24);
      v34 = *(*(v0 + 96) + 64);
      swift_getKeyPath();
      *(v0 + 88) = v34;
      sub_100034860(v32, v33);

      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v35 = *(v34 + 24);

      v36 = *(v35 + 16);

      v37 = v36 - 1;

      v38 = Logger.logObject.getter();
      v39 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v38, v39))
      {
        v40 = *(v0 + 96);
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        v57[0] = v42;
        *v41 = 136315394;
        if (*(v40 + 72))
        {
          if (*(v40 + 72) == 1)
          {
            v43 = 0xE600000000000000;
            v44 = 0x7070412D6E49;
          }

          else
          {
            v43 = 0xE800000000000000;
            v44 = 0x73676E6974746553;
          }
        }

        else
        {
          v43 = 0xE200000000000000;
          v44 = 17219;
        }

        v52 = sub_10005305C(v44, v43, v57);

        *(v41 + 4) = v52;
        *(v41 + 12) = 2048;
        *(v41 + 14) = v37;
        _os_log_impl(&_mh_execute_header, v38, v39, "[ui][%s] reporting count: %ld", v41, 0x16u);
        sub_100004B28(v42);
      }

      v32(v37);
      sub_10003427C(v32, v33);
    }

    goto LABEL_30;
  }

  *(v0 + 16) = v20;
  *(v0 + 24) = v21;
  *(v0 + 32) = v22;
  *(v0 + 40) = v23;
  *(v0 + 48) = v25;
  *(v0 + 56) = v26;
  *(v0 + 64) = v27 & 1;
  v29 = swift_task_alloc();
  *(v29 + 16) = v24 - 56;
  v30 = sub_100034BE8(sub_100034F40, v29, v28);

  sub_10003421C(v20, v21, v22, v23, v25, v26, v27);

  if (v30)
  {

    goto LABEL_17;
  }

  v45 = Logger.logObject.getter();
  v46 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v45, v46))
  {
    v47 = *(v0 + 96);
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v57[0] = v49;
    *v48 = 136315138;
    if (*(v47 + 72))
    {
      if (*(v47 + 72) == 1)
      {
        v50 = 0xE600000000000000;
        v51 = 0x7070412D6E49;
      }

      else
      {
        v50 = 0xE800000000000000;
        v51 = 0x73676E6974746553;
      }
    }

    else
    {
      v50 = 0xE200000000000000;
      v51 = 17219;
    }

    v55 = sub_10005305C(v51, v50, v57);

    *(v48 + 4) = v55;
    _os_log_impl(&_mh_execute_header, v45, v46, "[ui][%s] current selected option not available in new inputs, updating selection", v48, 0xCu);
    sub_100004B28(v49);
  }

  v56 = swift_task_alloc();
  *(v0 + 216) = v56;
  *v56 = v0;
  v56[1] = sub_10002A014;

  return sub_10002A38C();
}

uint64_t sub_10002A014()
{
  v1 = *v0;

  v2 = *(v1 + 128);
  v3 = *(v1 + 120);

  return _swift_task_switch(sub_10002A134, v3, v2);
}

uint64_t sub_10002A134()
{
  v19 = v0;

  v1 = v0[12];
  sub_100028AEC(*(v1 + 104));
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v1 + 24);
    v4 = *(v0[12] + 64);
    swift_getKeyPath();
    v0[11] = v4;
    sub_100034860(v2, v3);

    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v5 = *(v4 + 24);

    v6 = *(v5 + 16);

    v7 = v6 - 1;

    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = v0[12];
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v18 = v12;
      *v11 = 136315394;
      if (*(v10 + 72))
      {
        if (*(v10 + 72) == 1)
        {
          v13 = 0xE600000000000000;
          v14 = 0x7070412D6E49;
        }

        else
        {
          v13 = 0xE800000000000000;
          v14 = 0x73676E6974746553;
        }
      }

      else
      {
        v13 = 0xE200000000000000;
        v14 = 17219;
      }

      v15 = sub_10005305C(v14, v13, &v18);

      *(v11 + 4) = v15;
      *(v11 + 12) = 2048;
      *(v11 + 14) = v7;
      _os_log_impl(&_mh_execute_header, v8, v9, "[ui][%s] reporting count: %ld", v11, 0x16u);
      sub_100004B28(v12);
    }

    v2(v7);
    sub_10003427C(v2, v3);
  }

  v16 = v0[1];

  return v16();
}

uint64_t sub_10002A38C()
{
  v1[73] = v0;
  v1[74] = type metadata accessor for MainActor();
  v1[75] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[76] = v3;
  v1[77] = v2;

  return _swift_task_switch(sub_10002A42C, v3, v2);
}

uint64_t sub_10002A42C()
{
  v0[78] = *sub_100004BCC((v0[73] + 112), *(v0[73] + 136));
  v0[79] = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[80] = v2;
  v0[81] = v1;

  return _swift_task_switch(sub_10002A4D4, v2, v1);
}

uint64_t sub_10002A4D4()
{
  v1 = swift_task_alloc();
  *(v0 + 656) = v1;
  *v1 = v0;
  v1[1] = sub_10002A570;

  return sub_100011D94(v0 + 384);
}

uint64_t sub_10002A570()
{
  v1 = *v0;

  v2 = *(v1 + 648);
  v3 = *(v1 + 640);

  return _swift_task_switch(sub_10002A690, v3, v2);
}

uint64_t sub_10002A690()
{

  v1 = swift_task_alloc();
  *(v0 + 664) = v1;
  *v1 = v0;
  v1[1] = sub_10002A734;

  return sub_100031974(v0 + 336, (v0 + 384));
}

uint64_t sub_10002A734()
{
  v1 = *v0;

  v2 = *(v1 + 352);
  *(v1 + 672) = *(v1 + 336);
  *(v1 + 688) = v2;
  *(v1 + 704) = *(v1 + 368);
  sub_100008B68(v1 + 384, &qword_100083928, &qword_100061950);
  v3 = *(v1 + 616);
  v4 = *(v1 + 608);

  return _swift_task_switch(sub_10002A880, v4, v3);
}

uint64_t sub_10002A880()
{
  v23 = v0;
  if (v0[43])
  {
    if (qword_1000831F0 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    v0[97] = sub_1000080BC(v1, qword_100086758);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "[ui] Mark >", v4, 2u);
    }

    sub_100008AF8((v0 + 42), (v0 + 54), &qword_100083928, &qword_100061950);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    sub_100008B68((v0 + 42), &qword_100083928, &qword_100061950);
    if (os_log_type_enabled(v5, v6))
    {
      v7 = v0[87];
      v8 = v0[86];
      v9 = v0[85];
      v10 = v0[84];
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v20 = v12;
      v21 = v10;
      *v11 = 136315138;
      v22 = v9;

      v13._countAndFlagsBits = 45;
      v13._object = 0xE100000000000000;
      String.append(_:)(v13);
      v14._countAndFlagsBits = v8;
      v14._object = v7;
      String.append(_:)(v14);
      v15 = sub_10005305C(v21, v9, &v20);

      *(v11 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v5, v6, "[ui:mark] preferredMicrophone: %s", v11, 0xCu);
      sub_100004B28(v12);
    }

    v0[98] = *sub_100004BCC((v0[73] + 112), *(v0[73] + 136));
    v0[99] = static MainActor.shared.getter();
    v17 = dispatch thunk of Actor.unownedExecutor.getter();
    v0[100] = v17;
    v0[101] = v16;

    return _swift_task_switch(sub_10002B1F0, v17, v16);
  }

  else
  {
    v18 = swift_task_alloc();
    v0[90] = v18;
    *v18 = v0;
    v18[1] = sub_10002ABB8;

    return sub_100031ED4((v0 + 16));
  }
}

uint64_t sub_10002ABB8()
{
  v1 = *v0;

  v2 = *(v1 + 144);
  *(v1 + 728) = *(v1 + 128);
  *(v1 + 744) = v2;
  *(v1 + 760) = *(v1 + 160);
  *(v1 + 65) = *(v1 + 176);
  v3 = *(v1 + 616);
  v4 = *(v1 + 608);

  return _swift_task_switch(sub_10002AD04, v4, v3);
}

uint64_t sub_10002AD04()
{
  v52 = v0;

  sub_100008AF8(v0 + 128, v0 + 184, &qword_100083B50, &qword_100061D60);
  v1 = *(v0 + 728);
  *(v0 + 72) = v1;
  v2 = *(v0 + 65);
  v3 = *(v0 + 768);
  v4 = *(v0 + 760);
  v5 = *(v0 + 752);
  v6 = *(v0 + 744);
  v7 = *(v0 + 736);
  *(v0 + 80) = v7;
  *(v0 + 88) = v6;
  *(v0 + 96) = v5;
  *(v0 + 104) = v4;
  *(v0 + 112) = v3;
  *(v0 + 120) = v2;
  if (qword_1000831F0 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_1000080BC(v8, qword_100086758);
  sub_100034A3C(v1, v7, v6, v5, v4, v3, v2);
  v9 = v6;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  v12 = v7;
  v13 = v11;
  v48 = v12;
  v49 = v1;
  v46 = v9;
  v47 = v5;
  sub_10003421C(v1, v12, v9, v5, v4, v3, v2);
  v50 = v2;
  v44 = v4;
  v45 = v3;
  if (os_log_type_enabled(v10, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v51 = v15;
    *v14 = 136315138;
    if (v2 == 255)
    {
      v18 = 0xE300000000000000;
      v16 = 7104878;
    }

    else
    {
      *(v0 + 16) = v49;
      *(v0 + 24) = v48;
      *(v0 + 32) = v9;
      *(v0 + 40) = v47;
      *(v0 + 48) = v4;
      *(v0 + 56) = v3;
      *(v0 + 64) = v2 & 1;
      v16 = sub_10003D868();
      v18 = v17;
    }

    v19 = sub_10005305C(v16, v18, &v51);

    *(v14 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v10, v13, "[ui] updating selected device: %s", v14, 0xCu);
    sub_100004B28(v15);
  }

  v20 = *(*(v0 + 584) + 64);
  swift_getKeyPath();
  *(v0 + 576) = v20;
  sub_100035598(&qword_100083B20, type metadata accessor for RoutingControllerInputPickerViewModel.State, &unk_100061C28);

  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v21 = *(v20 + 32);
  v22 = *(v20 + 40);
  v24 = *(v20 + 48);
  v23 = *(v20 + 56);
  v26 = *(v20 + 64);
  v25 = *(v20 + 72);
  v27 = *(v20 + 80);
  sub_100034A3C(v21, v22, v24, v23, v26, v25, *(v20 + 80));

  v28 = *(v0 + 72);
  v29 = *(v0 + 80);
  v30 = *(v0 + 88);
  v31 = *(v0 + 96);
  v32 = *(v0 + 104);
  v33 = *(v0 + 112);
  v34 = *(v0 + 120);
  if (v50 != 255)
  {
    if (v27 != 255)
    {
      if (v50)
      {
        if (v27)
        {
          goto LABEL_12;
        }
      }

      else if ((v27 & 1) == 0)
      {
LABEL_12:
        if (v49 == v21 && v48 == v22)
        {
          sub_10003421C(v49, v48, v24, v23, v26, v25, v27);
          v35 = v45;
          sub_10003421C(v49, v48, v46, v47, v44, v45, v50);
          v36 = v49;
          v37 = v48;
          v38 = v46;
          v39 = v47;
          v40 = v44;
LABEL_26:
          sub_10003421C(v36, v37, v38, v39, v40, v35, v50);
          goto LABEL_21;
        }

        v43 = _stringCompareWithSmolCheck(_:_:expecting:)();
        sub_10003421C(v21, v22, v24, v23, v26, v25, v27);
        v35 = v45;
        sub_10003421C(v49, v48, v46, v47, v44, v45, v50);
        if (v43)
        {
          v36 = v49;
          v37 = v48;
          v38 = v46;
          v39 = v47;
          v40 = v44;
          goto LABEL_26;
        }

LABEL_20:

        sub_1000281CC(v0 + 72);

        goto LABEL_21;
      }

      v34 = v27;
      v33 = v25;
      v32 = v26;
      v31 = v23;
      v30 = v24;
      v29 = v22;
      v28 = v21;
      LOBYTE(v27) = v50;
      v26 = v44;
      v25 = v45;
      v24 = v46;
      v23 = v47;
      v22 = v48;
      v21 = v49;
    }

LABEL_19:
    sub_10003421C(v28, v29, v30, v31, v32, v33, v34);
    sub_10003421C(v21, v22, v24, v23, v26, v25, v27);
    goto LABEL_20;
  }

  if (v27 != 255)
  {
    goto LABEL_19;
  }

LABEL_21:
  sub_10002EFE4();
  v41 = *(v0 + 8);

  return v41();
}

uint64_t sub_10002B1F0()
{
  v1 = swift_task_alloc();
  *(v0 + 816) = v1;
  *v1 = v0;
  v1[1] = sub_10002B290;

  return sub_100016BFC(v0 + 288, 1);
}

uint64_t sub_10002B290()
{
  v1 = *v0;

  v2 = *(v1 + 808);
  v3 = *(v1 + 800);

  return _swift_task_switch(sub_10002B3B0, v3, v2);
}

uint64_t sub_10002B3B0()
{

  v1 = swift_task_alloc();
  *(v0 + 824) = v1;
  *v1 = v0;
  v1[1] = sub_10002B454;

  return sub_100031974(v0 + 240, (v0 + 288));
}

uint64_t sub_10002B454()
{
  v1 = *v0;

  *(v1 + 832) = *(v1 + 240);
  *(v1 + 848) = *(v1 + 264);
  *(v1 + 856) = *(v1 + 280);
  sub_100008B68(v1 + 288, &qword_100083928, &qword_100061950);
  v2 = *(v1 + 616);
  v3 = *(v1 + 608);

  return _swift_task_switch(sub_10002B5C8, v3, v2);
}

uint64_t sub_10002B5C8()
{
  v71 = v0;
  v1 = v0 + 240;
  v2 = *(v0 + 240);
  v4 = *(v0 + 248);
  v3 = *(v0 + 256);
  v6 = *(v0 + 264);
  v5 = *(v0 + 272);
  v7 = *(v0 + 280);

  if (!v4)
  {
    v7 = *(v0 + 712);
    v6 = *(v0 + 696);
    v4 = *(v0 + 680);

    v8 = *(v0 + 704);
    v3 = *(v0 + 688);
    v2 = *(v0 + 672);
    goto LABEL_9;
  }

  v64 = v3;
  v66 = v5;
  if (*(v0 + 672) == *(v0 + 832) && *(v0 + 680) == *(v0 + 840))
  {
    sub_100008AF8(v0 + 336, v0 + 480, &qword_100083928, &qword_100061950);

    sub_100008B68(v0 + 336, &qword_100083928, &qword_100061950);
  }

  else
  {
    v58 = *(v0 + 680);
    v60 = *(v0 + 696);
    v61 = _stringCompareWithSmolCheck(_:_:expecting:)();
    sub_100008AF8(v0 + 336, v0 + 480, &qword_100083928, &qword_100061950);

    sub_100008B68(v0 + 336, &qword_100083928, &qword_100061950);
    if ((v61 & 1) == 0)
    {
      sub_100008AF8(v0 + 336, v0 + 528, &qword_100083928, &qword_100061950);
      v40 = v4;

      v41 = Logger.logObject.getter();
      v42 = static os_log_type_t.default.getter();
      sub_100008B68(v0 + 336, &qword_100083928, &qword_100061950);

      if (os_log_type_enabled(v41, v42))
      {
        v43 = *(v0 + 688);
        v63 = v42;
        v44 = *(v0 + 672);
        loga = v41;
        v45 = swift_slowAlloc();
        v68 = swift_slowAlloc();
        v69 = v44;
        *v45 = 136315394;
        v70 = v58;

        v46._countAndFlagsBits = 45;
        v46._object = 0xE100000000000000;
        String.append(_:)(v46);
        v47._countAndFlagsBits = v43;
        v47._object = v60;
        String.append(_:)(v47);
        sub_100008B68(v0 + 336, &qword_100083928, &qword_100061950);
        v48 = sub_10005305C(v69, v58, &v68);

        *(v45 + 4) = v48;
        *(v45 + 12) = 2080;
        v69 = v2;
        v70 = v40;
        swift_bridgeObjectRetain_n();

        v49._countAndFlagsBits = 45;
        v49._object = 0xE100000000000000;
        String.append(_:)(v49);
        v50._countAndFlagsBits = v64;
        v50._object = v6;
        String.append(_:)(v50);

        v51 = sub_10005305C(v69, v70, &v68);

        *(v45 + 14) = v51;
        v3 = v64;
        _os_log_impl(&_mh_execute_header, loga, v63, "[ui:mark] trying to render Prefered: %s, butd device is routed to %s", v45, 0x16u);
        swift_arrayDestroy();
      }

      else
      {

        sub_100008B68(v0 + 336, &qword_100083928, &qword_100061950);
      }

      v4 = v40;
      goto LABEL_8;
    }
  }

  sub_100008B68(v0 + 336, &qword_100083928, &qword_100061950);
LABEL_8:

  v8 = v66;
LABEL_9:
  *(v0 + 72) = v2;
  *(v0 + 80) = v4;
  *(v0 + 88) = v3;
  *(v0 + 96) = v6;
  *(v0 + 104) = v8;
  *(v0 + 112) = v7;
  *(v0 + 120) = 0;
  if (qword_1000831F0 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_1000080BC(v9, qword_100086758);
  sub_100034A3C(v2, v4, v3, v6, v8, v7, 0);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  sub_10003421C(v2, v4, v3, v6, v8, v7, 0);
  v57 = v6;
  v59 = v7;
  log = v4;
  v65 = v3;
  v67 = v8;
  v62 = v2;
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = v8;
    v15 = v13;
    v69 = v13;
    *v12 = 136315138;
    *(v0 + 16) = v2;
    *(v0 + 24) = v4;
    *(v0 + 32) = v3;
    *(v0 + 40) = v6;
    *(v0 + 48) = v14;
    *(v0 + 56) = v7;
    *(v0 + 64) = 0;
    v16 = sub_10003D868();
    v18 = sub_10005305C(v16, v17, &v69);

    *(v12 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v10, v11, "[ui] updating selected device: %s", v12, 0xCu);
    sub_100004B28(v15);

    v1 = v0 + 240;
  }

  v19 = *(*(v0 + 584) + 64);
  swift_getKeyPath();
  *(v0 + 576) = v19;
  sub_100035598(&qword_100083B20, type metadata accessor for RoutingControllerInputPickerViewModel.State, &unk_100061C28);

  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v21 = *(v19 + 32);
  v20 = *(v19 + 40);
  v22 = *(v19 + 48);
  v23 = *(v19 + 56);
  v25 = *(v19 + 64);
  v24 = *(v19 + 72);
  v26 = *(v19 + 80);
  sub_100034A3C(v21, v20, v22, v23, v25, v24, *(v19 + 80));

  if (v26 == 255)
  {
    LOBYTE(v26) = *(v0 + 120);
    v29 = *(v0 + 104);
    v28 = *(v0 + 112);
    v31 = *(v0 + 88);
    v30 = *(v0 + 96);
    v27 = -1;
    v33 = *(v0 + 72);
    v32 = *(v0 + 80);
    goto LABEL_17;
  }

  if (v26)
  {
    v27 = 0;
    v28 = v24;
    v29 = v25;
    v30 = v23;
    v31 = v22;
    v32 = v20;
    v33 = v21;
    v23 = v57;
    v24 = v59;
    v22 = v65;
    v25 = v67;
    v20 = log;
    v21 = v62;
LABEL_17:
    sub_10003421C(v33, v32, v31, v30, v29, v28, v26);
    sub_10003421C(v21, v20, v22, v23, v25, v24, v27);
LABEL_18:

    sub_1000281CC(v1 - 168);

    goto LABEL_28;
  }

  if (v62 == v21 && log == v20)
  {
    sub_10003421C(v62, log, v22, v23, v25, v24, v26);
    v34 = v59;
    sub_10003421C(v62, log, v65, v57, v67, v59, 0);
    v35 = v62;
    v36 = log;
    v37 = v65;
    v38 = v57;
    v39 = v67;
  }

  else
  {
    v54 = _stringCompareWithSmolCheck(_:_:expecting:)();
    sub_10003421C(v21, v20, v22, v23, v25, v24, v26);
    v34 = v59;
    sub_10003421C(v62, log, v65, v57, v67, v59, 0);
    if ((v54 & 1) == 0)
    {
      goto LABEL_18;
    }

    v35 = v62;
    v36 = log;
    v37 = v65;
    v38 = v57;
    v39 = v67;
  }

  sub_10003421C(v35, v36, v37, v38, v39, v34, 0);
LABEL_28:
  sub_10002EFE4();
  v52 = *(v0 + 8);

  return v52();
}

uint64_t sub_10002BE54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = type metadata accessor for TaskPriority();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();
  v4[6] = type metadata accessor for MainActor();
  v4[7] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[8] = v7;
  v4[9] = v6;

  return _swift_task_switch(sub_10002BF4C, v7, v6);
}

uint64_t sub_10002BF4C()
{
  v0[10] = *sub_100004BCC((v0[2] + 112), *(v0[2] + 136));
  v0[11] = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[12] = v2;
  v0[13] = v1;

  return _swift_task_switch(sub_10002BFF0, v2, v1);
}

uint64_t sub_10002BFF0()
{
  v1 = v0[10];
  v2 = OBJC_IVAR____TtC19AVKitRoutingService17MicrophoneManager_isDiscovering;
  v0[14] = OBJC_IVAR____TtC19AVKitRoutingService17MicrophoneManager_isDiscovering;
  if (*(v1 + v2) == 1)
  {
    v0[15] = *(v1 + 16);
    v3 = sub_10002C094;
    v4 = 0;
    v5 = 0;
  }

  else
  {

    v4 = v0[8];
    v5 = v0[9];
    v3 = sub_10002C3B0;
  }

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_10002C094()
{
  *(v0 + 128) = swift_allocObject();
  swift_weakInit();
  static TaskPriority.userInitiated.getter();
  v1 = swift_task_alloc();
  *(v0 + 136) = v1;
  *v1 = v0;
  v1[1] = sub_10002C1B8;

  return (sub_100043604)();
}

uint64_t sub_10002C1B8()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 32);
  v3 = *(*v0 + 24);

  (*(v2 + 8))(v1, v3);

  return _swift_task_switch(sub_10002C32C, 0, 0);
}

uint64_t sub_10002C344()
{
  v1 = v0[14];
  v2 = v0[10];

  *(v2 + v1) = 0;
  v3 = v0[8];
  v4 = v0[9];

  return _swift_task_switch(sub_10002C3B0, v3, v4);
}

uint64_t sub_10002C3B0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10002C41C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v6 = sub_100003B30(&qword_100083B60, &qword_100061E18);
  v5[8] = v6;
  v5[9] = *(v6 - 8);
  v5[10] = swift_task_alloc();
  v5[11] = type metadata accessor for MainActor();
  v5[12] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[13] = v8;
  v5[14] = v7;

  return _swift_task_switch(sub_10002C520, v8, v7);
}

uint64_t sub_10002C520()
{
  sub_100003B30(&qword_100083B68, &qword_100061E20);
  AsyncStream.makeAsyncIterator()();
  swift_beginAccess();
  v1 = static MainActor.shared.getter();
  v0[15] = v1;
  v2 = swift_task_alloc();
  v0[16] = v2;
  *v2 = v0;
  v2[1] = sub_10002C61C;
  v3 = v0[8];

  return AsyncStream.Iterator.next(isolation:)(v0 + 5, v1, &protocol witness table for MainActor, v3);
}

uint64_t sub_10002C61C()
{
  v1 = *v0;

  v2 = *(v1 + 112);
  v3 = *(v1 + 104);

  return _swift_task_switch(sub_10002C760, v3, v2);
}

uint64_t sub_10002C760()
{
  if (v0[5] && (, Strong = swift_weakLoadStrong(), (v0[17] = Strong) != 0))
  {
    v2 = swift_task_alloc();
    v0[18] = v2;
    *v2 = v0;
    v2[1] = sub_10002C874;

    return sub_100029334(0);
  }

  else
  {
    (*(v0[9] + 8))(v0[10], v0[8]);

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_10002C874()
{
  v1 = *v0;

  v2 = *(v1 + 112);
  v3 = *(v1 + 104);

  return _swift_task_switch(sub_10002C994, v3, v2);
}

uint64_t sub_10002C994()
{

  v1 = static MainActor.shared.getter();
  v0[15] = v1;
  v2 = swift_task_alloc();
  v0[16] = v2;
  *v2 = v0;
  v2[1] = sub_10002C61C;
  v3 = v0[8];

  return AsyncStream.Iterator.next(isolation:)(v0 + 5, v1, &protocol witness table for MainActor, v3);
}

uint64_t sub_10002CA58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 224) = a6;
  *(v6 + 120) = a4;
  *(v6 + 128) = a5;
  v7 = sub_100003B30(&qword_100083B40, &unk_100061D30);
  *(v6 + 136) = v7;
  *(v6 + 144) = *(v7 - 8);
  *(v6 + 152) = swift_task_alloc();
  *(v6 + 160) = type metadata accessor for MainActor();
  *(v6 + 168) = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v6 + 176) = v9;
  *(v6 + 184) = v8;

  return _swift_task_switch(sub_10002CB60, v9, v8);
}

uint64_t sub_10002CB60()
{
  sub_100003B30(&qword_100083B48, &qword_100061F50);
  AsyncStream.makeAsyncIterator()();
  swift_beginAccess();
  v1 = static MainActor.shared.getter();
  v0[24] = v1;
  v2 = swift_task_alloc();
  v0[25] = v2;
  *v2 = v0;
  v2[1] = sub_10002CC5C;
  v3 = v0[17];

  return AsyncStream.Iterator.next(isolation:)(v0 + 2, v1, &protocol witness table for MainActor, v3);
}

uint64_t sub_10002CC5C()
{
  v1 = *v0;

  v2 = *(v1 + 184);
  v3 = *(v1 + 176);

  return _swift_task_switch(sub_10002CDA0, v3, v2);
}

uint64_t sub_10002CDA0()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  if (v1)
  {
    v4 = *(v0 + 32);
    v3 = *(v0 + 40);
    Strong = swift_weakLoadStrong();
    *(v0 + 208) = Strong;
    if (Strong)
    {
      if (*(Strong + 105))
      {
        if (qword_1000831F0 != -1)
        {
          swift_once();
        }

        v6 = type metadata accessor for Logger();
        sub_1000080BC(v6, qword_100086758);

        v7 = Logger.logObject.getter();
        v8 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v7, v8))
        {
          v36 = v8;
          v37 = v4;
          v38 = v7;
          v9 = *(v0 + 224);
          v10 = swift_slowAlloc();
          *(v0 + 112) = swift_slowAlloc();
          *v10 = 136315394;
          v11 = 0xE600000000000000;
          v12 = 0x7070412D6E49;
          if (v9 != 1)
          {
            v12 = 0x73676E6974746553;
            v11 = 0xE800000000000000;
          }

          if (v9)
          {
            v13 = v12;
          }

          else
          {
            v13 = 17219;
          }

          if (v9)
          {
            v14 = v11;
          }

          else
          {
            v14 = 0xE200000000000000;
          }

          v15 = sub_10005305C(v13, v14, (v0 + 112));

          *(v10 + 4) = v15;
          *(v10 + 12) = 2080;
          *(v0 + 88) = v2;
          *(v0 + 96) = v1;

          v16._countAndFlagsBits = 45;
          v16._object = 0xE100000000000000;
          String.append(_:)(v16);
          v17._countAndFlagsBits = v37;
          v17._object = v3;
          String.append(_:)(v17);

          v18 = sub_10005305C(*(v0 + 88), *(v0 + 96), (v0 + 112));

          *(v10 + 14) = v18;
          _os_log_impl(&_mh_execute_header, v38, v36, "[%s] rendering new picked mic: %s", v10, 0x16u);
          swift_arrayDestroy();
        }

        else
        {
        }

        v35 = swift_task_alloc();
        *(v0 + 216) = v35;
        *v35 = v0;
        v35[1] = sub_10002D360;

        return sub_10002A38C();
      }

      else
      {

        if (qword_1000831F0 != -1)
        {
          swift_once();
        }

        v21 = type metadata accessor for Logger();
        sub_1000080BC(v21, qword_100086758);
        v22 = Logger.logObject.getter();
        v23 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v22, v23))
        {
          v24 = *(v0 + 224);
          v25 = swift_slowAlloc();
          v26 = swift_slowAlloc();
          *(v0 + 104) = v26;
          *v25 = 136315138;
          v27 = 0xE600000000000000;
          v28 = 0x7070412D6E49;
          if (v24 != 1)
          {
            v28 = 0x73676E6974746553;
            v27 = 0xE800000000000000;
          }

          if (v24)
          {
            v29 = v28;
          }

          else
          {
            v29 = 17219;
          }

          if (v24)
          {
            v30 = v27;
          }

          else
          {
            v30 = 0xE200000000000000;
          }

          v31 = sub_10005305C(v29, v30, (v0 + 104));

          *(v25 + 4) = v31;
          _os_log_impl(&_mh_execute_header, v22, v23, "[%s] stop rendering because: discovering: false", v25, 0xCu);
          sub_100004B28(v26);
        }

        v32 = static MainActor.shared.getter();
        *(v0 + 192) = v32;
        v33 = swift_task_alloc();
        *(v0 + 200) = v33;
        *v33 = v0;
        v33[1] = sub_10002CC5C;
        v34 = *(v0 + 136);

        return AsyncStream.Iterator.next(isolation:)(v0 + 16, v32, &protocol witness table for MainActor, v34);
      }
    }

    (*(*(v0 + 144) + 8))(*(v0 + 152), *(v0 + 136));
  }

  else
  {
    (*(*(v0 + 144) + 8))(*(v0 + 152), *(v0 + 136));
  }

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_10002D360()
{
  v1 = *v0;

  v2 = *(v1 + 184);
  v3 = *(v1 + 176);

  return _swift_task_switch(sub_10002D480, v3, v2);
}

uint64_t sub_10002D480()
{

  v1 = static MainActor.shared.getter();
  v0[24] = v1;
  v2 = swift_task_alloc();
  v0[25] = v2;
  *v2 = v0;
  v2[1] = sub_10002CC5C;
  v3 = v0[17];

  return AsyncStream.Iterator.next(isolation:)(v0 + 2, v1, &protocol witness table for MainActor, v3);
}

uint64_t sub_10002D544(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 181) = a6;
  *(v6 + 48) = a4;
  *(v6 + 56) = a5;
  v7 = sub_100003B30(&qword_100083B30, &qword_100061D08);
  *(v6 + 64) = v7;
  *(v6 + 72) = *(v7 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = type metadata accessor for MainActor();
  *(v6 + 96) = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v6 + 104) = v9;
  *(v6 + 112) = v8;

  return _swift_task_switch(sub_10002D64C, v9, v8);
}

uint64_t sub_10002D64C()
{
  sub_100003B30(&qword_100083B38, &qword_100061D10);
  AsyncStream.makeAsyncIterator()();
  swift_beginAccess();
  v1 = static MainActor.shared.getter();
  v0[15] = v1;
  v2 = swift_task_alloc();
  v0[16] = v2;
  *v2 = v0;
  v2[1] = sub_10002D748;
  v3 = v0[8];

  return AsyncStream.Iterator.next(isolation:)(v0 + 22, v1, &protocol witness table for MainActor, v3);
}

uint64_t sub_10002D748()
{
  v1 = *v0;

  v2 = *(v1 + 112);
  v3 = *(v1 + 104);

  return _swift_task_switch(sub_10002D88C, v3, v2);
}

uint64_t sub_10002D88C()
{
  if ((*(v0 + 180) & 1) != 0 || (v1 = *(v0 + 176), Strong = swift_weakLoadStrong(), (*(v0 + 136) = Strong) == 0))
  {
    (*(*(v0 + 72) + 8))(*(v0 + 80), *(v0 + 64));

    v19 = *(v0 + 8);

    return v19();
  }

  else
  {
    v3 = Strong;
    if (qword_1000831F0 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_1000080BC(v4, qword_100086758);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = *(v0 + 181);
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *(v0 + 40) = v9;
      *v8 = 136315394;
      v10 = 0xE600000000000000;
      v11 = 0x7070412D6E49;
      if (v7 != 1)
      {
        v11 = 0x73676E6974746553;
        v10 = 0xE800000000000000;
      }

      if (v7)
      {
        v12 = v11;
      }

      else
      {
        v12 = 17219;
      }

      if (v7)
      {
        v13 = v10;
      }

      else
      {
        v13 = 0xE200000000000000;
      }

      v14 = sub_10005305C(v12, v13, (v0 + 40));

      *(v8 + 4) = v14;
      *(v8 + 12) = 2048;
      *(v8 + 14) = v1;
      _os_log_impl(&_mh_execute_header, v5, v6, "[%s] input gain updated: %f", v8, 0x16u);
      sub_100004B28(v9);
    }

    *(v0 + 144) = *(v3 + 80);
    v15 = swift_allocObject();
    *(v0 + 152) = v15;
    swift_weakInit();
    v16 = swift_allocObject();
    *(v0 + 160) = v16;
    *(v16 + 16) = v15;
    *(v16 + 24) = v1;

    v17 = swift_task_alloc();
    *(v0 + 168) = v17;
    *v17 = v0;
    v17[1] = sub_10002DBC4;

    return sub_100055C14(0xD000000000000017, 0x8000000100068AB0, 100000000000000000, 0, &unk_100061D20, v16);
  }
}

uint64_t sub_10002DBC4()
{
  v1 = *v0;

  v2 = *(v1 + 112);
  v3 = *(v1 + 104);

  return _swift_task_switch(sub_10002DD48, v3, v2);
}

uint64_t sub_10002DD48()
{

  v1 = static MainActor.shared.getter();
  v0[15] = v1;
  v2 = swift_task_alloc();
  v0[16] = v2;
  *v2 = v0;
  v2[1] = sub_10002D748;
  v3 = v0[8];

  return AsyncStream.Iterator.next(isolation:)(v0 + 22, v1, &protocol witness table for MainActor, v3);
}

uint64_t sub_10002DE0C(uint64_t a1, float a2)
{
  *(v2 + 64) = a2;
  *(v2 + 48) = a1;
  type metadata accessor for MainActor();
  *(v2 + 56) = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10002DEA8, v4, v3);
}

uint64_t sub_10002DEA8()
{

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = *(v0 + 64);
    v3 = *(Strong + 64);

    v4 = v2;
    if (*(v3 + 88) == v4)
    {
      *(v3 + 88) = v4;
    }

    else
    {
      swift_getKeyPath();
      v5 = swift_task_alloc();
      *(v5 + 16) = v3;
      *(v5 + 24) = v4;
      *(v0 + 40) = v3;
      sub_100035598(&qword_100083B20, type metadata accessor for RoutingControllerInputPickerViewModel.State, &unk_100061C28);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_10002E034(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  *(v7 + 377) = a7;
  *(v7 + 152) = a5;
  *(v7 + 160) = a6;
  *(v7 + 144) = a4;
  sub_100003B30(&qword_1000838E0, &qword_100061C70);
  *(v7 + 168) = swift_task_alloc();
  *(v7 + 176) = swift_task_alloc();
  v8 = type metadata accessor for TaskPriority();
  *(v7 + 184) = v8;
  *(v7 + 192) = *(v8 - 8);
  *(v7 + 200) = swift_task_alloc();
  v9 = sub_100003B30(&qword_100083B10, &qword_100061C78);
  *(v7 + 208) = v9;
  *(v7 + 216) = *(v9 - 8);
  *(v7 + 224) = swift_task_alloc();
  *(v7 + 232) = type metadata accessor for MainActor();
  *(v7 + 240) = static MainActor.shared.getter();
  v11 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v7 + 248) = v11;
  *(v7 + 256) = v10;

  return _swift_task_switch(sub_10002E1E0, v11, v10);
}

uint64_t sub_10002E1E0()
{
  sub_100003B30(&qword_100083B18, &unk_100061C80);
  AsyncStream.makeAsyncIterator()();
  swift_beginAccess();
  v0[33] = 0;
  v1 = static MainActor.shared.getter();
  v0[34] = v1;
  v2 = swift_task_alloc();
  v0[35] = v2;
  *v2 = v0;
  v2[1] = sub_10002E2E0;
  v3 = v0[26];

  return AsyncStream.Iterator.next(isolation:)(v0 + 47, v1, &protocol witness table for MainActor, v3);
}

uint64_t sub_10002E2E0()
{
  v1 = *v0;

  v2 = *(v1 + 256);
  v3 = *(v1 + 248);

  return _swift_task_switch(sub_10002E424, v3, v2);
}

uint64_t sub_10002E424()
{
  if (*(v0 + 376) == 2 || (Strong = swift_weakLoadStrong(), (*(v0 + 288) = Strong) == 0))
  {
    (*(*(v0 + 216) + 8))(*(v0 + 224), *(v0 + 208));

    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
    v2 = *(v0 + 160);
    *(v0 + 296) = *(Strong + 64);
    *(v0 + 304) = *sub_100004BCC(v2, v2[3]);

    *(v0 + 312) = static MainActor.shared.getter();
    v4 = dispatch thunk of Actor.unownedExecutor.getter();
    *(v0 + 320) = v4;
    *(v0 + 328) = v3;

    return _swift_task_switch(sub_10002E58C, v4, v3);
  }
}

uint64_t sub_10002E5B4()
{
  v1 = swift_allocObject();
  v0[43] = v1;
  swift_weakInit();
  static TaskPriority.userInitiated.getter();
  v2 = swift_task_alloc();
  v0[44] = v2;
  *v2 = v0;
  v2[1] = sub_10002E6D0;
  v3 = v0[25];

  return sub_100045E90(0xD000000000000014, 0x8000000100068A90, v3, &unk_100062C80, v1);
}

uint64_t sub_10002E6D0(char a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *(*v1 + 200);
  v5 = *(*v1 + 192);
  v6 = *(*v1 + 184);
  *(v3 + 378) = a1;

  v7 = *(v5 + 8);
  *(v3 + 360) = v7;
  *(v3 + 368) = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v7(v4, v6);
  v8 = *(v2 + 328);
  v9 = *(v2 + 320);

  return _swift_task_switch(sub_10002E88C, v9, v8);
}

uint64_t sub_10002E88C()
{

  v1 = *(v0 + 248);
  v2 = *(v0 + 256);

  return _swift_task_switch(sub_10002E8F0, v1, v2);
}

uint64_t sub_10002E8F0()
{
  v1 = *(v0 + 378);
  v2 = *(v0 + 296);
  if (v1 == *(v2 + 81))
  {
    *(v2 + 81) = v1;

    v44 = *(v0 + 264);
  }

  else
  {
    v3 = *(v0 + 264);
    swift_getKeyPath();
    v4 = swift_task_alloc();
    *(v4 + 16) = v2;
    *(v4 + 24) = v1;
    *(v0 + 112) = v2;
    sub_100035598(&qword_100083B20, type metadata accessor for RoutingControllerInputPickerViewModel.State, &unk_100061C28);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    v44 = v3;
  }

  if (qword_1000831F0 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_1000080BC(v5, qword_100086758);
  swift_retain_n();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 377);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *(v0 + 128) = v10;
    *v9 = 136315394;
    v11 = 0xE600000000000000;
    v12 = 0x7070412D6E49;
    if (v8 != 1)
    {
      v12 = 0x73676E6974746553;
      v11 = 0xE800000000000000;
    }

    if (v8)
    {
      v13 = v12;
    }

    else
    {
      v13 = 17219;
    }

    if (v8)
    {
      v14 = v11;
    }

    else
    {
      v14 = 0xE200000000000000;
    }

    v15 = *(v0 + 288);
    v16 = sub_10005305C(v13, v14, (v0 + 128));

    *(v9 + 4) = v16;
    *(v9 + 12) = 1024;
    v17 = *(v15 + 64);
    swift_getKeyPath();
    *(v0 + 136) = v17;
    sub_100035598(&qword_100083B20, type metadata accessor for RoutingControllerInputPickerViewModel.State, &unk_100061C28);

    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v18 = *(v17 + 81);

    *(v9 + 14) = v18;

    _os_log_impl(&_mh_execute_header, v6, v7, "[%s] input gain settability updated: %{BOOL}d", v9, 0x12u);
    sub_100004B28(v10);
  }

  else
  {
  }

  v19 = *(v0 + 288);
  v20 = v19[4];
  if (v20)
  {
    v21 = v19[5];
    v22 = v19[8];
    swift_getKeyPath();
    *(v0 + 120) = v22;
    sub_100034860(v20, v21);
    sub_100035598(&qword_100083B20, type metadata accessor for RoutingControllerInputPickerViewModel.State, &unk_100061C28);

    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v23 = *(v22 + 81);

    v20(v23);
    sub_10003427C(v20, v21);
  }

  *(v0 + 40) = &type metadata for FeatureFlags;
  *(v0 + 48) = sub_100034720();
  v24 = isFeatureEnabled(_:)();
  sub_100004B28((v0 + 16));
  if (v24)
  {
    v25 = *(v0 + 184);
    v26 = *(v0 + 192);
    v27 = *(v0 + 168);
    v28 = *(v0 + 176);
    (*(v26 + 56))(v28, 1, 1, v25);
    v29 = swift_allocObject();
    swift_weakInit();

    v30 = static MainActor.shared.getter();
    v31 = swift_allocObject();
    v31[2] = v30;
    v31[3] = &protocol witness table for MainActor;
    v31[4] = v29;

    sub_100008AF8(v28, v27, &qword_1000838E0, &qword_100061C70);
    LODWORD(v30) = (*(v26 + 48))(v27, 1, v25);

    if (v30 == 1)
    {
      sub_100008B68(*(v0 + 168), &qword_1000838E0, &qword_100061C70);
    }

    else
    {
      v32 = *(v0 + 360);
      v33 = *(v0 + 184);
      v34 = *(v0 + 168);
      TaskPriority.rawValue.getter();
      v32(v34, v33);
    }

    v35 = v31[2];
    swift_unknownObjectRetain();

    if (v35)
    {
      swift_getObjectType();
      v36 = dispatch thunk of Actor.unownedExecutor.getter();
      v38 = v37;
      swift_unknownObjectRelease();
    }

    else
    {
      v36 = 0;
      v38 = 0;
    }

    sub_100008B68(*(v0 + 176), &qword_1000838E0, &qword_100061C70);
    v39 = swift_allocObject();
    *(v39 + 16) = &unk_100061CC0;
    *(v39 + 24) = v31;
    if (v38 | v36)
    {
      *(v0 + 56) = 0;
      *(v0 + 64) = 0;
      *(v0 + 72) = v36;
      *(v0 + 80) = v38;
    }

    swift_task_create();
  }

  *(v0 + 264) = v44;
  v40 = static MainActor.shared.getter();
  *(v0 + 272) = v40;
  v41 = swift_task_alloc();
  *(v0 + 280) = v41;
  *v41 = v0;
  v41[1] = sub_10002E2E0;
  v42 = *(v0 + 208);

  return AsyncStream.Iterator.next(isolation:)(v0 + 376, v40, &protocol witness table for MainActor, v42);
}

uint64_t sub_10002EFE4()
{
  v0 = sub_100003B30(&qword_1000838E0, &qword_100061C70);
  __chkstk_darwin(v0 - 8);
  v2 = &v10[-1] - v1;
  v10[3] = &type metadata for FeatureFlags;
  v10[4] = sub_100034720();
  v3 = isFeatureEnabled(_:)();
  result = sub_100004B28(v10);
  if (v3)
  {
    v5 = type metadata accessor for TaskPriority();
    (*(*(v5 - 8) + 56))(v2, 1, 1, v5);
    v6 = swift_allocObject();
    swift_weakInit();
    type metadata accessor for MainActor();

    v7 = static MainActor.shared.getter();
    v8 = swift_allocObject();
    v8[2] = v7;
    v8[3] = &protocol witness table for MainActor;
    v8[4] = v6;

    sub_100054078(0, 0, v2, &unk_100061CF8, v8);
  }

  return result;
}

uint64_t sub_10002F164(double a1)
{
  v2 = v1;
  v4 = sub_100003B30(&qword_1000838E0, &qword_100061C70);
  __chkstk_darwin(v4 - 8);
  v6 = &v20[-1] - v5;
  v20[3] = &type metadata for FeatureFlags;
  v20[4] = sub_100034720();
  v7 = isFeatureEnabled(_:)();
  result = sub_100004B28(v20);
  if (v7)
  {
    v9 = *(v2 + 64);
    swift_getKeyPath();
    v20[0] = v9;
    sub_100035598(&qword_100083B20, type metadata accessor for RoutingControllerInputPickerViewModel.State, &unk_100061C28);

    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v10 = *(v9 + 88);

    if (vabdd_f64(a1, v10) >= 0.01)
    {
      v11 = *(v2 + 64);
      if (*(v11 + 88) == a1)
      {
        *(v11 + 88) = a1;
      }

      else
      {
        KeyPath = swift_getKeyPath();
        __chkstk_darwin(KeyPath);
        *(&v19 - 2) = v11;
        *(&v19 - 1) = a1;
        v20[0] = v11;

        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
      }

      v13 = *(v2 + 64);
      swift_getKeyPath();
      v20[0] = v13;

      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v14 = *(v13 + 81);

      if (v14 == 1)
      {
        v15 = type metadata accessor for TaskPriority();
        (*(*(v15 - 8) + 56))(v6, 1, 1, v15);
        v16 = swift_allocObject();
        swift_weakInit();
        type metadata accessor for MainActor();

        v17 = static MainActor.shared.getter();
        v18 = swift_allocObject();
        *(v18 + 16) = v17;
        *(v18 + 24) = &protocol witness table for MainActor;
        *(v18 + 32) = v16;
        *(v18 + 40) = a1;

        sub_100054078(0, 0, v6, &unk_100061F48, v18);
      }
    }
  }

  return result;
}

uint64_t sub_10002F4B4(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 48) = a1;
  *(v5 + 40) = a5;
  type metadata accessor for MainActor();
  *(v5 + 56) = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v5 + 64) = v7;
  *(v5 + 72) = v6;

  return _swift_task_switch(sub_10002F550, v7, v6);
}

uint64_t sub_10002F550()
{
  v18 = v0;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 10) = Strong;
  if (Strong)
  {
    v2 = Strong;
    if (qword_1000831F0 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_1000080BC(v3, qword_100086758);

    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v17 = v7;
      *v6 = 136315394;
      if (*(v2 + 72))
      {
        if (*(v2 + 72) == 1)
        {
          v8 = 0xE600000000000000;
          v9 = 0x7070412D6E49;
        }

        else
        {
          v8 = 0xE800000000000000;
          v9 = 0x73676E6974746553;
        }
      }

      else
      {
        v8 = 0xE200000000000000;
        v9 = 17219;
      }

      v12 = *(v0 + 6);
      v13 = sub_10005305C(v9, v8, &v17);

      *(v6 + 4) = v13;
      *(v6 + 12) = 2048;
      *(v6 + 14) = v12;
      _os_log_impl(&_mh_execute_header, v4, v5, "[%s] sending new input gain to context: %f", v6, 0x16u);
      sub_100004B28(v7);
    }

    v14 = v0[6];
    sub_100004BCC((v2 + 112), *(v2 + 136));
    v16 = swift_task_alloc();
    *(v0 + 11) = v16;
    *v16 = v0;
    v16[1] = sub_10002F7F4;
    v15 = v14;

    return sub_1000414CC(v15);
  }

  else
  {

    v10 = *(v0 + 1);

    return v10();
  }
}

uint64_t sub_10002F7F4()
{
  v1 = *v0;

  v2 = *(v1 + 72);
  v3 = *(v1 + 64);

  return _swift_task_switch(sub_10002F914, v3, v2);
}

uint64_t sub_10002F914()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10002F980(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a4;
  type metadata accessor for MainActor();
  v4[8] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[9] = v6;
  v4[10] = v5;

  return _swift_task_switch(sub_10002FA18, v6, v5);
}

uint64_t sub_10002FA18()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[11] = Strong;
  if (Strong)
  {
    sub_100004BCC((Strong + 112), *(Strong + 136));
    v2 = swift_task_alloc();
    v0[12] = v2;
    *v2 = v0;
    v2[1] = sub_10002FB14;

    return sub_10004107C();
  }

  else
  {

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_10002FB14(float a1)
{
  v2 = *v1;
  *(*v1 + 120) = a1;

  v3 = *(v2 + 80);
  v4 = *(v2 + 72);

  return _swift_task_switch(sub_10002FC34, v4, v3);
}

uint64_t sub_10002FC34()
{
  v1 = *(*(v0 + 88) + 64);
  v2 = *(v0 + 120);
  if (*(v1 + 88) == v2)
  {
    *(v1 + 88) = v2;
  }

  else
  {
    swift_getKeyPath();
    v3 = swift_task_alloc();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    *(v0 + 40) = v1;
    sub_100035598(&qword_100083B20, type metadata accessor for RoutingControllerInputPickerViewModel.State, &unk_100061C28);

    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  *(v0 + 104) = 0;
  sub_100004BCC((*(v0 + 88) + 112), *(*(v0 + 88) + 136));
  v4 = swift_task_alloc();
  *(v0 + 112) = v4;
  *v4 = v0;
  v4[1] = sub_10002FDE0;

  return sub_100041890();
}

uint64_t sub_10002FDE0(char a1)
{
  v2 = *v1;
  *(*v1 + 124) = a1;

  v3 = *(v2 + 80);
  v4 = *(v2 + 72);

  return _swift_task_switch(sub_10002FF08, v4, v3);
}

uint64_t sub_10002FF08()
{
  v19 = v0;
  v1 = *(v0 + 124);
  v2 = *(*(v0 + 88) + 64);
  if (v1 == *(v2 + 81))
  {

    *(v2 + 81) = v1;
  }

  else
  {
    swift_getKeyPath();
    v3 = swift_task_alloc();
    *(v3 + 16) = v2;
    *(v3 + 24) = v1;
    *(v0 + 48) = v2;
    sub_100035598(&qword_100083B20, type metadata accessor for RoutingControllerInputPickerViewModel.State, &unk_100061C28);

    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  if (qword_1000831F0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000080BC(v4, qword_100086758);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 88);
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v18 = v10;
    *v9 = 136315650;
    if (*(v8 + 72))
    {
      if (*(v8 + 72) == 1)
      {
        v11 = 0xE600000000000000;
        v12 = 0x7070412D6E49;
      }

      else
      {
        v11 = 0xE800000000000000;
        v12 = 0x73676E6974746553;
      }
    }

    else
    {
      v11 = 0xE200000000000000;
      v12 = 17219;
    }

    v13 = *(v0 + 124);
    v14 = *(v0 + 120);
    v15 = sub_10005305C(v12, v11, &v18);

    *(v9 + 4) = v15;
    *(v9 + 12) = 2048;
    *(v9 + 14) = v14;
    *(v9 + 22) = 1024;
    *(v9 + 24) = v13;
    _os_log_impl(&_mh_execute_header, v5, v6, "[%s] got new input gain from context: %f, settability: %{BOOL}d", v9, 0x1Cu);
    sub_100004B28(v10);
  }

  else
  {
  }

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_100030234(__int128 *a1)
{
  v2 = sub_100003B30(&qword_1000838E0, &qword_100061C70);
  result = __chkstk_darwin(v2 - 8);
  v5 = &v17[-v4];
  v6 = *(a1 + 48);
  if (v6 != 255)
  {
    v7 = a1[1];
    v21 = *a1;
    v22 = v7;
    v23 = a1[2];

    sub_100008AF8(a1, &v18, &qword_100083B50, &qword_100061D60);
    sub_1000281CC(a1);

    if (v6)
    {
      v8 = type metadata accessor for TaskPriority();
      (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
      v9 = swift_allocObject();
      swift_weakInit();
      type metadata accessor for MainActor();

      v10 = static MainActor.shared.getter();
      v11 = swift_allocObject();
      v11[2] = v10;
      v11[3] = &protocol witness table for MainActor;
      v11[4] = v9;

      sub_100053D74(0, 0, v5, &unk_100061F10, v11);
    }

    else
    {
      v18 = v21;
      v19 = v22;
      v20 = v23;
      v24 = v21;
      v25 = v22;
      v26 = v23;
      v12 = type metadata accessor for TaskPriority();
      (*(*(v12 - 8) + 56))(v5, 1, 1, v12);
      v13 = swift_allocObject();
      swift_weakInit();
      type metadata accessor for MainActor();
      sub_100025FCC(&v24, v17);
      sub_100025FCC(&v25, v17);
      sub_100025FCC(&v26, v17);

      v14 = static MainActor.shared.getter();
      v15 = swift_allocObject();
      *(v15 + 16) = v14;
      *(v15 + 24) = &protocol witness table for MainActor;
      v16 = v19;
      *(v15 + 32) = v18;
      *(v15 + 48) = v16;
      *(v15 + 64) = v20;
      *(v15 + 80) = v13;

      sub_100054078(0, 0, v5, &unk_100061F00, v15);
    }
  }

  return result;
}

uint64_t sub_10003051C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[14] = a1;
  v4[15] = a4;
  v4[16] = type metadata accessor for MainActor();
  v4[17] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[18] = v6;
  v4[19] = v5;

  return _swift_task_switch(sub_1000305B8, v6, v5);
}

uint64_t sub_1000305B8()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_100026C30(Strong + 112, v0 + 16);

    v2 = sub_100004BCC((v0 + 16), *(v0 + 40));
    swift_beginAccess();
    v3 = swift_weakLoadStrong();
    if (v3 && (v4 = *(v3 + 152), , swift_getKeyPath(), *(v0 + 104) = v4, sub_100035598(&qword_100083460, type metadata accessor for MeterController, &unk_1000610D0), ObservationRegistrar.access<A, B>(_:keyPath:)(), , v5 = *&v4[OBJC_IVAR____TtC19AVKitRoutingService15MeterController__audioSession], , v4, v5))
    {
      v6 = [*(v5 + 16) isActive];
    }

    else
    {
      v6 = 0;
    }

    *(v0 + 200) = v6;
    *(v0 + 160) = *v2;
    *(v0 + 168) = static MainActor.shared.getter();
    v8 = dispatch thunk of Actor.unownedExecutor.getter();
    *(v0 + 176) = v8;
    *(v0 + 184) = v7;

    return _swift_task_switch(sub_1000307D4, v8, v7);
  }

  else
  {
    v9 = *(v0 + 112);

    *v9 = 1;
    v10 = *(v0 + 8);

    return v10();
  }
}

uint64_t sub_1000307D4()
{
  v1 = swift_task_alloc();
  *(v0 + 192) = v1;
  *v1 = v0;
  v1[1] = sub_100030870;
  v2 = *(v0 + 200);

  return sub_100017D50(v2);
}

uint64_t sub_100030870()
{
  v1 = *v0;

  v2 = *(v1 + 184);
  v3 = *(v1 + 176);

  return _swift_task_switch(sub_100030990, v3, v2);
}

uint64_t sub_100030990()
{

  v1 = *(v0 + 144);
  v2 = *(v0 + 152);

  return _swift_task_switch(sub_1000309F4, v1, v2);
}

uint64_t sub_1000309F4()
{
  v1 = v0[14];

  *v1 = 0;
  sub_100004B28(v0 + 2);
  v2 = v0[1];

  return v2();
}

uint64_t sub_100030A64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[24] = a4;
  v5[25] = a5;
  v5[26] = type metadata accessor for MainActor();
  v5[27] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[28] = v7;
  v5[29] = v6;

  return _swift_task_switch(sub_100030B00, v7, v6);
}

uint64_t sub_100030B00()
{
  v25 = v0;
  if (qword_1000831F0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 192);
  v2 = type metadata accessor for Logger();
  sub_1000080BC(v2, qword_100086758);
  *(v0 + 104) = *v1;
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  *(v0 + 120) = *(v1 + 32);
  sub_100025FCC(v0 + 104, v0 + 136);

  sub_100025FCC(v0 + 120, v0 + 152);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  sub_100026028(v0 + 104);

  sub_100026028(v0 + 120);
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v23 = v8;
    *v7 = 136315138;
    v24 = *(v0 + 104);
    sub_100025FCC(v0 + 104, v0 + 168);
    v9._countAndFlagsBits = 45;
    v9._object = 0xE100000000000000;
    String.append(_:)(v9);
    v10._countAndFlagsBits = v3;
    v10._object = v4;
    String.append(_:)(v10);
    v11 = sub_10005305C(v24, *(&v24 + 1), &v23);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v5, v6, "[ui] tap over setMicrophoneIfPossible with: %s", v7, 0xCu);
    sub_100004B28(v8);
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_100026C30(Strong + 112, v0 + 16);

    v13 = sub_100004BCC((v0 + 16), *(v0 + 40));
    swift_beginAccess();
    v14 = swift_weakLoadStrong();
    if (v14 && (v15 = *(v14 + 152), , swift_getKeyPath(), *(v0 + 184) = v15, sub_100035598(&qword_100083460, type metadata accessor for MeterController, &unk_1000610D0), ObservationRegistrar.access<A, B>(_:keyPath:)(), , v16 = *&v15[OBJC_IVAR____TtC19AVKitRoutingService15MeterController__audioSession], , v15, v16))
    {
      v17 = [*(v16 + 16) isActive];
    }

    else
    {
      v17 = 0;
    }

    *(v0 + 312) = v17;
    v18 = *(v0 + 112);
    *(v0 + 240) = *(v0 + 104);
    *(v0 + 248) = v18;
    *(v0 + 256) = *v13;
    *(v0 + 264) = static MainActor.shared.getter();
    v20 = dispatch thunk of Actor.unownedExecutor.getter();
    *(v0 + 272) = v20;
    *(v0 + 280) = v19;

    return _swift_task_switch(sub_100030EBC, v20, v19);
  }

  else
  {

    v21 = *(v0 + 8);

    return v21();
  }
}

uint64_t sub_100030EBC()
{
  v1 = swift_task_alloc();
  v0[36] = v1;
  *v1 = v0;
  v1[1] = sub_100030F6C;
  v3 = v0[30];
  v2 = v0[31];

  return sub_100025A88(v3, v2);
}

uint64_t sub_100030F6C(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 296) = a1;

  v3 = *(v2 + 280);
  v4 = *(v2 + 272);

  return _swift_task_switch(sub_100031094, v4, v3);
}

uint64_t sub_100031094()
{
  v1 = *(v0 + 296);
  if (v1)
  {
    v2 = swift_task_alloc();
    *(v0 + 304) = v2;
    *v2 = v0;
    v2[1] = sub_100031174;
    v3 = *(v0 + 312);

    return sub_100012278(v1, v3);
  }

  else
  {

    v5 = *(v0 + 224);
    v6 = *(v0 + 232);

    return _swift_task_switch(sub_100031300, v5, v6);
  }
}

uint64_t sub_100031174()
{
  v1 = *v0;

  v2 = *(v1 + 280);
  v3 = *(v1 + 272);

  return _swift_task_switch(sub_100031294, v3, v2);
}

uint64_t sub_100031294()
{
  v1 = v0[37];

  v2 = v0[28];
  v3 = v0[29];

  return _swift_task_switch(sub_100031300, v2, v3);
}

uint64_t sub_100031300()
{

  sub_100004B28((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100031368(uint64_t *a1)
{
  v26 = a1[1];
  v27 = *a1;
  v24 = a1[3];
  v25 = a1[2];
  v22 = a1[5];
  v23 = a1[4];
  v3 = *(a1 + 48);
  v4 = *(v1 + 64);
  swift_getKeyPath();
  v28[0] = v4;
  sub_100035598(&qword_100083B20, type metadata accessor for RoutingControllerInputPickerViewModel.State, &unk_100061C28);

  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v6 = *(v4 + 32);
  v5 = *(v4 + 40);
  v8 = *(v4 + 48);
  v7 = *(v4 + 56);
  v10 = *(v4 + 64);
  v9 = *(v4 + 72);
  v11 = *(v4 + 80);
  sub_100034A3C(v6, v5, v8, v7, v10, v9, *(v4 + 80));

  if (v11 == 255)
  {
    sub_1000355E0(a1, v28);
    sub_10003421C(v6, v5, v8, v7, v10, v9, 255);
    v18 = v3 & 1;
    v13 = v26;
    v12 = v27;
    v15 = v24;
    v14 = v25;
    v17 = v22;
    v16 = v23;
    goto LABEL_6;
  }

  if (v11)
  {
    if ((v3 & 1) == 0)
    {
LABEL_4:
      v12 = v6;
      v13 = v5;
      v14 = v8;
      v15 = v7;
      v16 = v10;
      v17 = v9;
      v18 = v11;
LABEL_6:
      sub_10003421C(v12, v13, v14, v15, v16, v17, v18);
      v19 = 0;
      return v19 & 1;
    }
  }

  else if (v3)
  {
    goto LABEL_4;
  }

  if (v6 == v27 && v5 == v26)
  {
    sub_10003421C(v27, v26, v8, v7, v10, v9, v11);
    v19 = 1;
  }

  else
  {
    v19 = _stringCompareWithSmolCheck(_:_:expecting:)();
    sub_10003421C(v6, v5, v8, v7, v10, v9, v11);
  }

  return v19 & 1;
}

uint64_t sub_10003156C(uint64_t a1, uint64_t a2)
{
  v2[8] = a1;
  v2[9] = type metadata accessor for MainActor();
  v2[10] = static MainActor.shared.getter();
  v4 = swift_task_alloc();
  v2[11] = v4;
  *v4 = v2;
  v4[1] = sub_100031634;

  return sub_100032310((v2 + 2), a2);
}

uint64_t sub_100031634()
{
  v1 = *v0;

  *(v1 + 96) = *(v1 + 16);
  *(v1 + 112) = *(v1 + 32);
  *(v1 + 120) = *(v1 + 40);
  *(v1 + 136) = *(v1 + 56);
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000317C0, v3, v2);
}

uint64_t sub_1000317C0()
{

  v1 = sub_100034588(0, 1, 1, _swiftEmptyArrayStorage);
  v3 = *(v1 + 2);
  v2 = *(v1 + 3);
  v4 = v3 + 1;
  if (v3 >= v2 >> 1)
  {
    v1 = sub_100034588((v2 > 1), v3 + 1, 1, v1);
  }

  v6 = *(v0 + 128);
  v5 = *(v0 + 136);
  v8 = *(v0 + 96);
  v7 = *(v0 + 112);
  v9 = *(v0 + 64);
  *(v1 + 2) = v4;
  v10 = &v1[56 * v3];
  *(v10 + 2) = v8;
  *(v10 + 3) = v7;
  *(v10 + 8) = v6;
  *(v10 + 9) = v5;
  v10[80] = 1;
  v11 = *(v9 + 16);
  v22 = v0;
  if (v11)
  {
    v12 = 56 * v3 + 136;
    v13 = (*(v0 + 64) + 72);
    do
    {
      v14 = *(v13 - 4);
      v15 = *(v13 - 2);
      v24 = *(v13 - 3);
      v25 = *(v13 - 5);
      v16 = *v13;
      v23 = *(v13 - 1);
      v17 = v1;
      v18 = *(v1 + 3);

      if (v4 >= v18 >> 1)
      {
        v1 = sub_100034588((v18 > 1), v4 + 1, 1, v17);
      }

      else
      {
        v1 = v17;
      }

      v13 += 6;
      *(v1 + 2) = v4 + 1;
      v19 = &v1[v12];
      *(v19 - 6) = v25;
      *(v19 - 5) = v14;
      *(v19 - 4) = v24;
      *(v19 - 3) = v15;
      *(v19 - 2) = v23;
      *(v19 - 1) = v16;
      v12 += 56;
      ++v4;
      *v19 = 0;
      --v11;
    }

    while (v11);
  }

  v20 = *(v22 + 8);

  return v20(v1);
}

uint64_t sub_100031974(uint64_t a1, _OWORD *a2)
{
  *(v3 + 72) = a2;
  *(v3 + 80) = v2;
  *(v3 + 64) = a1;
  v4 = a2[1];
  *(v3 + 88) = *a2;
  *(v3 + 104) = v4;
  *(v3 + 120) = a2[2];
  *(v3 + 136) = type metadata accessor for MainActor();
  *(v3 + 144) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v3 + 152) = v6;
  *(v3 + 160) = v5;

  return _swift_task_switch(sub_100031A28, v6, v5);
}

uint64_t sub_100031A28()
{
  v1 = *(v0 + 72);
  *(v0 + 168) = *v1;
  v2 = v1[1];
  *(v0 + 176) = v2;
  *(v0 + 184) = v1[2];
  *(v0 + 192) = v1[3];
  *(v0 + 200) = v1[4];
  *(v0 + 208) = v1[5];
  if (v2)
  {
    *(v0 + 216) = *sub_100004BCC((*(v0 + 80) + 112), *(*(v0 + 80) + 136));

    *(v0 + 224) = static MainActor.shared.getter();
    v4 = dispatch thunk of Actor.unownedExecutor.getter();
    *(v0 + 232) = v4;
    *(v0 + 240) = v3;

    return _swift_task_switch(sub_100031B80, v4, v3);
  }

  else
  {

    v5 = *(v0 + 64);
    v6 = *(v0 + 104);
    v7 = *(v0 + 120);
    *v5 = *(v0 + 88);
    v5[1] = v6;
    v5[2] = v7;
    v8 = *(v0 + 8);

    return v8();
  }
}

uint64_t sub_100031B80()
{
  v1 = swift_task_alloc();
  *(v0 + 248) = v1;
  *v1 = v0;
  v1[1] = sub_100031C14;

  return sub_100015EF4();
}

uint64_t sub_100031C14(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 256) = a1;

  v3 = *(v2 + 240);
  v4 = *(v2 + 232);

  return _swift_task_switch(sub_100031D3C, v4, v3);
}

uint64_t sub_100031D3C()
{

  v1 = *(v0 + 152);
  v2 = *(v0 + 160);

  return _swift_task_switch(sub_100031DA0, v1, v2);
}

uint64_t sub_100031DA0()
{
  v1 = *(v0 + 256);
  v3 = *(v0 + 200);
  v2 = *(v0 + 208);
  v13 = *(v0 + 168);
  v14 = *(v0 + 184);

  *(v0 + 16) = v13;
  *(v0 + 32) = v14;
  *(v0 + 48) = v3;
  *(v0 + 56) = v2;
  v4 = swift_task_alloc();
  *(v4 + 16) = v0 + 16;
  LOBYTE(v3) = sub_100034B04(sub_10003579C, v4, v1);

  v5 = *(v0 + 208);
  v6 = *(v0 + 192);
  if (v3)
  {
    v7 = *(v0 + 200);
    v8 = *(v0 + 184);
    v9 = *(v0 + 168);
  }

  else
  {

    v8 = 0;
    v6 = 0;
    v7 = 0;
    v5 = 0;
    v9 = 0uLL;
  }

  v10 = *(v0 + 64);
  *v10 = v9;
  *(v10 + 16) = v8;
  *(v10 + 24) = v6;
  *(v10 + 32) = v7;
  *(v10 + 40) = v5;
  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_100031ED4(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v2[5] = type metadata accessor for MainActor();
  v2[6] = static MainActor.shared.getter();
  v3 = swift_task_alloc();
  v2[7] = v3;
  *v3 = v2;
  v3[1] = sub_100031F88;

  return sub_100029334(1);
}

uint64_t sub_100031F88()
{

  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000320C4, v1, v0);
}

uint64_t sub_1000320C4()
{
  v1 = v0;
  v2 = *(v0 + 32);

  v3 = *(v2 + 64);
  swift_getKeyPath();
  v20 = v1;
  *(v1 + 16) = v3;
  sub_100035598(&qword_100083B20, type metadata accessor for RoutingControllerInputPickerViewModel.State, &unk_100061C28);

  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 24);

  v19 = *(v4 + 16);
  if (v19)
  {
    v6 = 0;
    v7 = (v4 + 80);
    v18 = v4;
    while (v6 < *(v4 + 16))
    {
      v8 = *(v7 - 4);
      v9 = *(v7 - 3);
      v10 = *(v7 - 2);
      v11 = *(v7 - 1);
      v12 = *v7;
      v21 = *(v7 - 5);
      v22 = *(v7 - 6);
      sub_100034A54(v22, v21, v8, v9, v10, v11);
      static MainActor.shared.getter();
      dispatch thunk of Actor.unownedExecutor.getter();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      if (v12)
      {
        v15 = 1;
        v14 = v21;
        v13 = v22;
        goto LABEL_10;
      }

      ++v6;
      result = sub_100034234(v22, v21, v8, v9, v10, v11);
      v7 += 56;
      v4 = v18;
      if (v19 == v6)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_8:
    v13 = 0;
    v14 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v15 = -1;
LABEL_10:

    v16 = *(v20 + 24);
    *v16 = v13;
    *(v16 + 8) = v14;
    *(v16 + 16) = v8;
    *(v16 + 24) = v9;
    *(v16 + 32) = v10;
    *(v16 + 40) = v11;
    *(v16 + 48) = v15;
    v17 = *(v20 + 8);

    return v17();
  }

  return result;
}

uint64_t sub_100032310(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v3[14] = a1;
  v3[15] = v2;
  v5 = type metadata accessor for TaskPriority();
  v3[16] = v5;
  v3[17] = *(v5 - 8);
  v3[18] = swift_task_alloc();
  v3[19] = type metadata accessor for MainActor();
  v3[20] = static MainActor.shared.getter();
  v6 = swift_task_alloc();
  v3[21] = v6;
  *v6 = v3;
  v6[1] = sub_100032434;

  return sub_100032D64((v3 + 8), v4);
}

uint64_t sub_100032434()
{
  v1 = *v0;

  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v1 + 176) = v3;
  *(v1 + 184) = v2;

  return _swift_task_switch(sub_100032578, v3, v2);
}

uint64_t sub_100032578()
{
  v1 = *(v0 + 72);
  if (v1)
  {
    v3 = *(v0 + 96);
    v2 = *(v0 + 104);
    v10 = *(v0 + 80);
    v4 = *(v0 + 64);

    v5 = *(v0 + 112);

    *v5 = v4;
    *(v5 + 8) = v1;
    *(v5 + 16) = v10;
    *(v5 + 32) = v3;
    *(v5 + 40) = v2;
    v6 = *(v0 + 8);

    return v6();
  }

  else
  {
    *(v0 + 192) = *sub_100004BCC((*(v0 + 120) + 112), *(*(v0 + 120) + 136));
    *(v0 + 200) = static MainActor.shared.getter();
    v9 = dispatch thunk of Actor.unownedExecutor.getter();
    *(v0 + 208) = v9;
    *(v0 + 216) = v8;

    return _swift_task_switch(sub_1000326A0, v9, v8);
  }
}

uint64_t sub_1000326C8()
{
  v1 = *(*(v0 + 224) + 104);
  *(v0 + 232) = v1;
  return _swift_task_switch(sub_1000326EC, v1, 0);
}

uint64_t sub_1000326EC()
{
  v1 = v0[29];
  v2 = v1[14];
  v0[30] = v2;
  v3 = v1[15];
  v0[31] = v3;
  v4 = v1[16];
  v0[32] = v4;
  v5 = v1[17];
  v0[33] = v5;
  v6 = v1[18];
  v0[34] = v6;
  v7 = v1[19];
  v0[35] = v7;
  sub_100025418(v2, v3, v4, v5, v6, v7);

  return _swift_task_switch(sub_100032784, 0, 0);
}

uint64_t sub_100032784()
{
  v1 = *(v0 + 248);
  if (v1)
  {
    v2 = *(v0 + 280);
    v3 = *(v0 + 256);
    v4 = *(v0 + 240);
    *(v0 + 336) = *(v0 + 272);
    *(v0 + 344) = v2;
    *(v0 + 320) = v3;
    *(v0 + 304) = v4;
    *(v0 + 312) = v1;
    v5 = *(v0 + 208);
    v6 = *(v0 + 216);

    return _swift_task_switch(sub_100032AE4, v5, v6);
  }

  else
  {
    v7 = swift_allocObject();
    *(v0 + 288) = v7;
    swift_weakInit();
    static TaskPriority.userInitiated.getter();
    v8 = swift_task_alloc();
    *(v0 + 296) = v8;
    *v8 = v0;
    v8[1] = sub_10003290C;
    v9 = *(v0 + 144);

    return sub_10004464C(v0 + 16, 0x6B6361626C6C6166, 0xEF29286574756F52, v9, &unk_100061708, v7);
  }
}

uint64_t sub_10003290C()
{
  v1 = *v0;
  v2 = *(*v0 + 144);
  v3 = *(*v0 + 136);
  v4 = *(*v0 + 128);

  (*(v3 + 8))(v2, v4);
  v5 = *(v1 + 56);
  v7 = *(v1 + 16);
  v6 = *(v1 + 32);
  *(v1 + 336) = *(v1 + 48);
  *(v1 + 344) = v5;
  *(v1 + 304) = v7;
  *(v1 + 320) = v6;
  v8 = *(v1 + 216);
  v9 = *(v1 + 208);

  return _swift_task_switch(sub_100032AE4, v9, v8);
}

uint64_t sub_100032AE4()
{

  v1 = *(v0 + 176);
  v2 = *(v0 + 184);

  return _swift_task_switch(sub_100032B48, v1, v2);
}

uint64_t sub_100032B48()
{
  v23 = v0;

  if (qword_1000831F0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000080BC(v1, qword_100086758);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[40];
    v4 = v0[41];
    v7 = v0[38];
    v6 = v0[39];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v20 = v9;
    v21 = v7;
    *v8 = 136315138;
    v22 = v6;

    v10._countAndFlagsBits = 45;
    v10._object = 0xE100000000000000;
    String.append(_:)(v10);
    v11._countAndFlagsBits = v5;
    v11._object = v4;
    String.append(_:)(v11);
    v12 = sub_10005305C(v21, v6, &v20);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v2, v3, "[ui:mark] fallbackMicrophone: %s", v8, 0xCu);
    sub_100004B28(v9);
  }

  v13 = v0[42];
  v14 = v0[43];
  v18 = *(v0 + 19);
  v19 = *(v0 + 20);
  v15 = v0[14];

  *v15 = v18;
  *(v15 + 16) = v19;
  *(v15 + 32) = v13;
  *(v15 + 40) = v14;
  v16 = v0[1];

  return v16();
}

uint64_t sub_100032D64(uint64_t a1, char a2)
{
  *(v3 + 568) = a2;
  *(v3 + 304) = a1;
  *(v3 + 312) = v2;
  *(v3 + 320) = type metadata accessor for MainActor();
  *(v3 + 328) = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v3 + 336) = v5;
  *(v3 + 344) = v4;

  return _swift_task_switch(sub_100032E04, v5, v4);
}

uint64_t sub_100032E04()
{
  v1 = *(v0 + 568);
  *(v0 + 352) = *sub_100004BCC((*(v0 + 312) + 112), *(*(v0 + 312) + 136));
  *(v0 + 360) = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v0 + 368) = v3;
  *(v0 + 376) = v2;
  if (v1 == 1)
  {
    v4 = sub_100032EC8;
  }

  else
  {
    v4 = sub_10003374C;
  }

  return _swift_task_switch(v4, v3, v2);
}

uint64_t sub_100032EC8()
{
  v1 = swift_task_alloc();
  *(v0 + 384) = v1;
  *v1 = v0;
  v1[1] = sub_100032F64;

  return sub_1000172A0(v0 + 112);
}

uint64_t sub_100032F64()
{
  v1 = *v0;

  v2 = *(v1 + 128);
  *(v1 + 392) = *(v1 + 112);
  *(v1 + 408) = v2;
  v3 = *(v1 + 376);
  v4 = *(v1 + 368);

  return _swift_task_switch(sub_10003309C, v4, v3);
}

uint64_t sub_10003309C()
{

  v1 = *(v0 + 336);
  v2 = *(v0 + 344);

  return _swift_task_switch(sub_100033100, v1, v2);
}

uint64_t sub_100033100()
{
  v0[53] = *sub_100004BCC((v0[39] + 112), *(v0[39] + 136));
  v0[54] = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[55] = v2;
  v0[56] = v1;

  return _swift_task_switch(sub_1000331A0, v2, v1);
}

uint64_t sub_1000331A0()
{
  v1 = swift_task_alloc();
  *(v0 + 456) = v1;
  *v1 = v0;
  v1[1] = sub_100033240;

  return sub_100016BFC(v0 + 64, 1);
}

uint64_t sub_100033240()
{
  v1 = *v0;

  v2 = *(v1 + 80);
  *(v1 + 464) = *(v1 + 64);
  *(v1 + 480) = v2;
  *(v1 + 496) = *(v1 + 96);
  v3 = *(v1 + 448);
  v4 = *(v1 + 440);

  return _swift_task_switch(sub_100033374, v4, v3);
}

uint64_t sub_100033374()
{

  v1 = *(v0 + 336);
  v2 = *(v0 + 344);

  return _swift_task_switch(sub_1000333D8, v1, v2);
}

uint64_t sub_1000333D8()
{
  v33 = v0;

  if (qword_1000831F0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000080BC(v1, qword_100086758);

  sub_100008AF8(v0 + 112, v0 + 208, &qword_100083928, &qword_100061950);
  sub_100008AF8(v0 + 64, v0 + 256, &qword_100083928, &qword_100061950);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  sub_100008B68(v0 + 112, &qword_100083928, &qword_100061950);
  sub_100008B68(v0 + 64, &qword_100083928, &qword_100061950);
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 312);
    v5 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v5 = 136315650;
    if (*(v4 + 72))
    {
      if (*(v4 + 72) == 1)
      {
        v6 = 0xE600000000000000;
        v7 = 0x7070412D6E49;
      }

      else
      {
        v6 = 0xE800000000000000;
        v7 = 0x73676E6974746553;
      }
    }

    else
    {
      v6 = 0xE200000000000000;
      v7 = 17219;
    }

    v8 = 7104878;
    v9 = sub_10005305C(v7, v6, &v30);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2080;
    if (*(v0 + 120))
    {
      v11 = *(v0 + 408);
      v10 = *(v0 + 416);
      v12 = *(v0 + 400);
      v31 = *(v0 + 392);
      v32 = v12;

      v13._countAndFlagsBits = 45;
      v13._object = 0xE100000000000000;
      String.append(_:)(v13);
      v14._countAndFlagsBits = v11;
      v14._object = v10;
      String.append(_:)(v14);
      sub_100008B68(v0 + 112, &qword_100083928, &qword_100061950);
      v15 = v31;
      v16 = v32;
    }

    else
    {
      v16 = 0xE300000000000000;
      v15 = 7104878;
    }

    v17 = sub_10005305C(v15, v16, &v30);

    *(v5 + 14) = v17;
    *(v5 + 22) = 2080;
    if (*(v0 + 72))
    {
      v19 = *(v0 + 480);
      v18 = *(v0 + 488);
      v20 = *(v0 + 472);
      v31 = *(v0 + 464);
      v32 = v20;

      v21._countAndFlagsBits = 45;
      v21._object = 0xE100000000000000;
      String.append(_:)(v21);
      v22._countAndFlagsBits = v19;
      v22._object = v18;
      String.append(_:)(v22);
      v8 = v31;
      v23 = v32;
    }

    else
    {
      v23 = 0xE300000000000000;
    }

    v24 = sub_10005305C(v8, v23, &v30);

    *(v5 + 24) = v24;
    _os_log_impl(&_mh_execute_header, v2, v3, "[%s] system preferred: %s, device routed %s", v5, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    sub_100008B68(v0 + 112, &qword_100083928, &qword_100061950);
  }

  v25 = *(v0 + 304);
  v26 = *(v0 + 480);
  v27 = *(v0 + 496);
  *v25 = *(v0 + 464);
  v25[1] = v26;
  v25[2] = v27;
  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_10003374C()
{
  v1 = swift_task_alloc();
  *(v0 + 512) = v1;
  *v1 = v0;
  v1[1] = sub_1000337E0;

  return sub_100015EF4();
}

uint64_t sub_1000337E0(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 520) = a1;

  v3 = *(v2 + 376);
  v4 = *(v2 + 368);

  return _swift_task_switch(sub_100033908, v4, v3);
}

uint64_t sub_100033908()
{

  v1 = *(v0 + 336);
  v2 = *(v0 + 344);

  return _swift_task_switch(sub_10003396C, v1, v2);
}

uint64_t sub_10003396C()
{
  v0[66] = *sub_100004BCC((v0[39] + 112), *(v0[39] + 136));
  v0[67] = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[68] = v2;
  v0[69] = v1;

  return _swift_task_switch(sub_100033A10, v2, v1);
}

uint64_t sub_100033A10()
{
  v1 = swift_task_alloc();
  *(v0 + 560) = v1;
  *v1 = v0;
  v1[1] = sub_100033AAC;

  return sub_1000172A0(v0 + 16);
}

uint64_t sub_100033AAC()
{
  v1 = *v0;

  v2 = *(v1 + 552);
  v3 = *(v1 + 544);

  return _swift_task_switch(sub_100033BCC, v3, v2);
}

uint64_t sub_100033BCC()
{

  v1 = *(v0 + 336);
  v2 = *(v0 + 344);

  return _swift_task_switch(sub_100033C30, v1, v2);
}

uint64_t sub_100033C30()
{
  v31 = v0;

  v2 = v0[2];
  v1 = v0[3];
  if (!v1)
  {

    v2 = 0;
LABEL_11:
    v4 = 0;
    v3 = 0;
    v18 = 0;
    v5 = 0;
    goto LABEL_16;
  }

  v4 = v0[4];
  v3 = v0[5];
  v6 = v0[6];
  v5 = v0[7];
  v0[20] = v2;
  v7 = v0[65];
  v0[21] = v1;
  v0[22] = v4;
  v0[23] = v3;
  v0[24] = v6;
  v0[25] = v5;
  v8 = swift_task_alloc();
  *(v8 + 16) = v0 + 20;
  v9 = sub_100034B04(sub_100034FEC, v8, v7);

  if ((v9 & 1) == 0)
  {

    v2 = 0;
    v1 = 0;
    goto LABEL_11;
  }

  v27 = v6;
  if (qword_1000831F0 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_1000080BC(v10, qword_100086758);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v26 = v12;
    v13 = v0[39];
    v14 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v14 = 136315394;
    v15 = v4;
    if (*(v13 + 72))
    {
      if (*(v13 + 72) == 1)
      {
        v16 = 0xE600000000000000;
        v17 = 0x7070412D6E49;
      }

      else
      {
        v16 = 0xE800000000000000;
        v17 = 0x73676E6974746553;
      }
    }

    else
    {
      v16 = 0xE200000000000000;
      v17 = 17219;
    }

    v19 = sub_10005305C(v17, v16, &v28);

    *(v14 + 4) = v19;
    *(v14 + 12) = 2080;
    v29 = v2;
    v30 = v1;

    v20._countAndFlagsBits = 45;
    v20._object = 0xE100000000000000;
    String.append(_:)(v20);
    v21._countAndFlagsBits = v15;
    v21._object = v3;
    String.append(_:)(v21);
    v22 = sub_10005305C(v29, v30, &v28);

    *(v14 + 14) = v22;
    v4 = v15;
    _os_log_impl(&_mh_execute_header, v11, v26, "[ui][%s] systemPreferredMicrophone :%s", v14, 0x16u);
    swift_arrayDestroy();
  }

  v18 = v27;
LABEL_16:
  v23 = v0[38];
  *v23 = v2;
  v23[1] = v1;
  v23[2] = v4;
  v23[3] = v3;
  v23[4] = v18;
  v23[5] = v5;
  v24 = v0[1];

  return v24();
}

uint64_t sub_100033F8C()
{
  v1 = v0;
  if (qword_1000831F0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000080BC(v2, qword_100086758);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "[deinit] RoutingControllerInputPickerViewModel deinit", v5, 2u);
  }

  sub_10003427C(*(v1 + 16), *(v1 + 24));
  sub_10003427C(*(v1 + 32), *(v1 + 40));

  sub_100004B28((v1 + 112));

  return v1;
}

uint64_t sub_1000340AC()
{
  sub_100033F8C();

  return _swift_deallocClassInstance(v0, 160, 7);
}

uint64_t type metadata accessor for RoutingControllerInputPickerViewModel.State(uint64_t a1)
{
  result = qword_100083A60;
  if (!qword_100083A60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100034158(uint64_t a1)
{
  result = type metadata accessor for ObservationRegistrar();
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

uint64_t sub_10003421C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a7 != -1)
  {
    return sub_100034234(result, a2, a3, a4, a5, a6);
  }

  return result;
}

uint64_t sub_100034234(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
}

uint64_t sub_10003427C(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

BOOL sub_10003428C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    else
    {
      v3 = (a1 + 32);
      v4 = (a2 + 32);
      do
      {
        v6 = *v3++;
        v5 = v6;
        v7 = *v4++;
        sub_100003B78(v5);
        sub_100003B78(v7);
        v8 = sub_10002769C(v5, v7);
        sub_100003C9C(v7);
        sub_100003C9C(v5);
        if (!v8)
        {
          break;
        }

        --v2;
      }

      while (v2);
    }
  }

  else
  {
    return 0;
  }

  return v8;
}

uint64_t sub_100034344(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 6)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v3 += 6;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_1000343D4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = a2 + 40;
    for (i = a1 + 40; ; i += 56)
    {
      if (*(i + 40))
      {
        if ((*(v3 + 40) & 1) == 0)
        {
          return 0;
        }
      }

      else if (*(v3 + 40))
      {
        return 0;
      }

      v5 = *(i - 8) == *(v3 - 8) && *i == *v3;
      if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v3 += 56;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

char *sub_10003447C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003B30(&qword_100083368, "\b:");
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100034588(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003B30(&qword_100083B58, &qword_100061DF8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1000346AC()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_100034720()
{
  result = qword_100083B28;
  if (!qword_100083B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100083B28);
  }

  return result;
}

uint64_t sub_100034774(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100027414;

  return sub_10002F980(a1, v4, v5, v6);
}

uint64_t sub_100034828()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100034860(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

double sub_10003489C()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 88) = result;
  return result;
}

uint64_t sub_1000348AC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100027414;

  return sub_10002F980(a1, v4, v5, v6);
}

uint64_t sub_100034960()
{

  return _swift_deallocObject(v0, 28, 7);
}

uint64_t sub_100034998()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100027414;

  return sub_10002DE0C(v2, v3);
}

uint64_t sub_100034A3C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a7 != -1)
  {
    return sub_100034A54(result, a2, a3, a4, a5, a6);
  }

  return result;
}

uint64_t sub_100034A54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
}

uint64_t sub_100034AA0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v4[0] = *a1;
  v4[1] = v1;
  v4[2] = *(a1 + 32);
  v5 = *(a1 + 48);
  sub_100008AF8(v4, v3, &qword_100083B50, &qword_100061D60);
  return sub_1000281CC(v4);
}

uint64_t sub_100034B04(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 72);
    do
    {
      v8 = *(v7 - 1);
      v9 = *v7;
      v10 = *(v7 - 3);
      v11 = *(v7 - 2);
      v12 = *(v7 - 4);
      v16[0] = *(v7 - 5);
      v16[1] = v12;
      v16[2] = v10;
      v16[3] = v11;
      v16[4] = v8;
      v16[5] = v9;

      v13 = a1(v16);

      if (v3)
      {
        break;
      }

      v7 += 6;
      v14 = v6-- == 0;
    }

    while (((v13 | v14) & 1) == 0);
  }

  else
  {
    LOBYTE(v13) = 0;
  }

  return v13 & 1;
}

uint64_t sub_100034BE8(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if (v3)
  {
    v4 = v3 - 1;
    v5 = (a3 + 80);
    do
    {
      v6 = *(v5 - 6);
      v7 = *(v5 - 5);
      v8 = *(v5 - 4);
      v9 = *(v5 - 3);
      v10 = *(v5 - 2);
      v17 = *(v5 - 1);
      v18[0] = v6;
      v16 = *v5;
      v18[1] = v7;
      v18[2] = v8;
      v18[3] = v9;
      v18[4] = v10;
      v18[5] = v17;
      v19 = v16;
      sub_100034A54(v6, v7, v8, v9, v10, v17);
      v11 = v20;
      v12 = a1(v18);
      sub_100034234(v6, v7, v8, v9, v10, v17);
      v20 = v11;
      if (v11)
      {
        break;
      }

      v13 = v4-- == 0;
      v5 += 56;
    }

    while (((v12 | v13) & 1) == 0);
  }

  else
  {
    LOBYTE(v12) = 0;
  }

  return v12 & 1;
}

uint64_t sub_100034CF0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  if (a1[6])
  {
    if ((a2[6] & 1) == 0)
    {
      return 0;
    }
  }

  else if (a2[6])
  {
    return 0;
  }

  if (v3 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

BOOL sub_100034D6C(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 48);
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = *(a2 + 48);
  v9 = *(a1 + 16);
  v10 = *(a1 + 24);
  v12 = *(a1 + 32);
  v11 = *(a1 + 40);
  v13 = *(a2 + 16);
  if (v5 == 255)
  {
    if (v8 == 255)
    {
      goto LABEL_14;
    }
  }

  else if (v8 != 255)
  {
    if (v5)
    {
      if (v8)
      {
        if (v3 != v6 || v4 != v7)
        {
LABEL_15:
          v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
          return (v14 & 1) == 0;
        }

        goto LABEL_14;
      }

      goto LABEL_11;
    }

    if (v8)
    {
LABEL_11:
      v14 = 0;
      return (v14 & 1) == 0;
    }

    if (v3 != v6 || v4 != v7)
    {
      goto LABEL_15;
    }

LABEL_14:
    v14 = 1;
    return (v14 & 1) == 0;
  }

  v16 = *a2;
  v17 = *(a2 + 8);
  v18 = *(a2 + 24);
  v19 = *(a2 + 32);
  v20 = *(a2 + 40);
  sub_100008AF8(a1, v21, &qword_100083B50, &qword_100061D60);
  sub_100008AF8(a2, v21, &qword_100083B50, &qword_100061D60);
  sub_10003421C(v3, v4, v9, v10, v12, v11, v5);
  sub_10003421C(v16, v17, v13, v18, v19, v20, v8);
  v14 = 0;
  return (v14 & 1) == 0;
}

uint64_t sub_100034F04()
{
  *(*(v0 + 16) + 24) = *(v0 + 24);
}

uint64_t sub_100034FB0()
{
  *(*(v0 + 16) + 16) = *(v0 + 24);
}

uint64_t sub_100035008(uint64_t *a1)
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

uint64_t getEnumTagSinglePayload for FeatureFlags(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for FeatureFlags(_WORD *result, int a2, int a3)
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

unint64_t sub_10003514C()
{
  result = qword_100083B70;
  if (!qword_100083B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100083B70);
  }

  return result;
}

uint64_t sub_1000351A0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100027414;

  return sub_10002BE54(a1, v4, v5, v6);
}

uint64_t sub_100035254(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100027414;

  return sub_100041CE0(a1, v4, v5, v6);
}

uint64_t sub_100035310(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100027414;

  return sub_100028EDC(a1, v4, v5, v6);
}

uint64_t sub_1000353C4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_10003541C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[10];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100027414;

  return sub_100030A64(a1, v4, v5, (v1 + 4), v6);
}

uint64_t sub_1000354DC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100014310;

  return sub_10003051C(a1, v4, v5, v6);
}

uint64_t sub_100035598(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100035644(uint64_t a1)
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v1, a1, 7);
}

uint64_t sub_100035690(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = *(v1 + 4);
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100027414;

  return sub_10002F4B4(v7, a1, v4, v5, v6);
}

uint64_t sub_1000357B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = static HorizontalAlignment.leading.getter();
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *&v16[0] = a1;
  *(&v16[0] + 1) = a2;
  sub_100003B30(&qword_100083B78, &qword_100062038);
  State.wrappedValue.getter();
  sub_100034860(a3, a4);
  sub_10004BDA0(v14, a3, a4, v16);

  *&v15[39] = v16[2];
  *&v15[55] = v16[3];
  *&v15[71] = v16[4];
  *&v15[87] = v17;
  *&v15[7] = v16[0];
  *&v15[23] = v16[1];
  v11 = swift_allocObject();
  v11[2] = a1;
  v11[3] = a2;
  v11[4] = a3;
  v11[5] = a4;
  v12 = swift_allocObject();
  *(a5 + 49) = *&v15[32];
  *(a5 + 65) = *&v15[48];
  *(a5 + 81) = *&v15[64];
  *(a5 + 96) = *&v15[79];
  *(a5 + 17) = *v15;
  v12[2] = a1;
  v12[3] = a2;
  v12[4] = a3;
  v12[5] = a4;
  *a5 = v10;
  *(a5 + 8) = 0;
  *(a5 + 16) = 1;
  *(a5 + 33) = *&v15[16];
  *(a5 + 112) = sub_1000370E0;
  *(a5 + 120) = v11;
  *(a5 + 128) = 0u;
  *(a5 + 144) = 0u;
  *(a5 + 160) = sub_100037158;
  *(a5 + 168) = v12;
  sub_100034860(a3, a4);

  sub_100034860(a3, a4);
}

uint64_t sub_1000359E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_100003B30(&qword_100083B78, &qword_100062038);
  State.wrappedValue.getter();
  *(v8 + 105) = a6;
  sub_100028BF0();

  State.wrappedValue.getter();
  *(v8 + 104) = a6;
  sub_1000289E0();
}

uint64_t sub_100035B00(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *, uint64_t, uint64_t, uint64_t), uint64_t a5, int a6, uint64_t a7)
{
  v8 = a6;
  v107 = a6;
  v105 = a2;
  v106 = a4;
  v104 = a3;
  v96 = sub_100003B30(&qword_100083B18, &unk_100061C80);
  v95 = *(v96 - 8);
  v11 = __chkstk_darwin(v96);
  v94 = &v86 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = v12;
  __chkstk_darwin(v11);
  v92 = &v86 - v13;
  v91 = sub_100003B30(&qword_100083B38, &qword_100061D10);
  v90 = *(v91 - 8);
  v14 = __chkstk_darwin(v91);
  v89 = &v86 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = v15;
  __chkstk_darwin(v14);
  v87 = &v86 - v16;
  v102 = sub_100003B30(&qword_100083B48, &qword_100061F50);
  v100 = *(v102 - 8);
  v103 = *(v100 + 64);
  v17 = __chkstk_darwin(v102);
  v101 = &v86 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v99 = &v86 - v19;
  v98 = sub_100003B30(&qword_100083B68, &qword_100061E20);
  v20 = *(v98 - 8);
  v21 = *(v20 + 64);
  v22 = __chkstk_darwin(v98);
  v97 = &v86 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v86 - v23;
  v25 = sub_100003B30(&qword_1000838E0, &qword_100061C70);
  __chkstk_darwin(v25 - 8);
  v27 = &v86 - v26;
  v108 = &v86 - v26;
  v113 = type metadata accessor for MicrophoneManager(0);
  v114 = &off_10007AE10;
  v112[0] = a1;
  type metadata accessor for RoutingControllerInputPickerViewModel.State(0);
  *(a7 + 16) = 0u;
  *(a7 + 32) = 0u;
  v28 = swift_allocObject();
  *(v28 + 16) = _swiftEmptyArrayStorage;
  *(v28 + 24) = _swiftEmptyArrayStorage;
  *(v28 + 32) = 0u;
  *(v28 + 48) = 0u;
  *(v28 + 64) = 0u;
  *(v28 + 80) = 255;
  *(v28 + 88) = 0x3FF0000000000000;
  ObservationRegistrar.init()();
  *(a7 + 64) = v28;
  type metadata accessor for AVInputPickerTaskRegistry();
  v29 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v29 + 112) = sub_100053868(_swiftEmptyArrayStorage);
  *(a7 + 80) = v29;
  *(a7 + 104) = 0;
  *(a7 + 152) = [objc_allocWithZone(type metadata accessor for MeterController(0)) init];
  v30 = v105;
  *(a7 + 48) = v106;
  *(a7 + 56) = a5;
  v31 = v104;
  *(a7 + 88) = v30;
  *(a7 + 96) = v31;
  sub_100026C30(v112, a7 + 112);
  *(a7 + 72) = v8;
  v32 = type metadata accessor for TaskPriority();
  v33 = *(v32 - 8);
  v34 = *(v33 + 56);
  v105 = v33 + 56;
  v106 = v34;
  v34(v27, 1, 1, v32);
  v35 = sub_100004BCC(v112, v113);
  v36 = v20;
  v37 = *(v20 + 16);
  v38 = v98;
  v37(v24, *v35 + OBJC_IVAR____TtC19AVKitRoutingService17MicrophoneManager_availableMicrophonesStream, v98);
  v39 = swift_allocObject();
  swift_weakInit();
  v40 = v38;
  v37(&v86 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), v24, v38);
  type metadata accessor for MainActor();

  v41 = static MainActor.shared.getter();
  v42 = v36;
  (*(v36 + 8))(v24, v40);
  v43 = (*(v36 + 80) + 32) & ~*(v36 + 80);
  v44 = swift_allocObject();
  *(v44 + 16) = v41;
  *(v44 + 24) = &protocol witness table for MainActor;
  (*(v42 + 32))(v44 + v43, v97, v40);
  *(v44 + ((v21 + v43 + 7) & 0xFFFFFFFFFFFFFFF8)) = v39;

  v45 = v108;
  sub_100054078(0, 0, v108, &unk_100061F58, v44);

  v104 = v32;
  v106(v45, 1, 1, v32);
  v46 = a7;
  v47 = sub_100004BCC(v112, v113);
  v49 = v99;
  v48 = v100;
  v50 = *(v100 + 16);
  v51 = v102;
  v50(v99, *v47 + OBJC_IVAR____TtC19AVKitRoutingService17MicrophoneManager_selectedMicrophoneStream, v102);
  v52 = swift_allocObject();
  swift_weakInit();
  v53 = v101;
  v50(v101, v49, v51);

  v54 = static MainActor.shared.getter();
  (*(v48 + 8))(v49, v51);
  v55 = (*(v48 + 80) + 32) & ~*(v48 + 80);
  v56 = (v103 + v55 + 7) & 0xFFFFFFFFFFFFFFF8;
  v57 = swift_allocObject();
  *(v57 + 16) = v54;
  *(v57 + 24) = &protocol witness table for MainActor;
  (*(v48 + 32))(v57 + v55, v53, v51);
  v58 = v57 + v56;
  *v58 = v52;
  *(v58 + 8) = v107;

  v59 = v108;
  sub_100054078(0, 0, v108, &unk_100061F60, v57);

  v110 = &type metadata for FeatureFlags;
  v111 = sub_100034720();
  LOBYTE(v52) = isFeatureEnabled(_:)();
  sub_100004B28(&v109);
  if (v52)
  {
    v103 = v46;
    v106(v59, 1, 1, v104);
    v60 = sub_100004BCC(v112, v113);
    v61 = v90;
    v62 = *(v90 + 16);
    v63 = v87;
    v64 = v91;
    v62(v87, *v60 + OBJC_IVAR____TtC19AVKitRoutingService17MicrophoneManager_inputGainStream, v91);
    v65 = swift_allocObject();
    swift_weakInit();
    v66 = v89;
    v62(v89, v63, v64);

    v67 = static MainActor.shared.getter();
    (*(v61 + 8))(v63, v64);
    v68 = (*(v61 + 80) + 32) & ~*(v61 + 80);
    v69 = (v88 + v68 + 7) & 0xFFFFFFFFFFFFFFF8;
    v70 = swift_allocObject();
    *(v70 + 16) = v67;
    *(v70 + 24) = &protocol witness table for MainActor;
    (*(v61 + 32))(v70 + v68, v66, v64);
    v71 = v70 + v69;
    *v71 = v65;
    *(v71 + 8) = v107;

    v72 = v108;
    sub_100054078(0, 0, v108, &unk_100061F68, v70);

    v106(v72, 1, 1, v104);
    v46 = v103;
    v73 = sub_100004BCC(v112, v113);
    v74 = v95;
    v75 = *(v95 + 16);
    v76 = v92;
    v77 = v96;
    v75(v92, *v73 + OBJC_IVAR____TtC19AVKitRoutingService17MicrophoneManager_canSetInputGainStream, v96);
    v78 = swift_allocObject();
    swift_weakInit();

    v79 = v94;
    v75(v94, v76, v77);
    sub_100026C30(v112, &v109);

    v80 = static MainActor.shared.getter();
    (*(v74 + 8))(v76, v77);
    v81 = (*(v74 + 80) + 32) & ~*(v74 + 80);
    v82 = (v93 + v81 + 7) & 0xFFFFFFFFFFFFFFF8;
    v83 = (v82 + 15) & 0xFFFFFFFFFFFFFFF8;
    v84 = swift_allocObject();
    *(v84 + 16) = v80;
    *(v84 + 24) = &protocol witness table for MainActor;
    (*(v74 + 32))(v84 + v81, v79, v77);
    *(v84 + v82) = v78;
    sub_100026B0C(&v109, v84 + v83);
    *(v84 + v83 + 40) = v107;

    sub_100054078(0, 0, v108, &unk_100061F70, v84);
  }

  sub_100004B28(v112);
  return v46;
}

uint64_t sub_100036628(uint64_t a1, uint64_t a2, void (*a3)(char *, uint64_t, uint64_t, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v19[1] = a6;
  v10 = type metadata accessor for MicrophoneManager(0);
  swift_allocObject();

  v20[3] = v10;
  v20[4] = &off_10007AE10;
  v20[0] = sub_10003FAC4(a1, a2, 1);
  type metadata accessor for RoutingControllerInputPickerViewModel();
  v11 = swift_allocObject();
  v12 = sub_100026B24(v20, v10);
  __chkstk_darwin(v12);
  v14 = (v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v15 + 16))(v14);
  v16 = *v14;

  v17 = sub_100035B00(v16, a1, a2, a3, a4, 1, v11);
  sub_100004B28(v20);
  v19[2] = v17;

  State.init(wrappedValue:)();

  return v20[0];
}

uint64_t sub_1000367EC()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100036824()
{
  v1 = sub_100003B30(&qword_100083B68, &qword_100061E20);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_100036908(uint64_t a1)
{
  v4 = *(sub_100003B30(&qword_100083B68, &qword_100061E20) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100027414;

  return sub_10002C41C(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_100036A48(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_100003B30(&qword_100083B48, &qword_100061F50) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
  v10 = *v9;
  v11 = *(v9 + 8);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_100014310;

  return sub_10002CA58(a1, v7, v8, v1 + v6, v10, v11);
}

uint64_t sub_100036BA0(uint64_t *a1, uint64_t *a2)
{
  v3 = sub_100003B30(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 32) & ~v5;
  v7 = (*(v4 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v4 + 8))(v2 + v6, v3);

  return _swift_deallocObject(v2, v7 + 9, v5 | 7);
}

uint64_t sub_100036C74(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_100003B30(&qword_100083B38, &qword_100061D10) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
  v10 = *v9;
  v11 = *(v9 + 8);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_100027414;

  return sub_10002D544(a1, v7, v8, v1 + v6, v10, v11);
}

uint64_t sub_100036DB8()
{
  v1 = sub_100003B30(&qword_100083B18, &unk_100061C80);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  sub_100004B28((v0 + v5));

  return _swift_deallocObject(v0, v5 + 41, v3 | 7);
}

uint64_t sub_100036EB4(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_100003B30(&qword_100083B18, &unk_100061C80) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  v10 = *(v1 + v7);
  v11 = v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8);
  v12 = *(v11 + 40);
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_100027414;

  return sub_10002E034(a1, v8, v9, v1 + v6, v10, v11, v12);
}

uint64_t sub_100037004(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_10003701C(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_100037028(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_100037070(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100037108()
{

  if (*(v0 + 32))
  {
  }

  return _swift_deallocObject(v0, 48, 7);
}

unint64_t sub_100037184()
{
  result = qword_100083B80;
  if (!qword_100083B80)
  {
    sub_100008218(&qword_100083B88, &qword_100062040);
    sub_100037260(&qword_100083B90, &qword_100083B98, &qword_100062048, sub_100037230);
    sub_100037330();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100083B80);
  }

  return result;
}

uint64_t sub_100037260(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100008218(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000372D8()
{
  result = qword_100083BB0;
  if (!qword_100083BB0)
  {
    sub_100008218(&qword_100083BB8, &qword_100062058);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100083BB0);
  }

  return result;
}

unint64_t sub_100037330()
{
  result = qword_100083BC0;
  if (!qword_100083BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100083BC0);
  }

  return result;
}

uint64_t sub_100037388(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1000373D0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for InputPickerContext(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for InputPickerContext(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_100037598@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_1000375A4(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

Swift::Int sub_1000375D4()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100037658(uint64_t a1)
{
  String.hash(into:)();
  String.hash(into:)();

  return String.hash(into:)();
}

Swift::Int sub_1000376C4(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

unint64_t sub_100037744(void *a1)
{
  v2 = sub_100003B30(&qword_100083BD8, &qword_100062240);
  __chkstk_darwin(v2 - 8);
  v4 = &v29 - v3;
  v5 = sub_100003B30(&qword_100083BE0, &qword_100062248);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v29 - v7;
  v9 = sub_100003B30(&qword_100083BE8, &qword_100062250);
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v29 - v14;
  v16 = [a1 modelID];
  if (!v16)
  {
    goto LABEL_4;
  }

  v30 = v8;
  v32 = v5;
  v33 = v6;
  v17 = v16;
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  sub_100003B30(&qword_100083BF0, &qword_100062258);
  Regex.init(_regexString:version:)();
  String.subscript.getter();

  sub_1000391A8();
  v31 = v15;
  dispatch thunk of RegexComponent.regex.getter();
  Regex.firstMatch(in:)();
  v18 = *(v10 + 8);
  v18(v13, v9);

  v20 = v32;
  v19 = v33;
  if ((*(v33 + 48))(v4, 1, v32) == 1)
  {
    v18(v31, v9);
    sub_10003920C(v4);
LABEL_4:
    v21 = 0;
    LOBYTE(v22) = 1;
    return v21 | ((v22 & 1) << 32);
  }

  (*(v19 + 32))(v30, v4, v20);
  swift_getKeyPath();
  Regex.Match.subscript.getter();

  v24 = v34;
  v25 = v35;
  v26 = v37;
  if (!((v35 ^ v34) >> 14))
  {
    (*(v33 + 8))(v30, v20);
    v18(v31, v9);

    goto LABEL_4;
  }

  v27 = v36;
  v28 = sub_100038830(v34, v35, v36, v37, 10);
  if ((v28 & 0x10000000000) != 0)
  {
    v28 = sub_100037E34(v24, v25, v27, v26, 10);
  }

  (*(v33 + 8))(v30, v20);
  v18(v31, v9);

  v22 = (v28 & &_mh_execute_header) >> 32;
  v21 = v28;
  if ((v28 & &_mh_execute_header) != 0)
  {
    v21 = 0;
  }

  return v21 | ((v22 & 1) << 32);
}

uint64_t sub_100037C00()
{
  v1 = v0[2];
  v2 = v0[3];
  v6 = *v0;

  v3._countAndFlagsBits = 45;
  v3._object = 0xE100000000000000;
  String.append(_:)(v3);
  v4._countAndFlagsBits = v1;
  v4._object = v2;
  String.append(_:)(v4);
  return v6;
}

Swift::Int sub_100037C74()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_100037CE8(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

uint64_t sub_100037D2C()
{
  v1 = 0x7070412D6E49;
  if (*v0 != 1)
  {
    v1 = 0x73676E6974746553;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 17219;
  }
}

unint64_t sub_100037D7C()
{
  result = qword_100083BC8;
  if (!qword_100083BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100083BC8);
  }

  return result;
}

unint64_t sub_100037DD4()
{
  result = qword_100083BD0;
  if (!qword_100083BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100083BD0);
  }

  return result;
}

unsigned __int8 *sub_100037E34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v72 = a1;
  v73 = a2;
  v74 = a3;
  v75 = a4;
  sub_100039274();

  result = String.init<A>(_:)();
  v8 = result;
  if ((v7 & 0x1000000000000000) != 0)
  {
    v8 = sub_1000383BC(result, v7);
    v42 = v41;

    v7 = v42;
    if ((v42 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v7 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v8 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v9 = v8 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v9 = v71;
    }

    v10 = *result;
    if (v10 == 43)
    {
      if (v9 >= 1)
      {
        v24 = v9 - 1;
        if (v24)
        {
          v25 = a5 + 48;
          v26 = a5 + 55;
          v27 = a5 + 87;
          if (a5 > 10)
          {
            v25 = 58;
          }

          else
          {
            v27 = 97;
            v26 = 65;
          }

          if (result)
          {
            v15 = 0;
            v28 = result + 1;
            v17 = 1;
            do
            {
              v29 = *v28;
              if (v29 < 0x30 || v29 >= v25)
              {
                if (v29 < 0x41 || v29 >= v26)
                {
                  v20 = 0;
                  if (v29 < 0x61 || v29 >= v27)
                  {
                    goto LABEL_129;
                  }

                  v30 = -87;
                }

                else
                {
                  v30 = -55;
                }
              }

              else
              {
                v30 = -48;
              }

              v31 = v15 * a5;
              if ((v31 & 0xFFFFFFFF00000000) != 0)
              {
                goto LABEL_128;
              }

              v32 = v29 + v30;
              v23 = __CFADD__(v31, v32);
              v15 = v31 + v32;
              if (v23)
              {
                goto LABEL_128;
              }

              ++v28;
              --v24;
            }

            while (v24);
LABEL_47:
            v17 = 0;
            v20 = v15;
            goto LABEL_129;
          }

          goto LABEL_67;
        }

LABEL_128:
        v20 = 0;
        v17 = 1;
        goto LABEL_129;
      }

      goto LABEL_133;
    }

    if (v10 != 45)
    {
      if (v9)
      {
        v33 = a5 + 48;
        v34 = a5 + 55;
        v35 = a5 + 87;
        if (a5 > 10)
        {
          v33 = 58;
        }

        else
        {
          v35 = 97;
          v34 = 65;
        }

        if (result)
        {
          v36 = 0;
          v17 = 1;
          do
          {
            v37 = *result;
            if (v37 < 0x30 || v37 >= v33)
            {
              if (v37 < 0x41 || v37 >= v34)
              {
                v20 = 0;
                if (v37 < 0x61 || v37 >= v35)
                {
                  goto LABEL_129;
                }

                v38 = -87;
              }

              else
              {
                v38 = -55;
              }
            }

            else
            {
              v38 = -48;
            }

            v39 = v36 * a5;
            if ((v39 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_128;
            }

            v40 = v37 + v38;
            v23 = __CFADD__(v39, v40);
            v36 = v39 + v40;
            if (v23)
            {
              goto LABEL_128;
            }

            ++result;
            --v9;
          }

          while (v9);
          v17 = 0;
          v20 = v36;
          goto LABEL_129;
        }

        goto LABEL_67;
      }

      goto LABEL_128;
    }

    if (v9 >= 1)
    {
      v11 = v9 - 1;
      if (v11)
      {
        v12 = a5 + 48;
        v13 = a5 + 55;
        v14 = a5 + 87;
        if (a5 > 10)
        {
          v12 = 58;
        }

        else
        {
          v14 = 97;
          v13 = 65;
        }

        if (result)
        {
          v15 = 0;
          v16 = result + 1;
          v17 = 1;
          while (1)
          {
            v18 = *v16;
            if (v18 < 0x30 || v18 >= v12)
            {
              if (v18 < 0x41 || v18 >= v13)
              {
                v20 = 0;
                if (v18 < 0x61 || v18 >= v14)
                {
                  goto LABEL_129;
                }

                v19 = -87;
              }

              else
              {
                v19 = -55;
              }
            }

            else
            {
              v19 = -48;
            }

            v21 = v15 * a5;
            if ((v21 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_128;
            }

            v22 = v18 + v19;
            v23 = v21 >= v22;
            v15 = v21 - v22;
            if (!v23)
            {
              goto LABEL_128;
            }

            ++v16;
            if (!--v11)
            {
              goto LABEL_47;
            }
          }
        }

LABEL_67:
        v20 = 0;
        v17 = 0;
LABEL_129:

        LOBYTE(v72) = v17;
        return (v20 | (v17 << 32));
      }

      goto LABEL_128;
    }

    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v43 = HIBYTE(v7) & 0xF;
  v72 = v8;
  v73 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v8 != 43)
  {
    if (v8 != 45)
    {
      if (v43)
      {
        v45 = 0;
        v63 = a5 + 48;
        v64 = a5 + 55;
        v65 = a5 + 87;
        if (a5 > 10)
        {
          v63 = 58;
        }

        else
        {
          v65 = 97;
          v64 = 65;
        }

        v66 = &v72;
        v17 = 1;
        while (1)
        {
          v67 = *v66;
          if (v67 < 0x30 || v67 >= v63)
          {
            if (v67 < 0x41 || v67 >= v64)
            {
              v20 = 0;
              if (v67 < 0x61 || v67 >= v65)
              {
                goto LABEL_129;
              }

              v68 = -87;
            }

            else
            {
              v68 = -55;
            }
          }

          else
          {
            v68 = -48;
          }

          v69 = v45 * a5;
          if ((v69 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_128;
          }

          v70 = v67 + v68;
          v23 = __CFADD__(v69, v70);
          v45 = v69 + v70;
          if (v23)
          {
            goto LABEL_128;
          }

          v66 = (v66 + 1);
          if (!--v43)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    if (v43)
    {
      v44 = v43 - 1;
      if (v44)
      {
        v45 = 0;
        v46 = a5 + 48;
        v47 = a5 + 55;
        v48 = a5 + 87;
        if (a5 > 10)
        {
          v46 = 58;
        }

        else
        {
          v48 = 97;
          v47 = 65;
        }

        v49 = &v72 + 1;
        v17 = 1;
        while (1)
        {
          v50 = *v49;
          if (v50 < 0x30 || v50 >= v46)
          {
            if (v50 < 0x41 || v50 >= v47)
            {
              v20 = 0;
              if (v50 < 0x61 || v50 >= v48)
              {
                goto LABEL_129;
              }

              v51 = -87;
            }

            else
            {
              v51 = -55;
            }
          }

          else
          {
            v51 = -48;
          }

          v52 = v45 * a5;
          if ((v52 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_128;
          }

          v53 = v50 + v51;
          v23 = v52 >= v53;
          v45 = v52 - v53;
          if (!v23)
          {
            goto LABEL_128;
          }

          ++v49;
          if (!--v44)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    goto LABEL_132;
  }

  if (v43)
  {
    v54 = v43 - 1;
    if (v54)
    {
      v45 = 0;
      v55 = a5 + 48;
      v56 = a5 + 55;
      v57 = a5 + 87;
      if (a5 > 10)
      {
        v55 = 58;
      }

      else
      {
        v57 = 97;
        v56 = 65;
      }

      v58 = &v72 + 1;
      v17 = 1;
      do
      {
        v59 = *v58;
        if (v59 < 0x30 || v59 >= v55)
        {
          if (v59 < 0x41 || v59 >= v56)
          {
            v20 = 0;
            if (v59 < 0x61 || v59 >= v57)
            {
              goto LABEL_129;
            }

            v60 = -87;
          }

          else
          {
            v60 = -55;
          }
        }

        else
        {
          v60 = -48;
        }

        v61 = v45 * a5;
        if ((v61 & 0xFFFFFFFF00000000) != 0)
        {
          goto LABEL_128;
        }

        v62 = v59 + v60;
        v23 = __CFADD__(v61, v62);
        v45 = v61 + v62;
        if (v23)
        {
          goto LABEL_128;
        }

        ++v58;
        --v54;
      }

      while (v54);
LABEL_127:
      v17 = 0;
      v20 = v45;
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_134:
  __break(1u);
  return result;
}

uint64_t sub_1000383BC(uint64_t a1, unint64_t a2)
{
  v2 = String.subscript.getter();
  v6 = sub_10003843C(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_10003843C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = Substring.UTF8View.distance(from:to:)();
    if (!v9 || (v10 = v9, v11 = sub_10005349C(v9, 0), v12 = sub_100038594(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = static String._uncheckedFromUTF8(_:)();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return static String._uncheckedFromUTF8(_:)();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  _StringObject.sharedUTF8.getter();
LABEL_4:

  return static String._uncheckedFromUTF8(_:)();
}

unint64_t sub_100038594(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_1000387B4(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = String.UTF8View._foreignSubscript(position:)();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = _StringObject.sharedUTF8.getter();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_1000387B4(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = String.UTF8View._foreignIndex(after:)();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

unint64_t sub_1000387B4(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = String.UTF16View.index(_:offsetBy:)();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = String.UTF8View._foreignIndex(_:offsetBy:)();
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_100038830(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v13 = 0;
    return v13 | (((a4 >> 60) & 1) << 40);
  }

  if ((a4 & 0x2000000000000000) != 0)
  {
    v14[0] = a3;
    v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
    v11 = v14;
  }

  else if ((a3 & 0x1000000000000000) != 0)
  {
    v11 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v11 = _StringObject.sharedUTF8.getter();
  }

  result = sub_100038AD0(v11, a1, a2, a3, a4, a5);
  if (!v5)
  {
    v15 = BYTE4(result) & 1;
    v13 = result | ((BYTE4(result) & 1) << 32);
    return v13 | (((a4 >> 60) & 1) << 40);
  }

  return result;
}