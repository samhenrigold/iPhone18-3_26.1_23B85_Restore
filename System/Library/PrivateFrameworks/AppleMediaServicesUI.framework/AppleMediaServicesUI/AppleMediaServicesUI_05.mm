Swift::Int sub_10007F5B8()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

uint64_t sub_10007F600(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[52] = a2;
  v3[53] = a3;
  v3[51] = a1;
  v4 = type metadata accessor for AccountCachedServerData.Error();
  v3[54] = v4;
  v3[55] = *(v4 - 8);
  v3[56] = swift_task_alloc();
  v5 = sub_10007B9A4(&qword_100269588, &qword_1001E6070);
  v3[57] = v5;
  v3[58] = *(v5 - 8);
  v3[59] = swift_task_alloc();
  v3[60] = sub_10007B9A4(&qword_100269590, &qword_1001E6078);
  v3[61] = swift_task_alloc();
  v3[62] = swift_task_alloc();
  sub_10007B9A4(&qword_100269598, &qword_1001E6080);
  v3[63] = swift_task_alloc();
  v6 = sub_10007B9A4(&qword_1002695A0, &qword_1001E6088);
  v3[64] = v6;
  v3[65] = *(v6 - 8);
  v3[66] = swift_task_alloc();

  return _swift_task_switch(sub_10007F814, 0, 0);
}

uint64_t sub_10007F814()
{
  sub_100004768();
  sub_10007B9A4(&qword_100269580, &unk_1001E6040);
  AsyncValueSequence.makeAsyncIterator()();
  sub_100007834(&qword_1002695A8, &qword_1002695A0, &qword_1001E6088);
  v1 = swift_task_alloc();
  *(v0 + 536) = v1;
  *v1 = v0;
  v2 = sub_10000B658(v1);

  return dispatch thunk of AsyncIteratorProtocol.next()(v2);
}

uint64_t sub_10007F8CC()
{
  sub_100004768();
  sub_1000056A8();
  v2 = *v1;
  sub_100002D20();
  *v3 = v2;
  *(v4 + 544) = v0;

  if (v0)
  {
    v5 = sub_1000803E0;
  }

  else
  {
    v5 = sub_10007F9D0;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10007F9E4()
{
  v1 = *(v0 + 504);
  if (sub_100009F34(v1, 1, *(v0 + 480)) == 1)
  {
    (*(*(v0 + 520) + 8))(*(v0 + 528), *(v0 + 512));
    if (qword_100268738 != -1)
    {
      sub_100004E84(&qword_100268738);
    }

    v2 = *(v0 + 424);
    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v3 = type metadata accessor for LogInterpolation();
    sub_100002CFC(v3);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_1001E5F60;
    *(v0 + 40) = &unk_100246478;
    *(v0 + 16) = v2;
    v5 = v2;
    v6 = AMSLogKey();
    if (v6)
    {
      v7 = v6;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100002C00((v0 + 16));
    *(v0 + 72) = &type metadata for String;
    strcpy((v0 + 48), "storefrontId");
    *(v0 + 61) = 0;
    *(v0 + 62) = -5120;
    static LogInterpolation.safe(_:)();
    sub_100009F5C(v0 + 48, &qword_10026D350, &qword_1001E6050);
    *(v0 + 104) = &type metadata for String;
    *(v0 + 80) = 0xD00000000000001ELL;
    *(v0 + 88) = 0x80000001001F3320;
    static LogInterpolation.safe(_:)();
    sub_100009F5C(v0 + 80, &qword_10026D350, &qword_1001E6050);
    v14 = static os_log_type_t.debug.getter();
    sub_1000036B0(v14, v4);

    sub_1000807A4();
    swift_allocError();
    swift_willThrow();
LABEL_17:

    v33 = *(v0 + 8);
    goto LABEL_18;
  }

  sub_1000807F8(v1, *(v0 + 496));
  if (qword_100268738 != -1)
  {
    sub_100004E84(&qword_100268738);
  }

  v8 = *(v0 + 424);
  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v9 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v9);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1001E5F60;
  *(v0 + 136) = &unk_100246478;
  *(v0 + 112) = v8;
  v11 = v8;
  v12 = AMSLogKey();
  if (v12)
  {
    v13 = v12;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v15 = *(v0 + 488);
  v57 = *(v0 + 496);
  static LogInterpolation.prefix(_:_:)();

  sub_100002C00((v0 + 112));
  *(v0 + 168) = &type metadata for String;
  sub_100002D0C();
  *(v0 + 144) = v16;
  sub_100008228();
  *(v0 + 152) = v17;
  static LogInterpolation.safe(_:)();
  sub_100009F5C(v0 + 144, &qword_10026D350, &qword_1001E6050);
  *(v0 + 200) = &type metadata for String;
  *(v0 + 176) = 0x7573657220746F47;
  *(v0 + 184) = 0xEA0000000000746CLL;
  static LogInterpolation.safe(_:)();
  sub_100009F5C(v0 + 176, &qword_10026D350, &qword_1001E6050);
  v18 = static os_log_type_t.debug.getter();
  sub_1000036B0(v18, v10);

  sub_100080868(v57, v15);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v20 = *(v0 + 488);
  if (EnumCaseMultiPayload == 1)
  {
    v21 = *(v0 + 424);
    (*(*(v0 + 440) + 32))(*(v0 + 448), v20, *(v0 + 432));
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_1001E5F70;
    *(v0 + 232) = &unk_100246478;
    *(v0 + 208) = v21;
    v23 = v21;
    v24 = AMSLogKey();
    if (v24)
    {
      v25 = v24;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    v34 = *(v0 + 520);
    v58 = *(v0 + 512);
    v60 = *(v0 + 528);
    v35 = *(v0 + 496);
    v36 = *(v0 + 440);
    v37 = *(v0 + 448);
    v38 = *(v0 + 432);
    static LogInterpolation.prefix(_:_:)();

    sub_100002C00((v0 + 208));
    _StringGuts.grow(_:)(33);
    *(v0 + 368) = 0;
    *(v0 + 376) = 0xE000000000000000;
    v39._countAndFlagsBits = 0xD00000000000001FLL;
    v39._object = 0x80000001001F3340;
    String.append(_:)(v39);
    _print_unlocked<A, B>(_:_:)();
    v40 = *(v0 + 368);
    v41 = *(v0 + 376);
    *(v0 + 264) = &type metadata for String;
    *(v0 + 240) = v40;
    *(v0 + 248) = v41;
    static LogInterpolation.safe(_:)();
    sub_100009F5C(v0 + 240, &qword_10026D350, &qword_1001E6050);
    v42 = static os_log_type_t.error.getter();
    sub_1000036B0(v42, v22);

    sub_1000808D8(&qword_1002695B8, &type metadata accessor for AccountCachedServerData.Error, &protocol conformance descriptor for AccountCachedServerData.Error);
    swift_allocError();
    (*(v36 + 16))(v43, v37, v38);
    swift_willThrow();
    (*(v36 + 8))(v37, v38);
    sub_100009F5C(v35, &qword_100269590, &qword_1001E6078);
    (*(v34 + 8))(v60, v58);
    goto LABEL_17;
  }

  (*(*(v0 + 464) + 32))(*(v0 + 472), v20, *(v0 + 456));
  AccountCachedServerData.CachedValue.value.getter();
  v26 = *(v0 + 392);
  if (v26)
  {
    v27 = *(v0 + 528);
    v28 = *(v0 + 520);
    v29 = *(v0 + 512);
    v30 = *(v0 + 496);
    v31 = *(v0 + 408);
    v32 = *(v0 + 384);
    (*(*(v0 + 464) + 8))(*(v0 + 472), *(v0 + 456));
    sub_100009F5C(v30, &qword_100269590, &qword_1001E6078);
    (*(v28 + 8))(v27, v29);
    *v31 = v32;
    v31[1] = v26;

    v33 = *(v0 + 8);
LABEL_18:

    return v33();
  }

  v45 = *(v0 + 424);
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_1001E5F60;
  *(v0 + 296) = &unk_100246478;
  *(v0 + 272) = v45;
  v47 = v45;
  v48 = AMSLogKey();
  if (v48)
  {
    v49 = v48;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v50 = *(v0 + 464);
  v59 = *(v0 + 472);
  v61 = *(v0 + 496);
  v51 = *(v0 + 456);
  static LogInterpolation.prefix(_:_:)();

  sub_100002C00((v0 + 272));
  *(v0 + 328) = &type metadata for String;
  sub_100002D0C();
  *(v0 + 304) = v52;
  sub_100008228();
  *(v0 + 312) = v53;
  static LogInterpolation.safe(_:)();
  sub_100009F5C(v0 + 304, &qword_10026D350, &qword_1001E6050);
  *(v0 + 360) = &type metadata for String;
  *(v0 + 336) = 0xD000000000000018;
  *(v0 + 344) = 0x80000001001F3360;
  static LogInterpolation.safe(_:)();
  sub_100009F5C(v0 + 336, &qword_10026D350, &qword_1001E6050);
  v54 = static os_log_type_t.debug.getter();
  sub_1000036B0(v54, v46);

  (*(v50 + 8))(v59, v51);
  sub_100009F5C(v61, &qword_100269590, &qword_1001E6078);
  sub_100007834(&qword_1002695A8, &qword_1002695A0, &qword_1001E6088);
  v55 = swift_task_alloc();
  *(v0 + 536) = v55;
  *v55 = v0;
  v56 = sub_10000B658(v55);

  return dispatch thunk of AsyncIteratorProtocol.next()(v56);
}

uint64_t sub_1000803E0()
{
  sub_100004768();
  *(v0 + 400) = *(v0 + 544);
  sub_10007B9A4(&unk_100270B70, &unk_1001E8F60);
  v1 = swift_dynamicCast();

  return _swift_willThrowTypedImpl(v1, &type metadata for Never, &protocol witness table for Never);
}

id sub_100080468()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

uint64_t sub_100080490()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100080ADC;

  return sub_10003EBB0();
}

unint64_t sub_10008055C()
{
  result = qword_100269568;
  if (!qword_100269568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100269568);
  }

  return result;
}

uint64_t sub_1000805B0(uint64_t a1)
{
  v4 = sub_10007B9A4(&qword_100269580, &unk_1001E6040);
  sub_100002CFC(v4);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = *(v1 + ((*(v7 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1000806C0;

  return sub_10007F600(a1, v1 + v6, v8);
}

uint64_t sub_1000806C0()
{
  sub_100004768();
  sub_1000056A8();
  v1 = *v0;
  sub_100002D20();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

unint64_t sub_1000807A4()
{
  result = qword_1002695B0;
  if (!qword_1002695B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002695B0);
  }

  return result;
}

uint64_t sub_1000807F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10007B9A4(&qword_100269590, &qword_1001E6078);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100080868(uint64_t a1, uint64_t a2)
{
  v4 = sub_10007B9A4(&qword_100269590, &qword_1001E6078);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000808D8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

_BYTE *sub_100080920(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_1000809D4(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 8))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100080A28(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_100080A88()
{
  result = qword_1002695C0;
  if (!qword_1002695C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002695C0);
  }

  return result;
}

uint64_t sub_100080AE0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_10007DC58(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_100080B10@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100187344(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_100080B40@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_10007DD00(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_100080B70@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_10007DC44(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_100080BA4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_10007DC2C(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_100080BE0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_10007DCA8(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_100080C2C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100077DFC();
  *a1 = result;
  return result;
}

uint64_t sub_100080C54()
{
  sub_1000061B4();
  v1 = *(v0 + 216);
  swift_willThrow();

  sub_100002D8C();

  return v2();
}

void *sub_100080CBC(void *a1, uint64_t a2, void *a3)
{
  v43 = NSDictionary.makeIterator()();
  v4 = type metadata accessor for NSDictionary.Iterator();
  v44 = sub_100048EC8(&qword_100269858, &type metadata accessor for NSDictionary.Iterator, &protocol conformance descriptor for NSDictionary.Iterator);
  while (1)
  {
    dispatch thunk of IteratorProtocol.next()();
    if (!*(&v40 + 1))
    {

      return a1;
    }

    *v39 = *&v39[9];
    *&v39[2] = v40;
    *&v39[4] = v41;
    *&v39[6] = v42;
    sub_1000839AC(v39, v35);
    sub_100002C4C(v35, v38);
    sub_100002C4C(&v36, v37);
    sub_100011BAC(v38, v35);
    if (!swift_dynamicCast())
    {
      goto LABEL_21;
    }

    sub_100011BAC(v37, v35);
    sub_100002BC0(0, &qword_10026AF10, NSNumber_ptr);
    if (swift_dynamicCast())
    {
      v5 = v33;
    }

    else
    {
      sub_100011BAC(v37, v35);
      if ((swift_dynamicCast() & 1) == 0 || (v6 = String._bridgeToObjectiveC()(), , v5 = [a3 numberFromString:v6], v6, !v5))
      {
        v21 = sub_100012A94();
        if (v22)
        {
          v23 = v21;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v35[0] = a1;
          v25 = a1[3];
          sub_10007B9A4(&qword_100269868, &qword_1001E6308);
          _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v25);
          a1 = *&v35[0];

          v26 = *(a1[7] + 8 * v23);
          _NativeDictionary._delete(at:)();
        }

        else
        {
        }

        goto LABEL_21;
      }
    }

    v7 = v4;
    v8 = v5;
    v9 = swift_isUniquelyReferenced_nonNull_native();
    *&v35[0] = a1;
    v10 = sub_100012A94();
    v12 = a1[2];
    v13 = (v11 & 1) == 0;
    v14 = v12 + v13;
    if (__OFADD__(v12, v13))
    {
      break;
    }

    v15 = v10;
    v16 = v11;
    sub_10007B9A4(&qword_100269868, &qword_1001E6308);
    if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v9, v14))
    {
      v17 = sub_100012A94();
      if ((v16 & 1) != (v18 & 1))
      {
        goto LABEL_25;
      }

      v15 = v17;
    }

    a1 = *&v35[0];
    if (v16)
    {
      v19 = *(*&v35[0] + 56);
      v20 = *(v19 + 8 * v15);
      *(v19 + 8 * v15) = v8;

      v8 = v20;
    }

    else
    {
      *(*&v35[0] + 8 * (v15 >> 6) + 64) |= 1 << v15;
      v27 = (a1[6] + 16 * v15);
      *v27 = v33;
      v27[1] = v34;
      *(a1[7] + 8 * v15) = v8;
      v28 = a1[2];
      v29 = __OFADD__(v28, 1);
      v30 = v28 + 1;
      if (v29)
      {
        goto LABEL_24;
      }

      a1[2] = v30;
    }

    v4 = v7;
LABEL_21:
    sub_100002C00(v37);
    sub_100002C00(v38);
    sub_100009FB0(v39, &qword_100269860, &qword_1001E6300);
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1000810F8()
{
  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  sub_100003EFC();
  v2 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v2);
  sub_100002D7C();
  v3 = sub_10000A92C();
  *(v3 + 16) = xmmword_1001E5F60;
  v4 = type metadata accessor for AccountsObserver();
  sub_100004774(v4);
  v5 = AMSLogKey();
  if (v5)
  {
    v6 = v5;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  sub_10000C2F8();

  sub_100002C00(v0);
  LogInterpolation.init(stringLiteral:)();
  sub_100005EAC();
  *(v1 + 72) = *(v1 + 88);
  sub_100017E64(v0 + 4);
  sub_1000047A4();
  (*(v7 + 16))();
  static LogInterpolation.safe(_:)();
  sub_100009FB0((v0 + 4), &qword_10026D350, &qword_1001E6050);
  if (qword_1002686B0 != -1)
  {
    sub_100002D44(&qword_1002686B0);
  }

  v8 = static os_log_type_t.error.getter();
  sub_1000036B0(v8, v3);

  sub_100002D8C();

  return v9();
}

uint64_t sub_1000812F4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v4 = a2;
  v5 = a1;
  v6 = a1 + 64;
  v7 = 1 << *(a1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a1 + 64);
  v10 = (v7 + 63) >> 6;
  v11 = 0;

  v43 = v10;
  v44 = v6;
  while (v9)
  {
LABEL_8:
    v13 = __clz(__rbit64(v9)) | (v11 << 6);
    v14 = (*(v5 + 48) + 16 * v13);
    v15 = *v14;
    v16 = v14[1];
    v17 = *(*(v5 + 56) + 8 * v13);
    v18 = *(v4 + 16);

    v19 = v17;
    if (!v18 || (v20 = v19, sub_100012A94(), v19 = v20, (v21 & 1) == 0))
    {
      v45 = v19;
      v46 = v19;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v48 = *a3;
      v23 = v15;
      v24 = sub_100012A94();
      v26 = v48[2];
      v27 = (v25 & 1) == 0;
      v28 = v26 + v27;
      if (__OFADD__(v26, v27))
      {
        goto LABEL_24;
      }

      v29 = v24;
      v30 = v25;
      sub_10007B9A4(&qword_100269800, &qword_1001E62A8);
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v28))
      {
        v31 = v23;
        v32 = sub_100012A94();
        v6 = v44;
        if ((v30 & 1) != (v33 & 1))
        {
          goto LABEL_26;
        }

        v29 = v32;
      }

      else
      {
        v6 = v44;
        v31 = v23;
      }

      v10 = v43;
      if (v30)
      {
        v34 = v48[7];
        v35 = *(v34 + 8 * v29);
        *(v34 + 8 * v29) = v46;
      }

      else
      {
        v48[(v29 >> 6) + 8] |= 1 << v29;
        v36 = (v48[6] + 16 * v29);
        *v36 = v31;
        v36[1] = v16;
        *(v48[7] + 8 * v29) = v46;
        v37 = v48[2];
        v38 = __OFADD__(v37, 1);
        v39 = v37 + 1;
        if (v38)
        {
          goto LABEL_25;
        }

        v48[2] = v39;
      }

      *a3 = v48;
      sub_10008158C(v31, v16);
      v4 = a2;
      v5 = v42;
      v19 = v45;
    }

    v9 &= v9 - 1;
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v10)
    {
    }

    v9 = *(v6 + 8 * v12);
    ++v11;
    if (v9)
    {
      v11 = v12;
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_10008158C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_1000056B4(v2 + 24, a2);
  sub_10000A298();
  sub_10004585C();
  v5 = v4;
  swift_endAccess();

  sub_1000056B4(v3 + 32, v6);
  v7 = sub_10000A298();
  sub_1000AB448(v7);
  swift_endAccess();
  sub_1000056B4(v3 + 40, v8);
  v9 = sub_10000A298();
  sub_100049A48(v9);
  swift_endAccess();

  sub_1000056B4(v3 + 48, v10);
  sub_10000A298();
  sub_100049C74();
  swift_endAccess();

  sub_1000056B4(v3 + 56, v11);
  sub_10000A298();
  sub_1000AB424();
  swift_endAccess();
}

uint64_t sub_10008167C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    type metadata accessor for LogInterpolation();
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_1001E5F70;
    v8[3] = type metadata accessor for AccountsObserver();
    v8[0] = v3;

    v5 = AMSLogKey();
    if (v5)
    {
      v6 = v5;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(v8);
    LogInterpolation.init(stringLiteral:)();
    if (qword_1002686B0 != -1)
    {
      swift_once();
    }

    v7 = static os_log_type_t.default.getter();
    sub_1000036B0(v7, v4);

    sub_100081C30();
  }

  return result;
}

uint64_t sub_100081854(void *a1)
{
  sub_100026484(a1, &selRef_identifier);
  if (!v3)
  {
    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v9 = type metadata accessor for LogInterpolation();
    sub_100002CFC(v9);
    sub_100002D7C();
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1001E5F70;
    v37[3] = type metadata accessor for AccountsObserver();
    v37[0] = v1;

    v11 = AMSLogKey();
    if (v11)
    {
      v12 = v11;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(v37);
    LogInterpolation.init(stringLiteral:)();
    if (qword_1002686B0 != -1)
    {
      sub_100002D44(&qword_1002686B0);
    }

    v26 = static os_log_type_t.error.getter();
    sub_1000036B0(v26, v10);

    return 0;
  }

  sub_10000602C(v1 + 32, v37);
  v4 = *(v1 + 32);

  v5 = sub_10000821C();
  v7 = sub_1000AA628(v5, v6, v4);

  if (v7 == 2)
  {
    if ([a1 isActive])
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  else
  {
    v13 = [a1 isActive] ^ v7;
    v14 = 1;
    if (v7)
    {
      v14 = 2;
    }

    if (v13)
    {
      v8 = v14;
    }

    else
    {
      v8 = 0;
    }
  }

  v15 = sub_100026484(a1, &selRef_ams_creditsString);
  v17 = v16;
  sub_10000602C(v1 + 40, v36);
  v18 = *(v1 + 40);

  v19 = sub_10000821C();
  v21 = sub_10003A3C0(v19, v20, v18);
  v23 = v22;

  if (!v17)
  {
    if (!v23)
    {
      goto LABEL_28;
    }

    goto LABEL_22;
  }

  if (!v23)
  {
LABEL_22:

    goto LABEL_23;
  }

  if (v15 == v21 && v17 == v23)
  {

    goto LABEL_28;
  }

  v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v25 & 1) == 0)
  {
LABEL_23:
    v8 |= 4uLL;
  }

LABEL_28:
  if (sub_100049AF8(a1))
  {
    sub_10000602C(v1 + 48, v34);

    sub_10000821C();
    v27 = sub_1000AE37C();

    if (v27)
    {
      sub_1001C52E8();
      v29 = v28;

      if (v29)
      {
        goto LABEL_34;
      }
    }

    else
    {
    }

    v8 |= 8uLL;
  }

LABEL_34:
  sub_10000602C(v1 + 56, v35);

  sub_10000821C();
  v30 = sub_1000AE37C();

  sub_100049C98(a1);
  if (v30)
  {
    sub_10000A298();
    sub_1001C5424();
    v32 = v31;

    if (v32)
    {
      return v8;
    }
  }

  else
  {
  }

  return v8 | 0x10;
}

uint64_t sub_100081C30()
{
  v1 = *v0;
  sub_10007B9A4(&unk_10026FEC0, &qword_1001E6280);
  sub_100004E78();
  __chkstk_darwin(v2);
  type metadata accessor for TaskPriority();
  sub_100004798();
  sub_10000A7C0(v3, v4, v5, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v0;
  v7[5] = v1;

  sub_100009DC8();
  sub_1000E349C();
}

uint64_t sub_100081D28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[14] = a4;
  v5[15] = a5;
  v6 = swift_task_alloc();
  v5[16] = v6;
  *v6 = v5;
  v6[1] = sub_100081DBC;

  return sub_1000486A8();
}

uint64_t sub_100081DBC()
{
  sub_1000061B4();
  v3 = v2;
  v4 = *v1;
  sub_100002D98();
  *v5 = v4;
  v6 = *v1;
  sub_100002D98();
  *v7 = v6;
  *(v4 + 136) = v0;

  if (v0)
  {
    v8 = sub_100081F64;
  }

  else
  {
    *(v4 + 144) = v3;
    v8 = sub_100081ED8;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_100081ED8()
{
  sub_1000061B4();
  v1 = *(v0 + 144);
  v2 = *(v0 + 112);

  sub_10008312C(v2, v2, v1);

  sub_100002D8C();

  return v3();
}

uint64_t sub_100081F64()
{
  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  sub_100003EFC();
  v2 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v2);
  sub_100002D7C();
  v3 = sub_10000A92C();
  *(v3 + 16) = xmmword_1001E5F60;
  v4 = type metadata accessor for AccountsObserver();
  sub_100004774(v4);
  v5 = AMSLogKey();
  if (v5)
  {
    v6 = v5;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  sub_10000C2F8();

  sub_100002C00(v0);
  LogInterpolation.init(stringLiteral:)();
  sub_100005EAC();
  *(v1 + 72) = *(v1 + 88);
  sub_100017E64(v0 + 4);
  sub_1000047A4();
  (*(v7 + 16))();
  static LogInterpolation.safe(_:)();
  sub_100009FB0((v0 + 4), &qword_10026D350, &qword_1001E6050);
  if (qword_1002686B0 != -1)
  {
    sub_100002D44(&qword_1002686B0);
  }

  v8 = static os_log_type_t.error.getter();
  sub_1000036B0(v8, v3);

  sub_100002D8C();

  return v9();
}

uint64_t sub_100082160(uint64_t a1, uint64_t a2)
{
  v57 = type metadata accessor for DispatchQoS.QoSClass();
  v4 = *(v57 - 8);
  __chkstk_darwin(v57);
  v56 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10007B9A4(&qword_1002697F8, &qword_1001E62A0);
  v65[0] = Dictionary.init(dictionaryLiteral:)();
  v64 = 0;
  swift_beginAccess();

  sub_1000812F4(v6, a2, v65, a1);

  v7 = sub_100082958(a2, sub_10008391C);
  v8 = 0;
  v9 = v7[2];
  v10 = v7 + 5;
  while (v9 != v8)
  {
    if (v8 >= v7[2])
    {
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    v8 = (v8 + 1);
    v11 = *v10;
    v12 = *(v10 - 1);
    sub_100082BC8(v12, v11, v65, &v64);

    v10 += 2;
  }

  v13 = *(v65[0] + 64);
  v52 = v65[0] + 64;
  v14 = 1 << *(v65[0] + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & v13;
  v17 = (v14 + 63) >> 6;
  v54 = enum case for DispatchQoS.QoSClass.default(_:);
  v53 = (v4 + 104);
  v55 = (v4 + 8);
  v58 = v65[0];
  swift_bridgeObjectRetain_n();
  v18 = 0;
  if (v16)
  {
    while (1)
    {
      v19 = v18;
LABEL_13:
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v21 = *(*(v58 + 56) + ((v19 << 9) | (8 * v20)));
      v60 = v21;
      v59 = sub_1000831AC(v21);
      v22 = sub_100002BC0(0, &qword_10026CFB0, OS_dispatch_queue_ptr);
      v24 = v56;
      v23 = v57;
      (*v53)(v56, v54, v57);

      v25 = a1;
      v26 = static OS_dispatch_queue.global(qos:)();
      (*v55)(v24, v23);
      v62 = v22;
      v63 = &protocol witness table for OS_dispatch_queue;
      v61[0] = v26;
      v27 = swift_allocObject();
      *(v27 + 16) = sub_100083BBC;
      *(v27 + 24) = v25;
      v28 = objc_allocWithZone(NSLock);
      v29 = v26;

      v30 = [v28 init];
      v31 = swift_allocObject();
      *(v31 + 16) = v30;
      *(v31 + 24) = v27;
      v32 = swift_allocObject();
      *(v32 + 16) = v30;
      *(v32 + 24) = v27;
      v33 = v30;
      swift_retain_n();
      v9 = v33;
      Promise.then(perform:orCatchError:on:)();

      a1 = v25;

      sub_100002C00(v61);
      if (!v16)
      {
        goto LABEL_9;
      }
    }
  }

  while (1)
  {
LABEL_9:
    v19 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      __break(1u);
      goto LABEL_24;
    }

    if (v19 >= v17)
    {
      break;
    }

    v16 = *(v52 + 8 * v19);
    ++v18;
    if (v16)
    {
      v18 = v19;
      goto LABEL_13;
    }
  }

  v34 = v58;

  if (v64 == 1)
  {
    sub_1000831AC(0);
    v35 = sub_100002BC0(0, &qword_10026CFB0, OS_dispatch_queue_ptr);
    v37 = v56;
    v36 = v57;
    (*v53)(v56, v54, v57);

    v38 = static OS_dispatch_queue.global(qos:)();
    (*v55)(v37, v36);
    v62 = v35;
    v63 = &protocol witness table for OS_dispatch_queue;
    v61[0] = v38;
    v39 = swift_allocObject();
    *(v39 + 16) = sub_100083934;
    *(v39 + 24) = a1;
    v40 = objc_allocWithZone(NSLock);
    v41 = v38;

    v42 = [v40 init];
    v43 = swift_allocObject();
    *(v43 + 16) = v42;
    *(v43 + 24) = v39;
    v44 = swift_allocObject();
    *(v44 + 16) = v42;
    *(v44 + 24) = v39;
    v45 = v42;
    swift_retain_n();
    v46 = v45;
    Promise.then(perform:orCatchError:on:)();

    sub_100002C00(v61);
  }

  if (!*(v34 + 16))
  {
    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    type metadata accessor for LogInterpolation();
    v9 = swift_allocObject();
    v9[1] = xmmword_1001E5F70;
    v62 = type metadata accessor for AccountsObserver();
    v61[0] = a1;

    v47 = AMSLogKey();
    if (v47)
    {
      v48 = v47;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(v61);
    LogInterpolation.init(stringLiteral:)();
    if (qword_1002686B0 != -1)
    {
LABEL_25:
      swift_once();
    }

    v49 = static os_log_type_t.default.getter();
    sub_1000036B0(v49, v9);
  }
}

id sub_100082924(void *a1)
{
  v1 = a1;
  sub_100081854(v1);
  return v1;
}

void *sub_100082958(uint64_t a1, uint64_t (*a2)(void))
{
  v2 = a1;
  v3 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v3)
  {
    sub_10009B700(0, v3, 0);
    v7 = sub_100083958(v2);
    result = _swiftEmptyArrayStorage;
    v8 = 0;
    v9 = v2 + 64;
    v31 = v2 + 72;
    v32 = v3;
    v33 = v2 + 64;
    if ((v7 & 0x8000000000000000) == 0)
    {
      while (v7 < 1 << *(v2 + 32))
      {
        v10 = v7 >> 6;
        if ((*(v9 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
        {
          goto LABEL_23;
        }

        if (*(v2 + 36) != v5)
        {
          goto LABEL_24;
        }

        v35 = v6;
        v36 = v8;
        v37 = v5;
        v11 = result;
        v12 = *(*(v2 + 56) + 8 * v7);
        v13 = a2();
        v15 = v14;

        result = v11;
        v38 = v11;
        v16 = v2;
        v18 = result[2];
        v17 = result[3];
        if (v18 >= v17 >> 1)
        {
          sub_10009B700((v17 > 1), v18 + 1, 1);
          result = v38;
        }

        result[2] = v18 + 1;
        v19 = &result[2 * v18];
        v19[4] = v13;
        v19[5] = v15;
        v20 = 1 << *(v16 + 32);
        if (v7 >= v20)
        {
          goto LABEL_25;
        }

        v9 = v33;
        v21 = *(v33 + 8 * v10);
        if ((v21 & (1 << v7)) == 0)
        {
          goto LABEL_26;
        }

        v2 = v16;
        if (*(v16 + 36) != v37)
        {
          goto LABEL_27;
        }

        v22 = v21 & (-2 << (v7 & 0x3F));
        if (v22)
        {
          v20 = __clz(__rbit64(v22)) | v7 & 0x7FFFFFFFFFFFFFC0;
          v23 = v32;
        }

        else
        {
          v24 = v10 << 6;
          v25 = v10 + 1;
          v23 = v32;
          v26 = (v31 + 8 * v10);
          while (v25 < (v20 + 63) >> 6)
          {
            v28 = *v26++;
            v27 = v28;
            v24 += 64;
            ++v25;
            if (v28)
            {
              v29 = result;
              sub_100083998(v7, v37, v35 & 1);
              result = v29;
              v20 = __clz(__rbit64(v27)) + v24;
              goto LABEL_18;
            }
          }

          v30 = result;
          sub_100083998(v7, v37, v35 & 1);
          result = v30;
        }

LABEL_18:
        v8 = v36 + 1;
        if (v36 + 1 == v23)
        {
          return result;
        }

        v6 = 0;
        v5 = *(v2 + 36);
        v7 = v20;
        if (v20 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

  return result;
}

void *sub_100082BC8(void *result, uint64_t a2, uint64_t *a3, _BYTE *a4)
{
  if (!a2)
  {
    return result;
  }

  v6 = a2;
  v7 = result;
  result = sub_100026484(result, &selRef_identifier);
  if (!v8)
  {
    return result;
  }

  v9 = [v7 ams_DSID];
  if (!v9)
  {

    *a4 = 1;
    if ((v6 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v10 = v9;
  swift_isUniquelyReferenced_nonNull_native();
  v11 = *a3;
  sub_1000AC0A8();
  *a3 = v11;

  if (v6)
  {
LABEL_5:
    sub_100082D10(v7);
  }

LABEL_6:
  if ((v6 & 0x10) != 0)
  {
    if (qword_1002685E0 != -1)
    {
      swift_once();
    }

    sub_100092ADC();
  }

  return sub_100049578(v7);
}

void sub_100082D10(void *a1)
{
  if ([a1 ams_isiTunesAccount])
  {
    if (qword_100268608 != -1)
    {
      swift_once();
    }

    v2 = *(qword_100287788 + 16);
    sub_100004AA0();
    v3 = swift_allocObject();
    *(v3 + 16) = a1;
    v7[4] = sub_100083950;
    v7[5] = v3;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 1107296256;
    v7[2] = sub_100177E30;
    v7[3] = &unk_1002465C0;
    v4 = _Block_copy(v7);
    v5 = v2;
    v6 = a1;

    [v5 setUpCacheForAccount:v6 completion:v4];
    _Block_release(v4);
  }
}

uint64_t sub_100082E44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v5 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v5);
  if (a2)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1001E5F60;
    v16 = type metadata accessor for AccountsObserver();
    v15[0] = a3;

    v7 = AMSLogKey();
    if (v7)
    {
      v8 = v7;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(v15);
    LogInterpolation.init(stringLiteral:)();
    swift_getErrorValue();
    v16 = v14;
    sub_100017E64(v15);
    sub_1000047A4();
    (*(v11 + 16))();
    static LogInterpolation.safe(_:)();
    sub_100009FB0(v15, &qword_10026D350, &qword_1001E6050);
    if (qword_1002686B0 != -1)
    {
      sub_100002D44(&qword_1002686B0);
    }

    v12 = static os_log_type_t.error.getter();
  }

  else
  {
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1001E5F70;
    v16 = type metadata accessor for AccountsObserver();
    v15[0] = a3;

    v9 = AMSLogKey();
    if (v9)
    {
      v10 = v9;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    sub_100009DBC();
    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(v15);
    LogInterpolation.init(stringLiteral:)();
    if (qword_1002686B0 != -1)
    {
      sub_100002D44(&qword_1002686B0);
    }

    v12 = static os_log_type_t.default.getter();
  }

  sub_1000036B0(v12, v6);
}

uint64_t sub_10008312C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  [*(a1 + 72) lock];
  sub_100082160(a2, a3);
  [*(a1 + 72) unlock];
}

uint64_t sub_1000831AC(void *a1)
{
  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  sub_100003EFC();
  v3 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v3);
  v4 = sub_10000A92C();
  *(v4 + 16) = xmmword_1001E5F70;
  v17 = type metadata accessor for AccountsObserver();
  *&v16 = v1;

  v5 = AMSLogKey();
  if (v5)
  {
    v6 = v5;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(&v16);
  LogInterpolation.init(stringLiteral:)();
  if (qword_1002686B0 != -1)
  {
    sub_100002D44(&qword_1002686B0);
  }

  v7 = static os_log_type_t.default.getter();
  sub_1000036B0(v7, v4);

  sub_10007B9A4(&qword_10026FE80, &unk_1001E6270);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001E5F70;
  *(inited + 32) = 0x707954746E657665;
  *(inited + 40) = 0xE900000000000065;
  strcpy((inited + 48), "AccountChanged");
  *(inited + 63) = -18;
  *(inited + 72) = &type metadata for String;
  *(inited + 80) = 0x656372756F73;
  *(inited + 120) = &type metadata for String;
  *(inited + 88) = 0xE600000000000000;
  strcpy((inited + 96), "amsengagementd");
  *(inited + 111) = -18;
  Dictionary.init(dictionaryLiteral:)();
  if (a1)
  {
    v17 = sub_100002BC0(0, &qword_10026AF10, NSNumber_ptr);
    *&v16 = a1;
    sub_100002C4C(&v16, &v15);
    v9 = a1;
    swift_isUniquelyReferenced_nonNull_native();
    sub_10000DFC4();
  }

  sub_10007B9A4(&qword_1002697F0, &qword_1001EBCF0);
  sub_100002BC0(0, &qword_10026CFE0, AMSBag_ptr);
  v10 = sub_10002411C(0x6761676E45534D41, 0xED0000746E656D65, 49, 0xE100000000000000);
  v11 = [objc_allocWithZone(AMSEngagement) initWithBag:v10];

  sub_10005DFA4();

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v13 = [v11 enqueueData:isa];

  return Promise<A>.init(_:)();
}

uint64_t sub_100083554()
{

  return v0;
}

uint64_t sub_1000835B4()
{
  sub_100083554();

  return swift_deallocClassInstance();
}

uint64_t sub_1000835E8(char a1, uint64_t a2, void *a3)
{
  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  type metadata accessor for LogInterpolation();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1001E61C0;
  LogInterpolation.init(stringLiteral:)();
  v7 = [a3 ams_DSID];
  v8 = v7;
  if (v7)
  {
    v7 = sub_100002BC0(0, &qword_10026AF10, NSNumber_ptr);
  }

  else
  {
    *(&v13 + 1) = 0;
    *&v14 = 0;
  }

  *&v13 = v8;
  *(&v14 + 1) = v7;
  static LogInterpolation.sensitive(_:)();
  sub_100009FB0(&v13, &qword_10026D350, &qword_1001E6050);
  LogInterpolation.init(stringLiteral:)();
  *(&v14 + 1) = &type metadata for Bool;
  LOBYTE(v13) = a1 & 1;
  static LogInterpolation.safe(_:)();
  sub_100009FB0(&v13, &qword_10026D350, &qword_1001E6050);
  if (a2)
  {
    swift_getErrorValue();
    *(&v14 + 1) = v12;
    v9 = sub_100017E64(&v13);
    (*(*(v12 - 8) + 16))(v9);
  }

  else
  {
    v13 = 0u;
    v14 = 0u;
  }

  static LogInterpolation.safe(_:)();
  sub_100009FB0(&v13, &qword_10026D350, &qword_1001E6050);
  if (qword_1002686B0 != -1)
  {
    swift_once();
  }

  v10 = static os_log_type_t.default.getter();
  sub_1000036B0(v10, v6);
}

uint64_t sub_10008386C()
{
  v3 = *(v0 + 32);
  v2 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v5 = sub_100004A88(v4);

  return sub_100081D28(v5, v6, v7, v3, v2);
}

uint64_t sub_100083998(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_1000839AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10007B9A4(&qword_100269860, &qword_1001E6300);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100083A5C()
{
  result = qword_100269890;
  if (!qword_100269890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100269890);
  }

  return result;
}

unint64_t sub_100083AB4()
{
  result = qword_100269898;
  if (!qword_100269898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100269898);
  }

  return result;
}

unint64_t sub_100083B0C()
{
  result = qword_1002698A0;
  if (!qword_1002698A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002698A0);
  }

  return result;
}

unint64_t sub_100083B64()
{
  result = qword_1002698A8;
  if (!qword_1002698A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002698A8);
  }

  return result;
}

id sub_100083BC8(uint64_t a1)
{
  v2 = [objc_opt_self() ams_sharedAccountStore];
  v3 = sub_100083C20(a1);

  return v3;
}

id sub_100083C20(uint64_t a1)
{
  v2 = [objc_allocWithZone(NSNumber) initWithInteger:a1];
  v3 = [v1 ams_iTunesAccountWithDSID:v2];

  return v3;
}

id sub_100083C8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, NSString a5)
{
  if (a3)
  {
    v8 = String._bridgeToObjectiveC()();
  }

  else
  {
    v8 = 0;
  }

  v9 = [objc_allocWithZone(NSNumber) initWithInteger:a1];
  if (a5)
  {
    a5 = String._bridgeToObjectiveC()();
  }

  v10 = [v5 ams_accountWithAltDSID:v8 DSID:v9 username:a5 accountTypeIdentifier:ACAccountTypeIdentifieriTunesStore];

  return v10;
}

unint64_t sub_100083D8C(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1002442B8, v2);

  if (v3 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v3;
  }
}

void *sub_100083DD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = String._bridgeToObjectiveC()();

  v7 = *(a1 + 16);
  if (v7)
  {
    v8 = (a1 + 32);
    v27 = _swiftEmptyArrayStorage;
    while (1)
    {
      v9 = *v8;

      AnyHashable.init<A>(_:)();
      if (!*(v9 + 16))
      {
        break;
      }

      v10 = sub_10000C818(v28);
      if ((v11 & 1) == 0)
      {
        break;
      }

      sub_100011BAC(*(v9 + 56) + 32 * v10, v29);
      sub_10000E1E8(v28);
      if ((swift_dynamicCast() & 1) == 0)
      {

        goto LABEL_9;
      }

      v30._countAndFlagsBits = 0x6C436E6F69746361;
      v30._object = 0xEB00000000737361;
      v12 = sub_100083D8C(v30);
      switch(v12)
      {
        case 1:
          type metadata accessor for CacheDataAction();
          goto LABEL_24;
        case 2:
          type metadata accessor for CarrierOfferRegistrationAction();
          goto LABEL_24;
        case 3:
          type metadata accessor for OpenURLAction();
          goto LABEL_24;
        case 4:
          type metadata accessor for EnqueueAction();
          goto LABEL_24;
        case 5:
          type metadata accessor for FollowUpNotificationAction();
          goto LABEL_24;
        case 6:
          type metadata accessor for MessageAction();
          goto LABEL_24;
        case 7:
          type metadata accessor for SyncAction();
          goto LABEL_24;
        case 8:
          type metadata accessor for SystemEngagementAction();
          goto LABEL_24;
        case 9:
          type metadata accessor for UserNotificationAction();
          goto LABEL_24;
        case 10:
          goto LABEL_29;
        default:
          type metadata accessor for BadgingAction();
LABEL_24:
          type metadata accessor for MessageAction();
          if (swift_dynamicCastMetatype() && (a5 & 1) != 0)
          {
            sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
            type metadata accessor for LogInterpolation();
            v16 = sub_100004EAC();
            *(v16 + 16) = xmmword_1001E5F70;
            v17 = type metadata accessor for ActionRunner();
            sub_100002DA4(v17);
            LogInterpolation.init(stringLiteral:)();
            if (qword_1002686B0 != -1)
            {
              sub_100006914();
              swift_once();
            }

            v18 = static os_log_type_t.info.getter();
            sub_1000036B0(v18, v16);

LABEL_29:
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_1000D4DDC(0, v27[2] + 1, 1, v27);
              v27 = v22;
            }

            v20 = v27[2];
            v19 = v27[3];
            if (v20 >= v19 >> 1)
            {
              sub_1000D4DDC(v19 > 1, v20 + 1, 1, v27);
              v27 = v23;
            }

            v27[2] = v20 + 1;
            v27[v20 + 4] = v9;
          }

          else
          {
            v21 = &off_10024FD70;
            switch(v12)
            {
              case 1:
                type metadata accessor for CacheDataAction();
                v21 = &off_100247E40;
                break;
              case 2:
                type metadata accessor for CarrierOfferRegistrationAction();
                v21 = &off_100247E50;
                break;
              case 3:
                type metadata accessor for OpenURLAction();
                v21 = &off_100250EE8;
                break;
              case 4:
                type metadata accessor for EnqueueAction();
                v21 = &off_10024B468;
                break;
              case 5:
                type metadata accessor for FollowUpNotificationAction();
                v21 = &off_10024B928;
                break;
              case 6:
                break;
              case 7:
                type metadata accessor for SyncAction();
                v21 = &off_100252970;
                break;
              case 8:
                type metadata accessor for SystemEngagementAction();
                v21 = &off_1002529A8;
                break;
              case 9:
                type metadata accessor for UserNotificationAction();
                v21 = &off_1002542B0;
                break;
              default:
                type metadata accessor for BadgingAction();
                v21 = &off_100247E10;
                break;
            }

            (v21[1])(v9, a2);
          }

          break;
      }

LABEL_12:
      ++v8;
      if (!--v7)
      {
        return v27;
      }
    }

    sub_10000E1E8(v28);
LABEL_9:
    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    type metadata accessor for LogInterpolation();
    v13 = sub_100004EAC();
    *(v13 + 16) = xmmword_1001E5F70;
    v14 = type metadata accessor for ActionRunner();
    sub_100002DA4(v14);
    LogInterpolation.init(stringLiteral:)();
    if (qword_1002686B0 != -1)
    {
      sub_100006914();
      swift_once();
    }

    v15 = static os_log_type_t.error.getter();
    sub_1000036B0(v15, v13);

    goto LABEL_12;
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_1000843D8(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, void *a10, void *a11, void *a12)
{
  v13 = v12;
  v117 = a8;
  v108 = a5;
  v109 = a7;
  v105 = a2;
  v106 = a4;
  v17 = a1;
  v104 = a1;
  v112 = a12;
  v107 = a9;
  v97 = type metadata accessor for URL();
  sub_100002CC4();
  v96 = v18;
  __chkstk_darwin(v19);
  sub_100002DEC();
  v95 = v21 - v20;
  sub_100003D1C();
  v103 = type metadata accessor for FileStoreError();
  sub_100002CC4();
  v98 = v22;
  __chkstk_darwin(v23);
  sub_100002DEC();
  v102 = v25 - v24;
  v26 = sub_100003D1C();
  v99 = type metadata accessor for MediaCatalogSyncState(v26);
  sub_100002DDC();
  __chkstk_darwin(v27);
  sub_1000056E8();
  v100 = v28 - v29;
  sub_100003F08();
  v31 = __chkstk_darwin(v30);
  v33 = &v95 - v32;
  __chkstk_darwin(v31);
  v35 = &v95 - v34;
  swift_defaultActor_initialize();
  v36 = (v13 + OBJC_IVAR____TtC14amsengagementd21MediaCatalogSyncActor_identifier);
  *v36 = v17;
  *(v36 + 1) = a2;
  *(v36 + 2) = a3;
  v101 = v36;
  v37 = (v13 + OBJC_IVAR____TtC14amsengagementd21MediaCatalogSyncActor_requester);
  v38 = v108;
  *v37 = v106;
  v37[1] = v38;
  v39 = (v13 + OBJC_IVAR____TtC14amsengagementd21MediaCatalogSyncActor_store);
  v40 = a6;
  *v39 = a6;
  v108 = v39;
  v41 = v109;
  v39[1] = v109;
  v42 = (v13 + OBJC_IVAR____TtC14amsengagementd21MediaCatalogSyncActor_pageStore);
  v43 = v107;
  *v42 = v117;
  v42[1] = v43;
  v106 = OBJC_IVAR____TtC14amsengagementd21MediaCatalogSyncActor_bag;
  *(v13 + OBJC_IVAR____TtC14amsengagementd21MediaCatalogSyncActor_bag) = a10;
  v107 = OBJC_IVAR____TtC14amsengagementd21MediaCatalogSyncActor_coordinator;
  v117 = a11;
  sub_1000262E4(a11, v13 + OBJC_IVAR____TtC14amsengagementd21MediaCatalogSyncActor_coordinator);
  v44 = (v13 + OBJC_IVAR____TtC14amsengagementd21MediaCatalogSyncActor_scheduler);
  v45 = v110;
  *v44 = v112;
  v44[1] = v45;
  v46 = *(v41 + 8);

  v112 = a10;
  v47 = v111;
  v46(v104, v105, a3, v40, v41);
  if (!v47)
  {

    sub_1000061C0();
    sub_10008A33C(v35, v13 + v60, v61);
    if (qword_1002686F8 != -1)
    {
      sub_100002DC8();
      swift_once();
    }

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    sub_100002DFC();
    v62 = type metadata accessor for LogInterpolation();
    sub_100002CFC(v62);
    sub_100007E58();
    sub_100017CF0();
    v63 = swift_allocObject();
    *(v63 + 16) = xmmword_1001E5F60;
    v116 = type metadata accessor for MediaCatalogSyncActor(0);
    v113 = v13;

    v64 = AMSLogKey();
    if (v64)
    {
      v65 = v64;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    sub_100061E2C();

    sub_100002C00(&v113);
    LogInterpolation.init(stringLiteral:)();
    v88 = *(v13 + OBJC_IVAR____TtC14amsengagementd21MediaCatalogSyncActor_identifier);
    v89 = *(v13 + OBJC_IVAR____TtC14amsengagementd21MediaCatalogSyncActor_identifier + 8);
    v115 = *(v13 + OBJC_IVAR____TtC14amsengagementd21MediaCatalogSyncActor_identifier + 16);
    v116 = &type metadata for MediaCatalogSyncIdentifier;
    LOBYTE(v113) = v88;
    v114 = v89;

    static LogInterpolation.traceableSensitive(_:)();
    sub_10000A00C(&v113, &qword_10026D350, &qword_1001E6050);
    v90 = static os_log_type_t.default.getter();
    sub_1000036B0(v90, v63);

    goto LABEL_16;
  }

  v113 = v47;
  swift_errorRetain();
  sub_10007B9A4(&unk_100270B70, &unk_1001E8F60);
  v49 = v102;
  v48 = v103;
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_10:
    v111 = v47;

    v66 = *v101;
    v68 = *(v101 + 1);
    v67 = *(v101 + 2);
    v69 = v99;
    v70 = type metadata accessor for Date();
    sub_100004798();
    sub_10000A7C0(v71, v72, v73, v70);
    sub_100004798();
    sub_10000A7C0(v74, v75, v76, v70);

    static Date.distantPast.getter();
    *v33 = v66;
    *(v33 + 1) = v68;
    *(v33 + 2) = v67;
    *(v33 + 24) = 0u;
    *(v33 + 40) = 0u;
    v33[v69[8]] = 2;
    *&v33[v69[11]] = 0;
    *&v33[v69[12]] = _swiftEmptyArrayStorage;
    v77 = OBJC_IVAR____TtC14amsengagementd21MediaCatalogSyncActor_state;
    sub_1000061C0();
    sub_10008A33C(v33, v13 + v77, v78);
    v80 = *v108;
    v79 = v108[1];
    sub_1000060C4();
    swift_beginAccess();
    sub_100004ED4();
    v81 = v13 + v77;
    v82 = v100;
    sub_10008A398(v81, v100, v83);
    (*(v79 + 16))(v82, v80, v79);
    sub_100006928();
    sub_10008A630();
    if (qword_1002686F8 != -1)
    {
      sub_100002DC8();
      swift_once();
    }

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    sub_100002DFC();
    v84 = type metadata accessor for LogInterpolation();
    sub_100002CFC(v84);
    sub_100007E58();
    sub_100017CF0();
    v85 = swift_allocObject();
    *(v85 + 16) = xmmword_1001E5F60;
    v116 = type metadata accessor for MediaCatalogSyncActor(0);
    v113 = v13;

    v86 = AMSLogKey();
    if (v86)
    {
      v87 = v86;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    sub_100061E2C();

    sub_100002C00(&v113);
    LogInterpolation.init(stringLiteral:)();
    v91 = *(v13 + OBJC_IVAR____TtC14amsengagementd21MediaCatalogSyncActor_identifier);
    v92 = *(v13 + OBJC_IVAR____TtC14amsengagementd21MediaCatalogSyncActor_identifier + 8);
    v115 = *(v13 + OBJC_IVAR____TtC14amsengagementd21MediaCatalogSyncActor_identifier + 16);
    v116 = &type metadata for MediaCatalogSyncIdentifier;
    LOBYTE(v113) = v91;
    v114 = v92;

    static LogInterpolation.traceableSensitive(_:)();
    sub_10000A00C(&v113, &qword_10026D350, &qword_1001E6050);
    v93 = static os_log_type_t.default.getter();
    sub_1000036B0(v93, v85);

LABEL_16:
    sub_100002C00(v117);
    return v13;
  }

  v50 = v98;
  v51 = (*(v98 + 88))(v49, v48);
  if (v51 != enum case for FileStoreError.fileIsLockedAwaitingFirstDeviceUnlock(_:))
  {
    (*(v50 + 8))(v49, v48);
    goto LABEL_10;
  }

  v52 = v51;

  (*(v50 + 96))(v49, v48);
  v53 = v96;
  v54 = v95;
  v55 = v49;
  v56 = v97;
  (*(v96 + 32))(v95, v55, v97);
  sub_10008A3F4(&qword_100269AA8, &type metadata accessor for FileStoreError, &protocol conformance descriptor for FileStoreError);
  swift_allocError();
  v58 = v57;
  v59 = *(sub_10007B9A4(&qword_100269AB0, &unk_1001E6670) + 48);
  (*(v53 + 16))(v58, v54, v56);
  *(v58 + v59) = default argument 1 of FileStoreError.fileIsLockedAwaitingFirstDeviceUnlock(_:)();
  (*(v50 + 104))(v58, v52, v103);
  swift_willThrow();
  (*(v53 + 8))(v54, v56);

  sub_100002C00((v13 + v107));
  type metadata accessor for MediaCatalogSyncActor(0);
  swift_defaultActor_destroy();

  sub_100002C00(v117);
  swift_deallocPartialClassInstance();
  return v13;
}

uint64_t sub_100084DB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v92 = a5;
  v11 = sub_10007B9A4(&unk_100271EA0, &qword_1001E77F0);
  sub_100003D10(v11);
  sub_100004E78();
  __chkstk_darwin(v12);
  sub_10001BD5C();
  v89 = type metadata accessor for Date();
  sub_100002CC4();
  v84 = v13;
  __chkstk_darwin(v14);
  sub_100002DEC();
  v17 = v16 - v15;
  v18 = type metadata accessor for MediaCatalogSyncState(0);
  sub_100002DDC();
  __chkstk_darwin(v19);
  sub_1000056E8();
  v82 = v20 - v21;
  sub_100003F08();
  __chkstk_darwin(v22);
  v83 = &v81 - v23;
  sub_100003F08();
  __chkstk_darwin(v24);
  v26 = &v81 - v25;
  v98 = v5;
  v27 = v5 + OBJC_IVAR____TtC14amsengagementd21MediaCatalogSyncActor_state;
  sub_1000060C4();
  swift_beginAccess();
  sub_100004ED4();
  v91 = v27;
  sub_10008A398(v27, v26, v28);
  v85 = a1;
  v86 = a2;
  v87 = a3;
  v88 = a4;
  sub_1000CEE1C(a1, v95);
  if (*(&v95[0] + 1))
  {
    v29 = v96;
    v30 = v18;
    v31 = v97;
    sub_10000A00C(v95, &qword_100269AE8, &qword_1001E94D0);
    v32 = (v31 & 1) == 0;
    v18 = v30;
    if (v32)
    {
      v33 = v29;
    }

    else
    {
      v33 = 120.0;
    }
  }

  else
  {
    v33 = 120.0;
  }

  sub_10008A2E0(&v26[v18[9]], v6, &unk_100271EA0, &qword_1001E77F0);
  v34 = v89;
  if (sub_100009F34(v6, 1, v89) == 1)
  {
    sub_100006928();
    sub_10008A630();
    sub_10000A00C(v6, &unk_100271EA0, &qword_1001E77F0);
  }

  else
  {
    v35 = v84;
    (*(v84 + 32))(v17, v6, v34);
    Date.timeIntervalSince(_:)();
    v37 = v36;
    (*(v35 + 8))(v17, v34);
    sub_100006928();
    sub_10008A630();
    if (v33 >= v37)
    {
      if (qword_1002686F8 != -1)
      {
        sub_100002DC8();
        swift_once();
      }

      sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
      v62 = type metadata accessor for LogInterpolation();
      sub_100002CFC(v62);
      sub_1000056F8();
      v63 = swift_allocObject();
      *(v63 + 16) = xmmword_1001E5F60;
      v94 = type metadata accessor for MediaCatalogSyncActor(0);
      v93[0] = v98;

      v64 = AMSLogKey();
      if (v64)
      {
        v65 = v64;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      static LogInterpolation.prefix(_:_:)();

      sub_100002C00(v93);
      LogInterpolation.init(stringLiteral:)();
      v94 = v18;
      sub_100017E64(v93);
      sub_100004ED4();
      v38 = v91;
      sub_10008A398(v91, v66, v67);
      static LogInterpolation.sensitive(_:)();
      sub_10000A00C(v93, &qword_10026D350, &qword_1001E6050);
      v68 = static os_log_type_t.default.getter();
      sub_1000036B0(v68, v63);

      v53 = v98;
      goto LABEL_20;
    }
  }

  v38 = v91;
  v39 = *(v91 + v18[8]);
  if (v39 == 2 || (v39 & 1) == 0)
  {
    v56 = sub_10000A7F4();
    v53 = v98;
    v57 = v90;
    result = sub_100085468(v56, v58, v59, v60, v61);
    if (v57)
    {
      return result;
    }
  }

  else
  {
    sub_100004ED4();
    v40 = v82;
    sub_10008A398(v38, v82, v41);
    v42 = *v40;
    v43 = v18;
    v45 = *(v40 + 8);
    v44 = *(v40 + 16);
    v46 = v83;
    sub_100004798();
    sub_10000A7C0(v47, v48, v49, v34);
    sub_100004798();
    sub_10000A7C0(v50, v51, v52, v34);

    static Date.distantPast.getter();
    sub_100006928();
    sub_10008A630();
    *v46 = v42;
    *(v46 + 8) = v45;
    *(v46 + 16) = v44;
    v18 = v43;
    *(v46 + 24) = 0u;
    *(v46 + 40) = 0u;
    *(v46 + v43[8]) = 2;
    *(v46 + v43[11]) = 0;
    *(v46 + v43[12]) = _swiftEmptyArrayStorage;
    v53 = v98;
    v54 = v90;
    sub_100088F00(v46, 0x6F63207465736552, 0xEF646574656C706DLL);
    if (v54)
    {
      sub_100006928();
      return sub_10008A630();
    }

    v76 = sub_10000A7F4();
    sub_100084DB4(v76, v77, v78, v79, v80);
    sub_100006928();
    sub_10008A630();
    v38 = v91;
  }

LABEL_20:
  v70 = *(v53 + OBJC_IVAR____TtC14amsengagementd21MediaCatalogSyncActor_pageStore);
  v69 = *(v53 + OBJC_IVAR____TtC14amsengagementd21MediaCatalogSyncActor_pageStore + 8);
  v71 = *(v53 + OBJC_IVAR____TtC14amsengagementd21MediaCatalogSyncActor_identifier + 8);
  v72 = *(v53 + OBJC_IVAR____TtC14amsengagementd21MediaCatalogSyncActor_identifier + 16);
  v73 = *(v38 + v18[12]);
  v74 = *(v69 + 24);
  v75 = *(v53 + OBJC_IVAR____TtC14amsengagementd21MediaCatalogSyncActor_identifier);

  v74(v75, v71, v72, v73, v70, v69);
}

uint64_t sub_100085468(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v138 = a3;
  v8 = v6;
  v143 = a5;
  v139 = a4;
  sub_100002DFC();
  v135 = type metadata accessor for Date();
  sub_100002CC4();
  v133 = v10;
  v12 = __chkstk_darwin(v11);
  v131 = v122 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = v13;
  __chkstk_darwin(v12);
  v126 = v122 - v14;
  v15 = sub_10007B9A4(&unk_10026FEC0, &qword_1001E6280);
  sub_100003D10(v15);
  sub_100004E78();
  __chkstk_darwin(v16);
  v132 = v122 - v17;
  sub_100003D1C();
  v18 = type metadata accessor for LogInterpolation.StringInterpolation();
  v19 = sub_100003D10(v18);
  __chkstk_darwin(v19);
  sub_100002DEC();
  v130 = v21 - v20;
  v22 = sub_100003D1C();
  v23 = type metadata accessor for MediaCatalogSyncScheduleAction(v22);
  v24 = sub_100003D10(v23);
  __chkstk_darwin(v24);
  sub_1000056E8();
  v129 = v25 - v26;
  sub_100003F08();
  __chkstk_darwin(v27);
  v136 = v122 - v28;
  v29 = sub_100003D1C();
  v30 = type metadata accessor for MediaCatalogSyncState(v29);
  v31 = sub_100003D10(v30);
  __chkstk_darwin(v31);
  sub_100002DEC();
  v34 = (v33 - v32);
  v35 = sub_10007B9A4(&qword_100269AC8, &qword_1001E6698);
  sub_100003D10(v35);
  sub_100004E78();
  __chkstk_darwin(v36);
  v37 = sub_10001BD5C();
  v134 = type metadata accessor for MediaCatalogSyncScheduleModel(v37);
  sub_100002CC4();
  v124 = v38;
  v40 = *(v39 + 64);
  v42 = __chkstk_darwin(v41);
  __chkstk_darwin(v42);
  v44 = v122 - v43;
  v45 = OBJC_IVAR____TtC14amsengagementd21MediaCatalogSyncActor_state;
  sub_1000060C4();
  swift_beginAccess();
  sub_100004ED4();
  sub_10008A398(v8 + v45, v34, v46);
  v127 = a2;
  v128 = v5;
  v47 = v137;
  sub_1000DA530(v34, v5, a2, v138, v139, v143, v7);
  sub_100006928();
  result = sub_10008A630();
  if (!v47)
  {
    v122[2] = v40;
    v123 = v122 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
    v137 = v44;
    v49 = v134;
    v50 = v135;
    if (sub_100009F34(v7, 1, v134) == 1)
    {
      return sub_10000A00C(v7, &qword_100269AC8, &qword_1001E6698);
    }

    else
    {
      v122[1] = 0;
      sub_10001CC90();
      v51 = v137;
      sub_10008A33C(v7, v137, v52);
      v53 = *(v49 + 20);
      sub_10008A3F4(&qword_100269AD0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      if (dispatch thunk of static Comparable.< infix(_:_:)())
      {
        v54 = v133;
        v55 = v51 + v53;
        v56 = v136;
        (*(v133 + 16))(v136, v55, v50);
        v57 = 0;
      }

      else
      {
        v57 = 1;
        v54 = v133;
        v56 = v136;
      }

      v58 = sub_10007B9A4(&qword_100269AD8, &qword_1001E66A0);
      sub_10000A7C0(v56, v57, 1, v58);
      v59 = v56;
      v60 = v129;
      sub_10008A398(v59, v129, type metadata accessor for MediaCatalogSyncScheduleAction);
      v61 = sub_10007B9A4(&qword_100269AD8, &qword_1001E66A0);
      if (sub_100009F34(v60, 1, v61) == 1)
      {
        if (qword_1002686F8 != -1)
        {
          sub_100002DC8();
          swift_once();
        }

        v134 = qword_100287858;
        sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
        v62 = type metadata accessor for LogInterpolation();
        sub_100002CFC(v62);
        sub_1000056F8();
        v65 = v64 & ~v63;
        v66 = swift_allocObject();
        *(v66 + 16) = xmmword_1001E5F70;
        v67 = type metadata accessor for MediaCatalogSyncActor(0);
        sub_100016774(v67);
        v68 = AMSLogKey();
        if (v68)
        {
          v69 = v68;
          static String._unconditionallyBridgeFromObjectiveC(_:)();
        }

        static LogInterpolation.prefix(_:_:)();

        sub_100002C00(&v140);
        LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
        v79._countAndFlagsBits = 0xD00000000000002ELL;
        v79._object = 0x80000001001F39D0;
        LogInterpolation.StringInterpolation.appendLiteral(_:)(v79);
        v80 = sub_1000D0004(*(v65 + OBJC_IVAR____TtC14amsengagementd21MediaCatalogSyncActor_identifier), *(v65 + OBJC_IVAR____TtC14amsengagementd21MediaCatalogSyncActor_identifier + 8), *(v65 + OBJC_IVAR____TtC14amsengagementd21MediaCatalogSyncActor_identifier + 16));
        v142 = &type metadata for String;
        v140 = v80;
        v141 = v81;
        LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
        sub_10000A00C(&v140, &qword_10026D350, &qword_1001E6050);
        v82._countAndFlagsBits = 0;
        v82._object = 0xE000000000000000;
        LogInterpolation.StringInterpolation.appendLiteral(_:)(v82);
        LogInterpolation.init(stringInterpolation:)();
        v83 = static os_log_type_t.default.getter();
        sub_1000036B0(v83, v66);

        type metadata accessor for TaskPriority();
        sub_100004798();
        sub_10000A7C0(v84, v85, v86, v87);
        v88 = v126;
        v89 = v50;
        (*(v54 + 16))(v126, v143, v50);
        sub_100005ECC();
        v92 = sub_10008A3F4(v90, v91, &unk_1001E6630);
        v93 = v65;
        v94 = (*(v54 + 80) + 72) & ~*(v54 + 80);
        v95 = swift_allocObject();
        *(v95 + 2) = v93;
        *(v95 + 3) = v92;
        v97 = v127;
        v96 = v128;
        *(v95 + 4) = v93;
        *(v95 + 5) = v96;
        v98 = v138;
        v99 = v139;
        *(v95 + 6) = v97;
        *(v95 + 7) = v98;
        *(v95 + 8) = v99;
        (*(v54 + 32))(&v95[v94], v88, v89);

        swift_retain_n();

        sub_1000E349C();

        sub_10003AE50();
        sub_10000B2C8();
      }

      else
      {
        (*(v54 + 32))(v131, v60, v50);
        if (qword_1002686F8 != -1)
        {
          sub_100002DC8();
          swift_once();
        }

        v143 = qword_100287858;
        sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
        sub_100002DFC();
        v70 = type metadata accessor for LogInterpolation();
        sub_100002CFC(v70);
        sub_1000056F8();
        v73 = v72 & ~v71;
        v139 = v74;
        sub_100017CF0();
        v75 = swift_allocObject();
        *(v75 + 16) = xmmword_1001E5F70;
        v76 = type metadata accessor for MediaCatalogSyncActor(0);
        sub_100016774(v76);
        v77 = AMSLogKey();
        if (v77)
        {
          v78 = v77;
          static String._unconditionallyBridgeFromObjectiveC(_:)();
        }

        static LogInterpolation.prefix(_:_:)();

        sub_100002C00(&v140);
        LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
        v100._object = 0x80000001001F39A0;
        v100._countAndFlagsBits = 0xD000000000000027;
        LogInterpolation.StringInterpolation.appendLiteral(_:)(v100);
        v101 = sub_1000D0004(*(v73 + OBJC_IVAR____TtC14amsengagementd21MediaCatalogSyncActor_identifier), *(v73 + OBJC_IVAR____TtC14amsengagementd21MediaCatalogSyncActor_identifier + 8), *(v73 + OBJC_IVAR____TtC14amsengagementd21MediaCatalogSyncActor_identifier + 16));
        v142 = &type metadata for String;
        v140 = v101;
        v141 = v102;
        LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
        sub_10000A00C(&v140, &qword_10026D350, &qword_1001E6050);
        v103._countAndFlagsBits = 544108320;
        v103._object = 0xE400000000000000;
        LogInterpolation.StringInterpolation.appendLiteral(_:)(v103);
        v142 = v50;
        v104 = sub_100017E64(&v140);
        v105 = v133;
        (*(v133 + 16))(v104, v131, v50);
        LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
        sub_10000A00C(&v140, &qword_10026D350, &qword_1001E6050);
        v106._countAndFlagsBits = 0;
        v106._object = 0xE000000000000000;
        LogInterpolation.StringInterpolation.appendLiteral(_:)(v106);
        LogInterpolation.init(stringInterpolation:)();
        v107 = static os_log_type_t.default.getter();
        sub_1000036B0(v107, v75);

        type metadata accessor for TaskPriority();
        v108 = v132;
        sub_100004798();
        sub_10000A7C0(v109, v110, v111, v112);
        v113 = v123;
        sub_10008A398(v137, v123, type metadata accessor for MediaCatalogSyncScheduleModel);
        sub_100005ECC();
        v116 = sub_10008A3F4(v114, v115, &unk_1001E6630);
        v117 = v73;
        v118 = (*(v124 + 80) + 40) & ~*(v124 + 80);
        v119 = swift_allocObject();
        v119[2] = v117;
        v119[3] = v116;
        v119[4] = v117;
        sub_10001CC90();
        sub_10008A33C(v113, v120 + v118, v121);
        swift_retain_n();
        sub_1001A1E8C(0, 0, v108, &unk_1001E66B0, v119);

        (*(v105 + 8))(v131, v50);
        sub_10003AE50();
        sub_10000B2C8();
      }

      return sub_10008A630();
    }
  }

  return result;
}

uint64_t sub_100085F54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[17] = a8;
  v8[18] = v13;
  v8[15] = a6;
  v8[16] = a7;
  v8[13] = a4;
  v8[14] = a5;
  v10 = type metadata accessor for Date();
  v8[19] = v10;
  v8[20] = *(v10 - 8);
  v8[21] = swift_task_alloc();
  sub_10007B9A4(&qword_100269AC0, &unk_1001E6688);
  v8[22] = swift_task_alloc();
  type metadata accessor for MediaCatalogSyncState(0);
  v8[23] = swift_task_alloc();
  v8[24] = swift_task_alloc();
  v8[25] = swift_task_alloc();
  type metadata accessor for MediaCatalogSyncRequest(0);
  v8[26] = swift_task_alloc();

  return _swift_task_switch(sub_1000860D0, a4, 0);
}

uint64_t sub_1000860D0()
{
  if (qword_100268830 != -1)
  {
    sub_100006940(&qword_100268830);
  }

  v1 = v0[25];
  v2 = v0[13];
  v0[27] = qword_100287928;
  sub_100011C54(0xD00000000000001CLL, 0x80000001001F3920);
  v3 = OBJC_IVAR____TtC14amsengagementd21MediaCatalogSyncActor_state;
  sub_1000060C4();
  swift_beginAccess();
  sub_100004ED4();
  sub_10008A398(v2 + v3, v1, v4);
  sub_1000159BC();
  sub_1000D0DB0(v5, v6, v9, v7, v8);
  v10 = v0[23];
  v11 = v0[24];
  v20 = v0[17];
  v21 = v0[18];
  v12 = v0[16];
  v13 = v0[14];
  sub_10008A630();
  sub_100004ED4();
  sub_10008A398(v2 + v3, v10, v14);
  sub_1000E02C4(v10, v13, v12, v20, v21, v11);
  sub_10008A630();
  sub_100088F00(v11, 0xD000000000000010, 0x80000001001F3A40);
  swift_task_alloc();
  sub_100015B58();
  v0[28] = v15;
  *v15 = v16;
  v15[1] = sub_100086494;
  v17 = v0[26];
  v18 = v0[22];

  return sub_10008718C(v18, v17);
}

uint64_t sub_100086494()
{
  sub_100004768();
  sub_1000056A8();
  v1 = *v0;
  sub_100002D20();
  *v2 = v1;

  v3 = sub_1000047B0();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_10008658C()
{
  sub_100004768();
  static Date.now.getter();
  v1 = swift_task_alloc();
  *(v0 + 232) = v1;
  *v1 = v0;
  v1[1] = sub_100086628;

  return sub_100087788();
}

uint64_t sub_100086628()
{
  v2 = *v1;
  sub_100002D98();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 240) = v0;

  v5 = v2[21];
  v6 = v2[20];
  v7 = v2[19];
  v8 = v2[13];
  (*(v6 + 8))(v5, v7);
  if (v0)
  {
    v9 = sub_100086A2C;
  }

  else
  {
    v9 = sub_1000867A0;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_1000867A0()
{
  sub_100003D28();
  v1 = *(v0 + 176);
  sub_10001CB1C("mediaCatalogSyncPageDownload");
  sub_10000A00C(v1, &qword_100269AC0, &unk_1001E6688);
  sub_100006928();
  sub_10008A630();
  sub_1000056D0();
  sub_10008A630();

  sub_100002D8C();

  return v2();
}

uint64_t sub_100086880()
{
  sub_100004768();
  sub_1000056A8();
  v1 = *v0;
  sub_100002D20();
  *v2 = v1;

  v3 = sub_1000047B0();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_100086978()
{
  sub_100003D28();
  sub_10001CB1C("mediaCatalogSyncPageDownload");

  sub_100002D8C();

  return v0();
}

uint64_t sub_100086A2C()
{
  sub_100003D28();
  sub_10000A00C(v0[22], &qword_100269AC0, &unk_1001E6688);
  sub_100006928();
  sub_10008A630();
  sub_1000056D0();
  sub_10008A630();
  v0[31] = v0[30];
  if (qword_1002686F8 != -1)
  {
    sub_100002DC8();
    swift_once();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v1 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v1);
  sub_100007E58();
  v2 = swift_allocObject();
  sub_1000115C4(v2, xmmword_1001E5F70);
  LogInterpolation.init(stringLiteral:)();
  sub_10003D2CC();
  swift_getErrorValue();
  v0[5] = v0[10];
  sub_100017E64(v0 + 2);
  sub_1000047A4();
  (*(v3 + 16))();
  static LogInterpolation.traceableSensitive(_:)();
  sub_10000A00C((v0 + 2), &qword_10026D350, &qword_1001E6050);
  v4 = static os_log_type_t.error.getter();
  sub_1000036B0(v4, v2);

  v5 = swift_task_alloc();
  v0[32] = v5;
  *v5 = v0;
  sub_1000047C0(v5);

  return sub_1000881A8();
}

uint64_t sub_100086C30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[7] = type metadata accessor for MediaCatalogSyncState(0);
  v5[8] = swift_task_alloc();
  v5[9] = swift_task_alloc();

  return _swift_task_switch(sub_100086CD4, a4, 0);
}

uint64_t sub_100086CD4()
{
  sub_100005B90();
  v1 = v0[9];
  v2 = v0[5];
  v4 = *(v2 + OBJC_IVAR____TtC14amsengagementd21MediaCatalogSyncActor_scheduler);
  v3 = *(v2 + OBJC_IVAR____TtC14amsengagementd21MediaCatalogSyncActor_scheduler + 8);
  v5 = OBJC_IVAR____TtC14amsengagementd21MediaCatalogSyncActor_state;
  v0[10] = OBJC_IVAR____TtC14amsengagementd21MediaCatalogSyncActor_state;
  sub_1000060C4();
  swift_beginAccess();
  sub_100004ED4();
  sub_10008A398(v2 + v5, v1, v6);
  v11 = (*(v3 + 16) + **(v3 + 16));
  v7 = swift_task_alloc();
  v0[11] = v7;
  *v7 = v0;
  v7[1] = sub_100086E38;
  v8 = v0[9];
  v9 = v0[6];

  return v11(v9, v8, v4, v3);
}

uint64_t sub_100086E38()
{
  sub_100004768();
  sub_1000056A8();
  sub_100002D98();
  *v2 = v1;
  v4 = *(v3 + 40);
  v5 = *v0;
  sub_100002D20();
  *v6 = v5;
  *(v8 + 96) = v7;

  sub_100006928();
  sub_10008A630();

  return _swift_task_switch(sub_100086F5C, v4, 0);
}

uint64_t sub_100086F5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_10001BD70();
  if (*(v20 + 96) == 1)
  {
    v21 = *(v20 + 72);
    v22 = *(v20 + 80);
    v24 = *(v20 + 56);
    v23 = *(v20 + 64);
    v25 = *(v20 + 40);
    v26 = *(v20 + 48);
    a16 = v25;
    v27 = *(type metadata accessor for MediaCatalogSyncScheduleModel(0) + 20);
    sub_100004ED4();
    sub_10008A398(v25 + v22, v21, v28);
    HIDWORD(a15) = *v21;
    a13 = v21[3];
    a14 = v21[1];
    a10 = v21[2];
    a11 = v21[4];
    a12 = v21[5];
    a9 = v21[6];
    v29 = v24[7];
    v30 = type metadata accessor for Date();
    sub_100002DDC();
    v32 = *(v31 + 16);
    v32(v23 + v29, (v26 + v27), v30);
    sub_10000A7C0(v23 + v29, 0, 1, v30);
    LOBYTE(v29) = *(v21 + v24[8]);
    sub_10008A2E0(v21 + v24[9], v23 + v24[9], &unk_100271EA0, &qword_1001E77F0);
    v32(v23 + v24[10], v21 + v24[10], v30);
    v33 = *(v21 + v24[11]);
    v34 = *(v21 + v24[12]);

    sub_100006928();
    sub_10008A630();
    *v23 = BYTE4(a15);
    *(v23 + 8) = a14;
    *(v23 + 16) = a10;
    *(v23 + 24) = a13;
    *(v23 + 32) = a11;
    *(v23 + 40) = a12;
    *(v23 + 48) = a9;
    *(v23 + v24[8]) = v29;
    *(v23 + v24[11]) = v33;
    *(v23 + v24[12]) = v34;
    v35 = sub_100023FA4();
    sub_100088F00(v35, 0xD000000000000013, v36);
    sub_100006928();
    sub_10008A630();
  }

  sub_100002D8C();
  sub_100012AFC();

  return v38(v37, v38, v39, v40, v41, v42, v43, v44, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_10008718C(uint64_t a1, uint64_t a2)
{
  v3[19] = a2;
  v3[20] = v2;
  v3[18] = a1;
  v4 = sub_1000047B0();
  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_1000871B8()
{
  if (qword_1002686F8 != -1)
  {
    sub_100002DC8();
    swift_once();
  }

  v1 = *(v0 + 160);
  *(v0 + 168) = qword_100287858;
  *(v0 + 176) = sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v2 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v2);
  *(v0 + 184) = *(v3 + 72);
  *(v0 + 208) = *(v4 + 80);
  sub_100017CF0();
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1001E5F60;
  v6 = type metadata accessor for MediaCatalogSyncActor(0);
  *(v0 + 192) = v6;
  *(v0 + 40) = v6;
  *(v0 + 16) = v1;

  v7 = AMSLogKey();
  if (v7)
  {
    v8 = v7;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v9 = *(v0 + 152);
  v10 = *(v0 + 160);
  static LogInterpolation.prefix(_:_:)();

  sub_100002C00((v0 + 16));
  LogInterpolation.init(stringLiteral:)();
  *(v0 + 72) = type metadata accessor for MediaCatalogSyncRequest(0);
  v11 = sub_100017E64((v0 + 48));
  sub_10008A398(v9, v11, type metadata accessor for MediaCatalogSyncRequest);
  static LogInterpolation.traceableSensitive(_:)();
  sub_10000A00C(v0 + 48, &qword_10026D350, &qword_1001E6050);
  v12 = static os_log_type_t.default.getter();
  sub_1000036B0(v12, v5);

  v14 = *(v10 + OBJC_IVAR____TtC14amsengagementd21MediaCatalogSyncActor_requester);
  v13 = *(v10 + OBJC_IVAR____TtC14amsengagementd21MediaCatalogSyncActor_requester + 8);
  v15 = *(v10 + OBJC_IVAR____TtC14amsengagementd21MediaCatalogSyncActor_bag);
  v21 = (*(v13 + 8) + **(v13 + 8));
  swift_task_alloc();
  sub_100015B58();
  *(v0 + 200) = v16;
  *v16 = v17;
  v16[1] = sub_1000874D4;
  v18 = *(v0 + 144);
  v19 = *(v0 + 152);

  return v21(v18, v19, v15, v14, v13);
}

uint64_t sub_1000874D4()
{
  sub_100004768();
  sub_1000056A8();
  v1 = *v0;
  sub_100002D20();
  *v2 = v1;

  v3 = sub_1000047B0();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_1000875CC()
{
  sub_100005B90();
  v1 = v0[24];
  v2 = v0[20];
  v3 = swift_allocObject();
  v0[10] = v2;
  *(v3 + 16) = xmmword_1001E5F60;
  v0[13] = v1;

  v4 = AMSLogKey();
  if (v4)
  {
    v5 = v4;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v6 = v0[18];
  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(v0 + 10);
  LogInterpolation.init(stringLiteral:)();
  v0[17] = sub_10007B9A4(&qword_100269AC0, &unk_1001E6688);
  v7 = sub_100017E64(v0 + 14);
  sub_10008A2E0(v6, v7, &qword_100269AC0, &unk_1001E6688);
  static LogInterpolation.sensitive(_:)();
  sub_10000A00C((v0 + 14), &qword_10026D350, &qword_1001E6050);
  v8 = static os_log_type_t.default.getter();
  sub_1000036B0(v8, v3);

  sub_100002D8C();

  return v9();
}

uint64_t sub_100087788()
{
  sub_100004768();
  v1[6] = v2;
  v1[7] = v0;
  v1[5] = v3;
  v4 = type metadata accessor for MediaCatalogSyncPageMetadata(0);
  v1[8] = v4;
  sub_100002CFC(v4);
  v1[9] = v5;
  v1[10] = sub_100012F04();
  v1[11] = swift_task_alloc();
  v6 = type metadata accessor for MediaCatalogSyncResponse(0);
  sub_100003D10(v6);
  v1[12] = sub_100023C0C();
  v7 = sub_10007B9A4(&qword_100269AC0, &unk_1001E6688);
  v1[13] = v7;
  sub_100003D10(v7);
  v1[14] = sub_100023C0C();
  v8 = type metadata accessor for MediaCatalogSyncState(0);
  v1[15] = v8;
  sub_100003D10(v8);
  v9 = sub_100012F04();
  v1[17] = sub_100016390(v9);
  v10 = sub_10007B9A4(&qword_100269AB8, &qword_1001E6680);
  sub_100003D10(v10);
  v1[18] = sub_100012F04();
  v1[19] = swift_task_alloc();
  v11 = sub_1000047B0();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_1000878EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_10001BD70();
  sub_1000889C4(v20[5], v20[19]);
  v21 = v20[16];
  v22 = v20[14];
  v23 = v20[7];
  v24 = v20[5];
  v25 = OBJC_IVAR____TtC14amsengagementd21MediaCatalogSyncActor_state;
  sub_1000060C4();
  swift_beginAccess();
  sub_100004ED4();
  sub_10008A398(v23 + v25, v21, v26);
  sub_10008A2E0(v24, v22, &qword_100269AC0, &unk_1001E6688);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v28 = v20[16];
    v27 = v20[17];
    v29 = v20[15];
    v30 = v20[6];

    LODWORD(a16) = *v28;
    v31 = v28[2];
    v89 = v28[3];
    v91 = v28[1];
    v32 = v28[6];
    v85 = v28[4];
    v87 = v28[5];
    sub_10008A2E0(v28 + v29[7], v27 + v29[7], &unk_100271EA0, &qword_1001E77F0);
    v82 = *(v28 + v29[8]);
    v33 = type metadata accessor for Date();
    sub_100004798();
    sub_10000A7C0(v34, v35, v36, v33);
    (*(*(v33 - 8) + 16))(v27 + v29[10], v30, v33);
    v37 = v29 + 11;
    v38 = *(v28 + v29[11]);
    v83 = v38 + 1;
    if (v38 != -1)
    {
      v39 = v20[17];
      v40 = v20[15];
      v42 = *(v40 + 48);
      v41 = (v40 + 48);
      v43 = *(v20[16] + v42);

      sub_100006928();
      sub_10008A630();
      *v39 = a16;
      *(v39 + 8) = v91;
      *(v39 + 16) = v31;
      *(v39 + 24) = v89;
      *(v39 + 32) = v85;
      *(v39 + 40) = v87;
      *(v39 + 48) = v32;
      v44 = v43;
      *(v39 + v29[8]) = v82;
      v45 = v83;
      goto LABEL_15;
    }

    __break(1u);
    goto LABEL_19;
  }

  v22 = v20[12];
  sub_10000B120();
  sub_10008A33C(v46, v22, v47);
  v48 = *(v22 + 72);
  if (v48 == 2 || (v48 & 1) == 0)
  {
    v50 = v20[15];
    v49 = v20[16];
    v51 = *(v49 + *(v50 + 32));
  }

  else
  {
    v50 = v20[15];
    v49 = v20[16];
    v51 = 1;
  }

  LOBYTE(v91) = v51;
  v52 = v20[18];
  v53 = v20[8];
  a16 = (v50 + 48);
  v44 = *(v49 + *(v50 + 48));
  sub_10008A2E0(v20[19], v52, &qword_100269AB8, &qword_1001E6680);
  v54 = sub_100009F34(v52, 1, v53);
  v55 = v20[18];
  if (v54 != 1)
  {
    v57 = v20[10];
    v56 = v20[11];
    sub_10000BD28();
    sub_10008A33C(v55, v56, v58);
    sub_10000A2A4();
    sub_10008A398(v56, v57, v59);

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_11:
      v60 = *(v44 + 16);
      if (v60 >= *(v44 + 24) >> 1)
      {
        sub_1000D4FA8();
        v44 = v81;
      }

      v61 = v20[10];
      sub_100023BF4();
      sub_10008A630();
      *(v44 + 16) = v60 + 1;
      sub_10000BD28();
      sub_10008A33C(v61, v62, v63);
      goto LABEL_14;
    }

LABEL_19:
    sub_1000D4FA8();
    v44 = v80;
    goto LABEL_11;
  }

  sub_10000A00C(v55, &qword_100269AB8, &qword_1001E6680);
LABEL_14:
  v64 = v20[16];
  v65 = v20[17];
  v66 = v20[15];
  v67 = v20[12];
  v68 = *v64;
  v69 = *(v64 + 16);
  v88 = *(v22 + 40);
  v90 = *(v64 + 8);
  v70 = *(v67 + 48);
  v84 = v20[6];
  v86 = *(v22 + 56);
  v71 = *(v67 + 64);

  sub_10000B688();
  sub_10008A630();
  sub_10008A2E0(v64 + v66[7], v65 + v66[7], &unk_100271EA0, &qword_1001E77F0);
  sub_100006928();
  sub_10008A630();
  v72 = type metadata accessor for Date();
  sub_100004798();
  sub_10000A7C0(v73, v74, v75, v72);
  (*(*(v72 - 8) + 16))(v65 + v66[10], v84, v72);
  v45 = 0;
  *v65 = v68;
  *(v65 + 8) = v90;
  *(v65 + 16) = v69;
  *(v65 + 24) = v88;
  *(v65 + 32) = v70;
  *(v65 + 40) = v86;
  *(v65 + 48) = v71;
  *(v65 + v66[8]) = v91;
  v37 = v66 + 11;
  v41 = a16;
LABEL_15:
  v76 = v20[17];
  *(v76 + *v37) = v45;
  *(v76 + *v41) = v44;
  sub_100088F00(v76, 0x7220726576726553, 0xEF65736E6F707365);
  sub_100003CA8((v20[7] + OBJC_IVAR____TtC14amsengagementd21MediaCatalogSyncActor_coordinator), *(v20[7] + OBJC_IVAR____TtC14amsengagementd21MediaCatalogSyncActor_coordinator + 24));
  v77 = swift_task_alloc();
  v20[20] = v77;
  *v77 = v20;
  sub_100003B30(v77);
  sub_100012AFC();

  return sub_10008DD1C();
}

uint64_t sub_100087EC8()
{
  v2 = *v1;
  sub_100002D98();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 168) = v0;

  v5 = *(v2 + 56);
  if (v0)
  {
    v6 = sub_1000880CC;
  }

  else
  {
    v6 = sub_100087FF0;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100087FF0()
{
  sub_100005B90();
  v1 = *(v0 + 152);
  sub_10000A6A4();
  sub_100006928();
  sub_10008A630();
  sub_10000A00C(v1, &qword_100269AB8, &qword_1001E6680);

  sub_100002D8C();

  return v2();
}

uint64_t sub_1000880CC()
{
  sub_100005B90();
  v1 = *(v0 + 152);
  sub_100006928();
  sub_10008A630();
  sub_10000A00C(v1, &qword_100269AB8, &qword_1001E6680);
  sub_10000A6A4();

  sub_100002D8C();

  return v2();
}

uint64_t sub_1000881A8()
{
  sub_100004768();
  v1[13] = v2;
  v1[14] = v0;
  v3 = type metadata accessor for MediaCatalogSyncState(0);
  v1[15] = v3;
  sub_100003D10(v3);
  v4 = sub_100012F04();
  v1[17] = sub_100016390(v4);
  v5 = sub_1000047B0();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_100088228(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_10001BD70();
  v22 = v20[16];
  v21 = v20[17];
  v23 = v20[14];
  v24 = v20[15];
  v25 = OBJC_IVAR____TtC14amsengagementd21MediaCatalogSyncActor_state;
  sub_1000060C4();
  swift_beginAccess();
  sub_100004ED4();
  sub_10008A398(v23 + v25, v22, v26);
  v27 = *v22;
  v28 = *(v22 + 16);
  v60 = *(v22 + 32);
  v61 = *(v22 + 8);
  v29 = *(v22 + 48);
  v58 = *(v22 + 40);
  v59 = *(v22 + 24);
  sub_10008A2E0(v22 + v24[7], v21 + v24[7], &unk_100271EA0, &qword_1001E77F0);
  HIDWORD(a12) = *(v22 + v24[8]);
  v30 = type metadata accessor for Date();
  sub_100004798();
  sub_10000A7C0(v31, v32, v33, v30);
  sub_10001D718();
  v34();
  v35 = *(v22 + v24[11]);
  v36 = __CFADD__(v35, 1);
  v37 = v35 + 1;
  if (v36)
  {
    __break(1u);
    sub_100002DC8();
    swift_once();
    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    sub_100002DFC();
    v42 = type metadata accessor for LogInterpolation();
    sub_100002CFC(v42);
    sub_100007E58();
    sub_100017CF0();
    v43 = swift_allocObject();
    sub_1000115C4(v43, xmmword_1001E5F70);
    sub_1000086F4();
    sub_10003D2CC();
    swift_getErrorValue();
    v20[5] = v20[10];
    sub_100017E64(v20 + 2);
    sub_1000047A4();
    sub_10001D718();
    v44();
    static LogInterpolation.traceableSensitive(_:)();
    sub_10000A00C((v20 + 2), &qword_10026D350, &qword_1001E6050);
    v45 = static os_log_type_t.error.getter();
    sub_1000036B0(v45, v43);

    if (qword_100268830 != -1)
    {
      sub_100006940(&qword_100268830);
    }

    sub_10001CB1C("mediaCatalogSyncPageDownload");

    sub_100002D8C();
    sub_100012AFC();

    return v47(v46, v47, v48, v49, v50, v51, v52, v53, a9, a10, a11, a12, v58, v59, v60, v61, a17, a18, a19, a20);
  }

  else
  {
    v38 = v20[17];
    v39 = v27;
    v57 = v37;
    v40 = v20[15];
    v41 = *(v20[16] + *(v40 + 48));

    sub_100006928();
    sub_10008A630();
    *v38 = v39;
    *(v38 + 8) = v61;
    *(v38 + 16) = v28;
    *(v38 + 24) = v59;
    *(v38 + 32) = v60;
    *(v38 + 40) = v58;
    *(v38 + 48) = v29;
    *(v38 + v24[8]) = BYTE4(a12);
    *(v38 + v24[11]) = v57;
    *(v38 + *(v40 + 48)) = v41;
    sub_100088F00(v38, 0x6166206C61636F4CLL, 0xED00006572756C69);
    sub_100003CA8((v20[14] + OBJC_IVAR____TtC14amsengagementd21MediaCatalogSyncActor_coordinator), *(v20[14] + OBJC_IVAR____TtC14amsengagementd21MediaCatalogSyncActor_coordinator + 24));
    v55 = swift_task_alloc();
    v20[18] = v55;
    *v55 = v20;
    sub_100003B30(v55);
    sub_100012AFC();

    return sub_10008DD1C();
  }
}

uint64_t sub_100088634()
{
  v2 = *v1;
  sub_100002D98();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 152) = v0;

  v5 = *(v2 + 112);
  if (v0)
  {
    v6 = sub_1000887C8;
  }

  else
  {
    v6 = sub_10008875C;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10008875C()
{
  sub_100004768();
  sub_100006928();
  sub_10008A630();

  sub_100002D8C();

  return v0();
}

uint64_t sub_1000887C8()
{
  sub_100005B90();
  sub_100006928();
  sub_10008A630();
  if (qword_1002686F8 != -1)
  {
    sub_100002DC8();
    swift_once();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v1 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v1);
  sub_100007E58();
  v2 = swift_allocObject();
  sub_1000115C4(v2, xmmword_1001E5F70);
  sub_1000086F4();
  sub_10003D2CC();
  swift_getErrorValue();
  v0[5] = v0[10];
  sub_100017E64(v0 + 2);
  sub_1000047A4();
  sub_10001D718();
  v3();
  static LogInterpolation.traceableSensitive(_:)();
  sub_10000A00C((v0 + 2), &qword_10026D350, &qword_1001E6050);
  v4 = static os_log_type_t.error.getter();
  sub_1000036B0(v4, v2);

  if (qword_100268830 != -1)
  {
    sub_100006940(&qword_100268830);
  }

  sub_10001CB1C("mediaCatalogSyncPageDownload");

  sub_100002D8C();

  return v5();
}

uint64_t sub_1000889C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v40 = a2;
  v39 = type metadata accessor for MediaCatalogSyncPageMetadata(0);
  sub_100002DDC();
  __chkstk_darwin(v5);
  sub_100002DEC();
  v8 = v7 - v6;
  sub_10007B9A4(&qword_100269AC0, &unk_1001E6688);
  sub_100002DDC();
  sub_100004E78();
  __chkstk_darwin(v9);
  v11 = v38 - v10;
  v12 = type metadata accessor for MediaCatalogSyncResponse(0);
  sub_100002DDC();
  __chkstk_darwin(v13);
  sub_100002DEC();
  v16 = v15 - v14;
  sub_10008A2E0(a1, v11, &qword_100269AC0, &unk_1001E6688);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_10000A00C(v11, &qword_100269AC0, &unk_1001E6688);
LABEL_3:
    v17 = 1;
    v19 = v39;
    v18 = v40;
    return sub_10000A7C0(v18, v17, 1, v19);
  }

  sub_10000B120();
  sub_10008A33C(v11, v16, v20);
  v21 = *(v16 + 72);
  if (v21 != 2 && (v21 & 1) != 0)
  {
    sub_10000B688();
    sub_10008A630();
    goto LABEL_3;
  }

  if (*(v16 + *(v12 + 36)) == 1)
  {
    v22 = v43;
    (*(*(v3 + OBJC_IVAR____TtC14amsengagementd21MediaCatalogSyncActor_pageStore + 8) + 8))(v16);
    if (v22)
    {
      sub_10000B688();
      return sub_10008A630();
    }

    v43 = 0;
    if (qword_1002686F8 != -1)
    {
      sub_100002DC8();
      swift_once();
    }

    v38[1] = qword_100287858;
    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    sub_100002DFC();
    v28 = type metadata accessor for LogInterpolation();
    sub_100002CFC(v28);
    sub_1000056F8();
    sub_100017CF0();
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_1001E5F60;
    v30 = v29;
    v42 = type metadata accessor for MediaCatalogSyncActor(0);
    v41[0] = v3;

    v31 = AMSLogKey();
    if (v31)
    {
      v32 = v31;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(v41);
    LogInterpolation.init(stringLiteral:)();
    v19 = v39;
    v42 = v39;
    sub_100017E64(v41);
    sub_10000A2A4();
    sub_10008A398(v8, v34, v35);
    static LogInterpolation.sensitive(_:)();
    sub_10000A00C(v41, &qword_10026D350, &qword_1001E6050);
    v36 = static os_log_type_t.info.getter();
    sub_1000036B0(v36, v30);

    sub_10000B688();
    sub_10008A630();
    sub_10000BD28();
    v18 = v40;
    sub_10008A33C(v8, v40, v37);
    v17 = 0;
  }

  else
  {
    if (qword_1002686F8 != -1)
    {
      sub_100002DC8();
      swift_once();
    }

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    sub_100002DFC();
    v24 = type metadata accessor for LogInterpolation();
    sub_100002CFC(v24);
    sub_1000056F8();
    sub_100017CF0();
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_1001E5F70;
    v42 = type metadata accessor for MediaCatalogSyncActor(0);
    v41[0] = v3;

    v26 = AMSLogKey();
    if (v26)
    {
      v27 = v26;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    v19 = v39;
    v18 = v40;
    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(v41);
    LogInterpolation.init(stringLiteral:)();
    v33 = static os_log_type_t.info.getter();
    sub_1000036B0(v33, v25);

    sub_10000B688();
    sub_10008A630();
    v17 = 1;
  }

  return sub_10000A7C0(v18, v17, 1, v19);
}

uint64_t sub_100088F00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = (*(*(v3 + OBJC_IVAR____TtC14amsengagementd21MediaCatalogSyncActor_store + 8) + 16))();
  if (!v4)
  {
    v18 = a2;
    v21 = a3;
    v10 = OBJC_IVAR____TtC14amsengagementd21MediaCatalogSyncActor_state;
    swift_beginAccess();
    sub_10008A27C(a1, v5 + v10);
    swift_endAccess();
    if (qword_1002686F8 != -1)
    {
      sub_100002DC8();
      swift_once();
    }

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v11 = type metadata accessor for LogInterpolation();
    sub_100002CFC(v11);
    sub_1000056F8();
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1001E6580;
    v20 = type metadata accessor for MediaCatalogSyncActor(0);
    v19[0] = v5;

    v13 = AMSLogKey();
    if (v13)
    {
      v14 = v13;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(v19);
    LogInterpolation.init(stringLiteral:)();
    v20 = &type metadata for String;
    v19[0] = v18;
    v19[1] = v21;

    static LogInterpolation.safe(_:)();
    sub_10000A00C(v19, &qword_10026D350, &qword_1001E6050);
    v20 = type metadata accessor for MediaCatalogSyncState(0);
    sub_100017E64(v19);
    sub_100004ED4();
    sub_10008A398(a1, v15, v16);
    static LogInterpolation.sensitive(_:)();
    sub_10000A00C(v19, &qword_10026D350, &qword_1001E6050);
    v17 = static os_log_type_t.default.getter();
    sub_1000036B0(v17, v12);
  }

  return result;
}

uint64_t sub_1000891A8()
{
  sub_100004768();
  *(v1 + 88) = v2;
  *(v1 + 96) = v0;
  *(v1 + 161) = v3;
  *(v1 + 72) = v4;
  *(v1 + 80) = v5;
  *(v1 + 64) = v6;
  *(v1 + 160) = v7;
  v8 = type metadata accessor for MediaCatalogSyncState(0);
  *(v1 + 104) = v8;
  sub_100003D10(v8);
  *(v1 + 112) = sub_100012F04();
  *(v1 + 120) = swift_task_alloc();
  v9 = sub_10007B9A4(&qword_100269AB8, &qword_1001E6680);
  sub_100003D10(v9);
  v10 = sub_100012F04();
  *(v1 + 136) = sub_100016390(v10);
  v11 = type metadata accessor for MediaCatalogSyncPageMetadata(0);
  *(v1 + 144) = v11;
  sub_100003D10(v11);
  *(v1 + 152) = sub_100023C0C();
  v12 = sub_1000047B0();

  return _swift_task_switch(v12, v13, v14);
}

uint64_t sub_100089294()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 144);
  sub_10008A2E0(*(v0 + 88), v1, &qword_100269AB8, &qword_1001E6680);
  if (sub_100009F34(v1, 1, v2) == 1)
  {
    sub_10000A00C(*(v0 + 136), &qword_100269AB8, &qword_1001E6680);
  }

  else
  {
    v4 = *(v0 + 144);
    v3 = *(v0 + 152);
    v5 = *(v0 + 128);
    v7 = *(v0 + 112);
    v6 = *(v0 + 120);
    v8 = *(v0 + 96);
    sub_10000BD28();
    sub_10008A33C(v9, v3, v10);
    sub_10000A2A4();
    sub_10008A398(v3, v5, v11);
    sub_10000A7C0(v5, 0, 1, v4);
    v12 = OBJC_IVAR____TtC14amsengagementd21MediaCatalogSyncActor_state;
    sub_1000060C4();
    swift_beginAccess();
    sub_100004ED4();
    sub_10008A398(v8 + v12, v7, v13);
    sub_1000E05D8(v5, v7, v6);
    sub_100006928();
    sub_10008A630();
    sub_10000A00C(v5, &qword_100269AB8, &qword_1001E6680);
    v14 = sub_100023FA4();
    sub_100088F00(v14, 0xD00000000000001CLL, v15);
    sub_10008A630();
    sub_100023BF4();
    sub_10008A630();
  }

  v16 = *(v0 + 104);
  v17 = *(v0 + 161);
  v18 = *(v0 + 96) + OBJC_IVAR____TtC14amsengagementd21MediaCatalogSyncActor_state;
  sub_1000060C4();
  swift_beginAccess();
  v19 = *(v18 + *(v16 + 48));
  v20 = (v19 + 16);
  if ((v17 & 1) == 0)
  {
    v20 = (v0 + 80);
  }

  v21 = *v20;

  sub_10008968C(v21, v19);
  v23 = v22;
  v25 = v24;
  if ((v24 & 1) == 0)
  {
    goto LABEL_7;
  }

  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain_n();
  v32 = swift_dynamicCastClass();
  if (!v32)
  {
    swift_unknownObjectRelease();
    v32 = _swiftEmptyArrayStorage;
  }

  v33 = v32[2];

  if (__OFSUB__(v25 >> 1, v23))
  {
    __break(1u);
    goto LABEL_19;
  }

  if (v33 != (v25 >> 1) - v23)
  {
LABEL_19:
    swift_unknownObjectRelease();
LABEL_7:
    sub_100018050();
    sub_10008A19C(v26, v27, v28, v29);
    v31 = v30;
    goto LABEL_14;
  }

  v31 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (v31)
  {
    goto LABEL_15;
  }

  v31 = _swiftEmptyArrayStorage;
LABEL_14:
  swift_unknownObjectRelease();
LABEL_15:
  v34 = (*(*(*(v0 + 96) + OBJC_IVAR____TtC14amsengagementd21MediaCatalogSyncActor_pageStore + 8) + 16))(*(v0 + 160), *(v0 + 64), *(v0 + 72), v31);
  v35 = *(v0 + 104);

  v36 = *(v18 + *(v35 + 32));
  sub_100089720();

  v37 = *(v0 + 8);

  return v37(v34, v36 & 1);
}

unint64_t sub_10008968C(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *(a2 + 16);
    result = sub_10002CE28(0, result, v3);
    if (v4)
    {
      v5 = v3;
    }

    else
    {
      v5 = result;
    }

    if ((v5 & 0x8000000000000000) == 0)
    {
      v6 = sub_1000E0C5C(0, v5, a2);

      return v6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100089720()
{
  v1 = type metadata accessor for MediaCatalogSyncState(0);
  sub_100002DDC();
  __chkstk_darwin(v2);
  sub_1000056E8();
  v5 = v3 - v4;
  __chkstk_darwin(v6);
  v8 = &v25 - v7;
  v9 = v0 + OBJC_IVAR____TtC14amsengagementd21MediaCatalogSyncActor_state;
  sub_1000060C4();
  result = swift_beginAccess();
  v11 = *(v9 + v1[8]);
  if (v11 != 2 && (v11 & 1) != 0)
  {
    sub_100004ED4();
    sub_10008A398(v9, v5, v12);
    v13 = *v5;
    v15 = *(v5 + 8);
    v14 = *(v5 + 16);
    v16 = type metadata accessor for Date();
    sub_100004798();
    sub_10000A7C0(v17, v18, v19, v16);
    sub_100004798();
    sub_10000A7C0(v20, v21, v22, v16);

    static Date.distantPast.getter();
    sub_100006928();
    sub_10008A630();
    *v8 = v13;
    *(v8 + 1) = v15;
    *(v8 + 2) = v14;
    *(v8 + 24) = 0u;
    *(v8 + 40) = 0u;
    v8[v1[8]] = 2;
    *&v8[v1[11]] = 0;
    *&v8[v1[12]] = _swiftEmptyArrayStorage;
    v23 = sub_100023FA4();
    sub_100088F00(v23, 0xD000000000000020, v24);
    return sub_10008A630();
  }

  return result;
}

uint64_t sub_100089AA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v39 = a6;
  v40 = a7;
  v37 = a4;
  v38 = a5;
  type metadata accessor for Date();
  sub_100002CC4();
  v46 = v9;
  v47 = v8;
  __chkstk_darwin(v8);
  sub_100002DEC();
  v36 = v11 - v10;
  v12 = sub_100003D1C();
  v13 = type metadata accessor for MediaCatalogSyncState(v12);
  v14 = (v13 - 8);
  __chkstk_darwin(v13);
  sub_1000056E8();
  v17 = (v15 - v16);
  __chkstk_darwin(v18);
  v20 = &v35 - v19;
  v21 = OBJC_IVAR____TtC14amsengagementd21MediaCatalogSyncActor_state;
  sub_1000060C4();
  swift_beginAccess();
  sub_100004ED4();
  sub_10008A398(v7 + v21, v17, v22);
  v44 = *v17;
  v23 = *(v17 + 1);
  v24 = *(v17 + 2);
  v25 = *(v17 + 4);
  v42 = *(v17 + 3);
  v43 = v23;
  v26 = *(v17 + 6);
  v41 = *(v17 + 5);
  sub_100008F8C(v14[9]);
  sub_100008F8C(v14[11]);
  (*(v46 + 16))(&v20[v14[12]], &v17[v14[12]], v47);
  v27 = *&v17[v14[13]];
  v28 = *&v17[v14[14]];

  sub_100006928();
  sub_10008A630();
  *v20 = v44;
  v29 = v42;
  *(v20 + 1) = v43;
  *(v20 + 2) = v24;
  *(v20 + 3) = v29;
  *(v20 + 4) = v25;
  *(v20 + 5) = v41;
  *(v20 + 6) = v26;
  v20[v14[10]] = 1;
  *&v20[v14[13]] = v27;
  *&v20[v14[14]] = v28;
  v30 = v45;
  sub_100088F00(v20, 0x6572207465736552, 0xEF64657473657571);
  if (!v30)
  {
    v32 = v46;
    v31 = v47;
    v33 = v36;
    static Date.now.getter();
    sub_100084DB4(v37, v38, v39, v40, v33);
    (*(v32 + 8))(v33, v31);
  }

  sub_100006928();
  return sub_10008A630();
}

uint64_t sub_100089D24()
{
  sub_100004768();
  *(v1 + 80) = v2;
  *(v1 + 88) = v0;
  *(v1 + 145) = v3;
  *(v1 + 64) = v4;
  *(v1 + 72) = v5;
  *(v1 + 56) = v6;
  v7 = type metadata accessor for Date();
  *(v1 + 96) = v7;
  sub_100002CFC(v7);
  *(v1 + 104) = v8;
  *(v1 + 112) = sub_100023C0C();
  v9 = type metadata accessor for MediaCatalogSyncState(0);
  *(v1 + 120) = v9;
  sub_100003D10(v9);
  v10 = sub_100012F04();
  *(v1 + 136) = sub_100016390(v10);
  v11 = sub_1000047B0();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_100089DFC()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 88);
  v3 = *(v0 + 145);
  v4 = OBJC_IVAR____TtC14amsengagementd21MediaCatalogSyncActor_state;
  sub_1000060C4();
  swift_beginAccess();
  sub_100004ED4();
  sub_10008A398(v2 + v4, v1, v5);
  v6 = *(v0 + 128);
  v7 = *(v0 + 136);
  if (v3 == 2)
  {
    v8 = *(v0 + 120);
    v9 = *(v0 + 96);
    v35 = *v6;
    v10 = *(v6 + 2);
    v11 = *(v6 + 4);
    v33 = *(v6 + 3);
    v34 = *(v6 + 1);
    v12 = *(v6 + 6);
    v32 = *(v6 + 5);
    sub_10008A2E0(&v6[v8[7]], v7 + v8[7], &unk_100271EA0, &qword_1001E77F0);
    v13 = v6[v8[8]];
    sub_100004798();
    sub_10000A7C0(v14, v15, v16, v9);

    static Date.distantPast.getter();
    v17 = *&v6[v8[11]];
    v18 = *&v6[v8[12]];

    sub_100006928();
    sub_10008A630();
    *v7 = v35;
    *(v7 + 8) = v34;
    *(v7 + 16) = v10;
    *(v7 + 24) = v33;
    *(v7 + 32) = v11;
    *(v7 + 40) = v32;
    *(v7 + 48) = v12;
    *(v7 + v8[8]) = v13;
    *(v7 + v8[11]) = v17;
    *(v7 + v8[12]) = v18;
  }

  else
  {
    sub_1000061C0();
    v19 = sub_100005B9C();
    sub_10008A33C(v19, v20, v21);
  }

  v22 = *(v0 + 136);
  v23 = *(v0 + 145);
  _StringGuts.grow(_:)(22);
  *(v0 + 40) = 0;
  *(v0 + 48) = 0xE000000000000000;
  v24._object = 0x80000001001F3800;
  v24._countAndFlagsBits = 0xD000000000000014;
  String.append(_:)(v24);
  *(v0 + 144) = v23;
  _print_unlocked<A, B>(_:_:)();
  sub_100088F00(v22, *(v0 + 40), *(v0 + 48));

  static Date.now.getter();
  sub_1000159BC();
  sub_100084DB4(v25, v26, v27, v28, v29);
  (*(*(v0 + 104) + 8))(*(v0 + 112), *(v0 + 96));
  sub_100006928();
  sub_10008A630();

  sub_100002D8C();

  return v31();
}

uint64_t sub_10008A100()
{
  sub_100006928();
  sub_10008A630();

  sub_100002C00((v0 + OBJC_IVAR____TtC14amsengagementd21MediaCatalogSyncActor_coordinator));
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_10008A168()
{
  sub_10008A100();

  return _swift_defaultActor_deallocate(v0);
}

void sub_10008A19C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return;
  }

  if (a4 >> 1 != a3)
  {
    sub_1000D6478();
    if (v4 != a3)
    {
      type metadata accessor for MediaCatalogSyncPageMetadata(0);
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_7;
  }
}

uint64_t sub_10008A27C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MediaCatalogSyncState(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_10008A2E0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_10007B9A4(a3, a4);
  sub_100002DDC();
  v5 = sub_100005B9C();
  v6(v5);
  return a2;
}

uint64_t sub_10008A33C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_100002DDC();
  v4 = sub_100005B9C();
  v5(v4);
  return a2;
}

uint64_t sub_10008A398(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_100002DDC();
  v4 = sub_100005B9C();
  v5(v4);
  return a2;
}

uint64_t sub_10008A3F4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10008A43C()
{
  sub_100003D28();
  v1 = sub_100002DFC();
  v2 = type metadata accessor for MediaCatalogSyncScheduleModel(v1);
  sub_100003D10(v2);
  swift_task_alloc();
  sub_100015B58();
  *(v0 + 16) = v3;
  *v3 = v4;
  v3[1] = sub_100009BE8;
  sub_100018050();

  return sub_100086C30(v5, v6, v7, v8, v9);
}

uint64_t sub_10008A51C()
{
  sub_100002DFC();
  v2 = type metadata accessor for Date();
  sub_100003D10(v2);
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[8];
  swift_task_alloc();
  sub_100015B58();
  *(v1 + 16) = v7;
  *v7 = v8;
  v7[1] = sub_100009BE8;
  sub_100018050();

  return sub_100085F54(v9, v10, v11, v12, v3, v4, v5, v6);
}

uint64_t sub_10008A630()
{
  v1 = sub_100002DFC();
  v2(v1);
  sub_100002DDC();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_10008A684()
{
  *(v1 + 48) = v0;
  *(v1 + 56) = *v0;
  return sub_10000BD40(sub_10008A6C8, v0);
}

uint64_t sub_10008A6C8()
{
  sub_100004768();
  v1 = *(*(v0 + 48) + 112);
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  *v2 = v0;
  v2[1] = sub_10008A75C;

  return sub_10008AA94(v1);
}

uint64_t sub_10008A75C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10000E698();
  sub_100005B90();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  sub_1000056A8();
  v21 = v20;
  sub_100004EEC();
  *v22 = v21;
  v23 = *v11;
  sub_100002D20();
  *v24 = v23;

  if (v10)
  {
    sub_10000A598();

    return v26(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10);
  }

  else
  {
    v21[9] = v13;
    v21[10] = v15;
    v21[11] = v17;
    v21[12] = v19;
    sub_10000A598();

    return _swift_task_switch(v34, v35, v36);
  }
}

uint64_t sub_10008A8A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10000E698();
  sub_100005B90();
  v11 = sub_1000CC170(v10[12], v10[11]);

  if (!v11)
  {
    if (qword_1002686F8 != -1)
    {
      sub_100002DC8();
      swift_once();
    }

    v12 = v10[6];
    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v13 = type metadata accessor for LogInterpolation();
    sub_100002CFC(v13);
    sub_1000056F8();
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1001E5F70;
    v10[5] = type metadata accessor for MediaCatalogSyncCoordinatorActor();
    v10[2] = v12;

    v15 = AMSLogKey();
    if (v15)
    {
      v16 = v15;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(v10 + 2);
    LogInterpolation.init(stringLiteral:)();
    v17 = static os_log_type_t.default.getter();
    sub_1000036B0(v17, v14);
  }

  sub_10000A598();

  return v20(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10);
}

uint64_t sub_10008AAB0()
{
  sub_100004768();
  v1 = sub_1000CC4CC();
  *(v0 + 24) = v1;
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  v2[1] = sub_10008AB50;

  return SendableBag.codableDictionary(for:)(v1);
}

uint64_t sub_10008AB50()
{
  sub_100004768();
  sub_1000056A8();
  sub_100002D98();
  *v2 = v1;
  v3 = *v0;
  sub_100002D20();
  *v4 = v3;
  *(v6 + 40) = v5;

  return _swift_task_switch(sub_10008AC5C, 0, 0);
}

uint64_t sub_10008AC5C()
{
  sub_100005B90();
  v1 = *(v0 + 40);
  v2 = sub_1001CB308(v1);
  v4 = v3;
  v6 = v5;
  v8 = v7;

  v9 = *(v0 + 8);

  return v9(v2, v4, v6, v8);
}

uint64_t sub_10008AD40()
{
  sub_100004768();
  v1[22] = v0;
  v2 = type metadata accessor for LogInterpolation.StringInterpolation();
  sub_100003D10(v2);
  v1[23] = sub_100023C0C();
  v3 = type metadata accessor for DispatchQoS.QoSClass();
  v1[24] = v3;
  sub_100002CFC(v3);
  v1[25] = v4;
  v1[26] = sub_100023C0C();
  v5 = swift_task_alloc();
  v1[27] = v5;
  *v5 = v1;
  v5[1] = sub_10008AE38;

  return sub_10008A684();
}

uint64_t sub_10008AE38()
{
  sub_1000061B4();
  sub_1000056A8();
  v3 = v2;
  sub_100004EEC();
  *v4 = v3;
  v5 = *v1;
  *v4 = *v1;
  *(v3 + 224) = v6;

  if (v0)
  {

    v7 = *(v5 + 8);

    return v7();
  }

  else
  {
    sub_10000711C();

    return _swift_task_switch(v9, v10, v11);
  }
}

void sub_10008AF80()
{
  v2 = *(*(v0 + 224) + 16);
  *(v0 + 232) = v2;
  if (v2)
  {
    v3 = 0;
    *(v0 + 288) = enum case for DispatchQoS.QoSClass.background(_:);
    while (1)
    {
      sub_100015B64(v3);
      if (v6)
      {
        __break(1u);
        return;
      }

      v7 = v5 + 56 * v4;
      v8 = *(v7 + 32);
      v10 = *(v7 + 40);
      v9 = *(v7 + 48);
      sub_1000047F0(v7);
      if (v11)
      {
        break;
      }

      v12 = qword_1002686F8;

      if (v12 != -1)
      {
        sub_100002DC8();
        swift_once();
      }

      v13 = *(v0 + 176);
      sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
      v14 = sub_10000620C();
      sub_100002CFC(v14);
      sub_1000056F8();
      v15 = sub_10000DCEC();
      *(v15 + 16) = xmmword_1001E5F70;
      *(v0 + 88) = type metadata accessor for MediaCatalogSyncCoordinatorActor();
      *(v0 + 64) = v13;

      v16 = AMSLogKey();
      if (v16)
      {
        v17 = v16;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      sub_10000B138();

      sub_10000AE3C((v0 + 64));
      sub_100003B60();
      v19._countAndFlagsBits = v18 + 13;
      v19._object = 0x80000001001F3B20;
      LogInterpolation.StringInterpolation.appendLiteral(_:)(v19);
      *(v0 + 112) = v9;
      *(v0 + 120) = &type metadata for MediaCatalogSyncIdentifier;
      *(v0 + 96) = v8;
      *(v0 + 104) = v10;

      LogInterpolation.StringInterpolation.appendInterpolation(safe:)();

      sub_100002C5C(v0 + 96);
      sub_100003B48();
      LogInterpolation.init(stringInterpolation:)();
      v20 = static os_log_type_t.default.getter();
      sub_1000036B0(v20, v15);

      v3 = *(v0 + 240) + 1;
      if (v3 == *(v0 + 232))
      {
        goto LABEL_14;
      }
    }

    *(v0 + 144) = 0;
    *(v0 + 152) = 0xE000000000000000;

    _StringGuts.grow(_:)(32);

    sub_100003B60();
    *(v0 + 128) = v21;
    *(v0 + 136) = 0x80000001001F3B50;
    *(v0 + 160) = v10;
    *(v0 + 168) = v9;

    v22._countAndFlagsBits = 95;
    v22._object = 0xE100000000000000;
    String.append(_:)(v22);
    if (v8)
    {
      if (v8 == 1)
      {
        v1 = 0xE400000000000000;
        v23 = 1936748641;
      }

      else
      {
        v23 = sub_10001CB3C();
      }
    }

    else
    {
      v23 = sub_10000A83C();
    }

    v37 = *(v0 + 288);
    v25 = *(v0 + 192);
    v26 = v1;
    String.append(_:)(*&v23);

    String.append(_:)(*(v0 + 160));

    v27 = *(v0 + 128);
    v28 = [objc_opt_self() sharedScheduler];
    v29 = String._bridgeToObjectiveC()();

    sub_100017A08();
    v30 = sub_100018060();
    v31(v30, v37, v25);
    static OS_dispatch_queue.global(qos:)();
    v32 = sub_100023FB4();
    v33(v32);
    sub_10000AAEC();
    *(v0 + 16) = _NSConcreteStackBlock;
    *(v0 + 24) = 1107296256;
    *(v0 + 32) = sub_10008E0EC;
    *(v0 + 40) = &unk_100246738;
    v34 = _Block_copy((v0 + 16));

    sub_100008718(v35, "registerForTaskWithIdentifier:usingQueue:launchHandler:");
    _Block_release(v34);

    v36 = swift_task_alloc();
    *(v0 + 272) = v36;
    *v36 = v0;
    sub_10000A2BC(v36);

    sub_10008BAC8();
  }

  else
  {
LABEL_14:

    sub_10000B6A0();

    v24();
  }
}

uint64_t sub_10008B458()
{
  sub_1000061B4();
  sub_1000056A8();
  v3 = v2;
  sub_100004EEC();
  *v4 = v3;
  v5 = *v1;
  sub_100002D20();
  *v6 = v5;
  *(v3 + 280) = v0;

  if (v0)
  {
    v7 = *(v3 + 176);

    v8 = sub_10008BA44;
    v9 = v7;
  }

  else
  {
    v10 = *(v3 + 176);

    v8 = sub_10008B590;
    v9 = v10;
  }

  return _swift_task_switch(v8, v9, 0);
}

void sub_10008B590()
{
  while (1)
  {
    v2 = *(v0 + 240) + 1;
    if (v2 == *(v0 + 232))
    {
      break;
    }

    sub_100015B64(v2);
    if (v5)
    {
      __break(1u);
      return;
    }

    v6 = v4 + 56 * v3;
    v7 = *(v6 + 32);
    v9 = *(v6 + 40);
    v8 = *(v6 + 48);
    sub_1000047F0(v6);
    v37 = v9;
    if (v10)
    {
      *(v0 + 144) = 0;
      *(v0 + 152) = 0xE000000000000000;

      _StringGuts.grow(_:)(32);

      sub_100003B60();
      *(v0 + 128) = v21;
      *(v0 + 136) = 0x80000001001F3B50;
      *(v0 + 160) = v9;
      *(v0 + 168) = v8;

      v22._countAndFlagsBits = 95;
      v22._object = 0xE100000000000000;
      String.append(_:)(v22);
      if (v7)
      {
        if (v7 == 1)
        {
          v1 = 0xE400000000000000;
          v23 = 1936748641;
        }

        else
        {
          v23 = sub_10001CB3C();
        }
      }

      else
      {
        v23 = sub_10000A83C();
      }

      v36 = *(v0 + 288);
      v24 = *(v0 + 192);
      v25 = v1;
      String.append(_:)(*&v23);

      String.append(_:)(*(v0 + 160));

      v26 = *(v0 + 128);
      v27 = [objc_opt_self() sharedScheduler];
      v28 = String._bridgeToObjectiveC()();

      sub_100017A08();
      v29 = sub_100018060();
      v30(v29, v36, v24);
      static OS_dispatch_queue.global(qos:)();
      v31 = sub_100023FB4();
      v32(v31);
      sub_10000AAEC();
      *(v0 + 16) = _NSConcreteStackBlock;
      *(v0 + 24) = 1107296256;
      *(v0 + 32) = sub_10008E0EC;
      *(v0 + 40) = &unk_100246738;
      v33 = _Block_copy((v0 + 16));

      sub_100008718(v34, "registerForTaskWithIdentifier:usingQueue:launchHandler:");
      _Block_release(v33);

      v35 = swift_task_alloc();
      *(v0 + 272) = v35;
      *v35 = v0;
      sub_10000A2BC(v35);

      sub_10008BAC8();
      return;
    }

    v11 = qword_1002686F8;

    if (v11 != -1)
    {
      swift_once();
    }

    v12 = *(v0 + 176);
    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v13 = sub_10000620C();
    sub_100002CFC(v13);
    sub_1000056F8();
    v14 = sub_10000DCEC();
    *(v14 + 16) = xmmword_1001E5F70;
    *(v0 + 88) = type metadata accessor for MediaCatalogSyncCoordinatorActor();
    *(v0 + 64) = v12;

    v15 = AMSLogKey();
    if (v15)
    {
      v16 = v15;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    sub_10000B138();

    sub_10000AE3C((v0 + 64));
    sub_100003B60();
    v18._countAndFlagsBits = v17 + 13;
    v18._object = 0x80000001001F3B20;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v18);
    *(v0 + 112) = v8;
    *(v0 + 120) = &type metadata for MediaCatalogSyncIdentifier;
    *(v0 + 96) = v7;
    *(v0 + 104) = v37;

    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();

    sub_100002C5C(v0 + 96);
    sub_100003B48();
    LogInterpolation.init(stringInterpolation:)();
    v19 = static os_log_type_t.default.getter();
    sub_1000036B0(v19, v14);
  }

  sub_10000B6A0();

  v20();
}

uint64_t sub_10008BA44()
{
  sub_100004768();

  sub_100002D8C();

  return v0();
}

uint64_t sub_10008BAC8()
{
  sub_100004768();
  *(v1 + 88) = v2;
  *(v1 + 96) = v0;
  *(v1 + 80) = v3;
  *(v1 + 208) = v4;
  *(v1 + 104) = *v0;
  v5 = type metadata accessor for LogInterpolation.StringInterpolation();
  sub_100003D10(v5);
  *(v1 + 112) = sub_100023C0C();
  v6 = type metadata accessor for Date();
  *(v1 + 120) = v6;
  sub_100002CFC(v6);
  *(v1 + 128) = v7;
  *(v1 + 136) = sub_100023C0C();
  v8 = sub_1000047B0();

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_10008BBBC()
{
  sub_1000061B4();
  sub_10001CCA8();
  *(v1 + 144) = sub_1000115D0(*(v1 + 208), v2, v3);
  if (v0)
  {

    sub_100002D8C();

    return v4();
  }

  else
  {
    v6 = swift_task_alloc();
    *(v1 + 152) = v6;
    *v6 = v1;
    v7 = sub_100004AAC(v6);

    return sub_10008AA94(v7);
  }
}

uint64_t sub_10008BCA4()
{
  sub_1000061B4();
  sub_10000A118();
  sub_100004EEC();
  *v3 = v2;
  v4 = *v1;
  sub_100002D98();
  *v5 = v4;
  v8[20] = v6;
  v8[21] = v7;
  v8[22] = v9;
  v8[23] = v10;
  v8[24] = v0;

  sub_10000A6B4();
  sub_10000711C();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_10008BDC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_100005BC8();
  if (sub_1000CC430(*(v14 + 208), *(v14 + 80), *(v14 + 88), *(v14 + 160), *(v14 + 168)))
  {
    static Date.now.getter();
    sub_1000047B0();
    sub_10000A820();

    return _swift_task_switch(v15, v16, v17);
  }

  else
  {

    if (qword_1002686F8 != -1)
    {
      sub_100002DC8();
      swift_once();
    }

    v37 = qword_100287858;
    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v19 = sub_10000620C();
    sub_100002CFC(v19);
    v20 = sub_100007E68();
    *(v20 + 16) = xmmword_1001E5F70;
    v21 = type metadata accessor for MediaCatalogSyncCoordinatorActor();
    sub_100006734(v21);
    v22 = AMSLogKey();
    if (v22)
    {
      v23 = v22;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v25 = v24;
    }

    else
    {
      v25 = 0;
    }

    v36 = *(v14 + 144);
    sub_100005BA8();

    sub_10000AE3C((v14 + 16));
    sub_100009DDC("Media Catalog Sync disabled in the bag for ");
    sub_100012B18(&type metadata for MediaCatalogSyncIdentifier);
    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    sub_100002C5C(v25);
    sub_100003B48();
    LogInterpolation.init(stringInterpolation:)();
    v26 = static os_log_type_t.default.getter();
    sub_1000036B0(v26, v20);

    sub_10000B6A0();
    sub_10000A820();

    return v28(v27, v28, v29, v30, v31, v32, v33, v34, a9, v36, v37, a12, a13, a14);
  }
}

uint64_t sub_10008BFF8()
{
  v1 = v0[24];
  v2 = v0[17];
  v3 = v0[15];
  v4 = v0[16];
  sub_100084DB4(v0[20], v0[21], v0[22], v0[23], v2);
  v0[25] = v1;
  (*(v4 + 8))(v2, v3);

  v5 = v0[12];
  if (v1)
  {
    v6 = sub_10008C1C4;
  }

  else
  {
    v6 = sub_10008C0E8;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10008C0E8()
{
  sub_100004768();

  sub_10000B6A0();

  return v0();
}

uint64_t sub_10008C154()
{
  sub_100004768();

  sub_100002D8C();

  return v0();
}

uint64_t sub_10008C1C4()
{
  sub_100004768();

  sub_100002D8C();

  return v0();
}

uint64_t sub_10008C234(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 32) = a4;
  *(v5 + 40) = v4;
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;
  *(v5 + 128) = a1;
  *(v5 + 48) = *v4;
  return sub_10000BD40(sub_10008C280, v4);
}

uint64_t sub_10008C280()
{
  sub_1000061B4();
  *(v1 + 56) = sub_1000115D0(*(v1 + 128), *(v1 + 16), *(v1 + 24));
  if (v0)
  {
    sub_10000B2E0();

    return v2();
  }

  else
  {
    v4 = swift_task_alloc();
    *(v1 + 64) = v4;
    *v4 = v1;
    v5 = sub_100004AAC(v4);

    return sub_10008AA94(v5);
  }
}

uint64_t sub_10008C35C()
{
  sub_1000061B4();
  sub_10000A118();
  sub_100004EEC();
  *v3 = v2;
  v4 = *v1;
  sub_100002D98();
  *v5 = v4;
  v8[9] = v6;
  v8[10] = v7;
  v8[11] = v9;
  v8[12] = v0;

  sub_10000A6B4();
  sub_10000711C();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_10008C478()
{
  sub_100005B90();
  if (!v0[10] || (v1 = sub_1000AA6C0(v0[2], v0[3], v0[10]), , , , v1 != 1))
  {
  }

  v2 = swift_task_alloc();
  v0[13] = v2;
  *v2 = v0;
  v2[1] = sub_10008C5AC;

  return sub_1000891A8();
}

uint64_t sub_10008C5AC(uint64_t a1, char a2)
{
  v6 = *v3;
  v7 = *v3;
  sub_100002D20();
  *v8 = v7;
  *v8 = *v3;
  *(v7 + 112) = v2;

  v9 = *(v6 + 40);
  if (v2)
  {
    v10 = sub_10008C7B0;
  }

  else
  {
    *(v7 + 129) = a2 & 1;
    *(v7 + 120) = a1;
    v10 = sub_10008C6EC;
  }

  return _swift_task_switch(v10, v9, 0);
}

uint64_t sub_10008C6EC()
{
  sub_100004768();

  v1 = *(v0 + 8);
  v2 = *(v0 + 120);
  v3 = *(v0 + 129);

  return v1(v2, v3);
}

uint64_t sub_10008C754()
{
  sub_100004768();

  sub_10000B2E0();

  return v0();
}

uint64_t sub_10008C7B0()
{
  sub_100004768();

  sub_10000B2E0();

  return v0();
}

uint64_t sub_10008C80C()
{
  sub_100004768();
  *(v1 + 16) = v0;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_10008C898;

  return sub_10008A684();
}

uint64_t sub_10008C898()
{
  sub_1000061B4();
  sub_1000056A8();
  v3 = v2;
  sub_100004EEC();
  *v4 = v3;
  v5 = *v1;
  *v4 = *v1;
  *(v3 + 32) = v6;

  if (v0)
  {
    v7 = *(v5 + 8);

    return v7();
  }

  else
  {
    sub_10000711C();

    return _swift_task_switch(v9, v10, v11);
  }
}

void *sub_10008C9CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10000E698();
  sub_100005B90();
  result = v10[4];
  v12 = result[2];
  v10[5] = v12;
  v10[6] = 0;
  if (v12)
  {
    if (result[2])
    {
      v10[7] = result[6];
      v10[8] = result[8];
      v10[9] = result[7];

      v13 = swift_task_alloc();
      v10[10] = v13;
      *v13 = v10;
      sub_1000061D8(v13);
      sub_10000A598();

      return sub_10008CD88();
    }

    else
    {
      __break(1u);
    }
  }

  else
  {

    sub_10000B6A0();
    sub_10000A598();

    return v16(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10);
  }

  return result;
}

uint64_t sub_10008CACC()
{
  sub_1000061B4();
  sub_1000056A8();
  v3 = v2;
  sub_100004EEC();
  *v4 = v3;
  v5 = *v1;
  sub_100002D20();
  *v6 = v5;
  *(v3 + 88) = v0;

  if (v0)
  {
    v7 = *(v3 + 16);

    v8 = sub_10008CD18;
    v9 = v7;
  }

  else
  {
    v10 = *(v3 + 16);

    v8 = sub_10008CC04;
    v9 = v10;
  }

  return _swift_task_switch(v8, v9, 0);
}

uint64_t sub_10008CC04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10000E698();
  sub_100005B90();
  v11 = v10[5];
  v12 = v10[6] + 1;
  v10[6] = v12;
  result = v10[4];
  if (v12 == v11)
  {

    sub_10000B6A0();
    sub_10000A598();

    return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10);
  }

  else if (v12 >= *(result + 16))
  {
    __break(1u);
  }

  else
  {
    v22 = (result + 56 * v12);
    v10[7] = v22[6];
    v10[8] = v22[8];
    v10[9] = v22[7];

    v23 = swift_task_alloc();
    v10[10] = v23;
    *v23 = v10;
    sub_1000061D8(v23);
    sub_10000A598();

    return sub_10008CD88();
  }

  return result;
}

uint64_t sub_10008CD18()
{
  sub_100004768();

  sub_100002D8C();

  return v0();
}

uint64_t sub_10008CD88()
{
  sub_100004768();
  *(v1 + 88) = v2;
  *(v1 + 96) = v0;
  *(v1 + 80) = v3;
  *(v1 + 184) = v4;
  *(v1 + 104) = *v0;
  v5 = type metadata accessor for LogInterpolation.StringInterpolation();
  sub_100003D10(v5);
  *(v1 + 112) = sub_100023C0C();
  v6 = sub_1000047B0();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_10008CE30()
{
  sub_1000061B4();
  sub_10001CCA8();
  *(v1 + 120) = sub_1000115D0(*(v1 + 184), v2, v3);
  if (v0)
  {

    sub_100002D8C();

    return v4();
  }

  else
  {
    v6 = swift_task_alloc();
    *(v1 + 128) = v6;
    *v6 = v1;
    v7 = sub_100004AAC(v6);

    return sub_10008AA94(v7);
  }
}

uint64_t sub_10008CF0C()
{
  sub_1000061B4();
  sub_10000A118();
  sub_100004EEC();
  *v2 = v1;
  v3 = *v0;
  sub_100002D98();
  *v4 = v3;
  sub_10003D2D8(v5, v6, v7, v8, v9);
  sub_10000A6B4();
  sub_10000711C();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_10008D01C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_100005BC8();
  if (sub_1000CC430(*(v14 + 184), *(v14 + 80), *(v14 + 88), *(v14 + 136), *(v14 + 144)))
  {
    sub_10000A820();

    return _swift_task_switch(v15, v16, v17);
  }

  else
  {

    if (qword_1002686F8 != -1)
    {
      sub_100002DC8();
      swift_once();
    }

    v36 = qword_100287858;
    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v19 = sub_10000620C();
    sub_100002CFC(v19);
    v20 = sub_100007E68();
    *(v20 + 16) = xmmword_1001E5F70;
    v21 = type metadata accessor for MediaCatalogSyncCoordinatorActor();
    sub_100006734(v21);
    v22 = AMSLogKey();
    if (v22)
    {
      v23 = v22;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v25 = v24;
    }

    else
    {
      v25 = 0;
    }

    sub_100003D34();
    sub_100005BA8();

    sub_10000AE3C((v14 + 16));
    sub_100009DDC("Media Catalog Sync disabled in the bag for ");
    sub_100012B18(&type metadata for MediaCatalogSyncIdentifier);
    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    sub_100002C5C(v25);
    sub_100003B48();
    LogInterpolation.init(stringInterpolation:)();
    v26 = static os_log_type_t.default.getter();
    sub_1000036B0(v26, v20);

    sub_10000B6A0();
    sub_10000A820();

    return v28(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, v36, a12, a13, a14);
  }
}

uint64_t sub_10008D234()
{
  v1 = *(v0 + 168);
  sub_100089AA4(*(v0 + 184), *(v0 + 80), *(v0 + 88), *(v0 + 136), *(v0 + 144), *(v0 + 152), *(v0 + 160));
  *(v0 + 176) = v1;

  v2 = *(v0 + 96);
  if (v1)
  {
    v3 = sub_10008D3C0;
  }

  else
  {
    v3 = sub_10008D2FC;
  }

  return _swift_task_switch(v3, v2, 0);
}

uint64_t sub_10008D2FC()
{
  sub_100004768();

  sub_10000B6A0();

  return v0();
}

uint64_t sub_10008D35C()
{
  sub_100004768();

  sub_100002D8C();

  return v0();
}

uint64_t sub_10008D3C0()
{
  sub_100004768();

  sub_100002D8C();

  return v0();
}

uint64_t sub_10008D424()
{
  sub_100004768();
  *(v1 + 88) = v2;
  *(v1 + 96) = v0;
  *(v1 + 193) = v3;
  *(v1 + 80) = v4;
  *(v1 + 192) = v5;
  *(v1 + 104) = *v0;
  v6 = type metadata accessor for LogInterpolation.StringInterpolation();
  sub_100003D10(v6);
  *(v1 + 112) = sub_100023C0C();
  v7 = sub_1000047B0();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_10008D4D0()
{
  sub_1000061B4();
  sub_10001CCA8();
  *(v1 + 120) = sub_1000115D0(*(v1 + 192), v2, v3);
  if (v0)
  {

    sub_100002D8C();

    return v4();
  }

  else
  {
    v6 = swift_task_alloc();
    *(v1 + 128) = v6;
    *v6 = v1;
    v7 = sub_100004AAC(v6);

    return sub_10008AA94(v7);
  }
}

uint64_t sub_10008D5AC()
{
  sub_1000061B4();
  sub_10000A118();
  sub_100004EEC();
  *v2 = v1;
  v3 = *v0;
  sub_100002D98();
  *v4 = v3;
  sub_10003D2D8(v5, v6, v7, v8, v9);
  sub_10000A6B4();
  sub_10000711C();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_10008D6BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_100005BC8();
  if (sub_1000CC430(*(v14 + 192), *(v14 + 80), *(v14 + 88), *(v14 + 136), *(v14 + 144)))
  {
    v15 = swift_task_alloc();
    *(v14 + 176) = v15;
    *v15 = v14;
    v15[1] = sub_10008D914;
    sub_10000A820();

    return sub_100089D24();
  }

  else
  {

    if (qword_1002686F8 != -1)
    {
      sub_100002DC8();
      swift_once();
    }

    v34 = qword_100287858;
    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v18 = sub_10000620C();
    sub_100002CFC(v18);
    v19 = sub_100007E68();
    *(v19 + 16) = xmmword_1001E5F70;
    v20 = type metadata accessor for MediaCatalogSyncCoordinatorActor();
    sub_100006734(v20);
    v21 = AMSLogKey();
    if (v21)
    {
      v22 = v21;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v24 = v23;
    }

    else
    {
      v24 = 0;
    }

    sub_100003D34();
    sub_100005BA8();

    sub_10000AE3C((v14 + 16));
    sub_100009DDC("Media Catalog Sync disabled in the bag for ");
    sub_100012B18(&type metadata for MediaCatalogSyncIdentifier);
    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    sub_100002C5C(v24);
    sub_100003B48();
    LogInterpolation.init(stringInterpolation:)();
    v25 = static os_log_type_t.default.getter();
    sub_1000036B0(v25, v19);

    sub_10000B6A0();
    sub_10000A820();

    return v27(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, v34, a12, a13, a14);
  }
}

uint64_t sub_10008D914()
{
  v2 = *v1;
  sub_100004EEC();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 184) = v0;

  v5 = *(v2 + 96);
  if (v0)
  {
    v6 = sub_10008DA94;
  }

  else
  {
    v6 = sub_10008E15C;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10008DA94()
{
  sub_100004768();

  sub_100002D8C();

  return v0();
}

void *sub_10008DAF8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = v4;
  v10 = a1;
  swift_beginAccess();
  v11 = *(v4 + 120);
  if (*(v11 + 16))
  {

    v12 = sub_1000AABE8();
    if (v13)
    {
      a4 = *(*(v11 + 56) + 8 * v12);

      return a4;
    }
  }

  v16[3] = type metadata accessor for MediaCatalogSyncCoordinatorActor();
  v16[4] = &off_100246728;
  v16[0] = v6;
  type metadata accessor for MediaCatalogSyncActor(0);
  swift_allocObject();

  v14 = sub_1000843D8(v10, a2, a3, &type metadata for MediaCatalogSyncNetworking, &off_1002467F8, &type metadata for MediaCatalogSyncFileSystemStateStore, &off_1002467A0, &type metadata for MediaCatalogSyncFileSystemPageStore, &off_100246760, a4, v16, &type metadata for MediaCatalogSyncBackgroundTaskScheduler);
  if (!v5)
  {
    a4 = v14;
    swift_beginAccess();

    swift_isUniquelyReferenced_nonNull_native();
    v17 = *(v6 + 120);
    sub_1000AC40C();
    *(v6 + 120) = v17;
    swift_endAccess();
  }

  return a4;
}

uint64_t sub_10008DCC0()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_10008DCF0()
{
  sub_10008DCC0();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_10008DD1C()
{
  sub_100004768();
  *(v1 + 88) = v2;
  *(v1 + 96) = v0;
  *(v1 + 80) = v3;
  *(v1 + 120) = v4;
  v5 = type metadata accessor for LogInterpolation.StringInterpolation();
  sub_100003D10(v5);
  *(v1 + 104) = sub_100023C0C();
  v6 = sub_1000047B0();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_10008DD9C()
{
  if (qword_1002686F8 != -1)
  {
    sub_100002DC8();
    swift_once();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v1 = sub_10000620C();
  sub_100002CFC(v1);
  sub_1000056F8();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1001E5F70;
  v3 = type metadata accessor for MediaCatalogSyncCoordinatorActor();
  sub_100006734(v3);
  v4 = AMSLogKey();
  if (v4)
  {
    v5 = v4;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v7 = *(v0 + 80);
  v6 = *(v0 + 88);
  v8 = *(v0 + 120);
  static LogInterpolation.prefix(_:_:)();

  sub_100002C00((v0 + 16));
  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v9._object = 0x80000001001F3BC0;
  v9._countAndFlagsBits = 0xD000000000000012;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v9);
  v10 = sub_1000D0004(v8, v7, v6);
  *(v0 + 72) = &type metadata for String;
  *(v0 + 48) = v10;
  *(v0 + 56) = v11;
  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  sub_100002C5C(v0 + 48);
  sub_100003B48();
  LogInterpolation.init(stringInterpolation:)();
  v12 = static os_log_type_t.default.getter();
  sub_1000036B0(v12, v2);

  v13 = swift_task_alloc();
  *(v0 + 112) = v13;
  *v13 = v0;
  v13[1] = sub_10008DFF0;

  return sub_10008AD40();
}

uint64_t sub_10008DFF0()
{
  sub_100004768();
  sub_1000056A8();
  v1 = *v0;
  sub_100002D20();
  *v2 = v1;

  sub_100002D8C();

  return v3();
}

void sub_10008E0EC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_10008E160@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10007B9A4(&unk_10026FEE0, &unk_1001E67C0);
  __chkstk_darwin(v2 - 8);
  v4 = &v7 - v3;
  sub_10001E8B8();
  v5 = type metadata accessor for URL();
  if (sub_100009F34(v4, 1, v5) != 1)
  {
    return (*(*(v5 - 8) + 32))(a1, v4, v5);
  }

  sub_10001DCD4();
  result = sub_100009F34(v4, 1, v5);
  if (result != 1)
  {
    return sub_10008E750(v4);
  }

  return result;
}

uint64_t sub_10008E26C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_10000B6B0(a1, a2, a3, a4);
  sub_100002CC4();
  __chkstk_darwin(v5);
  sub_100002DEC();
  v8 = v7 - v6;
  type metadata accessor for MediaCatalogSyncPageStoreCore(0);
  sub_100002DDC();
  __chkstk_darwin(v9);
  sub_100002DEC();
  v12 = (v11 - v10);
  result = sub_10008E160(v8);
  if (!v4)
  {
    v12[3] = type metadata accessor for LiveFileStore();
    v12[4] = &protocol witness table for LiveFileStore;
    sub_100017E64(v12);
    LiveFileStore.init()();
    v14 = sub_100007874();
    v15(v14);
    sub_10000BD48();
    sub_1000D3EDC(v16);
    return sub_10008E6F4(v12);
  }

  return result;
}

uint64_t sub_10008E3BC@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for URL();
  sub_100002CC4();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_100002DEC();
  v10 = v9 - v8;
  v11 = type metadata accessor for MediaCatalogSyncPageStoreCore(0);
  sub_100002DDC();
  __chkstk_darwin(v12);
  sub_100002DEC();
  v15 = (v14 - v13);
  v16 = *a1;
  v17 = *(a1 + 2);
  v20 = *(a1 + 1);
  result = sub_10008E160(v10);
  if (!v2)
  {
    v15[3] = type metadata accessor for LiveFileStore();
    v15[4] = &protocol witness table for LiveFileStore;
    sub_100017E64(v15);
    LiveFileStore.init()();
    (*(v6 + 32))(v15 + *(v11 + 20), v10, v4);
    v19 = v15 + *(v11 + 24);
    *v19 = v16;
    *(v19 + 1) = v20;
    *(v19 + 2) = v17;

    sub_1000D422C(a1, a2);
    return sub_10008E6F4(v15);
  }

  return result;
}

void *sub_10008E550(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_10000B6B0(a1, a2, a3, a4);
  sub_100002CC4();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_100002DEC();
  v10 = v9 - v8;
  type metadata accessor for MediaCatalogSyncPageStoreCore(0);
  sub_100002DDC();
  __chkstk_darwin(v11);
  sub_100002DEC();
  v14 = (v13 - v12);
  sub_10008E160(v10);
  if (!v4)
  {
    v14[3] = type metadata accessor for LiveFileStore();
    v14[4] = &protocol witness table for LiveFileStore;
    sub_100017E64(v14);
    LiveFileStore.init()();
    v15 = sub_100007874();
    v16(v15);
    sub_10000BD48();
    v6 = sub_1000D4534(v18);
    sub_10008E6F4(v14);
  }

  return v6;
}

uint64_t sub_10008E6F4(uint64_t a1)
{
  v2 = type metadata accessor for MediaCatalogSyncPageStoreCore(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10008E750(uint64_t a1)
{
  v2 = sub_10007B9A4(&unk_10026FEE0, &unk_1001E67C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10008E7C8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10007B9A4(&unk_10026FEE0, &unk_1001E67C0);
  __chkstk_darwin(v2 - 8);
  v4 = &v7 - v3;
  sub_10001E8B8();
  v5 = type metadata accessor for URL();
  if (sub_100009F34(v4, 1, v5) != 1)
  {
    return (*(*(v5 - 8) + 32))(a1, v4, v5);
  }

  sub_10001DCD4();
  result = sub_100009F34(v4, 1, v5);
  if (result != 1)
  {
    return sub_10008E750(v4);
  }

  return result;
}

uint64_t sub_10008E8D4(char a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for URL();
  sub_100002CC4();
  v9 = v8;
  __chkstk_darwin(v10);
  sub_100002DEC();
  v13 = v12 - v11;
  v14 = type metadata accessor for MediaCatalogSyncStateStoreCore(0);
  __chkstk_darwin(v14);
  sub_100002DEC();
  v17 = (v16 - v15);
  result = sub_10008E7C8(v13);
  if (!v3)
  {
    v17[3] = type metadata accessor for LiveFileStore();
    v17[4] = &protocol witness table for LiveFileStore;
    sub_100017E64(v17);
    LiveFileStore.init()();
    (*(v9 + 32))(v17 + *(v14 + 20), v13, v7);
    v19 = v17 + *(v14 + 24);
    *v19 = a1;
    *(v19 + 1) = a2;
    *(v19 + 2) = a3;

    sub_1000E0D00();
    return sub_10008EC20(v17);
  }

  return result;
}

uint64_t sub_10008EA60(char *a1)
{
  v3 = type metadata accessor for URL();
  sub_100002CC4();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_100002DEC();
  v9 = v8 - v7;
  v10 = type metadata accessor for MediaCatalogSyncStateStoreCore(0);
  __chkstk_darwin(v10);
  sub_100002DEC();
  v13 = (v12 - v11);
  v14 = *a1;
  v15 = *(a1 + 2);
  v18 = *(a1 + 1);
  result = sub_10008E7C8(v9);
  if (!v1)
  {
    v13[3] = type metadata accessor for LiveFileStore();
    v13[4] = &protocol witness table for LiveFileStore;
    sub_100017E64(v13);
    LiveFileStore.init()();
    (*(v5 + 32))(v13 + *(v10 + 20), v9, v3);
    v17 = v13 + *(v10 + 24);
    *v17 = v14;
    *(v17 + 1) = v18;
    *(v17 + 2) = v15;

    sub_1000E0F78(a1);
    return sub_10008EC20(v13);
  }

  return result;
}

uint64_t sub_10008EC20(uint64_t a1)
{
  v2 = type metadata accessor for MediaCatalogSyncStateStoreCore(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10008EC9C()
{
  sub_100004768();
  v0[28] = v1;
  v0[29] = v2;
  v0[27] = v3;
  type metadata accessor for MediaCatalogSyncResponse(0);
  v0[30] = swift_task_alloc();
  sub_1000060D0();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_10008ED28()
{
  sub_1000061B4();
  v1 = v0[29];
  v2 = sub_10008F9AC();
  v0[31] = v2;
  v3 = objc_allocWithZone(AMSMediaTokenService);
  v4 = v1;
  v5 = String._bridgeToObjectiveC()();
  v6 = [v3 initWithClientIdentifier:v5 bag:v4];
  v0[32] = v6;

  [v6 setClientType:0];
  [v6 setSession:v2];
  v7 = [objc_allocWithZone(AMSMediaProtocolHandler) initWithTokenService:v6];
  [v2 setProtocolHandler:v7];

  v8 = swift_task_alloc();
  v0[33] = v8;
  *v8 = v0;
  v8[1] = sub_10008EE94;

  return sub_10008FA18();
}

uint64_t sub_10008EE94()
{
  sub_100004768();
  sub_1000056A8();
  sub_100004EFC();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 272) = v4;
  *(v2 + 280) = v0;

  sub_1000060D0();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_10008EF94()
{
  sub_1000061B4();
  v1 = [*(v0 + 248) dataTaskPromiseWithRequest:*(v0 + 272)];
  *(v0 + 288) = v1;
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 208;
  *(v0 + 24) = sub_10008F0CC;
  v2 = swift_continuation_init();
  *(v0 + 136) = sub_10007B9A4(&qword_100269C00, &unk_1001E68B0);
  *(v0 + 80) = _NSConcreteStackBlock;
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_1000900A0;
  *(v0 + 104) = &unk_100246808;
  *(v0 + 112) = v2;
  [v1 resultWithCompletion:v0 + 80];

  return _swift_continuation_await(v0 + 16);
}

uint64_t sub_10008F0CC()
{
  sub_100004768();
  sub_1000056A8();
  sub_100004EFC();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 296) = *(v3 + 48);
  sub_1000060D0();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_10008F1C8()
{
  v1 = *(v0 + 208);
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = v2;
    v4 = *(v0 + 280);
    v5 = *(v0 + 240);
    v6 = *(v0 + 224);
    v7 = type metadata accessor for MediaCatalogSyncRequest(0);
    sub_1000900CC(v3, *(v6 + *(v7 + 20)), *(v6 + *(v7 + 20) + 8), *(v6 + *(v7 + 20) + 16), v5);
    v8 = *(v0 + 288);
    v9 = *(v0 + 272);
    if (v4)
    {

      if (qword_1002686F8 != -1)
      {
        sub_100006960(&qword_1002686F8);
      }

      v27 = *(v0 + 256);
      v28 = *(v0 + 248);
      v29 = *(v0 + 216);
      sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
      v10 = type metadata accessor for LogInterpolation();
      sub_100002CFC(v10);
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_1001E5F60;
      v12 = AMSSetLogKeyIfNeeded();
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      static LogInterpolation.prefix<A>(_:_:)();

      sub_100006224();
      swift_getErrorValue();
      *(v0 + 168) = *(v0 + 184);
      sub_100017E64((v0 + 144));
      sub_1000047A4();
      (*(v13 + 16))();
      static LogInterpolation.traceableSensitive(_:)();
      sub_100009FB0(v0 + 144, &qword_10026D350, &qword_1001E6050);
      v14 = static os_log_type_t.error.getter();
      sub_1000036B0(v14, v11);

      *v29 = v4;
      sub_10007B9A4(&qword_100269AC0, &unk_1001E6688);
    }

    else
    {
      v22 = *(v0 + 248);
      v23 = *(v0 + 240);
      v24 = *(v0 + 216);

      sub_100090CB8(v23, v24);
      sub_10007B9A4(&qword_100269AC0, &unk_1001E6688);
    }
  }

  else
  {
    v15 = *(v0 + 288);
    v16 = *(v0 + 272);
    v18 = *(v0 + 248);
    v17 = *(v0 + 256);
    v19 = *(v0 + 216);

    sub_100090C64();
    v20 = swift_allocError();
    *v21 = 2;

    *v19 = v20;
    sub_10007B9A4(&qword_100269AC0, &unk_1001E6688);
  }

  swift_storeEnumTagMultiPayload();

  sub_100002D8C();

  return v25();
}

uint64_t sub_10008F560()
{
  v1 = v0[35];
  if (qword_1002686F8 != -1)
  {
    sub_100006960(&qword_1002686F8);
  }

  v10 = v0[32];
  v11 = v0[31];
  v2 = v0[27];
  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v3 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v3);
  v4 = sub_100007888();
  *(v4 + 16) = xmmword_1001E5F60;
  v5 = AMSSetLogKeyIfNeeded();
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  sub_100007E90(&type metadata for MediaCatalogSyncNetworking);

  sub_100006224();
  sub_10000A2E4();
  v0[21] = v0[23];
  sub_100017E64(v0 + 18);
  sub_1000047A4();
  (*(v6 + 16))();
  static LogInterpolation.traceableSensitive(_:)();
  sub_100009FB0((v0 + 18), &qword_10026D350, &qword_1001E6050);
  v7 = static os_log_type_t.error.getter();
  sub_1000036B0(v7, v4);

  *v2 = v1;
  sub_10007B9A4(&qword_100269AC0, &unk_1001E6688);
  swift_storeEnumTagMultiPayload();

  sub_100002D8C();

  return v8();
}

uint64_t sub_10008F77C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3[36];
  v5 = v3[34];
  swift_willThrow();

  v6 = v3[37];
  if (qword_1002686F8 != -1)
  {
    sub_100006960(&qword_1002686F8);
  }

  v15 = v3[32];
  v16 = v3[31];
  v7 = v3[27];
  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v8 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v8);
  v9 = sub_100007888();
  *(v9 + 16) = xmmword_1001E5F60;
  v10 = AMSSetLogKeyIfNeeded();
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  sub_100007E90(&type metadata for MediaCatalogSyncNetworking);

  sub_100006224();
  sub_10000A2E4();
  v3[21] = v3[23];
  sub_100017E64(v3 + 18);
  sub_1000047A4();
  (*(v11 + 16))();
  static LogInterpolation.traceableSensitive(_:)();
  sub_100009FB0((v3 + 18), &qword_10026D350, &qword_1001E6050);
  v12 = static os_log_type_t.error.getter();
  sub_1000036B0(v12, v9);

  *v7 = v6;
  sub_10007B9A4(&qword_100269AC0, &unk_1001E6688);
  swift_storeEnumTagMultiPayload();

  sub_100002D8C();

  return v13();
}

id sub_10008F9AC()
{
  v0 = [objc_allocWithZone(AMSURLSession) init];
  v1 = [objc_allocWithZone(AMSMediaResponseDecoder) init];
  [v0 setResponseDecoder:v1];

  return v0;
}

uint64_t sub_10008FA18()
{
  sub_100004768();
  v0[20] = v1;
  v0[21] = v2;
  v0[19] = v3;
  v4 = type metadata accessor for URL();
  v0[22] = v4;
  sub_100002CFC(v4);
  v0[23] = v5;
  v0[24] = swift_task_alloc();
  sub_1000060D0();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_10008FACC()
{
  sub_1000061B4();
  v1 = v0[20];
  v2 = v0[21];
  v3 = sub_100090D70();
  swift_getObjectType();
  swift_unknownObjectRetain();
  v0[25] = sub_100090DB4(v1, v2, v3);
  v4 = swift_task_alloc();
  v0[26] = v4;
  *v4 = v0;
  v4[1] = sub_10008FBA8;
  v5 = v0[24];
  v6 = v0[19];

  return sub_100090468(v5, v6);
}

uint64_t sub_10008FBA8()
{
  sub_100004768();
  sub_1000056A8();
  sub_100004EFC();
  *v2 = v1;
  *(v1 + 216) = v0;

  sub_1000060D0();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_10008FCA8@<X0>(NSURL *a1@<X8>)
{
  v2 = v1[25];
  URL._bridgeToObjectiveC()(a1);
  v4 = v3;
  v5 = [v2 requestWithURL:v3];
  v1[28] = v5;

  v1[2] = v1;
  v1[7] = v1 + 18;
  v1[3] = sub_10008FDFC;
  v6 = swift_continuation_init();
  v1[17] = sub_10007B9A4(&qword_100269C18, &qword_1001E68C8);
  v1[10] = _NSConcreteStackBlock;
  v1[11] = 1107296256;
  v1[12] = sub_1000900A0;
  v1[13] = &unk_100246830;
  v1[14] = v6;
  [v5 resultWithCompletion:v1 + 10];

  return _swift_continuation_await(v1 + 2);
}

uint64_t sub_10008FDFC()
{
  sub_100004768();
  sub_1000056A8();
  sub_100004EFC();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 232) = *(v3 + 48);
  sub_1000060D0();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_10008FEF8()
{
  sub_1000061B4();
  v1 = *(v0 + 224);
  v2 = *(v0 + 192);
  v3 = *(v0 + 176);
  v4 = *(v0 + 184);

  (*(v4 + 8))(v2, v3);
  v5 = *(v0 + 144);

  v6 = *(v0 + 8);

  return v6(v5);
}

uint64_t sub_10008FF94()
{
  sub_100004768();

  sub_100002D8C();

  return v1();
}

uint64_t sub_10008FFF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3[28];
  v5 = v3[24];
  v6 = v3[25];
  v7 = v3[22];
  v8 = v3[23];
  swift_willThrow();

  (*(v8 + 8))(v5, v7);

  sub_100002D8C();

  return v9();
}

uint64_t sub_1000900CC@<X0>(void *a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v44 = a4;
  v41 = a3;
  v40 = a2;
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v36 - v13;
  v15 = sub_1001A46B8(a1);
  if (!v15 || (sub_10014AA40(v15), v17 = v16, , !v17))
  {
    v17 = Dictionary.init(dictionaryLiteral:)();
  }

  sub_1000CBBEC(1702125892, 0xE400000000000000, v17, v12);

  if (!v5)
  {
    (*(v9 + 32))(v14, v12, v8);
    v19 = [a1 data];
    v20 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v21;

    sub_1000D1110(v42);
    sub_1000253FC(v20, v22);
    v23 = [a1 data];
    v24 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v25;

    v39 = sub_1000D11C4(v24, v26);
    sub_1000253FC(v24, v26);
    v27 = [a1 data];
    v28 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v37 = v29;
    v38 = v28;

    v30 = type metadata accessor for MediaCatalogSyncResponse(0);
    (*(v9 + 16))(a5 + v30[7], v14, v8);
    v31 = [a1 responseStatusCode];
    result = (*(v9 + 8))(v14, v8);
    if ((v31 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v32 = v42[1];
      *(a5 + 40) = v42[0];
      v33 = v39;
      *a5 = v40;
      v34 = v44;
      *(a5 + 8) = v41;
      *(a5 + 16) = v34;
      v35 = v37;
      *(a5 + 24) = v38;
      *(a5 + 32) = v35;
      *(a5 + 56) = v32;
      *(a5 + 72) = v43;
      *(a5 + v30[8]) = v31;
      *(a5 + v30[9]) = v33;
    }
  }

  return result;
}

uint64_t sub_100090468(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_10007B9A4(&qword_100269C20, &qword_1001E68D0);
  v2[4] = swift_task_alloc();
  v3 = type metadata accessor for URLQueryItem();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();

  return _swift_task_switch(sub_100090560, 0, 0);
}

uint64_t sub_100090560()
{
  v1 = v0[2];
  v2 = v0[3];
  type metadata accessor for URL();
  sub_1000047A4();
  (*(v3 + 16))(v1, v2);
  if (*(v2 + *(type metadata accessor for MediaCatalogSyncRequest(0) + 20)) == 1)
  {
    v4 = v0[4];
    v5 = v0[5];
    sub_1000907D0(v4);
    if (sub_100009F34(v4, 1, v5) == 1)
    {
      sub_100009FB0(v0[4], &qword_100269C20, &qword_1001E68D0);
    }

    else
    {
      v7 = v0[6];
      v6 = v0[7];
      v8 = v0[5];
      (*(v7 + 32))(v6, v0[4], v8);
      sub_10007B9A4(&qword_100269C28, &qword_1001E68D8);
      v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_1001E61B0;
      (*(v7 + 16))(v10 + v9, v6, v8);
      URL.append(queryItems:)(v10);

      (*(v7 + 8))(v6, v8);
    }
  }

  sub_100002D8C();

  return v11();
}

uint64_t *sub_100090720(uint64_t a1, void *a2, void *a3, uint64_t (*a4)(uint64_t, id), uint64_t (*a5)(uint64_t, id))
{
  result = sub_100003CA8((a1 + 32), *(a1 + 56));
  v8 = *result;
  if (a3)
  {
    v9 = a3;
    v10 = v8;
    v11 = a4;

    return v11(v10, v9);
  }

  if (a2)
  {
    v9 = a2;
    v10 = v8;
    v11 = a5;

    return v11(v10, v9);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000907D0@<X0>(uint64_t a1@<X8>)
{
  sub_1000909B4();
  if (v2)
  {
    URLQueryItem.init(name:value:)();

    v3 = 0;
  }

  else
  {
    if (qword_1002686F8 != -1)
    {
      swift_once();
    }

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    type metadata accessor for LogInterpolation();
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_1001E5F70;
    v5 = AMSSetLogKeyIfNeeded();
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    static LogInterpolation.prefix<A>(_:_:)();

    LogInterpolation.init(stringLiteral:)();
    v6 = static os_log_type_t.error.getter();
    sub_1000036B0(v6, v4);

    v3 = 1;
  }

  v7 = type metadata accessor for URLQueryItem();

  return sub_10000A7C0(a1, v3, 1, v7);
}

uint64_t sub_1000909B4()
{
  v0 = objc_opt_self();
  if (([v0 deviceIsAppleTV] & 1) != 0 || (objc_msgSend(v0, "deviceIsAppleWatch") & 1) != 0 || (objc_msgSend(v0, "deviceIsAudioAccessory") & 1) != 0 || (objc_msgSend(v0, "deviceIsiPad") & 1) != 0 || (objc_msgSend(v0, "deviceIsiPhone") & 1) != 0 || (objc_msgSend(v0, "deviceIsMac") & 1) != 0 || objc_msgSend(v0, "deviceIsRealityDevice"))
  {
    return static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100090ACC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100090B7C;

  return sub_10008EC9C();
}

uint64_t sub_100090B7C()
{
  sub_100004768();
  sub_1000056A8();

  sub_100002D8C();

  return v0();
}

unint64_t sub_100090C64()
{
  result = qword_100269C08;
  if (!qword_100269C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100269C08);
  }

  return result;
}

uint64_t sub_100090CB8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MediaCatalogSyncResponse(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_100090D70()
{
  result = qword_100269C10;
  if (!qword_100269C10)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100269C10);
  }

  return result;
}

id sub_100090DB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithTokenService:a1 bag:a2];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v3;
}

void sub_100090E20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = type metadata accessor for DispatchQoS.QoSClass();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  sub_100002DEC();
  v10 = v9 - v8;
  sub_1000DE200(v5, a2, a3);
  v11 = [objc_opt_self() sharedScheduler];
  v12 = String._bridgeToObjectiveC()();

  sub_100002BC0(0, &qword_10026CFB0, OS_dispatch_queue_ptr);
  (*(v7 + 104))(v10, enum case for DispatchQoS.QoSClass.background(_:), v6);
  v13 = static OS_dispatch_queue.global(qos:)();
  (*(v7 + 8))(v10, v6);
  aBlock[4] = sub_100091030;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10008E0EC;
  aBlock[3] = &unk_100246858;
  v14 = _Block_copy(aBlock);

  [v11 registerForTaskWithIdentifier:v12 usingQueue:v13 launchHandler:v14];
  _Block_release(v14);
}

id sub_100091034(void *a1)
{
  v2 = type metadata accessor for LogInterpolation.StringInterpolation();
  v3 = sub_100003D10(v2);
  __chkstk_darwin(v3);
  sub_100002DEC();
  v4 = [a1 identifier];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v8 = sub_1000DE298(v5, v7);
  v10 = v9;
  v12 = v11;

  if (qword_1002686F8 != -1)
  {
    sub_100006960(&qword_1002686F8);
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v13 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v13);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1001E61B0;
  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  sub_100004810();
  v15._countAndFlagsBits = 0xD00000000000001DLL;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v15);
  v16 = [a1 identifier];
  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

  v24 = &type metadata for String;
  v23[0] = v17;
  v23[1] = v19;
  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  sub_10000A064(v23, &qword_10026D350, &qword_1001E6050);
  v20._countAndFlagsBits = 0x7265676769727420;
  v20._object = 0xEE00206E6F206465;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v20);
  v24 = type metadata accessor for Date();
  sub_100017E64(v23);
  static Date.now.getter();
  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  sub_10000A064(v23, &qword_10026D350, &qword_1001E6050);
  sub_100003B48();
  LogInterpolation.init(stringInterpolation:)();
  v21 = static os_log_type_t.default.getter();
  sub_1000036B0(v21, v14);

  if (qword_1002685E0 != -1)
  {
    swift_once();
  }

  sub_100092D78(v8, v10, v12, 0x656C756465686353, 0xEE006B7361742064);

  return [a1 setTaskCompleted];
}

uint64_t sub_1000914E4(uint64_t a1, uint64_t a2)
{
  v2[26] = a1;
  v2[27] = a2;
  v3 = type metadata accessor for LogInterpolation.StringInterpolation();
  sub_100003D10(v3);
  v2[28] = swift_task_alloc();
  v4 = sub_10007B9A4(&unk_100271EA0, &qword_1001E77F0);
  sub_100003D10(v4);
  v2[29] = swift_task_alloc();
  v5 = type metadata accessor for Date();
  v2[30] = v5;
  sub_100002CFC(v5);
  v2[31] = v6;
  v2[32] = swift_task_alloc();

  return _swift_task_switch(sub_1000915F8, 0, 0);
}

void sub_1000915F8()
{
  v1 = sub_10000B6D4();
  sub_1000DE200(v1, v2, v3);
  v4 = sub_10000B6D4();
  sub_100090E20(v4, v5, v6);
  v7 = [objc_opt_self() sharedScheduler];
  v8 = String._bridgeToObjectiveC()();
  v9 = [v7 taskRequestForIdentifier:v8];

  if (v9)
  {
    objc_opt_self();
    v10 = swift_dynamicCastObjCClass();
    if (v10)
    {
      v11 = v10;
      v13 = *(v0 + 232);
      v12 = *(v0 + 240);
      v14 = *(v0 + 216);

      v15 = type metadata accessor for MediaCatalogSyncState(0);
      sub_1000652F0(v14 + *(v15 + 28), v13);
      if (sub_100009F34(v13, 1, v12) == 1)
      {
        sub_10000A064(*(v0 + 232), &unk_100271EA0, &qword_1001E77F0);
LABEL_16:
        v39 = sub_100091DA4(v11, *(v0 + 208));
        goto LABEL_17;
      }

      (*(*(v0 + 248) + 32))(*(v0 + 256), *(v0 + 232), *(v0 + 240));
      type metadata accessor for MediaCatalogSyncScheduleModel(0);
      sub_100092A84();
      if (dispatch thunk of static Comparable.< infix(_:_:)())
      {
        (*(*(v0 + 248) + 8))(*(v0 + 256), *(v0 + 240));
        goto LABEL_16;
      }

      if (qword_1002686F8 == -1)
      {
LABEL_22:
        sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
        v42 = type metadata accessor for LogInterpolation();
        sub_100002CFC(v42);
        v43 = swift_allocObject();
        *(v43 + 16) = xmmword_1001E5F70;
        v63 = v43;
        v44 = AMSSetLogKeyIfNeeded();
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v46 = v45;

        static LogInterpolation.prefix<A>(_:_:)();

        LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
        v47._countAndFlagsBits = 0xD000000000000029;
        v47._object = 0x80000001001F3D40;
        LogInterpolation.StringInterpolation.appendLiteral(_:)(v47);
        v48 = sub_10000B6D4();
        v51 = sub_1000D0004(v48, v49, v50);
        *(v0 + 136) = &type metadata for String;
        *(v0 + 112) = v51;
        *(v0 + 120) = v52;
        LogInterpolation.StringInterpolation.appendInterpolation(sensitive:)();
        sub_100023C24(v0 + 112);
        v53._countAndFlagsBits = 0xD000000000000018;
        v53._object = 0x80000001001F3D70;
        LogInterpolation.StringInterpolation.appendLiteral(_:)(v53);
        v54 = [v11 identifier];
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        sub_100006240();

        *(v0 + 168) = &type metadata for String;
        *(v0 + 144) = 0xD000000000000012;
        *(v0 + 152) = v46;
        LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
        sub_100023C24(v0 + 144);
        v55._countAndFlagsBits = 0xD00000000000002CLL;
        v55._object = 0x80000001001F3D90;
        LogInterpolation.StringInterpolation.appendLiteral(_:)(v55);
        Date.timeIntervalSinceNow.getter();
        sub_100002E08();
        if (v33 ^ v34 | v32)
        {
          if (v56 > -9.22337204e18)
          {
            sub_100006980();
            if (v33)
            {
              v59 = *(v0 + 248);
              v58 = *(v0 + 256);
              v60 = *(v0 + 240);
              *(v0 + 200) = &type metadata for Int;
              *(v0 + 176) = v57;
              LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
              sub_10000A064(v0 + 176, &qword_10026D350, &qword_1001E6050);
              v61._countAndFlagsBits = 0xD00000000000003DLL;
              v61._object = 0x80000001001F3DC0;
              LogInterpolation.StringInterpolation.appendLiteral(_:)(v61);
              LogInterpolation.init(stringInterpolation:)();
              v62 = static os_log_type_t.default.getter();
              sub_1000036B0(v62, v63);

              (*(v59 + 8))(v58, v60);
              v40 = 0;
              goto LABEL_18;
            }

LABEL_32:
            __break(1u);
            return;
          }
        }

        else
        {
          __break(1u);
        }

        __break(1u);
        goto LABEL_32;
      }

LABEL_30:
      sub_100006960(&qword_1002686F8);
      goto LABEL_22;
    }
  }

  if (qword_1002686F8 != -1)
  {
    sub_100006960(&qword_1002686F8);
  }

  v17 = *(v0 + 240);
  v16 = *(v0 + 248);
  v18 = *(v0 + 208);
  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v19 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v19);
  v9 = ((*(v20 + 80) + 32) & ~*(v20 + 80));
  v11 = swift_allocObject();
  v11[1] = xmmword_1001E61B0;
  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v21._countAndFlagsBits = 0xD000000000000027;
  v21._object = 0x80000001001F39A0;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v21);
  v22 = sub_10000B6D4();
  v25 = sub_1000D0004(v22, v23, v24);
  *(v0 + 40) = &type metadata for String;
  *(v0 + 16) = v25;
  *(v0 + 24) = v26;
  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  sub_100023C24(v0 + 16);
  v27._countAndFlagsBits = 544108320;
  v27._object = 0xE400000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v27);
  v28 = *(type metadata accessor for MediaCatalogSyncScheduleModel(0) + 20);
  *(v0 + 72) = v17;
  v29 = sub_100017E64((v0 + 48));
  (*(v16 + 16))(v29, v18 + v28, v17);
  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  sub_100023C24(v0 + 48);
  v30._countAndFlagsBits = 0x206863696877202CLL;
  v30._object = 0xEB00000000207369;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v30);
  Date.timeIntervalSinceNow.getter();
  sub_100002E08();
  if (!(v33 ^ v34 | v32))
  {
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (v31 <= -9.22337204e18)
  {
    goto LABEL_28;
  }

  sub_100006980();
  if (!v33)
  {
    goto LABEL_29;
  }

  v36 = *(v0 + 208);
  *(v0 + 104) = &type metadata for Int;
  *(v0 + 80) = v35;
  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  sub_10000A064(v0 + 80, &qword_10026D350, &qword_1001E6050);
  sub_100004810();
  v37._countAndFlagsBits = 0xD000000000000012;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v37);
  LogInterpolation.init(stringInterpolation:)();
  v38 = static os_log_type_t.default.getter();
  sub_1000036B0(v38, v11);

  sub_100002BC0(0, &qword_100269C30, BGNonRepeatingSystemTaskRequest_ptr);
  v9 = sub_100092378();
  [v9 setRequiresNetworkConnectivity:1];
  Date.timeIntervalSinceNow.getter();
  [v9 setScheduleAfter:?];
  [v9 setPriority:2];
  v39 = sub_1000923EC(v9, v36);
LABEL_17:
  v40 = v39;

LABEL_18:

  v41 = *(v0 + 8);

  v41(v40 & 1);
}

id sub_100091DA4(void *a1, unsigned __int8 *a2)
{
  v4 = type metadata accessor for LogInterpolation.StringInterpolation();
  v5 = sub_100003D10(v4);
  __chkstk_darwin(v5);
  sub_100002DEC();
  if (qword_1002686F8 != -1)
  {
    sub_100006960(&qword_1002686F8);
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v6 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v6);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1001E5F70;
  v8 = AMSSetLogKeyIfNeeded();
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  static LogInterpolation.prefix<A>(_:_:)();

  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v9._countAndFlagsBits = 0xD000000000000029;
  v9._object = 0x80000001001F3D40;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v9);
  v44 = *a2;
  v42 = *(a2 + 2);
  v43 = *(a2 + 1);
  sub_1000D0004(*a2, v43, v42);
  LogInterpolation.StringInterpolation.appendInterpolation(sensitive:)();
  sub_1000073A4();
  v10._countAndFlagsBits = 0xD000000000000018;
  v10._object = 0x80000001001F3D70;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v10);
  v11 = [a1 identifier];
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  v45 = v12;
  v46 = v14;
  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  sub_1000073A4();
  v15._countAndFlagsBits = 0xD000000000000013;
  v15._object = 0x80000001001F3E00;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v15);
  [a1 scheduleAfter];
  v47 = type metadata accessor for Date();
  sub_100017E64(&v45);
  Date.init(timeIntervalSinceNow:)();
  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  sub_1000073A4();
  v16._countAndFlagsBits = 0xD00000000000001ELL;
  v16._object = 0x80000001001F3E20;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v16);
  type metadata accessor for MediaCatalogSyncScheduleModel(0);
  Date.timeIntervalSinceNow.getter();
  sub_100002E08();
  if (!(v19 ^ v20 | v18))
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v17 <= -9.22337204e18)
  {
    goto LABEL_12;
  }

  sub_100006980();
  if (!v19)
  {
LABEL_13:
    __break(1u);
  }

  v47 = &type metadata for Int;
  v45 = v21;
  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  sub_10000A064(&v45, &qword_10026D350, &qword_1001E6050);
  sub_100004810();
  v22._countAndFlagsBits = 0xD000000000000012;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v22);
  LogInterpolation.init(stringInterpolation:)();
  v23 = static os_log_type_t.default.getter();
  sub_1000036B0(v23, v7);

  Date.timeIntervalSinceNow.getter();
  [a1 setScheduleAfter:?];
  v24 = [objc_opt_self() sharedScheduler];
  v45 = 0;
  v25 = [v24 updateTaskRequest:a1 error:&v45];

  if (v25)
  {
    v26 = v45;
  }

  else
  {
    v27 = v45;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v28 = _convertErrorToNSError(_:)();
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_1001E5F70;
    v30 = AMSSetLogKeyIfNeeded();
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_100006240();

    static LogInterpolation.prefix<A>(_:_:)();

    LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v31._countAndFlagsBits = 0xD000000000000041;
    v31._object = 0x80000001001F3E40;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v31);
    v32 = sub_1000D0004(v44, v43, v42);
    v47 = &type metadata for String;
    v45 = v32;
    v46 = v33;
    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    sub_10000A064(&v45, &qword_10026D350, &qword_1001E6050);
    v34._countAndFlagsBits = 8250;
    v34._object = 0xE200000000000000;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v34);
    v35 = v28;
    v36 = [v28 localizedDescription];
    v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v39 = v38;

    v47 = &type metadata for String;
    v45 = v37;
    v46 = v39;
    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    sub_10000A064(&v45, &qword_10026D350, &qword_1001E6050);
    sub_100003B48();
    LogInterpolation.init(stringInterpolation:)();
    v40 = static os_log_type_t.error.getter();
    sub_1000036B0(v40, v29);
  }

  return v25;
}

id sub_100092378()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = String._bridgeToObjectiveC()();

  v2 = [v0 initWithIdentifier:v1];

  return v2;
}

id sub_1000923EC(void *a1, unsigned __int8 *a2)
{
  v4 = type metadata accessor for LogInterpolation.StringInterpolation();
  v5 = sub_100003D10(v4);
  __chkstk_darwin(v5);
  sub_100002DEC();
  if (qword_1002686F8 != -1)
  {
    sub_100006960(&qword_1002686F8);
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v6 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v6);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1001E5F70;
  v8 = AMSSetLogKeyIfNeeded();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100006240();

  static LogInterpolation.prefix<A>(_:_:)();

  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  sub_100004810();
  v9._countAndFlagsBits = 0xD00000000000003ALL;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v9);
  v10 = *a2;
  v11 = *(a2 + 1);
  v12 = *(a2 + 2);
  v39 = v11;
  v42 = &type metadata for String;
  v40 = sub_1000D0004(v10, v11, v12);
  v41 = v13;
  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  sub_10000A064(&v40, &qword_10026D350, &qword_1001E6050);
  v14._countAndFlagsBits = 544106784;
  v14._object = 0xE400000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v14);
  [a1 scheduleAfter];
  sub_100002E08();
  if (!(v17 ^ v18 | v16))
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v15 <= -9.22337204e18)
  {
    goto LABEL_12;
  }

  sub_100006980();
  if (!v17)
  {
LABEL_13:
    __break(1u);
  }

  v42 = &type metadata for Int;
  v40 = v19;
  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  sub_10000A064(&v40, &qword_10026D350, &qword_1001E6050);
  v20._countAndFlagsBits = 0x73646E6F63657320;
  v20._object = 0xE800000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v20);
  LogInterpolation.init(stringInterpolation:)();
  v21 = static os_log_type_t.default.getter();
  sub_1000036B0(v21, v7);

  v22 = [objc_opt_self() sharedScheduler];
  v40 = 0;
  v23 = [v22 submitTaskRequest:a1 error:&v40];

  if (v23)
  {
    v24 = v40;
  }

  else
  {
    v25 = v40;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v38 = _convertErrorToNSError(_:)();
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_1001E5F70;
    v27 = AMSSetLogKeyIfNeeded();
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    static LogInterpolation.prefix<A>(_:_:)();

    LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v28._countAndFlagsBits = 0xD000000000000041;
    v28._object = 0x80000001001F3ED0;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v28);
    v29 = sub_1000D0004(v10, v39, v12);
    v42 = &type metadata for String;
    v40 = v29;
    v41 = v30;
    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    sub_10000A064(&v40, &qword_10026D350, &qword_1001E6050);
    v31._countAndFlagsBits = 8250;
    v31._object = 0xE200000000000000;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v31);
    v32 = [v38 localizedDescription];
    v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v35 = v34;

    v42 = &type metadata for String;
    v40 = v33;
    v41 = v35;
    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    sub_10000A064(&v40, &qword_10026D350, &qword_1001E6050);
    sub_100003B48();
    LogInterpolation.init(stringInterpolation:)();
    v36 = static os_log_type_t.error.getter();
    sub_1000036B0(v36, v26);
  }

  return v23;
}

uint64_t sub_1000928DC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100092978;

  return sub_1000914E4(a1, a2);
}

uint64_t sub_100092978(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

unint64_t sub_100092A84()
{
  result = qword_100269AD0;
  if (!qword_100269AD0)
  {
    type metadata accessor for Date();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100269AD0);
  }

  return result;
}

uint64_t sub_100092ADC()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_10007B9A4(&unk_10026FEC0, &qword_1001E6280);
  sub_100003D10(v3);
  sub_100004E78();
  __chkstk_darwin(v4);
  v6 = &v19[-1] - v5;
  v20 = &type metadata for AMSFlags;
  v21 = sub_10000D884();
  LOBYTE(v19[0]) = 2;
  v7 = isFeatureEnabled(_:)();
  sub_100002C00(v19);
  if (v7)
  {
    v8 = type metadata accessor for TaskPriority();
    sub_10001CCB8(v6, v9, v10, v8);
    v11 = swift_allocObject();
    v11[2] = 0;
    v11[3] = 0;
    v11[4] = v1;

    sub_10000A944();
    sub_1000E349C();
  }

  else
  {
    if (qword_1002686F8 != -1)
    {
      sub_100006960(&qword_1002686F8);
    }

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v13 = type metadata accessor for LogInterpolation();
    sub_100002CFC(v13);
    sub_1000056F8();
    v14 = sub_10000A124();
    *(v14 + 16) = xmmword_1001E5F70;
    v20 = v2;
    v19[0] = v1;

    v15 = AMSLogKey();
    if (v15)
    {
      v16 = v15;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(v19);
    sub_10000A5B0();
    v17 = static os_log_type_t.default.getter();
    sub_1000036B0(v17, v14);
  }
}

uint64_t sub_100092D78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = *v6;
  v13 = sub_10007B9A4(&unk_10026FEC0, &qword_1001E6280);
  sub_100003D10(v13);
  sub_100004E78();
  __chkstk_darwin(v14);
  v16 = &v29[-1] - v15;
  v30 = &type metadata for AMSFlags;
  v31 = sub_10000D884();
  LOBYTE(v29[0]) = 2;
  v17 = isFeatureEnabled(_:)();
  sub_100002C00(v29);
  if (v17)
  {
    v18 = type metadata accessor for TaskPriority();
    sub_10001CCB8(v16, v19, v20, v18);
    sub_10000B2F0();
    v21 = swift_allocObject();
    v21[2] = 0;
    v21[3] = 0;
    v21[4] = a1;
    v21[5] = a2;
    v21[6] = a3;
    v21[7] = v6;
    v21[8] = a4;
    v21[9] = a5;

    sub_10000A944();
    sub_1000E349C();
  }

  else
  {
    if (qword_1002686F8 != -1)
    {
      sub_100006960(&qword_1002686F8);
    }

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v23 = type metadata accessor for LogInterpolation();
    sub_100002CFC(v23);
    sub_1000056F8();
    v24 = sub_10000A124();
    *(v24 + 16) = xmmword_1001E5F70;
    v30 = v12;
    v29[0] = v6;

    v25 = AMSLogKey();
    if (v25)
    {
      v26 = v25;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(v29);
    sub_10000A5B0();
    v27 = static os_log_type_t.default.getter();
    sub_1000036B0(v27, v24);
  }
}

uint64_t sub_100093050(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4[18] = a4;
  v4[19] = *a4;
  type metadata accessor for LogInterpolation.StringInterpolation();
  v4[20] = swift_task_alloc();

  return _swift_task_switch(sub_100093108, 0, 0);
}

uint64_t sub_100093108()
{
  if (qword_1002686F8 != -1)
  {
    sub_100006960(&qword_1002686F8);
  }

  *(v0 + 168) = qword_100287858;
  *(v0 + 176) = sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v1 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v1);
  *(v0 + 184) = *(v2 + 72);
  *(v0 + 208) = *(v3 + 80);
  v4 = swift_allocObject();
  sub_10000AE6C(v4, xmmword_1001E5F70);
  v5 = AMSLogKey();
  if (v5)
  {
    v6 = v5;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  sub_100012B3C();

  sub_100002C00((v0 + 16));
  LogInterpolation.init(stringLiteral:)();
  v7 = static os_log_type_t.default.getter();
  sub_1000036B0(v7, v4);

  v8 = swift_task_alloc();
  *(v0 + 192) = v8;
  *v8 = v0;
  v8[1] = sub_1000932F4;

  return sub_10008C80C();
}

uint64_t sub_1000932F4()
{
  sub_100004768();
  sub_1000056A8();
  v3 = v2;
  sub_100002D98();
  *v4 = v3;
  v5 = *v1;
  sub_100002D20();
  *v6 = v5;
  *(v3 + 200) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100093418, 0, 0);
  }

  else
  {

    sub_100002D8C();

    return v7();
  }
}

uint64_t sub_100093418(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_100017F0C();
  sub_100003D48();
  v13 = v12[18];
  v14 = v12[19];
  v15 = swift_allocObject();
  v12[6] = v13;
  *(v15 + 16) = xmmword_1001E5F70;
  v12[9] = v14;

  v16 = AMSLogKey();
  if (v16)
  {
    v17 = v16;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(v12 + 6);
  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v18._object = 0x80000001001F40E0;
  v18._countAndFlagsBits = 0xD000000000000042;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v18);
  swift_getErrorValue();
  v12[13] = v12[15];
  sub_100017E64(v12 + 10);
  sub_1000047A4();
  sub_10000AB04();
  v19();
  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  sub_100009FB0((v12 + 10), &qword_10026D350, &qword_1001E6050);
  v20._countAndFlagsBits = 0;
  v20._object = 0xE000000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v20);
  LogInterpolation.init(stringInterpolation:)();
  v21 = static os_log_type_t.error.getter();
  sub_1000036B0(v21, v15);

  sub_100002D8C();
  sub_10000481C();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12);
}

uint64_t sub_1000935EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[26] = a8;
  v8[27] = v11;
  v8[24] = a6;
  v8[25] = a7;
  v8[22] = a4;
  v8[23] = a5;
  type metadata accessor for LogInterpolation.StringInterpolation();
  v8[28] = swift_task_alloc();

  return _swift_task_switch(sub_10009368C, 0, 0);
}

uint64_t sub_10009368C()
{
  if (v0[24])
  {
    v1 = swift_task_alloc();
    v0[29] = v1;
    *v1 = v0;
    v1[1] = sub_1000937A8;

    return sub_10008BAC8();
  }

  else
  {
    v3 = swift_task_alloc();
    v0[31] = v3;
    *v3 = v0;
    v3[1] = sub_1000938CC;

    return sub_10008AD40();
  }
}

uint64_t sub_1000937A8()
{
  sub_100004768();
  sub_1000056A8();
  v3 = v2;
  sub_100002D98();
  *v4 = v3;
  v5 = *v1;
  sub_100002D20();
  *v6 = v5;
  *(v3 + 240) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1000939F0, 0, 0);
  }

  else
  {

    sub_100002D8C();

    return v7();
  }
}

uint64_t sub_1000938CC()
{
  sub_100004768();
  sub_1000056A8();
  v3 = v2;
  sub_100002D98();
  *v4 = v3;
  v5 = *v1;
  sub_100002D20();
  *v6 = v5;
  *(v3 + 256) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100093C8C, 0, 0);
  }

  else
  {

    sub_100002D8C();

    return v7();
  }
}

uint64_t sub_100093F28(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 96) = a4;
  *(v5 + 104) = v4;
  *(v5 + 80) = a2;
  *(v5 + 88) = a3;
  *(v5 + 128) = a1;
  *(v5 + 112) = *v4;
  return sub_100006180(sub_100093F70);
}

uint64_t sub_100093F70()
{
  sub_100017F0C();
  sub_100003D48();
  if (qword_1002686F8 != -1)
  {
    sub_100006960(&qword_1002686F8);
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  sub_100002DFC();
  v1 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v1);
  sub_1000056F8();
  v2 = sub_100007128();
  sub_10000AE6C(v2, xmmword_1001E5F60);
  v3 = AMSLogKey();
  if (v3)
  {
    v4 = v3;
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v5 = 0;
  }

  sub_100012B3C();

  sub_100002C00((v0 + 16));
  sub_10000A5B0();
  v6 = sub_100003D54();
  sub_100007EB0(v6, v7, &type metadata for String);
  static LogInterpolation.safe(_:)();
  sub_100009FB0(v5, &qword_10026D350, &qword_1001E6050);
  v8 = static os_log_type_t.default.getter();
  sub_1000036B0(v8, v2);

  v9 = swift_task_alloc();
  *(v0 + 120) = v9;
  *v9 = v0;
  v9[1] = sub_100094160;
  sub_100017CFC(*(v0 + 128));
  sub_10000481C();

  return sub_10008C234(v10, v11, v12, v13);
}

uint64_t sub_100094160(uint64_t a1, char a2)
{
  sub_1000056A8();
  v6 = *v3;
  sub_100002D20();
  *v7 = v6;

  v9 = *(v6 + 8);
  if (v2)
  {
    v10 = 0;
  }

  else
  {
    v10 = a2 & 1;
    v8 = a1;
  }

  return v9(v8, v10);
}

uint64_t sub_10009426C(char a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 88) = a3;
  *(v4 + 96) = v3;
  *(v4 + 80) = a2;
  *(v4 + 120) = a1;
  *(v4 + 104) = *v3;
  return sub_100006180(sub_1000942B4);
}

uint64_t sub_1000942B4()
{
  sub_100017F0C();
  sub_100003D48();
  if (qword_1002686F8 != -1)
  {
    sub_100006960(&qword_1002686F8);
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  sub_100002DFC();
  v1 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v1);
  sub_1000056F8();
  v2 = sub_100007128();
  sub_10000AE6C(v2, xmmword_1001E5F60);
  v3 = AMSLogKey();
  if (v3)
  {
    v4 = v3;
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v5 = 0;
  }

  sub_100012B3C();

  sub_100002C00((v0 + 16));
  LogInterpolation.init(stringLiteral:)();
  v6 = sub_100003D54();
  sub_100007EB0(v6, v7, &type metadata for String);
  static LogInterpolation.safe(_:)();
  sub_100009FB0(v5, &qword_10026D350, &qword_1001E6050);
  v8 = static os_log_type_t.default.getter();
  sub_1000036B0(v8, v2);

  v9 = swift_task_alloc();
  *(v0 + 112) = v9;
  *v9 = v0;
  v9[1] = sub_1000944AC;
  sub_100017CFC(*(v0 + 120));
  sub_10000481C();

  return sub_10008CD88();
}

uint64_t sub_1000944AC()
{
  sub_100004768();
  sub_1000056A8();
  v1 = *v0;
  sub_100002D20();
  *v2 = v1;

  sub_100002D8C();

  return v3();
}

uint64_t sub_10009458C()
{

  sub_100002C00((v0 + 32));
  return v0;
}

uint64_t sub_1000945BC()
{
  sub_10009458C();

  return swift_deallocClassInstance();
}

uint64_t sub_1000945F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 24) = a6;
  *(v7 + 32) = a7;
  *(v7 + 48) = a5;
  *(v7 + 16) = a4;
  return _swift_task_switch(sub_100094618, 0, 0);
}

uint64_t sub_100094618()
{
  sub_100004768();
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_1000946B4;
  sub_100017CFC(*(v0 + 48));

  return sub_10008D424();
}

uint64_t sub_1000946B4()
{
  sub_100004768();
  sub_1000056A8();
  v1 = *v0;
  sub_100002D20();
  *v2 = v1;

  sub_100002D8C();

  return v3();
}

uint64_t sub_1000947B4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_10007B9A4(&unk_10026FEC0, &qword_1001E6280);
  sub_100003D10(v12);
  sub_100004E78();
  __chkstk_darwin(v13);
  v15 = &v23 - v14;

  v24._countAndFlagsBits = a1;
  v24._object = a2;
  v16 = sub_1000E16C4(v24);
  if (v16 == 3)
  {
    v17 = 2;
  }

  else
  {
    v17 = v16;
  }

  v18 = type metadata accessor for TaskPriority();
  sub_10001CCB8(v15, v19, v20, v18);
  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  *(v21 + 24) = 0;
  *(v21 + 32) = v6;
  *(v21 + 40) = v17;
  *(v21 + 48) = a3;
  *(v21 + 56) = a4;

  sub_1001A1E8C(0, 0, v15, a6, v21);
}

uint64_t sub_1000948D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  v11 = swift_task_alloc();
  *(v7 + 16) = v11;
  *v11 = v7;
  v11[1] = sub_100009BE8;

  return sub_10009426C(a5, a6, a7);
}

uint64_t sub_1000949A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  sub_1000947B4(v8, v10, v11, v13, a5, a6);
}

uint64_t sub_100094A54(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = sub_10007B9A4(&unk_10026FEC0, &qword_1001E6280);
  sub_100003D10(v13);
  sub_100004E78();
  __chkstk_darwin(v14);
  v16 = &v24 - v15;

  v25._countAndFlagsBits = a1;
  v25._object = a2;
  v17 = sub_1000E16C4(v25);
  if (v17 == 3)
  {
    v18 = 2;
  }

  else
  {
    v18 = v17;
  }

  v19 = type metadata accessor for TaskPriority();
  sub_10001CCB8(v16, v20, v21, v19);
  sub_10000B2F0();
  v22 = swift_allocObject();
  *(v22 + 16) = 0;
  *(v22 + 24) = 0;
  *(v22 + 32) = v6;
  *(v22 + 40) = v18;
  *(v22 + 48) = a3;
  *(v22 + 56) = a4;
  *(v22 + 64) = a5;
  *(v22 + 72) = a6;

  sub_10000A944();
  sub_1000E349C();
}

uint64_t sub_100094B84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 168) = a8;
  *(v8 + 176) = v12;
  *(v8 + 152) = a6;
  *(v8 + 160) = a7;
  *(v8 + 256) = a5;
  *(v8 + 144) = a4;
  *(v8 + 184) = *(type metadata accessor for MediaCatalogSyncPage(0) - 8);
  *(v8 + 192) = swift_task_alloc();
  v9 = type metadata accessor for URL();
  *(v8 + 200) = v9;
  *(v8 + 208) = *(v9 - 8);
  *(v8 + 216) = swift_task_alloc();
  sub_10007B9A4(&qword_100269AB8, &qword_1001E6680);
  *(v8 + 224) = swift_task_alloc();

  return _swift_task_switch(sub_100094CE8, 0, 0);
}

uint64_t sub_100094CE8()
{
  sub_100004768();
  v1 = *(v0 + 224);
  v2 = type metadata accessor for MediaCatalogSyncPageMetadata(0);
  sub_10001CCB8(v1, v3, v4, v2);
  v5 = swift_task_alloc();
  *(v0 + 232) = v5;
  *v5 = v0;
  v5[1] = sub_100094D98;
  v6 = sub_100017CFC(*(v0 + 256));

  return sub_100093F28(v6, v7, v8, v9);
}

uint64_t sub_100094D98()
{
  sub_100004768();
  sub_1000056A8();
  sub_100002D98();
  *v3 = v2;
  v5 = *(v4 + 224);
  v6 = *v1;
  sub_100002D20();
  *v7 = v6;
  *(v9 + 240) = v8;
  *(v9 + 248) = v0;

  sub_100009FB0(v5, &qword_100269AB8, &qword_1001E6680);
  if (v0)
  {
    v10 = sub_10009507C;
  }

  else
  {
    v10 = sub_100094EC8;
  }

  return _swift_task_switch(v10, 0, 0);
}

uint64_t sub_100094EC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_100005BC8();
  sub_10000B160();
  v15 = *(v14 + 240);
  v16 = *(v15 + 16);
  if (v16)
  {
    v17 = *(v14 + 208);
    v18 = *(v14 + 184);
    sub_10009B768(0, v16, 0);
    v19 = v15 + ((*(v18 + 80) + 32) & ~*(v18 + 80));
    a10 = *(v18 + 72);
    do
    {
      v20 = *(v14 + 216);
      v22 = *(v14 + 192);
      v21 = *(v14 + 200);
      sub_1000955FC(v19, v22);
      (*(v17 + 16))(v20, v22, v21);
      sub_100095660(v22);
      a11 = _swiftEmptyArrayStorage;
      v24 = _swiftEmptyArrayStorage[2];
      v23 = _swiftEmptyArrayStorage[3];
      if (v24 >= v23 >> 1)
      {
        sub_10009B768(v23 > 1, v24 + 1, 1);
      }

      v25 = *(v14 + 216);
      v26 = *(v14 + 200);
      _swiftEmptyArrayStorage[2] = v24 + 1;
      (*(v17 + 32))(_swiftEmptyArrayStorage + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v24, v25, v26);
      v19 += a10;
      --v16;
    }

    while (v16);
  }

  (*(v14 + 168))(_swiftEmptyArrayStorage);

  sub_100002D8C();
  sub_10000A820();

  return v28(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_10009507C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_100005BC8();
  sub_10000B160();
  if (qword_1002686F8 != -1)
  {
    sub_100006960(&qword_1002686F8);
  }

  v15 = *(v14 + 144);
  v44 = qword_100287858;
  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  sub_100002DFC();
  v16 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v16);
  sub_1000056F8();
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1001E6580;
  *(v14 + 40) = type metadata accessor for MediaCatalogSyncService();
  *(v14 + 16) = v15;

  v18 = AMSLogKey();
  if (v18)
  {
    v19 = v18;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v42 = *(v14 + 168);
  v43 = *(v14 + 176);
  v21 = *(v14 + 152);
  v20 = *(v14 + 160);
  v22 = *(v14 + 256);
  static LogInterpolation.prefix(_:_:)();

  sub_100002C00((v14 + 16));
  LogInterpolation.init(stringLiteral:)();
  v23 = sub_1000D0004(v22, v21, v20);
  sub_100007EB0(v23, v24, &type metadata for String);
  static LogInterpolation.safe(_:)();
  sub_10000AB04();
  sub_100009FB0(v25, v26, v27);
  swift_getErrorValue();
  *(v14 + 104) = *(v14 + 120);
  sub_100017E64((v14 + 80));
  sub_1000047A4();
  (*(v28 + 16))();
  static LogInterpolation.traceableSensitive(_:)();
  sub_10000AB04();
  sub_100009FB0(v29, v30, v31);
  v32 = static os_log_type_t.error.getter();
  sub_1000036B0(v32, v17);

  v42(_swiftEmptyArrayStorage);

  sub_100002D8C();
  sub_10000A820();

  return v34(v33, v34, v35, v36, v37, v38, v39, v40, v42, v43, v44, a12, a13, a14);
}

void sub_10009540C(uint64_t a1, uint64_t a2)
{
  type metadata accessor for URL();
  isa = Array._bridgeToObjectiveC()().super.isa;
  (*(a2 + 16))(a2, isa);
}

uint64_t sub_100095478()
{
  sub_100003D48();
  v0 = swift_task_alloc();
  v1 = sub_100004ABC(v0);
  *v1 = v2;
  v1[1] = sub_100009CC8;
  sub_100002E1C();
  sub_10000481C();

  return sub_1000935EC(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_100095548()
{
  sub_100003D48();
  sub_10000A304();
  v0 = swift_task_alloc();
  v1 = sub_100004ABC(v0);
  *v1 = v2;
  v1[1] = sub_100009BE8;
  sub_100002E1C();
  sub_100023C3C();
  sub_10000481C();

  return sub_100094B84(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1000955FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MediaCatalogSyncPage(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100095660(uint64_t a1)
{
  v2 = type metadata accessor for MediaCatalogSyncPage(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000956BC()
{
  sub_10000A304();
  v0 = swift_task_alloc();
  v1 = sub_100004ABC(v0);
  *v1 = v2;
  v1[1] = sub_100009CC8;
  sub_100002E1C();
  sub_100023C3C();

  return sub_1000948D0(v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_100095768()
{
  sub_10000A304();
  v0 = swift_task_alloc();
  v1 = sub_100004ABC(v0);
  *v1 = v2;
  v1[1] = sub_100009BE8;
  sub_100002E1C();
  sub_100023C3C();

  return sub_1000945F0(v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_100095814()
{
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  v3 = sub_100004ABC(v2);
  *v3 = v4;
  v3[1] = sub_100009CC8;
  v5 = sub_100002E1C();

  return sub_100093050(v5, v6, v7, v1);
}

uint64_t sub_1000958B4()
{

  sub_100066B48();
}

void sub_10009597C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v7 = sub_10007B9A4(&unk_10026FEC0, &qword_1001E6280);
  __chkstk_darwin(v7 - 8);
  v9 = &v25 - v8;
  if (a4)
  {
    v26 = v9;
    if (qword_1002686D0 != -1)
    {
      swift_once();
    }

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    type metadata accessor for LogInterpolation();
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1001E5F70;
    *(&v29 + 1) = type metadata accessor for ActivityObserver();
    v28[0] = a5;

    v11 = AMSLogKey();
    if (v11)
    {
      v12 = v11;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(v28);
    LogInterpolation.init(stringLiteral:)();
    v13 = static os_log_type_t.default.getter();
    sub_1000036B0(v13, v10);

    v14 = objc_opt_self();
    v15 = 0;
    v27 = xmmword_1001E6A20;
    do
    {
      v16 = *(&off_100244588 + v15++ + 32);
      v17 = [v14 currentProcess];
      LOBYTE(v28[0]) = 0;
      BYTE1(v28[0]) = v16;
      v28[1] = v17;
      v29 = v27;
      v30 = 0x80000001001F31B0;
      v31 = 25;
      v32 = 2;
      v33 = 10485760;
      v18 = [objc_allocWithZone(type metadata accessor for Defaults()) init];
      sub_1000F3168();
      sub_10000FF10(v28);
    }

    while (v15 != 4);
    v19 = [objc_allocWithZone(AMSEngagementSyncRequest) init];
    if (qword_100268670 != -1)
    {
      swift_once();
    }

    sub_1000627E8();

    type metadata accessor for DynamicUICache();
    sub_1000C5934();
    sub_1000C5B98();
    if (qword_1002687B0 != -1)
    {
      swift_once();
    }

    sub_10016D838();
    type metadata accessor for PodcastsEventManager();
    swift_initStaticObject();
    sub_100187798();
    v20 = type metadata accessor for TaskPriority();
    v21 = v26;
    sub_10000A7C0(v26, 1, 1, v20);
    v22 = swift_allocObject();
    *(v22 + 16) = 0;
    *(v22 + 24) = 0;
    sub_1000E349C();

    sub_10000A7C0(v21, 1, 1, v20);
    v23 = swift_allocObject();
    *(v23 + 16) = 0;
    *(v23 + 24) = 0;
    sub_1001A1E9C(0, 0, v21, &unk_1001E6A70, v23);

    v24 = type metadata accessor for UniversalLinksUpdater();
    sub_1001CB584(v24);
    if (qword_1002687C8 != -1)
    {
      swift_once();
    }

    sub_10017A3A4();
  }
}

uint64_t sub_100095E3C()
{
  v7 = v0;
  v1 = [objc_opt_self() ams_sharedAccountStore];
  sub_10009605C(v6);
  v2 = [objc_opt_self() defaultManager];
  type metadata accessor for NotificationSettingsEventManager();
  v3 = swift_allocObject();
  *(v0 + 16) = sub_10009647C(v1, v6, v2, v3);

  v4 = swift_task_alloc();
  *(v0 + 24) = v4;
  *v4 = v0;
  v4[1] = sub_100095F5C;

  return sub_100181FD8();
}

uint64_t sub_100095F5C()
{
  sub_100004768();
  sub_1000056A8();
  v1 = *v0;
  sub_100002D20();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_10009605C@<X0>(void *a1@<X8>)
{
  sub_100002BC0(0, &qword_10026CFE0, AMSBag_ptr);
  v2 = sub_1000078B4();
  v3 = [objc_allocWithZone(AMSEngagement) initWithBag:v2];

  result = sub_100002BC0(0, &qword_100269E30, AMSEngagement_ptr);
  a1[3] = result;
  a1[4] = &off_100250D48;
  *a1 = v3;
  return result;
}

uint64_t sub_100096110()
{
  sub_100004768();
  if (qword_100268838 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_1000961D4;

  return sub_1001B8710();
}

uint64_t sub_1000961D4(char a1)
{
  sub_1000056A8();
  v5 = v4;
  v6 = *v2;
  sub_100002D20();
  *v7 = v6;

  if (v1)
  {
    v8 = *(v6 + 8);

    return v8();
  }

  else
  {
    *(v5 + 32) = a1 & 1;

    return _swift_task_switch(sub_100096318, 0, 0);
  }
}

uint64_t sub_100096344()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  sub_10000624C(v1);

  return sub_100095E20();
}

uint64_t sub_1000963E0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = sub_10000624C(v1);

  return sub_1000960F0(v2);
}

void *sub_10009647C(uint64_t a1, __int128 *a2, uint64_t a3, void *a4)
{
  a4[5] = sub_100002BC0(0, &unk_100271F90, ACAccountStore_ptr);
  a4[6] = &off_100246688;
  a4[2] = a1;
  a4[17] = sub_100002BC0(0, &qword_100269E28, NSFileManager_ptr);
  a4[18] = &off_10024B870;
  a4[14] = a3;
  a4[7] = 0xD000000000000014;
  a4[8] = 0x80000001001F41A0;
  sub_10003B104(a2, (a4 + 9));
  return a4;
}

BOOL sub_100096550(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1002445B0, v2);

  return v3 != 0;
}

uint64_t sub_10009659C(void *a1, uint64_t a2)
{
  v3 = sub_10007B9A4(&qword_100269E60, &qword_1001E6C70);
  sub_100002CC4();
  sub_100004E78();
  __chkstk_darwin(v4);
  sub_100006264();
  sub_10000A264(a1);
  sub_100098380();
  sub_100012B5C();
  sub_100008238();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_100098428();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  v5 = sub_10000A318();
  return v6(v5, v3);
}

uint64_t sub_1000966BC(void *a1)
{
  v4 = sub_10007B9A4(&qword_100269E48, &qword_1001E6C68);
  sub_100002CC4();
  sub_100004E78();
  __chkstk_darwin(v5);
  sub_100006264();
  sub_10000A264(a1);
  sub_100098380();
  sub_100012B5C();
  sub_100008238();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    sub_100002C00(a1);
  }

  else
  {
    sub_1000983D4();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v6 = sub_10000A318();
    v7(v6, v4);
    v1 = v9;
    sub_100002C00(a1);
  }

  return v1;
}

BOOL sub_100096810@<W0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100096550(*a1);
  *a2 = result;
  return result;
}

BOOL sub_100096890@<W0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_100096550(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1000968C8(uint64_t a1)
{
  v2 = sub_100098380();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100096904(uint64_t a1)
{
  v2 = sub_100098380();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100096940@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1000966BC(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void sub_100096BA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_100007E34();
  v22 = v21;
  v24 = v23;
  v40 = sub_10007B9A4(&qword_100269EB0, &qword_1001E6ED0);
  sub_100002CC4();
  v38 = v25;
  sub_100004E78();
  __chkstk_darwin(v26);
  v28 = &v37 - v27;
  sub_10000A264(v24);
  sub_10007BB44();
  v39 = v28;
  sub_100008238();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v29 = 1 << *(v22 + 32);
  v30 = -1;
  if (v29 < 64)
  {
    v30 = ~(-1 << v29);
  }

  v31 = v30 & *(v22 + 56);
  v32 = (v29 + 63) >> 6;

  v33 = 0;
  if (v31)
  {
    while (1)
    {
      v34 = v33;
LABEL_8:
      v35 = (*(v22 + 48) + 24 * (__clz(__rbit64(v31)) | (v34 << 6)));
      v36 = v35[1];
      v41 = *v35;
      v42 = v36;

      sub_10007B9A4(&qword_100269E98, &qword_1001E6EC8);
      sub_100098768();
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      if (v20)
      {
        break;
      }

      v31 &= v31 - 1;

      v33 = v34;
      if (!v31)
      {
        goto LABEL_5;
      }
    }

    (*(v38 + 8))(v39, v40);

LABEL_12:
    sub_100005B78();
  }

  else
  {
LABEL_5:
    while (1)
    {
      v34 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        break;
      }

      if (v34 >= v32)
      {

        (*(v38 + 8))(v39, v40);
        goto LABEL_12;
      }

      v31 = *(v22 + 56 + 8 * v34);
      ++v33;
      if (v31)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }
}

Swift::Int sub_100096DE4()
{
  v0 = sub_100004750();
  v8 = sub_100007EC4(v0, v1, v2, v3, v4, v5, v6, v7, v11, v12);
  sub_1000793FC(v8, v9);
  return Hasher._finalize()();
}

uint64_t sub_100096E20(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7955819 && a2 == 0xE300000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6974696E69666564 && a2 == 0xEE007473694C6E6FLL)
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

Swift::Int HeapType.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1 & 1);
  return Hasher._finalize()();
}

uint64_t sub_100096F38(char a1)
{
  if (a1)
  {
    return 0x6974696E69666564;
  }

  else
  {
    return 7955819;
  }
}

void sub_100096F74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a1 == a4 && a2 == a5;
  if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    sub_1001C2AB4(a3, a6);
  }
}

void sub_100096FE0()
{
  sub_100007E34();
  v15 = v1;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_10007B9A4(&qword_100269F28, &qword_1001E7100);
  sub_100002CC4();
  v10 = v9;
  sub_100004E78();
  __chkstk_darwin(v11);
  v13 = &v14 - v12;
  sub_100003CA8(v7, v7[3]);
  sub_100098CC4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v16 = v5;
  v17 = v3;
  sub_10007BEBC();
  sub_100006274();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v0)
  {
    v16 = v15;
    sub_10007B9A4(&qword_100269E98, &qword_1001E6EC8);
    sub_100098768();
    sub_100006274();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  (*(v10 + 8))(v13, v8);
  sub_100005B78();
}

void sub_10009716C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  String.hash(into:)();

  sub_100079558(a1, a4);
}

Swift::Int sub_1000971AC(uint64_t a1, uint64_t a2)
{
  sub_100004750();
  v2 = String.hash(into:)();
  v10 = sub_100007EC4(v2, v3, v4, v5, v6, v7, v8, v9, v13, v14);
  sub_100079558(v10, v11);
  return Hasher._finalize()();
}

uint64_t sub_100097208(void *a1)
{
  v2 = sub_10007B9A4(&qword_100269F18, &qword_1001E70F8);
  sub_100002CC4();
  sub_100004E78();
  __chkstk_darwin(v3);
  sub_100006264();
  sub_10000A264(a1);
  sub_100098CC4();
  sub_100012B5C();
  sub_100008238();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  sub_10007BCB8();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  sub_10007B9A4(&qword_100269E98, &qword_1001E6EC8);
  sub_100098690();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v5 = sub_10000A318();
  v6(v5, v2);
  sub_100002C00(a1);
  return v7;
}

uint64_t sub_1000973D8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x736E69616D6F64 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6E656E6F706D6F63 && a2 == 0xEA00000000007374;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000015 && 0x80000001001F31F0 == a2;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6E45737961776C61 && a2 == 0xED000064656C6261;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000010 && 0x80000001001F31D0 == a2;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x65766974616C6572 && a2 == 0xED0000726564724FLL)
          {

            return 5;
          }

          else
          {
            v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

Swift::Int _s14amsengagementd13SQLite3StatusO9hashValueSivg_0(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  return Hasher._finalize()();
}

unint64_t sub_100097634(char a1)
{
  result = 0x736E69616D6F64;
  switch(a1)
  {
    case 1:
      result = 0x6E656E6F706D6F63;
      break;
    case 2:
      result = 0xD000000000000015;
      break;
    case 3:
      result = 0x6E45737961776C61;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    case 5:
      result = 0x65766974616C6572;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100097714(uint64_t a1, uint64_t a2)
{
  if ((sub_1001CB0F4() & 1) == 0)
  {
    return 0;
  }

  v4 = *(a1 + 8);
  v5 = *(a2 + 8);
  if (v4)
  {
    if (!v5)
    {
      return 0;
    }

    v6 = sub_1001C3B70(v4, v5);

    if ((v6 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v7 = *(a2 + 16);
  if (!*(a1 + 16))
  {
    if (!v7)
    {
      goto LABEL_12;
    }

    return 0;
  }

  if (!v7)
  {
    return 0;
  }

  sub_1001C49D8();
  v9 = v8;

  if ((v9 & 1) == 0)
  {
    return 0;
  }

LABEL_12:
  v10 = *(a1 + 24);
  v11 = *(a2 + 24);
  if (v10 == 2)
  {
    if (v11 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v11 == 2 || ((v11 ^ v10) & 1) != 0)
    {
      return result;
    }
  }

  v13 = *(a1 + 25);
  v14 = *(a2 + 25);
  if (v13 == 2)
  {
    if (v14 != 2)
    {
      return 0;
    }

LABEL_22:
    v15 = *(a2 + 40);
    if (*(a1 + 40))
    {
      if ((*(a2 + 40) & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (*(a1 + 32) != *(a2 + 32))
      {
        v15 = 1;
      }

      if (v15)
      {
        return 0;
      }
    }

    return 1;
  }

  result = 0;
  if (v14 != 2 && ((v14 ^ v13) & 1) == 0)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_100097858(void *a1)
{
  v3 = v1;
  v5 = sub_10007B9A4(&qword_100269F00, &qword_1001E70F0);
  sub_100002CC4();
  v7 = v6;
  sub_100004E78();
  __chkstk_darwin(v8);
  v10 = &v12 - v9;
  sub_10000A264(a1);
  sub_100098A3C();
  sub_100008238();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v13 = *v3;
  HIBYTE(v12) = 0;
  sub_10007B9A4(&qword_100269EE8, &unk_1001E70D0);
  sub_100098B68();
  sub_100002E70();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v13 = v3[1];
    HIBYTE(v12) = 1;
    sub_10007B9A4(&qword_1002690C8, &qword_1001E4F78);
    sub_10007BF10();
    sub_100002E70();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v13 = v3[2];
    HIBYTE(v12) = 2;
    sub_10007B9A4(&qword_1002692D0, &unk_1001E70E0);
    sub_100098C40(&qword_1002692D8, sub_10007D3C0, &protocol witness table for String, &protocol conformance descriptor for <> [A : B]);
    sub_100002E70();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v13) = 3;
    sub_100006274();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v13) = 4;
    sub_100006274();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v13) = 5;
    sub_100006274();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v7 + 8))(v10, v5);
}

void sub_100097AAC(void *a1)
{
  v2 = v1;
  sub_1000797A4(a1);
  v4 = *(v2 + 8);
  if (v4)
  {
    Hasher._combine(_:)(1u);
    sub_10007A648(a1, v4);
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v5 = *(v2 + 16);
  if (v5)
  {
    Hasher._combine(_:)(1u);
    sub_100079B7C(a1, v5);
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v6 = *(v2 + 24);
  if (v6 == 2)
  {
    v7 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v7 = v6 & 1;
  }

  Hasher._combine(_:)(v7);
  v8 = *(v2 + 25);
  if (v8 == 2)
  {
    v9 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v9 = v8 & 1;
  }

  Hasher._combine(_:)(v9);
  if (*(v2 + 40) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v10 = *(v2 + 32);
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v10);
  }
}

Swift::Int sub_100097BA4()
{
  sub_100004750();
  sub_100097AAC(v1);
  return Hasher._finalize()();
}

void sub_100097BDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100007E34();
  v12 = v11;
  v14 = v13;
  v15 = sub_10007B9A4(&qword_100269ED8, &qword_1001E70C8);
  sub_100002CC4();
  v17 = v16;
  sub_100004E78();
  __chkstk_darwin(v18);
  v20 = &v26 - v19;
  sub_100003CA8(v12, v12[3]);
  sub_100098A3C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v10)
  {
    sub_100002C00(v12);
  }

  else
  {
    sub_10007B9A4(&qword_100269EE8, &unk_1001E70D0);
    v30 = 0;
    sub_100098A90();
    sub_100004F24();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    sub_10007B9A4(&qword_1002690C8, &qword_1001E4F78);
    v30 = 1;
    sub_10007BD0C();
    sub_100004F24();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    sub_10007B9A4(&qword_1002692D0, &unk_1001E70E0);
    v30 = 2;
    sub_100098C40(&qword_100269328, sub_10007D634, &protocol witness table for String, &protocol conformance descriptor for <> [A : B]);
    sub_100004F24();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v29 = a10;
    sub_10000B6E4(3);
    v28 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    sub_10000B6E4(4);
    v27 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    sub_10000B6E4(5);
    v21 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v22 = v20;
    v24 = v23;
    (*(v17 + 8))(v22, v15);
    sub_100002C00(v12);
    v25 = v29;
    *v14 = a10;
    *(v14 + 8) = v25;
    *(v14 + 16) = a10;
    LOBYTE(v25) = v27;
    *(v14 + 24) = v28;
    *(v14 + 25) = v25;
    *(v14 + 32) = v21;
    *(v14 + 40) = v24 & 1;
  }

  sub_100005B78();
}

uint64_t sub_100097ED8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100096988();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

Swift::Int sub_100097F20(uint64_t a1)
{
  v1 = Hasher.init(_seed:)();
  v9 = sub_100007EC4(v1, v2, v3, v4, v5, v6, v7, v8, v12, v13);
  sub_1000793FC(v9, v10);
  return Hasher._finalize()();
}

uint64_t sub_100097F70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100096E20(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100097F98(uint64_t a1)
{
  v2 = sub_100098CC4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100097FD4(uint64_t a1)
{
  v2 = sub_100098CC4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100098010@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100097208(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

Swift::Int sub_100098078(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = Hasher.init(_seed:)();
  v12 = sub_100007EC4(v4, v5, v6, v7, v8, v9, v10, v11, v15, v16);
  sub_10009716C(v12, v13, v2, v3);
  return Hasher._finalize()();
}

uint64_t sub_1000980F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000973D8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100098120(uint64_t a1)
{
  v2 = sub_100098A3C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10009815C(uint64_t a1)
{
  v2 = sub_100098A3C();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_100098198@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _OWORD *a9@<X8>)
{
  sub_100097BDC(a1, a2, a3, a4, a5, a6, a7, a8, v12, v14);
  if (!v9)
  {
    *a9 = v13;
    a9[1] = *v15;
    result = *&v15[9];
    *(a9 + 25) = *&v15[9];
  }

  return result;
}

Swift::Int sub_1000981FC(uint64_t a1)
{
  Hasher.init(_seed:)();
  sub_100097AAC(v2);
  return Hasher._finalize()();
}

Swift::Int sub_10009823C(uint64_t a1, uint64_t a2)
{
  sub_100004750();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_10009828C(uint64_t a1)
{
  v1 = Hasher.init(_seed:)();
  sub_100007EC4(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11);
  String.hash(into:)();
  return Hasher._finalize()();
}

unint64_t sub_1000982D4()
{
  result = qword_100269E38;
  if (!qword_100269E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100269E38);
  }

  return result;
}

unint64_t sub_10009832C()
{
  result = qword_100269E40;
  if (!qword_100269E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100269E40);
  }

  return result;
}

unint64_t sub_100098380()
{
  result = qword_100269E50;
  if (!qword_100269E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100269E50);
  }

  return result;
}

unint64_t sub_1000983D4()
{
  result = qword_100269E58;
  if (!qword_100269E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100269E58);
  }

  return result;
}

unint64_t sub_100098428()
{
  result = qword_100269E68;
  if (!qword_100269E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100269E68);
  }

  return result;
}

_BYTE *sub_10009847C(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_100098534()
{
  result = qword_100269E70;
  if (!qword_100269E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100269E70);
  }

  return result;
}

unint64_t sub_10009858C()
{
  result = qword_100269E78;
  if (!qword_100269E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100269E78);
  }

  return result;
}

unint64_t sub_1000985E4()
{
  result = qword_100269E80;
  if (!qword_100269E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100269E80);
  }

  return result;
}

unint64_t sub_10009863C()
{
  result = qword_100269E88;
  if (!qword_100269E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100269E88);
  }

  return result;
}

unint64_t sub_100098690()
{
  result = qword_100269EA0;
  if (!qword_100269EA0)
  {
    sub_10007BC70(&qword_100269E98, &qword_1001E6EC8);
    sub_100098714();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100269EA0);
  }

  return result;
}

unint64_t sub_100098714()
{
  result = qword_100269EA8;
  if (!qword_100269EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100269EA8);
  }

  return result;
}

unint64_t sub_100098768()
{
  result = qword_100269EB8;
  if (!qword_100269EB8)
  {
    sub_10007BC70(&qword_100269E98, &qword_1001E6EC8);
    sub_1000987EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100269EB8);
  }

  return result;
}

unint64_t sub_1000987EC()
{
  result = qword_100269EC0;
  if (!qword_100269EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100269EC0);
  }

  return result;
}

__n128 sub_100098840(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100098854(uint64_t *a1, int a2)
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

uint64_t sub_100098894(uint64_t result, int a2, int a3)
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

__n128 sub_1000988EC(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_100098900(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_100098940(uint64_t result, int a2, int a3)
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

unint64_t sub_100098990()
{
  result = qword_100269EC8;
  if (!qword_100269EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100269EC8);
  }

  return result;
}

unint64_t sub_1000989E8()
{
  result = qword_100269ED0;
  if (!qword_100269ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100269ED0);
  }

  return result;
}