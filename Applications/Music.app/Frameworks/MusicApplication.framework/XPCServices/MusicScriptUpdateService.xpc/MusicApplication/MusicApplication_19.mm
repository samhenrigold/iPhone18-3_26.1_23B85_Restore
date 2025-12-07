uint64_t sub_1001E5930()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 10;
  v4 = v1[37];
  v5 = v1[27];
  v1[10] = v2;
  v1[11] = sub_1001E5A2C;
  v6 = swift_continuation_init();
  if (*(v5 + v4))
  {
    v7 = v6;
    v8 = swift_allocObject();
    *(v8 + 16) = v7;

    Player.requestSharePlayTogether(completion:)(sub_1001F4CC8, v8);
  }

  return _swift_continuation_await(v3);
}

uint64_t sub_1001E5A2C(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  *(*v1 + 320) = v3;
  if (v3)
  {
    swift_willThrow();

    v4 = *(v2 + 280);
    v5 = *(v2 + 288);
    v6 = sub_1001E5C14;
  }

  else
  {

    v4 = *(v2 + 280);
    v5 = *(v2 + 288);
    v6 = sub_1001E5B74;
  }

  return _swift_task_switch(v6, v4, v5);
}

uint64_t sub_1001E5B74()
{
  *(v0 + 345) = 0;
  v1 = sub_1004BC464();
  *(v0 + 328) = v1;
  if (v1)
  {
    swift_getObjectType();
    v2 = sub_1004BC3E4();
    v4 = v3;
  }

  else
  {
    v2 = 0;
    v4 = 0;
  }

  return _swift_task_switch(sub_1001E5CA0, v2, v4);
}

uint64_t sub_1001E5C14()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001E5CA0()
{
  v1 = v0 + 16;
  v2 = *(v0 + 216);
  v3 = *(v0 + 200);
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 344;
  *(v0 + 24) = sub_1001E5D58;
  v4 = *(v0 + 345);
  v5 = swift_continuation_init();
  sub_1001E8600(v5, v4, v3, v2);

  return _swift_continuation_await(v1);
}

uint64_t sub_1001E5D58(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  *(*v1 + 336) = v3;
  if (v3)
  {
    swift_willThrow();

    v4 = *(v2 + 280);
    v5 = *(v2 + 288);
    v6 = sub_1001E5F28;
  }

  else
  {

    *(v2 + 346) = *(v2 + 344);
    v4 = *(v2 + 280);
    v5 = *(v2 + 288);
    v6 = sub_1001E5EA8;
  }

  return _swift_task_switch(v6, v4, v5);
}

uint64_t sub_1001E5EA8()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 346);

  return v1(v2);
}

uint64_t sub_1001E5F28()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001E5FAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[40] = a3;
  v4[41] = v3;
  v4[38] = a1;
  v4[39] = a2;
  sub_1004B6E64();
  v4[42] = swift_task_alloc();
  v5 = sub_1004BBE14();
  v4[43] = v5;
  v4[44] = *(v5 - 8);
  v4[45] = swift_task_alloc();
  v4[46] = swift_task_alloc();
  v6 = sub_1004B8104();
  v4[47] = v6;
  v4[48] = *(v6 - 8);
  v4[49] = swift_task_alloc();
  v4[50] = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  v4[51] = swift_task_alloc();
  v4[52] = sub_1004BC474();
  v4[53] = sub_1004BC464();
  v8 = sub_1004BC3E4();
  v4[54] = v8;
  v4[55] = v7;

  return _swift_task_switch(sub_1001E616C, v8, v7);
}

uint64_t sub_1001E616C()
{
  v1 = *(v0 + 304);
  v2 = type metadata accessor for PlaybackIntentDescriptor(0);
  sub_10000F778(v1 + *(v2 + 28), v0 + 80, &qword_100606290, &qword_1004D3280);
  sub_10000F778(v0 + 80, v0 + 200, &qword_100606290, &qword_1004D3280);
  v3 = *(v0 + 224);
  if (v3)
  {
    v4 = *(v0 + 232);
    sub_100009178((v0 + 200), *(v0 + 224));
    sub_1001E9248(v3, v4, (v0 + 160));
    sub_100004C6C((v0 + 200));
    if (*(v0 + 184))
    {
      sub_100013414((v0 + 160), v0 + 120);
      sub_100009178((v0 + 120), *(v0 + 144));
      DynamicType = swift_getDynamicType();
      if (qword_100600138 != -1)
      {
        v42 = DynamicType;
        swift_once();
        DynamicType = v42;
      }

      v6 = (off_100609138 + 32);
      v7 = *(off_100609138 + 2) + 1;
      while (--v7)
      {
        v8 = *v6;
        v6 += 2;
        if (v8 == DynamicType)
        {
          sub_100004C6C((v0 + 120));
          goto LABEL_11;
        }
      }

      sub_1001F2120(*(v0 + 304), *(v0 + 408), type metadata accessor for PlaybackIntentDescriptor.IntentType);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v32 = *(v0 + 408);
      if (EnumCaseMultiPayload == 1)
      {
        v34 = *(v0 + 384);
        v33 = *(v0 + 392);
        v35 = *(v0 + 376);
        (*(v34 + 32))(v33, v32, v35);
        v36 = sub_1004B80D4();
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
      v39[1] = sub_1001E6694;
      v40 = *(v0 + 320);
      v41 = *(v0 + 312);

      return sub_1001DBAC4(v36, v41, v40, v37 + v38);
    }
  }

  else
  {
    sub_100007214(v0 + 200, &qword_100606290, &qword_1004D3280);
    *(v0 + 160) = 0u;
    *(v0 + 176) = 0u;
    *(v0 + 192) = 0;
  }

  sub_100007214(v0 + 160, &qword_100606290, &qword_1004D3280);
LABEL_11:
  if (qword_100600140 != -1)
  {
    swift_once();
  }

  v9 = sub_1004B80B4();
  sub_100007084(v9, static Logger.sharedListening);
  v10 = sub_1004B8094();
  v11 = sub_1004BC9A4();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "Offering SharePlay options (Play Now/Next/Last)", v12, 2u);
  }

  sub_10000F778(v0 + 80, v0 + 240, &qword_100606290, &qword_1004D3280);
  v13 = *(v0 + 264);
  if (v13)
  {
    v14 = *(v0 + 272);
    sub_100009178((v0 + 240), *(v0 + 264));
    v15 = sub_1001E970C(v13, v14);
    v17 = v16;
    sub_100004C6C((v0 + 240));
  }

  else
  {
    v18 = *(v0 + 360);
    v19 = *(v0 + 368);
    v20 = *(v0 + 344);
    v21 = *(v0 + 352);
    sub_100007214(v0 + 240, &qword_100606290, &qword_1004D3280);
    sub_1004BBDA4();
    (*(v21 + 16))(v18, v19, v20);
    if (qword_1005FFD30 != -1)
    {
      swift_once();
    }

    v22 = *(v0 + 368);
    v23 = *(v0 + 344);
    v24 = *(v0 + 352);
    v25 = qword_100617118;
    sub_1004B6DF4();
    v15 = sub_1004BBED4();
    v17 = v26;
    (*(v24 + 8))(v22, v23);
  }

  *(v0 + 472) = v17;
  *(v0 + 480) = v15;
  v27 = sub_1004BC464();
  *(v0 + 488) = v27;
  if (v27)
  {
    swift_getObjectType();
    v28 = sub_1004BC3E4();
    v30 = v29;
  }

  else
  {
    v28 = 0;
    v30 = 0;
  }

  return _swift_task_switch(sub_1001E68B4, v28, v30);
}

uint64_t sub_1001E6694()
{
  v2 = *v1;
  v3 = *(*v1 + 448);
  *(*v1 + 464) = v0;

  v4 = *(v2 + 440);
  v5 = *(v2 + 432);
  if (v0)
  {
    v6 = sub_1001E6B84;
  }

  else
  {
    v6 = sub_1001E67E8;
  }

  return _swift_task_switch(v6, v5, v4);
}

uint64_t sub_1001E67E8()
{

  sub_100004C6C((v0 + 120));
  sub_100007214(v0 + 80, &qword_100606290, &qword_1004D3280);

  v1 = *(v0 + 8);

  return v1(0, 0, 1);
}

uint64_t sub_1001E68B4()
{
  v1 = v0[60];
  v2 = v0[59];
  v3 = v0[41];
  v4 = v0[38];
  v0[2] = v0;
  v0[7] = v0 + 35;
  v0[3] = sub_1001E698C;
  v5 = swift_continuation_init();
  sub_1001EA2FC(v5, v4, v3, v1, v2);

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1001E698C()
{
  v1 = *v0;
  v2 = *v0;
  *(v2 + 496) = *(*v0 + 280);
  *(v2 + 297) = *(v2 + 296);
  v3 = *(v1 + 440);
  v4 = *(v1 + 432);

  return _swift_task_switch(sub_1001E6AA8, v4, v3);
}

uint64_t sub_1001E6AA8()
{

  sub_100007214(v0 + 80, &qword_100606290, &qword_1004D3280);
  v1 = *(v0 + 297);
  v3 = *(v0 + 496);
  v2 = *(v0 + 504);

  v4 = *(v0 + 8);

  return v4(v3, v2, v1);
}

uint64_t sub_1001E6B84()
{

  sub_100004C6C((v0 + 120));
  sub_100007214(v0 + 80, &qword_100606290, &qword_1004D3280);

  v1 = *(v0 + 8);

  return v1();
}

void *sub_1001E6C50(void *a1, char a2, uint64_t a3)
{
  v7 = OBJC_IVAR____TtC9MusicCore18PlaybackController_player;
  swift_beginAccess();
  v8 = *(v3 + v7);
  v9 = _swiftEmptyArrayStorage;
  if (v8)
  {
    v42 = _swiftEmptyArrayStorage;
    v10 = a1;

    if ((a2 & 2) != 0 && sub_1001F21F0(v10, a3, v8))
    {
      v9 = sub_1000184FC(0, 1, 1, _swiftEmptyArrayStorage);
      v12 = v9[2];
      v11 = v9[3];
      if (v12 >= v11 >> 1)
      {
        v9 = sub_1000184FC((v11 > 1), v12 + 1, 1, v9);
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
      sub_100003ABC(&unk_100606020, &unk_1004C8190);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1004C50C0;
      *(inited + 56) = &type metadata for Player.InsertCommand;
      *(inited + 64) = &protocol witness table for Player.InsertCommand;
      *(inited + 32) = v10;
      *(inited + 40) = 0;
      *(inited + 96) = &type metadata for Player.ChangeCommand;
      *(inited + 104) = &protocol witness table for Player.ChangeCommand;
      *(inited + 72) = 1;
      v19 = v10;
      if (sub_1001F2420(v19, 0, v8) && sub_1001F2550(1, v8))
      {
        sub_100022DAC(inited);
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
        sub_10001342C(&v39, v38);
        v24 = v19;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_1000184FC(0, _swiftEmptyArrayStorage[2] + 1, 1, _swiftEmptyArrayStorage);
        }

        v26 = v9[2];
        v25 = v9[3];
        if (v26 >= v25 >> 1)
        {
          v9 = sub_1000184FC((v25 > 1), v26 + 1, 1, v9);
        }

        sub_1001F4C68(v38, v38[3]);
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
        sub_100013414(&v35, &v9[5 * v26 + 4]);
        sub_100004C6C(v38);
        v42 = v9;
      }

      sub_100004C6C(&v39);
      if (!sub_1001F230C(0, v8))
      {

        return v42;
      }

      v9 = v42;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_1000184FC(0, v9[2] + 1, 1, v9);
      }

      v17 = v9[2];
      v33 = v9[3];
      v23 = v17 + 1;
      if (v17 >= v33 >> 1)
      {
        v9 = sub_1000184FC((v33 > 1), v17 + 1, 1, v9);
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
        v15 = sub_1001F2420(v14, 0, v8);

        if (v15)
        {
          v9 = sub_1000184FC(0, 1, 1, _swiftEmptyArrayStorage);
          v17 = v9[2];
          v16 = v9[3];
          if (v17 >= v16 >> 1)
          {
            v9 = sub_1000184FC((v16 > 1), v17 + 1, 1, v9);
          }

          v40 = &type metadata for Player.InsertCommand;
          v41 = &protocol witness table for Player.InsertCommand;
          v39 = v14;
          v9[2] = v17 + 1;
          goto LABEL_33;
        }
      }

      if ((a2 & 8) == 0 || (v10 = v10, v21 = sub_1001F2420(v10, 1, v8), v10, !v21))
      {

        return _swiftEmptyArrayStorage;
      }

      v9 = sub_1000184FC(0, 1, 1, _swiftEmptyArrayStorage);
      v17 = v9[2];
      v22 = v9[3];
      v23 = v17 + 1;
      if (v17 >= v22 >> 1)
      {
        v9 = sub_1000184FC((v22 > 1), v17 + 1, 1, v9);
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
    sub_100013414(&v39, (v13 + 4));
  }

  return v9;
}

uint64_t sub_1001E71E0(uint64_t a1, uint64_t a2)
{
  v50 = a2;
  v59 = a1;
  v61 = sub_1004B6D14();
  v2 = *(v61 - 8);
  __chkstk_darwin();
  v4 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004B6E64();
  __chkstk_darwin();
  v5 = sub_1004BBE14();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = &v39 - v9;
  sub_1004BBDA4();
  v60 = *(v6 + 16);
  v53 = v6 + 16;
  v60(v8, v10, v5);
  if (qword_1005FFD30 != -1)
  {
    swift_once();
  }

  v11 = qword_100617118;
  v12 = qword_100617118;
  v51 = v11;
  v13 = v12;
  sub_1004B6DF4();
  v57 = v13;
  v49 = sub_1004BBED4();
  v48 = v14;
  v40 = *(v6 + 8);
  v40(v10, v5);
  v47 = swift_allocObject();
  v15 = v59;
  *(v47 + 16) = v59;
  _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
  v46 = sub_1004B6CE4();
  v58 = v16;
  v52 = *(v2 + 8);
  v52(v4, v61);
  sub_1004BBDA4();
  v60(v8, v10, v5);
  sub_1004B6DF4();
  v57 = v57;
  v39 = v6 + 8;
  v45 = sub_1004BBED4();
  v55 = v17;
  v18 = v40;
  v40(v10, v5);
  v44 = swift_allocObject();
  *(v44 + 16) = v15;
  _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
  v43 = sub_1004B6CE4();
  v54 = v19;
  v52(v4, v61);
  sub_1004BBDA4();
  v20 = v60;
  v60(v8, v10, v5);
  sub_1004B6DF4();
  v21 = v57;
  v42 = sub_1004BBED4();
  v57 = v22;
  v18(v10, v5);
  v56 = swift_allocObject();
  *(v56 + 16) = v59;
  _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
  v59 = sub_1004B6CE4();
  v41 = v23;
  v52(v4, v61);
  sub_1004BBDA4();
  v20(v8, v10, v5);
  sub_1004B6DF4();
  v61 = sub_1004BBED4();
  v25 = v24;
  v18(v10, v5);
  sub_100003ABC(&qword_1006011F0, &qword_1004C8160);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1004C5070;
  v27 = v58;
  *(v26 + 32) = v46;
  *(v26 + 40) = v27;
  v28 = v48;
  *(v26 + 48) = v49;
  *(v26 + 56) = v28;
  *(v26 + 64) = 2;
  v29 = v47;
  *(v26 + 72) = &unk_1004D32E0;
  *(v26 + 80) = v29;
  v30 = v54;
  *(v26 + 88) = v43;
  *(v26 + 96) = v30;
  v31 = v55;
  *(v26 + 104) = v45;
  *(v26 + 112) = v31;
  *(v26 + 120) = 1;
  v32 = v44;
  *(v26 + 128) = &unk_1004D32F0;
  *(v26 + 136) = v32;
  v33 = v41;
  *(v26 + 144) = v59;
  *(v26 + 152) = v33;
  v34 = v57;
  *(v26 + 160) = v42;
  *(v26 + 168) = v34;
  *(v26 + 176) = 0;
  v35 = v56;
  *(v26 + 184) = &unk_1004D3300;
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
  v61 = sub_100009178((v50 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator), v36);
  v63[2] = v68;
  v63[3] = v69;
  v64 = v70;
  v63[0] = v66;
  v63[1] = v67;
  v65 = 0;
  v60 = *(v37 + 8);

  sub_1000C7A60(&v66, v62);
  v60(v63, v36, v37);
  sub_100052310(&v66);

  return sub_1001F3874(v63);
}

uint64_t sub_1001E7A24(uint64_t a1, uint64_t a2)
{
  v3 = *(*(*(v2 + 16) + 64) + 40);
  *v3 = 2;
  *(v3 + 8) = 0;
  swift_continuation_resume();
  v4 = *(v2 + 8);

  return v4();
}

uint64_t sub_1001E7ACC(uint64_t a1, uint64_t a2)
{
  v3 = *(*(*(v2 + 16) + 64) + 40);
  *v3 = 1;
  *(v3 + 8) = 0;
  swift_continuation_resume();
  v4 = *(v2 + 8);

  return v4();
}

uint64_t sub_1001E7B74(uint64_t a1, uint64_t a2)
{
  v3 = *(*(*(v2 + 16) + 64) + 40);
  *v3 = 0;
  *(v3 + 8) = 1;
  swift_continuation_resume();
  v4 = *(v2 + 8);

  return v4();
}

uint64_t sub_1001E7BFC(uint64_t a1, uint64_t a2)
{
  v51 = a2;
  v54 = a1;
  v50 = sub_1004B6D14();
  v49 = *(v50 - 8);
  __chkstk_darwin();
  v3 = &v36 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004B6E64();
  __chkstk_darwin();
  v4 = sub_1004BBE14();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v36 - v8;
  sub_1004BBDA4();
  v53 = *(v5 + 16);
  v53(v7, v9, v4);
  if (qword_1005FFD30 != -1)
  {
    swift_once();
  }

  v10 = qword_100617118;
  v11 = qword_100617118;
  v39 = v10;
  v12 = v11;
  sub_1004B6DF4();
  v43 = v12;
  v48 = sub_1004BBED4();
  v47 = v13;
  v52 = *(v5 + 8);
  v52(v9, v4);
  v46 = swift_allocObject();
  *(v46 + 16) = v54;
  _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
  v45 = sub_1004B6CE4();
  v44 = v14;
  v38 = v5 + 8;
  v37 = *(v49 + 8);
  v15 = v50;
  v37(v3, v50);
  sub_1004BBDA4();
  v53(v7, v9, v4);
  sub_1004B6DF4();
  v40 = v43;
  v49 = sub_1004BBED4();
  v43 = v16;
  v52(v9, v4);
  v42 = swift_allocObject();
  *(v42 + 16) = v54;
  _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
  v41 = sub_1004B6CE4();
  v54 = v17;
  v37(v3, v15);
  sub_1004BBDA4();
  v18 = v53;
  v53(v7, v9, v4);
  sub_1004B6DF4();
  v19 = v40;
  v50 = sub_1004BBED4();
  v40 = v20;
  v21 = v52;
  v52(v9, v4);
  sub_1004BBDA4();
  v18(v7, v9, v4);
  sub_1004B6DF4();
  v22 = sub_1004BBED4();
  v24 = v23;
  v21(v9, v4);
  sub_100003ABC(&qword_1006011F0, &qword_1004C8160);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1004C50C0;
  v26 = v44;
  *(v25 + 32) = v45;
  *(v25 + 40) = v26;
  v27 = v47;
  *(v25 + 48) = v48;
  *(v25 + 56) = v27;
  *(v25 + 64) = 2;
  v28 = v46;
  *(v25 + 72) = &unk_1004D3330;
  *(v25 + 80) = v28;
  v29 = v54;
  *(v25 + 88) = v41;
  *(v25 + 96) = v29;
  v30 = v43;
  *(v25 + 104) = v49;
  *(v25 + 112) = v30;
  *(v25 + 120) = 0;
  v31 = v42;
  *(v25 + 128) = &unk_1004D3340;
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
  v53 = sub_100009178((v51 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator), v32);
  v56[2] = v61;
  v56[3] = v62;
  v57 = v63;
  v56[0] = v59;
  v56[1] = v60;
  v58 = 0;
  v34 = *(v33 + 8);

  sub_1000C7A60(&v59, v55);
  v34(v56, v32, v33);
  sub_100052310(&v59);

  return sub_1001F3874(v56);
}

uint64_t sub_1001E8368(uint64_t a1, uint64_t a2)
{
  **(*(*(v2 + 16) + 64) + 40) = 1;
  swift_continuation_resume();
  v3 = *(v2 + 8);

  return v3();
}

uint64_t sub_1001E8408(uint64_t a1, uint64_t a2)
{
  **(*(*(v2 + 16) + 64) + 40) = 0;
  swift_continuation_resume();
  v3 = *(v2 + 8);

  return v3();
}

uint64_t sub_1001E8484(uint64_t result)
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

uint64_t sub_1001E855C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    sub_100003ABC(&qword_100604C30, &qword_1004C8490);
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

uint64_t sub_1001E8600(uint64_t a1, char a2, void *a3, uint64_t a4)
{
  v68 = a3;
  v70 = a1;
  v6 = sub_1004B6D14();
  v67 = *(v6 - 8);
  __chkstk_darwin();
  v8 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004B6E64();
  __chkstk_darwin();
  v9 = sub_1004BBE14();
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
    if (qword_100600050 != -1)
    {
      swift_once();
    }

    v16 = sub_1004B80B4();
    sub_100007084(v16, static Logger.playbackController);
    v17 = sub_1004B8094();
    v18 = sub_1004BC9A4();
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
    sub_1004BBDA4();
    v21 = v69;
    (*(v69 + 16))(v11, v13, v9);
    if (qword_1005FFD30 != -1)
    {
      swift_once();
    }

    v22 = qword_100617118;
    sub_1004B6DF4();
    v65 = sub_1004BBED4();
    v64 = v23;
    (*(v21 + 8))(v13, v9);
    v24 = swift_allocObject();
    *(v24 + 16) = v70;
    _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
    v63 = sub_1004B6CE4();
    v62 = v25;
    (*(v67 + 8))(v8, v6);
    v26 = sub_1000183D4(0, 1, 1, _swiftEmptyArrayStorage);
    v28 = *(v26 + 2);
    v27 = *(v26 + 3);
    if (v28 >= v27 >> 1)
    {
      v26 = sub_1000183D4((v27 > 1), v28 + 1, 1, v26);
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
    *(v29 + 9) = &unk_1004D3320;
    *(v29 + 10) = v24;
  }

  else
  {
    v26 = _swiftEmptyArrayStorage;
  }

  v32 = v69;
  v65 = v6;
  sub_1004BBDA4();
  v33 = *(v32 + 16);
  v64 = v32 + 16;
  v63 = v33;
  v33(v11, v13, v9);
  if (qword_1005FFD30 != -1)
  {
    swift_once();
  }

  v34 = qword_100617118;
  v35 = qword_100617118;
  sub_1004B6DF4();
  v36 = v35;
  v62 = v34;
  v60 = sub_1004BBED4();
  v38 = v37;
  v61 = *(v32 + 8);
  v61(v13, v9);
  v39 = swift_allocObject();
  *(v39 + 16) = v70;
  _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
  v58 = sub_1004B6CE4();
  v41 = v40;
  (*(v67 + 8))(v8, v65);
  v70 = v41;

  v67 = v39;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v69 = v32 + 8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v26 = sub_1000183D4(0, *(v26 + 2) + 1, 1, v26);
  }

  v44 = *(v26 + 2);
  v43 = *(v26 + 3);
  if (v44 >= v43 >> 1)
  {
    v26 = sub_1000183D4((v43 > 1), v44 + 1, 1, v26);
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
  *(v45 + 9) = &unk_1004D3310;
  *(v45 + 10) = v47;
  v48 = sub_1001E8FF8(v68);
  v50 = v49;
  sub_1004BBDA4();
  v63(v11, v13, v9);
  sub_1004B6DF4();
  v51 = sub_1004BBED4();
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
  sub_100009178((v66 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator), v54);
  v72[2] = v77;
  v72[3] = v78;
  v73 = v79;
  v72[0] = v75;
  v72[1] = v76;
  v74 = 0;
  v56 = *(v55 + 8);
  sub_1000C7A60(&v75, v71);
  v56(v72, v54, v55);
  sub_100052310(&v75);

  return sub_1001F3874(v72);
}

uint64_t sub_1001E8ED8()
{
  **(*(*(v0 + 16) + 64) + 40) = 1;
  swift_continuation_throwingResume();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001E8F78()
{
  **(*(*(v0 + 16) + 64) + 40) = 2;
  swift_continuation_throwingResume();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001E8FF8(void *a1)
{
  sub_1004B6E64();
  __chkstk_darwin();
  v2 = sub_1004BBE14();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v12[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *&v6 = __chkstk_darwin().n128_u64[0];
  v8 = &v12[-v7];
  if (a1 && ![a1 isHomePodRoute])
  {
    [a1 isAppleTVRoute];
  }

  sub_1004BBDA4();
  (*(v3 + 16))(v5, v8, v2);
  if (qword_1005FFD30 != -1)
  {
    swift_once();
  }

  v9 = qword_100617118;
  sub_1004B6DF4();
  v10 = sub_1004BBED4();
  (*(v3 + 8))(v8, v2);
  return v10;
}

uint64_t sub_1001E9248@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v46 = a3;
  v36 = a2;
  v44 = sub_1004B7644();
  v37 = *(v44 - 8);
  __chkstk_darwin();
  v35 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v43 = &v34 - v5;
  v6 = sub_1004BB9B4();
  v41 = *(v6 - 8);
  v42 = v6;
  __chkstk_darwin();
  v40 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_1004BBA44();
  v39 = *(v45 - 8);
  __chkstk_darwin();
  v38 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = &v34 - v9;
  v11 = sub_1004BB4D4();
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
      sub_1004BB9C4();
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
        v32 = sub_1000133B0(v22);
        (v21)(v32, v47, a1);
      }
    }
  }

  return (*(v17 + 8))(v20, a1);
}

uint64_t sub_1001E970C(uint64_t a1, uint64_t a2)
{
  v40 = sub_1004BB744();
  v38[0] = *(v40 - 8);
  __chkstk_darwin();
  v39 = v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_1004B7A34();
  v38[1] = *(v43 - 8);
  __chkstk_darwin();
  v42 = v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_1004B7CF4();
  v41 = *(v45 - 8);
  __chkstk_darwin();
  v44 = v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_1004BBA84();
  v46 = *(v49 - 8);
  __chkstk_darwin();
  v48 = v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_1004BB434();
  v47 = *(v52 - 8);
  __chkstk_darwin();
  v51 = v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_1004BAD04();
  v50 = *(v53 - 8);
  __chkstk_darwin();
  v10 = v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004B6E64();
  __chkstk_darwin();
  v54 = v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1004BBE14();
  v13 = *(v12 - 8);
  __chkstk_darwin();
  v15 = v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v17 = v38 - v16;
  v18 = sub_1004BB384();
  v19 = *(v18 - 8);
  __chkstk_darwin();
  v21 = v38 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001E9248(a1, a2, v56);
  if (!v56[3])
  {
    goto LABEL_31;
  }

  sub_10000F778(v56, v55, &qword_100606290, &qword_1004D3280);
  sub_100003ABC(&qword_100606298, &qword_1004D3290);
  if (swift_dynamicCast())
  {
    sub_1004BBDA4();
    (*(v13 + 16))(v15, v17, v12);
    if (qword_1005FFD30 != -1)
    {
      swift_once();
    }

    v22 = qword_100617118;
    sub_1004B6DF4();
    v23 = sub_1004BBED4();
    (*(v13 + 8))(v17, v12);
    (*(v19 + 8))(v21, v18);
    goto LABEL_20;
  }

  v24 = v53;
  if (swift_dynamicCast())
  {
    sub_1004BBDA4();
    (*(v13 + 16))(v15, v17, v12);
    if (qword_1005FFD30 != -1)
    {
      swift_once();
    }

    v25 = qword_100617118;
    sub_1004B6DF4();
    v23 = sub_1004BBED4();
    (*(v13 + 8))(v17, v12);
    (*(v50 + 8))(v10, v24);
    goto LABEL_20;
  }

  v27 = v51;
  v26 = v52;
  if (swift_dynamicCast())
  {
    sub_1004BBDA4();
    (*(v13 + 16))(v15, v17, v12);
    if (qword_1005FFD30 != -1)
    {
      swift_once();
    }

    v28 = qword_100617118;
    sub_1004B6DF4();
    v23 = sub_1004BBED4();
    (*(v13 + 8))(v17, v12);
    v29 = v47;
    goto LABEL_19;
  }

  v27 = v48;
  v26 = v49;
  if (swift_dynamicCast())
  {
    sub_1004BBDA4();
    (*(v13 + 16))(v15, v17, v12);
    if (qword_1005FFD30 != -1)
    {
      swift_once();
    }

    v30 = qword_100617118;
    sub_1004B6DF4();
    v23 = sub_1004BBED4();
    (*(v13 + 8))(v17, v12);
    v31 = &v60;
LABEL_18:
    v29 = *(v31 - 32);
LABEL_19:
    (*(v29 + 8))(v27, v26);
LABEL_20:
    sub_100004C6C(v55);
    sub_100007214(v56, &qword_100606290, &qword_1004D3280);
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
      sub_1004BBDA4();
      (*(v13 + 16))(v15, v17, v12);
      if (qword_1005FFD30 != -1)
      {
        swift_once();
      }

      v35 = qword_100617118;
      sub_1004B6DF4();
      v23 = sub_1004BBED4();
      (*(v13 + 8))(v17, v12);
      v31 = &v57;
      goto LABEL_18;
    }

    sub_100004C6C(v55);
LABEL_31:
    sub_100007214(v56, &qword_100606290, &qword_1004D3280);
    goto LABEL_32;
  }

  v34 = &v59;
LABEL_25:
  (*(*(v34 - 32) + 8))(v32, v33);
  sub_100004C6C(v55);
  sub_100007214(v56, &qword_100606290, &qword_1004D3280);
LABEL_32:
  sub_1004BBDA4();
  (*(v13 + 16))(v15, v17, v12);
  if (qword_1005FFD30 != -1)
  {
    swift_once();
  }

  v36 = qword_100617118;
  sub_1004B6DF4();
  v23 = sub_1004BBED4();
  (*(v13 + 8))(v17, v12);
  return v23;
}

uint64_t sub_1001EA2FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *&v104 = a4;
  *(&v104 + 1) = a5;
  v122 = a1;
  v123 = a3;
  v105 = a2;
  v5 = sub_1004B8104();
  v102 = *(v5 - 8);
  v103 = v5;
  __chkstk_darwin();
  v101 = &v99 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  __chkstk_darwin();
  v100 = (&v99 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v109 = &v99 - v8;
  v9 = sub_1004B6D14();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v99 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004B6E64();
  __chkstk_darwin();
  v14 = &v99 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1004BBE14();
  v16 = *(v15 - 8);
  __chkstk_darwin();
  v18 = &v99 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v20 = &v99 - v19;
  sub_1004BBDA4();
  v111 = *(v16 + 16);
  v112 = v16 + 16;
  v111(v18, v20, v15);
  if (qword_1005FFD30 != -1)
  {
    swift_once();
  }

  v21 = qword_100617118;
  v106 = qword_100617118;
  sub_1004B6DF4();
  v113 = v18;
  v110 = v21;
  v116 = v14;
  v22 = sub_1004BBED4();
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
  v27 = sub_1004B6CE4();
  v29 = v28;
  v30 = *(v10 + 8);
  v118 = v12;
  v119 = v10 + 8;
  v120 = v9;
  v107 = v30;
  v30(v12, v9);
  v31 = sub_1000183D4(0, 1, 1, _swiftEmptyArrayStorage);
  v33 = *(v31 + 2);
  v32 = *(v31 + 3);
  if (v33 >= v32 >> 1)
  {
    v31 = sub_1000183D4((v32 > 1), v33 + 1, 1, v31);
  }

  v34 = v105;
  *(v31 + 2) = v33 + 1;
  v35 = &v31[56 * v33];
  *(v35 + 4) = v27;
  *(v35 + 5) = v29;
  *(v35 + 6) = v22;
  *(v35 + 7) = v24;
  v35[64] = 2;
  *(v35 + 9) = &unk_1004D32A0;
  *(v35 + 10) = v26;
  v36 = v109;
  sub_1001F2120(v34, v109, type metadata accessor for PlaybackIntentDescriptor.IntentType);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v37 = v101;
    v38 = v102;
    v39 = v36;
    v40 = v103;
    (*(v102 + 32))(v101, v39, v103);
    v109 = sub_1004B80D4();
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
    v47 = sub_1001F2420(v46, 0, v45);

    if (v47)
    {
      sub_1004BBDA4();
      v48 = v117;
      v111(v113, v42, v117);
      v49 = v106;
      sub_1004B6DF4();
      v50 = sub_1004BBED4();
      v52 = v51;
      v108(v42, v48);
      v53 = swift_allocObject();
      *(v53 + 16) = v122;
      _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
      v54 = sub_1004B6CE4();
      v56 = v55;
      v107(v41, v120);
      v58 = *(v31 + 2);
      v57 = *(v31 + 3);
      if (v58 >= v57 >> 1)
      {
        v31 = sub_1000183D4((v57 > 1), v58 + 1, 1, v31);
      }

      *(v31 + 2) = v58 + 1;
      v59 = &v31[56 * v58];
      *(v59 + 4) = v54;
      *(v59 + 5) = v56;
      *(v59 + 6) = v50;
      *(v59 + 7) = v52;
      v59[64] = 2;
      *(v59 + 9) = &unk_1004D32D0;
      *(v59 + 10) = v53;
      v41 = v118;
      v42 = v114;
      v34 = v105;
    }
  }

  v60 = v100;
  sub_1001F2120(v34, v100, type metadata accessor for PlaybackIntentDescriptor.IntentType);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v61 = v101;
    v62 = v102;
    v63 = v60;
    v64 = v103;
    (*(v102 + 32))(v101, v63, v103);
    v65 = sub_1004B80D4();
    (*(v62 + 8))(v61, v64);
  }

  else
  {
    v65 = *v60;
  }

  v66 = *(v123 + v43);
  v121 = v65;
  if (v66 && (, v67 = v65, v68 = sub_1001F2420(v67, 1, v66), v67, , v68))
  {
    sub_1004BBDA4();
    v69 = v117;
    v111(v113, v42, v117);
    v70 = v106;
    sub_1004B6DF4();
    v71 = sub_1004BBED4();
    v72 = v42;
    v74 = v73;
    v108(v72, v69);
    v75 = swift_allocObject();
    *(v75 + 16) = v122;
    _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
    v76 = sub_1004B6CE4();
    v78 = v77;
    v107(v41, v120);
    v80 = *(v31 + 2);
    v79 = *(v31 + 3);
    if (v80 >= v79 >> 1)
    {
      v31 = sub_1000183D4((v79 > 1), v80 + 1, 1, v31);
    }

    *(v31 + 2) = v80 + 1;
    v81 = &v31[56 * v80];
    *(v81 + 4) = v76;
    *(v81 + 5) = v78;
    *(v81 + 6) = v71;
    *(v81 + 7) = v74;
    v81[64] = 2;
    *(v81 + 9) = &unk_1004D32C0;
    *(v81 + 10) = v75;
    v82 = v122;
    v41 = v118;
    v42 = v114;
  }

  else
  {
    v82 = v122;
  }

  sub_1004BBDA4();
  v83 = v117;
  v111(v113, v42, v117);
  v84 = v106;
  sub_1004B6DF4();
  v85 = sub_1004BBED4();
  v87 = v86;
  v108(v42, v83);
  v88 = swift_allocObject();
  *(v88 + 16) = v82;
  _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
  v89 = sub_1004B6CE4();
  v91 = v90;
  v107(v41, v120);
  v93 = *(v31 + 2);
  v92 = *(v31 + 3);
  if (v93 >= v92 >> 1)
  {
    v31 = sub_1000183D4((v92 > 1), v93 + 1, 1, v31);
  }

  *(v31 + 2) = v93 + 1;
  v94 = &v31[56 * v93];
  *(v94 + 4) = v89;
  *(v94 + 5) = v91;
  *(v94 + 6) = v85;
  *(v94 + 7) = v87;
  v94[64] = 0;
  *(v94 + 9) = &unk_1004D32B0;
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
  sub_100009178((v123 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator), v95);
  v125[2] = v130;
  v125[3] = v131;
  v126 = v132;
  v125[0] = v128;
  v125[1] = v129;
  v127 = 0;
  v97 = *(v96 + 8);

  sub_1000C7A60(&v128, &v124);
  v97(v125, v95, v96);
  sub_100052310(&v128);

  return sub_1001F3874(v125);
}

uint64_t sub_1001EADE4(uint64_t a1, uint64_t a2)
{
  v3 = *(*(*(v2 + 16) + 64) + 40);
  *v3 = vdupq_n_s64(2uLL);
  v3[1].i8[0] = 0;
  swift_continuation_resume();
  v4 = *(v2 + 8);

  return v4();
}

uint64_t sub_1001EAE90(uint64_t a1, uint64_t a2)
{
  v3 = *(*(*(v2 + 16) + 64) + 40);
  *v3 = xmmword_1004C51C0;
  *(v3 + 16) = 0;
  swift_continuation_resume();
  v4 = *(v2 + 8);

  return v4();
}

uint64_t sub_1001EAF3C(uint64_t a1, uint64_t a2)
{
  v3 = *(*(*(v2 + 16) + 64) + 40);
  *v3 = xmmword_1004C51D0;
  *(v3 + 16) = 0;
  swift_continuation_resume();
  v4 = *(v2 + 8);

  return v4();
}

uint64_t sub_1001EAFE8(uint64_t a1, uint64_t a2)
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
  if (qword_100600128 != -1)
  {
    swift_once();
  }

  v1 = static SharedListening.Event.properties;

  return v1;
}

uint64_t sub_1001EB1B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_1004BC474();
  v4[3] = sub_1004BC464();
  v6 = sub_1004BC3E4();
  v4[4] = v6;
  v4[5] = v5;

  return _swift_task_switch(sub_1001EB250, v6, v5);
}

uint64_t sub_1001EB250()
{
  v1 = (v0[2] + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator);
  v2 = v1[3];
  v3 = v1[4];
  sub_100009178(v1, v2);
  v0[6] = (*(v3 + 40))(v2, v3);
  v4 = swift_task_alloc();
  v0[7] = v4;
  *v4 = v0;
  v4[1] = sub_1001EB330;

  return GroupActivitiesManager.leave(performLeaveCommand:)(0);
}

uint64_t sub_1001EB330()
{
  v1 = *v0;

  v2 = *(v1 + 40);
  v3 = *(v1 + 32);

  return _swift_task_switch(sub_1001EB474, v3, v2);
}

uint64_t sub_1001EB474()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001EB4D4(uint64_t a1)
{
  v34 = a1;
  v33 = sub_1004B6D14();
  v32 = *(v33 - 8);
  __chkstk_darwin();
  v31 = &v26 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004B6E64();
  __chkstk_darwin();
  v2 = sub_1004BBE14();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = &v26 - v6;
  sub_1004BBDA4();
  v8 = *(v3 + 16);
  v8(v5, v7, v2);
  if (qword_1005FFD30 != -1)
  {
    swift_once();
  }

  v9 = qword_100617118;
  sub_1004B6DF4();
  v10 = v9;
  v30 = sub_1004BBED4();
  v29 = v11;
  v12 = *(v3 + 8);
  v12(v7, v2);
  sub_1004BBDA4();
  v8(v5, v7, v2);
  sub_1004B6DF4();
  v28 = sub_1004BBED4();
  v27 = v13;
  v12(v7, v2);
  sub_100003ABC(&qword_1006011F0, &qword_1004C8160);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1004C50A0;
  sub_1004BBDA4();
  v8(v5, v7, v2);
  sub_1004B6DF4();
  v15 = sub_1004BBED4();
  v17 = v16;
  v12(v7, v2);
  v18 = v31;
  _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
  v19 = sub_1004B6CE4();
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
  sub_100009178((v34 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator), v22);
  v36[2] = v41;
  v36[3] = v42;
  v37 = v43;
  v36[0] = v39;
  v36[1] = v40;
  v38 = 0;
  v24 = *(v23 + 8);
  sub_1000C7A60(&v39, v35);
  v24(v36, v22, v23);
  sub_100052310(&v39);
  return sub_1001F3874(v36);
}

void sub_1001EBA14(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  sub_10003E13C(&v14, v18);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = a2;
  sub_100038C10(v18, 0x79546E6F69746361, 0xEA00000000006570, isUniquelyReferenced_nonNull_native);
  v8 = v17;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    sub_10001342C(Strong + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator, &v14);

    v11 = v15;
    v12 = v16;
    sub_100009178(&v14, v15);
    (*(v12 + 24))(v8, v11, v12);

    sub_100004C6C(&v14);
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

void sub_1001EBB90(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X8>)
{
  v4 = v3;
  v54 = a1;
  v55 = a2;
  v53 = sub_1004B6D14();
  v6 = *(v53 - 8);
  *&v7 = __chkstk_darwin().n128_u64[0];
  v52 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [v4 buttons];
  sub_100009130(0, &qword_100606190, ICStoreDialogResponseButton_ptr);
  v10 = sub_1004BC2A4();

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
        v11 = sub_1004BD484();
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
        v18 = sub_1004BBE64();
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
      sub_10002F518(v22, v21);
      v24 = v52;
      _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
      v25 = sub_1004B6CE4();
      v4 = v26;
      (*v47)(v24, v53);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v14 = sub_1000183D4(0, *(v14 + 2) + 1, 1, v14);
      }

      a3 = *(v14 + 2);
      v27 = *(v14 + 3);
      if (a3 >= v27 >> 1)
      {
        v14 = sub_1000183D4((v27 > 1), a3 + 1, 1, v14);
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
      *(v29 + 9) = &unk_1004D30D8;
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
    v12 = sub_1004BD6A4();
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
    v35 = sub_1004BBE64();
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
    v41 = sub_1004BBE64();
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

uint64_t sub_1001EBF64(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
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

    sub_1001EBB90(sub_1001F4470, v8, v16);

    v9 = *(v6 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator + 24);
    v10 = *(v6 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator + 32);
    sub_100009178((v6 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator), v9);
    v13[2] = v16[2];
    v13[3] = v16[3];
    v14 = v17;
    v13[0] = v16[0];
    v13[1] = v16[1];
    v15 = 0;
    v11 = *(v10 + 8);
    sub_1000C7A60(v16, v12);
    v11(v13, v9, v10);
    sub_100052310(v16);
    return sub_1001F3874(v13);
  }

  return result;
}

double PlaybackController.engine(_:didFailToPlayFirstItem:withError:)(uint64_t a1, void *a2, uint64_t a3)
{
  sub_100009130(0, &qword_100603570, OS_dispatch_queue_ptr);
  v6 = swift_allocObject();
  v6[2] = a3;
  v6[3] = v3;
  v6[4] = a2;
  swift_errorRetain();
  v7 = a2;
  v8 = v3;
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_1001F3204, v6);

  return result;
}

void sub_1001EC1FC(uint64_t a1, uint64_t a2, void *a3)
{
  v163 = a3;
  v166 = a2;
  sub_100003ABC(&qword_1006025E8, &qword_1004CB0C8);
  __chkstk_darwin();
  v5 = &v151 - v4;
  sub_100003ABC(&unk_100606170, &qword_1004CB740);
  __chkstk_darwin();
  v7 = &v151 - v6;
  if (qword_100600050 != -1)
  {
    swift_once();
  }

  v8 = sub_1004B80B4();
  sub_100007084(v8, static Logger.playbackController);
  swift_errorRetain();
  v9 = sub_1004B8094();
  v10 = sub_1004BC984();

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
    sub_100003ABC(&qword_100604C30, &qword_1004C8490);
    v14 = sub_1004BBF04();
    v16 = sub_100012018(v14, v15, &v174);

    *(v12 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v9, v10, "didFailToPlayFirstItem with error=%{public}s", v12, 0xCu);
    sub_100004C6C(v13);
  }

  if ((*(v166 + OBJC_IVAR____TtC9MusicCore18PlaybackController_isErrorAlertPresented) & 1) == 0)
  {
    v156 = OBJC_IVAR____TtC9MusicCore18PlaybackController_isErrorAlertPresented;
    v17 = sub_1004B69A4();
    v18 = [v17 userInfo];
    v19 = sub_1004BBC44();

    v20 = *(v19 + 16);
    v160 = v17;
    if (v20 && (v21 = sub_1000346D4(0x676F6C616964, 0xE600000000000000), (v22 & 1) != 0))
    {
      sub_100004DE4(*(v19 + 56) + 32 * v21, &v174);

      sub_100003ABC(&qword_100602EC8, &qword_1004CD480);
      if (swift_dynamicCast())
      {

        v23 = sub_1004B8094();
        v24 = sub_1004BC9A4();

        if (os_log_type_enabled(v23, v24))
        {
          v25 = swift_slowAlloc();
          v171 = swift_slowAlloc();
          *&v174 = v171;
          *v25 = 136446210;
          v26 = sub_1004BBC54();
          v28 = sub_100012018(v26, v27, &v174);

          *(v25 + 4) = v28;
          v17 = v160;
          _os_log_impl(&_mh_execute_header, v23, v24, "Found an error dialog=%{public}s", v25, 0xCu);
          sub_100004C6C(v171);
        }

        v29 = objc_allocWithZone(ICStoreDialogResponse);
        isa = sub_1004BBC24().super.isa;

        v31 = [v29 initWithResponseDictionary:isa];

        sub_1001EBB90(0, 0, &v174);
        v196 = v176;
        v197 = v177;
        v198 = v178;
        v194 = v174;
        v195 = v175;
LABEL_14:
        v32 = [v17 userInfo];
        v33 = sub_1004BBC44();

        v34 = sub_1004BBE64();
        if (*(v33 + 16))
        {
          v36 = sub_1000346D4(v34, v35);
          v38 = v37;

          if (v38)
          {
            sub_100004DE4(*(v33 + 56) + 32 * v36, &v174);

            sub_100009130(0, &qword_1006014B0, NSError_ptr);
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
            sub_1001ED988(a1, v41, v42, v40);
            if (v39)
            {
              v43 = v39;
              sub_1001ED988(v43, v41, v42, v40);
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
              v47 = sub_1004BBE64();
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
              v54 = sub_1004BBE64();
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
                  sub_100009130(0, &qword_1006086C0, MPModelRadioStationKind_ptr);
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
                  *(v61 + 16) = sub_1001F3C98;
                  *(v61 + 24) = &v151 - 8;
                  *&v176 = sub_1001F3CC0;
                  *(&v176 + 1) = v61;
                  *&v174 = _NSConcreteStackBlock;
                  *(&v174 + 1) = 1107296256;
                  *&v175 = sub_10011FE68;
                  *(&v175 + 1) = &unk_1005B7E30;
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
                    *(v65 + 16) = sub_1001F3CC8;
                    *(v65 + 24) = &v151 - 4;
                    *&v176 = sub_1001F3CC0;
                    *(&v176 + 1) = v65;
                    *&v174 = _NSConcreteStackBlock;
                    *(&v174 + 1) = 1107296256;
                    *&v175 = sub_10011FE68;
                    *(&v175 + 1) = &unk_1005B7E80;
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
                          sub_10001342C(v166 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator, &v199);
                          v71 = *(&v200 + 1);
                          v72 = v201;
                          sub_100009178(&v199, *(&v200 + 1));
                          v73 = sub_1004BB744();
                          v74 = v50;
                          v75 = v172;
                          sub_1004B7F74();
                          v76 = *(v73 - 8);
                          if ((*(v76 + 48))(v75, 1, v73) == 1)
                          {
                            sub_100007214(v75, &unk_100606170, &qword_1004CB740);
                            v174 = 0u;
                            v175 = 0u;
                            *&v176 = 0;
                          }

                          else
                          {
                            *(&v175 + 1) = v73;
                            *&v176 = &protocol witness table for Station;
                            v90 = sub_1000133B0(&v174);
                            (*(v76 + 32))(v90, v75, v73);
                          }

                          v39 = v161;
                          v179 = 2;
                          (*(v72 + 8))(&v174, v71, v72);
                          sub_1001F3874(&v174);
                          sub_100004C6C(&v199);
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
                        sub_100115F10(v70, &v199);
LABEL_56:
                        sub_100007214(&v194, &qword_100602B60, &qword_1004D0580);

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
                        sub_1000C7A60(&v174, v86);
                        v154 = v84;
                        goto LABEL_64;
                      }

                      v79 = v168;
                      swift_beginAccess();
                      if (*v79)
                      {
                        v80 = v50;
                        sub_100116DD0(v70, 0, &v199);
                        goto LABEL_56;
                      }

                      v87 = v50;

                      v88 = sub_1004B69A4();
                      v89 = [objc_opt_self() playbackAlertControllerForItem:v163 contentType:0 error:v88 dismissalBlock:0];

                      if (v89)
                      {
                        sub_1001EDD1C(&v174);
                        sub_100007214(&v194, &qword_100602B60, &qword_1004D0580);

                        v187 = v176;
                        v188 = v177;
                        v189 = v178;
                        v185 = v174;
                        v186 = v175;
                      }

                      else
                      {
                        sub_100007214(&v194, &qword_100602B60, &qword_1004D0580);
                        v185 = 0u;
                        v186 = 0u;
                        v187 = 0u;
                        v188 = 0u;
                        v189 = 0;
                      }

                      v132 = v158;
                      v131 = v159;
                      sub_1001EE104(a1, v40, v159, v158);
                      if (v39)
                      {
                        v133 = v39;
                        sub_1001EE104(v133, v40, v131, v132);
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
                                  v119 = sub_1004BBE64();
                                  v121 = v120;

                                  v122 = sub_1004BBE64();
                                  if (v121)
                                  {
                                    if (v119 == v122 && v121 == v123)
                                    {

LABEL_80:
                                      if ([v39 code] != 40)
                                      {

                                        sub_100007214(&v174, &qword_100602B60, &qword_1004D0580);

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
                                        sub_1001EF998(v128, v130, 0, 0);

                                        sub_100007214(&v174, &qword_100602B60, &qword_1004D0580);

                                        goto LABEL_107;
                                      }

                                      v125 = [v163 modelGenericObject];
                                      if (v125)
                                      {
                                        v126 = v125;
                                        v127 = [v125 flattenedGenericObject];

                                        if (v127)
                                        {
                                          v128 = MPModelObject.bestIdentifier(for:)(2, 1);
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

                                    v124 = sub_1004BD9C4();

                                    if (v124)
                                    {
                                      goto LABEL_80;
                                    }

                                    sub_100007214(&v174, &qword_100602B60, &qword_1004D0580);

LABEL_108:

                                    return;
                                  }

                                  v94 = v162;
LABEL_87:

                                  sub_100007214(&v174, &qword_100602B60, &qword_1004D0580);

                                  goto LABEL_108;
                                }

LABEL_86:
                                sub_1004BBE64();
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
                              sub_1000C7A60(&v174, &v199);
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
                                  sub_10002F518(v105, v104);

                                  v168 = v104;
                                  sub_10002F518(v105, v104);
                                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                                  {
                                    v98 = sub_1000183D4(0, *(v98 + 2) + 1, 1, v98);
                                  }

                                  v111 = *(v98 + 2);
                                  v110 = *(v98 + 3);
                                  if (v111 >= v110 >> 1)
                                  {
                                    v98 = sub_1000183D4((v110 > 1), v111 + 1, 1, v98);
                                  }

                                  v99 += 7;

                                  sub_10003CC4C(v105, v168);
                                  *(v98 + 2) = v111 + 1;
                                  v112 = &v98[56 * v111];
                                  v113 = v170;
                                  *(v112 + 4) = v171;
                                  *(v112 + 5) = v101;
                                  *(v112 + 6) = v113;
                                  *(v112 + 7) = v103;
                                  v112[64] = v109;
                                  *(v112 + 9) = &unk_1004D30C8;
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
                              sub_100009178((v114 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator), v115);
                              v176 = v182;
                              v177 = v183;
                              v178 = v184;
                              v174 = v180;
                              v175 = v181;
                              v179 = 0;
                              v117 = *(v116 + 8);

                              sub_1000C7A60(&v180, &v173);
                              v117(&v174, v115, v116);
                              sub_100052310(&v185);
                              sub_100052310(&v180);
                              sub_1001F3874(&v174);
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
                            sub_10001342C(v166 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator, &v199);
                            v144 = *(&v200 + 1);
                            v145 = v201;
                            sub_100009178(&v199, *(&v200 + 1));
                            v146 = v143;
                            v147 = v170;
                            sub_1004B7634();
                            v148 = sub_1004B7644();
                            v149 = *(v148 - 8);
                            if ((*(v149 + 48))(v147, 1, v148) == 1)
                            {
                              sub_100007214(v147, &qword_1006025E8, &qword_1004CB0C8);
                              v174 = 0u;
                              v175 = 0u;
                              *&v176 = 0;
                            }

                            else
                            {
                              *(&v175 + 1) = v148;
                              *&v176 = sub_1001F3C50(&unk_100606180, &type metadata accessor for GenericMusicItem, &protocol conformance descriptor for GenericMusicItem);
                              v150 = sub_1000133B0(&v174);
                              (*(v149 + 32))(v150, v147, v148);
                            }

                            v179 = 2;
                            (*(v145 + 8))(&v174, v144, v145);

                            sub_1001F3874(&v174);
                            sub_100004C6C(&v199);
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
                        sub_100115F10(v137, &v199);
                      }

                      else
                      {
                        if ((*v168 & 1) == 0)
                        {

                          goto LABEL_126;
                        }

                        sub_100116DD0(v137, 0, &v199);
                      }

                      sub_100007214(&v185, &qword_100602B60, &qword_1004D0580);

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

void sub_1001ED988(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1004B69A4();
  v8 = sub_1004B69A4();
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

void sub_1001EDA30(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  v12[2] = a2;
  v12[3] = a3;
  v12[4] = a4;
  v12[5] = a5;
  v12[6] = a6;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_1001F4114;
  *(v13 + 24) = v12;
  v15[4] = sub_100124268;
  v15[5] = v13;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 1107296256;
  v15[2] = sub_10011FDEC;
  v15[3] = &unk_1005B7FC0;
  v14 = _Block_copy(v15);

  [a1 setRadioIdentifiersWithBlock:v14];
  _Block_release(v14);
  LOBYTE(a1) = swift_isEscapingClosureAtFileLocation();

  if (a1)
  {
    __break(1u);
  }
}

void sub_1001EDBB4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a3)
  {
    v9 = sub_1004BBE24();
  }

  else
  {
    v9 = 0;
  }

  [a1 setStationStringID:v9];

  [a1 setStationID:a4];
  if (a6)
  {
    v10 = sub_1004BBE24();
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;
  [a1 setStationHash:?];
}

void sub_1001EDC84(uint64_t a1, void *a2)
{
  objc_opt_self();
  v3 = swift_dynamicCastObjCClassUnconditional();
  v4 = [a2 stationName];
  [v3 setName:v4];
}

void sub_1001EDD1C(uint64_t a1@<X8>)
{
  v2 = v1;
  v48 = sub_1004B6D14();
  v4 = *(v48 - 8);
  *&v5 = __chkstk_darwin().n128_u64[0];
  v47 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [v1 actions];
  sub_100009130(0, &unk_100606208, UIAlertAction_ptr);
  v8 = sub_1004BC2A4();

  if (v8 >> 62)
  {
    v9 = sub_1004BD6A4();
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
      v12 = sub_1004BD484();
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
      v14 = sub_1001F4284;
    }

    else
    {
      v15 = 0;
    }

    v16 = [v13 title];
    if (v16)
    {
      v17 = v16;
      v18 = sub_1004BBE64();
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
    sub_10002F518(v14, v15);
    v21 = v13;
    v22 = v47;
    _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
    v23 = sub_1004B6CE4();
    v25 = v24;
    (*v43)(v22, v48);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = sub_1000183D4(0, *(v11 + 2) + 1, 1, v11);
    }

    v27 = *(v11 + 2);
    v26 = *(v11 + 3);
    if (v27 >= v26 >> 1)
    {
      v11 = sub_1000183D4((v26 > 1), v27 + 1, 1, v11);
    }

    ++v10;

    sub_10003CC4C(v14, v15);
    *(v11 + 2) = v27 + 1;
    v28 = &v11[56 * v27];
    *(v28 + 4) = v23;
    *(v28 + 5) = v25;
    v29 = v49;
    *(v28 + 6) = v50;
    *(v28 + 7) = v29;
    v28[64] = 2;
    *(v28 + 9) = &unk_1004D3128;
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
    v32 = sub_1004BBE64();
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
    v37 = sub_1004BBE64();
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

void sub_1001EE104(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_errorRetain();
  sub_100003ABC(&qword_100604C30, &qword_1004C8490);
  type metadata accessor for MPCError(0);
  if (swift_dynamicCast())
  {
    sub_1001F3C50(&qword_100600F90, type metadata accessor for MPCError, &unk_1004C7544);
    sub_1004B6964();

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

uint64_t sub_1001EE258(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[23] = a3;
  v4[24] = a4;
  v4[22] = a2;
  sub_100003ABC(&qword_1006014F0, &qword_1004C9B00);
  v4[25] = swift_task_alloc();

  return _swift_task_switch(sub_1001EE2F8, 0, 0);
}

uint64_t sub_1001EE2F8()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 176);
  v3 = *(v0 + 184);
  v4 = sub_1004BC4B4();
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
  sub_100013D04(v0 + 112, v0 + 144);
  sub_100013D04(v0 + 128, v0 + 160);
  sub_10002F518(v5, v6);
  sub_10000F778(v2, v0 + 16, &qword_100602B60, &qword_1004D0580);
  sub_1000FD6BC(0, 0, v1, &unk_1004D3138, v7);

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    Strong[OBJC_IVAR____TtC9MusicCore18PlaybackController_isErrorAlertPresented] = 0;
  }

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_1001EE4C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a4 + 40);
  if (v6)
  {
    v12 = (v6 + *v6);
    v9 = swift_task_alloc();
    *(v5 + 16) = v9;
    *v9 = v5;
    v9[1] = sub_1000136EC;

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
  sub_100009130(0, &qword_100603570, OS_dispatch_queue_ptr);
  v10 = swift_allocObject();
  v10[2] = a3;
  v10[3] = v5;
  v10[4] = a2;
  v10[5] = a4;
  v10[6] = a5;
  v11 = v5;
  v12 = a2;

  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_1001F3214, v10);

  return result;
}

id sub_1001EE7B4(uint64_t a1, void *a2, void (*a3)(void, void), void (*a4)(void, void), uint64_t a5)
{
  v120 = a2;
  v9 = sub_1004B6D14();
  v10 = *(v9 - 8);
  v115 = v9;
  v116 = v10;
  __chkstk_darwin();
  v114 = &v98 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004B6E64();
  __chkstk_darwin();
  v113 = &v98 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = sub_1004BBE14();
  v13 = *(v119 - 8);
  __chkstk_darwin();
  v15 = &v98 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v17 = &v98 - v16;
  if (qword_100600050 != -1)
  {
    swift_once();
  }

  v18 = sub_1004B80B4();
  sub_100007084(v18, static Logger.playbackController);
  v19 = sub_1004B8094();
  v20 = sub_1004BC984();
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
    v25 = sub_1004BBF04();
    v27 = v17;
    v28 = sub_100012018(v25, v26, v135);
    v29 = a5;
    v30 = a4;

    *(v23 + 4) = v28;
    v17 = v27;
    a3 = v118;
    _os_log_impl(&_mh_execute_header, v19, v20, "requiresAuthorizationToPlay with reason=%{public}s", v23, 0xCu);
    sub_100004C6C(v111);

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
      if (qword_1005FFE10 != -1)
      {
        swift_once();
      }

      swift_getKeyPath();
      swift_getKeyPath();
      sub_1004B85A4();

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
        sub_1004BBDA4();
        v45 = v112;
        v111 = *(v13 + 16);
        v111(v112, v17, v119);
        if (qword_1005FFD30 != -1)
        {
          swift_once();
        }

        v46 = qword_100617118;
        sub_1004B6DF4();
        v47 = v46;
        v48 = sub_1004BBED4();
        v109 = v49;
        v110 = v48;
        v50 = *(v13 + 8);
        v51 = v119;
        v50(v17, v119);
        v52 = v114;
        _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
        v53 = sub_1004B6CE4();
        v107 = v54;
        v108 = v53;
        (*(v116 + 8))(v52, v115);
        sub_1004BBDA4();
        v111(v45, v17, v51);
        sub_1004B6DF4();
        v55 = sub_1004BBED4();
        v57 = v56;
        v50(v17, v51);
        sub_100003ABC(&qword_1006011F0, &qword_1004C8160);
        v58 = swift_allocObject();
        *(v58 + 16) = xmmword_1004C50A0;
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
        sub_100009178((v120 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator), v61);
        v129 = v124;
        v130 = v125;
        *&v131 = v126;
        v127 = v122;
        v128 = v123;
        BYTE8(v131) = 0;
        v63 = *(v62 + 8);

        sub_1000C7A60(&v122, v121);
        v63(&v127, v61, v62);
        sub_1001F3874(&v127);
        v118(0, 0);
        sub_100052310(&v122);

        return sub_100051DEC(v135);
      }

      v106 = *(&v137 + 1);
      v107 = *(&v136 + 1);
      v33 = objc_opt_self();

      v108 = v32;

      v34 = [v33 standardUserDefaults];
      *&v122 = 0xD000000000000012;
      *(&v122 + 1) = 0x8000000100503550;
      sub_10000E7F4();
      NSUserDefaults.subscript.getter(&v127);

      v109 = v31;
      if (*(&v128 + 1))
      {
        sub_100003ABC(&unk_100603590, &unk_1004C8150);
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
            sub_1004BBDA4();
            v69 = v112;
            v102 = *(v13 + 16);
            v103 = v13 + 16;
            v102(v112, v17, v119);
            if (qword_1005FFD30 != -1)
            {
              swift_once();
            }

            v70 = qword_100617118;
            v71 = qword_100617118;
            v100 = v70;
            v72 = v71;
            sub_1004B6DF4();
            v73 = v72;
            v105 = sub_1004BBED4();
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
            v101 = sub_1004B6CE4();
            v110 = v80;
            v118 = v30;
            v81 = v115;
            v82 = v17;
            v83 = *(v116 + 8);
            v83(v79, v115);
            sub_1004BBDA4();
            v102(v69, v82, v76);
            sub_1004B6DF4();
            v116 = sub_1004BBED4();
            v113 = v84;
            v99(v82, v76);
            v85 = v81;
            v86 = swift_allocObject();
            *(v86 + 16) = v118;
            *(v86 + 24) = v29;

            _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
            v87 = sub_1004B6CE4();
            v89 = v88;
            v119 = v88;
            v83(v79, v85);
            sub_100003ABC(&qword_1006011F0, &qword_1004C8160);
            v90 = swift_allocObject();
            *(v90 + 16) = xmmword_1004C50C0;
            v92 = v110;
            v91 = v111;
            *(v90 + 32) = v101;
            *(v90 + 40) = v92;
            v93 = v104;
            *(v90 + 48) = v105;
            *(v90 + 56) = v91;
            *(v90 + 64) = 2;
            *(v90 + 72) = &unk_1004D30A8;
            *(v90 + 80) = v93;
            *(v90 + 88) = v87;
            *(v90 + 96) = v89;
            v94 = v113;
            *(v90 + 104) = v116;
            *(v90 + 112) = v94;
            *(v90 + 120) = 0;
            *(v90 + 128) = &unk_1004D30B8;
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
            v120 = sub_100009178((v120 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator), v95);
            v129 = v124;
            v130 = v125;
            *&v131 = v126;
            v127 = v122;
            v128 = v123;
            BYTE8(v131) = 0;
            v97 = *(v96 + 8);

            sub_1000C7A60(&v122, v121);
            v97(&v127, v95, v96);
            sub_100051DEC(v135);
            sub_100052310(&v122);

            return sub_1001F3874(&v127);
          }

          v117 = v13;

          result = [v36 cloudUniversalLibraryID];
          if (result)
          {
            v65 = result;
            v66 = sub_1004BBE64();
            v68 = v67;

            *&v127 = v66;
            *(&v127 + 1) = v68;
            __chkstk_darwin();
            *(&v98 - 2) = &v127;
            LOBYTE(v65) = sub_1000DFCA4(sub_1001F3B18, (&v98 - 4), v37);

            v13 = v117;
            v36 = v118;
            if (v65)
            {

              v30(1, 0);
              return sub_100051DEC(v135);
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
        sub_100007214(&v127, &qword_100605110, &unk_1004CD280);
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
    v42 = MPModelObject.bestIdentifier(for:)(2, 1);
    v44 = v43;
  }

  else
  {
    v42 = 0;
    v44 = 0;
  }

  sub_1001EF998(v42, v44, v30, v29);
}

uint64_t sub_1001EF4B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[9] = a4;
  v5[10] = a5;
  v5[8] = a3;
  return _swift_task_switch(sub_1001EF4D4, 0, 0);
}

uint64_t sub_1001EF4D4()
{
  v20 = v0;
  v1 = [*(v0 + 64) cloudUniversalLibraryID];
  if (!v1)
  {
    goto LABEL_16;
  }

  v2 = v1;
  v3 = sub_1004BBE64();
  v5 = v4;

  v6 = objc_opt_self();
  v7 = [v6 standardUserDefaults];
  *(v0 + 48) = 0xD000000000000012;
  *(v0 + 56) = 0x8000000100503550;
  v8 = sub_10000E7F4();
  NSUserDefaults.subscript.getter((v0 + 16));

  if (*(v0 + 40))
  {
    sub_100003ABC(&unk_100603590, &unk_1004C8150);
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
          v9 = sub_100017CC8(isUniquelyReferenced_nonNull_native, v10, 1, v9);
          v18 = v9;
        }

        sub_1001330CC(0, v10 - 999, 0);
      }

      goto LABEL_11;
    }
  }

  else
  {
    sub_100007214(v0 + 16, &qword_100605110, &unk_1004CD280);
  }

  v9 = _swiftEmptyArrayStorage;
LABEL_11:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v9 = sub_100017CC8(0, *(v9 + 2) + 1, 1, v9);
  }

  v13 = *(v9 + 2);
  v12 = *(v9 + 3);
  if (v13 >= v12 >> 1)
  {
    v9 = sub_100017CC8((v12 > 1), v13 + 1, 1, v9);
  }

  *(v9 + 2) = v13 + 1;
  v14 = &v9[16 * v13];
  *(v14 + 4) = v3;
  *(v14 + 5) = v5;
  v15 = [v6 standardUserDefaults];
  v19[3] = sub_100003ABC(&unk_100603590, &unk_1004C8150);
  v19[0] = v9;
  *(v0 + 16) = 0xD000000000000012;
  *(v0 + 24) = 0x8000000100503550;
  NSUserDefaults.subscript.setter(v19, v0 + 16, &type metadata for String, v8);

LABEL_16:
  (*(v0 + 72))(1, 0);
  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_1001EF778(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a3;
  *(v4 + 24) = a4;
  return _swift_task_switch(sub_1001EF798, 0, 0);
}

uint64_t sub_1001EF798()
{
  (*(v0 + 16))(0, 0);
  v1 = *(v0 + 8);

  return v1();
}

void sub_1001EF928(char a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_1004B69A4();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1 & 1);
}

void sub_1001EF998(uint64_t a1, uint64_t a2, void (*a3)(void, void), uint64_t a4)
{
  v5 = v4;
  v71 = a4;
  v74 = a3;
  sub_100003ABC(&qword_100600DE0, &unk_1004C66D0);
  __chkstk_darwin();
  v70 = &v65 - v8;
  v73 = sub_1004B6B04();
  v9 = *(v73 - 8);
  __chkstk_darwin();
  v68 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v12 = &v65 - v11;
  if (qword_100600050 != -1)
  {
    swift_once();
  }

  v72 = sub_1004B80B4();
  sub_100007084(v72, static Logger.playbackController);

  v13 = sub_1004B8094();
  v14 = sub_1004BC9A4();

  v15 = os_log_type_enabled(v13, v14);
  v69 = a1;
  if (v15)
  {
    v16 = a2;
    v17 = v12;
    v18 = v9;
    v19 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    *&v75[0] = v67;
    *v19 = 136446210;
    v20 = v5;
    v21 = v19;
    *&v80[0] = a1;
    *(&v80[0] + 1) = v16;

    sub_100003ABC(&unk_100606160, &qword_1004CAC60);
    v22 = sub_1004BBF04();
    v24 = sub_100012018(v22, v23, v75);
    v9 = v18;
    v12 = v17;
    a2 = v16;

    v25 = v21;
    *(v21 + 1) = v24;
    v26 = v73;
    v5 = v20;
    _os_log_impl(&_mh_execute_header, v13, v14, "Presenting Age Verification with model identifier=%{public}s", v25, 0xCu);
    sub_100004C6C(v67);
  }

  else
  {

    v26 = v73;
  }

  if (qword_1005FFE10 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();

  v80[4] = v76;
  v80[5] = v77;
  v80[6] = v78;
  v80[7] = v79;
  v80[0] = v75[0];
  v80[1] = v75[1];
  v80[2] = v75[2];
  v80[3] = v75[3];
  sub_100051DEC(v80);
  if (BYTE1(v80[0]) != 1)
  {
    v32 = *(v5 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator + 24);
    v33 = *(v5 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator + 32);
    sub_100009178((v5 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator), v32);
    v34 = sub_100117524(v75);
    BYTE8(v76) = 0;
    (*(v33 + 8))(v75, v32, v33, v34);
    sub_1001F3874(v75);
    if (qword_100600058 != -1)
    {
      swift_once();
    }

    sub_100007084(v72, qword_100606000);
    v28 = sub_1004B8094();
    v29 = sub_1004BC984();
    if (!os_log_type_enabled(v28, v29))
    {
      goto LABEL_21;
    }

    v30 = swift_slowAlloc();
    *v30 = 0;
    v31 = "Device is offline. Age Verification cannot proceed. Displaying fallback alert instead.";
    goto LABEL_20;
  }

  if (qword_100600718 != -1)
  {
    swift_once();
  }

  v27 = v70;
  ExplicitRestrictionsController.accountVerificationURL.getter(v70);
  if ((*(v9 + 48))(v27, 1, v26) == 1)
  {
    sub_100007214(v27, &qword_100600DE0, &unk_1004C66D0);
    if (qword_100600058 != -1)
    {
      swift_once();
    }

    sub_100007084(v72, qword_100606000);
    v28 = sub_1004B8094();
    v29 = sub_1004BC984();
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

    if (v74)
    {
      v74(0, 0);
    }

    return;
  }

  v35 = *(v9 + 32);
  v35(v12, v27, v26);
  v36 = qword_100600058;
  v66 = v5;
  if (a2)
  {
    v70 = v12;

    if (v36 != -1)
    {
      swift_once();
    }

    sub_100007084(v72, qword_100606000);
    v37 = sub_1004B8094();
    v38 = sub_1004BC964();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&_mh_execute_header, v37, v38, "modelObjectIdentifier parameters found for age verification context", v39, 2u);
    }

    sub_100003ABC(&unk_100606150, &qword_1004CCAD8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1004C50A0;
    *(inited + 32) = 0x64496D616461;
    v41 = inited + 32;
    v42 = v69;
    *(inited + 40) = 0xE600000000000000;
    *(inited + 48) = v42;
    *(inited + 56) = a2;
    v43 = sub_10003C464(inited);
    swift_setDeallocating();
    sub_100007214(v41, &qword_100602EA0, &qword_1004CCAE0);
    v44 = v68;
    v12 = v70;
    URL.parametrize(_:)(v43, v68);

    (*(v9 + 8))(v12, v26);
    v35(v12, v44, v26);
    v46 = v9;
  }

  else
  {
    if (qword_100600058 != -1)
    {
      swift_once();
    }

    sub_100007084(v72, qword_100606000);
    v47 = sub_1004B8094();
    v48 = sub_1004BC984();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&_mh_execute_header, v47, v48, "modelObjectIdentifier parameters missing for age verification context", v49, 2u);
    }

    v46 = v9;
  }

  v50 = [objc_allocWithZone(_s22AgeVerificationWrapperCMa(0 v45))];
  v51 = swift_allocObject();
  v52 = v66;
  swift_unknownObjectWeakInit();
  v53 = swift_allocObject();
  v54 = v74;
  v55 = v71;
  *(v53 + 2) = v74;
  *(v53 + 3) = v55;
  *(v53 + 4) = v51;
  v56 = &v50[OBJC_IVAR____TtCC9MusicCore30ExplicitRestrictionsControllerP33_49A4F392108DD8BCF77701E27C86571422AgeVerificationWrapper_completion];
  v57 = *&v50[OBJC_IVAR____TtCC9MusicCore30ExplicitRestrictionsControllerP33_49A4F392108DD8BCF77701E27C86571422AgeVerificationWrapper_completion];
  v58 = *&v50[OBJC_IVAR____TtCC9MusicCore30ExplicitRestrictionsControllerP33_49A4F392108DD8BCF77701E27C86571422AgeVerificationWrapper_completion + 8];
  *v56 = sub_1001F3924;
  v56[1] = v53;
  sub_10002F518(v54, v55);

  sub_10003CC4C(v57, v58);

  v59 = *(v52 + OBJC_IVAR____TtC9MusicCore18PlaybackController_ageVerificationWrapper);
  *(v52 + OBJC_IVAR____TtC9MusicCore18PlaybackController_ageVerificationWrapper) = v50;
  v60 = v50;

  v61 = *(v52 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator + 24);
  v62 = *(v52 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator + 32);
  sub_100009178((v52 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator), v61);
  v63 = *(v62 + 16);
  v64 = v60;
  v63(v12, v64, v61, v62);

  (*(v46 + 8))(v12, v73);
}

void sub_1001F0304(void *a1, char a2, void (*a3)(void, void), uint64_t a4, uint64_t a5)
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
    a1 = MPModelObject.bestIdentifier(for:)(2, 1);
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  sub_1001EF998(a1, v6, a2, a3);
}

uint64_t PlaybackController.displayAgeVerification(for:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = sub_1004BC474();
  v2[5] = sub_1004BC464();
  v4 = sub_1004BC3E4();
  v2[6] = v4;
  v2[7] = v3;

  return _swift_task_switch(sub_1001F04F4, v4, v3);
}

uint64_t sub_1001F04F4(uint64_t a1)
{
  v6 = v1[1];
  v2 = sub_1004BC464();
  v1[4].i64[0] = v2;
  v3 = swift_task_alloc();
  v1[4].i64[1] = v3;
  v3[1] = vextq_s8(v6, v6, 8uLL);
  v4 = swift_task_alloc();
  v1[5].i64[0] = v4;
  *v4 = v1;
  v4[1] = sub_1001F0608;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v4, v2, &protocol witness table for MainActor, 0xD00000000000001CLL, 0x8000000100503390, sub_1001F3218, v3, &type metadata for () + 1);
}

uint64_t sub_1001F0608()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = *(v2 + 48);
    v4 = *(v2 + 56);
    v5 = sub_1001F0790;
  }

  else
  {

    v3 = *(v2 + 48);
    v4 = *(v2 + 56);
    v5 = sub_1001F072C;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_1001F072C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001F0790()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001F0808(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_100003ABC(&unk_100606140, &unk_1004D3040);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v15 - v7;
  sub_100009178(a3, a3[3]);
  v9 = sub_1004BAC74();
  v11 = v10;
  (*(v6 + 16))(v8, a1, v5);
  v12 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v13 = swift_allocObject();
  (*(v6 + 32))(v13 + v12, v8, v5);
  sub_1001EF998(v9, v11, sub_1001F37E0, v13);
}

uint64_t sub_1001F0998(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    swift_errorRetain();
    sub_100003ABC(&unk_100606140, &unk_1004D3040);
    return sub_1004BC3F4();
  }

  else
  {
    sub_100003ABC(&unk_100606140, &unk_1004D3040);
    return sub_1004BC404();
  }
}

id sub_1001F0AF8()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = *&v0[OBJC_IVAR____TtCC9MusicCore30ExplicitRestrictionsControllerP33_49A4F392108DD8BCF77701E27C86571422AgeVerificationWrapper_completion];
  if (v3)
  {
    v4 = *&v0[OBJC_IVAR____TtCC9MusicCore30ExplicitRestrictionsControllerP33_49A4F392108DD8BCF77701E27C86571422AgeVerificationWrapper_completion + 8];

    v3(0, 0);
    sub_10003CC4C(v3, v4);
  }

  v6.receiver = v1;
  v6.super_class = ObjectType;
  return objc_msgSendSuper2(&v6, "dealloc");
}

double sub_1001F0C30(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  sub_100009130(0, &qword_100603570, OS_dispatch_queue_ptr);
  v8 = swift_allocObject();
  v8[2] = a2;
  v8[3] = a3;
  v8[4] = a4;
  v8[5] = a1;

  v9 = a4;
  v10 = a1;
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_1001F3658, v8);

  return result;
}

char *sub_1001F0CEC(char *result, uint64_t a2)
{
  v2 = &result[OBJC_IVAR____TtCC9MusicCore30ExplicitRestrictionsControllerP33_49A4F392108DD8BCF77701E27C86571422AgeVerificationWrapper_completion];
  v3 = *&result[OBJC_IVAR____TtCC9MusicCore30ExplicitRestrictionsControllerP33_49A4F392108DD8BCF77701E27C86571422AgeVerificationWrapper_completion];
  if (v3)
  {
    v4 = result;
    v5 = *(v2 + 1);
    *v2 = 0;
    *(v2 + 1) = 0;
    v6 = [objc_opt_self() defaultManager];
    v7 = swift_allocObject();
    v7[2] = v3;
    v7[3] = v5;
    v7[4] = v4;
    v10[4] = sub_1001F35EC;
    v10[5] = v7;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 1107296256;
    v10[2] = sub_1000C81CC;
    v10[3] = &unk_1005B7C28;
    v8 = _Block_copy(v10);
    sub_10002F518(v3, v5);
    v9 = v4;

    [v6 getAgeVerificationStateWithCompletion:v8];
    _Block_release(v8);

    return sub_10003CC4C(v3, v5);
  }

  return result;
}

uint64_t sub_1001F0F28(uint64_t a1, uint64_t a2)
{
  v2 = sub_1004B80B4();
  sub_100007108(v2, static Logger.playbackController);
  sub_100007084(v2, static Logger.playbackController);
  return sub_1004B80A4();
}

uint64_t sub_1001F1044(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a3;
  return _swift_task_switch(sub_1001F1068, 0, 0);
}

uint64_t sub_1001F1068()
{
  v1 = v0[2];
  if (v1)
  {
    v1(v0[4]);
  }

  v2 = v0[1];

  return v2();
}

uint64_t sub_1001F10D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[2] = a3;
  v6[3] = a4;
  sub_100003ABC(&qword_1006014F0, &qword_1004C9B00);
  v6[6] = swift_task_alloc();
  sub_100003ABC(&qword_100600DE0, &unk_1004C66D0);
  v6[7] = swift_task_alloc();
  v7 = sub_1004B6B04();
  v6[8] = v7;
  v8 = *(v7 - 8);
  v6[9] = v8;
  v6[10] = *(v8 + 64);
  v6[11] = swift_task_alloc();
  v6[12] = swift_task_alloc();

  return _swift_task_switch(sub_1001F121C, 0, 0);
}

uint64_t sub_1001F121C()
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

    v13 = sub_1004BC4B4();
    (*(*(v13 - 8) + 56))(v8, 1, 1, v13);
    v14 = swift_allocObject();
    v14[2] = 0;
    v14[3] = 0;
    v14[4] = v10;
    v14[5] = v9;
    v14[6] = v12;
    v15 = v9;
    sub_1000FDCB4(0, 0, v8, &unk_1004D30F0, v14);

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
  sub_1004BBE64();

  sub_1004B6AC4();

  if ((*(v6 + 48))(v7, 1, v5) == 1)
  {
    sub_100007214(*(v0 + 56), &qword_100600DE0, &unk_1004C66D0);
    goto LABEL_5;
  }

  v20 = *(v0 + 88);
  v19 = *(v0 + 96);
  v21 = *(v0 + 72);
  v22 = *(v0 + 64);
  v23 = *(v0 + 48);
  v24 = *(v21 + 32);
  v24(v19, *(v0 + 56), v22);
  v25 = sub_1004BC4B4();
  (*(*(v25 - 8) + 56))(v23, 1, 1, v25);
  (*(v21 + 16))(v20, v19, v22);
  v26 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = 0;
  *(v27 + 24) = 0;
  v24(v27 + v26, v20, v22);
  sub_1000FD9BC(0, 0, v23, &unk_1004D3100, v27);

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

uint64_t sub_1001F15C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 144) = a1;
  *(v4 + 152) = a4;
  return _swift_task_switch(sub_1001F15E8, 0, 0);
}

uint64_t sub_1001F15E8(uint64_t a1, uint64_t a2)
{
  *(v2 + 160) = objc_opt_self();
  sub_1004BC474();
  *(v2 + 168) = sub_1004BC464();
  v4 = sub_1004BC3E4();

  return _swift_task_switch(sub_1001F168C, v4, v3);
}

uint64_t sub_1001F168C()
{
  v1 = *(v0 + 160);

  *(v0 + 176) = [v1 sharedApplication];

  return _swift_task_switch(sub_1001F1710, 0, 0);
}

uint64_t sub_1001F1710@<X0>(NSURL *x8_0@<X8>)
{
  v3 = v2[22];
  sub_1004B6A44(x8_0);
  v5 = v4;
  v2[23] = v4;
  sub_10003D128(_swiftEmptyArrayStorage);
  type metadata accessor for OpenExternalURLOptionsKey(0);
  sub_1001F3C50(&qword_100600FD0, type metadata accessor for OpenExternalURLOptionsKey, &unk_1004C7654);
  isa = sub_1004BBC24().super.isa;
  v2[24] = isa;

  v2[2] = v2;
  v2[7] = v2 + 25;
  v2[3] = sub_1001F18D0;
  v7 = swift_continuation_init();
  v2[17] = sub_100003ABC(&qword_100606198, &qword_1004D3108);
  v2[10] = _NSConcreteStackBlock;
  v2[11] = 1107296256;
  v2[12] = sub_1001F1A28;
  v2[13] = &unk_1005B7F20;
  v2[14] = v7;
  [v3 openURL:v5 options:isa completionHandler:v2 + 10];

  return _swift_continuation_await(v2 + 2);
}

uint64_t sub_1001F18D0()
{

  return _swift_task_switch(sub_1001F19B0, 0, 0);
}

uint64_t sub_1001F19B0()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 192);
  v3 = *(v0 + 176);
  **(v0 + 144) = *(v0 + 200);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1001F1A28(uint64_t a1, char a2)
{
  **(*(*sub_100009178((a1 + 32), *(a1 + 56)) + 64) + 40) = a2;

  return swift_continuation_resume();
}

uint64_t sub_1001F1A84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[20] = a5;
  v6[21] = a6;
  v6[18] = a1;
  v6[19] = a4;
  return _swift_task_switch(sub_1001F1AA8, 0, 0);
}

uint64_t sub_1001F1AA8()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 152);
  v3 = [*(v0 + 160) action];
  *(v0 + 176) = v3;
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 192;
  *(v0 + 24) = sub_1001F1BF4;
  v4 = swift_continuation_init();
  *(v0 + 136) = sub_100003ABC(&qword_1006061A0, &unk_1004D3110);
  *(v0 + 80) = _NSConcreteStackBlock;
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_1001F1DF4;
  *(v0 + 104) = &unk_1005B7F48;
  *(v0 + 112) = v4;
  [v2 handleButtonAction:v3 usingRequestContext:v1 withCompletionHandler:v0 + 80];

  return _swift_continuation_await(v0 + 16);
}

uint64_t sub_1001F1BF4()
{
  v1 = *(*v0 + 48);
  *(*v0 + 184) = v1;
  if (v1)
  {
    v2 = sub_1001F1D70;
  }

  else
  {
    v2 = sub_1001F1D04;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001F1D04()
{
  v1 = *(v0 + 192);

  **(v0 + 144) = v1;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1001F1D70(uint64_t a1)
{
  v2 = *(v1 + 176);
  swift_willThrow();

  **(v1 + 144) = 2;
  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_1001F1DF4(uint64_t a1, char a2, void *a3)
{
  v5 = *sub_100009178((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_100003ABC(&qword_100604C30, &qword_1004C8490);
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

void sub_1001F1EC0(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();

  *a2 = v3;
}

void sub_1001F1F40(void **a1, uint64_t *a2)
{
  v2 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  sub_1004B85A4();

  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;

  sub_1004B85B4();
  sub_1001FE038(v5);
}

unint64_t sub_1001F2034()
{
  result = qword_100606030;
  if (!qword_100606030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100606030);
  }

  return result;
}

unint64_t sub_1001F2088()
{
  result = qword_100606038;
  if (!qword_100606038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100606038);
  }

  return result;
}

void sub_1001F20DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3)
  {
  }
}

uint64_t sub_1001F2120(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1001F2188(id result, char a2)
{
  if (a2 == 2)
  {
LABEL_4:
    sub_1001F21AC(result);
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

void sub_1001F21AC(id a1)
{
  if (a1 >= 5)
  {
  }
}

double sub_1001F21BC(id a1, char a2)
{
  if (a2 == 2)
  {
LABEL_4:
    sub_1001F21E0(a1);
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

id sub_1001F21E0(id result)
{
  if (result >= 5)
  {
    return result;
  }

  return result;
}

BOOL sub_1001F21F0(void *a1, uint64_t a2, uint64_t a3)
{
  v8[3] = &type metadata for Player.ReplaceCommand;
  v8[4] = &protocol witness table for Player.ReplaceCommand;
  v8[0] = a1;
  v8[1] = a2;
  sub_100009178(v8, &type metadata for Player.ReplaceCommand);
  swift_getDynamicType();
  swift_conformsToProtocol2();
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = a1;
  sub_1004B85A4();

  if (v7)
  {
    v5 = MPCPlayerResponse.canPerform(_:)(v8);
  }

  else
  {
    v5 = 0;
  }

  sub_100004C6C(v8);
  return v5;
}

BOOL sub_1001F230C(char a1, uint64_t a2)
{
  v5[3] = &type metadata for Player.PlaybackCommand;
  v5[4] = &protocol witness table for Player.PlaybackCommand;
  LOBYTE(v5[0]) = a1;
  sub_100009178(v5, &type metadata for Player.PlaybackCommand);
  swift_getDynamicType();
  swift_conformsToProtocol2();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();

  if (v4)
  {
    v2 = MPCPlayerResponse.canPerform(_:)(v5);
  }

  else
  {
    v2 = 0;
  }

  sub_100004C6C(v5);
  return v2;
}

BOOL sub_1001F2420(void *a1, void *a2, uint64_t a3)
{
  v9[3] = &type metadata for Player.InsertCommand;
  v9[4] = &protocol witness table for Player.InsertCommand;
  v9[0] = a1;
  v9[1] = a2;
  sub_100009178(v9, &type metadata for Player.InsertCommand);
  swift_getDynamicType();
  swift_conformsToProtocol2();
  swift_getKeyPath();
  swift_getKeyPath();
  v5 = a1;
  sub_10004AF8C(a2);
  sub_1004B85A4();

  if (v8)
  {
    v6 = MPCPlayerResponse.canPerform(_:)(v9);
  }

  else
  {
    v6 = 0;
  }

  sub_100004C6C(v9);
  return v6;
}

BOOL sub_1001F2550(void *a1, uint64_t a2)
{
  v6[3] = &type metadata for Player.ChangeCommand;
  v6[4] = &protocol witness table for Player.ChangeCommand;
  v6[0] = a1;
  sub_100009178(v6, &type metadata for Player.ChangeCommand);
  swift_getDynamicType();
  swift_conformsToProtocol2();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1001F4CB8(a1);
  sub_1004B85A4();

  if (v5)
  {
    v3 = MPCPlayerResponse.canPerform(_:)(v6);
  }

  else
  {
    v3 = 0;
  }

  sub_100004C6C(v6);
  return v3;
}

BOOL sub_1001F2670(uint64_t a1, uint64_t a2)
{
  v5[3] = &type metadata for Player.VocalsCommand;
  v5[4] = &protocol witness table for Player.VocalsCommand;
  LODWORD(v5[0]) = a1;
  BYTE4(v5[0]) = BYTE4(a1);
  BYTE5(v5[0]) = BYTE5(a1) & 1;
  sub_100009178(v5, &type metadata for Player.VocalsCommand);
  swift_getDynamicType();
  swift_conformsToProtocol2();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();

  if (v4)
  {
    v2 = MPCPlayerResponse.canPerform(_:)(v5);
  }

  else
  {
    v2 = 0;
  }

  sub_100004C6C(v5);
  return v2;
}

uint64_t sub_1001F2794(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1001F27F4(void *a1, uint64_t a2)
{
  v3 = v2;
  if (qword_100600140 != -1)
  {
    swift_once();
  }

  v5 = sub_1004B80B4();
  sub_100007084(v5, static Logger.sharedListening);
  v6 = a1;
  v7 = sub_1004B8094();
  v8 = sub_1004BC9A4();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *&v28[0] = v10;
    *v9 = 136446210;
    v11 = v6;
    v12 = [v11 description];
    v13 = sub_1004BBE64();
    v15 = v14;

    v16 = sub_100012018(v13, v15, v28);

    *(v9 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v7, v8, "Received MPCSharedListeningEvent=%{public}s", v9, 0xCu);
    sub_100004C6C(v10);
  }

  v17 = v6;
  sub_100275244(v17, v26);
  if (v27 != 255)
  {
    v28[0] = v26[0];
    v28[1] = v26[1];
    v28[2] = v26[2];
    v29 = v27;
    v18 = (v3 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator);
    v19 = *(v3 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator + 24);
    v20 = v18[4];
    sub_100009178(v18, v19);
    (*(v20 + 40))(v19, v20);
    v21 = [v17 participant];
    v22 = [v21 externalIdentifier];

    v23 = sub_1004BBE64();
    v25 = v24;

    GroupActivitiesManager.postEvent(_:participantID:)(v28, v23, v25);

    sub_100007214(v26, &unk_100606230, &unk_1004D3160);
  }
}

double sub_1001F2A80(uint64_t a1)
{
  v2 = v1;
  sub_100003ABC(&qword_1006014F0, &qword_1004C9B00);
  __chkstk_darwin();
  v5 = &v21 - v4;
  if (qword_100600140 != -1)
  {
    swift_once();
  }

  v6 = sub_1004B80B4();
  sub_100007084(v6, static Logger.sharedListening);
  swift_errorRetain();
  v7 = sub_1004B8094();
  v8 = sub_1004BC9A4();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v21 = a1;
    v22 = v10;
    *v9 = 136446210;
    swift_errorRetain();
    sub_100003ABC(&qword_100607010, &qword_1004D3148);
    v11 = sub_1004BBF04();
    v13 = sub_100012018(v11, v12, &v22);

    *(v9 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v7, v8, "Receiving didEndSharedListeningSessionWithError=%{public}s", v9, 0xCu);
    sub_100004C6C(v10);
  }

  v14 = sub_1004BC4B4();
  (*(*(v14 - 8) + 56))(v5, 1, 1, v14);
  sub_1004BC474();
  v15 = v2;
  v16 = sub_1004BC464();
  v17 = swift_allocObject();
  v17[2] = v16;
  v17[3] = &protocol witness table for MainActor;
  v17[4] = v15;
  sub_1000FD6BC(0, 0, v5, &unk_1004D3158, v17);

  if (a1)
  {
    sub_100009130(0, &qword_100603570, OS_dispatch_queue_ptr);
    v19 = swift_allocObject();
    *(v19 + 16) = v15;
    v20 = v15;
    static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_1001F45A8, v19);
  }

  return result;
}

void sub_1001F2D64(void *a1, uint64_t a2)
{
  v3 = v2;
  if (qword_100600050 != -1)
  {
    swift_once();
  }

  v5 = sub_1004B80B4();
  sub_100007084(v5, static Logger.playbackController);
  swift_errorRetain();
  v6 = sub_1004B8094();
  v7 = sub_1004BC984();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v35 = a1;
    v36[0] = v9;
    *v8 = 136446210;
    swift_errorRetain();
    sub_100003ABC(&qword_100607010, &qword_1004D3148);
    v10 = sub_1004BBF04();
    v12 = sub_100012018(v10, v11, v36);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v6, v7, "didPauseForLeaseEndWithError with error=%{public}s", v8, 0xCu);
    sub_100004C6C(v9);
  }

  if (a1)
  {
    v13 = sub_1004B69A4();
    v14 = [v13 userInfo];
    v15 = sub_1004BBC44();

    v16 = sub_1004BBE64();
    if (*(v15 + 16))
    {
      v18 = sub_1000346D4(v16, v17);
      v20 = v19;

      if (v20)
      {
        sub_100004DE4(*(v15 + 56) + 32 * v18, v36);

        sub_100009130(0, &qword_100606218, ICMusicSubscriptionLeaseStatus_ptr);
        if (swift_dynamicCast())
        {
          v21 = [v35 stateReasonDialog];
          if (!v21)
          {

            return;
          }

          v22 = v21;
          v23 = [v13 userInfo];
          v24 = sub_1004BBC44();

          v25 = sub_1004BBE64();
          if (*(v24 + 16))
          {
            v27 = sub_1000346D4(v25, v26);
            v29 = v28;

            if (v29)
            {
              sub_100004DE4(*(v24 + 56) + 32 * v27, v36);

              sub_100003ABC(&unk_100606220, &unk_1004CDBD0);
              if (swift_dynamicCast())
              {
                if (!v35[2] || (v30 = sub_1000346D4(0x736E6F6974706FLL, 0xE700000000000000), (v31 & 1) == 0))
                {

                  return;
                }

                sub_100004DE4(v35[7] + 32 * v30, v36);
                sub_100003ABC(&unk_100603590, &unk_1004C8150);
                if (swift_dynamicCast())
                {
                  sub_100009130(0, &qword_100603570, OS_dispatch_queue_ptr);
                  v32 = swift_allocObject();
                  v32[2] = v3;
                  v32[3] = v22;
                  v32[4] = v35;
                  v32[5] = v35;
                  v33 = v3;
                  v34 = v22;
                  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_1001F441C, v32);

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

uint64_t sub_1001F3220(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1001F3244(uint64_t a1, unsigned int a2)
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

uint64_t sub_1001F3280(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1001F32D0(uint64_t result, unsigned int a2)
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

uint64_t sub_1001F3364(uint64_t a1, int a2)
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

uint64_t sub_1001F33AC(uint64_t result, int a2, int a3)
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

uint64_t sub_1001F3404(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1001F341C(uint64_t *a1, unsigned int a2)
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

uint64_t sub_1001F3474(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1001F34D4(uint64_t a1)
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

uint64_t sub_1001F34F0(uint64_t a1, unsigned int a2)
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

uint64_t sub_1001F3538(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1001F357C(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_1001F35AC()
{

  return swift_deallocObject();
}

uint64_t sub_1001F35F8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1001F3610()
{

  return swift_deallocObject();
}

uint64_t sub_1001F36AC()
{

  return swift_deallocObject();
}

uint64_t sub_1001F3704()
{

  return swift_deallocObject();
}

uint64_t sub_1001F374C()
{
  v1 = sub_100003ABC(&unk_100606140, &unk_1004D3040);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1001F37E0(uint64_t a1, uint64_t a2)
{
  sub_100003ABC(&unk_100606140, &unk_1004D3040);

  return sub_1001F0998(a1, a2);
}

uint64_t sub_1001F38A4()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1001F38DC()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1001F3930()
{

  return swift_deallocObject();
}

uint64_t sub_1001F3970(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_10001384C;

  return sub_1001EF4B0(a1, a2, v6, v7, v8);
}

uint64_t sub_1001F3A30()
{

  return swift_deallocObject();
}

uint64_t sub_1001F3A68(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_10001384C;

  return sub_1001EF778(a1, a2, v7, v6);
}

uint64_t sub_1001F3B48()
{

  if (*(v0 + 56))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1001F3BA0(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 72);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10001384C;

  return sub_1001EE258(a1, a2, v2 + 16, v6);
}

uint64_t sub_1001F3C50(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1001F3CD0()
{
  if (*(v0 + 24))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1001F3D18(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_10001384C;

  return sub_1001F10D4(a1, a2, v6, v7, v9, v8);
}

uint64_t sub_1001F3DDC()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1001F3E2C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10001384C;

  return sub_1001F1A84(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1001F3EF4(uint64_t a1, uint64_t a2)
{
  v3 = sub_1004B6B04();
  v4 = *(v3 - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  swift_unknownObjectRelease();
  (*(v4 + 8))(v2 + v5, v3);

  return swift_deallocObject();
}

uint64_t sub_1001F3FB8(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_1004B6B04() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v2 + 16);
  v8 = *(v2 + 24);
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_10001384C;

  return sub_1001F15C8(a1, v7, v8, v2 + v6);
}

uint64_t sub_1001F40D4()
{

  return swift_deallocObject();
}

uint64_t sub_1001F4144()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1001F418C(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_10001384C;

  return sub_1001F1044(a1, a2, v6, v7, v8);
}

uint64_t sub_1001F424C()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1001F4298()
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

uint64_t sub_1001F4318(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10001384C;

  return sub_1001EE4C0(a1, v4, v5, v1 + 32, v1 + 88);
}

uint64_t sub_1001F43CC()
{

  return swift_deallocObject();
}

uint64_t sub_1001F4428()
{

  return swift_deallocObject();
}

uint64_t sub_1001F447C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1001F44BC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10001384C;

  return sub_1001EB1B8(a1, v4, v5, v6);
}

uint64_t sub_1001F4570()
{

  return swift_deallocObject();
}

unint64_t sub_1001F45B8()
{
  result = qword_100606720;
  if (!qword_100606720)
  {
    sub_100003B68(&unk_100609050, &qword_1004D2B10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100606720);
  }

  return result;
}

uint64_t sub_1001F461C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1001F4664(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10001384C;

  return sub_1001DA80C(a1, v4, v5, v7, v6);
}

unint64_t sub_1001F4724()
{
  result = qword_100606250;
  if (!qword_100606250)
  {
    sub_100009130(255, &qword_100606248, UISceneSession_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100606250);
  }

  return result;
}

uint64_t sub_1001F47B4(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10001384C;

  return sub_1001EADC4(a1, a2, v6);
}

uint64_t sub_1001F4860(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10001384C;

  return sub_1001EAFC8(a1, a2, v6);
}

uint64_t sub_1001F490C(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10001384C;

  return sub_1001EAF1C(a1, a2, v6);
}

uint64_t sub_1001F49B8(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10001384C;

  return sub_1001EAE70(a1, a2, v6);
}

uint64_t sub_1001F4A64(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10001384C;

  return sub_1001E7A04(a1, a2, v6);
}

uint64_t sub_1001F4B10(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10001384C;

  return sub_1001E7AAC(a1, a2, v6);
}

uint64_t sub_1001F4BBC(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10001384C;

  return sub_1001E7B54(a1, a2, v6);
}

uint64_t sub_1001F4C68(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

id sub_1001F4CB8(id result)
{
  if (result >= 6)
  {
    return result;
  }

  return result;
}

uint64_t sub_1001F4CD0(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10001384C;

  return sub_1001E8F58(a1, a2, v6);
}

uint64_t sub_1001F4D7C(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10001384C;

  return sub_1001E8EB8(a1, a2, v6);
}

uint64_t sub_1001F4E28(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10001384C;

  return sub_1001E8348(a1, a2, v6);
}

uint64_t sub_1001F4ED4(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1000136EC;

  return sub_1001E83E8(a1, a2, v6);
}

uint64_t sub_1001F4F80(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1001F5074(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void MPCPlaybackIntent.playActivityInformation.setter(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  sub_1001F7864(a1, a2, a3, a4);

  sub_10003F3E0(a1, a2, a3, a4);
}

uint64_t PlaybackIntentDescriptor.init(intentType:representedObject:intentOptions:replaceIntent:shuffleMode:repeatMode:sourceViewController:issuer:forceSharePlayPrompt:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, void *a10, uint64_t a11)
{
  v44 = a7;
  v49 = a4;
  v50 = a11;
  v43 = sub_1004B8104();
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
  sub_1001F5074(a1, a9);
  if ((a6 & 1) == 0)
  {
    sub_1001F5F88(a5, 0, &selRef_setShuffleMode_);
  }

  if ((a8 & 1) == 0)
  {
    sub_1001F5F88(v44, 0, &selRef_setRepeatMode_);
  }

  v23 = a2;
  sub_10009EE9C(a2, v21);
  *(a9 + v20[5]) = a3;
  v24 = v50;
  *(a9 + v20[6]) = v49;
  sub_10000F778(v24, &v52, &qword_100601C48, &unk_1004D50E0);
  if (v53)
  {
    sub_100013414(&v52, v54);
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
      sub_100003ABC(&qword_100602688, &unk_1004D3380);
    }

    v26 = sub_1004BBF34();
    v54[3] = &type metadata for Player.CommandIssuerIdentity;
    v54[4] = &protocol witness table for Player.CommandIssuerIdentity;
    v54[0] = v26;
    v54[1] = v27;
    if (v53)
    {
      sub_100007214(&v52, &qword_100601C48, &unk_1004D50E0);
    }
  }

  sub_100047A5C(v54, v22, &qword_100601C48, &unk_1004D50E0);
  if (!a10)
  {
    goto LABEL_22;
  }

  v28 = [a10 combinedPlayActivityFeatureName];
  sub_1004BBE64();

  v29 = UIViewController.inheritedPlayActivityRecommendationData(shouldIncludeForwardedRecommendationData:)(1);
  v31 = v30;
  sub_100004D7C(0, 0xF000000000000000);

  sub_10003F3CC(v29, v31);

  sub_100004D7C(v29, v31);
  v32 = a9;
  v33 = v46;
  sub_1001F5074(v32, v46);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v39 = *v33;

    v40 = sub_1004BBE24();

    [v39 setPlayActivityFeatureName:v40];

    if (v31 >> 60 == 15)
    {
      isa = 0;
    }

    else
    {
      sub_10003E428(v29, v31);
      isa = sub_1004B6B64().super.isa;
      sub_100004D7C(v29, v31);
    }

    [v39 setPlayActivityRecommendationData:{isa, v43}];

    sub_100004D7C(v29, v31);
LABEL_22:
    sub_100007214(v24, &qword_100601C48, &unk_1004D50E0);
    sub_100007214(v23, &qword_100606290, &qword_1004D3280);
    return sub_10003F494(v51);
  }

  v34 = v33;
  v35 = v43;
  (*(v48 + 32))(v47, v34, v43);
  v36 = sub_1004B80D4();

  v37 = sub_1004BBE24();

  [v36 setPlayActivityFeatureName:v37];

  if (v31 >> 60 == 15)
  {
    v38 = 0;
  }

  else
  {
    sub_10003E428(v29, v31);
    v38 = sub_1004B6B64().super.isa;
    sub_100004D7C(v29, v31);
  }

  [v36 setPlayActivityRecommendationData:{v38, v43}];

  sub_100004D7C(v29, v31);
  sub_100007214(v24, &qword_100601C48, &unk_1004D50E0);
  sub_100007214(v23, &qword_100606290, &qword_1004D3280);
  sub_10003F494(v51);
  return (*(v48 + 8))(v47, v35);
}

void PlaybackIntentDescriptor.playActivityInformation.setter(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  v10 = sub_1004B8104();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  __chkstk_darwin();
  v15 = (&v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1001F5074(v5, v15);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v11 + 32))(v13, v15, v10);
    v16 = sub_1004B80D4();
    sub_1001F7864(a1, a2, a3, a4);
    sub_10003F3E0(a1, a2, a3, a4);

    (*(v11 + 8))(v13, v10);
  }

  else
  {
    v17 = *v15;
    sub_1001F7864(a1, a2, a3, a4);
    sub_10003F3E0(a1, a2, a3, a4);
  }
}

uint64_t _s9MusicCore24PlaybackIntentDescriptorV0D4TypeO010underlyingD0So011MPCPlaybackD0Cvg_0()
{
  v1 = v0;
  v2 = sub_1004B8104();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  __chkstk_darwin();
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001F5074(v1, v7);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return *v7;
  }

  (*(v3 + 32))(v5, v7, v2);
  v8 = sub_1004B80D4();
  (*(v3 + 8))(v5, v2);
  return v8;
}

uint64_t MPCPlaybackIntent.PlayActivityInformation.init(featureName:recommendationData:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  sub_100004D7C(0, 0xF000000000000000);

  sub_10003F3CC(a3, a4);

  sub_100004D7C(a3, a4);
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
    sub_1001F7980(v8, a2);
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
  v7 = sub_1004B8104();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin();
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v8 + 48))(a1, 1, v7, v9) == 1)
  {
    sub_100007214(a1, &qword_100602698, &qword_1004CB2B0);
    v12 = *(v16 + 56);

    return v12(a2, 1, 1, v4);
  }

  else
  {
    v14 = *(v8 + 32);
    v14(v11, a1, v7);
    v14(v6, v11, v7);
    swift_storeEnumTagMultiPayload();
    sub_1001F7980(v6, a2);
    return (*(v16 + 56))(a2, 0, 1, v4);
  }
}

id sub_1001F5DE4(SEL *a1)
{
  v3 = v1;
  v4 = sub_1004B8104();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  __chkstk_darwin();
  v9 = (&v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1001F5074(v3, v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v5 + 32))(v7, v9, v4);
    v10 = sub_1004B80D4();
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

void sub_1001F5F88(uint64_t a1, char a2, SEL *a3)
{
  v5 = v3;
  v8 = sub_1004B8104();
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

  sub_1001F5074(v5, &v18 - v13);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v9 + 32))(v11, v14, v8);
    v16 = sub_1004B80D4();
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
  v2 = sub_1004B8104();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  __chkstk_darwin();
  v7 = (&v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1001F5074(v1, v7);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v3 + 32))(v5, v7, v2);
    v8 = sub_1004B80D4();
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
  v3 = sub_1004BBE64();

  v4 = [v0 playActivityRecommendationData];
  if (v4)
  {
    v5 = v4;
    v6 = sub_1004B6B74();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0xF000000000000000;
  }

  sub_100004D7C(0, 0xF000000000000000);

  sub_10003F3CC(v6, v8);

  sub_100004D7C(v6, v8);
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
  v5 = sub_1004B8104();
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
  sub_1001F5074(v1, v12);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v7 + 32))(v9, v13, v5);
    v14 = sub_1004B80D4();
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
  return sub_1001F6A20;
}

void sub_1001F6A20(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v6 = (*a1)[2];
  v5 = (*a1)[3];
  v7 = (*a1)[4];
  if (a2)
  {
    sub_1001F5074(v7, v2[9]);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v9 = v2[9];
    if (EnumCaseMultiPayload == 1)
    {
      v11 = v2[6];
      v10 = v2[7];
      v12 = v2[5];
      (*(v11 + 32))(v10, v9, v12);
      sub_10003F380(v4, v3, v6, v5);
      v13 = sub_1004B80D4();
      sub_1001F7864(v4, v3, v6, v5);
      sub_10003F3E0(v4, v3, v6, v5);

      (*(v11 + 8))(v10, v12);
    }

    else
    {
      v20 = *v9;
      sub_10003F380(v4, v3, v6, v5);
      sub_1001F7864(v4, v3, v6, v5);
      sub_10003F3E0(v4, v3, v6, v5);
    }

    v22 = v2[10];
    v21 = v2[11];
    v23 = v2[9];
    v24 = v2[7];
    sub_10003F3E0(*v2, v2[1], v2[2], v2[3]);
  }

  else
  {
    sub_1001F5074(v7, v2[10]);
    v14 = swift_getEnumCaseMultiPayload();
    v15 = v2[10];
    if (v14 == 1)
    {
      v17 = v2[6];
      v16 = v2[7];
      v18 = v2[5];
      (*(v17 + 32))(v16, v15, v18);
      v19 = sub_1004B80D4();
      sub_1001F7864(v4, v3, v6, v5);
      sub_10003F3E0(v4, v3, v6, v5);

      (*(v17 + 8))(v16, v18);
    }

    else
    {
      v25 = *v15;
      sub_1001F7864(v4, v3, v6, v5);
      sub_10003F3E0(v4, v3, v6, v5);
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
  result = sub_100004D7C(*(v2 + 16), *(v2 + 24));
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
  return sub_1001F6E18;
}

void sub_1001F6E18(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  v4 = (*a1)[1];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  if (a2)
  {
    sub_10003F380(v3, v4, v5, v6);
    sub_1001F7864(v3, v4, v5, v6);
    sub_10003F3E0(v3, v4, v5, v6);
    v7 = *v2;
    v8 = v2[1];
    v9 = v2[2];
    v10 = v2[3];
  }

  else
  {
    sub_1001F7864(v3, v4, v5, v6);
    v7 = v3;
    v8 = v4;
    v9 = v5;
    v10 = v6;
  }

  sub_10003F3E0(v7, v8, v9, v10);

  free(v2);
}

unint64_t PlaybackIntentDescriptor.debugDescription.getter()
{
  v1 = v0;
  v2 = sub_1004B8104();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  __chkstk_darwin();
  v7 = (&v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = 0xD000000000000019;
  v25 = 0x8000000100503A40;
  strcpy(&v21, "intent=");
  v21._object = 0xE700000000000000;
  sub_1001F5074(v1, v7);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v3 + 32))(v5, v7, v2);
    v8 = sub_1004B80D4();
    (*(v3 + 8))(v5, v2);
  }

  else
  {
    v8 = *v7;
  }

  v9 = [v8 description];
  v10 = sub_1004BBE64();
  v12 = v11;

  v26._countAndFlagsBits = v10;
  v26._object = v12;
  sub_1004BC024(v26);

  v27._countAndFlagsBits = 8236;
  v27._object = 0xE200000000000000;
  sub_1004BC024(v27);
  sub_1004BC024(v21);

  v21._countAndFlagsBits = 0;
  v21._object = 0xE000000000000000;
  sub_1004BD404(16);

  strcpy(&v21, "shuffleMode=");
  BYTE5(v21._object) = 0;
  HIWORD(v21._object) = -5120;
  v19._countAndFlagsBits = sub_1001F5DE4(&selRef_shuffleMode);
  LOBYTE(v19._object) = 0;
  sub_100003ABC(&qword_100606300, &qword_1004D3390);
  v28._countAndFlagsBits = sub_1004BBF04();
  sub_1004BC024(v28);

  v29._countAndFlagsBits = 8236;
  v29._object = 0xE200000000000000;
  sub_1004BC024(v29);
  sub_1004BC024(v21);

  strcpy(&v21, "repeatMode=");
  HIDWORD(v21._object) = -352321536;
  v19._countAndFlagsBits = sub_1001F5DE4(&selRef_repeatMode);
  LOBYTE(v19._object) = 0;
  sub_100003ABC(&qword_100606308, &unk_1004D3398);
  v30._countAndFlagsBits = sub_1004BBF04();
  sub_1004BC024(v30);

  v31._countAndFlagsBits = 8236;
  v31._object = 0xE200000000000000;
  sub_1004BC024(v31);
  sub_1004BC024(v21);

  strcpy(&v21, "options=");
  BYTE1(v21._object) = 0;
  WORD1(v21._object) = 0;
  HIDWORD(v21._object) = -402653184;
  v13 = type metadata accessor for PlaybackIntentDescriptor(0);
  v19._countAndFlagsBits = *(v1 + v13[5]);
  type metadata accessor for MPCPlaybackIntentOptions(0);
  v32._countAndFlagsBits = sub_1004BBF04();
  sub_1004BC024(v32);

  v33._countAndFlagsBits = 8236;
  v33._object = 0xE200000000000000;
  sub_1004BC024(v33);
  sub_1004BC024(v21);

  v21._countAndFlagsBits = 0;
  v21._object = 0xE000000000000000;
  sub_1004BD404(19);

  v21._countAndFlagsBits = 0x206563616C706572;
  v21._object = 0xEF3D746E65746E69;
  v19._countAndFlagsBits = *(v1 + v13[6]);
  type metadata accessor for MPCPlayerTracklistReplaceIntent(0);
  v34._countAndFlagsBits = sub_1004BBF04();
  sub_1004BC024(v34);

  v35._countAndFlagsBits = 8236;
  v35._object = 0xE200000000000000;
  sub_1004BC024(v35);
  sub_1004BC024(v21);

  v36._object = 0x8000000100503A60;
  v36._countAndFlagsBits = 0xD000000000000012;
  sub_1004BC024(v36);
  sub_10000F778(v1 + v13[7], &v19, &qword_100606290, &qword_1004D3280);
  if (v20)
  {
    sub_100013414(&v19._countAndFlagsBits, &v21);
    sub_10001342C(&v21, &v19);
    sub_100003ABC(&qword_100606298, &qword_1004D3290);
    v19._countAndFlagsBits = sub_1004BBF04();
    v19._object = v14;
    v37._countAndFlagsBits = 8236;
    v37._object = 0xE200000000000000;
    sub_1004BC024(v37);
    sub_1004BC024(v19);

    sub_100004C6C(&v21);
  }

  else
  {
    sub_100007214(&v19, &qword_100606290, &qword_1004D3280);
    v38._countAndFlagsBits = 0x202C656E6F6ELL;
    v38._object = 0xE600000000000000;
    sub_1004BC024(v38);
  }

  v39._countAndFlagsBits = 0x3D726575737369;
  v39._object = 0xE700000000000000;
  sub_1004BC024(v39);
  sub_10000F778(v1 + v13[8], &v19, &qword_100601C48, &unk_1004D50E0);
  if (v20)
  {
    sub_100013414(&v19._countAndFlagsBits, &v21);
    v15 = v22;
    v16 = v23;
    sub_100009178(&v21, v22);
    v19._countAndFlagsBits = (*(v16 + 8))(v15, v16);
    v19._object = v17;
    v40._countAndFlagsBits = 8236;
    v40._object = 0xE200000000000000;
    sub_1004BC024(v40);
    sub_1004BC024(v19);

    sub_100004C6C(&v21);
  }

  else
  {
    sub_100007214(&v19, &qword_100601C48, &unk_1004D50E0);
    v41._countAndFlagsBits = 0x6669636570736E75;
    v41._object = 0xEC0000003D646569;
    sub_1004BC024(v41);
  }

  v42._countAndFlagsBits = 41;
  v42._object = 0xE100000000000000;
  sub_1004BC024(v42);
  return v24;
}

uint64_t _s9MusicCore24PlaybackIntentDescriptorV0D4TypeO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1004B8104();
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
  sub_100003ABC(&qword_100606468, &qword_1004D3518);
  __chkstk_darwin();
  v14 = &v26 - v13;
  v16 = *(v15 + 56);
  sub_1001F5074(a1, &v26 - v13);
  sub_1001F5074(a2, &v14[v16]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1001F5074(v14, v10);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v17 = v27;
      v18 = *(v27 + 32);
      v18(v8, v10, v4);
      v18(v6, &v14[v16], v4);
      sub_100009130(0, &qword_100604490, NSObject_ptr);
      v19 = sub_1004B80D4();
      v20 = sub_1004B80D4();
      v21 = sub_1004BCFA4();

      v22 = *(v17 + 8);
      v22(v6, v4);
      v22(v8, v4);
LABEL_9:
      sub_10003F494(v14);
      return v21 & 1;
    }

    (*(v27 + 8))(v10, v4);
  }

  else
  {
    sub_1001F5074(v14, v12);
    v23 = *v12;
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v24 = *&v14[v16];
      sub_100009130(0, &qword_100604490, NSObject_ptr);
      v21 = sub_1004BCFA4();

      goto LABEL_9;
    }
  }

  sub_100007214(v14, &qword_100606468, &qword_1004D3518);
  v21 = 0;
  return v21 & 1;
}

void sub_1001F7864(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2)
  {

    v7 = sub_1004BBE24();

    [v4 setPlayActivityFeatureName:v7];

    if (a4 >> 60 != 15)
    {
      sub_10003E428(a3, a4);
      isa = sub_1004B6B64().super.isa;
      sub_100004D7C(a3, a4);
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

uint64_t sub_1001F7980(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001F79F8(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_1001F7AD8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

void sub_1001F7B94(uint64_t a1)
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
        sub_100029AC4(319, &unk_100606378, &qword_100606298, &qword_1004D3290);
        if (v4 <= 0x3F)
        {
          sub_100029AC4(319, &qword_100601DA0, &unk_100601DA8, &qword_1004D3430);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_1001F7C9C(uint64_t a1)
{
  result = sub_100009130(319, &qword_100605EC8, MPCPlaybackIntent_ptr);
  if (v2 <= 0x3F)
  {
    result = sub_1004B8104();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1001F7D20(uint64_t a1)
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

uint64_t sub_1001F7D3C(uint64_t a1)
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
  *(v3 + 104) = xmmword_1004C50E0;
  *(v3 + 120) = 0;
  *(v3 + 128) = 0u;
  *(v3 + 144) = 0u;
  _s9MusicCore18EnvironmentMonitorC22__observationRegistrar33_6CC8A35C601F3763940B11776112173411Observation0lF0Vvpfi_0();
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  sub_100009130(0, &qword_100606478, CADisplayLink_ptr);
  swift_unownedRetainStrong();
  swift_unownedRetain();
  swift_unownedRetain();

  v6 = swift_allocObject();
  *(v6 + 16) = v3;
  v7 = CADisplayLink.init(handler:)(sub_1001F7F68, v6);
  swift_unownedRelease();
  v8 = [objc_opt_self() mainRunLoop];
  [v7 addToRunLoop:v8 forMode:NSRunLoopCommonModes];

  [v7 setPaused:1];
  [v7 setPreferredFramesPerSecond:30];
  v9 = *(v3 + 128);
  *(v3 + 128) = v7;

  return v3;
}

uint64_t sub_1001F7F30()
{
  swift_unownedRelease();

  return swift_deallocObject();
}

double sub_1001F7F68()
{
  swift_unownedRetainStrong();
  sub_1001F7FA8();

  return result;
}

void sub_1001F7FA8()
{
  v1 = v0;
  swift_beginAccess();
  v2 = *(v0 + 104);
  if (v2 == 2)
  {
    if (qword_100600068 != -1)
    {
      swift_once();
    }

    v3 = sub_1004B80B4();
    sub_100007084(v3, qword_100617630);

    v4 = sub_1004B8094();
    v5 = sub_1004BC9A4();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v25[0] = v7;
      *v6 = 136446210;
      *(v6 + 4) = sub_100012018(*(v1 + 16), *(v1 + 24), v25);
      sub_100004C6C(v7);
    }

    v8 = *(v1 + 48);
    if (v8 != 1)
    {
LABEL_19:
      swift_getKeyPath();
      __chkstk_darwin();
      v25[0] = v1;
      sub_1001F8ED0();
      sub_1004B70F4();

      return;
    }

LABEL_14:
    *(v1 + 40) = 0;
    *(v1 + 48) = v8;
    return;
  }

  if (v2)
  {
    if (qword_100600068 != -1)
    {
      swift_once();
    }

    v9 = sub_1004B80B4();
    sub_100007084(v9, qword_100617630);

    v10 = sub_1004B8094();
    v11 = sub_1004BC9A4();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v25[0] = v13;
      *v12 = 136446210;
      *(v12 + 4) = sub_100012018(*(v1 + 16), *(v1 + 24), v25);
      sub_100004C6C(v13);
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
    sub_1004B6B94();
    v19 = v16 + (v18 - v17) * v15;
    if (v19 >= v14)
    {
      v19 = v14;
    }

    v20 = fmax(v19, 0.0) / v14;
  }

  sub_1001F8F74(*&v20, 0);
  sub_1004B6B94();
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
  v3 = sub_1004B7144();
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
  v3 = sub_1004B7144();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  return swift_deallocClassInstance();
}

void sub_1001F8564(uint64_t a1, uint64_t a2)
{
  if (qword_100600068 != -1)
  {
    swift_once();
  }

  v3 = sub_1004B80B4();
  sub_100007084(v3, qword_100617630);

  v4 = sub_1004B8094();
  v5 = sub_1004BC9A4();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *&v44[0] = v7;
    *v6 = 136446210;
    *(v6 + 4) = sub_100012018(*(v2 + 16), *(v2 + 24), v44);
    _os_log_impl(&_mh_execute_header, v4, v5, "📺 %{public}s: Updating DisplayLink…", v6, 0xCu);
    sub_100004C6C(v7);
  }

  v8 = sub_1004B8094();
  v9 = sub_1004BC9A4();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 67240192;
    *(v10 + 4) = *(v2 + 120);

    _os_log_impl(&_mh_execute_header, v8, v9, "   — isBackgrounded: %{BOOL,public}d", v10, 8u);
  }

  else
  {
  }

  v11 = sub_1004B8094();
  v12 = sub_1004BC9A4();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 67240192;
    swift_beginAccess();
    *(v13 + 4) = *(v2 + 32);

    _os_log_impl(&_mh_execute_header, v11, v12, "   — automaticallyUpdates: %{BOOL,public}d", v13, 8u);
  }

  else
  {
  }

  swift_beginAccess();
  if (*(v2 + 32) != 1 || (*(v2 + 120) & 1) != 0 || (swift_beginAccess(), v14 = *(v2 + 104), v14 == 2))
  {
    v15 = sub_1004B8094();
    v16 = sub_1004BC9A4();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "   — Null Snapshot", v17, 2u);
    }

    v18 = 1;
  }

  else
  {
    v26 = *(v2 + 96);
    v27 = *(v2 + 88);
    v42 = *(v2 + 72);
    v43 = *(v2 + 56);
    v28 = sub_1004B8094();
    v29 = sub_1004BC9A4();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v49 = v31;
      *v30 = 136446210;
      v44[1] = v42;
      v44[0] = v43;
      v45 = v27;
      v46 = v26;
      v47 = v14 & 0x101;
      v48 = BYTE2(v14) & 1;
      type metadata accessor for MPCPlayerItemDurationSnapshot(0);
      v32 = sub_1004BBF04();
      v34 = sub_100012018(v32, v33, &v49);

      *(v30 + 4) = v34;
      _os_log_impl(&_mh_execute_header, v28, v29, "   — Snapshot: %{public}s", v30, 0xCu);
      sub_100004C6C(v31);
    }

    v35 = v26 & 0x7FFFFFFF;
    v36 = sub_1004B8094();
    v37 = sub_1004BC9A4();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 67240192;
      *(v38 + 4) = v14 & 1;
      _os_log_impl(&_mh_execute_header, v36, v37, "   — isLiveContent: %{BOOL,public}d", v38, 8u);
    }

    v39 = sub_1004B8094();
    v40 = sub_1004BC9A4();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 67240192;
      *(v41 + 4) = v35 == 0;
      _os_log_impl(&_mh_execute_header, v39, v40, "   — isRateNull: %{BOOL,public}d", v41, 8u);
    }

    v18 = v14 | (v35 == 0);
  }

  v19 = sub_1004B8094();
  v20 = sub_1004BC9A4();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 67240192;
    *(v21 + 4) = v18 & 1;
    _os_log_impl(&_mh_execute_header, v19, v20, " -> should pause: %{BOOL,public}d", v21, 8u);
  }

  v22 = *(v2 + 128);
  if (v22)
  {
    [v22 setPaused:v18 & 1];
  }

  swift_beginAccess();
  if (!*(v2 + 112))
  {
    v23 = sub_1004B8094();
    v24 = sub_1004BC984();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "No window scene associated! This could lead to a major power regression when the app is backgrounded!", v25, 2u);
    }
  }
}

void PlaybackTimeObserver.automaticallyUpdates.setter(char a1)
{
  v3 = a1 & 1;
  v4 = swift_beginAccess();
  v6 = *(v1 + 32);
  *(v1 + 32) = a1;
  if (v6 != v3)
  {
    sub_1001F8564(v4, v5);
  }
}

void (*PlaybackTimeObserver.automaticallyUpdates.modify(uint64_t *a1))(uint64_t a1, uint64_t a2)
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
  return sub_1001F8D1C;
}

void sub_1001F8D1C(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  v5 = *(v3 + 32);
  *(v3 + 32) = v4;
  if (v4 != v5)
  {
    sub_1001F8564(a1, a2);
  }

  free(v2);
}

uint64_t PlaybackTimeObserver.effectiveElapsedTime.getter()
{
  swift_getKeyPath();
  sub_1001F8ED0();
  sub_1004B7104();

  return *(v0 + 40);
}

void sub_1001F8DE4(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1001F8ED0();
  sub_1004B7104();

  v4 = *(v3 + 48);
  *a2 = *(v3 + 40);
  *(a2 + 8) = v4;
}

unint64_t sub_1001F8ED0()
{
  result = qword_100606480;
  if (!qword_100606480)
  {
    type metadata accessor for PlaybackTimeObserver(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100606480);
  }

  return result;
}

uint64_t type metadata accessor for PlaybackTimeObserver(uint64_t a1)
{
  result = qword_1006064B0;
  if (!qword_1006064B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_1001F8F74(uint64_t a1, char a2)
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
  sub_1001F8ED0();
  sub_1004B70F4();

  return result;
}

void sub_1001F907C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (qword_100600068 != -1)
  {
    swift_once();
  }

  v4 = sub_1004B80B4();
  sub_100007084(v4, qword_100617630);

  v5 = sub_1004B8094();
  v6 = sub_1004BC9A4();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v7 = 136446210;
    swift_beginAccess();
    sub_100003ABC(&qword_100606590, &qword_1004D3660);
    v9 = sub_1004BBF04();
    v11 = sub_100012018(v9, v10, &v16);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v5, v6, "Received new snapshot=%{public}s", v7, 0xCu);
    sub_100004C6C(v8);
  }

  sub_1004B6B94();
  v13 = v12;
  swift_beginAccess();
  *(v3 + 152) = v13;
  sub_1001F7FA8();
  sub_1001F8564(v14, v15);
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
  v3 = swift_beginAccess();
  v4 = *(a1 + 16);
  *(v1 + 56) = *a1;
  *(v1 + 72) = v4;
  *(v1 + 88) = *(a1 + 32);
  *(v1 + 104) = *(a1 + 48);
  sub_1001F907C(v3, v5);
}

void (*PlaybackTimeObserver.durationSnapshot.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1001F935C;
}

void sub_1001F935C(uint64_t a1, char a2)
{
  v3 = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_1001F907C(v3, v4);
  }
}

double sub_1001F9390(id a1)
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
    sub_100009130(0, &qword_100606588, UIWindowScene_ptr);
    v6 = v5;
    a1 = a1;
    v7 = sub_1004BCFA4();

    if (v7)
    {
      return result;
    }

    v5 = *(v2 + 112);
    if (!v5)
    {
LABEL_13:
      v30 = qword_100600068;
      v31 = a1;
      if (v30 != -1)
      {
        swift_once();
      }

      v32 = sub_1004B80B4();
      sub_100007084(v32, qword_100617630);
      v33 = v31;

      v34 = sub_1004B8094();
      v35 = sub_1004BC9A4();

      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        *v36 = 136446466;
        *(v36 + 4) = sub_100012018(*(v2 + 16), *(v2 + 24), &v46);
        *(v36 + 12) = 2082;
        v37 = v33;
        v38 = [v37 description];
        v39 = sub_1004BBE64();
        v41 = v40;

        v42 = sub_100012018(v39, v41, &v46);

        *(v36 + 14) = v42;
        _os_log_impl(&_mh_execute_header, v34, v35, "%{public}s: Removed windowScene=%{public}s", v36, 0x16u);
        swift_arrayDestroy();
      }

      else
      {
      }

      v45 = *(v2 + 120);
      *(v2 + 120) = 0;
      if (v45 == 1)
      {
        sub_1001F8564(v43, v44);
      }

      *(v2 + 136) = 0;

      v29 = 0;
      goto LABEL_21;
    }
  }

  v8 = qword_100600068;
  v9 = v5;
  if (v8 != -1)
  {
    swift_once();
  }

  v10 = sub_1004B80B4();
  sub_100007084(v10, qword_100617630);
  v11 = v9;

  v12 = sub_1004B8094();
  v13 = sub_1004BC9A4();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    *v14 = 136446466;
    *(v14 + 4) = sub_100012018(*(v2 + 16), *(v2 + 24), &v46);
    *(v14 + 12) = 2082;
    v15 = v11;
    v16 = [v15 description];
    v17 = sub_1004BBE64();
    v19 = v18;

    v20 = sub_100012018(v17, v19, &v46);

    *(v14 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v12, v13, "%{public}s: Received windowScene=%{public}s", v14, 0x16u);
    swift_arrayDestroy();
  }

  v21 = [v11 activationState];
  v23 = v21 == 2;
  v24 = *(v2 + 120);
  *(v2 + 120) = v23;
  if (v23 != v24)
  {
    sub_1001F8564(v21, v22);
  }

  v25 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for NotificationObserver(0, v26);
  swift_allocObject();
  v27 = v11;
  *(v2 + 136) = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(UISceneDidEnterBackgroundNotification, v5, 1, 1, sub_1001F9D58, v25);

  v28 = swift_allocObject();
  swift_weakInit();
  swift_allocObject();
  v29 = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(UISceneWillEnterForegroundNotification, v5, 1, 1, sub_1001F9D60, v28);
LABEL_21:
  *(v2 + 144) = v29;

  return result;
}

double sub_1001F98E8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = *(Strong + 120);
    *(Strong + 120) = 1;
    if ((v5 & 1) == 0)
    {
      sub_1001F8564(Strong, v3);
    }
  }

  return result;
}

double sub_1001F9950(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = *(Strong + 120);
    *(Strong + 120) = 0;
    if (v5 == 1)
    {
      sub_1001F8564(Strong, v3);
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
  sub_1001F9390(v3);
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
  return sub_1001F9AF4;
}

void sub_1001F9AF4(uint64_t a1, char a2)
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
    sub_1001F9390(v7);

    v7 = *v5;
  }

  else
  {
    sub_1001F9390(v7);
  }

  free(v3);
}

uint64_t sub_1001F9BCC(uint64_t a1, __n128 a2)
{
  result = sub_1004B7144();
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

uint64_t sub_1001F9CA4(uint64_t a1, uint64_t a2)
{
  v2 = sub_1004B80B4();
  sub_100007108(v2, qword_100617630);
  sub_100007084(v2, qword_100617630);
  return sub_1004B80A4();
}

uint64_t sub_1001F9D20()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

void sub_1001F9D68()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  *(v1 + 40) = *(v0 + 24);
  *(v1 + 48) = v2;
}

uint64_t static Player.CommandIssuer<>.reflection(of:)(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    swift_unknownObjectRetain();
  }

  else
  {
    sub_100003ABC(&qword_100602688, &unk_1004D3380);
  }

  return sub_1004BBF34();
}

uint64_t Player.CommandIssuerIdentity.init(_:)(uint64_t a1)
{
  v2 = sub_1004B6A04();
  v3 = sub_1004B6B04();
  (*(*(v3 - 8) + 8))(a1, v3);
  return v2;
}

{
  if (!a1)
  {
    sub_100003ABC(&qword_100602688, &unk_1004D3380);
  }

  return sub_1004BBF34();
}

{
  sub_100003ABC(&qword_100606598, &qword_1004D3668);
  sub_1001F9FB0();
  v1 = sub_1004BBD34();

  return v1;
}

uint64_t sub_1001F9F58@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_100009178(a1, v3);
  result = (*(v4 + 8))(v3, v4);
  *a2 = result;
  a2[1] = v6;
  return result;
}

unint64_t sub_1001F9FB0()
{
  result = qword_1006065A0;
  if (!qword_1006065A0)
  {
    sub_100003B68(&qword_100606598, &qword_1004D3668);
    sub_1001FA034();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006065A0);
  }

  return result;
}

unint64_t sub_1001FA034()
{
  result = qword_1006065A8;
  if (!qword_1006065A8)
  {
    sub_100003B68(&qword_1006065B0, &qword_1004D3670);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006065A8);
  }

  return result;
}

uint64_t Player.CommandIssuerIdentity.appending(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100003ABC(&qword_1006065B8, &qword_1004D3678);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1004C50C0;
  *(v6 + 56) = &type metadata for Player.CommandIssuerIdentity;
  *(v6 + 64) = &protocol witness table for Player.CommandIssuerIdentity;
  *(v6 + 32) = a2;
  *(v6 + 40) = a3;
  sub_10001342C(a1, v6 + 72);

  sub_100003ABC(&qword_100606598, &qword_1004D3668);
  sub_1001F9FB0();
  v7 = sub_1004BBD34();

  return v7;
}

uint64_t Player.CommandIssuer.appending(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100003ABC(&qword_1006065B8, &qword_1004D3678);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1004C50C0;
  *(v7 + 56) = a2;
  *(v7 + 64) = a3;
  v8 = sub_1000133B0((v7 + 32));
  (*(*(a2 - 8) + 16))(v8, v3, a2);
  sub_10001342C(a1, v7 + 72);
  sub_100003ABC(&qword_100606598, &qword_1004D3668);
  sub_1001F9FB0();
  v9 = sub_1004BBD34();

  return v9;
}

uint64_t static Player.CommandIssuer<>.url(_:)(uint64_t a1, uint64_t a2)
{
  v3 = sub_1004B6B04();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin();
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, a1, v3, v5);
  v8 = sub_1004B6A04();
  (*(v4 + 8))(v7, v3);
  return v8;
}

uint64_t static Player.CommandIssuer<>.combining(_:)(uint64_t a1)
{

  sub_100003ABC(&qword_100606598, &qword_1004D3668);
  sub_1001F9FB0();
  v1 = sub_1004BBD34();

  return v1;
}

uint64_t Player.CommandIssuer<>.commandIssuingIdentifier.getter()
{
  sub_1004BC244();
  return v1;
}

{
  sub_1004BD424();
  return v1;
}

unint64_t sub_1001FA4BC(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  sub_1004BD404(29);

  v9._countAndFlagsBits = a1;
  v9._object = a2;
  sub_1004BC024(v9);
  v10._countAndFlagsBits = 0x3A656C746974202CLL;
  v10._object = 0xE800000000000000;
  sub_1004BC024(v10);
  v11._countAndFlagsBits = a3;
  v11._object = a4;
  sub_1004BC024(v11);
  v12._countAndFlagsBits = 41;
  v12._object = 0xE100000000000000;
  sub_1004BC024(v12);
  return 0xD000000000000010;
}

unint64_t sub_1001FA588(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  sub_1004BD404(29);

  v26 = 0xD000000000000010;
  v27 = 0x8000000100503BB0;
  v28._countAndFlagsBits = a1;
  v28._object = a2;
  sub_1004BC024(v28);
  v29._countAndFlagsBits = 0x3A656C746974202CLL;
  v29._object = 0xE800000000000000;
  sub_1004BC024(v29);
  v30._countAndFlagsBits = a3;
  v30._object = a4;
  sub_1004BC024(v30);
  v31._countAndFlagsBits = 41;
  v31._object = 0xE100000000000000;
  sub_1004BC024(v31);
  v14 = 0xD000000000000010;
  if (a7[7])
  {
    v23 = a5;
    v24 = a6;
    v15 = a7[2];
    v16 = a7[3];
    v18 = *a7;
    v17 = a7[1];
    sub_1004BD404(26);

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
    sub_1004BC024(v32);

    v33._countAndFlagsBits = 0x67617373656D202CLL;
    v33._object = 0xEA00000000003A65;
    sub_1004BC024(v33);
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
    sub_1004BC024(v34);

    sub_1004BC024(v25);

    sub_10003CC4C(v23, v24);

    sub_1001FA7C4(a7);
    return v26;
  }

  else
  {

    sub_10003CC4C(a5, a6);
  }

  return v14;
}

uint64_t sub_1001FA7C4(uint64_t a1)
{
  v2 = sub_100003ABC(&qword_100602B60, &qword_1004D0580);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1001FA854(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_100003ABC(&qword_1006014F0, &qword_1004C9B00);
  __chkstk_darwin();
  v10 = v22 - v9;
  sub_10000F778(a3, v22 - v9, &qword_1006014F0, &qword_1004C9B00);
  v11 = sub_1004BC4B4();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_100007214(v10, &qword_1006014F0, &qword_1004C9B00);
  }

  else
  {
    sub_1004BC4A4();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_1004BC3E4();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v22[0] = a2;
      v18 = sub_1004BBF54() + 32;

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

      sub_100007214(a3, &qword_1006014F0, &qword_1004C9B00);

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

  sub_100007214(a3, &qword_1006014F0, &qword_1004C9B00);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_1001FAB00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_100003ABC(&qword_1006014F0, &qword_1004C9B00);
  __chkstk_darwin();
  v9 = v21 - v8;
  sub_10000F778(a3, v21 - v8, &qword_1006014F0, &qword_1004C9B00);
  v10 = sub_1004BC4B4();
  v11 = *(v10 - 8);
  v12 = (*(v11 + 48))(v9, 1, v10);

  if (v12 == 1)
  {
    sub_100007214(v9, &qword_1006014F0, &qword_1004C9B00);
  }

  else
  {
    sub_1004BC4A4();
    (*(v11 + 8))(v9, v10);
  }

  v13 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v13)
  {
    swift_getObjectType();
    v14 = sub_1004BC3E4();
    v16 = v15;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v17 = sub_1004BBF54() + 32;

      sub_100003ABC(&qword_100606FB8, &qword_1004D3FB8);
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

      sub_100007214(a3, &qword_1006014F0, &qword_1004C9B00);

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

  sub_100007214(a3, &qword_1006014F0, &qword_1004C9B00);
  sub_100003ABC(&qword_100606FB8, &qword_1004D3FB8);
  if (v16 | v14)
  {
    v22[4] = 0;
    v22[5] = 0;
    v22[6] = v14;
    v22[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_1001FADBC(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v2 = a1;
    v3 = sub_1004BD604();

    if (v3)
    {
      sub_100003ABC(&qword_100606F38, &unk_1004D3F50);
      swift_dynamicCast();
      return v6;
    }
  }

  else if (*(a2 + 16))
  {
    sub_1000348F4(a1);
    if (v5)
    {
      return swift_unknownObjectRetain();
    }
  }

  return 0;
}

char *Player.state<A>(for:)(void (*a1)(char *, uint64_t, uint64_t), uint64_t a2, uint64_t a3)
{
  v7 = sub_1004BCA94();
  type metadata accessor for MusicItemState(0, a2, a3, v8);

  v10 = sub_100212AA8(a1, v7, v3, v9);

  return v10;
}

uint64_t sub_1001FAF34()
{
  sub_1004BA8F4();
  sub_100213E2C(&qword_100606F40, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100003ABC(&unk_100604C00, &qword_1004CDBC0);
  sub_1000206D4(&qword_100606F50, &unk_100604C00, &qword_1004CDBC0, &protocol conformance descriptor for [A]);
  return sub_1004BD2D4();
}

uint64_t sub_1001FB020(uint64_t a1, uint64_t a2)
{
  v2 = sub_1004B80B4();
  sub_100007108(v2, qword_100617648);
  sub_100007084(v2, qword_100617648);
  return sub_1004B80A4();
}

uint64_t Player.configuration.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC9MusicCore6Player_engine);
  v2 = [v1 playerID];
  v3 = sub_1004BBE64();

  sub_1001D4A40(v1);
  v4 = [v1 fallbackPlaybackIntent];
  return v3;
}

id Player.audioAnalyzer.getter()
{
  v1 = [*(v0 + OBJC_IVAR____TtC9MusicCore6Player_engine) audioAnalyzer];

  return v1;
}

void *Player.sampleReceiver.getter(uint64_t a1, uint64_t a2)
{
  if (*(v2 + 16))
  {
    v3 = *(v2 + 16);
  }

  else
  {
    type metadata accessor for SampleReceiver(0, a2);
    v3 = swift_allocObject();
    v3[3] = 0;
    v3[4] = 0;
    v3[2] = 0;
    *(v2 + 16) = v3;
  }

  return v3;
}

double Player.sampleReceiver.setter(uint64_t a1)
{
  *(v1 + 16) = a1;

  return result;
}

double (*Player.sampleReceiver.modify(void *a1, uint64_t a2))(uint64_t *a1)
{
  a1[1] = v2;
  *a1 = Player.sampleReceiver.getter(a1, a2);
  return sub_1001FB218;
}

double sub_1001FB218(uint64_t *a1)
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
  v104 = *v0;
  sub_100003ABC(&qword_1006014F0, &qword_1004C9B00);
  __chkstk_darwin();
  v115 = &v91 - v2;
  sub_100003ABC(&qword_1006026C0, &qword_1004CB378);
  __chkstk_darwin();
  v114 = &v91 - v3;
  v4 = sub_100003ABC(&qword_1006065D0, &qword_1004D3730);
  v106 = *(v4 - 8);
  v107 = v4;
  __chkstk_darwin();
  v105 = &v91 - v5;
  v6 = sub_100003ABC(&qword_1006065D8, &qword_1004D3738);
  v110 = *(v6 - 8);
  v111 = v6;
  __chkstk_darwin();
  v108 = &v91 - v7;
  v8 = sub_100003ABC(&unk_1006065E0, &unk_1004D3740);
  v112 = *(v8 - 8);
  v113 = v8;
  __chkstk_darwin();
  v109 = &v91 - v9;
  v10 = sub_100003ABC(&qword_1006051A8, &qword_1004D8F60);
  v101 = *(v10 - 8);
  v102 = v10;
  __chkstk_darwin();
  v100 = &v91 - v11;
  v98 = sub_100003ABC(&qword_1006065F0, &qword_1004D3750);
  v97 = *(v98 - 8);
  __chkstk_darwin();
  v96 = &v91 - v12;
  v95 = sub_100003ABC(&unk_1006065F8, &unk_1004D3758);
  v94 = *(v95 - 8);
  __chkstk_darwin();
  v14 = &v91 - v13;
  v99 = sub_100003ABC(&qword_100606240, &qword_1004D3170);
  v15 = *(v99 - 8);
  __chkstk_darwin();
  v17 = &v91 - v16;
  v18 = sub_100003ABC(&qword_100606608, &unk_1004D3768);
  v19 = *(v18 - 8);
  __chkstk_darwin();
  v21 = &v91 - v20;
  *(v0 + 2) = 0;
  *(v0 + 3) = 0;
  v103 = objc_opt_self();
  v22 = [v103 systemRoute];
  v23 = [v22 isDeviceRoute];
  v24 = objc_opt_self();
  v25 = v24;
  if (v23)
  {
    if (qword_100600040 != -1)
    {
      swift_once();
    }

    v26 = sub_1004BBE24();
    v27 = [v25 systemMusicPathWithRoute:v22 playerID:v26];
  }

  else
  {
    v27 = [v24 pathWithRoute:v22 bundleID:0 playerID:0];
  }

  v28 = OBJC_IVAR____TtC9MusicCore6Player__path;
  aBlock = v27;
  sub_100009130(0, &qword_100601B28, MPCPlayerPath_ptr);
  sub_1004B8564();
  (*(v19 + 32))(&v1[v28], v21, v18);
  *&v1[OBJC_IVAR____TtC9MusicCore6Player____lazy_storage___nowPlayingObserver] = 0;
  v29 = OBJC_IVAR____TtC9MusicCore6Player__nowPlaying;
  aBlock = 0;
  v30 = v17;
  v93 = sub_100003ABC(&qword_100606630, &unk_1004D2B80);
  sub_1004B8564();
  v31 = *(v15 + 32);
  v32 = v99;
  v92 = v31;
  v31(&v1[v29], v17, v99);
  v33 = OBJC_IVAR____TtC9MusicCore6Player__nowPlayingPath;
  aBlock = 0;
  sub_100003ABC(&qword_100606640, &qword_1004D3778);
  sub_1004B8564();
  (*(v94 + 32))(&v1[v33], v14, v95);
  v34 = OBJC_IVAR____TtC9MusicCore6Player__sharePlayTogetherSession;
  aBlock = 0;
  sub_100003ABC(&qword_100606650, &unk_1004D3780);
  v35 = v96;
  sub_1004B8564();
  (*(v97 + 32))(&v1[v34], v35, v98);
  v36 = OBJC_IVAR____TtC9MusicCore6Player__isHostingSharePlayTogetherSession;
  LOBYTE(aBlock) = 0;
  v37 = v100;
  sub_1004B8564();
  v38 = v102;
  v39 = *(v101 + 32);
  v39(&v1[v36], v37, v102);
  v40 = OBJC_IVAR____TtC9MusicCore6Player__isEligibleForHostingSharePlayTogetherSession;
  LOBYTE(aBlock) = 0;
  sub_1004B8564();
  v39(&v1[v40], v37, v38);
  *&v1[OBJC_IVAR____TtC9MusicCore6Player_currentSharePlayTogetherConnectionRequestToken] = 0;
  v41 = &v1[OBJC_IVAR____TtC9MusicCore6Player_nowPlayingConfiguration];
  if (qword_100600078 != -1)
  {
    swift_once();
  }

  v42 = qword_1006065C0;
  *v41 = qword_1006065C0;
  *(v41 + 1) = v42;
  *(v41 + 2) = _swiftEmptyDictionarySingleton;
  *&v1[OBJC_IVAR____TtC9MusicCore6Player_routingController] = 0;
  v1[OBJC_IVAR____TtC9MusicCore6Player_engineState] = 0;
  *&v1[OBJC_IVAR____TtC9MusicCore6Player__onEngineIsReady] = _swiftEmptyArrayStorage;
  v43 = OBJC_IVAR____TtC9MusicCore6Player__playerResponse;
  aBlock = 0;
  v44 = v42;
  sub_1004B8564();
  v92(&v1[v43], v30, v32);
  *&v1[OBJC_IVAR____TtC9MusicCore6Player____lazy_storage___playbackDataSource] = 0;
  *&v1[OBJC_IVAR____TtC9MusicCore6Player____lazy_storage___nowPlayingDataSource] = 0;
  *&v1[OBJC_IVAR____TtC9MusicCore6Player_activeSystemRouteDidChangeNotificationObserver] = 0;
  *&v1[OBJC_IVAR____TtC9MusicCore6Player_playerPathInvalidationObserver] = 0;
  *&v1[OBJC_IVAR____TtC9MusicCore6Player_sharePlayTogetherSessionObserver] = 0;
  *&v1[OBJC_IVAR____TtC9MusicCore6Player_sharePlayTogetherEligibilityObserver] = 0;
  v45 = OBJC_IVAR____TtC9MusicCore6Player_failingPlayerPathTimers;
  *&v1[v45] = sub_10003DCE4(_swiftEmptyArrayStorage);
  *&v1[OBJC_IVAR____TtC9MusicCore6Player_ratingWarningThresholdSubscription] = 0;
  v46 = OBJC_IVAR____TtC9MusicCore6Player_lock;
  type metadata accessor for UnfairLock(0, v47);
  swift_allocObject();
  *&v1[v46] = UnfairLock.init()();
  if (qword_100600040 != -1)
  {
    swift_once();
  }

  v48 = qword_1006175E0;
  v49 = unk_1006175E8;
  v50 = objc_allocWithZone(MPCPlaybackEngine);
  v51 = sub_1004BBE24();
  v52 = [v50 initWithPlayerID:v51];

  v53 = v52;
  sub_1001D4B28(v48, v49);

  *&v1[OBJC_IVAR____TtC9MusicCore6Player_engine] = v53;
  [v53 becomeActive];
  v54 = OBJC_IVAR____TtC9MusicCore6Player_engine;
  v55 = *&v1[OBJC_IVAR____TtC9MusicCore6Player_engine];

  v56 = sub_1001D4A40(v55);
  LOBYTE(v55) = sub_1000FF478(4u, v56);

  if (v55)
  {
    v57 = *&v1[v54];
    v120 = sub_1001FC4FC;
    v121 = 0;
    aBlock = _NSConcreteStackBlock;
    v117 = 1107296256;
    v118 = sub_1001FC6A4;
    v119 = &unk_1005B8688;
    v58 = _Block_copy(&aBlock);
    v59 = v57;
    [v59 restoreStateWithCompletion:v58];
    _Block_release(v58);
  }

  v60 = v103;
  v61 = [v103 systemRoute];
  v62 = [objc_allocWithZone(MPVolumeControllerRouteDataSource) initWithGroupRoute:v61 outputDeviceRoute:0];
  v63 = [objc_opt_self() sharedController];
  [v63 setActiveDataSource:v62];

  v64 = swift_allocObject();
  v65 = v104;
  *(v64 + 16) = v1;
  *(v64 + 24) = v65;
  v66 = swift_allocObject();
  *(v66 + 16) = sub_100212B40;
  *(v66 + 24) = v64;
  v120 = sub_100212B80;
  v121 = v66;
  aBlock = _NSConcreteStackBlock;
  v117 = 1107296256;
  v118 = sub_100207FC0;
  v119 = &unk_1005B8610;
  v67 = _Block_copy(&aBlock);

  [v60 getActiveRouteWithTimeout:v67 completion:1.0];

  _Block_release(v67);
  v68 = MPAVRoutingControllerActiveSystemRouteDidChangeNotification;
  v69 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for NotificationObserver(0, v70);
  swift_allocObject();

  *&v1[OBJC_IVAR____TtC9MusicCore6Player_activeSystemRouteDidChangeNotificationObserver] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v68, 0, 1, 1, sub_100215AE4, v69);

  v71 = MRAVEndpointGroupSessionInfoDidChangeNotification;
  v72 = swift_allocObject();
  swift_weakInit();
  swift_allocObject();
  *&v1[OBJC_IVAR____TtC9MusicCore6Player_sharePlayTogetherSessionObserver] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v71, 0, 1, 1, sub_100212BA0, v72);

  v73 = MRAVEndpointGroupSessionHostingEligibilityDidChangeNotification;
  v74 = swift_allocObject();
  swift_weakInit();
  v75 = v73;

  swift_allocObject();
  *&v1[OBJC_IVAR____TtC9MusicCore6Player_sharePlayTogetherEligibilityObserver] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v75, 0, 1, 1, sub_100212BD8, v74);

  if (qword_1005FFE10 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_100003ABC(&qword_1006066D0, &unk_1004CD5D8);
  v76 = v105;
  sub_1004B8574();
  swift_endAccess();
  sub_1000206D4(&unk_1006066D8, &qword_1006065D0, &qword_1004D3730, &protocol conformance descriptor for Published<A>.Publisher);
  v77 = v107;
  v78 = v108;
  sub_1004B85F4();
  (*(v106 + 8))(v76, v77);
  sub_100009130(0, &qword_100603570, OS_dispatch_queue_ptr);
  v79 = sub_1004BCB44();
  aBlock = v79;
  v80 = sub_1004BCB24();
  v81 = v114;
  (*(*(v80 - 8) + 56))(v114, 1, 1, v80);
  sub_1000206D4(&qword_1006066E8, &qword_1006065D8, &qword_1004D3738, &protocol conformance descriptor for Publishers.Map<A, B>);
  sub_100212C10();
  v82 = v109;
  v83 = v111;
  sub_1004B8614();
  sub_100007214(v81, &qword_1006026C0, &qword_1004CB378);

  (*(v110 + 8))(v78, v83);
  sub_1000206D4(&qword_1006066F8, &unk_1006065E0, &unk_1004D3740, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
  v84 = v113;
  v85 = sub_1004B8644();
  (*(v112 + 8))(v82, v84);
  *&v1[OBJC_IVAR____TtC9MusicCore6Player_ratingWarningThresholdSubscription] = v85;

  v86 = v115;
  sub_1004BC484();
  v87 = sub_1004BC4B4();
  (*(*(v87 - 8) + 56))(v86, 0, 1, v87);
  sub_1004BC474();

  v88 = sub_1004BC464();
  v89 = swift_allocObject();
  v89[2] = v88;
  v89[3] = &protocol witness table for MainActor;
  v89[4] = v1;
  sub_10001F35C(0, 0, v86, &unk_1004D3798, v89);

  sub_100007214(v86, &qword_1006014F0, &qword_1004C9B00);
  return v1;
}

void sub_1001FC4FC(char a1, uint64_t a2)
{
  if ((a1 & 1) == 0)
  {
    if (qword_100600070 != -1)
    {
      swift_once();
    }

    v2 = sub_1004B80B4();
    sub_100007084(v2, qword_100617648);
    swift_errorRetain();
    oslog = sub_1004B8094();
    v3 = sub_1004BC984();

    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v10 = v5;
      *v4 = 136446210;
      swift_errorRetain();
      sub_100003ABC(&qword_100607010, &qword_1004D3148);
      v6 = sub_1004BBF04();
      v8 = sub_100012018(v6, v7, &v10);

      *(v4 + 4) = v8;
      _os_log_impl(&_mh_execute_header, oslog, v3, "Restoration Failed with error=%{public}s", v4, 0xCu);
      sub_100004C6C(v5);
    }

    else
    {
    }
  }
}

void sub_1001FC6A4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_1001FC71C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_1004BC474();
  *(v4 + 24) = sub_1004BC464();
  v6 = sub_1004BC3E4();

  return _swift_task_switch(sub_1001FC7B4, v6, v5);
}

uint64_t sub_1001FC7B4()
{

  if (qword_1006000D8 != -1)
  {
    swift_once();
  }

  v1 = sub_1004B80B4();
  sub_100007084(v1, static Logger.sharePlayTogether);
  v2 = sub_1004B8094();
  v3 = sub_1004BC9A4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Got MRAVEndpointGroupSessionInfoDidChange notification", v4, 2u);
  }

  v5 = *(v0 + 16);

  if (v5)
  {
    sub_10020C2AC();
  }

  v6 = *(v0 + 8);

  return v6();
}

double sub_1001FC8E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_100003ABC(&qword_1006014F0, &qword_1004C9B00);
  __chkstk_darwin();
  v6 = &v12 - v5;
  v7 = sub_1004BC4B4();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  sub_1004BC474();
  v9 = sub_1004BC464();
  v10 = swift_allocObject();
  v10[2] = v9;
  v10[3] = &protocol witness table for MainActor;
  v10[4] = Strong;
  sub_1000FD6BC(0, 0, v6, a4, v10);

  return result;
}

uint64_t sub_1001FCA1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_1004BC474();
  *(v4 + 24) = sub_1004BC464();
  v6 = sub_1004BC3E4();

  return _swift_task_switch(sub_1001FCAB4, v6, v5);
}

uint64_t sub_1001FCAB4()
{

  if (qword_1006000D8 != -1)
  {
    swift_once();
  }

  v1 = sub_1004B80B4();
  sub_100007084(v1, static Logger.sharePlayTogether);
  v2 = sub_1004B8094();
  v3 = sub_1004BC9A4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Got MRAVEndpointGroupSessionHostingEligibilityDidChangeNotification notification", v4, 2u);
  }

  v5 = *(v0 + 16);

  if (v5)
  {
    sub_10020C2AC();
  }

  v6 = *(v0 + 8);

  return v6();
}

double sub_1001FCBE0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 80);
  v3 = *(a1 + 64);
  *a2 = *(a1 + 48);
  *(a2 + 16) = v3;
  *(a2 + 32) = v2;

  return result;
}

void sub_1001FCC2C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = objc_opt_self();
  v4 = [v3 sharedRestrictionsMonitor];
  [v4 setMaximumMovieRatingForAgeGate:v2];

  v5 = [v3 sharedRestrictionsMonitor];
  [v5 setMaximumTVShowRatingForAgeGate:v2];
}

uint64_t sub_1001FCCD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = sub_1004BC474();
  v4[4] = sub_1004BC464();
  v5 = swift_task_alloc();
  v4[5] = v5;
  *v5 = v4;
  v5[1] = sub_1001FCD84;

  return Player.startEngineIfNeeded()();
}

uint64_t sub_1001FCD84()
{

  v1 = sub_1004BC3E4();

  return _swift_task_switch(sub_1001FCEC0, v1, v0);
}

uint64_t sub_1001FCEC0()
{

  sub_10020C2AC();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t Player.startEngineIfNeeded()()
{
  v1[16] = v0;
  v1[17] = sub_1004BC474();
  v1[18] = sub_1004BC464();
  v3 = sub_1004BC3E4();
  v1[19] = v3;
  v1[20] = v2;

  return _swift_task_switch(sub_1001FCFC4, v3, v2);
}

uint64_t sub_1001FCFC4()
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
      sub_100208850(0);
    }

    v3 = sub_1004BC464();
    v0[21] = v3;
    if (v3)
    {
      swift_getObjectType();
      v4 = sub_1004BC3E4();
      v6 = v5;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    return _swift_task_switch(sub_1001FD0E0, v4, v6);
  }
}

uint64_t sub_1001FD0E0()
{
  v1 = v0[16];
  v0[2] = v0;
  v0[3] = sub_1001FD260;
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
    v5 = sub_1000183B0(0, v5[2] + 1, 1, v5);
    *(v1 + v4) = v5;
  }

  v8 = v5[2];
  v7 = v5[3];
  if (v8 >= v7 >> 1)
  {
    v5 = sub_1000183B0((v7 > 1), v8 + 1, 1, v5);
  }

  v5[2] = v8 + 1;
  v9 = &v5[2 * v8];
  v9[4] = sub_100212D30;
  v9[5] = v3;
  *(v1 + v4) = v5;
  swift_endAccess();

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1001FD260()
{
  v1 = *(*v0 + 160);
  v2 = *(*v0 + 152);

  return _swift_task_switch(sub_1001FD368, v2, v1);
}

uint64_t sub_1001FD368()
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
  return sub_1001FD4D4;
}

id sub_1001FD4D4(uint64_t a1, char a2)
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

void sub_1001FD538(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();

  *a2 = v3;
}

double sub_1001FD5B8(void **a1, uint64_t *a2)
{
  v2 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();

  v3 = v2;
  sub_1004B85B4();
  return sub_1001FD634();
}

double sub_1001FD634()
{
  v1 = v0;
  sub_100003ABC(&qword_1006014F0, &qword_1004C9B00);
  __chkstk_darwin();
  v3 = &v17 - v2;
  v4 = sub_100208FDC();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();

  v5 = v18;
  v6 = OBJC_IVAR____TtCC9MusicCore6PlayerP33_031AD420BBF8BBF113A2662767DAC2BB10DataSource_path;
  v7 = *&v4[OBJC_IVAR____TtCC9MusicCore6PlayerP33_031AD420BBF8BBF113A2662767DAC2BB10DataSource_path];
  *&v4[OBJC_IVAR____TtCC9MusicCore6PlayerP33_031AD420BBF8BBF113A2662767DAC2BB10DataSource_path] = v18;
  sub_100009130(0, &qword_100601B28, MPCPlayerPath_ptr);
  v8 = v5;
  if ((sub_1004BCFA4() & 1) == 0)
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

  v13 = sub_1004BC4B4();
  (*(*(v13 - 8) + 56))(v3, 1, 1, v13);
  sub_1004BC474();

  v14 = sub_1004BC464();
  v15 = swift_allocObject();
  v15[2] = v14;
  v15[3] = &protocol witness table for MainActor;
  v15[4] = v1;
  sub_1000FD6BC(0, 0, v3, &unk_1004D4000, v15);

  return result;
}

uint64_t sub_1001FD858(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_1004BC474();
  *(v4 + 24) = sub_1004BC464();
  v6 = sub_1004BC3E4();

  return _swift_task_switch(sub_1001FD8F0, v6, v5);
}

uint64_t sub_1001FD8F0()
{

  sub_10020C2AC();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t Player.path.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();

  return v1;
}

uint64_t sub_1001FD9C8(_BYTE *a1, uint64_t *a2)
{
  v3 = sub_100003ABC(&unk_100606F78, &unk_1004D3F80);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin();
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  (v10)(&v12 - v8, a1, v3, v7);
  v10(v6, v9, v3);
  swift_beginAccess();
  sub_100003ABC(&qword_100606608, &unk_1004D3768);
  sub_1004B8584();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t Player.nowPlayingObserver.getter()
{
  v1 = OBJC_IVAR____TtC9MusicCore6Player____lazy_storage___nowPlayingObserver;
  if (*(v0 + OBJC_IVAR____TtC9MusicCore6Player____lazy_storage___nowPlayingObserver))
  {
    v2 = *(v0 + OBJC_IVAR____TtC9MusicCore6Player____lazy_storage___nowPlayingObserver);
  }

  else
  {
    v3 = v0;
    type metadata accessor for Player.NowPlayingObserver(0);
    swift_allocObject();

    v2 = sub_100212D60(v4);

    *(v3 + v1) = v2;
  }

  return v2;
}

uint64_t Player.NowPlayingObserver.__allocating_init(player:)(uint64_t a1)
{
  swift_allocObject();
  v2 = sub_100212D60(a1);

  return v2;
}

uint64_t sub_1001FDC58(_BYTE *a1, uint64_t *a2)
{
  v3 = sub_100003ABC(&unk_100609050, &qword_1004D2B10);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin();
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  (v10)(&v12 - v8, a1, v3, v7);
  v10(v6, v9, v3);
  swift_beginAccess();
  sub_100003ABC(&qword_100606240, &qword_1004D3170);
  sub_1004B8584();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t sub_1001FDE0C(void **a1, uint64_t *a2)
{
  v2 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;

  return sub_1004B85B4();
}

uint64_t sub_1001FDE98(uint64_t a1, uint64_t *a2)
{
  v3 = sub_100003ABC(&qword_100606F70, &qword_1004D3F78);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin();
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3, v7);
  (v10)(v6, v9, v3);
  swift_beginAccess();
  sub_100003ABC(&unk_1006065F8, &unk_1004D3758);
  sub_1004B8584();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t sub_1001FE038(void *a1)
{
  v2 = v1;
  sub_100003ABC(&qword_1006014F0, &qword_1004C9B00);
  __chkstk_darwin();
  v5 = &v15 - v4;
  if (!a1)
  {
    goto LABEL_8;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v6 = a1;
  sub_1004B85A4();

  v7 = v16;
  if (v16)
  {
    type metadata accessor for SharePlayTogetherSession(0);
    v8 = sub_1004BCFA4();

    if (v8)
    {
      goto LABEL_7;
    }
  }

  else
  {
  }

  v9 = sub_1004BC4B4();
  (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
  sub_1004BC474();
  v10 = v6;

  v11 = sub_1004BC464();
  v12 = swift_allocObject();
  v12[2] = v11;
  v12[3] = &protocol witness table for MainActor;
  v12[4] = v2;
  v12[5] = v10;
  sub_1000FD6BC(0, 0, v5, &unk_1004D3F48, v12);

LABEL_7:

LABEL_8:
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();

  if (v16)
  {
    v13 = v16[OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_isHost];
  }

  else
  {
    v13 = 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v16) = v13;

  return sub_1004B85B4();
}

uint64_t sub_1001FE2AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  sub_1004BC474();
  v5[10] = sub_1004BC464();
  v7 = sub_1004BC3E4();

  return _swift_task_switch(sub_1001FE344, v7, v6);
}

uint64_t sub_1001FE344()
{

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();

  v1 = v0[2];
  if (v1)
  {
    if (SharePlayTogetherSession.isEquivalent(to:)(v0[2]))
    {
      v2 = v0[9];
      v3 = OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_sessionEndedObservers;
      swift_beginAccess();
      *(v2 + v3) = _swiftEmptyArrayStorage;

      v4 = OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_sessionConnectionObservers;
      swift_beginAccess();
      *(v2 + v4) = _swiftEmptyArrayStorage;

      goto LABEL_6;
    }
  }

  SharePlayTogetherSession.cleanup(notifyObservers:)(1);
LABEL_6:
  v5 = v0[1];

  return v5();
}

uint64_t sub_1001FE494(uint64_t a1, uint64_t *a2)
{
  v3 = sub_100003ABC(&qword_100606F68, &qword_1004D3F70);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin();
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3, v7);
  (v10)(v6, v9, v3);
  swift_beginAccess();
  sub_100003ABC(&qword_1006065F0, &qword_1004D3750);
  sub_1004B8584();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t sub_1001FE670(_BYTE *a1, uint64_t *a2)
{
  v3 = sub_100003ABC(&qword_100605D10, &qword_1004D5F60);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin();
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  (v10)(&v12 - v8, a1, v3, v7);
  v10(v6, v9, v3);
  swift_beginAccess();
  sub_100003ABC(&qword_1006051A8, &qword_1004D8F60);
  sub_1004B8584();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

void sub_1001FE824(_BYTE *a4@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();

  *a4 = v5;
}

uint64_t sub_1001FE8B4(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1004B85B4();
}

uint64_t sub_1001FE938(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();

  return v3;
}

uint64_t sub_1001FE9A4(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t *a5, uint64_t *a6)
{
  swift_beginAccess();
  sub_100003ABC(a5, a6);
  sub_1004B8574();
  return swift_endAccess();
}

uint64_t sub_1001FEA20(_BYTE *a1, uint64_t *a2)
{
  v3 = sub_100003ABC(&qword_100605D10, &qword_1004D5F60);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin();
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  (v10)(&v12 - v8, a1, v3, v7);
  v10(v6, v9, v3);
  swift_beginAccess();
  sub_100003ABC(&qword_1006051A8, &qword_1004D8F60);
  sub_1004B8584();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

id Player.supportsDelegation.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();

  v0 = [v8 route];

  if (!v0)
  {
    return 0;
  }

  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (!v1)
  {
    goto LABEL_12;
  }

  result = [v1 endpointObject];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v3 = result;
  v4 = [result externalDevice];

  if (!v4 || (v5 = [v4 deviceInfo], v4, !v5))
  {
LABEL_12:

    return 0;
  }

  v6 = [v5 deviceClass];

  return (v6 == 7 || v6 == 4);
}

uint64_t Player.isInAnySharePlaySession.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();

  if (!v2 || (v0 = [v2 isSharedListeningSession], v2, (v0 & 1) == 0))
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1004B85A4();

    if (!v2)
    {
      return 0;
    }

    result = *&v2[OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_session];
    if (!result)
    {
      __break(1u);
      return result;
    }

    if ([result isPlaceholder])
    {

      return 0;
    }

    if (v2[OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_isHost] == 1)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1004B85A4();

      return v2 > 0;
    }
  }

  return 1;
}

void Player.sharePlayTogether(with:completion:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = *(v4 + OBJC_IVAR____TtC9MusicCore6Player_currentSharePlayTogetherConnectionRequestToken);
  *(v4 + OBJC_IVAR____TtC9MusicCore6Player_currentSharePlayTogetherConnectionRequestToken) = a1;
  v8 = a1;

  v9 = swift_allocObject();
  swift_weakInit();
  v10 = swift_allocObject();
  v10[2] = v9;
  v10[3] = v8;
  v10[4] = a2;
  v10[5] = a3;
  v13[4] = sub_1002132F8;
  v13[5] = v10;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_1001FF0C8;
  v13[3] = &unk_1005B8700;
  v11 = _Block_copy(v13);
  v12 = v8;
  sub_10002F518(a2, a3);

  MRGroupSessionJoinSessionWithToken();
  _Block_release(v11);
}

double sub_1001FEFC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void (*a6)(uint64_t))
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v12 = OBJC_IVAR____TtC9MusicCore6Player_currentSharePlayTogetherConnectionRequestToken;
    v13 = *(Strong + OBJC_IVAR____TtC9MusicCore6Player_currentSharePlayTogetherConnectionRequestToken);
    if (v13)
    {
      sub_100009130(0, &qword_100606FE8, MRGroupSessionToken_ptr);
      v14 = a5;
      v15 = v13;
      v16 = sub_1004BCFA4();

      if (v16)
      {
        v17 = *(v11 + v12);
        *(v11 + v12) = 0;

        if (a6)
        {
          a6(a3);
        }
      }
    }
  }

  return result;
}

void sub_1001FF0C8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = sub_1004BBE64();
  v7 = v6;

  v8 = a3;
  v4(v5, v7, a3);
}

void Player.requestSharePlayTogether(completion:)(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();

  v4 = [v12[0] route];

  if (v4)
  {
    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();
    if (v5)
    {
      v6 = [v5 endpointObject];
      if (!v6)
      {
        __break(1u);
        return;
      }

      v7 = v6;
      sub_100009130(0, &qword_100603570, OS_dispatch_queue_ptr);
      v8 = sub_1004BCB44();
      v9 = swift_allocObject();
      swift_weakInit();
      v10 = swift_allocObject();
      v10[2] = v9;
      v10[3] = a1;
      v10[4] = a2;
      v12[4] = sub_10021334C;
      v12[5] = v10;
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 1107296256;
      v12[2] = sub_1001FF620;
      v12[3] = &unk_1005B8750;
      v11 = _Block_copy(v12);
      sub_10002F518(a1, a2);

      [v7 requestGroupSessionWithQueue:v8 completion:v11];
      _Block_release(v11);

      v4 = v8;
    }
  }
}

double sub_1001FF35C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_100003ABC(&qword_1006014F0, &qword_1004C9B00);
  __chkstk_darwin();
  v12 = &v19 - v11;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    v16 = sub_1004BC4B4();
    (*(*(v16 - 8) + 56))(v12, 1, 1, v16);
    sub_1004BC474();

    sub_10002F518(a5, a6);

    swift_errorRetain();
    v17 = sub_1004BC464();
    v18 = swift_allocObject();
    v18[2] = v17;
    v18[3] = &protocol witness table for MainActor;
    v18[4] = v15;
    v18[5] = a5;
    v18[6] = a6;
    v18[7] = a1;
    v18[8] = a2;
    v18[9] = a3;
    sub_1000FD6BC(0, 0, v12, &unk_1004D3FE0, v18);
  }

  return result;
}

uint64_t sub_1001FF4F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a8;
  v8[7] = v13;
  v8[4] = a6;
  v8[5] = a7;
  v8[2] = a4;
  v8[3] = a5;
  sub_1004BC474();
  v8[8] = sub_1004BC464();
  v10 = sub_1004BC3E4();

  return _swift_task_switch(sub_1001FF5A0, v10, v9);
}

uint64_t sub_1001FF5A0()
{
  v1 = v0[3];

  sub_10020C2AC();
  if (v1)
  {
    (v0[3])(v0[5], v0[6], v0[7]);
  }

  v2 = v0[1];

  return v2();
}

uint64_t sub_1001FF620(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = sub_1004BBE64();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a3;
  v4(v5, v7, a3);
}

uint64_t Player.getNowPlaying()()
{
  v1[17] = v0;
  v1[18] = sub_1004BC474();
  v1[19] = sub_1004BC464();
  v3 = sub_1004BC3E4();
  v1[20] = v3;
  v1[21] = v2;

  return _swift_task_switch(sub_1001FF754, v3, v2);
}

uint64_t sub_1001FF754()
{
  v1 = sub_10020AB30();
  v2 = *&v1[OBJC_IVAR____TtCC9MusicCore6PlayerP33_031AD420BBF8BBF113A2662767DAC2BB10DataSource_request];
  *(v0 + 176) = v2;
  v3 = v2;

  v4 = sub_1004BC464();
  *(v0 + 184) = v4;
  if (v4)
  {
    swift_getObjectType();
    v5 = sub_1004BC3E4();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  return _swift_task_switch(sub_1001FF80C, v5, v7);
}

uint64_t sub_1001FF80C()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 2;
  v4 = v0 + 10;
  v5 = v0 + 16;
  v6 = v0[22];
  v1[2] = v2;
  v1[7] = v5;
  v1[3] = sub_1001FF968;
  v7 = swift_continuation_init();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  v1[14] = sub_100213358;
  v1[15] = v8;
  v1[10] = _NSConcreteStackBlock;
  v1[11] = 1107296256;
  v1[12] = sub_1000E26FC;
  v1[13] = &unk_1005B87A0;
  v9 = _Block_copy(v4);

  [v6 performWithCompletion:v9];
  _Block_release(v9);
  swift_unknownObjectRelease();

  return _swift_continuation_await(v3);
}

uint64_t sub_1001FF968(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  *(*v1 + 192) = v3;
  if (v3)
  {
    swift_willThrow();

    v4 = v2[20];
    v5 = v2[21];
    v6 = sub_1001FFCC0;
  }

  else
  {

    v2[25] = v2[16];
    v4 = v2[20];
    v5 = v2[21];
    v6 = sub_1001FFAB8;
  }

  return _swift_task_switch(v6, v4, v5);
}

uint64_t sub_1001FFAB8()
{
  v1 = *(v0 + 200);

  if (v1)
  {
    v2 = *(v0 + 200);
    v3 = [v2 playerPath];
    v4 = [v3 isSystemMusicPath];

    if (v4 || (v5 = [v2 playerPath], v6 = objc_msgSend(v5, "representedBundleID"), v5, !v6))
    {
      v7 = *(v0 + 200);
    }

    else
    {

      v7 = 0;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 80) = v7;

    sub_1004B85B4();
    v8 = [v2 playerPath];
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 80) = 0;

    sub_1004B85B4();
    v8 = 0;
  }

  v9 = *(v0 + 176);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 80) = v8;
  v10 = v8;

  sub_1004B85B4();

  v11 = *(v0 + 8);
  v12 = *(v0 + 200);

  return v11(v12);
}