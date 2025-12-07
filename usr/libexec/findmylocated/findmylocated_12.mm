uint64_t sub_1001527AC()
{
  v1 = *v0;
  v2 = 0x6F43726576726573;
  v3 = 0x644970756F7267;
  v4 = 0x736C69616D65;
  if (v1 != 4)
  {
    v4 = 7562345;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6F43746E65696C63;
  if (v1 != 1)
  {
    v5 = 0x73657269707865;
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

uint64_t sub_100152864@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100155230(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10015288C(uint64_t a1)
{
  v2 = sub_100154780();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001528C8(uint64_t a1)
{
  v2 = sub_100154780();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100152934(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[39] = a2;
  v3[40] = a3;
  v3[38] = a1;
  v4 = type metadata accessor for JSONEncoder.DateEncodingStrategy();
  v3[41] = v4;
  v3[42] = *(v4 - 8);
  v3[43] = swift_task_alloc();
  v5 = type metadata accessor for FriendshipRequest();
  v3[44] = v5;
  v3[45] = *(v5 - 8);
  v3[46] = swift_task_alloc();
  v3[47] = swift_task_alloc();
  v6 = type metadata accessor for FriendshipRequestType();
  v3[48] = v6;
  v3[49] = *(v6 - 8);
  v3[50] = swift_task_alloc();
  v3[51] = swift_task_alloc();
  v3[52] = swift_task_alloc();
  v7 = type metadata accessor for Account();
  v3[53] = v7;
  v3[54] = *(v7 - 8);
  v3[55] = swift_task_alloc();
  sub_10004B564(&qword_1005AC488, &unk_1004C8430);
  v3[56] = swift_task_alloc();
  v3[57] = swift_task_alloc();
  sub_10004B564(&qword_1005B3360, &unk_1004C6AA0);
  v3[58] = swift_task_alloc();
  v3[59] = swift_task_alloc();
  type metadata accessor for ClientContext(0);
  v3[60] = swift_task_alloc();
  v3[61] = swift_task_alloc();
  v3[62] = swift_task_alloc();

  return _swift_task_switch(sub_100152BFC, 0, 0);
}

uint64_t sub_100152BFC()
{
  v2 = v0[58];
  v1 = v0[59];
  v4 = v0[56];
  v3 = v0[57];
  v6 = v0[54];
  v5 = v0[55];
  v7 = v0[53];
  v8 = v0[38];
  v0[63] = sub_10014ABCC();
  FriendshipRequest.callerHandle.getter();
  FriendshipRequest.origin.getter();
  v9 = type metadata accessor for RequestOrigin();
  (*(*(v9 - 8) + 56))(v3, 0, 1, v9);
  (*(v6 + 16))(v5, v8, v7);
  sub_100005F04(v3, v4, &qword_1005AC488, &unk_1004C8430);
  sub_100005F04(v1, v2, &qword_1005B3360, &unk_1004C6AA0);
  v10 = swift_task_alloc();
  v0[64] = v10;
  *v10 = v0;
  v10[1] = sub_100152D80;
  v11 = v0[62];
  v12 = v0[58];
  v13 = v0[55];
  v14 = v0[56];

  return sub_1001667E8(v11, v13, v14, v12, _swiftEmptyArrayStorage);
}

uint64_t sub_100152D80()
{
  v1 = *(*v0 + 472);
  v2 = *(*v0 + 456);

  sub_100002CE0(v2, &qword_1005AC488, &unk_1004C8430);
  sub_100002CE0(v1, &qword_1005B3360, &unk_1004C6AA0);

  return _swift_task_switch(sub_100152ED4, 0, 0);
}

uint64_t sub_100152ED4()
{
  v1 = v0[52];
  v2 = v0[48];
  v3 = v0[49];
  v4 = v0[45];
  (*(v3 + 104))(v1, enum case for FriendshipRequestType.offer(_:), v2);
  v5 = static FriendshipRequestType.== infix(_:_:)();
  v6 = *(v3 + 8);
  v3 += 8;
  v0[65] = v6;
  v0[66] = v3 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = (v4 + 16);
  v8 = (v3 + 8);
  v9 = v0[62];
  v10 = v0[48];
  v11 = v0[44];
  v13 = v0[39];
  v12 = v0[40];
  if (v5)
  {
    v14 = v0[51];
    v15 = v0[47];
    sub_1001547D4(v9, v0[61], type metadata accessor for ClientContext);
    (*v7)(v15, v13, v11);
    (*v8)(v14, v12, v10);
    v0[29] = type metadata accessor for FriendshipOfferContent(0);
    v0[30] = sub_100154014(&qword_1005AC9D0, type metadata accessor for FriendshipOfferContent, &unk_1004C7AF8);
    v0[31] = sub_100154014(&qword_1005AC9D8, type metadata accessor for FriendshipOfferContent, &unk_1004C7AD0);
    v16 = sub_10000331C(v0 + 26);
    v17 = swift_task_alloc();
    v0[67] = v17;
    *v17 = v0;
    v17[1] = sub_10015324C;
    v18 = v0[61];
    v19 = v0[51];
    v20 = v0[47];

    return sub_10014D4A0(v16, v18, v20, v19);
  }

  else
  {
    v22 = v0[50];
    v23 = v0[46];
    sub_1001547D4(v9, v0[60], type metadata accessor for ClientContext);
    (*v7)(v23, v13, v11);
    (*v8)(v22, v12, v10);
    v0[11] = type metadata accessor for FriendshipRequestContent(0);
    v0[12] = sub_100154014(&qword_1005AC9B8, type metadata accessor for FriendshipRequestContent, &unk_1004C7B48);
    v0[13] = sub_100154014(&qword_1005AC9C0, type metadata accessor for FriendshipRequestContent, &unk_1004C7B20);
    v24 = sub_10000331C(v0 + 8);
    v25 = swift_task_alloc();
    v0[69] = v25;
    *v25 = v0;
    v25[1] = sub_100153778;
    v26 = v0[60];
    v27 = v0[50];
    v28 = v0[46];

    return sub_10014E5A8(v24, v26, v28, v27);
  }
}

uint64_t sub_10015324C()
{
  *(*v1 + 544) = v0;

  if (v0)
  {
    v2 = sub_100153CA4;
  }

  else
  {
    v2 = sub_100153360;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100153360()
{
  v28 = v0;
  sub_1001540AC((v0 + 208), (v0 + 16));
  v1 = *(v0 + 544);
  if (qword_1005A7F88 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A6F0(v2, qword_1005DFC28);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v27 = v6;
    *v5 = 136315138;
    swift_beginAccess();
    sub_1001540C4(v0 + 16, v0 + 160);
    sub_10004B564(&qword_1005AC9C8, &qword_1004C78B0);
    v7 = String.init<A>(describing:)();
    v9 = sub_10000D01C(v7, v8, &v27);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "Request content: %s", v5, 0xCu);
    sub_100004984(v6);
  }

  v11 = *(v0 + 336);
  v10 = *(v0 + 344);
  v12 = *(v0 + 328);
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  *v10 = sub_10019E890;
  v10[1] = 0;
  (*(v11 + 104))(v10, enum case for JSONEncoder.DateEncodingStrategy.custom(_:), v12);
  dispatch thunk of JSONEncoder.dateEncodingStrategy.setter();
  swift_beginAccess();
  sub_1001540C4(v0 + 16, v0 + 112);
  sub_100011AEC((v0 + 112), *(v0 + 136));
  v13 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  if (v1)
  {

    v26 = 0;
    v15 = 0xF000000000000000;
  }

  else
  {
    v15 = v14;
    v26 = v13;
  }

  v16 = *(v0 + 496);
  v17 = *(v0 + 432);
  v18 = *(v0 + 424);
  v19 = *(v0 + 360);
  v20 = *(v0 + 352);
  v21 = *(v0 + 312);
  v22 = *(v0 + 304);
  (*(v0 + 520))(*(v0 + 320), *(v0 + 384));
  (*(v19 + 8))(v21, v20);
  (*(v17 + 8))(v22, v18);
  sub_10015483C(v16, type metadata accessor for ClientContext);
  sub_100004984((v0 + 112));
  sub_10001A794(0, 0xF000000000000000);
  sub_100004984((v0 + 16));

  sub_10002CF44(v26, v15);

  sub_10001A794(v26, v15);

  v23 = *(v0 + 8);
  v24 = *(v0 + 504);

  return v23(v24, v26, v15);
}

uint64_t sub_100153778()
{
  *(*v1 + 560) = v0;

  if (v0)
  {
    v2 = sub_100153E4C;
  }

  else
  {
    v2 = sub_10015388C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10015388C()
{
  v28 = v0;
  sub_1001540AC((v0 + 64), (v0 + 16));
  v1 = *(v0 + 560);
  if (qword_1005A7F88 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A6F0(v2, qword_1005DFC28);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v27 = v6;
    *v5 = 136315138;
    swift_beginAccess();
    sub_1001540C4(v0 + 16, v0 + 160);
    sub_10004B564(&qword_1005AC9C8, &qword_1004C78B0);
    v7 = String.init<A>(describing:)();
    v9 = sub_10000D01C(v7, v8, &v27);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "Request content: %s", v5, 0xCu);
    sub_100004984(v6);
  }

  v11 = *(v0 + 336);
  v10 = *(v0 + 344);
  v12 = *(v0 + 328);
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  *v10 = sub_10019E890;
  v10[1] = 0;
  (*(v11 + 104))(v10, enum case for JSONEncoder.DateEncodingStrategy.custom(_:), v12);
  dispatch thunk of JSONEncoder.dateEncodingStrategy.setter();
  swift_beginAccess();
  sub_1001540C4(v0 + 16, v0 + 112);
  sub_100011AEC((v0 + 112), *(v0 + 136));
  v13 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  if (v1)
  {

    v26 = 0;
    v15 = 0xF000000000000000;
  }

  else
  {
    v15 = v14;
    v26 = v13;
  }

  v16 = *(v0 + 496);
  v17 = *(v0 + 432);
  v18 = *(v0 + 424);
  v19 = *(v0 + 360);
  v20 = *(v0 + 352);
  v21 = *(v0 + 312);
  v22 = *(v0 + 304);
  (*(v0 + 520))(*(v0 + 320), *(v0 + 384));
  (*(v19 + 8))(v21, v20);
  (*(v17 + 8))(v22, v18);
  sub_10015483C(v16, type metadata accessor for ClientContext);
  sub_100004984((v0 + 112));
  sub_10001A794(0, 0xF000000000000000);
  sub_100004984((v0 + 16));

  sub_10002CF44(v26, v15);

  sub_10001A794(v26, v15);

  v23 = *(v0 + 8);
  v24 = *(v0 + 504);

  return v23(v24, v26, v15);
}

uint64_t sub_100153CA4()
{
  v1 = *(v0 + 496);
  v2 = *(v0 + 424);
  v3 = *(v0 + 432);
  v4 = *(v0 + 352);
  v5 = *(v0 + 360);
  v6 = *(v0 + 312);
  v7 = *(v0 + 304);
  (*(v0 + 520))(*(v0 + 320), *(v0 + 384));
  (*(v5 + 8))(v6, v4);
  (*(v3 + 8))(v7, v2);
  sub_10015483C(v1, type metadata accessor for ClientContext);
  sub_10015405C((v0 + 208));

  sub_10001A794(0, 0xF000000000000000);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_100153E4C()
{
  v1 = *(v0 + 496);
  v2 = *(v0 + 424);
  v3 = *(v0 + 432);
  v4 = *(v0 + 352);
  v5 = *(v0 + 360);
  v6 = *(v0 + 312);
  v7 = *(v0 + 304);
  (*(v0 + 520))(*(v0 + 320), *(v0 + 384));
  (*(v5 + 8))(v6, v4);
  (*(v3 + 8))(v7, v2);
  sub_10015483C(v1, type metadata accessor for ClientContext);
  sub_10015405C((v0 + 64));

  sub_10001A794(0, 0xF000000000000000);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_100154014(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_10015405C(void *result)
{
  if ((*(*(result[3] - 8) + 80) & 0x20000) != 0)
  {
  }

  return result;
}

_OWORD *sub_1001540AC(__int128 *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a1[2];
  a2[1] = a1[1];
  a2[2] = v3;
  *a2 = v2;
  return a2;
}

uint64_t sub_1001540C4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_100154170(uint64_t a1)
{
  sub_100154568(319, &qword_1005AC500, &type metadata for ServerContext, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    type metadata accessor for ClientContext(319);
    if (v2 <= 0x3F)
    {
      sub_100154248(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100154248(uint64_t a1)
{
  if (!qword_1005ACA48)
  {
    type metadata accessor for IDSStatus();
    v1 = type metadata accessor for Dictionary();
    if (!v2)
    {
      atomic_store(v1, &qword_1005ACA48);
    }
  }
}

uint64_t sub_1001542C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ClientContext(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 28) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_10015439C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ClientContext(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 28) + 8) = (a2 - 1);
  }

  return result;
}

void sub_10015445C(uint64_t a1)
{
  sub_100154568(319, &qword_1005AC500, &type metadata for ServerContext, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    type metadata accessor for ClientContext(319);
    if (v2 <= 0x3F)
    {
      sub_100154568(319, &unk_1005ACAF0, &type metadata for String, &type metadata accessor for Array);
      if (v3 <= 0x3F)
      {
        sub_100149B90(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_100154568(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_1001545CC()
{
  result = qword_1005ACB30;
  if (!qword_1005ACB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ACB30);
  }

  return result;
}

uint64_t sub_100154620(uint64_t a1)
{
  *(a1 + 8) = sub_100154014(&qword_1005AC9B8, type metadata accessor for FriendshipRequestContent, &unk_1004C7B48);
  result = sub_100154014(&qword_1005AC9C0, type metadata accessor for FriendshipRequestContent, &unk_1004C7B20);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1001546A4(uint64_t a1)
{
  *(a1 + 8) = sub_100154014(&qword_1005AC9D0, type metadata accessor for FriendshipOfferContent, &unk_1004C7AF8);
  result = sub_100154014(&qword_1005AC9D8, type metadata accessor for FriendshipOfferContent, &unk_1004C7AD0);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_10015472C()
{
  result = qword_1005ACB38;
  if (!qword_1005ACB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ACB38);
  }

  return result;
}

unint64_t sub_100154780()
{
  result = qword_1005ACB48;
  if (!qword_1005ACB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ACB48);
  }

  return result;
}

uint64_t sub_1001547D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10015483C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_10015489C()
{
  result = qword_1005ACB60;
  if (!qword_1005ACB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ACB60);
  }

  return result;
}

unint64_t sub_1001548F0()
{
  result = qword_1005ACB70;
  if (!qword_1005ACB70)
  {
    sub_10004B610(&qword_1005ACB68, &qword_1004C7BB8);
    sub_100154014(&qword_1005ACB78, &type metadata accessor for IDSStatus, &protocol conformance descriptor for IDSStatus);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ACB70);
  }

  return result;
}

unint64_t sub_1001549AC()
{
  result = qword_1005ACB88;
  if (!qword_1005ACB88)
  {
    sub_10004B610(&qword_1005ACB68, &qword_1004C7BB8);
    sub_100154014(&qword_1005ACB90, &type metadata accessor for IDSStatus, &protocol conformance descriptor for IDSStatus);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ACB88);
  }

  return result;
}

uint64_t sub_100154A68(void *a1)
{
  v3 = sub_10004B564(&qword_1005ACB98, &unk_1004C7BC8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11 - v5;
  v7 = a1[3];
  sub_100011AEC(a1, v7);
  sub_100154CCC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_100004984(a1);
    sub_10001A794(0, 0xF000000000000000);
  }

  else
  {
    sub_10004B564(&qword_1005AC968, &qword_1004C7670);
    v14 = 0;
    sub_10014D0DC(&qword_1005AC970, &protocol witness table for String, &protocol conformance descriptor for <> [A : B]);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v7 = v12;
    v14 = 1;
    sub_1000F4D64();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v4 + 8))(v6, v3);
    v9 = v12;
    v10 = v13;
    sub_10001A794(0, 0xF000000000000000);

    sub_10002CF44(v9, v10);
    sub_100004984(a1);

    sub_10001A794(v9, v10);
  }

  return v7;
}

unint64_t sub_100154CCC()
{
  result = qword_1005ACBA0;
  if (!qword_1005ACBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ACBA0);
  }

  return result;
}

unint64_t sub_100154D54()
{
  result = qword_1005ACBB0;
  if (!qword_1005ACBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ACBB0);
  }

  return result;
}

unint64_t sub_100154DAC()
{
  result = qword_1005ACBB8;
  if (!qword_1005ACBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ACBB8);
  }

  return result;
}

unint64_t sub_100154E04()
{
  result = qword_1005ACBC0;
  if (!qword_1005ACBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ACBC0);
  }

  return result;
}

unint64_t sub_100154E5C()
{
  result = qword_1005ACBC8;
  if (!qword_1005ACBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ACBC8);
  }

  return result;
}

unint64_t sub_100154EB4()
{
  result = qword_1005ACBD0;
  if (!qword_1005ACBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ACBD0);
  }

  return result;
}

unint64_t sub_100154F0C()
{
  result = qword_1005ACBD8;
  if (!qword_1005ACBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ACBD8);
  }

  return result;
}

unint64_t sub_100154F64()
{
  result = qword_1005ACBE0;
  if (!qword_1005ACBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ACBE0);
  }

  return result;
}

unint64_t sub_100154FBC()
{
  result = qword_1005ACBE8;
  if (!qword_1005ACBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ACBE8);
  }

  return result;
}

unint64_t sub_100155014()
{
  result = qword_1005ACBF0;
  if (!qword_1005ACBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ACBF0);
  }

  return result;
}

uint64_t sub_100155068(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F43726576726573 && a2 == 0xED0000747865746ELL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F43746E65696C63 && a2 == 0xED0000747865746ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x73657269707865 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x644970756F7267 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001004E2A90 == a2)
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

uint64_t sub_100155230(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F43726576726573 && a2 == 0xED0000747865746ELL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F43746E65696C63 && a2 == 0xED0000747865746ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x73657269707865 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x644970756F7267 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x736C69616D65 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 7562345 && a2 == 0xE300000000000000)
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

uint64_t sub_100155438(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[185] = a4;
  v4[184] = a3;
  v4[183] = a2;
  v4[182] = a1;
  v5 = type metadata accessor for Handle();
  v4[186] = v5;
  v4[187] = *(v5 - 8);
  v4[188] = swift_task_alloc();
  v4[189] = swift_task_alloc();
  v6 = swift_task_alloc();
  v4[190] = v6;
  *v6 = v4;
  v6[1] = sub_100155540;

  return daemon.getter();
}

uint64_t sub_100155540(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 1528) = a1;

  v3 = swift_task_alloc();
  *(v2 + 1536) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for DataManager(0);
  v6 = sub_1001581FC(&unk_1005AFA50, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_1001581FC(&qword_1005A90D0, type metadata accessor for DataManager, &unk_1004D1410);
  *v3 = v9;
  v3[1] = sub_10015571C;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_10015571C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v3[193] = a1;
  v3[194] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_100155AF8, 0, 0);
  }

  else
  {

    v5 = swift_task_alloc();
    v3[195] = v5;
    *v5 = v4;
    v5[1] = sub_1001558AC;

    return sub_100245BB8((v3 + 62));
  }
}

uint64_t sub_1001558AC()
{
  v1 = *(*v0 + 1544);

  return _swift_task_switch(sub_1001559BC, v1, 0);
}

uint64_t sub_1001559BC()
{
  memcpy(v0 + 1, v0 + 31, 0x1E0uLL);
  if (sub_100033B90((v0 + 1)) == 1)
  {
    sub_10003170C(v0 + 61);
  }

  else
  {
    v1 = v0[14];
    v0[77] = v0[13];
    v0[78] = v1;
    v2 = v0[16];
    v0[79] = v0[15];
    v0[80] = v2;
    v3 = v0[10];
    v0[73] = v0[9];
    v0[74] = v3;
    v4 = v0[12];
    v0[75] = v0[11];
    v0[76] = v4;
    v5 = v0[8];
    v0[71] = v0[7];
    v0[72] = v5;
    sub_100005F04((v0 + 71), (v0 + 81), &qword_1005A9328, &unk_1004C7F20);
    sub_100002CE0((v0 + 31), &qword_1005A90D8, &unk_1004C6AB0);
    v6 = v0[78];
    v0[67] = v0[77];
    v0[68] = v6;
    v7 = v0[80];
    v0[69] = v0[79];
    v0[70] = v7;
    v8 = v0[74];
    v0[63] = v0[73];
    v0[64] = v8;
    v9 = v0[76];
    v0[65] = v0[75];
    v0[66] = v9;
    v10 = v0[72];
    v0[61] = v0[71];
    v0[62] = v10;
  }

  return _swift_task_switch(sub_100155BEC, 0, 0);
}

uint64_t sub_100155AF8()
{
  v1 = v0[185];
  v2 = v0[183];

  v3 = type metadata accessor for GroupID();
  (*(*(v3 - 8) + 8))(v1, v3);
  sub_100157E4C(v2, type metadata accessor for ClientContext);

  v4 = v0[1];

  return v4();
}

char *sub_100155BEC()
{
  v1 = v0[184];
  v2 = v0[183];
  v3 = v0[182];

  v4 = *(v0 + 62);
  *v3 = *(v0 + 61);
  v3[1] = v4;
  v5 = *(v0 + 63);
  v6 = *(v0 + 64);
  v7 = *(v0 + 66);
  v3[4] = *(v0 + 65);
  v3[5] = v7;
  v3[2] = v5;
  v3[3] = v6;
  v8 = *(v0 + 67);
  v9 = *(v0 + 68);
  v10 = *(v0 + 70);
  v3[8] = *(v0 + 69);
  v3[9] = v10;
  v3[6] = v8;
  v3[7] = v9;
  v11 = type metadata accessor for FriendshipStopOfferContent(0);
  sub_100157DE4(v2, v3 + v11[5], type metadata accessor for ClientContext);
  v12 = GroupID.rawValue.getter();
  v13 = (v3 + v11[6]);
  *v13 = v12;
  v13[1] = v14;
  v49 = v1;
  v15 = *(v1 + 16);
  if (v15)
  {
    v47 = v11;
    v16 = v0[187];
    v50 = v0;
    v17 = v0[184];
    result = sub_10002B3C0(0, v15, 0);
    v19 = 0;
    v20 = _swiftEmptyArrayStorage;
    v21 = v17 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
    v48 = v16;
    v53 = (v16 + 8);
    while (1)
    {
      if (v19 >= *(v49 + 16))
      {
        __break(1u);
        return result;
      }

      v51 = *(v48 + 72);
      v22 = *(v48 + 16);
      v22(v50[189], v21 + v51 * v19, v50[186]);
      v23 = Handle.serverID.getter();
      v25 = v24;
      v26 = v50[189];
      v27 = v50[186];
      if (!v25)
      {
        break;
      }

      v52 = *v53;
      result = (*v53)(v26, v27);
      v29 = _swiftEmptyArrayStorage[2];
      v28 = _swiftEmptyArrayStorage[3];
      if (v29 >= v28 >> 1)
      {
        result = sub_10002B3C0((v28 > 1), v29 + 1, 1);
      }

      ++v19;
      _swiftEmptyArrayStorage[2] = v29 + 1;
      v30 = &_swiftEmptyArrayStorage[2 * v29];
      v30[4] = v23;
      v30[5] = v25;
      if (v15 == v19)
      {
        goto LABEL_11;
      }
    }

    v52 = *v53;
    (*v53)(v26, v27);

    v20 = 0;
LABEL_11:
    v0 = v50;
    *(v50[182] + v47[7]) = v20;
    sub_10002B3C0(0, v15, 0);
    do
    {
      v35 = v50[188];
      v36 = v50[186];
      v22(v35, v21, v36);
      v37 = Handle.identifier.getter();
      v39 = v38;
      v52(v35, v36);
      v41 = _swiftEmptyArrayStorage[2];
      v40 = _swiftEmptyArrayStorage[3];
      if (v41 >= v40 >> 1)
      {
        sub_10002B3C0((v40 > 1), v41 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v41 + 1;
      v42 = &_swiftEmptyArrayStorage[2 * v41];
      v42[4] = v37;
      v42[5] = v39;
      v21 += v51;
      --v15;
    }

    while (v15);
    v43 = v50[185];
    v44 = v50[183];

    v45 = type metadata accessor for GroupID();
    (*(*(v45 - 8) + 8))(v43, v45);
    sub_100157E4C(v44, type metadata accessor for ClientContext);
    v11 = v47;
  }

  else
  {
    v31 = v0[185];
    v32 = v0[183];
    v33 = v0[182];

    *(v33 + v11[7]) = _swiftEmptyArrayStorage;
    v34 = type metadata accessor for GroupID();
    (*(*(v34 - 8) + 8))(v31, v34);
    sub_100157E4C(v32, type metadata accessor for ClientContext);
  }

  *(v0[182] + v11[8]) = _swiftEmptyArrayStorage;

  v46 = v0[1];

  return v46();
}

uint64_t sub_100156020(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, int a5)
{
  v18 = a5;
  v15 = a4;
  v9 = sub_10004B564(&qword_1005ACCE0, &qword_1004C81A8);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v14 - v11;
  sub_100011AEC(a1, a1[3]);
  sub_100158630();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v16 = a2;
  v19 = 0;
  sub_10004B564(&qword_1005AC968, &qword_1004C7670);
  sub_10014D0DC(&qword_1005AC980, &protocol witness table for String, &protocol conformance descriptor for <> [A : B]);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v5)
  {
    v16 = a3;
    v17 = v15;
    v19 = 1;
    sub_10002CF44(a3, v15);
    sub_10010670C();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_10001A794(v16, v17);
    LOBYTE(v16) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_100156238()
{
  v1 = 2036625250;
  if (*v0 != 1)
  {
    v1 = 0x6341726573557369;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_100156298@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100158244(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1001562C0(uint64_t a1)
{
  v2 = sub_100158630();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001562FC(uint64_t a1)
{
  v2 = sub_100158630();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100156338@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_10015836C(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6;
    *(a1 + 24) = v7 & 1;
  }

  return result;
}

uint64_t sub_100156394(uint64_t a1)
{
  v2 = sub_10006DB78();

  return RequestContentRepresentable.description.getter(a1, v2);
}

uint64_t sub_1001563D0(void *a1)
{
  v2 = v1;
  v4 = sub_10004B564(&qword_1005ACCB8, &qword_1004C8188);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v22 - v6;
  sub_100011AEC(a1, a1[3]);
  sub_1001581A8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8 = v2[7];
  v9 = v2[5];
  v41 = v2[6];
  v42 = v8;
  v10 = v2[7];
  v11 = v2[9];
  v43 = v2[8];
  v44 = v11;
  v12 = v2[3];
  v13 = v2[1];
  v37 = v2[2];
  v38 = v12;
  v14 = v2[3];
  v15 = v2[5];
  v39 = v2[4];
  v40 = v15;
  v16 = v2[1];
  v36[0] = *v2;
  v36[1] = v16;
  v32 = v41;
  v33 = v10;
  v17 = v2[9];
  v34 = v43;
  v35 = v17;
  v28 = v37;
  v29 = v14;
  v30 = v39;
  v31 = v9;
  v26 = v36[0];
  v27 = v13;
  v25 = 0;
  sub_100005F04(v36, v24, &qword_1005A9328, &unk_1004C7F20);
  sub_100145258();
  v18 = v45;
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  v24[6] = v32;
  v24[7] = v33;
  v24[8] = v34;
  v24[9] = v35;
  v24[2] = v28;
  v24[3] = v29;
  v24[4] = v30;
  v24[5] = v31;
  v24[0] = v26;
  v24[1] = v27;
  sub_100002CE0(v24, &qword_1005A9328, &unk_1004C7F20);
  if (v18)
  {
    return (*(v5 + 8))(v7, v4);
  }

  v19 = type metadata accessor for FriendshipStopOfferContent(0);
  LOBYTE(v23) = 1;
  type metadata accessor for ClientContext(0);
  sub_1001581FC(&qword_1005AC568, type metadata accessor for ClientContext, &unk_1004C9A18);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  LOBYTE(v23) = 2;
  KeyedEncodingContainer.encode(_:forKey:)();
  v23 = *(v2 + *(v19 + 28));
  HIBYTE(v22) = 3;
  v21 = sub_10004B564(&qword_1005A9630, &qword_1004C5680);
  sub_10001CCC4(&qword_1005A9EA8, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
  v45 = v21;
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  v23 = *(v2 + *(v19 + 32));
  HIBYTE(v22) = 4;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v5 + 8))(v7, 0);
}

void sub_1001567AC(void *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v27 = type metadata accessor for ClientContext(0);
  __chkstk_darwin(v27);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10004B564(&qword_1005ACCC8, &qword_1004C8190);
  v28 = *(v5 - 8);
  v29 = v5;
  __chkstk_darwin(v5);
  v7 = &v24 - v6;
  v8 = type metadata accessor for FriendshipStopOfferContent(0);
  __chkstk_darwin(v8);
  v10 = (&v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = a1[3];
  v44 = a1;
  sub_100011AEC(a1, v11);
  sub_1001581A8();
  v12 = v7;
  v13 = v30;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v13)
  {
    sub_100004984(v44);
  }

  else
  {
    v25 = v8;
    v33 = 0;
    sub_1001452AC();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v14 = v41;
    v10[6] = v40;
    v10[7] = v14;
    v15 = v43;
    v10[8] = v42;
    v10[9] = v15;
    v16 = v37;
    v10[2] = v36;
    v10[3] = v16;
    v17 = v39;
    v10[4] = v38;
    v10[5] = v17;
    v18 = v35;
    *v10 = v34;
    v10[1] = v18;
    LOBYTE(v32) = 1;
    sub_1001581FC(&qword_1005AC580, type metadata accessor for ClientContext, &unk_1004C9A40);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v19 = v25;
    sub_100144E70(v4, v10 + *(v25 + 20));
    LOBYTE(v32) = 2;
    v20 = KeyedDecodingContainer.decode(_:forKey:)();
    v21 = (v10 + *(v19 + 24));
    *v21 = v20;
    v21[1] = v22;
    sub_10004B564(&qword_1005A9630, &qword_1004C5680);
    v31 = 3;
    sub_10001CCC4(&qword_1005A9E80, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v23 = v25;
    **(v25 + 28) = v32;
    v31 = 4;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v28 + 8))(v12, v29);
    **(v23 + 32) = v32;
    sub_100157DE4(0, v26, type metadata accessor for FriendshipStopOfferContent);
    sub_100004984(v44);
    sub_100157E4C(0, type metadata accessor for FriendshipStopOfferContent);
  }
}

uint64_t sub_100156CF8()
{
  v1 = *v0;
  v2 = 0x6F43726576726573;
  v3 = 0x644970756F7267;
  v4 = 0x6449646E65697266;
  if (v1 != 3)
  {
    v4 = 0x73656C646E6168;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6F43746E65696C63;
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

uint64_t sub_100156DA0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1001588B4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100156DC8(uint64_t a1)
{
  v2 = sub_1001581A8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100156E04(uint64_t a1)
{
  v2 = sub_1001581A8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100156E70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = type metadata accessor for JSONEncoder.DateEncodingStrategy();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v5 = type metadata accessor for ClientOrigin();
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();
  v6 = type metadata accessor for RequestOrigin();
  v3[11] = v6;
  v3[12] = *(v6 - 8);
  v3[13] = swift_task_alloc();
  v7 = type metadata accessor for GroupID();
  v3[14] = v7;
  v3[15] = *(v7 - 8);
  v3[16] = swift_task_alloc();
  v3[17] = type metadata accessor for FriendshipStopOfferContent(0);
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  v8 = type metadata accessor for Account();
  v3[21] = v8;
  v3[22] = *(v8 - 8);
  v3[23] = swift_task_alloc();
  sub_10004B564(&qword_1005AC488, &unk_1004C8430);
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();
  sub_10004B564(&qword_1005B3360, &unk_1004C6AA0);
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();
  type metadata accessor for ClientContext(0);
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();

  return _swift_task_switch(sub_1001571AC, 0, 0);
}

uint64_t sub_1001571AC()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 200);
  v15 = *(v0 + 192);
  v16 = *(v0 + 208);
  v3 = *(v0 + 176);
  v4 = *(v0 + 184);
  v5 = *(v0 + 168);
  v7 = *(v0 + 88);
  v6 = *(v0 + 96);
  v8 = *(v0 + 16);
  *(v0 + 272) = 1;
  *(v0 + 240) = sub_10014ABCC();
  FriendshipRequest.callerHandle.getter();
  FriendshipRequest.origin.getter();
  (*(v6 + 56))(v2, 0, 1, v7);
  (*(v3 + 16))(v4, v8, v5);
  sub_100005F04(v2, v15, &qword_1005AC488, &unk_1004C8430);
  sub_100005F04(v1, v16, &qword_1005B3360, &unk_1004C6AA0);
  v9 = swift_task_alloc();
  *(v0 + 248) = v9;
  *v9 = v0;
  v9[1] = sub_100157324;
  v10 = *(v0 + 232);
  v11 = *(v0 + 208);
  v12 = *(v0 + 184);
  v13 = *(v0 + 192);

  return sub_1001667E8(v10, v12, v13, v11, _swiftEmptyArrayStorage);
}

uint64_t sub_100157324()
{
  v1 = *(*v0 + 216);
  v2 = *(*v0 + 200);

  sub_100002CE0(v2, &qword_1005AC488, &unk_1004C8430);
  sub_100002CE0(v1, &qword_1005B3360, &unk_1004C6AA0);

  return _swift_task_switch(sub_100157478, 0, 0);
}

uint64_t sub_100157478()
{
  v2 = v0[12];
  v1 = v0[13];
  v4 = v0[10];
  v3 = v0[11];
  v5 = v0[8];
  v6 = v0[9];
  sub_100157DE4(v0[29], v0[28], type metadata accessor for ClientContext);
  FriendshipRequest.origin.getter();
  v7 = FriendshipRequest.isFromGroup.getter();
  RequestOrigin.origin.getter();
  (*(v2 + 8))(v1, v3);
  if ((*(v6 + 88))(v4, v5) == enum case for ClientOrigin.messagesApp(_:))
  {
    if (v7)
    {
      v8 = &enum case for GroupID.group(_:);
    }

    else
    {
      v8 = &enum case for GroupID.oneToOne(_:);
    }

    (*(v0[15] + 104))(v0[16], *v8, v0[14]);
  }

  else
  {
    v10 = v0[9];
    v9 = v0[10];
    v11 = v0[8];
    (*(v0[15] + 104))(v0[16], enum case for GroupID.oneToOne(_:), v0[14]);
    (*(v10 + 8))(v9, v11);
  }

  v12 = swift_task_alloc();
  v0[32] = v12;
  *v12 = v0;
  v12[1] = sub_100157638;
  v13 = v0[28];
  v14 = v0[20];
  v15 = v0[16];
  v16 = v0[3];

  return sub_100155438(v14, v13, v16, v15);
}

uint64_t sub_100157638()
{
  *(*v1 + 264) = v0;

  if (v0)
  {
    v2 = sub_100157BE0;
  }

  else
  {
    v2 = sub_10015774C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10015774C()
{
  v35 = v0;
  if (qword_1005A7F88 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 152);
  v2 = *(v0 + 160);
  v3 = type metadata accessor for Logger();
  sub_10000A6F0(v3, qword_1005DFC28);
  sub_100157DE4(v2, v1, type metadata accessor for FriendshipStopOfferContent);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 152);
  if (v6)
  {
    v8 = *(v0 + 144);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v34 = v10;
    *v9 = 136315138;
    sub_100157DE4(v7, v8, type metadata accessor for FriendshipStopOfferContent);
    v11 = String.init<A>(describing:)();
    v13 = v12;
    sub_100157E4C(v7, type metadata accessor for FriendshipStopOfferContent);
    v14 = sub_10000D01C(v11, v13, &v34);

    *(v9 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v4, v5, "Request content: %s", v9, 0xCu);
    sub_100004984(v10);
  }

  else
  {

    sub_100157E4C(v7, type metadata accessor for FriendshipStopOfferContent);
  }

  v15 = *(v0 + 264);
  v17 = *(v0 + 48);
  v16 = *(v0 + 56);
  v18 = *(v0 + 40);
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  *v16 = sub_10019E890;
  v16[1] = 0;
  (*(v17 + 104))(v16, enum case for JSONEncoder.DateEncodingStrategy.custom(_:), v18);
  dispatch thunk of JSONEncoder.dateEncodingStrategy.setter();
  sub_1001581FC(&qword_1005ACBF8, type metadata accessor for FriendshipStopOfferContent, &unk_1004C8130);
  v19 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  if (v15)
  {

    v21 = 0;
    v22 = 0xF000000000000000;
  }

  else
  {
    v21 = v19;
    v22 = v20;
  }

  v23 = *(v0 + 232);
  v24 = *(v0 + 168);
  v25 = *(v0 + 176);
  v26 = *(v0 + 160);
  v27 = *(v0 + 32);
  v28 = *(v0 + 16);
  v29 = type metadata accessor for FriendshipRequest();
  (*(*(v29 - 8) + 8))(v27, v29);
  (*(v25 + 8))(v28, v24);
  sub_100157E4C(v26, type metadata accessor for FriendshipStopOfferContent);
  sub_100157E4C(v23, type metadata accessor for ClientContext);
  sub_10001A794(0, 0xF000000000000000);
  v30 = *(v0 + 272);

  sub_10002CF44(v21, v22);

  sub_10001A794(v21, v22);

  v31 = *(v0 + 8);
  v32 = *(v0 + 240);

  return v31(v32, v21, v22, v30);
}

uint64_t sub_100157BE0()
{
  v1 = v0[29];
  v3 = v0[21];
  v2 = v0[22];
  v4 = v0[4];
  v5 = v0[2];
  v6 = type metadata accessor for FriendshipRequest();
  (*(*(v6 - 8) + 8))(v4, v6);
  (*(v2 + 8))(v5, v3);
  sub_100157E4C(v1, type metadata accessor for ClientContext);

  sub_10001A794(0, 0xF000000000000000);

  v7 = v0[1];

  return v7();
}

uint64_t type metadata accessor for FriendshipStopOfferContent(uint64_t a1)
{
  result = qword_1005ACC58;
  if (!qword_1005ACC58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100157DE4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100157E4C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_100157ED4(uint64_t a1)
{
  sub_100154568(319, &qword_1005AC500, &type metadata for ServerContext, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    type metadata accessor for ClientContext(319);
    if (v2 <= 0x3F)
    {
      sub_100149B90(319);
      if (v3 <= 0x3F)
      {
        sub_100154568(319, &unk_1005ACAF0, &type metadata for String, &type metadata accessor for Array);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_100157FD8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_100158020(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100158078()
{
  result = qword_1005ACCA0;
  if (!qword_1005ACCA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ACCA0);
  }

  return result;
}

uint64_t sub_1001580CC(uint64_t a1)
{
  *(a1 + 8) = sub_1001581FC(&qword_1005ACCA8, type metadata accessor for FriendshipStopOfferContent, &unk_1004C80EC);
  result = sub_1001581FC(&qword_1005ACBF8, type metadata accessor for FriendshipStopOfferContent, &unk_1004C8130);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_100158154()
{
  result = qword_1005ACCB0;
  if (!qword_1005ACCB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ACCB0);
  }

  return result;
}

unint64_t sub_1001581A8()
{
  result = qword_1005ACCC0;
  if (!qword_1005ACCC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ACCC0);
  }

  return result;
}

uint64_t sub_1001581FC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100158244(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x80000001004E2A70 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 2036625250 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6341726573557369 && a2 == 0xEC0000006E6F6974)
  {

    return 2;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_10015836C(void *a1)
{
  v3 = sub_10004B564(&qword_1005ACCD0, &unk_1004C8198);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v11 - v5;
  v7 = a1[3];
  sub_100011AEC(a1, v7);
  sub_100158630();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_100004984(a1);
    sub_10001A794(0, 0xF000000000000000);
  }

  else
  {
    sub_10004B564(&qword_1005AC968, &qword_1004C7670);
    v12 = 0;
    sub_10014D0DC(&qword_1005AC970, &protocol witness table for String, &protocol conformance descriptor for <> [A : B]);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v7 = v11[0];
    v12 = 1;
    sub_1000F4D64();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v9 = v11[0];
    v10 = v11[1];
    sub_10001A794(0, 0xF000000000000000);
    LOBYTE(v11[0]) = 2;
    KeyedDecodingContainer.decode(_:forKey:)();
    (*(v4 + 8))(v6, v3);

    sub_10002CF44(v9, v10);
    sub_100004984(a1);

    sub_10001A794(v9, v10);
  }

  return v7;
}

unint64_t sub_100158630()
{
  result = qword_1005ACCD8;
  if (!qword_1005ACCD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ACCD8);
  }

  return result;
}

unint64_t sub_1001586A8()
{
  result = qword_1005ACCE8;
  if (!qword_1005ACCE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ACCE8);
  }

  return result;
}

unint64_t sub_100158700()
{
  result = qword_1005ACCF0;
  if (!qword_1005ACCF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ACCF0);
  }

  return result;
}

unint64_t sub_100158758()
{
  result = qword_1005ACCF8;
  if (!qword_1005ACCF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ACCF8);
  }

  return result;
}

unint64_t sub_1001587B0()
{
  result = qword_1005ACD00;
  if (!qword_1005ACD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ACD00);
  }

  return result;
}

unint64_t sub_100158808()
{
  result = qword_1005ACD08;
  if (!qword_1005ACD08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ACD08);
  }

  return result;
}

unint64_t sub_100158860()
{
  result = qword_1005ACD10;
  if (!qword_1005ACD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ACD10);
  }

  return result;
}

uint64_t sub_1001588B4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F43726576726573 && a2 == 0xED0000747865746ELL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F43746E65696C63 && a2 == 0xED0000747865746ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x644970756F7267 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6449646E65697266 && a2 == 0xE900000000000073 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x73656C646E6168 && a2 == 0xE700000000000000)
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

uint64_t sub_100158A7C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FriendshipResponseToInviteType();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_10006DF9C();
  (*(v5 + 16))(v7, a2, v4);
  v8 = (*(v5 + 88))(v7, v4);
  if (v8 == enum case for FriendshipResponseToInviteType.accept(_:) || v8 == enum case for FriendshipResponseToInviteType.decline(_:))
  {
    v10 = 0xEF65736E6F707365;
    v11 = 0x52657469766E692FLL;
LABEL_9:
    v12 = URLComponents.path.modify();
    v13._countAndFlagsBits = v11;
    v13._object = v10;
    String.append(_:)(v13);

    v12(v16, 0);
    (*(v5 + 8))(a2, v4);
    v14 = type metadata accessor for Account();
    return (*(*(v14 - 8) + 8))(a1, v14);
  }

  if (v8 == enum case for FriendshipResponseToInviteType.notNow(_:))
  {
    v10 = 0xE700000000000000;
    v11 = 0x776F4E746F6E2FLL;
    goto LABEL_9;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t type metadata accessor for RespondToInviteEndpoint(uint64_t a1)
{
  result = qword_1005ACD70;
  if (!qword_1005ACD70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100158D50(void *a1)
{
  v2 = v1;
  v4 = sub_10004B564(&qword_1005ACE60, &qword_1004C8638);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v20 - v6;
  sub_100011AEC(a1, a1[3]);
  sub_10015AC4C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8 = v2[7];
  v9 = v2[5];
  v48 = v2[6];
  v49 = v8;
  v10 = v2[7];
  v11 = v2[9];
  v50 = v2[8];
  v51 = v11;
  v12 = v2[3];
  v13 = v2[1];
  v44 = v2[2];
  v45 = v12;
  v14 = v2[3];
  v15 = v2[5];
  v46 = v2[4];
  v47 = v15;
  v16 = v2[1];
  v43[0] = *v2;
  v43[1] = v16;
  v39 = v48;
  v40 = v10;
  v17 = v2[9];
  v41 = v50;
  v42 = v17;
  v35 = v44;
  v36 = v14;
  v37 = v46;
  v38 = v9;
  v33 = v43[0];
  v34 = v13;
  v32 = 0;
  sub_100005F04(v43, &v22, &qword_1005A9328, &unk_1004C7F20);
  sub_100145258();
  v18 = v52;
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (v18)
  {
    v28 = v39;
    v29 = v40;
    v30 = v41;
    v31 = v42;
    v24 = v35;
    v25 = v36;
    v26 = v37;
    v27 = v38;
    v22 = v33;
    v23 = v34;
    sub_100002CE0(&v22, &qword_1005A9328, &unk_1004C7F20);
  }

  else
  {
    v28 = v39;
    v29 = v40;
    v30 = v41;
    v31 = v42;
    v24 = v35;
    v25 = v36;
    v26 = v37;
    v27 = v38;
    v22 = v33;
    v23 = v34;
    sub_100002CE0(&v22, &qword_1005A9328, &unk_1004C7F20);
    type metadata accessor for RespondToInviteRequestContent(0);
    v21 = 1;
    type metadata accessor for ClientContext(0);
    sub_100009170(&qword_1005AC568, type metadata accessor for ClientContext, &unk_1004C9A18);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v21 = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v21 = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v5 + 8))(v7, v4);
}

void sub_10015908C(void *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v30 = type metadata accessor for ClientContext(0);
  __chkstk_darwin(v30);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10004B564(&qword_1005ACE70, &qword_1004C8640);
  v31 = *(v5 - 8);
  v32 = v5;
  __chkstk_darwin(v5);
  v7 = &v29 - v6;
  v8 = type metadata accessor for RespondToInviteRequestContent(0);
  __chkstk_darwin(v8);
  v10 = (&v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = a1[3];
  v34 = a1;
  sub_100011AEC(a1, v11);
  sub_10015AC4C();
  v12 = v33;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v12)
  {
    sub_100004984(v34);
  }

  else
  {
    v33 = v8;
    v46 = 0;
    sub_1001452AC();
    v13 = v7;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v14 = v43;
    v10[6] = v42;
    v10[7] = v14;
    v15 = v45;
    v10[8] = v44;
    v10[9] = v15;
    v16 = v39;
    v10[2] = v38;
    v10[3] = v16;
    v17 = v41;
    v10[4] = v40;
    v10[5] = v17;
    v18 = v37;
    *v10 = v36;
    v10[1] = v18;
    v35 = 1;
    sub_100009170(&qword_1005AC580, type metadata accessor for ClientContext, &unk_1004C9A40);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v19 = v33;
    sub_10015ACA0(v4, v10 + *(v33 + 20), type metadata accessor for ClientContext);
    v35 = 2;
    v20 = KeyedDecodingContainer.decode(_:forKey:)();
    v21 = (v10 + *(v19 + 24));
    *v21 = v20;
    v21[1] = v22;
    v35 = 3;
    v23 = KeyedDecodingContainer.decode(_:forKey:)();
    v30 = v24;
    v25 = v23;
    (*(v31 + 8))(v13, v32);
    v26 = (v10 + *(v19 + 28));
    v27 = v29;
    v28 = v30;
    *v26 = v25;
    v26[1] = v28;
    sub_10015A984(v10, v27, type metadata accessor for RespondToInviteRequestContent);
    sub_100004984(v34);
    sub_10015A9EC(v10, type metadata accessor for RespondToInviteRequestContent);
  }
}

uint64_t sub_10015952C(uint64_t a1)
{
  v2 = sub_10006DF48();

  return RequestContentRepresentable.description.getter(a1, v2);
}

uint64_t sub_100159568()
{
  v1 = 0x6F43726576726573;
  v2 = 25705;
  if (*v0 != 2)
  {
    v2 = 0x6465747065636361;
  }

  if (*v0)
  {
    v1 = 0x6F43746E65696C63;
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

uint64_t sub_1001595E0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10015AE20(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100159608(uint64_t a1)
{
  v2 = sub_10015AC4C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100159644(uint64_t a1)
{
  v2 = sub_10015AC4C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001596B0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 1488) = a6;
  *(v6 + 1480) = a5;
  *(v6 + 1704) = a4;
  *(v6 + 1472) = a3;
  *(v6 + 1464) = a2;
  *(v6 + 1456) = a1;
  v7 = type metadata accessor for JSONEncoder.DateEncodingStrategy();
  *(v6 + 1496) = v7;
  *(v6 + 1504) = *(v7 - 8);
  *(v6 + 1512) = swift_task_alloc();
  *(v6 + 1520) = type metadata accessor for RespondToInviteRequestContent(0);
  *(v6 + 1528) = swift_task_alloc();
  *(v6 + 1536) = swift_task_alloc();
  *(v6 + 1544) = swift_task_alloc();
  *(v6 + 1552) = swift_task_alloc();
  sub_10004B564(&qword_1005B3360, &unk_1004C6AA0);
  *(v6 + 1560) = swift_task_alloc();
  v8 = type metadata accessor for Account();
  *(v6 + 1568) = v8;
  *(v6 + 1576) = *(v8 - 8);
  *(v6 + 1584) = swift_task_alloc();
  sub_10004B564(&qword_1005AC488, &unk_1004C8430);
  *(v6 + 1592) = swift_task_alloc();
  *(v6 + 1600) = swift_task_alloc();
  type metadata accessor for ClientContext(0);
  *(v6 + 1608) = swift_task_alloc();
  *(v6 + 1616) = swift_task_alloc();

  return _swift_task_switch(sub_1001598E8, 0, 0);
}

uint64_t sub_1001598E8()
{
  v1 = v0[200];
  v2 = v0[199];
  v3 = v0[198];
  v4 = v0[197];
  v5 = v0[196];
  v6 = v0[186];
  v16 = v0[185];
  v17 = v0[195];
  v7 = v0[182];
  v0[203] = sub_10014ABCC();
  v8 = type metadata accessor for RequestOrigin();
  v0[204] = v8;
  v9 = *(v8 - 8);
  v0[205] = v9;
  (*(v9 + 16))(v1, v6, v8);
  (*(v9 + 56))(v1, 0, 1, v8);
  (*(v4 + 16))(v3, v7, v5);
  sub_100005F04(v1, v2, &qword_1005AC488, &unk_1004C8430);
  sub_100005F04(v16, v17, &qword_1005B3360, &unk_1004C6AA0);
  v10 = swift_task_alloc();
  v0[206] = v10;
  *v10 = v0;
  v10[1] = sub_100159AAC;
  v11 = v0[202];
  v12 = v0[199];
  v13 = v0[198];
  v14 = v0[195];

  return sub_1001667E8(v11, v13, v12, v14, _swiftEmptyArrayStorage);
}

uint64_t sub_100159AAC()
{
  v1 = *v0;
  v2 = *(*v0 + 1616);
  v3 = *(*v0 + 1608);
  v4 = *(*v0 + 1600);
  v7 = *v0;

  sub_100002CE0(v4, &qword_1005AC488, &unk_1004C8430);
  sub_10015A984(v2, v3, type metadata accessor for ClientContext);
  v5 = swift_task_alloc();
  *(v1 + 1656) = v5;
  *v5 = v7;
  v5[1] = sub_100159C54;

  return daemon.getter();
}

uint64_t sub_100159C54(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 1664) = a1;

  v3 = swift_task_alloc();
  *(v2 + 1672) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for DataManager(0);
  v6 = sub_100009170(&unk_1005AFA50, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100009170(&qword_1005A90D0, type metadata accessor for DataManager, &unk_1004D1410);
  *v3 = v9;
  v3[1] = sub_100159E30;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100159E30(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v3[210] = a1;
  v3[211] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_10015A20C, 0, 0);
  }

  else
  {

    v5 = swift_task_alloc();
    v3[212] = v5;
    *v5 = v4;
    v5[1] = sub_100159FC0;

    return sub_100245BB8((v3 + 62));
  }
}

uint64_t sub_100159FC0()
{
  v1 = *(*v0 + 1680);

  return _swift_task_switch(sub_10015A0D0, v1, 0);
}

uint64_t sub_10015A0D0()
{
  memcpy(v0 + 1, v0 + 31, 0x1E0uLL);
  if (sub_100033B90((v0 + 1)) == 1)
  {
    sub_10003170C(v0 + 61);
  }

  else
  {
    v1 = v0[14];
    v0[77] = v0[13];
    v0[78] = v1;
    v2 = v0[16];
    v0[79] = v0[15];
    v0[80] = v2;
    v3 = v0[10];
    v0[73] = v0[9];
    v0[74] = v3;
    v4 = v0[12];
    v0[75] = v0[11];
    v0[76] = v4;
    v5 = v0[8];
    v0[71] = v0[7];
    v0[72] = v5;
    sub_100005F04((v0 + 71), (v0 + 81), &qword_1005A9328, &unk_1004C7F20);
    sub_100002CE0((v0 + 31), &qword_1005A90D8, &unk_1004C6AB0);
    v6 = v0[78];
    v0[67] = v0[77];
    v0[68] = v6;
    v7 = v0[80];
    v0[69] = v0[79];
    v0[70] = v7;
    v8 = v0[74];
    v0[63] = v0[73];
    v0[64] = v8;
    v9 = v0[76];
    v0[65] = v0[75];
    v0[66] = v9;
    v10 = v0[72];
    v0[61] = v0[71];
    v0[62] = v10;
  }

  return _swift_task_switch(sub_10015A3D4, 0, 0);
}

uint64_t sub_10015A20C()
{
  v1 = v0[205];
  v2 = v0[204];
  v3 = v0[202];
  v4 = v0[201];
  v5 = v0[197];
  v11 = v0[196];
  v6 = v0[186];
  v7 = v0[185];
  v8 = v0[182];

  sub_10015A9EC(v4, type metadata accessor for ClientContext);
  (*(v1 + 8))(v6, v2);
  sub_100002CE0(v7, &qword_1005B3360, &unk_1004C6AA0);
  (*(v5 + 8))(v8, v11);
  sub_10015A9EC(v3, type metadata accessor for ClientContext);

  v9 = v0[1];

  return v9();
}

uint64_t sub_10015A3D4()
{
  v52 = v0;
  v1 = *(v0 + 1608);
  v2 = *(v0 + 1552);
  v3 = *(v0 + 1544);
  v4 = *(v0 + 1520);
  v5 = *(v0 + 1704);
  v6 = *(v0 + 1472);
  v7 = *(v0 + 1464);

  v8 = *(v0 + 992);
  *v3 = *(v0 + 976);
  v3[1] = v8;
  v9 = *(v0 + 1008);
  v10 = *(v0 + 1024);
  v11 = *(v0 + 1056);
  v3[4] = *(v0 + 1040);
  v3[5] = v11;
  v3[2] = v9;
  v3[3] = v10;
  v12 = *(v0 + 1072);
  v13 = *(v0 + 1088);
  v14 = *(v0 + 1120);
  v3[8] = *(v0 + 1104);
  v3[9] = v14;
  v3[6] = v12;
  v3[7] = v13;
  sub_10015A984(v1, v3 + v4[5], type metadata accessor for ClientContext);
  v15 = (v3 + v4[6]);
  *v15 = v7;
  v15[1] = v6;
  v16 = v5 == 0;
  if (v5)
  {
    v17 = 1702195828;
  }

  else
  {
    v17 = 0x65736C6166;
  }

  if (v16)
  {
    v18 = 0xE500000000000000;
  }

  else
  {
    v18 = 0xE400000000000000;
  }

  sub_10015A9EC(v1, type metadata accessor for ClientContext);
  v19 = (v3 + v4[7]);
  *v19 = v17;
  v19[1] = v18;
  sub_10015ACA0(v3, v2, type metadata accessor for RespondToInviteRequestContent);
  if (qword_1005A7F88 != -1)
  {
    swift_once();
  }

  v20 = *(v0 + 1552);
  v21 = *(v0 + 1536);
  v22 = type metadata accessor for Logger();
  sub_10000A6F0(v22, qword_1005DFC28);
  sub_10015A984(v20, v21, type metadata accessor for RespondToInviteRequestContent);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.debug.getter();
  v25 = os_log_type_enabled(v23, v24);
  v26 = *(v0 + 1536);
  if (v25)
  {
    v27 = *(v0 + 1528);
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v51 = v29;
    *v28 = 136315138;
    sub_10015A984(v26, v27, type metadata accessor for RespondToInviteRequestContent);
    v30 = String.init<A>(describing:)();
    v32 = v31;
    sub_10015A9EC(v26, type metadata accessor for RespondToInviteRequestContent);
    v33 = sub_10000D01C(v30, v32, &v51);

    *(v28 + 4) = v33;
    _os_log_impl(&_mh_execute_header, v23, v24, "Request content: %s", v28, 0xCu);
    sub_100004984(v29);
  }

  else
  {

    sub_10015A9EC(v26, type metadata accessor for RespondToInviteRequestContent);
  }

  v34 = *(v0 + 1688);
  v35 = *(v0 + 1512);
  v36 = *(v0 + 1504);
  v37 = *(v0 + 1496);
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  *v35 = sub_10019E890;
  v35[1] = 0;
  (*(v36 + 104))(v35, enum case for JSONEncoder.DateEncodingStrategy.custom(_:), v37);
  dispatch thunk of JSONEncoder.dateEncodingStrategy.setter();
  sub_100009170(&qword_1005ACDA8, type metadata accessor for RespondToInviteRequestContent, &unk_1004C85DC);
  v38 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  if (v34)
  {

    v40 = 0;
    v41 = 0xF000000000000000;
  }

  else
  {
    v40 = v38;
    v41 = v39;
  }

  v42 = *(v0 + 1616);
  v43 = *(v0 + 1576);
  v44 = *(v0 + 1568);
  v45 = *(v0 + 1552);
  v46 = *(v0 + 1480);
  v47 = *(v0 + 1456);
  (*(*(v0 + 1640) + 8))(*(v0 + 1488), *(v0 + 1632));
  sub_100002CE0(v46, &qword_1005B3360, &unk_1004C6AA0);
  (*(v43 + 8))(v47, v44);
  sub_10015A9EC(v45, type metadata accessor for RespondToInviteRequestContent);
  sub_10015A9EC(v42, type metadata accessor for ClientContext);

  sub_10002CF44(v40, v41);

  sub_10001A794(v40, v41);

  v48 = *(v0 + 8);
  v49 = *(v0 + 1624);

  return v48(v49, v40, v41);
}

uint64_t type metadata accessor for RespondToInviteRequestContent(uint64_t a1)
{
  result = qword_1005ACE08;
  if (!qword_1005ACE08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10015A984(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10015A9EC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_10015AA74(uint64_t a1)
{
  sub_100144FE8();
  if (v1 <= 0x3F)
  {
    type metadata accessor for ClientContext(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_10015AB1C()
{
  result = qword_1005ACE48;
  if (!qword_1005ACE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ACE48);
  }

  return result;
}

uint64_t sub_10015AB70(uint64_t a1)
{
  *(a1 + 8) = sub_100009170(&qword_1005ACE50, type metadata accessor for RespondToInviteRequestContent, &unk_1004C8598);
  result = sub_100009170(&qword_1005ACDA8, type metadata accessor for RespondToInviteRequestContent, &unk_1004C85DC);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_10015ABF8()
{
  result = qword_1005ACE58;
  if (!qword_1005ACE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ACE58);
  }

  return result;
}

unint64_t sub_10015AC4C()
{
  result = qword_1005ACE68;
  if (!qword_1005ACE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ACE68);
  }

  return result;
}

uint64_t sub_10015ACA0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_10015AD1C()
{
  result = qword_1005ACE78;
  if (!qword_1005ACE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ACE78);
  }

  return result;
}

unint64_t sub_10015AD74()
{
  result = qword_1005ACE80;
  if (!qword_1005ACE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ACE80);
  }

  return result;
}

unint64_t sub_10015ADCC()
{
  result = qword_1005ACE88;
  if (!qword_1005ACE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ACE88);
  }

  return result;
}

uint64_t sub_10015AE20(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F43726576726573 && a2 == 0xED0000747865746ELL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F43746E65696C63 && a2 == 0xED0000747865746ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 25705 && a2 == 0xE200000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6465747065636361 && a2 == 0xE800000000000000)
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

uint64_t sub_10015AF8C(void *a1)
{
  v3 = v1;
  v5 = sub_10004B564(&qword_1005ACF40, &qword_1004C8960);
  v41 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v19[-v6];
  sub_100011AEC(a1, a1[3]);
  sub_10015CC80();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8 = v3[7];
  v9 = v3[5];
  v37 = v3[6];
  v38 = v8;
  v10 = v3[7];
  v11 = v3[9];
  v39 = v3[8];
  v40 = v11;
  v12 = v3[3];
  v13 = v3[1];
  v33 = v3[2];
  v34 = v12;
  v14 = v3[3];
  v15 = v3[5];
  v35 = v3[4];
  v36 = v15;
  v16 = v3[1];
  v32[0] = *v3;
  v32[1] = v16;
  v28 = v37;
  v29 = v10;
  v17 = v3[9];
  v30 = v39;
  v31 = v17;
  v24 = v33;
  v25 = v14;
  v26 = v35;
  v27 = v9;
  v22 = v32[0];
  v23 = v13;
  v21 = 0;
  sub_100005F04(v32, v20, &qword_1005A9328, &unk_1004C7F20);
  sub_100145258();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  v20[6] = v28;
  v20[7] = v29;
  v20[8] = v30;
  v20[9] = v31;
  v20[2] = v24;
  v20[3] = v25;
  v20[4] = v26;
  v20[5] = v27;
  v20[0] = v22;
  v20[1] = v23;
  sub_100002CE0(v20, &qword_1005A9328, &unk_1004C7F20);
  if (!v2)
  {
    type metadata accessor for InitClientRequestContent(0);
    v19[15] = 1;
    type metadata accessor for ClientContext(0);
    sub_1000091B8(&qword_1005AC568, type metadata accessor for ClientContext, &unk_1004C9A18);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v41 + 8))(v7, v5);
}

uint64_t sub_10015B25C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v3 = type metadata accessor for ClientContext(0);
  __chkstk_darwin(v3);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10004B564(&qword_1005ACF50, &qword_1004C8968);
  v25 = *(v6 - 8);
  v26 = v6;
  __chkstk_darwin(v6);
  v8 = &v23 - v7;
  inited = type metadata accessor for InitClientRequestContent(0);
  __chkstk_darwin(inited);
  v11 = (&v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = a1[3];
  v28 = a1;
  sub_100011AEC(a1, v12);
  sub_10015CC80();
  v13 = v27;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v13)
  {
    return sub_100004984(v28);
  }

  v27 = inited;
  v14 = v25;
  v15 = v5;
  v40 = 0;
  sub_1001452AC();
  v16 = v26;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v17 = v36;
  v11[6] = v35;
  v11[7] = v17;
  v18 = v38;
  v11[8] = v37;
  v11[9] = v18;
  v19 = v32;
  v11[2] = v31;
  v11[3] = v19;
  v20 = v34;
  v11[4] = v33;
  v11[5] = v20;
  v21 = v30;
  *v11 = v29;
  v11[1] = v21;
  v39 = 1;
  sub_1000091B8(&qword_1005AC580, type metadata accessor for ClientContext, &unk_1004C9A40);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v14 + 8))(v8, v16);
  sub_100144E70(v15, v11 + *(v27 + 20));
  sub_10015C9C8(v11, v24, type metadata accessor for InitClientRequestContent);
  sub_100004984(v28);
  return sub_10015CA30(v11, type metadata accessor for InitClientRequestContent);
}

uint64_t sub_10015B604(uint64_t a1)
{
  v2 = sub_10015CCD4();

  return RequestContentRepresentable.description.getter(a1, v2);
}

uint64_t sub_10015B640()
{
  if (*v0)
  {
    return 0x6F43746E65696C63;
  }

  else
  {
    return 0x6F43726576726573;
  }
}

void sub_10015B680(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6F43726576726573 && a2 == 0xED0000747865746ELL;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x6F43746E65696C63 && a2 == 0xED0000747865746ELL)
  {

    v7 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

uint64_t sub_10015B764(uint64_t a1)
{
  v2 = sub_10015CC80();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10015B7A0(uint64_t a1)
{
  v2 = sub_10015CC80();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10015B80C(uint64_t a1)
{
  v1[182] = a1;
  v2 = type metadata accessor for JSONEncoder.DateEncodingStrategy();
  v1[183] = v2;
  v1[184] = *(v2 - 8);
  v1[185] = swift_task_alloc();
  v1[186] = type metadata accessor for InitClientRequestContent(0);
  v1[187] = swift_task_alloc();
  v1[188] = swift_task_alloc();
  v1[189] = swift_task_alloc();
  v3 = type metadata accessor for Account();
  v1[190] = v3;
  v1[191] = *(v3 - 8);
  v1[192] = swift_task_alloc();
  sub_10004B564(&qword_1005AC488, &unk_1004C8430);
  v1[193] = swift_task_alloc();
  v1[194] = swift_task_alloc();
  sub_10004B564(&qword_1005B3360, &unk_1004C6AA0);
  v1[195] = swift_task_alloc();
  v1[196] = swift_task_alloc();
  type metadata accessor for ClientContext(0);
  v1[197] = swift_task_alloc();
  v1[198] = swift_task_alloc();

  return _swift_task_switch(sub_10015BA30, 0, 0);
}

uint64_t sub_10015BA30()
{
  v1 = v0[196];
  v2 = v0[195];
  v3 = v0[194];
  v4 = v0[193];
  v5 = v0[192];
  v6 = v0[191];
  v7 = v0[190];
  v8 = v0[182];
  v0[199] = sub_10014ABCC();
  v9 = type metadata accessor for Handle();
  (*(*(v9 - 8) + 56))(v1, 1, 1, v9);
  v10 = type metadata accessor for RequestOrigin();
  (*(*(v10 - 8) + 56))(v3, 1, 1, v10);
  (*(v6 + 16))(v5, v8, v7);
  sub_100005F04(v3, v4, &qword_1005AC488, &unk_1004C8430);
  sub_100005F04(v1, v2, &qword_1005B3360, &unk_1004C6AA0);
  v11 = swift_task_alloc();
  v0[200] = v11;
  *v11 = v0;
  v11[1] = sub_10015BBEC;
  v12 = v0[198];
  v13 = v0[195];
  v14 = v0[193];
  v15 = v0[192];

  return sub_1001667E8(v12, v15, v14, v13, _swiftEmptyArrayStorage);
}

uint64_t sub_10015BBEC()
{
  v1 = *v0;
  v2 = *(*v0 + 1584);
  v3 = *(*v0 + 1576);
  v4 = *(*v0 + 1568);
  v5 = *(*v0 + 1552);
  v8 = *v0;

  sub_100002CE0(v5, &qword_1005AC488, &unk_1004C8430);
  sub_100002CE0(v4, &qword_1005B3360, &unk_1004C6AA0);
  sub_10015C9C8(v2, v3, type metadata accessor for ClientContext);
  v6 = swift_task_alloc();
  *(v1 + 1608) = v6;
  *v6 = v8;
  v6[1] = sub_10015BDC8;

  return daemon.getter();
}

uint64_t sub_10015BDC8(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 1616) = a1;

  v3 = swift_task_alloc();
  *(v2 + 1624) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for DataManager(0);
  v6 = sub_1000091B8(&unk_1005AFA50, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_1000091B8(&qword_1005A90D0, type metadata accessor for DataManager, &unk_1004D1410);
  *v3 = v9;
  v3[1] = sub_10015BFA4;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_10015BFA4(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v3[204] = a1;
  v3[205] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_10015C380, 0, 0);
  }

  else
  {

    v5 = swift_task_alloc();
    v3[206] = v5;
    *v5 = v4;
    v5[1] = sub_10015C134;

    return sub_100245BB8((v3 + 62));
  }
}

uint64_t sub_10015C134()
{
  v1 = *(*v0 + 1632);

  return _swift_task_switch(sub_10015C244, v1, 0);
}

uint64_t sub_10015C244()
{
  memcpy(v0 + 1, v0 + 31, 0x1E0uLL);
  if (sub_100033B90((v0 + 1)) == 1)
  {
    sub_10003170C(v0 + 61);
  }

  else
  {
    v1 = v0[14];
    v0[77] = v0[13];
    v0[78] = v1;
    v2 = v0[16];
    v0[79] = v0[15];
    v0[80] = v2;
    v3 = v0[10];
    v0[73] = v0[9];
    v0[74] = v3;
    v4 = v0[12];
    v0[75] = v0[11];
    v0[76] = v4;
    v5 = v0[8];
    v0[71] = v0[7];
    v0[72] = v5;
    sub_100005F04((v0 + 71), (v0 + 81), &qword_1005A9328, &unk_1004C7F20);
    sub_100002CE0((v0 + 31), &qword_1005A90D8, &unk_1004C6AB0);
    v6 = v0[78];
    v0[67] = v0[77];
    v0[68] = v6;
    v7 = v0[80];
    v0[69] = v0[79];
    v0[70] = v7;
    v8 = v0[74];
    v0[63] = v0[73];
    v0[64] = v8;
    v9 = v0[76];
    v0[65] = v0[75];
    v0[66] = v9;
    v10 = v0[72];
    v0[61] = v0[71];
    v0[62] = v10;
  }

  return _swift_task_switch(sub_10015C4F4, 0, 0);
}

uint64_t sub_10015C380()
{
  v1 = v0[198];
  v2 = v0[197];
  v3 = v0[191];
  v4 = v0[190];
  v5 = v0[182];

  sub_10015CA30(v2, type metadata accessor for ClientContext);
  (*(v3 + 8))(v5, v4);
  sub_10015CA30(v1, type metadata accessor for ClientContext);

  v6 = v0[1];

  return v6();
}

uint64_t sub_10015C4F4()
{
  v39 = v0;
  v1 = *(v0 + 1576);
  v2 = *(v0 + 1512);
  v3 = *(v0 + 1488);

  v4 = *(v0 + 992);
  *v2 = *(v0 + 976);
  v2[1] = v4;
  v5 = *(v0 + 1008);
  v6 = *(v0 + 1024);
  v7 = *(v0 + 1056);
  v2[4] = *(v0 + 1040);
  v2[5] = v7;
  v2[2] = v5;
  v2[3] = v6;
  v8 = *(v0 + 1072);
  v9 = *(v0 + 1088);
  v10 = *(v0 + 1120);
  v2[8] = *(v0 + 1104);
  v2[9] = v10;
  v2[6] = v8;
  v2[7] = v9;
  sub_100144E70(v1, v2 + *(v3 + 20));
  if (qword_1005A7F88 != -1)
  {
    swift_once();
  }

  v11 = *(v0 + 1512);
  v12 = *(v0 + 1504);
  v13 = type metadata accessor for Logger();
  sub_10000A6F0(v13, qword_1005DFC28);
  sub_10015C9C8(v11, v12, type metadata accessor for InitClientRequestContent);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();
  v16 = os_log_type_enabled(v14, v15);
  v17 = *(v0 + 1504);
  if (v16)
  {
    v18 = *(v0 + 1496);
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v38 = v20;
    *v19 = 136315138;
    sub_10015C9C8(v17, v18, type metadata accessor for InitClientRequestContent);
    v21 = String.init<A>(describing:)();
    v23 = v22;
    sub_10015CA30(v17, type metadata accessor for InitClientRequestContent);
    v24 = sub_10000D01C(v21, v23, &v38);

    *(v19 + 4) = v24;
    _os_log_impl(&_mh_execute_header, v14, v15, "Request content: %s", v19, 0xCu);
    sub_100004984(v20);
  }

  else
  {

    sub_10015CA30(v17, type metadata accessor for InitClientRequestContent);
  }

  v25 = *(v0 + 1640);
  v26 = *(v0 + 1480);
  v27 = *(v0 + 1472);
  v28 = *(v0 + 1464);
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  *v26 = sub_10019E890;
  v26[1] = 0;
  (*(v27 + 104))(v26, enum case for JSONEncoder.DateEncodingStrategy.custom(_:), v28);
  dispatch thunk of JSONEncoder.dateEncodingStrategy.setter();
  sub_1000091B8(&qword_1005ACE90, type metadata accessor for InitClientRequestContent, &unk_1004C8908);
  v29 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  if (v25)
  {

    v31 = 0;
    v32 = 0xF000000000000000;
  }

  else
  {
    v31 = v29;
    v32 = v30;
  }

  v33 = *(v0 + 1584);
  v34 = *(v0 + 1512);
  (*(*(v0 + 1528) + 8))(*(v0 + 1456), *(v0 + 1520));
  sub_10015CA30(v34, type metadata accessor for InitClientRequestContent);
  sub_10015CA30(v33, type metadata accessor for ClientContext);

  sub_10002CF44(v31, v32);

  sub_10001A794(v31, v32);

  v35 = *(v0 + 8);
  v36 = *(v0 + 1592);

  return v35(v36, v31, v32);
}

uint64_t type metadata accessor for InitClientRequestContent(uint64_t a1)
{
  result = qword_1005ACEF0;
  if (!qword_1005ACEF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10015C9C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10015CA30(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_10015CAB8(uint64_t a1)
{
  sub_100144FE8();
  if (v1 <= 0x3F)
  {
    type metadata accessor for ClientContext(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_10015CB50()
{
  result = qword_1005ACF28;
  if (!qword_1005ACF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ACF28);
  }

  return result;
}

uint64_t sub_10015CBA4(uint64_t a1)
{
  *(a1 + 8) = sub_1000091B8(&qword_1005ACF30, type metadata accessor for InitClientRequestContent, &unk_1004C88C4);
  result = sub_1000091B8(&qword_1005ACE90, type metadata accessor for InitClientRequestContent, &unk_1004C8908);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_10015CC2C()
{
  result = qword_1005ACF38;
  if (!qword_1005ACF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ACF38);
  }

  return result;
}

unint64_t sub_10015CC80()
{
  result = qword_1005ACF48;
  if (!qword_1005ACF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ACF48);
  }

  return result;
}

unint64_t sub_10015CCD4()
{
  result = qword_1005ACF58;
  if (!qword_1005ACF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ACF58);
  }

  return result;
}

unint64_t sub_10015CD3C()
{
  result = qword_1005ACF60;
  if (!qword_1005ACF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ACF60);
  }

  return result;
}

unint64_t sub_10015CD94()
{
  result = qword_1005ACF68;
  if (!qword_1005ACF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ACF68);
  }

  return result;
}

unint64_t sub_10015CDEC()
{
  result = qword_1005ACF70;
  if (!qword_1005ACF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ACF70);
  }

  return result;
}

uint64_t type metadata accessor for InitEndpoint(uint64_t a1)
{
  result = qword_1005ACFD0;
  if (!qword_1005ACFD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for RefreshClientEndpoint(uint64_t a1)
{
  result = qword_1005AD060;
  if (!qword_1005AD060)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10015CF28(void *a1)
{
  v3 = v1;
  v5 = sub_10004B564(&qword_1005AD148, &qword_1004C8D28);
  v41 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v19[-v6];
  sub_100011AEC(a1, a1[3]);
  sub_10015EA74();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8 = v3[7];
  v9 = v3[5];
  v37 = v3[6];
  v38 = v8;
  v10 = v3[7];
  v11 = v3[9];
  v39 = v3[8];
  v40 = v11;
  v12 = v3[3];
  v13 = v3[1];
  v33 = v3[2];
  v34 = v12;
  v14 = v3[3];
  v15 = v3[5];
  v35 = v3[4];
  v36 = v15;
  v16 = v3[1];
  v32[0] = *v3;
  v32[1] = v16;
  v28 = v37;
  v29 = v10;
  v17 = v3[9];
  v30 = v39;
  v31 = v17;
  v24 = v33;
  v25 = v14;
  v26 = v35;
  v27 = v9;
  v22 = v32[0];
  v23 = v13;
  v21 = 0;
  sub_100005F04(v32, v20, &qword_1005A9328, &unk_1004C7F20);
  sub_100145258();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  v20[6] = v28;
  v20[7] = v29;
  v20[8] = v30;
  v20[9] = v31;
  v20[2] = v24;
  v20[3] = v25;
  v20[4] = v26;
  v20[5] = v27;
  v20[0] = v22;
  v20[1] = v23;
  sub_100002CE0(v20, &qword_1005A9328, &unk_1004C7F20);
  if (!v2)
  {
    type metadata accessor for RefreshClientRequestContent(0);
    v19[15] = 1;
    type metadata accessor for ClientContext(0);
    sub_100009200(&qword_1005AC568, type metadata accessor for ClientContext, &unk_1004C9A18);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v41 + 8))(v7, v5);
}

uint64_t sub_10015D1F8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v3 = type metadata accessor for ClientContext(0);
  __chkstk_darwin(v3);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10004B564(&qword_1005AD158, &qword_1004C8D30);
  v25 = *(v6 - 8);
  v26 = v6;
  __chkstk_darwin(v6);
  v8 = &v23 - v7;
  refreshed = type metadata accessor for RefreshClientRequestContent(0);
  __chkstk_darwin(refreshed);
  v11 = (&v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = a1[3];
  v28 = a1;
  sub_100011AEC(a1, v12);
  sub_10015EA74();
  v13 = v27;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v13)
  {
    return sub_100004984(v28);
  }

  v27 = refreshed;
  v14 = v25;
  v15 = v5;
  v40 = 0;
  sub_1001452AC();
  v16 = v26;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v17 = v36;
  v11[6] = v35;
  v11[7] = v17;
  v18 = v38;
  v11[8] = v37;
  v11[9] = v18;
  v19 = v32;
  v11[2] = v31;
  v11[3] = v19;
  v20 = v34;
  v11[4] = v33;
  v11[5] = v20;
  v21 = v30;
  *v11 = v29;
  v11[1] = v21;
  v39 = 1;
  sub_100009200(&qword_1005AC580, type metadata accessor for ClientContext, &unk_1004C9A40);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v14 + 8))(v8, v16);
  sub_100144E70(v15, v11 + *(v27 + 20));
  sub_10015E840(v11, v24, type metadata accessor for RefreshClientRequestContent);
  sub_100004984(v28);
  return sub_10015E8A8(v11, type metadata accessor for RefreshClientRequestContent);
}

uint64_t sub_10015D5A0(uint64_t a1)
{
  v2 = sub_10015EAC8();

  return RequestContentRepresentable.description.getter(a1, v2);
}

uint64_t sub_10015D5DC(uint64_t a1)
{
  v2 = sub_10015EA74();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10015D618(uint64_t a1)
{
  v2 = sub_10015EA74();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10015D684(uint64_t a1)
{
  v1[182] = a1;
  v2 = type metadata accessor for JSONEncoder.DateEncodingStrategy();
  v1[183] = v2;
  v1[184] = *(v2 - 8);
  v1[185] = swift_task_alloc();
  v1[186] = type metadata accessor for RefreshClientRequestContent(0);
  v1[187] = swift_task_alloc();
  v1[188] = swift_task_alloc();
  v1[189] = swift_task_alloc();
  v3 = type metadata accessor for Account();
  v1[190] = v3;
  v1[191] = *(v3 - 8);
  v1[192] = swift_task_alloc();
  sub_10004B564(&qword_1005AC488, &unk_1004C8430);
  v1[193] = swift_task_alloc();
  v1[194] = swift_task_alloc();
  sub_10004B564(&qword_1005B3360, &unk_1004C6AA0);
  v1[195] = swift_task_alloc();
  v1[196] = swift_task_alloc();
  type metadata accessor for ClientContext(0);
  v1[197] = swift_task_alloc();
  v1[198] = swift_task_alloc();

  return _swift_task_switch(sub_10015D8A8, 0, 0);
}

uint64_t sub_10015D8A8()
{
  v1 = v0[196];
  v2 = v0[195];
  v3 = v0[194];
  v4 = v0[193];
  v5 = v0[192];
  v6 = v0[191];
  v7 = v0[190];
  v8 = v0[182];
  v0[199] = sub_10014ABCC();
  v9 = type metadata accessor for Handle();
  (*(*(v9 - 8) + 56))(v1, 1, 1, v9);
  v10 = type metadata accessor for RequestOrigin();
  (*(*(v10 - 8) + 56))(v3, 1, 1, v10);
  (*(v6 + 16))(v5, v8, v7);
  sub_100005F04(v3, v4, &qword_1005AC488, &unk_1004C8430);
  sub_100005F04(v1, v2, &qword_1005B3360, &unk_1004C6AA0);
  v11 = swift_task_alloc();
  v0[200] = v11;
  *v11 = v0;
  v11[1] = sub_10015DA64;
  v12 = v0[198];
  v13 = v0[195];
  v14 = v0[193];
  v15 = v0[192];

  return sub_1001667E8(v12, v15, v14, v13, _swiftEmptyArrayStorage);
}

uint64_t sub_10015DA64()
{
  v1 = *v0;
  v2 = *(*v0 + 1584);
  v3 = *(*v0 + 1576);
  v4 = *(*v0 + 1568);
  v5 = *(*v0 + 1552);
  v8 = *v0;

  sub_100002CE0(v5, &qword_1005AC488, &unk_1004C8430);
  sub_100002CE0(v4, &qword_1005B3360, &unk_1004C6AA0);
  sub_10015E840(v2, v3, type metadata accessor for ClientContext);
  v6 = swift_task_alloc();
  *(v1 + 1608) = v6;
  *v6 = v8;
  v6[1] = sub_10015DC40;

  return daemon.getter();
}

uint64_t sub_10015DC40(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 1616) = a1;

  v3 = swift_task_alloc();
  *(v2 + 1624) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for DataManager(0);
  v6 = sub_100009200(&unk_1005AFA50, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100009200(&qword_1005A90D0, type metadata accessor for DataManager, &unk_1004D1410);
  *v3 = v9;
  v3[1] = sub_10015DE1C;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_10015DE1C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v3[204] = a1;
  v3[205] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_10015E1F8, 0, 0);
  }

  else
  {

    v5 = swift_task_alloc();
    v3[206] = v5;
    *v5 = v4;
    v5[1] = sub_10015DFAC;

    return sub_100245BB8((v3 + 62));
  }
}

uint64_t sub_10015DFAC()
{
  v1 = *(*v0 + 1632);

  return _swift_task_switch(sub_10015E0BC, v1, 0);
}

uint64_t sub_10015E0BC()
{
  memcpy(v0 + 1, v0 + 31, 0x1E0uLL);
  if (sub_100033B90((v0 + 1)) == 1)
  {
    sub_10003170C(v0 + 61);
  }

  else
  {
    v1 = v0[14];
    v0[77] = v0[13];
    v0[78] = v1;
    v2 = v0[16];
    v0[79] = v0[15];
    v0[80] = v2;
    v3 = v0[10];
    v0[73] = v0[9];
    v0[74] = v3;
    v4 = v0[12];
    v0[75] = v0[11];
    v0[76] = v4;
    v5 = v0[8];
    v0[71] = v0[7];
    v0[72] = v5;
    sub_100005F04((v0 + 71), (v0 + 81), &qword_1005A9328, &unk_1004C7F20);
    sub_100002CE0((v0 + 31), &qword_1005A90D8, &unk_1004C6AB0);
    v6 = v0[78];
    v0[67] = v0[77];
    v0[68] = v6;
    v7 = v0[80];
    v0[69] = v0[79];
    v0[70] = v7;
    v8 = v0[74];
    v0[63] = v0[73];
    v0[64] = v8;
    v9 = v0[76];
    v0[65] = v0[75];
    v0[66] = v9;
    v10 = v0[72];
    v0[61] = v0[71];
    v0[62] = v10;
  }

  return _swift_task_switch(sub_10015E36C, 0, 0);
}

uint64_t sub_10015E1F8()
{
  v1 = v0[198];
  v2 = v0[197];
  v3 = v0[191];
  v4 = v0[190];
  v5 = v0[182];

  sub_10015E8A8(v2, type metadata accessor for ClientContext);
  (*(v3 + 8))(v5, v4);
  sub_10015E8A8(v1, type metadata accessor for ClientContext);

  v6 = v0[1];

  return v6();
}

uint64_t sub_10015E36C()
{
  v39 = v0;
  v1 = *(v0 + 1576);
  v2 = *(v0 + 1512);
  v3 = *(v0 + 1488);

  v4 = *(v0 + 992);
  *v2 = *(v0 + 976);
  v2[1] = v4;
  v5 = *(v0 + 1008);
  v6 = *(v0 + 1024);
  v7 = *(v0 + 1056);
  v2[4] = *(v0 + 1040);
  v2[5] = v7;
  v2[2] = v5;
  v2[3] = v6;
  v8 = *(v0 + 1072);
  v9 = *(v0 + 1088);
  v10 = *(v0 + 1120);
  v2[8] = *(v0 + 1104);
  v2[9] = v10;
  v2[6] = v8;
  v2[7] = v9;
  sub_100144E70(v1, v2 + *(v3 + 20));
  if (qword_1005A7F88 != -1)
  {
    swift_once();
  }

  v11 = *(v0 + 1512);
  v12 = *(v0 + 1504);
  v13 = type metadata accessor for Logger();
  sub_10000A6F0(v13, qword_1005DFC28);
  sub_10015E840(v11, v12, type metadata accessor for RefreshClientRequestContent);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  v16 = os_log_type_enabled(v14, v15);
  v17 = *(v0 + 1504);
  if (v16)
  {
    v18 = *(v0 + 1496);
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v38 = v20;
    *v19 = 136315138;
    sub_10015E840(v17, v18, type metadata accessor for RefreshClientRequestContent);
    v21 = String.init<A>(describing:)();
    v23 = v22;
    sub_10015E8A8(v17, type metadata accessor for RefreshClientRequestContent);
    v24 = sub_10000D01C(v21, v23, &v38);

    *(v19 + 4) = v24;
    _os_log_impl(&_mh_execute_header, v14, v15, "Request content: %s", v19, 0xCu);
    sub_100004984(v20);
  }

  else
  {

    sub_10015E8A8(v17, type metadata accessor for RefreshClientRequestContent);
  }

  v25 = *(v0 + 1640);
  v26 = *(v0 + 1480);
  v27 = *(v0 + 1472);
  v28 = *(v0 + 1464);
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  *v26 = sub_10019E890;
  v26[1] = 0;
  (*(v27 + 104))(v26, enum case for JSONEncoder.DateEncodingStrategy.custom(_:), v28);
  dispatch thunk of JSONEncoder.dateEncodingStrategy.setter();
  sub_100009200(&qword_1005AD098, type metadata accessor for RefreshClientRequestContent, &unk_1004C8CCC);
  v29 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  if (v25)
  {

    v31 = 0;
    v32 = 0xF000000000000000;
  }

  else
  {
    v31 = v29;
    v32 = v30;
  }

  v33 = *(v0 + 1584);
  v34 = *(v0 + 1512);
  (*(*(v0 + 1528) + 8))(*(v0 + 1456), *(v0 + 1520));
  sub_10015E8A8(v34, type metadata accessor for RefreshClientRequestContent);
  sub_10015E8A8(v33, type metadata accessor for ClientContext);

  sub_10002CF44(v31, v32);

  sub_10001A794(v31, v32);

  v35 = *(v0 + 8);
  v36 = *(v0 + 1592);

  return v35(v36, v31, v32);
}

uint64_t type metadata accessor for RefreshClientRequestContent(uint64_t a1)
{
  result = qword_1005AD0F8;
  if (!qword_1005AD0F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10015E840(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10015E8A8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_10015E944()
{
  result = qword_1005AD130;
  if (!qword_1005AD130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AD130);
  }

  return result;
}

uint64_t sub_10015E998(uint64_t a1)
{
  *(a1 + 8) = sub_100009200(&qword_1005AD138, type metadata accessor for RefreshClientRequestContent, &unk_1004C8C88);
  result = sub_100009200(&qword_1005AD098, type metadata accessor for RefreshClientRequestContent, &unk_1004C8CCC);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_10015EA20()
{
  result = qword_1005AD140;
  if (!qword_1005AD140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AD140);
  }

  return result;
}

unint64_t sub_10015EA74()
{
  result = qword_1005AD150;
  if (!qword_1005AD150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AD150);
  }

  return result;
}

unint64_t sub_10015EAC8()
{
  result = qword_1005AD160;
  if (!qword_1005AD160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AD160);
  }

  return result;
}

unint64_t sub_10015EB30()
{
  result = qword_1005AD168;
  if (!qword_1005AD168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AD168);
  }

  return result;
}

unint64_t sub_10015EB88()
{
  result = qword_1005AD170;
  if (!qword_1005AD170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AD170);
  }

  return result;
}

unint64_t sub_10015EBE0()
{
  result = qword_1005AD178;
  if (!qword_1005AD178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AD178);
  }

  return result;
}

uint64_t sub_10015EC34@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for URLComponents();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10006DF9C();
  v20 = 0;
  v21 = 0xE000000000000000;
  _StringGuts.grow(_:)(37);

  v20 = 0x61636F4C72657375;
  v21 = 0xEB000000002F6574;
  if (a2)
  {
    v10 = 1885693284;
  }

  else
  {
    v10 = 0x776F6C6C616873;
  }

  if (a2)
  {
    v11 = 0xE400000000000000;
  }

  else
  {
    v11 = 0xE700000000000000;
  }

  v12 = v11;
  String.append(_:)(*&v10);

  v13._object = 0x80000001004E2B00;
  v13._countAndFlagsBits = 0xD000000000000018;
  String.append(_:)(v13);
  v14 = v20;
  v15 = v21;
  v16 = URLComponents.path.modify();
  v17._countAndFlagsBits = v14;
  v17._object = v15;
  String.append(_:)(v17);

  v16(&v20, 0);
  v18 = type metadata accessor for Account();
  (*(*(v18 - 8) + 8))(a1, v18);
  return (*(v7 + 32))(a3, v9, v6);
}

void sub_10015EE5C(uint64_t a1)
{
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  while (v5)
  {
    v8 = v7;
LABEL_9:
    v9 = (*(a1 + 48) + 16 * (__clz(__rbit64(v5)) | (v8 << 6)));
    v5 &= v5 - 1;
    v13 = *v9;
    swift_bridgeObjectRetain_n();
    v10._countAndFlagsBits = 10272;
    v10._object = 0xE200000000000000;
    String.append(_:)(v10);
    v11._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v11);

    v12._countAndFlagsBits = 8233;
    v12._object = 0xE200000000000000;
    String.append(_:)(v12);
    String.append(_:)(v13);
  }

  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v8 >= v6)
    {

      return;
    }

    v5 = *(v2 + 8 * v8);
    ++v7;
    if (v5)
    {
      v7 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_10015EFCC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 1552) = v16;
  *(v8 + 1544) = a8;
  *(v8 + 1536) = a7;
  *(v8 + 1528) = a6;
  *(v8 + 1520) = a5;
  *(v8 + 1952) = a4;
  *(v8 + 1512) = a3;
  *(v8 + 1504) = a2;
  *(v8 + 1496) = a1;
  v9 = type metadata accessor for Date();
  *(v8 + 1560) = v9;
  *(v8 + 1568) = *(v9 - 8);
  *(v8 + 1576) = swift_task_alloc();
  *(v8 + 1584) = type metadata accessor for ClientContext(0);
  *(v8 + 1592) = swift_task_alloc();
  v10 = type metadata accessor for Account();
  *(v8 + 1600) = v10;
  *(v8 + 1608) = *(v10 - 8);
  *(v8 + 1616) = swift_task_alloc();
  sub_10004B564(&qword_1005AC488, &unk_1004C8430);
  *(v8 + 1624) = swift_task_alloc();
  *(v8 + 1632) = swift_task_alloc();
  *(v8 + 1640) = swift_task_alloc();
  sub_10004B564(&qword_1005B3360, &unk_1004C6AA0);
  *(v8 + 1648) = swift_task_alloc();
  *(v8 + 1656) = swift_task_alloc();
  *(v8 + 1664) = swift_task_alloc();
  refreshed = type metadata accessor for LegacyRefreshCommandReason();
  *(v8 + 1672) = refreshed;
  *(v8 + 1680) = *(refreshed - 8);
  *(v8 + 1688) = swift_task_alloc();
  v12 = type metadata accessor for LegacyRefreshSchedule();
  *(v8 + 1696) = v12;
  *(v8 + 1704) = *(v12 - 8);
  *(v8 + 1712) = swift_task_alloc();
  v13 = type metadata accessor for Handle();
  *(v8 + 1720) = v13;
  *(v8 + 1728) = *(v13 - 8);
  *(v8 + 1736) = swift_task_alloc();

  return _swift_task_switch(sub_10015F2F4, 0, 0);
}

uint64_t sub_10015F2F4(uint64_t a1)
{
  v2 = *(LocationRequest.toHandles.getter() + 16);

  v3 = v1[193];
  if (v2)
  {

    v3 = LocationRequest.toHandles.getter();
  }

  v98 = *(v3 + 16);
  v100 = v1;
  if (!v98)
  {
    v6 = _swiftEmptyDictionarySingleton;
LABEL_18:
    v1[218] = v6;
    v28 = v1[214];
    v29 = v1[213];
    v30 = v1[212];
    v31 = v1[211];
    v32 = v100[210];
    v33 = v100[209];
    v99 = v100[192];
    v34 = *(v100 + 1952);

    if (v34)
    {
      v35 = 0x646575657571;
    }

    else
    {
      v35 = 0x74616964656D6D69;
    }

    if (v34)
    {
      v36 = 0xE600000000000000;
    }

    else
    {
      v36 = 0xE900000000000065;
    }

    v37 = v36;
    String.append(_:)(*&v35);

    v38._countAndFlagsBits = 45;
    v38._object = 0xE100000000000000;
    String.append(_:)(v38);
    LocationRequest.type.getter();
    refreshed = LegacyRefreshSchedule.rawValue.getter();
    v41 = v40;
    (*(v29 + 8))(v28, v30);
    v42._countAndFlagsBits = refreshed;
    v42._object = v41;
    String.append(_:)(v42);

    v43._countAndFlagsBits = 0x20726574666128;
    v43._object = 0xE700000000000000;
    String.append(_:)(v43);
    v44._countAndFlagsBits = Duration.description.getter();
    String.append(_:)(v44);

    v45._countAndFlagsBits = 41;
    v45._object = 0xE100000000000000;
    String.append(_:)(v45);
    v100[219] = 0;
    v100[220] = 0xE000000000000000;
    LocationRequest.refreshReason.getter();
    v46 = LegacyRefreshCommandReason.rawValue.getter();
    v47 = *(v32 + 8);
    v47(v31, v33);
    v100[184] = v46;
    v102 = dispatch thunk of CustomStringConvertible.description.getter();
    v103 = v48;
    v49._countAndFlagsBits = 2108704;
    v49._object = 0xE300000000000000;
    String.append(_:)(v49);
    LocationRequest.refreshReason.getter();
    v50 = LegacyRefreshCommandReason.reason.getter();
    v52 = v51;
    v47(v31, v33);
    v53._countAndFlagsBits = v50;
    v53._object = v52;
    String.append(_:)(v53);

    v100[221] = v102;
    v100[222] = v103;
    *(v100 + 1953) = LocationRequest.shallowLocatesOnly.getter() & 1;
    v97 = *(v99 + 16);
    if (!v97)
    {
LABEL_56:
      v100[223] = _swiftEmptyDictionarySingleton;
      v100[182] = 0;
      v100[183] = 0xE000000000000000;
      sub_10015EE5C(_swiftEmptyDictionarySingleton);
      _StringGuts.grow(_:)(17);

      v89 = *(v99 + 16);

      v100[185] = v89;
      v90._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v90);

      v91._countAndFlagsBits = 2065706025;
      v91._object = 0xE400000000000000;
      String.append(_:)(v91);
      v92 = *(v100 + 91);
      v100[224] = v92._object;
      String.append(_:)(v92);
      v93._countAndFlagsBits = 125;
      v93._object = 0xE100000000000000;
      String.append(_:)(v93);
      v100[225] = 0x203A6C61746F5428;
      v100[226] = 0xE800000000000000;
      v94 = swift_task_alloc();
      v100[227] = v94;
      *v94 = v100;
      v94[1] = sub_10015FB9C;

      return daemon.getter();
    }

    v54 = 0;
    v55 = (v100[192] + 40);
    while (1)
    {
      if (v54 >= *(v99 + 16))
      {
        goto LABEL_61;
      }

      v58 = *(v55 - 1);
      v57 = *v55;
      v59 = _swiftEmptyDictionarySingleton[2];

      if (v59)
      {
        v60 = sub_1000110D8(v58, v57);
        if (v61)
        {
          v62 = *(_swiftEmptyDictionarySingleton[7] + 8 * v60);
          v63 = v62 + 1;
          if (__OFADD__(v62, 1))
          {
            goto LABEL_65;
          }

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v65 = sub_1000110D8(v58, v57);
          v67 = _swiftEmptyDictionarySingleton[2];
          v68 = (v66 & 1) == 0;
          v18 = __OFADD__(v67, v68);
          v69 = v67 + v68;
          if (v18)
          {
            goto LABEL_66;
          }

          v70 = v66;
          if (_swiftEmptyDictionarySingleton[3] < v69)
          {
            sub_10022D3D8(v69, isUniquelyReferenced_nonNull_native);
            v65 = sub_1000110D8(v58, v57);
            if ((v70 & 1) != (v71 & 1))
            {
              goto LABEL_53;
            }

            goto LABEL_46;
          }

          if (isUniquelyReferenced_nonNull_native)
          {
LABEL_46:
            if ((v70 & 1) == 0)
            {
              goto LABEL_51;
            }
          }

          else
          {
            v85 = v65;
            sub_100203214();
            v65 = v85;
            if ((v70 & 1) == 0)
            {
LABEL_51:
              _swiftEmptyDictionarySingleton[(v65 >> 6) + 8] |= 1 << v65;
              v86 = (_swiftEmptyDictionarySingleton[6] + 16 * v65);
              *v86 = v58;
              v86[1] = v57;
              *(_swiftEmptyDictionarySingleton[7] + 8 * v65) = v63;
              v87 = _swiftEmptyDictionarySingleton[2];
              v18 = __OFADD__(v87, 1);
              v82 = v87 + 1;
              if (v18)
              {
                goto LABEL_67;
              }

              goto LABEL_52;
            }
          }

          v83 = v65;

          *(_swiftEmptyDictionarySingleton[7] + 8 * v83) = v63;
          goto LABEL_27;
        }
      }

      v72 = swift_isUniquelyReferenced_nonNull_native();
      v73 = sub_1000110D8(v58, v57);
      v75 = _swiftEmptyDictionarySingleton[2];
      v76 = (v74 & 1) == 0;
      v18 = __OFADD__(v75, v76);
      v77 = v75 + v76;
      if (v18)
      {
        goto LABEL_62;
      }

      v78 = v74;
      if (_swiftEmptyDictionarySingleton[3] >= v77)
      {
        if ((v72 & 1) == 0)
        {
          v84 = v73;
          sub_100203214();
          v73 = v84;
          if ((v78 & 1) == 0)
          {
LABEL_42:
            _swiftEmptyDictionarySingleton[(v73 >> 6) + 8] |= 1 << v73;
            v80 = (_swiftEmptyDictionarySingleton[6] + 16 * v73);
            *v80 = v58;
            v80[1] = v57;
            *(_swiftEmptyDictionarySingleton[7] + 8 * v73) = 1;
            v81 = _swiftEmptyDictionarySingleton[2];
            v18 = __OFADD__(v81, 1);
            v82 = v81 + 1;
            if (v18)
            {
              goto LABEL_64;
            }

LABEL_52:
            _swiftEmptyDictionarySingleton[2] = v82;
            goto LABEL_27;
          }

          goto LABEL_26;
        }
      }

      else
      {
        sub_10022D3D8(v77, v72);
        v73 = sub_1000110D8(v58, v57);
        if ((v78 & 1) != (v79 & 1))
        {
          goto LABEL_53;
        }
      }

      if ((v78 & 1) == 0)
      {
        goto LABEL_42;
      }

LABEL_26:
      v56 = v73;

      *(_swiftEmptyDictionarySingleton[7] + 8 * v56) = 1;
LABEL_27:
      ++v54;
      v55 += 2;
      if (v97 == v54)
      {
        goto LABEL_56;
      }
    }
  }

  v4 = 0;
  v5 = v1[216];
  v96 = v3 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
  v95 = (v5 + 8);
  v6 = _swiftEmptyDictionarySingleton;
  while (v4 < *(v3 + 16))
  {
    (*(v5 + 16))(v1[217], v96 + *(v5 + 72) * v4, v1[215]);
    v8 = Handle.identifier.getter();
    v10 = v9;
    Handle.trackingTimestamp.getter();
    v12 = v11;
    v13 = swift_isUniquelyReferenced_nonNull_native();
    v101 = v6;
    v14 = sub_1000110D8(v8, v10);
    v16 = v6[2];
    v17 = (v15 & 1) == 0;
    v18 = __OFADD__(v16, v17);
    v19 = v16 + v17;
    if (v18)
    {
      goto LABEL_60;
    }

    v20 = v15;
    if (v6[3] >= v19)
    {
      if ((v13 & 1) == 0)
      {
        v27 = v14;
        sub_10020337C();
        v14 = v27;
      }
    }

    else
    {
      sub_10022D678(v19, v13);
      v14 = sub_1000110D8(v8, v10);
      if ((v20 & 1) != (v21 & 1))
      {
LABEL_53:

        return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      }
    }

    v22 = v100[217];
    v23 = v100[215];
    if (v20)
    {
      v7 = v14;

      v6 = v101;
      *(v101[7] + 8 * v7) = v12;
      (*v95)(v22, v23);
    }

    else
    {
      v6 = v101;
      v101[(v14 >> 6) + 8] |= 1 << v14;
      v24 = (v101[6] + 16 * v14);
      *v24 = v8;
      v24[1] = v10;
      *(v101[7] + 8 * v14) = v12;
      (*v95)(v22, v23);
      v25 = v101[2];
      v18 = __OFADD__(v25, 1);
      v26 = v25 + 1;
      if (v18)
      {
        goto LABEL_63;
      }

      v101[2] = v26;
    }

    ++v4;
    v1 = v100;
    if (v98 == v4)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
  return daemon.getter();
}

uint64_t sub_10015FB9C(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  v2[228] = a1;

  v3 = swift_task_alloc();
  v2[229] = v3;
  v4 = type metadata accessor for Daemon();
  v2[230] = v4;
  v5 = type metadata accessor for DataManager(0);
  v2[231] = v5;
  v6 = sub_100009248(&unk_1005AFA50, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v2[232] = v6;
  v7 = sub_100009248(&qword_1005A90D0, type metadata accessor for DataManager, &unk_1004D1410);
  v2[233] = v7;
  *v3 = v9;
  v3[1] = sub_10015FD90;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_10015FD90(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v3[234] = a1;
  v3[235] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_10016016C, 0, 0);
  }

  else
  {

    v5 = swift_task_alloc();
    v3[236] = v5;
    *v5 = v4;
    v5[1] = sub_10015FF20;

    return sub_100245BB8((v3 + 62));
  }
}

uint64_t sub_10015FF20()
{
  v1 = *(*v0 + 1872);

  return _swift_task_switch(sub_100160030, v1, 0);
}

uint64_t sub_100160030()
{
  memcpy(v0 + 1, v0 + 31, 0x1E0uLL);
  if (sub_100033B90((v0 + 1)) == 1)
  {
    sub_10003170C(v0 + 61);
  }

  else
  {
    v1 = v0[14];
    v0[77] = v0[13];
    v0[78] = v1;
    v2 = v0[16];
    v0[79] = v0[15];
    v0[80] = v2;
    v3 = v0[10];
    v0[73] = v0[9];
    v0[74] = v3;
    v4 = v0[12];
    v0[75] = v0[11];
    v0[76] = v4;
    v5 = v0[8];
    v0[71] = v0[7];
    v0[72] = v5;
    sub_100005F04((v0 + 71), (v0 + 81), &qword_1005A9328, &unk_1004C7F20);
    sub_100002CE0((v0 + 31), &qword_1005A90D8, &unk_1004C6AB0);
    v6 = v0[78];
    v0[67] = v0[77];
    v0[68] = v6;
    v7 = v0[80];
    v0[69] = v0[79];
    v0[70] = v7;
    v8 = v0[74];
    v0[63] = v0[73];
    v0[64] = v8;
    v9 = v0[76];
    v0[65] = v0[75];
    v0[66] = v9;
    v10 = v0[72];
    v0[61] = v0[71];
    v0[62] = v10;
  }

  return _swift_task_switch(sub_100160350, 0, 0);
}

uint64_t sub_10016016C()
{
  v1 = v0[201];
  v2 = v0[200];
  v3 = v0[189];
  v4 = v0[188];

  (*(v1 + 8))(v3, v2);
  v5 = type metadata accessor for LocationRequest();
  (*(*(v5 - 8) + 8))(v4, v5);

  v6 = v0[1];

  return v6();
}

uint64_t sub_100160350()
{
  v1 = *(v0 + 1728);
  v2 = *(v0 + 1720);
  v3 = *(v0 + 1664);
  v4 = *(v0 + 1640);
  v98 = *(v0 + 1632);
  v100 = *(v0 + 1656);
  v5 = *(v0 + 1608);
  v96 = *(v0 + 1600);
  v97 = *(v0 + 1616);
  v6 = *(v0 + 1592);
  v7 = *(v0 + 1512);
  v8 = *(v0 + 1496);

  v9 = *(v0 + 992);
  *v8 = *(v0 + 976);
  v8[1] = v9;
  v10 = *(v0 + 1008);
  v11 = *(v0 + 1024);
  v12 = *(v0 + 1056);
  v8[4] = *(v0 + 1040);
  v8[5] = v12;
  v8[2] = v10;
  v8[3] = v11;
  v13 = *(v0 + 1072);
  v14 = *(v0 + 1088);
  v15 = *(v0 + 1120);
  v8[8] = *(v0 + 1104);
  v8[9] = v15;
  v8[6] = v13;
  v8[7] = v14;
  (*(v1 + 56))(v3, 1, 1, v2);
  LocationRequest.origin.getter();
  v16 = type metadata accessor for RequestOrigin();
  v95 = *(v16 - 8);
  (*(v95 + 56))(v4, 0, 1, v16);
  (*(v5 + 16))(v97, v7, v96);
  sub_100005F04(v4, v98, &qword_1005AC488, &unk_1004C8430);
  sub_100005F04(v3, v100, &qword_1005B3360, &unk_1004C6AA0);
  *v6 = sub_1004B885C(0);
  v6[1] = v17;
  v18 = [objc_opt_self() defaultWorkspace];
  if (!v18)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v18;
  v20 = *(v0 + 1592);
  v21 = *(v0 + 1584);
  v22 = *(v0 + 1576);
  v23 = *(v0 + 1568);
  v24 = *(v0 + 1560);
  v25 = String._bridgeToObjectiveC()();
  v26 = [v19 applicationIsInstalled:v25];

  *(v20 + 16) = v26 ^ 1;
  *(v20 + 24) = static SystemInfo.uniqueDeviceID.getter();
  *(v20 + 32) = v27;
  *(v20 + 40) = static SystemInfo.deviceClass.getter();
  *(v20 + 48) = v28;
  *(v20 + 56) = 1;
  *(v20 + 64) = static SystemInfo.productType.getter();
  *(v20 + 72) = v29;
  *(v20 + 80) = static SystemInfo.osVersion.getter();
  *(v20 + 88) = v30;
  *(v20 + 96) = static SystemInfo.buildVersion.getter();
  *(v20 + 104) = v31;
  static SystemInfo.lockState.getter();
  static Date.now.getter();
  Date.timeIntervalSince1970.getter();
  v33 = v32;
  (*(v23 + 8))(v22, v24);
  *(v20 + v21[13]) = v33 * 1000.0;
  v34 = sub_1004B906C();
  v35 = (v20 + v21[14]);
  *v35 = v34;
  v35[1] = v36;
  *(v20 + v21[15]) = 1;
  v37 = (v20 + v21[16]);
  *v37 = 3157559;
  v37[1] = 0xE300000000000000;
  v38 = static SystemInfo.platform.getter();
  v39 = (v20 + v21[17]);
  *v39 = v38;
  v39[1] = v40;
  v41 = [objc_opt_self() sharedConfiguration];
  if (!v41)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v42 = v41;
  v101 = v16;
  v43 = [v41 countryCode];

  if (!v43)
  {
LABEL_17:
    __break(1u);
    return daemon.getter();
  }

  v44 = *(v0 + 1728);
  v99 = *(v0 + 1720);
  v45 = *(v0 + 1656);
  v46 = *(v0 + 1648);
  v47 = *(v0 + 1592);
  v48 = *(v0 + 1584);

  v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v51 = v50;

  v52 = (v47 + v48[18]);
  *v52 = v49;
  v52[1] = v51;
  v53 = static SystemInfo.regionCode.getter();
  v54 = (v47 + v48[19]);
  *v54 = v53;
  v54[1] = v55;
  v56 = Account.icloudIdentifier.getter();
  v57 = (v47 + v48[20]);
  *v57 = v56;
  v57[1] = v58;
  sub_100005F04(v45, v46, &qword_1005B3360, &unk_1004C6AA0);
  if ((*(v44 + 48))(v46, 1, v99) == 1)
  {
    sub_100002CE0(*(v0 + 1648), &qword_1005B3360, &unk_1004C6AA0);
    v59 = Account.icloudIdentifier.getter();
    v61 = v60;
  }

  else
  {
    v62 = *(v0 + 1728);
    v63 = *(v0 + 1720);
    v64 = *(v0 + 1648);
    v59 = Handle.identifier.getter();
    v61 = v65;
    (*(v62 + 8))(v64, v63);
  }

  v66 = *(v0 + 1632);
  v67 = *(v0 + 1624);
  v68 = *(v0 + 1592);
  v69 = *(v0 + 1584);
  v70 = (v68 + *(v69 + 88));
  *v70 = v59;
  v70[1] = v61;
  v71 = v68 + *(v69 + 96);
  *v71 = 0;
  *(v71 + 8) = 1;
  sub_100005F04(v66, v67, &qword_1005AC488, &unk_1004C8430);
  v72 = (*(v95 + 48))(v67, 1, v101);
  v73 = *(v0 + 1624);
  if (v72 == 1)
  {
    sub_100002CE0(*(v0 + 1624), &qword_1005AC488, &unk_1004C8430);
  }

  else
  {
    v74 = RequestOrigin.contextBundleApp.getter();
    v76 = v75;
    (*(v95 + 8))(v73, v101);
    if (v76)
    {
      v77 = v76;
      v78 = v74;
      goto LABEL_12;
    }
  }

  v78 = sub_1004B885C(3u);
LABEL_12:
  v79 = *(v0 + 1808);
  v80 = *(v0 + 1800);
  v81 = *(v0 + 1953);
  v82 = *(v0 + 1776);
  v83 = *(v0 + 1768);
  v84 = *(v0 + 1760);
  v85 = *(v0 + 1752);
  v86 = *(v0 + 1744);
  v87 = *(v0 + 1592);
  v88 = *(v0 + 1584);
  v89 = (v87 + v88[23]);
  *v89 = v78;
  v89[1] = v77;
  *(v87 + v88[25]) = v81;
  *(v87 + v88[26]) = v86;
  v90 = (v87 + v88[27]);
  *v90 = v80;
  v90[1] = v79;
  v91 = (v87 + v88[28]);
  *v91 = v85;
  v91[1] = v84;
  v92 = (v87 + v88[29]);
  *v92 = v83;
  v92[1] = v82;

  v93 = swift_task_alloc();
  *(v0 + 1896) = v93;
  *v93 = v0;
  v93[1] = sub_10016095C;

  return daemon.getter();
}

uint64_t sub_10016095C(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v2[238] = a1;

  v4 = swift_task_alloc();
  v2[239] = v4;
  *v4 = v3;
  v4[1] = sub_100160AE8;
  v5 = v2[233];
  v6 = v2[232];
  v7 = v2[231];
  v8 = v2[230];

  return ActorServiceDaemon.getService<A>()(v8, v7, v6, v5);
}

uint64_t sub_100160AE8(uint64_t a1)
{
  v4 = *v2;
  *(v4 + 1920) = a1;
  *(v4 + 1928) = v1;

  if (v1)
  {
    v5 = sub_100160FAC;
    v6 = 0;
  }

  else
  {

    v5 = sub_100160C24;
    v6 = a1;
  }

  return _swift_task_switch(v5, v6, 0);
}

uint64_t sub_100160C24()
{
  v1 = (v0[240] + OBJC_IVAR____TtC13findmylocated11DataManager_apnsToken);
  v2 = *v1;
  v0[242] = *v1;
  v3 = v1[1];
  v0[243] = v3;
  sub_10002CF44(v2, v3);

  return _swift_task_switch(sub_100160CAC, 0, 0);
}

uint64_t sub_100160CAC()
{
  v1 = v0[243];
  if (v1 >> 60 == 15)
  {

    v25 = 0;
    v26 = 0;
  }

  else
  {
    v2 = v0[242];
    v3 = Data.hexString.getter();
    v25 = v4;
    v26 = v3;
    sub_10001A794(v2, v1);
  }

  v5 = v0[207];
  v6 = v0[205];
  v7 = v0[204];
  v8 = v0[202];
  v9 = v0[201];
  v10 = v0[200];
  v23 = v0[199];
  v24 = v0[208];
  v22 = v0[198];

  sub_100002CE0(v5, &qword_1005B3360, &unk_1004C6AA0);
  sub_100002CE0(v7, &qword_1005AC488, &unk_1004C8430);
  v11 = *(v9 + 8);
  v11(v8, v10);
  sub_100002CE0(v6, &qword_1005AC488, &unk_1004C8430);
  sub_100002CE0(v24, &qword_1005B3360, &unk_1004C6AA0);
  v12 = (v23 + *(v22 + 84));
  *v12 = v26;
  v12[1] = v25;
  v13 = v0[200];
  v14 = v0[199];
  v15 = v0[189];
  v16 = v0[188];
  v17 = v0[187];
  v18 = type metadata accessor for LegacyLocationServerRequestContext(0);
  sub_100144E70(v14, v17 + *(v18 + 20));
  v11(v15, v13);
  v19 = type metadata accessor for LocationRequest();
  (*(*(v19 - 8) + 8))(v16, v19);

  v20 = v0[1];

  return v20();
}

uint64_t sub_100160FAC()
{
  v31 = v0;

  if (qword_1005A7F90 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A6F0(v1, qword_1005DFC40);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[241];
  v6 = v0[208];
  v26 = v0[207];
  v7 = v0[205];
  v29 = v0[202];
  v8 = v0[201];
  v27 = v0[204];
  v28 = v0[200];
  if (v4)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v30 = v10;
    *v9 = 136446210;
    v0[186] = v5;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v11 = String.init<A>(describing:)();
    v25 = v7;
    v13 = sub_10000D01C(v11, v12, &v30);

    *(v9 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v2, v3, "ERROR: %{public}s", v9, 0xCu);
    sub_100004984(v10);

    sub_100002CE0(v26, &qword_1005B3360, &unk_1004C6AA0);
    sub_100002CE0(v27, &qword_1005AC488, &unk_1004C8430);
    v14 = *(v8 + 8);
    v14(v29, v28);
    sub_100002CE0(v25, &qword_1005AC488, &unk_1004C8430);
  }

  else
  {

    sub_100002CE0(v26, &qword_1005B3360, &unk_1004C6AA0);
    sub_100002CE0(v27, &qword_1005AC488, &unk_1004C8430);
    v14 = *(v8 + 8);
    v14(v29, v28);
    sub_100002CE0(v7, &qword_1005AC488, &unk_1004C8430);
  }

  sub_100002CE0(v6, &qword_1005B3360, &unk_1004C6AA0);
  v15 = (v0[199] + *(v0[198] + 84));
  *v15 = 0;
  v15[1] = 0;
  v16 = v0[200];
  v17 = v0[199];
  v18 = v0[189];
  v19 = v0[188];
  v20 = v0[187];
  v21 = type metadata accessor for LegacyLocationServerRequestContext(0);
  sub_100144E70(v17, v20 + *(v21 + 20));
  v14(v18, v16);
  v22 = type metadata accessor for LocationRequest();
  (*(*(v22 - 8) + 8))(v19, v22);

  v23 = v0[1];

  return v23();
}

uint64_t sub_100161448(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v14 = a4;
  v8 = sub_10004B564(&qword_1005AD2D8, &qword_1004C9118);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v13 - v10;
  sub_100011AEC(a1, a1[3]);
  sub_10016225C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = a2;
  v17 = 0;
  sub_10004B564(&qword_1005AC968, &qword_1004C7670);
  sub_10014D0DC(&qword_1005AC980, &protocol witness table for String, &protocol conformance descriptor for <> [A : B]);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v4)
  {
    v15 = a3;
    v16 = v14;
    v17 = 1;
    sub_10002CF44(a3, v14);
    sub_10010670C();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_10001A794(v15, v16);
  }

  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_100161630(uint64_t a1)
{
  v2 = sub_10016225C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10016166C(uint64_t a1)
{
  v2 = sub_10016225C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001616A8@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_100161FF8(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
  }

  return result;
}

uint64_t sub_1001616F8(uint64_t a1)
{
  v2 = sub_1000844B0();

  return RequestContentRepresentable.description.getter(a1, v2);
}

uint64_t sub_100161734(void *a1)
{
  v3 = v1;
  v5 = sub_10004B564(&qword_1005AD2B8, &qword_1004C9100);
  v41 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v19[-v6];
  sub_100011AEC(a1, a1[3]);
  sub_100161FA4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8 = v3[7];
  v9 = v3[5];
  v37 = v3[6];
  v38 = v8;
  v10 = v3[7];
  v11 = v3[9];
  v39 = v3[8];
  v40 = v11;
  v12 = v3[3];
  v13 = v3[1];
  v33 = v3[2];
  v34 = v12;
  v14 = v3[3];
  v15 = v3[5];
  v35 = v3[4];
  v36 = v15;
  v16 = v3[1];
  v32[0] = *v3;
  v32[1] = v16;
  v28 = v37;
  v29 = v10;
  v17 = v3[9];
  v30 = v39;
  v31 = v17;
  v24 = v33;
  v25 = v14;
  v26 = v35;
  v27 = v9;
  v22 = v32[0];
  v23 = v13;
  v21 = 0;
  sub_100005F04(v32, v20, &qword_1005A9328, &unk_1004C7F20);
  sub_100145258();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  v20[6] = v28;
  v20[7] = v29;
  v20[8] = v30;
  v20[9] = v31;
  v20[2] = v24;
  v20[3] = v25;
  v20[4] = v26;
  v20[5] = v27;
  v20[0] = v22;
  v20[1] = v23;
  sub_100002CE0(v20, &qword_1005A9328, &unk_1004C7F20);
  if (!v2)
  {
    type metadata accessor for LegacyLocationServerRequestContext(0);
    v19[15] = 1;
    type metadata accessor for ClientContext(0);
    sub_100009248(&qword_1005AC568, type metadata accessor for ClientContext, &unk_1004C9A18);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v41 + 8))(v7, v5);
}

uint64_t sub_100161A04@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v3 = type metadata accessor for ClientContext(0);
  __chkstk_darwin(v3);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10004B564(&qword_1005AD2E0, &qword_1004C9120);
  v25 = *(v6 - 8);
  v26 = v6;
  __chkstk_darwin(v6);
  v8 = &v23 - v7;
  v9 = type metadata accessor for LegacyLocationServerRequestContext(0);
  __chkstk_darwin(v9);
  v11 = (&v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = a1[3];
  v28 = a1;
  sub_100011AEC(a1, v12);
  sub_100161FA4();
  v13 = v27;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v13)
  {
    return sub_100004984(v28);
  }

  v27 = v9;
  v14 = v25;
  v15 = v5;
  v40 = 0;
  sub_1001452AC();
  v16 = v26;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v17 = v36;
  v11[6] = v35;
  v11[7] = v17;
  v18 = v38;
  v11[8] = v37;
  v11[9] = v18;
  v19 = v32;
  v11[2] = v31;
  v11[3] = v19;
  v20 = v34;
  v11[4] = v33;
  v11[5] = v20;
  v21 = v30;
  *v11 = v29;
  v11[1] = v21;
  v39 = 1;
  sub_100009248(&qword_1005AC580, type metadata accessor for ClientContext, &unk_1004C9A40);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v14 + 8))(v8, v16);
  sub_100144E70(v15, v11 + *(v27 + 20));
  sub_1001622B0(v11, v24);
  sub_100004984(v28);
  return sub_100162314(v11);
}

uint64_t sub_100161D90(uint64_t a1)
{
  v2 = sub_100161FA4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100161DCC(uint64_t a1)
{
  v2 = sub_100161FA4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100161E70(uint64_t a1)
{
  *(a1 + 8) = sub_100009248(&qword_1005AD2A0, type metadata accessor for LegacyLocationServerRequestContext, &unk_1004C8FA4);
  result = sub_100009248(&qword_1005A92E8, type metadata accessor for LegacyLocationServerRequestContext, &unk_1004C90D8);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_100161EF8()
{
  result = qword_1005AD2A8;
  if (!qword_1005AD2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AD2A8);
  }

  return result;
}

unint64_t sub_100161F50()
{
  result = qword_1005AD2B0;
  if (!qword_1005AD2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AD2B0);
  }

  return result;
}

unint64_t sub_100161FA4()
{
  result = qword_1005AD2C0;
  if (!qword_1005AD2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AD2C0);
  }

  return result;
}

uint64_t sub_100161FF8(void *a1)
{
  v3 = sub_10004B564(&qword_1005AD2C8, &unk_1004C9108);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11 - v5;
  v7 = a1[3];
  sub_100011AEC(a1, v7);
  sub_10016225C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_100004984(a1);
    sub_10001A794(0, 0xF000000000000000);
  }

  else
  {
    sub_10004B564(&qword_1005AC968, &qword_1004C7670);
    v14 = 0;
    sub_10014D0DC(&qword_1005AC970, &protocol witness table for String, &protocol conformance descriptor for <> [A : B]);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v7 = v12;
    v14 = 1;
    sub_1000F4D64();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v4 + 8))(v6, v3);
    v9 = v12;
    v10 = v13;
    sub_10001A794(0, 0xF000000000000000);

    sub_10002CF44(v9, v10);
    sub_100004984(a1);

    sub_10001A794(v9, v10);
  }

  return v7;
}

unint64_t sub_10016225C()
{
  result = qword_1005AD2D0;
  if (!qword_1005AD2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AD2D0);
  }

  return result;
}

uint64_t sub_1001622B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LegacyLocationServerRequestContext(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100162314(uint64_t a1)
{
  v2 = type metadata accessor for LegacyLocationServerRequestContext(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100162394()
{
  result = qword_1005AD2E8;
  if (!qword_1005AD2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AD2E8);
  }

  return result;
}

unint64_t sub_1001623EC()
{
  result = qword_1005AD2F0;
  if (!qword_1005AD2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AD2F0);
  }

  return result;
}

unint64_t sub_100162444()
{
  result = qword_1005AD2F8;
  if (!qword_1005AD2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AD2F8);
  }

  return result;
}

unint64_t sub_10016249C()
{
  result = qword_1005AD300;
  if (!qword_1005AD300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AD300);
  }

  return result;
}

unint64_t sub_1001624F4()
{
  result = qword_1005AD308;
  if (!qword_1005AD308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AD308);
  }

  return result;
}

unint64_t sub_10016254C()
{
  result = qword_1005AD310;
  if (!qword_1005AD310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AD310);
  }

  return result;
}

uint64_t ServerHandleType.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 0x7265776F6C6C6F66;
  }

  if (a1 == 1)
  {
    return 0x6E69776F6C6C6F66;
  }

  return 0x4F676E69646E6570;
}

uint64_t sub_100162610(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6E69776F6C6C6F66;
  v4 = 0xE900000000000067;
  if (v2 != 1)
  {
    v3 = 0x4F676E69646E6570;
    v4 = 0xED00007372656666;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x7265776F6C6C6F66;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  v7 = 0x6E69776F6C6C6F66;
  v8 = 0xE900000000000067;
  if (*a2 != 1)
  {
    v7 = 0x4F676E69646E6570;
    v8 = 0xED00007372656666;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x7265776F6C6C6F66;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE800000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int sub_100162734()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

double sub_1001627E8(uint64_t a1)
{
  String.hash(into:)();

  return result;
}

Swift::Int sub_100162888()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100162938@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s13findmylocated16ServerHandleTypeO8rawValueACSgSS_tcfC_0(*a1);
  *a2 = result;
  return result;
}

void sub_100162968(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0xE900000000000067;
  v5 = 0x6E69776F6C6C6F66;
  if (v2 != 1)
  {
    v5 = 0x4F676E69646E6570;
    v4 = 0xED00007372656666;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x7265776F6C6C6F66;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_100162A88(char a1)
{
  result = 0x6954657461657263;
  switch(a1)
  {
    case 1:
      result = 0x73657269707865;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0x7250646E65697266;
      break;
    case 4:
      result = 25705;
      break;
    case 5:
      v3 = 9;
      goto LABEL_17;
    case 6:
      v3 = 5;
LABEL_17:
      result = v3 | 0xD000000000000010;
      break;
    case 7:
      result = 0x656369766544656DLL;
      break;
    case 8:
      result = 0xD000000000000016;
      break;
    case 9:
      result = 0xD000000000000023;
      break;
    case 10:
      result = 0x746F4E646574706FLL;
      break;
    case 11:
      result = 0x656372756F73;
      break;
    case 12:
      result = 0x6954657461647075;
      break;
    case 13:
      result = 0x6E65644968737570;
      break;
    case 14:
      result = 0xD000000000000017;
      break;
    case 15:
      result = 0xD000000000000010;
      break;
    case 16:
      result = 0x654D6D6F72467369;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100162C98(void *a1)
{
  v3 = v1;
  v5 = sub_10004B564(&qword_1005AD378, &qword_1004C96C8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10 - v7;
  sub_100011AEC(a1, a1[3]);
  sub_100166234();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v11) = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v2)
  {
    LOBYTE(v11) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v11 = v3[3];
    HIBYTE(v10) = 2;
    sub_10004B564(&qword_1005AD368, &qword_1004C96C0);
    sub_1001662F0(&qword_1005AD380, &protocol witness table for String, &protocol witness table for Double, &protocol conformance descriptor for <> [A : B]);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v11) = 3;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v11) = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    v11 = v3[8];
    HIBYTE(v10) = 5;
    sub_10004B564(&qword_1005A9630, &qword_1004C5680);
    sub_10001CCC4(&qword_1005A9EA8, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v11 = v3[9];
    HIBYTE(v10) = 6;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v11) = 7;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v11) = 8;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v11) = 9;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v11) = 10;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v11) = 11;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v11) = 12;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v11 = v3[17];
    HIBYTE(v10) = 13;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v11) = 14;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v11) = 15;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v11) = 16;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100163120@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100164044(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100163154(uint64_t a1)
{
  v2 = sub_100166234();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100163190(uint64_t a1)
{
  v2 = sub_100166234();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_1001631CC@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1001645A0(a2, v9);
  if (!v2)
  {
    v5 = v9[7];
    *(a1 + 96) = v9[6];
    *(a1 + 112) = v5;
    *(a1 + 128) = *v10;
    *(a1 + 143) = *&v10[15];
    v6 = v9[3];
    *(a1 + 32) = v9[2];
    *(a1 + 48) = v6;
    v7 = v9[5];
    *(a1 + 64) = v9[4];
    *(a1 + 80) = v7;
    result = *v9;
    v8 = v9[1];
    *a1 = v9[0];
    *(a1 + 16) = v8;
  }

  return result;
}

uint64_t sub_100163258(void *a1)
{
  v3 = sub_10004B564(&qword_1005AD338, &qword_1004C9698);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_100011AEC(a1, a1[3]);
  sub_100165704();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  v8[13] = 2;
  KeyedEncodingContainer.encode(_:forKey:)();
  v8[12] = 3;
  KeyedEncodingContainer.encode(_:forKey:)();
  v8[11] = 4;
  KeyedEncodingContainer.encode(_:forKey:)();
  v8[10] = 5;
  KeyedEncodingContainer.encode(_:forKey:)();
  v8[9] = 6;
  KeyedEncodingContainer.encode(_:forKey:)();
  v8[8] = 7;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_100163498()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x644970756F7267;
  if (v1 != 6)
  {
    v3 = 0x654D6D6F72467369;
  }

  v4 = 0x6954657461647075;
  if (v1 != 4)
  {
    v4 = 0x73657269707865;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000016;
  if (v1 != 2)
  {
    v5 = 0x6449726566666FLL;
  }

  if (*v0)
  {
    v2 = 0xD000000000000014;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1001635A8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100164F48(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1001635D0(uint64_t a1)
{
  v2 = sub_100165704();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10016360C(uint64_t a1)
{
  v2 = sub_100165704();

  return CodingKey.debugDescription.getter(a1, v2);
}

__n128 sub_100163648@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1001651F0(a2, v7);
  if (!v2)
  {
    v5 = v7[5];
    *(a1 + 64) = v7[4];
    *(a1 + 80) = v5;
    *(a1 + 96) = v8;
    v6 = v7[1];
    *a1 = v7[0];
    *(a1 + 16) = v6;
    result = v7[3];
    *(a1 + 32) = v7[2];
    *(a1 + 48) = result;
  }

  return result;
}

unint64_t sub_1001636C0(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x654D6D6F72467369;
    v6 = 0xD000000000000014;
    if (a1 != 8)
    {
      v6 = 0xD000000000000016;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x76456E49796C6E6FLL;
    if (a1 != 5)
    {
      v7 = 0x73696D7265506B74;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 25705;
    v2 = 0xD000000000000016;
    v3 = 0x6974617469766E69;
    if (a1 != 3)
    {
      v3 = 0x6954657461647075;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0xD000000000000014;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_100163834(void *a1)
{
  v3 = v1;
  v5 = sub_10004B564(&qword_1005AD350, &qword_1004C96B0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10 - v7;
  sub_100011AEC(a1, a1[3]);
  sub_100166178();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v11) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    LOBYTE(v11) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v11) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v11) = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v11) = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v11) = 5;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v11) = 6;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v11) = 7;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v11 = *(v3 + 80);
    HIBYTE(v10) = 8;
    sub_10004B564(&qword_1005A9630, &qword_1004C5680);
    sub_10001CCC4(&qword_1005A9EA8, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v11 = *(v3 + 88);
    HIBYTE(v10) = 9;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100163B48@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1001657C0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100163B70(uint64_t a1)
{
  v2 = sub_100166178();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100163BAC(uint64_t a1)
{
  v2 = sub_100166178();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_100163BE8@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_100165B10(a2, v8);
  if (!v2)
  {
    v5 = v8[3];
    a1[2] = v8[2];
    a1[3] = v5;
    v6 = v8[5];
    a1[4] = v8[4];
    a1[5] = v6;
    result = *v8;
    v7 = v8[1];
    *a1 = v8[0];
    a1[1] = v7;
  }

  return result;
}

unint64_t _s13findmylocated16ServerHandleTypeO8rawValueACSgSS_tcfC_0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10058B0A8, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_100163C9C()
{
  result = qword_1005AD318;
  if (!qword_1005AD318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AD318);
  }

  return result;
}

unint64_t sub_100163D00(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10058B110, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_100163D4C()
{
  result = qword_1005AD320;
  if (!qword_1005AD320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AD320);
  }

  return result;
}

__n128 sub_100163DA0(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_100163DCC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 97))
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

uint64_t sub_100163E14(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 97) = 1;
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

    *(result + 97) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_100163E80(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_100163E9C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_100163EE4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_100163F4C(uint64_t a1, uint64_t a2)
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
  *(a1 + 143) = *(a2 + 143);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_100163F80(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 147))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100163FC8(uint64_t result, int a2, int a3)
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
    *(result + 146) = 0;
    *(result + 144) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 147) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 147) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100164044(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6954657461657263 && a2 == 0xEF706D617473656DLL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x73657269707865 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001004E2BA0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7250646E65697266 && a2 == 0xEB00000000736665 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 25705 && a2 == 0xE200000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001004E2BC0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001004E2BE0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x656369766544656DLL && a2 == 0xEF736C6961746544 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001004E2C00 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000023 && 0x80000001004E2C20 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x746F4E646574706FLL && a2 == 0xEF65726168536F54 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x656372756F73 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x6954657461647075 && a2 == 0xEF706D617473656DLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x6E65644968737570 && a2 == 0xEF73726569666974 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001004E2C50 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001004E2C70 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0x654D6D6F72467369 && a2 == 0xEE00736567617373)
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

void sub_1001645A0(void *a1@<X0>, uint64_t a2@<X8>)
{
  v50 = sub_10004B564(&qword_1005AD358, &qword_1004C96B8);
  v5 = *(v50 - 8);
  __chkstk_darwin(v50);
  v7 = &v31 - v6;
  sub_100011AEC(a1, a1[3]);
  sub_100166234();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    sub_100004984(a1);
  }

  else
  {
    v8 = v5;
    v49 = a2;
    LOBYTE(v60) = 0;
    v9 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v93 = v10 & 1;
    LOBYTE(v60) = 1;
    KeyedDecodingContainer.decode(_:forKey:)();
    v12 = v11;
    sub_10004B564(&qword_1005AD368, &qword_1004C96C0);
    LOBYTE(v51) = 2;
    sub_1001662F0(&qword_1005AD370, &protocol witness table for String, &protocol witness table for Double, &protocol conformance descriptor for <> [A : B]);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v48 = v60;
    LOBYTE(v60) = 3;
    v13 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v47 = v14;
    v39 = v13;
    LOBYTE(v60) = 4;
    v46 = 0;
    v37 = KeyedDecodingContainer.decode(_:forKey:)();
    v45 = v15;
    v16 = sub_10004B564(&qword_1005A9630, &qword_1004C5680);
    LOBYTE(v51) = 5;
    v17 = sub_10001CCC4(&qword_1005A9E80, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
    v40 = v16;
    v38 = v17;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v44 = v60;
    LOBYTE(v51) = 6;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v43 = v60;
    LOBYTE(v60) = 7;
    v36 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v42 = v18;
    LOBYTE(v60) = 8;
    v35 = KeyedDecodingContainer.decode(_:forKey:)();
    LOBYTE(v60) = 9;
    v34 = KeyedDecodingContainer.decode(_:forKey:)();
    LOBYTE(v60) = 10;
    v19 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    LOBYTE(v60) = 11;
    v20 = KeyedDecodingContainer.decode(_:forKey:)();
    v41 = v21;
    v22 = v20;
    LOBYTE(v60) = 12;
    v33 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v89 = v23 & 1;
    LOBYTE(v51) = 13;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v40 = v60;
    LOBYTE(v60) = 14;
    LODWORD(v38) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    LOBYTE(v60) = 15;
    v32 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v87 = 16;
    LODWORD(v46) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v34 &= 1u;
    v35 &= 1u;
    LOBYTE(v16) = v35;
    (*(v8 + 8))(v7, v50);
    *&v51 = v9;
    v24 = v93;
    BYTE8(v51) = v93;
    *&v52 = v12;
    v25 = v39;
    *(&v52 + 1) = v48;
    *&v53 = v39;
    *(&v53 + 1) = v47;
    *&v54 = v37;
    *(&v54 + 1) = v45;
    *&v55 = v44;
    *(&v55 + 1) = v43;
    *&v56 = v36;
    *(&v56 + 1) = v42;
    LOBYTE(v57) = v16;
    LOBYTE(v16) = v34;
    BYTE1(v57) = v34;
    BYTE2(v57) = v19;
    v31 = v22;
    *(&v57 + 1) = v22;
    *&v58 = v41;
    *(&v58 + 1) = v33;
    LODWORD(v50) = v89;
    v59[0] = v89;
    *&v59[1] = *v88;
    *&v59[4] = *&v88[3];
    *&v59[8] = v40;
    LOBYTE(v22) = v38;
    v59[16] = v38;
    v59[17] = v32;
    v59[18] = v46;
    sub_100166288(&v51, &v60);
    sub_100004984(a1);
    v60 = v9;
    v61 = v24;
    *v62 = *v92;
    *&v62[3] = *&v92[3];
    v63 = v12;
    v64 = v48;
    v65 = v25;
    v66 = v47;
    v67 = v37;
    v68 = v45;
    v69 = v44;
    v70 = v43;
    v71 = v36;
    v72 = v42;
    v73 = v35;
    v74 = v16;
    v75 = v19;
    v76 = v90;
    v77 = v91;
    v78 = v31;
    v79 = v41;
    v80 = v33;
    v81 = v50;
    *v82 = *v88;
    *&v82[3] = *&v88[3];
    v83 = v40;
    v84 = v22;
    v85 = v32;
    v86 = v46;
    sub_1001662C0(&v60);
    v26 = v58;
    v27 = v49;
    *(v49 + 96) = v57;
    *(v27 + 112) = v26;
    *(v27 + 128) = *v59;
    *(v27 + 143) = *&v59[15];
    v28 = v54;
    *(v27 + 32) = v53;
    *(v27 + 48) = v28;
    v29 = v56;
    *(v27 + 64) = v55;
    *(v27 + 80) = v29;
    v30 = v52;
    *v27 = v51;
    *(v27 + 16) = v30;
  }
}

uint64_t sub_100164F48(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001004E2B20 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001004E2B40 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6449726566666FLL && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6954657461647075 && a2 == 0xEF706D617473656DLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x73657269707865 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x644970756F7267 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x654D6D6F72467369 && a2 == 0xEE00736567617373)
  {

    return 7;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t sub_1001651F0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_10004B564(&qword_1005AD328, &qword_1004C9690);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v31 - v7;
  sub_100011AEC(a1, a1[3]);
  sub_100165704();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100004984(a1);
  }

  LOBYTE(v46[0]) = 0;
  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  v38 = v10;
  LOBYTE(v46[0]) = 1;
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v37 = v12;
  v35 = v11;
  LOBYTE(v46[0]) = 2;
  v34 = KeyedDecodingContainer.decode(_:forKey:)();
  v36 = v13;
  LOBYTE(v46[0]) = 3;
  v33 = KeyedDecodingContainer.decode(_:forKey:)();
  v15 = v14;
  LOBYTE(v46[0]) = 4;
  KeyedDecodingContainer.decode(_:forKey:)();
  v17 = v16;
  LOBYTE(v46[0]) = 5;
  KeyedDecodingContainer.decode(_:forKey:)();
  v19 = v18;
  LOBYTE(v46[0]) = 6;
  v20 = KeyedDecodingContainer.decode(_:forKey:)();
  *(&v32 + 1) = v21;
  *&v32 = v20;
  v49 = 7;
  v22 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  (*(v6 + 8))(v8, v5);
  *&v39 = v9;
  v23 = v38;
  *(&v39 + 1) = v38;
  *&v40 = v35;
  v24 = v37;
  *(&v40 + 1) = v37;
  *&v41 = v34;
  v25 = v36;
  *(&v41 + 1) = v36;
  *&v42 = v33;
  v31 = v15;
  *(&v42 + 1) = v15;
  *&v43 = v17;
  *(&v43 + 1) = v19;
  v26 = v32;
  v44 = v32;
  v45 = v22;
  sub_100165758(&v39, v46);
  sub_100004984(a1);
  v46[0] = v9;
  v46[1] = v23;
  v46[2] = v35;
  v46[3] = v24;
  v46[4] = v34;
  v46[5] = v25;
  v46[6] = v33;
  v46[7] = v31;
  v46[8] = v17;
  v46[9] = v19;
  v47 = __PAIR128__(*(&v32 + 1), v26);
  v48 = v22;
  result = sub_100165790(v46);
  v28 = v44;
  *(a2 + 64) = v43;
  *(a2 + 80) = v28;
  *(a2 + 96) = v45;
  v29 = v40;
  *a2 = v39;
  *(a2 + 16) = v29;
  v30 = v42;
  *(a2 + 32) = v41;
  *(a2 + 48) = v30;
  return result;
}

unint64_t sub_100165704()
{
  result = qword_1005AD330;
  if (!qword_1005AD330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AD330);
  }

  return result;
}

uint64_t sub_1001657C0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001004E2B20 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001004E2B40 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6974617469766E69 && a2 == 0xEE00747865546E6FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6954657461647075 && a2 == 0xEF706D617473656DLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x76456E49796C6E6FLL && a2 == 0xEB00000000746E65 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x73696D7265506B74 && a2 == 0xEC0000006E6F6973 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x654D6D6F72467369 && a2 == 0xEE00736567617373 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001004E2B60 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001004E2B80 == a2)
  {

    return 9;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

void sub_100165B10(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_10004B564(&qword_1005AD340, &unk_1004C96A0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v28 - v7;
  sub_100011AEC(a1, a1[3]);
  sub_100166178();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    sub_100004984(a1);
  }

  else
  {
    LOBYTE(v47[0]) = 0;
    v9 = KeyedDecodingContainer.decode(_:forKey:)();
    v40 = v10;
    LOBYTE(v47[0]) = 1;
    v11 = KeyedDecodingContainer.decode(_:forKey:)();
    v39 = v12;
    v36 = v11;
    LOBYTE(v47[0]) = 2;
    v35 = KeyedDecodingContainer.decode(_:forKey:)();
    v37 = v13;
    LOBYTE(v47[0]) = 3;
    v34 = KeyedDecodingContainer.decode(_:forKey:)();
    v38 = v14;
    LOBYTE(v47[0]) = 4;
    KeyedDecodingContainer.decode(_:forKey:)();
    v16 = v15;
    LOBYTE(v47[0]) = 5;
    v33 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    LOBYTE(v47[0]) = 6;
    v17 = KeyedDecodingContainer.decode(_:forKey:)();
    LOBYTE(v47[0]) = 7;
    v30 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v18 = sub_10004B564(&qword_1005A9630, &qword_1004C5680);
    LOBYTE(v41) = 8;
    v19 = sub_10001CCC4(&qword_1005A9E80, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
    v32 = v18;
    v31 = v19;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v29 = v47[0];
    v53 = 9;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    LOBYTE(v18) = v17 & 1;
    LODWORD(v32) = v17 & 1;
    (*(v6 + 8))(v8, v5);
    *&v41 = v9;
    v20 = v40;
    *(&v41 + 1) = v40;
    v21 = v36;
    *&v42 = v36;
    v22 = v39;
    *(&v42 + 1) = v39;
    *&v43 = v35;
    v23 = v37;
    *(&v43 + 1) = v37;
    *&v44 = v34;
    *(&v44 + 1) = v38;
    *&v45 = v16;
    BYTE8(v45) = v33;
    BYTE9(v45) = v18;
    BYTE10(v45) = v30;
    *&v46 = v29;
    *(&v46 + 1) = v54;
    v24 = v54;
    sub_1001661CC(&v41, v47);
    sub_100004984(a1);
    v47[0] = v9;
    v47[1] = v20;
    v47[2] = v21;
    v47[3] = v22;
    v47[4] = v35;
    v47[5] = v23;
    v47[6] = v34;
    v47[7] = v38;
    v47[8] = v16;
    v48 = v33;
    v49 = v32;
    v50 = v30;
    v51 = v29;
    v52 = v24;
    sub_100166204(v47);
    v25 = v44;
    a2[2] = v43;
    a2[3] = v25;
    v26 = v46;
    a2[4] = v45;
    a2[5] = v26;
    v27 = v42;
    *a2 = v41;
    a2[1] = v27;
  }
}

unint64_t sub_100166178()
{
  result = qword_1005AD348;
  if (!qword_1005AD348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AD348);
  }

  return result;
}

unint64_t sub_100166234()
{
  result = qword_1005AD360;
  if (!qword_1005AD360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AD360);
  }

  return result;
}

uint64_t sub_1001662F0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_10004B610(&qword_1005AD368, &qword_1004C96C0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ServerFriend.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ServerFriend.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1001664D4()
{
  result = qword_1005AD388;
  if (!qword_1005AD388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AD388);
  }

  return result;
}

unint64_t sub_10016652C()
{
  result = qword_1005AD390;
  if (!qword_1005AD390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AD390);
  }

  return result;
}

unint64_t sub_100166584()
{
  result = qword_1005AD398;
  if (!qword_1005AD398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AD398);
  }

  return result;
}

unint64_t sub_1001665DC()
{
  result = qword_1005AD3A0;
  if (!qword_1005AD3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AD3A0);
  }

  return result;
}

unint64_t sub_100166634()
{
  result = qword_1005AD3A8;
  if (!qword_1005AD3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AD3A8);
  }

  return result;
}

unint64_t sub_10016668C()
{
  result = qword_1005AD3B0;
  if (!qword_1005AD3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AD3B0);
  }

  return result;
}

unint64_t sub_1001666E4()
{
  result = qword_1005AD3B8;
  if (!qword_1005AD3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AD3B8);
  }

  return result;
}

unint64_t sub_10016673C()
{
  result = qword_1005AD3C0;
  if (!qword_1005AD3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AD3C0);
  }

  return result;
}

unint64_t sub_100166794()
{
  result = qword_1005AD3C8;
  if (!qword_1005AD3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AD3C8);
  }

  return result;
}

uint64_t sub_1001667E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  sub_10004B564(&qword_1005AC488, &unk_1004C8430);
  v5[8] = swift_task_alloc();
  sub_10004B564(&qword_1005B3360, &unk_1004C6AA0);
  v5[9] = swift_task_alloc();
  v6 = type metadata accessor for Date();
  v5[10] = v6;
  v5[11] = *(v6 - 8);
  v5[12] = swift_task_alloc();

  return _swift_task_switch(sub_100166920, 0, 0);
}

uint64_t sub_100166920()
{
  v1 = v0[3];
  *v1 = sub_1004B885C(0);
  v1[1] = v2;
  v3 = [objc_opt_self() defaultWorkspace];
  if (!v3)
  {
    __break(1u);
    goto LABEL_16;
  }

  v4 = v3;
  v6 = v0[11];
  v5 = v0[12];
  v7 = v0[10];
  v8 = v0[3];
  v9 = String._bridgeToObjectiveC()();
  v10 = [v4 applicationIsInstalled:v9];

  *(v8 + 16) = v10 ^ 1;
  *(v8 + 24) = static SystemInfo.uniqueDeviceID.getter();
  *(v8 + 32) = v11;
  *(v8 + 40) = static SystemInfo.deviceClass.getter();
  *(v8 + 48) = v12;
  *(v8 + 56) = 1;
  *(v8 + 64) = static SystemInfo.productType.getter();
  *(v8 + 72) = v13;
  *(v8 + 80) = static SystemInfo.osVersion.getter();
  *(v8 + 88) = v14;
  *(v8 + 96) = static SystemInfo.buildVersion.getter();
  *(v8 + 104) = v15;
  v16 = type metadata accessor for ClientContext(0);
  v0[13] = v16;
  static SystemInfo.lockState.getter();
  static Date.now.getter();
  Date.timeIntervalSince1970.getter();
  v18 = v17;
  (*(v6 + 8))(v5, v7);
  *(v8 + v16[13]) = v18 * 1000.0;
  v19 = sub_1004B906C();
  v20 = (v8 + v16[14]);
  *v20 = v19;
  v20[1] = v21;
  *(v8 + v16[15]) = 1;
  v22 = (v8 + v16[16]);
  *v22 = 3157559;
  v22[1] = 0xE300000000000000;
  v23 = static SystemInfo.platform.getter();
  v24 = (v8 + v16[17]);
  *v24 = v23;
  v24[1] = v25;
  v26 = [objc_opt_self() sharedConfiguration];
  if (!v26)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v27 = v26;
  v28 = [v26 countryCode];

  if (!v28)
  {
LABEL_17:
    __break(1u);
    return daemon.getter();
  }

  v29 = v0[9];
  v30 = v0[6];
  v31 = v0[3];

  v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v34 = v33;

  v35 = (v31 + v16[18]);
  *v35 = v32;
  v35[1] = v34;
  v36 = static SystemInfo.regionCode.getter();
  v37 = (v31 + v16[19]);
  *v37 = v36;
  v37[1] = v38;
  v39 = Account.icloudIdentifier.getter();
  v40 = (v31 + v16[20]);
  *v40 = v39;
  v40[1] = v41;
  sub_100005F04(v30, v29, &qword_1005B3360, &unk_1004C6AA0);
  v42 = type metadata accessor for Handle();
  v43 = *(v42 - 8);
  v44 = (*(v43 + 48))(v29, 1, v42);
  v45 = v0[9];
  if (v44 == 1)
  {
    sub_100002CE0(v0[9], &qword_1005B3360, &unk_1004C6AA0);
    v46 = Account.icloudIdentifier.getter();
    v48 = v47;
  }

  else
  {
    v46 = Handle.identifier.getter();
    v48 = v49;
    (*(v43 + 8))(v45, v42);
  }

  v50 = v0[8];
  v51 = v0[5];
  v52 = v0[3];
  v53 = (v52 + v16[22]);
  *v53 = v46;
  v53[1] = v48;
  v54 = v52 + v16[24];
  *v54 = 0;
  *(v54 + 8) = 1;
  sub_100005F04(v51, v50, &qword_1005AC488, &unk_1004C8430);
  v55 = type metadata accessor for RequestOrigin();
  v56 = *(v55 - 8);
  v57 = (*(v56 + 48))(v50, 1, v55);
  v58 = v0[8];
  if (v57 == 1)
  {
    sub_100002CE0(v0[8], &qword_1005AC488, &unk_1004C8430);
  }

  else
  {
    v59 = RequestOrigin.contextBundleApp.getter();
    v61 = v60;
    (*(v56 + 8))(v58, v55);
    if (v61)
    {
      v62 = v61;
      v63 = v59;
      goto LABEL_12;
    }
  }

  v63 = sub_1004B885C(3u);
LABEL_12:
  v64 = v0[3];
  v65 = (v64 + v16[23]);
  *v65 = v63;
  v65[1] = v62;
  *(v64 + v16[25]) = 2;
  *(v64 + v16[26]) = 0;
  v66 = (v64 + v16[27]);
  *v66 = 0;
  v66[1] = 0;
  v67 = (v64 + v16[28]);
  *v67 = 0;
  v67[1] = 0;
  v68 = (v64 + v16[29]);
  *v68 = 0;
  v68[1] = 0;
  v69 = swift_task_alloc();
  v0[14] = v69;
  *v69 = v0;
  v69[1] = sub_100166DE0;

  return daemon.getter();
}

uint64_t sub_100166DE0(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 120) = a1;

  v3 = swift_task_alloc();
  *(v2 + 128) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for DataManager(0);
  v6 = sub_100009290(&unk_1005AFA50, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100009290(&qword_1005A90D0, type metadata accessor for DataManager, &unk_1004D1410);
  *v3 = v9;
  v3[1] = sub_100166FBC;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100166FBC(uint64_t a1)
{
  v4 = *v2;
  *(v4 + 136) = a1;
  *(v4 + 144) = v1;

  if (v1)
  {
    v5 = sub_1001672D0;
    v6 = 0;
  }

  else
  {

    v5 = sub_1001670F4;
    v6 = a1;
  }

  return _swift_task_switch(v5, v6, 0);
}

uint64_t sub_1001670F4()
{
  v1 = (v0[17] + OBJC_IVAR____TtC13findmylocated11DataManager_apnsToken);
  v2 = *v1;
  v0[19] = *v1;
  v3 = v1[1];
  v0[20] = v3;
  sub_10002CF44(v2, v3);

  return _swift_task_switch(sub_10016717C, 0, 0);
}

uint64_t sub_10016717C()
{
  v1 = v0[20];
  if (v1 >> 60 == 15)
  {

    v2 = 0;
    v3 = 0;
  }

  else
  {
    v4 = v0[19];
    v2 = Data.hexString.getter();
    v3 = v5;
    sub_10001A794(v4, v1);
  }

  v6 = v0[13];
  v7 = v0[5];
  v9 = v0[3];
  v8 = v0[4];
  sub_100002CE0(v0[6], &qword_1005B3360, &unk_1004C6AA0);
  sub_100002CE0(v7, &qword_1005AC488, &unk_1004C8430);
  v10 = type metadata accessor for Account();
  (*(*(v10 - 8) + 8))(v8, v10);
  v11 = (v9 + *(v6 + 84));
  *v11 = v2;
  v11[1] = v3;

  v12 = v0[1];

  return v12();
}

uint64_t sub_1001672D0()
{
  v21 = v0;

  if (qword_1005A7F90 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A6F0(v1, qword_1005DFC40);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[18];
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[4];
  if (v4)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v20 = v10;
    *v9 = 136446210;
    v0[2] = v5;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v11 = String.init<A>(describing:)();
    v19 = v8;
    v13 = sub_10000D01C(v11, v12, &v20);

    *(v9 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v2, v3, "ERROR: %{public}s", v9, 0xCu);
    sub_100004984(v10);

    sub_100002CE0(v7, &qword_1005B3360, &unk_1004C6AA0);
    sub_100002CE0(v6, &qword_1005AC488, &unk_1004C8430);
    v14 = type metadata accessor for Account();
    (*(*(v14 - 8) + 8))(v19, v14);
  }

  else
  {

    sub_100002CE0(v7, &qword_1005B3360, &unk_1004C6AA0);
    sub_100002CE0(v6, &qword_1005AC488, &unk_1004C8430);
    v15 = type metadata accessor for Account();
    (*(*(v15 - 8) + 8))(v8, v15);
  }

  v16 = (v0[3] + *(v0[13] + 84));
  *v16 = 0;
  v16[1] = 0;

  v17 = v0[1];

  return v17();
}

uint64_t type metadata accessor for ClientContext(uint64_t a1)
{
  result = qword_1005AD428;
  if (!qword_1005AD428)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1001675FC(char a1)
{
  result = 0x656D614E707061;
  switch(a1)
  {
    case 1:
      result = 0x707041464D467369;
      break;
    case 2:
      result = 0x4455656369766564;
      break;
    case 3:
      result = 0x6C43656369766564;
      break;
    case 4:
      result = 0xD000000000000011;
      break;
    case 5:
      result = 0x54746375646F7270;
      break;
    case 6:
      result = 0x6F6973726556736FLL;
      break;
    case 7:
      result = 0x726556646C697562;
      break;
    case 8:
      result = 0x74536B636F6C6E75;
      break;
    case 9:
      result = 0x54746E6572727563;
      break;
    case 10:
      result = 0x656E6F7A656D6974;
      break;
    case 11:
      result = 0x45676E69636E6566;
      break;
    case 12:
      result = 0x6973726556707061;
      break;
    case 13:
      result = 0x6D726F6674616C70;
      break;
    case 14:
      result = 0x437972746E756F63;
      break;
    case 15:
      result = 0x6F436E6F69676572;
      break;
    case 16:
      result = 0x6E4964656E676973;
      break;
    case 17:
      result = 0x6E656B6F54737061;
      break;
    case 18:
      result = 0x644972656C6C6163;
      break;
    case 19:
      result = 0xD000000000000010;
      break;
    case 20:
      result = 0xD000000000000016;
      break;
    case 21:
    case 22:
      result = 0xD000000000000012;
      break;
    case 23:
      result = 0xD000000000000010;
      break;
    case 24:
      result = 1701869940;
      break;
    case 25:
      result = 0x6E6F73616572;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_10016790C(void *a1)
{
  v3 = v1;
  v5 = sub_10004B564(&qword_1005AD4E0, &qword_1004C9A70);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11[-v7];
  sub_100011AEC(a1, a1[3]);
  sub_1001691B0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v12) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    LOBYTE(v12) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v12) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v12) = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v12) = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v12) = 5;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v12) = 6;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v12) = 7;
    KeyedEncodingContainer.encode(_:forKey:)();
    v9 = type metadata accessor for ClientContext(0);
    LOBYTE(v12) = 8;
    type metadata accessor for SystemInfo.DeviceLockState();
    sub_100009290(&qword_1005AD4E8, &type metadata accessor for SystemInfo.DeviceLockState, &protocol conformance descriptor for SystemInfo.DeviceLockState);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v12) = 9;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v12) = 10;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v12) = 11;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v12) = 12;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v12) = 13;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v12) = 14;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v12) = 15;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v12) = 16;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v12) = 17;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v12) = 18;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v12) = 19;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v12) = 20;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v12) = 21;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v12 = *(v3 + *(v9 + 104));
    v11[7] = 22;
    sub_10004B564(&qword_1005AD368, &qword_1004C96C0);
    sub_1001662F0(&qword_1005AD380, &protocol witness table for String, &protocol witness table for Double, &protocol conformance descriptor for <> [A : B]);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v12) = 23;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v12) = 24;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v12) = 25;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

void sub_100167F40(void *a1@<X0>, uint64_t a2@<X8>)
{
  v69 = a2;
  v3 = type metadata accessor for SystemInfo.DeviceLockState();
  v70 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_10004B564(&qword_1005AD4C8, &qword_1004C9A68);
  v71 = *(v73 - 8);
  __chkstk_darwin(v73);
  v7 = &v65 - v6;
  v8 = type metadata accessor for ClientContext(0);
  __chkstk_darwin(v8);
  v10 = (&v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100011AEC(a1, a1[3]);
  sub_1001691B0();
  v72 = v7;
  v11 = v74;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v11)
  {
    sub_100004984(a1);
  }

  else
  {
    v12 = v71;
    v74 = a1;
    v66 = v3;
    v67 = v8;
    v68 = v10;
    LOBYTE(v76) = 0;
    v13 = KeyedDecodingContainer.decode(_:forKey:)();
    v14 = v68;
    *v68 = v13;
    v14[1] = v15;
    LOBYTE(v76) = 1;
    *(v14 + 16) = KeyedDecodingContainer.decode(_:forKey:)() & 1;
    LOBYTE(v76) = 2;
    v14[3] = KeyedDecodingContainer.decode(_:forKey:)();
    v14[4] = v16;
    LOBYTE(v76) = 3;
    v14[5] = KeyedDecodingContainer.decode(_:forKey:)();
    v14[6] = v17;
    LOBYTE(v76) = 4;
    *(v14 + 56) = KeyedDecodingContainer.decode(_:forKey:)() & 1;
    LOBYTE(v76) = 5;
    v14[8] = KeyedDecodingContainer.decode(_:forKey:)();
    v14[9] = v18;
    LOBYTE(v76) = 6;
    v14[10] = KeyedDecodingContainer.decode(_:forKey:)();
    v14[11] = v19;
    LOBYTE(v76) = 7;
    v20 = KeyedDecodingContainer.decode(_:forKey:)();
    v21 = v68;
    v68[12] = v20;
    v21[13] = v22;
    LOBYTE(v76) = 8;
    sub_100009290(&qword_1005AD4D8, &type metadata accessor for SystemInfo.DeviceLockState, &protocol conformance descriptor for SystemInfo.DeviceLockState);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v70 + 32))(v68 + v67[12], v5, v66);
    LOBYTE(v76) = 9;
    KeyedDecodingContainer.decode(_:forKey:)();
    *(v68 + v67[13]) = v23;
    LOBYTE(v76) = 10;
    v24 = KeyedDecodingContainer.decode(_:forKey:)();
    v25 = (v68 + v67[14]);
    *v25 = v24;
    v25[1] = v26;
    LOBYTE(v76) = 11;
    *(v68 + v67[15]) = KeyedDecodingContainer.decode(_:forKey:)() & 1;
    LOBYTE(v76) = 12;
    v27 = KeyedDecodingContainer.decode(_:forKey:)();
    v28 = (v68 + v67[16]);
    *v28 = v27;
    v28[1] = v29;
    LOBYTE(v76) = 13;
    v30 = KeyedDecodingContainer.decode(_:forKey:)();
    v31 = (v68 + v67[17]);
    *v31 = v30;
    v31[1] = v32;
    LOBYTE(v76) = 14;
    v33 = KeyedDecodingContainer.decode(_:forKey:)();
    v34 = (v68 + v67[18]);
    *v34 = v33;
    v34[1] = v35;
    LOBYTE(v76) = 15;
    v36 = KeyedDecodingContainer.decode(_:forKey:)();
    v37 = (v68 + v67[19]);
    *v37 = v36;
    v37[1] = v38;
    LOBYTE(v76) = 16;
    v39 = KeyedDecodingContainer.decode(_:forKey:)();
    v40 = (v68 + v67[20]);
    *v40 = v39;
    v40[1] = v41;
    LOBYTE(v76) = 17;
    v42 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v43 = (v68 + v67[21]);
    *v43 = v42;
    v43[1] = v44;
    LOBYTE(v76) = 18;
    v45 = KeyedDecodingContainer.decode(_:forKey:)();
    v46 = (v68 + v67[22]);
    *v46 = v45;
    v46[1] = v47;
    LOBYTE(v76) = 19;
    v48 = KeyedDecodingContainer.decode(_:forKey:)();
    v49 = (v68 + v67[23]);
    *v49 = v48;
    v49[1] = v50;
    LOBYTE(v76) = 20;
    v51 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v52 = v68 + v67[24];
    *v52 = v51;
    v52[8] = v53 & 1;
    LOBYTE(v76) = 21;
    *(v68 + v67[25]) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    sub_10004B564(&qword_1005AD368, &qword_1004C96C0);
    v75 = 22;
    sub_1001662F0(&qword_1005AD370, &protocol witness table for String, &protocol witness table for Double, &protocol conformance descriptor for <> [A : B]);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    *(v68 + v67[26]) = v76;
    LOBYTE(v76) = 23;
    v54 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v55 = (v68 + v67[27]);
    *v55 = v54;
    v55[1] = v56;
    LOBYTE(v76) = 24;
    v57 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v58 = (v68 + v67[28]);
    *v58 = v57;
    v58[1] = v59;
    LOBYTE(v76) = 25;
    v60 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v62 = v61;
    (*(v12 + 8))(v72, v73);
    v63 = v68;
    v64 = (v68 + v67[29]);
    *v64 = v60;
    v64[1] = v62;
    sub_100169204(v63, v69);
    sub_100004984(v74);
    sub_100169268(v63);
  }
}

uint64_t sub_100168EF0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10016951C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100168F24(uint64_t a1)
{
  v2 = sub_1001691B0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100168F60(uint64_t a1)
{
  v2 = sub_1001691B0();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_100168FF4(uint64_t a1)
{
  type metadata accessor for SystemInfo.DeviceLockState();
  if (v1 <= 0x3F)
  {
    sub_10008B2BC(319, &qword_1005A9790, &type metadata for String);
    if (v2 <= 0x3F)
    {
      sub_10008B2BC(319, &qword_1005A9788, &type metadata for Int);
      if (v3 <= 0x3F)
      {
        sub_10008B2BC(319, &qword_1005AC700, &type metadata for Bool);
        if (v4 <= 0x3F)
        {
          sub_10016914C(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_10016914C(uint64_t a1)
{
  if (!qword_1005AD438)
  {
    sub_10004B610(&qword_1005AD368, &qword_1004C96C0);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_1005AD438);
    }
  }
}

unint64_t sub_1001691B0()
{
  result = qword_1005AD4D0;
  if (!qword_1005AD4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AD4D0);
  }

  return result;
}

uint64_t sub_100169204(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ClientContext(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100169268(uint64_t a1)
{
  v2 = type metadata accessor for ClientContext(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t getEnumTagSinglePayload for ClientContext.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE7)
  {
    goto LABEL_17;
  }

  if (a2 + 25 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 25) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 25;
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

      return (*a1 | (v4 << 8)) - 25;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 25;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1A;
  v8 = v6 - 26;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ClientContext.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 25 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 25) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE7)
  {
    v4 = 0;
  }

  if (a2 > 0xE6)
  {
    v5 = ((a2 - 231) >> 8) + 1;
    *result = a2 + 25;
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
    *result = a2 + 25;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100169418()
{
  result = qword_1005AD4F0;
  if (!qword_1005AD4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AD4F0);
  }

  return result;
}

unint64_t sub_100169470()
{
  result = qword_1005AD4F8;
  if (!qword_1005AD4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AD4F8);
  }

  return result;
}

unint64_t sub_1001694C8()
{
  result = qword_1005AD500;
  if (!qword_1005AD500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AD500);
  }

  return result;
}

uint64_t sub_10016951C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656D614E707061 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x707041464D467369 && a2 == 0xEF6465766F6D6552 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4455656369766564 && a2 == 0xEA00000000004449 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6C43656369766564 && a2 == 0xEB00000000737361 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001004E2C90 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x54746375646F7270 && a2 == 0xEB00000000657079 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6F6973726556736FLL && a2 == 0xE90000000000006ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x726556646C697562 && a2 == 0xEC0000006E6F6973 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x74536B636F6C6E75 && a2 == 0xEB00000000657461 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x54746E6572727563 && a2 == 0xEB00000000656D69 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x656E6F7A656D6974 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x45676E69636E6566 && a2 == 0xEE0064656C62616ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x6973726556707061 && a2 == 0xEA00000000006E6FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x6D726F6674616C70 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x437972746E756F63 && a2 == 0xEB0000000065646FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x6F436E6F69676572 && a2 == 0xEA00000000006564 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0x6E4964656E676973 && a2 == 0xEA00000000007341 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0x6E656B6F54737061 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0x644972656C6C6163 && a2 == 0xEE00656C646E6148 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001004E2CB0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001004E2CD0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 20;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001004E2CF0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 21;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001004E2D10 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 22;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001004E2D30 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 23;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 24;
  }

  else if (a1 == 0x6E6F73616572 && a2 == 0xE600000000000000)
  {

    return 25;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 25;
    }

    else
    {
      return 26;
    }
  }
}

uint64_t sub_100169D40()
{
  type metadata accessor for MainActor();
  v0[2] = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[3] = v2;
  v0[4] = v1;

  return _swift_task_switch(sub_100169DD4, v2, v1);
}

uint64_t sub_100169DD4()
{
  *(v0 + 40) = type metadata accessor for Daemon();
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_100169EC8;

  return Daemon.__allocating_init(identifier:profile:registerAlarmEvent:services:)(0xD00000000000001ELL, 0x80000001004DE7B0, 0x6F6C796D646E6966, 0xED00006465746163, 1, &unk_1004C9BA8, 0);
}

uint64_t sub_100169EC8(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v3[7] = a1;
  v3[8] = v1;

  if (v1)
  {
    v5 = v3[3];
    v6 = v3[4];

    return _swift_task_switch(sub_10016A22C, v5, v6);
  }

  else
  {
    v7 = swift_task_alloc();
    v3[9] = v7;
    v8 = sub_1000092D8(&unk_1005AFA50, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
    *v7 = v4;
    v7[1] = sub_10016A084;
    v9 = v3[5];

    return ActorServiceDaemon.run()(v9, v8);
  }
}

uint64_t sub_10016A084()
{
  v2 = *v1;
  *(*v1 + 80) = v0;

  v3 = *(v2 + 32);
  v4 = *(v2 + 24);
  if (v0)
  {
    v5 = sub_10016A3C4;
  }

  else
  {
    v5 = sub_10016A1C0;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10016A1C0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10016A22C()
{
  if (qword_1005A7F90 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000A6F0(v0, qword_1005DFC40);
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    v5 = _convertErrorToNSError(_:)();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "Error creating Daemon instance: %@", v3, 0xCu);
    sub_100139370(v4);
  }

  return _assertionFailure(_:_:file:line:flags:)();
}

uint64_t sub_10016A3C4()
{

  if (qword_1005A7F90 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000A6F0(v0, qword_1005DFC40);
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    v5 = _convertErrorToNSError(_:)();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "Error creating Daemon instance: %@", v3, 0xCu);
    sub_100139370(v4);
  }

  return _assertionFailure(_:_:file:line:flags:)();
}

uint64_t sub_10016A564()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100002D40;

  return sub_10016B11C();
}

uint64_t sub_10016A604()
{
  v0 = type metadata accessor for Logger();
  sub_10004F154(v0, qword_1005DFC40);
  sub_10000A6F0(v0, qword_1005DFC40);
  return Logger.init(subsystem:category:)();
}

int main(int argc, const char **argv, const char **envp)
{
  swift_task_create();
  swift_task_getMainExecutor();
  swift_job_run();
  result = swift_task_asyncMainDrainQueue();
  __break(1u);
  return result;
}

uint64_t sub_10016A6D8()
{
  v0[2] = type metadata accessor for MainActor();
  v0[3] = static MainActor.shared.getter();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_10016A77C;

  return sub_100169D40();
}

uint64_t sub_10016A77C()
{

  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10016A8B8, v1, v0);
}

uint64_t sub_10016A8F0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100002D40;

  return sub_10016A564();
}

uint64_t sub_10016A97C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for IDSSessionLinkSelectionStrategy();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();

  return _swift_task_switch(sub_10016AA40, 0, 0);
}

uint64_t sub_10016AA40()
{
  v2 = v0[7];
  v1 = v0[8];
  v4 = v0[5];
  v3 = v0[6];
  v5 = v0[4];
  swift_defaultActor_initialize();
  v4[14] = 0xD000000000000013;
  v4[15] = 0x80000001004E2EB0;
  v4[18] = sub_1002092B4(_swiftEmptyArrayStorage);
  sub_10004B564(&qword_1005AD578, &unk_1004C9BD0);
  (*(v2 + 16))(v1, v5, v3);

  v6 = swift_task_alloc();
  v0[9] = v6;
  *v6 = v0;
  v6[1] = sub_10016AB74;
  v7 = v0[8];
  v9 = v0[2];
  v8 = v0[3];

  return InternetMessaging.__allocating_init(serviceName:linkSelectionStrategy:crossAccount:)(v9, v8, v7, 1);
}

uint64_t sub_10016AB74(uint64_t a1)
{
  *(*v1 + 80) = a1;

  return _swift_task_switch(sub_10016AC74, 0, 0);
}

uint64_t sub_10016AC74()
{
  v1 = *(v0 + 40);
  *(v1 + 128) = *(v0 + 80);
  type metadata accessor for QueryController();
  *(v1 + 136) = QueryController.__allocating_init(serviceName:)();

  return _swift_task_switch(sub_10016DAEC, v1, 0);
}

uint64_t sub_10016AD0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for IDSSessionLinkSelectionStrategy();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();

  return _swift_task_switch(sub_10016ADD0, 0, 0);
}

uint64_t sub_10016ADD0()
{
  v2 = v0[7];
  v1 = v0[8];
  v4 = v0[5];
  v3 = v0[6];
  v5 = v0[4];
  swift_defaultActor_initialize();
  v4[14] = 0xD000000000000013;
  v4[15] = 0x80000001004E2EB0;
  v4[18] = sub_1002092D8(_swiftEmptyArrayStorage);
  sub_10004B564(&qword_1005AD570, &qword_1004C9BC8);
  (*(v2 + 16))(v1, v5, v3);

  v6 = swift_task_alloc();
  v0[9] = v6;
  *v6 = v0;
  v6[1] = sub_10016AF04;
  v7 = v0[8];
  v9 = v0[2];
  v8 = v0[3];

  return InternetMessaging.__allocating_init(serviceName:linkSelectionStrategy:crossAccount:)(v9, v8, v7, 1);
}

uint64_t sub_10016AF04(uint64_t a1)
{
  *(*v1 + 80) = a1;

  return _swift_task_switch(sub_10016B004, 0, 0);
}

uint64_t sub_10016B004()
{
  v1 = *(v0 + 40);
  *(v1 + 128) = *(v0 + 80);
  type metadata accessor for QueryController();
  *(v1 + 136) = QueryController.__allocating_init(serviceName:)();

  return _swift_task_switch(sub_10016B09C, v1, 0);
}

uint64_t sub_10016B09C()
{
  (*(v0[7] + 8))(v0[4], v0[6]);

  v1 = v0[1];
  v2 = v0[5];

  return v1(v2);
}

uint64_t sub_10016B11C()
{
  type metadata accessor for UUID();
  v0[2] = swift_task_alloc();
  v1 = type metadata accessor for IDSSessionLinkSelectionStrategy();
  v0[3] = v1;
  v0[4] = *(v1 - 8);
  v0[5] = swift_task_alloc();

  return _swift_task_switch(sub_10016B204, 0, 0);
}

uint64_t sub_10016B204()
{
  type metadata accessor for MigrationService();
  v1 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v1 + 112) = 0x6F6974617267694DLL;
  *(v1 + 120) = 0xE90000000000006ELL;
  v2 = sub_1001FD30C(0, 1, 1, _swiftEmptyArrayStorage);
  v4 = v2[2];
  v3 = v2[3];
  if (v4 >= v3 >> 1)
  {
    v2 = sub_1001FD30C((v3 > 1), v4 + 1, 1, v2);
  }

  *(v0 + 48) = v2;
  v5 = sub_1000092D8(&qword_1005AD508, type metadata accessor for MigrationService, &unk_1004DCF18);
  v2[2] = v4 + 1;
  v6 = &v2[2 * v4];
  v6[4] = v1;
  v6[5] = v5;
  type metadata accessor for CloudStorageService();
  swift_allocObject();
  v7 = swift_task_alloc();
  *(v0 + 56) = v7;
  *v7 = v0;
  v7[1] = sub_10016B378;

  return sub_1001B9778();
}

uint64_t sub_10016B378(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 64) = a1;
  *(v3 + 72) = v1;

  if (v1)
  {
    v4 = sub_10016B5B4;
  }

  else
  {
    v4 = sub_10016B48C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10016B48C()
{
  v1 = v0[6];
  v3 = v1[2];
  v2 = v1[3];
  if (v3 >= v2 >> 1)
  {
    v1 = sub_1001FD30C((v2 > 1), v3 + 1, 1, v0[6]);
  }

  v4 = v0[8];
  v5 = sub_1000092D8(&qword_1005AD568, type metadata accessor for CloudStorageService, &unk_1004D03B0);
  v1[2] = v3 + 1;
  v6 = &v1[2 * v3];
  v6[4] = v4;
  v6[5] = v5;
  v0[10] = v1;
  type metadata accessor for LocalStorageService();
  swift_allocObject();
  v7 = swift_task_alloc();
  v0[11] = v7;
  *v7 = v0;
  v7[1] = sub_10016B794;

  return sub_100307340();
}

uint64_t sub_10016B5B4()
{
  if (qword_1005A7F90 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A6F0(v1, qword_1005DFC40);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    v6 = _convertErrorToNSError(_:)();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Error creating CloudStorageService: %@", v4, 0xCu);
    sub_100139370(v5);
  }

  else
  {
  }

  v0[10] = v0[6];
  type metadata accessor for LocalStorageService();
  swift_allocObject();
  v7 = swift_task_alloc();
  v0[11] = v7;
  *v7 = v0;
  v7[1] = sub_10016B794;

  return sub_100307340();
}

uint64_t sub_10016B794(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 96) = a1;
  *(v3 + 104) = v1;

  if (v1)
  {
    v4 = sub_10016BAC4;
  }

  else
  {
    v4 = sub_10016B8A8;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10016B8A8()
{
  v1 = v0[10];
  v3 = v1[2];
  v2 = v1[3];
  if (v3 >= v2 >> 1)
  {
    v1 = sub_1001FD30C((v2 > 1), v3 + 1, 1, v0[10]);
  }

  v4 = v0[12];
  v5 = sub_1000092D8(&qword_1005AAB88, type metadata accessor for LocalStorageService, &unk_1004D5A30);
  v1[2] = v3 + 1;
  v6 = &v1[2 * v3];
  v6[4] = v4;
  v6[5] = v5;
  type metadata accessor for FirstUnlockService();
  Unlock = FirstUnlockService.__allocating_init()();
  v9 = v1[2];
  v8 = v1[3];
  if (v9 >= v8 >> 1)
  {
    v1 = sub_1001FD30C((v8 > 1), v9 + 1, 1, v1);
  }

  v0[14] = v1;
  v11 = v0[4];
  v10 = v0[5];
  v12 = v0[3];
  v13 = sub_1000092D8(&qword_1005AD510, &type metadata accessor for FirstUnlockService, &protocol conformance descriptor for FirstUnlockService);
  v1[2] = v9 + 1;
  v14 = &v1[2 * v9];
  v14[4] = Unlock;
  v14[5] = v13;
  v15 = enum case for IDSSessionLinkSelectionStrategy.default(_:);
  v16 = *(v11 + 104);
  v0[15] = v16;
  v0[16] = (v11 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v16(v10, v15, v12);
  sub_10004B564(&qword_1005A90E0, &qword_1004C2490);
  swift_allocObject();
  v17 = swift_task_alloc();
  v0[17] = v17;
  *v17 = v0;
  v17[1] = sub_10016BD90;
  v18 = v0[5];

  return sub_10016A97C(0xD00000000000001BLL, 0x80000001004E2DA0, v18);
}

uint64_t sub_10016BAC4()
{
  if (qword_1005A7F90 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A6F0(v1, qword_1005DFC40);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    v6 = _convertErrorToNSError(_:)();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Error creating LocalStorageService: %@", v4, 0xCu);
    sub_100139370(v5);
  }

  else
  {
  }

  v7 = v0[10];
  type metadata accessor for FirstUnlockService();
  Unlock = FirstUnlockService.__allocating_init()();
  v10 = v7[2];
  v9 = v7[3];
  if (v10 >= v9 >> 1)
  {
    v7 = sub_1001FD30C((v9 > 1), v10 + 1, 1, v7);
  }

  v0[14] = v7;
  v12 = v0[4];
  v11 = v0[5];
  v13 = v0[3];
  v14 = sub_1000092D8(&qword_1005AD510, &type metadata accessor for FirstUnlockService, &protocol conformance descriptor for FirstUnlockService);
  v7[2] = v10 + 1;
  v15 = &v7[2 * v10];
  v15[4] = Unlock;
  v15[5] = v14;
  v16 = enum case for IDSSessionLinkSelectionStrategy.default(_:);
  v17 = *(v12 + 104);
  v0[15] = v17;
  v0[16] = (v12 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v17(v11, v16, v13);
  sub_10004B564(&qword_1005A90E0, &qword_1004C2490);
  swift_allocObject();
  v18 = swift_task_alloc();
  v0[17] = v18;
  *v18 = v0;
  v18[1] = sub_10016BD90;
  v19 = v0[5];

  return sub_10016A97C(0xD00000000000001BLL, 0x80000001004E2DA0, v19);
}

uint64_t sub_10016BD90(uint64_t a1)
{
  *(*v1 + 144) = a1;

  return _swift_task_switch(sub_10016BE90, 0, 0);
}

uint64_t sub_10016BE90()
{
  v1 = v0[14];
  v3 = v1[2];
  v2 = v1[3];
  if (v3 >= v2 >> 1)
  {
    v1 = sub_1001FD30C((v2 > 1), v3 + 1, 1, v0[14]);
  }

  v0[19] = v1;
  v4 = v0[18];
  v5 = sub_10016DA98(&qword_1005A90E8, &qword_1005A90E0, &qword_1004C2490);
  v1[2] = v3 + 1;
  v6 = &v1[2 * v3];
  v6[4] = v4;
  v6[5] = v5;
  type metadata accessor for LocalMessagingService();
  v7 = swift_allocObject();
  v0[20] = v7;
  swift_defaultActor_initialize();
  v7[14] = 0xD000000000000015;
  v7[15] = 0x80000001004E2DC0;
  v7[17] = _swiftEmptyDictionarySingleton;
  v7[18] = _swiftEmptyDictionarySingleton;
  sub_10004B564(&qword_1005AD518, &qword_1004D54F0);
  v8 = swift_task_alloc();
  v0[21] = v8;
  *v8 = v0;
  v8[1] = sub_10016C004;

  return LocalMessaging.__allocating_init(serviceName:)(0xD000000000000021, 0x80000001004E2DE0);
}

uint64_t sub_10016C004(uint64_t a1)
{
  *(*v1 + 176) = a1;

  return _swift_task_switch(sub_10016C104, 0, 0);
}

uint64_t sub_10016C12C()
{
  v1 = v0[19];
  v3 = v1[2];
  v2 = v1[3];
  if (v3 >= v2 >> 1)
  {
    v1 = sub_1001FD30C((v2 > 1), v3 + 1, 1, v0[19]);
  }

  v0[23] = v1;
  v4 = v0[20];
  v5 = v0[15];
  v6 = v0[5];
  v7 = v0[3];
  v8 = sub_1000092D8(&qword_1005AD520, type metadata accessor for LocalMessagingService, &unk_1004D5468);
  v1[2] = v3 + 1;
  v9 = &v1[2 * v3];
  v9[4] = v4;
  v9[5] = v8;
  *v6 = 0x3FF0000000000000;
  v5(v6, enum case for IDSSessionLinkSelectionStrategy.allowedPacketsPerSecond(_:), v7);
  sub_10004B564(&qword_1005AB8D8, &qword_1004D9660);
  swift_allocObject();
  v10 = swift_task_alloc();
  v0[24] = v10;
  *v10 = v0;
  v10[1] = sub_10016C2B8;
  v11 = v0[5];

  return sub_10016AD0C(0xD00000000000001BLL, 0x80000001004E2E10, v11);
}

uint64_t sub_10016C2B8(uint64_t a1)
{
  *(*v1 + 200) = a1;

  return _swift_task_switch(sub_10016C3B8, 0, 0);
}

uint64_t sub_10016C3B8()
{
  v1 = v0[23];
  v3 = v1[2];
  v2 = v1[3];
  if (v3 >= v2 >> 1)
  {
    v1 = sub_1001FD30C((v2 > 1), v3 + 1, 1, v0[23]);
  }

  v4 = v0[25];
  v5 = sub_10016DA98(&qword_1005AB8E0, &qword_1005AB8D8, &qword_1004D9660);
  v1[2] = v3 + 1;
  v6 = &v1[2 * v3];
  v6[4] = v4;
  v6[5] = v5;
  type metadata accessor for SecureLocationService();
  v7 = swift_allocObject();
  swift_defaultActor_initialize();
  strcpy((v7 + 112), "SecureLocation");
  *(v7 + 127) = -18;
  *(v7 + 128) = &_swiftEmptySetSingleton;
  v9 = v1[2];
  v8 = v1[3];
  if (v9 >= v8 >> 1)
  {
    v1 = sub_1001FD30C((v8 > 1), v9 + 1, 1, v1);
  }

  v10 = sub_1000092D8(&qword_1005AD528, type metadata accessor for SecureLocationService, &unk_1004D95B8);
  v1[2] = v9 + 1;
  v11 = &v1[2 * v9];
  v11[4] = v7;
  v11[5] = v10;
  type metadata accessor for CommandManager(0);
  v12 = swift_allocObject();
  swift_defaultActor_initialize();
  strcpy((v12 + 112), "CommandManager");
  *(v12 + 127) = -18;
  static Date.now.getter();
  v13 = OBJC_IVAR____TtC13findmylocated14CommandManager_coleasedRefreshPriority;
  v14 = enum case for LocatePriority.shallow(_:);
  Priority = type metadata accessor for LocatePriority();
  (*(*(Priority - 8) + 104))(v12 + v13, v14, Priority);
  v16 = OBJC_IVAR____TtC13findmylocated14CommandManager_refreshScheduled;
  v17 = enum case for LegacyRefreshSchedule.notScheduled(_:);
  refreshed = type metadata accessor for LegacyRefreshSchedule();
  (*(*(refreshed - 8) + 104))(v12 + v16, v17, refreshed);
  *(v12 + OBJC_IVAR____TtC13findmylocated14CommandManager_coalescedCommands) = _swiftEmptyArrayStorage;
  v19 = OBJC_IVAR____TtC13findmylocated14CommandManager_coalesceTaskList;
  v0[26] = type metadata accessor for WorkItemQueue();
  UUID.init()();
  *(v12 + v19) = WorkItemQueue.__allocating_init(identifier:)();
  v21 = v1[2];
  v20 = v1[3];
  if (v21 >= v20 >> 1)
  {
    v1 = sub_1001FD30C((v20 > 1), v21 + 1, 1, v1);
  }

  v22 = sub_1000092D8(&qword_1005A90C8, type metadata accessor for CommandManager, &unk_1004C23F8);
  v1[2] = v21 + 1;
  v23 = &v1[2 * v21];
  v23[4] = v12;
  v23[5] = v22;
  type metadata accessor for AccountService(0);
  swift_allocObject();
  v24 = sub_100493CAC();
  v26 = v1[2];
  v25 = v1[3];
  if (v26 >= v25 >> 1)
  {
    v1 = sub_1001FD30C((v25 > 1), v26 + 1, 1, v1);
  }

  v27 = sub_1000092D8(&qword_1005A9118, type metadata accessor for AccountService, &unk_1004DCC10);
  v1[2] = v26 + 1;
  v28 = &v1[2 * v26];
  v28[4] = v24;
  v28[5] = v27;
  type metadata accessor for CredentialService();
  swift_allocObject();
  v29 = sub_1001D2E74();
  v31 = v1[2];
  v30 = v1[3];
  if (v31 >= v30 >> 1)
  {
    v1 = sub_1001FD30C((v30 > 1), v31 + 1, 1, v1);
  }

  v0[27] = v1;
  v32 = sub_1000092D8(&unk_1005AF9F0, type metadata accessor for CredentialService, &unk_1004D10A8);
  v1[2] = v31 + 1;
  v33 = &v1[2 * v31];
  v33[4] = v29;
  v33[5] = v32;
  type metadata accessor for SettingsService(0);
  swift_allocObject();
  v34 = swift_task_alloc();
  v0[28] = v34;
  *v34 = v0;
  v34[1] = sub_10016C868;

  return sub_10047C770();
}

uint64_t sub_10016C868(uint64_t a1)
{
  *(*v1 + 232) = a1;

  return _swift_task_switch(sub_10016C968, 0, 0);
}

uint64_t sub_10016C968()
{
  v18 = v0;
  v1 = v0[27];
  v3 = v1[2];
  v2 = v1[3];
  if (v3 >= v2 >> 1)
  {
    v1 = sub_1001FD30C((v2 > 1), v3 + 1, 1, v0[27]);
  }

  v4 = v0[29];
  v5 = sub_1000092D8(&qword_1005AA6E8, type metadata accessor for SettingsService, &unk_1004DC468);
  v1[2] = v3 + 1;
  v6 = &v1[2 * v3];
  v6[4] = v4;
  v6[5] = v5;
  v15 = 0;
  memset(v14, 0, sizeof(v14));
  type metadata accessor for DataManager(0);
  memset(v16, 0, sizeof(v16));
  v17 = 0;
  swift_allocObject();
  v7 = sub_1001DC198(0, 0, v14, v16);
  v9 = v1[2];
  v8 = v1[3];
  if (v9 >= v8 >> 1)
  {
    v1 = sub_1001FD30C((v8 > 1), v9 + 1, 1, v1);
  }

  v0[30] = v1;
  v10 = sub_1000092D8(&qword_1005A90D0, type metadata accessor for DataManager, &unk_1004D1410);
  v1[2] = v9 + 1;
  v11 = &v1[2 * v9];
  v11[4] = v7;
  v11[5] = v10;
  type metadata accessor for FriendshipService(0);
  swift_allocObject();
  v12 = swift_task_alloc();
  v0[31] = v12;
  *v12 = v0;
  v12[1] = sub_10016CB50;

  return sub_1002ADA80();
}

uint64_t sub_10016CB50(uint64_t a1)
{
  *(*v1 + 256) = a1;

  return _swift_task_switch(sub_10016CC50, 0, 0);
}

uint64_t sub_10016CC50()
{
  v1 = v0[30];
  v3 = v1[2];
  v2 = v1[3];
  if (v3 >= v2 >> 1)
  {
    v1 = sub_1001FD30C((v2 > 1), v3 + 1, 1, v0[30]);
  }

  v0[33] = v1;
  v4 = v0[32];
  v5 = sub_1000092D8(&qword_1005AA6E0, type metadata accessor for FriendshipService, &unk_1004D2BF8);
  v1[2] = v3 + 1;
  v6 = &v1[2 * v3];
  v6[4] = v4;
  v6[5] = v5;
  type metadata accessor for LocationService(0);
  swift_allocObject();
  v7 = swift_task_alloc();
  v0[34] = v7;
  *v7 = v0;
  v7[1] = sub_10016CD78;

  return sub_100346DD0();
}

uint64_t sub_10016CD78(uint64_t a1)
{
  *(*v1 + 280) = a1;

  return _swift_task_switch(sub_10016CE78, 0, 0);
}

uint64_t sub_10016CE78()
{
  v1 = v0[33];
  v3 = v1[2];
  v2 = v1[3];
  if (v3 >= v2 >> 1)
  {
    v1 = sub_1001FD30C((v2 > 1), v3 + 1, 1, v0[33]);
  }

  v4 = v0[35];
  v5 = sub_1000092D8(&qword_1005A9308, type metadata accessor for LocationService, &unk_1004D65B0);
  v1[2] = v3 + 1;
  v6 = &v1[2 * v3];
  v6[4] = v4;
  v6[5] = v5;
  type metadata accessor for UserNotificationService();
  v7 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v7 + 112) = 0xD000000000000017;
  *(v7 + 120) = 0x80000001004E2E30;
  v9 = v1[2];
  v8 = v1[3];
  if (v9 >= v8 >> 1)
  {
    v1 = sub_1001FD30C((v8 > 1), v9 + 1, 1, v1);
  }

  v10 = sub_1000092D8(&qword_1005AD530, type metadata accessor for UserNotificationService, &unk_1004D9448);
  v1[2] = v9 + 1;
  v11 = &v1[2 * v9];
  v11[4] = v7;
  v11[5] = v10;
  type metadata accessor for LocationMonitor();
  v12 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v12 + 112) = 0x6E6F697461636F4CLL;
  *(v12 + 120) = 0xEF726F74696E6F4DLL;
  *(v12 + 128) = _swiftEmptyDictionarySingleton;
  *(v12 + 136) = 2;
  v14 = v1[2];
  v13 = v1[3];
  if (v14 >= v13 >> 1)
  {
    v1 = sub_1001FD30C((v13 > 1), v14 + 1, 1, v1);
  }

  v15 = sub_1000092D8(&qword_1005AD538, type metadata accessor for LocationMonitor, &unk_1004DD330);
  v1[2] = v14 + 1;
  v16 = &v1[2 * v14];
  v16[4] = v12;
  v16[5] = v15;
  type metadata accessor for AppDeletionService();
  v17 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v17 + 112) = 0xD000000000000012;
  *(v17 + 120) = 0x80000001004E2E50;
  *(v17 + 128) = _swiftEmptyDictionarySingleton;
  *(v17 + 136) = 2;
  v19 = v1[2];
  v18 = v1[3];
  if (v19 >= v18 >> 1)
  {
    v1 = sub_1001FD30C((v18 > 1), v19 + 1, 1, v1);
  }

  v0[36] = v1;
  v20 = sub_1000092D8(&qword_1005AD540, type metadata accessor for AppDeletionService, &unk_1004DD0A8);
  v1[2] = v19 + 1;
  v21 = &v1[2 * v19];
  v21[4] = v17;
  v21[5] = v20;
  type metadata accessor for FenceService(0);
  swift_allocObject();
  v22 = swift_task_alloc();
  v0[37] = v22;
  *v22 = v0;
  v22[1] = sub_10016D1CC;

  return sub_10024B368();
}

uint64_t sub_10016D1CC(uint64_t a1)
{
  *(*v1 + 304) = a1;

  return _swift_task_switch(sub_10016D2CC, 0, 0);
}

uint64_t sub_10016D2CC()
{
  v1 = v0[36];
  v3 = v1[2];
  v2 = v1[3];
  if (v3 >= v2 >> 1)
  {
    v1 = sub_1001FD30C((v2 > 1), v3 + 1, 1, v0[36]);
  }

  v4 = v0[38];
  v5 = sub_1000092D8(&qword_1005A9278, type metadata accessor for FenceService, &unk_1004D21A8);
  v1[2] = v3 + 1;
  v6 = &v1[2 * v3];
  v6[4] = v4;
  v6[5] = v5;
  type metadata accessor for NITokenService(0);
  swift_allocObject();
  v7 = sub_1003ED000();
  v9 = v1[2];
  v8 = v1[3];
  if (v9 >= v8 >> 1)
  {
    v1 = sub_1001FD30C((v8 > 1), v9 + 1, 1, v1);
  }

  v10 = sub_1000092D8(&qword_1005AD548, type metadata accessor for NITokenService, &unk_1004D8368);
  v1[2] = v9 + 1;
  v11 = &v1[2 * v9];
  v11[4] = v7;
  v11[5] = v10;
  type metadata accessor for NITokenService_LocalMessaging();
  v12 = swift_allocObject();
  swift_defaultActor_initialize();
  v12[14] = 0xD00000000000001DLL;
  v12[15] = 0x80000001004E2E70;
  UUID.init()();
  v12[16] = WorkItemQueue.__allocating_init(identifier:)();
  v14 = v1[2];
  v13 = v1[3];
  if (v14 >= v13 >> 1)
  {
    v1 = sub_1001FD30C((v13 > 1), v14 + 1, 1, v1);
  }

  v15 = sub_1000092D8(&qword_1005AD550, type metadata accessor for NITokenService_LocalMessaging, &unk_1004D87A0);
  v1[2] = v14 + 1;
  v16 = &v1[2 * v14];
  v16[4] = v12;
  v16[5] = v15;
  type metadata accessor for NIRangingService(0);
  v17 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v17 + 14) = 0xD000000000000010;
  *(v17 + 15) = 0x80000001004E2E90;
  *(v17 + 16) = 0;
  v18 = OBJC_IVAR____TtC13findmylocated16NIRangingService_discoverContinuation;
  v19 = sub_10004B564(&qword_1005AD558, &qword_1004D7EE0);
  v20 = *(*(v19 - 8) + 56);
  v20(&v17[v18], 1, 1, v19);
  v20(&v17[OBJC_IVAR____TtC13findmylocated16NIRangingService_updateContinuation], 1, 1, v19);
  v22 = v1[2];
  v21 = v1[3];
  if (v22 >= v21 >> 1)
  {
    v1 = sub_1001FD30C((v21 > 1), v22 + 1, 1, v1);
  }

  v0[39] = v1;
  v23 = sub_1000092D8(&qword_1005AD560, type metadata accessor for NIRangingService, &unk_1004D7F50);
  v1[2] = v22 + 1;
  v24 = &v1[2 * v22];
  v24[4] = v17;
  v24[5] = v23;
  if (static MicroFindMyInterface.isSupported.getter())
  {
    type metadata accessor for MicroFindMyService(0);
    swift_allocObject();
    v25 = swift_task_alloc();
    v0[40] = v25;
    *v25 = v0;
    v25[1] = sub_10016D6E4;

    return sub_1003B0AA8();
  }

  else
  {

    v27 = v0[1];

    return v27(v1);
  }
}

uint64_t sub_10016D6E4(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 328) = a1;
  *(v3 + 336) = v1;

  if (v1)
  {
    v4 = sub_10016D8E8;
  }

  else
  {
    v4 = sub_10016D7F8;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10016D7F8()
{
  v1 = v0[39];
  v3 = v1[2];
  v2 = v1[3];
  if (v3 >= v2 >> 1)
  {
    v1 = sub_1001FD30C((v2 > 1), v3 + 1, 1, v0[39]);
  }

  v4 = v0[41];
  v5 = sub_1000092D8(&qword_1005A9DF8, type metadata accessor for MicroFindMyService, &unk_1004D7A88);
  v1[2] = v3 + 1;
  v6 = &v1[2 * v3];
  v6[4] = v4;
  v6[5] = v5;

  v7 = v0[1];

  return v7(v1);
}

uint64_t sub_10016D8E8()
{
  if (qword_1005A7F90 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A6F0(v1, qword_1005DFC40);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138543362;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Error creating MicroFindMyService: %{public}@", v4, 0xCu);
    sub_100139370(v5);
  }

  else
  {
  }

  v7 = *(v0 + 312);

  v8 = *(v0 + 8);

  return v8(v7);
}

uint64_t sub_10016DA98(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10004B610(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10016DAF0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v16[1] = a1;
  v3 = type metadata accessor for MotionActivityState();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for LocationType();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10004B564(&qword_1005A8F20, &qword_1004C9BE0);
  __chkstk_darwin(v11 - 8);
  v13 = v16 - v12;
  v14 = type metadata accessor for Date();
  __chkstk_darwin(v14 - 8);
  type metadata accessor for LegacyLocation(0);
  Date.init(timeIntervalSince1970:)();
  sub_100005F04(v2, v13, &qword_1005A8F20, &qword_1004C9BE0);
  (*(v8 + 104))(v10, enum case for LocationType.legacy(_:), v7);
  (*(v4 + 104))(v6, enum case for MotionActivityState.unknown(_:), v3);
  return Location.init(latitude:longitude:horizontalAccuracy:verticalAccuracy:speed:altitude:floor:timestamp:placemark:locationType:motionActivityState:customLabel:)();
}

uint64_t sub_10016DE04(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  _StringGuts.grow(_:)(16);

  v6._countAndFlagsBits = a1;
  v6._object = a2;
  String.append(_:)(v6);
  v7._countAndFlagsBits = 0x3A7375746174730ALL;
  v7._object = 0xE800000000000000;
  String.append(_:)(v7);

  sub_10004B564(&qword_1005A96A8, &qword_1004C3320);
  v8._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v8);

  return 540697705;
}

uint64_t sub_10016DEE4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12[0] = a4;
  v12[1] = a5;
  v7 = sub_10004B564(&qword_1005AD770, &qword_1004CA020);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v12 - v9;
  sub_100011AEC(a1, a1[3]);
  sub_100170EE0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v5)
  {
    v13 = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_10016E078()
{
  if (*v0)
  {
    return 0x737574617473;
  }

  else
  {
    return 25705;
  }
}

void sub_10016E0A4(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x737574617473 && a2 == 0xE600000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

uint64_t sub_10016E174(uint64_t a1)
{
  v2 = sub_100170EE0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10016E1B0(uint64_t a1)
{
  v2 = sub_100170EE0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10016E1EC@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1001709CC(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
    a1[3] = v7;
  }

  return result;
}

uint64_t sub_10016E248()
{
  v1 = sub_10004B564(&qword_1005A92D0, &qword_1004C2890);
  __chkstk_darwin(v1);
  v3 = &v16 - v2;
  v18 = 0;
  v19 = 0xE000000000000000;
  _StringGuts.grow(_:)(46);

  v18 = 540697705;
  v19 = 0xE400000000000000;
  String.append(_:)(*v0);
  v4._countAndFlagsBits = 0x6F697461636F6C0ALL;
  v4._object = 0xEA00000000003A6ELL;
  String.append(_:)(v4);
  v5 = type metadata accessor for ServerLocation(0);
  sub_100005F04(v0 + v5[5], v3, &qword_1005A92D0, &qword_1004C2890);
  v6._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v6);

  v7._object = 0x80000001004E2F10;
  v7._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v7);
  v8 = (&v0->_countAndFlagsBits + v5[6]);
  v9 = v8[1];
  v16 = *v8;
  v17 = v9;

  sub_10004B564(&qword_1005A96A8, &qword_1004C3320);
  v10._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v10);

  v11._countAndFlagsBits = 0x3A7375746174730ALL;
  v11._object = 0xE800000000000000;
  String.append(_:)(v11);
  v12 = (&v0->_countAndFlagsBits + v5[7]);
  v13 = v12[1];
  v16 = *v12;
  v17 = v13;

  v14._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v14);

  return v18;
}

Swift::Int sub_10016E430()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

double sub_10016E4F0(uint64_t a1)
{
  String.hash(into:)();

  return result;
}

Swift::Int sub_10016E59C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_10016E658@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100170BB0(*a1);
  *a2 = result;
  return result;
}