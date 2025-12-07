uint64_t sub_100056C58()
{
  v24 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 128) = Strong;
  if (Strong)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 176) = 2;

    sub_1000C60A4();
    swift_getKeyPath();
    swift_getKeyPath();

    sub_1000C6094();

    v2 = *(v0 + 16);
    *(v0 + 136) = v2;
    if (v2)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1000C6094();

      swift_getKeyPath();
      swift_getKeyPath();
      sub_1000C6094();

      swift_getKeyPath();
      swift_getKeyPath();
      sub_1000C6094();

      if ((*(v0 + 179) & 0xFE) == 8)
      {
        v3 = 0;
      }

      else
      {
        v3 = sub_10003AB60();
      }

      *(v0 + 144) = v3;
      v18 = sub_1000B2C00();
      *(v0 + 152) = v19;
      v20 = swift_task_alloc();
      *(v0 + 160) = v20;
      *v20 = v0;
      v20[1] = sub_1000571E8;
      v21 = *(v0 + 96);

      return sub_10001FEC4(v21, v2, v3, v18 & 0x101FFFFFFFFFFLL);
    }

    sub_1000100B0();
    v5 = swift_allocError();
    *v6 = xmmword_1000CFEF0;
    *(v6 + 16) = xmmword_1000CFF00;
    *(v6 + 32) = 0x80000001000DA7F0;
    *(v6 + 40) = 11;
    swift_willThrow();
    swift_unknownObjectRelease();
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 177) = 0;

    sub_1000C60A4();
    sub_1000C5F54();
    swift_errorRetain();
    v7 = sub_1000C5F64();
    v8 = sub_1000C6FD4();

    v9 = os_log_type_enabled(v7, v8);
    v10 = *(v0 + 56);
    v22 = *(v0 + 64);
    v11 = *(v0 + 48);
    if (v9)
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v23 = v13;
      *v12 = 136315138;
      *(v0 + 24) = v5;
      swift_errorRetain();
      sub_10000FEB8(&qword_1001179B0, &qword_1000CBB80);
      v14 = sub_1000C6D94();
      v16 = sub_100071844(v14, v15, &v23);

      *(v12 + 4) = v16;
      _os_log_impl(&_mh_execute_header, v7, v8, "stopSharing error: %s", v12, 0xCu);
      sub_100010544(v13);
    }

    (*(v10 + 8))(v22, v11);
    swift_willThrow();

    v4 = *(v0 + 8);
  }

  else
  {

    v4 = *(v0 + 8);
  }

  return v4();
}

uint64_t sub_1000571E8()
{
  v2 = *v1;
  (*v1)[21] = v0;

  v3 = v2[18];
  sub_100010F24(v2[12], &qword_100116260, &qword_1000CD940);

  v4 = v2[15];
  v5 = v2[14];
  if (v0)
  {
    v6 = sub_100057750;
  }

  else
  {
    v6 = sub_100057388;
  }

  return _swift_task_switch(v6, v5, v4);
}

uint64_t sub_100057388()
{
  v2 = *(v0 + 80);
  v1 = *(v0 + 88);

  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 32) = 0;
  swift_retain_n();
  sub_1000C60A4();
  v3 = sub_1000C5D84();
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100017574(v1, v2, &qword_100116260, &qword_1000CD940);

  sub_1000C60A4();
  sub_100010F24(v1, &qword_100116260, &qword_1000CD940);

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 181) = 0;

  sub_1000C60A4();
  sub_1000C5F54();

  v4 = sub_1000C5F64();
  v5 = sub_1000C6FF4();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 67109120;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1000C6094();

    *(v6 + 4) = (*(v0 + 182) & 0xFE) != 8;

    _os_log_impl(&_mh_execute_header, v4, v5, "stopSharing succeeded. Is CloudKit Sharing: %{BOOL}d", v6, 8u);
  }

  else
  {
  }

  (*(*(v0 + 56) + 8))(*(v0 + 72), *(v0 + 48));
  sub_10000816C();
  v7 = sub_1000077D8();
  if (v7)
  {
    [v7 _shareWasMadePrivate];
    swift_unknownObjectRelease();
  }

  v8 = sub_1000077D8();
  v9 = *(v0 + 136);
  if (v8)
  {
    [v8 _dismissViewControllerWithError:0];

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
  }

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_100057750()
{
  v19 = v0;
  v1 = *(v0 + 136);

  swift_unknownObjectRelease();

  v2 = *(v0 + 168);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 177) = 0;

  sub_1000C60A4();
  sub_1000C5F54();
  swift_errorRetain();
  v3 = sub_1000C5F64();
  v4 = sub_1000C6FD4();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 56);
    v17 = *(v0 + 64);
    v6 = *(v0 + 48);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v18 = v8;
    *v7 = 136315138;
    *(v0 + 24) = v2;
    swift_errorRetain();
    sub_10000FEB8(&qword_1001179B0, &qword_1000CBB80);
    v9 = sub_1000C6D94();
    v11 = sub_100071844(v9, v10, &v18);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v3, v4, "stopSharing error: %s", v7, 0xCu);
    sub_100010544(v8);

    (*(v5 + 8))(v17, v6);
  }

  else
  {
    v13 = *(v0 + 56);
    v12 = *(v0 + 64);
    v14 = *(v0 + 48);

    (*(v13 + 8))(v12, v14);
  }

  swift_willThrow();

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_1000579C0(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  v4 = sub_1000C5F74();
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  v3[12] = sub_1000C6F14();
  v3[13] = sub_1000C6F04();
  v6 = sub_1000C6ED4();
  v3[14] = v6;
  v3[15] = v5;

  return _swift_task_switch(sub_100057AD4, v6, v5);
}

uint64_t sub_100057AD4(uint64_t a1)
{
  v41 = v1;
  sub_1000C5F54();
  v2 = sub_1000C5F64();
  v3 = sub_1000C6FB4();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v1 + 88);
  v6 = *(v1 + 56);
  v7 = *(v1 + 64);
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v40[0] = v9;
    *v8 = 136446210;
    *(v8 + 4) = sub_100071844(0xD00000000000001ELL, 0x80000001000DB6A0, v40);
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s Start", v8, 0xCu);
    sub_100010544(v9);
  }

  v10 = *(v7 + 8);
  v10(v5, v6);
  *(v1 + 128) = v10;
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1000C6094();

  v11 = *(v1 + 16);
  *(v1 + 136) = v11;
  if (v11)
  {

    *(v1 + 192) = sub_100019C78() & 1;

    v12 = sub_10003AB60();
    *(v1 + 144) = v12;
    v16 = v12;
    v17 = *(v1 + 32);
    sub_1000C5F54();
    v18 = v17;
    v19 = sub_1000C5F64();
    v20 = sub_1000C6FF4();

    v21 = os_log_type_enabled(v19, v20);
    v22 = *(v1 + 80);
    v23 = *(v1 + 56);
    if (v21)
    {
      v39 = *(v1 + 80);
      v24 = *(v1 + 32);
      v38 = *(v1 + 56);
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v40[0] = v27;
      *v25 = 136446466;
      *(v25 + 4) = sub_100071844(0xD00000000000001ELL, 0x80000001000DB6A0, v40);
      *(v25 + 12) = 2112;
      *(v25 + 14) = v24;
      *v26 = v24;
      v28 = v24;
      _os_log_impl(&_mh_execute_header, v19, v20, "%{public}s approving requester: %@", v25, 0x16u);
      sub_100010F24(v26, &qword_100117080, &unk_1000CC350);

      sub_100010544(v27);

      v29 = v38;
      v30 = v39;
    }

    else
    {

      v30 = v22;
      v29 = v23;
    }

    v10(v30, v29);
    v31 = [*(v1 + 32) userIdentity];
    v32 = [v31 lookupInfo];
    *(v1 + 152) = v32;

    if (v32)
    {
      v33 = sub_1000C6F04();
      *(v1 + 160) = v33;
      v34 = swift_task_alloc();
      *(v1 + 168) = v34;
      *(v34 + 16) = v32;
      *(v34 + 24) = v16;
      v35 = swift_task_alloc();
      *(v1 + 176) = v35;
      v36 = sub_100010778(0, &qword_100117010, CKShareParticipant_ptr);
      *v35 = v1;
      v35[1] = sub_1000580B4;

      return withCheckedThrowingContinuation<A>(isolation:function:_:)(v1 + 24, v33, &protocol witness table for MainActor, 0xD00000000000001ELL, 0x80000001000DB6A0, sub_10007B618, v34, v36);
    }

    sub_1000100B0();
    swift_allocError();
    *v37 = 0xD00000000000001ELL;
    *(v37 + 8) = 0x80000001000DB6A0;
    *(v37 + 16) = xmmword_1000CFF10;
    *(v37 + 32) = 0x80000001000DB700;
    *(v37 + 40) = 11;
    swift_willThrow();
  }

  else
  {

    sub_1000100B0();
    swift_allocError();
    *v13 = 0xD00000000000001ELL;
    *(v13 + 8) = 0x80000001000DB6A0;
    *(v13 + 16) = xmmword_1000CFF20;
    *(v13 + 32) = 0x80000001000DB6C0;
    *(v13 + 40) = 11;
    swift_willThrow();
  }

  sub_100064604();

  v14 = *(v1 + 8);

  return v14();
}

uint64_t sub_1000580B4()
{
  v2 = *v1;
  *(*v1 + 184) = v0;

  if (v0)
  {
    v3 = *(v2 + 112);
    v4 = *(v2 + 120);
    v5 = sub_1000584C0;
  }

  else
  {

    v3 = *(v2 + 112);
    v4 = *(v2 + 120);
    v5 = sub_1000581D8;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_1000581D8()
{
  v28 = v0;

  v1 = *(v0 + 24);
  sub_1000C5F54();
  v2 = v1;
  v3 = sub_1000C5F64();
  v4 = sub_1000C6FB4();

  if (os_log_type_enabled(v3, v4))
  {
    v25 = *(v0 + 72);
    v26 = *(v0 + 128);
    v24 = *(v0 + 56);
    v5 = 2;
    if (!*(v0 + 192))
    {
      v5 = 3;
    }

    v22 = v5;
    v23 = *(v0 + 40);
    v6 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v6 = 136446978;
    *(v6 + 4) = sub_100071844(0xD00000000000001ELL, 0x80000001000DB6A0, &v27);
    *(v6 + 12) = 2080;
    v7 = v2;
    v8 = [v7 description];
    v9 = sub_1000C6D84();
    v11 = v10;

    v12 = sub_100071844(v9, v11, &v27);

    *(v6 + 14) = v12;
    *(v6 + 22) = 2050;
    *(v6 + 24) = v23;
    *(v6 + 32) = 2050;
    *(v6 + 34) = v22;
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s For participant %s, setting permission %{public}ld and role %{public}ld", v6, 0x2Au);
    swift_arrayDestroy();

    v26(v25, v24);
  }

  else
  {
    v13 = *(v0 + 128);
    v14 = *(v0 + 72);
    v15 = *(v0 + 56);

    v13(v14, v15);
  }

  v17 = *(v0 + 144);
  v16 = *(v0 + 152);
  v18 = *(v0 + 136);
  if (*(v0 + 192))
  {
    v19 = 2;
  }

  else
  {
    v19 = 3;
  }

  [v2 setPermission:{*(v0 + 40), v22, v23}];
  [v2 setRole:v19];
  [v18 addParticipant:v2];

  sub_100064604();

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_1000584C0()
{
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[17];

  sub_100064604();

  v4 = v0[1];

  return v4();
}

void sub_100058580(void *a1)
{
  v3 = sub_1000C5F74();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1000C6094();

  v7 = v20;
  if (v20)
  {
    sub_1000C5F54();
    v8 = a1;
    v9 = sub_1000C5F64();
    v10 = sub_1000C6FF4();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v19[1] = v1;
      v13 = v12;
      *v11 = 138412290;
      *(v11 + 4) = v8;
      *v12 = v8;
      v14 = v8;
      _os_log_impl(&_mh_execute_header, v9, v10, "denying requester: %@", v11, 0xCu);
      sub_100010F24(v13, &qword_100117080, &unk_1000CC350);
    }

    (*(v4 + 8))(v6, v3);
    sub_10000FEB8(&qword_100116340, &unk_1000CDF80);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1000CD0E0;
    *(v15 + 32) = v8;
    sub_100010778(0, &unk_100118660, CKShareAccessRequester_ptr);
    v16 = v8;
    isa = sub_1000C6E84().super.isa;

    [v7 blockRequesters:isa];
  }

  else
  {
    sub_1000100B0();
    swift_allocError();
    *v18 = 0xD000000000000010;
    *(v18 + 8) = 0x80000001000DB640;
    *(v18 + 16) = xmmword_1000CFF30;
    *(v18 + 32) = 0x80000001000DB660;
    *(v18 + 40) = 11;
    swift_willThrow();
  }
}

uint64_t sub_1000588A0(char a1)
{
  *(v2 + 32) = v1;
  *(v2 + 161) = a1;
  v3 = sub_1000C5F74();
  *(v2 + 40) = v3;
  *(v2 + 48) = *(v3 - 8);
  *(v2 + 56) = swift_task_alloc();
  sub_10000FEB8(&qword_1001164E0, &unk_1000CDD50);
  *(v2 + 64) = swift_task_alloc();
  *(v2 + 72) = sub_1000C6F14();
  *(v2 + 80) = sub_1000C6F04();
  v5 = sub_1000C6ED4();
  *(v2 + 88) = v5;
  *(v2 + 96) = v4;

  return _swift_task_switch(sub_1000589D4, v5, v4);
}

uint64_t sub_1000589D4()
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1000C6094();

  if (*(v0 + 160) == 1)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_1000C6094();

    v1 = *(v0 + 16);
    *(v0 + 104) = v1;
    if (v1)
    {
      v2 = 2;
      if (!*(v0 + 161))
      {
        v2 = 3;
      }

      v29 = v2;
      v3 = [v1 participants];
      sub_100010778(0, &qword_100117010, CKShareParticipant_ptr);
      v4 = sub_1000C6E94();

      if (v4 >> 62)
      {
        goto LABEL_38;
      }

      for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1000C72F4())
      {
        v28 = v0;
        if (!i)
        {
          break;
        }

        v6 = 0;
        while (1)
        {
          if ((v4 & 0xC000000000000001) != 0)
          {
            v7 = sub_1000C7254();
          }

          else
          {
            if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_37;
            }

            v7 = *(v4 + 8 * v6 + 32);
          }

          v8 = v7;
          v0 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            break;
          }

          if ([v7 role] == 1 || v29 == objc_msgSend(v8, "role"))
          {
          }

          else
          {
            sub_1000C7284();
            sub_1000C72B4();
            sub_1000C72C4();
            sub_1000C7294();
          }

          ++v6;
          if (v0 == i)
          {
            v0 = v28;
            goto LABEL_23;
          }
        }

        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        ;
      }

LABEL_23:

      if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0 || (_swiftEmptyArrayStorage & 0x4000000000000000) != 0)
      {
        v11 = sub_1000C72F4();
        if (v11)
        {
          goto LABEL_26;
        }
      }

      else
      {
        v11 = _swiftEmptyArrayStorage[2];
        if (v11)
        {
LABEL_26:
          v12 = sub_1000C72A4();
          if (v11 < 0)
          {
            __break(1u);
            return Task.value.getter(v12, v13, v14, v15, v16);
          }

          v17 = 0;
          do
          {
            if ((_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
            {
              v18 = sub_1000C7254();
            }

            else
            {
              v18 = _swiftEmptyArrayStorage[v17 + 4];
            }

            v19 = v18;
            if ([v18 permission] == 3)
            {
              v20 = v29;
            }

            else
            {
              v20 = 3;
            }

            ++v17;
            [v19 setRole:v20];
            sub_1000C7284();
            sub_1000C72B4();
            sub_1000C72C4();
            sub_1000C7294();
          }

          while (v11 != v17);

          v0 = v28;
LABEL_41:
          v21 = *(v0 + 64);
          v22 = *(v0 + 32);
          sub_1000C6F24();
          v23 = sub_1000C6F44();
          (*(*(v23 - 8) + 56))(v21, 0, 1, v23);

          v24 = sub_1000C6F04();
          v25 = swift_allocObject();
          v25[2] = v24;
          v25[3] = &protocol witness table for MainActor;
          v25[4] = v22;
          v25[5] = _swiftEmptyArrayStorage;
          v26 = sub_1000B82F8(0, 0, v21, &unk_1000D1058, v25);
          *(v0 + 112) = v26;
          v27 = swift_task_alloc();
          *(v0 + 120) = v27;
          v12 = sub_10000FEB8(&qword_1001179B0, &qword_1000CBB80);
          *(v0 + 128) = v12;
          *v27 = v0;
          v27[1] = sub_100058F0C;
          v16 = &protocol self-conformance witness table for Error;
          v14 = &type metadata for () + 8;
          v13 = v26;
          v15 = v12;

          return Task.value.getter(v12, v13, v14, v15, v16);
        }
      }

      goto LABEL_41;
    }
  }

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_100058F0C()
{
  v2 = *v1;
  *(*v1 + 136) = v0;

  v3 = *(v2 + 96);
  v4 = *(v2 + 88);
  if (v0)
  {
    v5 = sub_10005929C;
  }

  else
  {
    v5 = sub_100059048;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100059048()
{
  v1 = swift_task_alloc();
  *(v0 + 144) = v1;
  *v1 = v0;
  v1[1] = sub_1000590DC;

  return sub_100052EEC(1);
}

uint64_t sub_1000590DC()
{
  v2 = *v1;
  *(*v1 + 152) = v0;

  v3 = *(v2 + 96);
  v4 = *(v2 + 88);
  if (v0)
  {
    v5 = sub_100059494;
  }

  else
  {
    v5 = sub_100059218;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100059218()
{
  v1 = *(v0 + 104);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10005929C()
{
  v19 = v0;

  sub_1000C5F54();
  swift_errorRetain();
  v1 = sub_1000C5F64();
  v2 = sub_1000C6FD4();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[17];
    v4 = v0[6];
    v17 = v0[7];
    v5 = v0[5];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v18 = v7;
    *v6 = 136315138;
    v0[3] = v3;
    swift_errorRetain();
    v8 = sub_1000C6D94();
    v10 = sub_100071844(v8, v9, &v18);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v1, v2, "applyAllowAnyoneToInviteAndSaveShareOnChange addOrUpdate error: %s", v6, 0xCu);
    sub_100010544(v7);

    (*(v4 + 8))(v17, v5);
  }

  else
  {
    v12 = v0[6];
    v11 = v0[7];
    v13 = v0[5];

    (*(v12 + 8))(v11, v13);
  }

  v14 = v0[13];
  swift_willThrow();

  v15 = v0[1];

  return v15();
}

uint64_t sub_100059494()
{
  v1 = *(v0 + 104);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100059520()
{
  v0 = sub_1000C5F74();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_unknownObjectRelease();
  }

  else
  {
    sub_1000C5F54();
    v4 = sub_1000C5F64();
    v5 = sub_1000C6FF4();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "ext computed property--extensionController is nil--will assert", v6, 2u);
    }

    (*(v1 + 8))(v3, v0);
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    __break(1u);
  }

  return result;
}

BOOL sub_100059688()
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1000C6094();

  if (!v3)
  {
    return 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  if (!v2)
  {
    return 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();

  sub_1000C6094();

  return v1 != 0;
}

uint64_t sub_1000597C8(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, char a6)
{
  v66 = a2;
  v67 = a3;
  v10 = sub_1000C5F74();
  v11 = *(v10 - 8);
  v68 = v10;
  v69 = v11;
  v12 = __chkstk_darwin(v10);
  v14 = &v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v17 = &v65 - v16;
  v18 = __chkstk_darwin(v15);
  v20 = &v65 - v19;
  __chkstk_darwin(v18);
  v22 = &v65 - v21;
  v23 = sub_10000FEB8(&qword_100116260, &qword_1000CD940);
  __chkstk_darwin(v23 - 8);
  v25 = &v65 - v24;
  if ((a6 & 1) == 0)
  {
    return 8;
  }

  if (!a5)
  {
    sub_100017574(a1, &v65 - v24, &qword_100116260, &qword_1000CD940);
    v44 = sub_1000C5D84();
    v45 = (*(*(v44 - 8) + 48))(v25, 1, v44);
    sub_100010F24(v25, &qword_100116260, &qword_1000CD940);
    if (v45 != 1)
    {
      return 9;
    }

    v46 = sub_10005A104();
    if ((v46 & 0xFE) != 8 && (v46 > 7u || ((1 << v46) & 0xC1) == 0))
    {
      v56 = v46;
      sub_1000C5F54();
      v57 = sub_1000C5F64();
      v58 = sub_1000C6FF4();
      if (os_log_type_enabled(v57, v58))
      {
        v59 = swift_slowAlloc();
        v60 = swift_slowAlloc();
        v70[0] = v60;
        *v59 = 136315138;
        v61 = sub_10001E4F8(v56);
        v63 = sub_100071844(v61, v62, v70);

        *(v59 + 4) = v63;
        _os_log_impl(&_mh_execute_header, v57, v58, "Combine for sharingType specific CK sharingType: %s.", v59, 0xCu);
        sub_100010544(v60);
      }

      (*(v69 + 8))(v17, v68);
      return v56;
    }

    sub_1000C5F54();
    v47 = v67;

    v48 = sub_1000C5F64();
    v49 = sub_1000C6FF4();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v70[1] = v47;
      v71 = v51;
      *v50 = 136315138;
      v52 = v66;
      v70[0] = v66;
      sub_10000FEB8(&qword_100116310, &qword_1000CBBC0);
      v53 = sub_1000C71B4();
      v55 = sub_100071844(v53, v54, &v71);

      *(v50 + 4) = v55;
      _os_log_impl(&_mh_execute_header, v48, v49, "Combine for sharingType sourceAppBundleID: %s.", v50, 0xCu);
      sub_100010544(v51);

      (*(v69 + 8))(v14, v68);
      if (!v47)
      {
        return 0;
      }
    }

    else
    {

      (*(v69 + 8))(v14, v68);
      v52 = v66;
      if (!v47)
      {
        return 0;
      }
    }

    if (v52 == 0x6C7070612E6D6F63 && v47 == 0xEF7365746F4E2E65 || (sub_1000C73A4() & 1) != 0 || v52 == 0xD000000000000015 && 0x80000001000D7380 == v47 || (sub_1000C73A4() & 1) != 0)
    {
      return 1;
    }

    if (v52 == 0xD000000000000013 && 0x80000001000D73A0 == v47 || (sub_1000C73A4() & 1) != 0)
    {
      return 3;
    }

    if (v52 == 0xD000000000000010 && 0x80000001000DAC00 == v47 || (sub_1000C73A4() & 1) != 0 || v52 == 0xD000000000000016 && 0x80000001000D73C0 == v47 || (sub_1000C73A4() & 1) != 0)
    {
      return 4;
    }

    if (v52 == 0xD000000000000010 && 0x80000001000DABE0 == v67 || (sub_1000C73A4() & 1) != 0 || v66 == 0xD000000000000012 && 0x80000001000D73E0 == v67 || (sub_1000C73A4() & 1) != 0)
    {
      return 5;
    }

    v64 = HIBYTE(v67) & 0xF;
    if ((v67 & 0x2000000000000000) == 0)
    {
      v64 = v66 & 0xFFFFFFFFFFFFLL;
    }

    if (v64)
    {
      return 6;
    }

    return 0;
  }

  v26 = sub_10009EC80(a4, a5, a1);
  v27 = sub_10009D15C(v26);
  if ((v27 & 0xFE) != 8 && (v27 == 7 || !v27) && v67)
  {
    v28 = HIBYTE(v67) & 0xF;
    if ((v67 & 0x2000000000000000) == 0)
    {
      v28 = v66 & 0xFFFFFFFFFFFFLL;
    }

    if (v28)
    {
      v29 = v27;
      sub_1000C5F54();

      v30 = sub_1000C5F64();
      v31 = sub_1000C6FF4();

      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v70[0] = swift_slowAlloc();
        *v32 = 136315394;
        *(v32 + 4) = sub_100071844(a4, a5, v70);
        *(v32 + 12) = 2080;
        v33 = sub_10001E4F8(v29);
        v35 = sub_100071844(v33, v34, v70);

        *(v32 + 14) = v35;
        _os_log_impl(&_mh_execute_header, v30, v31, "Combine for sharingType itemUTI: %s, sharingType: %s--return .other for unspecified.", v32, 0x16u);
        swift_arrayDestroy();
      }

      (*(v69 + 8))(v22, v68);
      return 6;
    }
  }

  v37 = v27;
  sub_1000C5F54();

  v38 = sub_1000C5F64();
  v39 = sub_1000C6FF4();

  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v70[0] = swift_slowAlloc();
    *v40 = 136315394;
    *(v40 + 4) = sub_100071844(a4, a5, v70);
    *(v40 + 12) = 2080;
    v41 = sub_10001E4F8(v37);
    v43 = sub_100071844(v41, v42, v70);

    *(v40 + 14) = v43;
    _os_log_impl(&_mh_execute_header, v38, v39, "Combine for sharingType itemUTI: %s, sharingType: %s.", v40, 0x16u);
    swift_arrayDestroy();
  }

  (*(v69 + 8))(v20, v68);
  return v37;
}

uint64_t sub_10005A104()
{
  v0 = sub_1000C5F74();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v2);
  v7 = &v33 - v6;
  __chkstk_darwin(v5);
  v9 = &v33 - v8;
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1000C6094();

  if (!v36[0])
  {
    sub_1000C5F54();
    v30 = sub_1000C5F64();
    v31 = sub_1000C6FF4();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&_mh_execute_header, v30, v31, "ckSharingTypeFromShare on model--no CKShare yet so return .cloudKit(type: .other).", v32, 2u);
    }

    (*(v1 + 8))(v4, v0);
    return 6;
  }

  v10 = v36[0];
  sub_1000C7164();
  v11 = sub_1000C7174();

  if (!v11 || (v36[2] = v11, sub_10000FEB8(&unk_1001162F0, &unk_1000CBB70), (swift_dynamicCast() & 1) == 0))
  {
    sub_1000C5F54();
    v27 = sub_1000C5F64();
    v28 = sub_1000C6FF4();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "ckSharingTypeFromShare on model--couldn't get a string from CKShare.shareType so return .cloudKit(type: .other).", v29, 2u);
    }

    else
    {
    }

    (*(v1 + 8))(v7, v0);
    return 6;
  }

  v12 = sub_10009D67C(v36[0], v36[1]);
  v14 = v13;

  sub_1000C5F54();

  v15 = sub_1000C5F64();
  v16 = sub_1000C6FF4();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v34 = v17;
    v35 = swift_slowAlloc();
    v36[0] = v35;
    *v17 = 136315138;
    v18 = sub_10009E760(v12, v14);
    v19 = sub_10009D15C(v18);
    v20 = sub_10001E4F8(v19);
    LOBYTE(v17) = v16;
    v22 = v12;
    v23 = sub_100071844(v20, v21, v36);

    v24 = v34;
    *(v34 + 1) = v23;
    v12 = v22;
    _os_log_impl(&_mh_execute_header, v15, v17, "ckSharingTypeFromShare on model--CKShare converts to: %s.", v24, 0xCu);
    sub_100010544(v35);
  }

  (*(v1 + 8))(v9, v0);
  v25 = sub_10009E760(v12, v14);

  return sub_10009D15C(v25);
}

uint64_t sub_10005A544@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, void, void, void, void, void)@<X1>, _BYTE *a3@<X8>)
{
  v6 = sub_10000FEB8(&unk_100118618, &qword_1000D0F00);
  result = a2(a1, *(a1 + v6[12]), *(a1 + v6[12] + 8), *(a1 + v6[16]), *(a1 + v6[16] + 8), *(a1 + v6[20]));
  *a3 = result;
  return result;
}

_BYTE *sub_10005A5BC(_BYTE *result, uint64_t a2)
{
  if (*result == 1)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    return sub_1000C60A4();
  }

  return result;
}

_UNKNOWN **sub_10005A640(char a1, void *a2, uint64_t a3)
{
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    return &off_100107430;
  }

  if (!a2)
  {

    return &off_100107430;
  }

  v5 = a2;
  v6 = [v5 participants];
  sub_100010778(0, &qword_100117010, CKShareParticipant_ptr);
  v7 = sub_1000C6E94();

  v8 = v5;

  sub_100086528(a2);
  v22 = v9;

  if (v7 >> 62)
  {
    goto LABEL_53;
  }

  for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1000C72F4())
  {
    if (i)
    {
      v11 = 0;
      do
      {
        if ((v7 & 0xC000000000000001) != 0)
        {
          v12 = sub_1000C7254();
        }

        else
        {
          if (v11 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_50;
          }

          v12 = *(v7 + 8 * v11 + 32);
        }

        v13 = v12;
        v14 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          __break(1u);
LABEL_50:
          __break(1u);
          goto LABEL_51;
        }

        if ([v12 role] != 1 && objc_msgSend(v13, "role") == 2 && objc_msgSend(v13, "permission") == 3)
        {
          sub_1000C7284();
          sub_1000C72B4();
          sub_1000C72C4();
          sub_1000C7294();
        }

        else
        {
        }

        ++v11;
      }

      while (v14 != i);
      if ((_swiftEmptyArrayStorage & 0x8000000000000000) == 0)
      {
        goto LABEL_23;
      }
    }

    else if ((_swiftEmptyArrayStorage & 0x8000000000000000) == 0)
    {
LABEL_23:
      if ((_swiftEmptyArrayStorage & 0x4000000000000000) == 0)
      {
        v16 = _swiftEmptyArrayStorage[2];
        goto LABEL_25;
      }
    }

    v16 = sub_1000C72F4();
LABEL_25:

    if (!i)
    {
      break;
    }

    v17 = 0;
    while (1)
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v18 = sub_1000C7254();
      }

      else
      {
        if (v17 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_52;
        }

        v18 = *(v7 + 8 * v17 + 32);
      }

      v19 = v18;
      v20 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if ([v18 role] == 1 || objc_msgSend(v19, "role") == 2 && objc_msgSend(v19, "permission") != 2)
      {
      }

      else
      {
        sub_1000C7284();
        sub_1000C72B4();
        sub_1000C72C4();
        sub_1000C7294();
      }

      ++v17;
      if (v20 == i)
      {
        goto LABEL_38;
      }
    }

LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    ;
  }

LABEL_38:

  if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0 || (_swiftEmptyArrayStorage & 0x4000000000000000) != 0)
  {
    goto LABEL_56;
  }

  for (j = _swiftEmptyArrayStorage[2]; ; j = sub_1000C72F4())
  {

    if (!__OFSUB__(j, v22))
    {
      break;
    }

    __break(1u);
LABEL_56:
    ;
  }

  if (v16 <= 0)
  {

    return &off_100107390;
  }

  else if (j - v22 < 1)
  {

    return &off_100107408;
  }

  else
  {

    if (a1 == 3)
    {
      return &off_1001073B8;
    }

    else
    {
      return &off_1001073E0;
    }
  }
}

uint64_t sub_10005AA4C(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = sub_1000C5F74();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v17 = &v57 - v16;
  v18 = __chkstk_darwin(v15);
  v64 = &v57 - v19;
  v20 = __chkstk_darwin(v18);
  v22 = &v57 - v21;
  __chkstk_darwin(v20);
  v24 = &v57 - v23;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v26 = result;
    if (a1)
    {
      v58 = v14;
      v59 = v17;
      v61 = v11;
      v62 = v10;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1000C6094();

      v60 = v65;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1000C6094();

      v27 = v65;
      swift_getKeyPath();
      swift_getKeyPath();

      sub_1000C6094();

      v28 = v65;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1000C6094();

      v29 = v65 == 1 && (a1 == 1) | v28 & 1 && v60 != 2 && v27 == 2;
      swift_getKeyPath();
      swift_getKeyPath();
      LOBYTE(v65) = v29;

      sub_1000C60A4();
      sub_1000C5F54();

      v30 = sub_1000C5F64();
      v31 = sub_1000C6FF4();
      v32 = os_log_type_enabled(v30, v31);
      v63 = v26;
      v57 = a6;
      if (v32)
      {
        v33 = v60 == 2;
        v34 = swift_slowAlloc();
        *v34 = 67241216;
        *(v34 + 4) = 1;
        *(v34 + 8) = 1026;
        *(v34 + 10) = v33;
        *(v34 + 14) = 1026;
        *(v34 + 16) = v27 == 2;
        *(v34 + 20) = 1026;
        *(v34 + 22) = a1 == 1;
        *(v34 + 26) = 1026;
        swift_getKeyPath();
        swift_getKeyPath();
        sub_1000C6094();

        *(v34 + 28) = v65;

        _os_log_impl(&_mh_execute_header, v30, v31, "executionMode is set. appIsOKForCoOwners: %{BOOL,public}d, R/O: %{BOOL,public}d, private: %{BOOL,public}d, isPreShare: %{BOOL,public}d, allowCoOwnersEditing: %{BOOL,public}d", v34, 0x20u);
      }

      else
      {
      }

      v35 = v62;
      v36 = *(v61 + 8);
      v36(v24, v62);
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1000C6094();

      if (v65)
      {
        if (a1 != 1)
        {
          swift_getKeyPath();
          swift_getKeyPath();

          sub_1000C6094();

          v37 = v65;
          if (v65)
          {
            v38 = [v65 participants];
            sub_100010778(0, &qword_100117010, CKShareParticipant_ptr);
            v39 = sub_1000C6E94();

            if (v39 >> 62)
            {
              v40 = sub_1000C72F4();
            }

            else
            {
              v40 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            v41 = v59;

            if (v40 > 1)
            {
              sub_1000C5F54();
              v42 = sub_1000C5F64();
              v43 = sub_1000C6FB4();
              if (os_log_type_enabled(v42, v43))
              {
                v44 = swift_slowAlloc();
                *v44 = 0;
                _os_log_impl(&_mh_execute_header, v42, v43, "Do allow co-owner editing with participants.", v44, 2u);
              }

              v36(v64, v35);
              swift_getKeyPath();
              swift_getKeyPath();

              sub_1000C6094();

              if (v65 == 1)
              {
                v45 = v57;
              }

              else
              {
                swift_getKeyPath();
                swift_getKeyPath();
                sub_1000C6094();

                v45 = v65;
              }

              sub_10001B418(v45);

              sub_1000C5F54();

              v54 = sub_1000C5F64();
              v55 = sub_1000C6FF4();
              if (os_log_type_enabled(v54, v55))
              {
                v56 = swift_slowAlloc();
                *v56 = 67109120;
                *(v56 + 4) = sub_100019C78() & 1;

                _os_log_impl(&_mh_execute_header, v54, v55, "Setting newParticipantsCanBeCoOwners from CKShare state: %{BOOL}d.", v56, 8u);
                v41 = v59;
              }

              else
              {
              }

              v53 = v41;
              return (v36)(v53, v35);
            }
          }

          else
          {
          }

          v49 = v58;
          sub_1000C5F54();
          v50 = sub_1000C5F64();
          v51 = sub_1000C6FB4();
          if (os_log_type_enabled(v50, v51))
          {
            v52 = swift_slowAlloc();
            *v52 = 0;
            _os_log_impl(&_mh_execute_header, v50, v51, "Do allow co-owner editing without participants.", v52, 2u);
          }

          else
          {
          }

          v53 = v49;
          return (v36)(v53, v35);
        }
      }

      else
      {
        sub_1000C5F54();
        v46 = sub_1000C5F64();
        v47 = sub_1000C6FB4();
        if (os_log_type_enabled(v46, v47))
        {
          v48 = swift_slowAlloc();
          *v48 = 0;
          _os_log_impl(&_mh_execute_header, v46, v47, "Do not allow co-owner editing. Updating state.", v48, 2u);
        }

        v36(v22, v35);
        sub_10001B418(&off_100107458);
      }
    }
  }

  return result;
}

void sub_10005B3AC(void **a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    if (v2)
    {
      v3 = v2;
      sub_1000C7164();
      v4 = sub_1000C7174();

      if (v4)
      {
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          sub_1000C6D84();
          swift_getKeyPath();
          swift_getKeyPath();
          sub_1000C60A4();

          swift_unknownObjectRelease();
          return;
        }

        swift_unknownObjectRelease();
      }

      swift_getKeyPath();
      swift_getKeyPath();
      sub_1000C60A4();
    }

    else
    {
    }
  }
}

uint64_t sub_10005B4F0(unsigned __int8 *a1, uint64_t a2)
{
  v3 = sub_10000FEB8(&qword_1001164E0, &unk_1000CDD50);
  __chkstk_darwin(v3 - 8);
  v5 = &v14 - v4;
  v6 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
    }

    v9 = Strong;
    if (v6 == 8)
    {
LABEL_4:

      return swift_unknownObjectRelease();
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_1000C6094();

    if (HIBYTE(v14) == 8)
    {
      if ((v6 & 0xFE) != 8)
      {
        goto LABEL_12;
      }
    }

    else
    {
      if (HIBYTE(v14) == 9)
      {
        if (v6 > 6)
        {
          if (v6 == 7 || v6 == 9)
          {
            goto LABEL_4;
          }

          goto LABEL_25;
        }

        if (!v6)
        {
          goto LABEL_4;
        }

        if (v6 != 4)
        {
          goto LABEL_25;
        }

        goto LABEL_24;
      }

      if ((v6 & 0xFE) != 8)
      {
        if (HIBYTE(v14) == 7 || v6 == 7 || HIBYTE(v14) == v6)
        {
          goto LABEL_4;
        }

LABEL_12:
        if (v6 == 7)
        {
          goto LABEL_4;
        }

        if (v6 != 4)
        {
          if (!v6)
          {
            goto LABEL_4;
          }

          goto LABEL_25;
        }

LABEL_24:
        swift_getKeyPath();
        swift_getKeyPath();
        HIBYTE(v14) = 1;

        sub_1000C60A4();
      }
    }

LABEL_25:
    v10 = *(v9 + OBJC_IVAR___CloudSharingViewController_model);
    sub_1000C6F24();
    v11 = sub_1000C6F44();
    (*(*(v11 - 8) + 56))(v5, 0, 1, v11);
    sub_1000C6F14();

    v12 = sub_1000C6F04();
    v13 = swift_allocObject();
    v13[2] = v12;
    v13[3] = &protocol witness table for MainActor;
    v13[4] = v10;
    sub_1000B82F8(0, 0, v5, &unk_1000D0DC0, v13);
    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10005B7BC(_BYTE *a1, uint64_t a2)
{
  v3 = sub_10000FEB8(&qword_1001164E0, &unk_1000CDD50);
  result = __chkstk_darwin(v3 - 8);
  v6 = &v11[-v5];
  if (*a1 == 2)
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      v7 = result;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1000C6094();

      if (v11[7] == 3)
      {
        sub_1000C6F24();
        v8 = sub_1000C6F44();
        (*(*(v8 - 8) + 56))(v6, 0, 1, v8);
        sub_1000C6F14();

        v9 = sub_1000C6F04();
        v10 = swift_allocObject();
        v10[2] = v9;
        v10[3] = &protocol witness table for MainActor;
        v10[4] = v7;
        sub_1000B8860(0, 0, v6, &unk_1000D0DB8, v10);
      }
    }
  }

  return result;
}

uint64_t sub_10005B98C()
{
  v0[2] = sub_1000C6F14();
  v0[3] = sub_1000C6F04();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_100051D40;

  return sub_10005BA3C(1500);
}

uint64_t sub_10005BA3C(uint64_t a1)
{
  v2[9] = a1;
  v2[10] = v1;
  v3 = sub_1000C5F74();
  v2[11] = v3;
  v2[12] = *(v3 - 8);
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  sub_1000C6F14();
  v2[15] = sub_1000C6F04();
  v5 = sub_1000C6ED4();
  v2[16] = v5;
  v2[17] = v4;

  return _swift_task_switch(sub_10005BB3C, v5, v4);
}

uint64_t sub_10005BB3C(uint64_t a1)
{
  v2 = *(v1 + 72);
  if (v2 < 1)
  {
    __break(1u);
    return static Task<>.sleep(nanoseconds:)(a1);
  }

  *(v1 + 144) = BRCloudDocsErrorDomain;
  *(v1 + 152) = CKErrorDomain;
  *(v1 + 160) = v2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  v3 = *(v1 + 57);
  if (v3 > 2)
  {
    if (v3 - 4 < 2)
    {
      goto LABEL_15;
    }
  }

  else
  {
    if (v3 == 1)
    {
      v4 = swift_task_alloc();
      *(v1 + 168) = v4;
      *v4 = v1;
      v4[1] = sub_10005BE28;
      a1 = 1000000000;

      return static Task<>.sleep(nanoseconds:)(a1);
    }

    swift_getKeyPath();
    swift_getKeyPath();
    *(v1 + 63) = 3;

    sub_1000C60A4();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  v5 = *(v1 + 58);
  if (v5 == 4 || v5 == 2)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    *(v1 + 59) = 1;

    sub_1000C60A4();
    v6 = swift_task_alloc();
    *(v1 + 176) = v6;
    *v6 = v1;
    v6[1] = sub_10005C224;

    return sub_1000615A4();
  }

LABEL_15:

  v8 = *(v1 + 8);

  return v8();
}

uint64_t sub_10005BE28()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 128);
    v4 = *(v2 + 136);
    v5 = sub_10007B958;
  }

  else
  {
    v3 = *(v2 + 128);
    v4 = *(v2 + 136);
    v5 = sub_10005BF4C;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_10005BF4C(uint64_t a1)
{
  v2 = *(v1 + 160);
  if (v2 == 1)
  {
    goto LABEL_16;
  }

  if (v2 < 2)
  {
    __break(1u);
    return static Task<>.sleep(nanoseconds:)(a1);
  }

  *(v1 + 160) = v2 - 1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  v3 = *(v1 + 57);
  if (v3 > 2)
  {
    if (v3 - 4 < 2)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if (v3 == 1)
    {
      v4 = swift_task_alloc();
      *(v1 + 168) = v4;
      *v4 = v1;
      v4[1] = sub_10005BE28;
      a1 = 1000000000;

      return static Task<>.sleep(nanoseconds:)(a1);
    }

    swift_getKeyPath();
    swift_getKeyPath();
    *(v1 + 63) = 3;

    sub_1000C60A4();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  v5 = *(v1 + 58);
  if (v5 == 4 || v5 == 2)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    *(v1 + 59) = 1;

    sub_1000C60A4();
    v6 = swift_task_alloc();
    *(v1 + 176) = v6;
    *v6 = v1;
    v6[1] = sub_10005C224;

    return sub_1000615A4();
  }

LABEL_16:

  v8 = *(v1 + 8);

  return v8();
}

uint64_t sub_10005C224()
{
  v2 = *v1;
  *(*v1 + 184) = v0;

  v3 = *(v2 + 136);
  v4 = *(v2 + 128);
  if (v0)
  {
    v5 = sub_10005C69C;
  }

  else
  {
    v5 = sub_10005C360;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10005C360()
{
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 62) = 4;

  v1 = sub_1000C60A4();
  v2 = *(v0 + 160);
  if (v2 == 1)
  {
    goto LABEL_16;
  }

  if (v2 < 2)
  {
    __break(1u);
    return static Task<>.sleep(nanoseconds:)(v1);
  }

  *(v0 + 160) = v2 - 1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  v3 = *(v0 + 57);
  if (v3 > 2)
  {
    if (v3 - 4 < 2)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if (v3 == 1)
    {
      v4 = swift_task_alloc();
      *(v0 + 168) = v4;
      *v4 = v0;
      v4[1] = sub_10005BE28;
      v1 = 1000000000;

      return static Task<>.sleep(nanoseconds:)(v1);
    }

    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 63) = 3;

    sub_1000C60A4();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  v5 = *(v0 + 58);
  if (v5 == 4 || v5 == 2)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 59) = 1;

    sub_1000C60A4();
    v6 = swift_task_alloc();
    *(v0 + 176) = v6;
    *v6 = v0;
    v6[1] = sub_10005C224;

    return sub_1000615A4();
  }

LABEL_16:

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_10005C69C()
{
  v58 = v0;
  *(v0 + 64) = *(v0 + 184);
  swift_errorRetain();
  sub_10000FEB8(&qword_1001179B0, &qword_1000CBB80);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_16;
  }

  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  *(v0 + 192) = v1;
  *(v0 + 200) = v2;
  v4 = *(v0 + 32);
  v3 = *(v0 + 40);
  *(v0 + 208) = v4;
  *(v0 + 216) = v3;
  v5 = *(v0 + 48);
  *(v0 + 224) = v5;
  v6 = *(v0 + 56);
  if (v6 != 1)
  {
    sub_1000494BC(v1, v2, v4, v3, v5, v6);
    goto LABEL_16;
  }

  v54 = v3;
  v55 = v1;
  if (!v4)
  {
LABEL_38:
    __break(1u);
    return static Task<>.sleep(nanoseconds:)(v1);
  }

  v7 = v4;
  v56 = v2;

  v8 = [v7 domain];
  v9 = sub_1000C6D84();
  v11 = v10;

  if (v9 == sub_1000C6D84() && v11 == v12)
  {

    goto LABEL_9;
  }

  v13 = sub_1000C73A4();

  if (v13)
  {
LABEL_9:
    v14 = [v7 code];

    if (v14 == 7)
    {
      v15 = swift_task_alloc();
      *(v0 + 232) = v15;
      *v15 = v0;
      v16 = sub_10005CEC8;
      goto LABEL_23;
    }

    goto LABEL_12;
  }

LABEL_12:
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 61) = 5;

  sub_1000C60A4();
  sub_1000C5F54();
  v17 = v7;
  v18 = v56;

  v19 = sub_1000C5F64();
  v20 = sub_1000C6FD4();

  v53 = v20;
  v21 = os_log_type_enabled(v19, v20);
  v22 = *(v0 + 112);
  v24 = *(v0 + 88);
  v23 = *(v0 + 96);
  if (v21)
  {
    v51 = *(v0 + 112);
    v25 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v57 = v50;
    *v25 = 136315138;
    v52 = v17;
    v26 = v17;
    v27 = [v26 description];
    log = v19;
    v49 = v24;
    v28 = sub_1000C6D84();
    v30 = v29;

    v18 = v56;
    v31 = sub_100071844(v28, v30, &v57);

    *(v25 + 4) = v31;
    v17 = v52;
    _os_log_impl(&_mh_execute_header, log, v53, "tryToCreateShareIfNeeded not-in-iCloud error after retries: %s", v25, 0xCu);
    sub_100010544(v50);

    (*(v23 + 8))(v51, v49);
  }

  else
  {

    (*(v23 + 8))(v22, v24);
  }

  v32 = v17;
  sub_100067838(1u, v4);
  sub_1000494BC(v55, v18, v4, v54, v5, 1u);

LABEL_16:
  v33 = *(v0 + 152);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 60) = 5;

  sub_1000C60A4();
  v34 = [objc_allocWithZone(NSError) initWithDomain:v33 code:1 userInfo:0];
  sub_1000C5F54();
  v35 = sub_1000C5F64();
  v36 = sub_1000C6FD4();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    *v37 = 0;
    _os_log_impl(&_mh_execute_header, v35, v36, "tryToCreateShareIfNeeded unexpected error, returning CKError.internalError as best approximation", v37, 2u);
  }

  v39 = *(v0 + 96);
  v38 = *(v0 + 104);
  v40 = *(v0 + 88);

  (*(v39 + 8))(v38, v40);
  v41 = v34;
  sub_100067838(1u, v34);

  v42 = *(v0 + 160);
  if (v42 == 1)
  {
    goto LABEL_34;
  }

  if (v42 < 2)
  {
    __break(1u);
    goto LABEL_38;
  }

  *(v0 + 160) = v42 - 1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  v43 = *(v0 + 57);
  if (v43 > 2)
  {
    if (v43 - 4 < 2)
    {
      goto LABEL_34;
    }
  }

  else
  {
    if (v43 == 1)
    {
      v15 = swift_task_alloc();
      *(v0 + 168) = v15;
      *v15 = v0;
      v16 = sub_10005BE28;
LABEL_23:
      v15[1] = v16;
      v1 = 1000000000;

      return static Task<>.sleep(nanoseconds:)(v1);
    }

    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 63) = 3;

    sub_1000C60A4();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  v44 = *(v0 + 58);
  if (v44 == 4 || v44 == 2)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 59) = 1;

    sub_1000C60A4();
    v45 = swift_task_alloc();
    *(v0 + 176) = v45;
    *v45 = v0;
    v45[1] = sub_10005C224;

    return sub_1000615A4();
  }

LABEL_34:

  v47 = *(v0 + 8);

  return v47();
}

uint64_t sub_10005CEC8()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 128);
    v4 = *(v2 + 136);
    v5 = sub_10007B97C;
  }

  else
  {
    v3 = *(v2 + 128);
    v4 = *(v2 + 136);
    v5 = sub_10005CFEC;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_10005CFEC()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 224);
  v4 = *(v0 + 200);
  v3 = *(v0 + 208);
  v5 = *(v0 + 192);

  v6 = sub_1000494BC(v5, v4, v3, v1, v2, 1u);
  v7 = *(v0 + 160);
  if (v7 == 1)
  {
    goto LABEL_16;
  }

  if (v7 < 2)
  {
    __break(1u);
    return static Task<>.sleep(nanoseconds:)(v6);
  }

  *(v0 + 160) = v7 - 1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  v8 = *(v0 + 57);
  if (v8 > 2)
  {
    if (v8 - 4 < 2)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if (v8 == 1)
    {
      v9 = swift_task_alloc();
      *(v0 + 168) = v9;
      *v9 = v0;
      v9[1] = sub_10005BE28;
      v6 = 1000000000;

      return static Task<>.sleep(nanoseconds:)(v6);
    }

    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 63) = 3;

    sub_1000C60A4();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  v10 = *(v0 + 58);
  if (v10 == 4 || v10 == 2)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 59) = 1;

    sub_1000C60A4();
    v11 = swift_task_alloc();
    *(v0 + 176) = v11;
    *v11 = v0;
    v11[1] = sub_10005C224;

    return sub_1000615A4();
  }

LABEL_16:

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_10005D314(unsigned __int8 a1, uint64_t a2)
{
  v2 = a1;
  v3 = sub_10000FEB8(&qword_1001164E0, &unk_1000CDD50);
  result = __chkstk_darwin(v3 - 8);
  v6 = &v12 - v5;
  if (v2 == 4)
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      v7 = result;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1000C6094();

      if (HIBYTE(v12) == 1)
      {
        v8 = &unk_1000D0DA8;
      }

      else
      {
        swift_getKeyPath();
        swift_getKeyPath();
        sub_1000C6094();

        if (HIBYTE(v12) != 3)
        {
        }

        swift_getKeyPath();
        swift_getKeyPath();
        sub_1000C6094();

        if ((HIBYTE(v12) - 2) < 4u || (v12 & 0x100000000000000) != 0)
        {
        }

        v8 = &unk_1000D0D98;
      }

      sub_1000C6F24();
      v9 = sub_1000C6F44();
      (*(*(v9 - 8) + 56))(v6, 0, 1, v9);
      sub_1000C6F14();

      v10 = sub_1000C6F04();
      v11 = swift_allocObject();
      v11[2] = v10;
      v11[3] = &protocol witness table for MainActor;
      v11[4] = v7;
      sub_1000B8860(0, 0, v6, v8, v11);
    }
  }

  return result;
}

uint64_t sub_10005D5C0()
{
  v0[2] = sub_1000C6F14();
  v0[3] = sub_1000C6F04();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_10005D670;

  return sub_10005D7AC(1);
}

uint64_t sub_10005D670()
{

  v1 = sub_1000C6ED4();

  return _swift_task_switch(sub_10004975C, v1, v0);
}

uint64_t sub_10005D7AC(char a1)
{
  *(v2 + 96) = v1;
  *(v2 + 163) = a1;
  *(v2 + 104) = sub_1000C6F14();
  *(v2 + 112) = sub_1000C6F04();
  v3 = swift_task_alloc();
  *(v2 + 120) = v3;
  *v3 = v2;
  v3[1] = sub_10005D864;

  return sub_10005BA3C(300);
}

uint64_t sub_10005D864()
{
  v1 = *v0;

  v3 = sub_1000C6ED4();
  *(v1 + 128) = v3;
  *(v1 + 136) = v2;

  return _swift_task_switch(sub_10005D9A8, v3, v2);
}

uint64_t sub_10005D9A8()
{
  if ((*(v0 + 163) & 1) == 0)
  {

    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 57) = 3;

LABEL_7:
    sub_1000C60A4();
    goto LABEL_8;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  if (*(v0 + 58) != 4)
  {

    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 59) = 1;

    goto LABEL_7;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  if (*(v0 + 60) == 2)
  {

LABEL_8:
    v1 = *(v0 + 8);

    return v1();
  }

  v3 = *(v0 + 96);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 61) = 1;

  sub_1000C60A4();

  v4 = sub_100019C78();

  v5 = *(*(v3 + 16) + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12OptionsModel_allowAccessRequestsSPIOverride);
  if (v5 == 2)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_1000C6094();

    LOBYTE(v5) = *(v0 + 62);
  }

  v6 = swift_task_alloc();
  *(v0 + 144) = v6;
  *v6 = v0;
  v6[1] = sub_10005DCB4;

  return sub_100063020(v4 & 1, v5 & 1);
}

uint64_t sub_10005DCB4()
{
  v2 = *v1;
  *(*v1 + 152) = v0;

  v3 = *(v2 + 136);
  v4 = *(v2 + 128);
  if (v0)
  {
    v5 = sub_10005DEA4;
  }

  else
  {
    v5 = sub_10005DDF0;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10005DDF0()
{

  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 162) = 2;

  sub_1000C60A4();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10005DEA4()
{
  v1 = v0;
  v2 = *(v0 + 152);

  *(v0 + 64) = v2;
  v3 = v0 + 64;
  swift_errorRetain();
  sub_10000FEB8(&qword_1001179B0, &qword_1000CBB80);
  if (swift_dynamicCast())
  {

    v4 = *(v0 + 24);
    v18 = *(v0 + 16);
    v6 = *(v0 + 32);
    v5 = *(v0 + 40);
    v7 = *(v0 + 48);
    v8 = *(v0 + 56);
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 161) = 4;

    result = sub_1000C60A4();
    if (v8 == 10)
    {
      if (!v6)
      {
        __break(1u);
        return result;
      }

      v10 = v6;

      sub_100067838(1u, v6);
      sub_1000494BC(v18, v4, v6, v5, v7, 0xAu);
    }

    else
    {
      v15 = [objc_allocWithZone(NSError) initWithDomain:BRCloudDocsErrorDomain code:46 userInfo:0];
      sub_100067838(2u, v15);
      sub_1000494BC(v18, v4, v6, v5, v7, v8);
    }
  }

  else
  {
    v11 = *(v0 + 152);

    *(v1 + 72) = v11;
    swift_errorRetain();
    type metadata accessor for CKError(0);
    if (swift_dynamicCast())
    {

      v12 = *(v3 + 16);
      swift_getKeyPath();
      swift_getKeyPath();
      *(v3 + 96) = 4;

      sub_1000C60A4();
      *(v3 + 24) = v12;
      sub_1000799C8(&qword_100116450, type metadata accessor for CKError, &unk_1000CC14C);
      v13 = CKErrorDomain;
      v14 = [objc_allocWithZone(NSError) initWithDomain:v13 code:sub_1000C5CC4() userInfo:0];

      sub_100067838(1u, v14);
    }

    else
    {

      swift_getKeyPath();
      swift_getKeyPath();
      *(v3 - 1) = 4;

      sub_1000C60A4();
      v16 = sub_1000C5CD4();
      sub_100067838(2u, v16);
    }
  }

  v17 = *(v1 + 8);

  return v17();
}

uint64_t sub_10005E28C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_1000C6F14();
  v4[3] = sub_1000C6F04();
  v6 = sub_1000C6ED4();
  v4[4] = v6;
  v4[5] = v5;

  return _swift_task_switch(sub_10005E324, v6, v5);
}

uint64_t sub_10005E324()
{
  v1 = (v0[2] + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12SharingModel_lastServicesData);
  v2 = *v1;
  v0[6] = *v1;
  v3 = v1[1];
  swift_unknownObjectRetain();
  v4 = swift_task_alloc();
  v0[7] = v4;
  *v4 = v0;
  v4[1] = sub_10005E3F0;

  return sub_10005E534(0, v2, v3);
}

uint64_t sub_10005E3F0()
{
  v1 = *v0;

  swift_unknownObjectRelease();
  v2 = *(v1 + 40);
  v3 = *(v1 + 32);

  return _swift_task_switch(sub_10004975C, v3, v2);
}

uint64_t sub_10005E534(char a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 80) = a3;
  *(v4 + 88) = v3;
  *(v4 + 72) = a2;
  *(v4 + 145) = a1;
  sub_1000C6F14();
  *(v4 + 96) = sub_1000C6F04();
  v6 = sub_1000C6ED4();
  *(v4 + 104) = v6;
  *(v4 + 112) = v5;

  return _swift_task_switch(sub_10005E5D4, v6, v5);
}

uint64_t sub_10005E5D4()
{
  *(*(v0 + 88) + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12SharingModel_lastServicesData) = *(v0 + 72);
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v1 = swift_task_alloc();
  *(v0 + 120) = v1;
  *v1 = v0;
  v1[1] = sub_10005E694;
  v2 = *(v0 + 145);

  return sub_10005D7AC(v2);
}

uint64_t sub_10005E694()
{
  v1 = *v0;

  v2 = *(v1 + 112);
  v3 = *(v1 + 104);

  return _swift_task_switch(sub_10005E7B4, v3, v2);
}

uint64_t sub_10005E7B4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  if (*(v0 + 57) != 4 || (swift_getKeyPath(), swift_getKeyPath(), sub_1000C6094(), , , *(v0 + 59) != 3) && (swift_getKeyPath(), swift_getKeyPath(), sub_1000C6094(), , , *(v0 + 60) != 2))
  {
    v1 = *(v0 + 145);

    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 58) = v1;

    sub_1000C60A4();
    goto LABEL_7;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  if (*(v0 + 61) == 3)
  {

LABEL_7:
    v2 = *(v0 + 8);

    return v2();
  }

  v4 = *(v0 + 145);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 62) = v4;

  sub_1000C60A4();
  v5 = swift_task_alloc();
  *(v0 + 128) = v5;
  *v5 = v0;
  v5[1] = sub_10005EA80;

  return sub_100067EF4();
}

uint64_t sub_10005EA80()
{
  v2 = *v1;
  *(*v1 + 136) = v0;

  v3 = *(v2 + 112);
  v4 = *(v2 + 104);
  if (v0)
  {
    v5 = sub_10005EC6C;
  }

  else
  {
    v5 = sub_10005EBBC;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10005EBBC()
{

  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 144) = 3;

  sub_1000C60A4();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10005EC6C()
{
  v1 = v0;
  v2 = *(v0 + 136);

  *(v0 + 64) = v2;
  swift_errorRetain();
  sub_10000FEB8(&qword_1001179B0, &qword_1000CBB80);
  if (swift_dynamicCast())
  {

    v3 = *(v0 + 24);
    v13 = *(v0 + 16);
    v5 = *(v0 + 32);
    v4 = *(v0 + 40);
    v6 = *(v0 + 48);
    v7 = *(v0 + 56);
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 63) = 5;

    result = sub_1000C60A4();
    if (v7 == 4)
    {
      if (!v5)
      {
        __break(1u);
        return result;
      }

      v9 = v5;

      sub_100067838(5u, v5);
      sub_1000494BC(v13, v3, v5, v4, v6, 4u);
    }

    else
    {
      v11 = [objc_allocWithZone(NSError) initWithDomain:BRCloudDocsErrorDomain code:46 userInfo:0];
      sub_100067838(2u, v11);
      sub_1000494BC(v13, v3, v5, v4, v6, v7);
    }
  }

  else
  {

    v10 = sub_1000C5CD4();
    sub_100067838(2u, v10);
  }

  v12 = *(v1 + 8);

  return v12();
}

uint64_t sub_10005EEC0(unsigned __int8 a1, uint64_t a2)
{
  v2 = a1;
  v3 = sub_10000FEB8(&qword_1001164E0, &unk_1000CDD50);
  result = __chkstk_darwin(v3 - 8);
  v6 = &v12 - v5;
  if (v2 == 2)
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      v7 = result;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1000C6094();

      v8 = HIBYTE(v12);
      if (HIBYTE(v12) - 2 >= 4)
      {
        sub_1000C6F24();
        v9 = sub_1000C6F44();
        (*(*(v9 - 8) + 56))(v6, 0, 1, v9);
        sub_1000C6F14();

        v10 = sub_1000C6F04();
        v11 = swift_allocObject();
        *(v11 + 16) = v10;
        *(v11 + 24) = &protocol witness table for MainActor;
        *(v11 + 32) = v7;
        *(v11 + 40) = v8 & 1;
        sub_1000B8860(0, 0, v6, &unk_1000D0C98, v11);
      }
    }
  }

  return result;
}

uint64_t sub_10005F084(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 64) = a5;
  *(v5 + 16) = a4;
  sub_1000C6F14();
  *(v5 + 24) = sub_1000C6F04();
  v7 = sub_1000C6ED4();
  *(v5 + 32) = v7;
  *(v5 + 40) = v6;

  return _swift_task_switch(sub_10005F120, v7, v6);
}

uint64_t sub_10005F120()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12SharingModel_lastServicesData);
  v2 = *v1;
  *(v0 + 48) = *v1;
  v3 = v1[1];
  swift_unknownObjectRetain();
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *v4 = v0;
  v4[1] = sub_10005E3F0;
  v5 = *(v0 + 64);

  return sub_10005E534(v5, v2, v3);
}

uint64_t sub_10005F1F0(unsigned __int8 a1, uint64_t a2)
{
  v2 = a1;
  v3 = sub_10000FEB8(&qword_1001164E0, &unk_1000CDD50);
  result = __chkstk_darwin(v3 - 8);
  v6 = &v11 - v5;
  if (v2 == 3)
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      v7 = result;
      sub_1000C6F24();
      v8 = sub_1000C6F44();
      (*(*(v8 - 8) + 56))(v6, 0, 1, v8);
      sub_1000C6F14();

      v9 = sub_1000C6F04();
      v10 = swift_allocObject();
      v10[2] = v9;
      v10[3] = &protocol witness table for MainActor;
      v10[4] = v7;
      sub_1000B82F8(0, 0, v6, &unk_1000D0C88, v10);
    }
  }

  return result;
}

uint64_t sub_10005F358(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7)
{
  *(v7 + 104) = a6;
  *(v7 + 112) = a7;
  *(v7 + 88) = a4;
  *(v7 + 96) = a5;
  *(v7 + 256) = a2;
  *(v7 + 72) = a1;
  *(v7 + 80) = a3;
  v8 = sub_1000C65A4();
  *(v7 + 120) = v8;
  *(v7 + 128) = *(v8 - 8);
  *(v7 + 136) = swift_task_alloc();
  sub_10000FEB8(&qword_100116260, &qword_1000CD940);
  *(v7 + 144) = swift_task_alloc();
  *(v7 + 152) = swift_task_alloc();
  v9 = sub_1000C5D84();
  *(v7 + 160) = v9;
  *(v7 + 168) = *(v9 - 8);
  *(v7 + 176) = swift_task_alloc();
  v10 = sub_1000C5F74();
  *(v7 + 184) = v10;
  *(v7 + 192) = *(v10 - 8);
  *(v7 + 200) = swift_task_alloc();
  sub_1000C6F14();
  *(v7 + 208) = sub_1000C6F04();
  v12 = sub_1000C6ED4();
  *(v7 + 216) = v12;
  *(v7 + 224) = v11;

  return _swift_task_switch(sub_10005F554, v12, v11);
}

uint64_t sub_10005F554()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 232) = Strong;
  if (!Strong)
  {

    v4 = [objc_allocWithZone(UIImage) init];
LABEL_22:

    v22 = *(v0 + 8);

    return v22(v4);
  }

  v2 = *(v0 + 80);
  if (v2)
  {
    v3 = v2;

    v4 = *(v0 + 80);
    goto LABEL_12;
  }

  if (*(v0 + 256))
  {

    v4 = sub_100083FB0();
    v5 = v4;
    sub_1000C5F54();
    v6 = v5;
    v7 = sub_1000C5F64();
    v8 = sub_1000C6FF4();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138412290;
      *(v9 + 4) = v6;
      *v10 = v4;
      _os_log_impl(&_mh_execute_header, v7, v8, "iOS appIcon: icon: %@", v9, 0xCu);
      sub_100010F24(v10, &qword_100117080, &unk_1000CC350);
    }

    else
    {

      v7 = v6;
    }

    v14 = *(v0 + 192);
    v13 = *(v0 + 200);
    v15 = *(v0 + 184);

    (*(v14 + 8))(v13, v15);
LABEL_12:
    sub_100010778(0, &qword_100116760, NSObject_ptr);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1000C6094();

    v16 = *(v0 + 40);
    if (qword_100115F80 != -1)
    {
      swift_once();
    }

    v17 = qword_100117E30;
    v18 = sub_1000C7184();

    if (v18)
    {
      if (v4)
      {
        goto LABEL_21;
      }
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1000C6094();

      v19 = *(v0 + 48);
      v20 = [objc_allocWithZone(UIImage) init];
      v21 = sub_1000C7184();

      if (v4)
      {
        goto LABEL_21;
      }

      if ((v21 & 1) == 0)
      {
        swift_getKeyPath();
        swift_getKeyPath();
        sub_1000C6094();

        v4 = *(v0 + 56);
        goto LABEL_22;
      }
    }

    v4 = v17;
LABEL_21:

    goto LABEL_22;
  }

  v11 = *(v0 + 88);
  if (v11)
  {
    v12 = v11;

    v4 = *(v0 + 88);
    goto LABEL_12;
  }

  v24 = Strong;
  v25 = *(v0 + 160);
  v26 = *(v0 + 168);
  v27 = *(v0 + 152);
  sub_100017574(*(v0 + 72), v27, &qword_100116260, &qword_1000CD940);
  if ((*(v26 + 48))(v27, 1, v25) == 1)
  {
    v28 = *(v0 + 152);

    sub_100010F24(v28, &qword_100116260, &qword_1000CD940);
    v4 = 0;
    goto LABEL_12;
  }

  (*(*(v0 + 168) + 32))(*(v0 + 176), *(v0 + 152), *(v0 + 160));
  v29 = *(v24 + 56);
  if (*(v24 + 64) == 1)
  {
    v30 = *(v24 + 56);
  }

  else
  {
    v32 = *(v0 + 128);
    v31 = *(v0 + 136);
    v33 = *(v0 + 120);
    swift_retain_n();
    sub_1000C6FE4();
    v34 = sub_1000C6764();
    sub_1000C5F44();

    sub_1000C6594();
    swift_getAtKeyPath();
    sub_1000798F4(v29, 0);
    (*(v32 + 8))(v31, v33);
    sub_1000798F4(v29, 0);
    v30 = *(v0 + 64);
  }

  v35 = swift_unknownObjectWeakLoadStrong();
  if (v35)
  {
    v36 = *(v35 + OBJC_IVAR___CloudSharingViewController_itemUTI + 8);
    if (v36)
    {
      v37 = *(v0 + 168);
      v38 = *(v0 + 160);
      v39 = *(v0 + 144);
      v40 = *(v35 + OBJC_IVAR___CloudSharingViewController_itemUTI);
      (*(v37 + 16))(v39, *(v0 + 176), v38);
      (*(v37 + 56))(v39, 0, 1, v38);

      LOBYTE(v38) = sub_10009EC80(v40, v36, v39);

      sub_100010F24(v39, &qword_100116260, &qword_1000CD940);
      if (sub_10009D2CC(v38) == 0x7265646C6F66 && v41 == 0xE600000000000000)
      {

        goto LABEL_37;
      }

      v42 = sub_1000C73A4();

      if (v42)
      {
LABEL_37:
        v4 = sub_100083FB0();
        swift_unknownObjectRelease();
        if (v4)
        {

          (*(*(v0 + 168) + 8))(*(v0 + 176), *(v0 + 160));
          goto LABEL_12;
        }

        goto LABEL_40;
      }
    }

    swift_unknownObjectRelease();
  }

LABEL_40:
  v43 = swift_task_alloc();
  *(v0 + 240) = v43;
  *v43 = v0;
  v43[1] = sub_10005FC74;
  v44 = *(v0 + 176);
  v45 = *(v0 + 104);
  v46 = *(v0 + 112);

  return sub_10007A668(v44, v45, v46, v30);
}

uint64_t sub_10005FC74(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 248) = a1;

  v3 = *(v2 + 224);
  v4 = *(v2 + 216);

  return _swift_task_switch(sub_10005FD9C, v4, v3);
}

uint64_t sub_10005FD9C()
{

  v1 = v0[31];
  (*(v0[21] + 8))(v0[22], v0[20]);
  sub_100010778(0, &qword_100116760, NSObject_ptr);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  v2 = v0[5];
  if (qword_100115F80 != -1)
  {
    swift_once();
  }

  v3 = qword_100117E30;
  v4 = sub_1000C7184();

  if (v4)
  {
    if (v1)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  v5 = v0[6];
  v6 = [objc_allocWithZone(UIImage) init];
  v7 = sub_1000C7184();

  if (v1)
  {
    goto LABEL_10;
  }

  if (v7)
  {
LABEL_9:
    v1 = v3;
LABEL_10:

    goto LABEL_11;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  v1 = v0[7];
LABEL_11:

  v8 = v0[1];

  return v8(v1);
}

uint64_t sub_10006001C(uint64_t a1, uint64_t a2, int *a3)
{
  *(v3 + 16) = a1;
  v6 = sub_10000FEB8(&unk_100118600, &qword_1000D0C10);
  v7 = *(a2 + v6[12]);
  v8 = *(a2 + v6[16]);
  v9 = *(a2 + v6[20]);
  v12 = (a3 + *a3);
  v10 = swift_task_alloc();
  *(v3 + 24) = v10;
  *v10 = v3;
  v10[1] = sub_100060160;

  return v12(a2, v7, v8, v9);
}

uint64_t sub_100060160(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  *v3 = a1;
  v4 = *(v6 + 8);

  return v4();
}

void sub_100060270(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  if (v3)
  {
    v5 = [v3 containerOptions];
    v6 = [v5 prefersHiddenAllowedSharingOptionsUI];

    if (v6)
    {
      v4 = 0;
    }
  }

  *a2 = v4;
}

uint64_t sub_1000602D8(char *a1, uint64_t a2)
{
  v3 = sub_10000FEB8(&qword_1001164E0, &unk_1000CDD50);
  __chkstk_darwin(v3 - 8);
  v5 = &v18[-v4];
  v6 = sub_10000FEB8(&qword_100116260, &qword_1000CD940);
  __chkstk_darwin(v6 - 8);
  v8 = &v18[-v7];
  v9 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1000C6094();

    v11 = sub_1000C5D84();
    v12 = (*(*(v11 - 8) + 48))(v8, 1, v11);
    sub_100010F24(v8, &qword_100116260, &qword_1000CD940);
    if (v12 == 1)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1000C6094();

      v13 = (v19 & 0xFE) != 8;
      if (v9)
      {
      }
    }

    else
    {
      if (v9)
      {
      }

      v13 = 1;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_1000C6094();

    if (v19 == 2 && v13)
    {
      v14 = sub_1000C6F44();
      (*(*(v14 - 8) + 56))(v5, 1, 1, v14);
      v15 = swift_allocObject();
      swift_weakInit();
      sub_1000C6F14();

      v16 = sub_1000C6F04();
      v17 = swift_allocObject();
      v17[2] = v16;
      v17[3] = &protocol witness table for MainActor;
      v17[4] = v15;

      sub_1000B8860(0, 0, v5, &unk_1000D0C00, v17);
    }
  }

  return result;
}

uint64_t sub_100060614(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a4;
  v5 = sub_1000C5F74();
  v4[7] = v5;
  v4[8] = *(v5 - 8);
  v4[9] = swift_task_alloc();
  v4[10] = swift_task_alloc();
  v4[11] = sub_1000C6F14();
  v4[12] = sub_1000C6F04();
  v7 = sub_1000C6ED4();
  v4[13] = v7;
  v4[14] = v6;

  return _swift_task_switch(sub_100060718, v7, v6);
}

uint64_t sub_100060718()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[15] = Strong;
  if (Strong)
  {
    v2 = swift_unknownObjectWeakLoadStrong();
    v0[16] = v2;
    if (v2)
    {
      sub_1000C5F54();
      v3 = sub_1000C5F64();
      v4 = sub_1000C6FF4();
      if (os_log_type_enabled(v3, v4))
      {
        v5 = swift_slowAlloc();
        *v5 = 0;
        _os_log_impl(&_mh_execute_header, v3, v4, "Refetching share due to network change.", v5, 2u);
      }

      v6 = v0[10];
      v7 = v0[7];
      v8 = v0[8];

      v9 = *(v8 + 8);
      v0[17] = v9;
      v9(v6, v7);
      v0[18] = sub_1000C6F04();
      v10 = swift_task_alloc();
      v0[19] = v10;
      *v10 = v0;
      v10[1] = sub_1000608F8;

      return sub_100064C74();
    }
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_1000608F8()
{
  *(*v1 + 160) = v0;

  v3 = sub_1000C6ED4();
  if (v0)
  {
    v4 = sub_100060B3C;
  }

  else
  {
    v4 = sub_100060A54;
  }

  return _swift_task_switch(v4, v3, v2);
}

uint64_t sub_100060A54()
{

  v1 = *(v0 + 104);
  v2 = *(v0 + 112);

  return _swift_task_switch(sub_100060AB8, v1, v2);
}

uint64_t sub_100060AB8()
{

  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100060B3C()
{

  v1 = *(v0 + 104);
  v2 = *(v0 + 112);

  return _swift_task_switch(sub_100060BA0, v1, v2);
}

uint64_t sub_100060BA0()
{
  v18 = v0;

  swift_unknownObjectRelease();

  sub_1000C5F54();
  swift_errorRetain();
  v1 = sub_1000C5F64();
  v2 = sub_1000C6FD4();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[20];
    v15 = v0[9];
    v16 = v0[17];
    v4 = v0[7];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v17 = v6;
    *v5 = 136315138;
    v0[5] = v3;
    swift_errorRetain();
    sub_10000FEB8(&qword_1001179B0, &qword_1000CBB80);
    v7 = sub_1000C6D94();
    v9 = sub_100071844(v7, v8, &v17);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to refetch share for network change %s", v5, 0xCu);
    sub_100010544(v6);

    v16(v15, v4);
  }

  else
  {
    v10 = v0[17];
    v11 = v0[9];
    v12 = v0[7];

    v10(v11, v12);
  }

  v13 = v0[1];

  return v13();
}

uint64_t sub_100060E84(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();
}

uint64_t sub_100060F44()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  return v1;
}

uint64_t sub_100060FBC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1000C5D84();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000FEB8(&qword_100116260, &qword_1000CD940);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v17 - v12;
  v14 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12SharingModel_shouldStopAccessingSharedFileOrFolderURL;
  if (*(v2 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12SharingModel_shouldStopAccessingSharedFileOrFolderURL) == 1)
  {
    sub_100017574(a1, &v17 - v12, &qword_100116260, &qword_1000CD940);
    if ((*(v5 + 48))(v13, 1, v4) == 1)
    {
      sub_100010F24(v13, &qword_100116260, &qword_1000CD940);
    }

    else
    {
      sub_1000C5D34();
      (*(v5 + 8))(v13, v4);
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  if ((*(v5 + 48))(v11, 1, v4))
  {
    result = sub_100010F24(v11, &qword_100116260, &qword_1000CD940);
    v16 = 0;
  }

  else
  {
    (*(v5 + 16))(v7, v11, v4);
    sub_100010F24(v11, &qword_100116260, &qword_1000CD940);
    v16 = sub_1000C5D54();
    result = (*(v5 + 8))(v7, v4);
  }

  *(v2 + v14) = v16;
  return result;
}

double sub_10006127C@<D0>(_OWORD *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_1000612FC(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1000C60A4();
}

uint64_t sub_100061380@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  *a2 = v4;
  return result;
}

uint64_t sub_100061400(void **a1, uint64_t *a2)
{
  v2 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();

  v3 = v2;
  return sub_1000C60A4();
}

uint64_t sub_1000614A0@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_100061520(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1000C60A4();
}

uint64_t sub_1000615A4()
{
  v1[4] = v0;
  sub_10000FEB8(&qword_100116260, &qword_1000CD940);
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v2 = sub_1000C5D84();
  v1[8] = v2;
  v1[9] = *(v2 - 8);
  v1[10] = swift_task_alloc();
  sub_1000C6F14();
  v1[11] = sub_1000C6F04();
  v4 = sub_1000C6ED4();
  v1[12] = v4;
  v1[13] = v3;

  return _swift_task_switch(sub_1000616E8, v4, v3);
}

uint64_t sub_1000616E8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 136) = 1;

  sub_1000C60A4();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  if ((*(v0 + 137) & 0xFE) == 8)
  {
    v1 = *(v0 + 64);
    v2 = *(v0 + 72);
    v3 = *(v0 + 56);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1000C6094();

    if ((*(v2 + 48))(v3, 1, v1) == 1)
    {
      v4 = *(v0 + 56);

      sub_100010F24(v4, &qword_100116260, &qword_1000CD940);
      sub_1000100B0();
      swift_allocError();
      *v5 = 0xD000000000000016;
      *(v5 + 8) = 0x80000001000DAA30;
      *(v5 + 24) = 0;
      *(v5 + 32) = 0;
      *(v5 + 16) = 0;
      *(v5 + 40) = 0;
      swift_willThrow();
      swift_getKeyPath();
      swift_getKeyPath();
      *(v0 + 138) = 0;
    }

    else
    {
      (*(*(v0 + 72) + 32))(*(v0 + 80), *(v0 + 56), *(v0 + 64));
      v8 = sub_1000170EC();
      v10 = v8;
      if (!v9)
      {

        if (v10)
        {
          v18 = *(v0 + 32);
          swift_getKeyPath();
          swift_getKeyPath();
          v19 = v10;

          sub_1000C6094();

          if (*(v0 + 140) == 1)
          {
            swift_getKeyPath();
            swift_getKeyPath();

            sub_1000C6094();

            if (*(v0 + 142) > 1u)
            {
              if (*(v0 + 142) != 2)
              {
                return sub_1000C72E4();
              }

              v20 = 2;
            }

            else if (*(v0 + 142))
            {
              v20 = 3;
            }

            else
            {
              v20 = 1;
            }
          }

          else
          {
            v20 = 1;
          }

          [v19 setPublicPermission:v20];
          v25 = *(*(v18 + 16) + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12OptionsModel_allowAccessRequestsSPIOverride);
          if (v25 == 2)
          {
            swift_getKeyPath();
            swift_getKeyPath();

            sub_1000C6094();

            LOBYTE(v25) = *(v0 + 141);
          }

          v26 = *(v0 + 72);
          v27 = *(v0 + 80);
          v28 = *(v0 + 64);
          [v19 setAllowsAccessRequests:v25 & 1];
          swift_getKeyPath();
          swift_getKeyPath();
          *(v0 + 24) = v10;

          sub_1000C60A4();

          (*(v26 + 8))(v27, v28);
        }

        else
        {
          v21 = *(v0 + 72);
          v30 = *(v0 + 80);
          v22 = *(v0 + 64);
          v24 = *(v0 + 40);
          v23 = *(v0 + 48);
          swift_getKeyPath();
          swift_getKeyPath();
          *(v0 + 16) = 0;
          swift_retain_n();
          sub_1000C60A4();
          (*(v21 + 56))(v23, 1, 1, v22);
          swift_getKeyPath();
          swift_getKeyPath();
          sub_100017574(v23, v24, &qword_100116260, &qword_1000CD940);

          sub_1000C60A4();
          sub_100010F24(v23, &qword_100116260, &qword_1000CD940);

          (*(v21 + 8))(v30, v22);
        }

        swift_getKeyPath();
        swift_getKeyPath();
        *(v0 + 139) = 0;

        sub_1000C60A4();

        v17 = *(v0 + 8);
        goto LABEL_10;
      }

      v29 = *(v0 + 80);
      v11 = v8;
      v12 = *(v0 + 64);
      v13 = *(v0 + 72);
      v14 = v9;
      v15 = v9;

      sub_1000100B0();
      swift_allocError();
      *v16 = xmmword_1000CFF40;
      *(v16 + 24) = 0;
      *(v16 + 32) = 0;
      *(v16 + 16) = v14;
      *(v16 + 40) = 1;
      swift_willThrow();

      (*(v13 + 8))(v29, v12);
      swift_getKeyPath();
      swift_getKeyPath();
      *(v0 + 143) = 0;
    }

    sub_1000C60A4();

    v17 = *(v0 + 8);
LABEL_10:

    return v17();
  }

  *(v0 + 112) = sub_100059520();
  v6 = swift_task_alloc();
  *(v0 + 120) = v6;
  *v6 = v0;
  v6[1] = sub_100061EE0;

  return sub_100008CE8();
}

uint64_t sub_100061EE0()
{
  v2 = *v1;
  *(*v1 + 128) = v0;

  swift_unknownObjectRelease();
  v3 = *(v2 + 104);
  v4 = *(v2 + 96);
  if (v0)
  {
    v5 = sub_100062110;
  }

  else
  {
    v5 = sub_100062034;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100062034()
{

  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 145) = 0;

  sub_1000C60A4();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100062110()
{

  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 144) = 0;

  sub_1000C60A4();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000621EC(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 296) = a2;
  *(v4 + 304) = v3;
  *(v4 + 408) = a3;
  *(v4 + 288) = a1;
  v5 = sub_1000C5F74();
  *(v4 + 312) = v5;
  *(v4 + 320) = *(v5 - 8);
  *(v4 + 328) = swift_task_alloc();
  sub_1000C6F14();
  *(v4 + 336) = sub_1000C6F04();
  v7 = sub_1000C6ED4();
  *(v4 + 344) = v7;
  *(v4 + 352) = v6;

  return _swift_task_switch(sub_1000622E8, v7, v6);
}

uint64_t sub_1000622E8()
{
  if (*(v0 + 408))
  {
    v1 = sub_10003AB60();
    *(v0 + 368) = v1;
    v2 = v0 + 16;
    v3 = v1;
    v4 = sub_1000C6D44();
    *(v0 + 392) = v4;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 272;
    *(v0 + 24) = sub_10006288C;
    v5 = swift_continuation_init();
    *(v0 + 200) = sub_10000FEB8(&unk_100118250, &qword_1000D0560);
    *(v0 + 144) = _NSConcreteStackBlock;
    *(v0 + 152) = 1107296256;
    *(v0 + 160) = sub_10007B980;
    *(v0 + 168) = &unk_1001090C0;
    *(v0 + 176) = v5;
    [v3 fetchShareParticipantWithPhoneNumber:v4 completionHandler:v0 + 144];
  }

  else
  {
    v6 = sub_10003AB60();
    *(v0 + 360) = v6;
    v2 = v0 + 80;
    v7 = v6;
    v8 = sub_1000C6D44();
    *(v0 + 376) = v8;
    *(v0 + 80) = v0;
    *(v0 + 120) = v0 + 280;
    *(v0 + 88) = sub_1000626D0;
    v9 = swift_continuation_init();
    *(v0 + 264) = sub_10000FEB8(&unk_100118250, &qword_1000D0560);
    *(v0 + 208) = _NSConcreteStackBlock;
    *(v0 + 216) = 1107296256;
    *(v0 + 224) = sub_10007B980;
    *(v0 + 232) = &unk_1001090E8;
    *(v0 + 240) = v9;
    [v7 fetchShareParticipantWithEmailAddress:v8 completionHandler:v0 + 208];
  }

  return _swift_continuation_await(v2);
}

uint64_t sub_1000626D0()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 384) = v2;
  v3 = *(v1 + 352);
  v4 = *(v1 + 344);
  if (v2)
  {
    v5 = sub_100062A48;
  }

  else
  {
    v5 = sub_100062800;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100062800()
{
  v1 = v0[47];
  v2 = v0[45];

  v3 = v0[35];

  v4 = v0[1];

  return v4(v3);
}

uint64_t sub_10006288C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 400) = v2;
  v3 = *(v1 + 352);
  v4 = *(v1 + 344);
  if (v2)
  {
    v5 = sub_100062C44;
  }

  else
  {
    v5 = sub_1000629BC;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1000629BC()
{
  v1 = v0[49];
  v2 = v0[46];

  v3 = v0[34];

  v4 = v0[1];

  return v4(v3);
}

uint64_t sub_100062A48()
{
  v1 = v0[47];
  v2 = v0[45];

  swift_willThrow();

  sub_1000C5F54();
  swift_errorRetain();
  v3 = sub_1000C5F64();
  v4 = sub_1000C6FD4();

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
    sub_100010F24(v6, &qword_100117080, &unk_1000CC350);
  }

  v9 = v0[40];
  v8 = v0[41];
  v10 = v0[39];

  (*(v9 + 8))(v8, v10);
  v11 = sub_1000C5CD4();
  sub_1000100B0();
  swift_allocError();
  *v12 = 0xD000000000000019;
  *(v12 + 8) = 0x80000001000DA9A0;
  *(v12 + 24) = 0;
  *(v12 + 32) = 0;
  *(v12 + 16) = v11;
  *(v12 + 40) = 2;
  swift_willThrow();

  v13 = v0[1];

  return v13();
}

uint64_t sub_100062C44()
{
  v1 = v0[49];
  v2 = v0[46];

  swift_willThrow();

  sub_1000C5F54();
  swift_errorRetain();
  v3 = sub_1000C5F64();
  v4 = sub_1000C6FD4();

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
    sub_100010F24(v6, &qword_100117080, &unk_1000CC350);
  }

  v9 = v0[40];
  v8 = v0[41];
  v10 = v0[39];

  (*(v9 + 8))(v8, v10);
  v11 = sub_1000C5CD4();
  sub_1000100B0();
  swift_allocError();
  *v12 = 0xD000000000000019;
  *(v12 + 8) = 0x80000001000DA9A0;
  *(v12 + 24) = 0;
  *(v12 + 32) = 0;
  *(v12 + 16) = v11;
  *(v12 + 40) = 2;
  swift_willThrow();

  v13 = v0[1];

  return v13();
}

uint64_t sub_100062E44(uint64_t a1, unsigned __int8 a2)
{
  if (sub_100059688())
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_1000C6094();

    if (v5)
    {
      goto LABEL_6;
    }
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_1000C6094();

    if (v8)
    {
      goto LABEL_6;
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();

  sub_1000C6094();

  if (v7 != 1)
  {
    return 3;
  }

LABEL_6:
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1000C6094();

  if (v6 & 1 | a2 & (a1 == 3))
  {
    return 2;
  }

  else
  {
    return 3;
  }
}

uint64_t sub_100063020(char a1, char a2)
{
  *(v3 + 48) = v2;
  *(v3 + 220) = a2;
  *(v3 + 219) = a1;
  v4 = sub_1000C5F74();
  *(v3 + 56) = v4;
  *(v3 + 64) = *(v4 - 8);
  *(v3 + 72) = swift_task_alloc();
  *(v3 + 80) = swift_task_alloc();
  sub_1000C6F14();
  *(v3 + 88) = sub_1000C6F04();
  v6 = sub_1000C6ED4();
  *(v3 + 96) = v6;
  *(v3 + 104) = v5;

  return _swift_task_switch(sub_100063128, v6, v5);
}

uint64_t sub_100063128()
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1000C6094();

  v1 = *(v0 + 16);
  *(v0 + 112) = v1;
  if (!v1)
  {

    sub_1000100B0();
    swift_allocError();
    *v10 = 0xD000000000000043;
    *(v10 + 8) = 0x80000001000DA8D0;
    *(v10 + 16) = xmmword_1000CFF50;
    *(v10 + 32) = 0x80000001000DA920;
    *(v10 + 40) = 11;
    swift_willThrow();

    v9 = *(v0 + 8);
LABEL_7:

    return v9();
  }

  swift_getKeyPath();
  swift_getKeyPath();

  sub_1000C6094();

  if (*(v0 + 216) == 1)
  {

    sub_1000C5F54();
    v2 = sub_1000C5F64();
    v3 = sub_1000C6FF4();
    v4 = os_log_type_enabled(v2, v3);
    v5 = *(v0 + 80);
    v6 = *(v0 + 56);
    v7 = *(v0 + 64);
    if (v4)
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "addParticipantsToShare, doing nothing as we have a public share", v8, 2u);
    }

    (*(v7 + 8))(v5, v6);

    v9 = *(v0 + 8);
    goto LABEL_7;
  }

  *(v0 + 24) = _swiftEmptyArrayStorage;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  result = *(v0 + 32);
  *(v0 + 120) = result;
  v12 = *(result + 16);
  *(v0 + 128) = v12;
  if (v12)
  {
    *(v0 + 136) = _swiftEmptyArrayStorage;
    *(v0 + 144) = 0;
    if (*(result + 16))
    {
      v13 = *(result + 32);
      *(v0 + 152) = v13;
      v14 = *(result + 40);
      *(v0 + 160) = v14;
      v15 = *(result + 48);
      *(v0 + 221) = v15;
      sub_100079744(v13, v14);
      v16 = swift_task_alloc();
      *(v0 + 168) = v16;
      *v16 = v0;
      v16[1] = sub_100063684;

      return sub_1000621EC(v13, v14, v15);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    *(v0 + 192) = _swiftEmptyArrayStorage;
    v17 = *(v0 + 112);
    v18 = *(v0 + 220);

    [v17 setAllowsAccessRequests:v18];
    sub_1000C5F54();

    v19 = sub_1000C5F64();
    v20 = sub_1000C6FF4();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 134217984;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1000C6094();

      v22 = *(*(v0 + 40) + 16);

      *(v21 + 4) = v22;

      _os_log_impl(&_mh_execute_header, v19, v20, "addParticipantsToShare, adding %ld", v21, 0xCu);
    }

    else
    {
    }

    (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));
    v23 = swift_task_alloc();
    *(v0 + 200) = v23;
    *v23 = v0;
    v23[1] = sub_100063CC4;

    return sub_100063F60(_swiftEmptyArrayStorage, 1, 1);
  }

  return result;
}

uint64_t sub_100063684(uint64_t a1)
{
  v3 = *v2;
  v3[22] = a1;
  v3[23] = v1;

  sub_10007974C();
  if (v1)
  {

    v4 = v3[12];
    v5 = v3[13];
    v6 = sub_100063E5C;
  }

  else
  {
    v4 = v3[12];
    v5 = v3[13];
    v6 = sub_1000637F4;
  }

  return _swift_task_switch(v6, v4, v5);
}

void sub_1000637F4()
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1000C6094();

  if (*(v0 + 217) == 3)
  {
    v1 = 2;
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_1000C6094();

    if (*(v0 + 218) > 1u)
    {
      if (*(v0 + 218) != 2)
      {
        sub_1000C72E4();
        return;
      }

      v1 = 2;
    }

    else if (*(v0 + 218))
    {
      v1 = 3;
    }

    else
    {
      v1 = 1;
    }
  }

  v2 = *(v0 + 176);
  v3 = *(v0 + 219);
  [v2 setPermission:v1];
  [v2 setRole:{sub_100062E44(objc_msgSend(v2, "permission"), v3)}];
  v4 = v2;
  sub_1000C6E74();
  if (*((*(v0 + 24) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 24) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1000C6EA4();
  }

  v5 = *(v0 + 176);
  v6 = *(v0 + 128);
  v7 = *(v0 + 144) + 1;
  sub_1000C6EC4();

  v8 = *(v0 + 24);
  if (v7 == v6)
  {
    *(v0 + 192) = v8;
    v9 = *(v0 + 112);
    v10 = *(v0 + 220);

    [v9 setAllowsAccessRequests:v10];
    sub_1000C5F54();

    v11 = sub_1000C5F64();
    v12 = sub_1000C6FF4();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 134217984;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1000C6094();

      v14 = *(*(v0 + 40) + 16);

      *(v13 + 4) = v14;

      _os_log_impl(&_mh_execute_header, v11, v12, "addParticipantsToShare, adding %ld", v13, 0xCu);
    }

    else
    {
    }

    (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));
    v22 = swift_task_alloc();
    *(v0 + 200) = v22;
    *v22 = v0;
    v22[1] = sub_100063CC4;

    sub_100063F60(v8, 1, 1);
  }

  else
  {
    v15 = *(v0 + 144) + 1;
    *(v0 + 136) = v8;
    *(v0 + 144) = v15;
    v16 = *(v0 + 120);
    if (v15 >= *(v16 + 16))
    {
      __break(1u);
    }

    else
    {
      v17 = v16 + 24 * v15;
      v18 = *(v17 + 32);
      *(v0 + 152) = v18;
      v19 = *(v17 + 40);
      *(v0 + 160) = v19;
      v20 = *(v17 + 48);
      *(v0 + 221) = v20;
      sub_100079744(v18, v19);
      v21 = swift_task_alloc();
      *(v0 + 168) = v21;
      *v21 = v0;
      v21[1] = sub_100063684;

      sub_1000621EC(v18, v19, v20);
    }
  }
}

uint64_t sub_100063CC4()
{
  v2 = *v1;
  *(*v1 + 208) = v0;

  if (v0)
  {
    v3 = *(v2 + 96);
    v4 = *(v2 + 104);
    v5 = sub_100063ED8;
  }

  else
  {

    v3 = *(v2 + 96);
    v4 = *(v2 + 104);
    v5 = sub_100063DE0;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_100063DE0()
{
  v1 = *(v0 + 112);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100063E5C()
{
  v1 = *(v0 + 112);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100063ED8()
{
  v1 = *(v0 + 112);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100063F60(uint64_t a1, char a2, char a3)
{
  *(v4 + 116) = a3;
  *(v4 + 115) = a2;
  *(v4 + 24) = a1;
  *(v4 + 32) = v3;
  v5 = sub_1000C5F74();
  *(v4 + 40) = v5;
  *(v4 + 48) = *(v5 - 8);
  *(v4 + 56) = swift_task_alloc();
  sub_1000C6F14();
  *(v4 + 64) = sub_1000C6F04();
  v7 = sub_1000C6ED4();
  *(v4 + 72) = v7;
  *(v4 + 80) = v6;

  return _swift_task_switch(sub_10006405C, v7, v6);
}

uint64_t sub_10006405C()
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1000C6094();

  v1 = *(v0 + 16);
  *(v0 + 88) = v1;
  if (!v1)
  {

    sub_1000100B0();
    swift_allocError();
    *v12 = 0xD000000000000034;
    *(v12 + 8) = 0x80000001000DA960;
    *(v12 + 16) = xmmword_1000CFF50;
    *(v12 + 32) = 0x80000001000DA920;
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

    sub_1000C6094();

    if (*(v0 + 114) == 1)
    {

      sub_1000C5F54();
      v2 = sub_1000C5F64();
      v3 = sub_1000C6FF4();
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

  *(v0 + 96) = sub_1000B2C00();
  *(v0 + 104) = v10;
  *(v0 + 112) = v11;

  return _swift_task_switch(sub_10006432C, 0, 0);
}

uint64_t sub_10006432C()
{
  v1 = *(v0 + 24);
  if (v1 >> 62)
  {
    goto LABEL_40;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1000C72F4())
  {
    v3 = 0;
    v4 = *(v0 + 104);
    v5 = v1 & 0xC000000000000001;
    v6 = *(v0 + 24) + 32;
    v7 = &unk_100113000;
    v18 = *(v0 + 100);
    v19 = v1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v5)
      {
        v9 = sub_1000C7254();
      }

      else
      {
        if (v3 >= *(v19 + 16))
        {
          goto LABEL_36;
        }

        v9 = *(v6 + 8 * v3);
      }

      v1 = v9;
      v10 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      if (*(v0 + 116) != 1 || [v9 role] == 1)
      {
        goto LABEL_6;
      }

      if (v18 == 3)
      {
        goto LABEL_20;
      }

      if (*(v0 + 100) > 1u)
      {
        if (*(v0 + 100) != 2)
        {
          return sub_1000C72E4();
        }

LABEL_20:
        v11 = 2;
        goto LABEL_21;
      }

      if (*(v0 + 100))
      {
        v11 = 3;
      }

      else
      {
        v11 = 1;
      }

LABEL_21:
      [v1 v7[339]];
      v12 = *(v4 + 16);
      if (!v12)
      {
        goto LABEL_37;
      }

      if (*(v4 + 32) != 1)
      {
        if (v12 == 1)
        {
          goto LABEL_38;
        }

LABEL_29:
        if (*(v0 + 112))
        {
          v8 = 2;
          goto LABEL_5;
        }

        goto LABEL_4;
      }

      if (v12 == 1)
      {
        goto LABEL_39;
      }

      if (v18 != 1 || !*(v4 + 33))
      {
        goto LABEL_29;
      }

      if ([v1 role] == 3 || (v17 = *(v0 + 112), v13 = objc_msgSend(v1, "role"), (v17 & 1) != 0))
      {
        v8 = 2;
        v7 = &unk_100113000;
        goto LABEL_5;
      }

      v8 = 2;
      v7 = &unk_100113000;
      if (v13 == 2)
      {
        goto LABEL_5;
      }

LABEL_4:
      v8 = 3;
LABEL_5:
      [v1 setRole:v8];
LABEL_6:
      [*(v0 + 88) addParticipant:v1];

      ++v3;
      if (v10 == i)
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

  v15 = *(v0 + 72);
  v16 = *(v0 + 80);

  return _swift_task_switch(sub_10001B330, v15, v16);
}

uint64_t sub_100064604()
{
  v0 = sub_1000C5F74();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000C5F54();
  v4 = sub_1000C5F64();
  v5 = sub_1000C6FB4();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v10 = v7;
    *v6 = 136446210;
    *(v6 + 4) = sub_100071844(0xD00000000000001ELL, 0x80000001000DB6A0, &v10);
    _os_log_impl(&_mh_execute_header, v4, v5, "%{public}s Finish", v6, 0xCu);
    sub_100010544(v7);
  }

  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_10006479C(uint64_t a1, void *a2, void *a3)
{
  v26 = a1;
  v27 = a3;
  v5 = sub_10000FEB8(&qword_100118670, &qword_1000D1068);
  v6 = *(v5 - 8);
  v28 = *(v6 + 64);
  __chkstk_darwin(v5);
  v8 = &v23 - v7;
  sub_10000FEB8(&qword_100116340, &unk_1000CDF80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1000CD0E0;
  *(v9 + 32) = a2;
  v10 = objc_allocWithZone(CKFetchShareParticipantsOperation);
  sub_100010778(0, &qword_100118678, CKUserIdentityLookupInfo_ptr);
  v11 = a2;
  isa = sub_1000C6E84().super.isa;

  v24 = [v10 initWithUserIdentityLookupInfos:isa];

  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  v25 = *(v6 + 16);
  v14 = v5;
  v25(v8, a1, v5);
  v15 = *(v6 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = v11;
  *(v16 + 24) = v13;
  v17 = *(v6 + 32);
  v23 = v6 + 32;
  v18 = v14;
  v17(v16 + ((v15 + 32) & ~v15), v8, v14);
  v19 = v11;

  v20 = v24;
  sub_1000C7114();
  v25(v8, v26, v18);
  v21 = swift_allocObject();
  *(v21 + 16) = v13;
  v17(v21 + ((v15 + 24) & ~v15), v8, v18);

  sub_1000C7124();
  [v27 addOperation:v20];
}

void sub_100064A70(uint64_t a1, void *a2, char a3, uint64_t a4, uint64_t a5)
{
  sub_100010778(0, &qword_100116760, NSObject_ptr);
  if (sub_1000C7184())
  {
    if (a3)
    {
      swift_errorRetain();
      sub_10000FEB8(&qword_100118670, &qword_1000D1068);
      sub_1000C6EE4();
    }

    else
    {
      swift_beginAccess();
      v8 = *(a5 + 16);
      *(a5 + 16) = a2;
      v9 = a2;
    }
  }
}

uint64_t sub_100064B48(uint64_t a1, char a2, uint64_t a3)
{
  if (a2)
  {
    swift_errorRetain();
    sub_10000FEB8(&qword_100118670, &qword_1000D1068);
  }

  else
  {
    swift_beginAccess();
    v4 = *(a3 + 16);
    if (v4)
    {
      v5 = v4;
      sub_10000FEB8(&qword_100118670, &qword_1000D1068);
      return sub_1000C6EF4();
    }

    sub_1000100B0();
    swift_allocError();
    *v7 = 0xD00000000000001ELL;
    *(v7 + 8) = 0x80000001000DB6A0;
    *(v7 + 16) = xmmword_1000CFF00;
    *(v7 + 32) = 0x80000001000DB730;
    *(v7 + 40) = 11;
    sub_10000FEB8(&qword_100118670, &qword_1000D1068);
  }

  return sub_1000C6EE4();
}

uint64_t sub_100064C74()
{
  v1[4] = v0;
  v2 = sub_1000C5F74();
  v1[5] = v2;
  v1[6] = *(v2 - 8);
  v1[7] = swift_task_alloc();
  sub_10000FEB8(&qword_100116260, &qword_1000CD940);
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v3 = sub_1000C5D84();
  v1[14] = v3;
  v1[15] = *(v3 - 8);
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  sub_1000C6F14();
  v1[18] = sub_1000C6F04();
  v5 = sub_1000C6ED4();
  v1[19] = v5;
  v1[20] = v4;

  return _swift_task_switch(sub_100064E44, v5, v4);
}

uint64_t sub_100064E44()
{
  v36 = v0;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

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
  sub_1000C6094();

  v4 = *(v2 + 48);
  *(v0 + 168) = v4;
  *(v0 + 176) = (v2 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v4(v3, 1, v1) == 1)
  {
    v5 = *(v0 + 104);

    sub_100010F24(v5, &qword_100116260, &qword_1000CD940);
    sub_1000100B0();
    swift_allocError();
    *v6 = 0xD000000000000016;
    *(v6 + 8) = 0x80000001000DAA30;
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
  sub_1000C5F54();
  (*(v12 + 16))(v9, v10, v11);
  v13 = sub_1000C5F64();
  v14 = sub_1000C6FF4();
  v15 = os_log_type_enabled(v13, v14);
  v17 = *(v0 + 120);
  v16 = *(v0 + 128);
  v18 = *(v0 + 112);
  v20 = *(v0 + 48);
  v19 = *(v0 + 56);
  v21 = *(v0 + 40);
  if (v15)
  {
    v34 = *(v0 + 40);
    v22 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v35 = v33;
    *v22 = 136315138;
    sub_1000799C8(&qword_100116300, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v23 = sub_1000C7374();
    v32 = v19;
    v25 = v24;
    v31 = v14;
    v26 = *(v17 + 8);
    v26(v16, v18);
    v27 = sub_100071844(v23, v25, &v35);

    *(v22 + 4) = v27;
    _os_log_impl(&_mh_execute_header, v13, v31, "Fetching share for URL: %s", v22, 0xCu);
    sub_100010544(v33);

    (*(v20 + 8))(v32, v34);
  }

  else
  {

    v26 = *(v17 + 8);
    v26(v16, v18);
    (*(v20 + 8))(v19, v21);
  }

  *(v0 + 184) = v26;
  v28 = swift_task_alloc();
  *(v0 + 192) = v28;
  *v28 = v0;
  v28[1] = sub_100065330;
  v29 = *(v0 + 136);
  v30 = *(v0 + 88);

  return sub_10001E6D0(v30, v29);
}

uint64_t sub_100065330(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 200) = a1;
  *(v4 + 208) = v1;

  v5 = *(v3 + 160);
  v6 = *(v3 + 152);
  if (v1)
  {
    v7 = sub_1000657EC;
  }

  else
  {
    v7 = sub_100065474;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_100065474()
{
  v1 = v0[21];
  v2 = v0[14];
  v4 = v0[11];
  v3 = v0[12];
  v5 = v0[10];

  sub_100020D0C(v4, v3, &qword_100116260, &qword_1000CD940);
  sub_100017574(v3, v5, &qword_100116260, &qword_1000CD940);
  LODWORD(v2) = v1(v5, 1, v2);
  sub_100010F24(v5, &qword_100116260, &qword_1000CD940);
  v6 = v0[25];
  if (v2 != 1)
  {
    v7 = [objc_allocWithZone(BRCKShareSubitem) initWithShare:v6];

    v6 = v7;
  }

  v9 = v0[8];
  v8 = v0[9];
  sub_100017574(v0[12], v8, &qword_100116260, &qword_1000CD940);
  sub_100017574(v8, v9, &qword_100116260, &qword_1000CD940);

  sub_10000DEEC(v9);

  sub_100010F24(v8, &qword_100116260, &qword_1000CD940);
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

    sub_1000C60A4();
    sub_100010F24(v14, &qword_100116260, &qword_1000CD940);
    v10(v11, v12);
  }

  else
  {
    v19 = v0[23];
    v16 = v0[8];
    v15 = v0[9];
    v0[2] = 0;
    swift_retain_n();
    sub_1000C60A4();
    (*(v13 + 56))(v15, 1, 1, v12);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_100017574(v15, v16, &qword_100116260, &qword_1000CD940);

    sub_1000C60A4();
    sub_100010F24(v15, &qword_100116260, &qword_1000CD940);

    sub_100010F24(v14, &qword_100116260, &qword_1000CD940);
    v19(v11, v12);
  }

  v17 = v0[1];

  return v17();
}

uint64_t sub_1000657EC()
{
  v1 = v0[23];
  v2 = v0[17];
  v3 = v0[14];

  v1(v2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1000658E8(uint64_t a1, uint64_t a2)
{
  v3[10] = a2;
  v3[11] = v2;
  v3[9] = a1;
  sub_1000C6F14();
  v3[12] = sub_1000C6F04();
  v5 = sub_1000C6ED4();
  v3[13] = v5;
  v3[14] = v4;

  return _swift_task_switch(sub_100065984, v5, v4);
}

uint64_t sub_100065984()
{
  type metadata accessor for CloudKitOperations(0);
  v1 = swift_allocObject();
  v0[15] = v1;
  v1[2] = 0xD000000000000021;
  v1[3] = 0x80000001000D7770;
  v1[4] = 0xD000000000000016;
  v1[5] = 0x80000001000D77A0;
  v1[6] = 0xD00000000000001DLL;
  v1[7] = 0x80000001000D77C0;
  v0[6] = 0;
  v0[5] = 0;
  sub_10000FEB8(&qword_100116310, &qword_1000CBBC0);
  sub_1000C6054();

  return _swift_task_switch(sub_100065A8C, 0, 0);
}

uint64_t sub_100065A8C()
{
  v1 = v0[15];
  v3 = v0[9];
  v2 = v0[10];
  v4 = swift_task_alloc();
  v0[16] = v4;
  v4[2] = v1;
  v4[3] = v3;
  v4[4] = v2;
  v5 = swift_task_alloc();
  v0[17] = v5;
  v6 = sub_10000FEB8(&qword_100118630, &qword_1000D0F18);
  *v5 = v0;
  v5[1] = sub_100065BA4;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 2, 0, 0, 0xD00000000000002DLL, 0x80000001000DA250, sub_10007B414, v4, v6);
}

uint64_t sub_100065BA4()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_100065F14;
  }

  else
  {

    v2 = sub_100065CC0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100065CC0()
{
  *(v0 + 152) = *(v0 + 16);
  *(v0 + 168) = *(v0 + 32);
  return _swift_task_switch(sub_100065CE8, *(v0 + 104), *(v0 + 112));
}

uint64_t sub_100065CE8()
{
  v1 = v0[10];

  if (v1)
  {
    v2 = v0[10];
    swift_getKeyPath();
    swift_getKeyPath();
    v0[8] = v2;
    v3 = v2;

    sub_1000C60A4();
  }

  else
  {
    v4 = v0[20];

    v5 = v4;
    sub_1000860A0(v4, 0);
  }

  v7 = v0[20];
  v6 = v0[21];
  v8 = v0[19];
  v9 = v0[15];
  v10 = v0[11];
  v11 = *(v10 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12SharingModel_ckMetadata);
  *(v10 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12SharingModel_ckMetadata) = v6;
  v12 = v6;

  swift_getKeyPath();
  swift_getKeyPath();
  v0[7] = v8;

  v13 = v8;
  sub_1000C60A4();
  swift_setDeallocating();

  v14 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing18CloudKitOperations__ckSourceAppBundleID;
  v15 = sub_10000FEB8(&unk_1001182C0, &qword_1000CF900);
  (*(*(v15 - 8) + 8))(v9 + v14, v15);
  swift_deallocClassInstance();

  v16 = v0[1];

  return v16();
}

uint64_t sub_100065F14()
{

  v1 = *(v0 + 104);
  v2 = *(v0 + 112);

  return _swift_task_switch(sub_100065F78, v1, v2);
}

uint64_t sub_100065F78()
{
  v1 = *(v0 + 120);

  swift_setDeallocating();

  v2 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing18CloudKitOperations__ckSourceAppBundleID;
  v3 = sub_10000FEB8(&unk_1001182C0, &qword_1000CF900);
  (*(*(v3 - 8) + 8))(v1 + v2, v3);
  swift_deallocClassInstance();
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100066080(uint64_t a1)
{
  v2[9] = a1;
  v2[10] = v1;
  v3 = sub_1000C5F74();
  v2[11] = v3;
  v2[12] = *(v3 - 8);
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  sub_10000FEB8(&qword_100116260, &qword_1000CD940);
  v2[15] = swift_task_alloc();
  sub_1000C6F14();
  v2[16] = sub_1000C6F04();
  v5 = sub_1000C6ED4();
  v2[17] = v5;
  v2[18] = v4;

  return _swift_task_switch(sub_1000661B8, v5, v4);
}

void sub_1000661B8()
{
  v1 = *(v0 + 72);
  if (v1 < 1)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  *(v0 + 152) = BRCloudDocsErrorDomain;
  *(v0 + 160) = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  if (*(v0 + 57) != 1)
  {
    goto LABEL_5;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  if (*(v0 + 58) - 1 < 3)
  {
LABEL_12:

    v4 = *(v0 + 8);

    v4();
    return;
  }

  if (*(v0 + 58))
  {
LABEL_5:
    v2 = *(v0 + 160);
    if (v2 != 1)
    {
      while (1)
      {
        if (v2 < 2)
        {
          __break(1u);
          goto LABEL_20;
        }

        *(v0 + 160) = v2 - 1;
        swift_getKeyPath();
        swift_getKeyPath();
        sub_1000C6094();

        if (*(v0 + 57) == 1)
        {
          swift_getKeyPath();
          swift_getKeyPath();
          sub_1000C6094();

          v3 = *(v0 + 58);
          if (v3 != 4)
          {
            break;
          }
        }

        v2 = *(v0 + 160);
        if (v2 == 1)
        {
          goto LABEL_12;
        }
      }

      if ((v3 - 1) >= 3)
      {
        goto LABEL_15;
      }
    }

    goto LABEL_12;
  }

LABEL_15:
  v5 = *(v0 + 120);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 59) = 1;

  sub_1000C60A4();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  v6 = sub_1000C5D84();
  *(v0 + 168) = v6;
  v7 = *(v6 - 8);
  *(v0 + 176) = v7;
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
LABEL_21:
    __break(1u);
    return;
  }

  v8 = swift_task_alloc();
  *(v0 + 184) = v8;
  *v8 = v0;
  v8[1] = sub_10006657C;
  v9 = *(v0 + 120);

  sub_100012E80(v9, 0);
}

uint64_t sub_10006657C()
{
  v2 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v3 = v2[17];
    v4 = v2[18];
    v5 = sub_100066A00;
  }

  else
  {
    (*(v2[22] + 8))(v2[15], v2[21]);
    v3 = v2[17];
    v4 = v2[18];
    v5 = sub_1000666A8;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_1000666A8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 232) = 2;

  result = sub_1000C60A4();
  v2 = *(v0 + 160);
  if (v2 == 1)
  {
LABEL_8:

    v4 = *(v0 + 8);

    return v4();
  }

  while (1)
  {
    if (v2 < 2)
    {
      __break(1u);
LABEL_16:
      __break(1u);
      return result;
    }

    *(v0 + 160) = v2 - 1;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1000C6094();

    if (*(v0 + 57))
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1000C6094();

      v3 = *(v0 + 58);
      if (v3 != 4)
      {
        break;
      }
    }

    v2 = *(v0 + 160);
    if (v2 == 1)
    {
      goto LABEL_8;
    }
  }

  if ((v3 - 1) < 3)
  {
    goto LABEL_8;
  }

  v5 = *(v0 + 120);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 59) = 1;

  sub_1000C60A4();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  v6 = sub_1000C5D84();
  *(v0 + 168) = v6;
  v7 = *(v6 - 8);
  *(v0 + 176) = v7;
  result = (*(v7 + 48))(v5, 1, v6);
  if (result == 1)
  {
    goto LABEL_16;
  }

  v8 = swift_task_alloc();
  *(v0 + 184) = v8;
  *v8 = v0;
  v8[1] = sub_10006657C;
  v9 = *(v0 + 120);

  return sub_100012E80(v9, 0);
}

uint64_t sub_100066A00()
{
  v1 = *(v0 + 192);
  (*(*(v0 + 176) + 8))(*(v0 + 120), *(v0 + 168));
  *(v0 + 64) = v1;
  swift_errorRetain();
  sub_10000FEB8(&qword_1001179B0, &qword_1000CBB80);
  if ((swift_dynamicCast() & 1) == 0)
  {

    sub_1000C5F54();
    swift_errorRetain();
    v13 = sub_1000C5F64();
    v14 = sub_1000C6FD4();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 138412290;
      swift_errorRetain();
      v17 = _swift_stdlib_bridgeErrorToNSError();
      *(v15 + 4) = v17;
      *v16 = v17;
      _os_log_impl(&_mh_execute_header, v13, v14, "prepFolderSharingIfNeeded folderSharingStage -> .failed, unexpected error: %@", v15, 0xCu);
      sub_100010F24(v16, &qword_100117080, &unk_1000CC350);
    }

    v19 = *(v0 + 96);
    v18 = *(v0 + 104);
    v20 = *(v0 + 88);

    (*(v19 + 8))(v18, v20);
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 60) = 3;

    sub_1000C60A4();
    goto LABEL_16;
  }

  v2 = *(v0 + 24);
  v55 = *(v0 + 16);
  v4 = *(v0 + 32);
  v3 = *(v0 + 40);
  *(v0 + 200) = v2;
  *(v0 + 208) = v4;
  v5 = *(v0 + 48);
  *(v0 + 216) = v5;
  v6 = *(v0 + 56);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  if ((*(v0 + 61) & 0xFE) == 2)
  {

    v7 = v55;
    v8 = v2;
    v9 = v4;
    v10 = v3;
    v11 = v5;
    v12 = v6;
LABEL_15:
    sub_1000494BC(v7, v8, v9, v10, v11, v12);
LABEL_16:

    goto LABEL_17;
  }

  v53 = v4;
  v54 = v5;
  if (v6 != 3)
  {
    v31 = v6;

    sub_1000C5F54();
    v32 = sub_1000C5F64();
    v33 = sub_1000C6FD4();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&_mh_execute_header, v32, v33, "prepFolderSharingIfNeeded unexpected error, folderSharingStage -> .failed", v34, 2u);
    }

    v35 = *(v0 + 112);
    v37 = *(v0 + 88);
    v36 = *(v0 + 96);

    (*(v36 + 8))(v35, v37);
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 62) = 3;

    sub_1000C60A4();
    v11 = v54;
    v7 = v55;
    v8 = v2;
    v10 = v3;
    v9 = v4;
    v12 = v31;
    goto LABEL_15;
  }

  v21 = v3;
  v22 = v2;
  v23 = v4;
  if (!v4)
  {
    v24 = v54;

    v25 = 0;
    goto LABEL_29;
  }

  v24 = v54;
  sub_1000199B8(v55, v22, v4, v21, v54, 3u);
  v25 = v4;
  v26 = [v25 domain];
  v27 = sub_1000C6D84();
  v29 = v28;

  if (v27 == sub_1000C6D84() && v29 == v30)
  {
  }

  else
  {
    v40 = sub_1000C73A4();

    if ((v40 & 1) == 0)
    {

      goto LABEL_29;
    }
  }

  v41 = [v25 code];

  if (v41 != 7)
  {
LABEL_29:
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 63) = 3;

    sub_1000C60A4();
    sub_100067838(2u, v23);

    sub_1000494BC(v55, v22, v23, v21, v24, 3u);

    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 232) = 2;

    v46 = sub_1000C60A4();
    v47 = *(v0 + 160);
    if (v47 != 1)
    {
      while (v47 >= 2)
      {
        *(v0 + 160) = v47 - 1;
        swift_getKeyPath();
        swift_getKeyPath();
        sub_1000C6094();

        if (*(v0 + 57))
        {
          swift_getKeyPath();
          swift_getKeyPath();
          sub_1000C6094();

          if (*(v0 + 58) != 4)
          {
            if (*(v0 + 58))
            {
              goto LABEL_40;
            }

            v48 = *(v0 + 120);
            swift_getKeyPath();
            swift_getKeyPath();
            *(v0 + 59) = 1;

            sub_1000C60A4();
            swift_getKeyPath();
            swift_getKeyPath();
            sub_1000C6094();

            v49 = sub_1000C5D84();
            *(v0 + 168) = v49;
            v50 = *(v49 - 8);
            *(v0 + 176) = v50;
            v46 = (*(v50 + 48))(v48, 1, v49);
            if (v46 != 1)
            {
              v51 = swift_task_alloc();
              *(v0 + 184) = v51;
              *v51 = v0;
              v51[1] = sub_10006657C;
              v52 = *(v0 + 120);

              return sub_100012E80(v52, 0);
            }

LABEL_42:
            __break(1u);
            return static Task<>.sleep(nanoseconds:)(v46);
          }
        }

        v47 = *(v0 + 160);
        if (v47 == 1)
        {
          goto LABEL_40;
        }
      }

      __break(1u);
      goto LABEL_42;
    }

LABEL_40:

LABEL_17:

    v38 = *(v0 + 8);

    return v38();
  }

  v42 = *(v0 + 160);
  sub_1000494BC(v55, v22, v53, v21, v54, 3u);
  if (v42 <= 0)
  {
    v43 = *(v0 + 152);
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 233) = 3;

    sub_1000C60A4();
    v44 = [objc_allocWithZone(NSError) initWithDomain:v43 code:46 userInfo:0];
    sub_100067838(2u, v44);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 234) = 0;

  sub_1000C60A4();
  v45 = swift_task_alloc();
  *(v0 + 224) = v45;
  *v45 = v0;
  v45[1] = sub_100067400;
  v46 = 1000000000;

  return static Task<>.sleep(nanoseconds:)(v46);
}

uint64_t sub_100067400()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 136);
    v4 = *(v2 + 144);
    v5 = sub_10007B930;
  }

  else
  {
    v3 = *(v2 + 136);
    v4 = *(v2 + 144);
    v5 = sub_100067524;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_100067524()
{

  v2 = *(v0 + 160);
  if (v2 == 1)
  {
LABEL_8:

    v4 = *(v0 + 8);

    return v4();
  }

  while (1)
  {
    if (v2 < 2)
    {
      __break(1u);
LABEL_16:
      __break(1u);
      return result;
    }

    *(v0 + 160) = v2 - 1;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1000C6094();

    if (*(v0 + 57))
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1000C6094();

      v3 = *(v0 + 58);
      if (v3 != 4)
      {
        break;
      }
    }

    v2 = *(v0 + 160);
    if (v2 == 1)
    {
      goto LABEL_8;
    }
  }

  if ((v3 - 1) < 3)
  {
    goto LABEL_8;
  }

  v5 = *(v0 + 120);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 59) = 1;

  sub_1000C60A4();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  v6 = sub_1000C5D84();
  *(v0 + 168) = v6;
  v7 = *(v6 - 8);
  *(v0 + 176) = v7;
  result = (*(v7 + 48))(v5, 1, v6);
  if (result == 1)
  {
    goto LABEL_16;
  }

  v8 = swift_task_alloc();
  *(v0 + 184) = v8;
  *v8 = v0;
  v8[1] = sub_10006657C;
  v9 = *(v0 + 120);

  return sub_100012E80(v9, 0);
}

void sub_100067838(unsigned __int8 a1, void *a2)
{
  v4 = a1;
  v5 = sub_1000C5F74();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v56 - v10;
  if (v4 == 6)
  {
    sub_100059520();
    v62 = [objc_allocWithZone(NSError) initWithDomain:NSCocoaErrorDomain code:3072 userInfo:0];
    sub_10000B6FC(v62, 0);
    swift_unknownObjectRelease();
    v12 = v62;
  }

  else
  {
    v13 = v2;
    if (a2)
    {
      v14 = a2;
      sub_1000C5F54();
      v15 = v14;
      v16 = sub_1000C5F64();
      v17 = sub_1000C6FD4();

      if (os_log_type_enabled(v16, v17))
      {
        LODWORD(v58) = v17;
        v60 = v16;
        v62 = v6;
        v18 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        v63 = v57;
        v59 = v18;
        *v18 = 136315394;
        v19 = sub_1000C6E54();
        v21 = v20;
        if (("or" & 0x2000000000000000) != 0)
        {
          v22 = ("or" >> 40) & 0xF0000;
        }

        else
        {
          v22 = 2031616;
        }

        v61 = v13;
        if (v22)
        {
          v23 = v19;
          while (sub_1000C6E54() != v23 || v24 != v21)
          {
            v25 = sub_1000C73A4();

            if (v25)
            {
              goto LABEL_31;
            }

            if ((v22 ^ sub_1000C6DF4()) < 0x4000)
            {
              goto LABEL_16;
            }
          }

LABEL_31:

          sub_1000C6E64();
          v40 = sub_1000C6DC4();
          v27 = v41;

          v26 = v40;
        }

        else
        {
LABEL_16:

          v26 = 0;
          v27 = 0xE000000000000000;
        }

        v43 = v59;
        v42 = v60;
        v44 = sub_100071844(v26, v27, &v63);

        *(v43 + 1) = v44;
        *(v43 + 6) = 2080;
        v45 = v15;
        v46 = [v45 description];
        v47 = sub_1000C6D84();
        v49 = v48;

        v50 = sub_100071844(v47, v49, &v63);

        *(v43 + 14) = v50;
        _os_log_impl(&_mh_execute_header, v42, v58, "%s cancelling via extension with error: %s", v43, 0x16u);
        swift_arrayDestroy();

        (*(v62 + 1))(v11, v5);
      }

      else
      {

        (*(v6 + 1))(v11, v5);
      }

      sub_100059520();
      sub_10000B6FC(v15, 1u);
    }

    else
    {
      sub_1000C5F54();
      v28 = sub_1000C5F64();
      v29 = sub_1000C6FF4();
      if (os_log_type_enabled(v28, v29))
      {
        LODWORD(v59) = v29;
        v62 = v6;
        v30 = swift_slowAlloc();
        v58 = swift_slowAlloc();
        v63 = v58;
        v60 = v30;
        LODWORD(v30->isa) = 136315138;
        v31 = sub_1000C6E54();
        v33 = v32;
        if (("or" & 0x2000000000000000) != 0)
        {
          v34 = ("or" >> 40) & 0xF0000;
        }

        else
        {
          v34 = 2031616;
        }

        v61 = v13;
        if (v34)
        {
          v35 = v31;
          while (sub_1000C6E54() != v35 || v36 != v33)
          {
            v37 = sub_1000C73A4();

            if (v37)
            {
              goto LABEL_35;
            }

            if ((v34 ^ sub_1000C6DF4()) < 0x4000)
            {
              goto LABEL_27;
            }
          }

LABEL_35:

          sub_1000C6E64();
          v51 = sub_1000C6DC4();
          v39 = v52;

          v38 = v51;
        }

        else
        {
LABEL_27:

          v38 = 0;
          v39 = 0xE000000000000000;
        }

        v53 = sub_100071844(v38, v39, &v63);

        v54 = v60;
        *(&v60->isa + 4) = v53;
        _os_log_impl(&_mh_execute_header, v28, v59, "%s dismissing via extension without error", v54, 0xCu);
        sub_100010544(v58);

        (*(v62 + 1))(v9, v5);
      }

      else
      {

        (*(v6 + 1))(v9, v5);
      }

      sub_100059520();
      sub_10000816C();
      v55 = sub_1000077D8();
      if (v55)
      {
        [v55 _dismissViewControllerWithError:0];
        swift_unknownObjectRelease();
      }
    }

    swift_unknownObjectRelease();
  }
}

uint64_t sub_100067EF4()
{
  v1[6] = v0;
  v2 = sub_1000C5F74();
  v1[7] = v2;
  v1[8] = *(v2 - 8);
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  sub_10000FEB8(&qword_100116260, &qword_1000CD940);
  v1[11] = swift_task_alloc();
  sub_1000C6F14();
  v1[12] = sub_1000C6F04();
  v4 = sub_1000C6ED4();
  v1[13] = v4;
  v1[14] = v3;

  return _swift_task_switch(sub_10006802C, v4, v3);
}

uint64_t sub_10006802C()
{
  v26 = v0;
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 168) = 2;

  sub_1000C60A4();
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1000C6094();

  v1 = *(v0 + 16);
  *(v0 + 120) = v1;
  if (v1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1000C6094();

    swift_getKeyPath();
    swift_getKeyPath();
    sub_1000C6094();

    if ((*(v0 + 170) & 0xFE) == 8)
    {
      v2 = 0;
    }

    else
    {
      v2 = sub_10003AB60();
    }

    *(v0 + 128) = v2;
    v17 = sub_1000B2C00();
    v19 = v18;
    v21 = v20;
    *(v0 + 136) = v18;
    v22 = swift_task_alloc();
    *(v0 + 144) = v22;
    *v22 = v0;
    v22[1] = sub_100068500;
    v23 = *(v0 + 88);

    return sub_10001EBFC(v23, v1, v2, v17 & 0x101FFFFFFFFFFLL, v19, v21 & 0x101);
  }

  else
  {

    sub_1000100B0();
    v3 = swift_allocError();
    *v4 = xmmword_1000CFF60;
    *(v4 + 16) = xmmword_1000CFF10;
    *(v4 + 32) = 0x80000001000DA8A0;
    *(v4 + 40) = 11;
    swift_willThrow();
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 169) = 0;

    sub_1000C60A4();
    sub_1000C5F54();
    swift_errorRetain();
    v5 = sub_1000C5F64();
    v6 = sub_1000C6FD4();

    v7 = os_log_type_enabled(v5, v6);
    v8 = *(v0 + 64);
    v24 = *(v0 + 72);
    v9 = *(v0 + 56);
    if (v7)
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v25 = v11;
      *v10 = 136315138;
      *(v0 + 24) = v3;
      swift_errorRetain();
      sub_10000FEB8(&qword_1001179B0, &qword_1000CBB80);
      v12 = sub_1000C6D94();
      v14 = sub_100071844(v12, v13, &v25);

      *(v10 + 4) = v14;
      _os_log_impl(&_mh_execute_header, v5, v6, "saveShare error: %s", v10, 0xCu);
      sub_100010544(v11);
    }

    (*(v8 + 8))(v24, v9);
    swift_willThrow();

    v15 = *(v0 + 8);

    return v15();
  }
}

uint64_t sub_100068500(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[19] = a1;
  v4[20] = v1;

  v5 = v3[16];
  sub_100010F24(v3[11], &qword_100116260, &qword_1000CD940);

  v6 = v3[14];
  v7 = v3[13];
  if (v1)
  {
    v8 = sub_1000689B4;
  }

  else
  {
    v8 = sub_1000686A8;
  }

  return _swift_task_switch(v8, v7, v6);
}

uint64_t sub_1000686A8()
{
  v25 = v0;
  v1 = *(v0 + 152);

  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 32) = v1;

  v2 = v1;
  sub_1000C60A4();
  sub_1000C5F54();
  v3 = v2;
  v4 = sub_1000C5F64();
  v5 = sub_1000C6FF4();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 152);
    v23 = *(v0 + 80);
    v8 = *(v0 + 56);
    v7 = *(v0 + 64);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v24 = v10;
    *v9 = 136315394;
    *(v0 + 40) = [v6 rootRecordID];
    sub_10000FEB8(&unk_100118240, &qword_1000D0390);
    v11 = sub_1000C6D94();
    v13 = sub_100071844(v11, v12, &v24);

    *(v9 + 4) = v13;
    *(v9 + 12) = 1026;
    v14 = [v6 allowsAccessRequests];

    *(v9 + 14) = v14;
    _os_log_impl(&_mh_execute_header, v4, v5, "saveShare succeeded, rootRecordID: %s, share allowAccessRequests: %{BOOL,public}d", v9, 0x12u);
    sub_100010544(v10);

    (*(v7 + 8))(v23, v8);
  }

  else
  {
    v15 = *(v0 + 152);
    v16 = *(v0 + 80);
    v17 = *(v0 + 56);
    v18 = *(v0 + 64);

    (*(v18 + 8))(v16, v17);
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_10000B5CC();
    swift_unknownObjectRelease();
  }

  v19 = *(v0 + 152);
  v20 = *(v0 + 120);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 171) = 3;

  sub_1000C60A4();

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_1000689B4()
{
  v19 = v0;
  v1 = *(v0 + 120);

  v2 = *(v0 + 160);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 169) = 0;

  sub_1000C60A4();
  sub_1000C5F54();
  swift_errorRetain();
  v3 = sub_1000C5F64();
  v4 = sub_1000C6FD4();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 64);
    v17 = *(v0 + 72);
    v6 = *(v0 + 56);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v18 = v8;
    *v7 = 136315138;
    *(v0 + 24) = v2;
    swift_errorRetain();
    sub_10000FEB8(&qword_1001179B0, &qword_1000CBB80);
    v9 = sub_1000C6D94();
    v11 = sub_100071844(v9, v10, &v18);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v3, v4, "saveShare error: %s", v7, 0xCu);
    sub_100010544(v8);

    (*(v5 + 8))(v17, v6);
  }

  else
  {
    v13 = *(v0 + 64);
    v12 = *(v0 + 72);
    v14 = *(v0 + 56);

    (*(v13 + 8))(v12, v14);
  }

  swift_willThrow();

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_100068C08()
{
  v0 = sub_1000C5F74();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000C5F54();
  v4 = sub_1000C5F64();
  v5 = sub_1000C6FB4();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v10 = v7;
    *v6 = 136446210;
    *(v6 + 4) = sub_100071844(0xD00000000000001CLL, 0x80000001000DAA50, &v10);
    _os_log_impl(&_mh_execute_header, v4, v5, "%{public}s Finish", v6, 0xCu);
    sub_100010544(v7);
  }

  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_100068DA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = sub_1000C6F14();
  v4[4] = sub_1000C6F04();
  v5 = swift_task_alloc();
  v4[5] = v5;
  *v5 = v4;
  v5[1] = sub_100068E50;

  return sub_100069028();
}

uint64_t sub_100068E50()
{

  v1 = sub_1000C6ED4();

  return _swift_task_switch(sub_100068F8C, v1, v0);
}

uint64_t sub_100068F8C()
{

  sub_100059520();
  sub_10000816C();
  v1 = sub_1000077D8();
  if (v1)
  {
    [v1 _dismissViewControllerWithError:0];
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRelease();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100069028()
{
  v1[2] = v0;
  v2 = sub_1000C5F74();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = sub_1000C5D84();
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();
  v1[9] = sub_10000FEB8(&qword_100116260, &qword_1000CD940);
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  sub_1000C6F14();
  v1[15] = sub_1000C6F04();
  v5 = sub_1000C6ED4();
  v1[16] = v5;
  v1[17] = v4;

  return _swift_task_switch(sub_1000691E4, v5, v4);
}

uint64_t sub_1000691E4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  v1 = swift_task_alloc();
  *(v0 + 144) = v1;
  *v1 = v0;
  v1[1] = sub_1000692D0;
  v2 = *(v0 + 112);

  return sub_100055638(v2);
}

uint64_t sub_1000692D0()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  *(*v1 + 152) = v0;

  sub_100010F24(v3, &qword_100116260, &qword_1000CD940);
  v4 = *(v2 + 136);
  v5 = *(v2 + 128);
  if (v0)
  {
    v6 = sub_1000696F4;
  }

  else
  {
    v6 = sub_100069438;
  }

  return _swift_task_switch(v6, v5, v4);
}

uint64_t sub_100069438()
{

  v1 = v0[13];
  v2 = v0[6];
  v3 = v0[7];
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1000C6094();

  v4 = *(v3 + 48);
  if (v4(v1, 1, v2) == 1)
  {
    sub_100010F24(v0[13], &qword_100116260, &qword_1000CD940);
  }

  else
  {
    v5 = v0[11];
    v6 = v0[12];
    v8 = v0[7];
    v7 = v0[8];
    v9 = v0[6];
    (*(v8 + 32))(v7, v0[13], v9);
    (*(v8 + 16))(v6, v7, v9);
    (*(v8 + 56))(v6, 0, 1, v9);
    v10 = [objc_opt_self() generalPasteboard];
    sub_100017574(v6, v5, &qword_100116260, &qword_1000CD940);
    if (v4(v5, 1, v9) == 1)
    {
      v12 = 0;
    }

    else
    {
      v13 = v0[11];
      v14 = v0[6];
      v15 = v0[7];
      sub_1000C5D24(v11);
      v12 = v16;
      (*(v15 + 8))(v13, v14);
    }

    v17 = v0[12];
    v19 = v0[7];
    v18 = v0[8];
    v20 = v0[6];
    [v10 setURL:v12];

    sub_100010F24(v17, &qword_100116260, &qword_1000CD940);
    (*(v19 + 8))(v18, v20);
  }

  v21 = v0[1];

  return v21();
}

uint64_t sub_1000696F4()
{
  v39 = v0;

  sub_1000C5F54();

  swift_errorRetain();
  v1 = sub_1000C5F64();
  v2 = sub_1000C6FD4();

  if (os_log_type_enabled(v1, v2))
  {
    v35 = v0[4];
    v36 = v0[3];
    v37 = v0[5];
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v38 = v5;
    *v3 = 136315394;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1000C6094();

    v6 = sub_1000C6D94();
    v8 = sub_100071844(v6, v7, &v38);

    *(v3 + 4) = v8;
    *(v3 + 12) = 2112;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 14) = v9;
    *v4 = v9;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to fetch sharing URL to copy to pasteboard %s: %@", v3, 0x16u);
    sub_100010F24(v4, &qword_100117080, &unk_1000CC350);

    sub_100010544(v5);

    (*(v35 + 8))(v37, v36);
  }

  else
  {
    v11 = v0[4];
    v10 = v0[5];
    v12 = v0[3];

    (*(v11 + 8))(v10, v12);
  }

  v13 = v0[13];
  v14 = v0[6];
  v15 = v0[7];
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1000C6094();

  v16 = *(v15 + 48);
  if (v16(v13, 1, v14) == 1)
  {
    sub_100010F24(v0[13], &qword_100116260, &qword_1000CD940);
  }

  else
  {
    v17 = v0[11];
    v18 = v0[12];
    v20 = v0[7];
    v19 = v0[8];
    v21 = v0[6];
    (*(v20 + 32))(v19, v0[13], v21);
    (*(v20 + 16))(v18, v19, v21);
    (*(v20 + 56))(v18, 0, 1, v21);
    v22 = [objc_opt_self() generalPasteboard];
    sub_100017574(v18, v17, &qword_100116260, &qword_1000CD940);
    if (v16(v17, 1, v21) == 1)
    {
      v24 = 0;
    }

    else
    {
      v25 = v0[11];
      v26 = v0[6];
      v27 = v0[7];
      sub_1000C5D24(v23);
      v24 = v28;
      (*(v27 + 8))(v25, v26);
    }

    v29 = v0[12];
    v31 = v0[7];
    v30 = v0[8];
    v32 = v0[6];
    [v22 setURL:v24];

    sub_100010F24(v29, &qword_100116260, &qword_1000CD940);
    (*(v31 + 8))(v30, v32);
  }

  v33 = v0[1];

  return v33();
}

uint64_t sub_100069BBC()
{

  sub_1000798CC(v0 + 40);
  sub_1000798F4(*(v0 + 56), *(v0 + 64));
  v1 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12SharingModel__isDelegateInitialized;
  v2 = sub_10000FEB8(&qword_100117640, &unk_1000CC8B0);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v4 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12SharingModel__executionMode;
  v5 = sub_10000FEB8(&qword_1001178A8, &unk_1000CF2C0);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12SharingModel__sharingType;
  v7 = sub_10000FEB8(&qword_100118260, &qword_1000D0620);
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  v8 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12SharingModel__sharingStage;
  v9 = sub_10000FEB8(&qword_100118268, &qword_1000D0628);
  (*(*(v9 - 8) + 8))(v0 + v8, v9);
  v10 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12SharingModel__addedAddresses;
  v11 = sub_10000FEB8(&qword_100118270, &qword_1000D0630);
  (*(*(v11 - 8) + 8))(v0 + v10, v11);
  v12 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12SharingModel__createOrLoadStage;
  v13 = sub_10000FEB8(&qword_100118278, &qword_1000D0638);
  (*(*(v13 - 8) + 8))(v0 + v12, v13);
  v14 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12SharingModel__addingAddressesStage;
  v15 = sub_10000FEB8(&unk_100118280, &unk_1000D0640);
  (*(*(v15 - 8) + 8))(v0 + v14, v15);
  v16 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12SharingModel__savingStage;
  v17 = sub_10000FEB8(&qword_100116F30, &qword_1000CD630);
  (*(*(v17 - 8) + 8))(v0 + v16, v17);
  v18 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12SharingModel__alertNowShowing;
  v19 = sub_10000FEB8(&qword_100118290, &qword_1000D0650);
  (*(*(v19 - 8) + 8))(v0 + v18, v19);
  v3(v0 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12SharingModel__isShowingAlert, v2);
  v3(v0 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12SharingModel__isFolderShare, v2);

  v3(v0 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12SharingModel__isFolderSubshare, v2);

  v20 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12SharingModel__folderSharingStage;
  v21 = sub_10000FEB8(&qword_100118298, &qword_1000D0658);
  (*(*(v21 - 8) + 8))(v0 + v20, v21);
  v22 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12SharingModel__shareSaveStatus;
  v23 = sub_10000FEB8(&unk_1001182A0, &unk_1000D0660);
  (*(*(v23 - 8) + 8))(v0 + v22, v23);
  swift_unknownObjectRelease();
  v24 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12SharingModel__sharingOptionsAllowedFromSPI;
  v25 = sub_10000FEB8(&qword_100116988, &qword_1000CC8A8);
  (*(*(v25 - 8) + 8))(v0 + v24, v25);
  v26 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12SharingModel__yourNameAndEmail;
  v27 = sub_10000FEB8(&qword_1001182B0, &qword_1000D0670);
  (*(*(v27 - 8) + 8))(v0 + v26, v27);
  v28 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12SharingModel__sharedFileOrFolderURL;
  v29 = sub_10000FEB8(&qword_1001182B8, &qword_1000D0678);
  (*(*(v29 - 8) + 8))(v0 + v28, v29);
  v30 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12SharingModel__itemUTI;
  v31 = sub_10000FEB8(&unk_1001182C0, &qword_1000CF900);
  v32 = *(*(v31 - 8) + 8);
  v32(v0 + v30, v31);
  v3(v0 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12SharingModel__isShareRoot, v2);
  v33 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12SharingModel__thumbnail;
  v34 = sub_10000FEB8(&qword_100116E48, &qword_1000CD218);
  (*(*(v34 - 8) + 8))(v0 + v33, v34);
  v35 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12SharingModel__thumbnailFromCloudKitSPI;
  v36 = sub_10000FEB8(&unk_1001182D0, &unk_1000D0680);
  v37 = *(*(v36 - 8) + 8);
  v37(v0 + v35, v36);
  v37(v0 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12SharingModel__thumbnailFromDocumentSPI, v36);
  v38 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12SharingModel__itemTitle;
  v39 = sub_10000FEB8(&qword_100116E40, &qword_1000CD210);
  v40 = *(*(v39 - 8) + 8);
  v40(v0 + v38, v39);
  v32(v0 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12SharingModel__sourceAppBundleID, v31);
  v40(v0 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12SharingModel__sectionTitleForAuxiliaryToggles, v39);
  v40(v0 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12SharingModel__primaryCheckboxTitle, v39);
  v40(v0 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12SharingModel__secondaryCheckboxTitle, v39);
  v3(v0 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12SharingModel__primaryCheckboxState, v2);
  v3(v0 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12SharingModel__secondaryCheckboxState, v2);
  v41 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12SharingModel__ckContainerIdentifier;
  v42 = sub_10000FEB8(&qword_1001182E0, &qword_1000D0690);
  (*(*(v42 - 8) + 8))(v0 + v41, v42);
  v40(v0 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12SharingModel__helpAnchor, v39);
  v43 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12SharingModel__participantDetails;
  v44 = sub_10000FEB8(&qword_1001182E8, &qword_1000D0698);
  (*(*(v44 - 8) + 8))(v0 + v43, v44);

  return v0;
}

uint64_t sub_10006A3E8()
{
  sub_100069BBC();

  return swift_deallocClassInstance();
}

void sub_10006A440()
{
  v0 = sub_1000C6D44();
  v1 = [objc_opt_self() imageNamed:v0];

  if (!v1)
  {
    v1 = [objc_allocWithZone(UIImage) init];
  }

  qword_100117E30 = v1;
}

uint64_t sub_10006A4D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = sub_1000C6F14();
  v5[3] = sub_1000C6F04();
  v7 = swift_task_alloc();
  v5[4] = v7;
  *v7 = v5;
  v7[1] = sub_10006A598;

  return sub_100063F60(a5, 1, 0);
}

uint64_t sub_10006A598()
{
  *(*v1 + 40) = v0;

  v3 = sub_1000C6ED4();
  if (v0)
  {
    v4 = sub_10006A758;
  }

  else
  {
    v4 = sub_10006A6F4;
  }

  return _swift_task_switch(v4, v3, v2);
}

uint64_t sub_10006A6F4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10006A758()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10006A7BC()
{
  v1 = sub_1000C5F74();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();
  v0[5] = sub_1000C6F14();
  v0[6] = sub_1000C6F04();
  v2 = swift_task_alloc();
  v0[7] = v2;
  *v2 = v0;
  v2[1] = sub_10006A8C4;

  return sub_100067EF4();
}

uint64_t sub_10006A8C4()
{
  *(*v1 + 64) = v0;

  v3 = sub_1000C6ED4();
  if (v0)
  {
    v4 = sub_10006AB2C;
  }

  else
  {
    v4 = sub_10006AA20;
  }

  return _swift_task_switch(v4, v3, v2);
}

uint64_t sub_10006AA20()
{

  sub_1000C5F54();
  v1 = sub_1000C5F64();
  v2 = sub_1000C6FF4();
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

uint64_t sub_10006AB2C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10006AB9C(uint64_t a1)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1000C60A4();
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100067838(6u, 0);
  }

  return result;
}

uint64_t sub_10006AC5C(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    return sub_1000C60A4();
  }

  return result;
}

uint64_t sub_10006ACDC()
{
  v1 = (*(v0 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12SharingModel__rootFolderURL) + *(**(v0 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12SharingModel__rootFolderURL) + 104));
  v2 = *v1;
  v3 = v1[1];
  *v1 = sub_100079958;
  v1[1] = v0;

  sub_100011334(v2, v3);

  v4 = (*(v0 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12SharingModel__rootFolderTitle) + *(**(v0 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12SharingModel__rootFolderTitle) + 104));
  v5 = *v4;
  v6 = v4[1];
  *v4 = sub_10007995C;
  v4[1] = v0;

  sub_100011334(v5, v6);

  v7 = (*(v0 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12SharingModel__ckFolderSubitemName) + *(**(v0 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12SharingModel__ckFolderSubitemName) + 104));
  v8 = *v7;
  v9 = v7[1];
  *v7 = sub_100079960;
  v7[1] = v0;

  sub_100011334(v8, v9);
}

uint64_t sub_10006AE2C(uint64_t a1)
{
  v2[12] = a1;
  v2[13] = v1;
  v3 = sub_1000C5F74();
  v2[14] = v3;
  v2[15] = *(v3 - 8);
  v2[16] = swift_task_alloc();
  sub_10000FEB8(&qword_100116260, &qword_1000CD940);
  v2[17] = swift_task_alloc();
  sub_1000C6F14();
  v2[18] = sub_1000C6F04();
  v5 = sub_1000C6ED4();
  v2[19] = v5;
  v2[20] = v4;

  return _swift_task_switch(sub_10006AF58, v5, v4);
}

uint64_t sub_10006AF58()
{
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 57) = 2;

  sub_1000C60A4();
  *(v0 + 168) = BRCloudDocsErrorDomain;
  *(v0 + 226) = 0;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  if (*(v0 + 58) == 1)
  {
    v1 = swift_task_alloc();
    *(v0 + 176) = v1;
    *v1 = v0;
    v1[1] = sub_10006B328;

    return sub_1000615A4();
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 59) = 0;

    sub_1000C60A4();
    swift_getKeyPath();
    swift_getKeyPath();

    sub_1000C6094();

    v3 = *(v0 + 64);
    if (v3)
    {
      swift_getKeyPath();
      swift_getKeyPath();

      sub_1000C6094();

      if (*(v0 + 224) == 1)
      {
        swift_getKeyPath();
        swift_getKeyPath();

        sub_1000C6094();

        if (*(v0 + 225) > 1u)
        {
          if (*(v0 + 225) != 2)
          {
            return sub_1000C72E4();
          }

          v4 = 2;
        }

        else if (*(v0 + 225))
        {
          v4 = 3;
        }

        else
        {
          v4 = 1;
        }
      }

      else
      {
        v4 = 1;
      }

      [v3 setPublicPermission:v4];
    }

    v5 = swift_task_alloc();
    *(v0 + 192) = v5;
    *v5 = v0;
    v5[1] = sub_10006B710;

    return sub_100067EF4();
  }
}

uint64_t sub_10006B328()
{
  v2 = *v1;
  *(*v1 + 184) = v0;

  v3 = *(v2 + 160);
  v4 = *(v2 + 152);
  if (v0)
  {
    v5 = sub_10006BFE4;
  }

  else
  {
    v5 = sub_10006B464;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10006B464()
{
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 59) = 0;

  sub_1000C60A4();
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1000C6094();

  v1 = *(v0 + 64);
  if (v1)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_1000C6094();

    if (*(v0 + 224) == 1)
    {
      swift_getKeyPath();
      swift_getKeyPath();

      sub_1000C6094();

      if (*(v0 + 225) > 1u)
      {
        if (*(v0 + 225) != 2)
        {
          return sub_1000C72E4();
        }

        v2 = 2;
      }

      else if (*(v0 + 225))
      {
        v2 = 3;
      }

      else
      {
        v2 = 1;
      }
    }

    else
    {
      v2 = 1;
    }

    [v1 setPublicPermission:v2];
  }

  v3 = swift_task_alloc();
  *(v0 + 192) = v3;
  *v3 = v0;
  v3[1] = sub_10006B710;

  return sub_100067EF4();
}

uint64_t sub_10006B710()
{
  v2 = *v1;
  *(*v1 + 200) = v0;

  v3 = *(v2 + 160);
  v4 = *(v2 + 152);
  if (v0)
  {
    v5 = sub_10006CB8C;
  }

  else
  {
    v5 = sub_10006B84C;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10006B84C()
{
  v1 = *(v0 + 226);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  v2 = *(v0 + 61);
  if (v2 != 4)
  {
    v1 = v2 != 2;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  if (*(v0 + 62) != 9)
  {
    goto LABEL_11;
  }

  swift_getKeyPath();
  swift_getKeyPath();

  sub_1000C6094();

  v3 = *(v0 + 88);
  if (!v3)
  {
    goto LABEL_7;
  }

  if ((v1 & 1) == 0)
  {
LABEL_11:
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1000C6094();

    v6 = swift_task_alloc();
    *(v0 + 208) = v6;
    *v6 = v0;
    v6[1] = sub_10006BDA0;
    v7 = *(v0 + 136);

    return sub_100055638(v7);
  }

  v1 = 1;
LABEL_7:
  *(v0 + 226) = v1 & 1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  if (*(v0 + 58) == 1)
  {
    v4 = swift_task_alloc();
    *(v0 + 176) = v4;
    *v4 = v0;
    v4[1] = sub_10006B328;

    return sub_1000615A4();
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 59) = 0;

    sub_1000C60A4();
    swift_getKeyPath();
    swift_getKeyPath();

    sub_1000C6094();

    v8 = *(v0 + 64);
    if (v8)
    {
      swift_getKeyPath();
      swift_getKeyPath();

      sub_1000C6094();

      if (*(v0 + 224) == 1)
      {
        swift_getKeyPath();
        swift_getKeyPath();

        sub_1000C6094();

        if (*(v0 + 225) > 1u)
        {
          if (*(v0 + 225) != 2)
          {
            return sub_1000C72E4();
          }

          v9 = 2;
        }

        else if (*(v0 + 225))
        {
          v9 = 3;
        }

        else
        {
          v9 = 1;
        }
      }

      else
      {
        v9 = 1;
      }

      [v8 setPublicPermission:v9];
    }

    v10 = swift_task_alloc();
    *(v0 + 192) = v10;
    *v10 = v0;
    v10[1] = sub_10006B710;

    return sub_100067EF4();
  }
}

uint64_t sub_10006BDA0()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  *(*v1 + 216) = v0;

  sub_100010F24(v3, &qword_100116260, &qword_1000CD940);
  v4 = *(v2 + 160);
  v5 = *(v2 + 152);
  if (v0)
  {
    v6 = sub_10006D734;
  }

  else
  {
    v6 = sub_10006BF08;
  }

  return _swift_task_switch(v6, v5, v4);
}

uint64_t sub_10006BF08()
{

  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 63) = 4;

  sub_1000C60A4();
  v1 = *(v0 + 96);

  *(v1 + 32) = 0;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 40) = -1;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10006BFE4()
{
  v58 = v0;
  v1 = v0;
  v2 = *(v0 + 184);
  *(v0 + 72) = v2;
  v3 = v0 + 72;
  swift_errorRetain();
  sub_10000FEB8(&qword_1001179B0, &qword_1000CBB80);
  if ((swift_dynamicCast() & 1) == 0)
  {

    sub_1000C5F54();
    swift_errorRetain();
    v15 = sub_1000C5F64();
    v16 = sub_1000C6FD4();

    v17 = os_log_type_enabled(v15, v16);
    v18 = *(v0 + 120);
    v19 = *(v0 + 128);
    v20 = *(v0 + 112);
    if (v17)
    {
      v56 = v19;
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v57 = v22;
      *v21 = 136315138;
      *(v3 + 8) = v2;
      swift_errorRetain();
      sub_10000FEB8(&qword_1001179B0, &qword_1000CBB80);
      v23 = sub_1000C6D94();
      v25 = sub_100071844(v23, v24, &v57);

      *(v21 + 4) = v25;
      _os_log_impl(&_mh_execute_header, v15, v16, "iOSPrepareToShare error: %s", v21, 0xCu);
      sub_100010544(v22);

      (*(v18 + 8))(v56, v20);
    }

    else
    {

      (*(v18 + 8))(v19, v20);
    }

    v5 = 0xD000000000000013;
    v4 = 0x80000001000DA9F0;
    v26 = 0x80000001000DAA10;

    v6 = 0;
    v27 = 0xD000000000000017;
    LOBYTE(v7) = 11;
    goto LABEL_44;
  }

  v5 = *(v0 + 16);
  v4 = *(v0 + 24);
  v6 = *(v0 + 32);
  v54 = *(v0 + 40);
  v55 = *(v0 + 48);
  v7 = *(v0 + 56);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 60) = 5;

  result = sub_1000C60A4();
  if (v7 != 4)
  {
    if (v7 == 1)
    {
      result = v55;
      if (v6)
      {

        v9 = v6;

        v10 = [v9 domain];
        v11 = sub_1000C6D84();
        v13 = v12;

        if (v11 == sub_1000C6D84() && v13 == v14)
        {
        }

        else
        {
          v34 = sub_1000C73A4();

          if ((v34 & 1) == 0)
          {

            v36 = v55;
LABEL_24:

            LOBYTE(v7) = 1;
            sub_1000494BC(v5, v4, v6, v54, v36, 1u);

            v27 = 0;
            v26 = 0;
            v5 = 0xD000000000000013;
            v4 = 0x80000001000DA9F0;
            goto LABEL_44;
          }
        }

        v35 = [v9 code];

        v36 = v55;
        if (v35 == 7)
        {
          sub_1000494BC(v5, v4, v6, v54, v55, 1u);

LABEL_28:

          goto LABEL_29;
        }

        goto LABEL_24;
      }

      __break(1u);
LABEL_63:
      __break(1u);
      return result;
    }

    v27 = v54;
    v26 = v55;
LABEL_44:
    v49 = *(v1 + 96);

    *v49 = v5;
    *(v49 + 8) = v4;
    *(v49 + 16) = v6;
    *(v49 + 24) = v27;
    *(v49 + 32) = v26;
    *(v49 + 40) = v7;
    v50 = *(v1 + 8);

    return v50();
  }

  if (!v6)
  {
    goto LABEL_63;
  }

  v28 = v6;

  v29 = [v28 domain];
  v30 = sub_1000C6D84();
  v32 = v31;

  if (v30 == sub_1000C6D84() && v32 == v33)
  {
  }

  else
  {
    v37 = sub_1000C73A4();

    if ((v37 & 1) == 0)
    {

      v26 = v55;
      goto LABEL_26;
    }
  }

  v38 = [v28 code];

  v26 = v55;
  if (v38 != 7)
  {
LABEL_26:
    v39 = objc_opt_self();
    v40 = v28;
    v41 = sub_1000C5CD4();
    LOBYTE(v39) = [v39 shouldRetryShareSaveOnError:v41];
    sub_1000494BC(v5, v4, v6, v54, v26, 4u);

    if (v39)
    {

      goto LABEL_28;
    }

    LOBYTE(v7) = 4;
    v27 = v54;
    goto LABEL_44;
  }

  sub_1000494BC(v5, v4, v6, v54, v55, 4u);
LABEL_29:

  v42 = *(v1 + 226);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  v43 = *(v1 + 61);
  if (v43 == 4)
  {
    v44 = v42;
  }

  else
  {
    v44 = v43 != 2;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  if (*(v1 + 62) != 9)
  {
    goto LABEL_40;
  }

  swift_getKeyPath();
  swift_getKeyPath();

  sub_1000C6094();

  v45 = *(v1 + 88);
  if (!v45)
  {
    goto LABEL_36;
  }

  if (!v44)
  {
LABEL_40:
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1000C6094();

    v47 = swift_task_alloc();
    *(v1 + 208) = v47;
    *v47 = v1;
    v47[1] = sub_10006BDA0;
    v48 = *(v1 + 136);

    return sub_100055638(v48);
  }

  v44 = 1;
LABEL_36:
  *(v1 + 226) = v44;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  if (*(v1 + 58) == 1)
  {
    v46 = swift_task_alloc();
    *(v1 + 176) = v46;
    *v46 = v1;
    v46[1] = sub_10006B328;

    return sub_1000615A4();
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    *(v1 + 59) = 0;

    sub_1000C60A4();
    swift_getKeyPath();
    swift_getKeyPath();

    sub_1000C6094();

    v51 = *(v1 + 64);
    if (v51)
    {
      swift_getKeyPath();
      swift_getKeyPath();

      sub_1000C6094();

      if (*(v1 + 224) == 1)
      {
        swift_getKeyPath();
        swift_getKeyPath();

        sub_1000C6094();

        if (*(v1 + 225) > 1u)
        {
          if (*(v1 + 225) != 2)
          {
            return sub_1000C72E4();
          }

          v52 = 2;
        }

        else if (*(v1 + 225))
        {
          v52 = 3;
        }

        else
        {
          v52 = 1;
        }
      }

      else
      {
        v52 = 1;
      }

      [v51 setPublicPermission:v52];
    }

    v53 = swift_task_alloc();
    *(v1 + 192) = v53;
    *v53 = v1;
    v53[1] = sub_10006B710;

    return sub_100067EF4();
  }
}

uint64_t sub_10006CB8C()
{
  v58 = v0;
  v1 = v0;
  v2 = *(v0 + 200);
  *(v0 + 72) = v2;
  v3 = v0 + 72;
  swift_errorRetain();
  sub_10000FEB8(&qword_1001179B0, &qword_1000CBB80);
  if ((swift_dynamicCast() & 1) == 0)
  {

    sub_1000C5F54();
    swift_errorRetain();
    v15 = sub_1000C5F64();
    v16 = sub_1000C6FD4();

    v17 = os_log_type_enabled(v15, v16);
    v18 = *(v0 + 120);
    v19 = *(v0 + 128);
    v20 = *(v0 + 112);
    if (v17)
    {
      v56 = v19;
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v57 = v22;
      *v21 = 136315138;
      *(v3 + 8) = v2;
      swift_errorRetain();
      sub_10000FEB8(&qword_1001179B0, &qword_1000CBB80);
      v23 = sub_1000C6D94();
      v25 = sub_100071844(v23, v24, &v57);

      *(v21 + 4) = v25;
      _os_log_impl(&_mh_execute_header, v15, v16, "iOSPrepareToShare error: %s", v21, 0xCu);
      sub_100010544(v22);

      (*(v18 + 8))(v56, v20);
    }

    else
    {

      (*(v18 + 8))(v19, v20);
    }

    v5 = 0xD000000000000013;
    v4 = 0x80000001000DA9F0;
    v26 = 0x80000001000DAA10;

    v6 = 0;
    v27 = 0xD000000000000017;
    LOBYTE(v7) = 11;
    goto LABEL_44;
  }

  v5 = *(v0 + 16);
  v4 = *(v0 + 24);
  v6 = *(v0 + 32);
  v54 = *(v0 + 40);
  v55 = *(v0 + 48);
  v7 = *(v0 + 56);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 60) = 5;

  result = sub_1000C60A4();
  if (v7 != 4)
  {
    if (v7 == 1)
    {
      result = v55;
      if (v6)
      {

        v9 = v6;

        v10 = [v9 domain];
        v11 = sub_1000C6D84();
        v13 = v12;

        if (v11 == sub_1000C6D84() && v13 == v14)
        {
        }

        else
        {
          v34 = sub_1000C73A4();

          if ((v34 & 1) == 0)
          {

            v36 = v55;
LABEL_24:

            LOBYTE(v7) = 1;
            sub_1000494BC(v5, v4, v6, v54, v36, 1u);

            v27 = 0;
            v26 = 0;
            v5 = 0xD000000000000013;
            v4 = 0x80000001000DA9F0;
            goto LABEL_44;
          }
        }

        v35 = [v9 code];

        v36 = v55;
        if (v35 == 7)
        {
          sub_1000494BC(v5, v4, v6, v54, v55, 1u);

LABEL_28:

          goto LABEL_29;
        }

        goto LABEL_24;
      }

      __break(1u);
LABEL_63:
      __break(1u);
      return result;
    }

    v27 = v54;
    v26 = v55;
LABEL_44:
    v49 = *(v1 + 96);

    *v49 = v5;
    *(v49 + 8) = v4;
    *(v49 + 16) = v6;
    *(v49 + 24) = v27;
    *(v49 + 32) = v26;
    *(v49 + 40) = v7;
    v50 = *(v1 + 8);

    return v50();
  }

  if (!v6)
  {
    goto LABEL_63;
  }

  v28 = v6;

  v29 = [v28 domain];
  v30 = sub_1000C6D84();
  v32 = v31;

  if (v30 == sub_1000C6D84() && v32 == v33)
  {
  }

  else
  {
    v37 = sub_1000C73A4();

    if ((v37 & 1) == 0)
    {

      v26 = v55;
      goto LABEL_26;
    }
  }

  v38 = [v28 code];

  v26 = v55;
  if (v38 != 7)
  {
LABEL_26:
    v39 = objc_opt_self();
    v40 = v28;
    v41 = sub_1000C5CD4();
    LOBYTE(v39) = [v39 shouldRetryShareSaveOnError:v41];
    sub_1000494BC(v5, v4, v6, v54, v26, 4u);

    if (v39)
    {

      goto LABEL_28;
    }

    LOBYTE(v7) = 4;
    v27 = v54;
    goto LABEL_44;
  }

  sub_1000494BC(v5, v4, v6, v54, v55, 4u);
LABEL_29:

  v42 = *(v1 + 226);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  v43 = *(v1 + 61);
  if (v43 == 4)
  {
    v44 = v42;
  }

  else
  {
    v44 = v43 != 2;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  if (*(v1 + 62) != 9)
  {
    goto LABEL_40;
  }

  swift_getKeyPath();
  swift_getKeyPath();

  sub_1000C6094();

  v45 = *(v1 + 88);
  if (!v45)
  {
    goto LABEL_36;
  }

  if (!v44)
  {
LABEL_40:
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1000C6094();

    v47 = swift_task_alloc();
    *(v1 + 208) = v47;
    *v47 = v1;
    v47[1] = sub_10006BDA0;
    v48 = *(v1 + 136);

    return sub_100055638(v48);
  }

  v44 = 1;
LABEL_36:
  *(v1 + 226) = v44;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  if (*(v1 + 58) == 1)
  {
    v46 = swift_task_alloc();
    *(v1 + 176) = v46;
    *v46 = v1;
    v46[1] = sub_10006B328;

    return sub_1000615A4();
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    *(v1 + 59) = 0;

    sub_1000C60A4();
    swift_getKeyPath();
    swift_getKeyPath();

    sub_1000C6094();

    v51 = *(v1 + 64);
    if (v51)
    {
      swift_getKeyPath();
      swift_getKeyPath();

      sub_1000C6094();

      if (*(v1 + 224) == 1)
      {
        swift_getKeyPath();
        swift_getKeyPath();

        sub_1000C6094();

        if (*(v1 + 225) > 1u)
        {
          if (*(v1 + 225) != 2)
          {
            return sub_1000C72E4();
          }

          v52 = 2;
        }

        else if (*(v1 + 225))
        {
          v52 = 3;
        }

        else
        {
          v52 = 1;
        }
      }

      else
      {
        v52 = 1;
      }

      [v51 setPublicPermission:v52];
    }

    v53 = swift_task_alloc();
    *(v1 + 192) = v53;
    *v53 = v1;
    v53[1] = sub_10006B710;

    return sub_100067EF4();
  }
}

uint64_t sub_10006D734()
{
  v19 = v0;

  v1 = v0[27];
  sub_1000C5F54();
  swift_errorRetain();
  v2 = sub_1000C5F64();
  v3 = sub_1000C6FD4();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[15];
    v17 = v0[16];
    v5 = v0[14];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v18 = v7;
    *v6 = 136315138;
    v0[10] = v1;
    swift_errorRetain();
    sub_10000FEB8(&qword_1001179B0, &qword_1000CBB80);
    v8 = sub_1000C6D94();
    v10 = sub_100071844(v8, v9, &v18);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v2, v3, "iOSPrepareToShare error: %s", v6, 0xCu);
    sub_100010544(v7);

    (*(v4 + 8))(v17, v5);
  }

  else
  {
    v12 = v0[15];
    v11 = v0[16];
    v13 = v0[14];

    (*(v12 + 8))(v11, v13);
  }

  v14 = v0[12];

  *v14 = 0xD000000000000013;
  *(v14 + 8) = 0x80000001000DA9F0;
  *(v14 + 16) = xmmword_1000CFF70;
  *(v14 + 32) = 0x80000001000DAA10;
  *(v14 + 40) = 11;
  v15 = v0[1];

  return v15();
}

uint64_t sub_10006D96C()
{
  v1[12] = v0;
  sub_1000C6F14();
  v1[13] = sub_1000C6F04();
  v3 = sub_1000C6ED4();
  v1[14] = v3;
  v1[15] = v2;

  return _swift_task_switch(sub_10006DA04, v3, v2);
}

uint64_t sub_10006DA04()
{
  v1 = *(v0 + 96);

  v2 = sub_100019C78();

  v3 = *(*(v1 + 16) + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12OptionsModel_allowAccessRequestsSPIOverride);
  if (v3 == 2)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_1000C6094();

    LOBYTE(v3) = *(v0 + 57);
  }

  v4 = swift_task_alloc();
  *(v0 + 128) = v4;
  *v4 = v0;
  v4[1] = sub_10006DB40;

  return sub_100063020(v2 & 1, v3 & 1);
}

uint64_t sub_10006DB40()
{
  v2 = *v1;
  v2[17] = v0;

  if (v0)
  {
    v3 = v2[14];
    v4 = v2[15];

    return _swift_task_switch(sub_10006DE44, v3, v4);
  }

  else
  {
    v5 = swift_task_alloc();
    v2[18] = v5;
    *v5 = v2;
    v5[1] = sub_10006DCA8;

    return sub_100067EF4();
  }
}

uint64_t sub_10006DCA8()
{
  v2 = *v1;
  *(*v1 + 152) = v0;

  v3 = *(v2 + 120);
  v4 = *(v2 + 112);
  if (v0)
  {
    v5 = sub_10006E074;
  }

  else
  {
    v5 = sub_10006DDE4;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10006DDE4()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_10006DE44()
{
  v1 = *(v0 + 136);
  *(v0 + 80) = v1;
  swift_errorRetain();
  sub_10000FEB8(&qword_1001179B0, &qword_1000CBB80);
  if (!swift_dynamicCast())
  {
    goto LABEL_6;
  }

  v1 = *(v0 + 32);
  v0 = *(v0 + 56);
  v2 = [objc_allocWithZone(NSError) initWithDomain:CKErrorDomain code:12 userInfo:0];
  if (v0 != 4)
  {
    if (v0 != 1)
    {
LABEL_9:
      v3 = v2;
      sub_1000C7244(20);

      v4 = [v3 description];
      v5 = sub_1000C6D84();
      v7 = v6;

      v9._countAndFlagsBits = v5;
      v9._object = v7;
      sub_1000C6E04(v9);

      goto LABEL_10;
    }

    if (!v1)
    {
      __break(1u);
LABEL_6:

      sub_1000C7244(28);
      *(v0 + 64) = 0;
      *(v0 + 72) = 0xE000000000000000;
      v8._countAndFlagsBits = 0xD00000000000001ALL;
      v8._object = 0x80000001000DA860;
      sub_1000C6E04(v8);
      *(v0 + 88) = v1;
      sub_1000C72D4();
LABEL_10:
      sub_1000C72E4();
      return;
    }

LABEL_8:
    v2 = v1;
    goto LABEL_9;
  }

  if (v1)
  {
    goto LABEL_8;
  }

  __break(1u);
}

void sub_10006E074()
{
  v1 = *(v0 + 152);
  *(v0 + 80) = v1;
  swift_errorRetain();
  sub_10000FEB8(&qword_1001179B0, &qword_1000CBB80);
  if (!swift_dynamicCast())
  {
    goto LABEL_6;
  }

  v1 = *(v0 + 32);
  v0 = *(v0 + 56);
  v2 = [objc_allocWithZone(NSError) initWithDomain:CKErrorDomain code:12 userInfo:0];
  if (v0 != 4)
  {
    if (v0 != 1)
    {
LABEL_9:
      v3 = v2;
      sub_1000C7244(20);

      v4 = [v3 description];
      v5 = sub_1000C6D84();
      v7 = v6;

      v9._countAndFlagsBits = v5;
      v9._object = v7;
      sub_1000C6E04(v9);

      goto LABEL_10;
    }

    if (!v1)
    {
      __break(1u);
LABEL_6:

      sub_1000C7244(28);
      *(v0 + 64) = 0;
      *(v0 + 72) = 0xE000000000000000;
      v8._countAndFlagsBits = 0xD00000000000001ALL;
      v8._object = 0x80000001000DA860;
      sub_1000C6E04(v8);
      *(v0 + 88) = v1;
      sub_1000C72D4();
LABEL_10:
      sub_1000C72E4();
      return;
    }

LABEL_8:
    v2 = v1;
    goto LABEL_9;
  }

  if (v1)
  {
    goto LABEL_8;
  }

  __break(1u);
}

uint64_t sub_10006E2A4()
{
  v1[20] = v0;
  sub_10000FEB8(&qword_100116260, &qword_1000CD940);
  v1[21] = swift_task_alloc();
  v2 = sub_1000C5D84();
  v1[22] = v2;
  v1[23] = *(v2 - 8);
  v1[24] = swift_task_alloc();
  sub_1000C6F14();
  v1[25] = sub_1000C6F04();
  v4 = sub_1000C6ED4();
  v1[26] = v4;
  v1[27] = v3;

  return _swift_task_switch(sub_10006E3D0, v4, v3);
}

uint64_t sub_10006E3D0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  v1 = *(v0 + 112);
  v2 = *(v0 + 120);
  if (*(v0 + 96) || *(v0 + 104) != 0xE000000000000000)
  {
    v3 = sub_1000C73A4();

    if ((v3 & 1) == 0)
    {

      goto LABEL_15;
    }
  }

  else
  {
  }

  if (v1 || v2 != 0xE000000000000000)
  {
    v4 = sub_1000C73A4();

    if ((v4 & 1) == 0)
    {

      goto LABEL_15;
    }
  }

  else
  {
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  if ((*(v0 + 384) & 0xFE) == 8)
  {
    v5 = *(v0 + 176);
    v6 = *(v0 + 184);
    v7 = *(v0 + 168);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1000C6094();

    if ((*(v6 + 48))(v7, 1, v5) == 1)
    {
      v8 = *(v0 + 168);

      sub_100010F24(v8, &qword_100116260, &qword_1000CD940);
LABEL_15:

      v10 = *(v0 + 8);

      return v10();
    }

    (*(*(v0 + 184) + 32))(*(v0 + 192), *(v0 + 168), *(v0 + 176));
    v12 = swift_task_alloc();
    *(v0 + 280) = v12;
    *v12 = v0;
    v12[1] = sub_10006EB64;
    v13 = *(v0 + 192);

    return sub_100011F10(v0 + 16, v13);
  }

  else
  {
    v9 = sub_10003AB60();
    *(v0 + 224) = v9;
    v14 = v9;
    v15 = swift_task_alloc();
    *(v0 + 232) = v15;
    *v15 = v0;
    v15[1] = sub_10006E7EC;

    return sub_10004B70C(v14);
  }
}

uint64_t sub_10006E7EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *v5;
  *(*v5 + 240) = v4;

  if (v4)
  {
    v11 = *(v10 + 208);
    v12 = *(v10 + 216);
    v13 = sub_10006EAC0;
  }

  else
  {

    *(v10 + 248) = a4;
    *(v10 + 256) = a3;
    *(v10 + 264) = a2;
    *(v10 + 272) = a1;
    v11 = *(v10 + 208);
    v12 = *(v10 + 216);
    v13 = sub_10006E93C;
  }

  return _swift_task_switch(v13, v11, v12);
}

uint64_t sub_10006E93C()
{

  v1 = v0[33];
  v2 = v0[31];
  if (v1 && v2)
  {
    v3 = v0[34];
    v4 = v0[32];
    swift_getKeyPath();
    swift_getKeyPath();
    v0[16] = v3;
    v0[17] = v1;
    v0[18] = v4;
    v0[19] = v2;

    sub_1000C60A4();

    v5 = v0[1];
  }

  else
  {

    sub_1000100B0();
    swift_allocError();
    *v6 = 0xD000000000000016;
    *(v6 + 8) = 0x80000001000DAB30;
    *(v6 + 24) = 0;
    *(v6 + 32) = 0;
    *(v6 + 16) = 0;
    *(v6 + 40) = 6;
    swift_willThrow();

    v5 = v0[1];
  }

  return v5();
}

uint64_t sub_10006EAC0()
{
  *(v0 + 328) = *(v0 + 240);
  v1 = swift_task_alloc();
  *(v0 + 336) = v1;
  *v1 = v0;
  v1[1] = sub_10006EED4;

  return sub_100012694(v0 + 56);
}

uint64_t sub_10006EB64()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 32);
  *(v2 + 18) = *(v2 + 1);
  *(v2 + 19) = v3;
  v2[40] = v1[6];

  v4 = v1[27];
  v5 = v1[26];

  return _swift_task_switch(sub_10006ECA0, v5, v4);
}

uint64_t sub_10006ECA0()
{
  v1 = v0[40];

  if (v1)
  {
    v2 = v0[40];
    v4 = v0[23];
    v3 = v0[24];
    v5 = v0[22];
    sub_1000100B0();
    swift_allocError();
    *v6 = 0xD000000000000016;
    *(v6 + 8) = 0x80000001000DAB30;
    *(v6 + 24) = 0;
    *(v6 + 32) = 0;
    *(v6 + 16) = v2;
    *(v6 + 40) = 6;
    swift_willThrow();

    (*(v4 + 8))(v3, v5);
  }

  else
  {
    (*(v0[23] + 8))(v0[24], v0[22]);
    v7 = v0[39];
    v8 = v0[37];
    if (v8 && v7)
    {
      v9 = v0[38];
      v10 = v0[36];
      swift_getKeyPath();
      swift_getKeyPath();
      v0[16] = v10;
      v0[17] = v8;
      v0[18] = v9;
      v0[19] = v7;

      sub_1000C60A4();

      v11 = v0[1];
      goto LABEL_8;
    }

    sub_1000100B0();
    swift_allocError();
    *v12 = 0xD000000000000016;
    *(v12 + 8) = 0x80000001000DAB30;
    *(v12 + 24) = 0;
    *(v12 + 32) = 0;
    *(v12 + 16) = 0;
    *(v12 + 40) = 6;
    swift_willThrow();
  }

  v11 = v0[1];
LABEL_8:

  return v11();
}

uint64_t sub_10006EED4()
{
  v1 = *v0;
  v2 = *v0;
  *(v2 + 43) = *(v2 + 7);
  *(v2 + 45) = *(v2 + 9);
  v2[47] = v1[11];

  v3 = v1[27];
  v4 = v1[26];

  return _swift_task_switch(sub_10006F020, v4, v3);
}

uint64_t sub_10006F020()
{
  v1 = v0[47];

  if (v1)
  {
    v2 = v0[47];
    sub_1000100B0();
    swift_allocError();
    *v3 = 0xD000000000000016;
    *(v3 + 8) = 0x80000001000DAB30;
    *(v3 + 24) = 0;
    *(v3 + 32) = 0;
    *(v3 + 16) = v2;
    *(v3 + 40) = 6;
    swift_willThrow();
  }

  else
  {

    v4 = v0[46];
    v5 = v0[44];
    if (v5 && v4)
    {
      v6 = v0[45];
      v7 = v0[43];
      swift_getKeyPath();
      swift_getKeyPath();
      v0[16] = v7;
      v0[17] = v5;
      v0[18] = v6;
      v0[19] = v4;

      sub_1000C60A4();

      v8 = v0[1];
      goto LABEL_8;
    }

    sub_1000100B0();
    swift_allocError();
    *v9 = 0xD000000000000016;
    *(v9 + 8) = 0x80000001000DAB30;
    *(v9 + 24) = 0;
    *(v9 + 32) = 0;
    *(v9 + 16) = 0;
    *(v9 + 40) = 6;
    swift_willThrow();
  }

  v8 = v0[1];
LABEL_8:

  return v8();
}

uint64_t sub_10006F230(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a4;
  sub_10000FEB8(&qword_100116260, &qword_1000CD940);
  v4[10] = swift_task_alloc();
  sub_1000C6F14();
  v4[11] = sub_1000C6F04();
  v6 = sub_1000C6ED4();
  v4[12] = v6;
  v4[13] = v5;

  return _swift_task_switch(sub_10006F300, v6, v5);
}

uint64_t sub_10006F300()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  v1 = swift_task_alloc();
  *(v0 + 112) = v1;
  *v1 = v0;
  v1[1] = sub_10006F3E4;
  v2 = *(v0 + 80);

  return sub_100055638(v2);
}

uint64_t sub_10006F3E4()
{
  v2 = *v1;
  (*v1)[15] = v0;

  sub_100010F24(v2[10], &qword_100116260, &qword_1000CD940);
  v3 = v2[13];
  v4 = v2[12];
  if (v0)
  {
    v5 = sub_10006F778;
  }

  else
  {
    v5 = sub_10006F548;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10006F548()
{
  v1 = *(v0 + 72);

  if (!*(v1 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12SharingModel_lastServicesData) || (v2 = *(v0 + 120), swift_unknownObjectRetain(), sub_10007ADF4(), swift_unknownObjectRelease(), !v2))
  {
    sub_100067838(5u, 0);
LABEL_11:

    v11 = *(v0 + 8);
    goto LABEL_12;
  }

  *(v0 + 64) = v2;
  swift_errorRetain();
  sub_10000FEB8(&qword_1001179B0, &qword_1000CBB80);
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

      sub_100067838(1u, v7);
      sub_1000494BC(v5, v4, v7, v6, v8, 7u);
    }

    else
    {
      v12 = [objc_allocWithZone(NSError) initWithDomain:BRCloudDocsErrorDomain code:46 userInfo:0];
      sub_100067838(2u, v12);
      sub_1000494BC(v5, v4, v7, v6, v8, v9);
    }

    goto LABEL_11;
  }

  v11 = *(v0 + 8);
LABEL_12:

  return v11();
}

uint64_t sub_10006F778()
{

  *(v0 + 64) = *(v0 + 120);
  swift_errorRetain();
  sub_10000FEB8(&qword_1001179B0, &qword_1000CBB80);
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

      sub_100067838(1u, v5);
      sub_1000494BC(v3, v2, v5, v4, v6, 7u);
    }

    else
    {
      v9 = [objc_allocWithZone(NSError) initWithDomain:BRCloudDocsErrorDomain code:46 userInfo:0];
      sub_100067838(2u, v9);
      sub_1000494BC(v3, v2, v5, v4, v6, v7);
    }
  }

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_10006F960(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 57) = a3;
  *(v3 + 72) = a1;
  *(v3 + 80) = a2;
  sub_10000FEB8(&qword_100116260, &qword_1000CD940);
  *(v3 + 88) = swift_task_alloc();
  v4 = sub_1000C5F74();
  *(v3 + 96) = v4;
  *(v3 + 104) = *(v4 - 8);
  *(v3 + 112) = swift_task_alloc();
  *(v3 + 120) = swift_task_alloc();
  *(v3 + 128) = swift_task_alloc();
  *(v3 + 136) = swift_task_alloc();
  *(v3 + 144) = swift_task_alloc();
  sub_1000C6F14();
  *(v3 + 152) = sub_1000C6F04();
  v6 = sub_1000C6ED4();
  *(v3 + 160) = v6;
  *(v3 + 168) = v5;

  return _swift_task_switch(sub_10006FAC0, v6, v5);
}

void sub_10006FAC0()
{
  v2 = v0[9];
  if (v2 < 1)
  {
    __break(1u);
  }

  else
  {
    v0[22] = BRCloudDocsErrorDomain;
    v0[23] = v2;
    v3 = swift_task_alloc();
    v0[24] = v3;
    *v3 = v0;
    v3[1] = sub_10006FB70;

    sub_100064C74();
  }
}

uint64_t sub_10006FB70()
{
  v2 = *v1;
  *(*v1 + 200) = v0;

  v3 = *(v2 + 168);
  v4 = *(v2 + 160);
  if (v0)
  {
    v5 = sub_10006FE00;
  }

  else
  {
    v5 = sub_10006FCAC;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10006FCAC()
{

  sub_1000C5F54();
  v1 = sub_1000C5F64();
  v2 = sub_1000C6FF4();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[23];
    v4 = swift_slowAlloc();
    *v4 = 134217984;
    *(v4 + 4) = v3;
    _os_log_impl(&_mh_execute_header, v1, v2, "fetchShare completed with this many retries left: %ld", v4, 0xCu);
  }

  v5 = v0[18];
  v6 = v0[12];
  v7 = v0[13];

  (*(v7 + 8))(v5, v6);

  v8 = v0[1];

  return v8();
}

uint64_t sub_10006FE00()
{
  *(v0 + 64) = *(v0 + 200);
  swift_errorRetain();
  sub_10000FEB8(&qword_1001179B0, &qword_1000CBB80);
  v1 = swift_dynamicCast();
  if (v1)
  {
    v3 = *(v0 + 16);
    v2 = *(v0 + 24);
    *(v0 + 208) = v3;
    *(v0 + 216) = v2;
    v4 = *(v0 + 32);
    v5 = *(v0 + 40);
    *(v0 + 224) = v4;
    *(v0 + 232) = v5;
    v6 = *(v0 + 48);
    *(v0 + 240) = v6;
    v7 = *(v0 + 56);
    v65 = v5;
    if (v7 != 5)
    {

      sub_1000C5F54();
      v16 = sub_1000C5F64();
      v17 = sub_1000C6FD4();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = *(v0 + 184);
        v19 = swift_slowAlloc();
        *v19 = 134217984;
        *(v19 + 4) = v18;
        _os_log_impl(&_mh_execute_header, v16, v17, "tryToFetchShare error: throwing unexpected error--retries that were left: %ld", v19, 0xCu);
      }

      v21 = *(v0 + 104);
      v20 = *(v0 + 112);
      v22 = *(v0 + 96);

      (*(v21 + 8))(v20, v22);
      sub_1000100B0();
      swift_allocError();
      *v23 = 0xD00000000000003ELL;
      *(v23 + 8) = 0x80000001000DAB50;
      *(v23 + 16) = xmmword_1000CFF80;
      *(v23 + 32) = 0x80000001000DAB90;
      *(v23 + 40) = 11;
      swift_willThrow();
      v24 = v3;
      v25 = v2;
      v26 = v4;
      v27 = v65;
      v28 = v6;
      v29 = v7;
      goto LABEL_21;
    }

    v64 = v3;
    if (v4)
    {

      v8 = v4;

      v9 = v8;
      v10 = [v9 domain];
      v11 = sub_1000C6D84();
      v13 = v12;

      if (v11 == sub_1000C6D84() && v13 == v14)
      {

        v15 = v64;
      }

      else
      {
        v30 = sub_1000C73A4();

        v15 = v64;
        if ((v30 & 1) == 0)
        {

          goto LABEL_17;
        }
      }

      v31 = [v9 code];

      if (v31 != 7)
      {

        goto LABEL_17;
      }

      v32 = *(v0 + 88);
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1000C6094();

      v33 = sub_1000C5D84();
      if ((*(*(v33 - 8) + 48))(v32, 1, v33) == 1)
      {
        v34 = *(v0 + 88);

        sub_100010F24(v34, &qword_100116260, &qword_1000CD940);
        v15 = v64;
LABEL_17:
        sub_1000C5F54();
        v35 = v9;
        v36 = sub_1000C5F64();
        v37 = sub_1000C6FD4();

        if (os_log_type_enabled(v36, v37))
        {
          v38 = *(v0 + 184);
          v39 = swift_slowAlloc();
          v40 = swift_slowAlloc();
          *v39 = 134218242;
          *(v39 + 4) = v38;
          *(v39 + 12) = 2112;
          *(v39 + 14) = v35;
          *v40 = v4;
          v41 = v35;
          _os_log_impl(&_mh_execute_header, v36, v37, "tryToFetchShare failed to fetch share so throwing--retries that were left: %ld, error: %@", v39, 0x16u);
          sub_100010F24(v40, &qword_100117080, &unk_1000CC350);
          v15 = v64;
        }

        v42 = *(v0 + 120);
        v43 = *(v0 + 96);
        v44 = *(v0 + 104);

        (*(v44 + 8))(v42, v43);
        sub_1000100B0();
        swift_allocError();
        *v45 = v15;
        *(v45 + 8) = v2;
        *(v45 + 16) = v4;
        *(v45 + 24) = v65;
        *(v45 + 32) = v6;
        *(v45 + 40) = 5;
        swift_willThrow();
        sub_1000199B8(v15, v2, v4, v65, v6, 5u);

        v24 = v15;
        v25 = v2;
        v26 = v4;
        v27 = v65;
LABEL_20:
        v28 = v6;
        v29 = 5;
LABEL_21:
        sub_1000494BC(v24, v25, v26, v27, v28, v29);
        goto LABEL_22;
      }

      v48 = *(v0 + 57);
      sub_100010F24(*(v0 + 88), &qword_100116260, &qword_1000CD940);
      if ((v48 & 1) == 0)
      {

        sub_1000C5F54();
        v57 = sub_1000C5F64();
        v58 = sub_1000C6FD4();
        if (os_log_type_enabled(v57, v58))
        {
          v59 = swift_slowAlloc();
          *v59 = 0;
          _os_log_impl(&_mh_execute_header, v57, v58, "tryToFetchShare not synced to iCloud AND not shared so throw notInICloud error", v59, 2u);
        }

        v60 = *(v0 + 136);
        v61 = *(v0 + 96);
        v62 = *(v0 + 104);

        (*(v62 + 8))(v60, v61);
        sub_1000100B0();
        swift_allocError();
        *v63 = v64;
        *(v63 + 8) = v2;
        *(v63 + 16) = v4;
        *(v63 + 24) = v5;
        *(v63 + 32) = v6;
        *(v63 + 40) = 5;
        swift_willThrow();
        sub_1000199B8(v64, v2, v4, v5, v6, 5u);

        v24 = v64;
        v25 = v2;
        v26 = v4;
        v27 = v5;
        goto LABEL_20;
      }

      sub_1000C5F54();
      v49 = sub_1000C5F64();
      v50 = sub_1000C6FF4();
      if (os_log_type_enabled(v49, v50))
      {
        v51 = *(v0 + 184);
        v52 = swift_slowAlloc();
        *v52 = 134217984;
        *(v52 + 4) = v51;
        _os_log_impl(&_mh_execute_header, v49, v50, "About to retry tryToFetchShare post-share when unsynced after 1 second--retries left including this one: %ld", v52, 0xCu);
      }

      v53 = *(v0 + 128);
      v54 = *(v0 + 96);
      v55 = *(v0 + 104);

      (*(v55 + 8))(v53, v54);
      v56 = swift_task_alloc();
      *(v0 + 248) = v56;
      *v56 = v0;
      v56[1] = sub_100070658;
      v1 = 1000000000;
    }

    else
    {
      __break(1u);
    }

    return static Task<>.sleep(nanoseconds:)(v1);
  }

LABEL_22:

  v46 = *(v0 + 8);

  return v46();
}

uint64_t sub_100070658()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 160);
    v4 = *(v2 + 168);
    v5 = sub_10007B978;
  }

  else
  {
    v3 = *(v2 + 160);
    v4 = *(v2 + 168);
    v5 = sub_10007077C;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_10007077C()
{
  v1 = v0[29];
  v2 = v0[30];
  v4 = v0[27];
  v3 = v0[28];
  v5 = v0[26];
  v6 = v0[23];

  sub_1000494BC(v5, v4, v3, v1, v2, 5u);

  if (v6 == 1)
  {

    v10 = v0[1];

    return v10();
  }

  else
  {
    v8 = v0[23];
    if (v8 < 2)
    {
      __break(1u);
    }

    else
    {
      v0[23] = v8 - 1;
      v9 = swift_task_alloc();
      v0[24] = v9;
      *v9 = v0;
      v9[1] = sub_10006FB70;

      return sub_100064C74();
    }
  }

  return result;
}

uint64_t shareStatus(url:)()
{
  v0 = sub_1000C5D84();
  __chkstk_darwin(v0);
  v1 = sub_1000C5F74();
  v20[0] = *(v1 - 8);
  v20[1] = v1;
  __chkstk_darwin(v1);
  v20[2] = v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1000C5BC4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000FEB8(&unk_1001196C0, &unk_1000CFFA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000CC5C0;
  *(inited + 32) = NSURLUbiquitousItemIsSharedKey;
  *(inited + 40) = NSURLUbiquitousSharedItemCurrentUserRoleKey;
  v8 = NSURLUbiquitousItemIsSharedKey;
  v9 = NSURLUbiquitousSharedItemCurrentUserRoleKey;
  sub_1000782B8(inited);
  swift_setDeallocating();
  type metadata accessor for URLResourceKey(0);
  swift_arrayDestroy();
  sub_1000C5CF4();

  v10 = sub_1000C5BA4();
  v11 = sub_1000C5BB4();
  if (!v11)
  {
    v11 = NSURLUbiquitousSharedItemRoleParticipant;
  }

  v12 = v11;
  v13 = sub_1000C6D84();
  v15 = v14;
  if (v13 == sub_1000C6D84() && v15 == v16)
  {

    v17 = 256;
  }

  else
  {
    v18 = sub_1000C73A4();

    if (v18)
    {
      v17 = 256;
    }

    else
    {
      v17 = 0;
    }
  }

  (*(v4 + 8))(v6, v3);
  return v17 | v10 & 1u;
}

uint64_t sub_100070E44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v23 = a1;
  v9 = sub_10000FEB8(&unk_100118600, &qword_1000D0C10);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9 - 8);
  v13 = &v22 - v12;
  v14 = sub_10000FEB8(&qword_1001164E0, &unk_1000CDD50);
  __chkstk_darwin(v14 - 8);
  v16 = &v22 - v15;
  v17 = sub_1000C6F44();
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  sub_100017574(a5, v13, &unk_100118600, &qword_1000D0C10);
  v18 = (*(v10 + 80) + 48) & ~*(v10 + 80);
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = a3;
  v19[5] = a4;
  sub_100020D0C(v13, v19 + v18, &unk_100118600, &qword_1000D0C10);
  v20 = (v19 + ((v11 + v18 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v20 = v23;
  v20[1] = a2;

  sub_1000B8860(0, 0, v16, &unk_1000D0C20, v19);
}

uint64_t sub_100071054(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[3] = a7;
  v8[4] = a8;
  v12 = a4 + *a4;
  v10 = swift_task_alloc();
  v8[5] = v10;
  *v10 = v8;
  v10[1] = sub_100071158;

  return (v12)(v8 + 2, a6);
}

uint64_t sub_100071158()
{

  return _swift_task_switch(sub_100071254, 0, 0);
}

uint64_t sub_100071254()
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

uint64_t sub_1000712E0@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  *a2 = v4;
  return result;
}

uint64_t sub_100071360(void **a1, uint64_t *a2)
{
  v2 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;

  return sub_1000C60A4();
}

uint64_t sub_1000713D8(uint64_t *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();
}

uint64_t sub_100071454(uint64_t a1, uint64_t *a2)
{
  v3 = sub_10000FEB8(&qword_100116260, &qword_1000CD940);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v10 - v7;
  sub_100017574(a1, &v10 - v7, &qword_100116260, &qword_1000CD940);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100017574(v8, v6, &qword_100116260, &qword_1000CD940);

  sub_1000C60A4();
  return sub_100010F24(v8, &qword_100116260, &qword_1000CD940);
}

uint64_t sub_1000715D4@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  *a2 = v4;
  return result;
}

uint64_t sub_100071654(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1000C60A4();
}

double sub_100071720@<D0>(uint64_t a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  result = *&v4;
  *a2 = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  return result;
}

uint64_t sub_1000717A8(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1000C60A4();
}

unint64_t sub_100071844(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100071910(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_100038D8C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100010544(v11);
  return v7;
}

unint64_t sub_100071910(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_100071A1C(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_1000C7274();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

id *sub_100071A1C(uint64_t a1, unint64_t a2)
{
  v3 = sub_100071A68(a1, a2);
  sub_100071B98(&off_100107048);
  return v3;
}

id *sub_100071A68(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return _swiftEmptyArrayStorage;
  }

  v6 = sub_100071C84(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_1000C7274();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_1000C6E14();
        if (!v10)
        {
          return _swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100071C84(v10, 0);
        result = sub_1000C7234();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_100071B98(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_100071CF8(result, v11, 1, v3);
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
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

id *sub_100071C84(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_10000FEB8(&qword_100118638, &qword_1000D0F68);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}