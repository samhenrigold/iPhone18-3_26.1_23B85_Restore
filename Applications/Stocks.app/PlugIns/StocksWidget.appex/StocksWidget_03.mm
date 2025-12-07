unint64_t sub_100059C54()
{
  v1 = *v0;
  v2 = 1702125924;
  v3 = 0xD000000000000012;
  v4 = 0xD000000000000018;
  if (v1 != 4)
  {
    v4 = 0x726F7272457369;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6C65646F6DLL;
  if (v1 != 1)
  {
    v5 = 0x65746F7571;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100059D04@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10005A4EC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100059D38(uint64_t a1)
{
  v2 = sub_10005A048();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100059D74(uint64_t a1)
{
  v2 = sub_10005A048();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100059DB0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000D9090();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

void sub_100059E4C(uint64_t a1)
{
  if (!qword_100117178)
  {
    sub_100059ECC(255, &qword_100117180, &type metadata accessor for ExchangeStatus);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_100117178);
    }
  }
}

void sub_100059ECC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1000DBE80();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_100059F20(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_100059ECC(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_100059F8C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_100059ECC(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100059FE8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_10005A048()
{
  result = qword_100117198;
  if (!qword_100117198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100117198);
  }

  return result;
}

uint64_t sub_10005A09C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DetailContentViewModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10005A100(uint64_t a1, uint64_t a2)
{
  sub_100059ECC(0, &qword_100114B58, &type metadata accessor for WidgetQuote);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10005A180(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_10005A1E8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_10005A048();
    v7 = a3(a1, &type metadata for DetailTimelineEntry.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_10005A24C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t getEnumTagSinglePayload for DetailTimelineEntry.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for DetailTimelineEntry.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_10005A3E8()
{
  result = qword_1001171E8;
  if (!qword_1001171E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001171E8);
  }

  return result;
}

unint64_t sub_10005A440()
{
  result = qword_1001171F0;
  if (!qword_1001171F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001171F0);
  }

  return result;
}

unint64_t sub_10005A498()
{
  result = qword_1001171F8;
  if (!qword_1001171F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001171F8);
  }

  return result;
}

uint64_t sub_10005A4EC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1702125924 && a2 == 0xE400000000000000;
  if (v3 || (sub_1000DC360() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C65646F6DLL && a2 == 0xE500000000000000 || (sub_1000DC360() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65746F7571 && a2 == 0xE500000000000000 || (sub_1000DC360() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001000E8BE0 == a2 || (sub_1000DC360() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001000E8C00 == a2 || (sub_1000DC360() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x726F7272457369 && a2 == 0xE700000000000000)
  {

    return 5;
  }

  else
  {
    v6 = sub_1000DC360();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

Swift::Double __swiftcall Double.percentChange(with:)(Swift::Double with)
{
  v2 = v1 - with;
  result = with / v2;
  if (v2 <= 0.0)
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_10005A790()
{
  *(v0 + 48) = *(*(v0 + 40) + OBJC_IVAR____TtC12StocksWidget24TodayPrivateDataProvider_cache);
  sub_1000DA0D0();
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = [*(v0 + 16) bundleSubscription];
    if (v2)
    {
      v3 = v2;
      v4 = [v2 bundleChannelIDs];
      v5 = [v4 count];

      if (v5 >= 1)
      {
        v6 = sub_1000DA350();
        v7 = sub_1000DBDD0();
        if (os_log_type_enabled(v6, v7))
        {
          v8 = swift_slowAlloc();
          *v8 = 0;
          _os_log_impl(&_mh_execute_header, v6, v7, "Skipping today dropbox to use cached value", v8, 2u);
        }

        v9 = *(v0 + 8);

        return v9(v1);
      }
    }

    swift_unknownObjectRelease();
  }

  v11 = sub_1000DA350();
  v12 = sub_1000DBDD0();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "Peeking at today dropbox", v13, 2u);
  }

  v14 = *(v0 + 40);

  *(v0 + 56) = *(v14 + 112);

  return _swift_task_switch(sub_10005A9D0, 0, 0);
}

uint64_t sub_10005A9D0()
{
  v1 = v0[7];
  v2 = swift_task_alloc();
  v0[8] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[9] = v3;
  v4 = sub_10005B368();
  *v3 = v0;
  v3[1] = sub_10005AAB4;

  return withCancellation<A>(after:operation:)(v0 + 3, 5000000000000000000, 0, &unk_1000E0D60, v2, v4);
}

uint64_t sub_10005AAB4()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_10005AC80;
  }

  else
  {

    v2 = sub_10005ABD0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10005ABD0()
{
  v1 = v0[5];
  v0[11] = v0[3];
  return _swift_task_switch(sub_10005ABF4, v1, 0);
}

uint64_t sub_10005ABF4()
{
  v1 = v0[5];
  v0[4] = v0[11];
  swift_unknownObjectRetain();
  sub_1000DA0E0();
  sub_10005AD50(v1);
  v2 = v0[11];
  v3 = v0[1];

  return v3(v2);
}

uint64_t sub_10005AC80()
{
  v1 = *(v0 + 40);

  return _swift_task_switch(sub_10005ACEC, v1, 0);
}

uint64_t sub_10005ACEC()
{
  sub_10005AD50(*(v0 + 40));
  v1 = *(v0 + 8);

  return v1();
}

void sub_10005AD50(uint64_t a1)
{
  oslog = sub_1000DA350();
  v1 = sub_1000DBDD0();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v1, "Did peek at today dropbox", v2, 2u);
  }
}

uint64_t sub_10005ADFC()
{
  v1 = OBJC_IVAR____TtC12StocksWidget24TodayPrivateDataProvider_logger;
  v2 = sub_1000DA370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t type metadata accessor for TodayPrivateDataProvider(uint64_t a1)
{
  result = qword_100117240;
  if (!qword_100117240)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10005AEE0(uint64_t a1)
{
  result = sub_1000DA370();
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

unint64_t sub_10005AFB8()
{
  result = qword_1001172F0;
  if (!qword_1001172F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001172F0);
  }

  return result;
}

uint64_t sub_10005B018(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_10005B038, 0, 0);
}

uint64_t sub_10005B038()
{
  v1 = v0[3];
  v2 = swift_allocObject();
  v0[4] = v2;
  *(v2 + 16) = v1;
  v3 = v1;
  v4 = swift_task_alloc();
  v0[5] = v4;
  v5 = sub_10005B368();
  *v4 = v0;
  v4[1] = sub_10005B128;
  v6 = v0[2];

  return withEagerCancellation<A>(_:)(v6, &unk_1000E0D70, v2, v5);
}

uint64_t sub_10005B128()
{
  v2 = *v1;
  *(v2 + 48) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10005B264, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_10005B264()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10005B2C8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10001079C;

  return sub_10005B018(a1, v4);
}

unint64_t sub_10005B368()
{
  result = qword_100115D40;
  if (!qword_100115D40)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_100115D40);
  }

  return result;
}

uint64_t sub_10005B3CC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_10005B3EC, 0, 0);
}

uint64_t sub_10005B3EC()
{
  v1 = v0[3];
  v2 = swift_task_alloc();
  v0[4] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[5] = v3;
  v4 = sub_10005B368();
  *v3 = v0;
  v3[1] = sub_10005B4E8;
  v5 = v0[2];

  return withCheckedContinuation<A>(isolation:function:_:)(v5, 0, 0, 0xD000000000000011, 0x80000001000E8C80, sub_10005B930, v2, v4);
}

uint64_t sub_10005B4E8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void sub_10005B5FC(uint64_t a1, void *a2)
{
  sub_10005B938(0);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v4);
  (*(v6 + 16))(aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v5, v8);
  v9 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v10 = swift_allocObject();
  (*(v6 + 32))(v10 + v9, aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  aBlock[4] = sub_10005BA28;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10005B7F8;
  aBlock[3] = &unk_100109F98;
  v11 = _Block_copy(aBlock);

  [a2 peekWithAccessor:v11];
  _Block_release(v11);
}

uint64_t sub_10005B7A0(uint64_t a1)
{
  sub_10005B938(0);
  swift_unknownObjectRetain();
  return sub_1000DBBF0();
}

uint64_t sub_10005B7F8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t sub_10005B858()
{

  return swift_deallocObject();
}

uint64_t sub_10005B890(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000ECF4;

  return sub_10005B3CC(a1, v4);
}

void sub_10005B938(uint64_t a1)
{
  if (!qword_100117300)
  {
    sub_10005B368();
    v1 = sub_1000DBC00();
    if (!v2)
    {
      atomic_store(v1, &qword_100117300);
    }
  }
}

uint64_t sub_10005B9A0()
{
  sub_10005B938(0);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_10005BA28(uint64_t a1)
{
  sub_10005B938(0);

  return sub_10005B7A0(a1);
}

uint64_t sub_10005BA98(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10005BAB0(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2 & 1;
  *(v10 + 32) = a3;
  *(v10 + 40) = a4 & 1;
  sub_1000DB2B0();
}

double sub_10005BB90()
{
  sub_10004CAC0();
  sub_1000DAC20();
  return v1;
}

void *sub_10005BBD0(void *result, uint64_t a2, char a3, uint64_t a4, char a5)
{
  if (a3)
  {
    if (a5)
    {
      return result;
    }

LABEL_5:
    result[2] = a4;
    return result;
  }

  *result = a2;
  if ((a5 & 1) == 0)
  {
    goto LABEL_5;
  }

  return result;
}

void *sub_10005BC04(void *result)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  if (*(v1 + 24))
  {
    if (*(v1 + 40))
    {
      return result;
    }

LABEL_5:
    result[2] = v2;
    return result;
  }

  *result = *(v1 + 16);
  if ((v3 & 1) == 0)
  {
    goto LABEL_5;
  }

  return result;
}

double sub_10005BC40@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t sub_10005BC4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_10005BCB0();

  return static EnvironmentKey<>._valuesEqual(_:_:)(a1, a2, a3, a4, v8);
}

unint64_t sub_10005BCB0()
{
  result = qword_100117310;
  if (!qword_100117310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100117310);
  }

  return result;
}

__n128 sub_10005BD10(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10005BD24(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 41))
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

uint64_t sub_10005BD80(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_10005BE0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v6 = sub_10004C554();
  sub_10004C554();
  v8 = v7;
  sub_10005CC78(0);
  v10 = a2 + *(v9 + 36);
  *v10 = v5;
  *(v10 + 8) = v6;
  *(v10 + 16) = v8;
  *(v10 + 24) = swift_getKeyPath();
  *(v10 + 32) = 0;
  v11 = *(type metadata accessor for TextOverflowModifier(0) + 32);
  *(v10 + v11) = swift_getKeyPath();
  sub_10005CF6C(0, &qword_100116C18, &type metadata accessor for Font.Context, &type metadata accessor for Environment.Content);
  swift_storeEnumTagMultiPayload();
  sub_10005D5A8(0, &qword_100117320, sub_10002E25C, &type metadata for OverflowIntoTextMarginsModifier, &type metadata accessor for _ViewModifier_Content);
  (*(*(v12 - 8) + 16))(a2, a1, v12);
  KeyPath = swift_getKeyPath();
  sub_10005CDE0(0);
  v15 = a2 + *(v14 + 36);
  *v15 = KeyPath;
  *(v15 + 8) = 0u;
  *(v15 + 24) = 0u;
}

uint64_t sub_10005BFC8()
{
  v1 = sub_1000DB020();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = (v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_1000DAC10();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*v0)
  {
    v15[0] = v7;
    v10 = *(v0 + 24);
    v11 = *(v0 + 32);

    if ((v11 & 1) == 0)
    {
      sub_1000DBDC0();
      v12 = sub_1000DAED0();
      sub_1000DA330();

      sub_1000DAC00();
      swift_getAtKeyPath();
      j__swift_release(v10);
      (*(v6 + 8))(v9, v15[0]);
      v10 = v15[1];
    }

    if (!v10)
    {
      sub_1000DAF70();
    }
  }

  type metadata accessor for TextOverflowModifier(0);

  sub_10004CF58(v4);
  v13 = sub_1000DAF50();

  (*(v2 + 8))(v4, v1);
  return v13;
}

uint64_t sub_10005C200()
{
  v0 = sub_1000DA730();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v16 - v5;
  sub_10005CF6C(0, &qword_100117458, &type metadata accessor for LayoutSubview, &type metadata accessor for Optional);
  __chkstk_darwin(v7 - 8);
  v9 = &v16 - v8;
  v10 = sub_1000DA7F0();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002BC88(v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_10005D8FC(v9);
    return sub_1000DA700();
  }

  else
  {
    (*(v11 + 32))(v13, v9, v10);
    sub_1000DA720();
    sub_1000DA7E0();
    sub_1000DAF10();
    sub_1000DA710();
    v15 = *(v1 + 8);
    v15(v3, v0);
    v15(v6, v0);
    return (*(v11 + 8))(v13, v10);
  }
}

uint64_t sub_10005C49C(uint64_t a1, char a2, uint64_t a3, char a4)
{
  v18[0] = a1;
  v18[1] = a3;
  v6 = sub_1000DA870();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005CF6C(0, &qword_100117458, &type metadata accessor for LayoutSubview, &type metadata accessor for Optional);
  __chkstk_darwin(v10 - 8);
  v12 = v18 - v11;
  v13 = sub_1000DA7F0();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = v18 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002BC88(v12);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    return sub_10005D8FC(v12);
  }

  (*(v14 + 32))(v16, v12, v13);
  v20 = a2 & 1;
  v19 = a4 & 1;
  sub_1000DA7B0();
  sub_1000DAC50();
  sub_1000DA880();
  sub_1000DAC60();
  sub_1000DA880();
  sub_1000DAC70();
  sub_1000DA880();
  sub_1000DAC40();
  sub_1000DA880();
  sub_1000DA850();
  sub_1000DA860();
  (*(v7 + 8))(v9, v6);
  return (*(v14 + 8))(v16, v13);
}

uint64_t sub_10005C7C0(uint64_t a1, char a2, uint64_t a3, char a4, double a5, double a6, double a7, double a8, double a9, double a10)
{
  v28 = a1;
  v29 = a3;
  v12 = sub_1000DA870();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005CF6C(0, &qword_100117458, &type metadata accessor for LayoutSubview, &type metadata accessor for Optional);
  __chkstk_darwin(v16 - 8);
  v18 = &v26 - v17;
  v19 = sub_1000DA7F0();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v26 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002BC88(v18);
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    return sub_10005D8FC(v18);
  }

  (*(v20 + 32))(v22, v18, v19);
  v24 = a2 & 1;
  v33 = v24;
  v25 = a4 & 1;
  v32 = v25;
  v27 = v12;
  sub_1000DA7B0();
  sub_1000DAC50();
  sub_1000DA880();
  sub_1000DAC60();
  sub_1000DA880();
  sub_1000DAC70();
  sub_1000DA880();
  sub_1000DAC40();
  sub_1000DA880();
  (*(v13 + 8))(v15, v27);
  sub_1000DB670();
  v31 = v24;
  v30 = v25;
  sub_1000DA7D0();
  return (*(v20 + 8))(v22, v19);
}

void (*sub_10005CB24(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1000DA670();
  return sub_100027D30;
}

uint64_t sub_10005CBD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_10005BFC8();
  CapHeight = CTFontGetCapHeight(v5);

  *a2 = CapHeight;
  *(a2 + 8) = *(v2 + 8);
  sub_10005D4D8(0);
  v8 = *(v7 + 44);
  sub_10005D664(0);
  v10 = *(*(v9 - 8) + 16);

  return v10(a2 + v8, a1, v9);
}

void sub_10005CC78(uint64_t a1)
{
  if (!qword_100117318)
  {
    sub_10005D5A8(255, &qword_100117320, sub_10002E25C, &type metadata for OverflowIntoTextMarginsModifier, &type metadata accessor for _ViewModifier_Content);
    type metadata accessor for TextOverflowModifier(255);
    v1 = sub_1000DA930();
    if (!v2)
    {
      atomic_store(v1, &qword_100117318);
    }
  }
}

uint64_t type metadata accessor for TextOverflowModifier(uint64_t a1)
{
  result = qword_100117398;
  if (!qword_100117398)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10005CD64@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000DAB50();
  *a1 = result;
  return result;
}

void sub_10005CDE0(uint64_t a1)
{
  if (!qword_100117328)
  {
    sub_10005CC78(255);
    sub_100032968(255, &qword_100117330, &type metadata for EdgeInsets, &type metadata accessor for _EnvironmentKeyWritingModifier);
    v1 = sub_1000DA930();
    if (!v2)
    {
      atomic_store(v1, &qword_100117328);
    }
  }
}

uint64_t sub_10005CE80(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    sub_10005CF6C(0, &qword_100117338, &type metadata accessor for Font.Context, &type metadata accessor for Environment);
    v10 = v9;
    v11 = *(*(v9 - 8) + 48);
    v12 = a1 + *(a3 + 32);

    return v11(v12, a2, v10);
  }
}

void sub_10005CF6C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void *sub_10005CFE4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    sub_10005CF6C(0, &qword_100117338, &type metadata accessor for Font.Context, &type metadata accessor for Environment);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 32);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

void sub_10005D0B8(uint64_t a1)
{
  sub_100032968(319, &qword_1001158F0, &type metadata for Font, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    sub_10005D1B8(319);
    if (v2 <= 0x3F)
    {
      sub_10005CF6C(319, &qword_100117338, &type metadata accessor for Font.Context, &type metadata accessor for Environment);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10005D1B8(uint64_t a1)
{
  if (!qword_1001173A8)
  {
    sub_100032968(255, &qword_1001158F0, &type metadata for Font, &type metadata accessor for Optional);
    v1 = sub_1000DA6C0();
    if (!v2)
    {
      atomic_store(v1, &qword_1001173A8);
    }
  }
}

unint64_t sub_10005D238()
{
  result = qword_1001173E8;
  if (!qword_1001173E8)
  {
    sub_10005CDE0(255);
    sub_10005D2B8();
    sub_10005D440();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001173E8);
  }

  return result;
}

unint64_t sub_10005D2B8()
{
  result = qword_1001173F0;
  if (!qword_1001173F0)
  {
    sub_10005CC78(255);
    sub_10005D368();
    sub_10005D3F8(&qword_100117400, type metadata accessor for TextOverflowModifier, &unk_1000E0F58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001173F0);
  }

  return result;
}

unint64_t sub_10005D368()
{
  result = qword_1001173F8;
  if (!qword_1001173F8)
  {
    sub_10005D5A8(255, &qword_100117320, sub_10002E25C, &type metadata for OverflowIntoTextMarginsModifier, &type metadata accessor for _ViewModifier_Content);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001173F8);
  }

  return result;
}

uint64_t sub_10005D3F8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10005D440()
{
  result = qword_100117408;
  if (!qword_100117408)
  {
    sub_100032968(255, &qword_100117330, &type metadata for EdgeInsets, &type metadata accessor for _EnvironmentKeyWritingModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100117408);
  }

  return result;
}

void sub_10005D4D8(uint64_t a1)
{
  if (!qword_100117410)
  {
    sub_10005D5A8(255, &qword_100117418, sub_10005D610, &type metadata for TextOverflowModifier.Layout, &type metadata accessor for _LayoutRoot);
    sub_10005D664(255);
    sub_10005D828(&qword_100117430, &protocol conformance descriptor for _LayoutRoot<A>);
    v1 = sub_1000DA800();
    if (!v2)
    {
      atomic_store(v1, &qword_100117410);
    }
  }
}

void sub_10005D5A8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_10005D610()
{
  result = qword_100117420;
  if (!qword_100117420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100117420);
  }

  return result;
}

void sub_10005D664(uint64_t a1)
{
  if (!qword_100117428)
  {
    type metadata accessor for TextOverflowModifier(255);
    sub_10005D3F8(&qword_100117400, type metadata accessor for TextOverflowModifier, &unk_1000E0F58);
    v1 = sub_1000DADC0();
    if (!v2)
    {
      atomic_store(v1, &qword_100117428);
    }
  }
}

uint64_t getEnumTagSinglePayload for TextOverflowModifier.Layout(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for TextOverflowModifier.Layout(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 24) = v3;
  return result;
}

unint64_t sub_10005D75C()
{
  result = qword_100117438;
  if (!qword_100117438)
  {
    sub_10005D4D8(255);
    sub_10005D828(&qword_100117440, &protocol conformance descriptor for _LayoutRoot<A>);
    sub_10005D3F8(&qword_100117448, sub_10005D664, &protocol conformance descriptor for _ViewModifier_Content<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100117438);
  }

  return result;
}

uint64_t sub_10005D828(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_10005D5A8(255, &qword_100117418, sub_10005D610, &type metadata for TextOverflowModifier.Layout, &type metadata accessor for _LayoutRoot);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10005D8A8()
{
  result = qword_100117450;
  if (!qword_100117450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100117450);
  }

  return result;
}

uint64_t sub_10005D8FC(uint64_t a1)
{
  sub_10005CF6C(0, &qword_100117458, &type metadata accessor for LayoutSubview, &type metadata accessor for Optional);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10005D994()
{
  type metadata accessor for PriceFormatter(0);
  v0 = swift_allocObject();
  result = sub_1000D9140();
  qword_100117460 = v0;
  return result;
}

uint64_t sub_10005D9E4(void *a1)
{
  sub_10006074C(0, &qword_100117520, sub_1000606F8, &_s22StocksPriceFormatStyleV10CodingKeysON, &type metadata accessor for KeyedEncodingContainer);
  v4 = v3;
  v5 = *(v3 - 8);
  __chkstk_darwin(v3);
  v7 = &v9 - v6;
  sub_100006C7C(a1, a1[3]);
  sub_1000606F8();
  sub_1000DC480();
  v13 = 0;
  sub_1000DC270();
  if (!v1)
  {
    v12 = 1;
    sub_1000DC2C0();
    v11 = 2;
    sub_1000DC2E0();
    v10 = 3;
    sub_1000DC2B0();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_10005DBB0()
{
  v1 = 0x79636E6572727563;
  v2 = 0x647574696E67616DLL;
  if (*v0 != 2)
  {
    v2 = 0x6B6361626C6C6166;
  }

  if (*v0)
  {
    v1 = 0xD000000000000016;
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

uint64_t sub_10005DC44@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10005F4F0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10005DC78(uint64_t a1)
{
  v2 = sub_1000606F8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10005DCB4(uint64_t a1)
{
  v2 = sub_1000606F8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10005DCF0@<X0>(double *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v5 = *v2;
  v6 = *(v2 + 8);
  v7 = *(v2 + 24);
  v8 = *(v2 + 32);
  v9 = *(v2 + 40);
  v10 = *(v2 + 16) | (2 * (v6 != 0));
  if (qword_1001140F8 != -1)
  {
    v13 = *v2;
    v14 = v6;
    v15 = v4;
    v16 = v7;
    v17 = v10;
    swift_once();
    v10 = v17;
    v7 = v16;
    v6 = v14;
    v5 = v13;
    v4 = v15;
  }

  result = sub_100028E40(v5, v6, v7, 1, v10, v4);
  if (!v12)
  {

    result = v8;
    v12 = v9;
  }

  *a2 = result;
  a2[1] = v12;
  return result;
}

double sub_10005DDD8@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_10005F66C(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    a1[1] = v5;
    result = *&v7;
    a1[2] = v7;
  }

  return result;
}

Swift::Int sub_10005DE34()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  sub_1000DC420();
  if (v1)
  {
    sub_1000DC440(1u);
    sub_1000DB9F0();
  }

  else
  {
    sub_1000DC440(0);
  }

  sub_1000DC440(v2);
  sub_1000DC430(v3);
  sub_1000DB9F0();
  return sub_1000DC460();
}

uint64_t sub_10005DEE8(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  if (*(v1 + 8))
  {
    sub_1000DC440(1u);
    sub_1000DB9F0();
  }

  else
  {
    sub_1000DC440(0);
  }

  sub_1000DC440(v2);
  sub_1000DC430(v3);

  return sub_1000DB9F0();
}

Swift::Int sub_10005DF8C(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  sub_1000DC420();
  if (v2)
  {
    sub_1000DC440(1u);
    sub_1000DB9F0();
  }

  else
  {
    sub_1000DC440(0);
  }

  sub_1000DC440(v3);
  sub_1000DC430(v4);
  sub_1000DB9F0();
  return sub_1000DC460();
}

uint64_t sub_10005E03C(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  v4 = *(a1 + 16);
  v6 = a1[3];
  v5 = a1[4];
  v7 = a1[5];
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  v11 = *(a2 + 24);
  v10 = *(a2 + 32);
  v12 = *(a2 + 40);
  if (!v3)
  {
    result = 0;
    if (v8)
    {
      return result;
    }

    goto LABEL_11;
  }

  if (!v8)
  {
    return 0;
  }

  if (*a1 != *a2 || v3 != v8)
  {
    v14 = sub_1000DC360();
    result = 0;
    if ((v14 & 1) == 0)
    {
      return result;
    }

LABEL_11:
    if (v4 != v9)
    {
      return result;
    }

    goto LABEL_12;
  }

  result = 0;
  if (v4 != v9)
  {
    return result;
  }

LABEL_12:
  if (v6 == v11)
  {
    if (v5 == v10 && v7 == v12)
    {
      return 1;
    }

    else
    {

      return sub_1000DC360();
    }
  }

  return result;
}

uint64_t sub_10005E14C(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v5 = *(v4 + 56);
  }

  else if ((*v4 & 1) != 0 && a4)
  {
    v9 = *(v4 + 32);
    v5 = *(v4 + 40);
    if (*(v4 + 24))
    {
      v10 = 3;
    }

    else
    {
      v10 = 2;
    }

    v11 = qword_1001140F8;

    if (v11 != -1)
    {
      swift_once();
    }

    v12 = sub_100028E40(a3, a4, v9, 1, v10, *&a1);
    if (v13)
    {
      v14 = v12;

      return v14;
    }
  }

  else
  {
    v15 = *(v4 + 8);
    v16 = *(v4 + 16);
    v17 = *(v4 + 32);
    v18 = *(v4 + 40);
    v19 = 3;
    if (!v16)
    {
      v19 = 1;
    }

    if (*(v4 + 24))
    {
      v20 = v19;
    }

    else
    {
      v20 = 2 * (v16 != 0);
    }

    if (qword_1001140F8 != -1)
    {
      v24 = *(v4 + 8);
      v25 = *(v4 + 16);
      v26 = v17;
      v27 = v20;
      swift_once();
      v20 = v27;
      v17 = v26;
      v16 = v25;
      v15 = v24;
    }

    v21 = sub_100028E40(v15, v16, v17, 1, v20, *&a1);
    if (v22)
    {
      return v21;
    }

    else
    {

      return v18;
    }
  }

  return v5;
}

uint64_t sub_10005E300(void *a1)
{
  v3 = v1;
  sub_10006074C(0, &qword_100117508, sub_10006066C, &_s11FormatStyleV10CodingKeysON, &type metadata accessor for KeyedEncodingContainer);
  v6 = v5;
  v7 = *(v5 - 8);
  __chkstk_darwin(v5);
  v9 = v12 - v8;
  sub_100006C7C(a1, a1[3]);
  sub_10006066C();
  sub_1000DC480();
  LOBYTE(v12[0]) = 0;
  sub_1000DC2C0();
  if (!v2)
  {
    v10 = *(v3 + 24);
    v12[0] = *(v3 + 8);
    v12[1] = v10;
    v12[2] = *(v3 + 40);
    v13 = 1;
    sub_1000605C0();
    sub_1000DC2F0();
    LOBYTE(v12[0]) = 2;
    sub_1000DC2B0();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_10005E4EC()
{
  v1 = 0x74537265626D756ELL;
  if (*v0 != 1)
  {
    v1 = 0x6B6361626C6C6166;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x72727543776F6873;
  }
}

uint64_t sub_10005E560@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10005F8F4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10005E588(uint64_t a1)
{
  v2 = sub_10006066C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10005E5C4(uint64_t a1)
{
  v2 = sub_10006066C();

  return CodingKey.debugDescription.getter(a1, v2);
}

__n128 sub_10005E618@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_10005FA18(a2, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a1 + 32) = v6[2];
    *(a1 + 48) = v5;
    *(a1 + 64) = v7;
    result = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = result;
  }

  return result;
}

uint64_t sub_10005E684(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v2;
  v8 = *(a1 + 64);
  v3 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v3;
  v4 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v4;
  v10 = *(a2 + 64);
  v5 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v5;
  return sub_10005F380(v7, v9) & 1;
}

uint64_t sub_10005E6E0(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    inited = *(v4 + 56);
LABEL_3:

    return inited;
  }

  if (*&a1 > 1000000.0)
  {
    type metadata accessor for UnitNumberFormatter();
    inited = swift_initStackObject();
    v11 = [objc_allocWithZone(SCICUNumberFormatter) init];
    *(inited + 16) = v11;
    if ((~a1 & 0x7FF0000000000000) != 0)
    {
      if (*&a1 > -9.22337204e18)
      {
        if (*&a1 < 9.22337204e18)
        {
          v14 = v11;
          inited = sub_100045A4C(*&a1, 0, 0);
          v16 = v15;

          if (v16)
          {
            return inited;
          }

          goto LABEL_9;
        }

LABEL_29:
        __break(1u);
        goto LABEL_30;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_29;
  }

LABEL_9:
  v11 = *(v4 + 8);
  v12 = *(v4 + 16);
  v5 = *(v4 + 32);
  inited = *(v4 + 40);
  if ((*v4 & 1) == 0 || !a4)
  {
    v22 = 3;
    if (!v12)
    {
      v22 = 1;
    }

    if (*(v4 + 24))
    {
      v13 = v22;
    }

    else
    {
      v13 = 2 * (v12 != 0);
    }

    if (qword_1001140F8 == -1)
    {
LABEL_24:
      v23 = sub_100028E40(v11, v12, v5, 1, v13, *&a1);
      if (v24)
      {
        return v23;
      }

      goto LABEL_3;
    }

LABEL_30:
    v26 = v11;
    v27 = v12;
    v28 = v13;
    swift_once();
    v13 = v28;
    v12 = v27;
    v11 = v26;
    goto LABEL_24;
  }

  if (*(v4 + 24))
  {
    v17 = 3;
  }

  else
  {
    v17 = 2;
  }

  v18 = qword_1001140F8;

  if (v18 != -1)
  {
    swift_once();
  }

  v19 = sub_100028E40(a3, a4, v5, 1, v17, *&a1);
  if (v20)
  {
    v21 = v19;

    return v21;
  }

  return inited;
}

uint64_t sub_10005E930(void *a1)
{
  v2 = v1;
  sub_10006074C(0, &qword_1001174A0, sub_10005FFBC, &_s17WidgetFormatStyleV10CodingKeysON, &type metadata accessor for KeyedEncodingContainer);
  v5 = v4;
  v6 = *(v4 - 8);
  __chkstk_darwin(v4);
  v8 = v12 - v7;
  sub_100006C7C(a1, a1[3]);
  sub_10005FFBC();
  sub_1000DC480();
  v9 = *(v2 + 48);
  v16 = *(v2 + 32);
  v17 = v9;
  v18 = *(v2 + 64);
  v10 = *(v2 + 16);
  v14 = *v2;
  v15 = v10;
  sub_100060064(v2, v12);
  sub_10006009C();
  sub_1000DC2F0();
  v12[2] = v16;
  v12[3] = v17;
  v13 = v18;
  v12[0] = v14;
  v12[1] = v15;
  sub_1000600F0(v12);
  return (*(v6 + 8))(v8, v5);
}

Swift::Int sub_10005EAEC()
{
  sub_1000DC420();
  sub_1000DC430(0);
  return sub_1000DC460();
}

Swift::Int sub_10005EB58(uint64_t a1)
{
  sub_1000DC420();
  sub_1000DC430(0);
  return sub_1000DC460();
}

uint64_t sub_10005EBA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1702060386 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1000DC360();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_10005EC3C(uint64_t a1)
{
  v2 = sub_10005FFBC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10005EC78(uint64_t a1)
{
  v2 = sub_10005FFBC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10005ECCC@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void, void, void, void)@<X3>, uint64_t *a3@<X8>)
{
  result = a2(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 24));
  *a3 = result;
  a3[1] = v5;
  return result;
}

__n128 sub_10005ED14(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

__n128 sub_10005ED50@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_10005FDC4(a2, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a1 + 32) = v6[2];
    *(a1 + 48) = v5;
    *(a1 + 64) = v7;
    result = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = result;
  }

  return result;
}

Swift::Int sub_10005EDEC()
{
  v1 = *v0;
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  sub_1000DC420();
  sub_1000DC440(v1);
  if (v2)
  {
    sub_1000DC440(1u);
    sub_1000DB9F0();
  }

  else
  {
    sub_1000DC440(0);
  }

  sub_1000DC440(v3);
  sub_1000DC430(v4);
  sub_1000DB9F0();
  sub_1000DB9F0();
  return sub_1000DC460();
}

uint64_t sub_10005EED0(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  sub_1000DC440(*v1);
  if (v2)
  {
    sub_1000DC440(1u);
    sub_1000DB9F0();
  }

  else
  {
    sub_1000DC440(0);
  }

  sub_1000DC440(v3);
  sub_1000DC430(v4);
  sub_1000DB9F0();

  return sub_1000DB9F0();
}

Swift::Int sub_10005EF98(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  sub_1000DC420();
  sub_1000DC440(v2);
  if (v3)
  {
    sub_1000DC440(1u);
    sub_1000DB9F0();
  }

  else
  {
    sub_1000DC440(0);
  }

  sub_1000DC440(v4);
  sub_1000DC430(v5);
  sub_1000DB9F0();
  sub_1000DB9F0();
  return sub_1000DC460();
}

BOOL sub_10005F074(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v2;
  v8 = *(a1 + 64);
  v3 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v3;
  v4 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v4;
  v10 = *(a2 + 64);
  v5 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v5;
  return sub_10005F230(v7, v9);
}

unint64_t sub_10005F0D4()
{
  result = qword_100117468;
  if (!qword_100117468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100117468);
  }

  return result;
}

unint64_t sub_10005F12C()
{
  result = qword_100117470;
  if (!qword_100117470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100117470);
  }

  return result;
}

unint64_t sub_10005F184()
{
  result = qword_100117478;
  if (!qword_100117478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100117478);
  }

  return result;
}

unint64_t sub_10005F1DC()
{
  result = qword_100117480;
  if (!qword_100117480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100117480);
  }

  return result;
}

BOOL sub_10005F230(uint64_t a1, uint64_t a2)
{
  if ((*a1 ^ *a2))
  {
    return 0;
  }

  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v9 = *(a1 + 48);
  v8 = *(a1 + 56);
  v10 = *(a1 + 64);
  v11 = *(a2 + 16);
  v12 = *(a2 + 24);
  v13 = *(a2 + 32);
  v14 = *(a2 + 40);
  v16 = *(a2 + 48);
  v15 = *(a2 + 56);
  v17 = *(a2 + 64);
  if (v4)
  {
    if (!v11)
    {
      return 0;
    }

    if (*(a1 + 8) != *(a2 + 8) || v4 != v11)
    {
      v24 = *(a2 + 56);
      v25 = *(a2 + 64);
      v18 = *(a1 + 64);
      v19 = *(a1 + 56);
      v20 = *(a1 + 48);
      v21 = sub_1000DC360();
      v9 = v20;
      v8 = v19;
      v10 = v18;
      v15 = v24;
      v17 = v25;
      if ((v21 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v11)
  {
    return 0;
  }

  if (((v5 ^ v12) & 1) != 0 || v7 != v13)
  {
    return 0;
  }

  if (v6 != v14 || v9 != v16)
  {
    v22 = v8;
    v23 = sub_1000DC360();
    v8 = v22;
    if ((v23 & 1) == 0)
    {
      return 0;
    }
  }

  return v8 == v15 && v10 == v17 || (sub_1000DC360() & 1) != 0;
}

uint64_t sub_10005F380(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if ((*a1 ^ *a2))
  {
    return 0;
  }

  v4 = *(a1 + 2);
  v5 = a1[24];
  v7 = *(a1 + 4);
  v6 = *(a1 + 5);
  v8 = *(a1 + 6);
  v9 = *(a2 + 2);
  v10 = a2[24];
  v12 = *(a2 + 4);
  v11 = *(a2 + 5);
  v13 = *(a2 + 6);
  if (v4)
  {
    if (!v9)
    {
      return 0;
    }

    if (*(a1 + 1) != *(a2 + 1) || v4 != v9)
    {
      v14 = a1;
      v15 = a2;
      v16 = sub_1000DC360();
      a2 = v15;
      v17 = v16;
      a1 = v14;
      if ((v17 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v9)
  {
    return 0;
  }

  v2 = 0;
  if (((v5 ^ v10) & 1) != 0 || v7 != v12)
  {
    return v2;
  }

  if (v6 != v11 || v8 != v13)
  {
    v18 = a1;
    v19 = a2;
    v20 = sub_1000DC360();
    a2 = v19;
    v21 = v20;
    a1 = v18;
    if ((v21 & 1) == 0)
    {
      return 0;
    }
  }

  if (*(a1 + 7) == *(a2 + 7) && *(a1 + 8) == *(a2 + 8))
  {
    return 1;
  }

  return sub_1000DC360();
}

uint64_t sub_10005F4F0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x79636E6572727563 && a2 == 0xEC00000065646F43;
  if (v4 || (sub_1000DC360() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001000E8CC0 == a2 || (sub_1000DC360() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x647574696E67616DLL && a2 == 0xE900000000000065 || (sub_1000DC360() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6B6361626C6C6166 && a2 == 0xEC00000074786554)
  {

    return 3;
  }

  else
  {
    v6 = sub_1000DC360();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_10005F66C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  sub_10006074C(0, &qword_100117510, sub_1000606F8, &_s22StocksPriceFormatStyleV10CodingKeysON, &type metadata accessor for KeyedDecodingContainer);
  v5 = v4;
  v6 = *(v4 - 8);
  __chkstk_darwin(v4);
  v8 = &v20 - v7;
  sub_100006C7C(a1, a1[3]);
  sub_1000606F8();
  sub_1000DC470();
  if (v2)
  {
    return sub_100006D0C(a1);
  }

  v9 = v6;
  v10 = v21;
  v26 = 0;
  v11 = sub_1000DC1A0();
  v13 = v12;
  v14 = v11;
  v25 = 1;
  v22 = sub_1000DC1F0();
  v24 = 2;
  v20 = sub_1000DC210();
  v23 = 3;
  v15 = sub_1000DC1E0();
  v16 = v8;
  v18 = v17;
  (*(v9 + 8))(v16, v5);
  result = sub_100006D0C(a1);
  *v10 = v14;
  *(v10 + 8) = v13;
  *(v10 + 16) = v22 & 1;
  *(v10 + 24) = v20;
  *(v10 + 32) = v15;
  *(v10 + 40) = v18;
  return result;
}

uint64_t sub_10005F8F4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x72727543776F6873 && a2 == 0xEC00000079636E65;
  if (v4 || (sub_1000DC360() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74537265626D756ELL && a2 == 0xEB00000000656C79 || (sub_1000DC360() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6B6361626C6C6166 && a2 == 0xEC00000074786554)
  {

    return 2;
  }

  else
  {
    v6 = sub_1000DC360();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_10005FA18@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  sub_10006074C(0, &qword_1001174F8, sub_10006066C, &_s11FormatStyleV10CodingKeysON, &type metadata accessor for KeyedDecodingContainer);
  v5 = v4;
  v6 = *(v4 - 8);
  __chkstk_darwin(v4);
  v8 = &v24 - v7;
  sub_100006C7C(a1, a1[3]);
  sub_10006066C();
  sub_1000DC470();
  if (v2)
  {
    return sub_100006D0C(a1);
  }

  v9 = v6;
  v10 = v48;
  LOBYTE(v36) = 0;
  v11 = sub_1000DC1F0();
  LOBYTE(v31) = 1;
  sub_100060568();
  sub_1000DC220();
  v12 = v37;
  v29 = v36;
  v28 = v38;
  v27 = v39;
  v26 = v40;
  v30 = v41;
  v45 = 2;
  v13 = sub_1000DC1E0();
  v14 = v11 & 1;
  v25 = v11 & 1;
  v15 = *(v9 + 8);
  v16 = v13;
  v24 = v17;
  v15(v8, v5);
  LOBYTE(v31) = v14;
  *(&v31 + 1) = v47[0];
  DWORD1(v31) = *(v47 + 3);
  *(&v31 + 1) = v29;
  *&v32 = v12;
  BYTE8(v32) = v28;
  *(&v32 + 9) = *v46;
  HIDWORD(v32) = *&v46[3];
  v18 = v27;
  v19 = v26;
  *&v33 = v27;
  *(&v33 + 1) = v26;
  *&v34 = v30;
  *(&v34 + 1) = v16;
  v20 = v24;
  v35 = v24;
  sub_1000606C0(&v31, &v36);
  sub_100006D0C(a1);
  LOBYTE(v36) = v25;
  *(&v36 + 1) = v47[0];
  HIDWORD(v36) = *(v47 + 3);
  v37 = v29;
  v38 = v12;
  LOBYTE(v39) = v28;
  *(&v39 + 1) = *v46;
  HIDWORD(v39) = *&v46[3];
  v40 = v18;
  v41 = v19;
  v42 = v30;
  v43 = v16;
  v44 = v20;
  result = sub_1000600F0(&v36);
  v22 = v34;
  *(v10 + 32) = v33;
  *(v10 + 48) = v22;
  *(v10 + 64) = v35;
  v23 = v32;
  *v10 = v31;
  *(v10 + 16) = v23;
  return result;
}

uint64_t sub_10005FDC4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  sub_10006074C(0, &qword_100117488, sub_10005FFBC, &_s17WidgetFormatStyleV10CodingKeysON, &type metadata accessor for KeyedDecodingContainer);
  v5 = v4;
  v6 = *(v4 - 8);
  __chkstk_darwin(v4);
  v8 = &v13 - v7;
  sub_100006C7C(a1, a1[3]);
  sub_10005FFBC();
  sub_1000DC470();
  if (v2)
  {
    return sub_100006D0C(a1);
  }

  v9 = v23;
  sub_100060010();
  sub_1000DC220();
  (*(v6 + 8))(v8, v5);
  v15 = v20;
  v16 = v21;
  v17 = v22;
  v13 = v18;
  v14 = v19;
  result = sub_100006D0C(a1);
  v11 = v16;
  *(v9 + 32) = v15;
  *(v9 + 48) = v11;
  *(v9 + 64) = v17;
  v12 = v14;
  *v9 = v13;
  *(v9 + 16) = v12;
  return result;
}

unint64_t sub_10005FFBC()
{
  result = qword_100117490;
  if (!qword_100117490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100117490);
  }

  return result;
}

unint64_t sub_100060010()
{
  result = qword_100117498;
  if (!qword_100117498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100117498);
  }

  return result;
}

unint64_t sub_10006009C()
{
  result = qword_1001174A8;
  if (!qword_1001174A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001174A8);
  }

  return result;
}

uint64_t _s17WidgetFormatStyleV10CodingKeysOwet(unsigned int *a1, int a2)
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

_WORD *_s17WidgetFormatStyleV10CodingKeysOwst(_WORD *result, int a2, int a3)
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

uint64_t sub_100060200(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100060248(uint64_t result, int a2, int a3)
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
      *(result + 40) = (a2 - 1);
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

uint64_t sub_1000602A4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000602EC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100060350()
{
  result = qword_1001174B0;
  if (!qword_1001174B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001174B0);
  }

  return result;
}

unint64_t sub_1000603B0()
{
  result = qword_1001174B8;
  if (!qword_1001174B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001174B8);
  }

  return result;
}

unint64_t sub_100060408()
{
  result = qword_1001174C0;
  if (!qword_1001174C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001174C0);
  }

  return result;
}

unint64_t sub_100060460()
{
  result = qword_1001174C8;
  if (!qword_1001174C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001174C8);
  }

  return result;
}

unint64_t sub_1000604B8()
{
  result = qword_1001174D0;
  if (!qword_1001174D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001174D0);
  }

  return result;
}

unint64_t sub_100060510()
{
  result = qword_1001174D8;
  if (!qword_1001174D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001174D8);
  }

  return result;
}

unint64_t sub_100060568()
{
  result = qword_1001174E0;
  if (!qword_1001174E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001174E0);
  }

  return result;
}

unint64_t sub_1000605C0()
{
  result = qword_1001174E8;
  if (!qword_1001174E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001174E8);
  }

  return result;
}

unint64_t sub_100060618()
{
  result = qword_1001174F0;
  if (!qword_1001174F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001174F0);
  }

  return result;
}

unint64_t sub_10006066C()
{
  result = qword_100117500;
  if (!qword_100117500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100117500);
  }

  return result;
}

unint64_t sub_1000606F8()
{
  result = qword_100117518;
  if (!qword_100117518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100117518);
  }

  return result;
}

void sub_10006074C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for TickerCellViewModel.CellType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for TickerCellViewModel.CellType(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_100060918()
{
  result = qword_100117528;
  if (!qword_100117528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100117528);
  }

  return result;
}

unint64_t sub_100060970()
{
  result = qword_100117530;
  if (!qword_100117530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100117530);
  }

  return result;
}

unint64_t sub_1000609C8()
{
  result = qword_100117538;
  if (!qword_100117538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100117538);
  }

  return result;
}

unint64_t sub_100060A20()
{
  result = qword_100117540;
  if (!qword_100117540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100117540);
  }

  return result;
}

unint64_t sub_100060A78()
{
  result = qword_100117548;
  if (!qword_100117548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100117548);
  }

  return result;
}

unint64_t sub_100060AD0()
{
  result = qword_100117550;
  if (!qword_100117550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100117550);
  }

  return result;
}

uint64_t sub_100060B50@<X0>(uint64_t a1@<X8>)
{
  v35 = a1;
  sub_1000613D0();
  v32 = v1;
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10006147C(0, &qword_100117600, &qword_100117608, FCNewsTabiConfiguration_ptr);
  v6 = v5;
  v7 = *(v5 - 8);
  __chkstk_darwin(v5);
  v9 = v28 - v8;
  v31 = v28 - v8;
  sub_100061424(0);
  v11 = v10;
  v12 = *(v10 - 8);
  __chkstk_darwin(v10);
  v14 = v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28[1] = v14;
  sub_10006147C(0, &qword_100117618, &qword_100117620, FCNewsArticleEmbeddingsConfiguration_ptr);
  v16 = __chkstk_darwin(v15);
  v34 = v28 - v17;
  v18 = enum case for FeatureState.disabled<A>(_:);
  (*(v19 + 104))(v16);
  sub_1000614D4();
  v33 = v20;
  (*(v12 + 104))(v14, v18, v11);
  v30 = sub_1000D9590();
  v29 = sub_1000D9530();
  (*(v7 + 104))(v9, v18, v6);
  (*(v2 + 104))(v4, v18, v32);
  sub_100061C08(_swiftEmptyArrayStorage);
  v21 = objc_allocWithZone(FCPersonalizationPublisherDampeningConfig);
  isa = sub_1000DB830().super.isa;

  [v21 initWithConfig:isa];

  sub_100061C08(_swiftEmptyArrayStorage);
  v23 = objc_allocWithZone(FCPersonalizationPublisherDampeningConfig);
  v24 = sub_1000DB830().super.isa;

  [v23 initWithConfig:v24];

  v25 = objc_allocWithZone(FCStatelessPersonalizationPublisherFavorability);
  sub_100061E64(0, &qword_100117628, &type metadata for AnyHashable, &protocol witness table for AnyHashable, &type metadata accessor for Dictionary);
  v26 = sub_1000DBB00().super.isa;
  [v25 initWithArray:v26];

  return sub_1000DA2B0();
}

uint64_t sub_100060FE0(uint64_t a1, void (*a2)(char *))
{
  v3 = sub_1000DA2C0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100060B50(v6);
  a2(v6);
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1000610C4()
{
  sub_100006D0C((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_100061120@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000D95E0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100006C7C((*v1 + 16), *(*v1 + 40));
  sub_1000D98B0();
  sub_100060B50(a1);
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_100061220()
{
  sub_1000D95E0();
  sub_1000DA180();
  v0 = sub_1000DA100();
  sub_1000DA2C0();
  v1 = sub_1000DA130();

  return v1;
}

uint64_t sub_1000612C0(uint64_t a1, uint64_t a2)
{
  sub_100006C7C((*v2 + 16), *(*v2 + 40));
  sub_1000D98A0();
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;

  v6 = sub_1000DA100();
  sub_1000D9F80();

  return sub_100006D0C(v8);
}

uint64_t sub_100061390()
{

  return swift_deallocObject();
}

void sub_1000613D0()
{
  if (!qword_1001175F8)
  {
    v0 = sub_1000DA2A0();
    if (!v1)
    {
      atomic_store(v0, &qword_1001175F8);
    }
  }
}

void sub_100061424(uint64_t a1)
{
  if (!qword_100117610)
  {
    sub_1000DA290();
    v1 = sub_1000DA2A0();
    if (!v2)
    {
      atomic_store(v1, &qword_100117610);
    }
  }
}

void sub_10006147C(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4)
{
  if (!*a2)
  {
    sub_100033ED8(255, a3, a4);
    v5 = sub_1000DA2A0();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1000614D4()
{
  v0 = sub_1000D9940();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000D8DE0();
  swift_allocObject();
  sub_1000D8DD0();
  sub_1000D9550();
  sub_100061E0C();
  v4 = sub_1000D8DC0();
  v6 = v5;
  (*(v1 + 8))(v3, v0);

  v7 = objc_opt_self();
  isa = sub_1000D8F40().super.isa;
  v16[0] = 0;
  v9 = [v7 JSONObjectWithData:isa options:4 error:v16];

  if (!v9)
  {
    v14 = v16[0];
    sub_1000D8E60();

    swift_willThrow();

    goto LABEL_6;
  }

  v10 = v16[0];
  sub_1000DBEC0();
  swift_unknownObjectRelease();
  sub_100061E64(0, &qword_100117648, &type metadata for String, &protocol witness table for String, &type metadata accessor for Dictionary);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_6:
    [objc_allocWithZone(FCPersonalizationTreatment) init];
    sub_10003DB6C(v4, v6);
    return;
  }

  sub_100061814(v15[1]);
  v11 = objc_allocWithZone(FCPersonalizationTreatment);
  v12 = sub_1000DB830().super.isa;

  v13 = [v11 initWithPersonalizationTreatmentDictionary:v12];

  if (v13)
  {

    sub_10003DB6C(v4, v6);
  }

  else
  {
    __break(1u);
  }
}

void sub_100061814(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100061E64(0, &qword_100117630, &type metadata for AnyHashable, &protocol witness table for AnyHashable, &type metadata accessor for _DictionaryStorage);
    v2 = sub_1000DC130();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = (v2 + 8);

  v8 = 0;
  while (v5)
  {
LABEL_15:
    v12 = __clz(__rbit64(v5)) | (v8 << 6);
    v13 = (*(a1 + 48) + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    sub_100061EC4(*(a1 + 56) + 32 * v12, v35);
    *&v34 = v15;
    *(&v34 + 1) = v14;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_10003491C(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_10003491C(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_10003491C(v31, v32);
    v16 = sub_1000DBF00(v2[5]);
    v17 = -1 << *(v2 + 32);
    v18 = v16 & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*&v7[8 * (v18 >> 6)]) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *&v7[8 * v19];
        if (v23 != -1)
        {
          v9 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v9 = __clz(__rbit64((-1 << v18) & ~*&v7[8 * (v18 >> 6)])) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *&v7[(v9 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v9;
    v10 = v2[6] + 40 * v9;
    *v10 = v24;
    *(v10 + 16) = v25;
    *(v10 + 32) = v26;
    sub_10003491C(v32, (v2[7] + 32 * v9));
    ++v2[2];
  }

  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      v8 = v11;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

unint64_t sub_100061AFC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1000DBF00(*(v2 + 40));

  return sub_100061B40(a1, v4);
}

unint64_t sub_100061B40(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_100033F88(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_1000DBF10();
      sub_100033FE4(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_100061C08(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100061E64(0, &qword_100117630, &type metadata for AnyHashable, &protocol witness table for AnyHashable, &type metadata accessor for _DictionaryStorage);
    v3 = sub_1000DC130();
    v4 = a1 + 32;

    while (1)
    {
      sub_100061D44(v4, v13);
      result = sub_100061AFC(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_10003491C(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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

uint64_t sub_100061D44(uint64_t a1, uint64_t a2)
{
  sub_100061DA8();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_100061DA8()
{
  if (!qword_100117638)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_100117638);
    }
  }
}

unint64_t sub_100061E0C()
{
  result = qword_100117640;
  if (!qword_100117640)
  {
    sub_1000D9940();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100117640);
  }

  return result;
}

void sub_100061E64(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, char *))
{
  if (!*a2)
  {
    v6 = (a5)(0, a3, &type metadata for Any[8], a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_100061EC4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t type metadata accessor for OverviewTimelineEntry(uint64_t a1)
{
  result = qword_1001176C0;
  if (!qword_1001176C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100062008(uint64_t a1)
{
  sub_1000328C0(319);
  if (v1 <= 0x3F)
  {
    sub_1000323F4(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_10006207C()
{
  if (!qword_100115C60)
  {
    v0 = sub_1000DBE80();
    if (!v1)
    {
      atomic_store(v0, &qword_100115C60);
    }
  }
}

uint64_t sub_1000620CC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for OverviewTimelineEntry(0);
  __chkstk_darwin(v4);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000628BC(v2, v6, type metadata accessor for OverviewTimelineEntry);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1000323F4(0);
    v8 = v7;
    sub_1000DB790();
    v10 = *(v8 + 48);
    v11 = sub_1000DB7A0();
    (*(*(v11 - 8) + 56))(a1, 0, 1, v11);
    sub_1000626F4(&v6[v10]);
  }

  else
  {
    sub_1000328C0(0);

    sub_1000DB790();
    v9 = sub_1000DB7A0();
    (*(*(v9 - 8) + 56))(a1, 0, 1, v9);
  }

  v12 = sub_1000D9090();
  return (*(*(v12 - 8) + 8))(v6, v12);
}

uint64_t sub_1000622C0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for WatchlistOverviewContentViewModel(0);
  __chkstk_darwin(v4);
  v6 = &v15[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for OverviewTimelineEntry(0);
  __chkstk_darwin(v7);
  v9 = &v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1000628BC(v2, v9, type metadata accessor for OverviewTimelineEntry);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1000323F4(0);
    sub_10003251C(&v9[*(v10 + 48)], v6);
    sub_100062750(0, &qword_100116390, sub_10003F304, &qword_1001163A0, sub_10003F304);
    sub_100023704(0);
    sub_1000DA1D0();
    sub_1000626F4(v6);
    v11 = 0;
  }

  else
  {
    sub_1000328C0(0);

    v11 = 1;
  }

  sub_100062750(0, &qword_1001176F8, sub_1000627D0, &qword_100117708, sub_1000627D0);
  (*(*(v12 - 8) + 56))(a1, v11, 1, v12);
  v13 = sub_1000D9090();
  return (*(*(v13 - 8) + 8))(v9, v13);
}

uint64_t sub_100062590@<X0>(uint64_t a2@<X8>)
{
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000628BC(v6, v5, type metadata accessor for OverviewTimelineEntry);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1000323F4(0);
    v8 = *(v7 + 48);
    v9 = sub_1000D9090();
    (*(*(v9 - 8) + 32))(a2, v5, v9);
    return sub_1000626F4(&v5[v8]);
  }

  else
  {
    sub_1000328C0(0);

    v11 = sub_1000D9090();
    return (*(*(v11 - 8) + 32))(a2, v5, v11);
  }
}

uint64_t sub_1000626F4(uint64_t a1)
{
  v2 = type metadata accessor for WatchlistOverviewContentViewModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_100062750(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_100062868(a4, a5);
    v8 = sub_1000DA220();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_100062804(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_100062868(unint64_t *a1, uint64_t (*a2)(uint64_t))
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

uint64_t sub_1000628BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100062938(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_1000638B4(0, &qword_100114B60, type metadata accessor for PreparedSparkline, &type metadata accessor for Optional);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 36);

      return v11(v12, a2, v10);
    }

    else
    {
      sub_100023694(0);
      v14 = v13;
      v15 = *(*(v13 - 8) + 48);
      v16 = a1 + *(a3 + 40);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_100062AA0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_1000638B4(0, &qword_100114B60, type metadata accessor for PreparedSparkline, &type metadata accessor for Optional);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 36);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      sub_100023694(0);
      v14 = v13;
      v15 = *(*(v13 - 8) + 56);
      v16 = v5 + *(a4 + 40);

      return v15(v16, a2, a2, v14);
    }
  }

  return result;
}

uint64_t type metadata accessor for LargeDetailWithNewsContentView(uint64_t a1)
{
  result = qword_100117768;
  if (!qword_100117768)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100062C40(uint64_t a1)
{
  sub_100063718(319, &qword_1001156D0, &type metadata for StockPrice, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    sub_100063718(319, &unk_1001156D8, &type metadata for ValueChangeTrend, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      sub_1000638B4(319, &qword_100114B60, type metadata accessor for PreparedSparkline, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        sub_100023694(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_100062DA8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v77 = a2;
  sub_1000637C8(0, &qword_1001177E0, type metadata accessor for HeadlinesList);
  v73 = v3;
  __chkstk_darwin(v3);
  v76 = &v60[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v74 = &v60[-v6];
  sub_100063768(0);
  v72 = v7;
  __chkstk_darwin(v7);
  v75 = &v60[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v79 = &v60[-v10];
  sub_1000637C8(0, &qword_1001177D0, type metadata accessor for RowWithChartTicker);
  v70 = v11;
  __chkstk_darwin(v11);
  v78 = &v60[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v13);
  v15 = &v60[-v14];
  LODWORD(v69) = *(a1 + 80);
  v16 = *a1;
  v17 = a1[1];
  v18 = a1[3];
  v67 = a1[2];
  v68 = v16;
  v19 = a1[5];
  v66 = a1[4];
  v20 = a1[6];
  v21 = a1[7];
  v64 = v17;
  v65 = v20;
  v22 = a1[8];
  v23 = a1[9];
  v24 = *(a1 + 13);
  v92[0] = *(a1 + 11);
  v92[1] = v24;
  v93[0] = *(a1 + 15);
  *(v93 + 9) = *(a1 + 129);
  v25 = *(a1 + 13);
  v94 = *(a1 + 11);
  v95 = v25;
  v96[0] = *(a1 + 15);
  *(v96 + 9) = *(a1 + 129);
  v71 = type metadata accessor for LargeDetailWithNewsContentView(0);
  v26 = *(v71 + 36);
  v27 = type metadata accessor for RowWithChartTicker(0);
  sub_100024964(a1 + v26, &v15[*(v27 + 36)]);
  v28 = v95;
  *(v15 + 88) = v94;
  *v15 = v69;
  v29 = v67;
  v30 = v64;
  v31 = v65;
  *(v15 + 1) = v68;
  *(v15 + 2) = v30;
  *(v15 + 3) = v29;
  *(v15 + 4) = v18;
  *(v15 + 5) = v66;
  *(v15 + 6) = v19;
  *(v15 + 7) = v31;
  *(v15 + 8) = v21;
  *(v15 + 9) = v22;
  *(v15 + 10) = v23;
  *(v15 + 104) = v28;
  *(v15 + 120) = v96[0];
  *(v15 + 129) = *(v96 + 9);
  v69 = v27;
  v32 = *(v27 + 40);

  sub_10002B054(v31, v21, v22, v23);
  sub_10002B068(v92, &v80);
  if (qword_100114158 != -1)
  {
    swift_once();
  }

  sub_100063858(0, &qword_1001141F8, &type metadata for Bool, &protocol witness table for Bool, &type metadata accessor for SettingProperty);
  swift_allocObject();

  *&v15[v32] = sub_1000D9DD0();
  v33 = *(v69 + 44);
  *&v15[v33] = swift_getKeyPath();
  sub_1000638B4(0, &qword_100116108, &type metadata accessor for RedactionReasons, &type metadata accessor for Environment.Content);
  swift_storeEnumTagMultiPayload();
  KeyPath = swift_getKeyPath();
  v35 = swift_allocObject();
  *(v35 + 16) = 0;
  *(v35 + 24) = 1;
  *(v35 + 32) = 0;
  *(v35 + 40) = 0;
  v36 = &v15[*(v70 + 36)];
  *v36 = KeyPath;
  v36[1] = sub_10002B050;
  v36[2] = v35;
  sub_1000DB600();
  sub_1000DA7A0();
  v69 = v88;
  v70 = v86;
  v67 = v91;
  v68 = v90;
  v99 = 1;
  v98 = v87;
  v97 = v89;
  v37 = v79;
  sub_1000DB560();
  v38 = swift_getKeyPath();
  v39 = &v37[*(v72 + 36)];
  *v39 = 1;
  *(v39 + 1) = v38;
  *(v39 + 2) = 0;
  *(v39 + 3) = 0;
  *(v39 + 4) = 0;
  v39[40] = 0;
  sub_1000DB600();
  sub_1000DA7A0();
  v72 = v80;
  v65 = v84;
  v66 = v82;
  v64 = v85;
  v102 = 1;
  v101 = v81;
  v100 = v83;
  v40 = *(v71 + 40);
  sub_100023694(0);
  v42 = v74;
  (*(*(v41 - 8) + 16))(v74, a1 + v40, v41);
  v43 = type metadata accessor for HeadlinesList(0);
  *(v42 + *(v43 + 20)) = 3;
  *(v42 + *(v43 + 24)) = 0x4028000000000000;
  v44 = swift_getKeyPath();
  v45 = swift_allocObject();
  *(v45 + 16) = 0;
  *(v45 + 24) = 0;
  *(v45 + 32) = 0;
  *(v45 + 40) = 1;
  v46 = (v42 + *(v73 + 36));
  *v46 = v44;
  v46[1] = sub_10002B5D4;
  v46[2] = v45;
  v47 = v78;
  sub_100063934(v15, v78, &qword_1001177D0, type metadata accessor for RowWithChartTicker);
  v48 = v99;
  v61 = v98;
  v62 = v97;
  v49 = v75;
  sub_1000639A0(v37, v75);
  v63 = v102;
  LODWORD(v71) = v101;
  LODWORD(v73) = v100;
  v50 = v76;
  sub_100063934(v42, v76, &qword_1001177E0, type metadata accessor for HeadlinesList);
  v51 = v47;
  v52 = v77;
  sub_100063934(v51, v77, &qword_1001177D0, type metadata accessor for RowWithChartTicker);
  sub_10006361C(0);
  v54 = v53;
  v55 = v52 + *(v53 + 48);
  *v55 = 0;
  *(v55 + 8) = v48;
  *(v55 + 16) = v70;
  *(v55 + 24) = v61;
  *(v55 + 32) = v69;
  *(v55 + 40) = v62;
  v56 = v67;
  *(v55 + 48) = v68;
  *(v55 + 56) = v56;
  sub_1000639A0(v49, v52 + *(v53 + 64));
  v57 = v52 + *(v54 + 80);
  *v57 = 0;
  *(v57 + 8) = v63;
  *(v57 + 16) = v72;
  *(v57 + 24) = v71;
  *(v57 + 32) = v66;
  *(v57 + 40) = v73;
  v58 = v64;
  *(v57 + 48) = v65;
  *(v57 + 56) = v58;
  sub_100063934(v50, v52 + *(v54 + 96), &qword_1001177E0, type metadata accessor for HeadlinesList);
  sub_100063A60(v42, &qword_1001177E0, type metadata accessor for HeadlinesList);
  sub_100063A04(v79);
  sub_100063A60(v15, &qword_1001177D0, type metadata accessor for RowWithChartTicker);
  sub_100063A60(v50, &qword_1001177E0, type metadata accessor for HeadlinesList);
  sub_100063A04(v49);
  return sub_100063A60(v78, &qword_1001177D0, type metadata accessor for RowWithChartTicker);
}

uint64_t sub_10006353C@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_1000DAD00();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  sub_100063584(0);
  return sub_100062DA8(v2, a2 + *(v4 + 44));
}

void sub_100063584(uint64_t a1)
{
  if (!qword_1001177B8)
  {
    sub_1000638B4(255, &qword_1001177C0, sub_10006361C, &type metadata accessor for TupleView);
    v1 = sub_1000DA800();
    if (!v2)
    {
      atomic_store(v1, &qword_1001177B8);
    }
  }
}

void sub_10006361C(uint64_t a1)
{
  if (!qword_1001177C8)
  {
    sub_1000637C8(255, &qword_1001177D0, type metadata accessor for RowWithChartTicker);
    sub_100063858(255, &qword_100116558, &type metadata for Spacer, &type metadata for _FrameLayout, &type metadata accessor for ModifiedContent);
    sub_100063768(255);
    sub_1000637C8(255, &qword_1001177E0, type metadata accessor for HeadlinesList);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_1001177C8);
    }
  }
}

void sub_100063718(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_100063768(uint64_t a1)
{
  if (!qword_1001177D8)
  {
    sub_1000DB570();
    v1 = sub_1000DA930();
    if (!v2)
    {
      atomic_store(v1, &qword_1001177D8);
    }
  }
}

void sub_1000637C8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_100063718(255, &qword_100115740, &type metadata for EdgeInsets, &type metadata accessor for _EnvironmentKeyTransformModifier);
    v4 = sub_1000DA930();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_100063858(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1000638B4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_100063934(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1000637C8(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1000639A0(uint64_t a1, uint64_t a2)
{
  sub_100063768(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100063A04(uint64_t a1)
{
  sub_100063768(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100063A60(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1000637C8(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_100063AC0()
{
  result = qword_1001177E8;
  if (!qword_1001177E8)
  {
    sub_100063B18(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001177E8);
  }

  return result;
}

void sub_100063B18(uint64_t a1)
{
  if (!qword_1001177F0)
  {
    sub_1000638B4(255, &qword_1001177C0, sub_10006361C, &type metadata accessor for TupleView);
    sub_100063BAC();
    v1 = sub_1000DB540();
    if (!v2)
    {
      atomic_store(v1, &qword_1001177F0);
    }
  }
}

unint64_t sub_100063BAC()
{
  result = qword_1001177F8;
  if (!qword_1001177F8)
  {
    sub_1000638B4(255, &qword_1001177C0, sub_10006361C, &type metadata accessor for TupleView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001177F8);
  }

  return result;
}

uint64_t sub_100063C38@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_100006C7C(a1, a1[3]);
  sub_100002A50(0, &qword_100118F40, &protocol descriptor for TodayPrivateDataProviderType);
  result = sub_1000D9F00();
  if (v25)
  {
    sub_100006C7C(a1, a1[3]);
    sub_100002A50(0, &qword_100117938, &protocol descriptor for ConfigurationManagerType);
    result = sub_1000D9F00();
    if (v23)
    {
      v5 = sub_10006457C(v24, v25);
      v6 = __chkstk_darwin(v5);
      v8 = (&v21[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v9 + 16))(v8, v6);
      v10 = *v8;
      v11 = type metadata accessor for TodayPrivateDataProvider(0);
      v21[3] = v11;
      v21[4] = &off_100109F38;
      v21[0] = v10;
      v12 = type metadata accessor for WidgetScoringService();
      v13 = swift_allocObject();
      v14 = sub_10006457C(v21, v11);
      v15 = __chkstk_darwin(v14);
      v17 = (&v21[-1] - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v18 + 16))(v17, v15);
      v19 = *v17;
      v13[5] = v11;
      v13[6] = &off_100109F38;
      v13[2] = v19;
      v13[12] = 0;
      sub_100023738(&v22, (v13 + 7));
      sub_100006D0C(v21);
      sub_100006D0C(v24);
      a2[3] = v12;
      result = sub_1000645CC(qword_100117960, type metadata accessor for WidgetScoringService, &unk_1000DFD40);
      a2[4] = result;
      *a2 = v13;
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

uint64_t sub_100063EF4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_100006C7C(a1, a1[3]);
  v3 = type metadata accessor for WidgetPersonalizationConfigurationManager();
  result = sub_1000D9EF0();
  if (result)
  {
    v5 = result;
    a2[3] = v3;
    result = sub_1000645CC(&qword_100117958, type metadata accessor for WidgetPersonalizationConfigurationManager, &unk_1000E17EC);
    a2[4] = result;
    *a2 = v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100063F9C(void *a1)
{
  sub_100006C7C(a1, a1[3]);
  sub_100002A50(0, &qword_100115330, &protocol descriptor for AppConfigurationManagerType);
  result = sub_1000D9F00();
  if (v4)
  {
    type metadata accessor for WidgetPersonalizationConfigurationManager();
    v2 = swift_allocObject();
    sub_100023738(&v3, v2 + 16);
    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100064038@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_100006C7C(a1, a1[3]);
  sub_100002A50(0, &qword_100117948, &protocol descriptor for StockEntityServiceType);
  result = sub_1000D9F00();
  if (!v10)
  {
    __break(1u);
    goto LABEL_7;
  }

  sub_100006C7C(a1, a1[3]);
  sub_100002A50(0, &qword_100116990, &protocol descriptor for WatchlistManagerType);
  result = sub_1000D9F00();
  if (!v9)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  sub_100006C7C(a1, a1[3]);
  sub_100002A50(0, &qword_100115330, &protocol descriptor for AppConfigurationManagerType);
  result = sub_1000D9F00();
  if (!v8)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  sub_100006C7C(a1, a1[3]);
  sub_100002A50(0, &qword_100117930, &protocol descriptor for HeadlineProfileScorerType);
  result = sub_1000D9F00();
  if (v7)
  {
    v5 = sub_1000DA310();
    swift_allocObject();
    v6 = sub_1000DA300();
    a2[3] = v5;
    result = sub_1000645CC(&qword_100117950, &type metadata accessor for NewsHeadlineScorerFactory, &protocol conformance descriptor for NewsHeadlineScorerFactory);
    a2[4] = result;
    *a2 = v6;
    return result;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_100064240@<X0>(uint64_t *a1@<X8>)
{
  a1[3] = sub_1000D99A0();
  a1[4] = &protocol witness table for NoopFeedPersonalizerHeadlineScorer;
  sub_100064614(a1);
  return sub_1000D9990();
}

uint64_t sub_1000642A8(uint64_t a1)
{
  sub_1000D9F40();
  sub_100002A50(0, &qword_100117930, &protocol descriptor for HeadlineProfileScorerType);
  sub_1000DA070();
}

uint64_t sub_100064328()
{
  v0 = sub_1000DA0F0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000D9F40();
  sub_100002A50(0, &qword_100117930, &protocol descriptor for HeadlineProfileScorerType);
  sub_1000DA070();

  sub_1000D9F40();
  sub_100002A50(0, &qword_100117938, &protocol descriptor for ConfigurationManagerType);
  sub_1000DA070();

  sub_1000D9F50();
  type metadata accessor for WidgetPersonalizationConfigurationManager();
  sub_1000DA060();

  (*(v1 + 104))(v3, enum case for Scope.singleton(_:), v0);
  sub_1000D9EA0();

  (*(v1 + 8))(v3, v0);
  sub_1000D9F40();
  sub_100002A50(0, &qword_100117940, &protocol descriptor for NewsHeadlineScorerFactoryType);
  sub_1000DA070();
}

uint64_t sub_10006457C(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t sub_1000645CC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t *sub_100064614(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_10006467C@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  sub_100066C4C(0, &qword_100114B58, &type metadata accessor for WidgetQuote, &type metadata accessor for Optional);
  __chkstk_darwin(v4 - 8);
  v52 = &v50 - v5;
  sub_100066C4C(0, &qword_1001152B8, sub_100023694, &type metadata accessor for Optional);
  __chkstk_darwin(v6 - 8);
  v53 = &v50 - v7;
  v8 = sub_1000D9B40();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for WidgetStock(0);
  __chkstk_darwin(v12);
  v14 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v50 - v16;
  if (a1)
  {
    if (qword_100114108 != -1)
    {
      swift_once();
    }

    v18 = static Stock.compactPlaceholder;
  }

  else
  {
    if (qword_100114100 != -1)
    {
      swift_once();
    }

    v18 = static Stock.placeholder;
  }

  v19 = sub_100015294(v8, v18);
  (*(v9 + 16))(v11, v19, v8);
  v20 = *(v12 + 20);
  v21 = sub_1000D9450();
  v22 = *(v21 - 8);
  v23 = *(v22 + 56);
  v50 = v20;
  v23(&v17[v20], 1, 1, v21);
  v24 = *(v12 + 24);
  sub_10006F9D8(&v17[v24]);
  v25 = type metadata accessor for PreparedSparkline(0);
  v26 = *(*(v25 - 8) + 56);
  v51 = v24;
  v26(&v17[v24], 0, 1, v25);
  (*(v9 + 32))(v17, v11, v8);
  if (qword_100114120 != -1)
  {
    swift_once();
  }

  v27 = qword_100128ED8;
  sub_100023694(0);
  (*(*(v28 - 8) + 56))(v53, 1, 1, v28);
  sub_100065CB0(v17, v14);

  v29 = sub_1000D9AC0();
  v31 = v30;
  v32 = sub_1000D9B30();
  v34 = v33;
  sub_100065D14(v14);
  *a2 = v29;
  *(a2 + 8) = v31;
  *(a2 + 16) = v32;
  *(a2 + 24) = v34;
  *(a2 + 32) = sub_1000D9AF0();
  *(a2 + 40) = v35;
  *(a2 + 48) = sub_1000BA50C();
  *(a2 + 56) = v36 & 1;
  *(a2 + 64) = v37;
  *(a2 + 72) = v38;
  sub_100065CB0(v17, v14);
  sub_10009FCB4(v14, v54);
  v39 = v54[1];
  *(a2 + 80) = v54[0];
  *(a2 + 96) = v39;
  *(a2 + 112) = v55[0];
  *(a2 + 121) = *(v55 + 9);
  v40 = v52;
  sub_100066B5C(&v17[v50], v52, &qword_100114B58, &type metadata accessor for WidgetQuote);
  if ((*(v22 + 48))(v40, 1, v21) == 1)
  {
    sub_100066BDC(v40, &qword_100114B58, &type metadata accessor for WidgetQuote);
    v41 = 2;
    v42 = v53;
  }

  else
  {
    v43 = COERCE_DOUBLE(sub_1000D93D0());
    v45 = v44;
    (*(v22 + 8))(v40, v21);
    v42 = v53;
    if (v45)
    {
      v41 = 2;
    }

    else
    {
      v41 = v43 < 0.0;
    }
  }

  *(a2 + 137) = v41;
  v46 = type metadata accessor for DetailContentViewModel(0);
  *(a2 + v46[10]) = v27;
  sub_100066B5C(v42, a2 + v46[11], &qword_1001152B8, sub_100023694);
  sub_100066B5C(&v17[v51], a2 + v46[9], &qword_100114B60, type metadata accessor for PreparedSparkline);
  v47 = v46[12];
  sub_1000D9AD0();
  sub_100066BDC(v42, &qword_1001152B8, sub_100023694);
  sub_100065D14(v17);
  v48 = sub_1000D8F30();
  return (*(*(v48 - 8) + 56))(a2 + v47, 0, 1, v48);
}

uint64_t sub_100064CB4()
{
  v0 = sub_1000D9C40();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000D9B40();
  sub_1000152CC(v4, static Stock.placeholder);
  sub_100015294(v4, static Stock.placeholder);
  (*(v1 + 104))(v3, enum case for StockType.equity(_:), v0);
  return sub_1000D9B10();
}

uint64_t sub_100064E5C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1000D9C40();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000D9B40();
  sub_1000152CC(v9, a2);
  sub_100015294(v9, a2);
  (*(v6 + 104))(v8, enum case for StockType.equity(_:), v5);
  return sub_1000D9B10();
}

uint64_t sub_100065030(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v4 = sub_1000D9B40();

  return sub_100015294(v4, a2);
}

uint64_t sub_1000650A8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_1000D9B40();
  v7 = sub_100015294(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t sub_100065140()
{
  sub_100066C4C(0, &qword_1001152F0, &type metadata accessor for Date, &type metadata accessor for Optional);
  __chkstk_darwin(v0 - 8);
  v2 = &v10 - v1;
  v3 = sub_1000D9480();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000D9450();
  sub_1000152CC(v7, qword_100128EC0);
  sub_100015294(v7, qword_100128EC0);
  (*(v4 + 104))(v6, enum case for ExchangeStatus.open(_:), v3);
  v8 = sub_1000D9090();
  (*(*(v8 - 8) + 56))(v2, 1, 1, v8);
  return sub_1000D9430();
}

uint64_t sub_10006531C()
{
  v20 = sub_1000D90C0();
  v0 = *(v20 - 8);
  __chkstk_darwin(v20);
  v2 = &v17 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = _swiftEmptyArrayStorage;
  v3 = 10;
  sub_10007BCEC(0, 10, 0);
  v4 = v22;
  v19 = (v0 + 8);
  do
  {
    sub_1000D90B0();
    v5 = sub_1000D90A0();
    v7 = v6;
    (*v19)(v2, v20);
    v21 = 0;
    swift_stdlib_random();
    v23._countAndFlagsBits = 46;
    v23._object = 0xE100000000000000;
    v8 = sub_1000DBA30(v23, (v21 >> 62) + 3);
    v10 = v9;
    v21 = 0;
    swift_stdlib_random();
    v24._countAndFlagsBits = 46;
    v24._object = 0xE100000000000000;
    result = sub_1000DBA30(v24, (v21 >> 63) | 2);
    v22 = v4;
    v14 = *(v4 + 16);
    v13 = *(v4 + 24);
    if (v14 >= v13 >> 1)
    {
      v18 = result;
      v16 = v12;
      sub_10007BCEC((v13 > 1), v14 + 1, 1);
      v12 = v16;
      result = v18;
      v4 = v22;
    }

    *(v4 + 16) = v14 + 1;
    v15 = (v4 + 48 * v14);
    v15[4] = v5;
    v15[5] = v7;
    v15[6] = v8;
    v15[7] = v10;
    v15[8] = result;
    v15[9] = v12;
    --v3;
  }

  while (v3);
  qword_100128ED8 = v4;
  return result;
}

uint64_t sub_100065504()
{
  sub_100066C4C(0, &qword_100114B58, &type metadata accessor for WidgetQuote, &type metadata accessor for Optional);
  __chkstk_darwin(v0 - 8);
  v2 = &v39 - v1;
  sub_100066C4C(0, &qword_1001152B8, sub_100023694, &type metadata accessor for Optional);
  __chkstk_darwin(v3 - 8);
  v5 = &v39 - v4;
  v6 = type metadata accessor for WidgetStock(0);
  __chkstk_darwin(v6);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v39 - v10;
  v12 = type metadata accessor for DetailContentViewModel(0);
  sub_1000152CC(v12, qword_100128EE0);
  v13 = sub_100015294(v12, qword_100128EE0);
  if (qword_100114130 != -1)
  {
    swift_once();
  }

  v14 = sub_100015294(v6, qword_100128EF8);
  sub_100065CB0(v14, v11);
  if (qword_100114120 != -1)
  {
    swift_once();
  }

  v15 = qword_100128ED8;
  sub_100023694(0);
  v17 = *(*(v16 - 8) + 56);
  v40 = v5;
  v17(v5, 1, 1, v16);
  sub_100065CB0(v11, v8);
  v39 = v15;

  v18 = sub_1000D9AC0();
  v20 = v19;
  v21 = sub_1000D9B30();
  v23 = v22;
  sub_100065D14(v8);
  *v13 = v18;
  *(v13 + 8) = v20;
  *(v13 + 16) = v21;
  *(v13 + 24) = v23;
  *(v13 + 32) = sub_1000D9AF0();
  *(v13 + 40) = v24;
  *(v13 + 48) = sub_1000BA50C();
  *(v13 + 56) = v25 & 1;
  *(v13 + 64) = v26;
  *(v13 + 72) = v27;
  sub_100065CB0(v11, v8);
  sub_10009FCB4(v8, v41);
  v28 = v41[1];
  *(v13 + 80) = v41[0];
  *(v13 + 96) = v28;
  *(v13 + 112) = v42[0];
  *(v13 + 121) = *(v42 + 9);
  sub_100066B5C(&v11[*(v6 + 20)], v2, &qword_100114B58, &type metadata accessor for WidgetQuote);
  v29 = sub_1000D9450();
  v30 = *(v29 - 8);
  if ((*(v30 + 48))(v2, 1, v29) == 1)
  {
    sub_100066BDC(v2, &qword_100114B58, &type metadata accessor for WidgetQuote);
    v31 = 2;
  }

  else
  {
    v32 = COERCE_DOUBLE(sub_1000D93D0());
    v34 = v33;
    (*(v30 + 8))(v2, v29);
    if (v34)
    {
      v31 = 2;
    }

    else
    {
      v31 = v32 < 0.0;
    }
  }

  *(v13 + 137) = v31;
  v35 = v40;
  *(v13 + v12[10]) = v39;
  sub_100066B5C(v35, v13 + v12[11], &qword_1001152B8, sub_100023694);
  sub_100066B5C(&v11[*(v6 + 24)], v13 + v12[9], &qword_100114B60, type metadata accessor for PreparedSparkline);
  v36 = v12[12];
  sub_1000D9AD0();
  sub_100066BDC(v35, &qword_1001152B8, sub_100023694);
  sub_100065D14(v11);
  v37 = sub_1000D8F30();
  return (*(*(v37 - 8) + 56))(v13 + v36, 0, 1, v37);
}

uint64_t sub_1000659E4()
{
  sub_100066C4C(0, &qword_100114B58, &type metadata accessor for WidgetQuote, &type metadata accessor for Optional);
  __chkstk_darwin(v0 - 8);
  v2 = &v16 - v1;
  v3 = sub_1000D9B40();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for WidgetStock(0);
  sub_1000152CC(v7, qword_100128EF8);
  v8 = sub_100015294(v7, qword_100128EF8);
  if (qword_100114110 != -1)
  {
    swift_once();
  }

  v9 = sub_100015294(v3, static Stock.largeComplicationPlaceholder);
  (*(v4 + 16))(v6, v9, v3);
  if (qword_100114118 != -1)
  {
    swift_once();
  }

  v10 = sub_1000D9450();
  v11 = sub_100015294(v10, qword_100128EC0);
  v12 = *(v10 - 8);
  (*(v12 + 16))(v2, v11, v10);
  (*(v12 + 56))(v2, 0, 1, v10);
  v13 = *(v7 + 24);
  v14 = type metadata accessor for PreparedSparkline(0);
  (*(*(v14 - 8) + 56))(v8 + v13, 1, 1, v14);
  (*(v4 + 32))(v8, v6, v3);
  return sub_10005A100(v2, v8 + *(v7 + 20));
}

uint64_t sub_100065CB0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WidgetStock(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100065D14(uint64_t a1)
{
  v2 = type metadata accessor for WidgetStock(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100065D70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v19[0] = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_1000DBE80();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v19 - v9;
  v11 = *(AssociatedTypeWitness - 8);
  v13 = __chkstk_darwin(v12);
  v15 = v19 - v14;
  (*(v8 + 16))(v10, a1, v7, v13);
  if ((*(v11 + 48))(v10, 1, AssociatedTypeWitness) == 1)
  {
    (*(v8 + 8))(v10, v7);
    v16 = *(a2 + 60);
    v17 = swift_getAssociatedTypeWitness();
    return (*(*(v17 - 8) + 16))(a3, v19[1] + v16, v17);
  }

  else
  {
    (*(v11 + 32))(v15, v10, AssociatedTypeWitness);
    sub_1000D8D30();
    return (*(v11 + 8))(v15, AssociatedTypeWitness);
  }
}

uint64_t sub_100065FDC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1702060386 && a2 == 0xE400000000000000;
  if (v3 || (sub_1000DC360() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C6F686563616C70 && a2 == 0xEB00000000726564)
  {

    return 1;
  }

  else
  {
    v6 = sub_1000DC360();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1000660AC(char a1)
{
  if (a1)
  {
    return 0x6C6F686563616C70;
  }

  else
  {
    return 1702060386;
  }
}

uint64_t sub_1000660E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (sub_1000DB8D0())
  {
    swift_getAssociatedTypeWitness();
    v14[0] = a3;
    v14[1] = a4;
    v14[2] = a5;
    v14[3] = a6;
    v14[4] = a7;
    type metadata accessor for NilPlaceholderFormatStyle(0, v14);
    v12 = sub_1000DB8D0();
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

uint64_t sub_1000661B0(void *a1, uint64_t a2)
{
  v13 = *(a2 + 16);
  v3 = v13;
  v12 = *(a2 + 24);
  v10[1] = a2;
  v11 = *(a2 + 40);
  v14 = v12;
  v15 = v11;
  type metadata accessor for NilPlaceholderFormatStyle.CodingKeys(255, &v13);
  swift_getWitnessTable();
  v4 = sub_1000DC300();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v10 - v6;
  sub_100006C7C(a1, a1[3]);
  sub_1000DC480();
  LOBYTE(v13) = 0;
  *&v12 = v3;
  v8 = v16;
  sub_1000DC2F0();
  if (!v8)
  {
    LOBYTE(v13) = 1;
    swift_getAssociatedTypeWitness();
    sub_1000DC2F0();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1000663B0(uint64_t a1, void *a2)
{
  sub_1000DB880();
  swift_getAssociatedTypeWitness();
  return sub_1000DB880();
}

Swift::Int sub_10006642C(void *a1)
{
  sub_1000DC420();
  sub_1000663B0(v3, a1);
  return sub_1000DC460();
}

uint64_t sub_100066474@<X0>(void *a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v38 = a7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v37 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v39 = &v35 - v13;
  v42 = *(a2 - 8);
  __chkstk_darwin(v14);
  v46 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = a2;
  v49 = a3;
  v50 = a4;
  v51 = a5;
  v52 = a6;
  type metadata accessor for NilPlaceholderFormatStyle.CodingKeys(255, &v48);
  swift_getWitnessTable();
  v47 = sub_1000DC240();
  v41 = *(v47 - 8);
  __chkstk_darwin(v47);
  v17 = &v35 - v16;
  v43 = a2;
  v44 = a3;
  v48 = a2;
  v49 = a3;
  v40 = a4;
  v50 = a4;
  v51 = a5;
  v52 = a6;
  v18 = type metadata accessor for NilPlaceholderFormatStyle(0, &v48);
  v36 = *(v18 - 8);
  __chkstk_darwin(v18);
  v20 = &v35 - v19;
  sub_100006C7C(a1, a1[3]);
  v21 = v53;
  sub_1000DC470();
  if (v21)
  {
    return sub_100006D0C(a1);
  }

  v22 = v20;
  v35 = v18;
  v24 = v41;
  v23 = v42;
  v53 = a1;
  v25 = AssociatedTypeWitness;
  LOBYTE(v48) = 0;
  v26 = v46;
  v27 = v43;
  sub_1000DC220();
  v28 = *(v23 + 32);
  v44 = v22;
  v28(v22, v26, v27);
  LOBYTE(v48) = 1;
  v29 = v39;
  v30 = v25;
  sub_1000DC220();
  (*(v24 + 8))(v17, v47);
  v31 = v35;
  v32 = v44;
  (*(v37 + 32))(&v44[*(v35 + 60)], v29, v30);
  v33 = v36;
  (*(v36 + 16))(v38, v32, v31);
  sub_100006D0C(v53);
  return (*(v33 + 8))(v32, v31);
}

Swift::Int sub_100066938(uint64_t a1)
{
  sub_1000DC420();
  StockChartHighlightStyle.hash(into:)(v3, *v1);
  return sub_1000DC460();
}

uint64_t sub_1000669A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100065FDC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000669D8@<X0>(_BYTE *a2@<X8>)
{
  result = sub_1000673D8();
  *a2 = result;
  return result;
}

uint64_t sub_100066A10(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.description.getter(a1, WitnessTable);
}

uint64_t sub_100066A64(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.debugDescription.getter(a1, WitnessTable);
}

Swift::Int sub_100066B04(uint64_t a1, void *a2)
{
  sub_1000DC420();
  sub_1000663B0(v4, a2);
  return sub_1000DC460();
}

uint64_t sub_100066B5C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_100066C4C(0, a3, a4, &type metadata accessor for Optional);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_100066BDC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_100066C4C(0, a2, a3, &type metadata accessor for Optional);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_100066C4C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_100066CB8(uint64_t a1)
{
  AssociatedTypeWitness = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return AssociatedTypeWitness;
}

uint64_t sub_100066D60(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 80);
  if (v10 <= v7)
  {
    v12 = v7;
  }

  else
  {
    v12 = *(v9 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v13 = *(v6 + 64) + v11;
  if (a2 <= v12)
  {
    goto LABEL_28;
  }

  v14 = (v13 & ~v11) + *(*(AssociatedTypeWitness - 8) + 64);
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v17 = ((a2 - v12 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v17))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v17 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v17 < 2)
    {
LABEL_27:
      if (v12)
      {
LABEL_28:
        if (v7 >= v10)
        {
          v23 = *(v6 + 48);

          return v23(a1, v7, v5);
        }

        else
        {
          v21 = *(v9 + 48);

          return v21((a1 + v13) & ~v11);
        }
      }

      return 0;
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_27;
  }

LABEL_14:
  v18 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v18 = 0;
  }

  if (v14)
  {
    if (v14 <= 3)
    {
      v19 = v14;
    }

    else
    {
      v19 = 4;
    }

    if (v19 > 2)
    {
      if (v19 == 3)
      {
        v20 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v20 = *a1;
      }
    }

    else if (v19 == 1)
    {
      v20 = *a1;
    }

    else
    {
      v20 = *a1;
    }
  }

  else
  {
    v20 = 0;
  }

  return v12 + (v20 | v18) + 1;
}

void sub_100066FD8(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v24 = v8;
  v9 = *(v8 + 84);
  v10 = *(swift_getAssociatedTypeWitness() - 8);
  v11 = *(v10 + 84);
  if (v11 <= v9)
  {
    v12 = v9;
  }

  else
  {
    v12 = *(v10 + 84);
  }

  v13 = *(v10 + 80);
  v14 = *(v8 + 64) + v13;
  v15 = (v14 & ~v13) + *(v10 + 64);
  if (a3 <= v12)
  {
    v16 = 0;
  }

  else if (v15 <= 3)
  {
    v19 = ((a3 - v12 + ~(-1 << (8 * v15))) >> (8 * v15)) + 1;
    if (HIWORD(v19))
    {
      v16 = 4;
    }

    else
    {
      if (v19 < 0x100)
      {
        v20 = 1;
      }

      else
      {
        v20 = 2;
      }

      if (v19 >= 2)
      {
        v16 = v20;
      }

      else
      {
        v16 = 0;
      }
    }
  }

  else
  {
    v16 = 1;
  }

  if (v12 < a2)
  {
    v17 = ~v12 + a2;
    if (v15 < 4)
    {
      v18 = (v17 >> (8 * v15)) + 1;
      if (v15)
      {
        v21 = v17 & ~(-1 << (8 * v15));
        bzero(a1, v15);
        if (v15 != 3)
        {
          if (v15 == 2)
          {
            *a1 = v21;
            if (v16 > 1)
            {
LABEL_46:
              if (v16 == 2)
              {
                *&a1[v15] = v18;
              }

              else
              {
                *&a1[v15] = v18;
              }

              return;
            }
          }

          else
          {
            *a1 = v17;
            if (v16 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v21;
        a1[2] = BYTE2(v21);
      }

      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v15);
      *a1 = v17;
      v18 = 1;
      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v16)
    {
      a1[v15] = v18;
    }

    return;
  }

  if (v16 > 1)
  {
    if (v16 != 2)
    {
      *&a1[v15] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v15] = 0;
  }

  else if (v16)
  {
    a1[v15] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if (v9 >= v11)
  {
    v23 = *(v24 + 56);

    v23(a1, a2, v9, v7);
  }

  else
  {
    v22 = *(v10 + 56);

    v22(&a1[v14] & ~v13, a2);
  }
}

uint64_t sub_1000673E0@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 48) = 1;
  *(a3 + 56) = 1;
  v4 = objc_opt_self();
  *(a3 + 64) = [v4 labelColor];
  *(a3 + 72) = [v4 systemBackgroundColor];
  *(a3 + 80) = [objc_allocWithZone(UIColor) initWithRed:0.556862745 green:0.556862745 blue:0.576470588 alpha:1.0];
  *(a3 + 88) = [v4 separatorColor];
  *(a3 + 96) = [v4 separatorColor];
  *(a3 + 104) = [objc_allocWithZone(UIColor) initWithRed:0.882352941 green:0.960784314 blue:0.905882353 alpha:1.0];
  *(a3 + 112) = [objc_allocWithZone(UIColor) initWithRed:0.0 green:0.490196078 blue:0.105882353 alpha:1.0];
  *(a3 + 120) = [objc_allocWithZone(UIColor) initWithRed:0.203921569 green:0.780392157 blue:0.349019608 alpha:1.0];
  *(a3 + 128) = [objc_allocWithZone(UIColor) initWithRed:0.247058824 green:0.941176471 blue:0.419607843 alpha:1.0];
  *(a3 + 136) = [objc_allocWithZone(UIColor) initWithRed:0.870588235 green:0.0274509804 blue:0.109803922 alpha:1.0];
  *(a3 + 144) = [objc_allocWithZone(UIColor) initWithRed:1.0 green:0.231372549 blue:0.188235294 alpha:1.0];
  *(a3 + 152) = [objc_allocWithZone(UIColor) initWithRed:0.231372549 green:0.588235294 blue:0.97254902 alpha:1.0];
  *(a3 + 160) = [v4 secondaryLabelColor];
  *(a3 + 168) = [v4 tertiaryLabelColor];
  *(a3 + 176) = [v4 secondaryLabelColor];
  *(a3 + 184) = [objc_allocWithZone(UIColor) initWithRed:0.556862745 green:0.556862745 blue:0.576470588 alpha:0.14];
  *(a3 + 192) = [objc_allocWithZone(UIColor) initWithRed:0.298039216 green:0.850980392 blue:0.392156863 alpha:1.0];
  *(a3 + 200) = [objc_allocWithZone(UIColor) initWithRed:0.352941176 green:0.784313725 blue:0.980392157 alpha:1.0];
  *(a3 + 208) = [objc_allocWithZone(UIColor) initWithRed:0.0 green:0.592156863 blue:1.0 alpha:1.0];
  *(a3 + 216) = [objc_allocWithZone(UIColor) initWithRed:0.552941176 green:0.294117647 blue:1.0 alpha:1.0];
  *(a3 + 224) = [objc_allocWithZone(UIColor) initWithRed:0.407843137 green:0.0 blue:1.0 alpha:1.0];
  *(a3 + 232) = 1;
  *(a3 + 240) = [objc_allocWithZone(UIColor) initWithWhite:0.670588235 alpha:1.0];
  v5 = [v4 whiteColor];
  v6 = [v5 colorWithAlphaComponent:0.25];

  *(a3 + 248) = v6;
  v7 = [v4 whiteColor];
  v8 = [v7 colorWithAlphaComponent:0.25];

  *(a3 + 256) = v8;
  v9 = [v4 whiteColor];
  v10 = [v9 colorWithAlphaComponent:0.6];

  *(a3 + 264) = v10;
  v11 = [v4 grayColor];
  v12 = [v11 colorWithAlphaComponent:0.3];

  *(a3 + 272) = v12;
  *(a3 + 280) = [objc_allocWithZone(UIColor) initWithRed:0.365 green:0.365 blue:0.365 alpha:1.0];
  *(a3 + 288) = [v4 whiteColor];
  *(a3 + 296) = [v4 blackColor];
  *(a3 + 304) = [v4 secondaryLabelColor];
  *(a3 + 312) = [v4 secondarySystemBackgroundColor];
  *(a3 + 320) = [v4 secondaryLabelColor];
  *(a3 + 328) = [v4 labelColor];
  *(a3 + 336) = [v4 secondarySystemFillColor];
  *(a3 + 344) = [objc_allocWithZone(UIColor) initWithRed:0.305882353 green:0.305882353 blue:0.31372549 alpha:0.2];
  *(a3 + 352) = [objc_allocWithZone(UIColor) initWithRed:0.556862745 green:0.556862745 blue:0.576470588 alpha:1.0];
  *(a3 + 360) = [objc_allocWithZone(UIColor) initWithRed:1.0 green:1.0 blue:1.0 alpha:0.3];
  *(a3 + 368) = [v4 secondaryLabelColor];
  *(a3 + 376) = [v4 labelColor];
  result = sub_100023738(a1, a3);
  *(a3 + 40) = a2;
  return result;
}

uint64_t sub_100067A74(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 384))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100067ABC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 376) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
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
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 384) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 384) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_100067B70()
{
  v1 = *(v0 + 40);
  if (v1 && (v2 = [v1 horizontalSizeClass], v2 >= 2))
  {
    if (v2 == 2)
    {
      sub_100068510();
      return sub_1000DBE40();
    }

    else
    {
      result = sub_1000DC0D0();
      __break(1u);
    }
  }

  else
  {
    if (sub_1000DB5C0())
    {
      v3 = [objc_opt_self() currentDevice];
      v4 = [v3 userInterfaceIdiom];

      v5 = objc_opt_self();
      if (v4)
      {
        v6 = [v5 secondarySystemBackgroundColor];
      }

      else
      {
        v6 = [v5 systemBackgroundColor];
      }
    }

    else
    {
      v6 = [objc_opt_self() secondarySystemBackgroundColor];
    }

    return v6;
  }

  return result;
}

id sub_100067CC4()
{
  v1 = *(v0 + 40);
  if (v1 && (v2 = [v1 horizontalSizeClass], v2 >= 2))
  {
    if (v2 != 2)
    {
      result = sub_1000DC0D0();
      __break(1u);
      return result;
    }

    v4 = objc_opt_self();
    v5 = &selRef_systemBackgroundColor;
  }

  else
  {
    v3 = sub_1000DB5C0();
    v4 = objc_opt_self();
    v5 = &selRef_systemBackgroundColor;
    if (v3)
    {
      v5 = &selRef_clearColor;
    }
  }

  v6 = [v4 *v5];

  return v6;
}

id sub_100067DB4()
{
  v1 = *(v0 + 40);
  if (v1 && (v2 = [v1 horizontalSizeClass], v2 >= 2))
  {
    if (v2 == 2)
    {
      sub_100068510();
      return sub_1000DBE40();
    }

    else
    {
      result = sub_1000DC0D0();
      __break(1u);
    }
  }

  else
  {
    v3 = sub_1000DB5C0();
    v4 = objc_opt_self();
    if (v3)
    {
      v5 = [v4 clearColor];
    }

    else
    {
      v5 = [v4 secondarySystemBackgroundColor];
    }

    return v5;
  }

  return result;
}

id sub_100067EE8()
{
  v0 = [objc_opt_self() systemBackgroundColor];

  return v0;
}

id sub_100067F28()
{
  v0 = [objc_opt_self() systemGroupedBackgroundColor];

  return v0;
}

id sub_100067F6C()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  v2 = objc_opt_self();
  v3 = &selRef_systemBackgroundColor;
  if (v1)
  {
    v3 = &selRef_secondarySystemBackgroundColor;
  }

  v4 = [v2 *v3];

  return v4;
}

id sub_100068000()
{
  if (sub_1000DB5C0())
  {
    v0 = [objc_opt_self() clearColor];

    return v0;
  }

  else
  {

    return sub_100067B70();
  }
}

id sub_100068078(uint64_t a1, uint64_t a2, SEL *a3, SEL *a4)
{
  sub_1000DB5C0();
  v6 = sub_1000DB5C0();
  v7 = objc_opt_self();
  if (v6)
  {
    v8 = a3;
  }

  else
  {
    v8 = a4;
  }

  v9 = [v7 *v8];

  return v9;
}

uint64_t sub_1000680E0()
{
  v1 = v0[3];
  v2 = v0[4];
  sub_100006C7C(v0, v1);
  return (*(v2 + 16))(v1, v2);
}

uint64_t sub_100068138()
{
  v1 = v0[3];
  v2 = v0[4];
  sub_100006C7C(v0, v1);
  return (*(v2 + 24))(v1, v2);
}

id sub_10006818C()
{
  v0 = [objc_opt_self() whiteColor];

  return v0;
}

id sub_1000681F8()
{
  if (UIAccessibilityDarkerSystemColorsEnabled())
  {
    v1 = 112;
  }

  else
  {
    v2 = UIAccessibilityDarkerSystemColorsEnabled();
    v1 = 120;
    if (v2)
    {
      v1 = 128;
    }
  }

  v3 = *(v0 + v1);

  return v3;
}

id sub_100068244()
{
  v1 = UIAccessibilityDarkerSystemColorsEnabled();
  v2 = 144;
  if (v1)
  {
    v2 = 136;
  }

  v3 = *(v0 + v2);

  return v3;
}

id sub_100068280()
{
  v1 = UIAccessibilityDarkerSystemColorsEnabled();
  v2 = 120;
  if (v1)
  {
    v2 = 128;
  }

  v3 = *(v0 + v2);

  return v3;
}

id sub_1000682F8()
{
  if (UIAccessibilityDarkerSystemColorsEnabled())
  {
    v1 = UIAccessibilityDarkerSystemColorsEnabled();
    v2 = 120;
    if (v1)
    {
      v2 = 128;
    }
  }

  else
  {
    v2 = 192;
  }

  v3 = *(v0 + v2);

  return v3;
}

uint64_t sub_100068374()
{
  v1 = v0[3];
  v2 = v0[4];
  sub_100006C7C(v0, v1);
  return (*(v2 + 32))(v1, v2);
}

id sub_1000683E0(uint64_t a1)
{
  v1 = sub_1000DB5C0();
  v2 = objc_opt_self();
  v3 = &selRef_tertiarySystemFillColor;
  if ((v1 & 1) == 0)
  {
    v3 = &selRef_secondarySystemFillColor;
  }

  v4 = [v2 *v3];

  return v4;
}

id sub_100068464()
{
  v0 = [objc_opt_self() secondarySystemBackgroundColor];

  return v0;
}

unint64_t sub_100068510()
{
  result = qword_100117A68;
  if (!qword_100117A68)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100117A68);
  }

  return result;
}

uint64_t sub_100068598(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1000685E0(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_100068630(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13[2] = a5;
  v13[1] = a4;
  sub_10006A1D0(0, &qword_100117B00, sub_10006A17C, &type metadata for WidgetSectionConfigRecord.SymbolConfiguration.Article.CodingKeys, &type metadata accessor for KeyedEncodingContainer);
  v7 = v6;
  v8 = *(v6 - 8);
  __chkstk_darwin(v6);
  v10 = v13 - v9;
  sub_100006C7C(a1, a1[3]);
  sub_10006A17C();
  sub_1000DC480();
  v15 = 0;
  v11 = v13[3];
  sub_1000DC2B0();
  if (!v11)
  {
    v14 = 1;
    sub_1000DC270();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1000687CC(void *a1, uint64_t a2)
{
  sub_10006A1D0(0, &qword_100117AC0, sub_100069EF8, &type metadata for WidgetSectionConfigRecord.SymbolConfiguration.CodingKeys, &type metadata accessor for KeyedEncodingContainer);
  v5 = v4;
  v6 = *(v4 - 8);
  __chkstk_darwin(v4);
  v8 = v10 - v7;
  sub_100006C7C(a1, a1[3]);
  sub_100069EF8();
  sub_1000DC480();
  v10[1] = a2;
  sub_100069F4C();
  sub_100069FF0(&qword_100117AC8, sub_10006A05C, &protocol conformance descriptor for <A> [A]);
  sub_1000DC2F0();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_10006897C()
{
  if (*v0)
  {
    return 0x65764F656C746974;
  }

  else
  {
    return 0x49656C6369747261;
  }
}

void sub_1000689C8(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x49656C6369747261 && a2 == 0xE900000000000044;
  if (v6 || (sub_1000DC360() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x65764F656C746974 && a2 == 0xED00006564697272)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1000DC360();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_100068AB4(uint64_t a1)
{
  v2 = sub_10006A17C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100068AF0(uint64_t a1)
{
  v2 = sub_10006A17C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100068B2C@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_100069500(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
    a1[3] = v7;
  }

  return result;
}

void sub_100068B98(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000011 && 0x80000001000E8DA0 == a2)
  {

    v4 = 0;
  }

  else
  {
    v5 = sub_1000DC360();

    v4 = v5 ^ 1;
  }

  *a3 = v4 & 1;
}

uint64_t sub_100068C2C(uint64_t a1)
{
  v2 = sub_100069EF8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100068C68(uint64_t a1)
{
  v2 = sub_100069EF8();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_100068CA4@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_100069714(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_100068CEC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000014;
  }

  else
  {
    v3 = 0x4E64726F6365725FLL;
  }

  if (v2)
  {
    v4 = 0xEB00000000656D61;
  }

  else
  {
    v4 = 0x80000001000E7B90;
  }

  if (*a2)
  {
    v5 = 0xD000000000000014;
  }

  else
  {
    v5 = 0x4E64726F6365725FLL;
  }

  if (*a2)
  {
    v6 = 0x80000001000E7B90;
  }

  else
  {
    v6 = 0xEB00000000656D61;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1000DC360();
  }

  return v8 & 1;
}

Swift::Int sub_100068DA0()
{
  sub_1000DC420();
  sub_1000DB9F0();

  return sub_1000DC460();
}

double sub_100068E30(uint64_t a1)
{
  sub_1000DB9F0();

  return result;
}

Swift::Int sub_100068EAC(uint64_t a1)
{
  sub_1000DC420();
  sub_1000DB9F0();

  return sub_1000DC460();
}

void sub_100068F38(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v7._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_100108C48;
  v7._object = v3;
  v5 = sub_1000DC170(v4, v7);

  if (v5 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v5)
  {
    v6 = 0;
  }

  *a2 = v6;
}

void sub_100068F98(unint64_t *a1@<X8>)
{
  v2 = 0x80000001000E7B90;
  v3 = 0x4E64726F6365725FLL;
  if (*v1)
  {
    v3 = 0xD000000000000014;
  }

  else
  {
    v2 = 0xEB00000000656D61;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t sub_100068FE4()
{
  if (*v0)
  {
    return 0xD000000000000014;
  }

  else
  {
    return 0x4E64726F6365725FLL;
  }
}

void sub_10006902C(uint64_t a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  v8._countAndFlagsBits = a1;
  v5._rawValue = &off_100108C48;
  v8._object = a2;
  v6 = sub_1000DC170(v5, v8);

  if (v6 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v6)
  {
    v7 = 0;
  }

  *a3 = v7;
}

uint64_t sub_10006909C(uint64_t a1)
{
  v2 = sub_100069DF0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000690D8(uint64_t a1)
{
  v2 = sub_100069DF0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100069114(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = a3;
  v25 = a4;
  v26 = a2;
  v5 = sub_1000DB9A0();
  __chkstk_darwin(v5 - 8);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000D8DA0();
  v23 = *(v8 - 8);
  v24 = v8;
  __chkstk_darwin(v8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10006A1D0(0, &qword_100117AD8, sub_100069DF0, &type metadata for WidgetSectionConfigRecord.CodingKeys, &type metadata accessor for KeyedEncodingContainer);
  v12 = v11;
  v13 = *(v11 - 8);
  __chkstk_darwin(v11);
  v15 = &v22 - v14;
  sub_100006C7C(a1, a1[3]);
  sub_100069DF0();
  sub_1000DC480();
  v31 = 0;
  v16 = v28;
  sub_1000DC2B0();
  if (v16)
  {
    return (*(v13 + 8))(v15, v12);
  }

  v28 = v7;
  sub_1000D8DE0();
  swift_allocObject();
  sub_1000D8DD0();
  (*(v23 + 104))(v10, enum case for JSONEncoder.DateEncodingStrategy.iso8601(_:), v24);
  sub_1000D8DB0();
  v29 = v25;
  sub_100069E44();
  sub_10006A0B0(&qword_100117AE0, sub_10006A128, &protocol witness table for String, &protocol conformance descriptor for <> [A : B]);

  v18 = sub_1000D8DC0();
  v20 = v19;

  sub_1000DB990();
  result = sub_1000DB970();
  if (v21)
  {
    v30 = 1;
    sub_1000DC2B0();
    (*(v13 + 8))(v15, v12);
    sub_10003DB6C(v18, v20);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000694B0@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_100069908(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
  }

  return result;
}

uint64_t sub_100069500(void *a1)
{
  sub_10006A1D0(0, &qword_100117AF0, sub_10006A17C, &type metadata for WidgetSectionConfigRecord.SymbolConfiguration.Article.CodingKeys, &type metadata accessor for KeyedDecodingContainer);
  v4 = v3;
  v5 = *(v3 - 8);
  __chkstk_darwin(v3);
  v7 = &v10 - v6;
  v8 = a1[4];
  sub_100006C7C(a1, a1[3]);
  sub_10006A17C();
  sub_1000DC470();
  if (!v1)
  {
    v12 = 0;
    v8 = sub_1000DC1E0();
    v11 = 1;
    sub_1000DC1A0();
    (*(v5 + 8))(v7, v4);
  }

  sub_100006D0C(a1);
  return v8;
}

void *sub_100069714(void *a1)
{
  sub_10006A1D0(0, &qword_100117A98, sub_100069EF8, &type metadata for WidgetSectionConfigRecord.SymbolConfiguration.CodingKeys, &type metadata accessor for KeyedDecodingContainer);
  v4 = v3;
  v5 = *(v3 - 8);
  __chkstk_darwin(v3);
  v7 = v11 - v6;
  v8 = sub_100006C7C(a1, a1[3]);
  sub_100069EF8();
  v9 = v8;
  sub_1000DC470();
  if (!v1)
  {
    sub_100069F4C();
    sub_100069FF0(&qword_100117AB0, sub_100069F9C, &protocol conformance descriptor for <A> [A]);
    sub_1000DC220();
    (*(v5 + 8))(v7, v4);
    v9 = v11[1];
  }

  sub_100006D0C(a1);
  return v9;
}

uint64_t sub_100069908(void *a1)
{
  v2 = sub_1000D8D50();
  v28 = *(v2 - 8);
  v29 = v2;
  __chkstk_darwin(v2);
  v30 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000DB9A0();
  v32 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10006A1D0(0, &qword_100117A70, sub_100069DF0, &type metadata for WidgetSectionConfigRecord.CodingKeys, &type metadata accessor for KeyedDecodingContainer);
  v8 = v7;
  v31 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v24 - v9;
  sub_100006C7C(a1, a1[3]);
  sub_100069DF0();
  v11 = v33;
  sub_1000DC470();
  if (v11)
  {
    return sub_100006D0C(a1);
  }

  v12 = v6;
  v13 = v31;
  v14 = v32;
  v33 = v4;
  v36 = 0;
  sub_1000DC1D0();
  if (v35)
  {
    v15 = v34;
  }

  else
  {
    v15 = 0x676E697373696DLL;
  }

  LOBYTE(v34) = 1;
  v27 = v8;
  v16 = sub_1000DC1A0();
  v26 = v15;
  v19 = a1;
  if (!v17)
  {
    goto LABEL_14;
  }

  v20 = HIBYTE(v17) & 0xF;
  if ((v17 & 0x2000000000000000) == 0)
  {
    v20 = v16 & 0xFFFFFFFFFFFFLL;
  }

  if (!v20)
  {

LABEL_14:
    sub_100033928(_swiftEmptyArrayStorage);
    (*(v13 + 8))(v10, v27);
    goto LABEL_15;
  }

  v25 = v10;
  sub_1000DB990();
  v24 = sub_1000DB960();
  v22 = v21;
  result = (*(v14 + 8))(v12, v33);
  if (v22 >> 60 != 15)
  {

    sub_1000D8D90();
    swift_allocObject();
    sub_1000D8D80();
    (*(v28 + 104))(v30, enum case for JSONDecoder.DateDecodingStrategy.iso8601(_:), v29);
    sub_1000D8D60();
    sub_100069E44();
    sub_10006A0B0(&qword_100117A88, sub_100069EA4, &protocol witness table for String, &protocol conformance descriptor for <> [A : B]);
    v23 = v24;
    sub_1000D8D70();
    (*(v13 + 8))(v25, v27);

    sub_10003F0E4(v23, v22);
    v19 = a1;
LABEL_15:
    sub_100006D0C(v19);
    return v26;
  }

  __break(1u);
  return result;
}

unint64_t sub_100069DF0()
{
  result = qword_100117A78;
  if (!qword_100117A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100117A78);
  }

  return result;
}

void sub_100069E44()
{
  if (!qword_100117A80)
  {
    v0 = sub_1000DB860();
    if (!v1)
    {
      atomic_store(v0, &qword_100117A80);
    }
  }
}

unint64_t sub_100069EA4()
{
  result = qword_100117A90;
  if (!qword_100117A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100117A90);
  }

  return result;
}

unint64_t sub_100069EF8()
{
  result = qword_100117AA0;
  if (!qword_100117AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100117AA0);
  }

  return result;
}

void sub_100069F4C()
{
  if (!qword_100117AA8)
  {
    v0 = sub_1000DBBB0();
    if (!v1)
    {
      atomic_store(v0, &qword_100117AA8);
    }
  }
}

unint64_t sub_100069F9C()
{
  result = qword_100117AB8;
  if (!qword_100117AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100117AB8);
  }

  return result;
}

uint64_t sub_100069FF0(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_100069F4C();
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10006A05C()
{
  result = qword_100117AD0;
  if (!qword_100117AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100117AD0);
  }

  return result;
}

uint64_t sub_10006A0B0(unint64_t *a1, void (*a2)(void), uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_100069E44();
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10006A128()
{
  result = qword_100117AE8;
  if (!qword_100117AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100117AE8);
  }

  return result;
}

unint64_t sub_10006A17C()
{
  result = qword_100117AF8;
  if (!qword_100117AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100117AF8);
  }

  return result;
}

void sub_10006A1D0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_10006A274()
{
  result = qword_100117B08;
  if (!qword_100117B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100117B08);
  }

  return result;
}

unint64_t sub_10006A2CC()
{
  result = qword_100117B10;
  if (!qword_100117B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100117B10);
  }

  return result;
}

unint64_t sub_10006A324()
{
  result = qword_100117B18;
  if (!qword_100117B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100117B18);
  }

  return result;
}

unint64_t sub_10006A37C()
{
  result = qword_100117B20;
  if (!qword_100117B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100117B20);
  }

  return result;
}

unint64_t sub_10006A3D4()
{
  result = qword_100117B28;
  if (!qword_100117B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100117B28);
  }

  return result;
}

unint64_t sub_10006A42C()
{
  result = qword_100117B30;
  if (!qword_100117B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100117B30);
  }

  return result;
}

unint64_t sub_10006A484()
{
  result = qword_100117B38;
  if (!qword_100117B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100117B38);
  }

  return result;
}

unint64_t sub_10006A4DC()
{
  result = qword_100117B40;
  if (!qword_100117B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100117B40);
  }

  return result;
}

unint64_t sub_10006A534()
{
  result = qword_100117B48;
  if (!qword_100117B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100117B48);
  }

  return result;
}

uint64_t sub_10006A598(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

__n128 sub_10006A5BC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_10006A5F0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 145))
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

uint64_t sub_10006A638(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 144) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 145) = 1;
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

    *(result + 145) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10006A6CC@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  sub_10006BAA0(0);
  v4 = v3 - 8;
  __chkstk_darwin(v3);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v28 - v8;
  sub_10006B808(0);
  v11 = v10 - 8;
  __chkstk_darwin(v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v28 - v15;
  *v16 = sub_1000DAC50();
  *(v16 + 1) = 0;
  v16[16] = 0;
  sub_10006BDD4(0, &qword_100117C00, sub_10006B8F8, &type metadata for _HStackLayout, &protocol witness table for _HStackLayout);
  sub_10006AA04(a1, &v16[*(v17 + 44)]);
  KeyPath = swift_getKeyPath();
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  *(v19 + 24) = 1;
  *(v19 + 32) = 0;
  *(v19 + 40) = 0;
  v20 = &v16[*(v11 + 44)];
  *v20 = KeyPath;
  v20[1] = sub_10002B050;
  v20[2] = v19;
  *v9 = sub_1000DAC50();
  *(v9 + 1) = 0;
  v9[16] = 0;
  sub_10006BDD4(0, &qword_100117C08, sub_10006BB8C, &type metadata for _HStackLayout, &protocol witness table for _HStackLayout);
  sub_10006AF40(a1, &v9[*(v21 + 44)]);
  v22 = swift_getKeyPath();
  v23 = swift_allocObject();
  *(v23 + 16) = 0;
  *(v23 + 24) = 0;
  *(v23 + 32) = 0;
  *(v23 + 40) = 1;
  v24 = &v9[*(v4 + 44)];
  *v24 = v22;
  v24[1] = sub_10002B5D4;
  v24[2] = v23;
  sub_10006C120(v16, v13, sub_10006B808);
  sub_10006C120(v9, v6, sub_10006BAA0);
  v25 = v29;
  sub_10006C120(v13, v29, sub_10006B808);
  sub_10006B798(0);
  sub_10006C120(v6, v25 + *(v26 + 48), sub_10006BAA0);
  sub_10006BE40(v9, sub_10006BAA0);
  sub_10006BE40(v16, sub_10006B808);
  sub_10006BE40(v6, sub_10006BAA0);
  return sub_10006BE40(v13, sub_10006B808);
}

uint64_t sub_10006AA04@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v3 = type metadata accessor for PriceChangeView(0);
  __chkstk_darwin(v3);
  v5 = &v35[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_10006BA6C(0);
  __chkstk_darwin(v6 - 8);
  v38 = &v35[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v37 = &v35[-v9];
  v10 = type metadata accessor for SymbolTrendView(0);
  __chkstk_darwin(v10);
  v12 = &v35[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_10006B9C4(0);
  __chkstk_darwin(v13 - 8);
  v15 = &v35[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v16);
  v18 = &v35[-v17];
  v19 = *a1;
  v36 = *a1;
  v20 = *(a1 + 8);
  v44 = *(a1 + 24);
  v45 = v20;
  KeyPath = swift_getKeyPath();
  *v12 = v19;
  *(v12 + 24) = *(a1 + 24);
  *(v12 + 8) = *(a1 + 8);
  v22 = v10[6];
  *&v12[v22] = swift_getKeyPath();
  sub_10006B92C(0, &qword_1001159E8, &type metadata accessor for WidgetFamily, &type metadata accessor for Environment.Content);
  swift_storeEnumTagMultiPayload();
  v23 = v10[7];
  *&v12[v23] = swift_getKeyPath();
  sub_10006B92C(0, &qword_100116758, &type metadata accessor for WidgetRenderingMode, &type metadata accessor for Environment.Content);
  swift_storeEnumTagMultiPayload();
  v24 = &v12[v10[8]];
  *v24 = KeyPath;
  v24[8] = 0;
  sub_10006C0C4(&v45, &v41);
  sub_10006C0C4(&v44, &v41);
  sub_10006BD74(&qword_100117C38, type metadata accessor for SymbolTrendView, &unk_1000DF820);
  sub_1000DB2C0();
  sub_10006BE40(v12, type metadata accessor for SymbolTrendView);
  v25 = *(a1 + 104);
  v41 = *(a1 + 88);
  v42 = v25;
  v43[0] = *(a1 + 120);
  *(v43 + 9) = *(a1 + 129);
  *v5 = swift_getKeyPath();
  sub_10006B92C(0, &qword_100116650, &type metadata accessor for PriceChangeDisplay, &type metadata accessor for Environment.Content);
  swift_storeEnumTagMultiPayload();
  v26 = (v5 + *(v3 + 20));
  v27 = v42;
  *v26 = v41;
  v26[1] = v27;
  v26[2] = v43[0];
  *(v26 + 41) = *(v43 + 9);
  *(v5 + *(v3 + 24)) = v36;
  sub_10006BEFC(&v41, v40);
  sub_10006BD74(&qword_100117C28, type metadata accessor for PriceChangeView, &unk_1000E4400);
  v28 = v37;
  sub_1000DB2C0();
  sub_10006BE40(v5, type metadata accessor for PriceChangeView);
  sub_10006C120(v18, v15, sub_10006B9C4);
  v29 = v28;
  v30 = v38;
  sub_10006C120(v28, v38, sub_10006BA6C);
  v31 = v39;
  sub_10006C120(v15, v39, sub_10006B9C4);
  sub_10006B990(0);
  v33 = v31 + *(v32 + 48);
  *v33 = 0x4020000000000000;
  *(v33 + 8) = 0;
  sub_10006C120(v30, v31 + *(v32 + 64), sub_10006BA6C);
  sub_10006BE40(v29, sub_10006BA6C);
  sub_10006BE40(v18, sub_10006B9C4);
  sub_10006BE40(v30, sub_10006BA6C);
  return sub_10006BE40(v15, sub_10006B9C4);
}

uint64_t sub_10006AF40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_10006BD0C(0);
  v5 = v4;
  __chkstk_darwin(v4);
  v7 = &v30[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_10006BCD8(0);
  __chkstk_darwin(v8 - 8);
  v10 = &v30[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v13 = &v30[-v12];
  sub_10006BC78(0);
  __chkstk_darwin(v14 - 8);
  v16 = &v30[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v17);
  v19 = &v30[-v18];
  v20 = *(a1 + 48);
  *&v31 = *(a1 + 40);
  *(&v31 + 1) = v20;
  sub_10006BEA0();
  sub_1000DB2C0();
  v21 = *(a1 + 104);
  v31 = *(a1 + 88);
  v32 = v21;
  v33[0] = *(a1 + 120);
  *(v33 + 9) = *(a1 + 129);
  LOBYTE(a1) = *a1;
  *v7 = swift_getKeyPath();
  sub_10006B92C(0, &qword_100116650, &type metadata accessor for PriceChangeDisplay, &type metadata accessor for Environment.Content);
  swift_storeEnumTagMultiPayload();
  v22 = type metadata accessor for PriceChangeView(0);
  v23 = (v7 + *(v22 + 20));
  v24 = v32;
  *v23 = v31;
  v23[1] = v24;
  v23[2] = v33[0];
  *(v23 + 41) = *(v33 + 9);
  *(v7 + *(v22 + 24)) = a1;
  KeyPath = swift_getKeyPath();
  v26 = (v7 + *(v5 + 36));
  *v26 = KeyPath;
  v26[1] = sub_10006B2C0;
  v26[2] = 0;
  sub_10006BEFC(&v31, v30);
  sub_10006BFD4();
  sub_1000DB2C0();
  sub_10006BE40(v7, sub_10006BD0C);
  sub_10006C120(v19, v16, sub_10006BC78);
  sub_10006C120(v13, v10, sub_10006BCD8);
  sub_10006C120(v16, a2, sub_10006BC78);
  sub_10006BBC0(0);
  v28 = a2 + *(v27 + 48);
  *v28 = 0x4020000000000000;
  *(v28 + 8) = 0;
  sub_10006C120(v10, a2 + *(v27 + 64), sub_10006BCD8);
  sub_10006BE40(v13, sub_10006BCD8);
  sub_10006BE40(v19, sub_10006BC78);
  sub_10006BE40(v10, sub_10006BCD8);
  return sub_10006BE40(v16, sub_10006BC78);
}

uint64_t sub_10006B2C0(uint64_t a1)
{
  v2 = sub_1000D9690();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v6);
  v9 = &v16 - v8;
  (*(v3 + 32))(&v16 - v8, a1, v2, v7);
  (*(v3 + 16))(v5, v9, v2);
  v10 = (*(v3 + 88))(v5, v2);
  if (v10 == enum case for PriceChangeDisplay.currency(_:))
  {
    (*(v3 + 8))(v9, v2);
    v11 = enum case for PriceChangeDisplay.percentage(_:);
    return (*(v3 + 104))(a1, v11, v2);
  }

  v12 = enum case for PriceChangeDisplay.percentage(_:);
  if (v10 == enum case for PriceChangeDisplay.percentage(_:))
  {
    v13 = v9;
    v14 = enum case for PriceChangeDisplay.currency(_:);
    (*(v3 + 8))(v13, v2);
    v11 = v14;
    return (*(v3 + 104))(a1, v11, v2);
  }

  if (v10 == enum case for PriceChangeDisplay.marketCapitalization(_:))
  {
    (*(v3 + 8))(v9, v2);
    v11 = v12;
    return (*(v3 + 104))(a1, v11, v2);
  }

  result = sub_1000DC350();
  __break(1u);
  return result;
}

uint64_t sub_10006B4C0()
{
  v1 = sub_1000DAE60();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10006B6D0(0);
  __chkstk_darwin(v5);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v0 + 112);
  v14[6] = *(v0 + 96);
  v14[7] = v8;
  v14[8] = *(v0 + 128);
  v15 = *(v0 + 144);
  v9 = *(v0 + 48);
  v14[2] = *(v0 + 32);
  v14[3] = v9;
  v10 = *(v0 + 80);
  v14[4] = *(v0 + 64);
  v14[5] = v10;
  v11 = *(v0 + 16);
  v14[0] = *v0;
  v14[1] = v11;
  *v7 = sub_1000DAD00();
  *(v7 + 1) = 0x4000000000000000;
  v7[16] = 0;
  sub_10006BDD4(0, &qword_100117BF0, sub_10006B764, &type metadata for _VStackLayout, &protocol witness table for _VStackLayout);
  sub_10006A6CC(v14, &v7[*(v12 + 44)]);
  sub_1000DAE40();
  sub_10006BD74(&qword_100117BF8, sub_10006B6D0, &protocol conformance descriptor for VStack<A>);
  sub_1000DB2A0();
  (*(v2 + 8))(v4, v1);
  return sub_10006BE40(v7, sub_10006B6D0);
}

void sub_10006B6D0(uint64_t a1)
{
  if (!qword_100117B50)
  {
    sub_10006B764(255);
    sub_10006BD74(&qword_100117BE8, sub_10006B764, &protocol conformance descriptor for TupleView<A>);
    v1 = sub_1000DB540();
    if (!v2)
    {
      atomic_store(v1, &qword_100117B50);
    }
  }
}

void sub_10006B798(uint64_t a1)
{
  if (!qword_100117B60)
  {
    sub_10006B808(255);
    sub_10006BAA0(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_100117B60);
    }
  }
}

void sub_10006B864(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_10006BD74(a4, a5, &protocol conformance descriptor for TupleView<A>);
    v8 = sub_1000DB4A0();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_10006B92C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_10006B9F8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = sub_1000DA930();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_10006BAC0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_10006BF84(255, &qword_100115740, &type metadata for EdgeInsets, &type metadata accessor for _EnvironmentKeyTransformModifier);
    v4 = sub_1000DA930();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_10006BBF4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata3, a2);
    }
  }
}

void sub_10006BC78(uint64_t a1)
{
  if (!qword_100117BC0)
  {
    sub_1000DAEB0();
    v1 = sub_1000DA930();
    if (!v2)
    {
      atomic_store(v1, &qword_100117BC0);
    }
  }
}

uint64_t sub_10006BD74(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_10006BDD4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  if (!*a2)
  {
    a3(255);
    v6 = sub_1000DA800();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_10006BE40(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_10006BEA0()
{
  result = qword_100117C10;
  if (!qword_100117C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100117C10);
  }

  return result;
}

uint64_t sub_10006BEFC(uint64_t a1, uint64_t a2)
{
  sub_10006BF84(0, &qword_100117C18, &type metadata for PriceChange, &type metadata accessor for Optional);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_10006BF84(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_10006BFD4()
{
  result = qword_100117C20;
  if (!qword_100117C20)
  {
    sub_10006BD0C(255);
    sub_10006BD74(&qword_100117C28, type metadata accessor for PriceChangeView, &unk_1000E4400);
    sub_10006BD74(&qword_100117C30, sub_10006BD40, &protocol conformance descriptor for _EnvironmentKeyTransformModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100117C20);
  }

  return result;
}

uint64_t sub_10006C120(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10006C188()
{
  sub_10006B6D0(255);
  sub_10006BD74(&qword_100117BF8, sub_10006B6D0, &protocol conformance descriptor for VStack<A>);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10006C24C()
{
  v1 = v0;
  v2 = v0 + 2;
  v21 = v0 + 31;
  v22 = v0 + 10;
  v3 = v0[33];
  v4 = sub_10006CB68(v3);
  v6 = v5;
  v0[34] = v4;
  v0[35] = v5;
  sub_10006D000(0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000DDD30;
  *(inited + 32) = 0xD000000000000019;
  v8 = inited + 32;
  *(inited + 40) = 0x80000001000E8960;
  *(inited + 48) = _swiftEmptyArrayStorage;
  sub_100033908(inited);
  swift_setDeallocating();
  sub_10006D0DC(v8);
  v9 = [objc_opt_self() ignoreCacheCachePolicy];
  v0[36] = v9;
  v10 = objc_allocWithZone(FCEdgeCacheHint);
  v11 = sub_1000DB910();
  v12 = sub_1000DB910();
  v13 = [v10 initWithGroupName:v11 cacheControlKey:v12];
  v1[37] = v13;

  v14 = v3[14];
  sub_10006D138(0, &qword_100115350, &type metadata accessor for _ContiguousArrayStorage);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1000DDD30;
  *(v15 + 32) = v4;
  *(v15 + 40) = v6;

  isa = sub_1000DBB00().super.isa;
  v1[38] = isa;

  sub_10006D138(0, &qword_100114E28, &type metadata accessor for Array);
  v17 = sub_1000DB830().super.isa;
  v1[39] = v17;

  v1[2] = v1;
  v1[7] = v21;
  v1[3] = sub_10006C568;
  v18 = swift_continuation_init();
  sub_10006D18C(0);
  v1[17] = v19;
  v1[14] = v18;
  v1[10] = _NSConcreteStackBlock;
  v1[11] = 1107296256;
  v1[12] = sub_10006CCD8;
  v1[13] = &unk_10010ACD0;
  [v14 fetchRecordTreeWithRootIDs:isa branchKeysByRecordType:v17 cachePolicy:v9 edgeCacheHint:v13 completion:v22];

  return _swift_continuation_await(v2);
}

uint64_t sub_10006C568()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 320) = v2;
  if (v2)
  {
    v3 = *(v1 + 264);

    v4 = sub_10006C980;
    v5 = v3;
  }

  else
  {
    v5 = *(v1 + 264);
    v4 = sub_10006C690;
  }

  return _swift_task_switch(v4, v5, 0);
}

uint64_t sub_10006C690()
{
  v2 = *(v0 + 304);
  v1 = *(v0 + 312);
  v3 = *(v0 + 248);

  if (*(v3 + 16))
  {
    v4 = sub_100033210(*(v0 + 272), *(v0 + 280));
    if (v5)
    {
      v6 = v4;

      v7 = (*(v3 + 56) + 16 * v6);
      v8 = *v7;
      v9 = v7[1];
      sub_10006D340(*v7, v9);

      sub_1000D8D90();
      swift_allocObject();
      sub_1000D8D80();
      sub_10006D394();
      sub_1000D8D70();
      v23 = *(v0 + 288);

      sub_10003DB6C(v8, v9);

      v24 = *(v0 + 224);
      v25 = *(v0 + 232);
      v26 = *(v0 + 240);
LABEL_13:
      v27 = *(v0 + 8);

      return v27(v24, v25, v26);
    }
  }

  v11 = *(v0 + 272);
  v10 = *(v0 + 280);

  sub_10006D2EC();
  swift_allocError();
  *v12 = v11;
  v12[1] = v10;
  swift_willThrow();
  swift_getErrorValue();
  if (sub_1000DC3C0())
  {
    if (qword_100114090 != -1)
    {
      swift_once();
    }

    v13 = sub_1000DA370();
    sub_100015294(v13, qword_100128DD8);
    v14 = sub_1000DA350();
    v15 = sub_1000DBDB0();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "Widget Section Config service encountered missing record", v16, 2u);
    }

    v18 = *(v0 + 288);
    v17 = *(v0 + 296);

    v26 = sub_100033928(_swiftEmptyArrayStorage);

    v25 = 0xE700000000000000;
    v24 = 0x676E697373696DLL;
    goto LABEL_13;
  }

  v20 = *(v0 + 288);
  v19 = *(v0 + 296);
  swift_willThrow();

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_10006C980()
{
  v1 = v0[39];
  v3 = v0[37];
  v2 = v0[38];
  swift_willThrow();

  swift_getErrorValue();
  if (sub_1000DC3C0())
  {
    if (qword_100114090 != -1)
    {
      swift_once();
    }

    v4 = sub_1000DA370();
    sub_100015294(v4, qword_100128DD8);
    v5 = sub_1000DA350();
    v6 = sub_1000DBDB0();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Widget Section Config service encountered missing record", v7, 2u);
    }

    v9 = v0[36];
    v8 = v0[37];

    v10 = sub_100033928(_swiftEmptyArrayStorage);

    v11 = v0[1];

    return v11(0x676E697373696DLL, 0xE700000000000000, v10);
  }

  else
  {
    v14 = v0[36];
    v13 = v0[37];
    swift_willThrow();

    v15 = v0[1];

    return v15();
  }
}

uint64_t sub_10006CB68(void *a1)
{
  v2 = sub_1000D95E0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000D9CF0();
  type metadata accessor for WidgetSectionConfigRecordService();
  sub_10006D3E8(&qword_100117D30, &unk_1000E2638);
  sub_1000D9D50();

  result = v9;
  v7 = HIBYTE(v10) & 0xF;
  if ((v10 & 0x2000000000000000) == 0)
  {
    v7 = v9 & 0xFFFFFFFFFFFFLL;
  }

  if (!v7)
  {

    sub_100006C7C(a1 + 15, a1[18]);
    sub_1000D98B0();
    v8 = sub_1000D9520();
    (*(v3 + 8))(v5, v2);
    return v8;
  }

  return result;
}

uint64_t sub_10006CCD8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *sub_100006C7C((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_10006D25C();
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return _swift_continuation_throwingResumeWithError(v4, v5);
  }

  else
  {
    **(*(v4 + 64) + 40) = sub_1000DB840();

    return _swift_continuation_throwingResume(v4);
  }
}

uint64_t sub_10006CDB8()
{
  swift_unknownObjectRelease();
  sub_100006D0C((v0 + 120));
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_10006CE1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for WidgetSectionConfigRecordService();

  return sub_1000D9D50();
}

uint64_t sub_10006CE70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = type metadata accessor for WidgetSectionConfigRecordService();

  return Configurable.setting<A>(_:defaultValue:)(a1, a2, v9, a6);
}

uint64_t sub_10006CED4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = type metadata accessor for WidgetSectionConfigRecordService();

  return Configurable.setting<A>(_:_:)(a1, a2, a3, v11, a7);
}

uint64_t sub_10006CF40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = type metadata accessor for WidgetSectionConfigRecordService();

  return Configurable.setting<A>(_:defaultValue:_:)(a1, a2, a3, a4, v13, a8);
}

uint64_t sub_10006CFBC(uint64_t a1)
{
  result = sub_10006D3E8(&qword_100117CF8, &unk_1000E2694);
  *(a1 + 8) = result;
  return result;
}

void sub_10006D000(uint64_t a1)
{
  if (!qword_100117D00)
  {
    sub_10006D058(255);
    v1 = sub_1000DC330();
    if (!v2)
    {
      atomic_store(v1, &qword_100117D00);
    }
  }
}

void sub_10006D058(uint64_t a1)
{
  if (!qword_100117D08)
  {
    sub_10006D138(255, &qword_100114E28, &type metadata accessor for Array);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_100117D08);
    }
  }
}

uint64_t sub_10006D0DC(uint64_t a1)
{
  sub_10006D058(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_10006D138(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for String);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_10006D18C(uint64_t a1)
{
  if (!qword_100117D10)
  {
    sub_10006D1FC();
    sub_10006D25C();
    v1 = sub_1000DBC50();
    if (!v2)
    {
      atomic_store(v1, &qword_100117D10);
    }
  }
}

void sub_10006D1FC()
{
  if (!qword_100117D18)
  {
    v0 = sub_1000DB860();
    if (!v1)
    {
      atomic_store(v0, &qword_100117D18);
    }
  }
}

unint64_t sub_10006D25C()
{
  result = qword_1001145F0;
  if (!qword_1001145F0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1001145F0);
  }

  return result;
}

unint64_t sub_10006D2EC()
{
  result = qword_100117D20;
  if (!qword_100117D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100117D20);
  }

  return result;
}

uint64_t sub_10006D340(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

unint64_t sub_10006D394()
{
  result = qword_100117D28;
  if (!qword_100117D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100117D28);
  }

  return result;
}

uint64_t sub_10006D3E8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for WidgetSectionConfigRecordService();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_10006D448()
{
  v0 = [objc_opt_self() clearColor];

  return v0;
}

id sub_10006D488()
{
  v0 = objc_allocWithZone(UIColor);

  return [v0 initWithRed:0.305882353 green:0.674509804 blue:0.97254902 alpha:1.0];
}

uint64_t sub_10006D4F8(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_100053DE0(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_1000D92D0();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_10006D630(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_100053DE0(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_1000D92D0();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_10006D774(uint64_t a1)
{
  sub_100053418(319);
  if (v1 <= 0x3F)
  {
    sub_100053DE0(319);
    if (v2 <= 0x3F)
    {
      sub_1000D92D0();
      if (v3 <= 0x3F)
      {
        sub_10006D868();
        if (v4 <= 0x3F)
        {
          sub_10006D8C0();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_10006D868()
{
  if (!qword_100116E78)
  {
    v0 = sub_1000DB8C0();
    if (!v1)
    {
      atomic_store(v0, &qword_100116E78);
    }
  }
}

void sub_10006D8C0()
{
  if (!qword_100116A18)
  {
    v0 = sub_1000DBE80();
    if (!v1)
    {
      atomic_store(v0, &qword_100116A18);
    }
  }
}

uint64_t sub_10006D924(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000D9090();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_10006D9A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000D9090();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_10006DA14(uint64_t a1)
{
  result = sub_1000D9090();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10006DA88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(void, void)@<X3>, uint64_t a5@<X8>, double a6@<D0>)
{
  v215 = a4;
  v216 = a3;
  v217 = a1;
  v208 = a5;
  v177 = type metadata accessor for PreparedSparkline.Entry(0);
  __chkstk_darwin(v177);
  v172 = &v171 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v173 = &v171 - v10;
  sub_100071D18(0);
  v176 = v11;
  v175 = *(v11 - 8);
  __chkstk_darwin(v11);
  v174 = &v171 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100071DAC(0);
  __chkstk_darwin(v13 - 8);
  v190 = &v171 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100071E44(0);
  v197 = v15;
  v198 = *(v15 - 1);
  __chkstk_darwin(v15);
  v188 = &v171 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v207 = type metadata accessor for PreparedSparkline(0);
  v206 = *(v207 - 8);
  __chkstk_darwin(v207);
  v187 = &v171 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v204 = sub_1000DA370();
  v205 = *(v204 - 8);
  __chkstk_darwin(v204);
  v199 = &v171 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v193 = sub_1000D92D0();
  v192 = *(v193 - 8);
  __chkstk_darwin(v193);
  v203 = &v171 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100071F74(0);
  __chkstk_darwin(v20 - 8);
  v191 = &v171 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1000D9C40();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v201 = &v171 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v200 = (&v171 - v26);
  v186 = sub_1000D9090();
  v185 = *(v186 - 8);
  __chkstk_darwin(v186);
  v184 = &v171 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100023750(0);
  __chkstk_darwin(v28 - 8);
  v183 = &v171 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v182 = sub_1000D9480();
  v181 = *(v182 - 8);
  __chkstk_darwin(v182);
  v180 = &v171 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100053DE0(0);
  v179 = v31;
  __chkstk_darwin(v31);
  v202 = &v171 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v178 = &v171 - v34;
  v212 = sub_1000D9A50();
  v210 = *(v212 - 8);
  __chkstk_darwin(v212);
  v195 = &v171 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v211 = sub_1000D9B40();
  v209 = *(v211 - 8);
  __chkstk_darwin(v211);
  v194 = &v171 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10007330C(0);
  __chkstk_darwin(v37 - 8);
  v39 = &v171 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v40);
  v42 = &v171 - v41;
  v43 = sub_1000D9AA0();
  v44 = *(v43 - 8);
  __chkstk_darwin(v43);
  v189 = &v171 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v46);
  v196 = &v171 - v47;
  __chkstk_darwin(v48);
  v50 = &v171 - v49;
  __chkstk_darwin(v51);
  v53 = &v171 - v52;
  v54 = a2;
  sub_1000738DC(a2, v42, sub_10007330C);
  v213 = v44;
  v55 = *(v44 + 48);
  v56 = v55(v42, 1, v43);
  v214 = v54;
  if (v56 == 1)
  {
    v196 = v43;
    sub_1000728D4(v42, sub_10007330C);
  }

  else
  {
    (*(v213 + 32))(v53, v42, v43);
    if ((sub_1000D9A20() & 1) == 0)
    {
      v71 = v209;
      v72 = v216;
      (*(v209 + 16))(v194, v216, v211);
      v73 = v210;
      v74 = v217;
      (*(v210 + 16))(v195, v217, v212);
      v75 = *(v213 + 16);
      v203 = v50;
      v75(v50, v53, v43);
      v75(v196, v53, v43);
      v76 = v189;
      v75(v189, v53, v43);
      v77 = v215;
      v78 = sub_1000DA350();
      LODWORD(v202) = sub_1000DBDD0();
      if (os_log_type_enabled(v78, v202))
      {
        v200 = v78;
        v201 = v53;
        v79 = swift_slowAlloc();
        v198 = swift_slowAlloc();
        v218 = v198;
        *v79 = 136447234;
        v80 = v194;
        v81 = sub_1000D9B20();
        v82 = v73;
        v84 = v83;
        v85 = *(v71 + 8);
        v209 = v71 + 8;
        v199 = v85;
        (v85)(v80, v211);
        v86 = sub_1000848C8(v81, v84, &v218);

        *(v79 + 4) = v86;
        *(v79 + 12) = 2082;
        v87 = v178;
        v88 = v195;
        sub_1000D9A40();
        v219 = 0;
        v220 = 0xE000000000000000;
        v89 = v186;
        sub_1000DC0C0();
        v226._countAndFlagsBits = 3026478;
        v226._object = 0xE300000000000000;
        sub_1000DBA00(v226);
        sub_1000DC0C0();
        v90 = v219;
        v91 = v220;
        sub_1000728D4(v87, sub_100053DE0);
        v92 = *(v82 + 8);
        v210 = v82 + 8;
        v197 = v92;
        v92(v88, v212);
        v93 = sub_1000848C8(v90, v91, &v218);

        *(v79 + 14) = v93;
        *(v79 + 22) = 2082;
        v94 = v180;
        v95 = v203;
        sub_1000D9A60();
        v96 = sub_1000D9470();
        v98 = v97;
        (*(v181 + 8))(v94, v182);
        v213 = *(v213 + 8);
        (v213)(v95, v43);
        v99 = sub_1000848C8(v96, v98, &v218);
        v100 = v89;

        *(v79 + 24) = v99;
        *(v79 + 32) = 2082;
        v101 = v183;
        v102 = v196;
        sub_1000D9A70();
        v103 = v185;
        if ((*(v185 + 48))(v101, 1, v89) == 1)
        {
          sub_1000728D4(v101, sub_100023750);
          v104 = 0xE300000000000000;
          v105 = 7104878;
        }

        else
        {
          v105 = sub_1000D9070();
          v104 = v151;
          (*(v103 + 8))(v101, v89);
        }

        v152 = v205;
        (v213)(v102, v43);
        v153 = sub_1000848C8(v105, v104, &v218);

        *(v79 + 34) = v153;
        *(v79 + 42) = 2082;
        v154 = v184;
        v155 = v189;
        sub_1000D9A80();
        sub_100071B28(&qword_100115308, &type metadata accessor for Date, &protocol conformance descriptor for Date);
        v156 = sub_1000DC320();
        v158 = v157;
        (*(v103 + 8))(v154, v100);
        v159 = v213;
        (v213)(v155, v43);
        v160 = sub_1000848C8(v156, v158, &v218);

        *(v79 + 44) = v160;
        v161 = v200;
        _os_log_impl(&_mh_execute_header, v200, v202, "Sparkline model for %{public}s with date range %{public}s not considered valid for quote (exchangeStatus: %{public}s, serverCreatedAt: %{public}s, dateLastRefreshed: %{public}s)", v79, 0x34u);
        swift_arrayDestroy();

        (*(v152 + 8))(v215, v204);
        (v199)(v216, v211);
        sub_1000728D4(v214, sub_10007330C);
        v197(v217, v212);
        v159(v201, v43);
      }

      else
      {
        v140 = v74;

        (*(v205 + 8))(v77, v204);
        v215 = *(v71 + 8);
        v141 = v211;
        v215(v72, v211);
        sub_1000728D4(v214, sub_10007330C);
        v142 = *(v73 + 8);
        v143 = v212;
        v142(v140, v212);
        v144 = *(v213 + 8);
        v144(v76, v43);
        v144(v196, v43);
        v144(v203, v43);
        v142(v195, v143);
        v215(v194, v141);
        v144(v53, v43);
      }

      goto LABEL_25;
    }

    v57 = *(v213 + 8);
    v196 = v43;
    v57(v53, v43);
  }

  v58 = v200;
  v59 = v216;
  sub_1000D9B00();
  v60 = v201;
  (*(v23 + 104))(v201, enum case for StockType.mutualFund(_:), v22);
  sub_100071B28(&qword_100117EC8, &type metadata accessor for StockType, &protocol conformance descriptor for StockType);
  v61 = sub_1000DB8D0();
  v62 = *(v23 + 8);
  v62(v60, v22);
  v62(v58, v22);
  if (v61)
  {
    (*(v205 + 8))(v215, v204);
    (*(v209 + 8))(v59, v211);
    sub_1000728D4(v214, sub_10007330C);
    (*(v210 + 8))(v217, v212);
LABEL_25:
    v68 = v207;
    v119 = v206;
    return (*(v119 + 56))(v208, 1, 1, v68);
  }

  v63 = v217;
  sub_1000D9A40();
  sub_1000D92C0();
  v64 = sub_1000D99F0();
  LODWORD(v200) = v65;
  sub_1000738DC(v214, v39, sub_10007330C);
  v66 = v196;
  v67 = v55(v39, 1, v196);
  v68 = v207;
  v201 = v64;
  if (v67 == 1)
  {
    sub_1000728D4(v39, sub_10007330C);
    v69 = 0;
    v70 = 1;
  }

  else
  {
    v69 = sub_1000D9A90();
    v70 = v106;
    (*(v213 + 8))(v39, v66);
  }

  v107 = v205;
  v108 = v204;
  v109 = v190;
  v110 = v63;
  v111 = sub_1000D9A30();
  v112 = v199;
  (*(v107 + 16))(v199, v215, v108);
  v219 = v111;
  v220 = sub_1000727FC;
  v221 = 0;
  v222 = sub_10000F104;
  v223 = 0;
  v224 = sub_10000F19C;
  v225 = 0;
  sub_1000103E8(0);
  sub_100073340(0);
  sub_100071B28(&qword_100117F08, sub_100073340, &protocol conformance descriptor for LazyMapSequence<A, B>);
  sub_1000DA230();
  v113 = v198;
  v114 = v197;
  if ((*(v198 + 48))(v109, 1, v197) == 1)
  {
    sub_1000728D4(v109, sub_100071DAC);
    v115 = sub_1000DA350();
    v116 = sub_1000DBDB0();
    if (os_log_type_enabled(v115, v116))
    {
      v117 = swift_slowAlloc();
      *v117 = 0;
      _os_log_impl(&_mh_execute_header, v115, v116, "Failed to create sparkline model: Insufficient data points", v117, 2u);
    }

    v118 = *(v107 + 8);
    v118(v215, v108);
    (*(v209 + 8))(v216, v211);
    sub_1000728D4(v214, sub_10007330C);
    (*(v210 + 8))(v110, v212);
    v118(v112, v108);
    v119 = v206;
LABEL_30:
    v164 = v191;
    v166 = v202;
    (*(v192 + 8))(v203, v193);
    sub_1000728D4(v166, sub_100053DE0);
    v165 = 1;
    goto LABEL_31;
  }

  v120 = v188;
  (*(v113 + 32))(v188, v109, v114);
  v121 = sub_1000DA1E0();
  v122 = v214;
  if (v121 >= 250)
  {
    v145 = v199;
    v146 = sub_1000DA350();
    v147 = sub_1000DBDC0();
    v148 = os_log_type_enabled(v146, v147);
    v119 = v206;
    if (v148)
    {
      v149 = swift_slowAlloc();
      *v149 = 0;
      _os_log_impl(&_mh_execute_header, v146, v147, "Failed to create sparkline model: too many categories", v149, 2u);

      v150 = *(v107 + 8);
      v150(v215, v108);
      (*(v209 + 8))(v216, v211);
      sub_1000728D4(v122, sub_10007330C);
      (*(v210 + 8))(v110, v212);
      (*(v198 + 8))(v188, v197);
    }

    else
    {

      v150 = *(v107 + 8);
      v150(v215, v108);
      (*(v209 + 8))(v216, v211);
      sub_1000728D4(v122, sub_10007330C);
      (*(v210 + 8))(v110, v212);
      (*(v198 + 8))(v188, v114);
    }

    v150(v145, v108);
    goto LABEL_30;
  }

  v123 = v200;
  v124 = v200 & 1;
  v125 = v187;
  v126 = v202;
  sub_1000738DC(v202, &v187[v68[5]], sub_100053DE0);
  (*(v192 + 16))(&v125[v68[6]], v203, v193);
  v127 = &v125[v68[8]];
  *v127 = v201;
  v127[8] = v124;
  v128 = v174;
  sub_100071FA8(v120, v69, v70 & 1, v126);
  v129 = v176;
  sub_1000DA200();
  *v125 = v218;
  sub_1000724D0(v128, a6);
  v130 = &v125[v68[7]];
  *v130 = v131;
  *(v130 + 1) = v132;
  sub_100071B28(&qword_100117EB8, sub_100053418, &protocol conformance descriptor for [A]);
  v133 = v173;
  sub_1000DA210();
  v134 = v177;
  v135 = *(v133 + *(v177 + 20));
  sub_1000728D4(v133, type metadata accessor for PreparedSparkline.Entry);
  if (v123)
  {
    v136 = v126;
    v137 = v172;
    sub_1000DA1F0();
    v138 = *(v107 + 8);
    v138(v215, v108);
    (*(v209 + 8))(v216, v211);
    sub_1000728D4(v214, sub_10007330C);
    (*(v210 + 8))(v217, v212);
    (*(v175 + 8))(v128, v129);
    (*(v198 + 8))(v120, v197);
    v138(v199, v108);
    (*(v192 + 8))(v203, v193);
    sub_1000728D4(v136, sub_100053DE0);
    v139 = *(v137 + *(v134 + 20));
    sub_1000728D4(v137, type metadata accessor for PreparedSparkline.Entry);
  }

  else
  {
    v162 = *(v107 + 8);
    v162(v215, v108);
    (*(v209 + 8))(v216, v211);
    sub_1000728D4(v214, sub_10007330C);
    (*(v210 + 8))(v217, v212);
    (*(v175 + 8))(v128, v129);
    (*(v198 + 8))(v120, v197);
    v162(v199, v108);
    (*(v192 + 8))(v203, v193);
    sub_1000728D4(v126, sub_100053DE0);
    v139 = *&v201;
  }

  v163 = v187;
  v187[v68[9]] = v135 - v139 < 0.0;
  v164 = v191;
  sub_100072934(v163, v191, type metadata accessor for PreparedSparkline);
  v165 = 0;
  v119 = v206;
LABEL_31:
  v167 = *(v119 + 56);
  v167(v164, v165, 1, v68);
  if ((*(v119 + 48))(v164, 1, v68))
  {
    sub_1000728D4(v164, sub_100071F74);
    return (*(v119 + 56))(v208, 1, 1, v68);
  }

  v169 = v164;
  v170 = v208;
  sub_100072934(v169, v208, type metadata accessor for PreparedSparkline);
  return (v167)(v170, 0, 1, v68);
}

uint64_t sub_10006F6C4@<X0>(void *a1@<X8>)
{
  sub_100071F0C(0);
  v3 = v2;
  __chkstk_darwin(v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v23 - v7;
  v9 = sub_1000D9090();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v23 - v14;
  sub_10007299C(14, 0, 0, &v23 - v14);
  sub_10007299C(20, 30, 0, v12);
  sub_100071B28(&qword_100116E58, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  result = sub_1000DB8B0();
  if (result)
  {
    v17 = *(v10 + 32);
    (v17)(v8, v15, v9);
    (v17)(&v8[*(v3 + 48)], v12, v9);
    sub_1000738DC(v8, v5, sub_100071F0C);
    v23 = *(v3 + 48);
    v18 = type metadata accessor for PreparedSparkline(0);
    v24 = a1 + v18[5];
    v17();
    v19 = *(v10 + 8);
    v19(&v5[v23], v9);
    sub_100072934(v8, v5, sub_100071F0C);
    v20 = *(v3 + 48);
    sub_100053DE0(0);
    (v17)(&v24[*(v21 + 36)], &v5[v20], v9);
    v19(v5, v9);
    result = sub_1000D92C0();
    *a1 = _swiftEmptyArrayStorage;
    *(a1 + v18[7]) = xmmword_1000E2760;
    v22 = a1 + v18[8];
    *v22 = 0x4028000000000000;
    v22[8] = 0;
    *(a1 + v18[9]) = 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10006F9D8@<X0>(uint64_t a1@<X8>)
{
  v107 = type metadata accessor for PreparedSparkline.Entry(0);
  __chkstk_darwin(v107);
  v106 = &v101 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v103 = &v101 - v4;
  sub_100071D18(0);
  v105 = v5;
  v104 = *(v5 - 8);
  __chkstk_darwin(v5);
  v102 = &v101 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100071DAC(0);
  __chkstk_darwin(v7 - 8);
  v111 = &v101 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100071E44(0);
  v119 = v9;
  v112 = *(v9 - 8);
  __chkstk_darwin(v9);
  v108 = &v101 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for PreparedSparkline(0);
  v116 = *(v11 - 8);
  __chkstk_darwin(v11);
  v101 = &v101 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000DA370();
  v114 = *(v13 - 8);
  v115 = v13;
  __chkstk_darwin(v13);
  v123 = &v101 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1000D92D0();
  v120 = *(v15 - 8);
  v121 = v15;
  __chkstk_darwin(v15);
  v122 = &v101 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100071F0C(0);
  v18 = v17;
  __chkstk_darwin(v17);
  v20 = &v101 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v101 - v22;
  v24 = sub_1000D9090();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = &v101 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v30 = &v101 - v29;
  sub_100053DE0(0);
  v110 = v31;
  __chkstk_darwin(v31);
  v33 = &v101 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100071F74(0);
  __chkstk_darwin(v34 - 8);
  v113 = &v101 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10007299C(14, 0, 0, v30);
  sub_10007299C(20, 30, 0, v27);
  sub_100071B28(&qword_100116E58, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  if (sub_1000DB8B0())
  {
    v109 = v11;
    v118 = a1;
    v36 = *(v25 + 32);
    v36(v23, v30, v24);
    v36(&v23[*(v18 + 48)], v27, v24);
    sub_1000738DC(v23, v20, sub_100071F0C);
    v37 = *(v18 + 48);
    v36(v33, v20, v24);
    v38 = *(v25 + 8);
    v38(&v20[v37], v24);
    sub_100072934(v23, v20, sub_100071F0C);
    v39 = *(v18 + 48);
    v40 = *(v110 + 36);
    v117 = v33;
    v36(&v33[v40], &v20[v39], v24);
    v38(v20, v24);
    sub_1000D92C0();
    sub_100071DE0(0, &qword_100117EA8, sub_1000103E8, &type metadata accessor for _ContiguousArrayStorage);
    sub_1000103E8(0);
    v42 = v41;
    v43 = *(*(v41 - 8) + 72);
    v44 = (*(*(v41 - 8) + 80) + 32) & ~*(*(v41 - 8) + 80);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1000E2770;
    v45 = v18 + v44;
    v46 = *(v42 + 48);
    sub_10007299C(14, 0, 0, v45);
    *(v45 + v46) = 0x402419999999999ALL;
    v47 = *(v42 + 48);
    sub_10007299C(14, 22, 45, v45 + v43);
    *(v45 + v43 + v47) = 0x4023800000000000;
    v48 = *(v42 + 48);
    sub_10007299C(14, 47, 27, v45 + 2 * v43);
    *(v45 + 2 * v43 + v48) = 0x4021CCCCCCCCCCCDLL;
    v49 = *(v42 + 48);
    sub_10007299C(15, 11, 30, v45 + 3 * v43);
    *(v45 + 3 * v43 + v49) = 0x4022800000000000;
    v50 = *(v42 + 48);
    sub_10007299C(15, 36, 2, v45 + 4 * v43);
    *(v45 + 4 * v43 + v50) = 0x4028666666666666;
    v51 = *(v42 + 48);
    sub_10007299C(16, 0, 15, v45 + 5 * v43);
    *(v45 + 5 * v43 + v51) = 0x4025E66666666666;
    v52 = *(v42 + 48);
    sub_10007299C(16, 24, 18, v45 + 6 * v43);
    *(v45 + 6 * v43 + v52) = 0x402F000000000000;
    v53 = *(v42 + 48);
    sub_10007299C(16, 49, 0, v45 + 7 * v43);
    *(v45 + 7 * v43 + v53) = 0x4023B33333333333;
    v54 = *(v42 + 48);
    sub_10007299C(17, 12, 33, v45 + 8 * v43);
    *(v45 + 8 * v43 + v54) = 0x4021800000000000;
    v55 = *(v42 + 48);
    sub_10007299C(17, 39, 22, v45 + 9 * v43);
    *(v45 + 9 * v43 + v55) = 0x4028800000000000;
    v56 = *(v42 + 48);
    sub_10007299C(18, 0, 30, v45 + 10 * v43);
    *(v45 + 10 * v43 + v56) = 0x402A666666666666;
    v57 = *(v42 + 48);
    sub_10007299C(18, 24, 52, v45 + 11 * v43);
    *(v45 + 11 * v43 + v57) = 0x4033B33333333333;
    v58 = *(v42 + 48);
    sub_10007299C(18, 49, 15, v45 + 12 * v43);
    *(v45 + 12 * v43 + v58) = 0x402CCCCCCCCCCCCDLL;
    v59 = *(v42 + 48);
    sub_10007299C(19, 13, 18, v45 + 13 * v43);
    *(v45 + 13 * v43 + v59) = 0x402F666666666666;
    v60 = *(v42 + 48);
    sub_10007299C(19, 37, 40, v45 + 14 * v43);
    *(v45 + 14 * v43 + v60) = 0x40274CCCCCCCCCCDLL;
    v61 = *(v42 + 48);
    sub_10007299C(20, 1, 33, v45 + 15 * v43);
    *(v45 + 15 * v43 + v61) = 0x4030000000000000;
    v62 = *(v42 + 48);
    sub_10007299C(20, 30, 0, v45 + 16 * v43);
    *(v45 + 16 * v43 + v62) = 0x4032666666666666;
    if (qword_100114090 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v63 = v115;
  v64 = sub_100015294(v115, qword_100128DD8);
  v65 = v114;
  (*(v114 + 16))(v123, v64, v63);
  v125 = v18;
  sub_100071ED8(0);
  sub_100071B28(&qword_100117EB0, sub_100071ED8, &protocol conformance descriptor for [A]);
  v66 = v111;
  sub_1000DA230();
  v67 = v112;
  v68 = v119;
  if ((*(v112 + 48))(v66, 1, v119) == 1)
  {
    sub_1000728D4(v66, sub_100071DAC);
    v69 = sub_1000DA350();
    v70 = sub_1000DBDB0();
    v71 = os_log_type_enabled(v69, v70);
    v72 = v118;
    v73 = v122;
    if (v71)
    {
      v74 = swift_slowAlloc();
      *v74 = 0;
      _os_log_impl(&_mh_execute_header, v69, v70, "Failed to create sparkline model: Insufficient data points", v74, 2u);
    }

    v75 = v109;
  }

  else
  {
    v76 = v108;
    (*(v67 + 32))(v108, v66, v68);
    v77 = sub_1000DA1E0();
    v72 = v118;
    if (v77 < 250)
    {
      v75 = v109;
      v78 = v101;
      v79 = v117;
      sub_1000738DC(v117, &v101[v109[5]], sub_100053DE0);
      (*(v120 + 16))(&v78[v75[6]], v122, v121);
      v80 = &v78[v75[8]];
      *v80 = 0;
      v80[8] = 1;
      v81 = v102;
      sub_100071FA8(v76, 0, 1, v79);
      v82 = v105;
      sub_1000DA200();
      *v78 = v124;
      sub_1000724D0(v81, 0.5);
      v83 = &v78[v75[7]];
      *v83 = v84;
      *(v83 + 1) = v85;
      sub_100071B28(&qword_100117EB8, sub_100053418, &protocol conformance descriptor for [A]);
      v86 = v103;
      sub_1000DA210();
      v87 = *(v86 + *(v107 + 20));
      v88 = v76;
      sub_1000728D4(v86, type metadata accessor for PreparedSparkline.Entry);
      v89 = v106;
      sub_1000DA1F0();
      (*(v104 + 8))(v81, v82);
      (*(v67 + 8))(v88, v119);
      (*(v65 + 8))(v123, v63);
      (*(v120 + 8))(v122, v121);
      sub_1000728D4(v117, sub_100053DE0);
      v90 = *(v89 + *(v107 + 20));
      sub_1000728D4(v89, type metadata accessor for PreparedSparkline.Entry);
      v78[v75[9]] = v87 - v90 < 0.0;
      v91 = v78;
      v72 = v118;
      v92 = v113;
      sub_100072934(v91, v113, type metadata accessor for PreparedSparkline);
      v93 = 0;
      goto LABEL_13;
    }

    v94 = sub_1000DA350();
    v95 = sub_1000DBDC0();
    v96 = os_log_type_enabled(v94, v95);
    v75 = v109;
    v73 = v122;
    if (v96)
    {
      v97 = swift_slowAlloc();
      *v97 = 0;
      _os_log_impl(&_mh_execute_header, v94, v95, "Failed to create sparkline model: too many categories", v97, 2u);
    }

    (*(v67 + 8))(v108, v68);
  }

  v98 = v117;
  (*(v65 + 8))(v123, v63);
  (*(v120 + 8))(v73, v121);
  sub_1000728D4(v98, sub_100053DE0);
  v93 = 1;
  v92 = v113;
LABEL_13:
  v99 = v116;
  (*(v116 + 56))(v92, v93, 1, v75);
  result = (*(v99 + 48))(v92, 1, v75);
  if (result != 1)
  {
    return sub_100072934(v92, v72, type metadata accessor for PreparedSparkline);
  }

  __break(1u);
  return result;
}

uint64_t sub_10007097C(void *a1)
{
  sub_100073AB4(0, &qword_100117FA0, sub_100073A60, &type metadata for PreparedSparkline.Entry.CodingKeys, &type metadata accessor for KeyedEncodingContainer);
  v4 = v3;
  v5 = *(v3 - 8);
  __chkstk_darwin(v3);
  v7 = &v9 - v6;
  sub_100006C7C(a1, a1[3]);
  sub_100073A60();
  sub_1000DC480();
  v11 = 0;
  sub_1000D9090();
  sub_100073978();
  sub_1000DC2F0();
  if (!v1)
  {
    type metadata accessor for PreparedSparkline.Entry(0);
    v10 = 1;
    sub_1000DC2D0();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_100070B34@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v23 = sub_1000D9090();
  v21 = *(v23 - 8);
  __chkstk_darwin(v23);
  v24 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100073AB4(0, &qword_100117F90, sub_100073A60, &type metadata for PreparedSparkline.Entry.CodingKeys, &type metadata accessor for KeyedDecodingContainer);
  v5 = v4;
  v22 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v19 - v6;
  v8 = type metadata accessor for PreparedSparkline.Entry(0);
  __chkstk_darwin(v8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100006C7C(a1, a1[3]);
  sub_100073A60();
  v11 = v25;
  sub_1000DC470();
  if (v11)
  {
    return sub_100006D0C(a1);
  }

  v12 = v21;
  v27 = 0;
  sub_100073854();
  v13 = v23;
  sub_1000DC220();
  v14 = *(v12 + 32);
  v25 = v10;
  v14(v10, v24, v13);
  v26 = 1;
  sub_1000DC200();
  v16 = v15;
  (*(v22 + 8))(v7, v5);
  v17 = v25;
  *&v25[*(v8 + 20)] = v16;
  sub_1000738DC(v17, v20, type metadata accessor for PreparedSparkline.Entry);
  sub_100006D0C(a1);
  return sub_1000728D4(v17, type metadata accessor for PreparedSparkline.Entry);
}

uint64_t sub_100070EA4(void *a1)
{
  v3 = v1;
  sub_100073AB4(0, &qword_100117F58, sub_10007375C, &type metadata for PreparedSparkline.CodingKeys, &type metadata accessor for KeyedEncodingContainer);
  v6 = v5;
  v7 = *(v5 - 8);
  __chkstk_darwin(v5);
  v9 = &v12 - v8;
  sub_100006C7C(a1, a1[3]);
  sub_10007375C();
  sub_1000DC480();
  *&v12 = *v3;
  v13 = 0;
  sub_100053418(0);
  sub_1000737E4(&qword_100117F60, sub_100053418, sub_100073944, &protocol conformance descriptor for <A> [A]);
  sub_1000DC2F0();
  if (!v2)
  {
    v10 = type metadata accessor for PreparedSparkline(0);
    LOBYTE(v12) = 1;
    sub_100053DE0(0);
    sub_1000737E4(&qword_100117F70, sub_100053DE0, sub_100073978, &protocol conformance descriptor for <> ClosedRange<A>);
    sub_1000DC2F0();
    LOBYTE(v12) = 2;
    sub_1000D92D0();
    sub_100071B28(&qword_100117F78, &type metadata accessor for TimeZone, &protocol conformance descriptor for TimeZone);
    sub_1000DC2F0();
    v12 = *(v3 + *(v10 + 28));
    v13 = 3;
    sub_10006D868();
    sub_1000739AC(&qword_100117F80, &protocol witness table for Double, &protocol conformance descriptor for <> ClosedRange<A>);
    sub_1000DC2F0();
    LOBYTE(v12) = 4;
    sub_1000DC280();
    LOBYTE(v12) = *(v3 + *(v10 + 36));
    v13 = 5;
    sub_100073A0C();
    sub_1000DC2F0();
  }

  return (*(v7 + 8))(v9, v6);
}

void sub_100071268(void *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v3 = sub_1000D92D0();
  v4 = *(v3 - 8);
  v30 = v3;
  v31 = v4;
  __chkstk_darwin(v3);
  v29 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100053DE0(0);
  v33 = v6;
  __chkstk_darwin(v6);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100073AB4(0, &qword_100117F18, sub_10007375C, &type metadata for PreparedSparkline.CodingKeys, &type metadata accessor for KeyedDecodingContainer);
  v35 = v9;
  v32 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v27 - v10;
  v12 = type metadata accessor for PreparedSparkline(0);
  __chkstk_darwin(v12);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100006C7C(a1, a1[3]);
  sub_10007375C();
  v34 = v11;
  v15 = v36;
  sub_1000DC470();
  if (v15)
  {
    sub_100006D0C(a1);
  }

  else
  {
    v16 = v32;
    v27 = v14;
    sub_100053418(0);
    v38 = 0;
    sub_1000737E4(&qword_100117F28, sub_100053418, sub_1000737B0, &protocol conformance descriptor for <A> [A]);
    sub_1000DC220();
    v17 = v27;
    *v27 = v37;
    LOBYTE(v37) = 1;
    sub_1000737E4(&qword_100117F38, sub_100053DE0, sub_100073854, &protocol conformance descriptor for <> ClosedRange<A>);
    sub_1000DC220();
    v18 = v12;
    sub_100072934(v8, &v17[*(v12 + 20)], sub_100053DE0);
    LOBYTE(v37) = 2;
    sub_100071B28(&qword_100117F40, &type metadata accessor for TimeZone, &protocol conformance descriptor for TimeZone);
    v20 = v29;
    v19 = v30;
    sub_1000DC220();
    v36 = a1;
    (*(v31 + 32))(&v17[v18[6]], v20, v19);
    sub_10006D868();
    v38 = 3;
    sub_1000739AC(&qword_100117F48, &protocol witness table for Double, &protocol conformance descriptor for <> ClosedRange<A>);
    sub_1000DC220();
    *&v17[v18[7]] = v37;
    LOBYTE(v37) = 4;
    v21 = sub_1000DC1B0();
    v22 = &v27[v18[8]];
    *v22 = v21;
    v22[8] = v23 & 1;
    v38 = 5;
    sub_100073888();
    sub_1000DC220();
    v24 = v36;
    (*(v16 + 8))(v34, v35);
    v26 = v27;
    v25 = v28;
    v27[v18[9]] = v37;
    sub_1000738DC(v26, v25, type metadata accessor for PreparedSparkline);
    sub_100006D0C(v24);
    sub_1000728D4(v26, type metadata accessor for PreparedSparkline);
  }
}

uint64_t sub_1000718DC()
{
  if (*v0)
  {
    return 0x6563697270;
  }

  else
  {
    return 1702125924;
  }
}

void sub_10007190C(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1702125924 && a2 == 0xE400000000000000;
  if (v5 || (sub_1000DC360() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x6563697270 && a2 == 0xE500000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1000DC360();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_1000719E4(uint64_t a1)
{
  v2 = sub_100073A60();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100071A20(uint64_t a1)
{
  v2 = sub_100073A60();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100071B28(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100071B70()
{
  v1 = *v0;
  v2 = 0x73656972746E65;
  v3 = 0x756F426563697270;
  v4 = 0x73756F6976657270;
  if (v1 != 4)
  {
    v4 = 0x646E657274;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6E756F42656D6974;
  if (v1 != 1)
  {
    v5 = 0x656D695473697861;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100071C48@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100073D4C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100071C70(uint64_t a1)
{
  v2 = sub_10007375C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100071CAC(uint64_t a1)
{
  v2 = sub_10007375C();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_100071D18(uint64_t a1)
{
  if (!qword_100117E70)
  {
    sub_100053418(255);
    sub_100071B28(&qword_100117E78, sub_100053418, &protocol conformance descriptor for [A]);
    v1 = sub_1000DA220();
    if (!v2)
    {
      atomic_store(v1, &qword_100117E70);
    }
  }
}

void sub_100071DE0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_100071E44(uint64_t a1)
{
  if (!qword_100117E88)
  {
    sub_100071ED8(255);
    sub_100071B28(&qword_100117E98, sub_100071ED8, &protocol conformance descriptor for [A]);
    v1 = sub_1000DA220();
    if (!v2)
    {
      atomic_store(v1, &qword_100117E88);
    }
  }
}

void sub_100071F0C(uint64_t a1)
{
  if (!qword_100117EA0)
  {
    sub_1000D9090();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_100117EA0);
    }
  }
}

uint64_t sub_100071FA8(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v34 = a4;
  v35 = *&a2;
  v5 = sub_1000D9090();
  v33 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PreparedSparkline.Entry(0);
  v36 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v32 - v12;
  __chkstk_darwin(v14);
  v16 = &v32 - v15;
  sub_100071E44(0);
  sub_1000DA1D0();
  sub_100071D18(0);
  sub_100071B28(&qword_100117EB8, sub_100053418, &protocol conformance descriptor for [A]);
  sub_1000DA210();
  if ((a3 & 1) == 0 && *&v16[*(v8 + 20)] != v35)
  {
    sub_100053DE0(0);
    sub_1000D9000();
    v17 = sub_1000D9020();
    (*(v33 + 8))(v7, v5);
    if (v17)
    {
      sub_1000D9000();
      *&v13[*(v8 + 20)] = v35;
      v35 = COERCE_DOUBLE(sub_1000DA1B0());
      v19 = v18;
      v20 = *v18;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v19 = v20;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v20 = sub_10007B3EC(0, v20[2] + 1, 1, v20);
        *v19 = v20;
      }

      v23 = v20[2];
      v22 = v20[3];
      if (v23 >= v22 >> 1)
      {
        v20 = sub_10007B3EC((v22 > 1), v23 + 1, 1, v20);
        *v19 = v20;
      }

      v20[2] = v23 + 1;
      sub_100072934(v13, v20 + ((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v36 + 72) * v23, type metadata accessor for PreparedSparkline.Entry);
      (*&v35)(v37, 0);
    }
  }

  if (sub_1000DA1E0() == 1)
  {
    sub_1000D9000();
    *&v10[*(v8 + 20)] = *&v16[*(v8 + 20)];
    v24 = sub_1000DA1B0();
    v26 = v25;
    v27 = *v25;
    v28 = swift_isUniquelyReferenced_nonNull_native();
    *v26 = v27;
    if ((v28 & 1) == 0)
    {
      v27 = sub_10007B3EC(0, v27[2] + 1, 1, v27);
      *v26 = v27;
    }

    v30 = v27[2];
    v29 = v27[3];
    if (v30 >= v29 >> 1)
    {
      v27 = sub_10007B3EC((v29 > 1), v30 + 1, 1, v27);
      *v26 = v27;
    }

    v27[2] = v30 + 1;
    sub_100072934(v10, v27 + ((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v36 + 72) * v30, type metadata accessor for PreparedSparkline.Entry);
    v24(v37, 0);
  }

  return sub_1000728D4(v16, type metadata accessor for PreparedSparkline.Entry);
}

uint64_t sub_100072438@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1000103E8(0);
  v5 = *(a1 + *(v4 + 48));
  v6 = sub_1000D9090();
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  result = type metadata accessor for PreparedSparkline.Entry(0);
  *(a2 + *(result + 20)) = v5;
  return result;
}

void sub_1000724D0(uint64_t a1, double a2)
{
  sub_100071D18(0);
  v5 = v4;
  v6 = *(v4 - 8);
  __chkstk_darwin(v4);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PreparedSparkline.Entry(0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v29 - v14;
  sub_100071B28(&qword_100117EB8, sub_100053418, &protocol conformance descriptor for [A]);
  sub_1000DA210();
  v16 = *&v15[*(v9 + 20)];
  sub_1000728D4(v15, type metadata accessor for PreparedSparkline.Entry);
  (*(v6 + 16))(v8, a1, v5);
  sub_100071B28(&qword_100117EC0, sub_100071D18, &protocol conformance descriptor for NonEmpty<A>);
  sub_1000DBA40();
  v17 = v29;
  v18 = v30;
  v19 = *(v29 + 16);
  v20 = v16;
  v21 = v16;
  if (v30 != v19)
  {
    if (v30 >= v19)
    {
LABEL_20:
      __break(1u);
      return;
    }

    v22 = *(v9 + 20);
    v23 = v29 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v21 = v16;
    v20 = v16;
    v24 = v30;
    while ((v18 & 0x8000000000000000) == 0)
    {
      if (v24 >= *(v17 + 16))
      {
        goto LABEL_18;
      }

      sub_1000738DC(v23 + *(v10 + 72) * v24, v12, type metadata accessor for PreparedSparkline.Entry);
      v25 = *&v12[v22];
      if (v20 >= v25)
      {
        v20 = *&v12[v22];
      }

      sub_1000728D4(v12, type metadata accessor for PreparedSparkline.Entry);
      if (v25 > v21)
      {
        v21 = v25;
      }

      if (v19 == ++v24)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

LABEL_11:

  v26 = a2 * 0.5 * v16;
  v27 = v16 + v26;
  v28 = v16 - v26;
  if (v21 > v27)
  {
    v27 = v21;
  }

  if (v28 >= v20)
  {
    v28 = v20;
  }

  if (v28 > v27)
  {
    goto LABEL_19;
  }
}

uint64_t sub_1000727FC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1000D9A10();
  if (v3)
  {
    sub_1000103E8(0);
    v5 = *(*(v4 - 8) + 56);
    v6 = v4;
    v7 = a1;
    v8 = 1;
  }

  else
  {
    v9 = v2;
    sub_1000103E8(0);
    v11 = v10;
    v12 = *(v10 + 48);
    sub_1000D9A00();
    *(a1 + v12) = v9;
    v5 = *(*(v11 - 8) + 56);
    v7 = a1;
    v8 = 0;
    v6 = v11;
  }

  return v5(v7, v8, 1, v6);
}

uint64_t sub_1000728D4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100072934(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10007299C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v51 = a2;
  v52 = a3;
  v49 = a1;
  v38 = a4;
  v53 = sub_1000D9210();
  v50 = *(v53 - 8);
  __chkstk_darwin(v53);
  v48 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000D9220();
  v46 = *(v5 - 8);
  v47 = v5;
  __chkstk_darwin(v5);
  v45 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_1000D91F0();
  v7 = *(v55 - 8);
  __chkstk_darwin(v55);
  v40 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000D9090();
  v43 = *(v9 - 8);
  v44 = v9;
  __chkstk_darwin(v9);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000D92D0();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1000D91D0();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1000D9280();
  v41 = *(v20 - 8);
  v42 = v20;
  __chkstk_darwin(v20);
  v22 = &v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100023750(0);
  v24 = __chkstk_darwin(v23 - 8);
  v26 = &v38 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 104))(v19, enum case for Calendar.Identifier.gregorian(_:), v16, v24);
  sub_1000D91E0();
  (*(v17 + 8))(v19, v16);
  if (qword_100114138 != -1)
  {
    swift_once();
  }

  v27 = sub_100015294(v12, qword_100128F10);
  (*(v13 + 16))(v15, v27, v12);
  v54 = v22;
  sub_1000D9260();
  v39 = v11;
  sub_1000D9050();
  v28 = v40;
  (*(v7 + 104))(v40, enum case for Calendar.MatchingPolicy.nextTime(_:), v55);
  v30 = v45;
  v29 = v46;
  v31 = v47;
  (*(v46 + 104))(v45, enum case for Calendar.RepeatedTimePolicy.first(_:), v47);
  v32 = v50;
  v33 = v48;
  v34 = v53;
  (*(v50 + 104))(v48, enum case for Calendar.SearchDirection.forward(_:), v53);
  sub_1000D9240();
  (*(v32 + 8))(v33, v34);
  (*(v29 + 8))(v30, v31);
  (*(v7 + 8))(v28, v55);
  v36 = v43;
  v35 = v44;
  (*(v43 + 8))(v39, v44);
  (*(v41 + 8))(v54, v42);
  result = (*(v36 + 48))(v26, 1, v35);
  if (result != 1)
  {
    return (*(v36 + 32))(v38, v26, v35);
  }

  __break(1u);
  return result;
}

uint64_t sub_100072FC4()
{
  sub_100071DE0(0, &qword_100115360, &type metadata accessor for TimeZone, &type metadata accessor for Optional);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_1000D92D0();
  sub_1000152CC(v3, qword_100128F10);
  v4 = sub_100015294(v3, qword_100128F10);
  sub_1000D9290();
  v5 = *(v3 - 8);
  result = (*(v5 + 48))(v2, 1, v3);
  if (result != 1)
  {
    return (*(v5 + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

uint64_t sub_10007310C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PreparedSparkline.Entry(0);
  __chkstk_darwin(v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v20 - v9;
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
    return 0;
  }

  if (!v11 || a1 == a2)
  {
    return 1;
  }

  v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v13 = a1 + v12;
  v14 = a2 + v12;
  v15 = *(v8 + 72);
  while (1)
  {
    result = sub_1000738DC(v13, v10, type metadata accessor for PreparedSparkline.Entry);
    if (!v11)
    {
      break;
    }

    sub_1000738DC(v14, v6, type metadata accessor for PreparedSparkline.Entry);
    if ((sub_1000D9040() & 1) == 0)
    {
      sub_1000728D4(v6, type metadata accessor for PreparedSparkline.Entry);
      sub_1000728D4(v10, type metadata accessor for PreparedSparkline.Entry);
      return 0;
    }

    v17 = *&v10[*(v4 + 20)];
    sub_1000728D4(v10, type metadata accessor for PreparedSparkline.Entry);
    v18 = *&v6[*(v4 + 20)];
    sub_1000728D4(v6, type metadata accessor for PreparedSparkline.Entry);
    result = v17 == v18;
    v19 = v17 != v18 || v11-- == 1;
    v14 += v15;
    v13 += v15;
    if (v19)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}