uint64_t sub_100A39434()
{
  v2 = *v1;
  *(*v1 + 336) = v0;

  v3 = *(v2 + 288);
  v4 = *(v2 + 280);
  if (v0)
  {
    v5 = sub_100A39F34;
  }

  else
  {
    v5 = sub_100A39570;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100A39570()
{
  v19 = v0;

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v4 = v0[37];
    v3 = v0[38];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v18 = v6;
    *v5 = 136446210;
    *(v5 + 4) = sub_100010678(v4, v3, &v18);
    _os_log_impl(&_mh_execute_header, v1, v2, "✅ Successfully added intent with ID=%{public}s", v5, 0xCu);
    sub_10000959C(v6);
  }

  v7 = v0[28];
  v8 = v0[15];
  _s9MusicCore9AppReviewO16recordSongPlayedyyFZ_0();
  v9 = *(v8 + *(v7 + 36));
  v10 = v0[28];
  v11 = v0[15];
  if (v9 == 1)
  {
    v12 = *(v10 + 32);
    v13 = swift_task_alloc();
    v0[43] = v13;
    *v13 = v0;
    v13[1] = sub_100A398CC;

    return sub_100A42A14(v11 + v12);
  }

  if (*(v11 + *(v10 + 40)))
  {

LABEL_14:

    v17 = v0[1];

    return v17();
  }

  sub_100A51780(v0[15], v0[26], type metadata accessor for PlaybackIntentDescriptor.IntentType);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v16 = v0[26];

    sub_100A51DF4(v16, type metadata accessor for PlaybackIntentDescriptor.IntentType);
    goto LABEL_14;
  }

  (*(v0[22] + 32))(v0[23], v0[26], v0[21]);
  v15 = swift_task_alloc();
  v0[44] = v15;
  *v15 = v0;
  v15[1] = sub_100A39BD8;

  return MusicPlaybackIntentDescriptor.donate()();
}

uint64_t sub_100A398CC()
{
  v1 = *v0;

  v2 = *(v1 + 288);
  v3 = *(v1 + 280);

  return _swift_task_switch(sub_100A399EC, v3, v2);
}

uint64_t sub_100A399EC()
{
  v1 = v0[15];
  if (*(v1 + *(v0[28] + 40)))
  {

LABEL_8:

    v4 = v0[1];

    return v4();
  }

  sub_100A51780(v1, v0[26], type metadata accessor for PlaybackIntentDescriptor.IntentType);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v3 = v0[26];

    sub_100A51DF4(v3, type metadata accessor for PlaybackIntentDescriptor.IntentType);
    goto LABEL_8;
  }

  (*(v0[22] + 32))(v0[23], v0[26], v0[21]);
  v2 = swift_task_alloc();
  v0[44] = v2;
  *v2 = v0;
  v2[1] = sub_100A39BD8;

  return MusicPlaybackIntentDescriptor.donate()();
}

uint64_t sub_100A39BD8()
{
  v2 = *v1;
  *(*v1 + 360) = v0;

  if (v0)
  {

    v3 = *(v2 + 280);
    v4 = *(v2 + 288);
    v5 = sub_100A3A888;
  }

  else
  {
    v3 = *(v2 + 280);
    v4 = *(v2 + 288);
    v5 = sub_100A39CF4;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_100A39CF4()
{
  v18 = v0;

  if (qword_1011A6A70 != -1)
  {
    swift_once();
  }

  sub_1000060E4(v0[39], static Logger.siriIntents);

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[38];
  if (v3)
  {
    v5 = v0[37];
    v7 = v0[22];
    v6 = v0[23];
    v8 = v0[21];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v17 = v10;
    *v9 = 136446210;
    v11 = sub_100010678(v5, v4, &v17);

    *(v9 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v1, v2, "Successfully donated intent with ID=%{public}s", v9, 0xCu);
    sub_10000959C(v10);

    (*(v7 + 8))(v6, v8);
  }

  else
  {
    v13 = v0[22];
    v12 = v0[23];
    v14 = v0[21];

    (*(v13 + 8))(v12, v14);
  }

  v15 = v0[1];

  return v15();
}

uint64_t sub_100A39F34()
{
  v67 = v0;
  v1 = *(v0 + 336);

  *(v0 + 80) = v1;
  swift_errorRetain();
  sub_10010FC20(&qword_1011AB640, L"D\v\a");
  if (swift_dynamicCast())
  {
    v2 = *(v0 + 40);
    v3 = *(v0 + 48);
    if (!*(v0 + 48))
    {

      sub_100A5181C(v2, 0, v26);
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.error.getter();

      sub_100A517E8(v2, 0);
      v29 = os_log_type_enabled(v27, v28);
      v30 = *(v0 + 304);
      if (v29)
      {
        v31 = *(v0 + 296);
        v32 = swift_slowAlloc();
        v66[0] = swift_slowAlloc();
        *v32 = 136446466;
        v33 = sub_100010678(v31, v30, v66);

        *(v32 + 4) = v33;
        *(v32 + 12) = 2082;
        *(v0 + 104) = v2;
        sub_100A51840(v2);
        v34 = String.init<A>(describing:)();
        v36 = sub_100010678(v34, v35, v66);

        *(v32 + 14) = v36;
        _os_log_impl(&_mh_execute_header, v27, v28, "❌ Intent id=%{public}s) — Could not present alertKind=%{public}s", v32, 0x16u);
        swift_arrayDestroy();

        sub_100A517E8(v2, 0);
      }

      else
      {

        sub_100A517E8(v2, 0);
      }

      goto LABEL_33;
    }

    if (v3 == 3)
    {
      if (!v2)
      {

        v18 = Logger.logObject.getter();
        v57 = static os_log_type_t.error.getter();

        v58 = os_log_type_enabled(v18, v57);
        v59 = *(v0 + 304);
        if (v58)
        {
          v60 = *(v0 + 296);
          v61 = swift_slowAlloc();
          v62 = swift_slowAlloc();
          v66[0] = v62;
          *v61 = 136446210;
          v63 = sub_100010678(v60, v59, v66);

          *(v61 + 4) = v63;
          _os_log_impl(&_mh_execute_header, v18, v57, "❌ Intent id=%{public}s) — Missing player", v61, 0xCu);
          sub_10000959C(v62);

          goto LABEL_33;
        }

LABEL_32:

        goto LABEL_33;
      }

      if (v2 == 2)
      {

        goto LABEL_9;
      }
    }

    sub_100A517E8(*(v0 + 40), v3);
  }

  v5 = *(v0 + 152);
  v4 = *(v0 + 160);
  v6 = *(v0 + 144);

  swift_errorRetain();
  static CocoaError.userCancelled.getter();
  sub_100A52FE8(&qword_1011ACA58, &type metadata accessor for CocoaError.Code, &protocol conformance descriptor for CocoaError.Code);
  v7 = static _ErrorCodeProtocol.~= infix(_:_:)();

  (*(v5 + 8))(v4, v6);
  if (v7)
  {
LABEL_9:

    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();

    v10 = os_log_type_enabled(v8, v9);
    v11 = *(v0 + 304);
    if (v10)
    {
      v12 = *(v0 + 296);
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v66[0] = v14;
      *v13 = 136446210;
      v15 = sub_100010678(v12, v11, v66);

      *(v13 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v8, v9, "❌ Intent id=%{public}s) — User cancelled", v13, 0xCu);
      sub_10000959C(v14);
LABEL_23:

      goto LABEL_34;
    }

LABEL_24:

    goto LABEL_34;
  }

  *(v0 + 88) = *(v0 + 336);
  swift_errorRetain();
  if (!swift_dynamicCast())
  {
LABEL_21:

    swift_errorRetain();
    v8 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v8, v37))
    {
      v38 = *(v0 + 336);
      v40 = *(v0 + 296);
      v39 = *(v0 + 304);
      v41 = swift_slowAlloc();
      v66[0] = swift_slowAlloc();
      *v41 = 136446466;
      v42 = sub_100010678(v40, v39, v66);

      *(v41 + 4) = v42;
      *(v41 + 12) = 2082;
      *(v0 + 96) = v38;
      swift_errorRetain();
      v43 = String.init<A>(describing:)();
      v45 = sub_100010678(v43, v44, v66);

      *(v41 + 14) = v45;
      _os_log_impl(&_mh_execute_header, v8, v37, "❌ Intent id=%{public}s) — Failed to add with error=%{public}s", v41, 0x16u);
      swift_arrayDestroy();
      goto LABEL_23;
    }

    goto LABEL_24;
  }

  v16 = *(v0 + 56);
  v17 = *(v0 + 64);
  if (v17 == 1)
  {

    sub_100A5181C(v16, 1, v46);
    v18 = Logger.logObject.getter();
    v47 = static os_log_type_t.error.getter();

    sub_100A517E8(v16, 1);
    v48 = os_log_type_enabled(v18, v47);
    v49 = *(v0 + 304);
    if (!v48)
    {

      sub_100A517E8(v16, 1);
      goto LABEL_33;
    }

    v50 = *(v0 + 296);
    v51 = swift_slowAlloc();
    v66[0] = swift_slowAlloc();
    *v51 = 136446466;
    v52 = sub_100010678(v50, v49, v66);

    *(v51 + 4) = v52;
    *(v51 + 12) = 2082;
    sub_10010FC20(&qword_1011ACA60, &qword_100EF6ED0);
    v53 = Array.description.getter();
    v55 = v54;
    sub_100A517E8(v16, 1);
    v56 = sub_100010678(v53, v55, v66);

    *(v51 + 14) = v56;
    _os_log_impl(&_mh_execute_header, v18, v47, "❌ Intent id=%{public}s) — Could not produce playback commands=%{public}s", v51, 0x16u);
    swift_arrayDestroy();

    goto LABEL_28;
  }

  if (v17 != 3 || v16 != 1)
  {
    sub_100A517E8(*(v0 + 56), v17);
    goto LABEL_21;
  }

  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.error.getter();

  v20 = os_log_type_enabled(v18, v19);
  v21 = *(v0 + 304);
  if (!v20)
  {
    goto LABEL_32;
  }

  v22 = *(v0 + 296);
  v23 = swift_slowAlloc();
  v24 = swift_slowAlloc();
  v66[0] = v24;
  *v23 = 136446210;
  v25 = sub_100010678(v22, v21, v66);

  *(v23 + 4) = v25;
  _os_log_impl(&_mh_execute_header, v18, v19, "❌ Intent id=%{public}s) — Could not playback, subscription needed", v23, 0xCu);
  sub_10000959C(v24);

LABEL_28:

LABEL_33:

LABEL_34:
  swift_willThrow();

  v64 = *(v0 + 8);

  return v64();
}

uint64_t sub_100A3A888()
{
  v17 = v0;

  if (qword_1011A6A70 != -1)
  {
    swift_once();
  }

  sub_1000060E4(v0[39], static Logger.siriIntents);
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[45];
  v5 = v0[22];
  v6 = v0[23];
  v7 = v0[21];
  if (v3)
  {
    v15 = v0[23];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v8 = 136446210;
    v0[14] = v4;
    swift_errorRetain();
    sub_10010FC20(&qword_1011AB640, L"D\v\a");
    v10 = String.init<A>(describing:)();
    v12 = sub_100010678(v10, v11, &v16);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v1, v2, "Donation error=%{public}s)", v8, 0xCu);
    sub_10000959C(v9);

    (*(v5 + 8))(v15, v7);
  }

  else
  {

    (*(v5 + 8))(v6, v7);
  }

  v13 = v0[1];

  return v13();
}

double PlaybackController.player.getter()
{
  swift_beginAccess();

  return result;
}

void (*PlaybackController.player.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC9MusicCore18PlaybackController_player;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);

  return sub_100A3AC24;
}

void sub_100A3AC24(uint64_t a1, char a2)
{
  v3 = *a1;
  v5 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  v6 = *(v5 + v4);
  *(v5 + v4) = *(*a1 + 24);

  if (a2)
  {

    sub_1000237E4(v6);
  }

  else
  {
    sub_1000237E4(v6);
  }

  free(v3);
}

uint64_t PlaybackController.perform(_:route:intent:issuer:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v5[7] = type metadata accessor for MainActor();
  v5[8] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[9] = v7;
  v5[10] = v6;

  return _swift_task_switch(sub_100A3AD98, v7, v6);
}

{
  v4[2] = type metadata accessor for MainActor();
  v4[3] = static MainActor.shared.getter();
  v9 = swift_task_alloc();
  v4[4] = v9;
  *v9 = v4;
  v9[1] = sub_100A43D98;

  return sub_100A43F80(a1, 0x10000, 1, a2, a3, a4);
}

uint64_t sub_100A3AD98()
{
  v1 = v0[2];
  sub_10010FC20(&unk_1011ACA30, &unk_100EEC4D0);
  v2 = swift_allocObject();
  v0[11] = v2;
  *(v2 + 16) = xmmword_100EBC6B0;
  sub_100008FE4(v1, v2 + 32);
  v0[12] = static MainActor.shared.getter();
  v3 = swift_task_alloc();
  v0[13] = v3;
  *v3 = v0;
  v3[1] = sub_100A3AE90;
  v4 = v0[5];
  v5 = v0[3];
  v6 = v0[4];

  return sub_100A43F80(v2, 0x10000, 1, v5, v6, v4);
}

uint64_t sub_100A3AE90(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 112) = a1;
  *(v3 + 120) = v1;

  if (v1)
  {

    v4 = dispatch thunk of Actor.unownedExecutor.getter();
    v6 = v5;
    v7 = sub_100A3B164;
  }

  else
  {
    v4 = dispatch thunk of Actor.unownedExecutor.getter();
    v6 = v8;
    v7 = sub_100A3B008;
  }

  return _swift_task_switch(v7, v4, v6);
}

uint64_t sub_100A3B008()
{

  v1 = *(v0 + 72);
  v2 = *(v0 + 80);

  return _swift_task_switch(sub_100A3B074, v1, v2);
}

uint64_t sub_100A3B074()
{
  v1 = *(v0 + 112);

  if (v1 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_8:

    v3 = 0;
    goto LABEL_9;
  }

  result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v3 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v3 = *(*(v0 + 112) + 32);
  }

LABEL_9:
  v4 = *(v0 + 8);

  return v4(v3);
}

uint64_t sub_100A3B164()
{

  v1 = *(v0 + 72);
  v2 = *(v0 + 80);

  return _swift_task_switch(sub_100A3B1C8, v1, v2);
}

uint64_t sub_100A3B1C8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100A3B22C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[26] = a4;
  v5[27] = v4;
  v5[24] = a2;
  v5[25] = a3;
  v5[23] = a1;
  v6 = type metadata accessor for CocoaError.Code();
  v5[28] = v6;
  v5[29] = *(v6 - 8);
  v5[30] = swift_task_alloc();

  return _swift_task_switch(sub_100A3B2F4, 0, 0);
}

uint64_t sub_100A3B2F4()
{
  v12 = v0;
  if (qword_1011A6A60 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[31] = sub_1000060E4(v1, static Logger.playbackController);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[24];
    v4 = v0[25];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v11 = v7;
    *v6 = 136446210;
    *(v6 + 4) = sub_100010678(v5, v4, &v11);
    _os_log_impl(&_mh_execute_header, v2, v3, "Intent id=%{public}s) — Offering play local option to user", v6, 0xCu);
    sub_10000959C(v7);
  }

  v0[32] = type metadata accessor for MainActor();
  v0[33] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[34] = v9;
  v0[35] = v8;

  return _swift_task_switch(sub_100A3B4BC, v9, v8);
}

uint64_t sub_100A3B4BC(uint64_t a1)
{
  v2 = static MainActor.shared.getter();
  *(v1 + 288) = v2;
  if (v2)
  {
    swift_getObjectType();
    v3 = dispatch thunk of Actor.unownedExecutor.getter();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  return _swift_task_switch(sub_100A3B550, v3, v5);
}

uint64_t sub_100A3B550()
{
  v1 = v0[27];
  v0[2] = v0;
  v0[7] = v0 + 153;
  v0[3] = sub_100A3B604;
  v2 = swift_continuation_init();
  sub_100A47364(v2, v1);

  return _swift_continuation_await(v0 + 2, v3);
}

uint64_t sub_100A3B604()
{
  v1 = *v0;
  *(*v0 + 154) = *(*v0 + 153);
  v2 = *(v1 + 280);
  v3 = *(v1 + 272);

  return _swift_task_switch(sub_100A3B710, v3, v2);
}

uint64_t sub_100A3B710()
{

  return _swift_task_switch(sub_100A3B778, 0, 0);
}

uint64_t sub_100A3B778(__n128 a1)
{
  v39 = v1;
  if (*(v1 + 154) == 1)
  {
    v2 = (*(v1 + 216) + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator);
    v3 = v2[3];
    v4 = v2[4];
    sub_10000954C(v2, v3);
    *(v1 + 296) = (*(v4 + 40))(v3, v4);
    v5 = swift_task_alloc();
    *(v1 + 304) = v5;
    *v5 = v1;
    v5[1] = sub_100A3BD64;

    return GroupActivitiesManager.leave(performLeaveCommand:)(0);
  }

  sub_100A5172C();
  v7 = swift_allocError();
  *v8 = 2;
  *(v8 + 8) = 3;
  swift_willThrow();
  *(v1 + 160) = v7;
  swift_errorRetain();
  sub_10010FC20(&qword_1011AB640, L"D\v\a");
  if (swift_dynamicCast())
  {
    v9 = *(v1 + 144);
    v10 = *(v1 + 152);
    if (!*(v1 + 152))
    {

      sub_100A5181C(v9, 0, v29);
      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.error.getter();

      sub_100A517E8(v9, 0);
      if (os_log_type_enabled(v30, v31))
      {
        v33 = *(v1 + 192);
        v32 = *(v1 + 200);
        v34 = swift_slowAlloc();
        v38[0] = swift_slowAlloc();
        *v34 = 136446466;
        *(v34 + 4) = sub_100010678(v33, v32, v38);
        *(v34 + 12) = 2082;
        *(v1 + 176) = v9;
        sub_100A51840(v9);
        v35 = String.init<A>(describing:)();
        v37 = sub_100010678(v35, v36, v38);

        *(v34 + 14) = v37;
        _os_log_impl(&_mh_execute_header, v30, v31, "Intent id=%{public}s) — Could not present alertKind=%{public}s", v34, 0x16u);
        swift_arrayDestroy();

        sub_100A517E8(v9, 0);
      }

      else
      {

        sub_100A517E8(v9, 0);
      }

      goto LABEL_18;
    }

    if (v10 == 3 && v9 == 2)
    {

      goto LABEL_12;
    }

    sub_100A517E8(*(v1 + 144), v10);
  }

  v12 = *(v1 + 232);
  v11 = *(v1 + 240);
  v13 = *(v1 + 224);

  swift_errorRetain();
  static CocoaError.userCancelled.getter();
  sub_100A52FE8(&qword_1011ACA58, &type metadata accessor for CocoaError.Code, &protocol conformance descriptor for CocoaError.Code);
  v14 = static _ErrorCodeProtocol.~= infix(_:_:)();

  (*(v12 + 8))(v11, v13);
  if (v14)
  {
LABEL_12:

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v18 = *(v1 + 192);
      v17 = *(v1 + 200);
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v38[0] = v20;
      *v19 = 136446210;
      *(v19 + 4) = sub_100010678(v18, v17, v38);
      _os_log_impl(&_mh_execute_header, v15, v16, "Intent id=%{public}s) — User cancelled", v19, 0xCu);
      sub_10000959C(v20);

LABEL_16:

      goto LABEL_17;
    }

    goto LABEL_17;
  }

  swift_errorRetain();
  v15 = Logger.logObject.getter();
  v21 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v15, v21))
  {
    v23 = *(v1 + 192);
    v22 = *(v1 + 200);
    v24 = swift_slowAlloc();
    v38[0] = swift_slowAlloc();
    *v24 = 136446466;
    *(v24 + 4) = sub_100010678(v23, v22, v38);
    *(v24 + 12) = 2082;
    *(v1 + 168) = v7;
    swift_errorRetain();
    v25 = String.init<A>(describing:)();
    v27 = sub_100010678(v25, v26, v38);

    *(v24 + 14) = v27;
    _os_log_impl(&_mh_execute_header, v15, v21, "Intent id=%{public}s) — Failed to insert with error=%{public}s", v24, 0x16u);
    swift_arrayDestroy();

    goto LABEL_16;
  }

LABEL_17:

LABEL_18:
  swift_willThrow();

  v28 = *(v1 + 8);

  return v28();
}

uint64_t sub_100A3BD64()
{

  return _swift_task_switch(sub_100A3BE7C, 0, 0);
}

uint64_t sub_100A3BE7C()
{
  v1 = v0[27];
  v2 = OBJC_IVAR____TtC9MusicCore18PlaybackController_player;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v0[39] = v3;
  if (v3)
  {
    v4 = v0[23];
    v0[10] = v4;
    v0[13] = &type metadata for Player.ReplaceCommand;
    v0[14] = &protocol witness table for Player.ReplaceCommand;
    v0[11] = 3;
    v5 = v4;

    v6 = swift_task_alloc();
    v0[40] = v6;
    *v6 = v0;
    v6[1] = sub_100A3BFCC;
    v7 = v0[26];

    return Player.perform(_:options:issuer:)((v0 + 10), 0x10000, 0, 0, v7);
  }

  else
  {

    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_100A3BFCC(void *a1)
{
  v4 = *v2;
  *(*v2 + 328) = v1;

  if (v1)
  {
    v5 = sub_100A3C178;
  }

  else
  {

    sub_10000959C((v4 + 80));
    v5 = sub_100A3C10C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100A3C10C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100A3C178()
{
  v33 = v0;

  sub_10000959C((v0 + 80));
  v1 = *(v0 + 328);
  *(v0 + 160) = v1;
  swift_errorRetain();
  sub_10010FC20(&qword_1011AB640, L"D\v\a");
  if (swift_dynamicCast())
  {
    v2 = *(v0 + 144);
    v3 = *(v0 + 152);
    if (!*(v0 + 152))
    {

      sub_100A5181C(v2, 0, v23);
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.error.getter();

      sub_100A517E8(v2, 0);
      if (os_log_type_enabled(v24, v25))
      {
        v27 = *(v0 + 192);
        v26 = *(v0 + 200);
        v28 = swift_slowAlloc();
        v32[0] = swift_slowAlloc();
        *v28 = 136446466;
        *(v28 + 4) = sub_100010678(v27, v26, v32);
        *(v28 + 12) = 2082;
        *(v0 + 176) = v2;
        sub_100A51840(v2);
        v29 = String.init<A>(describing:)();
        v31 = sub_100010678(v29, v30, v32);

        *(v28 + 14) = v31;
        _os_log_impl(&_mh_execute_header, v24, v25, "Intent id=%{public}s) — Could not present alertKind=%{public}s", v28, 0x16u);
        swift_arrayDestroy();

        sub_100A517E8(v2, 0);
      }

      else
      {

        sub_100A517E8(v2, 0);
      }

      goto LABEL_14;
    }

    if (v3 == 3 && v2 == 2)
    {

      goto LABEL_8;
    }

    sub_100A517E8(*(v0 + 144), v3);
  }

  v5 = *(v0 + 232);
  v4 = *(v0 + 240);
  v6 = *(v0 + 224);

  swift_errorRetain();
  static CocoaError.userCancelled.getter();
  sub_100A52FE8(&qword_1011ACA58, &type metadata accessor for CocoaError.Code, &protocol conformance descriptor for CocoaError.Code);
  v7 = static _ErrorCodeProtocol.~= infix(_:_:)();

  (*(v5 + 8))(v4, v6);
  if (v7)
  {
LABEL_8:

    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v11 = *(v0 + 192);
      v10 = *(v0 + 200);
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v32[0] = v13;
      *v12 = 136446210;
      *(v12 + 4) = sub_100010678(v11, v10, v32);
      _os_log_impl(&_mh_execute_header, v8, v9, "Intent id=%{public}s) — User cancelled", v12, 0xCu);
      sub_10000959C(v13);
LABEL_12:

      goto LABEL_13;
    }

    goto LABEL_13;
  }

  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v14 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v8, v14))
  {
    v16 = *(v0 + 192);
    v15 = *(v0 + 200);
    v17 = swift_slowAlloc();
    v32[0] = swift_slowAlloc();
    *v17 = 136446466;
    *(v17 + 4) = sub_100010678(v16, v15, v32);
    *(v17 + 12) = 2082;
    *(v0 + 168) = v1;
    swift_errorRetain();
    v18 = String.init<A>(describing:)();
    v20 = sub_100010678(v18, v19, v32);

    *(v17 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v8, v14, "Intent id=%{public}s) — Failed to insert with error=%{public}s", v17, 0x16u);
    swift_arrayDestroy();
    goto LABEL_12;
  }

LABEL_13:

LABEL_14:
  swift_willThrow();

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_100A3C668(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[126] = v4;
  v5[125] = a4;
  v5[124] = a3;
  v5[123] = a2;
  v5[122] = a1;
  v6 = type metadata accessor for UUID();
  v5[127] = v6;
  v5[128] = *(v6 - 8);
  v5[129] = swift_task_alloc();
  type metadata accessor for Locale();
  v5[130] = swift_task_alloc();
  v7 = type metadata accessor for String.LocalizationValue();
  v5[131] = v7;
  v5[132] = *(v7 - 8);
  v5[133] = swift_task_alloc();
  v5[134] = swift_task_alloc();
  v8 = type metadata accessor for MusicPlaybackIntentDescriptor();
  v5[135] = v8;
  v5[136] = *(v8 - 8);
  v5[137] = swift_task_alloc();
  v5[138] = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  v5[139] = swift_task_alloc();
  v5[140] = swift_task_alloc();
  v5[141] = swift_task_alloc();
  v5[142] = swift_task_alloc();
  v5[143] = swift_task_alloc();
  v5[144] = swift_task_alloc();
  v5[145] = swift_task_alloc();
  v5[146] = swift_task_alloc();
  v5[147] = swift_task_alloc();
  v5[148] = type metadata accessor for MainActor();
  v5[149] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[150] = v10;
  v5[151] = v9;

  return _swift_task_switch(sub_100A3C8F4, v10, v9);
}

uint64_t sub_100A3C8F4()
{
  v18 = v0;
  v1 = v0[126];
  v2 = OBJC_IVAR____TtC9MusicCore18PlaybackController_player;
  v0[152] = OBJC_IVAR____TtC9MusicCore18PlaybackController_player;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v0[153] = v3;
  if (v3)
  {
    v4 = OBJC_IVAR____TtC9MusicCore6Player_engineState;
    swift_beginAccess();
    if (*(v3 + v4) == 2)
    {
    }

    else
    {
      v8 = qword_1011A6A60;

      if (v8 != -1)
      {
        swift_once();
      }

      v9 = type metadata accessor for Logger();
      sub_1000060E4(v9, static Logger.playbackController);

      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v10, v11))
      {
        v12 = v0[124];
        v13 = v0[123];
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v17 = v15;
        *v14 = 136446210;
        *(v14 + 4) = sub_100010678(v13, v12, &v17);
        _os_log_impl(&_mh_execute_header, v10, v11, "Intent id=%{public}s) — Awaiting for engine to start", v14, 0xCu);
        sub_10000959C(v15);
      }
    }

    v16 = swift_task_alloc();
    v0[154] = v16;
    *v16 = v0;
    v16[1] = sub_100A3CC5C;

    return Player.startEngineIfNeeded()();
  }

  else
  {

    sub_100A5172C();
    swift_allocError();
    *v5 = 0;
    *(v5 + 8) = 3;
    swift_willThrow();

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_100A3CC5C()
{
  v1 = *v0;

  v2 = *(v1 + 1208);
  v3 = *(v1 + 1200);

  return _swift_task_switch(sub_100A3CD7C, v3, v2);
}

uint64_t sub_100A3CD7C()
{
  v1 = *(v0 + 1000);
  if (!v1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter((v0 + 960));

    v2 = *(v0 + 960);
    v1 = [v2 route];
  }

  *(v0 + 1240) = v1;
  v3 = *(v0 + 976);
  v4 = type metadata accessor for PlaybackIntentDescriptor(0);
  *(v0 + 1248) = v4;
  *(v0 + 1256) = *(v3 + v4[5]);
  if ((*(v3 + v4[10]) & 1) != 0 || *(v3 + v4[9]) == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = *(v3 + v4[6]);
  }

  *(v0 + 1264) = v5;
  v6 = *(v0 + 1000);
  v7 = swift_task_alloc();
  *(v0 + 1272) = v7;
  *v7 = v0;
  v7[1] = sub_100A3CEEC;
  v8 = *(v0 + 976);

  return sub_100A44BC8(v1, v8);
}

uint64_t sub_100A3CEEC(char a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 218) = a1;
  *(v4 + 1280) = v1;

  v5 = *(v3 + 1208);
  v6 = *(v3 + 1200);
  if (v1)
  {
    v7 = sub_100A40A44;
  }

  else
  {
    v7 = sub_100A3D034;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_100A3D034()
{
  v81 = v0;
  if (*(v0 + 218) == 2)
  {
    v1 = *(v0 + 1240);

    v2 = *(v0 + 8);

    return v2();
  }

  if (qword_1011A6A60 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  *(v0 + 1288) = sub_1000060E4(v4, static Logger.playbackController);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 218);
    v8 = *(v0 + 992);
    v9 = *(v0 + 984);
    v10 = swift_slowAlloc();
    v80 = swift_slowAlloc();
    *v10 = 136446466;
    *(v10 + 4) = sub_100010678(v9, v8, &v80);
    *(v10 + 12) = 2082;
    *(v0 + 217) = v7 & 1;
    v11 = String.init<A>(describing:)();
    v13 = sub_100010678(v11, v12, &v80);

    *(v10 + 14) = v13;
    _os_log_impl(&_mh_execute_header, v5, v6, "Intent id=%{public}s) — Resolved Playability Options=%{public}s", v10, 0x16u);
    swift_arrayDestroy();
  }

  sub_100A51780(*(v0 + 976), *(v0 + 1176), type metadata accessor for PlaybackIntentDescriptor.IntentType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v15 = *(v0 + 1176);
  if (EnumCaseMultiPayload == 1)
  {
    v16 = *(v0 + 1096);
    v17 = *(v0 + 1088);
    v18 = *(v0 + 1080);
    (*(v17 + 32))(v16, v15, v18);
    v19 = MusicPlaybackIntentDescriptor.playbackIntent.getter();
    (*(v17 + 8))(v16, v18);
  }

  else
  {
    v19 = *v15;
  }

  v20 = [v19 sharedListeningProperties];

  if (v20)
  {

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter((v0 + 952));

    v21 = *(v0 + 952);
    if (!v21)
    {
      goto LABEL_25;
    }

    v22 = [*(v0 + 952) isSharedListeningSession];

    if (!v22)
    {
      goto LABEL_25;
    }

    sub_100A51780(*(v0 + 976), *(v0 + 1160), type metadata accessor for PlaybackIntentDescriptor.IntentType);
    v23 = swift_getEnumCaseMultiPayload();
    v24 = *(v0 + 1160);
    if (v23 == 1)
    {
      v25 = *(v0 + 1096);
      v26 = *(v0 + 1088);
      v27 = *(v0 + 1080);
      (*(v26 + 32))(v25, v24, v27);
      v28 = MusicPlaybackIntentDescriptor.playbackIntent.getter();
      (*(v26 + 8))(v25, v27);
    }

    else
    {
      v28 = *v24;
    }

    v43 = [v28 tracklistSource];

    if (v43 == 100)
    {
LABEL_25:
      v44 = *(v0 + 1264);
      *(v0 + 1360) = *(v0 + 1256);
      *(v0 + 1352) = v44;
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter((v0 + 944));

      v45 = *(v0 + 944);
      v46 = [v45 route];
      *(v0 + 1368) = v46;

      if (!v46)
      {
        v52 = *(v0 + 1240);
        goto LABEL_34;
      }

      objc_opt_self();
      v47 = swift_dynamicCastObjCClass();
      *(v0 + 1376) = v47;
      if (!v47)
      {
        goto LABEL_31;
      }

      v48 = v47;
      v49 = v46;
      if ([v48 isDeviceRoute])
      {
LABEL_30:

LABEL_31:
        v52 = *(v0 + 1240);
LABEL_32:

LABEL_34:
        *(v0 + 1408) = v52;
        sub_100A51780(*(v0 + 976), *(v0 + 1144), type metadata accessor for PlaybackIntentDescriptor.IntentType);
        v53 = swift_getEnumCaseMultiPayload();
        v54 = *(v0 + 1144);
        if (v53 == 1)
        {
          v55 = *(v0 + 1096);
          v56 = *(v0 + 1088);
          v57 = *(v0 + 1080);
          (*(v56 + 32))(v55, v54, v57);
          v58 = MusicPlaybackIntentDescriptor.playbackIntent.getter();
          (*(v56 + 8))(v55, v57);
        }

        else
        {
          v58 = *v54;
        }

        *(v0 + 1416) = v58;
        *(v0 + 220) = *(*(v0 + 1248) + 32);
        *(v0 + 1424) = static MainActor.shared.getter();
        v60 = dispatch thunk of Actor.unownedExecutor.getter();
        *(v0 + 1432) = v60;
        *(v0 + 1440) = v59;

        return _swift_task_switch(sub_100A3EE00, v60, v59);
      }

      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter((v0 + 760));

      v50 = *(v0 + 760);
      v51 = *(v0 + 218);
      if (v50)
      {

        if ((v51 & 1) == 0)
        {
          goto LABEL_30;
        }
      }

      else if ((*(v0 + 218) & 1) == 0)
      {
        sub_100A51780(*(v0 + 976), *(v0 + 1152), type metadata accessor for PlaybackIntentDescriptor.IntentType);
        v71 = swift_getEnumCaseMultiPayload();
        v72 = *(v0 + 1152);
        if (v71 == 1)
        {
          v73 = *(v0 + 1096);
          v74 = *(v0 + 1088);
          v75 = *(v0 + 1080);
          (*(v74 + 32))(v73, v72, v75);
          v76 = MusicPlaybackIntentDescriptor.playbackIntent.getter();
          (*(v74 + 8))(v73, v75);
        }

        else
        {
          v76 = *v72;
        }

        v77 = [v76 prefersEnqueuingUsingAirPlay];

        if ((v77 & 1) == 0)
        {
          v79 = [v48 supportsRemoteControl];

          if (v79 && (*(*(v0 + 976) + *(*(v0 + 1248) + 36)) & 1) == 0)
          {
            v52 = *(v0 + 1240);
            if (([*(v0 + 1376) canModifyGroupMembership] & 1) == 0)
            {
              [*(v0 + 1376) establishGroup];
            }

            goto LABEL_32;
          }

          goto LABEL_51;
        }
      }

LABEL_51:
      v78 = swift_task_alloc();
      *(v0 + 1384) = v78;
      *v78 = v0;
      v78[1] = sub_100A3EB58;

      return Player.prepareForBufferedAirPlay()();
    }

    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v61, v62))
    {
      v63 = *(v0 + 992);
      v64 = *(v0 + 984);
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v80 = v66;
      *v65 = 136446210;
      *(v65 + 4) = sub_100010678(v64, v63, &v80);
      _os_log_impl(&_mh_execute_header, v61, v62, "Intent id=%{public}s) — Offering Shared Listening options", v65, 0xCu);
      sub_10000959C(v66);
    }

    v67 = swift_task_alloc();
    *(v0 + 1320) = v67;
    *v67 = v0;
    v67[1] = sub_100A3E4A4;
    v68 = *(v0 + 992);
    v69 = *(v0 + 984);
    v70 = *(v0 + 976);

    return sub_100A45714(v70, v69, v68);
  }

  else
  {
    sub_100A51780(*(v0 + 976), *(v0 + 1168), type metadata accessor for PlaybackIntentDescriptor.IntentType);
    v29 = swift_getEnumCaseMultiPayload();
    v30 = *(v0 + 1168);
    if (v29 == 1)
    {
      v31 = *(v0 + 1096);
      v32 = *(v0 + 1088);
      v33 = *(v0 + 1080);
      (*(v32 + 32))(v31, v30, v33);
      v34 = MusicPlaybackIntentDescriptor.playbackIntent.getter();
      (*(v32 + 8))(v31, v33);
    }

    else
    {
      v34 = *v30;
    }

    *(v0 + 1296) = v34;
    v35 = *(v0 + 1248);
    v36 = *(v0 + 976);
    v37 = (*(v0 + 1008) + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator);
    v38 = v37[3];
    v39 = v37[4];
    sub_10000954C(v37, v38);
    *(v0 + 1304) = (*(v39 + 40))(v38, v39);
    v40 = *(v36 + *(v35 + 44));
    v41 = v34;
    v42 = swift_task_alloc();
    *(v0 + 1312) = v42;
    *v42 = v0;
    v42[1] = sub_100A3DB84;

    return GroupActivitiesManager.initiateSession(with:alwaysPromptSharePlayPermissions:confirmReplacement:)(v34, v40, v40);
  }
}

uint64_t sub_100A3DB84(char a1)
{
  v2 = *v1;
  v3 = *(*v1 + 1296);
  *(*v1 + 219) = a1;

  v4 = *(v2 + 1208);
  v5 = *(v2 + 1200);

  return _swift_task_switch(sub_100A3DCE8, v5, v4);
}

uint64_t sub_100A3DCE8()
{
  v51 = v0;
  v1 = *(v0 + 219);

  if (v1 == 1)
  {
    v2 = *(v0 + 1240);

    v3 = *(v0 + 8);

    return v3();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter((v0 + 952));

  v5 = *(v0 + 952);
  if (!v5)
  {
    goto LABEL_11;
  }

  v6 = [*(v0 + 952) isSharedListeningSession];

  if (!v6)
  {
    goto LABEL_11;
  }

  sub_100A51780(*(v0 + 976), *(v0 + 1160), type metadata accessor for PlaybackIntentDescriptor.IntentType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v8 = *(v0 + 1160);
  if (EnumCaseMultiPayload == 1)
  {
    v9 = *(v0 + 1096);
    v10 = *(v0 + 1088);
    v11 = *(v0 + 1080);
    (*(v10 + 32))(v9, v8, v11);
    v12 = MusicPlaybackIntentDescriptor.playbackIntent.getter();
    (*(v10 + 8))(v9, v11);
  }

  else
  {
    v12 = *v8;
  }

  v13 = [v12 tracklistSource];

  if (v13 == 100)
  {
LABEL_11:
    v14 = *(v0 + 1264);
    *(v0 + 1360) = *(v0 + 1256);
    *(v0 + 1352) = v14;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter((v0 + 944));

    v15 = *(v0 + 944);
    v16 = [v15 route];
    *(v0 + 1368) = v16;

    if (!v16)
    {
      v22 = *(v0 + 1240);
      goto LABEL_20;
    }

    objc_opt_self();
    v17 = swift_dynamicCastObjCClass();
    *(v0 + 1376) = v17;
    if (!v17)
    {
      goto LABEL_17;
    }

    v18 = v17;
    v19 = v16;
    if ([v18 isDeviceRoute])
    {
LABEL_16:

LABEL_17:
      v22 = *(v0 + 1240);
LABEL_18:

LABEL_20:
      *(v0 + 1408) = v22;
      sub_100A51780(*(v0 + 976), *(v0 + 1144), type metadata accessor for PlaybackIntentDescriptor.IntentType);
      v23 = swift_getEnumCaseMultiPayload();
      v24 = *(v0 + 1144);
      if (v23 == 1)
      {
        v25 = *(v0 + 1096);
        v26 = *(v0 + 1088);
        v27 = *(v0 + 1080);
        (*(v26 + 32))(v25, v24, v27);
        v28 = MusicPlaybackIntentDescriptor.playbackIntent.getter();
        (*(v26 + 8))(v25, v27);
      }

      else
      {
        v28 = *v24;
      }

      *(v0 + 1416) = v28;
      *(v0 + 220) = *(*(v0 + 1248) + 32);
      *(v0 + 1424) = static MainActor.shared.getter();
      v30 = dispatch thunk of Actor.unownedExecutor.getter();
      *(v0 + 1432) = v30;
      *(v0 + 1440) = v29;

      return _swift_task_switch(sub_100A3EE00, v30, v29);
    }

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter((v0 + 760));

    v20 = *(v0 + 760);
    v21 = *(v0 + 218);
    if (v20)
    {

      if ((v21 & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    else if ((*(v0 + 218) & 1) == 0)
    {
      sub_100A51780(*(v0 + 976), *(v0 + 1152), type metadata accessor for PlaybackIntentDescriptor.IntentType);
      v41 = swift_getEnumCaseMultiPayload();
      v42 = *(v0 + 1152);
      if (v41 == 1)
      {
        v43 = *(v0 + 1096);
        v44 = *(v0 + 1088);
        v45 = *(v0 + 1080);
        (*(v44 + 32))(v43, v42, v45);
        v46 = MusicPlaybackIntentDescriptor.playbackIntent.getter();
        (*(v44 + 8))(v43, v45);
      }

      else
      {
        v46 = *v42;
      }

      v47 = [v46 prefersEnqueuingUsingAirPlay];

      if ((v47 & 1) == 0)
      {
        v49 = [v18 supportsRemoteControl];

        if (v49 && (*(*(v0 + 976) + *(*(v0 + 1248) + 36)) & 1) == 0)
        {
          v22 = *(v0 + 1240);
          if (([*(v0 + 1376) canModifyGroupMembership] & 1) == 0)
          {
            [*(v0 + 1376) establishGroup];
          }

          goto LABEL_18;
        }

        goto LABEL_37;
      }
    }

LABEL_37:
    v48 = swift_task_alloc();
    *(v0 + 1384) = v48;
    *v48 = v0;
    v48[1] = sub_100A3EB58;

    return Player.prepareForBufferedAirPlay()();
  }

  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = *(v0 + 992);
    v34 = *(v0 + 984);
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v50 = v36;
    *v35 = 136446210;
    *(v35 + 4) = sub_100010678(v34, v33, &v50);
    _os_log_impl(&_mh_execute_header, v31, v32, "Intent id=%{public}s) — Offering Shared Listening options", v35, 0xCu);
    sub_10000959C(v36);
  }

  v37 = swift_task_alloc();
  *(v0 + 1320) = v37;
  *v37 = v0;
  v37[1] = sub_100A3E4A4;
  v38 = *(v0 + 992);
  v39 = *(v0 + 984);
  v40 = *(v0 + 976);

  return sub_100A45714(v40, v39, v38);
}

uint64_t sub_100A3E4A4(uint64_t a1, uint64_t a2, char a3)
{
  v8 = *v4;
  *(*v4 + 1328) = v3;

  if (v3)
  {
    v9 = *(v8 + 1208);
    v10 = *(v8 + 1200);
    v11 = sub_100A40B90;
  }

  else
  {
    *(v8 + 297) = a3;
    *(v8 + 1336) = a2;
    *(v8 + 1344) = a1;
    v9 = *(v8 + 1208);
    v10 = *(v8 + 1200);
    v11 = sub_100A3E5EC;
  }

  return _swift_task_switch(v11, v10, v9);
}

uint64_t sub_100A3E5EC()
{
  if (*(v0 + 297))
  {
    v1 = *(v0 + 1240);

    sub_100A5172C();
    swift_allocError();
    *v2 = 2;
    *(v2 + 8) = 3;
    swift_willThrow();

    v3 = *(v0 + 8);

    return v3();
  }

  v5 = *(v0 + 1336);
  *(v0 + 1360) = *(v0 + 1344);
  *(v0 + 1352) = v5;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter((v0 + 944));

  v6 = *(v0 + 944);
  v7 = [v6 route];
  *(v0 + 1368) = v7;

  if (!v7)
  {
    v13 = *(v0 + 1240);
    goto LABEL_14;
  }

  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  *(v0 + 1376) = v8;
  if (!v8)
  {
    goto LABEL_11;
  }

  v9 = v8;
  v10 = v7;
  if ([v9 isDeviceRoute])
  {
LABEL_10:

LABEL_11:
    v13 = *(v0 + 1240);
LABEL_12:

LABEL_14:
    *(v0 + 1408) = v13;
    sub_100A51780(*(v0 + 976), *(v0 + 1144), type metadata accessor for PlaybackIntentDescriptor.IntentType);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v15 = *(v0 + 1144);
    if (EnumCaseMultiPayload == 1)
    {
      v16 = *(v0 + 1096);
      v17 = *(v0 + 1088);
      v18 = *(v0 + 1080);
      (*(v17 + 32))(v16, v15, v18);
      v19 = MusicPlaybackIntentDescriptor.playbackIntent.getter();
      (*(v17 + 8))(v16, v18);
    }

    else
    {
      v19 = *v15;
    }

    *(v0 + 1416) = v19;
    *(v0 + 220) = *(*(v0 + 1248) + 32);
    *(v0 + 1424) = static MainActor.shared.getter();
    v21 = dispatch thunk of Actor.unownedExecutor.getter();
    *(v0 + 1432) = v21;
    *(v0 + 1440) = v20;

    return _swift_task_switch(sub_100A3EE00, v21, v20);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter((v0 + 760));

  v11 = *(v0 + 760);
  v12 = *(v0 + 218);
  if (v11)
  {

    if ((v12 & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_25;
  }

  if (*(v0 + 218))
  {
    goto LABEL_25;
  }

  sub_100A51780(*(v0 + 976), *(v0 + 1152), type metadata accessor for PlaybackIntentDescriptor.IntentType);
  v22 = swift_getEnumCaseMultiPayload();
  v23 = *(v0 + 1152);
  if (v22 == 1)
  {
    v24 = *(v0 + 1096);
    v25 = *(v0 + 1088);
    v26 = *(v0 + 1080);
    (*(v25 + 32))(v24, v23, v26);
    v27 = MusicPlaybackIntentDescriptor.playbackIntent.getter();
    (*(v25 + 8))(v24, v26);
  }

  else
  {
    v27 = *v23;
  }

  v28 = [v27 prefersEnqueuingUsingAirPlay];

  if (v28)
  {
LABEL_25:

    goto LABEL_26;
  }

  v30 = [v9 supportsRemoteControl];

  if (v30 && (*(*(v0 + 976) + *(*(v0 + 1248) + 36)) & 1) == 0)
  {
    v13 = *(v0 + 1240);
    if (([*(v0 + 1376) canModifyGroupMembership] & 1) == 0)
    {
      [*(v0 + 1376) establishGroup];
    }

    goto LABEL_12;
  }

LABEL_26:
  v29 = swift_task_alloc();
  *(v0 + 1384) = v29;
  *v29 = v0;
  v29[1] = sub_100A3EB58;

  return Player.prepareForBufferedAirPlay()();
}

uint64_t sub_100A3EB58(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 1392) = v1;

  if (v1)
  {
    v5 = v4[151];
    v6 = v4[150];
    v7 = sub_100A40CDC;
  }

  else
  {
    v4[175] = a1;
    v5 = v4[151];
    v6 = v4[150];
    v7 = sub_100A3EC88;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_100A3EC88()
{
  v1 = *(v0 + 1400);
  if (([*(v0 + 1376) canModifyGroupMembership] & 1) == 0)
  {
    [*(v0 + 1376) establishGroup];
  }

  *(v0 + 1408) = v1;
  sub_100A51780(*(v0 + 976), *(v0 + 1144), type metadata accessor for PlaybackIntentDescriptor.IntentType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v3 = *(v0 + 1144);
  if (EnumCaseMultiPayload == 1)
  {
    v4 = *(v0 + 1096);
    v5 = *(v0 + 1088);
    v6 = *(v0 + 1080);
    (*(v5 + 32))(v4, v3, v6);
    v7 = MusicPlaybackIntentDescriptor.playbackIntent.getter();
    (*(v5 + 8))(v4, v6);
  }

  else
  {
    v7 = *v3;
  }

  *(v0 + 1416) = v7;
  *(v0 + 220) = *(*(v0 + 1248) + 32);
  *(v0 + 1424) = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v0 + 1432) = v9;
  *(v0 + 1440) = v8;

  return _swift_task_switch(sub_100A3EE00, v9, v8);
}

uint64_t sub_100A3EE00()
{
  v21 = v0;
  v1 = sub_100A463B8(*(v0 + 1416), *(v0 + 1360), *(v0 + 1352));
  *(v0 + 1448) = v1;
  if (v1[2])
  {

    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = *(v0 + 992);
      v5 = *(v0 + 984);
      v6 = swift_slowAlloc();
      v20[0] = swift_slowAlloc();
      *v6 = 136446466;
      *(v6 + 4) = sub_100010678(v5, v4, v20);
      *(v6 + 12) = 2082;
      sub_10010FC20(&qword_1011ACA60, &qword_100EF6ED0);
      v7 = Array.description.getter();
      v9 = sub_100010678(v7, v8, v20);

      *(v6 + 14) = v9;
      _os_log_impl(&_mh_execute_header, v2, v3, "Intent id=%{public}s) — Performing the following commands: %{public}s", v6, 0x16u);
      swift_arrayDestroy();
    }

    v10 = *(v0 + 220);
    v11 = *(v0 + 1416);
    v12 = *(v0 + 976);
    v13 = swift_task_alloc();
    *(v0 + 1464) = v13;
    *v13 = v0;
    v13[1] = sub_100A406D8;
    v14 = *(v0 + 1408);

    return sub_100A43F80(v1, 0x10000, 1, v14, v11, v12 + v10);
  }

  else
  {

    sub_100A5172C();
    v16 = swift_allocError();
    *v17 = v1;
    *(v17 + 8) = 1;
    swift_willThrow();
    *(v0 + 1456) = v16;
    v18 = *(v0 + 1208);
    v19 = *(v0 + 1200);

    return _swift_task_switch(sub_100A3F09C, v19, v18);
  }
}

uint64_t sub_100A3F09C()
{
  v148 = v0;
  v1 = *(v0 + 1456);

  *(v0 + 936) = v1;
  swift_errorRetain();
  sub_10010FC20(&qword_1011AB640, L"D\v\a");
  if (!swift_dynamicCast())
  {
    v15 = *(v0 + 1408);

    swift_willThrow();

LABEL_9:

    v16 = *(v0 + 8);
LABEL_10:

    return v16();
  }

  v2 = *(v0 + 720);
  *(v0 + 1480) = v2;
  v3 = *(v0 + 728);
  *(v0 + 1488) = v3;
  v4 = _convertErrorToNSError(_:)();
  *(v0 + 1496) = v4;
  _s3__C4CodeOMa_0(0);
  *(v0 + 928) = 1;
  sub_100A52FE8(&qword_1011A79D0, _s3__C4CodeOMa_0, &unk_100EEB82C);
  v5 = v4;
  v6 = static _ErrorCodeProtocol.~= infix(_:_:)();

  if (v6)
  {

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = *(v0 + 992);
      v10 = *(v0 + 984);
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v147[0] = v12;
      *v11 = 136446210;
      *(v11 + 4) = sub_100010678(v10, v9, v147);
      _os_log_impl(&_mh_execute_header, v7, v8, "Intent id=%{public}s) — Offering replace intent options to user", v11, 0xCu);
      sub_10000959C(v12);
    }

    *(v0 + 1504) = static MainActor.shared.getter();
    v14 = dispatch thunk of Actor.unownedExecutor.getter();
    *(v0 + 1512) = v14;
    *(v0 + 1520) = v13;

    return _swift_task_switch(sub_100A40E30, v14, v13);
  }

  *(v0 + 888) = 5;
  v17 = v5;
  v18 = static _ErrorCodeProtocol.~= infix(_:_:)();

  if (v18)
  {
    v144 = *(v0 + 1408);
    v19 = *(v0 + 1248);
    v20 = *(v0 + 1008);
    v21 = *(v0 + 976);

    v22 = *(v20 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator + 24);
    v23 = *(v20 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator + 32);
    sub_10000954C((v20 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator), v22);
    sub_1000089F8(v21 + *(v19 + 28), v0 + 144, &qword_1011ACCA0, &qword_100EF7480);
    *(v0 + 216) = 2;
    (*(v23 + 8))(v0 + 144, v22, v23);
    sub_100A52D6C(v0 + 144);
    sub_100A5172C();
    swift_allocError();
    *v24 = 1;
    *(v24 + 8) = 3;
    swift_willThrow();

    goto LABEL_9;
  }

  *(v0 + 856) = 3;
  v25 = v17;
  v26 = static _ErrorCodeProtocol.~= infix(_:_:)();

  if (v26)
  {
    sub_100A51780(*(v0 + 976), *(v0 + 1128), type metadata accessor for PlaybackIntentDescriptor.IntentType);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v28 = *(v0 + 1128);
    if (EnumCaseMultiPayload == 1)
    {
      v29 = *(v0 + 1096);
      v30 = *(v0 + 1088);
      v31 = *(v0 + 1080);
      (*(v30 + 32))(v29, v28, v31);
      v32 = MusicPlaybackIntentDescriptor.playbackIntent.getter();
      (*(v30 + 8))(v29, v31);
    }

    else
    {
      v32 = *v28;
    }

    *(v0 + 1608) = v32;
    v41 = *(v0 + 220);
    v42 = *(v0 + 976);
    v43 = swift_task_alloc();
    *(v0 + 1616) = v43;
    *v43 = v0;
    v43[1] = sub_100A41B6C;
    v44 = *(v0 + 992);
    v45 = *(v0 + 984);

    return sub_100A3B22C(v32, v45, v44, v42 + v41);
  }

  _s3__C4CodeOMa_1(0);
  *(v0 + 848) = 1001;
  sub_100A52FE8(&unk_1011ACC70, _s3__C4CodeOMa_1, &unk_100EEA9A8);
  v33 = v25;
  v34 = static _ErrorCodeProtocol.~= infix(_:_:)();

  if ((v34 & 1) == 0)
  {
    v46 = *(v0 + 1408);

LABEL_56:
    sub_100A516D8();
    swift_allocError();
    *v88 = v2;
    v88[1] = v3;
    swift_willThrow();
    swift_errorRetain();

    goto LABEL_9;
  }

  sub_100A51780(*(v0 + 976), *(v0 + 1120), type metadata accessor for PlaybackIntentDescriptor.IntentType);
  v35 = swift_getEnumCaseMultiPayload();
  v36 = *(v0 + 1120);
  if (v35 == 1)
  {
    v37 = *(v0 + 1096);
    v38 = *(v0 + 1088);
    v39 = *(v0 + 1080);
    (*(v38 + 32))(v37, v36, v39);
    v40 = MusicPlaybackIntentDescriptor.playbackIntent.getter();
    (*(v38 + 8))(v37, v39);
  }

  else
  {
    v40 = *v36;
  }

  v47 = [v40 sharedListeningProperties];

  if (!v47)
  {
    goto LABEL_41;
  }

  v48 = [v33 userInfo];
  v49 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v49 + 16))
  {

    goto LABEL_43;
  }

  v52 = sub_100019C28(v50, v51);
  v54 = v53;

  if ((v54 & 1) == 0)
  {
LABEL_43:

    goto LABEL_44;
  }

  sub_10000DD18(*(v49 + 56) + 32 * v52, v0 + 576);

  type metadata accessor for MPCPlayerRequestError(0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_41:

LABEL_44:
    if (!*(*(v0 + 1008) + *(v0 + 1216)))
    {
      goto LABEL_55;
    }

    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter((v0 + 840));

    v73 = *(v0 + 840);
    if (!v73)
    {
      goto LABEL_55;
    }

    v74 = [v33 userInfo];
    v75 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v76 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    if (*(v75 + 16))
    {
      v78 = sub_100019C28(v76, v77);
      v80 = v79;

      if (v80)
      {
        v81 = (v0 + 832);
        sub_10000DD18(*(v75 + 56) + 32 * v78, v0 + 608);

        type metadata accessor for MPCMusicBehaviorError(0);
        if (swift_dynamicCast())
        {
          v82 = *v81;
          *(v0 + 800) = *v81;
          sub_100A52FE8(&qword_1011A7950, type metadata accessor for MPCMusicBehaviorError, &unk_100EEB71C);
          _BridgedStoredNSError.code.getter();
          if (*(v0 + 792) == 6)
          {
            v146 = v0;
            *(v0 + 968) = v82;
            v83 = _BridgedStoredNSError.userInfo.getter();
            v84 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            if (*(v83 + 16) && (v86 = sub_100019C28(v84, v85), (v87 & 1) != 0))
            {
              sub_10000DD18(*(v83 + 56) + 32 * v86, v0 + 512);
            }

            else
            {
              *(v0 + 512) = 0u;
              *(v0 + 528) = 0u;
            }

            if (!*(v0 + 536))
            {

              sub_1000095E8(v0 + 512, &qword_1011ABB20, &unk_100EF1530);
              goto LABEL_55;
            }

            v89 = v0 + 768;
            sub_10010FC20(&qword_1011ACC80, &qword_100EF7468);
            if (swift_dynamicCast())
            {
              v145 = v82;
              if (*(*v89 + 16))
              {
                v90 = *(*v89 + 32);

                *(v146 + 776) = v90;
                _BridgedStoredNSError.code.getter();
                if (*(v146 + 784) == 4)
                {
                  v143 = v90;
                  *(v146 + 752) = v90;
                  v91 = _BridgedStoredNSError.userInfo.getter();
                  v92 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  if (*(v91 + 16) && (v94 = sub_100019C28(v92, v93), (v95 & 1) != 0))
                  {
                    v0 = v146;
                    sub_10000DD18(*(v91 + 56) + 32 * v94, v146 + 640);
                  }

                  else
                  {
                    v0 = v146;
                    *(v146 + 640) = 0u;
                    *(v146 + 656) = 0u;
                  }

                  if (*(v0 + 664))
                  {
                    v96 = v0 + 808;
                    sub_10010FC20(&qword_1011ACC88, &unk_100EF7470);
                    if (swift_dynamicCast())
                    {
                      if (*(*v96 + 16))
                      {
                        v97 = *(*v96 + 32);

                        *(v146 + 816) = v97;
                        type metadata accessor for MPCError(0);
                        sub_100A52FE8(&qword_1011A79A0, type metadata accessor for MPCError, &unk_100EEB894);
                        _BridgedStoredNSError.code.getter();

                        if (*(v146 + 824) == 61)
                        {

                          v98 = Logger.logObject.getter();
                          v99 = static os_log_type_t.default.getter();

                          if (os_log_type_enabled(v98, v99))
                          {
                            v100 = *(v146 + 992);
                            v101 = *(v146 + 984);
                            v102 = swift_slowAlloc();
                            v103 = swift_slowAlloc();
                            v147[0] = v103;
                            *v102 = 136446210;
                            *(v102 + 4) = sub_100010678(v101, v100, v147);
                            _os_log_impl(&_mh_execute_header, v98, v99, "Intent id=%{public}s) — SharePlayTogether content not available in host's storefront", v102, 0xCu);
                            sub_10000959C(v103);
                          }

                          v142 = (v146 + 376);
                          v104 = *(v146 + 1072);
                          v105 = *(v146 + 1064);
                          v106 = *(v146 + 1056);
                          v107 = *(v146 + 1048);
                          String.LocalizationValue.init(stringLiteral:)();
                          v138 = *(v106 + 16);
                          v138(v105, v104, v107);
                          if (qword_1011A6740 != -1)
                          {
                            swift_once();
                          }

                          v108 = *(v146 + 1072);
                          v109 = *(v146 + 1064);
                          v110 = *(v146 + 1056);
                          v111 = *(v146 + 1048);
                          v137 = *(v146 + 1032);
                          v139 = *(v146 + 1024);
                          v140 = *(v146 + 1016);
                          v141 = *(v146 + 1008);
                          v112 = qword_101219808;
                          static Locale.current.getter();
                          v113 = v112;
                          v114 = String.init(localized:table:bundle:locale:comment:)();
                          v135 = v115;
                          v136 = v114;
                          v116 = *(v110 + 8);
                          v116(v108, v111);
                          String.LocalizationValue.init(stringLiteral:)();
                          v138(v109, v108, v111);
                          static Locale.current.getter();
                          v117 = String.init(localized:table:bundle:locale:comment:)();
                          v133 = v118;
                          v134 = v117;
                          v116(v108, v111);
                          sub_10010FC20(&qword_1011A7C00, &qword_100EEC4A0);
                          v119 = swift_allocObject();
                          *(v119 + 16) = xmmword_100EBC6B0;
                          String.LocalizationValue.init(stringLiteral:)();
                          v138(v109, v108, v111);
                          static Locale.current.getter();
                          v120 = String.init(localized:table:bundle:locale:comment:)();
                          v122 = v121;
                          v116(v108, v111);
                          UUID.init()();
                          v123 = UUID.uuidString.getter();
                          v125 = v124;
                          (*(v139 + 8))(v137, v140);
                          *(v119 + 32) = v123;
                          *(v119 + 40) = v125;
                          *(v119 + 48) = v120;
                          *(v119 + 56) = v122;
                          *(v119 + 64) = 2;
                          *(v119 + 72) = 0;
                          *(v119 + 80) = 0;
                          LOBYTE(v147[0]) = 1;
                          *(v146 + 376) = v136;
                          *(v146 + 384) = v135;
                          *(v146 + 392) = v134;
                          *(v146 + 400) = v133;
                          *(v146 + 408) = 0;
                          *(v146 + 416) = 0;
                          *(v146 + 424) = 1;
                          *(v146 + 432) = v119;
                          *(v146 + 440) = 0;
                          v126 = *(v141 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator + 24);
                          v127 = *(v141 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator + 32);
                          sub_10000954C((v141 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator), v126);
                          v128 = *(v146 + 424);
                          *(v146 + 256) = *(v146 + 408);
                          *(v146 + 272) = v128;
                          *(v146 + 288) = *(v146 + 440);
                          v129 = *(v146 + 392);
                          *(v146 + 224) = *v142;
                          *(v146 + 240) = v129;
                          *(v146 + 296) = 0;
                          v130 = *(v127 + 8);
                          sub_10053A574(v142, v146 + 304);
                          v130(v146 + 224, v126, v127);

                          sub_100344A84(v142);

                          sub_100A52D6C(v146 + 224);
                          v131 = *(v146 + 1408);

                          v16 = *(v146 + 8);
                          goto LABEL_10;
                        }
                      }

                      else
                      {
                      }
                    }

                    v0 = v146;
                  }

                  else
                  {

                    sub_1000095E8(v0 + 640, &qword_1011ABB20, &unk_100EF1530);
                  }
                }

                else
                {

                  v0 = v146;
                }
              }

              else
              {
              }

              goto LABEL_55;
            }
          }
        }

LABEL_55:
        v46 = *(v0 + 1408);
        goto LABEL_56;
      }
    }

    else
    {
    }

    goto LABEL_55;
  }

  v55 = *(v0 + 864);
  *(v0 + 1632) = v55;
  *(v0 + 872) = v55;
  sub_100A52FE8(&unk_1011ACC90, type metadata accessor for MPCPlayerRequestError, &unk_100EEA900);
  _BridgedStoredNSError.code.getter();
  if (*(v0 + 880) != 1000)
  {

    goto LABEL_44;
  }

  *(v0 + 896) = v55;
  v56 = _BridgedStoredNSError.userInfo.getter();
  v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v56 + 16))
  {

    goto LABEL_68;
  }

  v59 = sub_100019C28(v57, v58);
  v61 = v60;

  if ((v61 & 1) == 0)
  {
LABEL_68:

    goto LABEL_69;
  }

  sub_10000DD18(*(v56 + 56) + 32 * v59, v0 + 544);

  type metadata accessor for MPCError(0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_69:

LABEL_70:

    goto LABEL_44;
  }

  v62 = *(v0 + 904);
  *(v0 + 1640) = v62;
  *(v0 + 912) = v62;
  sub_100A52FE8(&qword_1011A79A0, type metadata accessor for MPCError, &unk_100EEB894);
  _BridgedStoredNSError.code.getter();
  if (*(v0 + 920) != 58)
  {

    goto LABEL_70;
  }

  v63 = Logger.logObject.getter();
  v64 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v63, v64))
  {
    v65 = *(v0 + 992);
    v66 = *(v0 + 984);
    v67 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    v147[0] = v68;
    *v67 = 136446210;
    *(v67 + 4) = sub_100010678(v66, v65, v147);
    _os_log_impl(&_mh_execute_header, v63, v64, "Intent id=%{public}s) — SharedListening requires system route", v67, 0xCu);
    sub_10000959C(v68);
  }

  v69 = objc_opt_self();
  *(v0 + 1648) = v69;
  v70 = [v69 systemRoute];
  *(v0 + 1656) = v70;
  *(v0 + 80) = v0;
  *(v0 + 88) = sub_100A41C90;
  v71 = swift_continuation_init();
  *(v0 + 504) = sub_10010FC20(&unk_1011AD160, &unk_100EF0DD8);
  *(v0 + 448) = _NSConcreteStackBlock;
  *(v0 + 456) = 1107296256;
  *(v0 + 464) = sub_100950FD0;
  *(v0 + 472) = &unk_1010DA7D8;
  *(v0 + 480) = v71;
  [v69 setActiveRoute:v70 completion:v0 + 448];

  return _swift_continuation_await(v0 + 80, v72);
}

uint64_t sub_100A406D8()
{
  v2 = *v1;
  *(*v1 + 1472) = v0;

  if (v0)
  {
    v3 = *(v2 + 1440);
    v4 = *(v2 + 1432);
    v5 = sub_100A409C8;
  }

  else
  {

    v3 = *(v2 + 1440);
    v4 = *(v2 + 1432);
    v5 = sub_100A40814;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100A40814()
{
  v1 = v0[177];

  v2 = v0[151];
  v3 = v0[150];

  return _swift_task_switch(sub_100A40884, v3, v2);
}

uint64_t sub_100A40884()
{
  v1 = *(v0 + 1408);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100A409C8()
{

  v0[182] = v0[184];
  v1 = v0[151];
  v2 = v0[150];

  return _swift_task_switch(sub_100A3F09C, v2, v1);
}

uint64_t sub_100A40A44()
{
  v1 = *(v0 + 1240);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100A40B90()
{
  v1 = *(v0 + 1240);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100A40CDC()
{
  v1 = v0[171];
  v2 = v0[155];

  v3 = v0[1];

  return v3();
}

uint64_t sub_100A40E30(uint64_t a1)
{
  v2 = static MainActor.shared.getter();
  *(v1 + 1528) = v2;
  if (v2)
  {
    swift_getObjectType();
    v3 = dispatch thunk of Actor.unownedExecutor.getter();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  return _swift_task_switch(sub_100A40EC4, v3, v5);
}

uint64_t sub_100A40EC4()
{
  v1 = v0[126];
  v0[2] = v0;
  v0[7] = v0 + 92;
  v0[3] = sub_100A40F78;
  v2 = swift_continuation_init();
  sub_100A46948(v2, v1);

  return _swift_continuation_await(v0 + 2, v3);
}

uint64_t sub_100A40F78()
{
  v1 = *v0;
  v2 = *v0;
  *(v2 + 1536) = *(*v0 + 736);
  *(v2 + 298) = *(v2 + 744);
  v3 = *(v1 + 1520);
  v4 = *(v1 + 1512);

  return _swift_task_switch(sub_100A4109C, v4, v3);
}

uint64_t sub_100A4109C()
{

  v1 = *(v0 + 1208);
  v2 = *(v0 + 1200);

  return _swift_task_switch(sub_100A41104, v2, v1);
}

uint64_t sub_100A41104()
{
  if (*(v0 + 298))
  {
    v1 = *(v0 + 1496);
    v2 = *(v0 + 1408);

    sub_100A5172C();
    swift_allocError();
    *v3 = 2;
    *(v3 + 8) = 3;
    swift_willThrow();

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    sub_100A51780(*(v0 + 976), *(v0 + 1136), type metadata accessor for PlaybackIntentDescriptor.IntentType);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v7 = *(v0 + 1136);
    if (EnumCaseMultiPayload == 1)
    {
      v8 = *(v0 + 1096);
      v9 = *(v0 + 1088);
      v10 = *(v0 + 1080);
      (*(v9 + 32))(v8, v7, v10);
      v11 = MusicPlaybackIntentDescriptor.playbackIntent.getter();
      (*(v9 + 8))(v8, v10);
    }

    else
    {
      v11 = *v7;
    }

    *(v0 + 1544) = v11;
    *(v0 + 1552) = static MainActor.shared.getter();
    v13 = dispatch thunk of Actor.unownedExecutor.getter();
    *(v0 + 1560) = v13;
    *(v0 + 1568) = v12;

    return _swift_task_switch(sub_100A413C0, v13, v12);
  }
}

uint64_t sub_100A413C0()
{
  v21 = v0;
  v1 = sub_100A463B8(*(v0 + 1544), *(v0 + 1360), *(v0 + 1536));
  *(v0 + 1576) = v1;
  if (v1[2])
  {

    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = *(v0 + 992);
      v5 = *(v0 + 984);
      v6 = swift_slowAlloc();
      v20[0] = swift_slowAlloc();
      *v6 = 136446466;
      *(v6 + 4) = sub_100010678(v5, v4, v20);
      *(v6 + 12) = 2082;
      sub_10010FC20(&qword_1011ACA60, &qword_100EF6ED0);
      v7 = Array.description.getter();
      v9 = sub_100010678(v7, v8, v20);

      *(v6 + 14) = v9;
      _os_log_impl(&_mh_execute_header, v2, v3, "Intent id=%{public}s) — Performing the following commands: %{public}s", v6, 0x16u);
      swift_arrayDestroy();
    }

    v10 = *(v0 + 1544);
    v11 = *(v0 + 220);
    v12 = *(v0 + 976);
    v13 = swift_task_alloc();
    *(v0 + 1592) = v13;
    *v13 = v0;
    v13[1] = sub_100A417D8;
    v14 = *(v0 + 1408);

    return sub_100A43F80(v1, 0x10000, 0, v14, v10, v12 + v11);
  }

  else
  {

    sub_100A5172C();
    v16 = swift_allocError();
    *v17 = v1;
    *(v17 + 8) = 1;
    swift_willThrow();
    *(v0 + 1584) = v16;
    v18 = *(v0 + 1208);
    v19 = *(v0 + 1200);

    return _swift_task_switch(sub_100A4165C, v19, v18);
  }
}

uint64_t sub_100A4165C()
{
  v1 = v0[193];
  v2 = v0[187];
  v3 = v0[176];

  v4 = v0[1];

  return v4();
}

uint64_t sub_100A417D8()
{
  v2 = *v1;
  *(*v1 + 1600) = v0;

  if (v0)
  {
    v3 = *(v2 + 1568);
    v4 = *(v2 + 1560);
    v5 = sub_100A41AF0;
  }

  else
  {

    v3 = *(v2 + 1568);
    v4 = *(v2 + 1560);
    v5 = sub_100A41914;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100A41914()
{
  v1 = v0[193];

  v2 = v0[151];
  v3 = v0[150];

  return _swift_task_switch(sub_100A41984, v3, v2);
}

uint64_t sub_100A41984()
{
  v1 = v0[187];

  v2 = v0[176];

  v3 = v0[1];

  return v3();
}

uint64_t sub_100A41AF0()
{

  v0[198] = v0[200];
  v1 = v0[151];
  v2 = v0[150];

  return _swift_task_switch(sub_100A4165C, v2, v1);
}

uint64_t sub_100A41B6C()
{
  v2 = *v1;
  *(*v1 + 1624) = v0;

  if (v0)
  {
    v3 = *(v2 + 1208);
    v4 = *(v2 + 1200);
    v5 = sub_100A42704;
  }

  else
  {

    v3 = *(v2 + 1208);
    v4 = *(v2 + 1200);
    v5 = sub_100A53DC8;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100A41C90()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 1664) = v2;
  v3 = *(v1 + 1208);
  v4 = *(v1 + 1200);
  if (v2)
  {
    v5 = sub_100A42880;
  }

  else
  {
    v5 = sub_100A41DC0;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100A41DC0()
{
  v1 = *(v0 + 1112);
  v2 = *(v0 + 976);

  sub_100A51780(v2, v1, type metadata accessor for PlaybackIntentDescriptor.IntentType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v4 = *(v0 + 1112);
  if (EnumCaseMultiPayload == 1)
  {
    v5 = *(v0 + 1096);
    v6 = *(v0 + 1088);
    v7 = *(v0 + 1080);
    (*(v6 + 32))(v5, v4, v7);
    v8 = MusicPlaybackIntentDescriptor.playbackIntent.getter();
    (*(v6 + 8))(v5, v7);
  }

  else
  {
    v8 = *v4;
  }

  *(v0 + 1672) = v8;
  *(v0 + 1680) = [*(v0 + 1648) systemRoute];
  *(v0 + 1688) = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v0 + 1696) = v10;
  *(v0 + 1704) = v9;

  return _swift_task_switch(sub_100A41F18, v10, v9);
}

uint64_t sub_100A41F18()
{
  v22 = v0;
  v1 = sub_100A463B8(*(v0 + 1672), *(v0 + 1360), *(v0 + 1352));
  *(v0 + 1712) = v1;
  if (v1[2])
  {

    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = *(v0 + 992);
      v5 = *(v0 + 984);
      v6 = swift_slowAlloc();
      v21[0] = swift_slowAlloc();
      *v6 = 136446466;
      *(v6 + 4) = sub_100010678(v5, v4, v21);
      *(v6 + 12) = 2082;
      sub_10010FC20(&qword_1011ACA60, &qword_100EF6ED0);
      v7 = Array.description.getter();
      v9 = sub_100010678(v7, v8, v21);

      *(v6 + 14) = v9;
      _os_log_impl(&_mh_execute_header, v2, v3, "Intent id=%{public}s) — Performing the following commands: %{public}s", v6, 0x16u);
      swift_arrayDestroy();
    }

    v10 = *(v0 + 1680);
    v11 = *(v0 + 1672);
    v12 = *(v0 + 220);
    v13 = *(v0 + 976);
    v14 = swift_task_alloc();
    *(v0 + 1728) = v14;
    *v14 = v0;
    v14[1] = sub_100A4234C;

    return sub_100A43F80(v1, 0x10000, 1, v10, v11, v13 + v12);
  }

  else
  {
    v16 = *(v0 + 1680);

    sub_100A5172C();
    v17 = swift_allocError();
    *v18 = v1;
    *(v18 + 8) = 1;
    swift_willThrow();

    *(v0 + 1720) = v17;
    v19 = *(v0 + 1208);
    v20 = *(v0 + 1200);

    return _swift_task_switch(sub_100A421C0, v20, v19);
  }
}

uint64_t sub_100A421C0()
{
  v1 = v0[209];
  v2 = v0[205];
  v3 = v0[204];
  v4 = v0[187];
  v5 = v0[176];

  v6 = v0[1];

  return v6();
}

uint64_t sub_100A4234C()
{
  v2 = *v1;
  *(*v1 + 1736) = v0;

  if (v0)
  {
    v3 = *(v2 + 1704);
    v4 = *(v2 + 1696);
    v5 = sub_100A4267C;
  }

  else
  {

    v3 = *(v2 + 1704);
    v4 = *(v2 + 1696);
    v5 = sub_100A42488;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100A42488()
{
  v1 = v0[210];
  v2 = v0[209];

  v3 = v0[151];
  v4 = v0[150];

  return _swift_task_switch(sub_100A42500, v4, v3);
}

uint64_t sub_100A42500()
{
  v1 = v0[205];
  v2 = v0[204];
  v3 = v0[187];

  v4 = v0[176];

  v5 = v0[1];

  return v5();
}

uint64_t sub_100A4267C()
{

  *(v0 + 1720) = *(v0 + 1736);
  v1 = *(v0 + 1208);
  v2 = *(v0 + 1200);

  return _swift_task_switch(sub_100A421C0, v2, v1);
}

uint64_t sub_100A42704()
{
  v1 = v0[201];
  v2 = v0[187];
  v3 = v0[176];

  v4 = v0[1];

  return v4();
}

uint64_t sub_100A42880()
{
  v1 = v0[207];
  v2 = v0[205];
  v3 = v0[204];
  v4 = v0[187];
  v5 = v0[176];

  swift_willThrow();

  v6 = v0[1];

  return v6();
}

uint64_t sub_100A42A14(uint64_t a1)
{
  v2[26] = a1;
  v2[27] = v1;
  type metadata accessor for MainActor();
  v2[28] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[29] = v4;
  v2[30] = v3;

  return _swift_task_switch(sub_100A42AAC, v4, v3);
}

uint64_t sub_100A42AAC()
{
  v1 = *(v0 + 216);
  v2 = OBJC_IVAR____TtC9MusicCore18PlaybackController_player;
  swift_beginAccess();
  v3 = *(v1 + v2);
  *(v0 + 248) = v3;
  if (v3)
  {

    if (sub_100A51CD0(&_mh_execute_header, v3))
    {
      if (qword_1011A6A60 != -1)
      {
        swift_once();
      }

      v4 = type metadata accessor for Logger();
      *(v0 + 272) = sub_1000060E4(v4, static Logger.playbackController);
      v5 = Logger.logObject.getter();
      v6 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        *v7 = 0;
        _os_log_impl(&_mh_execute_header, v5, v6, "[Auto-Sing] Awaiting for Vocals Command…", v7, 2u);
      }

      *(v0 + 160) = &type metadata for Player.VocalsCommand;
      *(v0 + 168) = &protocol witness table for Player.VocalsCommand;
      *(v0 + 140) = 1;
      *(v0 + 136) = 0;
      v8 = swift_task_alloc();
      *(v0 + 280) = v8;
      *v8 = v0;
      v8[1] = sub_100A430B8;
      v9 = *(v0 + 208);
      v10 = 5.0;
      v11 = v0 + 136;
    }

    else
    {
      if (qword_1011A6A60 != -1)
      {
        swift_once();
      }

      v14 = type metadata accessor for Logger();
      sub_1000060E4(v14, static Logger.playbackController);
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&_mh_execute_header, v15, v16, "[Auto-Sing] Preparing VA…", v17, 2u);
      }

      *(v0 + 120) = &type metadata for Player.VocalsCommand.Prepare;
      *(v0 + 128) = &protocol witness table for Player.VocalsCommand.Prepare;
      v18 = swift_task_alloc();
      *(v0 + 256) = v18;
      *v18 = v0;
      v18[1] = sub_100A42DFC;
      v9 = *(v0 + 208);
      v11 = v0 + 96;
      v10 = 5.0;
    }

    return Player.performWhenAvailable(_:options:issuer:timeout:)(v11, 0, 0, 0, v9, v10);
  }

  else
  {

    v12 = *(v0 + 8);

    return v12();
  }
}

uint64_t sub_100A42DFC(void *a1)
{
  v4 = *v2;
  *(*v2 + 264) = v1;

  if (v1)
  {
    v5 = v4[29];
    v6 = v4[30];
    v7 = sub_100A43328;
  }

  else
  {

    sub_10000959C(v4 + 12);
    v5 = v4[29];
    v6 = v4[30];
    v7 = sub_100A42F28;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_100A42F28()
{
  if (qword_1011A6A60 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 272) = sub_1000060E4(v1, static Logger.playbackController);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "[Auto-Sing] Awaiting for Vocals Command…", v4, 2u);
  }

  *(v0 + 160) = &type metadata for Player.VocalsCommand;
  *(v0 + 168) = &protocol witness table for Player.VocalsCommand;
  *(v0 + 140) = 1;
  *(v0 + 136) = 0;
  v5 = swift_task_alloc();
  *(v0 + 280) = v5;
  *v5 = v0;
  v5[1] = sub_100A430B8;
  v6 = *(v0 + 208);

  return Player.performWhenAvailable(_:options:issuer:timeout:)(v0 + 136, 0, 0, 0, v6, 5.0);
}

uint64_t sub_100A430B8(void *a1)
{
  v4 = *v2;
  *(*v2 + 288) = v1;

  if (v1)
  {
    v5 = v4[29];
    v6 = v4[30];
    v7 = sub_100A43568;
  }

  else
  {

    sub_10000959C(v4 + 17);
    v5 = v4[29];
    v6 = v4[30];
    v7 = sub_100A431E4;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_100A431E4()
{

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "[Auto-Sing] Vocals command performed", v3, 2u);
  }

  v4 = (*(v0 + 216) + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator);
  v5 = v4[3];
  v6 = v4[4];
  sub_10000954C(v4, v5);
  *(v0 + 16) = 0;
  *(v0 + 88) = 1;
  (*(v6 + 8))(v0 + 16, v5, v6);

  sub_100A52D6C(v0 + 16);
  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_100A43328()
{
  v16 = v0;

  sub_10000959C((v0 + 96));
  v1 = *(v0 + 264);
  if (qword_1011A6A60 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000060E4(v2, static Logger.playbackController);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v15 = v6;
    *v5 = 136446210;
    *(v0 + 200) = v1;
    swift_errorRetain();
    sub_10010FC20(&qword_1011AB640, L"D\v\a");
    v7 = String.init<A>(describing:)();
    v9 = sub_100010678(v7, v8, &v15);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "[Auto-Sing] Failed with error=%{public}s", v5, 0xCu);
    sub_10000959C(v6);
  }

  else
  {
  }

  v10 = (*(v0 + 216) + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator);
  v11 = v10[3];
  v12 = v10[4];
  sub_10000954C(v10, v11);
  *(v0 + 16) = 0;
  *(v0 + 88) = 1;
  (*(v12 + 8))(v0 + 16, v11, v12);

  sub_100A52D6C(v0 + 16);
  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_100A43568()
{
  v16 = v0;

  sub_10000959C((v0 + 136));
  v1 = *(v0 + 288);
  if (qword_1011A6A60 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000060E4(v2, static Logger.playbackController);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v15 = v6;
    *v5 = 136446210;
    *(v0 + 200) = v1;
    swift_errorRetain();
    sub_10010FC20(&qword_1011AB640, L"D\v\a");
    v7 = String.init<A>(describing:)();
    v9 = sub_100010678(v7, v8, &v15);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "[Auto-Sing] Failed with error=%{public}s", v5, 0xCu);
    sub_10000959C(v6);
  }

  else
  {
  }

  v10 = (*(v0 + 216) + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator);
  v11 = v10[3];
  v12 = v10[4];
  sub_10000954C(v10, v11);
  *(v0 + 16) = 0;
  *(v0 + 88) = 1;
  (*(v12 + 8))(v0 + 16, v11, v12);

  sub_100A52D6C(v0 + 16);
  v13 = *(v0 + 8);

  return v13();
}

BOOL PlaybackController.canPerform(_:)(void *a1)
{
  v3 = OBJC_IVAR____TtC9MusicCore18PlaybackController_player;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (v4)
  {
    v5 = a1[3];
    v6 = a1[4];
    v7 = sub_10000954C(a1, v5);

    v8 = sub_100A6CF80(v7, v4, v5, v6);
  }

  else
  {
    return 0;
  }

  return v8;
}

uint64_t PlaybackController.canPerform(anyOf:)(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC9MusicCore18PlaybackController_player;
  swift_beginAccess();
  if (*(v2 + v4))
  {

    v5 = Player.canPerform(anyOf:)(a1);
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t PlaybackController.performWhenAvailable(_:issuer:timeout:)(uint64_t a1, uint64_t a2, double a3)
{
  *(v4 + 64) = v3;
  *(v4 + 56) = a3;
  *(v4 + 40) = a1;
  *(v4 + 48) = a2;
  type metadata accessor for MainActor();
  *(v4 + 72) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v4 + 80) = v6;
  *(v4 + 88) = v5;

  return _swift_task_switch(sub_100A43990, v6, v5);
}

uint64_t sub_100A43990()
{
  v1 = *(v0 + 8);
  v2 = OBJC_IVAR____TtC9MusicCore18PlaybackController_player;
  swift_beginAccess();
  v3 = *(v1 + v2);
  *(v0 + 12) = v3;
  if (v3)
  {

    v4 = swift_task_alloc();
    *(v0 + 13) = v4;
    *v4 = v0;
    v4[1] = sub_100A43AAC;
    v5 = v0[7];
    v7 = *(v0 + 5);
    v6 = *(v0 + 6);

    return Player.performWhenAvailable(_:options:issuer:timeout:)(v7, 0x10000, 1, 0, v6, v5);
  }

  else
  {

    v9 = *(v0 + 1);

    return v9(0);
  }
}

uint64_t sub_100A43AAC(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 112) = v1;

  if (v1)
  {
    v5 = v4[10];
    v6 = v4[11];
    v7 = sub_100A43C44;
  }

  else
  {

    v4[15] = a1;
    v5 = v4[10];
    v6 = v4[11];
    v7 = sub_100A43BDC;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_100A43BDC()
{

  v1 = *(v0 + 120);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_100A43C44()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100A43D98(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 40) = v1;

  if (v1)
  {
    v5 = dispatch thunk of Actor.unownedExecutor.getter();
    v7 = v6;
    v8 = sub_1003EF994;
  }

  else
  {
    *(v4 + 48) = a1;
    v5 = dispatch thunk of Actor.unownedExecutor.getter();
    v7 = v9;
    v8 = sub_100A43F18;
  }

  return _swift_task_switch(v8, v5, v7);
}

uint64_t sub_100A43F18()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 48);

  return v1(v2);
}

uint64_t sub_100A43F80(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 176) = a6;
  *(v7 + 184) = v6;
  *(v7 + 160) = a4;
  *(v7 + 168) = a5;
  *(v7 + 89) = a3;
  *(v7 + 144) = a1;
  *(v7 + 152) = a2;
  type metadata accessor for MainActor();
  *(v7 + 192) = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v7 + 200) = v9;
  *(v7 + 208) = v8;

  return _swift_task_switch(sub_100A44024, v9, v8);
}

uint64_t sub_100A44024()
{
  v1 = *(v0 + 184);
  v2 = OBJC_IVAR____TtC9MusicCore18PlaybackController_player;
  *(v0 + 216) = OBJC_IVAR____TtC9MusicCore18PlaybackController_player;
  swift_beginAccess();
  v3 = *(v1 + v2);
  *(v0 + 224) = v3;
  if (v3)
  {

    v4 = swift_task_alloc();
    *(v0 + 232) = v4;
    *v4 = v0;
    v4[1] = sub_100A44144;
    v5 = *(v0 + 176);
    v6 = *(v0 + 152);
    v7 = *(v0 + 160);
    v8 = *(v0 + 89);
    v9 = *(v0 + 144);

    return Player.perform(_:options:issuer:)(v9, v6, v8, v7, v5);
  }

  else
  {

    v11 = *(v0 + 8);

    return v11(_swiftEmptyArrayStorage);
  }
}

uint64_t sub_100A44144(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 240) = v1;

  if (v1)
  {
    v5 = v4[25];
    v6 = v4[26];
    v7 = sub_100A4462C;
  }

  else
  {

    v4[31] = a1;
    v5 = v4[25];
    v6 = v4[26];
    v7 = sub_100A44274;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_100A44274()
{
  v38 = v1;
  v2 = *(v1 + 248);

  v3 = (v2 & 0xFFFFFFFFFFFFFF8);
  if (v2 >> 62)
  {
    v4 = _CocoaArrayWrapper.endIndex.getter();
    if (!v4)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v4 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
LABEL_12:
      v32.n128_f64[0] = sub_100A53D54(v4);
      goto LABEL_13;
    }
  }

  if ((v2 & 0xC000000000000001) != 0)
  {
    v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_20;
    }

    v5 = *(v2 + 32);
  }

  v3 = v5;
  v6 = [v5 dialog];
  if (!v6)
  {

    v4 = 0;
    goto LABEL_12;
  }

  v0 = v6;
  if (qword_1011A6A60 != -1)
  {
LABEL_20:
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_1000060E4(v7, static Logger.playbackController);

  v8 = v3;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  v35 = v8;
  v36 = v0;
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    *v11 = 136446466;
    sub_10010FC20(&qword_1011ACA60, &qword_100EF6ED0);
    v12 = Array.description.getter();
    v14 = sub_100010678(v12, v13, &v37);

    *(v11 + 4) = v14;
    *(v11 + 12) = 2082;
    v15 = v8;
    v16 = [v15 description];
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    v20 = sub_100010678(v17, v19, &v37);

    *(v11 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v9, v10, "⤵️ 🛑 Commands %{public}s — Perform error -> Presenting dialog for status=%{public}s", v11, 0x16u);
    swift_arrayDestroy();
  }

  v21 = *(v1 + 216);
  v22 = *(v1 + 184);
  v23 = *(v1 + 168);
  v24 = (v22 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator);
  v25 = *(v22 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator + 24);
  v26 = *(v22 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator + 32);
  sub_10000954C((v22 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator), v25);
  v27 = (*(v26 + 40))(v25, v26);
  v28 = *(v22 + v21);
  v29 = v24[3];
  v30 = v24[4];
  sub_10000954C(v24, v29);
  v31 = v23;

  MPCPlayerCommandDialog.alert(context:completion:)(v23, v27, v28, 0, 0, (v1 + 16));
  *(v1 + 88) = 0;
  (*(v30 + 8))(v1 + 16, v29, v30);
  sub_100A52D6C(v1 + 16);

LABEL_13:
  v33 = *(v1 + 8);

  return v33(v2, v32);
}

uint64_t sub_100A4462C()
{
  v47 = v0;
  v2 = *(v0 + 240);

  *(v0 + 136) = v2;
  swift_errorRetain();
  sub_10010FC20(&qword_1011AB640, L"D\v\a");
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_28;
  }

  v4 = *(v0 + 120);
  v3 = *(v0 + 128);
  v5 = (v3 >> 62);
  if (v3 >> 62)
  {
    if (!_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_27;
    }
  }

  else if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_27;
  }

  if ((v3 & 0xC000000000000001) != 0)
  {
    v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_33:
      v9 = _CocoaArrayWrapper.endIndex.getter();
      if (!v9)
      {
        goto LABEL_21;
      }

      goto LABEL_10;
    }

    v6 = *(v3 + 32);
  }

  v7 = v6;
  v1 = &selRef_compoundStringWithElements_;
  v8 = [v6 dialog];

  if (!v8)
  {
LABEL_27:
    sub_100A516D8();
    swift_allocError();
    *v39 = v4;
    v39[1] = v3;
    swift_willThrow();

    goto LABEL_28;
  }

  v2 = v3 & 0xFFFFFFFFFFFFFF8;
  if (v5)
  {
    goto LABEL_33;
  }

  v9 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v9)
  {
LABEL_21:
    v36.n128_f64[0] = sub_100A53D54(v4);
    goto LABEL_22;
  }

LABEL_10:
  if ((v3 & 0xC000000000000001) != 0)
  {
    v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*(v2 + 16))
    {
      __break(1u);
      goto LABEL_37;
    }

    v10 = *(v3 + 32);
  }

  v5 = v10;
  v9 = [v10 v1[21]];
  if (!v9)
  {

    goto LABEL_21;
  }

  v43 = (v0 + 16);
  if (qword_1011A6A60 != -1)
  {
LABEL_37:
    v41 = v9;
    swift_once();
    v9 = v41;
  }

  v45 = v9;
  v11 = type metadata accessor for Logger();
  sub_1000060E4(v11, static Logger.playbackController);

  v12 = v5;
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  v44 = v12;
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v46[0] = swift_slowAlloc();
    *v15 = 136446466;
    sub_10010FC20(&qword_1011ACA60, &qword_100EF6ED0);
    v16 = Array.description.getter();
    v18 = sub_100010678(v16, v17, v46);

    *(v15 + 4) = v18;
    *(v15 + 12) = 2082;
    v19 = v12;
    v20 = [v19 description];
    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;

    v24 = sub_100010678(v21, v23, v46);

    *(v15 + 14) = v24;
    _os_log_impl(&_mh_execute_header, v13, v14, "⤵️ 🛑 Commands %{public}s — Perform error -> Presenting dialog for status=%{public}s", v15, 0x16u);
    swift_arrayDestroy();
  }

  v25 = *(v0 + 216);
  v26 = *(v0 + 184);
  v27 = *(v0 + 168);
  v28 = (v26 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator);
  v29 = *(v26 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator + 24);
  v30 = *(v26 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator + 32);
  sub_10000954C((v26 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator), v29);
  v31 = (*(v30 + 40))(v29, v30);
  v32 = *(v26 + v25);
  v33 = v28[3];
  v34 = v28[4];
  sub_10000954C(v28, v33);
  v42 = v27;

  MPCPlayerCommandDialog.alert(context:completion:)(v27, v31, v32, 0, 0, v43);
  *(v0 + 88) = 0;
  (*(v34 + 8))(v43, v33, v34);
  sub_100A52D6C(v43);
  if (v4)
  {

    sub_100A516D8();
    swift_allocError();
    *v35 = v4;
    v35[1] = v3;
    swift_willThrow();

LABEL_28:
    v40 = *(v0 + 8);

    return v40();
  }

LABEL_22:
  v37 = *(v0 + 8);

  return v37(v3, v36);
}

uint64_t sub_100A44BC8(uint64_t a1, uint64_t a2)
{
  v3[26] = a2;
  v3[27] = v2;
  v3[25] = a1;
  v4 = type metadata accessor for MusicPlaybackIntentDescriptor();
  v3[28] = v4;
  v3[29] = *(v4 - 8);
  v3[30] = swift_task_alloc();
  v3[31] = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  v3[32] = swift_task_alloc();
  v3[33] = type metadata accessor for MainActor();
  v3[34] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[35] = v6;
  v3[36] = v5;

  return _swift_task_switch(sub_100A44CF4, v6, v5);
}

uint64_t sub_100A44CF4()
{
  v1 = *(v0 + 216);
  v2 = OBJC_IVAR____TtC9MusicCore18PlaybackController_player;
  *(v0 + 296) = OBJC_IVAR____TtC9MusicCore18PlaybackController_player;
  swift_beginAccess();
  if (*(v1 + v2) && (swift_getKeyPath(), swift_getKeyPath(), , static Published.subscript.getter((v0 + 192)), , , , v3 = *(v0 + 192), (*(v0 + 304) = v3) != 0))
  {
    v5 = *(v0 + 200);
    v4 = [objc_opt_self() sharedController];
    LODWORD(v5) = sub_100A47BEC(v5);

    if (v5)
    {
      sub_100A51780(*(v0 + 208), *(v0 + 256), type metadata accessor for PlaybackIntentDescriptor.IntentType);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v7 = *(v0 + 256);
      if (EnumCaseMultiPayload == 1)
      {
        v9 = *(v0 + 232);
        v8 = *(v0 + 240);
        v10 = *(v0 + 224);
        (*(v9 + 32))(v8, v7, v10);
        v11 = MusicPlaybackIntentDescriptor.playbackIntent.getter();
        (*(v9 + 8))(v8, v10);
      }

      else
      {
        v11 = *v7;
      }

      v17 = [v11 tracklistToken];

      if (v17)
      {
        objc_opt_self();
        v19 = swift_dynamicCastObjCClass();
        if (v19 && (v20 = [v19 request]) != 0 && (v21 = v20, objc_opt_self(), v22 = swift_dynamicCastObjCClass(), v21, v22) && *(v1 + v2))
        {

          v23 = Player.supportsDelegation.getter();
          swift_unknownObjectRelease();

          if (v23)
          {
            v24 = OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_isPersistent;
            swift_beginAccess();
            if (v3[v24])
            {
              LOBYTE(v5) = 1;
              goto LABEL_7;
            }
          }
        }

        else
        {
          swift_unknownObjectRelease();
        }
      }

      v25 = *&v3[OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_session];
      if (!v25)
      {
        __break(1u);
        return _swift_task_switch(v25, v18, v15);
      }

      if ([v25 isPlaceholder])
      {
        v26 = static MainActor.shared.getter();
        *(v0 + 312) = v26;
        if (v26)
        {
          swift_getObjectType();
          v13 = dispatch thunk of Actor.unownedExecutor.getter();
          v15 = v27;
        }

        else
        {
          v13 = 0;
          v15 = 0;
        }

        v16 = sub_100A45098;
        goto LABEL_28;
      }

      LOBYTE(v5) = 0;
    }
  }

  else
  {
    v5 = *(v0 + 200);
    v3 = [objc_opt_self() sharedController];
    LOBYTE(v5) = sub_100A47BEC(v5);
  }

LABEL_7:

  *(v0 + 345) = v5;
  v12 = static MainActor.shared.getter();
  *(v0 + 328) = v12;
  if (v12)
  {
    swift_getObjectType();
    v13 = dispatch thunk of Actor.unownedExecutor.getter();
    v15 = v14;
  }

  else
  {
    v13 = 0;
    v15 = 0;
  }

  v16 = sub_100A45408;
LABEL_28:
  v25 = v16;
  v18 = v13;

  return _swift_task_switch(v25, v18, v15);
}

uint64_t sub_100A45098()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 10;
  v4 = v1[37];
  v5 = v1[27];
  v1[10] = v2;
  v1[11] = sub_100A45194;
  v6 = swift_continuation_init();
  if (*(v5 + v4))
  {
    v8 = v6;
    v9 = swift_allocObject();
    *(v9 + 16) = v8;

    Player.requestSharePlayTogether(completion:)(sub_100A53A9C, v9);
  }

  return _swift_continuation_await(v3, v7);
}

uint64_t sub_100A45194(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  *(*v1 + 320) = v3;
  if (v3)
  {
    swift_willThrow();

    v4 = *(v2 + 280);
    v5 = *(v2 + 288);
    v6 = sub_100A4537C;
  }

  else
  {

    v4 = *(v2 + 280);
    v5 = *(v2 + 288);
    v6 = sub_100A452DC;
  }

  return _swift_task_switch(v6, v4, v5);
}

uint64_t sub_100A452DC()
{
  *(v0 + 345) = 0;
  v1 = static MainActor.shared.getter();
  *(v0 + 328) = v1;
  if (v1)
  {
    swift_getObjectType();
    v2 = dispatch thunk of Actor.unownedExecutor.getter();
    v4 = v3;
  }

  else
  {
    v2 = 0;
    v4 = 0;
  }

  return _swift_task_switch(sub_100A45408, v2, v4);
}

uint64_t sub_100A4537C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100A45408()
{
  v1 = v0 + 16;
  v2 = *(v0 + 216);
  v3 = *(v0 + 200);
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 344;
  *(v0 + 24) = sub_100A454C0;
  v4 = *(v0 + 345);
  v5 = swift_continuation_init();
  sub_100A47D68(v5, v4, v3, v2);

  return _swift_continuation_await(v1, v6);
}

uint64_t sub_100A454C0(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  *(*v1 + 336) = v3;
  if (v3)
  {
    swift_willThrow();

    v4 = *(v2 + 280);
    v5 = *(v2 + 288);
    v6 = sub_100A45690;
  }

  else
  {

    *(v2 + 346) = *(v2 + 344);
    v4 = *(v2 + 280);
    v5 = *(v2 + 288);
    v6 = sub_100A45610;
  }

  return _swift_task_switch(v6, v4, v5);
}

uint64_t sub_100A45610()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 346);

  return v1(v2);
}

uint64_t sub_100A45690()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100A45714(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[40] = a3;
  v4[41] = v3;
  v4[38] = a1;
  v4[39] = a2;
  type metadata accessor for Locale();
  v4[42] = swift_task_alloc();
  v5 = type metadata accessor for String.LocalizationValue();
  v4[43] = v5;
  v4[44] = *(v5 - 8);
  v4[45] = swift_task_alloc();
  v4[46] = swift_task_alloc();
  v6 = type metadata accessor for MusicPlaybackIntentDescriptor();
  v4[47] = v6;
  v4[48] = *(v6 - 8);
  v4[49] = swift_task_alloc();
  v4[50] = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  v4[51] = swift_task_alloc();
  v4[52] = type metadata accessor for MainActor();
  v4[53] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[54] = v8;
  v4[55] = v7;

  return _swift_task_switch(sub_100A458D4, v8, v7);
}

uint64_t sub_100A458D4()
{
  v1 = *(v0 + 304);
  v2 = type metadata accessor for PlaybackIntentDescriptor(0);
  sub_1000089F8(v1 + *(v2 + 28), v0 + 80, &qword_1011ACCA0, &qword_100EF7480);
  sub_1000089F8(v0 + 80, v0 + 200, &qword_1011ACCA0, &qword_100EF7480);
  v3 = *(v0 + 224);
  if (v3)
  {
    v4 = *(v0 + 232);
    sub_10000954C((v0 + 200), *(v0 + 224));
    sub_100A489B0(v3, v4, (v0 + 160));
    sub_10000959C((v0 + 200));
    if (*(v0 + 184))
    {
      sub_100059A8C((v0 + 160), v0 + 120);
      sub_10000954C((v0 + 120), *(v0 + 144));
      DynamicType = swift_getDynamicType();
      if (qword_1011A6B48 != -1)
      {
        v42 = DynamicType;
        swift_once();
        DynamicType = v42;
      }

      v6 = (off_1011AFB48 + 32);
      v7 = *(off_1011AFB48 + 2) + 1;
      while (--v7)
      {
        v8 = *v6;
        v6 += 2;
        if (v8 == DynamicType)
        {
          sub_10000959C((v0 + 120));
          goto LABEL_11;
        }
      }

      sub_100A51780(*(v0 + 304), *(v0 + 408), type metadata accessor for PlaybackIntentDescriptor.IntentType);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v32 = *(v0 + 408);
      if (EnumCaseMultiPayload == 1)
      {
        v34 = *(v0 + 384);
        v33 = *(v0 + 392);
        v35 = *(v0 + 376);
        (*(v34 + 32))(v33, v32, v35);
        v36 = MusicPlaybackIntentDescriptor.playbackIntent.getter();
        (*(v34 + 8))(v33, v35);
      }

      else
      {
        v36 = *v32;
      }

      *(v0 + 448) = v36;
      v37 = *(v0 + 304);
      v38 = *(v2 + 32);
      v39 = swift_task_alloc();
      *(v0 + 456) = v39;
      *v39 = v0;
      v39[1] = sub_100A45DFC;
      v40 = *(v0 + 320);
      v41 = *(v0 + 312);

      return sub_100A3B22C(v36, v41, v40, v37 + v38);
    }
  }

  else
  {
    sub_1000095E8(v0 + 200, &qword_1011ACCA0, &qword_100EF7480);
    *(v0 + 160) = 0u;
    *(v0 + 176) = 0u;
    *(v0 + 192) = 0;
  }

  sub_1000095E8(v0 + 160, &qword_1011ACCA0, &qword_100EF7480);
LABEL_11:
  if (qword_1011A6B50 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_1000060E4(v9, static Logger.sharedListening);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "Offering SharePlay options (Play Now/Next/Last)", v12, 2u);
  }

  sub_1000089F8(v0 + 80, v0 + 240, &qword_1011ACCA0, &qword_100EF7480);
  v13 = *(v0 + 264);
  if (v13)
  {
    v14 = *(v0 + 272);
    sub_10000954C((v0 + 240), *(v0 + 264));
    v15 = sub_100A48E74(v13, v14);
    v17 = v16;
    sub_10000959C((v0 + 240));
  }

  else
  {
    v18 = *(v0 + 360);
    v19 = *(v0 + 368);
    v20 = *(v0 + 344);
    v21 = *(v0 + 352);
    sub_1000095E8(v0 + 240, &qword_1011ACCA0, &qword_100EF7480);
    String.LocalizationValue.init(stringLiteral:)();
    (*(v21 + 16))(v18, v19, v20);
    if (qword_1011A6740 != -1)
    {
      swift_once();
    }

    v22 = *(v0 + 368);
    v23 = *(v0 + 344);
    v24 = *(v0 + 352);
    v25 = qword_101219808;
    static Locale.current.getter();
    v15 = String.init(localized:table:bundle:locale:comment:)();
    v17 = v26;
    (*(v24 + 8))(v22, v23);
  }

  *(v0 + 472) = v17;
  *(v0 + 480) = v15;
  v27 = static MainActor.shared.getter();
  *(v0 + 488) = v27;
  if (v27)
  {
    swift_getObjectType();
    v28 = dispatch thunk of Actor.unownedExecutor.getter();
    v30 = v29;
  }

  else
  {
    v28 = 0;
    v30 = 0;
  }

  return _swift_task_switch(sub_100A4601C, v28, v30);
}

uint64_t sub_100A45DFC()
{
  v2 = *v1;
  v3 = *(*v1 + 448);
  *(*v1 + 464) = v0;

  v4 = *(v2 + 440);
  v5 = *(v2 + 432);
  if (v0)
  {
    v6 = sub_100A462EC;
  }

  else
  {
    v6 = sub_100A45F50;
  }

  return _swift_task_switch(v6, v5, v4);
}

uint64_t sub_100A45F50()
{

  sub_10000959C((v0 + 120));
  sub_1000095E8(v0 + 80, &qword_1011ACCA0, &qword_100EF7480);

  v1 = *(v0 + 8);

  return v1(0, 0, 1);
}

uint64_t sub_100A4601C()
{
  v1 = v0[60];
  v2 = v0[59];
  v3 = v0[41];
  v4 = v0[38];
  v0[2] = v0;
  v0[7] = v0 + 35;
  v0[3] = sub_100A460F4;
  v5 = swift_continuation_init();
  sub_100A49A64(v5, v4, v3, v1, v2);

  return _swift_continuation_await(v0 + 2, v6);
}

uint64_t sub_100A460F4()
{
  v1 = *v0;
  v2 = *v0;
  *(v2 + 496) = *(*v0 + 280);
  *(v2 + 297) = *(v2 + 296);
  v3 = *(v1 + 440);
  v4 = *(v1 + 432);

  return _swift_task_switch(sub_100A46210, v4, v3);
}

uint64_t sub_100A46210()
{

  sub_1000095E8(v0 + 80, &qword_1011ACCA0, &qword_100EF7480);
  v1 = *(v0 + 297);
  v3 = *(v0 + 496);
  v2 = *(v0 + 504);

  v4 = *(v0 + 8);

  return v4(v3, v2, v1);
}

uint64_t sub_100A462EC()
{

  sub_10000959C((v0 + 120));
  sub_1000095E8(v0 + 80, &qword_1011ACCA0, &qword_100EF7480);

  v1 = *(v0 + 8);

  return v1();
}

void *sub_100A463B8(void *a1, char a2, uint64_t a3)
{
  v7 = OBJC_IVAR____TtC9MusicCore18PlaybackController_player;
  swift_beginAccess();
  v8 = *(v3 + v7);
  v9 = _swiftEmptyArrayStorage;
  if (v8)
  {
    v42 = _swiftEmptyArrayStorage;
    v10 = a1;

    if ((a2 & 2) != 0 && sub_100A51850(v10, a3, v8))
    {
      v9 = sub_10089CBF8(0, 1, 1, _swiftEmptyArrayStorage);
      v12 = v9[2];
      v11 = v9[3];
      if (v12 >= v11 >> 1)
      {
        v9 = sub_10089CBF8((v11 > 1), v12 + 1, 1, v9);
      }

      v40 = &type metadata for Player.ReplaceCommand;
      v41 = &protocol witness table for Player.ReplaceCommand;
      *&v39 = v10;
      *(&v39 + 1) = a3;
      v9[2] = v12 + 1;
      v13 = &v9[5 * v12];
      goto LABEL_34;
    }

    if (a2)
    {
      sub_10010FC20(&unk_1011ACA30, &unk_100EEC4D0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100EBDC20;
      *(inited + 56) = &type metadata for Player.InsertCommand;
      *(inited + 64) = &protocol witness table for Player.InsertCommand;
      *(inited + 32) = v10;
      *(inited + 40) = 0;
      *(inited + 96) = &type metadata for Player.ChangeCommand;
      *(inited + 104) = &protocol witness table for Player.ChangeCommand;
      *(inited + 72) = 1;
      v19 = v10;
      if (sub_100A51A80(v19, 0, v8) && sub_100A51BB0(1, v8))
      {
        sub_1008A623C(inited);
        v40 = &type metadata for Player.ReplaceCommand;
        v41 = &protocol witness table for Player.ReplaceCommand;
        *&v39 = v19;
        *(&v39 + 1) = a3;
        v20 = v19;
      }

      else
      {

        v40 = &type metadata for Player.ReplaceCommand;
        v41 = &protocol witness table for Player.ReplaceCommand;
        *&v39 = v19;
        *(&v39 + 1) = a3;
        sub_100008FE4(&v39, v38);
        v24 = v19;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_10089CBF8(0, _swiftEmptyArrayStorage[2] + 1, 1, _swiftEmptyArrayStorage);
        }

        v26 = v9[2];
        v25 = v9[3];
        if (v26 >= v25 >> 1)
        {
          v9 = sub_10089CBF8((v25 > 1), v26 + 1, 1, v9);
        }

        sub_100309A88(v38, v38[3]);
        v27 = __chkstk_darwin();
        v29 = (&v35 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
        (*(v30 + 16))(v29, v27);
        v31 = *v29;
        v32 = v29[1];
        v36 = &type metadata for Player.ReplaceCommand;
        v37 = &protocol witness table for Player.ReplaceCommand;
        *&v35 = v31;
        *(&v35 + 1) = v32;
        v9[2] = v26 + 1;
        sub_100059A8C(&v35, &v9[5 * v26 + 4]);
        sub_10000959C(v38);
        v42 = v9;
      }

      sub_10000959C(&v39);
      if (!sub_100A5196C(0, v8))
      {

        return v42;
      }

      v9 = v42;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_10089CBF8(0, v9[2] + 1, 1, v9);
      }

      v17 = v9[2];
      v33 = v9[3];
      v23 = v17 + 1;
      if (v17 >= v33 >> 1)
      {
        v9 = sub_10089CBF8((v33 > 1), v17 + 1, 1, v9);
      }

      v40 = &type metadata for Player.PlaybackCommand;
      v41 = &protocol witness table for Player.PlaybackCommand;
      LOBYTE(v39) = 0;
    }

    else
    {
      if ((a2 & 4) != 0)
      {
        v14 = v10;
        v15 = sub_100A51A80(v14, 0, v8);

        if (v15)
        {
          v9 = sub_10089CBF8(0, 1, 1, _swiftEmptyArrayStorage);
          v17 = v9[2];
          v16 = v9[3];
          if (v17 >= v16 >> 1)
          {
            v9 = sub_10089CBF8((v16 > 1), v17 + 1, 1, v9);
          }

          v40 = &type metadata for Player.InsertCommand;
          v41 = &protocol witness table for Player.InsertCommand;
          v39 = v14;
          v9[2] = v17 + 1;
          goto LABEL_33;
        }
      }

      if ((a2 & 8) == 0 || (v10 = v10, v21 = sub_100A51A80(v10, 1, v8), v10, !v21))
      {

        return _swiftEmptyArrayStorage;
      }

      v9 = sub_10089CBF8(0, 1, 1, _swiftEmptyArrayStorage);
      v17 = v9[2];
      v22 = v9[3];
      v23 = v17 + 1;
      if (v17 >= v22 >> 1)
      {
        v9 = sub_10089CBF8((v22 > 1), v17 + 1, 1, v9);
      }

      v40 = &type metadata for Player.InsertCommand;
      v41 = &protocol witness table for Player.InsertCommand;
      *&v39 = v10;
      *(&v39 + 1) = 1;
    }

    v9[2] = v23;
LABEL_33:
    v13 = &v9[5 * v17];
LABEL_34:
    sub_100059A8C(&v39, (v13 + 4));
  }

  return v9;
}

uint64_t sub_100A46948(uint64_t a1, uint64_t a2)
{
  v50 = a2;
  v59 = a1;
  v61 = type metadata accessor for UUID();
  v2 = *(v61 - 8);
  __chkstk_darwin();
  v4 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Locale();
  __chkstk_darwin();
  v5 = type metadata accessor for String.LocalizationValue();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = &v39 - v9;
  String.LocalizationValue.init(stringLiteral:)();
  v60 = *(v6 + 16);
  v53 = v6 + 16;
  v60(v8, v10, v5);
  if (qword_1011A6740 != -1)
  {
    swift_once();
  }

  v11 = qword_101219808;
  v12 = qword_101219808;
  v51 = v11;
  v13 = v12;
  static Locale.current.getter();
  v57 = v13;
  v49 = String.init(localized:table:bundle:locale:comment:)();
  v48 = v14;
  v40 = *(v6 + 8);
  v40(v10, v5);
  v47 = swift_allocObject();
  v15 = v59;
  *(v47 + 16) = v59;
  UUID.init()();
  v46 = UUID.uuidString.getter();
  v58 = v16;
  v52 = *(v2 + 8);
  v52(v4, v61);
  String.LocalizationValue.init(stringLiteral:)();
  v60(v8, v10, v5);
  static Locale.current.getter();
  v57 = v57;
  v39 = v6 + 8;
  v45 = String.init(localized:table:bundle:locale:comment:)();
  v55 = v17;
  v18 = v40;
  v40(v10, v5);
  v44 = swift_allocObject();
  *(v44 + 16) = v15;
  UUID.init()();
  v43 = UUID.uuidString.getter();
  v54 = v19;
  v52(v4, v61);
  String.LocalizationValue.init(stringLiteral:)();
  v20 = v60;
  v60(v8, v10, v5);
  static Locale.current.getter();
  v21 = v57;
  v42 = String.init(localized:table:bundle:locale:comment:)();
  v57 = v22;
  v18(v10, v5);
  v56 = swift_allocObject();
  *(v56 + 16) = v59;
  UUID.init()();
  v59 = UUID.uuidString.getter();
  v41 = v23;
  v52(v4, v61);
  String.LocalizationValue.init(stringLiteral:)();
  v20(v8, v10, v5);
  static Locale.current.getter();
  v61 = String.init(localized:table:bundle:locale:comment:)();
  v25 = v24;
  v18(v10, v5);
  sub_10010FC20(&qword_1011A7C00, &qword_100EEC4A0);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_100EBE260;
  v27 = v58;
  *(v26 + 32) = v46;
  *(v26 + 40) = v27;
  v28 = v48;
  *(v26 + 48) = v49;
  *(v26 + 56) = v28;
  *(v26 + 64) = 2;
  v29 = v47;
  *(v26 + 72) = &unk_100EF74E0;
  *(v26 + 80) = v29;
  v30 = v54;
  *(v26 + 88) = v43;
  *(v26 + 96) = v30;
  v31 = v55;
  *(v26 + 104) = v45;
  *(v26 + 112) = v31;
  *(v26 + 120) = 1;
  v32 = v44;
  *(v26 + 128) = &unk_100EF74F0;
  *(v26 + 136) = v32;
  v33 = v41;
  *(v26 + 144) = v59;
  *(v26 + 152) = v33;
  v34 = v57;
  *(v26 + 160) = v42;
  *(v26 + 168) = v34;
  *(v26 + 176) = 0;
  v35 = v56;
  *(v26 + 184) = &unk_100EF7500;
  *(v26 + 192) = v35;
  LOBYTE(v63[0]) = 1;
  v66 = 0uLL;
  *&v67 = v61;
  *(&v67 + 1) = v25;
  LOBYTE(v68) = 0;
  *(&v68 + 1) = 0;
  LOBYTE(v69) = 1;
  *(&v69 + 1) = v26;
  v70 = 0;
  v36 = *(v50 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator + 24);
  v37 = *(v50 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator + 32);
  v61 = sub_10000954C((v50 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator), v36);
  v63[2] = v68;
  v63[3] = v69;
  v64 = v70;
  v63[0] = v66;
  v63[1] = v67;
  v65 = 0;
  v60 = *(v37 + 8);

  sub_10053A574(&v66, v62);
  v60(v63, v36, v37);
  sub_100344A84(&v66);

  return sub_100A52D6C(v63);
}

uint64_t sub_100A4718C()
{
  v1 = *(*(*(v0 + 16) + 64) + 40);
  *v1 = 2;
  *(v1 + 8) = 0;
  swift_continuation_resume();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100A47234()
{
  v1 = *(*(*(v0 + 16) + 64) + 40);
  *v1 = 1;
  *(v1 + 8) = 0;
  swift_continuation_resume();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100A472DC()
{
  v1 = *(*(*(v0 + 16) + 64) + 40);
  *v1 = 0;
  *(v1 + 8) = 1;
  swift_continuation_resume();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100A47364(uint64_t a1, uint64_t a2)
{
  v51 = a2;
  v54 = a1;
  v50 = type metadata accessor for UUID();
  v49 = *(v50 - 8);
  __chkstk_darwin();
  v3 = &v36 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Locale();
  __chkstk_darwin();
  v4 = type metadata accessor for String.LocalizationValue();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v36 - v8;
  String.LocalizationValue.init(stringLiteral:)();
  v53 = *(v5 + 16);
  v53(v7, v9, v4);
  if (qword_1011A6740 != -1)
  {
    swift_once();
  }

  v10 = qword_101219808;
  v11 = qword_101219808;
  v39 = v10;
  v12 = v11;
  static Locale.current.getter();
  v43 = v12;
  v48 = String.init(localized:table:bundle:locale:comment:)();
  v47 = v13;
  v52 = *(v5 + 8);
  v52(v9, v4);
  v46 = swift_allocObject();
  *(v46 + 16) = v54;
  UUID.init()();
  v45 = UUID.uuidString.getter();
  v44 = v14;
  v38 = v5 + 8;
  v37 = *(v49 + 8);
  v15 = v50;
  v37(v3, v50);
  String.LocalizationValue.init(stringLiteral:)();
  v53(v7, v9, v4);
  static Locale.current.getter();
  v40 = v43;
  v49 = String.init(localized:table:bundle:locale:comment:)();
  v43 = v16;
  v52(v9, v4);
  v42 = swift_allocObject();
  *(v42 + 16) = v54;
  UUID.init()();
  v41 = UUID.uuidString.getter();
  v54 = v17;
  v37(v3, v15);
  String.LocalizationValue.init(stringLiteral:)();
  v18 = v53;
  v53(v7, v9, v4);
  static Locale.current.getter();
  v19 = v40;
  v50 = String.init(localized:table:bundle:locale:comment:)();
  v40 = v20;
  v21 = v52;
  v52(v9, v4);
  String.LocalizationValue.init(stringLiteral:)();
  v18(v7, v9, v4);
  static Locale.current.getter();
  v22 = String.init(localized:table:bundle:locale:comment:)();
  v24 = v23;
  v21(v9, v4);
  sub_10010FC20(&qword_1011A7C00, &qword_100EEC4A0);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_100EBDC20;
  v26 = v44;
  *(v25 + 32) = v45;
  *(v25 + 40) = v26;
  v27 = v47;
  *(v25 + 48) = v48;
  *(v25 + 56) = v27;
  *(v25 + 64) = 2;
  v28 = v46;
  *(v25 + 72) = &unk_100EF7530;
  *(v25 + 80) = v28;
  v29 = v54;
  *(v25 + 88) = v41;
  *(v25 + 96) = v29;
  v30 = v43;
  *(v25 + 104) = v49;
  *(v25 + 112) = v30;
  *(v25 + 120) = 0;
  v31 = v42;
  *(v25 + 128) = &unk_100EF7540;
  *(v25 + 136) = v31;
  LOBYTE(v56[0]) = 1;
  *&v59 = v50;
  *(&v59 + 1) = v40;
  *&v60 = v22;
  *(&v60 + 1) = v24;
  LOBYTE(v61) = 0;
  *(&v61 + 1) = 0;
  LOBYTE(v62) = 1;
  *(&v62 + 1) = v25;
  v63 = 0;
  v32 = *(v51 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator + 24);
  v33 = *(v51 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator + 32);
  v53 = sub_10000954C((v51 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator), v32);
  v56[2] = v61;
  v56[3] = v62;
  v57 = v63;
  v56[0] = v59;
  v56[1] = v60;
  v58 = 0;
  v34 = *(v33 + 8);

  sub_10053A574(&v59, v55);
  v34(v56, v32, v33);
  sub_100344A84(&v59);

  return sub_100A52D6C(v56);
}

uint64_t sub_100A47AD0()
{
  **(*(*(v0 + 16) + 64) + 40) = 1;
  swift_continuation_resume();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100A47B70()
{
  **(*(*(v0 + 16) + 64) + 40) = 0;
  swift_continuation_resume();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100A47BEC(uint64_t result)
{
  if (result)
  {
    if (([result isDeviceRoute] & 1) == 0)
    {
      v2 = [v1 musicSubscriptionStatus];
      if (!v2)
      {
LABEL_8:
        v6 = [objc_opt_self() sharedController];
        v7 = [v6 isCloudLibraryEnabled];

        if (v7)
        {
          return 0;
        }

        else
        {
          return 2;
        }
      }

      v3 = v2;
      v4 = [v2 capabilities];
      v5 = [v3 capabilities];

      if ((v5 & 2) == 0)
      {
        if ((v4 & 1) == 0)
        {
          return 1;
        }

        goto LABEL_8;
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_100A47CC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    sub_10010FC20(&qword_1011AB640, L"D\v\a");
    swift_allocError();
    *v5 = a3;
    swift_errorRetain();

    return swift_continuation_throwingResumeWithError();
  }

  else
  {

    return swift_continuation_throwingResume();
  }
}

uint64_t sub_100A47D68(uint64_t a1, char a2, void *a3, uint64_t a4)
{
  v68 = a3;
  v70 = a1;
  v6 = type metadata accessor for UUID();
  v67 = *(v6 - 8);
  __chkstk_darwin();
  v8 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Locale();
  __chkstk_darwin();
  v9 = type metadata accessor for String.LocalizationValue();
  v69 = *(v9 - 8);
  __chkstk_darwin();
  v11 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v13 = &v57 - v12;
  v14 = [objc_opt_self() sharedApplication];
  v15 = [v14 applicationState];

  if (!a2)
  {
LABEL_8:
    **(*(v70 + 64) + 40) = 0;

    return swift_continuation_throwingResume();
  }

  if (v15 == 2)
  {
    if (qword_1011A6A60 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_1000060E4(v16, static Logger.playbackController);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "Music is background so bypass the requires subscription alert and use buffered AirPlay", v19, 2u);
    }

    goto LABEL_8;
  }

  v66 = a4;
  if (v68)
  {
    String.LocalizationValue.init(stringLiteral:)();
    v21 = v69;
    (*(v69 + 16))(v11, v13, v9);
    if (qword_1011A6740 != -1)
    {
      swift_once();
    }

    v22 = qword_101219808;
    static Locale.current.getter();
    v65 = String.init(localized:table:bundle:locale:comment:)();
    v64 = v23;
    (*(v21 + 8))(v13, v9);
    v24 = swift_allocObject();
    *(v24 + 16) = v70;
    UUID.init()();
    v63 = UUID.uuidString.getter();
    v62 = v25;
    (*(v67 + 8))(v8, v6);
    v26 = sub_10089CAD0(0, 1, 1, _swiftEmptyArrayStorage);
    v28 = *(v26 + 2);
    v27 = *(v26 + 3);
    if (v28 >= v27 >> 1)
    {
      v26 = sub_10089CAD0((v27 > 1), v28 + 1, 1, v26);
    }

    *(v26 + 2) = v28 + 1;
    v29 = &v26[56 * v28];
    v30 = v62;
    *(v29 + 4) = v63;
    *(v29 + 5) = v30;
    v31 = v64;
    *(v29 + 6) = v65;
    *(v29 + 7) = v31;
    v29[64] = 2;
    *(v29 + 9) = &unk_100EF7520;
    *(v29 + 10) = v24;
  }

  else
  {
    v26 = _swiftEmptyArrayStorage;
  }

  v32 = v69;
  v65 = v6;
  String.LocalizationValue.init(stringLiteral:)();
  v33 = *(v32 + 16);
  v64 = v32 + 16;
  v63 = v33;
  v33(v11, v13, v9);
  if (qword_1011A6740 != -1)
  {
    swift_once();
  }

  v34 = qword_101219808;
  v35 = qword_101219808;
  static Locale.current.getter();
  v36 = v35;
  v62 = v34;
  v60 = String.init(localized:table:bundle:locale:comment:)();
  v38 = v37;
  v61 = *(v32 + 8);
  v61(v13, v9);
  v39 = swift_allocObject();
  *(v39 + 16) = v70;
  UUID.init()();
  v58 = UUID.uuidString.getter();
  v41 = v40;
  (*(v67 + 8))(v8, v65);
  v70 = v41;

  v67 = v39;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v69 = v32 + 8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v26 = sub_10089CAD0(0, *(v26 + 2) + 1, 1, v26);
  }

  v44 = *(v26 + 2);
  v43 = *(v26 + 3);
  if (v44 >= v43 >> 1)
  {
    v26 = sub_10089CAD0((v43 > 1), v44 + 1, 1, v26);
  }

  *(v26 + 2) = v44 + 1;
  v45 = &v26[56 * v44];
  v46 = v70;
  *(v45 + 4) = v58;
  *(v45 + 5) = v46;
  *(v45 + 6) = v60;
  *(v45 + 7) = v38;
  v59 = v38;
  v45[64] = 0;
  v47 = v67;
  *(v45 + 9) = &unk_100EF7510;
  *(v45 + 10) = v47;
  v48 = sub_100A48760(v68);
  v50 = v49;
  String.LocalizationValue.init(stringLiteral:)();
  v63(v11, v13, v9);
  static Locale.current.getter();
  v51 = String.init(localized:table:bundle:locale:comment:)();
  v53 = v52;
  v61(v13, v9);
  LOBYTE(v72[0]) = 1;
  *&v75 = v48;
  *(&v75 + 1) = v50;
  *&v76 = v51;
  *(&v76 + 1) = v53;
  LOBYTE(v77) = 0;
  *(&v77 + 1) = 0;
  LOBYTE(v78) = 1;
  *(&v78 + 1) = v26;
  v79 = 0;
  v54 = *(v66 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator + 24);
  v55 = *(v66 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator + 32);
  sub_10000954C((v66 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator), v54);
  v72[2] = v77;
  v72[3] = v78;
  v73 = v79;
  v72[0] = v75;
  v72[1] = v76;
  v74 = 0;
  v56 = *(v55 + 8);
  sub_10053A574(&v75, v71);
  v56(v72, v54, v55);
  sub_100344A84(&v75);

  return sub_100A52D6C(v72);
}

uint64_t sub_100A48640()
{
  **(*(*(v0 + 16) + 64) + 40) = 1;
  swift_continuation_throwingResume();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100A486E0()
{
  **(*(*(v0 + 16) + 64) + 40) = 2;
  swift_continuation_throwingResume();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100A48760(void *a1)
{
  type metadata accessor for Locale();
  __chkstk_darwin();
  v2 = type metadata accessor for String.LocalizationValue();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v12[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *&v6 = __chkstk_darwin().n128_u64[0];
  v8 = &v12[-v7];
  if (a1 && ![a1 isHomePodRoute])
  {
    [a1 isAppleTVRoute];
  }

  String.LocalizationValue.init(stringLiteral:)();
  (*(v3 + 16))(v5, v8, v2);
  if (qword_1011A6740 != -1)
  {
    swift_once();
  }

  v9 = qword_101219808;
  static Locale.current.getter();
  v10 = String.init(localized:table:bundle:locale:comment:)();
  (*(v3 + 8))(v8, v2);
  return v10;
}

uint64_t sub_100A489B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v46 = a3;
  v36 = a2;
  v44 = type metadata accessor for GenericMusicItem();
  v37 = *(v44 - 8);
  __chkstk_darwin();
  v35 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v43 = &v34 - v5;
  v6 = type metadata accessor for Playlist.Entry.InternalItem();
  v41 = *(v6 - 8);
  v42 = v6;
  __chkstk_darwin();
  v40 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for Playlist.Entry();
  v39 = *(v45 - 8);
  __chkstk_darwin();
  v38 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = &v34 - v9;
  v11 = type metadata accessor for Track();
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v16 = &v34 - v15;
  v17 = *(a1 - 8);
  v18 = __chkstk_darwin();
  v20 = &v34 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(v17 + 16);
  v21(v20, v47, a1, v18);
  if (swift_dynamicCast())
  {
    (*(v12 + 32))(v14, v16, v11);
    Track.musicItem.getter(v46);
    (*(v12 + 8))(v14, v11);
  }

  else
  {
    v23 = v45;
    v22 = v46;
    if (swift_dynamicCast())
    {
      v25 = v38;
      v24 = v39;
      (*(v39 + 32))(v38, v10, v23);
      v26 = v40;
      Playlist.Entry.internalItem.getter();
      Playlist.Entry.InternalItem.musicItem.getter(v22);
      (*(v41 + 8))(v26, v42);
      (*(v24 + 8))(v25, v23);
    }

    else
    {
      v28 = v43;
      v27 = v44;
      if (swift_dynamicCast())
      {
        v29 = v37;
        v30 = v35;
        (*(v37 + 32))(v35, v28, v27);
        GenericMusicItem.innerMusicItem.getter(v22);
        (*(v29 + 8))(v30, v27);
      }

      else
      {
        v31 = v36;
        v22[3] = a1;
        v22[4] = v31;
        v32 = sub_10001C8B8(v22);
        (v21)(v32, v47, a1);
      }
    }
  }

  return (*(v17 + 8))(v20, a1);
}

uint64_t sub_100A48E74(uint64_t a1, uint64_t a2)
{
  v40 = type metadata accessor for Station();
  v38[0] = *(v40 - 8);
  __chkstk_darwin();
  v39 = v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for MusicMovie();
  v38[1] = *(v43 - 8);
  __chkstk_darwin();
  v42 = v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for TVEpisode();
  v41 = *(v45 - 8);
  __chkstk_darwin();
  v44 = v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for Playlist();
  v46 = *(v49 - 8);
  __chkstk_darwin();
  v48 = v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for Album();
  v47 = *(v52 - 8);
  __chkstk_darwin();
  v51 = v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = type metadata accessor for MusicVideo();
  v50 = *(v53 - 8);
  __chkstk_darwin();
  v10 = v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Locale();
  __chkstk_darwin();
  v54 = v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for String.LocalizationValue();
  v13 = *(v12 - 8);
  __chkstk_darwin();
  v15 = v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v17 = v38 - v16;
  v18 = type metadata accessor for Song();
  v19 = *(v18 - 8);
  __chkstk_darwin();
  v21 = v38 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100A489B0(a1, a2, v56);
  if (!v56[3])
  {
    goto LABEL_31;
  }

  sub_1000089F8(v56, v55, &qword_1011ACCA0, &qword_100EF7480);
  sub_10010FC20(&qword_1011ACCA8, &qword_100EF7490);
  if (swift_dynamicCast())
  {
    String.LocalizationValue.init(stringLiteral:)();
    (*(v13 + 16))(v15, v17, v12);
    if (qword_1011A6740 != -1)
    {
      swift_once();
    }

    v22 = qword_101219808;
    static Locale.current.getter();
    v23 = String.init(localized:table:bundle:locale:comment:)();
    (*(v13 + 8))(v17, v12);
    (*(v19 + 8))(v21, v18);
    goto LABEL_20;
  }

  v24 = v53;
  if (swift_dynamicCast())
  {
    String.LocalizationValue.init(stringLiteral:)();
    (*(v13 + 16))(v15, v17, v12);
    if (qword_1011A6740 != -1)
    {
      swift_once();
    }

    v25 = qword_101219808;
    static Locale.current.getter();
    v23 = String.init(localized:table:bundle:locale:comment:)();
    (*(v13 + 8))(v17, v12);
    (*(v50 + 8))(v10, v24);
    goto LABEL_20;
  }

  v27 = v51;
  v26 = v52;
  if (swift_dynamicCast())
  {
    String.LocalizationValue.init(stringLiteral:)();
    (*(v13 + 16))(v15, v17, v12);
    if (qword_1011A6740 != -1)
    {
      swift_once();
    }

    v28 = qword_101219808;
    static Locale.current.getter();
    v23 = String.init(localized:table:bundle:locale:comment:)();
    (*(v13 + 8))(v17, v12);
    v29 = v47;
    goto LABEL_19;
  }

  v27 = v48;
  v26 = v49;
  if (swift_dynamicCast())
  {
    String.LocalizationValue.init(stringLiteral:)();
    (*(v13 + 16))(v15, v17, v12);
    if (qword_1011A6740 != -1)
    {
      swift_once();
    }

    v30 = qword_101219808;
    static Locale.current.getter();
    v23 = String.init(localized:table:bundle:locale:comment:)();
    (*(v13 + 8))(v17, v12);
    v31 = &v60;
LABEL_18:
    v29 = *(v31 - 32);
LABEL_19:
    (*(v29 + 8))(v27, v26);
LABEL_20:
    sub_10000959C(v55);
    sub_1000095E8(v56, &qword_1011ACCA0, &qword_100EF7480);
    return v23;
  }

  v32 = v44;
  v33 = v45;
  if (!swift_dynamicCast())
  {
    v32 = v42;
    v33 = v43;
    if (swift_dynamicCast())
    {
      v34 = &v58;
      goto LABEL_25;
    }

    v27 = v39;
    v26 = v40;
    if (swift_dynamicCast())
    {
      String.LocalizationValue.init(stringLiteral:)();
      (*(v13 + 16))(v15, v17, v12);
      if (qword_1011A6740 != -1)
      {
        swift_once();
      }

      v35 = qword_101219808;
      static Locale.current.getter();
      v23 = String.init(localized:table:bundle:locale:comment:)();
      (*(v13 + 8))(v17, v12);
      v31 = &v57;
      goto LABEL_18;
    }

    sub_10000959C(v55);
LABEL_31:
    sub_1000095E8(v56, &qword_1011ACCA0, &qword_100EF7480);
    goto LABEL_32;
  }

  v34 = &v59;
LABEL_25:
  (*(*(v34 - 32) + 8))(v32, v33);
  sub_10000959C(v55);
  sub_1000095E8(v56, &qword_1011ACCA0, &qword_100EF7480);
LABEL_32:
  String.LocalizationValue.init(stringLiteral:)();
  (*(v13 + 16))(v15, v17, v12);
  if (qword_1011A6740 != -1)
  {
    swift_once();
  }

  v36 = qword_101219808;
  static Locale.current.getter();
  v23 = String.init(localized:table:bundle:locale:comment:)();
  (*(v13 + 8))(v17, v12);
  return v23;
}

uint64_t sub_100A49A64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *&v104 = a4;
  *(&v104 + 1) = a5;
  v122 = a1;
  v123 = a3;
  v105 = a2;
  v5 = type metadata accessor for MusicPlaybackIntentDescriptor();
  v102 = *(v5 - 8);
  v103 = v5;
  __chkstk_darwin();
  v101 = &v99 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  __chkstk_darwin();
  v100 = (&v99 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v109 = &v99 - v8;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v99 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Locale();
  __chkstk_darwin();
  v14 = &v99 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for String.LocalizationValue();
  v16 = *(v15 - 8);
  __chkstk_darwin();
  v18 = &v99 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v20 = &v99 - v19;
  String.LocalizationValue.init(stringLiteral:)();
  v111 = *(v16 + 16);
  v112 = v16 + 16;
  v111(v18, v20, v15);
  if (qword_1011A6740 != -1)
  {
    swift_once();
  }

  v21 = qword_101219808;
  v106 = qword_101219808;
  static Locale.current.getter();
  v113 = v18;
  v110 = v21;
  v116 = v14;
  v22 = String.init(localized:table:bundle:locale:comment:)();
  v24 = v23;
  v25 = *(v16 + 8);
  v114 = v20;
  v115 = v16 + 8;
  v117 = v15;
  v108 = v25;
  v25(v20, v15);
  v26 = swift_allocObject();
  *(v26 + 16) = v122;
  UUID.init()();
  v27 = UUID.uuidString.getter();
  v29 = v28;
  v30 = *(v10 + 8);
  v118 = v12;
  v119 = v10 + 8;
  v120 = v9;
  v107 = v30;
  v30(v12, v9);
  v31 = sub_10089CAD0(0, 1, 1, _swiftEmptyArrayStorage);
  v33 = *(v31 + 2);
  v32 = *(v31 + 3);
  if (v33 >= v32 >> 1)
  {
    v31 = sub_10089CAD0((v32 > 1), v33 + 1, 1, v31);
  }

  v34 = v105;
  *(v31 + 2) = v33 + 1;
  v35 = &v31[56 * v33];
  *(v35 + 4) = v27;
  *(v35 + 5) = v29;
  *(v35 + 6) = v22;
  *(v35 + 7) = v24;
  v35[64] = 2;
  *(v35 + 9) = &unk_100EF74A0;
  *(v35 + 10) = v26;
  v36 = v109;
  sub_100A51780(v34, v109, type metadata accessor for PlaybackIntentDescriptor.IntentType);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v37 = v101;
    v38 = v102;
    v39 = v36;
    v40 = v103;
    (*(v102 + 32))(v101, v39, v103);
    v109 = MusicPlaybackIntentDescriptor.playbackIntent.getter();
    (*(v38 + 8))(v37, v40);
  }

  else
  {
    v109 = *v36;
  }

  v41 = v118;
  v42 = v114;
  v43 = OBJC_IVAR____TtC9MusicCore18PlaybackController_player;
  v44 = v123;
  swift_beginAccess();
  v45 = *(v44 + v43);
  if (v45)
  {

    v46 = v109;
    v47 = sub_100A51A80(v46, 0, v45);

    if (v47)
    {
      String.LocalizationValue.init(stringLiteral:)();
      v48 = v117;
      v111(v113, v42, v117);
      v49 = v106;
      static Locale.current.getter();
      v50 = String.init(localized:table:bundle:locale:comment:)();
      v52 = v51;
      v108(v42, v48);
      v53 = swift_allocObject();
      *(v53 + 16) = v122;
      UUID.init()();
      v54 = UUID.uuidString.getter();
      v56 = v55;
      v107(v41, v120);
      v58 = *(v31 + 2);
      v57 = *(v31 + 3);
      if (v58 >= v57 >> 1)
      {
        v31 = sub_10089CAD0((v57 > 1), v58 + 1, 1, v31);
      }

      *(v31 + 2) = v58 + 1;
      v59 = &v31[56 * v58];
      *(v59 + 4) = v54;
      *(v59 + 5) = v56;
      *(v59 + 6) = v50;
      *(v59 + 7) = v52;
      v59[64] = 2;
      *(v59 + 9) = &unk_100EF74D0;
      *(v59 + 10) = v53;
      v41 = v118;
      v42 = v114;
      v34 = v105;
    }
  }

  v60 = v100;
  sub_100A51780(v34, v100, type metadata accessor for PlaybackIntentDescriptor.IntentType);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v61 = v101;
    v62 = v102;
    v63 = v60;
    v64 = v103;
    (*(v102 + 32))(v101, v63, v103);
    v65 = MusicPlaybackIntentDescriptor.playbackIntent.getter();
    (*(v62 + 8))(v61, v64);
  }

  else
  {
    v65 = *v60;
  }

  v66 = *(v123 + v43);
  v121 = v65;
  if (v66 && (, v67 = v65, v68 = sub_100A51A80(v67, 1, v66), v67, , v68))
  {
    String.LocalizationValue.init(stringLiteral:)();
    v69 = v117;
    v111(v113, v42, v117);
    v70 = v106;
    static Locale.current.getter();
    v71 = String.init(localized:table:bundle:locale:comment:)();
    v72 = v42;
    v74 = v73;
    v108(v72, v69);
    v75 = swift_allocObject();
    *(v75 + 16) = v122;
    UUID.init()();
    v76 = UUID.uuidString.getter();
    v78 = v77;
    v107(v41, v120);
    v80 = *(v31 + 2);
    v79 = *(v31 + 3);
    if (v80 >= v79 >> 1)
    {
      v31 = sub_10089CAD0((v79 > 1), v80 + 1, 1, v31);
    }

    *(v31 + 2) = v80 + 1;
    v81 = &v31[56 * v80];
    *(v81 + 4) = v76;
    *(v81 + 5) = v78;
    *(v81 + 6) = v71;
    *(v81 + 7) = v74;
    v81[64] = 2;
    *(v81 + 9) = &unk_100EF74C0;
    *(v81 + 10) = v75;
    v82 = v122;
    v41 = v118;
    v42 = v114;
  }

  else
  {
    v82 = v122;
  }

  String.LocalizationValue.init(stringLiteral:)();
  v83 = v117;
  v111(v113, v42, v117);
  v84 = v106;
  static Locale.current.getter();
  v85 = String.init(localized:table:bundle:locale:comment:)();
  v87 = v86;
  v108(v42, v83);
  v88 = swift_allocObject();
  *(v88 + 16) = v82;
  UUID.init()();
  v89 = UUID.uuidString.getter();
  v91 = v90;
  v107(v41, v120);
  v93 = *(v31 + 2);
  v92 = *(v31 + 3);
  if (v93 >= v92 >> 1)
  {
    v31 = sub_10089CAD0((v92 > 1), v93 + 1, 1, v31);
  }

  *(v31 + 2) = v93 + 1;
  v94 = &v31[56 * v93];
  *(v94 + 4) = v89;
  *(v94 + 5) = v91;
  *(v94 + 6) = v85;
  *(v94 + 7) = v87;
  v94[64] = 0;
  *(v94 + 9) = &unk_100EF74B0;
  *(v94 + 10) = v88;
  LOBYTE(v125[0]) = 1;
  v128 = 0uLL;
  v129 = v104;
  LOBYTE(v130) = 0;
  *(&v130 + 1) = 0;
  LOBYTE(v131) = 1;
  *(&v131 + 1) = v31;
  v132 = 0;
  v95 = *(v123 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator + 24);
  v96 = *(v123 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator + 32);
  sub_10000954C((v123 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator), v95);
  v125[2] = v130;
  v125[3] = v131;
  v126 = v132;
  v125[0] = v128;
  v125[1] = v129;
  v127 = 0;
  v97 = *(v96 + 8);

  sub_10053A574(&v128, &v124);
  v97(v125, v95, v96);
  sub_100344A84(&v128);

  return sub_100A52D6C(v125);
}

uint64_t sub_100A4A54C()
{
  v1 = *(*(*(v0 + 16) + 64) + 40);
  *v1 = vdupq_n_s64(2uLL);
  v1[1].i8[0] = 0;
  swift_continuation_resume();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100A4A5F8()
{
  v1 = *(*(*(v0 + 16) + 64) + 40);
  *v1 = xmmword_100EE9540;
  *(v1 + 16) = 0;
  swift_continuation_resume();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100A4A6A4()
{
  v1 = *(*(*(v0 + 16) + 64) + 40);
  *v1 = xmmword_100EE9550;
  *(v1 + 16) = 0;
  swift_continuation_resume();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100A4A750()
{
  v1 = *(*(*(v0 + 16) + 64) + 40);
  *v1 = 0;
  *(v1 + 8) = 0;
  *(v1 + 16) = 1;
  swift_continuation_resume();
  v2 = *(v0 + 8);

  return v2();
}

id PlaybackController.requestedPropertySet(for:)()
{
  if (qword_1011A6B38 != -1)
  {
    swift_once();
  }

  v1 = static SharedListening.Event.properties;

  return v1;
}

uint64_t sub_100A4A920(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  type metadata accessor for MainActor();
  v4[3] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[4] = v6;
  v4[5] = v5;

  return _swift_task_switch(sub_100A4A9B8, v6, v5);
}

uint64_t sub_100A4A9B8()
{
  v1 = (v0[2] + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator);
  v2 = v1[3];
  v3 = v1[4];
  sub_10000954C(v1, v2);
  v0[6] = (*(v3 + 40))(v2, v3);
  v4 = swift_task_alloc();
  v0[7] = v4;
  *v4 = v0;
  v4[1] = sub_100A4AA98;

  return GroupActivitiesManager.leave(performLeaveCommand:)(0);
}

uint64_t sub_100A4AA98()
{
  v1 = *v0;

  v2 = *(v1 + 40);
  v3 = *(v1 + 32);

  return _swift_task_switch(sub_1001AB73C, v3, v2);
}

uint64_t sub_100A4ABDC(uint64_t a1)
{
  v34 = a1;
  v33 = type metadata accessor for UUID();
  v32 = *(v33 - 8);
  __chkstk_darwin();
  v31 = &v26 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Locale();
  __chkstk_darwin();
  v2 = type metadata accessor for String.LocalizationValue();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = &v26 - v6;
  String.LocalizationValue.init(stringLiteral:)();
  v8 = *(v3 + 16);
  v8(v5, v7, v2);
  if (qword_1011A6740 != -1)
  {
    swift_once();
  }

  v9 = qword_101219808;
  static Locale.current.getter();
  v10 = v9;
  v30 = String.init(localized:table:bundle:locale:comment:)();
  v29 = v11;
  v12 = *(v3 + 8);
  v12(v7, v2);
  String.LocalizationValue.init(stringLiteral:)();
  v8(v5, v7, v2);
  static Locale.current.getter();
  v28 = String.init(localized:table:bundle:locale:comment:)();
  v27 = v13;
  v12(v7, v2);
  sub_10010FC20(&qword_1011A7C00, &qword_100EEC4A0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_100EBC6B0;
  String.LocalizationValue.init(stringLiteral:)();
  v8(v5, v7, v2);
  static Locale.current.getter();
  v15 = String.init(localized:table:bundle:locale:comment:)();
  v17 = v16;
  v12(v7, v2);
  v18 = v31;
  UUID.init()();
  v19 = UUID.uuidString.getter();
  v21 = v20;
  (*(v32 + 8))(v18, v33);
  *(v14 + 32) = v19;
  *(v14 + 40) = v21;
  *(v14 + 48) = v15;
  *(v14 + 56) = v17;
  *(v14 + 64) = 2;
  *(v14 + 72) = 0;
  *(v14 + 80) = 0;
  LOBYTE(v36[0]) = 1;
  *&v39 = v30;
  *(&v39 + 1) = v29;
  *&v40 = v28;
  *(&v40 + 1) = v27;
  LOBYTE(v41) = 0;
  *(&v41 + 1) = 0;
  LOBYTE(v42) = 1;
  *(&v42 + 1) = v14;
  v43 = 0;
  v22 = *(v34 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator + 24);
  v23 = *(v34 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator + 32);
  sub_10000954C((v34 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator), v22);
  v36[2] = v41;
  v36[3] = v42;
  v37 = v43;
  v36[0] = v39;
  v36[1] = v40;
  v38 = 0;
  v24 = *(v23 + 8);
  sub_10053A574(&v39, v35);
  v24(v36, v22, v23);
  sub_100344A84(&v39);
  return sub_100A52D6C(v36);
}

void sub_100A4B11C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15 = &type metadata for String;
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (*(a3 + 16) <= a1)
  {
LABEL_10:
    __break(1u);
    return;
  }

  v5 = a3 + 16 * a1;
  v6 = *(v5 + 40);
  *&v14 = *(v5 + 32);
  *(&v14 + 1) = v6;
  sub_100016270(&v14, v18);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = a2;
  sub_1008B9E1C(v18, 0x79546E6F69746361, 0xEA00000000006570, isUniquelyReferenced_nonNull_native);
  v8 = v17;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    sub_100008FE4(Strong + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator, &v14);

    v11 = v15;
    v12 = v16;
    sub_10000954C(&v14, v15);
    (*(v12 + 24))(v8, v11, v12);

    sub_10000959C(&v14);
  }

  else
  {
  }

  swift_beginAccess();
  v13 = swift_unknownObjectWeakLoadStrong();
  if (v13)
  {
    v13[OBJC_IVAR____TtC9MusicCore18PlaybackController_isLeaseEndAlertPresented] = 0;
  }
}

void sub_100A4B298(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X8>)
{
  v4 = v3;
  v54 = a1;
  v55 = a2;
  v53 = type metadata accessor for UUID();
  v6 = *(v53 - 8);
  *&v7 = __chkstk_darwin().n128_u64[0];
  v52 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [v4 buttons];
  sub_100009F78(0, &qword_1011ACBA0, ICStoreDialogResponseButton_ptr);
  v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v11 = v10;
  if (v10 >> 62)
  {
    goto LABEL_20;
  }

  v12 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v45 = v4;
  for (i = a3; v12; i = a3)
  {
    v13 = 0;
    v50 = v11 & 0xFFFFFFFFFFFFFF8;
    v51 = v11 & 0xC000000000000001;
    v14 = _swiftEmptyArrayStorage;
    v47 = (v6 + 8);
    v48 = v12;
    v49 = v11;
    while (1)
    {
      if (v51)
      {
        v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v13 >= *(v50 + 16))
        {
          goto LABEL_19;
        }

        v11 = *(v11 + 8 * v13 + 32);
      }

      v15 = v11;
      v6 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      v58 = [v11 type] != 2;
      v16 = [v15 title];
      if (v16)
      {
        v17 = v16;
        v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v56 = v19;
        v57 = v18;
      }

      else
      {
        v56 = 0xE000000000000000;
        v57 = 0;
      }

      v20 = swift_allocObject();
      v22 = v54;
      v21 = v55;
      v20[2] = v15;
      v20[3] = v22;
      v20[4] = v21;
      v20[5] = v13;
      v23 = v15;
      sub_100030444(v22, v21);
      v24 = v52;
      UUID.init()();
      v25 = UUID.uuidString.getter();
      v4 = v26;
      (*v47)(v24, v53);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v14 = sub_10089CAD0(0, *(v14 + 2) + 1, 1, v14);
      }

      a3 = *(v14 + 2);
      v27 = *(v14 + 3);
      if (a3 >= v27 >> 1)
      {
        v14 = sub_10089CAD0((v27 > 1), a3 + 1, 1, v14);
      }

      v28 = 2 * v58;

      *(v14 + 2) = a3 + 1;
      v29 = &v14[56 * a3];
      *(v29 + 4) = v25;
      *(v29 + 5) = v4;
      v30 = v56;
      *(v29 + 6) = v57;
      *(v29 + 7) = v30;
      v29[64] = v28;
      *(v29 + 9) = &unk_100EF72D8;
      *(v29 + 10) = v20;
      ++v13;
      v11 = v49;
      if (v6 == v48)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    v31 = v11;
    v12 = _CocoaArrayWrapper.endIndex.getter();
    v11 = v31;
    v45 = v4;
  }

  v14 = _swiftEmptyArrayStorage;
LABEL_22:

  v32 = v45;
  v33 = [v45 message];
  if (v33)
  {
    v34 = v33;
    v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v37 = v36;
  }

  else
  {
    v35 = 0;
    v37 = 0;
  }

  v38 = i;
  v39 = [v32 explanation];
  if (v39)
  {
    v40 = v39;
    v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v43 = v42;
  }

  else
  {
    v41 = 0;
    v43 = 0;
  }

  *v38 = v35;
  *(v38 + 8) = v37;
  *(v38 + 16) = v41;
  *(v38 + 24) = v43;
  *(v38 + 32) = 0;
  *(v38 + 40) = 0;
  *(v38 + 48) = 1;
  *(v38 + 56) = v14;
  *(v38 + 64) = 0;
}

uint64_t sub_100A4B66C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((*(result + OBJC_IVAR____TtC9MusicCore18PlaybackController_isLeaseEndAlertPresented) & 1) == 0)
  {
    *(result + OBJC_IVAR____TtC9MusicCore18PlaybackController_isLeaseEndAlertPresented) = 1;
    v6 = result;
    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v8 = swift_allocObject();
    v8[2] = a3;
    v8[3] = a4;
    v8[4] = v7;

    sub_100A4B298(sub_100A534A8, v8, v16);

    v9 = *(v6 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator + 24);
    v10 = *(v6 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator + 32);
    sub_10000954C((v6 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator), v9);
    v13[2] = v16[2];
    v13[3] = v16[3];
    v14 = v17;
    v13[0] = v16[0];
    v13[1] = v16[1];
    v15 = 0;
    v11 = *(v10 + 8);
    sub_10053A574(v16, v12);
    v11(v13, v9, v10);
    sub_100344A84(v16);
    return sub_100A52D6C(v13);
  }

  return result;
}

double PlaybackController.engine(_:didFailToPlayFirstItem:withError:)(uint64_t a1, void *a2, uint64_t a3)
{
  sub_100009F78(0, &qword_1011A9F80, OS_dispatch_queue_ptr);
  v6 = swift_allocObject();
  v6[2] = a3;
  v6[3] = v3;
  v6[4] = a2;
  swift_errorRetain();
  v7 = a2;
  v8 = v3;
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_100A52860, v6);

  return result;
}

void sub_100A4B904(uint64_t a1, uint64_t a2, void *a3)
{
  v163 = a3;
  v166 = a2;
  sub_10010FC20(&qword_1011A8FF8, &qword_100EEF3C8);
  __chkstk_darwin();
  v5 = &v151 - v4;
  sub_10010FC20(&unk_1011ACB80, &qword_100EEFA40);
  __chkstk_darwin();
  v7 = &v151 - v6;
  if (qword_1011A6A60 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_1000060E4(v8, static Logger.playbackController);
  swift_errorRetain();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  v11 = os_log_type_enabled(v9, v10);
  v170 = v5;
  v172 = v7;
  if (v11)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *&v174 = v13;
    *v12 = 136446210;
    *&v199 = a1;
    swift_errorRetain();
    sub_10010FC20(&qword_1011AB640, L"D\v\a");
    v14 = String.init<A>(describing:)();
    v16 = sub_100010678(v14, v15, &v174);

    *(v12 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v9, v10, "didFailToPlayFirstItem with error=%{public}s", v12, 0xCu);
    sub_10000959C(v13);
  }

  if ((*(v166 + OBJC_IVAR____TtC9MusicCore18PlaybackController_isErrorAlertPresented) & 1) == 0)
  {
    v156 = OBJC_IVAR____TtC9MusicCore18PlaybackController_isErrorAlertPresented;
    v17 = _convertErrorToNSError(_:)();
    v18 = [v17 userInfo];
    v19 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v20 = *(v19 + 16);
    v160 = v17;
    if (v20 && (v21 = sub_100019C28(0x676F6C616964, 0xE600000000000000), (v22 & 1) != 0))
    {
      sub_10000DD18(*(v19 + 56) + 32 * v21, &v174);

      sub_10010FC20(&qword_1011A98D8, &qword_100EF1730);
      if (swift_dynamicCast())
      {

        v23 = Logger.logObject.getter();
        v24 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v23, v24))
        {
          v25 = swift_slowAlloc();
          v171 = swift_slowAlloc();
          *&v174 = v171;
          *v25 = 136446210;
          v26 = Dictionary.description.getter();
          v28 = sub_100010678(v26, v27, &v174);

          *(v25 + 4) = v28;
          v17 = v160;
          _os_log_impl(&_mh_execute_header, v23, v24, "Found an error dialog=%{public}s", v25, 0xCu);
          sub_10000959C(v171);
        }

        v29 = objc_allocWithZone(ICStoreDialogResponse);
        isa = Dictionary._bridgeToObjectiveC()().super.isa;

        v31 = [v29 initWithResponseDictionary:isa];

        sub_100A4B298(0, 0, &v174);
        v196 = v176;
        v197 = v177;
        v198 = v178;
        v194 = v174;
        v195 = v175;
LABEL_14:
        v32 = [v17 userInfo];
        v33 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

        v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        if (*(v33 + 16))
        {
          v36 = sub_100019C28(v34, v35);
          v38 = v37;

          if (v38)
          {
            sub_10000DD18(*(v33 + 56) + 32 * v36, &v174);

            sub_100009F78(0, &qword_1011A7EC0, NSError_ptr);
            if (swift_dynamicCast())
            {
              v39 = v199;
              goto LABEL_21;
            }

LABEL_20:
            v39 = 0;
LABEL_21:
            v40 = swift_allocObject();
            *(v40 + 16) = 0;
            v171 = (v40 + 16);
            v41 = swift_allocObject();
            *(v41 + 16) = 0;
            v169 = (v41 + 16);
            v42 = swift_allocObject();
            *(v42 + 16) = 0;
            v168 = (v42 + 16);
            sub_100A4D090(a1, v41, v42, v40);
            if (v39)
            {
              v43 = v39;
              sub_100A4D090(v43, v41, v42, v40);
            }

            v158 = v41;
            v159 = v42;
            v161 = v39;
            v157 = v40;
            if (!v163)
            {
              v50 = 0;
              goto LABEL_47;
            }

            v44 = v163;
            v45 = [v44 stationStringID];
            if (v45)
            {
              v46 = v45;
              v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v49 = v48;
            }

            else
            {
              v47 = 0;
              v49 = 0;
            }

            v51 = [v44 stationID];
            v52 = [v44 stationHash];
            if (v52)
            {
              v53 = v52;
              v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v56 = v55;

              v17 = v160;
              if (v49)
              {
                goto LABEL_30;
              }
            }

            else
            {
              v54 = 0;
              v56 = 0;
              if (v49)
              {
LABEL_30:
                v57 = HIBYTE(v49) & 0xF;
                if ((v49 & 0x2000000000000000) == 0)
                {
                  v57 = v47 & 0xFFFFFFFFFFFFLL;
                }

                if (v57 | v51)
                {
LABEL_40:
                  sub_100009F78(0, &qword_1011AF0D0, MPModelRadioStationKind_ptr);
                  v59 = [swift_getObjCClassFromMetadata() identityKind];
                  v167 = &v151;
                  __chkstk_darwin();
                  *(&v151 - 6) = v47;
                  *(&v151 - 5) = v49;
                  *(&v151 - 4) = v51;
                  *(&v151 - 3) = v54;
                  *(&v151 - 2) = v56;
                  v60 = objc_allocWithZone(MPIdentifierSet);
                  v61 = swift_allocObject();
                  *(v61 + 16) = sub_100A53030;
                  *(v61 + 24) = &v151 - 8;
                  *&v176 = sub_1001EBE40;
                  *(&v176 + 1) = v61;
                  *&v174 = _NSConcreteStackBlock;
                  *(&v174 + 1) = 1107296256;
                  *&v175 = sub_10006BD7C;
                  *(&v175 + 1) = &unk_1010DA4E0;
                  v62 = _Block_copy(&v174);

                  v63 = [v60 initWithModelKind:v59 block:v62];

                  _Block_release(v62);

                  LOBYTE(v59) = swift_isEscapingClosureAtFileLocation();

                  if (v59)
                  {
                    __break(1u);
                  }

                  else
                  {
                    __chkstk_darwin();
                    *(&v151 - 2) = v44;
                    v64 = objc_allocWithZone(MPModelRadioStation);
                    v65 = swift_allocObject();
                    *(v65 + 16) = sub_100A53048;
                    *(v65 + 24) = &v151 - 4;
                    *&v176 = sub_1001EBE40;
                    *(&v176 + 1) = v65;
                    *&v174 = _NSConcreteStackBlock;
                    *(&v174 + 1) = 1107296256;
                    *&v175 = sub_10006BD7C;
                    *(&v175 + 1) = &unk_1010DA530;
                    v66 = _Block_copy(&v174);

                    v50 = [v64 initWithIdentifiers:v63 block:v66];

                    _Block_release(v66);

                    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

                    v40 = v157;
                    if ((isEscapingClosureAtFileLocation & 1) == 0)
                    {
                      v17 = v160;
LABEL_46:
                      v39 = v161;
LABEL_47:
                      v68 = v171;
                      swift_beginAccess();
                      v69 = *v68;
                      v70 = v50;
                      v162 = v50;
                      if (v69 == 1)
                      {
                        if (v50)
                        {
                          sub_100008FE4(v166 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator, &v199);
                          v71 = *(&v200 + 1);
                          v72 = v201;
                          sub_10000954C(&v199, *(&v200 + 1));
                          v73 = type metadata accessor for Station();
                          v74 = v50;
                          v75 = v172;
                          dispatch thunk of LegacyModelObjectConvertible.init(_:)();
                          v76 = *(v73 - 8);
                          if ((*(v76 + 48))(v75, 1, v73) == 1)
                          {
                            sub_1000095E8(v75, &unk_1011ACB80, &qword_100EEFA40);
                            v174 = 0u;
                            v175 = 0u;
                            *&v176 = 0;
                          }

                          else
                          {
                            *(&v175 + 1) = v73;
                            *&v176 = &protocol witness table for Station;
                            v90 = sub_10001C8B8(&v174);
                            (*(v76 + 32))(v90, v75, v73);
                          }

                          v39 = v161;
                          v179 = 2;
                          (*(v72 + 8))(&v174, v71, v72);
                          sub_100A52D6C(&v174);
                          sub_10000959C(&v199);
                          v92 = v194;
                          v91 = v195;
                          v84 = v196;
                          v191[0] = *(&v196 + 1);
                          *(v191 + 3) = DWORD1(v196);
                          v83 = *(&v196 + 1);
                          v85 = v197;
                          v190[0] = *(&v197 + 1);
                          *(v190 + 3) = DWORD1(v197);
                          v82 = *(&v197 + 1);
                          v93 = v198;
                          v94 = v162;
                          v17 = v160;
                          goto LABEL_62;
                        }

                        v70 = 0;
                      }

                      v77 = v169;
                      swift_beginAccess();
                      if (*v77)
                      {
                        v78 = v50;
                        sub_100980DD0(v70, &v199);
LABEL_56:
                        sub_1000095E8(&v194, &qword_1011A9570, &qword_100EF47C0);

                        v82 = v204;
                        v81 = v205;
                        v83 = v202;
                        v84 = v201;
                        v85 = v203;
                        v164 = v199;
                        v165 = v200;
                        v174 = v199;
                        v175 = v200;
                        LOBYTE(v176) = v201;
                        *(&v176 + 1) = v202;
                        LOBYTE(v177) = v203;
                        *(&v177 + 1) = v204;
                        v178 = v205;
                        v86 = &v185;
LABEL_57:
                        sub_10053A574(&v174, v86);
                        v154 = v84;
                        goto LABEL_64;
                      }

                      v79 = v168;
                      swift_beginAccess();
                      if (*v79)
                      {
                        v80 = v50;
                        sub_100981C90(v70, 0, &v199);
                        goto LABEL_56;
                      }

                      v87 = v50;

                      v88 = _convertErrorToNSError(_:)();
                      v89 = [objc_opt_self() playbackAlertControllerForItem:v163 contentType:0 error:v88 dismissalBlock:0];

                      if (v89)
                      {
                        sub_100A4D424(&v174);
                        sub_1000095E8(&v194, &qword_1011A9570, &qword_100EF47C0);

                        v187 = v176;
                        v188 = v177;
                        v189 = v178;
                        v185 = v174;
                        v186 = v175;
                      }

                      else
                      {
                        sub_1000095E8(&v194, &qword_1011A9570, &qword_100EF47C0);
                        v185 = 0u;
                        v186 = 0u;
                        v187 = 0u;
                        v188 = 0u;
                        v189 = 0;
                      }

                      v132 = v158;
                      v131 = v159;
                      sub_100A4D80C(a1, v40, v159, v158);
                      if (v39)
                      {
                        v133 = v39;
                        sub_100A4D80C(v133, v40, v131, v132);
                      }

                      if (!v163)
                      {
                        goto LABEL_117;
                      }

                      v134 = v163;
                      v135 = [v134 modelGenericObject];
                      v94 = v162;
                      if (v135)
                      {
                        v136 = v135;
                        v137 = [v135 innermostModelObject];
                      }

                      else
                      {
                        v137 = 0;
                      }

                      if (*v171 == 1)
                      {
                        v138 = [v134 modelPlayEvent];
                        if (v138)
                        {
                          v139 = v138;
                          v140 = [v138 itemType];
                          if (v140 == 3)
                          {
                            v141 = [v139 playlist];
LABEL_115:
                            v142 = v141;

                            if (!v142)
                            {

LABEL_117:
                              v92 = v185;
                              v91 = v186;
                              v84 = v187;
                              v191[0] = *(&v187 + 1);
                              *(v191 + 3) = DWORD1(v187);
                              v83 = *(&v187 + 1);
                              v85 = v188;
                              v190[0] = *(&v188 + 1);
                              *(v190 + 3) = DWORD1(v188);
                              v82 = *(&v188 + 1);
                              v93 = v189;
                              v94 = v162;
LABEL_62:
                              if (!v82)
                              {
                                v174 = v92;
                                v175 = v91;
                                LOBYTE(v176) = v84;
                                *(&v176 + 1) = v191[0];
                                DWORD1(v176) = *(v191 + 3);
                                *(&v176 + 1) = v83;
                                LOBYTE(v177) = v85;
                                *(&v177 + 1) = v190[0];
                                DWORD1(v177) = *(v190 + 3);
                                *(&v177 + 1) = 0;
                                v178 = v93;
                                if (v39)
                                {
LABEL_74:
                                  v118 = [v39 domain];
                                  v119 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                                  v121 = v120;

                                  v122 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                                  if (v121)
                                  {
                                    if (v119 == v122 && v121 == v123)
                                    {

LABEL_80:
                                      if ([v39 code] != 40)
                                      {

                                        sub_1000095E8(&v174, &qword_1011A9570, &qword_100EF47C0);

LABEL_107:

                                        v17 = v162;
                                        goto LABEL_108;
                                      }

                                      if (!v163)
                                      {
                                        v128 = 0;
                                        v130 = 0;
                                        v127 = 0;
LABEL_106:
                                        sub_100A4F0A0(v128, v130, 0, 0);

                                        sub_1000095E8(&v174, &qword_1011A9570, &qword_100EF47C0);

                                        goto LABEL_107;
                                      }

                                      v125 = [v163 modelGenericObject];
                                      if (v125)
                                      {
                                        v126 = v125;
                                        v127 = [v125 flattenedGenericObject];

                                        if (v127)
                                        {
                                          v128 = MPModelObject.bestIdentifier(for:)(2, 1u);
                                          v130 = v129;
                                        }

                                        else
                                        {
                                          v128 = 0;
                                          v130 = 0;
                                        }

                                        goto LABEL_106;
                                      }

LABEL_129:
                                      __break(1u);
                                      return;
                                    }

                                    v124 = _stringCompareWithSmolCheck(_:_:expecting:)();

                                    if (v124)
                                    {
                                      goto LABEL_80;
                                    }

                                    sub_1000095E8(&v174, &qword_1011A9570, &qword_100EF47C0);

LABEL_108:

                                    return;
                                  }

                                  v94 = v162;
LABEL_87:

                                  sub_1000095E8(&v174, &qword_1011A9570, &qword_100EF47C0);

                                  goto LABEL_108;
                                }

LABEL_86:
                                static String._unconditionallyBridgeFromObjectiveC(_:)();
                                goto LABEL_87;
                              }

                              v174 = v92;
                              v175 = v91;
                              LOBYTE(v176) = v84;
                              *(&v176 + 1) = v191[0];
                              DWORD1(v176) = *(v191 + 3);
                              *(&v176 + 1) = v83;
                              LOBYTE(v177) = v85;
                              *(&v177 + 1) = v190[0];
                              DWORD1(v177) = *(v190 + 3);
                              *(&v177 + 1) = v82;
                              v178 = v93;
                              v81 = v93;
                              v164 = v92;
                              v165 = v91;
                              sub_10053A574(&v174, &v199);
                              v193[0] = v191[0];
                              *(v193 + 3) = *(v191 + 3);
                              v192[0] = v190[0];
                              *(v192 + 3) = *(v190 + 3);
                              v154 = v84;
                              LOBYTE(v84) = v84 & 1;
LABEL_64:
                              v96 = v164;
                              v95 = v165;
                              v185 = v164;
                              v186 = v165;
                              LOBYTE(v187) = v84;
                              v155 = v83;
                              *(&v187 + 1) = v83;
                              v153 = v85;
                              LOBYTE(v188) = v85 & 1;
                              *(&v188 + 1) = v82;
                              v189 = v81;
                              v152 = v81;
                              v97 = *(v82 + 16);
                              if (v97)
                              {

                                v98 = _swiftEmptyArrayStorage;
                                v151 = v82;
                                v99 = (v82 + 80);
                                do
                                {
                                  v169 = v98;
                                  v172 = v97;
                                  v100 = *(v99 - 6);
                                  v101 = *(v99 - 5);
                                  v102 = *(v99 - 4);
                                  v103 = *(v99 - 3);
                                  LODWORD(v167) = *(v99 - 16);
                                  v105 = *(v99 - 1);
                                  v104 = *v99;
                                  v106 = swift_allocObject();
                                  swift_unknownObjectWeakInit();
                                  v107 = swift_allocObject();
                                  v170 = v102;
                                  v171 = v100;
                                  *(v107 + 16) = v100;
                                  *(v107 + 24) = v101;
                                  v98 = v169;
                                  v108 = v167;
                                  *(v107 + 32) = v102;
                                  *(v107 + 40) = v103;
                                  v109 = v108;
                                  *(v107 + 48) = v108;
                                  *(v107 + 49) = v206[0];
                                  *(v107 + 52) = *(v206 + 3);
                                  *(v107 + 56) = v105;
                                  *(v107 + 64) = v104;
                                  *(v107 + 72) = v106;
                                  swift_bridgeObjectRetain_n();
                                  swift_bridgeObjectRetain_n();
                                  sub_100030444(v105, v104);

                                  v168 = v104;
                                  sub_100030444(v105, v104);
                                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                                  {
                                    v98 = sub_10089CAD0(0, *(v98 + 2) + 1, 1, v98);
                                  }

                                  v111 = *(v98 + 2);
                                  v110 = *(v98 + 3);
                                  if (v111 >= v110 >> 1)
                                  {
                                    v98 = sub_10089CAD0((v110 > 1), v111 + 1, 1, v98);
                                  }

                                  v99 += 7;

                                  sub_100020438(v105, v168);
                                  *(v98 + 2) = v111 + 1;
                                  v112 = &v98[56 * v111];
                                  v113 = v170;
                                  *(v112 + 4) = v171;
                                  *(v112 + 5) = v101;
                                  *(v112 + 6) = v113;
                                  *(v112 + 7) = v103;
                                  v112[64] = v109;
                                  *(v112 + 9) = &unk_100EF72C8;
                                  *(v112 + 10) = v107;
                                  v97 = v172 - 1;
                                }

                                while (v172 != 1);
                                v82 = v151;

                                v17 = v160;
                                v96 = v164;
                                v95 = v165;
                              }

                              else
                              {
                                v98 = _swiftEmptyArrayStorage;
                              }

                              v164 = v96;
                              v165 = v95;
                              LOBYTE(v174) = 1;
                              v180 = v96;
                              v181 = v95;
                              LOBYTE(v182) = 0;
                              *(&v182 + 1) = 0;
                              LOBYTE(v183) = 1;
                              *(&v183 + 1) = v98;
                              v184 = 0;
                              v114 = v166;
                              *(v166 + v156) = 1;
                              v115 = *(v114 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator + 24);
                              v116 = *(v114 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator + 32);
                              sub_10000954C((v114 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator), v115);
                              v176 = v182;
                              v177 = v183;
                              v178 = v184;
                              v174 = v180;
                              v175 = v181;
                              v179 = 0;
                              v117 = *(v116 + 8);

                              sub_10053A574(&v180, &v173);
                              v117(&v174, v115, v116);
                              sub_100344A84(&v185);
                              sub_100344A84(&v180);
                              sub_100A52D6C(&v174);
                              v174 = v164;
                              v175 = v165;
                              LOBYTE(v176) = v154;
                              *(&v176 + 1) = v193[0];
                              DWORD1(v176) = *(v193 + 3);
                              *(&v176 + 1) = v155;
                              LOBYTE(v177) = v153;
                              *(&v177 + 1) = v192[0];
                              DWORD1(v177) = *(v192 + 3);
                              *(&v177 + 1) = v82;
                              v178 = v152;
                              v39 = v161;
                              v94 = v162;
                              if (v161)
                              {
                                goto LABEL_74;
                              }

                              goto LABEL_86;
                            }

LABEL_121:
                            v143 = v142;
                            sub_100008FE4(v166 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator, &v199);
                            v144 = *(&v200 + 1);
                            v145 = v201;
                            sub_10000954C(&v199, *(&v200 + 1));
                            v146 = v143;
                            v147 = v170;
                            GenericMusicItem.init(_:)();
                            v148 = type metadata accessor for GenericMusicItem();
                            v149 = *(v148 - 8);
                            if ((*(v149 + 48))(v147, 1, v148) == 1)
                            {
                              sub_1000095E8(v147, &qword_1011A8FF8, &qword_100EEF3C8);
                              v174 = 0u;
                              v175 = 0u;
                              *&v176 = 0;
                            }

                            else
                            {
                              *(&v175 + 1) = v148;
                              *&v176 = sub_100A52FE8(&unk_1011ACB90, &type metadata accessor for GenericMusicItem, &protocol conformance descriptor for GenericMusicItem);
                              v150 = sub_10001C8B8(&v174);
                              (*(v149 + 32))(v150, v147, v148);
                            }

                            v179 = 2;
                            (*(v145 + 8))(&v174, v144, v145);

                            sub_100A52D6C(&v174);
                            sub_10000959C(&v199);
                            v92 = v185;
                            v91 = v186;
                            v84 = v187;
                            v191[0] = *(&v187 + 1);
                            *(v191 + 3) = DWORD1(v187);
                            v83 = *(&v187 + 1);
                            v85 = v188;
                            v190[0] = *(&v188 + 1);
                            *(v190 + 3) = DWORD1(v188);
                            v82 = *(&v188 + 1);
                            v93 = v189;
                            v17 = v160;
                            v39 = v161;
                            v94 = v162;
                            goto LABEL_62;
                          }

                          if (v140 == 1)
                          {
                            v141 = [v139 album];
                            goto LABEL_115;
                          }
                        }

                        if (v137)
                        {
                          v142 = v137;
                          goto LABEL_121;
                        }

LABEL_126:
                        v92 = v185;
                        v91 = v186;
                        v84 = v187;
                        v191[0] = *(&v187 + 1);
                        *(v191 + 3) = DWORD1(v187);
                        v83 = *(&v187 + 1);
                        v85 = v188;
                        v190[0] = *(&v188 + 1);
                        *(v190 + 3) = DWORD1(v188);
                        v82 = *(&v188 + 1);
                        v93 = v189;
                        goto LABEL_62;
                      }

                      if (*v169)
                      {
                        sub_100980DD0(v137, &v199);
                      }

                      else
                      {
                        if ((*v168 & 1) == 0)
                        {

                          goto LABEL_126;
                        }

                        sub_100981C90(v137, 0, &v199);
                      }

                      sub_1000095E8(&v185, &qword_1011A9570, &qword_100EF47C0);

                      v82 = v204;
                      v81 = v205;
                      v83 = v202;
                      v84 = v201;
                      v85 = v203;
                      v164 = v199;
                      v165 = v200;
                      v174 = v199;
                      v175 = v200;
                      LOBYTE(v176) = v201;
                      *(&v176 + 1) = v202;
                      LOBYTE(v177) = v203;
                      *(&v177 + 1) = v204;
                      v178 = v205;
                      v86 = &v180;
                      goto LABEL_57;
                    }
                  }

                  __break(1u);
                  goto LABEL_129;
                }

LABEL_36:
                if (v56)
                {
                  v58 = HIBYTE(v56) & 0xF;
                  if ((v56 & 0x2000000000000000) == 0)
                  {
                    v58 = v54 & 0xFFFFFFFFFFFFLL;
                  }

                  if (v58)
                  {
                    goto LABEL_40;
                  }
                }

                else
                {
                }

                v50 = 0;
                v40 = v157;
                goto LABEL_46;
              }
            }

            if (v51)
            {
              goto LABEL_40;
            }

            goto LABEL_36;
          }
        }

        else
        {
        }

        goto LABEL_20;
      }
    }

    else
    {
    }

    v194 = 0u;
    v195 = 0u;
    v196 = 0u;
    v197 = 0u;
    v198 = 0;
    goto LABEL_14;
  }
}

void sub_100A4D090(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = _convertErrorToNSError(_:)();
  v8 = _convertErrorToNSError(_:)();
  Category = MPCRadioPlaybackErrorGetCategory();

  switch(Category)
  {
    case 3:
      v10 = (a4 + 16);
      break;
    case 2:
      v10 = (a3 + 16);
      break;
    case 1:
      v10 = (a2 + 16);
      break;
    default:
      return;
  }

  swift_beginAccess();
  *v10 = 1;
}

void sub_100A4D138(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  v12[2] = a2;
  v12[3] = a3;
  v12[4] = a4;
  v12[5] = a5;
  v12[6] = a6;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_100A532F8;
  *(v13 + 24) = v12;
  v15[4] = sub_1002CF914;
  v15[5] = v13;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 1107296256;
  v15[2] = sub_1002B8A68;
  v15[3] = &unk_1010DA670;
  v14 = _Block_copy(v15);

  [a1 setRadioIdentifiersWithBlock:v14];
  _Block_release(v14);
  LOBYTE(a1) = swift_isEscapingClosureAtFileLocation();

  if (a1)
  {
    __break(1u);
  }
}

void sub_100A4D2BC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a3)
  {
    v9 = String._bridgeToObjectiveC()();
  }

  else
  {
    v9 = 0;
  }

  [a1 setStationStringID:v9];

  [a1 setStationID:a4];
  if (a6)
  {
    v10 = String._bridgeToObjectiveC()();
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;
  [a1 setStationHash:?];
}

void sub_100A4D38C(uint64_t a1, void *a2)
{
  objc_opt_self();
  v3 = swift_dynamicCastObjCClassUnconditional();
  v4 = [a2 stationName];
  [v3 setName:v4];
}

void sub_100A4D424(uint64_t a1@<X8>)
{
  v2 = v1;
  v48 = type metadata accessor for UUID();
  v4 = *(v48 - 8);
  *&v5 = __chkstk_darwin().n128_u64[0];
  v47 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [v1 actions];
  sub_100009F78(0, &unk_1011ACC18, UIAlertAction_ptr);
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v8 >> 62)
  {
    v9 = _CocoaArrayWrapper.endIndex.getter();
    if (v9)
    {
      goto LABEL_3;
    }

LABEL_21:

    v11 = _swiftEmptyArrayStorage;
    goto LABEL_22;
  }

  v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v9)
  {
    goto LABEL_21;
  }

LABEL_3:
  if (v9 < 1)
  {
    __break(1u);
    return;
  }

  v41 = v2;
  v42 = a1;
  v10 = 0;
  v43 = (v4 + 8);
  v44 = v8 & 0xC000000000000001;
  v11 = _swiftEmptyArrayStorage;
  v45 = v9;
  v46 = v8;
  do
  {
    if (v44)
    {
      v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v12 = *(v8 + 8 * v10 + 32);
    }

    v13 = v12;
    v14 = [v12 handler];
    if (v14)
    {
      v15 = swift_allocObject();
      *(v15 + 16) = v14;
      v14 = sub_10054CD3C;
    }

    else
    {
      v15 = 0;
    }

    v16 = [v13 title];
    if (v16)
    {
      v17 = v16;
      v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v49 = v19;
      v50 = v18;
    }

    else
    {
      v49 = 0xE000000000000000;
      v50 = 0;
    }

    v20 = swift_allocObject();
    v20[2] = v14;
    v20[3] = v15;
    v20[4] = v13;
    sub_100030444(v14, v15);
    v21 = v13;
    v22 = v47;
    UUID.init()();
    v23 = UUID.uuidString.getter();
    v25 = v24;
    (*v43)(v22, v48);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = sub_10089CAD0(0, *(v11 + 2) + 1, 1, v11);
    }

    v27 = *(v11 + 2);
    v26 = *(v11 + 3);
    if (v27 >= v26 >> 1)
    {
      v11 = sub_10089CAD0((v26 > 1), v27 + 1, 1, v11);
    }

    ++v10;

    sub_100020438(v14, v15);
    *(v11 + 2) = v27 + 1;
    v28 = &v11[56 * v27];
    *(v28 + 4) = v23;
    *(v28 + 5) = v25;
    v29 = v49;
    *(v28 + 6) = v50;
    *(v28 + 7) = v29;
    v28[64] = 2;
    *(v28 + 9) = &unk_100EF7328;
    *(v28 + 10) = v20;
    v8 = v46;
  }

  while (v45 != v10);

  v2 = v41;
  a1 = v42;
LABEL_22:
  v30 = [v2 title];
  if (v30)
  {
    v31 = v30;
    v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v34 = v33;
  }

  else
  {
    v32 = 0;
    v34 = 0;
  }

  v35 = [v2 message];
  if (v35)
  {
    v36 = v35;
    v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v39 = v38;
  }

  else
  {
    v37 = 0;
    v39 = 0;
  }

  *a1 = v32;
  *(a1 + 8) = v34;
  *(a1 + 16) = v37;
  *(a1 + 24) = v39;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 1;
  *(a1 + 56) = v11;
  *(a1 + 64) = 0;
}

void sub_100A4D80C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_errorRetain();
  sub_10010FC20(&qword_1011AB640, L"D\v\a");
  type metadata accessor for MPCError(0);
  if (swift_dynamicCast())
  {
    sub_100A52FE8(&qword_1011A79A0, type metadata accessor for MPCError, &unk_100EEB894);
    _BridgedStoredNSError.code.getter();

    switch(v7)
    {
      case 10:
        swift_beginAccess();
        *(a4 + 16) = 1;
        break;
      case 11:
        swift_beginAccess();
        *(a3 + 16) = 1;
        break;
      case 17:
        swift_beginAccess();
        *(a2 + 16) = 1;
        break;
    }
  }
}

uint64_t sub_100A4D960(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[23] = a3;
  v4[24] = a4;
  v4[22] = a2;
  sub_10010FC20(&qword_1011A7F00, &qword_100EEDE10);
  v4[25] = swift_task_alloc();

  return _swift_task_switch(sub_100A4DA00, 0, 0);
}

uint64_t sub_100A4DA00()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 176);
  v3 = *(v0 + 184);
  v4 = type metadata accessor for TaskPriority();
  (*(*(v4 - 8) + 56))(v1, 1, 1, v4);
  *(v0 + 112) = *v3;
  *(v0 + 128) = v3[1];
  v5 = *(v3 + 5);
  v6 = *(v3 + 6);
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  v8 = *v3;
  v9 = v3[1];
  v10 = v3[2];
  *(v7 + 80) = *(v3 + 6);
  *(v7 + 48) = v9;
  *(v7 + 64) = v10;
  *(v7 + 32) = v8;
  v11 = *(v2 + 64);
  v12 = *(v2 + 48);
  v13 = *(v2 + 16);
  *(v7 + 120) = *(v2 + 32);
  *(v7 + 136) = v12;
  *(v7 + 152) = v11;
  *(v7 + 104) = v13;
  *(v7 + 88) = *v2;
  sub_100118E9C(v0 + 112, v0 + 144);
  sub_100118E9C(v0 + 128, v0 + 160);
  sub_100030444(v5, v6);
  sub_1000089F8(v2, v0 + 16, &qword_1011A9570, &qword_100EF47C0);
  sub_100969440(0, 0, v1, &unk_100EF7338, v7);

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    Strong[OBJC_IVAR____TtC9MusicCore18PlaybackController_isErrorAlertPresented] = 0;
  }

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_100A4DBC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a4 + 40);
  if (v6)
  {
    v12 = (v6 + *v6);
    v9 = swift_task_alloc();
    *(v5 + 16) = v9;
    *v9 = v5;
    v9[1] = sub_10002F3F4;

    return v12(a4, a5);
  }

  else
  {
    v11 = *(v5 + 8);

    return v11();
  }
}

double PlaybackController.engine(_:requiresAuthorizationToPlay:reason:authorizationHandler:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_100009F78(0, &qword_1011A9F80, OS_dispatch_queue_ptr);
  v10 = swift_allocObject();
  v10[2] = a3;
  v10[3] = v5;
  v10[4] = a2;
  v10[5] = a4;
  v10[6] = a5;
  v11 = v5;
  v12 = a2;

  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_100A5286C, v10);

  return result;
}

void sub_100A4DEBC(uint64_t a1, void *a2, void (*a3)(void, void), void (*a4)(void, void, __n128), uint64_t a5)
{
  v121 = a2;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v116 = v9;
  v117 = v10;
  __chkstk_darwin();
  v115 = &v99 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Locale();
  __chkstk_darwin();
  v114 = &v99 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = type metadata accessor for String.LocalizationValue();
  v13 = *(v120 - 8);
  __chkstk_darwin();
  v15 = &v99 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v17 = &v99 - v16;
  if (qword_1011A6A60 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  sub_1000060E4(v18, static Logger.playbackController);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.error.getter();
  v21 = os_log_type_enabled(v19, v20);
  v119 = a3;
  v113 = v15;
  if (v21)
  {
    v22 = swift_slowAlloc();
    v118 = v13;
    v23 = v22;
    v112 = swift_slowAlloc();
    *&v136[0] = v112;
    *v23 = 136446210;
    v24 = a1;
    *&v128 = a1;
    type metadata accessor for MPCExplicitContentAuthorizationReason(0);
    v25 = String.init<A>(describing:)();
    v27 = v17;
    v28 = sub_100010678(v25, v26, v136);
    v29 = a5;
    v30 = a4;

    *(v23 + 4) = v28;
    v17 = v27;
    a3 = v119;
    _os_log_impl(&_mh_execute_header, v19, v20, "requiresAuthorizationToPlay with reason=%{public}s", v23, 0xCu);
    sub_10000959C(v112);

    v13 = v118;

    if (v24 != 2)
    {
      goto LABEL_5;
    }
  }

  else
  {

    v38 = a1;
    v29 = a5;
    v30 = a4;
    if (v38 != 2)
    {
LABEL_5:
      if (qword_1011A6820 != -1)
      {
        swift_once();
      }

      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter(&v128);

      v138 = v132;
      v139 = v133;
      v140 = v134;
      v141 = v135;
      v136[0] = v128;
      v136[1] = v129;
      v136[2] = v130;
      v137 = v131;
      v31 = v132;
      if (!v132 || (v32 = v139) == 0)
      {
        v118 = v29;
        v119 = v30;
        String.LocalizationValue.init(stringLiteral:)();
        v45 = v113;
        v112 = *(v13 + 16);
        v112(v113, v17, v120);
        if (qword_1011A6740 != -1)
        {
          swift_once();
        }

        v46 = qword_101219808;
        static Locale.current.getter();
        v47 = v46;
        v48 = String.init(localized:table:bundle:locale:comment:)();
        v110 = v49;
        v111 = v48;
        v50 = *(v13 + 8);
        v51 = v120;
        v50(v17, v120);
        v52 = v115;
        UUID.init()();
        v53 = UUID.uuidString.getter();
        v108 = v54;
        v109 = v53;
        (*(v117 + 8))(v52, v116);
        String.LocalizationValue.init(stringLiteral:)();
        v112(v45, v17, v51);
        static Locale.current.getter();
        v55 = String.init(localized:table:bundle:locale:comment:)();
        v57 = v56;
        v50(v17, v51);
        sub_10010FC20(&qword_1011A7C00, &qword_100EEC4A0);
        v58 = swift_allocObject();
        *(v58 + 16) = xmmword_100EBC6B0;
        v59 = v108;
        *(v58 + 32) = v109;
        *(v58 + 40) = v59;
        v60 = v110;
        *(v58 + 48) = v111;
        *(v58 + 56) = v60;
        *(v58 + 64) = 2;
        *(v58 + 72) = 0;
        *(v58 + 80) = 0;
        v123 = 0uLL;
        *&v124 = v55;
        *(&v124 + 1) = v57;
        LOBYTE(v125) = 0;
        *(&v125 + 1) = 0;
        LOBYTE(v126) = 1;
        *(&v126 + 1) = v58;
        v127 = 0;
        v61 = *(v121 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator + 24);
        v62 = *(v121 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator + 32);
        sub_10000954C((v121 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator), v61);
        v130 = v125;
        v131 = v126;
        *&v132 = v127;
        v128 = v123;
        v129 = v124;
        BYTE8(v132) = 0;
        v63 = *(v62 + 8);

        sub_10053A574(&v123, v122);
        v63(&v128, v61, v62);
        sub_100A52D6C(&v128);
        v119(0, 0);
        sub_100344A84(&v123);

        goto LABEL_19;
      }

      v107 = *(&v138 + 1);
      v108 = *(&v137 + 1);
      v33 = objc_opt_self();

      v109 = v32;

      v34 = [v33 standardUserDefaults];
      *&v123 = 0xD000000000000012;
      *(&v123 + 1) = 0x8000000100E60D20;
      sub_10000988C();
      NSUserDefaults.subscript.getter(&v128);

      v110 = v31;
      if (*(&v129 + 1))
      {
        sub_10010FC20(&unk_1011A9FA0, &unk_100EEC490);
        v35 = swift_dynamicCast();
        v36 = v119;
        if (v35)
        {
          v37 = v123;
LABEL_24:
          v64 = [v36 cloudUniversalLibraryID];
          if (!v64)
          {

LABEL_29:
            String.LocalizationValue.init(stringLiteral:)();
            v70 = v113;
            v103 = *(v13 + 16);
            v104 = v13 + 16;
            v103(v113, v17, v120);
            if (qword_1011A6740 != -1)
            {
              swift_once();
            }

            v71 = qword_101219808;
            v72 = qword_101219808;
            v101 = v71;
            v73 = v72;
            static Locale.current.getter();
            v74 = v73;
            v106 = String.init(localized:table:bundle:locale:comment:)();
            v112 = v75;
            v76 = *(v13 + 8);
            v118 = v13 + 8;
            v100 = v76;
            v77 = v120;
            v76(v17, v120);
            v78 = swift_allocObject();
            v105 = v78;
            v78[2] = v36;
            v78[3] = v30;
            v78[4] = v29;
            v79 = v36;

            v80 = v115;
            UUID.init()();
            v102 = UUID.uuidString.getter();
            v111 = v81;
            v119 = v30;
            v82 = v116;
            v83 = v17;
            v84 = *(v117 + 8);
            v84(v80, v116);
            String.LocalizationValue.init(stringLiteral:)();
            v103(v70, v83, v77);
            static Locale.current.getter();
            v117 = String.init(localized:table:bundle:locale:comment:)();
            v114 = v85;
            v100(v83, v77);
            v86 = v82;
            v87 = swift_allocObject();
            *(v87 + 16) = v119;
            *(v87 + 24) = v29;

            UUID.init()();
            v88 = UUID.uuidString.getter();
            v90 = v89;
            v120 = v89;
            v84(v80, v86);
            sub_10010FC20(&qword_1011A7C00, &qword_100EEC4A0);
            v91 = swift_allocObject();
            *(v91 + 16) = xmmword_100EBDC20;
            v93 = v111;
            v92 = v112;
            *(v91 + 32) = v102;
            *(v91 + 40) = v93;
            v94 = v105;
            *(v91 + 48) = v106;
            *(v91 + 56) = v92;
            *(v91 + 64) = 2;
            *(v91 + 72) = &unk_100EF72A8;
            *(v91 + 80) = v94;
            *(v91 + 88) = v88;
            *(v91 + 96) = v90;
            v95 = v114;
            *(v91 + 104) = v117;
            *(v91 + 112) = v95;
            *(v91 + 120) = 0;
            *(v91 + 128) = &unk_100EF72B8;
            *(v91 + 136) = v87;
            LOBYTE(v128) = 1;
            *&v123 = v108;
            *(&v123 + 1) = v110;
            *&v124 = v107;
            *(&v124 + 1) = v109;
            LOBYTE(v125) = 0;
            *(&v125 + 1) = 0;
            LOBYTE(v126) = 1;
            *(&v126 + 1) = v91;
            v127 = 0;
            v96 = *(v121 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator + 24);
            v97 = *(v121 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator + 32);
            v121 = sub_10000954C((v121 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator), v96);
            v130 = v125;
            v131 = v126;
            *&v132 = v127;
            v128 = v123;
            v129 = v124;
            BYTE8(v132) = 0;
            v98 = *(v97 + 8);

            sub_10053A574(&v123, v122);
            v98(&v128, v96, v97);
            sub_100014984(v136);
            sub_100344A84(&v123);

            sub_100A52D6C(&v128);
            return;
          }

          v118 = v13;

          v65 = [v36 cloudUniversalLibraryID];
          if (v65)
          {
            v66 = v65;
            v67 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v69 = v68;

            *&v128 = v67;
            *(&v128 + 1) = v69;
            __chkstk_darwin();
            *(&v99 - 2) = &v128;
            LOBYTE(v66) = sub_10044AB94(sub_100A52F18, (&v99 - 4), v37);

            v13 = v118;
            v36 = v119;
            if (v66)
            {

              v30(1, 0);
LABEL_19:
              sub_100014984(v136);
              return;
            }

            goto LABEL_29;
          }

LABEL_33:
          __break(1u);
          return;
        }
      }

      else
      {
        sub_1000095E8(&v128, &qword_1011ABB20, &unk_100EF1530);
        v36 = v119;
      }

      v37 = _swiftEmptyArrayStorage;
      goto LABEL_24;
    }
  }

  v39 = [a3 modelGenericObject];
  if (!v39)
  {
    __break(1u);
    goto LABEL_33;
  }

  v40 = v39;
  v41 = [v39 flattenedGenericObject];

  if (v41)
  {
    v42 = MPModelObject.bestIdentifier(for:)(2, 1u);
    v44 = v43;
  }

  else
  {
    v42 = 0;
    v44 = 0;
  }

  sub_100A4F0A0(v42, v44, v30, v29);
}

uint64_t sub_100A4EBB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[9] = a4;
  v5[10] = a5;
  v5[8] = a3;
  return _swift_task_switch(sub_100A4EBDC, 0, 0);
}

uint64_t sub_100A4EBDC()
{
  v20 = v0;
  v1 = [*(v0 + 64) cloudUniversalLibraryID];
  if (!v1)
  {
    goto LABEL_16;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  v6 = objc_opt_self();
  v7 = [v6 standardUserDefaults];
  *(v0 + 48) = 0xD000000000000012;
  *(v0 + 56) = 0x8000000100E60D20;
  v8 = sub_10000988C();
  NSUserDefaults.subscript.getter((v0 + 16));

  if (*(v0 + 40))
  {
    sub_10010FC20(&unk_1011A9FA0, &unk_100EEC490);
    if (swift_dynamicCast())
    {
      v9 = *(v0 + 48);
      v10 = *(v9 + 2);
      if (v10 > 0x3E7)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v18 = v9;
        if (!isUniquelyReferenced_nonNull_native || *(v9 + 3) <= 0x7CDuLL)
        {
          v9 = sub_10089C4F8(isUniquelyReferenced_nonNull_native, v10, 1, v9);
          v18 = v9;
        }

        sub_10099CEBC(0, v10 - 999, 0);
      }

      goto LABEL_11;
    }
  }

  else
  {
    sub_1000095E8(v0 + 16, &qword_1011ABB20, &unk_100EF1530);
  }

  v9 = _swiftEmptyArrayStorage;
LABEL_11:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v9 = sub_10089C4F8(0, *(v9 + 2) + 1, 1, v9);
  }

  v13 = *(v9 + 2);
  v12 = *(v9 + 3);
  if (v13 >= v12 >> 1)
  {
    v9 = sub_10089C4F8((v12 > 1), v13 + 1, 1, v9);
  }

  *(v9 + 2) = v13 + 1;
  v14 = &v9[16 * v13];
  *(v14 + 4) = v3;
  *(v14 + 5) = v5;
  v15 = [v6 standardUserDefaults];
  v19[3] = sub_10010FC20(&unk_1011A9FA0, &unk_100EEC490);
  v19[0] = v9;
  *(v0 + 16) = 0xD000000000000012;
  *(v0 + 24) = 0x8000000100E60D20;
  NSUserDefaults.subscript.setter(v19, v0 + 16, &type metadata for String, v8);

LABEL_16:
  (*(v0 + 72))(1, 0);
  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_100A4EE80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a3;
  *(v4 + 24) = a4;
  return _swift_task_switch(sub_100A4EEA0, 0, 0);
}

uint64_t sub_100A4EEA0()
{
  (*(v0 + 16))(0, 0);
  v1 = *(v0 + 8);

  return v1();
}

void sub_100A4F030(char a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = _convertErrorToNSError(_:)();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1 & 1);
}

void sub_100A4F0A0(uint64_t a1, uint64_t a2, void (*a3)(void, void), uint64_t a4)
{
  v5 = v4;
  v70 = a4;
  v73 = a3;
  sub_10010FC20(&qword_1011A77F0, &unk_100EEAA20);
  __chkstk_darwin();
  v69 = &v64 - v8;
  v72 = type metadata accessor for URL();
  v9 = *(v72 - 8);
  __chkstk_darwin();
  v67 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v12 = &v64 - v11;
  if (qword_1011A6A60 != -1)
  {
    swift_once();
  }

  v71 = type metadata accessor for Logger();
  sub_1000060E4(v71, static Logger.playbackController);

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  v15 = os_log_type_enabled(v13, v14);
  v68 = a1;
  if (v15)
  {
    v16 = a2;
    v17 = v12;
    v18 = v9;
    v19 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    *&v74[0] = v66;
    *v19 = 136446210;
    v20 = v5;
    v21 = v19;
    *&v79[0] = a1;
    *(&v79[0] + 1) = v16;

    sub_10010FC20(&unk_1011ACB70, &qword_100EEEF60);
    v22 = String.init<A>(describing:)();
    v24 = sub_100010678(v22, v23, v74);
    v9 = v18;
    v12 = v17;
    a2 = v16;

    v25 = v21;
    *(v21 + 1) = v24;
    v26 = v72;
    v5 = v20;
    _os_log_impl(&_mh_execute_header, v13, v14, "Presenting Age Verification with model identifier=%{public}s", v25, 0xCu);
    sub_10000959C(v66);
  }

  else
  {

    v26 = v72;
  }

  if (qword_1011A6820 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v74);

  v79[4] = v75;
  v79[5] = v76;
  v79[6] = v77;
  v79[7] = v78;
  v79[0] = v74[0];
  v79[1] = v74[1];
  v79[2] = v74[2];
  v79[3] = v74[3];
  sub_100014984(v79);
  if (BYTE1(v79[0]) != 1)
  {
    v32 = *(v5 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator + 24);
    v33 = *(v5 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator + 32);
    sub_10000954C((v5 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator), v32);
    v34 = sub_1009823E4(v74);
    BYTE8(v75) = 0;
    (*(v33 + 8))(v74, v32, v33, v34);
    sub_100A52D6C(v74);
    if (qword_1011A6A68 != -1)
    {
      swift_once();
    }

    sub_1000060E4(v71, qword_1011ACA10);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v28, v29))
    {
      goto LABEL_21;
    }

    v30 = swift_slowAlloc();
    *v30 = 0;
    v31 = "Device is offline. Age Verification cannot proceed. Displaying fallback alert instead.";
    goto LABEL_20;
  }

  if (qword_1011A7128 != -1)
  {
    swift_once();
  }

  v27 = v69;
  ExplicitRestrictionsController.accountVerificationURL.getter(v69);
  if ((*(v9 + 48))(v27, 1, v26) == 1)
  {
    sub_1000095E8(v27, &qword_1011A77F0, &unk_100EEAA20);
    if (qword_1011A6A68 != -1)
    {
      swift_once();
    }

    sub_1000060E4(v71, qword_1011ACA10);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v28, v29))
    {
      goto LABEL_21;
    }

    v30 = swift_slowAlloc();
    *v30 = 0;
    v31 = "accountVerificationURL is missing. Age Verification cannot proceed.";
LABEL_20:
    _os_log_impl(&_mh_execute_header, v28, v29, v31, v30, 2u);

LABEL_21:

    if (v73)
    {
      v73(0, 0);
    }

    return;
  }

  v35 = *(v9 + 32);
  v35(v12, v27, v26);
  v36 = qword_1011A6A68;
  v65 = v5;
  if (a2)
  {
    v69 = v12;

    if (v36 != -1)
    {
      swift_once();
    }

    sub_1000060E4(v71, qword_1011ACA10);
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&_mh_execute_header, v37, v38, "modelObjectIdentifier parameters found for age verification context", v39, 2u);
    }

    sub_10010FC20(&unk_1011ACB60, &qword_100EF0D88);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100EBC6B0;
    *(inited + 32) = 0x64496D616461;
    v41 = inited + 32;
    v42 = v68;
    *(inited + 40) = 0xE600000000000000;
    *(inited + 48) = v42;
    *(inited + 56) = a2;
    v43 = sub_1008BC7B0(inited);
    swift_setDeallocating();
    sub_1000095E8(v41, &qword_1011A98B0, &qword_100EF0D90);
    v44 = v67;
    v12 = v69;
    URL.parametrize(_:)(v43, v67);

    (*(v9 + 8))(v12, v26);
    v35(v12, v44, v26);
    v45 = v9;
  }

  else
  {
    if (qword_1011A6A68 != -1)
    {
      swift_once();
    }

    sub_1000060E4(v71, qword_1011ACA10);
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&_mh_execute_header, v46, v47, "modelObjectIdentifier parameters missing for age verification context", v48, 2u);
    }

    v45 = v9;
  }

  v49 = [objc_allocWithZone(_s22AgeVerificationWrapperCMa()) init];
  v50 = swift_allocObject();
  v51 = v65;
  swift_unknownObjectWeakInit();
  v52 = swift_allocObject();
  v53 = v73;
  v54 = v70;
  *(v52 + 2) = v73;
  *(v52 + 3) = v54;
  *(v52 + 4) = v50;
  v55 = &v49[OBJC_IVAR____TtCC9MusicCore30ExplicitRestrictionsControllerP33_49A4F392108DD8BCF77701E27C86571422AgeVerificationWrapper_completion];
  v56 = *&v49[OBJC_IVAR____TtCC9MusicCore30ExplicitRestrictionsControllerP33_49A4F392108DD8BCF77701E27C86571422AgeVerificationWrapper_completion];
  v57 = *&v49[OBJC_IVAR____TtCC9MusicCore30ExplicitRestrictionsControllerP33_49A4F392108DD8BCF77701E27C86571422AgeVerificationWrapper_completion + 8];
  *v55 = sub_100A52D9C;
  v55[1] = v52;
  sub_100030444(v53, v54);

  sub_100020438(v56, v57);

  v58 = *(v51 + OBJC_IVAR____TtC9MusicCore18PlaybackController_ageVerificationWrapper);
  *(v51 + OBJC_IVAR____TtC9MusicCore18PlaybackController_ageVerificationWrapper) = v49;
  v59 = v49;

  v60 = *(v51 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator + 24);
  v61 = *(v51 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator + 32);
  sub_10000954C((v51 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator), v60);
  v62 = *(v61 + 16);
  v63 = v59;
  v62(v12, v63, v60, v61);

  (*(v45 + 8))(v12, v72);
}

void sub_100A4FA0C(void *a1, char a2, void (*a3)(void, void), uint64_t a4, uint64_t a5)
{
  if (a3)
  {
    a3(a2 & 1, 0);
  }

  if (a1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v7 = *(Strong + OBJC_IVAR____TtC9MusicCore18PlaybackController_ageVerificationWrapper);
      v8 = Strong;
      v9 = v7;

      if (v7)
      {

        if (v7 == a1)
        {
          swift_beginAccess();
          v10 = swift_unknownObjectWeakLoadStrong();
          if (v10)
          {
            v11 = *&v10[OBJC_IVAR____TtC9MusicCore18PlaybackController_ageVerificationWrapper];
            *&v10[OBJC_IVAR____TtC9MusicCore18PlaybackController_ageVerificationWrapper] = 0;
          }
        }
      }
    }
  }
}

double PlaybackController.displayAgeVerification(modelObject:completion:)(id a1, void (*a2)(void, void), uint64_t a3)
{
  if (a1)
  {
    a1 = MPModelObject.bestIdentifier(for:)(2, 1u);
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  sub_100A4F0A0(a1, v6, a2, a3);

  return result;
}

uint64_t PlaybackController.displayAgeVerification(for:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = type metadata accessor for MainActor();
  v2[5] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[6] = v4;
  v2[7] = v3;

  return _swift_task_switch(sub_100A4FBFC, v4, v3);
}

uint64_t sub_100A4FBFC(uint64_t a1)
{
  v6 = v1[1];
  v2 = static MainActor.shared.getter();
  v1[4].i64[0] = v2;
  v3 = swift_task_alloc();
  v1[4].i64[1] = v3;
  v3[1] = vextq_s8(v6, v6, 8uLL);
  v4 = swift_task_alloc();
  v1[5].i64[0] = v4;
  *v4 = v1;
  v4[1] = sub_100A4FD10;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v4, v2, &protocol witness table for MainActor, 0xD00000000000001CLL, 0x8000000100E60B60, sub_100A52870, v3, &type metadata for () + 1);
}

uint64_t sub_100A4FD10()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = *(v2 + 48);
    v4 = *(v2 + 56);
    v5 = sub_100A4FE98;
  }

  else
  {

    v3 = *(v2 + 48);
    v4 = *(v2 + 56);
    v5 = sub_100A4FE34;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_100A4FE34()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100A4FE98()
{

  v1 = *(v0 + 8);

  return v1();
}

double sub_100A4FF10(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_10010FC20(&unk_1011ACB50, &unk_100EF7240);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v15 - v7;
  sub_10000954C(a3, a3[3]);
  v9 = dispatch thunk of MusicItem.id.getter();
  v11 = v10;
  (*(v6 + 16))(v8, a1, v5);
  v12 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v13 = swift_allocObject();
  (*(v6 + 32))(v13 + v12, v8, v5);
  sub_100A4F0A0(v9, v11, sub_100A52CE0, v13);

  return result;
}

uint64_t sub_100A500A0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    swift_errorRetain();
    sub_10010FC20(&unk_1011ACB50, &unk_100EF7240);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    sub_10010FC20(&unk_1011ACB50, &unk_100EF7240);
    return CheckedContinuation.resume(returning:)();
  }
}

id sub_100A50200()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = *&v0[OBJC_IVAR____TtCC9MusicCore30ExplicitRestrictionsControllerP33_49A4F392108DD8BCF77701E27C86571422AgeVerificationWrapper_completion];
  if (v3)
  {
    v4 = *&v0[OBJC_IVAR____TtCC9MusicCore30ExplicitRestrictionsControllerP33_49A4F392108DD8BCF77701E27C86571422AgeVerificationWrapper_completion + 8];

    v3(0, 0);
    sub_100020438(v3, v4);
  }

  v6.receiver = v1;
  v6.super_class = ObjectType;
  return objc_msgSendSuper2(&v6, "dealloc");
}

double sub_100A50338(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  sub_100009F78(0, &qword_1011A9F80, OS_dispatch_queue_ptr);
  v8 = swift_allocObject();
  v8[2] = a2;
  v8[3] = a3;
  v8[4] = a4;
  v8[5] = a1;

  v9 = a4;
  v10 = a1;
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_100A52BEC, v8);

  return result;
}

char *sub_100A503F4(char *result)
{
  v1 = &result[OBJC_IVAR____TtCC9MusicCore30ExplicitRestrictionsControllerP33_49A4F392108DD8BCF77701E27C86571422AgeVerificationWrapper_completion];
  v2 = *&result[OBJC_IVAR____TtCC9MusicCore30ExplicitRestrictionsControllerP33_49A4F392108DD8BCF77701E27C86571422AgeVerificationWrapper_completion];
  if (v2)
  {
    v3 = result;
    v4 = *(v1 + 1);
    *v1 = 0;
    *(v1 + 1) = 0;
    v5 = [objc_opt_self() defaultManager];
    v6 = swift_allocObject();
    v6[2] = v2;
    v6[3] = v4;
    v6[4] = v3;
    v9[4] = sub_100A52BE0;
    v9[5] = v6;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 1107296256;
    v9[2] = sub_10027D328;
    v9[3] = &unk_1010DA2D8;
    v7 = _Block_copy(v9);
    sub_100030444(v2, v4);
    v8 = v3;

    [v5 getAgeVerificationStateWithCompletion:v7];
    _Block_release(v7);

    return sub_100020438(v2, v4);
  }

  return result;
}

uint64_t sub_100A50630()
{
  v0 = type metadata accessor for Logger();
  sub_100006080(v0, static Logger.playbackController);
  sub_1000060E4(v0, static Logger.playbackController);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100A5074C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a3;
  return _swift_task_switch(sub_100A50770, 0, 0);
}

uint64_t sub_100A50770()
{
  v1 = v0[2];
  if (v1)
  {
    v1(v0[4]);
  }

  v2 = v0[1];

  return v2();
}

uint64_t sub_100A507DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[2] = a3;
  v6[3] = a4;
  sub_10010FC20(&qword_1011A7F00, &qword_100EEDE10);
  v6[6] = swift_task_alloc();
  sub_10010FC20(&qword_1011A77F0, &unk_100EEAA20);
  v6[7] = swift_task_alloc();
  v7 = type metadata accessor for URL();
  v6[8] = v7;
  v8 = *(v7 - 8);
  v6[9] = v8;
  v6[10] = *(v8 + 64);
  v6[11] = swift_task_alloc();
  v6[12] = swift_task_alloc();

  return _swift_task_switch(sub_100A50924, 0, 0);
}

uint64_t sub_100A50924()
{
  v1 = [*(v0 + 16) action];
  v2 = [v1 type];

  if (v2 != 2 || (v3 = [*(v0 + 16) action], v4 = objc_msgSend(v3, "URLString"), v3, !v4))
  {
LABEL_5:
    v8 = *(v0 + 48);
    v9 = *(v0 + 16);
    v10 = [objc_allocWithZone(ICStoreDialogResponseHandler) init];
    v11 = [objc_opt_self() activeAccount];
    v12 = [objc_allocWithZone(ICStoreRequestContext) initWithIdentity:v11];

    v13 = type metadata accessor for TaskPriority();
    (*(*(v13 - 8) + 56))(v8, 1, 1, v13);
    v14 = swift_allocObject();
    v14[2] = 0;
    v14[3] = 0;
    v14[4] = v10;
    v14[5] = v9;
    v14[6] = v12;
    v15 = v9;
    sub_100969A38(0, 0, v8, &unk_100EF72F0, v14);

    v16 = *(v0 + 24);
    if (!v16)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v5 = *(v0 + 64);
  v6 = *(v0 + 72);
  v7 = *(v0 + 56);
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  URL.init(string:)();

  if ((*(v6 + 48))(v7, 1, v5) == 1)
  {
    sub_1000095E8(*(v0 + 56), &qword_1011A77F0, &unk_100EEAA20);
    goto LABEL_5;
  }

  v20 = *(v0 + 88);
  v19 = *(v0 + 96);
  v21 = *(v0 + 72);
  v22 = *(v0 + 64);
  v23 = *(v0 + 48);
  v24 = *(v21 + 32);
  v24(v19, *(v0 + 56), v22);
  v25 = type metadata accessor for TaskPriority();
  (*(*(v25 - 8) + 56))(v23, 1, 1, v25);
  (*(v21 + 16))(v20, v19, v22);
  v26 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = 0;
  *(v27 + 24) = 0;
  v24(v27 + v26, v20, v22);
  sub_100969740(0, 0, v23, &unk_100EF7300, v27);

  (*(v21 + 8))(v19, v22);
  v16 = *(v0 + 24);
  if (v16)
  {
LABEL_6:
    v16(*(v0 + 40));
  }

LABEL_7:

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_100A50CD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 144) = a1;
  *(v4 + 152) = a4;
  return _swift_task_switch(sub_100A50CF0, 0, 0);
}

uint64_t sub_100A50CF0()
{
  *(v0 + 160) = objc_opt_self();
  type metadata accessor for MainActor();
  *(v0 + 168) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100A50D94, v2, v1);
}

uint64_t sub_100A50D94()
{
  v1 = *(v0 + 160);

  *(v0 + 176) = [v1 sharedApplication];

  return _swift_task_switch(sub_100A50E18, 0, 0);
}

uint64_t sub_100A50E18@<X0>(NSURL *a1@<X8>)
{
  v2 = v1[22];
  URL._bridgeToObjectiveC()(a1);
  v4 = v3;
  v1[23] = v3;
  sub_1008BD18C(_swiftEmptyArrayStorage);
  _s3__C25OpenExternalURLOptionsKeyVMa_0(0);
  sub_100A52FE8(&qword_1011A79E0, _s3__C25OpenExternalURLOptionsKeyVMa_0, &unk_100EEB9A4);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v1[24] = isa;

  v1[2] = v1;
  v1[7] = v1 + 25;
  v1[3] = sub_100A50FD8;
  v6 = swift_continuation_init();
  v1[17] = sub_10010FC20(&qword_1011ACBA8, &qword_100EF7308);
  v1[10] = _NSConcreteStackBlock;
  v1[11] = 1107296256;
  v1[12] = sub_10072BFC8;
  v1[13] = &unk_1010DA5D0;
  v1[14] = v6;
  [v2 openURL:v4 options:isa completionHandler:v1 + 10];

  return _swift_continuation_await(v1 + 2, v7);
}

uint64_t sub_100A50FD8()
{

  return _swift_task_switch(sub_100A510B8, 0, 0);
}

uint64_t sub_100A510B8()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 192);
  v3 = *(v0 + 176);
  **(v0 + 144) = *(v0 + 200);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100A51130(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[20] = a5;
  v6[21] = a6;
  v6[18] = a1;
  v6[19] = a4;
  return _swift_task_switch(sub_100A51154, 0, 0);
}

uint64_t sub_100A51154()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 152);
  v3 = [*(v0 + 160) action];
  *(v0 + 176) = v3;
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 192;
  *(v0 + 24) = sub_100A512A0;
  v4 = swift_continuation_init();
  *(v0 + 136) = sub_10010FC20(&qword_1011ACBB0, &unk_100EF7310);
  *(v0 + 80) = _NSConcreteStackBlock;
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_100A514A0;
  *(v0 + 104) = &unk_1010DA5F8;
  *(v0 + 112) = v4;
  [v2 handleButtonAction:v3 usingRequestContext:v1 withCompletionHandler:v0 + 80];

  return _swift_continuation_await(v0 + 16, v5);
}

uint64_t sub_100A512A0()
{
  v1 = *(*v0 + 48);
  *(*v0 + 184) = v1;
  if (v1)
  {
    v2 = sub_100A5141C;
  }

  else
  {
    v2 = sub_100A513B0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100A513B0()
{
  v1 = *(v0 + 192);

  **(v0 + 144) = v1;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100A5141C(uint64_t a1)
{
  v2 = *(v1 + 176);
  swift_willThrow();

  **(v1 + 144) = 2;
  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_100A514A0(uint64_t a1, char a2, void *a3)
{
  v5 = *sub_10000954C((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_10010FC20(&qword_1011AB640, L"D\v\a");
    swift_allocError();
    *v6 = a3;
    v7 = a3;

    return swift_continuation_throwingResumeWithError();
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;

    return swift_continuation_throwingResume();
  }
}

void sub_100A5156C(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v3);

  *a2 = v3;
}

void sub_100A515EC(void **a1, uint64_t *a2)
{
  v2 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  static Published.subscript.getter(&v6);

  v4 = v6;
  swift_getKeyPath();
  swift_getKeyPath();
  v6 = v2;
  v5 = v3;

  static Published.subscript.setter();
  sub_100A5B300(v4);
}

unint64_t sub_100A516D8()
{
  result = qword_1011ACA40;
  if (!qword_1011ACA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011ACA40);
  }

  return result;
}

unint64_t sub_100A5172C()
{
  result = qword_1011ACA48;
  if (!qword_1011ACA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011ACA48);
  }

  return result;
}

uint64_t sub_100A51780(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

double sub_100A517E8(id a1, char a2)
{
  if (a2 == 2)
  {
LABEL_4:
    sub_100A5180C(a1);
    return result;
  }

  if (a2 != 1)
  {
    if (a2)
    {
      return result;
    }

    goto LABEL_4;
  }

  return result;
}

void sub_100A5180C(id a1)
{
  if (a1 >= 5)
  {
  }
}

double sub_100A5181C(id a1, char a2, __n128 a3)
{
  if (a2 == 2)
  {
LABEL_4:
    sub_100A51840(a1);
    return result;
  }

  if (a2 != 1)
  {
    if (a2)
    {
      return result;
    }

    goto LABEL_4;
  }

  return result;
}

id sub_100A51840(id result)
{
  if (result >= 5)
  {
    return result;
  }

  return result;
}

BOOL sub_100A51850(void *a1, uint64_t a2, uint64_t a3)
{
  v9[3] = &type metadata for Player.ReplaceCommand;
  v9[4] = &protocol witness table for Player.ReplaceCommand;
  v9[0] = a1;
  v9[1] = a2;
  sub_10000954C(v9, &type metadata for Player.ReplaceCommand);
  swift_getDynamicType();
  swift_conformsToProtocol2();
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = a1;
  static Published.subscript.getter(&v8);

  v5 = v8;
  if (v8)
  {
    v6 = MPCPlayerResponse.canPerform(_:)(v9);
  }

  else
  {
    v6 = 0;
  }

  sub_10000959C(v9);
  return v6;
}

BOOL sub_100A5196C(char a1, uint64_t a2)
{
  v6[3] = &type metadata for Player.PlaybackCommand;
  v6[4] = &protocol witness table for Player.PlaybackCommand;
  LOBYTE(v6[0]) = a1;
  sub_10000954C(v6, &type metadata for Player.PlaybackCommand);
  swift_getDynamicType();
  swift_conformsToProtocol2();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v5);

  v2 = v5;
  if (v5)
  {
    v3 = MPCPlayerResponse.canPerform(_:)(v6);
  }

  else
  {
    v3 = 0;
  }

  sub_10000959C(v6);
  return v3;
}

BOOL sub_100A51A80(void *a1, void *a2, uint64_t a3)
{
  v10[3] = &type metadata for Player.InsertCommand;
  v10[4] = &protocol witness table for Player.InsertCommand;
  v10[0] = a1;
  v10[1] = a2;
  sub_10000954C(v10, &type metadata for Player.InsertCommand);
  swift_getDynamicType();
  swift_conformsToProtocol2();
  swift_getKeyPath();
  swift_getKeyPath();
  v5 = a1;
  sub_1001DFD48(a2);
  static Published.subscript.getter(&v9);

  v6 = v9;
  if (v9)
  {
    v7 = MPCPlayerResponse.canPerform(_:)(v10);
  }

  else
  {
    v7 = 0;
  }

  sub_10000959C(v10);
  return v7;
}

BOOL sub_100A51BB0(void *a1, uint64_t a2)
{
  v7[3] = &type metadata for Player.ChangeCommand;
  v7[4] = &protocol witness table for Player.ChangeCommand;
  v7[0] = a1;
  sub_10000954C(v7, &type metadata for Player.ChangeCommand);
  swift_getDynamicType();
  swift_conformsToProtocol2();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100A53A8C(a1);
  static Published.subscript.getter(&v6);

  v3 = v6;
  if (v6)
  {
    v4 = MPCPlayerResponse.canPerform(_:)(v7);
  }

  else
  {
    v4 = 0;
  }

  sub_10000959C(v7);
  return v4;
}

BOOL sub_100A51CD0(uint64_t a1, uint64_t a2)
{
  v6[3] = &type metadata for Player.VocalsCommand;
  v6[4] = &protocol witness table for Player.VocalsCommand;
  LODWORD(v6[0]) = a1;
  BYTE4(v6[0]) = BYTE4(a1);
  BYTE5(v6[0]) = BYTE5(a1) & 1;
  sub_10000954C(v6, &type metadata for Player.VocalsCommand);
  swift_getDynamicType();
  swift_conformsToProtocol2();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v5);

  v2 = v5;
  if (v5)
  {
    v3 = MPCPlayerResponse.canPerform(_:)(v6);
  }

  else
  {
    v3 = 0;
  }

  sub_10000959C(v6);
  return v3;
}

uint64_t sub_100A51DF4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_100A51E54(void *a1)
{
  v2 = v1;
  if (qword_1011A6B50 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000060E4(v4, static Logger.sharedListening);
  v5 = a1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *&v27[0] = v9;
    *v8 = 136446210;
    v10 = v5;
    v11 = [v10 description];
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    v15 = sub_100010678(v12, v14, v27);

    *(v8 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v6, v7, "Received MPCSharedListeningEvent=%{public}s", v8, 0xCu);
    sub_10000959C(v9);
  }

  v16 = v5;
  sub_100AC8C14(v16, v25);
  if (v26 != 255)
  {
    v27[0] = v25[0];
    v27[1] = v25[1];
    v27[2] = v25[2];
    v28 = v26;
    v17 = (v2 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator);
    v18 = *(v2 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator + 24);
    v19 = v17[4];
    sub_10000954C(v17, v18);
    (*(v19 + 40))(v18, v19);
    v20 = [v16 participant];
    v21 = [v20 externalIdentifier];

    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;

    GroupActivitiesManager.postEvent(_:participantID:)(v27, v22, v24);

    sub_1000095E8(v25, &unk_1011ACC40, &unk_100EF7360);
  }
}

double sub_100A520E0(uint64_t a1)
{
  v2 = v1;
  sub_10010FC20(&qword_1011A7F00, &qword_100EEDE10);
  __chkstk_darwin();
  v5 = &v21 - v4;
  if (qword_1011A6B50 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_1000060E4(v6, static Logger.sharedListening);
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v21 = a1;
    v22 = v10;
    *v9 = 136446210;
    swift_errorRetain();
    sub_10010FC20(&qword_1011ADA20, &qword_100EF7348);
    v11 = String.init<A>(describing:)();
    v13 = sub_100010678(v11, v12, &v22);

    *(v9 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v7, v8, "Receiving didEndSharedListeningSessionWithError=%{public}s", v9, 0xCu);
    sub_10000959C(v10);
  }

  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v5, 1, 1, v14);
  type metadata accessor for MainActor();
  v15 = v2;
  v16 = static MainActor.shared.getter();
  v17 = swift_allocObject();
  v17[2] = v16;
  v17[3] = &protocol witness table for MainActor;
  v17[4] = v15;
  sub_100969440(0, 0, v5, &unk_100EF7358, v17);

  if (a1)
  {
    sub_100009F78(0, &qword_1011A9F80, OS_dispatch_queue_ptr);
    v19 = swift_allocObject();
    *(v19 + 16) = v15;
    v20 = v15;
    static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_100A53568, v19);
  }

  return result;
}

void sub_100A523C4(void *a1)
{
  v2 = v1;
  if (qword_1011A6A60 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000060E4(v4, static Logger.playbackController);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v34 = a1;
    v35[0] = v8;
    *v7 = 136446210;
    swift_errorRetain();
    sub_10010FC20(&qword_1011ADA20, &qword_100EF7348);
    v9 = String.init<A>(describing:)();
    v11 = sub_100010678(v9, v10, v35);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v5, v6, "didPauseForLeaseEndWithError with error=%{public}s", v7, 0xCu);
    sub_10000959C(v8);
  }

  if (a1)
  {
    v12 = _convertErrorToNSError(_:)();
    v13 = [v12 userInfo];
    v14 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    if (*(v14 + 16))
    {
      v17 = sub_100019C28(v15, v16);
      v19 = v18;

      if (v19)
      {
        sub_10000DD18(*(v14 + 56) + 32 * v17, v35);

        sub_100009F78(0, &qword_1011ACC28, ICMusicSubscriptionLeaseStatus_ptr);
        if (swift_dynamicCast())
        {
          v20 = [v34 stateReasonDialog];
          if (!v20)
          {

            return;
          }

          v21 = v20;
          v22 = [v12 userInfo];
          v23 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

          v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          if (*(v23 + 16))
          {
            v26 = sub_100019C28(v24, v25);
            v28 = v27;

            if (v28)
            {
              sub_10000DD18(*(v23 + 56) + 32 * v26, v35);

              sub_10010FC20(&unk_1011ACC30, &unk_100EF1E50);
              if (swift_dynamicCast())
              {
                if (!v34[2] || (v29 = sub_100019C28(0x736E6F6974706FLL, 0xE700000000000000), (v30 & 1) == 0))
                {

                  return;
                }

                sub_10000DD18(v34[7] + 32 * v29, v35);
                sub_10010FC20(&unk_1011A9FA0, &unk_100EEC490);
                if (swift_dynamicCast())
                {
                  sub_100009F78(0, &qword_1011A9F80, OS_dispatch_queue_ptr);
                  v31 = swift_allocObject();
                  v31[2] = v2;
                  v31[3] = v21;
                  v31[4] = v34;
                  v31[5] = v34;
                  v32 = v2;
                  v33 = v21;
                  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_100A5349C, v31);

                  return;
                }

                goto LABEL_19;
              }

              goto LABEL_24;
            }
          }

          else
          {
          }

LABEL_24:
        }

LABEL_19:

        return;
      }
    }

    else
    {
    }

    goto LABEL_19;
  }
}

uint64_t sub_100A52878(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_100A5289C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 73))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 72);
  if (v3 >= 3)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100A528D8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 57) = 0u;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 73) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 73) = 0;
    }

    if (a2)
    {
      *(result + 72) = -a2;
    }
  }

  return result;
}

uint64_t sub_100A52928(uint64_t result, unsigned int a2)
{
  if (a2 > 2)
  {
    *(result + 64) = 0;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 72) = a2;
  return result;
}

uint64_t sub_100A52998(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_100A529E0(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_100A52A38(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_100A52A50(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFA && *(a1 + 8))
  {
    return (*a1 + 2147483643);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 4;
  if (v4 >= 6)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100A52AA8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFB)
  {
    *result = 0;
    *result = a2 - 2147483643;
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 4;
    }
  }

  return result;
}

uint64_t sub_100A52B08(uint64_t a1)
{
  if ((*(a1 + 8) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t sub_100A52B24(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 9))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_100A52B6C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_100A52BB0(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_100A52C40()
{

  return swift_deallocObject();
}

uint64_t sub_100A52C98()
{

  return swift_deallocObject();
}

uint64_t sub_100A52CE0(uint64_t a1, uint64_t a2)
{
  sub_10010FC20(&unk_1011ACB50, &unk_100EF7240);

  return sub_100A500A0(a1, a2);
}

uint64_t sub_100A52DA8(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_100008F30;

  return sub_100A4EBB8(a1, a2, v6, v7, v8);
}

uint64_t sub_100A52E68(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_100008F30;

  return sub_100A4EE80(a1, a2, v7, v6);
}

uint64_t sub_100A52F38(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 72);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100008F30;

  return sub_100A4D960(a1, a2, v2 + 16, v6);
}

uint64_t sub_100A52FE8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100A53050(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_100008F30;

  return sub_100A507DC(a1, a2, v6, v7, v9, v8);
}

uint64_t sub_100A53114(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100008F30;

  return sub_100A51130(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_100A531DC(uint64_t a1)
{
  v4 = *(type metadata accessor for URL() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100008F30;

  return sub_100A50CD0(a1, v6, v7, v1 + v5);
}

uint64_t sub_100A53328(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_100008F30;

  return sub_100A5074C(a1, a2, v6, v7, v8);
}

uint64_t sub_100A533E8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100008F30;

  return sub_100A4DBC8(a1, v4, v5, v1 + 32, v1 + 88);
}

uint64_t sub_100A534B4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100008F30;

  return sub_100A4A920(a1, v4, v5, v6);
}

unint64_t sub_100A53570()
{
  result = qword_1011ACC60;
  if (!qword_1011ACC60)
  {
    sub_100009F78(255, &qword_1011ACC58, UISceneSession_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011ACC60);
  }

  return result;
}

uint64_t sub_100A535D8(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100008F30;

  return sub_100A4A52C(a1, a2, v6);
}

uint64_t sub_100A53684(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100008F30;

  return sub_100A4A730(a1, a2, v6);
}