uint64_t sub_10001D068(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = type metadata accessor for URLRequest();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();

  return _swift_task_switch(sub_10001D12C, 0, 0);
}

uint64_t sub_10001D12C()
{
  v1 = v0[3];
  v3 = *(v1 + 96);
  v2 = *(v1 + 104);
  (*(v0[6] + 16))(v0[7], v0[4], v0[5]);
  v4 = String._bridgeToObjectiveC()();
  v5 = String._bridgeToObjectiveC()();
  v6 = [objc_opt_self() bagForProfile:v4 profileVersion:v5];
  v0[8] = v6;

  v10 = (*(v2 + 40) + **(v2 + 40));
  v7 = swift_task_alloc();
  v0[9] = v7;
  *v7 = v0;
  v7[1] = sub_10001D2E0;
  v8 = v0[7];

  return v10(v8, v6, v3, v2);
}

uint64_t sub_10001D2E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v6 = *(*v4 + 64);
  v7 = *(*v4 + 56);
  v8 = *(*v4 + 48);
  v9 = *(*v4 + 40);
  v5[10] = a1;
  v5[11] = a2;
  v5[12] = a3;
  v5[13] = v3;

  (*(v8 + 8))(v7, v9);

  if (v3)
  {
    v10 = sub_10001D688;
  }

  else
  {
    v10 = sub_10001D478;
  }

  return _swift_task_switch(v10, 0, 0);
}

uint64_t sub_10001D478()
{
  if ([*(v0 + 96) statusCode] == 200)
  {
    v1 = *(v0 + 16);
    v16 = *(v0 + 80);

    *v1 = v16;

    v2 = *(v0 + 8);
  }

  else
  {
    if (qword_100239CC8 != -1)
    {
      swift_once();
    }

    v3 = *(v0 + 96);
    v4 = type metadata accessor for Logger();
    sub_10000DAC0(v4, qword_10023FC88);
    v5 = v3;
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = *(v0 + 96);
      v9 = swift_slowAlloc();
      *v9 = 134217984;
      *(v9 + 4) = [v8 statusCode];

      _os_log_impl(&_mh_execute_header, v6, v7, "Currency exchange rate fetch has failed with status code: %ld", v9, 0xCu);

      v10 = *(v0 + 96);
    }

    else
    {

      v10 = *(v0 + 96);
      v6 = v10;
    }

    v12 = *(v0 + 80);
    v11 = *(v0 + 88);

    v13 = [v10 statusCode];
    sub_10001E5B0();
    swift_allocError();
    *v14 = v13;
    *(v14 + 8) = 0;
    swift_willThrow();

    sub_10001BABC(v12, v11);

    v2 = *(v0 + 8);
  }

  return v2();
}

uint64_t sub_10001D688()
{

  v1 = *(v0 + 8);

  return v1();
}

Swift::Int sub_10001D6F4()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_10001D778(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10001D7D4@<X0>(Swift::String *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_1002139D8, *a1);

  *a2 = v3 != 0;
  return result;
}

uint64_t sub_10001D874@<X0>(Swift::String string@<0:X0, 8:X1>, BOOL *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&off_100213A10, v3);

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_10001D8D8(uint64_t a1)
{
  v2 = sub_10001EA48();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10001D914(uint64_t a1)
{
  v2 = sub_10001EA48();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_10001D950@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_10001E8C4(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_10001D97C(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_10001DA0C;

  return sub_10001BF14();
}

uint64_t sub_10001DA0C(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v6 = *(v5 + 8);

  return v6();
}

uint64_t sub_10001DB1C(uint64_t a1, uint64_t a2, int *a3, uint64_t a4)
{
  v7 = v5;
  v7[5] = a4;
  v7[6] = v4;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  v9 = type metadata accessor for ContinuousClock();
  v7[7] = v9;
  v7[8] = *(v9 - 8);
  v7[9] = swift_task_alloc();
  v12 = (a3 + *a3);
  v10 = swift_task_alloc();
  v7[10] = v10;
  *v10 = v7;
  v10[1] = sub_10001DC90;

  return v12(a1);
}

uint64_t sub_10001DC90()
{
  v2 = *v1;
  *(v2 + 88) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10001DDCC, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

void sub_10001DDCC()
{
  if (qword_100239CD0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000DAC0(v1, qword_10023FCA0);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[3];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 134218242;
    *(v5 + 4) = v4;
    *(v5 + 12) = 2112;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 14) = v7;
    *v6 = v7;
    _os_log_impl(&_mh_execute_header, v2, v3, "Task failed on attempt %ld with error: %@", v5, 0x16u);
    sub_10000DAF8(v6, &qword_100239F10, &qword_1001B4FD0);
  }

  v8 = v0[6];

  v9 = *(v8 + 8);
  v10 = __OFSUB__(v9, 1);
  v11 = (v9 - 1);
  if (v10)
  {
    __break(1u);
    goto LABEL_19;
  }

  if (v11 > v0[3])
  {
    v12 = v0[6];
    NSDecimal.init(integerLiteral:)(v11, 2);
    pow(_:_:)(v15, v13, v14);
    NSDecimal._bridgeToObjectiveC()(v16);
    v18 = v17;
    v19 = [v17 integerValue];

    v20 = *v12;
    v21 = *v12 * v19;
    if ((v20 * v19) >> 64 == v21 >> 63)
    {
      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 134217984;
        *(v24 + 4) = v21;
        _os_log_impl(&_mh_execute_header, v22, v23, "Sleeping for %ld seconds before next attempt", v24, 0xCu);
      }

      static Clock<>.continuous.getter();
      v25 = swift_task_alloc();
      v0[12] = v25;
      *v25 = v0;
      v25[1] = sub_10001E19C;

      sub_100161C3C(1000000000000000000 * v21, ((v21 >> 63) & 0xF21F494C589C0000) + ((v21 * 0xDE0B6B3A7640000uLL) >> 64), 0, 0, 1);
      return;
    }

LABEL_19:
    __break(1u);
    return;
  }

  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&_mh_execute_header, v26, v27, "Max retry attempts exceeded", v28, 2u);
  }

  swift_willThrow();

  v29 = v0[1];

  v29();
}

uint64_t sub_10001E19C()
{
  v2 = *v1;
  v2[13] = v0;

  if (v0)
  {
    (*(v2[8] + 8))(v2[9], v2[7]);

    return _swift_task_switch(sub_10001E46C, 0, 0);
  }

  else
  {
    v3 = v2[3];
    (*(v2[8] + 8))(v2[9], v2[7]);
    v4 = swift_task_alloc();
    v2[14] = v4;
    *v4 = v2;
    v4[1] = sub_10001E358;
    v5 = v2[5];
    v6 = v2[4];
    v7 = v2[2];

    return sub_10001DB1C(v7, v3 + 1, v6, v5);
  }
}

uint64_t sub_10001E358()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_10001E544;
  }

  else
  {
    v2 = sub_10001E4D8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10001E46C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10001E4D8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10001E544()
{

  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_10001E5B0()
{
  result = qword_10023A678;
  if (!qword_10023A678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023A678);
  }

  return result;
}

uint64_t sub_10001E604(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000BD30;

  return sub_10001D068(a1, v5, v4);
}

unint64_t sub_10001E6B0()
{
  result = qword_10023A680;
  if (!qword_10023A680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023A680);
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for CurrencyExchangeRateTaskError(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for CurrencyExchangeRateTaskError(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CurrencyExchangeRateTaskError(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_10001E778(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10001E794(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

__n128 sub_10001E7C4(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t sub_10001E7E8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
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

uint64_t sub_10001E830(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10001E89C(uint64_t a1)
{
  result = sub_10001E5B0();
  *(a1 + 8) = result;
  return result;
}

void *sub_10001E8C4(void *a1)
{
  v3 = sub_10000CDE0(&qword_10023A6A0, &qword_1001B5130);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v9 - v5;
  v7 = sub_10000DA7C(a1, a1[3]);
  sub_10001EA48();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_10000DB58(a1);
  }

  else
  {
    sub_10000CDE0(&qword_10023A6B0, &qword_1001B5138);
    sub_10001EA9C();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v6, v3);
    v7 = v9[1];
    sub_10000DB58(a1);
  }

  return v7;
}

unint64_t sub_10001EA48()
{
  result = qword_10023A6A8;
  if (!qword_10023A6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023A6A8);
  }

  return result;
}

unint64_t sub_10001EA9C()
{
  result = qword_10023A6B8;
  if (!qword_10023A6B8)
  {
    sub_10000CCC0(&qword_10023A6B0, &qword_1001B5138);
    sub_10001EB28();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023A6B8);
  }

  return result;
}

unint64_t sub_10001EB28()
{
  result = qword_10023A6C0;
  if (!qword_10023A6C0)
  {
    type metadata accessor for Decimal(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023A6C0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CurrencyExchangeRateTask.Response.CodingKeys(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for CurrencyExchangeRateTask.Response.CodingKeys(_WORD *result, int a2, int a3)
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

unint64_t sub_10001EC6C()
{
  result = qword_10023A6C8;
  if (!qword_10023A6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023A6C8);
  }

  return result;
}

unint64_t sub_10001ECC4()
{
  result = qword_10023A6D0;
  if (!qword_10023A6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023A6D0);
  }

  return result;
}

unint64_t sub_10001ED1C()
{
  result = qword_10023A6D8;
  if (!qword_10023A6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023A6D8);
  }

  return result;
}

void sub_10001ED70(uint64_t a1)
{
  v3 = v1;
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SnoutStoryModel(0);
  __chkstk_darwin(v9);
  v11 = (v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100010394(a1, v11);
  static Date.now.getter();
  Date.timeIntervalSince1970.getter();
  v13 = v12;
  (*(v6 + 8))(v8, v5);
  v14 = v13 * 1000.0;
  if (COERCE__INT64(fabs(v13 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v14 <= -1.0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v14 >= 1.84467441e19)
  {
LABEL_9:
    __break(1u);
    return;
  }

  *(v11 + *(v9 + 52)) = v14;
  v15 = [v3 connection];
  v16 = sub_1000EC8C4(v11, v15);
  if (v2)
  {
    sub_1000103F8(v11);
  }

  else
  {
    v17 = v16;

    sub_1000103F8(v11);
  }
}

void sub_10001EF6C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = v17 - v9;
  v11 = [v2 connection];
  v12 = *(v5 + 16);
  v12(v10, a1, v4);
  v13 = String._bridgeToObjectiveC()();
  v12(v8, v10, v4);
  v14 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  v15 = [objc_opt_self() predicateWithProperty:v13 equalToValue:v14];
  swift_unknownObjectRelease();

  (*(v5 + 8))(v10, v4);
  v16 = sub_100085138(v11, v15, _swiftEmptyArrayStorage, 0, 0);
  if (([v16 deleteAllEntities] & 1) == 0)
  {
    type metadata accessor for AKSQLError(0);
    v17[1] = 8;
    sub_10008976C(_swiftEmptyArrayStorage);
    sub_10001558C();
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();
  }
}

void sub_10001F1D4(uint64_t a1, uint64_t a2)
{
  v3 = [v2 connection];
  v4 = String._bridgeToObjectiveC()();

  v5 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  v6 = [objc_opt_self() predicateWithProperty:v4 equalToValue:v5];
  swift_unknownObjectRelease();

  v7 = sub_100085138(v3, v6, _swiftEmptyArrayStorage, 0, 0);
  if (([v7 deleteAllEntities] & 1) == 0)
  {
    type metadata accessor for AKSQLError(0);
    sub_10008976C(_swiftEmptyArrayStorage);
    sub_10001558C();
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();
  }
}

uint64_t sub_10001F3F8(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_10001F43C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_10000CDE0(&qword_100239EE0, &qword_1001B3640);
  __chkstk_darwin(v10 - 8);
  v12 = aBlock - v11;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = a2;
  v14[5] = a3;
  v14[6] = a4;
  v14[7] = a5;
  v14[8] = a1;

  v15 = a1;
  v16 = sub_10001267C(0, 0, v12, &unk_1001B5318, v14);
  v17 = swift_allocObject();
  v17[2] = a2;
  v17[3] = a3;
  v17[4] = v16;
  aBlock[4] = sub_10001FDC0;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10001F3F8;
  aBlock[3] = &unk_1002178C0;
  v18 = _Block_copy(aBlock);

  [v15 setExpirationHandler:v18];
  _Block_release(v18);
}

uint64_t sub_10001F644(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  return _swift_task_switch(sub_10001F66C, 0, 0);
}

uint64_t sub_10001F66C()
{
  v12 = v0;
  if (qword_100239D00 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[7] = sub_10000DAC0(v1, qword_10023FD30);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[2];
    v4 = v0[3];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v11 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_10017AD04(v5, v4, &v11);
    _os_log_impl(&_mh_execute_header, v2, v3, "Begin task for identifier: %s", v6, 0xCu);
    sub_10000DB58(v7);
  }

  v10 = (v0[4] + *v0[4]);
  v8 = swift_task_alloc();
  v0[8] = v8;
  *v8 = v0;
  v8[1] = sub_10001F888;

  return v10();
}

uint64_t sub_10001F888()
{

  return _swift_task_switch(sub_10001F984, 0, 0);
}

uint64_t sub_10001F984()
{
  v10 = v0;
  [*(v0 + 48) setTaskCompleted];

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v4 = *(v0 + 16);
    v3 = *(v0 + 24);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v9 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_10017AD04(v4, v3, &v9);
    _os_log_impl(&_mh_execute_header, v1, v2, "Task completed for identifier: %s", v5, 0xCu);
    sub_10000DB58(v6);
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_10001FAD0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_10001FB20(uint64_t a1)
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
  v11[1] = sub_10000BD30;

  return sub_10001F644(a1, v4, v5, v6, v7, v8, v9, v10);
}

void sub_10001FBFC(uint64_t a1, unint64_t a2)
{
  if (qword_100239D00 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000DAC0(v4, qword_10023FD30);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_10017AD04(a1, a2, &v9);
    _os_log_impl(&_mh_execute_header, v5, v6, "System requested task expiration for identifier: %s", v7, 0xCu);
    sub_10000DB58(v8);
  }

  Task.cancel()();
}

uint64_t sub_10001FD80()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10001FDCC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10001FDF4(uint64_t a1, uint64_t a2)
{
  v3[20] = a2;
  v3[21] = v2;
  v3[19] = a1;
  type metadata accessor for MainActor();
  v3[22] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[23] = v5;
  v3[24] = v4;

  return _swift_task_switch(sub_10001FE90, v5, v4);
}

uint64_t sub_10001FE90()
{
  v1 = v0[21];
  v2 = v0[19];
  type metadata accessor for _ASCLockupKey(0);
  sub_10002020C();
  isa = Set._bridgeToObjectiveC()().super.isa;
  v0[25] = isa;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_10001FFF0;
  v4 = swift_continuation_init();
  v0[17] = sub_10000CDE0(&qword_10023A708, qword_1001B53D0);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100020264;
  v0[13] = &unk_100217958;
  v0[14] = v4;
  [v1 _lockupDictionaryForRequest:v2 includingKeys:isa withCompletionBlock:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10001FFF0()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 208) = v2;
  v3 = *(v1 + 192);
  v4 = *(v1 + 184);
  if (v2)
  {
    v5 = sub_100020194;
  }

  else
  {
    v5 = sub_100020120;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100020120()
{
  v1 = v0[25];

  v2 = v0[18];

  v3 = v0[1];

  return v3(v2);
}

uint64_t sub_100020194()
{
  v1 = *(v0 + 200);

  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

unint64_t sub_10002020C()
{
  result = qword_100239FB0;
  if (!qword_100239FB0)
  {
    type metadata accessor for _ASCLockupKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100239FB0);
  }

  return result;
}

uint64_t sub_100020264(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *sub_10000DA7C((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_10000CDE0(&qword_10023A710, &qword_1001B5480);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return _swift_continuation_throwingResumeWithError(v4, v5);
  }

  else
  {
    type metadata accessor for _ASCLockupKey(0);
    sub_10002020C();
    **(*(v4 + 64) + 40) = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    return _swift_continuation_throwingResume(v4);
  }
}

uint64_t sub_10002036C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1000203E0(uint64_t a1)
{
  *(v1 + 640) = a1;

  return _swift_task_switch(sub_100020470, 0, 0);
}

uint64_t sub_100020470()
{
  v87 = v0;
  v1 = v0 + 10;
  v2 = v0 + 69;
  v3 = v0[80];
  v0[78] = _swiftEmptyArrayStorage;
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = 0;
    v80 = (v0 + 79);
    v6 = v3 + 32;
    v82 = *(v3 + 16);
    v83 = _swiftEmptyArrayStorage;
    v78 = v0 + 69;
    v79 = v0 + 10;
    v81 = v3 + 32;
    while (1)
    {
      v85 = v5;
      sub_10000CE28(v6 + 40 * v5, v2);
      v10 = sub_10000DA7C(v2, v0[72]);
      type metadata accessor for JSONEncoder();
      swift_allocObject();
      JSONEncoder.init()();
      memcpy(__dst, v10, sizeof(__dst));
      memcpy(v1, __dst, 0x1D8uLL);
      sub_100025BD8();
      v14 = dispatch thunk of JSONEncoder.encode<A>(_:)();
      v16 = v15;
      v17 = objc_opt_self();
      isa = Data._bridgeToObjectiveC()().super.isa;
      *v80 = 0;
      v19 = [v17 JSONObjectWithData:isa options:4 error:v80];

      v20 = *v80;
      if (v19)
      {
        break;
      }

      v42 = v20;
      _convertNSErrorToError(_:)();

      swift_willThrow();

      sub_10001BABC(v14, v16);
      v6 = v81;
      if (qword_100239CF8 != -1)
      {
        swift_once();
      }

      v11 = type metadata accessor for Logger();
      sub_10000DAC0(v11, qword_10023FD18);
      swift_errorRetain();
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.error.getter();

      if (!os_log_type_enabled(v12, v13))
      {

LABEL_10:

        goto LABEL_4;
      }

      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138412290;
      swift_errorRetain();
      v9 = _swift_stdlib_bridgeErrorToNSError();
      *(v7 + 4) = v9;
      *v8 = v9;
      _os_log_impl(&_mh_execute_header, v12, v13, "Error encoding metrics event: %@", v7, 0xCu);
      sub_10000DAF8(v8, &qword_100239F10, &qword_1001B4FD0);
      v4 = v82;

LABEL_4:
      v5 = v85 + 1;
      sub_10000DB58(v2);
      if (v85 + 1 == v4)
      {
        v54 = v83;
        if (!(v83 >> 62))
        {
          goto LABEL_73;
        }

LABEL_84:
        if (!_CocoaArrayWrapper.endIndex.getter())
        {
          goto LABEL_85;
        }

LABEL_74:
        if (qword_100239CF8 != -1)
        {
          swift_once();
        }

        v55 = v2;
        v56 = v1;
        v57 = type metadata accessor for Logger();
        v0[81] = sub_10000DAC0(v57, qword_10023FD18);

        v58 = Logger.logObject.getter();
        v59 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v58, v59))
        {
          v60 = swift_slowAlloc();
          *v60 = 134217984;
          if (v54 >> 62)
          {
            v76 = v60;
            v61 = _CocoaArrayWrapper.endIndex.getter();
            v60 = v76;
          }

          else
          {
            v61 = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          *(v60 + 4) = v61;
          _os_log_impl(&_mh_execute_header, v58, v59, "Enqueueing %ld events", v60, 0xCu);
        }

        v62 = String._bridgeToObjectiveC()();
        v63 = String._bridgeToObjectiveC()();
        v64 = [objc_opt_self() bagForProfile:v62 profileVersion:v63];

        v65 = objc_allocWithZone(AMSMetrics);
        v66 = String._bridgeToObjectiveC()();
        v67 = [v65 initWithContainerID:v66 bag:v64];
        v0[82] = v67;

        sub_100025C2C();
        v68 = Array._bridgeToObjectiveC()().super.isa;

        v69 = [v67 promiseForEnqueueingEvents:v68];
        v0[83] = v69;

        v0[2] = v0;
        v0[7] = v55;
        v0[3] = sub_100021220;
        v70 = swift_continuation_init();
        v0[17] = sub_10000CDE0(&qword_10023A750, &qword_1001B5478);
        v0[10] = _NSConcreteStackBlock;
        v0[11] = 1107296256;
        v0[12] = sub_100021CD4;
        v0[13] = &unk_1002179C8;
        v0[14] = v70;
        [v69 resultWithCompletion:v56];

        return _swift_continuation_await(v0 + 2);
      }
    }

    _bridgeAnyObjectToAny(_:)();

    sub_10001BABC(v14, v16);
    swift_unknownObjectRelease();
    sub_10000CDE0(&qword_10023A758, &qword_1001B5880);
    if (swift_dynamicCast())
    {
      v21 = objc_allocWithZone(AMSMetricsEvent);
      v22 = Dictionary._bridgeToObjectiveC()().super.isa;

      v84 = [v21 initWithUnderlyingDictionary:v22];

      v6 = v81;
      if (sub_10000DA7C(v2, v0[72])[3])
      {
        [v84 setEventTime:?];
      }

      if (sub_10000DA7C(v2, v0[72])[1])
      {

        v23 = String._bridgeToObjectiveC()();

        [v84 setDiagnosticsSubmissionBugType:v23];
      }

      v24 = *(sub_10000DA7C(v2, v0[72]) + 16);
      if (v24 != 2)
      {
        [v84 setPreventSampling:v24 & 1];
      }

      [v84 setAnonymous:{1, v78, v79}];
      v25 = sub_10000DA7C(v2, v0[72])[4];
      if (!v25)
      {
        goto LABEL_69;
      }

      v26 = *(v25 + 16);
      if (v26)
      {

        sub_100146DA4(0, v26, 0);
        v27 = 32;
        do
        {
          v28 = *(v25 + v27);
          if (v28 == 6)
          {
            v29 = 0x6F6973726556736FLL;
          }

          else
          {
            v29 = 0x656E6F7A656D6974;
          }

          if (v28 == 6)
          {
            v30 = 0xE90000000000006ELL;
          }

          else
          {
            v30 = 0xEE0074657366664FLL;
          }

          if (v28 == 4)
          {
            v31 = 0x56646C697542736FLL;
          }

          else
          {
            v31 = 0x656D614E736FLL;
          }

          if (v28 == 4)
          {
            v32 = 0xEE006E6F69737265;
          }

          else
          {
            v32 = 0xE600000000000000;
          }

          if (*(v25 + v27) <= 5u)
          {
            v29 = v31;
            v30 = v32;
          }

          v33 = 0x726556746E657665;
          if (v28 == 2)
          {
            v33 = 0x7372655665736162;
            v34 = 0xEB000000006E6F69;
          }

          else
          {
            v34 = 0xEC0000006E6F6973;
          }

          v35 = 0x6973726556707061;
          if (!*(v25 + v27))
          {
            v35 = 7368801;
          }

          v36 = 0xEA00000000006E6FLL;
          if (!*(v25 + v27))
          {
            v36 = 0xE300000000000000;
          }

          if (*(v25 + v27) <= 1u)
          {
            v33 = v35;
            v34 = v36;
          }

          if (*(v25 + v27) <= 3u)
          {
            v37 = v33;
          }

          else
          {
            v37 = v29;
          }

          if (*(v25 + v27) <= 3u)
          {
            v38 = v34;
          }

          else
          {
            v38 = v30;
          }

          v40 = _swiftEmptyArrayStorage[2];
          v39 = _swiftEmptyArrayStorage[3];
          if (v40 >= v39 >> 1)
          {
            sub_100146DA4((v39 > 1), v40 + 1, 1);
          }

          _swiftEmptyArrayStorage[2] = v40 + 1;
          v41 = &_swiftEmptyArrayStorage[2 * v40];
          v41[4] = v37;
          v41[5] = v38;
          ++v27;
          --v26;
        }

        while (v26);

        v2 = v78;
        v1 = v79;
        v6 = v81;
        v4 = v82;
        v46 = _swiftEmptyArrayStorage[2];
        if (v46)
        {
LABEL_61:
          sub_100147160(0, v46, 0);
          v47 = &_swiftEmptyArrayStorage[5];
          do
          {
            v48 = *v47;
            v0[74] = *(v47 - 1);
            v0[75] = v48;

            swift_dynamicCast();
            v50 = _swiftEmptyArrayStorage[2];
            v49 = _swiftEmptyArrayStorage[3];
            if (v50 >= v49 >> 1)
            {
              sub_100147160((v49 > 1), v50 + 1, 1);
            }

            _swiftEmptyArrayStorage[2] = v50 + 1;
            sub_100025CA4(v1, &_swiftEmptyArrayStorage[4 * v50 + 4]);
            v47 += 2;
            --v46;
          }

          while (v46);

          v6 = v81;
          v4 = v82;
LABEL_68:
          v51 = Array._bridgeToObjectiveC()().super.isa;

          [v84 removePropertiesForKeys:v51];

LABEL_69:
          v52 = v84;
          v53 = v0 + 78;
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((*v53 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v53 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            v53 = v0 + 78;
            v6 = v81;
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

          v83 = *v53;
          goto LABEL_4;
        }
      }

      else
      {
        v46 = _swiftEmptyArrayStorage[2];
        if (v46)
        {
          goto LABEL_61;
        }
      }

      goto LABEL_68;
    }

    v6 = v81;
    if (qword_100239CF8 != -1)
    {
      swift_once();
    }

    v43 = type metadata accessor for Logger();
    sub_10000DAC0(v43, qword_10023FD18);
    v12 = Logger.logObject.getter();
    v44 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&_mh_execute_header, v12, v44, "Failed to get dictionary for event", v45, 2u);
    }

    goto LABEL_10;
  }

  v54 = _swiftEmptyArrayStorage;
  if (_swiftEmptyArrayStorage >> 62)
  {
    goto LABEL_84;
  }

LABEL_73:
  if (*((v54 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_74;
  }

LABEL_85:

  if (qword_100239CF8 != -1)
  {
    swift_once();
  }

  v71 = type metadata accessor for Logger();
  sub_10000DAC0(v71, qword_10023FD18);
  v72 = Logger.logObject.getter();
  v73 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v72, v73))
  {
    v74 = swift_slowAlloc();
    *v74 = 0;
    _os_log_impl(&_mh_execute_header, v72, v73, "No events to flush", v74, 2u);
  }

  v75 = v0[1];

  return v75();
}

uint64_t sub_100021220()
{
  v1 = *(*v0 + 48);
  *(*v0 + 672) = v1;
  if (v1)
  {
    v2 = sub_1000213F0;
  }

  else
  {
    v2 = sub_10002135C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10002135C()
{
  v1 = *(v0 + 664);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1000213F0(uint64_t a1)
{
  v2 = v1[83];
  swift_willThrow();

  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v1[82];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failed to enqueue events to AMS: %@", v7, 0xCu);
    sub_10000DAF8(v8, &qword_100239F10, &qword_1001B4FD0);
  }

  else
  {
  }

  v10 = v1[1];

  return v10();
}

uint64_t sub_1000215A0(uint64_t a1, uint64_t a2)
{
  *(v2 + 152) = a1;
  *(v2 + 160) = a2;
  return _swift_task_switch(sub_1000215C0, 0, 0);
}

uint64_t sub_1000215C0()
{
  v1 = String._bridgeToObjectiveC()();
  v2 = String._bridgeToObjectiveC()();
  v3 = [objc_opt_self() bagForProfile:v1 profileVersion:v2];

  v4 = objc_allocWithZone(AMSMetrics);
  v5 = String._bridgeToObjectiveC()();
  v6 = [v4 initWithContainerID:v5 bag:v3];
  v0[21] = v6;

  v7 = String._bridgeToObjectiveC()();
  v8 = [v6 flushTopic:v7];
  v0[22] = v8;

  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1000217F0;
  v9 = swift_continuation_init();
  v0[17] = sub_10000CDE0(&qword_10023A760, &qword_1001B5490);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100021DA0;
  v0[13] = &unk_1002179F0;
  v0[14] = v9;
  [v8 resultWithCompletion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1000217F0()
{
  v1 = *(*v0 + 48);
  *(*v0 + 184) = v1;
  if (v1)
  {
    v2 = sub_100021B10;
  }

  else
  {
    v2 = sub_100021900;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100021900()
{
  v17 = v0;
  v1 = *(v0 + 144);

  if (qword_100239CF8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000DAC0(v2, qword_10023FD18);
  v3 = v1;

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 168);
  if (v6)
  {
    v9 = *(v0 + 152);
    v8 = *(v0 + 160);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v16 = v12;
    *v10 = 138412546;
    *(v10 + 4) = v3;
    *v11 = v3;
    *(v10 + 12) = 2080;
    v13 = v3;
    *(v10 + 14) = sub_10017AD04(v9, v8, &v16);
    _os_log_impl(&_mh_execute_header, v4, v5, "Flushed %@ events to %s", v10, 0x16u);
    sub_10000DAF8(v11, &qword_100239F10, &qword_1001B4FD0);

    sub_10000DB58(v12);
  }

  else
  {
  }

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_100021B10(uint64_t a1)
{
  v2 = v1[22];
  swift_willThrow();

  if (qword_100239CF8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000DAC0(v3, qword_10023FD18);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v1[21];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed to enqueue events to AMS: %@", v8, 0xCu);
    sub_10000DAF8(v9, &qword_100239F10, &qword_1001B4FD0);
  }

  else
  {
  }

  v11 = v1[1];

  return v11();
}

uint64_t sub_100021CD4(uint64_t a1, char a2, void *a3)
{
  v5 = *sub_10000DA7C((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_10000CDE0(&qword_10023A710, &qword_1001B5480);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;

    return _swift_continuation_throwingResume(v5);
  }
}

uint64_t sub_100021DA0(uint64_t a1, void *a2, void *a3)
{
  v5 = sub_10000DA7C((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    sub_10000CDE0(&qword_10023A710, &qword_1001B5480);
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return _swift_continuation_throwingResumeWithError(v6, v7);
  }

  else
  {
    if (a2)
    {
      **(v6[8] + 40) = a2;
      v10 = a2;
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return _swift_continuation_throwingResume(v5);
  }
}

unint64_t sub_100021EA0@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100025F1C(*a1);
  *a2 = result;
  return result;
}

void sub_100021ED0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 7368801;
  v5 = 0xE90000000000006ELL;
  v6 = 0x6F6973726556736FLL;
  if (v2 != 6)
  {
    v6 = 0x656E6F7A656D6974;
    v5 = 0xEE0074657366664FLL;
  }

  v7 = 0xEE006E6F69737265;
  v8 = 0x56646C697542736FLL;
  if (v2 != 4)
  {
    v8 = 0x656D614E736FLL;
    v7 = 0xE600000000000000;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xEB000000006E6F69;
  v10 = 0x7372655665736162;
  if (v2 != 2)
  {
    v10 = 0x726556746E657665;
    v9 = 0xEC0000006E6F6973;
  }

  if (*v1)
  {
    v4 = 0x6973726556707061;
    v3 = 0xEA00000000006E6FLL;
  }

  if (*v1 > 1u)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 3);
  v11 = v2 == 3;
  v12 = v2 - 3 < 0;
  if (*v1 <= 3u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

uint64_t sub_100021FF4(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v8 = Hasher._finalize()();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_1000236F0(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_100022144(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = type metadata accessor for Calendar.Component();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_100025B94(&qword_10023A728, &protocol conformance descriptor for Calendar.Component);
  v33 = a2;
  v11 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_100025B94(&qword_10023A730, &protocol conformance descriptor for Calendar.Component);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_100023870(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_1000223FC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = AnyHashable._rawHashValue(seed:)(*(*v2 + 40));
  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (1)
    {
      sub_100025CC4(*(v6 + 48) + 40 * v9, v16);
      v11 = static AnyHashable.== infix(_:_:)();
      sub_100025D20(v16);
      if (v11)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_100025D20(a2);
    sub_100025CC4(*(v6 + 48) + 40 * v9, a1);
    return 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_100025CC4(a2, v16);
    v15 = *v3;
    sub_100023AEC(v16, v9, isUniquelyReferenced_nonNull_native);
    *v3 = v15;
    v13 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v13;
    *(a1 + 32) = *(a2 + 32);
    return 1;
  }
}

uint64_t sub_100022548(_BYTE *a1, Swift::Int a2)
{
  v5 = *v2;
  Hasher.init(_seed:)();
  v18 = v2;
  v19 = a1;
  String.hash(into:)();

  v6 = Hasher._finalize()();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
LABEL_21:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v18;
    sub_100023C64(a2, v8, isUniquelyReferenced_nonNull_native);
    *v18 = v20;
    result = 1;
    goto LABEL_24;
  }

  v9 = ~v7;
  while (!*(*(v5 + 48) + v8))
  {
    v11 = 0xE800000000000000;
    v10 = 0x64616F6C6E776F64;
    v12 = a2;
    if (!a2)
    {
      goto LABEL_17;
    }

LABEL_8:
    if (v12 == 1)
    {
      v13 = 0x6F6C6E776F646572;
    }

    else
    {
      v13 = 0x6761676E652D6572;
    }

    if (v12 == 1)
    {
      v14 = 0xEA00000000006461;
    }

    else
    {
      v14 = 0xED0000746E656D65;
    }

    if (v10 == v13)
    {
      goto LABEL_18;
    }

LABEL_19:
    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v15)
    {
      goto LABEL_23;
    }

    v8 = (v8 + 1) & v9;
    if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  if (*(*(v5 + 48) + v8) == 1)
  {
    v10 = 0x6F6C6E776F646572;
    v11 = 0xEA00000000006461;
    v12 = a2;
    if (!a2)
    {
      goto LABEL_17;
    }

    goto LABEL_8;
  }

  v10 = 0x6761676E652D6572;
  v11 = 0xED0000746E656D65;
  v12 = a2;
  if (a2)
  {
    goto LABEL_8;
  }

LABEL_17:
  v14 = 0xE800000000000000;
  if (v10 != 0x64616F6C6E776F64)
  {
    goto LABEL_19;
  }

LABEL_18:
  if (v11 != v14)
  {
    goto LABEL_19;
  }

LABEL_23:
  result = 0;
  LOBYTE(a2) = *(*(v5 + 48) + v8);
LABEL_24:
  *v19 = a2;
  return result;
}

uint64_t sub_1000227CC(_BYTE *a1, char a2)
{
  v4 = 0xEA00000000006E6FLL;
  v5 = *v2;
  Hasher.init(_seed:)();
  v18 = a2;
  if (a2)
  {
    v6 = 0x69746375646F7270;
  }

  else
  {
    v6 = 0x6D706F6C65766564;
  }

  if ((a2 & 1) == 0)
  {
    v4 = 0xEB00000000746E65;
  }

  String.hash(into:)();

  v7 = Hasher._finalize()();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (1)
    {
      v11 = *(*(v5 + 48) + v9) ? 0x69746375646F7270 : 0x6D706F6C65766564;
      v12 = *(*(v5 + 48) + v9) ? 0xEA00000000006E6FLL : 0xEB00000000746E65;
      if (v11 == v6 && v12 == v4)
      {
        break;
      }

      v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v14)
      {
        goto LABEL_22;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

LABEL_22:
    result = 0;
    v16 = *(*(v5 + 48) + v9);
  }

  else
  {
LABEL_20:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v19;
    v16 = v18 & 1;
    sub_100023F28(v18 & 1, v9, isUniquelyReferenced_nonNull_native);
    *v19 = v21;
    result = 1;
  }

  *a1 = v16;
  return result;
}

Swift::Int sub_100022998(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10000CDE0(&qword_10023A768, &qword_1001B5498);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
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
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_100022BF8(uint64_t a1)
{
  v2 = v1;
  v36 = type metadata accessor for Calendar.Component();
  v3 = *(v36 - 8);
  __chkstk_darwin(v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  sub_10000CDE0(&qword_10023A738, &qword_1001B5800);
  result = static _SetStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v1;
    v31 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v34 = v3 + 32;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v32 = *(v3 + 72);
      v33 = v20;
      v20(v35, v19, v36);
      sub_100025B94(&qword_10023A728, &protocol conformance descriptor for Calendar.Component);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = v33(*(v7 + 48) + v15 * v32, v35, v36);
      ++*(v7 + 16);
      v5 = v31;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
  return result;
}

Swift::Int sub_100022F40(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10000CDE0(&qword_10023A780, &qword_1001B54D8);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
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
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = *(v3 + 48) + 40 * (v15 | (v6 << 6));
      v27 = *v18;
      v28 = *(v18 + 16);
      v29 = *(v18 + 32);
      result = AnyHashable._rawHashValue(seed:)(*(v5 + 40));
      v19 = -1 << *(v5 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v5 + 48) + 40 * v13;
      *v14 = v27;
      *(v14 + 16) = v28;
      *(v14 + 32) = v29;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero((v3 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v26;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

Swift::Int sub_1000231A0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10000CDE0(&qword_10023A770, &unk_1001B54A0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
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
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + (v14 | (v6 << 6)));
      Hasher.init(_seed:)();
      String.hash(into:)();

      result = Hasher._finalize()();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero((v3 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

Swift::Int sub_100023458(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10000CDE0(&qword_10023A778, &qword_1001B57D0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
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
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + (v14 | (v6 << 6)));
      Hasher.init(_seed:)();
      String.hash(into:)();

      result = Hasher._finalize()();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero((v3 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

Swift::Int sub_1000236F0(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_100022998(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_100024150();
      goto LABEL_16;
    }

    sub_1000248DC(v8 + 1);
  }

  v10 = *v4;
  Hasher.init(_seed:)();
  String.hash(into:)();
  result = Hasher._finalize()();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100023870(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = type metadata accessor for Calendar.Component();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100022BF8(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_1000242AC();
      goto LABEL_12;
    }

    sub_100024B14(v10 + 1);
  }

  v12 = *v3;
  sub_100025B94(&qword_10023A728, &protocol conformance descriptor for Calendar.Component);
  v13 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_100025B94(&qword_10023A730, &protocol conformance descriptor for Calendar.Component);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

Swift::Int sub_100023AEC(Swift::Int result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100022F40(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      result = sub_1000244E4();
      goto LABEL_12;
    }

    sub_100024E1C(v7 + 1);
  }

  v9 = *v3;
  result = AnyHashable._rawHashValue(seed:)(*(*v3 + 40));
  v10 = -1 << *(v9 + 32);
  a2 = result & ~v10;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    do
    {
      sub_100025CC4(*(v9 + 48) + 40 * a2, v19);
      v12 = static AnyHashable.== infix(_:_:)();
      result = sub_100025D20(v19);
      if (v12)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v13 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v14 = *(v13 + 48) + 40 * a2;
  v15 = *(v6 + 16);
  *v14 = *v6;
  *(v14 + 16) = v15;
  *(v14 + 32) = *(v6 + 32);
  v16 = *(v13 + 16);
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (!v17)
  {
    *(v13 + 16) = v18;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

Swift::Int sub_100023C64(Swift::Int result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1000231A0(v6 + 1);
    }

    else
    {
      if (v7 > v6)
      {
        result = sub_10002465C();
        goto LABEL_28;
      }

      sub_100025048(v6 + 1);
    }

    v8 = *v3;
    Hasher.init(_seed:)();
    String.hash(into:)();

    result = Hasher._finalize()();
    v9 = -1 << *(v8 + 32);
    a2 = result & ~v9;
    if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v10 = ~v9;
      do
      {
        if (*(*(v8 + 48) + a2))
        {
          if (*(*(v8 + 48) + a2) == 1)
          {
            v11 = 0x6F6C6E776F646572;
            v12 = 0xEA00000000006461;
            v13 = v5;
            if (!v5)
            {
              goto LABEL_24;
            }
          }

          else
          {
            v11 = 0x6761676E652D6572;
            v12 = 0xED0000746E656D65;
            v13 = v5;
            if (!v5)
            {
LABEL_24:
              v15 = 0xE800000000000000;
              if (v11 == 0x64616F6C6E776F64)
              {
                goto LABEL_25;
              }

              goto LABEL_26;
            }
          }
        }

        else
        {
          v12 = 0xE800000000000000;
          v11 = 0x64616F6C6E776F64;
          v13 = v5;
          if (!v5)
          {
            goto LABEL_24;
          }
        }

        if (v13 == 1)
        {
          v14 = 0x6F6C6E776F646572;
        }

        else
        {
          v14 = 0x6761676E652D6572;
        }

        if (v13 == 1)
        {
          v15 = 0xEA00000000006461;
        }

        else
        {
          v15 = 0xED0000746E656D65;
        }

        if (v11 == v14)
        {
LABEL_25:
          if (v12 == v15)
          {
            goto LABEL_31;
          }
        }

LABEL_26:
        v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v16)
        {
          goto LABEL_32;
        }

        a2 = (a2 + 1) & v10;
      }

      while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

LABEL_28:
  v17 = *v21;
  *(*v21 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v17 + 48) + a2) = v5;
  v18 = *(v17 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
LABEL_31:

LABEL_32:
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v17 + 16) = v20;
  }

  return result;
}

Swift::Int sub_100023F28(Swift::Int result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  v22 = result;
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_25;
  }

  if (a3)
  {
    sub_100023458(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_10002479C();
      goto LABEL_25;
    }

    sub_1000252D0(v6 + 1);
  }

  v8 = 0x69746375646F7270;
  v9 = *v3;
  Hasher.init(_seed:)();
  if (v5)
  {
    v10 = 0xEA00000000006E6FLL;
  }

  else
  {
    v8 = 0x6D706F6C65766564;
    v10 = 0xEB00000000746E65;
  }

  String.hash(into:)();

  result = Hasher._finalize()();
  v11 = -1 << *(v9 + 32);
  a2 = result & ~v11;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    do
    {
      v13 = *(*(v9 + 48) + a2) ? 0x69746375646F7270 : 0x6D706F6C65766564;
      v14 = *(*(v9 + 48) + a2) ? 0xEA00000000006E6FLL : 0xEB00000000746E65;
      if (v13 == v8 && v14 == v10)
      {
        goto LABEL_28;
      }

      v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v16)
      {
        goto LABEL_29;
      }

      a2 = (a2 + 1) & v12;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_25:
  v17 = *v21;
  *(*v21 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v17 + 48) + a2) = v22 & 1;
  v18 = *(v17 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v17 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_28:

LABEL_29:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void *sub_100024150()
{
  v1 = v0;
  sub_10000CDE0(&qword_10023A768, &qword_1001B5498);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1000242AC()
{
  v1 = v0;
  v2 = type metadata accessor for Calendar.Component();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000CDE0(&qword_10023A738, &qword_1001B5800);
  v6 = *v0;
  v7 = static _SetStorage.copy(original:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v6 + 56);
    v16 = (v13 + 63) >> 6;
    v23 = v3 + 32;
    for (i = v3 + 16; v15; result = (*(v3 + 32))(*(v8 + 48) + v20, v5, v2))
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_14:
      v20 = *(v3 + 72) * (v17 | (v12 << 6));
      (*(v3 + 16))(v5, *(v6 + 48) + v20, v2);
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v1 = v22;
        goto LABEL_18;
      }

      v19 = *(v10 + 8 * v12);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

void *sub_1000244E4()
{
  v1 = v0;
  sub_10000CDE0(&qword_10023A780, &qword_1001B54D8);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 40 * (v14 | (v8 << 6));
        result = sub_100025CC4(*(v2 + 48) + v17, v21);
        v18 = *(v4 + 48) + v17;
        v19 = v21[0];
        v20 = v21[1];
        *(v18 + 32) = v22;
        *v18 = v19;
        *(v18 + 16) = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_10002465C()
{
  v1 = v0;
  sub_10000CDE0(&qword_10023A770, &unk_1001B54A0);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_10002479C()
{
  v1 = v0;
  sub_10000CDE0(&qword_10023A778, &qword_1001B57D0);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

Swift::Int sub_1000248DC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10000CDE0(&qword_10023A768, &qword_1001B5498);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_100024B14(uint64_t a1)
{
  v2 = v1;
  v33 = type metadata accessor for Calendar.Component();
  v3 = *(v33 - 8);
  __chkstk_darwin(v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_10000CDE0(&qword_10023A738, &qword_1001B5800);
  v7 = static _SetStorage.resize(original:capacity:move:)();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v32 + 72);
      (*(v32 + 16))(v5, *(result + 48) + v20 * (v17 | (v9 << 6)), v33);
      sub_100025B94(&qword_10023A728, &protocol conformance descriptor for Calendar.Component);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v29)(*(v7 + 48) + v16 * v20, v5, v33);
      ++*(v7 + 16);
      result = v30;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v28;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v7;
  }

  return result;
}

Swift::Int sub_100024E1C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10000CDE0(&qword_10023A780, &qword_1001B54D8);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v16 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      sub_100025CC4(*(v3 + 48) + 40 * (v16 | (v6 << 6)), v26);
      result = AnyHashable._rawHashValue(seed:)(*(v5 + 40));
      v19 = -1 << *(v5 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v11 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v11 + 8 * v21);
          if (v25 != -1)
          {
            v12 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v20) & ~*(v11 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = *(v5 + 48) + 40 * v12;
      v14 = v26[0];
      v15 = v26[1];
      *(v13 + 32) = v27;
      *v13 = v14;
      *(v13 + 16) = v15;
      ++*(v5 + 16);
    }

    v17 = v6;
    while (1)
    {
      v6 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v18 = *(v3 + 56 + 8 * v6);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v9 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

Swift::Int sub_100025048(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10000CDE0(&qword_10023A770, &unk_1001B54A0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + (v13 | (v6 << 6)));
      Hasher.init(_seed:)();
      String.hash(into:)();

      result = Hasher._finalize()();
      v17 = -1 << *(v5 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
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
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

Swift::Int sub_1000252D0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10000CDE0(&qword_10023A778, &qword_1001B57D0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + (v13 | (v6 << 6)));
      Hasher.init(_seed:)();
      String.hash(into:)();

      result = Hasher._finalize()();
      v17 = -1 << *(v5 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
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
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

void *sub_100025538(uint64_t a1)
{
  v21 = a1;
  v1 = type metadata accessor for Calendar.Component();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v20 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v18 = &v17 - v5;
  sub_10000CDE0(&qword_10023A720, &unk_1001B5460);
  v6 = *(v2 + 72);
  v7 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1001B5420;
  v17 = v8;
  v9 = v8 + v7;
  v10 = *(v2 + 104);
  v10(v8 + v7, enum case for Calendar.Component.year(_:), v1);
  v10(v9 + v6, enum case for Calendar.Component.month(_:), v1);
  v10(v9 + 2 * v6, enum case for Calendar.Component.day(_:), v1);
  v10(v9 + 3 * v6, enum case for Calendar.Component.hour(_:), v1);
  v10(v9 + 4 * v6, enum case for Calendar.Component.minute(_:), v1);
  v10(v9 + 5 * v6, enum case for Calendar.Component.second(_:), v1);
  v19 = v6;
  v10(v9 + 6 * v6, enum case for Calendar.Component.nanosecond(_:), v1);
  v22 = &_swiftEmptySetSingleton;
  v11 = *(v2 + 16);
  v12 = 8;
  do
  {
    if (!--v12)
    {
      break;
    }

    v13 = v20;
    v14 = v9 + v19;
    v11(v20, v9, v1);
    v15 = v18;
    sub_100022144(v18, v13);
    (*(v2 + 8))(v15, v1);
    v9 = v14;
  }

  while ((static Calendar.Component.== infix(_:_:)() & 1) == 0);

  return v22;
}

id sub_100025808(uint64_t a1, uint64_t a2)
{
  v3 = sub_10000CDE0(&qword_10023A718, qword_1001BBA70);
  __chkstk_darwin(v3 - 8);
  v5 = &v23 - v4;
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v23 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Calendar();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for DateComponents();
  v13 = *(v24 - 8);
  __chkstk_darwin(v24);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Calendar.current.getter();
  sub_100025538(a2);
  Calendar.dateComponents(_:from:)();

  v16 = *(v10 + 8);
  v16(v12, v9);
  static Calendar.current.getter();
  Calendar.date(from:)();
  v16(v12, v9);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    (*(v13 + 8))(v15, v24);
    sub_10000DAF8(v5, &qword_10023A718, qword_1001BBA70);
    return 0;
  }

  else
  {
    v18 = v23;
    (*(v7 + 32))(v23, v5, v6);
    v19 = objc_opt_self();
    isa = Date._bridgeToObjectiveC()().super.isa;
    v21 = [v19 serverTimeFromDate:isa];

    v22 = [v21 unsignedLongLongValue];
    (*(v7 + 8))(v18, v6);
    (*(v13 + 8))(v15, v24);
    return v22;
  }
}

uint64_t sub_100025B94(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Calendar.Component();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100025BD8()
{
  result = qword_10023A740;
  if (!qword_10023A740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023A740);
  }

  return result;
}

unint64_t sub_100025C2C()
{
  result = qword_10023A748;
  if (!qword_10023A748)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10023A748);
  }

  return result;
}

_OWORD *sub_100025CA4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t getEnumTagSinglePayload for Metrics.AMSBaseProperties(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Metrics.AMSBaseProperties(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100025EC8()
{
  result = qword_10023A788;
  if (!qword_10023A788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023A788);
  }

  return result;
}

unint64_t sub_100025F1C(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100213A98, v2);

  if (v3 >= 8)
  {
    return 8;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100025F80()
{
  sub_10000CDE0(&qword_10023A790, &qword_1001B55F0);
  swift_allocObject();
  result = TaskLocal.init(wrappedValue:)();
  qword_10023FC30 = result;
  return result;
}

uint64_t sub_100025FE0()
{
  v0 = type metadata accessor for Logger();
  sub_100026610(v0, qword_10023FC38);
  sub_10000DAC0(v0, qword_10023FC38);
  Logger.aakSubsystem.unsafeMutableAddressor();

  return Logger.init(subsystem:category:)();
}

void *sub_100026060(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_100026080(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v18[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100239C98 != -1)
  {
    swift_once();
  }

  TaskLocal.get()();
  if (v18[1])
  {
    v7 = v18[0];

    if (v7)
    {
    }
  }

  v9 = Logger.general.unsafeMutableAddressor();
  (*(v4 + 16))(v6, v9, v3);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v18[0] = v13;
    *v12 = 136315138;
    v14 = StaticString.description.getter();
    v16 = sub_10017AD04(v14, v15, v18);

    *(v12 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v10, v11, "%s", v12, 0xCu);
    sub_10000DB58(v13);
  }

  return (*(v4 + 8))(v6, v3);
}

void sub_1000262C0(unint64_t a1, unint64_t a2, char a3)
{
  if (a3)
  {
    sub_100026080("No activity to associate LogKey with", 36, 2);
    if (qword_100239CA0 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_10000DAC0(v5, qword_10023FC38);

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v19 = v9;
      *v8 = 136446210;
      sub_100014BF8(a1, a2, 1);
      *(v8 + 4) = sub_10017AD04(a1, a2, &v19);
      _os_log_impl(&_mh_execute_header, v6, v7, "Activity associated with %{public}s", v8, 0xCu);
      sub_10000DB58(v9);
    }

    else
    {

      sub_100014BF8(a1, a2, 1);
    }
  }

  else
  {
    sub_100026080("No activity to associate LogKey with", 36, 2);
    if (qword_100239CA0 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_10000DAC0(v10, qword_10023FC38);
    sub_10001EC50();
    sub_10001EC50();
    oslog = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v11))
    {
      v12 = HIDWORD(a1);
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v19 = v14;
      *v13 = 136315650;
      if (a1)
      {
        if (a1 == 1)
        {
          v15 = 4931905;
        }

        else
        {
          v15 = 1162891086;
        }

        if (a1 == 1)
        {
          v16 = 0xE300000000000000;
        }

        else
        {
          v16 = 0xE400000000000000;
        }
      }

      else
      {
        v16 = 0xE300000000000000;
        v15 = 5129543;
      }

      v17 = sub_10017AD04(v15, v16, &v19);

      *(v13 + 4) = v17;
      *(v13 + 12) = 1040;
      *(v13 + 14) = 8;
      *(v13 + 18) = 1024;
      *(v13 + 20) = v12;
      _os_log_impl(&_mh_execute_header, oslog, v11, "Activity associated with %s%.*X", v13, 0x18u);
      sub_10000DB58(v14);
    }

    else
    {
    }
  }
}

uint64_t *sub_100026610(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_100026674(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1000266BC(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_100026714(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 688))
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

uint64_t sub_10002675C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 680) = 0;
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
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
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
      *(result + 688) = 1;
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

    *(result + 688) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100026860@<X0>(uint64_t a1@<X8>)
{
  v2 = objc_opt_self();
  v3 = [v2 sharedScheduler];
  v17 = &type metadata for ActivityManager;
  v18 = &off_100223E90;
  v4 = swift_allocObject();
  v16[0] = v4;
  v4[5] = &type metadata for BackgroundSystemTaskScheduler;
  v4[6] = &off_100217910;
  v4[2] = v3;
  v14 = &type metadata for LaunchServicesRecordFactory;
  v15 = &off_10021CBA8;
  sub_1000B8524(v16, v13, a1);
  if (qword_100239CA8 != -1)
  {
    swift_once();
  }

  v5 = qword_10023FC50;
  v6 = [v2 sharedScheduler];
  *(a1 + 280) = &type metadata for ActivityManager;
  *(a1 + 288) = &off_100223E90;
  v7 = swift_allocObject();
  *(a1 + 256) = v7;
  v7[5] = &type metadata for BackgroundSystemTaskScheduler;
  v7[6] = &off_100217910;
  v7[2] = v6;
  *(a1 + 344) = &type metadata for AttributionKitCanineArbiter;
  *(a1 + 352) = &off_1002191C8;
  if (qword_100239C90 != -1)
  {
    swift_once();
  }

  v8 = qword_10023FC28;
  *(a1 + 384) = type metadata accessor for TaskGreyhound(0);
  *(a1 + 392) = &off_1002169F0;
  *(a1 + 360) = v8;
  *(a1 + 424) = &type metadata for LaunchServicesRecordFactory;
  *(a1 + 432) = &off_10021CBA8;
  *(a1 + 464) = &type metadata for AMSDogBag;
  *(a1 + 472) = &off_100222F48;

  v9 = [v2 sharedScheduler];
  v17 = &type metadata for ActivityManager;
  v18 = &off_100223E90;
  v10 = swift_allocObject();
  v15 = &off_10021CBA8;
  v16[0] = v10;
  v10[5] = &type metadata for BackgroundSystemTaskScheduler;
  v10[6] = &off_100217910;
  v10[2] = v9;
  v14 = &type metadata for LaunchServicesRecordFactory;
  sub_1000B8524(v16, v13, a1 + 480);
  *(a1 + 592) = &type metadata for AppStoreDaemonSKANInterop;
  *(a1 + 600) = &off_100222C60;
  sub_1000B42E0((a1 + 608));
  if (qword_100239D30 != -1)
  {
    swift_once();
  }

  v11 = qword_10023FD90;
  *(a1 + 672) = type metadata accessor for SnoutManager(0);
  *(a1 + 680) = &off_100223858;
  *(a1 + 648) = v11;
  strcpy((a1 + 88), "postback_store");
  *(a1 + 103) = -18;
  *(a1 + 104) = v5;
  *(a1 + 112) = 0x63616274736F6867;
  *(a1 + 120) = 0xEF65726F74735F6BLL;
  *(a1 + 128) = v5;
  *(a1 + 136) = 0xD000000000000010;
  *(a1 + 144) = 0x80000001001CB320;
  *(a1 + 152) = v5;
  *(a1 + 160) = 0x74735F6E656B6F74;
  *(a1 + 168) = 0xEB0000000065726FLL;
  *(a1 + 176) = v5;
  *(a1 + 184) = 0xD000000000000012;
  *(a1 + 192) = 0x80000001001CB340;
  *(a1 + 200) = v5;
  *(a1 + 208) = 0xD000000000000014;
  *(a1 + 216) = 0x80000001001CB360;
  *(a1 + 224) = v5;
  *(a1 + 232) = 0xD000000000000018;
  *(a1 + 240) = 0x80000001001CB380;
  *(a1 + 248) = v5;
  *(a1 + 296) = 0xD000000000000011;
  *(a1 + 304) = 0x80000001001CB3A0;
  *(a1 + 312) = v5;
}

uint64_t sub_100026C34()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = Logger.developerMode.unsafeMutableAddressor();
  (*(v1 + 16))(v3, v4, v0);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "[DeveloperModeService] Get developer mode", v7, 2u);
  }

  (*(v1 + 8))(v3, v0);
  return sub_1000B86A8() & 1;
}

void sub_100026D9C(char a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = Logger.developerMode.unsafeMutableAddressor();
  (*(v3 + 16))(v5, v6, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 67109120;
    *(v9 + 4) = a1 & 1;
    _os_log_impl(&_mh_execute_header, v7, v8, "[DeveloperModeService] Set developer mode to: %{BOOL}d", v9, 8u);
  }

  (*(v3 + 8))(v5, v2);
  sub_1000B8AD8(a1 & 1);
}

uint64_t sub_100026F18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v16 = a3;
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = Logger.developerMode.unsafeMutableAddressor();
  (*(v6 + 16))(v8, v9, v5);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v15 = a1;
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "[DeveloperModeService] Retrieve developer postback url", v12, 2u);
    a1 = v15;
  }

  (*(v6 + 8))(v8, v5);
  return sub_1000B93A8(a1, a2, v16);
}

uint64_t sub_1000270C8(uint64_t a1, uint64_t a2)
{
  v3[18] = a2;
  v3[19] = v2;
  v3[17] = a1;
  v3[20] = type metadata accessor for DevelopmentPostbackConfiguration(0);
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v4 = type metadata accessor for Logger();
  v3[23] = v4;
  v3[24] = *(v4 - 8);
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();

  return _swift_task_switch(sub_1000271D4, 0, 0);
}

uint64_t sub_1000271D4(uint64_t a1)
{
  v28 = v1;
  v2 = *(v1 + 208);
  v3 = *(v1 + 192);
  Logger.developerMode.unsafeMutableAddressor();
  (*(v3 + 16))(v2);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "[DeveloperModeService] Create development postbacks", v6, 2u);
  }

  v7 = *(v1 + 208);
  v8 = *(v1 + 184);
  v9 = *(v1 + 192);

  (*(v9 + 8))(v7, v8);
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  PropertyListDecoder.init()();
  sub_100028CF0(&qword_10023A7A0, type metadata accessor for DevelopmentPostbackConfiguration, &protocol conformance descriptor for DevelopmentPostbackConfiguration);
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  v11 = *(v1 + 168);
  v10 = *(v1 + 176);

  sub_1000288C4(v11, v10);
  sub_1000B9960(v10, v23);
  v13 = v23[0];
  v12 = v23[1];
  v14 = v23[2];
  v15 = v23[3];
  v16 = v23[4];
  v17 = v24;
  v18 = v25;
  v19 = v26;
  v20 = v27;
  *(v1 + 16) = v23[0];
  *(v1 + 24) = v12;
  *(v1 + 32) = v14;
  *(v1 + 40) = v15;
  *(v1 + 48) = v16;
  *(v1 + 56) = v17;
  *(v1 + 57) = v18;
  *(v1 + 64) = v19;
  *(v1 + 72) = v20;
  v21 = swift_task_alloc();
  *(v1 + 216) = v21;
  *v21 = v1;
  v21[1] = sub_1000275CC;

  return sub_100106118(v13);
}

uint64_t sub_1000275CC()
{
  v2 = *v1;
  *(v2 + 224) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100027908, 0, 0);
  }

  else
  {
    v3 = *(v2 + 40);
    *(v2 + 80) = *(v2 + 24);
    *(v2 + 96) = v3;
    *(v2 + 112) = *(v2 + 56);
    *(v2 + 128) = *(v2 + 72);
    v4 = swift_task_alloc();
    *(v2 + 232) = v4;
    *v4 = v2;
    v4[1] = sub_100027760;

    return sub_1001091AC(v2 + 80);
  }
}

uint64_t sub_100027760()
{
  v1 = *v0;

  sub_10000DAF8(v1 + 16, &qword_10023A7A8, &qword_1001B57E8);

  return _swift_task_switch(sub_100027874, 0, 0);
}

uint64_t sub_100027874()
{
  sub_100028928(*(v0 + 176));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100027908()
{
  v1 = *(v0 + 176);
  sub_10000DAF8(v0 + 16, &qword_10023A7A8, &qword_1001B57E8);
  sub_100028928(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1000279B4()
{
  v1[2] = v0;
  v2 = type metadata accessor for Logger();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return _swift_task_switch(sub_100027A74, 0, 0);
}

uint64_t sub_100027A74(uint64_t a1)
{
  v3 = v1[4];
  v2 = v1[5];
  v4 = v1[3];
  v5 = Logger.developerMode.unsafeMutableAddressor();
  (*(v3 + 16))(v2, v5, v4);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "[DeveloperModeService] Transmit development postbacks", v8, 2u);
  }

  v10 = v1[4];
  v9 = v1[5];
  v11 = v1[3];

  (*(v10 + 8))(v9, v11);
  v12 = sub_1000286A4(&off_100213C98);
  v1[6] = v12;
  v13 = swift_task_alloc();
  v1[7] = v13;
  *v13 = v1;
  v13[1] = sub_100027BE0;

  return sub_10010B00C(v12);
}

uint64_t sub_100027BE0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100027D10()
{
  v1[2] = v0;
  v2 = type metadata accessor for Logger();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return _swift_task_switch(sub_100027DD0, 0, 0);
}

uint64_t sub_100027DD0(uint64_t a1)
{
  v3 = v1[4];
  v2 = v1[5];
  v4 = v1[3];
  v5 = Logger.developerMode.unsafeMutableAddressor();
  (*(v3 + 16))(v2, v5, v4);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "[DeveloperModeService] Clear development postbacks", v8, 2u);
  }

  v10 = v1[4];
  v9 = v1[5];
  v11 = v1[3];

  (*(v10 + 8))(v9, v11);
  v12 = swift_task_alloc();
  v1[6] = v12;
  *v12 = v1;
  v12[1] = sub_100027F24;

  return sub_10010B9C4();
}

uint64_t sub_100027F24()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

Swift::Int sub_100028038(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000CDE0(&qword_10023A7C0, &qword_1001B5808);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v29 = v3 + 56;
    v27 = v1;
    v28 = a1 + 32;
    v26 = v3;
    while (1)
    {
      v5 = *(v28 + 8 * v4);
      Hasher.init(_seed:)();
      v6 = *(v5 + 16);
      Hasher._combine(_:)(v6);
      v7 = *(v5 + 16);
      if (v7)
      {

        v8 = v5 + 40;
        do
        {

          String.hash(into:)();

          v8 += 16;
          --v7;
        }

        while (v7);
      }

      else
      {
      }

      result = Hasher._finalize()();
      v10 = -1 << *(v3 + 32);
      v11 = result & ~v10;
      v12 = v11 >> 6;
      v13 = *(v29 + 8 * (v11 >> 6));
      v14 = 1 << v11;
      v15 = *(v3 + 48);
      if (((1 << v11) & v13) != 0)
      {
        break;
      }

LABEL_26:
      *(v29 + 8 * v12) = v13 | v14;
      *(v15 + 8 * v11) = v5;
      v23 = *(v3 + 16);
      v24 = __OFADD__(v23, 1);
      v25 = v23 + 1;
      if (v24)
      {
        goto LABEL_31;
      }

      *(v3 + 16) = v25;
LABEL_4:
      if (++v4 == v1)
      {
        return v3;
      }
    }

    v16 = ~v10;
    while (1)
    {
      v17 = *(v15 + 8 * v11);
      if (*(v17 + 16) == v6)
      {
        break;
      }

LABEL_12:
      v11 = (v11 + 1) & v16;
      v12 = v11 >> 6;
      v13 = *(v29 + 8 * (v11 >> 6));
      v14 = 1 << v11;
      if ((v13 & (1 << v11)) == 0)
      {
        v3 = v26;
        v1 = v27;
        v15 = *(v26 + 48);
        goto LABEL_26;
      }
    }

    if (!v6 || v17 == v5)
    {
LABEL_3:

      v3 = v26;
      v1 = v27;
      goto LABEL_4;
    }

    v18 = *(v5 + 16);
    v19 = (v17 + 40);
    v20 = (v5 + 40);
    v21 = v6;
    while (v18)
    {
      result = *(v19 - 1);
      if (result != *(v20 - 1) || *v19 != *v20)
      {
        result = _stringCompareWithSmolCheck(_:_:expecting:)();
        if ((result & 1) == 0)
        {
          goto LABEL_12;
        }
      }

      --v18;
      v19 += 2;
      v20 += 2;
      if (!--v21)
      {
        goto LABEL_3;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {
    return &_swiftEmptySetSingleton;
  }

  return result;
}

uint64_t sub_10002826C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000CDE0(&qword_10023A798, &qword_1001B57C8);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    v7 = ~(-1 << *(v3 + 32));
    while (1)
    {
      v11 = *(v6 + 8 * v4);
      result = static Hasher._hash(seed:_:)();
      v13 = result & v7;
      v14 = (result & v7) >> 6;
      v15 = *(v5 + 8 * v14);
      v16 = 1 << (result & v7);
      v17 = *(v3 + 48);
      if ((v16 & v15) != 0)
      {
        while (*(v17 + 8 * v13) != v11)
        {
          v13 = (v13 + 1) & v7;
          v14 = v13 >> 6;
          v15 = *(v5 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v14) = v16 | v15;
        *(v17 + 8 * v13) = v11;
        v8 = *(v3 + 16);
        v9 = __OFADD__(v8, 1);
        v10 = v8 + 1;
        if (v9)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v10;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

void *sub_100028384(uint64_t a1)
{
  v2 = type metadata accessor for Calendar.Component();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_10000CDE0(&qword_10023A738, &qword_1001B5800);
    v9 = static _SetStorage.allocate(capacity:)();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_100028CF0(&qword_10023A728, &type metadata accessor for Calendar.Component, &protocol conformance descriptor for Calendar.Component);
      v16 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v6, *(v9 + 48) + v18 * v14, v2);
          sub_100028CF0(&qword_10023A730, &type metadata accessor for Calendar.Component, &protocol conformance descriptor for Calendar.Component);
          v23 = dispatch thunk of static Equatable.== infix(_:_:)();
          v24 = *v15;
          (*v15)(v6, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

Swift::Int sub_1000286A4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000CDE0(&qword_10023A778, &qword_1001B57D0);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v24 = v1;
    v25 = a1 + 32;
    while (1)
    {
      v6 = *(v25 + v4);
      Hasher.init(_seed:)();
      if (v6)
      {
        v7 = 0x69746375646F7270;
      }

      else
      {
        v7 = 0x6D706F6C65766564;
      }

      if (v6)
      {
        v8 = 0xEA00000000006E6FLL;
      }

      else
      {
        v8 = 0xEB00000000746E65;
      }

      String.hash(into:)();

      result = Hasher._finalize()();
      v10 = -1 << *(v3 + 32);
      v11 = result & ~v10;
      v12 = v11 >> 6;
      v13 = *(v5 + 8 * (v11 >> 6));
      v14 = 1 << v11;
      if (((1 << v11) & v13) != 0)
      {
        v23 = v6;
        v15 = ~v10;
        do
        {
          if (*(*(v3 + 48) + v11))
          {
            v16 = 0x69746375646F7270;
          }

          else
          {
            v16 = 0x6D706F6C65766564;
          }

          if (*(*(v3 + 48) + v11))
          {
            v17 = 0xEA00000000006E6FLL;
          }

          else
          {
            v17 = 0xEB00000000746E65;
          }

          if (v16 == v7 && v17 == v8)
          {

            goto LABEL_4;
          }

          v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v19)
          {
            goto LABEL_4;
          }

          v11 = (v11 + 1) & v15;
          v12 = v11 >> 6;
          v13 = *(v5 + 8 * (v11 >> 6));
          v14 = 1 << v11;
        }

        while ((v13 & (1 << v11)) != 0);
        LOBYTE(v6) = v23;
      }

      *(v5 + 8 * v12) = v13 | v14;
      *(*(v3 + 48) + v11) = v6;
      v20 = *(v3 + 16);
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        break;
      }

      *(v3 + 16) = v22;
LABEL_4:
      if (++v4 == v24)
      {
        return v3;
      }
    }

    __break(1u);
  }

  else
  {
    return &_swiftEmptySetSingleton;
  }

  return result;
}

uint64_t sub_1000288C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DevelopmentPostbackConfiguration(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100028928(uint64_t a1)
{
  v2 = type metadata accessor for DevelopmentPostbackConfiguration(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_100028984(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000CDE0(&qword_10023A7B8, &qword_1001B57F8);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v25 = v1;
    v26 = a1 + 32;
    v6 = v1;
    while (1)
    {
      v7 = *(v26 + 8 * v4);
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      v27 = v7;
      String.hash(into:)();
      v8 = Hasher._finalize()();

      v10 = -1 << *(v3 + 32);
      v11 = v8 & ~v10;
      v12 = v11 >> 6;
      v13 = *(v5 + 8 * (v11 >> 6));
      v14 = 1 << v11;
      if (((1 << v11) & v13) == 0)
      {
        goto LABEL_15;
      }

      v15 = ~v10;
      do
      {
        v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v18 = v17;
        if (v16 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v18 == v19)
        {

LABEL_4:
          v6 = v25;
          goto LABEL_5;
        }

        v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v21)
        {

          goto LABEL_4;
        }

        v11 = (v11 + 1) & v15;
        v12 = v11 >> 6;
        v13 = *(v5 + 8 * (v11 >> 6));
        v14 = 1 << v11;
      }

      while (((1 << v11) & v13) != 0);
      v6 = v25;
LABEL_15:
      *(v5 + 8 * v12) = v14 | v13;
      *(*(v3 + 48) + 8 * v11) = v27;
      v22 = *(v3 + 16);
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v24;
LABEL_5:
      if (++v4 == v6)
      {
        return v3;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

Swift::Int sub_100028B78(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000CDE0(&qword_10023A7B0, &qword_1001B57F0);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v7 = *(v6 + v4);
      Hasher.init(_seed:)();
      if (v7 == 2)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        Hasher._combine(_:)(1u);
        Hasher._combine(_:)(v7 & 1);
      }

      result = Hasher._finalize()();
      v9 = ~(-1 << *(v3 + 32));
      v10 = result & v9;
      v11 = (result & v9) >> 6;
      v12 = *(v5 + 8 * v11);
      v13 = 1 << (result & v9);
      v14 = *(v3 + 48);
      if ((v13 & v12) != 0)
      {
        do
        {
          v18 = *(v14 + v10);
          if (v18 == 2)
          {
            if (v7 == 2)
            {
              goto LABEL_3;
            }
          }

          else if (v7 != 2 && ((v18 ^ v7) & 1) == 0)
          {
            goto LABEL_3;
          }

          v10 = (v10 + 1) & v9;
          v11 = v10 >> 6;
          v12 = *(v5 + 8 * (v10 >> 6));
          v13 = 1 << v10;
        }

        while ((v12 & (1 << v10)) != 0);
      }

      *(v5 + 8 * v11) = v12 | v13;
      *(v14 + v10) = v7;
      v15 = *(v3 + 16);
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        break;
      }

      *(v3 + 16) = v17;
LABEL_3:
      if (++v4 == v1)
      {
        return v3;
      }
    }

    __break(1u);
  }

  else
  {
    return &_swiftEmptySetSingleton;
  }

  return result;
}

uint64_t sub_100028CF0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100028D38()
{
  sub_10000DB58((v0 + 16));

  return _swift_deallocObject(v0, 56, 7);
}

Swift::Int sub_100028D84()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_100028DF8(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

uint64_t sub_100028E3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[463] = v5;
  v6[457] = a5;
  v6[451] = a4;
  v6[445] = a3;
  v6[439] = a2;
  v6[433] = a1;
  v7 = type metadata accessor for Calendar.Component();
  v6[469] = v7;
  v6[475] = *(v7 - 8);
  v6[481] = swift_task_alloc();
  v8 = type metadata accessor for Date();
  v6[487] = v8;
  v6[493] = *(v8 - 8);
  v6[499] = swift_task_alloc();
  v9 = type metadata accessor for Logger();
  v6[505] = v9;
  v6[511] = *(v9 - 8);
  v6[517] = swift_task_alloc();
  v6[523] = swift_task_alloc();
  v6[524] = swift_task_alloc();
  v6[525] = swift_task_alloc();
  v6[526] = swift_task_alloc();

  return _swift_task_switch(sub_100028FF8, 0, 0);
}

uint64_t sub_100028FF8()
{
  v1 = *(v0 + 3704);
  sub_10003B67C(v1, v0 + 2648);
  v2 = swift_allocObject();
  *(v0 + 4216) = v2;
  v3 = *(v0 + 2728);
  *(v2 + 80) = *(v0 + 2712);
  *(v2 + 96) = v3;
  *(v2 + 112) = *(v0 + 2744);
  v4 = *(v0 + 2664);
  *(v2 + 16) = *(v0 + 2648);
  *(v2 + 32) = v4;
  v5 = *(v0 + 2696);
  *(v2 + 48) = *(v0 + 2680);
  *(v2 + 64) = v5;
  swift_asyncLet_begin();
  sub_10003B67C(v1, v0 + 2792);
  v6 = swift_allocObject();
  *(v0 + 4224) = v6;
  v7 = *(v0 + 2872);
  *(v6 + 80) = *(v0 + 2856);
  *(v6 + 96) = v7;
  *(v6 + 112) = *(v0 + 2888);
  v8 = *(v0 + 2808);
  *(v6 + 16) = *(v0 + 2792);
  *(v6 + 32) = v8;
  v9 = *(v0 + 2840);
  *(v6 + 48) = *(v0 + 2824);
  *(v6 + 64) = v9;
  sub_10000CDE0(&unk_10023C250, &qword_1001B58B0);
  swift_asyncLet_begin();
  sub_10003B67C(v1, v0 + 2936);
  v10 = swift_allocObject();
  *(v0 + 4232) = v10;
  v11 = *(v0 + 3016);
  *(v10 + 80) = *(v0 + 3000);
  *(v10 + 96) = v11;
  *(v10 + 112) = *(v0 + 3032);
  v12 = *(v0 + 2952);
  *(v10 + 16) = *(v0 + 2936);
  *(v10 + 32) = v12;
  v13 = *(v0 + 2984);
  *(v10 + 48) = *(v0 + 2968);
  *(v10 + 64) = v13;
  swift_asyncLet_begin();

  return _swift_asyncLet_get(v0 + 16, v0 + 4343, sub_1000291F0, v0 + 2752);
}

uint64_t sub_100029218()
{
  *(v0 + 4240) = *(v0 + 3416);

  return _swift_asyncLet_get(v0 + 1296, v0 + 3368, sub_100029288, v0 + 4048);
}

uint64_t sub_1000292A4()
{
  v83 = v0;
  if (*(v0 + 4345) == 1)
  {
    v1 = *(v0 + 3368);
    v2 = *(v0 + 3512);
    v3 = *(v0 + 3464);

    v4 = static JWS.headerDictionary(fromJWS:)(v3, v2);
    *(v0 + 4248) = 0;
    v79 = v1;
    v18 = 0;
    v80 = v4;
    v19 = v4 + 64;
    v20 = -1;
    v21 = -1 << *(v4 + 32);
    if (-v21 < 64)
    {
      v20 = ~(-1 << -v21);
    }

    v22 = v20 & *(v4 + 64);
    v23 = (63 - v21) >> 6;
    if (v22)
    {
      while (1)
      {
        v24 = v18;
LABEL_17:
        v25 = __clz(__rbit64(v22));
        v22 &= v22 - 1;
        v26 = v25 | (v24 << 6);
        v27 = (*(v80 + 48) + 16 * v26);
        v29 = *v27;
        v28 = v27[1];
        sub_10002036C(*(v80 + 56) + 32 * v26, v0 + 3336);
        *(v0 + 3272) = v29;
        *(v0 + 3280) = v28;
        sub_100025CA4((v0 + 3336), (v0 + 3288));
        sub_100014B50(v0 + 3272, v0 + 3224, &qword_10023A830, &qword_1001B58C8);
        v30 = *(v0 + 3224);
        v31 = *(v0 + 3232);

        sub_100021FF4(&v82, v30, v31);

        sub_10000DAF8(v0 + 3272, &qword_10023A830, &qword_1001B58C8);
        v4 = sub_10000DB58((v0 + 3240));
        if (!v22)
        {
          goto LABEL_13;
        }
      }
    }

    while (1)
    {
LABEL_13:
      v24 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
LABEL_42:
        __break(1u);
        return _swift_asyncLet_finish(v4, v5, v6, v7);
      }

      if (v24 >= v23)
      {
        break;
      }

      v22 = *(v19 + 8 * v24);
      ++v18;
      if (v22)
      {
        v18 = v24;
        goto LABEL_17;
      }
    }

    v32 = *(v0 + 4240);

    v33 = sub_10002C05C(v32, &_swiftEmptySetSingleton);

    if (v33)
    {
      v4 = static JWS.payloadDictionary(fromJWS:)(*(v0 + 3464), *(v0 + 3512));
      *(v0 + 4256) = 0;
      v45 = 0;
      v81 = v4;
      v46 = v4 + 64;
      v47 = -1;
      v48 = -1 << *(v4 + 32);
      if (-v48 < 64)
      {
        v47 = ~(-1 << -v48);
      }

      v49 = v47 & *(v4 + 64);
      for (i = (63 - v48) >> 6; v49; v4 = sub_10000DB58((v0 + 3096)))
      {
        v51 = v45;
LABEL_32:
        v52 = __clz(__rbit64(v49));
        v49 &= v49 - 1;
        v53 = v52 | (v51 << 6);
        v54 = (*(v81 + 48) + 16 * v53);
        v56 = *v54;
        v55 = v54[1];
        sub_10002036C(*(v81 + 56) + 32 * v53, v0 + 3192);
        *(v0 + 3128) = v56;
        *(v0 + 3136) = v55;
        sub_100025CA4((v0 + 3192), (v0 + 3144));
        sub_100014B50(v0 + 3128, v0 + 3080, &qword_10023A830, &qword_1001B58C8);
        v57 = *(v0 + 3080);
        v58 = *(v0 + 3088);

        sub_100021FF4(&v82, v57, v58);

        sub_10000DAF8(v0 + 3128, &qword_10023A830, &qword_1001B58C8);
      }

      while (1)
      {
        v51 = v45 + 1;
        if (__OFADD__(v45, 1))
        {
          goto LABEL_42;
        }

        if (v51 >= i)
        {
          v59 = *(v0 + 4088);

          v60 = sub_10002C05C(v79, &_swiftEmptySetSingleton);

          v61 = Logger.impression.unsafeMutableAddressor();
          v62 = *(v59 + 16);
          v63 = *(v0 + 4040);
          if (v60)
          {
            v62(*(v0 + 4208), v61, v63);
            v64 = Logger.logObject.getter();
            v65 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v64, v65))
            {
              v66 = *(v0 + 3560);
              v67 = swift_slowAlloc();
              *v67 = 134217984;
              *(v67 + 4) = v66;
              _os_log_impl(&_mh_execute_header, v64, v65, "Validated impression for advertised app: %llu", v67, 0xCu);
            }

            v68 = *(v0 + 4208);
            v69 = *(v0 + 4088);
            v70 = *(v0 + 4040);

            (*(v69 + 8))(v68, v70);
            v6 = sub_100029A98;
            v4 = v0 + 1296;
            v5 = v0 + 3368;
            v7 = v0 + 3424;
          }

          else
          {
            v62(*(v0 + 4200), v61, v63);
            v71 = Logger.logObject.getter();
            v72 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v71, v72))
            {
              v73 = swift_slowAlloc();
              *v73 = 0;
              _os_log_impl(&_mh_execute_header, v71, v72, "Payload is not a subset of allowed header properties", v73, 2u);
            }

            v74 = *(v0 + 4200);
            v75 = *(v0 + 4088);
            v76 = *(v0 + 4040);

            (*(v75 + 8))(v74, v76);
            sub_10003AEE0();
            *(v0 + 4264) = swift_allocError();
            *v77 = 3;
            swift_willThrow();
            v6 = sub_100029C20;
            v4 = v0 + 1296;
            v5 = v0 + 3368;
            v7 = v0 + 3568;
          }

          goto LABEL_6;
        }

        v49 = *(v46 + 8 * v51);
        ++v45;
        if (v49)
        {
          v45 = v51;
          goto LABEL_32;
        }
      }
    }

    v34 = *(v0 + 4192);
    v35 = *(v0 + 4088);
    v36 = *(v0 + 4040);

    v37 = Logger.impression.unsafeMutableAddressor();
    (*(v35 + 16))(v34, v37, v36);
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&_mh_execute_header, v38, v39, "Header is not a subset of allowed header properties", v40, 2u);
    }

    v41 = *(v0 + 4192);
    v42 = *(v0 + 4088);
    v43 = *(v0 + 4040);

    (*(v42 + 8))(v41, v43);
    sub_10003AEE0();
    *(v0 + 4272) = swift_allocError();
    *v44 = 2;
    swift_willThrow();
    v6 = sub_10002A324;
    v4 = v0 + 1296;
    v5 = v0 + 3368;
    v7 = v0 + 3904;
  }

  else
  {
    v8 = *(v0 + 4184);
    v9 = *(v0 + 4088);
    v10 = *(v0 + 4040);

    v11 = Logger.impression.unsafeMutableAddressor();
    (*(v9 + 16))(v8, v11, v10);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "Strict impression decoding is disabled", v14, 2u);
    }

    v15 = *(v0 + 4184);
    v16 = *(v0 + 4088);
    v17 = *(v0 + 4040);

    (*(v16 + 8))(v15, v17);
    v6 = sub_10002AA28;
    v4 = v0 + 1296;
    v5 = v0 + 3368;
    v7 = v0 + 4000;
  }

LABEL_6:

  return _swift_asyncLet_finish(v4, v5, v6, v7);
}

uint64_t sub_100029B30()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100029CB8(uint64_t a1)
{
  v2 = *(v1 + 4264);
  *(v1 + 4280) = v2;
  v3 = *(v1 + 4136);
  v4 = *(v1 + 4088);
  v5 = *(v1 + 4040);
  v6 = Logger.impression.unsafeMutableAddressor();
  (*(v4 + 16))(v3, v6, v5);
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v11;
    *v10 = v11;
    _os_log_impl(&_mh_execute_header, v7, v8, "Encountered failure while validating impression JWS: %@", v9, 0xCu);
    sub_10000DAF8(v10, &qword_100239F10, &qword_1001B4FD0);
  }

  v12 = *(v1 + 4136);
  v56 = (v1 + 4338);
  v13 = *(v1 + 4088);
  v57 = (v1 + 4321);
  v14 = *(v1 + 4040);
  v15 = *(v1 + 3992);
  v16 = *(v1 + 3944);
  v51 = *(v1 + 3896);
  v17 = *(v1 + 3848);
  v18 = v7;
  v19 = *(v1 + 3800);
  v49 = *(v1 + 3752);
  v58 = *(v1 + 3704);
  v20 = *(v1 + 3656);
  v55 = *(v1 + 3608);

  (*(v13 + 8))(v12, v14);
  swift_errorRetain();
  v50 = sub_1000C7C10(v2);
  v53 = v22;
  v54 = v21;
  v52 = v23;

  static Date.now.getter();
  (*(v19 + 104))(v17, enum case for Calendar.Component.hour(_:), v49);
  v24 = sub_100025808(v15, v17);
  LOBYTE(v12) = v25;
  (*(v19 + 8))(v17, v49);
  (*(v16 + 8))(v15, v51);
  if (v12)
  {
    v26 = 0;
  }

  else
  {
    v26 = v24;
  }

  v27 = [objc_opt_self() buildVersion];
  v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v30 = v29;

  *(v1 + 4344) = 1;
  *(v1 + 4320) = 1;
  *(v1 + 4312) = 1;
  *(v1 + 4304) = 1;
  *(v1 + 4296) = 1;
  *(v1 + 1976) = 0;
  *(v1 + 1978) = *(v1 + 4332);
  *(v1 + 1982) = *(v1 + 4336);
  *(v1 + 1984) = v50;
  *(v1 + 1992) = v54;
  *(v1 + 2000) = v53;
  *(v1 + 2008) = v52;
  *(v1 + 2016) = v55;
  *(v1 + 2024) = v20;
  *(v1 + 2032) = v26;
  *(v1 + 2040) = v28;
  *(v1 + 2048) = v30;
  *(v1 + 2056) = 0;
  *(v1 + 2061) = 2;
  *(v1 + 2057) = 33686018;
  *(v1 + 2064) = 0;
  v31 = *(v1 + 4344);
  *(v1 + 2072) = v31;
  *(v1 + 2073) = *(v1 + 4305);
  *(v1 + 2076) = *(v1 + 4308);
  *(v1 + 2080) = 0;
  v32 = *(v1 + 4320);
  *(v1 + 2088) = v32;
  *(v1 + 2089) = 3;
  *(v1 + 2090) = *(v1 + 4326);
  *(v1 + 2094) = *(v1 + 4330);
  *(v1 + 2096) = 0;
  v33 = *(v1 + 4312);
  *(v1 + 2104) = v33;
  *(v1 + 2108) = *(v1 + 4316);
  *(v1 + 2105) = *(v1 + 4313);
  *(v1 + 2112) = 0;
  v34 = *(v1 + 4304);
  *(v1 + 2120) = v34;
  *(v1 + 2121) = 770;
  *(v1 + 2127) = *(v1 + 4342);
  *(v1 + 2123) = *v56;
  *(v1 + 2128) = 0;
  v35 = *(v1 + 4296);
  *(v1 + 2136) = v35;
  v36 = *(v1 + 4297);
  *(v1 + 2140) = *(v1 + 4300);
  *(v1 + 2137) = v36;
  *(v1 + 2144) = 0u;
  *(v1 + 2160) = 514;
  *(v1 + 2162) = 2;
  v37 = *v57;
  *(v1 + 2167) = *(v1 + 4325);
  *(v1 + 2163) = v37;
  *(v1 + 2168) = 0u;
  *(v1 + 2184) = 0u;
  *(v1 + 2424) = 0;
  v38 = *(v1 + 4332);
  *(v1 + 2430) = *(v1 + 4336);
  *(v1 + 2426) = v38;
  *(v1 + 2432) = v50;
  *(v1 + 2440) = v54;
  *(v1 + 2448) = v53;
  *(v1 + 2456) = v52;
  *(v1 + 2464) = v55;
  *(v1 + 2472) = v20;
  *(v1 + 2480) = v26;
  *(v1 + 2488) = v28;
  *(v1 + 2496) = v30;
  *(v1 + 2504) = 0;
  *(v1 + 2509) = 2;
  *(v1 + 2505) = 33686018;
  *(v1 + 2512) = 0;
  *(v1 + 2520) = v31;
  v39 = *(v1 + 4305);
  *(v1 + 2524) = *(v1 + 4308);
  *(v1 + 2521) = v39;
  *(v1 + 2528) = 0;
  *(v1 + 2536) = v32;
  *(v1 + 2537) = 3;
  v40 = *(v1 + 4326);
  *(v1 + 2542) = *(v1 + 4330);
  *(v1 + 2538) = v40;
  *(v1 + 2544) = 0;
  *(v1 + 2552) = v33;
  v41 = *(v1 + 4313);
  *(v1 + 2556) = *(v1 + 4316);
  *(v1 + 2553) = v41;
  *(v1 + 2560) = 0;
  *(v1 + 2568) = v34;
  *(v1 + 2569) = 770;
  v42 = *v56;
  *(v1 + 2575) = *(v1 + 4342);
  *(v1 + 2571) = v42;
  *(v1 + 2576) = 0;
  *(v1 + 2584) = v35;
  v43 = *(v1 + 4297);
  *(v1 + 2588) = *(v1 + 4300);
  *(v1 + 2585) = v43;
  *(v1 + 2592) = 0u;
  *(v1 + 2608) = 514;
  *(v1 + 2610) = 2;
  v44 = *v57;
  *(v1 + 2615) = *(v1 + 4325);
  *(v1 + 2611) = v44;
  *(v1 + 2616) = 0u;
  *(v1 + 2632) = 0u;
  sub_100010568(v1 + 1976, v1 + 2200);
  sub_10003AE8C(v1 + 2424);
  sub_10000DA7C((v58 + 24), *(v58 + 48));
  v45 = type metadata accessor for SnoutManager(0);
  v46 = swift_task_alloc();
  *(v1 + 4288) = v46;
  *v46 = v1;
  v46[1] = sub_10002AAC0;
  v47 = *(v1 + 3560);

  return (sub_10016E27C)(v1 + 1976, v47, 0, 0, v45, &off_100223858);
}

uint64_t sub_10002A3BC(uint64_t a1)
{
  v2 = *(v1 + 4272);
  *(v1 + 4280) = v2;
  v3 = *(v1 + 4136);
  v4 = *(v1 + 4088);
  v5 = *(v1 + 4040);
  v6 = Logger.impression.unsafeMutableAddressor();
  (*(v4 + 16))(v3, v6, v5);
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v11;
    *v10 = v11;
    _os_log_impl(&_mh_execute_header, v7, v8, "Encountered failure while validating impression JWS: %@", v9, 0xCu);
    sub_10000DAF8(v10, &qword_100239F10, &qword_1001B4FD0);
  }

  v12 = *(v1 + 4136);
  v56 = (v1 + 4338);
  v13 = *(v1 + 4088);
  v57 = (v1 + 4321);
  v14 = *(v1 + 4040);
  v15 = *(v1 + 3992);
  v16 = *(v1 + 3944);
  v51 = *(v1 + 3896);
  v17 = *(v1 + 3848);
  v18 = v7;
  v19 = *(v1 + 3800);
  v49 = *(v1 + 3752);
  v58 = *(v1 + 3704);
  v20 = *(v1 + 3656);
  v55 = *(v1 + 3608);

  (*(v13 + 8))(v12, v14);
  swift_errorRetain();
  v50 = sub_1000C7C10(v2);
  v53 = v22;
  v54 = v21;
  v52 = v23;

  static Date.now.getter();
  (*(v19 + 104))(v17, enum case for Calendar.Component.hour(_:), v49);
  v24 = sub_100025808(v15, v17);
  LOBYTE(v12) = v25;
  (*(v19 + 8))(v17, v49);
  (*(v16 + 8))(v15, v51);
  if (v12)
  {
    v26 = 0;
  }

  else
  {
    v26 = v24;
  }

  v27 = [objc_opt_self() buildVersion];
  v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v30 = v29;

  *(v1 + 4344) = 1;
  *(v1 + 4320) = 1;
  *(v1 + 4312) = 1;
  *(v1 + 4304) = 1;
  *(v1 + 4296) = 1;
  *(v1 + 1976) = 0;
  *(v1 + 1978) = *(v1 + 4332);
  *(v1 + 1982) = *(v1 + 4336);
  *(v1 + 1984) = v50;
  *(v1 + 1992) = v54;
  *(v1 + 2000) = v53;
  *(v1 + 2008) = v52;
  *(v1 + 2016) = v55;
  *(v1 + 2024) = v20;
  *(v1 + 2032) = v26;
  *(v1 + 2040) = v28;
  *(v1 + 2048) = v30;
  *(v1 + 2056) = 0;
  *(v1 + 2061) = 2;
  *(v1 + 2057) = 33686018;
  *(v1 + 2064) = 0;
  v31 = *(v1 + 4344);
  *(v1 + 2072) = v31;
  *(v1 + 2073) = *(v1 + 4305);
  *(v1 + 2076) = *(v1 + 4308);
  *(v1 + 2080) = 0;
  v32 = *(v1 + 4320);
  *(v1 + 2088) = v32;
  *(v1 + 2089) = 3;
  *(v1 + 2090) = *(v1 + 4326);
  *(v1 + 2094) = *(v1 + 4330);
  *(v1 + 2096) = 0;
  v33 = *(v1 + 4312);
  *(v1 + 2104) = v33;
  *(v1 + 2108) = *(v1 + 4316);
  *(v1 + 2105) = *(v1 + 4313);
  *(v1 + 2112) = 0;
  v34 = *(v1 + 4304);
  *(v1 + 2120) = v34;
  *(v1 + 2121) = 770;
  *(v1 + 2127) = *(v1 + 4342);
  *(v1 + 2123) = *v56;
  *(v1 + 2128) = 0;
  v35 = *(v1 + 4296);
  *(v1 + 2136) = v35;
  v36 = *(v1 + 4297);
  *(v1 + 2140) = *(v1 + 4300);
  *(v1 + 2137) = v36;
  *(v1 + 2144) = 0u;
  *(v1 + 2160) = 514;
  *(v1 + 2162) = 2;
  v37 = *v57;
  *(v1 + 2167) = *(v1 + 4325);
  *(v1 + 2163) = v37;
  *(v1 + 2168) = 0u;
  *(v1 + 2184) = 0u;
  *(v1 + 2424) = 0;
  v38 = *(v1 + 4332);
  *(v1 + 2430) = *(v1 + 4336);
  *(v1 + 2426) = v38;
  *(v1 + 2432) = v50;
  *(v1 + 2440) = v54;
  *(v1 + 2448) = v53;
  *(v1 + 2456) = v52;
  *(v1 + 2464) = v55;
  *(v1 + 2472) = v20;
  *(v1 + 2480) = v26;
  *(v1 + 2488) = v28;
  *(v1 + 2496) = v30;
  *(v1 + 2504) = 0;
  *(v1 + 2509) = 2;
  *(v1 + 2505) = 33686018;
  *(v1 + 2512) = 0;
  *(v1 + 2520) = v31;
  v39 = *(v1 + 4305);
  *(v1 + 2524) = *(v1 + 4308);
  *(v1 + 2521) = v39;
  *(v1 + 2528) = 0;
  *(v1 + 2536) = v32;
  *(v1 + 2537) = 3;
  v40 = *(v1 + 4326);
  *(v1 + 2542) = *(v1 + 4330);
  *(v1 + 2538) = v40;
  *(v1 + 2544) = 0;
  *(v1 + 2552) = v33;
  v41 = *(v1 + 4313);
  *(v1 + 2556) = *(v1 + 4316);
  *(v1 + 2553) = v41;
  *(v1 + 2560) = 0;
  *(v1 + 2568) = v34;
  *(v1 + 2569) = 770;
  v42 = *v56;
  *(v1 + 2575) = *(v1 + 4342);
  *(v1 + 2571) = v42;
  *(v1 + 2576) = 0;
  *(v1 + 2584) = v35;
  v43 = *(v1 + 4297);
  *(v1 + 2588) = *(v1 + 4300);
  *(v1 + 2585) = v43;
  *(v1 + 2592) = 0u;
  *(v1 + 2608) = 514;
  *(v1 + 2610) = 2;
  v44 = *v57;
  *(v1 + 2615) = *(v1 + 4325);
  *(v1 + 2611) = v44;
  *(v1 + 2616) = 0u;
  *(v1 + 2632) = 0u;
  sub_100010568(v1 + 1976, v1 + 2200);
  sub_10003AE8C(v1 + 2424);
  sub_10000DA7C((v58 + 24), *(v58 + 48));
  v45 = type metadata accessor for SnoutManager(0);
  v46 = swift_task_alloc();
  *(v1 + 4288) = v46;
  *v46 = v1;
  v46[1] = sub_10002AAC0;
  v47 = *(v1 + 3560);

  return (sub_10016E27C)(v1 + 1976, v47, 0, 0, v45, &off_100223858);
}

uint64_t sub_10002AAC0()
{
  v1 = *v0;

  sub_10003AE8C(v1 + 1976);

  return _swift_task_switch(sub_10002ABC4, 0, 0);
}

uint64_t sub_10002ABC4(uint64_t a1)
{
  swift_willThrow();

  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_10002AD5C(uint64_t a1)
{
  v2 = *(v1 + 4248);
  *(v1 + 4280) = v2;
  v3 = *(v1 + 4136);
  v4 = *(v1 + 4088);
  v5 = *(v1 + 4040);
  v6 = Logger.impression.unsafeMutableAddressor();
  (*(v4 + 16))(v3, v6, v5);
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v11;
    *v10 = v11;
    _os_log_impl(&_mh_execute_header, v7, v8, "Encountered failure while validating impression JWS: %@", v9, 0xCu);
    sub_10000DAF8(v10, &qword_100239F10, &qword_1001B4FD0);
  }

  v12 = *(v1 + 4136);
  v56 = (v1 + 4338);
  v13 = *(v1 + 4088);
  v57 = (v1 + 4321);
  v14 = *(v1 + 4040);
  v15 = *(v1 + 3992);
  v16 = *(v1 + 3944);
  v51 = *(v1 + 3896);
  v17 = *(v1 + 3848);
  v18 = v7;
  v19 = *(v1 + 3800);
  v49 = *(v1 + 3752);
  v58 = *(v1 + 3704);
  v20 = *(v1 + 3656);
  v55 = *(v1 + 3608);

  (*(v13 + 8))(v12, v14);
  swift_errorRetain();
  v50 = sub_1000C7C10(v2);
  v53 = v22;
  v54 = v21;
  v52 = v23;

  static Date.now.getter();
  (*(v19 + 104))(v17, enum case for Calendar.Component.hour(_:), v49);
  v24 = sub_100025808(v15, v17);
  LOBYTE(v12) = v25;
  (*(v19 + 8))(v17, v49);
  (*(v16 + 8))(v15, v51);
  if (v12)
  {
    v26 = 0;
  }

  else
  {
    v26 = v24;
  }

  v27 = [objc_opt_self() buildVersion];
  v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v30 = v29;

  *(v1 + 4344) = 1;
  *(v1 + 4320) = 1;
  *(v1 + 4312) = 1;
  *(v1 + 4304) = 1;
  *(v1 + 4296) = 1;
  *(v1 + 1976) = 0;
  *(v1 + 1978) = *(v1 + 4332);
  *(v1 + 1982) = *(v1 + 4336);
  *(v1 + 1984) = v50;
  *(v1 + 1992) = v54;
  *(v1 + 2000) = v53;
  *(v1 + 2008) = v52;
  *(v1 + 2016) = v55;
  *(v1 + 2024) = v20;
  *(v1 + 2032) = v26;
  *(v1 + 2040) = v28;
  *(v1 + 2048) = v30;
  *(v1 + 2056) = 0;
  *(v1 + 2061) = 2;
  *(v1 + 2057) = 33686018;
  *(v1 + 2064) = 0;
  v31 = *(v1 + 4344);
  *(v1 + 2072) = v31;
  *(v1 + 2073) = *(v1 + 4305);
  *(v1 + 2076) = *(v1 + 4308);
  *(v1 + 2080) = 0;
  v32 = *(v1 + 4320);
  *(v1 + 2088) = v32;
  *(v1 + 2089) = 3;
  *(v1 + 2090) = *(v1 + 4326);
  *(v1 + 2094) = *(v1 + 4330);
  *(v1 + 2096) = 0;
  v33 = *(v1 + 4312);
  *(v1 + 2104) = v33;
  *(v1 + 2108) = *(v1 + 4316);
  *(v1 + 2105) = *(v1 + 4313);
  *(v1 + 2112) = 0;
  v34 = *(v1 + 4304);
  *(v1 + 2120) = v34;
  *(v1 + 2121) = 770;
  *(v1 + 2127) = *(v1 + 4342);
  *(v1 + 2123) = *v56;
  *(v1 + 2128) = 0;
  v35 = *(v1 + 4296);
  *(v1 + 2136) = v35;
  v36 = *(v1 + 4297);
  *(v1 + 2140) = *(v1 + 4300);
  *(v1 + 2137) = v36;
  *(v1 + 2144) = 0u;
  *(v1 + 2160) = 514;
  *(v1 + 2162) = 2;
  v37 = *v57;
  *(v1 + 2167) = *(v1 + 4325);
  *(v1 + 2163) = v37;
  *(v1 + 2168) = 0u;
  *(v1 + 2184) = 0u;
  *(v1 + 2424) = 0;
  v38 = *(v1 + 4332);
  *(v1 + 2430) = *(v1 + 4336);
  *(v1 + 2426) = v38;
  *(v1 + 2432) = v50;
  *(v1 + 2440) = v54;
  *(v1 + 2448) = v53;
  *(v1 + 2456) = v52;
  *(v1 + 2464) = v55;
  *(v1 + 2472) = v20;
  *(v1 + 2480) = v26;
  *(v1 + 2488) = v28;
  *(v1 + 2496) = v30;
  *(v1 + 2504) = 0;
  *(v1 + 2509) = 2;
  *(v1 + 2505) = 33686018;
  *(v1 + 2512) = 0;
  *(v1 + 2520) = v31;
  v39 = *(v1 + 4305);
  *(v1 + 2524) = *(v1 + 4308);
  *(v1 + 2521) = v39;
  *(v1 + 2528) = 0;
  *(v1 + 2536) = v32;
  *(v1 + 2537) = 3;
  v40 = *(v1 + 4326);
  *(v1 + 2542) = *(v1 + 4330);
  *(v1 + 2538) = v40;
  *(v1 + 2544) = 0;
  *(v1 + 2552) = v33;
  v41 = *(v1 + 4313);
  *(v1 + 2556) = *(v1 + 4316);
  *(v1 + 2553) = v41;
  *(v1 + 2560) = 0;
  *(v1 + 2568) = v34;
  *(v1 + 2569) = 770;
  v42 = *v56;
  *(v1 + 2575) = *(v1 + 4342);
  *(v1 + 2571) = v42;
  *(v1 + 2576) = 0;
  *(v1 + 2584) = v35;
  v43 = *(v1 + 4297);
  *(v1 + 2588) = *(v1 + 4300);
  *(v1 + 2585) = v43;
  *(v1 + 2592) = 0u;
  *(v1 + 2608) = 514;
  *(v1 + 2610) = 2;
  v44 = *v57;
  *(v1 + 2615) = *(v1 + 4325);
  *(v1 + 2611) = v44;
  *(v1 + 2616) = 0u;
  *(v1 + 2632) = 0u;
  sub_100010568(v1 + 1976, v1 + 2200);
  sub_10003AE8C(v1 + 2424);
  sub_10000DA7C((v58 + 24), *(v58 + 48));
  v45 = type metadata accessor for SnoutManager(0);
  v46 = swift_task_alloc();
  *(v1 + 4288) = v46;
  *v46 = v1;
  v46[1] = sub_10002AAC0;
  v47 = *(v1 + 3560);

  return (sub_10016E27C)(v1 + 1976, v47, 0, 0, v45, &off_100223858);
}

uint64_t sub_10002B460(uint64_t a1)
{
  v2 = *(v1 + 4256);
  *(v1 + 4280) = v2;
  v3 = *(v1 + 4136);
  v4 = *(v1 + 4088);
  v5 = *(v1 + 4040);
  v6 = Logger.impression.unsafeMutableAddressor();
  (*(v4 + 16))(v3, v6, v5);
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v11;
    *v10 = v11;
    _os_log_impl(&_mh_execute_header, v7, v8, "Encountered failure while validating impression JWS: %@", v9, 0xCu);
    sub_10000DAF8(v10, &qword_100239F10, &qword_1001B4FD0);
  }

  v12 = *(v1 + 4136);
  v56 = (v1 + 4338);
  v13 = *(v1 + 4088);
  v57 = (v1 + 4321);
  v14 = *(v1 + 4040);
  v15 = *(v1 + 3992);
  v16 = *(v1 + 3944);
  v51 = *(v1 + 3896);
  v17 = *(v1 + 3848);
  v18 = v7;
  v19 = *(v1 + 3800);
  v49 = *(v1 + 3752);
  v58 = *(v1 + 3704);
  v20 = *(v1 + 3656);
  v55 = *(v1 + 3608);

  (*(v13 + 8))(v12, v14);
  swift_errorRetain();
  v50 = sub_1000C7C10(v2);
  v53 = v22;
  v54 = v21;
  v52 = v23;

  static Date.now.getter();
  (*(v19 + 104))(v17, enum case for Calendar.Component.hour(_:), v49);
  v24 = sub_100025808(v15, v17);
  LOBYTE(v12) = v25;
  (*(v19 + 8))(v17, v49);
  (*(v16 + 8))(v15, v51);
  if (v12)
  {
    v26 = 0;
  }

  else
  {
    v26 = v24;
  }

  v27 = [objc_opt_self() buildVersion];
  v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v30 = v29;

  *(v1 + 4344) = 1;
  *(v1 + 4320) = 1;
  *(v1 + 4312) = 1;
  *(v1 + 4304) = 1;
  *(v1 + 4296) = 1;
  *(v1 + 1976) = 0;
  *(v1 + 1978) = *(v1 + 4332);
  *(v1 + 1982) = *(v1 + 4336);
  *(v1 + 1984) = v50;
  *(v1 + 1992) = v54;
  *(v1 + 2000) = v53;
  *(v1 + 2008) = v52;
  *(v1 + 2016) = v55;
  *(v1 + 2024) = v20;
  *(v1 + 2032) = v26;
  *(v1 + 2040) = v28;
  *(v1 + 2048) = v30;
  *(v1 + 2056) = 0;
  *(v1 + 2061) = 2;
  *(v1 + 2057) = 33686018;
  *(v1 + 2064) = 0;
  v31 = *(v1 + 4344);
  *(v1 + 2072) = v31;
  *(v1 + 2073) = *(v1 + 4305);
  *(v1 + 2076) = *(v1 + 4308);
  *(v1 + 2080) = 0;
  v32 = *(v1 + 4320);
  *(v1 + 2088) = v32;
  *(v1 + 2089) = 3;
  *(v1 + 2090) = *(v1 + 4326);
  *(v1 + 2094) = *(v1 + 4330);
  *(v1 + 2096) = 0;
  v33 = *(v1 + 4312);
  *(v1 + 2104) = v33;
  *(v1 + 2108) = *(v1 + 4316);
  *(v1 + 2105) = *(v1 + 4313);
  *(v1 + 2112) = 0;
  v34 = *(v1 + 4304);
  *(v1 + 2120) = v34;
  *(v1 + 2121) = 770;
  *(v1 + 2127) = *(v1 + 4342);
  *(v1 + 2123) = *v56;
  *(v1 + 2128) = 0;
  v35 = *(v1 + 4296);
  *(v1 + 2136) = v35;
  v36 = *(v1 + 4297);
  *(v1 + 2140) = *(v1 + 4300);
  *(v1 + 2137) = v36;
  *(v1 + 2144) = 0u;
  *(v1 + 2160) = 514;
  *(v1 + 2162) = 2;
  v37 = *v57;
  *(v1 + 2167) = *(v1 + 4325);
  *(v1 + 2163) = v37;
  *(v1 + 2168) = 0u;
  *(v1 + 2184) = 0u;
  *(v1 + 2424) = 0;
  v38 = *(v1 + 4332);
  *(v1 + 2430) = *(v1 + 4336);
  *(v1 + 2426) = v38;
  *(v1 + 2432) = v50;
  *(v1 + 2440) = v54;
  *(v1 + 2448) = v53;
  *(v1 + 2456) = v52;
  *(v1 + 2464) = v55;
  *(v1 + 2472) = v20;
  *(v1 + 2480) = v26;
  *(v1 + 2488) = v28;
  *(v1 + 2496) = v30;
  *(v1 + 2504) = 0;
  *(v1 + 2509) = 2;
  *(v1 + 2505) = 33686018;
  *(v1 + 2512) = 0;
  *(v1 + 2520) = v31;
  v39 = *(v1 + 4305);
  *(v1 + 2524) = *(v1 + 4308);
  *(v1 + 2521) = v39;
  *(v1 + 2528) = 0;
  *(v1 + 2536) = v32;
  *(v1 + 2537) = 3;
  v40 = *(v1 + 4326);
  *(v1 + 2542) = *(v1 + 4330);
  *(v1 + 2538) = v40;
  *(v1 + 2544) = 0;
  *(v1 + 2552) = v33;
  v41 = *(v1 + 4313);
  *(v1 + 2556) = *(v1 + 4316);
  *(v1 + 2553) = v41;
  *(v1 + 2560) = 0;
  *(v1 + 2568) = v34;
  *(v1 + 2569) = 770;
  v42 = *v56;
  *(v1 + 2575) = *(v1 + 4342);
  *(v1 + 2571) = v42;
  *(v1 + 2576) = 0;
  *(v1 + 2584) = v35;
  v43 = *(v1 + 4297);
  *(v1 + 2588) = *(v1 + 4300);
  *(v1 + 2585) = v43;
  *(v1 + 2592) = 0u;
  *(v1 + 2608) = 514;
  *(v1 + 2610) = 2;
  v44 = *v57;
  *(v1 + 2615) = *(v1 + 4325);
  *(v1 + 2611) = v44;
  *(v1 + 2616) = 0u;
  *(v1 + 2632) = 0u;
  sub_100010568(v1 + 1976, v1 + 2200);
  sub_10003AE8C(v1 + 2424);
  sub_10000DA7C((v58 + 24), *(v58 + 48));
  v45 = type metadata accessor for SnoutManager(0);
  v46 = swift_task_alloc();
  *(v1 + 4288) = v46;
  *v46 = v1;
  v46[1] = sub_10002AAC0;
  v47 = *(v1 + 3560);

  return (sub_10016E27C)(v1 + 1976, v47, 0, 0, v45, &off_100223858);
}

uint64_t sub_10002BACC(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_10002BB74;

  return sub_100158B54(4);
}

uint64_t sub_10002BB74(char a1)
{
  *(*v1 + 32) = a1;

  return _swift_task_switch(sub_10002BC74, 0, 0);
}

uint64_t sub_10002BC74()
{
  v1 = *(v0 + 32);
  if (v1 == 2)
  {
    v2 = 1;
  }

  else
  {
    v2 = v1 & 1;
  }

  **(v0 + 16) = v2;
  return (*(v0 + 8))();
}

uint64_t sub_10002BCA4(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_10002BD4C;

  return sub_10007B174(5);
}

uint64_t sub_10002BD4C(uint64_t a1)
{
  *(*v1 + 32) = a1;

  return _swift_task_switch(sub_10002BE4C, 0, 0);
}

uint64_t sub_10002BE4C()
{
  v1 = *(v0 + 32);
  if (!v1)
  {
    v1 = &off_100213CC0;
  }

  **(v0 + 16) = v1;
  return (*(v0 + 8))();
}

uint64_t sub_10002BE80(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_10002BF28;

  return sub_10007B174(6);
}

uint64_t sub_10002BF28(uint64_t a1)
{
  *(*v1 + 32) = a1;

  return _swift_task_switch(sub_10002C028, 0, 0);
}

uint64_t sub_10002C028()
{
  v1 = *(v0 + 32);
  if (!v1)
  {
    v1 = &off_100213D00;
  }

  **(v0 + 16) = v1;
  return (*(v0 + 8))();
}

uint64_t sub_10002C05C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 == 1)
  {
    result = sub_10003AC90(a2);
    v8[0] = result;
    v8[1] = v6;
    if (v6)
    {
      __chkstk_darwin(result);
      v7[2] = v8;
      v3 = sub_1000E1818(sub_10003B8DC, v7, a1);

      return v3 & 1;
    }

    __break(1u);
  }

  else
  {
    if (!v2)
    {
      v3 = 1;
      return v3 & 1;
    }

    return sub_10003AD0C(a1, a2);
  }

  return result;
}

uint64_t sub_10002C13C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 720) = v5;
  *(v6 + 817) = a5;
  *(v6 + 712) = a4;
  *(v6 + 704) = a3;
  *(v6 + 696) = a2;
  *(v6 + 688) = a1;
  v7 = type metadata accessor for Calendar.Component();
  *(v6 + 728) = v7;
  *(v6 + 736) = *(v7 - 8);
  *(v6 + 744) = swift_task_alloc();
  v8 = type metadata accessor for Date();
  *(v6 + 752) = v8;
  *(v6 + 760) = *(v8 - 8);
  *(v6 + 768) = swift_task_alloc();
  v9 = type metadata accessor for Logger();
  *(v6 + 776) = v9;
  *(v6 + 784) = *(v9 - 8);
  *(v6 + 792) = swift_task_alloc();

  return _swift_task_switch(sub_10002C2C8, 0, 0);
}

uint64_t sub_10002C2C8()
{
  v1 = v0[88];
  v2 = v0[87];
  v3 = v0[86];
  v4 = type metadata accessor for AppImpressionPayload(0);
  v5 = sub_10003AFB8();
  v6 = sub_10003B00C();
  v7 = sub_10003C160(&qword_10023A808, type metadata accessor for AppImpressionPayload, &protocol conformance descriptor for AppImpressionPayload);
  v8 = sub_10003C160(&qword_10023A810, type metadata accessor for AppImpressionPayload, &protocol conformance descriptor for AppImpressionPayload);

  JWS.init(compactJWS:)(v2, v1, v4, v5, v6, v7, v8, v3);
  v0[100] = 0;

  v9 = v0[1];

  return v9();
}

uint64_t sub_10002C8E0()
{
  v1 = *v0;

  sub_10003AE8C(v1 + 16);

  return _swift_task_switch(sub_10002C9E4, 0, 0);
}

uint64_t sub_10002C9E4(uint64_t a1)
{
  swift_willThrow();

  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_10002CA7C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5)
{
  *(v6 + 1576) = v5;
  *(v6 + 2075) = a5;
  *(v6 + 2074) = a4;
  *(v6 + 1568) = a3;
  *(v6 + 1560) = a2;
  *(v6 + 1552) = a1;
  sub_10000CDE0(&qword_10023A7C8, &qword_1001C17F0);
  *(v6 + 1584) = swift_task_alloc();
  *(v6 + 1592) = swift_task_alloc();
  *(v6 + 1600) = swift_task_alloc();
  *(v6 + 1608) = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  *(v6 + 1616) = v7;
  *(v6 + 1624) = *(v7 - 8);
  *(v6 + 1632) = swift_task_alloc();
  *(v6 + 1640) = swift_task_alloc();
  *(v6 + 1648) = swift_task_alloc();
  *(v6 + 1656) = swift_task_alloc();
  *(v6 + 1664) = swift_task_alloc();
  *(v6 + 1672) = swift_task_alloc();
  *(v6 + 1680) = sub_10000CDE0(&qword_10023A7D0, &unk_1001B5840);
  *(v6 + 1688) = swift_task_alloc();
  v8 = type metadata accessor for ImpressionModel(0);
  *(v6 + 1696) = v8;
  v9 = *(v8 - 8);
  *(v6 + 1704) = v9;
  *(v6 + 1712) = *(v9 + 64);
  *(v6 + 1720) = swift_task_alloc();
  *(v6 + 1728) = swift_task_alloc();
  *(v6 + 1736) = swift_task_alloc();
  *(v6 + 1744) = swift_task_alloc();
  v10 = type metadata accessor for Calendar.Component();
  *(v6 + 1752) = v10;
  *(v6 + 1760) = *(v10 - 8);
  *(v6 + 1768) = swift_task_alloc();
  v11 = type metadata accessor for Date();
  *(v6 + 1776) = v11;
  *(v6 + 1784) = *(v11 - 8);
  *(v6 + 1792) = swift_task_alloc();
  *(v6 + 1800) = swift_task_alloc();

  return _swift_task_switch(sub_10002CD70, 0, 0);
}

uint64_t sub_10002CD70()
{
  v1 = *(v0 + 1800);
  v2 = *(v0 + 1784);
  v86 = *(v0 + 1792);
  v87 = *(v0 + 1776);
  v3 = *(v0 + 1768);
  v4 = *(v0 + 1760);
  v5 = *(v0 + 1752);
  v85 = *(v0 + 1568);
  v84 = *(v0 + 1552);
  v81 = *(v0 + 1680);
  v82 = v85 + *(v81 + 68);
  v83 = type metadata accessor for AppImpressionPayload(0);
  v6 = &v82[v83[10]];
  v7 = v6[1];
  v89 = *v6;
  v8 = v82[v83[11]];

  static Date.now.getter();
  (*(v4 + 104))(v3, enum case for Calendar.Component.hour(_:), v5);
  v9 = sub_100025808(v1, v3);
  v11 = v10;
  (*(v4 + 8))(v3, v5);
  v12 = *(v2 + 8);
  *(v0 + 1808) = v12;
  *(v0 + 1816) = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v13 = v87;
  v88 = v12;
  v12(v1, v13);
  if (v11)
  {
    v9 = 0;
  }

  v14 = [objc_opt_self() buildVersion];
  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;

  *(v0 + 2072) = 1;
  *(v0 + 2080) = 1;
  *(v0 + 2088) = 1;
  *(v0 + 2096) = 1;
  *(v0 + 2104) = 1;
  *(v0 + 688) = 0;
  *(v0 + 696) = 0u;
  *(v0 + 712) = 0u;
  *(v0 + 728) = v89;
  *(v0 + 736) = v7;
  *(v0 + 744) = v9;
  *(v0 + 752) = v15;
  *(v0 + 760) = v17;
  *(v0 + 768) = 512;
  *(v0 + 770) = v8;
  *(v0 + 771) = 512;
  *(v0 + 773) = 2;
  *(v0 + 776) = 0;
  *(v0 + 784) = 1;
  *(v0 + 792) = 0;
  v18 = *(v0 + 2080);
  *(v0 + 800) = v18;
  *(v0 + 801) = 3;
  *(v0 + 808) = 0;
  v19 = *(v0 + 2088);
  *(v0 + 816) = v19;
  *(v0 + 824) = 0;
  v20 = *(v0 + 2096);
  *(v0 + 832) = v20;
  *(v0 + 833) = 770;
  *(v0 + 840) = 0;
  v21 = *(v0 + 2104);
  *(v0 + 848) = v21;
  *(v0 + 856) = 0u;
  *(v0 + 872) = 514;
  *(v0 + 874) = 2;
  *(v0 + 880) = 0u;
  *(v0 + 896) = 0u;
  *(v0 + 464) = 0;
  *(v0 + 472) = 0u;
  *(v0 + 488) = 0u;
  *(v0 + 504) = v89;
  *(v0 + 512) = v7;
  *(v0 + 520) = v9;
  *(v0 + 528) = v15;
  *(v0 + 536) = v17;
  *(v0 + 544) = 512;
  *(v0 + 546) = v8;
  *(v0 + 547) = 512;
  *(v0 + 549) = 2;
  *(v0 + 552) = 0;
  *(v0 + 560) = 1;
  *(v0 + 568) = 0;
  *(v0 + 576) = v18;
  *(v0 + 577) = 3;
  *(v0 + 584) = 0;
  *(v0 + 592) = v19;
  *(v0 + 600) = 0;
  *(v0 + 608) = v20;
  *(v0 + 609) = 770;
  *(v0 + 616) = 0;
  *(v0 + 624) = v21;
  *(v0 + 632) = 0u;
  *(v0 + 648) = 514;
  *(v0 + 650) = 2;
  *(v0 + 656) = 0u;
  *(v0 + 672) = 0u;
  sub_100010568(v0 + 688, v0 + 912);
  sub_10003AE8C(v0 + 464);
  v22 = *(v0 + 704);
  *(v0 + 1824) = *(v0 + 688);
  *(v0 + 1840) = v22;
  v23 = *(v0 + 872);
  *(v0 + 1488) = *(v0 + 856);
  *(v0 + 1504) = v23;
  *(v0 + 1520) = *(v0 + 888);
  v24 = *(v0 + 808);
  *(v0 + 1424) = *(v0 + 792);
  *(v0 + 1440) = v24;
  v25 = *(v0 + 840);
  *(v0 + 1456) = *(v0 + 824);
  *(v0 + 1472) = v25;
  v26 = *(v0 + 744);
  *(v0 + 1360) = *(v0 + 728);
  *(v0 + 1376) = v26;
  v27 = *(v0 + 776);
  *(v0 + 1392) = *(v0 + 760);
  *(v0 + 1856) = *(v0 + 720);
  *(v0 + 1536) = *(v0 + 904);
  *(v0 + 1408) = v27;
  v28 = sub_100030604(v84);
  Date.init(timeIntervalSinceNow:)();
  sub_100030798(v85, v86);
  v29 = *&v82[v83[5]];
  sub_100031330(v29, v89, v7, *(v0 + 1552));
  if (v28)
  {
    v30 = [objc_opt_self() standardUserDefaults];
    v31 = sub_1000BC488(0, 9);

    if (v31 == 2)
    {
      v32 = 1;
    }

    else
    {
      v32 = v31 ^ 1;
    }
  }

  else
  {
    v32 = v29 != 0;
  }

  v90 = v32;
  v33 = *(v0 + 1800);
  v34 = *(v0 + 1776);
  v35 = *(v0 + 1744);
  v36 = *(v0 + 1696);
  v37 = *(v0 + 1688);
  v38 = *(v0 + 1680);
  sub_100014B50(*(v0 + 1568), v37, &qword_10023A7D0, &unk_1001B5840);
  *v35 = 0;
  *(v35 + 8) = 1;
  v39 = v37 + *(v81 + 68);
  v40 = v36[5];
  v41 = type metadata accessor for UUID();
  (*(*(v41 - 8) + 16))(v35 + v40, v39, v41);
  *(v35 + v36[6]) = *(v39 + v83[5]);
  *(v35 + v36[7]) = *(v39 + v83[6]);
  v42 = (v39 + v83[10]);
  v44 = *v42;
  v43 = v42[1];
  v45 = (v35 + v36[8]);
  *v45 = v44;
  v45[1] = v43;
  *(v35 + v36[9]) = *(v39 + v83[8]);
  *(v35 + v36[10]) = 0;
  v46 = (v37 + *(v38 + 76));
  v47 = *v46;
  *(v0 + 1864) = *v46;
  v48 = v46[1];
  *(v0 + 1872) = v48;
  v49 = (v35 + v36[11]);
  *v49 = v47;
  v49[1] = v48;

  static Date.now.getter();
  Date.timeIntervalSince1970.getter();
  v51 = v50;
  *(v0 + 1880) = v50;
  v88(v33, v34);
  result = sub_10000DAF8(v37, &qword_10023A7D0, &unk_1001B5840);
  v53 = v51 * 1000.0;
  if (COERCE__INT64(fabs(v51 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_22;
  }

  if (v53 <= -1.0)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v53 >= 1.84467441e19)
  {
LABEL_23:
    __break(1u);
    return result;
  }

  v54 = *(v0 + 1744);
  v55 = *(v0 + 1696);
  v56 = *(v0 + 2074);
  *(v54 + *(v55 + 48)) = v53;
  *(v54 + *(v55 + 52)) = v90 & 1;
  if (v56)
  {
    v57 = *(v0 + 1744);
    v58 = *(v0 + 1736);
    v59 = *(v0 + 1704);
    v60 = *(v0 + 1576);
    v61 = *v60;
    if (*(v0 + 2075) == 1)
    {
      v62 = v60[1];
      v63 = v60[2];
      sub_10003C208(v57, *(v0 + 1736), type metadata accessor for ImpressionModel);
      v64 = (*(v59 + 80) + 16) & ~*(v59 + 80);
      v65 = swift_allocObject();
      *(v0 + 1912) = v65;
      sub_10003C270(v58, v65 + v64, type metadata accessor for ImpressionModel);
      v66 = swift_task_alloc();
      *(v0 + 1920) = v66;
      *v66 = v0;
      v66[1] = sub_10002DC5C;
      v67 = *(v0 + 1608);
      v68 = sub_10003B334;
    }

    else
    {
      *(v0 + 1936) = v61;
      v62 = v60[1];
      *(v0 + 1944) = v62;
      v63 = v60[2];
      *(v0 + 1952) = v63;
      sub_10003C208(v57, v58, type metadata accessor for ImpressionModel);
      v78 = *(v59 + 80);
      *(v0 + 2076) = v78;
      v79 = (v78 + 16) & ~v78;
      v65 = swift_allocObject();
      *(v0 + 1960) = v65;
      sub_10003C270(v58, v65 + v79, type metadata accessor for ImpressionModel);
      v80 = swift_task_alloc();
      *(v0 + 1968) = v80;
      *v80 = v0;
      v80[1] = sub_10002E5A4;
      v67 = *(v0 + 1592);
      v68 = sub_10003B060;
    }

    return sub_100110668(v67, v68, v65, v61, v62, v63);
  }

  else
  {
    v69 = *(v0 + 1736);
    v70 = *(v0 + 1704);
    v71 = *(v0 + 1576);
    v73 = *v71;
    v72 = v71[1];
    v74 = v71[2];
    sub_10003C208(*(v0 + 1744), v69, type metadata accessor for ImpressionModel);
    v75 = (*(v70 + 80) + 16) & ~*(v70 + 80);
    v76 = swift_allocObject();
    *(v0 + 1888) = v76;
    sub_10003C270(v69, v76 + v75, type metadata accessor for ImpressionModel);
    v77 = swift_task_alloc();
    *(v0 + 1896) = v77;
    *v77 = v0;
    v77[1] = sub_10002D860;

    return sub_10010E730(sub_10010E730, sub_10003B4C0, v76, v73, v72, v74);
  }
}

uint64_t sub_10002D860()
{
  v2 = *v1;
  *(*v1 + 1904) = v0;

  if (v0)
  {

    v3 = sub_10002FAD4;
  }

  else
  {
    v4 = *(v2 + 1856);
    v11 = *(v2 + 1840);
    v12 = *(v2 + 1824);

    *(v2 + 1152) = v11;
    *(v2 + 1136) = v12;
    *(v2 + 1168) = v4;
    v5 = *(v2 + 1504);
    *(v2 + 1304) = *(v2 + 1488);
    *(v2 + 1320) = v5;
    *(v2 + 1336) = *(v2 + 1520);
    *(v2 + 1352) = *(v2 + 1536);
    v6 = *(v2 + 1440);
    *(v2 + 1240) = *(v2 + 1424);
    *(v2 + 1256) = v6;
    v7 = *(v2 + 1472);
    *(v2 + 1272) = *(v2 + 1456);
    *(v2 + 1288) = v7;
    v8 = *(v2 + 1376);
    *(v2 + 1176) = *(v2 + 1360);
    *(v2 + 1192) = v8;
    v9 = *(v2 + 1408);
    *(v2 + 1208) = *(v2 + 1392);
    *(v2 + 1224) = v9;
    sub_10003AE8C(v2 + 1136);
    v3 = sub_10002DA04;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10002DA04(uint64_t a1)
{
  v2 = v1[209];
  v3 = v1[203];
  v4 = v1[202];
  v5 = Logger.impression.unsafeMutableAddressor();
  (*(v3 + 16))(v2, v5, v4);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Successfully added pending impression", v8, 2u);
  }

  v9 = v1[226];
  v10 = v1[224];
  v11 = v1[222];
  v12 = v1[218];
  v13 = v1[209];
  v14 = v1[203];
  v15 = v1[202];

  (*(v14 + 8))(v13, v15);
  v9(v10, v11);
  sub_10003C1A8(v12, type metadata accessor for ImpressionModel);

  v16 = v1[1];

  return v16();
}

uint64_t sub_10002DC5C()
{
  *(*v1 + 1928) = v0;

  if (v0)
  {
    v2 = sub_10002FD04;
  }

  else
  {
    v2 = sub_10002DD90;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10002DD90()
{
  v1 = *(v0 + 1704);
  v2 = *(v0 + 1696);
  v3 = *(v0 + 1600);
  sub_100014B50(*(v0 + 1608), v3, &qword_10023A7C8, &qword_1001C17F0);
  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    v4 = *(v0 + 1648);
    v5 = *(v0 + 1624);
    v6 = *(v0 + 1616);
    sub_10000DAF8(*(v0 + 1600), &qword_10023A7C8, &qword_1001C17F0);
    v7 = Logger.impression.unsafeMutableAddressor();
    (*(v5 + 16))(v4, v7, v6);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "No pending impression found during finalization", v10, 2u);
    }

    v11 = *(v0 + 1808);
    v12 = *(v0 + 1792);
    v13 = *(v0 + 1776);
    v14 = *(v0 + 1744);
    v15 = *(v0 + 1648);
    v16 = *(v0 + 1624);
    v17 = *(v0 + 1616);
    v18 = *(v0 + 1608);

    (*(v16 + 8))(v15, v17);
    v19 = v14;
    sub_10003AEE0();
    v20 = swift_allocError();
    *v21 = 10;
    swift_willThrow();
    sub_10000DAF8(v18, &qword_10023A7C8, &qword_1001C17F0);
    v11(v12, v13);
  }

  else
  {
    v22 = *(v0 + 1872);
    v23 = *(v0 + 1864);
    v24 = *(v0 + 1728);
    v25 = *(v0 + 1696);
    sub_10003C270(*(v0 + 1600), v24, type metadata accessor for ImpressionModel);
    v26 = (v24 + *(v25 + 44));
    result = *v26;
    v28 = *v26 == v23 && v26[1] == v22;
    if (v28 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
    {
      v29 = *(v0 + 1728);
      v30 = *(v0 + 1880) * 1000.0;
      v31 = *(v29 + *(*(v0 + 1696) + 48));
      v32 = v30 >= v31;
      v33 = v30 - v31;
      if (!v32)
      {
        __break(1u);
        return result;
      }

      if (v33 >= 0x7D1)
      {
        sub_10000DAF8(*(v0 + 1608), &qword_10023A7C8, &qword_1001C17F0);
        sub_10003C1A8(v29, type metadata accessor for ImpressionModel);
        v34 = *(v0 + 1744);
        v35 = *(v0 + 1736);
        v36 = *(v0 + 1704);
        v37 = *(v0 + 1576);
        v38 = *v37;
        *(v0 + 1936) = *v37;
        v39 = v37[1];
        *(v0 + 1944) = v39;
        v40 = v37[2];
        *(v0 + 1952) = v40;
        sub_10003C208(v34, v35, type metadata accessor for ImpressionModel);
        v41 = *(v36 + 80);
        *(v0 + 2076) = v41;
        v42 = (v41 + 16) & ~v41;
        v43 = swift_allocObject();
        *(v0 + 1960) = v43;
        sub_10003C270(v35, v43 + v42, type metadata accessor for ImpressionModel);
        v44 = swift_task_alloc();
        *(v0 + 1968) = v44;
        *v44 = v0;
        v44[1] = sub_10002E5A4;
        v45 = *(v0 + 1592);
        v46 = sub_10003B060;
        v47 = v43;
        v48 = v38;
        v49 = v39;
        v50 = v40;
        v51 = sub_100110668;

        return v51(v45, v46, v47, v48, v49, v50);
      }

      v52 = *(v0 + 1664);
      v53 = *(v0 + 1624);
      v54 = *(v0 + 1616);
      v55 = Logger.impression.unsafeMutableAddressor();
      (*(v53 + 16))(v52, v55, v54);
      v56 = Logger.logObject.getter();
      v57 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        *v58 = 0;
        _os_log_impl(&_mh_execute_header, v56, v57, "Impression ended too soon", v58, 2u);
      }

      v59 = *(v0 + 1808);
      v60 = *(v0 + 1792);
      v61 = *(v0 + 1776);
      v19 = *(v0 + 1744);
      v94 = *(v0 + 1728);
      v62 = *(v0 + 1664);
      v63 = *(v0 + 1624);
      v64 = *(v0 + 1616);
      v65 = *(v0 + 1608);

      (*(v63 + 8))(v62, v64);
      sub_10003AEE0();
      v20 = swift_allocError();
      v67 = 12;
    }

    else
    {
      v68 = *(v0 + 1656);
      v69 = *(v0 + 1624);
      v70 = *(v0 + 1616);
      v71 = Logger.impression.unsafeMutableAddressor();
      (*(v69 + 16))(v68, v71, v70);
      v72 = Logger.logObject.getter();
      v73 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v72, v73))
      {
        v74 = swift_slowAlloc();
        *v74 = 0;
        _os_log_impl(&_mh_execute_header, v72, v73, "Intake JWS doesn't match pending JWS", v74, 2u);
      }

      v59 = *(v0 + 1808);
      v60 = *(v0 + 1792);
      v61 = *(v0 + 1776);
      v19 = *(v0 + 1744);
      v94 = *(v0 + 1728);
      v75 = *(v0 + 1656);
      v76 = *(v0 + 1624);
      v77 = *(v0 + 1616);
      v65 = *(v0 + 1608);

      (*(v76 + 8))(v75, v77);
      sub_10003AEE0();
      v20 = swift_allocError();
      v67 = 11;
    }

    *v66 = v67;
    swift_willThrow();
    sub_10000DAF8(v65, &qword_10023A7C8, &qword_1001C17F0);
    v59(v60, v61);
    sub_10003C1A8(v94, type metadata accessor for ImpressionModel);
  }

  sub_10003C1A8(v19, type metadata accessor for ImpressionModel);
  *(v0 + 2056) = v20;
  v78 = *(v0 + 1824);
  v79 = *(v0 + 1576);
  v80 = sub_1000C7C10(v20);
  v82 = v81;
  v84 = v83;
  v86 = v85;

  sub_10000DA7C((v79 + 24), *(v79 + 48));
  *(v0 + 240) = v78;
  *(v0 + 248) = v80;
  *(v0 + 256) = v82;
  *(v0 + 264) = v84;
  *(v0 + 272) = v86;
  v87 = *(v0 + 1504);
  *(v0 + 408) = *(v0 + 1488);
  *(v0 + 424) = v87;
  *(v0 + 440) = *(v0 + 1520);
  *(v0 + 456) = *(v0 + 1536);
  v88 = *(v0 + 1440);
  *(v0 + 344) = *(v0 + 1424);
  *(v0 + 360) = v88;
  v89 = *(v0 + 1472);
  *(v0 + 376) = *(v0 + 1456);
  *(v0 + 392) = v89;
  v90 = *(v0 + 1376);
  *(v0 + 280) = *(v0 + 1360);
  *(v0 + 296) = v90;
  v91 = *(v0 + 1408);
  *(v0 + 312) = *(v0 + 1392);
  *(v0 + 328) = v91;
  v92 = type metadata accessor for SnoutManager(0);
  v93 = swift_task_alloc();
  *(v0 + 2064) = v93;
  *v93 = v0;
  v93[1] = sub_10002F6DC;
  v46 = *(v0 + 1560);
  v45 = v0 + 240;
  v47 = 0;
  v48 = 0;
  v49 = v92;
  v50 = &off_100223858;
  v51 = sub_10016E27C;

  return v51(v45, v46, v47, v48, v49, v50);
}

uint64_t sub_10002E5A4()
{
  *(*v1 + 1976) = v0;

  if (v0)
  {
    v2 = sub_10002FF34;
  }

  else
  {
    v2 = sub_10002E6D8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10002E6D8()
{
  v1 = *(v0 + 1704);
  v2 = *(v0 + 1696);
  v3 = *(v0 + 1584);
  sub_100014B50(*(v0 + 1592), v3, &qword_10023A7C8, &qword_1001C17F0);
  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    sub_10000DAF8(*(v0 + 1584), &qword_10023A7C8, &qword_1001C17F0);
LABEL_10:
    v41 = *(v0 + 1736);
    v42 = (*(v0 + 2076) + 16) & ~*(v0 + 2076);
    sub_10003C208(*(v0 + 1744), v41, type metadata accessor for ImpressionModel);
    v43 = swift_allocObject();
    *(v0 + 1984) = v43;
    sub_10003C270(v41, v43 + v42, type metadata accessor for ImpressionModel);
    v44 = swift_task_alloc();
    *(v0 + 1992) = v44;
    *v44 = v0;
    v44[1] = sub_10002EC0C;
    v45 = *(v0 + 1952);
    v46 = *(v0 + 1944);
    v47 = *(v0 + 1936);

    return sub_10010E730(sub_10010E730, sub_10003B104, v43, v47, v46, v45);
  }

  v4 = *(v0 + 1720);
  v5 = *(v0 + 1696);
  sub_10003C270(*(v0 + 1584), v4, type metadata accessor for ImpressionModel);
  if (*(v4 + *(v5 + 40)) != 1)
  {
    sub_10003C1A8(*(v0 + 1720), type metadata accessor for ImpressionModel);
    goto LABEL_10;
  }

  v6 = *(v0 + 1640);
  v7 = *(v0 + 1624);
  v8 = *(v0 + 1616);
  v9 = Logger.impression.unsafeMutableAddressor();
  (*(v7 + 16))(v6, v9, v8);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "Finalized impression with higher interaction type already exists", v12, 2u);
  }

  v48 = *(v0 + 1808);
  v13 = *(v0 + 1792);
  v14 = *(v0 + 1776);
  v15 = *(v0 + 1744);
  v16 = *(v0 + 1720);
  v17 = *(v0 + 1640);
  v18 = *(v0 + 1624);
  v19 = *(v0 + 1616);
  v20 = *(v0 + 1592);

  (*(v18 + 8))(v17, v19);
  sub_10003AEE0();
  v21 = swift_allocError();
  *v22 = 13;
  swift_willThrow();
  sub_10003C1A8(v16, type metadata accessor for ImpressionModel);
  sub_10000DAF8(v20, &qword_10023A7C8, &qword_1001C17F0);
  v48(v13, v14);
  sub_10003C1A8(v15, type metadata accessor for ImpressionModel);
  *(v0 + 2056) = v21;
  v23 = *(v0 + 1824);
  v24 = *(v0 + 1576);
  v25 = sub_1000C7C10(v21);
  v27 = v26;
  v29 = v28;
  v31 = v30;

  sub_10000DA7C((v24 + 24), *(v24 + 48));
  *(v0 + 240) = v23;
  *(v0 + 248) = v25;
  *(v0 + 256) = v27;
  *(v0 + 264) = v29;
  *(v0 + 272) = v31;
  v32 = *(v0 + 1504);
  *(v0 + 408) = *(v0 + 1488);
  *(v0 + 424) = v32;
  *(v0 + 440) = *(v0 + 1520);
  *(v0 + 456) = *(v0 + 1536);
  v33 = *(v0 + 1440);
  *(v0 + 344) = *(v0 + 1424);
  *(v0 + 360) = v33;
  v34 = *(v0 + 1472);
  *(v0 + 376) = *(v0 + 1456);
  *(v0 + 392) = v34;
  v35 = *(v0 + 1376);
  *(v0 + 280) = *(v0 + 1360);
  *(v0 + 296) = v35;
  v36 = *(v0 + 1408);
  *(v0 + 312) = *(v0 + 1392);
  *(v0 + 328) = v36;
  v37 = type metadata accessor for SnoutManager(0);
  v38 = swift_task_alloc();
  *(v0 + 2064) = v38;
  *v38 = v0;
  v38[1] = sub_10002F6DC;
  v39 = *(v0 + 1560);

  return (sub_10016E27C)(v0 + 240, v39, 0, 0, v37, &off_100223858);
}

uint64_t sub_10002EC0C()
{
  *(*v1 + 2000) = v0;

  if (v0)
  {
    v2 = sub_100030164;
  }

  else
  {
    v2 = sub_10002ED40;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10002ED40()
{
  v1 = swift_task_alloc();
  *(v0 + 2008) = v1;
  *v1 = v0;
  v1[1] = sub_10002EDE4;

  return sub_1001581F0(7);
}

uint64_t sub_10002EDE4(uint64_t a1, char a2)
{
  v3 = *v2;
  *(v3 + 2016) = a1;
  *(v3 + 2081) = a2;

  return _swift_task_switch(sub_10002EEE8, 0, 0);
}

uint64_t sub_10002EEE8()
{
  v1 = *(v0 + 1736);
  v2 = *(v0 + 1712);
  v3 = (*(v0 + 2076) + 16) & ~*(v0 + 2076);
  if (*(v0 + 2081))
  {
    v4 = 15;
  }

  else
  {
    v4 = *(v0 + 2016);
  }

  sub_10003C208(*(v0 + 1744), *(v0 + 1736), type metadata accessor for ImpressionModel);
  v5 = swift_allocObject();
  *(v0 + 2024) = v5;
  sub_10003C270(v1, v5 + v3, type metadata accessor for ImpressionModel);
  *(v5 + ((v2 + v3 + 7) & 0xFFFFFFFFFFFFFFF8)) = v4;
  v6 = swift_task_alloc();
  *(v0 + 2032) = v6;
  *v6 = v0;
  v6[1] = sub_10002F050;
  v7 = *(v0 + 1952);
  v8 = *(v0 + 1944);
  v9 = *(v0 + 1936);

  return sub_10010E730(sub_10010E730, sub_10003B28C, v5, v9, v8, v7);
}

uint64_t sub_10002F050()
{
  *(*v1 + 2040) = v0;

  if (v0)
  {
    v2 = sub_1000303B4;
  }

  else
  {
    v2 = sub_10002F184;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10002F184(uint64_t a1)
{
  v2 = *(v1 + 1632);
  v3 = *(v1 + 1624);
  v4 = *(v1 + 1616);
  v5 = Logger.impression.unsafeMutableAddressor();
  (*(v3 + 16))(v2, v5, v4);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Successfully finalized view through impression", v8, 2u);
  }

  v9 = *(v1 + 1856);
  v10 = *(v1 + 1632);
  v11 = *(v1 + 1624);
  v12 = *(v1 + 1616);
  v13 = *(v1 + 1576);
  v18 = *(v1 + 1840);
  v19 = *(v1 + 1824);

  (*(v11 + 8))(v10, v12);
  sub_10000DA7C((v13 + 24), *(v13 + 48));
  *(v1 + 32) = v18;
  *(v1 + 16) = v19;
  *(v1 + 48) = v9;
  *(v1 + 184) = *(v1 + 1488);
  *(v1 + 200) = *(v1 + 1504);
  *(v1 + 216) = *(v1 + 1520);
  *(v1 + 232) = *(v1 + 1536);
  *(v1 + 120) = *(v1 + 1424);
  *(v1 + 136) = *(v1 + 1440);
  *(v1 + 152) = *(v1 + 1456);
  *(v1 + 168) = *(v1 + 1472);
  *(v1 + 56) = *(v1 + 1360);
  *(v1 + 72) = *(v1 + 1376);
  *(v1 + 88) = *(v1 + 1392);
  *(v1 + 104) = *(v1 + 1408);
  v14 = type metadata accessor for SnoutManager(0);
  v15 = swift_task_alloc();
  *(v1 + 2048) = v15;
  *v15 = v1;
  v15[1] = sub_10002F424;
  v16 = *(v1 + 1560);

  return (sub_10016E27C)(v1 + 16, v16, 0, 0, v14, &off_100223858);
}

uint64_t sub_10002F424()
{
  v1 = *v0;

  sub_10003AE8C(v1 + 16);

  return _swift_task_switch(sub_10002F528, 0, 0);
}

uint64_t sub_10002F528()
{
  v1 = v0[226];
  v2 = v0[224];
  v3 = v0[222];
  v4 = v0[218];
  sub_10000DAF8(v0[199], &qword_10023A7C8, &qword_1001C17F0);
  v1(v2, v3);
  sub_10003C1A8(v4, type metadata accessor for ImpressionModel);

  v5 = v0[1];

  return v5();
}

uint64_t sub_10002F6DC()
{
  v1 = *v0;

  sub_10003AE8C(v1 + 240);

  return _swift_task_switch(sub_10002F7E0, 0, 0);
}

uint64_t sub_10002F7E0()
{
  *(v0 + 1544) = *(v0 + 2056);
  swift_errorRetain();
  sub_10000CDE0(&qword_10023A710, &qword_1001B5480);
  if (swift_dynamicCast())
  {
    v1 = *(v0 + 2073);
    if (v1 == 13)
    {

      v2 = *(v0 + 8);
      goto LABEL_7;
    }

    sub_10003AEE0();
    swift_allocError();
    *v3 = v1;
    swift_willThrow();
  }

  else
  {
    swift_willThrow();
  }

  v2 = *(v0 + 8);
LABEL_7:

  return v2();
}

uint64_t sub_10002FAD4()
{
  v1 = *(v0 + 1744);
  (*(v0 + 1808))(*(v0 + 1792), *(v0 + 1776));
  sub_10003C1A8(v1, type metadata accessor for ImpressionModel);
  v2 = *(v0 + 1904);
  *(v0 + 2056) = v2;
  v3 = *(v0 + 1824);
  v4 = *(v0 + 1576);
  v5 = sub_1000C7C10(v2);
  v7 = v6;
  v9 = v8;
  v11 = v10;

  sub_10000DA7C((v4 + 24), *(v4 + 48));
  *(v0 + 240) = v3;
  *(v0 + 248) = v5;
  *(v0 + 256) = v7;
  *(v0 + 264) = v9;
  *(v0 + 272) = v11;
  v12 = *(v0 + 1504);
  *(v0 + 408) = *(v0 + 1488);
  *(v0 + 424) = v12;
  *(v0 + 440) = *(v0 + 1520);
  *(v0 + 456) = *(v0 + 1536);
  v13 = *(v0 + 1440);
  *(v0 + 344) = *(v0 + 1424);
  *(v0 + 360) = v13;
  v14 = *(v0 + 1472);
  *(v0 + 376) = *(v0 + 1456);
  *(v0 + 392) = v14;
  v15 = *(v0 + 1376);
  *(v0 + 280) = *(v0 + 1360);
  *(v0 + 296) = v15;
  v16 = *(v0 + 1408);
  *(v0 + 312) = *(v0 + 1392);
  *(v0 + 328) = v16;
  v17 = type metadata accessor for SnoutManager(0);
  v18 = swift_task_alloc();
  *(v0 + 2064) = v18;
  *v18 = v0;
  v18[1] = sub_10002F6DC;
  v19 = *(v0 + 1560);

  return (sub_10016E27C)(v0 + 240, v19, 0, 0, v17, &off_100223858);
}

uint64_t sub_10002FD04()
{
  v1 = *(v0 + 1744);
  (*(v0 + 1808))(*(v0 + 1792), *(v0 + 1776));
  sub_10003C1A8(v1, type metadata accessor for ImpressionModel);
  v2 = *(v0 + 1928);
  *(v0 + 2056) = v2;
  v3 = *(v0 + 1824);
  v4 = *(v0 + 1576);
  v5 = sub_1000C7C10(v2);
  v7 = v6;
  v9 = v8;
  v11 = v10;

  sub_10000DA7C((v4 + 24), *(v4 + 48));
  *(v0 + 240) = v3;
  *(v0 + 248) = v5;
  *(v0 + 256) = v7;
  *(v0 + 264) = v9;
  *(v0 + 272) = v11;
  v12 = *(v0 + 1504);
  *(v0 + 408) = *(v0 + 1488);
  *(v0 + 424) = v12;
  *(v0 + 440) = *(v0 + 1520);
  *(v0 + 456) = *(v0 + 1536);
  v13 = *(v0 + 1440);
  *(v0 + 344) = *(v0 + 1424);
  *(v0 + 360) = v13;
  v14 = *(v0 + 1472);
  *(v0 + 376) = *(v0 + 1456);
  *(v0 + 392) = v14;
  v15 = *(v0 + 1376);
  *(v0 + 280) = *(v0 + 1360);
  *(v0 + 296) = v15;
  v16 = *(v0 + 1408);
  *(v0 + 312) = *(v0 + 1392);
  *(v0 + 328) = v16;
  v17 = type metadata accessor for SnoutManager(0);
  v18 = swift_task_alloc();
  *(v0 + 2064) = v18;
  *v18 = v0;
  v18[1] = sub_10002F6DC;
  v19 = *(v0 + 1560);

  return (sub_10016E27C)(v0 + 240, v19, 0, 0, v17, &off_100223858);
}

uint64_t sub_10002FF34()
{
  v1 = *(v0 + 1744);
  (*(v0 + 1808))(*(v0 + 1792), *(v0 + 1776));
  sub_10003C1A8(v1, type metadata accessor for ImpressionModel);
  v2 = *(v0 + 1976);
  *(v0 + 2056) = v2;
  v3 = *(v0 + 1824);
  v4 = *(v0 + 1576);
  v5 = sub_1000C7C10(v2);
  v7 = v6;
  v9 = v8;
  v11 = v10;

  sub_10000DA7C((v4 + 24), *(v4 + 48));
  *(v0 + 240) = v3;
  *(v0 + 248) = v5;
  *(v0 + 256) = v7;
  *(v0 + 264) = v9;
  *(v0 + 272) = v11;
  v12 = *(v0 + 1504);
  *(v0 + 408) = *(v0 + 1488);
  *(v0 + 424) = v12;
  *(v0 + 440) = *(v0 + 1520);
  *(v0 + 456) = *(v0 + 1536);
  v13 = *(v0 + 1440);
  *(v0 + 344) = *(v0 + 1424);
  *(v0 + 360) = v13;
  v14 = *(v0 + 1472);
  *(v0 + 376) = *(v0 + 1456);
  *(v0 + 392) = v14;
  v15 = *(v0 + 1376);
  *(v0 + 280) = *(v0 + 1360);
  *(v0 + 296) = v15;
  v16 = *(v0 + 1408);
  *(v0 + 312) = *(v0 + 1392);
  *(v0 + 328) = v16;
  v17 = type metadata accessor for SnoutManager(0);
  v18 = swift_task_alloc();
  *(v0 + 2064) = v18;
  *v18 = v0;
  v18[1] = sub_10002F6DC;
  v19 = *(v0 + 1560);

  return (sub_10016E27C)(v0 + 240, v19, 0, 0, v17, &off_100223858);
}

uint64_t sub_100030164()
{
  v1 = *(v0 + 1808);
  v2 = *(v0 + 1792);
  v3 = *(v0 + 1776);
  v4 = *(v0 + 1744);
  sub_10000DAF8(*(v0 + 1592), &qword_10023A7C8, &qword_1001C17F0);
  v1(v2, v3);
  sub_10003C1A8(v4, type metadata accessor for ImpressionModel);
  v5 = *(v0 + 2000);
  *(v0 + 2056) = v5;
  v6 = *(v0 + 1824);
  v7 = *(v0 + 1576);
  v8 = sub_1000C7C10(v5);
  v10 = v9;
  v12 = v11;
  v14 = v13;

  sub_10000DA7C((v7 + 24), *(v7 + 48));
  *(v0 + 240) = v6;
  *(v0 + 248) = v8;
  *(v0 + 256) = v10;
  *(v0 + 264) = v12;
  *(v0 + 272) = v14;
  v15 = *(v0 + 1504);
  *(v0 + 408) = *(v0 + 1488);
  *(v0 + 424) = v15;
  *(v0 + 440) = *(v0 + 1520);
  *(v0 + 456) = *(v0 + 1536);
  v16 = *(v0 + 1440);
  *(v0 + 344) = *(v0 + 1424);
  *(v0 + 360) = v16;
  v17 = *(v0 + 1472);
  *(v0 + 376) = *(v0 + 1456);
  *(v0 + 392) = v17;
  v18 = *(v0 + 1376);
  *(v0 + 280) = *(v0 + 1360);
  *(v0 + 296) = v18;
  v19 = *(v0 + 1408);
  *(v0 + 312) = *(v0 + 1392);
  *(v0 + 328) = v19;
  v20 = type metadata accessor for SnoutManager(0);
  v21 = swift_task_alloc();
  *(v0 + 2064) = v21;
  *v21 = v0;
  v21[1] = sub_10002F6DC;
  v22 = *(v0 + 1560);

  return (sub_10016E27C)(v0 + 240, v22, 0, 0, v20, &off_100223858);
}

uint64_t sub_1000303B4()
{
  v1 = *(v0 + 1808);
  v2 = *(v0 + 1792);
  v3 = *(v0 + 1776);
  v4 = *(v0 + 1744);
  sub_10000DAF8(*(v0 + 1592), &qword_10023A7C8, &qword_1001C17F0);
  v1(v2, v3);
  sub_10003C1A8(v4, type metadata accessor for ImpressionModel);
  v5 = *(v0 + 2040);
  *(v0 + 2056) = v5;
  v6 = *(v0 + 1824);
  v7 = *(v0 + 1576);
  v8 = sub_1000C7C10(v5);
  v10 = v9;
  v12 = v11;
  v14 = v13;

  sub_10000DA7C((v7 + 24), *(v7 + 48));
  *(v0 + 240) = v6;
  *(v0 + 248) = v8;
  *(v0 + 256) = v10;
  *(v0 + 264) = v12;
  *(v0 + 272) = v14;
  v15 = *(v0 + 1504);
  *(v0 + 408) = *(v0 + 1488);
  *(v0 + 424) = v15;
  *(v0 + 440) = *(v0 + 1520);
  *(v0 + 456) = *(v0 + 1536);
  v16 = *(v0 + 1440);
  *(v0 + 344) = *(v0 + 1424);
  *(v0 + 360) = v16;
  v17 = *(v0 + 1472);
  *(v0 + 376) = *(v0 + 1456);
  *(v0 + 392) = v17;
  v18 = *(v0 + 1376);
  *(v0 + 280) = *(v0 + 1360);
  *(v0 + 296) = v18;
  v19 = *(v0 + 1408);
  *(v0 + 312) = *(v0 + 1392);
  *(v0 + 328) = v19;
  v20 = type metadata accessor for SnoutManager(0);
  v21 = swift_task_alloc();
  *(v0 + 2064) = v21;
  *v21 = v0;
  v21[1] = sub_10002F6DC;
  v22 = *(v0 + 1560);

  return (sub_10016E27C)(v0 + 240, v22, 0, 0, v20, &off_100223858);
}

uint64_t sub_100030604(uint64_t a1)
{
  sub_100014B50(a1, &v11, &qword_10023A7E0, &qword_1001B5850);
  if (!v12)
  {
    sub_10000DAF8(&v11, &qword_10023A7E0, &qword_1001B5850);
LABEL_19:
    v9 = 0;
    return v9 & 1;
  }

  sub_10000DA64(&v11, v13);
  v1 = v14;
  v2 = v15;
  sub_10000DA7C(v13, v14);
  v3 = (*(v2 + 24))(v1, v2);
  if (!v4)
  {
    sub_10000DB58(v13);
    goto LABEL_19;
  }

  v5 = v4;
  v6 = v3 == 0xD000000000000012 && v4 == 0x80000001001CB3C0;
  if (v6 || (v7 = v3, (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0) || (v7 == 0x6C7070612E6D6F63 ? (v8 = v5 == 0xEE007377656E2E65) : (v8 = 0), v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v7 == 0xD000000000000010 && v5 == 0x80000001001CB3E0))
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  sub_10000DB58(v13);
  return v9 & 1;
}

uint64_t sub_100030798(uint64_t *a1, void *a2)
{
  v100 = a2;
  v3 = type metadata accessor for Logger();
  v103 = *(v3 - 8);
  v104 = v3;
  v4 = __chkstk_darwin(v3);
  v96 = &v93 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v101 = &v93 - v7;
  v8 = __chkstk_darwin(v6);
  v99 = &v93 - v9;
  v10 = __chkstk_darwin(v8);
  v97 = &v93 - v11;
  v12 = __chkstk_darwin(v10);
  v95 = &v93 - v13;
  __chkstk_darwin(v12);
  v94 = &v93 - v14;
  v105 = type metadata accessor for Date();
  v102 = *(v105 - 8);
  v15 = __chkstk_darwin(v105);
  v98 = &v93 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v19 = &v93 - v18;
  __chkstk_darwin(v17);
  v21 = &v93 - v20;
  v22 = type metadata accessor for AppImpressionPayload(0);
  v23 = __chkstk_darwin(v22);
  v25 = &v93 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v106 = &v93 - v26;
  v27 = *a1;
  v28 = a1[1];
  if (*a1 == __PAIR128__(0xE500000000000000, v29) || ((v45 = _stringCompareWithSmolCheck(_:_:expecting:)(), v27 == 0x3239315345) ? (v46 = v28 == 0xE500000000000000) : (v46 = 0), !v46 ? (v47 = 0) : (v47 = 1), (v45 & 1) != 0 || (v47 & 1) != 0 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {
    v30 = sub_10000CDE0(&qword_10023A7D0, &unk_1001B5840);
    v31 = v106;
    sub_10003C208(a1 + *(v30 + 68), v106, type metadata accessor for AppImpressionPayload);
    Date.init(timeIntervalSince1970:)();
    v32 = v100;
    if (static Date.> infix(_:_:)())
    {
      static Date.now.getter();
      v33 = static Date.< infix(_:_:)();
      v34 = *(v102 + 8);
      v35 = v105;
      v34(v19, v105);
      v36 = v103;
      if (v33)
      {
        v37 = v106;
        v38 = v104;
        if (*(v106 + v22[6]))
        {
          v39 = (v106 + v22[10]);
          v41 = *v39;
          v40 = v39[1];
          v42 = v41 & 0xFFFFFFFFFFFFLL;
          if ((v40 & 0x2000000000000000) != 0)
          {
            v43 = HIBYTE(v40) & 0xF;
          }

          else
          {
            v43 = v42;
          }

          if (v43)
          {
            if (*(v106 + v22[7]) >> 4 < 0x271uLL)
            {
              v34(v21, v35);
              return sub_10003C1A8(v37, type metadata accessor for AppImpressionPayload);
            }

            v71 = v21;
            v89 = Logger.impression.unsafeMutableAddressor();
            (*(v36 + 16))(v94, v89, v38);
            v90 = Logger.logObject.getter();
            v91 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v90, v91))
            {
              v92 = swift_slowAlloc();
              *v92 = 0;
              _os_log_impl(&_mh_execute_header, v90, v91, "Invalid source identifier found in impression", v92, 2u);
            }

            (*(v36 + 8))(v94, v38);
            sub_10003AEE0();
            swift_allocError();
            v78 = 6;
          }

          else
          {
            v71 = v21;
            v85 = Logger.impression.unsafeMutableAddressor();
            (*(v36 + 16))(v95, v85, v38);
            v86 = Logger.logObject.getter();
            v87 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v86, v87))
            {
              v88 = swift_slowAlloc();
              *v88 = 0;
              _os_log_impl(&_mh_execute_header, v86, v87, "Invalid ad network ID found in impression", v88, 2u);
            }

            (*(v36 + 8))(v95, v38);
            sub_10003AEE0();
            swift_allocError();
            v78 = 7;
          }
        }

        else
        {
          v71 = v21;
          v81 = Logger.impression.unsafeMutableAddressor();
          (*(v36 + 16))(v97, v81, v38);
          v82 = Logger.logObject.getter();
          v83 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v82, v83))
          {
            v84 = swift_slowAlloc();
            *v84 = 0;
            _os_log_impl(&_mh_execute_header, v82, v83, "Invalid advertiser item id found in impression", v84, 2u);
          }

          (*(v36 + 8))(v97, v38);
          sub_10003AEE0();
          swift_allocError();
          v78 = 5;
        }
      }

      else
      {
        v71 = v21;
        v72 = Logger.impression.unsafeMutableAddressor();
        v73 = v104;
        (*(v36 + 16))(v99, v72, v104);
        v74 = Logger.logObject.getter();
        v75 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v74, v75))
        {
          v76 = swift_slowAlloc();
          *v76 = 0;
          _os_log_impl(&_mh_execute_header, v74, v75, "Impression is from the future", v76, 2u);
        }

        (*(v36 + 8))(v99, v73);
        sub_10003AEE0();
        swift_allocError();
        v78 = 9;
      }

      *v77 = v78;
      swift_willThrow();
      v34(v71, v35);
      v80 = v106;
    }

    else
    {
      v99 = v21;
      v56 = Logger.impression.unsafeMutableAddressor();
      v57 = v103;
      (*(v103 + 16))(v101, v56, v104);
      sub_10003C208(v31, v25, type metadata accessor for AppImpressionPayload);
      v58 = v102;
      v59 = v98;
      v60 = v105;
      (*(v102 + 16))(v98, v32, v105);
      v61 = Logger.logObject.getter();
      v62 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v61, v62))
      {
        v63 = swift_slowAlloc();
        v100 = swift_slowAlloc();
        v107 = v100;
        *v63 = 134218242;
        v64 = *&v25[v22[8]];
        sub_10003C1A8(v25, type metadata accessor for AppImpressionPayload);
        *(v63 + 4) = v64;
        *(v63 + 12) = 2080;
        sub_10003C160(&qword_10023A7F0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
        v65 = dispatch thunk of CustomStringConvertible.description.getter();
        v67 = v66;
        v68 = *(v58 + 8);
        v68(v59, v105);
        v69 = sub_10017AD04(v65, v67, &v107);

        *(v63 + 14) = v69;
        _os_log_impl(&_mh_execute_header, v61, v62, "Impression age too old to process %llu %s", v63, 0x16u);
        sub_10000DB58(v100);
        v70 = v106;

        v60 = v105;

        (*(v57 + 8))(v101, v104);
      }

      else
      {
        sub_10003C1A8(v25, type metadata accessor for AppImpressionPayload);

        v68 = *(v58 + 8);
        v68(v59, v60);
        (*(v57 + 8))(v101, v104);
        v70 = v106;
      }

      sub_10003AEE0();
      swift_allocError();
      *v79 = 8;
      swift_willThrow();
      v68(v99, v60);
      v80 = v70;
    }

    return sub_10003C1A8(v80, type metadata accessor for AppImpressionPayload);
  }

  else
  {
    v48 = Logger.impression.unsafeMutableAddressor();
    v50 = v103;
    v49 = v104;
    v51 = v96;
    (*(v103 + 16))(v96, v48, v104);
    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      *v54 = 0;
      _os_log_impl(&_mh_execute_header, v52, v53, "Unsupported signing algorithm used in impression", v54, 2u);
    }

    (*(v50 + 8))(v51, v49);
    sub_10003AEE0();
    swift_allocError();
    *v55 = 1;
    return swift_willThrow();
  }
}

uint64_t sub_100031330(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v78 = a3;
  v79 = a2;
  v77 = a1;
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v72 - v11;
  v13 = __chkstk_darwin(v10);
  v75 = &v72 - v14;
  v15 = __chkstk_darwin(v13);
  v76 = &v72 - v16;
  __chkstk_darwin(v15);
  v74 = &v72 - v17;
  v18 = type metadata accessor for URL();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v72 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100014B50(a4, &v80, &qword_10023A7E0, &qword_1001B5850);
  if (v81)
  {
    v73 = v6;
    sub_10000DA64(&v80, v83);
    if (sub_100030604(a4))
    {
      v22 = Logger.impression.unsafeMutableAddressor();
      v23 = v73;
      (*(v73 + 16))(v12, v22, v5);
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&_mh_execute_header, v24, v25, "Skipping publisher item ID validation", v26, 2u);
      }

      (*(v23 + 8))(v12, v5);
      return sub_10000DB58(v83);
    }

    type metadata accessor for PropertyListDecoder();
    swift_allocObject();
    v32 = PropertyListDecoder.init()();
    v33 = v84;
    v34 = v85;
    sub_10000DA7C(v83, v84);
    (*(v34 + 40))(v33, v34);
    v35 = v86;
    v36 = Data.init(contentsOf:options:)();
    if (v35)
    {
      (*(v19 + 8))(v21, v18);
    }

    else
    {
      v38 = v36;
      v39 = v37;
      (*(v19 + 8))(v21, v18);
      sub_10003AF64();
      dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
      v86 = v38;
      v40 = v78;
      v41 = sub_1000C20E0(v79, v78, v80);

      if (v41)
      {
        v79 = v32;
        v42 = v84;
        v43 = v85;
        sub_10000DA7C(v83, v84);
        v44 = (*(v43 + 16))(v42, v43);
        v45 = Logger.impression.unsafeMutableAddressor();
        v46 = v73;
        v47 = *(v73 + 16);
        v48 = v5;
        if (v44 == v77)
        {
          v49 = v74;
          v47(v74, v45, v5);
          v50 = Logger.logObject.getter();
          v51 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v50, v51))
          {
            v52 = swift_slowAlloc();
            *v52 = 0;
            _os_log_impl(&_mh_execute_header, v50, v51, "Successfully validated publisher application", v52, 2u);
          }

          sub_10001BABC(v86, v39);

          (*(v46 + 8))(v49, v5);
          return sub_10000DB58(v83);
        }

        v47(v76, v45, v5);
        sub_10000CE28(v83, &v80);
        v62 = Logger.logObject.getter();
        v63 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v62, v63))
        {
          v64 = swift_slowAlloc();
          *v64 = 134218240;
          v65 = v39;
          v66 = v81;
          v67 = v82;
          sub_10000DA7C(&v80, v81);
          v68 = v66;
          v39 = v65;
          v69 = (*(v67 + 16))(v68, v67);
          sub_10000DB58(&v80);
          *(v64 + 4) = v69;
          *(v64 + 12) = 2048;
          *(v64 + 14) = v77;
          _os_log_impl(&_mh_execute_header, v62, v63, "Application record item ID %llu does not match impression publisher item ID %llu", v64, 0x16u);
        }

        else
        {
          sub_10000DB58(&v80);
        }

        (*(v46 + 8))(v76, v48);
        sub_10003AEE0();
        swift_allocError();
        *v71 = 15;
        swift_willThrow();
        sub_10001BABC(v86, v39);
      }

      else
      {
        v77 = v39;
        v53 = Logger.impression.unsafeMutableAddressor();
        v54 = v73;
        v55 = v75;
        v56 = v5;
        (*(v73 + 16))(v75, v53, v5);

        v57 = Logger.logObject.getter();
        v58 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v57, v58))
        {
          v59 = v55;
          v60 = swift_slowAlloc();
          v61 = swift_slowAlloc();
          *&v80 = v61;
          *v60 = 136315138;
          *(v60 + 4) = sub_10017AD04(v79, v40, &v80);
          _os_log_impl(&_mh_execute_header, v57, v58, "Ad network '%s' not found in publisher app Info.plist", v60, 0xCu);
          sub_10000DB58(v61);

          (*(v54 + 8))(v59, v56);
        }

        else
        {

          (*(v54 + 8))(v55, v5);
        }

        sub_10003AEE0();
        swift_allocError();
        *v70 = 14;
        swift_willThrow();
        sub_10001BABC(v86, v77);
      }
    }

    return sub_10000DB58(v83);
  }

  sub_10000DAF8(&v80, &qword_10023A7E0, &qword_1001B5850);
  v28 = Logger.impression.unsafeMutableAddressor();
  (*(v6 + 16))(v9, v28, v5);
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&_mh_execute_header, v29, v30, "Skipping publisher app plist validation", v31, 2u);
  }

  return (*(v6 + 8))(v9, v5);
}

void sub_100031BC4(void *a1, uint64_t *a2)
{
  v4 = [a1 connection];
  v5 = sub_1000ED200(a2, v4);

  if (!v2)
  {

    v6 = type metadata accessor for ImpressionModel(0);
    sub_1000F1CA8(a2 + *(v6 + 20));
  }
}

uint64_t sub_100031C58(void *a1, uint64_t a2, void (**a3)(char *, char *, uint64_t))
{
  v42 = a3;
  v5 = type metadata accessor for ImpressionModel(0);
  v41 = *(v5 - 8);
  __chkstk_darwin(v5);
  v44 = v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for UUID();
  v48 = *(v40 - 8);
  __chkstk_darwin(v40);
  v39 = v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a2 + *(v5 + 24));
  sub_10000CDE0(&qword_10023CF60, &unk_1001B5870);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001B5820;
  v10 = String._bridgeToObjectiveC()();
  v47[0] = v8;
  v11 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  v12 = objc_opt_self();
  v13 = [v12 predicateWithProperty:v10 equalToValue:v11];
  swift_unknownObjectRelease();

  *(inited + 32) = v13;
  v14 = String._bridgeToObjectiveC()();
  v47[0] = 2003134838;
  v47[1] = 0xE400000000000000;
  v15 = [v12 predicateWithProperty:v14 equalToValue:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();

  *(inited + 40) = v15;
  v16 = sub_10004FB24(inited);
  swift_setDeallocating();
  sub_10000CDE0(&qword_10023A818, &unk_1001BC7A0);
  swift_arrayDestroy();
  v17 = [a1 connection];
  v18 = v16;
  v19 = sub_100085748(v17, v16, &off_100213DD0, v42, 0);
  v46 = v47;
  v47[0] = _swiftEmptyArrayStorage;
  v20 = v43;
  sub_10003505C(sub_10003B570, v45, v19);

  v21 = v47[0];
  if (!v20)
  {
    v37[2] = 0;
    v38 = v8;
    v22 = v40;
    v23 = v41;
    v24 = *(v47[0] + 16);
    if (v24)
    {
      v37[1] = a1;
      v47[0] = _swiftEmptyArrayStorage;
      v25 = v21;
      sub_100147180(0, v24, 0);
      v26 = v47[0];
      v27 = v23;
      v28 = (*(v23 + 80) + 32) & ~*(v23 + 80);
      v37[0] = v25;
      v29 = v25 + v28;
      v30 = *(v27 + 72);
      v42 = (v48 + 16);
      v43 = v30;
      v41 = v48 + 32;
      v31 = v39;
      do
      {
        v32 = v44;
        sub_10003C208(v29, v44, type metadata accessor for ImpressionModel);
        v33 = v5;
        (*v42)(v31, (v32 + *(v5 + 20)), v22);
        sub_10003C1A8(v32, type metadata accessor for ImpressionModel);
        v47[0] = v26;
        v35 = *(v26 + 16);
        v34 = *(v26 + 24);
        if (v35 >= v34 >> 1)
        {
          sub_100147180((v34 > 1), v35 + 1, 1);
          v26 = v47[0];
        }

        *(v26 + 16) = v35 + 1;
        (*(v48 + 32))(v26 + ((*(v48 + 80) + 32) & ~*(v48 + 80)) + *(v48 + 72) * v35, v31, v22);
        v29 += v43;
        --v24;
        v5 = v33;
      }

      while (v24);
    }

    sub_1000F1F0C(v38, 0);
  }
}

uint64_t sub_10003212C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[169] = v3;
  v4[168] = a3;
  v4[167] = a2;
  v4[166] = a1;
  v5 = type metadata accessor for Logger();
  v4[170] = v5;
  v4[171] = *(v5 - 8);
  v4[172] = swift_task_alloc();
  v4[173] = swift_task_alloc();
  sub_10000CDE0(&qword_10023A7C8, &qword_1001C17F0);
  v4[174] = swift_task_alloc();
  v4[175] = swift_task_alloc();
  v4[176] = sub_10000CDE0(&qword_10023A7D0, &unk_1001B5840);
  v4[177] = swift_task_alloc();
  v6 = type metadata accessor for ImpressionModel(0);
  v4[178] = v6;
  v7 = *(v6 - 8);
  v4[179] = v7;
  v4[180] = *(v7 + 64);
  v4[181] = swift_task_alloc();
  v4[182] = swift_task_alloc();
  v4[183] = swift_task_alloc();
  v8 = type metadata accessor for Calendar.Component();
  v4[184] = v8;
  v4[185] = *(v8 - 8);
  v4[186] = swift_task_alloc();
  v9 = type metadata accessor for Date();
  v4[187] = v9;
  v4[188] = *(v9 - 8);
  v4[189] = swift_task_alloc();
  v4[190] = swift_task_alloc();

  return _swift_task_switch(sub_1000323C4, 0, 0);
}

uint64_t sub_1000323C4()
{
  v1 = *(v0 + 1520);
  v2 = *(v0 + 1504);
  v70 = *(v0 + 1496);
  v3 = *(v0 + 1488);
  v4 = *(v0 + 1480);
  v5 = *(v0 + 1472);
  v73 = *(v0 + 1344);
  v74 = *(v0 + 1512);
  v72 = *(v0 + 1328);
  v67 = *(v0 + 1408);
  v68 = v73 + *(v67 + 68);
  v69 = type metadata accessor for AppImpressionPayload(0);
  v6 = &v68[v69[10]];
  v7 = *v6;
  v8 = v6[1];
  v71 = v68[v69[11]];

  static Date.now.getter();
  (*(v4 + 104))(v3, enum case for Calendar.Component.hour(_:), v5);
  v9 = sub_100025808(v1, v3);
  v11 = v10;
  (*(v4 + 8))(v3, v5);
  v12 = *(v2 + 8);
  *(v0 + 1528) = v12;
  *(v0 + 1536) = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v66 = v12;
  v12(v1, v70);
  if (v11)
  {
    v9 = 0;
  }

  v13 = [objc_opt_self() buildVersion];
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  *(v0 + 1680) = 1;
  *(v0 + 1688) = 1;
  *(v0 + 1696) = 1;
  *(v0 + 1704) = 1;
  *(v0 + 1712) = 1;
  *(v0 + 688) = 0;
  *(v0 + 696) = 0u;
  *(v0 + 712) = 0u;
  *(v0 + 728) = v7;
  *(v0 + 736) = v8;
  *(v0 + 744) = v9;
  *(v0 + 752) = v14;
  *(v0 + 760) = v16;
  *(v0 + 768) = 512;
  *(v0 + 770) = v71;
  *(v0 + 771) = 513;
  *(v0 + 773) = 2;
  *(v0 + 776) = 0;
  *(v0 + 784) = 1;
  *(v0 + 792) = 0;
  v17 = *(v0 + 1688);
  *(v0 + 800) = v17;
  *(v0 + 801) = 3;
  *(v0 + 808) = 0;
  v18 = *(v0 + 1696);
  *(v0 + 816) = v18;
  *(v0 + 824) = 0;
  v19 = *(v0 + 1704);
  *(v0 + 832) = v19;
  *(v0 + 833) = 770;
  *(v0 + 840) = 0;
  v20 = *(v0 + 1712);
  *(v0 + 848) = v20;
  *(v0 + 856) = 0u;
  *(v0 + 872) = 514;
  *(v0 + 874) = 2;
  *(v0 + 880) = 0u;
  *(v0 + 896) = 0u;
  *(v0 + 464) = 0;
  *(v0 + 472) = 0u;
  *(v0 + 488) = 0u;
  *(v0 + 504) = v7;
  *(v0 + 512) = v8;
  *(v0 + 520) = v9;
  *(v0 + 528) = v14;
  *(v0 + 536) = v16;
  *(v0 + 544) = 512;
  *(v0 + 546) = v71;
  *(v0 + 547) = 513;
  *(v0 + 549) = 2;
  *(v0 + 552) = 0;
  *(v0 + 560) = 1;
  *(v0 + 568) = 0;
  *(v0 + 576) = v17;
  *(v0 + 577) = 3;
  *(v0 + 584) = 0;
  *(v0 + 592) = v18;
  *(v0 + 600) = 0;
  *(v0 + 608) = v19;
  *(v0 + 609) = 770;
  *(v0 + 616) = 0;
  *(v0 + 624) = v20;
  *(v0 + 632) = 0u;
  *(v0 + 648) = 514;
  *(v0 + 650) = 2;
  *(v0 + 656) = 0u;
  *(v0 + 672) = 0u;
  sub_100010568(v0 + 688, v0 + 912);
  sub_10003AE8C(v0 + 464);
  v21 = *(v0 + 704);
  *(v0 + 1544) = *(v0 + 688);
  *(v0 + 1560) = v21;
  v22 = *(v0 + 872);
  *(v0 + 1264) = *(v0 + 856);
  *(v0 + 1280) = v22;
  *(v0 + 1296) = *(v0 + 888);
  v23 = *(v0 + 808);
  *(v0 + 1200) = *(v0 + 792);
  *(v0 + 1216) = v23;
  v24 = *(v0 + 840);
  *(v0 + 1232) = *(v0 + 824);
  *(v0 + 1248) = v24;
  v25 = *(v0 + 744);
  *(v0 + 1136) = *(v0 + 728);
  *(v0 + 1152) = v25;
  v26 = *(v0 + 776);
  *(v0 + 1168) = *(v0 + 760);
  *(v0 + 1576) = *(v0 + 720);
  *(v0 + 1312) = *(v0 + 904);
  *(v0 + 1184) = v26;
  v27 = sub_100030604(v72);
  Date.init(timeIntervalSinceNow:)();
  sub_100030798(v73, v74);
  v28 = *&v68[v69[5]];
  sub_100031330(v28, v7, v8, *(v0 + 1328));
  if (v27)
  {
    v29 = [objc_opt_self() standardUserDefaults];
    v30 = sub_1000BC488(0, 9);

    if (v30 == 2)
    {
      v31 = 1;
    }

    else
    {
      v31 = v30 ^ 1;
    }
  }

  else
  {
    v31 = v28 != 0;
  }

  v32 = *(v0 + 1520);
  v75 = *(v0 + 1496);
  v33 = *(v0 + 1464);
  v34 = *(v0 + 1424);
  v35 = *(v0 + 1416);
  v36 = *(v0 + 1408);
  sub_100014B50(*(v0 + 1344), v35, &qword_10023A7D0, &unk_1001B5840);
  *v33 = 0;
  *(v33 + 8) = 1;
  v37 = v35 + *(v67 + 68);
  v38 = v34[5];
  v39 = type metadata accessor for UUID();
  (*(*(v39 - 8) + 16))(v33 + v38, v37, v39);
  *(v33 + v34[6]) = *(v37 + v69[5]);
  *(v33 + v34[7]) = *(v37 + v69[6]);
  v40 = (v37 + v69[10]);
  v42 = *v40;
  v41 = v40[1];
  v43 = (v33 + v34[8]);
  *v43 = v42;
  v43[1] = v41;
  *(v33 + v34[9]) = *(v37 + v69[8]);
  *(v33 + v34[10]) = 1;
  v44 = (v35 + *(v36 + 76));
  v45 = *v44;
  v46 = v44[1];
  v47 = (v33 + v34[11]);
  *v47 = v45;
  v47[1] = v46;

  static Date.now.getter();
  Date.timeIntervalSince1970.getter();
  v49 = v48;
  v66(v32, v75);
  result = sub_10000DAF8(v35, &qword_10023A7D0, &unk_1001B5840);
  v51 = v49 * 1000.0;
  if (COERCE__INT64(fabs(v49 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (v51 <= -1.0)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v51 >= 1.84467441e19)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  v52 = v31;
  v53 = *(v0 + 1464);
  v54 = *(v0 + 1456);
  v55 = *(v0 + 1432);
  v56 = *(v0 + 1424);
  v57 = *(v0 + 1352);
  *(v53 + *(v56 + 48)) = v51;
  *(v53 + *(v56 + 52)) = v52 & 1;
  v58 = *v57;
  *(v0 + 1584) = *v57;
  v59 = v57[1];
  *(v0 + 1592) = v59;
  v60 = v57[2];
  *(v0 + 1600) = v60;
  sub_10003C208(v53, v54, type metadata accessor for ImpressionModel);
  v61 = *(v55 + 80);
  *(v0 + 1684) = v61;
  v62 = (v61 + 16) & ~v61;
  v63 = swift_allocObject();
  *(v0 + 1608) = v63;
  sub_10003C270(v54, v63 + v62, type metadata accessor for ImpressionModel);
  v64 = swift_task_alloc();
  *(v0 + 1616) = v64;
  *v64 = v0;
  v64[1] = sub_100032C88;
  v65 = *(v0 + 1400);

  return sub_100110668(v65, sub_10003C9F4, v63, v58, v59, v60);
}

uint64_t sub_100032C88()
{
  *(*v1 + 1624) = v0;

  if (v0)
  {
    v2 = sub_100033908;
  }

  else
  {
    v2 = sub_100032DBC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100032DBC()
{
  v1 = *(v0 + 1432);
  v2 = *(v0 + 1424);
  v3 = *(v0 + 1392);
  sub_100014B50(*(v0 + 1400), v3, &qword_10023A7C8, &qword_1001C17F0);
  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    sub_10000DAF8(*(v0 + 1392), &qword_10023A7C8, &qword_1001C17F0);
  }

  else
  {
    v4 = *(v0 + 1448);
    sub_10003C270(*(v0 + 1392), v4, type metadata accessor for ImpressionModel);
    sub_10003C1A8(v4, type metadata accessor for ImpressionModel);
  }

  v5 = *(v0 + 1456);
  v6 = (*(v0 + 1684) + 16) & ~*(v0 + 1684);
  sub_10003C208(*(v0 + 1464), v5, type metadata accessor for ImpressionModel);
  v7 = swift_allocObject();
  *(v0 + 1632) = v7;
  sub_10003C270(v5, v7 + v6, type metadata accessor for ImpressionModel);
  v8 = swift_task_alloc();
  *(v0 + 1640) = v8;
  *v8 = v0;
  v8[1] = sub_100032FA4;

  return (sub_10010E730)();
}

uint64_t sub_100032FA4()
{
  *(*v1 + 1648) = v0;

  if (v0)
  {
    v2 = sub_100033B38;
  }

  else
  {
    v2 = sub_1000330D8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000330D8(uint64_t a1)
{
  v2 = *(v1 + 1376);
  v3 = *(v1 + 1368);
  v4 = *(v1 + 1360);
  v5 = Logger.impression.unsafeMutableAddressor();
  (*(v3 + 16))(v2, v5, v4);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Successfully finalized click through impression", v8, 2u);
  }

  v9 = *(v1 + 1576);
  v10 = *(v1 + 1376);
  v11 = *(v1 + 1368);
  v12 = *(v1 + 1360);
  v13 = *(v1 + 1352);
  v18 = *(v1 + 1560);
  v19 = *(v1 + 1544);

  (*(v11 + 8))(v10, v12);
  sub_10000DA7C((v13 + 24), *(v13 + 48));
  *(v1 + 32) = v18;
  *(v1 + 16) = v19;
  *(v1 + 48) = v9;
  *(v1 + 184) = *(v1 + 1264);
  *(v1 + 200) = *(v1 + 1280);
  *(v1 + 216) = *(v1 + 1296);
  *(v1 + 232) = *(v1 + 1312);
  *(v1 + 120) = *(v1 + 1200);
  *(v1 + 136) = *(v1 + 1216);
  *(v1 + 152) = *(v1 + 1232);
  *(v1 + 168) = *(v1 + 1248);
  *(v1 + 56) = *(v1 + 1136);
  *(v1 + 72) = *(v1 + 1152);
  *(v1 + 88) = *(v1 + 1168);
  *(v1 + 104) = *(v1 + 1184);
  v14 = type metadata accessor for SnoutManager(0);
  v15 = swift_task_alloc();
  *(v1 + 1656) = v15;
  *v15 = v1;
  v15[1] = sub_100033378;
  v16 = *(v1 + 1336);

  return (sub_10016E27C)(v1 + 16, v16, 0, 0, v14, &off_100223858);
}

uint64_t sub_100033378()
{
  v1 = *v0;

  sub_10003AE8C(v1 + 16);

  return _swift_task_switch(sub_10003347C, 0, 0);
}

uint64_t sub_10003347C()
{
  v1 = v0[191];
  v2 = v0[189];
  v3 = v0[187];
  v4 = v0[183];
  sub_10000DAF8(v0[175], &qword_10023A7C8, &qword_1001C17F0);
  sub_10003C1A8(v4, type metadata accessor for ImpressionModel);
  v1(v2, v3);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1000335D0()
{
  v1 = *v0;

  sub_10003AE8C(v1 + 240);

  return _swift_task_switch(sub_1000336D4, 0, 0);
}

uint64_t sub_1000336D4()
{
  *(v0 + 1320) = *(v0 + 1664);
  swift_errorRetain();
  sub_10000CDE0(&qword_10023A710, &qword_1001B5480);
  if (swift_dynamicCast())
  {
    v1 = *(v0 + 1681);
    if (v1 == 13)
    {

      v2 = *(v0 + 8);
      goto LABEL_7;
    }

    sub_10003AEE0();
    swift_allocError();
    *v3 = v1;
    swift_willThrow();
  }

  else
  {
    swift_willThrow();
  }

  v2 = *(v0 + 8);
LABEL_7:

  return v2();
}

uint64_t sub_100033908()
{
  sub_10003C1A8(*(v0 + 1464), type metadata accessor for ImpressionModel);
  v1 = *(v0 + 1624);
  *(v0 + 1664) = v1;
  v2 = *(v0 + 1544);
  v3 = *(v0 + 1352);
  (*(v0 + 1528))(*(v0 + 1512), *(v0 + 1496));
  v4 = sub_1000C7C10(v1);
  v6 = v5;
  v8 = v7;
  v10 = v9;

  sub_10000DA7C((v3 + 24), *(v3 + 48));
  *(v0 + 240) = v2;
  *(v0 + 248) = v4;
  *(v0 + 256) = v6;
  *(v0 + 264) = v8;
  *(v0 + 272) = v10;
  v11 = *(v0 + 1280);
  *(v0 + 408) = *(v0 + 1264);
  *(v0 + 424) = v11;
  *(v0 + 440) = *(v0 + 1296);
  *(v0 + 456) = *(v0 + 1312);
  v12 = *(v0 + 1216);
  *(v0 + 344) = *(v0 + 1200);
  *(v0 + 360) = v12;
  v13 = *(v0 + 1248);
  *(v0 + 376) = *(v0 + 1232);
  *(v0 + 392) = v13;
  v14 = *(v0 + 1152);
  *(v0 + 280) = *(v0 + 1136);
  *(v0 + 296) = v14;
  v15 = *(v0 + 1184);
  *(v0 + 312) = *(v0 + 1168);
  *(v0 + 328) = v15;
  v16 = type metadata accessor for SnoutManager(0);
  v17 = swift_task_alloc();
  *(v0 + 1672) = v17;
  *v17 = v0;
  v17[1] = sub_1000335D0;
  v18 = *(v0 + 1336);

  return (sub_10016E27C)(v0 + 240, v18, 0, 0, v16, &off_100223858);
}

uint64_t sub_100033B38()
{
  v1 = *(v0 + 1464);
  sub_10000DAF8(*(v0 + 1400), &qword_10023A7C8, &qword_1001C17F0);
  sub_10003C1A8(v1, type metadata accessor for ImpressionModel);
  v2 = *(v0 + 1648);
  *(v0 + 1664) = v2;
  v3 = *(v0 + 1544);
  v4 = *(v0 + 1352);
  (*(v0 + 1528))(*(v0 + 1512), *(v0 + 1496));
  v5 = sub_1000C7C10(v2);
  v7 = v6;
  v9 = v8;
  v11 = v10;

  sub_10000DA7C((v4 + 24), *(v4 + 48));
  *(v0 + 240) = v3;
  *(v0 + 248) = v5;
  *(v0 + 256) = v7;
  *(v0 + 264) = v9;
  *(v0 + 272) = v11;
  v12 = *(v0 + 1280);
  *(v0 + 408) = *(v0 + 1264);
  *(v0 + 424) = v12;
  *(v0 + 440) = *(v0 + 1296);
  *(v0 + 456) = *(v0 + 1312);
  v13 = *(v0 + 1216);
  *(v0 + 344) = *(v0 + 1200);
  *(v0 + 360) = v13;
  v14 = *(v0 + 1248);
  *(v0 + 376) = *(v0 + 1232);
  *(v0 + 392) = v14;
  v15 = *(v0 + 1152);
  *(v0 + 280) = *(v0 + 1136);
  *(v0 + 296) = v15;
  v16 = *(v0 + 1184);
  *(v0 + 312) = *(v0 + 1168);
  *(v0 + 328) = v16;
  v17 = type metadata accessor for SnoutManager(0);
  v18 = swift_task_alloc();
  *(v0 + 1672) = v18;
  *v18 = v0;
  v18[1] = sub_1000335D0;
  v19 = *(v0 + 1336);

  return (sub_10016E27C)(v0 + 240, v19, 0, 0, v17, &off_100223858);
}

void sub_100033D84(void *a1, uint64_t a2, uint64_t (*a3)(uint64_t, id))
{
  v6 = [a1 connection];
  v7 = a3(a2, v6);

  if (!v3)
  {
  }
}

Swift::Int sub_100033DF8()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_100033E6C(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100033EC0@<X0>(Swift::String *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_100213E20, *a1);

  *a2 = v3 != 0;
  return result;
}

uint64_t sub_100033F50@<X0>(Swift::String string@<0:X0, 8:X1>, BOOL *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&off_100213E58, v3);

  *a2 = v5 != 0;
  return result;
}