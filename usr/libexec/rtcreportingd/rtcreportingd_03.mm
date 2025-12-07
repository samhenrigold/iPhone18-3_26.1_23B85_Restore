uint64_t sub_10003DD7C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_100007C10(a1, v1);
}

uint64_t sub_10003DD94(uint64_t a1)
{
  v2 = *(*(v1 + 24) + 112);
  *(v1 + 32) = v2;
  return sub_100007C10(a1, v2);
}

uint64_t sub_10003DDB0()
{
  sub_100002624();
  v9 = v1;
  sub_100001D10();
  v2 = sub_100007C28(54);
  sub_100009400(v2, v3, v4);
  if (v0)
  {
    sub_100005150();

    return v5();
  }

  else
  {
    sub_10003DE7C(*(v1 + 16), &v8);

    sub_10000FF74();

    return v7();
  }
}

uint64_t sub_10003DE7C@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  sub_1000228D4(&qword_10008FDB0, &qword_1000700B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10006CAD0;
  *(inited + 56) = &type metadata for Int;
  *(inited + 64) = &off_100086250;
  *(inited + 32) = a1;
  sub_100009524(inited);
  if (v2)
  {
    swift_setDeallocating();
    return sub_10000C4AC();
  }

  else
  {
    swift_setDeallocating();
    sub_10000C4AC();
    v7 = _swiftEmptyArrayStorage;
    while (1)
    {
      result = sub_10000C50C();
      if (!result)
      {
        *a2 = v7;
        return result;
      }

      v8 = *(result + 16);

      if (!sqlite3_column_text(v8, 0))
      {
        break;
      }

      v9 = String.init(cString:)();
      v11 = v10;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_100020328();
        v7 = v14;
      }

      v12 = v7[2];
      if (v12 >= v7[3] >> 1)
      {
        sub_100020328();
        v7 = v15;
      }

      v7[2] = v12 + 1;
      v13 = &v7[2 * v12];
      v13[4] = v9;
      v13[5] = v11;
    }

    sub_100022DA8(v16, v17, v18);
    swift_allocError();
    *v19 = 0;
    swift_willThrow();
  }
}

uint64_t sub_10003E06C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return sub_100001F2C(sub_10003E090, v4);
}

uint64_t sub_10003E090()
{
  sub_100004680();
  *(v0 + 56) = *(*(v0 + 48) + 112);

  v1 = sub_100002948();

  return _swift_task_switch(v1, v2, v3);
}

uint64_t sub_10003E0FC()
{
  sub_100002624();
  sub_100001D10();
  v0 = sub_100007C28(242);
  sub_1000223A4(v0, v1, v2, v3, v4, v5, v6);
  sub_10000FF74();

  return v7();
}

uint64_t sub_10003E188(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_100007C10(a1, v1);
}

uint64_t sub_10003E1A0()
{
  sub_100004680();
  *(v0 + 32) = *(*(v0 + 24) + 112);

  v1 = sub_100002948();

  return _swift_task_switch(v1, v2, v3);
}

uint64_t sub_10003E208()
{
  sub_100002624();
  sub_100022640(v0[4], v0[2]);
  v0[5] = 0;
  v1 = v0[3];

  return _swift_task_switch(sub_100013B90, v1, 0);
}

uint64_t sub_10003E2B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = 0;
  v6 = *(a2 + 16);
  v7 = a2 + 32;
  v8 = "";
  for (i = a1; ; a1 = i)
  {
    if (v5 == v6)
    {
      return sub_100022084(a1, a2, a3);
    }

    if (*(a1 + 24) == 1)
    {
      break;
    }

    v9 = v7;
    v10 = *(v7 + 8 * v5);
    v11 = v8;
    result = sub_100009400(0xD000000000000027, v8 | 0x8000000000000000, a3);
    if (v4)
    {
      return result;
    }

    sub_1000228D4(&qword_10008FDB0, &qword_1000700B0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10006CAD0;
    *(inited + 56) = &type metadata for Int64;
    *(inited + 64) = &off_100086270;
    *(inited + 32) = v10;
    sub_100008E88();
    sub_100009524(v14);
    ++v5;
    swift_setDeallocating();
    sub_10000C4AC();
    while (1)
    {
      sub_100008E88();
      v4 = 0;
      if (!sub_10000C50C())
      {
        break;
      }
    }

    v7 = v9;
    v8 = v11;
  }

  sub_10002282C(a1, a2, a3);
  sub_100011748();
  swift_allocError();
  *v15 = 1;
  *(v15 + 8) = 0xD00000000000001DLL;
  *(v15 + 16) = 0x8000000100071310;
  return swift_willThrow();
}

uint64_t sub_10003E488(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_100007C10(a1, v1);
}

uint64_t sub_10003E4A0()
{
  sub_100004680();
  v0[4] = *(v0[3] + 112);
  v0[5] = 0;
  v1 = swift_task_alloc();
  v2 = sub_100006FD4(v1);

  return _swift_task_switch(v2, v3, v4);
}

uint64_t sub_10003E4FC()
{
  sub_100002624();
  v1 = v0[5];
  v0[7] = sub_10003ABE4(sub_10003EF38);
  v0[8] = v1;
  if (v1)
  {
    v2 = v0[3];
    v3 = sub_10003E644;
  }

  else
  {
    v4 = v0[3];

    v3 = sub_10003E5AC;
    v2 = v4;
  }

  return _swift_task_switch(v3, v2, 0);
}

uint64_t sub_10003E5AC()
{
  sub_100004680();
  if (v0[7] == 50)
  {
    v0[5] = v0[8];
    v1 = swift_task_alloc();
    v2 = sub_100006FD4(v1);

    return _swift_task_switch(v2, v3, v4);
  }

  else
  {
    sub_100009B24();

    return v5();
  }
}

uint64_t sub_10003E644()
{
  sub_100004680();

  sub_100001D4C();

  return v0();
}

uint64_t sub_10003E6A0@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v11 = a2;
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  (*(v5 + 16))(&v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  (*(v5 + 32))(v8 + v7, &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  sub_10003AB18(0xD00000000000003CLL, 0x8000000100072150, sub_10003EF54);

  if (!v2)
  {
    result = sub_100022074();
    *v11 = result;
  }

  return result;
}

uint64_t sub_10003E820()
{
  getTimeIntervalSince1970(Date:)();
  v2 = v1;
  sub_1000228D4(&qword_10008FDB0, &qword_1000700B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10006CAD0;
  *(inited + 56) = &type metadata for Int64;
  *(inited + 64) = &off_100086270;
  *(inited + 32) = v2;
  sub_100009524(inited);
  if (v0)
  {
    swift_setDeallocating();
    return sub_10000C4AC();
  }

  else
  {
    swift_setDeallocating();
    sub_10000C4AC();
    while (1)
    {
      result = sub_10000C50C();
      if (!result)
      {
        break;
      }
    }
  }

  return result;
}

uint64_t sub_10003E8F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[46] = a4;
  v5[47] = v4;
  v5[44] = a2;
  v5[45] = a3;
  v5[43] = a1;
  return sub_100001F2C(sub_10003E91C, v4);
}

uint64_t sub_10003E91C()
{
  v1 = v0[45];
  v2 = *(v0[47] + 112);
  v0[48] = v2;
  if (v1)
  {
    v3 = sub_10003E954;
  }

  else
  {
    v3 = sub_10003EB38;
  }

  return sub_100001F2C(v3, v2);
}

uint64_t sub_10003E954()
{
  sub_100001D10();
  v2 = sub_100007C28(197);
  sub_100009400(v2, v3, v4);
  if (v0)
  {
    sub_100005150();
  }

  else
  {
    v5 = *(v1 + 360);
    v7 = *(v1 + 344);
    v6 = *(v1 + 352);
    getTimeIntervalSince1970(Date:)();
    v9 = v8;
    sub_1000228D4(&qword_10008FDB0, &qword_1000700B0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10006EAF0;
    *(v1 + 248) = *v7;
    *(inited + 56) = &type metadata for String;
    *(inited + 64) = &off_1000862B0;
    *(inited + 32) = *v7;
    *(v1 + 264) = v7[1];
    *(inited + 96) = &type metadata for String;
    *(inited + 104) = &off_1000862B0;
    *(inited + 72) = v7[1];
    *(v1 + 280) = v7[2];
    *(inited + 136) = &type metadata for String;
    *(inited + 144) = &off_1000862B0;
    *(inited + 112) = v7[2];
    *(inited + 176) = &type metadata for String;
    *(inited + 184) = &off_1000862B0;
    *(inited + 152) = v6;
    *(inited + 160) = v5;
    *(inited + 216) = &type metadata for Int64;
    *(inited + 224) = &off_100086270;
    *(inited + 192) = v9;
    sub_100005CC0(v1 + 248, v1 + 296);
    sub_100005CC0(v1 + 264, v1 + 312);
    sub_100005CC0(v1 + 280, v1 + 328);

    sub_100009524(inited);
    swift_setDeallocating();
    sub_10000C4AC();
    while (sub_10000C50C())
    {
    }

    sub_100009B24();
  }

  return v11();
}

uint64_t sub_10003EB38()
{
  sub_100002624();
  sub_100001D10();
  v2 = sub_100007C28(76);
  v5 = sub_100009400(v2, v3, v4);
  if (v0)
  {
    *(v1 + 392) = v0;
    v8 = *(v1 + 376);
    v7 = sub_10003EBFC;
  }

  else
  {
    sub_10003EC20(v5, *(v1 + 344));
    v6 = *(v1 + 376);

    v7 = sub_100013B90;
    v8 = v6;
  }

  return _swift_task_switch(v7, v8, 0);
}

uint64_t sub_10003EC20(uint64_t a1, __int128 *a2)
{
  sub_1000228D4(&qword_10008FDB0, &qword_1000700B0);
  inited = swift_initStackObject();
  v6 = a2[1];
  v12 = *a2;
  v5 = v12;
  *(inited + 56) = &type metadata for String;
  *(inited + 64) = &off_1000862B0;
  *(inited + 16) = xmmword_10006CAC0;
  *(inited + 32) = v5;
  *(inited + 96) = &type metadata for String;
  *(inited + 104) = &off_1000862B0;
  *(inited + 72) = v6;
  v10 = a2[2];
  v7 = v10;
  v11 = v6;
  *(inited + 136) = &type metadata for String;
  *(inited + 144) = &off_1000862B0;
  *(inited + 112) = v7;
  sub_100005CC0(&v12, v9);
  sub_100005CC0(&v11, v9);
  sub_100005CC0(&v10, v9);
  sub_100009524(inited);
  if (v2)
  {
    swift_setDeallocating();
    return sub_10000C4AC();
  }

  else
  {
    swift_setDeallocating();
    sub_10000C4AC();
    while (1)
    {
      result = sub_10000C50C();
      if (!result)
      {
        break;
      }
    }
  }

  return result;
}

uint64_t sub_10003ED40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (*(a1 + 24) == 1)
  {
    sub_10002282C(a1, a2, a3);
    swift_allocError();
    *v6 = 1;
    *(v6 + 8) = 0xD00000000000001DLL;
    *(v6 + 16) = 0x8000000100071310;
    return swift_willThrow();
  }

  else
  {
    result = sub_100009400(0xD00000000000001DLL, 0x8000000100072420, a3);
    if (!v4)
    {
      while (sub_10000C50C())
      {
      }

      result = sub_100022074();
      *a4 = result;
    }
  }

  return result;
}

uint64_t sub_10003EE4C(uint64_t a1)
{
  v2 = *(*(v1 + 16) + 112);
  *(v1 + 24) = v2;
  return sub_100007C10(a1, v2);
}

uint64_t sub_10003EE68()
{
  sub_100002624();
  sub_100009400(0x4D5555434156, 0xE600000000000000, v0);
  while (sub_10000C50C())
  {
  }

  sub_100009B24();

  return v2();
}

uint64_t sub_10003EF54()
{
  v0 = type metadata accessor for Date();
  sub_100001D80(v0);
  return sub_10003E820();
}

uint64_t sub_10003EFCC(uint64_t a1)
{
  v2 = sub_1000228D4(&qword_10008E758, &qword_10006DC38);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10003F034(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_100003C44();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_10003F094(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_100003C44();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_10003F0EC(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DiskCacheError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 1 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 1) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for DiskCacheError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_10003F29C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10008F118;
  if (!qword_10008F118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008F118);
  }

  return result;
}

uint64_t sub_10003F2F0()
{
  if ((byte_10008F120 & 1) == 0)
  {
    sub_1000228D4(&qword_10008EEE8, &unk_10006F660);
    v0 = sub_1000228D4(&qword_10008EEF0, &qword_10006E980);
    v1 = *(*(v0 - 8) + 72);
    v2 = (*(*(v0 - 8) + 80) + 32) & ~*(*(v0 - 8) + 80);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_10006ECC0;
    v4 = (v3 + v2);
    v5 = *(v0 + 48);
    *v4 = XPC_ACTIVITY_DELAY;
    *(v4 + v5) = 300;
    type metadata accessor for XPCObject(0);
    swift_storeEnumTagMultiPayload();
    v6 = (v4 + v1);
    v7 = *(v0 + 48);
    *v6 = XPC_ACTIVITY_GRACE_PERIOD;
    *(v6 + v7) = 120;
    swift_storeEnumTagMultiPayload();
    v8 = (v4 + 2 * v1);
    v9 = (v8 + *(v0 + 48));
    *v8 = XPC_ACTIVITY_PRIORITY;
    *v9 = String.init(cString:)();
    v9[1] = v10;
    swift_storeEnumTagMultiPayload();
    v11 = (v4 + 3 * v1);
    v12 = *(v0 + 48);
    *v11 = XPC_ACTIVITY_ALLOW_BATTERY;
    *(v11 + v12) = 0;
    result = swift_storeEnumTagMultiPayload();
    if (XPC_ACTIVITY_POWER_NAP)
    {
      sub_100012308(XPC_ACTIVITY_POWER_NAP);
      *(v14 + v15) = 1;
      result = sub_10001C178();
      if (XPC_ACTIVITY_RANDOM_INITIAL_DELAY)
      {
        sub_100012308(XPC_ACTIVITY_RANDOM_INITIAL_DELAY);
        sub_10000916C(60);
        result = swift_storeEnumTagMultiPayload();
        if (XPC_ACTIVITY_REQUIRE_NETWORK_CONNECTIVITY)
        {
          sub_100012308(XPC_ACTIVITY_REQUIRE_NETWORK_CONNECTIVITY);
          *(v16 + v17) = 1;
          result = sub_10001C178();
          if (XPC_ACTIVITY_REQUIRE_INEXPENSIVE_NETWORK_CONNECTIVITY)
          {
            v18 = *(v0 + 48);
            v19 = (&v4[v1] - v1);
            *v19 = XPC_ACTIVITY_REQUIRE_INEXPENSIVE_NETWORK_CONNECTIVITY;
            *(v19 + v18) = 1;
            result = sub_10001C178();
            if (XPC_ACTIVITY_NETWORK_UPLOAD_SIZE)
            {
              sub_100012308(XPC_ACTIVITY_NETWORK_UPLOAD_SIZE);
              sub_10000916C(5242880);
              result = swift_storeEnumTagMultiPayload();
              if (XPC_ACTIVITY_EXPECTED_DURATION)
              {
                sub_100012308(XPC_ACTIVITY_EXPECTED_DURATION);
                sub_10000916C(XPC_ACTIVITY_INTERVAL_1_MIN);
                result = swift_storeEnumTagMultiPayload();
                if (XPC_ACTIVITY_GROUP_NAME)
                {
                  v20 = (v4 + 10 * v1);
                  v21 = (v20 + *(v0 + 48));
                  *v20 = XPC_ACTIVITY_GROUP_NAME;
                  *v21 = 0xD00000000000001DLL;
                  v21[1] = 0x8000000100071DE0;
                  result = swift_storeEnumTagMultiPayload();
                  if (XPC_ACTIVITY_GROUP_CONCURRENCY_LIMIT)
                  {
                    sub_100012308(XPC_ACTIVITY_GROUP_CONCURRENCY_LIMIT);
                    sub_10000916C(1);
                    swift_storeEnumTagMultiPayload();
                    sub_1000228D4(&qword_10008EEF8, &unk_10006F670);
                    sub_100038DC4();
                    sub_100008F3C();
                    goto LABEL_12;
                  }

LABEL_22:
                  __break(1u);
                  return result;
                }

LABEL_21:
                __break(1u);
                goto LABEL_22;
              }

LABEL_20:
              __break(1u);
              goto LABEL_21;
            }

LABEL_19:
            __break(1u);
            goto LABEL_20;
          }

LABEL_18:
          __break(1u);
          goto LABEL_19;
        }

LABEL_17:
        __break(1u);
        goto LABEL_18;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_17;
  }

  sub_1000228D4(&qword_10008EEF8, &unk_10006F670);
  type metadata accessor for XPCObject(0);
  sub_100038DC4();
LABEL_12:

  return Dictionary.init(dictionaryLiteral:)();
}

uint64_t sub_10003F6B4()
{
  v0 = type metadata accessor for Logger();
  sub_100025BD8(v0, qword_100095A30);
  sub_1000050E4(v0, qword_100095A30);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10003F734()
{
  sub_100004680();
  v1[19] = v0;
  v1[20] = *(type metadata accessor for CachedSession(0) - 8);
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();

  return _swift_task_switch(sub_10003F858, v0, 0);
}

void sub_10003F858()
{
  sub_100002624();
  if (qword_10008DD60 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[31] = sub_1000050E4(v1, qword_100095A30);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (sub_100003B24(v3))
  {
    *swift_slowAlloc() = 0;
    sub_1000028B8();
    _os_log_impl(v4, v5, v6, v7, v8, 2u);
    sub_100003910();
  }

  v0[13] = &_swiftEmptySetSingleton;
  v9 = qword_100095AD8;
  v0[32] = qword_100095AD8;
  if (v9)
  {

    v10 = swift_task_alloc();
    v11 = sub_100004D64(v10);
    *v11 = v12;
    v13 = sub_100009880(v11);

    sub_10003AF40(v13);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10003F98C()
{
  sub_100004680();
  sub_100003B0C();
  v3 = v2;
  sub_100001D58();
  *v4 = v3;
  *v4 = *v1;
  v3[34] = v5;
  v3[35] = v0;

  if (v0)
  {
    v6 = v3[19];
    v7 = sub_1000418B0;
  }

  else
  {
    v8 = v3[19];

    v7 = sub_10003FAA8;
    v6 = v8;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_10003FAA8()
{
  v3 = *(*(v2 + 272) + 16);
  *(v2 + 288) = v3;
  if (v3)
  {
    v6 = static Task<>.isCancelled.getter();
    v7 = *(v2 + 272);
    if ((v6 & 1) == 0)
    {
      v8 = *(v2 + 160);
      v9 = *(v8 + 80);
      *(v2 + 568) = v9;
      *(v2 + 296) = 0;
      if (*(v7 + 16))
      {
        v10 = *(v2 + 240);
        *(v2 + 304) = *(v8 + 72);
        sub_100037808(v7 + ((v9 + 32) & ~v9), v10);
        sub_100002958();
        if (v13)
        {
          sub_1000058D4(v11, v12);
          sub_100008F3C();
          String.hash(into:)();
          Hasher._finalize()();
          sub_100009B34();
          while (1)
          {
            sub_100009088();
            if ((v14 & 1) == 0)
            {
              break;
            }

            v15 = sub_10000CD7C();
            v17 = v17 && v16 == v1;
            if (!v17)
            {
              sub_100003F7C(v15, v16);
              sub_100042F00();
              if ((v18 & 1) == 0)
              {
                continue;
              }
            }

            sub_100005BB8();
            v19 = Logger.logObject.getter();
            v20 = static os_log_type_t.default.getter();
            v21 = sub_100003B24(v20);
            v22 = *(v2 + 232);
            if (v21)
            {
              sub_100004D20();
              sub_100004414();
              sub_100005B3C();
              sub_1000175DC(4.8751e-34);
              v23 = sub_1000377AC(v22);
              sub_100002744(v23, v24, v25, v26);
              sub_100016724();
              *(v1 + 4) = v22;
              sub_1000028B8();
              _os_log_impl(v27, v28, v29, v30, v31, 0xCu);
              sub_10000BEC8();
              sub_100003910();
            }

            else
            {

              v7 = sub_1000377AC(v22);
            }

            v42 = qword_100095AF0;
            *(v2 + 336) = qword_100095AF0;
            if (!v42)
            {
              goto LABEL_38;
            }

            sub_100003CB0(dword_10006FD00);
            sub_1000127F0();
            v43 = swift_task_alloc();
            v44 = sub_100004CC4(v43);
            *v44 = v45;
            sub_100001FAC(v44);
            v46 = sub_10000FF80();

            return v47(v46);
          }
        }

        sub_100011984();

        v35 = qword_100095AE8;
        *(v2 + 328) = qword_100095AE8;
        if (v35)
        {
          goto LABEL_22;
        }

        goto LABEL_36;
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }
  }

  v7 = sub_100004F60();
  if (v0)
  {
    *(v2 + 520) = 0;
    *(v2 + 512) = v0;
    v34 = qword_100095AE8;
    *(v2 + 528) = qword_100095AE8;
    if (v34)
    {
      sub_100007AA0(0);
LABEL_22:

      v7 = sub_100002948();

      return _swift_task_switch(v7, v4, v5);
    }

    goto LABEL_35;
  }

  sub_100017168();
  while (v33 != v32)
  {
    sub_1000105A4();
  }

  v36 = qword_100095AE8;
  *(v2 + 552) = qword_100095AE8;
  if (!v36)
  {
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
    return _swift_task_switch(v7, v4, v5);
  }

  sub_100042F58();

  v37 = swift_task_alloc();
  v38 = sub_10001500C(v37);
  *v38 = v39;
  v40 = sub_100004474(v38);

  return sub_100035664(v40);
}

uint64_t sub_10003FDB0()
{
  sub_100004680();
  v1 = v0[19];
  sub_1000055F0(v0[39], v0[40]);

  return _swift_task_switch(sub_10003FE24, v1, 0);
}

void sub_10003FE24()
{
  sub_100005BB8();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  v4 = sub_100003B24(v3);
  v5 = *(v1 + 232);
  if (v4)
  {
    sub_100004D20();
    sub_100004414();
    sub_100005B3C();
    sub_1000175DC(4.8751e-34);
    v6 = sub_1000377AC(v5);
    sub_100002744(v6, v7, v8, v9);
    sub_100016724();
    *(v0 + 4) = v5;
    sub_1000028B8();
    _os_log_impl(v10, v11, v12, v13, v14, 0xCu);
    sub_10000BEC8();
    sub_100003910();
  }

  else
  {

    sub_1000377AC(v5);
  }

  v15 = qword_100095AF0;
  *(v1 + 336) = qword_100095AF0;
  if (v15)
  {
    sub_100003CB0(dword_10006FD00);
    sub_1000127F0();
    v16 = swift_task_alloc();
    v17 = sub_100004CC4(v16);
    *v17 = v18;
    sub_100001FAC(v17);
    v19 = sub_10000FF80();

    v20(v19);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10003FF4C()
{
  sub_100004680();
  sub_100003B0C();
  v3 = v2;
  sub_100001D58();
  *v4 = v3;
  *v4 = *v1;
  v3[44] = v5;
  v3[45] = v6;
  v3[46] = v0;

  if (v0)
  {
    v7 = v3[19];
    v8 = sub_100041AA8;
  }

  else
  {
    v9 = v3[19];

    v8 = sub_10004006C;
    v7 = v9;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_10004006C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30)
{
  sub_10000B99C();
  a29 = v31;
  a30 = v32;
  sub_100042F0C();
  a28 = v30;
  if (v30[44])
  {
    v36 = qword_100095AD8;
    v30[47] = qword_100095AD8;
    if (v36)
    {

      v37 = swift_task_alloc();
      v30[48] = v37;
      *v37 = v30;
      sub_100001D9C(v37);
      sub_10001248C();

      return sub_10003E06C(v38, v39, v40, v41);
    }

    goto LABEL_42;
  }

  v44 = v30[30];
  v45 = v30[26];
  v47 = v30[24];
  v46 = v30[25];
  sub_100037808(v44, v30[27]);
  sub_100037808(v44, v45);
  sub_100037808(v44, v46);
  sub_100037808(v44, v47);
  v48 = Logger.logObject.getter();
  v49 = static os_log_type_t.error.getter();
  v50 = sub_100003B24(v49);
  v51 = v30[26];
  v52 = v30[27];
  v53 = v30[24];
  v54 = v30[25];
  if (v50)
  {
    v45 = swift_slowAlloc();
    a10 = swift_slowAlloc();
    a11 = a10;
    *v45 = 136446978;
    v56 = *(v52 + 48);
    v55 = *(v52 + 56);

    sub_1000377AC(v52);
    v57 = sub_1000053A0(v56, v55, &a11);

    *(v45 + 4) = v57;
    *(v45 + 12) = 2082;
    v58 = *v51;
    v59 = v51[1];

    sub_1000377AC(v51);
    v60 = sub_1000053A0(v58, v59, &a11);

    *(v45 + 14) = v60;
    *(v45 + 22) = 2082;
    v61 = *(v54 + 16);
    v62 = *(v54 + 24);

    sub_1000377AC(v54);
    sub_1000053A0(v61, v62, &a11);
    sub_100016724();
    *(v45 + 24) = v61;
    *(v45 + 32) = 2082;
    v63 = *(v53 + 32);
    v64 = *(v53 + 40);

    sub_1000377AC(v53);
    v65 = sub_1000053A0(v63, v64, &a11);

    *(v45 + 34) = v65;
    sub_1000028B8();
    _os_log_impl(v66, v67, v68, v69, v70, 0x2Au);
    v44 = a10;
    swift_arrayDestroy();
    sub_100001D1C(a10);
    sub_100003910();
  }

  else
  {

    sub_1000377AC(v53);
    sub_1000377AC(v54);
    sub_1000377AC(v51);
    sub_1000377AC(v52);
  }

  sub_100009A50();
  if (v44 != v48)
  {
    sub_100006FF8();
    if (!v80)
    {
      sub_100003D94(v79);
      sub_100002958();
      if (v83)
      {
        sub_1000058D4(v81, v82);
        sub_100008F3C();
        String.hash(into:)();
        Hasher._finalize()();
        sub_100009B34();
        while (1)
        {
          sub_100009088();
          if ((v84 & 1) == 0)
          {
            break;
          }

          v85 = sub_10000CD7C();
          v87 = v87 && v86 == v45;
          if (!v87)
          {
            sub_100003F7C(v85, v86);
            sub_100042F00();
            if ((v88 & 1) == 0)
            {
              continue;
            }
          }

          sub_100005BB8();
          v89 = Logger.logObject.getter();
          v90 = static os_log_type_t.default.getter();
          v91 = sub_100003B24(v90);
          v92 = v30[29];
          if (v91)
          {
            sub_100004D20();
            sub_100004414();
            sub_100005B3C();
            sub_1000175DC(4.8751e-34);
            v93 = sub_1000377AC(v92);
            sub_100002744(v93, v94, v95, v96);
            sub_100016724();
            *(v45 + 4) = v92;
            sub_1000028B8();
            _os_log_impl(v97, v98, v99, v100, v101, 0xCu);
            sub_10000BEC8();
            sub_100003910();
          }

          else
          {

            v33 = sub_1000377AC(v92);
          }

          v110 = qword_100095AF0;
          v30[42] = qword_100095AF0;
          if (!v110)
          {
            goto LABEL_45;
          }

          sub_100003CB0(dword_10006FD00);
          sub_1000127F0();
          v111 = swift_task_alloc();
          v112 = sub_100004CC4(v111);
          *v112 = v113;
          sub_100001FAC(v112);
          sub_10000FF80();
          sub_10001248C();

          return v115(v114, v115, v116, v117, v118, v119, v120, v121, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
        }
      }

      sub_100011984();

      v102 = qword_100095AE8;
      v30[41] = qword_100095AE8;
      if (v102)
      {
        sub_100005160();
        sub_100002948();
        sub_10001248C();

        return _swift_task_switch(v33, v34, v35);
      }

      goto LABEL_44;
    }

    __break(1u);
    goto LABEL_41;
  }

  v33 = sub_100011754();
  if (!v71)
  {

    v104 = qword_100095AD8;
    v30[32] = qword_100095AD8;
    if (!v104)
    {
LABEL_46:
      __break(1u);
      return _swift_task_switch(v33, v34, v35);
    }

    v105 = swift_task_alloc();
    v106 = sub_100004D64(v105);
    *v106 = v107;
    sub_100009880(v106);
    sub_10001248C();

    return sub_10003AF40(v108);
  }

  if (!*(v33 + 16))
  {
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v33 = sub_100003B40(v33);
  v72 = qword_100095AD8;
  v30[60] = qword_100095AD8;
  if (!v72)
  {
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  sub_100011CD0();

  v73 = swift_task_alloc();
  v74 = sub_100002648(v73);
  *v74 = v75;
  sub_100004708(v74);
  sub_10001248C();

  return sub_10003D550(v76, v77);
}

uint64_t sub_100040588()
{
  sub_100004680();
  sub_100003B0C();
  v3 = v2;
  sub_100001D58();
  *v4 = v3;
  *v4 = *v1;
  v3[49] = v5;
  v3[50] = v0;

  if (v0)
  {
    v6 = v3[19];
    v7 = sub_100041EC4;
  }

  else
  {
    v8 = v3[19];

    v7 = sub_1000406A4;
    v6 = v8;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_1000406A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t *a28, uint64_t a29, uint64_t a30)
{
  sub_10000B99C();
  a29 = v31;
  a30 = v32;
  sub_100042F0C();
  a28 = v30;
  v33 = v30;
  v34 = v30[49];
  if (*(v34 + 16))
  {
    sub_100037808(v30[30], v30[28]);

    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.default.getter();
    v37 = os_log_type_enabled(v35, v36);
    v38 = v30[49];
    v39 = v30[28];
    if (v37)
    {
      v40 = swift_slowAlloc();
      swift_slowAlloc();
      sub_100005B3C();
      *v40 = 134349826;
      *(v40 + 4) = *(v34 + 16);

      *(v40 + 12) = 2080;

      v41 = sub_1000377AC(v39);
      v45 = sub_10000CE38(v41, v42, v43, v44);

      *(v40 + 14) = v45;
      *(v40 + 22) = 2082;
      sub_1000515B0(0x646F6874656D5FLL, 0xE700000000000000, v38);
      Set.description.getter();

      v50 = sub_10000CE38(v46, v47, v48, v49);
      v33 = v30;

      *(v40 + 24) = v50;
      *(v40 + 32) = 2082;
      sub_1000515B0(0x7375746174735FLL, 0xE700000000000000, v38);
      v51 = Set.description.getter();
      v53 = v52;

      v54 = sub_1000053A0(v51, v53, &a11);

      *(v40 + 34) = v54;
      _os_log_impl(&_mh_execute_header, v35, v36, "sending %{public}ld events for session %s with categories [%{public}s] types [%{public}s]", v40, 0x2Au);
      swift_arrayDestroy();
      sub_100003D78();
      sub_100003910();
    }

    else
    {

      sub_1000377AC(v39);
    }

    v67 = *(v34 + 16);
    v33[51] = v67;
    v68 = _swiftEmptyArrayStorage;
    if (v67)
    {
      v69 = v33[49];
      v33[16] = _swiftEmptyArrayStorage;
      sub_10001C5CC(0, v67, 0);
      v68 = v33[16];
      v70 = (v69 + 56);
      do
      {
        v72 = *(v70 - 2);
        v71 = *(v70 - 1);
        v73 = *v70;
        v74 = v33;
        v33[16] = v68;
        v76 = v68[2];
        v75 = v68[3];

        if (v76 >= v75 >> 1)
        {
          sub_10001C5CC((v75 > 1), v76 + 1, 1);
          v68 = v74[16];
        }

        v68[2] = v76 + 1;
        v77 = &v68[3 * v76];
        v77[4] = v72;
        v77[5] = v71;
        v77[6] = v73;
        v70 += 4;
        --v67;
        v33 = v74;
      }

      while (v67);
    }

    v33[52] = v68;
    v78 = v33[45];
    swift_getObjectType();
    v134 = *(v78 + 24) + **(v78 + 24);
    v79 = swift_task_alloc();
    v33[53] = v79;
    *v79 = v33;
    v79[1] = sub_100040DB8;
    sub_10001248C();

    return v83(v80, v81, v82, v83, v84, v85, v86, v87, v78 + 24, v134, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
  }

  swift_unknownObjectRelease();
  v55 = v30[36];
  v56 = v30[30];
  v57 = v30[37] + 1;
  v58 = sub_1000377AC(v56);
  if (v57 != v55)
  {
    v88 = v33[37] + 1;
    v33[37] = v88;
    v89 = v33[34];
    if (v88 < *(v89 + 16))
    {
      v90 = v33[30];
      v91 = v89 + ((*(v33 + 568) + 32) & ~*(v33 + 568));
      v92 = *(v33[20] + 72);
      v33[38] = v92;
      v93 = sub_100037808(v91 + v92 * v88, v90);
      v95 = v33[13];
      v33[39] = *v90;
      v96 = v90[1];
      v33[40] = v96;
      if (*(v95 + 16))
      {
        sub_1000058D4(v93, v94);
        sub_100008F3C();
        String.hash(into:)();
        Hasher._finalize()();
        sub_100009B34();
        while (1)
        {
          sub_100009088();
          if ((v97 & 1) == 0)
          {
            break;
          }

          v98 = sub_10000CD7C();
          v100 = v100 && v99 == v96;
          if (!v100)
          {
            sub_100003F7C(v98, v99);
            sub_100042F00();
            if ((v101 & 1) == 0)
            {
              continue;
            }
          }

          sub_100037808(v33[30], v33[29]);
          v102 = Logger.logObject.getter();
          v103 = static os_log_type_t.default.getter();
          v104 = sub_100003B24(v103);
          v105 = v33[29];
          if (v104)
          {
            sub_100004D20();
            sub_100004414();
            sub_100005B3C();
            sub_1000175DC(4.8751e-34);
            v106 = sub_1000377AC(v105);
            sub_100002744(v106, v107, v108, v109);
            sub_100016724();
            *(v96 + 4) = v105;
            sub_1000028B8();
            _os_log_impl(v110, v111, v112, v113, v114, 0xCu);
            sub_10000BEC8();
            sub_100003910();
          }

          else
          {

            v58 = sub_1000377AC(v105);
          }

          v124 = qword_100095AF0;
          v33[42] = qword_100095AF0;
          if (!v124)
          {
            goto LABEL_48;
          }

          sub_100003CB0(dword_10006FD00);
          sub_1000127F0();
          v125 = swift_task_alloc();
          v33[43] = v125;
          *v125 = v33;
          sub_100001FAC(v125);
          sub_10001248C();

          return v127(v126, v127, v128, v129, v130, v131, v132, v133, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
        }
      }

      sub_100008F3C();
      sub_100015F14(v115, v116, v117);

      v118 = qword_100095AE8;
      v33[41] = qword_100095AE8;
      if (v118)
      {
        sub_100005160();
        sub_100002948();
        sub_10001248C();

        return _swift_task_switch(v58, v59, v60);
      }

      goto LABEL_47;
    }

    __break(1u);
    goto LABEL_45;
  }

  v33[59] = 0;
  v58 = v33[34];
  if (v33[36])
  {
    if (*(v58 + 16))
    {
      v58 = sub_100037808(v58 + ((*(v33 + 568) + 32) & ~*(v33 + 568)), v33[23]);
      v61 = qword_100095AD8;
      v33[60] = qword_100095AD8;
      if (v61)
      {

        v62 = swift_task_alloc();
        v33[61] = v62;
        *v62 = v33;
        sub_100004708(v62);
        sub_10001248C();

        return sub_10003D550(v63, v64);
      }

      goto LABEL_46;
    }

LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v120 = qword_100095AD8;
  v33[32] = qword_100095AD8;
  if (!v120)
  {
LABEL_49:
    __break(1u);
    return _swift_task_switch(v58, v59, v60);
  }

  v121 = swift_task_alloc();
  v33[33] = v121;
  *v121 = v33;
  sub_100009880(v121);
  sub_10001248C();

  return sub_10003AF40(v122);
}

uint64_t sub_100040DB8()
{
  sub_100002624();
  v2 = *v1;
  sub_1000043E4();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 432) = v0;

  if (v0)
  {
    v4 = *(v2 + 152);

    v5 = sub_1000422E8;
    v6 = v4;
  }

  else
  {
    v7 = *(v2 + 152);

    v5 = sub_100040F04;
    v6 = v7;
  }

  return _swift_task_switch(v5, v6, 0);
}

void sub_100040F04()
{
  v1 = qword_100095AD8;
  v0[55] = qword_100095AD8;
  if (v1)
  {
    v2 = v0[51];
    v3 = v0[49];
    if (v2)
    {
      v0[18] = _swiftEmptyArrayStorage;

      sub_100060CA4(0, v2, 0);
      v4 = 0;
      v5 = v0[18];
      v6 = (v3 + 32);
      v7 = v5[2];
      do
      {
        v9 = *v6;
        v6 += 4;
        v8 = v9;
        v0[18] = v5;
        v10 = v5[3];
        if (v7 >= v10 >> 1)
        {
          sub_100060CA4((v10 > 1), v7 + 1, 1);
          v5 = v0[18];
        }

        v11 = v0[51];
        ++v4;
        v5[2] = v7 + 1;
        v5[v7++ + 4] = v8;
      }

      while (v4 != v11);
    }

    else
    {

      v5 = _swiftEmptyArrayStorage;
    }

    v0[56] = v5;
    v12 = swift_task_alloc();
    v0[57] = v12;
    *v12 = v0;
    v12[1] = sub_100041084;
    sub_100008E70();

    sub_10003E188(v13);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100041084()
{
  sub_100004680();
  sub_100003B0C();
  v3 = v2;
  sub_100001D58();
  *v4 = v3;
  v5 = *v1;
  sub_1000043E4();
  *v6 = v5;
  *(v3 + 464) = v0;

  if (v0)
  {
    v7 = *(v3 + 152);
    v8 = sub_1000426CC;
  }

  else
  {
    v9 = *(v3 + 152);

    v8 = sub_1000411A0;
    v7 = v9;
  }

  return _swift_task_switch(v8, v7, 0);
}

void sub_1000411A0()
{
  v1 = qword_100095AD8;
  *(v0 + 376) = qword_100095AD8;
  if (v1)
  {
    sub_100002624();

    v2 = swift_task_alloc();
    *(v0 + 384) = v2;
    *v2 = v0;
    v3 = sub_100001D9C(v2);

    sub_10003E06C(v3, v4, 0x400000, 50);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10004125C()
{
  sub_100002624();
  v2 = *v1;
  sub_1000043E4();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 496) = v0;

  if (v0)
  {
    v4 = *(v2 + 152);

    v5 = sub_100042AC0;
  }

  else
  {
    v4 = *(v2 + 152);

    v5 = sub_1000413A0;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_1000413A0()
{
  sub_100002624();
  sub_1000377AC(*(v0 + 184));
  v1 = *(v0 + 472) + 1;
  *(v0 + 472) = v1;
  result = *(v0 + 272);
  if (v1 == *(v0 + 288))
  {

    v3 = qword_100095AD8;
    *(v0 + 256) = qword_100095AD8;
    if (v3)
    {

      v4 = swift_task_alloc();
      v5 = sub_100004D64(v4);
      *v5 = v6;
      v7 = sub_100009880(v5);

      return sub_10003AF40(v7);
    }

    goto LABEL_12;
  }

  if (v1 >= *(result + 16))
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  result = sub_100037808(result + ((*(v0 + 568) + 32) & ~*(v0 + 568)) + *(v0 + 304) * v1, *(v0 + 184));
  v8 = qword_100095AD8;
  *(v0 + 480) = qword_100095AD8;
  if (!v8)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  sub_100011CD0();

  v9 = swift_task_alloc();
  v10 = sub_100002648(v9);
  *v10 = v11;
  v12 = sub_100004708(v10);

  return sub_10003D550(v12, v13);
}

uint64_t sub_1000414F4()
{
  sub_100002624();
  v1 = v0[19];
  sub_100013D4C(v0[68], v0[67], 0);

  return _swift_task_switch(sub_100041584, v1, 0);
}

uint64_t sub_100041584()
{
  sub_100004680();
  v4 = *(v0 + 520);
  v5 = (*(v0 + 512) - 1) & *(v0 + 512);
  if (v5)
  {
LABEL_6:
    *(v0 + 520) = v4;
    *(v0 + 512) = v5;
    v7 = qword_100095AE8;
    *(v0 + 528) = qword_100095AE8;
    if (v7)
    {
      sub_100007AA0(v4);

      v1 = sub_100002948();
    }

    else
    {
LABEL_15:
      __break(1u);
LABEL_16:
      __break(1u);
    }

    return _swift_task_switch(v1, v2, v3);
  }

  else
  {
    while (1)
    {
      v6 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        __break(1u);
        goto LABEL_15;
      }

      v1 = *(v0 + 504);
      if (v6 >= (((1 << *(v0 + 572)) + 63) >> 6))
      {
        break;
      }

      v5 = *(v1 + 8 * v6 + 56);
      ++v4;
      if (v5)
      {
        v4 = v6;
        goto LABEL_6;
      }
    }

    v8 = qword_100095AE8;
    *(v0 + 552) = qword_100095AE8;
    if (!v8)
    {
      goto LABEL_16;
    }

    sub_100042F58();

    v9 = swift_task_alloc();
    v10 = sub_10001500C(v9);
    *v10 = v11;
    v12 = sub_100004474(v10);

    return sub_100035664(v12);
  }
}

uint64_t sub_1000416BC()
{
  sub_100004680();
  sub_100003B0C();
  v2 = *(v1 + 152);
  v3 = *v0;
  sub_1000043E4();
  *v4 = v3;

  return _swift_task_switch(sub_1000417D8, v2, 0);
}

uint64_t sub_1000417D8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000418B0()
{
  v28 = v0;

  v2 = v0[35];
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = sub_100004D20();
    v6 = swift_slowAlloc();
    v27 = v6;
    sub_1000105B8(4.8149e-34);
    v7 = Error.localizedDescription.getter();
    sub_1000053A0(v7, v8, &v27);
    sub_100003ED4();
    *(v5 + 4) = v1;
    sub_1000132B0();
    _os_log_impl(v9, v10, v11, v12, v13, 0xCu);
    sub_100005284(v6);
    sub_100001D1C(v6);
    sub_100003D78();
  }

  else
  {
  }

  v14 = sub_100004F60();
  if (v2)
  {
    v0[65] = 0;
    v0[64] = v2;
    v19 = qword_100095AE8;
    v0[66] = qword_100095AE8;
    if (v19)
    {
      sub_100007AA0(0);

      sub_100002948();
      sub_100008E70();

      return _swift_task_switch(v14, v15, v16);
    }

    __break(1u);
LABEL_17:
    __break(1u);
    return _swift_task_switch(v14, v15, v16);
  }

  sub_100017168();
  while (v18 != v17)
  {
    sub_1000105A4();
  }

  v21 = qword_100095AE8;
  v0[69] = qword_100095AE8;
  if (!v21)
  {
    goto LABEL_17;
  }

  sub_100042F58();

  v22 = swift_task_alloc();
  v23 = sub_10001500C(v22);
  *v23 = v24;
  sub_100004474(v23);
  sub_100008E70();

  return sub_100035664(v25);
}

uint64_t sub_100041AA8()
{
  v60 = v0;
  v3 = v0[46];
  v4 = v0[30];
  v5 = v0[22];

  sub_100037808(v4, v5);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[22];
    v9 = swift_slowAlloc();
    v1 = sub_100005BFC();
    v59[0] = v1;
    *v9 = 136446466;
    v2 = *(v8 + 48);
    v10 = *(v8 + 56);

    sub_1000377AC(v8);
    sub_1000053A0(v2, v10, v59);

    sub_1000052F4();
    v11 = Error.localizedDescription.getter();
    v13 = v12;
    sub_1000053A0(v11, v12, v59);
    sub_100003ED4();
    *(v9 + 14) = v2;
    sub_100042F38(&_mh_execute_header, v14, v15, "failed to process events for session %{public}s: %{public}s");
    swift_arrayDestroy();
    sub_100001D1C(v1);
    sub_100001D1C(v9);
  }

  else
  {
    v13 = v0[22];

    sub_1000377AC(v13);
  }

  sub_100009A50();
  if (v3 != v13)
  {
    sub_100006FF8();
    if (!v29)
    {
      sub_100003D94(v28);
      sub_100002958();
      if (v30)
      {
        Hasher.init(_seed:)();
        sub_100008F3C();
        String.hash(into:)();
        Hasher._finalize()();
        sub_100009B34();
        while (1)
        {
          sub_100009088();
          if ((v31 & 1) == 0)
          {
            break;
          }

          v32 = sub_10000CD7C();
          v34 = v34 && v33 == v6;
          if (!v34)
          {
            sub_100003F7C(v32, v33);
            sub_100042F00();
            if ((v35 & 1) == 0)
            {
              continue;
            }
          }

          sub_100005BB8();
          v36 = Logger.logObject.getter();
          v37 = static os_log_type_t.default.getter();
          v38 = sub_100003B24(v37);
          v39 = v0[29];
          if (v38)
          {
            sub_100004D20();
            v59[0] = sub_100004414();
            sub_1000175DC(4.8751e-34);
            sub_1000377AC(v39);
            sub_1000053A0(v1, v2, v59);
            sub_100016724();
            *(v6 + 4) = v39;
            sub_1000028B8();
            _os_log_impl(v40, v41, v42, v43, v44, 0xCu);
            sub_10000BEC8();
            sub_100003910();
          }

          else
          {

            v16 = sub_1000377AC(v39);
          }

          v53 = qword_100095AF0;
          v0[42] = qword_100095AF0;
          if (v53)
          {
            sub_100003CB0(dword_10006FD00);

            v54 = swift_task_alloc();
            v55 = sub_100004CC4(v54);
            *v55 = v56;
            sub_100001FAC(v55);
            sub_100016070();
            sub_100008E94();

            __asm { BR              X1 }
          }

          goto LABEL_39;
        }
      }

      sub_100011984();

      v45 = qword_100095AE8;
      v0[41] = qword_100095AE8;
      if (v45)
      {
        sub_100005160();
        sub_100002948();
        sub_100008E94();

        return _swift_task_switch(v16, v17, v18);
      }

      goto LABEL_38;
    }

    __break(1u);
    goto LABEL_36;
  }

  v16 = sub_100011754();
  if (v19)
  {
    if (*(v16 + 16))
    {
      v16 = sub_100003B40(v16);
      v20 = qword_100095AD8;
      v0[60] = qword_100095AD8;
      if (v20)
      {
        sub_100011CD0();

        v21 = swift_task_alloc();
        v22 = sub_100002648(v21);
        *v22 = v23;
        sub_100004708(v22);
        sub_100008E94();

        return sub_10003D550(v24, v25);
      }

      goto LABEL_37;
    }

LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v47 = qword_100095AD8;
  v0[32] = qword_100095AD8;
  if (!v47)
  {
LABEL_40:
    __break(1u);
    return _swift_task_switch(v16, v17, v18);
  }

  v48 = swift_task_alloc();
  v49 = sub_100004D64(v48);
  *v49 = v50;
  sub_100009880(v49);
  sub_100008E94();

  return sub_10003AF40(v51);
}

uint64_t sub_100041EC4()
{
  v60 = v0;
  swift_unknownObjectRelease();
  v3 = v0[50];
  v4 = v0[30];
  v5 = v0[22];

  sub_100037808(v4, v5);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[22];
    v9 = swift_slowAlloc();
    v1 = sub_100005BFC();
    v59[0] = v1;
    *v9 = 136446466;
    v2 = *(v8 + 48);
    v10 = *(v8 + 56);

    sub_1000377AC(v8);
    sub_1000053A0(v2, v10, v59);

    sub_1000052F4();
    v11 = Error.localizedDescription.getter();
    v13 = v12;
    sub_1000053A0(v11, v12, v59);
    sub_100003ED4();
    *(v9 + 14) = v2;
    sub_100042F38(&_mh_execute_header, v14, v15, "failed to process events for session %{public}s: %{public}s");
    swift_arrayDestroy();
    sub_100001D1C(v1);
    sub_100001D1C(v9);
  }

  else
  {
    v13 = v0[22];

    sub_1000377AC(v13);
  }

  sub_100009A50();
  if (v3 != v13)
  {
    sub_100006FF8();
    if (!v29)
    {
      sub_100003D94(v28);
      sub_100002958();
      if (v30)
      {
        Hasher.init(_seed:)();
        sub_100008F3C();
        String.hash(into:)();
        Hasher._finalize()();
        sub_100009B34();
        while (1)
        {
          sub_100009088();
          if ((v31 & 1) == 0)
          {
            break;
          }

          v32 = sub_10000CD7C();
          v34 = v34 && v33 == v6;
          if (!v34)
          {
            sub_100003F7C(v32, v33);
            sub_100042F00();
            if ((v35 & 1) == 0)
            {
              continue;
            }
          }

          sub_100005BB8();
          v36 = Logger.logObject.getter();
          v37 = static os_log_type_t.default.getter();
          v38 = sub_100003B24(v37);
          v39 = v0[29];
          if (v38)
          {
            sub_100004D20();
            v59[0] = sub_100004414();
            sub_1000175DC(4.8751e-34);
            sub_1000377AC(v39);
            sub_1000053A0(v1, v2, v59);
            sub_100016724();
            *(v6 + 4) = v39;
            sub_1000028B8();
            _os_log_impl(v40, v41, v42, v43, v44, 0xCu);
            sub_10000BEC8();
            sub_100003910();
          }

          else
          {

            v16 = sub_1000377AC(v39);
          }

          v53 = qword_100095AF0;
          v0[42] = qword_100095AF0;
          if (v53)
          {
            sub_100003CB0(dword_10006FD00);

            v54 = swift_task_alloc();
            v55 = sub_100004CC4(v54);
            *v55 = v56;
            sub_100001FAC(v55);
            sub_100016070();
            sub_100008E94();

            __asm { BR              X1 }
          }

          goto LABEL_39;
        }
      }

      sub_100011984();

      v45 = qword_100095AE8;
      v0[41] = qword_100095AE8;
      if (v45)
      {
        sub_100005160();
        sub_100002948();
        sub_100008E94();

        return _swift_task_switch(v16, v17, v18);
      }

      goto LABEL_38;
    }

    __break(1u);
    goto LABEL_36;
  }

  v16 = sub_100011754();
  if (v19)
  {
    if (*(v16 + 16))
    {
      v16 = sub_100003B40(v16);
      v20 = qword_100095AD8;
      v0[60] = qword_100095AD8;
      if (v20)
      {
        sub_100011CD0();

        v21 = swift_task_alloc();
        v22 = sub_100002648(v21);
        *v22 = v23;
        sub_100004708(v22);
        sub_100008E94();

        return sub_10003D550(v24, v25);
      }

      goto LABEL_37;
    }

LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v47 = qword_100095AD8;
  v0[32] = qword_100095AD8;
  if (!v47)
  {
LABEL_40:
    __break(1u);
    return _swift_task_switch(v16, v17, v18);
  }

  v48 = swift_task_alloc();
  v49 = sub_100004D64(v48);
  *v49 = v50;
  sub_100009880(v49);
  sub_100008E94();

  return sub_10003AF40(v51);
}

uint64_t sub_1000422E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30)
{
  sub_10000B99C();
  a29 = v31;
  a30 = v32;
  sub_100042F0C();
  a28 = v30;
  v33 = v30[54];
  v34 = v30[31];
  sub_100037808(v30[30], v30[21]);
  swift_errorRetain();
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = sub_100042F18();
    v38 = sub_100005BFC();
    a11 = v38;
    *v37 = 136446466;

    v39 = sub_1000377AC(v34);
    sub_10000CE38(v39, v40, v41, v42);

    sub_100005494();
    v43 = Error.localizedDescription.getter();
    v45 = v44;
    v46 = sub_1000053A0(v43, v44, &a11);

    *(v37 + 14) = v46;
    sub_1000132B0();
    _os_log_impl(v47, v48, v49, v50, v51, 0x16u);
    swift_arrayDestroy();
    sub_100001D1C(v38);
    sub_100003D78();

    swift_unknownObjectRelease();
  }

  else
  {
    v45 = v30[21];
    swift_unknownObjectRelease();

    sub_1000377AC(v45);
  }

  sub_100009A50();
  if (v33 != v45)
  {
    sub_100006FF8();
    if (!v65)
    {
      sub_100003D94(v64);
      sub_100002958();
      if (v68)
      {
        sub_1000058D4(v66, v67);
        sub_100008F3C();
        String.hash(into:)();
        Hasher._finalize()();
        sub_100009B34();
        while (1)
        {
          sub_100009088();
          if ((v69 & 1) == 0)
          {
            break;
          }

          v70 = sub_10000CD7C();
          v72 = v72 && v71 == v35;
          if (!v72)
          {
            sub_100003F7C(v70, v71);
            sub_100042F00();
            if ((v73 & 1) == 0)
            {
              continue;
            }
          }

          sub_100005BB8();
          v74 = Logger.logObject.getter();
          v75 = static os_log_type_t.default.getter();
          v76 = sub_100003B24(v75);
          v77 = v30[29];
          if (v76)
          {
            sub_100004D20();
            sub_100004414();
            sub_100005B3C();
            sub_1000175DC(4.8751e-34);
            v78 = sub_1000377AC(v77);
            sub_100002744(v78, v79, v80, v81);
            sub_100016724();
            *(v35 + 4) = v77;
            sub_1000028B8();
            _os_log_impl(v82, v83, v84, v85, v86, 0xCu);
            sub_10000BEC8();
            sub_100003910();
          }

          else
          {

            v52 = sub_1000377AC(v77);
          }

          v95 = qword_100095AF0;
          v30[42] = qword_100095AF0;
          if (!v95)
          {
            goto LABEL_39;
          }

          sub_100003CB0(dword_10006FD00);
          sub_1000127F0();
          v96 = swift_task_alloc();
          v97 = sub_100004CC4(v96);
          *v97 = v98;
          sub_100001FAC(v97);
          sub_10000FF80();
          sub_10001248C();

          return v100(v99, v100, v101, v102, v103, v104, v105, v106, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
        }
      }

      sub_100011984();

      v87 = qword_100095AE8;
      v30[41] = qword_100095AE8;
      if (v87)
      {
        sub_100005160();
        sub_100002948();
        sub_10001248C();

        return _swift_task_switch(v52, v53, v54);
      }

      goto LABEL_38;
    }

    __break(1u);
    goto LABEL_36;
  }

  v52 = sub_100011754();
  if (v55)
  {
    if (*(v52 + 16))
    {
      v52 = sub_100003B40(v52);
      v56 = qword_100095AD8;
      v30[60] = qword_100095AD8;
      if (v56)
      {
        sub_100011CD0();

        v57 = swift_task_alloc();
        v58 = sub_100002648(v57);
        *v58 = v59;
        sub_100004708(v58);
        sub_10001248C();

        return sub_10003D550(v60, v61);
      }

      goto LABEL_37;
    }

LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v89 = qword_100095AD8;
  v30[32] = qword_100095AD8;
  if (!v89)
  {
LABEL_40:
    __break(1u);
    return _swift_task_switch(v52, v53, v54);
  }

  v90 = swift_task_alloc();
  v91 = sub_100004D64(v90);
  *v91 = v92;
  sub_100009880(v91);
  sub_10001248C();

  return sub_10003AF40(v93);
}

uint64_t sub_1000426CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30)
{
  sub_10000B99C();
  a29 = v31;
  a30 = v32;
  sub_100042F0C();
  a28 = v30;

  v33 = v30[58];
  v34 = v30[31];
  sub_100037808(v30[30], v30[21]);
  swift_errorRetain();
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = sub_100042F18();
    v38 = sub_100005BFC();
    a11 = v38;
    *v37 = 136446466;

    v39 = sub_1000377AC(v34);
    sub_10000CE38(v39, v40, v41, v42);

    sub_100005494();
    v43 = Error.localizedDescription.getter();
    v45 = v44;
    v46 = sub_1000053A0(v43, v44, &a11);

    *(v37 + 14) = v46;
    sub_1000132B0();
    _os_log_impl(v47, v48, v49, v50, v51, 0x16u);
    swift_arrayDestroy();
    sub_100001D1C(v38);
    sub_100003D78();

    swift_unknownObjectRelease();
  }

  else
  {
    v45 = v30[21];
    swift_unknownObjectRelease();

    sub_1000377AC(v45);
  }

  sub_100009A50();
  if (v33 != v45)
  {
    sub_100006FF8();
    if (!v65)
    {
      sub_100003D94(v64);
      sub_100002958();
      if (v68)
      {
        sub_1000058D4(v66, v67);
        sub_100008F3C();
        String.hash(into:)();
        Hasher._finalize()();
        sub_100009B34();
        while (1)
        {
          sub_100009088();
          if ((v69 & 1) == 0)
          {
            break;
          }

          v70 = sub_10000CD7C();
          v72 = v72 && v71 == v35;
          if (!v72)
          {
            sub_100003F7C(v70, v71);
            sub_100042F00();
            if ((v73 & 1) == 0)
            {
              continue;
            }
          }

          sub_100005BB8();
          v74 = Logger.logObject.getter();
          v75 = static os_log_type_t.default.getter();
          v76 = sub_100003B24(v75);
          v77 = v30[29];
          if (v76)
          {
            sub_100004D20();
            sub_100004414();
            sub_100005B3C();
            sub_1000175DC(4.8751e-34);
            v78 = sub_1000377AC(v77);
            sub_100002744(v78, v79, v80, v81);
            sub_100016724();
            *(v35 + 4) = v77;
            sub_1000028B8();
            _os_log_impl(v82, v83, v84, v85, v86, 0xCu);
            sub_10000BEC8();
            sub_100003910();
          }

          else
          {

            v52 = sub_1000377AC(v77);
          }

          v95 = qword_100095AF0;
          v30[42] = qword_100095AF0;
          if (!v95)
          {
            goto LABEL_39;
          }

          sub_100003CB0(dword_10006FD00);
          sub_1000127F0();
          v96 = swift_task_alloc();
          v97 = sub_100004CC4(v96);
          *v97 = v98;
          sub_100001FAC(v97);
          sub_10000FF80();
          sub_10001248C();

          return v100(v99, v100, v101, v102, v103, v104, v105, v106, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
        }
      }

      sub_100011984();

      v87 = qword_100095AE8;
      v30[41] = qword_100095AE8;
      if (v87)
      {
        sub_100005160();
        sub_100002948();
        sub_10001248C();

        return _swift_task_switch(v52, v53, v54);
      }

      goto LABEL_38;
    }

    __break(1u);
    goto LABEL_36;
  }

  v52 = sub_100011754();
  if (v55)
  {
    if (*(v52 + 16))
    {
      v52 = sub_100003B40(v52);
      v56 = qword_100095AD8;
      v30[60] = qword_100095AD8;
      if (v56)
      {
        sub_100011CD0();

        v57 = swift_task_alloc();
        v58 = sub_100002648(v57);
        *v58 = v59;
        sub_100004708(v58);
        sub_10001248C();

        return sub_10003D550(v60, v61);
      }

      goto LABEL_37;
    }

LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v89 = qword_100095AD8;
  v30[32] = qword_100095AD8;
  if (!v89)
  {
LABEL_40:
    __break(1u);
    return _swift_task_switch(v52, v53, v54);
  }

  v90 = swift_task_alloc();
  v91 = sub_100004D64(v90);
  *v91 = v92;
  sub_100009880(v91);
  sub_10001248C();

  return sub_10003AF40(v93);
}

uint64_t sub_100042AC0()
{
  v28 = v0;
  sub_1000377AC(v0[23]);
  v2 = v0[62];
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = sub_100004D20();
    v6 = swift_slowAlloc();
    v27 = v6;
    sub_1000105B8(4.8149e-34);
    v7 = Error.localizedDescription.getter();
    sub_1000053A0(v7, v8, &v27);
    sub_100003ED4();
    *(v5 + 4) = v1;
    sub_1000132B0();
    _os_log_impl(v9, v10, v11, v12, v13, 0xCu);
    sub_100005284(v6);
    sub_100001D1C(v6);
    sub_100003D78();
  }

  else
  {
  }

  v14 = sub_100004F60();
  if (v2)
  {
    v0[65] = 0;
    v0[64] = v2;
    v19 = qword_100095AE8;
    v0[66] = qword_100095AE8;
    if (v19)
    {
      sub_100007AA0(0);

      sub_100002948();
      sub_100008E70();

      return _swift_task_switch(v14, v15, v16);
    }

    __break(1u);
LABEL_17:
    __break(1u);
    return _swift_task_switch(v14, v15, v16);
  }

  sub_100017168();
  while (v18 != v17)
  {
    sub_1000105A4();
  }

  v21 = qword_100095AE8;
  v0[69] = qword_100095AE8;
  if (!v21)
  {
    goto LABEL_17;
  }

  sub_100042F58();

  v22 = swift_task_alloc();
  v23 = sub_10001500C(v22);
  *v23 = v24;
  sub_100004474(v23);
  sub_100008E70();

  return sub_100035664(v25);
}

uint64_t sub_100042CDC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100042D68;

  return sub_10003F734();
}

uint64_t sub_100042D68()
{
  sub_100004680();
  sub_100003B0C();
  v1 = *v0;
  sub_1000043E4();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

unint64_t sub_100042E84(uint64_t a1)
{
  result = sub_100042EAC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100042EAC()
{
  result = qword_10008F1D0;
  if (!qword_10008F1D0)
  {
    type metadata accessor for SubmitEagerEventsActivity();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008F1D0);
  }

  return result;
}

uint64_t sub_100042F18()
{

  return swift_slowAlloc();
}

void sub_100042F38(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

uint64_t sub_100042F58()
{
}

uint64_t sub_100042F70()
{
  v0 = type metadata accessor for Logger();
  sub_100025BD8(v0, qword_100095A48);
  sub_1000050E4(v0, qword_100095A48);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100042FF0()
{
  swift_defaultActor_initialize();
  v1 = [objc_opt_self() ephemeralSessionConfiguration];
  [v1 setAllowsCellularAccess:0];
  [v1 setAllowsConstrainedNetworkAccess:0];
  [v1 setAllowsExpensiveNetworkAccess:0];
  [v1 setHTTPCookieAcceptPolicy:1];
  [v1 setHTTPCookieStorage:0];
  [v1 setRequestCachePolicy:1];
  [v1 setTimeoutIntervalForRequest:5.0];
  [v1 setURLCache:0];
  [v1 setURLCredentialStorage:0];
  [v1 setWaitsForConnectivity:0];
  v2 = objc_opt_self();
  *(v0 + 112) = [v2 sessionWithConfiguration:v1];
  [v1 setAllowsCellularAccess:1];
  [v1 setAllowsConstrainedNetworkAccess:1];
  [v1 setAllowsExpensiveNetworkAccess:1];
  v3 = [v2 sessionWithConfiguration:v1];

  *(v0 + 120) = v3;
  return v0;
}

uint64_t sub_100043198@<X0>(char a1@<W0>, uint64_t *a2@<X8>)
{
  if (qword_10008DDC0 != -1)
  {
    swift_once();
  }

  if (byte_100095B00 != 1)
  {
    goto LABEL_8;
  }

  if (qword_10008DDC8 != -1)
  {
    swift_once();
  }

  v5 = qword_100095B08;
  v6 = String._bridgeToObjectiveC()();
  v7 = [v5 BOOLForKey:v6];

  if (v7)
  {
    v8 = type metadata accessor for MockHTTPSending();
    swift_allocObject();
    result = sub_10002F5FC(a1 & 1);
    a2[3] = v8;
    a2[4] = &off_100086F50;
    *a2 = result;
  }

  else
  {
LABEL_8:
    v10 = sub_100043A54();
    if (a1)
    {
      v11 = *(v2 + 120);
    }

    else
    {
      v11 = *(v2 + 112);
    }

    a2[3] = v10;
    a2[4] = &off_100086F20;
    *a2 = v11;

    return _objc_retain_x1();
  }

  return result;
}

uint64_t sub_100043314()
{
  v2 = *v1;
  sub_100001D58();
  *v3 = v2;
  v5 = v4[21];
  v6 = v4[15];
  v7 = v4[12];
  v8 = *v1;
  sub_100001D58();
  *v9 = v8;
  *(v2 + 216) = v0;

  v5(v6, v7);

  if (v0)
  {
    v10 = *(v2 + 56);

    v11 = sub_100043894;
    v12 = v10;
  }

  else
  {
    v12 = *(v2 + 56);
    v11 = sub_1000434F0;
  }

  return _swift_task_switch(v11, v12, 0);
}

uint64_t sub_1000434F0()
{
  (*(v0 + 168))(*(v0 + 136), *(v0 + 96));
  v1 = *(v0 + 184);
  v2 = *(v0 + 192);

  v3 = *(v0 + 8);

  return v3(v1, v2);
}

uint64_t sub_1000435B8()
{
  v2 = *v1;
  sub_100001D58();
  *v3 = v2;
  v5 = v4[31];
  v6 = v4[14];
  v7 = v4[12];
  v8 = *v1;
  sub_100001D58();
  *v9 = v8;
  v2[34] = v0;

  v5(v6, v7);

  if (v0)
  {
    v10 = v2[7];

    return _swift_task_switch(sub_10004393C, v10, 0);
  }

  else
  {
    v11 = v2[30];
    v12 = v2[28];

    v13 = v8[1];

    return v13(v11, v12);
  }
}

uint64_t sub_1000437F4()
{

  sub_100001FCC();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100043894()
{
  (*(v0 + 168))(*(v0 + 136), *(v0 + 96));
  sub_100001FCC();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10004393C()
{
  sub_100001FCC();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100043A04()
{
  sub_1000439D4();

  return _swift_defaultActor_deallocate(v0);
}

unint64_t sub_100043A54()
{
  result = qword_10008F2B8;
  if (!qword_10008F2B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10008F2B8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SessionType(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

Swift::Int sub_100043B74(uint64_t a1)
{
  v1 = a1;
  sub_10001673C(a1);
  Hasher._combine(_:)(v1 + 1);
  return Hasher._finalize()();
}

Swift::Int sub_100043BB8(uint64_t a1)
{
  sub_10001673C(a1);
  sub_1000039B8();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_100043BF4(uint64_t a1)
{
  v1 = sub_10001673C(a1);
  sub_1000105D8(v1);
  return Hasher._finalize()();
}

Swift::Int sub_100043C60(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  sub_10001673C(a1);
  v4 = a2(a1);
  sub_1000027A8(v4, v5, v6);

  return Hasher._finalize()();
}

uint64_t sub_100043CE4(uint64_t a1, char a2)
{
  sub_10001E968(a2);
  String.hash(into:)();
}

uint64_t sub_100043D38(uint64_t a1, char a2)
{
  String.hash(into:)();
}

Swift::Int sub_100043E5C(uint64_t a1, unsigned __int8 a2)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a2);
  return Hasher._finalize()();
}

Swift::Int sub_100043EA0(uint64_t a1, unsigned __int8 a2)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a2 + 1);
  return Hasher._finalize()();
}

Swift::Int sub_100043F18(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  Hasher.init(_seed:)();
  v5 = a3(a2);
  sub_1000027A8(v5, v6, v7);

  return Hasher._finalize()();
}

Swift::Int sub_100043F6C(uint64_t a1)
{
  v1 = Hasher.init(_seed:)();
  sub_1000105D8(v1);
  return Hasher._finalize()();
}

Swift::Int sub_100043FAC(uint64_t a1)
{
  Hasher.init(_seed:)();
  sub_1000039B8();
  String.hash(into:)();
  return Hasher._finalize()();
}

unint64_t sub_100043FF4(unint64_t result)
{
  if (result >= 3)
  {
    return 3;
  }

  return result;
}

unint64_t sub_10004400C@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100043FF4(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100044038@<X0>(uint64_t *a1@<X8>)
{
  result = XPCMessage.MessageType.rawValue.getter(*v1);
  *a1 = result;
  return result;
}

unint64_t sub_100044068(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10008F2C0;
  if (!qword_10008F2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008F2C0);
  }

  return result;
}

uint64_t sub_1000440BC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = v2;
  v7 = type metadata accessor for EventValue(0);
  sub_100001EDC();
  v9 = v8;
  __chkstk_darwin(v10);
  sub_10000286C();
  v13 = (v11 - v12);
  __chkstk_darwin(v14);
  sub_100011CDC();
  __chkstk_darwin(v15);
  v17 = (&v80 - v16);
  v18 = sub_10000BE28(a1, v96);
  if (sub_10000CD90(v18, v19, v20, &type metadata for String))
  {
    v21 = *(&v94 + 1);
    *a2 = v94;
    a2[1] = v21;
    sub_100008D14();
LABEL_16:
    swift_storeEnumTagMultiPayload();
    return sub_100005284(v96);
  }

  v88 = v17;
  v89 = v3;
  v22 = sub_100045910();
  v25 = sub_10000CD90(v22, v23, v24, v22);
  if (v25)
  {
    v28 = v94;
    if (kCFBooleanTrue)
    {
      v29 = v94 == kCFBooleanTrue;
    }

    else
    {
      v29 = 0;
    }

    if (v29)
    {

      *a2 = 1;
      goto LABEL_15;
    }

    if (kCFBooleanFalse && v28 == kCFBooleanFalse)
    {
      *a2 = 0;
LABEL_15:
      sub_100008D14();
      goto LABEL_16;
    }
  }

  v30 = sub_10000CD90(v25, v26, v27, &type metadata for Int64);
  if (v30 || (v33 = sub_10000CD90(v30, v31, v32, &type metadata for UInt64), v33) || sub_10000CD90(v33, v34, v35, &type metadata for Double))
  {
    *a2 = v94;
    sub_100008D14();
    goto LABEL_16;
  }

  sub_1000228D4(&qword_10008F2D0, &qword_10006EEA8);
  v37 = swift_dynamicCast();
  v86 = v9;
  if (v37)
  {
    v81 = a2;
    v38 = v96[6];
    v82 = v7;
    v39 = Dictionary.init(minimumCapacity:)();
    v40 = 0;
    v41 = v38 + 64;
    v83 = v38;
    sub_100009754();
    v44 = v43 & v42;
    v46 = (v45 + 63) >> 6;
    v84 = v46;
    v85 = v38 + 64;
    if ((v43 & v42) == 0)
    {
      goto LABEL_23;
    }

    while (1)
    {
      v47 = v40;
LABEL_27:
      v48 = __clz(__rbit64(v44));
      v44 &= v44 - 1;
      v49 = v48 | (v47 << 6);
      v50 = (*(v83 + 48) + 16 * v49);
      v52 = *v50;
      v51 = v50[1];
      sub_10000BE28(*(v83 + 56) + 32 * v49, v90);
      *&v91 = v52;
      *(&v91 + 1) = v51;
      sub_1000243C8(v90, &v92);

LABEL_28:
      v94 = v91;
      v95[0] = v92;
      v95[1] = v93;
      v53 = *(&v91 + 1);
      if (!*(&v91 + 1))
      {

        *v81 = v39;
        goto LABEL_16;
      }

      v54 = v94;
      sub_1000243C8(v95, &v91);
      sub_1000440BC(&v91, v88);
      if (v4)
      {
        sub_100005284(&v91);

        return sub_100005284(v96);
      }

      v87 = 0;
      sub_100004734();
      sub_10000B670();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v90[0] = v39;
      v56 = sub_100003BC0(v54, v53);
      v58 = *(v39 + 16);
      v59 = (v57 & 1) == 0;
      v60 = v58 + v59;
      if (__OFADD__(v58, v59))
      {
LABEL_55:
        __break(1u);
        goto LABEL_56;
      }

      v61 = v56;
      v62 = v57;
      sub_1000228D4(&qword_10008F2E8, &unk_10006FAD0);
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v60))
      {
        v63 = sub_100003BC0(v54, v53);
        if ((v62 & 1) != (v64 & 1))
        {
          goto LABEL_58;
        }

        v61 = v63;
        if ((v62 & 1) == 0)
        {
LABEL_34:
          v39 = *&v90[0];
          *(*&v90[0] + 8 * (v61 >> 6) + 64) |= 1 << v61;
          v65 = (*(v39 + 48) + 16 * v61);
          *v65 = v54;
          v65[1] = v53;
          sub_100005370();
          sub_100004734();
          sub_10000B670();
          sub_100005284(&v91);
          v66 = *(v39 + 16);
          v67 = __OFADD__(v66, 1);
          v68 = v66 + 1;
          if (v67)
          {
            goto LABEL_57;
          }

          *(v39 + 16) = v68;
          goto LABEL_38;
        }
      }

      else if ((v62 & 1) == 0)
      {
        goto LABEL_34;
      }

      v39 = *&v90[0];
      sub_100005370();
      sub_10000FF94();
      sub_100045B58();
      sub_100005284(&v91);
LABEL_38:
      v4 = v87;
      v41 = v85;
      v46 = v84;
      if (!v44)
      {
LABEL_23:
        while (1)
        {
          v47 = v40 + 1;
          if (__OFADD__(v40, 1))
          {
            break;
          }

          if (v47 >= v46)
          {
            v44 = 0;
            v92 = 0u;
            v93 = 0u;
            v91 = 0u;
            goto LABEL_28;
          }

          v44 = *(v41 + 8 * v47);
          ++v40;
          if (v44)
          {
            v40 = v47;
            goto LABEL_27;
          }
        }

        __break(1u);
        goto LABEL_55;
      }
    }
  }

  sub_1000228D4(&qword_10008F2D8, &qword_10006EEB0);
  v69 = swift_dynamicCast();
  if (!v69)
  {
    sub_100022DFC(v69, v70, v71);
    swift_allocError();
    swift_willThrow();
    return sub_100005284(v96);
  }

  v81 = a2;
  v82 = v7;
  v72 = v91;
  sub_10002316C();
  v74 = v73;
  v75 = 0;
  v76 = *(v72 + 16);
  for (i = v72 + 32; ; i += 32)
  {
    if (v76 == v75)
    {

      *v81 = v74;
      goto LABEL_16;
    }

    if (v75 >= *(v72 + 16))
    {
      break;
    }

    sub_10000BE28(i, &v94);
    sub_1000440BC(&v94, v13);
    if (v4)
    {
      sub_100005284(&v94);

      return sub_100005284(v96);
    }

    sub_100005284(&v94);
    v78 = *(v74 + 16);
    if (v78 >= *(v74 + 24) >> 1)
    {
      sub_10002316C();
      v74 = v79;
    }

    *(v74 + 16) = v78 + 1;
    sub_100004734();
    sub_10000B670();
    ++v75;
    v4 = 0;
  }

LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1000447A8(uint64_t a1, uint64_t a2)
{
  v59 = a1;
  v60 = a2;
  type metadata accessor for UUID();
  sub_100001EDC();
  v57 = v6;
  v58 = v5;
  __chkstk_darwin(v5);
  sub_100001EAC();
  v54 = v8 - v7;
  type metadata accessor for EventValue(0);
  sub_100003C44();
  __chkstk_darwin(v9);
  sub_10000286C();
  v55 = v10 - v11;
  sub_1000029A4();
  v13 = __chkstk_darwin(v12);
  __chkstk_darwin(v13);
  v56 = &v53 - v14;
  sub_1000029A4();
  __chkstk_darwin(v15);
  sub_100011CDC();
  __chkstk_darwin(v16);
  sub_100004CD0();
  v18 = __chkstk_darwin(v17);
  v20 = (&v53 - v19);
  __chkstk_darwin(v18);
  sub_100012314();
  __chkstk_darwin(v21);
  v23 = (&v53 - v22);
  v24 = sub_1000228D4(&unk_10008F480, &qword_10006F108);
  sub_100001D80(v24);
  sub_100003EC8();
  v26 = __chkstk_darwin(v25);
  v28 = &v53 - v27;
  v29 = (&v53 + *(v26 + 56) - v27);
  sub_1000096D4();
  sub_1000096D4();
  sub_100004EA4();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_1000098A8();
      sub_1000096D4();
      if (sub_10000917C() != 1)
      {
        goto LABEL_31;
      }

      v38 = *v4;
      goto LABEL_19;
    case 2u:
      sub_1000098A8();
      sub_1000096D4();
      if (sub_10000917C() != 2)
      {
        goto LABEL_31;
      }

      v38 = *v20;
LABEL_19:
      v39 = v38 == *v29;
      goto LABEL_20;
    case 3u:
      sub_1000098A8();
      sub_1000096D4();
      if (sub_10000917C() != 3)
      {
        goto LABEL_31;
      }

      v39 = *v3 == *v29;
LABEL_20:
      v37 = v39;
      goto LABEL_28;
    case 4u:
      sub_1000098A8();
      sub_1000096D4();
      if (sub_10000917C() != 4)
      {
        goto LABEL_31;
      }

      v35 = *v2 ^ *v29;
      sub_100001FE8();
      sub_10000A80C(v28, v36);
      v37 = v35 ^ 1;
      return v37 & 1;
    case 5u:
      sub_1000098A8();
      v43 = v56;
      sub_1000096D4();
      if (sub_10000917C() != 5)
      {
        (*(v57 + 8))(v43, v58);
        goto LABEL_31;
      }

      v45 = v57;
      v44 = v58;
      v46 = v54;
      (*(v57 + 32))(v54, v29, v58);
      v37 = static UUID.== infix(_:_:)();
      v47 = *(v45 + 8);
      v47(v46, v44);
      v47(v43, v44);
LABEL_28:
      sub_100001FE8();
      sub_10000A80C(v28, v50);
      return v37 & 1;
    case 6u:
      sub_1000098A8();
      sub_1000096D4();
      if (sub_10000917C() != 6)
      {
        goto LABEL_29;
      }

      v48 = sub_100007C1C();
      v42 = sub_100045004(v48, v49);
      goto LABEL_27;
    case 7u:
      sub_1000098A8();
      sub_1000096D4();
      if (sub_10000917C() != 7)
      {
        goto LABEL_29;
      }

      v40 = sub_100007C1C();
      v42 = sub_1000451AC(v40, v41);
LABEL_27:
      v37 = v42;

      goto LABEL_28;
    default:
      sub_1000098A8();
      sub_1000096D4();
      v31 = *v23;
      v30 = v23[1];
      if (sub_10000917C())
      {
LABEL_29:

LABEL_31:
        sub_100005000(v28, &unk_10008F480, &qword_10006F108);
        goto LABEL_32;
      }

      if (v31 == *v29 && v30 == *(v29 + 1))
      {
      }

      else
      {
        v33 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v33 & 1) == 0)
        {
          sub_100001FE8();
          sub_10000A80C(v28, v34);
LABEL_32:
          v37 = 0;
          return v37 & 1;
        }
      }

      sub_100001FE8();
      sub_10000A80C(v28, v52);
      v37 = 1;
      return v37 & 1;
  }
}

uint64_t sub_100044C94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1000228D4(&qword_10008F360, &qword_100070A20);
  __chkstk_darwin(v4 - 8);
  v6 = &v15 - v5;
  v7 = sub_1000228D4(&unk_10008F2F0, &qword_10006FFF0);
  __chkstk_darwin(v7 - 8);
  v9 = &v15 - v8;
  v10 = swift_unknownObjectRetain();
  XPCObject.init(_:)(v10, v6);
  v11 = type metadata accessor for XPCObject(0);
  result = sub_100002694(v6, 1, v11);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_10000B09C(v6, v9);
    v13 = type metadata accessor for EventValue(0);
    result = sub_100002694(v9, 1, v13);
    if (result != 1)
    {
      sub_1000455CC(sub_10002316C);
      v14 = *(*a3 + 16);
      sub_100045640(v14, sub_10002316C);
      *(*a3 + 16) = v14 + 1;
      sub_10000B670();
      return 1;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100044E78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  swift_unknownObjectRetain();
  v6 = v5(a2, a3);
  swift_unknownObjectRelease();
  return v6 & 1;
}

void sub_100044F10(void *a1@<X8>)
{
  XPCIncomingConnection.init(conn:)();
  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_100044F38@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100044ED0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_100044F60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1000164A0(a1, a2, a3);

  return CodingKey.description.getter(a1, v4);
}

uint64_t sub_100044F9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1000164A0(a1, a2, a3);

  return CodingKey.debugDescription.getter(a1, v4);
}

uint64_t sub_100045004(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EventValue(0) - 8;
  v5 = __chkstk_darwin(v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v10 = &v18 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      v16 = 1;
    }

    else
    {
      v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = a1 + v12;
      v14 = a2 + v12;
      v15 = *(v8 + 72);
      do
      {
        sub_1000096D4();
        sub_1000096D4();
        v16 = sub_1000447A8(v10, v7);
        sub_10000A80C(v7, type metadata accessor for EventValue);
        sub_10000A80C(v10, type metadata accessor for EventValue);
        if ((v16 & 1) == 0)
        {
          break;
        }

        v14 += v15;
        v13 += v15;
        --v11;
      }

      while (v11);
    }
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

uint64_t sub_1000451AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EventValue(0);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v40 - v8;
  v10 = sub_1000228D4(&qword_10008F370, &qword_10006E358);
  v11 = __chkstk_darwin(v10 - 8);
  v43 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v11);
  v15 = (&v40 - v14);
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v41 = a1;
  v42 = a2;
  v16 = 0;
  v17 = *(a1 + 64);
  v40 = a1 + 64;
  v18 = 1 << *(a1 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & v17;
  v21 = (v18 + 63) >> 6;
  v44 = (&v40 - v14);
  while (v20)
  {
    v45 = (v20 - 1) & v20;
    v22 = __clz(__rbit64(v20)) | (v16 << 6);
    v23 = v43;
LABEL_13:
    v26 = (*(v41 + 48) + 16 * v22);
    v27 = *v26;
    v28 = v26[1];
    sub_1000096D4();
    v29 = sub_1000228D4(&unk_10008FD40, &unk_100070040);
    *v23 = v27;
    v23[1] = v28;
    sub_10000B670();
    sub_1000026BC(v23, 0, 1, v29);

    v15 = v44;
LABEL_14:
    sub_1000164F4(v23, v15);
    v30 = sub_1000228D4(&unk_10008FD40, &unk_100070040);
    v31 = sub_100002694(v15, 1, v30);
    v32 = v31 == 1;
    if (v31 == 1)
    {
      return v32;
    }

    v33 = v9;
    v35 = *v15;
    v34 = v15[1];
    sub_10000B670();
    sub_100003BC0(v35, v34);
    v37 = v36;

    if ((v37 & 1) == 0)
    {
      sub_10000A80C(v7, type metadata accessor for EventValue);
      return 0;
    }

    v9 = v33;
    sub_1000096D4();
    v38 = sub_1000447A8(v33, v7);
    sub_10000A80C(v33, type metadata accessor for EventValue);
    result = sub_10000A80C(v7, type metadata accessor for EventValue);
    v15 = v44;
    v20 = v45;
    if ((v38 & 1) == 0)
    {
      return v32;
    }
  }

  v23 = v43;
  while (1)
  {
    v24 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v24 >= v21)
    {
      v39 = sub_1000228D4(&unk_10008FD40, &unk_100070040);
      sub_1000026BC(v23, 1, 1, v39);
      v45 = 0;
      goto LABEL_14;
    }

    v25 = *(v40 + 8 * v24);
    ++v16;
    if (v25)
    {
      v45 = (v25 - 1) & v25;
      v22 = __clz(__rbit64(v25)) | (v24 << 6);
      v16 = v24;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000455CC(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!result)
  {
    result = a1(result, *(v3 + 16) + 1, 1, v3);
    *v1 = result;
  }

  return result;
}

uint64_t sub_100045640(uint64_t result, uint64_t (*a2)(BOOL))
{
  v3 = *(*v2 + 24);
  if (result + 1 > (v3 >> 1))
  {
    result = a2(v3 > 1);
    *v2 = result;
  }

  return result;
}

uint64_t sub_1000456C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X4>, uint64_t a4@<X8>)
{
  sub_100003BC0(a1, a2);
  if (v7)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v4;
    v9 = *(*v4 + 24);
    v10 = sub_100008D14();
    sub_1000228D4(v10, v11);
    sub_100004D70();
    _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v9);

    v12 = a3(0);
    sub_100003C44();
    sub_10000B670();
    _NativeDictionary._delete(at:)();
    *v4 = v17;
    v13 = a4;
    v14 = 0;
    v15 = v12;
  }

  else
  {
    v15 = a3(0);
    v13 = a4;
    v14 = 1;
  }

  return sub_1000026BC(v13, v14, 1, v15);
}

uint64_t sub_100045848(uint64_t a1, uint64_t a2)
{
  v5 = v2;
  v6 = sub_100003BC0(a1, a2);
  if ((v7 & 1) == 0)
  {
    return 0;
  }

  v8 = v6;
  swift_isUniquelyReferenced_nonNull_native();
  sub_10000B7C8();
  sub_1000228D4(&qword_10008EE08, &qword_10006E898);
  sub_100004D70();
  v9 = _NativeDictionary.ensureUnique(isUnique:capacity:)(v3, v4);
  sub_100008DA8(v9, v10, v11, v12, v13, v14, v15, v16, v19, v20);
  v17 = *(*(v3 + 56) + 8 * v8);
  sub_1000228D4(&qword_10008F3B0, &unk_10006E8A0);
  _NativeDictionary._delete(at:)();
  *v5 = v3;
  return v17;
}

unint64_t sub_100045910()
{
  result = qword_10008F2C8;
  if (!qword_10008F2C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10008F2C8);
  }

  return result;
}

void sub_100045954(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_100003BC0(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_11;
  }

  v16 = v11;
  v17 = v12;
  sub_1000228D4(&qword_10008F388, &qword_10006EEC8);
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(a4 & 1, v15))
  {
    goto LABEL_5;
  }

  v18 = sub_100003BC0(a2, a3);
  if ((v17 & 1) != (v19 & 1))
  {
LABEL_11:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v16 = v18;
LABEL_5:
  if (v17)
  {
    type metadata accessor for CachedStorebag(0);
    sub_100045B58();
  }

  else
  {
    sub_10000B9D0(v16, a2, a3, a1, *v5);
  }
}

unint64_t sub_100045ADC(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

uint64_t sub_100045B58()
{
  v1 = sub_1000175F8();
  v2(v1);
  sub_100003C44();
  v3 = sub_100004EA4();
  v4(v3);
  return v0;
}

__n128 sub_100045BBC(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_100045BC8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
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

uint64_t sub_100045C08(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

void sub_100045C80(uint64_t a1)
{
  type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    sub_100045D3C(319);
    if (v2 <= 0x3F)
    {
      sub_100045D94(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_100045D3C(uint64_t a1)
{
  if (!qword_10008F438)
  {
    type metadata accessor for EventValue(255);
    v1 = type metadata accessor for Array();
    if (!v2)
    {
      atomic_store(v1, &qword_10008F438);
    }
  }
}

void sub_100045D94(uint64_t a1)
{
  if (!qword_10008F440)
  {
    type metadata accessor for EventValue(255);
    v1 = type metadata accessor for Dictionary();
    if (!v2)
    {
      atomic_store(v1, &qword_10008F440);
    }
  }
}

unint64_t sub_100045E04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10008F470;
  if (!qword_10008F470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008F470);
  }

  return result;
}

unint64_t sub_100045E5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10008F478;
  if (!qword_10008F478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008F478);
  }

  return result;
}

uint64_t sub_100045ED0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 233))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 40);
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

uint64_t sub_100045F10(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *(result + 232) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 233) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 233) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100045F98(void *a1)
{
  v3 = sub_100008DE4(a1, a1[3]);
  sub_100003DF4();
  dispatch thunk of Decoder.singleValueContainer()();
  if (!v1)
  {
    sub_100008DE4(v9, v9[3]);
    sub_100003DF4();
    v4 = dispatch thunk of SingleValueDecodingContainer.decode(_:)();
    if (!v4)
    {
      v3 = 1;
      goto LABEL_10;
    }

    if (v4 == 1)
    {
      v3 = 0;
LABEL_10:
      sub_100005284(v9);
      sub_100005284(a1);
      return v3;
    }

    v6 = type metadata accessor for DecodingError();
    swift_allocError();
    v8 = v7;
    sub_1000228D4(&qword_10008F508, &qword_10006F4B8);
    *v8 = &unk_100087B80;
    v3 = sub_100008DE4(a1, a1[3]);
    dispatch thunk of Decoder.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v6 - 8) + 104))(v8, enum case for DecodingError.typeMismatch(_:), v6);
    swift_willThrow();
    sub_100005284(v9);
  }

  sub_100005284(a1);
  return v3;
}

unint64_t sub_10004614C(uint64_t a1, uint64_t a2)
{
  v2 = _findStringSwitchCaseWithCache(cases:string:cache:)();

  if (v2 >= 0x18)
  {
    return 24;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1000461A4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7972746E756F63 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C6F687365726874 && a2 == 0xE900000000000064)
  {

    return 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_10004627C(char a1)
{
  if (a1)
  {
    return 0x6C6F687365726874;
  }

  else
  {
    return 0x7972746E756F63;
  }
}

double sub_1000462B8(void *a1)
{
  v4 = sub_1000228D4(&qword_10008F510, &qword_10006F4C0);
  sub_100001EDC();
  v6 = v5;
  __chkstk_darwin(v7);
  v9 = &v15[-v8];
  v10 = sub_100008DE4(a1, a1[3]);
  sub_1000469E4(v10, v11, v12);
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    sub_1000228D4(&qword_10008E4E8, &qword_10006D370);
    v15[15] = 0;
    sub_10001E418(&qword_10008F4A8, &qword_10008E4E8, &qword_10006D370, &protocol witness table for String);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v15[14] = 1;
    KeyedDecodingContainer.decode(_:forKey:)();
    v2 = v14;
    (*(v6 + 8))(v9, v4);
  }

  sub_100005284(a1);
  return v2;
}

uint64_t sub_1000464AC@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100045F98(a1);
  if (!v2)
  {
    *a2 = result & 1;
  }

  return result;
}

unint64_t sub_100046500@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10004614C(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_100046530@<X0>(unint64_t *a1@<X8>)
{
  result = sub_10001E968(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_10004655C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000461A0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100046590(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10001E35C(a1, a2, a3);

  return CodingKey.description.getter(a1, v4);
}

uint64_t sub_1000465CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10001E35C(a1, a2, a3);

  return CodingKey.debugDescription.getter(a1, v4);
}

uint64_t sub_100046608(uint64_t result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_100046620(result, a2, a3 & 1);
  }

  return result;
}

unint64_t sub_10004662C()
{
  result = qword_10008F4C8;
  if (!qword_10008F4C8)
  {
    sub_100025D78(&qword_10008F4C0, &qword_10006F250);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008F4C8);
  }

  return result;
}

unint64_t sub_100046690(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10008F4E0;
  if (!qword_10008F4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008F4E0);
  }

  return result;
}

uint64_t sub_1000466F0(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_100046730(uint64_t result, int a2, int a3)
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

unint64_t sub_100046788(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10008F4E8;
  if (!qword_10008F4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008F4E8);
  }

  return result;
}

unint64_t sub_1000467E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10008F4F0;
  if (!qword_10008F4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008F4F0);
  }

  return result;
}

uint64_t sub_10004683C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000461A4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100046864@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100046274();
  *a1 = result;
  return result;
}

uint64_t sub_10004688C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1000469E4(a1, a2, a3);

  return CodingKey.description.getter(a1, v4);
}

uint64_t sub_1000468C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1000469E4(a1, a2, a3);

  return CodingKey.debugDescription.getter(a1, v4);
}

void sub_100046904(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1000462B8(a1);
  if (!v2)
  {
    *a2 = v4;
    *(a2 + 8) = v5;
  }
}

unint64_t sub_100046938(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10008F4F8;
  if (!qword_10008F4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008F4F8);
  }

  return result;
}

unint64_t sub_100046990(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10008F500;
  if (!qword_10008F500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008F500);
  }

  return result;
}

unint64_t sub_1000469E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10008F518;
  if (!qword_10008F518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008F518);
  }

  return result;
}

unint64_t sub_100046A4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10008F520;
  if (!qword_10008F520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008F520);
  }

  return result;
}

unint64_t sub_100046AA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10008F528;
  if (!qword_10008F528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008F528);
  }

  return result;
}

unint64_t sub_100046AFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10008F530;
  if (!qword_10008F530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008F530);
  }

  return result;
}

uint64_t sub_100046B64()
{
  sub_1000228D4(&qword_10008EEE8, &unk_10006F660);
  v0 = sub_1000228D4(&qword_10008EEF0, &qword_10006E980);
  v1 = *(*(v0 - 8) + 72);
  v2 = (*(*(v0 - 8) + 80) + 32) & ~*(*(v0 - 8) + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_10006F5D0;
  v4 = (v3 + v2);
  v5 = *(v0 + 48);
  *v4 = XPC_ACTIVITY_REPEATING;
  *(v4 + v5) = 1;
  type metadata accessor for XPCObject(0);
  swift_storeEnumTagMultiPayload();
  v6 = (v4 + v1);
  v7 = *(v0 + 48);
  *v6 = XPC_ACTIVITY_DELAY;
  *(v6 + v7) = 86400;
  swift_storeEnumTagMultiPayload();
  v8 = (v4 + 2 * v1);
  v9 = *(v0 + 48);
  *v8 = XPC_ACTIVITY_GRACE_PERIOD;
  *(v8 + v9) = 43200;
  swift_storeEnumTagMultiPayload();
  v10 = (v4 + 3 * v1);
  v11 = (v10 + *(v0 + 48));
  *v10 = XPC_ACTIVITY_PRIORITY;
  *v11 = String.init(cString:)();
  v11[1] = v12;
  swift_storeEnumTagMultiPayload();
  v13 = (v4 + 4 * v1);
  v14 = *(v0 + 48);
  *v13 = XPC_ACTIVITY_ALLOW_BATTERY;
  *(v13 + v14) = 0;
  result = swift_storeEnumTagMultiPayload();
  if (!XPC_ACTIVITY_POWER_NAP)
  {
    __break(1u);
    goto LABEL_9;
  }

  v16 = *(v0 + 48);
  v17 = (v4 + 5 * v1);
  *v17 = XPC_ACTIVITY_POWER_NAP;
  *(v17 + v16) = 1;
  result = swift_storeEnumTagMultiPayload();
  if (!XPC_ACTIVITY_RANDOM_INITIAL_DELAY)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v18 = (v4 + 6 * v1);
  v19 = *(v0 + 48);
  *v18 = XPC_ACTIVITY_RANDOM_INITIAL_DELAY;
  *(v18 + v19) = 43200;
  result = swift_storeEnumTagMultiPayload();
  if (!XPC_ACTIVITY_EXPECTED_DURATION)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v20 = (&v4[v1] - v1);
  v21 = *(v0 + 48);
  *v20 = XPC_ACTIVITY_EXPECTED_DURATION;
  *(v20 + v21) = XPC_ACTIVITY_INTERVAL_1_MIN;
  result = swift_storeEnumTagMultiPayload();
  if (!XPC_ACTIVITY_GROUP_NAME)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v22 = &v4[v1];
  v23 = (v22 + *(v0 + 48));
  *v22 = XPC_ACTIVITY_GROUP_NAME;
  *v23 = 0xD00000000000001DLL;
  v23[1] = 0x8000000100071DE0;
  result = swift_storeEnumTagMultiPayload();
  if (!XPC_ACTIVITY_GROUP_CONCURRENCY_LIMIT)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v24 = (v4 + 9 * v1);
  v25 = *(v0 + 48);
  *v24 = XPC_ACTIVITY_GROUP_CONCURRENCY_LIMIT;
  *(v24 + v25) = 1;
  result = swift_storeEnumTagMultiPayload();
  if (XPC_ACTIVITY_DISK_INTENSIVE)
  {
    v26 = *(v0 + 48);
    v27 = (v4 + 10 * v1);
    *v27 = XPC_ACTIVITY_DISK_INTENSIVE;
    *(v27 + v26) = 1;
    swift_storeEnumTagMultiPayload();
    sub_1000228D4(&qword_10008EEF8, &unk_10006F670);
    sub_100038DC4();
    result = Dictionary.init(dictionaryLiteral:)();
    qword_100095A60 = result;
    return result;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_100046EFC()
{
  v0 = type metadata accessor for Logger();
  sub_100025BD8(v0, qword_100095A68);
  sub_1000050E4(v0, qword_100095A68);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100046F78()
{
  sub_100004680();
  v1[6] = v0;
  v2 = type metadata accessor for Date();
  v1[7] = v2;
  v1[8] = *(v2 - 8);
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();

  return _swift_task_switch(sub_100047040, v0, 0);
}

void sub_100047040()
{
  v1 = qword_100095AD8;
  v0[11] = qword_100095AD8;
  if (v1)
  {
    v2 = v0[9];
    v3 = v0[7];
    v4 = v0[8];

    static Date.now.getter();
    Date.addingTimeInterval(_:)();
    v5 = *(v4 + 8);
    v0[12] = v5;
    v0[13] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v5(v2, v3);
    v6 = swift_task_alloc();
    v0[14] = v6;
    *v6 = v0;
    v6[1] = sub_10004714C;
    v7 = v0[10];

    sub_10003E488(v7);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10004714C()
{
  v2 = *v1;
  sub_100001D58();
  *v4 = v3;
  v5 = v2[12];
  v6 = v2[10];
  v7 = v2[7];
  *v4 = *v1;
  *(v3 + 120) = v0;

  v5(v6, v7);

  v8 = v2[6];
  if (v0)
  {
    v9 = sub_1000474E0;
  }

  else
  {
    v9 = sub_1000472FC;
  }

  return _swift_task_switch(v9, v8, 0);
}

void sub_1000472FC()
{
  v1 = qword_100095AD8;
  *(v0 + 128) = qword_100095AD8;
  if (v1)
  {
    sub_100004680();

    v2 = swift_task_alloc();
    *(v0 + 136) = v2;
    *v2 = v0;
    v2[1] = sub_1000473A4;

    sub_10003EE34(v2);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1000473A4()
{
  sub_100004680();
  v2 = *v1;
  sub_100001D58();
  *v3 = v2;
  v4 = *v1;
  sub_100001D58();
  *v5 = v4;
  *(v2 + 144) = v0;

  if (v0)
  {
    v6 = *(v2 + 48);

    return _swift_task_switch(sub_100047668, v6, 0);
  }

  else
  {

    sub_100001D4C();

    return v7();
  }
}

uint64_t sub_1000474E0()
{
  v14 = v0;
  if (qword_10008DD78 != -1)
  {
    sub_1000098E4(&qword_10008DD78);
  }

  v1 = type metadata accessor for Logger();
  sub_1000050E4(v1, qword_100095A68);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v13 = v5;
    sub_100003970(4.8751e-34);
    v6 = Error.localizedDescription.getter();
    v8 = sub_1000053A0(v6, v7, &v13);

    *(v4 + 4) = v8;
    sub_10000443C(&_mh_execute_header, v9, v10, "failed to delete outdated sessions: %{public}s");
    sub_100005284(v5);
    sub_100001D1C(v5);
    sub_100001D1C(v4);
  }

  else
  {
  }

  sub_100001D4C();

  return v11();
}

uint64_t sub_100047668()
{
  v14 = v0;

  if (qword_10008DD78 != -1)
  {
    sub_1000098E4(&qword_10008DD78);
  }

  v1 = type metadata accessor for Logger();
  sub_1000050E4(v1, qword_100095A68);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v13 = v5;
    sub_100003970(4.8751e-34);
    v6 = Error.localizedDescription.getter();
    v8 = sub_1000053A0(v6, v7, &v13);

    *(v4 + 4) = v8;
    sub_10000443C(&_mh_execute_header, v9, v10, "failed to delete outdated sessions: %{public}s");
    sub_100005284(v5);
    sub_100001D1C(v5);
    sub_100001D1C(v4);
  }

  else
  {
  }

  sub_100001D4C();

  return v11();
}

uint64_t sub_10004781C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000478A8;

  return sub_100046F78();
}

uint64_t sub_1000478A8()
{
  sub_100004680();
  v1 = *v0;
  sub_100001D58();
  *v2 = v1;

  sub_100001D4C();

  return v3();
}

double sub_100047990()
{
  if (qword_10008DD70 != -1)
  {
    swift_once();
  }

  return result;
}

unint64_t sub_100047A08(uint64_t a1)
{
  result = sub_100047A30();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100047A30()
{
  result = qword_10008F5E0;
  if (!qword_10008F5E0)
  {
    type metadata accessor for CacheCleanupActivity();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008F5E0);
  }

  return result;
}

uint64_t sub_100047A90(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 9))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 2)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100047AD0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t sub_100047B2C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v5 = static Hasher._hash(seed:_:)();
    v6 = ~(-1 << *(a2 + 32));
    do
    {
      v7 = v5 & v6;
      v8 = (1 << (v5 & v6)) & *(a2 + 56 + (((v5 & v6) >> 3) & 0xFFFFFFFFFFFFFF8));
      v2 = v8 != 0;
      if (!v8)
      {
        break;
      }

      v5 = v7 + 1;
    }

    while (*(*(a2 + 48) + 8 * v7) != a1);
  }

  return v2;
}

uint64_t sub_100047BB8()
{
  sub_1000228D4(&qword_10008EEE8, &unk_10006F660);
  v0 = sub_1000228D4(&qword_10008EEF0, &qword_10006E980);
  v1 = *(*(v0 - 8) + 72);
  v2 = (*(*(v0 - 8) + 80) + 32) & ~*(*(v0 - 8) + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_10006CAC0;
  v4 = v3 + v2;
  v5 = (v3 + v2 + *(v0 + 48));
  *(v3 + v2) = XPC_ACTIVITY_PRIORITY;
  *v5 = String.init(cString:)();
  v5[1] = v6;
  type metadata accessor for XPCObject(0);
  result = swift_storeEnumTagMultiPayload();
  if (XPC_ACTIVITY_POWER_NAP)
  {
    v8 = (v4 + v1);
    v9 = *(v0 + 48);
    *v8 = XPC_ACTIVITY_POWER_NAP;
    *(v8 + v9) = 1;
    result = swift_storeEnumTagMultiPayload();
    if (XPC_ACTIVITY_POST_INSTALL)
    {
      v10 = *(v0 + 48);
      v11 = (v4 + 2 * v1);
      *v11 = XPC_ACTIVITY_POST_INSTALL;
      *(v11 + v10) = 1;
      swift_storeEnumTagMultiPayload();
      sub_1000228D4(&qword_10008EEF8, &unk_10006F670);
      sub_100038DC4();
      result = Dictionary.init(dictionaryLiteral:)();
      qword_100095A80 = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100047D78()
{
  v0 = type metadata accessor for Logger();
  sub_100025BD8(v0, qword_100095A88);
  sub_1000050E4(v0, qword_100095A88);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100047E20()
{
  v2 = type metadata accessor for URL.DirectoryHint();
  v1[9] = v2;
  v1[10] = *(v2 - 8);
  v1[11] = swift_task_alloc();
  v3 = type metadata accessor for URL();
  v1[12] = v3;
  v1[13] = *(v3 - 8);
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();

  return _swift_task_switch(sub_100047F9C, v0, 0);
}

uint64_t sub_100047F9C()
{
  v157 = v0;
  v1 = v0[13];
  v2 = v0[10];
  v137 = [objc_opt_self() defaultManager];
  v141 = (v2 + 8);
  v142 = (v2 + 104);
  HIDWORD(v140) = enum case for URL.DirectoryHint.isDirectory(_:);
  v153 = (v1 + 8);
  v144 = (v1 + 16);
  v3 = &off_100086068;
  v4 = 3;
  *&v5 = 136446210;
  v146 = v5;
  *&v5 = 136446466;
  v136 = v5;
  v152 = v0;
  do
  {
    v148 = v4;
    v150 = v3;
    v6 = v0[17];
    v8 = v0[11];
    v7 = v0[12];
    v9 = v0[9];
    v10 = *(v3 - 1);
    v11 = *v3;

    v12 = NSHomeDirectory();
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    URL.init(fileURLWithPath:isDirectory:)();

    v152[5] = v10;
    v0 = v152;
    v152[6] = v11;
    v13 = (*v142)(v8, HIDWORD(v140), v9);
    sub_10001F5A8(v13, v14, v15);
    URL.appending<A>(path:directoryHint:)();
    (*v141)(v8, v9);
    v16 = *v153;
    (*v153)(v6, v7);

    v17 = URL.checkResourceIsReachable()();
    v143 = v18;
    if (v18)
    {

LABEL_9:
      if (qword_10008DD88 != -1)
      {
        sub_100009904();
        swift_once();
      }

      v38 = v152[18];
      v39 = v152[15];
      v40 = v152[12];
      v41 = type metadata accessor for Logger();
      sub_1000050E4(v41, qword_100095A88);
      (*v144)(v39, v38, v40);
      v42 = Logger.logObject.getter();
      v43 = static os_log_type_t.debug.getter();
      v44 = os_log_type_enabled(v42, v43);
      v18 = v152[18];
      v45 = v152[15];
      v46 = v152[12];
      if (v44)
      {
        v47 = sub_100004D20();
        v48 = swift_slowAlloc();
        v156[0] = v48;
        *v47 = v146;
        v138 = URL.path.getter();
        v139 = v18;
        v50 = v49;
        v18 = v153;
        v16(v45, v46);
        v51 = sub_1000053A0(v138, v50, v156);

        *(v47 + 4) = v51;
        _os_log_impl(&_mh_execute_header, v42, v43, "skipping %{public}s", v47, 0xCu);
        sub_100005284(v48);
        sub_100001D1C(v48);
        sub_100001D1C(v47);

        v16(v139, v46);
        goto LABEL_21;
      }

LABEL_14:
      v16(v45, v46);
      v16(v18, v46);
      goto LABEL_21;
    }

    if (!v17)
    {
      goto LABEL_9;
    }

    if (qword_10008DD88 != -1)
    {
      sub_100009904();
      swift_once();
    }

    v19 = v152[18];
    v20 = v152[16];
    v21 = v152[12];
    v22 = type metadata accessor for Logger();
    v23 = sub_1000050E4(v22, qword_100095A88);
    v24 = *v144;
    (*v144)(v20, v19, v21);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();
    v27 = os_log_type_enabled(v25, v26);
    v28 = v152[16];
    v29 = v152[12];
    if (v27)
    {
      v30 = sub_100004D20();
      v139 = v23;
      v31 = swift_slowAlloc();
      v156[0] = v31;
      *v30 = v146;
      v138 = v24;
      v32 = URL.path.getter();
      v18 = v16;
      v34 = v33;
      (v18)(v28, v29);
      v35 = v32;
      v24 = v138;
      v36 = sub_1000053A0(v35, v34, v156);
      v16 = v18;

      *(v30 + 4) = v36;
      _os_log_impl(&_mh_execute_header, v25, v26, "removing %{public}s", v30, 0xCu);
      sub_100005284(v31);
      sub_100001D1C(v31);
      sub_100004664();
    }

    else
    {

      v16(v28, v29);
    }

    URL._bridgeToObjectiveC()(v37);
    v53 = v52;
    v152[7] = 0;
    v54 = [v137 removeItemAtURL:v52 error:v152 + 7];

    v55 = v152[7];
    v56 = v152[18];
    if (v54)
    {
      v46 = v152[12];
      v57 = v55;
      v58 = v56;
      v59 = v46;
    }

    else
    {
      v60 = v152[14];
      v61 = v152[12];
      v62 = v55;
      v63 = _convertNSErrorToError(_:)();

      swift_willThrow();
      v143 = v63;
      v24(v60, v56, v61);
      swift_errorRetain();
      v64 = Logger.logObject.getter();
      v65 = static os_log_type_t.error.getter();

      v66 = os_log_type_enabled(v64, v65);
      v18 = v152[18];
      v45 = v152[14];
      v46 = v152[12];
      if (!v66)
      {

        goto LABEL_14;
      }

      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v156[0] = v68;
      *v67 = v136;
      v138 = v46;
      v139 = v18;
      v69 = URL.path.getter();
      v70 = v46;
      v46 = v71;
      v16(v45, v70);
      v72 = sub_1000053A0(v69, v46, v156);

      *(v67 + 4) = v72;
      *(v67 + 12) = 2082;
      swift_getErrorValue();
      v73 = Error.localizedDescription.getter();
      v18 = sub_1000053A0(v73, v74, v156);

      *(v67 + 14) = v18;
      _os_log_impl(&_mh_execute_header, v64, v65, "failed removing %{public}s: %{public}s", v67, 0x16u);
      swift_arrayDestroy();
      sub_100001D1C(v68);
      sub_100001D1C(v67);

      v59 = v138;
      v58 = v139;
    }

    v16(v58, v59);
LABEL_21:
    v3 = v150 + 2;
    v4 = v148 - 1;
  }

  while (v148 != 1);
  if (qword_10008DDC8 != -1)
  {
LABEL_62:
    swift_once();
  }

  v75 = [qword_100095B08 dictionaryRepresentation];
  v76 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v77 = v76 + 64;
  v78 = -1 << *(v76 + 32);
  if (-v78 < 64)
  {
    v79 = ~(-1 << -v78);
  }

  else
  {
    v79 = -1;
  }

  v80 = v79 & *(v76 + 64);
  v81 = (63 - v78) >> 6;

  v82 = 0;
  v149 = v76;
  v151 = v81;
  v145 = v76 + 64;
LABEL_29:
  while (v80)
  {
LABEL_34:
    v84 = (*(v76 + 48) + ((v82 << 10) | (16 * __clz(__rbit64(v80)))));
    v85 = *v84;
    v86 = v84[1];
    v87 = qword_10008DD88;

    if (v87 != -1)
    {
      sub_100009904();
      swift_once();
    }

    v88 = type metadata accessor for Logger();
    v89 = sub_1000050E4(v88, qword_100095A88);

    v154 = v89;
    v90 = Logger.logObject.getter();
    v91 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v90, v91))
    {
      sub_100004D20();
      v92 = sub_100004414();
      *(v18 + 4) = sub_100002018(v92, v93, v94, v95, v96, v97, v98, v99, v136, *(&v136 + 1), v137, v138, v139, v140, v141, v142, v143, v145, v146, *(&v146 + 1), v147, v149, v151, v152, v154, v155, v156[0]);
      _os_log_impl(&_mh_execute_header, v90, v91, "default set: %{public}s", v18, 0xCu);
      sub_100005284(v46);
      sub_100004664();
      sub_100001D1C(v18);
    }

    if (qword_10008DD90 != -1)
    {
      swift_once();
    }

    v80 &= v80 - 1;
    v100 = qword_100095AA0;
    if (*(qword_100095AA0 + 16))
    {
      Hasher.init(_seed:)();
      String.hash(into:)();
      v101 = Hasher._finalize()();
      v18 = ~(-1 << *(v100 + 32));
      while (1)
      {
        v46 = v101 & v18;
        if (((*(v100 + 56 + (((v101 & v18) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v101 & v18)) & 1) == 0)
        {
          break;
        }

        v102 = (*(v100 + 48) + 16 * v46);
        if (*v102 != v85 || v102[1] != v86)
        {
          v104 = _stringCompareWithSmolCheck(_:_:expecting:)();
          v101 = v46 + 1;
          if ((v104 & 1) == 0)
          {
            continue;
          }
        }

        v105 = Logger.logObject.getter();
        v106 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v105, v106))
        {
          sub_100004D20();
          v107 = sub_100004414();
          *(v18 + 4) = sub_100002018(v107, v108, v109, v110, v111, v112, v113, v114, v136, *(&v136 + 1), v137, v138, v139, v140, v141, v142, v143, v145, v146, *(&v146 + 1), v147, v149, v151, v152, v154, v155, v156[0]);
          _os_log_impl(&_mh_execute_header, v105, v106, "removing default %{public}s", v18, 0xCu);
          sub_100005284(v46);
          sub_100004664();
          sub_100001D1C(v18);
        }

        v115 = qword_100095B08;
        v116 = String._bridgeToObjectiveC()();

        [v115 removeObjectForKey:v116];

        v81 = v151;
        goto LABEL_29;
      }
    }

    v117 = &unk_100086108;
    v118 = 3;
    do
    {
      v120 = *(v117 - 1);
      v119 = *v117;

      v121._countAndFlagsBits = v120;
      v121._object = v119;
      LOBYTE(v120) = String.hasPrefix(_:)(v121);

      if (v120)
      {

        v122 = Logger.logObject.getter();
        v123 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v122, v123))
        {
          sub_100004D20();
          v124 = sub_100004414();
          *(v18 + 4) = sub_100002018(v124, v125, v126, v127, v128, v129, v130, v131, v136, *(&v136 + 1), v137, v138, v139, v140, v141, v142, v143, v145, v146, *(&v146 + 1), v147, v149, v151, v152, v154, v155, v156[0]);
          _os_log_impl(&_mh_execute_header, v122, v123, "removing default %{public}s", v18, 0xCu);
          sub_100005284(v46);
          sub_100004664();
          sub_100001D1C(v18);
        }

        v132 = qword_100095B08;
        v133 = String._bridgeToObjectiveC()();
        [v132 removeObjectForKey:v133];
      }

      v117 += 2;
      --v118;
    }

    while (v118);

    v76 = v149;
    v81 = v151;
    v77 = v145;
  }

  while (1)
  {
    v83 = v82 + 1;
    if (__OFADD__(v82, 1))
    {
      __break(1u);
      goto LABEL_62;
    }

    if (v83 >= v81)
    {
      break;
    }

    v80 = *(v77 + 8 * v83);
    ++v82;
    if (v80)
    {
      v82 = v83;
      goto LABEL_34;
    }
  }

  v134 = v152[1];

  return v134();
}

uint64_t sub_100048BE0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10001BF00;

  return sub_100047E20();
}

double sub_100048C6C()
{
  if (qword_10008DD80 != -1)
  {
    swift_once();
  }

  return result;
}

unint64_t sub_100048CE8(uint64_t a1)
{
  result = sub_100048D10();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100048D10()
{
  result = qword_10008F698;
  if (!qword_10008F698)
  {
    type metadata accessor for PostInstallActivity();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008F698);
  }

  return result;
}

uint64_t sub_100048D84()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for SubmitEventsActivity();
  if (v2 == v1)
  {
    v8 = sub_10000FFAC(v2);
    swift_defaultActor_initialize();
    sub_1000044BC();
    v11 = &unk_10006FCA0;
  }

  else
  {
    refreshed = type metadata accessor for RefreshStorebagsActivity();
    if (refreshed == v1)
    {
      v8 = sub_10000FFAC(refreshed);
      swift_defaultActor_initialize();
      v9 = &unk_10008F890;
      v10 = type metadata accessor for RefreshStorebagsActivity;
      v11 = &unk_10006E930;
    }

    else
    {
      v4 = type metadata accessor for SubmitEagerEventsActivity();
      if (v4 == v1)
      {
        v8 = sub_10000FFAC(v4);
        swift_defaultActor_initialize();
        v9 = &qword_10008EE18;
        v10 = type metadata accessor for SubmitEagerEventsActivity;
        v11 = &unk_10006ED10;
      }

      else
      {
        v5 = type metadata accessor for CacheCleanupActivity();
        if (v5 == v1)
        {
          v8 = sub_10000FFAC(v5);
          swift_defaultActor_initialize();
          sub_1000051C8();
          v11 = &unk_10006F618;
        }

        else
        {
          v6 = type metadata accessor for PostInstallActivity();
          if (v6 != v1)
          {
            return _assertionFailure(_:_:file:line:flags:)();
          }

          v8 = sub_10000FFAC(v6);
          swift_defaultActor_initialize();
          sub_100004768();
          v11 = &unk_10006F778;
        }
      }
    }
  }

  v12 = sub_10004AAFC(v9, 255, v10, v11);
  v13 = *(v0 + 8);

  return v13(v8, v12);
}

uint64_t sub_100048F84(xpc_object_t criteria)
{
  v2 = *(v1 + 16);
  if (!criteria)
  {
    criteria = xpc_dictionary_create_empty();
  }

  xpc_activity_set_criteria(v2, criteria);

  return swift_unknownObjectRelease();
}

uint64_t sub_100048FD0()
{
  swift_unknownObjectRelease();

  return _swift_deallocClassInstance(v0, 24, 7);
}

uint64_t sub_10004902C()
{
  v0 = type metadata accessor for Logger();
  sub_100025BD8(v0, qword_10008F6A0);
  sub_1000050E4(v0, qword_10008F6A0);
  return Logger.init(subsystem:category:)();
}

void sub_1000490A4(char a1)
{
  if (a1 != 2)
  {
    *(v1 + 136) = a1 & 1;
  }

  _StringGuts.grow(_:)(26);

  v15 = 0xD000000000000018;
  v16 = 0x8000000100071970;
  v2 = *(v1 + 112);
  v3 = *(v1 + 120);
  v4 = *(v3 + 32);
  v5._countAndFlagsBits = v4(v2, v3);
  String.append(_:)(v5);

  v19 = sub_10004AD5C;
  v20 = v1;
  v15 = _NSConcreteStackBlock;
  v16 = 1107296256;
  v17 = sub_100001658;
  v18 = &unk_100087DA0;
  v6 = _Block_copy(&v15);

  v7 = String.utf8CString.getter();

  xpc_activity_register((v7 + 32), XPC_ACTIVITY_CHECK_IN, v6);

  _Block_release(v6);
  if (qword_10008DD98 != -1)
  {
    sub_100009918(&qword_10008DD98);
  }

  v8 = type metadata accessor for Logger();
  sub_1000050E4(v8, qword_10008F6A0);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = sub_100004D20();
    v12 = sub_100004F18();
    v15 = v12;
    *v11 = 136315138;
    v13 = v4(v2, v3);
    sub_1000053A0(v13, v14, &v15);
    sub_100003E00();

    *(v11 + 4) = v2;
    _os_log_impl(&_mh_execute_header, v9, v10, "registered: %s", v11, 0xCu);
    sub_100005284(v12);
    sub_100001D64();
    sub_100001D1C(v11);
  }
}

void sub_100049324()
{
  v1 = sub_1000228D4(&qword_10008F360, &qword_100070A20);
  v2 = sub_100001D80(v1);
  __chkstk_darwin(v2);
  v46 = &v42 - v3;
  v45 = type metadata accessor for XPCObject(0);
  v43 = *(v45 - 8);
  __chkstk_darwin(v45);
  v5 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000228D4(&qword_10008F8A0, &qword_10006F8B0);
  v7 = sub_100001D80(v6);
  v8 = __chkstk_darwin(v7);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v42 - v11;
  v13 = *(v0 + 112);
  v14 = *(v0 + 120);
  v15 = *(v14 + 24);
  v16 = *(v15(v13, v14) + 16);

  if (v16)
  {
    v47 = v12;
    v48 = v10;
    v49 = RTCXPCDictionary.init()();
    v42 = v49;
    swift_unknownObjectRetain();
    v17 = v15(v13, v14);
    v18 = 0;
    v20 = v17 + 64;
    v19 = *(v17 + 64);
    v44 = v17;
    v21 = 1 << *(v17 + 32);
    v22 = -1;
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    v23 = v22 & v19;
    v24 = (v21 + 63) >> 6;
    v25 = &unk_10008F8A8;
    while (v23)
    {
      v26 = v18;
      v28 = v47;
      v27 = v48;
LABEL_12:
      v29 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
      v30 = v29 | (v26 << 6);
      v31 = *(*(v44 + 48) + 8 * v30);
      sub_10004AC88(*(v44 + 56) + *(v43 + 72) * v30, v5);
      v32 = sub_1000228D4(v25, &unk_10006F8B8);
      v33 = *(v32 + 48);
      *v27 = v31;
      sub_100004254(v5, v27 + v33);
      sub_1000026BC(v27, 0, 1, v32);
LABEL_13:
      sub_10004ACEC(v27, v28);
      v34 = sub_1000228D4(v25, &unk_10006F8B8);
      if (sub_100002694(v28, 1, v34) == 1)
      {
        swift_unknownObjectRelease();

        goto LABEL_17;
      }

      sub_100004254(v28 + *(v34 + 48), v5);
      v35 = String.init(cString:)();
      v37 = v36;
      v38 = v25;
      v39 = v46;
      sub_10004AC88(v5, v46);
      sub_1000026BC(v39, 0, 1, v45);
      v40 = v39;
      v25 = v38;
      RTCXPCDictionary.subscript.setter(v40, v35, v37);
      sub_10002E5EC(v5);
    }

    v28 = v47;
    v27 = v48;
    while (1)
    {
      v26 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v26 >= v24)
      {
        v41 = sub_1000228D4(v25, &unk_10006F8B8);
        sub_100009B70(v41);
        v23 = 0;
        goto LABEL_13;
      }

      v23 = *(v20 + 8 * v26);
      ++v18;
      if (v23)
      {
        v18 = v26;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:
    sub_10000B740();
  }
}

void sub_1000496BC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1000228D4(&qword_10008E750, &qword_10006F860);
  v5 = sub_100001D80(v4);
  __chkstk_darwin(v5);
  type metadata accessor for XPCActivityHandle();
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  v7 = swift_unknownObjectRetain();
  state = xpc_activity_get_state(v7);
  if (state == 2)
  {
    if (qword_10008DD98 != -1)
    {
      sub_100009918(&qword_10008DD98);
    }

    v21 = type metadata accessor for Logger();
    sub_1000050E4(v21, qword_10008F6A0);

    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = sub_100004D20();
      v25 = sub_100004F18();
      v45 = v25;
      *v24 = 136315138;
      sub_1000029C4();
      v27 = v26();
      v29 = sub_1000053A0(v27, v28, &v45);

      *(v24 + 4) = v29;
      _os_log_impl(&_mh_execute_header, v22, v23, "run: %s", v24, 0xCu);
      sub_100005284(v25);
      sub_100001D1C(v25);
      sub_100001D64();
    }

    should_defer = xpc_activity_should_defer(*(v6 + 16));
    v31 = *(v6 + 16);
    if (should_defer)
    {
      xpc_activity_set_state(v31, 3);
      goto LABEL_20;
    }

    xpc_activity_set_state(v31, 4);
    v37 = type metadata accessor for TaskPriority();
    sub_100009B70(v37);
    v38 = swift_allocObject();
    v38[2] = 0;
    v38[3] = 0;
    v38[4] = v2;
    v38[5] = v6;

    v39 = sub_100003CD0();
    sub_10002D48C(v39, v40, v41, v42, v38);

LABEL_25:
    sub_10000B740();
    return;
  }

  if (state)
  {
    if (qword_10008DD98 != -1)
    {
      sub_100009918(&qword_10008DD98);
    }

    v32 = type metadata accessor for Logger();
    sub_1000050E4(v32, qword_10008F6A0);
    sub_100003E00();

    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = sub_100004D20();
      *v35 = 134217984;
      *(v35 + 4) = xpc_activity_get_state(*(v6 + 16));

      _os_log_impl(&_mh_execute_header, v33, v34, "unrecognized XPC activity state: %ld", v35, 0xCu);
      sub_100001D1C(v35);

      goto LABEL_20;
    }

    goto LABEL_25;
  }

  if (qword_10008DD98 != -1)
  {
    sub_100009918(&qword_10008DD98);
  }

  v9 = type metadata accessor for Logger();
  sub_1000050E4(v9, qword_10008F6A0);

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = sub_100004D20();
    v13 = sub_100004F18();
    v45 = v13;
    *v12 = 136315138;
    sub_1000029C4();
    v15 = v14();
    v17 = sub_1000053A0(v15, v16, &v45);

    *(v12 + 4) = v17;
    sub_1000119C4(&_mh_execute_header, v18, v19, "checkin: %s");
    sub_100005284(v13);
    sub_100001D64();
    sub_100001D1C(v12);
  }

  sub_100049324();
  if (v20)
  {
    if (xpc_activity_copy_criteria(*(v6 + 16)))
    {
      sub_100003E00();

      swift_unknownObjectRelease();
    }

    else
    {
      v43 = swift_unknownObjectRetain();
      sub_100048F84(v43);
    }

    sub_10000B740();

    swift_unknownObjectRelease();
    return;
  }

LABEL_20:
  sub_10000B740();
}

uint64_t sub_100049B24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return _swift_task_switch(sub_100049B44, a4, 0);
}

uint64_t sub_100049B44()
{
  sub_100004680();
  sub_100049D3C(*(v0 + 24));
  sub_100001D4C();

  return v1();
}

void sub_100049B9C()
{
  if (*(v0 + 128))
  {
    v1 = v0;
    v2 = qword_10008DD98;

    if (v2 != -1)
    {
      sub_100009918(&qword_10008DD98);
    }

    v3 = type metadata accessor for Logger();
    sub_1000050E4(v3, qword_10008F6A0);
    sub_100003E00();

    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = sub_100004D20();
      v7 = sub_100004F18();
      v14 = v7;
      *v6 = 136315138;
      sub_1000029C4();
      v9 = v8();
      v11 = sub_1000053A0(v9, v10, &v14);

      *(v6 + 4) = v11;
      sub_1000119C4(&_mh_execute_header, v12, v13, "cancel: %s");
      sub_100005284(v7);
      sub_100001D64();
      sub_100001D1C(v6);
    }

    sub_1000228D4(&unk_10008E6E0, &qword_10006F890);
    Task.cancel()();

    *(v1 + 128) = 0;
  }
}

void sub_100049D3C(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = sub_1000228D4(&qword_10008E750, &qword_10006F860);
  v6 = sub_100001D80(v5);
  __chkstk_darwin(v6);
  if (*(v2 + 136) == 1)
  {
    xpc_activity_set_state(*(a1 + 16), 5);
    if (qword_10008DD98 != -1)
    {
      sub_100009918(&qword_10008DD98);
    }

    v7 = type metadata accessor for Logger();
    sub_1000050E4(v7, qword_10008F6A0);
    sub_100003E00();

    v24 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v24, v8))
    {
      v9 = sub_100004D20();
      v10 = sub_100004F18();
      aBlock[0] = v10;
      *v9 = 136315138;
      sub_1000029C4();
      v12 = v11();
      sub_1000053A0(v12, v13, aBlock);
      sub_100003E00();

      *(v9 + 4) = a1;
      _os_log_impl(&_mh_execute_header, v24, v8, "disabled: skipping %s", v9, 0xCu);
      sub_100005284(v10);
      sub_100001D1C(v10);
      sub_100001D1C(v9);
    }

    else
    {
    }
  }

  else
  {
    aBlock[4] = sub_10004A8F0;
    aBlock[5] = v2;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100001658;
    aBlock[3] = &unk_100087D00;
    v14 = _Block_copy(aBlock);

    v15 = xpc_activity_add_eligibility_changed_handler();
    _Block_release(v14);
    v16 = type metadata accessor for TaskPriority();
    sub_100009B70(v16);
    v18 = sub_10004AAFC(&qword_10008F870, v17, type metadata accessor for XPCActivity, &unk_10006F834);
    v19 = swift_allocObject();
    v19[2] = v2;
    v19[3] = v18;
    v19[4] = v15;
    v19[5] = a1;
    v19[6] = v2;
    v19[7] = v4;
    swift_retain_n();

    v20 = sub_100003CD0();
    *(v2 + 128) = sub_10005A254(v20, v21, v22, v23, v19);
  }
}

uint64_t sub_10004A06C(_xpc_activity_s *a1, uint64_t a2)
{
  v4 = sub_1000228D4(&qword_10008E750, &qword_10006F860);
  __chkstk_darwin(v4 - 8);
  v6 = &v10 - v5;
  result = xpc_activity_should_defer(a1);
  if (result)
  {
    v8 = type metadata accessor for TaskPriority();
    sub_1000026BC(v6, 1, 1, v8);
    v9 = swift_allocObject();
    v9[2] = 0;
    v9[3] = 0;
    v9[4] = a2;

    sub_10002D48C(0, 0, v6, &unk_10006F888, v9);
  }

  return result;
}

uint64_t sub_10004A184()
{
  sub_100004680();
  sub_100049B9C();
  sub_100001D4C();

  return v0();
}

uint64_t sub_10004A1DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  return _swift_task_switch(sub_10004A200, a6, 0);
}

uint64_t sub_10004A200()
{
  sub_100004680();
  v1 = *(*(v0 + 56) + 112);
  v2 = swift_task_alloc();
  *(v0 + 72) = v2;
  *v2 = v0;
  v2[1] = sub_10004A29C;

  return sub_100048D64(v1);
}

uint64_t sub_10004A29C()
{
  sub_100004680();
  sub_100003B0C();
  v2[2] = v0;
  v2[3] = v1;
  v2[4] = v3;
  v4 = v2[7];
  v5 = *v0;
  sub_1000043E4();
  *v6 = v5;
  *(v8 + 80) = v7;

  return _swift_task_switch(sub_10004A3AC, v4, 0);
}

uint64_t sub_10004A3AC()
{
  static Task<>.checkCancellation()();
  v1 = *(v0 + 32);
  ObjectType = swift_getObjectType();
  v5 = (*(v1 + 16) + **(v1 + 16));
  v3 = swift_task_alloc();
  *(v0 + 88) = v3;
  *v3 = v0;
  v3[1] = sub_10004A53C;

  return v5(ObjectType, v1);
}

uint64_t sub_10004A53C()
{
  sub_100004680();
  sub_100003B0C();
  v2 = *(v1 + 56);
  v3 = *v0;
  sub_1000043E4();
  *v4 = v3;

  return _swift_task_switch(sub_10004A63C, v2, 0);
}

uint64_t sub_10004A63C()
{
  v1 = v0[7];
  v3 = v0[5];
  v2 = v0[6];
  swift_unknownObjectRelease();
  sub_10004A6C0(v3, v2, v1);
  sub_100001D4C();

  return v4();
}

void sub_10004A6C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    xpc_activity_remove_eligibility_changed_handler();
  }

  xpc_activity_set_state(*(a2 + 16), 5);
  if (qword_10008DD98 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_1000050E4(v5, qword_10008F6A0);

  oslog = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13 = v8;
    *v7 = 136315138;
    v9 = (*(*(a3 + 120) + 32))();
    v11 = sub_1000053A0(v9, v10, &v13);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, oslog, v6, "done: %s", v7, 0xCu);
    sub_100005284(v8);
  }
}

uint64_t sub_10004A850(uint64_t a1, uint64_t a2)
{
  swift_defaultActor_initialize();
  *(v2 + 120) = a2;
  *(v2 + 128) = 0;
  *(v2 + 136) = 0;
  *(v2 + 112) = a1;
  return v2;
}

uint64_t sub_10004A894()
{

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_10004A8F8()
{
  v1 = v0[4];
  v2 = v0[5];
  v4 = v0[6];
  v3 = v0[7];
  v5 = swift_task_alloc();
  v6 = sub_100003900(v5);
  *v6 = v7;
  v8 = sub_100001F7C(v6);

  return sub_10004A1DC(v8, v9, v10, v1, v2, v4, v3);
}

uint64_t sub_10004A9B4()
{
  sub_1000228D4(&unk_10008E1E0, &qword_10006CC40);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_10006F7C0;
  type metadata accessor for SubmitEventsActivity();
  sub_1000044BC();
  v4 = sub_10004AAFC(v2, 255, v3, &unk_10006FCA0);
  type metadata accessor for XPCActivity();
  swift_allocObject();
  sub_10000BC04();
  *(v1 + 32) = v0;
  type metadata accessor for PostInstallActivity();
  sub_100004768();
  sub_10004AAFC(v5, 255, v6, &unk_10006F778);
  sub_1000124A8();
  sub_10000BC04();
  *(v1 + 40) = v0;
  v7 = type metadata accessor for CacheCleanupActivity();
  sub_1000051C8();
  sub_10004AAFC(v8, 255, v9, &unk_10006F618);
  v10 = sub_1000124A8();
  result = sub_10004A850(v7, v4);
  *(v1 + 48) = v10;
  qword_100095AA8 = v1;
  return result;
}

uint64_t sub_10004AAFC(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10004AB44()
{
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  v3 = sub_100003900(v2);
  *v3 = v4;
  v5 = sub_100001F7C(v3);

  return sub_10004A164(v5, v6, v7, v1);
}

uint64_t sub_10004ABE0()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = swift_task_alloc();
  v4 = sub_100003900(v3);
  *v4 = v5;
  v6 = sub_100001F7C(v4);

  return sub_100049B24(v6, v7, v8, v2, v1);
}

uint64_t sub_10004AC88(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for XPCObject(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10004ACEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000228D4(&qword_10008F8A0, &qword_10006F8B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10004ADC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = sub_1000228D4(&unk_10008F2F0, &qword_10006FFF0);
  v11 = sub_100001D80(v10);
  __chkstk_darwin(v11);
  sub_10000286C();
  v14 = (v12 - v13);
  v16 = __chkstk_darwin(v15);
  v18 = &v43 - v17;
  v19 = __chkstk_darwin(v16);
  v21 = (&v43 - v20);
  __chkstk_darwin(v19);
  v23 = &v43 - v22;
  if (*(a6 + 16))
  {
    if (!*(a3 + 16))
    {
      goto LABEL_8;
    }

    v24 = sub_100003BC0(0x646F6874656D5FLL, 0xE700000000000000);
    if ((v25 & 1) == 0)
    {
      goto LABEL_8;
    }

    v26 = v24;
    v27 = *(a3 + 56);
    v28 = type metadata accessor for EventValue(0);
    sub_100003C44();
    sub_10001C2A0(v27 + *(v29 + 72) * v26, v23);
    v30 = sub_100007020();
    sub_1000026BC(v30, v31, v32, v28);
    sub_10004E03C(v23, v21);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      v34 = *v21;
    }

    else
    {
      if (EnumCaseMultiPayload != 2)
      {
        sub_10001C5EC(v21);
        goto LABEL_9;
      }

      v34 = *v21;
      if (v34 < 0)
      {
        __break(1u);
LABEL_8:
        type metadata accessor for EventValue(0);
        v35 = sub_100001DE8();
        sub_1000026BC(v35, v36, v37, v38);
LABEL_9:
        v39 = v23;
LABEL_23:
        sub_100005000(v39, &unk_10008F2F0, &qword_10006FFF0);
        return 0;
      }
    }

    sub_100005000(v23, &unk_10008F2F0, &qword_10006FFF0);
    if ((sub_100047B2C(v34, a6) & 1) == 0)
    {
      return 0;
    }
  }

  if (!*(a7 + 16))
  {
    return 1;
  }

  sub_10000BC78(0x7375746174735FLL, 0xE700000000000000, a3, v18);
  v40 = type metadata accessor for EventValue(0);
  if (sub_100002694(v18, 1, v40) == 1)
  {
    goto LABEL_22;
  }

  sub_10004E03C(v18, v14);
  result = swift_getEnumCaseMultiPayload();
  if (result != 2)
  {
    if (result == 1)
    {
      v42 = *v14;
      goto LABEL_19;
    }

    sub_10001C5EC(v14);
LABEL_22:
    v39 = v18;
    goto LABEL_23;
  }

  v42 = *v14;
  if (*v14 < 0)
  {
    __break(1u);
    return result;
  }

LABEL_19:
  sub_100005000(v18, &unk_10008F2F0, &qword_10006FFF0);
  return (sub_100047B2C(v42, a7) & 1) != 0;
}

uint64_t sub_10004B0B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  if (qword_10008DDA8 != -1)
  {
    swift_once();
  }

  v10 = qword_100095AB0;

  result = sub_10004B154(v11, v10);
  *a5 = a1;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  a5[4] = result;
  return result;
}

uint64_t sub_10004B154(uint64_t result, uint64_t a2)
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

    sub_100015F14(&v14, v12, v13);
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

void sub_10004B27C()
{
  sub_100003B78();
  v3 = v2;
  v4 = sub_1000228D4(&unk_10008F2F0, &qword_10006FFF0);
  sub_100001D80(v4);
  sub_100003EC8();
  v6 = __chkstk_darwin(v5);
  v8 = &v57 - v7;
  v9 = *(v0 + 16);
  v10 = *(v0 + 24);
  v62 = v0;
  v11 = *(v3 + 16);
  if (sub_10004ADC8(v6, v12, v11, v13, v14, v9, v10))
  {
    v58 = v3;
    v59 = v1;
    v15 = v11 + 64;
    v16 = 1 << *(v11 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v11 + 64);
    v19 = (v16 + 63) >> 6;
    swift_bridgeObjectRetain_n();
    v20 = 0;
    v63 = _swiftEmptyArrayStorage;
    v60 = v11 + 64;
    v61 = v11;
    for (i = v8; v18; v15 = v60)
    {
LABEL_11:
      v18 &= v18 - 1;
      sub_100007C44();
      v25 = *v23;
      v24 = v23[1];
      v26 = *(v62 + 32);
      if (*(v26 + 16))
      {
        Hasher.init(_seed:)();

        String.hash(into:)();
        v27 = Hasher._finalize()();
        v28 = ~(-1 << *(v26 + 32));
        while (1)
        {
          v29 = v27 & v28;
          if (((*(v26 + 56 + (((v27 & v28) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v27 & v28)) & 1) == 0)
          {
            break;
          }

          v30 = (*(v26 + 48) + 16 * v29);
          if (*v30 != v25 || v30[1] != v24)
          {
            v32 = _stringCompareWithSmolCheck(_:_:expecting:)();
            v27 = v29 + 1;
            if ((v32 & 1) == 0)
            {
              continue;
            }
          }

          v11 = v61;
          goto LABEL_26;
        }
      }

      else
      {
      }

      v33 = v63;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1000039D8();
        sub_100020328();
        v33 = v37;
      }

      v11 = v61;
      v35 = v33[2];
      v34 = v33[3];
      if (v35 >= v34 >> 1)
      {
        sub_100005388(v34);
        sub_100020328();
        v33 = v38;
      }

      v33[2] = v35 + 1;
      v63 = v33;
      v36 = &v33[2 * v35];
      v36[4] = v25;
      v36[5] = v24;
LABEL_26:
      v8 = i;
    }

    v21 = v63;
    while (1)
    {
      v22 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        return;
      }

      if (v22 >= v19)
      {
        break;
      }

      v18 = *(v15 + 8 * v22);
      ++v20;
      if (v18)
      {
        v20 = v22;
        goto LABEL_11;
      }
    }

    v39 = v21[2];
    if (v39)
    {
      v40 = v21 + 5;
      v41 = v11;
      do
      {
        v42 = *(v40 - 1);
        v43 = *v40;

        v44 = sub_100003BC0(v42, v43);
        v46 = v45;

        if (v46)
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v64 = v41;
          v48 = *(v41 + 24);
          sub_1000228D4(&qword_10008F2E8, &unk_10006FAD0);
          _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v48);
          v41 = v64;

          v49 = *(v41 + 56);
          v50 = type metadata accessor for EventValue(0);
          sub_100003C44();
          v52 = v49 + *(v51 + 72) * v44;
          v8 = i;
          sub_1000166B4(v52, i);
          _NativeDictionary._delete(at:)();
          v53 = sub_100007020();
          v56 = v50;
        }

        else
        {
          type metadata accessor for EventValue(0);
          v53 = sub_100001DE8();
        }

        sub_1000026BC(v53, v54, v55, v56);
        sub_100005000(v8, &unk_10008F2F0, &qword_10006FFF0);
        v40 += 2;
        --v39;
      }

      while (v39);

      v11 = v41;
    }

    else
    {
    }

    *(v58 + 16) = v11;
  }

  sub_100003CE4();
}

double sub_10004B644@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_10004B0B8(a1, a2, a3, a4, v8);
  result = *v8;
  v7 = v8[1];
  *a5 = v8[0];
  *(a5 + 16) = v7;
  *(a5 + 32) = v9;
  return result;
}

void sub_10004B6A4()
{
  sub_100003B78();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = sub_1000228D4(&unk_10008F2F0, &qword_10006FFF0);
  sub_100001D80(v9);
  sub_100003EC8();
  v11 = __chkstk_darwin(v10);
  v13 = &v42 - v12;
  v14 = *(v8 + 16);
  if (sub_10004ADC8(v11, v15, v14, v16, v17, v4, v2))
  {
    v43 = v8;
    v44 = v0;
    v18 = v14;
    v19 = v6 + 56;
    sub_100009754();
    v22 = v21 & v20;
    v24 = (v23 + 63) >> 6;

    v25 = 0;
    v42 = v18;
    v45 = v6;
    if (v22)
    {
      goto LABEL_7;
    }

    while (1)
    {
      v26 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v26 >= v24)
      {

        *(v43 + 16) = v18;
        goto LABEL_13;
      }

      v22 = *(v19 + 8 * v26);
      ++v25;
      if (v22)
      {
        v25 = v26;
        do
        {
LABEL_7:
          sub_100007C44();
          v28 = *v27;
          v29 = v27[1];

          v30 = sub_100003BC0(v28, v29);
          v32 = v31;

          if (v32)
          {
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v34 = *(v18 + 24);
            sub_1000228D4(&qword_10008F2E8, &unk_10006FAD0);
            _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v34);

            v35 = *(v18 + 56);
            v36 = type metadata accessor for EventValue(0);
            sub_100003C44();
            sub_1000166B4(v35 + *(v37 + 72) * v30, v13);
            _NativeDictionary._delete(at:)();
            v38 = sub_100007020();
            v41 = v36;
          }

          else
          {
            type metadata accessor for EventValue(0);
            v38 = sub_100001DE8();
          }

          sub_1000026BC(v38, v39, v40, v41);
          v22 &= v22 - 1;
          sub_100005000(v13, &unk_10008F2F0, &qword_10006FFF0);
        }

        while (v22);
      }
    }

    __break(1u);
  }

  else
  {
LABEL_13:
    sub_100003CE4();
  }
}

void sub_10004B92C()
{
  sub_100003B78();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = sub_1000228D4(&unk_10008F2F0, &qword_10006FFF0);
  v10 = sub_100001D80(v9);
  __chkstk_darwin(v10);
  sub_10000286C();
  sub_100003E0C();
  __chkstk_darwin(v11);
  sub_10000B758();
  v125 = v12;
  sub_100017180();
  v13 = type metadata accessor for SHA256();
  sub_100001EDC();
  __chkstk_darwin(v14);
  sub_100008EC0();
  v121 = v15;
  sub_100017180();
  v120 = type metadata accessor for String.Encoding();
  sub_100001EDC();
  __chkstk_darwin(v16);
  sub_100008EC0();
  v119 = v17;
  sub_100017180();
  v123 = type metadata accessor for SHA256Digest();
  sub_100001EDC();
  __chkstk_darwin(v18);
  sub_100004780();
  v118 = v19;
  sub_1000029A4();
  __chkstk_darwin(v20);
  sub_10000B758();
  v124 = v21;
  v22 = sub_100017180();
  v129 = type metadata accessor for EventValue(v22);
  sub_100001EDC();
  v127 = v23;
  __chkstk_darwin(v24);
  sub_100004780();
  v122 = v25;
  sub_1000029A4();
  __chkstk_darwin(v26);
  sub_100009B90();
  v117 = v27;
  sub_1000029A4();
  __chkstk_darwin(v28);
  sub_10000B758();
  v126 = v29;
  v30 = *(v8 + 16);
  if ((sub_10004ADC8(v31, v32, v30, v33, v34, v4, v2) & 1) == 0)
  {
LABEL_40:
    sub_100003CE4();
    return;
  }

  v110 = v13;
  v111 = v0;
  v116 = v8;
  v35 = v6 + 56;
  sub_100009754();
  v38 = v37 & v36;
  v40 = (v39 + 63) >> 6;

  v41 = 0;
  v132 = v30;
  v42 = v125;
  v43 = v129;
  while (v38)
  {
LABEL_8:
    v38 &= v38 - 1;
    sub_100007C44();
    v46 = *v45;
    v47 = v45[1];
    v48 = v132;
    v49 = v132[2];

    if (!v49)
    {
      goto LABEL_14;
    }

    v128 = v46;
    v50 = sub_100003BC0(v46, v47);
    v43 = v129;
    if (v51)
    {
      sub_10001C2A0(v132[7] + *(v127 + 72) * v50, v126);
      if (swift_getEnumCaseMultiPayload())
      {
        sub_10001C5EC(v126);
        v48 = v132;
        goto LABEL_12;
      }

      static String.Encoding.utf8.getter();
      String.data(using:allowLossyConversion:)();

      sub_100011764();
      v63(v119, v120);
      sub_10004E0AC(&qword_10008E4D0, &type metadata accessor for SHA256, &protocol conformance descriptor for SHA256);
      dispatch thunk of HashFunction.init()();
      v64 = sub_100009770();
      sub_100025CD8(v64, v65);
      v66 = sub_100009770();
      sub_100025C3C(v66, v67, v121);
      v68 = sub_100009770();
      sub_100005954(v68, v69);
      dispatch thunk of HashFunction.finalize()();
      sub_100011764();
      v70(v121, v110);
      v71 = sub_100009770();
      sub_100005954(v71, v72);
      sub_100011764();
      v73(v118, v124, v123);
      sub_10004E0AC(&qword_10008E4D8, &type metadata accessor for SHA256Digest, &protocol conformance descriptor for SHA256Digest);
      dispatch thunk of Sequence.makeIterator()();
      v74 = _swiftEmptyArrayStorage;
      if (v131 != v130[2])
      {
        v90 = v130[2];
        v91 = v131;
        while ((v131 & 0x8000000000000000) == 0)
        {
          if (v91 >= v130[2])
          {
            goto LABEL_43;
          }

          v92 = *(v130 + v91 + 32);
          sub_1000228D4(&qword_10008E4E0, &unk_10006FAE0);
          v93 = swift_allocObject();
          *(v93 + 16) = xmmword_10006CAD0;
          *(v93 + 56) = &type metadata for UInt8;
          *(v93 + 64) = &protocol witness table for UInt8;
          *(v93 + 32) = v92;
          v115 = String.init(format:_:)();
          v112 = v94;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1000039D8();
            sub_100020328();
            v74 = v99;
          }

          v96 = v74[2];
          v95 = v74[3];
          v97 = v74;
          if (v96 >= v95 >> 1)
          {
            sub_100005388(v95);
            sub_100020328();
            v97 = v100;
          }

          ++v91;
          v97[2] = v96 + 1;
          v74 = v97;
          v98 = &v97[2 * v96];
          v98[4] = v115;
          v98[5] = v112;
          if (v90 == v91)
          {
            goto LABEL_18;
          }
        }

        goto LABEL_42;
      }

LABEL_18:
      sub_100011764();
      v75(v124, v123);

      sub_1000228D4(&qword_10008E4E8, &qword_10006D370);
      sub_10004E0F4();
      v76 = BidirectionalCollection<>.joined(separator:)();
      v78 = v77;

      *v117 = v76;
      v117[1] = v78;
      swift_storeEnumTagMultiPayload();
      sub_1000166B4(v117, v122);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v130 = v132;
      v79 = sub_100003BC0(v128, v47);
      v81 = v132[2];
      v82 = (v80 & 1) == 0;
      v83 = v81 + v82;
      if (__OFADD__(v81, v82))
      {
        goto LABEL_44;
      }

      v84 = v79;
      v85 = v80;
      sub_1000228D4(&qword_10008F2E8, &unk_10006FAD0);
      sub_100009194();
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v83))
      {
        v86 = v47;
        v87 = sub_100003BC0(v128, v47);
        if ((v85 & 1) != (v88 & 1))
        {
          goto LABEL_46;
        }

        v84 = v87;
        v89 = v85;
        v43 = v129;
      }

      else
      {
        v89 = v85;
        v43 = v129;
        v86 = v47;
      }

      if (v89)
      {
        v101 = sub_10000BC24();
        sub_100020548(v101, v102);
      }

      else
      {
        sub_100008F64();
        sub_100007AF0(v103);
        v105 = (v104 + 16 * v84);
        *v105 = v128;
        v105[1] = v86;
        v106 = sub_10000BC24();
        sub_1000166B4(v106, v107);
        sub_100017608();
        if (v109)
        {
          goto LABEL_45;
        }

        v132[2] = v108;
      }

      v42 = v125;
    }

    else
    {
LABEL_12:
      if (v48[2] && (v52 = sub_100003BC0(v46, v47), v43 = v129, (v53 & 1) != 0))
      {
        v113 = *(v127 + 72);
        sub_10001C2A0(v48[7] + v113 * v52, v42);
        sub_1000026BC(v42, 0, 1, v129);
        sub_100005000(v42, &unk_10008F2F0, &qword_10006FFF0);
        v54 = v129;
        v55 = sub_100003BC0(v128, v47);
        v57 = v56;

        if (v57)
        {
          v58 = swift_isUniquelyReferenced_nonNull_native();
          v130 = v48;
          v59 = v48[3];
          sub_1000228D4(&qword_10008F2E8, &unk_10006FAD0);
          sub_100009194();
          _NativeDictionary.ensureUnique(isUnique:capacity:)(v58, v59);
          v60 = v48;

          v61 = v111;
          sub_1000166B4(v60[7] + v55 * v113, v111);
          v132 = v60;
          v54 = v129;
          _NativeDictionary._delete(at:)();
          v62 = 0;
        }

        else
        {
          v61 = v111;
          v62 = 1;
        }

        sub_1000026BC(v61, v62, 1, v54);
        sub_100005000(v61, &unk_10008F2F0, &qword_10006FFF0);
        v42 = v125;
        v43 = v54;
      }

      else
      {
LABEL_14:
        sub_1000026BC(v42, 1, 1, v43);

        sub_100005000(v42, &unk_10008F2F0, &qword_10006FFF0);
      }
    }
  }

  while (1)
  {
    v44 = v41 + 1;
    if (__OFADD__(v41, 1))
    {
      break;
    }

    if (v44 >= v40)
    {

      *(v116 + 16) = v132;
      goto LABEL_40;
    }

    v38 = *(v35 + 8 * v44);
    ++v41;
    if (v38)
    {
      v41 = v44;
      goto LABEL_8;
    }
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
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void sub_10004C398()
{
  sub_100003B78();
  v3 = v2;
  v5 = v4;
  v94 = v6;
  v97 = v7;
  v9 = v8;
  v10 = sub_1000228D4(&unk_10008F2F0, &qword_10006FFF0);
  sub_100001D80(v10);
  sub_100003EC8();
  __chkstk_darwin(v11);
  v105 = v85 - v12;
  v109 = sub_1000228D4(&unk_10008F480, &qword_10006F108);
  sub_100003C44();
  sub_100003EC8();
  __chkstk_darwin(v13);
  v14 = sub_100009A6C();
  sub_100001EDC();
  v104 = v15;
  __chkstk_darwin(v16);
  sub_100004780();
  v103 = v17;
  sub_1000029A4();
  __chkstk_darwin(v18);
  sub_100009B90();
  v102 = v19;
  sub_1000029A4();
  __chkstk_darwin(v20);
  sub_100009B90();
  v101 = v21;
  sub_1000029A4();
  __chkstk_darwin(v22);
  sub_100009B90();
  v100 = v23;
  sub_1000029A4();
  __chkstk_darwin(v24);
  sub_100009B90();
  v98 = v25;
  sub_1000029A4();
  v27 = __chkstk_darwin(v26);
  v29 = v85 - v28;
  __chkstk_darwin(v27);
  sub_100009B90();
  v89 = v30;
  sub_1000029A4();
  v32 = __chkstk_darwin(v31);
  v34 = v85 - v33;
  v95 = *(v9 + 16);
  if (sub_10004ADC8(v32, v35, v95, v36, v37, v5, v3))
  {
    v85[0] = v9;
    v85[1] = v0;
    v38 = v97 + 56;
    sub_100009754();
    v99 = v40 & v39;
    v42 = (v41 + 63) >> 6;

    v43 = 0;
    v44 = _swiftEmptyArrayStorage;
    v96 = v34;
    v86 = v38;
    v91 = v42;
    v88 = v14;
LABEL_3:
    v45 = v95;
    v46 = v99;
    v93 = v44;
    while (v46)
    {
      v47 = v46;
LABEL_10:
      v46 = (v47 - 1) & v47;
      if (v45[2])
      {
        v99 = (v47 - 1) & v47;
        sub_100003FA8();
        sub_100007C44();
        v50 = *v49;
        v51 = v49[1];

        v90 = v50;
        v52 = sub_100003BC0(v50, v51);
        if (v53)
        {
          v87 = v51;
          v54 = v45[7];
          v106 = *(v104 + 72);
          v55 = v89;
          sub_10001C2A0(v54 + v106 * v52, v89);
          sub_1000166B4(v55, v34);
          v56 = *(v94 + 16);
          if (v56)
          {
            v57 = v94 + ((*(v104 + 80) + 32) & ~*(v104 + 80));
            while (2)
            {
              sub_10001C2A0(v57, v29);
              v58 = (v1 + *(v109 + 48));
              sub_10001C2A0(v29, v1);
              sub_10001C2A0(v34, v58);
              switch(sub_10004E1F4())
              {
                case 0u:
                  v59 = v98;
                  sub_10001C2A0(v1, v98);
                  sub_10000BF10();
                  if (swift_getEnumCaseMultiPayload())
                  {
                    sub_10001C5EC(v29);

                    v34 = v96;
                    goto LABEL_32;
                  }

                  v92 = *v59;
                  v63 = String.lowercased()();

                  v108 = v63;
                  v64 = String.lowercased()();

                  v107 = v64;
                  sub_10001F5A8(v65, v66, v67);
                  v60 = StringProtocol.contains<A>(_:)();

                  sub_10001C5EC(v29);
                  v34 = v96;
                  goto LABEL_29;
                case 1u:
                  sub_10001C5EC(v29);
                  sub_10001C2A0(v1, v100);
                  sub_10000BF10();
                  if (swift_getEnumCaseMultiPayload() != 1)
                  {
                    goto LABEL_32;
                  }

                  v61 = v100;
                  goto LABEL_25;
                case 2u:
                  sub_10001C5EC(v29);
                  sub_10001C2A0(v1, v101);
                  sub_10000BF10();
                  if (swift_getEnumCaseMultiPayload() != 2)
                  {
                    goto LABEL_32;
                  }

                  v61 = v101;
LABEL_25:
                  v62 = *v61 == *v58;
                  goto LABEL_26;
                case 3u:
                  sub_10001C5EC(v29);
                  sub_10001C2A0(v1, v102);
                  sub_10000BF10();
                  if (swift_getEnumCaseMultiPayload() != 3)
                  {
                    goto LABEL_32;
                  }

                  v62 = *v102 == *v58;
LABEL_26:
                  v60 = v62;
                  goto LABEL_29;
                case 4u:
                  sub_10001C5EC(v29);
                  sub_10001C2A0(v1, v103);
                  sub_10000BF10();
                  if (swift_getEnumCaseMultiPayload() != 4)
                  {
                    goto LABEL_32;
                  }

                  v60 = *v103 ^ *v58 ^ 1;
LABEL_29:
                  sub_10001C5EC(v1);
                  if ((v60 & 1) == 0)
                  {
                    goto LABEL_33;
                  }

                  sub_10001C5EC(v34);

                  v45 = v95;
                  v44 = v93;
                  v38 = v86;
                  goto LABEL_37;
                default:
                  sub_10001C5EC(v29);
LABEL_32:
                  sub_100005000(v1, &unk_10008F480, &qword_10006F108);
LABEL_33:
                  v57 += v106;
                  if (!--v56)
                  {
                    break;
                  }

                  continue;
              }

              break;
            }
          }

          v44 = v93;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1000039D8();
            sub_100020328();
            v44 = v72;
          }

          v69 = v44[2];
          v68 = v44[3];
          if (v69 >= v68 >> 1)
          {
            sub_100005388(v68);
            sub_100020328();
            v44 = v73;
          }

          sub_10001C5EC(v34);
          v44[2] = v69 + 1;
          v70 = &v44[2 * v69];
          v42 = v91;
          v71 = v87;
          v70[4] = v90;
          v70[5] = v71;
          v38 = v86;
          goto LABEL_3;
        }

LABEL_37:
        v42 = v91;
        v46 = v99;
      }
    }

    while (1)
    {
      v48 = v43 + 1;
      if (__OFADD__(v43, 1))
      {
        __break(1u);
        return;
      }

      if (v48 >= v42)
      {
        break;
      }

      v47 = *(v38 + 8 * v48);
      ++v43;
      if (v47)
      {
        v43 = v48;
        goto LABEL_10;
      }
    }

    v74 = v44[2];
    if (v74)
    {

      v75 = v44 + 5;
      do
      {
        v76 = *(v75 - 1);
        v77 = *v75;

        v78 = sub_100003BC0(v76, v77);
        v80 = v79;

        if (v80)
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v108._countAndFlagsBits = v45;
          v83 = v45[3];
          sub_1000228D4(&qword_10008F2E8, &unk_10006FAD0);
          sub_100009194();
          _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v83);
          sub_1000027CC();
          sub_1000166B4(v45[7] + *(v104 + 72) * v78, v105);
          v81 = _NativeDictionary._delete(at:)();
          v84 = 0;
        }

        else
        {
          v84 = 1;
        }

        sub_100008D20(v81, v84);
        v75 += 2;
        --v74;
      }

      while (v74);
    }

    *(v85[0] + 16) = v45;
  }

  sub_100003CE4();
}

void sub_10004CB28()
{
  sub_100003B78();
  v4 = v3;
  v6 = v5;
  v96 = v7;
  v9 = v8;
  v11 = v10;
  v12 = sub_1000228D4(&unk_10008F2F0, &qword_10006FFF0);
  sub_100001D80(v12);
  sub_100003EC8();
  __chkstk_darwin(v13);
  v107 = v86 - v14;
  v106 = sub_1000228D4(&unk_10008F480, &qword_10006F108);
  sub_100003C44();
  sub_100003EC8();
  __chkstk_darwin(v15);
  v16 = sub_100009A6C();
  sub_100001EDC();
  v103 = v17;
  __chkstk_darwin(v18);
  sub_100004780();
  v101 = v19;
  sub_1000029A4();
  __chkstk_darwin(v20);
  sub_100009B90();
  v100 = v21;
  sub_1000029A4();
  __chkstk_darwin(v22);
  sub_100009B90();
  v99 = v23;
  sub_1000029A4();
  __chkstk_darwin(v24);
  sub_100009B90();
  v98 = v25;
  sub_1000029A4();
  __chkstk_darwin(v26);
  sub_100009B90();
  v97 = v27;
  sub_1000029A4();
  __chkstk_darwin(v28);
  sub_100003E0C();
  __chkstk_darwin(v29);
  sub_100009B90();
  v92 = v30;
  sub_1000029A4();
  __chkstk_darwin(v31);
  sub_10000B758();
  v110 = v32;
  v90 = v11;
  v33 = *(v11 + 16);
  if (sub_10004ADC8(v34, v35, v33, v36, v37, v6, v4))
  {
    v86[0] = v0;
    v38 = v9 + 56;
    sub_100009754();
    v102 = v40 & v39;
    v42 = (v41 + 63) >> 6;

    v43 = 0;
    v44 = _swiftEmptyArrayStorage;
    v88 = v33;
    v86[1] = v9;
    v87 = v9 + 56;
    v93 = v42;
LABEL_3:
    v91 = v44;
LABEL_4:
    v45 = v102;
    while (v45)
    {
      v46 = v45;
LABEL_11:
      v45 = (v46 - 1) & v46;
      if (v33[2])
      {
        v102 = (v46 - 1) & v46;
        sub_100003FA8();
        sub_100007C44();
        v49 = *v48;
        v50 = v48[1];

        v89 = v49;
        v51 = sub_100003BC0(v49, v50);
        if (v52)
        {
          v53 = v33[7];
          v105 = *(v103 + 72);
          v54 = v92;
          sub_10001C2A0(v53 + v105 * v51, v92);
          sub_1000166B4(v54, v110);
          v55 = *(v96 + 16);
          if (v55)
          {
            v56 = v96 + ((*(v103 + 80) + 32) & ~*(v103 + 80));
            v94 = v1;
            v95 = v16;
            v104 = v50;
            while (2)
            {
              sub_10001C2A0(v56, v1);
              v57 = (v2 + *(v106 + 48));
              sub_10001C2A0(v1, v2);
              sub_10001C2A0(v110, v57);
              switch(sub_10004E1F4())
              {
                case 0u:
                  sub_10001C2A0(v2, v97);
                  if (sub_10000C6B8())
                  {
                    v1 = v94;
                    sub_10001C5EC(v94);

                    v16 = v95;
                    goto LABEL_33;
                  }

                  v61 = String.lowercased()();

                  v109 = v61;
                  v62 = String.lowercased()();

                  v108 = v62;
                  sub_10001F5A8(v63, v64, v65);
                  v58 = StringProtocol.contains<A>(_:)();

                  v33 = v88;

                  v1 = v94;
                  sub_10001C5EC(v94);
                  v16 = v95;
                  goto LABEL_30;
                case 1u:
                  sub_10001C5EC(v1);
                  sub_10001C2A0(v2, v98);
                  if (sub_10000C6B8() != 1)
                  {
                    goto LABEL_33;
                  }

                  v59 = v98;
                  goto LABEL_26;
                case 2u:
                  sub_10001C5EC(v1);
                  sub_10001C2A0(v2, v99);
                  if (sub_10000C6B8() != 2)
                  {
                    goto LABEL_33;
                  }

                  v59 = v99;
LABEL_26:
                  v60 = *v59 == *v57;
                  goto LABEL_27;
                case 3u:
                  sub_10001C5EC(v1);
                  sub_10001C2A0(v2, v100);
                  if (sub_10000C6B8() != 3)
                  {
                    goto LABEL_33;
                  }

                  v60 = *v100 == *v57;
LABEL_27:
                  v58 = v60;
                  goto LABEL_30;
                case 4u:
                  sub_10001C5EC(v1);
                  sub_10001C2A0(v2, v101);
                  if (sub_10000C6B8() != 4)
                  {
                    goto LABEL_33;
                  }

                  v58 = *v101 ^ *v57 ^ 1;
LABEL_30:
                  sub_10001C5EC(v2);
                  if ((v58 & 1) == 0)
                  {
                    goto LABEL_34;
                  }

                  v66 = v91;
                  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                  {
                    sub_1000039D8();
                    sub_100020328();
                    v66 = v73;
                  }

                  v69 = v66[2];
                  v68 = v66[3];
                  v70 = v66;
                  if (v69 >= v68 >> 1)
                  {
                    sub_100005388(v68);
                    sub_100020328();
                    v70 = v74;
                  }

                  sub_10001C5EC(v110);
                  v70[2] = v69 + 1;
                  v44 = v70;
                  v71 = &v70[2 * v69];
                  v72 = v104;
                  v71[4] = v89;
                  v71[5] = v72;
                  v38 = v87;
                  v42 = v93;
                  goto LABEL_3;
                default:
                  sub_10001C5EC(v1);
LABEL_33:
                  sub_100005000(v2, &unk_10008F480, &qword_10006F108);
LABEL_34:
                  v56 += v105;
                  if (!--v55)
                  {
                    break;
                  }

                  continue;
              }

              break;
            }
          }

          sub_10001C5EC(v110);
          v44 = v91;
          v38 = v87;
        }

        else
        {
        }

        v42 = v93;
        goto LABEL_4;
      }
    }

    while (1)
    {
      v47 = v43 + 1;
      if (__OFADD__(v43, 1))
      {
        __break(1u);
        return;
      }

      if (v47 >= v42)
      {
        break;
      }

      v46 = *(v38 + 8 * v47);
      ++v43;
      if (v46)
      {
        v43 = v47;
        goto LABEL_11;
      }
    }

    v75 = v44[2];
    if (v75)
    {

      v76 = v44 + 5;
      do
      {
        v77 = *(v76 - 1);
        v78 = *v76;

        v79 = sub_100003BC0(v77, v78);
        v81 = v80;

        if (v81)
        {
          v83 = swift_isUniquelyReferenced_nonNull_native();
          v109._countAndFlagsBits = v33;
          v84 = v33[3];
          sub_1000228D4(&qword_10008F2E8, &unk_10006FAD0);
          sub_100009194();
          _NativeDictionary.ensureUnique(isUnique:capacity:)(v83, v84);
          sub_1000027CC();
          sub_1000166B4(v33[7] + *(v103 + 72) * v79, v107);
          v82 = _NativeDictionary._delete(at:)();
          v85 = 0;
        }

        else
        {
          v85 = 1;
        }

        sub_100008D20(v82, v85);
        v76 += 2;
        --v75;
      }

      while (v75);
    }

    *(v90 + 16) = v33;
  }

  sub_100003CE4();
}

void sub_10004D2B8()
{
  sub_100003B78();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v76 = v7;
  v9 = v8;
  v10 = sub_1000228D4(&unk_10008F2F0, &qword_10006FFF0);
  v11 = sub_100001D80(v10);
  __chkstk_darwin(v11);
  sub_10000286C();
  v14 = v12 - v13;
  __chkstk_darwin(v15);
  v17 = &v66 - v16;
  v18 = type metadata accessor for EventValue(0);
  sub_100001EDC();
  v75 = v19;
  __chkstk_darwin(v20);
  sub_10000286C();
  v23 = v21 - v22;
  __chkstk_darwin(v24);
  sub_10000B758();
  v73 = *(v9 + 16);
  v74 = v25;
  if ((sub_10004ADC8(v26, v27, v73, v28, v29, v4, v2) & 1) == 0)
  {
    goto LABEL_21;
  }

  sub_10004D6A4(v6, v17);
  if (sub_100002694(v17, 1, v18) == 1)
  {
    sub_100005000(v17, &unk_10008F2F0, &qword_10006FFF0);
LABEL_21:
    sub_100003CE4();
    return;
  }

  v70 = v23;
  v71 = v9;
  v72 = v0;
  sub_1000166B4(v17, v74);
  v30 = v76 + 56;
  sub_100009754();
  v33 = v32 & v31;
  v35 = (v34 + 63) >> 6;
  v36 = v73;

  v37 = 0;
  while (1)
  {
    v38 = v37;
    if (!v33)
    {
      break;
    }

LABEL_9:
    v33 &= v33 - 1;
    sub_100007C44();
    v41 = *v39;
    v40 = v39[1];
    v42 = *(v36 + 16);

    if (v42 && (sub_100003BC0(v41, v40), (v43 & 1) != 0))
    {
      sub_1000124C8();
      sub_10001C2A0(v45 + v46 * v44, v14);
      v47 = sub_100007020();
      sub_1000026BC(v47, v48, v49, v18);

      sub_100005000(v14, &unk_10008F2F0, &qword_10006FFF0);
    }

    else
    {
      sub_1000026BC(v14, 1, 1, v18);
      sub_100005000(v14, &unk_10008F2F0, &qword_10006FFF0);
      sub_10001C2A0(v74, v70);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v69 = sub_100003BC0(v41, v40);
      v68 = v50;
      sub_1000119E4();
      v66 = v51;
      if (v52)
      {
        goto LABEL_23;
      }

      sub_1000228D4(&qword_10008F2E8, &unk_10006FAD0);
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v66))
      {
        v53 = sub_100003BC0(v41, v40);
        if ((v68 & 1) != (v54 & 1))
        {
          goto LABEL_25;
        }

        v69 = v53;
        if (v68)
        {
          goto LABEL_19;
        }

LABEL_16:
        sub_100008F64();
        sub_100007AF0(v55);
        v58 = (v56 + 16 * v57);
        *v58 = v41;
        v58[1] = v40;
        sub_1000124C8();
        sub_1000166B4(v62, v59 + v60 * v61);
        sub_100017608();
        if (v52)
        {
          goto LABEL_24;
        }

        *(v36 + 16) = v63;
      }

      else
      {
        if ((v68 & 1) == 0)
        {
          goto LABEL_16;
        }

LABEL_19:

        sub_1000124C8();
        sub_100020548(v70, v64 + v65 * v69);
      }
    }
  }

  while (1)
  {
    v37 = v38 + 1;
    if (__OFADD__(v38, 1))
    {
      break;
    }

    if (v37 >= v35)
    {
      sub_10001C5EC(v74);

      *(v71 + 16) = v36;
      goto LABEL_21;
    }

    v33 = *(v30 + 8 * v37);
    ++v38;
    if (v33)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

uint64_t sub_10004D6A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = type metadata accessor for EventValue(0);
  v6 = v5;
  if (v4)
  {
    sub_10001C2A0(a1 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)), a2);
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  return sub_1000026BC(a2, v7, 1, v6);
}

void sub_10004D768()
{
  sub_100003B78();
  sub_1000050B0();
  v68 = v5;
  v7 = v6;
  v8 = type metadata accessor for EventValue(0);
  sub_100001EDC();
  v67 = v9;
  __chkstk_darwin(v10);
  sub_100004780();
  v65 = v11;
  sub_1000029A4();
  __chkstk_darwin(v12);
  sub_100003E0C();
  __chkstk_darwin(v13);
  v15 = (&v53 - v14);
  v16 = sub_1000228D4(&unk_10008F2F0, &qword_10006FFF0);
  sub_100001D80(v16);
  sub_100003EC8();
  v18 = __chkstk_darwin(v17);
  v20 = (&v53 - v19);
  v66 = v7;
  if ((sub_100004ED4(v18, v21, v22, v23, v24) & 1) == 0)
  {
    goto LABEL_30;
  }

  sub_10004D6A4(v1, v20);
  if (sub_100002694(v20, 1, v8) == 1)
  {
    sub_100005000(v20, &unk_10008F2F0, &qword_10006FFF0);
LABEL_30:
    sub_100003CE4();
    return;
  }

  if (swift_getEnumCaseMultiPayload())
  {
    sub_10001C5EC(v20);
    goto LABEL_30;
  }

  v25 = v20[1];
  v59 = *v20;
  v60 = v3;
  v61 = v25;
  v26 = v68 + 56;
  sub_100009754();
  sub_1000105FC();

  v27 = 0;
  v28 = v7;
  v58 = v4;
LABEL_7:
  v62 = v28;
  while (v2)
  {
    v29 = v2;
LABEL_14:
    v2 = (v29 - 1) & v29;
    if (*(v28 + 16))
    {
      v64 = (v29 - 1) & v29;
      sub_100003FA8();
      sub_100007C44();
      v32 = *v31;
      v33 = v31[1];

      v63 = v32;
      v34 = sub_100003BC0(v32, v33);
      if (v35)
      {
        v36 = *(v28 + 56);
        v37 = *(v67 + 72);
        sub_10001C2A0(v36 + v37 * v34, v15);
        if (!sub_10004E1F4())
        {
          v56 = v37;
          v38 = v15[1];
          v69 = *v15;
          v70 = v38;
          v39._countAndFlagsBits = v59;
          v39._object = v61;
          String.append(_:)(v39);
          v40 = v70;
          v41 = v58;
          *v58 = v69;
          *(v41 + 8) = v40;
          swift_storeEnumTagMultiPayload();
          sub_1000166B4(v41, v65);
          v28 = v62;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v57 = sub_100003BC0(v63, v33);
          LODWORD(v62) = v42;
          sub_1000119E4();
          v54 = v43;
          if (v44)
          {
            goto LABEL_32;
          }

          sub_1000228D4(&qword_10008F2E8, &unk_10006FAD0);
          if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v54))
          {
            v45 = sub_100003BC0(v63, v33);
            v47 = v62;
            if ((v62 & 1) != (v46 & 1))
            {
              goto LABEL_34;
            }

            v57 = v45;
          }

          else
          {
            v47 = v62;
          }

          if (v47)
          {

            sub_100020548(v65, *(v28 + 56) + v57 * v56);
          }

          else
          {
            sub_100008F64();
            sub_100007AF0(v48);
            v51 = (v49 + 16 * v50);
            *v51 = v63;
            v51[1] = v33;
            sub_1000166B4(v65, *(v28 + 56) + v50 * v56);
            sub_100017608();
            if (v44)
            {
              goto LABEL_33;
            }

            *(v28 + 16) = v52;
          }

          v2 = v64;
          goto LABEL_7;
        }

        sub_10001C5EC(v15);
        v2 = v64;
        v28 = v62;
      }

      else
      {

        v2 = v64;
      }
    }
  }

  while (1)
  {
    v30 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      break;
    }

    if (v30 >= v0)
    {

      *(v66 + 16) = v28;
      goto LABEL_30;
    }

    v29 = *(v26 + 8 * v30);
    ++v27;
    if (v29)
    {
      v27 = v30;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void sub_10004DBA0()
{
  sub_100003B78();
  sub_1000050B0();
  v72 = v5;
  v7 = v6;
  v8 = type metadata accessor for EventValue(0);
  sub_100001EDC();
  v67 = v9;
  __chkstk_darwin(v10);
  sub_100004780();
  v65 = v11;
  sub_1000029A4();
  __chkstk_darwin(v12);
  sub_100003E0C();
  __chkstk_darwin(v13);
  v15 = &v54[-v14];
  v16 = sub_1000228D4(&unk_10008F2F0, &qword_10006FFF0);
  sub_100001D80(v16);
  sub_100003EC8();
  v18 = __chkstk_darwin(v17);
  v20 = &v54[-v19];
  v66 = v7;
  if ((sub_100004ED4(v18, v21, v22, v23, v24) & 1) == 0)
  {
    goto LABEL_29;
  }

  sub_10004D6A4(v1, v20);
  if (sub_100002694(v20, 1, v8) == 1)
  {
    sub_100005000(v20, &unk_10008F2F0, &qword_10006FFF0);
LABEL_29:
    sub_100003CE4();
    return;
  }

  if (swift_getEnumCaseMultiPayload())
  {
    sub_10001C5EC(v20);
    goto LABEL_29;
  }

  v26 = *v20;
  v25 = v20[1];
  v58 = v4;
  v59 = v26;
  v60 = v3;
  v61 = v25;
  sub_100009754();
  sub_1000105FC();

  v27 = 0;
  v28 = v7;
LABEL_7:
  v62 = v28;
  while (v2)
  {
    v29 = v2;
LABEL_14:
    v2 = (v29 - 1) & v29;
    if (*(v28 + 16))
    {
      v64 = (v29 - 1) & v29;
      sub_100003FA8();
      sub_100007C44();
      v32 = *v31;
      v33 = v31[1];

      v63 = v32;
      v34 = sub_100003BC0(v32, v33);
      if (v35)
      {
        v36 = *(v67 + 72);
        sub_10001C2A0(*(v28 + 56) + v36 * v34, v15);
        if (!sub_10004E1F4())
        {
          v56 = v36;
          v37 = v15[1];
          v70 = *v15;
          v71 = v37;
          v68 = v59;
          v69 = v61;

          v68 = String.init<A>(_:)();
          v69 = v38;
          String.append<A>(contentsOf:)();

          v39 = v69;
          v40 = v58;
          *v58 = v68;
          *(v40 + 8) = v39;
          sub_10000BF10();
          swift_storeEnumTagMultiPayload();
          sub_1000166B4(v40, v65);
          v41 = v62;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v70 = v41;
          v57 = sub_100003BC0(v63, v33);
          sub_1000119E4();
          v62 = v43;
          if (v44)
          {
            goto LABEL_31;
          }

          v45 = v42;
          sub_1000228D4(&qword_10008F2E8, &unk_10006FAD0);
          if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v62))
          {
            v46 = sub_100003BC0(v63, v33);
            if ((v45 & 1) != (v47 & 1))
            {
              goto LABEL_33;
            }

            v57 = v46;
          }

          if (v45)
          {

            v28 = v70;
            sub_100020548(v65, *(v70 + 56) + v57 * v56);
          }

          else
          {
            v48 = v70;
            v49 = v57;
            sub_100008F64();
            sub_100007AF0(v50);
            v52 = (v51 + 16 * v49);
            *v52 = v63;
            v52[1] = v33;
            sub_1000166B4(v65, *(v48 + 56) + v49 * v56);
            sub_100017608();
            if (v44)
            {
              goto LABEL_32;
            }

            v28 = v48;
            *(v48 + 16) = v53;
          }

          v2 = v64;
          goto LABEL_7;
        }

        sub_10001C5EC(v15);
        v2 = v64;
        v28 = v62;
      }

      else
      {

        v2 = v64;
      }
    }
  }

  while (1)
  {
    v30 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      break;
    }

    if (v30 >= v0)
    {

      *(v66 + 16) = v28;
      goto LABEL_29;
    }

    v29 = *(v72 + 56 + 8 * v30);
    ++v27;
    if (v29)
    {
      v27 = v30;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

uint64_t sub_10004DFEC@<X0>(uint64_t (*a1)(void)@<X6>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  a2[1] = v4;
  a2[2] = v5;
  a2[3] = v6;
  return result;
}

uint64_t sub_10004E03C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000228D4(&unk_10008F2F0, &qword_10006FFF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10004E0AC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10004E0F4()
{
  result = qword_10008E4F0;
  if (!qword_10008E4F0)
  {
    sub_100025D78(&qword_10008E4E8, &qword_10006D370);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008E4F0);
  }

  return result;
}

uint64_t sub_10004E158(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_10004E198(uint64_t result, int a2, int a3)
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

uint64_t sub_10004E1F4()
{

  return swift_getEnumCaseMultiPayload();
}

__n128 sub_10004E20C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10004E220(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 41))
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

uint64_t sub_10004E260(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *sub_10004E2BC(unint64_t a1, void *a2)
{
  if (*(a1 + 16) <= a2[2] >> 3)
  {
    sub_100050424(a1);
    return a2;
  }

  else
  {

    return sub_10005051C(a1, a2);
  }
}

uint64_t sub_10004E348(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = __CocoaSet.member(for:)();

    if (v8)
    {

      type metadata accessor for Client();
      swift_dynamicCast();
      result = 0;
      *a1 = v24;
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
        v17 = sub_10004E5B8(v7, result + 1);
        v18 = *(v17 + 16);
        if (*(v17 + 24) <= v18)
        {
          sub_10004EBD8(v18 + 1);
        }

        sub_10004EE54(v19, v17);

        *v3 = v17;
        *a1 = a2;
        return 1;
      }
    }
  }

  else
  {
    v22 = v2;
    type metadata accessor for Client();
    sub_100002044(&qword_10008E898);
    dispatch thunk of Hashable._rawHashValue(seed:)();
    sub_1000029D4();
    v12 = ~v11;
    while (1)
    {
      v13 = v10 & v12;
      if (((*(v6 + 56 + (((v10 & v12) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v10 & v12)) & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v25 = *v22;

        sub_10004F04C(v21, v13, isUniquelyReferenced_nonNull_native);
        *v22 = v25;
        *a1 = a2;
        return 1;
      }

      sub_100009938();
      sub_100015CBC(&unk_1000902A0, v14);

      v15 = Identifiable<>.id.getter();
      v16 = Identifiable<>.id.getter();

      if (v15 == v16)
      {
        break;
      }

      v10 = v13 + 1;
    }

    *a1 = *(*(v6 + 48) + 8 * v13);

    return 0;
  }

  return result;
}

uint64_t sub_10004E5B8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1000228D4(&unk_100090290, &qword_10006FBC0);
    v2 = static _SetStorage.convert(_:capacity:)();
    v15 = v2;
    __CocoaSet.makeIterator()();
    while (1)
    {
      if (!__CocoaSet.Iterator.next()())
      {

        return v2;
      }

      type metadata accessor for Client();
      swift_dynamicCast();
      v3 = *(v2 + 16);
      if (*(v2 + 24) <= v3)
      {
        sub_10004EBD8(v3 + 1);
      }

      v2 = v15;
      sub_100015CBC(&qword_10008E898, &unk_10006DFA0);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v5 = v15 + 56;
      v6 = -1 << *(v15 + 32);
      v7 = result & ~v6;
      v8 = v7 >> 6;
      if (((-1 << v7) & ~*(v15 + 56 + 8 * (v7 >> 6))) == 0)
      {
        break;
      }

      v9 = __clz(__rbit64((-1 << v7) & ~*(v15 + 56 + 8 * (v7 >> 6)))) | v7 & 0x7FFFFFFFFFFFFFC0;
LABEL_15:
      *(v5 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
      *(*(v15 + 48) + 8 * v9) = v14;
      ++*(v15 + 16);
    }

    v10 = 0;
    v11 = (63 - v6) >> 6;
    while (++v8 != v11 || (v10 & 1) == 0)
    {
      v12 = v8 == v11;
      if (v8 == v11)
      {
        v8 = 0;
      }

      v10 |= v12;
      v13 = *(v5 + 8 * v8);
      if (v13 != -1)
      {
        v9 = __clz(__rbit64(~v13)) + (v8 << 6);
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

uint64_t sub_10004E7B8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1000228D4(&qword_10008F8C0, &qword_10006FBD0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

  v6 = 0;
  v7 = (v3 + 56);
  v8 = 1 << *(v3 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(v3 + 56);
  v11 = (v8 + 63) >> 6;
  v12 = result + 56;
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      sub_100019D90(0, (v28 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = (*(v3 + 48) + 16 * (v13 | (v6 << 6)));
    v17 = *v16;
    v18 = v16[1];
    Hasher.init(_seed:)();
    String.hash(into:)();
    result = Hasher._finalize()();
    v19 = -1 << *(v5 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v5 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v5 + 16);
    if (!v10)
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
    v26 = *(v12 + 8 * v21);
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

void sub_10004EA14(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_100004794(a1, a2, a3);
  v5 = static _SetStorage.resize(original:capacity:move:)();
  v6 = v5;
  if (!*(v4 + 16))
  {
LABEL_27:

    *v3 = v6;
    return;
  }

  v7 = 0;
  v9 = (v4 + 56);
  v8 = *(v4 + 56);
  v10 = 1 << *(v4 + 32);
  v27 = v3;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & v8;
  v13 = v5 + 56;
  if ((v11 & v8) == 0)
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

      if (v7 >= ((v10 + 63) >> 6))
      {
        break;
      }

      v16 = v9[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_12;
      }
    }

    if (v10 >= 64)
    {
      sub_100019D90(0, (v10 + 63) >> 6, v4 + 56);
    }

    else
    {
      *v9 = -1 << v10;
    }

    v3 = v27;
    *(v4 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v17 = *(*(v4 + 48) + 8 * (v14 | (v7 << 6)));
    static Hasher._hash(seed:_:)();
    sub_1000090CC();
    if (((-1 << v19) & ~*(v13 + 8 * v18)) == 0)
    {
      break;
    }

    sub_10000CDBC();
LABEL_21:
    sub_100009B9C();
    *(v13 + v24) |= v25;
    *(*(v6 + 48) + 8 * v26) = v17;
    ++*(v6 + 16);
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  sub_100007030();
  while (++v20 != v22 || (v21 & 1) == 0)
  {
    v23 = v20 == v22;
    if (v20 == v22)
    {
      v20 = 0;
    }

    v21 |= v23;
    if (*(v13 + 8 * v20) != -1)
    {
      sub_100003E1C();
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
}

uint64_t sub_10004EBD8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1000228D4(&unk_100090290, &qword_10006FBC0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

  v26 = v3;
  v6 = 0;
  v7 = (v3 + 56);
  v8 = 1 << *(v3 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(v3 + 56);
  v11 = (v8 + 63) >> 6;
  v12 = result + 56;
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      sub_100019D90(0, (v25 + 63) >> 6, v7);
    }

    else
    {
      *v7 = -1 << v25;
    }

    v2 = v1;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
    type metadata accessor for Client();
    sub_100015CBC(&qword_10008E898, &unk_10006DFA0);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v17 = -1 << *(v5 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      break;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v5 + 48) + 8 * v20) = v16;
    ++*(v5 + 16);
    v3 = v26;
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  v21 = 0;
  v22 = (63 - v17) >> 6;
  while (++v19 != v22 || (v21 & 1) == 0)
  {
    v23 = v19 == v22;
    if (v19 == v22)
    {
      v19 = 0;
    }

    v21 |= v23;
    v24 = *(v12 + 8 * v19);
    if (v24 != -1)
    {
      v20 = __clz(__rbit64(~v24)) + (v19 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

unint64_t sub_10004EE54(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Client();
  sub_100015CBC(&qword_10008E898, &unk_10006DFA0);
  dispatch thunk of Hashable._rawHashValue(seed:)();
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

unint64_t sub_10004EF28(unint64_t result, unint64_t a2, char a3, uint64_t *a4, uint64_t *a5, uint64_t a6)
{
  v8 = result;
  v9 = *(*v6 + 16);
  v10 = *(*v6 + 24);
  if (v10 <= v9 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_10004EA14(v9 + 1, a4, a5);
      goto LABEL_10;
    }

    if (v10 <= v9)
    {
      sub_10004F81C(v9 + 1, a4, a5);
LABEL_10:
      v15 = *v6;
      result = static Hasher._hash(seed:_:)();
      v16 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a2 = result & v16;
        if (((*(v15 + 56 + (((result & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v16)) & 1) == 0)
        {
          goto LABEL_7;
        }

        if (*(*(v15 + 48) + 8 * a2) == v8)
        {
          goto LABEL_15;
        }

        result = a2 + 1;
      }
    }

    result = sub_10004F368(a4, a5);
  }

LABEL_7:
  v11 = *v6;
  *(*v6 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + 8 * a2) = v8;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_15:
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v11 + 16) = v14;
  }

  return result;
}

unint64_t sub_10004F04C(unint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_10004EBD8(v6 + 1);
      goto LABEL_8;
    }

    if (v7 <= v6)
    {
      sub_10004F9A8(v6 + 1);
LABEL_8:
      v16 = v3;
      v8 = *v3;
      type metadata accessor for Client();
      sub_100015CBC(&qword_10008E898, &unk_10006DFA0);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v9 = ~(-1 << *(v8 + 32));
      while (1)
      {
        a2 = result & v9;
        if (((*(v8 + 56 + (((result & v9) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v9)) & 1) == 0)
        {
          break;
        }

        sub_100015CBC(&unk_1000902A0, &unk_10006DFE0);

        v10 = Identifiable<>.id.getter();
        v11 = Identifiable<>.id.getter();

        if (v10 == v11)
        {
          goto LABEL_16;
        }

        result = a2 + 1;
      }

      v3 = v16;
      goto LABEL_13;
    }

    result = sub_10004F498();
  }

LABEL_13:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + 8 * a2) = v5;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
LABEL_16:
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v12 + 16) = v15;
  }

  return result;
}