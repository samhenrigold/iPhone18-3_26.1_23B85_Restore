uint64_t sub_10016368C(uint64_t a1)
{
  if (!a1)
  {
    return 1701602409;
  }

  _StringGuts.grow(_:)(23);

  sub_100188FC4();
  v1._countAndFlagsBits = Set.description.getter();
  String.append(_:)(v1);

  return 0xD000000000000015;
}

uint64_t sub_10016373C(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v15 = a2;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = )
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
    v12 = *v11;
    v13 = v11[1];

    sub_1000D78B8(&v14, v12, v13);
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v15;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100163840(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v12 = a2;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = sub_1000D7BA4(&v11, *(*(v2 + 48) + (v10 | (v9 << 6)))))
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v12;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void sub_10016391C(uint64_t a1)
{
  v2 = sub_100068FC4(&qword_100504250, &qword_10040D610);
  __chkstk_darwin(v2 - 8);
  v4 = &v18 - v3;
  v5 = objc_opt_self();
  v6 = String._bridgeToObjectiveC()();
  [v5 setFirstLaunchAfterBootDoneForKey:v6];

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v21 = v10;
    *v9 = 136315138;
    if (*(a1 + OBJC_IVAR____TtC10seserviced16SEKeySyncManager_syncProgressState))
    {
      v19 = 0;
      v20 = 0xE000000000000000;

      _StringGuts.grow(_:)(23);

      v19 = 0xD000000000000015;
      v20 = 0x8000000100464D10;
      sub_100188FC4();
      v11._countAndFlagsBits = Set.description.getter();
      String.append(_:)(v11);

      v12 = v19;
      v13 = v20;
    }

    else
    {
      v13 = 0xE400000000000000;
      v12 = 1701602409;
    }

    v14 = sub_1002FFA0C(v12, v13, &v21);

    *(v9 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v7, v8, "Sync completed %s", v9, 0xCu);
    sub_1000752F4(v10);
  }

  v15 = *(a1 + OBJC_IVAR____TtC10seserviced16SEKeySyncManager_syncProgressState);
  if (v15)
  {
    *(a1 + OBJC_IVAR____TtC10seserviced16SEKeySyncManager_syncProgressState) = 0;
    if (*(v15 + 16))
    {
      v16 = type metadata accessor for TaskPriority();
      (*(*(v16 - 8) + 56))(v4, 1, 1, v16);
      v17 = swift_allocObject();
      v17[2] = 0;
      v17[3] = 0;
      v17[4] = v15;
      sub_1001608B4(0, 0, v4, &unk_10040C558, v17);

      sub_100075768(v4, &qword_100504250, &qword_10040D610);
    }

    else
    {
    }
  }
}

uint64_t sub_100163C4C(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = sub_100068FC4(&qword_100504F98, &unk_10040C540);
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();

  return _swift_task_switch(sub_100163D18, v1, 0);
}

uint64_t sub_100163D18()
{
  v1 = *(v0 + 56);
  v2 = *(v1 + 32);
  *(v0 + 160) = v2;
  v3 = 1 << v2;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(v1 + 56);
  *(v0 + 96) = OBJC_IVAR____TtC10seserviced16SEKeySyncManager__lastDSIDCanSync;

  swift_beginAccess();
  if (!v5)
  {
    v8 = 0;
    v7 = *(v0 + 56);
    while (1)
    {
      v6 = v8 + 1;
      if (v8 + 1 >= ((1 << *(v0 + 160)) + 63) >> 6)
      {
        break;
      }

      v5 = *(v7 + 8 * v8++ + 64);
      if (v5)
      {
        goto LABEL_9;
      }
    }

    v10 = 0;
    goto LABEL_12;
  }

  v6 = 0;
  v7 = *(v0 + 56);
LABEL_9:
  *(v0 + 104) = v5;
  *(v0 + 112) = v6;
  v9 = *(*(v7 + 48) + (__clz(__rbit64(v5)) | (v6 << 6)));
  if ((v9 - 2) < 0xA)
  {

    v10 = 1;
LABEL_12:

    v11 = *(v0 + 8);

    return v11(v10);
  }

  if (v9)
  {
    v14 = swift_task_alloc();
    *(v0 + 152) = v14;
    *v14 = v0;
    v14[1] = sub_10016475C;

    return sub_1001879D0();
  }

  else
  {
    v13 = swift_task_alloc();
    *(v0 + 120) = v13;
    *v13 = v0;
    v13[1] = sub_100163F38;

    return sub_10016BBF8(0);
  }
}

uint64_t sub_100163F38(uint64_t a1, uint64_t a2)
{
  v4 = a1;
  v5 = *v3;
  *(v5 + 128) = a1;
  *(v5 + 136) = a2;
  *(v5 + 144) = v2;

  if (v2)
  {
    *(v5 + 163) = v4;
    v6 = *(v5 + 64);
    v7 = sub_100164A64;
  }

  else
  {
    v6 = *(v5 + 64);
    v7 = sub_100164068;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_100164068()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 88);
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);
  (*(v4 + 16))(v2, *(v0 + 64) + *(v0 + 96), v3);
  UserDefaultBackedOptional.wrappedValue.getter();
  v5 = (*(v4 + 8))(v2, v3);
  v8 = *(v0 + 40);
  v9 = *(v0 + 48);
  if (v1 >> 60 != 15)
  {
    if (v9 >> 60 == 15)
    {
      goto LABEL_5;
    }

    v13 = *(v0 + 136);
    v14 = v13 >> 62;
    v15 = v9 >> 62;
    if (v13 >> 62 == 3)
    {
      v16 = 0;
      if (v13 == 0xC000000000000000 && !*(v0 + 128) && v9 >> 62 == 3)
      {
        v16 = 0;
        if (!v8 && v9 == 0xC000000000000000)
        {
          v17 = 0;
          v18 = 0xC000000000000000;
LABEL_34:
          sub_10006A2D0(v17, v18);
          v29 = 0;
          goto LABEL_35;
        }
      }
    }

    else if (v14)
    {
      if (v14 == 1)
      {
        v19 = *(v0 + 128);
        v20 = *(v0 + 132);
        v21 = __OFSUB__(v20, v19);
        LODWORD(v16) = v20 - v19;
        if (v21)
        {
LABEL_42:
          __break(1u);
          goto LABEL_43;
        }

        v16 = v16;
      }

      else
      {
        v22 = *(*(v0 + 128) + 16);
        v23 = *(*(v0 + 128) + 24);
        v21 = __OFSUB__(v23, v22);
        v16 = v23 - v22;
        if (v21)
        {
LABEL_43:
          __break(1u);
          return _swift_task_switch(v5, v6, v7);
        }
      }
    }

    else
    {
      v16 = BYTE6(v13);
    }

    if (v15 > 1)
    {
      if (v15 != 2)
      {
        if (!v16)
        {
          goto LABEL_33;
        }

        goto LABEL_32;
      }

      v25 = *(v8 + 16);
      v24 = *(v8 + 24);
      v21 = __OFSUB__(v24, v25);
      v26 = v24 - v25;
      if (!v21)
      {
        if (v16 != v26)
        {
          goto LABEL_32;
        }

        goto LABEL_29;
      }

      __break(1u);
    }

    else
    {
      if (!v15)
      {
        if (v16 != BYTE6(v9))
        {
          goto LABEL_32;
        }

        goto LABEL_29;
      }

      if (!__OFSUB__(HIDWORD(v8), v8))
      {
        if (v16 == HIDWORD(v8) - v8)
        {
LABEL_29:
          if (v16 >= 1)
          {
            v27 = *(v0 + 128);
            sub_10006A2BC(*(v0 + 40), *(v0 + 48));
            sub_10006A2BC(v27, v13);
            sub_10006A2BC(v8, v9);
            v28 = sub_10008C678(v27, v13, v8, v9);
            sub_10006A2D0(v27, v13);
            sub_10006A2D0(v8, v9);
            sub_10006A2D0(v8, v9);
            v29 = v28 ^ 1;
LABEL_35:
            *(v0 + 161) = v29 & 1;
            v10 = *(v0 + 64);
            sub_10006A2D0(*(v0 + 128), *(v0 + 136));
            v11 = sub_100164344;
            goto LABEL_36;
          }

LABEL_33:
          v17 = *(v0 + 40);
          v18 = *(v0 + 48);
          goto LABEL_34;
        }

LABEL_32:
        sub_10006A2D0(*(v0 + 40), *(v0 + 48));
        v29 = 1;
        goto LABEL_35;
      }
    }

    __break(1u);
    goto LABEL_42;
  }

  if (v9 >> 60 != 15)
  {
LABEL_5:
    v12 = *(v0 + 64);
    sub_10006A2D0(*(v0 + 128), *(v0 + 136));
    sub_10006A2D0(v8, v9);
    v5 = sub_100164520;
    v6 = v12;
    goto LABEL_37;
  }

  v10 = *(v0 + 64);
  sub_10006A2D0(*(v0 + 128), *(v0 + 136));
  v11 = sub_100164590;
LABEL_36:
  v5 = v11;
  v6 = v10;
LABEL_37:
  v7 = 0;

  return _swift_task_switch(v5, v6, v7);
}

void sub_100164344()
{
  if (*(v0 + 161))
  {
LABEL_9:

    v6 = 1;
LABEL_10:

    v7 = *(v0 + 8);

    v7(v6);
    return;
  }

  v1 = *(v0 + 112);
  v2 = (*(v0 + 104) - 1) & *(v0 + 104);
  if (v2)
  {
    v3 = *(v0 + 56);
LABEL_8:
    *(v0 + 104) = v2;
    *(v0 + 112) = v1;
    v5 = *(*(v3 + 48) + (__clz(__rbit64(v2)) | (v1 << 6)));
    if ((v5 - 2) >= 0xA)
    {
      if (v5)
      {
        v9 = swift_task_alloc();
        *(v0 + 152) = v9;
        *v9 = v0;
        v9[1] = sub_10016475C;

        sub_1001879D0();
      }

      else
      {
        v8 = swift_task_alloc();
        *(v0 + 120) = v8;
        *v8 = v0;
        v8[1] = sub_100163F38;

        sub_10016BBF8(0);
      }

      return;
    }

    goto LABEL_9;
  }

  while (1)
  {
    v4 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      break;
    }

    v3 = *(v0 + 56);
    if (v4 >= (((1 << *(v0 + 160)) + 63) >> 6))
    {

      v6 = 0;
      goto LABEL_10;
    }

    v2 = *(v3 + 8 * v4 + 56);
    ++v1;
    if (v2)
    {
      v1 = v4;
      goto LABEL_8;
    }
  }

  __break(1u);
}

uint64_t sub_100164520()
{

  v1 = *(v0 + 8);

  return v1(1);
}

void sub_100164590()
{
  v1 = *(v0 + 112);
  v2 = (*(v0 + 104) - 1) & *(v0 + 104);
  if (v2)
  {
    v3 = *(v0 + 56);
LABEL_7:
    *(v0 + 104) = v2;
    *(v0 + 112) = v1;
    v5 = *(*(v3 + 48) + (__clz(__rbit64(v2)) | (v1 << 6)));
    if ((v5 - 2) >= 0xA)
    {
      if (v5)
      {
        v9 = swift_task_alloc();
        *(v0 + 152) = v9;
        *v9 = v0;
        v9[1] = sub_10016475C;

        sub_1001879D0();
      }

      else
      {
        v8 = swift_task_alloc();
        *(v0 + 120) = v8;
        *v8 = v0;
        v8[1] = sub_100163F38;

        sub_10016BBF8(0);
      }
    }

    else
    {

      v6 = 1;
LABEL_10:

      v7 = *(v0 + 8);

      v7(v6);
    }
  }

  else
  {
    while (1)
    {
      v4 = v1 + 1;
      if (__OFADD__(v1, 1))
      {
        break;
      }

      v3 = *(v0 + 56);
      if (v4 >= (((1 << *(v0 + 160)) + 63) >> 6))
      {

        v6 = 0;
        goto LABEL_10;
      }

      v2 = *(v3 + 8 * v4 + 56);
      ++v1;
      if (v2)
      {
        v1 = v4;
        goto LABEL_7;
      }
    }

    __break(1u);
  }
}

uint64_t sub_10016475C(char a1)
{
  v4 = *v2;
  *(*v2 + 162) = a1;

  if (v1)
  {
    *(v4 + 163) = a1;
    v5 = *(v4 + 64);
    v6 = sub_100164A64;
  }

  else
  {
    v5 = *(v4 + 64);
    v6 = sub_100164888;
  }

  return _swift_task_switch(v6, v5, 0);
}

void sub_100164888()
{
  if (*(v0 + 162))
  {
LABEL_9:

    v6 = 1;
LABEL_10:

    v7 = *(v0 + 8);

    v7(v6);
    return;
  }

  v1 = *(v0 + 112);
  v2 = (*(v0 + 104) - 1) & *(v0 + 104);
  if (v2)
  {
    v3 = *(v0 + 56);
LABEL_8:
    *(v0 + 104) = v2;
    *(v0 + 112) = v1;
    v5 = *(*(v3 + 48) + (__clz(__rbit64(v2)) | (v1 << 6)));
    if ((v5 - 2) >= 0xA)
    {
      if (v5)
      {
        v9 = swift_task_alloc();
        *(v0 + 152) = v9;
        *v9 = v0;
        v9[1] = sub_10016475C;

        sub_1001879D0();
      }

      else
      {
        v8 = swift_task_alloc();
        *(v0 + 120) = v8;
        *v8 = v0;
        v8[1] = sub_100163F38;

        sub_10016BBF8(0);
      }

      return;
    }

    goto LABEL_9;
  }

  while (1)
  {
    v4 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      break;
    }

    v3 = *(v0 + 56);
    if (v4 >= (((1 << *(v0 + 160)) + 63) >> 6))
    {

      v6 = 0;
      goto LABEL_10;
    }

    v2 = *(v3 + 8 * v4 + 56);
    ++v1;
    if (v2)
    {
      v1 = v4;
      goto LABEL_8;
    }
  }

  __break(1u);
}

uint64_t sub_100164A64()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 163);

  return v1(v2);
}

uint64_t sub_100164AD8()
{
  *(v1 + 24) = v0;
  v2 = swift_task_alloc();
  *(v1 + 32) = v2;
  *v2 = v1;
  v2[1] = sub_100164B98;

  return sub_10016BBF8(1);
}

uint64_t sub_100164B98(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  *(v5 + 40) = a1;
  *(v5 + 48) = a2;

  v6 = *(v4 + 24);
  if (v2)
  {
    v7 = sub_1001652F0;
  }

  else
  {
    v7 = sub_100164CF8;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_100164CF8()
{
  if (v0[6] >> 60 == 15)
  {
    v1 = v0[5];
    v2 = v0[1];

    return v2(v1);
  }

  else
  {
    if (qword_100501A40 != -1)
    {
      swift_once();
    }

    v4 = swift_task_alloc();
    v0[7] = v4;
    *v4 = v0;
    v4[1] = sub_100164E44;

    return sub_10016C130();
  }
}

uint64_t sub_100164E44(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 64) = a1;

  v4 = *(v3 + 24);
  if (v1)
  {
    v5 = sub_10016539C;
  }

  else
  {
    v5 = sub_100164FA4;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100164FA4(uint64_t a1, const char *a2)
{
  v3 = sub_1001316C4(*(v2 + 64), a2);
  if (v3 != 35)
  {
    v11 = v3;
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "Sync Progress -- disabling Key Sync due to SLAM error", v14, 2u);
    }

    v15 = *(v2 + 64);
    v17 = *(v2 + 40);
    v16 = *(v2 + 48);
    v18 = *(v2 + 24);

    v19 = objc_opt_self();
    v20 = String._bridgeToObjectiveC()();
    [v19 deregisterAlarm:v20];

    *(v18 + OBJC_IVAR____TtC10seserviced16SEKeySyncManager_stopped) = 1;
    *(v18 + OBJC_IVAR____TtC10seserviced16SEKeySyncManager_syncProgressState) = &_swiftEmptySetSingleton;

    sub_10018C6D8();
    swift_allocError();
    *v21 = v11;
    swift_willThrow();

    v9 = v17;
    v10 = v16;
    goto LABEL_7;
  }

  *(v2 + 16) = 0;
  v4 = sub_100053B8C(*(v2 + 64), (v2 + 16));
  v5 = *(v2 + 16);
  if (v5)
  {
    v6 = *(v2 + 64);
    v8 = *(v2 + 40);
    v7 = *(v2 + 48);
    swift_willThrow();
    v5;

    v9 = v8;
    v10 = v7;
LABEL_7:
    sub_10006A2D0(v9, v10);
    v22 = *(v2 + 8);

    return v22();
  }

  if (v4)
  {
    v24 = *(v2 + 64);
    v26 = *(v2 + 40);
    v25 = *(v2 + 48);
  }

  else
  {
    v24 = Logger.logObject.getter();
    v27 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v24, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v24, v27, "Sync Progress -- not continuing because SE not paired", v28, 2u);
    }

    v30 = *(v2 + 40);
    v29 = *(v2 + 48);

    sub_10006A2D0(v30, v29);
    v26 = 0;
    v25 = 0xF000000000000000;
  }

  v31 = *(v2 + 8);

  return v31(v26, v25);
}

uint64_t sub_1001652F0(uint64_t a1)
{
  v2 = *(v1 + 40);
  sub_10018C6D8();
  swift_allocError();
  *v3 = v2;
  v4 = *(v1 + 8);

  return v4();
}

uint64_t sub_10016539C(uint64_t a1)
{
  v2 = v1[8];
  v4 = v1[5];
  v3 = v1[6];
  sub_10018C6D8();
  swift_allocError();
  *v5 = v2;
  sub_10006A2D0(v4, v3);
  v6 = v1[1];

  return v6();
}

uint64_t sub_100165468(uint64_t a1, uint64_t a2)
{
  v3[74] = v2;
  v3[73] = a2;
  v3[72] = a1;
  v4 = sub_100068FC4(&qword_100504EE0, &qword_10040C408);
  v3[75] = v4;
  v3[76] = *(v4 - 8);
  v3[77] = swift_task_alloc();
  v5 = sub_100068FC4(&unk_100504880, &unk_10040A5B0);
  v3[78] = v5;
  v3[79] = *(v5 - 8);
  v3[80] = swift_task_alloc();
  type metadata accessor for SESPeerIdentityData(0);
  v3[81] = swift_task_alloc();

  return _swift_task_switch(sub_1001655D0, v2, 0);
}

uint64_t sub_1001655D0(uint64_t a1)
{
  v1[82] = OBJC_IVAR____TtC10seserviced16SEKeySyncManager_logger;
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Sync progress -- loading views & TLKS", v4, 2u);
  }

  v5 = v1[74];

  v6 = OBJC_IVAR____TtC10seserviced16SEKeySyncManager_secureElementInfo;
  v1[83] = OBJC_IVAR____TtC10seserviced16SEKeySyncManager_secureElementInfo;
  v7 = *(v5 + v6);
  if (v7)
  {
    v1[86] = v7;
    v8 = v7;
    v9 = swift_task_alloc();
    v1[87] = v9;
    *v9 = v1;
    v9[1] = sub_1001658B8;
    v10 = v1[73];
    v11 = v1[72];

    return sub_10016C5E0(v11, v10);
  }

  else
  {
    v13 = swift_task_alloc();
    v1[84] = v13;
    *v13 = v1;
    v13[1] = sub_100165784;

    return sub_10016C130();
  }
}

uint64_t sub_100165784(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 680) = a1;

  v4 = *(v3 + 592);
  if (v1)
  {
    v5 = sub_100165ADC;
  }

  else
  {
    v5 = sub_1001659F4;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_1001658B8(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v5[88] = a1;
  v5[89] = a2;
  v5[90] = v2;

  v6 = v4[74];
  if (v2)
  {
    v7 = sub_10016B3AC;
  }

  else
  {
    v7 = sub_100165B84;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_1001659F4(uint64_t a1, const char *a2)
{
  v3 = v2[85];
  v4 = v2[83];
  v5 = v2[74];
  v6 = sub_1003AF3C4(v3, a2);

  v7 = *(v5 + v4);
  *(v5 + v4) = v6;
  v8 = v6;

  v2[86] = v8;
  v9 = swift_task_alloc();
  v2[87] = v9;
  *v9 = v2;
  v9[1] = sub_1001658B8;
  v10 = v2[73];
  v11 = v2[72];

  return sub_10016C5E0(v11, v10);
}

uint64_t sub_100165ADC(uint64_t a1)
{
  v2 = *(v1 + 680);
  sub_10018C6D8();
  swift_allocError();
  *v3 = v2;

  v4 = *(v1 + 8);

  return v4();
}

uint64_t sub_100165B84(uint64_t a1)
{
  v1[68] = v1[88];
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Sync progress -- initial views and TLKs loaded", v4, 2u);
  }

  v5 = v1[90];
  v6 = v1[89];
  v7 = v1[86];

  v8 = sub_10016CBF8(v6, v7);
  if (v5)
  {
    v9 = v1[86];

    v10 = v1[1];
LABEL_7:

    return v10();
  }

  if (v8)
  {
    v11 = v1[86];
    v12 = v1[74];

    v13 = objc_opt_self();
    v14 = String._bridgeToObjectiveC()();
    [v13 deregisterAlarm:v14];

    *(v12 + OBJC_IVAR____TtC10seserviced16SEKeySyncManager_stopped) = 1;

    v10 = v1[1];
    goto LABEL_7;
  }

  v16 = swift_task_alloc();
  v1[91] = v16;
  *v16 = v1;
  v16[1] = sub_100165E04;
  v17 = v1[81];
  v18 = v1[73];
  v19 = v1[72];

  return sub_10016EA88(v17, v19, v18, v1 + 241);
}

uint64_t sub_100165E04()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
    v4 = *(v2 + 592);
    *(v2 + 244) = *(v2 + 241);

    return _swift_task_switch(sub_100165F90, v4, 0);
  }

  else
  {
    v5 = swift_task_alloc();
    *(v2 + 736) = v5;
    *v5 = v3;
    v5[1] = sub_100166050;
    v6 = *(v2 + 648);
    v7 = *(v2 + 584);
    v8 = *(v2 + 576);

    return sub_10016F7E8(v8, v7, v6);
  }
}

uint64_t sub_100165F90(uint64_t a1)
{
  v2 = *(v1 + 244);
  v3 = *(v1 + 688);
  sub_10018C6D8();
  swift_allocError();
  *v4 = v2;

  v5 = *(v1 + 8);

  return v5();
}

uint64_t sub_100166050(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 744) = a1;

  if (v1)
  {
    v4 = *(v3 + 592);

    v5 = sub_10016B45C;
    v6 = v4;
  }

  else
  {
    v6 = *(v3 + 592);
    v5 = sub_100166178;
  }

  return _swift_task_switch(v5, v6, 0);
}

void sub_100166178()
{
  v1 = *(v0 + 744);
  if (v1 >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v2)
  {
    sub_10019F4A4(0, v2 & ~(v2 >> 63), 0);
    if (v2 < 0)
    {
      __break(1u);
      goto LABEL_29;
    }

    v3 = *(v0 + 744);
    if ((v3 & 0xC000000000000001) != 0)
    {
      v4 = 0;
      do
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        v5 = [swift_unknownObjectRetain() peerIdentifier];
        v6 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v8 = v7;

        swift_unknownObjectRelease_n();
        v10 = _swiftEmptyArrayStorage[2];
        v9 = _swiftEmptyArrayStorage[3];
        if (v10 >= v9 >> 1)
        {
          sub_10019F4A4((v9 > 1), v10 + 1, 1);
        }

        ++v4;
        _swiftEmptyArrayStorage[2] = v10 + 1;
        v11 = &_swiftEmptyArrayStorage[2 * v10];
        v11[4] = v6;
        v11[5] = v8;
      }

      while (v2 != v4);
    }

    else
    {
      v12 = (v3 + 32);
      do
      {
        v13 = *v12;
        v14 = [v13 peerIdentifier];
        v15 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v17 = v16;

        v19 = _swiftEmptyArrayStorage[2];
        v18 = _swiftEmptyArrayStorage[3];
        if (v19 >= v18 >> 1)
        {
          sub_10019F4A4((v18 > 1), v19 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v19 + 1;
        v20 = &_swiftEmptyArrayStorage[2 * v19];
        v20[4] = v15;
        v20[5] = v17;
        ++v12;
        --v2;
      }

      while (v2);
    }
  }

  *(v0 + 552) = _swiftEmptyArrayStorage;
  swift_beginAccess();
  sub_100068FC4(&qword_100504EE8, &qword_10040C430);
  UserDefaultBackedOptional.wrappedValue.setter();
  swift_endAccess();
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&_mh_execute_header, v21, v22, "Sync progress -- identity aligned with Octagon", v23, 2u);
  }

  v24 = *(v0 + 712);

  v25 = *(v24 + 16);
  *(v0 + 752) = v25;
  if (v25)
  {
    v26 = *(v0 + 712);
    *(v0 + 245) = 0;
    *(v0 + 760) = 0;
    if (*(v26 + 16))
    {
      v28 = *(v26 + 32);
      v27 = *(v26 + 40);
      *(v0 + 768) = v27;
      v29 = *(v26 + 48);
      *(v0 + 776) = v29;
      v30 = *(v26 + 56);
      *(v0 + 784) = v30;
      v31 = *(v26 + 64);
      v32 = *(v26 + 72);
      *(v0 + 792) = v32;
      *(v0 + 208) = v28;
      *(v0 + 216) = v27;
      *(v0 + 224) = v29;
      *(v0 + 232) = v30;
      *(v0 + 240) = v31;

      sub_100069E2C(v29, v30);
      v33 = v32;
      v34 = swift_task_alloc();
      *(v0 + 800) = v34;
      *v34 = v0;
      v34[1] = sub_100166624;
      v35 = *(v0 + 648);
      v36 = *(v0 + 584);
      v37 = *(v0 + 576);

      sub_1001710AC(v0 + 208, v33, v35, v37, v36);
      return;
    }

LABEL_29:
    __break(1u);
    return;
  }

  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    *v40 = 67109120;
    _os_log_impl(&_mh_execute_header, v38, v39, "Sync progress -- anyTLKProposed %{BOOL}d", v40, 8u);
  }

  v41 = *(v0 + 712);
  v42 = *(v0 + 704);
  *(v0 + 840) = v42;
  *(v0 + 832) = v41;
  v43 = swift_task_alloc();
  *(v0 + 848) = v43;
  *v43 = v0;
  v43[1] = sub_100166C84;

  sub_100171FB0(v41, v42);
}

uint64_t sub_100166624(char a1)
{
  v3 = *v2;
  *(*v2 + 246) = a1;

  if (v1)
  {
    v4 = *(v3 + 592);

    v5 = sub_10016B544;
    v6 = v4;
  }

  else
  {
    v6 = *(v3 + 592);
    v5 = sub_100166758;
  }

  return _swift_task_switch(v5, v6, 0);
}

uint64_t sub_100166758()
{
  v1 = *(v0 + 246);
  v2 = *(v0 + 784);
  v3 = *(v0 + 776);
  v4 = *(v0 + 245);
  v5 = *(v0 + 760);
  v6 = *(v0 + 752);

  result = sub_10006A178(v3, v2);
  v8 = v4 | v1;
  if (v5 + 1 == v6)
  {
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 67109120;
      *(v11 + 4) = v8 & 1;
      _os_log_impl(&_mh_execute_header, v9, v10, "Sync progress -- anyTLKProposed %{BOOL}d", v11, 8u);
    }

    v12 = *(v0 + 712);
    if (v8)
    {

      v13 = swift_task_alloc();
      *(v0 + 808) = v13;
      *v13 = v0;
      v13[1] = sub_100166A84;
      v14 = *(v0 + 584);
      v15 = *(v0 + 576);

      return sub_10016C5E0(v15, v14);
    }

    else
    {
      v30 = *(v0 + 704);
      *(v0 + 840) = v30;
      *(v0 + 832) = v12;
      v31 = swift_task_alloc();
      *(v0 + 848) = v31;
      *v31 = v0;
      v31[1] = sub_100166C84;

      return sub_100171FB0(v12, v30);
    }
  }

  else
  {
    v16 = *(v0 + 760) + 1;
    *(v0 + 245) = v8 & 1;
    *(v0 + 760) = v16;
    v17 = *(v0 + 712);
    if (v16 >= *(v17 + 16))
    {
      __break(1u);
    }

    else
    {
      v18 = v17 + 48 * v16;
      v20 = *(v18 + 32);
      v19 = *(v18 + 40);
      *(v0 + 768) = v19;
      v21 = *(v18 + 48);
      *(v0 + 776) = v21;
      v22 = *(v18 + 56);
      *(v0 + 784) = v22;
      v23 = *(v18 + 64);
      v24 = *(v18 + 72);
      *(v0 + 792) = v24;
      *(v0 + 208) = v20;
      *(v0 + 216) = v19;
      *(v0 + 224) = v21;
      *(v0 + 232) = v22;
      *(v0 + 240) = v23;

      sub_100069E2C(v21, v22);
      v25 = v24;
      v26 = swift_task_alloc();
      *(v0 + 800) = v26;
      *v26 = v0;
      v26[1] = sub_100166624;
      v27 = *(v0 + 648);
      v28 = *(v0 + 584);
      v29 = *(v0 + 576);

      return sub_1001710AC(v0 + 208, v25, v27, v29, v28);
    }
  }

  return result;
}

uint64_t sub_100166A84(uint64_t a1, uint64_t a2)
{
  v5 = *v3;
  *(*v3 + 816) = a1;

  if (v2)
  {
    v6 = *(v5 + 592);

    v7 = sub_10016B664;
    v8 = v6;
  }

  else
  {
    v8 = *(v5 + 592);
    *(v5 + 824) = a2;
    v7 = sub_100166BC4;
  }

  return _swift_task_switch(v7, v8, 0);
}

uint64_t sub_100166BC4()
{
  v1 = v0[102];

  v0[68] = v1;
  v2 = v0[103];
  v3 = v0[102];
  v0[105] = v3;
  v0[104] = v2;
  v4 = swift_task_alloc();
  v0[106] = v4;
  *v4 = v0;
  v4[1] = sub_100166C84;

  return sub_100171FB0(v2, v3);
}

uint64_t sub_100166C84(char a1)
{
  v4 = *v2;
  *(*v2 + 856) = v1;

  if (v1)
  {
    v5 = *(v4 + 592);

    v6 = sub_10016B74C;
    v7 = v5;
  }

  else
  {
    v7 = *(v4 + 592);
    *(v4 + 247) = a1 & 1;
    v6 = sub_100166DD4;
  }

  return _swift_task_switch(v6, v7, 0);
}

void sub_100166DD4()
{
  if (*(v0 + 247))
  {

    v1 = swift_task_alloc();
    *(v0 + 864) = v1;
    *v1 = v0;
    v1[1] = sub_100167C34;
    v2 = *(v0 + 584);
    v3 = *(v0 + 576);

    sub_10016C5E0(v3, v2);
    return;
  }

  v4 = *(v0 + 832);
  v135 = *(v0 + 840);
  *(v0 + 896) = v135;
  *(v0 + 888) = v4;
  v5 = *(v4 + 16);
  v141 = v4;
  if (v5)
  {
    v6 = 0;
    v140 = *(v4 + 16);
    v133 = v5 - 1;
    v7 = v4 + 72;
    v137 = _swiftEmptyArrayStorage;
    v132 = v4 + 72;
    do
    {
      v8 = (v7 + 48 * v6);
      v9 = v6;
      while (1)
      {
        if (v9 >= *(v4 + 16))
        {
          __break(1u);
          goto LABEL_82;
        }

        v11 = *(v8 - 5);
        v10 = *(v8 - 4);
        v12 = *(v8 - 3);
        v13 = *(v8 - 2);
        v14 = *(v8 - 8);
        v6 = v9 + 1;
        v15 = *v8;

        sub_100069E2C(v12, v13);
        v16 = v15;
        if (sub_10018A070(v16, (v0 + 544)))
        {
          break;
        }

        sub_10006A178(v12, v13);

        v8 += 6;
        ++v9;
        v4 = v141;
        if (v140 == v6)
        {
          goto LABEL_19;
        }
      }

      v17 = v137;
      v149 = v137;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_10019F6A4(0, v137[2] + 1, 1);
        v17 = v137;
      }

      v19 = v17[2];
      v18 = v17[3];
      v20 = v19 + 1;
      if (v19 >= v18 >> 1)
      {
        v138 = v19 + 1;
        v131 = v17[2];
        sub_10019F6A4((v18 > 1), v19 + 1, 1);
        v20 = v138;
        v19 = v131;
        v17 = v149;
      }

      v17[2] = v20;
      v137 = v17;
      v21 = &v17[6 * v19];
      v21[4] = v11;
      v21[5] = v10;
      v21[6] = v12;
      v21[7] = v13;
      *(v21 + 64) = v14;
      v21[9] = v16;
      v7 = v132;
      v4 = v141;
    }

    while (v133 != v9);
  }

  else
  {
    v137 = _swiftEmptyArrayStorage;
  }

LABEL_19:
  *(v0 + 904) = v137;

  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 134217984;
    *(v24 + 4) = v137[2];

    _os_log_impl(&_mh_execute_header, v22, v23, "Sync progress - handling %ld absent views", v24, 0xCu);
  }

  else
  {
  }

  v25 = v137[2];
  *(v0 + 912) = v25;
  if (v25)
  {
    *(v0 + 920) = OBJC_IVAR____TtC10seserviced16SEKeySyncManager__recoveryForce;
    swift_beginAccess();
    *(v0 + 281) = 0;
    *(v0 + 928) = 0;
    v26 = *(v0 + 904);
    if (*(v26 + 16))
    {
      v27 = *(v0 + 920);
      v28 = *(v0 + 640);
      v29 = *(v0 + 632);
      v30 = *(v0 + 624);
      v31 = *(v0 + 592);
      v32 = *(v26 + 32);
      *(v0 + 936) = v32;
      v33 = *(v26 + 40);
      *(v0 + 944) = v33;
      v34 = *(v26 + 48);
      *(v0 + 952) = v34;
      v35 = *(v26 + 56);
      *(v0 + 960) = v35;
      v36 = *(v26 + 64);
      v37 = *(v26 + 72);
      *(v0 + 968) = v37;
      *(v0 + 248) = v32;
      *(v0 + 256) = v33;
      *(v0 + 264) = v34;
      *(v0 + 272) = v35;
      *(v0 + 280) = v36;
      (*(v29 + 16))(v28, v31 + v27, v30);

      sub_100069E2C(v34, v35);
      v38 = v37;
      UserDefaultBacked.wrappedValue.getter();
      (*(v29 + 8))(v28, v30);
      if (*(v0 + 242))
      {
        v39 = *(v0 + 960);
        v40 = *(v0 + 952);
        v41 = *(v0 + 744);

        sub_100069E2C(v40, v39);
        sub_10006A178(v40, v39);
        v42 = swift_task_alloc();
        *(v0 + 992) = v42;
        *v42 = v0;
        v42[1] = sub_1001690B4;
        v43 = *(v0 + 968);
        v44 = *(v0 + 944);
        v45 = *(v0 + 936);
        v46 = *(v0 + 688);
        v47 = *(v0 + 648);
        v48 = *(v0 + 584);
        v49 = *(v0 + 576);

        sub_100177110(v45, v44, v43, v41, v47, v46, v49, v48);
      }

      else
      {
        v65 = swift_task_alloc();
        *(v0 + 976) = v65;
        *v65 = v0;
        v65[1] = sub_100168B50;
        v66 = *(v0 + 648);

        sub_10018A71C(v0 + 248, v38, v66);
      }

      return;
    }

    goto LABEL_85;
  }

  *(v0 + 1032) = v135;
  *(v0 + 1024) = v4;
  v50 = *(v4 + 16);
  *(v0 + 1040) = v50;
  if (v50)
  {
    v51 = 0;
    v52 = v4 + 72;
    v53 = _swiftEmptyArrayStorage;
    v139 = v4 + 72;
LABEL_30:
    v54 = (v52 + 48 * v51);
    v55 = v51;
    while (v55 < *(v4 + 16))
    {
      v56 = *(v54 - 4);
      v57 = *(v54 - 3);
      v58 = *(v54 - 2);
      v59 = *(v54 - 8);
      v60 = *v54;
      *(v0 + 288) = *(v54 - 5);
      *(v0 + 296) = v56;
      *(v0 + 304) = v57;
      *(v0 + 312) = v58;
      v51 = v55 + 1;
      *(v0 + 320) = v59;

      sub_100069E2C(v57, v58);
      v61 = v60;
      sub_100177DE4(v61, (v0 + 288), (v0 + 544), (v0 + 16));
      v145 = *(v0 + 16);
      v146 = *(v0 + 32);
      v147 = *(v0 + 48);
      v148 = *(v0 + 64);

      sub_10006A178(v57, v58);

      if (*(v0 + 40))
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v53 = sub_10012F8FC(0, v53[2] + 1, 1, v53);
        }

        v4 = v141;
        v52 = v139;
        v63 = v53[2];
        v62 = v53[3];
        if (v63 >= v62 >> 1)
        {
          v53 = sub_10012F8FC((v62 > 1), v63 + 1, 1, v53);
        }

        v53[2] = v63 + 1;
        v64 = &v53[8 * v63];
        v64[4] = v147;
        v64[5] = v148;
        v64[2] = v145;
        v64[3] = v146;
        if (v50 - 1 != v55)
        {
          goto LABEL_30;
        }

        goto LABEL_45;
      }

      v54 += 6;
      ++v55;
      v4 = v141;
      if (v50 == v51)
      {
        goto LABEL_45;
      }
    }

LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
LABEL_84:
    __break(1u);
LABEL_85:
    __break(1u);
    goto LABEL_86;
  }

  v53 = _swiftEmptyArrayStorage;
LABEL_45:
  *(v0 + 1048) = v53;

  v67 = Logger.logObject.getter();
  v68 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v67, v68))
  {
    v69 = swift_slowAlloc();
    *v69 = 134217984;
    *(v69 + 4) = v53[2];

    _os_log_impl(&_mh_execute_header, v67, v68, "Sync progress - handling %ld present views", v69, 0xCu);
  }

  else
  {
  }

  if (v53[2])
  {
    *(v0 + 1056) = 0;
    v70 = *(v0 + 1048);
    v71 = *(v0 + 744);
    v72 = v70[2];
    v73 = v70[3];
    v74 = v70[5];
    *(v0 + 112) = v70[4];
    *(v0 + 128) = v74;
    *(v0 + 80) = v72;
    *(v0 + 96) = v73;
    v75 = *(v0 + 136);
    *(v0 + 1064) = v75;
    v76 = *(v0 + 96);
    v77 = *(v0 + 104);
    *(v0 + 1072) = v76;
    *(v0 + 1080) = v77;
    v78 = *(v0 + 112);
    v79 = *(v0 + 128);
    *(v0 + 328) = v76;
    *(v0 + 336) = v77;
    *(v0 + 344) = v78;
    *(v0 + 360) = v79;
    v142 = *(v0 + 80);
    *(v0 + 1104) = v142;
    *(v0 + 1088) = v78;
    sub_1000938D4(v0 + 80, v0 + 144, &qword_100504340, &qword_10040C460);
    v80 = swift_task_alloc();
    *(v0 + 1120) = v80;
    *v80 = v0;
    v80[1] = sub_10016A95C;
    v81 = *(v0 + 648);
    v82 = *(v0 + 584);
    v83 = *(v0 + 576);

    sub_100178310(v83, v82, v142, *(&v142 + 1), v0 + 328, v75, v81, v71);
  }

  else
  {
    v84 = *(v0 + 1024);

    v143 = v84;
    v85 = (v84 + 72);
    v86 = -1;
    do
    {
      ++v86;
      v87 = *(v0 + 1040);
      if (v86 == v87)
      {
        break;
      }

      if (v86 >= *(*(v0 + 1024) + 16))
      {
        goto LABEL_83;
      }

      v88 = v85 + 6;
      v89 = *v85;
      v91 = *(v85 - 3);
      v90 = *(v85 - 2);

      sub_100069E2C(v91, v90);
      v92 = v89;
      v93 = sub_10018BCF4(v92, (v0 + 544));

      sub_10006A178(v91, v90);

      v85 = v88;
    }

    while ((v93 & 1) != 0);
    v94 = objc_opt_self();
    v95 = String._bridgeToObjectiveC()();
    v96 = [v94 isAlarmSet:v95];

    v97 = Logger.logObject.getter();
    v98 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v97, v98))
    {
      v136 = v98;
      v99 = *(v0 + 616);
      v100 = *(v0 + 608);
      v101 = *(v0 + 600);
      v134 = *(v0 + 592);
      v102 = swift_slowAlloc();
      *v102 = 67109632;
      *(v102 + 4) = v86 == v87;
      *(v102 + 8) = 1024;
      *(v102 + 10) = v96;
      *(v102 + 14) = 2048;
      v103 = OBJC_IVAR____TtC10seserviced16SEKeySyncManager__errorCount;
      swift_beginAccess();
      (*(v100 + 16))(v99, v134 + v103, v101);
      UserDefaultBacked.wrappedValue.getter();
      (*(v100 + 8))(v99, v101);
      *(v102 + 16) = *(v0 + 568);

      _os_log_impl(&_mh_execute_header, v97, v136, "Sync progress -- completed w/ haveAllViewsOnSE %{BOOL}d retryInFlight %{BOOL}d errorCount %ld", v102, 0x18u);
    }

    else
    {
    }

    *(*(v0 + 592) + OBJC_IVAR____TtC10seserviced16SEKeySyncManager_allViewsSynchronized) = v86 == v87;
    if (v86 == v87)
    {
      *(v0 + 243) = 0;
      swift_beginAccess();
      UserDefaultBacked.wrappedValue.setter();
      swift_endAccess();
      if ((v96 & 1) == 0)
      {
        v104 = *(v0 + 616);
        v105 = *(v0 + 608);
        v106 = *(v0 + 600);
        v107 = *(v0 + 592);
        v108 = OBJC_IVAR____TtC10seserviced16SEKeySyncManager__errorCount;
        swift_beginAccess();
        (*(v105 + 16))(v104, v107 + v108, v106);
        UserDefaultBacked.wrappedValue.getter();
        (*(v105 + 8))(v104, v106);
        if (*(v0 + 560) >= 1)
        {
          swift_beginAccess();
          v109 = UserDefaultBacked.wrappedValue.modify();
          if (__OFSUB__(*v110, 1))
          {
LABEL_86:
            __break(1u);
            return;
          }

          --*v110;
          v109(v0 + 368, 0);
          swift_endAccess();
        }
      }
    }

    v111 = 0x4354502D4553;
    v112 = (v143 + 72);
    v113 = -1;
    while (1)
    {
      if (++v113 == *(v0 + 1040))
      {
        v125 = *(v0 + 648);

        sub_10018CE30(v125, type metadata accessor for SESPeerIdentityData);
        goto LABEL_78;
      }

      if (v113 >= *(*(v0 + 1024) + 16))
      {
        goto LABEL_84;
      }

      v114 = *(v112 - 3);
      v115 = *(v112 - 2);
      v116 = *v112;

      v144 = v114;
      sub_100069E2C(v114, v115);
      v117 = v116;
      v118 = [v117 viewName];
      v119 = v111;
      v120 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v122 = v121;

      if (v120 == v119 && v122 == 0xE600000000000000)
      {
        break;
      }

      v111 = v119;
      v112 += 6;
      v124 = _stringCompareWithSmolCheck(_:_:expecting:)();

      sub_10006A178(v144, v115);

      if (v124)
      {
        goto LABEL_75;
      }
    }

    sub_10006A178(v144, v115);

LABEL_75:

    v126 = *(v0 + 592);
    v127 = OBJC_IVAR____TtC10seserviced16SEKeySyncManager_notifiedPassdOfFidoViewSynced;
    v128 = *(v0 + 688);
    v129 = *(v0 + 648);
    if (*(v126 + OBJC_IVAR____TtC10seserviced16SEKeySyncManager_notifiedPassdOfFidoViewSynced) == 1)
    {
      sub_10018CE30(*(v0 + 648), type metadata accessor for SESPeerIdentityData);
    }

    else
    {
      notify_post("com.apple.seserviced.keysync.fido.tlk.synced");

      sub_10018CE30(v129, type metadata accessor for SESPeerIdentityData);
      *(v126 + v127) = 1;
    }

LABEL_78:

    v130 = *(v0 + 8);

    v130();
  }
}

uint64_t sub_100167C34(uint64_t a1, uint64_t a2)
{
  v5 = *v3;
  *(*v3 + 872) = a1;

  if (v2)
  {
    v6 = *(v5 + 592);

    v7 = sub_10016B804;
    v8 = v6;
  }

  else
  {
    v8 = *(v5 + 592);
    *(v5 + 880) = a2;
    v7 = sub_100167D74;
  }

  return _swift_task_switch(v7, v8, 0);
}

void sub_100167D74()
{
  v1 = *(v0 + 872);

  *(v0 + 544) = v1;
  v2 = *(v0 + 880);
  v133 = *(v0 + 872);
  *(v0 + 896) = v133;
  *(v0 + 888) = v2;
  v3 = *(v2 + 16);
  v139 = v2;
  if (v3)
  {
    v4 = 0;
    v138 = *(v2 + 16);
    v131 = v3 - 1;
    v5 = v2 + 72;
    v135 = _swiftEmptyArrayStorage;
    v130 = v2 + 72;
    do
    {
      v6 = (v5 + 48 * v4);
      v7 = v4;
      while (1)
      {
        if (v7 >= *(v2 + 16))
        {
          __break(1u);
          goto LABEL_78;
        }

        v9 = *(v6 - 5);
        v8 = *(v6 - 4);
        v10 = *(v6 - 3);
        v11 = *(v6 - 2);
        v12 = *(v6 - 8);
        v4 = v7 + 1;
        v13 = *v6;

        sub_100069E2C(v10, v11);
        v14 = v13;
        if (sub_10018A070(v14, (v0 + 544)))
        {
          break;
        }

        sub_10006A178(v10, v11);

        v6 += 6;
        ++v7;
        v2 = v139;
        if (v138 == v4)
        {
          goto LABEL_15;
        }
      }

      v15 = v135;
      v147 = v135;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_10019F6A4(0, v135[2] + 1, 1);
        v15 = v135;
      }

      v17 = v15[2];
      v16 = v15[3];
      v18 = v17 + 1;
      if (v17 >= v16 >> 1)
      {
        v136 = v17 + 1;
        v129 = v15[2];
        sub_10019F6A4((v16 > 1), v17 + 1, 1);
        v18 = v136;
        v17 = v129;
        v15 = v147;
      }

      v15[2] = v18;
      v135 = v15;
      v19 = &v15[6 * v17];
      v19[4] = v9;
      v19[5] = v8;
      v19[6] = v10;
      v19[7] = v11;
      *(v19 + 64) = v12;
      v19[9] = v14;
      v5 = v130;
      v2 = v139;
    }

    while (v131 != v7);
  }

  else
  {
    v135 = _swiftEmptyArrayStorage;
  }

LABEL_15:
  *(v0 + 904) = v135;

  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 134217984;
    *(v22 + 4) = v135[2];

    _os_log_impl(&_mh_execute_header, v20, v21, "Sync progress - handling %ld absent views", v22, 0xCu);
  }

  else
  {
  }

  v23 = v135[2];
  *(v0 + 912) = v23;
  if (v23)
  {
    *(v0 + 920) = OBJC_IVAR____TtC10seserviced16SEKeySyncManager__recoveryForce;
    swift_beginAccess();
    *(v0 + 281) = 0;
    *(v0 + 928) = 0;
    v24 = *(v0 + 904);
    if (*(v24 + 16))
    {
      v25 = *(v0 + 920);
      v26 = *(v0 + 640);
      v27 = *(v0 + 632);
      v28 = *(v0 + 624);
      v29 = *(v0 + 592);
      v30 = *(v24 + 32);
      *(v0 + 936) = v30;
      v31 = *(v24 + 40);
      *(v0 + 944) = v31;
      v32 = *(v24 + 48);
      *(v0 + 952) = v32;
      v33 = *(v24 + 56);
      *(v0 + 960) = v33;
      v34 = *(v24 + 64);
      v35 = *(v24 + 72);
      *(v0 + 968) = v35;
      *(v0 + 248) = v30;
      *(v0 + 256) = v31;
      *(v0 + 264) = v32;
      *(v0 + 272) = v33;
      *(v0 + 280) = v34;
      (*(v27 + 16))(v26, v29 + v25, v28);

      sub_100069E2C(v32, v33);
      v36 = v35;
      UserDefaultBacked.wrappedValue.getter();
      (*(v27 + 8))(v26, v28);
      if (*(v0 + 242))
      {
        v37 = *(v0 + 960);
        v38 = *(v0 + 952);
        v39 = *(v0 + 744);

        sub_100069E2C(v38, v37);
        sub_10006A178(v38, v37);
        v40 = swift_task_alloc();
        *(v0 + 992) = v40;
        *v40 = v0;
        v40[1] = sub_1001690B4;
        v41 = *(v0 + 968);
        v42 = *(v0 + 944);
        v43 = *(v0 + 936);
        v44 = *(v0 + 688);
        v45 = *(v0 + 648);
        v46 = *(v0 + 584);
        v47 = *(v0 + 576);

        sub_100177110(v43, v42, v41, v39, v45, v44, v47, v46);
      }

      else
      {
        v63 = swift_task_alloc();
        *(v0 + 976) = v63;
        *v63 = v0;
        v63[1] = sub_100168B50;
        v64 = *(v0 + 648);

        sub_10018A71C(v0 + 248, v36, v64);
      }

      return;
    }

    goto LABEL_81;
  }

  *(v0 + 1032) = v133;
  *(v0 + 1024) = v2;
  v48 = *(v2 + 16);
  *(v0 + 1040) = v48;
  if (v48)
  {
    v49 = 0;
    v50 = v2 + 72;
    v51 = _swiftEmptyArrayStorage;
    v137 = v2 + 72;
LABEL_26:
    v52 = (v50 + 48 * v49);
    v53 = v49;
    while (v53 < *(v2 + 16))
    {
      v54 = *(v52 - 4);
      v55 = *(v52 - 3);
      v56 = *(v52 - 2);
      v57 = *(v52 - 8);
      v58 = *v52;
      *(v0 + 288) = *(v52 - 5);
      *(v0 + 296) = v54;
      *(v0 + 304) = v55;
      *(v0 + 312) = v56;
      v49 = v53 + 1;
      *(v0 + 320) = v57;

      sub_100069E2C(v55, v56);
      v59 = v58;
      sub_100177DE4(v59, (v0 + 288), (v0 + 544), (v0 + 16));
      v143 = *(v0 + 16);
      v144 = *(v0 + 32);
      v145 = *(v0 + 48);
      v146 = *(v0 + 64);

      sub_10006A178(v55, v56);

      if (*(v0 + 40))
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v51 = sub_10012F8FC(0, v51[2] + 1, 1, v51);
        }

        v2 = v139;
        v50 = v137;
        v61 = v51[2];
        v60 = v51[3];
        if (v61 >= v60 >> 1)
        {
          v51 = sub_10012F8FC((v60 > 1), v61 + 1, 1, v51);
        }

        v51[2] = v61 + 1;
        v62 = &v51[8 * v61];
        v62[4] = v145;
        v62[5] = v146;
        v62[2] = v143;
        v62[3] = v144;
        if (v48 - 1 != v53)
        {
          goto LABEL_26;
        }

        goto LABEL_41;
      }

      v52 += 6;
      ++v53;
      v2 = v139;
      if (v48 == v49)
      {
        goto LABEL_41;
      }
    }

LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  v51 = _swiftEmptyArrayStorage;
LABEL_41:
  *(v0 + 1048) = v51;

  v65 = Logger.logObject.getter();
  v66 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v65, v66))
  {
    v67 = swift_slowAlloc();
    *v67 = 134217984;
    *(v67 + 4) = v51[2];

    _os_log_impl(&_mh_execute_header, v65, v66, "Sync progress - handling %ld present views", v67, 0xCu);
  }

  else
  {
  }

  if (v51[2])
  {
    *(v0 + 1056) = 0;
    v68 = *(v0 + 1048);
    v69 = *(v0 + 744);
    v70 = v68[2];
    v71 = v68[3];
    v72 = v68[5];
    *(v0 + 112) = v68[4];
    *(v0 + 128) = v72;
    *(v0 + 80) = v70;
    *(v0 + 96) = v71;
    v73 = *(v0 + 136);
    *(v0 + 1064) = v73;
    v74 = *(v0 + 96);
    v75 = *(v0 + 104);
    *(v0 + 1072) = v74;
    *(v0 + 1080) = v75;
    v76 = *(v0 + 112);
    v77 = *(v0 + 128);
    *(v0 + 328) = v74;
    *(v0 + 336) = v75;
    *(v0 + 344) = v76;
    *(v0 + 360) = v77;
    v140 = *(v0 + 80);
    *(v0 + 1104) = v140;
    *(v0 + 1088) = v76;
    sub_1000938D4(v0 + 80, v0 + 144, &qword_100504340, &qword_10040C460);
    v78 = swift_task_alloc();
    *(v0 + 1120) = v78;
    *v78 = v0;
    v78[1] = sub_10016A95C;
    v79 = *(v0 + 648);
    v80 = *(v0 + 584);
    v81 = *(v0 + 576);

    sub_100178310(v81, v80, v140, *(&v140 + 1), v0 + 328, v73, v79, v69);
  }

  else
  {
    v82 = *(v0 + 1024);

    v141 = v82;
    v83 = (v82 + 72);
    v84 = -1;
    do
    {
      ++v84;
      v85 = *(v0 + 1040);
      if (v84 == v85)
      {
        break;
      }

      if (v84 >= *(*(v0 + 1024) + 16))
      {
        goto LABEL_79;
      }

      v86 = v83 + 6;
      v87 = *v83;
      v89 = *(v83 - 3);
      v88 = *(v83 - 2);

      sub_100069E2C(v89, v88);
      v90 = v87;
      v91 = sub_10018BCF4(v90, (v0 + 544));

      sub_10006A178(v89, v88);

      v83 = v86;
    }

    while ((v91 & 1) != 0);
    v92 = objc_opt_self();
    v93 = String._bridgeToObjectiveC()();
    v94 = [v92 isAlarmSet:v93];

    v95 = Logger.logObject.getter();
    v96 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v95, v96))
    {
      v134 = v96;
      v97 = *(v0 + 616);
      v98 = *(v0 + 608);
      v99 = *(v0 + 600);
      v132 = *(v0 + 592);
      v100 = swift_slowAlloc();
      *v100 = 67109632;
      *(v100 + 4) = v84 == v85;
      *(v100 + 8) = 1024;
      *(v100 + 10) = v94;
      *(v100 + 14) = 2048;
      v101 = OBJC_IVAR____TtC10seserviced16SEKeySyncManager__errorCount;
      swift_beginAccess();
      (*(v98 + 16))(v97, v132 + v101, v99);
      UserDefaultBacked.wrappedValue.getter();
      (*(v98 + 8))(v97, v99);
      *(v100 + 16) = *(v0 + 568);

      _os_log_impl(&_mh_execute_header, v95, v134, "Sync progress -- completed w/ haveAllViewsOnSE %{BOOL}d retryInFlight %{BOOL}d errorCount %ld", v100, 0x18u);
    }

    else
    {
    }

    *(*(v0 + 592) + OBJC_IVAR____TtC10seserviced16SEKeySyncManager_allViewsSynchronized) = v84 == v85;
    if (v84 == v85)
    {
      *(v0 + 243) = 0;
      swift_beginAccess();
      UserDefaultBacked.wrappedValue.setter();
      swift_endAccess();
      if ((v94 & 1) == 0)
      {
        v102 = *(v0 + 616);
        v103 = *(v0 + 608);
        v104 = *(v0 + 600);
        v105 = *(v0 + 592);
        v106 = OBJC_IVAR____TtC10seserviced16SEKeySyncManager__errorCount;
        swift_beginAccess();
        (*(v103 + 16))(v102, v105 + v106, v104);
        UserDefaultBacked.wrappedValue.getter();
        (*(v103 + 8))(v102, v104);
        if (*(v0 + 560) >= 1)
        {
          swift_beginAccess();
          v107 = UserDefaultBacked.wrappedValue.modify();
          if (__OFSUB__(*v108, 1))
          {
LABEL_82:
            __break(1u);
            return;
          }

          --*v108;
          v107(v0 + 368, 0);
          swift_endAccess();
        }
      }
    }

    v109 = 0x4354502D4553;
    v110 = (v141 + 72);
    v111 = -1;
    while (1)
    {
      if (++v111 == *(v0 + 1040))
      {
        v123 = *(v0 + 648);

        sub_10018CE30(v123, type metadata accessor for SESPeerIdentityData);
        goto LABEL_74;
      }

      if (v111 >= *(*(v0 + 1024) + 16))
      {
        goto LABEL_80;
      }

      v112 = *(v110 - 3);
      v113 = *(v110 - 2);
      v114 = *v110;

      v142 = v112;
      sub_100069E2C(v112, v113);
      v115 = v114;
      v116 = [v115 viewName];
      v117 = v109;
      v118 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v120 = v119;

      if (v118 == v117 && v120 == 0xE600000000000000)
      {
        break;
      }

      v109 = v117;
      v110 += 6;
      v122 = _stringCompareWithSmolCheck(_:_:expecting:)();

      sub_10006A178(v142, v113);

      if (v122)
      {
        goto LABEL_71;
      }
    }

    sub_10006A178(v142, v113);

LABEL_71:

    v124 = *(v0 + 592);
    v125 = OBJC_IVAR____TtC10seserviced16SEKeySyncManager_notifiedPassdOfFidoViewSynced;
    v126 = *(v0 + 688);
    v127 = *(v0 + 648);
    if (*(v124 + OBJC_IVAR____TtC10seserviced16SEKeySyncManager_notifiedPassdOfFidoViewSynced) == 1)
    {
      sub_10018CE30(*(v0 + 648), type metadata accessor for SESPeerIdentityData);
    }

    else
    {
      notify_post("com.apple.seserviced.keysync.fido.tlk.synced");

      sub_10018CE30(v127, type metadata accessor for SESPeerIdentityData);
      *(v124 + v125) = 1;
    }

LABEL_74:

    v128 = *(v0 + 8);

    v128();
  }
}

uint64_t sub_100168B50(char a1)
{
  v4 = *v2;
  *(*v2 + 984) = v1;

  if (v1)
  {
    v5 = *(v4 + 592);

    v6 = sub_100168FCC;
    v7 = v5;
  }

  else
  {
    v7 = *(v4 + 592);
    *(v4 + 282) = a1 & 1;
    v6 = sub_100168CA4;
  }

  return _swift_task_switch(v6, v7, 0);
}

void sub_100168CA4()
{
  if ((*(v0 + 282) & 1) == 0)
  {
    goto LABEL_8;
  }

  v1 = *(v0 + 968);
  v2 = *(v0 + 960);
  v3 = *(v0 + 952);
  v4 = *(v0 + 928);
  v5 = *(v0 + 912);

  sub_10006A178(v3, v2);

  if (v4 + 1 == v5)
  {

    v6 = swift_task_alloc();
    *(v0 + 1000) = v6;
    *v6 = v0;
    v6[1] = sub_100169E98;
    v7 = *(v0 + 584);
    v8 = *(v0 + 576);

    sub_10016C5E0(v8, v7);
    return;
  }

  v9 = *(v0 + 928) + 1;
  *(v0 + 281) = 1;
  *(v0 + 928) = v9;
  v10 = *(v0 + 904);
  if (v9 >= *(v10 + 16))
  {
    __break(1u);
    return;
  }

  v11 = *(v0 + 920);
  v12 = *(v0 + 640);
  v13 = *(v0 + 632);
  v14 = *(v0 + 624);
  v15 = *(v0 + 592);
  v16 = v10 + 48 * v9;
  v17 = *(v16 + 32);
  *(v0 + 936) = v17;
  v18 = *(v16 + 40);
  *(v0 + 944) = v18;
  v19 = *(v16 + 48);
  *(v0 + 952) = v19;
  v20 = *(v16 + 56);
  *(v0 + 960) = v20;
  v21 = *(v16 + 64);
  v22 = *(v16 + 72);
  *(v0 + 968) = v22;
  *(v0 + 248) = v17;
  *(v0 + 256) = v18;
  *(v0 + 264) = v19;
  *(v0 + 272) = v20;
  *(v0 + 280) = v21;
  (*(v13 + 16))(v12, v15 + v11, v14);

  sub_100069E2C(v19, v20);
  v23 = v22;
  UserDefaultBacked.wrappedValue.getter();
  (*(v13 + 8))(v12, v14);
  if ((*(v0 + 242) & 1) == 0)
  {
    v35 = swift_task_alloc();
    *(v0 + 976) = v35;
    *v35 = v0;
    v35[1] = sub_100168B50;
    v36 = *(v0 + 648);

    sub_10018A71C(v0 + 248, v23, v36);
  }

  else
  {
LABEL_8:
    v24 = *(v0 + 960);
    v25 = *(v0 + 952);
    v26 = *(v0 + 744);

    sub_100069E2C(v25, v24);
    sub_10006A178(v25, v24);
    v27 = swift_task_alloc();
    *(v0 + 992) = v27;
    *v27 = v0;
    v27[1] = sub_1001690B4;
    v28 = *(v0 + 968);
    v29 = *(v0 + 944);
    v30 = *(v0 + 936);
    v31 = *(v0 + 688);
    v32 = *(v0 + 648);
    v33 = *(v0 + 584);
    v34 = *(v0 + 576);

    sub_100177110(v30, v29, v28, v26, v32, v31, v34, v33);
  }
}

uint64_t sub_100168FCC()
{
  v1 = *(v0 + 968);
  v2 = *(v0 + 960);
  v3 = *(v0 + 952);
  v4 = *(v0 + 648);

  sub_10006A178(v3, v2);

  sub_10018CE30(v4, type metadata accessor for SESPeerIdentityData);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1001690B4(char a1)
{
  v4 = *v2;

  if (v1)
  {
    v5 = *(v4 + 592);
    *(v4 + 283) = a1;

    v6 = sub_10016B8EC;
    v7 = v5;
  }

  else
  {
    v8 = *(v4 + 592);

    v6 = sub_100169234;
    v7 = v8;
  }

  return _swift_task_switch(v6, v7, 0);
}

void sub_100169234()
{
  v1 = *(v0 + 968);
  v2 = *(v0 + 960);
  v3 = *(v0 + 952);
  v4 = *(v0 + 928);
  v5 = *(v0 + 912);

  sub_10006A178(v3, v2);

  if (v4 + 1 != v5)
  {
    v9 = *(v0 + 928) + 1;
    *(v0 + 928) = v9;
    v10 = *(v0 + 904);
    if (v9 < *(v10 + 16))
    {
      v11 = *(v0 + 920);
      v12 = *(v0 + 640);
      v13 = *(v0 + 632);
      v14 = *(v0 + 624);
      v15 = *(v0 + 592);
      v16 = v10 + 48 * v9;
      v17 = *(v16 + 32);
      *(v0 + 936) = v17;
      v18 = *(v16 + 40);
      *(v0 + 944) = v18;
      v19 = *(v16 + 48);
      *(v0 + 952) = v19;
      v20 = *(v16 + 56);
      *(v0 + 960) = v20;
      v21 = *(v16 + 64);
      v22 = *(v16 + 72);
      *(v0 + 968) = v22;
      *(v0 + 248) = v17;
      *(v0 + 256) = v18;
      *(v0 + 264) = v19;
      *(v0 + 272) = v20;
      *(v0 + 280) = v21;
      (*(v13 + 16))(v12, v15 + v11, v14);

      sub_100069E2C(v19, v20);
      v23 = v22;
      UserDefaultBacked.wrappedValue.getter();
      (*(v13 + 8))(v12, v14);
      if (*(v0 + 242))
      {
        v24 = *(v0 + 960);
        v25 = *(v0 + 952);
        v26 = *(v0 + 744);

        sub_100069E2C(v25, v24);
        sub_10006A178(v25, v24);
        v27 = swift_task_alloc();
        *(v0 + 992) = v27;
        *v27 = v0;
        v27[1] = sub_1001690B4;
        v28 = *(v0 + 968);
        v29 = *(v0 + 944);
        v30 = *(v0 + 936);
        v31 = *(v0 + 688);
        v32 = *(v0 + 648);
        v33 = *(v0 + 584);
        v34 = *(v0 + 576);

        sub_100177110(v30, v29, v28, v26, v32, v31, v34, v33);
      }

      else
      {
        v51 = swift_task_alloc();
        *(v0 + 976) = v51;
        *v51 = v0;
        v51[1] = sub_100168B50;
        v52 = *(v0 + 648);

        sub_10018A71C(v0 + 248, v23, v52);
      }

      return;
    }

LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  if (*(v0 + 281))
  {

    v6 = swift_task_alloc();
    *(v0 + 1000) = v6;
    *v6 = v0;
    v6[1] = sub_100169E98;
    v7 = *(v0 + 584);
    v8 = *(v0 + 576);

    sub_10016C5E0(v8, v7);
    return;
  }

  v35 = *(v0 + 888);
  *(v0 + 1024) = v35;
  v36 = v35;
  v37 = *(v35 + 16);
  *(v0 + 1040) = v37;
  if (v37)
  {
    v38 = 0;
    v39 = v35 + 72;
    v120 = _swiftEmptyArrayStorage;
    v119 = v35 + 72;
    while (2)
    {
      v40 = (v39 + 48 * v38);
      v41 = v38;
      while (1)
      {
        if (v41 >= *(v36 + 16))
        {
          __break(1u);
LABEL_65:
          __break(1u);
LABEL_66:
          __break(1u);
          goto LABEL_67;
        }

        v42 = *(v40 - 4);
        v43 = *(v40 - 3);
        v44 = *(v40 - 2);
        v45 = *(v40 - 8);
        v46 = *v40;
        *(v0 + 288) = *(v40 - 5);
        *(v0 + 296) = v42;
        *(v0 + 304) = v43;
        *(v0 + 312) = v44;
        v38 = v41 + 1;
        *(v0 + 320) = v45;

        sub_100069E2C(v43, v44);
        v47 = v46;
        sub_100177DE4(v47, (v0 + 288), (v0 + 544), (v0 + 16));
        v124 = *(v0 + 16);
        v125 = *(v0 + 32);
        v126 = *(v0 + 48);
        v127 = *(v0 + 64);

        sub_10006A178(v43, v44);

        if (*(v0 + 40))
        {
          break;
        }

        v40 += 6;
        ++v41;
        if (v37 == v38)
        {
          goto LABEL_28;
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v120 = sub_10012F8FC(0, v120[2] + 1, 1, v120);
      }

      v49 = v120[2];
      v48 = v120[3];
      if (v49 >= v48 >> 1)
      {
        v120 = sub_10012F8FC((v48 > 1), v49 + 1, 1, v120);
      }

      v120[2] = v49 + 1;
      v50 = &v120[8 * v49];
      v50[4] = v126;
      v50[5] = v127;
      v50[2] = v124;
      v50[3] = v125;
      v39 = v119;
      if (v37 - 1 != v41)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v120 = _swiftEmptyArrayStorage;
  }

LABEL_28:
  *(v0 + 1048) = v120;

  v53 = Logger.logObject.getter();
  v54 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    *v55 = 134217984;
    *(v55 + 4) = v120[2];

    _os_log_impl(&_mh_execute_header, v53, v54, "Sync progress - handling %ld present views", v55, 0xCu);
  }

  else
  {
  }

  if (v120[2])
  {
    *(v0 + 1056) = 0;
    v56 = *(v0 + 1048);
    v57 = *(v0 + 744);
    v58 = v56[2];
    v59 = v56[3];
    v60 = v56[5];
    *(v0 + 112) = v56[4];
    *(v0 + 128) = v60;
    *(v0 + 80) = v58;
    *(v0 + 96) = v59;
    v61 = *(v0 + 136);
    *(v0 + 1064) = v61;
    v62 = *(v0 + 96);
    v63 = *(v0 + 104);
    *(v0 + 1072) = v62;
    *(v0 + 1080) = v63;
    v64 = *(v0 + 112);
    v65 = *(v0 + 128);
    *(v0 + 328) = v62;
    *(v0 + 336) = v63;
    *(v0 + 344) = v64;
    *(v0 + 360) = v65;
    v121 = *(v0 + 80);
    *(v0 + 1104) = v121;
    *(v0 + 1088) = v64;
    sub_1000938D4(v0 + 80, v0 + 144, &qword_100504340, &qword_10040C460);
    v66 = swift_task_alloc();
    *(v0 + 1120) = v66;
    *v66 = v0;
    v66[1] = sub_10016A95C;
    v67 = *(v0 + 648);
    v68 = *(v0 + 584);
    v69 = *(v0 + 576);

    sub_100178310(v69, v68, v121, *(&v121 + 1), v0 + 328, v61, v67, v57);
    return;
  }

  v70 = *(v0 + 1024);

  v122 = v70;
  v71 = (v70 + 72);
  v72 = -1;
  do
  {
    ++v72;
    v73 = *(v0 + 1040);
    if (v72 == v73)
    {
      break;
    }

    if (v72 >= *(*(v0 + 1024) + 16))
    {
      goto LABEL_65;
    }

    v74 = v71 + 6;
    v75 = *v71;
    v77 = *(v71 - 3);
    v76 = *(v71 - 2);

    sub_100069E2C(v77, v76);
    v78 = v75;
    v79 = sub_10018BCF4(v78, (v0 + 544));

    sub_10006A178(v77, v76);

    v71 = v74;
  }

  while ((v79 & 1) != 0);
  v80 = objc_opt_self();
  v81 = String._bridgeToObjectiveC()();
  v82 = [v80 isAlarmSet:v81];

  v83 = Logger.logObject.getter();
  v84 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v83, v84))
  {
    v118 = v84;
    v85 = *(v0 + 616);
    v86 = *(v0 + 608);
    v87 = *(v0 + 600);
    v117 = *(v0 + 592);
    v88 = swift_slowAlloc();
    *v88 = 67109632;
    *(v88 + 4) = v72 == v73;
    *(v88 + 8) = 1024;
    *(v88 + 10) = v82;
    *(v88 + 14) = 2048;
    v89 = OBJC_IVAR____TtC10seserviced16SEKeySyncManager__errorCount;
    swift_beginAccess();
    (*(v86 + 16))(v85, v117 + v89, v87);
    UserDefaultBacked.wrappedValue.getter();
    (*(v86 + 8))(v85, v87);
    *(v88 + 16) = *(v0 + 568);

    _os_log_impl(&_mh_execute_header, v83, v118, "Sync progress -- completed w/ haveAllViewsOnSE %{BOOL}d retryInFlight %{BOOL}d errorCount %ld", v88, 0x18u);
  }

  else
  {
  }

  *(*(v0 + 592) + OBJC_IVAR____TtC10seserviced16SEKeySyncManager_allViewsSynchronized) = v72 == v73;
  if (v72 != v73)
  {
    goto LABEL_47;
  }

  *(v0 + 243) = 0;
  swift_beginAccess();
  UserDefaultBacked.wrappedValue.setter();
  swift_endAccess();
  if (v82)
  {
    goto LABEL_47;
  }

  v90 = *(v0 + 616);
  v91 = *(v0 + 608);
  v92 = *(v0 + 600);
  v93 = *(v0 + 592);
  v94 = OBJC_IVAR____TtC10seserviced16SEKeySyncManager__errorCount;
  swift_beginAccess();
  (*(v91 + 16))(v90, v93 + v94, v92);
  UserDefaultBacked.wrappedValue.getter();
  (*(v91 + 8))(v90, v92);
  if (*(v0 + 560) < 1)
  {
    goto LABEL_47;
  }

  swift_beginAccess();
  v95 = UserDefaultBacked.wrappedValue.modify();
  if (__OFSUB__(*v96, 1))
  {
LABEL_68:
    __break(1u);
    return;
  }

  --*v96;
  v95(v0 + 368, 0);
  swift_endAccess();
LABEL_47:
  v97 = 0x4354502D4553;
  v98 = (v122 + 72);
  v99 = -1;
  while (1)
  {
    if (++v99 == *(v0 + 1040))
    {
      v111 = *(v0 + 648);

      sub_10018CE30(v111, type metadata accessor for SESPeerIdentityData);
      goto LABEL_61;
    }

    if (v99 >= *(*(v0 + 1024) + 16))
    {
      goto LABEL_66;
    }

    v100 = *(v98 - 3);
    v101 = *(v98 - 2);
    v102 = *v98;

    v123 = v100;
    sub_100069E2C(v100, v101);
    v103 = v102;
    v104 = [v103 viewName];
    v105 = v97;
    v106 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v108 = v107;

    if (v106 == v105 && v108 == 0xE600000000000000)
    {
      break;
    }

    v97 = v105;
    v98 += 6;
    v110 = _stringCompareWithSmolCheck(_:_:expecting:)();

    sub_10006A178(v123, v101);

    if (v110)
    {
      goto LABEL_58;
    }
  }

  sub_10006A178(v123, v101);

LABEL_58:

  v112 = *(v0 + 592);
  v113 = OBJC_IVAR____TtC10seserviced16SEKeySyncManager_notifiedPassdOfFidoViewSynced;
  v114 = *(v0 + 688);
  v115 = *(v0 + 648);
  if (*(v112 + OBJC_IVAR____TtC10seserviced16SEKeySyncManager_notifiedPassdOfFidoViewSynced) == 1)
  {
    sub_10018CE30(*(v0 + 648), type metadata accessor for SESPeerIdentityData);
  }

  else
  {
    notify_post("com.apple.seserviced.keysync.fido.tlk.synced");

    sub_10018CE30(v115, type metadata accessor for SESPeerIdentityData);
    *(v112 + v113) = 1;
  }

LABEL_61:

  v116 = *(v0 + 8);

  v116();
}

uint64_t sub_100169E98(uint64_t a1, uint64_t a2)
{
  v5 = *v3;
  *(*v3 + 1008) = a1;

  if (v2)
  {
    v6 = *(v5 + 592);

    v7 = sub_10016BA0C;
    v8 = v6;
  }

  else
  {
    v8 = *(v5 + 592);
    *(v5 + 1016) = a2;
    v7 = sub_100169FE4;
  }

  return _swift_task_switch(v7, v8, 0);
}

void sub_100169FE4()
{
  v1 = *(v0 + 1008);

  *(v0 + 544) = v1;
  v2 = *(v0 + 1016);
  *(v0 + 1032) = *(v0 + 1008);
  *(v0 + 1024) = v2;
  v3 = *(v2 + 16);
  *(v0 + 1040) = v3;
  if (v3)
  {
    v4 = 0;
    v5 = v2 + 72;
    v83 = _swiftEmptyArrayStorage;
    while (2)
    {
      v6 = (v5 + 48 * v4);
      v7 = v4;
      while (1)
      {
        if (v7 >= *(v2 + 16))
        {
          __break(1u);
LABEL_52:
          __break(1u);
LABEL_53:
          __break(1u);
          goto LABEL_54;
        }

        v8 = *(v6 - 4);
        v9 = *(v6 - 3);
        v10 = *(v6 - 2);
        v11 = *(v6 - 8);
        v12 = *v6;
        *(v0 + 288) = *(v6 - 5);
        *(v0 + 296) = v8;
        *(v0 + 304) = v9;
        *(v0 + 312) = v10;
        v4 = v7 + 1;
        *(v0 + 320) = v11;

        sub_100069E2C(v9, v10);
        v13 = v12;
        sub_100177DE4(v13, (v0 + 288), (v0 + 544), (v0 + 16));
        v87 = *(v0 + 16);
        v88 = *(v0 + 32);
        v89 = *(v0 + 48);
        v90 = *(v0 + 64);

        sub_10006A178(v9, v10);

        if (*(v0 + 40))
        {
          break;
        }

        v6 += 6;
        ++v7;
        if (v3 == v4)
        {
          goto LABEL_15;
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v83 = sub_10012F8FC(0, v83[2] + 1, 1, v83);
      }

      v15 = v83[2];
      v14 = v83[3];
      if (v15 >= v14 >> 1)
      {
        v83 = sub_10012F8FC((v14 > 1), v15 + 1, 1, v83);
      }

      v83[2] = v15 + 1;
      v16 = &v83[8 * v15];
      v16[4] = v89;
      v16[5] = v90;
      v16[2] = v87;
      v16[3] = v88;
      v5 = v2 + 72;
      if (v3 - 1 != v7)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v83 = _swiftEmptyArrayStorage;
  }

LABEL_15:
  *(v0 + 1048) = v83;

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 134217984;
    *(v19 + 4) = v83[2];

    _os_log_impl(&_mh_execute_header, v17, v18, "Sync progress - handling %ld present views", v19, 0xCu);
  }

  else
  {
  }

  if (v83[2])
  {
    *(v0 + 1056) = 0;
    v20 = *(v0 + 1048);
    v21 = *(v0 + 744);
    v22 = v20[2];
    v23 = v20[3];
    v24 = v20[5];
    *(v0 + 112) = v20[4];
    *(v0 + 128) = v24;
    *(v0 + 80) = v22;
    *(v0 + 96) = v23;
    v25 = *(v0 + 136);
    *(v0 + 1064) = v25;
    v26 = *(v0 + 96);
    v27 = *(v0 + 104);
    *(v0 + 1072) = v26;
    *(v0 + 1080) = v27;
    v28 = *(v0 + 112);
    v29 = *(v0 + 128);
    *(v0 + 328) = v26;
    *(v0 + 336) = v27;
    *(v0 + 344) = v28;
    *(v0 + 360) = v29;
    v84 = *(v0 + 80);
    *(v0 + 1104) = v84;
    *(v0 + 1088) = v28;
    sub_1000938D4(v0 + 80, v0 + 144, &qword_100504340, &qword_10040C460);
    v30 = swift_task_alloc();
    *(v0 + 1120) = v30;
    *v30 = v0;
    v30[1] = sub_10016A95C;
    v31 = *(v0 + 648);
    v32 = *(v0 + 584);
    v33 = *(v0 + 576);

    sub_100178310(v33, v32, v84, *(&v84 + 1), v0 + 328, v25, v31, v21);
  }

  else
  {
    v34 = *(v0 + 1024);

    v85 = v34;
    v35 = (v34 + 72);
    v36 = -1;
    do
    {
      ++v36;
      v37 = *(v0 + 1040);
      if (v36 == v37)
      {
        break;
      }

      if (v36 >= *(*(v0 + 1024) + 16))
      {
        goto LABEL_52;
      }

      v38 = v35 + 6;
      v39 = *v35;
      v41 = *(v35 - 3);
      v40 = *(v35 - 2);

      sub_100069E2C(v41, v40);
      v42 = v39;
      v43 = sub_10018BCF4(v42, (v0 + 544));

      sub_10006A178(v41, v40);

      v35 = v38;
    }

    while ((v43 & 1) != 0);
    v44 = objc_opt_self();
    v45 = String._bridgeToObjectiveC()();
    v46 = [v44 isAlarmSet:v45];

    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v47, v48))
    {
      v82 = v48;
      v49 = *(v0 + 616);
      v50 = *(v0 + 608);
      v51 = *(v0 + 600);
      v81 = *(v0 + 592);
      v52 = swift_slowAlloc();
      *v52 = 67109632;
      *(v52 + 4) = v36 == v37;
      *(v52 + 8) = 1024;
      *(v52 + 10) = v46;
      *(v52 + 14) = 2048;
      v53 = OBJC_IVAR____TtC10seserviced16SEKeySyncManager__errorCount;
      swift_beginAccess();
      (*(v50 + 16))(v49, v81 + v53, v51);
      UserDefaultBacked.wrappedValue.getter();
      (*(v50 + 8))(v49, v51);
      *(v52 + 16) = *(v0 + 568);

      _os_log_impl(&_mh_execute_header, v47, v82, "Sync progress -- completed w/ haveAllViewsOnSE %{BOOL}d retryInFlight %{BOOL}d errorCount %ld", v52, 0x18u);
    }

    else
    {
    }

    *(*(v0 + 592) + OBJC_IVAR____TtC10seserviced16SEKeySyncManager_allViewsSynchronized) = v36 == v37;
    if (v36 == v37)
    {
      *(v0 + 243) = 0;
      swift_beginAccess();
      UserDefaultBacked.wrappedValue.setter();
      swift_endAccess();
      if ((v46 & 1) == 0)
      {
        v54 = *(v0 + 616);
        v55 = *(v0 + 608);
        v56 = *(v0 + 600);
        v57 = *(v0 + 592);
        v58 = OBJC_IVAR____TtC10seserviced16SEKeySyncManager__errorCount;
        swift_beginAccess();
        (*(v55 + 16))(v54, v57 + v58, v56);
        UserDefaultBacked.wrappedValue.getter();
        (*(v55 + 8))(v54, v56);
        if (*(v0 + 560) >= 1)
        {
          swift_beginAccess();
          v59 = UserDefaultBacked.wrappedValue.modify();
          if (__OFSUB__(*v60, 1))
          {
LABEL_54:
            __break(1u);
            return;
          }

          --*v60;
          v59(v0 + 368, 0);
          swift_endAccess();
        }
      }
    }

    v61 = 0x4354502D4553;
    v62 = (v85 + 72);
    v63 = -1;
    while (1)
    {
      if (++v63 == *(v0 + 1040))
      {
        v75 = *(v0 + 648);

        sub_10018CE30(v75, type metadata accessor for SESPeerIdentityData);
        goto LABEL_48;
      }

      if (v63 >= *(*(v0 + 1024) + 16))
      {
        goto LABEL_53;
      }

      v64 = *(v62 - 3);
      v65 = *(v62 - 2);
      v66 = *v62;

      v86 = v64;
      sub_100069E2C(v64, v65);
      v67 = v66;
      v68 = [v67 viewName];
      v69 = v61;
      v70 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v72 = v71;

      if (v70 == v69 && v72 == 0xE600000000000000)
      {
        break;
      }

      v61 = v69;
      v62 += 6;
      v74 = _stringCompareWithSmolCheck(_:_:expecting:)();

      sub_10006A178(v86, v65);

      if (v74)
      {
        goto LABEL_45;
      }
    }

    sub_10006A178(v86, v65);

LABEL_45:

    v76 = *(v0 + 592);
    v77 = OBJC_IVAR____TtC10seserviced16SEKeySyncManager_notifiedPassdOfFidoViewSynced;
    v78 = *(v0 + 688);
    v79 = *(v0 + 648);
    if (*(v76 + OBJC_IVAR____TtC10seserviced16SEKeySyncManager_notifiedPassdOfFidoViewSynced) == 1)
    {
      sub_10018CE30(*(v0 + 648), type metadata accessor for SESPeerIdentityData);
    }

    else
    {
      notify_post("com.apple.seserviced.keysync.fido.tlk.synced");

      sub_10018CE30(v79, type metadata accessor for SESPeerIdentityData);
      *(v76 + v77) = 1;
    }

LABEL_48:

    v80 = *(v0 + 8);

    v80();
  }
}

uint64_t sub_10016A95C()
{
  v2 = *v1;
  v2[141] = v0;

  if (v0)
  {
    v3 = v2[74];

    return _swift_task_switch(sub_10016BAF4, v3, 0);
  }

  else
  {
    v4 = swift_task_alloc();
    v2[142] = v4;
    *v4 = v2;
    v4[1] = sub_10016AB18;
    v5 = v2[139];
    v6 = v2[138];
    v7 = v2[135];
    v8 = v2[81];
    v9 = v2[73];
    v10 = v2[72];
    v11 = v2[134];

    return sub_10017F3F0(v11, v7, v6, v5, v10, v9, v8);
  }
}

uint64_t sub_10016AB18()
{
  v1 = *(*v0 + 592);

  return _swift_task_switch(sub_10016AC28, v1, 0);
}

void sub_10016AC28()
{
  v1 = *(v0 + 1112);
  v2 = *(v0 + 1104);
  v3 = *(v0 + 1096);
  v4 = *(v0 + 1088);
  v5 = *(v0 + 1056);
  v6 = *(v0 + 1048);

  sub_10006A178(v4, v3);
  sub_10006A178(v2, v1);
  v7 = *(v6 + 16);
  if (v5 + 1 == v7)
  {
    v8 = *(v0 + 1024);

    v71 = v8;
    v9 = (v8 + 72);
    v10 = -1;
    do
    {
      ++v10;
      v11 = *(v0 + 1040);
      if (v10 == v11)
      {
        break;
      }

      if (v10 >= *(*(v0 + 1024) + 16))
      {
        __break(1u);
LABEL_36:
        __break(1u);
        goto LABEL_37;
      }

      v12 = v9 + 6;
      v13 = *v9;
      v15 = *(v9 - 3);
      v14 = *(v9 - 2);

      sub_100069E2C(v15, v14);
      v16 = v13;
      v17 = sub_10018BCF4(v16, (v0 + 544));

      sub_10006A178(v15, v14);

      v9 = v12;
    }

    while ((v17 & 1) != 0);
    v18 = objc_opt_self();
    v19 = String._bridgeToObjectiveC()();
    v20 = [v18 isAlarmSet:v19];

    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v70 = v22;
      v23 = *(v0 + 616);
      v24 = *(v0 + 608);
      v25 = *(v0 + 600);
      v69 = *(v0 + 592);
      v26 = swift_slowAlloc();
      *v26 = 67109632;
      *(v26 + 4) = v10 == v11;
      *(v26 + 8) = 1024;
      *(v26 + 10) = v20;
      *(v26 + 14) = 2048;
      v27 = OBJC_IVAR____TtC10seserviced16SEKeySyncManager__errorCount;
      swift_beginAccess();
      (*(v24 + 16))(v23, v69 + v27, v25);
      UserDefaultBacked.wrappedValue.getter();
      (*(v24 + 8))(v23, v25);
      *(v26 + 16) = *(v0 + 568);

      _os_log_impl(&_mh_execute_header, v21, v70, "Sync progress -- completed w/ haveAllViewsOnSE %{BOOL}d retryInFlight %{BOOL}d errorCount %ld", v26, 0x18u);
    }

    else
    {
    }

    *(*(v0 + 592) + OBJC_IVAR____TtC10seserviced16SEKeySyncManager_allViewsSynchronized) = v10 == v11;
    if (v10 == v11)
    {
      *(v0 + 243) = 0;
      swift_beginAccess();
      UserDefaultBacked.wrappedValue.setter();
      swift_endAccess();
      if ((v20 & 1) == 0)
      {
        v43 = *(v0 + 616);
        v44 = *(v0 + 608);
        v45 = *(v0 + 600);
        v46 = *(v0 + 592);
        v47 = OBJC_IVAR____TtC10seserviced16SEKeySyncManager__errorCount;
        swift_beginAccess();
        (*(v44 + 16))(v43, v46 + v47, v45);
        UserDefaultBacked.wrappedValue.getter();
        (*(v44 + 8))(v43, v45);
        if (*(v0 + 560) >= 1)
        {
          swift_beginAccess();
          v48 = UserDefaultBacked.wrappedValue.modify();
          if (__OFSUB__(*v49, 1))
          {
            goto LABEL_38;
          }

          --*v49;
          v48(v0 + 368, 0);
          swift_endAccess();
        }
      }
    }

    v50 = (v71 + 72);
    v51 = -1;
    v73 = v0;
    while (1)
    {
      if (++v51 == *(v0 + 1040))
      {
        v62 = *(v0 + 648);

        sub_10018CE30(v62, type metadata accessor for SESPeerIdentityData);
        goto LABEL_32;
      }

      if (v51 >= *(*(v0 + 1024) + 16))
      {
        goto LABEL_36;
      }

      v52 = *(v50 - 3);
      v53 = *(v50 - 2);
      v54 = *v50;

      sub_100069E2C(v52, v53);
      v55 = v54;
      v56 = [v55 viewName];
      v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v59 = v58;

      if (v57 == 0x4354502D4553 && v59 == 0xE600000000000000)
      {
        break;
      }

      v50 += 6;
      v61 = _stringCompareWithSmolCheck(_:_:expecting:)();

      sub_10006A178(v52, v53);

      v0 = v73;
      if (v61)
      {
        goto LABEL_29;
      }
    }

    v63 = v52;
    v0 = v73;
    sub_10006A178(v63, v53);

LABEL_29:

    v64 = *(v0 + 592);
    v65 = OBJC_IVAR____TtC10seserviced16SEKeySyncManager_notifiedPassdOfFidoViewSynced;
    v66 = *(v0 + 688);
    v67 = *(v0 + 648);
    if (*(v64 + OBJC_IVAR____TtC10seserviced16SEKeySyncManager_notifiedPassdOfFidoViewSynced) == 1)
    {
      sub_10018CE30(*(v0 + 648), type metadata accessor for SESPeerIdentityData);
    }

    else
    {
      notify_post("com.apple.seserviced.keysync.fido.tlk.synced");

      sub_10018CE30(v67, type metadata accessor for SESPeerIdentityData);
      *(v64 + v65) = 1;
    }

LABEL_32:

    v68 = *(v0 + 8);

    v68();
  }

  else
  {
    v28 = *(v0 + 1056) + 1;
    *(v0 + 1056) = v28;
    if (v28 >= v7)
    {
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }

    else
    {
      v29 = *(v0 + 744);
      v30 = (*(v0 + 1048) + (v28 << 6));
      v31 = v30[2];
      v32 = v30[3];
      v33 = v30[5];
      *(v0 + 112) = v30[4];
      *(v0 + 128) = v33;
      *(v0 + 80) = v31;
      *(v0 + 96) = v32;
      v34 = *(v0 + 136);
      *(v0 + 1064) = v34;
      v35 = *(v0 + 96);
      v36 = *(v0 + 104);
      *(v0 + 1072) = v35;
      *(v0 + 1080) = v36;
      v37 = *(v0 + 112);
      v38 = *(v0 + 128);
      *(v0 + 328) = v35;
      *(v0 + 336) = v36;
      *(v0 + 344) = v37;
      *(v0 + 360) = v38;
      v72 = *(v0 + 80);
      *(v0 + 1104) = v72;
      *(v0 + 1088) = v37;
      sub_1000938D4(v0 + 80, v0 + 144, &qword_100504340, &qword_10040C460);
      v39 = swift_task_alloc();
      *(v0 + 1120) = v39;
      *v39 = v0;
      v39[1] = sub_10016A95C;
      v40 = *(v0 + 648);
      v41 = *(v0 + 584);
      v42 = *(v0 + 576);

      sub_100178310(v42, v41, v72, *(&v72 + 1), v0 + 328, v34, v40, v29);
    }
  }
}

uint64_t sub_10016B3AC(uint64_t a1)
{
  v2 = v1[88];
  v3 = v1[86];
  sub_10018C6D8();
  swift_allocError();
  *v4 = v2;

  v5 = v1[1];

  return v5();
}

uint64_t sub_10016B45C(uint64_t a1)
{
  v2 = v1[93];
  v3 = v1[86];
  v4 = v1[81];
  sub_10018C6D8();
  swift_allocError();
  *v5 = v2;

  sub_10018CE30(v4, type metadata accessor for SESPeerIdentityData);

  v6 = v1[1];

  return v6();
}

uint64_t sub_10016B544(uint64_t a1)
{
  v2 = *(v1 + 246);
  v3 = *(v1 + 792);
  v4 = *(v1 + 784);
  v5 = *(v1 + 776);
  v6 = *(v1 + 688);
  v7 = *(v1 + 648);
  sub_10018C6D8();
  swift_allocError();
  *v8 = v2;

  sub_10006A178(v5, v4);
  sub_10018CE30(v7, type metadata accessor for SESPeerIdentityData);

  v9 = *(v1 + 8);

  return v9();
}

uint64_t sub_10016B664(uint64_t a1)
{
  v2 = v1[102];
  v3 = v1[86];
  v4 = v1[81];
  sub_10018C6D8();
  swift_allocError();
  *v5 = v2;

  sub_10018CE30(v4, type metadata accessor for SESPeerIdentityData);

  v6 = v1[1];

  return v6();
}

uint64_t sub_10016B74C()
{
  v1 = *(v0 + 648);

  sub_10018CE30(v1, type metadata accessor for SESPeerIdentityData);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10016B804(uint64_t a1)
{
  v2 = v1[109];
  v3 = v1[86];
  v4 = v1[81];
  sub_10018C6D8();
  swift_allocError();
  *v5 = v2;

  sub_10018CE30(v4, type metadata accessor for SESPeerIdentityData);

  v6 = v1[1];

  return v6();
}

uint64_t sub_10016B8EC(uint64_t a1)
{
  v2 = *(v1 + 283);
  v3 = *(v1 + 968);
  v4 = *(v1 + 960);
  v5 = *(v1 + 952);
  v6 = *(v1 + 688);
  v7 = *(v1 + 648);
  sub_10018C6D8();
  swift_allocError();
  *v8 = v2;

  sub_10006A178(v5, v4);

  sub_10018CE30(v7, type metadata accessor for SESPeerIdentityData);

  v9 = *(v1 + 8);

  return v9();
}

uint64_t sub_10016BA0C(uint64_t a1)
{
  v2 = v1[126];
  v3 = v1[86];
  v4 = v1[81];
  sub_10018C6D8();
  swift_allocError();
  *v5 = v2;

  sub_10018CE30(v4, type metadata accessor for SESPeerIdentityData);

  v6 = v1[1];

  return v6();
}

uint64_t sub_10016BAF4()
{
  v1 = *(v0 + 1112);
  v2 = *(v0 + 1104);
  v3 = *(v0 + 1096);
  v4 = *(v0 + 1088);
  v5 = *(v0 + 1064);
  v6 = *(v0 + 648);

  sub_10006A178(v2, v1);

  sub_10006A178(v4, v3);
  sub_10018CE30(v6, type metadata accessor for SESPeerIdentityData);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_10016BBF8(char a1)
{
  *(v2 + 168) = v1;
  *(v2 + 184) = a1;
  return _swift_task_switch(sub_10016BC1C, v1, 0);
}

uint64_t sub_10016BC1C()
{
  v1 = *(v0[21] + OBJC_IVAR____TtC10seserviced16SEKeySyncManager_keychainWrapper);
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_10016BD44;
  v2 = swift_continuation_init();
  v0[17] = sub_100068FC4(&qword_100504F90, &qword_10040C538);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_1001862CC;
  v0[13] = &unk_1004C9610;
  v0[14] = v2;
  [v1 canSyncSEKeys:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10016BD44()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 176) = v2;
  v3 = *(v1 + 168);
  if (v2)
  {
    v4 = sub_10016C090;
  }

  else
  {
    v4 = sub_10016BE64;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10016BE64()
{
  v14 = v0;
  v1 = *(v0 + 160);
  v2 = *(v0 + 144);
  v3 = *(v0 + 152);
  sub_10006A2BC(v3, v1);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();
  sub_10006A2D0(v3, v1);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 67109378;
    *(v6 + 4) = v2;
    *(v6 + 8) = 2080;
    *(v0 + 80) = v3;
    *(v0 + 88) = v1;
    sub_10006A2BC(v3, v1);
    sub_100068FC4(&qword_100502BF0, &qword_100409C88);
    v8 = String.init<A>(describing:)();
    v10 = sub_1002FFA0C(v8, v9, &v13);

    *(v6 + 10) = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "Sync Progress -- canSyncSEKeys %{BOOL}d %s", v6, 0x12u);
    sub_1000752F4(v7);
  }

  if (*(v0 + 184) == 1)
  {
    *(v0 + 144) = v3;
    *(v0 + 152) = v1;
    swift_beginAccess();
    sub_10006A2BC(v3, v1);
    sub_10006A2BC(v3, v1);
    sub_100068FC4(&qword_100504F98, &unk_10040C540);
    UserDefaultBackedOptional.wrappedValue.setter();
    swift_endAccess();
    sub_10006A2D0(v3, v1);
  }

  v11 = *(v0 + 8);

  return v11(v3, v1);
}

uint64_t sub_10016C090(uint64_t a1)
{
  swift_willThrow();
  *(v1 + 80) = 20;
  sub_10018C6D8();
  swift_willThrowTypedImpl();

  v2 = *(v1 + 8);

  return v2(20);
}

uint64_t sub_10016C150()
{
  v1 = objc_opt_self();
  v2 = String._bridgeToObjectiveC()();
  v0[24] = v2;
  v0[2] = v0;
  v0[7] = v0 + 21;
  v0[3] = sub_10016C2A0;
  v3 = swift_continuation_init();
  v0[17] = sub_100068FC4(&qword_100503460, &qword_10040B560);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_1001861F4;
  v0[13] = &unk_1004C95E8;
  v0[14] = v3;
  sub_1003AF710(v1, v2, v0 + 10);

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10016C2A0()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 200) = v2;
  v3 = *(v1 + 184);
  if (v2)
  {
    v4 = sub_10016C42C;
  }

  else
  {
    v4 = sub_10016C3C0;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10016C3C0()
{
  v1 = *(v0 + 168);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_10016C42C(uint64_t a1)
{
  v13 = v1;
  v2 = *(v1 + 192);
  swift_willThrow();

  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136315138;
    swift_getErrorValue();
    v7 = Error.localizedDescription.getter();
    v9 = sub_1002FFA0C(v7, v8, &v12);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failed to get SE : %s", v5, 0xCu);
    sub_1000752F4(v6);
  }

  *(v1 + 80) = 4;
  sub_10018C6D8();
  swift_willThrowTypedImpl();

  v10 = *(v1 + 8);

  return v10(4);
}

uint64_t sub_10016C5E0(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return _swift_task_switch(sub_10016C604, v2, 0);
}

uint64_t sub_10016C604(uint64_t a1)
{
  *(v1 + 40) = OBJC_IVAR____TtC10seserviced16SEKeySyncManager_logger;
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Refreshing SE contents", v4, 2u);
  }

  v5 = swift_task_alloc();
  *(v1 + 48) = v5;
  *v5 = v1;
  v5[1] = sub_10016C71C;

  return sub_1001856F4();
}

uint64_t sub_10016C71C(uint64_t a1)
{
  v3 = a1;
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 56) = a1;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6(v3);
  }

  else
  {
    v8 = *(v4 + 32);

    return _swift_task_switch(sub_10016C870, v8, 0);
  }
}

uint64_t sub_10016C870(uint64_t a1)
{
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Refreshing CK contents", v4, 2u);
  }

  v5 = swift_task_alloc();
  v1[8] = v5;
  *v5 = v1;
  v5[1] = sub_10016C984;
  v6 = v1[3];
  v7 = v1[2];

  return sub_100185AA8(v7, v6);
}

uint64_t sub_10016C984(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 72) = a1;
  *(v4 + 80) = v1;

  v5 = *(v3 + 32);
  if (v1)
  {
    v6 = sub_10016CB90;
  }

  else
  {
    v6 = sub_10016CAB8;
  }

  return _swift_task_switch(v6, v5, 0);
}

void sub_10016CAB8()
{
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[7];
  v4 = *(v0[4] + OBJC_IVAR____TtC10seserviced16SEKeySyncManager_state);
  v5 = swift_task_alloc();
  *(v5 + 16) = v3;
  *(v5 + 24) = v1;
  os_unfair_lock_lock(v4 + 12);
  sub_10018D0B4(&v4[4]);
  os_unfair_lock_unlock(v4 + 12);
  if (!v2)
  {

    v6 = v0[1];
    v7 = v0[9];
    v8 = v0[7];

    v6(v8, v7);
  }
}

uint64_t sub_10016CB90()
{

  v1 = *(v0 + 72);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_10016CBF8(void *a1, void *a2)
{
  v221 = a1;
  v218 = type metadata accessor for SESTLKShareData(0);
  isa = v218[-1].isa;
  __chkstk_darwin(v218);
  v200 = &v185 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v208 = &v185 - v5;
  __chkstk_darwin(v6);
  v211 = &v185 - v7;
  v8 = sub_100068FC4(&qword_100504F80, &qword_10040C510);
  __chkstk_darwin(v8 - 8);
  v207 = &v185 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v214 = &v185 - v11;
  v13 = __chkstk_darwin(v12);
  v15 = &v185 - v14;
  v16 = [a2 casdCertificate];
  v17 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

  v20 = sub_100068FC4(&qword_100504F00, &qword_10040C480);
  v21 = swift_allocObject();
  v202 = xmmword_10040C130;
  *(v21 + 16) = xmmword_10040C130;
  strcpy((v21 + 32), "serialNumber");
  *(v21 + 45) = 0;
  *(v21 + 46) = -5120;
  *(v21 + 48) = 147;
  *(v21 + 56) = 0;
  *(v21 + 64) = 0u;
  *(v21 + 80) = -64;
  *(v21 + 88) = _swiftEmptyArrayStorage;
  strcpy((v21 + 96), "caIdentifier");
  *(v21 + 109) = 0;
  *(v21 + 110) = -5120;
  *(v21 + 112) = 66;
  *(v21 + 120) = 0;
  *(v21 + 128) = 0u;
  *(v21 + 144) = -64;
  *(v21 + 152) = _swiftEmptyArrayStorage;
  *(v21 + 160) = 0xD000000000000011;
  *(v21 + 168) = 0x8000000100464D60;
  *(v21 + 176) = 24352;
  *(v21 + 184) = 0;
  *(v21 + 192) = 0u;
  *(v21 + 208) = -64;
  *(v21 + 216) = _swiftEmptyArrayStorage;
  *(v21 + 224) = 0x656761735579656BLL;
  *(v21 + 232) = 0xE800000000000000;
  *(v21 + 240) = 149;
  *(v21 + 248) = 0;
  *(v21 + 256) = 0u;
  *(v21 + 272) = -64;
  *(v21 + 280) = _swiftEmptyArrayStorage;
  strcpy((v21 + 288), "effectiveDate");
  *(v21 + 302) = -4864;
  *(v21 + 304) = 37;
  *(v21 + 312) = 256;
  *(v21 + 320) = 0u;
  *(v21 + 336) = -64;
  *(v21 + 344) = _swiftEmptyArrayStorage;
  strcpy((v21 + 352), "expirationDate");
  *(v21 + 367) = -18;
  *(v21 + 368) = 24356;
  *(v21 + 376) = 256;
  *(v21 + 384) = 0u;
  *(v21 + 400) = -64;
  *(v21 + 408) = _swiftEmptyArrayStorage;
  *(v21 + 416) = 0x4E4944536163;
  *(v21 + 424) = 0xE600000000000000;
  *(v21 + 432) = 69;
  *(v21 + 440) = 0;
  *(v21 + 448) = 0u;
  *(v21 + 464) = -64;
  *(v21 + 472) = _swiftEmptyArrayStorage;
  *(v21 + 480) = 0xD000000000000011;
  *(v21 + 488) = 0x8000000100464D80;
  *(v21 + 496) = 83;
  *(v21 + 504) = 0;
  *(v21 + 512) = 0u;
  *(v21 + 528) = -64;
  *(v21 + 536) = _swiftEmptyArrayStorage;
  *(v21 + 544) = 0x654B63696C627570;
  *(v21 + 552) = 0xE900000000000079;
  *(v21 + 560) = 32585;
  *(v21 + 568) = 0;
  *(v21 + 576) = 0u;
  *(v21 + 592) = -64;
  *(v21 + 600) = _swiftEmptyArrayStorage;
  v238 = 32545;
  v239 = 0;
  v240 = v21;
  v241 = 0;
  v242 = 64;
  v243 = _swiftEmptyArrayStorage;
  *&v225 = v17;
  *(&v225 + 1) = v19;
  sub_100069E2C(v17, v19);
  v22 = v222;
  v23 = sub_1001A93E0(&v225, &v238);
  if (v22)
  {
    sub_10006A178(v17, v19);

    sub_10006A178(v225, *(&v225 + 1));
    return v24 & 1;
  }

  v193 = 0x8000000100464D80;
  v194 = 0x8000000100464D60;
  v195 = v20;
  v204 = v15;
  v25 = v23;

  sub_10006A178(v225, *(&v225 + 1));
  sub_1002A0074(v25, &v226);
  sub_10006A178(v17, v19);
  v210 = 0;
  v186 = v227;
  v187 = v228;
  sub_100069E2C(v227, v228);
  sub_10018C7D0(&v226);
  v27 = v221;
  v28 = *(v221 + 16);
  v29 = _swiftEmptyArrayStorage;
  if (v28)
  {
    *&v225 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v30 = (v27 + 72);
    v31 = 0xED00006574614465;
    do
    {
      v32 = *v30;
      v30 += 6;
      v33 = v32;
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      --v28;
    }

    while (v28);
    v34 = v225;
  }

  else
  {
    v34 = _swiftEmptyArrayStorage;
    v31 = 0xED00006574614465;
  }

  v35 = 0xEC0000007265626DLL;
  v36 = isa;
  if (v34 >> 62)
  {
    goto LABEL_241;
  }

  v37 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v37)
  {
LABEL_242:

    sub_10006A178(v186, v187);
    v24 = 0;
    return v24 & 1;
  }

LABEL_12:
  v198 = v34;
  v199 = v34 & 0xC000000000000001;
  v191 = v34 + 32;
  v192 = v34 & 0xFFFFFFFFFFFFFF8;
  v213 = (v36 + 56);
  v196 = v37;
  v197 = (v36 + 48);
  v36 = 0;
  while (1)
  {
    if (v199)
    {
      v38 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v36 >= *(v192 + 16))
      {
        goto LABEL_238;
      }

      v38 = *(v191 + 8 * v36);
    }

    v39 = v38;
    v40 = __OFADD__(v36++, 1);
    if (v40)
    {
      __break(1u);
LABEL_230:
      __break(1u);
LABEL_231:
      __break(1u);
LABEL_232:
      __break(1u);
LABEL_233:
      __break(1u);
LABEL_234:
      __break(1u);
LABEL_235:
      __break(1u);
LABEL_236:
      __break(1u);
LABEL_237:
      __break(1u);
LABEL_238:
      __break(1u);
LABEL_239:
      __break(1u);
LABEL_240:
      __break(1u);
LABEL_241:
      v37 = _CocoaArrayWrapper.endIndex.getter();
      if (!v37)
      {
        goto LABEL_242;
      }

      goto LABEL_12;
    }

    v205 = v36;
    v41 = [v38 currentTLK];
    if (v41)
    {
      v42 = v41;
      v43 = [v41 tlkUUID];

      v44 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v219 = v45;
      v220 = v44;
    }

    else
    {
      v219 = 0xF000000000000000;
      v220 = 0;
    }

    v46 = [v39 tlkShares];
    sub_10009393C(0, &qword_100504EF8, SESTLKShare_ptr);
    v34 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v224 = v29;
    v221 = v34;
    if (v34 >> 62)
    {
      break;
    }

    v47 = *((v221 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v206 = v39;
    if (v47)
    {
      goto LABEL_25;
    }

LABEL_90:
    v77 = v29;
LABEL_91:

    v224 = v77;
    if ((v29 & 0x8000000000000000) != 0 || (v29 & 0x4000000000000000) != 0)
    {
      v78 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v78 = *(v29 + 16);
    }

    v217 = v219 >> 60;
    if (v78)
    {
      v39 = 0;
      v221 = v78;
      v222 = (v29 & 0xC000000000000001);
      if (v220)
      {
        v79 = 0;
      }

      else
      {
        v79 = v219 == 0xC000000000000000;
      }

      v80 = !v79;
      LODWORD(v215) = v80;
      v216 = v219 >> 62;
      v81 = __OFSUB__(HIDWORD(v220), v220);
      LODWORD(v203) = v81;
      v201 = HIDWORD(v220) - v220;
      v212 = BYTE6(v219);
      while (1)
      {
        if (v222)
        {
          v85 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v39 >= *(v29 + 16))
          {
            goto LABEL_212;
          }

          v85 = *(v29 + 8 * v39 + 32);
        }

        v35 = v85;
        v31 = v39 + 1;
        if (__OFADD__(v39, 1))
        {
          goto LABEL_211;
        }

        v36 = [v85 tlkUUID];
        v86 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v34 = v87;

        if (v34 >> 60 == 15)
        {
          if (v217 > 0xE)
          {
            sub_10006A2BC(v220, v219);
            goto LABEL_150;
          }
        }

        else if (v217 <= 0xE)
        {
          v88 = v34 >> 62;
          if (v34 >> 62 == 3)
          {
            if (v86)
            {
              v89 = 0;
            }

            else
            {
              v89 = v34 == 0xC000000000000000;
            }

            v91 = !v89 || v216 < 3;
            if (((v91 | v215) & 1) == 0)
            {
              sub_10006A2BC(0, 0xC000000000000000);
              v97 = 0;
              v98 = 0xC000000000000000;
              goto LABEL_149;
            }

            v92 = 0;
LABEL_137:
            v93 = v216;
            if (v216 <= 1)
            {
              goto LABEL_138;
            }

LABEL_130:
            if (v93 == 2)
            {
              v95 = *(v220 + 16);
              v94 = *(v220 + 24);
              v40 = __OFSUB__(v94, v95);
              v96 = v94 - v95;
              if (v40)
              {
                goto LABEL_232;
              }

              goto LABEL_140;
            }

            if (!v92)
            {
LABEL_148:
              v106 = v219;
              v107 = v220;
              sub_10006A2BC(v220, v219);
              v97 = v107;
              v78 = v221;
              v98 = v106;
LABEL_149:
              sub_10006A2D0(v97, v98);
LABEL_150:
              sub_10006A2D0(v86, v34);
LABEL_151:
              specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
              v34 = v224[2];
              specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
              specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              specialized ContiguousArray._endMutation()();
              goto LABEL_106;
            }

LABEL_146:
            v103 = v219;
            v104 = v220;
            sub_10006A2BC(v220, v219);
            v105 = v104;
            v78 = v221;
            sub_10006A2D0(v105, v103);
            sub_10006A2D0(v86, v34);
LABEL_147:

            goto LABEL_106;
          }

          v93 = v216;
          if (v88 <= 1)
          {
            if (v88)
            {
              LODWORD(v92) = HIDWORD(v86) - v86;
              if (__OFSUB__(HIDWORD(v86), v86))
              {
                goto LABEL_236;
              }

              v92 = v92;
              if (v216 <= 1)
              {
                goto LABEL_138;
              }
            }

            else
            {
              v92 = BYTE6(v34);
              if (v216 <= 1)
              {
                goto LABEL_138;
              }
            }

            goto LABEL_130;
          }

          if (v88 == 2)
          {
            v100 = *(v86 + 16);
            v99 = *(v86 + 24);
            v40 = __OFSUB__(v99, v100);
            v92 = v99 - v100;
            if (v40)
            {
              goto LABEL_237;
            }

            goto LABEL_137;
          }

          v92 = 0;
          if (v216 > 1)
          {
            goto LABEL_130;
          }

LABEL_138:
          v101 = v93;
          v96 = v212;
          if (v101)
          {
            v96 = v201;
            if (v203)
            {
              goto LABEL_233;
            }
          }

LABEL_140:
          if (v92 != v96)
          {
            goto LABEL_146;
          }

          if (v92 < 1)
          {
            goto LABEL_148;
          }

          if (v88 > 1)
          {
            if (v88 == 2)
            {
              v108 = *(v86 + 16);
              v189 = *(v86 + 24);
              v190 = v108;
              sub_10006A2BC(v220, v219);
              sub_100069E2C(v86, v34);
              v36 = v34 & 0x3FFFFFFFFFFFFFFFLL;
              v109 = __DataStorage._bytes.getter();
              if (v109)
              {
                v188 = v109;
                v36 = v34 & 0x3FFFFFFFFFFFFFFFLL;
                v110 = __DataStorage._offset.getter();
                v111 = v190;
                if (__OFSUB__(v190, v110))
                {
                  __break(1u);
LABEL_244:
                  __break(1u);
                }

                v188 += &v190[-v110];
              }

              else
              {
                v188 = 0;
                v111 = v190;
              }

              v190 = (v189 - v111);
              if (__OFSUB__(v189, v111))
              {
                goto LABEL_240;
              }

              __DataStorage._length.getter();
              v116 = v188;
              goto LABEL_172;
            }

            *(&v225 + 6) = 0;
            *&v225 = 0;
            v102 = v219;
            sub_10006A2BC(v220, v219);
            sub_100069E2C(v86, v34);
LABEL_166:
            v114 = v210;
            sub_10019F024(&v225, v220, v102, &v223);
            v210 = v114;
            sub_10006A178(v86, v34);
            sub_10006A2D0(v220, v102);
            v115 = v223;
          }

          else
          {
            if (!v88)
            {
              *&v225 = v86;
              WORD4(v225) = v34;
              BYTE10(v225) = BYTE2(v34);
              BYTE11(v225) = BYTE3(v34);
              BYTE12(v225) = BYTE4(v34);
              BYTE13(v225) = BYTE5(v34);
              v190 = &v225 + BYTE6(v34);
              v102 = v219;
              sub_10006A2BC(v220, v219);
              sub_100069E2C(v86, v34);
              goto LABEL_166;
            }

            v189 = v86;
            v190 = ((v86 >> 32) - v86);
            if (v86 >> 32 < v86)
            {
              goto LABEL_239;
            }

            sub_10006A2BC(v220, v219);
            sub_100069E2C(v86, v34);
            v112 = __DataStorage._bytes.getter();
            if (v112)
            {
              v188 = v112;
              v113 = __DataStorage._offset.getter();
              if (__OFSUB__(v189, v113))
              {
                goto LABEL_244;
              }

              v189 = v189 - v113 + v188;
            }

            else
            {
              v189 = 0;
            }

            __DataStorage._length.getter();
            v116 = v189;
LABEL_172:
            v117 = v219;
            v118 = v210;
            sub_10019F024(v116, v220, v219, &v225);
            v210 = v118;
            sub_10006A178(v86, v34);
            sub_10006A2D0(v220, v117);
            v115 = v225;
          }

          sub_10006A2D0(v86, v34);
          if (v115)
          {
            goto LABEL_151;
          }

          goto LABEL_147;
        }

        v82 = v219;
        v83 = v220;
        sub_10006A2BC(v220, v219);

        sub_10006A2D0(v86, v34);
        v84 = v83;
        v78 = v221;
        sub_10006A2D0(v84, v82);
LABEL_106:
        ++v39;
        v79 = v31 == v78;
        v31 = 0xED00006574614465;
        v35 = 0xEC0000007265626DLL;
        if (v79)
        {
          v39 = v224;
          goto LABEL_178;
        }
      }
    }

    v39 = _swiftEmptyArrayStorage;
LABEL_178:

    if ((v39 & 0x8000000000000000) != 0 || (v39 & 0x4000000000000000) != 0)
    {
      v119 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v119 = *(v39 + 16);
    }

    v34 = v210;
    if (v119)
    {
      v120 = 0;
      v216 = v39 & 0xC000000000000001;
      v221 = _swiftEmptyArrayStorage;
      v215 = v39;
      v212 = v119;
      while (1)
      {
        if (v216)
        {
          v121 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v120 >= *(v39 + 16))
          {
            goto LABEL_214;
          }

          v121 = *(v39 + 8 * v120 + 32);
        }

        v122 = v121;
        if (__OFADD__(v120, 1))
        {
          break;
        }

        v222 = (v120 + 1);
        type metadata accessor for PropertyListDecoder();
        swift_allocObject();
        PropertyListDecoder.init()();
        v123 = [v122 shareData];
        v124 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v126 = v125;

        sub_100188AF0(&qword_100504F40, type metadata accessor for SESTLKShareData, &unk_10040DF84);
        v127 = v214;
        v128 = v218;
        dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
        if (v34)
        {

          sub_10006A178(v124, v126);

          (*v213)(v127, 1, 1, v128);
          sub_100075768(v127, &qword_100504F80, &qword_10040C510);
          v34 = 0;
          v31 = 0xED00006574614465;
          v35 = 0xEC0000007265626DLL;
          v39 = v215;
        }

        else
        {
          v34 = 0;
          sub_10006A178(v124, v126);

          (*v213)(v127, 0, 1, v128);
          sub_10018CF04(v127, v211, type metadata accessor for SESTLKShareData);
          v129 = v221;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v129 = sub_10012F8D4(0, v129[2] + 1, 1, v129);
          }

          v31 = 0xED00006574614465;
          v39 = v215;
          v131 = v129[2];
          v130 = v129[3];
          v221 = v129;
          if (v131 >= v130 >> 1)
          {
            v221 = sub_10012F8D4((v130 > 1), v131 + 1, 1, v221);
          }

          v132 = v221;
          *(v221 + 16) = v131 + 1;
          sub_10018CF04(v211, v132 + ((*(isa + 80) + 32) & ~*(isa + 80)) + *(isa + 9) * v131, type metadata accessor for SESTLKShareData);
          v35 = 0xEC0000007265626DLL;
        }

        ++v120;
        if (v222 == v212)
        {
          goto LABEL_197;
        }
      }

LABEL_213:
      __break(1u);
LABEL_214:
      __break(1u);
LABEL_215:
      __break(1u);
LABEL_216:
      __break(1u);
LABEL_217:

      v149 = OBJC_IVAR____TtC10seserviced16SEKeySyncManager_logger;
      v150 = v186;
      sub_100069E2C(v186, v187);
      v31 = v219;
      v151 = v220;
      sub_10006A2BC(v220, v219);
      sub_100069E2C(v35, v39);
      v222 = v149;
      v36 = Logger.logObject.getter();
      v152 = static os_log_type_t.error.getter();
      sub_10006A2D0(v151, v31);
      sub_10006A178(v35, v39);
      sub_10006A178(v150, v187);
      LODWORD(v221) = v152;
      if (!os_log_type_enabled(v36, v152))
      {
        goto LABEL_222;
      }

      v218 = v36;
      v153 = swift_slowAlloc();
      v216 = swift_slowAlloc();
      *&v225 = v216;
      *v153 = 136315650;
      if (v217 <= 0xE)
      {
        v156 = v210;
        v224 = sub_100288788(v220, v31);
        sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
        sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0, &protocol conformance descriptor for [A]);
        v158 = BidirectionalCollection<>.joined(separator:)();
        v154 = v159;

        v155 = v158;
      }

      else
      {
        v154 = 0xE300000000000000;
        v155 = 7104878;
        v156 = v210;
      }

      v160 = sub_1002FFA0C(v155, v154, &v225);

      *(v153 + 4) = v160;
      *(v153 + 12) = 2080;
      v161 = sub_100288788(v35, v39);
      v217 = v156;
      v224 = v161;
      sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
      sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0, &protocol conformance descriptor for [A]);
      v162 = BidirectionalCollection<>.joined(separator:)();
      v164 = v163;

      v165 = sub_1002FFA0C(v162, v164, &v225);

      *(v153 + 14) = v165;
      *(v153 + 22) = 2080;
      v166 = v217;
      v167 = sub_100288788(v186, v187);
      v210 = v166;
      v224 = v167;
      v168 = BidirectionalCollection<>.joined(separator:)();
      v170 = v169;

      v171 = sub_1002FFA0C(v168, v170, &v225);

      *(v153 + 24) = v171;
      v172 = v218;
      _os_log_impl(&_mh_execute_header, v218, v221, "Found self share for UUID %s with CASDCA %s != myCASDCA %s", v153, 0x20u);
      swift_arrayDestroy();

      v157 = v208;
      v34 = v200;
      v31 = v219;
      goto LABEL_225;
    }

    v221 = _swiftEmptyArrayStorage;
LABEL_197:
    v210 = v34;

    if (*(v221 + 16))
    {
      v133 = v204;
      sub_10018D04C(v221 + ((*(isa + 80) + 32) & ~*(isa + 80)), v204, type metadata accessor for SESTLKShareData);
      v134 = 0;
    }

    else
    {
      v134 = 1;
      v133 = v204;
    }

    v135 = v134;
    v136 = v218;
    (*v213)(v133, v135, 1, v218);
    v137 = v207;
    sub_1000938D4(v133, v207, &qword_100504F80, &qword_10040C510);
    if ((*v197)(v137, 1, v136) == 1)
    {
      sub_100075768(v133, &qword_100504F80, &qword_10040C510);
      sub_10006A2D0(v220, v219);

      sub_100075768(v137, &qword_100504F80, &qword_10040C510);
      v29 = _swiftEmptyArrayStorage;
    }

    else
    {
      v138 = v208;
      sub_10018CF04(v137, v208, type metadata accessor for SESTLKShareData);
      v139 = *(v138 + 48);
      v140 = *(v138 + 56);
      v141 = swift_allocObject();
      *(v141 + 104) = v35 + 1785;
      *(v141 + 16) = v202;
      *(v141 + 32) = 0x754E6C6169726573;
      *(v141 + 40) = v35;
      *(v141 + 48) = 147;
      *(v141 + 56) = 0;
      *(v141 + 64) = 0u;
      *(v141 + 80) = -64;
      *(v141 + 88) = _swiftEmptyArrayStorage;
      *(v141 + 96) = 0x69746E6564496163;
      *(v141 + 112) = 66;
      *(v141 + 120) = 0;
      *(v141 + 128) = 0u;
      *(v141 + 144) = -64;
      *(v141 + 152) = _swiftEmptyArrayStorage;
      *(v141 + 160) = 0xD000000000000011;
      *(v141 + 168) = v194;
      *(v141 + 176) = 24352;
      *(v141 + 184) = 0;
      *(v141 + 192) = 0u;
      *(v141 + 208) = -64;
      *(v141 + 216) = _swiftEmptyArrayStorage;
      *(v141 + 224) = 0x656761735579656BLL;
      *(v141 + 232) = 0xE800000000000000;
      *(v141 + 240) = 149;
      *(v141 + 248) = 0;
      *(v141 + 256) = 0u;
      *(v141 + 272) = -64;
      *(v141 + 280) = _swiftEmptyArrayStorage;
      *(v141 + 288) = 0x7669746365666665;
      *(v141 + 296) = v31;
      *(v141 + 304) = 37;
      *(v141 + 312) = 256;
      *(v141 + 320) = 0u;
      *(v141 + 336) = -64;
      *(v141 + 344) = _swiftEmptyArrayStorage;
      strcpy((v141 + 352), "expirationDate");
      *(v141 + 367) = -18;
      v29 = _swiftEmptyArrayStorage;
      *(v141 + 368) = 24356;
      *(v141 + 376) = 256;
      *(v141 + 384) = 0u;
      *(v141 + 400) = -64;
      *(v141 + 408) = _swiftEmptyArrayStorage;
      *(v141 + 416) = 0x4E4944536163;
      *(v141 + 424) = 0xE600000000000000;
      *(v141 + 432) = 69;
      *(v141 + 440) = 0;
      *(v141 + 448) = 0u;
      *(v141 + 464) = -64;
      *(v141 + 472) = _swiftEmptyArrayStorage;
      *(v141 + 480) = 0xD000000000000011;
      *(v141 + 488) = v193;
      *(v141 + 496) = 83;
      *(v141 + 504) = 0;
      *(v141 + 512) = 0u;
      *(v141 + 528) = -64;
      *(v141 + 536) = _swiftEmptyArrayStorage;
      *(v141 + 544) = 0x654B63696C627570;
      *(v141 + 552) = 0xE900000000000079;
      *(v141 + 560) = 32585;
      *(v141 + 568) = 0;
      *(v141 + 576) = 0u;
      *(v141 + 592) = -64;
      *(v141 + 600) = _swiftEmptyArrayStorage;
      v232 = 32545;
      v233 = 0;
      v234 = v141;
      v235 = 0;
      v236 = 64;
      v237 = _swiftEmptyArrayStorage;
      *&v225 = v139;
      *(&v225 + 1) = v140;
      sub_100069E2C(v139, v140);
      v142 = v210;
      v143 = sub_1001A93E0(&v225, &v232);
      if (v142)
      {

        sub_10006A2D0(v220, v219);
        sub_10006A178(v225, *(&v225 + 1));
        sub_100075768(v204, &qword_100504F80, &qword_10040C510);
        v210 = 0;
        v146 = v208;
      }

      else
      {
        v144 = v143;

        sub_10006A178(v225, *(&v225 + 1));
        sub_1002A0074(v144, &v229);
        v145 = v206;
        v210 = 0;
        v35 = v230;
        v39 = v231;
        sub_100069E2C(v230, v231);
        sub_10018C7D0(&v229);
        v147 = sub_10008FB4C(v35, v39, v186, v187);
        v148 = v208;
        v34 = v200;
        if (!v147)
        {
          goto LABEL_217;
        }

        sub_100075768(v204, &qword_100504F80, &qword_10040C510);

        sub_10006A178(v35, v39);
        sub_10006A2D0(v220, v219);
        v146 = v148;
        v35 = 0xEC0000007265626DLL;
      }

      sub_10018CE30(v146, type metadata accessor for SESTLKShareData);
    }

    v34 = v198;
    v36 = v205;
    if (v205 == v196)
    {
      goto LABEL_242;
    }
  }

  v47 = _CocoaArrayWrapper.endIndex.getter();
  v206 = v39;
  if (!v47)
  {
    goto LABEL_90;
  }

LABEL_25:
  v29 = 0;
  v216 = v221 & 0xFFFFFFFFFFFFFF8;
  v217 = v221 & 0xC000000000000001;
  v215 = v47;
  while (1)
  {
    if (v217)
    {
      v49 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v50 = (v29 + 1);
      if (__OFADD__(v29, 1))
      {
        goto LABEL_209;
      }
    }

    else
    {
      if (v29 >= *(v216 + 16))
      {
        goto LABEL_210;
      }

      v49 = *(v221 + 8 * v29 + 32);
      v50 = (v29 + 1);
      if (__OFADD__(v29, 1))
      {
LABEL_209:
        __break(1u);
LABEL_210:
        __break(1u);
LABEL_211:
        __break(1u);
LABEL_212:
        __break(1u);
        goto LABEL_213;
      }
    }

    v222 = v50;
    v35 = v49;
    v51 = [v35 sourcePeerIdentifier];
    v52 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v34 = v53;

    v36 = [v35 targetPeerIdentifier];
    v31 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v39 = v54;

    v55 = v34 >> 62;
    v56 = v39 >> 62;
    if (v34 >> 62 == 3)
    {
      v57 = 0;
      if (!v52 && v34 == 0xC000000000000000 && v39 >> 62 == 3)
      {
        v57 = 0;
        if (!v31 && v39 == 0xC000000000000000)
        {
          sub_10006A178(0, 0xC000000000000000);
          v58 = 0;
          v59 = 0xC000000000000000;
          goto LABEL_60;
        }
      }

LABEL_48:
      if (v56 > 1)
      {
        goto LABEL_42;
      }

      goto LABEL_49;
    }

    if (v55 <= 1)
    {
      break;
    }

    if (v55 == 2)
    {
      v64 = *(v52 + 16);
      v63 = *(v52 + 24);
      v40 = __OFSUB__(v63, v64);
      v57 = v63 - v64;
      if (v40)
      {
        goto LABEL_221;
      }

      goto LABEL_48;
    }

    v57 = 0;
    if (v56 > 1)
    {
LABEL_42:
      if (v56 != 2)
      {
        if (!v57)
        {
          goto LABEL_59;
        }

        goto LABEL_27;
      }

      v61 = *(v31 + 16);
      v60 = *(v31 + 24);
      v40 = __OFSUB__(v60, v61);
      v62 = v60 - v61;
      if (v40)
      {
        goto LABEL_216;
      }

      goto LABEL_51;
    }

LABEL_49:
    if (!v56)
    {
      v62 = BYTE6(v39);
LABEL_51:
      if (v57 == v62)
      {
        goto LABEL_55;
      }

      goto LABEL_27;
    }

    if (__OFSUB__(HIDWORD(v31), v31))
    {
      goto LABEL_215;
    }

    if (v57 == HIDWORD(v31) - v31)
    {
LABEL_55:
      if (v57 >= 1)
      {
        if (v55 > 1)
        {
          if (v55 == 2)
          {
            v65 = *(v52 + 16);
            v212 = *(v52 + 24);
            v36 = v34 & 0x3FFFFFFFFFFFFFFFLL;
            v66 = __DataStorage._bytes.getter();
            if (v66)
            {
              v203 = v66;
              v36 = v34 & 0x3FFFFFFFFFFFFFFFLL;
              v67 = __DataStorage._offset.getter();
              if (__OFSUB__(v65, v67))
              {
                goto LABEL_234;
              }

              v68 = v65 - v67 + v203;
            }

            else
            {
              v68 = 0;
            }

            if (__OFSUB__(v212, v65))
            {
              goto LABEL_231;
            }

            v212 = v68;
            __DataStorage._length.getter();
            v75 = v212;
            goto LABEL_81;
          }

          *(&v225 + 6) = 0;
          *&v225 = 0;
LABEL_75:
          v73 = v210;
          sub_10019F024(&v225, v31, v39, &v223);
          v210 = v73;
          sub_10006A178(v31, v39);
          sub_10006A178(v52, v34);

          v74 = v223;
        }

        else
        {
          if (!v55)
          {
            *&v225 = v52;
            WORD4(v225) = v34;
            BYTE10(v225) = BYTE2(v34);
            BYTE11(v225) = BYTE3(v34);
            BYTE12(v225) = BYTE4(v34);
            BYTE13(v225) = BYTE5(v34);
            goto LABEL_75;
          }

          if (v52 >> 32 < v52)
          {
            goto LABEL_230;
          }

          v203 = v52;
          v212 = (v52 >> 32) - v52;
          v69 = __DataStorage._bytes.getter();
          if (v69)
          {
            v70 = v69;
            v36 = v34 & 0x3FFFFFFFFFFFFFFFLL;
            v71 = __DataStorage._offset.getter();
            if (__OFSUB__(v203, v71))
            {
              goto LABEL_235;
            }

            v72 = v203 - v71 + v70;
          }

          else
          {
            v72 = 0;
          }

          __DataStorage._length.getter();
          v75 = v72;
LABEL_81:
          v76 = v210;
          sub_10019F024(v75, v31, v39, &v225);
          v210 = v76;
          sub_10006A178(v31, v39);
          sub_10006A178(v52, v34);

          v74 = v225;
        }

        v31 = 0xED00006574614465;
        v48 = v215;
        v39 = v222;
        if (!v74)
        {

          goto LABEL_28;
        }

LABEL_83:
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v34 = v224[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        goto LABEL_28;
      }

LABEL_59:
      sub_10006A178(v31, v39);
      v58 = v52;
      v59 = v34;
LABEL_60:
      sub_10006A178(v58, v59);

      v31 = 0xED00006574614465;
      v48 = v215;
      v39 = v222;
      goto LABEL_83;
    }

LABEL_27:
    sub_10006A178(v31, v39);
    sub_10006A178(v52, v34);

    v31 = 0xED00006574614465;
    v48 = v215;
    v39 = v222;
LABEL_28:
    ++v29;
    v35 = 0xEC0000007265626DLL;
    if (v39 == v48)
    {
      v29 = v224;
      v77 = _swiftEmptyArrayStorage;
      goto LABEL_91;
    }
  }

  if (!v55)
  {
    v57 = BYTE6(v34);
    if (v56 > 1)
    {
      goto LABEL_42;
    }

    goto LABEL_49;
  }

  LODWORD(v57) = HIDWORD(v52) - v52;
  if (!__OFSUB__(HIDWORD(v52), v52))
  {
    v57 = v57;
    if (v56 > 1)
    {
      goto LABEL_42;
    }

    goto LABEL_49;
  }

  __break(1u);
LABEL_221:
  __break(1u);
LABEL_222:

  v157 = v208;
LABEL_225:
  sub_10018D04C(v157, v34, type metadata accessor for SESTLKShareData);
  v173 = v34;
  v174 = Logger.logObject.getter();
  v175 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v174, v175))
  {
    v176 = swift_slowAlloc();
    v177 = v173;
    v221 = swift_slowAlloc();
    *&v225 = v221;
    *v176 = 136315138;
    v178 = sub_100289B6C();
    v219 = v31;
    v179 = v178;
    v181 = v180;
    v222 = type metadata accessor for SESTLKShareData;
    sub_10018CE30(v177, type metadata accessor for SESTLKShareData);
    v182 = sub_1002FFA0C(v179, v181, &v225);

    *(v176 + 4) = v182;
    _os_log_impl(&_mh_execute_header, v174, v175, "Offending peer is %s", v176, 0xCu);
    sub_1000752F4(v221);

    sub_10006A178(v186, v187);
    sub_10006A178(v35, v39);
    sub_10006A2D0(v220, v219);
    sub_100075768(v204, &qword_100504F80, &qword_10040C510);
    v183 = v208;
    v184 = v222;
  }

  else
  {

    sub_10006A178(v186, v187);
    sub_10006A178(v35, v39);
    sub_10006A2D0(v220, v31);
    sub_10018CE30(v173, type metadata accessor for SESTLKShareData);
    sub_100075768(v204, &qword_100504F80, &qword_10040C510);
    v183 = v157;
    v184 = type metadata accessor for SESTLKShareData;
  }

  sub_10018CE30(v183, v184);
  v24 = 1;
  return v24 & 1;
}

uint64_t sub_10016EA88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[15] = v4;
  v5[16] = a4;
  v5[13] = a2;
  v5[14] = a3;
  v5[12] = a1;
  v6 = sub_100068FC4(&qword_100504F78, &qword_10040C508);
  v5[17] = v6;
  v5[18] = *(v6 - 8);
  v5[19] = swift_task_alloc();
  sub_100068FC4(&qword_100504EF0, &unk_10040C470);
  v5[20] = swift_task_alloc();
  v5[21] = swift_task_alloc();
  v5[22] = swift_task_alloc();
  v7 = type metadata accessor for SESPeerIdentityData(0);
  v5[23] = v7;
  v5[24] = *(v7 - 8);
  v5[25] = swift_task_alloc();
  v5[26] = swift_task_alloc();
  v5[27] = swift_task_alloc();
  v5[28] = swift_task_alloc();
  v5[29] = swift_task_alloc();
  v8 = swift_task_alloc();
  v5[30] = v8;
  *v8 = v5;
  v8[1] = sub_10016EC64;

  return sub_10016C130();
}

uint64_t sub_10016EC64(uint64_t a1)
{
  v3 = a1;
  v4 = *v2;
  v4[31] = a1;
  v4[32] = v1;

  if (v1)
  {
    v5 = v4[16];

    *v5 = v3;
    v6 = v4[1];

    return v6();
  }

  else
  {
    v8 = v4[15];

    return _swift_task_switch(sub_10016EE34, v8, 0);
  }
}

uint64_t sub_10016EE34()
{
  v70 = v0;
  v1 = *(v0 + 256);
  v2 = sub_10017FB60(*(v0 + 248), *(v0 + 104), *(v0 + 112));
  v4 = v2;
  if (v1)
  {

    v67 = v4;
    goto LABEL_21;
  }

  v65 = v2;
  v66 = v3;
  v6 = *(v0 + 184);
  v5 = *(v0 + 192);
  v7 = *(v0 + 176);
  v9 = *(v0 + 144);
  v8 = *(v0 + 152);
  v10 = *(v0 + 136);
  v11 = *(v0 + 120);
  v12 = OBJC_IVAR____TtC10seserviced16SEKeySyncManager__cachedLocalIdentity;
  swift_beginAccess();
  (*(v9 + 16))(v8, v11 + v12, v10);
  UserDefaultBackedCodableOptional.wrappedValue.getter();
  (*(v9 + 8))(v8, v10);
  if ((*(v5 + 48))(v7, 1, v6) == 1)
  {
    sub_100075768(*(v0 + 176), &qword_100504EF0, &unk_10040C470);
  }

  else
  {
    v13 = *(v0 + 232);
    sub_10018CF04(*(v0 + 176), v13, type metadata accessor for SESPeerIdentityData);
    v14 = v66;
    v15 = sub_10008FB4C(*v13, *(v13 + 8), v65, v66);
    v16 = *(v0 + 232);
    if (v15)
    {
      v17 = *(v0 + 224);
      v18 = *(v0 + 96);
      sub_10018D04C(v16, v18, type metadata accessor for SESPeerIdentityData);
      sub_10018D04C(v18, v17, type metadata accessor for SESPeerIdentityData);
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.info.getter();
      v21 = os_log_type_enabled(v19, v20);
      v22 = *(v0 + 224);
      if (v21)
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v69[0] = v24;
        *v23 = 136315138;
        v25 = sub_100289B6C();
        v27 = v26;
        sub_10018CE30(v22, type metadata accessor for SESPeerIdentityData);
        v28 = sub_1002FFA0C(v25, v27, v69);

        *(v23 + 4) = v28;
        _os_log_impl(&_mh_execute_header, v19, v20, "Using cached identity for %s", v23, 0xCu);
        sub_1000752F4(v24);
        v14 = v66;
      }

      else
      {

        sub_10018CE30(v22, type metadata accessor for SESPeerIdentityData);
      }

      v44 = v65;
      sub_10018CE30(*(v0 + 232), type metadata accessor for SESPeerIdentityData);
      goto LABEL_15;
    }

    sub_10018CE30(v16, type metadata accessor for SESPeerIdentityData);
  }

  sub_10017FD44(*(v0 + 248), (v0 + 264), *(v0 + 216));
  v68 = *(v0 + 208);
  v29 = *(v0 + 184);
  v30 = *(v0 + 192);
  v32 = *(v0 + 160);
  v31 = *(v0 + 168);
  v33 = *(v0 + 96);
  sub_10018CF04(*(v0 + 216), v33, type metadata accessor for SESPeerIdentityData);
  sub_10018D04C(v33, v31, type metadata accessor for SESPeerIdentityData);
  (*(v30 + 56))(v31, 0, 1, v29);
  sub_1000938D4(v31, v32, &qword_100504EF0, &unk_10040C470);
  swift_beginAccess();
  UserDefaultBackedCodableOptional.wrappedValue.setter();
  swift_endAccess();
  sub_100075768(v31, &qword_100504EF0, &unk_10040C470);
  sub_10018D04C(v33, v68, type metadata accessor for SESPeerIdentityData);
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.info.getter();
  v36 = os_log_type_enabled(v34, v35);
  v37 = *(v0 + 208);
  if (v36)
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v69[0] = v39;
    *v38 = 136315138;
    v40 = sub_100289B6C();
    v42 = v41;
    sub_10018CE30(v37, type metadata accessor for SESPeerIdentityData);
    v43 = sub_1002FFA0C(v40, v42, v69);

    *(v38 + 4) = v43;
    _os_log_impl(&_mh_execute_header, v34, v35, "Created & cached device identity for %s", v38, 0xCu);
    sub_1000752F4(v39);
  }

  else
  {

    sub_10018CE30(v37, type metadata accessor for SESPeerIdentityData);
  }

  v44 = v65;
  v14 = v66;
LABEL_15:
  if (sub_100180030(*(v0 + 96), *(v0 + 104), *(v0 + 112), v44, v14))
  {
    sub_10018D04C(*(v0 + 96), *(v0 + 200), type metadata accessor for SESPeerIdentityData);
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.info.getter();
    v47 = os_log_type_enabled(v45, v46);
    v48 = *(v0 + 248);
    v49 = *(v0 + 200);
    if (v47)
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v69[0] = v51;
      *v50 = 136315138;
      v52 = sub_100289B6C();
      v54 = v53;
      sub_10018CE30(v49, type metadata accessor for SESPeerIdentityData);
      v55 = sub_1002FFA0C(v52, v54, v69);

      *(v50 + 4) = v55;
      _os_log_impl(&_mh_execute_header, v45, v46, "Got SE identity: %s", v50, 0xCu);
      sub_1000752F4(v51);

      sub_10006A178(v44, v66);
    }

    else
    {
      sub_10006A178(v44, v14);

      sub_10018CE30(v49, type metadata accessor for SESPeerIdentityData);
    }

    v63 = *(v0 + 8);
    goto LABEL_22;
  }

  v56 = Logger.logObject.getter();
  v57 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    *v58 = 0;
    _os_log_impl(&_mh_execute_header, v56, v57, "DSID mismatch!", v58, 2u);
  }

  v59 = *(v0 + 248);

  sub_1001A44E0(v59);
  v60 = *(v0 + 248);
  v61 = *(v0 + 96);
  v67 = 29;
  *(v0 + 265) = 29;
  sub_10018C6D8();
  swift_willThrowTypedImpl();
  sub_10006A178(v44, v14);

  sub_10018CE30(v61, type metadata accessor for SESPeerIdentityData);
LABEL_21:
  v62 = *(v0 + 128);

  *v62 = v67;
  v63 = *(v0 + 8);
LABEL_22:

  return v63();
}

uint64_t sub_10016F7E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[72] = v3;
  v4[71] = a3;
  v4[70] = a2;
  v4[69] = a1;
  v4[73] = type metadata accessor for SESPeerIdentityData(0);
  v4[74] = swift_task_alloc();

  return _swift_task_switch(sub_10016F888, v3, 0);
}

uint64_t sub_10016F888()
{
  v1 = *(v0[72] + OBJC_IVAR____TtC10seserviced16SEKeySyncManager_keychainWrapper);
  v0[75] = v1;
  isa = Data._bridgeToObjectiveC()().super.isa;
  v0[76] = isa;
  v0[2] = v0;
  v0[7] = v0 + 50;
  v0[3] = sub_10016F9D4;
  v3 = swift_continuation_init();
  v0[33] = sub_100068FC4(&qword_100504F68, &unk_10040C4F8);
  v0[26] = _NSConcreteStackBlock;
  v0[27] = 1107296256;
  v0[28] = sub_100180E2C;
  v0[29] = &unk_1004C9548;
  v0[30] = v3;
  [v1 getSEPeerIdentityInfo:isa withCompletion:v0 + 26];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10016F9D4()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 616) = v2;
  v3 = *(v1 + 576);
  if (v2)
  {
    v4 = sub_100170B48;
  }

  else
  {
    v4 = sub_10016FAF4;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10016FAF4()
{
  v45 = v0;
  v1 = v0[76];
  v2 = v0[50];
  v3 = v0[51];
  v0[78] = v2;
  v0[79] = v3;
  v4 = v0[52];
  v0[80] = v4;

  v0[81] = OBJC_IVAR____TtC10seserviced16SEKeySyncManager_logger;

  sub_10006A2BC(v2, v3);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();
  sub_10006A2D0(v2, v3);
  v7 = v3 >> 60;
  if (os_log_type_enabled(v5, v6))
  {
    v40 = v6;
    v8 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v42 = v39;
    *v8 = 136315394;
    if (v3 >> 60 == 15)
    {
      v9 = 0;
      v10 = 0;
    }

    else
    {
      sub_100069E2C(v2, v3);
      sub_100288640(4, v2, v3, &v43);
      v37 = v44;
      v38 = v43;
      v0[68] = sub_100288788(v43, v44);
      sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
      sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0, &protocol conformance descriptor for [A]);
      v9 = BidirectionalCollection<>.joined(separator:)();
      v10 = v11;
      sub_10006A178(v38, v37);
      v7 = v3 >> 60;
    }

    v0[62] = v9;
    v0[63] = v10;
    sub_100068FC4(&qword_1005048A0, &qword_100409C80);
    v12 = String.init<A>(describing:)();
    v14 = sub_1002FFA0C(v12, v13, &v42);

    *(v8 + 4) = v14;
    *(v8 + 12) = 2048;
    if (v4 >> 62)
    {
      v15 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v15 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v8 + 14) = v15;

    _os_log_impl(&_mh_execute_header, v5, v40, "Got local KC peer identifier %s and %ld other peers", v8, 0x16u);
    sub_1000752F4(v39);
  }

  else
  {
    swift_bridgeObjectRelease_n();
  }

  v0[82] = 0;
  v16 = v0[71];
  v17 = *v16;
  v0[83] = *v16;
  v18 = v16[1];
  v0[84] = v18;
  if (v7 <= 0xE)
  {
    if (v18 >> 60 != 15)
    {
      sub_10006A2BC(v2, v3);
      sub_100069E2C(v17, v18);
      sub_10006A2BC(v2, v3);
      sub_100069E2C(v17, v18);
      v23 = sub_10008FB4C(v2, v3, v17, v18);
      sub_10006A178(v17, v18);
      sub_10006A2D0(v2, v3);
      sub_10006A2D0(v17, v18);
      sub_10006A2D0(v2, v3);
      if (v23)
      {
        goto LABEL_16;
      }

      goto LABEL_19;
    }
  }

  else if (v18 >> 60 == 15)
  {
    sub_100069E2C(v17, v18);
LABEL_16:
    sub_10006A2D0(v2, v3);
    v24 = v0[80];

    v25 = v0[1];

    return v25(v24);
  }

  sub_10006A2BC(v2, v3);
  sub_100069E2C(v17, v18);
  sub_10006A2D0(v2, v3);
  sub_10006A2D0(v17, v18);
  if (v7 <= 0xE)
  {
LABEL_19:
    v31 = v0 + 18;
    v27 = v0[75];
    sub_100069E2C(v2, v3);
    isa = Data._bridgeToObjectiveC()().super.isa;
    v0[85] = isa;
    v29 = Data._bridgeToObjectiveC()().super.isa;
    v0[86] = v29;
    v0[18] = v0;
    v0[19] = sub_10017024C;
    v30 = swift_continuation_init();
    v0[49] = sub_100068FC4(&unk_100504290, &qword_10040B5A8);
    v0[42] = _NSConcreteStackBlock;
    v0[43] = 1107296256;
    v0[44] = sub_1001E95B0;
    v0[45] = &unk_1004C9598;
    v0[46] = v30;
    [v27 removeLocalSEPeerIdentity:isa altDSID:v29 completion:v0 + 42];
    goto LABEL_20;
  }

  v19 = Data._bridgeToObjectiveC()().super.isa;
  type metadata accessor for PropertyListEncoder();
  swift_allocObject();
  PropertyListEncoder.init()();
  sub_100188AF0(&qword_100504E28, type metadata accessor for SESPeerIdentityData, &unk_10040DF5C);
  v20 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v22 = v21;

  v31 = v0 + 10;
  v41 = v0[75];
  v32 = objc_opt_self();
  v33 = Data._bridgeToObjectiveC()().super.isa;
  sub_10006A178(v20, v22);
  v34 = [v32 withPeerIdentifier:v19 peerData:v33];
  v0[88] = v34;

  v35 = Data._bridgeToObjectiveC()().super.isa;
  v0[89] = v35;
  v0[10] = v0;
  v0[11] = sub_100170814;
  v36 = swift_continuation_init();
  v0[41] = sub_100068FC4(&unk_100504290, &qword_10040B5A8);
  v0[34] = _NSConcreteStackBlock;
  v0[35] = 1107296256;
  v0[36] = sub_1001E95B0;
  v0[37] = &unk_1004C9570;
  v0[38] = v36;
  [v41 addLocalSEPeerIdentity:v34 altDSID:v35 completion:v0 + 34];
LABEL_20:

  return _swift_continuation_await(v31);
}

uint64_t sub_10017024C()
{
  v1 = *v0;
  v2 = *(*v0 + 176);
  *(*v0 + 696) = v2;
  if (v2)
  {
    v3 = v1[72];
    sub_10006A2D0(v1[78], v1[79]);

    v4 = sub_100170D04;
    v5 = v3;
  }

  else
  {
    v5 = v1[72];
    v4 = sub_100170384;
  }

  return _swift_task_switch(v4, v5, 0);
}

uint64_t sub_100170384()
{
  v36 = v0;
  v1 = *(v0 + 680);
  v2 = *(v0 + 632);
  v3 = *(v0 + 624);

  sub_100069E2C(v3, v2);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();
  sub_10006A2D0(v3, v2);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 656);
    v31 = v5;
    v7 = *(v0 + 632);
    v8 = *(v0 + 624);
    v28 = v8;
    v29 = v7;
    v9 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v33 = v30;
    *v9 = 136315138;
    sub_100069E2C(v8, v7);
    sub_100288640(4, v8, v7, &v34);
    v11 = v34;
    v10 = v35;
    *(v0 + 536) = sub_100288788(v34, v35);
    sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
    sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0, &protocol conformance descriptor for [A]);
    v12 = BidirectionalCollection<>.joined(separator:)();
    v14 = v13;
    sub_10006A178(v11, v10);

    v15 = sub_1002FFA0C(v12, v14, &v33);

    *(v9 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v4, v31, "Removed local SE Peer Identifier %s)", v9, 0xCu);
    sub_1000752F4(v30);

    sub_10006A2D0(v28, v29);
  }

  else
  {
    v16 = *(v0 + 632);
    v17 = *(v0 + 624);

    sub_10006A2D0(v17, v16);
    v6 = *(v0 + 656);
  }

  v18.super.isa = Data._bridgeToObjectiveC()().super.isa;
  type metadata accessor for PropertyListEncoder();
  swift_allocObject();
  PropertyListEncoder.init()();
  sub_100188AF0(&qword_100504E28, type metadata accessor for SESPeerIdentityData, &unk_10040DF5C);
  v19 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v21 = v20;

  if (v6)
  {

    return swift_unexpectedError();
  }

  else
  {
    v32 = *(v0 + 600);
    v23 = objc_opt_self();
    isa = Data._bridgeToObjectiveC()().super.isa;
    sub_10006A178(v19, v21);
    v25 = [v23 withPeerIdentifier:v18.super.isa peerData:isa];
    *(v0 + 704) = v25;

    v26 = Data._bridgeToObjectiveC()().super.isa;
    *(v0 + 712) = v26;
    *(v0 + 80) = v0;
    *(v0 + 88) = sub_100170814;
    v27 = swift_continuation_init();
    *(v0 + 328) = sub_100068FC4(&unk_100504290, &qword_10040B5A8);
    *(v0 + 272) = _NSConcreteStackBlock;
    *(v0 + 280) = 1107296256;
    *(v0 + 288) = sub_1001E95B0;
    *(v0 + 296) = &unk_1004C9570;
    *(v0 + 304) = v27;
    [v32 addLocalSEPeerIdentity:v25 altDSID:v26 completion:v0 + 272];

    return _swift_continuation_await(v0 + 80);
  }
}

uint64_t sub_100170814()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 720) = v2;
  if (v2)
  {
    v3 = *(v1 + 576);

    v4 = sub_100170ED8;
    v5 = v3;
  }

  else
  {
    v5 = *(v1 + 576);
    v4 = sub_10017093C;
  }

  return _swift_task_switch(v4, v5, 0);
}

uint64_t sub_10017093C()
{
  v21 = v0;
  v1 = *(v0 + 592);
  v2 = *(v0 + 568);

  sub_10018D04C(v2, v1, type metadata accessor for SESPeerIdentityData);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 704);
  v7 = *(v0 + 632);
  v8 = *(v0 + 624);
  v9 = *(v0 + 592);
  if (v5)
  {
    v19 = *(v0 + 704);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v20 = v11;
    *v10 = 136315138;
    v12 = sub_100289B6C();
    v14 = v13;
    sub_10018CE30(v9, type metadata accessor for SESPeerIdentityData);
    v15 = sub_1002FFA0C(v12, v14, &v20);

    *(v10 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v3, v4, "KeySyncManager: Added identity to Keychain Successfully : %s", v10, 0xCu);
    sub_1000752F4(v11);

    sub_10006A2D0(v8, v7);
  }

  else
  {
    sub_10006A2D0(*(v0 + 624), *(v0 + 632));

    sub_10018CE30(v9, type metadata accessor for SESPeerIdentityData);
  }

  v16 = *(v0 + 640);

  v17 = *(v0 + 8);

  return v17(v16);
}

uint64_t sub_100170B48(uint64_t a1)
{
  v13 = v1;
  v2 = *(v1 + 608);
  swift_willThrow();

  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136315138;
    swift_getErrorValue();
    v7 = Error.localizedDescription.getter();
    v9 = sub_1002FFA0C(v7, v8, &v12);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failed to get SE Peer Identity Info %s", v5, 0xCu);
    sub_1000752F4(v6);
  }

  *(v1 + 728) = 20;
  sub_10018C6D8();
  swift_willThrowTypedImpl();

  v10 = *(v1 + 8);

  return v10(20);
}

uint64_t sub_100170D04(uint64_t a1)
{
  v16 = v1;
  v2 = *(v1 + 688);
  v3 = *(v1 + 680);
  swift_willThrow();

  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v15 = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v8 = Error.localizedDescription.getter();
    v10 = sub_1002FFA0C(v8, v9, &v15);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed to remove local SE Peer Identifier %s", v6, 0xCu);
    sub_1000752F4(v7);
  }

  v11 = *(v1 + 632);
  v12 = *(v1 + 624);
  *(v1 + 730) = 20;
  sub_10018C6D8();
  swift_willThrowTypedImpl();
  sub_10006A2D0(v12, v11);

  v13 = *(v1 + 8);

  return v13(20);
}

uint64_t sub_100170ED8(uint64_t a1)
{
  v16 = v1;
  v2 = *(v1 + 712);
  swift_willThrow();

  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v15 = v6;
    *v5 = 136315138;
    swift_getErrorValue();
    v7 = Error.localizedDescription.getter();
    v9 = sub_1002FFA0C(v7, v8, &v15);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failed to add local SE Peer Identity %s", v5, 0xCu);
    sub_1000752F4(v6);
  }

  v10 = *(v1 + 704);
  v11 = *(v1 + 632);
  v12 = *(v1 + 624);
  *(v1 + 729) = 21;
  sub_10018C6D8();
  swift_willThrowTypedImpl();

  sub_10006A2D0(v12, v11);

  v13 = *(v1 + 8);

  return v13(21);
}

uint64_t sub_1001710AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[44] = a5;
  v6[45] = v5;
  v6[42] = a3;
  v6[43] = a4;
  v6[40] = a1;
  v6[41] = a2;
  v7 = sub_100068FC4(&unk_100504880, &unk_10040A5B0);
  v6[46] = v7;
  v6[47] = *(v7 - 8);
  v6[48] = swift_task_alloc();

  return _swift_task_switch(sub_100171180, v5, 0);
}

uint64_t sub_100171180()
{
  v41 = v0;
  v1 = [*(v0 + 328) currentTLK];
  *(v0 + 392) = v1;
  v2 = *(v0 + 320);
  if (v1)
  {
    v3 = v1;
    v5 = *v2;
    v4 = v2[1];
    v6 = [v1 tlkUUID];
    v7 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;

    sub_1001F5640(v5, v4);
    sub_10006A178(v7, v9);
    sub_10018C898(v2, v0 + 184);
    v10 = v3;
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.info.getter();
    sub_10018CF6C(v2);

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v15 = v4;
      v16 = v5;
      v17 = swift_slowAlloc();
      v40 = v17;
      *v13 = 136315394;
      *(v13 + 4) = sub_1002FFA0C(v16, v15, &v40);
      *(v13 + 12) = 2112;
      *(v13 + 14) = v10;
      *v14 = v3;
      v18 = v10;
      _os_log_impl(&_mh_execute_header, v11, v12, "View %s already has TLK %@", v13, 0x16u);
      sub_100075768(v14, &unk_100503F70, &unk_10040B2E0);

      sub_1000752F4(v17);
      v5 = v16;
      v4 = v15;
    }

    v20 = *(v0 + 376);
    v19 = *(v0 + 384);
    v22 = *(v0 + 360);
    v21 = *(v0 + 368);
    v23 = OBJC_IVAR____TtC10seserviced16SEKeySyncManager__recoveryForce;
    swift_beginAccess();
    (*(v20 + 16))(v19, v22 + v23, v21);
    UserDefaultBacked.wrappedValue.getter();
    (*(v20 + 8))(v19, v21);
    if (*(v0 + 178) == 1)
    {
      v24 = *(v0 + 320);
      sub_10018C898(v24, v0 + 224);
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.error.getter();
      sub_10018CF6C(v24);
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v40 = v28;
        *v27 = 136315138;
        *(v27 + 4) = sub_1002FFA0C(v5, v4, &v40);
        _os_log_impl(&_mh_execute_header, v25, v26, "Forcibly deleting TLK for %s", v27, 0xCu);
        sub_1000752F4(v28);
      }

      v29 = swift_task_alloc();
      *(v0 + 400) = v29;
      *v29 = v0;
      v29[1] = sub_1001716E8;

      return sub_10016C130();
    }

    else
    {

      v39 = *(v0 + 8);

      return v39(0);
    }
  }

  else
  {
    *(v0 + 424) = OBJC_IVAR____TtC10seserviced16SEKeySyncManager_logger;
    sub_10018C898(v2, v0 + 144);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.info.getter();
    sub_10018CF6C(v2);
    if (os_log_type_enabled(v31, v32))
    {
      v33 = *(v0 + 320);
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v40 = v35;
      *v34 = 136315138;
      *(v34 + 4) = sub_1002FFA0C(*v33, *(v33 + 8), &v40);
      _os_log_impl(&_mh_execute_header, v31, v32, "Creating TLK and self share for view %s", v34, 0xCu);
      sub_1000752F4(v35);
    }

    v36 = swift_task_alloc();
    *(v0 + 432) = v36;
    *v36 = v0;
    v36[1] = sub_1001718FC;
    v37 = *(v0 + 336);
    v38 = *(v0 + 320);

    return sub_1001810DC(v38, v37);
  }
}

uint64_t sub_1001716E8(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 408) = a1;
  *(v4 + 416) = v1;

  v5 = *(v3 + 360);
  if (v1)
  {
    v6 = sub_100171D70;
  }

  else
  {
    v6 = sub_10017181C;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10017181C()
{
  v2 = *(v0 + 408);
  v1 = *(v0 + 416);
  v3 = [*(v0 + 392) tlkUUID];
  v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  sub_1001A4668(v2, v4, v6);
  v7 = *(v0 + 408);
  v8 = *(v0 + 392);
  if (v1)
  {
  }

  sub_10006A178(v4, v6);

  v9 = *(v0 + 8);

  return v9(1);
}

uint64_t sub_1001718FC(uint64_t a1, uint64_t a2)
{
  v5 = *v3;
  v6 = *v3;
  v5[55] = a1;
  v5[56] = a2;

  if (v2)
  {

    v7 = v6[1];

    return v7(a1);
  }

  else
  {
    v9 = v5[45];

    return _swift_task_switch(sub_100171A58, v9, 0);
  }
}

uint64_t sub_100171A58()
{
  v2 = v0[55];
  v1 = v0[56];
  v3 = *(v0[45] + OBJC_IVAR____TtC10seserviced16SEKeySyncManager_keychainWrapper);
  v4 = String._bridgeToObjectiveC()();
  v0[57] = v4;
  isa = Data._bridgeToObjectiveC()().super.isa;
  v0[58] = isa;
  v0[2] = v0;
  v0[3] = sub_100171BC8;
  v6 = swift_continuation_init();
  v0[17] = sub_100068FC4(&unk_100504290, &qword_10040B5A8);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_1001E95B0;
  v0[13] = &unk_1004C9520;
  v0[14] = v6;
  [v3 proposeTLKForView:v4 record:v2 selfShare:v1 altDSID:isa completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100171BC8()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 472) = v2;
  v3 = *(v1 + 360);
  if (v2)
  {
    v4 = sub_100171DE4;
  }

  else
  {
    v4 = sub_100171CE8;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100171CE8()
{
  v1 = *(v0 + 456);
  v2 = *(v0 + 464);
  v3 = *(v0 + 440);

  v4 = *(v0 + 8);

  return v4(1);
}

uint64_t sub_100171D70()
{
  v1 = *(v0 + 408);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_100171DE4(uint64_t a1)
{
  v16 = v1;
  v2 = *(v1 + 464);
  v3 = *(v1 + 456);
  swift_willThrow();

  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v15 = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v8 = Error.localizedDescription.getter();
    v10 = sub_1002FFA0C(v8, v9, &v15);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed to propose TLK : %s", v6, 0xCu);
    sub_1000752F4(v7);
  }

  v12 = *(v1 + 440);
  v11 = *(v1 + 448);
  *(v1 + 177) = 22;
  sub_10018C6D8();
  swift_willThrowTypedImpl();

  v13 = *(v1 + 8);

  return v13(22);
}

uint64_t sub_100171FB0(uint64_t a1, uint64_t a2)
{
  v3[41] = a2;
  v3[42] = v2;
  v3[40] = a1;

  return _swift_task_switch(sub_100172044, v2, 0);
}

uint64_t sub_100172044(__n128 a1)
{
  v202 = v1;
  v2 = *(*(v1 + 320) + 16);
  *(v1 + 344) = v2;
  if (!v2)
  {
LABEL_290:
    v155 = *(v1 + 8);

    return v155(0, a1);
  }

  v3 = 0;
  v197 = (v1 + 152);
  v179 = (v1 + 272);
  *(v1 + 352) = OBJC_IVAR____TtC10seserviced16SEKeySyncManager_logger;
  a1.n128_u64[0] = 136315138;
  v173 = a1;
  v4 = &selRef_retrievePeripheralsWithIdentifiers_;
  while (1)
  {
    *(v1 + 360) = v3;
    v5 = (*(v1 + 320) + 48 * v3);
    v6 = v5[4];
    v7 = v5[5];
    *(v1 + 368) = v7;
    v8 = v5[6];
    *(v1 + 376) = v8;
    v9 = v5[7];
    *(v1 + 384) = v9;
    v10 = v5[9];
    *(v1 + 392) = v10;

    sub_100069E2C(v8, v9);
    v183 = v10;
    v11 = [v183 currentTLK];
    *(v1 + 400) = v11;
    v192 = v11;
    if (!v11)
    {

      sub_100069E2C(v8, v9);
      v148 = Logger.logObject.getter();
      v149 = v8;
      v150 = static os_log_type_t.error.getter();

      sub_10006A178(v149, v9);
      if (os_log_type_enabled(v148, v150))
      {
        v151 = swift_slowAlloc();
        v152 = swift_slowAlloc();
        v201[0] = v152;
        *v151 = v173.n128_u32[0];

        v153 = sub_1002FFA0C(v6, v7, v201);

        *(v151 + 4) = v153;
        _os_log_impl(&_mh_execute_header, v148, v150, "View %s doesn't have a TLK?", v151, 0xCu);
        sub_1000752F4(v152);

        sub_10006A178(v149, v9);
      }

      else
      {

        sub_10006A178(v149, v9);
      }

      v1 = v196;
      goto LABEL_5;
    }

    v191 = *(*(v1 + 328) + 16);
    if (v191)
    {
      v12 = 0;
      v187 = _swiftEmptyArrayStorage;
      v188 = v8;
      v189 = v9;
      while (1)
      {
        v195 = v12;
        v15 = *(v1 + 328) + 72 * v12;
        *(v1 + 80) = *(v15 + 32);
        v17 = *(v15 + 64);
        v16 = *(v15 + 80);
        v18 = *(v15 + 48);
        *(v1 + 144) = *(v15 + 96);
        *(v1 + 112) = v17;
        *(v1 + 128) = v16;
        *(v1 + 96) = v18;
        v20 = *(v1 + 80);
        v19 = *(v1 + 88);
        sub_10018C628(v1 + 80, v197);
        v21 = [v192 v4[105]];
        v22 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v24 = v23;

        v198 = v20;
        v199 = v19;
        v25 = v19 >> 62;
        v26 = v24 >> 62;
        if (v19 >> 62 == 3)
        {
          v27 = 0;
          if (!v20 && v19 == 0xC000000000000000 && v24 >> 62 == 3)
          {
            v27 = 0;
            if (!v22 && v24 == 0xC000000000000000)
            {
              v1 = v196;
              sub_10018C684(v196 + 80);
              v13 = 0;
              v14 = 0xC000000000000000;
LABEL_10:
              sub_10006A178(v13, v14);
LABEL_11:
              v4 = &selRef_retrievePeripheralsWithIdentifiers_;
LABEL_12:
              v9 = v189;
              goto LABEL_13;
            }
          }
        }

        else if (v25 > 1)
        {
          if (v25 == 2)
          {
            v29 = *(v20 + 16);
            v28 = *(v20 + 24);
            v30 = __OFSUB__(v28, v29);
            v27 = v28 - v29;
            if (v30)
            {
              goto LABEL_317;
            }
          }

          else
          {
            v27 = 0;
          }
        }

        else if (v25)
        {
          LODWORD(v27) = HIDWORD(v20) - v20;
          if (__OFSUB__(HIDWORD(v20), v20))
          {
            goto LABEL_316;
          }

          v27 = v27;
        }

        else
        {
          v27 = BYTE6(v19);
        }

        v200 = v19 >> 62;
        if (v26 > 1)
        {
          if (v26 != 2)
          {
            if (!v27)
            {
LABEL_9:
              v1 = v196;
              sub_10018C684(v196 + 80);
              v13 = v22;
              v14 = v24;
              goto LABEL_10;
            }

LABEL_52:
            sub_10006A178(v22, v24);
            v40 = v20;
            goto LABEL_53;
          }

          v32 = *(v22 + 16);
          v31 = *(v22 + 24);
          v30 = __OFSUB__(v31, v32);
          v33 = v31 - v32;
          if (v30)
          {
            goto LABEL_308;
          }

          if (v27 != v33)
          {
            goto LABEL_52;
          }
        }

        else if (v26)
        {
          if (__OFSUB__(HIDWORD(v22), v22))
          {
            goto LABEL_307;
          }

          if (v27 != HIDWORD(v22) - v22)
          {
            goto LABEL_52;
          }
        }

        else if (v27 != BYTE6(v24))
        {
          goto LABEL_52;
        }

        if (v27 < 1)
        {
          goto LABEL_9;
        }

        if (v25 > 1)
        {
          if (v25 == 2)
          {
            v98 = *(v20 + 16);
            v99 = __DataStorage._bytes.getter();
            if (v99)
            {
              v100 = __DataStorage._offset.getter();
              if (__OFSUB__(v98, v100))
              {
                goto LABEL_324;
              }

              v99 += v98 - v100;
            }

            __DataStorage._length.getter();
            v8 = v188;
            if (v26 == 2)
            {
              v128 = *(v22 + 16);
              v129 = *(v22 + 24);
              v101 = __DataStorage._bytes.getter();
              if (v101)
              {
                v130 = __DataStorage._offset.getter();
                if (__OFSUB__(v128, v130))
                {
                  goto LABEL_339;
                }

                v101 += v128 - v130;
              }

              v30 = __OFSUB__(v129, v128);
              v131 = v129 - v128;
              if (v30)
              {
                goto LABEL_334;
              }

              v132 = __DataStorage._length.getter();
              if (v132 >= v131)
              {
                v104 = v131;
              }

              else
              {
                v104 = v132;
              }

              if (!v99)
              {
                goto LABEL_358;
              }

              v40 = v198;
              if (!v101)
              {
                goto LABEL_357;
              }

              goto LABEL_269;
            }

            if (v26 == 1)
            {
              if (v22 >> 32 < v22)
              {
                goto LABEL_330;
              }

              v101 = __DataStorage._bytes.getter();
              if (v101)
              {
                v102 = __DataStorage._offset.getter();
                if (__OFSUB__(v22, v102))
                {
                  goto LABEL_340;
                }

                v101 += v22 - v102;
              }

              v103 = __DataStorage._length.getter();
              if (v103 >= (v22 >> 32) - v22)
              {
                v104 = (v22 >> 32) - v22;
              }

              else
              {
                v104 = v103;
              }

              if (!v99)
              {
                goto LABEL_367;
              }

              v40 = v20;
              if (!v101)
              {
                goto LABEL_366;
              }

LABEL_269:
              if (v99 == v101)
              {
                v1 = v196;
                sub_10018C684(v196 + 80);
                sub_10006A178(v22, v24);
                goto LABEL_277;
              }

              v138 = memcmp(v99, v101, v104);
              sub_10006A178(v22, v24);
              v8 = v188;
              if (!v138)
              {
                goto LABEL_275;
              }

              goto LABEL_53;
            }

            *(v196 + 152) = v22;
            *(v196 + 160) = v24;
            *(v196 + 162) = BYTE2(v24);
            *(v196 + 163) = BYTE3(v24);
            *(v196 + 164) = BYTE4(v24);
            *(v196 + 165) = BYTE5(v24);
            v40 = v20;
            if (!v99)
            {
              goto LABEL_356;
            }

            goto LABEL_274;
          }

          *(v179 + 6) = 0;
          *v179 = 0;
          if (v26)
          {
            if (v26 == 2)
            {
              v110 = *(v22 + 16);
              v111 = *(v22 + 24);
              v38 = __DataStorage._bytes.getter();
              if (v38)
              {
                v112 = __DataStorage._offset.getter();
                if (__OFSUB__(v110, v112))
                {
                  goto LABEL_338;
                }

                v38 += v110 - v112;
              }

              v30 = __OFSUB__(v111, v110);
              v113 = v111 - v110;
              if (v30)
              {
                goto LABEL_331;
              }

              v114 = __DataStorage._length.getter();
              if (!v38)
              {
                goto LABEL_362;
              }
            }

            else
            {
              v113 = (v22 >> 32) - v22;
              if (v22 >> 32 < v22)
              {
                goto LABEL_328;
              }

              v124 = __DataStorage._bytes.getter();
              if (!v124)
              {
                goto LABEL_368;
              }

              v125 = v124;
              v126 = __DataStorage._offset.getter();
              if (__OFSUB__(v22, v126))
              {
                goto LABEL_332;
              }

              v38 = (v22 - v126 + v125);
              v114 = __DataStorage._length.getter();
              if (!v38)
              {
                goto LABEL_369;
              }
            }

            if (v114 >= v113)
            {
              v122 = v113;
            }

            else
            {
              v122 = v114;
            }

            v123 = v179;
            goto LABEL_246;
          }

          *(v196 + 152) = v22;
          *(v196 + 160) = v24;
          *(v196 + 162) = BYTE2(v24);
          *(v196 + 163) = BYTE3(v24);
          *(v196 + 164) = BYTE4(v24);
          v115 = BYTE6(v24);
          *(v196 + 165) = BYTE5(v24);
          v116 = v179;
          v117 = v197;
        }

        else
        {
          if (v25)
          {
            if (v20 > v20 >> 32)
            {
              goto LABEL_323;
            }

            v99 = __DataStorage._bytes.getter();
            if (v99)
            {
              v107 = __DataStorage._offset.getter();
              if (__OFSUB__(v20, v107))
              {
                goto LABEL_325;
              }

              v99 += v20 - v107;
            }

            __DataStorage._length.getter();
            v8 = v188;
            if (v26 == 2)
            {
              v133 = *(v22 + 16);
              v134 = *(v22 + 24);
              v101 = __DataStorage._bytes.getter();
              if (v101)
              {
                v135 = __DataStorage._offset.getter();
                if (__OFSUB__(v133, v135))
                {
                  goto LABEL_341;
                }

                v101 += v133 - v135;
              }

              v30 = __OFSUB__(v134, v133);
              v136 = v134 - v133;
              if (v30)
              {
                goto LABEL_336;
              }

              v137 = __DataStorage._length.getter();
              if (v137 >= v136)
              {
                v104 = v136;
              }

              else
              {
                v104 = v137;
              }

              if (!v99)
              {
                goto LABEL_360;
              }

              v40 = v198;
              if (!v101)
              {
                goto LABEL_359;
              }

              goto LABEL_269;
            }

            if (v26 == 1)
            {
              if (v22 >> 32 < v22)
              {
                goto LABEL_335;
              }

              v101 = __DataStorage._bytes.getter();
              if (v101)
              {
                v108 = __DataStorage._offset.getter();
                if (__OFSUB__(v22, v108))
                {
                  goto LABEL_342;
                }

                v101 += v22 - v108;
              }

              v109 = __DataStorage._length.getter();
              if (v109 >= (v22 >> 32) - v22)
              {
                v104 = (v22 >> 32) - v22;
              }

              else
              {
                v104 = v109;
              }

              if (!v99)
              {
                goto LABEL_371;
              }

              v40 = v20;
              if (!v101)
              {
                goto LABEL_370;
              }

              goto LABEL_269;
            }

            *(v196 + 152) = v22;
            *(v196 + 160) = v24;
            *(v196 + 162) = BYTE2(v24);
            *(v196 + 163) = BYTE3(v24);
            *(v196 + 164) = BYTE4(v24);
            *(v196 + 165) = BYTE5(v24);
            v40 = v20;
            if (!v99)
            {
              goto LABEL_365;
            }

LABEL_274:
            v139 = memcmp(v99, v197, BYTE6(v24));
            sub_10006A178(v22, v24);
            if (!v139)
            {
LABEL_275:
              v1 = v196;
              sub_10018C684(v196 + 80);
              goto LABEL_11;
            }

            goto LABEL_53;
          }

          *(v196 + 152) = v20;
          *(v196 + 160) = v19;
          *(v196 + 162) = BYTE2(v19);
          *(v196 + 163) = BYTE3(v19);
          *(v196 + 164) = BYTE4(v19);
          *(v196 + 165) = BYTE5(v19);
          if (v26)
          {
            if (v26 == 1)
            {
              v34 = (v22 >> 32) - v22;
              if (v22 >> 32 < v22)
              {
                goto LABEL_327;
              }

              v35 = __DataStorage._bytes.getter();
              if (!v35)
              {
                goto LABEL_363;
              }

              v36 = v35;
              v37 = __DataStorage._offset.getter();
              if (__OFSUB__(v22, v37))
              {
                goto LABEL_333;
              }

              v38 = (v22 - v37 + v36);
              v39 = __DataStorage._length.getter();
              if (!v38)
              {
                goto LABEL_364;
              }
            }

            else
            {
              v119 = *(v22 + 16);
              v120 = *(v22 + 24);
              v38 = __DataStorage._bytes.getter();
              if (v38)
              {
                v121 = __DataStorage._offset.getter();
                if (__OFSUB__(v119, v121))
                {
                  goto LABEL_337;
                }

                v38 += v119 - v121;
              }

              v30 = __OFSUB__(v120, v119);
              v34 = v120 - v119;
              if (v30)
              {
                goto LABEL_329;
              }

              v39 = __DataStorage._length.getter();
              if (!v38)
              {
                goto LABEL_361;
              }
            }

            if (v39 >= v34)
            {
              v122 = v34;
            }

            else
            {
              v122 = v39;
            }

            v123 = v197;
LABEL_246:
            v127 = memcmp(v123, v38, v122);
            sub_10006A178(v22, v24);
            v8 = v188;
            v40 = v20;
            if (!v127)
            {
              goto LABEL_275;
            }

            goto LABEL_53;
          }

          *(v196 + 272) = v22;
          *(v196 + 280) = v24;
          *(v196 + 282) = BYTE2(v24);
          *(v196 + 283) = BYTE3(v24);
          *(v196 + 284) = BYTE4(v24);
          v115 = BYTE6(v24);
          *(v196 + 285) = BYTE5(v24);
          v116 = v197;
          v117 = v179;
        }

        v118 = memcmp(v116, v117, v115);
        sub_10006A178(v22, v24);
        v40 = v20;
        if (!v118)
        {
          goto LABEL_275;
        }

LABEL_53:
        v41 = [v183 previousTLKs];
        sub_10009393C(0, &qword_100504F48, SESTLKRecord_ptr);
        v42 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        v4 = &selRef_retrievePeripheralsWithIdentifiers_;
        if (v42 >> 62)
        {
          v43 = _CocoaArrayWrapper.endIndex.getter();
          v44 = v43;
          if (!v43)
          {
LABEL_280:

            v140 = v187;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *(v196 + 288) = v187;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_10019F684(0, v187[2] + 1, 1);
              v140 = *(v196 + 288);
            }

            v8 = v188;
            v9 = v189;
            v143 = v140[2];
            v142 = v140[3];
            if (v143 >= v142 >> 1)
            {
              sub_10019F684((v142 > 1), v143 + 1, 1);
              v140 = *(v196 + 288);
            }

            v140[2] = v143 + 1;
            v187 = v140;
            v144 = &v140[9 * v143];
            v1 = v196;
            *(v144 + 2) = *(v196 + 80);
            v145 = *(v196 + 96);
            v146 = *(v196 + 112);
            v147 = *(v196 + 128);
            *(v144 + 96) = *(v196 + 144);
            *(v144 + 4) = v146;
            *(v144 + 5) = v147;
            *(v144 + 3) = v145;
            goto LABEL_13;
          }
        }

        else
        {
          v44 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v44)
          {
            goto LABEL_280;
          }
        }

        v45 = 0;
        v190 = v40;
        v180 = (v40 >> 32) - v40;
        v181 = v40 >> 32;
        v182 = HIDWORD(v40);
        v46 = __OFSUB__(HIDWORD(v40), v40);
        v194 = v46;
        v193 = HIDWORD(v40) - v40;
        while (1)
        {
          if ((v42 & 0xC000000000000001) != 0)
          {
            v43 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v45 >= *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_294;
            }

            v43 = *(v42 + 8 * v45 + 32);
          }

          v47 = v43;
          v48 = (v45 + 1);
          if (__OFADD__(v45, 1))
          {
            __break(1u);
LABEL_294:
            __break(1u);
            goto LABEL_295;
          }

          v49 = [v43 v4[105]];
          v50 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v52 = v51;

          v53 = v52 >> 62;
          if (v52 >> 62 == 3)
          {
            break;
          }

          v55 = v200;
          if (v53 > 1)
          {
            if (v53 == 2)
            {
              v60 = *(v50 + 16);
              v59 = *(v50 + 24);
              v30 = __OFSUB__(v59, v60);
              v54 = v59 - v60;
              if (v30)
              {
                goto LABEL_302;
              }

LABEL_80:
              if (v55 <= 1)
              {
                goto LABEL_81;
              }

              goto LABEL_74;
            }

            v54 = 0;
            if (v200 <= 1)
            {
              goto LABEL_81;
            }
          }

          else if (v53)
          {
            LODWORD(v54) = HIDWORD(v50) - v50;
            if (__OFSUB__(HIDWORD(v50), v50))
            {
              goto LABEL_303;
            }

            v54 = v54;
            if (v200 <= 1)
            {
LABEL_81:
              v58 = BYTE6(v199);
              if (v55)
              {
                v58 = v193;
                if (v194)
                {
                  goto LABEL_301;
                }
              }

              goto LABEL_83;
            }
          }

          else
          {
            v54 = BYTE6(v52);
            if (v200 <= 1)
            {
              goto LABEL_81;
            }
          }

LABEL_74:
          if (v55 != 2)
          {
            if (!v54)
            {
              goto LABEL_197;
            }

LABEL_60:

            v43 = sub_10006A178(v50, v52);
            goto LABEL_61;
          }

          v57 = *(v40 + 16);
          v56 = *(v40 + 24);
          v30 = __OFSUB__(v56, v57);
          v58 = v56 - v57;
          if (v30)
          {
            __break(1u);
LABEL_301:
            __break(1u);
LABEL_302:
            __break(1u);
LABEL_303:
            __break(1u);
LABEL_304:
            __break(1u);
LABEL_305:
            __break(1u);
LABEL_306:
            __break(1u);
LABEL_307:
            __break(1u);
LABEL_308:
            __break(1u);
LABEL_309:
            __break(1u);
LABEL_310:
            __break(1u);
LABEL_311:
            __break(1u);
LABEL_312:
            __break(1u);
LABEL_313:
            __break(1u);
LABEL_314:
            __break(1u);
LABEL_315:
            __break(1u);
LABEL_316:
            __break(1u);
LABEL_317:
            __break(1u);
LABEL_318:
            __break(1u);
LABEL_319:
            __break(1u);
LABEL_320:
            __break(1u);
LABEL_321:
            __break(1u);
LABEL_322:
            __break(1u);
LABEL_323:
            __break(1u);
LABEL_324:
            __break(1u);
LABEL_325:
            __break(1u);
LABEL_326:
            __break(1u);
LABEL_327:
            __break(1u);
LABEL_328:
            __break(1u);
LABEL_329:
            __break(1u);
LABEL_330:
            __break(1u);
LABEL_331:
            __break(1u);
LABEL_332:
            __break(1u);
LABEL_333:
            __break(1u);
LABEL_334:
            __break(1u);
LABEL_335:
            __break(1u);
LABEL_336:
            __break(1u);
LABEL_337:
            __break(1u);
LABEL_338:
            __break(1u);
LABEL_339:
            __break(1u);
LABEL_340:
            __break(1u);
LABEL_341:
            __break(1u);
LABEL_342:
            __break(1u);
LABEL_343:
            __DataStorage._length.getter();
LABEL_344:
            __break(1u);
LABEL_345:
            __break(1u);
LABEL_346:
            __break(1u);
LABEL_347:
            __break(1u);
LABEL_348:
            __break(1u);
LABEL_349:
            __break(1u);
LABEL_350:
            __break(1u);
LABEL_351:
            __break(1u);
LABEL_352:
            __break(1u);
LABEL_353:
            __break(1u);
LABEL_354:
            __break(1u);
LABEL_355:
            __break(1u);
LABEL_356:
            __break(1u);
LABEL_357:
            __break(1u);
LABEL_358:
            __break(1u);
LABEL_359:
            __break(1u);
LABEL_360:
            __break(1u);
LABEL_361:
            __break(1u);
LABEL_362:
            __break(1u);
LABEL_363:
            __DataStorage._length.getter();
LABEL_364:
            __break(1u);
LABEL_365:
            __break(1u);
LABEL_366:
            __break(1u);
LABEL_367:
            __break(1u);
LABEL_368:
            __DataStorage._length.getter();
LABEL_369:
            __break(1u);
LABEL_370:
            __break(1u);
LABEL_371:
            __break(1u);
          }

LABEL_83:
          if (v54 != v58)
          {
            goto LABEL_60;
          }

          if (v54 < 1)
          {
            goto LABEL_197;
          }

          if (v53 <= 1)
          {
            if (!v53)
            {
              *(v196 + 152) = v50;
              *(v196 + 160) = v52;
              *(v196 + 162) = BYTE2(v52);
              *(v196 + 163) = BYTE3(v52);
              *(v196 + 164) = BYTE4(v52);
              *(v196 + 165) = BYTE5(v52);
              sub_10019F024(v197, v40, v199, v201);
              v40 = v198;

              v43 = sub_10006A178(v50, v52);
              if (v201[0])
              {
                goto LABEL_224;
              }

              goto LABEL_61;
            }

            if (v50 > v50 >> 32)
            {
              goto LABEL_304;
            }

            v65 = __DataStorage._bytes.getter();
            if (v65)
            {
              v66 = v65;
              v67 = __DataStorage._offset.getter();
              if (__OFSUB__(v50, v67))
              {
                goto LABEL_306;
              }

              __s1a = (v50 - v67 + v66);
            }

            else
            {
              __s1a = 0;
            }

            __DataStorage._length.getter();
            v4 = &selRef_retrievePeripheralsWithIdentifiers_;
            v40 = v198;
            if (v200 == 2)
            {
              v175 = *(v198 + 24);
              v178 = *(v198 + 16);
              v74 = __DataStorage._bytes.getter();
              if (v74)
              {
                v87 = __DataStorage._offset.getter();
                v88 = v178;
                if (__OFSUB__(v178, v87))
                {
                  goto LABEL_321;
                }

                v74 += v178 - v87;
              }

              else
              {
                v88 = v178;
              }

              v95 = v175 - v88;
              if (__OFSUB__(v175, v88))
              {
                goto LABEL_315;
              }

              v96 = __DataStorage._length.getter();
              if (v96 >= v95)
              {
                v77 = v95;
              }

              else
              {
                v77 = v96;
              }

              v78 = __s1a;
              if (!__s1a)
              {
                goto LABEL_351;
              }

              v40 = v198;
              if (!v74)
              {
                goto LABEL_350;
              }
            }

            else
            {
              if (v200 != 1)
              {
                v83 = __s1a;
                *(v196 + 152) = v198;
                *(v196 + 156) = v182;
                *(v196 + 157) = *(&v198 + 5);
                *(v196 + 159) = HIBYTE(v198);
                *(v196 + 160) = v199;
                *(v196 + 164) = WORD2(v199);
                if (!__s1a)
                {
                  goto LABEL_352;
                }

LABEL_148:
                v84 = v197;
LABEL_149:
                v89 = memcmp(v83, v84, BYTE6(v199));

                v43 = sub_10006A178(v50, v52);
                if (!v89)
                {
                  goto LABEL_224;
                }

                goto LABEL_61;
              }

              if (v181 < v190)
              {
                goto LABEL_314;
              }

              v74 = __DataStorage._bytes.getter();
              if (v74)
              {
                v79 = __DataStorage._offset.getter();
                if (__OFSUB__(v190, v79))
                {
                  goto LABEL_322;
                }

                v74 += v190 - v79;
              }

              v80 = __DataStorage._length.getter();
              v77 = v180;
              if (v80 < v180)
              {
                v77 = v80;
              }

              v40 = v198;
              v78 = __s1a;
              if (!__s1a)
              {
                goto LABEL_354;
              }

              if (!v74)
              {
                goto LABEL_353;
              }
            }

            goto LABEL_174;
          }

          if (v53 == 2)
          {
            v61 = *(v50 + 16);
            v62 = __DataStorage._bytes.getter();
            if (v62)
            {
              v63 = v62;
              v64 = __DataStorage._offset.getter();
              if (__OFSUB__(v61, v64))
              {
                goto LABEL_305;
              }

              __s1 = (v61 - v64 + v63);
            }

            else
            {
              __s1 = 0;
            }

            __DataStorage._length.getter();
            v4 = &selRef_retrievePeripheralsWithIdentifiers_;
            v40 = v198;
            if (v200 == 2)
            {
              v174 = *(v198 + 24);
              v177 = *(v198 + 16);
              v74 = __DataStorage._bytes.getter();
              if (v74)
              {
                v85 = __DataStorage._offset.getter();
                v86 = v177;
                if (__OFSUB__(v177, v85))
                {
                  goto LABEL_319;
                }

                v74 += v177 - v85;
              }

              else
              {
                v86 = v177;
              }

              v93 = v174 - v86;
              if (__OFSUB__(v174, v86))
              {
                goto LABEL_313;
              }

              v94 = __DataStorage._length.getter();
              if (v94 >= v93)
              {
                v77 = v93;
              }

              else
              {
                v77 = v94;
              }

              v78 = __s1;
              if (!__s1)
              {
                goto LABEL_345;
              }

              v40 = v198;
              if (!v74)
              {
                goto LABEL_346;
              }
            }

            else
            {
              if (v200 != 1)
              {
                v83 = __s1;
                *(v196 + 152) = v198;
                *(v196 + 156) = v182;
                *(v196 + 157) = *(&v198 + 5);
                *(v196 + 159) = HIBYTE(v198);
                *(v196 + 160) = v199;
                *(v196 + 164) = WORD2(v199);
                if (!__s1)
                {
                  goto LABEL_347;
                }

                goto LABEL_148;
              }

              if (v181 < v190)
              {
                goto LABEL_311;
              }

              v74 = __DataStorage._bytes.getter();
              if (v74)
              {
                v75 = __DataStorage._offset.getter();
                if (__OFSUB__(v190, v75))
                {
                  goto LABEL_320;
                }

                v74 += v190 - v75;
              }

              v76 = __DataStorage._length.getter();
              v77 = v180;
              if (v76 < v180)
              {
                v77 = v76;
              }

              v40 = v198;
              v78 = __s1;
              if (!__s1)
              {
                goto LABEL_348;
              }

              if (!v74)
              {
                goto LABEL_349;
              }
            }

LABEL_174:
            if (v78 == v74)
            {

              v1 = v196;
              sub_10018C684(v196 + 80);
              sub_10006A178(v50, v52);
LABEL_277:
              v4 = &selRef_retrievePeripheralsWithIdentifiers_;
LABEL_278:
              v8 = v188;
              goto LABEL_12;
            }

            v97 = memcmp(v78, v74, v77);

            v43 = sub_10006A178(v50, v52);
            v4 = &selRef_retrievePeripheralsWithIdentifiers_;
            if (!v97)
            {
LABEL_224:

              v1 = v196;
              sub_10018C684(v196 + 80);
              goto LABEL_278;
            }

            goto LABEL_61;
          }

          *(v197 + 6) = 0;
          *v197 = 0;
          if (v55 == 2)
          {
            __s1b = *(v40 + 16);
            v176 = *(v40 + 24);
            v71 = __DataStorage._bytes.getter();
            if (v71)
            {
              v81 = __DataStorage._offset.getter();
              v82 = __s1b;
              if (__OFSUB__(__s1b, v81))
              {
                goto LABEL_318;
              }

              v71 = &__s1b[v71 - v81];
            }

            else
            {
              v82 = __s1b;
            }

            v90 = v176 - v82;
            if (__OFSUB__(v176, v82))
            {
              goto LABEL_310;
            }

            v91 = __DataStorage._length.getter();
            if (!v71)
            {
              goto LABEL_355;
            }

            if (v91 >= v90)
            {
              v73 = v90;
            }

            else
            {
              v73 = v91;
            }
          }

          else
          {
            if (v55 != 1)
            {
              *(v196 + 272) = v40;
              *(v196 + 274) = BYTE2(v40);
              *(v196 + 275) = BYTE3(v40);
              *(v196 + 276) = v182;
              *(v196 + 277) = BYTE5(v40);
              *(v196 + 278) = BYTE6(v40);
              *(v196 + 279) = HIBYTE(v40);
              *(v196 + 280) = v199;
              *(v196 + 284) = WORD2(v199);
              v83 = v197;
              v84 = v179;
              goto LABEL_149;
            }

            if (v181 < v190)
            {
              goto LABEL_309;
            }

            v68 = __DataStorage._bytes.getter();
            if (!v68)
            {
              goto LABEL_343;
            }

            v69 = v68;
            v70 = __DataStorage._offset.getter();
            if (__OFSUB__(v190, v70))
            {
              goto LABEL_312;
            }

            v71 = (v190 - v70 + v69);
            v72 = __DataStorage._length.getter();
            if (!v71)
            {
              goto LABEL_344;
            }

            if (v72 >= v180)
            {
              v73 = v180;
            }

            else
            {
              v73 = v72;
            }
          }

          v92 = memcmp(v197, v71, v73);

          v43 = sub_10006A178(v50, v52);
          v4 = &selRef_retrievePeripheralsWithIdentifiers_;
          v40 = v198;
          if (!v92)
          {
            goto LABEL_224;
          }

LABEL_61:
          ++v45;
          if (v48 == v44)
          {
            goto LABEL_280;
          }
        }

        v54 = 0;
        v55 = v200;
        if (v200 != 3 || v50 || v52 != 0xC000000000000000)
        {
          goto LABEL_80;
        }

        v50 = 0;
        if (v40)
        {
LABEL_197:
          v8 = v188;
          v9 = v189;
        }

        else
        {
          v8 = v188;
          v9 = v189;
          if (v199 == 0xC000000000000000)
          {

            v1 = v196;
            sub_10018C684(v196 + 80);

            v105 = 0;
            v106 = 0xC000000000000000;
            goto LABEL_199;
          }
        }

        v1 = v196;
        sub_10018C684(v196 + 80);

        v105 = v50;
        v106 = v52;
LABEL_199:
        sub_10006A178(v105, v106);
LABEL_13:
        v12 = v195 + 1;
        if (v195 + 1 == v191)
        {
          goto LABEL_288;
        }
      }
    }

    v187 = _swiftEmptyArrayStorage;
LABEL_288:
    v43 = v187;
    *(v1 + 408) = v187;
    v154 = v187[2];
    *(v1 + 416) = v154;
    if (v154)
    {
      break;
    }

    sub_10006A178(v8, v9);
LABEL_5:
    v3 = *(v1 + 360) + 1;
    if (v3 == *(v1 + 344))
    {
      goto LABEL_290;
    }
  }

LABEL_295:
  v157 = v43;

  v158 = Logger.logObject.getter();
  v159 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v158, v159))
  {
    v160 = swift_slowAlloc();
    v161 = swift_slowAlloc();
    v201[0] = v161;
    *v160 = v173.n128_u32[0];
    v162 = Array.description.getter();
    v164 = sub_1002FFA0C(v162, v163, v201);

    *(v160 + 4) = v164;
    _os_log_impl(&_mh_execute_header, v158, v159, "Removing stale TLKs %s", v160, 0xCu);
    sub_1000752F4(v161);
  }

  v165 = objc_opt_self();
  *(v196 + 424) = v165;
  if (!v157[2])
  {
    goto LABEL_326;
  }

  v166 = v165;
  *(v196 + 432) = 0;
  *(v196 + 440) = 0;
  v167 = *(v196 + 408);
  *(v196 + 80) = *(v167 + 32);
  v169 = *(v167 + 64);
  v168 = *(v167 + 80);
  v170 = *(v167 + 48);
  *(v196 + 144) = *(v167 + 96);
  *(v196 + 112) = v169;
  *(v196 + 128) = v168;
  *(v196 + 96) = v170;
  sub_10018C628(v196 + 80, v197);
  v171 = String._bridgeToObjectiveC()();
  *(v196 + 448) = v171;
  *(v196 + 16) = v196;
  *(v196 + 56) = v179;
  *(v196 + 24) = sub_1001738C8;
  v172 = swift_continuation_init();
  *(v196 + 208) = sub_100068FC4(&qword_100503460, &qword_10040B560);
  *(v196 + 152) = _NSConcreteStackBlock;
  *(v196 + 160) = 1107296256;
  *(v196 + 168) = sub_1001861F4;
  *(v196 + 176) = &unk_1004C94F8;
  *(v196 + 184) = v172;
  sub_1003AF710(v166, v171, v197);

  return _swift_continuation_await(v196 + 16);
}

uint64_t sub_1001738C8()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 456) = v2;
  v3 = *(v1 + 336);
  if (v2)
  {
    v4 = sub_100175660;
  }

  else
  {
    *(v1 + 464) = *(v1 + 80);
    v4 = sub_100173A10;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100173A10()
{
  v241 = v0;
  v1 = *(v0 + 432);
  v2 = *(v0 + 272);

  v3 = sub_100068FC4(&qword_100504F50, &qword_1004146C0);
  *(v0 + 176) = v3;
  v4 = sub_100075C60(&qword_100504F58, &qword_100504F50, &qword_1004146C0, &protocol conformance descriptor for <A> [A]);
  *(v0 + 152) = &off_1004C4100;
  *(v0 + 184) = v4;
  v5 = sub_1000752B0((v0 + 152), v3);
  sub_10008E434((*v5 + 32), (*v5 + 32 + *(*v5 + 16)), (v0 + 272));
  if (v1)
  {
  }

  v215 = (v0 + 272);
  v7 = v0 + 80;
  v9 = *(v0 + 464);
  v8 = *(v0 + 472);
  v10 = *(v0 + 272);
  v11 = *(v0 + 280);
  sub_1000752F4((v0 + 152));
  *(v0 + 288) = v10;
  *(v0 + 296) = v11;
  *(v0 + 176) = &type metadata for Data;
  *(v0 + 184) = &protocol witness table for Data;
  *(v0 + 152) = v9;
  *(v0 + 160) = v8;
  v12 = sub_1000752B0((v0 + 152), &type metadata for Data);
  __s2 = (v0 + 152);
  v13 = *v12;
  v14 = v12[1];
  sub_100069E2C(v10, v11);
  sub_100069E2C(v9, v8);
  sub_10008E4C8(v13, v14, v0 + 288);
  sub_10006A178(v10, v11);
  sub_1000752F4((v0 + 152));
  v16 = *(v0 + 288);
  v15 = *(v0 + 296);
  if (qword_100501A38 != -1)
  {
    goto LABEL_322;
  }

  while (2)
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    v18 = sub_1003AF1FC(v2, isa);

    if (v18)
    {
      goto LABEL_7;
    }

    v26 = Data._bridgeToObjectiveC()().super.isa;
    *__s2 = 0;
    v27 = sub_1003AEB5C(v2, v26, __s2);

    v28 = *__s2;
    if (!v27)
    {
      v200 = v28;
      _convertNSErrorToError(_:)();

LABEL_7:
      swift_willThrow();
      sub_10006A178(v16, v15);

      swift_errorRetain();
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v240[0] = v22;
        *v21 = 136315138;
        swift_getErrorValue();
        v23 = Error.localizedDescription.getter();
        v25 = sub_1002FFA0C(v23, v24, v240);

        *(v21 + 4) = v25;
        _os_log_impl(&_mh_execute_header, v19, v20, "Failed to delete stale TLK : %s", v21, 0xCu);
        sub_1000752F4(v22);
      }

      sub_100180988(32, 0);
      sub_10018C684(v7);

      goto LABEL_12;
    }

    v29 = v28;

    sub_10006A178(v16, v15);
    sub_10018C684(v7);

LABEL_12:
    v30 = *(v0 + 440) + 1;
    v31 = *(v0 + 408);
    if (v30 != *(v0 + 416))
    {
      v37 = (v0 + 152);
      if (v30 < *(v31 + 16))
      {
        v38 = *(v0 + 424);
        goto LABEL_19;
      }

LABEL_327:
      __break(1u);
LABEL_328:
      __break(1u);
LABEL_329:
      __break(1u);
LABEL_330:
      __break(1u);
LABEL_331:
      __break(1u);
LABEL_332:
      __break(1u);
LABEL_333:
      __break(1u);
LABEL_334:
      __break(1u);
LABEL_335:
      __break(1u);
LABEL_336:
      __break(1u);
LABEL_337:
      __break(1u);
LABEL_338:
      __break(1u);
LABEL_339:
      __break(1u);
LABEL_340:
      __break(1u);
LABEL_341:
      __break(1u);
LABEL_342:
      __break(1u);
LABEL_343:
      __break(1u);
LABEL_344:
      __break(1u);
LABEL_345:
      __break(1u);
LABEL_346:
      __break(1u);
LABEL_347:
      __break(1u);
LABEL_348:
      __break(1u);
LABEL_349:
      __break(1u);
LABEL_350:
      __break(1u);
LABEL_351:
      __break(1u);
LABEL_352:
      __break(1u);
LABEL_353:
      __break(1u);
LABEL_354:
      __break(1u);
LABEL_355:
      __break(1u);
LABEL_356:
      __break(1u);
LABEL_357:
      __break(1u);
LABEL_358:
      __break(1u);
LABEL_359:
      __break(1u);
LABEL_360:
      __break(1u);
    }

    v32 = *(v0 + 392);
    v33 = *(v0 + 376);
    v34 = *(v0 + 384);

    sub_10006A178(v33, v34);
    v35 = *(v0 + 360) + 1;
    if (v35 == *(v0 + 344))
    {
LABEL_14:
      v36 = *(v0 + 8);

      return v36(1);
    }

    v214 = v7;
    while (1)
    {
      *(v0 + 360) = v35;
      v51 = (*(v0 + 320) + 48 * v35);
      v52 = v51[4];
      v53 = v51[5];
      *(v0 + 368) = v53;
      v16 = v51[6];
      *(v0 + 376) = v16;
      v54 = v51[7];
      *(v0 + 384) = v54;
      v55 = v51[9];
      *(v0 + 392) = v55;

      sub_100069E2C(v16, v54);
      v234 = v55;
      v56 = [v234 currentTLK];
      *(v0 + 400) = v56;
      if (!v56)
      {

        sub_100069E2C(v16, v54);
        v57 = Logger.logObject.getter();
        v58 = v54;
        v59 = static os_log_type_t.error.getter();

        sub_10006A178(v16, v58);
        if (os_log_type_enabled(v57, v59))
        {
          v46 = v16;
          v47 = swift_slowAlloc();
          v48 = v53;
          v49 = swift_slowAlloc();
          v240[0] = v49;
          *v47 = 136315138;

          v50 = sub_1002FFA0C(v52, v48, v240);

          *(v47 + 4) = v50;
          _os_log_impl(&_mh_execute_header, v57, v59, "View %s doesn't have a TLK?", v47, 0xCu);
          sub_1000752F4(v49);

          sub_10006A178(v46, v58);
        }

        else
        {

          sub_10006A178(v16, v58);
        }

        goto LABEL_24;
      }

      v60 = v56;
      v226 = *(*(v0 + 328) + 16);
      if (v226)
      {
        break;
      }

      v222 = _swiftEmptyArrayStorage;
LABEL_309:
      v93 = v222;
      *(v0 + 408) = v222;
      v199 = v222[2];
      *(v0 + 416) = v199;
      if (v199)
      {
        goto LABEL_314;
      }

      sub_10006A178(v16, v54);
LABEL_24:
      v35 = *(v0 + 360) + 1;
      if (v35 == *(v0 + 344))
      {
        goto LABEL_14;
      }
    }

    v61 = 0;
    v222 = _swiftEmptyArrayStorage;
    v62 = v0 + 152;
    v230 = v16;
    v223 = v56;
    v224 = v54;
    while (1)
    {
      v229 = v61;
      v66 = *(v0 + 328) + 72 * v61;
      *v7 = *(v66 + 32);
      v68 = *(v66 + 64);
      v67 = *(v66 + 80);
      v69 = *(v66 + 48);
      *(v7 + 64) = *(v66 + 96);
      *(v7 + 32) = v68;
      *(v7 + 48) = v67;
      *(v7 + 16) = v69;
      v71 = *(v0 + 80);
      v70 = *(v0 + 88);
      sub_10018C628(v7, v62);
      v72 = [v60 tlkUUID];
      v73 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v75 = v74;

      v233 = v70;
      v76 = v70 >> 62;
      v77 = v75 >> 62;
      v235 = v71;
      if (v70 >> 62 == 3)
      {
        v78 = 0;
        if (!v71 && v70 == 0xC000000000000000 && v75 >> 62 == 3)
        {
          v78 = 0;
          if (!v73 && v75 == 0xC000000000000000)
          {
            sub_10018C684(v7);
            v63 = 0;
            v64 = 0xC000000000000000;
LABEL_31:
            sub_10006A178(v63, v64);
LABEL_32:
            v62 = v0 + 152;
            v16 = v230;
            v54 = v224;
            goto LABEL_33;
          }
        }
      }

      else if (v76 > 1)
      {
        if (v76 == 2)
        {
          v80 = *(v71 + 16);
          v79 = *(v71 + 24);
          v81 = __OFSUB__(v79, v80);
          v78 = v79 - v80;
          if (v81)
          {
            goto LABEL_336;
          }
        }

        else
        {
          v78 = 0;
        }
      }

      else if (v76)
      {
        LODWORD(v78) = HIDWORD(v71) - v71;
        if (__OFSUB__(HIDWORD(v71), v71))
        {
          goto LABEL_335;
        }

        v78 = v78;
      }

      else
      {
        v78 = BYTE6(v70);
      }

      v239 = v70 >> 62;
      if (v77 <= 1)
      {
        break;
      }

      if (v77 != 2)
      {
        if (v78)
        {
          goto LABEL_73;
        }

LABEL_30:
        sub_10018C684(v7);
        v63 = v73;
        v64 = v75;
        goto LABEL_31;
      }

      v83 = *(v73 + 16);
      v82 = *(v73 + 24);
      v81 = __OFSUB__(v82, v83);
      v84 = v82 - v83;
      if (v81)
      {
        goto LABEL_325;
      }

      if (v78 != v84)
      {
        goto LABEL_73;
      }

LABEL_62:
      if (v78 < 1)
      {
        goto LABEL_30;
      }

      if (v76 > 1)
      {
        if (v76 != 2)
        {
          *(v0 + 278) = 0;
          *v215 = 0;
          if (!v77)
          {
            *(v0 + 152) = v73;
            *(v0 + 160) = v75;
            *(v0 + 162) = BYTE2(v75);
            *(v0 + 163) = BYTE3(v75);
            *(v0 + 164) = BYTE4(v75);
            v166 = BYTE6(v75);
            *(v0 + 165) = BYTE5(v75);
            v167 = (v0 + 272);
            v168 = (v0 + 152);
            goto LABEL_269;
          }

          if (v77 == 2)
          {
            v161 = *(v73 + 16);
            v162 = *(v73 + 24);
            v89 = __DataStorage._bytes.getter();
            if (v89)
            {
              v163 = __DataStorage._offset.getter();
              if (__OFSUB__(v161, v163))
              {
                goto LABEL_355;
              }

              v89 += v161 - v163;
            }

            v81 = __OFSUB__(v162, v161);
            v164 = v162 - v161;
            if (v81)
            {
              goto LABEL_348;
            }

            v165 = __DataStorage._length.getter();
            if (!v89)
            {
              goto LABEL_387;
            }
          }

          else
          {
            v164 = (v73 >> 32) - v73;
            if (v73 >> 32 < v73)
            {
              goto LABEL_345;
            }

            v172 = __DataStorage._bytes.getter();
            if (!v172)
            {
              goto LABEL_385;
            }

            v173 = v172;
            v174 = __DataStorage._offset.getter();
            if (__OFSUB__(v73, v174))
            {
              goto LABEL_351;
            }

            v89 = v73 - v174 + v173;
            v165 = __DataStorage._length.getter();
            if (!v89)
            {
              goto LABEL_386;
            }
          }

          if (v165 >= v164)
          {
            v166 = v164;
          }

          else
          {
            v166 = v165;
          }

          v167 = (v0 + 272);
LABEL_268:
          v168 = v89;
LABEL_269:
          v175 = memcmp(v167, v168, v166);
          sub_10006A178(v73, v75);
          v90 = v233;
          if (v175)
          {
            goto LABEL_74;
          }

LABEL_298:
          sub_10018C684(v7);
          goto LABEL_32;
        }

        v148 = *(v71 + 16);
        v149 = __DataStorage._bytes.getter();
        if (v149)
        {
          v150 = __DataStorage._offset.getter();
          if (__OFSUB__(v148, v150))
          {
            goto LABEL_343;
          }

          v149 += v148 - v150;
        }

        __DataStorage._length.getter();
        if (v77 != 2)
        {
          if (v77 == 1)
          {
            if (v73 >> 32 < v73)
            {
              goto LABEL_349;
            }

            v151 = __DataStorage._bytes.getter();
            if (v151)
            {
              v152 = __DataStorage._offset.getter();
              if (__OFSUB__(v73, v152))
              {
                goto LABEL_359;
              }

              v151 += v73 - v152;
            }

            v153 = __DataStorage._length.getter();
            if (v153 >= (v73 >> 32) - v73)
            {
              v154 = (v73 >> 32) - v73;
            }

            else
            {
              v154 = v153;
            }

            if (!v149)
            {
              goto LABEL_376;
            }

            v90 = v233;
            if (!v151)
            {
              goto LABEL_375;
            }

            goto LABEL_292;
          }

          *(v0 + 152) = v73;
          *(v0 + 160) = v75;
          *(v0 + 162) = BYTE2(v75);
          *(v0 + 163) = BYTE3(v75);
          *(v0 + 164) = BYTE4(v75);
          *(v0 + 165) = BYTE5(v75);
          v90 = v233;
          if (!v149)
          {
            goto LABEL_374;
          }

LABEL_297:
          v189 = memcmp(v149, __s2, BYTE6(v75));
          sub_10006A178(v73, v75);
          if (v189)
          {
            goto LABEL_74;
          }

          goto LABEL_298;
        }

        v176 = *(v73 + 16);
        v177 = *(v73 + 24);
        v151 = __DataStorage._bytes.getter();
        if (v151)
        {
          v178 = __DataStorage._offset.getter();
          if (__OFSUB__(v176, v178))
          {
            goto LABEL_357;
          }

          v151 += v176 - v178;
        }

        v81 = __OFSUB__(v177, v176);
        v179 = v177 - v176;
        if (v81)
        {
          goto LABEL_352;
        }

        v180 = __DataStorage._length.getter();
        if (v180 >= v179)
        {
          v154 = v179;
        }

        else
        {
          v154 = v180;
        }

        if (!v149)
        {
          goto LABEL_378;
        }

        v90 = v233;
        if (!v151)
        {
          goto LABEL_377;
        }
      }

      else
      {
        if (!v76)
        {
          *(v0 + 152) = v71;
          *(v0 + 160) = v70;
          *(v0 + 162) = BYTE2(v70);
          *(v0 + 163) = BYTE3(v70);
          *(v0 + 164) = BYTE4(v70);
          *(v0 + 165) = BYTE5(v70);
          if (!v77)
          {
            *(v0 + 272) = v73;
            *(v0 + 280) = v75;
            *(v0 + 282) = BYTE2(v75);
            *(v0 + 283) = BYTE3(v75);
            *(v0 + 284) = BYTE4(v75);
            v166 = BYTE6(v75);
            *(v0 + 285) = BYTE5(v75);
            v167 = (v0 + 152);
            v168 = (v0 + 272);
            goto LABEL_269;
          }

          if (v77 == 1)
          {
            v85 = (v73 >> 32) - v73;
            if (v73 >> 32 < v73)
            {
              goto LABEL_346;
            }

            v86 = __DataStorage._bytes.getter();
            if (!v86)
            {
              goto LABEL_388;
            }

            v87 = v86;
            v88 = __DataStorage._offset.getter();
            if (__OFSUB__(v73, v88))
            {
              goto LABEL_350;
            }

            v89 = v73 - v88 + v87;
            v45 = __DataStorage._length.getter();
            if (!v89)
            {
              goto LABEL_389;
            }
          }

          else
          {
            v169 = *(v73 + 16);
            v170 = *(v73 + 24);
            v89 = __DataStorage._bytes.getter();
            if (v89)
            {
              v171 = __DataStorage._offset.getter();
              if (__OFSUB__(v169, v171))
              {
                goto LABEL_356;
              }

              v89 += v169 - v171;
            }

            v81 = __OFSUB__(v170, v169);
            v85 = v170 - v169;
            if (v81)
            {
              goto LABEL_347;
            }

            v45 = __DataStorage._length.getter();
            if (!v89)
            {
              goto LABEL_384;
            }
          }

          if (v45 >= v85)
          {
            v166 = v85;
          }

          else
          {
            v166 = v45;
          }

          v167 = (v0 + 152);
          goto LABEL_268;
        }

        if (v71 > v71 >> 32)
        {
          goto LABEL_342;
        }

        v149 = __DataStorage._bytes.getter();
        if (v149)
        {
          v158 = __DataStorage._offset.getter();
          if (__OFSUB__(v71, v158))
          {
            goto LABEL_344;
          }

          v149 += v71 - v158;
        }

        __DataStorage._length.getter();
        if (v77 == 2)
        {
          v181 = *(v73 + 16);
          v182 = *(v73 + 24);
          v151 = __DataStorage._bytes.getter();
          if (v151)
          {
            v183 = __DataStorage._offset.getter();
            if (__OFSUB__(v181, v183))
            {
              goto LABEL_358;
            }

            v151 += v181 - v183;
          }

          v81 = __OFSUB__(v182, v181);
          v184 = v182 - v181;
          if (v81)
          {
            goto LABEL_354;
          }

          v185 = __DataStorage._length.getter();
          if (v185 >= v184)
          {
            v154 = v184;
          }

          else
          {
            v154 = v185;
          }

          if (!v149)
          {
            goto LABEL_383;
          }

          v90 = v233;
          if (!v151)
          {
            goto LABEL_382;
          }
        }

        else
        {
          if (v77 != 1)
          {
            *(v0 + 152) = v73;
            *(v0 + 160) = v75;
            *(v0 + 162) = BYTE2(v75);
            *(v0 + 163) = BYTE3(v75);
            *(v0 + 164) = BYTE4(v75);
            *(v0 + 165) = BYTE5(v75);
            v90 = v233;
            if (!v149)
            {
              goto LABEL_379;
            }

            goto LABEL_297;
          }

          if (v73 >> 32 < v73)
          {
            goto LABEL_353;
          }

          v151 = __DataStorage._bytes.getter();
          if (v151)
          {
            v159 = __DataStorage._offset.getter();
            if (__OFSUB__(v73, v159))
            {
              goto LABEL_360;
            }

            v151 += v73 - v159;
          }

          v160 = __DataStorage._length.getter();
          if (v160 >= (v73 >> 32) - v73)
          {
            v154 = (v73 >> 32) - v73;
          }

          else
          {
            v154 = v160;
          }

          if (!v149)
          {
            goto LABEL_381;
          }

          v90 = v233;
          if (!v151)
          {
            goto LABEL_380;
          }
        }
      }

LABEL_292:
      if (v149 != v151)
      {
        v188 = memcmp(v149, v151, v154);
        sub_10006A178(v73, v75);
        if (v188)
        {
          goto LABEL_74;
        }

        goto LABEL_298;
      }

      sub_10018C684(v7);
      v186 = v73;
      v187 = v75;
LABEL_300:
      sub_10006A178(v186, v187);
      v62 = v0 + 152;
      v16 = v230;
LABEL_301:
      v54 = v224;
LABEL_33:
      v60 = v223;
      v65 = v229;
LABEL_34:
      v61 = v65 + 1;
      if (v61 == v226)
      {
        goto LABEL_309;
      }
    }

    if (!v77)
    {
      if (v78 != BYTE6(v75))
      {
        goto LABEL_73;
      }

      goto LABEL_62;
    }

    if (__OFSUB__(HIDWORD(v73), v73))
    {
      goto LABEL_326;
    }

    if (v78 == HIDWORD(v73) - v73)
    {
      goto LABEL_62;
    }

LABEL_73:
    sub_10006A178(v73, v75);
    v90 = v70;
LABEL_74:
    v91 = [v234 previousTLKs];
    sub_10009393C(0, &qword_100504F48, SESTLKRecord_ptr);
    v92 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v16 = v230;
    if (v92 >> 62)
    {
      v93 = _CocoaArrayWrapper.endIndex.getter();
      v94 = v93;
      v95 = v235;
      if (!v93)
      {
LABEL_303:

        v190 = v222;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v62 = v0 + 152;
        *(v0 + 288) = v222;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_10019F684(0, v222[2] + 1, 1);
          v62 = v0 + 152;
          v190 = *(v0 + 288);
        }

        v7 = v214;
        v60 = v223;
        v54 = v224;
        v65 = v229;
        v193 = v190[2];
        v192 = v190[3];
        if (v193 >= v192 >> 1)
        {
          v198 = v62;
          sub_10019F684((v192 > 1), v193 + 1, 1);
          v62 = v198;
          v65 = v229;
          v190 = *(v198 + 136);
        }

        v190[2] = v193 + 1;
        v222 = v190;
        v194 = &v190[9 * v193];
        *(v194 + 2) = *v214;
        v195 = *(v214 + 16);
        v196 = *(v214 + 32);
        v197 = *(v214 + 48);
        *(v194 + 96) = *(v214 + 64);
        *(v194 + 4) = v196;
        *(v194 + 5) = v197;
        *(v194 + 3) = v195;
        goto LABEL_34;
      }
    }

    else
    {
      v94 = *((v92 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v95 = v235;
      if (!v94)
      {
        goto LABEL_303;
      }
    }

    v15 = 0;
    v237 = v92 & 0xFFFFFFFFFFFFFF8;
    v238 = v92 & 0xC000000000000001;
    __n = BYTE6(v90);
    v225 = v95;
    v216 = (v95 >> 32) - v95;
    v217 = v95 >> 32;
    v218 = HIDWORD(v95);
    v81 = __OFSUB__(HIDWORD(v95), v95);
    v96 = HIDWORD(v95) - v95;
    v97 = v81;
    v228 = v97;
    v227 = v96;
    v236 = v92;
LABEL_83:
    if (v238)
    {
      v93 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v15 >= *(v237 + 16))
      {
        goto LABEL_313;
      }

      v93 = *(v92 + 8 * v15 + 32);
    }

    v98 = v93;
    v7 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      __break(1u);
LABEL_313:
      __break(1u);
LABEL_314:
      v201 = v93;

      v202 = Logger.logObject.getter();
      v203 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v202, v203))
      {
        v204 = swift_slowAlloc();
        v205 = swift_slowAlloc();
        v240[0] = v205;
        *v204 = 136315138;
        v206 = Array.description.getter();
        v208 = sub_1002FFA0C(v206, v207, v240);

        *(v204 + 4) = v208;
        _os_log_impl(&_mh_execute_header, v202, v203, "Removing stale TLKs %s", v204, 0xCu);
        sub_1000752F4(v205);
      }

      v209 = objc_opt_self();
      *(v0 + 424) = v209;
      v37 = (v0 + 152);
      if (v201[2])
      {
        v38 = v209;
        v30 = 0;
        v31 = *(v0 + 408);
LABEL_19:
        *(v0 + 432) = 0;
        *(v0 + 440) = v30;
        v39 = v31 + 72 * v30;
        *v7 = *(v39 + 32);
        v40 = *(v39 + 48);
        v41 = *(v39 + 64);
        v42 = *(v39 + 80);
        *(v7 + 64) = *(v39 + 96);
        *(v7 + 32) = v41;
        *(v7 + 48) = v42;
        *(v7 + 16) = v40;
        sub_10018C628(v7, v37);
        v43 = String._bridgeToObjectiveC()();
        *(v0 + 448) = v43;
        *(v0 + 16) = v0;
        *(v0 + 56) = v215;
        *(v0 + 24) = sub_1001738C8;
        v44 = swift_continuation_init();
        *(v0 + 208) = sub_100068FC4(&qword_100503460, &qword_10040B560);
        *(v0 + 152) = _NSConcreteStackBlock;
        *(v0 + 160) = 1107296256;
        *(v0 + 168) = sub_1001861F4;
        *(v0 + 176) = &unk_1004C94F8;
        *(v0 + 184) = v44;
        sub_1003AF710(v38, v43, v37);
        v45 = v0 + 16;

        return _swift_continuation_await(v45);
      }

      goto LABEL_327;
    }

    v2 = [v93 tlkUUID];
    v99 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v101 = v100;

    v102 = v101 >> 62;
    if (v101 >> 62 == 3)
    {
      v103 = 0;
      v104 = v239;
      if (v239 == 3 && !v99 && v101 == 0xC000000000000000)
      {
        v99 = 0;
        if (v235)
        {
LABEL_221:
          v155 = v0 + 152;
          v7 = v214;
          v60 = v223;
          v54 = v224;
        }

        else
        {
          v155 = v0 + 152;
          v7 = v214;
          v60 = v223;
          v54 = v224;
          if (v90 == 0xC000000000000000)
          {

            sub_10018C684(v214);

            v156 = 0;
            v157 = 0xC000000000000000;
LABEL_223:
            sub_10006A178(v156, v157);
            v65 = v229;
            v62 = v155;
            goto LABEL_34;
          }
        }

        sub_10018C684(v7);

        v156 = v99;
        v157 = v101;
        goto LABEL_223;
      }

LABEL_101:
      if (v104 <= 1)
      {
        goto LABEL_102;
      }

LABEL_95:
      if (v104 != 2)
      {
        if (!v103)
        {
          goto LABEL_221;
        }

LABEL_81:

        v93 = sub_10006A178(v99, v101);
        goto LABEL_82;
      }

      v106 = *(v235 + 16);
      v105 = *(v235 + 24);
      v81 = __OFSUB__(v105, v106);
      v107 = v105 - v106;
      if (v81)
      {
        __break(1u);
LABEL_318:
        __break(1u);
LABEL_319:
        __break(1u);
LABEL_320:
        __break(1u);
LABEL_321:
        __break(1u);
LABEL_322:
        swift_once();
        continue;
      }
    }

    else
    {
      v104 = v239;
      if (v102 <= 1)
      {
        if (v102)
        {
          LODWORD(v103) = HIDWORD(v99) - v99;
          if (__OFSUB__(HIDWORD(v99), v99))
          {
            goto LABEL_320;
          }

          v103 = v103;
          if (v239 <= 1)
          {
            goto LABEL_102;
          }
        }

        else
        {
          v103 = BYTE6(v101);
          if (v239 <= 1)
          {
            goto LABEL_102;
          }
        }

        goto LABEL_95;
      }

      if (v102 == 2)
      {
        v109 = *(v99 + 16);
        v108 = *(v99 + 24);
        v81 = __OFSUB__(v108, v109);
        v103 = v108 - v109;
        if (v81)
        {
          goto LABEL_319;
        }

        goto LABEL_101;
      }

      v103 = 0;
      if (v239 > 1)
      {
        goto LABEL_95;
      }

LABEL_102:
      v107 = __n;
      if (v104)
      {
        v107 = v227;
        if (v228)
        {
          goto LABEL_318;
        }
      }
    }

    break;
  }

  if (v103 != v107)
  {
    goto LABEL_81;
  }

  if (v103 < 1)
  {
    goto LABEL_221;
  }

  if (v102 <= 1)
  {
    if (!v102)
    {
      *(v0 + 152) = v99;
      *(v0 + 160) = v101;
      *(v0 + 162) = BYTE2(v101);
      *(v0 + 163) = BYTE3(v101);
      *(v0 + 164) = BYTE4(v101);
      *(v0 + 165) = BYTE5(v101);
      sub_10019F024(__s2, v235, v90, v240);

      v93 = sub_10006A178(v99, v101);
      v90 = v233;
      if (v240[0])
      {
        goto LABEL_248;
      }

      goto LABEL_82;
    }

    if (v99 > v99 >> 32)
    {
      goto LABEL_321;
    }

    v114 = __DataStorage._bytes.getter();
    if (v114)
    {
      v115 = v114;
      v116 = __DataStorage._offset.getter();
      if (__OFSUB__(v99, v116))
      {
        goto LABEL_324;
      }

      __s1a = (v99 - v116 + v115);
    }

    else
    {
      __s1a = 0;
    }

    __DataStorage._length.getter();
    v16 = v230;
    v90 = v233;
    if (v239 != 2)
    {
      if (v239 == 1)
      {
        if (v217 < v225)
        {
          goto LABEL_333;
        }

        v120 = __DataStorage._bytes.getter();
        if (v120)
        {
          v127 = __DataStorage._offset.getter();
          if (__OFSUB__(v225, v127))
          {
            goto LABEL_341;
          }

          v120 += v225 - v127;
        }

        v128 = __DataStorage._length.getter();
        v126 = v216;
        if (v128 < v216)
        {
          v126 = v128;
        }

        v123 = __s1a;
        if (!__s1a)
        {
          goto LABEL_367;
        }

        if (!v120)
        {
          goto LABEL_366;
        }

        goto LABEL_156;
      }

      v132 = __s1a;
      *(v0 + 152) = v235;
      *(v0 + 156) = v218;
      *(v0 + 157) = *(&v235 + 5);
      *(v0 + 159) = HIBYTE(v235);
      *(v0 + 160) = v233;
      *(v0 + 164) = WORD2(v233);
      if (!__s1a)
      {
        goto LABEL_371;
      }

LABEL_171:
      v133 = (v0 + 152);
LABEL_172:
      v138 = memcmp(v132, v133, __n);

      v93 = sub_10006A178(v99, v101);
      if (!v138)
      {
        goto LABEL_248;
      }

      goto LABEL_82;
    }

    v210 = *(v235 + 24);
    v213 = *(v235 + 16);
    v120 = __DataStorage._bytes.getter();
    if (v120)
    {
      v136 = __DataStorage._offset.getter();
      v137 = v213;
      if (__OFSUB__(v213, v136))
      {
        goto LABEL_339;
      }

      v120 += v213 - v136;
    }

    else
    {
      v137 = v213;
    }

    v145 = v210 - v137;
    if (__OFSUB__(v210, v137))
    {
      goto LABEL_334;
    }

    v146 = __DataStorage._length.getter();
    if (v146 >= v145)
    {
      v126 = v145;
    }

    else
    {
      v126 = v146;
    }

    v123 = __s1a;
    if (!__s1a)
    {
      goto LABEL_373;
    }

    if (!v120)
    {
      goto LABEL_372;
    }

LABEL_197:
    v90 = v233;
    if (v123 != v120)
    {
      goto LABEL_198;
    }

LABEL_299:

    v7 = v214;
    sub_10018C684(v214);
    v186 = v99;
    v187 = v101;
    goto LABEL_300;
  }

  if (v102 == 2)
  {
    v110 = *(v99 + 16);
    v111 = __DataStorage._bytes.getter();
    if (v111)
    {
      v112 = v111;
      v113 = __DataStorage._offset.getter();
      if (__OFSUB__(v110, v113))
      {
        __break(1u);
LABEL_324:
        __break(1u);
LABEL_325:
        __break(1u);
LABEL_326:
        __break(1u);
        goto LABEL_327;
      }

      __s1 = (v110 - v113 + v112);
    }

    else
    {
      __s1 = 0;
    }

    __DataStorage._length.getter();
    v16 = v230;
    v90 = v233;
    if (v239 != 2)
    {
      if (v239 != 1)
      {
        v132 = __s1;
        *(v0 + 152) = v235;
        *(v0 + 156) = v218;
        *(v0 + 157) = *(&v235 + 5);
        *(v0 + 159) = HIBYTE(v235);
        *(v0 + 160) = v233;
        *(v0 + 164) = WORD2(v233);
        if (!__s1)
        {
          goto LABEL_363;
        }

        goto LABEL_171;
      }

      if (v217 < v225)
      {
        goto LABEL_330;
      }

      v120 = __DataStorage._bytes.getter();
      if (v120)
      {
        v124 = __DataStorage._offset.getter();
        if (__OFSUB__(v225, v124))
        {
          goto LABEL_340;
        }

        v120 += v225 - v124;
      }

      v125 = __DataStorage._length.getter();
      v126 = v216;
      if (v125 < v216)
      {
        v126 = v125;
      }

      v123 = __s1;
      if (!__s1)
      {
        goto LABEL_370;
      }

      if (!v120)
      {
        goto LABEL_369;
      }

LABEL_156:
      if (v123 == v120)
      {
        goto LABEL_299;
      }

LABEL_198:
      v122 = v126;
LABEL_199:
      v147 = memcmp(v123, v120, v122);

      v93 = sub_10006A178(v99, v101);
      v16 = v230;
      if (!v147)
      {
        goto LABEL_248;
      }

      goto LABEL_82;
    }

    v210 = *(v235 + 24);
    v212 = *(v235 + 16);
    v120 = __DataStorage._bytes.getter();
    if (v120)
    {
      v134 = __DataStorage._offset.getter();
      v135 = v212;
      if (__OFSUB__(v212, v134))
      {
        goto LABEL_338;
      }

      v120 += v212 - v134;
    }

    else
    {
      v135 = v212;
    }

    v143 = v210 - v135;
    if (__OFSUB__(v210, v135))
    {
      goto LABEL_332;
    }

    v144 = __DataStorage._length.getter();
    if (v144 >= v143)
    {
      v126 = v143;
    }

    else
    {
      v126 = v144;
    }

    v123 = __s1;
    if (!__s1)
    {
      goto LABEL_365;
    }

    if (!v120)
    {
      goto LABEL_364;
    }

    goto LABEL_197;
  }

  *(v0 + 158) = 0;
  *__s2 = 0;
  if (v104 == 2)
  {
    __s1b = *(v235 + 16);
    v211 = *(v235 + 24);
    v129 = __DataStorage._bytes.getter();
    if (v129)
    {
      v130 = __DataStorage._offset.getter();
      v131 = __s1b;
      if (__OFSUB__(__s1b, v130))
      {
        goto LABEL_337;
      }

      v129 = &__s1b[v129 - v130];
    }

    else
    {
      v131 = __s1b;
    }

    v139 = v211 - v131;
    if (__OFSUB__(v211, v131))
    {
      goto LABEL_329;
    }

    v140 = __DataStorage._length.getter();
    if (!v129)
    {
      goto LABEL_368;
    }

    if (v140 >= v139)
    {
      v141 = v139;
    }

    else
    {
      v141 = v140;
    }

    v142 = memcmp(__s2, v129, v141);

    v93 = sub_10006A178(v99, v101);
    v16 = v230;
    v90 = v233;
    if (!v142)
    {
LABEL_248:

      v7 = v214;
      sub_10018C684(v214);
      v62 = v0 + 152;
      goto LABEL_301;
    }

LABEL_82:
    ++v15;
    v92 = v236;
    if (v7 == v94)
    {
      goto LABEL_303;
    }

    goto LABEL_83;
  }

  if (v104 != 1)
  {
    *(v0 + 272) = v235;
    *(v0 + 276) = v218;
    *(v0 + 277) = *(&v235 + 5);
    *(v0 + 279) = HIBYTE(v235);
    *(v0 + 280) = v90;
    *(v0 + 282) = BYTE2(v90);
    *(v0 + 283) = BYTE3(v90);
    *(v0 + 284) = BYTE4(v90);
    *(v0 + 285) = BYTE5(v90);
    v132 = (v0 + 152);
    v133 = (v0 + 272);
    goto LABEL_172;
  }

  if (v217 < v225)
  {
    goto LABEL_328;
  }

  v117 = __DataStorage._bytes.getter();
  if (v117)
  {
    v118 = v117;
    v119 = __DataStorage._offset.getter();
    if (__OFSUB__(v225, v119))
    {
      goto LABEL_331;
    }

    v120 = (v225 - v119 + v118);
    v121 = __DataStorage._length.getter();
    if (!v120)
    {
      goto LABEL_362;
    }

    if (v121 >= v216)
    {
      v122 = v216;
    }

    else
    {
      v122 = v121;
    }

    v123 = (v0 + 152);
    goto LABEL_199;
  }

  __DataStorage._length.getter();
LABEL_362:
  __break(1u);
LABEL_363:
  __break(1u);
LABEL_364:
  __break(1u);
LABEL_365:
  __break(1u);
LABEL_366:
  __break(1u);
LABEL_367:
  __break(1u);
LABEL_368:
  __break(1u);
LABEL_369:
  __break(1u);
LABEL_370:
  __break(1u);
LABEL_371:
  __break(1u);
LABEL_372:
  __break(1u);
LABEL_373:
  __break(1u);
LABEL_374:
  __break(1u);
LABEL_375:
  __break(1u);
LABEL_376:
  __break(1u);
LABEL_377:
  __break(1u);
LABEL_378:
  __break(1u);
LABEL_379:
  __break(1u);
LABEL_380:
  __break(1u);
LABEL_381:
  __break(1u);
LABEL_382:
  __break(1u);
LABEL_383:
  __break(1u);
LABEL_384:
  __break(1u);
LABEL_385:
  __DataStorage._length.getter();
LABEL_386:
  __break(1u);
LABEL_387:
  __break(1u);
LABEL_388:
  v45 = __DataStorage._length.getter();
LABEL_389:
  __break(1u);
  return _swift_continuation_await(v45);
}