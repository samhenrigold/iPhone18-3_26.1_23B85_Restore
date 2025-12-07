uint64_t sub_100057854(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_10007AF4C();
}

uint64_t sub_1000578D8@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10007AF3C();

  *a2 = v4;
  return result;
}

uint64_t sub_100057958(void **a1, uint64_t *a2)
{
  v2 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();

  v3 = v2;
  return sub_10007AF4C();
}

uint64_t sub_1000579D0(uint64_t a1)
{
  v2 = sub_1000057A0(&unk_10009ED10, &qword_10007D310);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v37 - v6;
  v8 = sub_10007AC4C();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10007AF3C();

  v12 = v38;
  if (v38 > 4u)
  {
    if (v38 <= 6u)
    {
      if (v38 == 5)
      {
        if (!*(a1 + 16))
        {
          goto LABEL_25;
        }

        v13 = 11;
        goto LABEL_24;
      }

      goto LABEL_22;
    }

    if (v38 == 7 || v38 == 8)
    {
      goto LABEL_22;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_10007AF3C();

    if ((*(v9 + 48))(v7, 1, v8) != 1)
    {
      (*(v9 + 32))(v11, v7, v8);
      swift_getKeyPath();
      swift_getKeyPath();

      sub_10007AF3C();

      v21 = v37;
      v22 = sub_1000202B0(v11, v37);
      v24 = v23;

      (*(v9 + 16))(v5, v11, v8);
      (*(v9 + 56))(v5, 0, 1, v8);
      LOBYTE(v21) = sub_100021110(v22, v24, v5);
      v24, v25, v26, v27, v28, v29, v30, v31;
      sub_100008824(v5, &unk_10009ED10, &qword_10007D310);
      v32 = *(a1 + 16);
      switch(v21)
      {
        case 1:
          if (!v32)
          {
            goto LABEL_64;
          }

          v33 = 1;
          break;
        case 2:
          if (!v32)
          {
            goto LABEL_64;
          }

          v33 = 2;
          break;
        case 3:
          if (!v32)
          {
            goto LABEL_64;
          }

          v33 = 3;
          break;
        case 4:
          if (!v32)
          {
            goto LABEL_64;
          }

          v33 = 4;
          break;
        case 5:
          if (!v32)
          {
            goto LABEL_64;
          }

          v33 = 5;
          break;
        case 6:
          if (!v32)
          {
            goto LABEL_64;
          }

          v33 = 6;
          break;
        case 7:
          if (!v32)
          {
            goto LABEL_64;
          }

          v33 = 7;
          break;
        case 8:
          if (!v32)
          {
            goto LABEL_64;
          }

          v33 = 8;
          break;
        case 9:
          if (!v32)
          {
            goto LABEL_64;
          }

          v33 = 9;
          break;
        case 10:
          if (!v32)
          {
            goto LABEL_64;
          }

          v33 = 10;
          break;
        case 11:
          if (!v32)
          {
            goto LABEL_64;
          }

          v33 = 11;
          break;
        case 12:
          if (!v32)
          {
            goto LABEL_64;
          }

          v33 = 12;
          break;
        case 13:
          if (!v32)
          {
            goto LABEL_64;
          }

          v33 = 13;
          break;
        default:
          if (!v32)
          {
            goto LABEL_64;
          }

          v33 = 0;
          break;
      }

      v34 = sub_10005F3AC(v33);
      if (v35)
      {
        v19 = *(*(a1 + 56) + 16 * v34);
        v36 = *(v9 + 8);

        v36(v11, v8);
        return v19;
      }

LABEL_64:
      (*(v9 + 8))(v11, v8);
      goto LABEL_25;
    }

    sub_100008824(v7, &unk_10009ED10, &qword_10007D310);
    if (!*(a1 + 16))
    {
      goto LABEL_67;
    }

    v14 = sub_10005F3AC(1);
    if (v15)
    {
      goto LABEL_27;
    }

    if (!*(a1 + 16))
    {
      goto LABEL_67;
    }

    v14 = sub_10005F3AC(13);
    if (v16)
    {
      goto LABEL_27;
    }

    __break(1u);
LABEL_16:
    if (v12)
    {
      if (!*(a1 + 16))
      {
        goto LABEL_25;
      }

      v13 = 7;
      goto LABEL_24;
    }

LABEL_22:
    if (!*(a1 + 16))
    {
      goto LABEL_25;
    }

    v13 = 13;
    goto LABEL_24;
  }

  if (v38 <= 1u)
  {
    goto LABEL_16;
  }

  if (v38 == 2)
  {
    if (!*(a1 + 16))
    {
      goto LABEL_25;
    }

    v13 = 8;
  }

  else
  {
    if (v38 == 3)
    {
      if (*(a1 + 16))
      {
        v13 = 9;
        goto LABEL_24;
      }

LABEL_25:
      if (*(a1 + 16))
      {
        v14 = sub_10005F3AC(13);
        if (v18)
        {
          goto LABEL_27;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
LABEL_67:
      __break(1u);
      JUMPOUT(0x100057F08);
    }

    if (!*(a1 + 16))
    {
      goto LABEL_25;
    }

    v13 = 10;
  }

LABEL_24:
  v14 = sub_10005F3AC(v13);
  if ((v17 & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_27:
  v19 = *(*(a1 + 56) + 16 * v14);

  return v19;
}

uint64_t sub_100057F40()
{
  v0 = sub_1000057A0(&unk_10009ED10, &qword_10007D310);
  __chkstk_darwin(v0 - 8);
  v2 = &v11 - v1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10007AF3C();

  v3 = sub_10007AC4C();
  v4 = 1;
  v5 = (*(*(v3 - 8) + 48))(v2, 1, v3);
  sub_100008824(v2, &unk_10009ED10, &qword_10007D310);
  if (v5 == 1)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_10007AF3C();

    v6 = v12;
    if (v12)
    {
      v7 = sub_10007B15C();
      v8 = NSSelectorFromString(v7);

      if ([v6 respondsToSelector:v8] && objc_msgSend(v6, "br_isCloudDocsShare"))
      {

        return 1;
      }

      v9 = sub_100050218();

      if (v9 == 9)
      {
        return 1;
      }
    }

    return 0;
  }

  return v4;
}

uint64_t sub_10005814C(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 296) = a2;
  *(v4 + 304) = v3;
  *(v4 + 408) = a3;
  *(v4 + 288) = a1;
  v5 = sub_10007AE2C();
  *(v4 + 312) = v5;
  *(v4 + 320) = *(v5 - 8);
  *(v4 + 328) = swift_task_alloc();
  sub_10007B32C();
  *(v4 + 336) = sub_10007B31C();
  v7 = sub_10007B2EC();
  *(v4 + 344) = v7;
  *(v4 + 352) = v6;

  return _swift_task_switch(sub_100058248, v7, v6);
}

uint64_t sub_100058248()
{
  if (*(v0 + 408))
  {
    v1 = sub_100021AB0();
    *(v0 + 368) = v1;
    v2 = v0 + 16;
    v3 = v1;
    v4 = sub_10007B15C();
    *(v0 + 392) = v4;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 272;
    *(v0 + 24) = sub_1000587EC;
    v5 = swift_continuation_init();
    *(v0 + 200) = sub_1000057A0(&unk_10009F3B0, &qword_10007F298);
    *(v0 + 144) = _NSConcreteStackBlock;
    *(v0 + 152) = 1107296256;
    *(v0 + 160) = sub_100068868;
    *(v0 + 168) = &unk_100097D38;
    *(v0 + 176) = v5;
    [v3 fetchShareParticipantWithPhoneNumber:v4 completionHandler:v0 + 144];
  }

  else
  {
    v6 = sub_100021AB0();
    *(v0 + 360) = v6;
    v2 = v0 + 80;
    v7 = v6;
    v8 = sub_10007B15C();
    *(v0 + 376) = v8;
    *(v0 + 80) = v0;
    *(v0 + 120) = v0 + 280;
    *(v0 + 88) = sub_100058630;
    v9 = swift_continuation_init();
    *(v0 + 264) = sub_1000057A0(&unk_10009F3B0, &qword_10007F298);
    *(v0 + 208) = _NSConcreteStackBlock;
    *(v0 + 216) = 1107296256;
    *(v0 + 224) = sub_100068868;
    *(v0 + 232) = &unk_100097D60;
    *(v0 + 240) = v9;
    [v7 fetchShareParticipantWithEmailAddress:v8 completionHandler:v0 + 208];
  }

  return _swift_continuation_await(v2);
}

uint64_t sub_100058630()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 384) = v2;
  v3 = *(v1 + 352);
  v4 = *(v1 + 344);
  if (v2)
  {
    v5 = sub_1000589A8;
  }

  else
  {
    v5 = sub_100058760;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100058760()
{
  v1 = v0[47];
  v2 = v0[45];

  v3 = v0[35];

  v4 = v0[1];

  return v4(v3);
}

uint64_t sub_1000587EC()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 400) = v2;
  v3 = *(v1 + 352);
  v4 = *(v1 + 344);
  if (v2)
  {
    v5 = sub_100058BA4;
  }

  else
  {
    v5 = sub_10005891C;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10005891C()
{
  v1 = v0[49];
  v2 = v0[46];

  v3 = v0[34];

  v4 = v0[1];

  return v4(v3);
}

uint64_t sub_1000589A8()
{
  v1 = v0[47];
  v2 = v0[45];

  swift_willThrow();

  sub_10007AE0C();
  swift_errorRetain();
  v3 = sub_10007AE1C();
  v4 = sub_10007B3FC();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&_mh_execute_header, v3, v4, "participant(withAddress) got CK error: %@", v5, 0xCu);
    sub_100008824(v6, &qword_10009F570, &qword_10007DAF0);
  }

  v9 = v0[40];
  v8 = v0[41];
  v10 = v0[39];

  (*(v9 + 8))(v8, v10);
  v11 = sub_10007AB7C();
  sub_100005AB8();
  swift_allocError();
  *v12 = 0xD000000000000019;
  *(v12 + 8) = 0x8000000100082610;
  *(v12 + 24) = 0;
  *(v12 + 32) = 0;
  *(v12 + 16) = v11;
  *(v12 + 40) = 2;
  swift_willThrow();

  v13 = v0[1];

  return v13();
}

uint64_t sub_100058BA4()
{
  v1 = v0[49];
  v2 = v0[46];

  swift_willThrow();

  sub_10007AE0C();
  swift_errorRetain();
  v3 = sub_10007AE1C();
  v4 = sub_10007B3FC();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&_mh_execute_header, v3, v4, "participant(withAddress) got CK error: %@", v5, 0xCu);
    sub_100008824(v6, &qword_10009F570, &qword_10007DAF0);
  }

  v9 = v0[40];
  v8 = v0[41];
  v10 = v0[39];

  (*(v9 + 8))(v8, v10);
  v11 = sub_10007AB7C();
  sub_100005AB8();
  swift_allocError();
  *v12 = 0xD000000000000019;
  *(v12 + 8) = 0x8000000100082610;
  *(v12 + 24) = 0;
  *(v12 + 32) = 0;
  *(v12 + 16) = v11;
  *(v12 + 40) = 2;
  swift_willThrow();

  v13 = v0[1];

  return v13();
}

uint64_t sub_100058DA4(uint64_t a1, void *a2, void *a3)
{
  v5 = sub_100005918((a1 + 32), *(a1 + 56));
  v7 = *v5;
  if (a3)
  {
    sub_1000057A0(&qword_10009E7B0, &qword_10007CFC0);
    v8 = swift_allocError();
    *v9 = a3;
    v10 = a3;
    v5 = v7;
    v6 = v8;

    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  if (!a2)
  {
    __break(1u);
    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  **(v7[8] + 40) = a2;
  v11 = a2;

  return swift_continuation_throwingResume();
}

uint64_t sub_100058E7C(uint64_t a1, unsigned __int8 a2)
{
  if (sub_10004F79C())
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_10007AF3C();

    if (v5)
    {
      goto LABEL_6;
    }
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_10007AF3C();

    if (v8)
    {
      goto LABEL_6;
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();

  sub_10007AF3C();

  if (v7 != 1)
  {
    return 3;
  }

LABEL_6:
  swift_getKeyPath();
  swift_getKeyPath();

  sub_10007AF3C();

  if (v6 & 1 | a2 & (a1 == 3))
  {
    return 2;
  }

  else
  {
    return 3;
  }
}

uint64_t sub_100059058(uint64_t a1, char a2, char a3)
{
  *(v4 + 116) = a3;
  *(v4 + 115) = a2;
  *(v4 + 24) = a1;
  *(v4 + 32) = v3;
  v5 = sub_10007AE2C();
  *(v4 + 40) = v5;
  *(v4 + 48) = *(v5 - 8);
  *(v4 + 56) = swift_task_alloc();
  sub_10007B32C();
  *(v4 + 64) = sub_10007B31C();
  v7 = sub_10007B2EC();
  *(v4 + 72) = v7;
  *(v4 + 80) = v6;

  return _swift_task_switch(sub_100059154, v7, v6);
}

uint64_t sub_100059154()
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_10007AF3C();

  v1 = *(v0 + 16);
  *(v0 + 88) = v1;
  if (!v1)
  {

    sub_100005AB8();
    swift_allocError();
    *v12 = 0xD000000000000034;
    *(v12 + 8) = 0x80000001000825D0;
    *(v12 + 16) = xmmword_10007E710;
    *(v12 + 32) = 0x8000000100082500;
    *(v12 + 40) = 11;
    swift_willThrow();

    v9 = *(v0 + 8);
LABEL_11:

    return v9();
  }

  if (*(v0 + 115) == 1)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_10007AF3C();

    if (*(v0 + 114) == 1)
    {

      sub_10007AE0C();
      v2 = sub_10007AE1C();
      v3 = sub_10007B41C();
      v4 = os_log_type_enabled(v2, v3);
      v6 = *(v0 + 48);
      v5 = *(v0 + 56);
      v7 = *(v0 + 40);
      if (v4)
      {
        v8 = swift_slowAlloc();
        *v8 = 0;
        _os_log_impl(&_mh_execute_header, v2, v3, "addParticipantsToShare, doing nothing as we have a public share", v8, 2u);
      }

      (*(v6 + 8))(v5, v7);

      v9 = *(v0 + 8);
      goto LABEL_11;
    }
  }

  *(v0 + 96) = sub_100069054();
  *(v0 + 104) = v10;
  *(v0 + 112) = v11;

  return _swift_task_switch(sub_100059424, 0, 0);
}

uint64_t sub_100059424(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, int64_t a7, int64_t a8)
{
  v9 = *(v8 + 24);
  if (v9 >> 62)
  {
    goto LABEL_40;
  }

  for (i = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_10007B64C())
  {
    v11 = 0;
    v12 = *(v8 + 104);
    v13 = v9 & 0xC000000000000001;
    v14 = *(v8 + 24) + 32;
    v15 = &stru_10009D000;
    v26 = *(v8 + 100);
    v27 = v9 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v13)
      {
        v17 = sub_10007B5DC();
      }

      else
      {
        if (v11 >= *(v27 + 16))
        {
          goto LABEL_36;
        }

        v17 = *(v14 + 8 * v11);
      }

      v9 = v17;
      v18 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (*(v8 + 116) != 1 || [v17 role] == 1)
      {
        goto LABEL_6;
      }

      if (v26 == 3)
      {
        goto LABEL_20;
      }

      if (*(v8 + 100) > 1u)
      {
        if (*(v8 + 100) != 2)
        {
          return sub_10007B63C("Fatal error", 11, 2, 0xD000000000000044, 0x8000000100082580, "com_apple_CloudSharingUI_AddParticipants/SharingOptions.swift", 61, 2, 107, 0);
        }

LABEL_20:
        v19 = 2;
        goto LABEL_21;
      }

      if (*(v8 + 100))
      {
        v19 = 3;
      }

      else
      {
        v19 = 1;
      }

LABEL_21:
      [v9 v15[52].offs];
      v20 = *(v12 + 16);
      if (!v20)
      {
        goto LABEL_37;
      }

      if (*(v12 + 32) != 1)
      {
        if (v20 == 1)
        {
          goto LABEL_38;
        }

LABEL_29:
        if (*(v8 + 112))
        {
          v16 = 2;
          goto LABEL_5;
        }

        goto LABEL_4;
      }

      if (v20 == 1)
      {
        goto LABEL_39;
      }

      if (v26 != 1 || !*(v12 + 33))
      {
        goto LABEL_29;
      }

      if ([v9 role] == 3 || (v25 = *(v8 + 112), v21 = objc_msgSend(v9, "role"), (v25 & 1) != 0))
      {
        v16 = 2;
        v15 = &stru_10009D000;
        goto LABEL_5;
      }

      v16 = 2;
      v15 = &stru_10009D000;
      if (v21 == 2)
      {
        goto LABEL_5;
      }

LABEL_4:
      v16 = 3;
LABEL_5:
      [v9 setRole:v16];
LABEL_6:
      [*(v8 + 88) addParticipant:v9];

      ++v11;
      if (v18 == i)
      {
        goto LABEL_41;
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    ;
  }

LABEL_41:
  *(v8 + 104), a2, a3, a4, a5, a6, a7, a8;
  v23 = *(v8 + 72);
  v24 = *(v8 + 80);

  return _swift_task_switch(sub_1000596FC, v23, v24);
}

uint64_t sub_1000596FC()
{
  v1 = *(v0 + 88);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100059770()
{
  v1[4] = v0;
  v2 = sub_10007AE2C();
  v1[5] = v2;
  v1[6] = *(v2 - 8);
  v1[7] = swift_task_alloc();
  sub_1000057A0(&unk_10009ED10, &qword_10007D310);
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v3 = sub_10007AC4C();
  v1[14] = v3;
  v1[15] = *(v3 - 8);
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  sub_10007B32C();
  v1[18] = sub_10007B31C();
  v5 = sub_10007B2EC();
  v1[19] = v5;
  v1[20] = v4;

  return _swift_task_switch(sub_100059940, v5, v4);
}

uint64_t sub_100059940()
{
  v43 = v0;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10007AF3C();

  if ((*(v0 + 216) & 0xFE) != 8)
  {

    v7 = *(v0 + 8);
    goto LABEL_5;
  }

  v1 = *(v0 + 112);
  v2 = *(v0 + 120);
  v3 = *(v0 + 104);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10007AF3C();

  v4 = *(v2 + 48);
  *(v0 + 168) = v4;
  *(v0 + 176) = (v2 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v4(v3, 1, v1) == 1)
  {
    v5 = *(v0 + 104);

    sub_100008824(v5, &unk_10009ED10, &qword_10007D310);
    sub_100005AB8();
    swift_allocError();
    *v6 = 0xD000000000000016;
    *(v6 + 8) = 0x80000001000822D0;
    *(v6 + 24) = 0;
    *(v6 + 32) = 0;
    *(v6 + 16) = 0;
    *(v6 + 40) = 0;
    swift_willThrow();

    v7 = *(v0 + 8);
LABEL_5:

    return v7();
  }

  v9 = *(v0 + 128);
  v10 = *(v0 + 136);
  v11 = *(v0 + 112);
  v12 = *(v0 + 120);
  (*(v12 + 32))(v10, *(v0 + 104), v11);
  sub_10007AE0C();
  (*(v12 + 16))(v9, v10, v11);
  v13 = sub_10007AE1C();
  v14 = sub_10007B41C();
  v15 = os_log_type_enabled(v13, v14);
  v17 = *(v0 + 120);
  v16 = *(v0 + 128);
  v18 = *(v0 + 112);
  v20 = *(v0 + 48);
  v19 = *(v0 + 56);
  v21 = *(v0 + 40);
  if (v15)
  {
    v41 = *(v0 + 40);
    v22 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v42 = v40;
    *v22 = 136315138;
    sub_1000661F4(&qword_10009EB10, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v23 = sub_10007B69C();
    v39 = v19;
    v25 = v24;
    v38 = v14;
    v26 = *(v17 + 8);
    v26(v16, v18);
    v27 = sub_100037C08(v23, v25, &v42);
    v25, v28, v29, v30, v31, v32, v33, v34;
    *(v22 + 4) = v27;
    _os_log_impl(&_mh_execute_header, v13, v38, "Fetching share for URL: %s", v22, 0xCu);
    sub_10000585C(v40);

    (*(v20 + 8))(v39, v41);
  }

  else
  {

    v26 = *(v17 + 8);
    v26(v16, v18);
    (*(v20 + 8))(v19, v21);
  }

  *(v0 + 184) = v26;
  v35 = swift_task_alloc();
  *(v0 + 192) = v35;
  *v35 = v0;
  v35[1] = sub_100059E2C;
  v36 = *(v0 + 136);
  v37 = *(v0 + 88);

  return sub_100025350(v37, v36);
}

uint64_t sub_100059E2C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 200) = a1;
  *(v4 + 208) = v1;

  v5 = *(v3 + 160);
  v6 = *(v3 + 152);
  if (v1)
  {
    v7 = sub_10005A2E8;
  }

  else
  {
    v7 = sub_100059F70;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_100059F70()
{
  v1 = v0[21];
  v2 = v0[14];
  v4 = v0[11];
  v3 = v0[12];
  v5 = v0[10];

  sub_10002591C(v4, v3, &unk_10009ED10, &qword_10007D310);
  sub_1000187C8(v3, v5, &unk_10009ED10, &qword_10007D310);
  LODWORD(v2) = v1(v5, 1, v2);
  sub_100008824(v5, &unk_10009ED10, &qword_10007D310);
  v6 = v0[25];
  if (v2 != 1)
  {
    v7 = [objc_allocWithZone(BRCKShareSubitem) initWithShare:v6];

    v6 = v7;
  }

  v9 = v0[8];
  v8 = v0[9];
  sub_1000187C8(v0[12], v8, &unk_10009ED10, &qword_10007D310);
  sub_1000187C8(v8, v9, &unk_10009ED10, &qword_10007D310);

  sub_100007330(v9);

  sub_100008824(v8, &unk_10009ED10, &qword_10007D310);
  swift_getKeyPath();
  swift_getKeyPath();
  v10 = v0[23];
  v11 = v0[17];
  v12 = v0[14];
  v13 = v0[15];
  v14 = v0[12];
  if (v6)
  {
    v0[3] = v6;

    sub_10007AF4C();
    sub_100008824(v14, &unk_10009ED10, &qword_10007D310);
    v10(v11, v12);
  }

  else
  {
    v19 = v0[23];
    v16 = v0[8];
    v15 = v0[9];
    v0[2] = 0;
    swift_retain_n();
    sub_10007AF4C();
    (*(v13 + 56))(v15, 1, 1, v12);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1000187C8(v15, v16, &unk_10009ED10, &qword_10007D310);

    sub_10007AF4C();
    sub_100008824(v15, &unk_10009ED10, &qword_10007D310);

    sub_100008824(v14, &unk_10009ED10, &qword_10007D310);
    v19(v11, v12);
  }

  v17 = v0[1];

  return v17();
}

uint64_t sub_10005A2E8()
{
  v1 = v0[23];
  v2 = v0[17];
  v3 = v0[14];

  v1(v2, v3);

  v4 = v0[1];

  return v4();
}

void sub_10005A3E4(unsigned __int8 a1, void *a2)
{
  v4 = a1;
  v5 = sub_10007AE2C();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v148 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v148 - v10;
  if (v4 == 6)
  {
    sub_10004F634();
    v154 = [objc_allocWithZone(NSError) initWithDomain:NSCocoaErrorDomain code:3072 userInfo:0];
    sub_100024F98(v154);
    swift_unknownObjectRelease();
    v12 = v154;
  }

  else
  {
    v13 = v2;
    if (a2)
    {
      v14 = a2;
      sub_10007AE0C();
      v15 = v14;
      v16 = sub_10007AE1C();
      v17 = sub_10007B3FC();

      if (os_log_type_enabled(v16, v17))
      {
        LODWORD(v150) = v17;
        v152 = v16;
        v154 = v6;
        v18 = swift_slowAlloc();
        v149 = swift_slowAlloc();
        v155 = v149;
        v151 = v18;
        *v18 = 136315394;
        v19 = sub_10007B26C();
        v27 = v20;
        if ((" to the next service" & 0x2000000000000000) != 0)
        {
          v28 = (" to the next service" >> 40) & 0xF0000;
        }

        else
        {
          v28 = 2031616;
        }

        v153 = v13;
        if (v28)
        {
          v29 = v19;
          while (1)
          {
            v30 = sub_10007B26C();
            v38 = v31;
            if (v30 == v29 && v31 == v27)
            {
              v27, v31, v32, v33, v34, v35, v36, v37;
              goto LABEL_32;
            }

            v39 = sub_10007B6BC();
            v38, v40, v41, v42, v43, v44, v45, v46;
            if (v39)
            {
              break;
            }

            if ((v28 ^ sub_10007B20C()) < 0x4000)
            {
              goto LABEL_16;
            }
          }

          v38 = v27;
LABEL_32:
          v38, v47, v48, v49, v50, v51, v52, v53;
          sub_10007B27C();
          v97 = v96;
          v98 = sub_10007B1DC();
          v55 = v99;
          v97, v99, v100, v101, v102, v103, v104, v105;
          v54 = v98;
        }

        else
        {
LABEL_16:
          v27, v20, v21, v22, v23, v24, v25, v26;
          v54 = 0;
          v55 = 0xE000000000000000;
        }

        v107 = v151;
        v106 = v152;
        v108 = sub_100037C08(v54, v55, &v155);
        v55, v109, v110, v111, v112, v113, v114, v115;
        *(v107 + 1) = v108;
        *(v107 + 6) = 2080;
        v116 = v15;
        v117 = [v116 description];
        v118 = sub_10007B19C();
        v120 = v119;

        v121 = sub_100037C08(v118, v120, &v155);
        v120, v122, v123, v124, v125, v126, v127, v128;
        *(v107 + 14) = v121;
        _os_log_impl(&_mh_execute_header, v106, v150, "%s cancelling via extension with error: %s", v107, 0x16u);
        swift_arrayDestroy();

        (*(v154 + 1))(v11, v5);
      }

      else
      {

        (v6)[1](v11, v5);
      }

      sub_10004F634();
      sub_100024F98(v15);
    }

    else
    {
      sub_10007AE0C();
      v56 = sub_10007AE1C();
      v57 = sub_10007B41C();
      if (os_log_type_enabled(v56, v57))
      {
        LODWORD(v151) = v57;
        v154 = v6;
        v58 = swift_slowAlloc();
        v150 = swift_slowAlloc();
        v155 = v150;
        v152 = v58;
        LODWORD(v58->isa) = 136315138;
        v59 = sub_10007B26C();
        v67 = v60;
        if ((" to the next service" & 0x2000000000000000) != 0)
        {
          v68 = (" to the next service" >> 40) & 0xF0000;
        }

        else
        {
          v68 = 2031616;
        }

        v153 = v13;
        if (v68)
        {
          v69 = v59;
          while (1)
          {
            v70 = sub_10007B26C();
            v78 = v71;
            if (v70 == v69 && v71 == v67)
            {
              v67, v71, v72, v73, v74, v75, v76, v77;
              goto LABEL_37;
            }

            v79 = sub_10007B6BC();
            v78, v80, v81, v82, v83, v84, v85, v86;
            if (v79)
            {
              break;
            }

            if ((v68 ^ sub_10007B20C()) < 0x4000)
            {
              goto LABEL_27;
            }
          }

          v78 = v67;
LABEL_37:
          v78, v87, v88, v89, v90, v91, v92, v93;
          sub_10007B27C();
          v130 = v129;
          v131 = sub_10007B1DC();
          v95 = v132;
          v130, v132, v133, v134, v135, v136, v137, v138;
          v94 = v131;
        }

        else
        {
LABEL_27:
          v67, v60, v61, v62, v63, v64, v65, v66;
          v94 = 0;
          v95 = 0xE000000000000000;
        }

        v139 = sub_100037C08(v94, v95, &v155);
        v95, v140, v141, v142, v143, v144, v145, v146;
        v147 = v152;
        *(&v152->isa + 4) = v139;
        _os_log_impl(&_mh_execute_header, v56, v151, "%s dismissing via extension without error", v147, 0xCu);
        sub_10000585C(v150);

        (*(v154 + 1))(v9, v5);
      }

      else
      {

        (v6)[1](v9, v5);
      }

      sub_10004F634();
    }

    swift_unknownObjectRelease();
  }
}

uint64_t sub_10005AA6C()
{
  v0 = sub_10007AE2C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10007AE0C();
  v4 = sub_10007AE1C();
  v5 = sub_10007B3DC();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v10 = v7;
    *v6 = 136446210;
    *(v6 + 4) = sub_100037C08(0xD00000000000001CLL, 0x8000000100082460, &v10);
    _os_log_impl(&_mh_execute_header, v4, v5, "%{public}s Finish", v6, 0xCu);
    sub_10000585C(v7);
  }

  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_10005AC04()
{

  *(v0 + 32), v1, v2, v3, v4, v5, v6, v7;
  sub_1000687F0(v0 + 40);
  sub_100066FD8(*(v0 + 56), *(v0 + 64));
  v8 = OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12SharingModel__isDelegateInitialized;
  v9 = sub_1000057A0(&qword_10009E650, &qword_10007ED80);
  v10 = *(*(v9 - 8) + 8);
  v10(v0 + v8, v9);
  v11 = OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12SharingModel__executionMode;
  v12 = sub_1000057A0(&unk_10009F120, &qword_10007ED78);
  (*(*(v12 - 8) + 8))(v0 + v11, v12);
  v13 = OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12SharingModel__sharingType;
  v14 = sub_1000057A0(&qword_10009F118, &qword_10007ED70);
  (*(*(v14 - 8) + 8))(v0 + v13, v14);
  v15 = OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12SharingModel__sharingStage;
  v16 = sub_1000057A0(&qword_10009F110, &qword_10007ED68);
  (*(*(v16 - 8) + 8))(v0 + v15, v16);
  v17 = OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12SharingModel__addedAddresses;
  v18 = sub_1000057A0(&qword_10009F108, &qword_10007ED60);
  (*(*(v18 - 8) + 8))(v0 + v17, v18);
  v19 = OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12SharingModel__createOrLoadStage;
  v20 = sub_1000057A0(&qword_10009F100, &qword_10007ED58);
  (*(*(v20 - 8) + 8))(v0 + v19, v20);
  v21 = OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12SharingModel__addingAddressesStage;
  v22 = sub_1000057A0(&qword_10009F0F8, &qword_10007ED50);
  (*(*(v22 - 8) + 8))(v0 + v21, v22);
  v23 = OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12SharingModel__savingStage;
  v24 = sub_1000057A0(&qword_10009F0F0, &qword_10007ED48);
  (*(*(v24 - 8) + 8))(v0 + v23, v24);
  v25 = OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12SharingModel__alertNowShowing;
  v26 = sub_1000057A0(&qword_10009F0E8, &qword_10007ED40);
  (*(*(v26 - 8) + 8))(v0 + v25, v26);
  v10(v0 + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12SharingModel__isShowingAlert, v9);
  v10(v0 + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12SharingModel__isFolderShare, v9);

  v10(v0 + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12SharingModel__isFolderSubshare, v9);

  v27 = OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12SharingModel__folderSharingStage;
  v28 = sub_1000057A0(&qword_10009F0E0, &qword_10007ED38);
  (*(*(v28 - 8) + 8))(v0 + v27, v28);
  v29 = OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12SharingModel__shareSaveStatus;
  v30 = sub_1000057A0(&qword_10009F0D8, &qword_10007ED30);
  (*(*(v30 - 8) + 8))(v0 + v29, v30);
  swift_unknownObjectRelease();
  v31 = OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12SharingModel__sharingOptionsAllowedFromSPI;
  v32 = sub_1000057A0(&qword_10009F0D0, &qword_10007ED28);
  (*(*(v32 - 8) + 8))(v0 + v31, v32);
  v33 = OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12SharingModel__yourNameAndEmail;
  v34 = sub_1000057A0(&qword_10009F0C8, &qword_10007ED20);
  (*(*(v34 - 8) + 8))(v0 + v33, v34);
  v35 = OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12SharingModel__sharedFileOrFolderURL;
  v36 = sub_1000057A0(&qword_10009F0C0, &unk_10007D660);
  (*(*(v36 - 8) + 8))(v0 + v35, v36);
  v37 = OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12SharingModel__itemUTI;
  v38 = sub_1000057A0(&qword_10009E2B8, &unk_10007ED10);
  v39 = *(*(v38 - 8) + 8);
  v39(v0 + v37, v38);
  v10(v0 + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12SharingModel__isShareRoot, v9);
  v40 = OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12SharingModel__thumbnail;
  v41 = sub_1000057A0(&unk_10009F0B0, &qword_10007ED08);
  (*(*(v41 - 8) + 8))(v0 + v40, v41);
  v42 = OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12SharingModel__thumbnailFromCloudKitSPI;
  v43 = sub_1000057A0(&qword_10009F0A8, &qword_10007ED00);
  v44 = *(*(v43 - 8) + 8);
  v44(v0 + v42, v43);
  v44(v0 + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12SharingModel__thumbnailFromDocumentSPI, v43);
  v45 = OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12SharingModel__itemTitle;
  v46 = sub_1000057A0(&qword_10009F0A0, &qword_10007ECF8);
  v47 = *(*(v46 - 8) + 8);
  v47(v0 + v45, v46);
  v39(v0 + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12SharingModel__sourceAppBundleID, v38);
  v47(v0 + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12SharingModel__sectionTitleForAuxiliaryToggles, v46);
  v47(v0 + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12SharingModel__primaryCheckboxTitle, v46);
  v47(v0 + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12SharingModel__secondaryCheckboxTitle, v46);
  v10(v0 + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12SharingModel__primaryCheckboxState, v9);
  v10(v0 + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12SharingModel__secondaryCheckboxState, v9);
  v48 = OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12SharingModel__ckContainerIdentifier;
  v49 = sub_1000057A0(&qword_10009F098, &qword_10007ECF0);
  (*(*(v49 - 8) + 8))(v0 + v48, v49);
  v47(v0 + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12SharingModel__helpAnchor, v46);
  v50 = OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12SharingModel__participantDetails;
  v51 = sub_1000057A0(&qword_10009F090, &qword_10007ECE8);
  (*(*(v51 - 8) + 8))(v0 + v50, v51);

  return v0;
}

uint64_t sub_10005B430()
{
  sub_10005AC04();

  return swift_deallocClassInstance();
}

void sub_10005B488()
{
  v0 = sub_10007B15C();
  v1 = [objc_opt_self() imageNamed:v0];

  if (!v1)
  {
    v1 = [objc_allocWithZone(UIImage) init];
  }

  qword_10009EB00 = v1;
}

uint64_t sub_10005B51C(char a1)
{
  *(v2 + 168) = v1;
  *(v2 + 106) = a1;
  sub_1000057A0(&qword_10009ECD0, &qword_10007E810);
  *(v2 + 176) = swift_task_alloc();
  *(v2 + 184) = swift_task_alloc();
  v3 = type metadata accessor for AlertViewModelButton(0);
  *(v2 + 192) = v3;
  *(v2 + 200) = *(v3 - 8);
  *(v2 + 208) = swift_task_alloc();
  v4 = sub_10007AE2C();
  *(v2 + 216) = v4;
  *(v2 + 224) = *(v4 - 8);
  *(v2 + 232) = swift_task_alloc();
  *(v2 + 240) = swift_task_alloc();
  *(v2 + 248) = swift_task_alloc();
  *(v2 + 256) = swift_task_alloc();
  *(v2 + 264) = swift_task_alloc();
  *(v2 + 272) = swift_task_alloc();
  *(v2 + 280) = swift_task_alloc();
  *(v2 + 288) = swift_task_alloc();
  sub_1000057A0(&qword_10009F370, &qword_10007FC90);
  *(v2 + 296) = swift_task_alloc();
  *(v2 + 304) = sub_10007B32C();
  *(v2 + 312) = sub_10007B31C();
  v6 = sub_10007B2EC();
  *(v2 + 320) = v6;
  *(v2 + 328) = v5;

  return _swift_task_switch(sub_10005B744, v6, v5);
}

uint64_t sub_10005B744()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10007AF3C();

  if ((*(v0 + 57) & 1) != 0 || (swift_getKeyPath(), swift_getKeyPath(), sub_10007AF3C(), , , *(v0 + 58) - 2 > 3))
  {

    v9 = *(v0 + 8);

    return v9();
  }

  else
  {
    v1 = *(v0 + 296);
    v2 = *(v0 + 168);
    sub_10007B33C();
    v3 = sub_10007B35C();
    (*(*(v3 - 8) + 56))(v1, 0, 1, v3);

    v4 = sub_10007B31C();
    v5 = swift_allocObject();
    v5[2] = v4;
    v5[3] = &protocol witness table for MainActor;
    v5[4] = v2;
    v6 = sub_10004C328(0, 0, v1, &unk_10007F4C0, v5);
    *(v0 + 336) = v6;
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 59) = 0;

    sub_10007AF4C();
    v7 = swift_task_alloc();
    *(v0 + 344) = v7;
    v8 = sub_1000057A0(&qword_10009E7B0, &qword_10007CFC0);
    *(v0 + 352) = v8;
    *v7 = v0;
    v7[1] = sub_10005BA94;

    return Task.value.getter(v8, v6, &type metadata for () + 8, v8, &protocol self-conformance witness table for Error);
  }
}

uint64_t sub_10005BA94()
{
  v2 = *v1;
  *(*v1 + 360) = v0;

  v3 = *(v2 + 328);
  v4 = *(v2 + 320);
  if (v0)
  {
    v5 = sub_10005BD28;
  }

  else
  {
    v5 = sub_10005BBD0;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10005BBD0()
{

  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 105) = 2;

  sub_10007AF4C();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10005BD28()
{
  v322 = v0;
  *(v0 + 144) = *(v0 + 360);
  swift_errorRetain();
  if (swift_dynamicCast())
  {
    v2 = *(v0 + 16);
    v1 = *(v0 + 24);
    *(v0 + 368) = v2;
    *(v0 + 376) = v1;
    v3 = *(v0 + 32);
    v4 = *(v0 + 40);
    *(v0 + 384) = v3;
    *(v0 + 392) = v4;
    v5 = *(v0 + 48);
    *(v0 + 400) = v5;
    v318 = *(v0 + 56);
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 60) = 2;

    sub_10007AF4C();
    sub_10007AE0C();
    sub_100018B7C(v2, v1, v3, v4, v5, v318);
    v6 = v1;
    v7 = sub_10007AE1C();
    v8 = sub_10007B3FC();
    v316 = v3;
    v9 = v3;
    v10 = v4;
    v11 = v4;
    v12 = v318;
    sub_100018BDC(v2, v6, v9, v11, v5, v318, v13, v14);
    v308 = v8;
    v15 = os_log_type_enabled(v7, v8);
    v313 = *(v0 + 288);
    v16 = *(v0 + 224);
    v17 = *(v0 + 216);
    v317 = v5;
    if (v15)
    {
      v18 = v6;
      loga = v7;
      v304 = *(v0 + 216);
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v321 = v20;
      *v19 = 136315138;
      *(v0 + 64) = v2;
      *(v0 + 72) = v18;
      *(v0 + 80) = v316;
      *(v0 + 88) = v10;
      *(v0 + 96) = v5;
      *(v0 + 104) = v318;
      sub_100018B7C(v2, v18, v316, v10, v5, v318);
      v21 = sub_10007B1AC();
      v23 = v22;
      v24 = sub_100037C08(v21, v22, &v321);
      v25 = v23;
      v26 = v10;
      v25, v27, v28, v29, v30, v31, v32, v33;
      *(v19 + 4) = v24;
      v12 = v318;
      _os_log_impl(&_mh_execute_header, loga, v308, "saveShareAndReportErrors error: %s", v19, 0xCu);
      sub_10000585C(v20);

      v34 = *(v16 + 8);
      result = v34(v313, v304);
    }

    else
    {

      v36 = *(v16 + 8);
      result = v36(v313, v17);
      v34 = v36;
      v26 = v10;
      v18 = v6;
    }

    *(v0 + 408) = v34;
    if (v12 == 4)
    {
      v314 = v34;
      v37 = v316;
      if (!v316)
      {
        __break(1u);
        return result;
      }

      sub_100018B7C(v2, v18, v316, v26, v317, 4u);
      v38 = v316;
      v39 = v18;
      sub_100027710(22);
      v41 = v40;

      if (v41)
      {

        sub_10007AE0C();
        v42 = sub_10007AE1C();
        v43 = sub_10007B3FC();
        if (os_log_type_enabled(v42, v43))
        {
          v44 = swift_slowAlloc();
          *v44 = 0;
          _os_log_impl(&_mh_execute_header, v42, v43, "saveShareAndReportErrors got batchRequestFailed, will retry once", v44, 2u);
        }

        v45 = *(v0 + 280);
        v46 = *(v0 + 216);
        v47 = *(v0 + 106);

        v314(v45, v46);
        if (v47 == 1)
        {
          v48 = swift_task_alloc();
          *(v0 + 416) = v48;
          *v48 = v0;
          v48[1] = sub_10005D48C;

          return sub_10005B51C(0);
        }

        v39, v142, v143, v144, v145, v146, v147, v148;

        v317, v149, v150, v151, v152, v153, v154, v155;
        v37 = v316;
        v18 = v39;
        LOBYTE(v12) = v318;
        goto LABEL_16;
      }

      v51 = v38;
      sub_100027710(14);
      v53 = v52;

      if (v53)
      {
        v309 = v26;
        v319 = v39;
        sub_10007AE0C();
        v54 = sub_10007AE1C();
        v55 = sub_10007B3FC();
        if (os_log_type_enabled(v54, v55))
        {
          v56 = swift_slowAlloc();
          *v56 = 0;
          _os_log_impl(&_mh_execute_header, v54, v55, "saveShareAndReportErrors got oplock error, will update share and show alert", v56, 2u);
        }

        v57 = *(v0 + 272);
        v58 = *(v0 + 216);
        v305 = v0;

        v314(v57, v58);
        v59 = v51;

        v60 = [v59 userInfo];
        log = v59;

        v61 = sub_10007B11C();
        v62 = sub_10007B19C();
        if (v61[2].super.isa)
        {
          v70 = v63;
          v71 = sub_100037AD8(v62, v63);
          v73 = v72;
          v70, v72, v74, v75, v76, v77, v78, v79;
          v87 = v39;
          if (v73)
          {
            sub_1000057F8(v61[7].super.isa + 32 * v71, v0 + 112);
            v61, v88, v89, v90, v91, v92, v93, v94;
            sub_100005C8C(0, &qword_10009F3E0, CKShare_ptr);
            if (swift_dynamicCast())
            {
              sub_100018BDC(v2, v39, v316, v309, v317, 4, v95, v96);
              v97 = *(v0 + 152);
              sub_10007AE0C();
              v98 = v97;
              v99 = sub_10007AE1C();
              v100 = sub_10007B3EC();

              if (os_log_type_enabled(v99, v100))
              {
                v101 = swift_slowAlloc();
                v102 = swift_slowAlloc();
                *v101 = 138412290;
                *(v101 + 4) = v98;
                *v102 = v98;
                v103 = v98;
                _os_log_impl(&_mh_execute_header, v99, v100, "saveShareAndReportErrors oplock error server's updated share: %@", v101, 0xCu);
                sub_100008824(v102, &qword_10009F570, &qword_10007DAF0);
              }

              v104 = *(v305 + 208);
              v105 = *(v305 + 192);
              v299 = *(v305 + 200);
              v300 = *(v305 + 184);
              v310 = *(v305 + 176);
              v314(*(v305 + 264), *(v305 + 216));
              swift_getKeyPath();
              swift_getKeyPath();
              *(v305 + 160) = v98;
              v315 = v98;

              sub_10007AF4C();
              sub_10007B0AC();
              LOWORD(v296._object) = 256;
              v106 = sub_10007B0CC();
              v108 = v107;
              v110 = v109;
              v112 = v111;
              v113 = v105[6];
              v114 = sub_10007B05C();
              (*(*(v114 - 8) + 56))(v104 + v113, 1, 1, v114);
              v115 = swift_allocObject();
              swift_weakInit();
              sub_10007AC8C();
              v116 = v104 + v105[5];
              *v116 = v106;
              *(v116 + 8) = v108;
              *(v116 + 16) = v110 & 1;
              *(v116 + 24) = v112;
              v117 = (v104 + v105[7]);
              *v117 = sub_1000687D4;
              v117[1] = v115;
              v118 = objc_opt_self();
              v119 = [v118 mainBundle];
              v296._countAndFlagsBits = 0x8000000100082990;
              v324._countAndFlagsBits = 0x1000000000000019;
              v324._object = 0x8000000100082970;
              v329.value._countAndFlagsBits = 0;
              v329.value._object = 0;
              v120.super.isa = v119;
              v334._countAndFlagsBits = 0;
              v334._object = 0xE000000000000000;
              v121 = sub_10007AA5C(v324, v329, v120, v334, 0xD000000000000029, v296);
              v123 = v122;

              v124 = v104;
              v125 = [v118 mainBundle];
              v297._countAndFlagsBits = 0x80000001000829E0;
              v325._object = 0x80000001000829C0;
              v325._countAndFlagsBits = 0xD000000000000011;
              v330.value._countAndFlagsBits = 0;
              v330.value._object = 0;
              v126.super.isa = v125;
              v335._countAndFlagsBits = 0;
              v335._object = 0xE000000000000000;
              v127 = sub_10007AA5C(v325, v330, v126, v335, 0xD00000000000002BLL, v297);
              v129 = v128;

              sub_1000057A0(&qword_10009F3D8, &qword_10007F4C8);
              v130 = (*(v299 + 80) + 32) & ~*(v299 + 80);
              v131 = swift_allocObject();
              *(v131 + 16) = xmmword_10007CF20;
              sub_1000686A4(v124, v131 + v130);
              sub_10007AC8C();
              v132 = type metadata accessor for AlertViewModel(0);
              v133 = (v300 + v132[5]);
              *v133 = v121;
              v133[1] = v123;
              v134 = (v300 + v132[6]);
              *v134 = v127;
              v134[1] = v129;
              *(v300 + v132[7]) = v131;
              (*(*(v132 - 1) + 56))(v300, 0, 1, v132);
              swift_getKeyPath();
              swift_getKeyPath();
              sub_1000187C8(v300, v310, &qword_10009ECD0, &qword_10007E810);

              sub_10007AF4C();
              sub_100008824(v300, &qword_10009ECD0, &qword_10007E810);
              swift_getKeyPath();
              swift_getKeyPath();
              *(v305 + 63) = 1;

              sub_10007AF4C();

              v319, v135, v136, v137, v138, v139, v140, v141;

              v0 = v305;
              goto LABEL_40;
            }
          }

          else
          {
            v61, v80, v81, v82, v83, v84, v85, v86;
          }
        }

        else
        {
          v63, v63, v64, v65, v66, v67, v68, v69;
          v61, v260, v261, v262, v263, v264, v265, v266;
          v87 = v39;
        }

        sub_10007AE0C();
        v267 = sub_10007AE1C();
        v268 = sub_10007B3EC();
        if (os_log_type_enabled(v267, v268))
        {
          v269 = swift_slowAlloc();
          *v269 = 0;
          _os_log_impl(&_mh_execute_header, v267, v268, "saveShareAndReportErrors userInfo has no CKRecordChangedErrorServerRecordKey, so rethrow oplock", v269, 2u);
        }

        v270 = *(v0 + 256);
        v271 = *(v0 + 216);

        v314(v270, v271);
        sub_100005AB8();
        swift_allocError();
        *v272 = v2;
        *(v272 + 8) = v87;
        *(v272 + 16) = v316;
        *(v272 + 24) = v309;
        *(v272 + 32) = v317;
        *(v272 + 40) = 4;
        swift_willThrow();
        sub_100018B7C(v2, v87, v316, v309, v317, 4u);

        v87, v273, v274, v275, v276, v277, v278, v279;

        v317, v280, v281, v282, v283, v284, v285, v286;
        sub_100018BDC(v2, v87, v316, v309, v317, 4, v287, v288);
        goto LABEL_17;
      }

      v156 = v51;
      sub_100027988(2011);
      v158 = v157;

      if (v158)
      {
        v315 = v156;
        v320 = v39;
        sub_100018BDC(v2, v39, v316, v26, v317, 4, v159, v160);
        sub_10007AE0C();
        v161 = sub_10007AE1C();
        v162 = sub_10007B3EC();
        if (os_log_type_enabled(v161, v162))
        {
          v163 = swift_slowAlloc();
          *v163 = 0;
          _os_log_impl(&_mh_execute_header, v161, v162, "saveShareAndReportErrors got rejected login error", v163, 2u);
        }

        v164 = *(v0 + 248);
        v165 = *(v0 + 216);
        v166 = *(v0 + 208);
        v168 = *(v0 + 184);
        v167 = *(v0 + 192);
        v306 = *(v0 + 200);
        v311 = *(v0 + 176);

        v314(v164, v165);
        sub_10007B0AC();
        LOWORD(v296._object) = 256;
        v169 = sub_10007B0CC();
        v171 = v170;
        LOBYTE(v165) = v172;
        v174 = v173;
        v175 = v167[6];
        v176 = sub_10007B05C();
        (*(*(v176 - 8) + 56))(v166 + v175, 1, 1, v176);
        v177 = swift_allocObject();
        swift_weakInit();
        sub_10007AC8C();
        v178 = v166 + v167[5];
        *v178 = v169;
        *(v178 + 8) = v171;
        *(v178 + 16) = v165 & 1;
        *(v178 + 24) = v174;
        v179 = (v166 + v167[7]);
        *v179 = sub_1000687CC;
        v179[1] = v177;
        v180 = [objc_opt_self() mainBundle];
        v296._countAndFlagsBits = 0x8000000100082920;
        v326._countAndFlagsBits = 0x6E67695320746F4ELL;
        v326._object = 0xED00006E49206465;
        v331.value._countAndFlagsBits = 0;
        v331.value._object = 0;
        v181.super.isa = v180;
        v336._countAndFlagsBits = 0;
        v336._object = 0xE000000000000000;
        v182 = sub_10007AA5C(v326, v331, v181, v336, 0xD000000000000047, v296);
        v184 = v183;

        v185 = sub_100066FE4();
        v186 = sub_1000579D0(v185);
        v188 = v187;
        v185, v187, v189, v190, v191, v192, v193, v194;
        sub_1000057A0(&qword_10009F3D8, &qword_10007F4C8);
        v195 = (*(v306 + 80) + 32) & ~*(v306 + 80);
        v196 = swift_allocObject();
        *(v196 + 16) = xmmword_10007CF20;
        v197 = v196 + v195;
        v124 = v166;
        sub_1000686A4(v166, v197);
        sub_10007AC8C();
        v198 = type metadata accessor for AlertViewModel(0);
        v199 = (v168 + v198[5]);
        *v199 = v182;
        v199[1] = v184;
        v200 = (v168 + v198[6]);
        *v200 = v186;
        v200[1] = v188;
        *(v168 + v198[7]) = v196;
        (*(*(v198 - 1) + 56))(v168, 0, 1, v198);
        swift_getKeyPath();
        swift_getKeyPath();
        sub_1000187C8(v168, v311, &qword_10009ECD0, &qword_10007E810);

        sub_10007AF4C();
        sub_100008824(v168, &qword_10009ECD0, &qword_10007E810);
        swift_getKeyPath();
        swift_getKeyPath();
        *(v0 + 62) = 1;

LABEL_39:
        sub_10007AF4C();

        v320, v246, v247, v248, v249, v250, v251, v252;
LABEL_40:

        v317, v253, v254, v255, v256, v257, v258, v259;
        sub_100068770(v124);

        v50 = *(v0 + 8);
        goto LABEL_18;
      }

      v201 = v156;
      sub_100027988(2045);
      v203 = v202;

      if (v203)
      {
        v315 = v201;
        v320 = v39;
        sub_100018BDC(v2, v39, v316, v26, v317, 4, v209, v210);
        sub_10007AE0C();
        v211 = sub_10007AE1C();
        v212 = sub_10007B3EC();
        if (os_log_type_enabled(v211, v212))
        {
          v213 = swift_slowAlloc();
          *v213 = 0;
          _os_log_impl(&_mh_execute_header, v211, v212, "saveShareAndReportErrors got too many participants error", v213, 2u);
        }

        v214 = *(v0 + 240);
        v215 = *(v0 + 216);
        v216 = *(v0 + 208);
        v217 = *(v0 + 192);
        logb = *(v0 + 200);
        v307 = *(v0 + 184);
        v312 = *(v0 + 176);

        v314(v214, v215);
        sub_10007B0AC();
        LOWORD(v296._object) = 256;
        v218 = sub_10007B0CC();
        v220 = v219;
        LOBYTE(v215) = v221;
        v223 = v222;
        v224 = v217[6];
        v225 = sub_10007B05C();
        (*(*(v225 - 8) + 56))(v216 + v224, 1, 1, v225);
        v226 = swift_allocObject();
        swift_weakInit();
        sub_10007AC8C();
        v227 = v216 + v217[5];
        *v227 = v218;
        *(v227 + 8) = v220;
        *(v227 + 16) = v215 & 1;
        *(v227 + 24) = v223;
        v228 = (v216 + v217[7]);
        *v228 = sub_10006885C;
        v228[1] = v226;
        v229 = objc_opt_self();
        v230 = [v229 mainBundle];
        v296._countAndFlagsBits = 0x80000001000827F0;
        v327._object = 0x80000001000827D0;
        v327._countAndFlagsBits = 0x1000000000000017;
        v332.value._countAndFlagsBits = 0;
        v332.value._object = 0;
        v231.super.isa = v230;
        v337._countAndFlagsBits = 0;
        v337._object = 0xE000000000000000;
        v232 = sub_10007AA5C(v327, v332, v231, v337, 0xD000000000000063, v296);
        v234 = v233;

        v235 = [v229 mainBundle];
        v298._countAndFlagsBits = 0x80000001000828B0;
        v328._countAndFlagsBits = 0xD000000000000041;
        v328._object = 0x8000000100082860;
        v333.value._countAndFlagsBits = 0;
        v333.value._object = 0;
        v236.super.isa = v235;
        v338._countAndFlagsBits = 0;
        v338._object = 0xE000000000000000;
        v237 = sub_10007AA5C(v328, v333, v236, v338, 0xD000000000000065, v298);
        v239 = v238;

        sub_1000057A0(&qword_10009F3D8, &qword_10007F4C8);
        v240 = (LOBYTE(logb[10].isa) + 32) & ~LOBYTE(logb[10].isa);
        v241 = swift_allocObject();
        *(v241 + 16) = xmmword_10007CF20;
        v242 = v241 + v240;
        v124 = v216;
        sub_1000686A4(v216, v242);
        sub_10007AC8C();
        v243 = type metadata accessor for AlertViewModel(0);
        v244 = (v307 + v243[5]);
        *v244 = v232;
        v244[1] = v234;
        v245 = (v307 + v243[6]);
        *v245 = v237;
        v245[1] = v239;
        *(v307 + v243[7]) = v241;
        (*(*(v243 - 1) + 56))(v307, 0, 1, v243);
        swift_getKeyPath();
        swift_getKeyPath();
        sub_1000187C8(v307, v312, &qword_10009ECD0, &qword_10007E810);

        sub_10007AF4C();
        sub_100008824(v307, &qword_10009ECD0, &qword_10007E810);
        swift_getKeyPath();
        swift_getKeyPath();
        *(v0 + 61) = 1;

        goto LABEL_39;
      }

      v18 = v39;
      v39, v204, v205, v206, v207, v208, v209, v210;

      v317, v289, v290, v291, v292, v293, v294, v295;
    }

    else
    {

      v37 = v316;
    }

LABEL_16:
    sub_100005AB8();
    swift_allocError();
    *v49 = v2;
    *(v49 + 8) = v18;
    *(v49 + 16) = v37;
    *(v49 + 24) = v26;
    *(v49 + 32) = v317;
    *(v49 + 40) = v12;
    swift_willThrow();

    goto LABEL_17;
  }

LABEL_17:

  v50 = *(v0 + 8);
LABEL_18:

  return v50();
}

uint64_t sub_10005D48C()
{
  v2 = *v1;
  *(*v1 + 424) = v0;

  v3 = *(v2 + 328);
  v4 = *(v2 + 320);
  if (v0)
  {
    v5 = sub_10005D718;
  }

  else
  {
    v5 = sub_10005D5C8;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10005D5C8()
{
  v1 = v0[49];
  v2 = v0[50];
  v4 = v0[47];
  v3 = v0[48];
  v5 = v0[46];

  v4, v6, v7, v8, v9, v10, v11, v12;
  v2, v13, v14, v15, v16, v17, v18, v19;
  sub_100018BDC(v5, v4, v3, v1, v2, 4, v20, v21);

  v22 = v0[1];

  return v22();
}

uint64_t sub_10005D718()
{

  sub_10007AE0C();
  v1 = sub_10007AE1C();
  v2 = sub_10007B3FC();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "saveShareAndReportErrors retry failed, so rethrow batchRequestFailed", v3, 2u);
  }

  v4 = v0[50];
  v5 = v0[51];
  v6 = v0[48];
  v7 = v0[47];
  v28 = v0[46];
  v29 = v0[49];
  v8 = v0[29];
  v9 = v0[27];

  v5(v8, v9);
  swift_willThrow();

  v7, v10, v11, v12, v13, v14, v15, v16;

  v4, v17, v18, v19, v20, v21, v22, v23;
  sub_100018BDC(v28, v7, v6, v29, v4, 4, v24, v25);

  v26 = v0[1];

  return v26();
}

uint64_t sub_10005D918()
{
  v1 = sub_10007AE2C();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();
  v0[5] = sub_10007B32C();
  v0[6] = sub_10007B31C();
  v2 = swift_task_alloc();
  v0[7] = v2;
  *v2 = v0;
  v2[1] = sub_10005DA20;

  return sub_10004A150();
}

uint64_t sub_10005DA20()
{
  *(*v1 + 64) = v0;

  v3 = sub_10007B2EC();
  if (v0)
  {
    v4 = sub_10005DC88;
  }

  else
  {
    v4 = sub_10005DB7C;
  }

  return _swift_task_switch(v4, v3, v2);
}

uint64_t sub_10005DB7C()
{

  sub_10007AE0C();
  v1 = sub_10007AE1C();
  v2 = sub_10007B41C();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "saveShareAndReportErrors successfully completed saveShare()", v3, 2u);
  }

  v5 = v0[3];
  v4 = v0[4];
  v6 = v0[2];

  (*(v5 + 8))(v4, v6);

  v7 = v0[1];

  return v7();
}

uint64_t sub_10005DC88()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10005DCF8(uint64_t a1)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10007AF4C();
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10005A3E4(6u, 0);
  }

  return result;
}

uint64_t sub_10005DDB8(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    return sub_10007AF4C();
  }

  return result;
}

uint64_t sub_10005DE38()
{
  v1 = (*(v0 + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12SharingModel__rootFolderURL) + *(**(v0 + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12SharingModel__rootFolderURL) + 104));
  v2 = *v1;
  v3 = v1[1];
  *v1 = sub_1000606E0;
  v1[1] = v0;

  sub_1000087A4(v2, v3);

  v4 = (*(v0 + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12SharingModel__rootFolderTitle) + *(**(v0 + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12SharingModel__rootFolderTitle) + 104));
  v5 = *v4;
  v6 = v4[1];
  *v4 = sub_1000088B4;
  v4[1] = v0;

  sub_1000087A4(v5, v6);

  v7 = (*(v0 + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12SharingModel__ckFolderSubitemName) + *(**(v0 + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12SharingModel__ckFolderSubitemName) + 104));
  v8 = *v7;
  v9 = v7[1];
  *v7 = sub_1000606E4;
  v7[1] = v0;

  sub_1000087A4(v8, v9);
}

uint64_t sub_10005DF88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a4;
  sub_1000057A0(&unk_10009ED10, &qword_10007D310);
  v4[10] = swift_task_alloc();
  sub_10007B32C();
  v4[11] = sub_10007B31C();
  v6 = sub_10007B2EC();
  v4[12] = v6;
  v4[13] = v5;

  return _swift_task_switch(sub_10005E058, v6, v5);
}

uint64_t sub_10005E058()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10007AF3C();

  v1 = swift_task_alloc();
  *(v0 + 112) = v1;
  *v1 = v0;
  v1[1] = sub_10005E13C;
  v2 = *(v0 + 80);

  return sub_10004AE58(v2);
}

uint64_t sub_10005E13C()
{
  v2 = *v1;
  (*v1)[15] = v0;

  sub_100008824(v2[10], &unk_10009ED10, &qword_10007D310);
  v3 = v2[13];
  v4 = v2[12];
  if (v0)
  {
    v5 = sub_10005E4D0;
  }

  else
  {
    v5 = sub_10005E2A0;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10005E2A0()
{
  v1 = *(v0 + 72);

  if (!*(v1 + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12SharingModel_lastServicesData) || (v2 = *(v0 + 120), swift_unknownObjectRetain(), sub_100067E54(), swift_unknownObjectRelease(), !v2))
  {
    sub_10005A3E4(5u, 0);
LABEL_11:

    v27 = *(v0 + 8);
    goto LABEL_12;
  }

  *(v0 + 64) = v2;
  swift_errorRetain();
  sub_1000057A0(&qword_10009E7B0, &qword_10007CFC0);
  if (swift_dynamicCast())
  {

    v5 = *(v0 + 16);
    v4 = *(v0 + 24);
    v7 = *(v0 + 32);
    v6 = *(v0 + 40);
    v8 = *(v0 + 48);
    v9 = *(v0 + 56);
    if (v9 == 7)
    {
      if (!v7)
      {
        __break(1u);
        return result;
      }

      v10 = v7;

      sub_10005A3E4(1u, v7);
      sub_100018BDC(v5, v4, v7, v6, v8, 7, v11, v12);

      v4, v13, v14, v15, v16, v17, v18, v19;
      v8, v20, v21, v22, v23, v24, v25, v26;
    }

    else
    {
      v28 = [objc_allocWithZone(NSError) initWithDomain:BRCloudDocsErrorDomain code:46 userInfo:0];
      sub_10005A3E4(2u, v28);
      sub_100018BDC(v5, v4, v7, v6, v8, v9, v29, v30);
    }

    goto LABEL_11;
  }

  v27 = *(v0 + 8);
LABEL_12:

  return v27();
}

uint64_t sub_10005E4D0()
{

  *(v0 + 64) = *(v0 + 120);
  swift_errorRetain();
  sub_1000057A0(&qword_10009E7B0, &qword_10007CFC0);
  if (swift_dynamicCast())
  {

    v3 = *(v0 + 16);
    v2 = *(v0 + 24);
    v5 = *(v0 + 32);
    v4 = *(v0 + 40);
    v6 = *(v0 + 48);
    v7 = *(v0 + 56);
    if (v7 == 7)
    {
      if (!v5)
      {
        __break(1u);
        return result;
      }

      v8 = v5;

      sub_10005A3E4(1u, v5);
      sub_100018BDC(v3, v2, v5, v4, v6, 7, v9, v10);

      v2, v11, v12, v13, v14, v15, v16, v17;
      v6, v18, v19, v20, v21, v22, v23, v24;
    }

    else
    {
      v25 = [objc_allocWithZone(NSError) initWithDomain:BRCloudDocsErrorDomain code:46 userInfo:0];
      sub_10005A3E4(2u, v25);
      sub_100018BDC(v3, v2, v5, v4, v6, v7, v26, v27);
    }
  }

  v28 = *(v0 + 8);

  return v28();
}

uint64_t shareStatus(url:)()
{
  v0 = sub_10007AC4C();
  __chkstk_darwin(v0);
  v1 = sub_10007AE2C();
  v57[0] = *(v1 - 8);
  v57[1] = v1;
  __chkstk_darwin(v1);
  v57[2] = v57 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10007AABC();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000057A0(&qword_10009E738, &unk_10007E780);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10007DE70;
  *(inited + 32) = NSURLUbiquitousItemIsSharedKey;
  *(inited + 40) = NSURLUbiquitousSharedItemCurrentUserRoleKey;
  v8 = NSURLUbiquitousItemIsSharedKey;
  v9 = NSURLUbiquitousSharedItemCurrentUserRoleKey;
  sub_10005FA34(inited);
  v11 = v10;
  swift_setDeallocating();
  type metadata accessor for URLResourceKey(0);
  swift_arrayDestroy();
  sub_10007ABBC();
  v11, v12, v13, v14, v15, v16, v17, v18;
  v19 = sub_10007AA8C();
  v20 = sub_10007AA9C();
  if (!v20)
  {
    v20 = NSURLUbiquitousSharedItemRoleParticipant;
  }

  v21 = v20;
  v22 = sub_10007B19C();
  v24 = v23;
  v26 = sub_10007B19C();
  v32 = v25;
  if (v22 == v26 && v24 == v25)
  {
    v24, v25, v26, v27, v28, v29, v30, v31;
    v32, v33, v34, v35, v36, v37, v38, v39;
    v40 = 256;
  }

  else
  {
    v41 = sub_10007B6BC();
    v24, v42, v43, v44, v45, v46, v47, v48;
    v32, v49, v50, v51, v52, v53, v54, v55;
    if (v41)
    {
      v40 = 256;
    }

    else
    {
      v40 = 0;
    }
  }

  (*(v4 + 8))(v6, v3);
  return v40 | v19 & 1u;
}

uint64_t sub_10005EBF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v23 = a1;
  v9 = sub_1000057A0(&qword_10009F378, &qword_10007EE90);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9 - 8);
  v13 = &v22 - v12;
  v14 = sub_1000057A0(&qword_10009F370, &qword_10007FC90);
  __chkstk_darwin(v14 - 8);
  v16 = &v22 - v15;
  v17 = sub_10007B35C();
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  sub_1000187C8(a5, v13, &qword_10009F378, &qword_10007EE90);
  v18 = (*(v10 + 80) + 48) & ~*(v10 + 80);
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = a3;
  v19[5] = a4;
  sub_10002591C(v13, v19 + v18, &qword_10009F378, &qword_10007EE90);
  v20 = (v19 + ((v11 + v18 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v20 = v23;
  v20[1] = a2;

  sub_10000DAD0(0, 0, v16, &unk_10007EEA0, v19);
}

uint64_t sub_10005EE04(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[3] = a7;
  v8[4] = a8;
  v12 = a4 + *a4;
  v10 = swift_task_alloc();
  v8[5] = v10;
  *v10 = v8;
  v10[1] = sub_10005EF08;

  return (v12)(v8 + 2, a6);
}

uint64_t sub_10005EF08()
{

  return _swift_task_switch(sub_10005F004, 0, 0);
}

uint64_t sub_10005F004()
{
  v7 = v0;
  v1 = v0[3];
  v5 = v0[2];
  v6 = 0;
  v2 = v5;
  v1(&v5);

  v3 = v0[1];

  return v3();
}

uint64_t sub_10005F0F0@<X0>(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10007AF3C();

  *a2 = v4;
  return result;
}

uint64_t sub_10005F170(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_10007AF4C();
}

uint64_t sub_10005F1E4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10007AF3C();
}

uint64_t sub_10005F25C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t a7, uint64_t a8)
{
  v11 = sub_1000057A0(a5, a6);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v18 - v15;
  sub_1000187C8(a1, &v18 - v15, a5, a6);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000187C8(v16, v14, a5, a6);

  sub_10007AF4C();
  return sub_100008824(v16, a5, a6);
}

unint64_t sub_10005F3AC(uint64_t a1)
{
  v1 = a1;
  sub_10007B74C();
  sub_10001F6F4(v1);
  v3 = v2;
  sub_10007B1EC();
  v3, v4, v5, v6, v7, v8, v9, v10;
  v11 = sub_10007B76C();

  return sub_10005F434(v1, v11, v12, v13, v14, v15, v16, v17);
}

unint64_t sub_10005F434(char a1, const char *a2, uint64_t a3, void *a4, void *a5, void *a6, int64_t a7, int64_t a8)
{
  v9 = -1 << *(v8 + 32);
  v10 = a2 & ~v9;
  if ((*(v8 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v12 = ~v9;
    while (1)
    {
      v13 = 0xE600000000000000;
      v14 = 0x7265646C6F66;
      switch(*(*(v8 + 48) + v10))
      {
        case 1:
          v13 = 0xE800000000000000;
          v14 = 0x746E656D75636F64;
          break;
        case 2:
          v14 = 0x6873646165727073;
          v15 = 7628133;
          goto LABEL_17;
        case 3:
          v14 = 0x61746E6573657270;
          v13 = 0xEC0000006E6F6974;
          break;
        case 4:
          v13 = 0xE500000000000000;
          v14 = 0x6567616D69;
          break;
        case 5:
          v13 = 0xE500000000000000;
          v14 = 0x6569766F6DLL;
          break;
        case 6:
          v13 = 0xE300000000000000;
          v14 = 6710384;
          break;
        case 7:
          v13 = 0xE400000000000000;
          v14 = 1702129518;
          break;
        case 8:
          v14 = 0x6C6F467365746F6ELL;
          v15 = 7497060;
LABEL_17:
          v13 = (v15 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000);
          break;
        case 9:
          v13 = 0xE400000000000000;
          v14 = 1953720684;
          break;
        case 0xA:
          v13 = 0xE800000000000000;
          v14 = 0x70756F7247626174;
          break;
        case 0xB:
          v14 = 0x6D726F6665657266;
          v13 = 0xED00006472616F42;
          break;
        case 0xC:
          v14 = 0x43636972656E6567;
          v13 = 0xEF74694B64756F6CLL;
          break;
        case 0xD:
          v13 = 0xE500000000000000;
          v14 = 0x726568746FLL;
          break;
        default:
          break;
      }

      v16 = 0xE600000000000000;
      v17 = 0x7265646C6F66;
      switch(a1)
      {
        case 1:
          v16 = 0xE800000000000000;
          v17 = 0x746E656D75636F64;
          if (v14 == 0x746E656D75636F64)
          {
            goto LABEL_42;
          }

          goto LABEL_43;
        case 2:
          v17 = 0x6873646165727073;
          v18 = 7628133;
          goto LABEL_47;
        case 3:
          v17 = 0x61746E6573657270;
          v16 = 0xEC0000006E6F6974;
          if (v14 != 0x61746E6573657270)
          {
            goto LABEL_43;
          }

          goto LABEL_42;
        case 4:
          v16 = 0xE500000000000000;
          v17 = 0x6567616D69;
          if (v14 != 0x6567616D69)
          {
            goto LABEL_43;
          }

          goto LABEL_42;
        case 5:
          v16 = 0xE500000000000000;
          v17 = 0x6569766F6DLL;
          if (v14 != 0x6569766F6DLL)
          {
            goto LABEL_43;
          }

          goto LABEL_42;
        case 6:
          v16 = 0xE300000000000000;
          v17 = 6710384;
          if (v14 != 6710384)
          {
            goto LABEL_43;
          }

          goto LABEL_42;
        case 7:
          v16 = 0xE400000000000000;
          v17 = 1702129518;
          if (v14 != 1702129518)
          {
            goto LABEL_43;
          }

          goto LABEL_42;
        case 8:
          v17 = 0x6C6F467365746F6ELL;
          v18 = 7497060;
LABEL_47:
          v16 = (v18 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000);
          if (v14 != v17)
          {
            goto LABEL_43;
          }

          goto LABEL_42;
        case 9:
          v16 = 0xE400000000000000;
          v17 = 1953720684;
          if (v14 != 1953720684)
          {
            goto LABEL_43;
          }

          goto LABEL_42;
        case 10:
          v16 = 0xE800000000000000;
          v17 = 0x70756F7247626174;
          goto LABEL_41;
        case 11:
          v17 = 0x6D726F6665657266;
          v16 = 0xED00006472616F42;
          if (v14 != 0x6D726F6665657266)
          {
            goto LABEL_43;
          }

          goto LABEL_42;
        case 12:
          v17 = 0x43636972656E6567;
          v16 = 0xEF74694B64756F6CLL;
          if (v14 != 0x43636972656E6567)
          {
            goto LABEL_43;
          }

          goto LABEL_42;
        case 13:
          v16 = 0xE500000000000000;
          v17 = 0x726568746FLL;
          if (v14 != 0x726568746FLL)
          {
            goto LABEL_43;
          }

          goto LABEL_42;
        default:
LABEL_41:
          if (v14 != v17)
          {
            goto LABEL_43;
          }

LABEL_42:
          if (v13 == v16)
          {
            v13, a2, v17, a4, a5, a6, a7, a8;
            v16, v34, v35, v36, v37, v38, v39, v40;
            return v10;
          }

LABEL_43:
          v19 = sub_10007B6BC();
          v13, v20, v21, v22, v23, v24, v25, v26;
          v16, v27, v28, v29, v30, v31, v32, v33;
          if (v19)
          {
            return v10;
          }

          v10 = (v10 + 1) & v12;
          if (((*(v8 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
          {
            return v10;
          }

          break;
      }
    }
  }

  return v10;
}

uint64_t sub_10005F8C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = sub_1000057A0(&qword_10009F378, &qword_10007EE90);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8 - 8);
  v11 = &v15 - v10;
  sub_1000187C8(a1, &v15 - v10, &qword_10009F378, &qword_10007EE90);
  v12 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  sub_10002591C(v11, v13 + v12, &qword_10009F378, &qword_10007EE90);
  sub_1000057A0(&qword_10009F298, &qword_10007EE08);
  swift_allocObject();

  result = sub_10007AEFC();
  *a4 = result;
  return result;
}

void sub_10005FA34(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000057A0(&unk_10009F410, &unk_10007F598);
    v3 = sub_10007B5AC();
    v4 = 0;
    v5 = v3 + 56;
    v64 = v1;
    v65 = a1 + 32;
    v6 = v1;
    do
    {
      v21 = *(v65 + 8 * v4);
      sub_10007B19C();
      v23 = v22;
      sub_10007B74C();
      v66 = v21;
      sub_10007B1EC();
      v24 = sub_10007B76C();
      v23, v25, v26, v27, v28, v29, v30, v31;
      v32 = -1 << *(v3 + 32);
      v33 = v24 & ~v32;
      v34 = v33 >> 6;
      v35 = *(v5 + 8 * (v33 >> 6));
      v36 = 1 << v33;
      if (((1 << v33) & v35) == 0)
      {
        goto LABEL_15;
      }

      v37 = ~v32;
      do
      {
        v38 = sub_10007B19C();
        v40 = v39;
        v42 = sub_10007B19C();
        v43 = v38;
        v44 = v41;
        if (v43 == v42 && v40 == v41)
        {

          v40, v7, v8, v9, v10, v11, v12, v13;
          v44, v14, v15, v16, v17, v18, v19, v20;
LABEL_4:
          v6 = v64;
          goto LABEL_5;
        }

        v46 = sub_10007B6BC();
        v40, v47, v48, v49, v50, v51, v52, v53;
        v44, v54, v55, v56, v57, v58, v59, v60;
        if (v46)
        {

          goto LABEL_4;
        }

        v33 = (v33 + 1) & v37;
        v34 = v33 >> 6;
        v35 = *(v5 + 8 * (v33 >> 6));
        v36 = 1 << v33;
      }

      while (((1 << v33) & v35) != 0);
      v6 = v64;
LABEL_15:
      *(v5 + 8 * v34) = v36 | v35;
      *(*(v3 + 48) + 8 * v33) = v66;
      v61 = *(v3 + 16);
      v62 = __OFADD__(v61, 1);
      v63 = v61 + 1;
      if (v62)
      {
        __break(1u);
        return;
      }

      *(v3 + 16) = v63;
LABEL_5:
      ++v4;
    }

    while (v4 != v6);
  }
}

uint64_t type metadata accessor for SharingModel(uint64_t a1)
{
  result = qword_10009EC70;
  if (!qword_10009EC70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10005FC7C(uint64_t a1)
{
  sub_10000CE98(319, &qword_10009EC80, &type metadata for Bool);
  if (v1 <= 0x3F)
  {
    sub_10000CE98(319, &qword_10009EC88, &type metadata for ExecutionMode);
    if (v2 <= 0x3F)
    {
      sub_10000CE98(319, &qword_10009EC90, &type metadata for SharingType);
      if (v3 <= 0x3F)
      {
        sub_10000CE98(319, &qword_10009EC98, &type metadata for SharingStage);
        if (v4 <= 0x3F)
        {
          sub_10000CEE4(319, &qword_10009ECA0, &qword_10009ECA8, &qword_10007E808);
          if (v5 <= 0x3F)
          {
            sub_10000CE98(319, &qword_10009ECB0, &type metadata for CreateOrLoadStage);
            if (v6 <= 0x3F)
            {
              sub_10000CE98(319, &qword_10009ECB8, &type metadata for AddAddressesStage);
              if (v7 <= 0x3F)
              {
                sub_10000CE98(319, &qword_10009ECC0, &type metadata for SaveStage);
                if (v8 <= 0x3F)
                {
                  sub_10000CEE4(319, &qword_10009ECC8, &qword_10009ECD0, &qword_10007E810);
                  if (v9 <= 0x3F)
                  {
                    sub_10000CEE4(319, &qword_10009ECD8, &qword_10009ECE0, &qword_10007E818);
                    if (v10 <= 0x3F)
                    {
                      sub_10000CE98(319, &qword_10009ECE8, &type metadata for ShareSaveStatus);
                      if (v11 <= 0x3F)
                      {
                        sub_10000CE98(319, &qword_10009ECF0, &type metadata for SharingOptions);
                        if (v12 <= 0x3F)
                        {
                          sub_10000CEE4(319, &qword_10009ECF8, &unk_10009ED00, &unk_10007E838);
                          if (v13 <= 0x3F)
                          {
                            sub_10000CEE4(319, &qword_10009E4E8, &unk_10009ED10, &qword_10007D310);
                            if (v14 <= 0x3F)
                            {
                              sub_10000CEE4(319, &qword_10009E170, &qword_10009ED20, &qword_10007CF90);
                              if (v15 <= 0x3F)
                              {
                                sub_100060398(319, &qword_10009ED28, &qword_10009ED30, UIImage_ptr);
                                if (v16 <= 0x3F)
                                {
                                  sub_10000CEE4(319, &qword_10009ED38, &qword_10009ED40, &qword_10007E868);
                                  if (v17 <= 0x3F)
                                  {
                                    sub_10000CE98(319, &qword_10009ED48, &type metadata for String);
                                    if (v18 <= 0x3F)
                                    {
                                      sub_100060398(319, &unk_10009ED50, &qword_10009E678, CKContainerID_ptr);
                                      if (v19 <= 0x3F)
                                      {
                                        sub_10000CEE4(319, &qword_10009ED60, &unk_10009ED68, &qword_10007E870);
                                        if (v20 <= 0x3F)
                                        {
                                          swift_updateClassMetadata2();
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_100060398(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4)
{
  if (!*a2)
  {
    sub_100005C8C(255, a3, a4);
    v5 = sub_10007AF5C();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_100060474(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000057A0(&qword_10009F3C8, &qword_10007F448);
    v3 = sub_10007B66C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_100037AD8(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100060578(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000057A0(&qword_10009F3F8, &unk_10007F570);
    v3 = sub_10007B66C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 16);
      v7 = *(i - 1);
      v6 = *i;

      result = sub_10005F3AC(v5);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      v10 = (v3[7] + 16 * result);
      *v10 = v7;
      v10[1] = v6;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1000606F8(unint64_t result)
{
  v1 = result;
  v2 = result >> 62;
  if (result >> 62)
  {
    result = sub_10007B64C();
    if (result)
    {
LABEL_3:
      sub_1000057A0(&qword_10009F358, &unk_10007EE20);
      result = sub_10007B5AC();
      v3 = result;
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      result = sub_10007B64C();
      v5 = result;
      if (!result)
      {
        return v3;
      }

      goto LABEL_9;
    }
  }

  else if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = &_swiftEmptySetSingleton;
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return v3;
  }

LABEL_9:
  v6 = 0;
  v7 = v3 + 56;
  v20 = v1 & 0xC000000000000001;
  v18 = v1 + 32;
  v19 = v1 & 0xFFFFFFFFFFFFFF8;
  while (v20)
  {
    result = sub_10007B5DC();
    v8 = result;
    v9 = __OFADD__(v6++, 1);
    if (v9)
    {
      goto LABEL_25;
    }

LABEL_18:
    sub_10007AEDC();
    sub_1000661F4(&qword_10009F360, &type metadata accessor for AnyCancellable, &protocol conformance descriptor for AnyCancellable);
    result = sub_10007B12C();
    v10 = -1 << v3[32];
    v11 = result & ~v10;
    v12 = v11 >> 6;
    v13 = *&v7[8 * (v11 >> 6)];
    v14 = 1 << v11;
    if (((1 << v11) & v13) != 0)
    {
      v15 = ~v10;
      sub_1000661F4(&qword_10009F368, &type metadata accessor for AnyCancellable, &protocol conformance descriptor for AnyCancellable);
      while (1)
      {
        result = sub_10007B14C();
        if (result)
        {
          break;
        }

        v11 = (v11 + 1) & v15;
        v12 = v11 >> 6;
        v13 = *&v7[8 * (v11 >> 6)];
        v14 = 1 << v11;
        if (((1 << v11) & v13) == 0)
        {
          goto LABEL_22;
        }
      }
    }

    else
    {
LABEL_22:
      *&v7[8 * v12] = v14 | v13;
      *(*(v3 + 6) + 8 * v11) = v8;
      v16 = *(v3 + 2);
      v9 = __OFADD__(v16, 1);
      v17 = v16 + 1;
      if (v9)
      {
        goto LABEL_26;
      }

      *(v3 + 2) = v17;
    }

    if (v6 == v5)
    {
      return v3;
    }
  }

  if (v6 >= *(v19 + 16))
  {
    goto LABEL_27;
  }

  v8 = *(v18 + 8 * v6);

  v9 = __OFADD__(v6++, 1);
  if (!v9)
  {
    goto LABEL_18;
  }

LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

void *sub_10006098C(uint64_t a1)
{
  v2 = v1;
  v485 = a1;
  v408 = *v1;
  v429 = sub_1000057A0(&qword_10009EF48, &qword_10007EBA0);
  v428 = *(v429 - 8);
  __chkstk_darwin(v429);
  v427 = &v299 - v3;
  v432 = sub_1000057A0(&qword_10009EF50, &qword_10007EBA8);
  v431 = *(v432 - 8);
  __chkstk_darwin(v432);
  v430 = &v299 - v4;
  v435 = sub_1000057A0(&qword_10009EF58, &unk_10007EBB0);
  v434 = *(v435 - 8);
  __chkstk_darwin(v435);
  v433 = &v299 - v5;
  v422 = sub_1000057A0(&unk_10009EF60, &unk_10007D600);
  v421 = *(v422 - 8);
  __chkstk_darwin(v422);
  v419 = &v299 - v6;
  v423 = sub_1000057A0(&qword_10009E610, &unk_10007EBC0);
  __chkstk_darwin(v423);
  v420 = &v299 - v7;
  v459 = sub_1000057A0(&qword_10009EF70, &unk_100080500);
  v424 = *(v459 - 8);
  v8 = __chkstk_darwin(v459);
  v425 = &v299 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v426 = &v299 - v10;
  v413 = sub_1000057A0(&qword_10009EF78, &qword_10007EBD0);
  __chkstk_darwin(v413);
  v411 = &v299 - v11;
  v416 = sub_1000057A0(&qword_10009EF80, &qword_10007EBD8);
  v414 = *(v416 - 8);
  __chkstk_darwin(v416);
  v412 = &v299 - v12;
  v418 = sub_1000057A0(&qword_10009EF88, &qword_10007EBE0);
  v417 = *(v418 - 8);
  __chkstk_darwin(v418);
  v415 = &v299 - v13;
  v410 = sub_1000057A0(&qword_10009EF90, &qword_10007EBE8);
  v409 = *(v410 - 8);
  v14 = __chkstk_darwin(v410);
  v406 = &v299 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v407 = &v299 - v16;
  v403 = sub_1000057A0(&qword_10009EF98, &qword_10007EBF0);
  v402 = *(v403 - 8);
  __chkstk_darwin(v403);
  v400 = &v299 - v17;
  v396 = sub_1000057A0(&qword_10009EFA0, &qword_10007EBF8);
  v394 = *(v396 - 8);
  __chkstk_darwin(v396);
  v392 = &v299 - v18;
  v395 = sub_1000057A0(&qword_10009EFA8, &qword_10007EC00);
  v19 = __chkstk_darwin(v395);
  v393 = &v299 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v391 = &v299 - v21;
  v399 = sub_1000057A0(&qword_10009EFB0, &qword_10007EC08);
  v398 = *(v399 - 8);
  __chkstk_darwin(v399);
  v397 = &v299 - v22;
  v405 = sub_1000057A0(&qword_10009EFB8, &qword_10007EC10);
  v404 = *(v405 - 8);
  __chkstk_darwin(v405);
  v401 = &v299 - v23;
  v390 = sub_1000057A0(&qword_10009EFC0, &qword_10007EC18);
  v389 = *(v390 - 8);
  __chkstk_darwin(v390);
  v388 = &v299 - v24;
  v387 = sub_1000057A0(&qword_10009EFC8, &qword_10007EC20);
  v386 = *(v387 - 8);
  __chkstk_darwin(v387);
  v385 = &v299 - v25;
  v384 = sub_1000057A0(&qword_10009EFD0, &qword_10007EC28);
  v383 = *(v384 - 8);
  __chkstk_darwin(v384);
  v382 = &v299 - v26;
  v381 = sub_1000057A0(&qword_10009EFD8, &qword_10007EC30);
  v380 = *(v381 - 8);
  __chkstk_darwin(v381);
  v379 = &v299 - v27;
  v378 = sub_1000057A0(&qword_10009EFE0, &qword_10007EC38);
  v377 = *(v378 - 8);
  __chkstk_darwin(v378);
  v376 = &v299 - v28;
  v369 = sub_1000057A0(&qword_10009EFE8, &qword_10007EC40);
  v368 = *(v369 - 8);
  __chkstk_darwin(v369);
  v367 = &v299 - v29;
  v364 = sub_1000057A0(&qword_10009EFF0, &qword_10007EC48);
  v363 = *(v364 - 8);
  __chkstk_darwin(v364);
  v362 = &v299 - v30;
  v370 = sub_1000057A0(&qword_10009EFF8, &qword_10007EC50);
  __chkstk_darwin(v370);
  v371 = &v299 - v31;
  v374 = sub_1000057A0(&qword_10009F000, &qword_10007EC58);
  v373 = *(v374 - 8);
  __chkstk_darwin(v374);
  v372 = &v299 - v32;
  v448 = sub_1000057A0(&qword_10009F008, &unk_10007EC60);
  v366 = *(v448 - 8);
  v33 = __chkstk_darwin(v448);
  v361 = &v299 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v365 = &v299 - v35;
  v450 = sub_1000057A0(&qword_10009F010, &qword_10007D630);
  v375 = *(v450 - 8);
  __chkstk_darwin(v450);
  v449 = &v299 - v36;
  v356 = sub_1000057A0(&qword_10009F018, &qword_10007EC70);
  v355 = *(v356 - 8);
  __chkstk_darwin(v356);
  v354 = &v299 - v37;
  v359 = sub_1000057A0(&qword_10009F020, &qword_10007EC78);
  v358 = *(v359 - 8);
  __chkstk_darwin(v359);
  v357 = &v299 - v38;
  v39 = sub_1000057A0(&qword_10009F028, &qword_10007EC80);
  __chkstk_darwin(v39 - 8);
  v484 = &v299 - v40;
  v464 = sub_1000057A0(&qword_10009F030, &qword_10007EC88);
  v479 = *(v464 - 8);
  __chkstk_darwin(v464);
  v360 = &v299 - v41;
  v353 = sub_1000057A0(&qword_10009F038, &qword_10007EC90);
  v350 = *(v353 - 1);
  __chkstk_darwin(v353);
  v352 = &v299 - v42;
  v441 = sub_1000057A0(&qword_10009F040, &qword_10007EC98);
  v351 = *(v441 - 8);
  __chkstk_darwin(v441);
  v349 = &v299 - v43;
  v467 = sub_1000057A0(&qword_10009F048, &qword_10007ECA0);
  v480 = *(v467 - 8);
  v44 = __chkstk_darwin(v467);
  v460 = &v299 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v44);
  v465 = &v299 - v46;
  v456 = sub_1000057A0(&qword_10009F050, &qword_10007ECA8);
  v469 = *(v456 - 8);
  __chkstk_darwin(v456);
  v455 = &v299 - v47;
  v458 = sub_1000057A0(&qword_10009F058, &qword_10007ECB0);
  __chkstk_darwin(v458);
  v470 = &v299 - v48;
  v346 = sub_1000057A0(&qword_10009F060, &qword_10007ECB8);
  v345 = *(v346 - 1);
  __chkstk_darwin(v346);
  v344 = &v299 - v49;
  v443 = sub_1000057A0(&qword_10009F068, &qword_10007ECC0);
  v50 = __chkstk_darwin(v443);
  v440 = &v299 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v50);
  v475 = (&v299 - v52);
  v453 = sub_1000057A0(&qword_10009F070, &qword_10007ECC8);
  v468 = *(v453 - 8);
  __chkstk_darwin(v453);
  v452 = &v299 - v53;
  v454 = sub_1000057A0(&qword_10009F078, &qword_10007ECD0);
  __chkstk_darwin(v454);
  v481 = &v299 - v54;
  v437 = sub_1000057A0(&qword_10009F080, &qword_10007ECD8);
  v436 = *(v437 - 1);
  __chkstk_darwin(v437);
  v347 = &v299 - v55;
  v442 = sub_1000057A0(&qword_10009F088, &qword_10007ECE0);
  v439 = *(v442 - 1);
  __chkstk_darwin(v442);
  v438 = &v299 - v56;
  v461 = sub_1000057A0(&qword_10009F090, &qword_10007ECE8);
  v343 = *(v461 - 1);
  __chkstk_darwin(v461);
  v342 = &v299 - v57;
  v341 = sub_1000057A0(&qword_10009F098, &qword_10007ECF0);
  v340 = *(v341 - 8);
  __chkstk_darwin(v341);
  v337 = &v299 - v58;
  v339 = sub_1000057A0(&qword_10009F0A0, &qword_10007ECF8);
  v338 = *(v339 - 8);
  __chkstk_darwin(v339);
  v336 = &v299 - v59;
  v451 = sub_1000057A0(&qword_10009F0A8, &qword_10007ED00);
  v335 = *(v451 - 8);
  __chkstk_darwin(v451);
  v334 = &v299 - v60;
  v457 = sub_1000057A0(&unk_10009F0B0, &qword_10007ED08);
  v333 = *(v457 - 8);
  __chkstk_darwin(v457);
  v332 = &v299 - v61;
  v477 = sub_1000057A0(&qword_10009E2B8, &unk_10007ED10);
  v348 = *(v477 - 8);
  __chkstk_darwin(v477);
  v331 = &v299 - v62;
  v466 = sub_1000057A0(&qword_10009F0C0, &unk_10007D660);
  v330 = *(v466 - 8);
  __chkstk_darwin(v466);
  v329 = &v299 - v63;
  v328 = sub_1000057A0(&qword_10009F0C8, &qword_10007ED20);
  v327 = *(v328 - 8);
  __chkstk_darwin(v328);
  v326 = &v299 - v64;
  v471 = sub_1000057A0(&qword_10009F0D0, &qword_10007ED28);
  v325 = *(v471 - 8);
  __chkstk_darwin(v471);
  v324 = &v299 - v65;
  v323 = sub_1000057A0(&qword_10009F0D8, &qword_10007ED30);
  v321 = *(v323 - 8);
  __chkstk_darwin(v323);
  v320 = &v299 - v66;
  v445 = sub_1000057A0(&qword_10009F0E0, &qword_10007ED38);
  v319 = *(v445 - 8);
  __chkstk_darwin(v445);
  v318 = &v299 - v67;
  v474 = sub_1000057A0(&unk_10009ED10, &qword_10007D310);
  v68 = __chkstk_darwin(v474);
  v317 = &v299 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = __chkstk_darwin(v68);
  v472 = (&v299 - v71);
  __chkstk_darwin(v70);
  v322 = &v299 - v72;
  v316 = sub_1000057A0(&qword_10009F0E8, &qword_10007ED40);
  v315 = *(v316 - 8);
  __chkstk_darwin(v316);
  v314 = &v299 - v73;
  v313 = sub_1000057A0(&qword_10009ECD0, &qword_10007E810);
  v74 = __chkstk_darwin(v313);
  v312 = &v299 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v74);
  v311 = &v299 - v76;
  v447 = sub_1000057A0(&qword_10009F0F0, &qword_10007ED48);
  v310 = *(v447 - 8);
  __chkstk_darwin(v447);
  v309 = &v299 - v77;
  v446 = sub_1000057A0(&qword_10009F0F8, &qword_10007ED50);
  v308 = *(v446 - 8);
  __chkstk_darwin(v446);
  v307 = &v299 - v78;
  v444 = sub_1000057A0(&qword_10009F100, &qword_10007ED58);
  v306 = *(v444 - 8);
  __chkstk_darwin(v444);
  v305 = &v299 - v79;
  v304 = sub_1000057A0(&qword_10009F108, &qword_10007ED60);
  v303 = *(v304 - 8);
  __chkstk_darwin(v304);
  v302 = &v299 - v80;
  v301 = sub_1000057A0(&qword_10009F110, &qword_10007ED68);
  v300 = *(v301 - 8);
  __chkstk_darwin(v301);
  v299 = &v299 - v81;
  v478 = sub_1000057A0(&qword_10009F118, &qword_10007ED70);
  v82 = *(v478 - 8);
  __chkstk_darwin(v478);
  v84 = &v299 - v83;
  v473 = sub_1000057A0(&unk_10009F120, &qword_10007ED78);
  v85 = *(v473 - 8);
  __chkstk_darwin(v473);
  v87 = &v299 - v86;
  v88 = sub_1000057A0(&qword_10009E650, &qword_10007ED80);
  v89 = *(v88 - 8);
  __chkstk_darwin(v88);
  v91 = &v299 - v90;
  if (_swiftEmptyArrayStorage >> 62 && sub_10007B64C())
  {
    v92 = sub_1000606F8(_swiftEmptyArrayStorage);
  }

  else
  {
    v92 = &_swiftEmptySetSingleton;
  }

  v2[4] = v92;
  v462 = v2 + 4;
  v2[6] = 0;
  swift_unknownObjectWeakInit();
  v2[7] = swift_getKeyPath();
  *(v2 + 64) = 0;
  v93 = OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12SharingModel__isDelegateInitialized;
  LOBYTE(v486) = 0;
  v476 = v91;
  sub_10007AF0C();
  v482 = *(v89 + 32);
  v482(v2 + v93, v91, v88);
  v94 = OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12SharingModel__executionMode;
  LOBYTE(v486) = 0;
  sub_10007AF0C();
  (*(v85 + 32))(v2 + v94, v87, v473);
  v95 = OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12SharingModel__sharingType;
  LOBYTE(v486) = 8;
  sub_10007AF0C();
  (*(v82 + 32))(v2 + v95, v84, v478);
  v96 = OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12SharingModel__sharingStage;
  LOBYTE(v486) = 0;
  v97 = v299;
  sub_10007AF0C();
  (*(v300 + 32))(v2 + v96, v97, v301);
  v98 = OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12SharingModel__addedAddresses;
  v486 = _swiftEmptyArrayStorage;
  sub_1000057A0(&qword_10009ECA8, &qword_10007E808);
  v99 = v302;
  sub_10007AF0C();
  (*(v303 + 32))(v2 + v98, v99, v304);
  v100 = OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12SharingModel__createOrLoadStage;
  LOBYTE(v486) = 0;
  v101 = v305;
  sub_10007AF0C();
  (*(v306 + 32))(v2 + v100, v101, v444);
  v102 = OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12SharingModel__addingAddressesStage;
  LOBYTE(v486) = 0;
  v103 = v307;
  sub_10007AF0C();
  (*(v308 + 32))(v2 + v102, v103, v446);
  v104 = OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12SharingModel__savingStage;
  LOBYTE(v486) = 2;
  v105 = v309;
  sub_10007AF0C();
  (*(v310 + 32))(v2 + v104, v105, v447);
  v106 = OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12SharingModel__alertNowShowing;
  v107 = type metadata accessor for AlertViewModel(0);
  v108 = v311;
  (*(*(v107 - 8) + 56))(v311, 1, 1, v107);
  sub_1000187C8(v108, v312, &qword_10009ECD0, &qword_10007E810);
  v109 = v314;
  sub_10007AF0C();
  sub_100008824(v108, &qword_10009ECD0, &qword_10007E810);
  (*(v315 + 32))(v2 + v106, v109, v316);
  v110 = OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12SharingModel__isShowingAlert;
  LOBYTE(v486) = 0;
  v111 = v476;
  sub_10007AF0C();
  v483 = v88;
  v112 = v482;
  v482(v2 + v110, v111, v88);
  v113 = OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12SharingModel__isFolderShare;
  LOBYTE(v486) = 0;
  sub_10007AF0C();
  v112(v2 + v113, v111, v88);
  v463 = (v89 + 32);
  v114 = v112;
  v313 = OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12SharingModel__rootFolderURL;
  v315 = sub_10007AC4C();
  v115 = *(v315 - 8);
  v314 = *(v115 + 56);
  v316 = v115 + 56;
  v116 = v322;
  (v314)(v322, 1, 1, v315);
  sub_1000057A0(&qword_10009F130, &qword_10007EDB8);
  v117 = swift_allocObject();
  v118 = (v117 + *(*v117 + 104));
  *v118 = 0;
  v118[1] = 0;
  v119 = v472;
  sub_1000187C8(v116, v472, &unk_10009ED10, &qword_10007D310);
  swift_beginAccess();
  sub_1000187C8(v119, v317, &unk_10009ED10, &qword_10007D310);
  sub_10007AF0C();
  sub_100008824(v119, &unk_10009ED10, &qword_10007D310);
  swift_endAccess();
  v120 = v116;
  sub_100008824(v116, &unk_10009ED10, &qword_10007D310);
  *(v2 + v313) = v117;
  v121 = OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12SharingModel__isFolderSubshare;
  LOBYTE(v486) = 0;
  v122 = v476;
  sub_10007AF0C();
  v114(v2 + v121, v122, v483);
  v123 = OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12SharingModel__rootFolderTitle;
  sub_1000057A0(&qword_10009F138, &unk_10007EDC0);
  v124 = swift_allocObject();
  v125 = (v124 + *(*v124 + 104));
  *v125 = 0;
  v125[1] = 0;
  swift_beginAccess();
  v490 = 0;
  v491 = 0;
  v126 = sub_1000057A0(&qword_10009ED20, &qword_10007CF90);
  sub_10007AF0C();
  swift_endAccess();
  *(v2 + v123) = v124;
  v127 = OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12SharingModel__ckFolderSubitemName;
  v128 = swift_allocObject();
  v129 = (v128 + *(*v128 + 104));
  *v129 = 0;
  v129[1] = 0;
  swift_beginAccess();
  v490 = 0;
  v491 = 0;
  v317 = v126;
  sub_10007AF0C();
  swift_endAccess();
  *(v2 + v127) = v128;
  v130 = OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12SharingModel__folderSharingStage;
  LOBYTE(v486) = 4;
  sub_1000057A0(&qword_10009ECE0, &qword_10007E818);
  v131 = v318;
  sub_10007AF0C();
  (*(v319 + 32))(v2 + v130, v131, v445);
  v132 = OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12SharingModel__shareSaveStatus;
  LOBYTE(v486) = 0;
  v133 = v320;
  sub_10007AF0C();
  (*(v321 + 32))(v2 + v132, v133, v323);
  v134 = (v2 + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12SharingModel_lastServicesData);
  *v134 = 0;
  v134[1] = 0;
  v135 = OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12SharingModel__sharingOptionsAllowedFromSPI;
  v486 = 15;
  v136 = v324;
  sub_10007AF0C();
  (*(v325 + 32))(v2 + v135, v136, v471);
  v137 = OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12SharingModel__yourNameAndEmail;
  v486 = 0;
  v487 = 0xE000000000000000;
  v488 = 0;
  v489 = 0xE000000000000000;
  sub_1000057A0(&unk_10009ED00, &unk_10007E838);
  v138 = v326;
  sub_10007AF0C();
  (*(v327 + 32))(v2 + v137, v138, v328);
  v139 = OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12SharingModel__sharedFileOrFolderURL;
  (v314)(v120, 1, 1, v315);
  sub_1000187C8(v120, v472, &unk_10009ED10, &qword_10007D310);
  v140 = v329;
  sub_10007AF0C();
  sub_100008824(v120, &unk_10009ED10, &qword_10007D310);
  (*(v330 + 32))(v2 + v139, v140, v466);
  *(v2 + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12SharingModel_shouldStopAccessingSharedFileOrFolderURL) = 0;
  v141 = OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12SharingModel__itemUTI;
  v486 = 0;
  v487 = 0;
  v142 = v331;
  sub_10007AF0C();
  v474 = *(v348 + 32);
  v474(v2 + v141, v142, v477);
  v143 = OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12SharingModel__isShareRoot;
  LOBYTE(v486) = 1;
  sub_10007AF0C();
  v482(v2 + v143, v122, v483);
  v144 = OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12SharingModel__thumbnail;
  v486 = [objc_allocWithZone(UIImage) init];
  v348 = sub_100005C8C(0, &qword_10009ED30, UIImage_ptr);
  v145 = v332;
  sub_10007AF0C();
  (*(v333 + 32))(v2 + v144, v145, v457);
  v146 = OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12SharingModel__thumbnailFromCloudKitSPI;
  v486 = 0;
  sub_1000057A0(&qword_10009ED40, &qword_10007E868);
  v147 = v334;
  sub_10007AF0C();
  v148 = *(v335 + 32);
  v149 = v451;
  v148(v2 + v146, v147, v451);
  v150 = OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12SharingModel__thumbnailFromDocumentSPI;
  v486 = 0;
  sub_10007AF0C();
  v148(v2 + v150, v147, v149);
  v151 = OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12SharingModel__itemTitle;
  v486 = 0;
  v487 = 0xE000000000000000;
  v152 = v336;
  sub_10007AF0C();
  v153 = *(v338 + 4);
  v154 = v2 + v151;
  v155 = v339;
  v153(v154, v152, v339);
  v156 = OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12SharingModel__sourceAppBundleID;
  v486 = 0;
  v487 = 0;
  sub_10007AF0C();
  v474(v2 + v156, v142, v477);
  v157 = OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12SharingModel__sectionTitleForAuxiliaryToggles;
  v486 = 0;
  v487 = 0xE000000000000000;
  sub_10007AF0C();
  v153(v2 + v157, v152, v155);
  v158 = OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12SharingModel__primaryCheckboxTitle;
  v486 = 0;
  v487 = 0xE000000000000000;
  sub_10007AF0C();
  v153(v2 + v158, v152, v155);
  v472 = v153;
  v159 = OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12SharingModel__secondaryCheckboxTitle;
  v486 = 0;
  v487 = 0xE000000000000000;
  sub_10007AF0C();
  v153(v2 + v159, v152, v155);
  v160 = OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12SharingModel__primaryCheckboxState;
  LOBYTE(v486) = 0;
  v161 = v476;
  sub_10007AF0C();
  v163 = v482;
  v162 = v483;
  v482(v2 + v160, v161, v483);
  v164 = OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12SharingModel__secondaryCheckboxState;
  LOBYTE(v486) = 0;
  sub_10007AF0C();
  v163(v2 + v164, v161, v162);
  v165 = OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12SharingModel__ckContainerIdentifier;
  v486 = [objc_allocWithZone(CKContainerID) init];
  sub_100005C8C(0, &qword_10009E678, CKContainerID_ptr);
  v166 = v337;
  sub_10007AF0C();
  v340[4](v2 + v165, v166, v341);
  v167 = OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12SharingModel__helpAnchor;
  v486 = 0;
  v487 = 0xE000000000000000;
  sub_10007AF0C();
  v472(v2 + v167, v152, v155);
  v168 = OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12SharingModel__participantDetails;
  v486 = sub_100060474(_swiftEmptyArrayStorage);
  sub_1000057A0(&unk_10009ED68, &qword_10007E870);
  v169 = v342;
  sub_10007AF0C();
  (*(v343 + 32))(v2 + v168, v169, v461);
  v170 = OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12SharingModel_networkMonitor;
  type metadata accessor for NetworkMonitor(0);
  swift_allocObject();
  *(v2 + v170) = sub_100005E24(0);
  *(v2 + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12SharingModel_ckMetadata) = 0;
  v171 = v485;
  v2[2] = v485;
  v2[3] = *(v171 + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12OptionsModel_ckShareModel);
  swift_weakAssign();
  v343 = OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12SharingModel__sharedFileOrFolderURL;
  swift_beginAccess();

  v172 = v452;
  sub_10007AF1C();
  swift_endAccess();
  v342 = sub_10000D6F4(&unk_10009F140, &qword_10009F070, &qword_10007ECC8, &protocol conformance descriptor for Published<A>.Publisher);
  v341 = sub_1000086C8();
  v173 = v453;
  sub_10007AFAC();
  v174 = *(v468 + 8);
  v468 += 8;
  v340 = v174;
  (v174)(v172, v173);
  swift_beginAccess();
  v175 = v344;
  sub_10007AF1C();
  swift_endAccess();
  sub_10000D6F4(&qword_10009F158, &qword_10009F060, &qword_10007ECB8, &protocol conformance descriptor for Published<A>.Publisher);
  sub_1000085A4();
  v176 = v346;
  sub_10007AFAC();
  v177 = *(v345 + 8);
  v177(v175, v176);
  swift_beginAccess();
  sub_10007AF1C();
  swift_endAccess();
  sub_10007AFAC();
  v177(v175, v176);
  swift_beginAccess();
  v178 = v455;
  sub_10007AF1C();
  swift_endAccess();
  v482 = &protocol conformance descriptor for Published<A>.Publisher;
  v339 = sub_10000D6F4(&qword_10009F168, &qword_10009F050, &qword_10007ECA8, &protocol conformance descriptor for Published<A>.Publisher);
  v179 = v456;
  sub_10007AFAC();
  v180 = *(v469 + 8);
  v469 += 8;
  v338 = v180;
  v180(v178, v179);
  v344 = sub_10000D6F4(&qword_10009F170, &qword_10009F078, &qword_10007ECD0, &protocol conformance descriptor for Publishers.RemoveDuplicates<A>);
  sub_10000D6F4(&qword_10009F178, &qword_10009F068, &qword_10007ECC0, &protocol conformance descriptor for Publishers.RemoveDuplicates<A>);
  v463 = &protocol conformance descriptor for Publishers.RemoveDuplicates<A>;
  v345 = sub_10000D6F4(&qword_10009F180, &qword_10009F058, &qword_10007ECB0, &protocol conformance descriptor for Publishers.RemoveDuplicates<A>);
  v181 = v347;
  sub_10007AE8C();
  v182 = swift_allocObject();
  *(v182 + 16) = sub_10006623C;
  *(v182 + 24) = v2;
  v346 = &protocol conformance descriptor for Publishers.CombineLatest4<A, B, C, D>;
  sub_10000D6F4(&qword_10009F188, &qword_10009F080, &qword_10007ECD8, &protocol conformance descriptor for Publishers.CombineLatest4<A, B, C, D>);

  v183 = v438;
  v184 = v437;
  sub_10007AF7C();

  (*(v436 + 8))(v181, v184);
  v185 = OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12SharingModel__sharingType;
  swift_beginAccess();
  v186 = v465;
  sub_10007AF1C();
  swift_endAccess();
  v443 = &protocol conformance descriptor for Publishers.Map<A, B>;
  sub_10000D6F4(&qword_10009F190, &qword_10009F088, &qword_10007ECE0, &protocol conformance descriptor for Publishers.Map<A, B>);
  v187 = v442;
  sub_10007AFCC();
  (*(v439 + 8))(v183, v187);
  v188 = v480;
  v189 = v467;
  (*(v480 + 16))(v460, v186, v467);
  v440 = v185;
  swift_beginAccess();
  sub_10007AF2C();
  swift_endAccess();
  v190 = *(v188 + 8);
  v480 = v188 + 8;
  v442 = v190;
  (v190)(v186, v189);
  v436 = OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12SharingModel__executionMode;
  swift_beginAccess();
  v191 = v360;
  sub_10007AF1C();
  swift_endAccess();
  v439 = sub_10000D6F4(&qword_10009F198, &qword_10009F030, &qword_10007EC88, &protocol conformance descriptor for Published<A>.Publisher);
  v438 = sub_100066284();
  v192 = v352;
  v193 = v464;
  sub_10007AFAC();
  v194 = *(v479 + 8);
  v479 += 8;
  v437 = v194;
  (v194)(v191, v193);
  v472 = objc_opt_self();
  v195 = [v472 mainRunLoop];
  v486 = v195;
  v476 = sub_10007B53C();
  v196 = *(v476 - 8);
  v475 = *(v196 + 56);
  v477 = v196 + 56;
  v197 = v484;
  v475(v484, 1, 1, v476);
  v460 = sub_100005C8C(0, &qword_10009F1A8, NSRunLoop_ptr);
  sub_10000D6F4(&qword_10009F1B0, &qword_10009F038, &qword_10007EC90, &protocol conformance descriptor for Publishers.RemoveDuplicates<A>);
  v474 = sub_1000662D8(&qword_10009F1B8, &qword_10009F1A8, NSRunLoop_ptr, &protocol conformance descriptor for NSRunLoop);
  v198 = v349;
  v199 = v353;
  sub_10007AF9C();
  sub_100008824(v197, &qword_10009F028, &qword_10007EC80);

  (*(v350 + 8))(v192, v199);
  v461 = &protocol conformance descriptor for Publishers.ReceiveOn<A, B>;
  sub_10000D6F4(&unk_10009F1C0, &qword_10009F040, &qword_10007EC98, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);

  v200 = v441;
  sub_10007AFBC();

  (*(v351 + 8))(v198, v200);
  swift_beginAccess();
  sub_10007AECC();
  swift_endAccess();

  swift_beginAccess();
  sub_10007AF1C();
  swift_endAccess();
  v201 = v464;
  sub_10007AFAC();
  (v437)(v191, v201);
  swift_beginAccess();

  v441 = sub_1000057A0(&qword_10009E658, &qword_10007D670);
  sub_10007AF1C();
  swift_endAccess();

  v351 = sub_10000D6F4(&qword_10009F1D0, &qword_10009F010, &qword_10007D630, v482);
  v202 = v354;
  sub_10007AE4C();
  v203 = swift_allocObject();
  swift_weakInit();
  v204 = swift_allocObject();
  *(v204 + 16) = sub_10006635C;
  *(v204 + 24) = v203;
  v353 = &protocol conformance descriptor for Publishers.CombineLatest<A, B>;
  sub_10000D6F4(&qword_10009F1D8, &qword_10009F018, &qword_10007EC70, &protocol conformance descriptor for Publishers.CombineLatest<A, B>);
  v205 = v357;
  v206 = v356;
  sub_10007AF7C();

  (*(v355 + 8))(v202, v206);
  swift_beginAccess();

  v207 = sub_1000057A0(&qword_10009F1E0, &qword_10007EDD0);
  v208 = v365;
  v356 = v207;
  sub_10007AF1C();
  swift_endAccess();
  sub_10000D6F4(&qword_10009F1E8, &qword_10009F020, &qword_10007EC78, v443);
  v209 = v359;
  sub_10007AFCC();
  (*(v358 + 8))(v205, v209);
  v210 = v366;
  v211 = v448;
  (*(v366 + 16))(v361, v208, v448);
  swift_beginAccess();
  sub_10007AF2C();
  swift_endAccess();

  v366 = *(v210 + 8);
  (v366)(v208, v211);
  swift_beginAccess();
  sub_10007AF1C();
  swift_endAccess();
  v212 = v371;
  v213 = v464;
  sub_10007AFAC();
  (v437)(v191, v213);
  swift_beginAccess();
  v214 = v465;
  sub_10007AF1C();
  swift_endAccess();
  v215 = v482;
  v479 = sub_10000D6F4(&qword_10009F1F0, &qword_10009F048, &qword_10007ECA0, v482);
  sub_10006639C();
  v216 = v467;
  sub_10007AFAC();
  (v442)(v214, v216);
  swift_beginAccess();

  sub_10007AF1C();
  swift_endAccess();

  swift_beginAccess();
  sub_1000057A0(&qword_10009F200, &qword_10007EDD8);
  v217 = v362;
  sub_10007AF1C();
  swift_endAccess();
  sub_10000D6F4(&qword_10009F208, &qword_10009EFF0, &qword_10007EC48, v215);
  sub_1000663F0();
  v218 = v364;
  sub_10007AFAC();
  (*(v363 + 8))(v217, v218);
  swift_beginAccess();
  sub_1000057A0(&qword_10009F218, &qword_10007EDE0);
  v219 = v367;
  sub_10007AF1C();
  swift_endAccess();
  sub_10000D6F4(&qword_10009F220, &qword_10009EFE8, &qword_10007EC40, v215);
  sub_100066444();
  v220 = v369;
  sub_10007AFAC();
  (*(v368 + 8))(v219, v220);
  swift_beginAccess();

  sub_10007AF1C();
  swift_endAccess();

  sub_10000D6F4(&qword_10009F230, &qword_10009F008, &unk_10007EC60, v215);
  sub_100066498();
  v221 = v448;
  sub_10007AFAC();
  (v366)(v208, v221);
  v222 = [v472 mainRunLoop];
  v486 = v222;
  v223 = v484;
  v475(v484, 1, 1, v476);
  sub_10000D6F4(&qword_10009F240, &qword_10009EFF8, &qword_10007EC50, &protocol conformance descriptor for Publishers.CSCombineLatest6<A, B, C, D, E, F>);
  v224 = v372;
  sub_10007AF9C();
  sub_100008824(v223, &qword_10009F028, &qword_10007EC80);

  sub_100008824(v212, &qword_10009EFF8, &qword_10007EC50);
  v225 = swift_allocObject();
  swift_weakInit();
  v226 = swift_allocObject();
  v227 = v485;
  *(v226 + 16) = v225;
  *(v226 + 24) = v227;
  v228 = swift_allocObject();
  *(v228 + 16) = sub_10006652C;
  *(v228 + 24) = v226;
  v229 = v461;
  sub_10000D6F4(&qword_10009F248, &qword_10009F000, &qword_10007EC58, v461);

  v230 = v374;
  sub_10007AFBC();

  (*(v373 + 8))(v224, v230);
  swift_beginAccess();
  sub_10007AECC();
  swift_endAccess();

  swift_beginAccess();

  v231 = v449;
  sub_10007AF1C();
  swift_endAccess();

  v232 = [v472 mainRunLoop];
  v486 = v232;
  v233 = v484;
  v475(v484, 1, 1, v476);
  v234 = v376;
  v235 = v450;
  sub_10007AF9C();
  sub_100008824(v233, &qword_10009F028, &qword_10007EC80);

  (*(v375 + 8))(v231, v235);
  swift_allocObject();
  swift_weakInit();
  sub_10000D6F4(&qword_10009F250, &qword_10009EFE0, &qword_10007EC38, v229);
  v236 = v378;
  sub_10007AFBC();

  (*(v377 + 8))(v234, v236);
  swift_beginAccess();
  sub_10007AECC();
  swift_endAccess();

  swift_beginAccess();
  v237 = v465;
  sub_10007AF1C();
  swift_endAccess();
  swift_allocObject();
  swift_weakInit();
  v238 = v467;
  sub_10007AFBC();

  (v442)(v237, v238);
  swift_beginAccess();
  sub_10007AECC();
  swift_endAccess();

  swift_beginAccess();
  v239 = v379;
  sub_10007AF1C();
  swift_endAccess();
  swift_allocObject();
  swift_weakInit();
  v240 = v482;
  sub_10000D6F4(&qword_10009F258, &qword_10009EFD8, &qword_10007EC30, v482);
  v241 = v381;
  sub_10007AFBC();

  (*(v380 + 8))(v239, v241);
  swift_beginAccess();
  sub_10007AECC();
  swift_endAccess();

  swift_beginAccess();
  v242 = v382;
  sub_10007AF1C();
  swift_endAccess();
  v243 = swift_allocObject();
  swift_weakInit();
  v244 = swift_allocObject();
  *(v244 + 16) = sub_10006658C;
  *(v244 + 24) = v243;
  sub_10000D6F4(&qword_10009F260, &qword_10009EFD0, &qword_10007EC28, v240);
  v245 = v384;
  sub_10007AFBC();

  (*(v383 + 8))(v242, v245);
  swift_beginAccess();
  sub_10007AECC();
  swift_endAccess();

  swift_beginAccess();
  v246 = v385;
  sub_10007AF1C();
  swift_endAccess();
  v247 = swift_allocObject();
  swift_weakInit();
  v248 = swift_allocObject();
  *(v248 + 16) = sub_1000665C0;
  *(v248 + 24) = v247;
  sub_10000D6F4(&qword_10009F268, &qword_10009EFC8, &qword_10007EC20, v240);
  v249 = v387;
  sub_10007AFBC();

  (*(v386 + 8))(v246, v249);
  swift_beginAccess();
  sub_10007AECC();
  swift_endAccess();

  swift_beginAccess();
  v250 = v388;
  sub_10007AF1C();
  swift_endAccess();
  v251 = swift_allocObject();
  swift_weakInit();
  v252 = swift_allocObject();
  *(v252 + 16) = sub_1000665F4;
  *(v252 + 24) = v251;
  sub_10000D6F4(&qword_10009F270, &qword_10009EFC0, &qword_10007EC18, v240);
  v253 = v390;
  sub_10007AFBC();

  (*(v389 + 8))(v250, v253);
  swift_beginAccess();
  sub_10007AECC();
  swift_endAccess();

  swift_beginAccess();
  v254 = v452;
  sub_10007AF1C();
  swift_endAccess();
  v255 = v453;
  sub_10007AFAC();
  (v340)(v254, v255);
  swift_beginAccess();
  v256 = v455;
  sub_10007AF1C();
  swift_endAccess();
  v257 = v456;
  sub_10007AFAC();
  v338(v256, v257);
  swift_beginAccess();
  v258 = v392;
  sub_10007AF1C();
  swift_endAccess();
  sub_10000D6F4(&qword_10009F278, &qword_10009EFA0, &qword_10007EBF8, v240);
  sub_100066628();
  v259 = v396;
  sub_10007AFAC();
  v260 = *(v394 + 8);
  v260(v258, v259);
  swift_beginAccess();
  sub_10007AF1C();
  swift_endAccess();
  sub_10007AFAC();
  v260(v258, v259);
  sub_10000D6F4(&qword_10009F290, &qword_10009EFA8, &qword_10007EC00, v463);
  v261 = v397;
  sub_10007AE8C();
  v262 = swift_allocObject();
  swift_weakInit();
  v263 = swift_allocObject();
  *(v263 + 16) = v262;
  *(v263 + 24) = vdupq_n_s64(0x4060000000000000uLL);
  *(v263 + 40) = v408;
  v264 = swift_allocObject();
  *(v264 + 16) = &unk_10007EDF0;
  *(v264 + 24) = v263;
  v265 = swift_allocObject();
  *(v265 + 16) = &unk_10007EE00;
  *(v265 + 24) = v264;

  sub_10007AEBC();
  sub_1000057A0(&qword_10009F298, &qword_10007EE08);
  sub_10000D6F4(&qword_10009F2A0, &qword_10009EFB0, &qword_10007EC08, v346);
  sub_10000D6F4(&qword_10009F2A8, &qword_10009F298, &qword_10007EE08, &protocol conformance descriptor for Future<A, B>);
  v266 = v400;
  v267 = v399;
  v268 = v261;
  sub_10007AF8C();

  sub_10000D6F4(&qword_10009F2B0, &qword_10009EF98, &qword_10007EBF0, &protocol conformance descriptor for Publishers.FlatMap<A, B>);
  v269 = v403;
  v270 = sub_10007AF6C();

  (*(v402 + 8))(v266, v269);
  (*(v398 + 8))(v268, v267);
  v486 = v270;
  v271 = [v472 mainRunLoop];
  v490 = v271;
  v272 = v484;
  v475(v484, 1, 1, v476);
  sub_1000057A0(&qword_10009F2B8, &unk_10007EE10);
  sub_10000D6F4(&qword_10009F2C0, &qword_10009F2B8, &unk_10007EE10, &protocol conformance descriptor for AnyPublisher<A, B>);
  v273 = v401;
  sub_10007AF9C();
  sub_100008824(v272, &qword_10009F028, &qword_10007EC80);

  swift_beginAccess();
  v274 = v407;
  sub_10007AF1C();
  swift_endAccess();
  sub_10000D6F4(&qword_10009F2C8, &qword_10009EFB8, &qword_10007EC10, v461);
  v275 = v405;
  sub_10007AFCC();
  (*(v404 + 8))(v273, v275);
  v276 = v409;
  v277 = v410;
  (*(v409 + 16))(v406, v274, v410);
  swift_beginAccess();
  sub_10007AF2C();
  swift_endAccess();
  (*(v276 + 8))(v274, v277);
  swift_beginAccess();
  v278 = v426;
  sub_10007AF1C();
  swift_endAccess();
  v279 = v482;
  sub_10000D6F4(&qword_10009F2D0, &qword_10009EF70, &unk_100080500, v482);
  sub_1000669BC();
  v280 = v459;
  sub_10007AFAC();
  v281 = v424;
  v483 = *(v424 + 8);
  v483(v278, v280);
  swift_beginAccess();

  sub_1000057A0(&unk_10009F2E0, &qword_10007D648);
  v282 = v419;
  sub_10007AF1C();
  swift_endAccess();

  sub_10000D6F4(&qword_10009E680, &unk_10009EF60, &unk_10007D600, v279);
  sub_10000D590();
  v283 = v422;
  sub_10007AFAC();
  (*(v421 + 8))(v282, v283);
  v284 = v463;
  sub_10000D6F4(&unk_10009F310, &qword_10009EF78, &qword_10007EBD0, v463);
  sub_10000D6F4(&qword_10009E698, &qword_10009E610, &unk_10007EBC0, v284);
  v285 = v412;
  sub_10007AE4C();
  sub_10000D6F4(&qword_10009F320, &qword_10009EF80, &qword_10007EBD8, v353);
  v286 = v415;
  v287 = v416;
  sub_10007AF7C();
  (*(v414 + 8))(v285, v287);
  swift_beginAccess();
  sub_10007AF1C();
  swift_endAccess();
  sub_10000D6F4(&qword_10009F328, &qword_10009EF88, &qword_10007EBE0, v443);
  v288 = v418;
  sub_10007AFCC();
  (*(v417 + 8))(v286, v288);
  v289 = v459;
  (*(v281 + 16))(v425, v278, v459);
  swift_beginAccess();
  sub_10007AF2C();
  swift_endAccess();
  v483(v278, v289);
  swift_beginAccess();

  sub_1000057A0(&qword_10009F330, &qword_10007D0D8);
  v290 = v427;
  sub_10007AF1C();
  swift_endAccess();

  sub_10000D6F4(&qword_10009F338, &qword_10009EF48, &qword_10007EBA0, v482);
  sub_100006B48();
  v291 = v430;
  v292 = v429;
  sub_10007AFAC();
  (*(v428 + 8))(v290, v292);
  v293 = [v472 mainRunLoop];
  v486 = v293;
  v294 = v484;
  v475(v484, 1, 1, v476);
  sub_10000D6F4(&qword_10009F348, &qword_10009EF50, &qword_10007EBA8, v463);
  v295 = v433;
  v296 = v432;
  sub_10007AF9C();
  sub_100008824(v294, &qword_10009F028, &qword_10007EC80);

  (*(v431 + 8))(v291, v296);
  swift_allocObject();
  swift_weakInit();

  sub_10000D6F4(&qword_10009F350, &qword_10009EF58, &unk_10007EBB0, v461);
  v297 = v435;
  sub_10007AFBC();

  (*(v434 + 8))(v295, v297);
  swift_beginAccess();
  sub_10007AECC();
  swift_endAccess();

  return v2;
}

uint64_t sub_1000661F4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100066244()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_100066284()
{
  result = qword_10009F1A0;
  if (!qword_10009F1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009F1A0);
  }

  return result;
}

uint64_t sub_1000662D8(unint64_t *a1, unint64_t *a2, void *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_100005C8C(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100066324()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100066364@<X0>(unsigned __int8 *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 16))(*a1, *(a1 + 1));
  *a2 = result;
  return result;
}

unint64_t sub_10006639C()
{
  result = qword_10009F1F8;
  if (!qword_10009F1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009F1F8);
  }

  return result;
}

unint64_t sub_1000663F0()
{
  result = qword_10009F210;
  if (!qword_10009F210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009F210);
  }

  return result;
}

unint64_t sub_100066444()
{
  result = qword_10009F228;
  if (!qword_10009F228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009F228);
  }

  return result;
}

unint64_t sub_100066498()
{
  result = qword_10009F238;
  if (!qword_10009F238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009F238);
  }

  return result;
}

uint64_t sub_1000664EC()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_100066628()
{
  result = qword_10009F280;
  if (!qword_10009F280)
  {
    sub_100004AD8(&qword_10009ED40, &qword_10007E868);
    sub_1000662D8(&qword_10009F288, &qword_10009ED30, UIImage_ptr, &protocol conformance descriptor for NSObject);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009F280);
  }

  return result;
}

uint64_t sub_1000666D8()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100066710(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v10 = *(v4 + 2);
  v11 = v4[3];
  v12 = v4[4];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_1000667F0;

  return sub_1000554F0(a1, a2, a3, a4, v10, v11, v12);
}

uint64_t sub_1000667F0(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_1000668EC(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10000D9D8;

  return sub_100056228(a1, a2, v6);
}

unint64_t sub_1000669BC()
{
  result = qword_10009F2D8;
  if (!qword_10009F2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009F2D8);
  }

  return result;
}

uint64_t sub_100066A20(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000DACC;

  return sub_100056820(a1, v4, v5, v6);
}

uint64_t sub_100066B34()
{
  v1 = sub_1000057A0(&qword_10009F378, &qword_10007EE90);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  v5 = v0 + v3;
  v6 = sub_10007AC4C();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v0 + v3, 1, v6))
  {
    (*(v7 + 8))(v0 + v3, v6);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100066C80(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_1000057A0(&qword_10009F378, &qword_10007EE90) - 8);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  return sub_10005EBF4(a1, a2, v6, v7, v8);
}

uint64_t sub_100066D10()
{
  v1 = sub_1000057A0(&qword_10009F378, &qword_10007EE90);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  swift_unknownObjectRelease();

  v5 = v0 + v3;
  v6 = sub_10007AC4C();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v0 + v3, 1, v6))
  {
    (*(v7 + 8))(v0 + v3, v6);
  }

  return _swift_deallocObject(v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 16, v2 | 7);
}

uint64_t sub_100066E7C(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1000057A0(&qword_10009F378, &qword_10007EE90) - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1[5];
  v11 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = *v11;
  v13 = v11[1];
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_10000DACC;

  return sub_10005EE04(a1, v7, v8, v9, v10, v1 + v6, v12, v13);
}

uint64_t sub_100066FD8(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return v2;
}

unint64_t sub_100066FE4()
{
  sub_1000057A0(&qword_10009F3E8, &qword_10007F560);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10007E770;
  *(inited + 32) = 7;
  v1 = objc_opt_self();
  v2 = [v1 mainBundle];
  v69._countAndFlagsBits = 0x8000000100082A70;
  v82._object = 0x8000000100082A10;
  v82._countAndFlagsBits = 0xD00000000000005DLL;
  v95.value._countAndFlagsBits = 0;
  v95.value._object = 0;
  v3.super.isa = v2;
  v108._countAndFlagsBits = 0;
  v108._object = 0xE000000000000000;
  v4 = sub_10007AA5C(v82, v95, v3, v108, 0xD00000000000002BLL, v69);
  v6 = v5;

  *(inited + 40) = v4;
  *(inited + 48) = v6;
  *(inited + 56) = 8;
  v7 = [v1 mainBundle];
  v70._countAndFlagsBits = 0x8000000100082B00;
  v83._countAndFlagsBits = 0xD00000000000005FLL;
  v83._object = 0x8000000100082AA0;
  v96.value._countAndFlagsBits = 0;
  v96.value._object = 0;
  v8.super.isa = v7;
  v109._countAndFlagsBits = 0;
  v109._object = 0xE000000000000000;
  v9 = sub_10007AA5C(v83, v96, v8, v109, 0xD000000000000033, v70);
  v11 = v10;

  *(inited + 64) = v9;
  *(inited + 72) = v11;
  *(inited + 80) = 9;
  v12 = [v1 mainBundle];
  v71._countAndFlagsBits = 0x8000000100082BA0;
  v84._object = 0x8000000100082B40;
  v84._countAndFlagsBits = 0xD00000000000005DLL;
  v97.value._countAndFlagsBits = 0;
  v97.value._object = 0;
  v13.super.isa = v12;
  v110._countAndFlagsBits = 0;
  v110._object = 0xE000000000000000;
  v14 = sub_10007AA5C(v84, v97, v13, v110, 0xD00000000000002BLL, v71);
  v16 = v15;

  *(inited + 88) = v14;
  *(inited + 96) = v16;
  *(inited + 104) = 10;
  v17 = [v1 mainBundle];
  v72._countAndFlagsBits = 0x8000000100082C40;
  v85._countAndFlagsBits = 0xD000000000000062;
  v85._object = 0x8000000100082BD0;
  v98.value._countAndFlagsBits = 0;
  v98.value._object = 0;
  v18.super.isa = v17;
  v111._countAndFlagsBits = 0;
  v111._object = 0xE000000000000000;
  v19 = sub_10007AA5C(v85, v98, v18, v111, 0xD000000000000030, v72);
  v21 = v20;

  *(inited + 112) = v19;
  *(inited + 120) = v21;
  *(inited + 128) = 11;
  v22 = [v1 mainBundle];
  v73._countAndFlagsBits = 0x8000000100082CE0;
  v86._countAndFlagsBits = 0xD00000000000005ELL;
  v86._object = 0x8000000100082C80;
  v99.value._countAndFlagsBits = 0;
  v99.value._object = 0;
  v23.super.isa = v22;
  v112._countAndFlagsBits = 0;
  v112._object = 0xE000000000000000;
  v24 = sub_10007AA5C(v86, v99, v23, v112, 0xD00000000000002CLL, v73);
  v26 = v25;

  *(inited + 136) = v24;
  *(inited + 144) = v26;
  *(inited + 152) = 0;
  v27 = [v1 mainBundle];
  v74._countAndFlagsBits = 0x8000000100082D10;
  v87._countAndFlagsBits = 0xD00000000000005FLL;
  v87._object = 0x8000000100082AA0;
  v100.value._countAndFlagsBits = 0;
  v100.value._object = 0;
  v28.super.isa = v27;
  v113._countAndFlagsBits = 0;
  v113._object = 0xE000000000000000;
  v29 = sub_10007AA5C(v87, v100, v28, v113, 0xD00000000000002DLL, v74);
  v31 = v30;

  *(inited + 160) = v29;
  *(inited + 168) = v31;
  *(inited + 176) = 1;
  v32 = [v1 mainBundle];
  v75._countAndFlagsBits = 0x8000000100082DB0;
  v88._countAndFlagsBits = 0xD000000000000061;
  v88._object = 0x8000000100082D40;
  v101.value._countAndFlagsBits = 0;
  v101.value._object = 0;
  v33.super.isa = v32;
  v114._countAndFlagsBits = 0;
  v114._object = 0xE000000000000000;
  v34 = sub_10007AA5C(v88, v101, v33, v114, 0xD00000000000002FLL, v75);
  v36 = v35;

  *(inited + 184) = v34;
  *(inited + 192) = v36;
  *(inited + 200) = 2;
  v37 = [v1 mainBundle];
  v76._countAndFlagsBits = 0x8000000100082E50;
  v89._countAndFlagsBits = 0xD000000000000064;
  v89._object = 0x8000000100082DE0;
  v102.value._countAndFlagsBits = 0;
  v102.value._object = 0;
  v38.super.isa = v37;
  v115._countAndFlagsBits = 0;
  v115._object = 0xE000000000000000;
  v39 = sub_10007AA5C(v89, v102, v38, v115, 0xD000000000000032, v76);
  v41 = v40;

  *(inited + 208) = v39;
  *(inited + 216) = v41;
  *(inited + 224) = 3;
  v42 = [v1 mainBundle];
  v77._countAndFlagsBits = 0x8000000100082F00;
  v90._countAndFlagsBits = 0xD000000000000065;
  v90._object = 0x8000000100082E90;
  v103.value._countAndFlagsBits = 0;
  v103.value._object = 0;
  v43.super.isa = v42;
  v116._countAndFlagsBits = 0;
  v116._object = 0xE000000000000000;
  v44 = sub_10007AA5C(v90, v103, v43, v116, 0xD000000000000033, v77);
  v46 = v45;

  *(inited + 232) = v44;
  *(inited + 240) = v46;
  *(inited + 248) = 4;
  v47 = [v1 mainBundle];
  v78._countAndFlagsBits = 0x8000000100082FA0;
  v91._countAndFlagsBits = 0xD00000000000005ELL;
  v91._object = 0x8000000100082F40;
  v104.value._countAndFlagsBits = 0;
  v104.value._object = 0;
  v48.super.isa = v47;
  v117._countAndFlagsBits = 0;
  v117._object = 0xE000000000000000;
  v49 = sub_10007AA5C(v91, v104, v48, v117, 0xD00000000000002DLL, v78);
  v51 = v50;

  *(inited + 256) = v49;
  *(inited + 264) = v51;
  *(inited + 272) = 5;
  v52 = [v1 mainBundle];
  v79._countAndFlagsBits = 0x8000000100083030;
  v92._countAndFlagsBits = 0xD00000000000005ELL;
  v92._object = 0x8000000100082FD0;
  v105.value._countAndFlagsBits = 0;
  v105.value._object = 0;
  v53.super.isa = v52;
  v118._countAndFlagsBits = 0;
  v118._object = 0xE000000000000000;
  v54 = sub_10007AA5C(v92, v105, v53, v118, 0xD00000000000002CLL, v79);
  v56 = v55;

  *(inited + 280) = v54;
  *(inited + 288) = v56;
  *(inited + 296) = 6;
  v57 = [v1 mainBundle];
  v93._countAndFlagsBits = 0xD00000000000005CLL;
  v80._countAndFlagsBits = 0x80000001000830C0;
  v93._object = 0x8000000100083060;
  v106.value._countAndFlagsBits = 0;
  v106.value._object = 0;
  v58.super.isa = v57;
  v119._countAndFlagsBits = 0;
  v119._object = 0xE000000000000000;
  v59 = sub_10007AA5C(v93, v106, v58, v119, 0xD00000000000002ALL, v80);
  v61 = v60;

  *(inited + 304) = v59;
  *(inited + 312) = v61;
  *(inited + 320) = 13;
  v62 = [v1 mainBundle];
  v81._countAndFlagsBits = 0x8000000100083150;
  v94._object = 0x80000001000830F0;
  v94._countAndFlagsBits = 0xD00000000000005DLL;
  v107.value._countAndFlagsBits = 0;
  v107.value._object = 0;
  v63.super.isa = v62;
  v120._countAndFlagsBits = 0;
  v120._object = 0xE000000000000000;
  v64 = sub_10007AA5C(v94, v107, v63, v120, 0xD000000000000032, v81);
  v66 = v65;

  *(inited + 328) = v64;
  *(inited + 336) = v66;
  v67 = sub_100060578(inited);
  swift_setDeallocating();
  sub_1000057A0(&qword_10009F3F0, &qword_10007F568);
  swift_arrayDestroy();
  return v67;
}

uint64_t sub_1000676B0(uint64_t a1, double a2, double a3, double a4)
{
  *(v4 + 176) = a3;
  *(v4 + 184) = a4;
  *(v4 + 168) = a2;
  *(v4 + 160) = a1;
  v5 = sub_10007AE2C();
  *(v4 + 192) = v5;
  *(v4 + 200) = *(v5 - 8);
  *(v4 + 208) = swift_task_alloc();
  sub_10007B32C();
  *(v4 + 216) = sub_10007B31C();
  v7 = sub_10007B2EC();
  *(v4 + 224) = v7;
  *(v4 + 232) = v6;

  return _swift_task_switch(sub_1000677AC, v7, v6);
}

uint64_t sub_1000677AC(uint64_t a1)
{
  v3 = *(v1 + 176);
  v2 = *(v1 + 184);
  v4 = *(v1 + 168);
  *(v1 + 264) = sub_10007AC2C();
  v5 = objc_allocWithZone(QLThumbnailGenerationRequest);
  sub_10007ABFC(v6);
  v8 = v7;
  v9 = [v5 initWithFileAtURL:v7 size:-1 scale:v4 representationTypes:{v3, v2}];
  *(v1 + 240) = v9;

  v10 = [objc_opt_self() sharedGenerator];
  *(v1 + 248) = v10;
  *(v1 + 16) = v1;
  *(v1 + 56) = v1 + 144;
  *(v1 + 24) = sub_100067968;
  v11 = swift_continuation_init();
  *(v1 + 136) = sub_1000057A0(&unk_10009F390, &qword_10007EF00);
  *(v1 + 80) = _NSConcreteStackBlock;
  *(v1 + 88) = 1107296256;
  *(v1 + 96) = sub_100068868;
  *(v1 + 104) = &unk_100097CC0;
  *(v1 + 112) = v11;
  [v10 generateBestRepresentationForRequest:v9 completionHandler:v1 + 80];

  return _swift_continuation_await(v1 + 16);
}

uint64_t sub_100067968()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 256) = v2;
  v3 = *(v1 + 232);
  v4 = *(v1 + 224);
  if (v2)
  {
    v5 = sub_100067B58;
  }

  else
  {
    v5 = sub_100067A98;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100067A98()
{
  v2 = *(v0 + 240);
  v1 = *(v0 + 248);
  v3 = *(v0 + 264);

  v4 = *(v0 + 144);
  v5 = [v4 UIImage];

  if (v3 == 1)
  {
    sub_10007AC0C();
  }

  v6 = *(v0 + 8);

  return v6(v5);
}

uint64_t sub_100067B58()
{
  v29 = v0;

  swift_willThrow();
  sub_10007AE0C();
  swift_errorRetain();
  v1 = sub_10007AE1C();
  v2 = sub_10007B3FC();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 248);
    v4 = *(v0 + 256);
    v5 = *(v0 + 200);
    v27 = *(v0 + 208);
    v25 = *(v0 + 240);
    v26 = *(v0 + 192);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v28 = v7;
    *v6 = 136315138;
    *(v0 + 152) = v4;
    swift_errorRetain();
    sub_1000057A0(&qword_10009E7B0, &qword_10007CFC0);
    v8 = sub_10007B1AC();
    v10 = v9;
    v11 = sub_100037C08(v8, v9, &v28);
    v10, v12, v13, v14, v15, v16, v17, v18;
    *(v6 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v1, v2, "generateBestRepresentation throws error: %s", v6, 0xCu);
    sub_10000585C(v7);

    (*(v5 + 8))(v27, v26);
  }

  else
  {
    v19 = *(v0 + 240);
    v21 = *(v0 + 200);
    v20 = *(v0 + 208);
    v22 = *(v0 + 192);

    (*(v21 + 8))(v20, v22);
  }

  if (*(v0 + 264) == 1)
  {
    sub_10007AC0C();
  }

  v23 = *(v0 + 8);

  return v23(0);
}

uint64_t sub_100067DA0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000DACC;

  return sub_10005DF88(a1, v4, v5, v6);
}

uint64_t sub_100067E54()
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_10007AF3C();

  if (v3)
  {
    v0 = [v3 _copyWithoutPersonalInfo];
    sub_10004F634();

    return swift_unknownObjectRelease();
  }

  else
  {
    sub_100005AB8();
    swift_allocError();
    *v2 = 0xD000000000000024;
    *(v2 + 8) = 0x80000001000823D0;
    *(v2 + 16) = xmmword_10007E710;
    *(v2 + 32) = 0x8000000100082400;
    *(v2 + 40) = 11;
    return swift_willThrow();
  }
}

uint64_t sub_100067F80(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000D9D8;

  return sub_10001A050(a1, v4);
}

uint64_t sub_100068078(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000DACC;

  return sub_100055078(a1, v4, v5, v6, v7);
}

uint64_t sub_100068314(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000DACC;

  return sub_100054280(a1, v4, v5, v6);
}

uint64_t sub_1000683C8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000DACC;

  return sub_1000536DC();
}

uint64_t sub_10006847C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000DACC;

  return sub_10005196C();
}

uint64_t sub_1000685A4(uint64_t a1)
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v1, a1, 7);
}

uint64_t sub_1000685F0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000DACC;

  return sub_10005D918();
}

uint64_t sub_1000686A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AlertViewModelButton(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100068770(uint64_t a1)
{
  v2 = type metadata accessor for AlertViewModelButton(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t getEnumTagSinglePayload for SaveStage(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_19;
  }

  v2 = a2 + 5;
  if (a2 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_19;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_19;
      }
    }

    return (*a1 | (v5 << 8)) - 5;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 5;
    }
  }

LABEL_19:
  v7 = *a1;
  if (*a1 < 2u)
  {
    return 0;
  }

  v8 = (v7 & 0xFE) + 2147483646;
  if ((v8 & 0x7FFFFFFEu) <= 3)
  {
    return 0;
  }

  return (v8 & 0x7FFFFFFE | v7 & 1u) - 3;
}

uint64_t storeEnumTagSinglePayload for SaveStage(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 5;
  if (a3 + 5 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFB)
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_100068A08(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (v2)
  {
    return (v3 + 1);
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_100068A24(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AddAddressesStage(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AddAddressesStage(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CreateOrLoadStage(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CreateOrLoadStage(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 sub_100068CF8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_100068D0C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_100068D54(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

uint64_t getEnumTagSinglePayload for SharingStage(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SharingStage(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SharePermission(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SharePermission(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100069054()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10007AF3C();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_10007AF3C();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_10007AF3C();

  swift_getKeyPath();
  swift_getKeyPath();

  sub_10007AF3C();

  swift_getKeyPath();
  swift_getKeyPath();

  sub_10007AF3C();

  swift_getKeyPath();
  swift_getKeyPath();

  sub_10007AF3C();

  swift_getKeyPath();
  swift_getKeyPath();

  sub_10007AF3C();

  swift_getKeyPath();
  swift_getKeyPath();

  sub_10007AF3C();

  swift_getKeyPath();
  swift_getKeyPath();

  sub_10007AF3C();

  if (*(*(v0 + 16) + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12OptionsModel_allowAccessRequestsSPIOverride) == 2)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_10007AF3C();
  }

  v1 = 0x10000000000;
  if (!v4)
  {
    v1 = 0;
  }

  v2 = 0x1000000000000;
  if (!v4)
  {
    v2 = 0;
  }

  return v4 | (v4 << 8) | (v4 << 16) | (v4 << 24) | (v4 << 32) | v1 | v2;
}

BOOL sub_100069444(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 > 3)
  {
    if (v2 != 4)
    {
      if (v2 == 5)
      {
        return v3 == 5;
      }

LABEL_10:
      if ((v3 - 2) >= 4u)
      {
        return (v3 ^ v2 ^ 1) & 1;
      }

      return 0;
    }

    if (v3 == 4)
    {
      return 1;
    }
  }

  else
  {
    if (v2 != 2)
    {
      if (v2 == 3)
      {
        return v3 == 3;
      }

      goto LABEL_10;
    }

    if (v3 == 2)
    {
      return 1;
    }
  }

  return 0;
}

unint64_t sub_1000694D8()
{
  result = qword_10009F420;
  if (!qword_10009F420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009F420);
  }

  return result;
}

unint64_t sub_100069530()
{
  result = qword_10009F428;
  if (!qword_10009F428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009F428);
  }

  return result;
}

unint64_t sub_100069588()
{
  result = qword_10009F430;
  if (!qword_10009F430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009F430);
  }

  return result;
}

unint64_t sub_1000695E0()
{
  result = qword_10009F438;
  if (!qword_10009F438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009F438);
  }

  return result;
}

unint64_t sub_100069638()
{
  result = qword_10009F440;
  if (!qword_10009F440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009F440);
  }

  return result;
}

uint64_t sub_1000696B4@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10007AF3C();

  *a2 = v4;
  return result;
}

uint64_t sub_100069734(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_10007AF4C();
}

void sub_100069A30()
{
  v1 = *(v0 + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants38CSAddParticipantsServiceViewController_addressingViewFactory);
  if (v1)
  {
    v2 = *(v0 + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants38CSAddParticipantsServiceViewController_addressingViewModel);
    if (v2)
    {
      v3 = v2;
      v126 = v1;
      v4 = [v3 supplementaryText];
      if (!v4)
      {
        goto LABEL_51;
      }

      v5 = v4;
      v6 = sub_10007B19C();
      v8 = v7;

      if (!v8)
      {
        goto LABEL_51;
      }

      v8, v9, v10, v11, v12, v13, v14, v15;
      v16 = v6 & 0xFFFFFFFFFFFFLL;
      if ((v8 & 0x2000000000000000) != 0)
      {
        v16 = (v8 >> 56) & 0xF;
      }

      if (v16)
      {
        v17 = [v3 supplementaryText];
        if (v17)
        {
          v18 = v17;
          sub_10007B19C();
          v125 = v19;
        }

        else
        {
          v125 = 0;
        }
      }

      else
      {
LABEL_51:
        if (*(v0 + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants38CSAddParticipantsServiceViewController_sharedItemTitle + 8))
        {
          v20 = *(v0 + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants38CSAddParticipantsServiceViewController_sharedItemTitle);
          v21 = *(v0 + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants38CSAddParticipantsServiceViewController_sharedItemTitle + 8);
        }

        else
        {
          v20 = 0;
          v21 = 0xE000000000000000;
        }

        sub_10006DD24(v20, v21);
        v125 = v22;
        v21, v22, v23, v24, v25, v26, v27, v28;
      }

      v29 = [v3 userInfoText];
      if (!v29)
      {
        goto LABEL_52;
      }

      v30 = v29;
      v31 = sub_10007B19C();
      v33 = v32;

      if (!v33)
      {
        goto LABEL_52;
      }

      v33, v34, v35, v36, v37, v38, v39, v40;
      v41 = v31 & 0xFFFFFFFFFFFFLL;
      if ((v33 & 0x2000000000000000) != 0)
      {
        v41 = (v33 >> 56) & 0xF;
      }

      if (v41)
      {
        v42 = [v3 userInfoText];
        if (v42)
        {
          v43 = v42;
          sub_10007B19C();
          v124 = v44;
        }

        else
        {
          v124 = 0;
        }
      }

      else
      {
LABEL_52:
        if (*(v0 + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants38CSAddParticipantsServiceViewController_userName + 8))
        {
          v45 = *(v0 + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants38CSAddParticipantsServiceViewController_userName);
          v46 = *(v0 + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants38CSAddParticipantsServiceViewController_userName + 8);
        }

        else
        {
          v45 = 0;
          v46 = 0xE000000000000000;
        }

        if (*(v0 + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants38CSAddParticipantsServiceViewController_userEmail + 8))
        {
          v47 = *(v0 + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants38CSAddParticipantsServiceViewController_userEmail);
          v48 = *(v0 + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants38CSAddParticipantsServiceViewController_userEmail + 8);
        }

        else
        {
          v47 = 0;
          v48 = 0xE000000000000000;
        }

        sub_10006DED4(v45, v46, v47, v48);
        v124 = v49;
        v48, v49, v50, v51, v52, v53, v54, v55;
        v46, v56, v57, v58, v59, v60, v61, v62;
      }

      v63 = [v3 headerImageData];
      if (v63)
      {
        v64 = v63;
        v65 = sub_10007AC7C();
        v122 = v66;
        v123 = v65;
      }

      else
      {
        v122 = 0xF000000000000000;
        v123 = 0;
      }

      v67 = [v3 headerTitle];
      if (v67)
      {
        v68 = v67;
        sub_10007B19C();
        v70 = v69;
      }

      else
      {
        v70 = 0;
      }

      if (*(v0 + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants38CSAddParticipantsServiceViewController_isLoading) == 1)
      {
        v71 = *(v0 + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants38CSAddParticipantsServiceViewController_loadingText + 8);
      }

      else
      {
        v71 = 0;
      }

      v72 = [v3 primaryButtonText];
      if (v72)
      {
        v73 = v72;
        sub_10007B19C();
        v75 = v74;
      }

      else
      {
        v75 = 0;
      }

      v76 = [v3 secondaryButtonText];
      if (v76)
      {
        v77 = v76;
        sub_10007B19C();
        v79 = v78;
      }

      else
      {
        v79 = 0;
      }

      sub_10007ACEC();

      v79, v80, v81, v82, v83, v84, v85, v86;
      v75, v87, v88, v89, v90, v91, v92, v93;
      v124, v94, v95, v96, v97, v98, v99, v100;
      v125, v101, v102, v103, v104, v105, v106, v107;
      v71, v108, v109, v110, v111, v112, v113, v114;
      v70, v115, v116, v117, v118, v119, v120, v121;

      sub_10006E23C(v123, v122);
    }
  }
}

id sub_100069E44(uint64_t a1, _TtC40com_apple_CloudSharingUI_AddParticipants15InitiateSharing *a2, void *a3)
{
  *&v3[OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants38CSAddParticipantsServiceViewController_share] = 0;
  *&v3[OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants38CSAddParticipantsServiceViewController_collaborationOptionsGroups] = _swiftEmptyArrayStorage;
  *&v3[OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants38CSAddParticipantsServiceViewController_addressingViewFactory] = 0;
  *&v3[OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants38CSAddParticipantsServiceViewController_addressingViewModel] = 0;
  *&v3[OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants38CSAddParticipantsServiceViewController_sandboxingURLWrapper] = 0;
  *&v3[OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants38CSAddParticipantsServiceViewController_containerSetupInfo] = 0;
  v3[OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants38CSAddParticipantsServiceViewController_isLoading] = 0;
  v5 = &v3[OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants38CSAddParticipantsServiceViewController_userName];
  *v5 = 0;
  v5[1] = 0;
  v6 = &v3[OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants38CSAddParticipantsServiceViewController_userEmail];
  *v6 = 0;
  v6[1] = 0;
  v7 = &v3[OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants38CSAddParticipantsServiceViewController_sharedItemTitle];
  *v7 = 0;
  v7[1] = 0;
  v8 = &v3[OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants38CSAddParticipantsServiceViewController_loadingText];
  *v8 = 0;
  v8[1] = 0;
  if (a2)
  {
    v10 = sub_10007B15C();
    a2, v11, v12, v13, v14, v15, v16, v17;
  }

  else
  {
    v10 = 0;
  }

  v20.receiver = v3;
  v20.super_class = type metadata accessor for CSAddParticipantsServiceViewController();
  v18 = objc_msgSendSuper2(&v20, "initWithNibName:bundle:", v10, a3);

  return v18;
}

id sub_100069FC0(void *a1)
{
  *&v1[OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants38CSAddParticipantsServiceViewController_share] = 0;
  *&v1[OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants38CSAddParticipantsServiceViewController_collaborationOptionsGroups] = _swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants38CSAddParticipantsServiceViewController_addressingViewFactory] = 0;
  *&v1[OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants38CSAddParticipantsServiceViewController_addressingViewModel] = 0;
  *&v1[OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants38CSAddParticipantsServiceViewController_sandboxingURLWrapper] = 0;
  *&v1[OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants38CSAddParticipantsServiceViewController_containerSetupInfo] = 0;
  v1[OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants38CSAddParticipantsServiceViewController_isLoading] = 0;
  v3 = &v1[OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants38CSAddParticipantsServiceViewController_userName];
  *v3 = 0;
  v3[1] = 0;
  v4 = &v1[OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants38CSAddParticipantsServiceViewController_userEmail];
  *v4 = 0;
  v4[1] = 0;
  v5 = &v1[OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants38CSAddParticipantsServiceViewController_sharedItemTitle];
  *v5 = 0;
  v5[1] = 0;
  v6 = &v1[OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants38CSAddParticipantsServiceViewController_loadingText];
  v7 = type metadata accessor for CSAddParticipantsServiceViewController();
  *v6 = 0;
  v6[1] = 0;
  v10.receiver = v1;
  v10.super_class = v7;
  v8 = objc_msgSendSuper2(&v10, "initWithCoder:", a1);

  if (v8)
  {
  }

  return v8;
}

id sub_10006A0EC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CSAddParticipantsServiceViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10006A2D4(void *a1)
{
  v2 = v1;
  v3 = *(v1 + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants38CSAddParticipantsServiceViewController_share);
  *(v1 + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants38CSAddParticipantsServiceViewController_share) = a1;
  v4 = a1;

  sub_10007B4EC();
  v6 = v5;
  v7 = sub_10007B50C();
  v6, v8, v9, v10, v11, v12, v13, v14;
  if (v7)
  {
    sub_1000057A0(&unk_10009E7A0, &unk_10007DBA8);
    v22 = swift_dynamicCast();
    v23 = v27;
    v24 = v28;
    if (!v22)
    {
      v23 = 0;
      v24 = 0;
    }
  }

  else
  {
    v23 = 0;
    v24 = 0;
  }

  v25 = (v2 + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants38CSAddParticipantsServiceViewController_sharedItemTitle);
  v26 = *(v2 + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants38CSAddParticipantsServiceViewController_sharedItemTitle + 8);
  *v25 = v23;
  v25[1] = v24;
  v26, v15, v16, v17, v18, v19, v20, v21;
  sub_100069A30();
}

id sub_10006A480(void *a1)
{
  v2 = v1;
  v3 = *&v1[OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants38CSAddParticipantsServiceViewController_addressingViewModel];
  *&v1[OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants38CSAddParticipantsServiceViewController_addressingViewModel] = a1;
  v4 = a1;

  v112 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v111 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = [v4 loadingText];
  if (!v7)
  {
    goto LABEL_8;
  }

  v8 = v7;
  v9 = sub_10007B19C();
  v11 = v10;

  if (!v11)
  {
    goto LABEL_8;
  }

  v11, v12, v13, v14, v15, v16, v17, v18;
  v19 = v9 & 0xFFFFFFFFFFFFLL;
  if ((v11 & 0x2000000000000000) != 0)
  {
    v19 = (v11 >> 56) & 0xF;
  }

  if (!v19)
  {
LABEL_8:
    v28 = [objc_opt_self() mainBundle];
    v103._countAndFlagsBits = 0x8000000100083580;
    v114._countAndFlagsBits = 0x6E69726170657250;
    v114._object = 0xAC000000A680E267;
    v115.value._countAndFlagsBits = 0;
    v115.value._object = 0;
    v31.super.isa = v28;
    v116._countAndFlagsBits = 0;
    v116._object = 0xE000000000000000;
    v29 = sub_10007AA5C(v114, v115, v31, v116, 0xD00000000000004CLL, v103);
    goto LABEL_9;
  }

  v20 = [v4 loadingText];
  if (v20)
  {
    v28 = v20;
    v29 = sub_10007B19C();
LABEL_9:
    v32 = v29;
    v33 = v30;

    goto LABEL_10;
  }

  v32 = 0;
  v33 = 0;
LABEL_10:
  v34 = &v2[OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants38CSAddParticipantsServiceViewController_loadingText];
  v35 = *&v2[OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants38CSAddParticipantsServiceViewController_loadingText + 8];
  *v34 = v32;
  v34[1] = v33;
  v35, v21, v22, v23, v24, v25, v26, v27;
  v36 = [v4 headerImageData];
  if (v36)
  {
    v37 = v36;
    sub_10007AC7C();
  }

  v38 = [v4 headerTitle];
  if (v38)
  {
    v39 = v38;
    sub_10007B19C();
  }

  v40 = [v4 supplementaryText];
  if (v40)
  {
    v41 = v40;
    sub_10007B19C();
  }

  v110 = v5;
  v42 = [v4 userInfoText];
  if (v42)
  {
    v43 = v42;
    v44 = sub_10007B19C();
    v108 = v45;
    v109 = v44;
  }

  else
  {
    v108 = 0;
    v109 = 0;
  }

  v46 = [v4 primaryButtonText];
  if (v46)
  {
    v47 = v46;
    v107 = sub_10007B19C();
    v49 = v48;
  }

  else
  {
    v107 = 0;
    v49 = 0;
  }

  v50 = [v4 secondaryButtonText];
  if (v50)
  {
    v51 = v50;
    v52 = sub_10007B19C();
    v54 = v53;
  }

  else
  {
    v52 = 0;
    v54 = 0;
  }

  v55 = *&v2[OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants38CSAddParticipantsServiceViewController_collaborationOptionsGroups];

  v57 = sub_100004C74(v56);
  v55, v58, v59, v60, v61, v62, v63, v64;
  objc_allocWithZone(sub_10007ACFC());

  v105 = v52;
  v104 = v49;
  v65 = sub_10007ACDC();
  v66 = *&v2[OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants38CSAddParticipantsServiceViewController_addressingViewFactory];
  *&v2[OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants38CSAddParticipantsServiceViewController_addressingViewFactory] = v65;
  v67 = v65;

  if (!v67)
  {
    goto LABEL_38;
  }

  v68 = sub_10007ACCC();

  LOBYTE(v106) = v57 & 1;
  [v2 addChildViewController:{v68, v109, v108, v107, v104, v105, v54, v106, sub_10006E458, v112, sub_10006E460, v111, sub_10006E470, v6, sub_10006E468, v110}];
  result = [v68 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_43;
  }

  v70 = result;
  [result setTranslatesAutoresizingMaskIntoConstraints:0];

  result = [v2 view];
  if (!result)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v71 = result;
  result = [v68 view];
  if (!result)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v72 = result;
  [v71 addSubview:result];

  sub_1000057A0(&qword_10009E290, &qword_10007CFD0);
  v73 = swift_allocObject();
  *(v73 + 16) = xmmword_10007FC20;
  result = [v2 view];
  if (!result)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v74 = result;
  v75 = [result leadingAnchor];

  result = [v68 view];
  if (!result)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v76 = result;
  v77 = [result leadingAnchor];

  v78 = [v75 constraintEqualToAnchor:v77];
  *(v73 + 32) = v78;
  result = [v2 view];
  if (!result)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v79 = result;
  v80 = [result trailingAnchor];

  result = [v68 view];
  if (!result)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v81 = result;
  v82 = [result trailingAnchor];

  v83 = [v80 constraintEqualToAnchor:v82];
  *(v73 + 40) = v83;
  result = [v2 view];
  if (!result)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v84 = result;
  v85 = [result topAnchor];

  result = [v68 view];
  if (!result)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v86 = result;
  v87 = [result topAnchor];

  v88 = [v85 constraintEqualToAnchor:v87];
  *(v73 + 48) = v88;
  result = [v2 view];
  if (!result)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v89 = result;
  v90 = [result bottomAnchor];

  result = [v68 view];
  if (!result)
  {
LABEL_52:
    __break(1u);
    return result;
  }

  v91 = result;
  v92 = objc_opt_self();
  v93 = [v91 bottomAnchor];

  v94 = [v90 constraintEqualToAnchor:v93];
  *(v73 + 56) = v94;
  sub_100005C8C(0, &qword_10009F550, NSLayoutConstraint_ptr);
  isa = sub_10007B29C().super.isa;
  v73, v96, v97, v98, v99, v100, v101, v102;
  [v92 activateConstraints:isa];

LABEL_38:
}

void sub_10006ACD8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_10006AD34(a1);
  }
}

uint64_t sub_10006AD34(uint64_t a1)
{
  v2 = v1;
  v147 = a1;
  v3 = sub_1000057A0(&unk_10009ED10, &qword_10007D310);
  __chkstk_darwin(v3 - 8);
  v144 = &v131 - v4;
  v141 = sub_10007AC4C();
  v139 = *(v141 - 8);
  v5 = *(v139 + 64);
  v6 = __chkstk_darwin(v141);
  v140 = &v131 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v6);
  v9 = &v131 - v8;
  __chkstk_darwin(v7);
  v142 = &v131 - v10;
  v11 = sub_1000057A0(&qword_10009F370, &qword_10007FC90);
  __chkstk_darwin(v11 - 8);
  v150 = &v131 - v12;
  v13 = sub_10007AE2C();
  v148 = *(v13 - 8);
  v149 = v13;
  v14 = __chkstk_darwin(v13);
  v16 = &v131 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14);
  v19 = &v131 - v18;
  __chkstk_darwin(v17);
  v21 = &v131 - v20;
  v22 = v1[OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants38CSAddParticipantsServiceViewController_isLoading];
  v1[OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants38CSAddParticipantsServiceViewController_isLoading] = 1;
  if ((v22 & 1) == 0)
  {
    sub_100069A30();
  }

  v23 = OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants38CSAddParticipantsServiceViewController_collaborationOptionsGroups;
  v24 = *&v1[OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants38CSAddParticipantsServiceViewController_collaborationOptionsGroups];
  sub_100005C8C(0, &unk_10009F560, _SWCollaborationOptionsGroup_ptr);

  isa = sub_10007B29C().super.isa;
  v24, v26, v27, v28, v29, v30, v31, v32;
  v146 = CKSharingAccessTypeFromOptionsGroups();

  v33 = *&v2[v23];

  v34 = sub_10007B29C().super.isa;
  v33, v35, v36, v37, v38, v39, v40, v41;
  v145 = CKSharingPermissionTypeFromOptionsGroups();

  v42 = *&v2[v23];

  v43 = sub_10007B29C().super.isa;
  v42, v44, v45, v46, v47, v48, v49, v50;
  v51 = CKSharingAllowOthersToInviteFromOptionsGroups();

  v52 = *&v2[v23];

  v54 = sub_100004C74(v53);
  v52, v55, v56, v57, v58, v59, v60, v61;
  v62 = *&v2[OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants38CSAddParticipantsServiceViewController_share];
  if (v62)
  {
    v143 = v54;
    LODWORD(v144) = v51;
    v63 = *&v2[OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants38CSAddParticipantsServiceViewController_containerSetupInfo];
    v64 = swift_allocObject();
    *(v64 + 16) = v2;
    v65 = v63;
    v66 = v2;
    v67 = v62;
    sub_10007AE0C();
    v68 = v67;
    v69 = sub_10007AE1C();
    v70 = sub_10007B41C();

    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      *v71 = 138412290;
      *(v71 + 4) = v68;
      *v72 = v62;
      v73 = v68;
      _os_log_impl(&_mh_execute_header, v69, v70, "Begin addToCloudKitSharing share: %@", v71, 0xCu);
      sub_100008824(v72, &qword_10009F570, &qword_10007DAF0);
    }

    (*(v148 + 8))(v21, v149);
    v74 = sub_10007B35C();
    v75 = v150;
    (*(*(v74 - 8) + 56))(v150, 1, 1, v74);
    sub_10007B32C();
    v76 = v68;
    v77 = v65;

    v78 = v147;

    v79 = sub_10007B31C();
    v80 = swift_allocObject();
    *(v80 + 16) = v79;
    *(v80 + 24) = &protocol witness table for MainActor;
    *(v80 + 32) = v76;
    *(v80 + 40) = v63;
    *(v80 + 48) = sub_10006E738;
    *(v80 + 56) = v64;
    v81 = v145;
    v82 = v146;
    *(v80 + 64) = v78;
    *(v80 + 72) = v82;
    *(v80 + 80) = v81;
    LOBYTE(v81) = v143;
    *(v80 + 88) = v144;
    *(v80 + 89) = v81 & 1;
    sub_10004C328(0, 0, v75, &unk_10007FCE8, v80);
  }

  else
  {
    v84 = *&v2[OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants38CSAddParticipantsServiceViewController_sandboxingURLWrapper];
    if (v84)
    {
      v143 = v54;
      LODWORD(v144) = v51;
      v138 = v84;
      v85 = [v138 url];
      v86 = v142;
      sub_10007AC1C();

      v137 = swift_allocObject();
      *(v137 + 16) = v2;
      v87 = v2;
      sub_10007AE0C();
      v88 = v139;
      v89 = v139 + 16;
      v90 = *(v139 + 16);
      v91 = v141;
      v90(v9, v86, v141);
      v92 = sub_10007AE1C();
      v93 = sub_10007B41C();
      if (os_log_type_enabled(v92, v93))
      {
        v94 = swift_slowAlloc();
        v133 = v90;
        v95 = v94;
        v132 = swift_slowAlloc();
        v151 = v132;
        *v95 = 136315138;
        sub_10002169C();
        v96 = sub_10007B69C();
        v134 = v89;
        v98 = v97;
        v99 = *(v88 + 8);
        v135 = (v88 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v136 = v99;
        v99(v9, v91);
        v100 = sub_100037C08(v96, v98, &v151);
        v98, v101, v102, v103, v104, v105, v106, v107;
        *(v95 + 4) = v100;
        _os_log_impl(&_mh_execute_header, v92, v93, "Begin startFileSharing fileURL: %s", v95, 0xCu);
        sub_10000585C(v132);

        v90 = v133;
      }

      else
      {

        v116 = *(v88 + 8);
        v135 = (v88 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v136 = v116;
        v116(v9, v91);
      }

      (*(v148 + 8))(v19, v149);
      v117 = sub_10007B35C();
      (*(*(v117 - 8) + 56))(v150, 1, 1, v117);
      v90(v140, v142, v91);
      sub_10007B32C();
      v118 = v147;

      v119 = v137;

      v120 = sub_10007B31C();
      v121 = (*(v88 + 80) + 32) & ~*(v88 + 80);
      v122 = (v5 + v121 + 7) & 0xFFFFFFFFFFFFFFF8;
      v123 = (v122 + 23) & 0xFFFFFFFFFFFFFFF8;
      v124 = (v123 + 15) & 0xFFFFFFFFFFFFFFF8;
      v125 = swift_allocObject();
      *(v125 + 16) = v120;
      *(v125 + 24) = &protocol witness table for MainActor;
      v126 = v125 + v121;
      v127 = v141;
      (*(v88 + 32))(v126, v140, v141);
      v128 = (v125 + v122);
      *v128 = sub_10006E478;
      v128[1] = v119;
      *(v125 + v123) = v118;
      v129 = v145;
      *(v125 + v124) = v146;
      v130 = v125 + ((v124 + 15) & 0xFFFFFFFFFFFFFFF8);
      *v130 = v129;
      LOBYTE(v129) = v143;
      *(v130 + 8) = v144;
      *(v130 + 9) = v129 & 1;
      sub_10004C328(0, 0, v150, &unk_10007FCE0, v125);

      return v136(v142, v127);
    }

    else
    {
      sub_10007AE0C();
      v108 = sub_10007AE1C();
      v109 = sub_10007B3FC();
      v110 = os_log_type_enabled(v108, v109);
      v111 = v141;
      v112 = v139;
      if (v110)
      {
        v113 = swift_slowAlloc();
        *v113 = 0;
        _os_log_impl(&_mh_execute_header, v108, v109, "Error: both share and sandboxingURLWrapper are nil", v113, 2u);
      }

      (*(v148 + 8))(v16, v149);
      v114 = v144;
      (*(v112 + 56))(v144, 1, 1, v111);
      v115 = [objc_allocWithZone(NSError) initWithDomain:CKErrorDomain code:12 userInfo:0];
      sub_10006C6E8(v114, 0, v115);

      return sub_100008824(v114, &unk_10009ED10, &qword_10007D310);
    }
  }
}

id sub_10006B76C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    result = [result _remoteViewControllerProxy];
    if (result)
    {
      sub_10007B56C();
      swift_unknownObjectRelease();
      sub_1000285C4(&v5, &v6);
      sub_1000057A0(&qword_10009F558, &qword_10007FCD8);
      swift_dynamicCast();
      sub_10006D138(v4);

      return swift_unknownObjectRelease();
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

id sub_10006B888(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    result = [result _remoteViewControllerProxy];
    if (result)
    {
      sub_10007B56C();
      swift_unknownObjectRelease();
      sub_1000285C4(&v5, &v6);
      sub_1000057A0(&qword_10009F558, &qword_10007FCD8);
      swift_dynamicCast();
      sub_10006D294(v4, 0.0, 0.0, 0.0, 0.0);

      return swift_unknownObjectRelease();
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_10006B9D4(void *a1)
{
  v2 = v1;
  v4 = sub_1000057A0(&unk_10009ED10, &qword_10007D310);
  __chkstk_darwin(v4 - 8);
  v6 = &v30 - v5;
  v7 = sub_10007AC4C();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *&v2[OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants38CSAddParticipantsServiceViewController_sandboxingURLWrapper];
  *&v2[OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants38CSAddParticipantsServiceViewController_sandboxingURLWrapper] = a1;
  v12 = a1;

  v13 = [v12 url];
  sub_10007AC1C();

  v14 = sub_10007ABCC();
  v16 = v15;
  (*(v8 + 8))(v10, v7);
  v17 = &v2[OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants38CSAddParticipantsServiceViewController_sharedItemTitle];
  v18 = *&v2[OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants38CSAddParticipantsServiceViewController_sharedItemTitle + 8];
  *v17 = v14;
  v17[1] = v16;
  v18, v19, v20, v21, v22, v23, v24, v25;
  sub_100069A30();
  v26 = [v12 url];
  sub_10007AC1C();

  (*(v8 + 56))(v6, 0, 1, v7);
  v27 = swift_allocObject();
  *(v27 + 16) = v2;
  v28 = v2;
  sub_100018054(v6, 0, sub_10006E2A4, v27);

  return sub_100008824(v6, &unk_10009ED10, &qword_10007D310);
}

uint64_t sub_10006BC18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a8;
  v8[7] = v13;
  v8[4] = a6;
  v8[5] = a7;
  v8[2] = a4;
  v8[3] = a5;
  sub_10007B32C();
  v8[8] = sub_10007B31C();
  v10 = sub_10007B2EC();

  return _swift_task_switch(sub_10006ECD0, v10, v9);
}

void sub_10006BCC0(uint64_t a1, _TtC40com_apple_CloudSharingUI_AddParticipants15InitiateSharing *a2, uint64_t a3, _TtC40com_apple_CloudSharingUI_AddParticipants15InitiateSharing *a4, uint64_t a5)
{
  v117 = a3;
  v9 = sub_10007AE2C();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v109 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v109 - v14;
  sub_10007AE0C();

  swift_errorRetain();

  v16 = sub_10007AE1C();
  v17 = sub_10007B41C();
  a2, v18, v19, v20, v21, v22, v23, v24;

  a4, v25, v26, v27, v28, v29, v30, v31;
  v115 = v17;
  v32 = os_log_type_enabled(v16, v17);
  v114 = a1;
  if (v32)
  {
    v33 = swift_slowAlloc();
    v112 = v9;
    v34 = v33;
    v109 = swift_slowAlloc();
    v119 = a2;
    v120 = v109;
    *v34 = 136315650;
    v118 = a1;

    sub_1000057A0(&qword_10009ED20, &qword_10007CF90);
    v116 = v10;
    v35 = sub_10007B1AC();
    v111 = v13;
    v37 = v36;
    v38 = sub_100037C08(v35, v36, &v120);
    v110 = a4;
    v39 = v38;
    v37, v40, v41, v42, v43, v44, v45, v46;
    *(v34 + 4) = v39;
    *(v34 + 12) = 2080;
    v118 = a5;
    swift_errorRetain();
    sub_1000057A0(&qword_10009F530, &qword_10007FCA8);
    v47 = sub_10007B1AC();
    v49 = v48;
    v50 = sub_100037C08(v47, v48, &v120);
    v49, v51, v52, v53, v54, v55, v56, v57;
    *(v34 + 14) = v50;
    v58 = v117;
    a4 = v110;
    *(v34 + 22) = 2080;
    v118 = v58;
    v119 = a4;

    v59 = sub_10007B1AC();
    v61 = v60;
    v62 = sub_100037C08(v59, v60, &v120);
    v63 = v61;
    v10 = v116;
    v63, v64, v65, v66, v67, v68, v69, v70;
    *(v34 + 24) = v62;
    v13 = v111;
    _os_log_impl(&_mh_execute_header, v16, v115, "replyFromUserAndItemInfo name: %s, error: %s, email: %s", v34, 0x20u);
    swift_arrayDestroy();

    v9 = v112;
  }

  v71 = *(v10 + 8);
  v71(v15, v9);
  if (a5)
  {
    swift_errorRetain();
    sub_10007AE0C();
    swift_errorRetain();
    v79 = sub_10007AE1C();
    v80 = sub_10007B3FC();

    if (os_log_type_enabled(v79, v80))
    {
      v81 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      v116 = v10;
      v83 = v82;
      v118 = v82;
      *v81 = 136315138;
      v120 = a5;
      swift_errorRetain();
      sub_1000057A0(&qword_10009E7B0, &qword_10007CFC0);
      v84 = sub_10007B1AC();
      v85 = v13;
      v87 = v86;
      v88 = sub_100037C08(v84, v86, &v118);
      v87, v89, v90, v91, v92, v93, v94, v95;
      *(v81 + 4) = v88;
      _os_log_impl(&_mh_execute_header, v79, v80, "Error from replyFromUserAndItemInfo: %s", v81, 0xCu);
      sub_10000585C(v83);

      v96 = v85;
    }

    else
    {

      v96 = v13;
    }

    v71(v96, v9);
  }

  else
  {
    v97 = v113;
    v98 = (v113 + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants38CSAddParticipantsServiceViewController_userName);
    v99 = *(v113 + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants38CSAddParticipantsServiceViewController_userName + 8);
    *v98 = v114;
    v98[1] = a2;
    v99, v72, v73, v74, v75, v76, v77, v78;
    v100 = (v97 + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants38CSAddParticipantsServiceViewController_userEmail);
    v101 = *(v97 + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants38CSAddParticipantsServiceViewController_userEmail + 8);
    *v100 = v117;
    v100[1] = a4;

    v101, v102, v103, v104, v105, v106, v107, v108;

    sub_100069A30();
  }
}

uint64_t sub_10006C1D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v23 = a8;
  v14 = sub_1000057A0(&qword_10009F370, &qword_10007FC90);
  __chkstk_darwin(v14 - 8);
  v16 = &v22 - v15;
  v17 = sub_10007B35C();
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  sub_10007B32C();
  v18 = a6;

  swift_errorRetain();
  v19 = sub_10007B31C();
  v20 = swift_allocObject();
  v20[2] = v19;
  v20[3] = &protocol witness table for MainActor;
  v20[4] = v18;
  v20[5] = a1;
  v20[6] = a2;
  v20[7] = a3;
  v20[8] = a4;
  v20[9] = a5;
  sub_10000DAD0(0, 0, v16, v23, v20);
}

uint64_t sub_10006C33C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a8;
  v8[7] = v13;
  v8[4] = a6;
  v8[5] = a7;
  v8[2] = a4;
  v8[3] = a5;
  sub_10007B32C();
  v8[8] = sub_10007B31C();
  v10 = sub_10007B2EC();

  return _swift_task_switch(sub_10006C3E4, v10, v9);
}

uint64_t sub_10006C3E4()
{
  v1 = v0[7];
  v3 = v0[5];
  v2 = v0[6];
  v5 = v0[3];
  v4 = v0[4];

  sub_10006BCC0(v5, v4, v3, v2, v1);
  v6 = v0[1];

  return v6();
}

uint64_t sub_10006C5DC()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10006C64C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  sub_10007B32C();
  v7[6] = sub_10007B31C();
  v9 = sub_10007B2EC();

  return _swift_task_switch(sub_10006ECD4, v9, v8);
}

uint64_t sub_10006C6E8(uint64_t a1, void *a2, void *a3)
{
  v4 = v3;
  v8 = sub_1000057A0(&unk_10009ED10, &qword_10007D310);
  v9 = __chkstk_darwin(v8);
  v68 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v13 = &v63 - v12;
  __chkstk_darwin(v11);
  v15 = &v63 - v14;
  v65 = sub_10007AE2C();
  v16 = *(v65 - 8);
  __chkstk_darwin(v65);
  v18 = &v63 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10007AE0C();
  v67 = a1;
  sub_1000087B4(a1, v15);
  swift_errorRetain();
  v66 = a2;
  v19 = a2;
  v20 = sub_10007AE1C();
  v21 = sub_10007B41C();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v69 = a3;
    v23 = v22;
    v64 = swift_slowAlloc();
    *&v72[0] = v64;
    *v23 = 136315650;
    sub_1000087B4(v15, v13);
    v24 = sub_10007B1AC();
    v26 = v25;
    sub_100008824(v15, &unk_10009ED10, &qword_10007D310);
    v27 = sub_100037C08(v24, v26, v72);
    v26, v28, v29, v30, v31, v32, v33, v34;
    *(v23 + 4) = v27;
    *(v23 + 12) = 2080;
    *&v71 = v69;
    swift_errorRetain();
    sub_1000057A0(&qword_10009F530, &qword_10007FCA8);
    v35 = sub_10007B1AC();
    v37 = v36;
    v38 = sub_100037C08(v35, v36, v72);
    v37, v39, v40, v41, v42, v43, v44, v45;
    *(v23 + 14) = v38;
    *(v23 + 22) = 2080;
    v46 = v66;
    *&v71 = v66;
    v47 = v19;
    sub_1000057A0(&qword_10009E4E0, "̇");
    v48 = sub_10007B1AC();
    v50 = v49;
    v51 = sub_100037C08(v48, v49, v72);
    v50, v52, v53, v54, v55, v56, v57, v58;
    *(v23 + 24) = v51;
    _os_log_impl(&_mh_execute_header, v20, v21, "replyFromSharing shareURL: %s, error: %s, share: %s", v23, 0x20u);
    swift_arrayDestroy();

    a3 = v69;

    (*(v16 + 8))(v18, v65);
    v59 = v46;
  }

  else
  {

    sub_100008824(v15, &unk_10009ED10, &qword_10007D310);
    (*(v16 + 8))(v18, v65);
    v59 = v66;
  }

  v60 = v4[OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants38CSAddParticipantsServiceViewController_isLoading];
  v4[OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants38CSAddParticipantsServiceViewController_isLoading] = 0;
  if (v60 == 1)
  {
    sub_100069A30();
  }

  v61 = v68;
  sub_1000087B4(v67, v68);
  if ([v4 _remoteViewControllerProxy])
  {
    sub_10007B56C();
    swift_unknownObjectRelease();
    sub_1000285C4(&v71, v72);
    sub_1000057A0(&qword_10009F558, &qword_10007FCD8);
    swift_dynamicCast();
    sub_10006CEB0(v70, a3, v61, v59);
    swift_unknownObjectRelease();
    return sub_100008824(v61, &unk_10009ED10, &qword_10007D310);
  }

  else
  {
    result = sub_100008824(v61, &unk_10009ED10, &qword_10007D310);
    __break(1u);
  }

  return result;
}

uint64_t sub_10006CB84(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v27 = a6;
  v10 = sub_1000057A0(&unk_10009ED10, &qword_10007D310);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10 - 8);
  v14 = &v26 - v13;
  v15 = sub_1000057A0(&qword_10009F370, &qword_10007FC90);
  __chkstk_darwin(v15 - 8);
  v17 = &v26 - v16;
  v18 = sub_10007B35C();
  (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
  sub_1000087B4(a1, v14);
  sub_10007B32C();
  v19 = a4;
  v20 = a2;
  swift_errorRetain();
  v21 = sub_10007B31C();
  v22 = (*(v11 + 80) + 40) & ~*(v11 + 80);
  v23 = (v12 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  v24[2] = v21;
  v24[3] = &protocol witness table for MainActor;
  v24[4] = v19;
  sub_100018608(v14, v24 + v22);
  *(v24 + v23) = a2;
  *(v24 + ((v23 + 15) & 0xFFFFFFFFFFFFFFF8)) = a3;
  sub_10000DAD0(0, 0, v17, v27, v24);
}

uint64_t sub_10006CD94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  sub_10007B32C();
  v7[6] = sub_10007B31C();
  v9 = sub_10007B2EC();

  return _swift_task_switch(sub_10006CE30, v9, v8);
}

uint64_t sub_10006CE30()
{
  v1 = v0[5];
  v3 = v0[3];
  v2 = v0[4];

  sub_10006C6E8(v3, v2, v1);
  v4 = v0[1];

  return v4();
}

void sub_10006CEB0(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1000057A0(&unk_10009ED10, &qword_10007D310);
  __chkstk_darwin(v8 - 8);
  v10 = &v23 - v9;
  v11 = sub_10007AE2C();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10007AE0C();
  v15 = sub_10007AE1C();
  v16 = sub_10007B41C();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v24 = a2;
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "Add Participants service dismissing after sharing", v17, 2u);
    a2 = v24;
  }

  (*(v12 + 8))(v14, v11);
  if (a2)
  {
    a2 = sub_10007AB7C();
  }

  sub_1000087B4(a3, v10);
  v18 = sub_10007AC4C();
  v19 = *(v18 - 8);
  v21 = 0;
  if ((*(v19 + 48))(v10, 1, v18) != 1)
  {
    sub_10007ABFC(v20);
    v21 = v22;
    (*(v19 + 8))(v10, v18);
  }

  [a1 dismissViewControllerWithError:a2 shareURL:v21 ckShare:a4];
}

id sub_10006D138(void *a1)
{
  v2 = sub_10007AE2C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10007AE0C();
  v6 = sub_10007AE1C();
  v7 = sub_10007B41C();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Add Participants service cancelled--dismissing", v8, 2u);
  }

  (*(v3 + 8))(v5, v2);
  return [a1 dismissViewControllerWithError:0 shareURL:0 ckShare:0];
}

void sub_10006D294(void *a1, double a2, double a3, double a4, double a5)
{
  v10 = sub_10007AE2C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10007AE0C();
  v14 = sub_10007AE1C();
  v15 = sub_10007B41C();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "User did tap showContactPicker", v16, 2u);
  }

  (*(v11 + 8))(v13, v10);
  v17 = [objc_opt_self() valueWithCGRect:{a2, a3, a4, a5}];
  [a1 showContactPickerFromSourceRect:v17];
}

uint64_t sub_10006D444(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_10000DACC;

  return sub_10006C33C(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_10006D530()
{
  [objc_opt_self() interfaceWithProtocol:&OBJC_PROTOCOL___CSAddParticipantsViewControllerService];
  sub_1000057A0(&unk_10009F578, &qword_10007FD20);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_10007CF20;
  v1 = sub_100005C8C(0, &qword_10009F3E0, CKShare_ptr);
  *(v0 + 56) = sub_1000057A0(&qword_10009F588, &qword_10007FD28);
  *(v0 + 32) = v1;
  v2 = objc_allocWithZone(NSSet);
  isa = sub_10007B29C().super.isa;
  v0, v4, v5, v6, v7, v8, v9, v10;
  [v2 initWithArray:isa];

  result = sub_10007B39C();
  __break(1u);
  __break(1u);
  __break(1u);
  __break(1u);
  __break(1u);
  __break(1u);
  __break(1u);
  return result;
}

uint64_t sub_10006DD24(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v5 = [objc_opt_self() mainBundle];
  if (v4)
  {
    v27._countAndFlagsBits = 0x80000001000834B0;
    v28._object = 0x8000000100083450;
    v28._countAndFlagsBits = 0x1000000000000050;
    v30.value._countAndFlagsBits = 0;
    v30.value._object = 0;
    v6.super.isa = v5;
    v32._countAndFlagsBits = 0;
    v32._object = 0xE000000000000000;
    sub_10007AA5C(v28, v30, v6, v32, 0xD000000000000027, v27);
    v8 = v7;

    sub_1000057A0(&qword_10009F538, &qword_10007FCB0);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_10007CF20;
    *(v9 + 56) = &type metadata for String;
    *(v9 + 64) = sub_10006E250();
    *(v9 + 32) = a1;
    *(v9 + 40) = a2;

    v10 = sub_10007B16C();
    v8, v11, v12, v13, v14, v15, v16, v17;
    v9, v18, v19, v20, v21, v22, v23, v24;
  }

  else
  {
    v27._countAndFlagsBits = 0x8000000100083540;
    v29._countAndFlagsBits = 0x1000000000000051;
    v29._object = 0x80000001000834E0;
    v31.value._countAndFlagsBits = 0;
    v31.value._object = 0;
    v25.super.isa = v5;
    v33._countAndFlagsBits = 0;
    v33._object = 0xE000000000000000;
    v10 = sub_10007AA5C(v29, v31, v25, v33, 0xD000000000000031, v27);
  }

  return v10;
}

uint64_t sub_10006DED4(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = sub_10007AE2C();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v12 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v12)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v13 = HIBYTE(a4) & 0xF;
    }

    else
    {
      v13 = a3 & 0xFFFFFFFFFFFFLL;
    }

    v14 = [objc_opt_self() mainBundle];
    if (v13)
    {
      v43._countAndFlagsBits = 0x80000001000833C0;
      v45._countAndFlagsBits = 0x1000000000000019;
      v45._object = 0x80000001000833A0;
      v47.value._countAndFlagsBits = 0;
      v47.value._object = 0;
      v15.super.isa = v14;
      v49._countAndFlagsBits = 0;
      v49._object = 0xE000000000000000;
      sub_10007AA5C(v45, v47, v15, v49, 0xD00000000000003CLL, v43);
      v17 = v16;

      sub_1000057A0(&qword_10009F538, &qword_10007FCB0);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_10007DE70;
      *(v18 + 56) = &type metadata for String;
      v19 = sub_10006E250();
      *(v18 + 32) = a1;
      *(v18 + 40) = a2;
      *(v18 + 96) = &type metadata for String;
      *(v18 + 104) = v19;
      *(v18 + 64) = v19;
      *(v18 + 72) = a3;
      *(v18 + 80) = a4;

      v27 = sub_10007B16C();
      v28 = v17;
    }

    else
    {
      v43._countAndFlagsBits = 0x8000000100083420;
      v46._object = 0x8000000100083400;
      v46._countAndFlagsBits = 0x1000000000000014;
      v48.value._countAndFlagsBits = 0;
      v48.value._object = 0;
      v32.super.isa = v14;
      v50._countAndFlagsBits = 0;
      v50._object = 0xE000000000000000;
      sub_10007AA5C(v46, v48, v32, v50, 0xD000000000000020, v43);
      v34 = v33;

      sub_1000057A0(&qword_10009F538, &qword_10007FCB0);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_10007CF20;
      *(v18 + 56) = &type metadata for String;
      *(v18 + 64) = sub_10006E250();
      *(v18 + 32) = a1;
      *(v18 + 40) = a2;

      v27 = sub_10007B16C();
      v28 = v34;
    }

    v28, v20, v21, v22, v23, v24, v25, v26;
    v18, v35, v36, v37, v38, v39, v40, v41;
  }

  else
  {
    sub_10007AE0C();
    v29 = sub_10007AE1C();
    v30 = sub_10007B41C();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v29, v30, "userInfoText is missing name", v31, 2u);
    }

    (*(v9 + 8))(v11, v8);
    return 0;
  }

  return v27;
}

uint64_t sub_10006E23C(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_10003846C(result, a2);
  }

  return result;
}

unint64_t sub_10006E250()
{
  result = qword_10009F540;
  if (!qword_10009F540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009F540);
  }

  return result;
}

uint64_t sub_10006E2DC()
{
  swift_unknownObjectRelease();

  *(v0 + 48), v1, v2, v3, v4, v5, v6, v7;
  *(v0 + 64), v8, v9, v10, v11, v12, v13, v14;

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_10006E334(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_10000DACC;

  return sub_10006BC18(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_10006E420()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10006E4B0()
{
  v1 = sub_10007AC4C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  *(v0 + v5), v6, v7, v8, v9, v10, v11, v12;

  return _swift_deallocObject(v0, ((((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 10, v3 | 7);
}

uint64_t sub_10006E5B4(uint64_t a1)
{
  v3 = *(sub_10007AC4C() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v14 = *(v1 + 24);
  v15 = *(v1 + 16);
  v7 = (v1 + v5);
  v8 = *v7;
  v9 = v7[1];
  v10 = *(v1 + v6);
  v11 = *(v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_10000DACC;

  return sub_10001152C(a1, v15, v14, v1 + v4, v8, v9, v10, v11);
}

uint64_t sub_10006E770()
{
  swift_unknownObjectRelease();

  *(v0 + 64), v1, v2, v3, v4, v5, v6, v7;

  return _swift_deallocObject(v0, 90, 7);
}

uint64_t sub_10006E7C8(uint64_t a1)
{
  v13 = v1[2];
  v4 = v1[5];
  v10 = v1[4];
  v11 = v1[3];
  v5 = v1[6];
  v6 = v1[7];
  v7 = v1[8];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000D9D8;

  return sub_10000DDD0(a1, v13, v11, v10, v4, v5, v6, v7);
}

uint64_t sub_10006E8D0(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1000057A0(&unk_10009ED10, &qword_10007D310) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1[4];
  v11 = *(v1 + v7);
  v12 = *(v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_10000DACC;

  return sub_10006C64C(a1, v8, v9, v10, v1 + v6, v11, v12);
}

uint64_t sub_10006EA20()
{
  v1 = *(sub_1000057A0(&unk_10009ED10, &qword_10007D310) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64);
  swift_unknownObjectRelease();

  v5 = sub_10007AC4C();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  v7 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;

  return _swift_deallocObject(v0, v8 + 8, v2 | 7);
}

uint64_t sub_10006EB6C(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1000057A0(&unk_10009ED10, &qword_10007D310) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1[4];
  v11 = *(v1 + v7);
  v12 = *(v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_10000D9D8;

  return sub_10006CD94(a1, v8, v9, v10, v1 + v6, v11, v12);
}

uint64_t getEnumTagSinglePayload for SharingMode(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SharingMode(uint64_t result, unsigned int a2, unsigned int a3)
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

BOOL sub_10006EE98(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_10006EEC8@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_10006EEF4@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void sub_10006EFE0(_TtC40com_apple_CloudSharingUI_AddParticipants15InitiateSharing *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_10006F28C(a1);
  a1, v5, v6, v7, v8, v9, v10, v11;
  *a2 = v4;
}

unint64_t sub_10006F028()
{
  result = qword_10009F600;
  if (!qword_10009F600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009F600);
  }

  return result;
}

unint64_t sub_10006F080()
{
  result = qword_10009F608;
  if (!qword_10009F608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009F608);
  }

  return result;
}

unint64_t sub_10006F0D8()
{
  result = qword_10009F610[0];
  if (!qword_10009F610[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_10009F610);
  }

  return result;
}

uint64_t sub_10006F12C()
{
  v1 = 1701736302;
  v2 = 0x796C6E4F64616572;
  if (*v0 != 2)
  {
    v2 = 0x646578696DLL;
  }

  if (*v0)
  {
    v1 = 0x7469725764616572;
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

uint64_t sub_10006F1A8()
{
  v1 = 0x4D63696C6275702ELL;
  if (*v0 != 1)
  {
    v1 = 0x657461766972702ELL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656E6F6E2ELL;
  }
}

uint64_t sub_10006F210()
{
  v1 = 0x656E6F6E2ELL;
  v2 = 0x6C6E4F646165722ELL;
  if (*v0 != 2)
  {
    v2 = 0x646578696D2ELL;
  }

  if (*v0)
  {
    v1 = 0x697257646165722ELL;
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

uint64_t sub_10006F28C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t Publishers.CSCombineLatest6.init(_:_:_:_:_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, __int128 a14, __int128 a15, uint64_t a16, uint64_t a17)
{
  (*(*(a7 - 8) + 32))(a9, a1, a7);
  v27[0] = a7;
  v27[1] = a8;
  v27[2] = a10;
  v27[3] = a11;
  v27[4] = a12;
  v27[5] = a13;
  v28 = a14;
  v29 = a15;
  v30 = a16;
  v31 = a17;
  v21 = type metadata accessor for Publishers.CSCombineLatest6(0, v27);
  (*(*(a8 - 8) + 32))(a9 + v21[29], a2, a8);
  (*(*(a10 - 8) + 32))(a9 + v21[30], a3, a10);
  (*(*(a11 - 8) + 32))(a9 + v21[31], a4, a11);
  (*(*(a12 - 8) + 32))(a9 + v21[32], a5, a12);
  return (*(*(a13 - 8) + 32))(a9 + v21[33], a6, a13);
}

uint64_t Publishers.CSCombineLatest5.init(_:_:_:_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, __int128 a12, __int128 a13, uint64_t a14)
{
  (*(*(a6 - 8) + 32))(a9, a1, a6);
  v24[0] = a6;
  v24[1] = a7;
  v24[2] = a8;
  v24[3] = a10;
  v24[4] = a11;
  v25 = a12;
  v26 = a13;
  v27 = a14;
  v21 = type metadata accessor for Publishers.CSCombineLatest5(0, v24);
  (*(*(a7 - 8) + 32))(a9 + v21[25], a2, a7);
  (*(*(a8 - 8) + 32))(a9 + v21[26], a3, a8);
  (*(*(a10 - 8) + 32))(a9 + v21[27], a4, a10);
  return (*(*(a11 - 8) + 32))(a9 + v21[28], a5, a11);
}

uint64_t Publishers.CSCombineLatest5.receive<A>(subscriber:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v77 = a3;
  v78 = a4;
  v79 = a1;
  v87 = *(a2 + 32);
  AssociatedTypeWitness = v87;
  v92 = *(a2 + 72);
  v84 = v92;
  v85 = *(a2 + 16);
  v56[1] = *(&v85 + 1);
  v63 = v85;
  v89 = v85;
  v86 = *(a2 + 56);
  v68 = v86;
  v91 = v86;
  v65 = *(&v86 + 1);
  v88 = sub_10007AE5C();
  v5 = *(a2 + 40);
  v81 = *(a2 + 48);
  v82 = &protocol conformance descriptor for Publishers.CombineLatest3<A, B, C>;
  WitnessTable = swift_getWitnessTable();
  v6 = *(a2 + 80);
  v92 = *(a2 + 88);
  v70 = v6;
  v67 = v92;
  v83 = sub_10007AE5C();
  *&v89 = swift_getAssociatedTypeWitness();
  v7 = *(&v85 + 1);
  *(&v89 + 1) = swift_getAssociatedTypeWitness();
  v8 = v87;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v61 = v5;
  *&v91 = swift_getAssociatedTypeWitness();
  *(&v91 + 1) = swift_getAssociatedTypeWitness();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v9 = v83;
  v72 = swift_getWitnessTable();
  v74 = sub_10007AEAC();
  v75 = *(v74 - 8);
  v10 = __chkstk_darwin(v74);
  v69 = v56 - v11;
  v64 = *(v81 - 8);
  v12 = __chkstk_darwin(v10);
  v62 = v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = *(v5 - 8);
  v14 = __chkstk_darwin(v12);
  v59 = v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = *(v9 - 8);
  v16 = __chkstk_darwin(v14);
  v82 = v56 - v17;
  v18 = *(v8 - 8);
  v19 = __chkstk_darwin(v16);
  v58 = v56 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v7;
  v22 = *(v7 - 8);
  v23 = __chkstk_darwin(v19);
  v25 = v56 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = v63;
  v27 = __chkstk_darwin(v23);
  v29 = v56 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = *(v88 - 8);
  v30 = __chkstk_darwin(v27);
  v32 = v56 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v34 = v56 - v33;
  v36 = v71;
  (*(v35 + 16))(v29, v71, v26);
  (*(v22 + 16))(v25, v36 + *(a2 + 100), v21);
  (*(v18 + 16))(v58, v36 + *(a2 + 104), v87);
  v57 = v34;
  sub_10007AE6C();
  (*(v80 + 16))(v32, v34, v88);
  v37 = v61;
  (*(v60 + 16))(v59, v36 + *(a2 + 108), v61);
  v38 = v36 + *(a2 + 112);
  v39 = v81;
  (*(v64 + 16))(v62, v38, v81);
  v40 = v67;
  v41 = v37;
  v42 = v70;
  sub_10007AE6C();
  v43 = swift_allocObject();
  v44 = v87;
  *&v45 = v87;
  *(&v45 + 1) = v41;
  *(v43 + 32) = v45;
  *(v43 + 16) = v85;
  v47 = v77;
  v46 = v78;
  *(v43 + 48) = v39;
  *(v43 + 56) = v47;
  v48 = v84;
  *&v45 = v84;
  *(&v45 + 1) = v42;
  *(v43 + 80) = v45;
  *(v43 + 64) = v86;
  *(v43 + 96) = v40;
  *(v43 + 104) = v46;
  v49 = swift_allocObject();
  v50 = v86;
  *(v49 + 16) = v85;
  *(v49 + 32) = v44;
  *(v49 + 40) = v41;
  *(v49 + 48) = v39;
  *(v49 + 56) = v47;
  *(v49 + 64) = v50;
  *(v49 + 80) = v48;
  *(v49 + 88) = v42;
  *(v49 + 96) = v40;
  *(v49 + 104) = v46;
  *(v49 + 112) = sub_100070550;
  *(v49 + 120) = v43;
  v51 = v69;
  v53 = v82;
  v52 = v83;
  sub_10007AF7C();

  v54 = v74;
  sub_10007AE9C();
  (*(v75 + 8))(v51, v54);
  (*(v66 + 8))(v53, v52);
  return (*(v80 + 8))(v57, v88);
}

uint64_t sub_100070064(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  v65 = a7;
  v66 = a8;
  v67 = a1;
  v68 = a2;
  v75 = a21;
  v73 = a4;
  v74 = a15;
  v76 = a10;
  v77 = a5;
  v71 = a3;
  v72 = a9;
  v69 = a14;
  v70 = a20;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v23 = swift_getAssociatedTypeWitness();
  v24 = swift_getAssociatedTypeWitness();
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v26 = *(TupleTypeMetadata3 - 8);
  v27 = __chkstk_darwin(TupleTypeMetadata3);
  v63 = &v60 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __chkstk_darwin(v27);
  v78 = &v60 - v30;
  v31 = __chkstk_darwin(v29);
  v33 = &v60 - v32;
  __chkstk_darwin(v31);
  v35 = &v60 - v34;
  v36 = *(AssociatedTypeWitness - 8);
  v37 = *(v36 + 16);
  v62 = AssociatedTypeWitness;
  v37(&v60 - v34, a6, AssociatedTypeWitness);
  v38 = *(TupleTypeMetadata3 + 48);
  v60 = v23;
  v39 = *(v23 - 8);
  (*(v39 + 16))(&v35[v38], v65, v23);
  v40 = *(TupleTypeMetadata3 + 64);
  v61 = v24;
  v41 = *(v24 - 8);
  (*(v41 + 16))(&v35[v40], v66, v24);
  v42 = *(v26 + 16);
  v64 = v33;
  v42(v33, v35, TupleTypeMetadata3);
  v43 = *(TupleTypeMetadata3 + 48);
  v65 = *(TupleTypeMetadata3 + 64);
  v66 = v43;
  (*(v36 + 32))(v67, v33, AssociatedTypeWitness);
  v44 = v78;
  v42(v78, v35, TupleTypeMetadata3);
  v45 = *(TupleTypeMetadata3 + 48);
  v67 = *(TupleTypeMetadata3 + 64);
  v46 = v60;
  (*(v39 + 32))(v68, &v44[v45], v60);
  v47 = v63;
  (*(v26 + 32))(v63, v35, TupleTypeMetadata3);
  v48 = *(TupleTypeMetadata3 + 48);
  v49 = v61;
  (*(v41 + 32))(v71, &v47[*(TupleTypeMetadata3 + 64)], v61);
  v50 = swift_getAssociatedTypeWitness();
  (*(*(v50 - 8) + 16))(v73, v72, v50);
  v51 = swift_getAssociatedTypeWitness();
  (*(*(v51 - 8) + 16))(v77, v76, v51);
  v52 = *(v39 + 8);
  v53 = v46;
  v52(&v47[v48], v46);
  v54 = *(v36 + 8);
  v55 = v62;
  v54(v47, v62);
  v56 = *(v41 + 8);
  v57 = v78;
  v56(&v78[v67], v49);
  v54(v57, v55);
  v58 = v64;
  v56(&v64[v65], v49);
  return (v52)(&v58[v66], v53);
}

uint64_t sub_100070598@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t)@<X1>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v17 = *(TupleTypeMetadata3 + 48);
  v23 = *(TupleTypeMetadata3 + 64);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  v18 = swift_getTupleTypeMetadata3();
  v19 = a1 + *(v18 + 48);
  v20 = a1 + *(v18 + 64);
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  return a2(a8, a8 + TupleTypeMetadata[12], a8 + TupleTypeMetadata[16], a8 + TupleTypeMetadata[20], a8 + TupleTypeMetadata[24], a1, a1 + v17, a1 + v23, v19, v20);
}

uint64_t sub_100070760()
{

  return _swift_deallocObject(v0, 128, 7);
}

uint64_t Publishers.CSCombineLatest6.receive<A>(subscriber:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v82 = a4;
  v81 = a3;
  v83 = a1;
  v91 = *(a2 + 16);
  v68 = v91;
  v94 = v91;
  v58[1] = *(&v91 + 1);
  v84 = *(a2 + 32);
  AssociatedTypeWitness = v84;
  v90 = *(a2 + 64);
  v72 = v90;
  v96 = v90;
  v71 = *(&v90 + 1);
  v97 = *(a2 + 80);
  *&v89 = v97;
  v88 = sub_10007AE5C();
  v5 = *(a2 + 40);
  v93 = *(a2 + 48);
  WitnessTable = swift_getWitnessTable();
  v6 = *(a2 + 88);
  v7 = *(a2 + 96);
  *v86 = v93;
  v74 = v6;
  v92 = v7;
  v98 = v7;
  v85 = *(&v7 + 1);
  v87 = sub_10007AE7C();
  *&v94 = swift_getAssociatedTypeWitness();
  v8 = *(&v91 + 1);
  *(&v94 + 1) = swift_getAssociatedTypeWitness();
  v9 = v84;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = v5;
  v64 = v5;
  *&v96 = swift_getAssociatedTypeWitness();
  v11 = v93;
  *(&v96 + 1) = swift_getAssociatedTypeWitness();
  v97 = swift_getAssociatedTypeWitness();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v12 = v87;
  v76 = swift_getWitnessTable();
  v78 = sub_10007AEAC();
  v79 = *(v78 - 8);
  v13 = __chkstk_darwin(v78);
  v73 = v58 - v14;
  v69 = *(*(&v93 + 1) - 8);
  v15 = __chkstk_darwin(v13);
  v67 = v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = *(v11 - 8);
  v17 = __chkstk_darwin(v15);
  v65 = v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = *(v10 - 8);
  v19 = __chkstk_darwin(v17);
  v62 = v58 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = *(v12 - 8);
  v21 = __chkstk_darwin(v19);
  v85 = v58 - v22;
  v23 = *(v9 - 8);
  v24 = __chkstk_darwin(v21);
  v59 = v58 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = v8;
  v27 = *(v8 - 8);
  v28 = __chkstk_darwin(v24);
  v30 = v58 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = v68;
  v32 = __chkstk_darwin(v28);
  v34 = v58 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = *(v88 - 8);
  v35 = v61;
  v36 = __chkstk_darwin(v32);
  v58[0] = v58 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v39 = v58 - v38;
  v41 = v75;
  (*(v40 + 16))(v34, v75, v31);
  (*(v27 + 16))(v30, v41 + *(a2 + 116), v26);
  v42 = v84;
  (*(v23 + 16))(v59, v41 + *(a2 + 120), v84);
  v60 = v39;
  sub_10007AE6C();
  v43 = v88;
  (*(v35 + 16))(v58[0], v39, v88);
  v44 = v64;
  (*(v63 + 16))(v62, v41 + *(a2 + 124), v64);
  (*(v66 + 16))(v65, v41 + *(a2 + 128), *v86);
  (*(v69 + 16))(v67, v41 + *(a2 + 132), *&v86[8]);
  v45 = v74;
  v46 = v44;
  sub_10007AE8C();
  v47 = swift_allocObject();
  *&v48 = v42;
  *(&v48 + 1) = v46;
  *&v86[8] = v48;
  *(v47 + 32) = v48;
  *(v47 + 16) = v91;
  *(v47 + 48) = v93;
  v49 = v81;
  *(v47 + 64) = v81;
  *&v48 = v89;
  *(&v48 + 1) = v45;
  v89 = v48;
  *(v47 + 88) = v48;
  *(v47 + 72) = v90;
  *(v47 + 104) = v92;
  v50 = v82;
  *(v47 + 120) = v82;
  v51 = swift_allocObject();
  v52 = v93;
  *(v51 + 16) = v91;
  *(v51 + 32) = *&v86[8];
  *(v51 + 48) = v52;
  *(v51 + 64) = v49;
  *(v51 + 72) = v90;
  *(v51 + 104) = v92;
  *(v51 + 88) = v89;
  *(v51 + 120) = v50;
  *(v51 + 128) = sub_1000718F8;
  *(v51 + 136) = v47;
  v53 = v73;
  v54 = v87;
  v55 = v85;
  sub_10007AF7C();

  v56 = v78;
  sub_10007AE9C();
  (*(v79 + 8))(v53, v56);
  (*(v70 + 8))(v55, v54);
  return (*(v61 + 8))(v60, v43);
}

uint64_t sub_10007139C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  v71 = a8;
  v72 = a1;
  v73 = a2;
  v85 = a12;
  v86 = a6;
  v80 = a4;
  v81 = a11;
  v83 = a25;
  v84 = a5;
  v82 = a18;
  v78 = a17;
  v79 = a24;
  v76 = a3;
  v77 = a10;
  v70 = a9;
  v74 = a16;
  v75 = a23;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v27 = swift_getAssociatedTypeWitness();
  v28 = swift_getAssociatedTypeWitness();
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v30 = *(TupleTypeMetadata3 - 8);
  v31 = __chkstk_darwin(TupleTypeMetadata3);
  v67 = &v64 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __chkstk_darwin(v31);
  v66 = &v64 - v34;
  v35 = __chkstk_darwin(v33);
  v37 = &v64 - v36;
  __chkstk_darwin(v35);
  v39 = &v64 - v38;
  v40 = AssociatedTypeWitness;
  v41 = *(AssociatedTypeWitness - 8);
  v42 = *(v41 + 16);
  v68 = v40;
  v42(&v64 - v38, a7, v40);
  v43 = *(TupleTypeMetadata3 + 48);
  v64 = v27;
  v44 = *(v27 - 8);
  (*(v44 + 16))(&v39[v43], v71, v27);
  v45 = *(TupleTypeMetadata3 + 64);
  v65 = v28;
  v46 = *(v28 - 8);
  (*(v46 + 16))(&v39[v45], v70, v28);
  v47 = *(v30 + 16);
  v69 = v37;
  v47(v37, v39, TupleTypeMetadata3);
  v48 = *(TupleTypeMetadata3 + 48);
  v70 = *(TupleTypeMetadata3 + 64);
  v71 = v48;
  (*(v41 + 32))(v72, v37, v40);
  v49 = v66;
  v47(v66, v39, TupleTypeMetadata3);
  v50 = *(TupleTypeMetadata3 + 48);
  v72 = *(TupleTypeMetadata3 + 64);
  v51 = v64;
  (*(v44 + 32))(v73, &v49[v50], v64);
  v52 = v67;
  (*(v30 + 32))(v67, v39, TupleTypeMetadata3);
  v73 = *(TupleTypeMetadata3 + 48);
  v53 = v65;
  (*(v46 + 32))(v76, &v52[*(TupleTypeMetadata3 + 64)], v65);
  v54 = swift_getAssociatedTypeWitness();
  (*(*(v54 - 8) + 16))(v80, v77, v54);
  v55 = swift_getAssociatedTypeWitness();
  (*(*(v55 - 8) + 16))(v84, v81, v55);
  v56 = swift_getAssociatedTypeWitness();
  (*(*(v56 - 8) + 16))(v86, v85, v56);
  v57 = *(v44 + 8);
  v58 = v51;
  v57(&v52[v73], v51);
  v59 = *(v41 + 8);
  v60 = v68;
  v59(v52, v68);
  v61 = *(v46 + 8);
  v61(&v49[v72], v53);
  v59(v49, v60);
  v62 = v69;
  v61(&v69[v70], v53);
  return (v57)(&v62[v71], v58);
}

uint64_t sub_100071948@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t)@<X1>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v25 = a1 + *(TupleTypeMetadata3 + 64);
  v26 = *(TupleTypeMetadata3 + 48);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v20 = a1 + TupleTypeMetadata[12];
  v21 = a1 + TupleTypeMetadata[16];
  v22 = a1 + TupleTypeMetadata[20];
  v23 = swift_getTupleTypeMetadata();
  return a2(a8, a8 + v23[12], a8 + v23[16], a8 + v23[20], a8 + v23[24], a8 + v23[28], a1, a1 + v26, v25, v20, v21, v22);
}

uint64_t sub_100071B5C()
{

  return _swift_deallocObject(v0, 144, 7);
}

uint64_t Publishers.CSCombineLatest7.init(_:_:_:_:_:_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, __int128 a16, __int128 a17, __int128 a18, uint64_t a19)
{
  (*(*(a8 - 8) + 32))(a9, a1, a8);
  v29[0] = a8;
  v29[1] = a10;
  v29[2] = a11;
  v29[3] = a12;
  v29[4] = a13;
  v29[5] = a14;
  v29[6] = a15;
  v30 = a16;
  v31 = a17;
  v32 = a18;
  v33 = a19;
  v22 = type metadata accessor for Publishers.CSCombineLatest7(0, v29);
  (*(*(a10 - 8) + 32))(a9 + v22[33], a2, a10);
  (*(*(a11 - 8) + 32))(a9 + v22[34], a3, a11);
  (*(*(a12 - 8) + 32))(a9 + v22[35], a4, a12);
  (*(*(a13 - 8) + 32))(a9 + v22[36], a5, a13);
  (*(*(a14 - 8) + 32))(a9 + v22[37], a6, a14);
  return (*(*(a15 - 8) + 32))(a9 + v22[38], a7, a15);
}

uint64_t Publishers.CSCombineLatest7.receive<A>(subscriber:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v97 = a4;
  v96 = a3;
  v98 = a1;
  v6 = *(a2 + 16);
  v5 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  v9 = *(a2 + 72);
  v10 = *(a2 + 80);
  v11 = *(a2 + 96);
  v115 = *(a2 + 88);
  v116 = v7;
  v114 = v11;
  v117 = v6;
  AssociatedTypeWitness = v6;
  v119 = v5;
  v120 = v7;
  v110 = v5;
  v121 = v8;
  v122 = v9;
  v107 = v9;
  v108 = v8;
  v123 = v10;
  v124 = v115;
  v106 = v10;
  v125 = v11;
  v12 = sub_10007AE7C();
  v13 = *(a2 + 56);
  v109 = *(a2 + 48);
  v111 = v13;
  v112 = *(a2 + 64);
  v113 = v12;
  v102 = &protocol conformance descriptor for Publishers.CombineLatest4<A, B, C, D>;
  WitnessTable = swift_getWitnessTable();
  v14 = *(a2 + 112);
  v15 = *(a2 + 120);
  v88 = *(a2 + 104);
  v125 = v15;
  v105 = v14;
  v104 = v15;
  v103 = sub_10007AE7C();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v119 = swift_getAssociatedTypeWitness();
  v16 = v116;
  v120 = swift_getAssociatedTypeWitness();
  v17 = v108;
  v121 = swift_getAssociatedTypeWitness();
  v18 = v109;
  v122 = swift_getAssociatedTypeWitness();
  v123 = swift_getAssociatedTypeWitness();
  v124 = swift_getAssociatedTypeWitness();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v19 = v103;
  v91 = swift_getWitnessTable();
  v93 = sub_10007AEAC();
  v94 = *(v93 - 8);
  v20 = __chkstk_darwin(v93);
  v89 = &v79 - v21;
  v86 = *(v112 - 8);
  v22 = __chkstk_darwin(v20);
  v85 = &v79 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = *(v13 - 8);
  v24 = __chkstk_darwin(v22);
  v83 = &v79 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = *(v18 - 8);
  v26 = __chkstk_darwin(v24);
  v81 = &v79 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = *(v19 - 8);
  v28 = __chkstk_darwin(v26);
  v102 = &v79 - v29;
  v79 = *(v17 - 8);
  v30 = __chkstk_darwin(v28);
  v80 = &v79 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = *(v16 - 8);
  v33 = __chkstk_darwin(v30);
  v35 = &v79 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = v110;
  v37 = *(v110 - 8);
  v38 = __chkstk_darwin(v33);
  v40 = &v79 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __chkstk_darwin(v38);
  v43 = &v79 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = *(v113 - 8);
  v44 = __chkstk_darwin(v41);
  v99 = &v79 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v44);
  v100 = &v79 - v46;
  v48 = v90;
  (*(v47 + 16))(v43, v90);
  (*(v37 + 16))(v40, v48 + *(a2 + 132), v36);
  (*(v32 + 16))(v35, v48 + *(a2 + 136), v116);
  (*(v79 + 16))(v80, v48 + *(a2 + 140), v108);
  v49 = v100;
  sub_10007AE8C();
  (*(v101 + 16))(v99, v49, v113);
  v50 = v109;
  (*(v82 + 16))(v81, v48 + *(a2 + 144), v109);
  v51 = v111;
  (*(v84 + 16))(v83, v48 + *(a2 + 148), v111);
  v52 = v48 + *(a2 + 152);
  v53 = v112;
  (*(v86 + 16))(v85, v52, v112);
  v54 = v104;
  v55 = v105;
  v56 = v88;
  v57 = v50;
  v58 = v51;
  v59 = v53;
  sub_10007AE8C();
  v60 = swift_allocObject();
  v61 = v110;
  v60[2] = v117;
  v60[3] = v61;
  v62 = v115;
  v63 = v108;
  v60[4] = v116;
  v60[5] = v63;
  v60[6] = v57;
  v60[7] = v58;
  v64 = v96;
  v60[8] = v59;
  v60[9] = v64;
  v66 = v106;
  v65 = v107;
  v60[10] = v107;
  v60[11] = v66;
  v67 = v114;
  v60[12] = v62;
  v60[13] = v67;
  v60[14] = v56;
  v60[15] = v55;
  v60[16] = v54;
  v68 = v97;
  v60[17] = v97;
  v69 = swift_allocObject();
  v70 = v110;
  v69[2] = v117;
  v69[3] = v70;
  v69[4] = v116;
  v69[5] = v63;
  v72 = v111;
  v71 = v112;
  v69[6] = v109;
  v69[7] = v72;
  v69[8] = v71;
  v69[9] = v64;
  v69[10] = v65;
  v69[11] = v66;
  v69[12] = v62;
  v69[13] = v67;
  v73 = v105;
  v69[14] = v56;
  v69[15] = v73;
  v69[16] = v104;
  v69[17] = v68;
  v69[18] = sub_100073338;
  v69[19] = v60;
  v74 = v89;
  v75 = v103;
  v76 = v102;
  sub_10007AF7C();

  v77 = v93;
  sub_10007AE9C();
  (*(v94 + 8))(v74, v77);
  (*(v87 + 8))(v76, v75);
  return (*(v101 + 8))(v100, v113);
}

uint64_t sub_100072AC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(char *, uint64_t), void (*a7)(char *, uint64_t), uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  v117 = a8;
  v110 = a7;
  v108 = a6;
  v104 = a5;
  v100 = a4;
  v97 = a3;
  v96 = a2;
  v95 = a1;
  v106 = a21;
  v107 = a29;
  v109 = a14;
  v105 = a13;
  v103 = a28;
  v99 = a27;
  v102 = a20;
  v98 = a19;
  v101 = a12;
  v94 = a11;
  v93 = a10;
  v91 = a9;
  v90 = a26;
  v87 = a25;
  v89 = a18;
  v86 = a17;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v119 = swift_getAssociatedTypeWitness();
  v120 = swift_getAssociatedTypeWitness();
  v121 = swift_getAssociatedTypeWitness();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v88 = *(TupleTypeMetadata - 1);
  v30 = __chkstk_darwin(TupleTypeMetadata);
  v92 = &v85 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __chkstk_darwin(v30);
  v112 = &v85 - v33;
  v34 = __chkstk_darwin(v32);
  v111 = &v85 - v35;
  v36 = __chkstk_darwin(v34);
  v113 = &v85 - v37;
  __chkstk_darwin(v36);
  v39 = &v85 - v38;
  v40 = swift_getAssociatedTypeWitness();
  v41 = *(v40 - 8);
  v114 = v40;
  v115 = v41;
  (*(v41 + 16))(v39, v117, v40);
  v42 = TupleTypeMetadata[12];
  v43 = swift_getAssociatedTypeWitness();
  v44 = *(v43 - 8);
  v116 = v43;
  v117 = v44;
  (*(v44 + 16))(&v39[v42], v91, v43);
  v45 = TupleTypeMetadata[16];
  v46 = swift_getAssociatedTypeWitness();
  v47 = *(v46 - 8);
  v48 = &v39[v45];
  v49 = v46;
  (*(v47 + 16))(v48, v93);
  v50 = TupleTypeMetadata[20];
  v51 = swift_getAssociatedTypeWitness();
  v52 = *(v51 - 8);
  v87 = v52;
  v53 = *(v52 + 16);
  v86 = v51;
  v53(&v39[v50], v94, v51);
  v54 = v88;
  v55 = *(v88 + 16);
  v56 = v113;
  v55(v113, v39, TupleTypeMetadata);
  v94 = TupleTypeMetadata[12];
  v93 = TupleTypeMetadata[16];
  v91 = TupleTypeMetadata[20];
  (*(v115 + 32))(v95, v56, v114);
  v57 = v111;
  v55(v111, v39, TupleTypeMetadata);
  v58 = TupleTypeMetadata[12];
  v95 = TupleTypeMetadata[16];
  v90 = TupleTypeMetadata[20];
  (*(v117 + 32))(v96, &v57[v58], v116);
  v59 = v112;
  v55(v112, v39, TupleTypeMetadata);
  v96 = TupleTypeMetadata[12];
  v60 = TupleTypeMetadata[16];
  v89 = TupleTypeMetadata[20];
  v61 = *(v47 + 32);
  v85 = v49;
  v61(v97, &v59[v60], v49);
  v62 = v92;
  (*(v54 + 32))(v92, v39, TupleTypeMetadata);
  v63 = TupleTypeMetadata[12];
  v64 = TupleTypeMetadata[16];
  (*(v52 + 32))(v100, &v62[TupleTypeMetadata[20]], v51);
  v65 = swift_getAssociatedTypeWitness();
  (*(*(v65 - 8) + 16))(v104, v101, v65);
  v66 = swift_getAssociatedTypeWitness();
  (*(*(v66 - 8) + 16))(v108, v105, v66);
  v67 = swift_getAssociatedTypeWitness();
  (*(*(v67 - 8) + 16))(v110, v109, v67);
  v68 = *(v47 + 8);
  v109 = v47 + 8;
  v110 = v68;
  v68(&v62[v64], v49);
  v69 = v116;
  v71 = v117 + 8;
  v70 = *(v117 + 8);
  v70(&v62[v63], v116);
  v72 = v70;
  v108 = v70;
  v117 = v71;
  v73 = v114;
  v74 = *(v115 + 8);
  v74(v62, v114);
  v75 = *(v87 + 8);
  v76 = v112;
  v77 = v86;
  v75(&v112[v89], v86);
  v72(&v76[v96], v69);
  v78 = v76;
  v79 = v73;
  v74(v78, v73);
  v80 = v111;
  v75(&v111[v90], v77);
  v81 = v85;
  v82 = v110;
  v110(&v80[v95], v85);
  v74(v80, v79);
  v83 = v113;
  v75(&v113[v91], v77);
  v82(&v83[v93], v81);
  return v108(&v83[v94], v116);
}

uint64_t sub_100073390@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t)@<X1>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v29 = a1 + TupleTypeMetadata[12];
  v28 = a1 + TupleTypeMetadata[16];
  v27 = a1 + TupleTypeMetadata[20];
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  v21 = swift_getTupleTypeMetadata();
  v22 = a1 + v21[12];
  v23 = a1 + v21[16];
  v24 = a1 + v21[20];
  v25 = swift_getTupleTypeMetadata();
  return a2(a8, a8 + v25[12], a8 + v25[16], a8 + v25[20], a8 + v25[24], a8 + v25[28], a8 + v25[32], a1, v29, v28, v27, v22, v23, v24);
}

uint64_t sub_1000735FC()
{

  return _swift_deallocObject(v0, 160, 7);
}

uint64_t sub_100073708(void *a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      result = swift_checkMetadataState();
      if (v4 <= 0x3F)
      {
        result = swift_checkMetadataState();
        if (v5 <= 0x3F)
        {
          result = swift_checkMetadataState();
          if (v6 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1000737E8(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  v42 = *(a3[2] - 8);
  v4 = *(v42 + 84);
  v5 = *(a3[3] - 8);
  v6 = *(v5 + 84);
  if (v6 <= v4)
  {
    v7 = *(v42 + 84);
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = a3[5];
  v9 = *(a3[4] - 8);
  v10 = *(v9 + 84);
  if (v10 <= v7)
  {
    v11 = v7;
  }

  else
  {
    v11 = *(v9 + 84);
  }

  v12 = *(v8 - 8);
  v13 = *(v12 + 84);
  if (v13 <= v11)
  {
    v14 = v11;
  }

  else
  {
    v14 = *(v12 + 84);
  }

  v15 = *(a3[6] - 8);
  v16 = *(v15 + 84);
  v17 = *(v5 + 80);
  v18 = *(*(a3[3] - 8) + 64);
  v19 = *(v9 + 80);
  v20 = *(*(a3[4] - 8) + 64);
  v21 = *(v12 + 80);
  v22 = *(v15 + 80);
  if (v16 <= v14)
  {
    v23 = v14;
  }

  else
  {
    v23 = *(v15 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v24 = *(*(a3[2] - 8) + 64) + v17;
  v25 = *(*(v8 - 8) + 64) + v22;
  v26 = a2 - v23;
  if (a2 > v23)
  {
    v27 = ((v25 + ((v20 + v21 + ((v18 + v19 + (v24 & ~v17)) & ~v19)) & ~v21)) & ~v22) + *(*(a3[6] - 8) + 64);
    v28 = 8 * v27;
    if (v27 <= 3)
    {
      v30 = ((v26 + ~(-1 << v28)) >> v28) + 1;
      if (HIWORD(v30))
      {
        v29 = *(a1 + v27);
        if (!v29)
        {
          goto LABEL_36;
        }

        goto LABEL_23;
      }

      if (v30 > 0xFF)
      {
        v29 = *(a1 + v27);
        if (!*(a1 + v27))
        {
          goto LABEL_36;
        }

        goto LABEL_23;
      }

      if (v30 < 2)
      {
LABEL_36:
        if (v23)
        {
          goto LABEL_37;
        }

        return 0;
      }
    }

    v29 = *(a1 + v27);
    if (!*(a1 + v27))
    {
      goto LABEL_36;
    }

LABEL_23:
    v31 = (v29 - 1) << v28;
    if (v27 > 3)
    {
      v31 = 0;
    }

    if (v27)
    {
      if (v27 <= 3)
      {
        v32 = ((v25 + ((v20 + v21 + ((v18 + v19 + (v24 & ~v17)) & ~v19)) & ~v21)) & ~v22) + *(*(a3[6] - 8) + 64);
      }

      else
      {
        v32 = 4;
      }

      if (v32 > 2)
      {
        if (v32 == 3)
        {
          v33 = *a1 | (*(a1 + 2) << 16);
        }

        else
        {
          v33 = *a1;
        }
      }

      else if (v32 == 1)
      {
        v33 = *a1;
      }

      else
      {
        v33 = *a1;
      }
    }

    else
    {
      v33 = 0;
    }

    return v23 + (v33 | v31) + 1;
  }

LABEL_37:
  if (v4 == v23)
  {
    v34 = *(v42 + 48);

    return v34();
  }

  v36 = (a1 + v24) & ~v17;
  if (v6 == v23)
  {
    v37 = *(v5 + 48);
    v38 = *(v5 + 84);
    v39 = a3[3];

    return v37(v36, v38, v39);
  }

  v36 = (v36 + v18 + v19) & ~v19;
  if (v10 == v23)
  {
    v37 = *(v9 + 48);
    v38 = *(v9 + 84);
    v39 = a3[4];

    return v37(v36, v38, v39);
  }

  v36 = (v36 + v20 + v21) & ~v21;
  if (v13 == v23)
  {
    v37 = *(v12 + 48);
    v38 = *(v12 + 84);
    v39 = a3[5];

    return v37(v36, v38, v39);
  }

  v40 = *(v15 + 48);
  v41 = (v25 + v36) & ~v22;

  return v40(v41, v16);
}

char *sub_100073C88(char *result, unsigned int a2, unsigned int a3, void *a4)
{
  v42 = a4[3];
  v43 = *(a4[2] - 8);
  v5 = *(v43 + 84);
  v6 = *(v42 - 8);
  v7 = *(v6 + 84);
  if (v7 <= v5)
  {
    v8 = *(v43 + 84);
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = a4[5];
  v41 = a4[4];
  v10 = *(v41 - 8);
  v11 = *(v10 + 84);
  if (v11 <= v8)
  {
    v12 = v8;
  }

  else
  {
    v12 = *(v10 + 84);
  }

  v13 = *(v9 - 8);
  v14 = *(v13 + 84);
  if (v14 <= v12)
  {
    v15 = v12;
  }

  else
  {
    v15 = *(v13 + 84);
  }

  v16 = *(a4[6] - 8);
  v17 = *(*(a4[2] - 8) + 64);
  v18 = *(v6 + 80);
  v19 = *(*(v42 - 8) + 64);
  v20 = *(v10 + 80);
  v21 = *(*(v41 - 8) + 64);
  v22 = *(v13 + 80);
  v23 = *(*(v9 - 8) + 64);
  v24 = *(v16 + 80);
  if (*(v16 + 84) <= v15)
  {
    v25 = v15;
  }

  else
  {
    v25 = *(v16 + 84);
  }

  v26 = v23 + v24;
  v27 = ((v23 + v24 + ((v21 + v22 + ((v19 + v20 + ((v17 + v18) & ~v18)) & ~v20)) & ~v22)) & ~v24) + *(*(a4[6] - 8) + 64);
  v28 = a3 >= v25;
  v29 = a3 - v25;
  if (v29 != 0 && v28)
  {
    if (v27 <= 3)
    {
      v34 = ((v29 + ~(-1 << (8 * v27))) >> (8 * v27)) + 1;
      if (HIWORD(v34))
      {
        v30 = 4;
      }

      else
      {
        if (v34 < 0x100)
        {
          v35 = 1;
        }

        else
        {
          v35 = 2;
        }

        if (v34 >= 2)
        {
          v30 = v35;
        }

        else
        {
          v30 = 0;
        }
      }
    }

    else
    {
      v30 = 1;
    }
  }

  else
  {
    v30 = 0;
  }

  if (v25 < a2)
  {
    v31 = ~v25 + a2;
    if (v27 < 4)
    {
      v33 = (v31 >> (8 * v27)) + 1;
      if (v27)
      {
        v36 = v31 & ~(-1 << (8 * v27));
        v37 = result;
        bzero(result, v27);
        result = v37;
        if (v27 != 3)
        {
          if (v27 == 2)
          {
            *v37 = v36;
            if (v30 > 1)
            {
LABEL_60:
              if (v30 == 2)
              {
                *&result[v27] = v33;
              }

              else
              {
                *&result[v27] = v33;
              }

              return result;
            }
          }

          else
          {
            *v37 = v31;
            if (v30 > 1)
            {
              goto LABEL_60;
            }
          }

          goto LABEL_57;
        }

        *v37 = v36;
        v37[2] = BYTE2(v36);
      }

      if (v30 > 1)
      {
        goto LABEL_60;
      }
    }

    else
    {
      v32 = result;
      bzero(result, v27);
      result = v32;
      *v32 = v31;
      v33 = 1;
      if (v30 > 1)
      {
        goto LABEL_60;
      }
    }

LABEL_57:
    if (v30)
    {
      result[v27] = v33;
    }

    return result;
  }

  if (v30 > 1)
  {
    if (v30 != 2)
    {
      *&result[v27] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_40;
    }

    *&result[v27] = 0;
LABEL_39:
    if (!a2)
    {
      return result;
    }

    goto LABEL_40;
  }

  if (!v30)
  {
    goto LABEL_39;
  }

  result[v27] = 0;
  if (!a2)
  {
    return result;
  }

LABEL_40:
  if (v5 == v25)
  {
    v38 = *(v43 + 56);

    return v38();
  }

  else
  {
    v39 = &result[v17 + v18] & ~v18;
    if (v7 == v25)
    {
      v40 = *(v6 + 56);
    }

    else
    {
      v39 = (v39 + v19 + v20) & ~v20;
      if (v11 == v25)
      {
        v40 = *(v10 + 56);
      }

      else
      {
        v39 = (v39 + v21 + v22) & ~v22;
        if (v14 == v25)
        {
          v40 = *(v13 + 56);
        }

        else
        {
          v40 = *(v16 + 56);
          v39 = (v26 + v39) & ~v24;
        }
      }
    }

    return v40(v39);
  }
}

uint64_t sub_1000741A8(void *a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      result = swift_checkMetadataState();
      if (v4 <= 0x3F)
      {
        result = swift_checkMetadataState();
        if (v5 <= 0x3F)
        {
          result = swift_checkMetadataState();
          if (v6 <= 0x3F)
          {
            result = swift_checkMetadataState();
            if (v7 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
              return 0;
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1000742A4(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  v4 = *(a3[2] - 8);
  v58 = a3[3];
  v59 = v4;
  v5 = *(v4 + 84);
  v6 = *(v58 - 8);
  v7 = *(v6 + 84);
  if (v7 <= v5)
  {
    v8 = *(v4 + 84);
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = a3[5];
  v56 = v9;
  v57 = a3[4];
  v10 = *(v57 - 8);
  v11 = *(v10 + 84);
  if (v11 > v8)
  {
    v8 = *(v10 + 84);
  }

  v12 = *(v9 - 8);
  v13 = *(v12 + 84);
  v15 = a3[6];
  v14 = a3[7];
  v55 = v14;
  v16 = *(v15 - 8);
  if (v13 <= v8)
  {
    v17 = v8;
  }

  else
  {
    v17 = *(v12 + 84);
  }

  v18 = *(v16 + 84);
  if (v18 <= v17)
  {
    v19 = v17;
  }

  else
  {
    v19 = *(v16 + 84);
  }

  v20 = *(v14 - 8);
  v21 = *(v20 + 84);
  v22 = *(v4 + 64);
  v23 = *(v6 + 80);
  v24 = *(*(v58 - 8) + 64);
  v25 = *(v10 + 80);
  v26 = *(*(v57 - 8) + 64);
  v27 = *(v12 + 80);
  v28 = *(*(v9 - 8) + 64);
  v29 = *(v16 + 80);
  v30 = *(v16 + 64);
  v31 = *(v20 + 80);
  v32 = *(v20 + 64);
  if (v21 <= v19)
  {
    v33 = v19;
  }

  else
  {
    v33 = *(v20 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v34 = v22 + v23;
  v35 = v28 + v29;
  v36 = v30 + v31;
  v37 = a2 - v33;
  if (a2 > v33)
  {
    v38 = (v36 + ((v35 + ((v26 + v27 + ((v24 + v25 + (v34 & ~v23)) & ~v25)) & ~v27)) & ~v29)) & ~v31;
    v39 = v38 + v32;
    v40 = 8 * (v38 + v32);
    if (v39 <= 3)
    {
      v42 = ((v37 + ~(-1 << v40)) >> v40) + 1;
      if (HIWORD(v42))
      {
        v41 = *(a1 + v39);
        if (!v41)
        {
          goto LABEL_38;
        }

        goto LABEL_25;
      }

      if (v42 > 0xFF)
      {
        v41 = *(a1 + v39);
        if (!*(a1 + v39))
        {
          goto LABEL_38;
        }

        goto LABEL_25;
      }

      if (v42 < 2)
      {
LABEL_38:
        if (v33)
        {
          goto LABEL_39;
        }

        return 0;
      }
    }

    v41 = *(a1 + v39);
    if (!*(a1 + v39))
    {
      goto LABEL_38;
    }

LABEL_25:
    v43 = (v41 - 1) << v40;
    if (v39 > 3)
    {
      v43 = 0;
    }

    if (v39)
    {
      if (v39 <= 3)
      {
        v44 = v39;
      }

      else
      {
        v44 = 4;
      }

      if (v44 > 2)
      {
        if (v44 == 3)
        {
          v45 = *a1 | (*(a1 + 2) << 16);
        }

        else
        {
          v45 = *a1;
        }
      }

      else if (v44 == 1)
      {
        v45 = *a1;
      }

      else
      {
        v45 = *a1;
      }
    }

    else
    {
      v45 = 0;
    }

    return v33 + (v45 | v43) + 1;
  }

LABEL_39:
  if (v5 == v33)
  {
    v46 = *(v59 + 48);

    return v46(a1);
  }

  v48 = (a1 + v34) & ~v23;
  if (v7 == v33)
  {
    v49 = *(v6 + 48);
    v50 = (a1 + v34) & ~v23;
    v51 = *(v6 + 84);
    v52 = v58;

    return v49(v50, v51, v52);
  }

  if (v11 == v33)
  {
    v49 = *(v10 + 48);
    v50 = (v48 + v24 + v25) & ~v25;
    v51 = *(v10 + 84);
    v52 = v57;

    return v49(v50, v51, v52);
  }

  v50 = (((v48 + v24 + v25) & ~v25) + v26 + v27) & ~v27;
  if (v13 == v33)
  {
    v49 = *(v12 + 48);
    v51 = *(v12 + 84);
    v52 = v56;

    return v49(v50, v51, v52);
  }

  v50 = (v35 + v50) & ~v29;
  if (v18 == v33)
  {
    v49 = *(*(v15 - 8) + 48);
    v51 = v18;
    v52 = v15;

    return v49(v50, v51, v52);
  }

  v53 = *(v20 + 48);
  v54 = (v36 + v50) & ~v31;

  return v53(v54, v21, v55);
}

unsigned int *sub_100074808(unsigned int *result, unsigned int a2, unsigned int a3, void *a4)
{
  v6 = *(a4[2] - 8);
  v54 = v6;
  v7 = *(v6 + 84);
  v8 = *(a4[3] - 8);
  v9 = v8;
  v10 = *(v8 + 84);
  if (v10 <= v7)
  {
    v11 = *(v6 + 84);
  }

  else
  {
    v11 = *(v8 + 84);
  }

  v12 = a4[5];
  v52 = a4[4];
  v13 = *(v52 - 8);
  v53 = *(v13 + 84);
  if (v53 > v11)
  {
    v11 = *(v13 + 84);
  }

  v14 = *(v12 - 8);
  v51 = *(v14 + 84);
  if (v51 <= v11)
  {
    v15 = v11;
  }

  else
  {
    v15 = *(v14 + 84);
  }

  v50 = a4[6];
  v16 = *(v50 - 8);
  v17 = *(v16 + 84);
  if (v17 <= v15)
  {
    v18 = v15;
  }

  else
  {
    v18 = *(v16 + 84);
  }

  v19 = *(a4[7] - 8);
  v20 = *(v6 + 64);
  v21 = *(v8 + 80);
  v22 = *(v8 + 64);
  v23 = *(v13 + 80);
  v24 = *(*(v52 - 8) + 64);
  v25 = *(v14 + 80);
  v26 = *(*(v12 - 8) + 64);
  v27 = *(v16 + 80);
  v28 = *(*(v50 - 8) + 64);
  v29 = *(v19 + 80);
  v30 = v26 + v27;
  v31 = v28 + v29;
  v32 = ((v28 + v29 + ((v26 + v27 + ((v24 + v25 + ((v22 + v23 + ((v20 + v21) & ~v21)) & ~v23)) & ~v25)) & ~v27)) & ~v29) + *(v19 + 64);
  if (*(v19 + 84) <= v18)
  {
    v33 = v18;
  }

  else
  {
    v33 = *(v19 + 84);
  }

  if (a3 <= v33)
  {
    v34 = 0;
  }

  else if (v32 <= 3)
  {
    v38 = ((a3 - v33 + ~(-1 << (8 * v32))) >> (8 * v32)) + 1;
    if (HIWORD(v38))
    {
      v34 = 4;
    }

    else
    {
      if (v38 < 0x100)
      {
        v39 = 1;
      }

      else
      {
        v39 = 2;
      }

      if (v38 >= 2)
      {
        v34 = v39;
      }

      else
      {
        v34 = 0;
      }
    }
  }

  else
  {
    v34 = 1;
  }

  if (v33 < a2)
  {
    v35 = ~v33 + a2;
    if (v32 >= 4)
    {
      v36 = result;
      bzero(result, v32);
      result = v36;
      *v36 = v35;
      v37 = 1;
      if (v34 > 1)
      {
        goto LABEL_22;
      }

      goto LABEL_59;
    }

    v37 = (v35 >> (8 * v32)) + 1;
    if (v32)
    {
      v40 = v35 & ~(-1 << (8 * v32));
      v41 = result;
      bzero(result, v32);
      result = v41;
      if (v32 != 3)
      {
        if (v32 == 2)
        {
          *v41 = v40;
          if (v34 > 1)
          {
            goto LABEL_22;
          }
        }

        else
        {
          *v41 = v35;
          if (v34 > 1)
          {
LABEL_22:
            if (v34 == 2)
            {
              *(result + v32) = v37;
            }

            else
            {
              *(result + v32) = v37;
            }

            return result;
          }
        }

LABEL_59:
        if (v34)
        {
          *(result + v32) = v37;
        }

        return result;
      }

      *v41 = v40;
      *(v41 + 2) = BYTE2(v40);
    }

    if (v34 > 1)
    {
      goto LABEL_22;
    }

    goto LABEL_59;
  }

  if (v34 > 1)
  {
    if (v34 != 2)
    {
      *(result + v32) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_43;
    }

    *(result + v32) = 0;
  }

  else if (v34)
  {
    *(result + v32) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_43;
  }

  if (!a2)
  {
    return result;
  }

LABEL_43:
  if (v7 == v33)
  {
    v42 = v54;
LABEL_45:
    v43 = *(v42 + 56);
LABEL_48:

    return v43();
  }

  v44 = (result + v20 + v21) & ~v21;
  if (v10 == v33)
  {
    v43 = *(v9 + 56);
    goto LABEL_48;
  }

  v45 = (v44 + v22 + v23) & ~v23;
  if (v53 == v33)
  {
    v42 = v13;
    goto LABEL_45;
  }

  v46 = (v45 + v24 + v25) & ~v25;
  if (v51 == v33)
  {
    v47 = *(v14 + 56);

    return v47(v46);
  }

  v46 = (v30 + v46) & ~v27;
  if (v17 == v33)
  {
    v47 = *(v16 + 56);

    return v47(v46);
  }

  v48 = *(v19 + 56);
  v49 = (v31 + v46) & ~v29;

  return v48(v49);
}

uint64_t sub_100074D88(void *a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      result = swift_checkMetadataState();
      if (v4 <= 0x3F)
      {
        result = swift_checkMetadataState();
        if (v5 <= 0x3F)
        {
          result = swift_checkMetadataState();
          if (v6 <= 0x3F)
          {
            result = swift_checkMetadataState();
            if (v7 <= 0x3F)
            {
              result = swift_checkMetadataState();
              if (v8 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
                return 0;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_100074EA0(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  v53 = a3[2];
  v52 = a3[3];
  v5 = *(*(v53 - 8) + 84);
  v6 = *(v52 - 8);
  v7 = *(v6 + 84);
  v8 = a3[5];
  v50 = a3[4];
  v9 = *(v50 - 8);
  if (v7 <= v5)
  {
    v10 = *(*(v53 - 8) + 84);
  }

  else
  {
    v10 = *(v6 + 84);
  }

  v51 = *(v9 + 84);
  if (v51 > v10)
  {
    v10 = *(v9 + 84);
  }

  v49 = *(*(v8 - 8) + 84);
  if (v49 > v10)
  {
    v10 = *(*(v8 - 8) + 84);
  }

  v11 = *(a3[6] - 8);
  if (*(v11 + 84) <= v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = *(v11 + 84);
  }

  v48 = a3[7];
  v13 = *(v48 - 8);
  v14 = *(v13 + 84);
  if (v14 <= v12)
  {
    v15 = v12;
  }

  else
  {
    v15 = *(v13 + 84);
  }

  v47 = a3[8];
  v16 = *(v47 - 8);
  v17 = *(v6 + 80);
  v54 = *(*(v52 - 8) + 64);
  v18 = *(v9 + 80);
  v19 = *(v8 - 8);
  v20 = *(v9 + 64);
  v21 = *(v19 + 80);
  v22 = *(v11 + 80);
  v23 = *(v13 + 80);
  v24 = *(v16 + 80);
  if (*(v16 + 84) <= v15)
  {
    v25 = v15;
  }

  else
  {
    v25 = *(v16 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v26 = *(*(v53 - 8) + 64) + v17;
  v27 = *(v19 + 64) + v22;
  v28 = *(v11 + 64) + v23;
  v29 = *(*(v48 - 8) + 64) + v24;
  v30 = a2 >= v25;
  v31 = a2 - v25;
  if (v31 == 0 || !v30)
  {
    goto LABEL_42;
  }

  v32 = ((v29 + ((v28 + ((v27 + ((v20 + v21 + ((v54 + v18 + (v26 & ~v17)) & ~v18)) & ~v21)) & ~v22)) & ~v23)) & ~v24) + *(*(v47 - 8) + 64);
  v33 = 8 * v32;
  if (v32 > 3)
  {
    goto LABEL_21;
  }

  v35 = ((v31 + ~(-1 << v33)) >> v33) + 1;
  if (HIWORD(v35))
  {
    v34 = *(a1 + v32);
    if (!v34)
    {
      goto LABEL_41;
    }

    goto LABEL_28;
  }

  if (v35 > 0xFF)
  {
    v34 = *(a1 + v32);
    if (!*(a1 + v32))
    {
      goto LABEL_41;
    }

    goto LABEL_28;
  }

  if (v35 >= 2)
  {
LABEL_21:
    v34 = *(a1 + v32);
    if (!*(a1 + v32))
    {
      goto LABEL_41;
    }

LABEL_28:
    v36 = (v34 - 1) << v33;
    if (v32 > 3)
    {
      v36 = 0;
    }

    if (v32)
    {
      if (v32 <= 3)
      {
        v37 = ((v29 + ((v28 + ((v27 + ((v20 + v21 + ((v54 + v18 + (v26 & ~v17)) & ~v18)) & ~v21)) & ~v22)) & ~v23)) & ~v24) + *(*(v47 - 8) + 64);
      }

      else
      {
        v37 = 4;
      }

      if (v37 > 2)
      {
        if (v37 == 3)
        {
          v38 = *a1 | (*(a1 + 2) << 16);
        }

        else
        {
          v38 = *a1;
        }
      }

      else if (v37 == 1)
      {
        v38 = *a1;
      }

      else
      {
        v38 = *a1;
      }
    }

    else
    {
      v38 = 0;
    }

    return v25 + (v38 | v36) + 1;
  }

LABEL_41:
  if (!v25)
  {
    return 0;
  }

LABEL_42:
  if (v5 == v25)
  {
    v40 = *(v53 - 8);
    v39 = v53;
LABEL_44:
    v41 = *(v40 + 48);
    goto LABEL_48;
  }

  if (v7 == v25)
  {
    v39 = v52;
    v41 = *(*(v52 - 8) + 48);
    a1 = ((a1 + v26) & ~v17);
    v5 = v7;
LABEL_48:

    return v41(a1, v5, v39);
  }

  a1 = ((((a1 + v26) & ~v17) + v54 + v18) & ~v18);
  v5 = v51;
  if (v51 == v25)
  {
    v40 = *(v50 - 8);
    v39 = v50;
    goto LABEL_44;
  }

  v43 = (a1 + v20 + v21) & ~v21;
  if (v49 == v25)
  {
    v44 = *(v19 + 48);

    return v44(v43);
  }

  else
  {
    v45 = (v27 + v43) & ~v22;
    if (*(v11 + 84) != v25)
    {
      a1 = ((v28 + v45) & ~v23);
      if (v14 == v25)
      {
        v41 = *(v13 + 48);
        v5 = *(v13 + 84);
        v39 = v48;
      }

      else
      {
        v41 = *(v16 + 48);
        a1 = ((a1 + v29) & ~v24);
        v5 = *(v16 + 84);
        v39 = v47;
      }

      return v41(a1, v5, v39);
    }

    v46 = *(v11 + 48);

    return v46(v45);
  }
}

_BYTE *sub_100075484(_BYTE *a1, unsigned int a2, unsigned int a3, void *a4)
{
  v51 = *(a4[2] - 8);
  v4 = *(v51 + 84);
  v5 = *(a4[3] - 8);
  v6 = *(v5 + 84);
  if (v6 <= v4)
  {
    v7 = *(v51 + 84);
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = a4[5];
  v9 = *(a4[4] - 8);
  v49 = *(v9 + 84);
  if (v49 > v7)
  {
    v7 = *(v9 + 84);
  }

  v10 = *(v8 - 8);
  v47 = *(v10 + 84);
  if (v47 > v7)
  {
    v7 = *(v10 + 84);
  }

  v11 = a4[7];
  v12 = *(a4[6] - 8);
  v45 = *(v12 + 84);
  if (v45 <= v7)
  {
    v13 = v7;
  }

  else
  {
    v13 = *(v12 + 84);
  }

  v14 = *(v11 - 8);
  v15 = *(v14 + 84);
  if (v15 <= v13)
  {
    v16 = v13;
  }

  else
  {
    v16 = *(v14 + 84);
  }

  v17 = *(a4[8] - 8);
  v18 = *(*(a4[2] - 8) + 64);
  v50 = *(a4[3] - 8);
  v19 = *(v5 + 80);
  v20 = *(v50 + 64);
  v48 = *(a4[4] - 8);
  v21 = *(v9 + 80);
  v22 = *(v48 + 64);
  v46 = *(v8 - 8);
  v23 = *(v10 + 80);
  v24 = *(v46 + 64);
  v25 = *(v12 + 80);
  v26 = *(*(a4[6] - 8) + 64);
  v27 = *(v14 + 80);
  v28 = *(*(v11 - 8) + 64);
  v29 = *(v17 + 80);
  v30 = v18 + v19;
  v31 = v26 + v27;
  v32 = ((v28 + v29 + ((v26 + v27 + ((v24 + v25 + ((v22 + v23 + ((v20 + v21 + ((v18 + v19) & ~v19)) & ~v21)) & ~v23)) & ~v25)) & ~v27)) & ~v29) + *(v17 + 64);
  if (*(v17 + 84) <= v16)
  {
    v33 = v16;
  }

  else
  {
    v33 = *(v17 + 84);
  }

  if (a3 <= v33)
  {
    v34 = 0;
  }

  else if (v32 <= 3)
  {
    v38 = ((a3 - v33 + ~(-1 << (8 * v32))) >> (8 * v32)) + 1;
    if (HIWORD(v38))
    {
      v34 = 4;
    }

    else
    {
      if (v38 < 0x100)
      {
        v39 = 1;
      }

      else
      {
        v39 = 2;
      }

      if (v38 >= 2)
      {
        v34 = v39;
      }

      else
      {
        v34 = 0;
      }
    }
  }

  else
  {
    v34 = 1;
  }

  result = a1;
  if (v33 < a2)
  {
    v36 = ~v33 + a2;
    if (v32 >= 4)
    {
      bzero(a1, v32);
      result = a1;
      *a1 = v36;
      v37 = 1;
      if (v34 > 1)
      {
        goto LABEL_24;
      }

      goto LABEL_57;
    }

    v37 = (v36 >> (8 * v32)) + 1;
    if (v32)
    {
      v40 = v36 & ~(-1 << (8 * v32));
      bzero(a1, v32);
      result = a1;
      if (v32 != 3)
      {
        if (v32 == 2)
        {
          *a1 = v40;
          if (v34 > 1)
          {
            goto LABEL_24;
          }
        }

        else
        {
          *a1 = v36;
          if (v34 > 1)
          {
LABEL_24:
            if (v34 == 2)
            {
              *&result[v32] = v37;
            }

            else
            {
              *&result[v32] = v37;
            }

            return result;
          }
        }

LABEL_57:
        if (v34)
        {
          result[v32] = v37;
        }

        return result;
      }

      *a1 = v40;
      a1[2] = BYTE2(v40);
    }

    if (v34 > 1)
    {
      goto LABEL_24;
    }

    goto LABEL_57;
  }

  if (v34 > 1)
  {
    if (v34 != 2)
    {
      *&a1[v32] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_45;
    }

    *&a1[v32] = 0;
  }

  else if (v34)
  {
    a1[v32] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_45;
  }

  if (!a2)
  {
    return result;
  }

LABEL_45:
  if (v4 == v33)
  {
    v41 = *(v51 + 56);
    goto LABEL_65;
  }

  if (v6 == v33)
  {
    v41 = *(v50 + 56);
    result = (&a1[v30] & ~v19);
    goto LABEL_65;
  }

  result = (((&a1[v30] & ~v19) + v20 + v21) & ~v21);
  if (v49 == v33)
  {
    v42 = v48;
LABEL_64:
    v41 = *(v42 + 56);
LABEL_65:

    return v41(result);
  }

  result = (&result[v22 + v23] & ~v23);
  if (v47 == v33)
  {
    v42 = v46;
    goto LABEL_64;
  }

  v43 = &result[v24 + v25] & ~v25;
  if (v45 != v33)
  {
    result = ((v31 + v43) & ~v27);
    if (v15 == v33)
    {
      v41 = *(v14 + 56);
    }

    else
    {
      v41 = *(v17 + 56);
      result = (&result[v28 + v29] & ~v29);
    }

    return v41(result);
  }

  v44 = *(v12 + 56);

  return v44(v43);
}

uint64_t sub_100075AC0()
{
  v1[2] = v0;
  v2 = sub_10007AE2C();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  sub_10007B32C();
  v1[6] = sub_10007B31C();
  v4 = sub_10007B2EC();
  v1[7] = v4;
  v1[8] = v3;

  return _swift_task_switch(sub_100075BB4, v4, v3);
}

uint64_t sub_100075BB4(uint64_t a1)
{
  *(v1 + 72) = 10;
  sub_10007AE0C();

  v2 = sub_10007AE1C();
  v3 = sub_10007B41C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 67109376;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10007AF3C();

    *(v4 + 4) = *(v1 + 89) != 2;

    *(v4 + 8) = 2048;
    *(v4 + 10) = 10;
    _os_log_impl(&_mh_execute_header, v2, v3, "waitForCurrentUserInvitingFromShare completed: %{BOOL}d, retriesLeft: %ld", v4, 0x12u);
  }

  else
  {
  }

  (*(*(v1 + 32) + 8))(*(v1 + 40), *(v1 + 24));
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10007AF3C();

  if (*(v1 + 88) == 2)
  {
    v5 = swift_task_alloc();
    *(v1 + 80) = v5;
    *v5 = v1;
    v5[1] = sub_100075E20;

    return static Task<>.sleep(nanoseconds:)(10000000);
  }

  else
  {

    v6 = *(v1 + 8);

    return v6();
  }
}

uint64_t sub_100075E20()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 56);
    v4 = *(v2 + 64);
    v5 = sub_10007AA18;
  }

  else
  {
    v3 = *(v2 + 56);
    v4 = *(v2 + 64);
    v5 = sub_100075F44;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_100075F44(uint64_t a1)
{
  v2 = *(v1 + 72);
  v3 = v2 - 1;
  if (v2 == 1)
  {

    sub_100005AB8();
    swift_allocError();
    *v10 = 0xD000000000000026;
    *(v10 + 8) = 0x8000000100083800;
    *(v10 + 16) = xmmword_100080220;
    *(v10 + 32) = 0x8000000100083830;
    *(v10 + 40) = 11;
    swift_willThrow();

    v8 = *(v1 + 8);
  }

  else
  {
    if (v2 < 2)
    {
      __break(1u);
      return static Task<>.sleep(nanoseconds:)(a1);
    }

    *(v1 + 72) = v3;
    sub_10007AE0C();

    v4 = sub_10007AE1C();
    v5 = sub_10007B41C();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 67109376;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_10007AF3C();

      *(v6 + 4) = *(v1 + 89) != 2;

      *(v6 + 8) = 2048;
      *(v6 + 10) = v3;
      _os_log_impl(&_mh_execute_header, v4, v5, "waitForCurrentUserInvitingFromShare completed: %{BOOL}d, retriesLeft: %ld", v6, 0x12u);
    }

    else
    {
    }

    (*(*(v1 + 32) + 8))(*(v1 + 40), *(v1 + 24));
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10007AF3C();

    if (*(v1 + 88) == 2)
    {
      v7 = swift_task_alloc();
      *(v1 + 80) = v7;
      *v7 = v1;
      v7[1] = sub_100075E20;
      a1 = 10000000;

      return static Task<>.sleep(nanoseconds:)(a1);
    }

    v8 = *(v1 + 8);
  }

  return v8();
}

uint64_t sub_100076258(char a1, uint64_t a2, char a3)
{
  *(v4 + 119) = a3;
  *(v4 + 24) = a2;
  *(v4 + 32) = v3;
  *(v4 + 118) = a1;
  v5 = sub_10007AE2C();
  *(v4 + 40) = v5;
  *(v4 + 48) = *(v5 - 8);
  *(v4 + 56) = swift_task_alloc();
  sub_10007B32C();
  *(v4 + 64) = sub_10007B31C();
  v7 = sub_10007B2EC();
  *(v4 + 72) = v7;
  *(v4 + 80) = v6;

  return _swift_task_switch(sub_100076354, v7, v6);
}

uint64_t sub_100076354()
{
  v70 = v0;
  v1 = *(v0 + 118);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10007AF3C();

  if (*(v0 + 112) == v1)
  {
    goto LABEL_6;
  }

  v2 = *(v0 + 118);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10007AF3C();

  v3 = *(v0 + 113);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 114) = v2;

  sub_10007AF4C();
  swift_getKeyPath();
  swift_getKeyPath();

  sub_10007AF3C();

  v4 = *(v0 + 16);
  *(v0 + 88) = v4;
  if (!v4)
  {
    goto LABEL_6;
  }

  swift_getKeyPath();
  swift_getKeyPath();

  sub_10007AF3C();

  if ((*(v0 + 115) & 1) == 0)
  {

    goto LABEL_7;
  }

  v5 = *(v0 + 118);
  v6 = [v4 publicPermission];
  if (v5 == 2)
  {
    goto LABEL_5;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_10007AF3C();

  if (*(v0 + 116) == 3)
  {
    goto LABEL_12;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_10007AF3C();

  if (*(v0 + 117) <= 1u)
  {
    if (!*(v0 + 117))
    {
LABEL_5:
      v7 = 1;
      goto LABEL_13;
    }

LABEL_12:
    v7 = 3;
    goto LABEL_13;
  }

  if (*(v0 + 117) != 2)
  {
    v50 = 0xD000000000000044;
    v51 = "icipants/SharingOptions.swift";
    v52 = 107;
    return sub_10007B63C("Fatal error", 11, 2, v50, v51 | 0x8000000000000000, "com_apple_CloudSharingUI_AddParticipants/SharingOptions.swift", 61, 2, v52, 0);
  }

  v7 = 2;
LABEL_13:
  sub_10007AE0C();
  v10 = sub_10007AE1C();
  v11 = sub_10007B41C();
  if (!os_log_type_enabled(v10, v11))
  {
    v18 = *(v0 + 48);
    v17 = *(v0 + 56);
    v19 = *(v0 + 40);

    (*(v18 + 8))(v17, v19);
    if (v7 != v6)
    {
      goto LABEL_44;
    }

    goto LABEL_48;
  }

  v12 = *(v0 + 118);
  v13 = swift_slowAlloc();
  v14 = swift_slowAlloc();
  *v13 = 136316162;
  v68 = v6;
  v69 = v14;
  v67 = v7;
  if (v12)
  {
    if (v12 == 1)
    {
      v15 = 0x4D63696C6275702ELL;
      v16 = 0xEB0000000065646FLL;
    }

    else
    {
      v15 = 0x657461766972702ELL;
      v16 = 0xEC00000065646F4DLL;
    }
  }

  else
  {
    v16 = 0xE500000000000000;
    v15 = 0x656E6F6E2ELL;
  }

  v20 = sub_100037C08(v15, v16, &v69);
  v16, v21, v22, v23, v24, v25, v26, v27;
  *(v13 + 4) = v20;
  *(v13 + 12) = 2080;
  if (v3)
  {
    if (v3 == 1)
    {
      v28 = 0x4D63696C6275702ELL;
      v29 = 0xEB0000000065646FLL;
    }

    else
    {
      v28 = 0x657461766972702ELL;
      v29 = 0xEC00000065646F4DLL;
    }
  }

  else
  {
    v29 = 0xE500000000000000;
    v28 = 0x656E6F6E2ELL;
  }

  v30 = sub_100037C08(v28, v29, &v69);
  v29, v31, v32, v33, v34, v35, v36, v37;
  *(v13 + 14) = v30;
  *(v13 + 22) = 2080;
  if (v68 == 1)
  {
    v39 = 0xE500000000000000;
    v38 = 0x656E6F6E2ELL;
  }

  else
  {
    if (v68 != 2)
    {
      if (v68 == 3)
      {
        v38 = 0x697257646165722ELL;
        v39 = 0xEA00000000006574;
        goto LABEL_37;
      }

      v50 = 0xD00000000000006FLL;
      v51 = "allowAccessRequestsSPIOverride";
      v52 = 94;
      return sub_10007B63C("Fatal error", 11, 2, v50, v51 | 0x8000000000000000, "com_apple_CloudSharingUI_AddParticipants/SharingOptions.swift", 61, 2, v52, 0);
    }

    v38 = 0x6C6E4F646165722ELL;
    v39 = 0xE900000000000079;
  }

LABEL_37:
  v40 = sub_100037C08(v38, v39, &v69);
  v39, v41, v42, v43, v44, v45, v46, v47;
  *(v13 + 24) = v40;
  *(v13 + 32) = 2080;
  if (v67 == 1)
  {
    v49 = 0xE500000000000000;
    v48 = 0x656E6F6E2ELL;
  }

  else if (v67 == 2)
  {
    v48 = 0x6C6E4F646165722ELL;
    v49 = 0xE900000000000079;
  }

  else
  {
    v48 = 0x697257646165722ELL;
    v49 = 0xEA00000000006574;
  }

  v53 = *(v0 + 48);
  v66 = *(v0 + 56);
  v54 = *(v0 + 40);
  v55 = *(v0 + 119);
  v56 = sub_100037C08(v48, v49, &v69);
  v49, v57, v58, v59, v60, v61, v62, v63;
  *(v13 + 34) = v56;
  *(v13 + 42) = 1024;
  *(v13 + 44) = v55;
  _os_log_impl(&_mh_execute_header, v10, v11, "changeAccessSetting for newAccess: %s, oldAccess: %s oldSharePermission: %s,\nnewSharePermission: %s, saveShare: %{BOOL}d", v13, 0x30u);
  swift_arrayDestroy();

  (*(v53 + 8))(v66, v54);
  v7 = v67;
  if (v67 != v68)
  {
LABEL_44:
    v64 = *(v0 + 119);
    [v4 setPublicPermission:v7];
    if (v64 == 1)
    {
      v65 = swift_task_alloc();
      *(v0 + 96) = v65;
      *v65 = v0;
      v65[1] = sub_100076B00;

      return sub_10005B51C(1);
    }
  }

LABEL_48:

LABEL_6:

LABEL_7:

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_100076B00()
{
  v2 = *v1;
  *(*v1 + 104) = v0;

  v3 = *(v2 + 80);
  v4 = *(v2 + 72);
  if (v0)
  {
    v5 = sub_100076C3C;
  }

  else
  {
    v5 = sub_1000596FC;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100076C3C()
{
  v1 = *(v0 + 88);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100076CB0(char a1, uint64_t a2, char a3, char a4)
{
  *(v5 + 118) = a4;
  *(v5 + 117) = a3;
  *(v5 + 24) = a2;
  *(v5 + 32) = v4;
  *(v5 + 116) = a1;
  v6 = sub_10007AE2C();
  *(v5 + 40) = v6;
  *(v5 + 48) = *(v6 - 8);
  *(v5 + 56) = swift_task_alloc();
  sub_10007B32C();
  *(v5 + 64) = sub_10007B31C();
  v8 = sub_10007B2EC();
  *(v5 + 72) = v8;
  *(v5 + 80) = v7;

  return _swift_task_switch(sub_100076DB0, v8, v7);
}

void sub_100076DB0()
{
  v63 = v0;
  v1 = *(v0 + 116);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10007AF3C();

  if (*(v0 + 112) == v1)
  {
    goto LABEL_19;
  }

  v2 = *(v0 + 116);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 113) = v2;

  sub_10007AF4C();
  swift_getKeyPath();
  swift_getKeyPath();

  sub_10007AF3C();

  v3 = *(v0 + 16);
  *(v0 + 88) = v3;
  if (!v3)
  {
    goto LABEL_19;
  }

  swift_getKeyPath();
  swift_getKeyPath();

  sub_10007AF3C();

  if ((*(v0 + 114) & 1) == 0)
  {

    goto LABEL_20;
  }

  v4 = v3;
  v5 = sub_10000CF38(v3);

  sub_10007AE0C();
  v6 = sub_10007AE1C();
  v7 = sub_10007B41C();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = 0x656E6F6E2ELL;
    v9 = *(v0 + 116);
    v10 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    *v10 = 136315906;
    v11 = 0xE500000000000000;
    v12 = 0x6C6E4F646165722ELL;
    v13 = 0xE900000000000079;
    if (v9 != 2)
    {
      v12 = 0x646578696D2ELL;
      v13 = 0xE600000000000000;
    }

    v14 = 0x697257646165722ELL;
    if (v9)
    {
      v11 = 0xEA00000000006574;
    }

    else
    {
      v14 = 0x656E6F6E2ELL;
    }

    if (v9 <= 1)
    {
      v15 = v14;
    }

    else
    {
      v15 = v12;
    }

    if (v9 <= 1)
    {
      v16 = v11;
    }

    else
    {
      v16 = v13;
    }

    v17 = sub_100037C08(v15, v16, &v62);
    v16, v18, v19, v20, v21, v22, v23, v24;
    *(v10 + 4) = v17;
    *(v10 + 12) = 2080;
    v60 = v5;
    if (v5 > 1u)
    {
      if (v5 == 2)
      {
        v8 = 0x6C6E4F646165722ELL;
        v25 = 0xE900000000000079;
      }

      else
      {
        v25 = 0xE600000000000000;
        v8 = 0x646578696D2ELL;
      }
    }

    else if (v5)
    {
      v8 = 0x697257646165722ELL;
      v25 = 0xEA00000000006574;
    }

    else
    {
      v25 = 0xE500000000000000;
    }

    v30 = *(v0 + 48);
    v58 = *(v0 + 40);
    v59 = *(v0 + 56);
    v31 = *(v0 + 118);
    v32 = *(v0 + 117);
    v33 = sub_100037C08(v8, v25, &v62);
    v25, v34, v35, v36, v37, v38, v39, v40;
    *(v10 + 14) = v33;
    *(v10 + 22) = 1024;
    *(v10 + 24) = v31;
    *(v10 + 28) = 1024;
    *(v10 + 30) = v32;
    _os_log_impl(&_mh_execute_header, v6, v7, "changeReadWritePermission newPermission: %s, oldSharePermission: %s,\nupdateExistingParticipants: %{BOOL}d, saveShare: %{BOOL}d", v10, 0x22u);
    swift_arrayDestroy();

    (*(v30 + 8))(v59, v58);
    v5 = v60;
  }

  else
  {
    v28 = *(v0 + 48);
    v27 = *(v0 + 56);
    v29 = *(v0 + 40);

    (*(v28 + 8))(v27, v29);
  }

  v41 = *(v0 + 116);
  if (v41 != v5)
  {
    if (*(v0 + 116) > 1u)
    {
      if (v41 != 2)
      {
        sub_10007B63C("Fatal error", 11, 2, 0xD000000000000044, 0x8000000100082580, "com_apple_CloudSharingUI_AddParticipants/SharingOptions.swift", 61, 2, 107, 0);
        return;
      }

      v42 = 1;
      v43 = 2;
    }

    else
    {
      v42 = 0;
      if (*(v0 + 116))
      {
        v43 = 3;
      }

      else
      {
        v43 = 1;
      }
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_10007AF3C();

    if (*(v0 + 115) == 1)
    {
      [v4 setPublicPermission:v43];
    }

    if (*(v0 + 118) != 1 || [v4 publicPermission] != 1)
    {
LABEL_55:
      if (*(v0 + 117) == 1)
      {
        v57 = swift_task_alloc();
        *(v0 + 96) = v57;
        *v57 = v0;
        v57[1] = sub_100077518;

        sub_10005B51C(1);
        return;
      }

      goto LABEL_59;
    }

    v44 = [v4 participants];
    sub_100005C8C(0, &qword_10009E600, CKShareParticipant_ptr);
    v45 = sub_10007B2AC();

    v61 = v4;
    if (v45 >> 62)
    {
      v53 = sub_10007B64C();
      if (v53)
      {
        goto LABEL_43;
      }
    }

    else
    {
      v53 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v53)
      {
LABEL_43:
        if (v53 < 1)
        {
          __break(1u);
          return;
        }

        for (i = 0; i != v53; ++i)
        {
          if ((v45 & 0xC000000000000001) != 0)
          {
            v55 = sub_10007B5DC();
          }

          else
          {
            v55 = *(v45 + 8 * i + 32);
          }

          v56 = v55;
          if ([v55 role] != 1)
          {
            [v56 setPermission:v43];
            if (v42)
            {
              [v56 setRole:3];
            }
          }
        }
      }
    }

    v45, v46, v47, v48, v49, v50, v51, v52;
    v4 = v61;
    goto LABEL_55;
  }

LABEL_59:

LABEL_19:

LABEL_20:

  v26 = *(v0 + 8);

  v26();
}

uint64_t sub_100077518()
{
  v2 = *v1;
  *(*v1 + 104) = v0;

  v3 = *(v2 + 80);
  v4 = *(v2 + 72);
  if (v0)
  {
    v5 = sub_10007AA14;
  }

  else
  {
    v5 = sub_10007AA10;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100077654(int a1)
{
  v3 = sub_10007AE2C();
  v4 = *(v3 - 8);
  result = __chkstk_darwin(v3);
  v7 = &v13[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = *(v1 + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12OptionsModel_allowAccessRequestsSPIOverride);
  if (v8 == 2 || ((v8 ^ a1) & 1) != 0)
  {
    v9 = a1 & 1;
    *(v1 + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12OptionsModel_allowAccessRequestsSPIOverride) = a1 & 1;
    swift_getKeyPath();
    swift_getKeyPath();
    v13[15] = a1 & 1;

    sub_10007AF4C();
    sub_10007AE0C();
    v10 = sub_10007AE1C();
    v11 = sub_10007B41C();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 67109120;
      *(v12 + 4) = v9;
      _os_log_impl(&_mh_execute_header, v10, v11, "changeRequestAccessAllowedForSPI newAccessAllowed: %{BOOL}d--this should be the final value set in the share", v12, 8u);
    }

    return (*(v4 + 8))(v7, v3);
  }

  return result;
}

void sub_100077834(_TtC40com_apple_CloudSharingUI_AddParticipants15InitiateSharing *a1)
{
  v2 = sub_10007AE2C();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v115 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v115 - v7;
  swift_getKeyPath();
  swift_getKeyPath();

  sub_10007AF3C();

  if (v118 != 1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10007AF3C();

    v32 = v118;
    v33 = sub_100018C60(v118, a1);
    v32, v34, v35, v36, v37, v38, v39, v40;
    if (v33)
    {
      return;
    }

    sub_10007AE0C();

    v41 = sub_10007AE1C();
    v42 = sub_10007B41C();

    a1, v43, v44, v45, v46, v47, v48, v49;
    if (!os_log_type_enabled(v41, v42))
    {

      (*(v3 + 8))(v6, v2);
      goto LABEL_66;
    }

    v50 = swift_slowAlloc();
    v118 = swift_slowAlloc();
    *v50 = 136315394;
    isa = a1[2].super.isa;
    if (!isa)
    {
      goto LABEL_69;
    }

    isa_low = LOBYTE(a1[4].super.isa);
    v116 = v3;
    if (isa_low == 1)
    {
      if (isa == 1)
      {
LABEL_77:
        __break(1u);
LABEL_78:
        __break(1u);
        goto LABEL_79;
      }

      if (BYTE1(a1[4].super.isa))
      {
        v53 = 7237422;
        v54 = 0xE300000000000000;
        goto LABEL_43;
      }

      v56 = 0;
    }

    else
    {
      if (isa == 1)
      {
LABEL_73:
        __break(1u);
LABEL_74:
        __break(1u);
        goto LABEL_75;
      }

      v56 = BYTE1(a1[4].super.isa);
    }

    v78 = isa_low ^ v56;
    if (v78)
    {
      v53 = 0x646578696D2ELL;
    }

    else
    {
      v53 = 1717989166;
    }

    if (v78)
    {
      v54 = 0xE600000000000000;
    }

    else
    {
      v54 = 0xE400000000000000;
    }

LABEL_43:
    v79 = sub_100037C08(v53, v54, &v118);
    v54, v80, v81, v82, v83, v84, v85, v86;
    *(v50 + 4) = v79;
    *(v50 + 12) = 2080;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10007AF3C();

    v94 = v117[2].super.isa;
    if (!v94)
    {
LABEL_71:
      __break(1u);
      goto LABEL_72;
    }

    v95 = LOBYTE(v117[4].super.isa);
    if (v95 == 1)
    {
      if (v94 == 1)
      {
LABEL_79:
        __break(1u);
        return;
      }

      if (BYTE1(v117[4].super.isa))
      {
        v117, v87, v88, v89, v90, v91, v92, v93;
        v96 = 7237422;
        v97 = 0xE300000000000000;
LABEL_65:
        v107 = sub_100037C08(v96, v97, &v118);
        v97, v108, v109, v110, v111, v112, v113, v114;
        *(v50 + 14) = v107;
        _os_log_impl(&_mh_execute_header, v41, v42, "For Co-owners changeNewParticipantsCanBeCoOwners, newState: %s, oldState: %s", v50, 0x16u);
        swift_arrayDestroy();

        (*(v116 + 8))(v6, v2);
        goto LABEL_66;
      }

      v98 = 0;
    }

    else
    {
      if (v94 == 1)
      {
LABEL_75:
        __break(1u);
        goto LABEL_76;
      }

      v98 = BYTE1(v117[4].super.isa);
    }

    v117, v87, v88, v89, v90, v91, v92, v93;
    if (v95 != v98)
    {
      v96 = 0x646578696D2ELL;
    }

    else
    {
      v96 = 1717989166;
    }

    if (v95 != v98)
    {
      v97 = 0xE600000000000000;
    }

    else
    {
      v97 = 0xE400000000000000;
    }

    goto LABEL_65;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_10007AF3C();

  v9 = v118;
  v10 = sub_100018C60(v118, a1);
  v9, v11, v12, v13, v14, v15, v16, v17;
  if (v10)
  {
    return;
  }

  sub_10007AE0C();

  v18 = sub_10007AE1C();
  v19 = sub_10007B41C();

  a1, v20, v21, v22, v23, v24, v25, v26;
  if (os_log_type_enabled(v18, v19))
  {
    v27 = swift_slowAlloc();
    v118 = swift_slowAlloc();
    *v27 = 136315394;
    v28 = a1[2].super.isa;
    if (v28)
    {
      v29 = LOBYTE(a1[4].super.isa);
      v116 = v3;
      if (v29 == 1)
      {
        if (v28 == 1)
        {
LABEL_76:
          __break(1u);
          goto LABEL_77;
        }

        if (BYTE1(a1[4].super.isa))
        {
          v30 = 7237422;
          v31 = 0xE300000000000000;
          goto LABEL_29;
        }

        v55 = 0;
      }

      else
      {
        if (v28 == 1)
        {
LABEL_72:
          __break(1u);
          goto LABEL_73;
        }

        v55 = BYTE1(a1[4].super.isa);
      }

      v57 = v29 ^ v55;
      if (v57)
      {
        v30 = 0x646578696D2ELL;
      }

      else
      {
        v30 = 1717989166;
      }

      if (v57)
      {
        v31 = 0xE600000000000000;
      }

      else
      {
        v31 = 0xE400000000000000;
      }

LABEL_29:
      v58 = sub_100037C08(v30, v31, &v118);
      v31, v59, v60, v61, v62, v63, v64, v65;
      *(v27 + 4) = v58;
      *(v27 + 12) = 2080;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_10007AF3C();

      v73 = v117[2].super.isa;
      if (v73)
      {
        v74 = LOBYTE(v117[4].super.isa);
        if (v74 == 1)
        {
          if (v73 != 1)
          {
            if (BYTE1(v117[4].super.isa))
            {
              v117, v66, v67, v68, v69, v70, v71, v72;
              v75 = 7237422;
              v76 = 0xE300000000000000;
LABEL_57:
              v99 = sub_100037C08(v75, v76, &v118);
              v76, v100, v101, v102, v103, v104, v105, v106;
              *(v27 + 14) = v99;
              _os_log_impl(&_mh_execute_header, v18, v19, "changeNewParticipantsCanBeCoOwners 4 newState: %s, oldState: %s", v27, 0x16u);
              swift_arrayDestroy();

              (*(v116 + 8))(v8, v2);
              goto LABEL_66;
            }

            v77 = 0;
LABEL_51:
            v117, v66, v67, v68, v69, v70, v71, v72;
            if (v74 != v77)
            {
              v75 = 0x646578696D2ELL;
            }

            else
            {
              v75 = 1717989166;
            }

            if (v74 != v77)
            {
              v76 = 0xE600000000000000;
            }

            else
            {
              v76 = 0xE400000000000000;
            }

            goto LABEL_57;
          }

          goto LABEL_78;
        }

        if (v73 != 1)
        {
          v77 = BYTE1(v117[4].super.isa);
          goto LABEL_51;
        }

        goto LABEL_74;
      }

      goto LABEL_70;
    }

    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  (*(v3 + 8))(v8, v2);
LABEL_66:
  swift_getKeyPath();
  swift_getKeyPath();
  v118 = a1;

  sub_10007AF4C();
}

uint64_t sub_100078014()
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_10007AF3C();

  if (v10 == 1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10007AF3C();

    result = v10;
    v8 = *(v10 + 16);
    if (!v8)
    {
      __break(1u);
      goto LABEL_17;
    }

    if (*(v10 + 32) != 1)
    {
      if (v8 != 1)
      {
        goto LABEL_14;
      }

      __break(1u);
      goto LABEL_13;
    }

    if (v8 != 1)
    {
      goto LABEL_9;
    }

    __break(1u);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_10007AF3C();

  result = v10;
  v8 = *(v10 + 16);
  if (!v8)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (*(v10 + 32) != 1)
  {
LABEL_13:
    if (v8 != 1)
    {
      goto LABEL_14;
    }

    goto LABEL_18;
  }

  if (v8 != 1)
  {
LABEL_9:
    if (*(result + 33))
    {
      v9 = 1;
LABEL_15:
      result, v0, v1, v2, v3, v4, v5, v6;
      return v9;
    }

LABEL_14:
    v9 = 0;
    goto LABEL_15;
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_1000781B4(unsigned __int8 a1)
{
  v1 = a1;
  v2 = sub_10007AE2C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10007AF3C();

  if (v38 != v1)
  {
    sub_10007AE0C();

    v7 = sub_10007AE1C();
    v8 = sub_10007B41C();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v36 = v34;
      *v9 = 136315394;
      v10 = 0x4D63696C6275702ELL;
      v11 = 0xEB0000000065646FLL;
      if (v1 != 1)
      {
        v10 = 0x657461766972702ELL;
        v11 = 0xEC00000065646F4DLL;
      }

      if (v1)
      {
        v12 = v10;
      }

      else
      {
        v12 = 0x656E6F6E2ELL;
      }

      if (v1)
      {
        v13 = v11;
      }

      else
      {
        v13 = 0xE500000000000000;
      }

      v14 = sub_100037C08(v12, v13, &v36);
      v13, v15, v16, v17, v18, v19, v20, v21;
      *(v9 + 4) = v14;
      *(v9 + 12) = 2080;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_10007AF3C();

      v22 = 0x4D63696C6275702ELL;
      v23 = 0xEB0000000065646FLL;
      if (v35 != 1)
      {
        v22 = 0x657461766972702ELL;
        v23 = 0xEC00000065646F4DLL;
      }

      if (v35)
      {
        v24 = v22;
      }

      else
      {
        v24 = 0x656E6F6E2ELL;
      }

      if (v35)
      {
        v25 = v23;
      }

      else
      {
        v25 = 0xE500000000000000;
      }

      v26 = sub_100037C08(v24, v25, &v36);
      v25, v27, v28, v29, v30, v31, v32, v33;
      *(v9 + 14) = v26;
      _os_log_impl(&_mh_execute_header, v7, v8, "updateAccessModeOnly for newAccess: %s, oldAccess: %s", v9, 0x16u);
      swift_arrayDestroy();
    }

    (*(v3 + 8))(v5, v2);
    swift_getKeyPath();
    swift_getKeyPath();
    v37 = v1;

    return sub_10007AF4C();
  }

  return result;
}

uint64_t sub_100078534(unsigned __int8 a1)
{
  v1 = a1;
  v2 = sub_10007AE2C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10007AF3C();

  if (v42 != v1)
  {
    sub_10007AE0C();

    v7 = sub_10007AE1C();
    v8 = sub_10007B41C();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v40 = v38;
      *v9 = 136315394;
      v10 = 0xE500000000000000;
      v11 = 0x6C6E4F646165722ELL;
      v12 = 0xE900000000000079;
      if (v1 != 2)
      {
        v11 = 0x646578696D2ELL;
        v12 = 0xE600000000000000;
      }

      v13 = 0x697257646165722ELL;
      if (v1)
      {
        v10 = 0xEA00000000006574;
      }

      else
      {
        v13 = 0x656E6F6E2ELL;
      }

      if (v1 <= 1)
      {
        v14 = v13;
      }

      else
      {
        v14 = v11;
      }

      if (v1 <= 1)
      {
        v15 = v10;
      }

      else
      {
        v15 = v12;
      }

      v16 = sub_100037C08(v14, v15, &v40);
      v15, v17, v18, v19, v20, v21, v22, v23;
      *(v9 + 4) = v16;
      *(v9 + 12) = 2080;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_10007AF3C();

      v24 = 0xE500000000000000;
      v25 = 0x6C6E4F646165722ELL;
      v26 = 0xE900000000000079;
      if (v39 != 2)
      {
        v25 = 0x646578696D2ELL;
        v26 = 0xE600000000000000;
      }

      v27 = 0x697257646165722ELL;
      if (v39)
      {
        v24 = 0xEA00000000006574;
      }

      else
      {
        v27 = 0x656E6F6E2ELL;
      }

      if (v39 <= 1u)
      {
        v28 = v27;
      }

      else
      {
        v28 = v25;
      }

      if (v39 <= 1u)
      {
        v29 = v24;
      }

      else
      {
        v29 = v26;
      }

      v30 = sub_100037C08(v28, v29, &v40);
      v29, v31, v32, v33, v34, v35, v36, v37;
      *(v9 + 14) = v30;
      _os_log_impl(&_mh_execute_header, v7, v8, "updatePermissionsOnly newAccess: %s, oldAccess: %s", v9, 0x16u);
      swift_arrayDestroy();
    }

    (*(v3 + 8))(v5, v2);
    swift_getKeyPath();
    swift_getKeyPath();
    v41 = v1;

    return sub_10007AF4C();
  }

  return result;
}

uint64_t sub_100078954()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10007AF3C();

  return v1;
}

uint64_t sub_1000789F0@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10007AF3C();

  *a2 = v4;
  return result;
}

uint64_t sub_100078A70(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_10007AF4C();
}

uint64_t sub_100078AEC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10007AF3C();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_10007AF3C();

  v1 = *(v0 + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12OptionsModel_allowAccessRequestsSPIOverride);
  if (v1 == 2)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10007AF3C();

    LOBYTE(v1) = v3;
  }

  if (v1)
  {
    goto LABEL_6;
  }

  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100057F40();

LABEL_6:
    swift_getKeyPath();
    swift_getKeyPath();

    return sub_10007AF4C();
  }

  __break(1u);
  return result;
}

void sub_100078C7C(void **a1, uint64_t a2)
{
  v3 = sub_10007AE2C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    if (v7)
    {
      v8 = v7;
      if ([v8 publicPermission] == 1)
      {
        v9 = 2;
      }

      else
      {
        v9 = 1;
      }

      swift_getKeyPath();
      swift_getKeyPath();
      HIBYTE(v22) = v9;

      sub_10007AF4C();
      v10 = v8;
      v11 = sub_10000CF38(v7);

      swift_getKeyPath();
      swift_getKeyPath();
      HIBYTE(v22) = v11;

      sub_10007AF4C();
      sub_10007AE0C();
      v12 = v10;
      v13 = sub_10007AE1C();
      v14 = sub_10007B41C();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 67109120;
        *(v15 + 4) = [v12 allowsAccessRequests];

        _os_log_impl(&_mh_execute_header, v13, v14, "optionsModel ckShareModel.$ckShare about to set anyoneCanRequestAccessPublisher to ckShare's allowsAccessRequests: %{BOOL}d", v15, 8u);
      }

      else
      {

        v13 = v12;
      }

      (*(v4 + 8))(v6, v3);
      v16 = [v12 allowsAccessRequests];
      swift_getKeyPath();
      swift_getKeyPath();
      HIBYTE(v22) = v16;

      sub_10007AF4C();
      v17 = [v12 currentUserParticipant];
      if (v17)
      {
        v18 = v17;
        v19 = [v17 role];
        sub_100005C8C(0, &unk_10009F380, NSObject_ptr);
        v20 = [v12 owner];
        v21 = sub_10007B51C();

        swift_getKeyPath();
        swift_getKeyPath();
        HIBYTE(v22) = v21 & 1 | (v19 == 2);

        sub_10007AF4C();
      }

      sub_100078AEC();
    }

    else
    {
    }
  }
}

uint64_t sub_10007902C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10007AF3C();

    v4 = sub_1000791A8(v5, v2);
    swift_getKeyPath();
    swift_getKeyPath();

    sub_10007AF4C();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10007AF3C();

    sub_100079230(v4, v2);
    swift_getKeyPath();
    swift_getKeyPath();
    return sub_10007AF4C();
  }

  return result;
}

uint64_t sub_1000791A8(unsigned __int8 a1, uint64_t a2)
{
  v2 = a1;
  v3 = a2 & 0xC;
  result = (a2 >> 1) & 2;
  do
  {
    while (v2 > 1)
    {
      if (v2 == 2)
      {
        v2 = 1;
        if (v3 != 8)
        {
          return result;
        }
      }

      else
      {
        if (v3 == 12)
        {
          return 3;
        }

LABEL_11:
        if ((a2 & 8) != 0)
        {
          v5 = v2 == 1;
          v2 = 1;
          if (v5)
          {
            return 0;
          }
        }

        else
        {
          v5 = v2 == 2;
          v2 = 2;
          if (v5)
          {
            return 0;
          }
        }
      }
    }

    if (!v2)
    {
      if (!a2)
      {
        return 0;
      }

      goto LABEL_11;
    }

    v2 = 2;
  }

  while ((a2 & 8) == 0);
  return 1;
}

uint64_t sub_100079230(char a1, uint64_t a2)
{
  if ((a2 & 2) != 0)
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  if ((a2 & 1u) <= (a2 == 0))
  {
    result = a2 == 0;
  }

  else
  {
    result = a2 & 1;
  }

  do
  {
    while (a1)
    {
      if (a1 == 1)
      {
        a1 = 2;
        if ((a2 & 3) != 2)
        {
          return result;
        }
      }

      else
      {
        a1 = 1;
        if (a2 == 0 || (a2 & 2) != 0)
        {
          return 2;
        }
      }
    }

    a1 = v3;
  }

  while (a2);
  return 0;
}

uint64_t sub_1000792A4()
{
  v1 = OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12OptionsModel__readWritePermission;
  v2 = sub_1000057A0(&qword_10009F200, &qword_10007EDD8);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12OptionsModel__sharingMode;
  v4 = sub_1000057A0(&qword_10009F218, &qword_10007EDE0);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12OptionsModel__sharingOptionsAllowed;
  v6 = sub_1000057A0(&qword_10009F0D0, &qword_10007ED28);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12OptionsModel__allowCoOwnersEditing;
  v8 = sub_1000057A0(&qword_10009E650, &qword_10007ED80);
  v9 = *(*(v8 - 8) + 8);
  v9(v0 + v7, v8);
  v10 = OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12OptionsModel__newParticipantsCanBeCoOwners;
  v11 = sub_1000057A0(&qword_10009F1E0, &qword_10007EDD0);
  v12 = *(*(v11 - 8) + 8);
  v12(v0 + v10, v11);
  v9(v0 + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12OptionsModel__participantsAreAlwaysCoOwners, v8);
  v13 = OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12OptionsModel__currentUserCanInvitePublisher;
  v14 = sub_1000057A0(&qword_10009F928, &qword_100080270);
  (*(*(v14 - 8) + 8))(v0 + v13, v14);
  v9(v0 + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12OptionsModel__currentUserCanManageAccessRequestsPublisher, v8);
  v9(v0 + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12OptionsModel__anyoneCanRequestAccessPublisher, v8);
  v12(v0 + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12OptionsModel__coOwnerNewParticipantsCanBeCoOwners, v11);

  *(v0 + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12OptionsModel_store), v15, v16, v17, v18, v19, v20, v21;
  return v0;
}

uint64_t sub_10007953C()
{
  sub_1000792A4();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for OptionsModel(uint64_t a1)
{
  result = qword_10009F820;
  if (!qword_10009F820)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000795E8(uint64_t a1)
{
  sub_10000CE98(319, &qword_10009F830, &type metadata for SharePermission);
  if (v1 <= 0x3F)
  {
    sub_10000CE98(319, &qword_10009F838, &type metadata for SharingMode);
    if (v2 <= 0x3F)
    {
      sub_10000CE98(319, &qword_10009ECF0, &type metadata for SharingOptions);
      if (v3 <= 0x3F)
      {
        sub_10000CE98(319, &qword_10009EC80, &type metadata for Bool);
        if (v4 <= 0x3F)
        {
          sub_10000CE98(319, &qword_10009E4F0, &type metadata for TriStateBool);
          if (v5 <= 0x3F)
          {
            sub_100079824(319);
            if (v6 <= 0x3F)
            {
              swift_updateClassMetadata2();
            }
          }
        }
      }
    }
  }
}

void sub_100079824(uint64_t a1)
{
  if (!qword_10009F840)
  {
    sub_100004AD8(&unk_10009F848, "H\"");
    v1 = sub_10007AF5C();
    if (!v2)
    {
      atomic_store(v1, &qword_10009F840);
    }
  }
}

uint64_t sub_100079888@<X0>(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10007AF3C();

  *a2 = v4;
  return result;
}

uint64_t sub_100079908(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_10007AF4C();
}

char *sub_100079A54(uint64_t a1)
{
  v2 = v1;
  v76 = a1;
  v87 = *v1;
  v3 = sub_1000057A0(&qword_10009EF70, &unk_100080500);
  v79 = *(v3 - 8);
  v80 = v3;
  __chkstk_darwin(v3);
  v78 = &v62 - v4;
  v5 = sub_1000057A0(&qword_10009EF78, &qword_10007EBD0);
  v82 = *(v5 - 8);
  v83 = v5;
  __chkstk_darwin(v5);
  v81 = &v62 - v6;
  v7 = sub_1000057A0(&qword_10009F930, &qword_100080510);
  v85 = *(v7 - 8);
  v86 = v7;
  __chkstk_darwin(v7);
  v84 = &v62 - v8;
  v9 = sub_1000057A0(&qword_10009F028, &qword_10007EC80);
  __chkstk_darwin(v9 - 8);
  v77 = &v62 - v10;
  v72 = sub_1000057A0(&qword_10009F010, &qword_10007D630);
  v71 = *(v72 - 8);
  __chkstk_darwin(v72);
  v70 = &v62 - v11;
  v12 = sub_1000057A0(&qword_10009EFE0, &qword_10007EC38);
  v74 = *(v12 - 8);
  v75 = v12;
  __chkstk_darwin(v12);
  v73 = &v62 - v13;
  v69 = sub_1000057A0(&qword_10009F928, &qword_100080270);
  v68 = *(v69 - 8);
  __chkstk_darwin(v69);
  v67 = &v62 - v14;
  v88 = sub_1000057A0(&qword_10009F1E0, &qword_10007EDD0);
  v66 = *(v88 - 1);
  __chkstk_darwin(v88);
  v65 = &v62 - v15;
  v64 = sub_1000057A0(&qword_10009E650, &qword_10007ED80);
  v16 = *(v64 - 8);
  __chkstk_darwin(v64);
  v18 = &v62 - v17;
  v19 = sub_1000057A0(&qword_10009F218, &qword_10007EDE0);
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v62 - v21;
  v23 = sub_1000057A0(&qword_10009F200, &qword_10007EDD8);
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v26 = &v62 - v25;
  v27 = OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12OptionsModel__readWritePermission;
  LOBYTE(v90) = 1;
  sub_10007AF0C();
  (*(v24 + 32))(&v2[v27], v26, v23);
  v28 = OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12OptionsModel__sharingMode;
  LOBYTE(v90) = 0;
  sub_10007AF0C();
  (*(v20 + 32))(&v2[v28], v22, v19);
  v29 = OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12OptionsModel__allowCoOwnersEditing;
  LOBYTE(v90) = 0;
  sub_10007AF0C();
  v30 = *(v16 + 32);
  v31 = v64;
  v30(&v2[v29], v18, v64);
  v32 = OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12OptionsModel__newParticipantsCanBeCoOwners;
  v90 = &off_100095760;
  v33 = v65;
  sub_10007AF0C();
  v66 = *(v66 + 32);
  (v66)(&v2[v32], v33, v88);
  v34 = OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12OptionsModel__participantsAreAlwaysCoOwners;
  LOBYTE(v90) = 0;
  sub_10007AF0C();
  v30(&v2[v34], v18, v31);
  v35 = OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12OptionsModel__currentUserCanInvitePublisher;
  LOBYTE(v90) = 2;
  sub_1000057A0(&unk_10009F848, "H\"");
  v36 = v67;
  sub_10007AF0C();
  (*(v68 + 32))(&v2[v35], v36, v69);
  v37 = OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12OptionsModel__currentUserCanManageAccessRequestsPublisher;
  LOBYTE(v90) = 0;
  sub_10007AF0C();
  v30(&v2[v37], v18, v31);
  v38 = OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12OptionsModel__anyoneCanRequestAccessPublisher;
  LOBYTE(v90) = 0;
  sub_10007AF0C();
  v30(&v2[v38], v18, v31);
  v39 = OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12OptionsModel__coOwnerNewParticipantsCanBeCoOwners;
  v90 = &off_100095788;
  sub_10007AF0C();
  (v66)(&v2[v39], v33, v88);
  v2[OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12OptionsModel_allowAccessRequestsSPIOverride] = 2;
  if (_swiftEmptyArrayStorage >> 62 && sub_10007B64C())
  {
    v40 = sub_1000606F8(_swiftEmptyArrayStorage);
  }

  else
  {
    v40 = &_swiftEmptySetSingleton;
  }

  v69 = OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12OptionsModel_store;
  *&v2[OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12OptionsModel_store] = v40;
  v41 = v76;
  *&v2[OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12OptionsModel_ckShareModel] = v76;
  swift_beginAccess();
  v89 = 15;

  sub_10007AF0C();
  swift_endAccess();
  swift_beginAccess();
  sub_1000057A0(&qword_10009E658, &qword_10007D670);
  v42 = v70;
  sub_10007AF1C();
  swift_endAccess();
  v88 = objc_opt_self();
  v43 = [v88 mainRunLoop];
  v90 = v43;
  v67 = sub_10007B53C();
  v44 = *(v67 - 1);
  v66 = *(v44 + 56);
  v68 = v44 + 56;
  v45 = v77;
  (v66)(v77, 1, 1, v67);
  v65 = sub_100005C8C(0, &qword_10009F1A8, NSRunLoop_ptr);
  v63 = &protocol conformance descriptor for Published<A>.Publisher;
  sub_10000D6F4(&qword_10009F1D0, &qword_10009F010, &qword_10007D630, &protocol conformance descriptor for Published<A>.Publisher);
  v64 = sub_10007A870();
  v47 = v72;
  v46 = v73;
  sub_10007AF9C();
  sub_10007A8D8(v45);

  (*(v71 + 8))(v42, v47);
  v48 = swift_allocObject();
  swift_weakInit();
  v49 = swift_allocObject();
  *(v49 + 16) = v48;
  *(v49 + 24) = v41;
  sub_10000D6F4(&qword_10009F250, &qword_10009EFE0, &qword_10007EC38, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);

  v50 = v75;
  sub_10007AFBC();

  (*(v74 + 8))(v46, v50);
  swift_beginAccess();
  sub_10007AECC();
  swift_endAccess();

  swift_beginAccess();
  sub_1000057A0(&qword_10009F0D0, &qword_10007ED28);
  v51 = v78;
  sub_10007AF1C();
  swift_endAccess();
  sub_10000D6F4(&qword_10009F2D0, &qword_10009EF70, &unk_100080500, v63);
  sub_1000669BC();
  v52 = v80;
  v53 = v81;
  sub_10007AFAC();
  (*(v79 + 8))(v51, v52);
  v54 = [v88 mainRunLoop];
  v90 = v54;
  (v66)(v45, 1, 1, v67);
  sub_10000D6F4(&unk_10009F310, &qword_10009EF78, &qword_10007EBD0, &protocol conformance descriptor for Publishers.RemoveDuplicates<A>);
  v55 = v83;
  v56 = v84;
  sub_10007AF9C();
  sub_10007A8D8(v45);

  (*(v82 + 8))(v53, v55);
  v57 = swift_allocObject();
  swift_weakInit();

  v58 = swift_allocObject();
  v59 = v87;
  *(v58 + 16) = v57;
  *(v58 + 24) = v59;
  sub_10000D6F4(&qword_10009F938, &qword_10009F930, &qword_100080510, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
  v60 = v86;
  sub_10007AFBC();

  (*(v85 + 8))(v56, v60);
  swift_beginAccess();
  sub_10007AECC();
  swift_endAccess();

  return v2;
}

unint64_t sub_10007A870()
{
  result = qword_10009F1B8;
  if (!qword_10009F1B8)
  {
    sub_100005C8C(255, &qword_10009F1A8, NSRunLoop_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009F1B8);
  }

  return result;
}

uint64_t sub_10007A8D8(uint64_t a1)
{
  v2 = sub_1000057A0(&qword_10009F028, &qword_10007EC80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10007A940()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10007A978()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10007A9C0()
{

  return _swift_deallocObject(v0, 32, 7);
}