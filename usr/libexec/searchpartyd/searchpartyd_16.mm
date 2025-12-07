uint64_t sub_1001DA968(void (*a1)(_BYTE *))
{
  sub_100101AA8(v1 + 16, v4);
  v4[216] = 1;
  a1(v4);
  return sub_10000B3A8(v4, &qword_101699350, &qword_1013918C8);
}

uint64_t sub_1001DA9D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001DAA40(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1001DAAA0(uint64_t result)
{
  v1 = *(result + 24) & 0xCFFFFFFFFFFFFFFFLL;
  v2 = *(result + 40) & 0xCFFFFFFFFFFFFFFFLL;
  v3 = *(result + 56) & 0xCFFFFFFFFFFFFFFFLL;
  v4 = *(result + 72) & 0xCFFFFFFFFFFFFFFFLL;
  v5 = *(result + 88) & 0xCFFFFFFFFFFFFFFFLL;
  v6 = *(result + 104) & 0xCFFFFFFFFFFFFFFFLL;
  v7 = *(result + 120) & 0xCFFFFFFFFFFFFFFFLL;
  v8 = *(result + 136) & 0xCFFFFFFFFFFFFFFFLL;
  v9 = *(result + 152) & 0xCFFFFFFFFFFFFFFFLL;
  v10 = *(result + 168) & 0xCFFFFFFFFFFFFFFFLL;
  v11 = *(result + 208) & 0xCFFFFFFFFFFFFFFFLL;
  v12 = *(result + 192) | 0x8000000000000000;
  *(result + 8) &= 0xCFFFFFFFFFFFFFFFLL;
  *(result + 24) = v1;
  *(result + 40) = v2;
  *(result + 56) = v3;
  *(result + 72) = v4;
  *(result + 88) = v5;
  *(result + 104) = v6;
  *(result + 120) = v7;
  *(result + 136) = v8;
  *(result + 152) = v9;
  *(result + 168) = v10;
  *(result + 192) = v12;
  *(result + 208) = v11;
  return result;
}

uint64_t sub_1001DAC6C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_1001DACD4(uint64_t a1)
{
  result = 0.0;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 208) = 0x3000000000000000;
  return result;
}

uint64_t sub_1001DAD1C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1001D5EEC(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_1001DADC8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1001CA1CC(a1, *(v2 + 24));
  *a2 = result;
  return result;
}

uint64_t sub_1001DADF8()
{
  v1 = type metadata accessor for MACAddress();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v2 + 64);

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_1001DAEE4(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t, char *))
{
  v4 = *(type metadata accessor for MACAddress() - 8);
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2 + ((*(v4 + 80) + 40) & ~*(v4 + 80));

  return a2(a1, v5, v6, v7, v8);
}

uint64_t sub_1001DAFD0()
{
  v1 = *(type metadata accessor for MACAddress() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 42) & ~v2;
  v4 = (*(v1 + 64) + 7 + v3) & 0xFFFFFFFFFFFFFFF8;
  return sub_1001C1D18(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 41), v0 + v3, *(v0 + v4), v0 + ((v2 + v4 + 8) & ~v2));
}

uint64_t sub_1001DB088()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100014744;

  return sub_1001C3380(v2, v3);
}

void sub_1001DB124(void **a1@<X0>, void *a2@<X8>)
{
  v5 = *(type metadata accessor for MACAddress() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *(v2 + 16);

  sub_1001C35A0(a1, v8, v2 + v6, v7, a2);
}

uint64_t sub_1001DB1DC(uint64_t a1)
{
  v3 = *(type metadata accessor for MACAddress() - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 48) & ~v4;
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1 + ((*(v3 + 64) + v4 + v5) & ~v4);

  return sub_1001C4290(a1, v6, v7, v8, v9, (v1 + v5), v10);
}

uint64_t sub_1001DB2C0(void (*a1)(void))
{

  a1(*(v1 + 24));

  return _swift_deallocObject(v1, 32);
}

unint64_t sub_1001DB348()
{
  result = qword_101699668;
  if (!qword_101699668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101699668);
  }

  return result;
}

unint64_t sub_1001DB39C()
{
  result = qword_101699670;
  if (!qword_101699670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101699670);
  }

  return result;
}

uint64_t sub_1001DB428()
{
  sub_1000BC4D4(&qword_1016A6010, &qword_101391C30);
  result = swift_allocObject();
  *(result + 16) = 0;
  qword_101699678 = result;
  return result;
}

void *sub_1001DB468()
{
  type metadata accessor for MessagingQueryController();
  swift_allocObject();
  result = sub_10126766C(0xD00000000000001BLL, 0x800000010134CCA0);
  qword_101699690 = result;
  return result;
}

uint64_t sub_1001DB4C0(uint64_t a1)
{
  v1 = static os_log_type_t.debug.getter();
  if (qword_101695058 != -1)
  {
    v3 = v1;
    swift_once();
    v1 = v3;
  }

  os_log(_:dso:log:_:_:)(v1, &_mh_execute_header, qword_10177C3A0, "Flushing FamilyCircle cache", 27, 2, _swiftEmptyArrayStorage);
  qword_101699680 = 0;

  qword_101699688 = 0;
}

uint64_t sub_1001DB570@<X0>(uint64_t a1@<X8>)
{
  v2 = qword_101699680;
  if (qword_101699680)
  {

    v3 = static os_log_type_t.debug.getter();
    if (qword_101695058 != -1)
    {
      v15 = v3;
      swift_once();
      v3 = v15;
    }

    result = os_log(_:dso:log:_:_:)(v3, &_mh_execute_header, qword_10177C3A0, "Using cached FamilyCircle", 25, 2, _swiftEmptyArrayStorage);
    *a1 = v2;
    *(a1 + 8) = 0;
  }

  else
  {
    v5 = [objc_allocWithZone(FAFetchFamilyCircleRequest) init];
    [v5 setCachePolicy:1];
    v6 = dispatch_group_create();
    v7 = swift_allocObject();
    sub_1001DB7C4();
    v8 = swift_allocError();
    *v9 = 1;
    *(v7 + 16) = v8;
    *(v7 + 24) = 1;
    dispatch_group_enter(v6);
    v10 = swift_allocObject();
    *(v10 + 16) = v6;
    *(v10 + 24) = v7;
    v16[4] = sub_1001DB99C;
    v16[5] = v10;
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 1107296256;
    v16[2] = sub_1000D488C;
    v16[3] = &unk_101613098;
    v11 = _Block_copy(v16);
    v12 = v6;

    [v5 startRequestWithCompletionHandler:v11];
    _Block_release(v11);
    OS_dispatch_group.wait()();

    swift_beginAccess();
    v13 = *(v7 + 16);
    v14 = *(v7 + 24);
    *a1 = v13;
    *(a1 + 8) = v14;
    sub_1001DB9A4(v13, v14);
  }

  return result;
}

uint64_t sub_1001DB7B8(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

unint64_t sub_1001DB7C4()
{
  result = qword_101699698;
  if (!qword_101699698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101699698);
  }

  return result;
}

void sub_1001DB818(void *a1, uint64_t a2, NSObject *a3, uint64_t a4)
{
  if (a2)
  {
    swift_beginAccess();
    v7 = *(a4 + 16);
    v8 = *(a4 + 24);
    *(a4 + 16) = a2;
    *(a4 + 24) = 1;
    swift_errorRetain();
    v9 = v7;
    v10 = v8;
  }

  else if (a1)
  {
    v11 = a1;
    v12 = [v11 members];
    sub_100008BB8(0, &qword_1016996A0, FAFamilyMember_ptr);
    v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v14 = sub_101129F98(v13);

    qword_101699680 = v14;

    swift_beginAccess();
    v9 = *(a4 + 16);
    v10 = *(a4 + 24);
    *(a4 + 16) = v14;
    *(a4 + 24) = 0;
  }

  else
  {
    sub_1001DB7C4();
    v15 = swift_allocError();
    *v16 = 1;
    swift_beginAccess();
    v9 = *(a4 + 16);
    v10 = *(a4 + 24);
    *(a4 + 16) = v15;
    *(a4 + 24) = 1;
  }

  sub_1001DB7B8(v9, v10);
  dispatch_group_leave(a3);
}

double sub_1001DB9A4(uint64_t a1, char a2)
{
  if (a2)
  {
    swift_errorRetain();
  }

  else
  {
  }

  return result;
}

double sub_1001DB9B0@<D0>(void *a1@<X8>)
{
  *a1 = qword_101699688;

  return result;
}

uint64_t sub_1001DB9D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[14] = a5;
  v6[15] = a6;
  v6[13] = a4;
  return _swift_task_switch(sub_1001DB9F8, 0, 0);
}

uint64_t sub_1001DB9F8()
{
  v1 = *(v0 + 104);
  *(v0 + 88) = &_swiftEmptySetSingleton;
  v2 = *(v1 + 32);
  *(v0 + 256) = v2;
  v3 = -1;
  v4 = -1 << v2;
  if (-(-1 << v2) < 64)
  {
    v3 = ~(-1 << -v4);
  }

  v5 = v3 & *(v1 + 56);

  if (v5)
  {
    v7 = 0;
LABEL_8:
    *(v0 + 152) = v5;
    *(v0 + 160) = v7;
    v9 = *(v6 + 48) + 24 * (__clz(__rbit64(v5)) | (v7 << 6));
    *(v0 + 257) = *v9;
    *(v0 + 168) = *(v9 + 8);
    *(v0 + 176) = *(v9 + 16);
    v10 = qword_1016944B8;

    if (v10 != -1)
    {
      swift_once();
    }

    v11 = qword_101699690;
    *(v0 + 184) = qword_101699690;

    return _swift_task_switch(sub_1001DBDA0, v11, 0);
  }

  else
  {
    v8 = 0;
    while (((63 - v4) >> 6) - 1 != v8)
    {
      v7 = v8 + 1;
      v5 = *(v6 + 8 * v8++ + 64);
      if (v5)
      {
        goto LABEL_8;
      }
    }

    v12 = *(v0 + 88);
    *(v0 + 128) = v12;
    v13 = swift_allocObject();
    *(v0 + 136) = v13;
    *(v13 + 16) = v12;

    v14 = swift_task_alloc();
    *(v0 + 144) = v14;
    *v14 = v0;
    v14[1] = sub_1001DBC10;

    return unsafeBlocking<A>(_:)(v14, sub_1001DD08C, v13, &type metadata for () + 1);
  }
}

uint64_t sub_1001DBC10()
{

  return _swift_task_switch(sub_1001DBD28, 0, 0);
}

uint64_t sub_1001DBD28()
{
  (*(v0 + 112))(*(v0 + 128), 0);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001DBDA0()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 184);
  v3 = *(v0 + 168);
  v4 = *(v0 + 257);
  sub_1000BC4D4(&qword_101698CB8, &qword_101390860);
  inited = swift_initStackObject();
  *(v0 + 192) = inited;
  *(inited + 16) = xmmword_101385D80;
  *(inited + 32) = v4;
  *(inited + 40) = v3;
  *(inited + 48) = v1;
  v6 = *(v2 + 112);
  *(v0 + 200) = v6;

  if (v6)
  {
    v7 = *(v0 + 184);
    v8 = sub_1001DD028();
    v9 = swift_task_alloc();
    *(v0 + 208) = v9;
    v9[2] = inited;
    v9[3] = v6;
    v9[4] = v7;
    v10 = v6;
    v11 = swift_task_alloc();
    *(v0 + 216) = v11;
    v12 = sub_1000BC4D4(&qword_1016996B8, &qword_101391C40);
    *v11 = v0;
    v11[1] = sub_1001DBFB8;

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 96, v7, v8, 0xD00000000000001CLL, 0x800000010134D210, sub_1001DD080, v9, v12);
  }

  else
  {

    swift_setDeallocating();
    sub_1001BAE8C(inited + 32);
    sub_1001DCF6C();
    v13 = swift_allocError();
    *v14 = 6;
    swift_willThrow();
    *(v0 + 232) = v13;

    return _swift_task_switch(sub_1001DC3BC, 0, 0);
  }
}

uint64_t sub_1001DBFB8()
{
  v2 = *v1;
  *(v2 + 224) = v0;

  v3 = *(v2 + 184);
  swift_setDeallocating();
  swift_arrayDestroy();
  if (v0)
  {

    v4 = sub_1001DC34C;
  }

  else
  {

    v4 = sub_1001DC16C;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1001DC16C()
{
  v2 = 0;
  v3 = 0;
  v4 = *(v1 + 96);
  v5 = 1 << *(v4 + 32);
  while (1)
  {
    v6 = *(v4 + 8 * v3 + 64);
    if (v6)
    {
      break;
    }

    ++v3;
    v2 -= 64;
    if ((v5 + 63) >> 6 == v3)
    {
      goto LABEL_20;
    }
  }

  v7 = __clz(__rbit64(v6));
  if (v7 - v5 == v2)
  {
    goto LABEL_20;
  }

  if (-v2 < 0 || (v8 = v7 - v2, v8 >= v5))
  {
    __break(1u);
    goto LABEL_18;
  }

  if (((*(v4 + 64 + 8 * (v3 & 0x3FFFFFFFFFFFFFFLL)) >> v7) & 1) == 0)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    v11 = _CocoaArrayWrapper.endIndex.getter();
    if (v11)
    {
      goto LABEL_11;
    }

LABEL_20:

    v18 = sub_1001DD13C;
    goto LABEL_21;
  }

  v0 = *(*(v4 + 56) + 8 * v8);

  if (v0 >> 62)
  {
    goto LABEL_19;
  }

  v11 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v11)
  {
    goto LABEL_20;
  }

LABEL_11:
  if ((v0 & 0xC000000000000001) != 0)
  {
    v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return _swift_task_switch(v11, v9, v10);
    }

    v12 = *(v0 + 32);
  }

  v13 = v12;

  v14 = [v13 senderCorrelationIdentifier];

  if (v14)
  {

    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;

    *(v1 + 240) = v15;
    *(v1 + 248) = v17;
    v18 = sub_1001DC6A0;
  }

  else
  {
    v18 = sub_1001DC8AC;
  }

LABEL_21:
  v11 = v18;
  v9 = 0;
  v10 = 0;

  return _swift_task_switch(v11, v9, v10);
}

uint64_t sub_1001DC34C()
{
  *(v0 + 232) = *(v0 + 224);

  return _swift_task_switch(sub_1001DC3BC, 0, 0);
}

uint64_t sub_1001DC3BC(uint64_t a1)
{
  v2 = static os_log_type_t.error.getter();
  if (qword_101695058 != -1)
  {
LABEL_17:
    swift_once();
  }

  v3 = qword_10177C3A0;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_101385D80;
  v5 = _convertErrorToNSError(_:)();
  *(v4 + 56) = sub_100008BB8(0, &qword_10169E020, NSError_ptr);
  *(v4 + 64) = sub_1001DCFC0();
  *(v4 + 32) = v5;
  os_log(_:dso:log:_:_:)(v2, &_mh_execute_header, v3, "Error getting correlationIdentifier: %@", 39, 2, v4);

  v6 = *(v1 + 160);
  v7 = (*(v1 + 152) - 1) & *(v1 + 152);
  if (v7)
  {
    v8 = *(v1 + 104);
LABEL_8:
    *(v1 + 152) = v7;
    *(v1 + 160) = v6;
    v10 = *(v8 + 48) + 24 * (__clz(__rbit64(v7)) | (v6 << 6));
    *(v1 + 257) = *v10;
    *(v1 + 168) = *(v10 + 8);
    *(v1 + 176) = *(v10 + 16);
    v11 = qword_1016944B8;

    if (v11 != -1)
    {
      swift_once();
    }

    v12 = qword_101699690;
    *(v1 + 184) = qword_101699690;

    return _swift_task_switch(sub_1001DBDA0, v12, 0);
  }

  else
  {
    while (1)
    {
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
        goto LABEL_17;
      }

      if (v9 >= (((1 << *(v1 + 256)) + 63) >> 6))
      {
        break;
      }

      v8 = *(v1 + 104);
      v7 = *(v8 + 8 * v9 + 56);
      ++v6;
      if (v7)
      {
        v6 = v9;
        goto LABEL_8;
      }
    }

    v13 = *(v1 + 88);
    *(v1 + 128) = v13;
    v14 = swift_allocObject();
    *(v1 + 136) = v14;
    *(v14 + 16) = v13;

    v15 = swift_task_alloc();
    *(v1 + 144) = v15;
    *v15 = v1;
    v15[1] = sub_1001DBC10;

    return unsafeBlocking<A>(_:)(v15, sub_1001DD08C, v14, &type metadata for () + 1);
  }
}

uint64_t sub_1001DC6A0()
{
  sub_100DE9538((v0 + 72), *(v0 + 240), *(v0 + 248));

  v1 = *(v0 + 160);
  v2 = (*(v0 + 152) - 1) & *(v0 + 152);
  if (v2)
  {
    v3 = *(v0 + 104);
LABEL_7:
    *(v0 + 152) = v2;
    *(v0 + 160) = v1;
    v5 = *(v3 + 48) + 24 * (__clz(__rbit64(v2)) | (v1 << 6));
    *(v0 + 257) = *v5;
    *(v0 + 168) = *(v5 + 8);
    *(v0 + 176) = *(v5 + 16);
    v6 = qword_1016944B8;

    if (v6 != -1)
    {
LABEL_15:
      swift_once();
    }

    v7 = qword_101699690;
    *(v0 + 184) = qword_101699690;

    return _swift_task_switch(sub_1001DBDA0, v7, 0);
  }

  else
  {
    while (1)
    {
      v4 = v1 + 1;
      if (__OFADD__(v1, 1))
      {
        __break(1u);
        goto LABEL_15;
      }

      v3 = *(v0 + 104);
      if (v4 >= (((1 << *(v0 + 256)) + 63) >> 6))
      {
        break;
      }

      v2 = *(v3 + 8 * v4 + 56);
      ++v1;
      if (v2)
      {
        v1 = v4;
        goto LABEL_7;
      }
    }

    v8 = *(v0 + 88);
    *(v0 + 128) = v8;
    v9 = swift_allocObject();
    *(v0 + 136) = v9;
    *(v9 + 16) = v8;

    v10 = swift_task_alloc();
    *(v0 + 144) = v10;
    *v10 = v0;
    v10[1] = sub_1001DBC10;

    return unsafeBlocking<A>(_:)(v10, sub_1001DD08C, v9, &type metadata for () + 1);
  }
}

uint64_t sub_1001DC8AC(uint64_t a1)
{
  v2 = static os_log_type_t.error.getter();
  if (qword_101695058 != -1)
  {
LABEL_17:
    swift_once();
  }

  v4 = *(v1 + 168);
  v3 = *(v1 + 176);
  v5 = qword_10177C3A0;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_101385D80;
  *(v6 + 56) = &type metadata for String;
  *(v6 + 64) = sub_100008C00();
  *(v6 + 32) = v4;
  *(v6 + 40) = v3;
  os_log(_:dso:log:_:_:)(v2, &_mh_execute_header, v5, "Could not get correlationIdentifier for: %@", 43, 2, v6);

  v7 = *(v1 + 160);
  v8 = (*(v1 + 152) - 1) & *(v1 + 152);
  if (v8)
  {
    v9 = *(v1 + 104);
LABEL_8:
    *(v1 + 152) = v8;
    *(v1 + 160) = v7;
    v11 = *(v9 + 48) + 24 * (__clz(__rbit64(v8)) | (v7 << 6));
    *(v1 + 257) = *v11;
    *(v1 + 168) = *(v11 + 8);
    *(v1 + 176) = *(v11 + 16);
    v12 = qword_1016944B8;

    if (v12 != -1)
    {
      swift_once();
    }

    v13 = qword_101699690;
    *(v1 + 184) = qword_101699690;

    return _swift_task_switch(sub_1001DBDA0, v13, 0);
  }

  else
  {
    while (1)
    {
      v10 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
        goto LABEL_17;
      }

      if (v10 >= (((1 << *(v1 + 256)) + 63) >> 6))
      {
        break;
      }

      v9 = *(v1 + 104);
      v8 = *(v9 + 8 * v10 + 56);
      ++v7;
      if (v8)
      {
        v7 = v10;
        goto LABEL_8;
      }
    }

    v14 = *(v1 + 88);
    *(v1 + 128) = v14;
    v15 = swift_allocObject();
    *(v1 + 136) = v15;
    *(v15 + 16) = v14;

    v16 = swift_task_alloc();
    *(v1 + 144) = v16;
    *v16 = v1;
    v16[1] = sub_1001DBC10;

    return unsafeBlocking<A>(_:)(v16, sub_1001DD08C, v15, &type metadata for () + 1);
  }
}

uint64_t sub_1001DCB6C(uint64_t a1)
{
  if (qword_1016944B0 != -1)
  {
    v2 = a1;
    swift_once();
    a1 = v2;
  }

  __chkstk_darwin(a1);
  return OSAllocatedUnfairLock.callAsFunction<A>(_:)();
}

uint64_t sub_1001DCC34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 32) = a7;
  *(v8 + 40) = a8;
  *(v8 + 80) = a6;
  *(v8 + 16) = a4;
  *(v8 + 24) = a5;
  return _swift_task_switch(sub_1001DCC5C, 0, 0);
}

uint64_t sub_1001DCC5C()
{
  if (qword_1016944B8 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_1001DCD2C;
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 80);

  return sub_101269AA4(v4, v2, v3);
}

uint64_t sub_1001DCD2C(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 56) = v2;

  if (v2)
  {
    v7 = sub_1001DCED8;
  }

  else
  {
    *(v6 + 64) = a2;
    *(v6 + 72) = a1;
    v7 = sub_1001DCE60;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1001DCE60()
{
  (*(v0 + 16))(*(v0 + 72), *(v0 + 64), 0);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001DCED8()
{
  v1 = v0[7];
  v2 = v0[2];
  swift_errorRetain();
  v2(v1, 0, 1);

  v3 = v0[1];

  return v3();
}

unint64_t sub_1001DCF6C()
{
  result = qword_1016996A8;
  if (!qword_1016996A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016996A8);
  }

  return result;
}

unint64_t sub_1001DCFC0()
{
  result = qword_1016BC310;
  if (!qword_1016BC310)
  {
    sub_100008BB8(255, &qword_10169E020, NSError_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BC310);
  }

  return result;
}

unint64_t sub_1001DD028()
{
  result = qword_1016996B0;
  if (!qword_1016996B0)
  {
    type metadata accessor for MessagingQueryController();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016996B0);
  }

  return result;
}

double sub_1001DD094()
{
  qword_101699688 = *(v0 + 16);

  return result;
}

unint64_t sub_1001DD0E8()
{
  result = qword_1016996C0[0];
  if (!qword_1016996C0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1016996C0);
  }

  return result;
}

uint64_t sub_1001DD1AC(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v7 = sub_1000BC4D4(&qword_101696E28, &qword_1013EAD80);
  __chkstk_darwin(v7 - 8);
  v9 = &v16 - v8;
  v10 = type metadata accessor for MultipartAccessoryPairingInfo(0);
  __chkstk_darwin(v10);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v13 + 48))(a1, 1) == 1)
  {
    sub_10000B3A8(a1, &qword_101696E28, &qword_1013EAD80);
    sub_1001E4940(a2, a3, type metadata accessor for MultipartAccessoryPairingInfo, type metadata accessor for MultipartAccessoryPairingInfo, sub_100AF6500, sub_1010052AC, v9);
    sub_100016590(a2, a3);
    return sub_10000B3A8(v9, &qword_101696E28, &qword_1013EAD80);
  }

  else
  {
    sub_100038E0C(a1, v12, type metadata accessor for MultipartAccessoryPairingInfo);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v3;
    sub_100FFA7D4(v12, a2, a3, isUniquelyReferenced_nonNull_native);
    result = sub_100016590(a2, a3);
    *v3 = v17;
  }

  return result;
}

uint64_t sub_1001DD3D8(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v7 = sub_1000BC4D4(&qword_1016998A8, &qword_1013EADC0);
  __chkstk_darwin(v7 - 8);
  v9 = &v16 - v8;
  v10 = sub_1000BC4D4(&qword_1016A40D0, &unk_10138BE70);
  __chkstk_darwin(v10);
  v12 = &v16 - v11;
  if ((*(v13 + 48))(a1, 1) == 1)
  {
    sub_10000B3A8(a1, &qword_1016998A8, &qword_1013EADC0);
    sub_1001E47B8(a2, a3, v9);
    sub_100016590(a2, a3);
    return sub_10000B3A8(v9, &qword_1016998A8, &qword_1013EADC0);
  }

  else
  {
    sub_1000D2AD8(a1, v12, &qword_1016A40D0, &unk_10138BE70);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v3;
    sub_100FFA9DC(v12, a2, a3, isUniquelyReferenced_nonNull_native);
    result = sub_100016590(a2, a3);
    *v3 = v17;
  }

  return result;
}

uint64_t sub_1001DD5B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a2)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v4;
    sub_100FFACA0(a1, a2, a3, a4, isUniquelyReferenced_nonNull_native);

    *v4 = v17;
  }

  else
  {
    v12 = sub_100771D58(a3, a4);
    v14 = v13;

    if (v14)
    {
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v5;
      v18 = *v5;
      if (!v15)
      {
        sub_1010056F4();
        v16 = v18;
      }

      result = sub_100AF6720(v12, v16);
      *v5 = v16;
    }
  }

  return result;
}

uint64_t sub_1001DD6C0(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v7 = sub_1000BC4D4(&qword_101699858, &qword_101391FF0);
  __chkstk_darwin(v7 - 8);
  v9 = &v16 - v8;
  v10 = type metadata accessor for OwnedBeaconGroup.PairingState(0);
  __chkstk_darwin(v10);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v13 + 48))(a1, 1) == 1)
  {
    sub_10000B3A8(a1, &qword_101699858, &qword_101391FF0);
    sub_1001E4940(a2, a3, type metadata accessor for OwnedBeaconGroup.PairingState, type metadata accessor for OwnedBeaconGroup.PairingState, sub_100AF68D0, sub_10100586C, v9);
    sub_100016590(a2, a3);
    return sub_10000B3A8(v9, &qword_101699858, &qword_101391FF0);
  }

  else
  {
    sub_100038E0C(a1, v12, type metadata accessor for OwnedBeaconGroup.PairingState);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v3;
    sub_100FFAE28(v12, a2, a3, isUniquelyReferenced_nonNull_native);
    result = sub_100016590(a2, a3);
    *v3 = v17;
  }

  return result;
}

uint64_t sub_1001DD8EC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1000BC4D4(&qword_1016998B8, &unk_1013B6AD0);
  __chkstk_darwin(v6 - 8);
  v8 = &v20 - v7;
  v9 = type metadata accessor for BookmarkMetaData(0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9) == 1)
  {
    sub_10000B3A8(a1, &qword_1016998B8, &unk_1013B6AD0);
    v13 = sub_100771F0C(a2);
    if (v14)
    {
      v15 = v13;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v17 = *v3;
      v21 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_101005B0C();
        v17 = v21;
      }

      sub_100038E0C(*(v17 + 56) + *(v10 + 72) * v15, v8, type metadata accessor for BookmarkMetaData);
      sub_100AF6AE8(v15, v17);
      *v3 = v17;
      (*(v10 + 56))(v8, 0, 1, v9);
    }

    else
    {
      (*(v10 + 56))(v8, 1, 1, v9);
    }

    return sub_10000B3A8(v8, &qword_1016998B8, &unk_1013B6AD0);
  }

  else
  {
    sub_100038E0C(a1, v12, type metadata accessor for BookmarkMetaData);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v3;
    result = sub_100FFB030(v12, a2, v18);
    *v3 = v21;
  }

  return result;
}

uint64_t sub_1001DDB40(uint64_t a1, uint64_t a2)
{
  v5 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - v6;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v9 + 48))(a1, 1, v8) == 1)
  {
    sub_10000B3A8(a1, &qword_1016980D0, &unk_10138F3B0);
    sub_1001E4AC4(a2, v7);
    (*(v9 + 8))(a2, v8);
    return sub_10000B3A8(v7, &qword_1016980D0, &unk_10138F3B0);
  }

  else
  {
    (*(v9 + 32))(v11, a1, v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v2;
    sub_100FFB184(v11, a2, isUniquelyReferenced_nonNull_native);
    result = (*(v9 + 8))(a2, v8);
    *v2 = v15;
  }

  return result;
}

uint64_t sub_1001DDD30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_10004D07C(a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v3;
    sub_100FFB368(v9, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v8;
  }

  else
  {
    sub_10000B3A8(a1, &unk_1016A0B10, &qword_10139BF40);
    sub_1001E4C5C(a2, a3, v9);

    return sub_10000B3A8(v9, &unk_1016A0B10, &qword_10139BF40);
  }

  return result;
}

uint64_t sub_1001DDE00(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    sub_10004D07C(a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v2;
    sub_100FFB504(v9, a2, isUniquelyReferenced_nonNull_native);
    v5 = type metadata accessor for CodingUserInfoKey();
    result = (*(*(v5 - 8) + 8))(a2, v5);
    *v2 = v8;
  }

  else
  {
    sub_10000B3A8(a1, &qword_1016998F8, &qword_101392048);
    sub_1001E4D00(v9, a2);
    v7 = type metadata accessor for CodingUserInfoKey();
    (*(*(v7 - 8) + 8))(a2, v7);
    return sub_10000B3A8(v9, &qword_1016998F8, &qword_101392048);
  }

  return result;
}

void sub_1001DDF1C(uint64_t a1, void *a2)
{
  v5 = sub_1000BC4D4(&qword_101699868, &qword_101391FF8);
  __chkstk_darwin(v5 - 8);
  v7 = &v13 - v6;
  v8 = type metadata accessor for CloudKitChangeSet.TombstoneInfo(0);
  __chkstk_darwin(v8);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1) == 1)
  {
    sub_10000B3A8(a1, &qword_101699868, &qword_101391FF8);
    sub_1001E4DDC(v7, a2);

    sub_10000B3A8(v7, &qword_101699868, &qword_101391FF8);
  }

  else
  {
    sub_100038E0C(a1, v10, type metadata accessor for CloudKitChangeSet.TombstoneInfo);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v2;
    sub_100FFB8A0(v10, a2, isUniquelyReferenced_nonNull_native);

    *v2 = v14;
  }
}

uint64_t sub_1001DE0D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 41) == 255)
  {
    sub_10000B3A8(a1, &qword_101699870, &qword_101392000);
    sub_1001E50DC(a2, a3, &v10);

    return sub_10000B3A8(&v10, &qword_101699870, &qword_101392000);
  }

  else
  {
    v7 = *(a1 + 16);
    v10 = *a1;
    v11[0] = v7;
    *(v11 + 10) = *(a1 + 26);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v3;
    sub_100FFC070(&v10, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v9;
  }

  return result;
}

uint64_t sub_1001DE1F0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  __chkstk_darwin(v6 - 8);
  v8 = &v20 - v7;
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9) == 1)
  {
    sub_10000B3A8(a1, &unk_101696900, &unk_10138B1E0);
    v13 = sub_100771D14(a2);
    if (v14)
    {
      v15 = v13;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v17 = *v3;
      v21 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1010074AC();
        v17 = v21;
      }

      (*(v10 + 32))(v8, *(v17 + 56) + *(v10 + 72) * v15, v9);
      sub_100AF7F1C(v15, v17);
      *v3 = v17;
      (*(v10 + 56))(v8, 0, 1, v9);
    }

    else
    {
      (*(v10 + 56))(v8, 1, 1, v9);
    }

    return sub_10000B3A8(v8, &unk_101696900, &unk_10138B1E0);
  }

  else
  {
    (*(v10 + 32))(v12, a1, v9);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v3;
    result = sub_100FFC5AC(v12, a2, v18);
    *v3 = v21;
  }

  return result;
}

uint64_t sub_1001DE440(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_100FFC714(a1, a2, isUniquelyReferenced_nonNull_native);
    v7 = type metadata accessor for MACAddress();
    result = (*(*(v7 - 8) + 8))(a2, v7);
    *v2 = v20;
  }

  else
  {
    v9 = sub_1007723C0(a2);
    if (v10)
    {
      v11 = v9;
      v12 = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v2;
      v21 = *v3;
      if (!v12)
      {
        sub_101007714();
        v13 = v21;
      }

      v14 = *(v13 + 48);
      v15 = type metadata accessor for MACAddress();
      v16 = *(v15 - 8);
      v17 = *(v16 + 8);
      v17(v14 + *(v16 + 72) * v11, v15);

      sub_100AF81EC(v11, v13);
      result = (v17)(a2, v15);
      *v3 = v13;
    }

    else
    {
      v18 = type metadata accessor for MACAddress();
      v19 = *(*(v18 - 8) + 8);

      return v19(a2, v18);
    }
  }

  return result;
}

uint64_t sub_1001DE600(uint64_t a1, uint64_t a2)
{
  v5 = sub_1000BC4D4(&qword_1016998E0, &qword_101392030);
  __chkstk_darwin(v5 - 8);
  v7 = &v16 - v6;
  v8 = type metadata accessor for SoundPlaybackManager.PlaybackCoordinator(0);
  __chkstk_darwin(v8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1) == 1)
  {
    sub_10000B3A8(a1, &qword_1016998E0, &qword_101392030);
    sub_1001E5500(a2, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator, sub_100AF8234, sub_10100773C, v7);
    v12 = type metadata accessor for UUID();
    (*(*(v12 - 8) + 8))(a2, v12);
    return sub_10000B3A8(v7, &qword_1016998E0, &qword_101392030);
  }

  else
  {
    sub_100038E0C(a1, v10, type metadata accessor for SoundPlaybackManager.PlaybackCoordinator);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v2;
    sub_100FFC918(v10, a2, isUniquelyReferenced_nonNull_native);
    v15 = type metadata accessor for UUID();
    result = (*(*(v15 - 8) + 8))(a2, v15);
    *v2 = v17;
  }

  return result;
}

uint64_t sub_1001DE870(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_100FFD020(a1, a2, isUniquelyReferenced_nonNull_native);
    v7 = type metadata accessor for UUID();
    result = (*(*(v7 - 8) + 8))(a2, v7);
    *v2 = v20;
  }

  else
  {
    v9 = sub_1000210EC(a2);
    if (v10)
    {
      v11 = v9;
      v12 = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v2;
      v21 = *v3;
      if (!v12)
      {
        sub_10100817C();
        v13 = v21;
      }

      v14 = *(v13 + 48);
      v15 = type metadata accessor for UUID();
      v16 = *(v15 - 8);
      v17 = *(v16 + 8);
      v17(v14 + *(v16 + 72) * v11, v15);

      sub_100B27F6C(v11, v13);
      result = (v17)(a2, v15);
      *v3 = v13;
    }

    else
    {
      v18 = type metadata accessor for UUID();
      v19 = *(*(v18 - 8) + 8);

      return v19(a2, v18);
    }
  }

  return result;
}

uint64_t sub_1001DEA30(uint64_t a1, char a2, uint64_t a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_1007723C0(a3);
    if (v7)
    {
      v8 = v6;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v10 = *v3;
      v21 = *v4;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1010081E0();
        v10 = v21;
      }

      v11 = *(v10 + 48);
      v12 = type metadata accessor for MACAddress();
      v13 = *(v12 - 8);
      v14 = *(v13 + 8);
      v14(v11 + *(v13 + 72) * v8, v12);
      sub_100AF8590(v8, v10);
      result = (v14)(a3, v12);
      *v4 = v10;
    }

    else
    {
      v19 = type metadata accessor for MACAddress();
      v20 = *(*(v19 - 8) + 8);

      return v20(a3, v19);
    }
  }

  else
  {
    v17 = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v3;
    sub_100FFD49C(a1, a3, v17);
    v18 = type metadata accessor for MACAddress();
    result = (*(*(v18 - 8) + 8))(a3, v18);
    *v3 = v22;
  }

  return result;
}

uint64_t sub_1001DEBE4(uint64_t a1, uint64_t a2)
{
  v5 = sub_1000BC4D4(&qword_1016998C0, &qword_1013DF6D0);
  __chkstk_darwin(v5 - 8);
  v7 = &v16 - v6;
  v8 = sub_1000BC4D4(&qword_1016998C8, &qword_1013AAC70);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v16 - v10;
  if ((*(v9 + 48))(a1, 1, v8) == 1)
  {
    sub_10000B3A8(a1, &qword_1016998C0, &qword_1013DF6D0);
    sub_1001E5E40(a2, &qword_1016998C8, &qword_1013AAC70, sub_100AF85D8, sub_1010083D0, v7);
    v12 = type metadata accessor for UUID();
    (*(*(v12 - 8) + 8))(a2, v12);
    return sub_10000B3A8(v7, &qword_1016998C0, &qword_1013DF6D0);
  }

  else
  {
    (*(v9 + 32))(v11, a1, v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v2;
    sub_100FFD670(v11, a2, isUniquelyReferenced_nonNull_native);
    v15 = type metadata accessor for UUID();
    result = (*(*(v15 - 8) + 8))(a2, v15);
    *v2 = v17;
  }

  return result;
}

uint64_t sub_1001DEE50(uint64_t a1, uint64_t a2)
{
  v5 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  __chkstk_darwin(v5 - 8);
  v7 = &v16 - v6;
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v9 + 48))(a1, 1, v8) == 1)
  {
    sub_10000B3A8(a1, &unk_101696900, &unk_10138B1E0);
    sub_1001E5240(sub_1000210EC, &type metadata accessor for UUID, sub_100AF85EC, sub_101008408, v7);
    v12 = type metadata accessor for UUID();
    (*(*(v12 - 8) + 8))(a2, v12);
    return sub_10000B3A8(v7, &unk_101696900, &unk_10138B1E0);
  }

  else
  {
    (*(v9 + 32))(v11, a1, v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v2;
    sub_100FFD694(v11, a2, isUniquelyReferenced_nonNull_native);
    v15 = type metadata accessor for UUID();
    result = (*(*(v15 - 8) + 8))(a2, v15);
    *v2 = v17;
  }

  return result;
}

uint64_t sub_1001DF0CC(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    sub_10000A748(a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v2;
    sub_100FFDCC4(v9, a2, isUniquelyReferenced_nonNull_native);
    v5 = type metadata accessor for UUID();
    result = (*(*(v5 - 8) + 8))(a2, v5);
    *v2 = v8;
  }

  else
  {
    sub_10000B3A8(a1, &unk_1016AA480, &unk_1013BD050);
    sub_1001E5A24(a2, sub_100031694, sub_100B27F74, sub_1010087A8, v9);
    v7 = type metadata accessor for UUID();
    (*(*(v7 - 8) + 8))(a2, v7);
    return sub_10000B3A8(v9, &unk_1016AA480, &unk_1013BD050);
  }

  return result;
}

uint64_t sub_1001DF224(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v5 = v4;
  if (a3 == -1)
  {
    v13 = sub_1000210EC(a4);
    if (v14)
    {
      v15 = v13;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v17 = *v4;
      v25 = *v5;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1010087D0();
        v17 = v25;
      }

      v18 = *(v17 + 48);
      v19 = type metadata accessor for UUID();
      v20 = *(v19 - 8);
      v21 = *(v20 + 8);
      v21(v18 + *(v20 + 72) * v15, v19);
      sub_1001E61D8(*(*(v17 + 56) + 24 * v15), *(*(v17 + 56) + 24 * v15 + 8), *(*(v17 + 56) + 24 * v15 + 16));
      sub_100AF8604(v15, v17);
      result = (v21)(a4, v19);
      *v5 = v17;
    }

    else
    {
      v22 = type metadata accessor for UUID();
      v23 = *(*(v22 - 8) + 8);

      return v23(a4, v22);
    }
  }

  else
  {
    v10 = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v5;
    sub_100FFDEE0(a1, a2, a3 & 1, a4, v10);
    v11 = type metadata accessor for UUID();
    result = (*(*(v11 - 8) + 8))(a4, v11);
    *v5 = v24;
  }

  return result;
}

void sub_1001DF40C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v3;
    sub_100FFE0D8(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v14;
  }

  else
  {
    v8 = sub_1007725DC(a3);
    if (v9)
    {
      v10 = v8;
      v11 = swift_isUniquelyReferenced_nonNull_native();
      v12 = *v3;
      v15 = *v4;
      if (!v11)
      {
        sub_101008E60();
        v12 = v15;
      }

      sub_100AF8944(v10, v12);

      *v4 = v12;
    }

    else
    {
    }
  }
}

uint64_t sub_1001DF51C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if ((~a1 & 0xF000000000000007) != 0)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v2;
    sub_100FFE25C(a1, a2, isUniquelyReferenced_nonNull_native);
    v17 = type metadata accessor for UUID();
    result = (*(*(v17 - 8) + 8))(a2, v17);
    *v2 = v21;
  }

  else
  {
    v5 = sub_1000210EC(a2);
    if (v6)
    {
      v7 = v5;
      v8 = swift_isUniquelyReferenced_nonNull_native();
      v9 = *v2;
      v20 = *v3;
      if (!v8)
      {
        sub_101008FD0();
        v9 = v20;
      }

      v10 = *(v9 + 48);
      v11 = type metadata accessor for UUID();
      v12 = *(v11 - 8);
      v13 = *(v12 + 8);
      v13(v10 + *(v12 + 72) * v7, v11);
      sub_1001E61B8(*(*(v9 + 56) + 8 * v7));
      sub_100AF8AD0(v7, v9);
      result = (v13)(a2, v11);
      *v3 = v9;
    }

    else
    {
      v18 = type metadata accessor for UUID();
      v19 = *(*(v18 - 8) + 8);

      return v19(a2, v18);
    }
  }

  return result;
}

uint64_t sub_1001DF724(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, uint64_t), void (*a4)(uint64_t, uint64_t), void (*a5)(void))
{
  v6 = v5;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v5;
    a3(a1, a2, isUniquelyReferenced_nonNull_native);
    v11 = type metadata accessor for UUID();
    result = (*(*(v11 - 8) + 8))(a2, v11);
    *v5 = v26;
  }

  else
  {
    v15 = sub_1000210EC(a2);
    if (v16)
    {
      v17 = v15;
      v18 = swift_isUniquelyReferenced_nonNull_native();
      v19 = *v5;
      v27 = *v6;
      if (!v18)
      {
        a5();
        v19 = v27;
      }

      v20 = *(v19 + 48);
      v21 = type metadata accessor for UUID();
      v22 = *(v21 - 8);
      v23 = *(v22 + 8);
      v23(v20 + *(v22 + 72) * v17, v21);

      a4(v17, v19);
      result = (v23)(a2, v21);
      *v6 = v19;
    }

    else
    {
      v24 = type metadata accessor for UUID();
      v25 = *(*(v24 - 8) + 8);

      return v25(a2, v24);
    }
  }

  return result;
}

uint64_t sub_1001DF908(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_100FFF1D8(a1, a2, isUniquelyReferenced_nonNull_native);
    v7 = type metadata accessor for UUID();
    result = (*(*(v7 - 8) + 8))(a2, v7);
    *v2 = v20;
  }

  else
  {
    v9 = sub_1000210EC(a2);
    if (v10)
    {
      v11 = v9;
      v12 = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v2;
      v21 = *v3;
      if (!v12)
      {
        sub_10100A548();
        v13 = v21;
      }

      v14 = *(v13 + 48);
      v15 = type metadata accessor for UUID();
      v16 = *(v15 - 8);
      v17 = *(v16 + 8);
      v17(v14 + *(v16 + 72) * v11, v15);

      sub_100B27F6C(v11, v13);
      result = (v17)(a2, v15);
      *v3 = v13;
    }

    else
    {
      v18 = type metadata accessor for UUID();
      v19 = *(*(v18 - 8) + 8);

      return v19(a2, v18);
    }
  }

  return result;
}

uint64_t sub_1001DFAC8(uint64_t a1, uint64_t a2)
{
  v5 = sub_1000BC4D4(&qword_1016998F0, &qword_1013B60E0);
  __chkstk_darwin(v5 - 8);
  v7 = &v16 - v6;
  v8 = sub_1000BC4D4(&qword_1016C3210, &qword_101392040);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v16 - v10;
  if ((*(v9 + 48))(a1, 1, v8) == 1)
  {
    sub_10000B3A8(a1, &qword_1016998F0, &qword_1013B60E0);
    sub_1001E5E40(a2, &qword_1016C3210, &qword_101392040, sub_100AF8DF0, sub_10100A584, v7);
    v12 = type metadata accessor for UUID();
    (*(*(v12 - 8) + 8))(a2, v12);
    return sub_10000B3A8(v7, &qword_1016998F0, &qword_1013B60E0);
  }

  else
  {
    (*(v9 + 32))(v11, a1, v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v2;
    sub_100FFF200(v11, a2, isUniquelyReferenced_nonNull_native);
    v15 = type metadata accessor for UUID();
    result = (*(*(v15 - 8) + 8))(a2, v15);
    *v2 = v17;
  }

  return result;
}

void sub_1001DFD34(uint64_t a1, void *a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_100FFF5A8(a1, a2, isUniquelyReferenced_nonNull_native);

    *v2 = v12;
  }

  else
  {
    v6 = sub_100777014();
    if (v7)
    {
      v8 = v6;
      v9 = swift_isUniquelyReferenced_nonNull_native();
      v10 = *v2;
      v13 = *v3;
      if (!v9)
      {
        sub_10100A710();
        v10 = v13;
      }

      sub_100AF8E04(v8, v10);
      *v3 = v10;
    }

    else
    {
    }
  }
}

uint64_t sub_1001DFE38(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_100FFF724(a1, a2, isUniquelyReferenced_nonNull_native);
    v7 = type metadata accessor for UUID();
    result = (*(*(v7 - 8) + 8))(a2, v7);
    *v2 = v20;
  }

  else
  {
    v9 = sub_1000210EC(a2);
    if (v10)
    {
      v11 = v9;
      v12 = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v2;
      v21 = *v3;
      if (!v12)
      {
        sub_10100A870();
        v13 = v21;
      }

      v14 = *(v13 + 48);
      v15 = type metadata accessor for UUID();
      v16 = *(v15 - 8);
      v17 = *(v16 + 8);
      v17(v14 + *(v16 + 72) * v11, v15);

      sub_100AF8FCC(v11, v13);
      result = (v17)(a2, v15);
      *v3 = v13;
    }

    else
    {
      v18 = type metadata accessor for UUID();
      v19 = *(*(v18 - 8) + 8);

      return v19(a2, v18);
    }
  }

  return result;
}

uint64_t sub_1001DFFF8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_101000050(a1, a2, isUniquelyReferenced_nonNull_native);
    v7 = type metadata accessor for UUID();
    result = (*(*(v7 - 8) + 8))(a2, v7);
    *v2 = v20;
  }

  else
  {
    v9 = sub_1000210EC(a2);
    if (v10)
    {
      v11 = v9;
      v12 = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v2;
      v21 = *v3;
      if (!v12)
      {
        sub_10100B154();
        v13 = v21;
      }

      v14 = *(v13 + 48);
      v15 = type metadata accessor for UUID();
      v16 = *(v15 - 8);
      v17 = *(v16 + 8);
      v17(v14 + *(v16 + 72) * v11, v15);

      sub_100B27F6C(v11, v13);
      result = (v17)(a2, v15);
      *v3 = v13;
    }

    else
    {
      v18 = type metadata accessor for UUID();
      v19 = *(*(v18 - 8) + 8);

      return v19(a2, v18);
    }
  }

  return result;
}

uint64_t sub_1001E01B8(uint64_t a1, uint64_t a2)
{
  v5 = sub_1000BC4D4(&qword_1016998D8, &qword_101392028);
  __chkstk_darwin(v5 - 8);
  v7 = &v16 - v6;
  v8 = sub_1000BC4D4(&qword_1016AD630, &qword_1013C3FD0);
  __chkstk_darwin(v8);
  v10 = &v16 - v9;
  if ((*(v11 + 48))(a1, 1) == 1)
  {
    sub_10000B3A8(a1, &qword_1016998D8, &qword_101392028);
    sub_1001E56C0(a2, &qword_1016AD630, &qword_1013C3FD0, sub_100AF95C0, sub_10100B4E0, v7);
    v12 = type metadata accessor for UUID();
    (*(*(v12 - 8) + 8))(a2, v12);
    return sub_10000B3A8(v7, &qword_1016998D8, &qword_101392028);
  }

  else
  {
    sub_1000D2AD8(a1, v10, &qword_1016AD630, &qword_1013C3FD0);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v2;
    sub_1010000A0(v10, a2, isUniquelyReferenced_nonNull_native);
    v15 = type metadata accessor for UUID();
    result = (*(*(v15 - 8) + 8))(a2, v15);
    *v2 = v17;
  }

  return result;
}

uint64_t sub_1001E0414(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  if (a2)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v5;
    sub_101000330(a1, a2, a3, a4, a5, isUniquelyReferenced_nonNull_native);

    *v5 = v19;
  }

  else
  {
    v14 = sub_100772110(a3, a4, a5);
    v16 = v15;

    if (v16)
    {
      v17 = swift_isUniquelyReferenced_nonNull_native();
      v18 = *v6;
      v20 = *v6;
      if (!v17)
      {
        sub_10100BA90();
        v18 = v20;
      }

      result = sub_100AF95EC(v14, v18);
      *v6 = v18;
    }
  }

  return result;
}

Swift::Int sub_1001E0530(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    result = sub_101000870(a1, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
  }

  else
  {
    result = sub_100777018();
    if (v8)
    {
      v9 = result;
      v10 = swift_isUniquelyReferenced_nonNull_native();
      v11 = *v2;
      v13 = *v3;
      if (!v10)
      {
        sub_10100C4B8();
        v11 = v13;
      }

      result = sub_100AF9AE0(v9, v11);
      *v3 = v11;
    }
  }

  return result;
}

uint64_t sub_1001E05F0(uint64_t a1, uint64_t a2)
{
  v5 = sub_1000BC4D4(&unk_1016B29E0, &unk_1013B70E0);
  __chkstk_darwin(v5 - 8);
  v7 = &v16 - v6;
  v8 = type metadata accessor for BeaconNamingRecord(0);
  __chkstk_darwin(v8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1) == 1)
  {
    sub_10000B3A8(a1, &unk_1016B29E0, &unk_1013B70E0);
    sub_1001E5500(a2, type metadata accessor for BeaconNamingRecord, type metadata accessor for BeaconNamingRecord, sub_100AF9C74, sub_10100C788, v7);
    v12 = type metadata accessor for UUID();
    (*(*(v12 - 8) + 8))(a2, v12);
    return sub_10000B3A8(v7, &unk_1016B29E0, &unk_1013B70E0);
  }

  else
  {
    sub_100038E0C(a1, v10, type metadata accessor for BeaconNamingRecord);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v2;
    sub_1010009CC(v10, a2, isUniquelyReferenced_nonNull_native);
    v15 = type metadata accessor for UUID();
    result = (*(*(v15 - 8) + 8))(a2, v15);
    *v2 = v17;
  }

  return result;
}

uint64_t sub_1001E0860(uint64_t a1, uint64_t a2)
{
  v5 = sub_1000BC4D4(&unk_1016AF8C0, &unk_1013A07A0);
  __chkstk_darwin(v5 - 8);
  v7 = &v16 - v6;
  v8 = type metadata accessor for BeaconProductInfoRecord(0);
  __chkstk_darwin(v8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1) == 1)
  {
    sub_10000B3A8(a1, &unk_1016AF8C0, &unk_1013A07A0);
    sub_1001E5500(a2, type metadata accessor for BeaconProductInfoRecord, type metadata accessor for BeaconProductInfoRecord, sub_100AF9C8C, sub_10100C7C4, v7);
    v12 = type metadata accessor for UUID();
    (*(*(v12 - 8) + 8))(a2, v12);
    return sub_10000B3A8(v7, &unk_1016AF8C0, &unk_1013A07A0);
  }

  else
  {
    sub_100038E0C(a1, v10, type metadata accessor for BeaconProductInfoRecord);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v2;
    sub_101000C38(v10, a2, isUniquelyReferenced_nonNull_native);
    v15 = type metadata accessor for UUID();
    result = (*(*(v15 - 8) + 8))(a2, v15);
    *v2 = v17;
  }

  return result;
}

uint64_t sub_1001E0AD0(uint64_t a1, uint64_t a2)
{
  v5 = sub_1000BC4D4(&qword_1016AA4E0, &unk_1013BD0E0);
  __chkstk_darwin(v5 - 8);
  v7 = &v16 - v6;
  v8 = sub_1000BC4D4(&qword_1016998D0, &unk_1013931A0);
  __chkstk_darwin(v8);
  v10 = &v16 - v9;
  if ((*(v11 + 48))(a1, 1) == 1)
  {
    sub_10000B3A8(a1, &qword_1016AA4E0, &unk_1013BD0E0);
    sub_1001E56C0(a2, &qword_1016998D0, &unk_1013931A0, sub_100AF9CA4, sub_10100C800, v7);
    v12 = type metadata accessor for UUID();
    (*(*(v12 - 8) + 8))(a2, v12);
    return sub_10000B3A8(v7, &qword_1016AA4E0, &unk_1013BD0E0);
  }

  else
  {
    sub_1000D2AD8(a1, v10, &qword_1016998D0, &unk_1013931A0);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v2;
    sub_101000EA4(v10, a2, isUniquelyReferenced_nonNull_native);
    v15 = type metadata accessor for UUID();
    result = (*(*(v15 - 8) + 8))(a2, v15);
    *v2 = v17;
  }

  return result;
}

uint64_t sub_1001E0D2C(uint64_t a1, uint64_t a2)
{
  v5 = sub_1000BC4D4(&qword_101699860, &qword_1013A34D0);
  __chkstk_darwin(v5 - 8);
  v7 = &v16 - v6;
  v8 = type metadata accessor for Device();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v9 + 48))(a1, 1, v8) == 1)
  {
    sub_10000B3A8(a1, &qword_101699860, &qword_1013A34D0);
    sub_1001E5884(a2, v7);
    v12 = type metadata accessor for UUID();
    (*(*(v12 - 8) + 8))(a2, v12);
    return sub_10000B3A8(v7, &qword_101699860, &qword_1013A34D0);
  }

  else
  {
    (*(v9 + 32))(v11, a1, v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v2;
    sub_101000EDC(v11, a2, isUniquelyReferenced_nonNull_native);
    v15 = type metadata accessor for UUID();
    result = (*(*(v15 - 8) + 8))(a2, v15);
    *v2 = v17;
  }

  return result;
}

uint64_t sub_1001E0F58(uint64_t a1, uint64_t a2)
{
  v5 = sub_1000BC4D4(&qword_101699898, &qword_101392018);
  __chkstk_darwin(v5 - 8);
  v7 = &v16 - v6;
  v8 = sub_1000BC4D4(&qword_1016998A0, &unk_1013D68B0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v16 - v10;
  if ((*(v9 + 48))(a1, 1, v8) == 1)
  {
    sub_10000B3A8(a1, &qword_101699898, &qword_101392018);
    sub_1001E5E40(a2, &qword_1016998A0, &unk_1013D68B0, sub_100AF9EB4, sub_10100D1A8, v7);
    v12 = type metadata accessor for UUID();
    (*(*(v12 - 8) + 8))(a2, v12);
    return sub_10000B3A8(v7, &qword_101699898, &qword_101392018);
  }

  else
  {
    (*(v9 + 32))(v11, a1, v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v2;
    sub_101001164(v11, a2, isUniquelyReferenced_nonNull_native);
    v15 = type metadata accessor for UUID();
    result = (*(*(v15 - 8) + 8))(a2, v15);
    *v2 = v17;
  }

  return result;
}

uint64_t sub_1001E11C4(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    sub_10000A748(a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v2;
    sub_101001188(v9, a2, isUniquelyReferenced_nonNull_native);
    v5 = type metadata accessor for UUID();
    result = (*(*(v5 - 8) + 8))(a2, v5);
    *v2 = v8;
  }

  else
  {
    sub_1001E5A24(a2, sub_100031694, sub_100B27F74, sub_10100D1F0, v9);
    v7 = type metadata accessor for UUID();
    result = (*(*(v7 - 8) + 8))(a2, v7);
    if (v9[3])
    {
      return sub_100007BAC(v9);
    }
  }

  return result;
}

uint64_t sub_1001E1300(uint64_t a1, uint64_t a2)
{
  v5 = sub_1000BC4D4(&qword_1016998B0, &qword_101392020);
  __chkstk_darwin(v5 - 8);
  v7 = &v16 - v6;
  v8 = sub_1000BC4D4(&qword_1016C30B0, &qword_1013E4770);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v16 - v10;
  if ((*(v9 + 48))(a1, 1, v8) == 1)
  {
    sub_10000B3A8(a1, &qword_1016998B0, &qword_101392020);
    sub_1001E5E40(a2, &qword_1016C30B0, &qword_1013E4770, sub_100AF9EC8, sub_10100D1CC, v7);
    v12 = type metadata accessor for UUID();
    (*(*(v12 - 8) + 8))(a2, v12);
    return sub_10000B3A8(v7, &qword_1016998B0, &qword_101392020);
  }

  else
  {
    (*(v9 + 32))(v11, a1, v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v2;
    sub_1010013BC(v11, a2, isUniquelyReferenced_nonNull_native);
    v15 = type metadata accessor for UUID();
    result = (*(*(v15 - 8) + 8))(a2, v15);
    *v2 = v17;
  }

  return result;
}

uint64_t sub_1001E156C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_1010018A8(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v15;
  }

  else
  {
    v10 = sub_100771D58(a2, a3);
    v12 = v11;

    if (v12)
    {
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v4;
      v16 = *v4;
      if (!v13)
      {
        sub_10100DA34();
        v14 = v16;
      }

      result = sub_100AFA690(v10, v14);
      *v4 = v14;
    }
  }

  return result;
}

uint64_t sub_1001E1664(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_101001A44(a1, a2, isUniquelyReferenced_nonNull_native);
    v7 = type metadata accessor for UUID();
    result = (*(*(v7 - 8) + 8))(a2, v7);
    *v2 = v20;
  }

  else
  {
    v9 = sub_1000210EC(a2);
    if (v10)
    {
      v11 = v9;
      v12 = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v2;
      v21 = *v3;
      if (!v12)
      {
        sub_10100DBCC();
        v13 = v21;
      }

      v14 = *(v13 + 48);
      v15 = type metadata accessor for UUID();
      v16 = *(v15 - 8);
      v17 = *(v16 + 8);
      v17(v14 + *(v16 + 72) * v11, v15);

      sub_100B27F6C(v11, v13);
      result = (v17)(a2, v15);
      *v3 = v13;
    }

    else
    {
      v18 = type metadata accessor for UUID();
      v19 = *(*(v18 - 8) + 8);

      return v19(a2, v18);
    }
  }

  return result;
}

uint64_t sub_1001E1824(uint64_t a1, uint64_t a2)
{
  v5 = sub_1000BC4D4(&qword_101699890, &qword_101392010);
  __chkstk_darwin(v5 - 8);
  v7 = &v16 - v6;
  v8 = type metadata accessor for BeaconScanner.AISLookupState(0);
  __chkstk_darwin(v8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1) == 1)
  {
    sub_10000B3A8(a1, &qword_101699890, &qword_101392010);
    sub_1001E5C98(v7, a2);
    v12 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
    (*(*(v12 - 8) + 8))(a2, v12);
    return sub_10000B3A8(v7, &qword_101699890, &qword_101392010);
  }

  else
  {
    sub_100038E0C(a1, v10, type metadata accessor for BeaconScanner.AISLookupState);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v2;
    sub_101001CC4(v10, a2, isUniquelyReferenced_nonNull_native);
    v15 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
    result = (*(*(v15 - 8) + 8))(a2, v15);
    *v2 = v17;
  }

  return result;
}

uint64_t sub_1001E1A5C(uint64_t a1, uint64_t a2)
{
  v5 = sub_1000BC4D4(&qword_101699880, &qword_1013F52E0);
  __chkstk_darwin(v5 - 8);
  v7 = &v16 - v6;
  v8 = sub_1000BC4D4(&qword_101699888, &unk_1013D68A0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v16 - v10;
  if ((*(v9 + 48))(a1, 1, v8) == 1)
  {
    sub_10000B3A8(a1, &qword_101699880, &qword_1013F52E0);
    sub_1001E5E40(a2, &qword_101699888, &unk_1013D68A0, sub_100AFAB88, sub_10100DF20, v7);
    v12 = type metadata accessor for UUID();
    (*(*(v12 - 8) + 8))(a2, v12);
    return sub_10000B3A8(v7, &qword_101699880, &qword_1013F52E0);
  }

  else
  {
    (*(v9 + 32))(v11, a1, v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v2;
    sub_101001EA0(v11, a2, isUniquelyReferenced_nonNull_native);
    v15 = type metadata accessor for UUID();
    result = (*(*(v15 - 8) + 8))(a2, v15);
    *v2 = v17;
  }

  return result;
}

uint64_t sub_1001E1CC8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_101001ED8(a1, a2, isUniquelyReferenced_nonNull_native);
    v7 = type metadata accessor for UUID();
    result = (*(*(v7 - 8) + 8))(a2, v7);
    *v2 = v20;
  }

  else
  {
    v9 = sub_1000210EC(a2);
    if (v10)
    {
      v11 = v9;
      v12 = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v2;
      v21 = *v3;
      if (!v12)
      {
        sub_10100E40C();
        v13 = v21;
      }

      v14 = *(v13 + 48);
      v15 = type metadata accessor for UUID();
      v16 = *(v15 - 8);
      v17 = *(v16 + 8);
      v17(v14 + *(v16 + 72) * v11, v15);

      sub_100B27F6C(v11, v13);
      result = (v17)(a2, v15);
      *v3 = v13;
    }

    else
    {
      v18 = type metadata accessor for UUID();
      v19 = *(*(v18 - 8) + 8);

      return v19(a2, v18);
    }
  }

  return result;
}

uint64_t sub_1001E1E88(uint64_t a1, uint64_t a2)
{
  v5 = sub_1000BC4D4(&qword_101699878, &qword_101392008);
  __chkstk_darwin(v5 - 8);
  v7 = &v16 - v6;
  updated = type metadata accessor for AccessoryFirmwareUpdateStateInfo(0);
  __chkstk_darwin(updated);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1) == 1)
  {
    sub_10000B3A8(a1, &qword_101699878, &qword_101392008);
    sub_1001E5500(a2, type metadata accessor for AccessoryFirmwareUpdateStateInfo, type metadata accessor for AccessoryFirmwareUpdateStateInfo, sub_100AFAEE0, sub_10100EB08, v7);
    v12 = type metadata accessor for UUID();
    (*(*(v12 - 8) + 8))(a2, v12);
    return sub_10000B3A8(v7, &qword_101699878, &qword_101392008);
  }

  else
  {
    sub_100038E0C(a1, v10, type metadata accessor for AccessoryFirmwareUpdateStateInfo);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v2;
    sub_1010025A4(v10, a2, isUniquelyReferenced_nonNull_native);
    v15 = type metadata accessor for UUID();
    result = (*(*(v15 - 8) + 8))(a2, v15);
    *v2 = v17;
  }

  return result;
}

uint64_t sub_1001E20F8(uint64_t a1, uint64_t a2)
{
  v5 = sub_1000BC4D4(&qword_1016998E8, &qword_101392038);
  __chkstk_darwin(v5 - 8);
  v7 = &v16 - v6;
  updated = type metadata accessor for AccessoryFirmwareUpdateCommandInfo(0);
  __chkstk_darwin(updated);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1) == 1)
  {
    sub_10000B3A8(a1, &qword_1016998E8, &qword_101392038);
    sub_1001E5500(a2, type metadata accessor for AccessoryFirmwareUpdateCommandInfo, type metadata accessor for AccessoryFirmwareUpdateCommandInfo, sub_100AFAEF8, sub_10100EB44, v7);
    v12 = type metadata accessor for UUID();
    (*(*(v12 - 8) + 8))(a2, v12);
    return sub_10000B3A8(v7, &qword_1016998E8, &qword_101392038);
  }

  else
  {
    sub_100038E0C(a1, v10, type metadata accessor for AccessoryFirmwareUpdateCommandInfo);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v2;
    sub_101002810(v10, a2, isUniquelyReferenced_nonNull_native);
    v15 = type metadata accessor for UUID();
    result = (*(*(v15 - 8) + 8))(a2, v15);
    *v2 = v17;
  }

  return result;
}

uint64_t sub_1001E23E8(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, uint64_t), void (*a4)(uint64_t, uint64_t), void (*a5)(void))
{
  v6 = v5;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v5;
    a3(a1, a2, isUniquelyReferenced_nonNull_native);
    result = sub_1000296A4(a2, type metadata accessor for BeaconKeyManager.FileKey);
    *v5 = v21;
  }

  else
  {
    v14 = sub_100772AE4(a2);
    if (v15)
    {
      v16 = v14;
      v17 = swift_isUniquelyReferenced_nonNull_native();
      v18 = *v5;
      v22 = *v6;
      if (!v17)
      {
        a5();
        v18 = v22;
      }

      v19 = *(v18 + 48);
      v20 = type metadata accessor for BeaconKeyManager.FileKey(0);
      sub_1000296A4(v19 + *(*(v20 - 8) + 72) * v16, type metadata accessor for BeaconKeyManager.FileKey);

      a4(v16, v18);
      result = sub_1000296A4(a2, type metadata accessor for BeaconKeyManager.FileKey);
      *v6 = v18;
    }

    else
    {
      return sub_1000296A4(a2, type metadata accessor for BeaconKeyManager.FileKey);
    }
  }

  return result;
}

uint64_t sub_1001E2590(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, uint64_t), void (*a4)(uint64_t, uint64_t), void (*a5)(void))
{
  v6 = v5;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v5;
    a3(a1, a2, isUniquelyReferenced_nonNull_native);
    v11 = type metadata accessor for UUID();
    result = (*(*(v11 - 8) + 8))(a2, v11);
    *v5 = v26;
  }

  else
  {
    v15 = sub_1000210EC(a2);
    if (v16)
    {
      v17 = v15;
      v18 = swift_isUniquelyReferenced_nonNull_native();
      v19 = *v5;
      v27 = *v6;
      if (!v18)
      {
        a5();
        v19 = v27;
      }

      v20 = *(v19 + 48);
      v21 = type metadata accessor for UUID();
      v22 = *(v21 - 8);
      v23 = *(v22 + 8);
      v23(v20 + *(v22 + 72) * v17, v21);

      a4(v17, v19);
      result = (v23)(a2, v21);
      *v6 = v19;
    }

    else
    {
      v24 = type metadata accessor for UUID();
      v25 = *(*(v24 - 8) + 8);

      return v25(a2, v24);
    }
  }

  return result;
}

uint64_t sub_1001E2774(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_101002EC0(a1, a2, isUniquelyReferenced_nonNull_native);
    v7 = type metadata accessor for UUID();
    result = (*(*(v7 - 8) + 8))(a2, v7);
    *v2 = v20;
  }

  else
  {
    v9 = sub_1000210EC(a2);
    if (v10)
    {
      v11 = v9;
      v12 = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v2;
      v21 = *v3;
      if (!v12)
      {
        sub_10100F98C();
        v13 = v21;
      }

      v14 = *(v13 + 48);
      v15 = type metadata accessor for UUID();
      v16 = *(v15 - 8);
      v17 = *(v16 + 8);
      v17(v14 + *(v16 + 72) * v11, v15);

      sub_100B27F6C(v11, v13);
      result = (v17)(a2, v15);
      *v3 = v13;
    }

    else
    {
      v18 = type metadata accessor for UUID();
      v19 = *(*(v18 - 8) + 8);

      return v19(a2, v18);
    }
  }

  return result;
}

uint64_t sub_1001E2934(char a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a2)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v4;
    sub_101002ED4(a1 & 1, a2, a3, isUniquelyReferenced_nonNull_native);
    v9 = type metadata accessor for UUID();
    result = (*(*(v9 - 8) + 8))(a3, v9);
    *v4 = v22;
  }

  else
  {
    v11 = sub_1000210EC(a3);
    if (v12)
    {
      v13 = v11;
      v14 = swift_isUniquelyReferenced_nonNull_native();
      v15 = *v3;
      v23 = *v4;
      if (!v14)
      {
        sub_10100FC30();
        v15 = v23;
      }

      v16 = *(v15 + 48);
      v17 = type metadata accessor for UUID();
      v18 = *(v17 - 8);
      v19 = *(v18 + 8);
      v19(v16 + *(v18 + 72) * v13, v17);

      sub_100AF97C0(v13, v15);
      result = (v19)(a3, v17);
      *v4 = v15;
    }

    else
    {
      v20 = type metadata accessor for UUID();
      v21 = *(*(v20 - 8) + 8);

      return v21(a3, v20);
    }
  }

  return result;
}

unint64_t sub_1001E2B00(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1016083F0, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1001E2B68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return == infix<A>(_:_:)(a1, a2, a3, WitnessTable, &protocol witness table for String);
}

uint64_t sub_1001E2BDC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return RawRepresentable<>.hashValue.getter(a1, a2, WitnessTable, &protocol witness table for String);
}

uint64_t sub_1001E2C48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return RawRepresentable<>.hash(into:)(a1, a2, a3, WitnessTable, &protocol witness table for String);
}

uint64_t sub_1001E2CB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return RawRepresentable<>._rawHashValue(seed:)(a1, a2, a3, WitnessTable, &protocol witness table for String);
}

unint64_t sub_1001E2D28@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1001E2B00(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1001E2D58@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1001E2B50(*v1);
  *a1 = result;
  a1[1] = 0xE100000000000000;
  return result;
}

unint64_t sub_1001E2DA8@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_1001E2B4C(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1001E2DD0@<X0>(_BYTE *a2@<X8>)
{
  result = sub_1001E61B0();
  *a2 = result;
  return result;
}

uint64_t sub_1001E2DFC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.description.getter(a1, WitnessTable);
}

uint64_t sub_1001E2E50(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.debugDescription.getter(a1, WitnessTable);
}

Swift::Int Message.MessageError.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1 & 1);
  return Hasher._finalize()();
}

Swift::Int sub_1001E2F40(uint64_t a1)
{
  Hasher.init(_seed:)();
  Message.MessageError.hash(into:)(v3, *v1);
  return Hasher._finalize()();
}

uint64_t SessionMessage.identifier.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 40);
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t SessionMessage.init<A>(type:version:payload:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v41 = a7;
  v43 = a3;
  v14 = type metadata accessor for CodingUserInfoKey();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = *(a4 - 8);
  v45 = a1;
  v18 = a1;
  v19 = a4;
  (*(v44 + 16))(a8, v18, a4);
  v21 = type metadata accessor for SessionMessage(0, a4, a6, v20);
  *(a8 + *(v21 + 36)) = a2;
  v22 = *(v21 + 40);
  v46 = a8;
  v39 = v21;
  v40 = v22;
  UUID.init()();
  type metadata accessor for PropertyListEncoder();
  swift_allocObject();
  PropertyListEncoder.init()();
  if (qword_1016954E0 != -1)
  {
    swift_once();
  }

  v23 = sub_1000076D4(v14, static CodingUserInfoKey.messagingCoder);
  (*(v15 + 16))(v17, v23, v14);
  v48[3] = &type metadata for Bool;
  LOBYTE(v48[0]) = 1;
  v24 = dispatch thunk of PropertyListEncoder.userInfo.modify();
  sub_1001DDE00(v48, v17);
  v24(v47, 0);
  sub_1001E40AC(a5, a5);
  v25 = *(a5 - 8);
  swift_allocObject();
  v26 = static Array._adoptStorage(_:count:)();
  v27 = v43;
  (*(v25 + 16))(v28, v43, a5);
  type metadata accessor for Array();
  v48[0] = v26;
  v48[5] = v41;
  swift_getWitnessTable();
  v29 = v42;
  v30 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  if (v29)
  {

    (*(v25 + 8))(v27, a5);
    v32 = *(v44 + 8);
    v32(v45, v19);

    v33 = v46;
    v32(v46, v19);
    v34 = type metadata accessor for UUID();
    return (*(*(v34 - 8) + 8))(v33 + v40, v34);
  }

  else
  {
    v36 = v30;
    v37 = v31;

    (*(v25 + 8))(v27, a5);
    (*(v44 + 8))(v45, v19);

    v38 = (v46 + *(v39 + 44));
    *v38 = v36;
    v38[1] = v37;
  }

  return result;
}

uint64_t SessionMessage.extract<A>()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v20 = a4;
  v8 = type metadata accessor for Optional();
  v19 = *(v8 - 8);
  __chkstk_darwin(v8);
  v21 = &v17 - v9;
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  PropertyListDecoder.init()();
  type metadata accessor for Array();
  v22 = a3;
  swift_getWitnessTable();
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();

  if (!v4)
  {
    v17 = v8;
    v18 = a1;
    v11 = v19;
    v12 = v20;
    swift_getWitnessTable();
    v13 = v21;
    Collection.first.getter();
    v14 = *(a2 - 8);
    if ((*(v14 + 48))(v13, 1, a2) == 1)
    {
      (*(v11 + 8))(v13, v17);

      type metadata accessor for SessionMessage.MessageError(0, *(v18 + 16), *(v18 + 24), v15);
      swift_getWitnessTable();
      swift_allocError();
      *v16 = 0;
      return swift_willThrow();
    }

    else
    {
      (*(v14 + 32))(v12, v13, a2);
    }
  }

  return result;
}

uint64_t SessionMessage.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v18[0] = a2;
  v18[1] = v5;
  type metadata accessor for SessionMessage.CodingKeys(255, v5, v6, a4);
  swift_getWitnessTable();
  v7 = type metadata accessor for KeyedEncodingContainer();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v18 - v9;
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v19) = 0;
  v11 = v18[2];
  v12 = v10;
  v13 = v18[3];
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v13)
  {
    return (*(v8 + 8))(v10, v7);
  }

  v15 = v18[0];
  LOBYTE(v19) = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  LOBYTE(v19) = 2;
  type metadata accessor for UUID();
  sub_1000096E8(&qword_101698330, &protocol conformance descriptor for UUID);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  v16 = (v11 + *(v15 + 44));
  v17 = v16[1];
  v19 = *v16;
  v20 = v17;
  v21 = 3;
  sub_100017D5C(v19, v17);
  sub_1000E3190();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  sub_100016590(v19, v20);
  return (*(v8 + 8))(v12, v7);
}

uint64_t SessionMessage.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v33 = a4;
  v7 = type metadata accessor for UUID();
  v35 = *(v7 - 8);
  v36 = v7;
  v8 = __chkstk_darwin(v7);
  v34 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = *(a2 - 8);
  __chkstk_darwin(v8);
  v41 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SessionMessage.CodingKeys(255, a2, a3, v11);
  swift_getWitnessTable();
  v40 = type metadata accessor for KeyedDecodingContainer();
  v37 = *(v40 - 8);
  __chkstk_darwin(v40);
  v13 = &v30 - v12;
  v39 = a3;
  v15 = type metadata accessor for SessionMessage(0, a2, a3, v14);
  v32 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v30 - v16;
  sub_1000035D0(a1, a1[3]);
  v42 = v13;
  v18 = v43;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v18)
  {
    return sub_100007BAC(a1);
  }

  v19 = v37;
  v20 = v38;
  v31 = v17;
  LOBYTE(v44) = 0;
  v21 = v40;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v22 = *(v20 + 32);
  v23 = v31;
  v22(v31, v41, a2);
  LOBYTE(v44) = 1;
  v24 = KeyedDecodingContainer.decode(_:forKey:)();
  v41 = v15;
  *&v23[*(v15 + 36)] = v24;
  LOBYTE(v44) = 2;
  sub_1000096E8(&qword_101698300, &protocol conformance descriptor for UUID);
  v25 = v36;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v43 = a1;
  v26 = v41;
  (*(v35 + 32))(&v31[*(v41 + 10)], v34, v25);
  v45 = 3;
  sub_1000E307C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v19 + 8))(v42, v21);
  v28 = v31;
  v27 = v32;
  *&v31[*(v26 + 11)] = v44;
  (*(v27 + 16))(v33, v28, v26);
  sub_100007BAC(v43);
  return (*(v27 + 8))(v28, v26);
}

uint64_t SessionMessage.description.getter(uint64_t a1)
{
  _StringGuts.grow(_:)(65);
  v1._object = 0x800000010134D260;
  v1._countAndFlagsBits = 0xD000000000000015;
  String.append(_:)(v1);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v2._countAndFlagsBits = 0x6F6973726576202CLL;
  v2._object = 0xEB00000000203A6ELL;
  String.append(_:)(v2);
  v3._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v3);

  v4._countAndFlagsBits = 0x69746E656469202CLL;
  v4._object = 0xEE00203A72656966;
  String.append(_:)(v4);
  type metadata accessor for UUID();
  sub_1000096E8(&qword_101696930, &protocol conformance descriptor for UUID);
  v5._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v5);

  v6._countAndFlagsBits = 0x64616F6C79617020;
  v6._object = 0xEA0000000000203ALL;
  String.append(_:)(v6);
  v7._countAndFlagsBits = Data.description.getter();
  String.append(_:)(v7);

  v8._countAndFlagsBits = 41;
  v8._object = 0xE100000000000000;
  String.append(_:)(v8);
  return 0;
}

uint64_t sub_1001E40AC(uint64_t a1, uint64_t a2)
{
  if (swift_isClassType() && a2)
  {

    return sub_1000BC4D4(&unk_10169BAE0, &unk_10138C430);
  }

  else
  {

    return type metadata accessor for _ContiguousArrayStorage(0, a2);
  }
}

uint64_t sub_1001E4174(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for UUID();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1001E420C(int *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v27 = *(v5 - 8);
  v6 = *(v27 + 84);
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(v27 + 64);
  if (v9 <= v6)
  {
    v11 = v6;
  }

  else
  {
    v11 = *(v8 + 84);
  }

  v12 = *(v8 + 80);
  if (v11 <= 0xC)
  {
    v11 = 12;
  }

  if (!a2)
  {
    return 0;
  }

  v13 = *(*(v7 - 8) + 64) + 7;
  if (v11 >= a2)
  {
    goto LABEL_29;
  }

  v14 = ((v13 + ((v12 + ((v10 + 7) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v12)) & 0xFFFFFFFFFFFFFFF8) + 16;
  v15 = v14 & 0xFFFFFFF8;
  if ((v14 & 0xFFFFFFF8) != 0)
  {
    v16 = 2;
  }

  else
  {
    v16 = a2 - v11 + 1;
  }

  if (v16 >= 0x10000)
  {
    v17 = 4;
  }

  else
  {
    v17 = 2;
  }

  if (v16 < 0x100)
  {
    v17 = 1;
  }

  if (v16 >= 2)
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  if (v18 > 1)
  {
    if (v18 == 2)
    {
      v19 = *(a1 + v14);
      if (!v19)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v19 = *(a1 + v14);
      if (!v19)
      {
        goto LABEL_29;
      }
    }

LABEL_26:
    v21 = v19 - 1;
    if (v15)
    {
      v21 = 0;
      v22 = *a1;
    }

    else
    {
      v22 = 0;
    }

    return v11 + (v22 | v21) + 1;
  }

  if (v18)
  {
    v19 = *(a1 + v14);
    if (v19)
    {
      goto LABEL_26;
    }
  }

LABEL_29:
  if (v6 == v11)
  {
    v23 = *(v27 + 48);

    return v23(a1, v6, v5);
  }

  else
  {
    v24 = (((a1 + v10 + 7) & 0xFFFFFFFFFFFFFFF8) + v12 + 8) & ~v12;
    if (v9 == v11)
    {
      v25 = *(v8 + 48);

      return v25(v24);
    }

    else
    {
      v26 = *(((v13 + v24) & 0xFFFFFFFFFFFFFFF8) + 8) >> 60;
      if (((4 * v26) & 0xC) != 0)
      {
        return 16 - ((4 * v26) & 0xC | (v26 >> 2));
      }

      else
      {
        return 0;
      }
    }
  }
}

void sub_1001E4490(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v26 = *(v7 - 8);
  v8 = *(v26 + 84);
  v9 = *(type metadata accessor for UUID() - 8);
  v10 = *(v9 + 84);
  v11 = *(v26 + 64);
  if (v10 <= v8)
  {
    v12 = v8;
  }

  else
  {
    v12 = *(v9 + 84);
  }

  v13 = *(v9 + 80);
  if (v12 <= 0xC)
  {
    v12 = 12;
  }

  v14 = *(v9 + 64) + 7;
  v15 = ((v14 + ((v13 + ((v11 + 7) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v13)) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v12 >= a3)
  {
    v18 = 0;
    v19 = a2 - v12;
    if (a2 <= v12)
    {
      goto LABEL_19;
    }
  }

  else
  {
    if (((v14 + ((v13 + ((v11 + 7) & 0xFFFFFFF8) + 8) & ~v13)) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v16 = a3 - v12 + 1;
    }

    else
    {
      v16 = 2;
    }

    if (v16 >= 0x10000)
    {
      v17 = 4;
    }

    else
    {
      v17 = 2;
    }

    if (v16 < 0x100)
    {
      v17 = 1;
    }

    if (v16 >= 2)
    {
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }

    v19 = a2 - v12;
    if (a2 <= v12)
    {
LABEL_19:
      if (v18 > 1)
      {
        if (v18 != 2)
        {
          *(a1 + v15) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_35;
        }

        *(a1 + v15) = 0;
      }

      else if (v18)
      {
        *(a1 + v15) = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_35;
      }

      if (!a2)
      {
        return;
      }

LABEL_35:
      if (v8 == v12)
      {
        v22 = *(v26 + 56);

        v22(a1, a2, v8, v7);
      }

      else
      {
        v23 = (((a1 + v11 + 7) & 0xFFFFFFFFFFFFFFF8) + v13 + 8) & ~v13;
        if (v10 == v12)
        {
          v24 = *(v9 + 56);

          v24(v23, a2);
        }

        else
        {
          v25 = ((v14 + v23) & 0xFFFFFFFFFFFFFFF8);
          if (a2 > 0xC)
          {
            *v25 = (a2 - 13);
            v25[1] = 0;
          }

          else
          {
            *v25 = 0;
            v25[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
          }
        }
      }

      return;
    }
  }

  if (((v14 + ((v13 + ((v11 + 7) & 0xFFFFFFF8) + 8) & ~v13)) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v20 = v19;
  }

  else
  {
    v20 = 1;
  }

  if (((v14 + ((v13 + ((v11 + 7) & 0xFFFFFFF8) + 8) & ~v13)) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v21 = ~v12 + a2;
    bzero(a1, ((v14 + ((v13 + ((v11 + 7) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v13)) & 0xFFFFFFFFFFFFFFF8) + 16);
    *a1 = v21;
  }

  if (v18 > 1)
  {
    if (v18 == 2)
    {
      *(a1 + v15) = v20;
    }

    else
    {
      *(a1 + v15) = v20;
    }
  }

  else if (v18)
  {
    *(a1 + v15) = v20;
  }
}

uint64_t sub_1001E47B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_100771E30(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v20 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1010052E8();
      v10 = v20;
    }

    sub_100016590(*(*(v10 + 48) + 16 * v8), *(*(v10 + 48) + 16 * v8 + 8));
    v11 = *(v10 + 56);
    v12 = sub_1000BC4D4(&qword_1016A40D0, &unk_10138BE70);
    v19 = *(v12 - 8);
    sub_1000D2AD8(v11 + *(v19 + 72) * v8, a3, &qword_1016A40D0, &unk_10138BE70);
    sub_100AF6518(v8, v10);
    *v4 = v10;
    v13 = *(v19 + 56);
    v14 = a3;
    v15 = 0;
    v16 = v12;
  }

  else
  {
    v17 = sub_1000BC4D4(&qword_1016A40D0, &unk_10138BE70);
    v13 = *(*(v17 - 8) + 56);
    v16 = v17;
    v14 = a3;
    v15 = 1;
  }

  return v13(v14, v15, 1, v16);
}

uint64_t sub_1001E4940@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t (*a4)(void)@<X3>, void (*a5)(uint64_t, uint64_t)@<X4>, void (*a6)(void)@<X5>, uint64_t a7@<X8>)
{
  v12 = v7;
  v14 = sub_100771E30(a1, a2);
  if (v15)
  {
    v16 = v14;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v7;
    v28 = *v12;
    if (!isUniquelyReferenced_nonNull_native)
    {
      a6();
      v18 = v28;
    }

    sub_100016590(*(*(v18 + 48) + 16 * v16), *(*(v18 + 48) + 16 * v16 + 8));
    v19 = *(v18 + 56);
    v20 = a3(0);
    v27 = *(v20 - 8);
    sub_100038E0C(v19 + *(v27 + 72) * v16, a7, a4);
    a5(v16, v18);
    *v12 = v18;
    v21 = *(v27 + 56);
    v22 = a7;
    v23 = 0;
    v24 = v20;
  }

  else
  {
    v25 = a3(0);
    v21 = *(*(v25 - 8) + 56);
    v24 = v25;
    v22 = a7;
    v23 = 1;
  }

  return v21(v22, v23, 1, v24);
}

uint64_t sub_1001E4AC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_1000210EC(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_101005D44();
      v9 = v21;
    }

    v10 = *(v9 + 48);
    v11 = type metadata accessor for UUID();
    v12 = *(v11 - 8);
    v20 = v12;
    v13 = *(v12 + 72) * v7;
    (*(v12 + 8))(v10 + v13, v11);
    (*(v20 + 32))(a2, *(v9 + 56) + v13, v11);
    sub_100AF6F44(v7, v9);
    *v3 = v9;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v11;
  }

  else
  {
    v18 = type metadata accessor for UUID();
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

double sub_1001E4C5C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = sub_100771D58(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_10100600C();
      v10 = v12;
    }

    sub_10004D07C((*(v10 + 56) + 32 * v8), a3);
    sub_100AF7244(v8, v10);
    *v4 = v10;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

double sub_1001E4D00@<D0>(_OWORD *a1@<X8>, uint64_t a2@<X0>)
{
  v3 = v2;
  v5 = sub_100771F94(a2);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v13 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_101006034();
      v9 = v13;
    }

    v10 = *(v9 + 48);
    v11 = type metadata accessor for CodingUserInfoKey();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    sub_10004D07C((*(v9 + 56) + 32 * v7), a1);
    sub_100AF73F4(v7, v9);
    *v3 = v9;
  }

  else
  {
    result = 0.0;
    *a1 = 0u;
    a1[1] = 0u;
  }

  return result;
}

uint64_t sub_1001E4DDC@<X0>(uint64_t a1@<X8>, uint64_t a2@<X0>)
{
  v3 = v2;
  v5 = sub_100771FF8(a2);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v19 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1010062F4();
      v9 = v19;
    }

    v10 = *(v9 + 56);
    v11 = type metadata accessor for CloudKitChangeSet.TombstoneInfo(0);
    v18 = *(v11 - 8);
    sub_100038E0C(v10 + *(v18 + 72) * v7, a1, type metadata accessor for CloudKitChangeSet.TombstoneInfo);
    sub_100AF79C8(v7, v9);
    *v3 = v9;
    v12 = *(v18 + 56);
    v13 = a1;
    v14 = 0;
    v15 = v11;
  }

  else
  {
    v16 = type metadata accessor for CloudKitChangeSet.TombstoneInfo(0);
    v12 = *(*(v16 - 8) + 56);
    v15 = v16;
    v13 = a1;
    v14 = 1;
  }

  return v12(v13, v14, 1, v15);
}

uint64_t sub_1001E4F44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_100038994(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_101006B74();
      v9 = v21;
    }

    v10 = *(v9 + 48);
    v11 = type metadata accessor for BeaconIdentifier(0);
    sub_1000296A4(v10 + *(*(v11 - 8) + 72) * v7, type metadata accessor for BeaconIdentifier);
    v12 = *(v9 + 56);
    v13 = type metadata accessor for ObservedAdvertisement(0);
    v20 = *(v13 - 8);
    sub_100038E0C(v12 + *(v20 + 72) * v7, a2, type metadata accessor for ObservedAdvertisement);
    sub_100AF79E0(v7, v9);
    *v3 = v9;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = type metadata accessor for ObservedAdvertisement(0);
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

double sub_1001E50DC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_100771D58(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v14 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_101006FE8();
      v10 = v14;
    }

    v11 = (*(v10 + 56) + 48 * v8);
    v12 = v11[1];
    *a3 = *v11;
    *(a3 + 16) = v12;
    *(a3 + 26) = *(v11 + 26);
    sub_100AF7D4C(v8, v10);
    *v4 = v10;
  }

  else
  {
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 40) = -256;
  }

  return result;
}

uint64_t sub_1001E5240@<X0>(uint64_t (*a1)(void)@<X1>, uint64_t (*a2)(void)@<X2>, void (*a3)(uint64_t, uint64_t)@<X3>, void (*a4)(void)@<X4>, uint64_t a5@<X8>)
{
  v9 = v5;
  v11 = a1();
  if (v12)
  {
    v13 = v11;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v5;
    v28 = *v9;
    if (!isUniquelyReferenced_nonNull_native)
    {
      a4();
      v15 = v28;
    }

    v16 = *(v15 + 48);
    v17 = a2(0);
    v18 = v13;
    (*(*(v17 - 8) + 8))(v16 + *(*(v17 - 8) + 72) * v13, v17);
    v19 = *(v15 + 56);
    v20 = type metadata accessor for Date();
    v27 = *(v20 - 8);
    (*(v27 + 32))(a5, v19 + *(v27 + 72) * v18, v20);
    a3(v18, v15);
    *v9 = v15;
    v21 = *(v27 + 56);
    v22 = a5;
    v23 = 0;
    v24 = v20;
  }

  else
  {
    v25 = type metadata accessor for Date();
    v21 = *(*(v25 - 8) + 56);
    v24 = v25;
    v22 = a5;
    v23 = 1;
  }

  return v21(v22, v23, 1, v24);
}

double sub_1001E5408@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_1000210EC(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v16 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_10100AAF0();
      v9 = v16;
    }

    v10 = *(v9 + 48);
    v11 = type metadata accessor for UUID();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    v12 = *(v9 + 56) + 72 * v7;
    v13 = *(v12 + 48);
    *(a2 + 32) = *(v12 + 32);
    *(a2 + 48) = v13;
    *(a2 + 64) = *(v12 + 64);
    v14 = *(v12 + 16);
    *a2 = *v12;
    *(a2 + 16) = v14;
    sub_100AF92C8(v7, v9);
    *v3 = v9;
  }

  else
  {
    *(a2 + 64) = 0;
    result = 0.0;
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0u;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t sub_1001E5500@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t (*a3)(void)@<X2>, void (*a4)(uint64_t, uint64_t)@<X3>, void (*a5)(void)@<X4>, uint64_t a6@<X8>)
{
  v11 = v6;
  v13 = sub_1000210EC(a1);
  if (v14)
  {
    v15 = v13;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v6;
    v30 = *v11;
    if (!isUniquelyReferenced_nonNull_native)
    {
      a5();
      v17 = v30;
    }

    v18 = *(v17 + 48);
    v19 = type metadata accessor for UUID();
    v20 = v15;
    (*(*(v19 - 8) + 8))(v18 + *(*(v19 - 8) + 72) * v15, v19);
    v21 = *(v17 + 56);
    v22 = a2(0);
    v29 = *(v22 - 8);
    sub_100038E0C(v21 + *(v29 + 72) * v20, a6, a3);
    a4(v20, v17);
    *v11 = v17;
    v23 = *(v29 + 56);
    v24 = a6;
    v25 = 0;
    v26 = v22;
  }

  else
  {
    v27 = a2(0);
    v23 = *(*(v27 - 8) + 56);
    v26 = v27;
    v24 = a6;
    v25 = 1;
  }

  return v23(v24, v25, 1, v26);
}

uint64_t sub_1001E56C0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, void (*a4)(uint64_t, uint64_t)@<X3>, void (*a5)(void)@<X4>, uint64_t a6@<X8>)
{
  v11 = v6;
  v13 = sub_1000210EC(a1);
  if (v14)
  {
    v15 = v13;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v6;
    v30 = *v11;
    if (!isUniquelyReferenced_nonNull_native)
    {
      a5();
      v17 = v30;
    }

    v18 = *(v17 + 48);
    v19 = type metadata accessor for UUID();
    v20 = v15;
    (*(*(v19 - 8) + 8))(v18 + *(*(v19 - 8) + 72) * v15, v19);
    v21 = *(v17 + 56);
    v22 = sub_1000BC4D4(a2, a3);
    v29 = *(v22 - 8);
    sub_1000D2AD8(v21 + *(v29 + 72) * v20, a6, a2, a3);
    a4(v20, v17);
    *v11 = v17;
    v23 = *(v29 + 56);
    v24 = a6;
    v25 = 0;
    v26 = v22;
  }

  else
  {
    v27 = sub_1000BC4D4(a2, a3);
    v23 = *(*(v27 - 8) + 56);
    v26 = v27;
    v24 = a6;
    v25 = 1;
  }

  return v23(v24, v25, 1, v26);
}

uint64_t sub_1001E5884@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_1000210EC(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_10100CE10();
      v9 = v21;
    }

    v10 = *(v9 + 48);
    v11 = type metadata accessor for UUID();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    v12 = *(v9 + 56);
    v13 = type metadata accessor for Device();
    v20 = *(v13 - 8);
    (*(v20 + 32))(a2, v12 + *(v20 + 72) * v7, v13);
    sub_100AF9E9C(v7, v9);
    *v3 = v9;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = type metadata accessor for Device();
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

double sub_1001E5A24@<D0>(uint64_t a1@<X0>, void (*a2)(uint64_t, uint64_t)@<X1>, void (*a3)(uint64_t, uint64_t)@<X2>, void (*a4)(void)@<X3>, uint64_t a5@<X8>)
{
  v9 = v5;
  v11 = sub_1000210EC(a1);
  if (v12)
  {
    v13 = v11;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v5;
    v19 = *v9;
    if (!isUniquelyReferenced_nonNull_native)
    {
      a4();
      v15 = v19;
    }

    v16 = *(v15 + 48);
    v17 = type metadata accessor for UUID();
    (*(*(v17 - 8) + 8))(v16 + *(*(v17 - 8) + 72) * v13, v17);
    a2(*(v15 + 56) + 40 * v13, a5);
    a3(v13, v15);
    *v9 = v15;
  }

  else
  {
    *(a5 + 32) = 0;
    result = 0.0;
    *a5 = 0u;
    *(a5 + 16) = 0u;
  }

  return result;
}

double sub_1001E5B28@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = sub_1007723C0(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v13 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_10100D4B0();
      v9 = v13;
    }

    v10 = *(v9 + 48);
    v11 = type metadata accessor for MACAddress();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    *a2 = *(*(v9 + 56) + 16 * v7);
    sub_100AFA200(v7, v9);
    *v3 = v9;
  }

  else
  {
    result = 0.0;
    *a2 = xmmword_10138BBF0;
  }

  return result;
}

uint64_t sub_1001E5C04(uint64_t a1)
{
  v2 = v1;
  v3 = sub_100771C58(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  v11 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_10100D768();
    v7 = v11;
  }

  v8 = v5;
  v9 = *(*(v7 + 56) + 16 * v5);
  sub_100AFA520(v8, v7);
  *v2 = v7;
  return v9;
}

uint64_t sub_1001E5C98@<X0>(uint64_t a1@<X8>, uint64_t a2@<X0>)
{
  v3 = v2;
  v5 = sub_100772CAC(a2);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_10100DBF4();
      v9 = v21;
    }

    v10 = *(v9 + 48);
    v11 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    v12 = *(v9 + 56);
    v13 = type metadata accessor for BeaconScanner.AISLookupState(0);
    v20 = *(v13 - 8);
    sub_100038E0C(v12 + *(v20 + 72) * v7, a1, type metadata accessor for BeaconScanner.AISLookupState);
    sub_100AFA840(v7, v9);
    *v3 = v9;
    v14 = *(v20 + 56);
    v15 = a1;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = type metadata accessor for BeaconScanner.AISLookupState(0);
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a1;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

uint64_t sub_1001E5E40@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, void (*a4)(uint64_t, uint64_t)@<X3>, void (*a5)(void)@<X4>, uint64_t a6@<X8>)
{
  v11 = v6;
  v13 = sub_1000210EC(a1);
  if (v14)
  {
    v15 = v13;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v6;
    v30 = *v11;
    if (!isUniquelyReferenced_nonNull_native)
    {
      a5();
      v17 = v30;
    }

    v18 = *(v17 + 48);
    v19 = type metadata accessor for UUID();
    v20 = v15;
    (*(*(v19 - 8) + 8))(v18 + *(*(v19 - 8) + 72) * v15, v19);
    v21 = *(v17 + 56);
    v22 = sub_1000BC4D4(a2, a3);
    v29 = *(v22 - 8);
    (*(v29 + 32))(a6, v21 + *(v29 + 72) * v20, v22);
    a4(v20, v17);
    *v11 = v17;
    v23 = *(v29 + 56);
    v24 = a6;
    v25 = 0;
    v26 = v22;
  }

  else
  {
    v27 = sub_1000BC4D4(a2, a3);
    v23 = *(*(v27 - 8) + 56);
    v26 = v27;
    v24 = a6;
    v25 = 1;
  }

  return v23(v24, v25, 1, v26);
}

uint64_t sub_1001E6014@<X0>(uint64_t a1@<X8>, char *a2@<X0>)
{
  v3 = v2;
  v5 = sub_100772DDC(a2);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_10100EE0C();
      v9 = v21;
    }

    v10 = *(v9 + 48);
    v11 = type metadata accessor for ShareAttemptTracker.AttemptKey(0);
    sub_1000296A4(v10 + *(*(v11 - 8) + 72) * v7, type metadata accessor for ShareAttemptTracker.AttemptKey);
    v12 = *(v9 + 56);
    v13 = type metadata accessor for Date();
    v20 = *(v13 - 8);
    (*(v20 + 32))(a1, v12 + *(v20 + 72) * v7, v13);
    sub_100AFB260(v7, v9);
    *v3 = v9;
    v14 = *(v20 + 56);
    v15 = a1;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = type metadata accessor for Date();
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a1;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

unint64_t sub_1001E61B8(unint64_t result)
{
  if (result >> 62 == 1)
  {
  }

  if (!(result >> 62))
  {
  }

  return result;
}

uint64_t sub_1001E61D8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_1001E622C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1001E6288(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1001E62E8(uint64_t a1, void (*a2)(char *, void))
{
  v4 = sub_1000BC4D4(&qword_101699900, &qword_101411880);
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v7 = &v10 - v6;
  sub_1001E63CC(a1, &v10 - v6);
  a2(v7, v7[*(v5 + 56)]);
  v8 = type metadata accessor for URL();
  return (*(*(v8 - 8) + 8))(v7, v8);
}

uint64_t sub_1001E63CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_101699900, &qword_101411880);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001E643C(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_1016999C8, &unk_101392310);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - v7;
  sub_1000035D0(a1, a1[3]);
  sub_1001E8164();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v12) = 0;
  type metadata accessor for UUID();
  sub_1001E81B8(&qword_101698330, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v9 = type metadata accessor for KeyDropRegisterAPNSTokenRequest.KeyDropRegisterAPNSTokenContent(0);
    LOBYTE(v12) = *(v3 + v9[5]);
    v13 = 1;
    sub_1001E8200();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v12) = 2;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v12 = *(v3 + v9[7]);
    v13 = 3;
    sub_1000BC4D4(&qword_1016B0470, &qword_10138EB80);
    sub_1001E8254();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v12 = *(v3 + v9[8]);
    v13 = 4;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1001E66E8()
{
  v1 = *v0;
  v2 = 0x64496572616873;
  v3 = 0x64497265626D656DLL;
  v4 = 0x7265747369676572;
  if (v1 != 3)
  {
    v4 = 0xD000000000000010;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 1701869940;
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

uint64_t sub_1001E678C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1001E6C10(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1001E67B4(uint64_t a1)
{
  v2 = sub_1001E8164();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001E67F0(uint64_t a1)
{
  v2 = sub_1001E8164();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001E6878@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x746C75736572 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1001E68FC(uint64_t a1)
{
  v2 = sub_1001E82D0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001E6938(uint64_t a1)
{
  v2 = sub_1001E82D0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001E6974@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = sub_1000BC4D4(&qword_1016999E0, &qword_101392320);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - v7;
  sub_1000035D0(a1, a1[3]);
  sub_1001E82D0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100007BAC(a1);
  }

  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v6 + 8))(v8, v5);
  result = sub_100007BAC(a1);
  *a2 = v9 & 1;
  return result;
}

uint64_t sub_1001E6AD8(void *a1)
{
  v2 = sub_1000BC4D4(&qword_1016999F0, &qword_101392328);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - v4;
  sub_1000035D0(a1, a1[3]);
  sub_1001E82D0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1001E6C10(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64496572616873 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x64497265626D656DLL && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7265747369676572 && a2 == 0xEE00736E656B6F54 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x800000010134D2C0 == a2)
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

uint64_t sub_1001E6DD0(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 112) = a5;
  *(v6 + 120) = v5;
  *(v6 + 96) = a3;
  *(v6 + 104) = a4;
  *(v6 + 304) = a2;
  *(v6 + 88) = a1;
  v7 = type metadata accessor for P256.Signing.PrivateKey();
  *(v6 + 128) = v7;
  *(v6 + 136) = *(v7 - 8);
  *(v6 + 144) = swift_task_alloc();
  v8 = type metadata accessor for P256.Signing.ECDSASignature();
  *(v6 + 152) = v8;
  *(v6 + 160) = *(v8 - 8);
  *(v6 + 168) = swift_task_alloc();
  *(v6 + 176) = type metadata accessor for KeyDropRegisterAPNSTokenRequest.KeyDropRegisterAPNSTokenContent(0);
  *(v6 + 184) = swift_task_alloc();
  v9 = type metadata accessor for JSONEncoder.DateEncodingStrategy();
  *(v6 + 192) = v9;
  *(v6 + 200) = *(v9 - 8);
  *(v6 + 208) = swift_task_alloc();
  *(v6 + 216) = type metadata accessor for KeyDropJoinToken(0);
  *(v6 + 224) = swift_task_alloc();
  v10 = type metadata accessor for UUID();
  *(v6 + 232) = v10;
  *(v6 + 240) = *(v10 - 8);
  *(v6 + 248) = swift_task_alloc();
  *(v6 + 256) = swift_task_alloc();

  return _swift_task_switch(sub_1001E701C, v5, 0);
}

uint64_t sub_1001E701C()
{
  v80 = v0;
  v1 = *(v0 + 248);
  v2 = *(v0 + 232);
  v3 = *(v0 + 224);
  v5 = *(v0 + 200);
  v4 = *(v0 + 208);
  v78 = *(v0 + 192);
  v6 = *(v0 + 112);
  v75 = *(v0 + 104);
  v7 = *(v0 + 96);
  v8 = *(*(v0 + 240) + 16);
  v8(*(v0 + 256), *(v0 + 88), v2);
  v77 = v8;
  v8(v1, v7, v2);
  sub_1001E7D68(v6, v3);
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  *v4 = sub_100281AE0;
  v4[1] = 0;
  (*(v5 + 104))(v4, enum case for JSONEncoder.DateEncodingStrategy.custom(_:), v78);
  dispatch thunk of JSONEncoder.dateEncodingStrategy.setter();
  v9 = *(v75 + 16);
  v10 = _swiftEmptyArrayStorage;
  if (v9)
  {
    v76 = v0;
    v11 = *(v0 + 104);
    v79 = _swiftEmptyArrayStorage;
    sub_101123BB8(0, v9, 0);
    v12 = _swiftEmptyArrayStorage;
    v13 = v11;
    v14 = (v11 + 40);
    v15 = v9;
    do
    {
      v16 = *(v14 - 1);
      v17 = *v14;
      sub_100017D5C(v16, *v14);
      v18 = Data.hexString.getter();
      v20 = v19;
      sub_100016590(v16, v17);
      v79 = v12;
      v22 = v12[2];
      v21 = v12[3];
      if (v22 >= v21 >> 1)
      {
        sub_101123BB8((v21 > 1), v22 + 1, 1);
        v12 = v79;
      }

      v14 += 2;
      v12[2] = v22 + 1;
      v23 = &v12[2 * v22];
      v23[4] = v18;
      v23[5] = v20;
      --v15;
    }

    while (v15);
    v79 = _swiftEmptyArrayStorage;
    sub_101123BB8(0, v9, 0);
    v24 = _swiftEmptyArrayStorage;
    v25 = (v13 + 40);
    do
    {
      v26 = *(v25 - 1);
      v27 = *v25;
      sub_100017D5C(v26, *v25);
      v28 = Data.hexString.getter();
      v30 = v29;
      sub_100016590(v26, v27);
      v79 = v24;
      v32 = v24[2];
      v31 = v24[3];
      if (v32 >= v31 >> 1)
      {
        sub_101123BB8((v31 > 1), v32 + 1, 1);
        v24 = v79;
      }

      v25 += 2;
      v24[2] = v32 + 1;
      v33 = &v24[2 * v32];
      v33[4] = v28;
      v33[5] = v30;
      --v9;
    }

    while (v9);
    v0 = v76;
    v10 = v24;
  }

  else
  {
    v12 = _swiftEmptyArrayStorage;
  }

  v34 = *(v0 + 248);
  v35 = *(v0 + 232);
  v37 = *(v0 + 176);
  v36 = *(v0 + 184);
  v38 = *(v0 + 304);
  v77(v36, *(v0 + 256), v35);
  v77(v36 + v37[6], v34, v35);
  *(v36 + v37[5]) = v38;
  *(v36 + v37[7]) = v12;
  *(v36 + v37[8]) = v10;
  sub_1001E81B8(&qword_101699908, type metadata accessor for KeyDropRegisterAPNSTokenRequest.KeyDropRegisterAPNSTokenContent, &unk_1013922E4);
  v39 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  *(v0 + 264) = v39;
  *(v0 + 272) = v40;
  v41 = v39;
  v42 = v40;
  v43 = (*(v0 + 224) + *(*(v0 + 216) + 20));
  v44 = *v43;
  v45 = v43[1];
  *(v0 + 56) = *v43;
  *(v0 + 64) = v45;
  sub_100017D5C(v44, v45);
  P256.Signing.PrivateKey.init<A>(rawRepresentation:)();
  *(v0 + 72) = v41;
  *(v0 + 80) = v42;
  sub_1000E0A3C();
  P256.Signing.PrivateKey.signature<A>(for:)();
  (*(*(v0 + 136) + 8))(*(v0 + 144), *(v0 + 128));
  v46 = sub_100646BE0();
  if (qword_101694F58 != -1)
  {
    swift_once();
  }

  v47 = qword_10177C218;
  v48 = [objc_opt_self() sharedInstance];
  v49 = [v48 isInternalBuild];

  if ((v49 & 1) != 0 && (v50 = String._bridgeToObjectiveC()(), v51 = [v47 BOOLForKey:v50], v50, v51))
  {
  }

  else
  {
    v52 = P256.Signing.ECDSASignature.derRepresentation.getter();
    v54 = v53;
    v55 = Data.base64EncodedString(options:)(0);
    sub_100016590(v52, v54);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v79 = v46;
    sub_100FFACA0(v55._countAndFlagsBits, v55._object, 0xD000000000000012, 0x800000010134D2A0, isUniquelyReferenced_nonNull_native);
  }

  *(v0 + 280) = v46;
  v58 = *(v0 + 248);
  v57 = *(v0 + 256);
  v59 = *(v0 + 232);
  v60 = *(v0 + 240);
  v61 = *(v0 + 224);
  v62 = *(v0 + 184);
  (*(*(v0 + 160) + 8))(*(v0 + 168), *(v0 + 152));
  sub_1001E7DCC(v62, type metadata accessor for KeyDropRegisterAPNSTokenRequest.KeyDropRegisterAPNSTokenContent);
  sub_1001E7DCC(v61, type metadata accessor for KeyDropJoinToken);
  v63 = *(v60 + 8);
  v63(v58, v59);
  v63(v57, v59);
  if (qword_1016954C0 != -1)
  {
    swift_once();
  }

  v64 = type metadata accessor for Logger();
  sub_1000076D4(v64, qword_10177CDD0);

  sub_100017D5C(v41, v42);
  v65 = Logger.logObject.getter();
  v66 = static os_log_type_t.debug.getter();

  sub_100016590(v41, v42);
  if (os_log_type_enabled(v65, v66))
  {
    v67 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    v79 = v68;
    *v67 = 136315138;
    v69 = sub_100646BE8();
    if (v70)
    {
      v71 = v70;
    }

    else
    {
      v69 = 7104878;
      v71 = 0xE300000000000000;
    }

    v72 = sub_1000136BC(v69, v71, &v79);

    *(v67 + 4) = v72;
    _os_log_impl(&_mh_execute_header, v65, v66, "KeyDropRegisterAPNSTokenRequest: %s", v67, 0xCu);
    sub_100007BAC(v68);
  }

  *(v0 + 40) = &type metadata for KeyDropRegisterAPNSTokenRequest;
  *(v0 + 48) = sub_1001E7E2C();
  *(v0 + 16) = v46;
  *(v0 + 24) = v41;
  *(v0 + 32) = v42;

  sub_100017D5C(v41, v42);
  v73 = swift_task_alloc();
  *(v0 + 288) = v73;
  *v73 = v0;
  v73[1] = sub_1001E7A0C;

  return sub_10103C29C(v0 + 16, 6);
}

uint64_t sub_1001E7A0C(char a1)
{
  v4 = *v2;
  *(*v2 + 296) = v1;

  if (v1)
  {
    v5 = *(v4 + 120);
    v6 = sub_1001E7C38;
  }

  else
  {
    v7 = *(v4 + 120);
    *(v4 + 305) = a1 & 1;
    sub_100007BAC((v4 + 16));
    v6 = sub_1001E7B50;
    v5 = v7;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1001E7B50()
{
  v1 = *(v0 + 272);
  v2 = *(v0 + 264);

  sub_100016590(v2, v1);

  v3 = *(v0 + 8);
  v4 = *(v0 + 305);

  return v3(v4);
}

uint64_t sub_1001E7C38()
{
  v1 = v0[34];
  v2 = v0[33];

  sub_100016590(v2, v1);
  sub_100007BAC(v0 + 2);

  v3 = v0[1];

  return v3(0);
}

uint64_t type metadata accessor for KeyDropRegisterAPNSTokenRequest.KeyDropRegisterAPNSTokenContent(uint64_t a1)
{
  result = qword_101699970;
  if (!qword_101699970)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001E7D68(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for KeyDropJoinToken(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001E7DCC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1001E7E2C()
{
  result = qword_101699910;
  if (!qword_101699910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101699910);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for KeyDropRegisterAPNSTokenResponse(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

__n128 initializeBufferWithCopyOfBuffer for HeartbeatConfiguration(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1001E7F44(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1001E7F8C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1001E8004(uint64_t a1)
{
  type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    sub_1001E8098();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1001E8098()
{
  if (!qword_101699980)
  {
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &qword_101699980);
    }
  }
}

unint64_t sub_1001E80E8(uint64_t a1)
{
  result = sub_1001E8110();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1001E8110()
{
  result = qword_1016999C0;
  if (!qword_1016999C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016999C0);
  }

  return result;
}

unint64_t sub_1001E8164()
{
  result = qword_1016999D0;
  if (!qword_1016999D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016999D0);
  }

  return result;
}

uint64_t sub_1001E81B8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1001E8200()
{
  result = qword_1016999D8;
  if (!qword_1016999D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016999D8);
  }

  return result;
}

unint64_t sub_1001E8254()
{
  result = qword_1016B2860;
  if (!qword_1016B2860)
  {
    sub_1000BC580(&qword_1016B0470, &qword_10138EB80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B2860);
  }

  return result;
}

unint64_t sub_1001E82D0()
{
  result = qword_1016999E8;
  if (!qword_1016999E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016999E8);
  }

  return result;
}

unint64_t sub_1001E8348()
{
  result = qword_1016999F8;
  if (!qword_1016999F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016999F8);
  }

  return result;
}

unint64_t sub_1001E83A0()
{
  result = qword_101699A00;
  if (!qword_101699A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101699A00);
  }

  return result;
}

unint64_t sub_1001E83F8()
{
  result = qword_101699A08;
  if (!qword_101699A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101699A08);
  }

  return result;
}

unint64_t sub_1001E8450()
{
  result = qword_101699A10;
  if (!qword_101699A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101699A10);
  }

  return result;
}

unint64_t sub_1001E84A8()
{
  result = qword_101699A18;
  if (!qword_101699A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101699A18);
  }

  return result;
}

unint64_t sub_1001E8500()
{
  result = qword_101699A20;
  if (!qword_101699A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101699A20);
  }

  return result;
}

uint64_t sub_1001E8554(uint64_t a1)
{
  v1 = type metadata accessor for Calendar.Component();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Calendar();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  OS_dispatch_queue.sync<A>(execute:)();
  sub_101074D34(v13[1]);
  v10 = v9;
  v11 = v9;

  static Calendar.current.getter();
  result = (*(v2 + 104))(v4, enum case for Calendar.Component.second(_:), v1);
  if ((*&v11 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v10 <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v10 < 9.22337204e18)
  {
    Calendar.date(byAdding:value:to:wrappingComponents:)();
    (*(v2 + 8))(v4, v1);
    return (*(v6 + 8))(v8, v5);
  }

LABEL_9:
  __break(1u);
  return result;
}

void *sub_1001E87D4(uint64_t a1)
{
  swift_defaultActor_initialize();
  type metadata accessor for KeyDropInterface();
  v3 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v3 + 112) = 0;
  *(v3 + 120) = 0;
  v1[20] = v3;
  type metadata accessor for DeviceIdentityUtility(0);
  v4 = swift_allocObject();
  swift_defaultActor_initialize();
  v5 = OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_certExpiryDate;
  v6 = type metadata accessor for Date();
  (*(*(v6 - 8) + 56))(v4 + v5, 1, 1, v6);
  *(v4 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_refKey) = 0;
  *(v4 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_certs) = _swiftEmptyArrayStorage;
  *(v4 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_signingType) = 12;
  v1[21] = v4;
  v1[14] = a1;
  v7 = type metadata accessor for SharingCircleKeyManager();
  v8 = swift_allocObject();

  swift_defaultActor_initialize();
  v9 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v9 + 112) = 0;
  *(v9 + 120) = 0;
  *(v8 + 112) = v9;
  *(v8 + 120) = a1;
  v1[18] = v7;
  v1[19] = &off_10164E4F0;
  v1[15] = v8;
  return v1;
}

uint64_t sub_1001E8930(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  v5 = type metadata accessor for SharingCircleSecret(0);
  v4[7] = v5;
  v4[8] = *(v5 - 8);
  v4[9] = swift_task_alloc();
  v4[10] = type metadata accessor for SharingCircleSecretValue(0);
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();
  v6 = type metadata accessor for UUID();
  v4[13] = v6;
  v4[14] = *(v6 - 8);
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  v7 = type metadata accessor for SymmetricKey256();
  v4[19] = v7;
  v4[20] = *(v7 - 8);
  v4[21] = swift_task_alloc();

  return _swift_task_switch(sub_1001E8B0C, v3, 0);
}

uint64_t sub_1001E8B0C()
{
  v60 = v0;
  v1 = Data.init(base64Encoded:options:)();
  v0[22] = v1;
  v0[23] = v2;
  if (v2 >> 60 == 15)
  {
    if (qword_101694780 != -1)
    {
      swift_once();
    }

    v4 = v0[14];
    v3 = v0[15];
    v5 = v0[13];
    v6 = v0[3];
    v7 = type metadata accessor for Logger();
    sub_1000076D4(v7, qword_10177AE40);
    (*(v4 + 16))(v3, v6, v5);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    v10 = os_log_type_enabled(v8, v9);
    v12 = v0[14];
    v11 = v0[15];
    v13 = v0[13];
    if (v10)
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v59[0] = v15;
      *v14 = 141558275;
      *(v14 + 4) = 1752392040;
      *(v14 + 12) = 2081;
      sub_100019348(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v16 = dispatch thunk of CustomStringConvertible.description.getter();
      v18 = v17;
      (*(v12 + 8))(v11, v13);
      v19 = sub_1000136BC(v16, v18, v59);

      *(v14 + 14) = v19;
      _os_log_impl(&_mh_execute_header, v8, v9, "Invalid decryption key for share identifier %{private,mask.hash}s.", v14, 0x16u);
      sub_100007BAC(v15);
    }

    else
    {

      (*(v12 + 8))(v11, v13);
    }

    sub_1002021D0();
    swift_allocError();
    *v20 = 0;
    swift_willThrow();

    v21 = v0[1];

    return v21();
  }

  else
  {
    sub_100017D5C(v1, v2);
    SymmetricKey256.init(data:)();
    if (qword_101694780 != -1)
    {
      swift_once();
    }

    v23 = v0[18];
    v24 = v0[13];
    v25 = v0[14];
    v26 = v0[3];
    v27 = type metadata accessor for Logger();
    sub_1000076D4(v27, qword_10177AE40);
    v58 = *(v25 + 16);
    v58(v23, v26, v24);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();
    v30 = os_log_type_enabled(v28, v29);
    v31 = v0[18];
    v32 = v0[13];
    v33 = v0[14];
    if (v30)
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v59[0] = v35;
      *v34 = 141558275;
      *(v34 + 4) = 1752392040;
      *(v34 + 12) = 2081;
      sub_100019348(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v36 = dispatch thunk of CustomStringConvertible.description.getter();
      v38 = v37;
      v57 = *(v33 + 8);
      v57(v31, v32);
      v39 = sub_1000136BC(v36, v38, v59);

      *(v34 + 14) = v39;
      _os_log_impl(&_mh_execute_header, v28, v29, "Saving decryption key for the share %{private,mask.hash}s.", v34, 0x16u);
      sub_100007BAC(v35);
    }

    else
    {

      v57 = *(v33 + 8);
      v57(v31, v32);
    }

    v41 = v0[16];
    v40 = v0[17];
    v43 = v0[12];
    v42 = v0[13];
    v44 = v0[11];
    v45 = v0[9];
    v46 = v0[7];
    v56 = v0[6];
    v47 = v0[3];
    (*(v0[20] + 16))(v43, v0[21], v0[19]);
    swift_storeEnumTagMultiPayload();
    UUID.init()();
    v58(v41, v47, v42);
    sub_100203698(v43, v44, type metadata accessor for SharingCircleSecretValue);
    *v45 = xmmword_10138C660;
    v58(v45 + v46[5], v40, v42);
    v58(v45 + v46[6], v41, v42);
    v48 = sub_101315BA4();
    v49 = (v45 + v46[8]);
    *v49 = v48;
    v49[1] = v50;
    v51 = sub_101315964();
    v53 = v52;
    sub_100203700(v44, type metadata accessor for SharingCircleSecretValue);
    v57(v41, v42);
    v57(v40, v42);
    v54 = (v45 + v46[7]);
    *v54 = v51;
    v54[1] = v53;
    v55 = *(v56 + 112);
    v0[24] = v55;

    return _swift_task_switch(sub_1001E919C, v55, 0);
  }
}

uint64_t sub_1001E919C()
{

  v1 = swift_task_alloc();
  *(v0 + 200) = v1;
  v2 = type metadata accessor for BeaconKeyManager(0);
  *v1 = v0;
  v1[1] = sub_1001E927C;
  v3 = *(v0 + 192);

  return unsafeBlocking<A>(context:_:)(v0 + 16, 0xD000000000000010, 0x800000010134A8C0, sub_1000D3168, v3, v2);
}

uint64_t sub_1001E927C()
{
  v1 = *(*v0 + 192);

  return _swift_task_switch(sub_1001E9394, v1, 0);
}

uint64_t sub_1001E9394()
{
  v1 = v0[6];
  v0[26] = v0[2];
  return _swift_task_switch(sub_1001E93B8, v1, 0);
}

uint64_t sub_1001E93B8()
{
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  *(v0 + 216) = *(*(v0 + 208) + OBJC_IVAR____TtC12searchpartyd16BeaconKeyManager_keyStore);

  sub_1000BC4D4(&qword_101698D88, &qword_101390910);
  v3 = *(v2 + 80);
  *(v0 + 248) = v3;
  v4 = (v3 + 32) & ~v3;
  v5 = swift_allocObject();
  *(v0 + 224) = v5;
  *(v5 + 16) = xmmword_101385D80;
  sub_100203698(v1, v5 + v4, type metadata accessor for SharingCircleSecret);
  v6 = swift_task_alloc();
  *(v0 + 232) = v6;
  *v6 = v0;
  v6[1] = sub_1001E94E8;

  return sub_10069208C(v5);
}

uint64_t sub_1001E94E8()
{
  v2 = *v1;
  *(v2 + 240) = v0;

  v3 = *(v2 + 224);
  v4 = *(v2 + 248);
  v5 = *(v2 + 48);

  swift_setDeallocating();
  sub_100203700(v3 + ((v4 + 32) & ~v4), type metadata accessor for SharingCircleSecret);
  swift_deallocClassInstance();
  if (v0)
  {
    v6 = sub_1001E97BC;
  }

  else
  {
    v6 = sub_1001E968C;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1001E968C()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[19];
  v4 = v0[12];
  v5 = v0[9];
  sub_100006654(v0[22], v0[23]);
  sub_100203700(v5, type metadata accessor for SharingCircleSecret);
  sub_100203700(v4, type metadata accessor for SharingCircleSecretValue);
  (*(v2 + 8))(v1, v3);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1001E97BC()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[19];
  v4 = v0[12];
  v5 = v0[9];
  sub_100006654(v0[22], v0[23]);
  sub_100203700(v5, type metadata accessor for SharingCircleSecret);
  sub_100203700(v4, type metadata accessor for SharingCircleSecretValue);
  (*(v2 + 8))(v1, v3);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1001E98E8(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = type metadata accessor for UUID();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();

  return _swift_task_switch(sub_1001E99A8, v1, 0);
}

uint64_t sub_1001E99A8()
{
  v21 = v0;
  if (qword_101694780 != -1)
  {
    swift_once();
  }

  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  v4 = v0[3];
  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_10177AE40);
  (*(v2 + 16))(v1, v4, v3);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[6];
  v9 = v0[7];
  v11 = v0[5];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v20 = v13;
    *v12 = 141558275;
    *(v12 + 4) = 1752392040;
    *(v12 + 12) = 2081;
    sub_100019348(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    (*(v10 + 8))(v9, v11);
    v17 = sub_1000136BC(v14, v16, &v20);

    *(v12 + 14) = v17;
    _os_log_impl(&_mh_execute_header, v6, v7, "Deleting decryption key for the share %{private,mask.hash}s.", v12, 0x16u);
    sub_100007BAC(v13);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v18 = *(v0[4] + 112);
  v0[8] = v18;

  return _swift_task_switch(sub_1001E9C04, v18, 0);
}

uint64_t sub_1001E9C04()
{

  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  v2 = type metadata accessor for BeaconKeyManager(0);
  *v1 = v0;
  v1[1] = sub_1001E9CE4;
  v3 = *(v0 + 64);

  return unsafeBlocking<A>(context:_:)(v0 + 16, 0xD000000000000010, 0x800000010134A8C0, sub_1000D3168, v3, v2);
}

uint64_t sub_1001E9CE4()
{
  v1 = *(*v0 + 64);

  return _swift_task_switch(sub_1001E9DFC, v1, 0);
}

uint64_t sub_1001E9DFC()
{
  v1 = v0[4];
  v0[10] = v0[2];
  return _swift_task_switch(sub_1001E9E20, v1, 0);
}

uint64_t sub_1001E9E20()
{
  v0[11] = *(v0[10] + OBJC_IVAR____TtC12searchpartyd16BeaconKeyManager_keyStore);

  v1 = swift_task_alloc();
  v0[12] = v1;
  *v1 = v0;
  v1[1] = sub_1001E9EE0;
  v2 = v0[3];

  return sub_100692A94(v2);
}

uint64_t sub_1001E9EE0()
{
  v2 = *v1;
  v2[13] = v0;

  if (v0)
  {
    v3 = v2[4];

    return _swift_task_switch(sub_1001EA02C, v3, 0);
  }

  else
  {

    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_1001EA02C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001EA09C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = type metadata accessor for KeyGenerationBeaconInfo(0);
  v2[5] = swift_task_alloc();
  v2[6] = type metadata accessor for BeaconIdentifier(0);
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();

  return _swift_task_switch(sub_1001EA16C, v1, 0);
}

uint64_t sub_1001EA16C()
{
  v22 = v0;
  v1 = *(v0 + 48);
  v2 = getuid();
  sub_1000294F0(v2);
  *(v0 + 128) = *(v1 + 20);
  UUID.init()();
  if (qword_101694780 != -1)
  {
    swift_once();
  }

  v3 = *(v0 + 56);
  v4 = *(v0 + 64);
  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_10177AE40);
  sub_100203698(v4, v3, type metadata accessor for BeaconIdentifier);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 56);
  if (v8)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v21 = v11;
    *v10 = 141558275;
    *(v10 + 4) = 1752392040;
    *(v10 + 12) = 2081;
    type metadata accessor for UUID();
    sub_100019348(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    v14 = v13;
    sub_100203700(v9, type metadata accessor for BeaconIdentifier);
    v15 = sub_1000136BC(v12, v14, &v21);

    *(v10 + 14) = v15;
    _os_log_impl(&_mh_execute_header, v6, v7, "Creating and saving KeyGenerationBeaconInfo into the observation store with beacon id %{private,mask.hash}s.", v10, 0x16u);
    sub_100007BAC(v11);
  }

  else
  {

    sub_100203700(v9, type metadata accessor for BeaconIdentifier);
  }

  v16 = *(v0 + 32);
  v17 = *(v0 + 40);
  sub_100203698(*(v0 + 64), v17, type metadata accessor for BeaconIdentifier);
  Date.init()();
  v18 = (v17 + *(v16 + 24));
  *v18 = xmmword_10138BBF0;
  v18[1] = 0u;
  v18[2] = 0u;
  *(v17 + *(v16 + 28)) = 3;
  v19 = swift_task_alloc();
  *(v0 + 72) = v19;
  *v19 = v0;
  v19[1] = sub_1001EA478;

  return daemon.getter();
}

uint64_t sub_1001EA478(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 80) = a1;

  v3 = swift_task_alloc();
  *(v2 + 88) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for BeaconKeyService();
  v6 = sub_100019348(&qword_1016AA400, 255, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100019348(&unk_1016B1090, 255, type metadata accessor for BeaconKeyService, &unk_1013CC4A0);
  *v3 = v9;
  v3[1] = sub_1001EA65C;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_1001EA65C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v3[12] = a1;
  v3[13] = v1;

  if (v1)
  {
    v5 = v3[3];

    return _swift_task_switch(sub_1001EAA48, v5, 0);
  }

  else
  {
    v6 = swift_task_alloc();
    v3[14] = v6;
    *v6 = v4;
    v6[1] = sub_1001EA80C;
    v7 = v3[5];

    return sub_10098F23C(v7);
  }
}

uint64_t sub_1001EA80C()
{
  v2 = *v1;
  *(*v1 + 120) = v0;

  v3 = *(v2 + 24);
  if (v0)
  {
    v4 = sub_1001EAB04;
  }

  else
  {
    v4 = sub_1001EA938;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1001EA938()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 64);
  v3 = *(v0 + 40);
  v4 = *(v0 + 16);

  sub_100203700(v3, type metadata accessor for KeyGenerationBeaconInfo);
  v5 = type metadata accessor for UUID();
  (*(*(v5 - 8) + 16))(v4, v2 + v1, v5);
  sub_100203700(v2, type metadata accessor for BeaconIdentifier);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1001EAA48()
{
  v1 = v0[8];
  sub_100203700(v0[5], type metadata accessor for KeyGenerationBeaconInfo);
  sub_100203700(v1, type metadata accessor for BeaconIdentifier);

  v2 = v0[1];

  return v2();
}

uint64_t sub_1001EAB04()
{

  v1 = v0[8];
  sub_100203700(v0[5], type metadata accessor for KeyGenerationBeaconInfo);
  sub_100203700(v1, type metadata accessor for BeaconIdentifier);

  v2 = v0[1];

  return v2();
}

uint64_t sub_1001EABC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[10] = a3;
  v4[11] = v3;
  v4[8] = a1;
  v4[9] = a2;
  sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v4[12] = swift_task_alloc();
  v5 = type metadata accessor for SharedBeaconRecord(0);
  v4[13] = v5;
  v6 = *(v5 - 8);
  v4[14] = v6;
  v4[15] = *(v6 + 64);
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v4[18] = swift_task_alloc();
  type metadata accessor for Endianness();
  v4[19] = swift_task_alloc();
  v7 = type metadata accessor for Date();
  v4[20] = v7;
  v4[21] = *(v7 - 8);
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();
  v8 = type metadata accessor for MemberSharingCircle(0);
  v4[24] = v8;
  v9 = *(v8 - 8);
  v4[25] = v9;
  v4[26] = *(v9 + 64);
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();
  v10 = type metadata accessor for UUID();
  v4[29] = v10;
  v4[30] = *(v10 - 8);
  v4[31] = swift_task_alloc();
  v4[32] = swift_task_alloc();
  v4[33] = swift_task_alloc();
  v4[34] = swift_task_alloc();
  v4[35] = swift_task_alloc();
  v4[36] = swift_task_alloc();
  v4[37] = swift_task_alloc();
  sub_1000BC4D4(&qword_101699BB0, &qword_1013B35F0);
  v4[38] = swift_task_alloc();

  return _swift_task_switch(sub_1001EAEF0, v3, 0);
}

uint64_t sub_1001EAEF0()
{
  v1 = *(*(v0 + 88) + 112);
  *(v0 + 312) = v1;
  return _swift_task_switch(sub_1001EAF14, v1, 0);
}

uint64_t sub_1001EAF14()
{

  v1 = swift_task_alloc();
  v0[40] = v1;
  v2 = type metadata accessor for BeaconKeyManager(0);
  v0[41] = v2;
  *v1 = v0;
  v1[1] = sub_1001EAFF8;
  v3 = v0[39];

  return unsafeBlocking<A>(context:_:)(v0 + 6, 0xD000000000000010, 0x800000010134A8C0, sub_1000D3168, v3, v2);
}

uint64_t sub_1001EAFF8()
{
  v1 = *(*v0 + 312);

  return _swift_task_switch(sub_1001EB110, v1, 0);
}

uint64_t sub_1001EB110()
{
  v1 = v0[11];
  v0[42] = v0[6];
  return _swift_task_switch(sub_1001EB134, v1, 0);
}

uint64_t sub_1001EB134()
{
  v0[43] = *(v0[42] + OBJC_IVAR____TtC12searchpartyd16BeaconKeyManager_keyStore);

  v1 = swift_task_alloc();
  v0[44] = v1;
  *v1 = v0;
  v1[1] = sub_1001EB1F4;
  v2 = v0[10];

  return sub_10069176C(v2);
}

uint64_t sub_1001EB1F4(uint64_t a1)
{
  v3 = *v2;
  v3[45] = a1;
  v3[46] = v1;

  if (v1)
  {
    v4 = v3[11];
    v5 = sub_1001ECBCC;
  }

  else
  {
    v6 = v3[11];

    v5 = sub_1001EB31C;
    v4 = v6;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_1001EB31C()
{
  v1 = v0[45];
  if (*(v1 + 16))
  {
    v3 = v0[38];
    v2 = v0[39];
    v4 = type metadata accessor for SharingCircleSecret(0);
    v5 = *(v4 - 8);
    sub_100203698(v1 + ((*(v5 + 80) + 32) & ~*(v5 + 80)), v3, type metadata accessor for SharingCircleSecret);

    (*(v5 + 56))(v3, 0, 1, v4);
    sub_10000B3A8(v3, &qword_101699BB0, &qword_1013B35F0);

    return _swift_task_switch(sub_1001EB5DC, v2, 0);
  }

  else
  {
    v6 = v0[38];

    v7 = type metadata accessor for SharingCircleSecret(0);
    (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
    sub_10000B3A8(v6, &qword_101699BB0, &qword_1013B35F0);
    sub_1002021D0();
    swift_allocError();
    *v8 = 4;
    swift_willThrow();

    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_1001EB5DC()
{

  v1 = swift_task_alloc();
  v0[47] = v1;
  *v1 = v0;
  v1[1] = sub_1001EB6B4;
  v2 = v0[41];
  v3 = v0[39];

  return unsafeBlocking<A>(context:_:)(v0 + 7, 0xD000000000000010, 0x800000010134A8C0, sub_1000D3168, v3, v2);
}

uint64_t sub_1001EB6B4()
{
  v1 = *(*v0 + 312);

  return _swift_task_switch(sub_1001EB7CC, v1, 0);
}

uint64_t sub_1001EB7CC()
{
  v1 = v0[11];
  v0[48] = v0[7];
  return _swift_task_switch(sub_1001EB7F0, v1, 0);
}

uint64_t sub_1001EB7F0()
{
  v1 = getuid();
  sub_1000294F0(v1);
  v2 = swift_task_alloc();
  v0[49] = v2;
  *v2 = v0;
  v2[1] = sub_1001EB89C;
  v3 = v0[37];
  v4 = v0[9];
  v5 = v0[10];

  return sub_1012D866C(v5, v4, v3);
}

uint64_t sub_1001EB89C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *v5;
  v7 = *v5;
  v7[50] = a1;
  v7[51] = a2;
  v7[52] = a3;
  v7[53] = a4;
  v7[54] = v4;

  v8 = v6[37];
  v9 = v6[30];
  v10 = v6[29];
  v11 = v6[11];
  v12 = *(v9 + 8);
  v13 = (v9 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  if (v4)
  {
    v7[64] = v12;
    v7[65] = v13;
    v12(v8, v10);

    v14 = sub_1001ECD10;
  }

  else
  {
    v7[55] = v12;
    v7[56] = v13;
    v12(v8, v10);

    v14 = sub_1001EBA74;
  }

  return _swift_task_switch(v14, v11, 0);
}

uint64_t sub_1001EBA74()
{
  *(v0 + 16) = *(v0 + 416);
  *(v0 + 24) = *(v0 + 424);
  *(v0 + 32) = 0x676174726961;
  *(v0 + 40) = 0xE600000000000000;
  sub_1000DF96C();
  if (StringProtocol.contains<A>(_:)())
  {

    v1 = sub_100314604(76, 21760);
  }

  else
  {
    v3 = Data.init(stringLiteral:)();
    v1 = sub_100314594(v3, v4);
  }

  v58 = *(v0 + 288);
  v60 = *(v0 + 280);
  v5 = *(v0 + 232);
  v6 = *(v0 + 240);
  v7 = *(v0 + 224);
  v8 = *(v0 + 192);
  v9 = *(v0 + 72);
  v10 = *(v0 + 80);
  v54 = v9;
  v56 = *(v0 + 184);
  v52 = v2;
  *(v0 + 456) = v2;
  *(v0 + 464) = v1;
  v49 = v1;
  v11 = v8[5];
  v12 = *(v6 + 16);
  *(v0 + 472) = v12;
  *(v0 + 480) = (v6 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v12(&v7[v11], v10, v5);
  v12(&v7[v8[6]], v9, v5);
  v12(&v7[v8[7]], v10, v5);
  v12(&v7[v8[8]], v10, v5);
  sub_1000BC4D4(&qword_101699BB8, &unk_1013926C0);
  v13 = (sub_1000BC4D4(&qword_101699BC0, &unk_1013C54C0) - 8);
  v14 = (*(*v13 + 80) + 32) & ~*(*v13 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_101385D80;
  v16 = v15 + v14;
  v17 = v13[14];
  UUID.init()();
  *(v16 + v17) = 1;
  v18 = sub_100908888(v15);
  swift_setDeallocating();
  sub_10000B3A8(v16, &qword_101699BC0, &unk_1013C54C0);
  swift_deallocClassInstance();
  *v7 = xmmword_10138C660;
  *&v7[v8[9]] = v18;
  v7[v8[10]] = 1;
  static Date.trustedNow.getter(v56);
  v12(v58, v54, v5);
  v12(v60, v10, v5);

  v19 = String._bridgeToObjectiveC()();
  v20 = IDSCopyIDForPhoneNumber();

  if (v20)
  {

    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v59 = v25;
    v61 = v24;

    if (v52 >> 60 == 15)
    {
      v51 = 0;
      v57 = 0;
    }

    else
    {
      v57 = sub_100313A28(v49, v52);
      sub_100313B54(v49, v52);
      static Endianness.current.getter();
      sub_10012BF24();
      FixedWidthInteger.init(data:ofEndianness:)();
      v26 = *(v0 + 528);
      if (*(v0 + 532))
      {
        v26 = 0;
      }

      v51 = v26;
    }

    v62 = *(v0 + 312);
    v45 = *(v0 + 288);
    v28 = *(v0 + 232);
    v27 = *(v0 + 240);
    v29 = *(v0 + 144);
    v48 = *(v0 + 280);
    v50 = v29;
    v53 = *(v0 + 136);
    v55 = *(v0 + 112);
    v30 = *(v0 + 104);
    v31 = *(v0 + 64);
    (*(*(v0 + 168) + 16))(&v31[v30[18]], *(v0 + 184), *(v0 + 160));
    v32 = *(v27 + 56);
    v32(&v31[v30[19]], 1, 1, v28);
    v32(v29, 1, 1, v28);
    v46 = v30[14];
    v47 = v30[15];
    v33 = &v31[v30[20]];
    v34 = type metadata accessor for SharedBeaconRecord.PropertyListContent(0);
    v35 = *(*(v34 - 8) + 56);
    v35(v33, 1, 1, v34);
    *v31 = xmmword_10138C660;
    v36 = *(v27 + 32);
    v36(&v31[v30[5]], v45, v28);
    v36(&v31[v30[6]], v48, v28);
    v37 = &v31[v30[7]];
    *v37 = 1;
    *(v37 + 1) = v61;
    *(v37 + 2) = v59;
    v38 = &v31[v30[8]];
    *v38 = 0;
    *(v38 + 1) = 0xE000000000000000;
    v39 = &v31[v30[9]];
    *v39 = 12653;
    *(v39 + 1) = 0xE200000000000000;
    v40 = &v31[v30[10]];
    *v40 = 0x3130304131;
    *(v40 + 1) = 0xE500000000000000;
    *&v31[v30[11]] = v57;
    *&v31[v30[12]] = v51;
    v31[v30[13]] = 1;
    v31[v46] = 3;
    *&v31[v47] = -1;
    v31[v30[16]] = 5;
    *&v31[v30[17]] = 1;
    sub_10000B3A8(v33, &unk_1016AF890, &qword_1013926D0);
    *v33 = 1;
    sub_10012C154(v50, &v33[*(v34 + 20)]);
    v35(v33, 0, 1, v34);
    sub_100203698(v31, v53, type metadata accessor for SharedBeaconRecord);
    v41 = *(v55 + 80);
    *(v0 + 536) = v41;
    v42 = (v41 + 16) & ~v41;
    v43 = swift_allocObject();
    *(v0 + 488) = v43;
    sub_100203304(v53, v43 + v42, type metadata accessor for SharedBeaconRecord);
    v21 = sub_1001EC0E8;
    v22 = v62;
    v23 = 0;
  }

  else
  {
    __break(1u);
  }

  return _swift_task_switch(v21, v22, v23);
}

uint64_t sub_1001EC0E8()
{
  v15 = *(v0 + 488);
  v1 = *(v0 + 536);
  v2 = *(v0 + 312);
  v4 = *(v0 + 216);
  v3 = *(v0 + 224);
  v6 = *(v0 + 200);
  v5 = *(v0 + 208);
  v8 = *(v0 + 120);
  v7 = *(v0 + 128);
  sub_100203698(*(v0 + 64), v7, type metadata accessor for SharedBeaconRecord);
  sub_100203698(v3, v4, type metadata accessor for MemberSharingCircle);
  v9 = (v1 + 24) & ~v1;
  v10 = (v8 + v9 + *(v6 + 80)) & ~*(v6 + 80);
  v11 = swift_allocObject();
  *(v0 + 496) = v11;
  *(v11 + 16) = v2;
  sub_100203304(v7, v11 + v9, type metadata accessor for SharedBeaconRecord);
  sub_100203304(v4, v11 + v10, type metadata accessor for MemberSharingCircle);
  v12 = (v11 + ((v5 + v10 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v12 = sub_1002034DC;
  v12[1] = v15;

  v13 = swift_task_alloc();
  *(v0 + 504) = v13;
  *v13 = v0;
  v13[1] = sub_1001EC2E8;

  return unsafeBlocking<A>(context:_:)(v13, 0xD000000000000010, 0x800000010134A8C0, sub_100203590, v11, &type metadata for () + 1);
}

uint64_t sub_1001EC2E8()
{
  v1 = *(*v0 + 312);

  return _swift_task_switch(sub_1001EC414, v1, 0);
}

uint64_t sub_1001EC414()
{
  v1 = *(v0 + 88);

  return _swift_task_switch(sub_1001EC480, v1, 0);
}

uint64_t sub_1001EC480()
{
  v62 = v0;
  if (v0[51] && (v1 = String._bridgeToObjectiveC()(), , v2 = objc_opt_self(), v3 = [v2 handleWithString:v1], v1, v3))
  {
    v60 = v3;
    v4 = v0[23];
    v6 = v0[20];
    v5 = v0[21];
    v7 = v0[12];
    type metadata accessor for ImportedShareUseCase();
    sub_1001E8554(v4);
    v8 = *(v5 + 48);
    if (v8(v7, 1, v6) == 1)
    {
      v9 = v0[20];
      v10 = v0[12];
      static Date.distantFuture.getter();
      if (v8(v10, 1, v9) != 1)
      {
        sub_10000B3A8(v0[12], &unk_101696900, &unk_10138B1E0);
      }
    }

    else
    {
      (*(v0[21] + 32))(v0[22], v0[12], v0[20]);
    }

    v56 = v0[57];
    v57 = v0[58];
    v58 = v0[55];
    v54 = v0[29];
    v59 = v0[28];
    v52 = v0[23];
    v50 = v0[22];
    v38 = v0[21];
    v55 = v0[20];
    v51 = v0[34];
    UUID.init()();
    v39 = String._bridgeToObjectiveC()();
    v49 = [v2 handleWithRecipient:v39];

    v40 = objc_allocWithZone(SPBeaconShare);
    isa = UUID._bridgeToObjectiveC()().super.isa;
    v42 = UUID._bridgeToObjectiveC()().super.isa;
    v43 = UUID._bridgeToObjectiveC()().super.isa;
    v44 = UUID._bridgeToObjectiveC()().super.isa;
    v45 = Date._bridgeToObjectiveC()().super.isa;
    v46 = Date._bridgeToObjectiveC()().super.isa;
    v53 = [v40 initWithIdentifier:isa beaconIdentifier:v42 sharingCircleIdentifier:v43 peerTrustIdentifier:v44 owner:v60 sharee:v49 state:5 creationDate:v45 expirationDate:v46];

    sub_100006654(v57, v56);
    v58(v51, v54);
    v47 = *(v38 + 8);
    v47(v50, v55);
    v47(v52, v55);
    sub_100203700(v59, type metadata accessor for MemberSharingCircle);

    v48 = v0[1];

    return v48(v53);
  }

  else
  {
    if (qword_101694780 != -1)
    {
      swift_once();
    }

    v11 = v0[59];
    v12 = v0[33];
    v13 = v0[29];
    v14 = v0[10];
    v15 = type metadata accessor for Logger();
    sub_1000076D4(v15, qword_10177AE40);
    v11(v12, v14, v13);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    v18 = os_log_type_enabled(v16, v17);
    v19 = v0[55];
    v20 = v0[33];
    v21 = v0[29];
    if (v18)
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v61[0] = v23;
      *v22 = 136315138;
      sub_100019348(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v24 = dispatch thunk of CustomStringConvertible.description.getter();
      v26 = v25;
      v19(v20, v21);
      v27 = sub_1000136BC(v24, v26, v61);

      *(v22 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v16, v17, "SPHandle failed for share id %s, privacy: .private(mask: .hash))", v22, 0xCu);
      sub_100007BAC(v23);
    }

    else
    {

      v19(v20, v21);
    }

    v29 = v0[57];
    v28 = v0[58];
    v30 = v0[28];
    v31 = v0[23];
    v33 = v0[20];
    v32 = v0[21];
    v34 = v0[8];
    sub_1002021D0();
    swift_allocError();
    *v35 = 2;
    swift_willThrow();
    sub_100006654(v28, v29);
    (*(v32 + 8))(v31, v33);
    sub_100203700(v30, type metadata accessor for MemberSharingCircle);
    sub_100203700(v34, type metadata accessor for SharedBeaconRecord);

    v36 = v0[1];

    return v36();
  }
}

uint64_t sub_1001ECBCC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001ECD10()
{
  v30 = v0;
  if (qword_101694780 != -1)
  {
    swift_once();
  }

  v1 = v0[31];
  v2 = v0[32];
  v3 = v0[29];
  v4 = v0[30];
  v6 = v0[9];
  v5 = v0[10];
  v7 = type metadata accessor for Logger();
  sub_1000076D4(v7, qword_10177AE40);
  v8 = *(v4 + 16);
  v8(v2, v5, v3);
  v8(v1, v6, v3);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();
  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[64];
  v14 = v0[31];
  v13 = v0[32];
  v15 = v0[29];
  if (v11)
  {
    log = v9;
    v16 = swift_slowAlloc();
    v29[0] = swift_slowAlloc();
    *v16 = 141558787;
    *(v16 + 4) = 1752392040;
    *(v16 + 12) = 2081;
    sub_100019348(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v27 = v10;
    v19 = v18;
    v12(v13, v15);
    v20 = sub_1000136BC(v17, v19, v29);

    *(v16 + 14) = v20;
    *(v16 + 22) = 2160;
    *(v16 + 24) = 1752392040;
    *(v16 + 32) = 2081;
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    v23 = v22;
    v12(v14, v15);
    v24 = sub_1000136BC(v21, v23, v29);

    *(v16 + 34) = v24;
    _os_log_impl(&_mh_execute_header, log, v27, "Failed to get displayIdentifier / product data for share id %{private,mask.hash}s,\nbeacon id %{private,mask.hash}s", v16, 0x2Au);
    swift_arrayDestroy();
  }

  else
  {

    v12(v14, v15);
    v12(v13, v15);
  }

  swift_willThrow();

  v25 = v0[1];

  return v25();
}

void sub_1001ED0C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SharedBeaconRecord(0);
  v5 = __chkstk_darwin(v4);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v34 - v8;
  v10 = sub_1000BC4D4(&qword_101699BC8, &qword_1013926D8);
  __chkstk_darwin(v10);
  v12 = (&v34 - v11);
  sub_1000D2A70(a1, &v34 - v11, &qword_101699BC8, &qword_1013926D8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = *v12;
    if (qword_101694780 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_1000076D4(v14, qword_10177AE40);
    sub_100203698(a2, v7, type metadata accessor for SharedBeaconRecord);
    swift_errorRetain();
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      *v17 = 141558531;
      *(v17 + 4) = 1752392040;
      *(v17 + 12) = 2081;
      type metadata accessor for UUID();
      sub_100019348(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v18 = dispatch thunk of CustomStringConvertible.description.getter();
      v20 = v19;
      sub_100203700(v7, type metadata accessor for SharedBeaconRecord);
      v21 = sub_1000136BC(v18, v20, &v35);

      *(v17 + 14) = v21;
      *(v17 + 22) = 2082;
      v34 = v13;
      swift_errorRetain();
      sub_1000BC4D4(&qword_101696960, &unk_10138B220);
      v22 = String.init<A>(describing:)();
      v24 = sub_1000136BC(v22, v23, &v35);

      *(v17 + 24) = v24;
      _os_log_impl(&_mh_execute_header, v15, v16, "Failed to save SharedBeaconRecord for imported beacon:\n%{private,mask.hash}s: %{public}s.", v17, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      sub_100203700(v7, type metadata accessor for SharedBeaconRecord);
    }
  }

  else
  {
    if (qword_101694780 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_1000076D4(v25, qword_10177AE40);
    sub_100203698(a2, v9, type metadata accessor for SharedBeaconRecord);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v35 = v29;
      *v28 = 141558275;
      *(v28 + 4) = 1752392040;
      *(v28 + 12) = 2081;
      type metadata accessor for UUID();
      sub_100019348(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v30 = dispatch thunk of CustomStringConvertible.description.getter();
      v32 = v31;
      sub_100203700(v9, type metadata accessor for SharedBeaconRecord);
      v33 = sub_1000136BC(v30, v32, &v35);

      *(v28 + 14) = v33;
      _os_log_impl(&_mh_execute_header, v26, v27, "Saved imported beacon records for the imported beacon %{private,mask.hash}s", v28, 0x16u);
      sub_100007BAC(v29);
    }

    else
    {

      sub_100203700(v9, type metadata accessor for SharedBeaconRecord);
    }

    sub_10000B3A8(v12, &qword_101699BC8, &qword_1013926D8);
  }
}

uint64_t sub_1001ED65C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[21] = a4;
  v5[22] = v4;
  v5[19] = a2;
  v5[20] = a3;
  v5[18] = a1;
  return _swift_task_switch(sub_1001ED684, v4, 0);
}

uint64_t sub_1001ED684()
{
  v1 = v0[21];
  v2 = *(v0[22] + 168);
  v3 = swift_task_alloc();
  v0[23] = v3;
  *v3 = v0;
  v3[1] = sub_1001ED740;
  v4 = v0[19];
  v5 = v0[20];
  v6 = v0[18];

  return sub_1011AC974((v0 + 2), v6, v4, v2, v5, v1, 0, 0);
}

uint64_t sub_1001ED740()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {
    v6 = *(v2 + 176);

    return _swift_task_switch(sub_1001ED884, v6, 0);
  }
}

uint64_t sub_1001ED884()
{
  v25 = v0;
  *(v0 + 64) = *(v0 + 32);
  v1 = *(v0 + 72);
  if (v1)
  {
    v2 = *(v0 + 56);
    if (v2)
    {
      v3 = *(v0 + 64);
      v4 = *(v0 + 48);
      *(v0 + 128) = *(v0 + 16);
      sub_10000B3A8(v0 + 128, &qword_1016A0AC0, &unk_1013926A0);
      v5 = *(v0 + 8);

      return v5(v3, v1, v4, v2);
    }

    *(v0 + 112) = *(v0 + 16);
    sub_10000B3A8(v0 + 112, &qword_1016A0AC0, &unk_1013926A0);
    sub_10000B3A8(v0 + 64, &qword_1016A0AC0, &unk_1013926A0);
    if (qword_101694780 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_1000076D4(v15, qword_10177AE40);

    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v19 = *(v0 + 144);
      v18 = *(v0 + 152);
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v24[0] = v21;
      *v20 = 141558275;
      *(v20 + 4) = 1752392040;
      *(v20 + 12) = 2081;
      *(v20 + 14) = sub_1000136BC(v19, v18, v24);
      _os_log_impl(&_mh_execute_header, v16, v17, "Invalid session token received from server for importing url %{private,mask.hash}s is nil", v20, 0x16u);
      sub_100007BAC(v21);
    }

    v14 = 8;
  }

  else
  {
    *(v0 + 80) = *(v0 + 16);
    sub_10000B3A8(v0 + 80, &qword_1016A0AC0, &unk_1013926A0);
    *(v0 + 96) = *(v0 + 48);
    sub_10000B3A8(v0 + 96, &qword_1016A0AC0, &unk_1013926A0);
    if (qword_101694780 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_1000076D4(v7, qword_10177AE40);

    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v11 = *(v0 + 144);
      v10 = *(v0 + 152);
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v24[0] = v13;
      *v12 = 141558275;
      *(v12 + 4) = 1752392040;
      *(v12 + 12) = 2081;
      *(v12 + 14) = sub_1000136BC(v11, v10, v24);
      _os_log_impl(&_mh_execute_header, v8, v9, "Invalid fetch token received from server for importing url %{private,mask.hash}s.", v12, 0x16u);
      sub_100007BAC(v13);
    }

    v14 = 7;
  }

  sub_1002021D0();
  swift_allocError();
  *v22 = v14;
  swift_willThrow();
  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_1001EDC84()
{
  v1[3] = v0;
  v2 = type metadata accessor for SharedBeaconRecord(0);
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();

  return _swift_task_switch(sub_1001EDD50, v0, 0);
}

uint64_t sub_1001EDD50()
{
  v1 = *(*(v0 + 24) + 112);
  *(v0 + 64) = v1;
  return _swift_task_switch(sub_1001EDD74, v1, 0);
}

uint64_t sub_1001EDD74()
{

  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  v2 = sub_1000BC4D4(&qword_101697720, &unk_101392640);
  *v1 = v0;
  v1[1] = sub_1001EDE60;
  v3 = *(v0 + 64);

  return unsafeBlocking<A>(context:_:)(v0 + 16, 0xD000000000000010, 0x800000010134A8C0, sub_100129E44, v3, v2);
}

uint64_t sub_1001EDE60()
{
  v1 = *(*v0 + 64);

  return _swift_task_switch(sub_1001EDF78, v1, 0);
}

uint64_t sub_1001EDF78()
{
  v1 = v0[3];
  v0[10] = v0[2];
  return _swift_task_switch(sub_1001EDF98, v1, 0);
}

uint64_t sub_1001EDF98()
{
  v1 = v0[10];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = v0[4];
    v5 = v0[5];
    v20 = v4;
    v21 = v0[10];
    while (v3 < *(v1 + 16))
    {
      v6 = v0[7];
      v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
      v8 = *(v5 + 72);
      sub_100203698(v0[10] + v7 + v8 * v3, v6, type metadata accessor for SharedBeaconRecord);
      v9 = v0[7];
      if (*(v6 + *(v4 + 64)) == 5)
      {
        sub_100203304(v9, v0[6], type metadata accessor for SharedBeaconRecord);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_10112421C(0, _swiftEmptyArrayStorage[2] + 1, 1);
        }

        v11 = _swiftEmptyArrayStorage[2];
        v10 = _swiftEmptyArrayStorage[3];
        if (v11 >= v10 >> 1)
        {
          sub_10112421C((v10 > 1), v11 + 1, 1);
        }

        v12 = v0[6];
        _swiftEmptyArrayStorage[2] = v11 + 1;
        sub_100203304(v12, _swiftEmptyArrayStorage + v7 + v11 * v8, type metadata accessor for SharedBeaconRecord);
        v4 = v20;
        v1 = v21;
      }

      else
      {
        sub_100203700(v9, type metadata accessor for SharedBeaconRecord);
      }

      if (v2 == ++v3)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
    goto LABEL_24;
  }

LABEL_12:
  v0[11] = _swiftEmptyArrayStorage;

  if (_swiftEmptyArrayStorage[2])
  {
    if (qword_101694780 == -1)
    {
LABEL_14:
      v13 = type metadata accessor for Logger();
      sub_1000076D4(v13, qword_10177AE40);

      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 134217984;
        *(v16 + 4) = _swiftEmptyArrayStorage[2];

        _os_log_impl(&_mh_execute_header, v14, v15, "Found existing imported beacons. Remove them first before importing a new one %ld", v16, 0xCu);
      }

      else
      {
      }

      v19 = swift_task_alloc();
      v0[12] = v19;
      *v19 = v0;
      v19[1] = sub_1001EE2FC;

      return sub_1001FAE9C(_swiftEmptyArrayStorage);
    }

LABEL_24:
    swift_once();
    goto LABEL_14;
  }

  v17 = v0[1];

  return v17();
}

uint64_t sub_1001EE2FC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1001EE44C@<X0>(char *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v114 = a3;
  v5 = type metadata accessor for UUID();
  v117 = *(v5 - 8);
  v118 = v5;
  __chkstk_darwin(v5);
  v115 = &v112 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  __chkstk_darwin(v7 - 8);
  v116 = &v112 - v8;
  v126 = type metadata accessor for URLQueryItem();
  v121 = *(v126 - 1);
  v9 = __chkstk_darwin(v126);
  v11 = &v112 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v119 = &v112 - v12;
  v13 = sub_1000BC4D4(&qword_101699BA8, &unk_1013926B0);
  __chkstk_darwin(v13 - 8);
  v15 = &v112 - v14;
  v16 = type metadata accessor for URLComponents();
  v125 = *(v16 - 8);
  v17 = __chkstk_darwin(v16);
  v120 = &v112 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v124 = &v112 - v19;
  v20 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  __chkstk_darwin(v20 - 8);
  v22 = &v112 - v21;
  v23 = type metadata accessor for URL();
  v24 = *(v23 - 8);
  v25 = __chkstk_darwin(v23);
  v122 = &v112 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v28 = &v112 - v27;
  v123 = a1;
  v29 = a2;
  URL.init(string:)();
  if ((v24[6])(v22, 1, v23) == 1)
  {
    sub_10000B3A8(v22, &unk_101696AC0, &qword_101390A60);
    if (qword_101694780 != -1)
    {
LABEL_45:
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    sub_1000076D4(v30, qword_10177AE40);
    v31 = v29;

    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v127 = v35;
      *v34 = 136315138;
      *(v34 + 4) = sub_1000136BC(v123, v31, &v127);
      _os_log_impl(&_mh_execute_header, v32, v33, "Invalid input URL. URL string %s", v34, 0xCu);
      sub_100007BAC(v35);
    }

    sub_1002021D0();
    swift_allocError();
    *v36 = 9;
    return swift_willThrow();
  }

  else
  {
    v24[4](v28, v22, v23);
    URLComponents.init(url:resolvingAgainstBaseURL:)();
    v38 = v125;
    v39 = v24;
    if ((*(v125 + 48))(v15, 1, v16) == 1)
    {
      sub_10000B3A8(v15, &qword_101699BA8, &unk_1013926B0);
      if (qword_101694780 != -1)
      {
        swift_once();
      }

      v40 = type metadata accessor for Logger();
      sub_1000076D4(v40, qword_10177AE40);
      v41 = v122;
      v24[2](v122, v28, v23);
      v42 = Logger.logObject.getter();
      v43 = v39;
      v44 = static os_log_type_t.error.getter();
      v45 = v23;
      if (os_log_type_enabled(v42, v44))
      {
        v46 = swift_slowAlloc();
        v123 = v28;
        v47 = v46;
        v126 = swift_slowAlloc();
        v127 = v126;
        *v47 = 136315138;
        LODWORD(v125) = v44;
        v48 = URL.description.getter();
        v50 = v49;
        v51 = *(v43 + 1);
        v51(v41, v23);
        v52 = sub_1000136BC(v48, v50, &v127);

        *(v47 + 4) = v52;
        v45 = v23;
        _os_log_impl(&_mh_execute_header, v42, v125, "Cannot form URLComponents from URL %s", v47, 0xCu);
        sub_100007BAC(v126);

        v28 = v123;
      }

      else
      {

        v51 = *(v43 + 1);
        v51(v41, v23);
      }

      sub_1002021D0();
      swift_allocError();
      *v60 = 9;
      swift_willThrow();
      return (v51)(v28, v45);
    }

    else
    {
      v123 = v28;
      (*(v38 + 32))(v124, v15, v16);
      v53 = URLComponents.queryItems.getter();
      v113 = v23;
      if (v53)
      {
        v54 = v53;
        v120 = v16;
        v122 = v24;
        v55 = *(v53 + 16);
        v56 = v121;
        if (v55)
        {
          v29 = 0;
          v57 = (v121 + 8);
          while (1)
          {
            if (v29 >= *(v54 + 16))
            {
              __break(1u);
              goto LABEL_45;
            }

            (*(v56 + 16))(v11, v54 + ((*(v56 + 80) + 32) & ~*(v56 + 80)) + *(v56 + 72) * v29, v126);
            if (URLQueryItem.name.getter() == 105 && v58 == 0xE100000000000000)
            {
              break;
            }

            v59 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v59)
            {
              goto LABEL_29;
            }

            ++v29;
            (*v57)(v11, v126);
            if (v55 == v29)
            {
              goto LABEL_32;
            }
          }

LABEL_29:
          v76 = v119;
          v77 = v126;
          (*(v56 + 32))(v119, v11, v126);
          URLQueryItem.value.getter();
          v79 = v78;
          (*(v56 + 8))(v76, v77);
          if (!v79)
          {
            goto LABEL_32;
          }

          v80 = v116;
          UUID.init(uuidString:)();

          v82 = v117;
          v81 = v118;
          if ((*(v117 + 48))(v80, 1, v118) == 1)
          {
            sub_10000B3A8(v80, &qword_1016980D0, &unk_10138F3B0);
            goto LABEL_32;
          }

          v98 = v114;
          (*(v82 + 32))(v114, v80, v81);
          if (qword_101694780 != -1)
          {
            swift_once();
          }

          v99 = type metadata accessor for Logger();
          sub_1000076D4(v99, qword_10177AE40);
          v100 = v115;
          (*(v82 + 16))(v115, v98, v81);
          v101 = Logger.logObject.getter();
          v102 = static os_log_type_t.debug.getter();
          v103 = os_log_type_enabled(v101, v102);
          v104 = v113;
          if (v103)
          {
            v105 = swift_slowAlloc();
            v106 = swift_slowAlloc();
            v127 = v106;
            *v105 = 141558275;
            *(v105 + 4) = 1752392040;
            *(v105 + 12) = 2081;
            sub_100019348(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
            v107 = dispatch thunk of CustomStringConvertible.description.getter();
            v108 = v100;
            v110 = v109;
            (*(v82 + 8))(v108, v81);
            v111 = sub_1000136BC(v107, v110, &v127);

            *(v105 + 14) = v111;
            _os_log_impl(&_mh_execute_header, v101, v102, "Share identifier extracted from Url: %{private,mask.hash}s", v105, 0x16u);
            sub_100007BAC(v106);
          }

          else
          {

            (*(v82 + 8))(v100, v81);
          }

          (*(v125 + 8))(v124, v120);
          return (*(v122 + 1))(v123, v104);
        }

        else
        {
LABEL_32:
          if (qword_101694780 != -1)
          {
            swift_once();
          }

          v83 = type metadata accessor for Logger();
          sub_1000076D4(v83, qword_10177AE40);

          v84 = Logger.logObject.getter();
          v85 = static os_log_type_t.error.getter();

          v86 = os_log_type_enabled(v84, v85);
          v87 = v113;
          if (v86)
          {
            v88 = swift_slowAlloc();
            v89 = swift_slowAlloc();
            v127 = v89;
            *v88 = 136315138;
            v90 = Array.description.getter();
            v92 = v91;

            v93 = sub_1000136BC(v90, v92, &v127);

            *(v88 + 4) = v93;
            _os_log_impl(&_mh_execute_header, v84, v85, "Cannot find share identifier in query items %s", v88, 0xCu);
            sub_100007BAC(v89);
          }

          else
          {
          }

          v94 = v122;
          v95 = v120;
          v96 = v125;
          sub_1002021D0();
          swift_allocError();
          *v97 = 9;
          swift_willThrow();
          (*(v96 + 8))(v124, v95);
          return (*(v94 + 1))(v123, v87);
        }
      }

      else
      {
        v61 = v38;
        if (qword_101694780 != -1)
        {
          swift_once();
        }

        v62 = type metadata accessor for Logger();
        sub_1000076D4(v62, qword_10177AE40);
        v63 = v120;
        (*(v38 + 16))(v120, v124, v16);
        v64 = Logger.logObject.getter();
        v65 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v64, v65))
        {
          v66 = swift_slowAlloc();
          v122 = v39;
          v67 = v66;
          v68 = v61;
          v126 = swift_slowAlloc();
          v127 = v126;
          *v67 = 136315138;
          v69 = URLComponents.description.getter();
          v70 = v63;
          v72 = v71;
          v73 = *(v68 + 8);
          v73(v70, v16);
          v74 = sub_1000136BC(v69, v72, &v127);

          *(v67 + 4) = v74;
          _os_log_impl(&_mh_execute_header, v64, v65, "Cannot get query items from URL components %s", v67, 0xCu);
          sub_100007BAC(v126);

          v39 = v122;
        }

        else
        {

          v73 = *(v38 + 8);
          v73(v63, v16);
        }

        sub_1002021D0();
        swift_allocError();
        *v75 = 9;
        swift_willThrow();
        v73(v124, v16);
        return (*(v39 + 1))(v123, v113);
      }
    }
  }
}

uint64_t sub_1001EF36C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_1001EF38C, v1, 0);
}

uint64_t sub_1001EF38C()
{
  v26 = v0;
  v1 = [*(v0 + 16) inputUrl];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;

  v5 = sub_100202CCC(v2, v4);
  *(v0 + 32) = v6;
  if (v6)
  {
    v7 = v5;
    v8 = v6;

    if (qword_101694780 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_1000076D4(v9, qword_10177AE40);

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v25[0] = v13;
      *v12 = 141558275;
      *(v12 + 4) = 1752392040;
      *(v12 + 12) = 2081;
      *(v12 + 14) = sub_1000136BC(v7, v8, v25);
      _os_log_impl(&_mh_execute_header, v10, v11, "Start previewing url for import %{private,mask.hash}s", v12, 0x16u);
      sub_100007BAC(v13);
    }

    v14 = *(*(v0 + 24) + 168);
    v15 = swift_task_alloc();
    *(v0 + 40) = v15;
    *v15 = v0;
    v15[1] = sub_1001EF74C;

    return sub_1011AD168(v7, v8, v14);
  }

  else
  {
    if (qword_101694780 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_1000076D4(v17, qword_10177AE40);

    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v25[0] = v21;
      *v20 = 136315138;
      v22 = sub_1000136BC(v2, v4, v25);

      *(v20 + 4) = v22;
      _os_log_impl(&_mh_execute_header, v18, v19, "cannot remove fragments from url %s", v20, 0xCu);
      sub_100007BAC(v21);
    }

    else
    {
    }

    sub_1002021D0();
    swift_allocError();
    *v23 = 9;
    swift_willThrow();
    v24 = *(v0 + 8);

    return v24(0);
  }
}

uint64_t sub_1001EF74C(char a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 48) = v1;

  if (v1)
  {
    v6 = *(v4 + 24);

    return _swift_task_switch(sub_1001EF8C4, v6, 0);
  }

  else
  {
    v7 = *(v5 + 8);

    return v7(a1 & 1);
  }
}

uint64_t sub_1001EF8C4(uint64_t a1)
{
  sub_1002021D0();
  swift_allocError();
  *v2 = 11;
  swift_willThrow();

  v3 = *(v1 + 8);

  return v3(0);
}

uint64_t sub_1001EF968(uint64_t a1)
{
  v2[47] = a1;
  v2[48] = v1;
  sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v2[49] = swift_task_alloc();
  v3 = *(type metadata accessor for SharedBeaconRecord(0) - 8);
  v2[50] = v3;
  v2[51] = *(v3 + 64);
  v2[52] = swift_task_alloc();
  v2[53] = swift_task_alloc();
  v4 = type metadata accessor for Connection.TransactionMode();
  v2[54] = v4;
  v2[55] = *(v4 - 8);
  v2[56] = swift_task_alloc();
  v5 = type metadata accessor for Table();
  v2[57] = v5;
  v2[58] = *(v5 - 8);
  v2[59] = swift_task_alloc();
  v6 = type metadata accessor for SessionTokenRecord(0);
  v2[60] = v6;
  v7 = *(v6 - 8);
  v2[61] = v7;
  v2[62] = *(v7 + 64);
  v2[63] = swift_task_alloc();
  v2[64] = swift_task_alloc();
  v2[65] = swift_task_alloc();
  v2[66] = sub_1000BC4D4(&qword_101699B90, &unk_101392670);
  v2[67] = swift_task_alloc();
  v8 = type metadata accessor for UUID();
  v2[68] = v8;
  v9 = *(v8 - 8);
  v2[69] = v9;
  v2[70] = *(v9 + 64);
  v2[71] = swift_task_alloc();
  v2[72] = swift_task_alloc();
  v2[73] = swift_task_alloc();
  v2[74] = swift_task_alloc();
  v2[75] = swift_task_alloc();
  v2[76] = swift_task_alloc();
  v2[77] = swift_task_alloc();
  v2[78] = swift_task_alloc();
  v2[79] = swift_task_alloc();
  v2[80] = swift_task_alloc();
  v2[81] = swift_task_alloc();
  v2[82] = swift_task_alloc();
  v2[83] = swift_task_alloc();

  return _swift_task_switch(sub_1001EFCD4, v1, 0);
}

uint64_t sub_1001EFCD4()
{
  v37 = v0;
  v1 = v0[47];
  v2 = [v1 inputUrl];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  v6 = [v1 callbackValue];
  if (v6)
  {
    v7 = v6;
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  v0[85] = v10;
  v0[84] = v8;
  if (qword_101694780 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  v0[86] = sub_1000076D4(v11, qword_10177AE40);

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v35 = v3;
    v14 = swift_slowAlloc();
    v36[0] = swift_slowAlloc();
    *v14 = 136315394;
    *(v14 + 4) = sub_1000136BC(v35, v5, v36);
    *(v14 + 12) = 2080;
    v0[38] = v8;
    v0[39] = v10;
    sub_1000BC4D4(&qword_1016A0AC0, &unk_1013926A0);
    v15 = Optional.debugDescription.getter();
    v17 = sub_1000136BC(v15, v16, v36);

    *(v14 + 14) = v17;
    _os_log_impl(&_mh_execute_header, v12, v13, "Start importing share for url: %s with callback value %s", v14, 0x16u);
    swift_arrayDestroy();

    v3 = v35;
  }

  sub_1001EE44C(v3, v5, v0[83]);
  sub_1002022BC(v3, v5);
  v0[87] = v18;
  v0[88] = v19;
  v22 = sub_100202CCC(v3, v5);
  v0[89] = v22;
  v0[90] = v23;
  if (v23)
  {
    v24 = v0[48];

    v25 = *(v24 + 112);
    v0[91] = v25;
    if (qword_101694A70 != -1)
    {
      swift_once();
    }

    v0[92] = sub_1000076D4(v0[68], qword_10177B620);

    return _swift_task_switch(sub_1001F02C8, v25, 0);
  }

  else
  {

    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v36[0] = v29;
      *v28 = 136315138;
      v30 = sub_1000136BC(v3, v5, v36);

      *(v28 + 4) = v30;
      _os_log_impl(&_mh_execute_header, v26, v27, "cannot remove fragments from url %s", v28, 0xCu);
      sub_100007BAC(v29);
    }

    else
    {
    }

    v31 = v0[83];
    v32 = v0[69];
    v33 = v0[68];
    sub_1002021D0();
    swift_allocError();
    *v34 = 9;
    swift_willThrow();
    (*(v32 + 8))(v31, v33);

    v20 = v0[1];

    return v20();
  }
}

uint64_t sub_1001F02C8()
{
  v1 = *(v0 + 736);
  v2 = *(v0 + 728);
  v3 = *(v0 + 656);
  v4 = *(v0 + 552);
  v5 = *(v0 + 544);
  v6 = *(v4 + 16);
  *(v0 + 744) = v6;
  *(v0 + 752) = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v3, v1, v5);
  v7 = *(v4 + 80);
  *(v0 + 332) = v7;
  v8 = (v7 + 24) & ~v7;
  v9 = swift_allocObject();
  *(v0 + 760) = v9;
  *(v9 + 16) = v2;
  v10 = *(v4 + 32);
  *(v0 + 768) = v10;
  *(v0 + 776) = (v4 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v10(v9 + v8, v3, v5);

  v11 = swift_task_alloc();
  *(v0 + 784) = v11;
  *v11 = v0;
  v11[1] = sub_1001F045C;
  v12 = *(v0 + 536);
  v13 = *(v0 + 528);

  return unsafeBlocking<A>(context:_:)(v12, 0xD000000000000010, 0x800000010134A8C0, sub_100202FF4, v9, v13);
}

uint64_t sub_1001F045C()
{
  v1 = *(*v0 + 384);

  return _swift_task_switch(sub_1001F0588, v1, 0);
}

uint64_t sub_1001F0588()
{
  v15 = v0;
  v1 = v0[67];
  v2 = v0[60];
  if ((*(v0[61] + 48))(v1, 1, v2) == 1)
  {
    v3 = v0[85];
    sub_10000B3A8(v1, &qword_101699B90, &unk_101392670);
    v4 = swift_task_alloc();
    v0[140] = v4;
    *v4 = v0;
    if (v3)
    {
      v5 = sub_1001F53C8;
    }

    else
    {
      v5 = sub_1001F07F4;
    }
  }

  else
  {

    v6 = (v1 + *(v2 + 20));
    v7 = *v6;
    v0[105] = *v6;
    v8 = v6[1];
    v0[106] = v8;

    sub_100203700(v1, type metadata accessor for SessionTokenRecord);

    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v14 = v12;
      *v11 = 141558275;
      *(v11 + 4) = 1752392040;
      *(v11 + 12) = 2081;
      *(v11 + 14) = sub_1000136BC(v7, v8, &v14);
      _os_log_impl(&_mh_execute_header, v9, v10, "Session token found saved %{private,mask.hash}s", v11, 0x16u);
      sub_100007BAC(v12);
    }

    v4 = swift_task_alloc();
    v0[107] = v4;
    *v4 = v0;
    v5 = sub_1001F17D8;
  }

  v4[1] = v5;

  return sub_1001EDC84();
}

uint64_t sub_1001F07F4()
{
  v1 = *(*v0 + 384);

  return _swift_task_switch(sub_1001F0904, v1, 0);
}

uint64_t sub_1001F0904()
{
  v1 = v0[90];
  v2 = *(v0[48] + 168);
  v3 = swift_task_alloc();
  v0[99] = v3;
  *v3 = v0;
  v3[1] = sub_1001F09C8;
  v4 = v0[89];

  return sub_1011AC974((v0 + 8), v4, v1, v2, 0, 0, 0, 0);
}

uint64_t sub_1001F09C8()
{
  v2 = *v1;
  *(*v1 + 800) = v0;

  v3 = *(v2 + 384);
  if (v0)
  {
    v4 = sub_1001F12E0;
  }

  else
  {
    v4 = sub_1001F0AF4;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1001F0AF4()
{
  v44 = v0;
  v1 = *(v0 + 88);
  if (v1)
  {
    v2 = *(v0 + 80);
    *(v0 + 208) = *(v0 + 64);
    sub_10000B3A8(v0 + 208, &qword_1016A0AC0, &unk_1013926A0);
    *(v0 + 224) = *(v0 + 96);
    sub_10000B3A8(v0 + 224, &qword_1016A0AC0, &unk_1013926A0);
    *(v0 + 920) = v1;
    *(v0 + 912) = v2;

    swift_bridgeObjectRetain_n();
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v3, v4))
    {
      v40 = *(v0 + 720);
      v5 = *(v0 + 712);
      v6 = swift_slowAlloc();
      v43[0] = swift_slowAlloc();
      *v6 = 141558787;
      *(v6 + 4) = 1752392040;
      *(v6 + 12) = 2081;
      *(v6 + 14) = sub_1000136BC(v5, v40, v43);
      *(v6 + 22) = 2160;
      *(v6 + 24) = 1752392040;
      *(v6 + 32) = 2081;
      v7 = sub_1000136BC(v2, v1, v43);

      *(v6 + 34) = v7;
      _os_log_impl(&_mh_execute_header, v3, v4, "Continue to import url %{private,mask.hash}s with fetch token %{private,mask.hash}s.", v6, 0x2Au);
      swift_arrayDestroy();
    }

    else
    {
    }

    v13 = swift_task_alloc();
    *(v0 + 952) = v13;
    *v13 = v0;
    v13[1] = sub_1001F30F4;
    v14 = *(v0 + 704);
    v15 = *(v0 + 696);
    v16 = *(v0 + 664);

    return sub_1001E8930(v16, v15, v14);
  }

  else
  {

    *(v0 + 160) = *(v0 + 64);
    if (*(v0 + 168))
    {
      v8 = *(v0 + 552);
      *(v0 + 192) = *(v0 + 96);
      sub_10000B3A8(v0 + 192, &qword_1016A0AC0, &unk_1013926A0);
      v9 = objc_allocWithZone(SPDelegatedShareImportResult);
      v10 = String._bridgeToObjectiveC()();
      sub_10000B3A8(v0 + 160, &qword_1016A0AC0, &unk_1013926A0);
      v41 = [v9 initWithAuthUrl:v10];

      (*(v8 + 8))(*(v0 + 664), *(v0 + 544));

      v11 = *(v0 + 8);

      return v11(v41);
    }

    else
    {
      v17 = *(v0 + 744);
      v18 = *(v0 + 664);
      v19 = *(v0 + 648);
      v20 = *(v0 + 544);
      *(v0 + 176) = *(v0 + 96);
      sub_10000B3A8(v0 + 176, &qword_1016A0AC0, &unk_1013926A0);
      v17(v19, v18, v20);
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.error.getter();
      v23 = os_log_type_enabled(v21, v22);
      v24 = *(v0 + 648);
      v25 = *(v0 + 552);
      v26 = *(v0 + 544);
      if (v23)
      {
        v27 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        v43[0] = v42;
        *v27 = 141558275;
        *(v27 + 4) = 1752392040;
        *(v27 + 12) = 2081;
        sub_100019348(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v28 = dispatch thunk of CustomStringConvertible.description.getter();
        v30 = v29;
        v39 = v22;
        v31 = *(v25 + 8);
        v31(v24, v26);
        v32 = v31;
        v33 = sub_1000136BC(v28, v30, v43);

        *(v27 + 14) = v33;
        _os_log_impl(&_mh_execute_header, v21, v39, "Invalid response for imported share %{private,mask.hash}s", v27, 0x16u);
        sub_100007BAC(v42);
      }

      else
      {

        v34 = *(v25 + 8);
        v34(v24, v26);
        v32 = v34;
      }

      v35 = *(v0 + 664);
      v36 = *(v0 + 544);
      sub_1002021D0();
      swift_allocError();
      *v37 = 10;
      swift_willThrow();
      v32(v35, v36);

      v38 = *(v0 + 8);

      return v38();
    }
  }
}

uint64_t sub_1001F12E0()
{
  v1 = v0[83];
  v2 = v0[69];
  v3 = v0[68];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1001F14B0()
{
  v26 = v0;
  v1 = *(v0 + 824);
  v2 = *(v0 + 808);
  v3 = *(v0 + 832);
  v4 = *(v0 + 816);
  *(v0 + 920) = v1;
  *(v0 + 912) = v3;

  swift_bridgeObjectRetain_n();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v23 = *(v0 + 712);
    v24 = *(v0 + 720);
    v7 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *v7 = 141558787;
    *(v7 + 4) = 1752392040;
    *(v7 + 12) = 2081;
    *(v7 + 14) = sub_1000136BC(v23, v24, &v25);
    *(v7 + 22) = 2160;
    *(v7 + 24) = 1752392040;
    *(v7 + 32) = 2081;
    v8 = sub_1000136BC(v3, v1, &v25);

    *(v7 + 34) = v8;
    _os_log_impl(&_mh_execute_header, v5, v6, "Continue to import url %{private,mask.hash}s with fetch token %{private,mask.hash}s.", v7, 0x2Au);
    swift_arrayDestroy();

    if (v2)
    {
LABEL_3:
      v9 = *(v0 + 728);
      v10 = *(v0 + 520);
      v11 = *(v0 + 512);
      v12 = *(v0 + 488);
      v13 = *(v0 + 480);
      (*(v0 + 744))(v10, *(v0 + 736), *(v0 + 544));
      v14 = (v10 + *(v13 + 20));
      *v14 = v4;
      v14[1] = v2;
      static Date.trustedNow.getter(v10 + *(v13 + 24));
      sub_100203698(v10, v11, type metadata accessor for SessionTokenRecord);
      v15 = *(v12 + 80);
      *(v0 + 1144) = v15;
      v16 = (v15 + 16) & ~v15;
      v17 = swift_allocObject();
      *(v0 + 928) = v17;
      sub_100203304(v11, v17 + v16, type metadata accessor for SessionTokenRecord);

      return _swift_task_switch(sub_1001F2D14, v9, 0);
    }
  }

  else
  {

    if (v2)
    {
      goto LABEL_3;
    }
  }

  v18 = swift_task_alloc();
  *(v0 + 952) = v18;
  *v18 = v0;
  v18[1] = sub_1001F30F4;
  v19 = *(v0 + 704);
  v20 = *(v0 + 696);
  v21 = *(v0 + 664);

  return sub_1001E8930(v21, v20, v19);
}

uint64_t sub_1001F17D8()
{
  v1 = *(*v0 + 384);

  return _swift_task_switch(sub_1001F18E8, v1, 0);
}

uint64_t sub_1001F18E8()
{
  v1 = v0[106];
  v2 = v0[90];
  v3 = *(v0[48] + 168);
  v4 = swift_task_alloc();
  v0[108] = v4;
  *v4 = v0;
  v4[1] = sub_1001F19B0;
  v5 = v0[105];
  v6 = v0[89];

  return sub_1011AC974((v0 + 2), v6, v2, v3, 0, 0, v5, v1);
}

uint64_t sub_1001F19B0()
{
  v2 = *v1;
  *(*v1 + 872) = v0;

  if (v0)
  {
    v3 = *(v2 + 384);

    v4 = sub_1001F23B0;
    v5 = v3;
  }

  else
  {
    v6 = *(v2 + 384);

    v4 = sub_1001F1AF0;
    v5 = v6;
  }

  return _swift_task_switch(v4, v5, 0);
}

uint64_t sub_1001F1AF0()
{
  v52 = v0;
  v1 = *(v0 + 40);
  if (v1)
  {
    v2 = *(v0 + 32);
    *(v0 + 272) = *(v0 + 16);
    sub_10000B3A8(v0 + 272, &qword_1016A0AC0, &unk_1013926A0);
    *(v0 + 288) = *(v0 + 48);
    sub_10000B3A8(v0 + 288, &qword_1016A0AC0, &unk_1013926A0);
    *(v0 + 920) = v1;
    *(v0 + 912) = v2;

    swift_bridgeObjectRetain_n();
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v3, v4))
    {
      v50 = *(v0 + 720);
      v5 = *(v0 + 712);
      v6 = swift_slowAlloc();
      v51[0] = swift_slowAlloc();
      *v6 = 141558787;
      *(v6 + 4) = 1752392040;
      *(v6 + 12) = 2081;
      *(v6 + 14) = sub_1000136BC(v5, v50, v51);
      *(v6 + 22) = 2160;
      *(v6 + 24) = 1752392040;
      *(v6 + 32) = 2081;
      v7 = sub_1000136BC(v2, v1, v51);

      *(v6 + 34) = v7;
      _os_log_impl(&_mh_execute_header, v3, v4, "Continue to import url %{private,mask.hash}s with fetch token %{private,mask.hash}s.", v6, 0x2Au);
      swift_arrayDestroy();
    }

    else
    {
    }

    v15 = swift_task_alloc();
    *(v0 + 952) = v15;
    *v15 = v0;
    v15[1] = sub_1001F30F4;
    v16 = *(v0 + 704);
    v17 = *(v0 + 696);
    v18 = *(v0 + 664);

    return sub_1001E8930(v18, v17, v16);
  }

  else
  {

    v8 = *(v0 + 16);
    v9 = *(v0 + 24);
    *(v0 + 880) = v8;
    *(v0 + 888) = v9;
    if (v9)
    {

      *(v0 + 256) = *(v0 + 48);
      sub_10000B3A8(v0 + 256, &qword_1016A0AC0, &unk_1013926A0);

      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        v51[0] = v13;
        *v12 = 141558275;
        *(v12 + 4) = 1752392040;
        *(v12 + 12) = 2081;
        *(v12 + 14) = sub_1000136BC(v8, v9, v51);
        _os_log_impl(&_mh_execute_header, v10, v11, "Session token is invalid, so auth url is returned %{private,mask.hash}s", v12, 0x16u);
        sub_100007BAC(v13);
      }

      v14 = *(v0 + 728);

      return _swift_task_switch(sub_1001F27B8, v14, 0);
    }

    else
    {
      *(v0 + 240) = *(v0 + 48);
      sub_10000B3A8(v0 + 240, &qword_1016A0AC0, &unk_1013926A0);

      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.error.getter();

      v21 = os_log_type_enabled(v19, v20);
      v22 = *(v0 + 720);
      if (v21)
      {
        v23 = *(v0 + 712);
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v51[0] = v25;
        *v24 = 141558275;
        *(v24 + 4) = 1752392040;
        *(v24 + 12) = 2081;
        v26 = sub_1000136BC(v23, v22, v51);

        *(v24 + 14) = v26;
        _os_log_impl(&_mh_execute_header, v19, v20, "Invalid response from server for importing url (subsequent views) %{private,mask.hash}s", v24, 0x16u);
        sub_100007BAC(v25);
      }

      else
      {
      }

      sub_1002021D0();
      swift_allocError();
      *v27 = 10;
      swift_willThrow();
      (*(v0 + 744))(*(v0 + 584), *(v0 + 664), *(v0 + 544));
      swift_errorRetain();
      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.error.getter();

      v30 = os_log_type_enabled(v28, v29);
      v31 = *(v0 + 584);
      v32 = *(v0 + 552);
      v33 = *(v0 + 544);
      if (v30)
      {
        v34 = swift_slowAlloc();
        v51[0] = swift_slowAlloc();
        *v34 = 141558531;
        *(v34 + 4) = 1752392040;
        *(v34 + 12) = 2081;
        sub_100019348(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v35 = dispatch thunk of CustomStringConvertible.description.getter();
        v37 = v36;
        v38 = *(v32 + 8);
        v38(v31, v33);
        v39 = v38;
        v40 = sub_1000136BC(v35, v37, v51);

        *(v34 + 14) = v40;
        *(v34 + 22) = 2080;
        swift_getErrorValue();
        v41 = Error.localizedDescription.getter();
        v43 = sub_1000136BC(v41, v42, v51);

        *(v34 + 24) = v43;
        _os_log_impl(&_mh_execute_header, v28, v29, "startImportedSessionForSubsequentViews failed for importing share %{private,mask.hash}s: %s.", v34, 0x20u);
        swift_arrayDestroy();
      }

      else
      {

        v44 = *(v32 + 8);
        v44(v31, v33);
        v39 = v44;
      }

      v45 = *(v0 + 664);
      v46 = *(v0 + 544);
      swift_allocError();
      *v47 = 10;
      swift_willThrow();

      v39(v45, v46);

      v48 = *(v0 + 8);

      return v48();
    }
  }
}

uint64_t sub_1001F23B0()
{
  v27 = v0;

  (*(v0 + 744))(*(v0 + 584), *(v0 + 664), *(v0 + 544));
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v25 = v2;
    v3 = *(v0 + 584);
    v4 = *(v0 + 552);
    v5 = *(v0 + 544);
    v6 = swift_slowAlloc();
    v26[0] = swift_slowAlloc();
    *v6 = 141558531;
    *(v6 + 4) = 1752392040;
    *(v6 + 12) = 2081;
    sub_100019348(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    log = v1;
    v7 = dispatch thunk of CustomStringConvertible.description.getter();
    v9 = v8;
    v10 = *(v4 + 8);
    v10(v3, v5);
    v11 = sub_1000136BC(v7, v9, v26);

    *(v6 + 14) = v11;
    *(v6 + 22) = 2080;
    swift_getErrorValue();
    v12 = Error.localizedDescription.getter();
    v14 = sub_1000136BC(v12, v13, v26);

    *(v6 + 24) = v14;
    _os_log_impl(&_mh_execute_header, log, v25, "startImportedSessionForSubsequentViews failed for importing share %{private,mask.hash}s: %s.", v6, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
    v15 = *(v0 + 584);
    v16 = *(v0 + 552);
    v17 = *(v0 + 544);

    v18 = *(v16 + 8);
    v18(v15, v17);
    v10 = v18;
  }

  v19 = *(v0 + 664);
  v20 = *(v0 + 544);
  sub_1002021D0();
  swift_allocError();
  *v21 = 10;
  swift_willThrow();

  v10(v19, v20);

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_1001F27B8()
{
  v1 = *(v0 + 768);
  v2 = *(v0 + 728);
  v3 = *(v0 + 656);
  v4 = *(v0 + 544);
  v5 = (*(v0 + 332) + 24) & ~*(v0 + 332);
  (*(v0 + 744))(v3, *(v0 + 736), v4);
  v6 = swift_allocObject();
  *(v0 + 896) = v6;
  *(v6 + 16) = v2;
  v1(v6 + v5, v3, v4);

  v7 = swift_task_alloc();
  *(v0 + 904) = v7;
  *v7 = v0;
  v7[1] = sub_1001F2918;

  return unsafeBlocking<A>(context:_:)(v0 + 329, 0xD000000000000010, 0x800000010134A8C0, sub_10020343C, v6, &type metadata for Bool);
}

uint64_t sub_1001F2918()
{
  v1 = *(*v0 + 728);

  return _swift_task_switch(sub_1001F2A44, v1, 0);
}

uint64_t sub_1001F2A44()
{
  v1 = *(v0 + 384);
  *(v0 + 330) = *(v0 + 329);
  return _swift_task_switch(sub_1001F2A68, v1, 0);
}

uint64_t sub_1001F2A68(uint64_t a1)
{
  v2 = *(v1 + 330);
  v3 = Logger.logObject.getter();
  if (v2 == 1)
  {
    v4 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v3, v4))
    {
      goto LABEL_7;
    }

    v5 = "Successfully deleted session token because its been invalidated by the server.";
  }

  else
  {
    v4 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v3, v4))
    {
      goto LABEL_7;
    }

    v5 = "Failed to delete session token.";
  }

  v6 = swift_slowAlloc();
  *v6 = 0;
  _os_log_impl(&_mh_execute_header, v3, v4, v5, v6, 2u);

LABEL_7:
  v7 = *(v1 + 552);

  v8 = objc_allocWithZone(SPDelegatedShareImportResult);
  v9 = String._bridgeToObjectiveC()();

  v12 = [v8 initWithAuthUrl:v9];

  (*(v7 + 8))(*(v1 + 664), *(v1 + 544));

  v10 = *(v1 + 8);

  return v10(v12);
}

uint64_t sub_1001F2D14()
{
  v1 = *(v0 + 928);
  v2 = *(v0 + 1144);
  v3 = *(v0 + 728);
  v5 = *(v0 + 496);
  v4 = *(v0 + 504);
  sub_100203698(*(v0 + 520), v4, type metadata accessor for SessionTokenRecord);
  v6 = (v2 + 24) & ~v2;
  v7 = swift_allocObject();
  *(v0 + 936) = v7;
  *(v7 + 16) = v3;
  sub_100203304(v4, v7 + v6, type metadata accessor for SessionTokenRecord);
  v8 = (v7 + ((v5 + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v8 = sub_10020336C;
  v8[1] = v1;

  v9 = swift_task_alloc();
  *(v0 + 944) = v9;
  *v9 = v0;
  v9[1] = sub_1001F2EA0;

  return unsafeBlocking<A>(context:_:)(v9, 0xD000000000000010, 0x800000010134A8C0, sub_100203398, v7, &type metadata for () + 1);
}

uint64_t sub_1001F2EA0()
{
  v1 = *(*v0 + 728);

  return _swift_task_switch(sub_1001F2FCC, v1, 0);
}

uint64_t sub_1001F2FCC()
{
  v1 = *(v0 + 384);

  return _swift_task_switch(sub_1001F3038, v1, 0);
}

uint64_t sub_1001F3038()
{
  sub_100203700(v0[65], type metadata accessor for SessionTokenRecord);
  v1 = swift_task_alloc();
  v0[119] = v1;
  *v1 = v0;
  v1[1] = sub_1001F30F4;
  v2 = v0[88];
  v3 = v0[87];
  v4 = v0[83];

  return sub_1001E8930(v4, v3, v2);
}

uint64_t sub_1001F30F4()
{
  v2 = *v1;
  v2[120] = v0;

  if (v0)
  {
    v3 = v2[48];

    return _swift_task_switch(sub_1001F5ADC, v3, 0);
  }

  else
  {
    v4 = swift_task_alloc();
    v2[121] = v4;
    *v4 = v2;
    v4[1] = sub_1001F3298;
    v5 = v2[80];

    return sub_1001EA09C(v5);
  }
}

uint64_t sub_1001F3298()
{
  v2 = *v1;
  *(*v1 + 976) = v0;

  if (v0)
  {
    v3 = *(v2 + 384);

    v4 = sub_1001F5C90;
    v5 = v3;
  }

  else
  {
    v5 = *(v2 + 384);
    v4 = sub_1001F33E0;
  }

  return _swift_task_switch(v4, v5, 0);
}

uint64_t sub_1001F33E0()
{
  v20 = v0;
  (*(v0 + 744))(*(v0 + 632), *(v0 + 664), *(v0 + 544));

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 920);
    v4 = *(v0 + 912);
    v18 = *(v0 + 632);
    v5 = *(v0 + 552);
    v6 = *(v0 + 544);
    v7 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v7 = 141558787;
    *(v7 + 4) = 1752392040;
    *(v7 + 12) = 2081;
    *(v7 + 14) = sub_1000136BC(v4, v3, &v19);
    *(v7 + 22) = 2160;
    *(v7 + 24) = 1752392040;
    *(v7 + 32) = 2081;
    sub_100019348(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v8 = dispatch thunk of CustomStringConvertible.description.getter();
    v10 = v9;
    v11 = *(v5 + 8);
    v11(v18, v6);
    v12 = sub_1000136BC(v8, v10, &v19);

    *(v7 + 34) = v12;
    _os_log_impl(&_mh_execute_header, v1, v2, "Saving fetch token %{private,mask.hash}s for imported share %{private,mask.hash}s", v7, 0x2Au);
    swift_arrayDestroy();
  }

  else
  {
    v13 = *(v0 + 632);
    v14 = *(v0 + 552);
    v15 = *(v0 + 544);

    v11 = *(v14 + 8);
    v11(v13, v15);
  }

  *(v0 + 984) = v11;
  v16 = *(v0 + 728);

  return _swift_task_switch(sub_1001F3648, v16, 0);
}

uint64_t sub_1001F3648()
{

  v1 = swift_task_alloc();
  v0[124] = v1;
  v2 = type metadata accessor for BeaconKeyManager(0);
  v0[125] = v2;
  *v1 = v0;
  v1[1] = sub_1001F372C;
  v3 = v0[91];

  return unsafeBlocking<A>(context:_:)(v0 + 43, 0xD000000000000010, 0x800000010134A8C0, sub_1000D3168, v3, v2);
}

uint64_t sub_1001F372C()
{
  v1 = *(*v0 + 728);

  return _swift_task_switch(sub_1001F3844, v1, 0);
}

uint64_t sub_1001F3844()
{
  v1 = v0[48];
  v0[126] = v0[43];
  return _swift_task_switch(sub_1001F3868, v1, 0);
}

uint64_t sub_1001F3868()
{
  v1 = *(*(v0 + 1008) + OBJC_IVAR____TtC12searchpartyd16BeaconKeyManager_keyStore);
  *(v0 + 1016) = v1;

  v2 = getuid();
  sub_1000294F0(v2);

  return _swift_task_switch(sub_1001F3908, v1, 0);
}

uint64_t sub_1001F3908()
{
  v1 = *(v0[127] + 112);
  if (!v1)
  {

    sub_10020223C();
    v11 = swift_allocError();
    *v15 = 2;
    *(v15 + 4) = 1;
    swift_willThrow();
LABEL_7:

    goto LABEL_8;
  }

  v2 = sub_1002072CC();
  if (!v2)
  {

    sub_10020223C();
    v11 = swift_allocError();
    *v16 = 2;
    *(v16 + 4) = 1;
    swift_willThrow();

    goto LABEL_7;
  }

  v3 = v2;
  v36 = v0[115];
  v39 = v0[122];
  v4 = v0[83];
  v5 = v0[80];
  v6 = v0[78];
  v7 = v0[59];
  v8 = v0[56];
  v9 = v0[55];
  v31 = v0[114];
  v33 = v0[54];
  (*(v0[58] + 16))(v7, v1 + OBJC_IVAR____TtC12searchpartyd22ItemSharingKeyDatabase_importedBeaconAttributes, v0[57]);
  v10 = swift_task_alloc();
  v10[2] = v7;
  v10[3] = v5;
  v10[4] = v4;
  v10[5] = v6;
  v10[6] = v31;
  v10[7] = v36;
  v10[8] = v3;
  (*(v9 + 104))(v8, enum case for Connection.TransactionMode.deferred(_:), v33);
  Connection.transaction(_:block:)();
  v11 = v39;
  if (v39)
  {
    v12 = v0[58];
    v37 = v0[57];
    v40 = v0[59];
    v34 = v0[56];
    v14 = v0[54];
    v13 = v0[55];

    (*(v13 + 8))(v34, v14);

    (*(v12 + 8))(v40, v37);
LABEL_8:
    v0[129] = v11;
    v17 = v0[123];
    v18 = v0[78];
    v19 = v0[68];
    v20 = v0[48];
    v0[130] = (v0[69] + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v17(v18, v19);
    v21 = sub_1001F3FA4;
    v22 = v20;
    goto LABEL_9;
  }

  v32 = v0[68];
  v35 = v0[78];
  v23 = v0[58];
  v29 = v0[59];
  v30 = v0[69];
  v24 = v0[56];
  v28 = v0[57];
  v25 = v0[54];
  v26 = v0[55];
  v38 = v0[48];
  v41 = v0[123];

  (*(v26 + 8))(v24, v25);

  (*(v23 + 8))(v29, v28);
  v0[128] = (v30 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v41(v35, v32);
  v21 = sub_1001F3CBC;
  v22 = v38;
LABEL_9:

  return _swift_task_switch(v21, v22, 0);
}

uint64_t sub_1001F3CBC()
{
  v28 = v0;
  v1 = v0[93];
  v2 = v0[83];
  v3 = v0[76];
  v4 = v0[68];
  v1(v0[77], v0[80], v4);
  v1(v3, v2, v4);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[123];
  v9 = v0[77];
  v10 = v0[76];
  v11 = v0[68];
  if (v7)
  {
    log = v5;
    v12 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v12 = 141558787;
    *(v12 + 4) = 1752392040;
    *(v12 + 12) = 2081;
    sub_100019348(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v25 = v6;
    v15 = v14;
    v8(v9, v11);
    v16 = sub_1000136BC(v13, v15, &v27);

    *(v12 + 14) = v16;
    *(v12 + 22) = 2160;
    *(v12 + 24) = 1752392040;
    *(v12 + 32) = 2081;
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = v18;
    v8(v10, v11);
    v20 = sub_1000136BC(v17, v19, &v27);

    *(v12 + 34) = v20;
    _os_log_impl(&_mh_execute_header, log, v25, "Downloading public suffix keys for beacon id %{private,mask.hash}s\nfor share %{private,mask.hash}s.", v12, 0x2Au);
    swift_arrayDestroy();
  }

  else
  {

    v8(v10, v11);
    v8(v9, v11);
  }

  sub_1000035D0((v0[48] + 120), *(v0[48] + 144));
  v21 = swift_task_alloc();
  v0[131] = v21;
  *v21 = v0;
  v21[1] = sub_1001F4164;
  v22 = v0[83];
  v23 = v0[80];

  return sub_100C7535C(v22, v23);
}

uint64_t sub_1001F3FA4()
{
  v1 = v0[123];
  v2 = v0[83];
  v3 = v0[68];
  v1(v0[80], v3);
  v1(v2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1001F4164()
{
  v2 = *v1;
  v2[132] = v0;

  if (v0)
  {
    v3 = v2[48];

    return _swift_task_switch(sub_1001F42E0, v3, 0);
  }

  else
  {
    v4 = swift_task_alloc();
    v2[133] = v4;
    *v4 = v2;
    v4[1] = sub_1001F4924;
    v5 = v2[83];
    v6 = v2[80];
    v7 = v2[53];

    return sub_1001EABC8(v7, v6, v5);
  }
}

uint64_t sub_1001F42E0()
{
  v44 = v0;
  (*(v0 + 744))(*(v0 + 600), *(v0 + 664), *(v0 + 544));
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v42 = *(v0 + 984);
    v3 = *(v0 + 600);
    v4 = *(v0 + 544);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v43[0] = v7;
    *v5 = 141558531;
    *(v5 + 4) = 1752392040;
    *(v5 + 12) = 2081;
    sub_100019348(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v8 = dispatch thunk of CustomStringConvertible.description.getter();
    v10 = v9;
    v42(v3, v4);
    v11 = sub_1000136BC(v8, v10, v43);

    *(v5 + 14) = v11;
    *(v5 + 22) = 2112;
    swift_errorRetain();
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 24) = v12;
    *v6 = v12;
    _os_log_impl(&_mh_execute_header, v1, v2, "Unable to download keys and attributes for imported share %{private,mask.hash}s: %@", v5, 0x20u);
    sub_10000B3A8(v6, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v7);
  }

  else
  {
    v13 = *(v0 + 984);
    v14 = *(v0 + 600);
    v15 = *(v0 + 544);

    v13(v14, v15);
  }

  *(v0 + 352) = *(v0 + 1056);
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  if (swift_dynamicCast() && *(v0 + 328) == 1 && *(v0 + 320) > 5uLL)
  {
    v16 = *(v0 + 744);
    v17 = *(v0 + 664);
    v18 = *(v0 + 576);
    v19 = *(v0 + 544);

    v16(v18, v17, v19);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    v22 = os_log_type_enabled(v20, v21);
    v23 = *(v0 + 984);
    v24 = *(v0 + 576);
    v25 = *(v0 + 544);
    if (v22)
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v43[0] = v27;
      *v26 = 141558275;
      *(v26 + 4) = 1752392040;
      *(v26 + 12) = 2081;
      sub_100019348(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v28 = dispatch thunk of CustomStringConvertible.description.getter();
      v30 = v29;
      v23(v24, v25);
      v31 = sub_1000136BC(v28, v30, v43);

      *(v26 + 14) = v31;
      _os_log_impl(&_mh_execute_header, v20, v21, "Share %{private,mask.hash}s is revoked, not importing the share", v26, 0x16u);
      sub_100007BAC(v27);
    }

    else
    {

      v23(v24, v25);
    }

    v37 = *(v0 + 984);
    v38 = *(v0 + 664);
    v39 = *(v0 + 640);
    v40 = *(v0 + 544);
    swift_willThrow();
    v37(v39, v40);
    v37(v38, v40);

    v41 = *(v0 + 8);

    return v41();
  }

  else
  {

    v32 = swift_task_alloc();
    *(v0 + 1064) = v32;
    *v32 = v0;
    v32[1] = sub_1001F4924;
    v33 = *(v0 + 664);
    v34 = *(v0 + 640);
    v35 = *(v0 + 424);

    return sub_1001EABC8(v35, v34, v33);
  }
}

uint64_t sub_1001F4924(uint64_t a1)
{
  v3 = *v2;
  v3[134] = a1;
  v3[135] = v1;

  if (v1)
  {
    v4 = v3[48];

    v5 = sub_1001F5E44;
    v6 = v4;
  }

  else
  {
    v7 = v3[91];

    v5 = sub_1001F4A88;
    v6 = v7;
  }

  return _swift_task_switch(v5, v6, 0);
}

uint64_t sub_1001F4A88()
{

  v1 = swift_task_alloc();
  v0[136] = v1;
  *v1 = v0;
  v1[1] = sub_1001F4B60;
  v2 = v0[125];
  v3 = v0[91];

  return unsafeBlocking<A>(context:_:)(v0 + 45, 0xD000000000000010, 0x800000010134A8C0, sub_1000D3168, v3, v2);
}

uint64_t sub_1001F4B60()
{
  v1 = *(*v0 + 728);

  return _swift_task_switch(sub_1001F4C78, v1, 0);
}

uint64_t sub_1001F4C78()
{
  v0[137] = v0[45];
  v1 = swift_task_alloc();
  v0[138] = v1;
  *v1 = v0;
  v1[1] = sub_1001F4D14;
  v2 = v0[53];

  return sub_1012D29FC(v2);
}

uint64_t sub_1001F4D14()
{
  v2 = *v1;
  *(*v1 + 1112) = v0;

  if (v0)
  {
    v3 = *(v2 + 384);
    v4 = sub_1001F6004;
  }

  else
  {
    v5 = *(v2 + 384);

    v4 = sub_1001F4E3C;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1001F4E3C()
{
  v42 = v0;
  v39 = *(v0 + 768);
  v1 = *(v0 + 332);
  v2 = *(v0 + 744);
  v3 = *(v0 + 656);
  v4 = *(v0 + 640);
  v37 = v4;
  v5 = *(v0 + 560);
  v6 = *(v0 + 544);
  v31 = *(v0 + 416);
  v32 = *(v0 + 424);
  v33 = *(v0 + 400);
  v7 = *(v0 + 392);
  v34 = v7;
  v38 = *(v0 + 384);
  v35 = type metadata accessor for TaskPriority();
  v36 = *(*(v35 - 8) + 56);
  v36(v7, 1, 1, v35);
  v8 = v6;
  v2(v3, v4, v6);
  sub_100203698(v32, v31, type metadata accessor for SharedBeaconRecord);
  v9 = (v1 + 32) & ~v1;
  v10 = (v5 + v9 + *(v33 + 80)) & ~*(v33 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  v39(v11 + v9, v3, v8);
  sub_100203304(v31, v11 + v10, type metadata accessor for SharedBeaconRecord);
  sub_100A838D4(0, 0, v34, &unk_101392688, v11);

  v36(v34, 1, 1, v35);
  v2(v3, v37, v8);
  v13 = sub_100019348(&qword_101699B98, v12, type metadata accessor for ImportedShareUseCase, &unk_101392608);
  v14 = (v1 + 40) & ~v1;
  v15 = swift_allocObject();
  v15[2] = v38;
  v15[3] = v13;
  v15[4] = v38;
  v39(v15 + v14, v3, v8);
  swift_retain_n();
  sub_100A838D4(0, 0, v34, &unk_101392698, v15);

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();

  v18 = os_log_type_enabled(v16, v17);
  v19 = *(v0 + 720);
  if (v18)
  {
    v20 = *(v0 + 712);
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v41 = v22;
    *v21 = 141558275;
    *(v21 + 4) = 1752392040;
    *(v21 + 12) = 2081;
    v23 = sub_1000136BC(v20, v19, &v41);

    *(v21 + 14) = v23;
    _os_log_impl(&_mh_execute_header, v16, v17, "Successfully imported share for url %{private,mask.hash}s", v21, 0x16u);
    sub_100007BAC(v22);
  }

  else
  {
  }

  v24 = *(v0 + 1072);
  v25 = *(v0 + 984);
  v26 = *(v0 + 640);
  v27 = *(v0 + 544);
  v28 = *(v0 + 424);
  v40 = [objc_allocWithZone(SPDelegatedShareImportResult) initWithShare:v24];

  sub_100203700(v28, type metadata accessor for SharedBeaconRecord);
  v25(v26, v27);
  (*(v0 + 984))(*(v0 + 664), *(v0 + 544));

  v29 = *(v0 + 8);

  return v29(v40);
}

uint64_t sub_1001F53C8()
{
  v1 = *v0;
  v2 = *(*v0 + 720);
  v3 = *(*v0 + 680);
  v4 = *v0;

  v5 = swift_task_alloc();
  v1[141] = v5;
  *v5 = v4;
  v5[1] = sub_1001F556C;
  v6 = v1[89];
  v7 = v1[84];

  return sub_1001ED65C(v6, v2, v7, v3);
}

uint64_t sub_1001F556C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *v5;
  *(*v5 + 1136) = v4;

  if (v4)
  {
    v11 = v10[48];

    v12 = sub_1001F56E8;
    v13 = v11;
  }

  else
  {
    v14 = v10[48];

    v10[101] = a4;
    v10[102] = a3;
    v10[103] = a2;
    v10[104] = a1;
    v12 = sub_1001F14B0;
    v13 = v14;
  }

  return _swift_task_switch(v12, v13, 0);
}

uint64_t sub_1001F56E8()
{
  v25 = v0;
  (*(v0 + 744))(*(v0 + 592), *(v0 + 664), *(v0 + 544));
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v23 = v2;
    v3 = *(v0 + 592);
    v4 = *(v0 + 552);
    v5 = *(v0 + 544);
    v6 = swift_slowAlloc();
    v24[0] = swift_slowAlloc();
    *v6 = 141558531;
    *(v6 + 4) = 1752392040;
    *(v6 + 12) = 2081;
    sub_100019348(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v7 = dispatch thunk of CustomStringConvertible.description.getter();
    v9 = v8;
    v10 = *(v4 + 8);
    v10(v3, v5);
    v11 = sub_1000136BC(v7, v9, v24);

    *(v6 + 14) = v11;
    *(v6 + 22) = 2080;
    swift_getErrorValue();
    v12 = Error.localizedDescription.getter();
    v14 = sub_1000136BC(v12, v13, v24);

    *(v6 + 24) = v14;
    _os_log_impl(&_mh_execute_header, v1, v23, "startImportedSessionWithCallbackValue failed for importing share %{private,mask.hash}s: %s.", v6, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
    v15 = *(v0 + 592);
    v16 = *(v0 + 552);
    v17 = *(v0 + 544);

    v10 = *(v16 + 8);
    v10(v15, v17);
  }

  v18 = *(v0 + 664);
  v19 = *(v0 + 544);
  sub_1002021D0();
  swift_allocError();
  *v20 = 10;
  swift_willThrow();

  v10(v18, v19);

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_1001F5ADC()
{
  (*(v0[69] + 8))(v0[83], v0[68]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1001F5C90()
{
  (*(v0[69] + 8))(v0[83], v0[68]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1001F5E44()
{
  v1 = v0[123];
  v2 = v0[83];
  v3 = v0[68];
  v1(v0[80], v3);
  v1(v2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1001F6004()
{
  v60 = v0;
  v1 = *(v0 + 744);
  v2 = *(v0 + 664);
  v3 = *(v0 + 568);
  v4 = *(v0 + 544);

  v1(v3, v2, v4);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 984);
  v9 = *(v0 + 568);
  v10 = *(v0 + 544);
  if (v7)
  {
    v11 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v59 = v57;
    *v11 = 141558531;
    *(v11 + 4) = 1752392040;
    *(v11 + 12) = 2081;
    sub_100019348(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    v14 = v13;
    v8(v9, v10);
    v15 = sub_1000136BC(v12, v14, &v59);

    *(v11 + 14) = v15;
    *(v11 + 22) = 2112;
    swift_errorRetain();
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 24) = v16;
    *v55 = v16;
    _os_log_impl(&_mh_execute_header, v5, v6, "Unable to create key maps for imported share %{private,mask.hash}s: %@", v11, 0x20u);
    sub_10000B3A8(v55, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v57);
  }

  else
  {

    v8(v9, v10);
  }

  v56 = *(v0 + 768);
  v17 = *(v0 + 332);
  v18 = *(v0 + 744);
  v19 = *(v0 + 656);
  v20 = *(v0 + 640);
  v53 = v20;
  v21 = *(v0 + 560);
  v22 = *(v0 + 544);
  v47 = *(v0 + 416);
  v48 = *(v0 + 424);
  v49 = *(v0 + 400);
  v23 = *(v0 + 392);
  v50 = v23;
  v54 = *(v0 + 384);
  v51 = type metadata accessor for TaskPriority();
  v52 = *(*(v51 - 8) + 56);
  v52(v23, 1, 1, v51);
  v24 = v22;
  v18(v19, v20, v22);
  sub_100203698(v48, v47, type metadata accessor for SharedBeaconRecord);
  v25 = (v17 + 32) & ~v17;
  v26 = (v21 + v25 + *(v49 + 80)) & ~*(v49 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = 0;
  *(v27 + 24) = 0;
  v56(v27 + v25, v19, v24);
  sub_100203304(v47, v27 + v26, type metadata accessor for SharedBeaconRecord);
  sub_100A838D4(0, 0, v50, &unk_101392688, v27);

  v52(v50, 1, 1, v51);
  v18(v19, v53, v24);
  v29 = sub_100019348(&qword_101699B98, v28, type metadata accessor for ImportedShareUseCase, &unk_101392608);
  v30 = (v17 + 40) & ~v17;
  v31 = swift_allocObject();
  v31[2] = v54;
  v31[3] = v29;
  v31[4] = v54;
  v56(v31 + v30, v19, v24);
  swift_retain_n();
  sub_100A838D4(0, 0, v50, &unk_101392698, v31);

  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.default.getter();

  v34 = os_log_type_enabled(v32, v33);
  v35 = *(v0 + 720);
  if (v34)
  {
    v36 = *(v0 + 712);
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v59 = v38;
    *v37 = 141558275;
    *(v37 + 4) = 1752392040;
    *(v37 + 12) = 2081;
    v39 = sub_1000136BC(v36, v35, &v59);

    *(v37 + 14) = v39;
    _os_log_impl(&_mh_execute_header, v32, v33, "Successfully imported share for url %{private,mask.hash}s", v37, 0x16u);
    sub_100007BAC(v38);
  }

  else
  {
  }

  v40 = *(v0 + 1072);
  v41 = *(v0 + 984);
  v42 = *(v0 + 640);
  v43 = *(v0 + 544);
  v44 = *(v0 + 424);
  v58 = [objc_allocWithZone(SPDelegatedShareImportResult) initWithShare:v40];

  sub_100203700(v44, type metadata accessor for SharedBeaconRecord);
  v41(v42, v43);
  (*(v0 + 984))(*(v0 + 664), *(v0 + 544));

  v45 = *(v0 + 8);

  return v45(v58);
}

void sub_1001F679C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SessionTokenRecord(0);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v34 - v8;
  v10 = sub_1000BC4D4(&qword_101699BA0, &qword_1013D6AB0);
  __chkstk_darwin(v10);
  v12 = (&v34 - v11);
  sub_1000D2A70(a1, &v34 - v11, &qword_101699BA0, &qword_1013D6AB0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = *v12;
    if (qword_101694780 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_1000076D4(v14, qword_10177AE40);
    sub_100203698(a2, v7, type metadata accessor for SessionTokenRecord);
    swift_errorRetain();
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      *v17 = 141558531;
      *(v17 + 4) = 1752392040;
      *(v17 + 12) = 2081;
      type metadata accessor for UUID();
      sub_100019348(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v18 = dispatch thunk of CustomStringConvertible.description.getter();
      v20 = v19;
      sub_100203700(v7, type metadata accessor for SessionTokenRecord);
      v21 = sub_1000136BC(v18, v20, &v35);

      *(v17 + 14) = v21;
      *(v17 + 22) = 2082;
      v34 = v13;
      swift_errorRetain();
      sub_1000BC4D4(&qword_101696960, &unk_10138B220);
      v22 = String.init<A>(describing:)();
      v24 = sub_1000136BC(v22, v23, &v35);

      *(v17 + 24) = v24;
      _os_log_impl(&_mh_execute_header, v15, v16, "Failed to save SessionTokenRecord:\n%{private,mask.hash}s: %{public}s.", v17, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      sub_100203700(v7, type metadata accessor for SessionTokenRecord);
    }
  }

  else
  {
    if (qword_101694780 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_1000076D4(v25, qword_10177AE40);
    sub_100203698(a2, v9, type metadata accessor for SessionTokenRecord);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v35 = v29;
      *v28 = 141558275;
      *(v28 + 4) = 1752392040;
      *(v28 + 12) = 2081;
      type metadata accessor for UUID();
      sub_100019348(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v30 = dispatch thunk of CustomStringConvertible.description.getter();
      v32 = v31;
      sub_100203700(v9, type metadata accessor for SessionTokenRecord);
      v33 = sub_1000136BC(v30, v32, &v35);

      *(v28 + 14) = v33;
      _os_log_impl(&_mh_execute_header, v26, v27, "Saved session token record %{private,mask.hash}s", v28, 0x16u);
      sub_100007BAC(v29);
    }

    else
    {

      sub_100203700(v9, type metadata accessor for SessionTokenRecord);
    }

    sub_10000B3A8(v12, &qword_101699BA0, &qword_1013D6AB0);
  }
}

uint64_t sub_1001F6D20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = type metadata accessor for UUID();
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();

  return _swift_task_switch(sub_1001F6DE0, 0, 0);
}

uint64_t sub_1001F6DE0()
{
  v21 = v0;
  if (qword_101694780 != -1)
  {
    swift_once();
  }

  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  v4 = v0[2];
  v5 = type metadata accessor for Logger();
  v0[7] = sub_1000076D4(v5, qword_10177AE40);
  (*(v2 + 16))(v1, v4, v3);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[5];
  v9 = v0[6];
  v11 = v0[4];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v20 = v13;
    *v12 = 141558275;
    *(v12 + 4) = 1752392040;
    *(v12 + 12) = 2081;
    sub_100019348(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    (*(v10 + 8))(v9, v11);
    v17 = sub_1000136BC(v14, v16, &v20);

    *(v12 + 14) = v17;
    _os_log_impl(&_mh_execute_header, v6, v7, "Initial fetch of locations for imported beacon id %{private,mask.hash}s", v12, 0x16u);
    sub_100007BAC(v13);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v18 = swift_task_alloc();
  v0[8] = v18;
  *v18 = v0;
  v18[1] = sub_1001F7068;

  return daemon.getter();
}

uint64_t sub_1001F7068(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  v2[9] = a1;

  v3 = swift_task_alloc();
  v2[10] = v3;
  v4 = type metadata accessor for Daemon();
  v2[11] = v4;
  v5 = type metadata accessor for LegacyServiceContainer();
  v6 = sub_100019348(&qword_1016AA400, 255, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100019348(&unk_101698D70, 255, type metadata accessor for LegacyServiceContainer, &unk_1014015E0);
  *v3 = v9;
  v3[1] = sub_1001F7250;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_1001F7250(uint64_t a1)
{
  v4 = *v2;
  *(v4 + 96) = a1;
  *(v4 + 104) = v1;

  if (v1)
  {

    v5 = sub_1001F7620;
    v6 = 0;
  }

  else
  {
    v5 = sub_1001F738C;
    v6 = a1;
  }

  return _swift_task_switch(v5, v6, 0);
}

uint64_t sub_1001F738C()
{
  v1 = *(v0 + 104);
  sub_10001B108();
  *(v0 + 112) = v2;
  if (v1)
  {

    sub_100019348(&qword_1016969E0, 255, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
    v3 = dispatch thunk of Actor.unownedExecutor.getter();
    v5 = v4;
    v6 = sub_1001F75AC;
  }

  else
  {
    sub_100019348(&qword_1016969E0, 255, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
    v3 = dispatch thunk of Actor.unownedExecutor.getter();
    v5 = v7;
    v6 = sub_1001F74BC;
  }

  return _swift_task_switch(v6, v3, v5);
}

uint64_t sub_1001F74BC()
{

  return _swift_task_switch(sub_1001F7530, 0, 0);
}

uint64_t sub_1001F7530()
{
  sub_1004ABE08(*(v0 + 24));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001F75AC()
{

  return _swift_task_switch(sub_1001F7620, 0, 0);
}

uint64_t sub_1001F7620(uint64_t a1)
{
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "No BeaconManagerService available.", v4, 2u);
  }

  v5 = type metadata accessor for Daemon.Error();
  sub_100019348(&qword_101697368, 255, &type metadata accessor for Daemon.Error, &protocol conformance descriptor for Daemon.Error);
  swift_allocError();
  *v6 = 0xD000000000000014;
  v6[1] = 0x800000010134D3C0;
  (*(*(v5 - 8) + 104))(v6, enum case for Daemon.Error.missingService(_:), v5);
  swift_willThrow();

  v7 = *(v1 + 8);

  return v7();
}

uint64_t sub_1001F77C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_100014650;

  return sub_1001F7860(a5);
}

uint64_t sub_1001F7860(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = type metadata accessor for Connection.TransactionMode();
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();
  v4 = type metadata accessor for Table();
  v2[10] = v4;
  v2[11] = *(v4 - 8);
  v2[12] = swift_task_alloc();
  v5 = type metadata accessor for UUID();
  v2[13] = v5;
  v2[14] = *(v5 - 8);
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  sub_1000BC4D4(&qword_1016AA430, &unk_101392650);
  v2[18] = swift_task_alloc();
  v6 = type metadata accessor for ObservedAdvertisement.BeaconIndexInformation(0);
  v2[19] = v6;
  v2[20] = *(v6 - 8);
  v2[21] = swift_task_alloc();
  v7 = type metadata accessor for BeaconKeyManager.IndexInformation(0);
  v2[22] = v7;
  v2[23] = *(v7 - 8);
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v2[27] = swift_task_alloc();
  sub_1000BC4D4(&unk_1016C1120, &qword_1013C49D0);
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  v8 = type metadata accessor for ObservedAdvertisement(0);
  v2[30] = v8;
  v2[31] = *(v8 - 8);
  v2[32] = swift_task_alloc();
  v2[33] = swift_task_alloc();
  v2[34] = swift_task_alloc();
  v2[35] = swift_task_alloc();
  v2[36] = swift_task_alloc();
  v2[37] = swift_task_alloc();
  v2[38] = swift_task_alloc();
  v2[39] = swift_task_alloc();
  v9 = swift_task_alloc();
  v2[40] = v9;
  *v9 = v2;
  v9[1] = sub_1001F7C54;

  return daemon.getter();
}

uint64_t sub_1001F7C54(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  v2[41] = a1;

  v3 = swift_task_alloc();
  v2[42] = v3;
  v4 = type metadata accessor for Daemon();
  v2[43] = v4;
  v5 = type metadata accessor for ObservationStoreService();
  v6 = sub_100019348(&qword_1016AA400, 255, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v2[44] = v6;
  v7 = sub_100019348(&qword_1016AA450, 255, type metadata accessor for ObservationStoreService, &unk_101404B80);
  *v3 = v9;
  v3[1] = sub_1001F7E48;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_1001F7E48(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(*v2 + 360) = a1;

  if (v1)
  {
    v5 = *(v3 + 48);

    return _swift_task_switch(sub_1001FA82C, v5, 0);
  }

  else
  {

    v6 = swift_task_alloc();
    *(v3 + 368) = v6;
    *v6 = v4;
    v6[1] = sub_1001F800C;

    return sub_1010CC680(45.0);
  }
}

uint64_t sub_1001F800C(uint64_t a1)
{
  v3 = *v2;
  v3[47] = a1;
  v3[48] = v1;

  if (v1)
  {
    v4 = v3[6];

    return _swift_task_switch(sub_1001FAB04, v4, 0);
  }

  else
  {
    v5 = swift_task_alloc();
    v3[49] = v5;
    *v5 = v3;
    v5[1] = sub_1001F8178;

    return daemon.getter();
  }
}

uint64_t sub_1001F8178(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *v1;
  *(v3 + 400) = a1;

  v5 = swift_task_alloc();
  *(v3 + 408) = v5;
  v6 = type metadata accessor for LegacyServiceContainer();
  v7 = sub_100019348(&unk_101698D70, 255, type metadata accessor for LegacyServiceContainer, &unk_1014015E0);
  *v5 = v4;
  v5[1] = sub_1001F8330;
  v8 = *(v2 + 352);
  v9 = *(v2 + 344);

  return ActorServiceDaemon.getService<A>()(v9, v6, v8, v7);
}

uint64_t sub_1001F8330(uint64_t a1)
{
  v4 = *v2;
  v4[52] = a1;
  v4[53] = v1;

  if (v1)
  {

    v5 = v4[6];
    v6 = sub_1001F87B0;
  }

  else
  {
    v6 = sub_1001F8474;
    v5 = a1;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1001F8474()
{
  v1 = *(v0 + 424);
  sub_10001B108();
  *(v0 + 432) = v2;
  if (v1)
  {

    sub_100019348(&qword_1016969E0, 255, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
    v3 = dispatch thunk of Actor.unownedExecutor.getter();
    v5 = v4;
    v6 = sub_1001F873C;
  }

  else
  {
    sub_100019348(&qword_1016969E0, 255, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
    v3 = dispatch thunk of Actor.unownedExecutor.getter();
    v5 = v7;
    v6 = sub_1001F85A4;
  }

  return _swift_task_switch(v6, v3, v5);
}

uint64_t sub_1001F85A4()
{
  v1 = *(v0 + 48);

  return _swift_task_switch(sub_1001F861C, v1, 0);
}