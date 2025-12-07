int main(int argc, const char **argv, const char **envp)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &v27 - v9;
  __chkstk_darwin(v8);
  v12 = &v27 - v11;
  v13 = getpwnam("mobile");
  qword_1000208A8 = v13;
  if (v13)
  {
    v14 = v13;
    if (!geteuid())
    {
      if (qword_100020068 != -1)
      {
        swift_once();
      }

      v15 = sub_1000015CC(v3, qword_100020AA8);
      v16 = *(v4 + 16);
      v28 = v15;
      v16(v12);
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v27 = v16;
        *v19 = 0;
        _os_log_impl(&_mh_execute_header, v17, v18, "Logged in as 'root'. Switching to 'mobile'.", v19, 2u);
        v16 = v27;
      }

      v20 = *(v4 + 8);
      v20(v12, v3);
      if (setuid(v14->pw_uid))
      {
        (v16)(v10, v28, v3);
        v21 = Logger.logObject.getter();
        v22 = static os_log_type_t.default.getter();
        if (!os_log_type_enabled(v21, v22))
        {
LABEL_14:

          v20(v10, v3);
          goto LABEL_15;
        }

        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&_mh_execute_header, v21, v22, "Failed to switch to user 'mobile'.", v23, 2u);
      }

      else
      {
        (v16)(v7, v28, v3);
        v21 = Logger.logObject.getter();
        v24 = static os_log_type_t.default.getter();
        if (!os_log_type_enabled(v21, v24))
        {
          v10 = v7;
          goto LABEL_14;
        }

        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&_mh_execute_header, v21, v24, "Running csfctl as user 'mobile'", v25, 2u);
        v10 = v7;
      }

      goto LABEL_14;
    }
  }

LABEL_15:
  type metadata accessor for GMDiagnostics(0);
  sub_100001574();
  static ParsableCommand.main()();
  return 0;
}

unint64_t sub_100001574()
{
  result = qword_100020070;
  if (!qword_100020070)
  {
    type metadata accessor for GMDiagnostics(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020070);
  }

  return result;
}

uint64_t sub_1000015CC(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t FollowUp.Feature.init(argument:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for FollowUp.Feature();
  v14 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 == 7169633 && a2 == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &enum case for FollowUp.Feature.afm(_:);
LABEL_5:
    (*(v14 + 104))(v8, *v9, v6);
    (*(v14 + 32))(a3, v8, v6);
    return (*(v14 + 56))(a3, 0, 1, v6);
  }

  if (a1 == 7169121 && a2 == 0xE300000000000000)
  {

LABEL_10:
    v9 = &enum case for FollowUp.Feature.adm(_:);
    goto LABEL_5;
  }

  v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v11)
  {
    goto LABEL_10;
  }

  v12 = *(v14 + 56);

  return v12(a3, 1, 1, v6);
}

uint64_t sub_100001880(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000019F8(&qword_1000200C0, &protocol conformance descriptor for FollowUp.Feature);

  return ExpressibleByArgument<>.defaultValueDescription.getter(a1, a2, v4, &protocol witness table for String);
}

uint64_t sub_1000018F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000019F8(&qword_1000200B8, &protocol conformance descriptor for FollowUp.Feature);
  v5 = sub_1000019F8(&qword_1000200C0, &protocol conformance descriptor for FollowUp.Feature);

  return static ExpressibleByArgument<>.allValueStrings.getter(a1, a2, v4, v5, &protocol witness table for String);
}

uint64_t sub_100001988(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000019F8(&qword_1000200B8, &protocol conformance descriptor for FollowUp.Feature);

  return static ExpressibleByArgument<>.defaultCompletionKind.getter(a1, a2, v4);
}

uint64_t sub_1000019F8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FollowUp.Feature();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100001A50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100001B98(&qword_1000200C8, &qword_100016990);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 254)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v11 = sub_100001B98(&qword_1000200D0, &unk_100016998);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 32);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_100001B98(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100001BF4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100001B98(&qword_1000200C8, &qword_100016990);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 254)
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  else
  {
    v11 = sub_100001B98(&qword_1000200D0, &unk_100016998);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 32);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_100001D4C(uint64_t a1)
{
  sub_100012534(319, &qword_100020140, &type metadata for Bool, &type metadata accessor for Option);
  if (v1 <= 0x3F)
  {
    sub_100012534(319, &unk_100020148, &type metadata for Bool, &type metadata accessor for Flag);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_100001E1C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100001EAC;

  return sub_100007E64();
}

uint64_t sub_100001EAC()
{

  if (v0)
  {

    v1 = sub_100015B54;
  }

  else
  {
    v1 = sub_100001FC4;
  }

  return _swift_task_switch(v1, 0, 0);
}

uint64_t sub_100001FF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100001B98(&qword_100020198, &qword_100016A90);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_100011344(a3, v25 - v10, &qword_100020198, &qword_100016A90);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1000143A8(v11, &qword_100020198, &qword_100016A90);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_1000143A8(a3, &qword_100020198, &qword_100016A90);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1000143A8(a3, &qword_100020198, &qword_100016A90);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1000022F4(void *a1, unint64_t a2)
{
  v4 = sub_100001B98(&qword_100020798, &qword_100017290);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9[-v6];
  sub_100011650(a1, a1[3]);
  sub_10001496C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v2)
  {
    return (*(v5 + 8))(v7, v4);
  }

  v9[14] = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  v9[13] = 2;
  KeyedEncodingContainer.encode(_:forKey:)();
  v9[12] = 3;
  KeyedEncodingContainer.encode(_:forKey:)();
  v9[11] = 4;
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_1000024D4()
{
  v1 = *v0;
  v2 = 0x696B726F7774656ELL;
  v3 = 1685289331;
  if (v1 != 3)
  {
    v3 = 1852797802;
  }

  if (v1 != 2)
  {
    v2 = v3;
  }

  v4 = 0xD000000000000010;
  if (*v0)
  {
    v4 = 0xD000000000000017;
  }

  if (*v0 <= 1u)
  {
    return v4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_100002568@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100012D50(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1000025A8(uint64_t a1)
{
  v2 = sub_10001496C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000025E4(uint64_t a1)
{
  v2 = sub_10001496C();

  return CodingKey.debugDescription.getter(a1, v2);
}

int8x8_t sub_100002620@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  v4 = sub_100012F18(a2);
  if (!v2)
  {
    *a1 = v4 & 1;
    v6 = vdupq_n_s64(v4);
    *v6.i8 = vand_s8(vmovn_s32(vuzp1q_s32(vshlq_u64(v6, xmmword_100016950), vshlq_u64(v6, xmmword_100016940))), 0x1000100010001);
    result = vuzp1_s8(*v6.i8, *v6.i8);
    *(a1 + 1) = result.i32[0];
  }

  return result;
}

uint64_t sub_100002684(void *a1)
{
  v2 = &_mh_execute_header;
  if (!v1[4])
  {
    v2 = 0;
  }

  v3 = 0x1000000;
  if (!v1[3])
  {
    v3 = 0;
  }

  v4 = 0x10000;
  if (!v1[2])
  {
    v4 = 0;
  }

  v5 = 256;
  if (!v1[1])
  {
    v5 = 0;
  }

  return sub_1000022F4(a1, v5 | *v1 | v4 | v3 | v2);
}

uint64_t sub_1000026F0(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v12 = a4;
  v6 = sub_100001B98(&qword_100020628, &qword_1000171F8);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v11 - v8;
  sub_100011650(a1, a1[3]);
  sub_1000141F0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v4)
  {
    v13 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_100002884()
{
  if (*v0)
  {
    return 0x6573556E6163;
  }

  else
  {
    return 0x4965727574616566;
  }
}

uint64_t sub_1000028C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x4965727574616566 && a2 == 0xE900000000000044;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6573556E6163 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1000029A0(uint64_t a1)
{
  v2 = sub_1000141F0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000029DC(uint64_t a1)
{
  v2 = sub_1000141F0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100002A18@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_100013164(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6 & 1;
  }

  return result;
}

uint64_t sub_100002A6C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[0] = a4;
  v6 = sub_100001B98(&qword_100020648, &qword_100017208);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v11 - v8;
  sub_100011650(a1, a1[3]);
  sub_100014244();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v13 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v4)
  {
    v11[1] = v11[0];
    v12 = 1;
    type metadata accessor for TicketStatus();
    sub_10000FCE0(&qword_100020650, &type metadata accessor for TicketStatus, &protocol conformance descriptor for TicketStatus);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_100002C80()
{
  if (*v0)
  {
    return 0x737574617473;
  }

  else
  {
    return 7955819;
  }
}

uint64_t sub_100002CB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 7955819 && a2 == 0xE300000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x737574617473 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_100002D94(uint64_t a1)
{
  v2 = sub_100014244();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100002DD0(uint64_t a1)
{
  v2 = sub_100014244();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100002E0C@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_10001333C(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
  }

  return result;
}

uint64_t sub_100002E5C(void *a1)
{
  v3 = sub_100001B98(&qword_100020690, &qword_100017228);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8 - v5;
  sub_100011650(a1, a1[3]);
  sub_1000142EC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v12 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v1)
  {
    type metadata accessor for Diagnostics.AFMFollowUpDiagnostics(0);
    v11 = 1;
    type metadata accessor for Date();
    sub_10000FCE0(&qword_100020678, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v10 = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v9 = 3;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_100003080@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v4 = sub_100001B98(&qword_100020230, &qword_100016B40);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = v26 - v8;
  v10 = sub_100001B98(&qword_100020680, &qword_100017220);
  v31 = *(v10 - 8);
  v32 = v10;
  __chkstk_darwin(v10);
  v12 = v26 - v11;
  v13 = type metadata accessor for Diagnostics.AFMFollowUpDiagnostics(0);
  __chkstk_darwin(v13);
  v15 = v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[3];
  v33 = a1;
  sub_100011650(a1, v16);
  sub_1000142EC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_1000116E8(v33);
  }

  v28 = v7;
  v29 = v13;
  v17 = v31;
  v18 = v32;
  v37 = 0;
  v19 = KeyedDecodingContainer.decode(_:forKey:)();
  v27 = v15;
  *v15 = v19 & 1;
  v20 = type metadata accessor for Date();
  v36 = 1;
  v21 = sub_10000FCE0(&qword_100020668, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v26[1] = v20;
  v26[2] = v21;
  v22 = v29;
  v23 = v27;
  sub_1000113AC(v9, &v27[*(v29 + 20)], &qword_100020230, &qword_100016B40);
  v35 = 2;
  *(v23 + *(v22 + 24)) = KeyedDecodingContainer.decode(_:forKey:)() & 1;
  v34 = 3;
  v24 = v28;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v17 + 8))(v12, v18);
  sub_1000113AC(v24, v23 + *(v22 + 28), &qword_100020230, &qword_100016B40);
  sub_100014340(v23, v30, type metadata accessor for Diagnostics.AFMFollowUpDiagnostics);
  sub_1000116E8(v33);
  return sub_100011734(v23, type metadata accessor for Diagnostics.AFMFollowUpDiagnostics);
}

uint64_t sub_1000034B8(void *a1)
{
  v3 = sub_100001B98(&qword_100020670, &qword_100017218);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_100011650(a1, a1[3]);
  sub_100014298();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v1)
  {
    type metadata accessor for Diagnostics.ADMFollowUpDiagnostics(0);
    v8[14] = 1;
    type metadata accessor for Date();
    sub_10000FCE0(&qword_100020678, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_100003670@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v4 = sub_100001B98(&qword_100020230, &qword_100016B40);
  __chkstk_darwin(v4 - 8);
  v6 = &v16 - v5;
  v7 = sub_100001B98(&qword_100020658, &qword_100017210);
  v18 = *(v7 - 8);
  v19 = v7;
  __chkstk_darwin(v7);
  v9 = &v16 - v8;
  v10 = type metadata accessor for Diagnostics.ADMFollowUpDiagnostics(0);
  __chkstk_darwin(v10);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100011650(a1, a1[3]);
  sub_100014298();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v13 = v18;
    v14 = v19;
    v21 = 0;
    *v12 = KeyedDecodingContainer.decode(_:forKey:)() & 1;
    type metadata accessor for Date();
    v20 = 1;
    sub_10000FCE0(&qword_100020668, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v13 + 8))(v9, v14);
    sub_1000113AC(v6, &v12[*(v10 + 20)], &qword_100020230, &qword_100016B40);
    sub_100011414(v12, v17, type metadata accessor for Diagnostics.ADMFollowUpDiagnostics);
  }

  return sub_1000116E8(a1);
}

uint64_t sub_100003938(void *a1, unsigned int a2, uint64_t a3)
{
  v6 = sub_100001B98(&qword_100020730, &qword_100017250);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v11 - v8;
  sub_100011650(a1, a1[3]);
  sub_100014774();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v3)
  {
    v14 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v13 = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v11[1] = a3;
    v12 = 3;
    sub_10001481C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_100003B54()
{
  v1 = 0x46746E6553736168;
  v2 = 0xD000000000000016;
  if (*v0 != 2)
  {
    v2 = 0xD00000000000001ALL;
  }

  if (*v0)
  {
    v1 = 0x65746144746E6573;
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

uint64_t sub_100003BE0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100013564(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100003C14(uint64_t a1)
{
  v2 = sub_1000142EC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100003C50(uint64_t a1)
{
  v2 = sub_1000142EC();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_100003CBC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_100003D04(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

uint64_t sub_100003D48()
{
  if (*v0)
  {
    return 0x65746144746E6573;
  }

  else
  {
    return 0x46746E6553736168;
  }
}

uint64_t sub_100003D90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x46746E6553736168 && a2 == 0xEF7055776F6C6C6FLL;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x65746144746E6573 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_100003E74(uint64_t a1)
{
  v2 = sub_100014298();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100003EB0(uint64_t a1)
{
  v2 = sub_100014298();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100003F38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6574617473 && a2 == 0xE500000000000000)
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

uint64_t sub_100003FBC(uint64_t a1)
{
  v2 = sub_100014918();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100003FF8(uint64_t a1)
{
  v2 = sub_100014918();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100004114(uint64_t a1)
{
  v2 = sub_1000148C4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100004150(uint64_t a1)
{
  v2 = sub_1000148C4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000041D0@<X0>(void *a1@<X0>, uint64_t *a2@<X3>, uint64_t *a3@<X4>, uint64_t (*a4)(void)@<X5>, _BYTE *a6@<X8>)
{
  v16 = a6;
  v9 = sub_100001B98(a2, a3);
  v17 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v15 - v10;
  sub_100011650(a1, a1[3]);
  a4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v6)
  {
    return sub_1000116E8(a1);
  }

  v12 = v16;
  v13 = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v17 + 8))(v11, v9);
  result = sub_1000116E8(a1);
  *v12 = v13 & 1;
  return result;
}

uint64_t sub_100004384(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, void (*a6)(void), uint64_t a7)
{
  v14 = a6;
  v8 = sub_100001B98(a4, a5);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v13 - v10;
  sub_100011650(a1, a1[3]);
  v14();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_1000044C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x64656C62616E65 && a2 == 0xE700000000000000)
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

uint64_t sub_10000454C(uint64_t a1)
{
  v2 = sub_100014870();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100004588(uint64_t a1)
{
  v2 = sub_100014870();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10000464C()
{
  v1 = 0x6E49646574706FLL;
  v2 = 0x74754F646574706FLL;
  if (*v0 != 2)
  {
    v2 = 0x6574617473;
  }

  if (*v0)
  {
    v1 = 0x426E49646574706FLL;
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

uint64_t sub_1000046D8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1000136DC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100004700(uint64_t a1)
{
  v2 = sub_100014774();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10000473C(uint64_t a1)
{
  v2 = sub_100014774();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100004778@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_100013848(a2);
  if (!v2)
  {
    *a1 = result & 1;
    *(a1 + 1) = BYTE1(result) & 1;
    *(a1 + 2) = BYTE2(result) & 1;
    *(a1 + 8) = v5;
  }

  return result;
}

uint64_t sub_1000047BC(void *a1)
{
  if (v1[1])
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  v3 = v2 | *v1;
  if (v1[2])
  {
    v4 = 0x10000;
  }

  else
  {
    v4 = 0;
  }

  return sub_100003938(a1, v3 | v4, *(v1 + 1));
}

Swift::Int sub_100004804()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Int sub_100004848(uint64_t a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

uint64_t sub_1000048AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6C69617465527369 && a2 == 0xEE00656369766544)
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

uint64_t sub_10000493C(uint64_t a1)
{
  v2 = sub_100014720();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100004978(uint64_t a1)
{
  v2 = sub_100014720();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100004A3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a3;
  v4[10] = a4;
  v4[7] = a1;
  v4[8] = a2;
  v4[11] = sub_100001B98(&qword_100020210, &qword_100016B20);
  v4[12] = swift_task_alloc();
  v4[13] = sub_100001B98(&qword_100020218, &qword_100016B28);
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  v4[16] = sub_100001B98(&qword_100020220, &qword_100016B30);
  v4[17] = swift_task_alloc();
  v5 = type metadata accessor for FrameworkDiagnostics.DiagnosticKey();
  v4[18] = v5;
  v4[19] = *(v5 - 8);
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();
  v4[25] = sub_100001B98(&qword_100020228, &qword_100016B38);
  v4[26] = swift_task_alloc();
  v6 = type metadata accessor for Diagnostics.AFMFollowUpDiagnostics(0);
  v4[27] = v6;
  v4[28] = *(v6 - 8);
  v4[29] = swift_task_alloc();
  sub_100001B98(&qword_100020230, &qword_100016B40);
  v4[30] = swift_task_alloc();
  v4[31] = swift_task_alloc();
  sub_100001B98(&qword_100020238, &qword_100016B48);
  v4[32] = swift_task_alloc();
  v4[33] = swift_task_alloc();
  sub_100001B98(&qword_100020240, &qword_100016B50);
  v4[34] = swift_task_alloc();
  v4[35] = swift_task_alloc();
  v4[36] = swift_task_alloc();
  v7 = type metadata accessor for SiriAssistantLocale();
  v4[37] = v7;
  v4[38] = *(v7 - 8);
  v4[39] = swift_task_alloc();

  return _swift_task_switch(sub_100004DBC, 0, 0);
}

char *sub_100004DBC()
{
  v2 = v0[38];
  v1 = v0[39];
  v3 = v0[37];
  type metadata accessor for EligibilityFetcher();
  v4 = static EligibilityFetcher.current.getter();
  v5 = Eligibility.deviceEligibile.getter();

  SiriAssistantLocale.init()();
  v6 = SiriAssistantLocale.current.getter();
  v94 = v7;
  (*(v2 + 8))(v1, v3);
  type metadata accessor for FeatureCache();
  static FeatureCache.shared.getter();
  v8 = FeatureCache.allFeatures(forDSID:allowAnySession:ignoreTTL:)();

  static FeatureCache.shared.getter();
  v9 = FeatureCache.cachedFeature(identifier:altDSID:allowAnySession:ignoreTTL:)();

  v0[6] = v9;
  if (v9)
  {
    v10 = v9;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  sub_1000143A8((v0 + 6), &qword_100020248, &qword_100016B58);
  sub_10001052C(_swiftEmptyArrayStorage);
  if (v8 >> 62)
  {
    v11 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v11 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v97 = v0;
  v96 = v5;
  v95 = v6;
  if (v11)
  {
    result = sub_1000106DC(0, v11 & ~(v11 >> 63), 0);
    if (v11 < 0)
    {
      __break(1u);
      return result;
    }

    if ((v8 & 0xC000000000000001) != 0)
    {
      v13 = 0;
      do
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        v14 = CloudFeature.featureID.getter();
        v16 = v15;
        v17 = CloudFeature.canUse.getter();
        swift_unknownObjectRelease();
        v19 = _swiftEmptyArrayStorage[2];
        v18 = _swiftEmptyArrayStorage[3];
        if (v19 >= v18 >> 1)
        {
          sub_1000106DC((v18 > 1), v19 + 1, 1);
        }

        ++v13;
        _swiftEmptyArrayStorage[2] = v19 + 1;
        v20 = &_swiftEmptyArrayStorage[3 * v19];
        v20[4] = v14;
        v20[5] = v16;
        *(v20 + 48) = v17 & 1;
      }

      while (v11 != v13);
    }

    else
    {
      v21 = 32;
      do
      {
        v22 = *(v8 + v21);
        v23 = CloudFeature.featureID.getter();
        v25 = v24;
        v26 = CloudFeature.canUse.getter();

        v28 = _swiftEmptyArrayStorage[2];
        v27 = _swiftEmptyArrayStorage[3];
        if (v28 >= v27 >> 1)
        {
          sub_1000106DC((v27 > 1), v28 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v28 + 1;
        v29 = &_swiftEmptyArrayStorage[3 * v28];
        v29[4] = v23;
        v29[5] = v25;
        *(v29 + 48) = v26 & 1;
        v21 += 8;
        --v11;
      }

      while (v11);
    }

    v0 = v97;
  }

  else
  {
  }

  type metadata accessor for TicketCache();
  static TicketCache.shared.getter();
  v30 = TicketCache.allTickets(forDSID:)();

  v31 = *(v30 + 16);
  if (v31)
  {
    sub_1000106BC(0, v31, 0);
    v32 = (v30 + 48);
    do
    {
      v33 = *(v32 - 2);
      v34 = *(v32 - 1);
      v35 = *v32;
      swift_bridgeObjectRetain_n();
      v36 = v35;
      v37 = Ticket.status.getter();

      v39 = _swiftEmptyArrayStorage[2];
      v38 = _swiftEmptyArrayStorage[3];
      if (v39 >= v38 >> 1)
      {
        sub_1000106BC((v38 > 1), v39 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v39 + 1;
      v40 = &_swiftEmptyArrayStorage[3 * v39];
      v40[4] = v33;
      v40[5] = v34;
      v40[6] = v37;
      v32 += 3;
      --v31;
    }

    while (v31);

    v0 = v97;
  }

  else
  {
  }

  type metadata accessor for FollowUp();
  if (FollowUp.__allocating_init()())
  {
    dispatch thunk of FollowUp.dateSentCFU.getter();
    v41 = [objc_opt_self() hasEngagedWithCFUDate];
    if (v41)
    {
      v42 = v41;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v43 = 0;
    }

    else
    {
      v43 = 1;
    }

    v88 = v0[35];
    v90 = v0[36];
    v92 = v0[33];
    v46 = v0[30];
    v47 = v0[31];
    v48 = v0[29];
    v86 = v0[28];
    v49 = v0[27];
    v50 = type metadata accessor for Date();
    v51 = *(v50 - 8);
    (*(v51 + 56))(v46, v43, 1, v50);
    v52 = *(v51 + 48);
    *v48 = v52(v47, 1, v50) != 1;
    sub_100011344(v47, &v48[v49[5]], &qword_100020230, &qword_100016B40);
    v53 = v52(v46, 1, v50) != 1;
    sub_1000143A8(v47, &qword_100020230, &qword_100016B40);
    v48[v49[6]] = v53;
    sub_1000113AC(v46, &v48[v49[7]], &qword_100020230, &qword_100016B40);
    sub_100011414(v48, v88, type metadata accessor for Diagnostics.AFMFollowUpDiagnostics);
    (*(v86 + 56))(v88, 0, 1, v49);
    sub_1000113AC(v88, v90, &qword_100020240, &qword_100016B50);
    LOBYTE(v46) = dispatch thunk of FollowUp.hasSentADMCFU.getter();
    v54 = type metadata accessor for Diagnostics.ADMFollowUpDiagnostics(0);
    dispatch thunk of FollowUp.dateSentADMCFU.getter();

    *v92 = v46 & 1;
    (*(*(v54 - 8) + 56))(v92, 0, 1, v54);
  }

  else
  {
    v44 = v0[33];
    (*(v0[28] + 56))(v0[36], 1, 1, v0[27]);
    v45 = type metadata accessor for Diagnostics.ADMFollowUpDiagnostics(0);
    (*(*(v45 - 8) + 56))(v44, 1, 1, v45);
  }

  v55 = v0[33];
  v56 = v0[32];
  v57 = v0[24];
  v58 = v0[18];
  v59 = v0[19];
  sub_100011344(v0[36], v0[34], &qword_100020240, &qword_100016B50);
  sub_100011344(v55, v56, &qword_100020238, &qword_100016B48);
  type metadata accessor for GMBypass();
  v93 = static GMBypass.gmEligibilityBypass()();
  v91 = static GMBypass.admBypassState()();
  type metadata accessor for GMAssetsBypass();
  v89 = static GMAssetsBypass.gmAssetsBypass()();
  type metadata accessor for GMOptIn();
  v60 = static GMOptIn.shared.getter();
  v87 = dispatch thunk of GMOptIn.isOptedIn.getter();

  v61 = static GMOptIn.shared.getter();
  v85 = dispatch thunk of GMOptIn.optedInBuddy.getter();

  v62 = static GMOptIn.shared.getter();
  v84 = dispatch thunk of GMOptIn.optedOutBuddy.getter();

  v63 = static GMOptIn.shared.getter();
  v83 = dispatch thunk of GMOptIn.state.getter();

  type metadata accessor for SystemProperties();
  static SystemProperties.shared.getter();
  v82 = dispatch thunk of SystemProperties.isRetailDevice.getter();

  v64 = *(v59 + 104);
  v64(v57, enum case for FrameworkDiagnostics.DiagnosticKey.startFeatureRequest(_:), v58);
  sub_100010DA4();
  sub_100010E58();
  static FrameworkDiagnostics.fetchDiagnostic<A>(forKey:)();
  v98 = *(v0[19] + 8);
  v98(v0[24], v0[18]);
  v64(v0[23], enum case for FrameworkDiagnostics.DiagnosticKey.featureRequest(_:), v0[18]);
  sub_100010F0C();
  sub_100010FC0();
  static FrameworkDiagnostics.fetchDiagnostic<A>(forKey:)();
  v98(v0[23], v0[18]);
  v64(v0[22], enum case for FrameworkDiagnostics.DiagnosticKey.afmAssets(_:), v0[18]);
  sub_100011074();
  sub_100011128();
  static FrameworkDiagnostics.fetchDiagnostic<A>(forKey:)();
  v98(v0[22], v0[18]);
  v64(v0[21], enum case for FrameworkDiagnostics.DiagnosticKey.admAssets(_:), v0[18]);
  static FrameworkDiagnostics.fetchDiagnostic<A>(forKey:)();
  v98(v0[21], v0[18]);
  v64(v0[20], enum case for FrameworkDiagnostics.DiagnosticKey.coreTelephony(_:), v0[18]);
  sub_1000111DC();
  sub_100011290();
  static FrameworkDiagnostics.fetchDiagnostic<A>(forKey:)();
  v65 = v0[36];
  v66 = v0[33];
  v98(v0[20], v0[18]);
  sub_1000143A8(v66, &qword_100020238, &qword_100016B48);
  sub_1000143A8(v65, &qword_100020240, &qword_100016B50);
  v67 = v0[34];
  v68 = v0[32];
  v69 = v0[26];
  v70 = v0[17];
  v71 = v0[15];
  v80 = v0[14];
  v81 = v0[12];
  v72 = v0[10];
  v73 = v0[7];
  v74 = 0x8000000100018750;
  if (v94)
  {
    v74 = v94;
  }

  v75 = 0xD000000000000018;
  if (v94)
  {
    v75 = v95;
  }

  *v73 = v72 & 1;
  v76 = vdupq_n_s64(v72);
  *v76.i8 = vand_s8(vmovn_s32(vuzp1q_s32(vshlq_u64(v76, xmmword_100016950), vshlq_u64(v76, xmmword_100016940))), 0x1000100010001);
  *(v73 + 1) = vuzp1_s8(*v76.i8, *v76.i8).u32[0];
  *(v73 + 5) = v96 & 1;
  *(v73 + 8) = v75;
  *(v73 + 16) = v74;
  *(v73 + 24) = _swiftEmptyArrayStorage;
  *(v73 + 32) = _swiftEmptyArrayStorage;
  v77 = type metadata accessor for Diagnostics(0);
  sub_1000113AC(v67, v73 + v77[9], &qword_100020240, &qword_100016B50);
  sub_1000113AC(v68, v73 + v77[10], &qword_100020238, &qword_100016B48);
  *(v73 + v77[11]) = v93 & 1;
  *(v73 + v77[12]) = v91 & 1;
  *(v73 + v77[13]) = v89 & 1;
  v78 = v73 + v77[14];
  *v78 = v87 & 1;
  *(v78 + 1) = v85 & 1;
  *(v78 + 2) = v84 & 1;
  *(v78 + 8) = v83;
  *(v73 + v77[15]) = v82 & 1;
  sub_1000113AC(v69, v73 + v77[16], &qword_100020228, &qword_100016B38);
  sub_1000113AC(v70, v73 + v77[17], &qword_100020220, &qword_100016B30);
  sub_1000113AC(v71, v73 + v77[18], &qword_100020218, &qword_100016B28);
  sub_1000113AC(v80, v73 + v77[19], &qword_100020218, &qword_100016B28);
  sub_1000113AC(v81, v73 + v77[20], &qword_100020210, &qword_100016B20);

  v79 = v0[1];

  return v79();
}

unint64_t sub_100005DB8(char a1)
{
  result = 0x72756769666E6F63;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000011;
      break;
    case 2:
      result = 0x656C61636F6CLL;
      break;
    case 3:
      result = 0x7365727574616566;
      break;
    case 4:
      result = 0x7374656B636974;
      break;
    case 5:
      result = 0x6F6C6C6F466D6661;
      break;
    case 6:
      result = 0x6F6C6C6F466D6461;
      break;
    case 7:
      result = 0x737361707962;
      break;
    case 8:
      result = 0x73617079426D6461;
      break;
    case 9:
      result = 0x7079427465737361;
      break;
    case 10:
      result = 0x6E4974706FLL;
      break;
    case 11:
      result = 0x65446C6961746572;
      break;
    case 12:
      result = 0xD000000000000014;
      break;
    case 13:
      result = 0xD000000000000012;
      break;
    case 14:
      result = 0xD000000000000016;
      break;
    case 15:
      result = 0xD000000000000016;
      break;
    case 16:
      result = 0x656C655465726F63;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100005FF4(void *a1)
{
  v3 = v1;
  v5 = sub_100001B98(&qword_100020598, &qword_1000171D8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v20 - v7;
  sub_100011650(a1, a1[3]);
  sub_1000129E4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9 = *(v3 + 1);
  v10 = *(v3 + 2);
  v11 = *(v3 + 3);
  v12 = *(v3 + 4);
  LOBYTE(v20[0]) = *v3;
  BYTE1(v20[0]) = v9;
  BYTE2(v20[0]) = v10;
  BYTE3(v20[0]) = v11;
  BYTE4(v20[0]) = v12;
  v21 = 0;
  sub_100012A38();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    LOBYTE(v20[0]) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v20[0]) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v20[0] = *(v3 + 24);
    v21 = 3;
    sub_100001B98(&qword_1000205B0, &qword_1000171E0);
    sub_10001445C(&qword_1000205B8, sub_100012A8C, &protocol conformance descriptor for <A> [A]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v20[0] = *(v3 + 32);
    v21 = 4;
    sub_100001B98(&qword_1000205C8, &qword_1000171E8);
    sub_100012AE0(&qword_1000205D0, sub_100012B58, &protocol conformance descriptor for <A> [A]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v13 = type metadata accessor for Diagnostics(0);
    LOBYTE(v20[0]) = 5;
    type metadata accessor for Diagnostics.AFMFollowUpDiagnostics(0);
    sub_10000FCE0(&qword_1000205E0, type metadata accessor for Diagnostics.AFMFollowUpDiagnostics, &unk_100016F68);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v20[0]) = 6;
    type metadata accessor for Diagnostics.ADMFollowUpDiagnostics(0);
    sub_10000FCE0(&qword_1000205E8, type metadata accessor for Diagnostics.ADMFollowUpDiagnostics, &unk_100016FB8);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v20[0]) = *(v3 + v13[11]);
    v21 = 7;
    sub_100012BAC();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v20[0]) = *(v3 + v13[12]);
    v21 = 8;
    sub_100012C00();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v20[0]) = *(v3 + v13[13]);
    v21 = 9;
    sub_100012C54();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v14 = (v3 + v13[14]);
    v15 = *v14;
    v16 = v14[1];
    v17 = v14[2];
    v18 = *(v14 + 1);
    LOBYTE(v20[0]) = v15;
    BYTE1(v20[0]) = v16;
    BYTE2(v20[0]) = v17;
    v20[1] = v18;
    v21 = 10;
    sub_100012CA8();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v20[0]) = *(v3 + v13[15]);
    v21 = 11;
    sub_100012CFC();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v20[0]) = 12;
    type metadata accessor for FeatureRequestStartDiagnostic();
    sub_10000FCE0(&qword_100020268, &type metadata accessor for FeatureRequestStartDiagnostic, &protocol conformance descriptor for FeatureRequestStartDiagnostic);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v20[0]) = 13;
    type metadata accessor for FeatureRequestFinishDiagnostic();
    sub_10000FCE0(&qword_100020288, &type metadata accessor for FeatureRequestFinishDiagnostic, &protocol conformance descriptor for FeatureRequestFinishDiagnostic);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v20[0]) = 14;
    type metadata accessor for AssetDiagnostics();
    sub_10000FCE0(&qword_1000202A8, &type metadata accessor for AssetDiagnostics, &protocol conformance descriptor for AssetDiagnostics);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v20[0]) = 15;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v20[0]) = 16;
    type metadata accessor for CoreTelephonyDiagnostic();
    sub_10000FCE0(&qword_1000202C8, &type metadata accessor for CoreTelephonyDiagnostic, &protocol conformance descriptor for CoreTelephonyDiagnostic);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100006748@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v3 = sub_100001B98(&qword_100020210, &qword_100016B20);
  __chkstk_darwin(v3 - 8);
  v44 = v41 - v4;
  v5 = sub_100001B98(&qword_100020218, &qword_100016B28);
  v6 = __chkstk_darwin(v5 - 8);
  v49 = v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v46 = v41 - v8;
  v9 = sub_100001B98(&qword_100020220, &qword_100016B30);
  __chkstk_darwin(v9 - 8);
  v47 = v41 - v10;
  v11 = sub_100001B98(&qword_100020228, &qword_100016B38);
  __chkstk_darwin(v11 - 8);
  v13 = v41 - v12;
  v14 = sub_100001B98(&qword_100020238, &qword_100016B48);
  __chkstk_darwin(v14 - 8);
  v16 = v41 - v15;
  v17 = sub_100001B98(&qword_100020240, &qword_100016B50);
  __chkstk_darwin(v17 - 8);
  v19 = v41 - v18;
  v51 = sub_100001B98(&qword_100020698, &qword_100017230);
  v48 = *(v51 - 8);
  __chkstk_darwin(v51);
  v21 = v41 - v20;
  v22 = type metadata accessor for Diagnostics(0);
  __chkstk_darwin(v22);
  v24 = v41 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = a1[3];
  v53 = a1;
  sub_100011650(a1, v25);
  sub_1000129E4();
  v50 = v21;
  v26 = v52;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v26)
  {
    return sub_1000116E8(v53);
  }

  v27 = v19;
  v42 = v13;
  v43 = v16;
  v29 = v48;
  v28 = v49;
  v52 = v22;
  v56 = 0;
  sub_100014408();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v30 = BYTE1(v54);
  v31 = BYTE2(v54);
  v32 = BYTE3(v54);
  v33 = BYTE4(v54);
  *v24 = v54;
  v24[1] = v30;
  v24[2] = v31;
  v24[3] = v32;
  v24[4] = v33;
  LOBYTE(v54) = 1;
  v24[5] = KeyedDecodingContainer.decode(_:forKey:)() & 1;
  LOBYTE(v54) = 2;
  *(v24 + 1) = KeyedDecodingContainer.decode(_:forKey:)();
  *(v24 + 2) = v34;
  sub_100001B98(&qword_1000205B0, &qword_1000171E0);
  v56 = 3;
  sub_10001445C(&qword_1000206A8, sub_1000144D4, &protocol conformance descriptor for <A> [A]);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *(v24 + 3) = v54;
  sub_100001B98(&qword_1000205C8, &qword_1000171E8);
  v56 = 4;
  sub_100012AE0(&qword_1000206B8, sub_100014528, &protocol conformance descriptor for <A> [A]);
  v41[1] = 0;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *(v24 + 4) = v54;
  type metadata accessor for Diagnostics.AFMFollowUpDiagnostics(0);
  LOBYTE(v54) = 5;
  sub_10000FCE0(&qword_1000206C8, type metadata accessor for Diagnostics.AFMFollowUpDiagnostics, &unk_100016F90);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  sub_1000113AC(v27, &v24[v52[9]], &qword_100020240, &qword_100016B50);
  type metadata accessor for Diagnostics.ADMFollowUpDiagnostics(0);
  LOBYTE(v54) = 6;
  sub_10000FCE0(&qword_1000206D0, type metadata accessor for Diagnostics.ADMFollowUpDiagnostics, &unk_100016FE0);
  v35 = v43;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  sub_1000113AC(v35, &v24[v52[10]], &qword_100020238, &qword_100016B48);
  v56 = 7;
  sub_10001457C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v24[v52[11]] = v54;
  v56 = 8;
  sub_1000145D0();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v24[v52[12]] = v54;
  v56 = 9;
  sub_100014624();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v24[v52[13]] = v54;
  v56 = 10;
  sub_100014678();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v36 = BYTE1(v54);
  v37 = BYTE2(v54);
  v38 = v55;
  v39 = &v24[v52[14]];
  *v39 = v54;
  v39[1] = v36;
  v39[2] = v37;
  *(v39 + 1) = v38;
  v56 = 11;
  sub_1000146CC();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v24[v52[15]] = v54;
  type metadata accessor for FeatureRequestStartDiagnostic();
  LOBYTE(v54) = 12;
  sub_10000FCE0(&qword_100020258, &type metadata accessor for FeatureRequestStartDiagnostic, &protocol conformance descriptor for FeatureRequestStartDiagnostic);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  sub_1000113AC(v42, &v24[v52[16]], &qword_100020228, &qword_100016B38);
  type metadata accessor for FeatureRequestFinishDiagnostic();
  LOBYTE(v54) = 13;
  sub_10000FCE0(&qword_100020278, &type metadata accessor for FeatureRequestFinishDiagnostic, &protocol conformance descriptor for FeatureRequestFinishDiagnostic);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  sub_1000113AC(v47, &v24[v52[17]], &qword_100020220, &qword_100016B30);
  type metadata accessor for AssetDiagnostics();
  LOBYTE(v54) = 14;
  sub_10000FCE0(&qword_100020298, &type metadata accessor for AssetDiagnostics, &protocol conformance descriptor for AssetDiagnostics);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  sub_1000113AC(v46, &v24[v52[18]], &qword_100020218, &qword_100016B28);
  LOBYTE(v54) = 15;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  sub_1000113AC(v28, &v24[v52[19]], &qword_100020218, &qword_100016B28);
  type metadata accessor for CoreTelephonyDiagnostic();
  LOBYTE(v54) = 16;
  sub_10000FCE0(&qword_1000202B8, &type metadata accessor for CoreTelephonyDiagnostic, &protocol conformance descriptor for CoreTelephonyDiagnostic);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v29 + 8))(v50, v51);
  sub_1000113AC(v44, &v24[v52[20]], &qword_100020210, &qword_100016B20);
  sub_100014340(v24, v45, type metadata accessor for Diagnostics);
  sub_1000116E8(v53);
  return sub_100011734(v24, type metadata accessor for Diagnostics);
}

uint64_t sub_1000075F0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100013A78(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100007624(uint64_t a1)
{
  v2 = sub_1000129E4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100007660(uint64_t a1)
{
  v2 = sub_1000129E4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000076CC(__int16 a1)
{
  v2 = _swiftEmptyArrayStorage;
  if (a1)
  {
    v2 = sub_100010420(0, 1, 1, _swiftEmptyArrayStorage);
    v5 = *(v2 + 2);
    v4 = *(v2 + 3);
    if (v5 >= v4 >> 1)
    {
      v2 = sub_100010420((v4 > 1), v5 + 1, 1, v2);
    }

    *(v2 + 2) = v5 + 1;
    v6 = &v2[16 * v5];
    *(v6 + 4) = 0xD000000000000063;
    *(v6 + 5) = 0x8000000100018A70;
    if ((a1 & 2) == 0)
    {
LABEL_3:
      if ((a1 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_20;
    }
  }

  else if ((a1 & 2) == 0)
  {
    goto LABEL_3;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100010420(0, *(v2 + 2) + 1, 1, v2);
  }

  v8 = *(v2 + 2);
  v7 = *(v2 + 3);
  if (v8 >= v7 >> 1)
  {
    v2 = sub_100010420((v7 > 1), v8 + 1, 1, v2);
  }

  *(v2 + 2) = v8 + 1;
  v9 = &v2[16 * v8];
  *(v9 + 4) = 0xD000000000000044;
  *(v9 + 5) = 0x8000000100018A20;
  if ((a1 & 4) == 0)
  {
LABEL_4:
    if ((a1 & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_25;
  }

LABEL_20:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100010420(0, *(v2 + 2) + 1, 1, v2);
  }

  v11 = *(v2 + 2);
  v10 = *(v2 + 3);
  if (v11 >= v10 >> 1)
  {
    v2 = sub_100010420((v10 > 1), v11 + 1, 1, v2);
  }

  *(v2 + 2) = v11 + 1;
  v12 = &v2[16 * v11];
  *(v12 + 4) = 0xD000000000000038;
  *(v12 + 5) = 0x80000001000189E0;
  if ((a1 & 0x10) == 0)
  {
LABEL_5:
    if ((a1 & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_30;
  }

LABEL_25:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100010420(0, *(v2 + 2) + 1, 1, v2);
  }

  v14 = *(v2 + 2);
  v13 = *(v2 + 3);
  if (v14 >= v13 >> 1)
  {
    v2 = sub_100010420((v13 > 1), v14 + 1, 1, v2);
  }

  *(v2 + 2) = v14 + 1;
  v15 = &v2[16 * v14];
  *(v15 + 4) = 0xD000000000000064;
  *(v15 + 5) = 0x8000000100018970;
  if ((a1 & 0x20) == 0)
  {
LABEL_6:
    if ((a1 & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_35;
  }

LABEL_30:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100010420(0, *(v2 + 2) + 1, 1, v2);
  }

  v17 = *(v2 + 2);
  v16 = *(v2 + 3);
  if (v17 >= v16 >> 1)
  {
    v2 = sub_100010420((v16 > 1), v17 + 1, 1, v2);
  }

  *(v2 + 2) = v17 + 1;
  v18 = &v2[16 * v17];
  *(v18 + 4) = 0xD000000000000034;
  *(v18 + 5) = 0x8000000100018930;
  if ((a1 & 0x40) == 0)
  {
LABEL_7:
    if ((a1 & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_40;
  }

LABEL_35:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100010420(0, *(v2 + 2) + 1, 1, v2);
  }

  v20 = *(v2 + 2);
  v19 = *(v2 + 3);
  if (v20 >= v19 >> 1)
  {
    v2 = sub_100010420((v19 > 1), v20 + 1, 1, v2);
  }

  *(v2 + 2) = v20 + 1;
  v21 = &v2[16 * v20];
  *(v21 + 4) = 0xD00000000000004CLL;
  *(v21 + 5) = 0x80000001000188E0;
  if ((a1 & 0x80) == 0)
  {
LABEL_8:
    if ((a1 & 0x100) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_45;
  }

LABEL_40:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100010420(0, *(v2 + 2) + 1, 1, v2);
  }

  v23 = *(v2 + 2);
  v22 = *(v2 + 3);
  if (v23 >= v22 >> 1)
  {
    v2 = sub_100010420((v22 > 1), v23 + 1, 1, v2);
  }

  *(v2 + 2) = v23 + 1;
  v24 = &v2[16 * v23];
  *(v24 + 4) = 0xD0000000000000D5;
  *(v24 + 5) = 0x8000000100018800;
  if ((a1 & 0x100) == 0)
  {
LABEL_9:
    if ((a1 & 0x200) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_50;
  }

LABEL_45:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100010420(0, *(v2 + 2) + 1, 1, v2);
  }

  v26 = *(v2 + 2);
  v25 = *(v2 + 3);
  if (v26 >= v25 >> 1)
  {
    v2 = sub_100010420((v25 > 1), v26 + 1, 1, v2);
  }

  *(v2 + 2) = v26 + 1;
  v27 = &v2[16 * v26];
  *(v27 + 4) = 0xD00000000000005DLL;
  *(v27 + 5) = 0x80000001000187A0;
  if ((a1 & 0x200) == 0)
  {
LABEL_10:
    v3 = *(v2 + 2);
    if (!v3)
    {
      goto LABEL_59;
    }

    goto LABEL_55;
  }

LABEL_50:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100010420(0, *(v2 + 2) + 1, 1, v2);
  }

  v29 = *(v2 + 2);
  v28 = *(v2 + 3);
  v3 = v29 + 1;
  if (v29 >= v28 >> 1)
  {
    v2 = sub_100010420((v28 > 1), v29 + 1, 1, v2);
  }

  *(v2 + 2) = v3;
  v30 = &v2[16 * v29];
  *(v30 + 4) = 0xD000000000000024;
  *(v30 + 5) = 0x8000000100018770;
LABEL_55:
  sub_1000106FC(0, v3, 0);
  v31 = (v2 + 40);
  do
  {
    v32 = *(v31 - 1);
    v33 = *v31;

    v34._countAndFlagsBits = v32;
    v34._object = v33;
    String.append(_:)(v34);

    v36 = _swiftEmptyArrayStorage[2];
    v35 = _swiftEmptyArrayStorage[3];
    if (v36 >= v35 >> 1)
    {
      sub_1000106FC((v35 > 1), v36 + 1, 1);
    }

    _swiftEmptyArrayStorage[2] = v36 + 1;
    v37 = &_swiftEmptyArrayStorage[2 * v36];
    v37[4] = 8237;
    v37[5] = 0xE200000000000000;
    v31 += 2;
    --v3;
  }

  while (v3);
LABEL_59:

  sub_100001B98(&qword_1000201B8, &qword_100016AE0);
  sub_100011794(&qword_1000201C0, &qword_1000201B8, &qword_100016AE0, &protocol conformance descriptor for [A]);
  v38 = BidirectionalCollection<>.joined(separator:)();
  v40 = v39;

  v41._countAndFlagsBits = v38;
  v41._object = v40;
  String.append(_:)(v41);

  return 0;
}

uint64_t sub_100007D14()
{
  v0 = sub_100001B98(&qword_100020308, &qword_100016B88);
  __chkstk_darwin(v0 - 8);
  v2 = &v6 - v1;
  v3 = type metadata accessor for CommandConfiguration();
  sub_1000115EC(v3, qword_100020A18);
  sub_1000015CC(v3, qword_100020A18);
  v4 = type metadata accessor for NameSpecification();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  return CommandConfiguration.init(commandName:abstract:usage:discussion:version:shouldDisplay:subcommands:defaultSubcommand:helpNames:)();
}

uint64_t sub_100007E64()
{
  v1[89] = v0;
  v2 = type metadata accessor for AvailabilityStatus();
  v1[90] = v2;
  v1[91] = *(v2 - 8);
  v1[92] = swift_task_alloc();
  v3 = type metadata accessor for AvailabilityModel();
  v1[93] = v3;
  v1[94] = *(v3 - 8);
  v1[95] = swift_task_alloc();
  v4 = type metadata accessor for SiriAssistantLocale();
  v1[96] = v4;
  v1[97] = *(v4 - 8);
  v1[98] = swift_task_alloc();
  type metadata accessor for String.Encoding();
  v1[99] = swift_task_alloc();
  v5 = type metadata accessor for JSONEncoder.DateEncodingStrategy();
  v1[100] = v5;
  v1[101] = *(v5 - 8);
  v1[102] = swift_task_alloc();
  v6 = type metadata accessor for JSONEncoder.OutputFormatting();
  v1[103] = v6;
  v1[104] = *(v6 - 8);
  v1[105] = swift_task_alloc();
  v1[106] = type metadata accessor for Diagnostics(0);
  v1[107] = swift_task_alloc();

  return _swift_task_switch(sub_1000080F0, 0, 0);
}

uint64_t sub_1000080F0()
{
  v1 = objc_opt_self();
  v0[108] = v1;
  v2 = [v1 defaultStore];
  v0[109] = v2;
  if (v2)
  {
    v3 = v2;
    v0[2] = v0;
    v0[7] = v0 + 83;
    v0[3] = sub_10000823C;
    v4 = swift_continuation_init();
    v5 = sub_100001B98(&qword_1000201A0, &qword_100016AC8);
    v0[110] = v5;
    v0[49] = v5;
    v0[42] = _NSConcreteStackBlock;
    v0[43] = 1107296256;
    v0[44] = sub_100015B84;
    v0[45] = &unk_10001CB20;
    v0[46] = v4;
    [v3 aa_primaryAppleAccountWithCompletion:v0 + 42];
    v2 = v0 + 2;
  }

  else
  {
    __break(1u);
  }

  return _swift_continuation_await(v2);
}

uint64_t sub_10000823C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 888) = v1;
  if (v1)
  {
    v2 = sub_10000C594;
  }

  else
  {
    v2 = sub_10000834C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10000834C()
{
  v93 = v0;
  v1 = (v0 + 1068);
  v2 = *(v0 + 872);
  v91 = *(v0 + 664);
  *(v0 + 896) = v91;

  v3 = type metadata accessor for GMDiagnostics(0);
  sub_100001B98(&qword_1000200D0, &unk_100016998);
  Flag.wrappedValue.getter();
  if ((*(v0 + 1076) & 1) != 0 || (Flag.wrappedValue.getter(), *(v0 + 1073) == 1))
  {
    v4 = *(*(v0 + 712) + *(v3 + 20));
    sub_100001B98(&qword_1000200C8, &qword_100016990);
    Option.wrappedValue.getter();
    v5 = *(v0 + 1077);
    Flag.wrappedValue.getter();
    v6 = *(v0 + 1078);
    Flag.wrappedValue.getter();
    v7 = *(v0 + 1079);
    if (v91 && (v8 = [v91 aa_altDSID]) != 0)
    {
      v9 = v8;
      v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = v11;
    }

    else
    {
      v10 = 0;
      v12 = 0;
    }

    *(v0 + 904) = v12;
    v13 = swift_task_alloc();
    v14 = &_mh_execute_header;
    if (!v7)
    {
      v14 = 0;
    }

    v15 = 0x1000000;
    if (!v6)
    {
      v15 = 0;
    }

    v16 = 0x10000;
    if (!v5)
    {
      v16 = 0;
    }

    *(v0 + 912) = v13;
    v17 = v16 | v15;
    v18 = 256;
    if (!v4)
    {
      v18 = 0;
    }

    *v13 = v0;
    v13[1] = sub_100009214;
    v19 = *(v0 + 856);

    return sub_100004A3C(v19, v10, v12, v17 | v14 | v18);
  }

  else
  {
    *(v0 + 928) = sub_100001B98(&qword_1000200C8, &qword_100016990);
    Option.wrappedValue.getter();
    if (*(v0 + 1071))
    {
      v21 = 2;
    }

    else
    {
      type metadata accessor for GMAssetsBypass();
      v21 = static GMAssetsBypass.gmAssetsBypass()() & 1;
    }

    *(v0 + 1081) = v21;
    v88 = *(v0 + 784);
    v89 = *(v0 + 776);
    v90 = *(v0 + 768);
    v22 = *(v0 + 712);
    *(v0 + 936) = type metadata accessor for GMAssetsBypass();
    static GMAssetsBypass.setGMEligibilityBypass(_:)();
    *(v0 + 944) = sub_100001B98(&qword_1000201A8, &qword_100016AD0);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_100016960;
    *(v23 + 56) = &type metadata for String;
    *(v23 + 32) = 0xD000000000000041;
    *(v23 + 40) = 0x8000000100017E50;
    print(_:separator:terminator:)();

    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_100016960;
    *(v24 + 56) = &type metadata for String;
    *(v24 + 32) = 0xD000000000000019;
    *(v24 + 40) = 0x8000000100017EA0;
    print(_:separator:terminator:)();

    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_100016960;
    _StringGuts.grow(_:)(30);

    v92[0] = 0xD00000000000001CLL;
    v92[1] = 0x8000000100017EC0;
    v26 = *(v22 + *(v3 + 20));
    *(v0 + 1082) = v26;
    if (v26)
    {
      v27 = 1702195828;
    }

    else
    {
      v27 = 0x65736C6166;
    }

    if (v26)
    {
      v28 = 0xE400000000000000;
    }

    else
    {
      v28 = 0xE500000000000000;
    }

    v29 = v28;
    String.append(_:)(*&v27);

    *(v25 + 56) = &type metadata for String;
    *(v25 + 32) = v92[0];
    *(v25 + 40) = v92[1];
    print(_:separator:terminator:)();

    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_100016960;
    strcpy(v92, "--networking ");
    HIWORD(v92[1]) = -4864;
    *(v0 + 1064) = *(v3 + 28);
    Option.wrappedValue.getter();
    if (*(v0 + 1070))
    {
      v31 = 1702195828;
    }

    else
    {
      v31 = 0x65736C6166;
    }

    if (*(v0 + 1070))
    {
      v32 = 0xE400000000000000;
    }

    else
    {
      v32 = 0xE500000000000000;
    }

    v33 = v32;
    String.append(_:)(*&v31);

    v34 = v92[0];
    v35 = v92[1];
    *(v30 + 56) = &type metadata for String;
    *(v30 + 32) = v34;
    *(v30 + 40) = v35;
    print(_:separator:terminator:)();

    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_100016960;
    strcpy(v92, "--sysd ");
    v92[1] = 0xE700000000000000;
    Flag.wrappedValue.getter();
    if (*v1)
    {
      v37 = 1702195828;
    }

    else
    {
      v37 = 0x65736C6166;
    }

    if (*v1)
    {
      v38 = 0xE400000000000000;
    }

    else
    {
      v38 = 0xE500000000000000;
    }

    v39 = v38;
    String.append(_:)(*&v37);

    v40 = v92[0];
    v41 = v92[1];
    *(v36 + 56) = &type metadata for String;
    *(v36 + 32) = v40;
    *(v36 + 40) = v41;
    print(_:separator:terminator:)();

    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_100016960;
    strcpy(v92, "--json ");
    v92[1] = 0xE700000000000000;
    Flag.wrappedValue.getter();
    if (*(v0 + 1069))
    {
      v43 = 1702195828;
    }

    else
    {
      v43 = 0x65736C6166;
    }

    if (*(v0 + 1069))
    {
      v44 = 0xE400000000000000;
    }

    else
    {
      v44 = 0xE500000000000000;
    }

    v45 = v44;
    String.append(_:)(*&v43);

    v46 = v92[0];
    v47 = v92[1];
    *(v42 + 56) = &type metadata for String;
    *(v42 + 32) = v46;
    *(v42 + 40) = v47;
    print(_:separator:terminator:)();

    v48 = swift_allocObject();
    *(v48 + 16) = xmmword_100016960;
    v49._countAndFlagsBits = 0x6967696C655F736FLL;
    v49._object = 0xEE007974696C6962;
    String.append(_:)(v49);
    *(v48 + 56) = &type metadata for String;
    *(v48 + 32) = 2106122;
    *(v48 + 40) = 0xE300000000000000;
    print(_:separator:terminator:)();

    v50 = swift_allocObject();
    *(v50 + 16) = xmmword_100016960;
    *(v50 + 56) = &type metadata for String;
    *(v50 + 32) = 0xD0000000000000DDLL;
    *(v50 + 40) = 0x8000000100017EE0;
    print(_:separator:terminator:)();

    v51 = swift_allocObject();
    *(v51 + 16) = xmmword_100016960;
    v92[0] = 2106122;
    v92[1] = 0xE300000000000000;
    v52._countAndFlagsBits = 0x656C61636F4CLL;
    v52._object = 0xE600000000000000;
    String.append(_:)(v52);
    *(v51 + 56) = &type metadata for String;
    *(v51 + 32) = 2106122;
    *(v51 + 40) = 0xE300000000000000;
    print(_:separator:terminator:)();

    SiriAssistantLocale.init()();
    v53 = SiriAssistantLocale.current.getter();
    v55 = v54;
    (*(v89 + 8))(v88, v90);
    v56 = swift_allocObject();
    *(v56 + 16) = xmmword_100016960;
    if (v55)
    {
      v57._countAndFlagsBits = v53;
      v57._object = v55;
      String.append(_:)(v57);

      v58._countAndFlagsBits = 46;
      v58._object = 0xE100000000000000;
      String.append(_:)(v58);
      v59 = 0x8000000100018700;
      *(v56 + 56) = &type metadata for String;
      *(v56 + 32) = 0xD000000000000016;
    }

    else
    {
      v59 = 0x8000000100017FC0;
      *(v56 + 56) = &type metadata for String;
      *(v56 + 32) = 0xD000000000000033;
    }

    *(v56 + 40) = v59;
    print(_:separator:terminator:)();

    v60 = swift_allocObject();
    *(v60 + 16) = xmmword_100016960;
    v92[0] = 2106122;
    v92[1] = 0xE300000000000000;
    v61._countAndFlagsBits = 0x2065727574616546;
    v61._object = 0xEB00000000495053;
    String.append(_:)(v61);
    *(v60 + 56) = &type metadata for String;
    *(v60 + 32) = 2106122;
    *(v60 + 40) = 0xE300000000000000;
    print(_:separator:terminator:)();

    Option.wrappedValue.getter();
    v62 = *(v0 + 1072);
    v63 = swift_allocObject();
    *(v63 + 16) = xmmword_100016960;
    *(v63 + 56) = &type metadata for String;
    if (v62 == 1)
    {
      *(v63 + 32) = 0xD00000000000002BLL;
      *(v63 + 40) = 0x80000001000186A0;
      print(_:separator:terminator:)();

      v64 = swift_task_alloc();
      *(v0 + 952) = v64;
      v65 = type metadata accessor for CloudFeature();
      *v64 = v0;
      v64[1] = sub_100009728;

      return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 656, 0, 0, 0x29286E7572, 0xE500000000000000, sub_10000E658, 0, v65);
    }

    else
    {
      *(v63 + 32) = 0xD00000000000003DLL;
      *(v63 + 40) = 0x8000000100018000;
      print(_:separator:terminator:)();

      type metadata accessor for FeatureCache();
      static FeatureCache.shared.getter();
      if (v91)
      {
        v66 = [v91 aa_altDSID];
        if (v66)
        {
          v67 = v66;
          static String._unconditionallyBridgeFromObjectiveC(_:)();
        }
      }

      v68 = FeatureCache.cachedFeature(identifier:altDSID:allowAnySession:ignoreTTL:)();

      if (v68)
      {
        v69 = swift_allocObject();
        *(v69 + 16) = xmmword_100016960;
        v70 = v68;
        v92[0] = 0xD000000000000024;
        v92[1] = 0x8000000100018670;
        v71 = CloudFeature.canUse.getter();
        v72 = (v71 & 1) == 0;
        if (v71)
        {
          v73 = 1702195828;
        }

        else
        {
          v73 = 0x65736C6166;
        }

        if (v72)
        {
          v74 = 0xE500000000000000;
        }

        else
        {
          v74 = 0xE400000000000000;
        }

        v75 = v74;
        String.append(_:)(*&v73);

        v76 = v92[0];
        v77 = v92[1];
        *(v69 + 56) = &type metadata for String;
        *(v69 + 32) = v76;
        *(v69 + 40) = v77;
        print(_:separator:terminator:)();
      }

      else
      {
        v78 = swift_allocObject();
        *(v78 + 16) = xmmword_100016960;
        *(v78 + 56) = &type metadata for String;
        *(v78 + 32) = 0xD00000000000001ALL;
        *(v78 + 40) = 0x8000000100018040;
        print(_:separator:terminator:)();
        v70 = 0;
      }

      *(v0 + 968) = v70;

      static FeatureCache.shared.getter();
      v79 = FeatureCache.persistentDomain.getter();

      v80 = swift_allocObject();
      *(v80 + 16) = xmmword_100016960;
      if (v79)
      {
        v81._countAndFlagsBits = Dictionary.Keys.description.getter();
        String.append(_:)(v81);

        v82 = 0x8000000100018640;
        *(v80 + 56) = &type metadata for String;
        *(v80 + 32) = 0xD000000000000026;
      }

      else
      {
        v82 = 0x8000000100018060;
        *(v80 + 56) = &type metadata for String;
        *(v80 + 32) = 0xD00000000000001BLL;
      }

      *(v80 + 40) = v82;
      print(_:separator:terminator:)();

      v83 = swift_allocObject();
      *(v83 + 16) = xmmword_100016960;
      v84._countAndFlagsBits = 0xD000000000000017;
      v84._object = 0x8000000100018080;
      String.append(_:)(v84);
      *(v83 + 56) = &type metadata for String;
      *(v83 + 32) = 2106122;
      *(v83 + 40) = 0xE300000000000000;
      print(_:separator:terminator:)();

      v85 = objc_opt_self();
      *(v0 + 976) = v85;
      v86 = String._bridgeToObjectiveC()();
      *(v0 + 984) = v86;
      *(v0 + 208) = v0;
      *(v0 + 248) = v0 + 632;
      *(v0 + 216) = sub_100009BF0;
      v87 = swift_continuation_init();
      *(v0 + 328) = sub_100001B98(&qword_1000201B0, &qword_100016AD8);
      *(v0 + 272) = _NSConcreteStackBlock;
      *(v0 + 280) = 1107296256;
      *(v0 + 288) = sub_100015B84;
      *(v0 + 296) = &unk_10001CB48;
      *(v0 + 304) = v87;
      [v85 getTicketStatusFromCacheForFeature:v86 completionHandler:v0 + 272];

      return _swift_continuation_await(v0 + 208);
    }
  }
}

uint64_t sub_100009214()
{
  *(*v1 + 920) = v0;

  if (v0)
  {
    v2 = sub_10000C668;
  }

  else
  {

    v2 = sub_100009330;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100009330()
{
  v18 = v0[115];
  v1 = v0[102];
  v2 = v0[101];
  v17 = v0[100];
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  sub_100001B98(&qword_1000201E8, &qword_100016B10);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100016970;
  static JSONEncoder.OutputFormatting.prettyPrinted.getter();
  static JSONEncoder.OutputFormatting.sortedKeys.getter();
  v0[77] = v3;
  sub_10000FCE0(&qword_1000201F0, &type metadata accessor for JSONEncoder.OutputFormatting, &protocol conformance descriptor for JSONEncoder.OutputFormatting);
  sub_100001B98(&qword_1000201F8, &qword_100016B18);
  sub_100011794(&qword_100020200, &qword_1000201F8, &qword_100016B18, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  dispatch thunk of JSONEncoder.outputFormatting.setter();
  (*(v2 + 104))(v1, enum case for JSONEncoder.DateEncodingStrategy.iso8601(_:), v17);
  dispatch thunk of JSONEncoder.dateEncodingStrategy.setter();
  sub_10000FCE0(&qword_100020208, type metadata accessor for Diagnostics, &unk_1000171B0);
  v4 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v6 = v0[112];
  v7 = v0[107];
  if (v18)
  {
    sub_100011734(v0[107], type metadata accessor for Diagnostics);

    v8 = v0[1];
  }

  else
  {
    v9 = v4;
    v10 = v5;
    static String.Encoding.utf8.getter();
    v11 = String.init(data:encoding:)();
    if (v12)
    {
      v13 = v11;
    }

    else
    {
      v13 = 0xD00000000000002ELL;
    }

    if (v12)
    {
      v14 = v12;
    }

    else
    {
      v14 = 0x8000000100018720;
    }

    sub_100001B98(&qword_1000201A8, &qword_100016AD0);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_100016960;
    *(v15 + 56) = &type metadata for String;
    *(v15 + 32) = v13;
    *(v15 + 40) = v14;
    print(_:separator:terminator:)();

    sub_100010764(v9, v10);

    sub_100011734(v7, type metadata accessor for Diagnostics);

    v8 = v0[1];
  }

  return v8();
}

uint64_t sub_100009728()
{
  *(*v1 + 960) = v0;

  if (v0)
  {
    v2 = sub_10000C740;
  }

  else
  {
    v2 = sub_10000983C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10000983C()
{
  v1 = v0[82];
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100016960;
  v3 = v1;
  v4 = CloudFeature.canUse.getter();
  v5 = (v4 & 1) == 0;
  if (v4)
  {
    v6 = 1702195828;
  }

  else
  {
    v6 = 0x65736C6166;
  }

  if (v5)
  {
    v7 = 0xE500000000000000;
  }

  else
  {
    v7 = 0xE400000000000000;
  }

  v8 = v7;
  String.append(_:)(*&v6);

  *(v2 + 56) = &type metadata for String;
  *(v2 + 32) = 0xD000000000000024;
  *(v2 + 40) = 0x8000000100018670;
  print(_:separator:terminator:)();

  v0[121] = v3;

  type metadata accessor for FeatureCache();
  static FeatureCache.shared.getter();
  v9 = FeatureCache.persistentDomain.getter();

  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_100016960;
  if (v9)
  {
    v11._countAndFlagsBits = Dictionary.Keys.description.getter();
    String.append(_:)(v11);

    v12 = 0x8000000100018640;
    *(v10 + 56) = &type metadata for String;
    *(v10 + 32) = 0xD000000000000026;
  }

  else
  {
    v12 = 0x8000000100018060;
    *(v10 + 56) = &type metadata for String;
    *(v10 + 32) = 0xD00000000000001BLL;
  }

  *(v10 + 40) = v12;
  print(_:separator:terminator:)();

  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_100016960;
  v14._object = 0x8000000100018080;
  v14._countAndFlagsBits = 0xD000000000000017;
  String.append(_:)(v14);
  *(v13 + 56) = &type metadata for String;
  *(v13 + 32) = 2106122;
  *(v13 + 40) = 0xE300000000000000;
  print(_:separator:terminator:)();

  v15 = objc_opt_self();
  v0[122] = v15;
  v16 = String._bridgeToObjectiveC()();
  v0[123] = v16;
  v0[26] = v0;
  v0[31] = v0 + 79;
  v0[27] = sub_100009BF0;
  v17 = swift_continuation_init();
  v0[41] = sub_100001B98(&qword_1000201B0, &qword_100016AD8);
  v0[34] = _NSConcreteStackBlock;
  v0[35] = 1107296256;
  v0[36] = sub_100015B84;
  v0[37] = &unk_10001CB48;
  v0[38] = v17;
  [v15 getTicketStatusFromCacheForFeature:v16 completionHandler:v0 + 34];

  return _swift_continuation_await(v0 + 26);
}

uint64_t sub_100009BF0()
{
  v1 = *(*v0 + 240);
  *(*v0 + 992) = v1;
  if (v1)
  {
    v2 = sub_10000CB34;
  }

  else
  {
    v2 = sub_100009D00;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100009D00()
{
  v96 = v0;
  v1 = *(v0 + 632);

  v2 = &selRef_mainRunLoop;
  if (v1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_100016960;
    v94 = 0xD00000000000002ALL;
    v95 = 0x8000000100018610;
    v4 = [v1 description];
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;

    v8._countAndFlagsBits = v5;
    v8._object = v7;
    String.append(_:)(v8);

    *(v3 + 56) = &type metadata for String;
    *(v3 + 32) = 0xD00000000000002ALL;
    *(v3 + 40) = 0x8000000100018610;
    print(_:separator:terminator:)();
  }

  else
  {
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_100016960;
    *(v9 + 56) = &type metadata for String;
    *(v9 + 32) = 0xD000000000000035;
    *(v9 + 40) = 0x80000001000185D0;
    print(_:separator:terminator:)();
  }

  v10 = *(v0 + 896);
  v90 = swift_allocObject();
  *(v90 + 16) = xmmword_100016960;
  strcpy(v92, "All tickets:\n");
  HIWORD(v92[1]) = -4864;
  type metadata accessor for TicketCache();
  static TicketCache.shared.getter();
  if (v10)
  {
    v11 = [*(v0 + 896) aa_altDSID];
    if (v11)
    {
      v12 = v11;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }
  }

  v13 = TicketCache.allTickets(forDSID:)();

  v14 = *(v13 + 16);
  if (v14)
  {
    v93 = _swiftEmptyArrayStorage;
    sub_1000106FC(0, v14, 0);
    v15 = _swiftEmptyArrayStorage;
    v16 = (v13 + 48);
    do
    {
      v18 = *(v16 - 2);
      v17 = *(v16 - 1);
      v19 = *v16;
      v94 = 8237;
      v95 = 0xE200000000000000;

      v20 = v19;
      v21._countAndFlagsBits = v18;
      v21._object = v17;
      String.append(_:)(v21);
      v22._countAndFlagsBits = 8250;
      v22._object = 0xE200000000000000;
      String.append(_:)(v22);
      v23 = v2;
      v24 = [v20 v2[5]];
      v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v27 = v26;

      v28._countAndFlagsBits = v25;
      v28._object = v27;
      String.append(_:)(v28);

      v93 = v15;
      v30 = v15[2];
      v29 = v15[3];
      if (v30 >= v29 >> 1)
      {
        sub_1000106FC((v29 > 1), v30 + 1, 1);
        v15 = v93;
      }

      v15[2] = v30 + 1;
      v31 = &v15[2 * v30];
      v31[4] = 8237;
      v31[5] = 0xE200000000000000;
      v16 += 3;
      --v14;
      v2 = v23;
    }

    while (v14);
  }

  else
  {

    v15 = _swiftEmptyArrayStorage;
  }

  *(v0 + 640) = v15;
  *(v0 + 1000) = sub_100001B98(&qword_1000201B8, &qword_100016AE0);
  *(v0 + 1008) = sub_100011794(&qword_1000201C0, &qword_1000201B8, &qword_100016AE0, &protocol conformance descriptor for [A]);
  v32 = BidirectionalCollection<>.joined(separator:)();
  v34 = v33;

  v35._countAndFlagsBits = v32;
  v35._object = v34;
  String.append(_:)(v35);
  v36 = v0;

  v37 = v92[0];
  v38 = v92[1];
  *(v90 + 56) = &type metadata for String;
  *(v90 + 32) = v37;
  *(v90 + 40) = v38;
  print(_:separator:terminator:)();

  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_100016960;
  v94 = 2106122;
  v95 = 0xE300000000000000;
  v40._countAndFlagsBits = 0xD000000000000018;
  v40._object = 0x8000000100018120;
  String.append(_:)(v40);
  *(v39 + 56) = &type metadata for String;
  *(v39 + 32) = 2106122;
  *(v39 + 40) = 0xE300000000000000;
  print(_:separator:terminator:)();

  Option.wrappedValue.getter();
  if (*(v0 + 1075))
  {
    v41 = *(v0 + 976);
    v42 = String._bridgeToObjectiveC()();
    *(v0 + 1016) = v42;
    *(v0 + 80) = v0;
    *(v0 + 120) = v0 + 688;
    *(v0 + 88) = sub_10000AB64;
    v43 = swift_continuation_init();
    *(v0 + 456) = sub_100001B98(&qword_1000201E0, &qword_100016B00);
    *(v0 + 400) = _NSConcreteStackBlock;
    *(v0 + 408) = 1107296256;
    *(v0 + 416) = sub_10000E91C;
    *(v0 + 424) = &unk_10001CB98;
    *(v0 + 432) = v43;
    [v41 getTicketStatusForFeature:v42 completionHandler:v0 + 400];
    v44 = (v0 + 80);
LABEL_37:

    return _swift_continuation_await(v44);
  }

  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_100016960;
  *(v45 + 56) = &type metadata for String;
  *(v45 + 32) = 0xD000000000000055;
  *(v45 + 40) = 0x8000000100018140;
  print(_:separator:terminator:)();

  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_100016960;
  v94 = 2106122;
  v95 = 0xE300000000000000;
  v47._object = 0x80000001000181A0;
  v47._countAndFlagsBits = 0xD000000000000011;
  String.append(_:)(v47);
  *(v46 + 56) = &type metadata for String;
  *(v46 + 32) = 2106122;
  *(v46 + 40) = 0xE300000000000000;
  print(_:separator:terminator:)();

  Option.wrappedValue.getter();
  v48 = *(v0 + 1074);
  v49 = swift_allocObject();
  *(v49 + 16) = xmmword_100016960;
  *(v49 + 56) = &type metadata for String;
  if (v48 != 1)
  {
    *(v49 + 32) = 0xD000000000000045;
    *(v49 + 40) = 0x80000001000181C0;
    print(_:separator:terminator:)();

    type metadata accessor for AvailabilityManager();
    static AvailabilityManager.shared.getter();
    dispatch thunk of AvailabilityManager.cached()();

    Option.wrappedValue.getter();
    if ((*(v0 + 1080) & 1) == 0)
    {
      v53 = swift_allocObject();
      *(v53 + 16) = xmmword_100016960;
      *(v53 + 56) = &type metadata for String;
      *(v53 + 32) = 0xD00000000000005FLL;
      *(v53 + 40) = 0x8000000100018210;
      print(_:separator:terminator:)();
    }

    v54 = *(v0 + 736);
    v55 = *(v0 + 728);
    v56 = v36[90];
    AvailabilityModel.status.getter();
    v57 = (*(v55 + 88))(v54, v56);
    if (v57 == enum case for AvailabilityStatus.unavailable(_:))
    {
      v58 = v36[92];
      (*(v36[91] + 96))(v58, v36[90]);
      v59 = *v58;
      v60 = swift_allocObject();
      *(v60 + 16) = xmmword_100016960;
      v94 = 0xD00000000000001BLL;
      v95 = 0x8000000100018270;
      v61._countAndFlagsBits = sub_1000076CC(v59);
      String.append(_:)(v61);

      v62 = 0x8000000100018270;
      *(v60 + 56) = &type metadata for String;
      *(v60 + 32) = 0xD00000000000001BLL;
    }

    else
    {
      if (v57 == enum case for AvailabilityStatus.available(_:))
      {
        v63 = swift_allocObject();
        v60 = v63;
        *(v63 + 16) = xmmword_100016960;
        v62 = 0x80000001000184E0;
        *(v63 + 56) = &type metadata for String;
        v64 = 0xD00000000000001FLL;
      }

      else
      {
        if (v57 != enum case for AvailabilityStatus.limited(_:))
        {
          v85 = v36[90];
          v86 = v85;

          return _diagnoseUnexpectedEnumCase<A>(type:)(v85, v86);
        }

        v63 = swift_allocObject();
        v60 = v63;
        *(v63 + 16) = xmmword_100016960;
        v62 = 0x80000001000184B0;
        *(v63 + 56) = &type metadata for String;
        v64 = 0xD000000000000020;
      }

      *(v63 + 32) = v64;
    }

    v65 = v36[108];
    *(v60 + 40) = v62;
    print(_:separator:terminator:)();

    v66 = swift_allocObject();
    *(v66 + 16) = xmmword_100016960;
    v67._countAndFlagsBits = 0xD000000000000013;
    v67._object = 0x8000000100018290;
    String.append(_:)(v67);
    *(v66 + 56) = &type metadata for String;
    *(v66 + 32) = 2106122;
    *(v66 + 40) = 0xE300000000000000;
    print(_:separator:terminator:)();

    v68 = swift_allocObject();
    *(v68 + 16) = xmmword_100016960;
    v94 = 0xD00000000000001ALL;
    v95 = 0x80000001000182B0;
    type metadata accessor for GMOptIn();
    v69 = static GMOptIn.shared.getter();
    v70 = dispatch thunk of GMOptIn.isOptedIn.getter();

    if (v70)
    {
      v71 = 1702195828;
    }

    else
    {
      v71 = 0x65736C6166;
    }

    if (v70)
    {
      v72 = 0xE400000000000000;
    }

    else
    {
      v72 = 0xE500000000000000;
    }

    v73 = v72;
    String.append(_:)(*&v71);

    v74 = v94;
    v75 = v95;
    *(v68 + 56) = &type metadata for String;
    *(v68 + 32) = v74;
    *(v68 + 40) = v75;
    print(_:separator:terminator:)();

    v76 = swift_allocObject();
    *(v76 + 16) = xmmword_100016960;
    v77._countAndFlagsBits = 0xD00000000000001ELL;
    v77._object = 0x80000001000182D0;
    String.append(_:)(v77);
    *(v76 + 56) = &type metadata for String;
    *(v76 + 32) = 2106122;
    *(v76 + 40) = 0xE300000000000000;
    print(_:separator:terminator:)();

    v78 = swift_allocObject();
    *(v78 + 16) = xmmword_100016960;
    *(v78 + 56) = &type metadata for String;
    *(v78 + 32) = 0xD000000000000047;
    *(v78 + 40) = 0x80000001000182F0;
    print(_:separator:terminator:)();

    v79 = swift_allocObject();
    *(v79 + 16) = xmmword_100016960;
    *(v79 + 56) = &type metadata for String;
    *(v79 + 32) = 0xD000000000000046;
    *(v79 + 40) = 0x8000000100018340;
    print(_:separator:terminator:)();

    v80 = swift_allocObject();
    *(v80 + 16) = xmmword_100016960;
    *(v80 + 56) = &type metadata for String;
    *(v80 + 32) = 0xD000000000000048;
    *(v80 + 40) = 0x8000000100018390;
    print(_:separator:terminator:)();

    v81 = swift_allocObject();
    *(v81 + 16) = xmmword_100016960;
    v94 = 2106122;
    v95 = 0xE300000000000000;
    v82._countAndFlagsBits = 0x634120656C707041;
    v82._object = 0xED0000746E756F63;
    String.append(_:)(v82);
    v83 = v94;
    v84 = v95;
    *(v81 + 56) = &type metadata for String;
    *(v81 + 32) = v83;
    *(v81 + 40) = v84;
    print(_:separator:terminator:)();

    v85 = [v65 defaultStore];
    v36[131] = v85;
    if (v85)
    {
      v87 = v85;
      v88 = v36[110];
      v36[18] = v36;
      v36[23] = v36 + 84;
      v36[19] = sub_10000BD84;
      v89 = swift_continuation_init();
      v36[65] = v88;
      v36[58] = _NSConcreteStackBlock;
      v36[59] = 1107296256;
      v36[60] = sub_100015B84;
      v36[61] = &unk_10001CB70;
      v36[62] = v89;
      [v87 aa_primaryAppleAccountWithCompletion:v36 + 58];
      v44 = v36 + 18;
      goto LABEL_37;
    }

    __break(1u);
    return _diagnoseUnexpectedEnumCase<A>(type:)(v85, v86);
  }

  *(v49 + 32) = 0xD000000000000054;
  *(v49 + 40) = 0x8000000100018500;
  print(_:separator:terminator:)();

  type metadata accessor for AvailabilityManager();
  *(v0 + 1032) = static AvailabilityManager.shared.getter();
  v91 = (&async function pointer to dispatch thunk of AvailabilityManager.fetch() + async function pointer to dispatch thunk of AvailabilityManager.fetch());
  v50 = swift_task_alloc();
  *(v0 + 1040) = v50;
  *v50 = v0;
  v50[1] = sub_10000B5CC;
  v51 = *(v0 + 760);

  return v91(v51);
}

uint64_t sub_10000AB64()
{
  v1 = *(*v0 + 112);
  *(*v0 + 1024) = v1;
  if (v1)
  {
    v2 = sub_10000D960;
  }

  else
  {
    v2 = sub_10000AC74;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10000AC74()
{
  v1 = *(v0 + 688);

  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100016960;
  v3 = [v1 description];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  v7._countAndFlagsBits = v4;
  v7._object = v6;
  String.append(_:)(v7);

  *(v2 + 56) = &type metadata for String;
  *(v2 + 32) = 0xD00000000000002CLL;
  *(v2 + 40) = 0x80000001000185A0;
  print(_:separator:terminator:)();

  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100016960;
  v9._object = 0x80000001000181A0;
  v9._countAndFlagsBits = 0xD000000000000011;
  String.append(_:)(v9);
  *(v8 + 56) = &type metadata for String;
  *(v8 + 32) = 2106122;
  *(v8 + 40) = 0xE300000000000000;
  print(_:separator:terminator:)();

  Option.wrappedValue.getter();
  LODWORD(v3) = *(v0 + 1074);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_100016960;
  *(v10 + 56) = &type metadata for String;
  if (v3 == 1)
  {
    *(v10 + 32) = 0xD000000000000054;
    *(v10 + 40) = 0x8000000100018500;
    print(_:separator:terminator:)();

    type metadata accessor for AvailabilityManager();
    *(v0 + 1032) = static AvailabilityManager.shared.getter();
    v47 = (&async function pointer to dispatch thunk of AvailabilityManager.fetch() + async function pointer to dispatch thunk of AvailabilityManager.fetch());
    v11 = swift_task_alloc();
    *(v0 + 1040) = v11;
    *v11 = v0;
    v11[1] = sub_10000B5CC;
    v12 = *(v0 + 760);

    return v47(v12);
  }

  *(v10 + 32) = 0xD000000000000045;
  *(v10 + 40) = 0x80000001000181C0;
  print(_:separator:terminator:)();

  type metadata accessor for AvailabilityManager();
  static AvailabilityManager.shared.getter();
  dispatch thunk of AvailabilityManager.cached()();

  Option.wrappedValue.getter();
  if ((*(v0 + 1080) & 1) == 0)
  {
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_100016960;
    *(v14 + 56) = &type metadata for String;
    *(v14 + 32) = 0xD00000000000005FLL;
    *(v14 + 40) = 0x8000000100018210;
    print(_:separator:terminator:)();
  }

  v15 = *(v0 + 736);
  v16 = *(v0 + 728);
  v17 = *(v0 + 720);
  AvailabilityModel.status.getter();
  v18 = (*(v16 + 88))(v15, v17);
  if (v18 == enum case for AvailabilityStatus.unavailable(_:))
  {
    v19 = *(v0 + 736);
    (*(*(v0 + 728) + 96))(v19, *(v0 + 720));
    v20 = *v19;
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_100016960;
    v22._countAndFlagsBits = sub_1000076CC(v20);
    String.append(_:)(v22);

    v23 = 0x8000000100018270;
    *(v21 + 56) = &type metadata for String;
    *(v21 + 32) = 0xD00000000000001BLL;
  }

  else
  {
    if (v18 == enum case for AvailabilityStatus.available(_:))
    {
      v24 = swift_allocObject();
      v21 = v24;
      *(v24 + 16) = xmmword_100016960;
      v23 = 0x80000001000184E0;
      *(v24 + 56) = &type metadata for String;
      v25 = 0xD00000000000001FLL;
    }

    else
    {
      if (v18 != enum case for AvailabilityStatus.limited(_:))
      {
        v42 = *(v0 + 720);
        v43 = v42;

        return _diagnoseUnexpectedEnumCase<A>(type:)(v42, v43);
      }

      v24 = swift_allocObject();
      v21 = v24;
      *(v24 + 16) = xmmword_100016960;
      v23 = 0x80000001000184B0;
      *(v24 + 56) = &type metadata for String;
      v25 = 0xD000000000000020;
    }

    *(v24 + 32) = v25;
  }

  v26 = *(v0 + 864);
  *(v21 + 40) = v23;
  print(_:separator:terminator:)();

  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_100016960;
  v28._countAndFlagsBits = 0xD000000000000013;
  v28._object = 0x8000000100018290;
  String.append(_:)(v28);
  *(v27 + 56) = &type metadata for String;
  *(v27 + 32) = 2106122;
  *(v27 + 40) = 0xE300000000000000;
  print(_:separator:terminator:)();

  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_100016960;
  type metadata accessor for GMOptIn();
  v30 = static GMOptIn.shared.getter();
  v31 = dispatch thunk of GMOptIn.isOptedIn.getter();

  if (v31)
  {
    v32 = 1702195828;
  }

  else
  {
    v32 = 0x65736C6166;
  }

  if (v31)
  {
    v33 = 0xE400000000000000;
  }

  else
  {
    v33 = 0xE500000000000000;
  }

  v34 = v33;
  String.append(_:)(*&v32);

  *(v29 + 56) = &type metadata for String;
  *(v29 + 32) = 0xD00000000000001ALL;
  *(v29 + 40) = 0x80000001000182B0;
  print(_:separator:terminator:)();

  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_100016960;
  v36._countAndFlagsBits = 0xD00000000000001ELL;
  v36._object = 0x80000001000182D0;
  String.append(_:)(v36);
  *(v35 + 56) = &type metadata for String;
  *(v35 + 32) = 2106122;
  *(v35 + 40) = 0xE300000000000000;
  print(_:separator:terminator:)();

  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_100016960;
  *(v37 + 56) = &type metadata for String;
  *(v37 + 32) = 0xD000000000000047;
  *(v37 + 40) = 0x80000001000182F0;
  print(_:separator:terminator:)();

  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_100016960;
  *(v38 + 56) = &type metadata for String;
  *(v38 + 32) = 0xD000000000000046;
  *(v38 + 40) = 0x8000000100018340;
  print(_:separator:terminator:)();

  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_100016960;
  *(v39 + 56) = &type metadata for String;
  *(v39 + 32) = 0xD000000000000048;
  *(v39 + 40) = 0x8000000100018390;
  print(_:separator:terminator:)();

  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_100016960;
  v41._countAndFlagsBits = 0x634120656C707041;
  v41._object = 0xED0000746E756F63;
  String.append(_:)(v41);
  *(v40 + 56) = &type metadata for String;
  *(v40 + 32) = 2106122;
  *(v40 + 40) = 0xE300000000000000;
  print(_:separator:terminator:)();

  v42 = [v26 defaultStore];
  *(v0 + 1048) = v42;
  if (!v42)
  {
    __break(1u);
    return _diagnoseUnexpectedEnumCase<A>(type:)(v42, v43);
  }

  v44 = v42;
  v45 = *(v0 + 880);
  *(v0 + 144) = v0;
  *(v0 + 184) = v0 + 672;
  *(v0 + 152) = sub_10000BD84;
  v46 = swift_continuation_init();
  *(v0 + 520) = v45;
  *(v0 + 464) = _NSConcreteStackBlock;
  *(v0 + 472) = 1107296256;
  *(v0 + 480) = sub_100015B84;
  *(v0 + 488) = &unk_10001CB70;
  *(v0 + 496) = v46;
  [v44 aa_primaryAppleAccountWithCompletion:v0 + 464];

  return _swift_continuation_await(v0 + 144);
}

uint64_t sub_10000B5CC()
{

  return _swift_task_switch(sub_10000B6E4, 0, 0);
}

uint64_t sub_10000B6E4()
{
  Option.wrappedValue.getter();
  if ((*(v0 + 1080) & 1) == 0)
  {
    v1 = swift_allocObject();
    *(v1 + 16) = xmmword_100016960;
    *(v1 + 56) = &type metadata for String;
    *(v1 + 32) = 0xD00000000000005FLL;
    *(v1 + 40) = 0x8000000100018210;
    print(_:separator:terminator:)();
  }

  v2 = *(v0 + 736);
  v3 = *(v0 + 728);
  v4 = *(v0 + 720);
  AvailabilityModel.status.getter();
  v5 = (*(v3 + 88))(v2, v4);
  if (v5 == enum case for AvailabilityStatus.unavailable(_:))
  {
    v6 = *(v0 + 736);
    (*(*(v0 + 728) + 96))(v6, *(v0 + 720));
    v7 = *v6;
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_100016960;
    v9._countAndFlagsBits = sub_1000076CC(v7);
    String.append(_:)(v9);

    v10 = 0x8000000100018270;
    *(v8 + 56) = &type metadata for String;
    *(v8 + 32) = 0xD00000000000001BLL;
  }

  else
  {
    if (v5 == enum case for AvailabilityStatus.available(_:))
    {
      v11 = swift_allocObject();
      v8 = v11;
      *(v11 + 16) = xmmword_100016960;
      v10 = 0x80000001000184E0;
      *(v11 + 56) = &type metadata for String;
      v12 = 0xD00000000000001FLL;
    }

    else
    {
      if (v5 != enum case for AvailabilityStatus.limited(_:))
      {
        v29 = *(v0 + 720);
        v30 = v29;

        return _diagnoseUnexpectedEnumCase<A>(type:)(v29, v30);
      }

      v11 = swift_allocObject();
      v8 = v11;
      *(v11 + 16) = xmmword_100016960;
      v10 = 0x80000001000184B0;
      *(v11 + 56) = &type metadata for String;
      v12 = 0xD000000000000020;
    }

    *(v11 + 32) = v12;
  }

  v13 = *(v0 + 864);
  *(v8 + 40) = v10;
  print(_:separator:terminator:)();

  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_100016960;
  v15._object = 0x8000000100018290;
  v15._countAndFlagsBits = 0xD000000000000013;
  String.append(_:)(v15);
  *(v14 + 56) = &type metadata for String;
  *(v14 + 32) = 2106122;
  *(v14 + 40) = 0xE300000000000000;
  print(_:separator:terminator:)();

  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_100016960;
  type metadata accessor for GMOptIn();
  v17 = static GMOptIn.shared.getter();
  v18 = dispatch thunk of GMOptIn.isOptedIn.getter();

  if (v18)
  {
    v19 = 1702195828;
  }

  else
  {
    v19 = 0x65736C6166;
  }

  if (v18)
  {
    v20 = 0xE400000000000000;
  }

  else
  {
    v20 = 0xE500000000000000;
  }

  v21 = v20;
  String.append(_:)(*&v19);

  *(v16 + 56) = &type metadata for String;
  *(v16 + 32) = 0xD00000000000001ALL;
  *(v16 + 40) = 0x80000001000182B0;
  print(_:separator:terminator:)();

  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_100016960;
  v23._countAndFlagsBits = 0xD00000000000001ELL;
  v23._object = 0x80000001000182D0;
  String.append(_:)(v23);
  *(v22 + 56) = &type metadata for String;
  *(v22 + 32) = 2106122;
  *(v22 + 40) = 0xE300000000000000;
  print(_:separator:terminator:)();

  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_100016960;
  *(v24 + 56) = &type metadata for String;
  *(v24 + 32) = 0xD000000000000047;
  *(v24 + 40) = 0x80000001000182F0;
  print(_:separator:terminator:)();

  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_100016960;
  *(v25 + 56) = &type metadata for String;
  *(v25 + 32) = 0xD000000000000046;
  *(v25 + 40) = 0x8000000100018340;
  print(_:separator:terminator:)();

  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_100016960;
  *(v26 + 56) = &type metadata for String;
  *(v26 + 32) = 0xD000000000000048;
  *(v26 + 40) = 0x8000000100018390;
  print(_:separator:terminator:)();

  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_100016960;
  v28._countAndFlagsBits = 0x634120656C707041;
  v28._object = 0xED0000746E756F63;
  String.append(_:)(v28);
  *(v27 + 56) = &type metadata for String;
  *(v27 + 32) = 2106122;
  *(v27 + 40) = 0xE300000000000000;
  print(_:separator:terminator:)();

  v29 = [v13 defaultStore];
  *(v0 + 1048) = v29;
  if (!v29)
  {
    __break(1u);
    return _diagnoseUnexpectedEnumCase<A>(type:)(v29, v30);
  }

  v31 = v29;
  v32 = *(v0 + 880);
  *(v0 + 144) = v0;
  *(v0 + 184) = v0 + 672;
  *(v0 + 152) = sub_10000BD84;
  v33 = swift_continuation_init();
  *(v0 + 520) = v32;
  *(v0 + 464) = _NSConcreteStackBlock;
  *(v0 + 472) = 1107296256;
  *(v0 + 480) = sub_100015B84;
  *(v0 + 488) = &unk_10001CB70;
  *(v0 + 496) = v33;
  [v31 aa_primaryAppleAccountWithCompletion:v0 + 464];

  return _swift_continuation_await(v0 + 144);
}

uint64_t sub_10000BD84()
{
  v1 = *(*v0 + 176);
  *(*v0 + 1056) = v1;
  if (v1)
  {
    v2 = sub_10000E2E4;
  }

  else
  {
    v2 = sub_10000BE94;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10000BE94()
{
  v1 = *(v0 + 672);

  if (v1)
  {
    if (*(v0 + 1082) == 1)
    {
      sub_100001B98(&qword_1000201D0, &qword_100016AF0);
      v2 = swift_allocObject();
      v2[4] = 1701667182;
      v2[5] = 0xE400000000000000;
      v3 = [v1 aa_fullName];
      if (v3)
      {
        v4 = v3;
        v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v7 = v6;
      }

      else
      {
        v5 = 0;
        v7 = 0;
      }

      v2[6] = v5;
      v2[7] = v7;
      v2[8] = 0x6C69616D65;
      v2[9] = 0xE500000000000000;
      v10 = [v1 aa_primaryEmail];
      if (v10)
      {
        v11 = v10;
        v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v14 = v13;
      }

      else
      {
        v12 = 0;
        v14 = 0;
      }

      v2[10] = v12;
      v2[11] = v14;
      v2[12] = 0x44495344746C61;
      v2[13] = 0xE700000000000000;
      v15 = [v1 aa_altDSID];
      if (v15)
      {
        v16 = v15;
        v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v19 = v18;
      }

      else
      {
        v17 = 0;
        v19 = 0;
      }

      v2[14] = v17;
      v2[15] = v19;
      v2[16] = 1684632420;
      v2[17] = 0xE400000000000000;
      v20 = [v1 aa_personID];
      if (v20)
      {
        v21 = v20;
        v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v24 = v23;
      }

      else
      {
        v22 = 0;
        v24 = 0;
      }

      v2[18] = v22;
      v2[19] = v24;
      sub_1000106FC(0, 4, 0);
      for (i = 0; i != 16; i += 4)
      {
        v26 = v2[i + 4];
        v27 = v2[i + 5];
        v29 = v2[i + 6];
        v28 = v2[i + 7];

        v30._countAndFlagsBits = v26;
        v30._object = v27;
        String.append(_:)(v30);
        v31._countAndFlagsBits = 8250;
        v31._object = 0xE200000000000000;
        String.append(_:)(v31);
        if (v28)
        {
          v32 = v29;
        }

        else
        {
          v32 = 0x3E6C696E3CLL;
        }

        if (v28)
        {
          v33 = v28;
        }

        else
        {
          v33 = 0xE500000000000000;
        }

        v34._countAndFlagsBits = v32;
        v34._object = v33;
        String.append(_:)(v34);

        v36 = _swiftEmptyArrayStorage[2];
        v35 = _swiftEmptyArrayStorage[3];
        if (v36 >= v35 >> 1)
        {
          sub_1000106FC((v35 > 1), v36 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v36 + 1;
        v37 = &_swiftEmptyArrayStorage[2 * v36];
        v37[4] = 8237;
        v37[5] = 0xE200000000000000;
      }

      swift_setDeallocating();
      sub_100001B98(&qword_1000201D8, &qword_100016AF8);
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v38 = swift_allocObject();
      *(v38 + 16) = xmmword_100016960;
      *(v0 + 696) = _swiftEmptyArrayStorage;
      v39 = BidirectionalCollection<>.joined(separator:)();
      v41 = v40;

      v42._countAndFlagsBits = v39;
      v42._object = v41;
      String.append(_:)(v42);

      *(v38 + 56) = &type metadata for String;
      *(v38 + 32) = 0xD000000000000030;
      *(v38 + 40) = 0x8000000100018470;
      print(_:separator:terminator:)();
    }

    else
    {
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_100016960;
      *(v9 + 56) = &type metadata for String;
      *(v9 + 32) = 0xD000000000000015;
      *(v9 + 40) = 0x8000000100018450;
      print(_:separator:terminator:)();
    }
  }

  else
  {
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_100016960;
    *(v8 + 56) = &type metadata for String;
    *(v8 + 32) = 0xD000000000000018;
    *(v8 + 40) = 0x8000000100018430;
    print(_:separator:terminator:)();
  }

  v43 = *(v0 + 1081);
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_100016960;
  v45._countAndFlagsBits = 0x44206C6961746552;
  v45._object = 0xEB000000006F6D65;
  String.append(_:)(v45);
  *(v44 + 56) = &type metadata for String;
  *(v44 + 32) = 2106122;
  *(v44 + 40) = 0xE300000000000000;
  print(_:separator:terminator:)();

  type metadata accessor for SystemProperties();
  static SystemProperties.shared.getter();
  v46 = dispatch thunk of SystemProperties.isRetailDevice.getter();

  v47 = swift_allocObject();
  *(v47 + 16) = xmmword_100016960;
  if (v46)
  {
    v48 = 1702195828;
  }

  else
  {
    v48 = 0x65736C6166;
  }

  if (v46)
  {
    v49 = 0xE400000000000000;
  }

  else
  {
    v49 = 0xE500000000000000;
  }

  v50 = v49;
  String.append(_:)(*&v48);

  *(v47 + 56) = &type metadata for String;
  *(v47 + 32) = 0xD000000000000016;
  *(v47 + 40) = 0x8000000100018410;
  print(_:separator:terminator:)();

  v51 = *(v0 + 968);
  if (v43 == 2)
  {
    v52 = *(v0 + 896);
    (*(*(v0 + 752) + 8))(*(v0 + 760), *(v0 + 744));
  }

  else
  {
    v53 = *(v0 + 896);
    v54 = *(v0 + 760);
    v55 = *(v0 + 752);
    v56 = *(v0 + 744);
    static GMAssetsBypass.setGMEligibilityBypass(_:)();

    (*(v55 + 8))(v54, v56);
  }

  v57 = *(v0 + 8);

  return v57();
}

uint64_t sub_10000C594()
{
  v1 = *(v0 + 872);
  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10000C668()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10000C740()
{
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_100016960;
  swift_getErrorValue();
  v2._countAndFlagsBits = Error.localizedDescription.getter();
  String.append(_:)(v2);

  *(v1 + 56) = &type metadata for String;
  *(v1 + 32) = 0xD000000000000022;
  *(v1 + 40) = 0x80000001000186D0;
  print(_:separator:terminator:)();

  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100016960;
  *(v3 + 56) = &type metadata for String;
  *(v3 + 32) = 0xD00000000000001ALL;
  *(v3 + 40) = 0x8000000100018040;
  print(_:separator:terminator:)();
  v0[121] = 0;

  type metadata accessor for FeatureCache();
  static FeatureCache.shared.getter();
  v4 = FeatureCache.persistentDomain.getter();

  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100016960;
  if (v4)
  {
    v6._countAndFlagsBits = Dictionary.Keys.description.getter();
    String.append(_:)(v6);

    v7 = 0x8000000100018640;
    *(v5 + 56) = &type metadata for String;
    *(v5 + 32) = 0xD000000000000026;
  }

  else
  {
    v7 = 0x8000000100018060;
    *(v5 + 56) = &type metadata for String;
    *(v5 + 32) = 0xD00000000000001BLL;
  }

  *(v5 + 40) = v7;
  print(_:separator:terminator:)();

  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100016960;
  v9._object = 0x8000000100018080;
  v9._countAndFlagsBits = 0xD000000000000017;
  String.append(_:)(v9);
  *(v8 + 56) = &type metadata for String;
  *(v8 + 32) = 2106122;
  *(v8 + 40) = 0xE300000000000000;
  print(_:separator:terminator:)();

  v10 = objc_opt_self();
  v0[122] = v10;
  v11 = String._bridgeToObjectiveC()();
  v0[123] = v11;
  v0[26] = v0;
  v0[31] = v0 + 79;
  v0[27] = sub_100009BF0;
  v12 = swift_continuation_init();
  v0[41] = sub_100001B98(&qword_1000201B0, &qword_100016AD8);
  v0[34] = _NSConcreteStackBlock;
  v0[35] = 1107296256;
  v0[36] = sub_100015B84;
  v0[37] = &unk_10001CB48;
  v0[38] = v12;
  [v10 getTicketStatusFromCacheForFeature:v11 completionHandler:v0 + 34];

  return _swift_continuation_await(v0 + 26);
}

uint64_t sub_10000CB34()
{
  v89 = v0;
  v1 = *(v0 + 984);
  swift_willThrow();

  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100016960;
  v87 = 0xD000000000000021;
  v88 = 0x80000001000180F0;
  swift_getErrorValue();
  v3._countAndFlagsBits = Error.localizedDescription.getter();
  String.append(_:)(v3);

  *(v2 + 56) = &type metadata for String;
  *(v2 + 32) = 0xD000000000000021;
  *(v2 + 40) = 0x80000001000180F0;
  print(_:separator:terminator:)();

  v4 = *(v0 + 896);
  v83 = swift_allocObject();
  *(v83 + 16) = xmmword_100016960;
  strcpy(v85, "All tickets:\n");
  HIWORD(v85[1]) = -4864;
  type metadata accessor for TicketCache();
  static TicketCache.shared.getter();
  if (v4)
  {
    v5 = [*(v0 + 896) aa_altDSID];
    if (v5)
    {
      v6 = v5;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }
  }

  v7 = TicketCache.allTickets(forDSID:)();

  v8 = *(v7 + 16);
  if (v8)
  {
    v86 = _swiftEmptyArrayStorage;
    sub_1000106FC(0, v8, 0);
    v9 = _swiftEmptyArrayStorage;
    v10 = (v7 + 48);
    do
    {
      v12 = *(v10 - 2);
      v11 = *(v10 - 1);
      v13 = *v10;
      v87 = 8237;
      v88 = 0xE200000000000000;

      v14 = v13;
      v15._countAndFlagsBits = v12;
      v15._object = v11;
      String.append(_:)(v15);
      v16._countAndFlagsBits = 8250;
      v16._object = 0xE200000000000000;
      String.append(_:)(v16);
      v17 = [v14 description];
      v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v20 = v19;

      v21._countAndFlagsBits = v18;
      v21._object = v20;
      String.append(_:)(v21);

      v86 = v9;
      v23 = v9[2];
      v22 = v9[3];
      if (v23 >= v22 >> 1)
      {
        sub_1000106FC((v22 > 1), v23 + 1, 1);
        v9 = v86;
      }

      v9[2] = v23 + 1;
      v24 = &v9[2 * v23];
      v24[4] = 8237;
      v24[5] = 0xE200000000000000;
      v10 += 3;
      --v8;
    }

    while (v8);
  }

  else
  {

    v9 = _swiftEmptyArrayStorage;
  }

  *(v0 + 640) = v9;
  *(v0 + 1000) = sub_100001B98(&qword_1000201B8, &qword_100016AE0);
  *(v0 + 1008) = sub_100011794(&qword_1000201C0, &qword_1000201B8, &qword_100016AE0, &protocol conformance descriptor for [A]);
  v25 = BidirectionalCollection<>.joined(separator:)();
  v27 = v26;

  v28._countAndFlagsBits = v25;
  v28._object = v27;
  String.append(_:)(v28);
  v29 = v0;

  v30 = v85[0];
  v31 = v85[1];
  *(v83 + 56) = &type metadata for String;
  *(v83 + 32) = v30;
  *(v83 + 40) = v31;
  print(_:separator:terminator:)();

  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_100016960;
  v87 = 2106122;
  v88 = 0xE300000000000000;
  v33._countAndFlagsBits = 0xD000000000000018;
  v33._object = 0x8000000100018120;
  String.append(_:)(v33);
  *(v32 + 56) = &type metadata for String;
  *(v32 + 32) = 2106122;
  *(v32 + 40) = 0xE300000000000000;
  print(_:separator:terminator:)();

  Option.wrappedValue.getter();
  if (*(v0 + 1075))
  {
    v34 = *(v0 + 976);
    v35 = String._bridgeToObjectiveC()();
    *(v0 + 1016) = v35;
    *(v0 + 80) = v0;
    *(v0 + 120) = v0 + 688;
    *(v0 + 88) = sub_10000AB64;
    v36 = swift_continuation_init();
    *(v0 + 456) = sub_100001B98(&qword_1000201E0, &qword_100016B00);
    *(v0 + 400) = _NSConcreteStackBlock;
    *(v0 + 408) = 1107296256;
    *(v0 + 416) = sub_10000E91C;
    *(v0 + 424) = &unk_10001CB98;
    *(v0 + 432) = v36;
    [v34 getTicketStatusForFeature:v35 completionHandler:v0 + 400];
    v37 = (v0 + 80);
LABEL_34:

    return _swift_continuation_await(v37);
  }

  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_100016960;
  *(v38 + 56) = &type metadata for String;
  *(v38 + 32) = 0xD000000000000055;
  *(v38 + 40) = 0x8000000100018140;
  print(_:separator:terminator:)();

  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_100016960;
  v87 = 2106122;
  v88 = 0xE300000000000000;
  v40._object = 0x80000001000181A0;
  v40._countAndFlagsBits = 0xD000000000000011;
  String.append(_:)(v40);
  *(v39 + 56) = &type metadata for String;
  *(v39 + 32) = 2106122;
  *(v39 + 40) = 0xE300000000000000;
  print(_:separator:terminator:)();

  Option.wrappedValue.getter();
  v41 = *(v0 + 1074);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_100016960;
  *(v42 + 56) = &type metadata for String;
  if (v41 != 1)
  {
    *(v42 + 32) = 0xD000000000000045;
    *(v42 + 40) = 0x80000001000181C0;
    print(_:separator:terminator:)();

    type metadata accessor for AvailabilityManager();
    static AvailabilityManager.shared.getter();
    dispatch thunk of AvailabilityManager.cached()();

    Option.wrappedValue.getter();
    if ((*(v0 + 1080) & 1) == 0)
    {
      v46 = swift_allocObject();
      *(v46 + 16) = xmmword_100016960;
      *(v46 + 56) = &type metadata for String;
      *(v46 + 32) = 0xD00000000000005FLL;
      *(v46 + 40) = 0x8000000100018210;
      print(_:separator:terminator:)();
    }

    v47 = *(v0 + 736);
    v48 = *(v0 + 728);
    v49 = v29[90];
    AvailabilityModel.status.getter();
    v50 = (*(v48 + 88))(v47, v49);
    if (v50 == enum case for AvailabilityStatus.unavailable(_:))
    {
      v51 = v29[92];
      (*(v29[91] + 96))(v51, v29[90]);
      v52 = *v51;
      v53 = swift_allocObject();
      *(v53 + 16) = xmmword_100016960;
      v87 = 0xD00000000000001BLL;
      v88 = 0x8000000100018270;
      v54._countAndFlagsBits = sub_1000076CC(v52);
      String.append(_:)(v54);

      v55 = 0x8000000100018270;
      *(v53 + 56) = &type metadata for String;
      *(v53 + 32) = 0xD00000000000001BLL;
    }

    else
    {
      if (v50 == enum case for AvailabilityStatus.available(_:))
      {
        v56 = swift_allocObject();
        v53 = v56;
        *(v56 + 16) = xmmword_100016960;
        v55 = 0x80000001000184E0;
        *(v56 + 56) = &type metadata for String;
        v57 = 0xD00000000000001FLL;
      }

      else
      {
        if (v50 != enum case for AvailabilityStatus.limited(_:))
        {
          v78 = v29[90];
          v79 = v78;

          return _diagnoseUnexpectedEnumCase<A>(type:)(v78, v79);
        }

        v56 = swift_allocObject();
        v53 = v56;
        *(v56 + 16) = xmmword_100016960;
        v55 = 0x80000001000184B0;
        *(v56 + 56) = &type metadata for String;
        v57 = 0xD000000000000020;
      }

      *(v56 + 32) = v57;
    }

    v58 = v29[108];
    *(v53 + 40) = v55;
    print(_:separator:terminator:)();

    v59 = swift_allocObject();
    *(v59 + 16) = xmmword_100016960;
    v60._countAndFlagsBits = 0xD000000000000013;
    v60._object = 0x8000000100018290;
    String.append(_:)(v60);
    *(v59 + 56) = &type metadata for String;
    *(v59 + 32) = 2106122;
    *(v59 + 40) = 0xE300000000000000;
    print(_:separator:terminator:)();

    v61 = swift_allocObject();
    *(v61 + 16) = xmmword_100016960;
    v87 = 0xD00000000000001ALL;
    v88 = 0x80000001000182B0;
    type metadata accessor for GMOptIn();
    v62 = static GMOptIn.shared.getter();
    v63 = dispatch thunk of GMOptIn.isOptedIn.getter();

    if (v63)
    {
      v64 = 1702195828;
    }

    else
    {
      v64 = 0x65736C6166;
    }

    if (v63)
    {
      v65 = 0xE400000000000000;
    }

    else
    {
      v65 = 0xE500000000000000;
    }

    v66 = v65;
    String.append(_:)(*&v64);

    v67 = v87;
    v68 = v88;
    *(v61 + 56) = &type metadata for String;
    *(v61 + 32) = v67;
    *(v61 + 40) = v68;
    print(_:separator:terminator:)();

    v69 = swift_allocObject();
    *(v69 + 16) = xmmword_100016960;
    v70._countAndFlagsBits = 0xD00000000000001ELL;
    v70._object = 0x80000001000182D0;
    String.append(_:)(v70);
    *(v69 + 56) = &type metadata for String;
    *(v69 + 32) = 2106122;
    *(v69 + 40) = 0xE300000000000000;
    print(_:separator:terminator:)();

    v71 = swift_allocObject();
    *(v71 + 16) = xmmword_100016960;
    *(v71 + 56) = &type metadata for String;
    *(v71 + 32) = 0xD000000000000047;
    *(v71 + 40) = 0x80000001000182F0;
    print(_:separator:terminator:)();

    v72 = swift_allocObject();
    *(v72 + 16) = xmmword_100016960;
    *(v72 + 56) = &type metadata for String;
    *(v72 + 32) = 0xD000000000000046;
    *(v72 + 40) = 0x8000000100018340;
    print(_:separator:terminator:)();

    v73 = swift_allocObject();
    *(v73 + 16) = xmmword_100016960;
    *(v73 + 56) = &type metadata for String;
    *(v73 + 32) = 0xD000000000000048;
    *(v73 + 40) = 0x8000000100018390;
    print(_:separator:terminator:)();

    v74 = swift_allocObject();
    *(v74 + 16) = xmmword_100016960;
    v87 = 2106122;
    v88 = 0xE300000000000000;
    v75._countAndFlagsBits = 0x634120656C707041;
    v75._object = 0xED0000746E756F63;
    String.append(_:)(v75);
    v76 = v87;
    v77 = v88;
    *(v74 + 56) = &type metadata for String;
    *(v74 + 32) = v76;
    *(v74 + 40) = v77;
    print(_:separator:terminator:)();

    v78 = [v58 defaultStore];
    v29[131] = v78;
    if (v78)
    {
      v80 = v78;
      v81 = v29[110];
      v29[18] = v29;
      v29[23] = v29 + 84;
      v29[19] = sub_10000BD84;
      v82 = swift_continuation_init();
      v29[65] = v81;
      v29[58] = _NSConcreteStackBlock;
      v29[59] = 1107296256;
      v29[60] = sub_100015B84;
      v29[61] = &unk_10001CB70;
      v29[62] = v82;
      [v80 aa_primaryAppleAccountWithCompletion:v29 + 58];
      v37 = v29 + 18;
      goto LABEL_34;
    }

    __break(1u);
    return _diagnoseUnexpectedEnumCase<A>(type:)(v78, v79);
  }

  *(v42 + 32) = 0xD000000000000054;
  *(v42 + 40) = 0x8000000100018500;
  print(_:separator:terminator:)();

  type metadata accessor for AvailabilityManager();
  *(v0 + 1032) = static AvailabilityManager.shared.getter();
  v84 = (&async function pointer to dispatch thunk of AvailabilityManager.fetch() + async function pointer to dispatch thunk of AvailabilityManager.fetch());
  v43 = swift_task_alloc();
  *(v0 + 1040) = v43;
  *v43 = v0;
  v43[1] = sub_10000B5CC;
  v44 = *(v0 + 760);

  return v84(v44);
}

uint64_t sub_10000D960()
{
  v1 = *(v0 + 1016);
  swift_willThrow();

  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100016960;
  _StringGuts.grow(_:)(56);
  v3._countAndFlagsBits = 0xD000000000000036;
  v3._object = 0x8000000100018560;
  String.append(_:)(v3);
  swift_getErrorValue();
  v4._countAndFlagsBits = Error.localizedDescription.getter();
  String.append(_:)(v4);

  *(v2 + 56) = &type metadata for String;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0xE000000000000000;
  print(_:separator:terminator:)();

  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100016960;
  v6._object = 0x80000001000181A0;
  v6._countAndFlagsBits = 0xD000000000000011;
  String.append(_:)(v6);
  *(v5 + 56) = &type metadata for String;
  *(v5 + 32) = 2106122;
  *(v5 + 40) = 0xE300000000000000;
  print(_:separator:terminator:)();

  Option.wrappedValue.getter();
  v7 = *(v0 + 1074);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100016960;
  *(v8 + 56) = &type metadata for String;
  if (v7 == 1)
  {
    *(v8 + 32) = 0xD000000000000054;
    *(v8 + 40) = 0x8000000100018500;
    print(_:separator:terminator:)();

    type metadata accessor for AvailabilityManager();
    *(v0 + 1032) = static AvailabilityManager.shared.getter();
    v45 = (&async function pointer to dispatch thunk of AvailabilityManager.fetch() + async function pointer to dispatch thunk of AvailabilityManager.fetch());
    v9 = swift_task_alloc();
    *(v0 + 1040) = v9;
    *v9 = v0;
    v9[1] = sub_10000B5CC;
    v10 = *(v0 + 760);

    return v45(v10);
  }

  *(v8 + 32) = 0xD000000000000045;
  *(v8 + 40) = 0x80000001000181C0;
  print(_:separator:terminator:)();

  type metadata accessor for AvailabilityManager();
  static AvailabilityManager.shared.getter();
  dispatch thunk of AvailabilityManager.cached()();

  Option.wrappedValue.getter();
  if ((*(v0 + 1080) & 1) == 0)
  {
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_100016960;
    *(v12 + 56) = &type metadata for String;
    *(v12 + 32) = 0xD00000000000005FLL;
    *(v12 + 40) = 0x8000000100018210;
    print(_:separator:terminator:)();
  }

  v13 = *(v0 + 736);
  v14 = *(v0 + 728);
  v15 = *(v0 + 720);
  AvailabilityModel.status.getter();
  v16 = (*(v14 + 88))(v13, v15);
  if (v16 == enum case for AvailabilityStatus.unavailable(_:))
  {
    v17 = *(v0 + 736);
    (*(*(v0 + 728) + 96))(v17, *(v0 + 720));
    v18 = *v17;
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_100016960;
    v20._countAndFlagsBits = sub_1000076CC(v18);
    String.append(_:)(v20);

    v21 = 0x8000000100018270;
    *(v19 + 56) = &type metadata for String;
    *(v19 + 32) = 0xD00000000000001BLL;
  }

  else
  {
    if (v16 == enum case for AvailabilityStatus.available(_:))
    {
      v22 = swift_allocObject();
      v19 = v22;
      *(v22 + 16) = xmmword_100016960;
      v21 = 0x80000001000184E0;
      *(v22 + 56) = &type metadata for String;
      v23 = 0xD00000000000001FLL;
    }

    else
    {
      if (v16 != enum case for AvailabilityStatus.limited(_:))
      {
        v40 = *(v0 + 720);
        v41 = v40;

        return _diagnoseUnexpectedEnumCase<A>(type:)(v40, v41);
      }

      v22 = swift_allocObject();
      v19 = v22;
      *(v22 + 16) = xmmword_100016960;
      v21 = 0x80000001000184B0;
      *(v22 + 56) = &type metadata for String;
      v23 = 0xD000000000000020;
    }

    *(v22 + 32) = v23;
  }

  v24 = *(v0 + 864);
  *(v19 + 40) = v21;
  print(_:separator:terminator:)();

  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_100016960;
  v26._countAndFlagsBits = 0xD000000000000013;
  v26._object = 0x8000000100018290;
  String.append(_:)(v26);
  *(v25 + 56) = &type metadata for String;
  *(v25 + 32) = 2106122;
  *(v25 + 40) = 0xE300000000000000;
  print(_:separator:terminator:)();

  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_100016960;
  type metadata accessor for GMOptIn();
  v28 = static GMOptIn.shared.getter();
  v29 = dispatch thunk of GMOptIn.isOptedIn.getter();

  if (v29)
  {
    v30 = 1702195828;
  }

  else
  {
    v30 = 0x65736C6166;
  }

  if (v29)
  {
    v31 = 0xE400000000000000;
  }

  else
  {
    v31 = 0xE500000000000000;
  }

  v32 = v31;
  String.append(_:)(*&v30);

  *(v27 + 56) = &type metadata for String;
  *(v27 + 32) = 0xD00000000000001ALL;
  *(v27 + 40) = 0x80000001000182B0;
  print(_:separator:terminator:)();

  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_100016960;
  v34._countAndFlagsBits = 0xD00000000000001ELL;
  v34._object = 0x80000001000182D0;
  String.append(_:)(v34);
  *(v33 + 56) = &type metadata for String;
  *(v33 + 32) = 2106122;
  *(v33 + 40) = 0xE300000000000000;
  print(_:separator:terminator:)();

  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_100016960;
  *(v35 + 56) = &type metadata for String;
  *(v35 + 32) = 0xD000000000000047;
  *(v35 + 40) = 0x80000001000182F0;
  print(_:separator:terminator:)();

  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_100016960;
  *(v36 + 56) = &type metadata for String;
  *(v36 + 32) = 0xD000000000000046;
  *(v36 + 40) = 0x8000000100018340;
  print(_:separator:terminator:)();

  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_100016960;
  *(v37 + 56) = &type metadata for String;
  *(v37 + 32) = 0xD000000000000048;
  *(v37 + 40) = 0x8000000100018390;
  print(_:separator:terminator:)();

  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_100016960;
  v39._countAndFlagsBits = 0x634120656C707041;
  v39._object = 0xED0000746E756F63;
  String.append(_:)(v39);
  *(v38 + 56) = &type metadata for String;
  *(v38 + 32) = 2106122;
  *(v38 + 40) = 0xE300000000000000;
  print(_:separator:terminator:)();

  v40 = [v24 defaultStore];
  *(v0 + 1048) = v40;
  if (!v40)
  {
    __break(1u);
    return _diagnoseUnexpectedEnumCase<A>(type:)(v40, v41);
  }

  v42 = v40;
  v43 = *(v0 + 880);
  *(v0 + 144) = v0;
  *(v0 + 184) = v0 + 672;
  *(v0 + 152) = sub_10000BD84;
  v44 = swift_continuation_init();
  *(v0 + 520) = v43;
  *(v0 + 464) = _NSConcreteStackBlock;
  *(v0 + 472) = 1107296256;
  *(v0 + 480) = sub_100015B84;
  *(v0 + 488) = &unk_10001CB70;
  *(v0 + 496) = v44;
  [v42 aa_primaryAppleAccountWithCompletion:v0 + 464];

  return _swift_continuation_await(v0 + 144);
}

uint64_t sub_10000E2E4()
{
  v1 = *(v0 + 1056);
  v2 = *(v0 + 1048);
  swift_willThrow();

  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100016960;
  _StringGuts.grow(_:)(36);
  *(v0 + 600) = 0;
  *(v0 + 608) = 0xE000000000000000;
  v4._countAndFlagsBits = 0xD000000000000022;
  v4._object = 0x80000001000183E0;
  String.append(_:)(v4);
  *(v0 + 624) = v1;
  sub_100001B98(&qword_1000201C8, &qword_100016AE8);
  _print_unlocked<A, B>(_:_:)();
  v5 = *(v0 + 600);
  v6 = *(v0 + 608);
  *(v3 + 56) = &type metadata for String;
  *(v3 + 32) = v5;
  *(v3 + 40) = v6;
  print(_:separator:terminator:)();

  v7 = *(v0 + 1081);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100016960;
  v9._countAndFlagsBits = 0x44206C6961746552;
  v9._object = 0xEB000000006F6D65;
  String.append(_:)(v9);
  *(v8 + 56) = &type metadata for String;
  *(v8 + 32) = 2106122;
  *(v8 + 40) = 0xE300000000000000;
  print(_:separator:terminator:)();

  type metadata accessor for SystemProperties();
  static SystemProperties.shared.getter();
  v10 = dispatch thunk of SystemProperties.isRetailDevice.getter();

  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_100016960;
  if (v10)
  {
    v12 = 1702195828;
  }

  else
  {
    v12 = 0x65736C6166;
  }

  if (v10)
  {
    v13 = 0xE400000000000000;
  }

  else
  {
    v13 = 0xE500000000000000;
  }

  v14 = v13;
  String.append(_:)(*&v12);

  *(v11 + 56) = &type metadata for String;
  *(v11 + 32) = 0xD000000000000016;
  *(v11 + 40) = 0x8000000100018410;
  print(_:separator:terminator:)();

  v15 = *(v0 + 968);
  if (v7 == 2)
  {
    v16 = *(v0 + 896);
    (*(*(v0 + 752) + 8))(*(v0 + 760), *(v0 + 744));
  }

  else
  {
    v17 = *(v0 + 896);
    v18 = *(v0 + 760);
    v19 = *(v0 + 752);
    v20 = *(v0 + 744);
    static GMAssetsBypass.setGMEligibilityBypass(_:)();

    (*(v19 + 8))(v18, v20);
  }

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_10000E658(uint64_t a1)
{
  v2 = sub_100001B98(&qword_1000202F0, &qword_100016B78);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v9 - v4;
  sub_100011480();
  (*(v3 + 16))(v5, a1, v2);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  (*(v3 + 32))(v7 + v6, v5, v2);
  static CSFFeatureManager.requestFeature(id:allowStale:completion:)();
}

uint64_t sub_10000E7C8(void *a1, char a2)
{
  if (a2)
  {
    swift_errorRetain();
    sub_100001B98(&qword_1000202F0, &qword_100016B78);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    v3 = a1;
    sub_100001B98(&qword_1000202F0, &qword_100016B78);
    return CheckedContinuation.resume(returning:)();
  }
}

uint64_t sub_10000E84C(uint64_t a1, void *a2, void *a3)
{
  v5 = *sub_100011650((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_100001B98(&qword_1000201C8, &qword_100016AE8);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;
    v9 = a2;

    return _swift_continuation_throwingResume(v5);
  }
}

uint64_t sub_10000E91C(uint64_t a1, void *a2, void *a3)
{
  v5 = sub_100011650((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    sub_100001B98(&qword_1000201C8, &qword_100016AE8);
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

uint64_t sub_10000E9F4@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for SingleValueParsingStrategy();
  __chkstk_darwin(v2 - 8);
  v3 = sub_100001B98(&qword_100020310, &qword_100016B90);
  __chkstk_darwin(v3 - 8);
  v5 = v16 - v4;
  v6 = sub_100001B98(&qword_100020318, &qword_100016B98);
  __chkstk_darwin(v6 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for NameSpecification();
  __chkstk_darwin(v9 - 8);
  v21 = 0;
  static NameSpecification.long.getter();
  ArgumentHelp.init(stringLiteral:)();
  v10 = type metadata accessor for ArgumentHelp();
  v19 = *(*(v10 - 8) + 56);
  v19(v8, 0, 1, v10);
  v11 = type metadata accessor for CompletionKind();
  v12 = *(v11 - 8);
  v17 = *(v12 + 56);
  v18 = v12 + 56;
  v17(v5, 1, 1, v11);
  static SingleValueParsingStrategy.next.getter();
  Option<A>.init(wrappedValue:name:parsing:help:completion:)();
  v13 = type metadata accessor for GMDiagnostics(0);
  *(a1 + v13[5]) = 0;
  *(a1 + v13[6]) = 0;
  v16[1] = v13[7];
  v20 = 1;
  static NameSpecification.long.getter();
  ArgumentHelp.init(stringLiteral:)();
  v14 = v19;
  v19(v8, 0, 1, v10);
  v17(v5, 1, 1, v11);
  static SingleValueParsingStrategy.next.getter();
  Option<A>.init(wrappedValue:name:parsing:help:completion:)();
  static NameSpecification.long.getter();
  v14(v8, 1, 1, v10);
  Flag<A>.init(wrappedValue:name:help:)();
  static NameSpecification.long.getter();
  v14(v8, 1, 1, v10);
  return Flag<A>.init(wrappedValue:name:help:)();
}

uint64_t sub_10000ED9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v71 = a1;
  v52 = a2;
  v56 = sub_100001B98(&qword_1000200D0, &unk_100016998);
  v54 = *(v56 - 8);
  v2 = __chkstk_darwin(v56);
  v53 = &v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v55 = &v51 - v4;
  v5 = sub_100001B98(&qword_1000200C8, &qword_100016990);
  v6 = *(v5 - 8);
  v61 = v5;
  v62 = v6;
  v7 = __chkstk_darwin(v5);
  v58 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v63 = &v51 - v9;
  v64 = sub_100001B98(&qword_100020320, &qword_100016BA0);
  v60 = *(v64 - 8);
  __chkstk_darwin(v64);
  v70 = &v51 - v10;
  v11 = type metadata accessor for SingleValueParsingStrategy();
  __chkstk_darwin(v11 - 8);
  v73 = (&v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = sub_100001B98(&qword_100020310, &qword_100016B90);
  __chkstk_darwin(v13 - 8);
  v15 = &v51 - v14;
  v16 = sub_100001B98(&qword_100020318, &qword_100016B98);
  __chkstk_darwin(v16 - 8);
  v18 = &v51 - v17;
  v19 = type metadata accessor for NameSpecification();
  __chkstk_darwin(v19 - 8);
  v20 = type metadata accessor for GMDiagnostics(0);
  v21 = (v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v51 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = 0;
  static NameSpecification.long.getter();
  ArgumentHelp.init(stringLiteral:)();
  v24 = type metadata accessor for ArgumentHelp();
  v25 = *(v24 - 8);
  v68 = *(v25 + 56);
  v69 = (v25 + 56);
  v65 = v24;
  v68(v18, 0, 1, v24);
  v26 = type metadata accessor for CompletionKind();
  v27 = *(v26 - 8);
  v66 = *(v27 + 56);
  v67 = v27 + 56;
  v66(v15, 1, 1, v26);
  static SingleValueParsingStrategy.next.getter();
  v28 = v15;
  Option<A>.init(wrappedValue:name:parsing:help:completion:)();
  v59 = v21[7];
  v23[v59] = 0;
  v57 = v21[8];
  v23[v57] = 0;
  v29 = v21[9];
  v80 = 1;
  static NameSpecification.long.getter();
  ArgumentHelp.init(stringLiteral:)();
  v30 = v68;
  v68(v18, 0, 1, v24);
  v66(v28, 1, 1, v26);
  static SingleValueParsingStrategy.next.getter();
  v67 = v29;
  Option<A>.init(wrappedValue:name:parsing:help:completion:)();
  v31 = v21[10];
  static NameSpecification.long.getter();
  v32 = v65;
  v30(v18, 1, 1, v65);
  Flag<A>.init(wrappedValue:name:help:)();
  v33 = v21[11];
  static NameSpecification.long.getter();
  v30(v18, 1, 1, v32);
  v34 = v23;
  v35 = v71;
  Flag<A>.init(wrappedValue:name:help:)();
  sub_100011650(v35, v35[3]);
  sub_100011694();
  v36 = v70;
  v37 = v72;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v37)
  {
    v72 = v33;
    v73 = v31;
    v38 = v62;
    v79 = 0;
    sub_100011794(&qword_100020330, &qword_1000200C8, &qword_100016990, &protocol conformance descriptor for Option<A>);
    v39 = v61;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v40 = *(v38 + 40);
    v40(v34, v63, v39);
    v78 = 1;
    v41 = KeyedDecodingContainer.decode(_:forKey:)();
    v69 = v40;
    v62 = v38 + 40;
    *(v34 + v59) = v41 & 1;
    v77 = 2;
    v42 = KeyedDecodingContainer.decode(_:forKey:)();
    v43 = v58;
    *(v34 + v57) = v42 & 1;
    v76 = 3;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v69(v34 + v67, v43, v39);
    v75 = 4;
    sub_100011794(&qword_100020338, &qword_1000200D0, &unk_100016998, &protocol conformance descriptor for Flag<A>);
    v46 = v55;
    v45 = v56;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v47 = v60;
    v48 = *(v54 + 40);
    v49 = v73 + v34;
    v54 += 40;
    v73 = v48;
    v48(v49, v46, v45);
    v74 = 5;
    v50 = v64;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v47 + 8))(v36, v50);
    v73(v34 + v72, v53, v45);
    sub_100014340(v34, v52, type metadata accessor for GMDiagnostics);
  }

  sub_1000116E8(v35);
  return sub_100011734(v34, type metadata accessor for GMDiagnostics);
}

uint64_t sub_10000F684()
{
  v1 = *v0;
  v2 = 1819047270;
  v3 = 0x696B726F7774656ELL;
  v4 = 1685289331;
  if (v1 != 4)
  {
    v4 = 1852797802;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000017;
  if (v1 != 1)
  {
    v5 = 0xD000000000000016;
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

uint64_t sub_10000F738@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100013FDC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10000F76C(uint64_t a1)
{
  v2 = sub_100011694();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10000F7A8(uint64_t a1)
{
  v2 = sub_100011694();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10000F7E4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000F870;

  return sub_100007E64();
}

uint64_t sub_10000F870()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10000F964@<X0>(uint64_t a1@<X8>)
{
  if (qword_100020060 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for CommandConfiguration();
  v3 = sub_1000015CC(v2, qword_100020A18);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

void sub_10000FA10(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(a1 - 8);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100001B98(&qword_100020198, &qword_100016A90);
  __chkstk_darwin(v6 - 8);
  v8 = &v13 - v7;
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_100014340(v2, v5, type metadata accessor for GMDiagnostics);
  v10 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  sub_100011414(v5, v11 + v10, type metadata accessor for GMDiagnostics);
  sub_100001FF4(0, 0, v8, &unk_100016AA0, v11);

  v12 = [objc_opt_self() mainRunLoop];
  [v12 run];
}

uint64_t sub_10000FC88(uint64_t a1)
{
  result = sub_10000FCE0(&qword_100020070, type metadata accessor for GMDiagnostics, &unk_100016A4C);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10000FCE0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10000FD70()
{
  v1 = (type metadata accessor for GMDiagnostics(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);
  swift_unknownObjectRelease();
  v5 = sub_100001B98(&qword_1000200C8, &qword_100016990);
  v6 = *(*(v5 - 8) + 8);
  v6(v0 + v3, v5);
  v6(v0 + v3 + v1[9], v5);
  v7 = v1[10];
  v8 = sub_100001B98(&qword_1000200D0, &unk_100016998);
  v9 = *(*(v8 - 8) + 8);
  v9(v0 + v3 + v7, v8);
  v9(v0 + v3 + v1[11], v8);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10000FEF0()
{
  type metadata accessor for GMDiagnostics(0);
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000F870;

  return sub_100001E1C();
}

uint64_t sub_10000FFE0(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1000100D8;

  return v6(a1);
}

uint64_t sub_1000100D8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1000101D0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100010208(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100015B68;

  return sub_10000FFE0(a1, v4);
}

uint64_t sub_1000102C0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000F870;

  return sub_10000FFE0(a1, v4);
}

uint64_t sub_1000103A8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

char *sub_100010420(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100001B98(&qword_100020300, &qword_100016B80);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_10001052C(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v1 >> 62))
  {
    v4 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = __OFADD__(v4, v3);
    result = v4 + v3;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = _CocoaArrayWrapper.endIndex.getter();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_10001061C(result, 1);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_100010B00(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 1)
  {
LABEL_9:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_10001061C(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  _CocoaArrayWrapper.endIndex.getter();
LABEL_9:
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v2 = result;
  return result;
}

char *sub_1000106BC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000107B8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000106DC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000108D8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000106FC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000109F4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_10001071C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100010764(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

char *sub_1000107B8(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100001B98(&qword_1000202D0, &qword_100016B60);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1000108D8(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100001B98(&qword_1000202D8, &qword_100016B68);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1000109F4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100001B98(&qword_100020300, &qword_100016B80);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_100010B00(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_100011794(&qword_1000202E8, &qword_1000202E0, &qword_100016B70, &protocol conformance descriptor for [A]);
          for (i = 0; i != v6; ++i)
          {
            sub_100001B98(&qword_1000202E0, &qword_100016B70);
            v9 = sub_100010CA4(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for CloudFeature();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

void (*sub_100010CA4(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_100010D24;
  }

  __break(1u);
  return result;
}

uint64_t sub_100010D6C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_100010DA4()
{
  result = qword_100020250;
  if (!qword_100020250)
  {
    sub_10001071C(&qword_100020228, &qword_100016B38);
    sub_10000FCE0(&qword_100020258, &type metadata accessor for FeatureRequestStartDiagnostic, &protocol conformance descriptor for FeatureRequestStartDiagnostic);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020250);
  }

  return result;
}

unint64_t sub_100010E58()
{
  result = qword_100020260;
  if (!qword_100020260)
  {
    sub_10001071C(&qword_100020228, &qword_100016B38);
    sub_10000FCE0(&qword_100020268, &type metadata accessor for FeatureRequestStartDiagnostic, &protocol conformance descriptor for FeatureRequestStartDiagnostic);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020260);
  }

  return result;
}

unint64_t sub_100010F0C()
{
  result = qword_100020270;
  if (!qword_100020270)
  {
    sub_10001071C(&qword_100020220, &qword_100016B30);
    sub_10000FCE0(&qword_100020278, &type metadata accessor for FeatureRequestFinishDiagnostic, &protocol conformance descriptor for FeatureRequestFinishDiagnostic);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020270);
  }

  return result;
}

unint64_t sub_100010FC0()
{
  result = qword_100020280;
  if (!qword_100020280)
  {
    sub_10001071C(&qword_100020220, &qword_100016B30);
    sub_10000FCE0(&qword_100020288, &type metadata accessor for FeatureRequestFinishDiagnostic, &protocol conformance descriptor for FeatureRequestFinishDiagnostic);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020280);
  }

  return result;
}

unint64_t sub_100011074()
{
  result = qword_100020290;
  if (!qword_100020290)
  {
    sub_10001071C(&qword_100020218, &qword_100016B28);
    sub_10000FCE0(&qword_100020298, &type metadata accessor for AssetDiagnostics, &protocol conformance descriptor for AssetDiagnostics);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020290);
  }

  return result;
}

unint64_t sub_100011128()
{
  result = qword_1000202A0;
  if (!qword_1000202A0)
  {
    sub_10001071C(&qword_100020218, &qword_100016B28);
    sub_10000FCE0(&qword_1000202A8, &type metadata accessor for AssetDiagnostics, &protocol conformance descriptor for AssetDiagnostics);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000202A0);
  }

  return result;
}

unint64_t sub_1000111DC()
{
  result = qword_1000202B0;
  if (!qword_1000202B0)
  {
    sub_10001071C(&qword_100020210, &qword_100016B20);
    sub_10000FCE0(&qword_1000202B8, &type metadata accessor for CoreTelephonyDiagnostic, &protocol conformance descriptor for CoreTelephonyDiagnostic);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000202B0);
  }

  return result;
}

unint64_t sub_100011290()
{
  result = qword_1000202C0;
  if (!qword_1000202C0)
  {
    sub_10001071C(&qword_100020210, &qword_100016B20);
    sub_10000FCE0(&qword_1000202C8, &type metadata accessor for CoreTelephonyDiagnostic, &protocol conformance descriptor for CoreTelephonyDiagnostic);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000202C0);
  }

  return result;
}

uint64_t sub_100011344(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100001B98(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1000113AC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100001B98(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_100011414(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_100011480()
{
  result = qword_1000202F8;
  if (!qword_1000202F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000202F8);
  }

  return result;
}

uint64_t sub_1000114CC()
{
  v1 = sub_100001B98(&qword_1000202F0, &qword_100016B78);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100011560(void *a1, char a2)
{
  sub_100001B98(&qword_1000202F0, &qword_100016B78);

  return sub_10000E7C8(a1, a2 & 1);
}

uint64_t *sub_1000115EC(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

void *sub_100011650(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_100011694()
{
  result = qword_100020328;
  if (!qword_100020328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020328);
  }

  return result;
}

uint64_t sub_1000116E8(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_100011734(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100011794(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_10001071C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for GMDiagnostics.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for GMDiagnostics.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

__n128 sub_100011940(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_100011954(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_10001199C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_1000119EC(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_100011A00(uint64_t a1, int a2)
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

uint64_t sub_100011A48(uint64_t result, int a2, int a3)
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

void sub_100011AC8(uint64_t a1)
{
  sub_100012584(319, &unk_1000203A8, &type metadata accessor for Date);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_100011B74(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = sub_100001B98(&qword_100020230, &qword_100016B40);
    v11 = *(*(v10 - 8) + 48);
    v12 = &a1[*(a3 + 20)];

    return v11(v12, a2, v10);
  }
}

_BYTE *sub_100011C44(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = sub_100001B98(&qword_100020230, &qword_100016B40);
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_100011CF0(uint64_t a1)
{
  sub_100012584(319, &unk_1000203A8, &type metadata accessor for Date);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_100011DA4(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_100001B98(&qword_100020240, &qword_100016B50);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[9];
LABEL_15:
    v16 = *(v10 + 48);

    return v16(a1 + v11, a2, v9);
  }

  v12 = sub_100001B98(&qword_100020238, &qword_100016B48);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[10];
    goto LABEL_15;
  }

  v13 = sub_100001B98(&qword_100020228, &qword_100016B38);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[16];
    goto LABEL_15;
  }

  v14 = sub_100001B98(&qword_100020220, &qword_100016B30);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a3[17];
    goto LABEL_15;
  }

  v15 = sub_100001B98(&qword_100020218, &qword_100016B28);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v9 = v15;
    v10 = *(v15 - 8);
    v11 = a3[18];
    goto LABEL_15;
  }

  v17 = sub_100001B98(&qword_100020210, &qword_100016B20);
  v18 = *(*(v17 - 8) + 48);
  v19 = a1 + a3[20];

  return v18(v19, a2, v17);
}

uint64_t sub_100012044(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
    return result;
  }

  v8 = sub_100001B98(&qword_100020240, &qword_100016B50);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[9];
LABEL_13:
    v16 = *(v10 + 56);

    return v16(v5 + v11, a2, a2, v9);
  }

  v12 = sub_100001B98(&qword_100020238, &qword_100016B48);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[10];
    goto LABEL_13;
  }

  v13 = sub_100001B98(&qword_100020228, &qword_100016B38);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[16];
    goto LABEL_13;
  }

  v14 = sub_100001B98(&qword_100020220, &qword_100016B30);
  if (*(*(v14 - 8) + 84) == a3)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a4[17];
    goto LABEL_13;
  }

  v15 = sub_100001B98(&qword_100020218, &qword_100016B28);
  if (*(*(v15 - 8) + 84) == a3)
  {
    v9 = v15;
    v10 = *(v15 - 8);
    v11 = a4[18];
    goto LABEL_13;
  }

  v17 = sub_100001B98(&qword_100020210, &qword_100016B20);
  v18 = *(*(v17 - 8) + 56);
  v19 = v5 + a4[20];

  return v18(v19, a2, a2, v17);
}

void sub_1000122D0(uint64_t a1)
{
  sub_100012534(319, &qword_1000204D8, &type metadata for Diagnostics.SanitizedFeature, &type metadata accessor for Array);
  if (v1 <= 0x3F)
  {
    sub_100012534(319, &qword_1000204E0, &type metadata for Diagnostics.SanitizedTicket, &type metadata accessor for Array);
    if (v2 <= 0x3F)
    {
      sub_100012584(319, &qword_1000204E8, type metadata accessor for Diagnostics.AFMFollowUpDiagnostics);
      if (v3 <= 0x3F)
      {
        sub_100012584(319, &qword_1000204F0, type metadata accessor for Diagnostics.ADMFollowUpDiagnostics);
        if (v4 <= 0x3F)
        {
          sub_100012584(319, &qword_1000204F8, &type metadata accessor for FeatureRequestStartDiagnostic);
          if (v5 <= 0x3F)
          {
            sub_100012584(319, &qword_100020500, &type metadata accessor for FeatureRequestFinishDiagnostic);
            if (v6 <= 0x3F)
            {
              sub_100012584(319, &qword_100020508, &type metadata accessor for AssetDiagnostics);
              if (v7 <= 0x3F)
              {
                sub_100012584(319, &unk_100020510, &type metadata accessor for CoreTelephonyDiagnostic);
                if (v8 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_100012534(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_100012584(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

__n128 initializeBufferWithCopyOfBuffer for Diagnostics.OptInDiagnostics(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for Diagnostics.OptInDiagnostics(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[16])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for Diagnostics.OptInDiagnostics(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1000126C0(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_100012760(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for Diagnostics.Configuration(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for Diagnostics.Configuration(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[5])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for Diagnostics.Configuration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 4) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 5) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 5) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_1000128E0()
{
  result = qword_100020580;
  if (!qword_100020580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020580);
  }

  return result;
}

unint64_t sub_100012938()
{
  result = qword_100020588;
  if (!qword_100020588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020588);
  }

  return result;
}

unint64_t sub_100012990()
{
  result = qword_100020590;
  if (!qword_100020590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020590);
  }

  return result;
}

unint64_t sub_1000129E4()
{
  result = qword_1000205A0;
  if (!qword_1000205A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000205A0);
  }

  return result;
}

unint64_t sub_100012A38()
{
  result = qword_1000205A8;
  if (!qword_1000205A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000205A8);
  }

  return result;
}

unint64_t sub_100012A8C()
{
  result = qword_1000205C0;
  if (!qword_1000205C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000205C0);
  }

  return result;
}

uint64_t sub_100012AE0(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_10001071C(&qword_1000205C8, &qword_1000171E8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100012B58()
{
  result = qword_1000205D8;
  if (!qword_1000205D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000205D8);
  }

  return result;
}

unint64_t sub_100012BAC()
{
  result = qword_1000205F0;
  if (!qword_1000205F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000205F0);
  }

  return result;
}

unint64_t sub_100012C00()
{
  result = qword_1000205F8;
  if (!qword_1000205F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000205F8);
  }

  return result;
}

unint64_t sub_100012C54()
{
  result = qword_100020600;
  if (!qword_100020600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020600);
  }

  return result;
}

unint64_t sub_100012CA8()
{
  result = qword_100020608;
  if (!qword_100020608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020608);
  }

  return result;
}

unint64_t sub_100012CFC()
{
  result = qword_100020610;
  if (!qword_100020610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020610);
  }

  return result;
}

uint64_t sub_100012D50(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x8000000100018D00 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000100018BE0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x696B726F7774656ELL && a2 == 0xEA0000000000676ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1685289331 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 1852797802 && a2 == 0xE400000000000000)
  {

    return 4;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

unint64_t sub_100012F18(void *a1)
{
  v3 = sub_100001B98(&qword_100020788, &qword_100017288);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v15 - v5;
  sub_100011650(a1, a1[3]);
  sub_10001496C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    return sub_1000116E8(a1);
  }

  v22 = 0;
  v7 = KeyedDecodingContainer.decode(_:forKey:)();
  v21 = 1;
  v8 = KeyedDecodingContainer.decode(_:forKey:)();
  v20 = 2;
  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  v19 = 3;
  v17 = KeyedDecodingContainer.decode(_:forKey:)();
  v18 = 4;
  v16 = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v4 + 8))(v6, v3);
  sub_1000116E8(a1);
  if (v16)
  {
    v11 = &_mh_execute_header;
  }

  else
  {
    v11 = 0;
  }

  v12 = 0x1000000;
  if ((v17 & 1) == 0)
  {
    v12 = 0;
  }

  v13 = 0x10000;
  if ((v9 & 1) == 0)
  {
    v13 = 0;
  }

  v14 = 256;
  if ((v8 & 1) == 0)
  {
    v14 = 0;
  }

  return v14 & 0xFFFFFFFFFFFFFFFELL | v7 & 1 | v13 | v12 | v11;
}

uint64_t sub_100013164(void *a1)
{
  v3 = sub_100001B98(&qword_100020618, &qword_1000171F0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9[-v5];
  v7 = a1[4];
  sub_100011650(a1, a1[3]);
  sub_1000141F0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v9[15] = 0;
    v7 = KeyedDecodingContainer.decode(_:forKey:)();
    v9[14] = 1;
    KeyedDecodingContainer.decode(_:forKey:)();
    (*(v4 + 8))(v6, v3);
  }

  sub_1000116E8(a1);
  return v7;
}

uint64_t sub_10001333C(void *a1)
{
  v3 = sub_100001B98(&qword_100020630, &qword_100017200);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9[-v5];
  v7 = a1[4];
  sub_100011650(a1, a1[3]);
  sub_100014244();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v10 = 0;
    v7 = KeyedDecodingContainer.decode(_:forKey:)();
    type metadata accessor for TicketStatus();
    v9[15] = 1;
    sub_10000FCE0(&qword_100020640, &type metadata accessor for TicketStatus, &protocol conformance descriptor for TicketStatus);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v6, v3);
  }

  sub_1000116E8(a1);
  return v7;
}

uint64_t sub_100013564(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x46746E6553736168 && a2 == 0xEF7055776F6C6C6FLL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65746144746E6573 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000100018CC0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001ALL && 0x8000000100018CE0 == a2)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

uint64_t sub_1000136DC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E49646574706FLL && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x426E49646574706FLL && a2 == 0xEC00000079646475 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x74754F646574706FLL && a2 == 0xED00007964647542 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6574617473 && a2 == 0xE500000000000000)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

uint64_t sub_100013848(void *a1)
{
  v3 = sub_100001B98(&qword_100020718, &qword_100017248);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14[-v5];
  sub_100011650(a1, a1[3]);
  sub_100014774();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    return sub_1000116E8(a1);
  }

  v14[31] = 0;
  v7 = KeyedDecodingContainer.decode(_:forKey:)();
  v14[30] = 1;
  v8 = KeyedDecodingContainer.decode(_:forKey:)();
  v14[29] = 2;
  v10 = KeyedDecodingContainer.decode(_:forKey:)();
  v14[28] = 3;
  sub_1000147C8();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v4 + 8))(v6, v3);
  sub_1000116E8(a1);
  if (v8)
  {
    v11 = 256;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11 & 0xFFFFFFFE | v7 & 1;
  if (v10)
  {
    v13 = 0x10000;
  }

  else
  {
    v13 = 0;
  }

  return v12 | v13;
}

uint64_t sub_100013A78(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x72756769666E6F63 && a2 == 0xED00006E6F697461;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000100018C20 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C61636F6CLL && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7365727574616566 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7374656B636974 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6F6C6C6F466D6661 && a2 == 0xEB00000000705577 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6F6C6C6F466D6461 && a2 == 0xEB00000000705577 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x737361707962 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x73617079426D6461 && a2 == 0xE900000000000073 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x7079427465737361 && a2 == 0xEB00000000737361 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x6E4974706FLL && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x65446C6961746572 && a2 == 0xEA00000000006F6DLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000100018C40 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000100018C60 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000100018C80 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000100018CA0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0x656C655465726F63 && a2 == 0xED0000797274656DLL)
  {

    return 16;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 16;
    }

    else
    {
      return 17;
    }
  }
}

uint64_t sub_100013FDC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1819047270 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000100018BE0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000100018C00 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x696B726F7774656ELL && a2 == 0xEA0000000000676ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 1685289331 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 1852797802 && a2 == 0xE400000000000000)
  {

    return 5;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

unint64_t sub_1000141F0()
{
  result = qword_100020620;
  if (!qword_100020620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020620);
  }

  return result;
}

unint64_t sub_100014244()
{
  result = qword_100020638;
  if (!qword_100020638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020638);
  }

  return result;
}

unint64_t sub_100014298()
{
  result = qword_100020660;
  if (!qword_100020660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020660);
  }

  return result;
}

unint64_t sub_1000142EC()
{
  result = qword_100020688;
  if (!qword_100020688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020688);
  }

  return result;
}

uint64_t sub_100014340(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000143A8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100001B98(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_100014408()
{
  result = qword_1000206A0;
  if (!qword_1000206A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000206A0);
  }

  return result;
}

uint64_t sub_10001445C(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_10001071C(&qword_1000205B0, &qword_1000171E0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000144D4()
{
  result = qword_1000206B0;
  if (!qword_1000206B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000206B0);
  }

  return result;
}

unint64_t sub_100014528()
{
  result = qword_1000206C0;
  if (!qword_1000206C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000206C0);
  }

  return result;
}

unint64_t sub_10001457C()
{
  result = qword_1000206D8;
  if (!qword_1000206D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000206D8);
  }

  return result;
}

unint64_t sub_1000145D0()
{
  result = qword_1000206E0;
  if (!qword_1000206E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000206E0);
  }

  return result;
}

unint64_t sub_100014624()
{
  result = qword_1000206E8;
  if (!qword_1000206E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000206E8);
  }

  return result;
}

unint64_t sub_100014678()
{
  result = qword_1000206F0;
  if (!qword_1000206F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000206F0);
  }

  return result;
}

unint64_t sub_1000146CC()
{
  result = qword_1000206F8;
  if (!qword_1000206F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000206F8);
  }

  return result;
}

unint64_t sub_100014720()
{
  result = qword_100020708;
  if (!qword_100020708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020708);
  }

  return result;
}

unint64_t sub_100014774()
{
  result = qword_100020720;
  if (!qword_100020720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020720);
  }

  return result;
}

unint64_t sub_1000147C8()
{
  result = qword_100020728;
  if (!qword_100020728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020728);
  }

  return result;
}

unint64_t sub_10001481C()
{
  result = qword_100020738;
  if (!qword_100020738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020738);
  }

  return result;
}

unint64_t sub_100014870()
{
  result = qword_100020748;
  if (!qword_100020748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020748);
  }

  return result;
}

unint64_t sub_1000148C4()
{
  result = qword_100020760;
  if (!qword_100020760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020760);
  }

  return result;
}

unint64_t sub_100014918()
{
  result = qword_100020778;
  if (!qword_100020778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020778);
  }

  return result;
}

unint64_t sub_10001496C()
{
  result = qword_100020790;
  if (!qword_100020790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020790);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Diagnostics.Configuration.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for Diagnostics.Configuration.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_100014B74(unsigned int *a1, int a2)
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

_WORD *sub_100014BC4(_WORD *result, int a2, int a3)
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

uint64_t sub_100014C54(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_100014CE8(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_100014DD8(unsigned __int8 *a1, unsigned int a2)
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
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t getEnumTagSinglePayload for Diagnostics.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF0)
  {
    goto LABEL_17;
  }

  if (a2 + 16 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 16) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 16;
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

      return (*a1 | (v4 << 8)) - 16;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 16;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x11;
  v8 = v6 - 17;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Diagnostics.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 16 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 16) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF0)
  {
    v4 = 0;
  }

  if (a2 > 0xEF)
  {
    v5 = ((a2 - 240) >> 8) + 1;
    *result = a2 + 16;
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
    *result = a2 + 16;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100014FCC()
{
  result = qword_1000207A0;
  if (!qword_1000207A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000207A0);
  }

  return result;
}

unint64_t sub_100015024()
{
  result = qword_1000207A8;
  if (!qword_1000207A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000207A8);
  }

  return result;
}

unint64_t sub_10001507C()
{
  result = qword_1000207B0;
  if (!qword_1000207B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000207B0);
  }

  return result;
}

unint64_t sub_1000150D4()
{
  result = qword_1000207B8;
  if (!qword_1000207B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000207B8);
  }

  return result;
}

unint64_t sub_10001512C()
{
  result = qword_1000207C0;
  if (!qword_1000207C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000207C0);
  }

  return result;
}

unint64_t sub_100015184()
{
  result = qword_1000207C8;
  if (!qword_1000207C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000207C8);
  }

  return result;
}

unint64_t sub_1000151DC()
{
  result = qword_1000207D0;
  if (!qword_1000207D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000207D0);
  }

  return result;
}

unint64_t sub_100015234()
{
  result = qword_1000207D8;
  if (!qword_1000207D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000207D8);
  }

  return result;
}

unint64_t sub_10001528C()
{
  result = qword_1000207E0;
  if (!qword_1000207E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000207E0);
  }

  return result;
}

unint64_t sub_1000152E4()
{
  result = qword_1000207E8;
  if (!qword_1000207E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000207E8);
  }

  return result;
}

unint64_t sub_10001533C()
{
  result = qword_1000207F0;
  if (!qword_1000207F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000207F0);
  }

  return result;
}

unint64_t sub_100015394()
{
  result = qword_1000207F8;
  if (!qword_1000207F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000207F8);
  }

  return result;
}

unint64_t sub_1000153EC()
{
  result = qword_100020800;
  if (!qword_100020800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020800);
  }

  return result;
}

unint64_t sub_100015444()
{
  result = qword_100020808;
  if (!qword_100020808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020808);
  }

  return result;
}

unint64_t sub_10001549C()
{
  result = qword_100020810;
  if (!qword_100020810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020810);
  }

  return result;
}

unint64_t sub_1000154F4()
{
  result = qword_100020818;
  if (!qword_100020818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020818);
  }

  return result;
}

unint64_t sub_10001554C()
{
  result = qword_100020820;
  if (!qword_100020820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020820);
  }

  return result;
}

unint64_t sub_1000155A4()
{
  result = qword_100020828;
  if (!qword_100020828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020828);
  }

  return result;
}

unint64_t sub_1000155FC()
{
  result = qword_100020830;
  if (!qword_100020830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020830);
  }

  return result;
}

unint64_t sub_100015654()
{
  result = qword_100020838;
  if (!qword_100020838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020838);
  }

  return result;
}

unint64_t sub_1000156AC()
{
  result = qword_100020840;
  if (!qword_100020840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020840);
  }

  return result;
}

unint64_t sub_100015704()
{
  result = qword_100020848;
  if (!qword_100020848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020848);
  }

  return result;
}

unint64_t sub_10001575C()
{
  result = qword_100020850;
  if (!qword_100020850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020850);
  }

  return result;
}

unint64_t sub_1000157B4()
{
  result = qword_100020858;
  if (!qword_100020858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020858);
  }

  return result;
}

unint64_t sub_10001580C()
{
  result = qword_100020860;
  if (!qword_100020860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020860);
  }

  return result;
}

unint64_t sub_100015864()
{
  result = qword_100020868;
  if (!qword_100020868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020868);
  }

  return result;
}

unint64_t sub_1000158BC()
{
  result = qword_100020870;
  if (!qword_100020870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020870);
  }

  return result;
}

unint64_t sub_100015914()
{
  result = qword_100020878;
  if (!qword_100020878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020878);
  }

  return result;
}

unint64_t sub_10001596C()
{
  result = qword_100020880;
  if (!qword_100020880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020880);
  }

  return result;
}

unint64_t sub_1000159C4()
{
  result = qword_100020888;
  if (!qword_100020888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020888);
  }

  return result;
}

unint64_t sub_100015A1C()
{
  result = qword_100020890;
  if (!qword_100020890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020890);
  }

  return result;
}

unint64_t sub_100015A74()
{
  result = qword_100020898;
  if (!qword_100020898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020898);
  }

  return result;
}

unint64_t sub_100015ACC()
{
  result = qword_1000208A0;
  if (!qword_1000208A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000208A0);
  }

  return result;
}

uint64_t sub_100015BA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = type metadata accessor for Logger();
  sub_1000115EC(v3, qword_100020AA8);
  sub_1000015CC(v3, qword_100020AA8);
  return Logger.init(subsystem:category:)();
}

uint64_t KeyedDecodingContainer.decode(_:forKey:)()
{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

uint64_t KeyedEncodingContainer.encode(_:forKey:)()
{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}