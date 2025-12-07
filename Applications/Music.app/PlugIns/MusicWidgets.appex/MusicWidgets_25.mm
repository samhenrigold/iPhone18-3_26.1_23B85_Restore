uint64_t sub_10029A118()
{
  v16 = v0;

  sub_100010474((v0 + 96));
  v1 = *(v0 + 264);
  if (qword_1006E4F80 != -1)
  {
    swift_once();
  }

  v2 = sub_10056DF88();
  sub_10000C49C(v2, static Logger.playbackController);
  swift_errorRetain();
  v3 = sub_10056DF68();
  v4 = sub_100573428();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v15 = v6;
    *v5 = 136446210;
    *(v0 + 200) = v1;
    swift_errorRetain();
    sub_100009DCC(&qword_1006E9B60, &qword_1005857E0);
    v7 = sub_100572978();
    v9 = sub_1000C9784(v7, v8, &v15);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "[Auto-Sing] Failed with error=%{public}s", v5, 0xCu);
    sub_100010474(v6);
  }

  else
  {
  }

  v10 = (*(v0 + 216) + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator);
  v11 = v10[3];
  v12 = v10[4];
  sub_10000C8CC(v10, v11);
  *(v0 + 16) = 0;
  *(v0 + 88) = 1;
  (*(v12 + 8))(v0 + 16, v11, v12);

  sub_1002A9DCC(v0 + 16);
  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_10029A358()
{
  v16 = v0;

  sub_100010474((v0 + 136));
  v1 = *(v0 + 288);
  if (qword_1006E4F80 != -1)
  {
    swift_once();
  }

  v2 = sub_10056DF88();
  sub_10000C49C(v2, static Logger.playbackController);
  swift_errorRetain();
  v3 = sub_10056DF68();
  v4 = sub_100573428();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v15 = v6;
    *v5 = 136446210;
    *(v0 + 200) = v1;
    swift_errorRetain();
    sub_100009DCC(&qword_1006E9B60, &qword_1005857E0);
    v7 = sub_100572978();
    v9 = sub_1000C9784(v7, v8, &v15);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "[Auto-Sing] Failed with error=%{public}s", v5, 0xCu);
    sub_100010474(v6);
  }

  else
  {
  }

  v10 = (*(v0 + 216) + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator);
  v11 = v10[3];
  v12 = v10[4];
  sub_10000C8CC(v10, v11);
  *(v0 + 16) = 0;
  *(v0 + 88) = 1;
  (*(v12 + 8))(v0 + 16, v11, v12);

  sub_1002A9DCC(v0 + 16);
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
    v7 = sub_10000C8CC(a1, v5);

    v8 = sub_1002C8134(v7, v4, v5, v6);
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
  sub_100572F08();
  *(v4 + 72) = sub_100572EF8();
  v6 = sub_100572E78();
  *(v4 + 80) = v6;
  *(v4 + 88) = v5;

  return _swift_task_switch(sub_10029A780, v6, v5);
}

uint64_t sub_10029A780()
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
    v4[1] = sub_10029A89C;
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

uint64_t sub_10029A89C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 112) = v1;

  if (v1)
  {
    v5 = v4[10];
    v6 = v4[11];
    v7 = sub_10029AA34;
  }

  else
  {

    v4[15] = a1;
    v5 = v4[10];
    v6 = v4[11];
    v7 = sub_10029A9CC;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_10029A9CC()
{

  v1 = *(v0 + 120);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_10029AA34()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10029AB88(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 40) = v1;

  if (v1)
  {
    v5 = sub_100572E78();
    v7 = v6;
    v8 = sub_1000E806C;
  }

  else
  {
    *(v4 + 48) = a1;
    v5 = sub_100572E78();
    v7 = v9;
    v8 = sub_10029AD08;
  }

  return _swift_task_switch(v8, v5, v7);
}

uint64_t sub_10029AD08()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 48);

  return v1(v2);
}

uint64_t sub_10029AD70(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 176) = a6;
  *(v7 + 184) = v6;
  *(v7 + 160) = a4;
  *(v7 + 168) = a5;
  *(v7 + 89) = a3;
  *(v7 + 144) = a1;
  *(v7 + 152) = a2;
  sub_100572F08();
  *(v7 + 192) = sub_100572EF8();
  v9 = sub_100572E78();
  *(v7 + 200) = v9;
  *(v7 + 208) = v8;

  return _swift_task_switch(sub_10029AE14, v9, v8);
}

uint64_t sub_10029AE14()
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
    v4[1] = sub_10029AF34;
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

uint64_t sub_10029AF34(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 240) = v1;

  if (v1)
  {
    v5 = v4[25];
    v6 = v4[26];
    v7 = sub_10029B41C;
  }

  else
  {

    v4[31] = a1;
    v5 = v4[25];
    v6 = v4[26];
    v7 = sub_10029B064;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_10029B064()
{
  v37 = v1;
  v2 = *(v1 + 248);

  v3 = (v2 & 0xFFFFFFFFFFFFFF8);
  if (v2 >> 62)
  {
    v4 = sub_100574178();
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
      sub_1002AB4D8(v4, 0);
      goto LABEL_13;
    }
  }

  if ((v2 & 0xC000000000000001) != 0)
  {
    v5 = sub_100573F58();
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
  if (qword_1006E4F80 != -1)
  {
LABEL_20:
    swift_once();
  }

  v7 = sub_10056DF88();
  sub_10000C49C(v7, static Logger.playbackController);

  v8 = v3;
  v9 = sub_10056DF68();
  v10 = sub_100573448();

  v34 = v8;
  v35 = v0;
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    *v11 = 136446466;
    sub_100009DCC(&qword_1006EAF80, &qword_100590010);
    v12 = sub_100572D38();
    v14 = sub_1000C9784(v12, v13, &v36);

    *(v11 + 4) = v14;
    *(v11 + 12) = 2082;
    v15 = v8;
    v16 = [v15 description];
    v17 = sub_1005728D8();
    v19 = v18;

    v20 = sub_1000C9784(v17, v19, &v36);

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
  sub_10000C8CC((v22 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator), v25);
  v27 = (*(v26 + 40))(v25, v26);
  v28 = *(v22 + v21);
  v29 = v24[3];
  v30 = v24[4];
  sub_10000C8CC(v24, v29);
  v31 = v23;

  MPCPlayerCommandDialog.alert(context:completion:)(v23, v27, v28, 0, 0, (v1 + 16));
  *(v1 + 88) = 0;
  (*(v30 + 8))(v1 + 16, v29, v30);
  sub_1002A9DCC(v1 + 16);

LABEL_13:
  v32 = *(v1 + 8);

  return v32(v2);
}

uint64_t sub_10029B41C()
{
  v46 = v0;
  v2 = *(v0 + 240);

  *(v0 + 136) = v2;
  swift_errorRetain();
  sub_100009DCC(&qword_1006E9B60, &qword_1005857E0);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_28;
  }

  v4 = *(v0 + 120);
  v3 = *(v0 + 128);
  v5 = (v3 >> 62);
  if (v3 >> 62)
  {
    if (!sub_100574178())
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
    v6 = sub_100573F58();
  }

  else
  {
    if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_33:
      v9 = sub_100574178();
      if (!v9)
      {
        goto LABEL_21;
      }

      goto LABEL_10;
    }

    v6 = *(v3 + 32);
  }

  v7 = v6;
  v1 = &selRef_changeItemCommand;
  v8 = [v6 dialog];

  if (!v8)
  {
LABEL_27:
    sub_1002A858C();
    swift_allocError();
    *v38 = v4;
    v38[1] = v3;
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
    sub_1002AB4D8(v4, v3);
    goto LABEL_22;
  }

LABEL_10:
  if ((v3 & 0xC000000000000001) != 0)
  {
    v10 = sub_100573F58();
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
  v9 = [v10 v1[60]];
  if (!v9)
  {

    goto LABEL_21;
  }

  v42 = (v0 + 16);
  if (qword_1006E4F80 != -1)
  {
LABEL_37:
    v40 = v9;
    swift_once();
    v9 = v40;
  }

  v44 = v9;
  v11 = sub_10056DF88();
  sub_10000C49C(v11, static Logger.playbackController);

  v12 = v5;
  v13 = sub_10056DF68();
  v14 = sub_100573448();

  v43 = v12;
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v45[0] = swift_slowAlloc();
    *v15 = 136446466;
    sub_100009DCC(&qword_1006EAF80, &qword_100590010);
    v16 = sub_100572D38();
    v18 = sub_1000C9784(v16, v17, v45);

    *(v15 + 4) = v18;
    *(v15 + 12) = 2082;
    v19 = v12;
    v20 = [v19 description];
    v21 = sub_1005728D8();
    v23 = v22;

    v24 = sub_1000C9784(v21, v23, v45);

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
  sub_10000C8CC((v26 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator), v29);
  v31 = (*(v30 + 40))(v29, v30);
  v32 = *(v26 + v25);
  v33 = v28[3];
  v34 = v28[4];
  sub_10000C8CC(v28, v33);
  v41 = v27;

  MPCPlayerCommandDialog.alert(context:completion:)(v27, v31, v32, 0, 0, v42);
  *(v0 + 88) = 0;
  (*(v34 + 8))(v42, v33, v34);
  sub_1002A9DCC(v42);
  if (v4)
  {

    sub_1002A858C();
    swift_allocError();
    *v35 = v4;
    v35[1] = v3;
    swift_willThrow();

LABEL_28:
    v39 = *(v0 + 8);

    return v39();
  }

LABEL_22:
  v36 = *(v0 + 8);

  return v36(v3);
}

uint64_t sub_10029B9B8(uint64_t a1, uint64_t a2)
{
  v3[26] = a2;
  v3[27] = v2;
  v3[25] = a1;
  v4 = sub_10056DFD8();
  v3[28] = v4;
  v3[29] = *(v4 - 8);
  v3[30] = swift_task_alloc();
  v3[31] = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  v3[32] = swift_task_alloc();
  v3[33] = sub_100572F08();
  v3[34] = sub_100572EF8();
  v6 = sub_100572E78();
  v3[35] = v6;
  v3[36] = v5;

  return _swift_task_switch(sub_10029BAE4, v6, v5);
}

uint64_t sub_10029BAE4()
{
  v1 = *(v0 + 216);
  v2 = OBJC_IVAR____TtC9MusicCore18PlaybackController_player;
  *(v0 + 296) = OBJC_IVAR____TtC9MusicCore18PlaybackController_player;
  swift_beginAccess();
  if (*(v1 + v2) && (swift_getKeyPath(), swift_getKeyPath(), , sub_10056E478(), , , , v3 = *(v0 + 192), (*(v0 + 304) = v3) != 0))
  {
    v5 = *(v0 + 200);
    v4 = [objc_opt_self() sharedController];
    LODWORD(v5) = sub_10029E9DC(v5);

    if (v5)
    {
      sub_1002A8678(*(v0 + 208), *(v0 + 256), type metadata accessor for PlaybackIntentDescriptor.IntentType);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v7 = *(v0 + 256);
      if (EnumCaseMultiPayload == 1)
      {
        v9 = *(v0 + 232);
        v8 = *(v0 + 240);
        v10 = *(v0 + 224);
        (*(v9 + 32))(v8, v7, v10);
        v11 = sub_10056DFA8();
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
        v26 = sub_100572EF8();
        *(v0 + 312) = v26;
        if (v26)
        {
          swift_getObjectType();
          v13 = sub_100572E78();
          v15 = v27;
        }

        else
        {
          v13 = 0;
          v15 = 0;
        }

        v16 = sub_10029BE88;
        goto LABEL_28;
      }

      LOBYTE(v5) = 0;
    }
  }

  else
  {
    v5 = *(v0 + 200);
    v3 = [objc_opt_self() sharedController];
    LOBYTE(v5) = sub_10029E9DC(v5);
  }

LABEL_7:

  *(v0 + 345) = v5;
  v12 = sub_100572EF8();
  *(v0 + 328) = v12;
  if (v12)
  {
    swift_getObjectType();
    v13 = sub_100572E78();
    v15 = v14;
  }

  else
  {
    v13 = 0;
    v15 = 0;
  }

  v16 = sub_10029C1F8;
LABEL_28:
  v25 = v16;
  v18 = v13;

  return _swift_task_switch(v25, v18, v15);
}

uint64_t sub_10029BE88()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 10;
  v4 = v1[37];
  v5 = v1[27];
  v1[10] = v2;
  v1[11] = sub_10029BF84;
  v6 = swift_continuation_init();
  if (*(v5 + v4))
  {
    v7 = v6;
    v8 = swift_allocObject();
    *(v8 + 16) = v7;

    Player.requestSharePlayTogether(completion:)(sub_1002AB220, v8);
  }

  return _swift_continuation_await(v3);
}

uint64_t sub_10029BF84(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  *(*v1 + 320) = v3;
  if (v3)
  {
    swift_willThrow();

    v4 = *(v2 + 280);
    v5 = *(v2 + 288);
    v6 = sub_10029C16C;
  }

  else
  {

    v4 = *(v2 + 280);
    v5 = *(v2 + 288);
    v6 = sub_10029C0CC;
  }

  return _swift_task_switch(v6, v4, v5);
}

uint64_t sub_10029C0CC()
{
  *(v0 + 345) = 0;
  v1 = sub_100572EF8();
  *(v0 + 328) = v1;
  if (v1)
  {
    swift_getObjectType();
    v2 = sub_100572E78();
    v4 = v3;
  }

  else
  {
    v2 = 0;
    v4 = 0;
  }

  return _swift_task_switch(sub_10029C1F8, v2, v4);
}

uint64_t sub_10029C16C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10029C1F8()
{
  v1 = v0 + 16;
  v2 = *(v0 + 216);
  v3 = *(v0 + 200);
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 344;
  *(v0 + 24) = sub_10029C2B0;
  v4 = *(v0 + 345);
  v5 = swift_continuation_init();
  sub_10029EB58(v5, v4, v3, v2);

  return _swift_continuation_await(v1);
}

uint64_t sub_10029C2B0(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  *(*v1 + 336) = v3;
  if (v3)
  {
    swift_willThrow();

    v4 = *(v2 + 280);
    v5 = *(v2 + 288);
    v6 = sub_10029C480;
  }

  else
  {

    *(v2 + 346) = *(v2 + 344);
    v4 = *(v2 + 280);
    v5 = *(v2 + 288);
    v6 = sub_10029C400;
  }

  return _swift_task_switch(v6, v4, v5);
}

uint64_t sub_10029C400()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 346);

  return v1(v2);
}

uint64_t sub_10029C480()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10029C504(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[40] = a3;
  v4[41] = v3;
  v4[38] = a1;
  v4[39] = a2;
  sub_10056CC38();
  v4[42] = swift_task_alloc();
  v5 = sub_100572888();
  v4[43] = v5;
  v4[44] = *(v5 - 8);
  v4[45] = swift_task_alloc();
  v4[46] = swift_task_alloc();
  v6 = sub_10056DFD8();
  v4[47] = v6;
  v4[48] = *(v6 - 8);
  v4[49] = swift_task_alloc();
  v4[50] = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  v4[51] = swift_task_alloc();
  v4[52] = sub_100572F08();
  v4[53] = sub_100572EF8();
  v8 = sub_100572E78();
  v4[54] = v8;
  v4[55] = v7;

  return _swift_task_switch(sub_10029C6C4, v8, v7);
}

uint64_t sub_10029C6C4()
{
  v1 = *(v0 + 304);
  v2 = type metadata accessor for PlaybackIntentDescriptor(0);
  sub_10000CC8C(v1 + *(v2 + 28), v0 + 80, &qword_1006EB1C0, &qword_1005905D0);
  sub_10000CC8C(v0 + 80, v0 + 200, &qword_1006EB1C0, &qword_1005905D0);
  v3 = *(v0 + 224);
  if (v3)
  {
    v4 = *(v0 + 232);
    sub_10000C8CC((v0 + 200), *(v0 + 224));
    sub_10029F7A0(v3, v4, (v0 + 160));
    sub_100010474((v0 + 200));
    if (*(v0 + 184))
    {
      sub_10002EA74((v0 + 160), v0 + 120);
      sub_10000C8CC((v0 + 120), *(v0 + 144));
      DynamicType = swift_getDynamicType();
      if (qword_1006E5068 != -1)
      {
        v42 = DynamicType;
        swift_once();
        DynamicType = v42;
      }

      v6 = (off_1006EE068 + 32);
      v7 = *(off_1006EE068 + 2) + 1;
      while (--v7)
      {
        v8 = *v6;
        v6 += 2;
        if (v8 == DynamicType)
        {
          sub_100010474((v0 + 120));
          goto LABEL_11;
        }
      }

      sub_1002A8678(*(v0 + 304), *(v0 + 408), type metadata accessor for PlaybackIntentDescriptor.IntentType);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v32 = *(v0 + 408);
      if (EnumCaseMultiPayload == 1)
      {
        v34 = *(v0 + 384);
        v33 = *(v0 + 392);
        v35 = *(v0 + 376);
        (*(v34 + 32))(v33, v32, v35);
        v36 = sub_10056DFA8();
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
      v39[1] = sub_10029CBEC;
      v40 = *(v0 + 320);
      v41 = *(v0 + 312);

      return sub_10029201C(v36, v41, v40, v37 + v38);
    }
  }

  else
  {
    sub_10001036C(v0 + 200, &qword_1006EB1C0, &qword_1005905D0);
    *(v0 + 160) = 0u;
    *(v0 + 176) = 0u;
    *(v0 + 192) = 0;
  }

  sub_10001036C(v0 + 160, &qword_1006EB1C0, &qword_1005905D0);
LABEL_11:
  if (qword_1006E5070 != -1)
  {
    swift_once();
  }

  v9 = sub_10056DF88();
  sub_10000C49C(v9, static Logger.sharedListening);
  v10 = sub_10056DF68();
  v11 = sub_100573448();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "Offering SharePlay options (Play Now/Next/Last)", v12, 2u);
  }

  sub_10000CC8C(v0 + 80, v0 + 240, &qword_1006EB1C0, &qword_1005905D0);
  v13 = *(v0 + 264);
  if (v13)
  {
    v14 = *(v0 + 272);
    sub_10000C8CC((v0 + 240), *(v0 + 264));
    v15 = sub_10029FC64(v13, v14);
    v17 = v16;
    sub_100010474((v0 + 240));
  }

  else
  {
    v18 = *(v0 + 360);
    v19 = *(v0 + 368);
    v20 = *(v0 + 344);
    v21 = *(v0 + 352);
    sub_10001036C(v0 + 240, &qword_1006EB1C0, &qword_1005905D0);
    sub_100572818();
    (*(v21 + 16))(v18, v19, v20);
    if (qword_1006E4C60 != -1)
    {
      swift_once();
    }

    v22 = *(v0 + 368);
    v23 = *(v0 + 344);
    v24 = *(v0 + 352);
    v25 = qword_1006FC3B8;
    sub_10056CBC8();
    v15 = sub_100572948();
    v17 = v26;
    (*(v24 + 8))(v22, v23);
  }

  *(v0 + 472) = v17;
  *(v0 + 480) = v15;
  v27 = sub_100572EF8();
  *(v0 + 488) = v27;
  if (v27)
  {
    swift_getObjectType();
    v28 = sub_100572E78();
    v30 = v29;
  }

  else
  {
    v28 = 0;
    v30 = 0;
  }

  return _swift_task_switch(sub_10029CE0C, v28, v30);
}

uint64_t sub_10029CBEC()
{
  v2 = *v1;
  v3 = *(*v1 + 448);
  *(*v1 + 464) = v0;

  v4 = *(v2 + 440);
  v5 = *(v2 + 432);
  if (v0)
  {
    v6 = sub_10029D0DC;
  }

  else
  {
    v6 = sub_10029CD40;
  }

  return _swift_task_switch(v6, v5, v4);
}

uint64_t sub_10029CD40()
{

  sub_100010474((v0 + 120));
  sub_10001036C(v0 + 80, &qword_1006EB1C0, &qword_1005905D0);

  v1 = *(v0 + 8);

  return v1(0, 0, 1);
}

uint64_t sub_10029CE0C()
{
  v1 = v0[60];
  v2 = v0[59];
  v3 = v0[41];
  v4 = v0[38];
  v0[2] = v0;
  v0[7] = v0 + 35;
  v0[3] = sub_10029CEE4;
  v5 = swift_continuation_init();
  sub_1002A0854(v5, v4, v3, v1, v2);

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10029CEE4()
{
  v1 = *v0;
  v2 = *v0;
  *(v2 + 496) = *(*v0 + 280);
  *(v2 + 297) = *(v2 + 296);
  v3 = *(v1 + 440);
  v4 = *(v1 + 432);

  return _swift_task_switch(sub_10029D000, v4, v3);
}

uint64_t sub_10029D000()
{

  sub_10001036C(v0 + 80, &qword_1006EB1C0, &qword_1005905D0);
  v1 = *(v0 + 297);
  v3 = *(v0 + 496);
  v2 = *(v0 + 504);

  v4 = *(v0 + 8);

  return v4(v3, v2, v1);
}

uint64_t sub_10029D0DC()
{

  sub_100010474((v0 + 120));
  sub_10001036C(v0 + 80, &qword_1006EB1C0, &qword_1005905D0);

  v1 = *(v0 + 8);

  return v1();
}

void *sub_10029D1A8(void *a1, char a2, uint64_t a3)
{
  v7 = OBJC_IVAR____TtC9MusicCore18PlaybackController_player;
  swift_beginAccess();
  v8 = *(v3 + v7);
  v9 = _swiftEmptyArrayStorage;
  if (v8)
  {
    v42 = _swiftEmptyArrayStorage;
    v10 = a1;

    if ((a2 & 2) != 0 && sub_1002A8748(v10, a3, v8))
    {
      v9 = sub_1000CFA90(0, 1, 1, _swiftEmptyArrayStorage);
      v12 = v9[2];
      v11 = v9[3];
      if (v12 >= v11 >> 1)
      {
        v9 = sub_1000CFA90((v11 > 1), v12 + 1, 1, v9);
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
      sub_100009DCC(&unk_1006EAF50, &unk_1005854E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10057B500;
      *(inited + 56) = &type metadata for Player.InsertCommand;
      *(inited + 64) = &protocol witness table for Player.InsertCommand;
      *(inited + 32) = v10;
      *(inited + 40) = 0;
      *(inited + 96) = &type metadata for Player.ChangeCommand;
      *(inited + 104) = &protocol witness table for Player.ChangeCommand;
      *(inited + 72) = 1;
      v19 = v10;
      if (sub_1002A8978(v19, 0, v8) && sub_1002A8AA8(1, v8))
      {
        sub_1000DA308(inited);
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
        sub_10002EA8C(&v39, v38);
        v24 = v19;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_1000CFA90(0, _swiftEmptyArrayStorage[2] + 1, 1, _swiftEmptyArrayStorage);
        }

        v26 = v9[2];
        v25 = v9[3];
        if (v26 >= v25 >> 1)
        {
          v9 = sub_1000CFA90((v25 > 1), v26 + 1, 1, v9);
        }

        sub_1002AB1C0(v38, v38[3]);
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
        sub_10002EA74(&v35, &v9[5 * v26 + 4]);
        sub_100010474(v38);
        v42 = v9;
      }

      sub_100010474(&v39);
      if (!sub_1002A8864(0, v8))
      {

        return v42;
      }

      v9 = v42;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_1000CFA90(0, v9[2] + 1, 1, v9);
      }

      v17 = v9[2];
      v33 = v9[3];
      v23 = v17 + 1;
      if (v17 >= v33 >> 1)
      {
        v9 = sub_1000CFA90((v33 > 1), v17 + 1, 1, v9);
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
        v15 = sub_1002A8978(v14, 0, v8);

        if (v15)
        {
          v9 = sub_1000CFA90(0, 1, 1, _swiftEmptyArrayStorage);
          v17 = v9[2];
          v16 = v9[3];
          if (v17 >= v16 >> 1)
          {
            v9 = sub_1000CFA90((v16 > 1), v17 + 1, 1, v9);
          }

          v40 = &type metadata for Player.InsertCommand;
          v41 = &protocol witness table for Player.InsertCommand;
          v39 = v14;
          v9[2] = v17 + 1;
          goto LABEL_33;
        }
      }

      if ((a2 & 8) == 0 || (v10 = v10, v21 = sub_1002A8978(v10, 1, v8), v10, !v21))
      {

        return _swiftEmptyArrayStorage;
      }

      v9 = sub_1000CFA90(0, 1, 1, _swiftEmptyArrayStorage);
      v17 = v9[2];
      v22 = v9[3];
      v23 = v17 + 1;
      if (v17 >= v22 >> 1)
      {
        v9 = sub_1000CFA90((v22 > 1), v17 + 1, 1, v9);
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
    sub_10002EA74(&v39, (v13 + 4));
  }

  return v9;
}

uint64_t sub_10029D738(uint64_t a1, uint64_t a2)
{
  v50 = a2;
  v59 = a1;
  v61 = sub_10056CAE8();
  v2 = *(v61 - 8);
  __chkstk_darwin();
  v4 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10056CC38();
  __chkstk_darwin();
  v5 = sub_100572888();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = &v39 - v9;
  sub_100572818();
  v60 = *(v6 + 16);
  v53 = v6 + 16;
  v60(v8, v10, v5);
  if (qword_1006E4C60 != -1)
  {
    swift_once();
  }

  v11 = qword_1006FC3B8;
  v12 = qword_1006FC3B8;
  v51 = v11;
  v13 = v12;
  sub_10056CBC8();
  v57 = v13;
  v49 = sub_100572948();
  v48 = v14;
  v40 = *(v6 + 8);
  v40(v10, v5);
  v47 = swift_allocObject();
  v15 = v59;
  *(v47 + 16) = v59;
  _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
  v46 = sub_10056CAB8();
  v58 = v16;
  v52 = *(v2 + 8);
  v52(v4, v61);
  sub_100572818();
  v60(v8, v10, v5);
  sub_10056CBC8();
  v57 = v57;
  v39 = v6 + 8;
  v45 = sub_100572948();
  v55 = v17;
  v18 = v40;
  v40(v10, v5);
  v44 = swift_allocObject();
  *(v44 + 16) = v15;
  _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
  v43 = sub_10056CAB8();
  v54 = v19;
  v52(v4, v61);
  sub_100572818();
  v20 = v60;
  v60(v8, v10, v5);
  sub_10056CBC8();
  v21 = v57;
  v42 = sub_100572948();
  v57 = v22;
  v18(v10, v5);
  v56 = swift_allocObject();
  *(v56 + 16) = v59;
  _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
  v59 = sub_10056CAB8();
  v41 = v23;
  v52(v4, v61);
  sub_100572818();
  v20(v8, v10, v5);
  sub_10056CBC8();
  v61 = sub_100572948();
  v25 = v24;
  v18(v10, v5);
  sub_100009DCC(&qword_1006E6120, &qword_1005854B0);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_100580F90;
  v27 = v58;
  *(v26 + 32) = v46;
  *(v26 + 40) = v27;
  v28 = v48;
  *(v26 + 48) = v49;
  *(v26 + 56) = v28;
  *(v26 + 64) = 2;
  v29 = v47;
  *(v26 + 72) = &unk_100590630;
  *(v26 + 80) = v29;
  v30 = v54;
  *(v26 + 88) = v43;
  *(v26 + 96) = v30;
  v31 = v55;
  *(v26 + 104) = v45;
  *(v26 + 112) = v31;
  *(v26 + 120) = 1;
  v32 = v44;
  *(v26 + 128) = &unk_100590640;
  *(v26 + 136) = v32;
  v33 = v41;
  *(v26 + 144) = v59;
  *(v26 + 152) = v33;
  v34 = v57;
  *(v26 + 160) = v42;
  *(v26 + 168) = v34;
  *(v26 + 176) = 0;
  v35 = v56;
  *(v26 + 184) = &unk_100590650;
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
  v61 = sub_10000C8CC((v50 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator), v36);
  v63[2] = v68;
  v63[3] = v69;
  v64 = v70;
  v63[0] = v66;
  v63[1] = v67;
  v65 = 0;
  v60 = *(v37 + 8);

  sub_10017E66C(&v66, v62);
  v60(v63, v36, v37);
  sub_100109250(&v66);

  return sub_1002A9DCC(v63);
}

uint64_t sub_10029DF7C(uint64_t a1, uint64_t a2)
{
  v3 = *(*(*(v2 + 16) + 64) + 40);
  *v3 = 2;
  *(v3 + 8) = 0;
  swift_continuation_resume();
  v4 = *(v2 + 8);

  return v4();
}

uint64_t sub_10029E024(uint64_t a1, uint64_t a2)
{
  v3 = *(*(*(v2 + 16) + 64) + 40);
  *v3 = 1;
  *(v3 + 8) = 0;
  swift_continuation_resume();
  v4 = *(v2 + 8);

  return v4();
}

uint64_t sub_10029E0CC(uint64_t a1, uint64_t a2)
{
  v3 = *(*(*(v2 + 16) + 64) + 40);
  *v3 = 0;
  *(v3 + 8) = 1;
  swift_continuation_resume();
  v4 = *(v2 + 8);

  return v4();
}

uint64_t sub_10029E154(uint64_t a1, uint64_t a2)
{
  v51 = a2;
  v54 = a1;
  v50 = sub_10056CAE8();
  v49 = *(v50 - 8);
  __chkstk_darwin();
  v3 = &v36 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10056CC38();
  __chkstk_darwin();
  v4 = sub_100572888();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v36 - v8;
  sub_100572818();
  v53 = *(v5 + 16);
  v53(v7, v9, v4);
  if (qword_1006E4C60 != -1)
  {
    swift_once();
  }

  v10 = qword_1006FC3B8;
  v11 = qword_1006FC3B8;
  v39 = v10;
  v12 = v11;
  sub_10056CBC8();
  v43 = v12;
  v48 = sub_100572948();
  v47 = v13;
  v52 = *(v5 + 8);
  v52(v9, v4);
  v46 = swift_allocObject();
  *(v46 + 16) = v54;
  _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
  v45 = sub_10056CAB8();
  v44 = v14;
  v38 = v5 + 8;
  v37 = *(v49 + 8);
  v15 = v50;
  v37(v3, v50);
  sub_100572818();
  v53(v7, v9, v4);
  sub_10056CBC8();
  v40 = v43;
  v49 = sub_100572948();
  v43 = v16;
  v52(v9, v4);
  v42 = swift_allocObject();
  *(v42 + 16) = v54;
  _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
  v41 = sub_10056CAB8();
  v54 = v17;
  v37(v3, v15);
  sub_100572818();
  v18 = v53;
  v53(v7, v9, v4);
  sub_10056CBC8();
  v19 = v40;
  v50 = sub_100572948();
  v40 = v20;
  v21 = v52;
  v52(v9, v4);
  sub_100572818();
  v18(v7, v9, v4);
  sub_10056CBC8();
  v22 = sub_100572948();
  v24 = v23;
  v21(v9, v4);
  sub_100009DCC(&qword_1006E6120, &qword_1005854B0);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_10057B500;
  v26 = v44;
  *(v25 + 32) = v45;
  *(v25 + 40) = v26;
  v27 = v47;
  *(v25 + 48) = v48;
  *(v25 + 56) = v27;
  *(v25 + 64) = 2;
  v28 = v46;
  *(v25 + 72) = &unk_100590680;
  *(v25 + 80) = v28;
  v29 = v54;
  *(v25 + 88) = v41;
  *(v25 + 96) = v29;
  v30 = v43;
  *(v25 + 104) = v49;
  *(v25 + 112) = v30;
  *(v25 + 120) = 0;
  v31 = v42;
  *(v25 + 128) = &unk_100590690;
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
  v53 = sub_10000C8CC((v51 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator), v32);
  v56[2] = v61;
  v56[3] = v62;
  v57 = v63;
  v56[0] = v59;
  v56[1] = v60;
  v58 = 0;
  v34 = *(v33 + 8);

  sub_10017E66C(&v59, v55);
  v34(v56, v32, v33);
  sub_100109250(&v59);

  return sub_1002A9DCC(v56);
}

uint64_t sub_10029E8C0(uint64_t a1, uint64_t a2)
{
  **(*(*(v2 + 16) + 64) + 40) = 1;
  swift_continuation_resume();
  v3 = *(v2 + 8);

  return v3();
}

uint64_t sub_10029E960(uint64_t a1, uint64_t a2)
{
  **(*(*(v2 + 16) + 64) + 40) = 0;
  swift_continuation_resume();
  v3 = *(v2 + 8);

  return v3();
}

uint64_t sub_10029E9DC(uint64_t result)
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

uint64_t sub_10029EAB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    sub_100009DCC(&qword_1006E9B60, &qword_1005857E0);
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

uint64_t sub_10029EB58(uint64_t a1, char a2, void *a3, uint64_t a4)
{
  v68 = a3;
  v70 = a1;
  v6 = sub_10056CAE8();
  v67 = *(v6 - 8);
  __chkstk_darwin();
  v8 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10056CC38();
  __chkstk_darwin();
  v9 = sub_100572888();
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
    if (qword_1006E4F80 != -1)
    {
      swift_once();
    }

    v16 = sub_10056DF88();
    sub_10000C49C(v16, static Logger.playbackController);
    v17 = sub_10056DF68();
    v18 = sub_100573448();
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
    sub_100572818();
    v21 = v69;
    (*(v69 + 16))(v11, v13, v9);
    if (qword_1006E4C60 != -1)
    {
      swift_once();
    }

    v22 = qword_1006FC3B8;
    sub_10056CBC8();
    v65 = sub_100572948();
    v64 = v23;
    (*(v21 + 8))(v13, v9);
    v24 = swift_allocObject();
    *(v24 + 16) = v70;
    _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
    v63 = sub_10056CAB8();
    v62 = v25;
    (*(v67 + 8))(v8, v6);
    v26 = sub_1000CF968(0, 1, 1, _swiftEmptyArrayStorage);
    v28 = *(v26 + 2);
    v27 = *(v26 + 3);
    if (v28 >= v27 >> 1)
    {
      v26 = sub_1000CF968((v27 > 1), v28 + 1, 1, v26);
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
    *(v29 + 9) = &unk_100590670;
    *(v29 + 10) = v24;
  }

  else
  {
    v26 = _swiftEmptyArrayStorage;
  }

  v32 = v69;
  v65 = v6;
  sub_100572818();
  v33 = *(v32 + 16);
  v64 = v32 + 16;
  v63 = v33;
  v33(v11, v13, v9);
  if (qword_1006E4C60 != -1)
  {
    swift_once();
  }

  v34 = qword_1006FC3B8;
  v35 = qword_1006FC3B8;
  sub_10056CBC8();
  v36 = v35;
  v62 = v34;
  v60 = sub_100572948();
  v38 = v37;
  v61 = *(v32 + 8);
  v61(v13, v9);
  v39 = swift_allocObject();
  *(v39 + 16) = v70;
  _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
  v58 = sub_10056CAB8();
  v41 = v40;
  (*(v67 + 8))(v8, v65);
  v70 = v41;

  v67 = v39;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v69 = v32 + 8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v26 = sub_1000CF968(0, *(v26 + 2) + 1, 1, v26);
  }

  v44 = *(v26 + 2);
  v43 = *(v26 + 3);
  if (v44 >= v43 >> 1)
  {
    v26 = sub_1000CF968((v43 > 1), v44 + 1, 1, v26);
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
  *(v45 + 9) = &unk_100590660;
  *(v45 + 10) = v47;
  v48 = sub_10029F550(v68);
  v50 = v49;
  sub_100572818();
  v63(v11, v13, v9);
  sub_10056CBC8();
  v51 = sub_100572948();
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
  sub_10000C8CC((v66 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator), v54);
  v72[2] = v77;
  v72[3] = v78;
  v73 = v79;
  v72[0] = v75;
  v72[1] = v76;
  v74 = 0;
  v56 = *(v55 + 8);
  sub_10017E66C(&v75, v71);
  v56(v72, v54, v55);
  sub_100109250(&v75);

  return sub_1002A9DCC(v72);
}

uint64_t sub_10029F430()
{
  **(*(*(v0 + 16) + 64) + 40) = 1;
  swift_continuation_throwingResume();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10029F4D0()
{
  **(*(*(v0 + 16) + 64) + 40) = 2;
  swift_continuation_throwingResume();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10029F550(void *a1)
{
  sub_10056CC38();
  __chkstk_darwin();
  v2 = sub_100572888();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v12[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *&v6 = __chkstk_darwin().n128_u64[0];
  v8 = &v12[-v7];
  if (a1 && ![a1 isHomePodRoute])
  {
    [a1 isAppleTVRoute];
  }

  sub_100572818();
  (*(v3 + 16))(v5, v8, v2);
  if (qword_1006E4C60 != -1)
  {
    swift_once();
  }

  v9 = qword_1006FC3B8;
  sub_10056CBC8();
  v10 = sub_100572948();
  (*(v3 + 8))(v8, v2);
  return v10;
}

uint64_t sub_10029F7A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v46 = a3;
  v36 = a2;
  v44 = sub_10056D438();
  v37 = *(v44 - 8);
  __chkstk_darwin();
  v35 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v43 = &v34 - v5;
  v6 = sub_100572208();
  v41 = *(v6 - 8);
  v42 = v6;
  __chkstk_darwin();
  v40 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_100572298();
  v39 = *(v45 - 8);
  __chkstk_darwin();
  v38 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = &v34 - v9;
  v11 = sub_100571C48();
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
      sub_100572218();
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
        v32 = sub_10002AB7C(v22);
        (v21)(v32, v47, a1);
      }
    }
  }

  return (*(v17 + 8))(v20, a1);
}

uint64_t sub_10029FC64(uint64_t a1, uint64_t a2)
{
  v40 = sub_100571F08();
  v38[0] = *(v40 - 8);
  __chkstk_darwin();
  v39 = v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_10056D8D8();
  v38[1] = *(v43 - 8);
  __chkstk_darwin();
  v42 = v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_10056DBC8();
  v41 = *(v45 - 8);
  __chkstk_darwin();
  v44 = v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_1005722D8();
  v46 = *(v49 - 8);
  __chkstk_darwin();
  v48 = v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_100571B78();
  v47 = *(v52 - 8);
  __chkstk_darwin();
  v51 = v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_1005713A8();
  v50 = *(v53 - 8);
  __chkstk_darwin();
  v10 = v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10056CC38();
  __chkstk_darwin();
  v54 = v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100572888();
  v13 = *(v12 - 8);
  __chkstk_darwin();
  v15 = v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v17 = v38 - v16;
  v18 = sub_100571A68();
  v19 = *(v18 - 8);
  __chkstk_darwin();
  v21 = v38 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10029F7A0(a1, a2, v56);
  if (!v56[3])
  {
    goto LABEL_31;
  }

  sub_10000CC8C(v56, v55, &qword_1006EB1C0, &qword_1005905D0);
  sub_100009DCC(&qword_1006EB1C8, &qword_1005905E0);
  if (swift_dynamicCast())
  {
    sub_100572818();
    (*(v13 + 16))(v15, v17, v12);
    if (qword_1006E4C60 != -1)
    {
      swift_once();
    }

    v22 = qword_1006FC3B8;
    sub_10056CBC8();
    v23 = sub_100572948();
    (*(v13 + 8))(v17, v12);
    (*(v19 + 8))(v21, v18);
    goto LABEL_20;
  }

  v24 = v53;
  if (swift_dynamicCast())
  {
    sub_100572818();
    (*(v13 + 16))(v15, v17, v12);
    if (qword_1006E4C60 != -1)
    {
      swift_once();
    }

    v25 = qword_1006FC3B8;
    sub_10056CBC8();
    v23 = sub_100572948();
    (*(v13 + 8))(v17, v12);
    (*(v50 + 8))(v10, v24);
    goto LABEL_20;
  }

  v27 = v51;
  v26 = v52;
  if (swift_dynamicCast())
  {
    sub_100572818();
    (*(v13 + 16))(v15, v17, v12);
    if (qword_1006E4C60 != -1)
    {
      swift_once();
    }

    v28 = qword_1006FC3B8;
    sub_10056CBC8();
    v23 = sub_100572948();
    (*(v13 + 8))(v17, v12);
    v29 = v47;
    goto LABEL_19;
  }

  v27 = v48;
  v26 = v49;
  if (swift_dynamicCast())
  {
    sub_100572818();
    (*(v13 + 16))(v15, v17, v12);
    if (qword_1006E4C60 != -1)
    {
      swift_once();
    }

    v30 = qword_1006FC3B8;
    sub_10056CBC8();
    v23 = sub_100572948();
    (*(v13 + 8))(v17, v12);
    v31 = &v60;
LABEL_18:
    v29 = *(v31 - 32);
LABEL_19:
    (*(v29 + 8))(v27, v26);
LABEL_20:
    sub_100010474(v55);
    sub_10001036C(v56, &qword_1006EB1C0, &qword_1005905D0);
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
      sub_100572818();
      (*(v13 + 16))(v15, v17, v12);
      if (qword_1006E4C60 != -1)
      {
        swift_once();
      }

      v35 = qword_1006FC3B8;
      sub_10056CBC8();
      v23 = sub_100572948();
      (*(v13 + 8))(v17, v12);
      v31 = &v57;
      goto LABEL_18;
    }

    sub_100010474(v55);
LABEL_31:
    sub_10001036C(v56, &qword_1006EB1C0, &qword_1005905D0);
    goto LABEL_32;
  }

  v34 = &v59;
LABEL_25:
  (*(*(v34 - 32) + 8))(v32, v33);
  sub_100010474(v55);
  sub_10001036C(v56, &qword_1006EB1C0, &qword_1005905D0);
LABEL_32:
  sub_100572818();
  (*(v13 + 16))(v15, v17, v12);
  if (qword_1006E4C60 != -1)
  {
    swift_once();
  }

  v36 = qword_1006FC3B8;
  sub_10056CBC8();
  v23 = sub_100572948();
  (*(v13 + 8))(v17, v12);
  return v23;
}

uint64_t sub_1002A0854(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *&v104 = a4;
  *(&v104 + 1) = a5;
  v122 = a1;
  v123 = a3;
  v105 = a2;
  v5 = sub_10056DFD8();
  v102 = *(v5 - 8);
  v103 = v5;
  __chkstk_darwin();
  v101 = &v99 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  __chkstk_darwin();
  v100 = (&v99 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v109 = &v99 - v8;
  v9 = sub_10056CAE8();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v99 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10056CC38();
  __chkstk_darwin();
  v14 = &v99 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100572888();
  v16 = *(v15 - 8);
  __chkstk_darwin();
  v18 = &v99 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v20 = &v99 - v19;
  sub_100572818();
  v111 = *(v16 + 16);
  v112 = v16 + 16;
  v111(v18, v20, v15);
  if (qword_1006E4C60 != -1)
  {
    swift_once();
  }

  v21 = qword_1006FC3B8;
  v106 = qword_1006FC3B8;
  sub_10056CBC8();
  v113 = v18;
  v110 = v21;
  v116 = v14;
  v22 = sub_100572948();
  v24 = v23;
  v25 = *(v16 + 8);
  v114 = v20;
  v115 = v16 + 8;
  v117 = v15;
  v108 = v25;
  v25(v20, v15);
  v26 = swift_allocObject();
  *(v26 + 16) = v122;
  _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
  v27 = sub_10056CAB8();
  v29 = v28;
  v30 = *(v10 + 8);
  v118 = v12;
  v119 = v10 + 8;
  v120 = v9;
  v107 = v30;
  v30(v12, v9);
  v31 = sub_1000CF968(0, 1, 1, _swiftEmptyArrayStorage);
  v33 = *(v31 + 2);
  v32 = *(v31 + 3);
  if (v33 >= v32 >> 1)
  {
    v31 = sub_1000CF968((v32 > 1), v33 + 1, 1, v31);
  }

  v34 = v105;
  *(v31 + 2) = v33 + 1;
  v35 = &v31[56 * v33];
  *(v35 + 4) = v27;
  *(v35 + 5) = v29;
  *(v35 + 6) = v22;
  *(v35 + 7) = v24;
  v35[64] = 2;
  *(v35 + 9) = &unk_1005905F0;
  *(v35 + 10) = v26;
  v36 = v109;
  sub_1002A8678(v34, v109, type metadata accessor for PlaybackIntentDescriptor.IntentType);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v37 = v101;
    v38 = v102;
    v39 = v36;
    v40 = v103;
    (*(v102 + 32))(v101, v39, v103);
    v109 = sub_10056DFA8();
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
    v47 = sub_1002A8978(v46, 0, v45);

    if (v47)
    {
      sub_100572818();
      v48 = v117;
      v111(v113, v42, v117);
      v49 = v106;
      sub_10056CBC8();
      v50 = sub_100572948();
      v52 = v51;
      v108(v42, v48);
      v53 = swift_allocObject();
      *(v53 + 16) = v122;
      _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
      v54 = sub_10056CAB8();
      v56 = v55;
      v107(v41, v120);
      v58 = *(v31 + 2);
      v57 = *(v31 + 3);
      if (v58 >= v57 >> 1)
      {
        v31 = sub_1000CF968((v57 > 1), v58 + 1, 1, v31);
      }

      *(v31 + 2) = v58 + 1;
      v59 = &v31[56 * v58];
      *(v59 + 4) = v54;
      *(v59 + 5) = v56;
      *(v59 + 6) = v50;
      *(v59 + 7) = v52;
      v59[64] = 2;
      *(v59 + 9) = &unk_100590620;
      *(v59 + 10) = v53;
      v41 = v118;
      v42 = v114;
      v34 = v105;
    }
  }

  v60 = v100;
  sub_1002A8678(v34, v100, type metadata accessor for PlaybackIntentDescriptor.IntentType);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v61 = v101;
    v62 = v102;
    v63 = v60;
    v64 = v103;
    (*(v102 + 32))(v101, v63, v103);
    v65 = sub_10056DFA8();
    (*(v62 + 8))(v61, v64);
  }

  else
  {
    v65 = *v60;
  }

  v66 = *(v123 + v43);
  v121 = v65;
  if (v66 && (, v67 = v65, v68 = sub_1002A8978(v67, 1, v66), v67, , v68))
  {
    sub_100572818();
    v69 = v117;
    v111(v113, v42, v117);
    v70 = v106;
    sub_10056CBC8();
    v71 = sub_100572948();
    v72 = v42;
    v74 = v73;
    v108(v72, v69);
    v75 = swift_allocObject();
    *(v75 + 16) = v122;
    _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
    v76 = sub_10056CAB8();
    v78 = v77;
    v107(v41, v120);
    v80 = *(v31 + 2);
    v79 = *(v31 + 3);
    if (v80 >= v79 >> 1)
    {
      v31 = sub_1000CF968((v79 > 1), v80 + 1, 1, v31);
    }

    *(v31 + 2) = v80 + 1;
    v81 = &v31[56 * v80];
    *(v81 + 4) = v76;
    *(v81 + 5) = v78;
    *(v81 + 6) = v71;
    *(v81 + 7) = v74;
    v81[64] = 2;
    *(v81 + 9) = &unk_100590610;
    *(v81 + 10) = v75;
    v82 = v122;
    v41 = v118;
    v42 = v114;
  }

  else
  {
    v82 = v122;
  }

  sub_100572818();
  v83 = v117;
  v111(v113, v42, v117);
  v84 = v106;
  sub_10056CBC8();
  v85 = sub_100572948();
  v87 = v86;
  v108(v42, v83);
  v88 = swift_allocObject();
  *(v88 + 16) = v82;
  _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
  v89 = sub_10056CAB8();
  v91 = v90;
  v107(v41, v120);
  v93 = *(v31 + 2);
  v92 = *(v31 + 3);
  if (v93 >= v92 >> 1)
  {
    v31 = sub_1000CF968((v92 > 1), v93 + 1, 1, v31);
  }

  *(v31 + 2) = v93 + 1;
  v94 = &v31[56 * v93];
  *(v94 + 4) = v89;
  *(v94 + 5) = v91;
  *(v94 + 6) = v85;
  *(v94 + 7) = v87;
  v94[64] = 0;
  *(v94 + 9) = &unk_100590600;
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
  sub_10000C8CC((v123 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator), v95);
  v125[2] = v130;
  v125[3] = v131;
  v126 = v132;
  v125[0] = v128;
  v125[1] = v129;
  v127 = 0;
  v97 = *(v96 + 8);

  sub_10017E66C(&v128, &v124);
  v97(v125, v95, v96);
  sub_100109250(&v128);

  return sub_1002A9DCC(v125);
}

uint64_t sub_1002A133C(uint64_t a1, uint64_t a2)
{
  v3 = *(*(*(v2 + 16) + 64) + 40);
  *v3 = vdupq_n_s64(2uLL);
  v3[1].i8[0] = 0;
  swift_continuation_resume();
  v4 = *(v2 + 8);

  return v4();
}

uint64_t sub_1002A13E8(uint64_t a1, uint64_t a2)
{
  v3 = *(*(*(v2 + 16) + 64) + 40);
  *v3 = xmmword_100582520;
  *(v3 + 16) = 0;
  swift_continuation_resume();
  v4 = *(v2 + 8);

  return v4();
}

uint64_t sub_1002A1494(uint64_t a1, uint64_t a2)
{
  v3 = *(*(*(v2 + 16) + 64) + 40);
  *v3 = xmmword_100582530;
  *(v3 + 16) = 0;
  swift_continuation_resume();
  v4 = *(v2 + 8);

  return v4();
}

uint64_t sub_1002A1540(uint64_t a1, uint64_t a2)
{
  v3 = *(*(*(v2 + 16) + 64) + 40);
  *v3 = 0;
  *(v3 + 8) = 0;
  *(v3 + 16) = 1;
  swift_continuation_resume();
  v4 = *(v2 + 8);

  return v4();
}

id PlaybackController.requestedPropertySet(for:)()
{
  if (qword_1006E5058 != -1)
  {
    swift_once();
  }

  v1 = static SharedListening.Event.properties;

  return v1;
}

uint64_t sub_1002A1710(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_100572F08();
  v4[3] = sub_100572EF8();
  v6 = sub_100572E78();
  v4[4] = v6;
  v4[5] = v5;

  return _swift_task_switch(sub_1002A17A8, v6, v5);
}

uint64_t sub_1002A17A8()
{
  v1 = (v0[2] + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator);
  v2 = v1[3];
  v3 = v1[4];
  sub_10000C8CC(v1, v2);
  v0[6] = (*(v3 + 40))(v2, v3);
  v4 = swift_task_alloc();
  v0[7] = v4;
  *v4 = v0;
  v4[1] = sub_1002A1888;

  return GroupActivitiesManager.leave(performLeaveCommand:)(0);
}

uint64_t sub_1002A1888()
{
  v1 = *v0;

  v2 = *(v1 + 40);
  v3 = *(v1 + 32);

  return _swift_task_switch(sub_1002A19CC, v3, v2);
}

uint64_t sub_1002A19CC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002A1A2C(uint64_t a1)
{
  v34 = a1;
  v33 = sub_10056CAE8();
  v32 = *(v33 - 8);
  __chkstk_darwin();
  v31 = &v26 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10056CC38();
  __chkstk_darwin();
  v2 = sub_100572888();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = &v26 - v6;
  sub_100572818();
  v8 = *(v3 + 16);
  v8(v5, v7, v2);
  if (qword_1006E4C60 != -1)
  {
    swift_once();
  }

  v9 = qword_1006FC3B8;
  sub_10056CBC8();
  v10 = v9;
  v30 = sub_100572948();
  v29 = v11;
  v12 = *(v3 + 8);
  v12(v7, v2);
  sub_100572818();
  v8(v5, v7, v2);
  sub_10056CBC8();
  v28 = sub_100572948();
  v27 = v13;
  v12(v7, v2);
  sub_100009DCC(&qword_1006E6120, &qword_1005854B0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_10057B510;
  sub_100572818();
  v8(v5, v7, v2);
  sub_10056CBC8();
  v15 = sub_100572948();
  v17 = v16;
  v12(v7, v2);
  v18 = v31;
  _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
  v19 = sub_10056CAB8();
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
  sub_10000C8CC((v34 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator), v22);
  v36[2] = v41;
  v36[3] = v42;
  v37 = v43;
  v36[0] = v39;
  v36[1] = v40;
  v38 = 0;
  v24 = *(v23 + 8);
  sub_10017E66C(&v39, v35);
  v24(v36, v22, v23);
  sub_100109250(&v39);
  return sub_1002A9DCC(v36);
}

void sub_1002A1F6C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  sub_1000F51DC(&v14, v18);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = a2;
  sub_1000EFDD8(v18, 0x79546E6F69746361, 0xEA00000000006570, isUniquelyReferenced_nonNull_native);
  v8 = v17;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    sub_10002EA8C(Strong + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator, &v14);

    v11 = v15;
    v12 = v16;
    sub_10000C8CC(&v14, v15);
    (*(v12 + 24))(v8, v11, v12);

    sub_100010474(&v14);
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

void sub_1002A20E8(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X8>)
{
  v4 = v3;
  v54 = a1;
  v55 = a2;
  v53 = sub_10056CAE8();
  v6 = *(v53 - 8);
  *&v7 = __chkstk_darwin().n128_u64[0];
  v52 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [v4 buttons];
  sub_1000D3B98(0, &qword_1006EB0C0, ICStoreDialogResponseButton_ptr);
  v10 = sub_100572D28();

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
        v11 = sub_100573F58();
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
        v18 = sub_1005728D8();
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
      sub_1000E672C(v22, v21);
      v24 = v52;
      _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
      v25 = sub_10056CAB8();
      v4 = v26;
      (*v47)(v24, v53);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v14 = sub_1000CF968(0, *(v14 + 2) + 1, 1, v14);
      }

      a3 = *(v14 + 2);
      v27 = *(v14 + 3);
      if (a3 >= v27 >> 1)
      {
        v14 = sub_1000CF968((v27 > 1), a3 + 1, 1, v14);
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
      *(v29 + 9) = &unk_100590428;
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
    v12 = sub_100574178();
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
    v35 = sub_1005728D8();
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
    v41 = sub_1005728D8();
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

uint64_t sub_1002A24BC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
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

    sub_1002A20E8(sub_1002AA9C8, v8, v16);

    v9 = *(v6 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator + 24);
    v10 = *(v6 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator + 32);
    sub_10000C8CC((v6 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator), v9);
    v13[2] = v16[2];
    v13[3] = v16[3];
    v14 = v17;
    v13[0] = v16[0];
    v13[1] = v16[1];
    v15 = 0;
    v11 = *(v10 + 8);
    sub_10017E66C(v16, v12);
    v11(v13, v9, v10);
    sub_100109250(v16);
    return sub_1002A9DCC(v13);
  }

  return result;
}

double PlaybackController.engine(_:didFailToPlayFirstItem:withError:)(uint64_t a1, void *a2, uint64_t a3)
{
  sub_1000D3B98(0, &qword_1006E84A0, OS_dispatch_queue_ptr);
  v6 = swift_allocObject();
  v6[2] = a3;
  v6[3] = v3;
  v6[4] = a2;
  swift_errorRetain();
  v7 = a2;
  v8 = v3;
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_1002A975C, v6);

  return result;
}

void sub_1002A2754(uint64_t a1, uint64_t a2, void *a3)
{
  v163 = a3;
  v166 = a2;
  sub_100009DCC(&qword_1006E7518, &qword_100588418);
  __chkstk_darwin();
  v5 = &v151 - v4;
  sub_100009DCC(&unk_1006EB0A0, &qword_100588A90);
  __chkstk_darwin();
  v7 = &v151 - v6;
  if (qword_1006E4F80 != -1)
  {
    swift_once();
  }

  v8 = sub_10056DF88();
  sub_10000C49C(v8, static Logger.playbackController);
  swift_errorRetain();
  v9 = sub_10056DF68();
  v10 = sub_100573428();

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
    sub_100009DCC(&qword_1006E9B60, &qword_1005857E0);
    v14 = sub_100572978();
    v16 = sub_1000C9784(v14, v15, &v174);

    *(v12 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v9, v10, "didFailToPlayFirstItem with error=%{public}s", v12, 0xCu);
    sub_100010474(v13);
  }

  if ((*(v166 + OBJC_IVAR____TtC9MusicCore18PlaybackController_isErrorAlertPresented) & 1) == 0)
  {
    v156 = OBJC_IVAR____TtC9MusicCore18PlaybackController_isErrorAlertPresented;
    v17 = sub_10056C718();
    v18 = [v17 userInfo];
    v19 = sub_1005726A8();

    v20 = *(v19 + 16);
    v160 = v17;
    if (v20 && (v21 = sub_1000EB89C(0x676F6C616964, 0xE600000000000000), (v22 & 1) != 0))
    {
      sub_100081F38(*(v19 + 56) + 32 * v21, &v174);

      sub_100009DCC(&qword_1006E7DF8, &qword_10058A7D0);
      if (swift_dynamicCast())
      {

        v23 = sub_10056DF68();
        v24 = sub_100573448();

        if (os_log_type_enabled(v23, v24))
        {
          v25 = swift_slowAlloc();
          v171 = swift_slowAlloc();
          *&v174 = v171;
          *v25 = 136446210;
          v26 = sub_1005726B8();
          v28 = sub_1000C9784(v26, v27, &v174);

          *(v25 + 4) = v28;
          v17 = v160;
          _os_log_impl(&_mh_execute_header, v23, v24, "Found an error dialog=%{public}s", v25, 0xCu);
          sub_100010474(v171);
        }

        v29 = objc_allocWithZone(ICStoreDialogResponse);
        isa = sub_100572688().super.isa;

        v31 = [v29 initWithResponseDictionary:isa];

        sub_1002A20E8(0, 0, &v174);
        v196 = v176;
        v197 = v177;
        v198 = v178;
        v194 = v174;
        v195 = v175;
LABEL_14:
        v32 = [v17 userInfo];
        v33 = sub_1005726A8();

        v34 = sub_1005728D8();
        if (*(v33 + 16))
        {
          v36 = sub_1000EB89C(v34, v35);
          v38 = v37;

          if (v38)
          {
            sub_100081F38(*(v33 + 56) + 32 * v36, &v174);

            sub_1000D3B98(0, &qword_1006E63E0, NSError_ptr);
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
            sub_1002A3EE0(a1, v41, v42, v40);
            if (v39)
            {
              v43 = v39;
              sub_1002A3EE0(v43, v41, v42, v40);
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
              v47 = sub_1005728D8();
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
              v54 = sub_1005728D8();
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
                  sub_1000D3B98(0, &qword_1006ED5F0, MPModelRadioStationKind_ptr);
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
                  *(v61 + 16) = sub_1002AA1F0;
                  *(v61 + 24) = &v151 - 8;
                  *&v176 = sub_1002AA218;
                  *(&v176 + 1) = v61;
                  *&v174 = _NSConcreteStackBlock;
                  *(&v174 + 1) = 1107296256;
                  *&v175 = sub_1001D65E4;
                  *(&v175 + 1) = &unk_1006971A8;
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
                    *(v65 + 16) = sub_1002AA220;
                    *(v65 + 24) = &v151 - 4;
                    *&v176 = sub_1002AA218;
                    *(&v176 + 1) = v65;
                    *&v174 = _NSConcreteStackBlock;
                    *(&v174 + 1) = 1107296256;
                    *&v175 = sub_1001D65E4;
                    *(&v175 + 1) = &unk_1006971F8;
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
                          sub_10002EA8C(v166 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator, &v199);
                          v71 = *(&v200 + 1);
                          v72 = v201;
                          sub_10000C8CC(&v199, *(&v200 + 1));
                          v73 = sub_100571F08();
                          v74 = v50;
                          v75 = v172;
                          sub_10056DE48();
                          v76 = *(v73 - 8);
                          if ((*(v76 + 48))(v75, 1, v73) == 1)
                          {
                            sub_10001036C(v75, &unk_1006EB0A0, &qword_100588A90);
                            v174 = 0u;
                            v175 = 0u;
                            *&v176 = 0;
                          }

                          else
                          {
                            *(&v175 + 1) = v73;
                            *&v176 = &protocol witness table for Station;
                            v90 = sub_10002AB7C(&v174);
                            (*(v76 + 32))(v90, v75, v73);
                          }

                          v39 = v161;
                          v179 = 2;
                          (*(v72 + 8))(&v174, v71, v72);
                          sub_1002A9DCC(&v174);
                          sub_100010474(&v199);
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
                        sub_1001CC664(v70, &v199);
LABEL_56:
                        sub_10001036C(&v194, &qword_1006E7A90, &qword_10058D8D0);

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
                        sub_10017E66C(&v174, v86);
                        v154 = v84;
                        goto LABEL_64;
                      }

                      v79 = v168;
                      swift_beginAccess();
                      if (*v79)
                      {
                        v80 = v50;
                        sub_1001CD524(v70, 0, &v199);
                        goto LABEL_56;
                      }

                      v87 = v50;

                      v88 = sub_10056C718();
                      v89 = [objc_opt_self() playbackAlertControllerForItem:v163 contentType:0 error:v88 dismissalBlock:0];

                      if (v89)
                      {
                        sub_1002A4274(&v174);
                        sub_10001036C(&v194, &qword_1006E7A90, &qword_10058D8D0);

                        v187 = v176;
                        v188 = v177;
                        v189 = v178;
                        v185 = v174;
                        v186 = v175;
                      }

                      else
                      {
                        sub_10001036C(&v194, &qword_1006E7A90, &qword_10058D8D0);
                        v185 = 0u;
                        v186 = 0u;
                        v187 = 0u;
                        v188 = 0u;
                        v189 = 0;
                      }

                      v132 = v158;
                      v131 = v159;
                      sub_1002A465C(a1, v40, v159, v158);
                      if (v39)
                      {
                        v133 = v39;
                        sub_1002A465C(v133, v40, v131, v132);
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
                                  v119 = sub_1005728D8();
                                  v121 = v120;

                                  v122 = sub_1005728D8();
                                  if (v121)
                                  {
                                    if (v119 == v122 && v121 == v123)
                                    {

LABEL_80:
                                      if ([v39 code] != 40)
                                      {

                                        sub_10001036C(&v174, &qword_1006E7A90, &qword_10058D8D0);

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
                                        sub_1002A5EF0(v128, v130, 0, 0);

                                        sub_10001036C(&v174, &qword_1006E7A90, &qword_10058D8D0);

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

                                    v124 = sub_100574498();

                                    if (v124)
                                    {
                                      goto LABEL_80;
                                    }

                                    sub_10001036C(&v174, &qword_1006E7A90, &qword_10058D8D0);

LABEL_108:

                                    return;
                                  }

                                  v94 = v162;
LABEL_87:

                                  sub_10001036C(&v174, &qword_1006E7A90, &qword_10058D8D0);

                                  goto LABEL_108;
                                }

LABEL_86:
                                sub_1005728D8();
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
                              sub_10017E66C(&v174, &v199);
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
                                  sub_1000E672C(v105, v104);

                                  v168 = v104;
                                  sub_1000E672C(v105, v104);
                                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                                  {
                                    v98 = sub_1000CF968(0, *(v98 + 2) + 1, 1, v98);
                                  }

                                  v111 = *(v98 + 2);
                                  v110 = *(v98 + 3);
                                  if (v111 >= v110 >> 1)
                                  {
                                    v98 = sub_1000CF968((v110 > 1), v111 + 1, 1, v98);
                                  }

                                  v99 += 7;

                                  sub_1000F3E14(v105, v168);
                                  *(v98 + 2) = v111 + 1;
                                  v112 = &v98[56 * v111];
                                  v113 = v170;
                                  *(v112 + 4) = v171;
                                  *(v112 + 5) = v101;
                                  *(v112 + 6) = v113;
                                  *(v112 + 7) = v103;
                                  v112[64] = v109;
                                  *(v112 + 9) = &unk_100590418;
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
                              sub_10000C8CC((v114 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator), v115);
                              v176 = v182;
                              v177 = v183;
                              v178 = v184;
                              v174 = v180;
                              v175 = v181;
                              v179 = 0;
                              v117 = *(v116 + 8);

                              sub_10017E66C(&v180, &v173);
                              v117(&v174, v115, v116);
                              sub_100109250(&v185);
                              sub_100109250(&v180);
                              sub_1002A9DCC(&v174);
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
                            sub_10002EA8C(v166 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator, &v199);
                            v144 = *(&v200 + 1);
                            v145 = v201;
                            sub_10000C8CC(&v199, *(&v200 + 1));
                            v146 = v143;
                            v147 = v170;
                            sub_10056D428();
                            v148 = sub_10056D438();
                            v149 = *(v148 - 8);
                            if ((*(v149 + 48))(v147, 1, v148) == 1)
                            {
                              sub_10001036C(v147, &qword_1006E7518, &qword_100588418);
                              v174 = 0u;
                              v175 = 0u;
                              *&v176 = 0;
                            }

                            else
                            {
                              *(&v175 + 1) = v148;
                              *&v176 = sub_1002AA1A8(&unk_1006EB0B0, &type metadata accessor for GenericMusicItem, &protocol conformance descriptor for GenericMusicItem);
                              v150 = sub_10002AB7C(&v174);
                              (*(v149 + 32))(v150, v147, v148);
                            }

                            v179 = 2;
                            (*(v145 + 8))(&v174, v144, v145);

                            sub_1002A9DCC(&v174);
                            sub_100010474(&v199);
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
                        sub_1001CC664(v137, &v199);
                      }

                      else
                      {
                        if ((*v168 & 1) == 0)
                        {

                          goto LABEL_126;
                        }

                        sub_1001CD524(v137, 0, &v199);
                      }

                      sub_10001036C(&v185, &qword_1006E7A90, &qword_10058D8D0);

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

void sub_1002A3EE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_10056C718();
  v8 = sub_10056C718();
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

void sub_1002A3F88(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  v12[2] = a2;
  v12[3] = a3;
  v12[4] = a4;
  v12[5] = a5;
  v12[6] = a6;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_1002AA66C;
  *(v13 + 24) = v12;
  v15[4] = sub_1001DA9E4;
  v15[5] = v13;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 1107296256;
  v15[2] = sub_1001D6568;
  v15[3] = &unk_100697338;
  v14 = _Block_copy(v15);

  [a1 setRadioIdentifiersWithBlock:v14];
  _Block_release(v14);
  LOBYTE(a1) = swift_isEscapingClosureAtFileLocation();

  if (a1)
  {
    __break(1u);
  }
}

void sub_1002A410C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a3)
  {
    v9 = sub_100572898();
  }

  else
  {
    v9 = 0;
  }

  [a1 setStationStringID:v9];

  [a1 setStationID:a4];
  if (a6)
  {
    v10 = sub_100572898();
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;
  [a1 setStationHash:?];
}

void sub_1002A41DC(uint64_t a1, void *a2)
{
  objc_opt_self();
  v3 = swift_dynamicCastObjCClassUnconditional();
  v4 = [a2 stationName];
  [v3 setName:v4];
}

void sub_1002A4274(uint64_t a1@<X8>)
{
  v2 = v1;
  v48 = sub_10056CAE8();
  v4 = *(v48 - 8);
  *&v5 = __chkstk_darwin().n128_u64[0];
  v47 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [v1 actions];
  sub_1000D3B98(0, &unk_1006EB138, UIAlertAction_ptr);
  v8 = sub_100572D28();

  if (v8 >> 62)
  {
    v9 = sub_100574178();
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
      v12 = sub_100573F58();
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
      v14 = sub_1002AA7DC;
    }

    else
    {
      v15 = 0;
    }

    v16 = [v13 title];
    if (v16)
    {
      v17 = v16;
      v18 = sub_1005728D8();
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
    sub_1000E672C(v14, v15);
    v21 = v13;
    v22 = v47;
    _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
    v23 = sub_10056CAB8();
    v25 = v24;
    (*v43)(v22, v48);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = sub_1000CF968(0, *(v11 + 2) + 1, 1, v11);
    }

    v27 = *(v11 + 2);
    v26 = *(v11 + 3);
    if (v27 >= v26 >> 1)
    {
      v11 = sub_1000CF968((v26 > 1), v27 + 1, 1, v11);
    }

    ++v10;

    sub_1000F3E14(v14, v15);
    *(v11 + 2) = v27 + 1;
    v28 = &v11[56 * v27];
    *(v28 + 4) = v23;
    *(v28 + 5) = v25;
    v29 = v49;
    *(v28 + 6) = v50;
    *(v28 + 7) = v29;
    v28[64] = 2;
    *(v28 + 9) = &unk_100590478;
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
    v32 = sub_1005728D8();
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
    v37 = sub_1005728D8();
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

void sub_1002A465C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_errorRetain();
  sub_100009DCC(&qword_1006E9B60, &qword_1005857E0);
  type metadata accessor for MPCError(0);
  if (swift_dynamicCast())
  {
    sub_1002AA1A8(&qword_1006E5EC0, type metadata accessor for MPCError, &unk_100584894);
    sub_10056C6D8();

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

uint64_t sub_1002A47B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[23] = a3;
  v4[24] = a4;
  v4[22] = a2;
  sub_100009DCC(&qword_1006E6420, &qword_100586E50);
  v4[25] = swift_task_alloc();

  return _swift_task_switch(sub_1002A4850, 0, 0);
}

uint64_t sub_1002A4850()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 176);
  v3 = *(v0 + 184);
  v4 = sub_100572F48();
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
  sub_1000CB298(v0 + 112, v0 + 144);
  sub_1000CB298(v0 + 128, v0 + 160);
  sub_1000E672C(v5, v6);
  sub_10000CC8C(v2, v0 + 16, &qword_1006E7A90, &qword_10058D8D0);
  sub_1001B3FAC(0, 0, v1, &unk_100590488, v7);

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    Strong[OBJC_IVAR____TtC9MusicCore18PlaybackController_isErrorAlertPresented] = 0;
  }

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_1002A4A18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a4 + 40);
  if (v6)
  {
    v12 = (v6 + *v6);
    v9 = swift_task_alloc();
    *(v5 + 16) = v9;
    *v9 = v5;
    v9[1] = sub_10000CB98;

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
  sub_1000D3B98(0, &qword_1006E84A0, OS_dispatch_queue_ptr);
  v10 = swift_allocObject();
  v10[2] = a3;
  v10[3] = v5;
  v10[4] = a2;
  v10[5] = a4;
  v10[6] = a5;
  v11 = v5;
  v12 = a2;

  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_1002A976C, v10);

  return result;
}

id sub_1002A4D0C(uint64_t a1, void *a2, void (*a3)(void, void), void (*a4)(void, void), uint64_t a5)
{
  v120 = a2;
  v9 = sub_10056CAE8();
  v10 = *(v9 - 8);
  v115 = v9;
  v116 = v10;
  __chkstk_darwin();
  v114 = &v98 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10056CC38();
  __chkstk_darwin();
  v113 = &v98 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = sub_100572888();
  v13 = *(v119 - 8);
  __chkstk_darwin();
  v15 = &v98 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v17 = &v98 - v16;
  if (qword_1006E4F80 != -1)
  {
    swift_once();
  }

  v18 = sub_10056DF88();
  sub_10000C49C(v18, static Logger.playbackController);
  v19 = sub_10056DF68();
  v20 = sub_100573428();
  v21 = os_log_type_enabled(v19, v20);
  v118 = a3;
  v112 = v15;
  if (v21)
  {
    v22 = swift_slowAlloc();
    v117 = v13;
    v23 = v22;
    v111 = swift_slowAlloc();
    *&v135[0] = v111;
    *v23 = 136446210;
    v24 = a1;
    *&v127 = a1;
    type metadata accessor for MPCExplicitContentAuthorizationReason(0);
    v25 = sub_100572978();
    v27 = v17;
    v28 = sub_1000C9784(v25, v26, v135);
    v29 = a5;
    v30 = a4;

    *(v23 + 4) = v28;
    v17 = v27;
    a3 = v118;
    _os_log_impl(&_mh_execute_header, v19, v20, "requiresAuthorizationToPlay with reason=%{public}s", v23, 0xCu);
    sub_100010474(v111);

    v13 = v117;

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
      if (qword_1006E4D40 != -1)
      {
        swift_once();
      }

      swift_getKeyPath();
      swift_getKeyPath();
      sub_10056E478();

      v137 = v131;
      v138 = v132;
      v139 = v133;
      v140 = v134;
      v135[0] = v127;
      v135[1] = v128;
      v135[2] = v129;
      v136 = v130;
      v31 = v131;
      if (!v131 || (v32 = v138) == 0)
      {
        v117 = v29;
        v118 = v30;
        sub_100572818();
        v45 = v112;
        v111 = *(v13 + 16);
        v111(v112, v17, v119);
        if (qword_1006E4C60 != -1)
        {
          swift_once();
        }

        v46 = qword_1006FC3B8;
        sub_10056CBC8();
        v47 = v46;
        v48 = sub_100572948();
        v109 = v49;
        v110 = v48;
        v50 = *(v13 + 8);
        v51 = v119;
        v50(v17, v119);
        v52 = v114;
        _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
        v53 = sub_10056CAB8();
        v107 = v54;
        v108 = v53;
        (*(v116 + 8))(v52, v115);
        sub_100572818();
        v111(v45, v17, v51);
        sub_10056CBC8();
        v55 = sub_100572948();
        v57 = v56;
        v50(v17, v51);
        sub_100009DCC(&qword_1006E6120, &qword_1005854B0);
        v58 = swift_allocObject();
        *(v58 + 16) = xmmword_10057B510;
        v59 = v107;
        *(v58 + 32) = v108;
        *(v58 + 40) = v59;
        v60 = v109;
        *(v58 + 48) = v110;
        *(v58 + 56) = v60;
        *(v58 + 64) = 2;
        *(v58 + 72) = 0;
        *(v58 + 80) = 0;
        v122 = 0uLL;
        *&v123 = v55;
        *(&v123 + 1) = v57;
        LOBYTE(v124) = 0;
        *(&v124 + 1) = 0;
        LOBYTE(v125) = 1;
        *(&v125 + 1) = v58;
        v126 = 0;
        v61 = *(v120 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator + 24);
        v62 = *(v120 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator + 32);
        sub_10000C8CC((v120 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator), v61);
        v129 = v124;
        v130 = v125;
        *&v131 = v126;
        v127 = v122;
        v128 = v123;
        BYTE8(v131) = 0;
        v63 = *(v62 + 8);

        sub_10017E66C(&v122, v121);
        v63(&v127, v61, v62);
        sub_1002A9DCC(&v127);
        v118(0, 0);
        sub_100109250(&v122);

        return sub_100108D2C(v135);
      }

      v106 = *(&v137 + 1);
      v107 = *(&v136 + 1);
      v33 = objc_opt_self();

      v108 = v32;

      v34 = [v33 standardUserDefaults];
      *&v122 = 0xD000000000000012;
      *(&v122 + 1) = 0x80000001005B3930;
      sub_1000C5FB8();
      NSUserDefaults.subscript.getter(&v127);

      v109 = v31;
      if (*(&v128 + 1))
      {
        sub_100009DCC(&unk_1006E84C0, &unk_1005854A0);
        v35 = swift_dynamicCast();
        v36 = v118;
        if (v35)
        {
          v37 = v122;
LABEL_24:
          v64 = [v36 cloudUniversalLibraryID];
          if (!v64)
          {

LABEL_29:
            sub_100572818();
            v69 = v112;
            v102 = *(v13 + 16);
            v103 = v13 + 16;
            v102(v112, v17, v119);
            if (qword_1006E4C60 != -1)
            {
              swift_once();
            }

            v70 = qword_1006FC3B8;
            v71 = qword_1006FC3B8;
            v100 = v70;
            v72 = v71;
            sub_10056CBC8();
            v73 = v72;
            v105 = sub_100572948();
            v111 = v74;
            v75 = *(v13 + 8);
            v117 = v13 + 8;
            v99 = v75;
            v76 = v119;
            v75(v17, v119);
            v77 = swift_allocObject();
            v104 = v77;
            v77[2] = v36;
            v77[3] = v30;
            v77[4] = v29;
            v78 = v36;

            v79 = v114;
            _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
            v101 = sub_10056CAB8();
            v110 = v80;
            v118 = v30;
            v81 = v115;
            v82 = v17;
            v83 = *(v116 + 8);
            v83(v79, v115);
            sub_100572818();
            v102(v69, v82, v76);
            sub_10056CBC8();
            v116 = sub_100572948();
            v113 = v84;
            v99(v82, v76);
            v85 = v81;
            v86 = swift_allocObject();
            *(v86 + 16) = v118;
            *(v86 + 24) = v29;

            _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
            v87 = sub_10056CAB8();
            v89 = v88;
            v119 = v88;
            v83(v79, v85);
            sub_100009DCC(&qword_1006E6120, &qword_1005854B0);
            v90 = swift_allocObject();
            *(v90 + 16) = xmmword_10057B500;
            v92 = v110;
            v91 = v111;
            *(v90 + 32) = v101;
            *(v90 + 40) = v92;
            v93 = v104;
            *(v90 + 48) = v105;
            *(v90 + 56) = v91;
            *(v90 + 64) = 2;
            *(v90 + 72) = &unk_1005903F8;
            *(v90 + 80) = v93;
            *(v90 + 88) = v87;
            *(v90 + 96) = v89;
            v94 = v113;
            *(v90 + 104) = v116;
            *(v90 + 112) = v94;
            *(v90 + 120) = 0;
            *(v90 + 128) = &unk_100590408;
            *(v90 + 136) = v86;
            LOBYTE(v127) = 1;
            *&v122 = v107;
            *(&v122 + 1) = v109;
            *&v123 = v106;
            *(&v123 + 1) = v108;
            LOBYTE(v124) = 0;
            *(&v124 + 1) = 0;
            LOBYTE(v125) = 1;
            *(&v125 + 1) = v90;
            v126 = 0;
            v95 = *(v120 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator + 24);
            v96 = *(v120 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator + 32);
            v120 = sub_10000C8CC((v120 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator), v95);
            v129 = v124;
            v130 = v125;
            *&v131 = v126;
            v127 = v122;
            v128 = v123;
            BYTE8(v131) = 0;
            v97 = *(v96 + 8);

            sub_10017E66C(&v122, v121);
            v97(&v127, v95, v96);
            sub_100108D2C(v135);
            sub_100109250(&v122);

            return sub_1002A9DCC(&v127);
          }

          v117 = v13;

          result = [v36 cloudUniversalLibraryID];
          if (result)
          {
            v65 = result;
            v66 = sub_1005728D8();
            v68 = v67;

            *&v127 = v66;
            *(&v127 + 1) = v68;
            __chkstk_darwin();
            *(&v98 - 2) = &v127;
            LOBYTE(v65) = sub_10019686C(sub_1002AA070, (&v98 - 4), v37);

            v13 = v117;
            v36 = v118;
            if (v65)
            {

              v30(1, 0);
              return sub_100108D2C(v135);
            }

            goto LABEL_29;
          }

LABEL_33:
          __break(1u);
          return result;
        }
      }

      else
      {
        sub_10001036C(&v127, &qword_1006EA040, &unk_10058A5D0);
        v36 = v118;
      }

      v37 = _swiftEmptyArrayStorage;
      goto LABEL_24;
    }
  }

  result = [a3 modelGenericObject];
  if (!result)
  {
    __break(1u);
    goto LABEL_33;
  }

  v40 = result;
  v41 = [result flattenedGenericObject];

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

  sub_1002A5EF0(v42, v44, v30, v29);
}

uint64_t sub_1002A5A08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[9] = a4;
  v5[10] = a5;
  v5[8] = a3;
  return _swift_task_switch(sub_1002A5A2C, 0, 0);
}

uint64_t sub_1002A5A2C()
{
  v20 = v0;
  v1 = [*(v0 + 64) cloudUniversalLibraryID];
  if (!v1)
  {
    goto LABEL_16;
  }

  v2 = v1;
  v3 = sub_1005728D8();
  v5 = v4;

  v6 = objc_opt_self();
  v7 = [v6 standardUserDefaults];
  *(v0 + 48) = 0xD000000000000012;
  *(v0 + 56) = 0x80000001005B3930;
  v8 = sub_1000C5FB8();
  NSUserDefaults.subscript.getter((v0 + 16));

  if (*(v0 + 40))
  {
    sub_100009DCC(&unk_1006E84C0, &unk_1005854A0);
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
          v9 = sub_1000CF25C(isUniquelyReferenced_nonNull_native, v10, 1, v9);
          v18 = v9;
        }

        sub_1001E9848(0, v10 - 999, 0);
      }

      goto LABEL_11;
    }
  }

  else
  {
    sub_10001036C(v0 + 16, &qword_1006EA040, &unk_10058A5D0);
  }

  v9 = _swiftEmptyArrayStorage;
LABEL_11:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v9 = sub_1000CF25C(0, *(v9 + 2) + 1, 1, v9);
  }

  v13 = *(v9 + 2);
  v12 = *(v9 + 3);
  if (v13 >= v12 >> 1)
  {
    v9 = sub_1000CF25C((v12 > 1), v13 + 1, 1, v9);
  }

  *(v9 + 2) = v13 + 1;
  v14 = &v9[16 * v13];
  *(v14 + 4) = v3;
  *(v14 + 5) = v5;
  v15 = [v6 standardUserDefaults];
  v19[3] = sub_100009DCC(&unk_1006E84C0, &unk_1005854A0);
  v19[0] = v9;
  *(v0 + 16) = 0xD000000000000012;
  *(v0 + 24) = 0x80000001005B3930;
  NSUserDefaults.subscript.setter(v19, v0 + 16, &type metadata for String, v8);

LABEL_16:
  (*(v0 + 72))(1, 0);
  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_1002A5CD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a3;
  *(v4 + 24) = a4;
  return _swift_task_switch(sub_1002A5CF0, 0, 0);
}

uint64_t sub_1002A5CF0()
{
  (*(v0 + 16))(0, 0);
  v1 = *(v0 + 8);

  return v1();
}

void sub_1002A5E80(char a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_10056C718();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1 & 1);
}

void sub_1002A5EF0(uint64_t a1, uint64_t a2, void (*a3)(void, void), uint64_t a4)
{
  v5 = v4;
  v70 = a4;
  v73 = a3;
  sub_100009DCC(&qword_1006E5D10, &unk_100583A20);
  __chkstk_darwin();
  v69 = &v64 - v8;
  v72 = sub_10056C8A8();
  v9 = *(v72 - 8);
  __chkstk_darwin();
  v67 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v12 = &v64 - v11;
  if (qword_1006E4F80 != -1)
  {
    swift_once();
  }

  v71 = sub_10056DF88();
  sub_10000C49C(v71, static Logger.playbackController);

  v13 = sub_10056DF68();
  v14 = sub_100573448();

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

    sub_100009DCC(&unk_1006EB090, &qword_100587FB0);
    v22 = sub_100572978();
    v24 = sub_1000C9784(v22, v23, v74);
    v9 = v18;
    v12 = v17;
    a2 = v16;

    v25 = v21;
    *(v21 + 1) = v24;
    v26 = v72;
    v5 = v20;
    _os_log_impl(&_mh_execute_header, v13, v14, "Presenting Age Verification with model identifier=%{public}s", v25, 0xCu);
    sub_100010474(v66);
  }

  else
  {

    v26 = v72;
  }

  if (qword_1006E4D40 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_10056E478();

  v79[4] = v75;
  v79[5] = v76;
  v79[6] = v77;
  v79[7] = v78;
  v79[0] = v74[0];
  v79[1] = v74[1];
  v79[2] = v74[2];
  v79[3] = v74[3];
  sub_100108D2C(v79);
  if (BYTE1(v79[0]) != 1)
  {
    v32 = *(v5 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator + 24);
    v33 = *(v5 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator + 32);
    sub_10000C8CC((v5 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator), v32);
    v34 = sub_1001CDC78(v74);
    BYTE8(v75) = 0;
    (*(v33 + 8))(v74, v32, v33, v34);
    sub_1002A9DCC(v74);
    if (qword_1006E4F88 != -1)
    {
      swift_once();
    }

    sub_10000C49C(v71, qword_1006EAF30);
    v28 = sub_10056DF68();
    v29 = sub_100573428();
    if (!os_log_type_enabled(v28, v29))
    {
      goto LABEL_21;
    }

    v30 = swift_slowAlloc();
    *v30 = 0;
    v31 = "Device is offline. Age Verification cannot proceed. Displaying fallback alert instead.";
    goto LABEL_20;
  }

  if (qword_1006E5648 != -1)
  {
    swift_once();
  }

  v27 = v69;
  ExplicitRestrictionsController.accountVerificationURL.getter(v69);
  if ((*(v9 + 48))(v27, 1, v26) == 1)
  {
    sub_10001036C(v27, &qword_1006E5D10, &unk_100583A20);
    if (qword_1006E4F88 != -1)
    {
      swift_once();
    }

    sub_10000C49C(v71, qword_1006EAF30);
    v28 = sub_10056DF68();
    v29 = sub_100573428();
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
  v36 = qword_1006E4F88;
  v65 = v5;
  if (a2)
  {
    v69 = v12;

    if (v36 != -1)
    {
      swift_once();
    }

    sub_10000C49C(v71, qword_1006EAF30);
    v37 = sub_10056DF68();
    v38 = sub_100573408();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&_mh_execute_header, v37, v38, "modelObjectIdentifier parameters found for age verification context", v39, 2u);
    }

    sub_100009DCC(&unk_1006EB080, &qword_100589E28);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10057B510;
    *(inited + 32) = 0x64496D616461;
    v41 = inited + 32;
    v42 = v68;
    *(inited + 40) = 0xE600000000000000;
    *(inited + 48) = v42;
    *(inited + 56) = a2;
    v43 = sub_1000F362C(inited);
    swift_setDeallocating();
    sub_10001036C(v41, &qword_1006E7DD0, &qword_100589E30);
    v44 = v67;
    v12 = v69;
    URL.parametrize(_:)(v43, v67);

    (*(v9 + 8))(v12, v26);
    v35(v12, v44, v26);
    v45 = v9;
  }

  else
  {
    if (qword_1006E4F88 != -1)
    {
      swift_once();
    }

    sub_10000C49C(v71, qword_1006EAF30);
    v46 = sub_10056DF68();
    v47 = sub_100573428();
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
  *v55 = sub_1002A9E7C;
  v55[1] = v52;
  sub_1000E672C(v53, v54);

  sub_1000F3E14(v56, v57);

  v58 = *(v51 + OBJC_IVAR____TtC9MusicCore18PlaybackController_ageVerificationWrapper);
  *(v51 + OBJC_IVAR____TtC9MusicCore18PlaybackController_ageVerificationWrapper) = v49;
  v59 = v49;

  v60 = *(v51 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator + 24);
  v61 = *(v51 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator + 32);
  sub_10000C8CC((v51 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator), v60);
  v62 = *(v61 + 16);
  v63 = v59;
  v62(v12, v63, v60, v61);

  (*(v45 + 8))(v12, v72);
}

void sub_1002A685C(void *a1, char a2, void (*a3)(void, void), uint64_t a4, uint64_t a5)
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

uint64_t PlaybackController.displayAgeVerification(modelObject:completion:)(id a1, void (*a2)(void, void), uint64_t a3)
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

  sub_1002A5EF0(a1, v6, a2, a3);
}

uint64_t PlaybackController.displayAgeVerification(for:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = sub_100572F08();
  v2[5] = sub_100572EF8();
  v4 = sub_100572E78();
  v2[6] = v4;
  v2[7] = v3;

  return _swift_task_switch(sub_1002A6A4C, v4, v3);
}

uint64_t sub_1002A6A4C(uint64_t a1)
{
  v6 = v1[1];
  v2 = sub_100572EF8();
  v1[4].i64[0] = v2;
  v3 = swift_task_alloc();
  v1[4].i64[1] = v3;
  v3[1] = vextq_s8(v6, v6, 8uLL);
  v4 = swift_task_alloc();
  v1[5].i64[0] = v4;
  *v4 = v1;
  v4[1] = sub_1002A6B60;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v4, v2, &protocol witness table for MainActor, 0xD00000000000001CLL, 0x80000001005B3770, sub_1002A9770, v3, &type metadata for () + 1);
}

uint64_t sub_1002A6B60()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = *(v2 + 48);
    v4 = *(v2 + 56);
    v5 = sub_1002A6CE8;
  }

  else
  {

    v3 = *(v2 + 48);
    v4 = *(v2 + 56);
    v5 = sub_1002A6C84;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_1002A6C84()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002A6CE8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002A6D60(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_100009DCC(&unk_1006EB070, &unk_100590390);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v15 - v7;
  sub_10000C8CC(a3, a3[3]);
  v9 = sub_1005712F8();
  v11 = v10;
  (*(v6 + 16))(v8, a1, v5);
  v12 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v13 = swift_allocObject();
  (*(v6 + 32))(v13 + v12, v8, v5);
  sub_1002A5EF0(v9, v11, sub_1002A9D38, v13);
}

uint64_t sub_1002A6EF0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    swift_errorRetain();
    sub_100009DCC(&unk_1006EB070, &unk_100590390);
    return sub_100572E88();
  }

  else
  {
    sub_100009DCC(&unk_1006EB070, &unk_100590390);
    return sub_100572E98();
  }
}

id sub_1002A7050()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = *&v0[OBJC_IVAR____TtCC9MusicCore30ExplicitRestrictionsControllerP33_49A4F392108DD8BCF77701E27C86571422AgeVerificationWrapper_completion];
  if (v3)
  {
    v4 = *&v0[OBJC_IVAR____TtCC9MusicCore30ExplicitRestrictionsControllerP33_49A4F392108DD8BCF77701E27C86571422AgeVerificationWrapper_completion + 8];

    v3(0, 0);
    sub_1000F3E14(v3, v4);
  }

  v6.receiver = v1;
  v6.super_class = ObjectType;
  return objc_msgSendSuper2(&v6, "dealloc");
}

double sub_1002A7188(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  sub_1000D3B98(0, &qword_1006E84A0, OS_dispatch_queue_ptr);
  v8 = swift_allocObject();
  v8[2] = a2;
  v8[3] = a3;
  v8[4] = a4;
  v8[5] = a1;

  v9 = a4;
  v10 = a1;
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_1002A9BB0, v8);

  return result;
}

char *sub_1002A7244(char *result)
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
    v9[4] = sub_1002A9B44;
    v9[5] = v6;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 1107296256;
    v9[2] = sub_10017EDD8;
    v9[3] = &unk_100696FA0;
    v7 = _Block_copy(v9);
    sub_1000E672C(v2, v4);
    v8 = v3;

    [v5 getAgeVerificationStateWithCompletion:v7];
    _Block_release(v7);

    return sub_1000F3E14(v2, v4);
  }

  return result;
}

uint64_t sub_1002A7480()
{
  v0 = sub_10056DF88();
  sub_10000C910(v0, static Logger.playbackController);
  sub_10000C49C(v0, static Logger.playbackController);
  return sub_10056DF78();
}

uint64_t sub_1002A759C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a3;
  return _swift_task_switch(sub_1002A75C0, 0, 0);
}

uint64_t sub_1002A75C0()
{
  v1 = v0[2];
  if (v1)
  {
    v1(v0[4]);
  }

  v2 = v0[1];

  return v2();
}

uint64_t sub_1002A762C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[2] = a3;
  v6[3] = a4;
  sub_100009DCC(&qword_1006E6420, &qword_100586E50);
  v6[6] = swift_task_alloc();
  sub_100009DCC(&qword_1006E5D10, &unk_100583A20);
  v6[7] = swift_task_alloc();
  v7 = sub_10056C8A8();
  v6[8] = v7;
  v8 = *(v7 - 8);
  v6[9] = v8;
  v6[10] = *(v8 + 64);
  v6[11] = swift_task_alloc();
  v6[12] = swift_task_alloc();

  return _swift_task_switch(sub_1002A7774, 0, 0);
}

uint64_t sub_1002A7774()
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

    v13 = sub_100572F48();
    (*(*(v13 - 8) + 56))(v8, 1, 1, v13);
    v14 = swift_allocObject();
    v14[2] = 0;
    v14[3] = 0;
    v14[4] = v10;
    v14[5] = v9;
    v14[6] = v12;
    v15 = v9;
    sub_1001B45A4(0, 0, v8, &unk_100590440, v14);

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
  sub_1005728D8();

  sub_10056C868();

  if ((*(v6 + 48))(v7, 1, v5) == 1)
  {
    sub_10001036C(*(v0 + 56), &qword_1006E5D10, &unk_100583A20);
    goto LABEL_5;
  }

  v20 = *(v0 + 88);
  v19 = *(v0 + 96);
  v21 = *(v0 + 72);
  v22 = *(v0 + 64);
  v23 = *(v0 + 48);
  v24 = *(v21 + 32);
  v24(v19, *(v0 + 56), v22);
  v25 = sub_100572F48();
  (*(*(v25 - 8) + 56))(v23, 1, 1, v25);
  (*(v21 + 16))(v20, v19, v22);
  v26 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = 0;
  *(v27 + 24) = 0;
  v24(v27 + v26, v20, v22);
  sub_1001B42AC(0, 0, v23, &unk_100590450, v27);

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

uint64_t sub_1002A7B20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 144) = a1;
  *(v4 + 152) = a4;
  return _swift_task_switch(sub_1002A7B40, 0, 0);
}

uint64_t sub_1002A7B40()
{
  *(v0 + 160) = objc_opt_self();
  sub_100572F08();
  *(v0 + 168) = sub_100572EF8();
  v2 = sub_100572E78();

  return _swift_task_switch(sub_1002A7BE4, v2, v1);
}

uint64_t sub_1002A7BE4()
{
  v1 = *(v0 + 160);

  *(v0 + 176) = [v1 sharedApplication];

  return _swift_task_switch(sub_1002A7C68, 0, 0);
}

uint64_t sub_1002A7C68@<X0>(NSURL *x8_0@<X8>)
{
  v3 = v2[22];
  sub_10056C7E8(x8_0);
  v5 = v4;
  v2[23] = v4;
  sub_1000F41C8(_swiftEmptyArrayStorage);
  type metadata accessor for OpenExternalURLOptionsKey(0);
  sub_1002AA1A8(&qword_1006E5F00, type metadata accessor for OpenExternalURLOptionsKey, &unk_1005849A4);
  isa = sub_100572688().super.isa;
  v2[24] = isa;

  v2[2] = v2;
  v2[7] = v2 + 25;
  v2[3] = sub_1002A7E28;
  v7 = swift_continuation_init();
  v2[17] = sub_100009DCC(&qword_1006EB0C8, &qword_100590458);
  v2[10] = _NSConcreteStackBlock;
  v2[11] = 1107296256;
  v2[12] = sub_1002A7F80;
  v2[13] = &unk_100697298;
  v2[14] = v7;
  [v3 openURL:v5 options:isa completionHandler:v2 + 10];

  return _swift_continuation_await(v2 + 2);
}

uint64_t sub_1002A7E28()
{

  return _swift_task_switch(sub_1002A7F08, 0, 0);
}

uint64_t sub_1002A7F08()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 192);
  v3 = *(v0 + 176);
  **(v0 + 144) = *(v0 + 200);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1002A7F80(uint64_t a1, char a2)
{
  **(*(*sub_10000C8CC((a1 + 32), *(a1 + 56)) + 64) + 40) = a2;

  return swift_continuation_resume();
}

uint64_t sub_1002A7FDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[20] = a5;
  v6[21] = a6;
  v6[18] = a1;
  v6[19] = a4;
  return _swift_task_switch(sub_1002A8000, 0, 0);
}

uint64_t sub_1002A8000()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 152);
  v3 = [*(v0 + 160) action];
  *(v0 + 176) = v3;
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 192;
  *(v0 + 24) = sub_1002A814C;
  v4 = swift_continuation_init();
  *(v0 + 136) = sub_100009DCC(&qword_1006EB0D0, &unk_100590460);
  *(v0 + 80) = _NSConcreteStackBlock;
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_1002A834C;
  *(v0 + 104) = &unk_1006972C0;
  *(v0 + 112) = v4;
  [v2 handleButtonAction:v3 usingRequestContext:v1 withCompletionHandler:v0 + 80];

  return _swift_continuation_await(v0 + 16);
}

uint64_t sub_1002A814C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 184) = v1;
  if (v1)
  {
    v2 = sub_1002A82C8;
  }

  else
  {
    v2 = sub_1002A825C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002A825C()
{
  v1 = *(v0 + 192);

  **(v0 + 144) = v1;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1002A82C8(uint64_t a1)
{
  v2 = *(v1 + 176);
  swift_willThrow();

  **(v1 + 144) = 2;
  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_1002A834C(uint64_t a1, char a2, void *a3)
{
  v5 = *sub_10000C8CC((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_100009DCC(&qword_1006E9B60, &qword_1005857E0);
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

void sub_1002A8418(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10056E478();

  *a2 = v3;
}

void sub_1002A8498(void **a1, uint64_t *a2)
{
  v2 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  sub_10056E478();

  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;

  sub_10056E488();
  sub_1002B4590(v5);
}

unint64_t sub_1002A858C()
{
  result = qword_1006EAF60;
  if (!qword_1006EAF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006EAF60);
  }

  return result;
}

unint64_t sub_1002A85E0()
{
  result = qword_1006EAF68;
  if (!qword_1006EAF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006EAF68);
  }

  return result;
}

void sub_1002A8634(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3)
  {
  }
}

uint64_t sub_1002A8678(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1002A86E0(id result, char a2)
{
  if (a2 == 2)
  {
LABEL_4:
    sub_1002A8704(result);
    return;
  }

  if (a2 != 1)
  {
    if (a2)
    {
      return;
    }

    goto LABEL_4;
  }
}

void sub_1002A8704(id a1)
{
  if (a1 >= 5)
  {
  }
}

double sub_1002A8714(id a1, char a2)
{
  if (a2 == 2)
  {
LABEL_4:
    sub_1002A8738(a1);
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

id sub_1002A8738(id result)
{
  if (result >= 5)
  {
    return result;
  }

  return result;
}

BOOL sub_1002A8748(void *a1, uint64_t a2, uint64_t a3)
{
  v8[3] = &type metadata for Player.ReplaceCommand;
  v8[4] = &protocol witness table for Player.ReplaceCommand;
  v8[0] = a1;
  v8[1] = a2;
  sub_10000C8CC(v8, &type metadata for Player.ReplaceCommand);
  swift_getDynamicType();
  swift_conformsToProtocol2();
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = a1;
  sub_10056E478();

  if (v7)
  {
    v5 = MPCPlayerResponse.canPerform(_:)(v8);
  }

  else
  {
    v5 = 0;
  }

  sub_100010474(v8);
  return v5;
}

BOOL sub_1002A8864(char a1, uint64_t a2)
{
  v5[3] = &type metadata for Player.PlaybackCommand;
  v5[4] = &protocol witness table for Player.PlaybackCommand;
  LOBYTE(v5[0]) = a1;
  sub_10000C8CC(v5, &type metadata for Player.PlaybackCommand);
  swift_getDynamicType();
  swift_conformsToProtocol2();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10056E478();

  if (v4)
  {
    v2 = MPCPlayerResponse.canPerform(_:)(v5);
  }

  else
  {
    v2 = 0;
  }

  sub_100010474(v5);
  return v2;
}

BOOL sub_1002A8978(void *a1, void *a2, uint64_t a3)
{
  v9[3] = &type metadata for Player.InsertCommand;
  v9[4] = &protocol witness table for Player.InsertCommand;
  v9[0] = a1;
  v9[1] = a2;
  sub_10000C8CC(v9, &type metadata for Player.InsertCommand);
  swift_getDynamicType();
  swift_conformsToProtocol2();
  swift_getKeyPath();
  swift_getKeyPath();
  v5 = a1;
  sub_100101FC4(a2);
  sub_10056E478();

  if (v8)
  {
    v6 = MPCPlayerResponse.canPerform(_:)(v9);
  }

  else
  {
    v6 = 0;
  }

  sub_100010474(v9);
  return v6;
}

BOOL sub_1002A8AA8(void *a1, uint64_t a2)
{
  v6[3] = &type metadata for Player.ChangeCommand;
  v6[4] = &protocol witness table for Player.ChangeCommand;
  v6[0] = a1;
  sub_10000C8CC(v6, &type metadata for Player.ChangeCommand);
  swift_getDynamicType();
  swift_conformsToProtocol2();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1002AB210(a1);
  sub_10056E478();

  if (v5)
  {
    v3 = MPCPlayerResponse.canPerform(_:)(v6);
  }

  else
  {
    v3 = 0;
  }

  sub_100010474(v6);
  return v3;
}

BOOL sub_1002A8BC8(uint64_t a1, uint64_t a2)
{
  v5[3] = &type metadata for Player.VocalsCommand;
  v5[4] = &protocol witness table for Player.VocalsCommand;
  LODWORD(v5[0]) = a1;
  BYTE4(v5[0]) = BYTE4(a1);
  BYTE5(v5[0]) = BYTE5(a1) & 1;
  sub_10000C8CC(v5, &type metadata for Player.VocalsCommand);
  swift_getDynamicType();
  swift_conformsToProtocol2();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10056E478();

  if (v4)
  {
    v2 = MPCPlayerResponse.canPerform(_:)(v5);
  }

  else
  {
    v2 = 0;
  }

  sub_100010474(v5);
  return v2;
}

uint64_t sub_1002A8CEC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1002A8D4C(void *a1)
{
  v2 = v1;
  if (qword_1006E5070 != -1)
  {
    swift_once();
  }

  v4 = sub_10056DF88();
  sub_10000C49C(v4, static Logger.sharedListening);
  v5 = a1;
  v6 = sub_10056DF68();
  v7 = sub_100573448();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *&v27[0] = v9;
    *v8 = 136446210;
    v10 = v5;
    v11 = [v10 description];
    v12 = sub_1005728D8();
    v14 = v13;

    v15 = sub_1000C9784(v12, v14, v27);

    *(v8 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v6, v7, "Received MPCSharedListeningEvent=%{public}s", v8, 0xCu);
    sub_100010474(v9);
  }

  v16 = v5;
  sub_10032B290(v16, v25);
  if (v26 != 255)
  {
    v27[0] = v25[0];
    v27[1] = v25[1];
    v27[2] = v25[2];
    v28 = v26;
    v17 = (v2 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator);
    v18 = *(v2 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator + 24);
    v19 = v17[4];
    sub_10000C8CC(v17, v18);
    (*(v19 + 40))(v18, v19);
    v20 = [v16 participant];
    v21 = [v20 externalIdentifier];

    v22 = sub_1005728D8();
    v24 = v23;

    GroupActivitiesManager.postEvent(_:participantID:)(v27, v22, v24);

    sub_10001036C(v25, &unk_1006EB160, &unk_1005904B0);
  }
}

double sub_1002A8FD8(uint64_t a1)
{
  v2 = v1;
  sub_100009DCC(&qword_1006E6420, &qword_100586E50);
  __chkstk_darwin();
  v5 = &v21 - v4;
  if (qword_1006E5070 != -1)
  {
    swift_once();
  }

  v6 = sub_10056DF88();
  sub_10000C49C(v6, static Logger.sharedListening);
  swift_errorRetain();
  v7 = sub_10056DF68();
  v8 = sub_100573448();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v21 = a1;
    v22 = v10;
    *v9 = 136446210;
    swift_errorRetain();
    sub_100009DCC(&qword_1006EBF40, &qword_100590498);
    v11 = sub_100572978();
    v13 = sub_1000C9784(v11, v12, &v22);

    *(v9 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v7, v8, "Receiving didEndSharedListeningSessionWithError=%{public}s", v9, 0xCu);
    sub_100010474(v10);
  }

  v14 = sub_100572F48();
  (*(*(v14 - 8) + 56))(v5, 1, 1, v14);
  sub_100572F08();
  v15 = v2;
  v16 = sub_100572EF8();
  v17 = swift_allocObject();
  v17[2] = v16;
  v17[3] = &protocol witness table for MainActor;
  v17[4] = v15;
  sub_1001B3FAC(0, 0, v5, &unk_1005904A8, v17);

  if (a1)
  {
    sub_1000D3B98(0, &qword_1006E84A0, OS_dispatch_queue_ptr);
    v19 = swift_allocObject();
    *(v19 + 16) = v15;
    v20 = v15;
    static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_1002AAB00, v19);
  }

  return result;
}

void sub_1002A92BC(void *a1)
{
  v2 = v1;
  if (qword_1006E4F80 != -1)
  {
    swift_once();
  }

  v4 = sub_10056DF88();
  sub_10000C49C(v4, static Logger.playbackController);
  swift_errorRetain();
  v5 = sub_10056DF68();
  v6 = sub_100573428();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v34 = a1;
    v35[0] = v8;
    *v7 = 136446210;
    swift_errorRetain();
    sub_100009DCC(&qword_1006EBF40, &qword_100590498);
    v9 = sub_100572978();
    v11 = sub_1000C9784(v9, v10, v35);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v5, v6, "didPauseForLeaseEndWithError with error=%{public}s", v7, 0xCu);
    sub_100010474(v8);
  }

  if (a1)
  {
    v12 = sub_10056C718();
    v13 = [v12 userInfo];
    v14 = sub_1005726A8();

    v15 = sub_1005728D8();
    if (*(v14 + 16))
    {
      v17 = sub_1000EB89C(v15, v16);
      v19 = v18;

      if (v19)
      {
        sub_100081F38(*(v14 + 56) + 32 * v17, v35);

        sub_1000D3B98(0, &qword_1006EB148, ICMusicSubscriptionLeaseStatus_ptr);
        if (swift_dynamicCast())
        {
          v20 = [v34 stateReasonDialog];
          if (!v20)
          {

            return;
          }

          v21 = v20;
          v22 = [v12 userInfo];
          v23 = sub_1005726A8();

          v24 = sub_1005728D8();
          if (*(v23 + 16))
          {
            v26 = sub_1000EB89C(v24, v25);
            v28 = v27;

            if (v28)
            {
              sub_100081F38(*(v23 + 56) + 32 * v26, v35);

              sub_100009DCC(&unk_1006EB150, &unk_10058AF20);
              if (swift_dynamicCast())
              {
                if (!v34[2] || (v29 = sub_1000EB89C(0x736E6F6974706FLL, 0xE700000000000000), (v30 & 1) == 0))
                {

                  return;
                }

                sub_100081F38(v34[7] + 32 * v29, v35);
                sub_100009DCC(&unk_1006E84C0, &unk_1005854A0);
                if (swift_dynamicCast())
                {
                  sub_1000D3B98(0, &qword_1006E84A0, OS_dispatch_queue_ptr);
                  v31 = swift_allocObject();
                  v31[2] = v2;
                  v31[3] = v21;
                  v31[4] = v34;
                  v31[5] = v34;
                  v32 = v2;
                  v33 = v21;
                  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_1002AA974, v31);

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

uint64_t sub_1002A9778(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1002A979C(uint64_t a1, unsigned int a2)
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

uint64_t sub_1002A97D8(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1002A9828(uint64_t result, unsigned int a2)
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

uint64_t sub_1002A98BC(uint64_t a1, int a2)
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

uint64_t sub_1002A9904(uint64_t result, int a2, int a3)
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

uint64_t sub_1002A995C(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1002A9974(uint64_t *a1, unsigned int a2)
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

uint64_t sub_1002A99CC(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1002A9A2C(uint64_t a1)
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

uint64_t sub_1002A9A48(uint64_t a1, unsigned int a2)
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

uint64_t sub_1002A9A90(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1002A9AD4(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_1002A9B04()
{

  return swift_deallocObject();
}

uint64_t sub_1002A9B50(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1002A9B68()
{

  return swift_deallocObject();
}

uint64_t sub_1002A9C04()
{

  return swift_deallocObject();
}

uint64_t sub_1002A9C5C()
{

  return swift_deallocObject();
}

uint64_t sub_1002A9CA4()
{
  v1 = sub_100009DCC(&unk_1006EB070, &unk_100590390);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1002A9D38(uint64_t a1, uint64_t a2)
{
  sub_100009DCC(&unk_1006EB070, &unk_100590390);

  return sub_1002A6EF0(a1, a2);
}

uint64_t sub_1002A9DFC()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1002A9E34()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1002A9E88()
{

  return swift_deallocObject();
}

uint64_t sub_1002A9EC8(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1000116F0;

  return sub_1002A5A08(a1, a2, v6, v7, v8);
}

uint64_t sub_1002A9F88()
{

  return swift_deallocObject();
}

uint64_t sub_1002A9FC0(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1000116F0;

  return sub_1002A5CD0(a1, a2, v7, v6);
}

uint64_t sub_1002AA0A0()
{

  if (*(v0 + 56))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1002AA0F8(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 72);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1000116F0;

  return sub_1002A47B0(a1, a2, v2 + 16, v6);
}

uint64_t sub_1002AA1A8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1002AA228()
{
  if (*(v0 + 24))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1002AA270(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_1000116F0;

  return sub_1002A762C(a1, a2, v6, v7, v9, v8);
}

uint64_t sub_1002AA334()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1002AA384(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1000116F0;

  return sub_1002A7FDC(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1002AA44C()
{
  v1 = sub_10056C8A8();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1002AA510(uint64_t a1)
{
  v4 = *(sub_10056C8A8() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1000116F0;

  return sub_1002A7B20(a1, v6, v7, v1 + v5);
}

uint64_t sub_1002AA62C()
{

  return swift_deallocObject();
}

uint64_t sub_1002AA69C()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1002AA6E4(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1000116F0;

  return sub_1002A759C(a1, a2, v6, v7, v8);
}

uint64_t sub_1002AA7A4()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1002AA7F0()
{
  swift_unknownObjectRelease();

  if (*(v0 + 72))
  {
  }

  if (*(v0 + 144))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1002AA870(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000116F0;

  return sub_1002A4A18(a1, v4, v5, v1 + 32, v1 + 88);
}

uint64_t sub_1002AA924()
{

  return swift_deallocObject();
}

uint64_t sub_1002AA980()
{

  return swift_deallocObject();
}

uint64_t sub_1002AA9D4()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1002AAA14(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1000116F0;

  return sub_1002A1710(a1, v4, v5, v6);
}

uint64_t sub_1002AAAC8()
{

  return swift_deallocObject();
}

unint64_t sub_1002AAB10()
{
  result = qword_1006EB650;
  if (!qword_1006EB650)
  {
    sub_100010324(&unk_1006EDF80, &qword_10058FE60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006EB650);
  }

  return result;
}

uint64_t sub_1002AAB74()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1002AABBC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1000116F0;

  return sub_100290D64(a1, v4, v5, v7, v6);
}

unint64_t sub_1002AAC7C()
{
  result = qword_1006EB180;
  if (!qword_1006EB180)
  {
    sub_1000D3B98(255, &qword_1006EB178, UISceneSession_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006EB180);
  }

  return result;
}

uint64_t sub_1002AAD0C(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1000116F0;

  return sub_1002A131C(a1, a2, v6);
}

uint64_t sub_1002AADB8(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1000116F0;

  return sub_1002A1520(a1, a2, v6);
}

uint64_t sub_1002AAE64(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1000116F0;

  return sub_1002A1474(a1, a2, v6);
}

uint64_t sub_1002AAF10(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1000116F0;

  return sub_1002A13C8(a1, a2, v6);
}

uint64_t sub_1002AAFBC(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1000116F0;

  return sub_10029DF5C(a1, a2, v6);
}

uint64_t sub_1002AB068(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1000116F0;

  return sub_10029E004(a1, a2, v6);
}

uint64_t sub_1002AB114(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1000116F0;

  return sub_10029E0AC(a1, a2, v6);
}

uint64_t sub_1002AB1C0(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

id sub_1002AB210(id result)
{
  if (result >= 6)
  {
    return result;
  }

  return result;
}

uint64_t sub_1002AB228(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1000116F0;

  return sub_10029F4B0(a1, a2, v6);
}

uint64_t sub_1002AB2D4(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1000116F0;

  return sub_10029F410(a1, a2, v6);
}

uint64_t sub_1002AB380(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1000116F0;

  return sub_10029E8A0(a1, a2, v6);
}

uint64_t sub_1002AB42C(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10000CB98;

  return sub_10029E940(a1, a2, v6);
}

uint64_t sub_1002AB4D8(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1002AB5CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void MPCPlaybackIntent.playActivityInformation.setter(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  sub_1002ADDBC(a1, a2, a3, a4);

  sub_1000F6480(a1, a2, a3, a4);
}

uint64_t PlaybackIntentDescriptor.init(intentType:representedObject:intentOptions:replaceIntent:shuffleMode:repeatMode:sourceViewController:issuer:forceSharePlayPrompt:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, void *a10, uint64_t a11)
{
  v44 = a7;
  v49 = a4;
  v50 = a11;
  v43 = sub_10056DFD8();
  v48 = *(v43 - 8);
  __chkstk_darwin();
  v47 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  __chkstk_darwin();
  v46 = (&v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = type metadata accessor for PlaybackIntentDescriptor(0);
  v21 = a9 + v20[7];
  *(v21 + 32) = 0;
  *v21 = 0u;
  *(v21 + 16) = 0u;
  v22 = a9 + v20[8];
  *(v22 + 32) = 0;
  *v22 = 0u;
  *(v22 + 16) = 0u;
  *(a9 + v20[9]) = 0;
  *(a9 + v20[10]) = 0;
  *(a9 + v20[11]) = 0;
  v51 = a1;
  sub_1002AB5CC(a1, a9);
  if ((a6 & 1) == 0)
  {
    sub_1002AC4E0(a5, 0, &selRef_setShuffleMode_);
  }

  if ((a8 & 1) == 0)
  {
    sub_1002AC4E0(v44, 0, &selRef_setRepeatMode_);
  }

  v23 = a2;
  sub_100155C78(a2, v21);
  *(a9 + v20[5]) = a3;
  v24 = v50;
  *(a9 + v20[6]) = v49;
  sub_10000CC8C(v24, &v52, &qword_1006E6B78, &unk_100592430);
  if (v53)
  {
    sub_10002EA74(&v52, v54);
  }

  else
  {
    if (a10)
    {
      v54[0] = a10;
      v25 = a10;
    }

    else
    {
      v54[0] = 0;
      sub_100009DCC(&qword_1006E75B8, &unk_1005906D0);
    }

    v26 = sub_1005729A8();
    v54[3] = &type metadata for Player.CommandIssuerIdentity;
    v54[4] = &protocol witness table for Player.CommandIssuerIdentity;
    v54[0] = v26;
    v54[1] = v27;
    if (v53)
    {
      sub_10001036C(&v52, &qword_1006E6B78, &unk_100592430);
    }
  }

  sub_10008B71C(v54, v22, &qword_1006E6B78, &unk_100592430);
  if (!a10)
  {
    goto LABEL_22;
  }

  v28 = [a10 combinedPlayActivityFeatureName];
  sub_1005728D8();

  v29 = UIViewController.inheritedPlayActivityRecommendationData(shouldIncludeForwardedRecommendationData:)(1);
  v31 = v30;
  sub_1000A79FC(0, 0xF000000000000000);

  sub_1000F646C(v29, v31);

  sub_1000A79FC(v29, v31);
  v32 = a9;
  v33 = v46;
  sub_1002AB5CC(v32, v46);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v39 = *v33;

    v40 = sub_100572898();

    [v39 setPlayActivityFeatureName:v40];

    if (v31 >> 60 == 15)
    {
      isa = 0;
    }

    else
    {
      sub_1000F54C8(v29, v31);
      isa = sub_10056C908().super.isa;
      sub_1000A79FC(v29, v31);
    }

    [v39 setPlayActivityRecommendationData:{isa, v43}];

    sub_1000A79FC(v29, v31);
LABEL_22:
    sub_10001036C(v24, &qword_1006E6B78, &unk_100592430);
    sub_10001036C(v23, &qword_1006EB1C0, &qword_1005905D0);
    return sub_1000F6534(v51);
  }

  v34 = v33;
  v35 = v43;
  (*(v48 + 32))(v47, v34, v43);
  v36 = sub_10056DFA8();

  v37 = sub_100572898();

  [v36 setPlayActivityFeatureName:v37];

  if (v31 >> 60 == 15)
  {
    v38 = 0;
  }

  else
  {
    sub_1000F54C8(v29, v31);
    v38 = sub_10056C908().super.isa;
    sub_1000A79FC(v29, v31);
  }

  [v36 setPlayActivityRecommendationData:{v38, v43}];

  sub_1000A79FC(v29, v31);
  sub_10001036C(v24, &qword_1006E6B78, &unk_100592430);
  sub_10001036C(v23, &qword_1006EB1C0, &qword_1005905D0);
  sub_1000F6534(v51);
  return (*(v48 + 8))(v47, v35);
}

void PlaybackIntentDescriptor.playActivityInformation.setter(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  v10 = sub_10056DFD8();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  __chkstk_darwin();
  v15 = (&v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1002AB5CC(v5, v15);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v11 + 32))(v13, v15, v10);
    v16 = sub_10056DFA8();
    sub_1002ADDBC(a1, a2, a3, a4);
    sub_1000F6480(a1, a2, a3, a4);

    (*(v11 + 8))(v13, v10);
  }

  else
  {
    v17 = *v15;
    sub_1002ADDBC(a1, a2, a3, a4);
    sub_1000F6480(a1, a2, a3, a4);
  }
}

uint64_t _s9MusicCore24PlaybackIntentDescriptorV0D4TypeO010underlyingD0So011MPCPlaybackD0Cvg_0()
{
  v1 = v0;
  v2 = sub_10056DFD8();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  __chkstk_darwin();
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1002AB5CC(v1, v7);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return *v7;
  }

  (*(v3 + 32))(v5, v7, v2);
  v8 = sub_10056DFA8();
  (*(v3 + 8))(v5, v2);
  return v8;
}

uint64_t MPCPlaybackIntent.PlayActivityInformation.init(featureName:recommendationData:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  sub_1000A79FC(0, 0xF000000000000000);

  sub_1000F646C(a3, a4);

  sub_1000A79FC(a3, a4);
  return a1;
}

uint64_t PlaybackIntentDescriptor.IntentType.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  v6 = __chkstk_darwin();
  v8 = (&v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a1)
  {
    *v8 = a1;
    v12 = v5;
    swift_storeEnumTagMultiPayload();
    sub_1002ADED8(v8, a2);
    return (*(v12 + 56))(a2, 0, 1, v4);
  }

  else
  {
    v10 = *(v5 + 56);

    return v10(a2, 1, 1, v4, v6);
  }
}

{
  v4 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  v16 = *(v4 - 8);
  __chkstk_darwin();
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10056DFD8();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin();
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v8 + 48))(a1, 1, v7, v9) == 1)
  {
    sub_10001036C(a1, &qword_1006E75C8, &qword_100588600);
    v12 = *(v16 + 56);

    return v12(a2, 1, 1, v4);
  }

  else
  {
    v14 = *(v8 + 32);
    v14(v11, a1, v7);
    v14(v6, v11, v7);
    swift_storeEnumTagMultiPayload();
    sub_1002ADED8(v6, a2);
    return (*(v16 + 56))(a2, 0, 1, v4);
  }
}

id sub_1002AC33C(SEL *a1)
{
  v3 = v1;
  v4 = sub_10056DFD8();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  __chkstk_darwin();
  v9 = (&v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1002AB5CC(v3, v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v5 + 32))(v7, v9, v4);
    v10 = sub_10056DFA8();
    v11 = [v10 *a1];

    (*(v5 + 8))(v7, v4);
  }

  else
  {
    v12 = *v9;
    v11 = [*v9 *a1];
  }

  return v11;
}

void sub_1002AC4E0(uint64_t a1, char a2, SEL *a3)
{
  v5 = v3;
  v8 = sub_10056DFD8();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  __chkstk_darwin();
  v13 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v14 = (&v18 - v13);
  if (a2)
  {
    v15 = -1;
  }

  else
  {
    v15 = a1;
  }

  sub_1002AB5CC(v5, &v18 - v13);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v9 + 32))(v11, v14, v8);
    v16 = sub_10056DFA8();
    [v16 *a3];

    (*(v9 + 8))(v11, v8);
  }

  else
  {
    v17 = *v14;
    [*v14 *a3];
  }
}

uint64_t PlaybackIntentDescriptor.intentOptions.setter(uint64_t a1)
{
  result = type metadata accessor for PlaybackIntentDescriptor(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t PlaybackIntentDescriptor.replaceIntent.setter(uint64_t a1)
{
  result = type metadata accessor for PlaybackIntentDescriptor(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t PlaybackIntentDescriptor.autoSing.setter(char a1)
{
  result = type metadata accessor for PlaybackIntentDescriptor(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t PlaybackIntentDescriptor.isSiriIntent.setter(char a1)
{
  result = type metadata accessor for PlaybackIntentDescriptor(0);
  *(v1 + *(result + 40)) = a1;
  return result;
}

uint64_t PlaybackIntentDescriptor.playActivityInformation.getter()
{
  v1 = v0;
  v2 = sub_10056DFD8();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  __chkstk_darwin();
  v7 = (&v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1002AB5CC(v1, v7);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v3 + 32))(v5, v7, v2);
    v8 = sub_10056DFA8();
    v9 = MPCPlaybackIntent.playActivityInformation.getter();

    (*(v3 + 8))(v5, v2);
  }

  else
  {
    v10 = *v7;
    v9 = MPCPlaybackIntent.playActivityInformation.getter();
  }

  return v9;
}

uint64_t MPCPlaybackIntent.playActivityInformation.getter()
{
  v1 = [v0 playActivityFeatureName];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1005728D8();

  v4 = [v0 playActivityRecommendationData];
  if (v4)
  {
    v5 = v4;
    v6 = sub_10056C918();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0xF000000000000000;
  }

  sub_1000A79FC(0, 0xF000000000000000);

  sub_1000F646C(v6, v8);

  sub_1000A79FC(v6, v8);
  return v3;
}

void (*PlaybackIntentDescriptor.playActivityInformation.modify(uint64_t **a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  v3[4] = v1;
  v5 = sub_10056DFD8();
  v4[5] = v5;
  v6 = *(v5 - 8);
  v7 = v6;
  v4[6] = v6;
  if (&_swift_coroFrameAlloc)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(v6 + 64));
  }

  v9 = v8;
  v4[7] = v8;
  v10 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  v4[8] = v10;
  v11 = *(*(v10 - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[9] = swift_coroFrameAlloc();
    v4[10] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v4[9] = malloc(v11);
    v4[10] = malloc(v11);
    v12 = malloc(v11);
  }

  v13 = v12;
  v4[11] = v12;
  sub_1002AB5CC(v1, v12);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v7 + 32))(v9, v13, v5);
    v14 = sub_10056DFA8();
    v15 = MPCPlaybackIntent.playActivityInformation.getter();
    v17 = v16;
    v19 = v18;
    v21 = v20;

    (*(v7 + 8))(v9, v5);
  }

  else
  {
    v22 = *v13;
    v15 = MPCPlaybackIntent.playActivityInformation.getter();
    v17 = v23;
    v19 = v24;
    v21 = v25;
  }

  *v4 = v15;
  v4[1] = v17;
  v4[2] = v19;
  v4[3] = v21;
  return sub_1002ACF78;
}

void sub_1002ACF78(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v6 = (*a1)[2];
  v5 = (*a1)[3];
  v7 = (*a1)[4];
  if (a2)
  {
    sub_1002AB5CC(v7, v2[9]);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v9 = v2[9];
    if (EnumCaseMultiPayload == 1)
    {
      v11 = v2[6];
      v10 = v2[7];
      v12 = v2[5];
      (*(v11 + 32))(v10, v9, v12);
      sub_1000F6420(v4, v3, v6, v5);
      v13 = sub_10056DFA8();
      sub_1002ADDBC(v4, v3, v6, v5);
      sub_1000F6480(v4, v3, v6, v5);

      (*(v11 + 8))(v10, v12);
    }

    else
    {
      v20 = *v9;
      sub_1000F6420(v4, v3, v6, v5);
      sub_1002ADDBC(v4, v3, v6, v5);
      sub_1000F6480(v4, v3, v6, v5);
    }

    v22 = v2[10];
    v21 = v2[11];
    v23 = v2[9];
    v24 = v2[7];
    sub_1000F6480(*v2, v2[1], v2[2], v2[3]);
  }

  else
  {
    sub_1002AB5CC(v7, v2[10]);
    v14 = swift_getEnumCaseMultiPayload();
    v15 = v2[10];
    if (v14 == 1)
    {
      v17 = v2[6];
      v16 = v2[7];
      v18 = v2[5];
      (*(v17 + 32))(v16, v15, v18);
      v19 = sub_10056DFA8();
      sub_1002ADDBC(v4, v3, v6, v5);
      sub_1000F6480(v4, v3, v6, v5);

      (*(v17 + 8))(v16, v18);
    }

    else
    {
      v25 = *v15;
      sub_1002ADDBC(v4, v3, v6, v5);
      sub_1000F6480(v4, v3, v6, v5);
    }

    v22 = v2[10];
    v21 = v2[11];
    v23 = v2[9];
    v24 = v2[7];
  }

  free(v21);
  free(v22);
  free(v23);
  free(v24);

  free(v2);
}

uint64_t PlaybackIntentDescriptor.forceSharePlayPrompt.setter(char a1)
{
  result = type metadata accessor for PlaybackIntentDescriptor(0);
  *(v1 + *(result + 44)) = a1;
  return result;
}

uint64_t MPCPlaybackIntent.PlayActivityInformation.recommendationData.setter(uint64_t a1, uint64_t a2)
{
  result = sub_1000A79FC(*(v2 + 16), *(v2 + 24));
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

void (*MPCPlaybackIntent.playActivityInformation.modify(void *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  v3[4] = v1;
  *v3 = MPCPlaybackIntent.playActivityInformation.getter();
  v4[1] = v5;
  v4[2] = v6;
  v4[3] = v7;
  return sub_1002AD370;
}

void sub_1002AD370(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  v4 = (*a1)[1];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  if (a2)
  {
    sub_1000F6420(v3, v4, v5, v6);
    sub_1002ADDBC(v3, v4, v5, v6);
    sub_1000F6480(v3, v4, v5, v6);
    v7 = *v2;
    v8 = v2[1];
    v9 = v2[2];
    v10 = v2[3];
  }

  else
  {
    sub_1002ADDBC(v3, v4, v5, v6);
    v7 = v3;
    v8 = v4;
    v9 = v5;
    v10 = v6;
  }

  sub_1000F6480(v7, v8, v9, v10);

  free(v2);
}

unint64_t PlaybackIntentDescriptor.debugDescription.getter()
{
  v1 = v0;
  v2 = sub_10056DFD8();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  __chkstk_darwin();
  v7 = (&v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = 0xD000000000000019;
  v25 = 0x80000001005B3E20;
  strcpy(&v21, "intent=");
  v21._object = 0xE700000000000000;
  sub_1002AB5CC(v1, v7);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v3 + 32))(v5, v7, v2);
    v8 = sub_10056DFA8();
    (*(v3 + 8))(v5, v2);
  }

  else
  {
    v8 = *v7;
  }

  v9 = [v8 description];
  v10 = sub_1005728D8();
  v12 = v11;

  v26._countAndFlagsBits = v10;
  v26._object = v12;
  sub_100572A98(v26);

  v27._countAndFlagsBits = 8236;
  v27._object = 0xE200000000000000;
  sub_100572A98(v27);
  sub_100572A98(v21);

  v21._countAndFlagsBits = 0;
  v21._object = 0xE000000000000000;
  sub_100573ED8(16);

  strcpy(&v21, "shuffleMode=");
  BYTE5(v21._object) = 0;
  HIWORD(v21._object) = -5120;
  v19._countAndFlagsBits = sub_1002AC33C(&selRef_shuffleMode);
  LOBYTE(v19._object) = 0;
  sub_100009DCC(&qword_1006EB230, &qword_1005906E0);
  v28._countAndFlagsBits = sub_100572978();
  sub_100572A98(v28);

  v29._countAndFlagsBits = 8236;
  v29._object = 0xE200000000000000;
  sub_100572A98(v29);
  sub_100572A98(v21);

  strcpy(&v21, "repeatMode=");
  HIDWORD(v21._object) = -352321536;
  v19._countAndFlagsBits = sub_1002AC33C(&selRef_repeatMode);
  LOBYTE(v19._object) = 0;
  sub_100009DCC(&qword_1006EB238, &unk_1005906E8);
  v30._countAndFlagsBits = sub_100572978();
  sub_100572A98(v30);

  v31._countAndFlagsBits = 8236;
  v31._object = 0xE200000000000000;
  sub_100572A98(v31);
  sub_100572A98(v21);

  strcpy(&v21, "options=");
  BYTE1(v21._object) = 0;
  WORD1(v21._object) = 0;
  HIDWORD(v21._object) = -402653184;
  v13 = type metadata accessor for PlaybackIntentDescriptor(0);
  v19._countAndFlagsBits = *(v1 + v13[5]);
  type metadata accessor for MPCPlaybackIntentOptions(0);
  v32._countAndFlagsBits = sub_100572978();
  sub_100572A98(v32);

  v33._countAndFlagsBits = 8236;
  v33._object = 0xE200000000000000;
  sub_100572A98(v33);
  sub_100572A98(v21);

  v21._countAndFlagsBits = 0;
  v21._object = 0xE000000000000000;
  sub_100573ED8(19);

  v21._countAndFlagsBits = 0x206563616C706572;
  v21._object = 0xEF3D746E65746E69;
  v19._countAndFlagsBits = *(v1 + v13[6]);
  type metadata accessor for MPCPlayerTracklistReplaceIntent(0);
  v34._countAndFlagsBits = sub_100572978();
  sub_100572A98(v34);

  v35._countAndFlagsBits = 8236;
  v35._object = 0xE200000000000000;
  sub_100572A98(v35);
  sub_100572A98(v21);

  v36._object = 0x80000001005B3E40;
  v36._countAndFlagsBits = 0xD000000000000012;
  sub_100572A98(v36);
  sub_10000CC8C(v1 + v13[7], &v19, &qword_1006EB1C0, &qword_1005905D0);
  if (v20)
  {
    sub_10002EA74(&v19._countAndFlagsBits, &v21);
    sub_10002EA8C(&v21, &v19);
    sub_100009DCC(&qword_1006EB1C8, &qword_1005905E0);
    v19._countAndFlagsBits = sub_100572978();
    v19._object = v14;
    v37._countAndFlagsBits = 8236;
    v37._object = 0xE200000000000000;
    sub_100572A98(v37);
    sub_100572A98(v19);

    sub_100010474(&v21);
  }

  else
  {
    sub_10001036C(&v19, &qword_1006EB1C0, &qword_1005905D0);
    v38._countAndFlagsBits = 0x202C656E6F6ELL;
    v38._object = 0xE600000000000000;
    sub_100572A98(v38);
  }

  v39._countAndFlagsBits = 0x3D726575737369;
  v39._object = 0xE700000000000000;
  sub_100572A98(v39);
  sub_10000CC8C(v1 + v13[8], &v19, &qword_1006E6B78, &unk_100592430);
  if (v20)
  {
    sub_10002EA74(&v19._countAndFlagsBits, &v21);
    v15 = v22;
    v16 = v23;
    sub_10000C8CC(&v21, v22);
    v19._countAndFlagsBits = (*(v16 + 8))(v15, v16);
    v19._object = v17;
    v40._countAndFlagsBits = 8236;
    v40._object = 0xE200000000000000;
    sub_100572A98(v40);
    sub_100572A98(v19);

    sub_100010474(&v21);
  }

  else
  {
    sub_10001036C(&v19, &qword_1006E6B78, &unk_100592430);
    v41._countAndFlagsBits = 0x6669636570736E75;
    v41._object = 0xEC0000003D646569;
    sub_100572A98(v41);
  }

  v42._countAndFlagsBits = 41;
  v42._object = 0xE100000000000000;
  sub_100572A98(v42);
  return v24;
}

uint64_t _s9MusicCore24PlaybackIntentDescriptorV0D4TypeO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10056DFD8();
  v27 = *(v4 - 8);
  __chkstk_darwin();
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = &v26 - v7;
  type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  __chkstk_darwin();
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v12 = (&v26 - v11);
  sub_100009DCC(&qword_1006EB398, &qword_100590868);
  __chkstk_darwin();
  v14 = &v26 - v13;
  v16 = *(v15 + 56);
  sub_1002AB5CC(a1, &v26 - v13);
  sub_1002AB5CC(a2, &v14[v16]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1002AB5CC(v14, v10);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v17 = v27;
      v18 = *(v27 + 32);
      v18(v8, v10, v4);
      v18(v6, &v14[v16], v4);
      sub_1000D3B98(0, &qword_1006E93C0, NSObject_ptr);
      v19 = sub_10056DFA8();
      v20 = sub_10056DFA8();
      v21 = sub_100573A58();

      v22 = *(v17 + 8);
      v22(v6, v4);
      v22(v8, v4);
LABEL_9:
      sub_1000F6534(v14);
      return v21 & 1;
    }

    (*(v27 + 8))(v10, v4);
  }

  else
  {
    sub_1002AB5CC(v14, v12);
    v23 = *v12;
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v24 = *&v14[v16];
      sub_1000D3B98(0, &qword_1006E93C0, NSObject_ptr);
      v21 = sub_100573A58();

      goto LABEL_9;
    }
  }

  sub_10001036C(v14, &qword_1006EB398, &qword_100590868);
  v21 = 0;
  return v21 & 1;
}

void sub_1002ADDBC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2)
  {

    v7 = sub_100572898();

    [v4 setPlayActivityFeatureName:v7];

    if (a4 >> 60 != 15)
    {
      sub_1000F54C8(a3, a4);
      isa = sub_10056C908().super.isa;
      sub_1000A79FC(a3, a4);
      v8 = isa;
      goto LABEL_6;
    }
  }

  else
  {
    [v4 setPlayActivityFeatureName:{0, a4}];
  }

  v8 = 0;
LABEL_6:
  v10 = v8;
  [v4 setPlayActivityRecommendationData:?];
}

uint64_t sub_1002ADED8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002ADF50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_1002AE030(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28) + 24) = a2;
  }

  return result;
}

void sub_1002AE0EC(uint64_t a1)
{
  type metadata accessor for PlaybackIntentDescriptor.IntentType(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for MPCPlaybackIntentOptions(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for MPCPlayerTracklistReplaceIntent(319);
      if (v3 <= 0x3F)
      {
        sub_1000E0F60(319, &unk_1006EB2A8, &qword_1006EB1C8, &qword_1005905E0);
        if (v4 <= 0x3F)
        {
          sub_1000E0F60(319, &qword_1006E6CD0, &unk_1006E6CD8, &qword_100590780);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_1002AE1F4(uint64_t a1)
{
  result = sub_1000D3B98(319, &qword_1006EADF8, MPCPlaybackIntent_ptr);
  if (v2 <= 0x3F)
  {
    result = sub_10056DFD8();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1002AE278(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1002AE294(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

uint64_t PlaybackTimeObserver.__allocating_init(name:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  PlaybackTimeObserver.init(name:)(a1, a2);
  return v4;
}

uint64_t PlaybackTimeObserver.init(name:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  *(v3 + 32) = 1;
  *(v3 + 40) = 0;
  *(v3 + 48) = 1;
  *(v3 + 56) = 0u;
  *(v3 + 72) = 0u;
  *(v3 + 88) = 0u;
  *(v3 + 104) = xmmword_100582440;
  *(v3 + 120) = 0;
  *(v3 + 128) = 0u;
  *(v3 + 144) = 0u;
  _s9MusicCore18EnvironmentMonitorC22__observationRegistrar33_6CC8A35C601F3763940B11776112173411Observation0lF0Vvpfi_0();
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  sub_1000D3B98(0, &qword_1006EB3A8, CADisplayLink_ptr);
  swift_unownedRetainStrong();
  swift_unownedRetain();
  swift_unownedRetain();

  v6 = swift_allocObject();
  *(v6 + 16) = v3;
  v7 = CADisplayLink.init(handler:)(sub_1002AE4C0, v6);
  swift_unownedRelease();
  v8 = [objc_opt_self() mainRunLoop];
  [v7 addToRunLoop:v8 forMode:NSRunLoopCommonModes];

  [v7 setPaused:1];
  [v7 setPreferredFramesPerSecond:30];
  v9 = *(v3 + 128);
  *(v3 + 128) = v7;

  return v3;
}

uint64_t sub_1002AE488()
{
  swift_unownedRelease();

  return swift_deallocObject();
}

double sub_1002AE4C0()
{
  swift_unownedRetainStrong();
  sub_1002AE500();

  return result;
}

void sub_1002AE500()
{
  v1 = v0;
  swift_beginAccess();
  v2 = *(v0 + 104);
  if (v2 == 2)
  {
    if (qword_1006E4F98 != -1)
    {
      swift_once();
    }

    v3 = sub_10056DF88();
    sub_10000C49C(v3, qword_1006FC8D0);

    v4 = sub_10056DF68();
    v5 = sub_100573448();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v25[0] = v7;
      *v6 = 136446210;
      *(v6 + 4) = sub_1000C9784(*(v1 + 16), *(v1 + 24), v25);
      sub_100010474(v7);
    }

    v8 = *(v1 + 48);
    if (v8 != 1)
    {
LABEL_19:
      swift_getKeyPath();
      __chkstk_darwin();
      v25[0] = v1;
      sub_1002AF428();
      sub_10056CEE8();

      return;
    }

LABEL_14:
    *(v1 + 40) = 0;
    *(v1 + 48) = v8;
    return;
  }

  if (v2)
  {
    if (qword_1006E4F98 != -1)
    {
      swift_once();
    }

    v9 = sub_10056DF88();
    sub_10000C49C(v9, qword_1006FC8D0);

    v10 = sub_10056DF68();
    v11 = sub_100573448();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v25[0] = v13;
      *v12 = 136446210;
      *(v12 + 4) = sub_1000C9784(*(v1 + 16), *(v1 + 24), v25);
      sub_100010474(v13);
    }

    v8 = *(v1 + 48);
    if (v8 != 1)
    {
      goto LABEL_19;
    }

    goto LABEL_14;
  }

  v14 = *(v0 + 80);
  v15 = *(v0 + 96);
  if (v14 <= 0.0)
  {
    v20 = 0.0;
  }

  else
  {
    v16 = *(v0 + 88);
    v17 = *(v0 + 56);
    sub_10056C938();
    v19 = v16 + (v18 - v17) * v15;
    if (v19 >= v14)
    {
      v19 = v14;
    }

    v20 = fmax(v19, 0.0) / v14;
  }

  sub_1002AF4CC(*&v20, 0);
  sub_10056C938();
  v22 = v21;
  swift_beginAccess();
  v23 = vabdd_f64(v22, *(v0 + 152));
  v24 = fabsf(v15);
  if (v24 <= 1.0)
  {
    v24 = 1.0;
  }

  if (v23 >= (1.0 / v24))
  {
    *(v0 + 152) = v22;
  }
}

uint64_t PlaybackTimeObserver.deinit()
{
  v1 = *(v0 + 128);
  if (v1)
  {
    [v1 invalidate];
  }

  v2 = OBJC_IVAR____TtC9MusicCore20PlaybackTimeObserver___observationRegistrar;
  v3 = sub_10056CF38();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  return v0;
}

uint64_t PlaybackTimeObserver.__deallocating_deinit()
{
  v1 = *(v0 + 128);
  if (v1)
  {
    [v1 invalidate];
  }

  v2 = OBJC_IVAR____TtC9MusicCore20PlaybackTimeObserver___observationRegistrar;
  v3 = sub_10056CF38();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  return swift_deallocClassInstance();
}

void sub_1002AEABC()
{
  if (qword_1006E4F98 != -1)
  {
    swift_once();
  }

  v1 = sub_10056DF88();
  sub_10000C49C(v1, qword_1006FC8D0);

  v2 = sub_10056DF68();
  v3 = sub_100573448();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *&v42[0] = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_1000C9784(*(v0 + 16), *(v0 + 24), v42);
    _os_log_impl(&_mh_execute_header, v2, v3, "📺 %{public}s: Updating DisplayLink…", v4, 0xCu);
    sub_100010474(v5);
  }

  v6 = sub_10056DF68();
  v7 = sub_100573448();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 67240192;
    *(v8 + 4) = *(v0 + 120);

    _os_log_impl(&_mh_execute_header, v6, v7, "   — isBackgrounded: %{BOOL,public}d", v8, 8u);
  }

  else
  {
  }

  v9 = sub_10056DF68();
  v10 = sub_100573448();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 67240192;
    swift_beginAccess();
    *(v11 + 4) = *(v0 + 32);

    _os_log_impl(&_mh_execute_header, v9, v10, "   — automaticallyUpdates: %{BOOL,public}d", v11, 8u);
  }

  else
  {
  }

  swift_beginAccess();
  if (*(v0 + 32) != 1 || (*(v0 + 120) & 1) != 0 || (swift_beginAccess(), v12 = *(v0 + 104), v12 == 2))
  {
    v13 = sub_10056DF68();
    v14 = sub_100573448();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "   — Null Snapshot", v15, 2u);
    }

    v16 = 1;
  }

  else
  {
    v24 = *(v0 + 96);
    v25 = *(v0 + 88);
    v40 = *(v0 + 72);
    v41 = *(v0 + 56);
    v26 = sub_10056DF68();
    v27 = sub_100573448();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v47 = v29;
      *v28 = 136446210;
      v42[1] = v40;
      v42[0] = v41;
      v43 = v25;
      v44 = v24;
      v45 = v12 & 0x101;
      v46 = BYTE2(v12) & 1;
      type metadata accessor for MPCPlayerItemDurationSnapshot(0);
      v30 = sub_100572978();
      v32 = sub_1000C9784(v30, v31, &v47);

      *(v28 + 4) = v32;
      _os_log_impl(&_mh_execute_header, v26, v27, "   — Snapshot: %{public}s", v28, 0xCu);
      sub_100010474(v29);
    }

    v33 = v24 & 0x7FFFFFFF;
    v34 = sub_10056DF68();
    v35 = sub_100573448();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 67240192;
      *(v36 + 4) = v12 & 1;
      _os_log_impl(&_mh_execute_header, v34, v35, "   — isLiveContent: %{BOOL,public}d", v36, 8u);
    }

    v37 = sub_10056DF68();
    v38 = sub_100573448();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 67240192;
      *(v39 + 4) = v33 == 0;
      _os_log_impl(&_mh_execute_header, v37, v38, "   — isRateNull: %{BOOL,public}d", v39, 8u);
    }

    v16 = v12 | (v33 == 0);
  }

  v17 = sub_10056DF68();
  v18 = sub_100573448();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 67240192;
    *(v19 + 4) = v16 & 1;
    _os_log_impl(&_mh_execute_header, v17, v18, " -> should pause: %{BOOL,public}d", v19, 8u);
  }

  v20 = *(v0 + 128);
  if (v20)
  {
    [v20 setPaused:v16 & 1];
  }

  swift_beginAccess();
  if (!*(v0 + 112))
  {
    v21 = sub_10056DF68();
    v22 = sub_100573428();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "No window scene associated! This could lead to a major power regression when the app is backgrounded!", v23, 2u);
    }
  }
}

void PlaybackTimeObserver.automaticallyUpdates.setter(char a1)
{
  v3 = a1 & 1;
  swift_beginAccess();
  v4 = *(v1 + 32);
  *(v1 + 32) = a1;
  if (v4 != v3)
  {
    sub_1002AEABC();
  }
}

void (*PlaybackTimeObserver.automaticallyUpdates.modify(uint64_t *a1))(uint64_t a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_beginAccess();
  *(v4 + 32) = *(v1 + 32);
  return sub_1002AF274;
}

void sub_1002AF274(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 24);
  v3 = *(*a1 + 32);
  v4 = *(v2 + 32);
  *(v2 + 32) = v3;
  if (v3 != v4)
  {
    sub_1002AEABC();
  }

  free(v1);
}

uint64_t PlaybackTimeObserver.effectiveElapsedTime.getter()
{
  swift_getKeyPath();
  sub_1002AF428();
  sub_10056CEF8();

  return *(v0 + 40);
}

void sub_1002AF33C(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1002AF428();
  sub_10056CEF8();

  v4 = *(v3 + 48);
  *a2 = *(v3 + 40);
  *(a2 + 8) = v4;
}

unint64_t sub_1002AF428()
{
  result = qword_1006EB3B0;
  if (!qword_1006EB3B0)
  {
    type metadata accessor for PlaybackTimeObserver(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006EB3B0);
  }

  return result;
}

uint64_t type metadata accessor for PlaybackTimeObserver(uint64_t a1)
{
  result = qword_1006EB3E0;
  if (!qword_1006EB3E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_1002AF4CC(uint64_t a1, char a2)
{
  if ((*(v2 + 48) & 1) == 0)
  {
    if (a2)
    {
      goto LABEL_7;
    }

    result = *(v2 + 40);
    if (result != *&a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    *(v2 + 40) = *&a1;
    *(v2 + 48) = a2 & 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_6;
  }

LABEL_7:
  swift_getKeyPath();
  __chkstk_darwin();
  sub_1002AF428();
  sub_10056CEE8();

  return result;
}

void sub_1002AF5D4()
{
  v1 = v0;
  if (qword_1006E4F98 != -1)
  {
    swift_once();
  }

  v2 = sub_10056DF88();
  sub_10000C49C(v2, qword_1006FC8D0);

  v3 = sub_10056DF68();
  v4 = sub_100573448();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136446210;
    swift_beginAccess();
    sub_100009DCC(&qword_1006EB4C0, &qword_1005909B0);
    v7 = sub_100572978();
    v9 = sub_1000C9784(v7, v8, &v12);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "Received new snapshot=%{public}s", v5, 0xCu);
    sub_100010474(v6);
  }

  sub_10056C938();
  v11 = v10;
  swift_beginAccess();
  *(v1 + 152) = v11;
  sub_1002AE500();
  sub_1002AEABC();
}

__n128 PlaybackTimeObserver.durationSnapshot.getter@<Q0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 104);
  v4 = *(v1 + 72);
  *a1 = *(v1 + 56);
  *(a1 + 16) = v4;
  result = *(v1 + 88);
  *(a1 + 32) = result;
  *(a1 + 48) = v3;
  return result;
}

void PlaybackTimeObserver.durationSnapshot.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(a1 + 16);
  *(v1 + 56) = *a1;
  *(v1 + 72) = v3;
  *(v1 + 88) = *(a1 + 32);
  *(v1 + 104) = *(a1 + 48);
  sub_1002AF5D4();
}

void (*PlaybackTimeObserver.durationSnapshot.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1002AF8B4;
}

void sub_1002AF8B4(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_1002AF5D4();
  }
}

double sub_1002AF8E8(id a1)
{
  v2 = v1;
  swift_beginAccess();
  v5 = *(v1 + 112);
  if (!v5)
  {
    if (!a1)
    {
      return result;
    }

    goto LABEL_13;
  }

  if (a1)
  {
    sub_1000D3B98(0, &qword_1006EB4B8, UIWindowScene_ptr);
    v6 = v5;
    a1 = a1;
    v7 = sub_100573A58();

    if (v7)
    {
      return result;
    }

    v5 = *(v2 + 112);
    if (!v5)
    {
LABEL_13:
      v27 = qword_1006E4F98;
      v28 = a1;
      if (v27 != -1)
      {
        swift_once();
      }

      v29 = sub_10056DF88();
      sub_10000C49C(v29, qword_1006FC8D0);
      v30 = v28;

      v31 = sub_10056DF68();
      v32 = sub_100573448();

      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        *v33 = 136446466;
        *(v33 + 4) = sub_1000C9784(*(v2 + 16), *(v2 + 24), &v41);
        *(v33 + 12) = 2082;
        v34 = v30;
        v35 = [v34 description];
        v36 = sub_1005728D8();
        v38 = v37;

        v39 = sub_1000C9784(v36, v38, &v41);

        *(v33 + 14) = v39;
        _os_log_impl(&_mh_execute_header, v31, v32, "%{public}s: Removed windowScene=%{public}s", v33, 0x16u);
        swift_arrayDestroy();
      }

      else
      {
      }

      v40 = *(v2 + 120);
      *(v2 + 120) = 0;
      if (v40 == 1)
      {
        sub_1002AEABC();
      }

      *(v2 + 136) = 0;

      v26 = 0;
      goto LABEL_21;
    }
  }

  v8 = qword_1006E4F98;
  v9 = v5;
  if (v8 != -1)
  {
    swift_once();
  }

  v10 = sub_10056DF88();
  sub_10000C49C(v10, qword_1006FC8D0);
  v11 = v9;

  v12 = sub_10056DF68();
  v13 = sub_100573448();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    *v14 = 136446466;
    *(v14 + 4) = sub_1000C9784(*(v2 + 16), *(v2 + 24), &v41);
    *(v14 + 12) = 2082;
    v15 = v11;
    v16 = [v15 description];
    v17 = sub_1005728D8();
    v19 = v18;

    v20 = sub_1000C9784(v17, v19, &v41);

    *(v14 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v12, v13, "%{public}s: Received windowScene=%{public}s", v14, 0x16u);
    swift_arrayDestroy();
  }

  v21 = [v11 activationState] == 2;
  v22 = *(v2 + 120);
  *(v2 + 120) = v21;
  if (v21 != v22)
  {
    sub_1002AEABC();
  }

  v23 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for NotificationObserver();
  swift_allocObject();
  v24 = v11;
  *(v2 + 136) = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(UISceneDidEnterBackgroundNotification, v5, 1, 1, sub_1002B02B0, v23);

  v25 = swift_allocObject();
  swift_weakInit();
  swift_allocObject();
  v26 = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(UISceneWillEnterForegroundNotification, v5, 1, 1, sub_1002B02B8, v25);
LABEL_21:
  *(v2 + 144) = v26;

  return result;
}

double sub_1002AFE40(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = *(Strong + 120);
    *(Strong + 120) = 1;
    if ((v4 & 1) == 0)
    {
      sub_1002AEABC();
    }
  }

  return result;
}

double sub_1002AFEA8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = *(Strong + 120);
    *(Strong + 120) = 0;
    if (v4 == 1)
    {
      sub_1002AEABC();
    }
  }

  return result;
}

void *PlaybackTimeObserver.windowScene.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 112);
  v2 = v1;
  return v1;
}

void PlaybackTimeObserver.windowScene.setter(void *a1)
{
  swift_beginAccess();
  v3 = *(v1 + 112);
  *(v1 + 112) = a1;
  v4 = a1;
  sub_1002AF8E8(v3);
}

void (*PlaybackTimeObserver.windowScene.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_beginAccess();
  v5 = *(v1 + 112);
  *(v4 + 24) = v5;
  v6 = v5;
  return sub_1002B004C;
}

void sub_1002B004C(uint64_t a1, char a2)
{
  v3 = *a1;
  v5 = (*a1 + 24);
  v4 = *v5;
  v6 = *(*a1 + 32);
  v7 = *(v6 + 112);
  *(v6 + 112) = *v5;
  v8 = v4;
  v9 = v8;
  if (a2)
  {
    v10 = v8;
    sub_1002AF8E8(v7);

    v7 = *v5;
  }

  else
  {
    sub_1002AF8E8(v7);
  }

  free(v3);
}

uint64_t sub_1002B0124(uint64_t a1, __n128 a2)
{
  result = sub_10056CF38();
  if (v3 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1002B01FC()
{
  v0 = sub_10056DF88();
  sub_10000C910(v0, qword_1006FC8D0);
  sub_10000C49C(v0, qword_1006FC8D0);
  return sub_10056DF78();
}

uint64_t sub_1002B0278()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

void sub_1002B02C0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  *(v1 + 40) = *(v0 + 24);
  *(v1 + 48) = v2;
}

uint64_t static Player.CommandIssuer<>.reflection(of:)(uint64_t a1)
{
  if (a1)
  {
    swift_unknownObjectRetain();
  }

  else
  {
    sub_100009DCC(&qword_1006E75B8, &unk_1005906D0);
  }

  return sub_1005729A8();
}

uint64_t Player.CommandIssuerIdentity.init(_:)(uint64_t a1)
{
  v2 = sub_10056C7A8();
  v3 = sub_10056C8A8();
  (*(*(v3 - 8) + 8))(a1, v3);
  return v2;
}

{
  if (!a1)
  {
    sub_100009DCC(&qword_1006E75B8, &unk_1005906D0);
  }

  return sub_1005729A8();
}

{
  sub_100009DCC(&qword_1006EB4C8, &qword_1005909B8);
  sub_1002B0508();
  v1 = sub_100572798();

  return v1;
}

uint64_t sub_1002B04B0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_10000C8CC(a1, v3);
  result = (*(v4 + 8))(v3, v4);
  *a2 = result;
  a2[1] = v6;
  return result;
}

unint64_t sub_1002B0508()
{
  result = qword_1006EB4D0;
  if (!qword_1006EB4D0)
  {
    sub_100010324(&qword_1006EB4C8, &qword_1005909B8);
    sub_1002B058C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006EB4D0);
  }

  return result;
}

unint64_t sub_1002B058C()
{
  result = qword_1006EB4D8;
  if (!qword_1006EB4D8)
  {
    sub_100010324(&qword_1006EB4E0, &qword_1005909C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006EB4D8);
  }

  return result;
}

uint64_t Player.CommandIssuerIdentity.appending(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100009DCC(&qword_1006EB4E8, &qword_1005909C8);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_10057B500;
  *(v6 + 56) = &type metadata for Player.CommandIssuerIdentity;
  *(v6 + 64) = &protocol witness table for Player.CommandIssuerIdentity;
  *(v6 + 32) = a2;
  *(v6 + 40) = a3;
  sub_10002EA8C(a1, v6 + 72);

  sub_100009DCC(&qword_1006EB4C8, &qword_1005909B8);
  sub_1002B0508();
  v7 = sub_100572798();

  return v7;
}

uint64_t Player.CommandIssuer.appending(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100009DCC(&qword_1006EB4E8, &qword_1005909C8);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_10057B500;
  *(v7 + 56) = a2;
  *(v7 + 64) = a3;
  v8 = sub_10002AB7C((v7 + 32));
  (*(*(a2 - 8) + 16))(v8, v3, a2);
  sub_10002EA8C(a1, v7 + 72);
  sub_100009DCC(&qword_1006EB4C8, &qword_1005909B8);
  sub_1002B0508();
  v9 = sub_100572798();

  return v9;
}

uint64_t static Player.CommandIssuer<>.url(_:)(uint64_t a1)
{
  v2 = sub_10056C8A8();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin();
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2, v4);
  v7 = sub_10056C7A8();
  (*(v3 + 8))(v6, v2);
  return v7;
}

uint64_t static Player.CommandIssuer<>.combining(_:)(uint64_t a1)
{

  sub_100009DCC(&qword_1006EB4C8, &qword_1005909B8);
  sub_1002B0508();
  v1 = sub_100572798();

  return v1;
}

unint64_t sub_1002B0A14(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  sub_100573ED8(29);

  v9._countAndFlagsBits = a1;
  v9._object = a2;
  sub_100572A98(v9);
  v10._countAndFlagsBits = 0x3A656C746974202CLL;
  v10._object = 0xE800000000000000;
  sub_100572A98(v10);
  v11._countAndFlagsBits = a3;
  v11._object = a4;
  sub_100572A98(v11);
  v12._countAndFlagsBits = 41;
  v12._object = 0xE100000000000000;
  sub_100572A98(v12);
  return 0xD000000000000010;
}

unint64_t sub_1002B0AE0(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  sub_100573ED8(29);

  v26 = 0xD000000000000010;
  v27 = 0x80000001005B3F90;
  v28._countAndFlagsBits = a1;
  v28._object = a2;
  sub_100572A98(v28);
  v29._countAndFlagsBits = 0x3A656C746974202CLL;
  v29._object = 0xE800000000000000;
  sub_100572A98(v29);
  v30._countAndFlagsBits = a3;
  v30._object = a4;
  sub_100572A98(v30);
  v31._countAndFlagsBits = 41;
  v31._object = 0xE100000000000000;
  sub_100572A98(v31);
  v14 = 0xD000000000000010;
  if (a7[7])
  {
    v23 = a5;
    v24 = a6;
    v15 = a7[2];
    v16 = a7[3];
    v18 = *a7;
    v17 = a7[1];
    sub_100573ED8(26);

    strcpy(&v25, "Alert(title:");
    BYTE5(v25._object) = 0;
    HIWORD(v25._object) = -5120;
    if (v17)
    {
      v19 = v17;
    }

    else
    {
      v18 = 0;
      v19 = 0xE000000000000000;
    }

    v32._countAndFlagsBits = v18;
    v32._object = v19;
    sub_100572A98(v32);

    v33._countAndFlagsBits = 0x67617373656D202CLL;
    v33._object = 0xEA00000000003A65;
    sub_100572A98(v33);
    if (v16)
    {
      v20 = v15;
    }

    else
    {
      v20 = 0;
    }

    if (v16)
    {
      v21 = v16;
    }

    else
    {
      v21 = 0xE000000000000000;
    }

    v34._countAndFlagsBits = v20;
    v34._object = v21;
    sub_100572A98(v34);

    sub_100572A98(v25);

    sub_1000F3E14(v23, v24);

    sub_1002B0D1C(a7);
    return v26;
  }

  else
  {

    sub_1000F3E14(a5, a6);
  }

  return v14;
}

uint64_t sub_1002B0D1C(uint64_t a1)
{
  v2 = sub_100009DCC(&qword_1006E7A90, &qword_10058D8D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1002B0DAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_100009DCC(&qword_1006E6420, &qword_100586E50);
  __chkstk_darwin();
  v10 = v22 - v9;
  sub_10000CC8C(a3, v22 - v9, &qword_1006E6420, &qword_100586E50);
  v11 = sub_100572F48();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_10001036C(v10, &qword_1006E6420, &qword_100586E50);
  }

  else
  {
    sub_100572F38();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_100572E78();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v22[0] = a2;
      v18 = sub_1005729C8() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_10001036C(a3, &qword_1006E6420, &qword_100586E50);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10001036C(a3, &qword_1006E6420, &qword_100586E50);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_1002B1058(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_100009DCC(&qword_1006E6420, &qword_100586E50);
  __chkstk_darwin();
  v9 = v21 - v8;
  sub_10000CC8C(a3, v21 - v8, &qword_1006E6420, &qword_100586E50);
  v10 = sub_100572F48();
  v11 = *(v10 - 8);
  v12 = (*(v11 + 48))(v9, 1, v10);

  if (v12 == 1)
  {
    sub_10001036C(v9, &qword_1006E6420, &qword_100586E50);
  }

  else
  {
    sub_100572F38();
    (*(v11 + 8))(v9, v10);
  }

  v13 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v13)
  {
    swift_getObjectType();
    v14 = sub_100572E78();
    v16 = v15;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v17 = sub_1005729C8() + 32;

      sub_100009DCC(&qword_1006EBEE8, &qword_100591308);
      v18 = (v16 | v14);
      if (v16 | v14)
      {
        v22[0] = 0;
        v22[1] = 0;
        v18 = v22;
        v22[2] = v14;
        v22[3] = v16;
      }

      v21[1] = 7;
      v21[2] = v18;
      v21[3] = v17;
      v19 = swift_task_create();

      sub_10001036C(a3, &qword_1006E6420, &qword_100586E50);

      return v19;
    }
  }

  else
  {
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10001036C(a3, &qword_1006E6420, &qword_100586E50);
  sub_100009DCC(&qword_1006EBEE8, &qword_100591308);
  if (v16 | v14)
  {
    v22[4] = 0;
    v22[5] = 0;
    v22[6] = v14;
    v22[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_1002B1314(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v2 = a1;
    v3 = sub_1005740D8();

    if (v3)
    {
      sub_100009DCC(&qword_1006EBE68, &unk_1005912A0);
      swift_dynamicCast();
      return v6;
    }
  }

  else if (*(a2 + 16))
  {
    sub_1000EBABC(a1);
    if (v5)
    {
      return swift_unknownObjectRetain();
    }
  }

  return 0;
}

char *Player.state<A>(for:)(void (*a1)(char *, uint64_t, uint64_t), uint64_t a2, uint64_t a3)
{
  v7 = sub_100573538();
  type metadata accessor for MusicItemState(0, a2, a3, v8);

  v10 = sub_1002C8F94(a1, v7, v3, v9);

  return v10;
}

uint64_t sub_1002B148C()
{
  sub_100570B88();
  sub_1002CA318(&qword_1006EBE70, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100009DCC(&unk_1006E9B30, &qword_10058AF10);
  sub_100010BC0(&qword_1006EBE80, &unk_1006E9B30, &qword_10058AF10, &protocol conformance descriptor for [A]);
  return sub_100573DA8();
}

uint64_t sub_1002B1578()
{
  v0 = sub_10056DF88();
  sub_10000C910(v0, qword_1006FC8E8);
  sub_10000C49C(v0, qword_1006FC8E8);
  return sub_10056DF78();
}

uint64_t Player.configuration.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC9MusicCore6Player_engine);
  v2 = [v1 playerID];
  v3 = sub_1005728D8();

  sub_10028AF98(v1);
  v4 = [v1 fallbackPlaybackIntent];
  return v3;
}

id Player.audioAnalyzer.getter()
{
  v1 = [*(v0 + OBJC_IVAR____TtC9MusicCore6Player_engine) audioAnalyzer];

  return v1;
}

void *Player.sampleReceiver.getter()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 16);
  }

  else
  {
    type metadata accessor for SampleReceiver();
    v1 = swift_allocObject();
    v1[3] = 0;
    v1[4] = 0;
    v1[2] = 0;
    *(v0 + 16) = v1;
  }

  return v1;
}

double Player.sampleReceiver.setter(uint64_t a1)
{
  *(v1 + 16) = a1;

  return result;
}

double (*Player.sampleReceiver.modify(void *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = Player.sampleReceiver.getter();
  return sub_1002B1770;
}

double sub_1002B1770(uint64_t *a1)
{
  *(a1[1] + 16) = *a1;

  return result;
}

uint64_t Player.__allocating_init()()
{
  v0 = swift_allocObject();
  Player.init()();
  return v0;
}

char *Player.init()()
{
  v1 = v0;
  v102 = *v0;
  sub_100009DCC(&qword_1006E6420, &qword_100586E50);
  __chkstk_darwin();
  v113 = &v89 - v2;
  sub_100009DCC(&qword_1006E75F0, &qword_1005886C8);
  __chkstk_darwin();
  v112 = &v89 - v3;
  v4 = sub_100009DCC(&qword_1006EB500, &qword_100590A80);
  v104 = *(v4 - 8);
  v105 = v4;
  __chkstk_darwin();
  v103 = &v89 - v5;
  v6 = sub_100009DCC(&qword_1006EB508, &qword_100590A88);
  v108 = *(v6 - 8);
  v109 = v6;
  __chkstk_darwin();
  v106 = &v89 - v7;
  v8 = sub_100009DCC(&unk_1006EB510, &unk_100590A90);
  v110 = *(v8 - 8);
  v111 = v8;
  __chkstk_darwin();
  v107 = &v89 - v9;
  v10 = sub_100009DCC(&qword_1006EA0D8, &qword_1005962B0);
  v99 = *(v10 - 8);
  v100 = v10;
  __chkstk_darwin();
  v98 = &v89 - v11;
  v96 = sub_100009DCC(&qword_1006EB520, &qword_100590AA0);
  v95 = *(v96 - 8);
  __chkstk_darwin();
  v94 = &v89 - v12;
  v93 = sub_100009DCC(&unk_1006EB528, &unk_100590AA8);
  v92 = *(v93 - 8);
  __chkstk_darwin();
  v14 = &v89 - v13;
  v97 = sub_100009DCC(&qword_1006EB170, &qword_1005904C0);
  v15 = *(v97 - 8);
  __chkstk_darwin();
  v17 = &v89 - v16;
  v18 = sub_100009DCC(&qword_1006EB538, &unk_100590AB8);
  v19 = *(v18 - 8);
  __chkstk_darwin();
  v21 = &v89 - v20;
  *(v0 + 2) = 0;
  *(v0 + 3) = 0;
  v101 = objc_opt_self();
  v22 = [v101 systemRoute];
  v23 = [v22 isDeviceRoute];
  v24 = objc_opt_self();
  v25 = v24;
  if (v23)
  {
    if (qword_1006E4F70 != -1)
    {
      swift_once();
    }

    v26 = sub_100572898();
    v27 = [v25 systemMusicPathWithRoute:v22 playerID:v26];
  }

  else
  {
    v27 = [v24 pathWithRoute:v22 bundleID:0 playerID:0];
  }

  v28 = OBJC_IVAR____TtC9MusicCore6Player__path;
  aBlock = v27;
  sub_1000D3B98(0, &qword_1006E6A58, MPCPlayerPath_ptr);
  sub_10056E438();
  (*(v19 + 32))(&v1[v28], v21, v18);
  *&v1[OBJC_IVAR____TtC9MusicCore6Player____lazy_storage___nowPlayingObserver] = 0;
  v29 = OBJC_IVAR____TtC9MusicCore6Player__nowPlaying;
  aBlock = 0;
  v30 = v17;
  v91 = sub_100009DCC(&qword_1006EB560, &unk_10058FED0);
  sub_10056E438();
  v31 = *(v15 + 32);
  v32 = v97;
  v90 = v31;
  v31(&v1[v29], v17, v97);
  v33 = OBJC_IVAR____TtC9MusicCore6Player__nowPlayingPath;
  aBlock = 0;
  sub_100009DCC(&qword_1006EB570, &qword_100590AC8);
  sub_10056E438();
  (*(v92 + 32))(&v1[v33], v14, v93);
  v34 = OBJC_IVAR____TtC9MusicCore6Player__sharePlayTogetherSession;
  aBlock = 0;
  sub_100009DCC(&qword_1006EB580, &unk_100590AD0);
  v35 = v94;
  sub_10056E438();
  (*(v95 + 32))(&v1[v34], v35, v96);
  v36 = OBJC_IVAR____TtC9MusicCore6Player__isHostingSharePlayTogetherSession;
  LOBYTE(aBlock) = 0;
  v37 = v98;
  sub_10056E438();
  v38 = v100;
  v39 = *(v99 + 32);
  v39(&v1[v36], v37, v100);
  v40 = OBJC_IVAR____TtC9MusicCore6Player__isEligibleForHostingSharePlayTogetherSession;
  LOBYTE(aBlock) = 0;
  sub_10056E438();
  v39(&v1[v40], v37, v38);
  *&v1[OBJC_IVAR____TtC9MusicCore6Player_currentSharePlayTogetherConnectionRequestToken] = 0;
  v41 = &v1[OBJC_IVAR____TtC9MusicCore6Player_nowPlayingConfiguration];
  if (qword_1006E4FA8 != -1)
  {
    swift_once();
  }

  v42 = qword_1006EB4F0;
  *v41 = qword_1006EB4F0;
  *(v41 + 1) = v42;
  *(v41 + 2) = _swiftEmptyDictionarySingleton;
  *&v1[OBJC_IVAR____TtC9MusicCore6Player_routingController] = 0;
  v1[OBJC_IVAR____TtC9MusicCore6Player_engineState] = 0;
  *&v1[OBJC_IVAR____TtC9MusicCore6Player__onEngineIsReady] = _swiftEmptyArrayStorage;
  v43 = OBJC_IVAR____TtC9MusicCore6Player__playerResponse;
  aBlock = 0;
  v44 = v42;
  sub_10056E438();
  v90(&v1[v43], v30, v32);
  *&v1[OBJC_IVAR____TtC9MusicCore6Player____lazy_storage___playbackDataSource] = 0;
  *&v1[OBJC_IVAR____TtC9MusicCore6Player____lazy_storage___nowPlayingDataSource] = 0;
  *&v1[OBJC_IVAR____TtC9MusicCore6Player_activeSystemRouteDidChangeNotificationObserver] = 0;
  *&v1[OBJC_IVAR____TtC9MusicCore6Player_playerPathInvalidationObserver] = 0;
  *&v1[OBJC_IVAR____TtC9MusicCore6Player_sharePlayTogetherSessionObserver] = 0;
  *&v1[OBJC_IVAR____TtC9MusicCore6Player_sharePlayTogetherEligibilityObserver] = 0;
  v45 = OBJC_IVAR____TtC9MusicCore6Player_failingPlayerPathTimers;
  *&v1[v45] = sub_1000F4D84(_swiftEmptyArrayStorage);
  *&v1[OBJC_IVAR____TtC9MusicCore6Player_ratingWarningThresholdSubscription] = 0;
  v46 = OBJC_IVAR____TtC9MusicCore6Player_lock;
  type metadata accessor for UnfairLock();
  swift_allocObject();
  *&v1[v46] = UnfairLock.init()();
  if (qword_1006E4F70 != -1)
  {
    swift_once();
  }

  v47 = qword_1006FC880;
  v48 = unk_1006FC888;
  v49 = objc_allocWithZone(MPCPlaybackEngine);
  v50 = sub_100572898();
  v51 = [v49 initWithPlayerID:v50];

  v52 = v51;
  sub_10028B080(v47, v48);

  *&v1[OBJC_IVAR____TtC9MusicCore6Player_engine] = v52;
  [v52 becomeActive];
  v53 = OBJC_IVAR____TtC9MusicCore6Player_engine;
  v54 = *&v1[OBJC_IVAR____TtC9MusicCore6Player_engine];

  v55 = sub_10028AF98(v54);
  LOBYTE(v54) = sub_1001B5D68(4u, v55);

  if (v54)
  {
    v56 = *&v1[v53];
    v118 = sub_1002B2A54;
    v119 = 0;
    aBlock = _NSConcreteStackBlock;
    v115 = 1107296256;
    v116 = sub_1002B2BFC;
    v117 = &unk_100697A00;
    v57 = _Block_copy(&aBlock);
    v58 = v56;
    [v58 restoreStateWithCompletion:v57];
    _Block_release(v57);
  }

  v59 = v101;
  v60 = [v101 systemRoute];
  v61 = [objc_allocWithZone(MPVolumeControllerRouteDataSource) initWithGroupRoute:v60 outputDeviceRoute:0];
  v62 = [objc_opt_self() sharedController];
  [v62 setActiveDataSource:v61];

  v63 = swift_allocObject();
  v64 = v102;
  *(v63 + 16) = v1;
  *(v63 + 24) = v64;
  v65 = swift_allocObject();
  *(v65 + 16) = sub_1002C902C;
  *(v65 + 24) = v63;
  v118 = sub_1002C906C;
  v119 = v65;
  aBlock = _NSConcreteStackBlock;
  v115 = 1107296256;
  v116 = sub_100012988;
  v117 = &unk_100697988;
  v66 = _Block_copy(&aBlock);

  [v59 getActiveRouteWithTimeout:v66 completion:1.0];

  _Block_release(v66);
  v67 = MPAVRoutingControllerActiveSystemRouteDidChangeNotification;
  v68 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for NotificationObserver();
  swift_allocObject();

  *&v1[OBJC_IVAR____TtC9MusicCore6Player_activeSystemRouteDidChangeNotificationObserver] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v67, 0, 1, 1, sub_1002CBFB8, v68);

  v69 = MRAVEndpointGroupSessionInfoDidChangeNotification;
  v70 = swift_allocObject();
  swift_weakInit();
  swift_allocObject();
  *&v1[OBJC_IVAR____TtC9MusicCore6Player_sharePlayTogetherSessionObserver] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v69, 0, 1, 1, sub_1002C908C, v70);

  v71 = MRAVEndpointGroupSessionHostingEligibilityDidChangeNotification;
  v72 = swift_allocObject();
  swift_weakInit();
  v73 = v71;

  swift_allocObject();
  *&v1[OBJC_IVAR____TtC9MusicCore6Player_sharePlayTogetherEligibilityObserver] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v73, 0, 1, 1, sub_1002C90C4, v72);

  if (qword_1006E4D40 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_100009DCC(&qword_1006EB600, &unk_10058A928);
  v74 = v103;
  sub_10056E448();
  swift_endAccess();
  sub_100010BC0(&unk_1006EB608, &qword_1006EB500, &qword_100590A80, &protocol conformance descriptor for Published<A>.Publisher);
  v75 = v105;
  v76 = v106;
  sub_10056E4C8();
  (*(v104 + 8))(v74, v75);
  sub_1000D3B98(0, &qword_1006E84A0, OS_dispatch_queue_ptr);
  v77 = sub_1005735E8();
  aBlock = v77;
  v78 = sub_1005735C8();
  v79 = v112;
  (*(*(v78 - 8) + 56))(v112, 1, 1, v78);
  sub_100010BC0(&qword_1006EB618, &qword_1006EB508, &qword_100590A88, &protocol conformance descriptor for Publishers.Map<A, B>);
  sub_1002C90FC();
  v80 = v107;
  v81 = v109;
  sub_10056E4E8();
  sub_10001036C(v79, &qword_1006E75F0, &qword_1005886C8);

  (*(v108 + 8))(v76, v81);
  sub_100010BC0(&qword_1006EB628, &unk_1006EB510, &unk_100590A90, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
  v82 = v111;
  v83 = sub_10056E518();
  (*(v110 + 8))(v80, v82);
  *&v1[OBJC_IVAR____TtC9MusicCore6Player_ratingWarningThresholdSubscription] = v83;

  v84 = v113;
  sub_100572F18();
  v85 = sub_100572F48();
  (*(*(v85 - 8) + 56))(v84, 0, 1, v85);
  sub_100572F08();

  v86 = sub_100572EF8();
  v87 = swift_allocObject();
  v87[2] = v86;
  v87[3] = &protocol witness table for MainActor;
  v87[4] = v1;
  sub_1000D6938(0, 0, v84, &unk_100590AE8, v87);

  sub_10001036C(v84, &qword_1006E6420, &qword_100586E50);
  return v1;
}

void sub_1002B2A54(char a1, uint64_t a2)
{
  if ((a1 & 1) == 0)
  {
    if (qword_1006E4FA0 != -1)
    {
      swift_once();
    }

    v2 = sub_10056DF88();
    sub_10000C49C(v2, qword_1006FC8E8);
    swift_errorRetain();
    oslog = sub_10056DF68();
    v3 = sub_100573428();

    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v10 = v5;
      *v4 = 136446210;
      swift_errorRetain();
      sub_100009DCC(&qword_1006EBF40, &qword_100590498);
      v6 = sub_100572978();
      v8 = sub_1000C9784(v6, v7, &v10);

      *(v4 + 4) = v8;
      _os_log_impl(&_mh_execute_header, oslog, v3, "Restoration Failed with error=%{public}s", v4, 0xCu);
      sub_100010474(v5);
    }

    else
    {
    }
  }
}

void sub_1002B2BFC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_1002B2C74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_100572F08();
  *(v4 + 24) = sub_100572EF8();
  v6 = sub_100572E78();

  return _swift_task_switch(sub_1002B2D0C, v6, v5);
}

uint64_t sub_1002B2D0C()
{

  if (qword_1006E5008 != -1)
  {
    swift_once();
  }

  v1 = sub_10056DF88();
  sub_10000C49C(v1, static Logger.sharePlayTogether);
  v2 = sub_10056DF68();
  v3 = sub_100573448();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Got MRAVEndpointGroupSessionInfoDidChange notification", v4, 2u);
  }

  v5 = *(v0 + 16);

  if (v5)
  {
    sub_1002C2798();
  }

  v6 = *(v0 + 8);

  return v6();
}

double sub_1002B2E38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_100009DCC(&qword_1006E6420, &qword_100586E50);
  __chkstk_darwin();
  v6 = &v12 - v5;
  v7 = sub_100572F48();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  sub_100572F08();
  v9 = sub_100572EF8();
  v10 = swift_allocObject();
  v10[2] = v9;
  v10[3] = &protocol witness table for MainActor;
  v10[4] = Strong;
  sub_1001B3FAC(0, 0, v6, a4, v10);

  return result;
}

uint64_t sub_1002B2F74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_100572F08();
  *(v4 + 24) = sub_100572EF8();
  v6 = sub_100572E78();

  return _swift_task_switch(sub_1002B300C, v6, v5);
}

uint64_t sub_1002B300C()
{

  if (qword_1006E5008 != -1)
  {
    swift_once();
  }

  v1 = sub_10056DF88();
  sub_10000C49C(v1, static Logger.sharePlayTogether);
  v2 = sub_10056DF68();
  v3 = sub_100573448();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Got MRAVEndpointGroupSessionHostingEligibilityDidChangeNotification notification", v4, 2u);
  }

  v5 = *(v0 + 16);

  if (v5)
  {
    sub_1002C2798();
  }

  v6 = *(v0 + 8);

  return v6();
}

double sub_1002B3138@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 80);
  v3 = *(a1 + 64);
  *a2 = *(a1 + 48);
  *(a2 + 16) = v3;
  *(a2 + 32) = v2;

  return result;
}

void sub_1002B3184(uint64_t *a1)
{
  v1 = *a1;
  v2 = objc_opt_self();
  v3 = [v2 sharedRestrictionsMonitor];
  [v3 setMaximumMovieRatingForAgeGate:v1];

  v4 = [v2 sharedRestrictionsMonitor];
  [v4 setMaximumTVShowRatingForAgeGate:v1];
}

uint64_t sub_1002B322C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = sub_100572F08();
  v4[4] = sub_100572EF8();
  v5 = swift_task_alloc();
  v4[5] = v5;
  *v5 = v4;
  v5[1] = sub_1002B32DC;

  return Player.startEngineIfNeeded()();
}

uint64_t sub_1002B32DC()
{

  v1 = sub_100572E78();

  return _swift_task_switch(sub_1002B3418, v1, v0);
}

uint64_t sub_1002B3418()
{

  sub_1002C2798();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t Player.startEngineIfNeeded()()
{
  v1[16] = v0;
  v1[17] = sub_100572F08();
  v1[18] = sub_100572EF8();
  v3 = sub_100572E78();
  v1[19] = v3;
  v1[20] = v2;

  return _swift_task_switch(sub_1002B351C, v3, v2);
}

uint64_t sub_1002B351C()
{
  v1 = v0[16];
  v2 = OBJC_IVAR____TtC9MusicCore6Player_engineState;
  swift_beginAccess();
  if (*(v1 + v2) == 2)
  {

    v7 = v0[1];

    return v7();
  }

  else
  {
    if (!*(v1 + v2))
    {
      *(v1 + v2) = 1;
      sub_1002BED3C(0);
    }

    v3 = sub_100572EF8();
    v0[21] = v3;
    if (v3)
    {
      swift_getObjectType();
      v4 = sub_100572E78();
      v6 = v5;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    return _swift_task_switch(sub_1002B3638, v4, v6);
  }
}

uint64_t sub_1002B3638()
{
  v1 = v0[16];
  v0[2] = v0;
  v0[3] = sub_1002B37B8;
  v2 = swift_continuation_init();
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  v4 = OBJC_IVAR____TtC9MusicCore6Player__onEngineIsReady;
  swift_beginAccess();
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + v4) = v5;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v5 = sub_1000CF944(0, v5[2] + 1, 1, v5);
    *(v1 + v4) = v5;
  }

  v8 = v5[2];
  v7 = v5[3];
  if (v8 >= v7 >> 1)
  {
    v5 = sub_1000CF944((v7 > 1), v8 + 1, 1, v5);
  }

  v5[2] = v8 + 1;
  v9 = &v5[2 * v8];
  v9[4] = sub_1002C921C;
  v9[5] = v3;
  *(v1 + v4) = v5;
  swift_endAccess();

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1002B37B8()
{
  v1 = *(*v0 + 160);
  v2 = *(*v0 + 152);

  return _swift_task_switch(sub_1002B38C0, v2, v1);
}

uint64_t sub_1002B38C0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t Player.engineDelegate.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 24) = a1;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  [*(v1 + OBJC_IVAR____TtC9MusicCore6Player_engine) setDelegate:a1];
  return swift_unknownObjectRelease();
}

id (*Player.engineDelegate.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1002B3A2C;
}

id sub_1002B3A2C(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);
    v6 = *(v5 + OBJC_IVAR____TtC9MusicCore6Player_engine);
    v7 = *(v5 + 24);

    return [v6 setDelegate:v7];
  }

  return result;
}

void sub_1002B3A90(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10056E478();

  *a2 = v3;
}

double sub_1002B3B10(void **a1, uint64_t *a2)
{
  v2 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();

  v3 = v2;
  sub_10056E488();
  return sub_1002B3B8C();
}

double sub_1002B3B8C()
{
  v1 = v0;
  sub_100009DCC(&qword_1006E6420, &qword_100586E50);
  __chkstk_darwin();
  v3 = &v17 - v2;
  v4 = sub_1002BF4C8();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10056E478();

  v5 = v18;
  v6 = OBJC_IVAR____TtCC9MusicCore6PlayerP33_031AD420BBF8BBF113A2662767DAC2BB10DataSource_path;
  v7 = *&v4[OBJC_IVAR____TtCC9MusicCore6PlayerP33_031AD420BBF8BBF113A2662767DAC2BB10DataSource_path];
  *&v4[OBJC_IVAR____TtCC9MusicCore6PlayerP33_031AD420BBF8BBF113A2662767DAC2BB10DataSource_path] = v18;
  sub_1000D3B98(0, &qword_1006E6A58, MPCPlayerPath_ptr);
  v8 = v5;
  if ((sub_100573A58() & 1) == 0)
  {
    v9 = *&v4[OBJC_IVAR____TtCC9MusicCore6PlayerP33_031AD420BBF8BBF113A2662767DAC2BB10DataSource_controller];
    v10 = [v9 request];
    if (v10)
    {
      v11 = *&v4[v6];
      v12 = v10;
      [v10 setPlayerPath:v11];
    }

    [v9 setNeedsReloadForSignificantRequestChange];
  }

  v13 = sub_100572F48();
  (*(*(v13 - 8) + 56))(v3, 1, 1, v13);
  sub_100572F08();

  v14 = sub_100572EF8();
  v15 = swift_allocObject();
  v15[2] = v14;
  v15[3] = &protocol witness table for MainActor;
  v15[4] = v1;
  sub_1001B3FAC(0, 0, v3, &unk_100591350, v15);

  return result;
}